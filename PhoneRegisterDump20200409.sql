CREATE DATABASE  IF NOT EXISTS `phone_register` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `phone_register`;
-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: phone_register
-- ------------------------------------------------------
-- Server version	5.7.29

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
-- Table structure for table `phone_register`
--

DROP TABLE IF EXISTS `phone_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `phone_number` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_register`
--

LOCK TABLES `phone_register` WRITE;
/*!40000 ALTER TABLE `phone_register` DISABLE KEYS */;
INSERT INTO `phone_register` VALUES (1,'Angel','Ingram','06306192692'),(2,'Judy','Ortiz','06319752125'),(3,'Cesar','Morton','06302522395'),(4,'Iris','Stokes','06312390918'),(5,'Hubert','Keller','06504585588'),(6,'Jean','Jefferson','06316206971'),(7,'Kathy','Williamson','06706927056'),(8,'Tomas','Schultz','06507706887'),(9,'Jared','Ferguson','06702270687'),(10,'Calvin','Flores','06708209334'),(11,'Dora','Rivera','06309838930'),(12,'Caroline','Collier','06507284918'),(13,'Ricky','Jenkins','06319452046'),(14,'Shelia','Hale','06500472365'),(15,'Angelo','Underwood','06309667431'),(16,'Myron','Hammond','06702128773'),(17,'Rosemarie','Gonzales','06208014141'),(18,'Kristen','Austin','06206055398'),(19,'Rodolfo','Sandoval','06300476375'),(20,'Caleb','Stewart','06306182413'),(21,'Penny','Phelps','06303778892'),(22,'Sarah','Malone','06501917612'),(23,'Terrance','Lee','06207536474'),(24,'Cecelia','Logan','06303234593'),(25,'Angelica','Garcia','06506319387'),(26,'Naomi','Flowers','06500297727'),(27,'Irma','Jensen','06509325747'),(28,'Trevor','Harrison','06704450859'),(29,'Estelle','Ray','06703472820'),(30,'Alexander','Norman','06706417077'),(31,'Sabrina','Campbell','06318703474'),(32,'Edmund','Andrews','06507642981'),(33,'Doreen','Blake','06309299084'),(34,'Jessie','Foster','06303726192'),(35,'Beatrice','Romero','06310701734'),(36,'Renee','Wilkins','06313218028'),(37,'John','Warner','06707788696'),(38,'Lynn','Holt','06209500516'),(39,'Ervin','Roy','06318756325'),(40,'Emanuel','Christensen','06306239931'),(41,'Ivan','Miles','06317529577'),(42,'Mable','Marshall','06500724675'),(43,'Tom','Mills','06709091331'),(44,'Sheri','Webster','06702672219'),(45,'Guy','Dennis','06203775325'),(46,'Jacquelyn','Estrada','06201942590'),(47,'Earl','Carr','06707480711'),(48,'Benjamin','Washington','06703795351'),(49,'Tracy','Simmons','06508354800'),(50,'Deanna','Carpenter','06206226592'),(51,'Claire','Caldwell','06313040432'),(52,'Frank','Moran','06703752781'),(53,'Courtney','Fleming','06307025607'),(54,'Michele','Armstrong','06306956849'),(55,'Meghan','Davis','06313393898'),(56,'Jeff','Powers','06308954627'),(57,'Andres','Bryan','06311785528'),(58,'Ronald','Harmon','06315746134'),(59,'Brent','Adkins','06204173664'),(60,'Silvia','Mason','06313420395'),(61,'Josephine','Blair','06508608086'),(62,'Jean','Edwards','06314536357'),(63,'Ben','Owens','06308818448'),(64,'Jim','Lindsey','06317600807'),(65,'Ray','Simon','06508333774'),(66,'Linda','Russell','06305128413'),(67,'Shaun','Harvey','06318842794'),(68,'Melba','Barnes','06312468544'),(69,'Garry','Cobb','06501892496'),(70,'Rufus','Jordan','06303752933'),(71,'Doyle','Perez','06209625610'),(72,'Herman','Dixon','06315370056'),(73,'Dan','Little','06303122236'),(74,'Cody','Hawkins','06508210286'),(75,'Wilfred','Waters','06315007192'),(76,'Laurie','Douglas','06319189119'),(77,'Chelsea','Willis','06301895998'),(78,'Jimmie','Cooper','06303437814'),(79,'Jerry','Weaver','06701584364'),(80,'Luz','Zimmerman','06201160679'),(81,'Lionel','Soto','06310738979'),(82,'Tracey','Lloyd','06507111898'),(83,'Pearl','King','06701186916'),(84,'Ruben','Patton','06304039487'),(85,'Beth','Phillips','06315551075'),(86,'Danielle','Gilbert','06502272811'),(87,'Clark','Haynes','06506481639'),(88,'Roger','Floyd','06312571831'),(89,'Garrett','Guerrero','06508104189'),(90,'Eddie','Williams','06209376581'),(91,'Beverly','Curry','06708591729'),(92,'Charles','Lane','06301954678'),(93,'Fred','Park','06506457943'),(94,'Ann','Snyder','06306625395'),(95,'Jan','Lucas','06309812818'),(96,'Cassandra','Castro','06507700763'),(97,'Jeremy','Morgan','06204476154'),(98,'Justin','Porter','06300105477'),(99,'Earnest','Reynolds','06304397141'),(100,'Daryl','French','06311043844');
/*!40000 ALTER TABLE `phone_register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-09 12:21:47
