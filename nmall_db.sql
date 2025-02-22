-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: nanguomm.top    Database: hmall_db
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `oder_list`
--

DROP TABLE IF EXISTS `oder_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oder_list` (
  `oder_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_by` int NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_by` int DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`oder_id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `oder_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `oder_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `oder_list_chk_1` CHECK ((`del_flag` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oder_list`
--

LOCK TABLES `oder_list` WRITE;
/*!40000 ALTER TABLE `oder_list` DISABLE KEYS */;
INSERT INTO `oder_list` VALUES (1,1,1,1,0.00,0,'2024-12-03 12:27:54',1,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:43',0),(2,1,2,2,0.00,0,'2024-12-03 12:27:54',2,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:43',0),(3,2,3,1,0.00,0,'2024-12-03 12:27:54',4,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:43',0),(4,2,4,2,0.00,0,'2024-12-03 12:27:54',2,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:43',0),(5,3,5,1,0.00,0,'2024-12-03 12:27:54',4,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:43',0),(6,3,6,1,0.00,0,'2024-12-03 12:27:54',6,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:43',0),(7,4,7,3,0.00,0,'2024-12-03 12:27:54',4,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:44',0),(8,4,8,2,0.00,0,'2024-12-03 12:27:54',4,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:44',0),(9,5,9,1,0.00,0,'2024-12-03 12:27:54',4,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:44',0),(10,5,10,1,0.00,0,'2024-12-03 12:27:54',3,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:44',0),(11,6,11,5,0.00,0,'2024-12-03 12:27:54',3,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:44',0),(12,6,12,5,0.00,0,'2024-12-03 12:27:54',2,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:44',0),(13,7,13,3,0.00,0,'2024-12-03 12:27:54',2,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:44',0),(14,7,14,4,0.00,0,'2024-12-03 12:27:54',5,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:45',0),(15,8,2,2,0.00,0,'2024-12-03 12:27:54',2,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:45',0),(16,9,6,1,0.00,0,'2024-12-03 12:27:54',2,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:45',0),(17,10,9,1,0.00,0,'2024-12-03 12:27:54',1,'2024-12-03 12:27:54',NULL,'2024-12-05 09:30:45',0),(18,1,8,1,199.99,0,'2024-12-05 16:33:10',1,'2024-12-05 16:33:10',NULL,'2024-12-05 16:33:10',0),(19,1,8,1,199.99,1,'2024-12-05 16:46:13',1,'2024-12-05 16:46:13',NULL,'2024-12-05 16:46:13',0),(20,1,8,1,199.99,1,'2024-12-05 17:00:21',1,'2024-12-05 17:00:21',NULL,'2024-12-05 17:00:21',0),(21,1,8,1,199.99,1,'2024-12-05 17:03:27',1,'2024-12-05 17:03:27',NULL,'2024-12-05 17:03:27',0),(22,1,8,1,199.99,1,'2024-12-05 17:07:17',1,'2024-12-05 17:07:17',NULL,'2024-12-05 17:07:17',0),(23,1,8,1,199.99,1,'2024-12-05 17:08:42',1,'2024-12-05 17:08:42',NULL,'2024-12-05 17:08:42',0),(24,1,8,1,199.99,1,'2024-12-05 17:10:26',1,'2024-12-05 17:10:26',NULL,'2024-12-05 17:10:26',0),(25,1,25,1,349.99,1,'2024-12-06 02:10:01',1,'2024-12-06 02:10:01',NULL,'2024-12-06 02:10:01',0),(26,1,23,1,129.99,1,'2024-12-06 02:12:31',1,'2024-12-06 02:12:31',NULL,'2024-12-06 02:12:31',0),(27,1,15,1,77.43,1,'2024-12-25 09:29:56',1,'2024-12-25 09:29:56',NULL,'2024-12-25 09:29:56',0);
/*!40000 ALTER TABLE `oder_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_types` (
  `categories_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  `create_by` int NOT NULL DEFAULT '1',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_by` int DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`categories_id`),
  CONSTRAINT `product_types_chk_1` CHECK ((`del_flag` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
INSERT INTO `product_types` VALUES (1,'电子产品',1,'2024-12-03 12:27:54',NULL,'2024-12-05 09:13:47',0),(2,'手机',1,'2024-12-03 12:27:54',NULL,'2024-12-05 09:13:47',0),(3,'电脑',1,'2024-12-03 12:27:54',NULL,'2024-12-05 09:13:47',0),(4,'电视',1,'2024-12-03 12:27:54',NULL,'2024-12-05 09:13:47',0),(5,'家居用品',1,'2024-12-03 12:27:54',NULL,'2024-12-05 09:13:47',0),(6,'床上用品',1,'2024-12-03 12:27:54',NULL,'2024-12-05 09:13:47',0),(7,'厨房用品',1,'2024-12-03 12:27:54',NULL,'2024-12-05 09:13:48',0),(8,'食品',1,'2024-12-03 12:27:54',NULL,'2024-12-05 09:13:48',0),(9,'水果',1,'2024-12-03 12:27:54',NULL,'2024-12-05 09:13:48',0),(10,'零食',1,'2024-12-03 12:27:54',NULL,'2024-12-05 09:13:48',0);
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `categories_id` int NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_subtitle` varchar(1024) DEFAULT NULL,
  `product_unit_price` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `product_desc` varchar(1024) NOT NULL DEFAULT '一个有态度的商品',
  `product_image_url` varchar(1024) NOT NULL DEFAULT 'https://w.wallhaven.cc/full/vq/wallhaven-vqk8j5.jpg',
  `create_by` int NOT NULL DEFAULT '1',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_by` int DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_flag` tinyint(1) DEFAULT '0',
  `is_recommend` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `type_id` (`categories_id`),
  CONSTRAINT `PK_categories_id` FOREIGN KEY (`categories_id`) REFERENCES `product_types` (`categories_id`),
  CONSTRAINT `products_chk_1` CHECK ((`del_flag` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,2,'iPhone 15',NULL,7999.99,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:40:36',0,1),(2,2,'华为Mate 60',NULL,5999.99,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:43:16',0,1),(3,3,'MacBook Pro 14',NULL,14999.99,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:43:16',0,1),(4,3,'ThinkPad X280',NULL,7999.99,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:43:16',0,1),(5,4,'Sony 4K电视',NULL,4999.99,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:43:16',0,0),(6,4,'Samsung QLED 电视',NULL,8999.99,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:43:17',0,0),(7,6,'席梦思床垫',NULL,999.99,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:43:17',0,1),(8,6,'乳胶枕头',NULL,199.99,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:43:17',0,0),(9,7,'不锈钢锅具',NULL,299.99,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:43:17',0,0),(10,7,'空气炸锅',NULL,799.99,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:43:17',0,1),(11,8,'苹果',NULL,10.99,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:43:17',0,0),(12,8,'香蕉',NULL,5.99,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:43:17',0,0),(13,9,'薯片',NULL,15.99,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:43:18',0,0),(14,9,'巧克力',NULL,30.99,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:43:18',0,0),(15,6,'黑山羊',NULL,77.43,1,'一个有态度的商品','img/lx.jpg',1,'2024-12-03 12:27:54',NULL,'2024-12-05 12:43:18',0,1),(16,6,'飞跃者运动鞋',NULL,199.99,1,'舒适的运动鞋，轻松跑步','img/lx.jpg',1,'2024-12-03 13:05:10',NULL,'2024-12-05 12:43:18',0,1),(17,6,'全景相机',NULL,899.00,1,'超高清全景相机，拍摄每一个角落','img/lx.jpg',1,'2024-12-03 13:10:25',NULL,'2024-12-05 12:43:18',0,1),(18,6,'智能手表',NULL,499.99,1,'运动健康的好伴侣，智能手表随时佩戴','img/lx.jpg',1,'2024-12-03 14:00:12',NULL,'2024-12-05 12:43:18',0,1),(19,6,'无线耳机',NULL,149.99,1,'高保真音质，无线耳机畅享音乐','img/lx.jpg',1,'2024-12-03 14:30:45',NULL,'2024-12-05 12:43:18',0,1),(20,6,'运动背包',NULL,69.99,1,'结实耐用，适合跑步和骑行使用','img/lx.jpg',1,'2024-12-03 15:20:30',NULL,'2024-12-05 12:43:19',0,1),(21,6,'自拍杆',NULL,29.99,1,'轻便易用，随时拍照留念','img/lx.jpg',1,'2024-12-03 15:45:50',NULL,'2024-12-05 12:43:19',0,1),(22,6,'电动牙刷',NULL,199.00,1,'高效洁齿，保护牙齿健康','img/lx.jpg',1,'2024-12-03 16:10:15',NULL,'2024-12-05 12:43:19',0,1),(23,6,'健康秤',NULL,129.99,1,'智能健康秤，实时监控体重变化','img/lx.jpg',1,'2024-12-03 16:50:00',NULL,'2024-12-05 12:43:19',0,1),(24,6,'智能家居灯',NULL,99.99,1,'调节光线的智能家居灯，创造理想氛围','img/lx.jpg',1,'2024-12-03 17:00:25',NULL,'2024-12-05 12:43:19',0,1),(25,6,'无线吸尘器',NULL,349.99,1,'高效清洁，家庭必备清洁神器','img/lx.jpg',1,'2024-12-03 17:35:45',NULL,'2024-12-05 12:43:19',0,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '8',
  `user_id` int NOT NULL DEFAULT '1',
  `quantity` int NOT NULL DEFAULT '12',
  `price` decimal(10,2) NOT NULL DEFAULT '234.22',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `del_flag` int NOT NULL DEFAULT '0',
  `create_by` varchar(50) NOT NULL DEFAULT 'admin ',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(50) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (4,1,1,0,234.22,'2024-12-06 02:03:11',0,'admin ','2024-12-06 02:03:11',NULL,NULL),(5,0,1,0,234.22,'2024-12-06 02:09:17',0,'admin ','2024-12-06 02:09:17',NULL,NULL),(6,0,1,0,234.22,'2024-12-25 09:30:20',0,'admin ','2024-12-25 09:30:20',NULL,NULL);
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_pwd` varchar(255) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_tel` varchar(20) NOT NULL,
  `user_birthday` date NOT NULL DEFAULT '1989-08-09',
  `user_grade` int DEFAULT NULL,
  `create_by` int NOT NULL DEFAULT '1',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_by` int DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  CONSTRAINT `users_chk_1` CHECK ((`del_flag` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'adminpassword','admin@example.com','13900000000','1989-08-09',NULL,1,'2024-12-03 12:27:54',NULL,'2024-12-05 05:33:45',0),(2,'hashedpassword1','zhuzhu@example.com','13812345678','1989-08-09',NULL,1,'2024-12-03 12:27:54',NULL,'2024-12-05 05:33:45',0),(3,'hashedpassword2','liwei@example.com','13987654321','1989-08-09',NULL,1,'2024-12-03 12:27:54',NULL,'2024-12-05 05:33:45',0),(4,'hashedpassword3','johndoe@example.com','13598765432','1989-08-09',NULL,1,'2024-12-03 12:27:54',NULL,'2024-12-05 05:33:45',0),(5,'hashedpassword4','alice@example.com','13665432109','1989-08-09',NULL,1,'2024-12-03 12:27:54',NULL,'2024-12-05 05:33:45',0),(6,'hashedpassword5','bob@example.com','13712344321','1989-08-09',NULL,1,'2024-12-03 12:27:54',NULL,'2024-12-05 05:33:45',0),(7,'hashedpassword6','charlie@example.com','13876543210','1989-08-09',NULL,1,'2024-12-03 12:27:54',NULL,'2024-12-05 05:33:46',0),(8,'hashedpassword7','david@example.com','13987654320','1989-08-09',NULL,1,'2024-12-03 12:27:54',NULL,'2024-12-05 05:33:46',0),(9,'hashedpassword8','eve@example.com','13011223344','1989-08-09',NULL,1,'2024-12-03 12:27:54',NULL,'2024-12-05 05:33:46',0),(10,'hashedpassword9','frank@example.com','13122334455','1989-08-09',NULL,1,'2024-12-03 12:27:54',NULL,'2024-12-05 05:33:46',0),(11,'hashedpassword10','grace@example.com','13233445566','1989-08-09',NULL,1,'2024-12-03 12:27:54',NULL,'2024-12-05 05:33:46',0),(16,'123456','45454526@qq.com','17808323456','1989-08-09',NULL,1,'2024-12-06 02:30:13',NULL,'2024-12-06 02:30:13',0);
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

-- Dump completed on 2025-02-22 18:57:44
