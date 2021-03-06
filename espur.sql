-- MySQL dump 10.15  Distrib 10.0.13-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: espur
-- ------------------------------------------------------
-- Server version	10.0.13-MariaDB

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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,'Spotting some choice booty'),(2,1,'Finding out you\'re pregnant'),(3,1,'Seeing your crush'),(4,1,'Pumpkin Spice Latte is back'),(5,1,'Feeling gassy'),(6,2,'Seeing your arch enemy'),(7,2,'Pumpkin Spice is banned by the FTC'),(8,2,'Checking if you put on deodorant'),(9,2,'Miley Cyrus comes on the radio'),(10,2,'Phone battery at 5%'),(11,2,'Getting Pepsi instead of Coke'),(12,1,'New iPhone released'),(13,1,'Being in love'),(14,2,'Realizing the cookies are actually raisin'),(15,2,'Complete Excitement'),(16,2,'Skydiving'),(17,3,'Stubbed your toe'),(18,3,'Just crashed your car'),(19,3,'Having to eat brussel sprouts'),(20,3,'Just dropped your phone screen-first'),(21,3,'Walking in on someone'),(22,3,'When you can\'t even'),(23,3,'Realizing there\'s still 30 minutes left in class'),(24,1,'Checking your privilege'),(25,2,'Smelling something really bad'),(26,3,'Having to hear your neighbor\'s music when you try to sleep');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `answerid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `authkey` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'joe','$2a$11$AFjpNijidzjVJPUUZp2Nr.64dQTmyuU.6DyzPMyh3peFXlSG2nAc.','jaxbot@gmail.com',NULL,'joe15dc94acececc944269fb582f1c5d73dc4a00245'),(2,'t','$2a$11$K2PRSnUHebbJxPvMQ/t1HOD3XXkSo3czZlb3Mo8AUuY0IJGLAmk4S','k',NULL,'teac07a7f4dd94618b3effa89d816f9ef198d9b8a'),(3,'u','$2a$11$y1y6XygYBV41VF7QvDbAL.d72XLflREFwPd34uIgDBvsB1s/LQJMm','e',NULL,'ubab3b51c069c00ae575634623dba1a46c88a56e8'),(4,'Jonathan','$2a$11$2iiHNZ9yTKR0EXOutQBWnuls0WIWJkET8PHtXANFOgjyBKGfmRde6','test',NULL,'Jonathandac4c7aa6e955292e39b64215d3007d46953df70'),(5,'ivey','$2a$11$Ex4NZLIzfxFe2QHy.U4/aOE23vFfwNityXAPrXa4aC9rgrztfdKlq','iveysaurrr@gmail.com',NULL,'iveyb84f1dd14f8fa37b753606be74bf8d2ef999fe5a');
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

-- Dump completed on 2015-01-03 22:07:51
