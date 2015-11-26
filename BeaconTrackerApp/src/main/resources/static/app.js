/**
 * Created by User on 2015-11-19.
 */

"use strict";

var BeaconTracker = angular.module('BeaconTracker', ['ngMaterial','ngMdIcons']);

BeaconTracker.controller('BeaconTrackerCtrl', function($scope, $http, $interval, $mdDialog) {

  //var url = "http://78.88.254.200:8081/devices";
  var url = "./devices";

  var counter = 0;

  $scope.devices = [];
  $scope.view =[];
  $scope.isServerResponding = false;
  $scope.errorWithConnection = false;
  $interval(function () {
    if($scope.errorWithConnection !== true) {
      updateDevicesInRange()
    }
  }, 2000);

  function updateDevicesInRange() {
    counter += 1;
    $http.get(url)
      .success(function (data) {
        $scope.errorWithConnection = false;
        $scope.isServerResponding = true;
        console.log(data);
          $scope.devices = data;
          if($scope.devices.length === 0) {
            $scope.errorMessage = "Nie znaleziono żadnych urządzeń w pobliżu"
          } else {
            $scope.errorMessage = "";
          }
      })
      .error(function (data) {
        showAlert();
        $scope.isServerResponding = true;
        $scope.errorWithConnection = true;
        console.log(data);
          $scope.errorMessage = "Błąd podczas komunikacji z serwerem...";
      })
  }
  $scope.toggleView = function (index) {
    $scope.view[index] = !$scope.view[index];
  };

  var showAlert = function() {
    $mdDialog.show(
      $mdDialog.alert()
        .parent(angular.element(document.querySelector('#popupContainer')))
        .clickOutsideToClose(true)
        .title('Brak połączenia z serwerem')
        .ok('OK')
        .targetEvent(null)
    );
  };

});

