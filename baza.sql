-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: beaconapp
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `beacons`
--

DROP TABLE IF EXISTS `beacons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beacons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beacons`
--

LOCK TABLES `beacons` WRITE;
/*!40000 ALTER TABLE `beacons` DISABLE KEYS */;
/*!40000 ALTER TABLE `beacons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices_log`
--

DROP TABLE IF EXISTS `devices_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `distance` int(11) NOT NULL,
  `rssi` int(11) NOT NULL,
  `tx_power` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices_log`
--

LOCK TABLES `devices_log` WRITE;
/*!40000 ALTER TABLE `devices_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `devices_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measurments`
--

DROP TABLE IF EXISTS `measurments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measurments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beacon_id` varchar(255) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `distance` float NOT NULL,
  `rssi` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `tx_power` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=585 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurments`
--

LOCK TABLES `measurments` WRITE;
/*!40000 ALTER TABLE `measurments` DISABLE KEYS */;
INSERT INTO `measurments` VALUES (201,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-72,'2015-11-29 16:47:03',-12),(202,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-52,'2015-11-29 16:47:10',0),(203,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-52,'2015-11-29 16:47:11',0),(204,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:47:11',4),(205,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:47:11',4),(206,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-91,'2015-11-29 16:47:12',-30),(207,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-91,'2015-11-29 16:47:12',-30),(208,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-91,'2015-11-29 16:47:12',-30),(209,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-91,'2015-11-29 16:47:13',-30),(210,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-91,'2015-11-29 16:47:14',-30),(211,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-77,'2015-11-29 16:47:14',-20),(212,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-91,'2015-11-29 16:47:15',-30),(213,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:47:15',-20),(214,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:47:15',-20),(215,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-74,'2015-11-29 16:47:15',-16),(216,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:47:16',-20),(217,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-75,'2015-11-29 16:47:16',-16),(218,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:47:17',-20),(219,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-74,'2015-11-29 16:47:17',-16),(220,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:47:18',-20),(221,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-74,'2015-11-29 16:47:19',-16),(222,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:47:19',-12),(223,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:47:19',-12),(224,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-67,'2015-11-29 16:47:19',-8),(225,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:47:19',-12),(226,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-67,'2015-11-29 16:47:20',-8),(227,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-67,'2015-11-29 16:47:21',-8),(228,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:47:21',-8),(229,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-67,'2015-11-29 16:47:22',-8),(230,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-62,'2015-11-29 16:47:23',-4),(231,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-59,'2015-11-29 16:47:25',0),(232,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:47:26',4),(233,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-93,'2015-11-29 16:47:29',-30),(234,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-93,'2015-11-29 16:47:30',-30),(235,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:47:31',-20),(236,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:47:31',-20),(237,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:47:32',-20),(238,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:47:33',-20),(239,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:47:34',-16),(240,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:47:34',-12),(241,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-65,'2015-11-29 16:47:36',-8),(242,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-65,'2015-11-29 16:47:36',-8),(243,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-62,'2015-11-29 16:47:38',-4),(244,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-61,'2015-11-29 16:47:39',-4),(245,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-61,'2015-11-29 16:47:40',-4),(246,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-57,'2015-11-29 16:47:41',0),(247,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-57,'2015-11-29 16:47:42',0),(248,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-54,'2015-11-29 16:47:42',4),(249,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-55,'2015-11-29 16:47:44',4),(250,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-90,'2015-11-29 16:47:45',-30),(251,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-77,'2015-11-29 16:47:47',-20),(252,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-73,'2015-11-29 16:47:49',-16),(253,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-68,'2015-11-29 16:47:50',-12),(254,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:47:51',-12),(255,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:47:53',-8),(256,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:47:53',-8),(257,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:47:54',-8),(258,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-64,'2015-11-29 16:47:56',-4),(259,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-59,'2015-11-29 16:47:57',0),(260,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-59,'2015-11-29 16:47:57',0),(261,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-59,'2015-11-29 16:47:58',0),(262,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:48:00',4),(263,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:48:01',-30),(264,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:48:02',-20),(265,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:48:04',-20),(266,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-75,'2015-11-29 16:48:04',-16),(267,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:48:05',-12),(268,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:48:08',-8),(269,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-61,'2015-11-29 16:48:09',-8),(270,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-61,'2015-11-29 16:48:09',-8),(271,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-61,'2015-11-29 16:48:09',-8),(272,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-61,'2015-11-29 16:48:10',-8),(273,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-63,'2015-11-29 16:48:10',-4),(274,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-63,'2015-11-29 16:48:12',-4),(275,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-59,'2015-11-29 16:48:13',0),(276,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-59,'2015-11-29 16:48:13',0),(277,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-57,'2015-11-29 16:48:14',4),(278,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-59,'2015-11-29 16:48:15',0),(279,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-57,'2015-11-29 16:48:16',4),(280,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-93,'2015-11-29 16:48:16',-30),(281,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-93,'2015-11-29 16:48:16',-30),(282,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-57,'2015-11-29 16:48:17',4),(283,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-93,'2015-11-29 16:48:17',-30),(284,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-93,'2015-11-29 16:48:19',-30),(285,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:48:19',-20),(286,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:48:19',-20),(287,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-67,'2015-11-29 16:48:23',-8),(288,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:48:24',-12),(289,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-67,'2015-11-29 16:48:25',-8),(290,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-67,'2015-11-29 16:48:26',-8),(291,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-64,'2015-11-29 16:48:26',-4),(292,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-64,'2015-11-29 16:48:26',-4),(293,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-64,'2015-11-29 16:48:26',-4),(294,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-64,'2015-11-29 16:48:27',-4),(295,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-64,'2015-11-29 16:48:27',-4),(296,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-64,'2015-11-29 16:48:28',-4),(297,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-64,'2015-11-29 16:48:29',-4),(298,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-59,'2015-11-29 16:48:30',0),(299,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-59,'2015-11-29 16:48:30',0),(300,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-64,'2015-11-29 16:48:30',-4),(301,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-57,'2015-11-29 16:48:31',4),(302,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-57,'2015-11-29 16:48:31',4),(303,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-57,'2015-11-29 16:48:31',4),(304,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-57,'2015-11-29 16:48:31',4),(305,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:48:34',-30),(306,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:48:34',-20),(307,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:48:35',-20),(308,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:48:35',-20),(309,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:48:35',-20),(310,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:48:36',-20),(311,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-74,'2015-11-29 16:48:36',-16),(312,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:48:39',-12),(313,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:48:41',-12),(314,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:48:45',-12),(315,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-59,'2015-11-29 16:48:46',0),(316,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:48:47',4),(317,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:48:48',4),(318,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:48:49',-30),(319,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-76,'2015-11-29 16:48:54',-16),(320,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-71,'2015-11-29 16:48:55',-12),(321,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:48:57',-8),(322,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-65,'2015-11-29 16:48:58',-8),(323,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-63,'2015-11-29 16:48:59',-4),(324,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:49:00',0),(325,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-57,'2015-11-29 16:49:04',4),(326,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-57,'2015-11-29 16:49:05',4),(327,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:49:05',-30),(328,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-80,'2015-11-29 16:49:06',-20),(329,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:49:09',-20),(330,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-79,'2015-11-29 16:49:09',-20),(331,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:49:10',-12),(332,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:49:10',-12),(333,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:49:10',-12),(334,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:49:11',-12),(335,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:49:12',-12),(336,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:49:12',-12),(337,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-62,'2015-11-29 16:49:13',-4),(338,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:49:16',0),(339,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:49:17',0),(340,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:49:17',0),(341,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:49:18',4),(342,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:49:19',0),(343,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:49:20',4),(344,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:49:21',-30),(345,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-90,'2015-11-29 16:49:21',-30),(346,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:49:23',-20),(347,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:49:24',-20),(348,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-74,'2015-11-29 16:49:25',-16),(349,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:49:26',-12),(350,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:49:27',-12),(351,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:49:28',-8),(352,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:49:29',-8),(353,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:49:29',-8),(354,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:49:30',-8),(355,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-63,'2015-11-29 16:49:30',-4),(356,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-63,'2015-11-29 16:49:30',-4),(357,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-63,'2015-11-29 16:49:30',-4),(358,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-63,'2015-11-29 16:49:31',-4),(359,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-63,'2015-11-29 16:49:31',-4),(360,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-63,'2015-11-29 16:49:32',-4),(361,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:49:32',0),(362,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-63,'2015-11-29 16:49:34',-4),(363,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:49:34',0),(364,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:49:36',-30),(365,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:49:38',-20),(366,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-75,'2015-11-29 16:49:39',-16),(367,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-75,'2015-11-29 16:49:39',-16),(368,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-75,'2015-11-29 16:49:40',-16),(369,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-74,'2015-11-29 16:49:42',-16),(370,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:49:44',-12),(371,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:49:46',-12),(372,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-62,'2015-11-29 16:49:47',-4),(373,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:49:48',0),(374,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-55,'2015-11-29 16:49:50',4),(375,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:49:51',-12),(376,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:49:52',4),(377,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:49:54',-20),(378,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:49:55',-20),(379,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-74,'2015-11-29 16:49:56',-16),(380,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-74,'2015-11-29 16:49:56',-16),(381,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-74,'2015-11-29 16:49:57',-16),(382,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:49:58',-12),(383,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:49:59',-12),(384,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:50:00',-8),(385,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:50:00',-8),(386,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:50:01',-8),(387,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:50:01',-8),(388,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:50:01',-8),(389,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:50:01',-8),(390,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-62,'2015-11-29 16:50:03',-4),(391,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:50:04',0),(392,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-55,'2015-11-29 16:50:05',4),(393,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-55,'2015-11-29 16:50:05',4),(394,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-55,'2015-11-29 16:50:06',4),(395,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:50:07',4),(396,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:50:08',4),(397,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:50:09',4),(398,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-91,'2015-11-29 16:50:11',-30),(399,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-63,'2015-11-29 16:50:20',-4),(400,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-63,'2015-11-29 16:50:21',-4),(401,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-59,'2015-11-29 16:50:22',0),(402,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-59,'2015-11-29 16:50:24',0),(403,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-59,'2015-11-29 16:50:26',0),(404,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-74,'2015-11-29 16:50:27',-16),(405,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:50:28',-20),(406,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-74,'2015-11-29 16:50:29',-16),(407,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:50:31',-12),(408,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:50:32',-12),(409,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:50:33',-8),(410,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:50:34',-8),(411,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-62,'2015-11-29 16:50:34',-4),(412,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-62,'2015-11-29 16:50:35',-4),(413,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:50:36',0),(414,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:50:37',0),(415,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:50:39',4),(416,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:50:39',-30),(417,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:50:40',4),(418,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:50:40',-30),(419,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:50:40',4),(420,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:50:40',-30),(421,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:50:40',-30),(422,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:50:40',4),(423,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:50:41',-30),(424,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:50:42',4),(425,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:50:43',-20),(426,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:50:44',-20),(427,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:50:45',-12),(428,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:50:47',-12),(429,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:50:48',-8),(430,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-62,'2015-11-29 16:50:52',-4),(431,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:50:54',4),(432,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-55,'2015-11-29 16:50:55',4),(433,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:50:55',4),(434,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-55,'2015-11-29 16:50:56',4),(435,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:51:00',-30),(436,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:51:04',-8),(437,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:51:05',-8),(438,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-65,'2015-11-29 16:51:05',-8),(439,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:51:05',-8),(440,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-62,'2015-11-29 16:51:06',-4),(441,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-62,'2015-11-29 16:51:07',-4),(442,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-62,'2015-11-29 16:51:08',-4),(443,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:51:08',0),(444,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-55,'2015-11-29 16:51:10',4),(445,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-55,'2015-11-29 16:51:10',4),(446,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-55,'2015-11-29 16:51:10',4),(447,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-55,'2015-11-29 16:51:10',4),(448,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:51:12',-30),(449,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:51:13',-30),(450,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:51:16',-20),(451,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:51:18',-12),(452,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:51:20',-12),(453,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:51:20',-8),(454,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:51:20',-8),(455,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:51:21',-8),(456,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:51:22',-8),(457,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-63,'2015-11-29 16:51:23',-4),(458,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:51:24',0),(459,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:51:25',0),(460,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:51:30',-20),(461,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-73,'2015-11-29 16:51:31',-16),(462,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:51:36',-12),(463,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-74,'2015-11-29 16:51:38',-16),(464,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-62,'2015-11-29 16:51:39',-4),(465,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-62,'2015-11-29 16:51:40',-4),(466,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-55,'2015-11-29 16:51:42',4),(467,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-56,'2015-11-29 16:51:43',4),(468,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:51:45',-30),(469,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-92,'2015-11-29 16:51:45',-30),(470,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-91,'2015-11-29 16:51:46',-30),(471,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:51:46',-20),(472,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:51:47',-20),(473,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:51:47',-20),(474,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:51:47',-20),(475,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-73,'2015-11-29 16:51:49',-16),(476,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-73,'2015-11-29 16:51:49',-16),(477,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-73,'2015-11-29 16:51:50',-16),(478,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-73,'2015-11-29 16:51:50',-16),(479,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-73,'2015-11-29 16:51:50',-16),(480,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-73,'2015-11-29 16:51:50',-16),(481,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-73,'2015-11-29 16:51:51',-16),(482,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:51:51',-12),(483,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:51:54',-8),(484,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-62,'2015-11-29 16:51:56',-4),(485,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:51:57',0),(486,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-58,'2015-11-29 16:51:58',0),(487,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-78,'2015-11-29 16:52:03',-20),(488,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-76,'2015-11-29 16:52:04',-16),(489,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-76,'2015-11-29 16:52:04',-16),(490,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-74,'2015-11-29 16:52:05',-16),(491,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-76,'2015-11-29 16:52:06',-16),(492,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-69,'2015-11-29 16:52:06',-12),(493,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-70,'2015-11-29 16:52:07',-12),(494,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:52:09',-8),(495,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',0.5,-66,'2015-11-29 16:52:09',-8),(496,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-59,'2015-11-29 22:53:51',-16),(497,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-61,'2015-11-29 22:53:52',-16),(498,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-61,'2015-11-29 22:53:53',-16),(499,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-57,'2015-11-29 22:53:53',-12),(500,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-56,'2015-11-29 22:53:55',-12),(501,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-57,'2015-11-29 22:53:55',-12),(502,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-53,'2015-11-29 22:53:56',-8),(503,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-53,'2015-11-29 22:53:57',-8),(504,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-50,'2015-11-29 22:53:57',-4),(505,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-50,'2015-11-29 22:53:58',-4),(506,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-50,'2015-11-29 22:53:58',-4),(507,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-50,'2015-11-29 22:53:59',-4),(508,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-45,'2015-11-29 22:54:00',0),(509,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-45,'2015-11-29 22:54:00',0),(510,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-42,'2015-11-29 22:54:02',4),(511,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-43,'2015-11-29 22:54:02',4),(512,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-77,'2015-11-29 22:54:04',-30),(513,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-77,'2015-11-29 22:54:04',-30),(514,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-64,'2015-11-29 22:54:06',-20),(515,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-64,'2015-11-29 22:54:07',-20),(516,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-61,'2015-11-29 22:54:08',-16),(517,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-61,'2015-11-29 22:54:08',-16),(518,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-61,'2015-11-29 22:54:09',-16),(519,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-56,'2015-11-29 22:54:10',-12),(520,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-57,'2015-11-29 22:54:11',-12),(521,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-52,'2015-11-29 22:54:11',-8),(522,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-53,'2015-11-29 22:54:13',-8),(523,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-49,'2015-11-29 22:54:13',-4),(524,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-49,'2015-11-29 22:54:14',-4),(525,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-50,'2015-11-29 22:54:15',-4),(526,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-44,'2015-11-29 22:54:17',0),(527,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-42,'2015-11-29 22:54:18',4),(528,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-77,'2015-11-29 22:54:19',-30),(529,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-76,'2015-11-29 22:54:20',-30),(530,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-77,'2015-11-29 22:54:20',-30),(531,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-64,'2015-11-29 22:54:22',-20),(532,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-65,'2015-11-29 22:54:23',-20),(533,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-61,'2015-11-29 22:54:24',-16),(534,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-60,'2015-11-29 22:54:24',-16),(535,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-61,'2015-11-29 22:54:25',-16),(536,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-56,'2015-11-29 22:54:26',-12),(537,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-52,'2015-11-29 22:54:28',-8),(538,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-53,'2015-11-29 22:54:28',-8),(539,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-52,'2015-11-29 22:54:28',-8),(540,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-49,'2015-11-29 22:54:30',-4),(541,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-50,'2015-11-29 22:54:30',-4),(542,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-44,'2015-11-29 22:54:32',0),(543,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-45,'2015-11-29 22:54:32',0),(544,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-42,'2015-11-29 22:54:34',4),(545,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-42,'2015-11-29 22:54:34',4),(546,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-43,'2015-11-29 22:54:35',4),(547,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-76,'2015-11-29 22:54:36',-30),(548,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-77,'2015-11-29 22:54:37',-30),(549,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-77,'2015-11-29 22:54:37',-30),(550,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-55,'2015-11-29 23:11:06',4),(551,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-55,'2015-11-29 23:11:07',4),(552,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-55,'2015-11-29 23:11:07',4),(553,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-90,'2015-11-29 23:11:08',-30),(554,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-91,'2015-11-29 23:11:08',-30),(555,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-90,'2015-11-29 23:11:09',-30),(556,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-78,'2015-11-29 23:11:09',-20),(557,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-78,'2015-11-29 23:11:10',-20),(558,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-78,'2015-11-29 23:11:10',-20),(559,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-78,'2015-11-29 23:11:11',-20),(560,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-73,'2015-11-29 23:11:12',-16),(561,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-73,'2015-11-29 23:11:12',-16),(562,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-73,'2015-11-29 23:11:13',-16),(563,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-67,'2015-11-29 23:11:13',-12),(564,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-68,'2015-11-29 23:11:14',-12),(565,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-68,'2015-11-29 23:11:14',-12),(566,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-68,'2015-11-29 23:11:15',-12),(567,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-65,'2015-11-29 23:11:15',-8),(568,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-64,'2015-11-29 23:11:17',-8),(569,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-65,'2015-11-29 23:11:17',-8),(570,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-60,'2015-11-29 23:11:18',-4),(571,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-61,'2015-11-29 23:11:19',-4),(572,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-57,'2015-11-29 23:11:19',0),(573,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-57,'2015-11-29 23:11:20',0),(574,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-57,'2015-11-29 23:11:21',0),(575,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-56,'2015-11-29 23:11:22',4),(576,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-56,'2015-11-29 23:11:22',4),(577,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-56,'2015-11-29 23:11:23',4),(578,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-90,'2015-11-29 23:11:23',-30),(579,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-90,'2015-11-29 23:11:24',-30),(580,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-90,'2015-11-29 23:11:24',-30),(581,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-79,'2015-11-29 23:11:27',-20),(582,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-74,'2015-11-29 23:11:27',-16),(583,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-75,'2015-11-29 23:11:28',-16),(584,'F9:39:03:69:9B:B4','GT-I9515 - 1a88bbcf523c933c',1,-74,'2015-11-29 23:11:29',-16);
/*!40000 ALTER TABLE `measurments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phones`
--

DROP TABLE IF EXISTS `phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `android_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones`
--

LOCK TABLES `phones` WRITE;
/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-30  9:33:58
