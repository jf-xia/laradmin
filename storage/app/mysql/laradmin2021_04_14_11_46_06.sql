-- MySQL dump 10.13  Distrib 8.0.21, for osx10.15 (x86_64)
--
-- Host: mysql    Database: laradmin
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(222) COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `sign_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
INSERT INTO `contracts` VALUES (1,'Project Management Solution',1,5000.00,'2021-04-15 00:00:00','2021-04-06 07:22:05','2021-04-06 07:22:05',NULL);
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `user_id` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'baidu',5,'2021-04-06 03:44:41','2021-04-06 02:55:16',NULL),(2,'google',5,'2021-04-06 03:00:23','2021-04-06 03:00:23',NULL),(3,'Tencent',5,'2021-04-06 08:01:18','2021-04-06 03:45:00','2021-04-06 08:01:18'),(4,'dddddd',2,'2021-04-06 03:45:53','2021-04-06 03:45:53',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(222) COLLATE utf8mb4_bin DEFAULT NULL,
  `mobile` varchar(55) COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES (1,'R & D dept.','12321312321',1,'2021-04-06 07:02:28','2021-04-06 07:02:28',NULL);
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_03_17_010939_laratrust_setup_tables',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `description` varchar(555) COLLATE utf8mb4_bin DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `model` varchar(111) COLLATE utf8mb4_bin DEFAULT NULL,
  `template` json DEFAULT NULL,
  `orderby` smallint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'User','- User Management','page/users','App\\User','{\"form\": {\"title\": \"Create User\", \"action\": \"model/users\", \"fields\": [{\"id\": \"name\", \"name\": \"name\", \"type\": \"text\", \"class\": \"form-control\", \"front\": \"input\", \"label\": \"User Name\", \"placeholder\": \"text\"}, {\"id\": \"email\", \"name\": \"email\", \"type\": \"email\", \"class\": \"form-control\", \"front\": \"input\", \"label\": \"Email\", \"placeholder\": \"Email\"}, {\"id\": \"Password\", \"name\": \"password\", \"type\": \"password\", \"class\": \"form-control\", \"front\": \"input\", \"label\": \"Password\", \"placeholder\": \"Password\"}, {\"id\": \"avatar\", \"name\": \"avatar\", \"type\": \"file\", \"class\": \"form-control\", \"front\": \"input\", \"label\": \"Avatar\", \"placeholder\": \"Image\"}], \"viewClass\": {\"field\": \"col\", \"label\": \"form-label col-3 col-form-label\", \"form-group\": \"form-group mb-3 row\"}, \"subTemplate\": \"1\"}, \"table\": {\"title\": \"User List\", \"delete\": \"model/users\", \"columns\": {\"id\": \"ID\", \"name\": \"User Name\", \"email\": \"Email\", \"avatar\": {\"html\": \"<img src=\'$$$val$$$\' />\", \"label\": \"Avatar\"}, \"created_at\": \"Create At\", \"updated_at\": \"Updated At\"}, \"searchField\": \"name\"}}',999,NULL,'2021-04-06 07:31:12',NULL),(3,'Role','- User Role Management','page/roles','App\\Models\\Role','{\"form\": {\"title\": \"Create Role\", \"action\": \"model/roles\", \"fields\": [{\"id\": \"name\", \"name\": \"name\", \"type\": \"text\", \"class\": \"form-control\", \"front\": \"input\", \"label\": \"Role Name\", \"placeholder\": \"text\"}, {\"id\": \"display_name\", \"name\": \"display_name\", \"type\": \"text\", \"class\": \"form-control\", \"front\": \"input\", \"label\": \"Role Label\", \"placeholder\": \"text\"}], \"viewClass\": {\"field\": \"col\", \"label\": \"form-label col-3 col-form-label\", \"form-group\": \"form-group mb-3 row\"}, \"subTemplate\": \"1\"}, \"table\": {\"title\": \"Roles List\", \"delete\": \"model/roles\", \"columns\": {\"id\": \"ID\", \"name\": \"Role Name\", \"created_at\": \"Create At\", \"updated_at\": \"Updated At\", \"description\": \"Role Description\", \"display_name\": \"Role Label\"}, \"searchField\": \"name\"}}',1000,NULL,'2021-04-06 07:31:14',NULL),(5,'Customer','- CRM','page/customer','App\\Models\\Customer','{\"form\": {\"title\": \"Create Customer\", \"action\": \"customer\", \"fields\": [{\"id\": \"name\", \"name\": \"name\", \"type\": \"text\", \"class\": \"form-control\", \"front\": \"translate\", \"label\": \"Name\", \"placeholder\": \"Name\"}], \"viewClass\": {\"field\": \"input-group\", \"label\": \"form-label col-3 col-form-label\", \"form-group\": \"form-group mb-3 row\"}, \"subTemplate\": \"1\"}, \"table\": {\"title\": \"Customer List\", \"delete\": \"customer\", \"columns\": {\"id\": {\"html\": \"<a href=\'/customer/$$$val$$$/edit\' >$$$val$$$ [Edit]</a>\", \"label\": \"ID\"}, \"name\": \"Name\", \"created_at\": \"Create At\", \"updated_at\": \"Updated At\"}, \"searchField\": \"name\"}}',NULL,'2021-03-30 07:09:40','2021-04-06 07:43:09',NULL),(28,'Task',NULL,'page/tasks','App\\Models\\System\\Model|tasks','{\"form\": {\"title\": \"Create Task\", \"action\": \"model/tasks\", \"fields\": [{\"id\": \"title\", \"name\": \"title\", \"type\": \"text\", \"class\": \"form-control\", \"front\": \"translate\", \"label\": \"Title\", \"placeholder\": \"Title\"}, {\"id\": \"start_at\", \"name\": \"start_at\", \"type\": \"text\", \"class\": \"form-control\", \"front\": \"date\", \"label\": \"Start At\", \"placeholder\": \"Start At\"}], \"viewClass\": {\"field\": \"input-group\", \"label\": \"form-label col-3 col-form-label\", \"form-group\": \"form-group mb-3 row\"}, \"subTemplate\": \"1\"}, \"table\": {\"title\": \"Task List\", \"delete\": \"model/tasks\", \"columns\": {\"id\": \"ID\", \"title\": \"Title\", \"end_at\": \"End At\", \"start_at\": \"Start At\", \"created_at\": \"Create At\", \"updated_at\": \"Updated At\"}, \"searchField\": \"title\"}}',NULL,'2021-03-30 07:09:40','2021-03-31 03:48:18',NULL),(29,'Lead',NULL,'page/leads','App\\Models\\System\\Model|leads','{\"form\": {\"title\": \"Create Lead\", \"action\": \"model/leads\", \"fields\": [{\"id\": \"name\", \"name\": \"name\", \"type\": \"text\", \"class\": \"form-control\", \"front\": \"input\", \"label\": \"Name\", \"placeholder\": \"name\"}, {\"id\": \"mobile\", \"name\": \"mobile\", \"type\": \"text\", \"class\": \"form-control\", \"front\": \"input\", \"label\": \"Mobile\", \"placeholder\": \"mobile\"}], \"viewClass\": {\"field\": \"input-group\", \"label\": \"form-label col-3 col-form-label\", \"form-group\": \"form-group mb-3 row\"}, \"subTemplate\": \"1\"}, \"table\": {\"title\": \"lead List\", \"delete\": \"model/leads\", \"columns\": {\"id\": \"ID\", \"name\": \"Name\", \"mobile\": \"Mobile\", \"created_at\": \"Create At\", \"updated_at\": \"Updated At\"}, \"searchField\": \"name\"}}',NULL,'2021-03-30 07:09:40','2021-04-06 07:02:15',NULL),(30,'Contract',NULL,'page/contracts','App\\Models\\System\\Model|contracts','{\"form\": {\"title\": \"Create Contracts\", \"action\": \"model/contracts\", \"fields\": [{\"id\": \"title\", \"name\": \"title\", \"type\": \"text\", \"class\": \"form-control\", \"front\": \"input\", \"label\": \"Title\", \"placeholder\": \"Title\"}, {\"id\": \"sign_date\", \"name\": \"sign_date\", \"type\": \"text\", \"class\": \"form-control\", \"front\": \"date\", \"label\": \"Sign Date\", \"placeholder\": \"Sign Date\"}, {\"id\": \"amount\", \"name\": \"amount\", \"type\": \"text\", \"class\": \"form-control\", \"front\": \"input\", \"label\": \"Amount\", \"placeholder\": \"text\"}], \"viewClass\": {\"field\": \"input-group\", \"label\": \"form-label col-3 col-form-label\", \"form-group\": \"form-group mb-3 row\"}, \"subTemplate\": \"1\"}, \"table\": {\"title\": \"Contract List\", \"delete\": \"model/contracts\", \"columns\": {\"id\": \"ID\", \"title\": \"Title\", \"amount\": \"Amount\", \"sign_date\": \"sign_date\", \"created_at\": \"Create At\"}, \"searchField\": \"title\"}}',NULL,'2021-03-30 07:09:40','2021-04-06 07:21:17',NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_user`
--

DROP TABLE IF EXISTS `permission_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_user` (
  `permission_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  KEY `permission_user_permission_id_foreign` (`permission_id`),
  CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_user`
--

LOCK TABLES `permission_user` WRITE;
/*!40000 ALTER TABLE `permission_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `role_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1,'App\\User'),(1,5,'App\\User');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','super admin user',NULL,'2021-03-21 08:55:03',NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'daf','2021-03-04 00:00:00',NULL,NULL,'2021-03-30 08:36:18','2021-03-30 08:21:08','2021-03-30 08:36:18'),(2,'I plan to visit Tokyo Disneyland with my family','2021-11-11 00:00:00',NULL,NULL,'2021-03-30 08:36:56','2021-03-30 08:36:56',NULL),(3,'user',NULL,NULL,NULL,'2021-03-31 03:45:34','2021-03-31 03:45:34',NULL),(4,'asdf','2021-04-11 00:00:00',NULL,NULL,'2021-04-06 06:38:24','2021-04-06 06:38:24',NULL),(5,'Find leads from Baidu company','2021-04-10 00:00:00',NULL,1,'2021-04-06 06:51:39','2021-04-06 06:51:39',NULL);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(222) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'JFXia','jfxia@admin.com',NULL,'$2y$10$Fy2.JWR66WEFfQBnZDRygOd2WhdR143ivqnAW6q.MVz1CM5Y6j4Cm',NULL,'2021-03-27 01:27:25','2021-04-06 03:14:43',NULL,NULL),(2,'Jianfeng Xia','u3575158@connect.hku.hk',NULL,'$2y$10$C9X7byrKZAEW44Mh/HIDqeWB9Im0KalmnI68F8IkQGaNxaa9HXfOK',NULL,'2021-03-28 16:07:36','2021-04-06 03:13:07',NULL,NULL),(4,'夏健峰','jackxia5@foxmail.com',NULL,'$2y$10$C9X7byrKZAEW44Mh/HIDqeWB9Im0KalmnI68F8IkQGaNxaa9HXfOK',NULL,'2021-03-29 16:56:20','2021-04-06 06:24:01','2021-04-06 06:24:01','https://laradmin.jack/static/avatars/000m.jpg'),(5,'admin','admin@admin.com',NULL,'$2y$10$C9X7byrKZAEW44Mh/HIDqeWB9Im0KalmnI68F8IkQGaNxaa9HXfOK',NULL,'2021-03-30 02:21:55','2021-03-30 02:21:55',NULL,'https://dss3.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/img/weather/icons/a1.png');
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

-- Dump completed on 2021-04-14 11:46:07
