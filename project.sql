-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: 52.204.65.31    Database: HappyRideDb
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `comfort_level` int(1) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `car_registration_number` varchar(20) DEFAULT NULL,
  `car_color` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `car_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'volkswagen','polo',5,NULL,NULL,NULL),(2,'volkswagen','vento',3,NULL,NULL,NULL);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `places` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Alwal'),(2,'Adarsh Nagar'),(3,'Ameerpet'),(4,'Bagh Lingampally'),(5,'Balkampet'),(6,'Barkatpura'),(7,'Bazarghat'),(8,'Borabanda'),(9,'Chanda Nagar'),(10,'Chilkalguda'),(11,'Chintal'),(12,'Erragadda'),(13,'Erramanzil Colony'),(14,'Fathenagar'),(15,'Ferozguda'),(16,'Gandhi Nagar'),(17,'Greenlands'),(18,'Kalyan Nagar'),(19,'Kamala Nagar'),(20,'Karkhana'),(21,'Khairatabad'),(22,'Kompally'),(23,'Kukatpally'),(24,'Lakdikapul'),(25,'Lalaguda'),(26,'Mahatma Gandhi Rd'),(27,'Mallepally'),(28,'Medchal'),(29,'Miyapur'),(30,'Moosapet'),(31,'Moti Nagar'),(32,'Necklace Road'),(33,'Nehru Nagar'),(34,'P. G. Road'),(35,'Panjagutta'),(36,'Patancheru'),(37,'Prakasham Nagar'),(38,'Punjagutta'),(39,'Ram Nagar'),(40,'Ramachandrapuram'),(41,'Ranigunj'),(42,'Safilguda'),(43,'Saifabad'),(44,'Sanjeeva Reddy Nagar'),(45,'Shamirpet'),(46,'Shapur Nagar'),(47,'Sikh Village'),(48,'Sitaphalmandi'),(49,'Somajiguda'),(50,'Sri Nagar Colony'),(51,'Tank Bund'),(52,'Tar Bund'),(53,'Vengal Rao Nagar'),(54,'Yellammagutta'),(55,'Yellareddyguda'),(56,'Yousufguda'),(57,'Abids'),(58,'Aghapura'),(59,'Bank Street'),(60,'Basheer Bagh'),(61,'Chikkadpally'),(62,'Goshamahal'),(63,'Gowliguda'),(64,'Gun Foundry'),(65,'Himayath Nagar'),(66,'Hyderguda'),(67,'Kachiguda'),(68,'King Koti'),(69,'Koti'),(70,'Nampally'),(71,'OsmanGanj'),(72,'Ramkoti'),(73,'RTC Cross Road'),(74,'Sultan Bazar'),(75,'Amberpet'),(76,'Boduppal'),(77,'Ghatkesar'),(78,'Habsiguda'),(79,'Kavadiguda'),(80,'Nacharam'),(81,'Nagole'),(82,'Nallakunta'),(83,'Narayanaguda'),(84,'Tarnaka'),(85,'Uppal'),(86,'Vidyanagar'),(87,'Adikmet'),(88,'Begumpet'),(89,'Bolarum'),(90,'Bowenpally'),(91,'Jeedimetla'),(92,'Malkajgiri'),(93,'Marredpally'),(94,'Padmarao Nagar'),(95,'R. P. Road'),(96,'Sainikpuri'),(97,'Sanath Nagar'),(98,'Sarojini Devi Rd'),(99,'Secunderabad'),(100,'Trimulgherry'),(101,'Warsiguda'),(102,'Afzalgunj'),(103,'Auto Nagar'),(104,'Bahadurpura'),(105,'Balapur'),(106,'Begum Bazar'),(107,'Bhavani Nagar'),(108,'Chaderghat'),(109,'Chaitanyapuri'),(110,'Champapet'),(111,'Chanchalguda'),(112,'Chandrayangutta'),(113,'Charkaman'),(114,'Charminar Road'),(115,'Chudi Bazar'),(116,'Dabeerpura'),(117,'Dilsukh Nagar'),(118,'Doodh Bowli'),(119,'Esamia Bazar'),(120,'Falaknuma'),(121,'Fateh Darwaza'),(122,'Hayat Nagar'),(123,'Hayathnagar'),(124,'Karmangha'),(125,'Kishana Bagh'),(126,'Kothapet'),(127,'L.B. Nagar'),(128,'Malakpet'),(129,'Moghalpura'),(130,'Moosarambagh'),(131,'Ramakrishnapuram'),(132,'Saidabad'),(133,'Santosh Nagar'),(134,'Saroor Nagar'),(135,'Shah Ali Banda'),(136,'Shamshabad'),(137,'Siddiamber Bazar'),(138,'Vanasthalipuram'),(139,'Yakutpura'),(140,'Ahmed Nagar'),(141,'Asif Nagar'),(142,'Banjara Hills'),(143,'Gachibowli'),(144,'Gudimalkapur'),(145,'Hitech City'),(146,'Humayun Nagar'),(147,'Izzat Nagar'),(148,'Jubilee Hill'),(149,'Karwan'),(150,'Kondapur'),(151,'Langar House'),(152,'Lingampally'),(153,'Madhapur'),(154,'Manikonda'),(155,'Masab Tank'),(156,'Mehdipatnam'),(157,'MLA Colony'),(158,'Mozamjahi Market'),(159,'Purana Pul'),(160,'Rajendra Nagar'),(161,'Ranga Reddy'),(162,'Tolichowki'),(163,'Vijay Nagar Colony');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destination`
--

DROP TABLE IF EXISTS `destination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place_name` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination`
--

LOCK TABLES `destination` WRITE;
/*!40000 ALTER TABLE `destination` DISABLE KEYS */;
INSERT INTO `destination` VALUES (1,'Golconda Fort','Golconda Fort','Hyderabad',17.379065,78.403343),(2,'NTR Gardens','NTR Marg, Central Secretariat, Khairatabad, Hyderabad, Telangana 500004, India','Hyderabad',17.412617,78.468781),(3,'Lumbini Park','Opposite Secretariat New Gate, Khairatabad, Hyderabad, Andhra Pradesh 500004, India','Hyderabad',17.412617,78.468781),(4,'Birla Mandir','Hill Fort Road, Hyderabad, Telangana 500004, India','Hyderabad',17.405458,78.469429),(5,'Prasads','NTR Gardens, LIC Division P.O., Hyderabad, Telangana 500063, India','Hyderabad',17.412849,78.465881);
/*!40000 ALTER TABLE `destination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_details`
--

DROP TABLE IF EXISTS `driver_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_licence_number` varchar(30) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `driver_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_details`
--

LOCK TABLES `driver_details` WRITE;
/*!40000 ALTER TABLE `driver_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `contact_number` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=515 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (513,'haritha','eluri','abc123',123456),(514,'siri','sudhathi','sirivsudhathi@gmail.com',2147483647);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_preference`
--

DROP TABLE IF EXISTS `member_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_preference` (
  `member_id` int(11) DEFAULT NULL,
  `is_smoking_allowed` char(1) DEFAULT NULL,
  `is_pet_allowed` char(1) DEFAULT NULL,
  KEY `member_id` (`member_id`),
  CONSTRAINT `member_preference_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_preference`
--

LOCK TABLES `member_preference` WRITE;
/*!40000 ALTER TABLE `member_preference` DISABLE KEYS */;
INSERT INTO `member_preference` VALUES (514,'Y','N');
/*!40000 ALTER TABLE `member_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requester_id` int(11) DEFAULT NULL,
  `ride_id` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `request_status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ride_id` (`ride_id`),
  KEY `request_status_id` (`request_status_id`),
  KEY `requester_id` (`requester_id`),
  CONSTRAINT `request_ibfk_2` FOREIGN KEY (`ride_id`) REFERENCES `ride` (`id`),
  CONSTRAINT `request_ibfk_4` FOREIGN KEY (`request_status_id`) REFERENCES `request_status` (`id`),
  CONSTRAINT `request_ibfk_5` FOREIGN KEY (`requester_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (7,513,2,NULL,1);
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_status`
--

DROP TABLE IF EXISTS `request_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_status`
--

LOCK TABLES `request_status` WRITE;
/*!40000 ALTER TABLE `request_status` DISABLE KEYS */;
INSERT INTO `request_status` VALUES (1,'Approved'),(2,'Rejected');
/*!40000 ALTER TABLE `request_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ride`
--

DROP TABLE IF EXISTS `ride`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ride` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` date DEFAULT NULL,
  `travel_start_time` date DEFAULT NULL,
  `source_city_id` int(11) DEFAULT NULL,
  `destination_city_id` int(11) DEFAULT NULL,
  `seats_offered` int(1) DEFAULT NULL,
  `contribution_per_head` int(11) DEFAULT NULL,
  `luggage_description` varchar(100) DEFAULT NULL,
  `member_car_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_car_id` (`member_car_id`),
  KEY `source_city_id` (`source_city_id`),
  KEY `destination_city_id` (`destination_city_id`),
  CONSTRAINT `ride_ibfk_4` FOREIGN KEY (`member_car_id`) REFERENCES `car` (`id`),
  CONSTRAINT `ride_ibfk_5` FOREIGN KEY (`source_city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `ride_ibfk_6` FOREIGN KEY (`destination_city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ride`
--

LOCK TABLES `ride` WRITE;
/*!40000 ALTER TABLE `ride` DISABLE KEYS */;
INSERT INTO `ride` VALUES (2,NULL,NULL,30,40,3,500,'5 kgs',NULL);
/*!40000 ALTER TABLE `ride` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-04  6:25:36
