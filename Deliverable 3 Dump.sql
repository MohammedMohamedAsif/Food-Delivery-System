-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: deliverysystem
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `DriverId` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `License_number` int DEFAULT NULL,
  `Vehicle` varchar(45) DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  PRIMARY KEY (`DriverId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'Bob',123451,'Toyota ',5),(2,'Ricky',123452,'Honda',8),(3,'Joe',123453,'Kia',2),(4,'Noah',123454,'Fiat',7),(5,'Lucas',123455,'Honda',9),(6,'Emma',123456,'Toyota',10),(7,'Ava',123457,'BMW',3),(8,'Sophia',123458,'Audi',8),(9,'Charlotte',123459,'Kia',7),(10,'Olivia',123460,'Fiat',9);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `Id` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Highest_degree` varchar(45) DEFAULT NULL,
  `Department` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (801,'John','Masters','Math'),(802,'Sam','Masters','Physics'),(804,'Smith','Phd','Math'),(809,'David','Bachelors ','Biology'),(810,'Alex','Phd','Math');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `LocationId` int NOT NULL,
  `Dropoff_location` varchar(45) DEFAULT NULL,
  `Location_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`LocationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (11,'Woodward','Woodward, Charlotte, NC 28262'),(12,'Student Union','Student Union, Charlotte, NC 28262'),(13,'Fretwell','Fretwell, Charlotte, NC 28262'),(14,'Burson','Burson, Charlotte, NC 28262'),(15,'Friday','Friday, Charlotte, NC 28262'),(16,'EPIC','EPIC, Charlotte, NC 28262'),(17,'Duke','Duke, Charlotte, NC 28262'),(18,'Denny','Denny, Charlotte, NC 28262');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `OrderId` int NOT NULL,
  `Total_price` double DEFAULT NULL,
  `Delivery_charge` double DEFAULT NULL,
  `Driver_id` int DEFAULT NULL,
  `Location_id` int DEFAULT NULL,
  `Pickup_location` varchar(45) DEFAULT NULL,
  `Customer_name` varchar(45) DEFAULT NULL,
  `Customer_cell` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (23,21.9,5,2,13,'McDonald\'s','Bella','704-853-2008'),(24,12.33,5,7,13,'Cookout','Emma','704-520-5749'),(25,4.67,5,5,15,'Burger King','James','704-777-7777'),(26,42.98,5,4,12,'Five Guys','Hank','704-783-6575'),(27,13.09,5,3,11,'Starbucks','Susan','704-323-4563'),(28,7.83,5,9,17,'Panera Bread','Mike','704-656-5098'),(29,10.11,5,1,18,'Chipotle','Sully','704-656-5098');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `Id` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Cellphone_number` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (23,'Emma','704-520-5749','emmaw@uncc.edu'),(32,'Charlotte','704-971-3248','charlottec@uncc.edu'),(43,'Noah','704-888-8561','noahs@uncc.edu'),(52,'James','704-777-7777','jamesg@uncc.edu'),(76,'Bella','704-853-2008','bellat@uncc.edu'),(801,'John','704-078-9823','johnp@uncc.edu'),(802,'Sam','704-999-0538','samg@uncc.edu'),(804,'Smith','704-123-0934','smithj@uncc.edu'),(809,'David','704-643-0009','davidy@uncc.edu'),(810,'Alex','704-098-0211','alexr@uncc.edu'),(900,'Sully','704-656-5098','sullyb@uncc.edu'),(902,'Hank','704-786-6575','hanks@uncc.edu'),(905,'Mike','704-656-5098','mikew@uncc.edu'),(907,'Susan','704-323-4563','susans@uncc.edu'),(909,'Bill','704-434-3453','billn@uncc.edu');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `ProviderId` int NOT NULL,
  `Pickup_Location` varchar(45) DEFAULT NULL,
  `Website` varchar(45) DEFAULT NULL,
  `Product_name` varchar(45) DEFAULT NULL,
  `Product_quantity` int DEFAULT NULL,
  PRIMARY KEY (`ProviderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (9,'Starbucks','www.starbucks.com','Pumpkin Latte',89),(1234,'Cookout','www.cookoutusa.com','Big Double Tray',75),(3980,'Panera Bread','www.panera.com','French Onion Soup',97),(4532,'Mcdonald\'s','www.mcdonalds.com','McDouble',23),(4567,'Blaze Pizza','www.blazepizza.com','Pizza',78),(6785,'Five Guys','www.fguys.com','Milkshake',45),(7657,'Chipotle','www.chipotle.com','Burrito Bowl',45),(8561,'Burger King','www.bk.com','Whopper',63);
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `Id` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Position` varchar(45) DEFAULT NULL,
  `Admin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (23,'Sully','Accountant','Y'),(32,'Bill','Marketing','N'),(43,'Hank','HR Manager','Y'),(52,'Mike','Janitor','N'),(76,'Susan','Receptionist','Y');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `Id` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Graduation_year` varchar(45) DEFAULT NULL,
  `Major` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (900,'Emma','2021','Math','Junior'),(902,'Noah','2020','Biology','Senior'),(905,'James','2020','Business','Senior'),(907,'Bella','2023','Engineering','Freshman'),(909,'Charlotte','2021','Medicine','Junior');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-14 21:08:04
