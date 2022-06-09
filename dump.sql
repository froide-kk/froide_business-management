-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: Business-management
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `Companies`
--

DROP TABLE IF EXISTS `Companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Companies`
--

LOCK TABLES `Companies` WRITE;
/*!40000 ALTER TABLE `Companies` DISABLE KEYS */;
INSERT INTO `Companies` VALUES (1,'Wi2',0),(2,'アクセルラボ',0),(3,'FitureOne',0),(4,'結びや',0);
/*!40000 ALTER TABLE `Companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Departments`
--

DROP TABLE IF EXISTS `Departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departments`
--

LOCK TABLES `Departments` WRITE;
/*!40000 ALTER TABLE `Departments` DISABLE KEYS */;
INSERT INTO `Departments` VALUES (1,'sol1',0),(2,'sol2',0),(3,'sol3',0),(4,'管理部',0),(5,'新人',0);
/*!40000 ALTER TABLE `Departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dev_period_phases`
--

DROP TABLE IF EXISTS `Dev_period_phases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dev_period_phases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dev_period_phases`
--

LOCK TABLES `Dev_period_phases` WRITE;
/*!40000 ALTER TABLE `Dev_period_phases` DISABLE KEYS */;
INSERT INTO `Dev_period_phases` VALUES (1,'要件分析',0),(2,'DB設計',0),(3,'基本設計',0),(4,'詳細設計',0),(5,'作成',0),(6,'テスト',0),(7,'結合・統合テスト',0),(8,'導入',0),(9,'システム結合',0);
/*!40000 ALTER TABLE `Dev_period_phases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dev_periods`
--

DROP TABLE IF EXISTS `Dev_periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dev_periods` (
  `work_detail_id` int DEFAULT NULL,
  `dev_period_phases_id` int DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dev_periods`
--

LOCK TABLES `Dev_periods` WRITE;
/*!40000 ALTER TABLE `Dev_periods` DISABLE KEYS */;
INSERT INTO `Dev_periods` VALUES (1,1,0,1),(1,2,0,2),(1,3,0,3),(1,4,0,4),(1,5,0,5),(2,1,0,6),(2,2,0,7),(2,4,0,8),(2,7,0,9),(2,6,0,10);
/*!40000 ALTER TABLE `Dev_periods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee_skills`
--

DROP TABLE IF EXISTS `Employee_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee_skills` (
  `employee_id` int DEFAULT NULL,
  `skill_id` int DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  `skill_level` varchar(3) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee_skills`
--

LOCK TABLES `Employee_skills` WRITE;
/*!40000 ALTER TABLE `Employee_skills` DISABLE KEYS */;
INSERT INTO `Employee_skills` VALUES (1,1,0,'○',1),(1,3,0,'○',2),(1,4,0,'△',3),(2,1,0,'○',4),(2,3,0,'△',5),(3,1,0,'○',6),(3,3,0,'○',7),(3,8,0,'○',8),(4,1,0,'△',9),(4,8,0,'○',10);
/*!40000 ALTER TABLE `Employee_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `last_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `first_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password_hash` int DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `management_flag` tinyint(1) DEFAULT '0',
  `department_id` int DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `license` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `final_education` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1,'Adachi.K','アダチ','カズキ','kazuki-adachi@froide.co.jp',NULL,'1999-11-06','2022-04-01',1,4,0,'2022-05-31 00:00:00',NULL,'基本情報技術者','専門学校','福岡県'),(2,'Izumi.M','イズミ','モトヤ','motoya-izumi@froide.co.jp',NULL,'1999-10-14','2022-04-01',0,1,0,'2022-05-31 00:00:00',NULL,'ITパスポート','専門学校','福岡県'),(3,'Nakashima.T','タケル','ナカシマ','takeru-nakashima@froide.co.jp',NULL,'1999-12-03','2022-04-01',1,2,0,'2022-05-31 00:00:00',NULL,'基本情報技術者','大学','福岡県'),(4,'Yamaue.T','ヤマウエ','タマミ','tamami-yamaue@froide.co.jp',NULL,'1999-05-25','2022-04-01',0,3,0,'2022-05-31 00:00:00',NULL,'ITパスポート','大学','福岡県'),(5,'Itadori.Y','イタドリ','ユウジ','yuji-itadori@froide.co.jp',NULL,'2003-03-20','2020-04-01',0,5,0,'2022-06-06 00:00:00',NULL,'宿儺','高等専門学校','東京都'),(6,'Fushiguro.M','フシグロ','メグミ','megumi-fushiguro@froide.co.jp',NULL,'2002-12-22','2020-04-01',0,5,0,'2022-06-06 00:00:00',NULL,'玉犬','高等専門学校','東京都'),(7,'Kugisaki.N','クギサキ','ノバラ','nobara-kugisaki@froide.co.jp',NULL,'2002-08-07','2020-04-01',0,5,0,'2022-06-06 00:00:00',NULL,'ピコピコハンマー','高等専門学校','東京都'),(8,'Gojo.S','ゴジョウ','サトル','satoru-gojo@froide.co.jp',NULL,'1989-12-07','2015-04-01',0,4,0,'2022-06-06 00:00:00',NULL,'無量空処','高等専門学校','東京都'),(9,'Ookotu.Y','オッコツ','ユウタ','yuta-ookotu@froide.co.jp',NULL,'2001-03-07','2019-04-01',0,1,0,'2022-06-06 00:00:00',NULL,'','高等専門学校','東京都'),(10,'Hanagaki.T','ハナガキ','タケミチ','takemichi^hanagaki@froide.co.jp',NULL,'1991-06-25','2019-04-01',0,2,0,'2022-06-06 00:00:00',NULL,'タイムリープ','高等専門学校','東京都'),(11,'Sano.M','サノ','マンジロウ','mannjiro-sano@froide.co.jp',NULL,'1990-08-20','2018-04-01',0,2,0,'2022-06-06 00:00:00',NULL,'東京卍','高等専門学校','東京都'),(12,'Ryuguji.K','リュウグウジ','ケン','ken-ryuguji@froide.co.jp',NULL,'1990-05-10','2018-04-01',0,2,0,'2022-06-06 00:00:00',NULL,'ドラケン','高等専門学校','東京都'),(13,'Baji.K','バジ','ケイスケ','keisuke-baji@froide.co.jp',NULL,'1990-11-03','2018-04-01',0,3,0,'2022-06-06 00:00:00',NULL,'ゴキ','高等専門学校','東京都'),(14,'Matsuno.T','マツノ','チフユ','chifuyu-matsuno@froide.co.jp',NULL,'1991-12-19','2019-04-01',0,3,0,'2022-06-06 00:00:00',NULL,'ゴキ','高等専門学校','東京都'),(15,'Mirsuya.T','ミツヤ','タカシ','takashi-mitsuya@froide.co.jp',NULL,'1990-06-12','2018-04-01',0,3,0,'2022-06-06 00:00:00',NULL,'インパルス','高等専門学校','東京都'),(16,'Tenma.T','テンマ','ツカサ','tsukasa-tenma@froide.co.jp',NULL,'2005-05-17','2022-04-01',0,2,0,'2022-06-06 00:00:00',NULL,'基本情報技術者','高等専門学校','東京都'),(17,'Otori.E','オオトリ','エム','emu-otori@froide.co.jp',NULL,'2006-09-09','2022-04-01',0,2,0,'2022-06-06 00:00:00',NULL,'ITパスポート','高等専門学校','東京都'),(18,'Kusanagi.N','クサナギ','ネネ','nene-kusanagi@froide.co.jp',NULL,'2006-07-20','2022-04-01',0,1,0,'2022-06-06 00:00:00',NULL,'ITパスポート','高等専門学校','東京都'),(19,'Kamishiro.R','カミシロ','ルイ','rui-kamishiro@froide.co.jp',NULL,'2005-06-24','2022-04-01',0,1,0,'2022-06-06 00:00:00',NULL,'応用情報技術者','高等専門学校','東京都'),(20,'Yoisaki.K','ヨイサキ','カナデ','kanade-yoisaki@froide.co.jp',NULL,'2005-02-10','2022-04-01',0,3,0,'2022-06-06 00:00:00',NULL,'ITパスポート','高等専門学校','東京都'),(21,'Asahina.M','アサヒナ','マフユ','mafuyu-asahina@froide.co.jp',NULL,'2005-01-27','2022-04-01',0,2,0,'2022-06-06 00:00:00',NULL,'基本情報技術者','高等専門学校','東京都'),(22,'Shinonome.E','シノノメ','エナ','ena-shinonome@froide.co.jp',NULL,'2005-04-30','2022-04-01',0,2,0,'2022-06-06 00:00:00',NULL,'応用情報技術者','高等専門学校','東京都'),(23,'Akiyama.M','アキヤマ','ミズキ','mizuki-akiyama@froide.co.jp',NULL,'2006-08-27','2022-04-01',0,3,0,'2022-06-06 00:00:00',NULL,'ITパスポート','高等専門学校','東京都');
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Projects`
--

DROP TABLE IF EXISTS `Projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Projects`
--

LOCK TABLES `Projects` WRITE;
/*!40000 ALTER TABLE `Projects` DISABLE KEYS */;
INSERT INTO `Projects` VALUES (1,'ギガゾウ',1,0),(2,'Wi2 300',1,0),(3,'SpaceCore',2,0),(4,'InfiniOne Core',3,0),(5,'AI恋愛相性診断',4,0);
/*!40000 ALTER TABLE `Projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Skill_attributes`
--

DROP TABLE IF EXISTS `Skill_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Skill_attributes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Skill_attributes`
--

LOCK TABLES `Skill_attributes` WRITE;
/*!40000 ALTER TABLE `Skill_attributes` DISABLE KEYS */;
INSERT INTO `Skill_attributes` VALUES (1,'OS',0),(2,'スクリプト・ツール',0),(3,'DB',0);
/*!40000 ALTER TABLE `Skill_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Skills`
--

DROP TABLE IF EXISTS `Skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `skill_attribute_id` int DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Skills`
--

LOCK TABLES `Skills` WRITE;
/*!40000 ALTER TABLE `Skills` DISABLE KEYS */;
INSERT INTO `Skills` VALUES (1,'macOS',1,0),(2,'Windows7',1,0),(3,'JAVA',2,0),(4,'JavaScript',2,0),(5,'PHP',2,0),(6,'C++',2,0),(7,'Oracle',3,0),(8,'MySQL',3,0);
/*!40000 ALTER TABLE `Skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Work_details`
--

DROP TABLE IF EXISTS `Work_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Work_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `work_history_id` int DEFAULT NULL,
  `industry` varchar(256) DEFAULT NULL,
  `system_sum` varchar(256) DEFAULT NULL,
  `system_details` varchar(256) DEFAULT NULL,
  `role` varchar(256) DEFAULT NULL,
  `dev_scale` varchar(256) DEFAULT NULL,
  `dev_environment` varchar(256) DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Work_details`
--

LOCK TABLES `Work_details` WRITE;
/*!40000 ALTER TABLE `Work_details` DISABLE KEYS */;
INSERT INTO `Work_details` VALUES (1,1,'IT企業','WIFI開発','ギガゾウシステムの開発','PG','10人以下','Java　MySQL HTML',0),(2,2,'ITコンサルタント','SpaceCore','デバイスとの接続','PM','10人以下','Swift Nuxt.js React.js Ruby',0);
/*!40000 ALTER TABLE `Work_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Work_histories`
--

DROP TABLE IF EXISTS `Work_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Work_histories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `work_start` date DEFAULT NULL,
  `work_end` date DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Work_histories`
--

LOCK TABLES `Work_histories` WRITE;
/*!40000 ALTER TABLE `Work_histories` DISABLE KEYS */;
INSERT INTO `Work_histories` VALUES (1,3,'2021-06-01','2022-06-06',2,0),(2,1,'2020-05-06','2022-06-06',1,0);
/*!40000 ALTER TABLE `Work_histories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-08 23:59:29
