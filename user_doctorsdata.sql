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
-- Table structure for table `doctorsdata`
--

DROP TABLE IF EXISTS `doctorsdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctorsdata` (
  `doctorID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`doctorID`),
  UNIQUE KEY `doctorEmail` (`Email`),
  KEY `idx_doctorsdata_doctorUsername` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorsdata`
--

LOCK TABLES `doctorsdata` WRITE;
/*!40000 ALTER TABLE `doctorsdata` DISABLE KEYS */;
INSERT INTO `doctorsdata` VALUES (4,'mirna','mirna@gmail.com','$2b$12$1iy87oPTyTLLZSx1DIeAgOeGd23iX55lW3DnNjuWKR6GX/PGiV6t.'),(5,'rehab','rehab@gmail.com','$2b$12$2ozGtf2QuaoweEQXelG2BuVByNc3jtIq7KW6Va8NZ8bMgyENcXYkC'),(6,'esraa','esraa@gmail.com','$2b$12$sUrZEbCtarsZYnR.x86KH.8BCaQMTmOV8n5BKKNGjAXUEJp.luVLu'),(7,'mariam','mariam@gmail','$2b$12$jkWkGyjP.WIYm2IJv7voPuzDSPlGtjtStwbDA1HNL0YVWEWrYbC3W'),(8,'mohamed','mohamed@gmail.com','$2b$12$ZOJL2TCToN55TVVrYg2K5OUa67vR758uqS0nBCCofwg4v3ocFjGxO');
/*!40000 ALTER TABLE `doctorsdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-01  7:59:51
