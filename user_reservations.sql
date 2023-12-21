-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: user
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `reservationID` int NOT NULL AUTO_INCREMENT,
  `reservationDate` date NOT NULL,
  `reservationTime` time NOT NULL,
  `doctorUsername` varchar(255) NOT NULL,
  `isBooked` tinyint(1) NOT NULL DEFAULT '0',
  `reservationEndtime` time DEFAULT NULL,
  `patientUsername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reservationID`),
  KEY `doctorUsername` (`doctorUsername`),
  CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`doctorUsername`) REFERENCES `doctorsdata` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,'2023-11-01','10:00:00','mirna',0,'11:00:00',NULL),(2,'2023-11-08','10:00:00','rehab',1,'11:00:00','omar'),(3,'2023-11-08','10:00:00','rehab',0,'11:00:00',NULL),(4,'2023-11-01','10:00:00','mirna',1,'11:00:00','rony'),(5,'2023-11-15','20:56:00','mirna',0,'18:58:00',NULL),(6,'2002-05-09','01:00:00','mariam',0,'11:00:00',NULL),(7,'2023-11-15','17:24:00','mariam',0,'17:24:00',NULL),(8,'2023-11-13','16:48:00','esraa',0,'19:45:00',NULL),(9,'2023-11-15','20:56:00','mirna',0,'18:58:00',NULL),(10,'2028-06-15','20:56:00','mirna',0,'18:58:00',NULL),(11,'2023-11-16','19:04:00','mirna',0,'19:03:00',NULL),(12,'2023-11-23','16:30:00','mirna',0,'16:32:00',NULL),(13,'2023-11-22','21:01:00','rehab',0,'19:03:00',NULL),(14,'2023-11-08','10:00:00','rehab',0,'11:00:00',NULL),(15,'2023-11-22','20:29:00','mirna',0,'13:28:00',NULL),(16,'2023-11-08','22:28:00','mirna',1,'15:23:00','rony'),(17,'2023-11-23','16:30:00','mirna',1,'16:32:00','rony'),(18,'2023-11-29','17:55:00','mirna',0,'17:57:00',NULL),(19,'2026-01-25','17:55:00','mirna',1,'17:57:00','rony'),(20,'2023-12-01','18:51:00','mirna',0,'21:50:00',NULL),(21,'2023-11-18','19:16:00','mirna',0,'21:13:00',NULL),(22,'2023-11-03','21:19:00','mohamed',0,'21:19:00',NULL),(23,'2023-11-14','12:19:00','mohamed',0,'21:19:00',NULL);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-01  7:59:50
