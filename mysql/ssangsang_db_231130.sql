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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,5,'comment test@!@!','2023-10-12 16:40:30',0,NULL,'2023-10-12 16:40:30',0),(2,8,5,'comment test@!@!','2023-10-13 21:10:15',0,NULL,'2023-10-13 21:10:15',0),(3,1,41,'test231030 1','2023-10-30 07:22:10',1,'2023-10-31 15:10:37','2023-10-30 07:22:10',0),(4,1,41,'아마도?','2023-10-30 07:22:23',1,'2023-11-01 15:27:34','2023-11-01 15:26:44',0),(5,1,41,'ㅁㄴㅇㄹasdfasdf','2023-10-30 07:22:38',0,NULL,'2023-11-02 08:13:44',0),(6,1,41,'test231030 4asdfasdf','2023-10-30 07:22:55',1,'2023-11-28 04:52:09','2023-11-02 08:13:48',0),(7,1,41,'asdfasdfasdfasdf','2023-11-02 08:15:13',1,'2023-11-02 08:15:53','2023-11-02 08:15:51',0),(8,1,41,'asdfasdfasdfsda','2023-11-02 08:15:14',0,NULL,'2023-11-05 07:39:31',0),(9,1,41,'asdf','2023-11-02 08:15:46',1,'2023-11-05 07:39:21','2023-11-02 08:15:46',0),(10,1,39,'하이','2023-11-02 12:53:10',1,'2023-11-05 08:10:59','2023-11-02 12:53:10',0),(11,1,41,'asdfasdf','2023-11-05 07:39:35',1,'2023-11-05 07:39:40','2023-11-05 07:39:35',0),(12,1,41,'테스트용 댓글\n\n\n\n\n\n','2023-11-08 13:21:14',0,NULL,'2023-11-08 13:21:14',0),(13,3,5,'저는 외국인인데 참여할 수 있을까요?','2023-11-26 09:11:30',0,NULL,'2023-11-26 09:11:30',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_join`
--

LOCK TABLES `customer_join` WRITE;
/*!40000 ALTER TABLE `customer_join` DISABLE KEYS */;
INSERT INTO `customer_join` VALUES (1,39,2,NULL,0,NULL,'2023-11-21 17:06:55',0,NULL),(2,39,1,NULL,0,NULL,'2023-11-21 17:12:27',1,'2023-11-21 18:11:12'),(3,39,1,NULL,0,NULL,'2023-11-26 09:27:41',1,'2023-11-26 09:30:37'),(4,39,1,NULL,0,NULL,'2023-11-26 09:37:50',1,'2023-11-26 10:46:07'),(5,39,1,NULL,0,NULL,'2023-11-26 10:49:27',0,NULL);
/*!40000 ALTER TABLE `customer_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `volunteer_idx` int DEFAULT NULL,
  `user_idx` int DEFAULT NULL,
  `contents` text,
  `created_at` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `is_delete` tinyint DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,5,'adafffmzmcvmz','2023-11-08 11:15:50','2023-11-08 11:59:55',0,'2023-11-08 11:17:03',1);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_img`
--

DROP TABLE IF EXISTS `review_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_img` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `review_idx` int DEFAULT NULL,
  `url` text,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_img`
--

LOCK TABLES `review_img` WRITE;
/*!40000 ALTER TABLE `review_img` DISABLE KEYS */;
INSERT INTO `review_img` VALUES (1,9,'4c9986feb0c06ac46ca3096bc3731b7609e9c8b4bc94afc4442486eb7173e989.jpg'),(2,10,'f1c317c9407cda68d86cb46c2c15b04a7694cc9acb020a0634e4252955b58d15.jpg'),(3,11,'9217e7b99dd4bc554d45d81643463c01c7c3b520254d4f7177ff9ec71cdfe956.jpg'),(4,12,'d9f44d0b18247ae13347edf1fad8aca28f8a9ceebe8433eff2512f4a7b3e431d.jpg'),(5,13,'dadf758ab51f64bf3c0ec35ef35c47a694ea796d0e1d056d6bb2739cfd2a7f64.jpg'),(6,1,'9e7ef98aa7de9bcb4c61940e57c39b96f423c56ca33ca8e9fd7e1c1d0d28276f.jpg'),(7,1,'9a160b7c4458c774dcf3c385db5b9aa7f3ea32302a1ae6edbbe714df2e9ef6d0.jpg');
/*!40000 ALTER TABLE `review_img` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'admin@sori','ba6e89a1687ecec9e285334ec603395c179e22640a9a8c57db54fa0ebbb8d8eb56f7ebc16c8961569750ce4b9f5bf0ff90072cc9fcc35f5b19514e3516fc33dd','testAPINickname','John Smith','01012341234',0,'2023-09-14 15:07:41','2023-09-30 14:16:48',4,'api address test','api test address detail','device_id test','2023-09-14 15:07:41','2023-10-09 06:16:20',0),(32,'lanos5019@naver.com_del',NULL,'네이버 권경민','네이버 권경민 수정','01034659425',1,'2023-10-09 06:02:48','2023-10-09 07:21:03',3,'인천','ㅁㅇㄹㄴ','device_id test','2023-10-09 06:02:48','2023-10-09 07:20:45',0),(33,'kkmnormal@normal.com','73941847d9611927275d93139981ee78316de50bc51bf398f8ccdd778c7723f370cb252c5293c085ec3c6a3d185246837ed71d651a679cb680793581ad77ac24','testAPINickname','asdf','01012341234',0,'2023-10-09 06:27:57',NULL,4,'api address test','ㅁㄴㄹㅇ','device_id test','2023-10-09 06:27:57','2023-10-09 07:06:04',0),(34,'lanos5019@naver.com_del',NULL,'카카오 이름','카카오 네이버','ㄴㅁㅇ러리ㅓ',1,'2023-10-09 07:06:50','2023-10-09 07:23:53',2,'인천 우','ㅁㄴㅇㄹ','device_id test','2023-10-09 07:06:50','2023-10-09 07:23:51',0),(35,'lanos5019@naver.com_del',NULL,'qwer','권경민','+821034659425',1,'2023-10-09 07:21:33','2023-10-12 16:22:14',3,'인천, ㅌ테스트 상세주소','asasdf','he','2023-10-09 07:21:33','2023-10-12 16:22:10',0),(36,'lanos5019@naver.com_del',NULL,'qwe','권 경민','qwr',1,'2023-10-09 07:24:11','2023-10-09 07:25:54',2,'qwer','qwe','he','2023-10-09 07:24:11','2023-10-09 07:25:51',0),(37,'lanos5019@naver.com_del',NULL,'testAPINickname','testname','01012341234',1,'2023-10-09 07:26:23','2023-10-09 07:30:53',2,'api address test','api test address detail','device_id test','2023-10-09 07:26:23','2023-10-09 07:30:50',0),(38,'lanos5019@naver.com',NULL,'qwe','권 경민','qer',0,'2023-10-09 07:31:19',NULL,2,'qwer','수정했어용~','he','2023-10-09 07:31:19','2023-10-09 09:36:13',1),(39,'kmkkkp@naver.com',NULL,'kmk','김민규','+821062427087',0,'2023-10-09 09:44:45',NULL,3,'경기도 수원시','월드컵로 207 아주대학교 구학생회관 308호','he','2023-10-09 09:44:45','2023-11-05 09:50:28',1),(40,'kmk@normal','98d60d8da2a85323a6b350bfb6b67719c1f06444be5beb9d47b371a3a914aaefb47a7f4e8a9d3ddb1220c7ae141ad6391b23b5477a4bc0b9cdefc17404b3e603','kmk','kmk','01062427087',0,'2023-10-09 11:43:53',NULL,4,'kmk','kmk','he','2023-10-09 11:43:53','2023-10-09 11:43:53',1),(41,'lanos5019@naver.com',NULL,'네이버 권경민','권경민','+821034659425',0,'2023-10-12 16:22:37',NULL,3,'인천, ㅌ테스트 상세주소','수정된 우리집','he','2023-10-12 16:22:37','2023-10-15 06:35:04',1),(42,'kmkkkp@ajou.ac.kr',NULL,'kmk99714','김민규','010-6242-7087',0,'2023-11-27 17:03:23',NULL,1,'경기도 용인시','동백 2로 12 4309동 1701호','he','2023-11-27 17:03:23','2023-11-27 17:03:23',1),(43,'kmk99714@gmail.com',NULL,'밍쿼고래','김민규','010-6242-7087',0,'2023-11-27 17:10:13',NULL,2,'경기도 수원시','월드컵로 206 아주대학교 팔달관 111호','he','2023-11-27 17:10:13','2023-11-27 17:10:13',1),(44,'ljgggg@naver.com',NULL,'jiji','이진근','000-0000-1234',0,'2023-11-27 17:22:36',NULL,2,'hjhh55','jnjjj','he','2023-11-27 17:22:36','2023-11-27 17:38:44',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteer_img`
--

DROP TABLE IF EXISTS `volunteer_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunteer_img` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `volunteer_idx` int DEFAULT NULL,
  `url` text,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer_img`
--

LOCK TABLES `volunteer_img` WRITE;
/*!40000 ALTER TABLE `volunteer_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `volunteer_img` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer_join`
--

LOCK TABLES `volunteer_join` WRITE;
/*!40000 ALTER TABLE `volunteer_join` DISABLE KEYS */;
INSERT INTO `volunteer_join` VALUES (1,5,1,NULL,0,NULL,'2023-11-21 07:15:12',0,NULL),(2,41,2,NULL,0,NULL,'2023-11-21 07:20:55',0,NULL),(3,39,3,NULL,0,NULL,'2023-11-26 09:04:41',0,NULL),(4,39,4,NULL,0,NULL,'2023-11-26 09:27:17',0,NULL),(5,39,5,NULL,0,NULL,'2023-11-26 09:34:50',0,NULL),(6,39,6,NULL,0,NULL,'2023-11-26 09:37:26',0,NULL),(7,39,7,NULL,0,NULL,'2023-11-26 10:45:50',0,NULL),(8,39,8,NULL,0,NULL,'2023-11-26 10:49:04',0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteers`
--

LOCK TABLES `volunteers` WRITE;
/*!40000 ALTER TABLE `volunteers` DISABLE KEYS */;
INSERT INTO `volunteers` VALUES (1,1,'수채화 자화상 그리기','물감으로 자기 자신을 그려봐요!',5,'아주대학교 굳커피','address test','addresss detail','art',0,'2023-11-21 17:02:23','2023-11-21 07:15:12','2023-12-20 00:00:00',4,2,'2023-12-15 00:00:00',0),(2,1,'케이크 만들기','즐겁게 케이크를 함께 만들어 보아요!',41,'경기도 행복 복지관','경기도 행복 복지관','경기도 수원시 영통구 월드컵로206','cooking',0,'2023-11-21 17:18:35','2023-11-21 07:20:55','2023-12-12 00:00:00',12,3,'2023-12-01 00:00:00',0),(3,1,'샘터야학','한글 자음과 모음에 대하여 공부해 보아요!',39,'아주대학교 삼거리 샘터야학','경기도 수원시','월드컵로 206 아주대학교 구학생회관 308호','language',0,'2023-11-26 09:05:43','2023-11-26 09:04:41','2023-12-04 00:00:00',4,12,'2023-12-01 00:00:00',0),(4,1,'영어 기초','영어 알파벳마다 발음을 공부해 보아요!',39,'아주대학교 팔달관','경기도 수원시','월드컵로 206 아주대학교 구학생회관 308호','language',0,NULL,'2023-11-26 09:27:17','2023-12-23 00:00:00',2,6,'2023-12-16 00:00:00',0),(5,1,'수학 기초','초등하교 5학년 수준의 분수 덧셈 뺄셈에 대하여 공부해 보아요!',39,'아주대학교 구학생회관 308호','경기도 수원시','월드컵로 206 아주대학교 구학생회관 308호','knowledge',1,'2023-11-26 10:46:55','2023-11-26 09:34:50','2023-12-23 00:00:00',2,10,'2023-12-16 00:00:00',0),(6,1,'수학 기초','초등학교 6학년 수준의 곰셈나눗셈을 배워보아요',39,'아주대 삼거리 샘터야학','경기도 수원시','월드컵로 206 아주대학교','knowledge',1,'2023-11-26 10:46:43','2023-11-26 09:37:26','2023-12-23 00:00:00',3,8,'2023-12-16 00:00:00',0),(7,1,'수학 기초','초등 검정고시에 합격하기 위한 수학 기초 학습',39,'아주대학교 샘터야학','경기도 수원시','월드컵로 206 아주대학교 구학생회관 308호','knowledge',1,'2023-11-26 10:46:34','2023-11-26 10:45:50','2023-12-23 00:00:00',2,8,'2023-12-16 00:00:00',0),(8,1,'수학 기초','초등 검정고시 합격을 위해 사칙연산을 학습해 보아요!',39,'아주대 삼거리 샘터야학','경기도 수원시','월드컵로 206 아주대학교','knowledge',0,NULL,'2023-11-26 10:49:04','2023-12-23 00:00:00',2,8,'2023-12-16 00:00:00',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (3,5,1,'2023-11-01 17:11:01'),(19,39,2,'2023-11-11 07:28:45'),(20,39,1,'2023-11-12 06:39:38'),(27,39,13,'2023-11-21 12:53:35'),(28,39,14,'2023-11-21 13:54:08');
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

-- Dump completed on 2023-11-30  2:56:42
