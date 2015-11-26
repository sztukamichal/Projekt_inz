package com.michalapps.blebroker;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattService;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.view.Menu;
import android.view.MenuItem;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import no.nordicsemi.android.support.v18.scanner.BluetoothLeScannerCompat;
import no.nordicsemi.android.support.v18.scanner.ScanCallback;
import no.nordicsemi.android.support.v18.scanner.ScanFilter;
import no.nordicsemi.android.support.v18.scanner.ScanResult;
import no.nordicsemi.android.support.v18.scanner.ScanSettings;

public class MainActivity extends AppCompatActivity {

    private BluetoothLeScannerCompat scannerCompat;
    private RecyclerView recyclerView;
    List<BeaconDevice> beacons = new ArrayList<>();
    DevicesInRange devicesInRange = new DevicesInRange();
    boolean sendToServer = false;
    private String android_id ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        FloatingActionButton fab = (FloatingActionButton) findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(sendToServer == true) {
                    Snackbar.make(view, "Zatrzymanie sledzenia.", Snackbar.LENGTH_LONG).setAction("Action", null).show();
                    sendToServer = false;
                    new OnDestroyTask().execute();
                } else {
                    Snackbar.make(view, "Przesyłam dane na serwer...", Snackbar.LENGTH_LONG).setAction("Action", null).show();
                    sendToServer = true;
                }
//                if(beacons.size() > 0) {
//                    Log.v("RSSSSI", "poszlo");
//                    func(beacons.get(0));
//                }
            }
        });

        android_id = Settings.Secure.getString(this.getContentResolver(), Settings.Secure.ANDROID_ID);
        devicesInRange.setDeviceModel(Build.MODEL + " - " + android_id);

        recyclerView = new RecyclerView(this);
        recyclerView = (RecyclerView)findViewById(R.id.recycler);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));

        scannerCompat = BluetoothLeScannerCompat.getScanner();

        ScanSettings settings = new ScanSettings.Builder().setScanMode(ScanSettings.SCAN_MODE_LOW_POWER).setReportDelay(50).build();
        List<ScanFilter> filterList = new ArrayList<>();
        filterList.add(new ScanFilter.Builder().setDeviceName("nRF51822").build());
        scannerCompat.startScan(filterList, settings, scanCallback);


    }

    private ScanCallback scanCallback = new ScanCallback() {
        @Override
        public void onBatchScanResults(List<ScanResult> results) {
            if(results.size() > 0) {
//                logToDisplay("Found " + results.size() + " beacons in area.");
                Log.i("czas", "ns : " + results.get(0).getTimestampNanos());
                update(results);
                RecyclerViewAdapter recyclerViewAdapter = new RecyclerViewAdapter(beacons);
                recyclerView.setAdapter(recyclerViewAdapter);
                Log.i("BekonyOnBatch", devicesInRange.toString());
                if(sendToServer == true){
                    new HttpRequestTask().execute();
                }
                Log.i("scan" , "record : " + results.get(0).getScanRecord());
            }
        }

        @Override
        public void onScanResult(int callbackType, ScanResult result) {
            Log.i("BekonyOnScan", "RSSI : " + result.getRssi());
        }

        @Override
        public void onScanFailed(int errorCode) {
            Log.i("BekonyonFail", devicesInRange.toString());
        }


    };

    private void update(final List<ScanResult> results) {
        for (final ScanResult result : results) {
            BeaconDevice device = findDevice(result);
            if (device == null) {
                device = new BeaconDevice(result);
                beacons.add(device);
                devicesInRange.getDevicesInRangeList().add(new DeviceInRange(result.getScanRecord().getTxPowerLevel(), device.getRssi(), device.getAddress()));
            } else {
                device.setAddress(result.getDevice() != null ? result.getDevice().getAddress() : null);
                device.setScanResult(result != null ? result : null);
                device.setRssi(result.getRssi());
                for (DeviceInRange dev : devicesInRange.getDevicesInRangeList()) {
                    if(dev.getAddress().equals(device.getAddress())) {
                        dev.setRssi(device.getRssi());
                        dev.setTxPower(device.getScanResult().getScanRecord().getTxPowerLevel());
                    }
                }
            }
        }
    }

    private BeaconDevice findDevice(final ScanResult result) {
        BeaconDevice resultDevice = new BeaconDevice(result);
        int j = 0;
        for(int i = 0; i < beacons.size(); i++) {
            beacons.get(i).visible -= 1;
            if(beacons.get(i).visible == -1) {
                devicesInRange.getDevicesInRangeList().remove(i);
                beacons.remove(i);
            }
        }
        for (final BeaconDevice device : beacons) {
            if (device.equals(resultDevice)) {
                device.visible = 3;
                return device;
            }
        }
        return null;
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.v("Koniec", "niszcze");
        scannerCompat.stopScan(scanCallback);
        new OnDestroyTask().execute();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();

        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }

    private class HttpRequestTask extends AsyncTask<Void, Void, String> {
        @Override
        protected String doInBackground(Void... params) {
            try {
                RestTemplate restTemplate = new RestTemplate();
                restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
//                return restTemplate.postForObject("http://78.88.254.200:8081/devices", devicesInRange, String.class);
                return restTemplate.postForObject("http://192.168.0.9:8080/devices", devicesInRange, String.class);
            } catch (Exception e) {
                Log.e("HTTPRequestTask", e.getMessage(), e);
            }

            return null;
        }

        @Override
        protected void onPostExecute(String result) {
            Log.v("Odpowiedz", result);
        }

    }

    private class OnDestroyTask extends AsyncTask<Void, Void, String> {
        @Override
        protected String doInBackground(Void... params) {
            try {
                RestTemplate restTemplate = new RestTemplate();
                restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
//                return restTemplate.postForObject("http://78.88.254.200:8081/device-destroy", devicesInRange, String.class);
                return restTemplate.postForObject("http://192.168.0.9:8080/device-destroy", devicesInRange, String.class);
            } catch (Exception e) {
                Log.e("HTTPRequestTask", e.getMessage(), e);
            }

            return null;
        }

        @Override
        protected void onPostExecute(String result) {
            Log.v("Odpowiedz", result);
        }

    }

}

