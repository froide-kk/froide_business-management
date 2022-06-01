mysqldump: [Warning] Using a password on the command line interface can be insecure.
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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Wi2',0),(2,'アクセルラボ',0),(3,'FitureOne',0),(4,'結びや',0);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'sol1',0),(2,'sol2',0),(3,'sol3',0),(4,'管理部',0);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dev_period_phases`
--

DROP TABLE IF EXISTS `dev_period_phases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dev_period_phases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dev_period_phases`
--

LOCK TABLES `dev_period_phases` WRITE;
/*!40000 ALTER TABLE `dev_period_phases` DISABLE KEYS */;
INSERT INTO `dev_period_phases` VALUES (1,'要件分析',0),(2,'DB設計',0),(3,'基本設計',0),(4,'詳細設計',0),(5,'作成',0),(6,'テスト',0),(7,'結合・統合テスト',0),(8,'導入',0),(9,'システム結合',0);
/*!40000 ALTER TABLE `dev_period_phases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dev_periods`
--

DROP TABLE IF EXISTS `dev_periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dev_periods` (
  `work_detail_id` int DEFAULT NULL,
  `dev_period_id` int DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dev_periods`
--

LOCK TABLES `dev_periods` WRITE;
/*!40000 ALTER TABLE `dev_periods` DISABLE KEYS */;
/*!40000 ALTER TABLE `dev_periods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_skills`
--

DROP TABLE IF EXISTS `employee_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_skills` (
  `employee_id` int DEFAULT NULL,
  `skill_id` int DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_skills`
--

LOCK TABLES `employee_skills` WRITE;
/*!40000 ALTER TABLE `employee_skills` DISABLE KEYS */;
INSERT INTO `employee_skills` VALUES (1,1,0),(1,3,0),(1,4,0),(2,1,0),(2,3,0),(3,1,0),(3,3,0),(3,8,0),(4,1,0),(4,8,0);
/*!40000 ALTER TABLE `employee_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(254) DEFAULT NULL,
  `first_name` varchar(254) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `password_hash` int DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `management_flag` tinyint(1) DEFAULT '0',
  `department_id` int DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Adachi.K','アダチ','カズキ','kazuki-adachi@froide.co.jp',NULL,NULL,'2022-04-01',1,4,0,'2022-05-31 00:00:00',NULL),(2,'Izumi.M','イズミ','モトヤ','motoya-izumi@froide.co.jp',NULL,NULL,'2022-04-01',0,1,0,'2022-05-31 00:00:00',NULL),(3,'Nakashima.T','ナカシマ','タケル','takeru-nakashima@froide.co.jp',NULL,NULL,'2022-04-01',1,2,0,'2022-05-31 00:00:00',NULL),(4,'Yamaue.T','ヤマウエ','タマミ','tamami-yamaue@froide.co.jp',NULL,NULL,'2022-04-01',0,3,0,'2022-05-31 00:00:00',NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'ギガゾウ',1,0),(2,'Wi2 300',1,0),(3,'SpaceCore',2,0),(4,'InfiniOne Core',3,0),(5,'AI恋愛相性診断',4,0);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_attributes`
--

DROP TABLE IF EXISTS `skill_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_attributes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_attributes`
--

LOCK TABLES `skill_attributes` WRITE;
/*!40000 ALTER TABLE `skill_attributes` DISABLE KEYS */;
INSERT INTO `skill_attributes` VALUES (1,'OS',0),(2,'スクリプト・ツール',0),(3,'DB',0);
/*!40000 ALTER TABLE `skill_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `skill_attribute_id` int DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'macOS',1,0),(2,'Windows7',1,0),(3,'JAVA',2,0),(4,'JavaScript',2,0),(5,'PHP',2,0),(6,'C++',2,0),(7,'Oracle',3,0),(8,'MySQL',3,0);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_details`
--

DROP TABLE IF EXISTS `work_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_details` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_details`
--

LOCK TABLES `work_details` WRITE;
/*!40000 ALTER TABLE `work_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_histories`
--

DROP TABLE IF EXISTS `work_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_histories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `work_start` datetime DEFAULT NULL,
  `work_end` datetime DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_histories`
--

LOCK TABLES `work_histories` WRITE;
/*!40000 ALTER TABLE `work_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_histories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-01  1:45:27
