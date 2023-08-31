-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: flashcardsdb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add card',7,'add_card'),(26,'Can change card',7,'change_card'),(27,'Can delete card',7,'delete_card'),(28,'Can view card',7,'view_card'),(29,'Can add card collection',8,'add_cardcollection'),(30,'Can change card collection',8,'change_cardcollection'),(31,'Can delete card collection',8,'delete_cardcollection'),(32,'Can view card collection',8,'view_cardcollection');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$rTbGN4urLFyNKZnEoPtJPt$IkOrJnIFz7zo8HsrGlqUY+iEBLXAKBSAsXkmBkMhp9E=','2023-02-02 01:39:30.407357',1,'admin','','','',1,1,'2023-02-01 00:26:08.657702');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `card_collections_cardcollection`
--

LOCK TABLES `card_collections_cardcollection` WRITE;
/*!40000 ALTER TABLE `card_collections_cardcollection` DISABLE KEYS */;
INSERT INTO `card_collections_cardcollection` VALUES (1,'React'),(2,'Space'),(3,'Computer Hardware');
/*!40000 ALTER TABLE `card_collections_cardcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cards_card`
--

LOCK TABLES `cards_card` WRITE;
/*!40000 ALTER TABLE `cards_card` DISABLE KEYS */;
INSERT INTO `cards_card` VALUES (1,'RAM','Random Acces Memory - A form of temporary storage that allows for rapid storage & access of data.  Does not retain data when computer is powered down.',3),(2,'Hard Drive','Stores the operating system, applications, data files, anything on the computer.  There are both internal & external hard drives available.',3),(3,'Circumpolar','Denotes an object near a celestial pole that never dips below the horizon as Earth rotates and thus does not rise or set.',2),(4,'Light Year','The distance that light (moving at about 186,000 miles per second) travels in one year, or about 6 trillion miles.',2),(5,'Quasar','A supermassive black hole gorging on gas at the center of a distant galaxy.',2),(6,'Supernova','A star ending its life in a huge explosion. In comparison, a nova is a star that explosively sheds its outer layers without destroying itself.',2),(7,'Earthshine','Sunlight reflected by Earth that makes the otherwise dark part of the Moon glow faintly. It’s especially obvious during the Moon’s thin crescent phases.',2),(8,'Compilers','A JavaScript compiler takes JavaScript code, transforms it and returns JavaScript code in a different format. The most common use case is to take ES6 syntax and transform it into syntax that older browsers are capable of interpreting. (Babel)',1),(9,'Bundlers','Bundlers take JavaScript and CSS code written as separate modules (often hundreds of them), and combine them together into a few files better optimized for the browsers. Some bundlers commonly used in React applications include Webpack and Browserify.',1),(10,'CDN','CDN stands for Content Delivery Network. CDNs deliver cached, static content from a network of servers across the globe.',1),(11,'DOM','The Document Object Model ( DOM) is a programming interface for both HTML and XML documents. It represents a page such that programs can adjust the format, layout, and content of the document. The document is represented as nodes and objects by the DOM',1);
/*!40000 ALTER TABLE `cards_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-02-02 01:39:52.622809','1','CardCollection object (1)',1,'[{\"added\": {}}]',8,1),(2,'2023-02-02 01:42:56.721509','2','Space',1,'[{\"added\": {}}]',8,1),(3,'2023-02-02 01:46:59.781774','3','Computer Hardware',1,'[{\"added\": {}}]',8,1),(4,'2023-02-02 01:49:26.226230','1','RAM',1,'[{\"added\": {}}]',7,1),(5,'2023-02-02 01:52:40.442889','2','Hard Drive',1,'[{\"added\": {}}]',7,1),(6,'2023-02-02 01:53:23.053384','3','Circumpolar',1,'[{\"added\": {}}]',7,1),(7,'2023-02-02 02:04:32.681338','4','Light Year',1,'[{\"added\": {}}]',7,1),(8,'2023-02-02 02:05:08.536957','5','Quasar',1,'[{\"added\": {}}]',7,1),(9,'2023-02-02 02:06:20.576219','6','Supernova',1,'[{\"added\": {}}]',7,1),(10,'2023-02-02 02:07:31.115014','7','Earthshine',1,'[{\"added\": {}}]',7,1),(11,'2023-02-02 02:08:29.189405','8','Compilers',1,'[{\"added\": {}}]',7,1),(12,'2023-02-02 02:09:44.237873','9','Bundlers',1,'[{\"added\": {}}]',7,1),(13,'2023-02-02 02:11:30.067092','10','CDN',1,'[{\"added\": {}}]',7,1),(14,'2023-02-02 02:12:25.155235','11','DOM',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'card_collections','cardcollection'),(7,'cards','card'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-02-01 00:24:21.104450'),(2,'auth','0001_initial','2023-02-01 00:24:21.479741'),(3,'admin','0001_initial','2023-02-01 00:24:21.569740'),(4,'admin','0002_logentry_remove_auto_add','2023-02-01 00:24:21.579741'),(5,'admin','0003_logentry_add_action_flag_choices','2023-02-01 00:24:21.588739'),(6,'contenttypes','0002_remove_content_type_name','2023-02-01 00:24:21.645738'),(7,'auth','0002_alter_permission_name_max_length','2023-02-01 00:24:21.693739'),(8,'auth','0003_alter_user_email_max_length','2023-02-01 00:24:21.719739'),(9,'auth','0004_alter_user_username_opts','2023-02-01 00:24:21.727739'),(10,'auth','0005_alter_user_last_login_null','2023-02-01 00:24:21.772739'),(11,'auth','0006_require_contenttypes_0002','2023-02-01 00:24:21.776741'),(12,'auth','0007_alter_validators_add_error_messages','2023-02-01 00:24:21.784740'),(13,'auth','0008_alter_user_username_max_length','2023-02-01 00:24:21.844743'),(14,'auth','0009_alter_user_last_name_max_length','2023-02-01 00:24:21.941737'),(15,'auth','0010_alter_group_name_max_length','2023-02-01 00:24:21.963740'),(16,'auth','0011_update_proxy_permissions','2023-02-01 00:24:21.972740'),(17,'auth','0012_alter_user_first_name_max_length','2023-02-01 00:24:22.028739'),(18,'sessions','0001_initial','2023-02-01 00:24:22.069740'),(19,'card_collections','0001_initial','2023-02-01 01:09:51.608890'),(20,'cards','0001_initial','2023-02-01 01:09:51.674889');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ug2ic1415wefjb47mbwic7ncpdkwfr9p','.eJxVjEEOwiAQRe_C2pBhBiq4dN8zEGBAqoYmpV0Z765NutDtf-_9l_BhW6vfel78xOIilDj9bjGkR2474Htot1mmua3LFOWuyIN2Oc6cn9fD_TuooddvDQYGY9g6tJizYocZNeoBqLhIyNGdSRWNULCwAtYEbBIZdhwjkBXvD7RPNwU:1pNOZW:StFCSqMHQurwW65b-rl6OUNddX8mFTYIZTvzUOcbPaM','2023-02-16 01:39:30.413357');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-31  8:47:19
