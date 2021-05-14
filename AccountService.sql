-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: research
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Current Database: `research`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `research` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `research`;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productID` varchar(5) NOT NULL,
  `productName` varchar(25) NOT NULL,
  `category` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `unitPrice` float NOT NULL,
  `rID` varchar(5) NOT NULL,
  PRIMARY KEY (`productID`),
  KEY `rID_idx` (`rID`),
  CONSTRAINT `rID` FOREIGN KEY (`rID`) REFERENCES `research` (`rID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('p0001','bulb','science','bbbbbbbbbb',150,'r0001');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `research`
--

DROP TABLE IF EXISTS `research`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `research` (
  `rID` varchar(5) NOT NULL,
  `field` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `fundTotal` float NOT NULL,
  `publishedDate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cmpl_stats` varchar(45) DEFAULT NULL,
  `approval` varchar(15) NOT NULL DEFAULT 'Not Approved',
  PRIMARY KEY (`rID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research`
--

LOCK TABLES `research` WRITE;
/*!40000 ALTER TABLE `research` DISABLE KEYS */;
INSERT INTO `research` VALUES ('r0001','abc','abcd',123457,'2021-05-08 09:03:34','complete','approved'),('r0002','covid19','science',444444,'2021-04-20 22:14:37','complete','approved'),('r0003','AI ','Data Science',2000000,'2021-05-08 09:03:54','complete','Approved'),('r0004','Meth','Chemistry',1000000,'2021-05-08 09:03:54','complete','Approved'),('r0005','Robotics','AI',250000,'2021-05-08 09:03:54','complete','Not Approved'),('r0006','Medicine','Covid-19',1000000,'2021-05-08 17:24:23','ongoing','Approved');
/*!40000 ALTER TABLE `research` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `account`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `account` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `account`;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` varchar(20) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(25) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Mobile` int DEFAULT NULL,
  `UserType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','Sajitha','Praboda@gmail.com','12345qwert','Badulla',7654567,'Buyer'),('15','Jini','jini@yahoo.com','12345@qwert','colombo',765690046,'Buyer'),('16','Jini','jini@gmail.com','12345@qwert','Piliyandala',123456789,'Buyer'),('17','Jini','jini@gmail.com','12345@qwert','Piliyandala',0,'Buyer'),('18','Jini','jini@gmail.com','12345@qwert','Piliyandala',0,'Buyer'),('19','Jini','jini@gmail.com','12345@qwert','Piliyandala',0,'Buyer'),('2','Kosala2','Kosala2@ymail.com','6789tyuo','Gampaha',123456789,'Funder'),('20','jini','jini@yahoo.com','12345@qwerty','colombo',123456789,'Buyer'),('25','jini','jini@yahoo.com','12345@qwerty','colombo',123456789,'Buyer'),('3','Praboda','Prabo@ymail.com','Prabosath','Galle',76560046,'Reseacher'),('4','Udara','udara@gmail.com','@12345','Nugegoda',767899876,'Buyer'),('5','Maduwantha','Maduwantha@gmail.com','mad1234!','Gampaha',759898234,'Researcher'),('6','Shen','sh@xmail.com','xxx@1234','Piliyandala',781212123,'Funder'),('8','Udara Samarakoon','udara@gmail.com','123456qwerty!','Nugegoda',769890034,'Buyer'),('9','Akila Ariyaratne','akila@rox.com','1234@1234','Pambahinna',702598879,'Consultant');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-15  2:13:04
