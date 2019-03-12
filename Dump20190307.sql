-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: admin
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `buy_date` date DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (13,74,'2019-02-26'),(14,74,'2019-02-27'),(15,74,'2019-02-27'),(16,74,'2019-02-27'),(17,74,'2019-02-27'),(18,74,'2019-02-27'),(19,74,'2019-02-27'),(20,74,'2019-02-27'),(21,74,'2019-02-27'),(22,74,'2019-02-27'),(23,74,'2019-02-27'),(24,75,'2019-03-06'),(25,74,'2019-03-06'),(26,74,'2019-03-06'),(27,74,'2019-03-06'),(28,74,'2019-03-06'),(29,74,'2019-03-06'),(30,74,'2019-03-07'),(31,77,'2019-03-07'),(32,77,'2019-03-07');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartitem`
--

DROP TABLE IF EXISTS `cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cartitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `buy_quantity` int(11) DEFAULT NULL,
  `sell_price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartitem`
--

LOCK TABLES `cartitem` WRITE;
/*!40000 ALTER TABLE `cartitem` DISABLE KEYS */;
INSERT INTO `cartitem` VALUES (27,15,18,1,100),(28,16,21,2,120),(29,17,18,3,100),(30,17,29,3,300),(31,18,17,1,120),(32,19,18,2,100),(33,20,18,2,100),(34,21,18,3,100),(35,22,17,1,120),(36,23,17,1,120),(37,23,18,1,100),(38,24,16,3,150),(39,25,18,1,100),(40,26,32,1,300),(41,27,32,1,300),(42,29,18,1,100),(43,30,16,4,150),(44,30,40,2,300),(45,31,16,1,150);
/*!40000 ALTER TABLE `cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (12,'Men'),(13,'Women'),(14,'Couple');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=458 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (1,'1'),(2,'2'),(3,'3'),(4,'4'),(5,'5'),(6,'6'),(7,'7'),(8,'8'),(9,'9'),(10,'1'),(11,'2'),(12,'3'),(13,'4'),(14,'1'),(15,'2'),(16,'3'),(17,'4'),(18,'5'),(19,'6'),(20,'1'),(21,'1'),(22,'1'),(23,'1'),(24,'1'),(25,'1'),(26,'2'),(27,'1'),(28,'2'),(29,'1'),(30,'2'),(31,'3'),(32,'1'),(33,'2'),(34,'1'),(35,'2'),(36,'1'),(37,'1'),(38,'1'),(39,'1'),(40,'1'),(41,'1'),(42,'1'),(43,'1'),(44,'1'),(45,'2'),(46,'1'),(47,'2'),(48,'1'),(49,'1'),(50,'2'),(51,'1'),(52,'1'),(53,'1'),(54,'1'),(55,'2'),(56,'1'),(57,'1'),(58,'1'),(59,'1'),(60,'1'),(61,'2'),(62,'3'),(63,'4'),(64,'5'),(65,'1'),(66,'1'),(67,'2'),(68,'3'),(69,'4'),(70,'1'),(71,'2'),(72,'3'),(73,'4'),(74,'5'),(75,'6'),(76,'1'),(77,'1'),(78,'1'),(79,'1'),(80,'1'),(81,'2'),(82,'1'),(83,'1'),(84,'1'),(85,'1'),(86,'1'),(87,'1'),(88,'1'),(89,'1'),(90,'2'),(91,'1'),(92,'1'),(93,'2'),(94,'1'),(95,'1'),(96,'1'),(97,'2'),(98,'3'),(99,'1'),(100,'1'),(101,'1'),(102,'1'),(103,'1'),(104,'1'),(105,'1'),(106,'2'),(107,'1'),(108,'2'),(109,'1'),(110,'1'),(111,'2'),(112,'1'),(113,'1'),(114,'2'),(115,'1'),(116,'1'),(117,'2'),(118,'1'),(119,'2'),(120,'3'),(121,'4'),(122,'5'),(123,'1'),(124,'2'),(125,'3'),(126,'4'),(127,'5'),(128,'1'),(129,'2'),(130,'3'),(131,'1'),(132,'2'),(133,'1'),(134,'2'),(135,'3'),(136,'1'),(137,'2'),(138,'3'),(139,'1'),(140,'2'),(141,'3'),(142,'1'),(143,'2'),(144,'3'),(145,'4'),(146,'1'),(147,'2'),(148,'1'),(149,'1'),(150,'2'),(151,'3'),(152,'4'),(153,'1'),(154,'2'),(155,'3'),(156,'4'),(157,'5'),(158,'6'),(159,'7'),(160,'1'),(161,'2'),(162,'3'),(163,'4'),(164,'5'),(165,'6'),(166,'7'),(167,'8'),(168,'9'),(169,'10'),(170,'11'),(171,'12'),(172,'13'),(173,'14'),(174,'15'),(175,'16'),(176,'17'),(177,'18'),(178,'19'),(179,'20'),(180,'1'),(181,'2'),(182,'3'),(183,'4'),(184,'1'),(185,'2'),(186,'3'),(187,'4'),(188,'5'),(189,'6'),(190,'7'),(191,'1'),(192,'2'),(193,'3'),(194,'4'),(195,'5'),(196,'6'),(197,'7'),(198,'8'),(199,'9'),(200,'1'),(201,'1'),(202,'1'),(203,'2'),(204,'1'),(205,'2'),(206,'3'),(207,'4'),(208,'5'),(209,'6'),(210,'7'),(211,'8'),(212,'1'),(213,'2'),(214,'1'),(215,'2'),(216,'1'),(217,'2'),(218,'1'),(219,'2'),(220,'3'),(221,'2'),(222,'1'),(223,'3'),(224,'4'),(225,'5'),(226,'1'),(227,'2'),(228,'3'),(229,'4'),(230,'5'),(231,'6'),(232,'7'),(233,'8'),(234,'9'),(235,'1'),(236,'2'),(237,'3'),(238,'1'),(239,'2'),(240,'1'),(241,'2'),(242,'3'),(243,'1'),(244,'1'),(245,'2'),(246,'1'),(247,'2'),(248,'3'),(249,'1'),(250,'2'),(251,'3'),(252,'4'),(253,'5'),(254,'6'),(255,'7'),(256,'8'),(257,'9'),(258,'10'),(259,'1'),(260,'2'),(261,'3'),(262,'4'),(263,'5'),(264,'6'),(265,'1'),(266,'2'),(267,'3'),(268,'4'),(269,'5'),(270,'6'),(271,'7'),(272,'8'),(273,'9'),(274,'10'),(275,'11'),(276,'12'),(277,'13'),(278,'14'),(279,'15'),(280,'16'),(281,'17'),(282,'1'),(283,'2'),(284,'1'),(285,'2'),(286,'1'),(287,'2'),(288,'1'),(289,'1'),(290,'1'),(291,'2'),(292,'3'),(293,'1'),(294,'1'),(295,'2'),(296,'3'),(297,'4'),(298,'5'),(299,'6'),(300,'7'),(301,'1'),(302,'2'),(303,'1'),(304,'2'),(305,'1'),(306,'1'),(307,'1'),(308,'1'),(309,'1'),(310,'1'),(311,'2'),(312,'3'),(313,'1'),(314,'1'),(315,'1'),(316,'1'),(317,'2'),(318,'1'),(319,'2'),(320,'1'),(321,'1'),(322,'1'),(323,'1'),(324,'1'),(325,'2'),(326,'1'),(327,'2'),(328,'3'),(329,'4'),(330,'5'),(331,'1'),(332,'2'),(333,'3'),(334,'4'),(335,'5'),(336,'6'),(337,'7'),(338,'8'),(339,'9'),(340,'10'),(341,'1'),(342,'2'),(343,'3'),(344,'4'),(345,'5'),(346,'6'),(347,'1'),(348,'2'),(349,'3'),(350,'4'),(351,'5'),(352,'6'),(353,'7'),(354,'8'),(355,'9'),(356,'10'),(357,'11'),(358,'12'),(359,'1'),(360,'2'),(361,'3'),(362,'4'),(363,'5'),(364,'1'),(365,'2'),(366,'3'),(367,'4'),(368,'1'),(369,'2'),(370,'1'),(371,'2'),(372,'1'),(373,'2'),(374,'1'),(375,'2'),(376,'1'),(377,'2'),(378,'3'),(379,'4'),(380,'1'),(381,'2'),(382,'1'),(383,'2'),(384,'3'),(385,'4'),(386,'5'),(387,'6'),(388,'7'),(389,'8'),(390,'9'),(391,'10'),(392,'11'),(393,'12'),(394,'13'),(395,'14'),(396,'15'),(397,'16'),(398,'17'),(399,'18'),(400,'19'),(401,'20'),(402,'21'),(403,'22'),(404,'23'),(405,'24'),(406,'25'),(407,'26'),(408,'27'),(409,'28'),(410,'29'),(411,'30'),(412,'31'),(413,'32'),(414,'33'),(415,'1'),(416,'2'),(417,'1'),(418,'2'),(419,'3'),(420,'4'),(421,'1'),(422,'2'),(423,'3'),(424,'4'),(425,'1'),(426,'2'),(427,'3'),(428,'4'),(429,'1'),(430,'2'),(431,'3'),(432,'4'),(433,'5'),(434,'6'),(435,'7'),(436,'8'),(437,'9'),(438,'10'),(439,'1'),(440,'2'),(441,'3'),(442,'4'),(443,'5'),(444,'6'),(445,'1'),(446,'2'),(447,'3'),(448,'4'),(449,'5'),(450,'6'),(451,'1'),(452,'2'),(453,'3'),(454,'4'),(455,'5'),(456,'6'),(457,'7');
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `avatar_file_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (34,'dung',21,'bn','admin','123','admin','1551942075167.jpg'),(74,'hoang',20,'bn','namhoang','123','member','1551942114341.jpg'),(75,'XuanAnh',60,'hn','xuananh','123','member','1551942287490.jpg'),(77,'HiepDo',20,'Bac Ninh','Dinh Hiep','123','member','1551942144408.jpg');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `product_file_name` varchar(45) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (16,'ManU',20,150,'Expensive','1551931738797.jpg',12),(17,'T-Shirt',20,120,'Expensive','1550757785992.jpg',12),(18,'T-Shirt',20,100,'Cheap','1550757814226.jpg',12),(20,' Long Sleeve Shirt',20,300,'Expensive','1550758069908.jpg',12),(21,'So mi',20,120,'Cheap','1550815888509.jpg',13),(24,'Ao Doi',20,200,'Expensive','1551242107319.jpg',14),(31,'Jeans Skinny',30,300,'Mid-rise, faded-effect jeans.','1551882384422.jpg',13),(32,'Jeans Skinny Blue',20,300,'Mid-rise, faded-effect jeans.','1551879685771.jpg',13),(33,'High Rise Skinny Jeans',20,300,'Mid-rise, faded-effect jeans.','1551879757291.jpg',13),(34,'Innovation Super Skinny Jeans ',20,300,'Mid-rise, faded-effect jeans.','1551879817101.jpg',13),(35,'Shirt Blue',20,250,'Slim shape','1551880053479.jpg',13),(36,'Long-sleeved shirt with bow tie',20,200,'Slim shape','1551880164665.jpg',13),(37,' short-sleeved shirt',20,250,'Slim shape','1551880284983.jpg',13),(38,'Denim Jacket',20,260,'personality, dynamic, youthful','1551880444776.jpg',12),(39,'Casual Shirt',20,300,'Slim shape','1551880534494.jpg',12),(40,'Dress Polka Dot Shirt ',20,300,'Slim shape','1551880638182.jpg',12),(41,'Turtle Casual Indigo-Blue Men\'s Sweatshirt',20,300,' Elegant Elegance','1551880742096.jpg',12),(42,'Soulmate Couple Dress and Top',20,300,'Original and Exclusive Designs from Me&U','1551880858344.jpg',14),(43,'Hoodie',20,300,'Set aside for occasions','1551880994492.jpg',14),(44,'T-Shirt Couple',20,300,'Slim shape','1551881101561.jpg',14);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-07 14:47:56
