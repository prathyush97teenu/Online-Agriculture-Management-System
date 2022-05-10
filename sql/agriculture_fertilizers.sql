CREATE DATABASE  IF NOT EXISTS `agriculture` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `agriculture`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: agriculture
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `fertilizers`
--

DROP TABLE IF EXISTS `fertilizers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fertilizers` (
  `fertilizerid` varchar(20) NOT NULL,
  `fertilizername` varchar(20) DEFAULT NULL,
  `fertilizertype` varchar(20) DEFAULT NULL,
  `soilid` int(11) DEFAULT NULL,
  `cropid` int(11) DEFAULT NULL,
  `nitrogen` double DEFAULT NULL,
  `phosphorus` double DEFAULT NULL,
  `fertilizercost` double DEFAULT NULL,
  PRIMARY KEY (`fertilizerid`),
  KEY `soilid` (`soilid`),
  KEY `cropid` (`cropid`),
  CONSTRAINT `fertilizers_ibfk_1` FOREIGN KEY (`soilid`) REFERENCES `soils` (`soilid`),
  CONSTRAINT `fertilizers_ibfk_2` FOREIGN KEY (`cropid`) REFERENCES `cropdetails` (`cropid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fertilizers`
--

LOCK TABLES `fertilizers` WRITE;
/*!40000 ALTER TABLE `fertilizers` DISABLE KEYS */;
INSERT INTO `fertilizers` VALUES ('500','calcium nitrate','inorganic',91,11,15.5,7.3,1000),('501','ammonium nitrate','inorganic',90,10,33.5,0.7,1000),('502','rock phosphate','inorganic',92,12,0,33,1000),('503','calcium nitrate','inorganic',93,14,15.5,7.3,1000),('504','urea','inorganic',95,14,46,4.3,1000),('505','compost','organic',92,17,2.3,5.6,500),('506','humic acid','organic',93,23,1.2,4.3,500),('507','amino acid','organic',94,25,0.8,4,500),('508','seaweedextracts','organic',91,13,2.2,3.2,500),('509','ammonium sulphate','inorganic',91,13,0.2,0.4,1000);
/*!40000 ALTER TABLE `fertilizers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-25 16:44:41
