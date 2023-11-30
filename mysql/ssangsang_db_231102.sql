-- MySQL dump 10.13  Distrib 8.1.0, for Linux (x86_64)
--
-- Host: localhost    Database: ssangsang
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `volunteer_idx` int DEFAULT NULL,
  `user_idx` int DEFAULT NULL,
  `comment` text,
  `created_at` datetime DEFAULT NULL,
  `is_delete` tinyint DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  `last_modify_time` datetime DEFAULT NULL,
  `is_protect` tinyint DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,5,'comment test@!@!','2023-10-12 16:40:30',0,NULL,'2023-10-12 16:40:30',0),(2,8,5,'comment test@!@!','2023-10-13 21:10:15',0,NULL,'2023-10-13 21:10:15',0),(3,1,41,'test231030 1','2023-10-30 07:22:10',1,'2023-10-31 15:10:37','2023-10-30 07:22:10',0),(4,1,41,'아마도?','2023-10-30 07:22:23',1,'2023-11-01 15:27:34','2023-11-01 15:26:44',0),(5,1,41,'ㅁㄴㅇㄹasdfasdf','2023-10-30 07:22:38',0,NULL,'2023-11-02 08:13:44',0),(6,1,41,'test231030 4asdfasdf','2023-10-30 07:22:55',0,NULL,'2023-11-02 08:13:48',0),(7,1,41,'asdfasdfasdfasdf','2023-11-02 08:15:13',1,'2023-11-02 08:15:53','2023-11-02 08:15:51',0),(8,1,41,'asdfasdf','2023-11-02 08:15:14',0,NULL,'2023-11-02 08:15:14',0),(9,1,41,'asdf','2023-11-02 08:15:46',0,NULL,'2023-11-02 08:15:46',0),(10,1,39,'하이','2023-11-02 12:53:10',0,NULL,'2023-11-02 12:53:10',0);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_join`
--

DROP TABLE IF EXISTS `customer_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_join` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `user_idx` int DEFAULT NULL,
  `volunteer_idx` int DEFAULT NULL,
  `coordinate` text,
  `attendance` tinyint DEFAULT NULL,
  `attendance_time` datetime DEFAULT NULL,
  `joined_at` datetime DEFAULT NULL,
  `is_delete` int DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_join`
--

LOCK TABLES `customer_join` WRITE;
/*!40000 ALTER TABLE `customer_join` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `email` varchar(320) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `nickname` text,
  `name` text,
  `phone` varchar(20) DEFAULT NULL,
  `is_delete` tinyint DEFAULT NULL,
  `signup_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `platform` tinyint DEFAULT NULL,
  `address` text,
  `address_detail` text,
  `device_id` text,
  `agree_term_date` datetime DEFAULT NULL,
  `last_modify_time` datetime DEFAULT NULL,
  `noti_flag` tinyint DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'admin@sori','ba6e89a1687ecec9e285334ec603395c179e22640a9a8c57db54fa0ebbb8d8eb56f7ebc16c8961569750ce4b9f5bf0ff90072cc9fcc35f5b19514e3516fc33dd','testAPINickname','testname','01012341234',0,'2023-09-14 15:07:41','2023-09-30 14:16:48',4,'api address test','api test address detail','device_id test','2023-09-14 15:07:41','2023-10-09 06:16:20',0),(32,'lanos5019@naver.com_del',NULL,'네이버 권경민','네이버 권경민 수정','01034659425',1,'2023-10-09 06:02:48','2023-10-09 07:21:03',3,'인천','ㅁㅇㄹㄴ','device_id test','2023-10-09 06:02:48','2023-10-09 07:20:45',0),(33,'kkmnormal@normal.com','73941847d9611927275d93139981ee78316de50bc51bf398f8ccdd778c7723f370cb252c5293c085ec3c6a3d185246837ed71d651a679cb680793581ad77ac24','testAPINickname','asdf','01012341234',0,'2023-10-09 06:27:57',NULL,4,'api address test','ㅁㄴㄹㅇ','device_id test','2023-10-09 06:27:57','2023-10-09 07:06:04',0),(34,'lanos5019@naver.com_del',NULL,'카카오 이름','카카오 네이버','ㄴㅁㅇ러리ㅓ',1,'2023-10-09 07:06:50','2023-10-09 07:23:53',2,'인천 우','ㅁㄴㅇㄹ','device_id test','2023-10-09 07:06:50','2023-10-09 07:23:51',0),(35,'lanos5019@naver.com_del',NULL,'qwer','권경민','+821034659425',1,'2023-10-09 07:21:33','2023-10-12 16:22:14',3,'인천, ㅌ테스트 상세주소','asasdf','he','2023-10-09 07:21:33','2023-10-12 16:22:10',0),(36,'lanos5019@naver.com_del',NULL,'qwe','권 경민','qwr',1,'2023-10-09 07:24:11','2023-10-09 07:25:54',2,'qwer','qwe','he','2023-10-09 07:24:11','2023-10-09 07:25:51',0),(37,'lanos5019@naver.com_del',NULL,'testAPINickname','testname','01012341234',1,'2023-10-09 07:26:23','2023-10-09 07:30:53',2,'api address test','api test address detail','device_id test','2023-10-09 07:26:23','2023-10-09 07:30:50',0),(38,'lanos5019@naver.com',NULL,'qwe','권 경민','qer',0,'2023-10-09 07:31:19',NULL,2,'qwer','수정했어용~','he','2023-10-09 07:31:19','2023-10-09 09:36:13',1),(39,'kmkkkp@naver.com',NULL,'kmk@naver','김민규','+821062427087',0,'2023-10-09 09:44:45',NULL,3,'경기도 수원시','월드컵로 207 아주대학교 구학생회관 308호','he','2023-10-09 09:44:45','2023-10-11 14:29:16',1),(40,'kmk@normal','98d60d8da2a85323a6b350bfb6b67719c1f06444be5beb9d47b371a3a914aaefb47a7f4e8a9d3ddb1220c7ae141ad6391b23b5477a4bc0b9cdefc17404b3e603','kmk','kmk','01062427087',0,'2023-10-09 11:43:53',NULL,4,'kmk','kmk','he','2023-10-09 11:43:53','2023-10-09 11:43:53',1),(41,'lanos5019@naver.com',NULL,'네이버 권경민','권경민','+821034659425',0,'2023-10-12 16:22:37',NULL,3,'인천, ㅌ테스트 상세주소','수정된 우리집','he','2023-10-12 16:22:37','2023-10-15 06:35:04',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteer_join`
--

DROP TABLE IF EXISTS `volunteer_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunteer_join` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `user_idx` int DEFAULT NULL,
  `volunteer_idx` int DEFAULT NULL,
  `coordinate` text,
  `attendance` tinyint DEFAULT NULL,
  `attendance_time` datetime DEFAULT NULL,
  `joined_at` datetime DEFAULT NULL,
  `is_delete` int DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer_join`
--

LOCK TABLES `volunteer_join` WRITE;
/*!40000 ALTER TABLE `volunteer_join` DISABLE KEYS */;
INSERT INTO `volunteer_join` VALUES (7,5,10,'22.22,33.44',1,'2023-11-02 11:10:59','2023-10-29 12:29:24',0,NULL),(8,5,11,NULL,0,NULL,'2023-10-29 14:47:18',1,'2023-10-29 14:48:08'),(9,5,12,NULL,0,NULL,'2023-10-29 14:55:17',1,'2023-10-29 15:06:54'),(10,5,11,NULL,0,NULL,'2023-10-29 15:09:54',0,NULL);
/*!40000 ALTER TABLE `volunteer_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteers`
--

DROP TABLE IF EXISTS `volunteers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunteers` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `type` tinyint DEFAULT NULL,
  `title` text,
  `detail` text,
  `user_idx` int DEFAULT NULL,
  `location` text,
  `address` text,
  `address_detail` text,
  `category` text,
  `is_delete` int DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  `last_modify_time` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `customer_limit` int DEFAULT NULL,
  `volunteer_limit` int DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `is_dead` tinyint DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteers`
--

LOCK TABLES `volunteers` WRITE;
/*!40000 ALTER TABLE `volunteers` DISABLE KEYS */;
INSERT INTO `volunteers` VALUES (1,1,'title tett','detail test',5,'location test','address test','addresss detail','category test',0,NULL,'2023-10-12 16:26:20','2023-10-20 00:00:00',1,1,'2023-10-15 00:00:00',0),(2,1,'title tett','detail test',5,'location test','address test','addresss detail','category test',0,NULL,'2023-10-12 17:22:25','2023-10-20 00:00:00',1,1,'2023-10-15 00:00:00',0),(3,1,'title tett','detail test',5,'location test','address test','addresss detail','category test',0,NULL,'2023-10-12 17:22:56','2023-10-20 00:00:00',1,1,'2023-10-15 00:00:00',0),(4,1,'title tett','detail test',5,'location test','address test','addresss detail','category test',0,NULL,'2023-10-12 17:31:40','2023-10-20 00:00:00',1,1,'2023-10-15 00:00:00',0),(5,1,'title tett','detail test',5,'location test','address test','addresss detail','category test',0,NULL,'2023-10-13 20:39:00','2023-10-20 00:00:00',1,1,'2023-10-15 00:00:00',0),(6,1,'title tett','detail test',5,'location test','address test','addresss detail','category test',0,NULL,'2023-10-13 20:54:20','2023-10-20 00:00:00',1,1,'2023-10-15 00:00:00',0),(7,1,'title tett','detail test',5,'location test','address test','addresss detail','category test',0,NULL,'2023-10-13 20:56:08','2023-10-20 00:00:00',1,1,'2023-10-15 00:00:00',0),(8,1,'title tett','detail test',5,'location test','address test','addresss detail','category test',0,NULL,'2023-10-13 20:57:49','2023-10-20 00:00:00',1,1,'2023-10-15 00:00:00',0),(9,1,'title tett','detail test',5,'location test','address test','addresss detail','category test',0,NULL,'2023-10-13 21:09:21','2023-10-20 00:00:00',1,1,'2023-10-15 00:00:00',0),(10,1,'title tett','detail test',5,'location test','address test','addresss detail','category test',0,NULL,'2023-10-28 08:02:28','2023-10-30 00:00:00',1,2,'2023-10-29 00:00:00',0),(11,1,'title tett','detail test',5,'location test','address test','addresss detail','category test',0,NULL,'2023-10-29 14:47:18','2023-11-20 00:00:00',1,1,'2023-11-15 00:00:00',0),(12,1,'title tett','detail test',5,'location test','address test','addresss detail','category test',0,NULL,'2023-10-29 14:55:17','2023-11-20 00:00:00',1,1,'2023-11-15 00:00:00',0);
/*!40000 ALTER TABLE `volunteers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `user_idx` int DEFAULT NULL,
  `volunteer_idx` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (3,5,1,'2023-11-01 17:11:01');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-02 12:56:53
