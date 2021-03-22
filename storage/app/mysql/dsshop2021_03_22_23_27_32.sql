-- MySQL dump 10.13  Distrib 8.0.21, for osx10.15 (x86_64)
--
-- Host: mysql    Database: dsshop
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
-- Table structure for table `admin_auth_group`
--

DROP TABLE IF EXISTS `admin_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_auth_group` (
  `admin_id` bigint NOT NULL COMMENT '权限组ID',
  `auth_group_id` bigint NOT NULL COMMENT '权限ID',
  KEY `admin_auth_group_admin_id_index` (`admin_id`),
  KEY `admin_auth_group_auth_group_id_index` (`auth_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_auth_group`
--

LOCK TABLES `admin_auth_group` WRITE;
/*!40000 ALTER TABLE `admin_auth_group` DISABLE KEYS */;
INSERT INTO `admin_auth_group` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `admin_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_logs`
--

DROP TABLE IF EXISTS `admin_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` bigint NOT NULL COMMENT '管理员ID',
  `path` varchar(255) NOT NULL COMMENT '路径',
  `method` varchar(10) NOT NULL COMMENT '请求方法',
  `ip` varchar(45) NOT NULL COMMENT 'IP',
  `input` text NOT NULL COMMENT '提交的数据',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_logs_id_unique` (`id`),
  KEY `admin_logs_admin_id_index` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_logs`
--

LOCK TABLES `admin_logs` WRITE;
/*!40000 ALTER TABLE `admin_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `state` tinyint NOT NULL DEFAULT '1',
  `name` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cellphone` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `portrait` varchar(255) NOT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_id_unique` (`id`),
  KEY `admins_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,1,'admin','admin@gmail.com','13333333333','$2y$10$nxcmBpwq2/0d4QKom9ZevuxmJlZ4dBi12Uyn2V65e2rBtnXYq49.q','https://dsshop.dswjcms.com/storage/image/portrait/4dq8h1607946382.png','2020-08-01 08:00:00','2020-08-01 23:41:30','2020-08-01 20:56:32','2020-08-01 23:41:30'),(2,1,'abcd12345','abcd12345@123.com','13333333334','$2y$10$jEUYHRTGofk5h3ZuS.BiCewYU3/zLxBuMtS8.Qchu2l2RMd6BT5h2','https://dsshop.dswjcms.com/storage/image/portrait/4dq8h1607946382.png','2020-08-01 18:10:37','2020-08-01 18:10:37','2020-08-01 18:10:37','2020-08-01 10:23:05');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_auth_rules`
--

DROP TABLE IF EXISTS `auth_group_auth_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_auth_rules` (
  `auth_group_id` bigint NOT NULL,
  `auth_rule_id` bigint NOT NULL,
  KEY `auth_group_auth_rules_auth_group_id_index` (`auth_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限组-权限关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_auth_rules`
--

LOCK TABLES `auth_group_auth_rules` WRITE;
/*!40000 ALTER TABLE `auth_group_auth_rules` DISABLE KEYS */;
INSERT INTO `auth_group_auth_rules` VALUES (5,23),(2,29),(2,116),(2,117),(2,90),(2,91),(2,95),(2,96),(2,105),(2,106),(2,110),(2,111),(2,121),(2,122),(2,129),(2,127),(2,128),(2,133),(2,2),(2,6),(2,187),(2,10),(2,189),(2,15),(2,190),(2,19),(2,191),(2,23),(2,142),(2,143),(2,156),(2,157),(2,149),(2,150),(2,151),(2,152),(1,2),(1,10),(1,154),(1,155),(1,189),(1,15),(1,16),(1,17),(1,18),(1,190),(1,19),(1,20),(1,21),(1,22),(1,191),(1,6),(1,7),(1,8),(1,9),(1,187),(1,29),(1,90),(1,91),(1,92),(1,93),(1,94),(1,95),(1,96),(1,97),(1,98),(1,99),(1,105),(1,106),(1,107),(1,108),(1,109),(1,110),(1,111),(1,112),(1,113),(1,114),(1,116),(1,117),(1,118),(1,119),(1,120),(1,195),(1,121),(1,122),(1,123),(1,124),(1,125),(1,129),(1,130),(1,131),(1,132),(1,149),(1,150),(1,151),(1,152),(1,156),(1,157),(1,159),(1,192),(1,193),(1,127),(1,126),(1,128),(1,133),(1,148),(1,196),(1,23),(1,60),(1,61),(1,62),(1,63),(1,197),(1,142),(1,143),(1,144),(1,145),(1,147),(1,100),(1,101),(1,104);
/*!40000 ALTER TABLE `auth_group_auth_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_groups`
--

DROP TABLE IF EXISTS `auth_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `roles` varchar(30) NOT NULL,
  `introduction` varchar(80) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_groups_id_unique` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_groups`
--

LOCK TABLES `auth_groups` WRITE;
/*!40000 ALTER TABLE `auth_groups` DISABLE KEYS */;
INSERT INTO `auth_groups` VALUES (1,'admin','超级管理员','2019-03-24 08:00:00','2019-05-25 05:42:07'),(2,'edits','编辑人员','2019-04-17 18:23:12','2019-04-17 18:23:12');
/*!40000 ALTER TABLE `auth_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rules`
--

DROP TABLE IF EXISTS `auth_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `api` varchar(200) NOT NULL COMMENT '对应前端的模板名',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址',
  `icon` varchar(20) DEFAULT NULL COMMENT '菜单小图标',
  `title` varchar(30) NOT NULL COMMENT '权限名称',
  `pid` int NOT NULL COMMENT '分组',
  `state` tinyint NOT NULL DEFAULT '0' COMMENT '是否显示在菜单栏，顶级类目不受此约束；1为显示0为隐藏',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序：同级有效',
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_rules_id_unique` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rules`
--

LOCK TABLES `auth_rules` WRITE;
/*!40000 ALTER TABLE `auth_rules` DISABLE KEYS */;
INSERT INTO `auth_rules` VALUES (2,'UserManagement','','user','用户管理',0,1,1),(6,'Admin','','','管理员管理',2,1,0),(7,'AdminCreate',NULL,'','创建管理员',6,0,0),(8,'AdminEdit',NULL,'','保存管理员',6,0,0),(9,'AdminDestroy',NULL,'','删除管理员',6,0,0),(10,'Member','','','会员管理',2,1,1),(15,'Manage','','','管理组管理',2,1,2),(16,'ManageCreate',NULL,'','创建管理组',15,0,0),(17,'ManageEdit',NULL,'','保存管理组',15,0,0),(18,'ManageDestroy',NULL,'','删除管理组',15,0,0),(19,'Power','','','权限管理',2,1,3),(20,'PowerCreate',NULL,'','创建权限',19,0,0),(21,'PowerEdit',NULL,'','保存权限',19,0,0),(22,'PowerDestroy',NULL,'','删除权限',19,0,0),(23,'ToolManagement','','tool','工具',0,1,1),(29,'CommodityManagement','','goods','商品管理',0,1,0),(60,'RedisService','','','Redis管理',23,1,0),(61,'RedisServiceList','','','Redis列表',60,1,0),(62,'RedisServiceDestroy','','','删除Redis',60,0,0),(63,'RedisPanel','','','Redis面板',60,1,0),(90,'Brand','','','品牌',29,1,1),(91,'BrandList','','','品牌列表',90,1,0),(92,'BrandCreate','','','创建品牌',90,0,0),(93,'BrandEdit','','','保存品牌',90,0,0),(94,'BrandDestroy','','','删除品牌',90,0,0),(95,'Category','','','分类',29,1,1),(96,'CategoryList','','','分类列表',95,1,0),(97,'CategoryCreate','','','创建分类',95,0,0),(98,'CategoryEdit','','','保存分类',95,0,0),(99,'CategoryDestroy','','','删除分类',95,0,0),(100,'Resource','','','资源',23,1,0),(101,'ResourceList','','','资源列表',100,1,0),(104,'ResourceDestroy','','','删除资源',100,0,0),(105,'Specification','','','规格',29,1,1),(106,'SpecificationList','','','规格列表',105,1,0),(107,'SpecificationCreate','','','创建规格',105,0,0),(108,'SpecificationEdit','','','保存规格',105,0,0),(109,'SpecificationDestroy','','','删除规格',105,0,0),(110,'SpecificationGroup','','','规格组',29,1,1),(111,'SpecificationGroupList','','','规格组列表',110,1,0),(112,'SpecificationGroupCreate','','','创建规格组',110,0,0),(113,'SpecificationGroupEdit','','','保存规格组',110,0,0),(114,'SpecificationGroupDestroy','','','删除规格组',110,0,0),(116,'Good','','','商品',29,1,0),(117,'GoodList','','','商品列表',116,1,0),(118,'GoodCreate','','','创建商品',116,0,0),(119,'GoodEdit','','','保存商品',116,0,0),(120,'GoodDestroy','','','删除商品',116,0,0),(121,'LogisticManagement','','logistics','物流管理',0,1,0),(122,'FreightList','','','运费模板',121,1,0),(123,'FreightCreate','','','创建运费模板',121,0,0),(124,'FreightEdit','','','保存运费模板',121,0,0),(125,'FreightDestroy','','','删除运费模板',121,0,0),(126,'IndentShipment','','','发货',127,0,0),(127,'IndentManagement','','Indent','订单管理',0,1,0),(128,'IndentList','','','订单列表',127,1,0),(129,'DhlList','','','快递公司',121,1,0),(130,'DhlCreate','','','创建快递公司',121,0,0),(131,'DhlEdit','','','保存快递公司',121,0,0),(132,'DhlDestroy','','','删除快递公司',121,0,0),(133,'IndentDetail','','','订单详情',127,0,0),(142,'Banner','','','轮播管理',23,1,0),(143,'BannerList','','','轮播列表',142,1,0),(144,'BannerCreate','','','创建轮播',142,0,0),(145,'BannerEdit','','','保存轮播',142,0,0),(147,'BannerDestroy','','','删除轮播',142,0,0),(148,'IndentRefund','','','退款',127,0,0),(149,'Statistics','','statistics','统计',0,1,0),(150,'StatisticsVisit','','','使用分析',149,1,0),(151,'StatisticsPay','','','交易分析',149,1,0),(152,'StatisticsAgeAndSex','','','用户画像',149,1,0),(154,'MemberCreate','','','创建用户',10,0,0),(155,'MemberEdit','','','保存用户',10,0,0),(156,'PlugIn','','plug-in','插件',0,1,1),(157,'PlugInList','','','插件列表',156,1,0),(159,'PlugInCreate','','','插件安装',156,0,0),(187,'AdminList','','','管理员列表',6,1,0),(189,'MemberList','','','会员列表',10,1,0),(190,'ManageList','','','管理组列表',15,1,0),(191,'PowerList','','','权限列表',19,1,0),(192,'PlugInDestroy','','','插件卸载',156,0,0),(193,'PlugInEdit','','','插件更新',156,0,0),(195,'GoodDetail','','','商品详情',116,0,0),(196,'IndentDhl','','','保存订单配送信息',127,0,0),(197,'RedisServiceDetail','','','Redis详情',60,0,0);
/*!40000 ALTER TABLE `auth_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint NOT NULL DEFAULT '0' COMMENT '0首页轮播1首页广告',
  `name` varchar(30) NOT NULL COMMENT '轮播名称',
  `url` varchar(255) DEFAULT NULL COMMENT '轮播地址',
  `sort` int NOT NULL DEFAULT '0' COMMENT '轮播排序',
  `state` tinyint NOT NULL DEFAULT '0' COMMENT '是否显示0显示1隐藏',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `banners_id_unique` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='轮播';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (4,0,'测试','/pages/product/product?id=21',5,0,'2020-07-18 20:07:15','2020-07-30 11:49:17'),(5,0,'2',NULL,5,0,'2020-07-18 20:10:04','2020-07-18 20:10:04'),(6,0,'3',NULL,5,0,'2020-07-18 20:10:13','2020-07-18 20:10:13'),(7,1,'5','/pages/product/product?id=21',5,0,'2020-07-18 20:12:08','2020-07-30 11:49:27');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '品牌名称',
  `sort` int NOT NULL COMMENT '排序',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brands_id_unique` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='品牌';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'吉普盾',5,NULL,'2020-04-24 09:34:07','2020-07-13 16:24:50'),(2,'PEACEBIRD/太平鸟',5,NULL,'2020-04-24 09:35:01','2020-07-13 16:26:08'),(3,'THE NORTH FACE/北面',5,NULL,'2020-07-13 16:26:24','2020-07-13 16:26:24'),(4,'七匹狼',5,NULL,'2020-07-13 16:26:34','2020-07-13 16:26:34'),(5,'花花公子',5,NULL,'2020-07-13 16:26:44','2020-07-13 16:26:44'),(6,'BARBOUR',5,NULL,'2020-07-13 16:27:07','2020-07-13 16:27:07'),(7,'one more',5,NULL,'2020-07-13 16:28:29','2020-07-13 16:28:29');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `browses`
--

DROP TABLE IF EXISTS `browses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `browses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `good_id` bigint NOT NULL COMMENT '商品ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `browses_id_unique` (`id`),
  KEY `browses_user_id_index` (`user_id`),
  KEY `browses_good_id_index` (`good_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='浏览记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `browses`
--

LOCK TABLES `browses` WRITE;
/*!40000 ALTER TABLE `browses` DISABLE KEYS */;
/*!40000 ALTER TABLE `browses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_brands`
--

DROP TABLE IF EXISTS `category_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint NOT NULL DEFAULT '0' COMMENT '分类ID',
  `brand_id` bigint NOT NULL DEFAULT '0' COMMENT '品牌ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_brands_id_unique` (`id`),
  KEY `category_brands_category_id_index` (`category_id`),
  KEY `category_brands_brand_id_index` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='分类品牌中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_brands`
--

LOCK TABLES `category_brands` WRITE;
/*!40000 ALTER TABLE `category_brands` DISABLE KEYS */;
INSERT INTO `category_brands` VALUES (3,2,1),(4,2,2),(12,11,1),(13,11,2),(14,11,3),(15,11,4),(16,11,5),(17,11,6),(18,11,7),(19,20,1),(20,20,2),(21,20,3),(22,20,4),(23,20,5),(24,20,6),(25,20,7);
/*!40000 ALTER TABLE `category_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_specifications`
--

DROP TABLE IF EXISTS `category_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_specifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `specification_id` bigint NOT NULL DEFAULT '0' COMMENT '规格ID',
  `category_id` bigint NOT NULL DEFAULT '0' COMMENT '分类ID	',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_specifications_id_unique` (`id`),
  KEY `category_specifications_specification_id_index` (`specification_id`),
  KEY `category_specifications_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='分类规格中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_specifications`
--

LOCK TABLES `category_specifications` WRITE;
/*!40000 ALTER TABLE `category_specifications` DISABLE KEYS */;
INSERT INTO `category_specifications` VALUES (22,1,2),(23,2,2),(24,3,2),(25,4,2),(26,5,2),(27,6,2),(28,7,2),(34,1,11),(35,2,11),(36,3,11),(37,4,11),(38,5,11),(39,1,20),(40,2,20),(41,3,20),(42,4,20),(43,5,20);
/*!40000 ALTER TABLE `category_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorys`
--

DROP TABLE IF EXISTS `categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '类目名称',
  `pid` int NOT NULL DEFAULT '0' COMMENT '上级类目',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `state` tinyint NOT NULL DEFAULT '0' COMMENT '是否显示0显示1不显示',
  `is_recommend` tinyint NOT NULL DEFAULT '0' COMMENT '首页推荐0否1是',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categorys_id_unique` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorys`
--

LOCK TABLES `categorys` WRITE;
/*!40000 ALTER TABLE `categorys` DISABLE KEYS */;
INSERT INTO `categorys` VALUES (1,'男装',0,5,0,0,NULL,'2020-04-24 09:42:53','2020-07-13 14:34:35'),(2,'外套',1,5,0,0,NULL,'2020-04-24 10:04:09','2021-01-13 20:26:23'),(3,'内搭',1,5,0,0,NULL,'2020-04-24 10:28:07','2020-07-13 14:35:27'),(4,'针织衫/毛衣',1,5,0,0,NULL,'2020-04-24 10:28:18','2020-07-13 14:35:40'),(5,'休闲裤/西裤',1,5,0,0,NULL,'2020-04-24 10:29:12','2020-07-13 14:35:52'),(6,'牛仔裤',1,5,0,0,NULL,'2020-04-24 10:29:28','2020-07-13 14:36:07'),(7,'换季清仓',1,5,0,0,NULL,'2020-04-24 10:29:37','2020-07-13 14:36:23'),(11,'夹克',2,5,0,0,NULL,'2020-07-13 14:36:53','2021-01-13 20:05:09'),(12,'风衣',2,5,0,1,NULL,'2020-07-13 14:37:12','2021-01-13 20:05:21'),(13,'呢大衣',2,5,0,0,NULL,'2020-07-13 14:37:37','2021-01-13 20:05:29'),(14,'西装',2,5,0,1,NULL,'2020-07-13 14:37:56','2020-07-13 14:37:56'),(15,'机能夹克',2,5,0,1,NULL,'2020-07-13 14:38:12','2020-07-13 14:38:12'),(16,'教练夹克',2,5,0,1,NULL,'2020-07-13 14:38:29','2020-07-13 14:38:29'),(17,'皮衣',2,5,0,1,NULL,'2020-07-13 14:38:52','2020-07-13 14:38:52'),(18,'卫衣',3,5,0,0,NULL,'2020-07-13 14:39:14','2020-07-13 14:39:14'),(19,'衬衫',3,5,0,0,NULL,'2020-07-13 14:39:27','2020-07-13 14:39:27'),(20,'T恤',3,5,0,0,NULL,'2020-07-13 14:39:45','2020-07-13 14:39:45'),(21,'polo衫',3,5,0,0,NULL,'2020-07-13 14:39:59','2020-07-13 14:39:59'),(22,'长袖衬衫',3,5,0,0,NULL,'2020-07-13 14:40:13','2020-07-13 14:40:13'),(23,'条纹衬衫',3,5,0,0,NULL,'2020-07-13 14:40:29','2020-07-13 14:40:29'),(24,'毛衣',4,5,0,0,NULL,'2020-07-13 14:40:49','2020-07-13 14:40:49'),(25,'针织衫',4,5,0,0,NULL,'2020-07-13 14:41:03','2020-07-13 14:41:03'),(26,'套头',4,5,0,0,NULL,'2020-07-13 14:41:18','2020-07-13 14:41:18'),(27,'开衫',4,5,0,0,NULL,'2020-07-13 14:41:31','2020-07-13 14:41:31'),(28,'羊毛衫',4,5,0,0,NULL,'2020-07-13 14:41:43','2020-07-13 14:41:43'),(29,'羊绒衫',4,5,0,0,NULL,'2020-07-13 14:42:00','2020-07-13 14:42:00'),(30,'休闲裤',5,5,0,0,NULL,'2020-07-13 14:42:21','2020-07-13 14:42:21'),(31,'短裤',5,5,0,0,NULL,'2020-07-13 14:42:38','2020-07-13 14:42:38'),(32,'运动裤',5,5,0,0,NULL,'2020-07-13 14:42:51','2020-07-13 14:42:51'),(33,'阔腿裤',5,5,0,0,NULL,'2020-07-13 14:43:05','2020-07-13 14:43:05'),(34,'西裤',5,5,0,0,NULL,'2020-07-13 14:43:18','2020-07-13 14:43:18'),(35,'宽松',5,5,0,0,NULL,'2020-07-13 14:43:31','2020-07-13 14:43:31'),(36,'九分',5,5,0,0,NULL,'2020-07-13 14:43:43','2020-07-13 14:43:43'),(37,'七分',5,5,0,0,NULL,'2020-07-13 14:44:03','2020-07-13 14:44:03'),(38,'工装',5,5,0,0,NULL,'2020-07-13 14:44:19','2020-07-13 14:44:19'),(39,'破洞',6,5,0,0,NULL,'2020-07-13 14:44:32','2020-07-13 14:44:32'),(40,'宽松',6,5,0,0,NULL,'2020-07-13 14:44:47','2020-07-13 14:44:47'),(41,'九分',6,5,0,0,NULL,'2020-07-13 14:45:01','2020-07-13 14:45:01'),(42,'直筒',6,5,0,0,NULL,'2020-07-13 14:45:14','2020-07-13 14:45:14'),(43,'修身',6,5,0,0,NULL,'2020-07-13 14:45:27','2020-07-13 14:45:27'),(44,'弹力',6,5,0,0,NULL,'2020-07-13 14:45:48','2020-07-13 14:45:48'),(45,'棉衣',7,5,0,0,NULL,'2020-07-13 14:46:02','2020-07-13 14:46:02'),(46,'羽绒服',7,5,0,0,NULL,'2020-07-13 14:46:14','2020-07-13 14:46:14'),(47,'马甲',7,5,0,0,NULL,'2020-07-13 14:46:26','2020-07-13 14:46:26'),(48,'高领毛衣',7,5,0,0,NULL,'2020-07-13 14:46:40','2020-07-13 14:46:40'),(49,'女装',0,5,0,0,NULL,'2020-07-13 15:30:38','2020-07-13 15:53:03'),(50,'连衣裙',49,5,0,0,NULL,'2020-07-13 15:32:44','2020-07-13 15:32:44'),(51,'毛衫/内搭',49,5,0,0,NULL,'2020-07-13 15:33:57','2020-07-13 15:33:57'),(52,'裤装',49,5,0,0,NULL,'2020-07-13 15:34:15','2020-07-13 15:34:15'),(53,'半身裙',50,5,0,0,NULL,'2020-07-13 15:35:35','2020-07-13 15:35:35'),(54,'针织裙',50,5,0,0,NULL,'2020-07-13 15:37:01','2020-07-13 15:37:01'),(55,'丝绒裙',50,5,0,0,NULL,'2020-07-13 15:37:21','2020-07-13 15:37:21'),(56,'毛衣',51,5,0,0,NULL,'2020-07-13 15:37:37','2020-07-13 15:37:37'),(57,'宽松毛衣',51,5,0,0,NULL,'2020-07-13 15:37:56','2020-07-13 15:37:56'),(58,'开衫',51,5,0,0,NULL,'2020-07-13 15:38:20','2020-07-13 15:38:20'),(59,'打底衫',51,5,0,0,NULL,'2020-07-13 15:38:33','2020-07-13 15:38:33'),(60,'长袖T恤',51,5,0,0,NULL,'2020-07-13 15:38:48','2020-07-13 15:38:48'),(61,'休闲裤',52,5,0,0,NULL,'2020-07-13 15:39:06','2020-07-13 15:39:06'),(62,'打底裤',52,5,0,0,NULL,'2020-07-13 15:39:18','2020-07-13 15:40:26'),(63,'牛仔裤',52,5,0,0,NULL,'2020-07-13 15:39:38','2020-07-13 15:39:38'),(64,'破洞牛仔',52,5,0,0,NULL,'2020-07-13 15:39:53','2020-07-13 15:39:53'),(65,'打底裙',50,5,0,0,NULL,'2020-07-13 15:43:15','2020-07-13 15:43:15'),(66,'复古裙',50,5,0,0,NULL,'2020-07-13 15:43:58','2020-07-13 15:43:58'),(67,'修身裙',50,5,0,0,NULL,'2020-07-13 15:44:35','2020-07-13 15:44:35'),(68,'女鞋',0,5,0,0,NULL,'2020-07-13 15:52:29','2020-07-13 16:16:39'),(69,'单鞋',68,5,0,0,NULL,'2020-07-13 15:53:35','2020-07-13 15:53:35'),(70,'帆布鞋',68,5,0,0,NULL,'2020-07-13 15:53:48','2020-07-13 15:53:48'),(71,'凉鞋/拖鞋',68,5,0,0,NULL,'2020-07-13 15:54:01','2020-07-13 15:54:01'),(72,'靴子',68,5,0,0,NULL,'2020-07-13 15:54:20','2020-07-13 15:54:20'),(73,'高跟',69,5,0,0,NULL,'2020-07-13 15:54:42','2020-07-13 15:54:42'),(75,'厚底',69,5,0,0,NULL,'2020-07-13 15:55:14','2020-07-13 15:55:14'),(76,'中跟',69,5,0,0,NULL,'2020-07-13 15:55:39','2020-07-13 15:55:39'),(77,'粗跟',69,5,0,0,NULL,'2020-07-13 15:55:53','2020-07-13 15:55:53'),(78,'坡跟',69,5,0,0,NULL,'2020-07-13 15:56:05','2020-07-13 15:56:05'),(81,'高帮',70,5,0,0,NULL,'2020-07-13 15:56:59','2020-07-13 15:56:59'),(82,'低帮',70,5,0,0,NULL,'2020-07-13 15:57:12','2020-07-13 15:57:12'),(83,'鱼嘴',71,5,0,0,NULL,'2020-07-13 15:57:24','2020-07-13 15:57:24'),(84,'粗根',71,5,0,0,NULL,'2020-07-13 15:57:35','2020-07-13 16:05:38'),(85,'夹趾',71,5,0,0,NULL,'2020-07-13 15:57:55','2020-07-13 15:57:55'),(86,'裸靴',72,5,0,0,NULL,'2020-07-13 15:58:11','2020-07-13 15:58:11'),(87,'短靴',72,5,0,0,NULL,'2020-07-13 15:58:22','2020-07-13 15:58:22'),(88,'中筒',72,5,0,0,NULL,'2020-07-13 15:58:34','2020-07-13 16:10:23'),(89,'雪地靴',72,5,0,0,NULL,'2020-07-13 15:58:47','2020-07-13 15:58:47');
/*!40000 ALTER TABLE `categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collects`
--

DROP TABLE IF EXISTS `collects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL DEFAULT '0' COMMENT '用户ID',
  `good_id` bigint NOT NULL DEFAULT '0' COMMENT '商品ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `collects_id_unique` (`id`),
  KEY `collects_user_id_index` (`user_id`),
  KEY `collects_good_id_index` (`good_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collects`
--

LOCK TABLES `collects` WRITE;
/*!40000 ALTER TABLE `collects` DISABLE KEYS */;
/*!40000 ALTER TABLE `collects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dhls`
--

DROP TABLE IF EXISTS `dhls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dhls` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '快递公司名称',
  `abbreviation` varchar(80) NOT NULL COMMENT '快递公司英文缩写',
  `state` tinyint NOT NULL DEFAULT '0' COMMENT '状态0显示1隐藏',
  `sort` int NOT NULL DEFAULT '5' COMMENT '排序',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dhls_id_unique` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='快递公司';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dhls`
--

LOCK TABLES `dhls` WRITE;
/*!40000 ALTER TABLE `dhls` DISABLE KEYS */;
INSERT INTO `dhls` VALUES (1,'EMS','ems',0,5,NULL,'2020-07-09 21:13:02','2020-07-12 14:37:15'),(2,'申通快递','STO',0,5,NULL,'2020-07-09 21:13:46','2020-07-09 21:13:46'),(3,'顺丰速运','SF',0,5,NULL,'2020-07-09 21:13:57','2020-07-09 21:13:57'),(4,'天天快递','HHTT',0,5,NULL,'2020-07-09 21:14:08','2020-07-09 21:14:08'),(5,'圆通速递','YTO',0,5,NULL,'2020-07-09 21:14:20','2020-07-09 21:14:20'),(6,'韵达速递','YD',0,5,NULL,'2020-07-09 21:14:33','2020-07-09 21:14:33'),(7,'中通速递','ZTO',0,5,NULL,'2020-07-09 21:14:45','2020-07-09 21:14:45');
/*!40000 ALTER TABLE `dhls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freight_ways`
--

DROP TABLE IF EXISTS `freight_ways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freight_ways` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `freight_id` bigint NOT NULL DEFAULT '0' COMMENT '运费模板ID',
  `first_piece` int NOT NULL DEFAULT '0' COMMENT '首件',
  `first_cost` int NOT NULL DEFAULT '0' COMMENT '首费',
  `add_piece` int NOT NULL DEFAULT '0' COMMENT '续件',
  `add_cost` int NOT NULL DEFAULT '0' COMMENT '续费',
  `location` text NOT NULL COMMENT '送货到json',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `freight_ways_id_unique` (`id`),
  KEY `freight_ways_freight_id_index` (`freight_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='运送方式';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freight_ways`
--

LOCK TABLES `freight_ways` WRITE;
/*!40000 ALTER TABLE `freight_ways` DISABLE KEYS */;
INSERT INTO `freight_ways` VALUES (1,2,2,500,3,100,'[\"12\",\"32\",\"33\",\"35\",\"36\",\"37\",\"41\",\"42\",\"43\",\"44\",\"46\",\"50\",\"51\",\"52\",\"53\",\"61\",\"62\",\"63\"]','2020-06-28 20:06:51','2020-06-28 20:27:04'),(2,2,2,200,2,200,'[\"13\",\"14\",\"21\",\"22\",\"23\",\"31\"]','2020-06-28 20:06:51','2020-06-28 20:27:04'),(3,2,2,500,1,500,'[\"11\",\"54\"]','2020-06-28 20:27:24','2020-07-03 13:11:07'),(7,4,1,100,1,100,'[\"12\",\"32\",\"33\",\"35\",\"36\",\"37\",\"41\",\"42\",\"43\",\"44\",\"46\",\"50\",\"51\",\"52\",\"53\",\"61\",\"62\",\"63\"]','2020-06-28 20:40:20','2020-06-28 20:40:20'),(8,4,2,200,2,200,'[\"13\",\"14\",\"21\",\"22\",\"23\",\"31\"]','2020-06-28 20:40:20','2020-06-28 20:40:20'),(9,4,4,500,5,500,'[\"11\"]','2020-06-28 20:40:20','2020-06-28 20:40:20');
/*!40000 ALTER TABLE `freight_ways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freights`
--

DROP TABLE IF EXISTS `freights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freights` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL COMMENT '模板名称',
  `location` text NOT NULL COMMENT '宝贝地址json',
  `pinkage` text NOT NULL COMMENT '包邮地区JSON',
  `valuation` tinyint NOT NULL COMMENT '计价方式',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `freights_id_unique` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='运费模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freights`
--

LOCK TABLES `freights` WRITE;
/*!40000 ALTER TABLE `freights` DISABLE KEYS */;
INSERT INTO `freights` VALUES (2,'默认模板1','[\"33\",\"3302\",\"330212\",\"330212005\"]','[\"15\",\"34\",\"45\",\"64\",\"65\"]',0,'2020-06-28 13:18:37','2020-07-03 13:11:07'),(4,'默认模板1副本','[\"33\",\"3302\",\"330212\",\"330212005\"]','[\"15\",\"34\",\"45\",\"54\",\"64\",\"65\"]',0,'2020-06-28 20:40:20','2020-06-28 20:40:20');
/*!40000 ALTER TABLE `freights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good_indent_commoditys`
--

DROP TABLE IF EXISTS `good_indent_commoditys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `good_indent_commoditys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `good_indent_id` int NOT NULL DEFAULT '0' COMMENT '订单ID',
  `good_id` int NOT NULL DEFAULT '0' COMMENT '商品ID',
  `good_sku_id` int NOT NULL DEFAULT '0' COMMENT '商品SKUID',
  `img` varchar(255) NOT NULL COMMENT '图片',
  `name` varchar(60) NOT NULL COMMENT '商品名称',
  `price` int NOT NULL DEFAULT '0' COMMENT '售价',
  `number` int NOT NULL DEFAULT '0' COMMENT '数量',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `good_indent_commoditys_id_unique` (`id`),
  KEY `good_indent_commoditys_good_indent_id_index` (`good_indent_id`),
  KEY `good_indent_commoditys_good_id_index` (`good_id`),
  KEY `good_indent_commoditys_good_sku_id_index` (`good_sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good_indent_commoditys`
--

LOCK TABLES `good_indent_commoditys` WRITE;
/*!40000 ALTER TABLE `good_indent_commoditys` DISABLE KEYS */;
/*!40000 ALTER TABLE `good_indent_commoditys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good_indents`
--

DROP TABLE IF EXISTS `good_indents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `good_indents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL DEFAULT '0' COMMENT '用户ID',
  `consignee` varchar(30) DEFAULT NULL COMMENT '收货人名称',
  `state` tinyint NOT NULL DEFAULT '1' COMMENT '状态：1待付款2待发货3待收货4待评价5已完成6已取消7已退款8退款处理中',
  `total` int NOT NULL DEFAULT '0' COMMENT '订单总金额',
  `identification` varchar(50) NOT NULL COMMENT '订单标识',
  `carriage` int NOT NULL DEFAULT '0' COMMENT '运费',
  `dhl_id` bigint NOT NULL DEFAULT '0' COMMENT '快递公司ID',
  `odd` varchar(255) DEFAULT NULL COMMENT '运单号',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `refund_money` int NOT NULL DEFAULT '0' COMMENT '退款金额',
  `refund_way` tinyint NOT NULL DEFAULT '0' COMMENT '退款方式0余额1原路退回',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `refund_reason` varchar(500) DEFAULT NULL COMMENT '退款原因',
  `pay_time` timestamp NULL DEFAULT NULL COMMENT '付款时间',
  `shipping_time` timestamp NULL DEFAULT NULL COMMENT '发货时间',
  `confirm_time` timestamp NULL DEFAULT NULL COMMENT '订单完成时间',
  `refund_time` timestamp NULL DEFAULT NULL COMMENT '退款时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `good_indents_id_unique` (`id`),
  KEY `good_indents_user_id_index` (`user_id`),
  KEY `good_indents_dhl_id_index` (`dhl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good_indents`
--

LOCK TABLES `good_indents` WRITE;
/*!40000 ALTER TABLE `good_indents` DISABLE KEYS */;
/*!40000 ALTER TABLE `good_indents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good_locations`
--

DROP TABLE IF EXISTS `good_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `good_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `good_indent_id` bigint NOT NULL DEFAULT '0' COMMENT '订单ID',
  `cellphone` varchar(11) NOT NULL COMMENT '手机',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `location` varchar(255) NOT NULL COMMENT '地址',
  `address` varchar(255) NOT NULL COMMENT '详情地址',
  `latitude` varchar(50) NOT NULL COMMENT '纬度',
  `longitude` varchar(50) NOT NULL COMMENT '经度',
  `house` varchar(100) NOT NULL COMMENT '门牌号',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `good_locations_id_unique` (`id`),
  KEY `good_locations_good_indent_id_index` (`good_indent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单配送地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good_locations`
--

LOCK TABLES `good_locations` WRITE;
/*!40000 ALTER TABLE `good_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `good_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good_skus`
--

DROP TABLE IF EXISTS `good_skus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `good_skus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `good_id` bigint NOT NULL DEFAULT '0' COMMENT '商品ID',
  `market_price` int NOT NULL DEFAULT '0' COMMENT '市场价',
  `cost_price` int NOT NULL DEFAULT '0' COMMENT '成本价',
  `price` int NOT NULL DEFAULT '0' COMMENT '销售价',
  `inventory` int NOT NULL DEFAULT '0' COMMENT '库存',
  `product_sku` text NOT NULL COMMENT 'json商品规格',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `good_skus_id_unique` (`id`),
  KEY `good_skus_good_id_index` (`good_id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8 COMMENT='商品SKU';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good_skus`
--

LOCK TABLES `good_skus` WRITE;
/*!40000 ALTER TABLE `good_skus` DISABLE KEYS */;
INSERT INTO `good_skus` VALUES (64,4,14900,14900,14900,99,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 19:04:17','2020-07-13 19:04:17'),(65,4,14900,14900,14900,99,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 19:04:17','2020-07-13 19:04:17'),(66,4,14900,14900,14900,0,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 19:04:17','2020-07-17 19:50:44'),(67,4,14900,14900,14900,99,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 19:04:17','2020-07-29 14:00:53'),(68,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"S\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(69,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"S\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u84dd\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(70,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"S\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7eff\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(71,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(72,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u84dd\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(73,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7eff\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(74,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(75,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u84dd\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(76,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7eff\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(77,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(78,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u84dd\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(79,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7eff\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(80,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(81,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u84dd\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(82,5,16900,16900,16900,88,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7eff\\u8272\"}]',NULL,'2020-07-13 19:40:33','2020-07-13 19:40:33'),(107,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u5361\\u5176\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(108,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7070\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(109,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(110,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u674f\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(111,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u5361\\u5176\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(112,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7070\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(113,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(114,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u674f\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(115,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u5361\\u5176\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(116,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7070\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(117,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(118,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u674f\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(119,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u5361\\u5176\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(120,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7070\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(121,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(122,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u674f\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(123,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"3XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u5361\\u5176\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(124,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"3XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7070\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(125,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"3XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(126,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"3XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u674f\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(127,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"4XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u5361\\u5176\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(128,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"4XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7070\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(129,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"4XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(130,6,13800,3000,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"4XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u674f\\u8272\"}]',NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(131,7,13900,3400,3800,55,'[{\"key\":\"\\u5c3a\\u5bf8\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u84dd\\u8272\"}]',NULL,'2020-07-13 20:25:17','2020-07-13 20:25:17'),(132,7,13900,3400,3800,55,'[{\"key\":\"\\u5c3a\\u5bf8\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 20:25:17','2020-07-13 20:25:17'),(133,7,13900,3400,3800,55,'[{\"key\":\"\\u5c3a\\u5bf8\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u84dd\\u8272\"}]',NULL,'2020-07-13 20:25:17','2020-07-13 20:25:17'),(134,7,13900,3400,3800,55,'[{\"key\":\"\\u5c3a\\u5bf8\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 20:25:17','2020-07-13 20:25:17'),(135,7,13900,3400,3800,55,'[{\"key\":\"\\u5c3a\\u5bf8\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u84dd\\u8272\"}]',NULL,'2020-07-13 20:25:17','2020-07-13 20:25:17'),(136,7,13900,3400,3800,55,'[{\"key\":\"\\u5c3a\\u5bf8\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 20:25:17','2020-07-13 20:25:17'),(137,7,13900,3400,3800,55,'[{\"key\":\"\\u5c3a\\u5bf8\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u84dd\\u8272\"}]',NULL,'2020-07-13 20:25:17','2020-07-13 20:25:17'),(138,7,13900,3400,3800,55,'[{\"key\":\"\\u5c3a\\u5bf8\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-13 20:25:17','2020-07-13 20:25:17'),(139,8,30200,3200,3900,68,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7ea2\"}]',NULL,'2020-07-13 20:28:33','2020-07-13 20:28:33'),(140,8,30200,3200,3900,68,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u84dd\"}]',NULL,'2020-07-13 20:28:33','2020-07-13 20:28:33'),(141,8,30200,3200,3900,66,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7ea2\"}]',NULL,'2020-07-13 20:28:33','2020-07-28 00:32:43'),(142,8,30200,3200,3900,67,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u84dd\"}]',NULL,'2020-07-13 20:28:33','2020-07-19 18:45:37'),(143,8,30200,3200,3900,68,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7ea2\"}]',NULL,'2020-07-13 20:28:33','2020-07-13 20:28:33'),(144,8,30200,3200,3900,67,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u84dd\"}]',NULL,'2020-07-13 20:28:33','2020-07-23 11:17:20'),(145,8,30200,3200,3900,68,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u7ea2\"}]',NULL,'2020-07-13 20:28:33','2020-07-13 20:28:33'),(146,8,30200,3200,3900,67,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u84dd\"}]',NULL,'2020-07-13 20:28:33','2020-07-19 18:45:37'),(147,9,15500,3500,3900,45,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u9ed1\"}]',NULL,'2020-07-13 20:33:52','2020-07-13 20:33:52'),(148,9,15500,3500,3900,45,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\"}]',NULL,'2020-07-13 20:33:52','2020-07-13 20:33:52'),(149,9,15500,3500,3900,45,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u9ed1\"}]',NULL,'2020-07-13 20:33:52','2020-07-13 20:33:52'),(150,9,15500,3500,3900,45,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\"}]',NULL,'2020-07-13 20:33:52','2020-07-13 20:33:52'),(151,9,15500,3500,3900,45,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u9ed1\"}]',NULL,'2020-07-13 20:33:52','2020-07-13 20:33:52'),(152,9,15500,3500,3900,45,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\"}]',NULL,'2020-07-13 20:33:52','2020-07-13 20:33:52'),(153,9,15500,3500,3900,45,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u9ed1\"}]',NULL,'2020-07-13 20:33:52','2020-07-13 20:33:52'),(154,9,15500,3500,3900,45,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\"}]',NULL,'2020-07-13 20:33:52','2020-07-13 20:33:52'),(159,10,13800,3400,3900,75,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u674f\\u8272\"}]',NULL,'2020-07-13 20:36:51','2020-07-19 18:45:37'),(160,10,13800,3400,3900,75,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"L\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u674f\\u8272\"}]',NULL,'2020-07-13 20:36:51','2020-07-25 06:53:45'),(161,10,13800,3400,3900,76,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u674f\\u8272\"}]',NULL,'2020-07-13 20:36:51','2020-07-13 20:36:51'),(162,10,13800,3400,3900,75,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"2XL\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u674f\\u8272\"}]',NULL,'2020-07-13 20:36:51','2020-07-19 19:01:03'),(166,11,59800,8000,10800,99,'[{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u8c79\\u7eb9\"},{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"}]',NULL,'2020-07-30 08:23:16','2020-07-30 08:23:16'),(167,12,36900,4800,21900,99,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-30 11:11:00','2020-07-30 11:11:00'),(168,13,7700,2300,3900,99,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\\u5206\\u7c7b\",\"value\":\"\\u9ed1\\u8272\"}]',NULL,'2020-07-30 11:17:39','2020-07-30 11:17:39'),(169,14,78900,13400,38800,99,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u9ed1\\u8272\"}]',NULL,'2020-07-30 11:20:29','2020-07-30 11:20:29'),(170,15,9900,1900,2900,99,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-30 11:25:25','2020-07-30 11:25:25'),(171,16,6700,500,1200,99,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"M\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-30 11:28:00','2020-07-30 11:28:00'),(172,17,19900,5900,15900,99,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"24\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-30 11:31:07','2020-07-30 11:31:07'),(173,18,19900,12700,14900,99,'[{\"key\":\"\\u5c3a\\u5bf8\",\"value\":\"155\\/58A\\/XS\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-30 11:33:33','2020-07-30 11:33:33'),(174,19,62800,32400,43900,99,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"33\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-30 11:36:03','2020-07-30 11:36:03'),(175,20,69600,23400,34800,99,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"33\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-07-30 11:38:38','2020-07-30 11:38:38'),(177,21,57600,12800,28800,99,'[{\"key\":\"\\u5c3a\\u7801\",\"value\":\"33\"},{\"key\":\"\\u989c\\u8272\",\"value\":\"\\u767d\\u8272\"}]',NULL,'2020-08-02 01:12:20','2020-08-02 01:12:20');
/*!40000 ALTER TABLE `good_skus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good_specifications`
--

DROP TABLE IF EXISTS `good_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `good_specifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `good_id` bigint NOT NULL DEFAULT '0' COMMENT '商品ID',
  `specification_id` bigint NOT NULL DEFAULT '0' COMMENT '规格ID',
  `data` text COMMENT '值JSON',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `good_specifications_id_unique` (`id`),
  KEY `good_specifications_good_id_index` (`good_id`),
  KEY `good_specifications_specification_id_index` (`specification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='商品规格表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good_specifications`
--

LOCK TABLES `good_specifications` WRITE;
/*!40000 ALTER TABLE `good_specifications` DISABLE KEYS */;
INSERT INTO `good_specifications` VALUES (8,4,1,NULL,'2020-04-24 12:13:22','2020-04-24 12:13:22'),(9,4,2,NULL,'2020-04-24 12:13:22','2020-04-24 12:13:22'),(10,4,3,NULL,'2020-04-24 12:13:22','2020-04-24 12:13:22'),(11,4,4,NULL,'2020-04-24 12:13:22','2020-04-24 12:13:22'),(12,4,5,NULL,'2020-04-24 12:13:22','2020-04-24 12:13:22'),(13,4,6,NULL,'2020-04-24 12:13:22','2020-04-24 12:13:22'),(14,4,7,NULL,'2020-04-24 12:13:22','2020-04-24 12:13:22'),(15,5,1,NULL,'2020-04-24 12:18:09','2020-04-24 12:18:09'),(16,5,2,NULL,'2020-04-24 12:18:09','2020-04-24 12:18:09'),(17,5,3,NULL,'2020-04-24 12:18:09','2020-04-24 12:18:09'),(18,5,4,NULL,'2020-04-24 12:18:09','2020-04-24 12:18:09'),(19,5,5,NULL,'2020-04-24 12:18:09','2020-04-24 12:18:09'),(20,5,6,NULL,'2020-04-24 12:18:09','2020-04-24 12:18:09'),(21,5,7,NULL,'2020-04-24 12:18:09','2020-04-24 12:18:09'),(22,10,1,NULL,'2020-07-01 14:14:43','2020-07-01 14:14:43'),(23,10,2,NULL,'2020-07-01 14:14:43','2020-07-01 14:14:43'),(24,10,3,NULL,'2020-07-01 14:14:43','2020-07-01 14:14:43'),(25,10,4,NULL,'2020-07-01 14:14:43','2020-07-01 14:14:43'),(26,10,5,NULL,'2020-07-01 14:14:43','2020-07-01 14:14:43'),(27,10,6,NULL,'2020-07-01 14:14:43','2020-07-01 14:14:43'),(28,10,7,NULL,'2020-07-01 14:14:43','2020-07-01 14:14:43'),(29,6,1,NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(30,6,2,NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(31,6,3,NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(32,6,4,NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(33,6,5,NULL,'2020-07-13 20:21:58','2020-07-13 20:21:58'),(34,7,1,NULL,'2020-07-13 20:25:17','2020-07-13 20:25:17'),(35,7,2,NULL,'2020-07-13 20:25:17','2020-07-13 20:25:17'),(36,7,3,NULL,'2020-07-13 20:25:17','2020-07-13 20:25:17'),(37,7,4,NULL,'2020-07-13 20:25:17','2020-07-13 20:25:17'),(38,7,5,NULL,'2020-07-13 20:25:17','2020-07-13 20:25:17'),(39,8,1,NULL,'2020-07-13 20:28:33','2020-07-13 20:28:33'),(40,8,2,NULL,'2020-07-13 20:28:33','2020-07-13 20:28:33'),(41,8,3,NULL,'2020-07-13 20:28:33','2020-07-13 20:28:33'),(42,8,4,NULL,'2020-07-13 20:28:33','2020-07-13 20:28:33'),(43,8,5,NULL,'2020-07-13 20:28:33','2020-07-13 20:28:33'),(44,9,1,NULL,'2020-07-13 20:33:52','2020-07-13 20:33:52'),(45,9,2,NULL,'2020-07-13 20:33:52','2020-07-13 20:33:52'),(46,9,3,NULL,'2020-07-13 20:33:52','2020-07-13 20:33:52'),(47,9,4,NULL,'2020-07-13 20:33:52','2020-07-13 20:33:52'),(48,9,5,NULL,'2020-07-13 20:33:52','2020-07-13 20:33:52');
/*!40000 ALTER TABLE `good_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `identification` varchar(30) NOT NULL COMMENT '标识',
  `name` varchar(60) NOT NULL COMMENT '商品名称',
  `category_id` bigint NOT NULL DEFAULT '0' COMMENT '分类ID',
  `number` varchar(50) NOT NULL COMMENT '货号',
  `freight_id` bigint NOT NULL DEFAULT '0' COMMENT '运费模板ID',
  `brand_id` bigint NOT NULL DEFAULT '0' COMMENT '品牌ID',
  `inventory` int NOT NULL DEFAULT '0' COMMENT '库存',
  `market_price` int NOT NULL DEFAULT '0' COMMENT '市场价',
  `cost_price` int NOT NULL DEFAULT '0' COMMENT '成本价',
  `price` int NOT NULL DEFAULT '0' COMMENT '销售价',
  `sales` int NOT NULL DEFAULT '0' COMMENT '销量',
  `order_price` int NOT NULL DEFAULT '0' COMMENT '订单价',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `short_description` varchar(160) DEFAULT NULL COMMENT '短描述',
  `details` text COMMENT '详情',
  `is_show` tinyint NOT NULL DEFAULT '0' COMMENT '是否上架0暂不售卖，放入仓库1立即上架售卖2定时上架',
  `is_recommend` tinyint NOT NULL DEFAULT '0' COMMENT '是否推荐0否1是',
  `is_new` tinyint NOT NULL DEFAULT '0' COMMENT '是否新品0否1是',
  `is_hot` tinyint NOT NULL DEFAULT '0' COMMENT '是否热销0否1是',
  `is_inventory` tinyint NOT NULL DEFAULT '0' COMMENT '减库存方式：0拍下减库存1付款减库存',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `time` timestamp NULL DEFAULT NULL COMMENT '上架时间',
  `timing` timestamp NULL DEFAULT NULL COMMENT '定时上架时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `goods_id_unique` (`id`),
  KEY `goods_category_id_index` (`category_id`),
  KEY `goods_freight_id_index` (`freight_id`),
  KEY `goods_brand_id_index` (`brand_id`),
  FULLTEXT KEY `full_text` (`name`,`keywords`,`number`) /*!50100 WITH PARSER `ngram` */ 
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (4,'1587701602735263251','PUMA彪马运动休闲串标织带薄款防晒衣外套女夹克男拉链情侣款潮牌',11,'TB001',2,2,0,0,0,0,0,14900,NULL,NULL,'<div id=\"J_DivItemDesc\" class=\"content\"><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/15647940/O1CN01R5pKEs28WZMaD20rA_!!15647940.png\" data-spm-anchor-id=\"2013.1.0.i3.f6d15d25owcigM\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/15647940/O1CN01E1M7qF28WZMXOtuBc_!!15647940.jpg\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/15647940/O1CN01hcRrcO28WZMVUy1RD_!!15647940.jpg\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/15647940/O1CN01p2NyJU28WZMXOtq2f_!!15647940.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/15647940/O1CN01tWkJLY28WZMVUylB2_!!15647940.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/15647940/O1CN01oGYQEg28WZMVtE6VT_!!15647940.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/15647940/O1CN01R7mCiq28WZMVUxt6z_!!15647940.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/15647940/O1CN01hvSoyP28WZMVUyQOe_!!15647940.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/15647940/O1CN01MY394b28WZMXOtyMy_!!15647940.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/15647940/O1CN01WI7tRd28WZMVtFZyr_!!15647940.jpg\" /></div>',1,1,0,0,0,NULL,5,'2020-07-13 19:04:17',NULL,'2020-04-24 12:13:22','2020-07-13 19:04:17'),(5,'1587701889519876406','阿迪达斯外套男薄款夏季三叶草女潮流情侣运动休闲连帽防风服夹克',11,'TB002',2,6,0,0,0,0,0,16900,NULL,NULL,'<div id=\"J_DivItemDesc\" class=\"content\">\n<p><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/642956265/O1CN012OXdRe1w9PxVuSzGe_!!642956265.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"2013.1.0.i4.26d167af3Pn3G6\" /></p>\n</div>',1,0,0,0,0,NULL,5,'2020-07-13 19:40:32',NULL,'2020-04-24 12:18:09','2020-07-13 19:40:33'),(6,'1587702774641928215','短袖男士t恤韩版修身潮流夏装体恤半袖夏季新款打底衫帅气上衣T恤',20,'TB003',4,7,0,0,0,0,0,3900,NULL,NULL,'<div id=\"J_DivItemDesc\" class=\"content\">\n<p><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2515144484/O1CN01ecfl6m1iziTfwgnJo_!!2515144484.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"2013.1.0.i1.ec3a7b91uiswEm\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2515144484/O1CN01wjbXmJ1iziSxCsLUP_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2515144484/O1CN01j55OWx1iziSyMqiu4_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2515144484/O1CN01XguoKl1iziSwxfVdI_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2515144484/O1CN01PDDZei1iziSzV8l9F_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2515144484/O1CN01yPpaAR1iziSwxg2r1_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2515144484/O1CN01D8w50m1iziSyMsSyF_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2515144484/O1CN01G3Xwo01iziSxZUJy1_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2515144484/O1CN01ZvYfSq1iziSwxgqkO_!!2515144484.png\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2515144484/O1CN01cFqL7p1iziSxZUSJn_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2515144484/O1CN01hMda6x1iziSqZn1id_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2515144484/O1CN016ObtyT1iziSvnjMCp_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2515144484/O1CN01EtHiFW1iziSv2Wd1A_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2515144484/O1CN01ggXlMs1iziSwBNJ4h_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2515144484/O1CN01L4oT7T1iziSxVhxBn_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2515144484/O1CN0130eB7D1iziSyLZUmW_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2515144484/O1CN01TphMRB1iziSyzWhY5_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2515144484/O1CN01yIOuPn1iziT04NzVg_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2515144484/O1CN01YCe4sx1iziSxCpb1I_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2515144484/O1CN01HkEYKf1iziSv2UYAv_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2515144484/O1CN01iho5VE1iziSxVjYvl_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /></p>\n</div>',1,0,0,0,0,NULL,5,'2020-07-13 20:21:58',NULL,'2020-04-24 12:32:54','2020-07-13 20:21:58'),(7,'1587703066458544171','夏季男士短袖t恤翻领polo衫半袖体恤韩版潮流帅气夏天男装上衣服',20,'TB006',2,5,0,0,0,0,0,3800,NULL,NULL,'<div id=\"J_DivItemDesc\" class=\"content\">\n<p><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/3245818434/O1CN01UMf7Z32CAotRCwe2p_!!3245818434.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"2013.1.0.i2.319a36e2qgpXIM\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/3245818434/O1CN01bqnhnQ2CAovICVvbG_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/3245818434/O1CN01ks4vwh2CAovG3tg94_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/3245818434/O1CN011cGoou2CAovIpNWLn_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/3245818434/O1CN018mDjPg2CAovHSJ5fZ_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/3245818434/O1CN01aDdR252CAovICW3vT_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/3245818434/O1CN01NUqqCI2CAovICCzNR_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/3245818434/O1CN01a2uYZm2CAovILJG8G_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/3245818434/O1CN01Ruv3wX2CAovICVSX9_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/3245818434/O1CN01ODZi4J2CAovJtcH8M_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/3245818434/O1CN01sAk7um2CAovILJjDX_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/3245818434/O1CN012SepBE2CAovIpOjBO_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/3245818434/O1CN01v3Vr9i2CAovGrAluC_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/3245818434/O1CN01zbbjCh2CAovG3sjw3_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/3245818434/O1CN014qFxJ12CAovJtdDN8_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/3245818434/O1CN01OwoRBD2CAovJtcHA7_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/3245818434/O1CN01668FRG2CAovJZTRBG_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/3245818434/O1CN015roJjd2CAovHLxgAI_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/3245818434/O1CN01QzZC1Y2CAovICV7lx_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/3245818434/O1CN01e0yNBk2CAovEwT9Gt_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/3245818434/O1CN01bMjcNB2CAovJZTyS6_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/3245818434/O1CN01dJgDxt2CAovEwT56k_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/3245818434/O1CN01Z4FDwp2CAovICBVu5_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/3245818434/O1CN01ivo6d82CAovICD7gm_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/3245818434/O1CN01pMGRVd2CAovJtaSrx_!!3245818434.jpg\" width=\"750\" align=\"absmiddle\" /></p>\n</div>',1,0,0,0,0,NULL,5,'2020-07-13 20:25:17',NULL,'2020-04-24 12:37:46','2020-07-13 20:25:17'),(8,'1587703339953748526','2019夏季新款男士短袖t恤韩版打底衫条纹半袖体恤潮流男装上衣服',20,'TB0056',2,7,0,0,0,0,0,3900,NULL,NULL,'<div id=\"J_DivItemDesc\" class=\"content\">\n<p><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2588576099/O1CN01AQcbfm1uvO7gXfUZS_!!2588576099.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"2013.1.0.i1.85306369vdIQgl\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2588576099/O1CN01ESkxcq1uvO6pQvWTL_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2588576099/O1CN01AmoxN31uvO6qlxOwm_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2588576099/O1CN01wh4ZKV1uvO6s9Gflc_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2588576099/O1CN01ZJra5d1uvO6qlvakY_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2588576099/O1CN01BZKrLJ1uvO6oGZalF_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2588576099/O1CN01D3ukvM1uvO6pvhh2Y_!!2588576099.png\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2588576099/O1CN01hl1Z8T1uvO6s9HTf7_!!2588576099.png\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2588576099/O1CN01621Kl01uvO6pQtVki_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2588576099/O1CN01jeiy9I1uvO6rtfjYF_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2588576099/O1CN01ITG6M81uvO6pQuBKz_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2588576099/O1CN010QsxbA1uvO6nWEAcg_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2588576099/O1CN01LQy89X1uvO6nWDV23_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2588576099/O1CN01fwu7wb1uvO6pvjIm4_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2588576099/O1CN01KLyhRb1uvO6rP90Ym_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2588576099/O1CN01BcPKDN1uvO6qmD3UM_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2588576099/O1CN01ffnMZm1uvO6sTMUOs_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2588576099/O1CN013x6xvT1uvO6qlwSmV_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2588576099/O1CN01AX6NGu1uvO6s9HD14_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2588576099/O1CN01GTsibA1uvO6rP9wmh_!!2588576099.jpg\" width=\"750\" align=\"absmiddle\" /></p>\n</div>',1,0,0,0,0,NULL,5,'2020-07-13 20:28:33',NULL,'2020-04-24 12:42:19','2020-07-13 20:28:33'),(9,'1587704461360194193','短袖T恤男纯棉打底衫创意印花圆领春夏衣服潮流韩版修身半袖上衣',20,'TB0032',2,3,0,0,0,0,0,3900,NULL,NULL,'<div id=\"J_DivItemDesc\" class=\"content\">\n<p><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/256185134/O1CN013KfHKd1nnPwIbZ9cZ_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" data-spm-anchor-id=\"2013.1.0.i1.30f9a2e6Y8xGvx\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/256185134/O1CN01TLOwX41nnPwK9UGbh_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/256185134/O1CN01zxO7Zm1nnPwHPYIlR_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/256185134/O1CN01DFk8Y31nnPwIbMKTf_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/256185134/O1CN019Z1gVM1nnPwHMFOdB_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/256185134/O1CN01cQiw8A1nnPwKdUxsx_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/256185134/O1CN01Wl6kU01nnPwJH6Icp_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/256185134/O1CN01i6eWrc1nnPwJH72La_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/256185134/O1CN01bkbcBP1nnPwIbXHDd_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/256185134/O1CN01BdOwDY1nnPwHPXQhl_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/256185134/O1CN019oqq3t1nnPwKdScMn_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/256185134/O1CN01zlt5iL1nnPwIbWsHr_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/256185134/O1CN01xaRNzd1nnPwIbXPXK_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/256185134/O1CN01XGgAMo1nnPwEVKZOu_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/256185134/O1CN01HEZTm51nnPwH6vvLY_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/256185134/O1CN01fZjlB81nnPwIbLnE7_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/256185134/O1CN018eAdLE1nnPwIHBoUN_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/256185134/O1CN01EubMZS1nnPwKdScMZ_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/256185134/O1CN01ytQaZm1nnPwK9SzcW_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/256185134/O1CN01u9lypY1nnPwEVLygB_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/256185134/O1CN01CNLOwA1nnPwJyRlHk_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/256185134/O1CN01hiAALS1nnPwIHBc1P_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/256185134/O1CN010I88JR1nnPwJySAEM_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/256185134/O1CN01Iy0Jd01nnPw9xWAlZ_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/256185134/O1CN01VhRyWo1nnPwFP996W_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/256185134/O1CN01vDGS601nnPwFP7sAn_!!256185134.jpg\" width=\"750\" align=\"absmiddle\" /></p>\n<p>&nbsp;</p>\n</div>',1,0,0,0,0,NULL,5,'2020-07-13 20:33:52',NULL,'2020-04-24 13:01:01','2020-07-13 20:33:52'),(10,'1590120452741499199','2019夏季男士短袖T恤韩版潮牌青年体恤衫帅气学生打底衫夏装上衣',20,'22',2,5,0,0,0,0,0,3900,NULL,NULL,'<div id=\"J_DivItemDesc\" class=\"content\">\n<p><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2515144484/O1CN01ecfl6m1iziTfwgnJo_!!2515144484.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"2013.1.0.i1.171a66e6EKoodN\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2515144484/O1CN01JZ06Jt1iziSz03nSG_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2515144484/O1CN01i1WiCH1iziSzlKtM0_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2515144484/O1CN013Eoza21iziSxZwqyx_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2515144484/O1CN01mMWip01iziSwyAeq6_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2515144484/O1CN01dZMzVr1iziSxDNlbr_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2515144484/O1CN01VXc61k1iziSxZweWc_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2515144484/O1CN012MfrK81iziSvoDALV_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2515144484/O1CN01kdLsDr1iziSxay4zX_!!2515144484.png\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2515144484/O1CN01GidjJs1iziSzVgnOj_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2515144484/O1CN01O6OWYs1iziSyNKrjc_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2515144484/O1CN01DpIWrl1iziT04wEFc_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2515144484/O1CN01J7AvIJ1iziSz02FpS_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2515144484/O1CN01sP61OG1iziSz02O7j_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2515144484/O1CN01rChUhf1iziSwyBOXX_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2515144484/O1CN01NKV8UJ1iziSxZviPA_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2515144484/O1CN0167kXwP1iziSwBqVcf_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2515144484/O1CN01sX90Em1iziSqaH2LE_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2515144484/O1CN01BwloHH1iziSvoE2O6_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/2515144484/O1CN01sF8Zim1iziSvoGWFP_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2515144484/O1CN011tvnmD1iziSwBnh09_!!2515144484.jpg\" width=\"750\" align=\"absmiddle\" /></p>\n</div>',1,0,0,0,0,NULL,5,'2020-07-13 20:36:51',NULL,'2020-05-22 12:07:32','2020-07-13 20:36:51'),(11,'1596096852390113985','韩都衣舍2020夏季新款韩版女装a字裙中长款豹纹半身裙OR9001璎',53,'tb003100',2,0,0,0,0,0,0,10800,NULL,NULL,'<div class=\"content ke-post\" style=\"height: auto;\"><img id=\"desc-module-1\" class=\"desc_anchor img-ks-lazyload\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\" />\n<p><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/263817957/O1CN01DmGGFO28eM5sqBT5B_!!263817957.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"a220o.1000855.0.i2.666c6586ZzcKrX\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/263817957/O1CN01U8LxoY28eM5mAYlBd_!!263817957.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/263817957/O1CN01VXZ3lP28eM5lmTYMl_!!263817957.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/263817957/O1CN014Exmt028eM5rCJJyW_!!263817957.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/263817957/O1CN01h2RmAx28eM5pYQu2z_!!263817957.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/263817957/O1CN01Pm6qFk28eM5sXiYY2_!!263817957.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/263817957/O1CN019NPmpY28eM5o75Yii_!!263817957.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/263817957/O1CN01ProOb528eM5nf6HEX_!!263817957.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/263817957/O1CN01UjelwT28eM5g7p5Sa_!!263817957.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/263817957/O1CN01cgacBP28eM5rCK3j3_!!263817957.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/263817957/O1CN01B5XyML28eM5qO666z_!!263817957.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/263817957/O1CN019hTels28eM0L8jol7_!!263817957.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/263817957/O1CN01tq834228eM0OcLBH5_!!263817957.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/263817957/O1CN0111cyJY28eM0Pw00GV_!!263817957.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/263817957/O1CN01hjdSSo28eM0OUTuzw_!!263817957.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/263817957/O1CN01TwHYEL28eM0QF4qhD_!!263817957.jpg\" align=\"absmiddle\" /></p>\n</div>',1,0,0,0,1,NULL,5,'2020-07-30 08:23:16',NULL,'2020-07-30 08:14:12','2020-07-30 08:23:16'),(12,'1596107460419402664','【山海经联名】乐町半身裙2020夏季新款女装盘扣百褶半身裙',53,'tb000312',2,0,0,0,0,0,0,21900,NULL,NULL,'<div class=\"content ke-post\" style=\"height: auto;\"><img id=\"desc-module-1\" class=\"desc_anchor img-ks-lazyload\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\" />\n<div style=\"background-color: #ffffff; margin: 0 auto; overflow: hidden; color: #555555; width: 750.0px; font-family: microsoft yahei;\" data-title=\"产品图\" data-id=\"c107a048-c86c-4373-9409-8235933e0588\">\n<div>\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/513051429/O1CN01enMb4E1MQWaihQvvz-513051429.jpg\" /></div>\n<div class=\"section screenshot _m\" style=\"background-color: #ffffff; overflow: hidden; color: #555555; width: 750.0px; position: static;\">\n<div><img id=\"yaImg1_1\" class=\"img-ks-lazyload\" style=\"padding: 0; overflow: hidden; display: block;\" src=\"https://img.alicdn.com/imgextra/i4/513051429/O1CN01AVwqV31MQWaekSUnJ-513051429.gif\" /></div>\n</div>\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/513051429/O1CN01m7z5Vl1MQWahoJNfB-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/513051429/O1CN01gPtQkw1MQWahoJJUn-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/513051429/O1CN01RcHZPP1MQWalac9H5-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/513051429/O1CN01OOAkRC1MQWafjVGSW-513051429.jpg\" usemap=\"#yaImg1_4_map\" />\n<div style=\"float: left; margin-top: -2435.0px; margin-left: 0.0px; opacity: 0.99;\"><a style=\"width: 200.0px; height: 200.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=623671059890\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -2532.0px; margin-left: 13.0px; opacity: 0.99;\"><a style=\"width: 145.0px; height: 97.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=623393234560\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -1271.0px; margin-left: 396.0px; opacity: 0.99;\"><a style=\"width: 137.0px; height: 77.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=623393234560\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -1215.0px; margin-left: 569.0px; opacity: 0.99;\"><a style=\"width: 160.0px; height: 161.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=623393334442\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -2447.0px; margin-left: 460.0px; opacity: 0.99;\"><a style=\"width: 81.0px; height: 108.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=622809144636\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -2540.0px; margin-left: 569.0px; opacity: 0.99;\"><a style=\"width: 129.0px; height: 72.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=622809144636\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -1793.0px; margin-left: 383.0px; opacity: 0.99;\"><a style=\"width: 176.0px; height: 68.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=622809144636\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -1181.0px; margin-left: 315.0px; opacity: 0.99;\"><a style=\"width: 76.0px; height: 112.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=622809144636\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -1791.0px; margin-left: 267.0px; opacity: 0.99;\"><a style=\"width: 93.0px; height: 89.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=622809308444\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -1200.0px; margin-left: 0.0px; opacity: 0.99;\"><a style=\"width: 135.0px; height: 159.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=622809308444\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -1275.0px; margin-left: 48.0px; opacity: 0.99;\"><a style=\"width: 147.0px; height: 81.0px; display: block;\" target=\"_blank\">11111</a></div>\n<div style=\"float: left; margin-top: -1165.0px; margin-left: 231.0px; opacity: 0.99;\"><a style=\"width: 88.0px; height: 172.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=623393210657\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -1705.0px; margin-left: 389.0px; opacity: 0.99;\"><a style=\"width: 141.0px; height: 188.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=622809524158\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -1879.0px; margin-left: 580.0px; opacity: 0.99;\"><a style=\"width: 169.0px; height: 200.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=623671027962\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -1912.0px; margin-left: 28.0px; opacity: 0.99;\"><a style=\"width: 200.0px; height: 200.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=622809584102\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -2417.0px; margin-left: 209.0px; opacity: 0.99;\"><a style=\"width: 148.0px; height: 136.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=622809360343\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -2339.0px; margin-left: 381.0px; opacity: 0.99;\"><a style=\"width: 157.0px; height: 177.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=622617267702\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -2461.0px; margin-left: 557.0px; opacity: 0.99;\"><a style=\"width: 192.0px; height: 200.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=622809496181\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -1169.0px; margin-left: 135.0px; opacity: 0.99;\"><a style=\"width: 72.0px; height: 176.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=623117313606\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -1193.0px; margin-left: 396.0px; opacity: 0.99;\"><a style=\"width: 139.0px; height: 196.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=623117313606\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -1695.0px; margin-left: 244.0px; opacity: 0.99;\"><a style=\"width: 109.0px; height: 128.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=623117313606\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n</div>\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/513051429/O1CN017oXoUt1MQWan0myOW-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/513051429/O1CN01tz0o3D1MQWaknPgu4-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/513051429/O1CN01JDfh3i1MQWaiq7pHA-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/513051429/O1CN01tsk77N1MQWakSVf0t-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" usemap=\"#yaImg1_9_map\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/513051429/O1CN01jLDrDs1MQWaiCksT8-513051429.jpg\" />\n<div style=\"float: left; margin-top: -530.0px; margin-left: 473.0px; opacity: 0.99;\"><a style=\"width: 235.0px; height: 311.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=622809144636\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -841.0px; margin-left: 491.0px; opacity: 0.99;\"><a style=\"width: 225.0px; height: 289.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=622809496181\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n</div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/513051429/O1CN01EgovgW1MQWaknQA17-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/513051429/O1CN015e7pi81MQWaiq7tRK-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/513051429/O1CN01qDAmoJ1MQWalabXrF-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/513051429/O1CN01a3mVqB1MQWakSY0Tz-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" usemap=\"#yaImg1_12111_map\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/513051429/O1CN01T5LVfV1MQWaihS0PE-513051429.jpg\" />\n<div style=\"float: left; margin-top: -1112.0px; margin-left: 36.0px; opacity: 0.99;\"><a style=\"width: 688.0px; height: 1073.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=623113289923\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n</div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/513051429/O1CN01y3EkwP1MQWaiCmYQK-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/513051429/O1CN01GwcDwH1MQWakSW86P-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" usemap=\"#yaImg1_121_map\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/513051429/O1CN01ifFblz1MQWamEfaKD-513051429.jpg\" />\n<div style=\"float: left; margin-top: -1046.0px; margin-left: 39.0px; opacity: 0.99;\"><a style=\"width: 685.0px; height: 984.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=623393234560\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n</div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/513051429/O1CN01n0EtRT1MQWaekU6Za-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/513051429/O1CN01wkyhdf1MQWahoHltZ-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/513051429/O1CN01qkvCLS1MQWamEdZeQ-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/513051429/O1CN01GpI7vD1MQWaiqA6ch-513051429.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/513051429/O1CN01RG1ivo1MQWafjT7R8-513051429.jpg\" /></div>\n</div>\n</div>\n</div>',1,1,0,0,0,NULL,5,'2020-07-30 11:11:00',NULL,'2020-07-30 11:11:00','2020-07-30 11:11:00'),(13,'1596107859016983002','吊带裙女宽松内搭衬裙夏季大码打底裙内穿中长款莫代尔背心裙打底',65,'tb000212',2,0,0,0,0,0,0,3900,NULL,NULL,'<div class=\"content ke-post\" style=\"height: auto;\">\n<p><span style=\"font-size: 36.0px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>&nbsp;&nbsp;注意事项</strong></span></p>\n<p><strong><span style=\"font-size: 24.0px;\"><span style=\"color: #3d85c6;\">这款吊带是分别三个长度（86,100,112）CM，面料采用优质的兰金莫代尔。</span>主要特点：<span style=\"color: #ff0000;\">面料顺滑 不会勾丝或者起球，深色面料不会掉色和静电。</span><span style=\"color: #3d85c6;\">宽松的版型穿起来自由自在，亲肤透气性好多色多尺码适合不同需求。</span></span></strong></p>\n<p>&nbsp;</p>\n<p><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/2112174637/TB29HCrq79WBuNjSspeXXaz5VXa_!!2112174637.jpg?t=1526055441000\" data-spm-anchor-id=\"a220o.1000855.0.i2.6b855c11mZ0x4c\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/2112174637/TB2tkJMaf6TBKNjSZJiXXbKVFXa_!!2112174637.jpg\" align=\"absmiddle\" /></p>\n<p><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/2112174637/TB29.y3qYSYBuNjSspfXXcZCpXa_!!2112174637.jpg?t=1526055440000\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/2112174637/TB2sBmBaamWBuNkHFJHXXaatVXa_!!2112174637.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/2112174637/TB2zZgQb4SYBuNjSspjXXX73VXa_!!2112174637.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/2112174637/TB2DTQNb4WYBuNjy1zkXXXGGpXa_!!2112174637.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/2112174637/TB29Zw8isyYBuNkSnfoXXcWgVXa_!!2112174637.jpg?t=1526055439000\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/2112174637/O1CN017hmC5Y1k7n4fj2l4Y_!!2112174637.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/2112174637/O1CN01tBw3NQ1k7n4ep6igI_!!2112174637.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/2112174637/O1CN01BoLAR41k7n4cCPDF0_!!2112174637.jpg\" align=\"absmiddle\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/2112174637/O1CN01LijHcD1k7n4emWimG_!!2112174637.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/2112174637/O1CN01s6XpRU1k7n4fd2lFQ_!!2112174637.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/2112174637/O1CN01lT7xrF1k7n4cCPkWd_!!2112174637.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/2112174637/O1CN015sm1ri1k7n4fj4hmZ_!!2112174637.jpg\" /></p>\n<span style=\"color: white; line-height: 0.0px; font-size: 0.0px;\">-|-_-|-</span><span style=\"color: white; line-height: 0.0px; font-size: 0.0px;\">-|-_-|-</span></div>',1,1,0,0,0,NULL,5,'2020-07-30 11:17:39',NULL,'2020-07-30 11:17:39','2020-07-30 11:17:39'),(14,'1596108029357271800','赫本风连衣裙2020新款女夏收腰气质深V领显瘦长款复古心机小黑裙',65,'tb00213',2,0,0,0,0,0,0,38800,NULL,NULL,'<p>12312</p>',1,1,0,0,0,NULL,5,'2020-07-30 11:20:29',NULL,'2020-07-30 11:20:29','2020-07-30 11:20:29'),(15,'1596108325390925802','2020年夏装宽松短袖t恤白色女内搭半袖打底衫t桖新款体桖上衣薄款',60,'TB00543',2,0,0,0,0,0,0,2900,NULL,NULL,'<p><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/3042618187/O1CN01qcLDfW2ALhAvyK1lu_!!3042618187.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"a220o.1000855.0.i0.4f772714uQ9SLM\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/3042618187/O1CN01UsS5RH2ALhBsnRAaS_!!3042618187.gif\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/3042618187/O1CN01CLL6Sg2ALhBzftcp5_!!3042618187.gif\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/3042618187/O1CN01m3XxLI2ALhBn8eJVk_!!3042618187.gif\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/3042618187/O1CN01y031bW2ALhBvAsnl8_!!3042618187.jpg\" align=\"absmiddle\" /><br /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/3042618187/O1CN0100rY4u2ALhAte2tDx_!!3042618187.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/3042618187/O1CN01RmnXhJ2ALhAvyKYxM_!!3042618187.jpg\" align=\"absmiddle\" /><br /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/3042618187/O1CN01Oi8Zei2ALhAsDOFov_!!3042618187.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/3042618187/O1CN01aLG3im2ALhArr9ypI_!!3042618187.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/3042618187/O1CN01bodEVV2ALhAtyCOiq_!!3042618187.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/3042618187/O1CN01YRxjvo2ALhAuUwof3_!!3042618187.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/3042618187/O1CN01xCIO1b2ALhAyYsKSb_!!3042618187.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/3042618187/O1CN01bvj3eG2ALhAu87TbA_!!3042618187.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/3042618187/O1CN01xVZSbX2ALhAsDQKjP_!!3042618187.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/3042618187/O1CN01r4lt9H2ALh5DorZwI_!!3042618187.jpg\" /></p>',1,1,0,0,0,NULL,5,'2020-07-30 11:25:25',NULL,'2020-07-30 11:25:25','2020-07-30 11:25:25'),(16,'1596108480902780691','白色短袖t恤女宽松ins潮夏装2020新款韩版百搭超火cec半袖上衣服',60,'TB00212',2,0,0,0,0,0,0,1200,NULL,NULL,'<p style=\"text-align: center;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/3878483432/O1CN01HCfBc41bDttJfou5E_!!3878483432.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"a220o.1000855.0.i0.abe63e6flXsI41\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/3878483432/O1CN01sTASyQ1bDttQVbZMp_!!3878483432.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" style=\"text-align: center; max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/3878483432/O1CN01Z47oK71bDtoXH5DUh_!!3878483432.jpg\" align=\"absmiddle\" /><br /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/3878483432/O1CN01s3tAbK1bDtoeTtynO_!!3878483432.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/3878483432/O1CN01bC4qdq1bDtsieTwYd_!!3878483432.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/3878483432/O1CN01PuTbXV1bDtog0DjhA_!!3878483432.jpg\" align=\"absmiddle\" /><br /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/3878483432/O1CN01SgHRX11bDtoe4yTJb_!!3878483432.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/3878483432/O1CN011qgPqP1bDtpPFQeBa_!!3878483432.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/3878483432/O1CN01gkjX3D1bDtog0DnsX_!!3878483432.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/3878483432/O1CN01pdDlu71bDtoe50YHQ_!!3878483432.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/3878483432/O1CN01xLFpFd1bDtofTKWCs_!!3878483432.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/3878483432/O1CN01dgvNyD1bDtqSpV5aM_!!3878483432.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/3878483432/O1CN01n6PUhY1bDtqWa9cHG_!!3878483432.jpg\" /><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/3878483432/O1CN014Tsb461bDtodnEwB1_!!3878483432.jpg\" /></p>',1,1,0,0,0,NULL,5,'2020-07-30 11:28:00',NULL,'2020-07-30 11:28:00','2020-07-30 11:28:00'),(17,'1596108667128799791','森马工装裤女2020新款秋季宽松直筒裤显瘦纯棉休闲裤女士白色裤子',61,'TB00982',2,0,0,0,0,0,0,15900,NULL,NULL,'<div class=\"content ke-post\" style=\"height: auto;\"><img id=\"desc-module-1\" class=\"desc_anchor img-ks-lazyload\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\" />\n<div style=\"background-color: #ffffff; margin: 0 auto; overflow: hidden; color: #555555; width: 750.0px; font-family: 微软雅黑;\" data-title=\"宝贝产品\" data-id=\"f9fec281-083c-4f89-8140-32708881ac75\">\n<div data-id=\"ee817cf5-de76-4a7d-bbd4-c0b0a4783d6d\">\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/397341302/O1CN01kCaEvA1LUMHsJvNDg-397341302.jpg\" /></div>\n</div>\n<div data-id=\"946776a6-7fc6-463e-9fa7-c9c9c59e52c7\">\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/397341302/O1CN010mlZBG1LUMHtugIwy-397341302.jpg\" /></div>\n</div>\n<div data-id=\"14282882-f527-4b41-b44e-6aad5ee312b0\">\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/397341302/O1CN01uVq2rU1LUMHv0illF-397341302.jpg\" /></div>\n</div>\n<div data-id=\"0c4dc836-158a-46d4-8ec8-42533aa8ef33\">\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/397341302/O1CN01ACIIDY1LUMHvgUgHO-397341302.jpg\" /></div>\n</div>\n</div>\n<img id=\"desc-module-2\" class=\"desc_anchor img-ks-lazyload\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\" />\n<div style=\"background-color: #ffffff; margin: 0 auto; overflow: hidden; color: #555555; width: 750.0px; font-family: 微软雅黑;\" data-title=\"宝贝信息\" data-id=\"8d33becb-2037-4374-874f-bab47a07007d\">\n<div data-id=\"5816afe4-42af-4f0c-ab3f-8eb0dc20e951\">\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/397341302/O1CN01ljsNct1LUMHphDPIS-397341302.jpg\" /></div>\n</div>\n<div data-id=\"6c2b8d4f-f89d-425b-bf7e-694f0787f76e\">\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/397341302/O1CN01Y40mS21LUMHwkM8f2-397341302.png\" /></div>\n</div>\n<div data-id=\"01c31af1-4aaa-40d3-b2f4-76f15d452606\">\n<div style=\"font-size: 0.0px;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/397341302/O1CN01yWDTkN1LUMHtuhNU2-397341302.png\" /></div>\n</div>\n</div>\n<img id=\"desc-module-3\" class=\"desc_anchor\" src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\" />\n<div style=\"background-color: #ffffff; margin: 0 auto; overflow: hidden; color: #555555; width: 750.0px; font-family: 微软雅黑;\" data-title=\"宝贝模特图\" data-id=\"7f01f90b-6150-4d66-a124-4dda60a654d6\">\n<div data-id=\"3cc758e0-35e6-4e47-8286-111e0436054d\">\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/397341302/O1CN01DLVqvx1LUMHrhedTU-397341302.jpg\" /></div>\n</div>\n<div data-id=\"d30d5991-d77c-4a30-bc78-d46961fb2b7d\">\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" usemap=\"#WeYOuTJR\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/397341302/O1CN01p9EfL81LUMHuDqWPB-397341302.jpg\" />\n<div style=\"float: left; margin-top: -458.0px; margin-left: 521.0px; opacity: 0.99;\"><a style=\"width: 189.0px; height: 189.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=617912218428\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n<div style=\"float: left; margin-top: -249.0px; margin-left: 521.0px; opacity: 0.99;\"><a style=\"width: 189.0px; height: 189.0px; display: block;\" href=\"http://detail.tmall.com/item.htm?id=613959714502\" target=\"_blank\" rel=\"noopener\">11111</a></div>\n</div>\n</div>\n<div data-id=\"f9d8cc16-172d-47ce-8648-b49c8e65a02a\">\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/397341302/O1CN01bEPcKr1LUMHjZaYWT-397341302.jpg\" /></div>\n</div>\n</div>\n<img id=\"desc-module-4\" class=\"desc_anchor\" src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\" />\n<div style=\"background-color: #ffffff; margin: 0 auto; overflow: hidden; color: #555555; width: 750.0px; font-family: 微软雅黑;\" data-title=\"宝贝细节\" data-id=\"5305ac1f-ad23-424e-8b81-4daa36eb5581\">\n<div data-id=\"9c5745c8-02b1-4ff5-b022-ed3dd8b3f656\">\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/397341302/O1CN01ojmgNW1LUMHsB7Igk-397341302.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/397341302/O1CN012DiNBm1LUMHphDwYE-397341302.jpg\" /></div>\n</div>\n<div data-id=\"fca0d2b7-66a6-425b-b59d-c34e318b26ed\">\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/397341302/O1CN01y45WEP1LUMHjZdm5r-397341302.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/397341302/O1CN01bN0f7c1LUMHuDrG88-397341302.jpg\" /></div>\n</div>\n<div data-id=\"527fc41a-ae11-4c23-ad00-848471ec5d17\">\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/397341302/O1CN01gU5wwq1LUMHtLTIBa-397341302.jpg\" /></div>\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/397341302/O1CN0164ShOC1LUMHwkKC5A-397341302.jpg\" /></div>\n</div>\n</div>\n<img id=\"desc-module-5\" class=\"desc_anchor\" src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\" />\n<div style=\"background-color: #ffffff; margin: 0 auto; overflow: hidden; color: #555555; width: 750.0px; font-family: 微软雅黑;\" data-title=\"宝贝贴士\" data-id=\"e1cd46c7-5c81-4ffc-b93c-7676e9f7861e\">\n<div style=\"font-size: 0.0px;\"><img src=\"//img-tmdetail.alicdn.com/tps/i3/T1BYd_XwFcXXb9RTPq-90-90.png\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/397341302/O1CN01wdUX3l1LUMHoIu7I3-397341302.jpg\" /></div>\n</div>\n</div>',1,1,0,0,0,NULL,5,'2020-07-30 11:31:07',NULL,'2020-07-30 11:31:07','2020-07-30 11:31:07'),(18,'1596108813287719714','优衣库 女装 麻棉休闲短裤 424951 UNIQLO',61,'TB00897',2,0,0,0,0,0,0,14900,NULL,NULL,'<div class=\"content ke-post\" style=\"height: auto;\"><img id=\"desc-module-1\" class=\"desc_anchor img-ks-lazyload\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\" />\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<p><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/196993935/TB2DaldXRYxQeBjSszeXXa0spXa_!!196993935.jpg\" alt=\"初上市价格\" width=\"100%\" /></p>\n<p>199元<br />※初上市价格是指商品首次在优衣库官方旗舰店销售时的价格。</p>\n<p><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/196993935/TB20HVcXPzyQeBjy0FjXXc5CVXa_!!196993935.jpg\" alt=\"产品说明\" width=\"100%\" /></p>\n<p>设计简约，清新有型。适合打造时尚造型。<br />&middot;采用质地柔软的麻棉混纺面料制成，优美的款型与富有张力的设计是其魅力所在。<br />&middot;腰部加入橡筋的设计，洋溢着休闲气息。</p>\n<p><br />【面料组成】[01 乳白色、09 黑色、11 粉红色、31 米色、47 土黄色、56 橄榄色、69 藏青色]棉50％,亚麻50％。[67 海蓝色]亚麻55％,棉45％。<br />【洗涤信息】机洗。垫布熨烫。请使用洗衣网袋。因素材特性上的原因，在穿着或洗涤中发生摩擦时，面料表面会有发生略微起毛、发白的可能。</p>\n<p><span style=\"color: #ff0000;\">此商品在商品完好，符合相关退换货规则的前提下支持七天无理由退换货。</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n<img id=\"desc-module-2\" class=\"desc_anchor img-ks-lazyload\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\" />\n<p><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/196993935/TB2mkMJXxvzQeBjSZFgXXcvfVXa-196993935.jpg\" alt=\"产品展示（790）.jpg\" width=\"100%\" /></p>\n<table style=\"border-left: 1.0px solid #dcdcdc; border-right: 1.0px solid #dcdcdc; border-top: 1.0px solid #dcdcdc; border-bottom: none medium;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"border-bottom: 1.0px solid #dcdcdc;\" colspan=\"4\" align=\"center\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/196993935/TB2C1zpahHxQeBjy1zjXXa5YVXa-196993935.jpg\" alt=\"模特搭配（788）.jpg\" width=\"100%\" /></td>\n</tr>\n<tr>\n<td style=\"border-right: 1.0px solid #dcdcdc; border-bottom: 1.0px solid #dcdcdc;\" colspan=\"0\" rowspan=\"3\" align=\"center\" width=\"74.97%\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/196993935/O1CN01qsa2D41ewH7eRB7ff_!!196993935.jpg\" alt=\"186149000m1.jpg\" width=\"100%\" data-spm-anchor-id=\"a220o.1000855.0.i1.7afe263dIOKNHa\" /></td>\n<td style=\"border-bottom: 1.0px solid #dcdcdc;\" align=\"center\" width=\"24.9%\" height=\"250\"><a href=\"https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.1a67687da3ADZX&amp;id=611871311822&amp;sku_properties=1627207:100760277\" target=\"_blank\" rel=\"noopener\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/196993935/O1CN01Ru7d6I1ewH7g0a0Ni_!!196993935.jpg\" alt=\"186149000m1s3.jpg\" width=\"100%\" /></a></td>\n</tr>\n<tr>\n<td style=\"border-bottom: 1.0px solid #dcdcdc;\" align=\"center\" width=\"24.9%\" height=\"250\"><a href=\"https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.1a67687da3ADZX&amp;id=606675435996&amp;sku_properties=1627207:100760277\" target=\"_blank\" rel=\"noopener\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/196993935/O1CN017A558R1ewH7iKuYys_!!196993935.jpg\" alt=\"186149000m1s3.jpg\" width=\"100%\" /></a></td>\n</tr>\n<tr>\n<td style=\"border-bottom: 1.0px solid #dcdcdc;\" align=\"center\" width=\"24.9%\" height=\"250\"><a href=\"https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.1a67687da3ADZX&amp;id=618021050175&amp;sku_properties=1627207:785804615\" target=\"_blank\" rel=\"noopener\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/196993935/O1CN01IAxWvS1ewH7jN7yfc_!!196993935.jpg\" alt=\"186149000m1s2.jpg\" width=\"100%\" /></a></td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-left: 1.0px solid #dcdcdc; border-right: 1.0px solid #dcdcdc; border-top: 0.0px solid #dcdcdc; border-bottom: none medium;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"border-right: 1.0px solid #dcdcdc; border-bottom: 1.0px solid #dcdcdc;\" colspan=\"0\" rowspan=\"3\" align=\"center\" width=\"74.97%\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/196993935/O1CN01ExQNc31ewH6TpWISx_!!196993935.jpg\" alt=\"186149000m1.jpg\" width=\"100%\" /></td>\n<td style=\"border-bottom: 1.0px solid #dcdcdc;\" align=\"center\" width=\"24.9%\" height=\"250\"><a href=\"https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.2046687dtv1dbJ&amp;id=612278315151\" target=\"_blank\" rel=\"noopener\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/196993935/O1CN01MuzrPb1ewH6UCOGHI_!!196993935.jpg\" alt=\"186149000m1s3.jpg\" width=\"100%\" /></a></td>\n</tr>\n<tr>\n<td style=\"border-bottom: 1.0px solid #dcdcdc;\" align=\"center\" width=\"24.9%\" height=\"250\"><a href=\"https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.2046687dtv1dbJ&amp;id=611338217054\" target=\"_blank\" rel=\"noopener\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/196993935/O1CN01a6eMeM1ewH6VfVpU9_!!196993935.jpg\" alt=\"186149000m1s2.jpg\" width=\"100%\" /></a></td>\n</tr>\n<tr>\n<td style=\"border-bottom: 1.0px solid #dcdcdc;\" align=\"center\" width=\"24.9%\" height=\"250\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/196993935/TB21xg1bRLzQeBjSZFCXXXmtXXa-196993935.jpg\" alt=\"186149000m1s3.jpg\" width=\"100%\" /></td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-left: 1.0px solid #dcdcdc; border-right: 1.0px solid #dcdcdc; border-top: 0.0px solid #dcdcdc; border-bottom: none medium;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"border-bottom: 1.0px solid #dcdcdc;\" colspan=\"4\" align=\"center\" width=\"100%\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/196993935/TB2l7lnXKLyQeBjy0FaXXXiDVXa-196993935.jpg\" alt=\"商品细节.jpg\" width=\"100%\" /></td>\n</tr>\n<tr>\n<td style=\"border-right: 1.0px solid #dcdcdc; border-bottom: 1.0px solid #dcdcdc;\" colspan=\"0\" align=\"center\" width=\"49.94%\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/196993935/O1CN01PoDqpC1ewH6ZOvHMM_!!196993935.jpg\" alt=\"405620000sub1.jpg\" width=\"100%\" /></td>\n<td style=\"border-bottom: 1.0px solid #dcdcdc;\" colspan=\"0\" align=\"center\" width=\"49.94%\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/196993935/O1CN010GFETa1ewH6h83UGj_!!196993935.jpg\" alt=\"405620000sub2.jpg\" width=\"100%\" /></td>\n</tr>\n<tr>\n<td style=\"border-right: 1.0px solid #dcdcdc; border-bottom: 1.0px solid #dcdcdc;\" colspan=\"0\" align=\"center\" width=\"49.94%\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/196993935/O1CN01vdbNEW1ewH6eWplZb_!!196993935.jpg\" alt=\"405620000sub3.jpg\" width=\"100%\" /></td>\n<td style=\"border-bottom: 1.0px solid #dcdcdc;\" colspan=\"0\" align=\"center\" width=\"49.94%\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/196993935/O1CN01tE5IQ91ewH6gjtNh0_!!196993935.jpg\" alt=\"405620000sub4.jpg\" width=\"100%\" /></td>\n</tr>\n<tr>\n<td style=\"border-right: 1.0px solid #dcdcdc; border-bottom: 1.0px solid #dcdcdc;\" colspan=\"0\" align=\"center\" width=\"49.94%\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/196993935/O1CN01HwTXdV1ewH6czXWUI_!!196993935.jpg\" alt=\"405620000sub5.jpg\" width=\"100%\" /></td>\n<td style=\"border-bottom: 1.0px solid #dcdcdc;\" colspan=\"0\" align=\"center\" width=\"49.94%\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/196993935/O1CN01ebOM0c1ewH6czWNoL_!!196993935.jpg\" alt=\"405620000sub6.jpg\" width=\"100%\" /></td>\n</tr>\n<tr>\n<td style=\"border-right: 1.0px solid #dcdcdc; border-bottom: 1.0px solid #dcdcdc;\" colspan=\"0\" align=\"center\" width=\"49.94%\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/196993935/O1CN01SKdPT11ewH6czWqum_!!196993935.jpg\" alt=\"405620000sub7.jpg\" width=\"100%\" /></td>\n<td style=\"border-bottom: 1.0px solid #dcdcdc;\" colspan=\"0\" align=\"center\" width=\"49.94%\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/196993935/O1CN018KD41a1ewH6ce9wZr_!!196993935.jpg\" alt=\"405620000sub7.jpg\" width=\"100%\" /></td>\n</tr>\n</tbody>\n</table>\n<img id=\"desc-module-3\" class=\"desc_anchor img-ks-lazyload\" src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\" />\n<p><a name=\"sizechart\"></a><img id=\"sizechart\" class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/196993935/TB2WTlaXNvxQeBjy0FiXXXioXXa_!!196993935.jpg\" alt=\"产品尺寸\" width=\"100%\" name=\"sizechart\" /></p>\n<table style=\"text-align: center; font-size: 12.0px; font-family: 微软雅黑; border-left: solid #cccccc 1.0px;\" border=\"0\" width=\"745\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"background-color: #8c8c8c;\">\n<td style=\"text-align: center; font-family: 微软雅黑; color: #ffffff; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" rowspan=\"2\" align=\"center\" bgcolor=\"#FF0000\" width=\"99\">UNIQLO尺寸<br />(商品尺寸)</td>\n<td style=\"text-align: center; font-family: 微软雅黑; color: #000000; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" colspan=\"5\" bgcolor=\"#dde3ff\" height=\"36\">商品尺寸(cm)</td>\n<td style=\"text-align: center; font-family: 微软雅黑; color: #ffffff; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" colspan=\"2\" bgcolor=\"#999999\" height=\"36\">建议身材(cm)</td>\n</tr>\n<tr style=\"background: #dde3ff;\">\n<td style=\"text-align: center; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" width=\"65\">臀围</td>\n<td style=\"text-align: center; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" width=\"90\">底裆宽</td>\n<td style=\"text-align: center; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" width=\"64\">上裆</td>\n<td style=\"text-align: center; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" width=\"64\">裤脚宽度</td>\n<td style=\"text-align: center; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" width=\"87\">裤内裆长</td>\n<td style=\"text-align: center; font-family: 微软雅黑; color: #ffffff; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" bgcolor=\"#999999\" width=\"80\" height=\"36\">腰围</td>\n</tr>\n<tr>\n<td style=\"text-align: center; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" bgcolor=\"#dde3ff\" height=\"36\">155/58A(XS)</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">102</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">34</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">26</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">33</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">9.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">57～63</td>\n</tr>\n<tr>\n<td style=\"text-align: center; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" bgcolor=\"#dde3ff\" height=\"36\">155/62A(S)</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">106</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">35.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">26.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">34.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">9.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">60～66</td>\n</tr>\n<tr>\n<td style=\"text-align: center; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" bgcolor=\"#dde3ff\" height=\"36\">160/66A(M)</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">110</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">37</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">27</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">35.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">9.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">63～69</td>\n</tr>\n<tr>\n<td style=\"text-align: center; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" bgcolor=\"#dde3ff\" height=\"36\">160/70A(L)</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">116</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">38.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">28</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">37.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">9.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">69～75</td>\n</tr>\n<tr>\n<td style=\"text-align: center; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" bgcolor=\"#dde3ff\" height=\"36\">165/78A(XL)</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">122</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">40.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">29</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">39</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">9.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">75～81</td>\n</tr>\n<tr>\n<td style=\"text-align: center; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" bgcolor=\"#dde3ff\" height=\"36\">170/82A(XXL)</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">128</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">42.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">30</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">41</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">9.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">81～87</td>\n</tr>\n<tr>\n<td style=\"text-align: center; border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\" bgcolor=\"#dde3ff\" height=\"36\">175/88B(3XL)</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">134</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">44</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">31</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">43</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">9.5</td>\n<td style=\"border-bottom: solid #cccccc 1.0px; border-right: solid #cccccc 1.0px;\">87～93</td>\n</tr>\n</tbody>\n</table>\n</div>',1,1,0,0,0,NULL,5,'2020-07-30 11:33:33',NULL,'2020-07-30 11:33:33','2020-07-30 11:33:33'),(19,'1596108963502228322','厚底老爹鞋女ins潮2020新款夏网面高跟透气运动休闲鞋内增高女鞋',73,'TB00234',2,0,0,0,0,0,0,43900,NULL,NULL,'<div id=\"description\" class=\"J_DetailSection tshop-psm ke-post\">\n<div id=\"J_DivItemDesc\" class=\"content\">\n<p><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2996497435/O1CN01BZGzTt24nHHfRcssM_!!2996497435.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"2013.1.0.i3.29d23fa61WJOv4\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/2996497435/O1CN01Yp4e3p24nHHeAoQp5_!!2996497435.jpg\" align=\"absmiddle\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2996497435/O1CN01MBvisT24nHHgkNZom_!!2996497435.jpg\" align=\"absmiddle\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2996497435/O1CN01QzD0GD24nHHZYtOkn_!!2996497435.jpg\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2996497435/O1CN01nxW2t324nHHjh1Qt0_!!2996497435.jpg\" width=\"750\" height=\"432\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/2996497435/O1CN01JUayZS24nHHiohUfb_!!2996497435.jpg\" width=\"750\" height=\"385\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/2996497435/O1CN013p1uFJ24nHHjVU2pr_!!2996497435.jpg\" width=\"750\" height=\"878\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"650\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/2996497435/O1CN01q1mwCw24nHHh3ugQw_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"992\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/2996497435/O1CN01ZzTtAY24nHHfNJQ0z_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"667\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/2996497435/O1CN01Kk9wTH24nHHjVTAmr_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"736\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/2996497435/O1CN01P603R924nHHiohE48_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"673\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/2996497435/O1CN01ErdlOQ24nHHkA4FVX_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"792\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/2996497435/O1CN01V2rn6B24nHHi9dcNM_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"495\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/2996497435/O1CN01fAx9mr24nHHhqFhf0_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"767\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/2996497435/O1CN01aD0LR924nHHgvlcTt_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"598\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/2996497435/O1CN01eEt9uS24nHHgIYp27_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"891\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/2996497435/O1CN01OkvBvN24nHHfNH4Wk_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"838\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/2996497435/O1CN013aPoCH24nHHh3Ui0s_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"748\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/2996497435/O1CN01SaeDEL24nHHgvkPfX_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"789\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/2996497435/O1CN01BAlKwY24nHHi9gALP_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"895\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/2996497435/O1CN01SpHWRu24nHHh3VVvT_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"744\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/2996497435/O1CN01BdgKnC24nHHi9fA0I_!!2996497435.jpg\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" height=\"677\" align=\"absmiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/2996497435/O1CN01oYo9QU24nHHjVVSBB_!!2996497435.jpg\" /></p>\n</div>\n</div>',1,1,0,0,0,NULL,5,'2020-07-30 11:36:03',NULL,'2020-07-30 11:36:03','2020-07-30 11:36:03'),(20,'1596109118877675950','欧洲站女鞋2020夏季新款中跟单鞋女尖头粗跟高跟百搭英伦小皮鞋潮',73,'TB0078565',2,0,0,0,0,0,0,34800,NULL,NULL,'<div id=\"description\" class=\"J_DetailSection tshop-psm ke-post\">\n<div id=\"J_DivItemDesc\" class=\"content\">\n<p><img id=\"desc-module-1\" class=\"desc_anchor\" src=\"https://img.alicdn.com/imgextra/i4/602747469/O1CN01Hc9VBy252qm8Tf8uK_!!602747469.gif\" /></p>\n<p>&nbsp;<img src=\"https://img.alicdn.com/imgextra/i1/602747469/O1CN01rdRCEu252qmBqXOtf_!!602747469.jpg\" align=\"middle\" data-spm-anchor-id=\"2013.1.0.i1.59c05122z8CrfF\" /></p>\n<p><img id=\"desc-module-2\" class=\"desc_anchor\" src=\"https://img.alicdn.com/imgextra/i4/602747469/O1CN01Hc9VBy252qm8Tf8uK_!!602747469.gif\" /></p>\n<p><img src=\"https://img.alicdn.com/imgextra/i2/602747469/O1CN01ILpM5D252qm8btqj8_!!602747469.jpg\" width=\"750\" align=\"absMiddle\" /></p>\n<p><img id=\"desc-module-3\" class=\"desc_anchor\" src=\"https://img.alicdn.com/imgextra/i4/602747469/O1CN01Hc9VBy252qm8Tf8uK_!!602747469.gif\" /></p>\n<p><img class=\"\" src=\"https://img.alicdn.com/imgextra/i1/602747469/O1CN01IX4du6252qmCH4nqx_!!602747469.jpg\" width=\"750\" align=\"absMiddle\" /><img class=\"\" src=\"https://img.alicdn.com/imgextra/i3/602747469/O1CN012GOEng252qmApXeV4_!!602747469.jpg\" width=\"750\" align=\"absMiddle\" /><img class=\"\" src=\"https://img.alicdn.com/imgextra/i4/602747469/O1CN01Am1l6S252qmCH6TpI_!!602747469.jpg\" width=\"750\" align=\"absMiddle\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/602747469/O1CN018GDN9N252qm7twNoS_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/602747469/O1CN010cKnzC252qm5OXNLL_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/602747469/O1CN01nhTfTh252qm5OYuyP_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/602747469/O1CN01CPadeE252qm8C1vnK_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/602747469/O1CN01WdCpRG252qm0oFmNR_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/602747469/O1CN01lE64ht252qm7txvRd_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/602747469/O1CN01i4yCZf252qmCH4CTQ_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/602747469/O1CN0118ZZth252qm7twRzP_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/602747469/O1CN01PUVAhb252qm6NSQYs_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/602747469/O1CN01qlKJOq252qm5OZJur_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/602747469/O1CN01NBqp7Y252qm8C0aho_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/602747469/O1CN01pkdcvM252qm5OWq5b_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/602747469/O1CN01r5hzV3252qm5OXRX3_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/602747469/O1CN01TXhfPU252qm8bvj8j_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/602747469/O1CN01KUWDay252qm0oH3NK_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/602747469/O1CN0196K7L0252qm8eZ88g_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/602747469/O1CN01G8ri0w252qmBqY4We_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/602747469/O1CN01qadLsG252qm9tgr5M_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/602747469/O1CN01WssG4S252qmBMNdg2_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/602747469/O1CN01i2w3xi252qm8TesGg_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/602747469/O1CN017GP328252qm9LmKpM_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/602747469/O1CN01FD2hbI252qm8eZfQn_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/602747469/O1CN01hP7VN5252qm6ZhzLh_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/602747469/O1CN01d0JKT8252qmCH7UDt_!!602747469.jpg\" /></p>\n<p><img id=\"desc-module-4\" class=\"desc_anchor\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"1\" height=\"1\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i4/602747469/O1CN01Hc9VBy252qm8Tf8uK_!!602747469.gif\" /></p>\n<p><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i2/602747469/O1CN01PcbTN1252qm8Thl3F_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i3/602747469/O1CN01GToKtX252qm8buvIO_!!602747469.jpg\" /><img class=\"\" src=\"//img.alicdn.com/tps/i4/T10B2IXb4cXXcHmcPq-85-85.gif\" width=\"750\" align=\"absMiddle\" data-ks-lazyload=\"https://img.alicdn.com/imgextra/i1/602747469/O1CN01J3J6SM252qmA4uZS8_!!602747469.jpg\" /></p>\n</div>\n</div>',1,1,0,0,0,NULL,5,'2020-07-30 11:38:38',NULL,'2020-07-30 11:38:38','2020-07-30 11:38:38'),(21,'1596109374321689430','凉鞋女2020年夏季新款高跟罗马中跟粗跟网红ins潮仙女风百搭单鞋',73,'TB0053',2,0,0,0,0,0,0,28800,NULL,NULL,'<div id=\"J_DivItemDesc\" class=\"content\">\n<p><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/602747469/O1CN01upOHKH252qoqdDyom_!!602747469.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"2013.1.0.i1.27aa36b6yTrCT6\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/602747469/O1CN01MGpQSf252qot3qFkw_!!602747469.jpg\" align=\"absmiddle\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/602747469/O1CN01tcqTSg252qotO3SBF_!!602747469.jpg\" align=\"absmiddle\" /><img style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/602747469/O1CN01aQp1fT252qoq1ews5_!!602747469.jpg\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/602747469/O1CN01ISP7s1252qogSEWXT_!!602747469.jpg\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i1/602747469/O1CN01Bwz0Ts252qoouk6gy_!!602747469.jpg\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/602747469/O1CN01GMvgax252qoq1eLT9_!!602747469.jpg\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i4/602747469/O1CN01vmbTaa252qop3n9c7_!!602747469.jpg\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i2/602747469/O1CN01O3Ntc8252qoqdDe22_!!602747469.jpg\" align=\"absmiddle\" /><img class=\"\" style=\"max-width: 750.0px;\" src=\"https://img.alicdn.com/imgextra/i3/602747469/O1CN01pjIW7Y252qoqdDRZV_!!602747469.jpg\" align=\"absmiddle\" /></p>\n</div>',1,1,0,0,0,NULL,5,'2020-08-02 01:12:20',NULL,'2020-07-30 11:42:54','2020-08-02 01:12:20');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2016_06_01_000001_create_oauth_auth_codes_table',1),(2,'2016_06_01_000002_create_oauth_access_tokens_table',1),(3,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(4,'2016_06_01_000004_create_oauth_clients_table',1),(5,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(6,'2020_07_14_141947_create_jobs_table',1),(7,'2020_08_01_123913_create_admins_table',1),(8,'2020_08_01_124420_create_admin_auth_group_table',1),(9,'2020_08_01_124449_create_admin_logs_table',1),(10,'2020_08_01_124840_create_auth_groups_table',1),(11,'2020_08_01_124902_create_auth_group_auth_rules_table',1),(12,'2020_08_01_124945_create_auth_rules_table',1),(13,'2020_08_01_125014_create_banners_table',1),(14,'2020_08_01_125032_create_brands_table',1),(15,'2020_08_01_125053_create_browses_table',1),(16,'2020_08_01_125233_create_categorys_table',1),(17,'2020_08_01_125303_create_category_brands_table',1),(18,'2020_08_01_125322_create_category_specifications_table',1),(19,'2020_08_01_125432_create_collects_table',1),(20,'2020_08_01_125632_create_dhls_table',1),(21,'2020_08_01_125645_create_freights_table',1),(22,'2020_08_01_125659_create_freight_ways_table',1),(23,'2020_08_01_125714_create_goods_table',1),(24,'2020_08_01_125756_create_good_indents_table',1),(25,'2020_08_01_125809_create_good_indent_commoditys_table',1),(26,'2020_08_01_125827_create_good_locations_table',1),(27,'2020_08_01_125843_create_good_skus_table',1),(28,'2020_08_01_125858_create_good_specifications_table',1),(29,'2020_08_01_130228_create_money_logs_table',1),(30,'2020_08_01_130425_create_payment_logs_table',1),(31,'2020_08_01_130505_create_resources_table',1),(32,'2020_08_01_130648_create_shippings_table',1),(33,'2020_08_01_130711_create_sms_logs_table',1),(34,'2020_08_01_130731_create_specifications_table',1),(35,'2020_08_01_130754_create_specification_groups_table',1),(36,'2020_08_01_130811_create_users_table',1),(37,'2020_08_01_130825_create_user_logs_table',1),(38,'2020_09_19_090445_create_notifications_table',1),(39,'2020_12_13_120727_create_notification_logs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_logs`
--

DROP TABLE IF EXISTS `money_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `money_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL DEFAULT '0' COMMENT '用户ID',
  `type` tinyint NOT NULL DEFAULT '0' COMMENT '类型0:收入1：支出',
  `money` int NOT NULL DEFAULT '0' COMMENT '操作金额',
  `remark` varchar(300) DEFAULT NULL COMMENT '操作说明',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `money_logs_id_unique` (`id`),
  KEY `money_logs_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资金记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_logs`
--

LOCK TABLES `money_logs` WRITE;
/*!40000 ALTER TABLE `money_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `money_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_logs`
--

DROP TABLE IF EXISTS `notification_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `type` varchar(100) DEFAULT NULL COMMENT '通知类型标识',
  `msg` json DEFAULT NULL COMMENT '发送的内容',
  `feedback` json DEFAULT NULL COMMENT '反馈的信息',
  `state` tinyint NOT NULL DEFAULT '1' COMMENT '状态1发送成功2失败',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notification_logs_id_unique` (`id`),
  KEY `notification_logs_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_logs`
--

LOCK TABLES `notification_logs` WRITE;
/*!40000 ALTER TABLE `notification_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'dsshop Password Grant Client','HXbwUudI4wfSrPv4NwRCGQ3TG7J9kPqPFjGq4PVu','admins','http://localhost',0,1,0,'2021-03-01 17:41:03','2021-03-01 17:41:03');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL COMMENT '订单描述',
  `number` varchar(50) NOT NULL COMMENT '商户订单号(注意, 这不是商品订单号,不要用这个查询订单,请用pay_id)',
  `transaction_id` varchar(50) DEFAULT NULL COMMENT '支付订单号',
  `money` int NOT NULL DEFAULT '0' COMMENT '金额',
  `data` text COMMENT '订单详情json',
  `state` tinyint NOT NULL DEFAULT '0' COMMENT '状态0生成1完成2失败',
  `pay_id` bigint NOT NULL DEFAULT '0' COMMENT '支付对应的订单ID',
  `pay_type` varchar(200) DEFAULT NULL COMMENT '支付对应的模型',
  `type` varchar(80) DEFAULT NULL COMMENT '支付类型标识',
  `platform` varchar(50) DEFAULT NULL COMMENT '支付平台',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payment_logs_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resources` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint NOT NULL DEFAULT '1' COMMENT '资源类型1图片2视频',
  `depict` varchar(100) DEFAULT NULL COMMENT '资源描述',
  `img` varchar(255) NOT NULL COMMENT '资源地址',
  `image_id` int NOT NULL DEFAULT '0',
  `image_type` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resources_id_unique` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8 COMMENT='资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
INSERT INTO `resources` VALUES (15,1,'goods_4_zimg','https://dsshop.dswjcms.com/storage/image/good/3Vt8L1606374292.jpg',4,'App\\Models\\v1\\Good','2020-04-24 12:13:22','2020-11-26 07:04:55'),(24,1,'goods_5_zimg','https://dsshop.dswjcms.com/storage/image/good/YaNmz1606374273.jpg',5,'App\\Models\\v1\\Good','2020-04-24 12:18:09','2020-11-26 07:04:36'),(28,1,'goods_6_zimg','https://dsshop.dswjcms.com/storage/image/good/vfHQn1606374254.jpg',6,'App\\Models\\v1\\Good','2020-04-24 12:32:54','2020-11-26 07:04:17'),(32,1,'goods_7_zimg','https://dsshop.dswjcms.com/storage/image/good/MZZXe1606374240.jpg',7,'App\\Models\\v1\\Good','2020-04-24 12:37:46','2020-11-26 07:04:03'),(38,1,'goods_8_zimg','https://dsshop.dswjcms.com/storage/image/good/hC8Cc1606374224.jpg',8,'App\\Models\\v1\\Good','2020-04-24 12:42:19','2020-11-26 07:03:48'),(39,1,'goods_9_zimg','https://dsshop.dswjcms.com/storage/image/good/BVXvA1606374207.jpg',9,'App\\Models\\v1\\Good','2020-04-24 13:01:01','2020-11-26 07:03:29'),(66,1,'goods_10_zimg','https://dsshop.dswjcms.com/storage/image/good/DqWIc1606374193.jpg',10,'App\\Models\\v1\\Good','2020-05-22 12:07:32','2020-11-26 07:03:16'),(70,1,'category_11','https://dsshop.dswjcms.com/storage/image/category/mpSvx1606374342.png',11,'App\\Models\\v1\\Category','2020-07-13 14:52:50','2020-11-26 07:05:45'),(71,1,'category_12','https://dsshop.dswjcms.com/storage/image/category/BxjTc1606374361.png',12,'App\\Models\\v1\\Category','2020-07-13 14:54:15','2020-11-26 07:06:05'),(72,1,'category_13','https://dsshop.dswjcms.com/storage/image/category/55twm1606374372.png',13,'App\\Models\\v1\\Category','2020-07-13 14:55:07','2020-11-26 07:06:14'),(73,1,'category_14','https://dsshop.dswjcms.com/storage/image/category/yn5FE1606374384.png',14,'App\\Models\\v1\\Category','2020-07-13 14:56:05','2020-11-26 07:06:26'),(74,1,'category_15','https://dsshop.dswjcms.com/storage/image/category/2fzpH1606374397.png',15,'App\\Models\\v1\\Category','2020-07-13 14:59:16','2020-11-26 07:06:39'),(75,1,'category_16','https://dsshop.dswjcms.com/storage/image/category/W7s7z1606374407.png',16,'App\\Models\\v1\\Category','2020-07-13 15:00:38','2020-11-26 07:06:50'),(76,1,'category_17','https://dsshop.dswjcms.com/storage/image/category/Dy06q1606374425.png',17,'App\\Models\\v1\\Category','2020-07-13 15:01:31','2020-11-26 07:07:08'),(77,1,'category_18','https://dsshop.dswjcms.com/storage/image/category/Imoau1606374445.png',18,'App\\Models\\v1\\Category','2020-07-13 15:02:50','2020-11-26 07:07:27'),(78,1,'category_19','https://dsshop.dswjcms.com/storage/image/category/TboJA1606374454.png',19,'App\\Models\\v1\\Category','2020-07-13 15:06:22','2020-11-26 07:07:37'),(79,1,'category_20','https://dsshop.dswjcms.com/storage/image/category/nQNqh1606374465.png',20,'App\\Models\\v1\\Category','2020-07-13 15:07:33','2020-11-26 07:07:48'),(80,1,'category_21','https://dsshop.dswjcms.com/storage/image/category/6hw6n1606374479.png',21,'App\\Models\\v1\\Category','2020-07-13 15:08:21','2020-11-26 07:08:01'),(81,1,'category_22','https://dsshop.dswjcms.com/storage/image/category/ieuDq1606374487.png',22,'App\\Models\\v1\\Category','2020-07-13 15:09:05','2020-11-26 07:08:09'),(82,1,'category_23','https://dsshop.dswjcms.com/storage/image/category/wnhQa1606374496.png',23,'App\\Models\\v1\\Category','2020-07-13 15:09:57','2020-11-26 07:08:18'),(83,1,'category_24','https://dsshop.dswjcms.com/storage/image/category/A9bdB1606374517.png',24,'App\\Models\\v1\\Category','2020-07-13 15:11:03','2020-11-26 07:08:40'),(84,1,'category_25','https://dsshop.dswjcms.com/storage/image/category/m1VGZ1606374528.png',25,'App\\Models\\v1\\Category','2020-07-13 15:12:26','2020-11-26 07:08:51'),(85,1,'category_26','https://dsshop.dswjcms.com/storage/image/category/Pi4mO1606374545.png',26,'App\\Models\\v1\\Category','2020-07-13 15:13:16','2020-11-26 07:09:08'),(86,1,'category_27','https://dsshop.dswjcms.com/storage/image/category/kkiu21606374562.png',27,'App\\Models\\v1\\Category','2020-07-13 15:13:55','2020-11-26 07:09:24'),(87,1,'category_28','https://dsshop.dswjcms.com/storage/image/category/KstfX1606374571.png',28,'App\\Models\\v1\\Category','2020-07-13 15:15:21','2020-11-26 07:09:33'),(88,1,'category_29','https://dsshop.dswjcms.com/storage/image/category/5XP8I1606374582.png',29,'App\\Models\\v1\\Category','2020-07-13 15:15:54','2020-11-26 07:09:44'),(89,1,'category_30','https://dsshop.dswjcms.com/storage/image/category/61q8o1606374716.png',30,'App\\Models\\v1\\Category','2020-07-13 15:16:40','2020-11-26 07:11:58'),(90,1,'category_31','https://dsshop.dswjcms.com/storage/image/category/rXLJh1606374730.png',31,'App\\Models\\v1\\Category','2020-07-13 15:17:11','2020-11-26 07:12:12'),(91,1,'category_32','https://dsshop.dswjcms.com/storage/image/category/ah0yh1606374740.png',32,'App\\Models\\v1\\Category','2020-07-13 15:17:55','2020-11-26 07:12:21'),(92,1,'category_33','https://dsshop.dswjcms.com/storage/image/category/yzRpR1606374768.png',33,'App\\Models\\v1\\Category','2020-07-13 15:18:30','2020-11-26 07:12:50'),(93,1,'category_34','https://dsshop.dswjcms.com/storage/image/category/uRo4G1606374779.png',34,'App\\Models\\v1\\Category','2020-07-13 15:19:02','2020-11-26 07:13:01'),(94,1,'category_35','https://dsshop.dswjcms.com/storage/image/category/mcWpZ1606374796.png',35,'App\\Models\\v1\\Category','2020-07-13 15:19:41','2020-11-26 07:13:18'),(95,1,'category_36','https://dsshop.dswjcms.com/storage/image/category/d01TO1606374813.png',36,'App\\Models\\v1\\Category','2020-07-13 15:20:13','2020-11-26 07:13:35'),(96,1,'category_37','https://dsshop.dswjcms.com/storage/image/category/bs5EI1606374873.png',37,'App\\Models\\v1\\Category','2020-07-13 15:20:50','2020-11-26 07:14:35'),(97,1,'category_38','https://dsshop.dswjcms.com/storage/image/category/93KWI1606374886.png',38,'App\\Models\\v1\\Category','2020-07-13 15:21:21','2020-11-26 07:14:48'),(98,1,'category_39','https://dsshop.dswjcms.com/storage/image/category/TNJ7d1606374900.png',39,'App\\Models\\v1\\Category','2020-07-13 15:21:53','2020-11-26 07:15:02'),(99,1,'category_40','https://dsshop.dswjcms.com/storage/image/category/Ftri71606374913.png',40,'App\\Models\\v1\\Category','2020-07-13 15:22:28','2020-11-26 07:15:16'),(100,1,'category_41','https://dsshop.dswjcms.com/storage/image/category/YHgTi1606374927.png',41,'App\\Models\\v1\\Category','2020-07-13 15:23:15','2020-11-26 07:15:29'),(101,1,'category_42','https://dsshop.dswjcms.com/storage/image/category/WR6sc1606374941.png',42,'App\\Models\\v1\\Category','2020-07-13 15:23:51','2020-11-26 07:15:43'),(102,1,'category_43','https://dsshop.dswjcms.com/storage/image/category/lh4DH1606374956.png',43,'App\\Models\\v1\\Category','2020-07-13 15:24:23','2020-11-26 07:15:58'),(103,1,'category_44','https://dsshop.dswjcms.com/storage/image/category/ae6Oj1606374968.png',44,'App\\Models\\v1\\Category','2020-07-13 15:25:17','2020-11-26 07:16:10'),(104,1,'category_45','https://dsshop.dswjcms.com/storage/image/category/zR3VU1606374983.png',45,'App\\Models\\v1\\Category','2020-07-13 15:25:51','2020-11-26 07:16:25'),(105,1,'category_46','https://dsshop.dswjcms.com/storage/image/category/ruvLy1606375005.png',46,'App\\Models\\v1\\Category','2020-07-13 15:26:20','2020-11-26 07:16:47'),(106,1,'category_47','https://dsshop.dswjcms.com/storage/image/category/lDECB1606375021.png',47,'App\\Models\\v1\\Category','2020-07-13 15:26:51','2020-11-26 07:17:03'),(107,1,'category_48','https://dsshop.dswjcms.com/storage/image/category/cdXxw1606375032.png',48,'App\\Models\\v1\\Category','2020-07-13 15:27:31','2020-11-26 07:17:15'),(108,1,'category_53','https://dsshop.dswjcms.com/storage/image/category/Ncdvt1606375053.png',53,'App\\Models\\v1\\Category','2020-07-13 15:41:10','2020-11-26 07:17:36'),(109,1,'category_54','https://dsshop.dswjcms.com/storage/image/category/1XvBV1606375064.png',54,'App\\Models\\v1\\Category','2020-07-13 15:41:53','2020-11-26 07:17:47'),(110,1,'category_55','https://dsshop.dswjcms.com/storage/image/category/3QQNt1606375074.png',55,'App\\Models\\v1\\Category','2020-07-13 15:42:28','2020-11-26 07:17:56'),(111,1,'category_65','https://dsshop.dswjcms.com/storage/image/category/rpuxK1606375087.png',65,'App\\Models\\v1\\Category','2020-07-13 15:43:15','2020-11-26 07:18:09'),(112,1,'category_66','https://dsshop.dswjcms.com/storage/image/category/ryxTm1606375101.png',66,'App\\Models\\v1\\Category','2020-07-13 15:43:58','2020-11-26 07:18:23'),(113,1,'category_67','https://dsshop.dswjcms.com/storage/image/category/M5VMD1606375112.png',67,'App\\Models\\v1\\Category','2020-07-13 15:44:35','2020-11-26 07:18:34'),(114,1,'category_56','https://dsshop.dswjcms.com/storage/image/category/kFijO1606375133.png',56,'App\\Models\\v1\\Category','2020-07-13 15:45:06','2020-11-26 07:18:55'),(115,1,'category_57','https://dsshop.dswjcms.com/storage/image/category/qrWx81606375159.png',57,'App\\Models\\v1\\Category','2020-07-13 15:45:46','2020-11-26 07:19:21'),(116,1,'category_58','https://dsshop.dswjcms.com/storage/image/category/1omur1606375171.png',58,'App\\Models\\v1\\Category','2020-07-13 15:46:22','2020-11-26 07:19:34'),(117,1,'category_59','https://dsshop.dswjcms.com/storage/image/category/7xQXI1606375202.png',59,'App\\Models\\v1\\Category','2020-07-13 15:46:51','2020-11-26 07:20:04'),(118,1,'category_60','https://dsshop.dswjcms.com/storage/image/category/gSh0W1606375215.png',60,'App\\Models\\v1\\Category','2020-07-13 15:47:20','2020-11-26 07:20:17'),(119,1,'category_61','https://dsshop.dswjcms.com/storage/image/category/63Z2H1606375227.png',61,'App\\Models\\v1\\Category','2020-07-13 15:48:04','2020-11-26 07:20:29'),(120,1,'category_62','https://dsshop.dswjcms.com/storage/image/category/uaLg71606375237.png',62,'App\\Models\\v1\\Category','2020-07-13 15:48:34','2020-11-26 07:20:39'),(121,1,'category_63','https://dsshop.dswjcms.com/storage/image/category/oYkVY1606375245.png',63,'App\\Models\\v1\\Category','2020-07-13 15:49:01','2020-11-26 07:20:48'),(122,1,'category_64','https://dsshop.dswjcms.com/storage/image/category/HMi0h1606375257.png',64,'App\\Models\\v1\\Category','2020-07-13 15:49:43','2020-11-26 07:21:00'),(123,1,'category_73','https://dsshop.dswjcms.com/storage/image/category/h6OZV1606375632.png',73,'App\\Models\\v1\\Category','2020-07-13 16:00:19','2020-11-26 07:27:15'),(124,1,'category_75','https://dsshop.dswjcms.com/storage/image/category/xpleS1606375650.png',75,'App\\Models\\v1\\Category','2020-07-13 16:01:11','2020-11-26 07:27:32'),(125,1,'category_76','https://dsshop.dswjcms.com/storage/image/category/PedXS1606375660.png',76,'App\\Models\\v1\\Category','2020-07-13 16:01:43','2020-11-26 07:27:42'),(126,1,'category_77','https://dsshop.dswjcms.com/storage/image/category/zQmGR1606375673.png',77,'App\\Models\\v1\\Category','2020-07-13 16:02:29','2020-11-26 07:27:55'),(127,1,'category_78','https://dsshop.dswjcms.com/storage/image/category/Z4p2i1606375684.png',78,'App\\Models\\v1\\Category','2020-07-13 16:02:54','2020-11-26 07:28:06'),(128,1,'category_81','https://dsshop.dswjcms.com/storage/image/category/9174z1606375706.png',81,'App\\Models\\v1\\Category','2020-07-13 16:03:46','2020-11-26 07:28:28'),(129,1,'category_82','https://dsshop.dswjcms.com/storage/image/category/Oqvun1606375715.png',82,'App\\Models\\v1\\Category','2020-07-13 16:04:12','2020-11-26 07:28:38'),(130,1,'category_83','https://dsshop.dswjcms.com/storage/image/category/KyzrV1606375733.png',83,'App\\Models\\v1\\Category','2020-07-13 16:04:40','2020-11-26 07:28:54'),(131,1,'category_84','https://dsshop.dswjcms.com/storage/image/category/wZDt51606375747.png',84,'App\\Models\\v1\\Category','2020-07-13 16:05:38','2020-11-26 07:29:09'),(132,1,'category_85','https://dsshop.dswjcms.com/storage/image/category/QQCMJ1606375775.png',85,'App\\Models\\v1\\Category','2020-07-13 16:06:11','2020-11-26 07:29:37'),(133,1,'category_86','https://dsshop.dswjcms.com/storage/image/category/7SEcl1606375787.png',86,'App\\Models\\v1\\Category','2020-07-13 16:08:54','2020-11-26 07:29:49'),(134,1,'category_87','https://dsshop.dswjcms.com/storage/image/category/XXVUR1606375798.png',87,'App\\Models\\v1\\Category','2020-07-13 16:09:33','2020-11-26 07:30:00'),(135,1,'category_88','https://dsshop.dswjcms.com/storage/image/category/zXwpY1606375810.png',88,'App\\Models\\v1\\Category','2020-07-13 16:10:23','2020-11-26 07:30:12'),(136,1,'category_89','https://dsshop.dswjcms.com/storage/image/category/72OBu1606375821.png',89,'App\\Models\\v1\\Category','2020-07-13 16:11:06','2020-11-26 07:30:23'),(137,1,'brand_2','',2,'App\\Models\\v1\\Brand','2020-07-13 16:26:08','2020-07-13 16:26:08'),(138,1,'brand_2','',2,'App\\Models\\v1\\Brand','2020-07-13 16:26:52','2020-07-13 16:26:52'),(139,1,'goods_4','https://dsshop.dswjcms.com/storage/image/good/5t53u1594636914.jpg',4,'App\\Models\\v1\\Good','2020-07-13 18:54:27','2020-07-13 18:54:27'),(140,1,'goods_4','https://dsshop.dswjcms.com/storage/image/good/Qq1sH1594636914.jpg',4,'App\\Models\\v1\\Good','2020-07-13 18:54:27','2020-07-13 18:54:27'),(141,1,'goods_4','https://dsshop.dswjcms.com/storage/image/good/O926U1594636914.jpg',4,'App\\Models\\v1\\Good','2020-07-13 18:54:27','2020-07-13 18:54:27'),(142,1,'goods_5','https://dsshop.dswjcms.com/storage/image/good/v6zkN1594639997.jpg',5,'App\\Models\\v1\\Good','2020-07-13 19:40:33','2020-07-13 19:40:33'),(143,1,'goods_5','https://dsshop.dswjcms.com/storage/image/good/AiZbb1594639997.jpg',5,'App\\Models\\v1\\Good','2020-07-13 19:40:33','2020-07-13 19:40:33'),(144,1,'goods_5','https://dsshop.dswjcms.com/storage/image/good/YYQaq1594639997.jpg',5,'App\\Models\\v1\\Good','2020-07-13 19:40:33','2020-07-13 19:40:33'),(160,1,'goods_6','https://dsshop.dswjcms.com/storage/image/good/tYxbt1594640811.jpg',6,'App\\Models\\v1\\Good','2020-07-13 19:52:43','2020-07-13 19:52:43'),(161,1,'goods_6','https://dsshop.dswjcms.com/storage/image/good/tHSLo1594640811.jpg',6,'App\\Models\\v1\\Good','2020-07-13 19:52:43','2020-07-13 19:52:43'),(162,1,'goods_6','https://dsshop.dswjcms.com/storage/image/good/dE9ai1594640811.jpg',6,'App\\Models\\v1\\Good','2020-07-13 19:52:43','2020-07-13 19:52:43'),(163,1,'goods_6','https://dsshop.dswjcms.com/storage/image/good/2AKHT1594640811.jpg',6,'App\\Models\\v1\\Good','2020-07-13 19:52:43','2020-07-13 19:52:43'),(212,1,'goods_7','https://dsshop.dswjcms.com/storage/image/good/qx7tj1594642964.jpg',7,'App\\Models\\v1\\Good','2020-07-13 20:25:17','2020-07-13 20:25:17'),(213,1,'goods_8','https://dsshop.dswjcms.com/storage/image/good/Dbjxd1594643168.jpg',8,'App\\Models\\v1\\Good','2020-07-13 20:28:33','2020-07-13 20:28:33'),(214,1,'goods_9','https://dsshop.dswjcms.com/storage/image/good/cYOXw1594643424.jpg',9,'App\\Models\\v1\\Good','2020-07-13 20:33:52','2020-07-13 20:33:52'),(215,1,'banner_4','http://dsshop.dswjcms.com/storage/image/banner/kHi8T1596112325.jpg',4,'App\\Models\\v1\\Banner','2020-07-18 20:07:15','2020-07-30 12:32:06'),(216,1,'banner_5','https://dsshop.dswjcms.com/storage/image/banner/T1JRy1595074203.jpg',5,'App\\Models\\v1\\Banner','2020-07-18 20:10:04','2020-07-18 20:10:04'),(217,1,'banner_6','https://dsshop.dswjcms.com/storage/image/banner/lR2b61595074212.jpg',6,'App\\Models\\v1\\Banner','2020-07-18 20:10:13','2020-07-18 20:10:13'),(218,1,'banner_7','http://dsshop.dswjcms.com/storage/image/banner/kMwV81596110235.jpg',7,'App\\Models\\v1\\Banner','2020-07-18 20:12:08','2020-07-30 11:58:02'),(219,1,'goods_11_zimg','https://dsshop.dswjcms.com/storage/image/good/Ghpkc1606374138.jpg',11,'App\\Models\\v1\\Good','2020-07-30 08:14:12','2020-11-26 07:02:20'),(220,2,'goods_11_video','http://cloud.video.taobao.com/play/u/263817957/p/1/e/6/t/1/261121675879.mp4',11,'App\\Models\\v1\\Good','2020-07-30 08:14:12','2020-07-30 08:14:12'),(221,1,'goods_11_poster','https://img.alicdn.com/bao/uploaded/i3/263817957/O1CN0138cUBa28eM5dZOPGy_!!263817957.jpg_600x600.jpg',11,'App\\Models\\v1\\Good','2020-07-30 08:14:12','2020-07-30 08:14:12'),(222,1,'goods_11','http://dsshop.dswjcms.com/storage/image/good/O6VAr1596097145.jpg',11,'App\\Models\\v1\\Good','2020-07-30 08:19:15','2020-07-30 08:19:15'),(223,1,'goods_12_zimg','https://dsshop.dswjcms.com/storage/image/good/1GnDU1606374097.jpg',12,'App\\Models\\v1\\Good','2020-07-30 11:11:00','2020-11-26 07:01:40'),(224,2,'goods_12_video','http://cloud.video.taobao.com/play/u/513051429/p/1/e/6/t/1/273428375955.mp4',12,'App\\Models\\v1\\Good','2020-07-30 11:11:00','2020-07-30 11:11:00'),(225,1,'goods_12_poster','https://img.alicdn.com/bao/uploaded/i2/513051429/O1CN01VzlrDP1MQWag2hxac-513051429.jpg_600x600.jpg',12,'App\\Models\\v1\\Good','2020-07-30 11:11:00','2020-07-30 11:11:00'),(226,1,'goods_13_zimg','https://dsshop.dswjcms.com/storage/image/good/aNO9b1606374113.jpg',13,'App\\Models\\v1\\Good','2020-07-30 11:17:39','2020-11-26 07:01:56'),(227,1,'goods_14_zimg','https://dsshop.dswjcms.com/storage/image/good/vS2GG1606374124.jpg',14,'App\\Models\\v1\\Good','2020-07-30 11:20:29','2020-11-26 07:02:06'),(228,1,'goods_15_zimg','https://dsshop.dswjcms.com/storage/image/good/3EyAb1606374083.jpg',15,'App\\Models\\v1\\Good','2020-07-30 11:25:25','2020-11-26 07:01:25'),(229,1,'goods_16_zimg','https://dsshop.dswjcms.com/storage/image/good/fCS5n1606374068.jpg',16,'App\\Models\\v1\\Good','2020-07-30 11:28:00','2020-11-26 07:01:12'),(230,1,'goods_17_zimg','https://dsshop.dswjcms.com/storage/image/good/2tYj11606374056.jpg',17,'App\\Models\\v1\\Good','2020-07-30 11:31:07','2020-11-26 07:00:59'),(231,1,'goods_18_zimg','https://dsshop.dswjcms.com/storage/image/good/NpxIR1606374039.jpg',18,'App\\Models\\v1\\Good','2020-07-30 11:33:33','2020-11-26 07:00:42'),(232,1,'goods_19_zimg','https://dsshop.dswjcms.com/storage/image/good/NwP0y1606373468.jpg',19,'App\\Models\\v1\\Good','2020-07-30 11:36:03','2020-11-26 06:51:12'),(233,1,'goods_20_zimg','https://dsshop.dswjcms.com/storage/image/good/Ty73f1606373454.jpg',20,'App\\Models\\v1\\Good','2020-07-30 11:38:38','2020-11-26 06:50:58'),(234,1,'goods_21_zimg','https://dsshop.dswjcms.com/storage/image/good/uIzny1606373438.jpg',21,'App\\Models\\v1\\Good','2020-07-30 11:42:54','2020-11-26 06:50:42');
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL DEFAULT '0' COMMENT '用户ID',
  `cellphone` varchar(11) NOT NULL COMMENT '手机',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `location` varchar(255) NOT NULL COMMENT '地址',
  `address` varchar(255) NOT NULL COMMENT '详情地址',
  `latitude` varchar(50) NOT NULL COMMENT '纬度',
  `longitude` varchar(50) NOT NULL COMMENT '经度',
  `house` varchar(100) NOT NULL COMMENT '门牌号',
  `defaults` tinyint NOT NULL DEFAULT '0' COMMENT '是否默认1是0否',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shippings_id_unique` (`id`),
  KEY `shippings_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收货人地址(和good_locations是1:N关系)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippings`
--

LOCK TABLES `shippings` WRITE;
/*!40000 ALTER TABLE `shippings` DISABLE KEYS */;
/*!40000 ALTER TABLE `shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_logs`
--

DROP TABLE IF EXISTS `sms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sms_service` varchar(60) DEFAULT NULL COMMENT '短信服务商标识',
  `phone` varchar(11) NOT NULL COMMENT '接收短信的手机号',
  `data` text COMMENT '返回数据',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sms_logs_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信发送记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_logs`
--

LOCK TABLES `sms_logs` WRITE;
/*!40000 ALTER TABLE `sms_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specification_groups`
--

DROP TABLE IF EXISTS `specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '规格组名称',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `specification_groups_id_unique` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='规格组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specification_groups`
--

LOCK TABLES `specification_groups` WRITE;
/*!40000 ALTER TABLE `specification_groups` DISABLE KEYS */;
INSERT INTO `specification_groups` VALUES (1,'产品参数',NULL,'2020-04-24 09:57:14','2020-04-24 09:57:14');
/*!40000 ALTER TABLE `specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specifications`
--

DROP TABLE IF EXISTS `specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `specification_group_id` int NOT NULL DEFAULT '0' COMMENT '规格组ID',
  `name` varchar(30) NOT NULL COMMENT '规格名称',
  `type` tinyint NOT NULL COMMENT '规格类型1文本2单选3多选',
  `is_search` tinyint NOT NULL DEFAULT '0' COMMENT '是否可搜索1是',
  `location` tinyint NOT NULL DEFAULT '0' COMMENT '显示位置0规格参数页1详情页2都显示',
  `value` text COMMENT '规格值',
  `label` varchar(20) DEFAULT NULL COMMENT '规格标注名称',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `specifications_id_unique` (`id`),
  KEY `specifications_specification_group_id_index` (`specification_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='规格';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specifications`
--

LOCK TABLES `specifications` WRITE;
/*!40000 ALTER TABLE `specifications` DISABLE KEYS */;
INSERT INTO `specifications` VALUES (1,1,'棉含量',1,0,2,NULL,'棉含量',5,NULL,'2020-04-24 09:57:48','2020-07-13 16:30:27'),(2,1,'材质',2,0,2,'棉\n麻','材质',5,NULL,'2020-04-24 09:59:00','2020-07-13 16:30:07'),(3,1,'产地',1,0,2,NULL,'产地',5,NULL,'2020-04-24 09:59:17','2020-04-24 09:59:17'),(4,1,'尺寸',2,0,2,'x\nxl\nxxl\nxxxl','尺寸',5,NULL,'2020-04-24 09:59:44','2020-07-13 16:30:44'),(5,1,'厚度',2,0,2,'0.6mm\n0.7mm\n0.8mm','厚度',5,NULL,'2020-04-24 10:00:58','2020-04-24 10:00:58');
/*!40000 ALTER TABLE `specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logs`
--

DROP TABLE IF EXISTS `user_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `path` varchar(255) NOT NULL COMMENT '路径',
  `method` varchar(10) NOT NULL COMMENT '请求方法',
  `ip` varchar(45) NOT NULL COMMENT 'IP',
  `input` text COMMENT '提交的数据',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_logs_id_unique` (`id`),
  KEY `user_logs_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logs`
--

LOCK TABLES `user_logs` WRITE;
/*!40000 ALTER TABLE `user_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL COMMENT 'uuid',
  `api_token` varchar(80) NOT NULL COMMENT 'token',
  `state` tinyint NOT NULL DEFAULT '1' COMMENT '状态1正常2禁止访问',
  `unsubscribe` tinyint NOT NULL DEFAULT '0' COMMENT '是否注销1是0否',
  `name` varchar(30) NOT NULL COMMENT '账号',
  `nickname` varchar(60) DEFAULT NULL COMMENT '昵称',
  `gender` tinyint NOT NULL DEFAULT '0' COMMENT '性别0未知1男2女',
  `money` int NOT NULL DEFAULT '0' COMMENT '金额',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `cellphone` varchar(11) NOT NULL COMMENT '手机',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `portrait` varchar(255) DEFAULT NULL COMMENT '头像',
  `wechat` varchar(255) DEFAULT NULL COMMENT '微信公众平台openid',
  `miniweixin` varchar(255) DEFAULT NULL COMMENT '微信小程序openid',
  `minialipay` varchar(255) DEFAULT NULL COMMENT '支付宝小程序openid',
  `minitoutiao` varchar(255) DEFAULT NULL COMMENT '字节跳动小程序openid',
  `notification` json DEFAULT NULL COMMENT '用户通知接收状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_id_unique` (`id`),
  KEY `users_uuid_index` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2021-03-22 23:27:33
