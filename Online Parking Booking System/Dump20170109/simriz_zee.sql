-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: simriz
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `zee`
--

DROP TABLE IF EXISTS `zee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zee` (
  `Date` varchar(25) DEFAULT NULL,
  `sTime` varchar(25) DEFAULT NULL,
  `eTime` varchar(25) DEFAULT NULL,
  `Name` varchar(25) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zee`
--

LOCK TABLES `zee` WRITE;
/*!40000 ALTER TABLE `zee` DISABLE KEYS */;
INSERT INTO `zee` VALUES ('12-05-2016','Muhammad Arfan Shahid','09:05 AM','12:15 PM',35),('18-10-2016','Rehan','12:00 AM','12:00 AM',4),('18-10-2016','Yashfaa','12:45 PM','05:15 PM',3),('29-10-2016','12:45 PM','12:15 AM','Rehan',5),('08-04-0018','12:00 AM','12:00 AM','Muhammad Arfan',35),('08-04-0027','12:00 AM','12:00 AM','Muhammad Rehan',4),('2016-08-12','12:00 AM','12:00 AM','Yashfaa',4),('2016-08-14','08:30','02:30','Muhammad Arfan',35),('2016-08-14','1:0','1:0','ghjjgg',12),('2016-08-14','08:06','22:06','Muhammad Arfan Shahid',27),('2016-08-14','09:07','22:09','Dil',50),('2016-08-14','09:06','22:06','Dil Nawaz',36),('2016-08-14','08:30','22:30','Rao Tehseen',41),('2016-08-14','08:30','22:30','mateen',8);
/*!40000 ALTER TABLE `zee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-09 14:47:18
