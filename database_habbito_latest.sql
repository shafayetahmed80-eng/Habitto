-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ninico
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'nDx5Cg9V90kHuDGVzFTx1kG4SySxzV4g',1,'2025-10-20 17:05:48','2025-10-20 17:05:48','2025-10-20 17:05:48');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `action_label` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
INSERT INTO `admin_notifications` VALUES (1,'New order #SF-10000003','View','/admin/ecommerce/orders/edit/3','Tanvir Ahmed ordered 1 product(s)',NULL,'2026-10-25 23:21:02','2026-10-25 23:21:02',''),(2,'Confirm payment #SF-10000003','View','/admin/ecommerce/orders/edit/3','Order #SF-10000003 Payment was confirmed (amount ৳ 719 ) by admin',NULL,'2026-10-30 10:40:35','2026-10-30 10:40:35','');
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT 1,
  `tablet_image` varchar(191) DEFAULT NULL,
  `mobile_image` varchar(191) DEFAULT NULL,
  `ads_type` varchar(191) DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Oversized Streetwear <br> Heavyweight Tees','2027-10-21 00:06:01',NULL,'IYHICPADQD5X','products/habitto-streetwear-shoot-1.jpg','/product-categories/oversized-t-shirts',0,1,'published','2025-10-20 17:06:01','2026-10-26 00:28:15',1,NULL,NULL,NULL,NULL),(2,'Winter Fleece <br> Premium Hoodies','2030-10-21 00:06:01',NULL,'R4YAV9FECJUS','products/habitto-streetwear-shoot-2.jpg','/product-categories/winter-wear',0,2,'published','2025-10-20 17:06:01','2026-10-26 00:28:15',1,NULL,NULL,NULL,NULL),(3,'Vintage Acid Wash & <br> Oversized Collection','2030-10-21 00:06:01',NULL,'QPTCBJBOJOSY','products/habitto-streetwear-shoot-4.jpg','/product-categories/acid-wash-t-shirts',0,3,'published','2025-10-20 17:06:01','2026-11-01 08:00:15',1,NULL,NULL,NULL,NULL),(4,'Winter Heavy Fleece <br> Hoodies & Drops','2026-10-21 00:06:01',NULL,'T2VFLDYYIJEH','products/habitto-streetwear-shoot-2.jpg','/product-categories/winter-wear',0,4,'published','2025-10-20 17:06:01','2026-11-01 08:00:15',1,NULL,NULL,NULL,NULL),(5,'New Modern & Stylist <br> Crafts','2028-10-21 00:06:01',NULL,'JO7LLJHFH1RO','banners/banner-03-01.jpg','/products',0,5,'published','2025-10-20 17:06:01','2025-10-20 17:06:01',1,NULL,NULL,NULL,NULL),(6,'Lamp <br> Collections','2029-10-21 00:06:01',NULL,'L8GDJUBVD2TQ','banners/banner-03-02.jpg','/products',0,6,'published','2025-10-20 17:06:01','2025-10-20 17:06:01',1,NULL,NULL,NULL,NULL),(7,'Minimal Chair','2029-10-21 00:06:01',NULL,'PXJPAXLOCVRS','banners/banner-03-03.jpg','/products',0,7,'published','2025-10-20 17:06:01','2025-10-20 17:06:01',1,NULL,NULL,NULL,NULL),(8,'100% Fresh Product <br> Every Hour','2026-10-21 00:06:01',NULL,'EMRCINED6AX9','sliders/slider-05-banner-1.jpg','/products',0,8,'published','2025-10-20 17:06:01','2025-10-20 17:06:01',1,NULL,NULL,NULL,NULL),(9,'100% Fresh Product <br> Every Hour','2027-10-21 00:06:01',NULL,'JVMDAIB9HO2I','sliders/slider-05-banner-1.jpg','/products',0,9,'published','2025-10-20 17:06:01','2025-10-20 17:06:01',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ads_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `tablet_image` varchar(191) DEFAULT NULL,
  `mobile_image` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT 0,
  `action_label` varchar(60) DEFAULT NULL,
  `action_url` varchar(400) DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT 0,
  `dismissible` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Free Delivery Offer','<strong>Welcome to Habbito! Enjoy free delivery all over Bangladesh on orders over ৳২,০০০</strong>',1,'Shop Now','/products',0,1,'2025-10-21 00:06:43',NULL,1,'2025-10-20 17:06:43','2026-10-25 21:52:40'),(2,'New Drop Alert','<strong>New Streetwear Drop: Premium Oversized & Acid Wash Tees are now live!</strong>',1,'Explore Drop','/product-categories/oversized-t-shirts',0,1,'2025-10-21 00:06:43',NULL,1,'2025-10-20 17:06:43','2026-10-25 21:52:40'),(3,'Cash on Delivery Nationwide','<strong>100% Cash On Delivery available across Bangladesh (Inside Dhaka ৳৭০, Outside ৳১৩০)</strong>',1,'Order Now','/products',0,1,'2025-10-21 00:06:43',NULL,1,'2025-10-20 17:06:43','2026-10-25 21:52:40');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) NOT NULL,
  `announcements_id` bigint(20) unsigned NOT NULL,
  `content` text DEFAULT NULL,
  `action_label` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_type` varchar(191) DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) NOT NULL,
  `request` longtext DEFAULT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `actor_id` bigint(20) unsigned NOT NULL,
  `actor_type` varchar(191) DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint(20) unsigned NOT NULL,
  `reference_name` varchar(191) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
INSERT INTO `audit_histories` VALUES (1,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Geovany Kiehn','info','2026-10-25 11:24:04','2026-10-25 11:24:04'),(2,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Geovany Kiehn','info','2026-10-25 18:57:22','2026-10-25 18:57:22'),(3,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Geovany Kiehn','info','2026-10-30 10:17:40','2026-10-30 10:17:40'),(4,1,'Botble\\ACL\\Models\\User','of the system','[]','logged out','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Geovany Kiehn','info','2026-10-30 10:19:56','2026-10-30 10:19:56'),(5,1,'Botble\\ACL\\Models\\User','from the admin panel',NULL,'logged out','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Geovany Kiehn','info','2026-10-30 10:19:56','2026-10-30 10:19:56'),(6,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Geovany Kiehn','info','2026-10-30 10:32:13','2026-10-30 10:32:13'),(7,1,'Botble\\ACL\\Models\\User','user','{\"_method\":\"PUT\",\"first_name\":\"Ratul\",\"last_name\":\"Kiehn\",\"email\":\"admin@admin.com\",\"phone\":\"01889151058\"}','has updated his profile','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Kiehn','primary','2026-10-30 10:35:13','2026-10-30 10:35:13'),(8,1,'Botble\\ACL\\Models\\User','user','{\"_method\":\"PUT\",\"first_name\":\"Ratul\",\"last_name\":\"Kiehn\",\"email\":\"admin@admin.com\",\"phone\":\"01889151058\"}','has updated his profile','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Kiehn','primary','2026-10-30 10:35:16','2026-10-30 10:35:16'),(9,1,'Botble\\ACL\\Models\\User','user','{\"_method\":\"PUT\",\"first_name\":\"Ratul\",\"last_name\":\"Ahmed\",\"email\":\"admin@admin.com\",\"phone\":\"01889151058\"}','has updated his profile','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','primary','2026-10-30 10:39:37','2026-10-30 10:39:37'),(10,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-10-30 10:49:03','2026-10-30 10:49:03'),(11,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Symfony','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-10-30 10:49:17','2026-10-30 10:49:17'),(12,1,'Botble\\ACL\\Models\\User','of the system','[]','logged out','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-10-30 11:28:44','2026-10-30 11:28:44'),(13,1,'Botble\\ACL\\Models\\User','from the admin panel',NULL,'logged out','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-10-30 11:28:44','2026-10-30 11:28:44'),(14,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-10-30 11:36:19','2026-10-30 11:36:19'),(15,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-10-30 23:00:05','2026-10-30 23:00:05'),(16,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-10-31 02:23:00','2026-10-31 02:23:00'),(17,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-10-31 11:25:06','2026-10-31 11:25:06'),(18,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-10-31 21:18:59','2026-10-31 21:18:59'),(19,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-11-01 00:43:42','2026-11-01 00:43:42'),(20,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-11-01 05:51:59','2026-11-01 05:51:59'),(21,1,'Botble\\ACL\\Models\\User','product','{\"name\":\"Classic Light Blue Oxford Cotton Long Sleeve Shirt\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"slug\":\"classic-light-blue-oxford-cotton-long-sleeve-shirt\",\"slug_id\":\"397\",\"is_slug_editable\":\"1\",\"sku\":\"HBT-SH-03\",\"description\":\"<p>\\u0985\\u09ab\\u09bf\\u09b8 \\u0993 \\u09ab\\u09b0\\u09ae\\u09be\\u09b2 \\u09ae\\u09bf\\u099f\\u09bf\\u0982\\u09df\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09cb\\u0997\\u09c0 \\u099f\\u09c1-\\u09aa\\u09cd\\u09b2\\u09be\\u0987 \\u09e7\\u09e6\\u09e6% \\u0985\\u0995\\u09cd\\u09b8\\u09ab\\u09cb\\u09b0\\u09cd\\u09a1 \\u0995\\u099f\\u09a8 \\u09b6\\u09be\\u09b0\\u09cd\\u099f\\u0964<\\/p>\",\"content\":\"<div class=\\\"product-description-wrapper\\\" style=\\\"font-size:15px;line-height:1.8;\\\"><p>\\u0985\\u09ab\\u09bf\\u09b8 \\u0993 \\u09ab\\u09b0\\u09ae\\u09be\\u09b2 \\u09ae\\u09bf\\u099f\\u09bf\\u0982\\u09df\\u09c7\\u09b0 \\u099c\\u09a8\\u09cd\\u09af \\u0989\\u09aa\\u09af\\u09cb\\u0997\\u09c0 \\u099f\\u09c1-\\u09aa\\u09cd\\u09b2\\u09be\\u0987 \\u09e7\\u09e6\\u09e6% \\u0985\\u0995\\u09cd\\u09b8\\u09ab\\u09cb\\u09b0\\u09cd\\u09a1 \\u0995\\u099f\\u09a8 \\u09b6\\u09be\\u09b0\\u09cd\\u099f\\u0964<\\/p><h5 class=\\\"fw-bold mt-4 mb-2 text-dark\\\">\\u09ab\\u09c7\\u09ac\\u09cd\\u09b0\\u09bf\\u0995 \\u0993 \\u09b8\\u09cd\\u09aa\\u09c7\\u09b8\\u09bf\\u09ab\\u09bf\\u0995\\u09c7\\u09b6\\u09a8:<\\/h5><ul class=\\\"ps-3 mb-3\\\"><li><strong>Fabric:<\\/strong> 100% Two-Ply Combed Oxford Weave Cotton<\\/li><li><strong>Brand:<\\/strong> Habitto BD<\\/li><li><strong>Fit:<\\/strong> Contemporary Smart \\/ Relaxed Fit<\\/li><li><strong>Origin:<\\/strong> Made in Bangladesh<\\/li><\\/ul><h5 class=\\\"fw-bold mt-3 mb-2 text-dark\\\">\\u0993\\u09df\\u09be\\u09b6 \\u0993 \\u09af\\u09a4\\u09cd\\u09a8 (Wash Care):<\\/h5><p class=\\\"text-muted\\\">\\u09ae\\u09c7\\u09b6\\u09bf\\u09a8 \\u0993\\u09df\\u09be\\u09b6\\u0964 \\u0995\\u09b2\\u09be\\u09b0 \\u0993 \\u0995\\u09be\\u09ab\\u09c7 \\u09b8\\u09a0\\u09bf\\u0995\\u09ad\\u09be\\u09ac\\u09c7 \\u0986\\u09df\\u09b0\\u09a8 \\u0995\\u09b0\\u09c1\\u09a8\\u0964<\\/p><div class=\\\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\\\"><span class=\\\"small\\\">\\u09b8\\u09be\\u09b0\\u09be \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7 \\u0995\\u09cd\\u09af\\u09be\\u09b6 \\u0985\\u09a8 \\u09a1\\u09c7\\u09b2\\u09bf\\u09ad\\u09be\\u09b0\\u09bf \\u09b9\\u09cb\\u09ae \\u09a1\\u09c7\\u09b2\\u09bf\\u09ad\\u09be\\u09b0\\u09bf \\u0993 \\u09ed \\u09a6\\u09bf\\u09a8\\u09c7\\u09b0 \\u09b8\\u09b9\\u099c \\u09b8\\u09be\\u0987\\u099c \\u098f\\u0995\\u09cd\\u09b8\\u099a\\u09c7\\u099e\\u09cd\\u099c \\u09b8\\u09c1\\u09ac\\u09bf\\u09a7\\u09be!<\\/span><\\/div><\\/div>\",\"images\":[null,\"products\\/hbt-oxford-blue.jpg\"],\"product_type\":\"physical\",\"specification_table_id\":null,\"variation_default_id\":\"127\",\"botble-ecommerce-tables-product-variation-table-160_length\":\"10\",\"attribute_sets\":[\"1\"],\"has_product_options\":\"1\",\"related_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"draft\",\"is_featured\":\"1\",\"categories\":[\"13\",\"14\"],\"image\":\"products\\/hbt-oxford-blue.jpg\",\"minimum_order_quantity\":\"0\",\"maximum_order_quantity\":\"0\",\"tag\":null,\"submitter\":\"apply\"}','updated','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',160,'Classic Light Blue Oxford Cotton Long Sleeve Shirt','primary','2026-11-01 06:34:00','2026-11-01 06:34:00'),(22,11,'Botble\\Ecommerce\\Models\\Customer','an account',NULL,'registered','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',11,'Botble\\Ecommerce\\Models\\Customer',11,'Shojib Ahmed','info','2026-11-01 09:44:41','2026-11-01 09:44:41'),(23,11,'Botble\\Ecommerce\\Models\\Customer','to the customer portal',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',11,'Botble\\Ecommerce\\Models\\Customer',11,'Shojib Ahmed','info','2026-11-01 09:44:41','2026-11-01 09:44:41'),(24,11,'Botble\\Ecommerce\\Models\\Customer','from the customer portal',NULL,'logged out','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',11,'Botble\\Ecommerce\\Models\\Customer',11,'Shojib Ahmed','info','2026-11-01 09:54:51','2026-11-01 09:54:51'),(25,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-11-01 22:55:09','2026-11-01 22:55:09'),(26,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-11-02 02:48:32','2026-11-02 02:48:32'),(27,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-11-03 00:17:02','2026-11-03 00:17:02'),(28,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-11-08 01:07:08','2026-11-08 01:07:08'),(29,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-11-09 10:23:01','2026-11-09 10:23:01'),(30,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-11-09 21:30:55','2026-11-09 21:30:55'),(31,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-11-12 06:32:57','2026-11-12 06:32:57'),(32,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-11-14 11:24:29','2026-11-14 11:24:29'),(33,1,'Botble\\ACL\\Models\\User','to the system',NULL,'logged in','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','127.0.0.1',1,'Botble\\ACL\\Models\\User',1,'Ratul Ahmed','info','2026-11-19 07:39:51','2026-11-19 07:39:51');
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) unsigned DEFAULT NULL,
  `author_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Fuga velit qui exercitationem voluptatem animi fugiat. Dolores non et mollitia voluptates et. Quidem et aliquid tempore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2025-10-20 17:05:52','2025-10-20 17:05:52'),(2,'Fashion',0,'Eveniet quis suscipit inventore delectus. Molestias beatae est in dolor. Ea rerum mollitia cumque quia. Iusto veniam quisquam qui debitis natus deleniti.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-10-20 17:05:52','2025-10-20 17:05:52'),(3,'Electronic',0,'Officia ipsa voluptatem totam commodi. Sed nam eligendi neque et enim. Deleniti architecto illum est quam. Beatae in repellat quidem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-10-20 17:05:52','2025-10-20 17:05:52'),(4,'Commercial',0,'Assumenda omnis harum qui totam. Tenetur dicta et quia alias eius quibusdam. Quam quasi enim quibusdam corporis et velit nulla. Ut similique quas totam atque fugit suscipit laborum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-10-20 17:05:52','2025-10-20 17:05:52');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `categories_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `state_id` bigint(20) unsigned DEFAULT NULL,
  `country_id` bigint(20) unsigned DEFAULT NULL,
  `record_id` varchar(40) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`),
  KEY `idx_cities_name` (`name`),
  KEY `idx_cities_state_status` (`state_id`,`status`),
  KEY `idx_cities_status` (`status`),
  KEY `idx_cities_state_id` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=684 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (620,'ঢাকা (Dhaka)','dhaka',73,1,NULL,0,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(621,'গাজীপুর (Gazipur)','gazipur',73,1,NULL,1,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(622,'নারায়ণগঞ্জ (Narayanganj)','narayanganj',73,1,NULL,2,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(623,'টাঙ্গাইল (Tangail)','tangail',73,1,NULL,3,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(624,'কিশোরগঞ্জ (Kishoreganj)','kishoreganj',73,1,NULL,4,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(625,'মানিকগঞ্জ (Manikganj)','manikganj',73,1,NULL,5,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(626,'মুন্সীগঞ্জ (Munshiganj)','munshiganj',73,1,NULL,6,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(627,'নরসিংদী (Narsingdi)','narsingdi',73,1,NULL,7,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(628,'ফরিদপুর (Faridpur)','faridpur',73,1,NULL,8,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(629,'গোপালগঞ্জ (Gopalganj)','gopalganj',73,1,NULL,9,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(630,'মাদারীপুর (Madaripur)','madaripur',73,1,NULL,10,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(631,'রাজবাড়ী (Rajbari)','rajbari',73,1,NULL,11,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(632,'শরীয়তপুর (Shariatpur)','shariatpur',73,1,NULL,12,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(633,'চট্টগ্রাম (Chittagong)','chittagong',74,1,NULL,1,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(634,'কক্সবাজার (Cox\'s Bazar)','coxs-bazar',74,1,NULL,2,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(635,'কুমিল্লা (Comilla)','comilla',74,1,NULL,3,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(636,'ফেনী (Feni)','feni',74,1,NULL,4,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(637,'ব্রাহ্মণবাড়িয়া (Brahmanbaria)','brahmanbaria',74,1,NULL,5,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(638,'নোয়াখালী (Noakhali)','noakhali',74,1,NULL,6,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(639,'চাঁদপুর (Chandpur)','chandpur',74,1,NULL,7,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(640,'লক্ষ্মীপুর (Lakshmipur)','lakshmipur',74,1,NULL,8,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(641,'রাঙ্গামাটি (Rangamati)','rangamati',74,1,NULL,9,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(642,'খাগড়াছড়ি (Khagrachhari)','khagrachhari',74,1,NULL,10,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(643,'বান্দরবান (Bandarban)','bandarban',74,1,NULL,11,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(644,'রাজশাহী (Rajshahi)','rajshahi',75,1,NULL,1,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(645,'বগুড়া (Bogra)','bogra',75,1,NULL,2,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(646,'পাবনা (Pabna)','pabna',75,1,NULL,3,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(647,'সিরাজগঞ্জ (Sirajganj)','sirajganj',75,1,NULL,4,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(648,'নওগাঁ (Naogaon)','naogaon',75,1,NULL,5,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(649,'নাটোর (Natore)','natore',75,1,NULL,6,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(650,'চাঁপাইনবাবগঞ্জ (Chapai Nawabganj)','chapai-nawabganj',75,1,NULL,7,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(651,'জয়পুরহাট (Joypurhat)','joypurhat',75,1,NULL,8,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(652,'খুলনা (Khulna)','khulna',76,1,NULL,1,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(653,'যশোর (Jessore)','jessore',76,1,NULL,2,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(654,'কুষ্টিয়া (Kushtia)','kushtia',76,1,NULL,3,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(655,'ঝিনাইদহ (Jhenaidah)','jhenaidah',76,1,NULL,4,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(656,'সাতক্ষীরা (Satkhira)','satkhira',76,1,NULL,5,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(657,'বাগেরহাট (Bagerhat)','bagerhat',76,1,NULL,6,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(658,'চুয়াডাঙ্গা (Chuadanga)','chuadanga',76,1,NULL,7,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(659,'মেহেরপুর (Meherpur)','meherpur',76,1,NULL,8,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(660,'মাগুরা (Magura)','magura',76,1,NULL,9,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(661,'নড়াইল (Narail)','narail',76,1,NULL,10,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(662,'বরিশাল (Barisal)','barisal',77,1,NULL,1,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(663,'পটুয়াখালী (Patuakhali)','patuakhali',77,1,NULL,2,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(664,'ভোলা (Bhola)','bhola',77,1,NULL,3,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(665,'পিরোজপুর (Pirojpur)','pirojpur',77,1,NULL,4,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(666,'বরগুনা (Barguna)','barguna',77,1,NULL,5,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(667,'ঝালকাঠি (Jhalokati)','jhalokati',77,1,NULL,6,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(668,'সিলেট (Sylhet)','sylhet',78,1,NULL,1,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(669,'মৌলভীবাজার (Moulvibazar)','moulvibazar',78,1,NULL,2,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(670,'হবিগঞ্জ (Habiganj)','habiganj',78,1,NULL,3,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(671,'সুনামগঞ্জ (Sunamganj)','sunamganj',78,1,NULL,4,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(672,'রংপুর (Rangpur)','rangpur',79,1,NULL,1,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(673,'দিনাজপুর (Dinajpur)','dinajpur',79,1,NULL,2,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(674,'গাইবান্ধা (Gaibandha)','gaibandha',79,1,NULL,3,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(675,'কুড়িগ্রাম (Kurigram)','kurigram',79,1,NULL,4,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(676,'লালমনিরহাট (Lalmonirhat)','lalmonirhat',79,1,NULL,5,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(677,'নীলফামারী (Nilphamari)','nilphamari',79,1,NULL,6,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(678,'পঞ্চগড় (Panchagarh)','panchagarh',79,1,NULL,7,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(679,'ঠাকুরগাঁও (Thakurgaon)','thakurgaon',79,1,NULL,8,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(680,'ময়মনসিংহ (Mymensingh)','mymensingh',80,1,NULL,1,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(681,'জামালপুর (Jamalpur)','jamalpur',80,1,NULL,2,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(682,'নেত্রকোণা (Netrokona)','netrokona',80,1,NULL,3,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL),(683,'শেরপুর (Sherpur)','sherpur',80,1,NULL,4,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37',NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) NOT NULL,
  `cities_id` bigint(20) unsigned NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`),
  KEY `idx_cities_trans_city_lang` (`cities_id`,`lang_code`),
  KEY `idx_cities_trans_name` (`name`),
  KEY `idx_cities_trans_cities_id` (`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint(20) unsigned NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint(20) unsigned NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  `placeholder` varchar(191) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint(20) unsigned NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `placeholder` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `contact_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` longtext NOT NULL,
  `custom_fields` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `nationality` varchar(120) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_countries_name` (`name`),
  KEY `idx_countries_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Bangladesh','Bangladesh',0,NULL,0,'published','2026-11-01 08:55:12','2026-11-01 08:55:12','BD');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) NOT NULL,
  `countries_id` bigint(20) unsigned NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `nationality` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`),
  KEY `idx_countries_trans_country_lang` (`countries_id`,`lang_code`),
  KEY `idx_countries_trans_name` (`name`),
  KEY `idx_countries_trans_countries_id` (`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `settings` text DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `widget_id` bigint(20) unsigned NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
INSERT INTO `dashboard_widgets` VALUES (1,'widget_total_1','2026-10-25 11:24:05','2026-10-25 11:24:05'),(2,'widget_total_2','2026-10-25 11:24:05','2026-10-25 11:24:05'),(3,'widget_total_3','2026-10-25 11:24:05','2026-10-25 11:24:05'),(4,'widget_total_4','2026-10-25 11:24:05','2026-10-25 11:24:05'),(5,'widget_total_themes','2026-10-25 11:24:05','2026-10-25 11:24:05'),(6,'widget_total_users','2026-10-25 11:24:05','2026-10-25 11:24:05'),(7,'widget_total_plugins','2026-10-25 11:24:05','2026-10-25 11:24:05'),(8,'widget_total_pages','2026-10-25 11:24:05','2026-10-25 11:24:05'),(9,'widget_posts_recent','2026-10-25 11:24:05','2026-10-25 11:24:05'),(10,'widget_audit_logs','2026-10-25 11:24:05','2026-10-25 11:24:05'),(11,'widget_ecommerce_report_general','2026-10-25 11:24:06','2026-10-25 11:24:06');
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(191) NOT NULL,
  `platform` varchar(191) DEFAULT NULL,
  `app_version` varchar(191) DEFAULT NULL,
  `device_id` varchar(191) DEFAULT NULL,
  `user_type` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_token_unique` (`token`),
  KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  KEY `device_tokens_is_active_index` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_abandoned_carts`
--

DROP TABLE IF EXISTS `ec_abandoned_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_abandoned_carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `session_id` varchar(191) DEFAULT NULL,
  `cart_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`cart_data`)),
  `total_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `items_count` int(11) NOT NULL DEFAULT 0,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `abandoned_at` timestamp NULL DEFAULT NULL,
  `reminder_sent_at` timestamp NULL DEFAULT NULL,
  `reminders_sent` int(11) NOT NULL DEFAULT 0,
  `is_recovered` tinyint(1) NOT NULL DEFAULT 0,
  `recovered_at` timestamp NULL DEFAULT NULL,
  `recovered_order_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_abandoned_carts_abandoned_at_is_recovered_index` (`abandoned_at`,`is_recovered`),
  KEY `ec_abandoned_carts_created_at_is_recovered_index` (`created_at`,`is_recovered`),
  KEY `ec_abandoned_carts_customer_id_index` (`customer_id`),
  KEY `ec_abandoned_carts_session_id_index` (`session_id`),
  KEY `ec_abandoned_carts_email_index` (`email`),
  KEY `ec_abandoned_carts_recovered_order_id_index` (`recovered_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_abandoned_carts`
--

LOCK TABLES `ec_abandoned_carts` WRITE;
/*!40000 ALTER TABLE `ec_abandoned_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_abandoned_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_brands_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) NOT NULL,
  `instance` varchar(60) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `is_prefix_symbol` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `decimals` tinyint(3) unsigned DEFAULT 0,
  `number_format_style` varchar(50) NOT NULL DEFAULT 'western',
  `space_between_price_and_currency` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(10) unsigned DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'BDT','৳',1,0,'western',1,0,1,1,'2026-10-25 12:45:16','2026-10-25 12:45:16');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Della Champlin','customer@botble.com','+18303823375','TJ','Mississippi','Faheyton','8570 Lewis Locks Apt. 311',1,1,'2025-10-20 17:06:37','2025-10-20 17:06:37','12835'),(2,'Della Champlin','customer@botble.com','+14132705424','PK','New Hampshire','Paigehaven','81404 Berge Locks Apt. 108',1,0,'2025-10-20 17:06:37','2025-10-20 17:06:37','95221'),(3,'Kamren Hauck II','john.smith@botble.com','+18185609299','MK','New Jersey','Kubberg','11909 Larson Lodge',2,1,'2025-10-20 17:06:37','2025-10-20 17:06:37','52489'),(4,'Kamren Hauck II','john.smith@botble.com','+13517383136','CN','South Carolina','Tremainemouth','20070 Corbin Motorway',2,0,'2025-10-20 17:06:37','2025-10-20 17:06:37','94125'),(5,'Catherine Cormier','asia63@example.org','+17578024973','LR','Pennsylvania','New Mike','5624 Blick Corners Apt. 496',3,1,'2025-10-20 17:06:37','2025-10-20 17:06:37','26498-9758'),(6,'Rowena Windler','fbartoletti@example.com','+15419553549','SH','New Jersey','Alisonstad','9954 Denesik Drive',4,1,'2025-10-20 17:06:37','2025-10-20 17:06:37','56751'),(7,'Lennie Parker','rita90@example.org','+19099421035','BH','Texas','Brooketon','699 Kali Extension',5,1,'2025-10-20 17:06:38','2025-10-20 17:06:38','26553'),(8,'Hal Willms','wade.schaefer@example.net','+18204400864','AS','Wyoming','North Ofeliatown','968 Alden Ramp Apt. 458',6,1,'2025-10-20 17:06:38','2025-10-20 17:06:38','01907-0061'),(9,'Dr. Chelsie Beahan','ellis62@example.net','+17405014690','SD','California','Port Declanton','6709 Cartwright Loaf',7,1,'2025-10-20 17:06:38','2025-10-20 17:06:38','42782-9099'),(10,'Larry Jaskolski I','gaston.hirthe@example.com','+15402598150','MP','New Jersey','Brekkefurt','315 Kassulke Rapids',8,1,'2025-10-20 17:06:39','2025-10-20 17:06:39','02249'),(11,'Chaim Cremin','alford81@example.net','+19152860831','MZ','Pennsylvania','New Joyceland','707 Nelle Throughway',9,1,'2025-10-20 17:06:39','2025-10-20 17:06:39','35959'),(12,'Breanne Dare DDS','zgraham@example.net','+15309811267','CK','Nebraska','Rickyville','673 Margaretta Parkways',10,1,'2025-10-20 17:06:39','2025-10-20 17:06:39','31244');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `customer_phone` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `token` varchar(191) NOT NULL,
  `verification_code` varchar(6) DEFAULT NULL,
  `code_expires_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'activated',
  `private_notes` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Della Champlin','customer@botble.com','$2y$12$zQUylXzwmco2v0tOfWfIHu1JekjkyXELLYwAgUaaaZCo3SdVRcVTS','customers/5.jpg','1983-10-05','+19253024550',NULL,'2025-10-20 17:06:37','2025-10-20 17:06:37','2025-10-21 00:06:37',NULL,'activated',NULL),(2,'Kamren Hauck II','john.smith@botble.com','$2y$12$cRAY/cIEZQEMdagu9kGY/O1A0vuguKhYhL0Co/cs.3l3PnAZb/xHa','customers/9.jpg','1982-10-04','+14705298763',NULL,'2025-10-20 17:06:37','2025-10-20 17:06:37','2025-10-21 00:06:37',NULL,'activated',NULL),(3,'Catherine Cormier','asia63@example.org','$2y$12$57YLsLIROu1F0.2MbavQG.QRQtrq5oa2miQbL.YjgdVvZw0Y/McEm','customers/1.jpg','1990-09-30','+15639124724',NULL,'2025-10-20 17:06:37','2025-10-20 17:06:37','2025-10-21 00:06:37',NULL,'activated',NULL),(4,'Rowena Windler','fbartoletti@example.com','$2y$12$UKxk/gT8M0ujqcXlOz347e2GYm3B4QMKIxJpHW81.uUeHxSRiALem','customers/2.jpg','1992-09-28','+14015567268',NULL,'2025-10-20 17:06:37','2025-10-20 17:06:37','2025-10-21 00:06:37',NULL,'activated',NULL),(5,'Lennie Parker','rita90@example.org','$2y$12$dt6EkiV3XoDtabv.KbZmJ.fsZicce.9tnnG4HL7OlTf1Ty90zX0FS','customers/3.jpg','1996-10-06','+16298732740',NULL,'2025-10-20 17:06:38','2025-10-20 17:06:38','2025-10-21 00:06:38',NULL,'activated',NULL),(6,'Hal Willms','wade.schaefer@example.net','$2y$12$wvCQz9s99Y9Ifq71a/a6SuCOgtDiE.O2FI4rEjo.DCdJBx9jeatCK','customers/4.jpg','1984-09-25','+18566136826',NULL,'2025-10-20 17:06:38','2025-10-20 17:06:38','2025-10-21 00:06:38',NULL,'activated',NULL),(7,'Dr. Chelsie Beahan','ellis62@example.net','$2y$12$NLH4f8nsvC6Pqt2f7m0BE.ruzzW1pkyv49USn1d/81DlpHQBCVoqW','customers/5.jpg','1997-10-09','+18562035250',NULL,'2025-10-20 17:06:38','2025-10-20 17:06:38','2025-10-21 00:06:38',NULL,'activated',NULL),(8,'Larry Jaskolski I','gaston.hirthe@example.com','$2y$12$xWw6lbKEsbbCDmQwFRENpuQ4jaEVO//DKfa.tvovh9CwxbEKXxmma','customers/6.jpg','1988-10-12','+14708738071',NULL,'2025-10-20 17:06:39','2025-10-20 17:06:39','2025-10-21 00:06:39',NULL,'activated',NULL),(9,'Chaim Cremin','alford81@example.net','$2y$12$xAKcYnfE7TpcIVd4EwU9RuJMOxhRqhNf4gXQ8WDjaoS1/CxplSba2','customers/7.jpg','1993-10-14','+15418535032',NULL,'2025-10-20 17:06:39','2025-10-20 17:06:39','2025-10-21 00:06:39',NULL,'activated',NULL),(10,'Breanne Dare DDS','zgraham@example.net','$2y$12$h68AVMo8XLK8He1kxF/7n.FhU/rx23ZLjqurJ0i4JfVslk.qPizc2','customers/8.jpg','2003-10-03','+12766277750',NULL,'2025-10-20 17:06:39','2025-10-20 17:06:39','2025-10-21 00:06:39',NULL,'activated',NULL),(11,'Shojib Ahmed','bnzax78@gmail.com','$2y$12$SJvr2HPw0s5rxYmDbpogguDvfy.2rLwHNd6Yytxpou39UfSiPzS/6',NULL,NULL,'+8801674936203',NULL,'2026-11-01 09:44:41','2026-11-01 09:44:41','2026-11-01 15:44:41',NULL,'activated',NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint(20) unsigned NOT NULL,
  `product_category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint(20) unsigned NOT NULL,
  `product_collection_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) unsigned NOT NULL DEFAULT 0,
  `value` double DEFAULT NULL,
  `type` varchar(60) DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT 0,
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT 0,
  `discount_on` varchar(20) DEFAULT NULL,
  `product_quantity` int(10) unsigned DEFAULT NULL,
  `type_option` varchar(100) NOT NULL DEFAULT 'amount',
  `target` varchar(100) NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT 0,
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT NULL,
  `sold` int(10) unsigned NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,550,50,28);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Habitto Streetwear Drop Offer','2026-11-25 06:28:15','published','2026-10-26 00:28:15','2026-10-26 00:28:15');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_flash_sales_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint(20) unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext DEFAULT NULL COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int(11) NOT NULL DEFAULT 9999,
  `affect_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2025-10-20 17:06:03','2025-10-20 17:06:03'),(2,1,'2 Year',10,9999,0,'2025-10-20 17:06:03','2025-10-20 17:06:03'),(3,1,'3 Year',20,9999,0,'2025-10-20 17:06:03','2025-10-20 17:06:03'),(4,2,'4GB',0,9999,0,'2025-10-20 17:06:03','2025-10-20 17:06:03'),(5,2,'8GB',10,9999,0,'2025-10-20 17:06:03','2025-10-20 17:06:03'),(6,2,'16GB',20,9999,0,'2025-10-20 17:06:03','2025-10-20 17:06:03'),(7,3,'Core i5',0,9999,0,'2025-10-20 17:06:03','2025-10-20 17:06:03'),(8,3,'Core i7',10,9999,0,'2025-10-20 17:06:03','2025-10-20 17:06:03'),(9,3,'Core i9',20,9999,0,'2025-10-20 17:06:03','2025-10-20 17:06:03'),(10,4,'128GB',0,9999,0,'2025-10-20 17:06:03','2025-10-20 17:06:03'),(11,4,'256GB',10,9999,0,'2025-10-20 17:06:03','2025-10-20 17:06:03'),(12,4,'512GB',20,9999,0,'2025-10-20 17:06:03','2025-10-20 17:06:03');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_global_option_value_id` bigint(20) unsigned NOT NULL,
  `option_value` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-10-20 17:06:03','2025-10-20 17:06:03'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-10-20 17:06:03','2025-10-20 17:06:03'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-10-20 17:06:03','2025-10-20 17:06:03'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2025-10-20 17:06:03','2025-10-20 17:06:03');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_global_options_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) unsigned NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `reference_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `qty` int(10) unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT 0.00,
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',19,'Black Oversize Stone Acid Wash T-Shirt',NULL,'products/habitto-acid-wash-1.png',1,590.00,590.00,59.00,0.00,649.00,'{\"image\":\"products\\/habitto-acid-wash-1.png\",\"attributes\":\"(Size: S)\",\"taxRate\":10,\"taxClasses\":{\"VAT\":10},\"options\":[],\"extras\":[],\"sku\":\"HB-AW-001-S\",\"weight\":null,\"price_includes_tax\":false}','2026-10-25 23:13:30','2026-10-25 23:13:30'),(2,2,'Botble\\Ecommerce\\Models\\Product',19,'Black Oversize Stone Acid Wash T-Shirt',NULL,'products/habitto-acid-wash-1.png',1,590.00,590.00,59.00,0.00,649.00,'{\"image\":\"products\\/habitto-acid-wash-1.png\",\"attributes\":\"(Size: S)\",\"taxRate\":10,\"taxClasses\":{\"VAT\":10},\"options\":[],\"extras\":[],\"sku\":\"HB-AW-001-S\",\"weight\":null,\"price_includes_tax\":false}','2026-10-25 23:20:28','2026-10-25 23:20:28'),(3,3,'Botble\\Ecommerce\\Models\\Product',72,'Classic Black Tipped Collar Polo Shirt',NULL,'products/hbt-polo-black.jpg',1,790.00,790.00,79.00,0.00,869.00,'{\"image\":\"products\\/hbt-polo-black.jpg\",\"attributes\":\"(Size: M)\",\"taxRate\":10,\"taxClasses\":{\"VAT\":10},\"options\":[],\"extras\":[],\"sku\":\"HBT-PL-02-M\",\"weight\":null,\"price_includes_tax\":false}','2026-11-01 10:22:18','2026-11-01 10:22:18'),(4,3,'Botble\\Ecommerce\\Models\\Product',108,'Washed Black Relaxed Crewneck Sweatshirt',NULL,'products/hbt-sweatshirt-black.jpg',1,1050.00,1050.00,0.00,0.00,1050.00,'{\"image\":\"products\\/hbt-sweatshirt-black.jpg\",\"attributes\":\"(Size: M)\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"HBT-SW-02-M\",\"weight\":null,\"price_includes_tax\":false}','2026-11-01 10:22:18','2026-11-01 10:22:18');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) NOT NULL,
  `reference_id` bigint(20) unsigned NOT NULL,
  `code` varchar(191) NOT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `company_logo` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `customer_phone` varchar(191) DEFAULT NULL,
  `customer_address` varchar(191) DEFAULT NULL,
  `customer_country` varchar(191) DEFAULT NULL,
  `customer_state` varchar(191) DEFAULT NULL,
  `customer_city` varchar(191) DEFAULT NULL,
  `customer_zip_code` varchar(191) DEFAULT NULL,
  `customer_address_line` varchar(191) DEFAULT NULL,
  `customer_tax_id` varchar(191) DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT 0.00,
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT 0.00,
  `payment_fee` decimal(15,2) DEFAULT 0.00,
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT 0.00,
  `shipping_option` varchar(60) DEFAULT NULL,
  `shipping_method` varchar(60) NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) DEFAULT NULL,
  `discount_description` varchar(191) DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text DEFAULT NULL,
  `payment_id` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',2,'INV-1','Tanvir Ahmed','',NULL,'tanvir.ahmed@habitto.com','01712345678','House 14, Road 5, Dhanmondi, Dhaka, Dhaka, Dhaka, BD',NULL,NULL,NULL,NULL,NULL,NULL,590.00,59.00,70.00,0.00,0.00,'1','default',NULL,NULL,719.00,'Please deliver in afternoon. Call before delivery.',1,'pending',NULL,'2026-10-25 23:13:24','2026-10-25 23:13:30'),(2,'Botble\\Ecommerce\\Models\\Order',3,'INV-2','Tanvir Ahmed','',NULL,'tanvir.ahmed@habitto.com','01712345678','House 14, Road 5, Dhanmondi, Dhaka, Dhaka, Dhaka, BD',NULL,NULL,NULL,NULL,NULL,NULL,590.00,59.00,70.00,0.00,0.00,'1','default',NULL,NULL,719.00,'Please deliver in afternoon. Call before delivery.',2,'pending',NULL,'2026-10-25 23:20:25','2026-10-25 23:20:28'),(3,'Botble\\Ecommerce\\Models\\Order',8,'INV-3','Ahmed','',NULL,NULL,'01674936203','Narandia Bazar, টাঙ্গাইল (Tangail), ঢাকা (Dhaka)',NULL,NULL,NULL,NULL,NULL,NULL,1840.00,79.00,70.00,0.00,0.00,'1','default',NULL,NULL,1989.00,NULL,4,'pending',NULL,'2026-11-01 09:35:41','2026-11-01 10:22:18');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_option_value` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint(20) unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext DEFAULT NULL COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int(11) NOT NULL DEFAULT 9999,
  `affect_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_option_value_id` bigint(20) unsigned NOT NULL,
  `option_value` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) DEFAULT NULL COMMENT 'option type',
  `product_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 9999,
  `required` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_options_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `type` varchar(60) NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_addresses_order_id_type_unique` (`order_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Tanvir Ahmed','01712345678','tanvir.ahmed@habitto.com','BD','Dhaka','Dhaka','House 14, Road 5, Dhanmondi, Dhaka',2,NULL,'shipping_address'),(2,'Tanvir Ahmed','01712345678','tanvir.ahmed@habitto.com','BD','Dhaka','Dhaka','House 14, Road 5, Dhanmondi, Dhaka',3,NULL,'shipping_address'),(3,'Ahmed','01674936203',NULL,'BD','73','623','Narandia Bazar',8,NULL,'shipping_address'),(4,'ahmed','01674936203',NULL,'BD','73','623','Adabari',9,NULL,'shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `extras` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_payment_page','Order was created from checkout page',NULL,2,NULL,'2026-10-25 23:13:30','2026-10-25 23:13:30'),(2,'create_order_from_payment_page','Order was created from checkout page',NULL,3,NULL,'2026-10-25 23:20:28','2026-10-25 23:20:28'),(3,'create_order','New order #SF-10000003 from Tanvir Ahmed',NULL,3,NULL,'2026-10-25 23:21:03','2026-10-25 23:21:03'),(4,'confirm_payment','Payment was confirmed (amount ৳ 719 ) by %user_name%',1,3,NULL,'2026-10-30 10:40:37','2026-10-30 10:40:37'),(5,'create_order_from_payment_page','Order was created from checkout page',NULL,8,NULL,'2026-11-01 10:22:18','2026-11-01 10:22:18');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT 0.00,
  `options` text DEFAULT NULL,
  `product_options` text DEFAULT NULL COMMENT 'product option data',
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `product_name` varchar(191) NOT NULL,
  `product_image` varchar(191) DEFAULT NULL,
  `weight` double DEFAULT 0,
  `restock_quantity` int(10) unsigned DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) NOT NULL DEFAULT 'physical',
  `times_downloaded` int(11) NOT NULL DEFAULT 0,
  `license_code` text DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,590.00,59.00,'{\"image\":\"products\\/habitto-acid-wash-1.png\",\"attributes\":\"(Size: S)\",\"taxRate\":10,\"taxClasses\":{\"VAT\":10},\"options\":[],\"extras\":[],\"sku\":\"HB-AW-001-S\",\"weight\":null,\"price_includes_tax\":false}','[]',19,'Black Oversize Stone Acid Wash T-Shirt','products/habitto-acid-wash-1.png',0.01,0,'2026-10-25 23:11:50','2026-10-25 23:11:50','physical',0,NULL,NULL),(3,2,1,590.00,59.00,'{\"image\":\"products\\/habitto-acid-wash-1.png\",\"attributes\":\"(Size: S)\",\"taxRate\":10,\"taxClasses\":{\"VAT\":10},\"options\":[],\"extras\":[],\"sku\":\"HB-AW-001-S\",\"weight\":null,\"price_includes_tax\":false}','[]',19,'Black Oversize Stone Acid Wash T-Shirt','products/habitto-acid-wash-1.png',NULL,0,'2026-10-25 23:13:30','2026-10-25 23:13:30','physical',0,NULL,NULL),(5,3,1,590.00,59.00,'{\"image\":\"products\\/habitto-acid-wash-1.png\",\"attributes\":\"(Size: S)\",\"taxRate\":10,\"taxClasses\":{\"VAT\":10},\"options\":[],\"extras\":[],\"sku\":\"HB-AW-001-S\",\"weight\":null,\"price_includes_tax\":false}','[]',19,'Black Oversize Stone Acid Wash T-Shirt','products/habitto-acid-wash-1.png',NULL,0,'2026-10-25 23:20:28','2026-10-25 23:20:28','physical',0,NULL,NULL),(6,4,1,990.00,0.00,'{\"image\":\"products\\/hbt-sweatshirt-ash.jpg\",\"attributes\":\"(Size: M)\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"HBT-SW-01-M\",\"weight\":null,\"price_includes_tax\":false}','[]',102,'Ash Grey Drop-Shoulder French Terry Sweatshirt','products/hbt-sweatshirt-ash.jpg',0.01,0,'2026-11-01 02:22:01','2026-11-01 02:22:01','physical',0,NULL,NULL),(7,5,1,790.00,79.00,'{\"image\":\"products\\/hbt-polo-black.jpg\",\"attributes\":\"(Size: M)\",\"taxRate\":10,\"taxClasses\":{\"VAT\":10},\"options\":[],\"extras\":[],\"sku\":\"HBT-PL-02-M\",\"weight\":null,\"price_includes_tax\":false}','[]',72,'Classic Black Tipped Collar Polo Shirt','products/hbt-polo-black.jpg',0.01,0,'2026-11-01 08:20:18','2026-11-01 08:20:18','physical',0,NULL,NULL),(8,6,1,990.00,0.00,'{\"image\":\"products\\/hbt-sweatshirt-ash.jpg\",\"attributes\":\"(Size: M)\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"HBT-SW-01-M\",\"weight\":null,\"price_includes_tax\":false}','[]',102,'Ash Grey Drop-Shoulder French Terry Sweatshirt','products/hbt-sweatshirt-ash.jpg',0.01,0,'2026-11-01 08:56:03','2026-11-01 08:56:03','physical',0,NULL,NULL),(9,7,1,750.00,75.00,'{\"image\":\"products\\/hbt-polo-navy.jpg\",\"attributes\":\"(Size: M)\",\"taxRate\":10,\"taxClasses\":{\"VAT\":10},\"options\":[],\"extras\":[],\"sku\":\"HBT-PL-01-M\",\"weight\":null,\"price_includes_tax\":false}','[]',66,'Navy Blue Pique Knit Polo T-Shirt','products/hbt-polo-navy.jpg',0.01,0,'2026-11-01 09:22:53','2026-11-01 09:22:53','physical',0,NULL,NULL),(11,9,1,590.00,0.00,'{\"image\":\"products\\/hbt-graphic-cyber.jpg\",\"attributes\":\"(Size: M)\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"HBT-TS-01-M\",\"weight\":null,\"price_includes_tax\":false}','[]',168,'Acid Wash Tokyo Cyberpunk Oversized T-Shirt','products/hbt-graphic-cyber.jpg',0.01,0,'2026-11-01 09:51:02','2026-11-01 09:51:02','physical',0,NULL,NULL),(12,8,1,790.00,79.00,'{\"image\":\"products\\/hbt-polo-black.jpg\",\"attributes\":\"(Size: M)\",\"taxRate\":10,\"taxClasses\":{\"VAT\":10},\"options\":[],\"extras\":[],\"sku\":\"HBT-PL-02-M\",\"weight\":null,\"price_includes_tax\":false}','[]',72,'Classic Black Tipped Collar Polo Shirt','products/hbt-polo-black.jpg',NULL,0,'2026-11-01 10:22:18','2026-11-01 10:22:18','physical',0,NULL,NULL),(13,8,1,1050.00,0.00,'{\"image\":\"products\\/hbt-sweatshirt-black.jpg\",\"attributes\":\"(Size: M)\",\"taxRate\":0,\"taxClasses\":[],\"options\":[],\"extras\":[],\"sku\":\"HBT-SW-02-M\",\"weight\":null,\"price_includes_tax\":false}','[]',108,'Washed Black Relaxed Crewneck Sweatshirt','products/hbt-sweatshirt-black.jpg',NULL,0,'2026-11-01 10:22:18','2026-11-01 10:22:18','physical',0,NULL,NULL);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) DEFAULT NULL,
  `landing_domain` varchar(191) DEFAULT NULL,
  `landing_page` varchar(191) DEFAULT NULL,
  `landing_params` varchar(191) DEFAULT NULL,
  `referral` varchar(191) DEFAULT NULL,
  `gclid` varchar(191) DEFAULT NULL,
  `fclid` varchar(191) DEFAULT NULL,
  `utm_source` varchar(191) DEFAULT NULL,
  `utm_campaign` varchar(191) DEFAULT NULL,
  `utm_medium` varchar(191) DEFAULT NULL,
  `utm_term` varchar(191) DEFAULT NULL,
  `utm_content` varchar(191) DEFAULT NULL,
  `referrer_url` text DEFAULT NULL,
  `referrer_domain` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
INSERT INTO `ec_order_referrals` VALUES (1,'127.0.0.1','127.0.0.1','products/black-oversize-stone-acid-wash-t-shirt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2026-10-25 23:11:50','2026-10-25 23:11:50'),(2,'127.0.0.1','127.0.0.1','products/black-oversize-stone-acid-wash-t-shirt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2026-10-25 23:13:24','2026-10-25 23:13:24'),(3,'127.0.0.1','127.0.0.1','products/black-oversize-stone-acid-wash-t-shirt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2026-10-25 23:20:25','2026-10-25 23:20:25'),(4,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'2026-11-01 02:22:01','2026-11-01 02:22:01'),(5,'192.168.0.104','0.0.0.0','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,'2026-11-01 08:20:18','2026-11-01 08:20:18'),(6,'192.168.0.104','0.0.0.0','checkout/53dcf775bae4214fe418c0e0fa5d7b08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,'2026-11-01 08:56:03','2026-11-01 08:56:03'),(7,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'2026-11-01 09:22:53','2026-11-01 09:22:53'),(8,'127.0.0.1','127.0.0.1','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,'2026-11-01 09:35:41','2026-11-01 09:35:41'),(9,'192.168.0.104','0.0.0.0','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,'2026-11-01 09:51:02','2026-11-01 09:51:02');
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `order_return_id` bigint(20) unsigned NOT NULL,
  `action` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `reason` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint(20) unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint(20) unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint(20) unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) NOT NULL,
  `product_image` varchar(191) DEFAULT NULL,
  `qty` int(11) NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text DEFAULT NULL COMMENT 'Reason return order',
  `order_status` varchar(191) DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `company_name` varchar(120) NOT NULL,
  `company_address` varchar(191) NOT NULL,
  `company_tax_code` varchar(20) NOT NULL,
  `company_email` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `shipping_option` varchar(60) DEFAULT NULL,
  `shipping_method` varchar(60) NOT NULL DEFAULT 'default',
  `status` varchar(120) NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT 0.00,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `payment_fee` decimal(15,2) DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `coupon_code` varchar(120) DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_description` varchar(191) DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT 0,
  `cancellation_reason` varchar(191) DEFAULT NULL,
  `cancellation_reason_description` varchar(191) DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) DEFAULT NULL,
  `payment_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) DEFAULT NULL,
  `private_notes` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (3,'#SF-10000003',0,'1','default','pending',719.00,59.00,70.00,0.00,'Please deliver in afternoon. Call before delivery.',NULL,0.00,590.00,0,NULL,1,NULL,NULL,NULL,'231569db4aebc34a6b682f5a56f1f191',3,'2026-10-25 23:20:25','2026-10-25 23:21:02',NULL,NULL),(4,'#SF-10000004',0,NULL,'default','pending',990.00,0.00,0.00,0.00,NULL,NULL,0.00,990.00,0,NULL,0,NULL,NULL,NULL,'8327a5a65149bd8a98d75682f2fbe664',NULL,'2026-11-01 02:22:01','2026-11-01 02:22:01',NULL,NULL),(5,'#SF-10000005',0,NULL,'default','pending',869.00,79.00,0.00,0.00,NULL,NULL,0.00,790.00,0,NULL,0,NULL,NULL,NULL,'53dcf775bae4214fe418c0e0fa5d7b08',NULL,'2026-11-01 08:20:18','2026-11-01 08:20:18',NULL,NULL),(6,'#SF-10000006',0,NULL,'default','pending',990.00,0.00,0.00,0.00,NULL,NULL,0.00,990.00,0,NULL,0,NULL,NULL,NULL,'fd3b70361178444511969e5bb687ee47',NULL,'2026-11-01 08:56:03','2026-11-01 08:56:03',NULL,NULL),(7,'#SF-10000007',0,NULL,'default','pending',825.00,75.00,0.00,0.00,NULL,NULL,0.00,750.00,0,NULL,0,NULL,NULL,NULL,'f73e899b66b01e70f41ee28acba01e68',NULL,'2026-11-01 09:22:53','2026-11-01 09:22:53',NULL,NULL),(8,'#SF-10000008',0,'1','default','pending',1989.00,79.00,70.00,0.00,NULL,NULL,0.00,1840.00,0,NULL,0,NULL,NULL,NULL,'d81945241a98c2de966a48a92c661c94',4,'2026-11-01 09:35:41','2026-11-01 10:22:18',NULL,NULL),(9,'#SF-10000009',0,NULL,'default','processing',590.00,0.00,0.00,0.00,NULL,NULL,0.00,590.00,0,NULL,0,NULL,NULL,NULL,'a746f1a4e50970b8deee675e2468c61b',NULL,'2026-11-01 09:51:02','2026-11-01 11:48:08',NULL,NULL);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `display_layout` varchar(191) NOT NULL DEFAULT 'dropdown',
  `is_searchable` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `is_comparable` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `is_use_in_product_listing` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Size','size','text',1,1,1,'published',0,'2026-10-25 12:52:49','2026-10-25 12:52:49',0),(2,'Waist Size','waist-size','text',1,1,1,'published',1,'2026-10-25 12:52:49','2026-10-25 12:52:49',0),(3,'Color','color','visual',1,1,1,'published',2,'2026-10-25 12:52:49','2026-10-25 12:52:49',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_attribute_sets_id` bigint(20) unsigned NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint(20) unsigned NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `color` varchar(120) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`),
  KEY `idx_attribute_set_id` (`attribute_set_id`),
  KEY `idx_attribute_set_order_id` (`attribute_set_id`,`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'S','s',NULL,NULL,0,0,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(2,1,'M','m',NULL,NULL,1,1,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(3,1,'L','l',NULL,NULL,0,2,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(4,1,'XL','xl',NULL,NULL,0,3,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(5,1,'XXL','xxl',NULL,NULL,0,4,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(6,2,'28','28',NULL,NULL,0,0,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(7,2,'30','30',NULL,NULL,1,1,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(8,2,'32','32',NULL,NULL,0,2,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(9,2,'34','34',NULL,NULL,0,3,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(10,2,'36','36',NULL,NULL,0,4,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(11,3,'Black','black','#000000',NULL,1,0,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(12,3,'White','white','#FFFFFF',NULL,0,1,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(13,3,'Navy Blue','navy-blue','#001F3F',NULL,0,2,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(14,3,'Olive Green','olive-green','#556B2F',NULL,0,3,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(15,3,'Charcoal Grey','charcoal-grey','#36454F',NULL,0,4,'2026-10-25 12:52:49','2026-10-25 12:52:49'),(16,3,'Ash Grey','ash-grey','#B2BEB5',NULL,0,5,'2026-10-25 12:52:50','2026-10-25 12:52:50'),(17,3,'Maroon','maroon','#800000',NULL,0,6,'2026-10-25 12:52:50','2026-10-25 12:52:50'),(18,3,'Beige','beige','#F5F5DC',NULL,0,7,'2026-10-25 12:52:50','2026-10-25 12:52:50'),(19,3,'Brown','brown','#8B4513',NULL,0,8,'2026-10-25 12:52:50','2026-10-25 12:52:50');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_attributes_id` bigint(20) unsigned NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `description` mediumtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `icon_image` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`),
  KEY `idx_categories_status_order` (`status`,`order`),
  KEY `idx_categories_order` (`order`),
  KEY `ec_product_categories_slug_index` (`slug`),
  KEY `idx_ec_product_categories_status` (`status`),
  KEY `idx_ec_product_categories_parent_id` (`parent_id`),
  KEY `idx_ec_product_categories_status_parent_order` (`status`,`parent_id`,`order`),
  KEY `idx_ec_product_categories_is_featured` (`is_featured`),
  KEY `idx_ec_product_categories_name` (`name`),
  KEY `idx_ec_product_categories_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'T-Shirts',NULL,0,NULL,'published',0,'products/habitto-streetwear-shoot-2.jpg',1,'2026-10-25 12:50:36','2026-11-01 08:00:15',NULL,NULL),(2,'Oversized T-Shirts',NULL,1,NULL,'published',0,'products/habitto-streetwear-shoot-4.jpg',1,'2026-10-25 12:50:36','2026-11-01 08:00:15',NULL,NULL),(3,'Acid Wash T-Shirts',NULL,1,NULL,'published',1,'products/habitto-streetwear-shoot-1.jpg',1,'2026-10-25 12:50:36','2026-11-01 08:00:15',NULL,NULL),(4,'Polo T-Shirts',NULL,1,NULL,'published',2,'products/habitto-streetwear-shoot-3.jpg',1,'2026-10-25 12:50:36','2026-11-01 08:00:15',NULL,NULL),(5,'Pique T-Shirts',NULL,1,NULL,'published',3,'products/hbt-polo-black.jpg',1,'2026-10-25 12:50:36','2026-10-31 11:43:56',NULL,NULL),(6,'V-Neck T-Shirts',NULL,1,NULL,'published',4,'products/hbt-minimal-tee.jpg',1,'2026-10-25 12:50:36','2026-10-31 12:06:27',NULL,NULL),(7,'Pants & Trousers',NULL,0,NULL,'published',1,'products/habitto-streetwear-shoot-3.jpg',1,'2026-10-25 12:50:36','2026-10-31 11:43:56',NULL,NULL),(8,'Formal Pants',NULL,7,NULL,'published',0,'products/hbt-chino-beige.jpg',1,'2026-10-25 12:50:36','2026-10-31 11:43:56',NULL,NULL),(9,'Jeans',NULL,7,NULL,'published',1,'products/hbt-jeans-indigo.jpg',1,'2026-10-25 12:50:36','2026-10-31 11:43:56',NULL,NULL),(10,'Joggers',NULL,7,NULL,'published',2,'products/hbt-cargo-olive.jpg',1,'2026-10-25 12:50:36','2026-10-31 11:43:56',NULL,NULL),(11,'Straight Fit Pants',NULL,7,NULL,'published',3,'products/hbt-chino-navy.jpg',1,'2026-10-25 12:50:36','2026-10-31 11:43:56',NULL,NULL),(12,'Rib Cotton Pants',NULL,7,NULL,'published',4,'products/hbt-cargo-black.jpg',1,'2026-10-25 12:50:36','2026-10-31 11:43:56',NULL,NULL),(13,'Shirts',NULL,0,NULL,'published',2,'products/hbt-cuban-white.jpg',1,'2026-10-25 12:50:36','2026-10-31 11:43:56',NULL,NULL),(14,'Formal Shirts',NULL,13,NULL,'published',0,'products/hbt-oxford-blue.jpg',1,'2026-10-25 12:50:36','2026-10-31 11:43:56',NULL,NULL),(15,'Casual Shirts',NULL,13,NULL,'published',1,'products/hbt-cuban-olive.jpg',1,'2026-10-25 12:50:36','2026-10-31 11:43:56',NULL,NULL),(16,'Winter Wear',NULL,0,NULL,'published',3,'products/hbt-hoodie-maroon.jpg',1,'2026-10-25 12:50:36','2026-10-31 11:43:56',NULL,NULL),(17,'Hoodies',NULL,16,NULL,'published',0,'products/hbt-hoodie-charcoal.jpg',1,'2026-10-25 12:50:36','2026-10-31 11:43:56',NULL,NULL),(18,'Sweatshirts',NULL,16,NULL,'published',1,'products/hbt-sweatshirt-ash.jpg',1,'2026-10-25 12:50:36','2026-10-31 11:43:56',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_categories_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint(20) unsigned NOT NULL,
  `reference_id` bigint(20) unsigned NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`),
  KEY `idx_product_category` (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,1),(2,1),(3,1),(1,2),(3,2),(1,3),(2,3),(3,3),(1,4),(2,4),(1,5),(2,5),(1,6),(2,6),(16,7),(17,7),(7,8),(8,8),(7,9),(9,9),(1,10),(2,10),(3,10),(1,11),(3,11),(1,12),(2,12),(3,12),(1,13),(2,13),(1,14),(2,14),(1,15),(2,15),(16,16),(17,16),(7,17),(8,17),(7,18),(9,18),(4,64),(5,64),(4,70),(4,76),(4,82),(16,88),(17,88),(16,94),(17,94),(16,100),(18,100),(16,106),(18,106),(7,112),(10,112),(7,118),(10,118),(7,124),(8,124),(7,130),(8,130),(7,136),(9,136),(7,142),(9,142),(13,148),(15,148),(13,154),(15,154),(13,160),(14,160),(1,166),(2,166),(3,166),(1,172),(2,172),(1,178),(3,178);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_collections_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint(20) unsigned NOT NULL,
  `to_product_id` bigint(20) unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT 0,
  `price` decimal(15,2) DEFAULT 0.00,
  `price_type` varchar(191) NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`),
  KEY `idx_product_cross_sale` (`from_product_id`,`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `url` varchar(400) DEFAULT NULL,
  `extras` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=468 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,76,'ecommerce/digital-product-files/product-55.jpg','{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-55\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(2,76,'ecommerce/digital-product-files/product-76.jpg','{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-76\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(3,76,'ecommerce/digital-product-files/product-30.jpg','{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-30\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(4,76,'ecommerce/digital-product-files/product-40.jpg','{\"filename\":\"product-40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-40\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(5,76,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(6,76,'ecommerce/digital-product-files/product-25.jpg','{\"filename\":\"product-25.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-25\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(7,76,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(8,76,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(9,76,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(10,76,'ecommerce/digital-product-files/product-37.jpg','{\"filename\":\"product-37.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-37.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-37\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(11,76,'ecommerce/digital-product-files/product-31.jpg','{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-31\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(12,76,'ecommerce/digital-product-files/product-35.jpg','{\"filename\":\"product-35.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-35.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-35\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(13,77,'ecommerce/digital-product-files/product-55.jpg','{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-55\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(14,77,'ecommerce/digital-product-files/product-76.jpg','{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-76\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(15,77,'ecommerce/digital-product-files/product-30.jpg','{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-30\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(16,77,'ecommerce/digital-product-files/product-40.jpg','{\"filename\":\"product-40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-40\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(17,77,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(18,77,'ecommerce/digital-product-files/product-25.jpg','{\"filename\":\"product-25.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-25\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(19,77,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(20,77,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(21,77,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(22,77,'ecommerce/digital-product-files/product-37.jpg','{\"filename\":\"product-37.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-37.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-37\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(23,77,'ecommerce/digital-product-files/product-31.jpg','{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-31\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(24,77,'ecommerce/digital-product-files/product-35.jpg','{\"filename\":\"product-35.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-35.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:19\",\"name\":\"product-35\",\"extension\":\"jpg\"}','2025-10-20 17:06:19','2025-10-20 17:06:19'),(25,83,'ecommerce/digital-product-files/product-32.jpg','{\"filename\":\"product-32.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-32.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-32\",\"extension\":\"jpg\"}','2025-10-20 17:06:20','2025-10-20 17:06:20'),(26,83,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2025-10-20 17:06:20','2025-10-20 17:06:20'),(27,83,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2025-10-20 17:06:20','2025-10-20 17:06:20'),(28,83,'ecommerce/digital-product-files/product-62.jpg','{\"filename\":\"product-62.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-62.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-62\",\"extension\":\"jpg\"}','2025-10-20 17:06:20','2025-10-20 17:06:20'),(29,83,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2025-10-20 17:06:20','2025-10-20 17:06:20'),(30,84,'ecommerce/digital-product-files/product-32.jpg','{\"filename\":\"product-32.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-32.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-32\",\"extension\":\"jpg\"}','2025-10-20 17:06:20','2025-10-20 17:06:20'),(31,84,'ecommerce/digital-product-files/product-12.jpg','{\"filename\":\"product-12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-12\",\"extension\":\"jpg\"}','2025-10-20 17:06:20','2025-10-20 17:06:20'),(32,84,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2025-10-20 17:06:20','2025-10-20 17:06:20'),(33,84,'ecommerce/digital-product-files/product-62.jpg','{\"filename\":\"product-62.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-62.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-62\",\"extension\":\"jpg\"}','2025-10-20 17:06:20','2025-10-20 17:06:20'),(34,84,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:20\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2025-10-20 17:06:20','2025-10-20 17:06:20'),(35,91,'ecommerce/digital-product-files/product-23.jpg','{\"filename\":\"product-23.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-23.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-23\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(36,91,'ecommerce/digital-product-files/product-65.jpg','{\"filename\":\"product-65.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-65.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-65\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(37,91,'ecommerce/digital-product-files/product-33.jpg','{\"filename\":\"product-33.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-33.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-33\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(38,91,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(39,91,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(40,91,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(41,92,'ecommerce/digital-product-files/product-23.jpg','{\"filename\":\"product-23.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-23.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-23\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(42,92,'ecommerce/digital-product-files/product-65.jpg','{\"filename\":\"product-65.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-65.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-65\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(43,92,'ecommerce/digital-product-files/product-33.jpg','{\"filename\":\"product-33.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-33.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-33\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(44,92,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(45,92,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(46,92,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(47,93,'ecommerce/digital-product-files/product-23.jpg','{\"filename\":\"product-23.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-23.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-23\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(48,93,'ecommerce/digital-product-files/product-65.jpg','{\"filename\":\"product-65.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-65.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-65\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(49,93,'ecommerce/digital-product-files/product-33.jpg','{\"filename\":\"product-33.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-33.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-33\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(50,93,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(51,93,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(52,93,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(53,101,'ecommerce/digital-product-files/product-39.jpg','{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-39\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(54,101,'ecommerce/digital-product-files/product-30.jpg','{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-30\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(55,101,'ecommerce/digital-product-files/product-74.jpg','{\"filename\":\"product-74.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-74.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-74\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(56,101,'ecommerce/digital-product-files/product-56.jpg','{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-56\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(57,101,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(58,101,'ecommerce/digital-product-files/product-44.jpg','{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-44\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(59,101,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(60,102,'ecommerce/digital-product-files/product-39.jpg','{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-39\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(61,102,'ecommerce/digital-product-files/product-30.jpg','{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-30\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(62,102,'ecommerce/digital-product-files/product-74.jpg','{\"filename\":\"product-74.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-74.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-74\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(63,102,'ecommerce/digital-product-files/product-56.jpg','{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-56\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(64,102,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(65,102,'ecommerce/digital-product-files/product-44.jpg','{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-44\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(66,102,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(67,103,'ecommerce/digital-product-files/product-39.jpg','{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-39\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(68,103,'ecommerce/digital-product-files/product-30.jpg','{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-30\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(69,103,'ecommerce/digital-product-files/product-74.jpg','{\"filename\":\"product-74.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-74.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-74\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(70,103,'ecommerce/digital-product-files/product-56.jpg','{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-56\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(71,103,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(72,103,'ecommerce/digital-product-files/product-44.jpg','{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-44\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(73,103,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:21\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2025-10-20 17:06:21','2025-10-20 17:06:21'),(74,113,'ecommerce/digital-product-files/product-91.jpg','{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-91\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(75,113,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(76,113,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(77,113,'ecommerce/digital-product-files/product-70.jpg','{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-70\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(78,113,'ecommerce/digital-product-files/product-30.jpg','{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-30\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(79,113,'ecommerce/digital-product-files/product-36.jpg','{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-36\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(80,113,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(81,113,'ecommerce/digital-product-files/product-39.jpg','{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-39\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(82,113,'ecommerce/digital-product-files/product-64.jpg','{\"filename\":\"product-64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-64\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(83,113,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(84,113,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(85,114,'ecommerce/digital-product-files/product-91.jpg','{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-91\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(86,114,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(87,114,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(88,114,'ecommerce/digital-product-files/product-70.jpg','{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-70\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(89,114,'ecommerce/digital-product-files/product-30.jpg','{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-30\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(90,114,'ecommerce/digital-product-files/product-36.jpg','{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-36\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(91,114,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(92,114,'ecommerce/digital-product-files/product-39.jpg','{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-39\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(93,114,'ecommerce/digital-product-files/product-64.jpg','{\"filename\":\"product-64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-64\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(94,114,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(95,114,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(96,115,'ecommerce/digital-product-files/product-91.jpg','{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-91\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(97,115,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(98,115,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(99,115,'ecommerce/digital-product-files/product-70.jpg','{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-70\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(100,115,'ecommerce/digital-product-files/product-30.jpg','{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-30\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(101,115,'ecommerce/digital-product-files/product-36.jpg','{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-36\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(102,115,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(103,115,'ecommerce/digital-product-files/product-39.jpg','{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-39\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(104,115,'ecommerce/digital-product-files/product-64.jpg','{\"filename\":\"product-64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-64\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(105,115,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(106,115,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(107,116,'ecommerce/digital-product-files/product-91.jpg','{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-91\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(108,116,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(109,116,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(110,116,'ecommerce/digital-product-files/product-70.jpg','{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-70\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(111,116,'ecommerce/digital-product-files/product-30.jpg','{\"filename\":\"product-30.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-30.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-30\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(112,116,'ecommerce/digital-product-files/product-36.jpg','{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-36\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(113,116,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(114,116,'ecommerce/digital-product-files/product-39.jpg','{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-39\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(115,116,'ecommerce/digital-product-files/product-64.jpg','{\"filename\":\"product-64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-64\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(116,116,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(117,116,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:22\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2025-10-20 17:06:22','2025-10-20 17:06:22'),(118,123,'ecommerce/digital-product-files/product-55.jpg','{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-55\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(119,123,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(120,123,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(121,123,'ecommerce/digital-product-files/product-18.jpg','{\"filename\":\"product-18.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-18.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-18\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(122,123,'ecommerce/digital-product-files/product-66.jpg','{\"filename\":\"product-66.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-66.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-66\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(123,123,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(124,123,'ecommerce/digital-product-files/product-24.jpg','{\"filename\":\"product-24.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-24.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-24\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(125,134,'ecommerce/digital-product-files/product-57.jpg','{\"filename\":\"product-57.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-57.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-57\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(126,134,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(127,134,'ecommerce/digital-product-files/product-52.jpg','{\"filename\":\"product-52.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-52.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-52\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(128,134,'ecommerce/digital-product-files/product-91.jpg','{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-91\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(129,134,'ecommerce/digital-product-files/product-70.jpg','{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-70\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(130,134,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(131,134,'ecommerce/digital-product-files/product-31.jpg','{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-31\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(132,134,'ecommerce/digital-product-files/product-37.jpg','{\"filename\":\"product-37.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-37.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-37\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(133,135,'ecommerce/digital-product-files/product-57.jpg','{\"filename\":\"product-57.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-57.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-57\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(134,135,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(135,135,'ecommerce/digital-product-files/product-52.jpg','{\"filename\":\"product-52.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-52.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-52\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(136,135,'ecommerce/digital-product-files/product-91.jpg','{\"filename\":\"product-91.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-91.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-91\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(137,135,'ecommerce/digital-product-files/product-70.jpg','{\"filename\":\"product-70.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-70.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-70\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(138,135,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(139,135,'ecommerce/digital-product-files/product-31.jpg','{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-31\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(140,135,'ecommerce/digital-product-files/product-37.jpg','{\"filename\":\"product-37.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-37.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:23\",\"name\":\"product-37\",\"extension\":\"jpg\"}','2025-10-20 17:06:23','2025-10-20 17:06:23'),(141,142,'ecommerce/digital-product-files/product-34.jpg','{\"filename\":\"product-34.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-34.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-34\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(142,142,'ecommerce/digital-product-files/product-28.jpg','{\"filename\":\"product-28.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-28.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-28\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(143,142,'ecommerce/digital-product-files/product-44.jpg','{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-44\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(144,142,'ecommerce/digital-product-files/product-89.jpg','{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-89\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(145,142,'ecommerce/digital-product-files/product-51.jpg','{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-51\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(146,142,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(147,142,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(148,142,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(149,142,'ecommerce/digital-product-files/product-47.jpg','{\"filename\":\"product-47.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-47.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-47\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(150,142,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(151,143,'ecommerce/digital-product-files/product-34.jpg','{\"filename\":\"product-34.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-34.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-34\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(152,143,'ecommerce/digital-product-files/product-28.jpg','{\"filename\":\"product-28.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-28.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-28\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(153,143,'ecommerce/digital-product-files/product-44.jpg','{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-44\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(154,143,'ecommerce/digital-product-files/product-89.jpg','{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-89\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(155,143,'ecommerce/digital-product-files/product-51.jpg','{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-51\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(156,143,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(157,143,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(158,143,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(159,143,'ecommerce/digital-product-files/product-47.jpg','{\"filename\":\"product-47.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-47.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-47\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(160,143,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(161,144,'ecommerce/digital-product-files/product-34.jpg','{\"filename\":\"product-34.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-34.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-34\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(162,144,'ecommerce/digital-product-files/product-28.jpg','{\"filename\":\"product-28.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-28.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-28\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(163,144,'ecommerce/digital-product-files/product-44.jpg','{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-44\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(164,144,'ecommerce/digital-product-files/product-89.jpg','{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-89\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(165,144,'ecommerce/digital-product-files/product-51.jpg','{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-51\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(166,144,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(167,144,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(168,144,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(169,144,'ecommerce/digital-product-files/product-47.jpg','{\"filename\":\"product-47.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-47.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-47\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(170,144,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(171,145,'ecommerce/digital-product-files/product-34.jpg','{\"filename\":\"product-34.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-34.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-34\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(172,145,'ecommerce/digital-product-files/product-28.jpg','{\"filename\":\"product-28.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-28.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-28\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(173,145,'ecommerce/digital-product-files/product-44.jpg','{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-44\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(174,145,'ecommerce/digital-product-files/product-89.jpg','{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-89\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(175,145,'ecommerce/digital-product-files/product-51.jpg','{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-51\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(176,145,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(177,145,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(178,145,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(179,145,'ecommerce/digital-product-files/product-47.jpg','{\"filename\":\"product-47.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-47.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-47\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(180,145,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(181,151,'ecommerce/digital-product-files/product-36.jpg','{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-36\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(182,151,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(183,151,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(184,151,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(185,151,'ecommerce/digital-product-files/product-72.jpg','{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-72\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(186,151,'ecommerce/digital-product-files/product-68.jpg','{\"filename\":\"product-68.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-68.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-68\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(187,151,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(188,151,'ecommerce/digital-product-files/product-87.jpg','{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-87\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(189,151,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(190,151,'ecommerce/digital-product-files/product-45.jpg','{\"filename\":\"product-45.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-45.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-45\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(191,152,'ecommerce/digital-product-files/product-36.jpg','{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-36\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(192,152,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(193,152,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(194,152,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(195,152,'ecommerce/digital-product-files/product-72.jpg','{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-72\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(196,152,'ecommerce/digital-product-files/product-68.jpg','{\"filename\":\"product-68.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-68.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-68\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(197,152,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(198,152,'ecommerce/digital-product-files/product-87.jpg','{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-87\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(199,152,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(200,152,'ecommerce/digital-product-files/product-45.jpg','{\"filename\":\"product-45.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-45.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-45\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(201,153,'ecommerce/digital-product-files/product-36.jpg','{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-36\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(202,153,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(203,153,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(204,153,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(205,153,'ecommerce/digital-product-files/product-72.jpg','{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-72\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(206,153,'ecommerce/digital-product-files/product-68.jpg','{\"filename\":\"product-68.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-68.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-68\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(207,153,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(208,153,'ecommerce/digital-product-files/product-87.jpg','{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-87\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(209,153,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(210,153,'ecommerce/digital-product-files/product-45.jpg','{\"filename\":\"product-45.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-45.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-45\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(211,154,'ecommerce/digital-product-files/product-36.jpg','{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-36\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(212,154,'ecommerce/digital-product-files/product-50.jpg','{\"filename\":\"product-50.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-50.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-50\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(213,154,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(214,154,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(215,154,'ecommerce/digital-product-files/product-72.jpg','{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-72\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(216,154,'ecommerce/digital-product-files/product-68.jpg','{\"filename\":\"product-68.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-68.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-68\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(217,154,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(218,154,'ecommerce/digital-product-files/product-87.jpg','{\"filename\":\"product-87.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-87.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-87\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(219,154,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(220,154,'ecommerce/digital-product-files/product-45.jpg','{\"filename\":\"product-45.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-45.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:24\",\"name\":\"product-45\",\"extension\":\"jpg\"}','2025-10-20 17:06:24','2025-10-20 17:06:24'),(221,164,'ecommerce/digital-product-files/product-80.jpg','{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-80\",\"extension\":\"jpg\"}','2025-10-20 17:06:25','2025-10-20 17:06:25'),(222,164,'ecommerce/digital-product-files/product-25.jpg','{\"filename\":\"product-25.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-25\",\"extension\":\"jpg\"}','2025-10-20 17:06:25','2025-10-20 17:06:25'),(223,164,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-10-20 17:06:25','2025-10-20 17:06:25'),(224,164,'ecommerce/digital-product-files/product-83.jpg','{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-83\",\"extension\":\"jpg\"}','2025-10-20 17:06:25','2025-10-20 17:06:25'),(225,164,'ecommerce/digital-product-files/product-18.jpg','{\"filename\":\"product-18.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-18.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-18\",\"extension\":\"jpg\"}','2025-10-20 17:06:25','2025-10-20 17:06:25'),(226,165,'ecommerce/digital-product-files/product-80.jpg','{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-80\",\"extension\":\"jpg\"}','2025-10-20 17:06:25','2025-10-20 17:06:25'),(227,165,'ecommerce/digital-product-files/product-25.jpg','{\"filename\":\"product-25.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-25\",\"extension\":\"jpg\"}','2025-10-20 17:06:25','2025-10-20 17:06:25'),(228,165,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-10-20 17:06:25','2025-10-20 17:06:25'),(229,165,'ecommerce/digital-product-files/product-83.jpg','{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-83\",\"extension\":\"jpg\"}','2025-10-20 17:06:25','2025-10-20 17:06:25'),(230,165,'ecommerce/digital-product-files/product-18.jpg','{\"filename\":\"product-18.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-18.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:25\",\"name\":\"product-18\",\"extension\":\"jpg\"}','2025-10-20 17:06:25','2025-10-20 17:06:25'),(231,176,'ecommerce/digital-product-files/product-80.jpg','{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-80\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(232,176,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(233,176,'ecommerce/digital-product-files/product-76.jpg','{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-76\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(234,176,'ecommerce/digital-product-files/product-89.jpg','{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-89\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(235,176,'ecommerce/digital-product-files/product-54.jpg','{\"filename\":\"product-54.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-54.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-54\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(236,177,'ecommerce/digital-product-files/product-80.jpg','{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-80\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(237,177,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(238,177,'ecommerce/digital-product-files/product-76.jpg','{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-76\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(239,177,'ecommerce/digital-product-files/product-89.jpg','{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-89\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(240,177,'ecommerce/digital-product-files/product-54.jpg','{\"filename\":\"product-54.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-54.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-54\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(241,178,'ecommerce/digital-product-files/product-80.jpg','{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-80\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(242,178,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(243,178,'ecommerce/digital-product-files/product-76.jpg','{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-76\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(244,178,'ecommerce/digital-product-files/product-89.jpg','{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-89\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(245,178,'ecommerce/digital-product-files/product-54.jpg','{\"filename\":\"product-54.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-54.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-54\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(246,179,'ecommerce/digital-product-files/product-80.jpg','{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-80\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(247,179,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(248,179,'ecommerce/digital-product-files/product-76.jpg','{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-76\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(249,179,'ecommerce/digital-product-files/product-89.jpg','{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-89\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(250,179,'ecommerce/digital-product-files/product-54.jpg','{\"filename\":\"product-54.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-54.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-54\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(251,180,'ecommerce/digital-product-files/product-80.jpg','{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-80\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(252,180,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(253,180,'ecommerce/digital-product-files/product-76.jpg','{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-76\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(254,180,'ecommerce/digital-product-files/product-89.jpg','{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-89\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(255,180,'ecommerce/digital-product-files/product-54.jpg','{\"filename\":\"product-54.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-54.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:26\",\"name\":\"product-54\",\"extension\":\"jpg\"}','2025-10-20 17:06:26','2025-10-20 17:06:26'),(256,187,'ecommerce/digital-product-files/product-80.jpg','{\"filename\":\"product-80.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-80.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-80\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(257,187,'ecommerce/digital-product-files/product-76.jpg','{\"filename\":\"product-76.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-76.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-76\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(258,187,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(259,187,'ecommerce/digital-product-files/product-39.jpg','{\"filename\":\"product-39.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-39.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-39\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(260,187,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(261,187,'ecommerce/digital-product-files/product-53.jpg','{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-53\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(262,187,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(263,187,'ecommerce/digital-product-files/product-57.jpg','{\"filename\":\"product-57.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-57.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-57\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(264,187,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(265,194,'ecommerce/digital-product-files/product-71.jpg','{\"filename\":\"product-71.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-71.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-71\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(266,194,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(267,194,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(268,194,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(269,194,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(270,195,'ecommerce/digital-product-files/product-71.jpg','{\"filename\":\"product-71.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-71.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-71\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(271,195,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(272,195,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(273,195,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(274,195,'ecommerce/digital-product-files/product-19.jpg','{\"filename\":\"product-19.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-19.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:27\",\"name\":\"product-19\",\"extension\":\"jpg\"}','2025-10-20 17:06:27','2025-10-20 17:06:27'),(275,204,'ecommerce/digital-product-files/product-94.jpg','{\"filename\":\"product-94.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-94.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-94\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(276,204,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(277,204,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(278,204,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(279,204,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(280,204,'ecommerce/digital-product-files/product-60.jpg','{\"filename\":\"product-60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-60\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(281,205,'ecommerce/digital-product-files/product-94.jpg','{\"filename\":\"product-94.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-94.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-94\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(282,205,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(283,205,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(284,205,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(285,205,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(286,205,'ecommerce/digital-product-files/product-60.jpg','{\"filename\":\"product-60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-60\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(287,213,'ecommerce/digital-product-files/product-94.jpg','{\"filename\":\"product-94.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-94.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-94\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(288,213,'ecommerce/digital-product-files/product-92.jpg','{\"filename\":\"product-92.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-92.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-92\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(289,213,'ecommerce/digital-product-files/product-44.jpg','{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-44\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(290,213,'ecommerce/digital-product-files/product-60.jpg','{\"filename\":\"product-60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-60\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(291,213,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(292,213,'ecommerce/digital-product-files/product-63.jpg','{\"filename\":\"product-63.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-63.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-63\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(293,213,'ecommerce/digital-product-files/product-73.jpg','{\"filename\":\"product-73.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-73.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-73\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(294,213,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(295,213,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(296,213,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(297,213,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(298,214,'ecommerce/digital-product-files/product-94.jpg','{\"filename\":\"product-94.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-94.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-94\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(299,214,'ecommerce/digital-product-files/product-92.jpg','{\"filename\":\"product-92.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-92.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-92\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(300,214,'ecommerce/digital-product-files/product-44.jpg','{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-44\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(301,214,'ecommerce/digital-product-files/product-60.jpg','{\"filename\":\"product-60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-60\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(302,214,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(303,214,'ecommerce/digital-product-files/product-63.jpg','{\"filename\":\"product-63.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-63.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-63\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(304,214,'ecommerce/digital-product-files/product-73.jpg','{\"filename\":\"product-73.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-73.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-73\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(305,214,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(306,214,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(307,214,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(308,214,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:28\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2025-10-20 17:06:28','2025-10-20 17:06:28'),(309,215,'ecommerce/digital-product-files/product-94.jpg','{\"filename\":\"product-94.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-94.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-94\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(310,215,'ecommerce/digital-product-files/product-92.jpg','{\"filename\":\"product-92.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-92.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-92\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(311,215,'ecommerce/digital-product-files/product-44.jpg','{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-44\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(312,215,'ecommerce/digital-product-files/product-60.jpg','{\"filename\":\"product-60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-60\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(313,215,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(314,215,'ecommerce/digital-product-files/product-63.jpg','{\"filename\":\"product-63.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-63.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-63\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(315,215,'ecommerce/digital-product-files/product-73.jpg','{\"filename\":\"product-73.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-73.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-73\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(316,215,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(317,215,'ecommerce/digital-product-files/product-86.jpg','{\"filename\":\"product-86.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-86.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-86\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(318,215,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(319,215,'ecommerce/digital-product-files/product-6.jpg','{\"filename\":\"product-6.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-6\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(320,223,'ecommerce/digital-product-files/product-77.jpg','{\"filename\":\"product-77.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-77.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-77\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(321,223,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(322,223,'ecommerce/digital-product-files/product-35.jpg','{\"filename\":\"product-35.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-35.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-35\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(323,223,'ecommerce/digital-product-files/product-36.jpg','{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-36\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(324,223,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(325,223,'ecommerce/digital-product-files/product-38.jpg','{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-38\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(326,223,'ecommerce/digital-product-files/product-51.jpg','{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-51\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(327,223,'ecommerce/digital-product-files/product-40.jpg','{\"filename\":\"product-40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-40\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(328,223,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(329,223,'ecommerce/digital-product-files/product-61.jpg','{\"filename\":\"product-61.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-61.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-61\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(330,223,'ecommerce/digital-product-files/product-89.jpg','{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-89\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(331,223,'ecommerce/digital-product-files/product-79.jpg','{\"filename\":\"product-79.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-79.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-79\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(332,224,'ecommerce/digital-product-files/product-77.jpg','{\"filename\":\"product-77.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-77.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-77\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(333,224,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(334,224,'ecommerce/digital-product-files/product-35.jpg','{\"filename\":\"product-35.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-35.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-35\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(335,224,'ecommerce/digital-product-files/product-36.jpg','{\"filename\":\"product-36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-36\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(336,224,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(337,224,'ecommerce/digital-product-files/product-38.jpg','{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-38\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(338,224,'ecommerce/digital-product-files/product-51.jpg','{\"filename\":\"product-51.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-51.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-51\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(339,224,'ecommerce/digital-product-files/product-40.jpg','{\"filename\":\"product-40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-40\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(340,224,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(341,224,'ecommerce/digital-product-files/product-61.jpg','{\"filename\":\"product-61.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-61.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-61\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(342,224,'ecommerce/digital-product-files/product-89.jpg','{\"filename\":\"product-89.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-89.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-89\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(343,224,'ecommerce/digital-product-files/product-79.jpg','{\"filename\":\"product-79.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-79.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:29\",\"name\":\"product-79\",\"extension\":\"jpg\"}','2025-10-20 17:06:29','2025-10-20 17:06:29'),(344,233,'ecommerce/digital-product-files/product-53.jpg','{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-53\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(345,233,'ecommerce/digital-product-files/product-21.jpg','{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-21\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(346,233,'ecommerce/digital-product-files/product-83.jpg','{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-83\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(347,233,'ecommerce/digital-product-files/product-67.jpg','{\"filename\":\"product-67.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-67.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-67\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(348,233,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(349,233,'ecommerce/digital-product-files/product-49.jpg','{\"filename\":\"product-49.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-49.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-49\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(350,233,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(351,233,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(352,233,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(353,233,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(354,233,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(355,233,'ecommerce/digital-product-files/product-55.jpg','{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-55\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(356,234,'ecommerce/digital-product-files/product-53.jpg','{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-53\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(357,234,'ecommerce/digital-product-files/product-21.jpg','{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-21\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(358,234,'ecommerce/digital-product-files/product-83.jpg','{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-83\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(359,234,'ecommerce/digital-product-files/product-67.jpg','{\"filename\":\"product-67.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-67.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-67\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(360,234,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(361,234,'ecommerce/digital-product-files/product-49.jpg','{\"filename\":\"product-49.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-49.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-49\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(362,234,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(363,234,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(364,234,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(365,234,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(366,234,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(367,234,'ecommerce/digital-product-files/product-55.jpg','{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-55\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(368,235,'ecommerce/digital-product-files/product-53.jpg','{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-53\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(369,235,'ecommerce/digital-product-files/product-21.jpg','{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-21\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(370,235,'ecommerce/digital-product-files/product-83.jpg','{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-83\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(371,235,'ecommerce/digital-product-files/product-67.jpg','{\"filename\":\"product-67.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-67.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-67\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(372,235,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(373,235,'ecommerce/digital-product-files/product-49.jpg','{\"filename\":\"product-49.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-49.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-49\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(374,235,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(375,235,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(376,235,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(377,235,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(378,235,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(379,235,'ecommerce/digital-product-files/product-55.jpg','{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-55\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(380,236,'ecommerce/digital-product-files/product-53.jpg','{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-53\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(381,236,'ecommerce/digital-product-files/product-21.jpg','{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-21\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(382,236,'ecommerce/digital-product-files/product-83.jpg','{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-83\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(383,236,'ecommerce/digital-product-files/product-67.jpg','{\"filename\":\"product-67.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-67.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-67\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(384,236,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(385,236,'ecommerce/digital-product-files/product-49.jpg','{\"filename\":\"product-49.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-49.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-49\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(386,236,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(387,236,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(388,236,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(389,236,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(390,236,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(391,236,'ecommerce/digital-product-files/product-55.jpg','{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-55\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(392,237,'ecommerce/digital-product-files/product-53.jpg','{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-53\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(393,237,'ecommerce/digital-product-files/product-21.jpg','{\"filename\":\"product-21.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-21\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(394,237,'ecommerce/digital-product-files/product-83.jpg','{\"filename\":\"product-83.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-83.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-83\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(395,237,'ecommerce/digital-product-files/product-67.jpg','{\"filename\":\"product-67.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-67.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-67\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(396,237,'ecommerce/digital-product-files/product-46.jpg','{\"filename\":\"product-46.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-46.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-46\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(397,237,'ecommerce/digital-product-files/product-49.jpg','{\"filename\":\"product-49.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-49.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-49\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(398,237,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(399,237,'ecommerce/digital-product-files/product-48.jpg','{\"filename\":\"product-48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-48\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(400,237,'ecommerce/digital-product-files/product-90.jpg','{\"filename\":\"product-90.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-90.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-90\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(401,237,'ecommerce/digital-product-files/product-93.jpg','{\"filename\":\"product-93.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-93.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-93\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(402,237,'ecommerce/digital-product-files/product-43.jpg','{\"filename\":\"product-43.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-43.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-43\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(403,237,'ecommerce/digital-product-files/product-55.jpg','{\"filename\":\"product-55.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-55.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:30\",\"name\":\"product-55\",\"extension\":\"jpg\"}','2025-10-20 17:06:30','2025-10-20 17:06:30'),(404,245,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(405,245,'ecommerce/digital-product-files/product-79.jpg','{\"filename\":\"product-79.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-79.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-79\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(406,245,'ecommerce/digital-product-files/product-22.jpg','{\"filename\":\"product-22.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-22.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-22\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(407,245,'ecommerce/digital-product-files/product-69.jpg','{\"filename\":\"product-69.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-69.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-69\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(408,245,'ecommerce/digital-product-files/product-74.jpg','{\"filename\":\"product-74.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-74.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-74\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(409,245,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(410,245,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(411,245,'ecommerce/digital-product-files/product-65.jpg','{\"filename\":\"product-65.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-65.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-65\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(412,245,'ecommerce/digital-product-files/product-31.jpg','{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-31\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(413,245,'ecommerce/digital-product-files/product-53.jpg','{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-53\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(414,246,'ecommerce/digital-product-files/product-26.jpg','{\"filename\":\"product-26.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-26.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-26\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(415,246,'ecommerce/digital-product-files/product-79.jpg','{\"filename\":\"product-79.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-79.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-79\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(416,246,'ecommerce/digital-product-files/product-22.jpg','{\"filename\":\"product-22.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-22.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-22\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(417,246,'ecommerce/digital-product-files/product-69.jpg','{\"filename\":\"product-69.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-69.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-69\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(418,246,'ecommerce/digital-product-files/product-74.jpg','{\"filename\":\"product-74.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-74.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-74\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(419,246,'ecommerce/digital-product-files/product-75.jpg','{\"filename\":\"product-75.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-75.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-75\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(420,246,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(421,246,'ecommerce/digital-product-files/product-65.jpg','{\"filename\":\"product-65.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-65.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-65\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(422,246,'ecommerce/digital-product-files/product-31.jpg','{\"filename\":\"product-31.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-31.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-31\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(423,246,'ecommerce/digital-product-files/product-53.jpg','{\"filename\":\"product-53.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-53.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-53\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(424,253,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(425,253,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(426,253,'ecommerce/digital-product-files/product-38.jpg','{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-38\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(427,253,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(428,253,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(429,253,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(430,253,'ecommerce/digital-product-files/product-44.jpg','{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-44\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(431,253,'ecommerce/digital-product-files/product-56.jpg','{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-56\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(432,253,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(433,253,'ecommerce/digital-product-files/product-84.jpg','{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-84\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(434,253,'ecommerce/digital-product-files/product-72.jpg','{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-72\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(435,254,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(436,254,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(437,254,'ecommerce/digital-product-files/product-38.jpg','{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-38\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(438,254,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(439,254,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(440,254,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(441,254,'ecommerce/digital-product-files/product-44.jpg','{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-44\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(442,254,'ecommerce/digital-product-files/product-56.jpg','{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-56\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(443,254,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(444,254,'ecommerce/digital-product-files/product-84.jpg','{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-84\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(445,254,'ecommerce/digital-product-files/product-72.jpg','{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:31\",\"name\":\"product-72\",\"extension\":\"jpg\"}','2025-10-20 17:06:31','2025-10-20 17:06:31'),(446,255,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(447,255,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(448,255,'ecommerce/digital-product-files/product-38.jpg','{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-38\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(449,255,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(450,255,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(451,255,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(452,255,'ecommerce/digital-product-files/product-44.jpg','{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-44\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(453,255,'ecommerce/digital-product-files/product-56.jpg','{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-56\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(454,255,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(455,255,'ecommerce/digital-product-files/product-84.jpg','{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-84\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(456,255,'ecommerce/digital-product-files/product-72.jpg','{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-72\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(457,256,'ecommerce/digital-product-files/product-88.jpg','{\"filename\":\"product-88.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-88.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-88\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(458,256,'ecommerce/digital-product-files/product-58.jpg','{\"filename\":\"product-58.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-58.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-58\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(459,256,'ecommerce/digital-product-files/product-38.jpg','{\"filename\":\"product-38.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-38.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-38\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(460,256,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(461,256,'ecommerce/digital-product-files/product-59.jpg','{\"filename\":\"product-59.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-59.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-59\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(462,256,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(463,256,'ecommerce/digital-product-files/product-44.jpg','{\"filename\":\"product-44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-44\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(464,256,'ecommerce/digital-product-files/product-56.jpg','{\"filename\":\"product-56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-56\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(465,256,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(466,256,'ecommerce/digital-product-files/product-84.jpg','{\"filename\":\"product-84.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-84.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-84\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32'),(467,256,'ecommerce/digital-product-files/product-72.jpg','{\"filename\":\"product-72.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-72.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2025-10-21 00:06:32\",\"name\":\"product-72\",\"extension\":\"jpg\"}','2025-10-20 17:06:32','2025-10-20 17:06:32');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `color` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_labels_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_license_codes`
--

DROP TABLE IF EXISTS `ec_product_license_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_license_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `license_code` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'available',
  `assigned_order_product_id` bigint(20) unsigned DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_license_codes_product_id_status_index` (`product_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_license_codes`
--

LOCK TABLES `ec_product_license_codes` WRITE;
/*!40000 ALTER TABLE `ec_product_license_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_license_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint(20) unsigned NOT NULL,
  `to_product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint(20) unsigned NOT NULL,
  `attribute_id` bigint(20) unsigned NOT NULL,
  `value` text DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,1,'22.39 cm',0,0),(1,2,'61.07 cm',0,0),(1,3,'34.4 cm',0,0),(1,4,'16.17 cm',0,0),(1,5,'87.41 cm',0,0),(2,1,'28.85 cm',0,0),(2,2,'39.57 cm',0,0),(2,3,'91.91 cm',0,0),(2,4,'99.53 cm',0,0),(2,5,'73.69 cm',0,0),(3,1,'45.87 cm',0,0),(3,2,'5.66 cm',0,0),(3,3,'74.88 cm',0,0),(3,4,'83.78 cm',0,0),(3,5,'46.56 cm',0,0),(4,6,'11.19 cm',0,0),(4,7,'41.11 cm',0,0),(4,8,'2560x1440',0,0),(5,1,'82.99 cm',0,0),(5,2,'52.88 cm',0,0),(5,3,'15.15 cm',0,0),(5,4,'35.08 cm',0,0),(5,5,'98.13 cm',0,0),(6,1,'85.77 cm',0,0),(6,2,'51.6 cm',0,0),(6,3,'70.9 cm',0,0),(6,4,'17.82 cm',0,0),(6,5,'97.56 cm',0,0),(7,1,'69.31 cm',0,0),(7,2,'68.83 cm',0,0),(7,3,'33.58 cm',0,0),(7,4,'43.74 cm',0,0),(7,5,'89.45 cm',0,0),(8,1,'94.14 cm',0,0),(8,2,'97.27 cm',0,0),(8,3,'65 cm',0,0),(8,4,'50.5 cm',0,0),(8,5,'82.62 cm',0,0),(9,6,'46.78 cm',0,0),(9,7,'60.5 cm',0,0),(9,8,'2560x1440',0,0),(10,1,'14.87 cm',0,0),(10,2,'10.35 cm',0,0),(10,3,'59.1 cm',0,0),(10,4,'99.35 cm',0,0),(10,5,'72.49 cm',0,0),(11,1,'13.83 cm',0,0),(11,2,'24.06 cm',0,0),(11,3,'61.72 cm',0,0),(11,4,'80.81 cm',0,0),(11,5,'18.95 cm',0,0),(12,6,'48.64 cm',0,0),(12,7,'68.91 cm',0,0),(12,8,'3840x2160',0,0),(13,1,'34.61 cm',0,0),(13,2,'75.15 cm',0,0),(13,3,'25.53 cm',0,0),(13,4,'78 cm',0,0),(13,5,'43.45 cm',0,0),(14,1,'52.64 cm',0,0),(14,2,'14.05 cm',0,0),(14,3,'31.45 cm',0,0),(14,4,'72.85 cm',0,0),(14,5,'3.63 cm',0,0),(15,1,'79.55 cm',0,0),(15,2,'75.33 cm',0,0),(15,3,'41.85 cm',0,0),(15,4,'18.36 cm',0,0),(15,5,'73.75 cm',0,0),(16,6,'48.31 cm',0,0),(16,7,'46.38 cm',0,0),(16,8,'2560x1440',0,0),(17,1,'56.57 cm',0,0),(17,2,'4.19 cm',0,0),(17,3,'38.04 cm',0,0),(17,4,'12.22 cm',0,0),(17,5,'73.51 cm',0,0),(18,6,'59.31 cm',0,0),(18,7,'36.51 cm',0,0),(18,8,'1920x1080',0,0),(19,6,'34.2 cm',0,0),(19,7,'95.8 cm',0,0),(19,8,'2560x1440',0,0),(20,6,'57.19 cm',0,0),(20,7,'29.25 cm',0,0),(20,8,'1920x1080',0,0),(21,6,'90.75 cm',0,0),(21,7,'87.99 cm',0,0),(21,8,'1920x1080',0,0),(22,1,'18.24 cm',0,0),(22,2,'73.77 cm',0,0),(22,3,'39.73 cm',0,0),(22,4,'68.56 cm',0,0),(22,5,'74.26 cm',0,0),(23,6,'82.45 cm',0,0),(23,7,'80.3 cm',0,0),(23,8,'2560x1440',0,0),(24,1,'53.38 cm',0,0),(24,2,'93.4 cm',0,0),(24,3,'62.43 cm',0,0),(24,4,'82.47 cm',0,0),(24,5,'37.97 cm',0,0),(25,1,'60.08 cm',0,0),(25,2,'38.19 cm',0,0),(25,3,'73.91 cm',0,0),(25,4,'51.58 cm',0,0),(25,5,'86.3 cm',0,0),(26,1,'26.53 cm',0,0),(26,2,'64.6 cm',0,0),(26,3,'79.77 cm',0,0),(26,4,'74.74 cm',0,0),(26,5,'88.47 cm',0,0),(27,1,'55.5 cm',0,0),(27,2,'42.91 cm',0,0),(27,3,'4.38 cm',0,0),(27,4,'43.85 cm',0,0),(27,5,'5.82 cm',0,0),(28,1,'95.63 cm',0,0),(28,2,'98.41 cm',0,0),(28,3,'29.96 cm',0,0),(28,4,'20.48 cm',0,0),(28,5,'52.2 cm',0,0),(29,6,'69.61 cm',0,0),(29,7,'88.3 cm',0,0),(29,8,'2560x1440',0,0),(30,1,'70.16 cm',0,0),(30,2,'53.29 cm',0,0),(30,3,'78.8 cm',0,0),(30,4,'31.17 cm',0,0),(30,5,'57.78 cm',0,0),(31,6,'8.57 cm',0,0),(31,7,'4.08 cm',0,0),(31,8,'1920x1080',0,0),(32,1,'88.24 cm',0,0),(32,2,'54.79 cm',0,0),(32,3,'7.36 cm',0,0),(32,4,'80.81 cm',0,0),(32,5,'19.62 cm',0,0),(33,1,'48.33 cm',0,0),(33,2,'37.52 cm',0,0),(33,3,'90.91 cm',0,0),(33,4,'46.7 cm',0,0),(33,5,'69.22 cm',0,0),(34,1,'97.12 cm',0,0),(34,2,'92.72 cm',0,0),(34,3,'31.7 cm',0,0),(34,4,'25.49 cm',0,0),(34,5,'32.29 cm',0,0),(35,1,'46.04 cm',0,0),(35,2,'94.2 cm',0,0),(35,3,'93.47 cm',0,0),(35,4,'84.01 cm',0,0),(35,5,'59.67 cm',0,0),(36,6,'68.54 cm',0,0),(36,7,'83.83 cm',0,0),(36,8,'1920x1080',0,0),(37,1,'76.08 cm',0,0),(37,2,'89.05 cm',0,0),(37,3,'50.41 cm',0,0),(37,4,'95.02 cm',0,0),(37,5,'58.63 cm',0,0),(38,1,'10.95 cm',0,0),(38,2,'46.54 cm',0,0),(38,3,'58.44 cm',0,0),(38,4,'12.52 cm',0,0),(38,5,'83.94 cm',0,0),(39,1,'6.4 cm',0,0),(39,2,'97.2 cm',0,0),(39,3,'92.32 cm',0,0),(39,4,'42.07 cm',0,0),(39,5,'60.69 cm',0,0),(40,6,'25.45 cm',0,0),(40,7,'78.21 cm',0,0),(40,8,'3840x2160',0,0),(41,6,'90.52 cm',0,0),(41,7,'5.6 cm',0,0),(41,8,'3840x2160',0,0),(42,1,'59.04 cm',0,0),(42,2,'1.06 cm',0,0),(42,3,'91.94 cm',0,0),(42,4,'5.58 cm',0,0),(42,5,'7.84 cm',0,0),(43,6,'9.09 cm',0,0),(43,7,'75.12 cm',0,0),(43,8,'2560x1440',0,0),(44,6,'22.04 cm',0,0),(44,7,'40.26 cm',0,0),(44,8,'1920x1080',0,0),(45,6,'35.99 cm',0,0),(45,7,'28.24 cm',0,0),(45,8,'3840x2160',0,0),(46,1,'66.01 cm',0,0),(46,2,'79.38 cm',0,0),(46,3,'71.26 cm',0,0),(46,4,'37.53 cm',0,0),(46,5,'8.49 cm',0,0),(47,1,'9.09 cm',0,0),(47,2,'36.65 cm',0,0),(47,3,'97.25 cm',0,0),(47,4,'3.03 cm',0,0),(47,5,'22.46 cm',0,0),(48,1,'21.91 cm',0,0),(48,2,'89.92 cm',0,0),(48,3,'83 cm',0,0),(48,4,'58.53 cm',0,0),(48,5,'5.23 cm',0,0),(49,6,'44.06 cm',0,0),(49,7,'81.77 cm',0,0),(49,8,'3840x2160',0,0),(50,1,'93.92 cm',0,0),(50,2,'23.56 cm',0,0),(50,3,'99.24 cm',0,0),(50,4,'26.65 cm',0,0),(50,5,'84.73 cm',0,0),(51,1,'15.73 cm',0,0),(51,2,'52.11 cm',0,0),(51,3,'49.85 cm',0,0),(51,4,'81.69 cm',0,0),(51,5,'58.83 cm',0,0),(52,6,'54.22 cm',0,0),(52,7,'50.22 cm',0,0),(52,8,'3840x2160',0,0),(53,1,'93.69 cm',0,0),(53,2,'16.43 cm',0,0),(53,3,'44.54 cm',0,0),(53,4,'69.87 cm',0,0),(53,5,'55.21 cm',0,0),(54,1,'59.88 cm',0,0),(54,2,'10.9 cm',0,0),(54,3,'70.25 cm',0,0),(54,4,'87.21 cm',0,0),(54,5,'13.55 cm',0,0),(55,6,'89.84 cm',0,0),(55,7,'21.03 cm',0,0),(55,8,'2560x1440',0,0),(56,6,'11.48 cm',0,0),(56,7,'84.96 cm',0,0),(56,8,'3840x2160',0,0),(57,1,'52.13 cm',0,0),(57,2,'96.04 cm',0,0),(57,3,'48.32 cm',0,0),(57,4,'64.79 cm',0,0),(57,5,'46.01 cm',0,0),(58,6,'12.03 cm',0,0),(58,7,'74.44 cm',0,0),(58,8,'2560x1440',0,0),(59,1,'13.8 cm',0,0),(59,2,'54.93 cm',0,0),(59,3,'72.69 cm',0,0),(59,4,'44.66 cm',0,0),(59,5,'79.99 cm',0,0),(60,6,'1.3 cm',0,0),(60,7,'33.22 cm',0,0),(60,8,'1920x1080',0,0),(61,1,'90.63 cm',0,0),(61,2,'23.4 cm',0,0),(61,3,'87.3 cm',0,0),(61,4,'40.65 cm',0,0),(61,5,'17.96 cm',0,0),(62,6,'20.6 cm',0,0),(62,7,'57.83 cm',0,0),(62,8,'2560x1440',0,0),(63,1,'95.88 cm',0,0),(63,2,'15.87 cm',0,0),(63,3,'15.48 cm',0,0),(63,4,'92.36 cm',0,0),(63,5,'58.82 cm',0,0),(64,1,'65.85 cm',0,0),(64,2,'65.79 cm',0,0),(64,3,'10.78 cm',0,0),(64,4,'11.63 cm',0,0),(64,5,'21.31 cm',0,0),(65,6,'66.09 cm',0,0),(65,7,'1.22 cm',0,0),(65,8,'2560x1440',0,0),(66,1,'70.09 cm',0,0),(66,2,'78.96 cm',0,0),(66,3,'37.85 cm',0,0),(66,4,'80.39 cm',0,0),(66,5,'30.24 cm',0,0),(67,1,'21.29 cm',0,0),(67,2,'68.5 cm',0,0),(67,3,'41.75 cm',0,0),(67,4,'96.69 cm',0,0),(67,5,'62.42 cm',0,0),(68,1,'15.99 cm',0,0),(68,2,'83.9 cm',0,0),(68,3,'3.9 cm',0,0),(68,4,'97.87 cm',0,0),(68,5,'21.05 cm',0,0),(69,1,'20.58 cm',0,0),(69,2,'33.11 cm',0,0),(69,3,'76.06 cm',0,0),(69,4,'17.24 cm',0,0),(69,5,'65.06 cm',0,0),(70,1,'34.49 cm',0,0),(70,2,'19.19 cm',0,0),(70,3,'33.37 cm',0,0),(70,4,'43.59 cm',0,0),(70,5,'62.89 cm',0,0),(71,6,'37.48 cm',0,0),(71,7,'78.04 cm',0,0),(71,8,'1920x1080',0,0),(72,1,'3.64 cm',0,0),(72,2,'26.59 cm',0,0),(72,3,'11.27 cm',0,0),(72,4,'88.76 cm',0,0),(72,5,'64.21 cm',0,0),(73,1,'72.46 cm',0,0),(73,2,'48.08 cm',0,0),(73,3,'76.45 cm',0,0),(73,4,'35.72 cm',0,0),(73,5,'96.98 cm',0,0),(74,1,'24.44 cm',0,0),(74,2,'65.06 cm',0,0),(74,3,'32.35 cm',0,0),(74,4,'54.63 cm',0,0),(74,5,'16.5 cm',0,0),(75,6,'87.18 cm',0,0),(75,7,'86.28 cm',0,0),(75,8,'2560x1440',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute_translations`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_specification_attribute_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `attribute_id` bigint(20) unsigned NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `psat_unique` (`product_id`,`attribute_id`,`lang_code`),
  KEY `psat_product_attribute_index` (`product_id`,`attribute_id`),
  KEY `psat_product_id_index` (`product_id`),
  KEY `psat_attribute_id_index` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute_translations`
--

LOCK TABLES `ec_product_specification_attribute_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_tags_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint(20) unsigned NOT NULL,
  `to_product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`),
  KEY `idx_variation_id` (`variation_id`),
  KEY `idx_variation_attribute_covering` (`variation_id`,`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(6,1,6),(11,1,11),(16,1,16),(21,1,21),(26,1,26),(31,1,31),(46,1,46),(51,1,51),(56,1,56),(61,1,61),(66,1,66),(71,1,71),(76,1,76),(81,1,81),(116,1,116),(121,1,121),(126,1,126),(131,1,131),(136,1,136),(141,1,141),(2,2,2),(7,2,7),(12,2,12),(17,2,17),(22,2,22),(27,2,27),(32,2,32),(47,2,47),(52,2,52),(57,2,57),(62,2,62),(67,2,67),(72,2,72),(77,2,77),(82,2,82),(117,2,117),(122,2,122),(127,2,127),(132,2,132),(137,2,137),(142,2,142),(3,3,3),(8,3,8),(13,3,13),(18,3,18),(23,3,23),(28,3,28),(33,3,33),(48,3,48),(53,3,53),(58,3,58),(63,3,63),(68,3,68),(73,3,73),(78,3,78),(83,3,83),(118,3,118),(123,3,123),(128,3,128),(133,3,133),(138,3,138),(143,3,143),(4,4,4),(9,4,9),(14,4,14),(19,4,19),(24,4,24),(29,4,29),(34,4,34),(49,4,49),(54,4,54),(59,4,59),(64,4,64),(69,4,69),(74,4,74),(79,4,79),(84,4,84),(119,4,119),(124,4,124),(129,4,129),(134,4,134),(139,4,139),(144,4,144),(5,5,5),(10,5,10),(15,5,15),(20,5,20),(25,5,25),(30,5,30),(35,5,35),(50,5,50),(55,5,55),(60,5,60),(65,5,65),(70,5,70),(75,5,75),(80,5,80),(85,5,85),(120,5,120),(125,5,125),(130,5,130),(135,5,135),(140,5,140),(145,5,145),(36,6,36),(41,6,41),(86,6,86),(91,6,91),(96,6,96),(101,6,101),(106,6,106),(111,6,111),(37,7,37),(42,7,42),(87,7,87),(92,7,92),(97,7,97),(102,7,102),(107,7,107),(112,7,112),(38,8,38),(43,8,43),(88,8,88),(93,8,93),(98,8,98),(103,8,103),(108,8,108),(113,8,113),(39,9,39),(44,9,44),(89,9,89),(94,9,94),(99,9,99),(104,9,104),(109,9,109),(114,9,114),(40,10,40),(45,10,45),(90,10,90),(95,10,95),(100,10,100),(105,10,105),(110,10,110),(115,10,115);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `configurable_product_id` bigint(20) unsigned NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`),
  KEY `idx_configurable_product_id` (`configurable_product_id`),
  KEY `idx_product_variations_config` (`configurable_product_id`,`is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,19,1,1),(2,26,1,0),(3,33,1,0),(4,40,1,0),(5,47,1,0),(6,20,2,1),(7,27,2,0),(8,34,2,0),(9,41,2,0),(10,48,2,0),(11,21,3,1),(12,28,3,0),(13,35,3,0),(14,42,3,0),(15,49,3,0),(16,22,4,1),(17,29,4,0),(18,36,4,0),(19,43,4,0),(20,50,4,0),(21,23,5,1),(22,30,5,0),(23,37,5,0),(24,44,5,0),(25,51,5,0),(26,24,6,1),(27,31,6,0),(28,38,6,0),(29,45,6,0),(30,52,6,0),(31,25,7,1),(32,32,7,0),(33,39,7,0),(34,46,7,0),(35,53,7,0),(36,54,8,1),(37,56,8,0),(38,58,8,0),(39,60,8,0),(40,62,8,0),(41,55,9,1),(42,57,9,0),(43,59,9,0),(44,61,9,0),(45,63,9,0),(46,65,64,0),(47,66,64,1),(48,67,64,0),(49,68,64,0),(50,69,64,0),(51,71,70,0),(52,72,70,1),(53,73,70,0),(54,74,70,0),(55,75,70,0),(56,77,76,0),(57,78,76,1),(58,79,76,0),(59,80,76,0),(60,81,76,0),(61,83,82,0),(62,84,82,1),(63,85,82,0),(64,86,82,0),(65,87,82,0),(66,89,88,0),(67,90,88,1),(68,91,88,0),(69,92,88,0),(70,93,88,0),(71,95,94,0),(72,96,94,1),(73,97,94,0),(74,98,94,0),(75,99,94,0),(76,101,100,0),(77,102,100,1),(78,103,100,0),(79,104,100,0),(80,105,100,0),(81,107,106,0),(82,108,106,1),(83,109,106,0),(84,110,106,0),(85,111,106,0),(86,113,112,0),(87,114,112,1),(88,115,112,0),(89,116,112,0),(90,117,112,0),(91,119,118,0),(92,120,118,1),(93,121,118,0),(94,122,118,0),(95,123,118,0),(96,125,124,0),(97,126,124,1),(98,127,124,0),(99,128,124,0),(100,129,124,0),(101,131,130,0),(102,132,130,1),(103,133,130,0),(104,134,130,0),(105,135,130,0),(106,137,136,0),(107,138,136,1),(108,139,136,0),(109,140,136,0),(110,141,136,0),(111,143,142,0),(112,144,142,1),(113,145,142,0),(114,146,142,0),(115,147,142,0),(116,149,148,0),(117,150,148,1),(118,151,148,0),(119,152,148,0),(120,153,148,0),(121,155,154,0),(122,156,154,1),(123,157,154,0),(124,158,154,0),(125,159,154,0),(126,161,160,0),(127,162,160,1),(128,163,160,0),(129,164,160,0),(130,165,160,0),(131,167,166,0),(132,168,166,1),(133,169,166,0),(134,170,166,0),(135,171,166,0),(136,173,172,0),(137,174,172,1),(138,175,172,0),(139,176,172,0),(140,177,172,0),(141,179,178,0),(142,180,178,1),(143,181,178,0),(144,182,178,0),(145,183,178,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_views` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `views` int(11) NOT NULL DEFAULT 1,
  `date` date NOT NULL DEFAULT '2025-10-21',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
INSERT INTO `ec_product_views` VALUES (1,1,7,'2026-10-26'),(8,1,1,'2026-10-30'),(9,64,1,'2026-10-31'),(10,100,2,'2026-11-01'),(11,70,2,'2026-11-01'),(12,82,1,'2026-11-01'),(14,1,1,'2026-11-01'),(15,88,1,'2026-11-01'),(17,166,1,'2026-11-01');
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(1,2,0),(1,3,0),(1,4,0),(1,5,0),(1,6,0),(1,7,0),(2,8,0),(2,9,0),(1,64,0),(1,70,0),(1,76,0),(1,82,0),(1,88,0),(1,94,0),(1,100,0),(1,106,0),(2,112,0),(2,118,0),(2,124,0),(2,130,0),(2,136,0),(2,142,0),(1,148,0),(1,154,0),(1,160,0),(1,166,0),(1,172,0),(1,178,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `images` text DEFAULT NULL,
  `video_media` text DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `quantity` int(10) unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `with_storehouse_management` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `stock_status` varchar(191) DEFAULT 'in_stock',
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `brand_id` bigint(20) unsigned DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT 0,
  `variations_count` int(10) unsigned NOT NULL DEFAULT 0,
  `reviews_count` int(10) unsigned NOT NULL DEFAULT 0,
  `reviews_avg` decimal(3,2) NOT NULL DEFAULT 0.00,
  `sale_type` tinyint(4) NOT NULL DEFAULT 0,
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint(20) unsigned DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint(20) unsigned DEFAULT 0,
  `created_by_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) DEFAULT NULL,
  `product_type` varchar(60) DEFAULT 'physical',
  `barcode` varchar(150) DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `price_includes_tax` tinyint(1) NOT NULL DEFAULT 0,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT 0,
  `license_code_type` enum('auto_generate','pick_from_list') NOT NULL DEFAULT 'auto_generate',
  `minimum_order_quantity` int(10) unsigned DEFAULT 0,
  `maximum_order_quantity` int(10) unsigned DEFAULT 0,
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT 0,
  `specification_table_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`),
  KEY `idx_products_export` (`id`,`is_variation`),
  KEY `idx_variation_name_id` (`is_variation`,`name`,`id`),
  KEY `ec_products_variations_count_index` (`variations_count`),
  KEY `ec_products_slug_index` (`slug`),
  KEY `idx_products_status_variation` (`status`,`is_variation`,`id`),
  KEY `idx_products_price_sale` (`sale_type`,`sale_price`,`price`),
  KEY `idx_products_order_created` (`order`,`created_at`),
  KEY `idx_products_stock` (`with_storehouse_management`,`stock_status`,`quantity`),
  KEY `ec_products_reviews_count_index` (`reviews_count`),
  KEY `ec_products_reviews_avg_index` (`reviews_avg`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Black Oversize Stone Acid Wash T-Shirt',NULL,'Premium 240+ GSM 100% combed cotton stone acid wash oversized streetwear t-shirt with signature drop-shoulder fit.','<p>Crafted from premium heavyweight combed cotton, this stone acid wash oversized t-shirt delivers a distinct vintage texture and unbeatable drape. Pre-shrunk and built to last.</p><ul><li>Fabric: 100% Combed Cotton</li><li>Weight: 240+ GSM Heavyweight</li><li>Fit: Oversized / Drop Shoulder</li><li>Wash Care: Cold machine wash inside out</li></ul>','published','[\"products\\/habitto-acid-wash-1.png\"]',NULL,'HB-AW-001',0,124,0,1,'in_stock',1,NULL,0,5,0,0.00,0,650,590,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,'2026-10-25 13:01:21','2026-10-25 23:21:02',0,'Botble\\ACL\\Models\\User','products/habitto-acid-wash-1.png','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(2,'Vintage Grey Stone Acid Wash T-Shirt',NULL,'Heavyweight vintage grey stone wash t-shirt featuring distressed aesthetic and relaxed streetwear silhouette.','<p>Every piece undergoes a unique stone enzyme wash process, ensuring individual character and authentic streetwear styling.</p><ul><li>Fabric: 100% Organic Cotton</li><li>GSM: 250 Heavyweight</li><li>Finish: Enzyme Stone Washed</li></ul>','published','[\"products\\/habitto-acid-wash-2.png\"]',NULL,'HB-AW-002',0,50,0,1,'in_stock',1,NULL,0,5,0,0.00,0,680,620,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 13:01:21','2026-10-25 21:00:17',0,'Botble\\ACL\\Models\\User','products/habitto-acid-wash-2.png','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(3,'Over Sized Stone Acid Wash T-Shirt (Drop 2)',NULL,'Raw edge aesthetic stone washed loose fit t-shirt with breathable premium fabric.','<p>Designed for comfort and effortless casual style. Features reinforced collar ribbing and clean double-needle hem stitching.</p>','published','[\"products\\/habitto-acid-wash-3.png\"]',NULL,'HB-AW-003',0,50,0,1,'in_stock',1,NULL,0,5,0,0.00,0,650,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 13:01:22','2026-10-25 21:00:17',0,'Botble\\ACL\\Models\\User','products/habitto-acid-wash-3.png','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(4,'White Over Size T-Shirt (Signature Minimal)',NULL,'Clean aesthetic crisp white heavyweight oversized crewneck t-shirt made for everyday minimal streetwear.','<p>The ultimate wardrobe staple. High-density white cotton that does not sheer, maintaining its crisp structure wear after wear.</p><ul><li>Color: Pure White</li><li>Fit: Relaxed Boxy Fit</li><li>Fabric: 220 GSM Cotton</li></ul>','published','[\"products\\/habitto-white-oversize-1.png\"]',NULL,'HB-OS-001',0,50,0,1,'in_stock',1,NULL,0,5,0,0.00,0,550,499,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 13:01:22','2026-10-25 21:00:18',0,'Botble\\ACL\\Models\\User','products/habitto-white-oversize-1.png','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(5,'Off-White Heavyweight Oversized Tee',NULL,'Comfort-first drop shoulder tee in muted off-white tone with high-density ribbed neckband.','<p>Tailored for streetwear enthusiasts who value subtle tones and premium tactile feel.</p>','published','[\"products\\/habitto-white-oversize-2.png\"]',NULL,'HB-OS-002',0,50,0,1,'in_stock',1,NULL,0,5,0,0.00,0,550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 13:01:22','2026-10-25 21:00:18',0,'Botble\\ACL\\Models\\User','products/habitto-white-oversize-2.png','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(6,'Habitto Editorial Drop Graphic Tee',NULL,'Limited edition editorial drop streetwear aesthetic graphic t-shirt.','<p>Exclusive seasonal release featuring high-definition screen printing on luxury heavyweight fabric.</p>','published','[\"products\\/habitto-streetwear-shoot-1.jpg\"]',NULL,'HB-GR-001',0,50,0,1,'in_stock',1,NULL,0,5,0,0.00,0,650,599,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 13:01:22','2026-10-25 21:00:18',0,'Botble\\ACL\\Models\\User','products/habitto-streetwear-shoot-1.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(7,'Urban Heavyweight Fleece Hoodie',NULL,'350 GSM cotton fleece interior oversized warm hoodie for winter streetwear aesthetic.','<p>Deep front kangaroo pocket, double-lined hood, and thick ribbed cuffs for maximum heat retention and premium silhouette.</p>','published','[\"products\\/habitto-streetwear-shoot-2.jpg\"]',NULL,'HB-HD-001',0,50,0,1,'in_stock',1,NULL,0,5,0,0.00,0,1450,1299,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 13:01:22','2026-10-25 21:00:18',0,'Botble\\ACL\\Models\\User','products/habitto-streetwear-shoot-2.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(8,'Classic Tailored Formal Pants',NULL,'Premium stretch fabric slim fit formal dress pants with comfort waist.','<p>Wrinkle-resistant luxury fabric designed for both formal occasions and smart-casual streetwear ensembles.</p>','published','[\"products\\/habitto-streetwear-shoot-3.jpg\"]',NULL,'HB-FP-001',0,50,0,1,'in_stock',1,NULL,0,5,0,0.00,0,1150,990,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 13:01:22','2026-10-25 21:00:18',0,'Botble\\ACL\\Models\\User','products/habitto-streetwear-shoot-3.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(9,'Raw Denim Streetwear Jeans',NULL,'Durable rigid wash straight leg denim jeans designed for everyday street style.','<p>Heavyweight denim with reinforced rivets and custom Habbito hardware detailing.</p>','published','[\"products\\/habitto-streetwear-shoot-4.jpg\"]',NULL,'HB-JN-001',0,50,0,1,'in_stock',1,NULL,0,5,0,0.00,0,1350,1190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 13:01:22','2026-10-25 21:00:18',0,'Botble\\ACL\\Models\\User','products/habitto-streetwear-shoot-4.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(19,'Black Oversize Stone Acid Wash T-Shirt',NULL,'Premium 240+ GSM 100% combed cotton stone acid wash oversized streetwear t-shirt with signature drop-shoulder fit.','<p>Crafted from premium heavyweight combed cotton, this stone acid wash oversized t-shirt delivers a distinct vintage texture and unbeatable drape. Pre-shrunk and built to last.</p><ul><li>Fabric: 100% Combed Cotton</li><li>Weight: 240+ GSM Heavyweight</li><li>Fit: Oversized / Drop Shoulder</li><li>Wash Care: Cold machine wash inside out</li></ul>','published','[\"products\\/habitto-acid-wash-1.png\"]',NULL,'HB-AW-001-S',0,24,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,590,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:35','2026-10-25 23:21:03',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(20,'Vintage Grey Stone Acid Wash T-Shirt - S',NULL,'Heavyweight vintage grey stone wash t-shirt featuring distressed aesthetic and relaxed streetwear silhouette.','<p>Every piece undergoes a unique stone enzyme wash process, ensuring individual character and authentic streetwear styling.</p><ul><li>Fabric: 100% Organic Cotton</li><li>GSM: 250 Heavyweight</li><li>Finish: Enzyme Stone Washed</li></ul>','published','[\"products\\/habitto-acid-wash-2.png\"]',NULL,'HB-AW-002-S',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,680,620,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:35','2026-10-25 23:09:35',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(21,'Over Sized Stone Acid Wash T-Shirt (Drop 2) - S',NULL,'Raw edge aesthetic stone washed loose fit t-shirt with breathable premium fabric.','<p>Designed for comfort and effortless casual style. Features reinforced collar ribbing and clean double-needle hem stitching.</p>','published','[\"products\\/habitto-acid-wash-3.png\"]',NULL,'HB-AW-003-S',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:35','2026-10-25 23:09:35',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(22,'White Over Size T-Shirt (Signature Minimal) - S',NULL,'Clean aesthetic crisp white heavyweight oversized crewneck t-shirt made for everyday minimal streetwear.','<p>The ultimate wardrobe staple. High-density white cotton that does not sheer, maintaining its crisp structure wear after wear.</p><ul><li>Color: Pure White</li><li>Fit: Relaxed Boxy Fit</li><li>Fabric: 220 GSM Cotton</li></ul>','published','[\"products\\/habitto-white-oversize-1.png\"]',NULL,'HB-OS-001-S',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,550,499,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:35','2026-10-25 23:09:35',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(23,'Off-White Heavyweight Oversized Tee - S',NULL,'Comfort-first drop shoulder tee in muted off-white tone with high-density ribbed neckband.','<p>Tailored for streetwear enthusiasts who value subtle tones and premium tactile feel.</p>','published','[\"products\\/habitto-white-oversize-2.png\"]',NULL,'HB-OS-002-S',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:35','2026-10-25 23:09:35',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(24,'Habitto Editorial Drop Graphic Tee - S',NULL,'Limited edition editorial drop streetwear aesthetic graphic t-shirt.','<p>Exclusive seasonal release featuring high-definition screen printing on luxury heavyweight fabric.</p>','published','[\"products\\/habitto-streetwear-shoot-1.jpg\"]',NULL,'HB-GR-001-S',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,599,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:35','2026-10-25 23:09:35',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(25,'Urban Heavyweight Fleece Hoodie - S',NULL,'350 GSM cotton fleece interior oversized warm hoodie for winter streetwear aesthetic.','<p>Deep front kangaroo pocket, double-lined hood, and thick ribbed cuffs for maximum heat retention and premium silhouette.</p>','published','[\"products\\/habitto-streetwear-shoot-2.jpg\"]',NULL,'HB-HD-001-S',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1450,1299,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:35','2026-10-25 23:09:35',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(26,'Black Oversize Stone Acid Wash T-Shirt',NULL,'Premium 240+ GSM 100% combed cotton stone acid wash oversized streetwear t-shirt with signature drop-shoulder fit.','<p>Crafted from premium heavyweight combed cotton, this stone acid wash oversized t-shirt delivers a distinct vintage texture and unbeatable drape. Pre-shrunk and built to last.</p><ul><li>Fabric: 100% Combed Cotton</li><li>Weight: 240+ GSM Heavyweight</li><li>Fit: Oversized / Drop Shoulder</li><li>Wash Care: Cold machine wash inside out</li></ul>','published','[\"products\\/habitto-acid-wash-1.png\"]',NULL,'HB-AW-001-M',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,590,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:21:03',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(27,'Vintage Grey Stone Acid Wash T-Shirt - M',NULL,'Heavyweight vintage grey stone wash t-shirt featuring distressed aesthetic and relaxed streetwear silhouette.','<p>Every piece undergoes a unique stone enzyme wash process, ensuring individual character and authentic streetwear styling.</p><ul><li>Fabric: 100% Organic Cotton</li><li>GSM: 250 Heavyweight</li><li>Finish: Enzyme Stone Washed</li></ul>','published','[\"products\\/habitto-acid-wash-2.png\"]',NULL,'HB-AW-002-M',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,680,620,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:09:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(28,'Over Sized Stone Acid Wash T-Shirt (Drop 2) - M',NULL,'Raw edge aesthetic stone washed loose fit t-shirt with breathable premium fabric.','<p>Designed for comfort and effortless casual style. Features reinforced collar ribbing and clean double-needle hem stitching.</p>','published','[\"products\\/habitto-acid-wash-3.png\"]',NULL,'HB-AW-003-M',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:09:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(29,'White Over Size T-Shirt (Signature Minimal) - M',NULL,'Clean aesthetic crisp white heavyweight oversized crewneck t-shirt made for everyday minimal streetwear.','<p>The ultimate wardrobe staple. High-density white cotton that does not sheer, maintaining its crisp structure wear after wear.</p><ul><li>Color: Pure White</li><li>Fit: Relaxed Boxy Fit</li><li>Fabric: 220 GSM Cotton</li></ul>','published','[\"products\\/habitto-white-oversize-1.png\"]',NULL,'HB-OS-001-M',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,550,499,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:09:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(30,'Off-White Heavyweight Oversized Tee - M',NULL,'Comfort-first drop shoulder tee in muted off-white tone with high-density ribbed neckband.','<p>Tailored for streetwear enthusiasts who value subtle tones and premium tactile feel.</p>','published','[\"products\\/habitto-white-oversize-2.png\"]',NULL,'HB-OS-002-M',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:09:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(31,'Habitto Editorial Drop Graphic Tee - M',NULL,'Limited edition editorial drop streetwear aesthetic graphic t-shirt.','<p>Exclusive seasonal release featuring high-definition screen printing on luxury heavyweight fabric.</p>','published','[\"products\\/habitto-streetwear-shoot-1.jpg\"]',NULL,'HB-GR-001-M',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,599,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:09:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(32,'Urban Heavyweight Fleece Hoodie - M',NULL,'350 GSM cotton fleece interior oversized warm hoodie for winter streetwear aesthetic.','<p>Deep front kangaroo pocket, double-lined hood, and thick ribbed cuffs for maximum heat retention and premium silhouette.</p>','published','[\"products\\/habitto-streetwear-shoot-2.jpg\"]',NULL,'HB-HD-001-M',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1450,1299,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:09:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(33,'Black Oversize Stone Acid Wash T-Shirt',NULL,'Premium 240+ GSM 100% combed cotton stone acid wash oversized streetwear t-shirt with signature drop-shoulder fit.','<p>Crafted from premium heavyweight combed cotton, this stone acid wash oversized t-shirt delivers a distinct vintage texture and unbeatable drape. Pre-shrunk and built to last.</p><ul><li>Fabric: 100% Combed Cotton</li><li>Weight: 240+ GSM Heavyweight</li><li>Fit: Oversized / Drop Shoulder</li><li>Wash Care: Cold machine wash inside out</li></ul>','published','[\"products\\/habitto-acid-wash-1.png\"]',NULL,'HB-AW-001-L',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,590,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:21:03',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(34,'Vintage Grey Stone Acid Wash T-Shirt - L',NULL,'Heavyweight vintage grey stone wash t-shirt featuring distressed aesthetic and relaxed streetwear silhouette.','<p>Every piece undergoes a unique stone enzyme wash process, ensuring individual character and authentic streetwear styling.</p><ul><li>Fabric: 100% Organic Cotton</li><li>GSM: 250 Heavyweight</li><li>Finish: Enzyme Stone Washed</li></ul>','published','[\"products\\/habitto-acid-wash-2.png\"]',NULL,'HB-AW-002-L',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,680,620,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:09:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(35,'Over Sized Stone Acid Wash T-Shirt (Drop 2) - L',NULL,'Raw edge aesthetic stone washed loose fit t-shirt with breathable premium fabric.','<p>Designed for comfort and effortless casual style. Features reinforced collar ribbing and clean double-needle hem stitching.</p>','published','[\"products\\/habitto-acid-wash-3.png\"]',NULL,'HB-AW-003-L',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:09:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(36,'White Over Size T-Shirt (Signature Minimal) - L',NULL,'Clean aesthetic crisp white heavyweight oversized crewneck t-shirt made for everyday minimal streetwear.','<p>The ultimate wardrobe staple. High-density white cotton that does not sheer, maintaining its crisp structure wear after wear.</p><ul><li>Color: Pure White</li><li>Fit: Relaxed Boxy Fit</li><li>Fabric: 220 GSM Cotton</li></ul>','published','[\"products\\/habitto-white-oversize-1.png\"]',NULL,'HB-OS-001-L',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,550,499,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:09:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(37,'Off-White Heavyweight Oversized Tee - L',NULL,'Comfort-first drop shoulder tee in muted off-white tone with high-density ribbed neckband.','<p>Tailored for streetwear enthusiasts who value subtle tones and premium tactile feel.</p>','published','[\"products\\/habitto-white-oversize-2.png\"]',NULL,'HB-OS-002-L',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:09:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(38,'Habitto Editorial Drop Graphic Tee - L',NULL,'Limited edition editorial drop streetwear aesthetic graphic t-shirt.','<p>Exclusive seasonal release featuring high-definition screen printing on luxury heavyweight fabric.</p>','published','[\"products\\/habitto-streetwear-shoot-1.jpg\"]',NULL,'HB-GR-001-L',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,599,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:09:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(39,'Urban Heavyweight Fleece Hoodie - L',NULL,'350 GSM cotton fleece interior oversized warm hoodie for winter streetwear aesthetic.','<p>Deep front kangaroo pocket, double-lined hood, and thick ribbed cuffs for maximum heat retention and premium silhouette.</p>','published','[\"products\\/habitto-streetwear-shoot-2.jpg\"]',NULL,'HB-HD-001-L',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1450,1299,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:09:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(40,'Black Oversize Stone Acid Wash T-Shirt',NULL,'Premium 240+ GSM 100% combed cotton stone acid wash oversized streetwear t-shirt with signature drop-shoulder fit.','<p>Crafted from premium heavyweight combed cotton, this stone acid wash oversized t-shirt delivers a distinct vintage texture and unbeatable drape. Pre-shrunk and built to last.</p><ul><li>Fabric: 100% Combed Cotton</li><li>Weight: 240+ GSM Heavyweight</li><li>Fit: Oversized / Drop Shoulder</li><li>Wash Care: Cold machine wash inside out</li></ul>','published','[\"products\\/habitto-acid-wash-1.png\"]',NULL,'HB-AW-001-XL',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,590,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:21:03',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(41,'Vintage Grey Stone Acid Wash T-Shirt - XL',NULL,'Heavyweight vintage grey stone wash t-shirt featuring distressed aesthetic and relaxed streetwear silhouette.','<p>Every piece undergoes a unique stone enzyme wash process, ensuring individual character and authentic streetwear styling.</p><ul><li>Fabric: 100% Organic Cotton</li><li>GSM: 250 Heavyweight</li><li>Finish: Enzyme Stone Washed</li></ul>','published','[\"products\\/habitto-acid-wash-2.png\"]',NULL,'HB-AW-002-XL',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,680,620,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:09:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(42,'Over Sized Stone Acid Wash T-Shirt (Drop 2) - XL',NULL,'Raw edge aesthetic stone washed loose fit t-shirt with breathable premium fabric.','<p>Designed for comfort and effortless casual style. Features reinforced collar ribbing and clean double-needle hem stitching.</p>','published','[\"products\\/habitto-acid-wash-3.png\"]',NULL,'HB-AW-003-XL',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:36','2026-10-25 23:09:36',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(43,'White Over Size T-Shirt (Signature Minimal) - XL',NULL,'Clean aesthetic crisp white heavyweight oversized crewneck t-shirt made for everyday minimal streetwear.','<p>The ultimate wardrobe staple. High-density white cotton that does not sheer, maintaining its crisp structure wear after wear.</p><ul><li>Color: Pure White</li><li>Fit: Relaxed Boxy Fit</li><li>Fabric: 220 GSM Cotton</li></ul>','published','[\"products\\/habitto-white-oversize-1.png\"]',NULL,'HB-OS-001-XL',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,550,499,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(44,'Off-White Heavyweight Oversized Tee - XL',NULL,'Comfort-first drop shoulder tee in muted off-white tone with high-density ribbed neckband.','<p>Tailored for streetwear enthusiasts who value subtle tones and premium tactile feel.</p>','published','[\"products\\/habitto-white-oversize-2.png\"]',NULL,'HB-OS-002-XL',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(45,'Habitto Editorial Drop Graphic Tee - XL',NULL,'Limited edition editorial drop streetwear aesthetic graphic t-shirt.','<p>Exclusive seasonal release featuring high-definition screen printing on luxury heavyweight fabric.</p>','published','[\"products\\/habitto-streetwear-shoot-1.jpg\"]',NULL,'HB-GR-001-XL',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,599,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(46,'Urban Heavyweight Fleece Hoodie - XL',NULL,'350 GSM cotton fleece interior oversized warm hoodie for winter streetwear aesthetic.','<p>Deep front kangaroo pocket, double-lined hood, and thick ribbed cuffs for maximum heat retention and premium silhouette.</p>','published','[\"products\\/habitto-streetwear-shoot-2.jpg\"]',NULL,'HB-HD-001-XL',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1450,1299,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(47,'Black Oversize Stone Acid Wash T-Shirt',NULL,'Premium 240+ GSM 100% combed cotton stone acid wash oversized streetwear t-shirt with signature drop-shoulder fit.','<p>Crafted from premium heavyweight combed cotton, this stone acid wash oversized t-shirt delivers a distinct vintage texture and unbeatable drape. Pre-shrunk and built to last.</p><ul><li>Fabric: 100% Combed Cotton</li><li>Weight: 240+ GSM Heavyweight</li><li>Fit: Oversized / Drop Shoulder</li><li>Wash Care: Cold machine wash inside out</li></ul>','published','[\"products\\/habitto-acid-wash-1.png\"]',NULL,'HB-AW-001-XXL',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,590,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:21:03',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(48,'Vintage Grey Stone Acid Wash T-Shirt - XXL',NULL,'Heavyweight vintage grey stone wash t-shirt featuring distressed aesthetic and relaxed streetwear silhouette.','<p>Every piece undergoes a unique stone enzyme wash process, ensuring individual character and authentic streetwear styling.</p><ul><li>Fabric: 100% Organic Cotton</li><li>GSM: 250 Heavyweight</li><li>Finish: Enzyme Stone Washed</li></ul>','published','[\"products\\/habitto-acid-wash-2.png\"]',NULL,'HB-AW-002-XXL',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,680,620,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(49,'Over Sized Stone Acid Wash T-Shirt (Drop 2) - XXL',NULL,'Raw edge aesthetic stone washed loose fit t-shirt with breathable premium fabric.','<p>Designed for comfort and effortless casual style. Features reinforced collar ribbing and clean double-needle hem stitching.</p>','published','[\"products\\/habitto-acid-wash-3.png\"]',NULL,'HB-AW-003-XXL',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(50,'White Over Size T-Shirt (Signature Minimal) - XXL',NULL,'Clean aesthetic crisp white heavyweight oversized crewneck t-shirt made for everyday minimal streetwear.','<p>The ultimate wardrobe staple. High-density white cotton that does not sheer, maintaining its crisp structure wear after wear.</p><ul><li>Color: Pure White</li><li>Fit: Relaxed Boxy Fit</li><li>Fabric: 220 GSM Cotton</li></ul>','published','[\"products\\/habitto-white-oversize-1.png\"]',NULL,'HB-OS-001-XXL',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,550,499,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(51,'Off-White Heavyweight Oversized Tee - XXL',NULL,'Comfort-first drop shoulder tee in muted off-white tone with high-density ribbed neckband.','<p>Tailored for streetwear enthusiasts who value subtle tones and premium tactile feel.</p>','published','[\"products\\/habitto-white-oversize-2.png\"]',NULL,'HB-OS-002-XXL',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(52,'Habitto Editorial Drop Graphic Tee - XXL',NULL,'Limited edition editorial drop streetwear aesthetic graphic t-shirt.','<p>Exclusive seasonal release featuring high-definition screen printing on luxury heavyweight fabric.</p>','published','[\"products\\/habitto-streetwear-shoot-1.jpg\"]',NULL,'HB-GR-001-XXL',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,599,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(53,'Urban Heavyweight Fleece Hoodie - XXL',NULL,'350 GSM cotton fleece interior oversized warm hoodie for winter streetwear aesthetic.','<p>Deep front kangaroo pocket, double-lined hood, and thick ribbed cuffs for maximum heat retention and premium silhouette.</p>','published','[\"products\\/habitto-streetwear-shoot-2.jpg\"]',NULL,'HB-HD-001-XXL',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1450,1299,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(54,'Classic Tailored Formal Pants - 28',NULL,'Premium stretch fabric slim fit formal dress pants with comfort waist.','<p>Wrinkle-resistant luxury fabric designed for both formal occasions and smart-casual streetwear ensembles.</p>','published','[\"products\\/habitto-streetwear-shoot-3.jpg\"]',NULL,'HB-FP-001-28',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,990,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(55,'Raw Denim Streetwear Jeans - 28',NULL,'Durable rigid wash straight leg denim jeans designed for everyday street style.','<p>Heavyweight denim with reinforced rivets and custom Habbito hardware detailing.</p>','published','[\"products\\/habitto-streetwear-shoot-4.jpg\"]',NULL,'HB-JN-001-28',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1350,1190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(56,'Classic Tailored Formal Pants - 30',NULL,'Premium stretch fabric slim fit formal dress pants with comfort waist.','<p>Wrinkle-resistant luxury fabric designed for both formal occasions and smart-casual streetwear ensembles.</p>','published','[\"products\\/habitto-streetwear-shoot-3.jpg\"]',NULL,'HB-FP-001-30',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,990,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(57,'Raw Denim Streetwear Jeans - 30',NULL,'Durable rigid wash straight leg denim jeans designed for everyday street style.','<p>Heavyweight denim with reinforced rivets and custom Habbito hardware detailing.</p>','published','[\"products\\/habitto-streetwear-shoot-4.jpg\"]',NULL,'HB-JN-001-30',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1350,1190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(58,'Classic Tailored Formal Pants - 32',NULL,'Premium stretch fabric slim fit formal dress pants with comfort waist.','<p>Wrinkle-resistant luxury fabric designed for both formal occasions and smart-casual streetwear ensembles.</p>','published','[\"products\\/habitto-streetwear-shoot-3.jpg\"]',NULL,'HB-FP-001-32',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,990,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(59,'Raw Denim Streetwear Jeans - 32',NULL,'Durable rigid wash straight leg denim jeans designed for everyday street style.','<p>Heavyweight denim with reinforced rivets and custom Habbito hardware detailing.</p>','published','[\"products\\/habitto-streetwear-shoot-4.jpg\"]',NULL,'HB-JN-001-32',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1350,1190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(60,'Classic Tailored Formal Pants - 34',NULL,'Premium stretch fabric slim fit formal dress pants with comfort waist.','<p>Wrinkle-resistant luxury fabric designed for both formal occasions and smart-casual streetwear ensembles.</p>','published','[\"products\\/habitto-streetwear-shoot-3.jpg\"]',NULL,'HB-FP-001-34',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,990,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(61,'Raw Denim Streetwear Jeans - 34',NULL,'Durable rigid wash straight leg denim jeans designed for everyday street style.','<p>Heavyweight denim with reinforced rivets and custom Habbito hardware detailing.</p>','published','[\"products\\/habitto-streetwear-shoot-4.jpg\"]',NULL,'HB-JN-001-34',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1350,1190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(62,'Classic Tailored Formal Pants - 36',NULL,'Premium stretch fabric slim fit formal dress pants with comfort waist.','<p>Wrinkle-resistant luxury fabric designed for both formal occasions and smart-casual streetwear ensembles.</p>','published','[\"products\\/habitto-streetwear-shoot-3.jpg\"]',NULL,'HB-FP-001-36',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,990,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:37','2026-10-25 23:09:37',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(63,'Raw Denim Streetwear Jeans - 36',NULL,'Durable rigid wash straight leg denim jeans designed for everyday street style.','<p>Heavyweight denim with reinforced rivets and custom Habbito hardware detailing.</p>','published','[\"products\\/habitto-streetwear-shoot-4.jpg\"]',NULL,'HB-JN-001-36',0,25,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1350,1190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-25 23:09:38','2026-10-25 23:09:38',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(64,'Navy Blue Pique Knit Polo T-Shirt',NULL,'প্রিমিয়াম ২৩০ জিএসএম ১০০% কম্বড কটন পিক পোলো শার্ট। ব্রিদেবল ফেব্রিক ও এলিগেন্ট লুক।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>প্রিমিয়াম ২৩০ জিএসএম ১০০% কম্বড কটন পিক পোলো শার্ট। ব্রিদেবল ফেব্রিক ও এলিগেন্ট লুক।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 230 GSM 100% Combed Compact Cotton Pique</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">মেশিন ওয়াশ বা নরমাল হ্যান্ড ওয়াশ। হালকা তাপে আয়রন করুন।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-polo-navy.jpg\"]',NULL,'HBT-PL-01',0,100,0,1,'in_stock',1,NULL,0,0,0,0.00,0,850,750,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-navy.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(65,'Navy Blue Pique Knit Polo T-Shirt - S',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-navy.jpg\"]',NULL,'HBT-PL-01-S',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,850,750,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-navy.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(66,'Navy Blue Pique Knit Polo T-Shirt - M',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-navy.jpg\"]',NULL,'HBT-PL-01-M',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,850,750,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-navy.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(67,'Navy Blue Pique Knit Polo T-Shirt - L',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-navy.jpg\"]',NULL,'HBT-PL-01-L',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,850,750,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-navy.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(68,'Navy Blue Pique Knit Polo T-Shirt - XL',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-navy.jpg\"]',NULL,'HBT-PL-01-XL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,850,750,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-navy.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(69,'Navy Blue Pique Knit Polo T-Shirt - XXL',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-navy.jpg\"]',NULL,'HBT-PL-01-XXL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,850,750,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-navy.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(70,'Classic Black Tipped Collar Polo Shirt',NULL,'স্মার্ট কনট্রাস্ট টিপড কলার ও স্লিভ ডিটেইল সহ ক্লাসিক ব্ল্যাক পোলো শার্ট।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>স্মার্ট কনট্রাস্ট টিপড কলার ও স্লিভ ডিটেইল সহ ক্লাসিক ব্ল্যাক পোলো শার্ট।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 240 GSM Double Lacoste Cotton Fabric</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">ব্লিচ ব্যবহার করবেন না। ছায়ায় শুকান।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-polo-black.jpg\"]',NULL,'HBT-PL-02',0,100,0,1,'in_stock',1,NULL,0,0,0,0.00,0,890,790,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(71,'Classic Black Tipped Collar Polo Shirt - S',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-black.jpg\"]',NULL,'HBT-PL-02-S',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,890,790,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(72,'Classic Black Tipped Collar Polo Shirt - M',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-black.jpg\"]',NULL,'HBT-PL-02-M',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,890,790,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(73,'Classic Black Tipped Collar Polo Shirt - L',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-black.jpg\"]',NULL,'HBT-PL-02-L',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,890,790,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(74,'Classic Black Tipped Collar Polo Shirt - XL',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-black.jpg\"]',NULL,'HBT-PL-02-XL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,890,790,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(75,'Classic Black Tipped Collar Polo Shirt - XXL',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-black.jpg\"]',NULL,'HBT-PL-02-XXL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,890,790,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(76,'Olive Green Textured Minimal Polo',NULL,'আকর্ষণীয় অলিভ গ্রিন টেক্সচার্ড কটন পোলো শার্ট। ক্যাজুয়াল ও সেমি-ফরমাল আউটফিটের জন্য সেরা।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>আকর্ষণীয় অলিভ গ্রিন টেক্সচার্ড কটন পোলো শার্ট। ক্যাজুয়াল ও সেমি-ফরমাল আউটফিটের জন্য সেরা।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 220 GSM Breathable Honeycomb Pique Cotton</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">ঠান্ডা পানিতে ওয়াশ করুন।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-polo-olive.jpg\"]',NULL,'HBT-PL-03',0,100,0,1,'in_stock',0,NULL,0,0,0,0.00,0,920,820,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(77,'Olive Green Textured Minimal Polo - S',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-olive.jpg\"]',NULL,'HBT-PL-03-S',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,920,820,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(78,'Olive Green Textured Minimal Polo - M',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-olive.jpg\"]',NULL,'HBT-PL-03-M',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,920,820,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(79,'Olive Green Textured Minimal Polo - L',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-olive.jpg\"]',NULL,'HBT-PL-03-L',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,920,820,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(80,'Olive Green Textured Minimal Polo - XL',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-olive.jpg\"]',NULL,'HBT-PL-03-XL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,920,820,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(81,'Olive Green Textured Minimal Polo - XXL',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-olive.jpg\"]',NULL,'HBT-PL-03-XXL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,920,820,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(82,'Off-White Solid Smart Fit Polo',NULL,'অফ-হোয়াইট মিনিমালিস্ট সলিড পোলো শার্ট। প্রিমিয়াম ফিনিশিং ও নিখুঁত ফিটিং।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>অফ-হোয়াইট মিনিমালিস্ট সলিড পোলো শার্ট। প্রিমিয়াম ফিনিশিং ও নিখুঁত ফিটিং।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 100% Combed Cotton with Enzyme Silicon Softener Wash</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">একই রঙের কাপড়ের সাথে ওয়াশ করুন।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-polo-white.jpg\"]',NULL,'HBT-PL-04',0,100,0,1,'in_stock',0,NULL,0,0,0,0.00,0,850,720,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-white.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(83,'Off-White Solid Smart Fit Polo - S',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-white.jpg\"]',NULL,'HBT-PL-04-S',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,850,720,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-white.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(84,'Off-White Solid Smart Fit Polo - M',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-white.jpg\"]',NULL,'HBT-PL-04-M',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,850,720,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-white.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(85,'Off-White Solid Smart Fit Polo - L',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-white.jpg\"]',NULL,'HBT-PL-04-L',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,850,720,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-white.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(86,'Off-White Solid Smart Fit Polo - XL',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-white.jpg\"]',NULL,'HBT-PL-04-XL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,850,720,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-white.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(87,'Off-White Solid Smart Fit Polo - XXL',NULL,NULL,NULL,'published','[\"products\\/hbt-polo-white.jpg\"]',NULL,'HBT-PL-04-XXL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,850,720,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-polo-white.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(88,'Charcoal Grey Heavyweight Fleece Hoodie',NULL,'৩৪০ জিএসএম হেভিওয়েট ফ্লিস হুডি। কনকনে শীতে সর্বোচ্চ উষ্ণতা ও স্ট্রিটওয়্যার কমফোর্ট।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>৩৪০ জিএসএম হেভিওয়েট ফ্লিস হুডি। কনকনে শীতে সর্বোচ্চ উষ্ণতা ও স্ট্রিটওয়্যার কমফোর্ট।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 340 GSM Heavyweight Organic Cotton Terry Fleece</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">ঠান্ডা পানিতে উল্টো করে ওয়াশ করুন। সরাসরি রোদে বেশিক্ষণ রাখবেন না।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-hoodie-charcoal.jpg\"]',NULL,'HBT-HD-01',0,100,0,1,'in_stock',1,NULL,0,0,0,0.00,0,1550,1350,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-hoodie-charcoal.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(89,'Charcoal Grey Heavyweight Fleece Hoodie - S',NULL,NULL,NULL,'published','[\"products\\/hbt-hoodie-charcoal.jpg\"]',NULL,'HBT-HD-01-S',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1550,1350,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-hoodie-charcoal.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(90,'Charcoal Grey Heavyweight Fleece Hoodie - M',NULL,NULL,NULL,'published','[\"products\\/hbt-hoodie-charcoal.jpg\"]',NULL,'HBT-HD-01-M',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1550,1350,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-hoodie-charcoal.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(91,'Charcoal Grey Heavyweight Fleece Hoodie - L',NULL,NULL,NULL,'published','[\"products\\/hbt-hoodie-charcoal.jpg\"]',NULL,'HBT-HD-01-L',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1550,1350,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-hoodie-charcoal.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(92,'Charcoal Grey Heavyweight Fleece Hoodie - XL',NULL,NULL,NULL,'published','[\"products\\/hbt-hoodie-charcoal.jpg\"]',NULL,'HBT-HD-01-XL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1550,1350,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-hoodie-charcoal.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(93,'Charcoal Grey Heavyweight Fleece Hoodie - XXL',NULL,NULL,NULL,'published','[\"products\\/hbt-hoodie-charcoal.jpg\"]',NULL,'HBT-HD-01-XXL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1550,1350,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-hoodie-charcoal.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(94,'Maroon Minimalist Streetwear Pullover Hoodie',NULL,'উষ্ণ সফট ব্রাশড ফ্লিস ও কাঙ্গারু পকেট সহ ড্রপ-শোল্ডার মেরুন হুডি।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>উষ্ণ সফট ব্রাশড ফ্লিস ও কাঙ্গারু পকেট সহ ড্রপ-শোল্ডার মেরুন হুডি।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 320 GSM Brushed Fleece Cotton Blend</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">মেশিন ওয়াশ কোল্ড। হালকা তাপে শুকান।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-hoodie-maroon.jpg\"]',NULL,'HBT-HD-02',0,100,0,1,'in_stock',1,NULL,0,0,0,0.00,0,1490,1290,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-hoodie-maroon.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(95,'Maroon Minimalist Streetwear Pullover Hoodie - S',NULL,NULL,NULL,'published','[\"products\\/hbt-hoodie-maroon.jpg\"]',NULL,'HBT-HD-02-S',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1490,1290,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-hoodie-maroon.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(96,'Maroon Minimalist Streetwear Pullover Hoodie - M',NULL,NULL,NULL,'published','[\"products\\/hbt-hoodie-maroon.jpg\"]',NULL,'HBT-HD-02-M',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1490,1290,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-hoodie-maroon.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(97,'Maroon Minimalist Streetwear Pullover Hoodie - L',NULL,NULL,NULL,'published','[\"products\\/hbt-hoodie-maroon.jpg\"]',NULL,'HBT-HD-02-L',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1490,1290,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-hoodie-maroon.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(98,'Maroon Minimalist Streetwear Pullover Hoodie - XL',NULL,NULL,NULL,'published','[\"products\\/hbt-hoodie-maroon.jpg\"]',NULL,'HBT-HD-02-XL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1490,1290,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-hoodie-maroon.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(99,'Maroon Minimalist Streetwear Pullover Hoodie - XXL',NULL,NULL,NULL,'published','[\"products\\/hbt-hoodie-maroon.jpg\"]',NULL,'HBT-HD-02-XXL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1490,1290,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-hoodie-maroon.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(100,'Ash Grey Drop-Shoulder French Terry Sweatshirt',NULL,'ক্যাজুয়াল উইন্টার স্টাইলের জন্য অ্যাস গ্রে ড্রপ-শোল্ডার ফ্রেঞ্চ টেরি সোয়েটশার্ট।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>ক্যাজুয়াল উইন্টার স্টাইলের জন্য অ্যাস গ্রে ড্রপ-শোল্ডার ফ্রেঞ্চ টেরি সোয়েটশার্ট।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 300 GSM Diagonal Loop French Terry Cotton</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">হ্যান্ড ওয়াশ বা জেন্টল মেশিন ওয়াশ।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-sweatshirt-ash.jpg\"]',NULL,'HBT-SW-01',0,100,0,1,'in_stock',1,NULL,0,0,0,0.00,0,1190,990,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-sweatshirt-ash.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(101,'Ash Grey Drop-Shoulder French Terry Sweatshirt - S',NULL,NULL,NULL,'published','[\"products\\/hbt-sweatshirt-ash.jpg\"]',NULL,'HBT-SW-01-S',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1190,990,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-sweatshirt-ash.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(102,'Ash Grey Drop-Shoulder French Terry Sweatshirt - M',NULL,NULL,NULL,'published','[\"products\\/hbt-sweatshirt-ash.jpg\"]',NULL,'HBT-SW-01-M',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1190,990,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-sweatshirt-ash.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(103,'Ash Grey Drop-Shoulder French Terry Sweatshirt - L',NULL,NULL,NULL,'published','[\"products\\/hbt-sweatshirt-ash.jpg\"]',NULL,'HBT-SW-01-L',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1190,990,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-sweatshirt-ash.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(104,'Ash Grey Drop-Shoulder French Terry Sweatshirt - XL',NULL,NULL,NULL,'published','[\"products\\/hbt-sweatshirt-ash.jpg\"]',NULL,'HBT-SW-01-XL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1190,990,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-sweatshirt-ash.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(105,'Ash Grey Drop-Shoulder French Terry Sweatshirt - XXL',NULL,NULL,NULL,'published','[\"products\\/hbt-sweatshirt-ash.jpg\"]',NULL,'HBT-SW-01-XXL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1190,990,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-sweatshirt-ash.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(106,'Washed Black Relaxed Crewneck Sweatshirt',NULL,'ভিন্টেজ এনজাইম ওয়াশড ক্রু-নেক ব্ল্যাক সোয়েটশার্ট। রিল্যাক্সড কাট ও প্রিমিয়াম ফিল।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>ভিন্টেজ এনজাইম ওয়াশড ক্রু-নেক ব্ল্যাক সোয়েটশার্ট। রিল্যাক্সড কাট ও প্রিমিয়াম ফিল।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 310 GSM Enzyme Stone-Washed 100% Cotton</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">উল্টো করে ধুয়ে শুকান।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-sweatshirt-black.jpg\"]',NULL,'HBT-SW-02',0,100,0,1,'in_stock',0,NULL,0,0,0,0.00,0,1250,1050,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-sweatshirt-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(107,'Washed Black Relaxed Crewneck Sweatshirt - S',NULL,NULL,NULL,'published','[\"products\\/hbt-sweatshirt-black.jpg\"]',NULL,'HBT-SW-02-S',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1250,1050,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-sweatshirt-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(108,'Washed Black Relaxed Crewneck Sweatshirt - M',NULL,NULL,NULL,'published','[\"products\\/hbt-sweatshirt-black.jpg\"]',NULL,'HBT-SW-02-M',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1250,1050,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-sweatshirt-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(109,'Washed Black Relaxed Crewneck Sweatshirt - L',NULL,NULL,NULL,'published','[\"products\\/hbt-sweatshirt-black.jpg\"]',NULL,'HBT-SW-02-L',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1250,1050,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-sweatshirt-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(110,'Washed Black Relaxed Crewneck Sweatshirt - XL',NULL,NULL,NULL,'published','[\"products\\/hbt-sweatshirt-black.jpg\"]',NULL,'HBT-SW-02-XL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1250,1050,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-sweatshirt-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(111,'Washed Black Relaxed Crewneck Sweatshirt - XXL',NULL,NULL,NULL,'published','[\"products\\/hbt-sweatshirt-black.jpg\"]',NULL,'HBT-SW-02-XXL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1250,1050,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-sweatshirt-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(112,'Streetwear Multi-Pocket Cargo Joggers - Olive',NULL,'৬ পকেট স্ট্রিটওয়্যার কার্গো জগার্স। ড্রস্ট্রিং ওয়েস্ট ও ইলাস্টিক অ্যাঙ্কেল কাফ।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>৬ পকেট স্ট্রিটওয়্যার কার্গো জগার্স। ড্রস্ট্রিং ওয়েস্ট ও ইলাস্টিক অ্যাঙ্কেল কাফ।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 98% Cotton Twill + 2% Spandex Stretch Fabric</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">নরমাল ওয়াশ। ব্লিচ করবেন না।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-cargo-olive.jpg\"]',NULL,'HBT-JG-01',0,100,0,1,'in_stock',1,NULL,0,0,0,0.00,0,1250,1080,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cargo-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(113,'Streetwear Multi-Pocket Cargo Joggers - Olive - 28',NULL,NULL,NULL,'published','[\"products\\/hbt-cargo-olive.jpg\"]',NULL,'HBT-JG-01-28',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1250,1080,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cargo-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(114,'Streetwear Multi-Pocket Cargo Joggers - Olive - 30',NULL,NULL,NULL,'published','[\"products\\/hbt-cargo-olive.jpg\"]',NULL,'HBT-JG-01-30',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1250,1080,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cargo-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(115,'Streetwear Multi-Pocket Cargo Joggers - Olive - 32',NULL,NULL,NULL,'published','[\"products\\/hbt-cargo-olive.jpg\"]',NULL,'HBT-JG-01-32',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1250,1080,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cargo-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(116,'Streetwear Multi-Pocket Cargo Joggers - Olive - 34',NULL,NULL,NULL,'published','[\"products\\/hbt-cargo-olive.jpg\"]',NULL,'HBT-JG-01-34',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1250,1080,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cargo-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(117,'Streetwear Multi-Pocket Cargo Joggers - Olive - 36',NULL,NULL,NULL,'published','[\"products\\/hbt-cargo-olive.jpg\"]',NULL,'HBT-JG-01-36',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1250,1080,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cargo-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(118,'Charcoal Black Tech-Fleece Casual Joggers',NULL,'ডেইলি ওয়্যার ও জিমের জন্য আরামদায়ক চারকোল ব্ল্যাক স্ট্রেচ জগার্স প্যান্ট।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>ডেইলি ওয়্যার ও জিমের জন্য আরামদায়ক চারকোল ব্ল্যাক স্ট্রেচ জগার্স প্যান্ট।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 280 GSM Premium Stretch Cotton Terry with Metal-Tipped Drawcord</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">মেশিন ওয়াশ। হালকা তাপে শুকান।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-cargo-black.jpg\"]',NULL,'HBT-JG-02',0,100,0,1,'in_stock',1,NULL,0,0,0,0.00,0,1150,950,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cargo-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(119,'Charcoal Black Tech-Fleece Casual Joggers - 28',NULL,NULL,NULL,'published','[\"products\\/hbt-cargo-black.jpg\"]',NULL,'HBT-JG-02-28',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,950,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cargo-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(120,'Charcoal Black Tech-Fleece Casual Joggers - 30',NULL,NULL,NULL,'published','[\"products\\/hbt-cargo-black.jpg\"]',NULL,'HBT-JG-02-30',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,950,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cargo-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(121,'Charcoal Black Tech-Fleece Casual Joggers - 32',NULL,NULL,NULL,'published','[\"products\\/hbt-cargo-black.jpg\"]',NULL,'HBT-JG-02-32',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,950,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cargo-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(122,'Charcoal Black Tech-Fleece Casual Joggers - 34',NULL,NULL,NULL,'published','[\"products\\/hbt-cargo-black.jpg\"]',NULL,'HBT-JG-02-34',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,950,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cargo-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(123,'Charcoal Black Tech-Fleece Casual Joggers - 36',NULL,NULL,NULL,'published','[\"products\\/hbt-cargo-black.jpg\"]',NULL,'HBT-JG-02-36',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,950,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cargo-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(124,'Tailored Slim Fit Chino Pants - Khaki Beige',NULL,'অফিস ও সেমি-ফরমাল ব্যবহারের জন্য স্লিম ফিট খাকি বেইজ চিনো প্যান্ট।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>অফিস ও সেমি-ফরমাল ব্যবহারের জন্য স্লিম ফিট খাকি বেইজ চিনো প্যান্ট।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 97% Combed Cotton + 3% Elastane Satin Weave</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">হালকা ডিটারজেন্ট দিয়ে ধুয়ে ছায়ায় শুকান।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-chino-beige.jpg\"]',NULL,'HBT-PT-01',0,100,0,1,'in_stock',0,NULL,0,0,0,0.00,0,1290,1150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-chino-beige.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(125,'Tailored Slim Fit Chino Pants - Khaki Beige - 28',NULL,NULL,NULL,'published','[\"products\\/hbt-chino-beige.jpg\"]',NULL,'HBT-PT-01-28',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1290,1150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-chino-beige.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(126,'Tailored Slim Fit Chino Pants - Khaki Beige - 30',NULL,NULL,NULL,'published','[\"products\\/hbt-chino-beige.jpg\"]',NULL,'HBT-PT-01-30',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1290,1150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-chino-beige.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(127,'Tailored Slim Fit Chino Pants - Khaki Beige - 32',NULL,NULL,NULL,'published','[\"products\\/hbt-chino-beige.jpg\"]',NULL,'HBT-PT-01-32',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1290,1150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-chino-beige.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(128,'Tailored Slim Fit Chino Pants - Khaki Beige - 34',NULL,NULL,NULL,'published','[\"products\\/hbt-chino-beige.jpg\"]',NULL,'HBT-PT-01-34',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1290,1150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-chino-beige.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(129,'Tailored Slim Fit Chino Pants - Khaki Beige - 36',NULL,NULL,NULL,'published','[\"products\\/hbt-chino-beige.jpg\"]',NULL,'HBT-PT-01-36',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1290,1150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-chino-beige.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(130,'Classic Navy Blue Smart Formal Trousers',NULL,'রিঙ্কেল-ফ্রি প্রিমিয়াম পলিয়েস্টার-ভিসকস ব্লেন্ডের নেভি ব্লু ফরমাল ট্রাউজার।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>রিঙ্কেল-ফ্রি প্রিমিয়াম পলিয়েস্টার-ভিসকস ব্লেন্ডের নেভি ব্লু ফরমাল ট্রাউজার।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> Wrinkle-Resistant Premium Poly-Viscose Fabric</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">ড্রাই ওয়াশ বা জেন্টল কোল্ড ওয়াশ। মিডিয়াম তাপে আয়রন করুন।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-chino-navy.jpg\"]',NULL,'HBT-PT-02',0,100,0,1,'in_stock',1,NULL,0,0,0,0.00,0,1350,1190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-chino-navy.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(131,'Classic Navy Blue Smart Formal Trousers - 28',NULL,NULL,NULL,'published','[\"products\\/hbt-chino-navy.jpg\"]',NULL,'HBT-PT-02-28',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1350,1190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-chino-navy.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(132,'Classic Navy Blue Smart Formal Trousers - 30',NULL,NULL,NULL,'published','[\"products\\/hbt-chino-navy.jpg\"]',NULL,'HBT-PT-02-30',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1350,1190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-chino-navy.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(133,'Classic Navy Blue Smart Formal Trousers - 32',NULL,NULL,NULL,'published','[\"products\\/hbt-chino-navy.jpg\"]',NULL,'HBT-PT-02-32',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1350,1190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-chino-navy.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(134,'Classic Navy Blue Smart Formal Trousers - 34',NULL,NULL,NULL,'published','[\"products\\/hbt-chino-navy.jpg\"]',NULL,'HBT-PT-02-34',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1350,1190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-chino-navy.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(135,'Classic Navy Blue Smart Formal Trousers - 36',NULL,NULL,NULL,'published','[\"products\\/hbt-chino-navy.jpg\"]',NULL,'HBT-PT-02-36',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1350,1190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-chino-navy.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(136,'Vintage Indigo Blue Regular Fit Denim Jeans',NULL,'১৩.৫ আউন্স হেভি রিজিড ডেনিম দিয়ে তৈরি ক্লাসিক ভিন্টেজ ইন্ডিগো ব্লু জিন্স।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>১৩.৫ আউন্স হেভি রিজিড ডেনিম দিয়ে তৈরি ক্লাসিক ভিন্টেজ ইন্ডিগো ব্লু জিন্স।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 13.5 Oz 100% Rigid Ring-Spun Cotton Denim</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">উল্টো করে ধুয়ে শুকান যাতে রঙের ঔজ্জ্বল্য বজায় থাকে।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-jeans-indigo.jpg\"]',NULL,'HBT-JN-01',0,100,0,1,'in_stock',1,NULL,0,0,0,0.00,0,1450,1280,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-jeans-indigo.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(137,'Vintage Indigo Blue Regular Fit Denim Jeans - 28',NULL,NULL,NULL,'published','[\"products\\/hbt-jeans-indigo.jpg\"]',NULL,'HBT-JN-01-28',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1450,1280,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-jeans-indigo.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(138,'Vintage Indigo Blue Regular Fit Denim Jeans - 30',NULL,NULL,NULL,'published','[\"products\\/hbt-jeans-indigo.jpg\"]',NULL,'HBT-JN-01-30',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1450,1280,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-jeans-indigo.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(139,'Vintage Indigo Blue Regular Fit Denim Jeans - 32',NULL,NULL,NULL,'published','[\"products\\/hbt-jeans-indigo.jpg\"]',NULL,'HBT-JN-01-32',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1450,1280,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-jeans-indigo.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(140,'Vintage Indigo Blue Regular Fit Denim Jeans - 34',NULL,NULL,NULL,'published','[\"products\\/hbt-jeans-indigo.jpg\"]',NULL,'HBT-JN-01-34',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1450,1280,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-jeans-indigo.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(141,'Vintage Indigo Blue Regular Fit Denim Jeans - 36',NULL,NULL,NULL,'published','[\"products\\/hbt-jeans-indigo.jpg\"]',NULL,'HBT-JN-01-36',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1450,1280,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-jeans-indigo.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(142,'Jet Black Washed Stretch Denim Jeans',NULL,'কমফোর্ট স্ট্রেচ ও ডিপ ব্ল্যাক ওয়াশ সহ স্লিম-স্ট্রেইট জেট ব্ল্যাক জিন্স।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>কমফোর্ট স্ট্রেচ ও ডিপ ব্ল্যাক ওয়াশ সহ স্লিম-স্ট্রেইট জেট ব্ল্যাক জিন্স।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 12.5 Oz Comfort Stretch Cotton Denim with YKK Zipper</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">ব্লিচমুক্ত ডিটারজেন্ট ব্যবহার করুন।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-jeans-black.jpg\"]',NULL,'HBT-JN-02',0,100,0,1,'in_stock',0,NULL,0,0,0,0.00,0,1390,1250,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-jeans-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(143,'Jet Black Washed Stretch Denim Jeans - 28',NULL,NULL,NULL,'published','[\"products\\/hbt-jeans-black.jpg\"]',NULL,'HBT-JN-02-28',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1390,1250,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-jeans-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(144,'Jet Black Washed Stretch Denim Jeans - 30',NULL,NULL,NULL,'published','[\"products\\/hbt-jeans-black.jpg\"]',NULL,'HBT-JN-02-30',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1390,1250,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-jeans-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(145,'Jet Black Washed Stretch Denim Jeans - 32',NULL,NULL,NULL,'published','[\"products\\/hbt-jeans-black.jpg\"]',NULL,'HBT-JN-02-32',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1390,1250,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-jeans-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(146,'Jet Black Washed Stretch Denim Jeans - 34',NULL,NULL,NULL,'published','[\"products\\/hbt-jeans-black.jpg\"]',NULL,'HBT-JN-02-34',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1390,1250,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-jeans-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(147,'Jet Black Washed Stretch Denim Jeans - 36',NULL,NULL,NULL,'published','[\"products\\/hbt-jeans-black.jpg\"]',NULL,'HBT-JN-02-36',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1390,1250,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-jeans-black.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(148,'White Cuban Collar Linen Summer Casual Shirt',NULL,'লিনেন-কটন ব্লেন্ডের আরামদায়ক কিউবান কলার হোয়াইট সামার ক্যাজুয়াল শার্ট।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>লিনেন-কটন ব্লেন্ডের আরামদায়ক কিউবান কলার হোয়াইট সামার ক্যাজুয়াল শার্ট।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 60% Pure Linen + 40% Breathable Combed Cotton</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">হ্যান্ড ওয়াশ রেকমেন্ডেড। হালকা ভেজা অবস্থায় আয়রন করুন।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-cuban-white.jpg\"]',NULL,'HBT-SH-01',0,100,0,1,'in_stock',1,NULL,0,0,0,0.00,0,1150,950,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cuban-white.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(149,'White Cuban Collar Linen Summer Casual Shirt - S',NULL,NULL,NULL,'published','[\"products\\/hbt-cuban-white.jpg\"]',NULL,'HBT-SH-01-S',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,950,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cuban-white.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(150,'White Cuban Collar Linen Summer Casual Shirt - M',NULL,NULL,NULL,'published','[\"products\\/hbt-cuban-white.jpg\"]',NULL,'HBT-SH-01-M',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,950,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cuban-white.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(151,'White Cuban Collar Linen Summer Casual Shirt - L',NULL,NULL,NULL,'published','[\"products\\/hbt-cuban-white.jpg\"]',NULL,'HBT-SH-01-L',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,950,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cuban-white.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(152,'White Cuban Collar Linen Summer Casual Shirt - XL',NULL,NULL,NULL,'published','[\"products\\/hbt-cuban-white.jpg\"]',NULL,'HBT-SH-01-XL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,950,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cuban-white.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(153,'White Cuban Collar Linen Summer Casual Shirt - XXL',NULL,NULL,NULL,'published','[\"products\\/hbt-cuban-white.jpg\"]',NULL,'HBT-SH-01-XXL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1150,950,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cuban-white.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(154,'Olive Green Camp Collar Relaxed Casual Shirt',NULL,'লাইটওয়েট নরম টেক্সচার্ড ফেব্রিকের ক্যাম্প কলার অলিভ গ্রিন ক্যাজুয়াল শার্ট।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>লাইটওয়েট নরম টেক্সচার্ড ফেব্রিকের ক্যাম্প কলার অলিভ গ্রিন ক্যাজুয়াল শার্ট।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> Lightweight Textured Rayon-Cotton Blend Fabric</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">ঠান্ডা পানিতে ওয়াশ করুন। ছায়ায় শুকান।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-cuban-olive.jpg\"]',NULL,'HBT-SH-02',0,100,0,1,'in_stock',0,NULL,0,0,0,0.00,0,1190,980,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cuban-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(155,'Olive Green Camp Collar Relaxed Casual Shirt - S',NULL,NULL,NULL,'published','[\"products\\/hbt-cuban-olive.jpg\"]',NULL,'HBT-SH-02-S',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1190,980,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cuban-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(156,'Olive Green Camp Collar Relaxed Casual Shirt - M',NULL,NULL,NULL,'published','[\"products\\/hbt-cuban-olive.jpg\"]',NULL,'HBT-SH-02-M',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1190,980,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cuban-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(157,'Olive Green Camp Collar Relaxed Casual Shirt - L',NULL,NULL,NULL,'published','[\"products\\/hbt-cuban-olive.jpg\"]',NULL,'HBT-SH-02-L',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1190,980,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cuban-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(158,'Olive Green Camp Collar Relaxed Casual Shirt - XL',NULL,NULL,NULL,'published','[\"products\\/hbt-cuban-olive.jpg\"]',NULL,'HBT-SH-02-XL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1190,980,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cuban-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(159,'Olive Green Camp Collar Relaxed Casual Shirt - XXL',NULL,NULL,NULL,'published','[\"products\\/hbt-cuban-olive.jpg\"]',NULL,'HBT-SH-02-XXL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1190,980,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-cuban-olive.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(160,'Classic Light Blue Oxford Cotton Long Sleeve Shirt','classic-light-blue-oxford-cotton-long-sleeve-shirt','<p>অফিস ও ফরমাল মিটিংয়ের জন্য উপযোগী টু-প্লাই ১০০% অক্সফোর্ড কটন শার্ট।</p>','<div class=\"product-description-wrapper\" style=\"font-size:15px;line-height:1.8;\"><p>অফিস ও ফরমাল মিটিংয়ের জন্য উপযোগী টু-প্লাই ১০০% অক্সফোর্ড কটন শার্ট।</p><h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5><ul class=\"ps-3 mb-3\"><li><strong>Fabric:</strong> 100% Two-Ply Combed Oxford Weave Cotton</li><li><strong>Brand:</strong> Habbito</li><li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li><li><strong>Origin:</strong> Made in Bangladesh</li></ul><h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5><p class=\"text-muted\">মেশিন ওয়াশ। কলার ও কাফে সঠিকভাবে আয়রন করুন।</p><div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\"><span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span></div></div>','draft','[\"products\\/hbt-oxford-blue.jpg\"]',NULL,'HBT-SH-03',0,100,0,1,'in_stock',1,NULL,0,0,0,0.00,0,1280,1120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-11-01 06:34:00',0,'Botble\\ACL\\Models\\User','products/hbt-oxford-blue.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(161,'Classic Light Blue Oxford Cotton Long Sleeve Shirt',NULL,NULL,NULL,'draft','[\"products\\/hbt-oxford-blue.jpg\"]',NULL,'HBT-SH-03-S',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1280,1120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-11-01 06:34:00',0,'Botble\\ACL\\Models\\User','products/hbt-oxford-blue.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(162,'Classic Light Blue Oxford Cotton Long Sleeve Shirt',NULL,NULL,NULL,'draft','[\"products\\/hbt-oxford-blue.jpg\"]',NULL,'HBT-SH-03-M',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1280,1120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-11-01 06:34:00',0,'Botble\\ACL\\Models\\User','products/hbt-oxford-blue.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(163,'Classic Light Blue Oxford Cotton Long Sleeve Shirt',NULL,NULL,NULL,'draft','[\"products\\/hbt-oxford-blue.jpg\"]',NULL,'HBT-SH-03-L',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1280,1120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-11-01 06:34:00',0,'Botble\\ACL\\Models\\User','products/hbt-oxford-blue.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(164,'Classic Light Blue Oxford Cotton Long Sleeve Shirt',NULL,NULL,NULL,'draft','[\"products\\/hbt-oxford-blue.jpg\"]',NULL,'HBT-SH-03-XL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1280,1120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-11-01 06:34:00',0,'Botble\\ACL\\Models\\User','products/hbt-oxford-blue.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(165,'Classic Light Blue Oxford Cotton Long Sleeve Shirt',NULL,NULL,NULL,'draft','[\"products\\/hbt-oxford-blue.jpg\"]',NULL,'HBT-SH-03-XXL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,1280,1120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-11-01 06:34:00',0,'Botble\\ACL\\Models\\User','products/hbt-oxford-blue.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(166,'Acid Wash Tokyo Cyberpunk Oversized T-Shirt',NULL,'২৪০ জিএসএম মিনারেল এসিড ওয়াশ ও ব্যাক প্রিন্ট সাইবারপাঙ্ক গ্রাফিক টি-শার্ট।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>২৪০ জিএসএম মিনারেল এসিড ওয়াশ ও ব্যাক প্রিন্ট সাইবারপাঙ্ক গ্রাফিক টি-শার্ট।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 240 GSM Mineral Acid Washed 100% Cotton with High-Density Screen Print</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">উল্টো করে ধুয়ে আয়রন করুন। প্রিন্টের ওপর সরাসরি আয়রন করবেন না।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-graphic-cyber.jpg\"]',NULL,'HBT-TS-01',0,100,0,1,'in_stock',1,NULL,0,0,0,0.00,0,690,590,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-graphic-cyber.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(167,'Acid Wash Tokyo Cyberpunk Oversized T-Shirt - S',NULL,NULL,NULL,'published','[\"products\\/hbt-graphic-cyber.jpg\"]',NULL,'HBT-TS-01-S',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,690,590,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-graphic-cyber.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(168,'Acid Wash Tokyo Cyberpunk Oversized T-Shirt - M',NULL,NULL,NULL,'published','[\"products\\/hbt-graphic-cyber.jpg\"]',NULL,'HBT-TS-01-M',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,690,590,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-graphic-cyber.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(169,'Acid Wash Tokyo Cyberpunk Oversized T-Shirt - L',NULL,NULL,NULL,'published','[\"products\\/hbt-graphic-cyber.jpg\"]',NULL,'HBT-TS-01-L',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,690,590,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-graphic-cyber.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(170,'Acid Wash Tokyo Cyberpunk Oversized T-Shirt - XL',NULL,NULL,NULL,'published','[\"products\\/hbt-graphic-cyber.jpg\"]',NULL,'HBT-TS-01-XL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,690,590,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-graphic-cyber.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(171,'Acid Wash Tokyo Cyberpunk Oversized T-Shirt - XXL',NULL,NULL,NULL,'published','[\"products\\/hbt-graphic-cyber.jpg\"]',NULL,'HBT-TS-01-XXL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,690,590,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-graphic-cyber.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(172,'Minimalist Typography Drop-Shoulder Heavy Tee',NULL,'মিনিমাল টাইপোগ্রাফি ও রিল্যাক্সড ড্রপ-শোল্ডার প্যাটার্নের হেভিওয়েট টি-শার্ট।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>মিনিমাল টাইপোগ্রাফি ও রিল্যাক্সড ড্রপ-শোল্ডার প্যাটার্নের হেভিওয়েট টি-শার্ট।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 220 GSM 100% Combed Compact Cotton</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">মেশিন ওয়াশ কোল্ড।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-minimal-tee.jpg\"]',NULL,'HBT-TS-02',0,100,0,1,'in_stock',0,NULL,0,0,0,0.00,0,580,490,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-minimal-tee.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(173,'Minimalist Typography Drop-Shoulder Heavy Tee - S',NULL,NULL,NULL,'published','[\"products\\/hbt-minimal-tee.jpg\"]',NULL,'HBT-TS-02-S',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,580,490,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-minimal-tee.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(174,'Minimalist Typography Drop-Shoulder Heavy Tee - M',NULL,NULL,NULL,'published','[\"products\\/hbt-minimal-tee.jpg\"]',NULL,'HBT-TS-02-M',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,580,490,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-minimal-tee.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(175,'Minimalist Typography Drop-Shoulder Heavy Tee - L',NULL,NULL,NULL,'published','[\"products\\/hbt-minimal-tee.jpg\"]',NULL,'HBT-TS-02-L',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,580,490,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-minimal-tee.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(176,'Minimalist Typography Drop-Shoulder Heavy Tee - XL',NULL,NULL,NULL,'published','[\"products\\/hbt-minimal-tee.jpg\"]',NULL,'HBT-TS-02-XL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,580,490,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-minimal-tee.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(177,'Minimalist Typography Drop-Shoulder Heavy Tee - XXL',NULL,NULL,NULL,'published','[\"products\\/hbt-minimal-tee.jpg\"]',NULL,'HBT-TS-02-XXL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,580,490,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-minimal-tee.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(178,'Raw Ash Grey Vintage Wash Everyday Tee',NULL,'প্রতিদিনের ব্যবহারের জন্য সফট বায়ো-ওয়াশড অ্যাস গ্রে ভিন্টেজ টি-শার্ট।','\n<div class=\"product-description-wrapper\" style=\"line-height: 1.8; font-size: 15px;\">\n    <p>প্রতিদিনের ব্যবহারের জন্য সফট বায়ো-ওয়াশড অ্যাস গ্রে ভিন্টেজ টি-শার্ট।</p>\n    <h5 class=\"fw-bold mt-4 mb-2 text-dark\">ফেব্রিক ও স্পেসিফিকেশন:</h5>\n    <ul class=\"ps-3 mb-3\">\n        <li><strong>Fabric:</strong> 230 GSM Bio-Washed Heavyweight Cotton</li>\n        <li><strong>Brand:</strong> Habbito</li>\n        <li><strong>Fit:</strong> Contemporary Smart / Relaxed Fit</li>\n        <li><strong>Origin:</strong> Made in Bangladesh</li>\n    </ul>\n    <h5 class=\"fw-bold mt-3 mb-2 text-dark\">ওয়াশ ও যত্ন (Wash Care):</h5>\n    <p class=\"text-muted\">নরমাল ওয়াশ। হালকা তাপে শুকান।</p>\n    <div class=\"alert alert-info py-2 px-3 mt-3 d-flex align-items-center gap-2\" style=\"border-radius: 8px;\">\n        <i class=\"fas fa-truck-moving text-primary\"></i>\n        <span class=\"small\">সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি ও ৭ দিনের সহজ সাইজ এক্সচেঞ্জ সুবিধা!</span>\n    </div>\n</div>','published','[\"products\\/hbt-vintage-ash.jpg\"]',NULL,'HBT-TS-03',0,100,0,1,'in_stock',1,NULL,0,0,0,0.00,0,650,550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-vintage-ash.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(179,'Raw Ash Grey Vintage Wash Everyday Tee - S',NULL,NULL,NULL,'published','[\"products\\/hbt-vintage-ash.jpg\"]',NULL,'HBT-TS-03-S',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-vintage-ash.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(180,'Raw Ash Grey Vintage Wash Everyday Tee - M',NULL,NULL,NULL,'published','[\"products\\/hbt-vintage-ash.jpg\"]',NULL,'HBT-TS-03-M',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-vintage-ash.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(181,'Raw Ash Grey Vintage Wash Everyday Tee - L',NULL,NULL,NULL,'published','[\"products\\/hbt-vintage-ash.jpg\"]',NULL,'HBT-TS-03-L',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-vintage-ash.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(182,'Raw Ash Grey Vintage Wash Everyday Tee - XL',NULL,NULL,NULL,'published','[\"products\\/hbt-vintage-ash.jpg\"]',NULL,'HBT-TS-03-XL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-vintage-ash.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(183,'Raw Ash Grey Vintage Wash Everyday Tee - XXL',NULL,NULL,NULL,'published','[\"products\\/hbt-vintage-ash.jpg\"]',NULL,'HBT-TS-03-XXL',0,20,0,1,'in_stock',0,NULL,1,0,0,0.00,0,650,550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2026-10-31 11:37:53','2026-10-31 11:37:53',0,'Botble\\ACL\\Models\\User','products/hbt-vintage-ash.jpg','physical',NULL,NULL,0,0,'auto_generate',0,0,0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_products_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `review_id` bigint(20) unsigned NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `star` double NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) NOT NULL,
  `product_ids` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `shipment_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `weight` double DEFAULT 0,
  `shipment_id` varchar(120) DEFAULT NULL,
  `rate_id` varchar(120) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(120) NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT 0.00,
  `cod_status` varchar(60) NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT 0.00,
  `store_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) DEFAULT NULL,
  `shipping_company_name` varchar(191) DEFAULT NULL,
  `tracking_link` varchar(191) DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,2,0,0.01,'','',NULL,'pending',0.00,'pending','pending',70.00,NULL,'2026-10-25 23:13:30','2026-10-25 23:13:30',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(2,3,0,0.01,'','',NULL,'pending',0.00,'pending','pending',70.00,NULL,'2026-10-25 23:20:28','2026-10-25 23:20:28',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(3,8,0,0.01,'','',NULL,'pending',0.00,'pending','pending',70.00,NULL,'2026-11-01 10:22:18','2026-11-01 10:22:18',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(5,9,NULL,0,NULL,NULL,NULL,'',590.00,'pending','pending',0.00,NULL,'2026-11-01 11:48:08','2026-11-01 11:48:08','STDF-7CF9FB9F','Steadfast Courier','https://steadfast.com.bd/t/STDF-7CF9FB9F',NULL,NULL,NULL,NULL,'{\"mode\":\"simulation\",\"notice\":\"Steadfast API Key \\u09b8\\u09c7\\u099f\\u0986\\u09aa \\u0995\\u09b0\\u09be \\u09a8\\u09c7\\u0987\\u0964 \\u098f\\u099f\\u09bf \\u099f\\u09c7\\u09b8\\u09cd\\u099f \\u09ae\\u09cb\\u09a1\\u09c7 \\u099c\\u09c7\\u09a8\\u09be\\u09b0\\u09c7\\u099f \\u0995\\u09b0\\u09be \\u09b9\\u09df\\u09c7\\u099b\\u09c7\\u0964\"}');
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2025-10-20 17:06:01','2025-10-20 17:06:01');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint(20) unsigned NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT 0.00,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `shipping_id` bigint(20) unsigned NOT NULL,
  `type` varchar(24) DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT 0.00,
  `to` decimal(15,2) DEFAULT 0.00,
  `price` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Inside Dhaka (ঢাকার ভেতরে ডেলিভারি)',1,'based_on_price',0.00,NULL,70.00,'2026-10-25 12:58:25','2026-10-25 12:58:25'),(2,'Outside Dhaka (ঢাকার বাইরে ডেলিভারি)',1,'based_on_price',0.00,NULL,130.00,'2026-10-25 12:58:25','2026-10-25 12:58:25'),(3,'Free Delivery (ফ্রি ডেলিভারি - ৳২,০০০ এর বেশি অর্ডারে)',1,'based_on_price',2000.00,NULL,0.00,'2026-10-25 12:58:25','2026-10-25 12:58:25');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(20) NOT NULL,
  `options` text DEFAULT NULL,
  `default_value` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) DEFAULT NULL,
  `author_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2025-10-20 17:06:32','2025-10-20 17:06:32',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2025-10-20 17:06:32','2025-10-20 17:06:32',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2025-10-20 17:06:32','2025-10-20 17:06:32',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2025-10-20 17:06:32','2025-10-20 17:06:32',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2025-10-20 17:06:32','2025-10-20 17:06:32',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2025-10-20 17:06:32','2025-10-20 17:06:32',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2025-10-20 17:06:32','2025-10-20 17:06:32',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2025-10-20 17:06:32','2025-10-20 17:06:32',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) NOT NULL,
  `ec_specification_attributes_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `options` text DEFAULT NULL,
  `default_value` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) DEFAULT NULL,
  `author_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2025-10-20 17:06:32','2025-10-20 17:06:32',NULL,NULL),(2,'Performance',NULL,'2025-10-20 17:06:32','2025-10-20 17:06:32',NULL,NULL),(3,'Battery',NULL,'2025-10-20 17:06:32','2025-10-20 17:06:32',NULL,NULL),(4,'Display',NULL,'2025-10-20 17:06:32','2025-10-20 17:06:32',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups_translations`
--

DROP TABLE IF EXISTS `ec_specification_groups_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_groups_translations` (
  `lang_code` varchar(20) NOT NULL,
  `ec_specification_groups_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_groups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups_translations`
--

LOCK TABLES `ec_specification_groups_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_groups_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint(20) unsigned NOT NULL,
  `group_id` bigint(20) unsigned NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) DEFAULT NULL,
  `author_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2025-10-20 17:06:32','2025-10-20 17:06:32',NULL,NULL),(2,'Technical Specification',NULL,'2025-10-20 17:06:32','2025-10-20 17:06:32',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables_translations`
--

DROP TABLE IF EXISTS `ec_specification_tables_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_tables_translations` (
  `lang_code` varchar(20) NOT NULL,
  `ec_specification_tables_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_tables_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables_translations`
--

LOCK TABLES `ec_specification_tables_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_tables_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(191) NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `is_shipping_location` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,63),(1,64),(1,65),(1,66),(1,67),(1,68),(1,69),(1,70),(1,71),(1,72),(1,73),(1,74),(1,75);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint(20) unsigned NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10,1,'published','2025-10-20 17:06:03','2025-10-20 17:06:03'),(2,'None',0,2,'published','2025-10-20 17:06:03','2025-10-20 17:06:03'),(3,'Import Tax',15,3,'published','2025-10-20 17:06:03','2025-10-20 17:06:03');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes_translations`
--

DROP TABLE IF EXISTS `ec_taxes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_taxes_id` bigint(20) unsigned NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_taxes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes_translations`
--

LOCK TABLES `ec_taxes_translations` WRITE;
/*!40000 ALTER TABLE `ec_taxes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_taxes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Ordering Process',0,'published','2025-10-20 17:06:03','2025-10-20 17:06:03',NULL),(2,'Product Returns',1,'published','2025-10-20 17:06:03','2025-10-20 17:06:03',NULL),(3,'Product Availability',2,'published','2025-10-20 17:06:03','2025-10-20 17:06:03',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `faq_categories_id` bigint(20) unsigned NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'How do I place an order?','To place an order, navigate to the product page, select the desired options, and click the \"Add to Cart\" button.',2,'published','2025-10-20 17:06:03','2025-10-20 17:06:03'),(2,'What are the shipping options?','We offer standard and expedited shipping options. Shipping costs and delivery times vary based on your location and chosen shipping method.',1,'published','2025-10-20 17:06:03','2025-10-20 17:06:03'),(3,'How can I return a product?','If you are not satisfied with your purchase, you can initiate a return within 30 days of receiving the product. Contact our customer service for further instructions.',2,'published','2025-10-20 17:06:03','2025-10-20 17:06:03'),(4,'What payment methods do you accept?','We accept major credit cards, PayPal, and other secure payment methods.',2,'published','2025-10-20 17:06:03','2025-10-20 17:06:03'),(5,'How can I update my account information?','Log in to your account and go to the \"Account Settings\" page to update your information, including your password and shipping address.',3,'published','2025-10-20 17:06:03','2025-10-20 17:06:03'),(6,'Are there any ongoing promotions or discounts?','Check our \"Promotions\" page for information on current discounts, special offers, and ongoing promotions.',2,'published','2025-10-20 17:06:03','2025-10-20 17:06:03'),(7,'Is the product in stock?','Product availability is indicated on each product page. If a product is out of stock, you may choose to be notified when it becomes available.',1,'published','2025-10-20 17:06:03','2025-10-20 17:06:03'),(8,'How is my personal information secured?','We take the security and privacy of your information seriously. Our website uses encryption technology to protect your personal data.',3,'published','2025-10-20 17:06:03','2025-10-20 17:06:03'),(9,'How do I get technical support?','For technical issues or assistance, contact our customer support team through the \"Contact Us\" page, and we will help you resolve any problems.',1,'published','2025-10-20 17:06:03','2025-10-20 17:06:03'),(10,'Do you offer international shipping?','Yes, we offer international shipping to many countries. Shipping costs and delivery times vary based on the destination.',2,'published','2025-10-20 17:06:03','2025-10-20 17:06:03'),(11,'Can I purchase a gift card?','Yes, we offer gift cards of varying denominations. Gift cards can be purchased on our website and make for a great gift for friends and family.',2,'published','2025-10-20 17:06:03','2025-10-20 17:06:03'),(12,'What is the warranty on your products?','Our products come with a standard warranty. Check the product documentation or contact our customer service for details on specific product warranties.',2,'published','2025-10-20 17:06:03','2025-10-20 17:06:03');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `faqs_id` bigint(20) unsigned NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `description` longtext NOT NULL,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Quia ipsa eos placeat fugit sed deserunt. Autem fugit aspernatur architecto quia voluptatem et. Ducimus culpa repellat sint nihil magnam fuga.',1,0,'galleries/1.jpg',1,'published','2025-10-20 17:06:41','2025-10-20 17:06:41'),(2,'New Day','Ut quo voluptatem eligendi officia repellat dolorem rerum. Deleniti eum et enim qui quis laudantium autem. Consequatur qui ad in sit in at.',1,0,'galleries/2.jpg',1,'published','2025-10-20 17:06:41','2025-10-20 17:06:41'),(3,'Happy Day','Perferendis id omnis molestias incidunt. Quisquam qui fugiat voluptates laboriosam commodi nostrum. Dolorum voluptates magnam molestiae dolorum.',1,0,'galleries/3.jpg',1,'published','2025-10-20 17:06:41','2025-10-20 17:06:41'),(4,'Nature','Tempora placeat possimus corporis perspiciatis aliquid. Quas sit repellat ipsam corporis dolorem. Impedit et officiis doloremque et.',1,0,'galleries/4.jpg',1,'published','2025-10-20 17:06:41','2025-10-20 17:06:41'),(5,'Morning','Aliquam quis sed aspernatur dicta. At impedit aut cumque dolorem. Exercitationem fugit voluptatem sit voluptatem eligendi corporis nihil.',1,0,'galleries/5.jpg',1,'published','2025-10-20 17:06:41','2025-10-20 17:06:41'),(6,'Photography','Praesentium eos officia quos aspernatur. Aspernatur provident facere aut inventore. Fuga sapiente excepturi qui praesentium omnis.',1,0,'galleries/6.jpg',1,'published','2025-10-20 17:06:41','2025-10-20 17:06:41');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) NOT NULL,
  `galleries_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `images` text DEFAULT NULL,
  `reference_id` bigint(20) unsigned NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ex reiciendis reprehenderit at qui. Sequi deserunt ratione inventore tenetur modi quia est. Molestiae at quos omnis quia mollitia autem tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Corporis omnis quaerat quas eos sequi. Vel mollitia a sapiente necessitatibus qui. Et voluptas itaque nulla qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Debitis fuga ex iure ut omnis accusantium. Cum cumque ab accusantium rem quisquam. Fuga architecto et ut optio.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut vero id libero vitae est voluptatem. In molestias quod sapiente et aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Dolor perferendis necessitatibus aut enim. Dolorem rerum voluptas ut laboriosam quidem. Cumque consequatur quis sint quisquam.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"A adipisci mollitia animi sint modi sed quia qui. Eum dolores cum repellat sit totam rerum. Nobis magnam asperiores et aut.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2025-10-20 17:06:41','2025-10-20 17:06:41'),(2,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ex reiciendis reprehenderit at qui. Sequi deserunt ratione inventore tenetur modi quia est. Molestiae at quos omnis quia mollitia autem tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Corporis omnis quaerat quas eos sequi. Vel mollitia a sapiente necessitatibus qui. Et voluptas itaque nulla qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Debitis fuga ex iure ut omnis accusantium. Cum cumque ab accusantium rem quisquam. Fuga architecto et ut optio.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut vero id libero vitae est voluptatem. In molestias quod sapiente et aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Dolor perferendis necessitatibus aut enim. Dolorem rerum voluptas ut laboriosam quidem. Cumque consequatur quis sint quisquam.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"A adipisci mollitia animi sint modi sed quia qui. Eum dolores cum repellat sit totam rerum. Nobis magnam asperiores et aut.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2025-10-20 17:06:41','2025-10-20 17:06:41'),(3,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ex reiciendis reprehenderit at qui. Sequi deserunt ratione inventore tenetur modi quia est. Molestiae at quos omnis quia mollitia autem tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Corporis omnis quaerat quas eos sequi. Vel mollitia a sapiente necessitatibus qui. Et voluptas itaque nulla qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Debitis fuga ex iure ut omnis accusantium. Cum cumque ab accusantium rem quisquam. Fuga architecto et ut optio.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut vero id libero vitae est voluptatem. In molestias quod sapiente et aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Dolor perferendis necessitatibus aut enim. Dolorem rerum voluptas ut laboriosam quidem. Cumque consequatur quis sint quisquam.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"A adipisci mollitia animi sint modi sed quia qui. Eum dolores cum repellat sit totam rerum. Nobis magnam asperiores et aut.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2025-10-20 17:06:41','2025-10-20 17:06:41'),(4,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ex reiciendis reprehenderit at qui. Sequi deserunt ratione inventore tenetur modi quia est. Molestiae at quos omnis quia mollitia autem tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Corporis omnis quaerat quas eos sequi. Vel mollitia a sapiente necessitatibus qui. Et voluptas itaque nulla qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Debitis fuga ex iure ut omnis accusantium. Cum cumque ab accusantium rem quisquam. Fuga architecto et ut optio.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut vero id libero vitae est voluptatem. In molestias quod sapiente et aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Dolor perferendis necessitatibus aut enim. Dolorem rerum voluptas ut laboriosam quidem. Cumque consequatur quis sint quisquam.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"A adipisci mollitia animi sint modi sed quia qui. Eum dolores cum repellat sit totam rerum. Nobis magnam asperiores et aut.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2025-10-20 17:06:41','2025-10-20 17:06:41'),(5,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ex reiciendis reprehenderit at qui. Sequi deserunt ratione inventore tenetur modi quia est. Molestiae at quos omnis quia mollitia autem tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Corporis omnis quaerat quas eos sequi. Vel mollitia a sapiente necessitatibus qui. Et voluptas itaque nulla qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Debitis fuga ex iure ut omnis accusantium. Cum cumque ab accusantium rem quisquam. Fuga architecto et ut optio.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut vero id libero vitae est voluptatem. In molestias quod sapiente et aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Dolor perferendis necessitatibus aut enim. Dolorem rerum voluptas ut laboriosam quidem. Cumque consequatur quis sint quisquam.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"A adipisci mollitia animi sint modi sed quia qui. Eum dolores cum repellat sit totam rerum. Nobis magnam asperiores et aut.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2025-10-20 17:06:41','2025-10-20 17:06:41'),(6,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ex reiciendis reprehenderit at qui. Sequi deserunt ratione inventore tenetur modi quia est. Molestiae at quos omnis quia mollitia autem tempore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Corporis omnis quaerat quas eos sequi. Vel mollitia a sapiente necessitatibus qui. Et voluptas itaque nulla qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Debitis fuga ex iure ut omnis accusantium. Cum cumque ab accusantium rem quisquam. Fuga architecto et ut optio.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut vero id libero vitae est voluptatem. In molestias quod sapiente et aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Dolor perferendis necessitatibus aut enim. Dolorem rerum voluptas ut laboriosam quidem. Cumque consequatur quis sint quisquam.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"A adipisci mollitia animi sint modi sed quia qui. Eum dolores cum repellat sit totam rerum. Nobis magnam asperiores et aut.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2025-10-20 17:06:41','2025-10-20 17:06:41');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) NOT NULL,
  `gallery_meta_id` bigint(20) unsigned NOT NULL,
  `images` text DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitto_sms_logs`
--

DROP TABLE IF EXISTS `habitto_sms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitto_sms_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `provider` varchar(50) NOT NULL DEFAULT 'simulation',
  `status` varchar(30) NOT NULL DEFAULT 'sent',
  `response` text DEFAULT NULL,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `habitto_sms_logs_order_id_index` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitto_sms_logs`
--

LOCK TABLES `habitto_sms_logs` WRITE;
/*!40000 ALTER TABLE `habitto_sms_logs` DISABLE KEYS */;
INSERT INTO `habitto_sms_logs` VALUES (1,'8801674936203','Habitto BD টেস্ট এসএমএস: আপনার কোড ১২৩৪','simulation','simulated','টেস্ট মোডে এসএমএস সংরক্ষিত হয়েছে (সিমুলেশন)।',NULL,'2026-11-01 11:55:07','2026-11-01 11:55:07'),(2,'8801674936203','প্রিয় ahmed, Habitto BD-তে আপনার অর্ডার ##SF-10000009 সফলভাবে সম্পন্ন হয়েছে। সর্বমোট প্রদেয়: ৳590 (ক্যাশ অন ডেলিভারি)। হটলাইন: 01674936203','simulation','simulated','টেস্ট মোডে এসএমএস সংরক্ষিত হয়েছে (সিমুলেশন)।',9,'2026-11-01 11:55:07','2026-11-01 11:55:07'),(3,'8801674936203','প্রিয় ahmed, আপনার অর্ডার ##SF-10000009 Steadfast কুরিয়ারে হস্তান্তর করা হয়েছে। ট্র্যাকিং কোড: STDF-TEST1234। ট্র্যাকিং লিঙ্ক: https://steadfast.com.bd/t/STDF-TEST1234। সাথে থাকার জন্য ধন্যবাদ - Habitto BD','simulation','simulated','টেস্ট মোডে এসএমএস সংরক্ষিত হয়েছে (সিমুলেশন)।',9,'2026-11-01 11:55:07','2026-11-01 11:55:07'),(4,'8801674936203','[Habitto BD] নতুন অর্ডার এসেছে! অর্ডার ##SF-10000009, গ্রাহক: ahmed, মূল্য: ৳590, জেলা: টাঙ্গাইল (Tangail)।','simulation','simulated','টেস্ট মোডে এসএমএস সংরক্ষিত হয়েছে (সিমুলেশন)।',9,'2026-11-01 11:55:07','2026-11-01 11:55:07'),(5,'8801711223344','Controller Test Message','simulation','simulated','টেস্ট মোডে এসএমএস সংরক্ষিত হয়েছে (সিমুলেশন)।',NULL,'2026-11-01 11:55:07','2026-11-01 11:55:07');
/*!40000 ALTER TABLE `habitto_sms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) DEFAULT NULL,
  `lang_meta_origin` varchar(32) NOT NULL,
  `reference_id` bigint(20) unsigned NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','d8e1c61b279443a6579aeb032146a1b1',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','87c444ea893e6ea4d008b0473666d9b8',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','88ac6166da45b0926c63b342289351dc',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','cd371da3c114879c33fa9f994bc7ebfe',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','2da2e61e4c79fb11f173658becc2c665',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','64feb11dcb5fdd73787f4306b7be51ef',1,'Botble\\Menu\\Models\\MenuLocation'),(7,'en_US','d4ce996665060c39d15f02b76e47640a',1,'Botble\\Menu\\Models\\Menu'),(8,'en_US','ab7268d87aaad93b54f828b04a990b1a',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'en_US','2351f2f7a5f887f866b67ad3a8c5819a',2,'Botble\\Menu\\Models\\Menu'),(10,'en_US','5f4f363437ea8a5325f20dac05150ab9',3,'Botble\\Menu\\Models\\MenuLocation'),(11,'en_US','e61375055a044e8706458605ad9142a8',3,'Botble\\Menu\\Models\\Menu'),(12,'en_US','168627e2b424eed3b7c3a00922b28467',4,'Botble\\Menu\\Models\\MenuLocation'),(13,'en_US','9ac1157855f2d239a0bee040018471a1',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) NOT NULL,
  `lang_locale` varchar(20) NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `lang_flag` varchar(20) DEFAULT NULL,
  `lang_is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) NOT NULL,
  `alt` varchar(191) DEFAULT NULL,
  `folder_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(191) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'f-app','f-app',1,'image/jpeg',617,'general/f-app.jpg','[]','2025-10-20 17:05:48','2025-10-20 17:05:48',NULL,'public'),(2,0,'f-brand-icon-01','f-brand-icon-01',1,'image/png',448,'general/f-brand-icon-01.png','[]','2025-10-20 17:05:48','2025-10-20 17:05:48',NULL,'public'),(3,0,'f-google','f-google',1,'image/jpeg',617,'general/f-google.jpg','[]','2025-10-20 17:05:48','2025-10-20 17:05:48',NULL,'public'),(4,0,'favicon','favicon',1,'image/png',15233,'general/favicon.png','[]','2025-10-20 17:05:48','2025-10-20 17:05:48',NULL,'public'),(5,0,'logo-white','logo-white',1,'image/png',860,'general/logo-white.png','[]','2025-10-20 17:05:48','2025-10-20 17:05:48',NULL,'public'),(6,0,'logo','logo',1,'image/png',934,'general/logo.png','[]','2025-10-20 17:05:48','2025-10-20 17:05:48',NULL,'public'),(7,0,'newsletter-popup','newsletter-popup',1,'image/png',28834,'general/newsletter-popup.png','[]','2025-10-20 17:05:48','2025-10-20 17:05:48',NULL,'public'),(8,0,'cod','cod',2,'image/png',12121,'payments/cod.png','[]','2025-10-20 17:05:48','2025-10-20 17:05:48',NULL,'public'),(9,0,'bank-transfer','bank-transfer',2,'image/png',29089,'payments/bank-transfer.png','[]','2025-10-20 17:05:49','2025-10-20 17:05:49',NULL,'public'),(10,0,'stripe','stripe',2,'image/webp',7516,'payments/stripe.webp','[]','2025-10-20 17:05:49','2025-10-20 17:05:49',NULL,'public'),(11,0,'paypal','paypal',2,'image/png',3001,'payments/paypal.png','[]','2025-10-20 17:05:49','2025-10-20 17:05:49',NULL,'public'),(12,0,'mollie','mollie',2,'image/png',8968,'payments/mollie.png','[]','2025-10-20 17:05:49','2025-10-20 17:05:49',NULL,'public'),(13,0,'paystack','paystack',2,'image/png',31015,'payments/paystack.png','[]','2025-10-20 17:05:49','2025-10-20 17:05:49',NULL,'public'),(14,0,'razorpay','razorpay',2,'image/png',8489,'payments/razorpay.png','[]','2025-10-20 17:05:49','2025-10-20 17:05:49',NULL,'public'),(15,0,'sslcommerz','sslcommerz',2,'image/png',3482,'payments/sslcommerz.png','[]','2025-10-20 17:05:49','2025-10-20 17:05:49',NULL,'public'),(16,0,'1','1',3,'image/jpeg',3319,'blog/1.jpg','[]','2025-10-20 17:05:49','2025-10-20 17:05:49',NULL,'public'),(17,0,'10','10',3,'image/jpeg',3319,'blog/10.jpg','[]','2025-10-20 17:05:49','2025-10-20 17:05:49',NULL,'public'),(18,0,'11','11',3,'image/jpeg',3319,'blog/11.jpg','[]','2025-10-20 17:05:49','2025-10-20 17:05:49',NULL,'public'),(19,0,'2','2',3,'image/jpeg',3319,'blog/2.jpg','[]','2025-10-20 17:05:49','2025-10-20 17:05:49',NULL,'public'),(20,0,'3','3',3,'image/jpeg',3319,'blog/3.jpg','[]','2025-10-20 17:05:49','2025-10-20 17:05:49',NULL,'public'),(21,0,'4','4',3,'image/jpeg',3319,'blog/4.jpg','[]','2025-10-20 17:05:50','2025-10-20 17:05:50',NULL,'public'),(22,0,'5','5',3,'image/jpeg',3319,'blog/5.jpg','[]','2025-10-20 17:05:50','2025-10-20 17:05:50',NULL,'public'),(23,0,'6','6',3,'image/jpeg',3319,'blog/6.jpg','[]','2025-10-20 17:05:50','2025-10-20 17:05:50',NULL,'public'),(24,0,'7','7',3,'image/jpeg',3319,'blog/7.jpg','[]','2025-10-20 17:05:50','2025-10-20 17:05:50',NULL,'public'),(25,0,'8','8',3,'image/jpeg',3319,'blog/8.jpg','[]','2025-10-20 17:05:50','2025-10-20 17:05:50',NULL,'public'),(26,0,'9','9',3,'image/jpeg',3319,'blog/9.jpg','[]','2025-10-20 17:05:50','2025-10-20 17:05:50',NULL,'public'),(27,0,'blog-in-01','blog-in-01',3,'image/jpeg',9623,'blog/blog-in-01.jpg','[]','2025-10-20 17:05:50','2025-10-20 17:05:50',NULL,'public'),(28,0,'blog-in-02','blog-in-02',3,'image/jpeg',9623,'blog/blog-in-02.jpg','[]','2025-10-20 17:05:50','2025-10-20 17:05:50',NULL,'public'),(29,0,'blog-in-03','blog-in-03',3,'image/jpeg',9623,'blog/blog-in-03.jpg','[]','2025-10-20 17:05:50','2025-10-20 17:05:50',NULL,'public'),(30,0,'blog-in-04','blog-in-04',3,'image/jpeg',9623,'blog/blog-in-04.jpg','[]','2025-10-20 17:05:51','2025-10-20 17:05:51',NULL,'public'),(31,0,'blog-in-05','blog-in-05',3,'image/jpeg',9623,'blog/blog-in-05.jpg','[]','2025-10-20 17:05:51','2025-10-20 17:05:51',NULL,'public'),(32,0,'blog-in-06','blog-in-06',3,'image/jpeg',9623,'blog/blog-in-06.jpg','[]','2025-10-20 17:05:51','2025-10-20 17:05:51',NULL,'public'),(33,0,'blog-sm-1','blog-sm-1',3,'image/jpeg',9623,'blog/blog-sm-1.jpg','[]','2025-10-20 17:05:51','2025-10-20 17:05:51',NULL,'public'),(34,0,'blog-sm-2','blog-sm-2',3,'image/jpeg',9623,'blog/blog-sm-2.jpg','[]','2025-10-20 17:05:51','2025-10-20 17:05:51',NULL,'public'),(35,0,'blog-sm-3','blog-sm-3',3,'image/jpeg',9623,'blog/blog-sm-3.jpg','[]','2025-10-20 17:05:51','2025-10-20 17:05:51',NULL,'public'),(36,0,'blog-sm-4','blog-sm-4',3,'image/jpeg',9623,'blog/blog-sm-4.jpg','[]','2025-10-20 17:05:51','2025-10-20 17:05:51',NULL,'public'),(37,0,'comment-1','comment-1',3,'image/jpeg',9803,'blog/comment-1.jpg','[]','2025-10-20 17:05:51','2025-10-20 17:05:51',NULL,'public'),(38,0,'comment-2','comment-2',3,'image/jpeg',9803,'blog/comment-2.jpg','[]','2025-10-20 17:05:52','2025-10-20 17:05:52',NULL,'public'),(39,0,'location-1','location-1',4,'image/png',5309,'shop/location-1.png','[]','2025-10-20 17:05:52','2025-10-20 17:05:52',NULL,'public'),(40,0,'location-2','location-2',4,'image/png',5309,'shop/location-2.png','[]','2025-10-20 17:05:52','2025-10-20 17:05:52',NULL,'public'),(41,0,'location-3','location-3',4,'image/png',5309,'shop/location-3.png','[]','2025-10-20 17:05:52','2025-10-20 17:05:52',NULL,'public'),(42,0,'location-4','location-4',4,'image/png',5309,'shop/location-4.png','[]','2025-10-20 17:05:52','2025-10-20 17:05:52',NULL,'public'),(43,0,'login_bg','login_bg',4,'image/jpeg',5443,'shop/login-bg.jpg','[]','2025-10-20 17:05:52','2025-10-20 17:05:52',NULL,'public'),(44,0,'reviewer-01','reviewer-01',4,'image/png',1070,'shop/reviewer-01.png','[]','2025-10-20 17:05:52','2025-10-20 17:05:52',NULL,'public'),(45,0,'reviewer-02','reviewer-02',4,'image/png',1070,'shop/reviewer-02.png','[]','2025-10-20 17:05:53','2025-10-20 17:05:53',NULL,'public'),(46,0,'reviewer-03','reviewer-03',4,'image/png',1070,'shop/reviewer-03.png','[]','2025-10-20 17:05:53','2025-10-20 17:05:53',NULL,'public'),(47,0,'s-thumb-01','s-thumb-01',4,'image/jpeg',2813,'shop/s-thumb-01.jpg','[]','2025-10-20 17:05:53','2025-10-20 17:05:53',NULL,'public'),(48,0,'s-thumb-02','s-thumb-02',4,'image/jpeg',2813,'shop/s-thumb-02.jpg','[]','2025-10-20 17:05:53','2025-10-20 17:05:53',NULL,'public'),(49,0,'s-thumb-03','s-thumb-03',4,'image/jpeg',2813,'shop/s-thumb-03.jpg','[]','2025-10-20 17:05:53','2025-10-20 17:05:53',NULL,'public'),(50,0,'s-thumb-04','s-thumb-04',4,'image/jpeg',2813,'shop/s-thumb-04.jpg','[]','2025-10-20 17:05:53','2025-10-20 17:05:53',NULL,'public'),(51,0,'s-thumb-05','s-thumb-05',4,'image/jpeg',2813,'shop/s-thumb-05.jpg','[]','2025-10-20 17:05:53','2025-10-20 17:05:53',NULL,'public'),(52,0,'s-thumb-06','s-thumb-06',4,'image/jpeg',2813,'shop/s-thumb-06.jpg','[]','2025-10-20 17:05:53','2025-10-20 17:05:53',NULL,'public'),(53,0,'sign_bg','sign_bg',4,'image/jpeg',5443,'shop/sign-bg.jpg','[]','2025-10-20 17:05:53','2025-10-20 17:05:53',NULL,'public'),(54,0,'track_bg','track_bg',4,'image/jpeg',6224,'shop/track-bg.jpg','[]','2025-10-20 17:05:53','2025-10-20 17:05:53',NULL,'public'),(55,0,'w-product-01','w-product-01',4,'image/jpeg',5528,'shop/w-product-01.jpg','[]','2025-10-20 17:05:53','2025-10-20 17:05:53',NULL,'public'),(56,0,'w-product-02','w-product-02',4,'image/jpeg',5528,'shop/w-product-02.jpg','[]','2025-10-20 17:05:53','2025-10-20 17:05:53',NULL,'public'),(57,0,'w-product-03','w-product-03',4,'image/jpeg',5528,'shop/w-product-03.jpg','[]','2025-10-20 17:05:54','2025-10-20 17:05:54',NULL,'public'),(58,0,'w-product-04','w-product-04',4,'image/jpeg',5528,'shop/w-product-04.jpg','[]','2025-10-20 17:05:54','2025-10-20 17:05:54',NULL,'public'),(59,0,'w-product-05','w-product-05',4,'image/jpeg',5528,'shop/w-product-05.jpg','[]','2025-10-20 17:05:54','2025-10-20 17:05:54',NULL,'public'),(60,0,'about-banner-1','about-banner-1',5,'image/jpeg',8335,'banners/about-banner-1.jpg','[]','2025-10-20 17:05:54','2025-10-20 17:05:54',NULL,'public'),(61,0,'about-banner-2','about-banner-2',5,'image/jpeg',8335,'banners/about-banner-2.jpg','[]','2025-10-20 17:05:54','2025-10-20 17:05:54',NULL,'public'),(62,0,'about-img-1','about-img-1',5,'image/jpeg',8914,'banners/about-img-1.jpg','[]','2025-10-20 17:05:54','2025-10-20 17:05:54',NULL,'public'),(63,0,'about-img-2','about-img-2',5,'image/jpeg',8914,'banners/about-img-2.jpg','[]','2025-10-20 17:05:54','2025-10-20 17:05:54',NULL,'public'),(64,0,'about-img-3','about-img-3',5,'image/png',6373,'banners/about-img-3.png','[]','2025-10-20 17:05:55','2025-10-20 17:05:55',NULL,'public'),(65,0,'banner-03-01','banner-03-01',5,'image/jpeg',6612,'banners/banner-03-01.jpg','[]','2025-10-20 17:05:55','2025-10-20 17:05:55',NULL,'public'),(66,0,'banner-03-02','banner-03-02',5,'image/jpeg',5283,'banners/banner-03-02.jpg','[]','2025-10-20 17:05:55','2025-10-20 17:05:55',NULL,'public'),(67,0,'banner-03-03','banner-03-03',5,'image/jpeg',5077,'banners/banner-03-03.jpg','[]','2025-10-20 17:05:55','2025-10-20 17:05:55',NULL,'public'),(68,0,'banner-2-01','banner-2-01',5,'image/jpeg',5452,'banners/banner-2-01.jpg','[]','2025-10-20 17:05:55','2025-10-20 17:05:55',NULL,'public'),(69,0,'banner-2-02','banner-2-02',5,'image/jpeg',5452,'banners/banner-2-02.jpg','[]','2025-10-20 17:05:55','2025-10-20 17:05:55',NULL,'public'),(70,0,'banner-2-03','banner-2-03',5,'image/jpeg',12296,'banners/banner-2-03.jpg','[]','2025-10-20 17:05:55','2025-10-20 17:05:55',NULL,'public'),(71,0,'banner-2-04','banner-2-04',5,'image/jpeg',7318,'banners/banner-2-04.jpg','[]','2025-10-20 17:05:55','2025-10-20 17:05:55',NULL,'public'),(72,0,'banner-bg-05','banner-bg-05',5,'image/jpeg',23672,'banners/banner-bg-05.jpg','[]','2025-10-20 17:05:55','2025-10-20 17:05:55',NULL,'public'),(73,0,'banner-offer-01','banner-offer-01',5,'image/jpeg',10330,'banners/banner-offer-01.jpg','[]','2025-10-20 17:05:55','2025-10-20 17:05:55',NULL,'public'),(74,0,'banner-offer-02','banner-offer-02',5,'image/jpeg',9086,'banners/banner-offer-02.jpg','[]','2025-10-20 17:05:56','2025-10-20 17:05:56',NULL,'public'),(75,0,'breadcrumb-01','breadcrumb-01',5,'image/jpeg',5276,'banners/breadcrumb-01.jpg','[]','2025-10-20 17:05:56','2025-10-20 17:05:56',NULL,'public'),(76,0,'coming-soon','coming-soon',5,'image/jpeg',27345,'banners/coming-soon.jpg','[]','2025-10-20 17:05:56','2025-10-20 17:05:56',NULL,'public'),(77,0,'login-bg','login-bg',5,'image/jpeg',5443,'banners/login-bg.jpg','[]','2025-10-20 17:05:56','2025-10-20 17:05:56',NULL,'public'),(78,0,'product-shape-01','product-shape-01',5,'image/png',3220,'banners/product-shape-01.png','[]','2025-10-20 17:05:56','2025-10-20 17:05:56',NULL,'public'),(79,0,'product-shape-02','product-shape-02',5,'image/png',2285,'banners/product-shape-02.png','[]','2025-10-20 17:05:56','2025-10-20 17:05:56',NULL,'public'),(80,0,'sign-bg','sign-bg',5,'image/jpeg',5443,'banners/sign-bg.jpg','[]','2025-10-20 17:05:56','2025-10-20 17:05:56',NULL,'public'),(81,0,'thumb-01','thumb-01',5,'image/jpeg',16230,'banners/thumb-01.jpg','[]','2025-10-20 17:05:56','2025-10-20 17:05:56',NULL,'public'),(82,0,'thumb-02','thumb-02',5,'image/jpeg',7655,'banners/thumb-02.jpg','[]','2025-10-20 17:05:56','2025-10-20 17:05:56',NULL,'public'),(83,0,'thumb-03','thumb-03',5,'image/jpeg',7655,'banners/thumb-03.jpg','[]','2025-10-20 17:05:57','2025-10-20 17:05:57',NULL,'public'),(84,0,'thumb-04','thumb-04',5,'image/jpeg',16230,'banners/thumb-04.jpg','[]','2025-10-20 17:05:57','2025-10-20 17:05:57',NULL,'public'),(85,0,'track-bg','track-bg',5,'image/jpeg',6224,'banners/track-bg.jpg','[]','2025-10-20 17:05:57','2025-10-20 17:05:57',NULL,'public'),(86,0,'box','box',6,'image/png',949,'icons/box.png','[]','2025-10-20 17:05:57','2025-10-20 17:05:57',NULL,'public'),(87,0,'car','car',6,'image/png',855,'icons/car.png','[]','2025-10-20 17:05:57','2025-10-20 17:05:57',NULL,'public'),(88,0,'cash-on-delivery','cash-on-delivery',6,'image/png',2426,'icons/cash-on-delivery.png','[]','2025-10-20 17:05:57','2025-10-20 17:05:57',NULL,'public'),(89,0,'cat-icon-01','cat-icon-01',6,'image/png',146,'icons/cat-icon-01.png','[]','2025-10-20 17:05:57','2025-10-20 17:05:57',NULL,'public'),(90,0,'cat-icon-02','cat-icon-02',6,'image/png',164,'icons/cat-icon-02.png','[]','2025-10-20 17:05:57','2025-10-20 17:05:57',NULL,'public'),(91,0,'cat-icon-03','cat-icon-03',6,'image/png',164,'icons/cat-icon-03.png','[]','2025-10-20 17:05:57','2025-10-20 17:05:57',NULL,'public'),(92,0,'cat-icon-04','cat-icon-04',6,'image/png',160,'icons/cat-icon-04.png','[]','2025-10-20 17:05:57','2025-10-20 17:05:57',NULL,'public'),(93,0,'cat-icon-05','cat-icon-05',6,'image/png',151,'icons/cat-icon-05.png','[]','2025-10-20 17:05:57','2025-10-20 17:05:57',NULL,'public'),(94,0,'cat-icon-06','cat-icon-06',6,'image/png',1665,'icons/cat-icon-06.png','[]','2025-10-20 17:05:57','2025-10-20 17:05:57',NULL,'public'),(95,0,'error','error',6,'image/png',3971,'icons/error.png','[]','2025-10-20 17:05:57','2025-10-20 17:05:57',NULL,'public'),(96,0,'fast-delivery','fast-delivery',6,'image/png',3347,'icons/fast-delivery.png','[]','2025-10-20 17:05:57','2025-10-20 17:05:57',NULL,'public'),(97,0,'hours','hours',6,'image/png',1034,'icons/hours.png','[]','2025-10-20 17:05:58','2025-10-20 17:05:58',NULL,'public'),(98,0,'lang-flag','lang-flag',6,'image/png',1602,'icons/lang-flag.png','[]','2025-10-20 17:05:58','2025-10-20 17:05:58',NULL,'public'),(99,0,'payment','payment',6,'image/png',800,'icons/payment.png','[]','2025-10-20 17:05:58','2025-10-20 17:05:58',NULL,'public'),(100,0,'product-det-1','product-det-1',6,'image/png',974,'icons/product-det-1.png','[]','2025-10-20 17:05:58','2025-10-20 17:05:58',NULL,'public'),(101,0,'product-det-2','product-det-2',6,'image/png',1080,'icons/product-det-2.png','[]','2025-10-20 17:05:58','2025-10-20 17:05:58',NULL,'public'),(102,0,'product-det-3','product-det-3',6,'image/png',735,'icons/product-det-3.png','[]','2025-10-20 17:05:58','2025-10-20 17:05:58',NULL,'public'),(103,0,'product-det-4','product-det-4',6,'image/png',1202,'icons/product-det-4.png','[]','2025-10-20 17:05:58','2025-10-20 17:05:58',NULL,'public'),(104,0,'support','support',6,'image/png',3574,'icons/support.png','[]','2025-10-20 17:05:58','2025-10-20 17:05:58',NULL,'public'),(105,0,'title-shape-02','title-shape-02',6,'image/jpeg',737,'icons/title-shape-02.jpg','[]','2025-10-20 17:05:58','2025-10-20 17:05:58',NULL,'public'),(106,0,'track-1','track-1',6,'image/png',339,'icons/track-1.png','[]','2025-10-20 17:05:58','2025-10-20 17:05:58',NULL,'public'),(107,0,'verified','verified',6,'image/png',2564,'icons/verified.png','[]','2025-10-20 17:05:58','2025-10-20 17:05:58',NULL,'public'),(108,0,'banner-1','banner-1',7,'image/jpeg',9766,'sliders/banner-1.jpg','[]','2025-10-20 17:05:58','2025-10-20 17:05:58',NULL,'public'),(109,0,'banner-2','banner-2',7,'image/jpeg',9766,'sliders/banner-2.jpg','[]','2025-10-20 17:05:58','2025-10-20 17:05:58',NULL,'public'),(110,0,'banner-3','banner-3',7,'image/jpeg',9766,'sliders/banner-3.jpg','[]','2025-10-20 17:05:58','2025-10-20 17:05:58',NULL,'public'),(111,0,'banner-slider-01','banner-slider-01',7,'image/jpeg',4081,'sliders/banner-slider-01.jpg','[]','2025-10-20 17:05:59','2025-10-20 17:05:59',NULL,'public'),(112,0,'banner-slider-02','banner-slider-02',7,'image/jpeg',4081,'sliders/banner-slider-02.jpg','[]','2025-10-20 17:05:59','2025-10-20 17:05:59',NULL,'public'),(113,0,'fasion-tag-01','fasion-tag-01',7,'image/png',2647,'sliders/fasion-tag-01.png','[]','2025-10-20 17:05:59','2025-10-20 17:05:59',NULL,'public'),(114,0,'fasion-tag-02','fasion-tag-02',7,'image/png',2675,'sliders/fasion-tag-02.png','[]','2025-10-20 17:05:59','2025-10-20 17:05:59',NULL,'public'),(115,0,'fasion-tag-03','fasion-tag-03',7,'image/png',2675,'sliders/fasion-tag-03.png','[]','2025-10-20 17:05:59','2025-10-20 17:05:59',NULL,'public'),(116,0,'slider-01','slider-01',7,'image/png',13507,'sliders/slider-01.png','[]','2025-10-20 17:05:59','2025-10-20 17:05:59',NULL,'public'),(117,0,'slider-02','slider-02',7,'image/png',13507,'sliders/slider-02.png','[]','2025-10-20 17:05:59','2025-10-20 17:05:59',NULL,'public'),(118,0,'slider-03','slider-03',7,'image/png',13507,'sliders/slider-03.png','[]','2025-10-20 17:05:59','2025-10-20 17:05:59',NULL,'public'),(119,0,'slider-04','slider-04',7,'image/png',11780,'sliders/slider-04.png','[]','2025-10-20 17:05:59','2025-10-20 17:05:59',NULL,'public'),(120,0,'slider-05-banner-1','slider-05-banner-1',7,'image/jpeg',3724,'sliders/slider-05-banner-1.jpg','[]','2025-10-20 17:05:59','2025-10-20 17:05:59',NULL,'public'),(121,0,'slider-05-banner-2','slider-05-banner-2',7,'image/jpeg',3724,'sliders/slider-05-banner-2.jpg','[]','2025-10-20 17:06:00','2025-10-20 17:06:00',NULL,'public'),(122,0,'slider-05-bg-1','slider-05-bg-1',7,'image/jpeg',11103,'sliders/slider-05-bg-1.jpg','[]','2025-10-20 17:06:00','2025-10-20 17:06:00',NULL,'public'),(123,0,'slider-05-bg-2','slider-05-bg-2',7,'image/jpeg',11103,'sliders/slider-05-bg-2.jpg','[]','2025-10-20 17:06:00','2025-10-20 17:06:00',NULL,'public'),(124,0,'slider-05-bg-3','slider-05-bg-3',7,'image/jpeg',11103,'sliders/slider-05-bg-3.jpg','[]','2025-10-20 17:06:00','2025-10-20 17:06:00',NULL,'public'),(125,0,'slider-05-bg-4','slider-05-bg-4',7,'image/jpeg',11103,'sliders/slider-05-bg-4.jpg','[]','2025-10-20 17:06:00','2025-10-20 17:06:00',NULL,'public'),(126,0,'slider-05','slider-05',7,'image/png',11780,'sliders/slider-05.png','[]','2025-10-20 17:06:00','2025-10-20 17:06:00',NULL,'public'),(127,0,'slider-06','slider-06',7,'image/png',11780,'sliders/slider-06.png','[]','2025-10-20 17:06:00','2025-10-20 17:06:00',NULL,'public'),(128,0,'slider-bg-04','slider-bg-04',7,'image/png',7941,'sliders/slider-bg-04.png','[]','2025-10-20 17:06:00','2025-10-20 17:06:00',NULL,'public'),(129,0,'slider-bg-05','slider-bg-05',7,'image/png',7941,'sliders/slider-bg-05.png','[]','2025-10-20 17:06:00','2025-10-20 17:06:00',NULL,'public'),(130,0,'slider-bg-06','slider-bg-06',7,'image/png',7941,'sliders/slider-bg-06.png','[]','2025-10-20 17:06:01','2025-10-20 17:06:01',NULL,'public'),(131,0,'video-bg-01','video-bg-01',7,'image/jpeg',14217,'sliders/video-bg-01.jpg','[]','2025-10-20 17:06:01','2025-10-20 17:06:01',NULL,'public'),(132,0,'brand-01','brand-01',8,'image/png',630,'brands/brand-01.png','[]','2025-10-20 17:06:01','2025-10-20 17:06:01',NULL,'public'),(133,0,'brand-02','brand-02',8,'image/png',630,'brands/brand-02.png','[]','2025-10-20 17:06:01','2025-10-20 17:06:01',NULL,'public'),(134,0,'brand-03','brand-03',8,'image/png',630,'brands/brand-03.png','[]','2025-10-20 17:06:01','2025-10-20 17:06:01',NULL,'public'),(135,0,'brand-04','brand-04',8,'image/png',630,'brands/brand-04.png','[]','2025-10-20 17:06:01','2025-10-20 17:06:01',NULL,'public'),(136,0,'brand-05','brand-05',8,'image/png',630,'brands/brand-05.png','[]','2025-10-20 17:06:01','2025-10-20 17:06:01',NULL,'public'),(137,0,'brand-06','brand-06',8,'image/png',630,'brands/brand-06.png','[]','2025-10-20 17:06:01','2025-10-20 17:06:01',NULL,'public'),(138,0,'brand-w-01','brand-w-01',8,'image/png',630,'brands/brand-w-01.png','[]','2025-10-20 17:06:02','2025-10-20 17:06:02',NULL,'public'),(139,0,'brand-w-02','brand-w-02',8,'image/png',630,'brands/brand-w-02.png','[]','2025-10-20 17:06:02','2025-10-20 17:06:02',NULL,'public'),(140,0,'brand-w-03','brand-w-03',8,'image/png',630,'brands/brand-w-03.png','[]','2025-10-20 17:06:02','2025-10-20 17:06:02',NULL,'public'),(141,0,'brand-w-04','brand-w-04',8,'image/png',630,'brands/brand-w-04.png','[]','2025-10-20 17:06:02','2025-10-20 17:06:02',NULL,'public'),(142,0,'brand-w-05','brand-w-05',8,'image/png',630,'brands/brand-w-05.png','[]','2025-10-20 17:06:02','2025-10-20 17:06:02',NULL,'public'),(143,0,'brand-w-06','brand-w-06',8,'image/png',630,'brands/brand-w-06.png','[]','2025-10-20 17:06:02','2025-10-20 17:06:02',NULL,'public'),(144,0,'pla-brand-01','pla-brand-01',8,'image/png',630,'brands/pla-brand-01.png','[]','2025-10-20 17:06:02','2025-10-20 17:06:02',NULL,'public'),(145,0,'pla-brand-02','pla-brand-02',8,'image/png',630,'brands/pla-brand-02.png','[]','2025-10-20 17:06:02','2025-10-20 17:06:02',NULL,'public'),(146,0,'pla-brand-03','pla-brand-03',8,'image/png',630,'brands/pla-brand-03.png','[]','2025-10-20 17:06:02','2025-10-20 17:06:02',NULL,'public'),(147,0,'pla-brand-04','pla-brand-04',8,'image/png',630,'brands/pla-brand-04.png','[]','2025-10-20 17:06:02','2025-10-20 17:06:02',NULL,'public'),(148,0,'pla-brand-05','pla-brand-05',8,'image/png',630,'brands/pla-brand-05.png','[]','2025-10-20 17:06:02','2025-10-20 17:06:02',NULL,'public'),(149,0,'pla-brand-06','pla-brand-06',8,'image/png',630,'brands/pla-brand-06.png','[]','2025-10-20 17:06:02','2025-10-20 17:06:02',NULL,'public'),(150,0,'feature-icon-01','feature-icon-01',9,'image/png',2082,'features/feature-icon-01.png','[]','2025-10-20 17:06:02','2025-10-20 17:06:02',NULL,'public'),(151,0,'feature-icon-02','feature-icon-02',9,'image/png',1941,'features/feature-icon-02.png','[]','2025-10-20 17:06:02','2025-10-20 17:06:02',NULL,'public'),(152,0,'feature-icon-03','feature-icon-03',9,'image/png',2535,'features/feature-icon-03.png','[]','2025-10-20 17:06:03','2025-10-20 17:06:03',NULL,'public'),(153,0,'feature-icon-04','feature-icon-04',9,'image/png',1158,'features/feature-icon-04.png','[]','2025-10-20 17:06:03','2025-10-20 17:06:03',NULL,'public'),(154,0,'feature-icon-05','feature-icon-05',9,'image/png',1887,'features/feature-icon-05.png','[]','2025-10-20 17:06:03','2025-10-20 17:06:03',NULL,'public'),(155,0,'feature-icon-06','feature-icon-06',9,'image/png',1666,'features/feature-icon-06.png','[]','2025-10-20 17:06:03','2025-10-20 17:06:03',NULL,'public'),(156,0,'pla-product-01','pla-product-01',10,'image/jpeg',9803,'products/pla-product-01.jpg','[]','2025-10-20 17:06:03','2025-10-20 17:06:03',NULL,'public'),(157,0,'pla-product-02','pla-product-02',10,'image/jpeg',9803,'products/pla-product-02.jpg','[]','2025-10-20 17:06:03','2025-10-20 17:06:03',NULL,'public'),(158,0,'pla-product-03','pla-product-03',10,'image/jpeg',9803,'products/pla-product-03.jpg','[]','2025-10-20 17:06:03','2025-10-20 17:06:03',NULL,'public'),(159,0,'pla-product-04','pla-product-04',10,'image/jpeg',9803,'products/pla-product-04.jpg','[]','2025-10-20 17:06:04','2025-10-20 17:06:04',NULL,'public'),(160,0,'product-1','product-1',10,'image/jpeg',9803,'products/product-1.jpg','[]','2025-10-20 17:06:04','2025-10-20 17:06:04',NULL,'public'),(161,0,'product-10','product-10',10,'image/jpeg',9803,'products/product-10.jpg','[]','2025-10-20 17:06:04','2025-10-20 17:06:04',NULL,'public'),(162,0,'product-11','product-11',10,'image/jpeg',9803,'products/product-11.jpg','[]','2025-10-20 17:06:04','2025-10-20 17:06:04',NULL,'public'),(163,0,'product-12','product-12',10,'image/jpeg',9803,'products/product-12.jpg','[]','2025-10-20 17:06:04','2025-10-20 17:06:04',NULL,'public'),(164,0,'product-13','product-13',10,'image/jpeg',9803,'products/product-13.jpg','[]','2025-10-20 17:06:04','2025-10-20 17:06:04',NULL,'public'),(165,0,'product-14','product-14',10,'image/jpeg',9803,'products/product-14.jpg','[]','2025-10-20 17:06:04','2025-10-20 17:06:04',NULL,'public'),(166,0,'product-15','product-15',10,'image/jpeg',9803,'products/product-15.jpg','[]','2025-10-20 17:06:04','2025-10-20 17:06:04',NULL,'public'),(167,0,'product-16','product-16',10,'image/jpeg',9803,'products/product-16.jpg','[]','2025-10-20 17:06:04','2025-10-20 17:06:04',NULL,'public'),(168,0,'product-17','product-17',10,'image/jpeg',9803,'products/product-17.jpg','[]','2025-10-20 17:06:05','2025-10-20 17:06:05',NULL,'public'),(169,0,'product-18','product-18',10,'image/jpeg',9803,'products/product-18.jpg','[]','2025-10-20 17:06:05','2025-10-20 17:06:05',NULL,'public'),(170,0,'product-19','product-19',10,'image/jpeg',9803,'products/product-19.jpg','[]','2025-10-20 17:06:05','2025-10-20 17:06:05',NULL,'public'),(171,0,'product-2','product-2',10,'image/jpeg',9803,'products/product-2.jpg','[]','2025-10-20 17:06:05','2025-10-20 17:06:05',NULL,'public'),(172,0,'product-20','product-20',10,'image/jpeg',9803,'products/product-20.jpg','[]','2025-10-20 17:06:05','2025-10-20 17:06:05',NULL,'public'),(173,0,'product-21','product-21',10,'image/jpeg',9803,'products/product-21.jpg','[]','2025-10-20 17:06:05','2025-10-20 17:06:05',NULL,'public'),(174,0,'product-22','product-22',10,'image/jpeg',9803,'products/product-22.jpg','[]','2025-10-20 17:06:05','2025-10-20 17:06:05',NULL,'public'),(175,0,'product-23','product-23',10,'image/jpeg',9803,'products/product-23.jpg','[]','2025-10-20 17:06:05','2025-10-20 17:06:05',NULL,'public'),(176,0,'product-24','product-24',10,'image/jpeg',9803,'products/product-24.jpg','[]','2025-10-20 17:06:05','2025-10-20 17:06:05',NULL,'public'),(177,0,'product-25','product-25',10,'image/jpeg',9803,'products/product-25.jpg','[]','2025-10-20 17:06:05','2025-10-20 17:06:05',NULL,'public'),(178,0,'product-26','product-26',10,'image/jpeg',9803,'products/product-26.jpg','[]','2025-10-20 17:06:06','2025-10-20 17:06:06',NULL,'public'),(179,0,'product-27','product-27',10,'image/jpeg',9803,'products/product-27.jpg','[]','2025-10-20 17:06:06','2025-10-20 17:06:06',NULL,'public'),(180,0,'product-28','product-28',10,'image/jpeg',9803,'products/product-28.jpg','[]','2025-10-20 17:06:06','2025-10-20 17:06:06',NULL,'public'),(181,0,'product-29','product-29',10,'image/jpeg',9803,'products/product-29.jpg','[]','2025-10-20 17:06:06','2025-10-20 17:06:06',NULL,'public'),(182,0,'product-3','product-3',10,'image/jpeg',9803,'products/product-3.jpg','[]','2025-10-20 17:06:06','2025-10-20 17:06:06',NULL,'public'),(183,0,'product-30','product-30',10,'image/jpeg',9803,'products/product-30.jpg','[]','2025-10-20 17:06:06','2025-10-20 17:06:06',NULL,'public'),(184,0,'product-31','product-31',10,'image/jpeg',9803,'products/product-31.jpg','[]','2025-10-20 17:06:06','2025-10-20 17:06:06',NULL,'public'),(185,0,'product-32','product-32',10,'image/jpeg',9803,'products/product-32.jpg','[]','2025-10-20 17:06:06','2025-10-20 17:06:06',NULL,'public'),(186,0,'product-33','product-33',10,'image/jpeg',9803,'products/product-33.jpg','[]','2025-10-20 17:06:07','2025-10-20 17:06:07',NULL,'public'),(187,0,'product-34','product-34',10,'image/jpeg',9803,'products/product-34.jpg','[]','2025-10-20 17:06:07','2025-10-20 17:06:07',NULL,'public'),(188,0,'product-35','product-35',10,'image/jpeg',9803,'products/product-35.jpg','[]','2025-10-20 17:06:07','2025-10-20 17:06:07',NULL,'public'),(189,0,'product-36','product-36',10,'image/jpeg',9803,'products/product-36.jpg','[]','2025-10-20 17:06:07','2025-10-20 17:06:07',NULL,'public'),(190,0,'product-37','product-37',10,'image/jpeg',9803,'products/product-37.jpg','[]','2025-10-20 17:06:07','2025-10-20 17:06:07',NULL,'public'),(191,0,'product-38','product-38',10,'image/jpeg',9803,'products/product-38.jpg','[]','2025-10-20 17:06:07','2025-10-20 17:06:07',NULL,'public'),(192,0,'product-39','product-39',10,'image/jpeg',9803,'products/product-39.jpg','[]','2025-10-20 17:06:07','2025-10-20 17:06:07',NULL,'public'),(193,0,'product-4','product-4',10,'image/jpeg',9803,'products/product-4.jpg','[]','2025-10-20 17:06:08','2025-10-20 17:06:08',NULL,'public'),(194,0,'product-40','product-40',10,'image/jpeg',9803,'products/product-40.jpg','[]','2025-10-20 17:06:08','2025-10-20 17:06:08',NULL,'public'),(195,0,'product-41','product-41',10,'image/jpeg',9803,'products/product-41.jpg','[]','2025-10-20 17:06:08','2025-10-20 17:06:08',NULL,'public'),(196,0,'product-42','product-42',10,'image/jpeg',9803,'products/product-42.jpg','[]','2025-10-20 17:06:08','2025-10-20 17:06:08',NULL,'public'),(197,0,'product-43','product-43',10,'image/jpeg',9803,'products/product-43.jpg','[]','2025-10-20 17:06:08','2025-10-20 17:06:08',NULL,'public'),(198,0,'product-44','product-44',10,'image/jpeg',9803,'products/product-44.jpg','[]','2025-10-20 17:06:08','2025-10-20 17:06:08',NULL,'public'),(199,0,'product-45','product-45',10,'image/jpeg',9803,'products/product-45.jpg','[]','2025-10-20 17:06:08','2025-10-20 17:06:08',NULL,'public'),(200,0,'product-46','product-46',10,'image/jpeg',9803,'products/product-46.jpg','[]','2025-10-20 17:06:08','2025-10-20 17:06:08',NULL,'public'),(201,0,'product-47','product-47',10,'image/jpeg',9803,'products/product-47.jpg','[]','2025-10-20 17:06:09','2025-10-20 17:06:09',NULL,'public'),(202,0,'product-48','product-48',10,'image/jpeg',9803,'products/product-48.jpg','[]','2025-10-20 17:06:09','2025-10-20 17:06:09',NULL,'public'),(203,0,'product-49','product-49',10,'image/jpeg',9803,'products/product-49.jpg','[]','2025-10-20 17:06:09','2025-10-20 17:06:09',NULL,'public'),(204,0,'product-5','product-5',10,'image/jpeg',9803,'products/product-5.jpg','[]','2025-10-20 17:06:09','2025-10-20 17:06:09',NULL,'public'),(205,0,'product-50','product-50',10,'image/jpeg',9803,'products/product-50.jpg','[]','2025-10-20 17:06:09','2025-10-20 17:06:09',NULL,'public'),(206,0,'product-51','product-51',10,'image/jpeg',9803,'products/product-51.jpg','[]','2025-10-20 17:06:09','2025-10-20 17:06:09',NULL,'public'),(207,0,'product-52','product-52',10,'image/jpeg',9803,'products/product-52.jpg','[]','2025-10-20 17:06:09','2025-10-20 17:06:09',NULL,'public'),(208,0,'product-53','product-53',10,'image/jpeg',9803,'products/product-53.jpg','[]','2025-10-20 17:06:09','2025-10-20 17:06:09',NULL,'public'),(209,0,'product-54','product-54',10,'image/jpeg',9803,'products/product-54.jpg','[]','2025-10-20 17:06:10','2025-10-20 17:06:10',NULL,'public'),(210,0,'product-55','product-55',10,'image/jpeg',9803,'products/product-55.jpg','[]','2025-10-20 17:06:10','2025-10-20 17:06:10',NULL,'public'),(211,0,'product-56','product-56',10,'image/jpeg',9803,'products/product-56.jpg','[]','2025-10-20 17:06:10','2025-10-20 17:06:10',NULL,'public'),(212,0,'product-57','product-57',10,'image/jpeg',9803,'products/product-57.jpg','[]','2025-10-20 17:06:10','2025-10-20 17:06:10',NULL,'public'),(213,0,'product-58','product-58',10,'image/jpeg',9803,'products/product-58.jpg','[]','2025-10-20 17:06:10','2025-10-20 17:06:10',NULL,'public'),(214,0,'product-59','product-59',10,'image/jpeg',9803,'products/product-59.jpg','[]','2025-10-20 17:06:10','2025-10-20 17:06:10',NULL,'public'),(215,0,'product-6','product-6',10,'image/jpeg',9803,'products/product-6.jpg','[]','2025-10-20 17:06:10','2025-10-20 17:06:10',NULL,'public'),(216,0,'product-60','product-60',10,'image/jpeg',9803,'products/product-60.jpg','[]','2025-10-20 17:06:10','2025-10-20 17:06:10',NULL,'public'),(217,0,'product-61','product-61',10,'image/jpeg',9803,'products/product-61.jpg','[]','2025-10-20 17:06:11','2025-10-20 17:06:11',NULL,'public'),(218,0,'product-62','product-62',10,'image/jpeg',9803,'products/product-62.jpg','[]','2025-10-20 17:06:11','2025-10-20 17:06:11',NULL,'public'),(219,0,'product-63','product-63',10,'image/jpeg',9803,'products/product-63.jpg','[]','2025-10-20 17:06:11','2025-10-20 17:06:11',NULL,'public'),(220,0,'product-64','product-64',10,'image/jpeg',9803,'products/product-64.jpg','[]','2025-10-20 17:06:11','2025-10-20 17:06:11',NULL,'public'),(221,0,'product-65','product-65',10,'image/jpeg',9803,'products/product-65.jpg','[]','2025-10-20 17:06:11','2025-10-20 17:06:11',NULL,'public'),(222,0,'product-66','product-66',10,'image/jpeg',9803,'products/product-66.jpg','[]','2025-10-20 17:06:11','2025-10-20 17:06:11',NULL,'public'),(223,0,'product-67','product-67',10,'image/jpeg',9803,'products/product-67.jpg','[]','2025-10-20 17:06:11','2025-10-20 17:06:11',NULL,'public'),(224,0,'product-68','product-68',10,'image/jpeg',9803,'products/product-68.jpg','[]','2025-10-20 17:06:12','2025-10-20 17:06:12',NULL,'public'),(225,0,'product-69','product-69',10,'image/jpeg',9803,'products/product-69.jpg','[]','2025-10-20 17:06:12','2025-10-20 17:06:12',NULL,'public'),(226,0,'product-7','product-7',10,'image/jpeg',9803,'products/product-7.jpg','[]','2025-10-20 17:06:12','2025-10-20 17:06:12',NULL,'public'),(227,0,'product-70','product-70',10,'image/jpeg',9803,'products/product-70.jpg','[]','2025-10-20 17:06:12','2025-10-20 17:06:12',NULL,'public'),(228,0,'product-71','product-71',10,'image/jpeg',9803,'products/product-71.jpg','[]','2025-10-20 17:06:12','2025-10-20 17:06:12',NULL,'public'),(229,0,'product-72','product-72',10,'image/jpeg',9803,'products/product-72.jpg','[]','2025-10-20 17:06:12','2025-10-20 17:06:12',NULL,'public'),(230,0,'product-73','product-73',10,'image/jpeg',9803,'products/product-73.jpg','[]','2025-10-20 17:06:12','2025-10-20 17:06:12',NULL,'public'),(231,0,'product-74','product-74',10,'image/jpeg',9803,'products/product-74.jpg','[]','2025-10-20 17:06:12','2025-10-20 17:06:12',NULL,'public'),(232,0,'product-75','product-75',10,'image/jpeg',9803,'products/product-75.jpg','[]','2025-10-20 17:06:12','2025-10-20 17:06:12',NULL,'public'),(233,0,'product-76','product-76',10,'image/jpeg',9803,'products/product-76.jpg','[]','2025-10-20 17:06:13','2025-10-20 17:06:13',NULL,'public'),(234,0,'product-77','product-77',10,'image/jpeg',9803,'products/product-77.jpg','[]','2025-10-20 17:06:13','2025-10-20 17:06:13',NULL,'public'),(235,0,'product-78','product-78',10,'image/jpeg',9803,'products/product-78.jpg','[]','2025-10-20 17:06:13','2025-10-20 17:06:13',NULL,'public'),(236,0,'product-79','product-79',10,'image/jpeg',9803,'products/product-79.jpg','[]','2025-10-20 17:06:13','2025-10-20 17:06:13',NULL,'public'),(237,0,'product-8','product-8',10,'image/jpeg',9803,'products/product-8.jpg','[]','2025-10-20 17:06:13','2025-10-20 17:06:13',NULL,'public'),(238,0,'product-80','product-80',10,'image/jpeg',9803,'products/product-80.jpg','[]','2025-10-20 17:06:13','2025-10-20 17:06:13',NULL,'public'),(239,0,'product-81','product-81',10,'image/jpeg',9803,'products/product-81.jpg','[]','2025-10-20 17:06:13','2025-10-20 17:06:13',NULL,'public'),(240,0,'product-82','product-82',10,'image/jpeg',9803,'products/product-82.jpg','[]','2025-10-20 17:06:13','2025-10-20 17:06:13',NULL,'public'),(241,0,'product-83','product-83',10,'image/jpeg',9803,'products/product-83.jpg','[]','2025-10-20 17:06:14','2025-10-20 17:06:14',NULL,'public'),(242,0,'product-84','product-84',10,'image/jpeg',9803,'products/product-84.jpg','[]','2025-10-20 17:06:14','2025-10-20 17:06:14',NULL,'public'),(243,0,'product-85','product-85',10,'image/jpeg',9803,'products/product-85.jpg','[]','2025-10-20 17:06:14','2025-10-20 17:06:14',NULL,'public'),(244,0,'product-86','product-86',10,'image/jpeg',9803,'products/product-86.jpg','[]','2025-10-20 17:06:14','2025-10-20 17:06:14',NULL,'public'),(245,0,'product-87','product-87',10,'image/jpeg',9803,'products/product-87.jpg','[]','2025-10-20 17:06:14','2025-10-20 17:06:14',NULL,'public'),(246,0,'product-88','product-88',10,'image/jpeg',9803,'products/product-88.jpg','[]','2025-10-20 17:06:14','2025-10-20 17:06:14',NULL,'public'),(247,0,'product-89','product-89',10,'image/jpeg',9803,'products/product-89.jpg','[]','2025-10-20 17:06:14','2025-10-20 17:06:14',NULL,'public'),(248,0,'product-9','product-9',10,'image/jpeg',9803,'products/product-9.jpg','[]','2025-10-20 17:06:14','2025-10-20 17:06:14',NULL,'public'),(249,0,'product-90','product-90',10,'image/jpeg',9803,'products/product-90.jpg','[]','2025-10-20 17:06:15','2025-10-20 17:06:15',NULL,'public'),(250,0,'product-91','product-91',10,'image/jpeg',9803,'products/product-91.jpg','[]','2025-10-20 17:06:15','2025-10-20 17:06:15',NULL,'public'),(251,0,'product-92','product-92',10,'image/jpeg',9803,'products/product-92.jpg','[]','2025-10-20 17:06:15','2025-10-20 17:06:15',NULL,'public'),(252,0,'product-93','product-93',10,'image/jpeg',9803,'products/product-93.jpg','[]','2025-10-20 17:06:15','2025-10-20 17:06:15',NULL,'public'),(253,0,'product-94','product-94',10,'image/jpeg',9803,'products/product-94.jpg','[]','2025-10-20 17:06:15','2025-10-20 17:06:15',NULL,'public'),(254,0,'product-95','product-95',10,'image/jpeg',9803,'products/product-95.jpg','[]','2025-10-20 17:06:15','2025-10-20 17:06:15',NULL,'public'),(255,0,'1','1',11,'image/jpeg',9803,'customers/1.jpg','[]','2025-10-20 17:06:35','2025-10-20 17:06:35',NULL,'public'),(256,0,'10','10',11,'image/jpeg',9803,'customers/10.jpg','[]','2025-10-20 17:06:35','2025-10-20 17:06:35',NULL,'public'),(257,0,'2','2',11,'image/jpeg',9803,'customers/2.jpg','[]','2025-10-20 17:06:36','2025-10-20 17:06:36',NULL,'public'),(258,0,'3','3',11,'image/jpeg',9803,'customers/3.jpg','[]','2025-10-20 17:06:36','2025-10-20 17:06:36',NULL,'public'),(259,0,'4','4',11,'image/jpeg',9803,'customers/4.jpg','[]','2025-10-20 17:06:36','2025-10-20 17:06:36',NULL,'public'),(260,0,'5','5',11,'image/jpeg',9803,'customers/5.jpg','[]','2025-10-20 17:06:36','2025-10-20 17:06:36',NULL,'public'),(261,0,'6','6',11,'image/jpeg',9803,'customers/6.jpg','[]','2025-10-20 17:06:36','2025-10-20 17:06:36',NULL,'public'),(262,0,'7','7',11,'image/jpeg',9803,'customers/7.jpg','[]','2025-10-20 17:06:36','2025-10-20 17:06:36',NULL,'public'),(263,0,'8','8',11,'image/jpeg',9803,'customers/8.jpg','[]','2025-10-20 17:06:36','2025-10-20 17:06:36',NULL,'public'),(264,0,'9','9',11,'image/jpeg',9803,'customers/9.jpg','[]','2025-10-20 17:06:36','2025-10-20 17:06:36',NULL,'public'),(265,0,'1','1',12,'image/jpeg',9803,'galleries/1.jpg','[]','2025-10-20 17:06:41','2025-10-20 17:06:41',NULL,'public'),(266,0,'2','2',12,'image/jpeg',9803,'galleries/2.jpg','[]','2025-10-20 17:06:41','2025-10-20 17:06:41',NULL,'public'),(267,0,'3','3',12,'image/jpeg',9803,'galleries/3.jpg','[]','2025-10-20 17:06:41','2025-10-20 17:06:41',NULL,'public'),(268,0,'4','4',12,'image/jpeg',9803,'galleries/4.jpg','[]','2025-10-20 17:06:41','2025-10-20 17:06:41',NULL,'public'),(269,0,'5','5',12,'image/jpeg',9803,'galleries/5.jpg','[]','2025-10-20 17:06:41','2025-10-20 17:06:41',NULL,'public'),(270,0,'6','6',12,'image/jpeg',9803,'galleries/6.jpg','[]','2025-10-20 17:06:41','2025-10-20 17:06:41',NULL,'public'),(278,0,'avatar-1','avatar-1',14,'image/png',674,'testimonials/avatar-1.png','[]','2025-10-20 17:06:42','2025-10-20 17:06:42',NULL,'public'),(279,0,'avatar-2','avatar-2',14,'image/png',674,'testimonials/avatar-2.png','[]','2025-10-20 17:06:42','2025-10-20 17:06:42',NULL,'public'),(280,0,'avatar-3','avatar-3',14,'image/png',674,'testimonials/avatar-3.png','[]','2025-10-20 17:06:42','2025-10-20 17:06:42',NULL,'public'),(281,0,'team-1','team-1',14,'image/jpeg',6202,'testimonials/team-1.jpg','[]','2025-10-20 17:06:42','2025-10-20 17:06:42',NULL,'public'),(282,0,'team-2','team-2',14,'image/jpeg',6202,'testimonials/team-2.jpg','[]','2025-10-20 17:06:42','2025-10-20 17:06:42',NULL,'public'),(283,0,'team-3','team-3',14,'image/jpeg',6202,'testimonials/team-3.jpg','[]','2025-10-20 17:06:42','2025-10-20 17:06:42',NULL,'public'),(284,0,'team-4','team-4',14,'image/jpeg',6202,'testimonials/team-4.jpg','[]','2025-10-20 17:06:42','2025-10-20 17:06:42',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'general',NULL,'general',0,'2025-10-20 17:05:48','2025-10-20 17:05:48',NULL),(2,0,'payments',NULL,'payments',0,'2025-10-20 17:05:48','2025-10-20 17:05:48',NULL),(3,0,'blog',NULL,'blog',0,'2025-10-20 17:05:49','2025-10-20 17:05:49',NULL),(4,0,'shop',NULL,'shop',0,'2025-10-20 17:05:52','2025-10-20 17:05:52',NULL),(5,0,'banners',NULL,'banners',0,'2025-10-20 17:05:54','2025-10-20 17:05:54',NULL),(6,0,'icons',NULL,'icons',0,'2025-10-20 17:05:57','2025-10-20 17:05:57',NULL),(7,0,'sliders',NULL,'sliders',0,'2025-10-20 17:05:58','2025-10-20 17:05:58',NULL),(8,0,'brands',NULL,'brands',0,'2025-10-20 17:06:01','2025-10-20 17:06:01',NULL),(9,0,'features',NULL,'features',0,'2025-10-20 17:06:02','2025-10-20 17:06:02',NULL),(10,0,'products',NULL,'products',0,'2025-10-20 17:06:03','2025-10-20 17:06:03',NULL),(11,0,'customers',NULL,'customers',0,'2025-10-20 17:06:35','2025-10-20 17:06:35',NULL),(12,0,'galleries',NULL,'galleries',0,'2025-10-20 17:06:41','2025-10-20 17:06:41',NULL),(14,0,'testimonials',NULL,'testimonials',0,'2025-10-20 17:06:42','2025-10-20 17:06:42',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
INSERT INTO `media_settings` VALUES (1,'recent_items','[{\"id\":4,\"is_folder\":true},{\"id\":12,\"is_folder\":true}]',NULL,1,'2026-11-01 02:29:30','2026-11-01 02:29:42');
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint(20) unsigned NOT NULL,
  `location` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-10-20 17:06:40','2025-10-20 17:06:40'),(2,2,'information','2025-10-20 17:06:40','2025-10-20 17:06:40'),(3,3,'my-account','2025-10-20 17:06:40','2025-10-20 17:06:40'),(4,4,'social-network','2025-10-20 17:06:41','2025-10-20 17:06:41');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `reference_id` bigint(20) unsigned DEFAULT NULL,
  `reference_type` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `icon_font` varchar(191) DEFAULT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `title` varchar(191) DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (40,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(41,1,0,NULL,NULL,'/products',NULL,1,'Shop All',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(42,1,0,NULL,NULL,'/product-categories/t-shirts',NULL,2,'T-Shirts',NULL,'_self',1,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(43,1,42,NULL,NULL,'/product-categories/t-shirts',NULL,0,'All T-Shirts',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(44,1,42,NULL,NULL,'/product-categories/oversized-t-shirts',NULL,1,'Oversized T-Shirts',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(45,1,42,NULL,NULL,'/product-categories/acid-wash-t-shirts',NULL,2,'Acid Wash T-Shirts',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(46,1,42,NULL,NULL,'/product-categories/polo-t-shirts',NULL,3,'Polo T-Shirts',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(47,1,0,NULL,NULL,'/product-categories/pants-trousers',NULL,3,'Pants & Bottoms',NULL,'_self',1,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(48,1,47,NULL,NULL,'/product-categories/pants-trousers',NULL,0,'All Pants',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(49,1,47,NULL,NULL,'/product-categories/formal-pants',NULL,1,'Formal Pants',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(50,1,47,NULL,NULL,'/product-categories/jeans',NULL,2,'Denim Jeans',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(51,1,47,NULL,NULL,'/product-categories/joggers',NULL,3,'Casual Joggers',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(52,1,0,NULL,NULL,'/product-categories/winter-wear',NULL,4,'Winter Wear',NULL,'_self',1,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(53,1,52,NULL,NULL,'/product-categories/winter-wear',NULL,0,'All Winter Wear',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(54,1,52,NULL,NULL,'/product-categories/hoodies',NULL,1,'Hoodies',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(55,1,52,NULL,NULL,'/product-categories/sweatshirts',NULL,2,'Sweatshirts',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(56,1,0,NULL,NULL,'/orders/tracking',NULL,5,'Track Order',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(57,1,0,NULL,NULL,'/contact',NULL,6,'Contact Us',NULL,'_self',0,'2026-10-25 13:04:09','2026-10-25 13:04:09'),(58,4,0,0,NULL,'https://facebook.com/habbitobd',NULL,1,'Facebook Page',NULL,'_blank',0,'2026-10-25 21:51:22','2026-10-25 21:51:22'),(59,4,0,0,NULL,'https://instagram.com/habbitobd',NULL,2,'Instagram',NULL,'_blank',0,'2026-10-25 21:51:22','2026-10-25 21:51:22'),(60,4,0,0,NULL,'https://youtube.com/@habbitobd',NULL,3,'YouTube Channel',NULL,'_blank',0,'2026-10-25 21:51:22','2026-10-25 21:51:22'),(61,4,0,0,NULL,'https://wa.me/8801889151058',NULL,4,'WhatsApp Support',NULL,'_blank',0,'2026-10-25 21:51:22','2026-10-25 21:51:22'),(62,2,0,0,NULL,'/orders/tracking',NULL,1,'Track Your Order',NULL,'_self',0,'2026-10-25 21:51:22','2026-10-25 21:51:22'),(63,2,0,0,NULL,'/products',NULL,2,'All Collections',NULL,'_self',0,'2026-10-25 21:51:22','2026-10-25 21:51:22'),(64,2,0,0,NULL,'/faqs',NULL,3,'Frequently Asked Questions',NULL,'_self',0,'2026-10-25 21:51:22','2026-10-25 21:51:22'),(65,2,0,0,NULL,'/contact',NULL,4,'Contact Us',NULL,'_self',0,'2026-10-25 21:51:22','2026-10-25 21:51:22'),(66,3,0,0,NULL,'/shipping-delivery-policy',NULL,1,'Cash On Delivery Info',NULL,'_self',0,'2026-10-25 21:51:22','2026-10-25 21:51:22'),(67,3,0,0,NULL,'/return-exchange-policy',NULL,2,'Return & Exchange Policy',NULL,'_self',0,'2026-10-25 21:51:22','2026-10-25 21:51:22'),(68,3,0,0,NULL,'/privacy-policy',NULL,3,'Privacy Policy',NULL,'_self',0,'2026-10-25 21:51:22','2026-10-25 21:51:22'),(69,3,0,0,NULL,'/terms-and-conditions',NULL,4,'Terms & Conditions',NULL,'_self',0,'2026-10-25 21:51:22','2026-10-25 21:51:22');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-10-20 17:06:40','2025-10-20 17:06:40'),(2,'Information','information','published','2025-10-20 17:06:40','2025-10-20 17:06:40'),(3,'My Account','my-account','published','2025-10-20 17:06:40','2025-10-20 17:06:40'),(4,'Social Network','social-network','published','2025-10-20 17:06:41','2025-10-20 17:06:41');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_id` bigint(20) unsigned NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'header_style','[\"collapsed\"]',1,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(2,'customize_footer','[\"custom\"]',2,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(3,'footer_background_color','[\"#040404\"]',2,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(4,'footer_text_color','[\"#fff\"]',2,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(5,'footer_text_muted_color','[\"#a0a0a0\"]',2,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(6,'footer_logo','[\"general\\/habitto-logo.jpg\"]',2,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(7,'footer_border_color','[\"#282828\"]',2,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(8,'footer_bottom_background_color','[\"#040404\"]',2,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(9,'customize_footer','[\"custom\"]',3,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(10,'footer_bottom_background_color','[\"#f8f8f8\"]',3,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(11,'header_style','[\"centered-logo\"]',4,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(12,'customize_footer','[\"custom\"]',4,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(13,'footer_background_color','[\"#F7EFEC\"]',4,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(14,'footer_bottom_background_color','[\"#F7EFEC\"]',4,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(15,'customize_footer','[\"custom\"]',5,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(16,'footer_background_color','[\"#F7EFEC\"]',5,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(17,'footer_bottom_background_color','[\"#F7EFEC\"]',5,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(18,'customize_footer','[\"custom\"]',7,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(19,'footer_background_color','[\"#040404\"]',7,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(20,'footer_text_color','[\"#fff\"]',7,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(21,'footer_text_muted_color','[\"#a0a0a0\"]',7,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(22,'footer_logo','[\"general\\/habitto-logo.jpg\"]',7,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(23,'footer_border_color','[\"#282828\"]',7,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(24,'footer_bottom_background_color','[\"#040404\"]',7,'Botble\\Page\\Models\\Page','2025-10-20 17:05:54','2025-10-20 17:05:54'),(25,'subtitle','[\"Accessories\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(26,'action_label','[\"Shop Now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(27,'subtitle','[\"Accessories\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(28,'action_label','[\"Shop Now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(29,'subtitle','[\"Accessories\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(30,'action_label','[\"Shop Now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(31,'subtitle','[\"New Drop 2026\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(32,'action_label','[\"Explore Drop\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(33,'subtitle','[\"Winter Essentials\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(34,'action_label','[\"Shop Winter\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(35,'subtitle','[\"Elevated Casuals\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(36,'action_label','[\"Shop Collection\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(37,'subtitle','[null]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(38,'action_label','[\"Shop Now\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(39,'subtitle','[\"New Modern Stylist Fashionable Women\'s Wear holder\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(40,'action_label','[\"Shop Now\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(41,'subtitle','[\"New Modern Stylist Fashionable Women\'s Wear holder\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(42,'action_label','[\"Shop Now\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(43,'subtitle','[null]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(44,'action_label','[\"Shop Now\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(45,'subtitle','[null]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(46,'action_label','[\"Shop Now\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(47,'subtitle','[null]',12,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(48,'action_label','[\"Shop Now\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(49,'subtitle','[null]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(50,'action_label','[\"Shop Now\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(51,'subtitle','[null]',14,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(52,'action_label','[\"Shop Now\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(53,'subtitle','[null]',15,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(54,'action_label','[\"Shop Now\"]',15,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-10-20 17:06:01','2025-10-20 17:06:01'),(55,'subtitle','[\"Limited Edition 2026\"]',3,'Botble\\Ads\\Models\\Ads','2025-10-20 17:06:01','2025-10-20 17:06:01'),(56,'subtitle','[\"৩৪০ জিএসএম ফ্লিস ও প্রিমিয়াম ড্রপ-শোল্ডার\"]',4,'Botble\\Ads\\Models\\Ads','2025-10-20 17:06:01','2025-10-20 17:06:01'),(57,'subtitle','[\"Furniture\"]',5,'Botble\\Ads\\Models\\Ads','2025-10-20 17:06:01','2025-10-20 17:06:01'),(58,'subtitle','[\"100 Added\"]',6,'Botble\\Ads\\Models\\Ads','2025-10-20 17:06:01','2025-10-20 17:06:01'),(59,'subtitle','[\"-60% Offer\"]',7,'Botble\\Ads\\Models\\Ads','2025-10-20 17:06:01','2025-10-20 17:06:01'),(60,'subtitle','[\"Best Bakery Products\"]',8,'Botble\\Ads\\Models\\Ads','2025-10-20 17:06:01','2025-10-20 17:06:01'),(61,'subtitle','[\"Best Bakery Products\"]',9,'Botble\\Ads\\Models\\Ads','2025-10-20 17:06:01','2025-10-20 17:06:01'),(62,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:15','2025-10-20 17:06:15'),(63,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:15','2025-10-20 17:06:15'),(64,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:15','2025-10-20 17:06:15'),(65,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:15','2025-10-20 17:06:15'),(66,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(67,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(68,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(69,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(70,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(71,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(72,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(73,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(74,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(75,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(76,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(77,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(78,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(79,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(80,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(81,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(82,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(83,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(84,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(85,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(86,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',25,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(87,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',26,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(88,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',27,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(89,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',28,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(90,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',29,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(91,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',30,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(92,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',31,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:16','2025-10-20 17:06:16'),(93,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',32,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(94,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',33,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(95,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',34,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(96,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',35,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(97,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',36,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(98,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',37,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(99,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',38,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(100,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',39,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(101,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',40,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(102,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',41,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(103,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',42,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(104,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',43,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(105,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',44,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(106,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',45,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(107,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',46,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(108,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',47,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(109,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',48,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(110,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',49,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(111,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',50,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(112,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',51,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(113,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',52,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(114,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',53,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(115,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',54,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(116,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',55,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:17','2025-10-20 17:06:17'),(117,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',56,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(118,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',57,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(119,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',58,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(120,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',59,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(121,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',60,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(122,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',61,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(123,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',62,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(124,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',63,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(125,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',64,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(126,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',65,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(127,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',66,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(128,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',67,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(129,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',68,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(130,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',69,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(131,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',70,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:18','2025-10-20 17:06:18'),(132,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',71,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:19','2025-10-20 17:06:19'),(133,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',72,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:19','2025-10-20 17:06:19'),(134,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',73,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:19','2025-10-20 17:06:19'),(135,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',74,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:19','2025-10-20 17:06:19'),(136,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',75,'Botble\\Ecommerce\\Models\\Product','2025-10-20 17:06:19','2025-10-20 17:06:19'),(137,'title','[\"Satisfied client testimonial\"]',1,'Botble\\Testimonial\\Models\\Testimonial','2025-10-20 17:06:42','2025-10-20 17:06:42'),(138,'star','[5]',1,'Botble\\Testimonial\\Models\\Testimonial','2025-10-20 17:06:42','2025-10-20 17:06:42'),(139,'title','[\"98% of residents recommend us\"]',2,'Botble\\Testimonial\\Models\\Testimonial','2025-10-20 17:06:42','2025-10-20 17:06:42'),(140,'star','[5]',2,'Botble\\Testimonial\\Models\\Testimonial','2025-10-20 17:06:42','2025-10-20 17:06:42'),(141,'title','[\"Our success stories\"]',3,'Botble\\Testimonial\\Models\\Testimonial','2025-10-20 17:06:43','2025-10-20 17:06:43'),(142,'star','[5]',3,'Botble\\Testimonial\\Models\\Testimonial','2025-10-20 17:06:43','2025-10-20 17:06:43'),(143,'title','[\"This is simply unbelievable\"]',4,'Botble\\Testimonial\\Models\\Testimonial','2025-10-20 17:06:43','2025-10-20 17:06:43'),(144,'star','[5]',4,'Botble\\Testimonial\\Models\\Testimonial','2025-10-20 17:06:43','2025-10-20 17:06:43'),(145,'seo_meta','[{\"index\":\"index\"}]',160,'Botble\\Ecommerce\\Models\\Product','2026-11-01 06:33:59','2026-11-01 06:33:59');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_08_26_080444_fix_missing_copyright_widget',1),(31,'2023_09_07_025340_activate_mollie_and_sale_popup_plugin',1),(32,'2023_09_14_021936_update_index_for_slugs_table',1),(33,'2023_10_27_023808_update_page_metabox',1),(34,'2023_11_22_071805_migrate_header_messages_to_announcements_table',1),(35,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(36,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(37,'2024_03_25_000000_migrate_rename_shortcode_contact_box_to_contact_form',1),(38,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(39,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(40,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(41,'2024_07_12_100000_change_random_hash_for_media',1),(42,'2024_09_30_024515_create_sessions_table',1),(43,'2024_12_19_000001_create_device_tokens_table',1),(44,'2024_12_19_000002_create_push_notifications_table',1),(45,'2024_12_19_000003_create_push_notification_recipients_table',1),(46,'2024_12_30_000001_create_user_settings_table',1),(47,'2025_07_06_030754_add_phone_to_users_table',1),(48,'2025_07_31_add_performance_indexes_to_slugs_table',1),(49,'2020_11_18_150916_ads_create_ads_table',2),(50,'2021_12_02_035301_add_ads_translations_table',2),(51,'2023_04_17_062645_add_open_in_new_tab',2),(52,'2023_11_07_023805_add_tablet_mobile_image',2),(53,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(54,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',2),(55,'2024_04_27_100730_improve_analytics_setting',3),(56,'2023_08_11_060908_create_announcements_table',4),(57,'2025_02_11_153025_add_action_label_to_announcement_translations',4),(58,'2015_06_29_025744_create_audit_history',5),(59,'2023_11_14_033417_change_request_column_in_table_audit_histories',5),(60,'2025_05_05_000001_add_user_type_to_audit_histories_table',5),(61,'2015_06_18_033822_create_blog_table',6),(62,'2021_02_16_092633_remove_default_value_for_author_type',6),(63,'2021_12_03_030600_create_blog_translations',6),(64,'2022_04_19_113923_add_index_to_table_posts',6),(65,'2023_08_29_074620_make_column_author_id_nullable',6),(66,'2024_07_30_091615_fix_order_column_in_categories_table',6),(67,'2025_01_06_033807_add_default_value_for_categories_author_type',6),(68,'2016_06_17_091537_create_contacts_table',7),(69,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',7),(70,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',7),(71,'2024_03_25_000001_update_captcha_settings_for_contact',7),(72,'2024_04_19_063914_create_custom_fields_table',7),(73,'2020_03_05_041139_create_ecommerce_tables',8),(74,'2021_01_01_044147_ecommerce_create_flash_sale_table',8),(75,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',8),(76,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',8),(77,'2021_02_18_073505_update_table_ec_reviews',8),(78,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',8),(79,'2021_03_10_025153_change_column_tax_amount',8),(80,'2021_03_20_033103_add_column_availability_to_table_ec_products',8),(81,'2021_04_28_074008_ecommerce_create_product_label_table',8),(82,'2021_05_31_173037_ecommerce_create_ec_products_translations',8),(83,'2021_08_17_105016_remove_column_currency_id_in_some_tables',8),(84,'2021_08_30_142128_add_images_column_to_ec_reviews_table',8),(85,'2021_10_04_030050_add_column_created_by_to_table_ec_products',8),(86,'2021_10_05_122616_add_status_column_to_ec_customers_table',8),(87,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',8),(88,'2021_11_23_071403_correct_languages_for_product_variations',8),(89,'2021_11_28_031808_add_product_tags_translations',8),(90,'2021_12_01_031123_add_featured_image_to_ec_products',8),(91,'2022_01_01_033107_update_table_ec_shipments',8),(92,'2022_02_16_042457_improve_product_attribute_sets',8),(93,'2022_03_22_075758_correct_product_name',8),(94,'2022_04_19_113334_add_index_to_ec_products',8),(95,'2022_04_28_144405_remove_unused_table',8),(96,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',8),(97,'2022_05_18_143720_add_index_to_table_ec_product_categories',8),(98,'2022_06_16_095633_add_index_to_some_tables',8),(99,'2022_06_30_035148_create_order_referrals_table',8),(100,'2022_07_24_153815_add_completed_at_to_ec_orders_table',8),(101,'2022_08_14_032836_create_ec_order_returns_table',8),(102,'2022_08_14_033554_create_ec_order_return_items_table',8),(103,'2022_08_15_040324_add_billing_address',8),(104,'2022_08_30_091114_support_digital_products_table',8),(105,'2022_09_13_095744_create_options_table',8),(106,'2022_09_13_104347_create_option_value_table',8),(107,'2022_10_05_163518_alter_table_ec_order_product',8),(108,'2022_10_12_041517_create_invoices_table',8),(109,'2022_10_12_142226_update_orders_table',8),(110,'2022_10_13_024916_update_table_order_returns',8),(111,'2022_10_21_030830_update_columns_in_ec_shipments_table',8),(112,'2022_10_28_021046_update_columns_in_ec_shipments_table',8),(113,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',8),(114,'2022_11_19_041643_add_ec_tax_product_table',8),(115,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',8),(116,'2022_12_17_041532_fix_address_in_order_invoice',8),(117,'2022_12_26_070329_create_ec_product_views_table',8),(118,'2023_01_04_033051_fix_product_categories',8),(119,'2023_01_09_050400_add_ec_global_options_translations_table',8),(120,'2023_01_10_093754_add_missing_option_value_id',8),(121,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',8),(122,'2023_01_26_021854_add_ec_customer_used_coupons_table',8),(123,'2023_02_08_015900_update_options_column_in_ec_order_product_table',8),(124,'2023_02_27_095752_remove_duplicate_reviews',8),(125,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',8),(126,'2023_04_21_082427_create_ec_product_categorizables_table',8),(127,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',8),(128,'2023_05_17_025812_fix_invoice_issue',8),(129,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',8),(130,'2023_05_27_144611_fix_exchange_rate_setting',8),(131,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',8),(132,'2023_06_30_042512_create_ec_order_tax_information_table',8),(133,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',8),(134,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',8),(135,'2023_08_15_064505_create_ec_tax_rules_table',8),(136,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',8),(137,'2023_08_22_094114_drop_unique_for_barcode',8),(138,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',8),(139,'2023_09_07_094312_add_index_to_product_sku_and_translations',8),(140,'2023_09_19_024955_create_discount_product_categories_table',8),(141,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',8),(142,'2023_11_22_154643_add_unique_in_table_ec_products_variations',8),(143,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',8),(144,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',8),(145,'2023_12_25_040604_ec_create_review_replies_table',8),(146,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',8),(147,'2024_01_16_070706_fix_translation_tables',8),(148,'2024_01_23_075227_add_proof_file_to_ec_orders_table',8),(149,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',8),(150,'2024_03_27_062402_create_ec_customer_deletion_requests_table',8),(151,'2024_03_29_042242_migrate_old_captcha_settings',8),(152,'2024_03_29_093946_create_ec_order_return_histories_table',8),(153,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',8),(154,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',8),(155,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',8),(156,'2024_05_07_073153_improve_table_wishlist',8),(157,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',8),(158,'2024_05_15_021503_fix_invoice_path',8),(159,'2024_06_20_160724_create_ec_shared_wishlists_table',8),(160,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',8),(161,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',8),(162,'2024_07_14_071826_make_customer_email_nullable',8),(163,'2024_07_15_104916_add_video_media_column_to_ec_products_table',8),(164,'2024_07_26_052530_add_percentage_to_tax_rules_table',8),(165,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',8),(166,'2024_08_19_132849_create_specification_tables',8),(167,'2024_09_07_060744_add_author_column_to_specification_tables',8),(168,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',8),(169,'2024_09_25_073928_remove_wrong_product_slugs',8),(170,'2025_01_10_000000_fix_order_invoice_rounding_issues',8),(171,'2025_01_15_050230_migrate_old_theme_options',8),(172,'2025_01_15_optimize_products_export_index',8),(173,'2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table',8),(174,'2025_01_24_044641_migrate_old_country_data',8),(175,'2025_01_28_233602_add_private_notes_into_ec_orders_table',8),(176,'2025_02_13_021247_add_tax_translations',8),(177,'2025_02_24_152621_add_text_color_to_product_labels_table',8),(178,'2025_04_12_000001_add_payment_fee_to_ec_orders_table',8),(179,'2025_04_12_000002_add_payment_fee_to_ec_invoices_table',8),(180,'2025_05_05_092036_make_user_id_and_tax_amount_nullable',8),(181,'2025_05_15_082342_drop_email_unique_index_in_ec_customers_table',8),(182,'2025_06_07_081731_add_translations_for_specification_groups_and_tables',8),(183,'2025_06_17_091813_increase_note_in_shipments_table',8),(184,'2025_06_24_000001_create_ec_product_license_codes_table',8),(185,'2025_06_24_080427_add_license_code_type_to_products_table',8),(186,'2025_07_06_062402_create_ec_customer_deletion_requests_table',8),(187,'2025_07_07_161729_change_license_code_to_text_in_ec_product_license_codes_table',8),(188,'2025_07_08_162756_increase_license_code_column_size_in_ec_order_product_table',8),(189,'2025_07_09_000001_add_customer_address_fields_to_ec_invoices_table',8),(190,'2025_07_15_090809_create_ec_abandoned_carts_table',8),(191,'2025_07_24_120510_increase_barcode_column_length_in_ec_products_table',8),(192,'2025_07_31_133600_add_performance_indexes_to_ec_product_categories_table',8),(193,'2025_08_01_161205_optimize_product_variation_query_indexes',8),(194,'2025_08_08_145059_correct_tax_amount_in_order_and_invoice_tables',8),(195,'2025_09_05_025247_create_ec_product_specification_attribute_translations_table',8),(196,'2025_09_08_025516_add_variations_count_to_ec_products_table',8),(197,'2025_09_08_080248_add_slug_column_to_ec_product_categories_table',8),(198,'2025_09_08_080330_add_slug_column_to_ec_product_categories_translations_table',8),(199,'2025_09_08_080443_populate_slug_column_for_product_categories',8),(200,'2025_09_08_081216_add_slug_column_to_ec_products_table',8),(201,'2025_09_08_081237_add_slug_column_to_ec_products_translations_table',8),(202,'2025_09_08_081321_populate_slug_column_for_products',8),(203,'2025_09_10_073321_add_performance_indexes_to_ecommerce_tables',8),(204,'2025_09_18_093922_fix_tax_rounding_in_order_products_and_invoices',8),(205,'2025_09_21_030756_add_reviews_cache_to_ec_products_table',8),(206,'2025_09_30_090432_add_performance_indexes_to_ec_product_categories_table',8),(207,'2025_10_10_090331_add_number_format_style_to_ec_currencies_table',8),(208,'2025_10_10_092235_add_space_between_price_and_currency_to_ec_currencies_table',8),(209,'2025_10_11_074318_add_price_includes_tax_to_ec_products_table',8),(210,'2025_10_13_043527_generate_slugs_for_product_collections',8),(211,'2018_07_09_221238_create_faq_table',9),(212,'2021_12_03_082134_create_faq_translations',9),(213,'2023_11_17_063408_add_description_column_to_faq_categories_table',9),(214,'2016_10_13_150201_create_galleries_table',10),(215,'2021_12_03_082953_create_gallery_translations',10),(216,'2022_04_30_034048_create_gallery_meta_translations_table',10),(217,'2023_08_29_075308_make_column_user_id_nullable',10),(218,'2016_10_03_032336_create_languages_table',11),(219,'2023_09_14_022423_add_index_for_language_table',11),(220,'2021_10_25_021023_fix-priority-load-for-language-advanced',12),(221,'2021_12_03_075608_create_page_translations',12),(222,'2023_07_06_011444_create_slug_translations_table',12),(223,'2019_11_18_061011_create_country_table',13),(224,'2021_12_03_084118_create_location_translations',13),(225,'2021_12_03_094518_migrate_old_location_data',13),(226,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',13),(227,'2022_01_16_085908_improve_plugin_location',13),(228,'2022_08_04_052122_delete_location_backup_tables',13),(229,'2023_04_23_061847_increase_state_translations_abbreviation_column',13),(230,'2023_07_26_041451_add_more_columns_to_location_table',13),(231,'2023_07_27_041451_add_more_columns_to_location_translation_table',13),(232,'2023_08_15_073307_drop_unique_in_states_cities_translations',13),(233,'2023_10_21_065016_make_state_id_in_table_cities_nullable',13),(234,'2024_08_17_094600_add_image_into_countries',13),(235,'2025_01_08_093652_add_zip_code_to_cities',13),(236,'2025_07_31_083459_add_indexes_for_location_search_performance',13),(237,'2017_10_24_154832_create_newsletter_table',14),(238,'2024_03_25_000001_update_captcha_settings_for_newsletter',14),(239,'2017_05_18_080441_create_payment_tables',15),(240,'2021_03_27_144913_add_customer_type_into_table_payments',15),(241,'2021_05_24_034720_make_column_currency_nullable',15),(242,'2021_08_09_161302_add_metadata_column_to_payments_table',15),(243,'2021_10_19_020859_update_metadata_field',15),(244,'2022_06_28_151901_activate_paypal_stripe_plugin',15),(245,'2022_07_07_153354_update_charge_id_in_table_payments',15),(246,'2024_07_04_083133_create_payment_logs_table',15),(247,'2025_04_12_000003_add_payment_fee_to_payments_table',15),(248,'2025_05_22_000001_add_payment_fee_type_to_settings_table',15),(249,'2017_07_11_140018_create_simple_slider_table',16),(250,'2025_04_08_040931_create_social_logins_table',17),(251,'2022_11_02_092723_team_create_team_table',18),(252,'2023_08_11_094574_update_team_table',18),(253,'2023_11_30_085354_add_missing_description_to_team',18),(254,'2024_10_02_030027_add_more_columns_to_teams_translations_table',18),(255,'2018_07_09_214610_create_testimonial_table',19),(256,'2021_12_03_083642_create_testimonials_translations',19),(257,'2016_10_07_193005_create_translations_table',20),(258,'2023_12_12_105220_drop_translations_table',20),(259,'2025_10_22_020518_add_verification_code_to_ec_customer_deletion_requests_table',21),(260,'2025_10_22_090000_remove_duplicate_order_addresses',21),(261,'2026_11_02_000001_create_sms_logs_table',21);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `content` longtext DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','[simple-slider key=\"slider-home-1\" style=\"wooden\" ads_1=\"IYHICPADQD5X\" ads_2=\"R4YAV9FECJUS\"][/simple-slider][services quantity=\"4\" title_1=\"Nationwide Fast Delivery\" description_1=\"24h in Dhaka, 72h outside\" image_1=\"icons/fast-delivery.png\" title_2=\"100% Cash On Delivery\" description_2=\"Pay when you receive\" image_2=\"icons/cash-on-delivery.png\" title_3=\"240+ GSM Combed Cotton\" description_3=\"Heavyweight premium fabric\" image_3=\"icons/verified.png\" title_4=\"WhatsApp Order Support\" description_4=\"Direct help: 10AM - 10PM\" image_4=\"icons/support.png\" enable_lazy_loading=\"no\"][/services][product-categories title=\"Trending <span>Streetwear Drops</span>\" category_ids=\"2,3,8,9,17,1\" style=\"wooden\" enable_lazy_loading=\"no\"][/product-categories][products style=\"wooden\" title=\"Best Selling <span>Apparel</span>\" limit=\"10\" enable_lazy_loading=\"no\"][/products][deal-product flash_sale_id=\"1\" style=\"wooden\" enable_lazy_loading=\"no\"][/deal-product]',1,NULL,'full-width',NULL,'published','2025-10-20 17:05:54','2026-11-01 08:00:15'),(2,'Fashion Home','[simple-slider key=\"slider-home-2\" style=\"fashion\"][/simple-slider][services quantity=\"4\" title_1=\"সারা দেশে দ্রুত ডেলিভারি\" description_1=\"ঢাকায় ২৪ ঘণ্টা, ঢাকার বাইরে ৭২ ঘণ্টা\" image_1=\"icons/fast-delivery.png\" title_2=\"১০০% ক্যাশ অন ডেলিভারি\" description_2=\"পণ্য হাতে পেয়ে মূল্য পরিশোধ করুন\" image_2=\"icons/cash-on-delivery.png\" title_3=\"২৪০+ জিএসএম কম্বড কটন\" description_3=\"হেভিওয়েট প্রিমিয়াম ফেব্রিক গ্যারান্টি\" image_3=\"icons/verified.png\" title_4=\"হোয়াটসঅ্যাপ অর্ডার সাপোর্ট\" description_4=\"সরাসরি সহায়তা: সকাল ১০টা - রাত ১০টা\" image_4=\"icons/support.png\" enable_lazy_loading=\"no\"][/services][product-categories title=\"Top <span>Categories</span>\" category_ids=\"1,2,3,4\" style=\"fashion\" enable_lazy_loading=\"no\"][/product-categories][products style=\"fashion\" title=\"Popular <span>Streetwear Apparel</span>\" limit=\"10\" enable_lazy_loading=\"no\"][/products][theme-ads key_1=\"QPTCBJBOJOSY\" key_2=\"T2VFLDYYIJEH\" enable_lazy_loading=\"no\"][/theme-ads][featured-posts title=\"Fashion & Style Guide\" limit=\"4\" enable_lazy_loading=\"no\"][/featured-posts][brands title=\"Our Quality & Fabric Standards\" quantity=\"6\" name_1=\"100% Combed Cotton\" image_1=\"features/feature-icon-01.png\" link_1=\"/products\" name_2=\"Heavyweight 240+ GSM\" image_2=\"features/feature-icon-02.png\" link_2=\"/products\" name_3=\"Bio-Washed & Soft\" image_3=\"features/feature-icon-03.png\" link_3=\"/products\" name_4=\"Double Needle Stitch\" image_4=\"features/feature-icon-04.png\" link_4=\"/products\" name_5=\"Lycra Ribbed Neck\" image_5=\"features/feature-icon-05.png\" link_5=\"/products\" name_6=\"Cash On Delivery\" image_6=\"features/feature-icon-06.png\" link_6=\"/products\" enable_lazy_loading=\"no\"][/brands]',1,NULL,'full-width',NULL,'published','2025-10-20 17:05:54','2026-11-01 08:00:15'),(3,'Furniture Home','[simple-slider key=\"slider-furniture\" style=\"furniture\"][/simple-slider][services quantity=\"4\" title_1=\"Free shipping\" description_1=\"Free shipping on orders over.\" image_1=\"icons/box.png\" title_2=\"Free Returns\" description_2=\"30-days free return policy\" image_2=\"icons/car.png\" title_3=\"Secured Payments\" description_3=\"We accept all major credit cards\" image_3=\"icons/payment.png\" title_4=\"Customer Service\" description_4=\"Top notch customer service\" image_4=\"icons/hours.png\" enable_lazy_loading=\"yes\"][/services][products style=&quot;wooden&quot; title=&quot;Popular &lt;span&gt;Products&lt;/span&gt;&quot; limit=&quot;10&quot; enable_lazy_loading=&quot;yes&quot;][/products][theme-ads style=\"furniture\" key_1=\"JO7LLJHFH1RO\" key_2=\"L8GDJUBVD2TQ\" key_3=\"PXJPAXLOCVRS\" enable_lazy_loading=\"yes\"][/theme-ads][deal-product flash_sale_id=\"1\" enable_lazy_loading=\"yes\"][/deal-product][products-slide title=\"Top Sell In Month\" limit=\"5\" type=\"trending\" enable_lazy_loading=\"yes\"][/products-slide][brands title=\"Happy Sponsors\" background_color=\"#040404\" quantity=\"6\" name_1=\"Bustle\" image_1=\"brands/brand-w-01.png\" link_1=\"https://www.bustle.com\" name_2=\"Bazaar\" image_2=\"brands/brand-w-02.png\" link_2=\"https://www.harpersbazaar.com\" name_3=\"Goop\" image_3=\"brands/brand-w-03.png\" link_3=\"https://goop.com/\" name_4=\"Brit + Co\" image_4=\"brands/brand-w-04.png\" link_4=\"https://www.brit.co\" name_5=\"The Couture Club\" image_5=\"brands/brand-w-05.png\" link_5=\"https://www.thecoutureclub.com\" name_6=\"Allure\" image_6=\"brands/brand-w-06.png\" link_6=\"https://www.allure.com\" enable_lazy_loading=\"yes\"][/brands][featured-posts title=\"Blog & Insights\" limit=\"4\" type=\"popular\" url=\"/blog\" enable_lazy_loading=\"yes\"][/featured-posts]',1,NULL,'full-width',NULL,'draft','2025-10-20 17:05:54','2025-10-20 17:05:54'),(4,'Cosmetics Home','[simple-slider key=\"slider-cosmetics\" style=\"cosmetics\"][/simple-slider][brands background_color=\"#F7EFEC\" quantity=\"6\" name_1=\"Bustle\" image_1=\"brands/pla-brand-01.png\" link_1=\"https://www.bustle.com\" name_2=\"Bazaar\" image_2=\"brands/pla-brand-02.png\" link_2=\"https://www.harpersbazaar.com\" name_3=\"Goop\" image_3=\"brands/pla-brand-03.png\" link_3=\"https://goop.com/\" name_4=\"Brit + Co\" image_4=\"brands/pla-brand-04.png\" link_4=\"https://www.brit.co\" name_5=\"The Couture Club\" image_5=\"brands/pla-brand-05.png\" link_5=\"https://www.thecoutureclub.com\" name_6=\"Allure\" image_6=\"brands/pla-brand-06.png\" link_6=\"https://www.allure.com\" enable_lazy_loading=\"yes\"][/brands][product-collections collection_ids=\"4,5,6,7\" enable_lazy_loading=\"yes\"][/product-collections][products style=&quot;wooden&quot; title=&quot;Popular &lt;span&gt;Products&lt;/span&gt;&quot; limit=&quot;4&quot; enable_lazy_loading=&quot;yes&quot;][/products][product-categories category_ids=\"10,11,12,13,14,15\" style=\"cosmetics\" enable_lazy_loading=\"yes\"][/product-categories][deal-product flash_sale_id=\"1\" style=\"cosmetics\" marque_text=\"Great Deal Of The Day Shop Now\" marque_highlight_text=\"Shop Now\" marque_highlight_url=\"/products\" highlight_background=\"blog/9.jpg\" enable_lazy_loading=\"yes\"][/deal-product][testimonials title=\"User Feedbacks\" limit=\"3\" enable_lazy_loading=\"yes\"][/testimonials][featured-posts title=\"Blog & Insights\" limit=\"4\" type=\"popular\" url=\"/blog\" enable_lazy_loading=\"yes\"][/featured-posts]',1,NULL,'full-width',NULL,'draft','2025-10-20 17:05:54','2025-10-20 17:05:54'),(5,'Food Grocery Home','[simple-slider key=\"slider-grocery\" style=\"grocery\" ads_1=\"EMRCINED6AX9\" ads_2=\"JVMDAIB9HO2I\" background_image=\"banners/banner-bg-05.jpg\"][/simple-slider][services quantity=\"4\" title_1=\"Free shipping\" description_1=\"Free shipping on orders over.\" image_1=\"icons/box.png\" title_2=\"Free Returns\" description_2=\"30-days free return policy\" image_2=\"icons/car.png\" title_3=\"Secured Payments\" description_3=\"We accept all major credit cards\" image_3=\"icons/payment.png\" title_4=\"Customer Service\" description_4=\"Top notch customer service\" image_4=\"icons/hours.png\" enable_lazy_loading=\"yes\"][/services][products style=&quot;wooden&quot; title=&quot;Popular &lt;span&gt;Products&lt;/span&gt;&quot; limit=&quot;10&quot; enable_lazy_loading=&quot;yes&quot;][/products][deal-product flash_sale_id=\"1\" style=\"cosmetics\" enable_lazy_loading=\"yes\"][/deal-product][products-by-categories category_ids=\"2,3,6,11\" number_of_products=\"4\" enable_lazy_loading=\"yes\"][/products-by-categories][testimonials title=\"User Feedbacks\" limit=\"3\" background_color=\"#F7EFEC\" card_color=\"#FFFFFF\" enable_lazy_loading=\"yes\"][/testimonials][featured-posts title=\"Blog & Insights\" limit=\"4\" url=\"/blog\" enable_lazy_loading=\"yes\"][/featured-posts]',1,NULL,'full-width',NULL,'draft','2025-10-20 17:05:54','2025-10-20 17:05:54'),(6,'Blog','',1,NULL,NULL,NULL,'published','2025-10-20 17:05:54','2025-10-20 17:05:54'),(7,'About','[about image_1=\"products/Habbito-streetwear-shoot-1.jpg\" image_2=\"products/Habbito-streetwear-shoot-2.jpg\" logo=\"general/Habbito-logo.jpg\" title=\"আমাদের গল্প ও ফ্যাশন মিশন\" subtitle=\"About Habbito\" story_text_1=\"Habbito বাংলাদেশের ফ্যাশন সচেতন তরুণ প্রজন্মের জন্য নিয়ে এসেছে খাঁটি স্ট্রিটওয়্যার ও সমসাময়িক মিনিমাল লাইফস্টাইল অ্যাপারেল। আমাদের মূল লক্ষ্য হল ২৪০+ জিএসএম প্রিমিয়াম হেভিওয়েট কটন, নিখুঁত ড্রপ-শোল্ডার ফিটিং এবং টেকসই মান যা প্রতিদিনের ব্যবহারে দেবে সর্বোচ্চ কমফোর্ট।\" story_text_2=\"সারা বাংলাদেশে নির্ভরযোগ্য ক্যাশ অন ডেলিভারি, দ্রুত কুরিয়ার সার্ভিস এবং সহজ রিটার্ন সুবিধার মাধ্যমে আমরা অনলাইন কেনাকাটাকে করেছি সম্পূর্ণ ঝামেলামুক্ত। প্রতিটি পোশাকে রয়েছে আমাদের বিশেষ যত্ন ও প্রিমিয়াম কোয়ালিটি ফিনিশিং।\" list_item_1=\"১০০% প্রিমিয়াম কম্বড কটন ও হেভিওয়েট জিএসএম ফেব্রিক\" list_item_url_1=\"/products\" list_item_2=\"সারা বাংলাদেশে ৪৮ থেকে ৭২ ঘণ্টার মধ্যে ক্যাশ অন ডেলিভারি\" list_item_url_2=\"/page/shipping-delivery-policy\" list_item_3=\"৭ দিনের সহজ ও নিশ্চিত রিটার্ন এবং এক্সচেঞ্জ সুবিধা\" list_item_url_3=\"/page/return-exchange-policy\" enable_lazy_loading=\"yes\"][/about][features quantity=\"2\" title_1=\"কেন হাবিত্তো বিডি সেরা?\" subtitle_1=\"কোয়ালিটি নিশ্চয়তা\" description_1=\"আমরা কোনো নিম্নমানের ফেব্রিক বা কৃত্রিম পলিয়েস্টার ব্যবহার করি না। আমাদের প্রতিটি টি-শার্ট ও ড্রপ-শোল্ডার তৈরি হয় ১০০% পিওর কম্বড কটনে, যা দীর্ঘস্থায়ী এবং তীব্র গরমেও আরামদায়ক।\" image_1=\"products/Habbito-streetwear-shoot-3.jpg\" button_label_1=\"প্রোডাক্টস দেখুন\" button_url_1=\"/products\" title_2=\"নিরাপদ পেমেন্ট ও ক্যাশ অন ডেলিভারি\" subtitle_2=\"সুরক্ষিত কেনাকাটা\" description_2=\"পণ্য হাতে পেয়ে চেক করে সম্পূর্ণ মূল্য পরিশোধ করুন। সারা বাংলাদেশে ক্যাশ অন ডেলিভারি এবং দ্রুততম হোম ডেলিভারি সুবিধা।\" image_2=\"products/Habbito-streetwear-shoot-4.jpg\" button_label_2=\"যোগাযোগ করুন\" button_url_2=\"/contact\" enable_lazy_loading=\"yes\"][/features]',1,NULL,'default',NULL,'published','2025-10-20 17:05:54','2026-10-31 12:06:27'),(8,'Contact','[contact-box title=\"Get In Touch with Habbito\" address=\"Dhaka, Bangladesh\" phone=\"+880 1700-000000\" email=\"support@habbitobd.com\" hours=\"10:00 AM - 10:00 PM, 7 Days a Week\" show_contact_form=\"1\" button_label_1=\"Call Support\" button_url_1=\"tel:+8801700000000\" button_icon_1=\"fa fa-phone-alt\" button_label_2=\"WhatsApp Us\" button_url_2=\"https://wa.me/8801700000000\" button_icon_2=\"fab fa-whatsapp\"][/contact-box][google-map]Dhaka, Bangladesh[/google-map]',1,NULL,NULL,NULL,'published','2025-10-20 17:05:54','2026-10-25 21:51:22'),(9,'Coming soon','[coming-soon title=\"We are Coming Soon\" subtitle=\"Coming Soon!\" time=\"2025-10-24\" background_image=\"banners/coming-soon.jpg\" logo_style=\"general/logo-white.png\" show_subscribe_form=\"1\"][/coming-soon]',1,NULL,'blank',NULL,'draft','2025-10-20 17:05:54','2025-10-20 17:05:54'),(10,'Store Locator','[shop-location quantity=\"4\" name_1=\"Baldwin Hills Crenshaw Plaza\" address_1=\"24/26 Strait Bargate, Boston, PE21, United Kingdom\" phone_1=\"+098 (905) 786 897 8\" hours_1=\"10 am - 10 pm EST, 7 days a week\" image_1=\"shop/location-1.png\" name_2=\"Ninico Hills Crenshaw Plaza\" address_2=\" 36/26 Strait Bargate, Boston, PE21, United Kingdom\" phone_2=\"+098 112 786 897 8\" hours_2=\"9 am - 10 pm EST, 5 days a week\" image_2=\"shop/location-2.png\" name_3=\"Vegas BGM Crenshaw Plaza\" address_3=\"40/26 Strait Bargate, Vegas, PE21, United Kingdom\" phone_3=\" +098 (905) 786 897 8\" hours_3=\"10 am - 10 pm EST, 7 days a week\" image_3=\"shop/location-3.png\" name_4=\"Bargate Cine Crenshaw Plaza\" address_4=\"38/26 Strait Bargate, Point, PE21, United Kingdom\" phone_4=\"6 - 146 - 389 - 5748\" hours_4=\"10 am - 10 pm EST, 7 days a week\" image_4=\"shop/location-4.png\" enable_lazy_loading=\"yes\"][/shop-location][google-map]New York, USA[/google-map]',1,NULL,NULL,NULL,'published','2025-10-20 17:05:54','2025-10-20 17:05:54'),(11,'FAQs','[faqs category_ids=\"1,2,3\"][/faqs]',1,NULL,NULL,NULL,'published','2025-10-20 17:05:54','2025-10-20 17:05:54'),(12,'Return & Exchange Policy (রিটার্ন ও এক্সচেঞ্জ পলিসি)','\n<div class=\"Habbito-policy-page\" style=\"max-width: 960px; margin: 0 auto; padding: 25px 15px; font-size: 15px; line-height: 1.8; color: #333;\">\n    <div class=\"p-4 mb-4 rounded-3 text-white\" style=\"background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);\">\n        <h2 class=\"text-white mb-2\" style=\"font-weight: 700;\">রিটার্ন ও সাইজ পরিবর্তন নীতিমালা (Return & Exchange Policy)</h2>\n        <p class=\"mb-0\" style=\"opacity: 0.9;\">Habbito গ্রাহকদের ১০০% কেনাকাটার সন্তুষ্টি নিশ্চিত করতে প্রতিশ্রুতিবদ্ধ। আমাদের সহজ ও ঝামেলামুক্ত এক্সচেঞ্জ পলিসির বিস্তারিত নিচে দেওয়া হলো।</p>\n    </div>\n\n    <div class=\"card mb-4 border-0 shadow-sm\" style=\"border-radius: 12px; border-left: 5px solid #28a745 !important;\">\n        <div class=\"card-body p-4\">\n            <h4 class=\"text-success mb-3\" style=\"font-weight: 600;\"><i class=\"fas fa-box-open me-2\"></i> ১. ডেলিভারিম্যান সামনে থাকা অবস্থায় চেক করার সুবিধা</h4>\n            <p>পার্সেল রিসিভ করার সময় ডেলিভারিম্যানের সামনেই প্যাকেট খুলে প্রোডাক্ট চেক করে নিন। যদি প্রোডাক্টে কোনো ত্রুটি (Defect), ভুল সাইজ বা ভুল কালার পাওয়া যায়, তবে ডেলিভারিম্যানকে কোনো চার্জ ছাড়াই পার্সেলটি সাথে সাথে রিটার্ন করে দিতে পারবেন।</p>\n        </div>\n    </div>\n\n    <div class=\"card mb-4 border-0 shadow-sm\" style=\"border-radius: 12px; border-left: 5px solid #007bff !important;\">\n        <div class=\"card-body p-4\">\n            <h4 class=\"text-primary mb-3\" style=\"font-weight: 600;\"><i class=\"fas fa-tshirt me-2\"></i> ২. সাইজ পরিবর্তনের সহজ নিয়ম (Size Exchange)</h4>\n            <p>প্রোডাক্ট রিসিভ করার পর যদি সাইজ ছোট বা বড় হয়, তবে ডেলিভারি পাওয়ার <strong>৭ (সাত) দিনের মধ্যে</strong> আমাদের সাথে যোগাযোগ করে সাইজ এক্সচেঞ্জ করতে পারবেন:</p>\n            <ul style=\"padding-left: 20px;\">\n                <li>প্রোডাক্টটি অবশ্যই অব্যবহৃত (Unused), অবিকৃত এবং ওয়াশ না করা থাকতে হবে।</li>\n                <li>প্রোডাক্টের সাথে থাকা অরিজিনাল ট্যাগ ও পলিব্যাগ অক্ষত অবস্থায় থাকতে হবে।</li>\n                <li>আমাদের ফেসবুক পেজ ইনবক্সে অথবা হোয়াটসঅ্যাপে (WhatsApp: 01700-000000) আপনার Order ID ও নতুন সাইজ জানিয়ে মেসেজ দিন।</li>\n                <li>আমরা নতুন সাইজের প্রোডাক্ট পাঠিয়ে দেব এবং ডেলিভারিম্যান নতুন প্রোডাক্ট দিয়ে আগের প্রোডাক্টটি নিয়ে আসবে।</li>\n            </ul>\n        </div>\n    </div>\n\n    <div class=\"card mb-4 border-0 shadow-sm\" style=\"border-radius: 12px; border-left: 5px solid #fd7e14 !important;\">\n        <div class=\"card-body p-4\">\n            <h4 class=\"text-warning mb-3\" style=\"color: #d97706 !important; font-weight: 600;\"><i class=\"fas fa-shipping-fast me-2\"></i> ৩. এক্সচেঞ্জ ডেলিভারি চার্জ</h4>\n            <p>সাইজ পরিবর্তন বা কাস্টমারের পছন্দের কারণে এক্সচেঞ্জ করার ক্ষেত্রে কাস্টমারকে রিটার্ন ডেলিভারি চার্জ বহন করতে হবে:</p>\n            <ul style=\"padding-left: 20px;\">\n                <li><strong>ঢাকার ভেতরে:</strong> ৭০ টাকা</li>\n                <li><strong>ঢাকার বাইরে:</strong> ১৩০ টাকা</li>\n                <li><em>(যদি আমাদের ভুলের কারণে ভুল প্রোডাক্ট বা ডিফেক্ট প্রোডাক্ট যায়, তবে এক্সচেঞ্জ চার্জ সম্পূর্ণ ফ্রি!)</em></li>\n            </ul>\n        </div>\n    </div>\n\n    <div class=\"card mb-4 border-0 shadow-sm\" style=\"border-radius: 12px; border-left: 5px solid #6f42c1 !important;\">\n        <div class=\"card-body p-4\">\n            <h4 class=\"text-purple mb-3\" style=\"color: #6f42c1; font-weight: 600;\"><i class=\"fas fa-hand-holding-usd me-2\"></i> ৪. রিফান্ড পলিসি (Refund Policy)</h4>\n            <p>যদি রিটার্নকৃত কোনো পণ্যের বিকল্প সাইজ বা প্রোডাক্ট আমাদের স্টকে না থাকে, সেক্ষেত্রে পণ্য আমাদের ওয়্যারহাউসে পৌঁছানোর <strong>৩ থেকে ৫ কার্যদিবসের মধ্যে</strong> আপনার বিকাশ/নগদ/ব্যাংক একাউন্টে সম্পূর্ণ টাকা রিফান্ড করে দেওয়া হবে।</p>\n        </div>\n    </div>\n\n    <div class=\"alert alert-secondary text-center p-4 mt-4\" style=\"border-radius: 12px;\">\n        <h5 class=\"fw-bold mb-2\">যেকোনো প্রয়োজনে আমাদের সাপোর্ট টিমের সাথে কথা বলুন</h5>\n        <p class=\"mb-2\">হটলাইন: <strong>+880 1700-000000</strong> (সকাল ১০টা - রাত ১০টা)</p>\n        <p class=\"mb-0\">WhatsApp সাপোর্ট: <a href=\"https://wa.me/8801700000000\" class=\"btn btn-sm btn-success ms-2\"><i class=\"fab fa-whatsapp me-1\"></i> চ্যাট করুন</a></p>\n    </div>\n</div>',1,NULL,'default','Habitto BD-এর সহজ ৭ দিনের রিটার্ন ও সাইজ এক্সচেঞ্জ নীতিমালা। কোনো ঝামেলা ছাড়াই সাইজ পরিবর্তন করার সম্পূর্ণ গাইড।','published','2026-10-28 22:37:17','2026-10-28 22:37:17'),(13,'Shipping & Delivery Policy (ডেলিভারি নীতিমালা ও চার্জ)','\n<div class=\"Habbito-policy-page\" style=\"max-width: 960px; margin: 0 auto; padding: 25px 15px; font-size: 15px; line-height: 1.8; color: #333;\">\n    <div class=\"p-4 mb-4 rounded-3 text-white\" style=\"background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);\">\n        <h2 class=\"text-white mb-2\" style=\"font-weight: 700;\">ডেলিভারি নীতিমালা ও চার্জ (Shipping & Delivery)</h2>\n        <p class=\"mb-0\" style=\"opacity: 0.95;\">সারা বাংলাদেশে ১০০% ক্যাশ অন ডেলিভারি (Cash on Delivery) সুবিধা সহ দ্রুততম সময়ে হোম ডেলিভারি সার্ভিস।</p>\n    </div>\n\n    <div class=\"row g-3 mb-4\">\n        <div class=\"col-md-6\">\n            <div class=\"p-4 border rounded-3 bg-light text-center h-100 shadow-sm\">\n                <i class=\"fas fa-map-marker-alt fa-2x text-primary mb-2\"></i>\n                <h4 class=\"fw-bold mb-1\">ঢাকার ভেতরে</h4>\n                <p class=\"text-muted mb-2\">হোম ডেলিভারি</p>\n                <h3 class=\"text-primary fw-bold mb-2\">৳৭০</h3>\n                <span class=\"badge bg-primary px-3 py-2\">সময়: ২৪ থেকে ৪৮ ঘণ্টা</span>\n            </div>\n        </div>\n        <div class=\"col-md-6\">\n            <div class=\"p-4 border rounded-3 bg-light text-center h-100 shadow-sm\">\n                <i class=\"fas fa-truck-moving fa-2x text-success mb-2\"></i>\n                <h4 class=\"fw-bold mb-1\">ঢাকার বাইরে (সারা বাংলাদেশ)</h4>\n                <p class=\"text-muted mb-2\">হোম ডেলিভারি</p>\n                <h3 class=\"text-success fw-bold mb-2\">৳১৩০</h3>\n                <span class=\"badge bg-success px-3 py-2\">সময়: ২ থেকে ৪ কার্যদিবস</span>\n            </div>\n        </div>\n    </div>\n\n    <div class=\"alert alert-warning p-4 mb-4 shadow-sm\" style=\"border-radius: 12px; border: 1px solid #ffeeba;\">\n        <div class=\"d-flex align-items-center gap-3\">\n            <i class=\"fas fa-gift fa-3x text-warning\"></i>\n            <div>\n                <h4 class=\"text-dark fw-bold mb-1\">🎉 ফ্রি ডেলিভারি অফার!</h4>\n                <p class=\"mb-0 text-muted\">Habbito-তে যেকোনো অর্ডারে <strong>৳২,০০০ (দুই হাজার) টাকা বা তার বেশি</strong> শপিং করলেই সারা বাংলাদেশে ডেলিভারি চার্জ সম্পূর্ণ ফ্রি!</p>\n            </div>\n        </div>\n    </div>\n\n    <div class=\"card mb-4 border-0 shadow-sm\" style=\"border-radius: 12px;\">\n        <div class=\"card-body p-4\">\n            <h4 class=\"fw-bold mb-3\"><i class=\"fas fa-wallet text-success me-2\"></i> ক্যাশ অন ডেলিভারি (COD) পেমেন্ট সুবিধা</h4>\n            <p>আমাদের ওয়েবসাইট থেকে অর্ডার করতে কোনো অগ্রিম পেমেন্ট বা বিকাশ চার্জ দেওয়ার প্রয়োজন নেই। প্রোডাক্ট ডেলিভারিম্যানের কাছ থেকে বুঝে পেয়ে চেক করে তারপর সম্পূর্ণ মূল্য পরিশোধ করুন।</p>\n            \n            <h5 class=\"fw-bold mt-4 mb-2\"><i class=\"fas fa-search-location text-info me-2\"></i> অর্ডার ট্র্যাকিং ও আপডেট</h5>\n            <p>অর্ডার কনফার্ম হওয়ার সাথে সাথে আপনার মোবাইলে এসএমএস (SMS) ও ইমেইলে অর্ডার আইডি এবং ট্র্যাকিং লিঙ্ক পাঠিয়ে দেওয়া হবে। আমাদের ওয়েবসাইটের <a href=\"/orders/tracking\" class=\"fw-bold text-primary\">Track Your Order</a> পেজে আপনার মোবাইল নম্বর ও অর্ডার নম্বর দিয়ে পার্সেলের বর্তমান অবস্থান দেখতে পারবেন।</p>\n        </div>\n    </div>\n</div>',1,NULL,'default','Habitto BD সারা বাংলাদেশে ক্যাশ অন ডেলিভারি হোম ডেলিভারি প্রদান করে। ডেলিভারি চার্জ ও ডেলিভারি সময়সূচির বিস্তারিত।','published','2026-10-28 22:37:17','2026-10-28 22:37:17'),(14,'Privacy Policy (গোপনীয়তা নীতি)','\n<div class=\"Habbito-policy-page\" style=\"max-width: 960px; margin: 0 auto; padding: 25px 15px; font-size: 15px; line-height: 1.8; color: #333;\">\n    <div class=\"p-4 mb-4 rounded-3 text-white\" style=\"background: linear-gradient(135deg, #4b6cb7 0%, #182848 100%);\">\n        <h2 class=\"text-white mb-2\" style=\"font-weight: 700;\">গোপনীয়তা নীতি (Privacy Policy)</h2>\n        <p class=\"mb-0\" style=\"opacity: 0.9;\">Habbito আপনার তথ্যের নিরাপত্তা ও ব্যক্তিগত গোপনীয়তাকে সর্বোচ্চ গুরুত্ব প্রদান করে।</p>\n    </div>\n\n    <div class=\"card mb-4 border-0 shadow-sm\" style=\"border-radius: 12px;\">\n        <div class=\"card-body p-4\">\n            <h4 class=\"fw-bold mb-3\">১. আমরা কি তথ্য সংগ্রহ করি?</h4>\n            <p>অর্ডার প্রক্রিয়াকরণ এবং সঠিক ঠিকানায় ডেলিভারি পৌঁছানোর জন্য আমরা গ্রাহকের নিম্নোক্ত তথ্যগুলো সংরক্ষণ করি:</p>\n            <ul>\n                <li>গ্রাহকের পূর্ণ নাম</li>\n                <li>মোবাইল নম্বর (অর্ডার কনফার্মেশন ও ডেলিভারি যোগাযোগের জন্য)</li>\n                <li>সম্পূর্ণ ডেলিভারি ঠিকানা (জেলা, থানা ও নির্দিষ্ট এলাকা)</li>\n                <li>ইমেইল অ্যাড্রেস (ইনভয়েস ও অর্ডারের আপডেট প্রেরণের জন্য)</li>\n            </ul>\n\n            <h4 class=\"fw-bold mt-4 mb-3\">২. তথ্যের নিরাপত্তা ও ব্যবহার</h4>\n            <p>গ্রাহকের ব্যক্তিগত তথ্য সম্পূর্ণ এনক্রিপ্টেড এবং নিরাপদ সার্ভারে সংরক্ষিত থাকে। আমরা কোনো অবস্থাতেই কোনো বাণিজ্যিক উদ্দেশ্যে বা বিজ্ঞাপন প্রচারের জন্য তৃতীয় কোনো পক্ষের সাথে গ্রাহকের তথ্য বিক্রয়, ভাড়া বা শেয়ার করি না।</p>\n\n            <h4 class=\"fw-bold mt-4 mb-3\">৩. পেমেন্ট ও আর্থিক তথ্য</h4>\n            <p>যেহেতু Habbito শতভাগ ক্যাশ অন ডেলিভারি (Cash on Delivery) মডেলে পরিচালিত হয়, তাই আমাদের ওয়েবসাইটে গ্রাহকের কোনো ক্রেডিট কার্ড, ডেবিট কার্ড বা ব্যাংক একাউন্টের গোপন পিন নম্বর সংরক্ষণ করা হয় না। আপনার সমস্ত আর্থিক লেনদেন সম্পূর্ণ ঝুঁকিমুক্ত।</p>\n\n            <h4 class=\"fw-bold mt-4 mb-3\">৪. কুকিজ পলিসি (Cookies)</h4>\n            <p>আমাদের ওয়েবসাইট ভিজিট করার সময় আপনার কার্ট আইটেম ও ব্রাউজিং সুবিধা বজায় রাখার জন্য নিরাপদ কুকিজ ফাইল ব্যবহার করা হতে পারে। আপনি চাইলে আপনার ব্রাউজার সেটিংস থেকে যেকোনো সময় কুকিজ নিষ্ক্রিয় করতে পারেন।</p>\n        </div>\n    </div>\n</div>',1,NULL,'default','Habitto BD গ্রাহকদের ব্যক্তিগত তথ্যের সম্পূর্ণ সুরক্ষা ও গোপনীয়তা নিশ্চিত করে।','published','2026-10-28 22:37:17','2026-10-28 22:37:17'),(15,'Terms & Conditions (শর্তাবলী)','\n<div class=\"Habbito-policy-page\" style=\"max-width: 960px; margin: 0 auto; padding: 25px 15px; font-size: 15px; line-height: 1.8; color: #333;\">\n    <div class=\"p-4 mb-4 rounded-3 text-white\" style=\"background: linear-gradient(135deg, #2c3e50 0%, #3498db 100%);\">\n        <h2 class=\"text-white mb-2\" style=\"font-weight: 700;\">ব্যবহারের শর্তাবলী (Terms & Conditions)</h2>\n        <p class=\"mb-0\" style=\"opacity: 0.9;\">Habbito ওয়েবসাইট ব্যবহার এবং অর্ডার করার ক্ষেত্রে গ্রাহক ও কর্তৃপক্ষের মধ্যকার পারস্পরিক সাধারণ শর্তাবলী।</p>\n    </div>\n\n    <div class=\"card mb-4 border-0 shadow-sm\" style=\"border-radius: 12px;\">\n        <div class=\"card-body p-4\">\n            <h4 class=\"fw-bold mb-3\">১. অর্ডার ও মূল্য নির্ধারণ</h4>\n            <p>ওয়েবসাইটে প্রদর্শিত প্রতিটি কাপড়ের মূল্য বাংলাদেশী টাকায় (BDT) নির্ধারিত। কোনো পণ্যের স্টক অপ্রতুল বা কারিগরি ত্রুটির কারণে অর্ডারে অসঙ্গতি দেখা দিলে Habbito কর্তৃপক্ষ অর্ডারটি সংশোধন বা বাতিল করার অধিকার সংরক্ষণ করে।</p>\n\n            <h4 class=\"fw-bold mt-4 mb-3\">২. পণ্যের কালার ও সাইজের সঠিকতা</h4>\n            <p>আমরা প্রতিটি পণ্যের প্রকৃত ছবি ও সাইজ চার্ট ওয়েবসাইটে উপস্থাপন করি। তবে গ্রাহকের ব্যবহৃত মোবাইল বা কম্পিউটারের ডিসপ্লে রেজোলিউশন ও ব্রাইটনেসের কারণে আসল পণ্যের রঙের সাথে সামান্য (৫-১০%) তারতম্য দেখা যেতে পারে। কেনার পূর্বে সাইজ চার্ট দেখে সঠিক সাইজ নির্বাচন করার অনুরোধ করা হচ্ছে।</p>\n\n            <h4 class=\"fw-bold mt-4 mb-3\">৩. ক্যাশ অন ডেলিভারি ও পার্সেল গ্রহণ</h4>\n            <p>অর্ডার প্লেস করার পর আমাদের কাস্টমার রিপ্রেজেন্টেটিভ ফোন কলের মাধ্যমে অর্ডারটি কনফার্ম করতে পারেন। ডেলিভারিম্যান পার্সেল নিয়ে পৌঁছালে ডেলিভারিম্যানের সামনেই প্রোডাক্ট চেক করে সম্পূর্ণ পেমেন্ট বুঝিয়ে দিন।</p>\n\n            <h4 class=\"fw-bold mt-4 mb-3\">৪. কপিরাইট ও ইন্টেলেকচুয়াল প্রপার্টি</h4>\n            <p>Habbito-এর সমস্ত লোগো, পণ্যের ডিজাইন, ছবি ও কন্টেন্ট কপিরাইট আইনের আওতায় সংরক্ষিত। কর্তৃপক্ষের লিখিত অনুমতি ব্যতিরেকে কোনো ছবি বা তথ্য বাণিজ্যিক উদ্দেশ্যে ব্যবহার করা সম্পূর্ণ নিষিদ্ধ।</p>\n        </div>\n    </div>\n</div>',1,NULL,'default','Habitto BD ওয়েবসাইট ব্যবহারের সাধারণ নিয়ম, বিক্রয় শর্তাবলী ও নীতিমালা।','published','2026-10-28 22:37:17','2026-10-28 22:37:17');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) NOT NULL,
  `pages_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) NOT NULL,
  `request` longtext DEFAULT NULL,
  `response` longtext DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `charge_id` varchar(191) DEFAULT NULL,
  `payment_channel` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT 0.00,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(60) DEFAULT 'pending',
  `payment_type` varchar(191) DEFAULT 'confirm',
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'BDT',0,'AAPRVIX6QA','cod',NULL,719.00,0.00,2,'pending','confirm',NULL,NULL,NULL,'2026-10-25 23:13:30','2026-10-25 23:13:30','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'BDT',0,'YTWKO1JXTJ','cod',NULL,719.00,0.00,3,'pending','confirm',NULL,NULL,NULL,'2026-10-25 23:20:28','2026-10-25 23:20:28','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'BDT',1,'SXBTZJWQCK','cod',NULL,719.00,0.00,3,'completed','confirm',0,NULL,NULL,'2026-10-25 23:21:02','2026-10-30 10:40:35',NULL,NULL),(4,'BDT',0,'G92VJ5QXAW','cod',NULL,1989.00,0.00,8,'pending','confirm',NULL,NULL,NULL,'2026-11-01 10:22:18','2026-11-01 10:22:18','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `category_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(3,1),(3,2),(1,2),(1,3),(4,3),(3,4),(4,4),(1,5),(3,6),(2,6),(1,7),(2,7),(4,8),(1,8),(4,9),(1,9),(4,10),(2,10),(2,11),(1,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (3,1),(5,1),(1,1),(1,2),(3,2),(4,2),(2,3),(5,3),(3,4),(4,4),(1,4),(3,5),(5,5),(4,6),(2,6),(5,7),(2,7),(3,7),(2,8),(5,8),(3,9),(2,9),(1,9),(1,10),(5,10),(5,11),(1,11),(2,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) unsigned DEFAULT NULL,
  `author_type` varchar(191) NOT NULL,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'How to Style Oversized & Acid Wash T-Shirts in 2026','স্ট্রিটওয়্যার ফ্যাশনে ওভারসাইজড এবং এসিড ওয়াশ টি-শার্ট দিয়ে কীভাবে স্টাইলিশ আউটফিট তৈরি করবেন তার কমপ্লিট গাইড।','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'products/habitto-streetwear-shoot-1.jpg',191,NULL,'2025-10-20 17:05:52','2026-10-31 11:43:56'),(2,'Fabric Guide: 100% Combed Compact Cotton vs Regular Cotton','টি-শার্ট কেনার আগে ফেব্রিকের কোয়ালিটি ও জিএসএম (GSM) চেনার সহজ উপায়। কেন কম্বড কটন বেশি আরামদায়ক ও টেকসই?','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'products/habitto-streetwear-shoot-3.jpg',776,NULL,'2025-10-20 17:05:52','2026-11-01 08:00:15'),(3,'Men’s Minimalist Streetwear Essentials for Bangladesh','প্রতিদিনের ক্যাজুয়াল লাইফে কার্গো জগার্স ও ড্রপ-শোল্ডার টি-শার্টের পারফেক্ট কম্বিনেশন বেছে নেওয়ার নিয়ম।','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'products/habitto-streetwear-shoot-4.jpg',1659,NULL,'2025-10-20 17:05:52','2026-10-31 11:43:56'),(4,'How to Care for Heavyweight Hoodies & Fleece Jackets','শীতের প্রিমিয়াম ফ্লিস হুডি ও সোয়েটশার্টের ওয়াশ কেয়ার এবং ফেব্রিক দীর্ঘদিন নতুনের মতো রাখার টিপস।','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'products/habitto-streetwear-shoot-2.jpg',1559,NULL,'2025-10-20 17:05:52','2026-10-31 11:43:56'),(5,'How to Care for Leather Bags','King, and the fall was over. Alice was just saying to her very much to-night, I should understand that better,\' Alice said to the conclusion that it might tell her something worth hearing. For some.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','draft',1,'Botble\\ACL\\Models\\User',1,'blog/5.jpg',827,NULL,'2025-10-20 17:05:52','2025-10-20 17:05:52'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','Alice did not like the look of things at all, as the March Hare, who had followed him into the darkness as hard as he came, \'Oh! the Duchess, \'as pigs have to beat them off, and she hastily dried.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','draft',1,'Botble\\ACL\\Models\\User',1,'blog/6.jpg',2045,NULL,'2025-10-20 17:05:52','2025-10-20 17:05:52'),(7,'Essential Qualities of Highly Successful Music','Caterpillar, just as I tell you, you coward!\' and at once and put it to his ear. Alice considered a little timidly, for she thought, \'till its ears have come, or at any rate I\'ll never go THERE.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','draft',1,'Botble\\ACL\\Models\\User',0,'blog/7.jpg',2279,NULL,'2025-10-20 17:05:52','2025-10-20 17:05:52'),(8,'9 Things I Love About Shaving My Head','Alice. \'What IS the use of a good way off, panting, with its legs hanging down, but generally, just as well as if it had lost something; and she jumped up and saying, \'Thank you, sir, for your.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','draft',1,'Botble\\ACL\\Models\\User',1,'blog/8.jpg',1568,NULL,'2025-10-20 17:05:52','2025-10-20 17:05:52'),(9,'Why Teamwork Really Makes The Dream Work','While she was walking hand in her own courage. \'It\'s no use denying it. I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a heap of sticks and dry leaves, and the beak-- Pray how did.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','draft',1,'Botble\\ACL\\Models\\User',1,'blog/9.jpg',2302,NULL,'2025-10-20 17:05:52','2025-10-20 17:05:52'),(10,'The World Caters to Average People','It was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the executioner ran wildly up and throw us, with the Lory, as soon as look at them--\'I wish they\'d get.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','draft',1,'Botble\\ACL\\Models\\User',0,'blog/10.jpg',527,NULL,'2025-10-20 17:05:52','2025-10-20 17:05:52'),(11,'The litigants on the screen are not actors','For some minutes it puffed away without being invited,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know about this business?\' the King say in a hurry. \'No, I\'ll look.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/blog/blog-in-01.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/blog/blog-in-02.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/blog/blog-in-03.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/blog/blog-in-04.jpg\" /></p>\n\n<p><br />\n    &nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/blog/blog-in-05.jpg\" /></p>\n\n<p>&nbsp;</p>\n','draft',1,'Botble\\ACL\\Models\\User',1,'blog/11.jpg',1623,NULL,'2025-10-20 17:05:52','2025-10-20 17:05:52');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) NOT NULL,
  `posts_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notification_recipients`
--

DROP TABLE IF EXISTS `push_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `push_notification_recipients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `push_notification_id` bigint(20) unsigned NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `device_token` varchar(191) DEFAULT NULL,
  `platform` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`fcm_response`)),
  `error_message` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  KEY `pnr_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notification_recipients`
--

LOCK TABLES `push_notification_recipients` WRITE;
/*!40000 ALTER TABLE `push_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notifications`
--

DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `push_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'general',
  `target_type` varchar(191) DEFAULT NULL,
  `target_value` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `image_url` varchar(191) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `status` varchar(191) NOT NULL DEFAULT 'sent',
  `sent_count` int(11) NOT NULL DEFAULT 0,
  `failed_count` int(11) NOT NULL DEFAULT 0,
  `delivered_count` int(11) NOT NULL DEFAULT 0,
  `read_count` int(11) NOT NULL DEFAULT 0,
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  KEY `push_notifications_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notifications`
--

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) NOT NULL,
  `revisionable_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_by` bigint(20) unsigned NOT NULL,
  `updated_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"team.index\":true,\"team.create\":true,\"team.edit\":true,\"team.destroy\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-10-20 17:05:48','2025-10-20 17:05:48');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','50a2a782fc1dad8253f1e11bd9cb04e3',NULL,'2026-11-01 11:35:50'),(2,'api_enabled','0',NULL,'2026-11-01 11:35:50'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"payment\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"team\",\"translation\"]',NULL,'2026-11-01 11:35:50'),(4,'analytics_dashboard_widgets','0','2025-10-20 17:05:43','2026-11-01 11:35:50'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-10-20 17:05:44','2026-11-01 11:35:50'),(6,'api_layer_api_key','',NULL,'2026-11-01 11:35:50'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-10-20 17:05:47','2026-11-01 11:35:50'),(10,'payment_cod_fee_type','fixed',NULL,'2026-11-01 11:35:50'),(11,'payment_bank_transfer_fee_type','fixed',NULL,'2026-11-01 11:35:50'),(12,'theme','ninico',NULL,'2026-11-01 11:35:50'),(13,'show_admin_bar','1',NULL,'2026-11-01 11:35:50'),(14,'language_hide_default','1',NULL,'2026-11-01 11:35:50'),(15,'language_switcher_display','dropdown',NULL,'2026-11-01 11:35:50'),(16,'language_display','all',NULL,'2026-11-01 11:35:50'),(17,'language_hide_languages','[]',NULL,'2026-11-01 11:35:50'),(18,'admin_favicon','general/habitto-logo.jpg',NULL,'2026-11-01 11:35:50'),(19,'admin_logo','general/habitto-logo.jpg',NULL,'2026-11-01 11:35:50'),(20,'payment_cod_status','1',NULL,'2026-11-01 11:35:50'),(21,'payment_bank_transfer_status','0',NULL,'2026-11-01 11:35:50'),(22,'payment_cod_description','পণ্য হাতে পেয়ে চেক করে সম্পূর্ণ মূল্য ডেলিভারি ম্যানের কাছে পরিশোধ করুন।',NULL,'2026-11-01 11:35:50'),(23,'payment_bank_transfer_description','<p>বিকাশ বা নগদ সেন্ড মানি করুন:</p><ul><li><b>বিকাশ পার্সোনাল:</b> 01889-151058</li><li><b>নগদ পার্সোনাল:</b> 01889-151058</li></ul><p>টাকা পাঠানোর পর রেফারেন্সে আপনার অর্ডারের মোবাইল নম্বরটি প্রদান করুন।</p>',NULL,'2026-11-01 11:35:50'),(24,'payment_stripe_payment_type','stripe_checkout',NULL,'2026-11-01 11:35:50'),(25,'plugins_ecommerce_customer_new_order_status','0',NULL,'2026-11-01 11:35:50'),(26,'plugins_ecommerce_admin_new_order_status','0',NULL,'2026-11-01 11:35:50'),(27,'ecommerce_is_enabled_support_digital_products','1',NULL,'2026-11-01 11:35:50'),(28,'ecommerce_enable_license_codes_for_digital_products','1',NULL,'2026-11-01 11:35:50'),(29,'ecommerce_auto_complete_digital_orders_after_payment','1',NULL,'2026-11-01 11:35:50'),(30,'ecommerce_load_countries_states_cities_from_location_plugin','1',NULL,'2026-11-01 11:35:50'),(31,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2026-11-01 11:35:50'),(32,'ecommerce_store_order_prefix','SF',NULL,'2026-11-01 11:35:50'),(33,'ecommerce_enable_product_specification','1',NULL,'2026-11-01 11:35:50'),(34,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2026-11-01 11:35:50'),(35,'payment_cod_logo','payments/cod.png',NULL,'2026-11-01 11:35:50'),(36,'payment_bank_transfer_logo','payments/bank-transfer.png',NULL,'2026-11-01 11:35:50'),(37,'payment_stripe_logo','payments/stripe.webp',NULL,'2026-11-01 11:35:50'),(38,'payment_paypal_logo','payments/paypal.png',NULL,'2026-11-01 11:35:50'),(39,'payment_mollie_logo','payments/mollie.png',NULL,'2026-11-01 11:35:50'),(40,'payment_paystack_logo','payments/paystack.png',NULL,'2026-11-01 11:35:50'),(41,'payment_razorpay_logo','payments/razorpay.png',NULL,'2026-11-01 11:35:50'),(42,'payment_sslcommerz_logo','payments/sslcommerz.png',NULL,'2026-11-01 11:35:50'),(43,'permalink-botble-blog-models-post','blog',NULL,'2026-11-01 11:35:50'),(44,'permalink-botble-blog-models-category','blog',NULL,'2026-11-01 11:35:50'),(45,'theme-ninico-site_title','Habbito - Minimal Streetwear &amp; Clothing',NULL,'2026-11-01 11:35:50'),(46,'theme-ninico-seo_description','Shop the latest oversized t-shirts, acid wash tees, hoodies, formal pants and streetwear collection at Habbito.',NULL,'2026-11-01 11:35:50'),(47,'theme-ninico-favicon','general/habitto-logo.jpg',NULL,'2026-11-01 11:35:50'),(48,'theme-ninico-logo_light','general/habitto-logo.jpg',NULL,'2026-11-01 11:35:50'),(49,'theme-ninico-logo','general/habitto-logo.jpg',NULL,'2026-11-01 11:35:50'),(50,'theme-ninico-primary_font','Jost',NULL,'2026-11-01 11:35:50'),(51,'theme-ninico-primary_color','#0F172A',NULL,'2026-11-01 11:35:50'),(52,'theme-ninico-hotline','+880 1889-151058',NULL,'2026-11-01 11:35:50'),(53,'theme-ninico-homepage_id','2',NULL,'2026-11-01 11:35:50'),(54,'theme-ninico-blog_page_id','6',NULL,'2026-11-01 11:35:50'),(55,'theme-ninico-cart_footer_description','Free shipping on orders over ৳২,০০০',NULL,'2026-11-01 11:35:50'),(56,'theme-ninico-breadcrumb_background','banners/breadcrumb-01.jpg',NULL,'2026-11-01 11:35:50'),(57,'theme-ninico-login_background','banners/login-bg.jpg',NULL,'2026-11-01 11:35:50'),(58,'theme-ninico-register_background','banners/sign-bg.jpg',NULL,'2026-11-01 11:35:50'),(59,'theme-ninico-404_not_found_icon','icons/error.png',NULL,'2026-11-01 11:35:50'),(60,'theme-ninico-order_tracking_background','banners/track-bg.jpg',NULL,'2026-11-01 11:35:50'),(61,'theme-ninico-default_product_list_layout','grid',NULL,'2026-11-01 11:35:50'),(62,'theme-ninico-number_of_products_per_page','30',NULL,'2026-11-01 11:35:50'),(63,'theme-ninico-footer_background_color','#0F172A',NULL,'2026-11-01 11:35:50'),(64,'theme-ninico-footer_text_color','#F1F5F9',NULL,'2026-11-01 11:35:50'),(65,'theme-ninico-footer_text_muted_color','#94A3B8',NULL,'2026-11-01 11:35:50'),(66,'theme-ninico-footer_border_color','#1E293B',NULL,'2026-11-01 11:35:50'),(67,'theme-ninico-footer_bottom_background_color','#020617',NULL,'2026-11-01 11:35:50'),(68,'theme-ninico-preloader_version','v2',NULL,'2026-11-01 11:35:50'),(69,'theme-ninico-newsletter_popup_enable','1',NULL,'2026-11-01 11:35:50'),(70,'theme-ninico-newsletter_popup_image','products/habitto-streetwear-shoot-1.jpg',NULL,'2026-11-01 11:35:50'),(71,'theme-ninico-newsletter_popup_title','Get 10% Discount',NULL,'2026-11-01 11:35:50'),(72,'theme-ninico-newsletter_popup_subtitle','Habbito Exclusive',NULL,'2026-11-01 11:35:50'),(73,'theme-ninico-newsletter_popup_description','Subscribe to our newsletter to receive updates on new drops and secret sales.',NULL,'2026-11-01 11:35:50'),(74,'theme-ninico-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\\/habbitobd\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/instagram.com\\/habbitobd\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\\/@habbitobd\"}],[{\"key\":\"name\",\"value\":\"WhatsApp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"},{\"key\":\"url\",\"value\":\"https:\\/\\/wa.me\\/8801889151058\"}]]',NULL,'2026-11-01 11:35:50'),(75,'announcement_text_alignment','start',NULL,'2026-11-01 11:35:50'),(76,'announcement_background_color','#f3eee7',NULL,'2026-11-01 11:35:50'),(77,'announcement_text_color','#000000',NULL,'2026-11-01 11:35:50'),(78,'announcement_font_size','13',NULL,'2026-11-01 11:35:50'),(79,'announcement_font_size_unit','px',NULL,'2026-11-01 11:35:50'),(80,'announcement_autoplay','1',NULL,'2026-11-01 11:35:50'),(81,'announcement_autoplay_delay','5000',NULL,'2026-11-01 11:35:50'),(82,'admin_title','Habbito Admin Panel',NULL,'2026-11-01 11:35:50'),(83,'theme-ninico-seo_title','Habbito - Trendy Streetwear &amp; Men\'s Clothing in Bangladesh',NULL,'2026-11-01 11:35:50'),(84,'theme-ninico-copyright','© 2026 Habbito. All Rights Reserved. Streetwear & Lifestyle Fashion Bangladesh.',NULL,'2026-11-01 11:35:50'),(85,'payment_cod_name','Cash on Delivery (ক্যাশ অন ডেলিভারি)',NULL,'2026-11-01 11:35:50'),(86,'payment_bank_transfer_name','bKash / Nagad / Bank Transfer (বিকাশ / নগদ পেমেন্ট)',NULL,'2026-11-01 11:35:50'),(87,'payment_stripe_status','0',NULL,'2026-11-01 11:35:50'),(88,'payment_paypal_status','0',NULL,'2026-11-01 11:35:50'),(89,'payment_mollie_status','0',NULL,'2026-11-01 11:35:50'),(90,'payment_paystack_status','0',NULL,'2026-11-01 11:35:50'),(91,'payment_razorpay_status','0',NULL,'2026-11-01 11:35:50'),(92,'payment_sslcommerz_status','0',NULL,'2026-11-01 11:35:50'),(93,'zip_code_enabled','0',NULL,'2026-11-01 11:35:50'),(94,'billing_address_enabled','0',NULL,'2026-11-01 11:35:50'),(95,'display_tax_fields_at_checkout_page','0',NULL,'2026-11-01 11:35:50'),(96,'enable_guest_checkout','1',NULL,'2026-11-01 11:35:50'),(97,'default_country_at_checkout_page','BD',NULL,'2026-11-01 11:35:50'),(98,'available_countries','[\"BD\"]',NULL,'2026-11-01 11:35:50'),(99,'mandatory_form_fields_at_checkout','[\"phone\",\"address\"]',NULL,'2026-11-01 11:35:50'),(100,'hide_form_fields_at_checkout','[\"country\",\"email\"]',NULL,'2026-11-01 11:35:50'),(101,'show_terms_and_policy_checkbox','0',NULL,'2026-11-01 11:35:50'),(102,'email_driver','log',NULL,'2026-11-01 11:35:50'),(103,'email_from_address','support@habbitobd.com',NULL,'2026-11-01 11:35:50'),(104,'email_from_name','Habbito',NULL,'2026-11-01 11:35:50'),(105,'cache_admin_menu_enable','1',NULL,'2026-11-01 11:35:50'),(106,'enable_cache_site_map','1',NULL,'2026-11-01 11:35:50'),(107,'cache_front_menu_enabled','1',NULL,'2026-11-01 11:35:50'),(108,'cache_user_avatar_enabled','1',NULL,'2026-11-01 11:35:50'),(109,'shortcode_cache_enabled','0',NULL,'2026-11-01 11:35:50'),(110,'widget_cache_enabled','0',NULL,'2026-11-01 11:35:50'),(111,'plugin_cache_enabled','1',NULL,'2026-11-01 11:35:50'),(112,'cache_time_site_map','60',NULL,'2026-11-01 11:35:50'),(113,'shortcode_cache_ttl','1800',NULL,'2026-11-01 11:35:50'),(114,'widget_cache_ttl','1800',NULL,'2026-11-01 11:35:50'),(115,'theme-ninico-enable_whatsapp_floating_button','yes',NULL,'2026-11-01 11:35:50'),(116,'theme-ninico-whatsapp_phone_number','8801889151058',NULL,'2026-11-01 11:35:50'),(117,'theme-ninico-whatsapp_floating_position','bottom_right',NULL,'2026-11-01 11:35:50'),(118,'theme-ninico-whatsapp_motion_effect','gentle_float',NULL,'2026-11-01 11:35:50'),(119,'theme-ninico-whatsapp_default_message','Assalamu Alaikum Habbito! I need assistance with an order.',NULL,'2026-11-01 11:35:50'),(120,'theme-ninico-custom_css','/* ==========================================================================\n   HABBITO - URBAN MONOCHROME STREETWEAR THEME (OPTION 2)\n   Aesthetic: Represent Clo / Kith / Minimal Urban Studio\n   ========================================================================== */\n\n/* 1. Global Canvas & Typography */\nbody {\n    background-color: #FAFAFA !important; /* Crisp Ultra-Light Cool Zinc/Slate */\n    color: #0F172A !important; /* Deep Slate 900 for sharp modern readability */\n}\n\n/* 2. Top Announcement Bar */\n.header-top, .header-top.space-bg {\n    background-color: #0F172A !important;\n    color: #FFFFFF !important;\n    border-bottom: 1px solid #1E293B !important;\n}\n.ae-anno-announcement-wrapper {\n    --background-color: #0F172A !important;\n    --text-color: #FFFFFF !important;\n}\n.header-top a, .header-welcome-text span {\n    color: #FFFFFF !important;\n}\n\n/* 3. Header & Navigation */\n.main-header, .header-sticky {\n    background-color: #FFFFFF !important;\n    border-bottom: 1px solid #E2E8F0 !important;\n    box-shadow: 0 1px 2px rgba(15, 23, 42, 0.03) !important;\n}\n.main-menu > nav > ul > li > a {\n    color: #0F172A !important;\n    font-weight: 500 !important;\n    letter-spacing: 0.3px;\n}\n.main-menu > nav > ul > li:hover > a {\n    color: #64748B !important;\n}\n.mainmenu__search-bar input {\n    background-color: #F8FAFC !important;\n    border: 1px solid #E2E8F0 !important;\n    border-radius: 6px !important;\n    color: #0F172A !important;\n}\n.mainmenu__search-bar input:focus {\n    border-color: #0F172A !important;\n    background-color: #FFFFFF !important;\n}\n\n/* 4. Product Cards (Urban Studio Aesthetic) */\n.tpproduct {\n    background: #FFFFFF !important;\n    border: 1px solid #E2E8F0 !important;\n    border-radius: 8px !important;\n    padding: 12px 12px 18px 12px !important;\n    transition: all 0.25s cubic-bezier(0.16, 1, 0.3, 1) !important;\n}\n.tpproduct:hover {\n    border-color: #0F172A !important;\n    box-shadow: 0 12px 28px rgba(15, 23, 42, 0.08) !important;\n    transform: translateY(-2px);\n}\n.tpproduct__thumb {\n    background-color: #F1F5F9 !important; /* Cool Studio Light Gray */\n    border-radius: 6px !important;\n    overflow: hidden;\n}\n.tpproduct__title a {\n    color: #0F172A !important;\n    font-weight: 500 !important;\n    letter-spacing: 0.2px;\n}\n.tpproduct__title a:hover {\n    color: #64748B !important;\n}\n.tpproduct__priceinfo-list span {\n    color: #0F172A !important;\n    font-weight: 600 !important;\n}\n.tpproduct__priceinfo-list-oldprice {\n    color: #94A3B8 !important;\n}\n\n/* 5. Minimalist Urban Badges */\n.tpproduct__thumb-topsall,\n.product__badge-item {\n    background-color: #0F172A !important;\n    color: #FFFFFF !important;\n    border-radius: 2px !important;\n    font-size: 10.5px !important;\n    font-weight: 600 !important;\n    text-transform: uppercase !important;\n    letter-spacing: 0.8px !important;\n    padding: 2px 7px !important;\n}\n\n/* Special Sale Badge with subtle Amber Accent */\n.product__badge-list span[style*=\"328f0a\"],\n.product__badge-list span[style*=\"green\"],\n.tpproduct__thumb-topsall:has(.product__badge-item:contains(\"%\")) {\n    background-color: #D97706 !important;\n}\n\n/* 6. Buttons & Calls to Action */\n.tp-btn, .tp-btn-2, .cart-btn, .checkout-button, .btn-primary, button[type=\"submit\"] {\n    background-color: #0F172A !important;\n    border-color: #0F172A !important;\n    color: #FFFFFF !important;\n    border-radius: 4px !important;\n    font-weight: 500 !important;\n    letter-spacing: 0.5px !important;\n    transition: all 0.2s ease !important;\n}\n.tp-btn:hover, .tp-btn-2:hover, .cart-btn:hover, .checkout-button:hover, .btn-primary:hover, button[type=\"submit\"]:hover {\n    background-color: #1E293B !important;\n    border-color: #1E293B !important;\n    color: #FFFFFF !important;\n}\n\n/* 7. Action Icons (Wishlist, Quickview) */\n.tpproduct__thumb-action a {\n    background-color: #FFFFFF !important;\n    color: #0F172A !important;\n    border: 1px solid #E2E8F0 !important;\n    border-radius: 50% !important;\n    transition: all 0.2s ease !important;\n}\n.tpproduct__thumb-action a:hover {\n    background-color: #0F172A !important;\n    color: #FFFFFF !important;\n    border-color: #0F172A !important;\n}\n\n/* 8. Deep Slate Urban Footer */\n.footer-area {\n    background-color: #0F172A !important;\n    color: #F1F5F9 !important;\n    border-top: 1px solid #1E293B !important;\n}\n.footer-area a {\n    color: #94A3B8 !important;\n    transition: color 0.2s ease;\n}\n.footer-area a:hover {\n    color: #FFFFFF !important;\n}\n.footer-widget__title {\n    color: #FFFFFF !important;\n    font-weight: 600 !important;\n    letter-spacing: 0.5px;\n    text-transform: uppercase;\n    font-size: 13px !important;\n}\n.footer-copyright {\n    background-color: #020617 !important; /* Midnight Slate 950 */\n    border-top: 1px solid #1E293B !important;\n    color: #64748B !important;\n}\n\n/* 9. Breadcrumb */\n.tp-breadcrumb__area {\n    background-color: #F1F5F9 !important;\n}',NULL,'2026-11-01 11:35:50'),(121,'theme-ninico-header_background_color','#FFFFFF',NULL,'2026-11-01 11:35:50'),(122,'theme-ninico-header_text_color','#0F172A',NULL,'2026-11-01 11:35:50'),(123,'theme-ninico-header_menu_text_color','#0F172A',NULL,'2026-11-01 11:35:50'),(124,'theme-ninico-header_menu_text_hover_color','#64748B',NULL,'2026-11-01 11:35:50'),(125,'theme-ninico-breadcrumb_background_color','#F1F5F9',NULL,'2026-11-01 11:35:50'),(126,'theme-ninico-sticky_header_enabled','no',NULL,'2026-11-01 11:35:50'),(127,'theme-ninico-sticky_header_mobile_enabled','no',NULL,'2026-11-01 11:35:50'),(128,'theme-ninico-bottom_mobile_menu_enabled','yes',NULL,'2026-11-01 11:35:50'),(129,'theme-ninico-bottom_mobile_menu_show_label','yes',NULL,'2026-11-01 11:35:50'),(130,'theme-ninico-preloader_enabled','no',NULL,'2026-11-01 11:35:50'),(131,'theme-ninico-show_site_name','0',NULL,'2026-11-01 11:35:50'),(132,'theme-ninico-site_title_separator','-',NULL,'2026-11-01 11:35:50'),(133,'theme-ninico-seo_index','1',NULL,'2026-11-01 11:35:50'),(134,'theme-ninico-seo_og_image','general/habitto-logo.jpg',NULL,'2026-11-01 11:35:50'),(135,'theme-ninico-term_and_privacy_policy_url','',NULL,'2026-11-01 11:35:50'),(136,'theme-ninico-date_format','M d, Y',NULL,'2026-11-01 11:35:50'),(137,'ecommerce_hide_form_fields_at_checkout','[\"country\",\"email\"]',NULL,'2026-11-01 11:35:50'),(138,'ecommerce_mandatory_form_fields_at_checkout','[\"phone\",\"address\"]',NULL,'2026-11-01 11:35:50'),(139,'load_countries_states_cities_from_location_plugin','1',NULL,'2026-11-01 11:35:50'),(140,'steadfast_default_note','Habbito - Luxury Attire (Please handle with care)',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint(20) unsigned NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `image` varchar(191) NOT NULL,
  `link` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Heavyweight Acid Wash & <br><b>Oversized Drop 2026</b>','products/habitto-streetwear-shoot-1.jpg','/product-categories/oversized-t-shirts','২৪০+ জিএসএম ১০০% কম্বড কটন হেভিওয়েট ওভারসাইজড ড্রপ-শোল্ডার কালেকশন।',1,'2025-10-20 17:06:01','2026-10-31 12:06:26'),(2,1,'Vintage Stone <br><b>Acid Wash Collection</b>','products/habitto-streetwear-shoot-2.jpg','/product-categories/acid-wash-t-shirts','হ্যান্ড-ট্রিটেড এনজাইম স্টোন ওয়াশ ও সিগনেচার আনকাট স্ট্রিটওয়্যার স্টাইল।',2,'2025-10-20 17:06:01','2026-10-31 12:06:26'),(3,1,'Premium Bottoms <br><b>Cargo & Tailored Chinos</b>','products/habitto-streetwear-shoot-3.jpg','/product-categories/pants-trousers','স্মার্ট স্ট্রিমলাইনড চিনো, ৪-পকেট কার্গো জগার্স ও প্রিমিয়াম স্ট্রেচ ডেনিম।',3,'2025-10-20 17:06:01','2026-10-31 12:06:27'),(4,2,'Heavyweight Acid Wash & <br> Oversized Collection','products/habitto-streetwear-shoot-1.jpg','/product-categories/acid-wash-t-shirts','240+ GSM প্রিমিয়াম ১০০% কম্বড কটন টি-শার্ট। খাঁটি স্ট্রিটওয়্যার স্টাইল ও কমফোর্ট।',1,'2025-10-20 17:06:01','2026-10-31 11:43:56'),(5,2,'Cozy Heavy Fleece <br> Hoodies & Sweatshirts','products/habitto-streetwear-shoot-2.jpg','/product-categories/winter-wear','৩৪০ জিএসএম ফ্লিস ফেব্রিকের সর্বোচ্চ উষ্ণতা ও সমসাময়িক ড্রপ-শোল্ডার কাট।',2,'2025-10-20 17:06:01','2026-10-31 11:43:56'),(6,2,'Premium Pique Polo & <br> Smart Tailored Bottoms','products/habitto-streetwear-shoot-3.jpg','/product-categories/polo-t-shirts','প্রিমিয়াম ডাবল ল্যাকোস্টে কটন পোলো ও চিনো প্যান্ট। সারা বাংলাদেশে ক্যাশ অন ডেলিভারি।',3,'2025-10-20 17:06:01','2026-10-31 11:43:56'),(7,3,'Wooden <br> Lounge Furniture','sliders/slider-04.png','/products','New Modern Stylist Fashionable Women\'s Wear holder',1,'2025-10-20 17:06:01','2025-10-20 17:06:01'),(8,3,'Wooden <br> Lounge Chair','sliders/slider-05.png','/products',NULL,2,'2025-10-20 17:06:01','2025-10-20 17:06:01'),(9,3,'Wooden <br> Houston Furniture','sliders/slider-06.png','/products',NULL,3,'2025-10-20 17:06:01','2025-10-20 17:06:01'),(10,4,'Will Never <br> Compromise Beauty','sliders/slider-bg-04.png','/products','New Modern Stylist Fashionable Women\'s Wear holder',1,'2025-10-20 17:06:01','2025-10-20 17:06:01'),(11,4,'Will Never <br> Compromise Glow','sliders/slider-bg-05.png','/products','New Modern Stylist Fashionable Women\'s Wear holder',2,'2025-10-20 17:06:01','2025-10-20 17:06:01'),(12,4,'Will Never <br> Compromise Health','sliders/slider-bg-06.png','/products','New Modern Stylist Fashionable Women\'s Wear holder',3,'2025-10-20 17:06:01','2025-10-20 17:06:01'),(13,5,'Fresh Grocery <br> Products.','sliders/slider-05-bg-1.jpg','/products','Quality &amp; Fresh Products',1,'2025-10-20 17:06:01','2025-10-20 17:06:01'),(14,5,'Fresh Grocery <br> Products.','sliders/slider-05-bg-2.jpg','/products','Quality &amp; Fresh Products',2,'2025-10-20 17:06:01','2025-10-20 17:06:01'),(15,5,'Fresh Grocery <br> Products.','sliders/slider-05-bg-3.jpg','/products','Quality &amp; Fresh Products',3,'2025-10-20 17:06:01','2025-10-20 17:06:01');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `key` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Slider home 1','slider-home-1','The slider on home page 1','published','2025-10-20 17:06:01','2025-10-20 17:06:01'),(2,'Slider home 2','slider-home-2','The slider on home page 2','published','2025-10-20 17:06:01','2025-10-20 17:06:01'),(3,'Slider Furniture','slider-furniture','The slider for furniture style','published','2025-10-20 17:06:01','2025-10-20 17:06:01'),(4,'Slider Cosmetics','slider-cosmetics','The slider for cosmetics style','published','2025-10-20 17:06:01','2025-10-20 17:06:01'),(5,'Slider Grocery','slider-grocery','The slider for grocery style','published','2025-10-20 17:06:01','2025-10-20 17:06:01');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) NOT NULL,
  `reference_id` bigint(20) unsigned NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `prefix` varchar(120) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`),
  KEY `idx_slugs_reference` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(2,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(3,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(4,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(5,'general',1,'Botble\\Blog\\Models\\Tag','tag','2025-10-20 17:05:52','2025-10-20 17:05:52'),(6,'design',2,'Botble\\Blog\\Models\\Tag','tag','2025-10-20 17:05:52','2025-10-20 17:05:52'),(7,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2025-10-20 17:05:52','2025-10-20 17:05:52'),(8,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2025-10-20 17:05:52','2025-10-20 17:05:52'),(9,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2025-10-20 17:05:52','2025-10-20 17:05:52'),(10,'how-to-style-oversized-acid-wash-t-shirts-in-2026',1,'Botble\\Blog\\Models\\Post','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(11,'fabric-guide-100-percent-combed-cotton-vs-regular-cotton',2,'Botble\\Blog\\Models\\Post','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(12,'mens-minimalist-streetwear-essentials-bangladesh',3,'Botble\\Blog\\Models\\Post','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(13,'how-to-care-for-heavyweight-hoodies-fleece-jackets',4,'Botble\\Blog\\Models\\Post','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(14,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(15,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(16,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(17,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(18,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(19,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(20,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2025-10-20 17:05:52','2025-10-20 17:05:52'),(21,'wooden-home',1,'Botble\\Page\\Models\\Page','','2025-10-20 17:05:54','2025-10-20 17:05:54'),(22,'fashion-home',2,'Botble\\Page\\Models\\Page','','2025-10-20 17:05:54','2025-10-20 17:05:54'),(23,'furniture-home',3,'Botble\\Page\\Models\\Page','','2025-10-20 17:05:54','2025-10-20 17:05:54'),(24,'cosmetics-home',4,'Botble\\Page\\Models\\Page','','2025-10-20 17:05:54','2025-10-20 17:05:54'),(25,'food-grocery-home',5,'Botble\\Page\\Models\\Page','','2025-10-20 17:05:54','2025-10-20 17:05:54'),(26,'blog',6,'Botble\\Page\\Models\\Page','','2025-10-20 17:05:54','2025-10-20 17:05:54'),(27,'about',7,'Botble\\Page\\Models\\Page','','2025-10-20 17:05:54','2025-10-20 17:05:54'),(28,'contact',8,'Botble\\Page\\Models\\Page','','2025-10-20 17:05:54','2025-10-20 17:05:54'),(29,'coming-soon',9,'Botble\\Page\\Models\\Page','','2025-10-20 17:05:54','2025-10-20 17:05:54'),(30,'store-locator',10,'Botble\\Page\\Models\\Page','','2025-10-20 17:05:54','2025-10-20 17:05:54'),(31,'faqs',11,'Botble\\Page\\Models\\Page','','2025-10-20 17:05:54','2025-10-20 17:05:54'),(136,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2025-10-20 17:06:41','2025-10-20 17:06:41'),(137,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2025-10-20 17:06:41','2025-10-20 17:06:41'),(138,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2025-10-20 17:06:41','2025-10-20 17:06:41'),(139,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2025-10-20 17:06:41','2025-10-20 17:06:41'),(140,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2025-10-20 17:06:41','2025-10-20 17:06:41'),(141,'photography',6,'Botble\\Gallery\\Models\\Gallery','galleries','2025-10-20 17:06:41','2025-10-20 17:06:41'),(337,'rosalina-d-willson',1,'Botble\\Team\\Models\\Team','teams','2025-10-20 17:06:44','2025-10-20 17:06:44'),(338,'ukolilix-x-xilanorix',2,'Botble\\Team\\Models\\Team','teams','2025-10-20 17:06:44','2025-10-20 17:06:44'),(339,'alonso-m-miklonax',3,'Botble\\Team\\Models\\Team','teams','2025-10-20 17:06:44','2025-10-20 17:06:44'),(340,'miranda-h-halim',4,'Botble\\Team\\Models\\Team','teams','2025-10-20 17:06:44','2025-10-20 17:06:44'),(341,'t-shirts',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(342,'oversized-t-shirts',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(343,'acid-wash-t-shirts',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(344,'polo-t-shirts',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(345,'pique-t-shirts',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(346,'v-neck-t-shirts',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(347,'pants-trousers',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(348,'formal-pants',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(349,'jeans',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(350,'joggers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(351,'straight-fit-pants',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(352,'rib-cotton-pants',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(353,'shirts',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(354,'formal-shirts',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(355,'casual-shirts',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(356,'winter-wear',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(357,'hoodies',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(358,'sweatshirts',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-10-25 12:50:36','2026-10-25 12:50:36'),(359,'black-oversize-stone-acid-wash-t-shirt',1,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:01:21','2026-10-25 13:01:21'),(360,'vintage-grey-stone-acid-wash-t-shirt',2,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:01:22','2026-10-25 13:01:22'),(361,'over-sized-stone-acid-wash-t-shirt-drop-2',3,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:01:22','2026-10-25 13:01:22'),(362,'white-over-size-t-shirt-signature-minimal',4,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:01:22','2026-10-25 13:01:22'),(363,'off-white-heavyweight-oversized-tee',5,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:01:22','2026-10-25 13:01:22'),(364,'habitto-editorial-drop-graphic-tee',6,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:01:22','2026-10-25 13:01:22'),(365,'urban-heavyweight-fleece-hoodie',7,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:01:22','2026-10-25 13:01:22'),(366,'classic-tailored-formal-pants',8,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:01:22','2026-10-25 13:01:22'),(367,'raw-denim-streetwear-jeans',9,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:01:22','2026-10-25 13:01:22'),(368,'black-oversize-stone-acid-wash-t-shirt',10,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:02:09','2026-10-25 13:02:09'),(369,'vintage-grey-stone-acid-wash-t-shirt',11,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:02:09','2026-10-25 13:02:09'),(370,'over-sized-stone-acid-wash-t-shirt-drop-2',12,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:02:09','2026-10-25 13:02:09'),(371,'white-over-size-t-shirt-signature-minimal',13,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:02:09','2026-10-25 13:02:09'),(372,'off-white-heavyweight-oversized-tee',14,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:02:09','2026-10-25 13:02:09'),(373,'habitto-editorial-drop-graphic-tee',15,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:02:09','2026-10-25 13:02:09'),(374,'urban-heavyweight-fleece-hoodie',16,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:02:09','2026-10-25 13:02:09'),(375,'classic-tailored-formal-pants',17,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:02:10','2026-10-25 13:02:10'),(376,'raw-denim-streetwear-jeans',18,'Botble\\Ecommerce\\Models\\Product','products','2026-10-25 13:02:10','2026-10-25 13:02:10'),(377,'return-exchange-policy',12,'Botble\\Page\\Models\\Page','','2026-10-28 22:37:17','2026-10-28 22:37:17'),(378,'shipping-delivery-policy',13,'Botble\\Page\\Models\\Page','','2026-10-28 22:37:17','2026-10-28 22:37:17'),(379,'privacy-policy',14,'Botble\\Page\\Models\\Page','','2026-10-28 22:37:17','2026-10-28 22:37:17'),(380,'terms-and-conditions',15,'Botble\\Page\\Models\\Page','','2026-10-28 22:37:17','2026-10-28 22:37:17'),(381,'navy-blue-pique-knit-polo-t-shirt',64,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(382,'classic-black-tipped-collar-polo-shirt',70,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(383,'olive-green-textured-minimal-polo',76,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(384,'off-white-solid-smart-fit-polo',82,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(385,'charcoal-grey-heavyweight-fleece-hoodie',88,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(386,'maroon-minimalist-streetwear-pullover-hoodie',94,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(387,'ash-grey-drop-shoulder-french-terry-sweatshirt',100,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(388,'washed-black-relaxed-crewneck-sweatshirt',106,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(389,'streetwear-multi-pocket-cargo-joggers-olive',112,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(390,'charcoal-black-tech-fleece-casual-joggers',118,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(391,'tailored-slim-fit-chino-pants-khaki-beige',124,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(392,'classic-navy-blue-smart-formal-trousers',130,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(393,'vintage-indigo-blue-regular-fit-denim-jeans',136,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(394,'jet-black-washed-stretch-denim-jeans',142,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(395,'white-cuban-collar-linen-summer-casual-shirt',148,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(396,'olive-green-camp-collar-relaxed-casual-shirt',154,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(397,'classic-light-blue-oxford-cotton-long-sleeve-shirt',160,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(398,'acid-wash-tokyo-cyberpunk-oversized-t-shirt',166,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(399,'minimalist-typography-drop-shoulder-heavy-tee',172,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53'),(400,'raw-ash-grey-vintage-wash-everyday-tee',178,'Botble\\Ecommerce\\Models\\Product','products','2026-10-31 11:37:53','2026-10-31 11:37:53');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `slugs_id` bigint(20) unsigned NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `prefix` varchar(120) DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_logins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `provider` varchar(191) NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `token` text DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `abbreviation` varchar(10) DEFAULT NULL,
  `country_id` bigint(20) unsigned DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`),
  KEY `idx_states_name` (`name`),
  KEY `idx_states_status` (`status`),
  KEY `idx_states_country_id` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (73,'ঢাকা (Dhaka)','dhaka','DHA',1,1,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37'),(74,'চট্টগ্রাম (Chittagong)','chittagong','CHI',1,2,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37'),(75,'রাজশাহী (Rajshahi)','rajshahi','RAJ',1,3,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37'),(76,'খুলনা (Khulna)','khulna','KHU',1,4,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37'),(77,'বরিশাল (Barisal)','barisal','BAR',1,5,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37'),(78,'সিলেট (Sylhet)','sylhet','SYL',1,6,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37'),(79,'রংপুর (Rangpur)','rangpur','RAN',1,7,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37'),(80,'ময়মনসিংহ (Mymensingh)','mymensingh','MYM',1,8,NULL,0,'published','2026-11-01 09:30:37','2026-11-01 09:30:37');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) NOT NULL,
  `states_id` bigint(20) unsigned NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `abbreviation` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`),
  KEY `idx_states_trans_state_lang` (`states_id`,`lang_code`),
  KEY `idx_states_trans_name` (`name`),
  KEY `idx_states_trans_states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `author_id` bigint(20) unsigned DEFAULT NULL,
  `author_type` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-10-20 17:05:52','2025-10-20 17:05:52'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-10-20 17:05:52','2025-10-20 17:05:52'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-10-20 17:05:52','2025-10-20 17:05:52'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-10-20 17:05:52','2025-10-20 17:05:52'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-10-20 17:05:52','2025-10-20 17:05:52');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) NOT NULL,
  `tags_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `socials` varchar(191) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Rosalina D. Willson','testimonials/team-1.jpg','Founder','USA',NULL,'published','2025-10-20 17:06:42','2025-10-20 17:06:42',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Ukolilix X. Xilanorix','testimonials/team-2.jpg','CEO','Qatar',NULL,'published','2025-10-20 17:06:42','2025-10-20 17:06:42',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Alonso M. Miklonax','testimonials/team-3.jpg','Designer','India',NULL,'published','2025-10-20 17:06:42','2025-10-20 17:06:42',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Miranda H. Halim','testimonials/team-4.jpg','Developer','China',NULL,'published','2025-10-20 17:06:42','2025-10-20 17:06:42',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams_translations`
--

DROP TABLE IF EXISTS `teams_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams_translations` (
  `lang_code` varchar(191) NOT NULL,
  `teams_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`teams_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams_translations`
--

LOCK TABLES `teams_translations` WRITE;
/*!40000 ALTER TABLE `teams_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Guy Hawkins','Five stars! Their cosmetics are magic. Transformed my skin, enhanced my beauty. A go-to for quality and results ⭐⭐⭐⭐⭐','testimonials/avatar-1.png','Bank of America','published','2025-10-20 17:06:42','2025-10-20 17:06:42'),(2,'Eleanor Pena','Top-notch! 5 stars. Makeup, skincare, all exceptional. Delighted with my purchases. A must-visit for every beauty enthusiast! ⭐⭐⭐⭐⭐','testimonials/avatar-2.png','Nintendo','published','2025-10-20 17:06:42','2025-10-20 17:06:42'),(3,'Cody Fisher','Thrilled with results! 5 stars. Solved my sensitive skin issues. The cosmetics shop is a gem. Highly recommended. ⭐⭐⭐⭐⭐','testimonials/avatar-3.png','Starbucks','published','2025-10-20 17:06:42','2025-10-20 17:06:42'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star. Impressed beyond words. ⭐⭐⭐⭐⭐','testimonials/avatar-4.png','Bank of America','published','2025-10-20 17:06:43','2025-10-20 17:06:43');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(191) NOT NULL,
  `testimonials_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
INSERT INTO `user_meta` VALUES (1,'minimal_sidebar','no',1,'2026-10-30 10:41:23','2026-10-30 10:41:24');
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`value`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `user_settings_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `avatar_id` bigint(20) unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@admin.com','01889151058',NULL,'$2y$12$RbVp41zwhkTPa.gJtlPT3OTCrwKz4iC9XUWIpJhr.G9/nyYRNtx/y','RySiTUC0YA261ZlcMAZXL7nyqQbBQxN0GTJIHVxQ1vHkjrx5BKsBNdvfXMDx','2025-10-20 17:05:48','2026-11-19 07:39:51','Ratul','Ahmed','admin',NULL,1,1,NULL,'2026-11-19 07:39:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','ninico',0,'{\"description\":\"Habbito is a contemporary streetwear & lifestyle brand in Bangladesh. We craft top-tier oversized t-shirts, vintage stone acid wash drops, heavy hoodies, and tailored bottoms designed for everyday comfort.\",\"logo\":\"general\\/Habbito-logo.jpg\"}','2025-10-20 17:06:01','2025-10-20 17:06:01'),(2,'CustomMenuWidget','footer_sidebar','ninico',1,'{\"name\":\"Information\",\"menu_id\":\"information\"}','2025-10-20 17:06:01','2025-10-20 17:06:01'),(3,'CustomMenuWidget','footer_sidebar','ninico',2,'{\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2025-10-20 17:06:01','2025-10-20 17:06:01'),(4,'CustomMenuWidget','footer_sidebar','ninico',3,'{\"name\":\"Social Network\",\"menu_id\":\"social-network\"}','2025-10-20 17:06:01','2025-10-20 17:06:01'),(5,'NewsletterWidget','footer_sidebar','ninico',4,'[]','2025-10-20 17:06:01','2025-10-20 17:06:01'),(6,'CtaContactWidget','footer_middle_sidebar','ninico',1,'{\"icon\":\"fas fa-phone-alt\",\"phone\":\"+880 1889-151058\",\"text\":\"Call or WhatsApp: 10:00 AM - 10:00 PM (Daily Support)\"}','2025-10-20 17:06:01','2025-10-20 17:06:01'),(7,'DownloadAppsWidget','footer_middle_sidebar','ninico',2,'{\"title\":\"Fast Delivery All Over Bangladesh\",\"subtitle\":\"Inside Dhaka: \\u09f370 | Outside Dhaka: \\u09f3130 | Free Delivery over \\u09f32,000\",\"ios_link\":\"\",\"ios_image\":\"\",\"android_link\":\"\",\"android_image\":\"\"}','2025-10-20 17:06:01','2025-10-20 17:06:01'),(8,'SiteCopyrightWidget','footer_bottom_sidebar','ninico',0,'{\"description\":\"Copyright \\u00a9 2026 Habbito. All Rights Reserved. Crafted for Streetwear Enthusiasts.\"}','2025-10-20 17:06:01','2025-10-20 17:06:01'),(9,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','ninico',1,'{\"image\":\"general\\/f-brand-icon-01.png\",\"url\":\"\"}','2025-10-20 17:06:01','2025-10-20 17:06:01'),(10,'BlogSearchWidget','blog_sidebar','ninico',1,'{\"name\":\"Search\"}','2025-10-20 17:06:01','2025-10-20 17:06:01'),(11,'BlogCategoriesWidget','blog_sidebar','ninico',2,'{\"name\":\"Categories\"}','2025-10-20 17:06:01','2025-10-20 17:06:01'),(12,'BlogPostsWidget','blog_sidebar','ninico',3,'{\"name\":\"Recent Posts\",\"type\":\"recent\"}','2025-10-20 17:06:01','2025-10-20 17:06:01'),(13,'BlogTagsWidget','blog_sidebar','ninico',4,'{\"name\":\"Popular Tag\"}','2025-10-20 17:06:01','2025-10-20 17:06:01'),(14,'SiteFeaturesWidget','product_detail_sidebar','ninico',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"icons\\/verified.png\",\"text\":\"100% Original Products\"},\"2\":{\"icon\":\"icons\\/fast-delivery.png\",\"text\":\"Fast Delivery within 24-72 Hours\"},\"3\":{\"icon\":\"icons\\/cash-on-delivery.png\",\"text\":\"Cash On Delivery Available\"},\"4\":{\"icon\":\"icons\\/support.png\",\"text\":\"24\\/7 Order Support via whatsapp\"}}}','2025-10-20 17:06:01','2025-10-20 17:06:01');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-19 20:15:23
