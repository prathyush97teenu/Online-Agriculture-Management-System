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
-- Table structure for table `soils`
--

DROP TABLE IF EXISTS `soils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soils` (
  `soilid` int(11) NOT NULL,
  `soiltype` varchar(20) DEFAULT NULL,
  `soilcode` varchar(20) DEFAULT NULL,
  `statecode` varchar(20) DEFAULT NULL,
  `districtcode` varchar(20) DEFAULT NULL,
  `districtname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`soilid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soils`
--

LOCK TABLES `soils` WRITE;
/*!40000 ALTER TABLE `soils` DISABLE KEYS */;
INSERT INTO `soils` VALUES (90,'sandy soil','SS','KL','688001','alleppey'),(91,'red soil','RS','MH','400601','thane'),(92,'black soil','BS','AP','522002','guntur'),(93,'alluvial soil','AS','WB','735101','jalpaiguri'),(94,'desert soil','DS','RJ','344001','barmer'),(95,'sandy soil','SS','RJ','344001','bikaner'),(96,'desert soil','DS','GJ','922833','abc'),(97,'desert soil','DS','KA','560085','mandya'),(98,'sandy soil','SS','KL','688001','alleppey');
/*!40000 ALTER TABLE `soils` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-25 16:44:40
