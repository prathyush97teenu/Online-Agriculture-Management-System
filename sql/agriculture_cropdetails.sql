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
-- Table structure for table `cropdetails`
--

DROP TABLE IF EXISTS `cropdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cropdetails` (
  `cropid` int(11) NOT NULL,
  `cropname` varchar(20) DEFAULT NULL,
  `soilid` int(11) DEFAULT NULL,
  `season` varchar(20) DEFAULT NULL,
  `croptype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cropid`),
  KEY `soilid` (`soilid`),
  CONSTRAINT `cropdetails_ibfk_1` FOREIGN KEY (`soilid`) REFERENCES `soils` (`soilid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cropdetails`
--

LOCK TABLES `cropdetails` WRITE;
/*!40000 ALTER TABLE `cropdetails` DISABLE KEYS */;
INSERT INTO `cropdetails` VALUES (10,'brinjal',90,'summer','vegetables'),(11,'turnip',90,'summer','vegetables'),(12,'beetroot',90,'summer','vegetables'),(13,'groundnut',91,'monsoon','cash crops'),(14,'rice',91,'monsoon','food grains'),(15,'maize',91,'monsoon','food grains'),(16,'mango',91,'summer','fruits'),(17,'cotton',92,'summer','cash crops'),(18,'tobacco',92,'summer','cash crops'),(19,'oilseeds',92,'monsoon','cash crops'),(20,'wheat',93,'winter','food grains'),(21,'mustard',93,'winter','cash crops'),(23,'tomato',93,'summer','vegetables'),(25,'millets',94,'summer','food grains');
/*!40000 ALTER TABLE `cropdetails` ENABLE KEYS */;
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
