-- MySQL dump 10.13  Distrib 9.0.1, for Win64 (x86_64)
--
-- Host: localhost    Database: help_shopping_app
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `help_shopping_app`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `help_shopping_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `help_shopping_app`;

--
-- Table structure for table `buycodes`
--

DROP TABLE IF EXISTS `buycodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buycodes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `buycode` int NOT NULL,
  `seq` int NOT NULL,
  `r_uid` int NOT NULL,
  `b_uid` int NOT NULL,
  `b_at` datetime NOT NULL,
  `isdelivery` tinyint(1) DEFAULT '0',
  `d_at` datetime DEFAULT NULL,
  `isrecieve` tinyint(1) DEFAULT '0',
  `r_at` datetime DEFAULT NULL,
  `r_acp_at` datetime DEFAULT NULL,
  `b_acp_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buycodes`
--

LOCK TABLES `buycodes` WRITE;
/*!40000 ALTER TABLE `buycodes` DISABLE KEYS */;
INSERT INTO `buycodes` VALUES (1,2,1,2,1,'2025-02-06 20:51:35',1,'2025-02-14 21:24:43',0,NULL,NULL,'2025-02-14 21:24:59'),(2,2,2,4,1,'2025-02-06 20:51:35',1,'2025-02-14 21:28:43',0,NULL,NULL,'2025-02-14 21:28:55'),(3,3,1,3,1,'2025-02-08 00:18:09',1,'2025-02-13 22:30:51',0,NULL,NULL,NULL),(4,4,1,3,1,'2025-02-08 00:18:27',1,'2025-02-13 22:30:51',0,NULL,NULL,NULL),(5,5,1,3,1,'2025-02-08 00:19:30',1,'2025-02-13 21:54:16',0,NULL,NULL,NULL),(6,6,1,4,1,'2025-02-14 21:26:19',1,'2025-02-14 21:30:36',0,NULL,NULL,'2025-02-14 21:30:43'),(7,7,1,1,2,'2025-02-18 20:13:37',0,NULL,0,NULL,NULL,NULL),(8,7,2,5,2,'2025-02-18 20:13:37',0,NULL,0,NULL,NULL,NULL),(9,8,1,6,2,'2025-02-18 20:43:16',1,'2025-02-18 20:43:23',0,NULL,NULL,'2025-02-18 20:43:25');
/*!40000 ALTER TABLE `buycodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_name` varchar(255) NOT NULL,
  `com_auth_id` varchar(6) NOT NULL,
  `com_expl` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `delete_flg` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'communityA','012345','テスト用のコミュニティーです','2024-10-02 17:19:10','2024-10-02 17:19:10',0),(2,'communityB','012345','〇〇地区の住民を中心としたコミュニティです！','2024-10-02 17:19:25','2024-10-02 17:19:25',0),(3,'communityC','012345','現状、じいさん・ばあさんしかおらず買い手がおりません。。。急募！','2024-10-02 17:19:30','2024-10-02 17:19:30',0),(4,'test','012345','test','2024-11-30 12:45:39','2024-11-30 12:45:39',0),(5,'テスト用コミュニティー','012345','テスト用のコミュニティーです','2024-11-30 12:57:37','2024-11-30 12:57:37',0),(6,'テスト用コミュニティー','959731','テスト用のコミュニティーです','2024-11-30 12:59:09','2024-11-30 12:59:09',0),(7,'鳴尾地区コミュニティ','022214','鳴尾地区のコニュニティーです','2024-11-30 13:00:48','2024-11-30 13:00:47',0),(8,'テスト用コニュニティー２','460733','テスト用のコミュニティーです','2024-11-30 13:02:15','2024-11-30 13:02:15',0),(9,'テスト用コミュニティー３','388115','テスト用のコミュニティーです。','2024-11-30 13:03:33','2024-11-30 13:03:33',0),(10,'西畦野地区コミュニティー','772161','西畦野のコミュニティーです。新規オープンのダイレックスが買い物先です。','2024-12-05 20:13:51','2024-12-05 20:13:51',0);
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community_relations`
--

DROP TABLE IF EXISTS `community_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community_relations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `delete_flg` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_relations`
--

LOCK TABLES `community_relations` WRITE;
/*!40000 ALTER TABLE `community_relations` DISABLE KEYS */;
INSERT INTO `community_relations` VALUES (1,1,1,'2024-10-02 17:22:51','2024-10-02 17:22:51',0),(2,1,3,'2024-10-02 17:23:00','2024-10-02 17:23:00',0),(3,1,4,'2024-10-02 17:23:06','2024-10-02 17:23:06',0),(4,2,1,'2024-10-02 17:23:29','2024-10-02 17:23:29',0),(5,2,2,'2024-10-02 17:23:38','2024-10-02 17:23:38',0),(6,2,4,'2024-10-02 17:23:49','2024-10-02 17:23:49',0),(7,2,5,'2024-10-02 17:23:52','2024-10-02 17:23:52',0),(8,3,2,'2024-10-02 17:24:04','2024-10-02 17:24:04',0),(9,3,5,'2024-10-02 17:24:07','2024-10-02 17:24:07',0),(10,3,6,'2024-10-02 17:24:12','2024-10-02 17:24:12',0),(11,3,1,'2024-12-03 00:34:06','2024-12-03 00:34:05',0),(12,7,1,'2024-12-03 00:35:58','2024-12-03 00:35:57',0),(13,6,1,'2024-12-03 07:49:39','2024-12-03 07:49:39',0),(14,9,1,'2024-12-03 08:09:20','2024-12-03 08:09:19',0),(15,1,2,'2024-12-03 08:21:26','2024-12-03 08:21:25',0),(16,2,3,'2024-12-03 23:31:40','2024-12-03 23:31:39',0),(17,3,3,'2024-12-03 23:58:30','2024-12-03 23:58:30',0),(18,4,2,'2024-12-05 20:13:05','2024-12-05 20:13:05',0),(19,10,2,'2024-12-05 20:14:52','2024-12-05 20:14:52',0);
/*!40000 ALTER TABLE `community_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `vol` int NOT NULL,
  `unit` varchar(255) NOT NULL,
  `request_user_id` int NOT NULL,
  `inCart` text,
  `inCart_user_id` text,
  `buycode` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `delete_flg` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (1,'product1',1,'個',1,'1','1',2,'2024-10-02 17:28:21','2025-02-06 20:51:34',0),(2,'product2',1,'個',1,'1','2',7,'2024-10-02 17:28:27','2025-02-18 20:13:37',0),(3,'product3',1,'個',1,'0',NULL,NULL,'2024-10-02 17:28:32','2025-02-15 17:40:36',0),(4,'product4',1,'個',2,'1','2',7,'2024-10-02 17:28:40','2025-02-18 20:13:37',0),(5,'product5',1,'個',2,'1','2',7,'2024-10-02 17:28:45','2025-02-18 20:13:37',0),(6,'product6',1,'個',2,'1','1',2,'2024-10-02 17:28:48','2025-02-06 20:51:34',0),(7,'product7',1,'個',3,'1','1',3,'2024-10-02 17:28:56','2025-02-08 00:18:09',0),(8,'product8',1,'個',3,'1','3',NULL,'2024-10-02 17:29:00','2024-12-04 22:46:33',0),(9,'product9',1,'個',3,'1','1',3,'2024-10-02 17:29:03','2025-02-08 00:18:09',0),(10,'product10',1,'個',4,'1','1',6,'2024-10-02 17:29:20','2025-02-14 21:26:19',0),(11,'product11',1,'個',4,'1','1',6,'2024-10-02 17:29:24','2025-02-14 21:26:19',0),(12,'product12',1,'個',4,'0',NULL,NULL,'2024-10-02 17:29:29','2025-02-06 20:45:52',0),(13,'product13',1,'個',5,'1','2',7,'2024-10-02 17:29:39','2025-02-18 20:13:37',0),(14,'product14',1,'個',5,'0',NULL,NULL,'2024-10-02 17:29:44','2024-11-09 12:26:45',0),(15,'product15',1,'個',5,'1','1',2,'2024-10-02 17:29:51','2025-02-06 20:51:34',0),(16,'product16',1,'個',6,'1','2',8,'2024-10-02 17:30:05','2025-02-18 20:43:16',0),(17,'product17',1,'個',6,'1','3',NULL,'2024-10-02 17:30:10','2024-12-04 22:46:33',0),(18,'product18',1,'個',6,'1','3',NULL,'2024-10-02 17:30:13','2024-12-04 22:46:33',0),(19,'飲料水',2,'本',3,'1','1',4,'2024-11-06 23:16:53','2025-02-08 00:18:27',0),(20,'スマートフォン',3,'台',4,'1','1',2,'2024-11-07 00:22:08','2025-02-06 20:51:34',0),(21,'アルコールスプレー',1,'個',4,'1','1',2,'2024-11-07 00:27:18','2025-02-06 20:51:34',0),(22,'はさみ',1,'個',4,'1','1',2,'2024-11-07 00:28:21','2025-02-06 20:51:34',0),(23,'ティッシュペーパー',5,'箱',5,'0',NULL,NULL,'2024-11-07 00:35:30','2024-11-07 00:35:29',0),(24,'さつまいも',3,'袋',1,'1','1',2,'2024-11-07 00:36:53','2025-02-06 20:51:34',0),(25,'お茶',2,'本',2,'1','1',2,'2024-11-09 12:14:36','2025-02-06 20:51:34',0),(26,'洗濯洗剤',1,'個',2,'1','2',7,'2024-11-22 21:04:35','2025-02-18 20:13:37',0),(27,'ほしいも',1,'個',14,'0',NULL,NULL,'2024-11-22 21:45:42','2024-11-22 21:45:42',0),(28,'お茶',1,'個',14,'0',NULL,NULL,'2024-11-28 00:25:29','2024-11-28 00:25:28',0),(29,'なす',3,'袋',3,'1','1',4,'2024-12-05 20:08:03','2025-02-08 00:18:27',0),(30,'なす',3,'袋',3,'1','1',5,'2024-12-05 20:08:03','2025-02-08 00:19:30',0),(31,'なす',3,'袋',2,'1','1',2,'2024-12-05 20:10:32','2025-02-06 20:51:34',0),(32,'test',1,'個',17,'0',NULL,NULL,'2024-12-05 20:56:04','2024-12-05 20:56:03',0),(33,'test',1,'個',1,'0',NULL,NULL,'2025-01-02 22:18:48','2025-01-23 21:15:41',0);
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort_col` int DEFAULT NULL,
  `unit_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,1,'こ'),(2,2,'本'),(3,3,'袋'),(4,4,'枚'),(5,5,'箱'),(6,6,'セット');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlinks`
--

DROP TABLE IF EXISTS `userlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlinks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid1` int DEFAULT NULL,
  `uid1_at` datetime DEFAULT NULL,
  `uid2` int DEFAULT NULL,
  `uid2_at` datetime DEFAULT NULL,
  `ismatch` tinyint(1) DEFAULT '0',
  `match_at` datetime DEFAULT NULL,
  `delete_flg` tinyint(1) DEFAULT '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlinks`
--

LOCK TABLES `userlinks` WRITE;
/*!40000 ALTER TABLE `userlinks` DISABLE KEYS */;
INSERT INTO `userlinks` VALUES (1,1,'2024-10-02 16:39:37',2,'2024-10-02 16:39:37',1,'2024-10-02 16:39:37',0),(2,1,'2024-10-02 16:39:37',3,'2024-10-02 16:39:37',1,'2024-10-02 16:39:37',0),(3,1,'2024-10-02 16:39:37',4,'2024-10-02 16:39:37',1,'2024-10-02 16:39:37',0),(4,2,'2024-10-02 16:39:37',3,'2024-10-02 16:39:37',1,'2024-10-02 16:39:37',0),(5,2,'2024-10-02 16:39:37',5,'2024-10-02 16:39:37',1,'2024-10-02 16:39:37',0),(6,2,'2024-10-02 16:39:37',6,'2024-10-02 16:39:37',1,'2024-10-02 16:39:37',0),(7,3,'2024-10-02 16:39:37',4,'2024-10-02 16:39:37',1,'2024-10-02 16:39:37',0),(8,4,'2024-10-02 16:39:37',5,'2024-10-02 16:39:37',1,'2024-10-02 16:39:37',0),(9,5,'2024-10-02 16:39:37',3,'2024-10-02 16:39:37',1,'2024-10-02 16:39:37',0),(10,5,'2024-10-02 16:39:37',9,'2024-10-02 16:39:37',1,'2024-10-02 16:39:37',0),(11,6,'2024-10-02 16:39:37',9,'2024-10-02 16:39:37',1,'2024-10-02 16:39:37',0),(12,6,'2024-10-02 16:39:37',12,'2024-10-02 16:39:37',1,'2024-10-02 16:39:37',0),(13,9,'2024-10-02 16:39:37',13,'2024-10-02 16:39:37',1,'2024-10-02 16:39:37',0),(14,12,'2024-10-02 16:39:37',13,'2024-10-02 16:39:37',1,'2024-10-02 16:39:37',0),(15,1,'2025-02-19 00:28:11',14,'2025-02-19 00:37:14',1,'2025-02-19 00:37:14',0);
/*!40000 ALTER TABLE `userlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `user_type` int NOT NULL DEFAULT '0',
  `linkpass` varchar(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `delete_flg` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'A','aaaa@test.com','aaaa0000','00000000000',0,'111111','2024-10-02 16:37:00','2024-10-02 16:37:00',0),(2,'B','bbbb@test.com','bbbb0000','00000000000',0,'222222','2024-10-02 16:39:37','2024-10-02 16:39:37',0),(3,'C','cccc@test.com','cccc0000','00000000000',0,'333333','2024-10-02 16:39:52','2024-10-02 16:39:52',0),(4,'D','dddd@test.com','dddd0000','00000000000',0,'444444','2024-10-02 16:40:06','2024-10-02 16:40:06',0),(5,'E','eeee@test.com','eeee0000','00000000000',0,'555555','2024-10-02 16:40:31','2024-10-02 16:40:31',0),(6,'F','ffff@test.com','ffff0000','00000000000',0,'666666','2024-10-02 16:40:42','2024-10-02 16:40:42',0),(9,'G','gggg@test.com','gggg0000','0000000000',0,'999999','2024-10-02 12:30:29','2024-10-03 12:30:29',0),(12,'H','hhhh@test.com','hhhh0000','00000000000',0,'121212','2024-10-30 07:58:03','2024-10-30 07:58:03',0),(13,'I','iiii@test.com','iiii0000','00000000000',0,'131313','2024-11-05 22:31:26','2024-11-05 22:31:26',0),(14,'増田　亮介','m1741508@gmail.com','DepEnvChe0526','08061328059',0,'141414','2024-11-22 21:45:07','2024-11-22 21:45:07',0),(15,'坂本　龍馬','ryoma.sakamoto@test.com','sakamoto','08033334444',0,'151515','2024-11-30 20:02:43','2024-11-30 20:02:43',0),(16,'牧野　富太郎','tomitaro.makino@test.com','makino','0120333444',0,'161616','2024-11-30 20:04:09','2024-11-30 20:04:08',0),(17,'test','test','test','0000000000',0,'171717','2024-12-05 20:55:48','2024-12-05 20:55:48',0),(18,'TestUser','test@test.com','test0000','111111111',0,'181818','2025-01-08 23:33:41','2025-01-08 23:33:42',0),(30,'testUser2','test-user@test.com','test0000','00088889999',1,'303030','2025-01-10 08:17:22','2025-01-10 08:17:22',0),(31,'testUser3','test-user3@test.com','test0000','00000000000',1,'313131','2025-01-10 08:22:23','2025-01-10 08:22:23',0);
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

-- Dump completed on 2025-02-20 18:19:01
