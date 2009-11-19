-- MySQL dump 10.9
--
-- Host: localhost    Database: ohtsuji_sugudeki
-- ------------------------------------------------------
-- Server version	4.1.21-standard-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES ujis */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `entry_gender` char(1) NOT NULL default '',
  `entry_company` varchar(32) default NULL,
  `entry_firstname` varchar(32) NOT NULL default '',
  `entry_lastname` varchar(32) NOT NULL default '',
  `entry_street_address` varchar(64) NOT NULL default '',
  `entry_suburb` varchar(32) default NULL,
  `entry_postcode` varchar(10) NOT NULL default '',
  `entry_city` varchar(32) NOT NULL default '',
  `entry_state` varchar(32) default NULL,
  `entry_country_id` int(11) NOT NULL default '0',
  `entry_zone_id` int(11) NOT NULL default '0',
  `entry_telephone` varchar(32) NOT NULL default '',
  `entry_fax` varchar(32) default NULL,
  `entry_firstname_kana` varchar(32) NOT NULL default '',
  `entry_lastname_kana` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`address_book_id`),
  KEY `idx_address_book_customers_id_zen` (`customers_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
INSERT INTO `address_book` VALUES (1,1,'m','JustaDemo','Bill','Smith','123 Any Avenue','','12345','Here','',223,12,'',NULL,'',''),(2,2,'m','','saito','s','�忷��',NULL,'010-0134','���Ļ�','',107,186,'0123456789','','�����Ȥ�','��');
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_format`
--

DROP TABLE IF EXISTS `address_format`;
CREATE TABLE `address_format` (
  `address_format_id` int(11) NOT NULL auto_increment,
  `address_format` varchar(128) NOT NULL default '',
  `address_summary` varchar(48) NOT NULL default '',
  PRIMARY KEY  (`address_format_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `address_format`
--

LOCK TABLES `address_format` WRITE;
/*!40000 ALTER TABLE `address_format` DISABLE KEYS */;
INSERT INTO `address_format` VALUES (1,'$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country','$city / $country'),(2,'$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country','$city, $state / $country'),(3,'$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country','$state / $country'),(4,'$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country','$postcode / $country'),(5,'$firstname $lastname$cr$streets$cr$postcode $city$cr$country','$city / $country'),(6,'$firstname $lastname$cr$postcode$cr$state$city$cr$streets$cr$country$cr$telephone$cr$fax','$statename $city');
/*!40000 ALTER TABLE `address_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL auto_increment,
  `admin_name` varchar(32) NOT NULL default '',
  `admin_email` varchar(96) NOT NULL default '',
  `admin_pass` varchar(40) NOT NULL default '',
  `admin_level` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`admin_id`),
  KEY `idx_admin_name_zen` (`admin_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','ohtsuji@ark-web.jp','a191c752052af1ef6e405beb89e63567:dd',1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_activity_log`
--

DROP TABLE IF EXISTS `admin_activity_log`;
CREATE TABLE `admin_activity_log` (
  `log_id` int(15) NOT NULL auto_increment,
  `access_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `admin_id` int(11) NOT NULL default '0',
  `page_accessed` varchar(80) NOT NULL default '',
  `page_parameters` varchar(150) default NULL,
  `ip_address` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`log_id`),
  KEY `idx_page_accessed_zen` (`page_accessed`),
  KEY `idx_access_date_zen` (`access_date`),
  KEY `idx_ip_zen` (`ip_address`)
) ENGINE=MyISAM AUTO_INCREMENT=236 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `admin_activity_log`
--

LOCK TABLES `admin_activity_log` WRITE;
/*!40000 ALTER TABLE `admin_activity_log` DISABLE KEYS */;
INSERT INTO `admin_activity_log` VALUES (1,'2009-11-19 12:42:23',1,'addon_modules.php','','192.168.0.100'),(2,'2009-11-19 12:42:32',1,'addon_modules.php','module=addon_modules&','192.168.0.100'),(3,'2009-11-19 12:42:37',1,'addon_modules.php','module=addon_modules&action=install&','192.168.0.100'),(4,'2009-11-19 12:42:38',1,'addon_modules.php','module=addon_modules&action=edit&','192.168.0.100'),(5,'2009-11-19 12:43:00',1,'addon_modules.php','module=addon_modules&action=save&','192.168.0.100'),(6,'2009-11-19 12:43:00',1,'addon_modules.php','module=addon_modules&','192.168.0.100'),(7,'2009-11-19 12:46:49',1,'addon_modules.php','module=addon_modules&','192.168.0.100'),(8,'2009-11-19 12:47:06',1,'template_select.php','','192.168.0.100'),(9,'2009-11-19 12:47:11',1,'template_select.php','page=1&tID=1&action=edit&','192.168.0.100'),(10,'2009-11-19 12:47:11',1,'template_select.php','page=1&tID=1&action=edit&','192.168.0.100'),(11,'2009-11-19 12:47:21',1,'template_select.php','page=1&tID=1&action=save&','192.168.0.100'),(12,'2009-11-19 12:50:43',1,'template_select.php','page=1&tID=1&action=edit&','192.168.0.100'),(13,'2009-11-19 12:50:46',1,'addon_modules.php','','192.168.0.100'),(14,'2009-11-19 12:50:52',1,'addon_modules.php','module=aboutbox&action=install&','192.168.0.100'),(15,'2009-11-19 12:50:53',1,'addon_modules.php','module=aboutbox&action=edit&','192.168.0.100'),(16,'2009-11-19 12:50:53',1,'addon_modules.php','module=aboutbox&action=install&','192.168.0.100'),(17,'2009-11-19 12:51:00',1,'addon_modules.php','','192.168.0.100'),(18,'2009-11-19 12:51:11',1,'addon_modules.php','module=ajax_category_tree&','192.168.0.100'),(19,'2009-11-19 12:51:17',1,'addon_modules.php','module=ajax_category_tree&action=install&','192.168.0.100'),(20,'2009-11-19 12:51:17',1,'addon_modules.php','module=ajax_category_tree&','192.168.0.100'),(21,'2009-11-19 12:51:27',1,'addon_modules.php','module=jquery&','192.168.0.100'),(22,'2009-11-19 12:51:33',1,'addon_modules.php','module=jquery&action=install&','192.168.0.100'),(23,'2009-11-19 12:51:33',1,'addon_modules.php','module=jquery&action=edit&','192.168.0.100'),(24,'2009-11-19 12:51:43',1,'addon_modules.php','module=jquery&action=save&','192.168.0.100'),(25,'2009-11-19 12:51:43',1,'addon_modules.php','module=jquery&','192.168.0.100'),(26,'2009-11-19 12:51:52',1,'addon_modules.php','module=ajax_category_tree&','192.168.0.100'),(27,'2009-11-19 12:51:55',1,'addon_modules.php','module=ajax_category_tree&action=install&','192.168.0.100'),(28,'2009-11-19 12:51:56',1,'addon_modules.php','module=ajax_category_tree&action=edit&','192.168.0.100'),(29,'2009-11-19 12:52:09',1,'addon_modules.php','module=ajax_category_tree&action=save&','192.168.0.100'),(30,'2009-11-19 12:52:09',1,'addon_modules.php','module=ajax_category_tree&','192.168.0.100'),(31,'2009-11-19 12:52:18',1,'addon_modules.php','module=ajax_category_tree&action=edit&','192.168.0.100'),(32,'2009-11-19 12:52:25',1,'addon_modules.php','module=blog&','192.168.0.100'),(33,'2009-11-19 12:52:36',1,'addon_modules.php','module=blog&action=install&','192.168.0.100'),(34,'2009-11-19 12:52:36',1,'addon_modules.php','module=blog&action=edit&','192.168.0.100'),(35,'2009-11-19 12:52:52',1,'addon_modules.php','module=blog&action=save&','192.168.0.100'),(36,'2009-11-19 12:52:53',1,'addon_modules.php','module=blog&','192.168.0.100'),(37,'2009-11-19 12:52:59',1,'addon_modules.php','module=calendar&','192.168.0.100'),(38,'2009-11-19 12:53:04',1,'addon_modules.php','module=calendar&action=install&','192.168.0.100'),(39,'2009-11-19 12:53:05',1,'addon_modules.php','module=calendar&action=edit&','192.168.0.100'),(40,'2009-11-19 12:53:16',1,'addon_modules.php','module=calendar&action=save&','192.168.0.100'),(41,'2009-11-19 12:53:16',1,'addon_modules.php','module=calendar&','192.168.0.100'),(42,'2009-11-19 12:53:48',1,'addon_modules.php','module=carousel_ui&','192.168.0.100'),(43,'2009-11-19 12:53:57',1,'addon_modules.php','module=carousel_ui&action=install&','192.168.0.100'),(44,'2009-11-19 12:53:57',1,'addon_modules.php','module=carousel_ui&action=edit&','192.168.0.100'),(45,'2009-11-19 12:54:17',1,'addon_modules.php','module=carousel_ui&action=save&','192.168.0.100'),(46,'2009-11-19 12:54:18',1,'addon_modules.php','module=carousel_ui&','192.168.0.100'),(47,'2009-11-19 12:54:36',1,'addon_modules.php','module=category_sitemap&','192.168.0.100'),(48,'2009-11-19 12:54:42',1,'addon_modules.php','module=category_sitemap&action=install&','192.168.0.100'),(49,'2009-11-19 12:54:43',1,'addon_modules.php','module=category_sitemap&action=edit&','192.168.0.100'),(50,'2009-11-19 12:54:50',1,'addon_modules.php','module=category_sitemap&action=save&','192.168.0.100'),(51,'2009-11-19 12:54:50',1,'addon_modules.php','module=category_sitemap&','192.168.0.100'),(52,'2009-11-19 12:54:59',1,'configuration.php','gID=18&','192.168.0.100'),(53,'2009-11-19 12:55:37',1,'configuration.php','gID=100&','192.168.0.100'),(54,'2009-11-19 12:55:37',1,'configuration.php','gID=18&cID=335&action=edit&','192.168.0.100'),(55,'2009-11-19 12:55:50',1,'configuration.php','gID=18&','192.168.0.100'),(56,'2009-11-19 12:55:55',1,'addon_modules.php','module=category_sitemap&','192.168.0.100'),(57,'2009-11-19 12:56:03',1,'addon_modules.php','module=checkout_step&','192.168.0.100'),(58,'2009-11-19 12:56:18',1,'addon_modules.php','module=checkout_step&action=install&','192.168.0.100'),(59,'2009-11-19 12:56:18',1,'addon_modules.php','module=checkout_step&action=edit&','192.168.0.100'),(60,'2009-11-19 12:56:27',1,'addon_modules.php','module=easy_admin&','192.168.0.100'),(61,'2009-11-19 12:56:42',1,'addon_modules.php','module=easy_admin&action=install&','192.168.0.100'),(62,'2009-11-19 12:56:42',1,'addon_modules.php','module=easy_admin&action=edit&','192.168.0.100'),(63,'2009-11-19 12:56:50',1,'addon_modules.php','module=easy_admin&action=save&','192.168.0.100'),(64,'2009-11-19 12:56:50',1,'addon_modules.php','module=easy_admin&','192.168.0.100'),(65,'2009-11-19 12:57:03',1,'addon_modules.php','module=easy_admin_simplify&','192.168.0.100'),(66,'2009-11-19 12:59:19',1,'addon_modules.php','module=easy_admin_simplify&','192.168.0.100'),(67,'2009-11-19 12:59:21',1,'addon_modules.php','module=easy_admin_simplify&action=install&','192.168.0.100'),(68,'2009-11-19 12:59:21',1,'addon_modules.php','module=easy_admin_simplify&action=edit&','192.168.0.100'),(69,'2009-11-19 12:59:30',1,'addon_modules.php','module=easy_admin_simplify&action=save&','192.168.0.100'),(70,'2009-11-19 12:59:30',1,'addon_modules.php','module=easy_admin_simplify&','192.168.0.100'),(71,'2009-11-19 12:59:42',1,'addon_modules.php','module=easy_design&','192.168.0.100'),(72,'2009-11-19 12:59:53',1,'addon_modules.php','module=easy_design&action=install&','192.168.0.100'),(73,'2009-11-19 12:59:53',1,'addon_modules.php','module=easy_design&action=edit&','192.168.0.100'),(74,'2009-11-19 13:00:02',1,'addon_modules.php','module=easy_design&action=save&','192.168.0.100'),(75,'2009-11-19 13:00:02',1,'addon_modules.php','module=easy_design&','192.168.0.100'),(76,'2009-11-19 13:01:26',1,'addon_modules.php','module=email_templates&','192.168.0.100'),(77,'2009-11-19 13:01:34',1,'addon_modules.php','module=email_templates&action=install&','192.168.0.100'),(78,'2009-11-19 13:01:34',1,'addon_modules.php','module=email_templates&action=edit&','192.168.0.100'),(79,'2009-11-19 13:01:43',1,'addon_modules.php','module=email_templates&action=save&','192.168.0.100'),(80,'2009-11-19 13:01:43',1,'addon_modules.php','module=email_templates&','192.168.0.100'),(81,'2009-11-19 13:01:53',1,'addon_modules.php','module=email_templates&action=edit&','192.168.0.100'),(82,'2009-11-19 13:02:01',1,'addon_modules.php','module=email_templates&action=save&','192.168.0.100'),(83,'2009-11-19 13:02:02',1,'addon_modules.php','module=email_templates&','192.168.0.100'),(84,'2009-11-19 13:02:12',1,'addon_modules.php','module=feature_area&','192.168.0.100'),(85,'2009-11-19 13:02:18',1,'addon_modules.php','module=feature_area&action=install&','192.168.0.100'),(86,'2009-11-19 13:02:19',1,'addon_modules.php','module=feature_area&action=edit&','192.168.0.100'),(87,'2009-11-19 13:02:41',1,'addon_modules.php','module=feature_area&action=save&','192.168.0.100'),(88,'2009-11-19 13:02:42',1,'addon_modules.php','module=feature_area&','192.168.0.100'),(89,'2009-11-19 13:03:07',1,'addon_modules.php','module=globalnavi&','192.168.0.100'),(90,'2009-11-19 13:03:12',1,'addon_modules.php','module=globalnavi&action=install&','192.168.0.100'),(91,'2009-11-19 13:03:13',1,'addon_modules.php','module=globalnavi&action=edit&','192.168.0.100'),(92,'2009-11-19 13:03:34',1,'addon_modules.php','module=globalnavi&action=save&','192.168.0.100'),(93,'2009-11-19 13:03:34',1,'addon_modules.php','module=globalnavi&','192.168.0.100'),(94,'2009-11-19 13:03:45',1,'addon_modules.php','module=multiple_image_view&','192.168.0.100'),(95,'2009-11-19 13:03:54',1,'addon_modules.php','module=multiple_image_view&action=install&','192.168.0.100'),(96,'2009-11-19 13:03:58',1,'addon_modules.php','module=multiple_image_view&action=edit&','192.168.0.100'),(97,'2009-11-19 13:04:10',1,'addon_modules.php','module=multiple_image_view&action=save&','192.168.0.100'),(98,'2009-11-19 13:04:11',1,'addon_modules.php','module=multiple_image_view&','192.168.0.100'),(99,'2009-11-19 13:04:23',1,'addon_modules.php','module=product_csv&','192.168.0.100'),(100,'2009-11-19 13:04:30',1,'addon_modules.php','module=product_csv&action=install&','192.168.0.100'),(101,'2009-11-19 13:04:31',1,'addon_modules.php','module=product_csv&action=edit&','192.168.0.100'),(102,'2009-11-19 13:04:41',1,'addon_modules.php','module=product_csv&action=save&','192.168.0.100'),(103,'2009-11-19 13:04:41',1,'addon_modules.php','module=product_csv&','192.168.0.100'),(104,'2009-11-19 13:04:50',1,'addon_modules.php','module=products_with_attributes_stock&','192.168.0.100'),(105,'2009-11-19 13:05:03',1,'addon_modules.php','module=products_with_attributes_stock&action=install&','192.168.0.100'),(106,'2009-11-19 13:05:03',1,'addon_modules.php','module=products_with_attributes_stock&action=edit&','192.168.0.100'),(107,'2009-11-19 13:05:13',1,'addon_modules.php','module=products_with_attributes_stock&action=save&','192.168.0.100'),(108,'2009-11-19 13:05:13',1,'addon_modules.php','module=products_with_attributes_stock&','192.168.0.100'),(109,'2009-11-19 13:05:23',1,'addon_modules.php','module=reviews&','192.168.0.100'),(110,'2009-11-19 13:05:33',1,'addon_modules.php','module=reviews&action=install&','192.168.0.100'),(111,'2009-11-19 13:05:33',1,'addon_modules.php','module=reviews&action=edit&','192.168.0.100'),(112,'2009-11-19 13:05:43',1,'addon_modules.php','module=reviews&action=save&','192.168.0.100'),(113,'2009-11-19 13:05:43',1,'addon_modules.php','module=reviews&','192.168.0.100'),(114,'2009-11-19 13:05:53',1,'addon_modules.php','module=search_more&','192.168.0.100'),(115,'2009-11-19 13:06:01',1,'addon_modules.php','module=search_more&action=install&','192.168.0.100'),(116,'2009-11-19 13:06:02',1,'addon_modules.php','module=search_more&action=edit&','192.168.0.100'),(117,'2009-11-19 13:06:10',1,'addon_modules.php','module=search_more&action=save&','192.168.0.100'),(118,'2009-11-19 13:06:10',1,'addon_modules.php','module=search_more&','192.168.0.100'),(119,'2009-11-19 13:06:20',1,'addon_modules.php','module=visitors&','192.168.0.100'),(120,'2009-11-19 13:06:28',1,'addon_modules.php','module=visitors&action=install&','192.168.0.100'),(121,'2009-11-19 13:06:28',1,'addon_modules.php','module=visitors&action=edit&','192.168.0.100'),(122,'2009-11-19 13:06:36',1,'addon_modules.php','module=visitors&action=save&','192.168.0.100'),(123,'2009-11-19 13:06:37',1,'addon_modules.php','module=visitors&','192.168.0.100'),(124,'2009-11-19 13:09:53',1,'alt_nav.php','','192.168.0.100'),(125,'2009-11-19 13:10:03',1,'configuration.php','gID=30&','192.168.0.100'),(126,'2009-11-19 13:10:17',1,'configuration.php','gID=30&cID=482&action=edit&','192.168.0.100'),(127,'2009-11-19 13:10:24',1,'configuration.php','gID=30&cID=482&action=save&','192.168.0.100'),(128,'2009-11-19 13:10:25',1,'configuration.php','gID=30&cID=482&','192.168.0.100'),(129,'2009-11-19 13:15:00',1,'ezpages.php','','192.168.0.100'),(130,'2009-11-19 13:17:20',1,'ezpages.php','action=status_header&current=1&ezID=1&page=1&','192.168.0.100'),(131,'2009-11-19 13:17:21',1,'ezpages.php','page=1&ezID=1&','192.168.0.100'),(132,'2009-11-19 13:17:27',1,'ezpages.php','page=1&ezID=1&','192.168.0.100'),(133,'2009-11-19 13:17:41',1,'ezpages.php','page=1&ezID=1&','192.168.0.100'),(134,'2009-11-19 13:17:42',1,'ezpages.php','action=status_header&current=0&ezID=1&page=1&','192.168.0.100'),(135,'2009-11-19 13:17:43',1,'ezpages.php','page=1&ezID=1&','192.168.0.100'),(136,'2009-11-19 13:20:01',1,'addon_modules_admin.php','module=easy_design&','192.168.0.100'),(137,'2009-11-19 13:23:39',1,'addon_modules_admin.php','module=easy_design&','192.168.0.100'),(138,'2009-11-19 13:24:44',1,'addon_modules_admin.php','module=easy_design&','192.168.0.100'),(139,'2009-11-19 13:25:15',1,'addon_modules.php','','192.168.0.100'),(140,'2009-11-19 13:25:23',1,'addon_modules.php','module=aboutbox&action=edit&','192.168.0.100'),(141,'2009-11-19 13:27:38',1,'addon_modules.php','module=aboutbox&action=save&','192.168.0.100'),(142,'2009-11-19 13:27:39',1,'addon_modules.php','module=aboutbox&','192.168.0.100'),(143,'2009-11-19 13:28:20',1,'addon_modules_admin.php','module=easy_design&','192.168.0.100'),(144,'2009-11-19 13:29:52',1,'addon_modules_admin.php','module=easy_design&','192.168.0.100'),(145,'2009-11-19 13:30:52',1,'alt_nav.php','','192.168.0.100'),(146,'2009-11-19 13:30:53',1,'alt_nav.php','','192.168.0.100'),(147,'2009-11-19 13:31:12',1,'banner_manager.php','','192.168.0.100'),(148,'2009-11-19 13:31:32',1,'banner_manager.php','action=new&','192.168.0.100'),(149,'2009-11-19 13:33:36',1,'banner_manager.php','action=insert&','192.168.0.100'),(150,'2009-11-19 14:05:12',1,'admin.php','','192.168.0.113'),(151,'2009-11-19 14:05:14',1,'admin.php','page=1&adminID=1&action=resetpassword&','192.168.0.113'),(152,'2009-11-19 14:05:19',1,'admin.php','page=1&adminID=1&action=reset&','192.168.0.113'),(153,'2009-11-19 14:05:19',1,'admin.php','page=1&adminID=1&','192.168.0.113'),(154,'2009-11-19 14:05:23',1,'logoff.php','','192.168.0.113'),(155,'2009-11-19 16:22:52',1,'alt_nav.php','','192.168.0.100'),(156,'2009-11-19 16:23:15',1,'addon_modules_admin.php','module=products_with_attributes_stock&','192.168.0.100'),(157,'2009-11-19 16:24:11',1,'addon_modules_admin.php','module=products_with_attributes_stock&action=add&products_id=90&','192.168.0.100'),(158,'2009-11-19 16:25:11',1,'addon_modules_admin.php','module=products_with_attributes_stock&action=confirm&','192.168.0.100'),(159,'2009-11-19 16:25:11',1,'addon_modules_admin.php','module=products_with_attributes_stock&products_id=90&quantity=11&skumodel=%A3%D7%A3%B5%A3%B0%A3%B0&attributes=319&add_edit=add&action=execute&','192.168.0.100'),(160,'2009-11-19 16:25:11',1,'addon_modules_admin.php','module=products_with_attributes_stock&','192.168.0.100'),(161,'2009-11-19 16:25:54',1,'addon_modules_admin.php','module=products_with_attributes_stock&action=edit&products_id=90&stock_id=1&','192.168.0.100'),(162,'2009-11-19 16:26:50',1,'addon_modules_admin.php','module=products_with_attributes_stock&','192.168.0.100'),(163,'2009-11-19 18:24:58',1,'modules.php','set=ordertotal&','192.168.0.100'),(164,'2009-11-19 18:25:05',1,'modules.php','set=ordertotal&module=ot_addpoint&action=install&','192.168.0.100'),(165,'2009-11-19 18:25:05',1,'modules.php','set=ordertotal&module=ot_addpoint&','192.168.0.100'),(166,'2009-11-19 18:25:15',1,'modules.php','set=ordertotal&module=ot_addpoint&action=install&','192.168.0.100'),(167,'2009-11-19 18:25:16',1,'modules.php','set=ordertotal&module=ot_addpoint&','192.168.0.100'),(168,'2009-11-19 18:25:27',1,'addon_modules.php','','192.168.0.100'),(169,'2009-11-19 18:25:35',1,'addon_modules.php','module=point_base&','192.168.0.100'),(170,'2009-11-19 18:25:40',1,'addon_modules.php','module=point_base&action=install&','192.168.0.100'),(171,'2009-11-19 18:25:41',1,'addon_modules.php','module=point_base&action=edit&','192.168.0.100'),(172,'2009-11-19 18:25:49',1,'addon_modules.php','module=point_base&action=save&','192.168.0.100'),(173,'2009-11-19 18:25:49',1,'addon_modules.php','module=point_base&','192.168.0.100'),(174,'2009-11-19 18:25:54',1,'modules.php','set=ordertotal&module=ot_addpoint&action=install&','192.168.0.100'),(175,'2009-11-19 18:25:54',1,'modules.php','set=ordertotal&module=ot_addpoint&action=edit&','192.168.0.100'),(176,'2009-11-19 18:26:02',1,'modules.php','set=ordertotal&module=ot_addpoint&action=save&','192.168.0.100'),(177,'2009-11-19 18:26:02',1,'modules.php','set=ordertotal&module=ot_addpoint&','192.168.0.100'),(178,'2009-11-19 18:26:06',1,'modules.php','set=ordertotal&module=ot_subpoint&','192.168.0.100'),(179,'2009-11-19 18:26:12',1,'modules.php','set=ordertotal&module=ot_subpoint&action=install&','192.168.0.100'),(180,'2009-11-19 18:26:12',1,'modules.php','set=ordertotal&module=ot_subpoint&action=edit&','192.168.0.100'),(181,'2009-11-19 18:26:20',1,'modules.php','set=ordertotal&module=ot_subpoint&action=save&','192.168.0.100'),(182,'2009-11-19 18:26:20',1,'modules.php','set=ordertotal&module=ot_subpoint&','192.168.0.100'),(183,'2009-11-19 18:26:37',1,'addon_modules_admin.php','module=addon_modules/blocks&','192.168.0.100'),(184,'2009-11-19 18:27:16',1,'addon_modules_admin.php','module=addon_modules/blocks&page=&bID=178&action=edit&','192.168.0.100'),(185,'2009-11-19 18:27:47',1,'addon_modules_admin.php','module=addon_modules/blocks&page=&bID=178&action=save&block=block&','192.168.0.100'),(186,'2009-11-19 18:27:48',1,'addon_modules_admin.php','module=addon_modules/blocks&page=&bID=178&','192.168.0.100'),(187,'2009-11-19 18:55:40',1,'addon_modules.php','','192.168.0.100'),(188,'2009-11-19 18:56:01',1,'addon_modules.php','module=point_createaccount&','192.168.0.100'),(189,'2009-11-19 18:56:07',1,'addon_modules.php','module=point_createaccount&action=install&','192.168.0.100'),(190,'2009-11-19 18:56:08',1,'addon_modules.php','module=point_createaccount&action=edit&','192.168.0.100'),(191,'2009-11-19 18:56:16',1,'addon_modules.php','module=point_createaccount&action=save&','192.168.0.100'),(192,'2009-11-19 18:56:16',1,'addon_modules.php','module=point_createaccount&','192.168.0.100'),(193,'2009-11-19 18:56:23',1,'addon_modules.php','module=point_customersrate&','192.168.0.100'),(194,'2009-11-19 18:56:29',1,'addon_modules.php','module=point_customersrate&action=install&','192.168.0.100'),(195,'2009-11-19 18:56:29',1,'addon_modules.php','module=point_customersrate&action=edit&','192.168.0.100'),(196,'2009-11-19 18:56:37',1,'addon_modules.php','module=point_customersrate&action=save&','192.168.0.100'),(197,'2009-11-19 18:56:38',1,'addon_modules.php','module=point_customersrate&','192.168.0.100'),(198,'2009-11-19 18:56:45',1,'addon_modules.php','module=point_grouprate&','192.168.0.100'),(199,'2009-11-19 18:56:53',1,'addon_modules.php','module=point_grouprate&action=install&','192.168.0.100'),(200,'2009-11-19 18:56:53',1,'addon_modules.php','module=point_grouprate&action=edit&','192.168.0.100'),(201,'2009-11-19 18:57:07',1,'addon_modules.php','module=point_grouprate&action=save&','192.168.0.100'),(202,'2009-11-19 18:57:08',1,'addon_modules.php','module=point_grouprate&','192.168.0.100'),(203,'2009-11-19 18:57:14',1,'addon_modules.php','module=point_productsrate&','192.168.0.100'),(204,'2009-11-19 18:57:27',1,'addon_modules.php','module=point_productsrate&action=install&','192.168.0.100'),(205,'2009-11-19 18:57:28',1,'addon_modules.php','module=point_productsrate&action=edit&','192.168.0.100'),(206,'2009-11-19 18:57:36',1,'addon_modules.php','module=point_productsrate&action=save&','192.168.0.100'),(207,'2009-11-19 18:57:36',1,'addon_modules.php','module=point_productsrate&','192.168.0.100'),(208,'2009-11-19 19:01:57',1,'addon_modules_admin.php','module=addon_modules/blocks&','192.168.0.100'),(209,'2009-11-19 19:06:57',1,'alt_nav.php','','192.168.0.100'),(210,'2009-11-19 19:07:02',1,'alt_nav.php','','192.168.0.100'),(211,'2009-11-19 19:07:19',1,'layout_controller.php','','192.168.0.100'),(212,'2009-11-19 19:07:42',1,'layout_controller.php','page=&cID=98&template_dir=sugudeki&layout_page=&','192.168.0.100'),(213,'2009-11-19 19:07:48',1,'layout_controller.php','page=&cID=98&action=edit&template_dir=sugudeki&layout_page=&','192.168.0.100'),(214,'2009-11-19 19:08:13',1,'layout_controller.php','page=&cID=98&action=save&layout_box_name=shopping_cart.php&template_dir=sugudeki&layout_page=&','192.168.0.100'),(215,'2009-11-19 19:08:13',1,'layout_controller.php','page=&cID=98&template_dir=sugudeki&layout_page=&','192.168.0.100'),(216,'2009-11-19 19:08:23',1,'addon_modules_admin.php','module=addon_modules/blocks&','192.168.0.100'),(217,'2009-11-19 19:11:19',1,'addon_modules_admin.php','module=addon_modules/blocks&page=&bID=&action=save_all&','192.168.0.100'),(218,'2009-11-19 19:11:19',1,'addon_modules_admin.php','module=addon_modules/blocks&page=&bID=&','192.168.0.100'),(219,'2009-11-19 19:16:52',1,'layout_controller.php','','192.168.0.100'),(220,'2009-11-19 19:16:53',1,'layout_controller.php','','192.168.0.100'),(221,'2009-11-19 19:16:55',1,'layout_controller.php','','192.168.0.100'),(222,'2009-11-19 19:17:10',1,'layout_controller.php','page=&cID=98&template_dir=sugudeki&layout_page=&','192.168.0.100'),(223,'2009-11-19 19:17:11',1,'layout_controller.php','page=&cID=98&action=edit&template_dir=sugudeki&layout_page=&','192.168.0.100'),(224,'2009-11-19 19:17:26',1,'layout_controller.php','page=&cID=98&action=save&layout_box_name=shopping_cart.php&template_dir=sugudeki&layout_page=&','192.168.0.100'),(225,'2009-11-19 19:17:27',1,'layout_controller.php','page=&cID=98&template_dir=sugudeki&layout_page=&','192.168.0.100'),(226,'2009-11-19 19:36:45',1,'addon_modules.php','','192.168.0.115'),(227,'2009-11-19 19:37:29',1,'addon_modules.php','','192.168.0.115'),(228,'2009-11-19 19:37:33',1,'addon_modules.php','module=shopping_cart_summary&','192.168.0.115'),(229,'2009-11-19 19:37:35',1,'addon_modules.php','module=shopping_cart_summary&action=install&','192.168.0.115'),(230,'2009-11-19 19:37:35',1,'addon_modules.php','module=shopping_cart_summary&action=edit&','192.168.0.115'),(231,'2009-11-19 19:37:38',1,'addon_modules.php','module=shopping_cart_summary&action=save&','192.168.0.115'),(232,'2009-11-19 19:37:38',1,'addon_modules.php','module=shopping_cart_summary&','192.168.0.115'),(233,'2009-11-19 19:37:51',1,'addon_modules_admin.php','module=addon_modules/blocks&','192.168.0.115'),(234,'2009-11-19 19:38:14',1,'addon_modules_admin.php','module=addon_modules/blocks&page=&bID=&action=save_all&','192.168.0.115'),(235,'2009-11-19 19:38:14',1,'addon_modules_admin.php','module=addon_modules/blocks&page=&bID=&','192.168.0.115');
/*!40000 ALTER TABLE `admin_activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorizenet`
--

DROP TABLE IF EXISTS `authorizenet`;
CREATE TABLE `authorizenet` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL default '0',
  `order_id` int(11) NOT NULL default '0',
  `response_code` int(1) NOT NULL default '0',
  `response_text` varchar(255) NOT NULL default '',
  `authorization_type` text NOT NULL,
  `transaction_id` int(15) NOT NULL default '0',
  `sent` longtext NOT NULL,
  `received` longtext NOT NULL,
  `time` varchar(50) NOT NULL default '',
  `session_id` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_auth_net_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `authorizenet`
--

LOCK TABLES `authorizenet` WRITE;
/*!40000 ALTER TABLE `authorizenet` DISABLE KEYS */;
/*!40000 ALTER TABLE `authorizenet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL auto_increment,
  `banners_title` varchar(64) NOT NULL default '',
  `banners_url` varchar(255) NOT NULL default '',
  `banners_image` varchar(64) NOT NULL default '',
  `banners_group` varchar(15) NOT NULL default '',
  `banners_html_text` text,
  `expires_impressions` int(7) default '0',
  `expires_date` datetime default NULL,
  `date_scheduled` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `banners_open_new_windows` int(1) NOT NULL default '1',
  `banners_on_ssl` int(1) NOT NULL default '1',
  `banners_sort_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`banners_id`),
  KEY `idx_status_group_zen` (`status`,`banners_group`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'Zen Cart','http://www.zen-cart.com','banners/zencart_468_60_02.gif','Wide-Banners','',0,NULL,NULL,'2004-01-11 20:59:12',NULL,1,1,1,0),(2,'Zen Cart the art of e-commerce','http://www.zen-cart.com','banners/125zen_logo.gif','SideBox-Banners','',0,NULL,NULL,'2004-01-11 20:59:12',NULL,1,1,1,0),(3,'Zen Cart the art of e-commerce','http://www.zen-cart.com','banners/125x125_zen_logo.gif','SideBox-Banners','',0,NULL,NULL,'2004-01-11 20:59:12',NULL,1,1,1,0),(4,'if you have to think ... you haven\'t been Zenned!','http://www.zen-cart.com','banners/think_anim.gif','Wide-Banners','',0,NULL,NULL,'2004-01-12 20:53:18',NULL,1,1,1,0),(5,'Sashbox.net - the ultimate e-commerce hosting solution','http://www.sashbox.net/zencart/','banners/sashbox_125x50.jpg','BannersAll','',0,NULL,NULL,'2005-05-13 10:53:50',NULL,1,1,1,20),(6,'Zen Cart the art of e-commerce','http://www.zen-cart.com','banners/bw_zen_88wide.gif','BannersAll','',0,NULL,NULL,'2005-05-13 10:54:38',NULL,1,1,1,10),(7,'Sashbox.net - the ultimate e-commerce hosting solution','http://www.sashbox.net/zencart/','banners/sashbox_468x60.jpg','Wide-Banners','',0,NULL,NULL,'2005-05-13 10:55:11',NULL,1,1,1,0),(8,'Start Accepting Credit Cards For Your Business Today!','http://www.zen-cart.com/modules/freecontent/index.php?id=29','banners/cardsvcs_468x60.gif','Wide-Banners','',0,NULL,NULL,'2006-03-13 11:02:43',NULL,1,1,1,0);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners_history`
--

DROP TABLE IF EXISTS `banners_history`;
CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL auto_increment,
  `banners_id` int(11) NOT NULL default '0',
  `banners_shown` int(5) NOT NULL default '0',
  `banners_clicked` int(5) NOT NULL default '0',
  `banners_history_date` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`banners_history_id`),
  KEY `idx_banners_id_zen` (`banners_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `banners_history`
--

LOCK TABLES `banners_history` WRITE;
/*!40000 ALTER TABLE `banners_history` DISABLE KEYS */;
INSERT INTO `banners_history` VALUES (1,6,29,0,'2009-11-19 12:50:05'),(2,5,29,0,'2009-11-19 12:50:05');
/*!40000 ALTER TABLE `banners_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
CREATE TABLE `blocks` (
  `id` int(11) NOT NULL auto_increment,
  `module` varchar(64) NOT NULL default '',
  `block` varchar(64) NOT NULL default '',
  `template` varchar(64) NOT NULL default '',
  `status` tinyint(1) NOT NULL default '0',
  `location` varchar(64) NOT NULL default '',
  `sort_order` int(11) NOT NULL default '0',
  `visible` tinyint(1) NOT NULL default '0',
  `pages` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `UNQ_module_block_template` (`module`,`block`,`template`),
  KEY `IDX_module_template_status_location_sort_order` (`module`,`template`,`status`,`location`,`sort_order`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'sideboxes','banner_box.php','classic',0,'',0,0,''),(2,'sideboxes','banner_box2.php','classic',0,'',0,0,''),(3,'sideboxes','banner_box_all.php','classic',0,'',0,0,''),(4,'sideboxes','best_sellers.php','classic',0,'',0,0,''),(5,'sideboxes','categories.php','classic',0,'',0,0,''),(6,'sideboxes','currencies.php','classic',0,'',0,0,''),(7,'sideboxes','document_categories.php','classic',0,'',0,0,''),(8,'sideboxes','ezpages.php','classic',0,'',0,0,''),(9,'sideboxes','featured.php','classic',0,'',0,0,''),(10,'sideboxes','information.php','classic',0,'',0,0,''),(11,'sideboxes','languages.php','classic',0,'',0,0,''),(12,'sideboxes','manufacturer_info.php','classic',0,'',0,0,''),(13,'sideboxes','manufacturers.php','classic',0,'',0,0,''),(14,'sideboxes','more_information.php','classic',0,'',0,0,''),(15,'sideboxes','music_genres.php','classic',0,'',0,0,''),(16,'sideboxes','order_history.php','classic',0,'',0,0,''),(17,'sideboxes','product_notifications.php','classic',0,'',0,0,''),(18,'sideboxes','record_companies.php','classic',0,'',0,0,''),(19,'sideboxes','reviews.php','classic',0,'',0,0,''),(20,'sideboxes','search.php','classic',0,'',0,0,''),(21,'sideboxes','search_header.php','classic',0,'',0,0,''),(22,'sideboxes','shopping_cart.php','classic',0,'',0,0,''),(23,'sideboxes','specials.php','classic',0,'',0,0,''),(24,'sideboxes','tell_a_friend.php','classic',0,'',0,0,''),(25,'sideboxes','whats_new.php','classic',0,'',0,0,''),(26,'sideboxes','whos_online.php','classic',0,'',0,0,''),(28,'globalnavi','block','classic',0,'',0,0,''),(29,'sideboxes','banner_box.php','addon_modules',0,'',0,0,''),(30,'sideboxes','banner_box2.php','addon_modules',0,'',0,0,''),(31,'sideboxes','banner_box_all.php','addon_modules',0,'',0,0,''),(32,'sideboxes','best_sellers.php','addon_modules',0,'',0,0,''),(33,'sideboxes','categories.php','addon_modules',0,'',0,0,''),(34,'sideboxes','currencies.php','addon_modules',0,'',0,0,''),(35,'sideboxes','document_categories.php','addon_modules',0,'',0,0,''),(36,'sideboxes','ezpages.php','addon_modules',0,'',0,0,''),(37,'sideboxes','featured.php','addon_modules',0,'',0,0,''),(38,'sideboxes','information.php','addon_modules',0,'',0,0,''),(39,'sideboxes','languages.php','addon_modules',0,'',0,0,''),(40,'sideboxes','manufacturer_info.php','addon_modules',0,'',0,0,''),(41,'sideboxes','manufacturers.php','addon_modules',0,'',0,0,''),(42,'sideboxes','more_information.php','addon_modules',0,'',0,0,''),(43,'sideboxes','music_genres.php','addon_modules',0,'',0,0,''),(44,'sideboxes','order_history.php','addon_modules',0,'',0,0,''),(45,'sideboxes','product_notifications.php','addon_modules',0,'',0,0,''),(46,'sideboxes','record_companies.php','addon_modules',0,'',0,0,''),(47,'sideboxes','reviews.php','addon_modules',0,'',0,0,''),(48,'sideboxes','search.php','addon_modules',0,'',0,0,''),(49,'sideboxes','search_header.php','addon_modules',0,'',0,0,''),(50,'sideboxes','shopping_cart.php','addon_modules',0,'',0,0,''),(51,'sideboxes','specials.php','addon_modules',0,'',0,0,''),(52,'sideboxes','tell_a_friend.php','addon_modules',0,'',0,0,''),(53,'sideboxes','whats_new.php','addon_modules',0,'',0,0,''),(54,'sideboxes','whos_online.php','addon_modules',0,'',0,0,''),(55,'globalnavi','block','addon_modules',0,'',0,0,''),(70,'carousel_ui','block_featured_products','addon_modules',0,'',0,0,''),(71,'carousel_ui','block_specials_products','addon_modules',0,'',0,0,''),(72,'carousel_ui','block_also_purchased_products','addon_modules',0,'',0,0,''),(73,'carousel_ui','block_xsell_products','addon_modules',0,'',0,0,''),(61,'multiple_image_view','block','addon_modules',0,'',0,1,'product_free_shipping_info\nproduct_info\nproduct_music_info'),(62,'multiple_image_view','block_expd','addon_modules',0,'',0,0,''),(63,'multiple_image_view','block_thmb','addon_modules',0,'',0,0,''),(81,'search_more','block_sort','addon_modules',0,'',0,0,''),(80,'search_more','block_par_page','addon_modules',0,'',0,0,''),(69,'carousel_ui','block_new_products','addon_modules',0,'',0,0,''),(79,'search_more','block_search_form','addon_modules',0,'',0,0,''),(78,'search_more','block','addon_modules',0,'',0,0,''),(82,'sideboxes','banner_box.php','accessible_and_usable',0,'',0,0,''),(83,'sideboxes','banner_box2.php','accessible_and_usable',0,'',0,0,''),(84,'sideboxes','banner_box_all.php','accessible_and_usable',0,'',0,0,''),(85,'sideboxes','best_sellers.php','accessible_and_usable',0,'',0,0,''),(86,'sideboxes','categories.php','accessible_and_usable',0,'',0,0,''),(87,'sideboxes','currencies.php','accessible_and_usable',0,'',0,0,''),(88,'sideboxes','document_categories.php','accessible_and_usable',0,'',0,0,''),(89,'sideboxes','ezpages.php','accessible_and_usable',0,'',0,0,''),(90,'sideboxes','featured.php','accessible_and_usable',0,'',0,0,''),(91,'sideboxes','information.php','accessible_and_usable',0,'',0,0,''),(92,'sideboxes','languages.php','accessible_and_usable',0,'',0,0,''),(93,'sideboxes','manufacturer_info.php','accessible_and_usable',0,'',0,0,''),(94,'sideboxes','manufacturers.php','accessible_and_usable',0,'',0,0,''),(95,'sideboxes','more_information.php','accessible_and_usable',0,'',0,0,''),(96,'sideboxes','music_genres.php','accessible_and_usable',0,'',0,0,''),(97,'sideboxes','order_history.php','accessible_and_usable',0,'',0,0,''),(98,'sideboxes','product_notifications.php','accessible_and_usable',0,'',0,0,''),(99,'sideboxes','record_companies.php','accessible_and_usable',0,'',0,0,''),(100,'sideboxes','reviews.php','accessible_and_usable',0,'',0,0,''),(101,'sideboxes','search.php','accessible_and_usable',0,'',0,0,''),(102,'sideboxes','search_header.php','accessible_and_usable',0,'',0,0,''),(103,'sideboxes','shopping_cart.php','accessible_and_usable',0,'',0,0,''),(104,'sideboxes','specials.php','accessible_and_usable',0,'',0,0,''),(105,'sideboxes','tell_a_friend.php','accessible_and_usable',0,'',0,0,''),(106,'sideboxes','whats_new.php','accessible_and_usable',0,'',0,0,''),(107,'sideboxes','whos_online.php','accessible_and_usable',0,'',0,0,''),(108,'carousel_ui','block_new_products','accessible_and_usable',0,'',0,0,''),(109,'carousel_ui','block_featured_products','accessible_and_usable',0,'',0,0,''),(110,'carousel_ui','block_specials_products','accessible_and_usable',0,'',0,0,''),(111,'carousel_ui','block_also_purchased_products','accessible_and_usable',0,'',0,0,''),(112,'carousel_ui','block_xsell_products','accessible_and_usable',0,'',0,0,''),(113,'globalnavi','block','accessible_and_usable',0,'',0,0,''),(114,'multiple_image_view','block','accessible_and_usable',0,'',0,0,''),(115,'multiple_image_view','block_expd','accessible_and_usable',0,'',0,0,''),(116,'multiple_image_view','block_thmb','accessible_and_usable',0,'',0,0,''),(117,'search_more','block','accessible_and_usable',1,'main_bottom',0,0,''),(118,'search_more','block_search_form','accessible_and_usable',0,'',0,0,''),(119,'search_more','block_par_page','accessible_and_usable',0,'',0,0,''),(120,'search_more','block_sort','accessible_and_usable',0,'',0,0,''),(121,'sideboxes','banner_box.php','sugudeki',0,'',0,0,''),(122,'sideboxes','banner_box2.php','sugudeki',0,'',0,0,''),(123,'sideboxes','banner_box_all.php','sugudeki',1,'sidebar_left',2,0,'checkout_confirmation\ncheckout_payment\ncheckout_payment_address\ncheckout_shipping\ncheckout_shipping_address\ncheckout_success\ncreate_account\ncreate_account_success\nlogin\nlogoff\npassword_forgotten\nshopping_cart\nvisitors#page_create_visitor\nvisitors#page_visitor_edit\nvisitors#page_visitor_to_account'),(124,'sideboxes','best_sellers.php','sugudeki',1,'sidebar_right',0,1,'index'),(125,'sideboxes','categories.php','sugudeki',0,'',0,0,''),(126,'sideboxes','currencies.php','sugudeki',0,'',0,0,''),(127,'sideboxes','document_categories.php','sugudeki',0,'',0,0,''),(128,'sideboxes','ezpages.php','sugudeki',0,'',0,0,''),(129,'sideboxes','featured.php','sugudeki',0,'',0,0,''),(130,'sideboxes','information.php','sugudeki',0,'',0,0,''),(131,'sideboxes','languages.php','sugudeki',0,'',0,0,''),(132,'sideboxes','manufacturer_info.php','sugudeki',0,'',0,0,''),(133,'sideboxes','manufacturers.php','sugudeki',0,'',0,0,''),(134,'sideboxes','more_information.php','sugudeki',0,'',0,0,''),(135,'sideboxes','music_genres.php','sugudeki',0,'',0,0,''),(136,'sideboxes','order_history.php','sugudeki',0,'',0,0,''),(137,'sideboxes','product_notifications.php','sugudeki',0,'',0,0,''),(138,'sideboxes','record_companies.php','sugudeki',0,'',0,0,''),(139,'sideboxes','reviews.php','sugudeki',1,'main_bottom',0,1,'product_info'),(140,'sideboxes','search.php','sugudeki',1,'header',0,0,''),(141,'sideboxes','search_header.php','sugudeki',0,'',0,0,''),(142,'sideboxes','shopping_cart.php','sugudeki',0,'',1,0,''),(143,'sideboxes','specials.php','sugudeki',0,'',0,0,''),(144,'sideboxes','tell_a_friend.php','sugudeki',0,'',0,0,''),(145,'sideboxes','whats_new.php','sugudeki',0,'',0,0,''),(146,'sideboxes','whos_online.php','sugudeki',0,'',0,0,''),(147,'aboutbox','block','sugudeki',1,'footer',1,0,''),(148,'ajax_category_tree','block','sugudeki',1,'sidebar_left',0,0,'checkout_confirmation\ncheckout_payment\ncheckout_payment_address\ncheckout_shipping\ncheckout_shipping_address\ncheckout_success\ncreate_account\ncreate_account_success\nlogin\nlogoff\npassword_forgotten\nshopping_cart\nvisitors#page_create_visitor\nvisitors#page_visitor_edit\nvisitors#page_visitor_to_account'),(149,'calendar','block','sugudeki',0,'',0,0,''),(150,'calendar','block_desired_delivery_date','sugudeki',0,'',0,0,''),(151,'calendar','block_desired_delivery_time','sugudeki',0,'',0,0,''),(152,'calendar','block_delivery_info','sugudeki',0,'',0,0,''),(153,'carousel_ui','block_new_products','sugudeki',0,'',0,0,''),(154,'carousel_ui','block_featured_products','sugudeki',0,'',0,0,''),(155,'carousel_ui','block_specials_products','sugudeki',0,'',0,0,''),(156,'carousel_ui','block_also_purchased_products','sugudeki',1,'main_bottom',1,1,'product_info'),(157,'carousel_ui','block_xsell_products','sugudeki',1,'main_bottom',2,1,'product_info'),(158,'easy_admin','block','sugudeki',0,'',0,0,''),(159,'easy_admin','block_right_top_menu','sugudeki',0,'',0,0,''),(160,'easy_admin','block_dropdown_menu','sugudeki',0,'',0,0,''),(162,'globalnavi','block','sugudeki',0,'',0,0,''),(163,'multiple_image_view','block','sugudeki',0,'',0,0,''),(164,'multiple_image_view','block_expd','sugudeki',0,'',0,0,''),(165,'multiple_image_view','block_thmb','sugudeki',0,'',0,0,''),(166,'search_more','block','sugudeki',0,'',0,0,''),(167,'search_more','block_search_form','sugudeki',0,'',0,0,''),(168,'search_more','block_par_page','sugudeki',0,'',0,0,''),(169,'search_more','block_sort','sugudeki',0,'',0,0,''),(170,'category_sitemap','block','sugudeki',1,'footer',0,0,''),(171,'checkout_step','block','sugudeki',1,'main_top',0,1,'checkout_confirmation\ncheckout_payment\ncheckout_payment_address\ncheckout_shipping\ncheckout_shipping_address\ncheckout_success'),(172,'easy_design','block','sugudeki',0,'',0,0,''),(173,'products_with_attributes_stock','block','sugudeki',0,'',0,0,''),(174,'reviews','block','sugudeki',0,'',0,0,''),(175,'feature_area','block','sugudeki',0,'',0,0,''),(176,'blog','block','sugudeki',0,'',0,0,''),(177,'easy_admin_simplify','block','sugudeki',0,'',0,0,''),(178,'point_base','block','sugudeki',1,'main_bottom',0,1,'account'),(179,'shopping_cart_summary','block','sugudeki',1,'header',2,0,'');
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL auto_increment,
  `categories_image` varchar(64) default NULL,
  `parent_id` int(11) NOT NULL default '0',
  `sort_order` int(3) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  `categories_status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`categories_id`),
  KEY `idx_parent_id_cat_id_zen` (`parent_id`,`categories_id`),
  KEY `idx_status_zen` (`categories_status`),
  KEY `idx_sort_order_zen` (`sort_order`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'',0,10,'2007-01-15 13:01:41','2007-02-01 17:33:02',1),(2,'',1,0,'2007-01-15 13:01:41','2007-02-01 17:34:46',1),(3,'',0,20,'2007-01-15 13:10:03','2007-02-01 17:33:18',1),(4,'',3,0,'2007-01-15 13:10:03','2007-02-01 17:35:48',1),(5,'',1,0,'2007-01-15 13:10:04','2007-02-01 17:34:55',1),(6,'',0,30,'2007-01-15 13:10:04','2007-02-01 17:33:37',1),(7,'',6,0,'2007-01-15 13:10:04','2007-02-01 17:36:37',1),(8,'',3,0,'2007-01-15 13:10:04','2007-02-01 17:36:05',1),(9,'',3,0,'2007-01-15 13:10:04','2007-02-01 17:35:38',1),(10,'',6,0,'2007-01-15 13:10:04','2007-02-01 17:36:49',1),(11,'',3,0,'2007-01-15 13:10:04','2007-02-01 17:35:56',1),(12,'',3,0,'2007-01-15 13:10:04','2007-02-01 17:35:22',1),(13,'',3,0,'2007-01-15 13:10:04','2007-02-01 17:35:30',1),(14,'',3,0,'2007-01-15 13:10:04','2007-02-01 17:35:14',1),(15,'',1,0,'2007-01-15 13:10:04','2007-02-01 17:34:37',1),(16,'',1,0,'2007-01-15 13:10:04','2007-02-01 17:34:25',1),(17,'',6,0,'2007-01-15 13:10:04','2007-02-01 17:36:28',1),(96,NULL,94,20,'2007-01-26 03:33:54',NULL,1),(27,NULL,25,20,'2007-01-16 00:24:50','2007-01-26 03:31:06',1),(20,'',0,190,'2007-01-15 13:10:05','2007-02-01 17:38:10',1),(21,'',0,100,'2007-01-15 13:15:14','2007-02-01 17:37:40',1),(22,'',0,110,'2007-01-15 13:15:17','2007-02-01 17:37:55',1),(26,NULL,25,10,'2007-01-16 00:24:31','2007-01-26 03:43:46',1),(23,'',0,40,'2007-01-15 14:10:00','2007-02-01 17:37:13',1),(25,NULL,0,9000,'2007-01-16 00:22:56','2007-01-26 03:31:59',1),(29,NULL,26,10,'2007-01-16 00:25:31','2007-01-26 03:34:26',1),(30,NULL,26,20,'2007-01-16 00:25:46','2007-01-26 03:34:33',1),(31,NULL,26,30,'2007-01-16 00:26:06','2007-01-26 03:34:44',1),(94,NULL,25,30,'2007-01-26 03:29:40','2007-01-26 03:45:01',1),(95,NULL,94,10,'2007-01-26 03:32:51','2007-01-26 03:33:32',1),(45,'',84,100,'2007-01-16 19:27:32','2007-01-24 17:11:06',1),(41,'',0,400,'2007-01-16 15:11:23','2007-01-19 01:41:40',1),(40,'categories/category_free.gif',0,300,'2007-01-16 15:03:58','2007-02-01 17:41:21',1),(70,'',66,100,'2007-01-18 14:08:42','2007-01-18 14:40:49',1),(68,'',66,210,'2007-01-18 14:08:42','2007-01-18 14:19:31',1),(69,'',66,220,'2007-01-18 14:08:42','2007-01-18 14:19:51',1),(67,'',66,200,'2007-01-18 14:08:42','2007-01-18 15:28:46',1),(66,'',0,1000,'2007-01-18 14:08:42','2007-01-19 00:29:36',1),(61,'',59,0,'2007-01-17 15:20:31','2007-02-01 17:39:54',1),(62,'',59,0,'2007-01-17 15:20:31','2007-02-01 17:39:08',1),(63,'',59,0,'2007-01-17 15:20:31','2007-02-01 17:39:33',1),(64,NULL,66,10000,'2007-01-17 18:06:48','2007-01-19 00:25:42',1),(60,'',59,0,'2007-01-17 15:20:31','2007-02-01 17:40:03',1),(59,'',0,200,'2007-01-17 15:20:31','2007-02-01 17:38:41',1),(58,NULL,99,10000,'2007-01-16 21:31:45','2007-01-26 18:10:30',1),(71,'',66,700,'2007-01-18 14:08:42','2007-01-19 00:03:55',1),(72,'',66,1000,'2007-01-18 14:11:14','2007-01-19 00:05:31',1),(73,'',66,500,'2007-01-18 14:11:14','2007-01-18 14:18:33',1),(74,'',66,510,'2007-01-18 14:11:14','2007-01-18 14:18:39',1),(75,'',66,520,'2007-01-18 14:13:02','2007-01-18 14:18:46',1),(76,NULL,77,10,'2007-01-18 17:10:12','2007-01-23 00:59:03',1),(77,NULL,0,1200,'2007-01-18 17:40:48','2007-01-26 16:30:14',1),(78,NULL,77,20,'2007-01-18 17:45:38','2007-01-23 23:49:43',1),(79,NULL,0,500,'2007-01-19 01:25:28','2007-02-01 17:40:56',1),(80,NULL,99,3000,'2007-01-21 21:47:15','2007-01-26 18:15:51',1),(81,NULL,99,4000,'2007-01-23 10:24:53','2007-01-26 18:10:49',1),(82,NULL,99,5000,'2007-01-23 11:44:05','2007-01-26 18:12:53',1),(83,NULL,84,200,'2007-01-24 10:06:24','2007-01-25 20:18:56',1),(84,NULL,0,1100,'2007-01-24 10:18:28',NULL,1),(85,NULL,84,300,'2007-01-24 17:09:48','2007-01-24 17:10:44',1),(86,NULL,77,30,'2007-01-24 19:31:55','2007-01-24 20:55:37',1),(87,NULL,0,1300,'2007-01-24 20:02:17','2007-01-26 16:17:44',1),(89,NULL,0,2000,'2007-01-25 20:32:45','2007-01-26 18:17:18',1),(91,NULL,0,7200,'2007-01-26 03:16:19','2007-01-26 18:03:38',1),(99,NULL,0,10000,'2007-01-26 18:10:20',NULL,1),(93,NULL,0,7400,'2007-01-26 03:22:16','2007-01-26 18:04:08',1),(98,NULL,0,7300,'2007-01-26 14:12:54','2007-01-26 18:03:49',1),(97,NULL,0,7500,'2007-01-26 11:30:57','2007-01-26 18:18:53',1),(100,NULL,0,800,'2007-01-26 18:19:30',NULL,1),(101,NULL,59,0,'2007-01-31 01:39:40','2007-02-01 17:39:44',1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_description`
--

DROP TABLE IF EXISTS `categories_description`;
CREATE TABLE `categories_description` (
  `categories_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `categories_name` varchar(32) NOT NULL default '',
  `categories_description` text NOT NULL,
  PRIMARY KEY  (`categories_id`,`language_id`),
  KEY `idx_categories_name_zen` (`categories_name`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `categories_description`
--

LOCK TABLES `categories_description` WRITE;
/*!40000 ALTER TABLE `categories_description` DISABLE KEYS */;
INSERT INTO `categories_description` VALUES (1,2,'�ԥ���ġ����','�ۥ磻�ȣԥ���ġ���ͥ������ˤǤ�'),(2,2,'��(��)',''),(3,2,'�ԥ���ġʥ��顼��','���顼�ԥ���ġ���ͥ������ˤǤ�'),(4,2,'��(���顼)',''),(5,2,'ǭ���꡼��(��)',''),(6,2,'���å�T','�Ҷ������Σԥ���ĤǤ���'),(7,2,'���襤����(for KIDS)',''),(8,2,'ǭ���꡼��(���顼)',''),(9,2,'�ɥ饴��(���顼)',''),(10,2,'�ɥ饴��(for KIDS)',''),(11,2,'�����꡼��(���顼)',''),(12,2,'���˥ޥ�(���顼)',''),(13,2,'���饹��(���顼)',''),(14,2,'��������(���顼)',''),(15,2,'���饹��(��)',''),(16,2,'���˥ޥ�(��)',''),(17,2,'��������(for KIDS)',''),(20,2,'���եȷ�','����²�䤪ͧã����Ҥ�Ʊν�˥��եȷ���£��ޤ��礦��<br /><br />\r\n\r\n���եȷ��ϥ���å���Τ��٤Ƥξ��ʹ����˻Ȥ��ޤ���<br /><br />\r\n\r\n���եȷ����������ȡ��ޤ���ʬ�Υޥ��ڡ�����˥��եȷ��Ĺ⤬�ɲä��졢���λĹ���ϰϤ�ï��¾�οͤ˰��������ɤ�£�뤳�Ȥ��Ǥ���褦�ˤʤ�ޤ���'),(21,2,'����Ϻ\'s ���쥯�ȡʥ�󥯾��ʡ�','���Υ��ƥ���ϡ֥�󥯾��ʡפΥ���ץ�Ǥ���<br />�Ĥޤꡢ�����ˤ��뾦�ʤϤ��٤�¾�Υ��ƥ���ˤ���Ͽ���졢���̤ξ��ʾ���򻲾Ȥ��Ƥ�����֤Ǥ���<br /><br />��󥯾��ʤξ��ʾ���ϡ��ɤ��餫�������Խ����������ξ����ȿ�Ǥ���ޤ���<br /><br />ʣ���Υ��ƥ���˥�󥯤��Ƥ��뾦�ʤˤϡ��־��ʥޥ��������ƥ���פ���ꤷ�Ƥ����ޤ���������㤨�Х�����ʤɾ��ʥ��ƥ�����˲�������򤹤�褦�ʾ��˻Ȥ��ޤ�����°����ޥ��������ƥ���˥��������ꤹ��ȡ����ξ��ʤ�Ŭ���оݤˤʤ�ޤ���<br /><br />\r\n\r\n<strong>ONE POINT���ڡ����󥰤ˤĤ���</strong><br />\r\n���Υ��ƥ����۲��ˤ�10�ʾ�ξ��ʤ����äƤ��ޤ���10��Ķ����ʬ�ϼ��Υڡ�����ɽ������ޤ���'),(22,2,'��Ź���ꥸ�ʥ�����󥯾��ʡ�','���Υ��ƥ���ϡ����󥯾��ʤ���Ǥ���<br/>\r\n���󥯾��ʤȤϡ��Ĥޤ�¾�ΤɤΥ��ƥ��꤫����󥯤���Ƥ��ʤ��ʤ��Υ��ƥ����۲��ˤ���¸�ߤ��ʤ��˾��ʤȤ�����̣�Ǥ���<br /><br />\r\n\r\n<strong>ONE POINT��1�ˡ��ڡ����󥰤ˤĤ���</strong><br />\r\n���Υ��ƥ����۲��ˤ�10�ʾ�ξ��ʤ����äƤ��ޤ���10��Ķ����ʬ�ϼ��Υڡ�����ɽ������ޤ���<br /><br />\r\n\r\n<strong>ONE POINT��2�ˡ����ʤ��¤ӽ�ˤĤ���</strong><br />\r\n���ʤ����������Ȥ��ϡ�����̾��ABC����������������¤Ӥޤ�����<br />\r\n������ޤྦ��̾�ϴ����̤���¤�Ǥ���ʤ���ǽ�����⤤�Ǥ���<br /><br />\r\n�⤷�����ʤ��¤ӽ������Ū��Ϳ��������С����ʾ���Ρ֥����Ƚ�פ˿����򥻥åȤ��ޤ���<br />\r\nƱ�����ƥ�����ǡ��夫��֥����Ƚ�פο���������������¤Ӥޤ���<br />\r\n���åȤ��������10��20��100�ʤ��������ӤǤ⤫�ޤ��ޤ���'),(23,2,'���ꥸ�ʥ��ɻ�','������������侦�ʤΥ���ץ�Ǥ���'),(25,1,'[1]Category(top level)',''),(25,2,'���ƥ��깽�����[1]��1���ƥ���','����ϡ����ƥ��깽�������򤹤뤿��Τ�ΤǤ���<br /><br />\r\n��������1��٥�Υ��ƥ���Ǥ���<br /><br />\r\n\r\n���Υ��ƥ���ϰʲ��Τ褦�ʥĥ꡼�����ˤʤäƤ��ޤ���<br /><br />\r\n[1]��1���ƥ���<br />\r\n����[1.1]��2���ƥ���<br />\r\n��������[1.1.1]��3���ƥ���<br />\r\n��������[1.1.2]��3���ƥ���<br />\r\n��������[1.1.3]��3���ƥ���<br />\r\n����[1.2]��2���ƥ���<br />\r\n����[1.3]��2���ƥ���(1.3)<br />\r\n��������[1.3.1]��3���ƥ���<br />\r\n��������[1.3.2]��3���ƥ���'),(95,1,'[1.3.1]Category(level3)',''),(95,2,'[1.3.1]��3���ƥ���','��3��٥�Υ��ƥ���Ǥ���<br />\r\n���Υ��ƥ���ˤϻҥ��ƥ��꤬�ʤ������줬�ǲ��̥��ƥ���Ǥ���<br />\r\n���ä��۲��ξ��ʰ�����ɽ������ޤ���'),(26,1,'[1.1]Category(level2)',''),(26,2,'[1.1]��2���ƥ���','��2��٥�Υ��ƥ���Ǥ���<br /><br />\r\n\r\n���Υ��ƥ���ˤϻҥ��ƥ��꤬¸�ߤ��ޤ���<br />\r\n���äơ����ʰ����ǤϤʤ����ҥ��ƥ���ΰ�����ɽ�����ޤ���'),(27,1,'[1.2]Category(level2)',''),(27,2,'[1.2]��2���ƥ���','��2��٥�Υ��ƥ���Ǥ���<br />\r\n���Υ��ƥ���ˤϻҥ��ƥ��꤬�ʤ������줬�ǲ��̥��ƥ���Ǥ���<br />\r\n���ä��۲��ξ��ʰ�����ɽ������ޤ���'),(96,1,'[1.3.2]Category(level3)',''),(29,1,'[1.1.1]Category(level3)',''),(29,2,'[1.1.1]��3���ƥ���','��3��٥�Υ��ƥ���Ǥ���<br />\r\n���Υ��ƥ���ˤϻҥ��ƥ��꤬�ʤ������줬�ǲ��̥��ƥ���Ǥ���<br />\r\n���ä��۲��ξ��ʰ�����ɽ������ޤ���'),(30,1,'[1.1.2]Category(level3)',''),(30,2,'[1.1.2]��3���ƥ���','��3��٥�Υ��ƥ���Ǥ���<br />\r\n���Υ��ƥ���ˤϻҥ��ƥ��꤬�ʤ������줬�ǲ��̥��ƥ���Ǥ���<br />\r\n���ä��۲��ξ��ʰ�����ɽ������ޤ���'),(31,1,'[1.1.3]Category(level3)',''),(31,2,'[1.1.3]��3���ƥ���','��3��٥�Υ��ƥ���Ǥ���<br />\r\n���Υ��ƥ���ˤϻҥ��ƥ��꤬�ʤ������줬�ǲ��̥��ƥ���Ǥ���<br />\r\n���ä��۲��ξ��ʰ�����ɽ������ޤ���'),(94,1,'[1.3]Category(level2)',''),(94,2,'[1.3]��2���ƥ���','��2��٥�Υ��ƥ���Ǥ���<br /><br />\r\n\r\n���Υ��ƥ���ˤϻҥ��ƥ��꤬¸�ߤ��ޤ���<br />\r\n���äơ����ʰ����ǤϤʤ����ҥ��ƥ���ΰ�����ɽ�����ޤ���'),(41,2,'���䤤�礻������','���ʤ��䤤�礻���ʤ���Ǥ���<br /><br />\r\n\r\n���ʤ��䤤�礻�˻��ꤷ�����ʤǤϡ��̾�ι����ʥ����������˥ܥ��������ˡ����䤤�礻�ե�����ؤΥ�󥯤�ɽ������ޤ���<br /><br />�ܵҤ�ô���Դ֤Ǥθ����Ǥ���碌��Ϥ���ǲ�����᤿�����ʤ䡢�������Ѥ�꤬ɬ�פʥ���ե��ʤɤΥ������˻Ȥ��ޤ���'),(40,2,'̵������ץ��ʤ���','����ץ뾦�ʤ��󶡤ʤɲ���̵�����ʤγƼ�������Ǥ���̵�����������ץ쥼��Ⱦ��ʤ��󶡤ʤɤ�����ʱ��ѥ����󤬹ͤ����ޤ���<br /><br />\r\n\r\n���β��ʤ�ɽ�����Ĥ�̵�������뤳�Ȥ䡢���β��ʤ�̵����������Υ��ץ���������ͭ���Ȥ���ʤɺ٤������꤬��ǽ�Ǥ����ޤ���������Ʊ����̵���ˤ����ꡢȿ�Ф���������ͭ���Ȥ��뤳�Ȥ��ǽ�Ǥ���'),(58,1,'SEO(META, Title..)',''),(58,2,'SEO��META������������','SEO�к��ΰ�ĤȤ��ơ�Zen Cart�Ǥ�META������title����������Ū�����ꤹ�뤳�Ȥ��Ǥ��ޤ���<br /><br />\r\n\r\n���Υ��ƥ�����Ф��ơ��ʲ��Τ褦�����ꤷ�ޤ�����<br />\r\n�֥饦���Ρ֥�������ɽ���פǡ����Υڡ�����HTML��������<head>��</head>��ʬ���ǧ���ƤߤƤ���������<br /><br />\r\n\r\n\r\n�������⡧META��<br />\r\n��title��<br />\r\n�����֤��Υ��ƥ���ˤ�����Ū��title���������ꤷ�ޤ�������<br /><br />\r\n��META��keyword�ˡ�<br />\r\n�����֤��Υ��ƥ���ˤ�����Ū��META��keyword�ˤ����ꤷ�Ƥ��ޤ�,�������1,�������2,�������3��<br /><br />\r\n\r\n��META��description�ˡ�<br />\r\n�����֤��Υ��ƥ���ˤ�����Ū��META��description�ˤ����ꤷ�Ƥ��ޤ���Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus sit amet velit��������<br />'),(45,2,'�ڴ��ܡ۾��ʤ��Ф�����̳������','�����Ǥϡ�������ܥ�塼��ǥ���������Ȥ�������򽸤�ޤ�����'),(63,2,'DROPDOWN��RADIO������',''),(59,2,'���ʥ��ץ����γƼ勵����','���ʥ��ץ����°����������򡢥��ץ����Υ������̤��㼨���ޤ���'),(60,2,'TEXT������',''),(61,2,'READONLY������',''),(62,2,'CHCKBOX������',''),(64,1,'(temporary)',''),(64,2,'�����ʥ��ץ���������������','�����Υ��ƥ���ϡ�¾�ε�ǽ�������ƥ�����ǥ�����Ŭ�Ѿ��ʤ��㼨���뤿���ߤ������ߡ����ƥ���Ǥ���<br />\r\n�����Υ��ƥ��꼫�ΤˤϤ��ޤ��̣������ޤ���'),(66,2,'��������ò�','���Υ��ƥ���ϡ�\r\nZen Cart�����Ĥ��ޤ��ޤʳ����ǽ����ǥᥤ��ǽ�Ȥ⤤������ò��פȡ֥�����פˤĤ�������򿼤�뤿��Υ���ץ뽸�Ǥ���<br /><br />\r\n\r\n\r\n<strong>NOTE��</strong> �ò��ȥ�����ΰ㤤<br />\r\n�ò��ϡ�����ñ�̤������ǽ�ʳ����ǽ�Ǥ���<br />\r\n������Ф��ƥ�����ϡ����ƥ���ñ�̤������ǽ�ʳ����ǽ�Ǥ���<br />\r\n����2�Ĥ�ξ���Ȥ߹�碌��Ŭ�Ѥ��뤳�Ȥ⡢�ɤ��餫��ͥ�褵���뤳�Ȥ��ǽ�Ǥ���<br /><br /><br />\r\n\r\n<strong>NOTE��</strong><br />\r\n�ʲ��γƥ��ƥ���ˤ�����Ʊ�����ʤ�3�����ļ�����Ƥ��ꡢ�㤤�ϥ��ƥ�����Ф��륻������������Ȥ��Ƥ��ޤ���<br />\r\n�ۤʤ륫�ƥ����Ʊ������Ʊ�Τ���٤�ȡ�����������ˤ��դ�ޤ��ΰ㤤�����򤷤䤹���Ȼפ��ޤ���<br /><br />\r\n\r\n���ʲ���3���ƥ���ˤ�Ʊ������ξ��ʤ�3���������äƤ��ޤ�<br />\r\n���������롧10��OFF<br />\r\n���������롧10��OFF<br />\r\n���������롧1���ߤ�8000�ߤ�<br /><br />\r\n\r\n���ʲ���3���ƥ���ˤ�Ʊ��������ò�Ŭ�Ѿ��ʤ�3���������äƤ��ޤ�<br />\r\n������������ò���ξ��Ŭ��<br />\r\n������������ò���������ͥ��<br />\r\n������������ò����ò�ͥ��<br /><br /><br />\r\n\r\n---------\r\n�ʤ���<br />\r\n�֢����ʥ��ץ��������������ѡץ��ƥ����<br />\r\n��¾�ε�ǽ�������ƥ�����ǥ�����Ŭ�Ѿ��ʤ��㼨���뤿���ߤ������ߡ����ƥ���Ǥ���<br />\r\n�����Υ��ƥ��꼫�ΤˤϤ��ޤ��̣������ޤ���'),(67,2,'�����롧10��OFF','�����뵡ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���\r\n���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ\r\n���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���'),(68,2,'�����롧500��OFF','�����뵡ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���\r\n���Υ��ƥ�����Ф��ơ�500�߰����Υ��������꤬����Ƥ��ꡢ\r\n���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���'),(69,2,'�����롧1���ߤ�8000�ߤ�','�����뵡ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���\r\n���Υ��ƥ�����Ф��ơ�8000�ߡʿ��������ʡˤˤ��륻�������꤬����Ƥ��ꡢ\r\n���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���'),(70,2,'�ò�������','����ñ�̤��ò����ʤ����ꤹ�뤳�Ȥ��Ǥ��ޤ���<br />\r\n���Υ��ƥ���Ǥ��ò���ǽ�δ���������Ƥ��ޤ���'),(71,2,'�������Ϣetc',''),(72,2,'�������оݳ����ƥ���','���Υ��ƥ���ϡ־��ʥޥ��������ƥ���פ����򤹤뤿��Υ���ץ�Ǥ���<br />\r\nʣ���Υ��ƥ���˥�󥯤��줿���ʤξ�硢���ʥޥ��������ƥ���Υ��������꤬Ŭ�Ѥ���ޤ���<br /><br />\r\n\r\n���Υ��ƥ���ˤϥ����������򤷤Ƥ��ޤ���<br />\r\n���Υ��ƥ����۲��ˤϡ�����ʣ���Υ��ƥ���˥�󥯤��줿���ʤ�2�����äƤ��ޤ���<br /><br />\r\n\r\n1�Ĥϡ����Υ��ƥ��꤬���ʥޥ��������ƥ���ʤΤǥ������Ŭ�Ѥ���ޤ���<br />\r\n���������⤦�����ξ��ʤϡ�������Ŭ�ѥ��ƥ����10��OFF�פ��ʥޥ��������ƥ���Ȥ��Ƥ��뤿�ᡢ\r\n�ʤ��Υ��ƥ��꤬�������оݤǤʤ��ˤ⤫����餺��10��OFF�ˤʤ�ޤ���'),(73,2,'��������ò���ξ��Ŭ��',''),(74,2,'��������ò���������ͥ��',''),(75,2,'��������ò����ò�ͥ��',''),(76,1,'Qty Min',''),(76,2,'�Ǿ����������������ϡ��Ĥ��顪','�Ǿ���������Ȥ���<br />\r\n�֤�������10�Ĥ���Ȥ����Ƥ��������ޤ��פȤ��ä����������б��Ǥ��ޤ���'),(78,1,'Qty Max',''),(78,2,'���������������ͤ��ޡ����ޤǡ�','���������������ˤ��\r\n�֤���ͤ���1���ޤǡפΤ褦�˰��٤ι������㤨��������¤��뤳�Ȥ��Ǥ��ޤ���'),(77,1,'Qty Min,Mix, Units',''),(77,2,'����ñ�̤�Ǿ�/�������������','Zen Cart�Ǥϡ��Ǿ����������������������¤����ꡢ����ñ�̤����¡ʤ�������5�Ĥ��ġˤʤɤ���ǽ�Ǥ���'),(79,1,'Shipping free products',''),(79,2,'����̵��������','�����Ǥ�������̵���Ȥ���������򤴾Ҳ𤷤ޤ���<br />\r\n��������ɾ��ʤϤ�����ͭ���ξ��ʤ����������ӥ��ˤ��������˻Ȥ��ޤ���<br /><br />\r\n\r\n�ʤ���<strong>����å����Τˡ֤�����1���߰ʾ������̵�����פ�Ŭ�Ѥ�����</strong>�ʤɤΥ������ˤĤ��Ƥϡ������⥸�塼����������ƤǤ��Τǡ������Ǥϰ����ޤ���'),(80,1,'Product Expected & Out of Stock',''),(80,2,'����ͽ��Ⱥ߸��ڤ쾦����','���Υ��ƥ���ˤ�����ͽ�꾦�ʤȺ߸��ڤ쾦�ʤ�������Ƥ���ޤ���<br /><br />\r\n\r\n<strong>������ͽ�꾦�ʡ�</strong>\r\n���ʾ���Ρ��󶡲�ǽ���פ�̤������դ����Ϥ��������ͽ�꾦�ʤȤ��ư����ޤ���<br /><br />\r\n\r\n������ͽ�꾦�ʤξ�硢�桼���Ͼ��ʾ���α������Ǥ�����ʸ���ǽ�Ǥ���<br />\r\n������ͽ�꾦�ʤϡ�������˥塼�ξ��ʤδ���������ͽ�꾦�ʤδ��� �ǰ���ɽ��������������뤳�Ȥ��Ǥ��ޤ���<br /><br />\r\n\r\n\r\n<strong>�ں߸��ڤ쾦�ʡ�</strong>\r\n�߸˿���0�ˤʤ�ȡ����ξ��ʤˤϺ߸��ڤ쾦�ʤΥ�������ɽ������ޤ���<br /><br />\r\n\r\n���߸��ڤ쾦�ʤϡ��桼���Ͼ��ʾ���α����ϤǤ��ޤ�������ʸ�ϤǤ��ޤ���<br />\r\n���߸ˤ�0�ˤʤä��Ȥ��Τդ�ޤ��ʺ߸��ڤ쥢�������ɽ�������뤫�ɤ������ˤϡ����������Ȥΰ��������߸ˤδ������������ǽ�Ǥ����ʲ��Τ褦�����꤬�Ǥ��ޤ���<br />\r\n�������߸ˤ��ʤ��ʤä����ʤˡ��֥����Ȥ������ץܥ����<br />\r\n����������ˡ�����ڤ�ץ��������ɽ������/���ʤ�<br />\r\n�������߸��ڤ쾦�ʤ���ʸ�Ǥ���/�Ǥ��ʤ�<br />\r\n�������߸��ڤ쾦�ʤΥ��ơ������ѹ���<br />\r\n�������߸ˤ��ʤ��ʤä��龦�ʥ��ơ�������OFF�ˤ��ơ�<br />\r\n����������å׾�ؤηǺܤ�ư�Ǽ�����/���ʤ�<br />\r\n�������߸˿�������å����ƿ��ʲ��ˤʤä��鱿�ļԤ�<br />\r\n�������᡼����Τ餻��/�Τ餻�ʤ�'),(81,1,'Consumption Tax',''),(81,2,'�����Ǥΰ���','�����Ǥΰ�����2�̤�ͤ����ޤ���<br />\r\n�ɤ������ˡ�Ǥ�ɽ�����ʤ�Ʊ���褦���ǹ��߲��ʤ�ɽ������ޤ���������¦�����Ǿ��ʲ��ʤ�����/���ǤΤɤ���Ǵ������뤫���ۤʤ�ޤ���<br /><br />\r\n��1�˳��ǤǴ������롧<br />\r\n�������ʲ��ʤˤϾ�����ʬ��ޤ�ʤ����ʤ����Ϥ��ޤ���<br />\r\n�������ʲ���(����)�ˤϼ�ư�׻����줿�ǹ��߲��ʤ����ꡢɽ�����ʤˤϤ��줬ɽ������ޤ���<br />\r\n����������Ψ���ѹ����줿���ϡ����������Ȥ�����Ψ���Ѥ�������ǡ��оݾ������Ƥ�ȿ�Ǥ���ޤ���<br /><br />\r\n��2�����ǤǴ������롧<br />\r\n�������ʲ���(����)�˾�����ʬ��ޤ᤿���ʤ����Ϥ����Ƕ�ʬ��־����ǡפȤ��뤫���Ƕ�ʬ��֤ʤ��פˤ��ƾ��ʲ��ʤ����ǲ��ʤ�ľ�����Ϥ����2��ˡ����ޤ���<br />\r\n����ɽ�����ʤϡ����Ǥ�ɽ������ޤ���<br />\r\n������Ȥ�ȥ���å���δ�����Ģ���ǹ��߲��ʤǴ�������Ƥ�����Ϥ������Ȥ��ޤ���<br />\r\n�����ǹ��ߤ�ɽ�����ʤ򥭥å���9800�ߤˤ������ʤɤξ������ǤǴ������������狼��䤹���Ǥ���<br />\r\n�������������Ƕ�ʬ��֤ʤ��פ����ꤷ�����ϡ���Ψ���Ѥ����оݾ��ʤ��٤Ƥ�ľ��ɬ�פ�����ޤ�'),(82,1,'Add Images',''),(82,2,'��������ɲäβ�����Ǻܤ�����ˡ','����������ˡ��ᥤ������ʳ��ξ��ʲ�����Ǻܤ�����ˡ���������Ƥ��ޤ���<br />\r\n�¸���ˡ�ϡ���1�˼�ưɽ��������ˡ�ȡ�2���������HTMLľ�񤭤���ɽ��������ʼ�ư�ˤ�2�����פ���ޤ���<br /><br />\r\n\r\n��ǽ�Ȥ��Ƥ��̥�ΤǤ�����<br />\r\n���ʥ��ץ���󤴤Ȥ˲�����Ǻܤ�����ˡ�ˤĤ��Ƥ�ʻ���ƷǺܤ��Ƥ����ޤ���'),(83,1,'Qty Discounts by Attributes',''),(83,2,'���ץ������Ф�����̳��','Zen Cart�ǥܥ�塼��ǥ���������Ȥ�¸�����⤦��Ĥ���ˡ�Ȥ��ơ����ʤΥ��ץ����°�����ȤΥܥ�塼��ǥ����������������ˡ������ޤ���<br /><br />\r\n\r\n���ʥ��ץ���󤴤Ȥ�����򤹤�ȡ�<br />\r\nƱ��T����ľ��ʤ��Ф��ơ���å��������10�İʾ��100�߰��������ɡ����������ä���5�İʾ��200�߰��������Ȥ��ä����Ȥ��¸��Ǥ��ޤ���'),(84,1,'Qty Discounts','Discount Quantities can be set for Products or on the individual attributes.<br />\r\nDiscounts on the Product do NOT reflect on the attributes price.<br />\r\nOnly discounts based on Special and Sale Prices are applied to attribute prices.'),(84,2,'�ܥ�塼��ǥ������������','���̳���ʥܥ�塼��ǥ���������ȡˤ�������򽸤᤿���ƥ���Ǥ���<br /><br />\r\n\r\nZen Cart�Υܥ�塼��ǥ���������ȵ�ǽ��2��ˡ���ꡢ�����оݤ�¸��Ǥ��뤳�Ȥ��ۤʤ�ޤ���<br /><br />\r\n\r\n��1�ˤ��ξ��ʤ��Ф��ƿ��̳����Ԥ���ˡ<br />\r\n���������̳���δ��ܵ�ǽ�Ǥ���<br />\r\n������[���ʲ��ʤδ���(Price Manager)]�������ꤷ�ޤ���<br /><br />\r\n\r\n��2�ˤ��ξ��ʤΥ��ץ����°�����Ф��ƿ��̳����Ԥ���ˡ<br />\r\n���������ץ����°�����Ȥ˰ۤʤ���̳�����꤬��ǽ�Ǥ���<br />\r\n<br />\r\n������[���ʥ��ץ����°��]�������ꤷ�ޤ���<br />'),(85,1,'OneTime Discount',''),(85,2,'��󥿥�����','���ץ����°���Υ�󥿥�������ǽ�ˤĤ��Ƥ��������ƥ���Ǥ���<br />\r\n�ǽ��1���ܤ���500�߳������Ȥ��ä��Ȥ����򤷤ޤ���<br />\"���\"�ȥ͡��ߥ󥰤���Ƥ��ޤ������Ȥ�������ǲ�����äƤ�1�����������ִ�������ʤĤޤ�����ˡפȤ��Ƥ�Ȥ��ޤ���'),(86,1,'Qty Unit',''),(86,2,'���ʤο���ñ�̡�����ñ�̤Ǥ���ʸ','��˥å�ñ�̤����䤷�������ϡ�[���ʤο���ñ��]�����ꤷ�ޤ���<br /><br />\r\n[���ʤκǾ�����]��[���ʤκ������]��������Ȥ߹�碌��С�<br />��1000�İʾ塢200��ñ�̤Ǥ���ʸ������������ʸ��ǽ�ʺ������5000�ĤޤǤǤ���<br />\r\n�Τ褦�����䤬��ǽ�ˤʤ�ޤ���<br /><br />'),(87,1,'Price-factor, Offset',''),(87,2,'�ץ饤���ե��������ȥ��ե��å�','���ʥ��ץ����°������Ǥ⡢�狼��Ť餤�Ȱ�ɾ�⤤����[�ץ饤���ե�������]��[���ե��å�]�ʤɤˤĤ����������ޤ���'),(89,1,'Base/Product/Option Price',''),(89,2,'�١������ʡ����ʲ��ʡ����ץ����','<strong>�١������ʡ����ʲ��ʡ����ץ������ʤδط�</strong><br /><br />\r\n\r\nZen Cart�Ǥϡ��֥١������ʡפȤ��������������������˽ФƤ��ޤ���������ϴ������̤����Ϥ����־��ʲ��ʡפ�֥��ץ������ʡפȤɤ��㤦�ΤǤ��礦����<br /><br />\r\n\r\n�١������ʤϡ��ò��䥻����ʤɤ��Ͱ����׻��䡢�ץ饤���ե���������Ŭ�Ѥ���ݤδ��ۤȤ��ƻȤ��ޤ�������̾ľ����ɽ���������ʡʤ����Ǥ�ɽ�����ʤȸƤ�Ǥ����ޤ��ˤ⤳�Υ١������ʤ�ɽ������ޤ���<br /><br />\r\n\r\n���륪�ץ��������򤷤����Υ١������ʤϡ�<br /><br />\r\n\r\n��<strong>����Ū�ˤϡ�����<br />\r\n��[�١�������]��[���ʲ���]��[�ʤ��Υ��ץ����Ρ˥��ץ�������]</strong><br />\r\n\r\n�Ǥ���<br />\r\n���������ʲ���2�ĤΥե饰�ξ��֤ˤ�äƥ��ץ������ʤ�١������ʤ˴ޤ�ʤ���礬����ޤ����դ˸����Ф��Υ��ץ������Ф��Ƥɤ����դ��򤷤������ˤ�äƤ��Υե饰�����椹��櫓�Ǥ���\r\n<ul>\r\n <li>[����°���ˤ�����]�ե饰�������ʾ���������1�������Τ˱ƶ������</li>\r\n <li>[°���ˤ�����������١������ʤ˴ޤ��]�ե饰�������ץ����°�����Ȥ�����ʤ��Υ��ץ��������˱ƶ������</li>\r\n</ul>\r\n�ե饰�ȥ١������ʤδط���ɽ�ˤ���ȡ�����<br /><br />\r\n\r\n<table border=\"1\">\r\n  <tr>\r\n    <th width=\"20%\">[����°���ˤ�����]</th>\r\n   <td colspan=\"2\" width=\"60%\"><b>\"�Ϥ�\"</b></td>\r\n   <td width=\"20%\"><b>\"������\"</b></td>\r\n  </tr>\r\n  <tr>\r\n   <th>[°���ˤ�����������١������ʤ˴ޤ��]</th>\r\n   <td width=\"40%\"><b>\"�Ϥ�\"</b></td>\r\n   <td width=\"20%\">\"������\"</td>\r\n   <td>��</td>\r\n  </tr>\r\n  <tr>\r\n   <th>[�١�������]</th>\r\n   <td style=\"background:#E6E68A;\">��[���ʲ���]��[���ץ�������]</td>\r\n   <td colspan=\"2\" style=\"background:#E6E68A;\">��[���ʲ���]</td>\r\n  </tr>\r\n  <tr>\r\n   <th>ɽ�����ʤ��оݡ�</th>\r\n   <td style=\"background:#E6E68A;\">YES�ʥ١���������Ǿ��ͤʤ�ɽ��������</td>\r\n   <td colspan=\"2\" style=\"background:#E6E68A;\">ɽ���оݳ�</td>\r\n  </tr>\r\n</table>\r\n<br />\r\n�Ȥ������ˤ��Ȥ���ȡ�[����°���ˤ�����]�ե饰�ϲ����ΤΥ֥졼�����ʤ��줬�ڤ������Ƥ��������ä���ˤˤ����ꡢ[°���ˤ�����������١������ʤ˴ޤ��]�ե饰�ϳ������Υ����å��ˤ�����ޤ���'),(91,1,'Product - Music',''),(91,2,'���̤����ʥ����ס�Music',''),(99,1,'Tips',''),(93,1,'Document Type',''),(93,2,'���̤����ʥ����ס�Document','���ʥ����פ��ɥ�����ȤΥ��ƥ���ϡ���1��٥�Ǥʤ��Ȥ��ޤ�ư���ʤ��褦�Ǥ���'),(96,2,'[1.3.2]��3���ƥ���','��3��٥�Υ��ƥ���Ǥ���<br />\r\n���Υ��ƥ���ˤϻҥ��ƥ��꤬�ʤ������줬�ǲ��̥��ƥ���Ǥ���<br />\r\n���ä��۲��ξ��ʰ�����ɽ������ޤ���'),(98,2,'���̤����ʥ����ס�Free Shipping',''),(98,1,'Product - Free Shipping',''),(97,1,'Mixed Product Types','This is a category with mixed product types. This includes both products and documents. There are two types of documents - Documents that are for reading and Documents that are for reading and purchasing.'),(97,2,'���ޤ��ޤ����ʥ����פ�ޤ���','���ƥ�����Ф���[���ʥ����פ�����]�򤷤ʤ��������뤤�ϰ����������ʥ����פ�ʣ����Ͽ���Ƥ����С����Υ��ƥ���˰ۤʤ����ʥ����פ򺮺ߤ����뤳�Ȥ��Ǥ��ޤ���'),(99,2,'����¾��Tips',''),(100,1,'Download Files',''),(100,2,'��������ɾ���',''),(101,1,'FILE type',''),(101,2,'FILE������','���Υ��ץ���󥿥��פˤ���ȡ����åץ����ѤΥե�����������ɽ������ޤ���'),(1,1,'T-shirts(white)','T-shirts(white)'),(2,1,'Logo T(white)',''),(3,1,'T-shirts(color)','T-shirts(color)'),(4,1,'Logo T(color)',''),(5,1,'Cat T(white)',''),(6,1,'T-shirts for kids','T-shirts for kids'),(7,1,'Cute T(for Kids)',''),(8,1,'Cat T(color)',''),(9,1,'Dragon T(color)',''),(10,1,'Dragon T(for Kids)',''),(11,1,'Dog T(color)',''),(12,1,'Animal T(color)',''),(13,1,'Illust. T(color)',''),(14,1,'Icon T(color)',''),(15,1,'Illust. T(white)',''),(16,1,'Animal T(white)',''),(17,1,'Fish T(for Kids)',''),(20,1,'Gift Certificates','Send a Gift Certificate today!<br />\r\nGift Certificates are good for anything in the store.'),(21,1,'Zen\'s selection(Linked products','All of these products are \"Linked Products\".\r\n\r\nThis means that they appear in more than one Category.\r\n\r\nHowever, you only have to maintain the product in one place.\r\n\r\nThe Master Product is used for pricing purposes.'),(22,1,'Shop Original(unlinked products)','shop originals. these are unlinked products.'),(23,1,'wallpapers','wallpapers(download)'),(40,1,'Free products','Free products'),(41,1,'Call Stuff','call staff products'),(45,1,'Qty Discount',''),(59,1,'Option Types','Option Types'),(60,1,'TEXT type',''),(61,1,'READONLY Type',''),(62,1,'CHCKBOX Type',''),(63,1,'DROPDOWN & RADIO Type',''),(66,1,'SALE & Special price','Sale & Special price'),(67,1,'SALE Percent: 10% off','SALE 10% off'),(68,1,'SALE Deduction: 500yen off','Sale Deduction'),(69,1,'SALE New Price: set 8000 yen','Sale New Price'),(70,1,'Special Price','Special Price'),(71,1,'SALE etc..',''),(72,1,'Not SALE',''),(73,1,'SALE x Special',''),(74,1,'SALE x Special: skip special',''),(75,1,'SALE x Special: skip SALE','');
/*!40000 ALTER TABLE `categories_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
CREATE TABLE `configuration` (
  `configuration_id` int(11) NOT NULL auto_increment,
  `configuration_title` text NOT NULL,
  `configuration_key` varchar(255) NOT NULL default '',
  `configuration_value` text NOT NULL,
  `configuration_description` text NOT NULL,
  `configuration_group_id` int(11) NOT NULL default '0',
  `sort_order` int(5) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `use_function` text,
  `set_function` text,
  PRIMARY KEY  (`configuration_id`),
  UNIQUE KEY `unq_config_key_zen` (`configuration_key`),
  KEY `idx_key_value_zen` (`configuration_key`,`configuration_value`(10)),
  KEY `idx_cfg_grp_id_zen` (`configuration_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=652 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES (1,'����å�̾','STORE_NAME','�����Ǥ��ʤ�˥ѥå� �ǥ⥷��å�','����å�̾�����ꤷ�ޤ���',1,1,NULL,'2009-11-19 12:39:39',NULL,NULL),(2,'����åץ����ʡ�̾','STORE_OWNER','�����Ǥ��ʤ�˥ѥå� ��ȯ������','����åץ����ʡ�̾(�ޤ��ϱ��Ĵ�����̾)�����ꤷ�ޤ���',1,2,NULL,'2009-11-19 12:39:39',NULL,NULL),(3,'��','STORE_COUNTRY','107','Ź�ޤ�¸�ߤ����̾�����Ϥ��Ƥ���������<strong>��ա��ѹ�������Ź�ޤΥ�����ι�����˺�줺�˹ԤäƤ���������</strong>',1,6,NULL,'2009-11-19 12:39:39','zen_get_country_name','zen_cfg_pull_down_country_list('),(4,'�ϰ�','STORE_ZONE','194','����åפν���ϰ�(��̾)�����ꤷ�ޤ���',1,7,NULL,'2009-11-19 12:39:39','zen_cfg_get_zone_name','zen_cfg_pull_down_zone_list('),(5,'����ͽ�꾦�ʤΥ����Ƚ�','EXPECTED_PRODUCTS_SORT','desc','����ͽ�꾦�ʤΥ����Ƚ�����ꤷ�ޤ���<br /><br />\r\n��asc(����)<br />\r\n��desc(�߽�)',1,8,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'asc\', \'desc\'), '),(6,'����ͽ�꾦�ʤΥ����Ƚ���Ѥ���ե������','EXPECTED_PRODUCTS_FIELD','date_expected','����ͽ�꾦�ʤΥ����Ƚ�˻��Ѥ���ե�����ɤ����ꤷ�ޤ���<BR>��products_name:��̾<BR>��date_expected:ͽ����',1,9,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'products_name\', \'date_expected\'), '),(7,'ɽ��������̲ߤ�Ϣư','USE_DEFAULT_LANGUAGE_CURRENCY','false','ɽ��������̲ߤ��ѹ���Ϣư�����뤫�ɤ������ꤷ�ޤ���<br /><br />true(Ϣư)<br />false(��Ϣư)',1,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(8,'ɽ�����������','LANGUAGE_DEFAULT_SELECTOR','Default','����åפΥǥե���Ȥ�ɽ������ϥ���åפν������ޤ��ϥ桼�����Υ֥饦������Τɤ���˴�Ť��������ꤷ�ޤ���<br /><br />�ǥե���ȡ�����åפν������',1,11,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'Default\', \'Browser\'), '),(9,'���������󥸥�ե��ɥ꡼��URLɽ��(��ȯ��)','SEARCH_ENGINE_FRIENDLY_URLS','false','���������󥸥�˽����䤹������ŪHTML�Τ褦��URLɽ����Ԥ����ɤ��������ꤷ�ޤ���<br /><br />��ա�Google�Ǥ�ưŪURL�Υ����뤬�������줿���ᡢ���ޤ��̣�Ϥʤ��褦�Ǥ���',6,12,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(10,'���ʤ��ɲø�˥����Ȥ�ɽ��','DISPLAY_CART','true','���ʤ򥫡��Ȥ��ɲä���ľ��˥����Ȥ����Ƥ�ɽ�����뤫���ޤ��ϸ��ڡ����ˤ�����뤫�����ꤷ�ޤ���<br /><br />\r\n��true (ɽ��)<br />\r\n��false (��ɽ��)',1,14,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(11,'�ǥե���Ȥθ����黻��','ADVANCED_SEARCH_DEFAULT_OPERATOR','and','�ǥե���Ȥθ����黻�Ҥ����ꤷ�ޤ���',1,17,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'and\', \'or\'), '),(12,'����åפν���������ֹ�','STORE_NAME_ADDRESS','Ź��̾\r\n ����\r\n ��̾\r\n �����ֹ�','����å�̾����̾�����ꡢ�����ֹ�����ꤷ�ޤ���',1,18,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea('),(13,'���ƥ�����ξ��ʿ���ɽ��','SHOW_COUNTS','true','���ƥ�����ξ��ʿ��򲼰̥��ƥ����ޤ�ƥ������ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true (����)<br />\r\n��false (���ʤ�)',1,19,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(14,'�ǳۤξ���������','TAX_DECIMAL_PLACES','0','�ǳۤξ������ʲ��η�������ꤷ�ޤ���',1,20,NULL,'2009-11-19 12:39:39',NULL,NULL),(15,'���ʤ��ǹ��ߤ�ɽ��','DISPLAY_PRICE_WITH_TAX','true','���ʤ��ǹ��ߤ�ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true = ���ʤ��ǹ��ߤ�ɽ��<br />\r\n��false = �ǳۤ�ޤȤ��ɽ��',1,21,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(16,'���ʤ��ǹ��ߤ�ɽ�� - ��������','DISPLAY_PRICE_WITH_TAX_ADMIN','true','�������̤ǲ��ʤ��ǹ��ߤ�ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true = ���ʤ��ǹ��ߤ�ɽ��<br />\r\n��false = �Ǹ���ǳۤ�ɽ��',1,21,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(17,'���ʤˤ������ǳۤλ�����','STORE_PRODUCT_TAX_BASIS','Shipping','���ʤˤ������ǳۤ򻻽Ф���ݤδ������ꤷ�ޤ���<br /><br />\r\n��Shipping �ĸܵ�(����������)�ν���<br />\r\n��Billing �ĸܵҤ�������ν���<br />\r\n��Store �ĥ���åפν���Ϥˤ��(�����衦������Ȥ⥷��åפν���ϰ�Ǥ������ͭ��)\r\n',1,21,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'Shipping\', \'Billing\', \'Store\'), '),(18,'�����ˤ������ǳۤλ�����','STORE_SHIPPING_TAX_BASIS','Shipping','�����ˤ������Ƕ�򻻽Ф���ݤδ������ꤷ�ޤ���<br /><br />\r\n��Shipping �ĸܵ�(����������)�ν���<br />\r\n��Billing �ĸܵҤ�������ν���<br />\r\n��Store �ĥ���åפν���Ϥˤ��(�����衦������Ȥ⥷��åפν���ϰ�Ǥ������ͭ��)<br />\r\n��ա���������������⥸�塼��ˤ�äƥ����С��饤��(�������)����ǽ�Ǥ���',1,21,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'Shipping\', \'Billing\', \'Store\'), '),(19,'�Ƕ��ɽ��','STORE_TAX_DISPLAY_STATUS','0','��׳ۤ�0�ߤǤ��Ƕ��ɽ�����ޤ���?<br />0= Off<br />1= On',1,21,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(20,'�������̤Υ����ॢ��������(�ÿ�)','SESSION_TIMEOUT_ADMIN','3600','�������̤������ॢ���Ȥ���ޤǤ��ÿ������ꤷ�ޤ����ǥե���Ȥ�3600�á�1���֤Ǥ���<br />���ޤ�û������ꤹ��Ⱦ�����Ͽ��ʤɤ˥����ॢ���Ȥ��Ƥ��ޤ��ޤ��Τ���ա�<br />900��̤�������ꤹ���900�ä˼�ưŪ�����ꤵ��ޤ���',1,40,NULL,'2009-11-19 12:39:39',NULL,NULL),(21,'�������̤Υץ��������ξ�»�������(��)\r\n','GLOBAL_SET_TIME_LIMIT','60','�������̤ˤ����Ƥʤ�餫������Ԥä����Ρ��ץ��������ζ�����λ���֤����ꤷ�ޤ����ǥե���Ȥ�60�á�1ʬ����������ϡ��ץ����������֤����꤬������ʤɤˤ����ѹ����Ƥ���������\r\n',1,42,NULL,'2009-11-19 12:39:39',NULL,NULL),(22,'Zen Cart���С������μ�ư�����å�(�إå��ǹ��Τ��뤫�ݤ�)','SHOW_VERSION_UPDATE_IN_HEADER','true','Zen Cart�ο��С�����󤬥�꡼�����줿��硢�إå��˾����ɽ�����ޤ���?<br /><br />\r\n��ա���������򥪥�ˤ���ȡ������ԥڡ�����ɽ�����٤��ʤ��礬����ޤ������󥿡��ͥåȤ˷Ҥ��äƤ��ʤ��ƥ��ȴĶ��ʤɤǤ�false�ˤ��Ƥ���������\r\n',1,44,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(23,'����åפΥ��ơ�����','STORE_STATUS','0','����åפξ��֤����ꤷ�ޤ���<br /><br />\r\n��0���̾�Υ���å�<br />\r\n��1�����ɽ���ʤ��Υǥ⥷��å�<br />\r\n��2�����ɽ���դ��Υǥ⥷��å�\r\n',1,25,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(24,'�����Фβ�ư����(���åץ�����)','DISPLAY_SERVER_UPTIME','true','�����Фβ�Ư���֤�ɽ�����뤫�ɤ��������ꤷ�ޤ������ξ���Ϥ����Ĥ��Υ����Фǥ��顼���Ȥ��ƻĤ뤳�Ȥ�����ޤ���<br /><br />true��ɽ��<br /><br />false����ɽ��',1,46,'2003-11-08 20:24:47','0001-01-01 00:00:00','','zen_cfg_select_option(array(\'true\', \'false\'),'),(25,'����ڤ�ڡ����Υ����å�','MISSING_PAGE_CHECK','On','Zen Cart������ڤ�ڡ������Τ����ݤ˼�ưŪ�˥ȥåץڡ�����ž�����ޤ���?<br /><br />\r\n��On = ����<br />\r\n��Off = ����<br />\r\n��Page Not Found = �ڡ��������Ĥ���ޤ�����̤����ܤ���<br />\r\n<br />\r\n��ա��ǥХå��κݤʤɤˤϤ��ε�ǽ�򥪥դˤ���Ȥ褤�Ǥ��礦��',1,48,'2003-11-08 20:24:47','0001-01-01 00:00:00','','zen_cfg_select_option(array(\'On\', \'Off\', \'Page Not Found\'),'),(26,'HTML���ǥ���','HTML_EDITOR_PREFERENCE','NONE','�᡼��ޥ�����侦�������ʤɤ��Ѥ���HTML/��å��ƥ������ѤΥ��եȥ����������ꤷ�ޤ���',1,110,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'HTMLAREA\', \'NONE\'),'),(27,'phpBB�ؤΥ�󥯤�ɽ��','PHPBB_LINKS_ENABLED','false','Zen Cart���(���󥹥ȡ���Ѥߤ�)phpBB�Υե������ؤΥ�󥯤�ɽ�����뤫�ɤ��������ꤷ�ޤ���\r\n',1,120,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(28,'���ƥ�����ξ��ʿ���ɽ�� - ��������','SHOW_COUNTS_ADMIN','true','���ƥ�����ξ��ʿ��򲼰̥��ƥ����ޤ�ƥ������ɽ�����ޤ���?<br /><br />\r\n��true (����)<br />\r\n��false (���ʤ�)',1,130,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(29,'̾���κǾ�ʸ����','ENTRY_FIRST_NAME_MIN_LENGTH','1','̾����ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,1,NULL,'2009-11-19 12:39:39',NULL,NULL),(30,'���κǾ�ʸ����','ENTRY_LAST_NAME_MIN_LENGTH','1','����ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,2,NULL,'2009-11-19 12:39:39',NULL,NULL),(31,'��ǯ�����κǾ�ʸ����','ENTRY_DOB_MIN_LENGTH','10','��ǯ������ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,3,NULL,'2009-11-19 12:39:39',NULL,NULL),(32,'�᡼�륢�ɥ쥹�κǾ�ʸ����','ENTRY_EMAIL_ADDRESS_MIN_LENGTH','6','�᡼�륢�ɥ쥹��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,4,NULL,'2009-11-19 12:39:39',NULL,NULL),(33,'����κǾ�ʸ����','ENTRY_STREET_ADDRESS_MIN_LENGTH','1','���ϡ��ޥ󥷥�󡦥��ѡ���̾�κǾ�ʸ���������ꤷ�ޤ���',2,5,NULL,'2009-11-19 12:39:39',NULL,NULL),(34,'���̾�κǾ�ʸ����','ENTRY_COMPANY_MIN_LENGTH','2','���̾��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,6,NULL,'2009-11-19 12:39:39',NULL,NULL),(35,'͹���ֹ�κǾ�ʸ����','ENTRY_POSTCODE_MIN_LENGTH','4','͹���ֹ��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,7,NULL,'2009-11-19 12:39:39',NULL,NULL),(36,'�Զ�Į¼�κǾ�ʸ����','ENTRY_CITY_MIN_LENGTH','2','�Զ�Į¼��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,8,NULL,'2009-11-19 12:39:39',NULL,NULL),(37,'��ƻ�ܸ�̾�κǾ�ʸ����','ENTRY_STATE_MIN_LENGTH','2','��ƻ�ܸ���ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,9,NULL,'2009-11-19 12:39:39',NULL,NULL),(38,'�����ֹ�κǾ�ʸ����','ENTRY_TELEPHONE_MIN_LENGTH','3','�����ֹ��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,10,NULL,'2009-11-19 12:39:39',NULL,NULL),(39,'�ѥ���ɤκǾ�ʸ����','ENTRY_PASSWORD_MIN_LENGTH','5','�ѥ���ɤ�ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,11,NULL,'2009-11-19 12:39:39',NULL,NULL),(40,'���쥸�åȥ�����̾���κǾ�ʸ����','CC_OWNER_MIN_LENGTH','3','���쥸�åȥ����ɽ�ͭ��̾��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,12,NULL,'2009-11-19 12:39:39',NULL,NULL),(41,'���쥸�åȥ������ֹ�κǾ�ʸ����','CC_NUMBER_MIN_LENGTH','10','���쥸�åȥ������ֹ��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,13,NULL,'2009-11-19 12:39:39',NULL,NULL),(42,'���쥸�åȥ�����CVV�ֹ�κǾ�ʸ����','CC_CVV_MIN_LENGTH','3','���쥸�åȥ�����CVV�ֹ��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,13,NULL,'2009-11-19 12:39:39',NULL,NULL),(43,'��ӥ塼��ʸ�ϤκǾ�ʸ����','REVIEW_TEXT_MIN_LENGTH','50','��ӥ塼��ʸ�Ϥ�ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,14,NULL,'2009-11-19 12:39:39',NULL,NULL),(44,'�٥��ȥ��顼�κǾ�ɽ�����','MIN_DISPLAY_BESTSELLERS','1','�٥��ȥ��顼�Ȥ���ɽ�����뾦�ʤκǾ��ͤ����ꤷ�ޤ���',2,15,NULL,'2009-11-19 12:39:39',NULL,NULL),(45,'�֤���ʾ��ʤ�������Ƥ��ޤ��פκǾ�ɽ����','MIN_DISPLAY_ALSO_PURCHASED','1','�֤��ξ��ʤ���������ͤϤ���ʾ��ʤ�������Ƥ��ޤ��פ�ɽ�����뾦�ʿ��κǾ��ͤ����ꤷ�ޤ���',2,16,NULL,'2009-11-19 12:39:39',NULL,NULL),(46,'�˥å��͡���κǾ�ʸ����','ENTRY_NICK_MIN_LENGTH','3','�˥å��͡����ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,1,NULL,'2009-11-19 12:39:39',NULL,NULL),(47,'���ɥ쥹Ģ�κ�����Ͽ��','MAX_ADDRESS_BOOK_ENTRIES','5','�ܵҤ���Ͽ�Ǥ��륢�ɥ쥹Ģ����Ͽ���κ����ͤ����ꤷ�ޤ���',3,1,NULL,'2009-11-19 12:39:39',NULL,NULL),(48,'�������� - 1�ڡ�����ɽ�����븡����̤κ����','MAX_DISPLAY_SEARCH_RESULTS','20','�������̤�1�ڡ�����ɽ�����븡����̤ο��κ����ͤ����ꤷ�ޤ���',3,2,NULL,'2009-11-19 12:39:39',NULL,NULL),(49,'�ڡ�������󥯿��κ���ɽ����','MAX_DISPLAY_PAGE_LINKS','5','���ʥꥹ�Ȥ��������ΰ���ɽ���ǥڡ����β��ʤɤ�ɽ�������ڡ���������󥯿��κ����ͤ����ꤷ�ޤ���',3,3,NULL,'2009-11-19 12:39:39',NULL,NULL),(50,'�ò����ʤκ���ɽ����','MAX_DISPLAY_SPECIAL_PRODUCTS','9','�ò����ʤȤ���ɽ�����뾦�ʿ��κ����ͤ����ꤷ�ޤ���',3,4,NULL,'2009-11-19 12:39:39',NULL,NULL),(51,'����ο��徦�ʤκ���ɽ����','MAX_DISPLAY_NEW_PRODUCTS','9','����ο��徦�ʿ��κ����ͤ����ꤷ�ޤ���',3,5,NULL,'2009-11-19 12:39:39',NULL,NULL),(52,'����ͽ�꾦�ʤκ���ɽ����','MAX_DISPLAY_UPCOMING_PRODUCTS','10','����ͽ�꾦�ʤȤ���ɽ�����뾦�ʿ��κ����ͤ����ꤷ�ޤ���',3,6,NULL,'2009-11-19 12:39:39',NULL,NULL),(53,'�᡼�����ꥹ�� - ��������ܥå����Υ�����/��������','MAX_MANUFACTURERS_LIST','3','��������ܥå�����ɽ�������᡼�������� ?<br />1��0�����ꤹ��ȥɥ�åץ�����ꥹ�Ȥˤʤ�ޤ���',3,7,NULL,'2009-11-19 12:39:39',NULL,NULL),(54,'�᡼�����ꥹ�� - ���ʤ�¸�ߤ��ǧ','PRODUCTS_MANUFACTURERS_STATUS','1','�ƥ᡼�����ˤĤ��ơ�1���ʾ�ξ��ʤ����ꡢ���ı�����ǽ�Ǥ��뤫�ɤ������ǧ���ޤ���?<br /><br />��ա����ε�ǽ��ON�ξ�硢���ʿ���᡼�����ο���¿����ɽ�����٤��ʤ�ޤ���<br />0= off 1= on',3,7,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(55,'���ڥ�����ꥹ�� - ��������ܥå����Υ�����/��������','MAX_MUSIC_GENRES_LIST','3','��������ܥå�����ɽ������벻�ڥ�����ꥹ�Ȥο������ꤷ�ޤ���1��0�����ꤹ��ȡ��ɥ�åץ�����ꥹ�Ȥˤʤ�ޤ���\r\n',3,7,NULL,'2009-11-19 12:39:39',NULL,NULL),(56,'�쥳���ɲ�ҥꥹ�� - ��������ܥå����Υ�����/��������','MAX_RECORD_COMPANY_LIST','3','��������ܥå�����ɽ�������쥳���ɲ�ҥꥹ�Ȥο��Ǥ���1��0�����ꤹ��ȡ��ɥ�åץ�����ꥹ�Ȥˤʤ�ޤ���\r\n',3,7,NULL,'2009-11-19 12:39:39',NULL,NULL),(57,'�쥳���ɲ��̾ɽ����Ĺ��','MAX_DISPLAY_RECORD_COMPANY_NAME_LEN','15','�쥳���ɲ��̾�ܥå�����ɽ�������̾����Ĺ�������ꤷ�ޤ���������Ĺ��̾���Ͼ�άɽ������ޤ���\r\n',3,8,NULL,'2009-11-19 12:39:39',NULL,NULL),(58,'���ڥ�����̾��ʸ������Ĺ��','MAX_DISPLAY_MUSIC_GENRES_NAME_LEN','15','���ڥ�����ܥå�����ɽ�������̾����Ĺ�������ꤷ�ޤ���������Ĺ��̾���Ͼ�άɽ������ޤ���\r\n',3,8,NULL,'2009-11-19 12:39:39',NULL,NULL),(59,'�᡼����̾��Ĺ��','MAX_DISPLAY_MANUFACTURER_NAME_LEN','15','�᡼�����ꥹ�Ȥ�ɽ�������᡼����̾��ʸ�����κ����ͤ����ꤷ�ޤ���',3,8,NULL,'2009-11-19 12:39:39',NULL,NULL),(60,'��������ӥ塼��ɽ����������','MAX_DISPLAY_NEW_REVIEWS','6','��������ӥ塼�Ȥ���ɽ���������κ����ͤ����ꤷ�ޤ���',3,9,NULL,'2009-11-19 12:39:39',NULL,NULL),(61,'��ӥ塼�Υ�����ɽ����','MAX_RANDOM_SELECT_REVIEWS','10','�������ɽ�������ӥ塼���κ����ͤ����ꤷ�ޤ���<br /><br />��ա����������ͤ�X�Ȥ���ȡ�������ɽ�����оݤˤʤ�Τϡ���äȤ�Ť������ƥ��֤ʥ�ӥ塼���������X���ܤ���Ͽ���줿�����ƥ��֤ʥ�ӥ塼�ޤǤˤʤ�ޤ���',3,10,NULL,'2009-11-19 12:39:39',NULL,NULL),(62,'���徦�ʤΥ�����ɽ����','MAX_RANDOM_SELECT_NEW','10','�������ɽ�����뿷�徦�ʿ��κ����ͤ����ꤷ�ޤ���<br /><br />��ա����������ͤ�X�Ȥ���ȡ�������ɽ�����оݤˤʤ�Τϡ���äȤ�Ť������ƥ��֤ʿ��徦�ʤ��������X���ܤ���Ͽ���줿�����ƥ��֤ʿ��徦�ʤޤǤˤʤ�ޤ���',3,11,NULL,'2009-11-19 12:39:39',NULL,NULL),(63,'�ò����ʤΥ�����ɽ����','MAX_RANDOM_SELECT_SPECIALS','10','�������ɽ�������ò����ʿ��κ����ͤ����ꤷ�ޤ���<br /><br />��ա����������ͤ�X�Ȥ���ȡ�������ɽ�����оݤˤʤ�Τϡ���äȤ�Ť������ƥ��֤��ò����ʤ��������X���ܤ���Ͽ���줿�����ƥ��֤��ò����ʤޤǤˤʤ�ޤ���',3,12,NULL,'2009-11-19 12:39:39',NULL,NULL),(64,'��Ԥ�ɽ�����륫�ƥ����','MAX_DISPLAY_CATEGORIES_PER_ROW','3','��Ԥ�ɽ�����륫�ƥ���������ꤷ�ޤ���',3,13,NULL,'2009-11-19 12:39:39',NULL,NULL),(65,'���徦�ʰ���ɽ����','MAX_DISPLAY_PRODUCTS_NEW','10','���徦�ʥڡ������ڡ�����ɽ�����뾦�ʿ��κ����ͤ����ꤷ�ޤ���',3,14,NULL,'2009-11-19 12:39:39',NULL,NULL),(66,'�٥��ȥ��顼�κ���ɽ�����','MAX_DISPLAY_BESTSELLERS','10','�٥��ȥ��顼�ڡ������ڡ�����ɽ������٥��ȥ��顼���ʿ��κ����ͤ����ꤷ�ޤ���',3,15,NULL,'2009-11-19 12:39:39',NULL,NULL),(67,'�֤���ʾ��ʤ���äƤ��ޤ��פκ���ɽ�����','MAX_DISPLAY_ALSO_PURCHASED','6','�֤���ʾ��ʤ���äƤ��ޤ������ɽ�����뾦�ʿ��κ����ͤ����ꤷ�ޤ���',3,16,NULL,'2009-11-19 12:39:39',NULL,NULL),(68,'�ܵҤ���ʸ����ܥå����κ���ɽ����','MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX','6','�ܵҤ���ʸ����ܥå�����ɽ�����뾦�ʿ��κ����ͤ����ꤷ�ޤ���',3,17,NULL,'2009-11-19 12:39:39',NULL,NULL),(69,'��ʸ����ڡ����κ���ɽ�����','MAX_DISPLAY_ORDER_HISTORY','10','�ܵҤ���ʸ����ڡ������ڡ�����ɽ�����뾦�ʿ��κ����ͤ����ꤷ�ޤ���',3,18,NULL,'2009-11-19 12:39:39',NULL,NULL),(70,'�ܵҴ����ڡ�����ɽ������ܵҿ��κ�����','MAX_DISPLAY_SEARCH_RESULTS_CUSTOMER','20','',3,19,NULL,'2009-11-19 12:39:39',NULL,NULL),(71,'��ʸ�����ڡ�����ɽ��������ʸ���κ�����','MAX_DISPLAY_SEARCH_RESULTS_ORDERS','20','',3,20,NULL,'2009-11-19 12:39:39',NULL,NULL),(72,'��ݡ��ȥڡ�����ɽ�����뾦�ʿ��κ�����','MAX_DISPLAY_SEARCH_RESULTS_REPORTS','20','',3,21,NULL,'2009-11-19 12:39:39',NULL,NULL),(73,'���ƥ���/���ʥڡ�����ɽ������ꥹ�ȿ�','MAX_DISPLAY_RESULTS_CATEGORIES','10','���ڡ�����ɽ�����뾦�ʿ��κ����ͤ����ꤷ�ޤ���',3,22,NULL,'2009-11-19 12:39:39',NULL,NULL),(74,'���ʥꥹ�� - �ڡ������������ɽ����','MAX_DISPLAY_PRODUCTS_LISTING','10','�ȥåץڡ����ξ��ʥꥹ��ɽ���Ǥκ���ɽ���������ꤷ�ޤ���',3,30,NULL,'2009-11-19 12:39:39',NULL,NULL),(75,'���ʥ��ץ���� - ���ץ����̾�ȥ��ץ�����ͤ�ɽ��','MAX_ROW_LISTS_OPTIONS','10','���ʥ��ץ����ڡ�����ɽ�����륪�ץ����̾/���ץ�����ͤκ����ͤ����ꤷ�ޤ���',3,24,NULL,'2009-11-19 12:39:39',NULL,NULL),(76,'���ʥ��ץ���� - ���ץ�����������','MAX_ROW_LISTS_ATTRIBUTES_CONTROLLER','30','���ץ����������̤�ɽ�����륪�ץ������κ����ͤ����ꤷ�ޤ���',3,25,NULL,'2009-11-19 12:39:39',NULL,NULL),(77,'����°��- ��������ɴ����ڡ�����ɽ��','MAX_DISPLAY_SEARCH_RESULTS_DOWNLOADS_MANAGER','30','��������ɴ������̤ǡ���������ɾ��ʤ�°���κ���ɽ���������ꤷ�ޤ���',3,26,NULL,'2009-11-19 12:39:39',NULL,NULL),(78,'�������ᾦ�� - �������̤ǤΥڡ���������ɽ�������','MAX_DISPLAY_SEARCH_RESULTS_FEATURED_ADMIN','10','�������̤ˤ����ơ��ڡ���������Τ������ᾦ�ʤ����ɽ����������ꤷ�ޤ���',3,27,NULL,'2009-11-19 12:39:39',NULL,NULL),(79,'�������ᾦ�� - �ȥåץڡ����Ǥκ���ɽ����','MAX_DISPLAY_SEARCH_RESULTS_FEATURED','9','�ȥåץڡ����Ǥ������ᾦ�ʤ���粿��ɽ�����뤫�����ꤷ�ޤ���',3,28,NULL,'2009-11-19 12:39:39',NULL,NULL),(80,'�������ᾦ�� - ���ʥꥹ�ȤǤκ���ɽ����','MAX_DISPLAY_PRODUCTS_FEATURED_PRODUCTS','10','���ʥꥹ�ȤǤ������ᾦ�ʤ�ڡ�����������粿��ɽ�����뤫�����ꤷ�ޤ���',3,29,NULL,'2009-11-19 12:39:39',NULL,NULL),(81,'�������ᾦ�ʤΥ�����ɽ���ܥå��� - ����ɽ����','MAX_RANDOM_SELECT_FEATURED_PRODUCTS','10','�������ᾦ�ʤΥ�����ɽ���ܥå����ˤ����ơ����粿��ɽ�����뤫�����ꤷ�ޤ���',3,30,NULL,'2009-11-19 12:39:39',NULL,NULL),(82,'�ò����� - �ȥåץڡ����Ǥκ���ɽ������','MAX_DISPLAY_SPECIAL_PRODUCTS_INDEX','9','�ȥåץڡ����ǡ��ò����ʤ���粿��ɽ�����뤫�����ꤷ�ޤ���',3,31,NULL,'2009-11-19 12:39:39',NULL,NULL),(83,'���徦�� - ɽ������','SHOW_NEW_PRODUCTS_LIMIT','0','���徦�ʤ�ɽ�����¤����ꤷ�ޤ���<br />\r\n<br />\r\n��0=���ơ��߽�<br />\r\n��1=������Ͽʬ�Τ�<br />\r\n��30=��Ͽ����30����<br />\r\n��60=��Ͽ����60����(�ۤ�90��120�����꤬��ǽ)',3,40,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'7\', \'14\', \'30\', \'60\', \'90\', \'120\'), '),(84,'���ʰ����ڡ��� - �ڡ���������ɽ������','MAX_DISPLAY_PRODUCTS_ALL','10','���ʰ����ˤ����ơ��ڡ���������κ���ɽ�����������ꤷ�ޤ���',3,45,NULL,'2009-11-19 12:39:39',NULL,NULL),(85,'���쥵���ɥܥå��� -���ե�å�����ɽ����','MAX_LANGUAGE_FLAGS_COLUMNS','3','���쥵���ɥܥå����ˤ����ơ��󤢤���Υե�å��κ���ɽ�����������ꤷ�ޤ���',3,50,NULL,'2009-11-19 12:39:39',NULL,NULL),(86,'�ե�����Υ��åץ��ɥ����� - ���','MAX_FILE_UPLOAD_SIZE','2048000','�ե����륢�åץ��ɤκݤξ�¥����������ꤷ�ޤ����ǥե���Ȥ�2MB(2,048,000�Х���)�Ǥ���',3,60,NULL,'2009-11-19 12:39:39',NULL,NULL),(87,'���åץ��ɥե�����˵��Ĥ���ե����륿����','UPLOAD_FILENAME_EXTENSIONS','jpg,jpeg,gif,png,eps,cdr,ai,pdf,tif,tiff,bmp,zip','�桼���������åץ��ɤ���ե�������Ф��Ƶ��Ĥ���ե����륿���פγ�ĥ�Ҥ����ꤷ�ޤ���ʣ���ξ��ϥ����(,)�Ƕ��ڤꡢ�����(.)�ϴޤ�ʤ��Ǥ���������<br /><br />������: \"jpg,jpeg,gif,png,eps,cdr,ai,pdf,tif,tiff,bmp,zip\"',3,61,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea('),(88,'�������̤���ʸ�ꥹ�Ȥ�ɽ��������ʸ�ܺ٤κ�����','MAX_DISPLAY_RESULTS_ORDERS_DETAILS_LISTING','0','�������̤���ʸ�ꥹ�ȤǤ���ʸ�ܺ٤κ���ɽ�������?<br />0 = ̵����',3,65,NULL,'2009-11-19 12:39:39',NULL,NULL),(89,'�������̤Υꥹ�Ȥ�ɽ������PayPal IPN�κ�����','MAX_DISPLAY_SEARCH_RESULTS_PAYPAL_IPN','20','�������̤Υꥹ�ȤǤ�PayPal IPN��ɽ�������?<br />�ǥե���Ȥ�20�Ǥ���',3,66,NULL,'2009-11-19 12:39:39',NULL,NULL),(90,'�ޥ�����ƥ���ޥ͡�����Ǿ��ʤ�ɽ�����륫���κ����','MAX_DISPLAY_PRODUCTS_TO_CATEGORIES_COLUMNS','3','�ޥ�����ƥ���ޥ͡�����(Multiple Categories Manager)�Ǿ��ʤ�ɽ�����륫���κ������?<br />3 = �ǥե����',3,70,NULL,'2009-11-19 12:39:39',NULL,NULL),(91,'EZ�ڡ�����ɽ���κ�����','MAX_DISPLAY_SEARCH_RESULTS_EZPAGE','20','EZ�ڡ�����ɽ���κ�������?<br />20 = �ǥե����',3,71,NULL,'2009-11-19 12:39:39',NULL,NULL),(92,'���ʲ���(��)�β���','SMALL_IMAGE_WIDTH','100','�����ʲ����β���(�ԥ�����)�����ꤷ�ޤ���',4,1,NULL,'2009-11-19 12:39:39',NULL,NULL),(93,'���ʲ���(��)�ι⤵','SMALL_IMAGE_HEIGHT','80','�����ʲ����ι⤵(�ԥ�����)�����ꤷ�ޤ���',4,2,NULL,'2009-11-19 12:39:39',NULL,NULL),(94,'�إå������β��� - ��������','HEADING_IMAGE_WIDTH','57','�������̤ǤΥإå������β��������ꤷ�ޤ���',4,3,NULL,'2009-11-19 12:39:39',NULL,NULL),(95,'�إå������ι⤵ - ��������','HEADING_IMAGE_HEIGHT','40','�������̤ǤΥإå������ι⤵�����ꤷ�ޤ���',4,4,NULL,'2009-11-19 12:39:39',NULL,NULL),(96,'���֥��ƥ�������β���','SUBCATEGORY_IMAGE_WIDTH','100','���֥��ƥ�������β�����ԥ�����������ꤷ�ޤ���',4,5,NULL,'2009-11-19 12:39:39',NULL,NULL),(97,'���֥��ƥ�������ι⤵','SUBCATEGORY_IMAGE_HEIGHT','57','���֥��ƥ�������ι⤵��ԥ�����������ꤷ�ޤ���',4,6,NULL,'2009-11-19 12:39:39',NULL,NULL),(98,'������������׻�','CONFIG_CALCULATE_IMAGE_SIZE','true','������������ưŪ�˷׻����뤫�ɤ��������ꤷ�ޤ���',4,7,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(99,'������ɬ�ܤȤ���','IMAGE_REQUIRED','true','�������ʤ����Ȥ�ɽ�����ޤ���(�������κ�������ͭ��)',4,8,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(100,'����åԥ󥰥����Ȥ���� - ���ʲ�����ɽ�����󡦥���','IMAGE_SHOPPING_CART_STATUS','1','����åԥ󥰥����Ȥ���Ȥ����äƤ��뾦�ʤβ�����ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= on',4,9,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(101,'����åԥ󥰥����Ȥ���Ȥβ����β���','IMAGE_SHOPPING_CART_WIDTH','50','�ǥե���� = 50',4,10,NULL,'2009-11-19 12:39:39',NULL,NULL),(102,'����åԥ󥰥����Ȥ���Ȥβ����ι⤵','IMAGE_SHOPPING_CART_HEIGHT','40','�ǥե���� = 40',4,11,NULL,'2009-11-19 12:39:39',NULL,NULL),(103,'���ʾ��� - ���ƥ��ꥢ����������β���','CATEGORY_ICON_IMAGE_WIDTH','57','���ʾ���ڡ����ǤΥ��ƥ��ꥢ������β���(�ԥ������)��?',4,13,NULL,'2009-11-19 12:39:39',NULL,NULL),(104,'���ʾ��� - ���ƥ��ꥢ����������ι⤵','CATEGORY_ICON_IMAGE_HEIGHT','40','���ʾ���ڡ����ǤΥ��ƥ��ꥢ������ι⤵(�ԥ������)��?',4,14,NULL,'2009-11-19 12:39:39',NULL,NULL),(105,'���ʾ��� - �����β���','MEDIUM_IMAGE_WIDTH','150','���ʲ����β��������ꤷ�ޤ���',4,20,NULL,'2009-11-19 12:39:39',NULL,NULL),(106,'���ʾ��� - �����ι⤵','MEDIUM_IMAGE_HEIGHT','120','���ʲ����ι⤵�����ꤷ�ޤ���',4,21,NULL,'2009-11-19 12:39:39',NULL,NULL),(107,'���ʾ��� - ����(��)�Υե�����������(Suffix)','IMAGE_SUFFIX_MEDIUM','_MED','���ʲ����Υե����������������ꤷ�ޤ���<br /><br />���ǥե���� = _MED',4,22,NULL,'2009-11-19 12:39:39',NULL,NULL),(108,'���ʾ��� - ����(��)�Υե�����������(Suffix)','IMAGE_SUFFIX_LARGE','_LRG','���ʲ����Υե����������������ꤷ�ޤ���<br /><br />\r\n���ǥե���� = _LRG',4,23,NULL,'2009-11-19 12:39:39',NULL,NULL),(109,'���ʾ��� - ���Ԥ�ɽ�������ɲò�����','IMAGES_AUTO_ADDED','3','���ʾ���ǣ��Ԥ�ɽ�������ɲò����������ꤷ�ޤ���<br /><br />\r\n���ǥե���� = 3',4,30,NULL,'2009-11-19 12:39:39',NULL,NULL),(110,'���ʥꥹ�� - �����β���','IMAGE_PRODUCT_LISTING_WIDTH','100','�ǥե���� = 100',4,40,NULL,'2009-11-19 12:39:39',NULL,NULL),(111,'���ʥꥹ�� - �����ι⤵','IMAGE_PRODUCT_LISTING_HEIGHT','80','�ǥե���� = 80',4,41,NULL,'2009-11-19 12:39:39',NULL,NULL),(112,'�����ʥꥹ�� - �����β���','IMAGE_PRODUCT_NEW_LISTING_WIDTH','100','�ǥե���� = 100',4,42,NULL,'2009-11-19 12:39:39',NULL,NULL),(113,'�����ʥꥹ�� - �����ι⤵','IMAGE_PRODUCT_NEW_LISTING_HEIGHT','80','�ǥե���� = 80',4,43,NULL,'2009-11-19 12:39:39',NULL,NULL),(114,'������ - �����β���','IMAGE_PRODUCT_NEW_WIDTH','100','�ǥե���� = 100',4,44,NULL,'2009-11-19 12:39:39',NULL,NULL),(115,'������ - �����ι⤵','IMAGE_PRODUCT_NEW_HEIGHT','80','�ǥե���� = 80',4,45,NULL,'2009-11-19 12:39:39',NULL,NULL),(116,'�������ᾦ�� -��������','IMAGE_FEATURED_PRODUCTS_LISTING_WIDTH','100','�ǥե���� = 100',4,46,NULL,'2009-11-19 12:39:39',NULL,NULL),(117,'�������ᾦ�� - �����ι⤵','IMAGE_FEATURED_PRODUCTS_LISTING_HEIGHT','80','�ǥե���� = 80',4,47,NULL,'2009-11-19 12:39:39',NULL,NULL),(118,'�����ʰ��� - ��������','IMAGE_PRODUCT_ALL_LISTING_WIDTH','100','�ǥե���� = 100',4,48,NULL,'2009-11-19 12:39:39',NULL,NULL),(119,'�����ʰ��� - �����ι⤵','IMAGE_PRODUCT_ALL_LISTING_HEIGHT','80','�ǥե���� = 80',4,49,NULL,'2009-11-19 12:39:39',NULL,NULL),(120,'���ʲ��� - �������ʤ�����No Image����','PRODUCTS_IMAGE_NO_IMAGE_STATUS','1','��No Image�ײ�����ưŪ��ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= On<br />',4,60,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(121,'���ʲ��� - No Image�����λ���','PRODUCTS_IMAGE_NO_IMAGE','no_picture.gif','���ʲ������ʤ�����ɽ������No Image���������ꤷ�ޤ���<br /><br />Default = no_picture.gif',4,61,NULL,'2009-11-19 12:39:39',NULL,NULL),(122,'���ʲ��� - ���ʡ����ƥ���ǥץ�ݡ�����ʥ�ʲ�����Ȥ�','PROPORTIONAL_IMAGES_STATUS','1','���ʾ��󡦥��ƥ���ǥץ�ݡ�����ʥ�ʲ�����Ȥ��ޤ���?<br /><br />��ա��ץ�ݡ�����ʥ�����ˤϹ⤵�������Ȥ�\"0\"(�ԥ�����)����ꤷ�ʤ��Ǥ���������<br />0= off 1= on',4,75,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(123,'(�᡼����)�ɾ�ɽ��(Mr. or Ms)','ACCOUNT_GENDER','true','�ܵҤΥ�������Ⱥ����κݡ��᡼���Ѥηɾ�(Mr. or Ms) ��ɽ�����뤫�ɤ��������ꤷ�ޤ���',5,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(124,'��ǯ����','ACCOUNT_DOB','true','�ܵҤΥ�������Ⱥ����κݡ�����ǯ�����פ����ɽ�����뤫�ɤ��������ꤷ�ޤ���<br />���: ���פʾ���false�ˡ�ɬ�פʾ���true����ꤷ�Ƥ���������',5,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(125,'���̾','ACCOUNT_COMPANY','true','�ܵҤΥ�������Ⱥ����κݡ��ֲ��̾�פ�ɽ�����뤫�ɤ��������ꤷ�ޤ���',5,3,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(126,'����2','ACCOUNT_SUBURB','false','�ܵҤΥ�������Ⱥ����κݡ��ֽ���2�פ�ɽ�����뤫�ɤ��������ꤷ�ޤ���',5,4,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(127,'��ƻ�ܸ�̾','ACCOUNT_STATE','true','�ܵҤΥ�������Ⱥ����κݡ�����ƻ�ܸ�̾�פ�ɽ�����뤫�ɤ��������ꤷ�ޤ���',5,5,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(128,'��ƻ�ܸ�̾ - �ɥ�åץ������ɽ��','ACCOUNT_STATE_DRAW_INITIAL_DROPDOWN','false','����ƻ�ܸ�̾�פϾ�˥ɥ�åץ����������ɽ�����ޤ���?',5,5,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(129,'��������ȤΥǥե���ȹ���ID�κ���','SHOW_CREATE_ACCOUNT_DEFAULT_COUNTRY','107','��������ȤΥǥե���ȹ���ID�����ꤷ�ޤ���<br />�ǥե���Ȥ�223�Ǥ���',5,6,NULL,'2009-11-19 12:39:39','zen_get_country_name','zen_cfg_pull_down_country_list_none('),(130,'Fax�ֹ�','ACCOUNT_FAX_NUMBER','true','�ܵҤΥ�������Ⱥ����κݡ���Fax�ֹ�פ�ɽ�����뤫�ɤ��������ꤷ�ޤ���',5,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(131,'�᡼��ޥ�����Υ����å��ܥå�����ɽ��','ACCOUNT_NEWSLETTER_STATUS','1','�᡼��ޥ�����Υ����å��ܥå�����ɽ������򤷤ޤ���<br />0= ɽ������<br />1= �ܥå���ɽ���������å��ʤ�����<br />2= �ܥå���ɽ���������å��������<br />����աۥǥե���Ȥǡ֥����å�����פξ��֤ˤ��Ƥ����ȡ��ƹ�Υ��ѥ൬��ˡ�����񿨤��붲�줬����ޤ���',5,45,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(132,'�ǥե���ȤΥ᡼�����������','ACCOUNT_EMAIL_PREFERENCE','0','�ܵҤΥǥե���ȤΥ᡼����������ꤷ�ޤ���<br />0= �ƥ����ȷ���<br />1= HTML����',5,46,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(133,'�ܵҤؤξ��ʤ����� - ���ơ�����','CUSTOMERS_PRODUCTS_NOTIFICATION_STATUS','1','�ܵҤ������å������ȸ�ˡ����ʤ�����(product notifications)�ˤĤ��ƿҤͤ뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= �Ҥͤʤ�<br />\r\n��1= �Ҥͤ�(���������Τ��Ф������ꤵ��Ƥ��ʤ����)<br />\r\n����աۥ����ɥܥå����Ϥ�������Ȥ��̤˥��դˤ���ɬ�פ�����ޤ���',5,50,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(134,'���ʡ����ʤα�������','CUSTOMERS_APPROVAL','0','�ܵҤ�����å���Ǿ��ʤ���ʤ��������Τ����¤��뤫�ɤ��������ꤷ�ޤ���<br />0= �ץ�����ʤɤ����¤ʤ�<br />1= �֥饦���ˤϥ�����ɬ��<br />2= ������ʤ��ǥ֥饦����ǽ�������ʤ���ɽ��<br />3= ���ʱ����Τ�<br /><br />����աۥ��ץ�����2�פϡ����������󥸥�Υ�ܥåȤ˼������줿���ʤ����䡢������ѤߤθܵҤˤΤ߲��ʤ򳫼�����������ͭ���Ǥ���',5,55,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(135,'�ܵҤι����������饤��','CUSTOMERS_APPROVAL_AUTHORIZATION','0','����åפǤι����˺ݤ��ơ��ܵҤϥ���å�¦�˿��������Ĥ����ɬ�פ����뤫�ɤ��������ꤷ�ޤ���<br />0= ����<br />1= ���ʤα����ˤ���Ĥ�ɬ��<br />2= ���ʤα����ϼ�ͳ�������ʤα����ϵ��Ĥ��줿�ܵҤΤ�<br />����աۥ��ץ�����2�פϥ��������󥸥�Υ�ܥåȽ������Ѥ��뤳�Ȥ�Ǥ��ޤ���',5,65,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(136,'�ܵҤΥ������饤��(��������) - �ե�����̾','CUSTOMERS_AUTHORIZATION_FILENAME','customers_authorization','�ܵҤΥ������饤��(��������)�˻Ȥ��ե�����̾�����ꤷ�ޤ�����ĥ�Ҥʤ���ɽ�����Ƥ���������<br />�ǥե���Ȥ�\r\n\"customers_authorization\"',5,66,NULL,'2009-11-19 12:39:39',NULL,''),(137,'�ܵҤΥ������饤��(��������) - �إå��򱣤�','CUSTOMERS_AUTHORIZATION_HEADER_OFF','false','�ܵҤΥ������饤��(��������) �ǥإå���ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true=hide<br />\r\n��false=show',5,67,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(138,'�ܵҤΥ������饤��(��������) - �������򱣤�','CUSTOMERS_AUTHORIZATION_COLUMN_LEFT_OFF','false','�ܵҤΥ������饤��(��������) �ǡ���������ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true=hide<br />\r\n��false=show',5,68,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(139,'�ܵҤΥ������饤��(��������) - �������򱣤�','CUSTOMERS_AUTHORIZATION_COLUMN_RIGHT_OFF','false','�ܵҤΥ������饤��(��������)�ǡ���������ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true=hide<br />\r\n��false=show',5,69,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(140,'�ܵҤΥ������饤��(��������) - �եå��򱣤�','CUSTOMERS_AUTHORIZATION_FOOTER_OFF','false','�ܵҤΥ������饤��(��������) �ǡ��եå���ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true=hide<br />\r\n��false=show',5,70,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(141,'�ܵҤΥ������饤��(��������) - ���ʤ���ɽ��','CUSTOMERS_AUTHORIZATION_PRICES_OFF','false','�ܵҤΥ������饤���ǡ����ʤ�ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true=hide<br />\r\n��false=show',5,71,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(142,'�ܵҤξҲ�(Customers Referral)���ơ�����','CUSTOMERS_REFERRAL_STATUS','0','�ܵҤξҲ𥳡��ɤˤĤ������ꤷ�ޤ���<br />0= Off<br />1= 1st Discount Coupon Code used�ǽ�Υǥ���������ȥ����ݥ����ѺѤ�<br />2= ��������Ⱥ����κݡ��ܵҼ��Ȥ��ɲá��Խ���ǽ<br /><br />��ա��ܵҤξҲ𥳡��ɤ����åȤ����ȡ��������̤�������ѹ����뤳�Ȥ��Ǥ��ޤ���',5,80,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(143,'���󥹥ȡ���Ѥߤλ�ʧ���⥸�塼��','MODULE_PAYMENT_INSTALLED','cc.php;cod.php','���󥹥ȡ��뤵��Ƥ����ʧ���⥸�塼��Υե�����̾�Υꥹ��( ���ߥ����(;)���ڤ� )�Ǥ������ξ���ϼ�ưŪ�˹�������ޤ��Τ��Խ���ɬ�פϤ���ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL),(144,'���󥹥ȡ���Ѥ���ʸ��ץ⥸�塼��','MODULE_ORDER_TOTAL_INSTALLED','ot_subtotal.php;ot_shipping.php;ot_coupon.php;ot_tax.php;ot_loworderfee.php;ot_gv.php;ot_subpoint.php;ot_total.php;ot_addpoint.php','���󥹥ȡ��뤵��Ƥ�����ʸ��ץ⥸�塼��Υե�����̾�Υꥹ��(���ߥ����(;)���ڤ�)�Ǥ���\r\n<br /><br />\r\n����աۤ��ξ���ϼ�ưŪ�˹�������ޤ��Τ��Խ���ɬ�פϤ���ޤ���',6,0,'2009-11-19 18:26:12','2009-11-19 12:39:39',NULL,NULL),(145,'���󥹥ȡ���Ѥ������⥸�塼��','MODULE_SHIPPING_INSTALLED','flat.php','���󥹥ȡ��뤵��Ƥ��������⥸�塼��Υե�����̾�Υꥹ��(���ߥ����(;)���ڤ�)�Ǥ������ξ���ϼ�ưŪ�˹�������ޤ��Τ��Խ���ɬ�פϤ���ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL),(146,'�������⥸�塼���ͭ���ˤ���','MODULE_PAYMENT_COD_STATUS','True','�������⥸�塼���ͭ���ˤ��뤫�ɤ��������ꤷ�ޤ���',6,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(147,'��ʧ���ϰ�','MODULE_PAYMENT_COD_ZONE','0','�ϰ�����򤷤���硢���򤵤줿�ϰ���Ф��ƤΤ߻�ʧ����ˡ��Ŭ�Ѥ���ޤ���',6,2,NULL,'2009-11-19 12:39:39','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes('),(148,'ɽ���������','MODULE_PAYMENT_COD_SORT_ORDER','0','ɽ�������������ꤷ�ޤ����������������ۤɾ�̤�ɽ������ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL),(149,'��ʸ���ơ�����������','MODULE_PAYMENT_COD_ORDER_STATUS_ID','0','���λ�ʧ����ˡ�ξ�����ʸ���ơ����������ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39','zen_get_order_status_name','zen_cfg_pull_down_order_statuses('),(150,'���쥸�åȥ����ɥ⥸�塼���ͭ���ˤ���','MODULE_PAYMENT_CC_STATUS','True','���쥸�åȥ����ɤˤ���ʧ����ͭ���ˤ��뤫�ɤ��������ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(151,'���쥸�åȥ������ֹ��ʬ�䤹��','MODULE_PAYMENT_CC_EMAIL','','�᡼�륢�ɥ쥹�����Ϥ��줿��硢���쥸�åȥ����ɤ���֤ο����򤽤Υ��ɥ쥹�����������Ĥ�γ�¦���ֹ��ǡ����١�������¸���ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL),(152,'CVV�ֹ����¸����','MODULE_PAYMENT_CC_COLLECT_CVV','false','CVV�ֹ�����/��¸���ޤ���? ��ա�ͭ���ˤ���ȡ�CVV�ֹ�ϥ��󥳡��ɤ��줿���֤ǥǡ����١�������¸����ޤ���',6,0,NULL,'2004-01-11 22:55:51',NULL,'zen_cfg_select_option(array(\'True\', \'False\'),'),(153,'���쥸�åȥ����ɥʥ�С����������¸����','MODULE_PAYMENT_CC_STORE_NUMBER','False','���쥸�åȥ������ֹ���������¸���뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n����աۥ��쥸�åȥ������ֹ�ϰŹ沽�ʤ�����¸����ޤ����������ƥ��������˽�ʬ��դ��Ƥ���������',6,0,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'),'),(154,'ɽ���������','MODULE_PAYMENT_CC_SORT_ORDER','0','ɽ�������������ꤷ�ޤ�. �������������ۤɾ�̤�ɽ������ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL),(155,'��ʧ���ϰ�','MODULE_PAYMENT_CC_ZONE','0','�ϰ�����򤷤���硢���򤵤줿�ϰ�ˤ������ƤΤ߻�ʧ����ˡ��Ŭ�Ѥ���ޤ���',6,2,NULL,'2009-11-19 12:39:39','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes('),(156,'��ʸ���ơ�����','MODULE_PAYMENT_CC_ORDER_STATUS_ID','0','���λ�ʧ����ˡ�ξ�����ʸ���ơ����������ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39','zen_get_order_status_name','zen_cfg_pull_down_order_statuses('),(157,'�������','MODULE_SHIPPING_FLAT_STATUS','True','�������ˤ���������󶡤��뤫�ɤ��������ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(158,'��������','MODULE_SHIPPING_FLAT_COST','5.00','���٤Ƥ���ʸ���Ф���Ŭ�Ѥ����������������ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL),(159,'�Ǽ���','MODULE_SHIPPING_FLAT_TAX_CLASS','0','��������Ŭ�Ѥ�����Ǽ��̤����򤷤ޤ���',6,0,NULL,'2009-11-19 12:39:39','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes('),(160,'��Ψ�η׻��١���','MODULE_SHIPPING_FLAT_TAX_BASIS','Shipping','�������ˤ������Ƕ⥪�ץ��������ꤷ�ޤ���<br /><br />\r\n��Shipping - �ܵҤ������轻��˴�Ť�<br />\r\n��Billing - �ܵҤ������轻��˴�Ť�<br />\r\n��Store - ����åפν�߽���˴�Ť�(������/�����褬����å׽���Ϥ�Ʊ���ϰ�ξ���ͭ��)',6,0,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'Shipping\', \'Billing\', \'Store\'), '),(161,'�����ϰ�','MODULE_SHIPPING_FLAT_ZONE','0','�����ϰ�����򤹤�����򤵤줿�ϰ�Τߤ����Ѳ�ǽ�ˤʤ�ޤ���',6,0,NULL,'2009-11-19 12:39:39','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes('),(162,'ɽ���������','MODULE_SHIPPING_FLAT_SORT_ORDER','0','ɽ��������������Ǥ��ޤ����������������ۤɾ�̤�ɽ������ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL),(163,'�ǥե���Ȥ��̲�','DEFAULT_CURRENCY','JPY','�ǥե���Ȥ��̲ߤ����ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL),(164,'�ǥե���Ȥθ���','DEFAULT_LANGUAGE','ja','�ǥե���Ȥθ�������ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL),(165,'������ʸ�Υǥե���ȥ��ơ�����','DEFAULT_ORDERS_STATUS_ID','1','��������ʸ������դ����Ȥ��Υǥե���ȥ��ơ����������ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL),(166,'�������̤����ꥭ��(configuration_key)��ɽ��','ADMIN_CONFIGURATION_KEY_ON','0','�������̤����ꥭ��(configuration_key)��ɽ�����ޤ���?<br />\r\nɽ������������1�����ꤷ�Ƥ���������',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL),(167,'�вٹ�̾','SHIPPING_ORIGIN_COUNTRY','107','�������η׻������Ѥ��뤿��ι�̾�����򤷤ޤ���',7,1,NULL,'2009-11-19 12:39:39','zen_get_country_name','zen_cfg_pull_down_country_list('),(168,'����åפ�͹���ֹ�','SHIPPING_ORIGIN_ZIP','100-0000','����åפ�͹���ֹ�����Ϥ��ޤ���',7,2,NULL,'2009-11-19 12:39:39',NULL,NULL),(169,'����������������ǽ�ʺ������(kg)','SHIPPING_MAX_WEIGHT','50','���������ǲ�ǽ�ʽ���(kg)�κ����ͤ����ꤷ�ޤ����㤨��10kg�����ꤷ�����֤ǥ����Ȥ�30kg�ξ��ʤ����ä���硢10kg �� 3��������Ȥ������ǽ�������ޤ���',7,3,NULL,'2009-11-19 12:39:39',NULL,NULL),(170,'������ѥå����������� - ��Ψ������','SHIPPING_BOX_WEIGHT','0:3','ŵ��Ū�ʾ�����ѥå�����������(�դ��������礭���Ƚ���)�����ꤷ�ޤ���<br />\r\n�㡧10% + 1lb 10:1<br />\r\n10% + 0lbs 10:0<br />\r\n0% + 5lbs 0:5<br />\r\n0% + 0lbs 0:0',7,4,NULL,'2009-11-19 12:39:39',NULL,NULL),(171,'�緿�ѥå����������� - �礭��������','SHIPPING_BOX_PADDING','10:0','�礭�ʥѥå���������������(�դ��������礭���Ƚ���)�����ꤷ�ޤ���<br />\r\n�㡧10% + 1lb 10:1<br />\r\n10% + 0lbs 10:0<br />\r\n0% + 5lbs 0:5<br />\r\n0% + 0lbs 0:0',7,5,NULL,'2009-11-19 12:39:39',NULL,NULL),(172,'�Ŀ��Ƚ��̤�ɽ��','SHIPPING_BOX_WEIGHT_DISPLAY','3','���������ʪ�θĿ��Ƚ��̤�ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= �Ŀ��Τ�ɽ��<br />\r\n��2= ���̤Τ�ɽ��<br />\r\n��3= ξ��ɽ��',7,15,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(173,'��������ɽ����ɽ������ɽ��','SHOW_SHIPPING_ESTIMATOR_BUTTON','1','���������ܥ����ɽ�����뤫�ɤ��������ꤷ�ޤ���<br />\r\n��0= Off<br />\r\n��1= ����åԥ󥰥����Ⱦ�˥ܥ���Ȥ���ɽ��',7,20,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(174,'��ʸ�ν��̤�0�ʤ�����̵����','ORDER_WEIGHT_ZERO_STATUS','1','��ʸ�ν��̤�0�ξ�硢����̵���ˤ��ޤ���?\r\n<br />\r\n��0= ������<br />\r\n��1= �Ϥ�<br />\r\n��ա�������̵����ɽ���򤷤������ˤ�����̵���⥸�塼���Ȥ����Ȥ򤪴��ᤷ�ޤ������Υ��ץ����ϼºݤ�����̵���ΤȤ���ɽ�����������Ǥ���',7,15,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(175,'���ʥ��᡼����ɽ��','PRODUCT_LIST_IMAGE','1','���ʰ�����ξ��ʲ�����ɽ������ɽ��/�����Ƚ�����ꤷ�ޤ���<br /><br />\r\n�����ͤ��������ۤ����ɽ��<br />\r\n��0 = ��ɽ��',8,1,NULL,'2009-11-19 12:39:39',NULL,NULL),(176,'���ʥ᡼������ɽ��','PRODUCT_LIST_MANUFACTURER','0','���ʤΥ᡼����̾��ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n�����ͤ��������ۤ����ɽ��<br />\r\n��0 = ��ɽ��',8,2,NULL,'2009-11-19 12:39:39',NULL,NULL),(177,'���ʷ��֤�ɽ��','PRODUCT_LIST_MODEL','0','���ʰ�����ξ��ʷ��֤�ɽ������ɽ��/�����Ƚ�����ꤷ�ޤ������ͤ��������ۤ����ɽ������ޤ���(0 = ��ɽ��)',8,3,NULL,'2009-11-19 12:39:39',NULL,NULL),(178,'����̾','PRODUCT_LIST_NAME','2','���ʰ�����ξ���̾��ɽ������ɽ��/�����Ƚ�����ꤷ�ޤ���<br /><br />\r\n�����ͤ��������ۤ����ɽ��<br />\r\n��0 = ��ɽ��',8,4,NULL,'2009-11-19 12:39:39',NULL,NULL),(179,'���ʲ��ʡ��֥����Ȥ������פ�ɽ��','PRODUCT_LIST_PRICE','3','���ʲ��ʡ��֥����Ȥ������ץܥ����ɽ�����뤫�ɤ��������ꤷ�ޤ���<br />\r\n<br />\r\n�����ͤ��������ۤ����ɽ��<br />\r\n��0 = ��ɽ��',8,5,NULL,'2009-11-19 12:39:39',NULL,NULL),(180,'���ʿ��̤�ɽ��','PRODUCT_LIST_QUANTITY','0','���ʰ�����ξ��ʿ��̤�ɽ������ɽ��/�����Ƚ�����ꤷ�ޤ���<br /><br />\r\n�����ͤ��������ۤ����ɽ��<br />\r\n��0 = ��ɽ��',8,6,NULL,'2009-11-19 12:39:39',NULL,NULL),(181,'���ʽ��̤�ɽ��','PRODUCT_LIST_WEIGHT','0','���ʰ�����ξ��ʽ��̤�ɽ������ɽ��/�����Ƚ�����ꤷ�ޤ������ͤ��������ۤ����ɽ������ޤ���(0 = ��ɽ��)',8,7,NULL,'2009-11-19 12:39:39',NULL,NULL),(182,'���ʲ��ʡ��֥����Ȥ������ץ�������','PRODUCTS_LIST_PRICE_WIDTH','125','���ʲ��ʡ��֥����Ȥ������ץܥ����ɽ�����륫������(�ԥ������)�����ꤷ�ޤ���<br />\r\n��Default= 125',8,8,NULL,'2009-11-19 12:39:39',NULL,NULL),(183,'���ƥ���/�᡼�����ιʤ���ߤ�ɽ��','PRODUCT_LIST_FILTER','1','���ƥ�������ڡ����� [�ʤ����] ��ɽ�����뤫�ɤ��������ꤷ�ޤ���<br />\r\n��0=��ɽ��<br />\r\n��1=ɽ��',8,9,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(184,'[���ڡ���] [���ڡ���] ��ɽ������','PREV_NEXT_BAR_LOCATION','3','[���ڡ���] [���ڡ���] ��ɽ�����֤����ꤷ�ޤ���<br /><br />\r\n��1 = ��<br />\r\n��2 = ��<br />\r\n��3 = ξ��',8,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\'), '),(185,'���ʥꥹ�ȤΥǥե���ȥ����Ƚ�','PRODUCT_LISTING_DEFAULT_SORT_ORDER','','���ʥꥹ�ȤΥǥե���ȤΥ����Ƚ�����ꤷ�ޤ���\r\n<br />\r\n��ա����ʤǥ����Ȥ�����϶���ˡ�\r\nSort the Product Listing in the order you wish for the default display to start in to get the sort order setting. Example: 2a',8,15,NULL,'2009-11-19 12:39:39',NULL,NULL),(186,'�֥����Ȥ������ץܥ����ɽ��','PRODUCT_LIST_PRICE_BUY_NOW','1','�֥����Ȥ������ץܥ����ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= on',8,20,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(187,'ʣ�����ʤο������̵ͭ��ɽ������','PRODUCT_LISTING_MULTIPLE_ADD_TO_CART','3','ʣ�����ʤ򥫡��Ȥ������������ɽ�����뤫�ɤ����ȡ�ɽ�����֤����ꤷ�ޤ���<br />0= off<br />1= ����<br />2= ����<br />3= ξ��',8,25,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(188,'����������ɽ��','PRODUCT_LIST_DESCRIPTION','150','����������ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />0= OFF<br />150= �侩����Ĺ�����ޤ��ϼ�ͳ��ɽ�����뾦�������κ���ʸ���������ꤷ�Ƥ���������',8,30,NULL,'2009-11-19 12:39:39',NULL,NULL),(189,'���ʥꥹ�Ȥξ����ɽ�����뵭��','PRODUCT_LIST_SORT_ORDER_ASCENDING','+','���ʥꥹ�Ȥξ���򼨤������?<br />�ǥե���� = +',8,40,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small('),(190,'���ʥꥹ�Ȥι߽��ɽ�����뵭��','PRODUCT_LIST_SORT_ORDER_DESCENDING','-','���ʥꥹ�Ȥι߽�򼨤������?<br />�ǥե���� = -',8,41,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small('),(191,'�߸˿��Υ����å�','STOCK_CHECK','true','��ʬ�ʺ߸ˤ����뤫�����å����뤫�ɤ��������ꤷ�ޤ���',9,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(192,'�߸˿�����ޥ��ʥ�','STOCK_LIMITED','true','��������ǳƺ߸˿�������ʸ����ޥ��ʥ����ޤ���?',9,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(193,'�����å������Ȥ����','STOCK_ALLOW_CHECKOUT','true','�߸ˤ���­���Ƥ�����˥����å������Ȥ���Ĥ��ޤ���?',9,3,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(194,'�߸��ڤ쾦�ʤΥ�����','STOCK_MARK_PRODUCT_OUT_OF_STOCK','�߸��ڤ�Ǥ�','��ʸ�����Ǿ��ʤ��߸��ڤ�ξ��˸ܵҤ�ɽ�����륵��������ꤷ�ޤ���',9,4,NULL,'2009-11-19 12:39:39',NULL,NULL),(195,'�߸ˤκ���ʸ���','STOCK_REORDER_LEVEL','5','�߸ˤκ���ʸ��ɬ�פˤʤ뾦�ʿ������ꤷ�ޤ���',9,5,NULL,'2009-11-19 12:39:39',NULL,NULL),(196,'�߸��ڤ쾦�ʤΥ��ơ������ѹ�','SHOW_PRODUCTS_SOLD_OUT','0','���ʤκ߸ˤ��ʤ����Υ��ơ�����ɽ�������ꤷ�ޤ���<br /><br />0= ���ʥ��ơ�������OFF��<br />1= ���ʥ��ơ�������ON�Τޤ�',9,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(197,'�߸��ڤ쾦�ʤˡ�����ڤ�ײ���ɽ��','SHOW_PRODUCTS_SOLD_OUT_IMAGE','1','�߸ˤ��ʤ��ʤä����ʤξ��ˡ֥����Ȥ������ץܥ��������ˡ�����ڤ�ײ�����ɽ�����ޤ���?<br /><br />\r\n��0= ɽ�����ʤ�<br />\r\n��1= ɽ������',9,11,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(198,'���ʿ��̤˻���Ǥ��뾮�����η��','QUANTITY_DECIMALS','0','���ʤο��̤˾����������Ѥ���Ĥ����������ꤷ�ޤ���<br /><br />\r\n��0= off',9,15,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(199,'����åԥ󥰥����� - �ֺ���ץ����å��ܥå���/�ܥ���','SHOW_SHOPPING_CART_DELETE','3','�ֺ���ץ����å��ܥå���/�ܥ����ɽ���ˤĤ������ꤷ�ޤ���<br /><br />1= �ܥ���Τ�<br />2= �����å��ܥå����Τ�<br />3= �ܥ���/�����å��ܥå���ξ��',9,20,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\'), '),(200,'����åԥ󥰥����� -�֥����Ȥ���Ȥ򹹿��ץܥ���ΰ���','SHOW_SHOPPING_CART_UPDATE','3','�֥����Ȥ���Ȥ򹹿��ץܥ���ΰ��֤����ꤷ�ޤ���<br /><br />1=����ʸ������β�<br />2= ���ʥꥹ�Ȥβ�<br />3=����ʸ������β��Ⱦ��ʥꥹ�Ȥβ�<br /><br />��ա����������3�Ĥ�\"tpl_shopping_cart_default\"�ե����뤬�ƤФ����ʬ�����ꤷ�ޤ���',9,22,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\'), '),(201,'�ڡ����Υѡ������פ������֤���˵�Ͽ���뤫�ɤ��������ꤷ�ޤ���','STORE_PAGE_PARSE_TIME','false','�ڡ����Υѡ������פ������֤���˵�Ͽ���뤫�ɤ��������ꤷ�ޤ���',10,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(202,'�ڡ����Υѡ���������¸����ǥ��쥯�ȥ�ȥե�����̾�����ꤷ�ޤ���','STORE_PAGE_PARSE_TIME_LOG','/var/log/www/zen/page_parse_time.log','�ڡ����Υѡ���������¸����ǥ��쥯�ȥ�ȥե�����̾�����ꤷ�ޤ���',10,2,NULL,'2009-11-19 12:39:39',NULL,NULL),(203,'���˵�Ͽ�������շ��������ꤷ�ޤ���','STORE_PARSE_DATE_TIME_FORMAT','%d/%m/%Y %H:%M:%S','���˵�Ͽ�������շ��������ꤷ�ޤ���',10,3,NULL,'2009-11-19 12:39:39',NULL,NULL),(204,'�ƥڡ����β��˥ѡ������֤�ɽ�����뤫�ɤ��������ꤷ�ޤ���<br />�֥ڡ����Υѡ������֤�Ͽ�פ� true �ˤ��Ƥ���ɬ�פϤ���ޤ���','DISPLAY_PAGE_PARSE_TIME','false','�ƥڡ����β��˥ѡ������֤�ɽ�����뤫�ɤ��������ꤷ�ޤ���<br />�֥ڡ����Υѡ������֤�Ͽ�פ� true �ˤ��Ƥ���ɬ�פϤ���ޤ���',10,4,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(205,'���˥ǡ����١��������꡼��Ͽ���Ƥ������ɤ������ꤷ�ޤ���(PHP4�ξ��Τ�)','STORE_DB_TRANSACTIONS','false','���˥ǡ����١��������꡼��Ͽ���Ƥ������ɤ������ꤷ�ޤ���(PHP4�ξ��Τ�)',10,5,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(206,'�᡼������ - ��³��ˡ','EMAIL_TRANSPORT','sendmail','�᡼��������sendmail�ؤΥ�������³����Ѥ��뤫TCP/IP��ͳ��SMTP��³����Ѥ��뤫�����ꤷ�ޤ��������Ф�OS��Windows��MacOS�ξ���SMTP�����ꤷ�Ƥ���������<br /><br />SMTPAUTH�ϡ������С����᡼�������κݤ�SMTP authorization�������ˤΤ߻ȤäƤ������������ξ�硢�������̤�SMTPAUTH�����Ԥ�ɬ�פ�����ޤ���<br /><br />\"Sendmail -f\"�ϡ�-f�ѥ�᡼����ɬ�פʥ����и���������ǡ����ס��ե��󥰤��ɤ�������Ѥ����뤳�Ȥ�¿���������ƥ��������Ǥ����᡼�륵���С��Υۥ���¦�ǻ��Ѳ�ǽ������ˤʤäƤ��ʤ���硢���顼�ˤʤ뤳�Ȥ�����ޤ���',12,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'sendmail\', \'sendmail-f\', \'smtp\', \'smtpauth\'),'),(207,'SMTPǧ�� - �᡼�륢�������','EMAIL_SMTPAUTH_MAILBOX','YourEmailAccountNameHere','���ʤ��Υۥ��ƥ��󥰥����ӥ����󶡤��Ƥ���᡼�륢�������(�㡧me@mydomain.com)�����Ϥ��Ƥ��������������SMTPǧ�ڤ�ɬ�פʾ���Ǥ���<br />�᡼���SMTPǧ�ڤ�ȤäƤ�����ˤΤ�ɬ�פǤ���',12,101,NULL,'2009-11-19 12:39:39',NULL,NULL),(208,'SMTPǧ�� - �ѥ����','EMAIL_SMTPAUTH_PASSWORD','YourPasswordHere','SMTP�᡼��ܥå����Υѥ���ɤ����Ϥ��Ƥ���������<br />�᡼���SMTPǧ�ڤ�ȤäƤ�����ˤΤ�ɬ�פǤ���',12,101,NULL,'2009-11-19 12:39:39',NULL,NULL),(209,'SMTPǧ�� - DNS̾','EMAIL_SMTPAUTH_MAIL_SERVER','mail.EnterYourDomain.com','SMTP�᡼�륵���Ф�DNS̾�����Ϥ��Ƥ���������<br />�㡧mail.mydomain.com or 55.66.77.88<br />�᡼���SMTPǧ�ڤ�ȤäƤ�����ˤΤ�ɬ�פǤ���',12,101,NULL,'2009-11-19 12:39:39',NULL,NULL),(210,'SMTPǧ�� - IP�ݡ����ֹ�','EMAIL_SMTPAUTH_MAIL_SERVER_PORT','25','SMTP�᡼�륵���Ф����Ѥ���Ƥ���IP�ݡ����ֹ�����Ϥ��Ƥ���������<br />�᡼���SMTPǧ�ڤ�ȤäƤ�����ˤΤ�ɬ�פǤ���',12,101,NULL,'2009-11-19 12:39:39',NULL,NULL),(211,'�ƥ����ȥ᡼��Ǥβ�ʾ���Ѵ�','CURRENCIES_TRANSLATIONS','&amp;pound;,��:&amp;euro;,EUR','�ƥ����ȷ����Υ᡼��ˡ��ɤ�ʲ�ʾ���Ѵ���ɬ�פǤ���?<br />Default = &amp;pound;,��:&amp;euro;,EUR',12,120,NULL,'2003-11-21 00:00:00',NULL,'zen_cfg_textarea_small('),(212,'�᡼��β��ԥ�����','EMAIL_LINEFEED','LF','�᡼��إå�����ڤ�Τ˻��Ѥ�����ԥ����ɤ���ꤷ�ޤ���',12,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'LF\', \'CRLF\'),'),(213,'�᡼��������MIME HTML�����','EMAIL_USE_HTML','false','�᡼���HTML�������������뤫�ɤ��������ꤷ�ޤ���',12,3,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(214,'�᡼�륢�ɥ쥹��DNS�ǳ�ǧ','ENTRY_EMAIL_ADDRESS_CHECK','false','�᡼�륢�ɥ쥹��DNS�����Ф��䤤��碌��ǧ���뤫�ɤ��������ꤷ�ޤ���',12,4,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(215,'�᡼�������','SEND_EMAILS','true','E-Mail�������������뤫�ɤ��������ꤷ�ޤ���',12,5,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(216,'�᡼����¸������','EMAIL_ARCHIVE','false','�����ѤߤΥ᡼�����¸���Ƥ�������true�����ꤷ�Ƥ���������',12,6,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(217,'�᡼���������顼��ɽ��','EMAIL_FRIENDLY_ERRORS','false','�᡼�����������Ԥ����ݡ����ܤǤ狼�륨�顼��ɽ�����ޤ���? ������Υ���åפǤ�true�����ꤹ�뤳�Ȥ򴫤�ޤ���false�����ꤹ���PHP�Υ��顼��å�������ɽ�������Τǡ��ȥ�֥���Υҥ�Ȥˤʤ�ޤ���',12,7,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(218,'�᡼�륢�ɥ쥹 (����åפ�ɽ�������䤤��碌��)','STORE_OWNER_EMAIL_ADDRESS','ohtsuji@ark-web.jp','����åץ����ʡ��Υ᡼�륢�ɥ쥹�Ȥ��ƥ����Ⱦ��ɽ������륢�ɥ쥹�����ꤷ�ޤ���',12,10,NULL,'2009-11-19 12:39:39',NULL,NULL),(219,'�᡼�륢�ɥ쥹 (�ܵҤؤ�������)','EMAIL_FROM','ohtsuji@ark-web.jp','�ܵҤ����������᡼��Υǥե���Ȥ��������Ȥ���ɽ������륢�ɥ쥹�����ꤷ�ޤ���<br />\r\n�������̤ǥ᡼�������򤹤����١��񤭴����뤳�Ȥ�Ǥ��ޤ���',12,11,NULL,'2009-11-19 12:39:39',NULL,NULL),(220,'�����᡼������������ɥ쥹�μº���','EMAIL_SEND_MUST_BE_STORE','No','���Ȥ��Υ᡼�륵���ФǤϡ���������᡼���������(From)���ɥ쥹��Web�����о�˼ºߤ��뤳�Ȥ�ɬ�ܤǤ���?<br /><br />spam�������ɻߤ���ʤɤΤ���ˤ��Τ褦�����ꤵ��Ƥ��뤳�Ȥ�����ޤ���Yes�����ꤹ��ȡ����������ɥ쥹�ȥ᡼�����From���ɥ쥹�����פ��Ƥ��뤳�Ȥ������ޤ���',12,11,NULL,'0001-01-01 00:00:00',NULL,'zen_cfg_select_option(array(\'No\', \'Yes\'), '),(221,'�����Ԥ���������᡼��ե����ޥå�','ADMIN_EXTRA_EMAIL_FORMAT','TEXT','�����Ԥ����դ���᡼��ե����ޥåȤ����ꤷ�ޤ���<br /><br />\r\n��TEXT =�ƥ����ȷ���<br />\r\n��HTML =HTML����',12,12,NULL,'0001-01-01 00:00:00',NULL,'zen_cfg_select_option(array(\'TEXT\', \'HTML\'), '),(222,'��ʸ��ǧ�᡼��(���ԡ�)������','SEND_EXTRA_ORDER_EMAILS_TO','ohtsuji@ark-web.jp','�ܵҤ������������ʸ��ǧ�᡼��Υ��ԡ������դ���᡼�륢�ɥ쥹�����ꤷ�ޤ���<br />������: ̾��1 &lt;email@address1&gt;, ̾��2 &lt;email@address2&gt;',12,12,NULL,'2009-11-19 12:39:39',NULL,NULL),(223,'��������Ⱥ�����λ�᡼��(���ԡ�)������','SEND_EXTRA_CREATE_ACCOUNT_EMAILS_TO_STATUS','0','��������Ⱥ�����λ�᡼��Υ��ԡ������Υ᡼�륢�ɥ쥹���������ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',12,13,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(224,'��������Ⱥ�����λ�᡼��(���ԡ�)��������','SEND_EXTRA_CREATE_ACCOUNT_EMAILS_TO','ohtsuji@ark-web.jp','��������Ⱥ�����λ�᡼��Υ��ԡ�����������᡼�륢�ɥ쥹�����ꤷ�ޤ���<br /><br />\r\n�����㡧 ̾��1 &lt;email@address1&gt;, ̾��2 &lt;email@address2&gt;',12,14,NULL,'2009-11-19 12:39:39',NULL,NULL),(225,'��ͧã���Τ餻��ץ᡼��(���ԡ�)������','SEND_EXTRA_TELL_A_FRIEND_EMAILS_TO_STATUS','0','��ͧã���Τ餻��ץ᡼��Υ��ԡ����������ޤ���?<br />0= off 1= on',12,15,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(226,'��ͧã���Τ餻��ץ᡼��(���ԡ�)��������','SEND_EXTRA_TELL_A_FRIEND_EMAILS_TO','ohtsuji@ark-web.jp','��ͧã���Τ餻��ץ᡼��Υ��ԡ�����������᡼�륢�ɥ쥹�����ꤷ�ޤ���������: ̾��1 &lt;email@address1&gt;, ̾��2 &lt;email@address2&gt;',12,16,NULL,'2009-11-19 12:39:39',NULL,NULL),(227,'���եȷ����ե᡼��(���ԡ�)������','SEND_EXTRA_GV_CUSTOMER_EMAILS_TO_STATUS','0','�ܵҤ����դ��륮�եȷ����ե᡼��Υ��ԡ����������ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',12,17,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(228,'���եȷ����ե᡼��(���ԡ�)��������','SEND_EXTRA_GV_CUSTOMER_EMAILS_TO','ohtsuji@ark-web.jp','�ܵҤ����դ��륮�եȷ����ե᡼��Υ��ԡ�����������᡼�륢�ɥ쥹�����ꤷ�ޤ���<br /><br />�����㡧 ̾��1 &lt;email@address1&gt;, ̾��2&lt;email@address2&gt;',12,18,NULL,'2009-11-19 12:39:39',NULL,NULL),(229,'����åױ��ļԤ���Υ��եȷ����ե᡼��(���ԡ�)������','SEND_EXTRA_GV_ADMIN_EMAILS_TO_STATUS','0','����åױ��ļԤ���Υ��եȷ����ե᡼��Υ��ԡ����������ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',12,19,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(230,'����åױ��ļԤ���Υ��եȷ����ե᡼��(���ԡ�)��������','SEND_EXTRA_GV_ADMIN_EMAILS_TO','ohtsuji@ark-web.jp','����åױ��ļԤ���Υ��եȷ����ե᡼��Υ��ԡ�����������᡼�륢�ɥ쥹�����ꤷ�ޤ���<br /><br />\r\n�����㡧̾��1 &lt;email@address1&gt;, ̾��2 &lt;email@address2&gt;',12,20,NULL,'2009-11-19 12:39:39',NULL,NULL),(231,'����åױ��ļԤ���Υ����ݥ�����ե᡼��(���ԡ�)������','SEND_EXTRA_DISCOUNT_COUPON_ADMIN_EMAILS_TO_STATUS','0','����åױ��ļԤ���Υ����ݥ�����ե᡼��Υ��ԡ����������ޤ���?<br />0= off 1= on',12,21,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(232,'����åױ��ļԤ���Υ����ݥ�����ե᡼��(���ԡ�)��������','SEND_EXTRA_DISCOUNT_COUPON_ADMIN_EMAILS_TO','ohtsuji@ark-web.jp','����åױ��ļԤ���Υ����ݥ�����ե᡼��Υ��ԡ�����������᡼�륢�ɥ쥹�����ꤷ�ޤ���<br /><br />\r\n�����㡧 ̾��1 &lt;email@address1&gt;, ̾��2 &lt;email@address2&gt;',12,22,NULL,'2009-11-19 12:39:39',NULL,NULL),(233,'����åױ��ļԤ���ʸ���ơ������᡼��(���ԡ�)������','SEND_EXTRA_ORDERS_STATUS_ADMIN_EMAILS_TO_STATUS','0','����åױ��ļԤ���ʸ���ơ������᡼��Υ��ԡ����������ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',12,23,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(234,'����åױ��ļԤ���ʸ���ơ������᡼��(���ԡ�)��������','SEND_EXTRA_ORDERS_STATUS_ADMIN_EMAILS_TO','ohtsuji@ark-web.jp','����åױ��ļԤ���ʸ���ơ������᡼��Υ��ԡ�����������᡼�륢�ɥ쥹�����ꤷ�ޤ���<br /><br />\r\n�����㡧 ̾��1 &lt;email@address1&gt;, ̾��2 &lt;email@address2&gt;',12,24,NULL,'2009-11-19 12:39:39',NULL,NULL),(235,'�Ǻ��Ԥ���ӥ塼�ˤĤ��ƥ᡼������','SEND_EXTRA_REVIEW_NOTIFICATION_EMAILS_TO_STATUS','0','�Ǻ��Ԥ��Υ�ӥ塼�ˤĤ��ƥ᡼����������ޤ���?<br />0= off 1= on',12,25,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(236,'�Ǻ��Ԥ���ӥ塼�ˤĤ��ƤΥ᡼��������','SEND_EXTRA_REVIEW_NOTIFICATION_EMAILS_TO','ohtsuji@ark-web.jp','�Ǻ��Ԥ��Υ�ӥ塼�ˤĤ��ƤΥ᡼����������륢�ɥ쥹�����ꤷ�ޤ���<br />�ե����ޥåȡ�Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,26,NULL,'2009-11-19 12:39:39',NULL,NULL),(237,'�֤��䤤��碌�ץ᡼��Υɥ�åץ���������','CONTACT_US_LIST','','�֤��䤤��碌�ץڡ����ǡ��᡼�륢�ɥ쥹�Υꥹ�Ȥ����ꤷ���ɥ�åץ�����ꥹ�ȤȤ���ɽ���Ǥ��ޤ���<br />\r\n�ե����ޥåȡ�Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,40,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea('),(238,'�����Ȥˡ�ͧã���Τ餻��׵�ǽ�����','ALLOW_GUEST_TO_TELL_A_FRIEND','false','������(̤��Ͽ�桼��)�ˡ�ͧã���Τ餻��׵�ǽ����Ĥ��뤫�ɤ��������ꤷ�ޤ��� <br />[false]�����ꤹ��ȡ����ε�ǽ�����Ѥ��褦�Ȥ����ݤ˥������¥���ޤ���',12,50,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(239,'�֤��䤤��碌�פ˥���å�̾�Ƚ����ɽ��','CONTACT_US_STORE_NAME_ADDRESS','1','�֤��䤤��碌�ײ��̤˥���å�̾�Ƚ����ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= on',12,50,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(240,'�߸ˤ鷺���ˤʤä���᡼������','SEND_LOWSTOCK_EMAIL','0','���ʤκ߸ˤ����򲼲�ä��ݤ˥᡼����������뤫�ɤ��������ꤷ�ޤ���<br />\r\n��0= off<br />\r\n��1= on',12,60,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(241,'�߸ˤ鷺���ˤʤä��ݤΥ᡼��������','SEND_EXTRA_LOW_STOCK_EMAILS_TO','ohtsuji@ark-web.jp','���ʤκ߸ˤ����򲼲�ä��ݤ˥᡼����������륢�ɥ쥹�����ꤷ�ޤ���ʣ�����ꤹ�뤳�Ȥ��Ǥ��ޤ���<br />\r\n�ե����ޥåȡ�Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,61,NULL,'2009-11-19 12:39:39',NULL,NULL),(242,'�֥᡼��ޥ�����ι��ɲ���ץ�󥯤�ɽ��','SHOW_NEWSLETTER_UNSUBSCRIBE_LINK','true','�֥᡼��ޥ�����ι��ɲ���ץ�󥯤򥤥�ե��᡼����󥵥��ɥܥå�����ɽ�����ޤ���?',12,70,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(243,'����饤��桼��������ɽ������','AUDIENCE_SELECT_DISPLAY_COUNTS','true','����饤��Υ桼��(audiences/recipients)��ɽ������ݡ�recipients��ޤ�ޤ���?<br /><br />\r\n����աۤ��������true�ˤ���ȡ������θܵҤ�������ʤɤ�ɽ�����٤��ʤ��礬����ޤ���',12,90,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(244,'��������ɤ�ͭ���ˤ���','DOWNLOAD_ENABLED','true','���ʤΥ�������ɵ�ǽ�����ꤷ�ޤ���',13,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(245,'������쥯�Ȥǥ�������ɲ��̤�','DOWNLOAD_BY_REDIRECT','true','��������ɤκݤ˥֥饦���ˤ�������쥯��(ž��)���ǽ�ˤ��뤫�ɤ��������ꤷ�ޤ���<br />\r\nUNIX�ϤǤʤ������ФǤϥ��դˤ��Ƥ���������\r\n<br />��ա���������򥪥�ˤ����顢/pub �ǥ��쥯�ȥ�Υѡ��ߥå�����777�ˤ��Ƥ���������',13,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(246,'���ȥ꡼�ߥ󥰤ˤ����������','DOWNLOAD_IN_CHUNKS','false','�֥�����쥯�Ȥǥ�������ɡפ����դǡ�����PHP memory_limit���꤬8MB�ʲ��ξ�硢��������򥪥�ˤ��Ƥ������������ȥ꡼�ߥ󥰤ǡ���꾮����ñ�̤ǤΥե�����ž����Ԥ�����Ǥ���<br /><br />�֥�����쥯�Ȥǥ�������ɡפ�����ξ�硢���̤Ϥ���ޤ���',13,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(247,'��������ɤ�ͭ������(����)','DOWNLOAD_MAX_DAYS','7','��������ɥ�󥯤�ͭ�����֤����������ꤷ�ޤ���<br /><br />\r\n��0 = ̵����',13,3,NULL,'2009-11-19 12:39:39',NULL,''),(248,'��������ɲ�ǽ���(���ʤ���)','DOWNLOAD_MAX_COUNT','5','��������ɤǤ������κ����ͤ����ꤷ�ޤ���<br /><br />\r\n��0 = ����������Բ�',13,4,NULL,'2009-11-19 12:39:39',NULL,''),(249,'������������� - ��ʸ�����ˤ�빹��','DOWNLOADS_ORDERS_STATUS_UPDATED_VALUE','4','orders_status�ˤ���������ɤ�ͭ�����¡���ǽ����Υꥻ�åȤˤĤ������ꤷ�ޤ���<br />�ǥե���� = 4',13,10,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL),(250,'��������ɲ�ǽ�Ȥʤ���ʸ���ơ�������ID - �ǥե���� >= 2','DOWNLOADS_CONTROLLER_ORDERS_STATUS','2','��������ɲ�ǽ�Ȥʤ���ʸ���ơ�������ID - �ǥե���� >= 2<br /><br />��ʸ���ơ�������ID�������ͤ��⤤��ʸ�ϥ�������ɲ�ǽ�ˤʤ�ޤ���������λ������ʸ���ơ������ϻ�ʧ���⥸�塼���������ꤵ��ޤ���',13,12,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL),(251,'��������ɽ�λ�Ȥʤ���ʸ���ơ�������ID','DOWNLOADS_CONTROLLER_ORDERS_STATUS_END','4','��������ɽ�λ�Ȥʤ���ʸ���ơ�������ID - �ǥե���� >= 4<br /><br />��ʸ���ơ������������ͤ��⤤��ʸ�ϥ�������ɤ���λ�Ȥʤ�ޤ���',13,13,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL),(252,'Price Factor°�����ǽ�ˤ���','ATTRIBUTES_ENABLED_PRICE_FACTOR','true','Price Factor°�����ǽ�ˤ��뤫�ɤ��������ꤷ�ޤ���',13,25,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(253,'Qty Price Discount°���Υ���/����','ATTRIBUTES_ENABLED_QTY_PRICES','true','�����̹����ˤ���Ͱ�����°���Υ���/���դ����ꤷ�ޤ���',13,26,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(254,'���᡼��°���Υ���/����','ATTRIBUTES_ENABLED_IMAGES','true','���᡼��°���Υ���/���դ����ꤷ�ޤ���',13,28,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(255,'(���ա�ʸ���ˤ��)�ƥ����Ȥˤ���������Υ���/����','ATTRIBUTES_ENABLED_TEXT_PRICES','true','�ƥ����Ȥˤ����������°���Υ���/���դ����ꤷ�ޤ���',13,35,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(256,'�ƥ����Ȥˤ��������� - ����ξ���̵��','TEXT_SPACES_FREE','1','�ƥ����Ȥˤ���������ξ�硢����Τޤޤʤ�̵���ˤ��뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= on',13,36,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(257,'Read Only°���ξ��� -�֥����Ȥ������ץܥ����ɽ��','PRODUCTS_OPTIONS_TYPE_READONLY_IGNORED','1','READONLY°�����������ꤵ�줿���ʤˡ֥����Ȥ������ץܥ����ɽ�����ޤ���?<br />0= OFF<br />1= ON',13,37,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(258,'GZip���̤���Ѥ���','GZIP_LEVEL','0','HTTP�̿���GZip���̤���Ѥ��ƥڡ�����ž�����ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',14,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(259,'���å���������¸�ǥ��쥯�ȥ�','SESSION_WRITE_DIRECTORY','/var/www/projects/z/zen-cart/htdocs/ohtsuji/zencart-sugu/cache','���å����������ե�����١����ξ�����¸����ǥ��쥯�ȥ�����ꤷ�ޤ���',15,1,NULL,'2009-11-19 12:39:39',NULL,NULL),(260,'���å�������¸����ɥᥤ��̾������','SESSION_USE_FQDN','True','���å�������¸����ɥᥤ��̾�ˤĤ������ꤷ�ޤ���<br /><br />\r\n\r\n��True = �ɥᥤ��͡������Τ򥯥å�������¸(�㡧www.mydomain.com)<br />\r\n��False = �ɥᥤ��͡���ΰ�������¸(�㡧mydomain.com)��<br />\r\n�褯�狼��ʤ����Ϥ��������True�ˤ��Ƥ����Ƥ���������',15,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(261,'���å������Ѥ�ɬ�ܤˤ���','SESSION_FORCE_COOKIE_USE','True','���å�����ɬ�����å��������Ѥ��ޤ���True���ꤹ��ȥ֥饦���Υ��å��������դˤʤäƤ�����ϥ��å����򳫻Ϥ��ޤ��󡣥������ƥ������ͳ����;������ͳ�Τʤ��¤��True����ΤޤޤȤ��뤳�Ȥ򶯤��侩���ޤ���',15,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(262,'SSL���å����ID�����å�','SESSION_CHECK_SSL_SESSION_ID','False','���Ƥ�HTTPS�ꥯ�����Ȥ�SSL���å����ID������å����ޤ���?',15,3,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(263,'User Agent�����å�','SESSION_CHECK_USER_AGENT','False','���ƤΥꥯ�����Ȼ���User Agent�Υ����å���Ԥ��ޤ���?',15,4,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(264,'IP���ɥ쥹�����å�','SESSION_CHECK_IP_ADDRESS','False','���ƤΥꥯ�����Ȼ���IP���ɥ쥹������å����ޤ���?',15,5,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(265,'��ܥå�(���ѥ�����)�Υ��å������ɻ�','SESSION_BLOCK_SPIDERS','True','���ΤΥ�ܥå�(���ѥ�����)�����å����򳫻Ϥ��뤳�Ȥ��ɻߤ��ޤ���?',15,6,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(266,'���å�����ȯ��','SESSION_RECREATE','True','�桼������������ޤ��ϥ�������Ȥ�����������˥��å������ȯ�Ԥ��ޤ���?<br />(PHP4.1�ʾ夬ɬ��)',15,7,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(267,'IP���ɥ쥹�Ѵ�������','SESSION_IP_TO_HOST_ADDRESS','true','IP���ɥ쥹��ۥ��ȥ��ɥ쥹���Ѵ����ޤ���?<br /><br />��ա������Фˤ�äƤϡ���������ǥ᡼�������Υ������ȡ���λ���٤��ʤ뤳�Ȥ�����ޤ���',15,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(268,'���ե�/�����ݥ�������ɤ�Ĺ��','SECURITY_CODE_LENGTH','10','���ե�/�����ݥ�������ɤ�Ĺ�������ꤷ�ޤ���<br /><br />\r\n��ա������ɤ�Ĺ���ۤɰ����Ǥ���',16,1,NULL,'2009-11-19 12:39:39',NULL,NULL),(269,'�����Ĺ�0�ξ�����ʸ���ơ�����','DEFAULT_ZERO_BALANCE_ORDERS_STATUS_ID','2','��ʸ�κ����Ĺ⤬0�ξ���Ŭ�Ѥ������ʸ���ơ����������ꤷ�ޤ���',16,0,NULL,'2009-11-19 12:39:39','zen_get_order_status_name','zen_cfg_pull_down_order_statuses('),(270,'�����륫�९���ݥ��','NEW_SIGNUP_DISCOUNT_COUPON','','�����Ͽ���ˤ��β���˥����륫�९���ݥ���Ȥ��Ƽ�ưȯ�Ԥ��륯���ݥ�������򤷤Ƥ���������',16,75,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_coupon_id('),(271,'���������եȷ�����Ͽ��','NEW_SIGNUP_GIFT_VOUCHER_AMOUNT','','���������եȷ�����Ͽ�ۤ����ꤷ�ޤ���<br /><br />\r\n������ = �ʤ�<br />\r\n��1000 = 1000��',16,76,NULL,'2009-11-19 12:39:39',NULL,NULL),(272,'�����ݥ���Υڡ������������ɽ�����','MAX_DISPLAY_SEARCH_RESULTS_DISCOUNT_COUPONS','20','�����ݥ����1�ڡ����������ɽ����������ꤷ�ޤ���',16,81,NULL,'2009-11-19 12:39:39',NULL,NULL),(273,'�����ݥ����ݡ��ȤΥڡ������������ɽ�����','MAX_DISPLAY_SEARCH_RESULTS_DISCOUNT_COUPONS_REPORTS','20','�����ݥ���Υ�ݡ��ȥڡ����Ǥ�ɽ����������ꤷ�ޤ���',16,81,NULL,'2009-11-19 12:39:39',NULL,NULL),(274,'���եȷ��Ĺ�κ����Ϳ�','MAX_GIFT_AMOUNT','100000','���եȷ��Ĺ�κ����ͤ����ꤷ�ޤ������եȷ�����������̤������ͤ�Ķ������ϰ��������������Ǥ��ޤ����ͤ�100000�ʲ�����ꤷ�Ƥ���������',16,82,NULL,'2009-11-19 12:39:39',NULL,NULL),(275,'���쥸�åȥ��������Ѥβ��� - VISA','CC_ENABLED_VISA','1','VISA��ͭ���ˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',17,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(276,'���쥸�åȥ��������Ѥβ��� - MasterCard','CC_ENABLED_MC','1','MasterCard��ͭ���ˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',17,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(277,'���쥸�åȥ��������Ѥβ��� - AmericanExpress','CC_ENABLED_AMEX','0','AmericanExpress��ͭ���ˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',17,3,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(278,'���쥸�åȥ��������Ѥβ��� - Diners Club','CC_ENABLED_DINERS_CLUB','0','Diners Club��ͭ���ˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',17,4,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(279,'���쥸�åȥ��������Ѥβ��� - Discover Card','CC_ENABLED_DISCOVER','0','Discover Card��ͭ���ˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',17,5,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(280,'���쥸�åȥ��������Ѥβ��� - JCB','CC_ENABLED_JCB','0','JCB��ͭ���ˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',17,6,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(281,'���쥸�åȥ��������Ѥβ��� - AUSTRALIAN BANKCARD','CC_ENABLED_AUSTRALIAN_BANKCARD','0','AUSTRALIAN BANKCARD��ͭ���ˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',17,7,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(282,'���Ѳ�ǽ�ʥ��쥸�åȥ����� - ��ʧ���ڡ�����ɽ��','SHOW_ACCEPTED_CREDIT_CARDS','0','���Ѳ�ǽ�ʥ��쥸�åȥ����ɤ��ʧ���ڡ�����ɽ�����ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= �ƥ����Ȥ�ɽ��<br />\r\n��2= ������ɽ��<br />\r\n����աۥ��쥸�åȥ����ɤβ����ȥƥ����Ȥϡ��ǡ����١����ȥ�󥲡����ե���������������Ƥ���ɬ�פ�����ޤ���',17,50,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(283,'���եȷ���ɽ��','MODULE_ORDER_TOTAL_GV_STATUS','true','',6,1,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\'),'),(284,'ɽ���������','MODULE_ORDER_TOTAL_GV_SORT_ORDER','840','ɽ�������������ꤷ�ޤ���<br />�������������ۤɾ�̤�ɽ������ޤ���',6,2,NULL,'2003-10-30 22:16:40',NULL,NULL),(285,'������ǧ�Ԥ���','MODULE_ORDER_TOTAL_GV_QUEUE','true','���եȷ�������ǧ�Ԥ��ꥹ�Ȥ��ɲä��ޤ���?',6,3,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(286,'������ޤ��','MODULE_ORDER_TOTAL_GV_INC_SHIPPING','true','��׷׻���������ޤ�ޤ���?',6,5,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(287,'�Ƕ��ޤ��','MODULE_ORDER_TOTAL_GV_INC_TAX','true','�׻������Ƕ��ޤ�뤫�ɤ��������ꤷ�ޤ���',6,6,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(288,'�Ƕ��Ʒ׻�','MODULE_ORDER_TOTAL_GV_CALC_TAX','None','�Ƕ��Ʒ׻����ޤ���?',6,7,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'None\', \'Standard\', \'Credit Note\'),'),(289,'�Ǽ���','MODULE_ORDER_TOTAL_GV_TAX_CLASS','0','���եȷ���Ŭ�Ѥ�����Ǽ��̤����ꤷ�ޤ���',6,0,NULL,'2003-10-30 22:16:40','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes('),(290,'�Ƕ���ղä���','MODULE_ORDER_TOTAL_GV_CREDIT_TAX','false','���եȷ���׻�����ݤ��Ƕ���ղä��ޤ���?',6,8,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(291,'��۾��ʼ谷���������ɽ��','MODULE_ORDER_TOTAL_LOWORDERFEE_STATUS','true','',6,1,NULL,'2003-10-30 22:16:43',NULL,'zen_cfg_select_option(array(\'true\'),'),(292,'ɽ���������','MODULE_ORDER_TOTAL_LOWORDERFEE_SORT_ORDER','400','ɽ�������������ꤷ�ޤ����������������ۤɾ�̤�ɽ������ޤ���',6,2,NULL,'2003-10-30 22:16:43',NULL,NULL),(293,'��۾��ʼ谷�������������','MODULE_ORDER_TOTAL_LOWORDERFEE_LOW_ORDER_FEE','false','��۾��ʼ谷������������ͭ���ˤ��ޤ���?',6,3,NULL,'2003-10-30 22:16:43',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(294,'��۾��ʼ谷���������ݶ⤹����ʸ���','MODULE_ORDER_TOTAL_LOWORDERFEE_ORDER_UNDER','50','������ʸ���̤���ξ�硢�������ݶ⤷�ޤ���',6,4,NULL,'2003-10-30 22:16:43','currencies->format',NULL),(295,'�谷�������������','MODULE_ORDER_TOTAL_LOWORDERFEE_FEE','5','����������ꤷ�ޤ���<br /><br />\r\nΨ(%)�Ƿ׻�������ˤϡ�10%�פʤɤȵ�����������ξ��ˤϡ�500��(500��)�ʤɤȵ������ޤ���',6,5,NULL,'2003-10-30 22:16:43','',NULL),(296,'��۾��ʼ谷���������Ŭ�Ѥ����ϰ�','MODULE_ORDER_TOTAL_LOWORDERFEE_DESTINATION','both','���ꤷ���ϰ���Ф�����۾��ʼ谷���������Ŭ�Ѥ���ޤ���',6,6,NULL,'2003-10-30 22:16:43',NULL,'zen_cfg_select_option(array(\'national\', \'international\', \'both\'),'),(297,'�Ǽ���','MODULE_ORDER_TOTAL_LOWORDERFEE_TAX_CLASS','0','��۾��ʼ谷���������ۤ�Ŭ�Ѥ�����Ǽ��̤����ꤷ�ޤ���',6,7,NULL,'2003-10-30 22:16:43','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes('),(298,'��۾��ʼ谷��������ϥ���������뾦�ʤˤ���Ŭ��','MODULE_ORDER_TOTAL_LOWORDERFEE_VIRTUAL','false','�������⤬����������뾦�ʤ����κݤˡ���۾��ʼ谷���������ħ�����뤫�ɤ��������ꤷ�ޤ���',6,8,NULL,'2004-04-20 22:16:43',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(299,'��۾��ʼ谷��������ϥ��եȷ��ˤ���Ŭ��','MODULE_ORDER_TOTAL_LOWORDERFEE_GV','false','�������⤬���եȷ��ʤɤ����ΤȤ�����۾��ʼ谷���������ħ�����뤫�ɤ��������ꤷ�ޤ���',6,9,NULL,'2004-04-20 22:16:43',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(300,'������ɽ��','MODULE_ORDER_TOTAL_SHIPPING_STATUS','true','',6,1,NULL,'2003-10-30 22:16:46',NULL,'zen_cfg_select_option(array(\'true\'),'),(301,'ɽ���������','MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER','200','ɽ�������������ꤷ�ޤ���<br />\r\n�������������ۤɾ�̤�ɽ������ޤ���',6,2,NULL,'2003-10-30 22:16:46',NULL,NULL),(302,'����̵������','MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING','false','����̵�������ͭ���ˤ��ޤ���?',6,3,NULL,'2003-10-30 22:16:46',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(303,'����̵���ˤ�������������','MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER','50','�����۰ʾ�Τ������ξ���������̵���ˤ��ޤ���',6,4,NULL,'2003-10-30 22:16:46','currencies->format',NULL),(304,'����̵���ˤ����ϰ������','MODULE_ORDER_TOTAL_SHIPPING_DESTINATION','national','���ꤷ���ϰ���Ф�������̵����Ŭ�Ѥ��ޤ���',6,5,NULL,'2003-10-30 22:16:46',NULL,'zen_cfg_select_option(array(\'national\', \'international\', \'both\'),'),(305,'���פ�ɽ��','MODULE_ORDER_TOTAL_SUBTOTAL_STATUS','true','',6,1,NULL,'2003-10-30 22:16:49',NULL,'zen_cfg_select_option(array(\'true\'),'),(306,'ɽ���������','MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER','100','ɽ�������������ꤷ�ޤ���<br />\r\n�������������ۤɾ�̤�ɽ������ޤ���',6,2,NULL,'2003-10-30 22:16:49',NULL,NULL),(307,'�Ƕ��ɽ��','MODULE_ORDER_TOTAL_TAX_STATUS','true','',6,1,NULL,'2003-10-30 22:16:52',NULL,'zen_cfg_select_option(array(\'true\'),'),(308,'ɽ���������','MODULE_ORDER_TOTAL_TAX_SORT_ORDER','300','ɽ��������������Ǥ��ޤ�. �������������ۤɾ�̤�ɽ������ޤ���',6,2,NULL,'2003-10-30 22:16:52',NULL,NULL),(309,'��פ�ɽ��','MODULE_ORDER_TOTAL_TOTAL_STATUS','true','',6,1,NULL,'2003-10-30 22:16:55',NULL,'zen_cfg_select_option(array(\'true\'),'),(310,'ɽ���������','MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER','999','ɽ��������������Ǥ��ޤ���<br />\r\n�������������ۤɾ�̤�ɽ������ޤ���',6,2,NULL,'2003-10-30 22:16:55',NULL,NULL),(311,'�Ǽ���','MODULE_ORDER_TOTAL_COUPON_TAX_CLASS','0','�����ݥ����Ŭ�Ѥ�����Ǽ��̤����ꤷ�ޤ���',6,0,NULL,'2003-10-30 22:16:36','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes('),(312,'�Ƕ��ޤ�� - ����/����','MODULE_ORDER_TOTAL_COUPON_INC_TAX','true','���׻����Ƕ��ޤ�뤫�ɤ��������ꤷ�ޤ���',6,6,NULL,'2003-10-30 22:16:36',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(313,'ɽ���������','MODULE_ORDER_TOTAL_COUPON_SORT_ORDER','280','ɽ�������������ꤷ�ޤ���',6,2,NULL,'2003-10-30 22:16:36',NULL,NULL),(314,'������ޤ��','MODULE_ORDER_TOTAL_COUPON_INC_SHIPPING','false','������׻��˴ޤ�뤫�ɤ��������ꤷ�ޤ���',6,5,NULL,'2003-10-30 22:16:36',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(315,'�����ݥ����ɽ��','MODULE_ORDER_TOTAL_COUPON_STATUS','true','',6,1,NULL,'2003-10-30 22:16:36',NULL,'zen_cfg_select_option(array(\'true\'),'),(316,'�Ƕ��Ʒ׻�','MODULE_ORDER_TOTAL_COUPON_CALC_TAX','Standard','�Ƕ��Ʒ׻����ޤ���?',6,7,NULL,'2003-10-30 22:16:36',NULL,'zen_cfg_select_option(array(\'None\', \'Standard\', \'Credit Note\'),'),(317,'�����ԥǥ� -����/����','ADMIN_DEMO','0','�����ԥǥ��ͭ���ˤ��뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= on',6,0,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(318,'���ʥ��ץ���� - ���쥯�ȥܥå�����','PRODUCTS_OPTIONS_TYPE_SELECT','0','���쥯�ȥܥå������ξ��ʥ��ץ����ο��ͤ�?',0,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL),(319,'���ʥ��ץ���� - �ƥ����ȷ�','PRODUCTS_OPTIONS_TYPE_TEXT','1','�ƥ����ȷ��ξ��ʥ��ץ����ο��ͤ�?',6,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL),(320,'���ʥ��ץ���� - �饸���ܥ���','PRODUCTS_OPTIONS_TYPE_RADIO','2','�饸���ܥ��󷿤ξ��ʥ��ץ����ο��ͤ�?',6,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL),(321,'���ʥ��ץ���� - �����å��ܥå�����','PRODUCTS_OPTIONS_TYPE_CHECKBOX','3','�����å��ܥå������ξ��ʥ��ץ����ο��ͤ�?',6,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL),(322,'���ʥ��ץ���� - �ե����뷿','PRODUCTS_OPTIONS_TYPE_FILE','4','�ե����뷿�ξ��ʥ��ץ����ο��ͤ�?',6,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL),(323,'ID for text and file products options values','PRODUCTS_OPTIONS_VALUES_TEXT_ID','0','�ƥ����ȷ����ե����뷿°����products_options_values_id�ǻȤ�����ͤ�?',6,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL),(324,'���åץ��ɥ��ץ�������Ƭ��(Prefix)','UPLOAD_PREFIX','upload_','���åץ��ɥ��ץ�����¾�Υ��ץ����ȶ��̤��뤿��˻Ȥ���Ƭ��(Prefix)��?',0,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL),(325,'�ƥ����Ȥ���Ƭ��(Prefix)','TEXT_PREFIX','txt_','�ƥ����ȥ��ץ�����¾�Υ��ץ����ȶ��̤��뤿��˻Ȥ���Ƭ��(Prefix)��?',0,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL),(326,'���ʥ��ץ���� - READ ONLY��','PRODUCTS_OPTIONS_TYPE_READONLY','5','READ ONLY���ξ��ʥ��ץ����ο��ͤ�?',6,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL),(327,'���ʾ��� - ���ʥ��ץ����Υ����Ƚ�','PRODUCTS_OPTIONS_SORT_ORDER','0','���ʾ���ˤ����륪�ץ����̾�Υ����Ƚ�����ꤷ�ޤ���<br />\r\n<br />\r\n��0= �����Ƚ硢���ץ����̾<br />\r\n��1= ���ץ����̾',18,35,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(328,'���ʾ��� - ���ʥ��ץ�����ͤΥ����Ƚ�','PRODUCTS_OPTIONS_SORT_BY_PRICE','1','���������Ǥξ��ʥ��ץ�����ͤΥ����Ƚ�����ꤷ�ޤ���<br />\r\n<br />\r\n��0= �����Ƚ硢����<br />\r\n��1= �����Ƚ硢���ץ�����ͤ�̾��',18,36,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(329,'���ʤ�°�������β���ɽ�����륪�ץ������','PRODUCT_IMAGES_ATTRIBUTES_NAMES','1','���ʤ�°�������β��˥��ץ����̾��ɽ�����ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',18,41,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(330,'���ʾ��� - ��������ɽ��','SHOW_SALE_DISCOUNT_STATUS','1','��������ʬ��ɽ�����ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',18,45,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(331,'���ʾ��� - ����������ɽ����ˡ(����ۡ��ѡ������)','SHOW_SALE_DISCOUNT','1','����������ɽ����ˡ�����ꤷ�ޤ���<br /><br />\r\n��1= ���Ψ(%) �Ǥ�off<br />\r\n��2= ������ �Ǥ�off',18,46,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\'), '),(332,'���ʾ��� - ���Ψɽ���ξ�����','SHOW_SALE_DISCOUNT_DECIMALS','0','���Ψɽ���Υѡ�����Ȥξ��������֤����ꤷ�ޤ���<br /><br />\r\n���ǥե����= 0',18,47,NULL,'2009-11-19 12:39:39',NULL,NULL),(333,'���ʾ���- ̵�����ʤβ������ƥ����ȤΥ��ơ�����','OTHER_IMAGE_PRICE_IS_FREE_ON','1','���ʾ���Ǥ�̵�����ʤβ��������᡼����ɽ�������ꤷ�ޤ���<br />\r\n<br />\r\n��0= Text<br />\r\n��1= Image',18,50,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(334,'���ʾ��� - ���䤤��碌����ɽ������','PRODUCTS_PRICE_IS_CALL_IMAGE_ON','1','���䤤��碌���ʤǤ��뤳�Ȥ�ɽ����������ޤ��ϥƥ����ȤˤĤ������ꤷ�ޤ���<br /><br />\r\n��0= �ƥ�����<br />\r\n��1= ����',18,51,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(335,'���ʤο����� - ���������ʤ��ɲä���ݤ�','PRODUCTS_QTY_BOX_STATUS','1','���������ʤ���Ͽ����ݡ����ʤο�����Υǥե���������ɤ����ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on<br />\r\n��ա�on�ˤ���ȿ������ɽ�������֥����Ȥ˲ä���פ�on�ˤʤ�ޤ���(This will show a Qty Box when ON and default the Add to Cart to 1)',18,55,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(336,'���ʥ�ӥ塼 - ��ǧ������','REVIEWS_APPROVAL','1','���ʥ�ӥ塼��ɽ���ˤϾ�ǧ��ɬ�פˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on<br />\r\n��ա���ӥ塼����ɽ������ˤʤäƤ������̵�뤵��ޤ���',18,62,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(337,'META���� - TITLE�����ؤξ��ʲ���ɽ��','META_TAG_INCLUDE_PRICE','1','TITLE�����˾��ʲ��ʤ�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1= on',18,70,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(338,'META���� - Meta Description��Ĺ��','MAX_META_TAG_DESCRIPTION_LENGTH','50','Meta Description�κ����Ĺ�������ꤷ�Ƥ���������<br />�ǥե���Ȥκ�����(��ɿ�)��50',18,71,NULL,'2009-11-19 12:39:39','',''),(339,'�֤���ʾ��ʤ�������Ƥ��ޤ��� - ���󤢤����ɽ������','SHOW_PRODUCT_INFO_COLUMNS_ALSO_PURCHASED_PRODUCTS','3','�֤���ʾ��ʤ���äƤ��ޤ��פβ���(Row)�������ɽ�����������ꤷ�ޤ���<br />0= off �ޤ��ϥ����Ƚ������',18,72,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), '),(340,'[����] [����] - �ʥӥ��������С��ΰ���','PRODUCT_INFO_PREVIOUS_NEXT','1','[����] [����] �ʥӥ��������С��ΰ��֤����ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= �ڡ�������<br />\r\n��2= �ڡ�������<br />\r\n��3= �ڡ�������������',18,21,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Off\'), array(\'id\'=>\'1\', \'text\'=>\'Top of Page\'), array(\'id\'=>\'2\', \'text\'=>\'Bottom of Page\'), array(\'id\'=>\'3\', \'text\'=>\'Both Top & Bottom of Page\')),'),(341,'[����] [����] - �����Ƚ�','PRODUCT_INFO_PREVIOUS_NEXT_SORT','1','���ʤΥ����Ƚ�����ꤷ�ޤ���\r\n<br /><br />\r\n��0= ����ID<br />\r\n��1= ����̾<br />\r\n��2= ����<br />\r\n��3= ���ʡ�����̾<br />\r\n��4= ���ʡ�����<br />\r\n��5= ����̾, ����',18,22,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Product ID\'), array(\'id\'=>\'1\', \'text\'=>\'Name\'), array(\'id\'=>\'2\', \'text\'=>\'Product Model\'), array(\'id\'=>\'3\', \'text\'=>\'Product Price - Name\'), array(\'id\'=>\'4\', \'text\'=>\'Product Price - Model\'), array(\'id\'=>\'5\', \'text\'=>\'Product Name - Model\'), array(\'id\'=>\'6\', \'text\'=>\'Product Sort Order\')),'),(342,'[����] [����] - �ܥ���Ȳ����Υ��ơ�����','SHOW_PREVIOUS_NEXT_STATUS','0','�ܥ���Ȳ����Υ��ơ����������ꤷ�ޤ���<br /><br />\r\n��0= Off<br />\r\n��1= On',18,20,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Off\'), array(\'id\'=>\'1\', \'text\'=>\'On\')),'),(343,'[����] [����] - �ܥ���Ȳ�����ɽ������','SHOW_PREVIOUS_NEXT_IMAGES','0','[����] [����] �Υܥ���Ȳ�����ɽ�������ꤷ�ޤ���<br /><br />\r\n��0= �ܥ���Τ�<br />\r\n��1= �ܥ��󡦾��ʲ���<br />\r\n��2= ���ʲ����Τ�',18,21,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Button Only\'), array(\'id\'=>\'1\', \'text\'=>\'Button and Product Image\'), array(\'id\'=>\'2\', \'text\'=>\'Product Image Only\')),'),(344,'[����] [����] - �����β���','PREVIOUS_NEXT_IMAGE_WIDTH','50','[����] [����] �����β����β�����?',18,22,NULL,'2009-11-19 12:39:39','',''),(345,'[����] [����] - �����ι⤵','PREVIOUS_NEXT_IMAGE_HEIGHT','40','[����] [����] �����β����ι⤵��?',18,23,NULL,'2009-11-19 12:39:39','',''),(346,'[����] [����] - ���ƥ���̾�Ȳ���������','PRODUCT_INFO_CATEGORIES','1','[����] [����] �Υ��ƥ���β�����̾�Τ����֤�?<br /><br />\r\n��0= off<br />\r\n��1= ��������<br />\r\n��2= ���������<br />\r\n��3= ��������',18,20,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Off\'), array(\'id\'=>\'1\', \'text\'=>\'Align Left\'), array(\'id\'=>\'2\', \'text\'=>\'Align Center\'), array(\'id\'=>\'3\', \'text\'=>\'Align Right\')),'),(347,'��¦�����ɥܥå����β���','BOX_WIDTH_LEFT','150px','��¦��ɽ������륵���ɥܥå����β��������ꤷ�ޤ���px��ޤ�����ϤǤ��ޤ���\r\n<br /><br />\r\n���ǥե���� = 150px',19,1,NULL,'2003-11-21 22:16:36',NULL,NULL),(348,'��¦�����ɥܥå����β���','BOX_WIDTH_RIGHT','150px','��¦��ɽ������륵���ɥܥå����β��������ꤷ�ޤ���px��ޤ�����ϤǤ��ޤ���<br /><br />\r\n��Default = 150px',19,2,NULL,'2003-11-21 22:16:36',NULL,NULL),(349,'�ѥ���ꥹ�Ȥζ��ڤ�ʸ��','BREAD_CRUMBS_SEPARATOR','&nbsp;::&nbsp;','�ѥ���ꥹ�Ȥζ��ڤ�ʸ�������ꤷ�ޤ���<br /><br />\r\n����ա۶����ޤ����&amp;nbsp;����Ѥ��뤳�Ȥ��Ǥ��ޤ���<br />\r\n���ǥե���� = &amp;nbsp;::&amp;nbsp;',19,3,NULL,'2003-11-21 22:16:36',NULL,'zen_cfg_textarea_small('),(350,'�ѥ���ꥹ�Ȥ�����','DEFINE_BREADCRUMB_STATUS','1','�ѥ���ꥹ�ȤΥ�󥯤�ͭ���ˤ��ޤ���?<br />0= OFF<br />1= ON',19,4,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(351,'�٥��ȥ��顼 - �����碌ʸ��','BEST_SELLERS_FILLER','&nbsp;','������碌�뤿�����������ʸ�������ꤷ�ޤ���<br />�ǥե���� = &amp;nbsp;(����)',19,5,NULL,'2003-11-21 22:16:36',NULL,'zen_cfg_textarea_small('),(352,'�٥��ȥ��顼 - ɽ��ʸ����','BEST_SELLERS_TRUNCATE','35','�٥��ȥ��顼�Υ����ɥܥå�����ɽ�����뾦��̾��Ĺ�������ꤷ�ޤ���<br />�ǥե���� = 35',19,6,NULL,'2003-11-21 22:16:36',NULL,NULL),(353,'�٥��ȥ��顼 - ɽ��ʸ������Ķ�������ˡ�...�פ�ɽ��','BEST_SELLERS_TRUNCATE_MORE','true','����̾��������ڤ줿���ˡ�...�פ�ɽ�����ޤ���<br />�ǥե���� = true',19,7,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(354,'���ƥ���ܥå��� - �ò����ʤΥ��ɽ��','SHOW_CATEGORIES_BOX_SPECIALS','true','���ƥ���ܥå������ò����ʤΥ�󥯤�ɽ�����ޤ���',19,8,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(355,'���ƥ���ܥå��� - ���徦�ʤΥ��ɽ��','SHOW_CATEGORIES_BOX_PRODUCTS_NEW','true','���ƥ���ܥå����˿��徦�ʤؤΥ�󥯤�ɽ�����ޤ���',19,9,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(356,'����åԥ󥰥����ȥܥå�����ɽ��','SHOW_SHOPPING_CART_BOX_STATUS','1','����åԥ󥰥����Ȥ�ɽ�������ꤷ�ޤ���<br />\r\n<br />\r\n��0= ���ɽ��<br />\r\n��1= ���ʤ����äƤ���Ȥ�����ɽ��<br />\r\n��2= ���ʤ����äƤ���Ȥ���ɽ�����뤬������åԥ󥰥����ȥڡ����Ǥ�ɽ�����ʤ�',19,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(357,'���ƥ���ܥå��� - �������ᾦ�ʤؤΥ�󥯤�ɽ��','SHOW_CATEGORIES_BOX_FEATURED_PRODUCTS','true','���ƥ���ܥå����ˤ������ᾦ�ʤؤΥ�󥯤�ɽ�����ޤ���?',19,11,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(358,'���ƥ���ܥå��� - �����ʥꥹ�ȤؤΥ�󥯤�ɽ��','SHOW_CATEGORIES_BOX_PRODUCTS_ALL','true','���ƥ���ܥå����������ʥꥹ�ȤؤΥ�󥯤�ɽ�����ޤ���?',19,12,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(359,'��¦������ɽ��','COLUMN_LEFT_STATUS','1','��¦������ɽ�����ޤ���? (�ڡ����򥪡��С��饤�ɤ����Τ��ʤ����)<br /><br />\r\n��0= �����ɽ��<br />\r\n1= �����С��饤�ɤ��ʤ����ɽ��',19,15,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(360,'��¦������ɽ��','COLUMN_RIGHT_STATUS','1','��¦������ɽ�����ޤ���? (�ڡ����򥪡��С��饤�ɤ����Τ��ʤ����)<br /><br />\r\n��0= �����ɽ��<br />\r\n��1= �����С��饤�ɤ��ʤ����ɽ��',19,16,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(361,'��¦�����β���','COLUMN_WIDTH_LEFT','150px','��¦�����β��������ꤷ�ޤ���px��ޤ�ƻ����ǽ��<br /><br />\r\n�ǥե���� = 150px',19,20,NULL,'2003-11-21 22:16:36',NULL,NULL),(362,'��¦�����β���','COLUMN_WIDTH_RIGHT','150px','��¦�����β��������ꤷ�ޤ���px��ޤ�ƻ����ǽ��<br /><br />\r\n�ǥե���� = 150px',19,21,NULL,'2003-11-21 22:16:36',NULL,NULL),(363,'���ƥ���̾����󥯴֤ζ��ڤ�','SHOW_CATEGORIES_SEPARATOR_LINK','1','���ƥ���̾�ȥ�󥯡ʡ֤������ᾦ�ʡפʤɡˤδ֤˥��ѥ졼��(���ڤ�)��ɽ�����ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',19,24,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(364,'���ƥ���ζ��ڤ� - ���ƥ���̾�����ʿ�','CATEGORIES_SEPARATOR','-&gt;','���ƥ���̾��(���ƥ������)���ʿ��δ֤Υ��ѥ졼��(���ڤ�)�ϲ��ˤ��ޤ���?<br /><br />\r\n�ǥե���� = -&amp;gt;',19,25,NULL,'2003-11-21 22:16:36',NULL,'zen_cfg_textarea_small('),(365,'���ƥ���ζ��ڤ� - ���ƥ���̾�ȥ��֥��ƥ���̾�δ�','CATEGORIES_SEPARATOR_SUBS','|_&nbsp;','���ƥ���̾�����֥��ƥ���̾�δ֤Υ��ѥ졼��(���ڤ�)�ϲ��ˤ��ޤ���?<br />\r\n<br />\r\n�ǥե���� = |_&amp;nbsp;',19,26,NULL,'2004-03-25 22:16:36',NULL,'zen_cfg_textarea_small('),(366,'���ƥ����⾦�ʿ�����Ƭ��(Prefix)','CATEGORIES_COUNT_PREFIX','&nbsp;(','���ƥ�����ξ��ʿ�ɽ������Ƭ��(Prefix)��?\r\n<br /><br />\r\n���ǥե����= (',19,27,NULL,'2003-01-21 22:16:36',NULL,'zen_cfg_textarea_small('),(367,'���ƥ����⾦�ʿ���������(Suffix)','CATEGORIES_COUNT_SUFFIX',')','���ƥ�����ξ��ʿ�ɽ����������(Suffix)��?\r\n<br /><br />\r\n���ǥե����= )',19,28,NULL,'2003-01-21 22:16:36',NULL,'zen_cfg_textarea_small('),(368,'���ƥ��ꡦ���֥��ƥ���Υ���ǥ��','CATEGORIES_SUBCATEGORIES_INDENT','&nbsp;&nbsp;','���֥��ƥ���򥤥�ǥ��(������)ɽ������ݤ�ʸ���������?<br /><br />\r\n���ǥե���� = &nbsp;&nbsp;',19,29,NULL,'2004-06-24 22:16:36',NULL,'zen_cfg_textarea_small('),(369,'������Ͽ0�Υ��ƥ��� - ɽ������ɽ��','CATEGORIES_COUNT_ZERO','0','���ʿ���0�Υ��ƥ����ɽ�����ޤ���?<br />\r\n<br />\r\n��0 = off<br />\r\n��1 = on',19,30,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(370,'���ƥ���ܥå����Υ��ץ�å�(ʬ��)ɽ��','CATEGORIES_SPLIT_DISPLAY','True','���ʥ����פˤ�äƥ��ƥ���ܥå����򥹥ץ�å�(ʬ��)ɽ�����뤫�ɤ��������ꤷ�ޤ���',19,31,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(371,'����åԥ󥰥����� - ��פ�ɽ��','SHOW_TOTALS_IN_CART','1','��׳ۤ򥷥�åԥ󥰥����Ȥξ��ɽ�����ޤ���?<br />��0= off<br />��1= on: ���ʤο��̡����̹��<br />��2= on: ���ʤο��̡����̹��(0�ΤȤ��ˤ���ɽ��)<br />��3= on: ���ʤο��̹��',19,31,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(372,'�ܵҤؤΰ��� - �ȥåץڡ�����ɽ��','SHOW_CUSTOMER_GREETING','1','�ܵҤؤδ��ޥ�å��������˥ȥåץڡ�����ɽ�����ޤ���?<br />0= off<br />1= on',19,40,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(373,'���ƥ��� - �ȥåץڡ�����ɽ��','SHOW_CATEGORIES_ALWAYS','0','���ƥ�����˥ȥåץڡ�����ɽ�����ޤ���?<br />\r\n��0= off<br />\r\n��1= on<br />\r\n��Default category can be set to Top Level or a Specific Top Level',19,45,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(374,'���ƥ��� - �ȥåץڡ��� �Ǥγ���','CATEGORIES_START_MAIN','0','�ȥåץڡ����ˤ����륫�ƥ���γ��ľ��֤����ꤷ�ޤ���<br />\r\n��0= �ȥåץ�٥�(��)���ƥ���Τ�<br />\r\n������Υ��ƥ���򳫤��ˤϥ��ƥ���ID�ǻ��ꡣ���֥��ƥ��������ǽ��<br />\r\n�����3_10 (���ƥ���ID:3�����֥��ƥ���ID:10)',19,46,NULL,'2009-11-19 12:39:39','',''),(375,'���ƥ��� - ���֥��ƥ�����˳����Ƥ���','SHOW_CATEGORIES_SUBCATEGORIES_ALWAYS','1','���ƥ���ȥ��֥��ƥ���Ͼ��ɽ�����ޤ���?<br />0= OFF �ƥ��ƥ���Τ�<br />1= ON ���ƥ��ꡦ���֥��ƥ�������򤵤줿����ɽ��',19,47,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(376,'�Хʡ�ɽ�����롼�� - �إå��ݥ������1','SHOW_BANNERS_GROUP_SET1','','�ɤΥХʡ����롼�פ�إå��ݥ������1�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,55,NULL,'2009-11-19 12:39:39','',''),(377,'�Хʡ�ɽ�����롼�� - �إå��ݥ������2','SHOW_BANNERS_GROUP_SET2','','�ɤΥХʡ����롼�פ�إå��ݥ������2�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,56,NULL,'2009-11-19 12:39:39','',''),(378,'�Хʡ�ɽ�����롼�� - �إå��ݥ������3','SHOW_BANNERS_GROUP_SET3','','�ɤΥХʡ����롼�פ�إå��ݥ������3�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,57,NULL,'2009-11-19 12:39:39','',''),(379,'�Хʡ�ɽ�����롼�� - �եå��ݥ������1','SHOW_BANNERS_GROUP_SET4','','�ɤΥХʡ����롼�פ�եå��ݥ������1�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,65,NULL,'2009-11-19 12:39:39','',''),(380,'�Хʡ�ɽ�����롼�� - �եå��ݥ������2','SHOW_BANNERS_GROUP_SET5','','�ɤΥХʡ����롼�פ�եå��ݥ������2�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,66,NULL,'2009-11-19 12:39:39','',''),(381,'�Хʡ�ɽ�����롼�� - �եå��ݥ������3','SHOW_BANNERS_GROUP_SET6','Wide-Banners','�ɤΥХʡ����롼�פ�եå��ݥ������3�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,67,NULL,'2009-11-19 12:39:39','',''),(382,'�Хʡ�ɽ�����롼�� - �����ɥܥå�����Хʡ��ܥå���','SHOW_BANNERS_GROUP_SET7','SideBox-Banners','�ɤΥХʡ����롼�פ򥵥��ɥܥå�����Хʡ��ܥå���2�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n�ǥե���ȤΥ��롼�פ�SideBox-Banners�Ǥ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,70,NULL,'2009-11-19 12:39:39','',''),(383,'�Хʡ�ɽ�����롼�� - �����ɥܥå�����Хʡ��ܥå���2','SHOW_BANNERS_GROUP_SET8','SideBox-Banners','�ɤΥХʡ����롼�פ򥵥��ɥܥå�����Хʡ��ܥå���2�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n�ǥե���ȤΥ��롼�פ�SideBox-Banners�Ǥ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,71,NULL,'2009-11-19 12:39:39','',''),(384,'�Хʡ�ɽ�����롼�� - �����ɥܥå�����Хʡ��ܥå�������','SHOW_BANNERS_GROUP_SET_ALL','BannersAll','�����ɥܥå�����Хʡ��ܥå�������(Banner All sidebox)��ɽ������Хʡ�ɽ�����롼�פϡ�1�ĤǤ����ǥե���ȤΥ��롼�פ�BannersAll�Ǥ����ɤΥХʡ����롼�פ򥵥��ɥܥå�����banner_box_all��ɽ�����ޤ���?<br />ɽ�����ʤ����϶���ˤ��Ƥ���������',19,72,NULL,'2009-11-19 12:39:39','',''),(385,'�եå� - IP���ɥ쥹��ɽ������ɽ��','SHOW_FOOTER_IP','1','�ܵҤ�IP���ɥ쥹��եå���ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1= on<br />',19,80,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(386,'���̳�� - �ɲó����٥��','DISCOUNT_QTY_ADD','5','���̳���γ����٥���ɲÿ�����ꤷ�ޤ�����Ĥγ����٥�˰�Ĥγ�������Ԥ����Ȥ��Ǥ��ޤ���',19,90,NULL,'2009-11-19 12:39:39','',''),(387,'���̳�� - ��Ԥ������ɽ����','DISCOUNT_QUANTITY_PRICES_COLUMN','5','���ʾ���ڡ�����ɽ��������̳������ΰ�Ԥ�����ɽ��������ꤷ�ޤ������������ʳ����٥���ˤ���Ԥ������ɽ������Ķ�������ϡ�ʣ���Ԥ�ɽ������ޤ���',19,95,NULL,'2009-11-19 12:39:39','',''),(388,'���ƥ���/���ʤΥ����Ƚ�','CATEGORIES_PRODUCTS_SORT_ORDER','0','���ƥ���/���ʤΥ����Ƚ�����ꤷ�ޤ���<br />0= ���ƥ���/���� �����Ƚ�/̾��<br />1= ���ƥ���/���� ̾��<br />2= ���ʥ�ǥ�<br />3= ���ʿ���+, ����̾<br />4= ���ʿ���-, ����̾<br />5= ���ʲ���+, ����̾<br />6= ���ʲ���+, ����̾',19,100,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\', \'5\', \'6\'), '),(389,'���ץ����̾/���ץ�����ͤ��ɲá����ԡ������','OPTION_NAMES_VALUES_GLOBAL_STATUS','1','���ץ����̾/���ץ�����ͤ��ɲá����ԡ�������ε�ǽ�ˤĤ��ƤΥ����Х�������Ԥ��ޤ���<br />0= ��ǽ�򱣤�<br />1= ��ǽ��ɽ������<br />2= ���ʥ�ǥ�',19,110,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(390,'���ƥ��� - ���֥�˥塼','CATEGORIES_TABS_STATUS','1','���ƥ��� - ���֤򥪥�ˤ���ȥ���åײ��̤Υإå���ʬ�˥��ƥ��꤬ɽ������ޤ������ޤ��ޤʱ��Ѥ��Ǥ���Ǥ��礦��<br />0= ���ƥ���Υ��֤򱣤�<br />1= ���ƥ���Υ��֤�ɽ��',19,112,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(391,'�����ȥޥå� - My�ڡ�����ɽ��','SHOW_ACCOUNT_LINKS_ON_SITE_MAP','No','My�ڡ����Υ�󥯤򥵥��ȥޥåפ�ɽ�����ޤ���?<br />��ա����������󥸥�Υ����顼�����Υڡ����򥤥�ǥå������褦�Ȥ��ƥ�����ڡ�����ͶƳ����Ƥ��ޤ���ǽ�������ꡢ�����ᤷ�ޤ���<br /><br />�ǥե���ȡ�false (ɽ�����ʤ�)',19,115,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'Yes\', \'No\'), '),(392,'1���ʤ����Υ��ƥ����ɽ���򥹥��å�','SKIP_SINGLE_PRODUCT_CATEGORIES','False','���ʤ�1�Ĥ����Υ��ƥ����ɽ���򥹥��åפ��ޤ���?<br />���Υ��ץ����True�ξ�硢�桼���������ʤ�1�Ĥ����Υ��ƥ���򥯥�å�����ȡ�Zen Cart��ľ�ܾ��ʥڡ�����ɽ������褦�ˤʤ�ޤ���<br />�ǥե���ȡ�True',19,120,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(393,'CSS�ܥ���','IMAGE_USE_CSS_BUTTONS','No','CSS����(gif/jpg)������˥ܥ����ɽ�����ޤ���?<br />ON�ˤ�����硢�ܥ���Υ�������ϥ������륷���Ȥ�������Ƥ���������',19,147,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'No\', \'Yes\'), '),(394,'<strong>�֥��ƥʥ���� ����/����</strong>','DOWN_FOR_MAINTENANCE','false','�֥��ƥʥ���פ�ɽ���ˤĤ������ꤷ�ޤ���<br />\r\n<br />\r\n��true=on\r\n��false=off',20,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(395,'�֥��ƥʥ����- ɽ������ե�����','DOWN_FOR_MAINTENANCE_FILENAME','down_for_maintenance','���ƥʥ����ɽ������ե�����Υե�����̾�����ꤷ�ޤ����ǥե���Ȥ�\"down_for_maintenance\"�Ǥ���<br /><br />\r\n����ա۳�ĥ�Ҥ��դ��ʤ��Ǥ���������',20,2,NULL,'2009-11-19 12:39:39',NULL,''),(396,'�֥��ƥʥ����- �إå��򱣤�','DOWN_FOR_MAINTENANCE_HEADER_OFF','false','�֥��ƥʥ����ɽ���⡼�ɤκݡ��إå��򱣤��ޤ���?<br /><br />\r\n��true=hide<br />\r\n��false=show',20,3,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(397,'�֥��ƥʥ����- �������򱣤�','DOWN_FOR_MAINTENANCE_COLUMN_LEFT_OFF','false','�֥��ƥʥ����ɽ���⡼�ɤκݡ��������򱣤��ޤ���?<br /><br />\r\n��true=hide<br />\r\n��false=show',20,4,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(398,'�֥��ƥʥ����- �������򱣤�','DOWN_FOR_MAINTENANCE_COLUMN_RIGHT_OFF','false','�֥��ƥʥ����ɽ���⡼�ɤκݡ��������򱣤��ޤ���?<br /><br />\r\n��true=hide<br />\r\n��false=show',20,5,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(399,'�֥��ƥʥ����- �եå��򱣤�','DOWN_FOR_MAINTENANCE_FOOTER_OFF','false','�֥��ƥʥ����ɽ���⡼�ɤκݡ��եå��򱣤��ޤ���?<br /><br />\r\n��true=hide<br />\r\n��false=show',20,6,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(400,'�֥��ƥʥ����- ���ʤ�ɽ�����ʤ�','DOWN_FOR_MAINTENANCE_PRICES_OFF','false','�֥��ƥʥ����ɽ���⡼�ɤκݡ����ʲ��ʤ򱣤��ޤ���?<br /><br />\r\n��true=hide<br />\r\n��false=show',20,7,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(401,'�֥��ƥʥ����- ���ꤷ��IP���ɥ쥹�����','EXCLUDE_ADMIN_IP_FOR_MAINTENANCE','your IP (ADMIN)','����å״������Ѥʤɤˡ��֥��ƥʥ����ɽ���⡼�ɤκݤǤ⥢��������ǽ��IP���ɥ쥹�����ꤷ�ޤ���?<br /><br />\r\nʣ����IP���ɥ쥹����ꤹ��ˤϥ����(,)�Ƕ��ڤ�ޤ����ޤ������ʤ��Υ�����������IP���ɥ쥹���狼��ʤ����ϡ�����åפΥեå���ɽ�������IP���ɥ쥹������å����Ƥ���������',20,8,'2003-03-21 13:43:22','2003-03-21 21:20:07',NULL,NULL),(402,'�֥��ƥʥ�ͽ��(NOTICE PUBLIC)��-  ����/����','WARN_BEFORE_DOWN_FOR_MAINTENANCE','false','����åפΡ֥��ƥʥ����ɽ����Ф����˹��Τ�Ф��ޤ���?<br /><br />\r\n��true=on<br />\r\n��false=off<br />\r\n��ա��֥��ƥʥ����ɽ����ͭ���ˤʤ�ȡ���������ϼ�ưŪ��false�˽񤭴������ޤ���',20,9,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(403,'�֥��ƥʥ�ͽ���- ��å�������ɽ����������','PERIOD_BEFORE_DOWN_FOR_MAINTENANCE','15/05/2003  2-3 PM','�إå���ɽ��������ƥʥ�ͽ���å������γ������Ȼ��֤����ꤷ�ޤ���',20,10,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,NULL),(404,'�֥��ƥʥ����- ���ƥʥ󥹤򳫻Ϥ�������(when webmaster has enabled maintenance)��ɽ��','DISPLAY_MAINTENANCE_TIME','false','����å״����Ԥ����ġ֥��ƥʥ����ɽ���򥪥�ˤ�����ɽ�����ޤ���?<br /><br />\r\n��true=on<br />\r\n��false=off',20,11,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(405,'�֥��ƥʥ����- ���ƥʥ󥹴��֤�ɽ��','DISPLAY_MAINTENANCE_PERIOD','false','���ƥʥ󥹤δ��֤�ɽ�����ޤ���?<br /><br />\r\n��true=on<br />\r\n��false=off',20,12,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(406,'���ƥʥ󥹴���','TEXT_MAINTENANCE_PERIOD_TIME','2h00','���ƥʥ󥹴��֤����ꤷ�ޤ���<br />\r\n�񼰡�(hh:mm)<br />h = ���֡�m = ʬ',20,13,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,NULL),(407,'�����å������Ȼ��ˡ֤����ѵ���׳�ǧ���̤�ɽ��','DISPLAY_CONDITIONS_ON_CHECKOUT','false','�����å������Ȥκݤˡ֤����ѵ���פβ��̤�ɽ�����ޤ���?',11,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(408,'��������Ⱥ������˸Ŀ;����ݸ����˳�ǧ���̤�ɽ��','DISPLAY_PRIVACY_CONDITIONS','true','��������Ⱥ����κݡ��Ŀ;����ݸ����ˤؤ�Ʊ�ղ��̤�ɽ�����ޤ���?<br /><div style=\"color: red;\">��ա��ָĿ;����ݸ�ˡ�פǤϡ��Ŀ;����ݸ����ˤ򳫼����뤳�Ȥ������Ƥ��ޤ���</div>',11,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(409,'���ʲ�����ɽ��','PRODUCT_NEW_LIST_IMAGE','1102','���ʲ�����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,1,NULL,'2009-11-19 12:39:39',NULL,NULL),(410,'���ʤο��̤�ɽ��','PRODUCT_NEW_LIST_QUANTITY','1202','���ʿ��̤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,2,NULL,'2009-11-19 12:39:39',NULL,NULL),(411,'�ֺ������㤦�ץܥ����ɽ��','PRODUCT_NEW_BUY_NOW','1300','�ֺ������㤦�ץܥ����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,3,NULL,'2009-11-19 12:39:39',NULL,NULL),(412,'����̾��ɽ��','PRODUCT_NEW_LIST_NAME','2101','����̾��ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,4,NULL,'2009-11-19 12:39:39',NULL,NULL),(413,'���ʷ��֤�ɽ��','PRODUCT_NEW_LIST_MODEL','2201','���ʷ��֤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,5,NULL,'2009-11-19 12:39:39',NULL,NULL),(414,'���ʥ᡼������ɽ��','PRODUCT_NEW_LIST_MANUFACTURER','2302','���ʥ᡼������ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,6,NULL,'2009-11-19 12:39:39',NULL,NULL),(415,'���ʲ��ʤ�ɽ��','PRODUCT_NEW_LIST_PRICE','2402','���ʲ��ʤ�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,7,NULL,'2009-11-19 12:39:39',NULL,NULL),(416,'���ʽ��̤�ɽ��','PRODUCT_NEW_LIST_WEIGHT','2502','���ʤν��̤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,8,NULL,'2009-11-19 12:39:39',NULL,NULL),(417,'������Ͽ����ɽ��','PRODUCT_NEW_LIST_DATE_ADDED','2601','������Ͽ����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,9,NULL,'2009-11-19 12:39:39',NULL,NULL),(418,'����������ɽ��','PRODUCT_NEW_LIST_DESCRIPTION','1','��������(�ǽ��150ʸ��)��ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1= on',21,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(419,'���ʤ�ɽ�� - �ǥե���ȤΥ����Ƚ�','PRODUCT_NEW_LIST_SORT_DEFAULT','6','���徦�ʥꥹ�Ȥ�ɽ���Υǥե���ȤΥ����Ƚ��? �ǥե�����ͤ�6�Ǥ���<br /><br />\r\n��1= ����̾<br />\r\n��2= ����̾(�߽�)<br />\r\n��3= ���ʤ��¤���Τ��龦��̾<br />\r\n��4= ���ʤ��⤤��Τ��龦��̾<br />\r\n��5= ����<br />\r\n��6= ������Ͽ��(�߽�)<br />\r\n��7= ������Ͽ��<br />\r\n��8= ���ʽ�(Product Sort)\r\n',21,11,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\'), '),(420,'���徦�� - �ǥե���ȤΥ��롼��ID','PRODUCT_NEW_LIST_GROUP_ID','21','���徦�ʥꥹ�Ȥ����ꥰ�롼��ID(configuration_group_id)�ϲ��Ǥ���?<br />\r\n<br />\r\n��ա������ʥꥹ�ȤΥ��롼��ID���ǥե���Ȥ�21�����ѹ����줿�Ȥ��������ꤷ�Ƥ���������',21,12,NULL,'2009-11-19 12:39:39',NULL,NULL),(421,'ʣ�����ʤο������̵ͭ��ɽ������','PRODUCT_NEW_LISTING_MULTIPLE_ADD_TO_CART','3','ʣ�����ʤο������ɽ����̵ͭ��ɽ�����֤ˤĤ������ꤷ�ޤ���<br />0= off<br />1= ����<br />2= ����<br />3= ξ��',21,25,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(422,'���ʲ�����ɽ��','PRODUCT_FEATURED_LIST_IMAGE','1102','���ʲ�����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />\r\n',22,1,NULL,'2009-11-19 12:39:39',NULL,NULL),(423,'���ʿ��̤�ɽ��','PRODUCT_FEATURED_LIST_QUANTITY','1202','���ʿ��̤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />\r\n',22,2,NULL,'2009-11-19 12:39:39',NULL,NULL),(424,'�ֺ������㤦�ץܥ����ɽ��','PRODUCT_FEATURED_BUY_NOW','1300','�ֺ������㤦�ץܥ����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',22,3,NULL,'2009-11-19 12:39:39',NULL,NULL),(425,'����̾��ɽ��','PRODUCT_FEATURED_LIST_NAME','2101','����̾��ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',22,4,NULL,'2009-11-19 12:39:39',NULL,NULL),(426,'���ʷ��֤�ɽ��','PRODUCT_FEATURED_LIST_MODEL','2201','���ʷ��֤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',22,5,NULL,'2009-11-19 12:39:39',NULL,NULL),(427,'���ʥ᡼������ɽ��','PRODUCT_FEATURED_LIST_MANUFACTURER','2302','���ʥ᡼������ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',22,6,NULL,'2009-11-19 12:39:39',NULL,NULL),(428,'���ʲ��ʤ�ɽ��','PRODUCT_FEATURED_LIST_PRICE','2402','���ʲ��ʤ�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',22,7,NULL,'2009-11-19 12:39:39',NULL,NULL),(429,'���ʽ��̤�ɽ��','PRODUCT_FEATURED_LIST_WEIGHT','2502','���ʽ��̤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',22,8,NULL,'2009-11-19 12:39:39',NULL,NULL),(430,'������Ͽ����ɽ��','PRODUCT_FEATURED_LIST_DATE_ADDED','2601','������Ͽ����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',22,9,NULL,'2009-11-19 12:39:39',NULL,NULL),(431,'����������ɽ��','PRODUCT_FEATURED_LIST_DESCRIPTION','1','��������(�ǽ��150ʸ��)��ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1= on',22,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(432,'����ɽ�� - �ǥե���ȤΥ����Ƚ�','PRODUCT_FEATURED_LIST_SORT_DEFAULT','1','�������ᾦ�ʥꥹ�Ȥ�ɽ���Υǥե���ȤΥ����Ƚ��? �ǥե�����ͤ�1�Ǥ���<br />\r\n<br />\r\n��1= ����̾<br />\r\n��2= ����̾(�߽�)<br />\r\n��3= ���ʤ��¤���Τ��顢����̾<br />\r\n��4= ���ʤ��⤤��Τ��顢����̾<br />\r\n��5= ����<br />\r\n��6= ������Ͽ��(�߽�)<br />\r\n��7= ������Ͽ��<br />\r\n��8= ���ʽ�(Product Sort)',22,11,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\'), '),(433,'�������ᾦ�� - �ǥե���ȤΥ��롼��ID','PRODUCT_FEATURED_LIST_GROUP_ID','22','�������ᾦ�ʥꥹ�Ȥ����ꥰ�롼��ID(configuration_group_id)�ϲ��Ǥ���?<br />\r\n<br />\r\n��ա��������ᾦ�ʥꥹ�ȤΥ��롼��ID���ǥե���Ȥ�22�����ѹ����줿�Ȥ��������ꤷ�Ƥ���������\r\n',22,12,NULL,'2009-11-19 12:39:39',NULL,NULL),(434,'ʣ�����ʤο������̵ͭ��ɽ������','PRODUCT_FEATURED_LISTING_MULTIPLE_ADD_TO_CART','3','ʣ�����ʤο������ɽ����̵ͭ��ɽ�����֤ˤĤ������ꤷ�ޤ���<br />0= off<br />1= ����<br />2= ����<br />3= ξ��',22,25,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(435,'���ʲ�����ɽ��','PRODUCT_ALL_LIST_IMAGE','1102','���ʲ�����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,1,NULL,'2009-11-19 12:39:39',NULL,NULL),(436,'���ʿ��̤�ɽ��','PRODUCT_ALL_LIST_QUANTITY','1202','���ʿ��̤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,2,NULL,'2009-11-19 12:39:39',NULL,NULL),(437,'�ֺ������㤦�ץܥ����ɽ��','PRODUCT_ALL_BUY_NOW','1300','�ֺ������㤦�ץܥ����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,3,NULL,'2009-11-19 12:39:39',NULL,NULL),(438,'���ʲ��ʤ�ɽ��','PRODUCT_ALL_LIST_NAME','2101','���ʲ��ʤ�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,4,NULL,'2009-11-19 12:39:39',NULL,NULL),(439,'���ʷ��֤�ɽ��','PRODUCT_ALL_LIST_MODEL','2201','���ʷ��֤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,5,NULL,'2009-11-19 12:39:39',NULL,NULL),(440,'���ʥ᡼������ɽ��','PRODUCT_ALL_LIST_MANUFACTURER','2302','���ʥ᡼������ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,6,NULL,'2009-11-19 12:39:39',NULL,NULL),(441,'���ʲ��ʤ�ɽ��','PRODUCT_ALL_LIST_PRICE','2402','���ʲ��ʤ�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,7,NULL,'2009-11-19 12:39:39',NULL,NULL),(442,'���ʽ��̤�ɽ��','PRODUCT_ALL_LIST_WEIGHT','2502','���ʽ��̤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,8,NULL,'2009-11-19 12:39:39',NULL,NULL),(443,'������Ͽ����ɽ��','PRODUCT_ALL_LIST_DATE_ADDED','2601','������Ͽ����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,9,NULL,'2009-11-19 12:39:39',NULL,NULL),(444,'����������ɽ��','PRODUCT_ALL_LIST_DESCRIPTION','1','��������(�ǽ��150ʸ��)��ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1= on',23,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(445,'����ɽ�� - �ǥե���ȤΥ����Ƚ�','PRODUCT_ALL_LIST_SORT_DEFAULT','1','�����ʥꥹ�Ȥ�ɽ���Υǥե���ȤΥ����Ƚ��? �ǥե�����ͤ�1�Ǥ���<br />\r\n<br />\r\n��1= ����̾<br />\r\n��2= ����̾(�߽�)<br />\r\n��3= ���ʤ��¤���Τ��顢����̾<br />\r\n��4= ���ʤ��⤤��Τ��顢����̾<br />\r\n��5= ����<br />\r\n��6= ������Ͽ��(�߽�)<br />\r\n��7= ������Ͽ��<br />\r\n��8= ���ʽ�(Product Sort)',23,11,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\'), '),(446,'�����ʥꥹ�� - �ǥե���ȤΥ��롼��ID','PRODUCT_ALL_LIST_GROUP_ID','23','�����ʥꥹ�Ȥ����ꥰ�롼��ID(configuration_group_id)��?<br />\r\n<br />\r\n��ա������ʥꥹ�ȤΥ��롼��ID���ǥե���Ȥ�23�����ѹ����줿�Ȥ��������ꤷ�Ƥ���������\r\n',23,12,NULL,'2009-11-19 12:39:39',NULL,NULL),(447,'ʣ�����ʤο������̵ͭ��ɽ������','PRODUCT_ALL_LISTING_MULTIPLE_ADD_TO_CART','3','ʣ�����ʤο������ɽ����̵ͭ��ɽ�����֤ˤĤ������ꤷ�ޤ���<br />0= off<br />1= ����<br />2= ����<br />3= ξ��',23,25,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), '),(448,'���徦�ʤ�ȥåץڡ�����ɽ������','SHOW_PRODUCT_INFO_MAIN_NEW_PRODUCTS','1','���徦�ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(1��4)�����ꤷ�Ƥ���������\r\n',24,65,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(449,'�������ᾦ�ʤ�ȥåץڡ�����ɽ������','SHOW_PRODUCT_INFO_MAIN_FEATURED_PRODUCTS','2','�������ᾦ�ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(1��4)�����ꤷ�Ƥ���������\r\n',24,66,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(450,'�ò����ʤ�ȥåץڡ�����ɽ������','SHOW_PRODUCT_INFO_MAIN_SPECIALS_PRODUCTS','3','�ò����ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(1��4)�����ꤷ�Ƥ���������\r\n',24,67,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(451,'����ͽ�꾦�ʤ�ȥåץڡ�����ɽ������','SHOW_PRODUCT_INFO_MAIN_UPCOMING','4','����ͽ�꾦�ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(1��4)�����ꤷ�Ƥ���������\r\n',24,68,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(452,'���徦�ʤ�ȥåץڡ�����ɽ������ - ���ƥ��ꡦ���֥��ƥ��궦��\r\n','SHOW_PRODUCT_INFO_CATEGORY_NEW_PRODUCTS','1','���徦�ʤ�(�ȥåץ�٥�)���ƥ��ꡦ���֥��ƥ��궦�˥ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(1��4)�����ꤷ�Ƥ���������\r\n',24,70,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(453,'�������ᾦ�ʤ�ȥåץڡ�����ɽ������ - ���ƥ��ꡦ���֥��ƥ��궦��','SHOW_PRODUCT_INFO_CATEGORY_FEATURED_PRODUCTS','2','�������ᾦ�ʤ�(�ȥåץ�٥�)���ƥ��ꡦ���֥��ƥ��궦�˥ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(1��4)�����ꤷ�Ƥ���������\r\n',24,71,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(454,'�ò����ʤ�ȥåץڡ�����ɽ������ - ���ƥ��ꡦ���֥��ƥ��궦��','SHOW_PRODUCT_INFO_CATEGORY_SPECIALS_PRODUCTS','3','�ò����ʤ�(�ȥåץ�٥�)���ƥ��ꡦ���֥��ƥ��궦�˥ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(1��4)�����ꤷ�Ƥ���������\r\n',24,72,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(455,'����ͽ�꾦�ʤ�ȥåץڡ�����ɽ������ - ���ƥ��ꡦ���֥��ƥ��궦��','SHOW_PRODUCT_INFO_CATEGORY_UPCOMING','4','����ͽ�꾦�ʤ�(�ȥåץ�٥�)���ƥ��ꡦ���֥��ƥ��궦�˥ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(1��4)�����ꤷ�Ƥ���������\r\n',24,73,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(456,'���徦�ʤ�ȥåץڡ�����ɽ������ - ���顼�ȥ���ڤ쾦�ʥڡ���','SHOW_PRODUCT_INFO_MISSING_NEW_PRODUCTS','1','����ͽ�꾦�ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n(���顼�ȥ���ڤ쾦�ʥڡ�����/* ������̣���� */)<br />\r\n0= off<br />\r\n�ޤ��Ͻ��֤����(1��4)�����ꤷ�Ƥ���������',24,75,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(457,'�������ᾦ�ʤ�ȥåץڡ�����ɽ������ - ���顼�ȥ���ڤ쾦�ʥڡ���','SHOW_PRODUCT_INFO_MISSING_FEATURED_PRODUCTS','2','�������ᾦ�ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n(���顼�ȥ���ڤ쾦�ʥڡ�����/* ������̣���� */)<br />\r\n0= off<br />\r\n�ޤ��Ͻ��֤����(1��4)�����ꤷ�Ƥ���������',24,76,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(458,'�ò����ʤ�ȥåץڡ�����ɽ������ - ���顼�ȥ���ڤ쾦�ʥڡ���','SHOW_PRODUCT_INFO_MISSING_SPECIALS_PRODUCTS','3','�ò����ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n(���顼�ȥ���ڤ쾦�ʥڡ�����/* ������̣���� */)<br />\r\n0= off<br />\r\n�ޤ��Ͻ��֤����(1��4)�����ꤷ�Ƥ���������',24,77,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(459,'����ͽ�꾦�ʤ�ȥåץڡ�����ɽ������ - ���顼�ȥ���ڤ쾦�ʥڡ���','SHOW_PRODUCT_INFO_MISSING_UPCOMING','4','����ͽ�꾦�ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n(���顼�ȥ���ڤ쾦�ʥڡ�����/* ������̣���� */)<br />\r\n0= off<br />\r\n�ޤ��Ͻ��֤����(1��4)�����ꤷ�Ƥ���������',24,78,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(460,'���徦�ʤ�ɽ������ - ���ʥꥹ�Ȥβ�����','SHOW_PRODUCT_INFO_LISTING_BELOW_NEW_PRODUCTS','1','���ʥꥹ�Ȥβ��˿��徦�ʤ�ɽ�����ޤ���?\r\n<br />0= off <br />\r\n�ޤ������ֽ�����(1��4)�����ꤷ�Ƥ���������',24,85,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(461,'�������ᾦ�ʤ�ɽ������ - ���ʥꥹ�Ȥβ�����','SHOW_PRODUCT_INFO_LISTING_BELOW_FEATURED_PRODUCTS','2','���ʥꥹ�Ȥβ��ˤ������ᾦ�ʤ�ɽ�����ޤ���?\r\n<br />0= off <br />\r\n�ޤ������ֽ�����(1��4)�����ꤷ�Ƥ���������',24,86,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(462,'�ò����ʤ�ɽ������ - ���ʥꥹ�Ȥβ�����','SHOW_PRODUCT_INFO_LISTING_BELOW_SPECIALS_PRODUCTS','3','���ʥꥹ�Ȥβ����ò����ʤ�ɽ�����ޤ���?\r\n<br />0= off <br />\r\n�ޤ������ֽ�����(1��4)�����ꤷ�Ƥ���������',24,87,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(463,'����ͽ�꾦�ʤ�ɽ������ - ���ʥꥹ�Ȥβ�����','SHOW_PRODUCT_INFO_LISTING_BELOW_UPCOMING','4','���ʥꥹ�Ȥβ�������ͽ�꾦�ʤ�ɽ�����ޤ���?\r\n<br />0= off <br />\r\n�ޤ������ֽ�����(1��4)�����ꤷ�Ƥ���������',24,88,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), '),(464,'���徦�� - ���󤢤����ɽ������','SHOW_PRODUCT_INFO_COLUMNS_NEW_PRODUCTS','3','���徦�ʤ���(Row)��������������������ꤷ�ޤ���',24,95,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), '),(465,'�������ᾦ�� - ���󤢤����ɽ������','SHOW_PRODUCT_INFO_COLUMNS_FEATURED_PRODUCTS','3','�������ᾦ�ʤ���(Row)��������������������ꤷ�ޤ���',24,96,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), '),(466,'�ò����� - ���󤢤����ɽ������','SHOW_PRODUCT_INFO_COLUMNS_SPECIALS_PRODUCTS','3','�ò����ʤ���(Row)��������������������ꤷ�ޤ���',24,97,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), '),(467,'�ȥåץ�٥�(��)���ƥ���ξ��ʥꥹ��ɽ�� - �ե��륿ɽ����������ɽ��','SHOW_PRODUCT_INFO_ALL_PRODUCTS','1','���ߤΥᥤ�󥫥ƥ���˾��ʥꥹ�Ȥ�Ŭ�Ѥ��줿�ݡ����ʤ�ե��륿ɽ�����ޤ���? ����Ȥ������ƥ��꤫�龦�ʤ�ɽ�����ޤ���?<br />\r\n��0= Filter\r\n��Off 1=Filter On',24,100,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), '),(468,'�ȥåץڡ���������ΰ� - ���ơ�����','DEFINE_MAIN_PAGE_STATUS','1','�Խ����줿�ΰ��ɽ����Ԥ��ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,60,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(469,'�֤��䤤��碌�ץڡ�����ɽ�� - ���ơ�����','DEFINE_CONTACT_US_STATUS','1','�Խ����줿�֤��䤤��碌�ץƥ����Ȥ�ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,61,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(470,'�ָĿ;����ݸ����ˡ�ɽ�� - ���ơ�����','DEFINE_PRIVACY_STATUS','1','�Խ����줿�ָĿ;����ݸ����ˡפ�ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,62,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(471,'�������������ˤĤ��ơ� �ڡ��� - ���ơ�����','DEFINE_SHIPPINGINFO_STATUS','1','�Խ����줿�������������ˤĤ��ơץƥ����Ȥ�ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,63,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(472,'�֤����ѵ���ץڡ��� - ���ơ�����','DEFINE_CONDITIONS_STATUS','1','�Խ����줿�֤����ѵ���ץڡ�����ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,64,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(473,'�֤���ʸ����λ���ޤ����ץڡ��� - ���ơ�����','DEFINE_CHECKOUT_SUCCESS_STATUS','1','�Խ����줿�֤���ʸ����λ���ޤ����ץƥ����Ȥ�ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,65,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(474,'�֥����ݥ���ץڡ��� - ���ơ�����','DEFINE_DISCOUNT_COUPON_STATUS','1','�Խ����줿�֥����ݥ���ץƥ����Ȥ�ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,66,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(475,'�֥����ȥޥåסץڡ��� - ���ơ�����','DEFINE_SITE_MAP_STATUS','1','�Խ����줿�֥����ݥ���ץƥ����Ȥ�ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,67,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(476,'��ͳ�Խ��ڡ���(Define Page) 2','DEFINE_PAGE_2_STATUS','1','��ͳ�Խ��ڡ���2��ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,82,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(477,'��ͳ�Խ��ڡ���(Define Page) 3','DEFINE_PAGE_3_STATUS','1','��ͳ�Խ��ڡ���3 ��ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,83,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(478,'��ͳ�Խ��ڡ���(Define Page) 4','DEFINE_PAGE_4_STATUS','1','��ͳ�Խ��ڡ���(Define Page) 4��ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,84,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),'),(479,'EZ�ڡ�����ɽ�� - �ڡ����إå�','EZPAGES_STATUS_HEADER','1','EZ�ڡ����Υ���ƥ�Ĥ�ڡ����إå���ɽ�����뤫�ɤ����򥰥��Х�(����������)�����ꤷ�ޤ���<br />0 = Off<br />1 = On<br />2= �����ȥ��ƥʥ󥹤κݤ˴����Ԥ�IP���ɥ쥹�ǥ��������������Τ�ɽ��<br />��ա���˥󥰤ϸ������줺�����Ԥˤ���ɽ������ޤ���',30,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(480,'EZ�ڡ�����ɽ�� - �ڡ����եå�','EZPAGES_STATUS_FOOTER','1','EZ�ڡ����Υ���ƥ�Ĥ�ڡ����եå���ɽ�����뤫�ɤ����򥰥��Х�(����������)�����ꤷ�ޤ���<br />0 = Off<br />1 = On<br />2= �����ȥ��ƥʥ󥹤κݤ˴����Ԥ�IP���ɥ쥹�ǥ��������������Τ�ɽ��<br />��ա���˥󥰤ϸ������줺�����Ԥˤ���ɽ������ޤ���',30,11,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(481,'EZ�ڡ�����ɽ�� - �����ɥܥå���','EZPAGES_STATUS_SIDEBOX','1','EZ�ڡ����Υ���ƥ�Ĥ򥵥��ɥܥå�����ɽ�����뤫�ɤ����򥰥��Х�(����������)�����ꤷ�ޤ���<br />0 = Off<br />1 = On<br />2= �����ȥ��ƥʥ󥹤κݤ˴����Ԥ�IP���ɥ쥹�ǥ��������������Τ�ɽ��<br />��ա���˥󥰤ϸ������줺�����Ԥˤ���ɽ������ޤ���',30,12,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(482,'EZ�ڡ��� �Υإå� - ��󥯤Υ��ѥ졼��(���ڤ국��)','EZPAGES_SEPARATOR_HEADER','','E�ڥڡ����Υإå��Υ��ɽ���Υ��ѥ졼��(���ڤ�ʸ��)��?<br />�ǥե���� = &amp;nbsp;::&amp;nbsp;',30,20,'2009-11-19 13:10:25','2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small('),(483,'EZ�ڡ��� �Υեå� - ��󥯤Υ��ѥ졼��(���ڤ국��)','EZPAGES_SEPARATOR_FOOTER','&nbsp;::&nbsp;','E�ڥڡ����Υեå��Υ��ɽ���Υ��ѥ졼��(���ڤ�ʸ��)��?<br />�ǥե���� = &amp;nbsp;::&amp;nbsp;',30,21,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small('),(484,'EZ�ڡ��� - [����][����]�ܥ���','EZPAGES_SHOW_PREV_NEXT_BUTTONS','2','EZ�ڡ����Υ���ƥ����[����][³����][����]�ܥ����ɽ�����ޤ���?<br />0=OFF (�ܥ���ʤ�)<br />1=��³����פ�ɽ��<br />2=�����ءס�³����סּ��ءפ�ɽ��<br /><br />�ǥե���ȡ�2',30,30,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(485,'EZ�ڡ��� - �ܼ���ɽ��','EZPAGES_SHOW_TABLE_CONTENTS','1','EZ�ڡ������ܼ���ɽ�����ޤ���?<br />0= OFF<br />1= ON',30,35,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(486,'EZ-�ڡ��� - �إå���ɽ�����ʤ��ڡ���','EZPAGES_DISABLE_HEADER_DISPLAY_LIST','','EZ�ڡ����Τ����̾�Υڡ����إå���ɽ�����ʤ��ڡ�����?<br />ɽ�����ʤ��ڡ����Υڡ���ID�򥫥��(,)���ڤ�ǵ��Ҥ��Ƥ����������ڡ���ID�ϴ������̤�[�ɲ����ꡦ�ġ���]��EZ�ڡ���������̤ǳ�ǧ�Ǥ��ޤ���<br />�㡧1,5,2<br />�ʤ����϶���Τޤ�',30,40,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small('),(487,'EZ-�ڡ��� - �եå���ɽ�����ʤ��ڡ���','EZPAGES_DISABLE_FOOTER_DISPLAY_LIST','','EZ�ڡ����Τ����̾�Υڡ����եå���ɽ�����ʤ��ڡ�����?<br />ɽ�����ʤ��ڡ����Υڡ���ID�򥫥��(,)���ڤ�ǵ��Ҥ��Ƥ����������ڡ���ID�ϴ������̤�[�ɲ����ꡦ�ġ���]��EZ�ڡ���������̤ǳ�ǧ�Ǥ��ޤ���<br />�㡧3,7<br />�ʤ����϶���Τޤ�',30,41,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small('),(488,'EZ-�ڡ��� - ��������ɽ�����ʤ��ڡ���','EZPAGES_DISABLE_LEFTCOLUMN_DISPLAY_LIST','','EZ�ڡ����Τ����̾�κ�������ɽ�����ʤ��ڡ�����?<br />ɽ�����ʤ��ڡ����Υڡ���ID�򥫥��(,)���ڤ�ǵ��Ҥ��Ƥ����������ڡ���ID�ϴ������̤�[�ɲ����ꡦ�ġ���]��EZ�ڡ���������̤ǳ�ǧ�Ǥ��ޤ���<br />�㡧6,17<br />�ʤ����϶���Τޤ�',30,42,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small('),(489,'EZ-�ڡ��� - ��������ɽ�����ʤ��ڡ���','EZPAGES_DISABLE_RIGHTCOLUMN_DISPLAY_LIST','','EZ�ڡ����Τ����̾�α�������ɽ�����ʤ��ڡ�����?<br />ɽ�����ʤ��ڡ����Υڡ���ID�򥫥��(,)���ڤ�ǵ��Ҥ��Ƥ����������ڡ���ID�ϴ������̤�[�ɲ����ꡦ�ġ���]��EZ�ڡ���������̤ǳ�ǧ�Ǥ��ޤ���<br />�㡧5,23,47<br />�ʤ����϶���Τޤ�',30,43,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small('),(490,'���䤤��碌���θĿ;����ǧ����ɽ��','DISPLAY_CONTACT_US_PRIVACY_CONDITIONS','true','���䤤��碌������̤ǸĿ;���γ�ǧ���̤�ɽ�����ޤ���<div style=\"color: red;\">2005ǯ4��1���˻ܹԤ��줿�ָĿ;����ݸ�ˡ�פǤϡ��Ŀ;����ݸ����ˤ򳫼����뤳�Ȥ������Ƥ��ޤ���</div>',11,3,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(491,'�դ꤬�ʤ�ɬ�פʹ�','FURIKANA_NECESSARY_COUNTRIES','Japanese','�դ꤬�ʤ�ɬ�פʹ�̾�򥫥�ޤǶ��ڤä����Ϥ��Ƥ�������',5,100,NULL,'2009-11-19 12:39:40',NULL,''),(492,'Product Listing - Layout Style','PRODUCT_LISTING_LAYOUT_STYLE','rows','Select the layout style:<br />Each product can be listed in its own row (rows option) or products can be listed in multiple columns per row (columns option)',8,40,NULL,'2009-11-19 12:39:41',NULL,'zen_cfg_select_option(array(\"rows\", \"columns\"),'),(493,'Product Listing - Columns Per Row','PRODUCT_LISTING_COLUMNS_PER_ROW','3','Select the number of columns of products to show in each row in the product listing. The default setting is 3.',8,41,NULL,'2009-11-19 12:39:41',NULL,NULL),(494,'Display Cross-Sell Products','MIN_DISPLAY_XSELL','1','This is the minimum number of configured Cross-Sell products required in order to cause the Cross Sell information to be displayed.<br />Default: 1',2,17,NULL,'2009-11-19 12:39:41',NULL,NULL),(495,'Display Cross-Sell Products','MAX_DISPLAY_XSELL','6','This is the maximum number of configured Cross-Sell products to be displayed.<br />Default: 6',3,66,NULL,'2009-11-19 12:39:41',NULL,NULL),(496,'Cross-Sell Products Columns per Row','SHOW_PRODUCT_INFO_COLUMNS_XSELL_PRODUCTS','3','Cross-Sell Products Columns to display per Row<br />0= off or set the sort order.<br />Default: 3',18,72,NULL,'2009-11-19 12:39:41',NULL,'zen_cfg_select_option(array(0, 1, 2, 3, 4), '),(497,'Cross-Sell - Display prices?','XSELL_DISPLAY_PRICE','false','Cross-Sell -- Do you want to display the product prices too?<br />Default: false',18,72,NULL,'2009-11-19 12:39:41',NULL,'zen_cfg_select_option(array(\'true\',\'false\'), '),(498,'̵������','MODULE_SHIPPING_FREESHIPPER_STATUS','True','̵���������󶡤��ޤ�����',6,0,NULL,'2009-11-19 12:41:06',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(499,'̵������������','MODULE_SHIPPING_FREESHIPPER_COST','0','̵�������ˤ����륳����',6,6,NULL,'2009-11-19 12:41:06',NULL,NULL),(500,'�����','MODULE_SHIPPING_FREESHIPPER_HANDLING','0','̵�������ˤ���������.',6,0,NULL,'2009-11-19 12:41:06',NULL,NULL),(501,'�Ǽ���','MODULE_SHIPPING_FREESHIPPER_TAX_CLASS','0','��������Ŭ�Ѥ�����Ǽ��̤����򤷤Ƥ���������',6,0,NULL,'2009-11-19 12:41:06','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes('),(502,'�����ϰ�','MODULE_SHIPPING_FREESHIPPER_ZONE','0','�����ϰ�����򤹤�����򤵤줿�ϰ�Τߤ����Ѳ�ǽ�ˤʤ�ޤ���.',6,0,NULL,'2009-11-19 12:41:06','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes('),(503,'ɽ���������','MODULE_SHIPPING_FREESHIPPER_SORT_ORDER','0','ɽ��������������Ǥ��ޤ����������������ۤɾ�̤�ɽ������ޤ���',6,0,NULL,'2009-11-19 12:41:06',NULL,NULL),(504,'������ؤ�������ͭ���ˤ���','MODULE_SHIPPING_YAMATO_STATUS','True','��ޥȱ�͢(�����)���������󶡤��ޤ���?',6,0,NULL,'2009-11-19 12:41:06',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(505,'�谷�������','MODULE_SHIPPING_YAMATO_HANDLING','0','������Ŭ�Ѥ���谷�����������Ǥ��ޤ�.',6,1,NULL,'2009-11-19 12:41:06',NULL,NULL),(506,'����̵������','MODULE_SHIPPING_YAMATO_FREE_SHIPPING','False','����̵�������ͭ���ˤ��ޤ���? [��ץ⥸�塼��]-[����]-[����̵������]��ͥ�褹����� False ������Ǥ�������.',6,2,NULL,'2009-11-19 12:41:06',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), '),(507,'������̵���ˤ�������������','MODULE_SHIPPING_YAMATO_OVER','5000','�����۰ʾ�򤴹����ξ���������̵���ˤ��ޤ�.',6,3,NULL,'2009-11-19 12:41:06',NULL,NULL),(508,'�������Ͱ�Ψ','MODULE_SHIPPING_YAMATO_DISCOUNT','0','�������Ͱ�Ψ����ꤷ�ޤ�.(��)',6,4,NULL,'2009-11-19 12:41:06',NULL,NULL),(509,'�����ϰ�','MODULE_SHIPPING_YAMATO_ZONE','0','�����ϰ�����򤹤�����򤵤줿�ϰ�Τߤ����Ѳ�ǽ�Ȥʤ�ޤ�.',6,5,NULL,'2009-11-19 12:41:06','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes('),(510,'ɽ���������','MODULE_SHIPPING_YAMATO_SORT_ORDER','0','ɽ��������������Ǥ��ޤ�. �������������ۤɾ�̤�ɽ������ޤ�.',6,6,NULL,'2009-11-19 12:41:06',NULL,NULL),(511,'Installed Modules','ADDON_MODULE_INSTALLED','aboutbox;addon_modules;feature_area;carousel_ui;ajax_category_tree;blog;calendar;category_sitemap;checkout_step;easy_admin;easy_admin_simplify;easy_design;email_templates;globalnavi;jquery;multiple_image_view;point_base;point_createaccount;point_customersrate;point_grouprate;point_productsrate;product_csv;products_with_attributes_stock;reviews;search_more;shopping_cart_summary;visitors','This is automatically updated. No need to edit.',6,0,'2009-11-19 19:37:36','2009-11-19 12:42:23',NULL,NULL),(512,'�����⥸�塼���ͭ����','MODULE_ADDON_MODULES_STATUS','true','̵���ˤ��뤳�ȤϽ���ޤ���',6,0,NULL,'2009-11-19 12:42:37',NULL,'zen_cfg_select_option(array(\'true\'), '),(513,'���۸�URL�ꥹ��','MODULE_ADDON_MODULES_DISTRIBUTION_URL','http://sugu.e7.com','addon�⥸�塼��ѥå�������������륵���Ȥ�URL����ꤷ�Ƥ���������<br/>ʣ�����ꤹ����ϲ��Ԥ������Ϥ��Ƥ���������',6,1,NULL,'2009-11-19 12:42:37',NULL,'zen_cfg_textarea_small('),(514,'ͥ���','MODULE_ADDON_MODULES_SORT_ORDER','0','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,2,NULL,'2009-11-19 12:42:37',NULL,NULL),(515,'�ѥ��å��������������','MOBILE_SLIM_SIZE','1','�ѥ��å����������˴ؤ�������򤷤ޤ�<BR />���������HTML��β��Ԥ䥹�ڡ�����������ե����륵�����򾮤������ޤ�����������ǥѥ��å���������󤹤��������ޤ�<br />0=OFF<br />1=ON<br />',100,2,NULL,'0001-01-01 00:00:00',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(516,'���ӥ����ȥơ��ޥ��顼������','MOBILE_THEME_COLOR','#CA6312','�����ȤΥơ��ޥ��顼���#666666�פʤ�HTML���顼�����ɤ����ꤷ�ޤ������Υơ��ޥ��顼�ϡ����Ф����Ӥ��طʿ��ʤɤǻ��Ѥ���ޤ�',100,3,NULL,'0001-01-01 00:00:00',NULL,NULL),(517,'CSS������','MOBILE_CSS_CONF','0','�����Ǥ�HTML���[class]��[id]��̵ͭ�����ꤷ�ޤ�<br />�ǥե���ȤǤϥե����륵�����̾���Ū�ΰ٤�0�����ꤵ��Ƥ��ޤ�<br />CSS����Ѥ������1�����ꤷ�Ʋ�����<BR /><br />0=CSS����Ѥ��ʤ�<br />1=CSS����Ѥ���<br />',100,4,NULL,'0001-01-01 00:00:00',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),'),(518,'���Х��ȥܥå����֥�å���ͭ����','MODULE_ABOUTBOX_STATUS','true','���Х��ȥܥå�����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:50:52',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(519,'ͥ���','MODULE_ABOUTBOX_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 12:50:52',NULL,NULL),(520,'���Х��ȥܥå����Υ����ȥ�','MODULE_ABOUTBOX_CFG_HEADER','','���Х��ȥܥå����֥�å���ɽ�����륿���ȥ����ꤷ�ޤ���',6,2,NULL,'2009-11-19 12:50:52',NULL,NULL),(521,'���Х��ȥܥå�������ʸ�Υ����ȥ�','MODULE_ABOUTBOX_CFG_GREETING_TITLE','ŹĹ����ΰ���','���Х��ȥܥå�����ɽ����������ʸ�Υ����ȥ����ꤷ�ޤ���',6,3,NULL,'2009-11-19 12:50:52',NULL,NULL),(522,'���Х��ȥܥå�������ʸ����ʸ','MODULE_ABOUTBOX_CFG_GREETING_TEXT','�����Ǥ��ʤ�˥ѥå��Υǥ⥷��åפǤ���\r\n�ƥ�ץ졼�Ȥμ����򤬤�Ф���','���Х��ȥܥå�����ɽ����������ʸ����ʸ����ꤷ�ޤ���',6,4,NULL,'2009-11-19 12:50:52',NULL,'zen_cfg_textarea_small('),(523,'���Х��ȥܥå�����ɽ���������','MODULE_ABOUTBOX_CFG_IMAGEPATH','images/my.jpg','���Х��ȥܥå�����ɽ����������Υѥ�����ꤷ�ޤ���',6,5,NULL,'2009-11-19 12:50:52',NULL,NULL),(524,'��������ɽ��','MODULE_ABOUTBOX_DISPLAY_CALENDAR','true','�Ķȥ���������ɽ�����뤫�ɤ������ꤷ�ޤ����Ķȥ��������⥸�塼�뤬���󥹥ȡ��뤵��Ƥ��ʤ���true�ˤ��Ƥ�ɽ������ޤ���<br />true: ɽ��<br />false: ��ɽ��',6,6,NULL,'2009-11-19 12:50:52',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(525,'�б����쥸�åȥ�����ɽ��','MODULE_ABOUTBOX_AVALABLE_CARDS','2','�б����쥸�åȥ����ɤ�ɽ�����뤫�ɤ������ꤷ�ޤ�<br />0: ��ɽ��<br />1: �ƥ�����ɽ��<br />2: ����ɽ��',6,7,NULL,'2009-11-19 12:50:52',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), '),(526,'jQuery��ͭ����','MODULE_JQUERY_STATUS','true','jQuery��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:51:33',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(527,'jQuery�饤�֥��','MODULE_JQUERY_LIBRARY','jquery.js','jQuery�饤�֥��Υե�����̾�����ꤷ�ޤ����ä���ͳ���ʤ��¤��ѹ�����ɬ�פϤ���ޤ���<br />������� = jquery.js',6,1,NULL,'2009-11-19 12:51:33',NULL,NULL),(528,'noConflict��ͭ����','MODULE_JQUERY_NOCONFLICT_STATUS','false','noConflict��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,2,NULL,'2009-11-19 12:51:33',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(529,'ͥ���','MODULE_JQUERY_SORT_ORDER','1','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,3,NULL,'2009-11-19 12:51:33',NULL,NULL),(530,'���ʥ��ƥ����ͭ����','MODULE_ADDON_MODULES_AJAXCATEGORYTREE_STATUS','true','���ʥ��ƥ���ɽ����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:51:55',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(531,'ͥ���','MODULE_ADDON_MODULES_AJAXCATEGORYTREE_SORT_ORDER','1000','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 12:51:55',NULL,NULL),(532,'�֥���ͭ����','MODULE_BLOG_STATUS','true','�֥���ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:52:36',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(533,'�֥�URL','MODULE_BLOG_URL','','�����оݤ�URL�� http:// �������Ϥ��Ƥ�������(https̤�б�)',6,1,NULL,'2009-11-19 12:52:36',NULL,NULL),(534,'�����ॢ����','MODULE_BLOG_TIMEOUT','1','������ߥåȻ��֤����ꤷ�ޤ��������ǻ��ꤷ�����ְʾ�˼����˻��֤������ä����ϼ�������ߤ��ޤ�',6,2,NULL,'2009-11-19 12:52:36',NULL,NULL),(535,'ɽ�����','MODULE_BLOG_COUNT','10','����ɽ����������ꤷ�ޤ���0�ξ��Ϥ��٤ƤȤʤ�ޤ�',6,3,NULL,'2009-11-19 12:52:36',NULL,NULL),(536,'ͥ���','MODULE_BLOG_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,4,NULL,'2009-11-19 12:52:36',NULL,NULL),(537,'�Ķȥ���������ͭ����','MODULE_CALENDAR_STATUS','true','�Ķȥ���������ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:53:04',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(538,'���γ��Ϥ�������','MODULE_CALENDAR_START_SUNDAY','true','���γ��Ϥ��������Ȥ��ޤ����� <br />true: ����<br />false: ����',6,1,NULL,'2009-11-19 12:53:04',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(539,'��û������ǽ��: ��ʸ������������αĶ���','MODULE_CALENDAR_DELIVERY_START','3','�������Ȥ��ƻ���Ǥ����ϰϤ������Ȥ��ƻ��ꤷ�ޤ�',6,2,NULL,'2009-11-19 12:53:04',NULL,NULL),(540,'�ǽ�������ǽ��: ��û������ǽ����������','MODULE_CALENDAR_DELIVERY_END','14','�������Ȥ��ƻ���Ǥ����ϰϤ������Ȥ��ƻ��ꤷ�ޤ�',6,3,NULL,'2009-11-19 12:53:04',NULL,NULL),(541,'����������������','MODULE_CALENDAR_HOPE_DELIVERY_TIME','���ꤷ�ʤ�,������,12����15��,15����18��,18����21��','���������������ܤ򥫥�޶��ڤ�����Ϥ��Ƥ�������',6,4,NULL,'2009-11-19 12:53:04',NULL,NULL),(542,'ͥ���','MODULE_CALENDAR_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,5,NULL,'2009-11-19 12:53:04',NULL,NULL),(543,'���롼����UI��ͭ����','MODULE_CAROUSEL_UI_STATUS','true','���롼����UI��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(544,'jCarouselLite�饤�֥��','MODULE_CAROUSEL_UI_JCAROUSELLITE_LIBRARY','jcarousellite.js','jCarouselLite�饤�֥��Υե�����̾�����ꤷ�ޤ����ä���ͳ���ʤ��¤��ѹ�����ɬ�פϤ���ޤ���<br />������� = jcarousellite.js',6,1,NULL,'2009-11-19 12:53:57',NULL,NULL),(545,'ͥ���','MODULE_CAROUSEL_UI_SORT_ORDER','11','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������<br />��jQuery�⥸�塼������礭�ʿ��������ꤷ�Ƥ���������',6,2,NULL,'2009-11-19 12:53:57',NULL,NULL),(546,'���徦�� - ����ɽ�����','MODULE_CAROUSEL_UI_MAX_DISPLAY_NEW_PRODUCTS','4','���徦�ʤκ���ɽ����������ꤷ�ޤ���<br />������� = 4',6,3,NULL,'2009-11-19 12:53:57',NULL,NULL),(547,'���徦�� - ��ư��������','MODULE_CAROUSEL_UI_CONF_AUTO_NEW_PRODUCTS','0','���徦�ʤ�ưŪ�˥������뤹����δֳ�(�ߥ���)�����ꤷ�ޤ���<br />0�ߥ��äξ��ϼ�ư�������뤷�ޤ���<br />������� = 0',6,4,NULL,'2009-11-19 12:53:57',NULL,NULL),(548,'���徦�� - ��������®��','MODULE_CAROUSEL_UI_CONF_SPEED_NEW_PRODUCTS','200','���徦�ʤ򥹥����뤹��®��(�ߥ���)�����ꤷ�ޤ���<br />�����ͤ��礭������Ȥ�ä��ꥹ�����뤷�ޤ���0�����ꤹ��ȥ������뤷�ʤ��ʤ�ޤ���<br />������� = 200',6,5,NULL,'2009-11-19 12:53:57',NULL,NULL),(549,'���徦�� - �ĥ�������','MODULE_CAROUSEL_UI_CONF_VERTICAL_NEW_PRODUCTS','false','���徦�ʤ�Ĥ˥������뤷�ޤ�����<br />true: �ĥ�������<br />false: ����������<br />������� = false',6,6,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(550,'���徦�� - �۴ĥ�������','MODULE_CAROUSEL_UI_CONF_CIRCULAR_NEW_PRODUCTS','true','���徦�ʤ�۴�Ū�˥������뤷�ޤ�����<br />true: �۴ĥ�������<br />false: ������������<br />������� = true',6,7,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(551,'���徦�� - �������륨�ꥢɽ�����','MODULE_CAROUSEL_UI_CONF_VISIBLE_NEW_PRODUCTS','3','���徦�ʤΥ������륨�ꥢ��ɽ�������������ꤷ�ޤ���<br />������� = 3',6,8,NULL,'2009-11-19 12:53:57',NULL,NULL),(552,'���徦�� - ����������','MODULE_CAROUSEL_UI_CONF_SCROLL_NEW_PRODUCTS','1','���徦�ʤΰ��٤˥������뤵�����������ꤷ�ޤ���<br />������� = 1',6,9,NULL,'2009-11-19 12:53:57',NULL,NULL),(553,'�������ᾦ�� - ����ɽ�����','MODULE_CAROUSEL_UI_MAX_DISPLAY_FEATURED_PRODUCTS','4','�������ᾦ�ʤκ���ɽ����������ꤷ�ޤ���<br />������� = 4',6,10,NULL,'2009-11-19 12:53:57',NULL,NULL),(554,'�������ᾦ�� - ��ư��������','MODULE_CAROUSEL_UI_CONF_AUTO_FEATURED_PRODUCTS','0','�������ᾦ�ʤ�ưŪ�˥������뤹����δֳ�(�ߥ���)�����ꤷ�ޤ���<br />0�ߥ��äξ��ϼ�ư�������뤷�ޤ���<br />������� = 0',6,11,NULL,'2009-11-19 12:53:57',NULL,NULL),(555,'�������ᾦ�� - ��������®��','MODULE_CAROUSEL_UI_CONF_SPEED_FEATURED_PRODUCTS','200','�������ᾦ�ʤ򥹥����뤹��®��(�ߥ���)�����ꤷ�ޤ���<br />�����ͤ��礭������Ȥ�ä��ꥹ�����뤷�ޤ���0�����ꤹ��ȥ������뤷�ʤ��ʤ�ޤ���<br />������� = 200',6,12,NULL,'2009-11-19 12:53:57',NULL,NULL),(556,'�������ᾦ�� - �ĥ�������','MODULE_CAROUSEL_UI_CONF_VERTICAL_FEATURED_PRODUCTS','false','�������ᾦ�ʤ�Ĥ˥������뤷�ޤ�����<br />true: �ĥ�������<br />false: ����������<br />������� = false',6,13,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(557,'�������ᾦ�� - �۴ĥ�������','MODULE_CAROUSEL_UI_CONF_CIRCULAR_FEATURED_PRODUCTS','true','�������ᾦ�ʤ�۴�Ū�˥������뤷�ޤ�����<br />true: �۴ĥ�������<br />false: ������������<br />������� = true',6,14,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(558,'�������ᾦ�� - �������륨�ꥢɽ�����','MODULE_CAROUSEL_UI_CONF_VISIBLE_FEATURED_PRODUCTS','3','�������ᾦ�ʤΥ������륨�ꥢ��ɽ�������������ꤷ�ޤ���<br />������� = 3',6,15,NULL,'2009-11-19 12:53:57',NULL,NULL),(559,'�������ᾦ�� - ����������','MODULE_CAROUSEL_UI_CONF_SCROLL_FEATURED_PRODUCTS','1','�������ᾦ�ʤΰ��٤˥������뤵�����������ꤷ�ޤ���<br />������� = 1',6,16,NULL,'2009-11-19 12:53:57',NULL,NULL),(560,'�ò����� - ����ɽ�����','MODULE_CAROUSEL_UI_MAX_DISPLAY_SPECIALS_PRODUCTS','4','�ò����ʤκ���ɽ����������ꤷ�ޤ���<br />������� = 4',6,17,NULL,'2009-11-19 12:53:57',NULL,NULL),(561,'�ò����� - ��ư��������','MODULE_CAROUSEL_UI_CONF_AUTO_SPECIALS_PRODUCTS','0','�ò����ʤ�ưŪ�˥������뤹����δֳ�(�ߥ���)�����ꤷ�ޤ���<br />0�ߥ��äξ��ϼ�ư�������뤷�ޤ���<br />������� = 0',6,18,NULL,'2009-11-19 12:53:57',NULL,NULL),(562,'�ò����� - ��������®��','MODULE_CAROUSEL_UI_CONF_SPEED_SPECIALS_PRODUCTS','200','�ò����ʤ򥹥����뤹��®��(�ߥ���)�����ꤷ�ޤ���<br />�����ͤ��礭������Ȥ�ä��ꥹ�����뤷�ޤ���0�����ꤹ��ȥ������뤷�ʤ��ʤ�ޤ���<br />������� = 200',6,19,NULL,'2009-11-19 12:53:57',NULL,NULL),(563,'�ò����� - �ĥ�������','MODULE_CAROUSEL_UI_CONF_VERTICAL_SPECIALS_PRODUCTS','false','�ò����ʤ�Ĥ˥������뤷�ޤ�����<br />true: �ĥ�������<br />false: ����������<br />������� = false',6,20,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(564,'�ò����� - �۴ĥ�������','MODULE_CAROUSEL_UI_CONF_CIRCULAR_SPECIALS_PRODUCTS','true','�ò����ʤ�۴�Ū�˥������뤷�ޤ�����<br />true: �۴ĥ�������<br />false: ������������<br />������� = true',6,21,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(565,'�ò����� - �������륨�ꥢɽ�����','MODULE_CAROUSEL_UI_CONF_VISIBLE_SPECIALS_PRODUCTS','3','�ò����ʤΥ������륨�ꥢ��ɽ�������������ꤷ�ޤ���<br />������� = 3',6,22,NULL,'2009-11-19 12:53:57',NULL,NULL),(566,'�ò����� - ����������','MODULE_CAROUSEL_UI_CONF_SCROLL_SPECIALS_PRODUCTS','1','�ò����ʤΰ��٤˥������뤵�����������ꤷ�ޤ���<br />������� = 1',6,23,NULL,'2009-11-19 12:53:57',NULL,NULL),(567,'����ʾ��ʤ�������Ƥ��ޤ� - ����ɽ�����','MODULE_CAROUSEL_UI_MAX_DISPLAY_ALSO_PURCHASED_PRODUCTS','4','����ʾ��ʤ�������Ƥ��ޤ��κ���ɽ����������ꤷ�ޤ���<br />������� = 4',6,24,NULL,'2009-11-19 12:53:57',NULL,NULL),(568,'����ʾ��ʤ�������Ƥ��ޤ� - ��ư��������','MODULE_CAROUSEL_UI_CONF_AUTO_ALSO_PURCHASED_PRODUCTS','0','����ʾ��ʤ�������Ƥ��ޤ���ưŪ�˥������뤹����δֳ�(�ߥ���)�����ꤷ�ޤ���<br />0�ߥ��äξ��ϼ�ư�������뤷�ޤ���<br />������� = 0',6,25,NULL,'2009-11-19 12:53:57',NULL,NULL),(569,'����ʾ��ʤ�������Ƥ��ޤ� - ��������®��','MODULE_CAROUSEL_UI_CONF_SPEED_ALSO_PURCHASED_PRODUCTS','200','����ʾ��ʤ�������Ƥ��ޤ��򥹥����뤹��®��(�ߥ���)�����ꤷ�ޤ���<br />�����ͤ��礭������Ȥ�ä��ꥹ�����뤷�ޤ���0�����ꤹ��ȥ������뤷�ʤ��ʤ�ޤ���<br />������� = 200',6,26,NULL,'2009-11-19 12:53:57',NULL,NULL),(570,'����ʾ��ʤ�������Ƥ��ޤ� - �ĥ�������','MODULE_CAROUSEL_UI_CONF_VERTICAL_ALSO_PURCHASED_PRODUCTS','false','����ʾ��ʤ�������Ƥ��ޤ���Ĥ˥������뤷�ޤ�����<br />true: �ĥ�������<br />false: ����������<br />������� = false',6,27,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(571,'����ʾ��ʤ�������Ƥ��ޤ� - �۴ĥ�������','MODULE_CAROUSEL_UI_CONF_CIRCULAR_ALSO_PURCHASED_PRODUCTS','true','����ʾ��ʤ�������Ƥ��ޤ���۴�Ū�˥������뤷�ޤ�����<br />true: �۴ĥ�������<br />false: ������������<br />������� = true',6,28,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(572,'����ʾ��ʤ�������Ƥ��ޤ� - �������륨�ꥢɽ�����','MODULE_CAROUSEL_UI_CONF_VISIBLE_ALSO_PURCHASED_PRODUCTS','3','����ʾ��ʤ�������Ƥ��ޤ��Υ������륨�ꥢ��ɽ�������������ꤷ�ޤ���<br />������� = 3',6,29,NULL,'2009-11-19 12:53:57',NULL,NULL),(573,'����ʾ��ʤ�������Ƥ��ޤ� - ����������','MODULE_CAROUSEL_UI_CONF_SCROLL_ALSO_PURCHASED_PRODUCTS','1','����ʾ��ʤ�������Ƥ��ޤ��ΰ��٤˥������뤵�����������ꤷ�ޤ���<br />������� = 1',6,30,NULL,'2009-11-19 12:53:57',NULL,NULL),(574,'��Ϣ���� - ����ɽ�����','MODULE_CAROUSEL_UI_MAX_DISPLAY_XSELL_PRODUCTS','4','��Ϣ���ʤκ���ɽ����������ꤷ�ޤ���<br />������� = 4',6,31,NULL,'2009-11-19 12:53:57',NULL,NULL),(575,'��Ϣ���� - ��ư��������','MODULE_CAROUSEL_UI_CONF_AUTO_XSELL_PRODUCTS','0','��Ϣ���ʤ�ưŪ�˥������뤹����δֳ�(�ߥ���)�����ꤷ�ޤ���<br />0�ߥ��äξ��ϼ�ư�������뤷�ޤ���<br />������� = 0',6,32,NULL,'2009-11-19 12:53:57',NULL,NULL),(576,'��Ϣ���� - ��������®��','MODULE_CAROUSEL_UI_CONF_SPEED_XSELL_PRODUCTS','200','��Ϣ���ʤ򥹥����뤹��®��(�ߥ���)�����ꤷ�ޤ���<br />�����ͤ��礭������Ȥ�ä��ꥹ�����뤷�ޤ���0�����ꤹ��ȥ������뤷�ʤ��ʤ�ޤ���<br />������� = 200',6,33,NULL,'2009-11-19 12:53:57',NULL,NULL),(577,'��Ϣ���� - �ĥ�������','MODULE_CAROUSEL_UI_CONF_VERTICAL_XSELL_PRODUCTS','false','��Ϣ���ʤ�Ĥ˥������뤷�ޤ�����<br />true: �ĥ�������<br />false: ����������<br />������� = false',6,34,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(578,'��Ϣ���� - �۴ĥ�������','MODULE_CAROUSEL_UI_CONF_CIRCULAR_XSELL_PRODUCTS','true','��Ϣ���ʤ�۴�Ū�˥������뤷�ޤ�����<br />true: �۴ĥ�������<br />false: ������������<br />������� = true',6,35,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(579,'��Ϣ���� - �������륨�ꥢɽ�����','MODULE_CAROUSEL_UI_CONF_VISIBLE_XSELL_PRODUCTS','3','��Ϣ���ʤΥ������륨�ꥢ��ɽ�������������ꤷ�ޤ���<br />������� = 3',6,36,NULL,'2009-11-19 12:53:57',NULL,NULL),(580,'��Ϣ���� - ����������','MODULE_CAROUSEL_UI_CONF_SCROLL_XSELL_PRODUCTS','1','��Ϣ���ʤΰ��٤˥������뤵�����������ꤷ�ޤ���<br />������� = 1',6,37,NULL,'2009-11-19 12:53:57',NULL,NULL),(581,'���ƥ��ꥵ���ȥޥåפ�ͭ����','MODULE_ADDON_MODULES_CATEGORY_SITEMAP_STATUS','true','���ƥ��ꥵ���ȥޥå�ɽ����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:54:42',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(582,'ɽ�����륫�ƥ���ο���','MODULE_ADDON_MODULES_CATEGORY_SITEMAP_TREE_LEVEL','2','ɽ�����륫�ƥ���ο�������ꤷ�ޤ��ʥǥե����=2��',6,1,NULL,'2009-11-19 12:54:42',NULL,NULL),(583,'ͥ���','MODULE_ADDON_MODULES_CATEGORY_SITEMAP_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,2,NULL,'2009-11-19 12:54:42',NULL,NULL),(584,'��ʸ���ƥå�ɽ����ͭ����','MODULE_CHECKOUT_STEP_STATUS','true','��ʸ���ƥå�ɽ����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:56:18',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(585,'ͥ���','MODULE_CHECKOUT_STEP_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 12:56:18',NULL,NULL),(586,'������˥塼�������ͭ����','MODULE_EASY_ADMIN_STATUS','true','������˥塼�������ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:56:42',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(587,'ͥ���','MODULE_EASY_ADMIN_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 12:56:42',NULL,NULL),(588,'������˥塼�������ͭ����','MODULE_EASY_ADMIN_SIMPLIFY_STATUS','true','������˥塼�������ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:59:21',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(589,'ͥ���','MODULE_EASY_ADMIN_SIMPLIFY_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 12:59:21',NULL,NULL),(590,'�ǥ�����������ͭ����','MODULE_EASY_DESIGN_STATUS','true','�ǥ�����������ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:59:53',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(591,'ͥ���','MODULE_EASY_DESIGN_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 12:59:53',NULL,NULL),(592,'�᡼��ƥ�ץ졼�Ȥ�ͭ����','MODULE_EMAIL_TEMPLATES_STATUS','false','�᡼��ƥ�ץ졼�Ȥ�ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:01:34',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(593,'ͥ���','MODULE_EMAIL_TEMPLATES_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 13:01:34',NULL,NULL),(594,'�ե������㡼���ꥢUI��ͭ����','MODULE_FEATURE_AREA_STATUS','true','�ե������㡼���ꥢUI��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:02:18',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(595,'ͥ���','MODULE_FEATURE_AREA_SORT_ORDER','10','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 13:02:18',NULL,NULL),(596,'����ͥ��� - ��ư�������� ','MODULE_FEATURE_AREA_UI_CONF_AUTO','6200','����ͥ����ưŪ�˥������뤹����δֳ�(�ߥ���)�����ꤷ�ޤ���<br />0�ߥ��äξ��ϼ�ư�������뤷�ޤ���<br />������� = 6200',6,2,NULL,'2009-11-19 13:02:18',NULL,NULL),(597,'����ͥ��� - ��������®��','MODULE_FEATURE_AREA_UI_CONF_SPEED','800','����ͥ���򥹥����뤹��®��(�ߥ���)�����ꤷ�ޤ���<br />�����ͤ��礭������Ȥ�ä��ꥹ�����뤷�ޤ���0�����ꤹ��ȥ������뤷�ʤ��ʤ�ޤ���<br />������� = 800',6,3,NULL,'2009-11-19 13:02:18',NULL,NULL),(598,'����ͥ��� - �������륨�ꥢɽ�����','MODULE_FEATURE_AREA_UI_CONF_VISIBLE','5','����ͥ���Υ������륨�ꥢ��ɽ�������������ꤷ�ޤ���<br />������� = 5',6,4,NULL,'2009-11-19 13:02:18',NULL,NULL),(599,'�����Х�ʥӥ֥�å���ͭ����','MODULE_GLOBALNAVI_STATUS','true','�����Х�ʥӤ�ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:03:12',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(600,'ͥ���','MODULE_GLOBALNAVI_SORT_ORDER','1950','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 13:03:12',NULL,NULL),(601,'ɽ�����륫�ƥ���ξ��','MODULE_GLOBALNAVI_CFG_LIMIT','5','�����Х�ʥӤ�ɽ�����륫�ƥ�����ξ�¤����ꤷ�ޤ�',6,2,NULL,'2009-11-19 13:03:12',NULL,NULL),(602,'ʣ������ɽ�� ��ͭ����','MODULE_MULTIPLE_IMAGE_VIEW_STATUS','true','ʣ������ɽ����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:03:54',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(603,'ͥ���','MODULE_MULTIPLE_IMAGE_VIEW_SORT_ORDER','10','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 13:03:54',NULL,NULL),(604,'����ͥ��륵��������','MODULE_MULTIPLE_IMAGE_VIEW_THMB_WIDTH','100','����ͥ��������ɽ����������Ǥ��ޤ���(pixel)',6,2,NULL,'2009-11-19 13:03:54',NULL,NULL),(605,'����ͥ��륵�������⤵','MODULE_MULTIPLE_IMAGE_VIEW_THMB_HEIGHT','80','����ͥ��������ɽ���⤵������Ǥ��ޤ���(pixel)',6,3,NULL,'2009-11-19 13:03:54',NULL,NULL),(606,'CSV�ˤ�뾦�ʰ����Ͽ��ͭ����','MODULE_PRODUCT_CSV_STATUS','true','CSV�ˤ�뾦�ʰ����Ͽ��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:04:30',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(607,'ͥ���','MODULE_PRODUCT_CSV_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 13:04:30',NULL,NULL),(608,'���ץ������κ߸˴�����ͭ����','MODULE_PRODUCTS_WITH_ATTRIBUTES_STOCK_STATUS','true','���ץ������κ߸˴�����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:05:03',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(609,'ͥ���','MODULE_PRODUCTS_WITH_ATTRIBUTES_STOCK_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 13:05:03',NULL,NULL),(610,'���ʥ�ӥ塼��ͭ����','MODULE_REVIEWS_STATUS','true','���ʥ�ӥ塼��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:05:33',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(611,'���ʾܺ٥ڡ�������ӥ塼ɽ����','MODULE_REVIEWS_MAX_DISPLAY_NEW_REVIEWS','3','���ʾܺ٥ڡ�����ɽ������뾦�ʥ�ӥ塼�ο������ꤷ�Ƥ���������<br />���ʥ�ӥ塼�����ڡ����Υ�ӥ塼���ϡְ��������-�ֺ����ͤ������-�ֿ�������ӥ塼��ɽ���������͡פ����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 13:05:33',NULL,NULL),(612,'�������桼�����ξ��ʥ�ӥ塼�����ػ�','MODULE_REVIEWS_LIST_DISPLAY_FORCE_LOGIN','false','�����󤷤Ƥ��ʤ��桼�����Ͼ��ʥ�ӥ塼�������Ǥ��ʤ���',6,2,NULL,'2009-11-19 13:05:33',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(613,'ͥ���','MODULE_REVIEWS_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,3,NULL,'2009-11-19 13:05:33',NULL,NULL),(614,'��äȸ�����ͭ����','MODULE_SEARCH_MORE_STATUS','true','��äȸ�����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:06:01',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),'),(615,'ɽ������ꥹ�ȥܥå����Υ����ȥ�','MODULE_SEARCH_MORE_PAGE_MAX_LIST_NAME','ɽ�����','���ʰ��������ɽ������뾦�ʤο�����ꤹ��ꥹ�ȤΥ�٥����ꤷ�Ƥ����������ǥե�����ͤϡ�ɽ������פǤ���',6,1,NULL,'2009-11-19 13:06:01',NULL,NULL),(616,'ɽ������ꥹ�ȥܥå�������','MODULE_SEARCH_MORE_PAGE_MAX_LIST_VALUE','10,25,50,100','���ʰ��������ɽ������뾦�ʤο�����ꤹ��ꥹ�Ȥ����Ƥ򥫥��(,)���ڤ�ǻ��ꤷ�Ƥ����������ǥե�����ͤϡ�10,25,50,100�פǤ���',6,2,NULL,'2009-11-19 13:06:01',NULL,NULL),(617,'�¤��ؤ��ꥹ�ȥܥå����Υ����ȥ�','MODULE_SEARCH_MORE_SORT_LIST_NAME','�¤��ؤ�','���ʰ����Υ����Ƚ����ꤹ��ꥹ�ȤΥ�٥����ꤷ�Ƥ����������ǥե�����ͤϡ��¤��ؤ��פǤ���',6,3,NULL,'2009-11-19 13:06:01',NULL,NULL),(618,'ͥ���','MODULE_SEARCH_MORE_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,4,NULL,'2009-11-19 13:06:01',NULL,NULL),(619,'�ӥ������⥸�塼���ͭ����','MODULE_VISITORS_STATUS','true','�ӥ������⥸�塼���ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:06:28',NULL,'zen_cfg_select_option(array(\'true\'), '),(620,'�ӥ������θܵҥǡ�������¸���Ƥ�������','MODULE_VISITORS_CUSTOMERS_DATA_KEEP_DAYS','10','�ӥ������θܵҥǡ������ʹ��������鲿������¸���뤫�����ꤷ�ޤ������ꤷ��������Ķ����ȼ�ưŪ�˥ӥ������θܵҥǡ������ǡ����١�������������ޤ�����ư������ʤ����϶���ˤ��ޤ���<br />������� = 10',6,1,NULL,'2009-11-19 13:06:28',NULL,NULL),(621,'ͥ���','MODULE_VISITORS_SORT_ORDER','0','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,2,NULL,'2009-11-19 13:06:28',NULL,NULL),(622,'�ݥ���ȥ⥸�塼���ͭ����<br />ͭ�����θ��<a href=\"http://zen-cart.ark-web.jp/ohtsuji/zencart-sugu/admin/addon_modules_admin.php?module=addon_modules/blocks\">�֥�å�������</a>����ָ��ߤΥݥ���Ȼĳۡץ֥�å���ɽ������򤷤Ƥ���������','MODULE_POINT_BASE_STATUS','true','�ݥ���Ȥ�ͭ���ˤ��ޤ����� (�ݥ���ȥ⥸�塼���¾�����ƤΥݥ���ȥ⥸�塼��ˤȤä�ɬ�ܤǤ�)<br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 18:25:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(623,'�ݥ����ñ��̾��','MODULE_POINT_BASE_POINT_SYMBOL','point','�ݥ���Ȥ�ñ��̾�Τ����Ϥ��Ƥ���������<br />������� = point',6,1,NULL,'2009-11-19 18:25:40',NULL,NULL),(624,'�ݥ���ȴ����ڡ�����ɽ������ݥ��������κ�����','MODULE_POINT_BASE_MAX_DISPLAY_SEARCH_RESULTS_POINTS','20','�ݥ���ȴ����ڡ�����ɽ������ݥ��������κ����ͤ����ꤷ�Ƥ���������<br />������� = 20',6,2,NULL,'2009-11-19 18:25:40',NULL,NULL),(625,'ͥ���','MODULE_POINT_BASE_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,3,NULL,'2009-11-19 18:25:40',NULL,NULL),(626,'�����ݥ���ȥ⥸�塼���ͭ����','MODULE_ORDER_TOTAL_ADDPOINT_STATUS','true','�����ݥ���ȥ⥸�塼���ͭ���ˤ��ޤ�����<br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 18:25:54',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(627,'�����ݥ���ȴԸ�Ψ','MODULE_ORDER_TOTAL_ADDPOINT_RATE','1','���ʹ�����ۤ��Ф��ƤΥݥ���ȴԸ�Ψ��ѡ�����Ȥ����ꤷ�ޤ���<br />��: 1 (1% - ���ʹ������100�ߤ�1�ݥ���ȴԸ�)',6,1,NULL,'2009-11-19 18:25:54',NULL,NULL),(628,'�����ݥ���Ȥ���Ѳ�ǽ�ˤ�����ʸ���ơ�����','MODULE_ORDER_TOTAL_ADDPOINT_DEPOSIT_ORDER_STATUS_ID','0','���ꤷ����ʸ���ơ������˹������줿���˹����ݥ���Ȥ���Ѳ�ǽ�ˤ��ޤ���',6,2,NULL,'2009-11-19 18:25:54','zen_get_order_status_name','zen_cfg_pull_down_order_statuses('),(629,'�����ݥ���Ȥ��ä���ʸ���ơ�����','MODULE_ORDER_TOTAL_ADDPOINT_CANCEL_ORDER_STATUS_ID','0','���ꤷ����ʸ���ơ������˹������줿���˹����ݥ���Ȥ���ä��ޤ���',6,3,NULL,'2009-11-19 18:25:54','zen_get_order_status_name','zen_cfg_pull_down_order_statuses('),(630,'ɽ���������','MODULE_ORDER_TOTAL_ADDPOINT_SORT_ORDER','1100','ɽ��������������Ǥ��ޤ�. �������������ۤɾ�̤�ɽ������ޤ���',6,4,NULL,'2009-11-19 18:25:54',NULL,NULL),(631,'���ѥݥ���ȥ⥸�塼���ͭ����','MODULE_ORDER_TOTAL_SUBPOINT_STATUS','true','���ѥݥ���ȥ⥸�塼���ͭ���ˤ��ޤ�����<br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 18:26:12',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(632,'������ޤ��','MODULE_ORDER_TOTAL_SUBPOINT_INC_SHIPPING','true','������׻��˴ޤ�ޤ�����',6,1,NULL,'2009-11-19 18:26:12',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(633,'�Ƕ��ޤ��','MODULE_ORDER_TOTAL_SUBPOINT_INC_TAX','true','�Ƕ��׻��˴ޤ�ޤ�����',6,2,NULL,'2009-11-19 18:26:12',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(634,'�Ƕ��Ʒ׻�����','MODULE_ORDER_TOTAL_SUBPOINT_CALC_TAX','None','�Ƕ��Ʒ׻����ޤ�����',6,3,NULL,'2009-11-19 18:26:12',NULL,'zen_cfg_select_option(array(\'None\', \'Standard\', \'Credit Note\'), '),(635,'�Ǽ���','MODULE_ORDER_TOTAL_SUBPOINT_TAX_CLASS','0','�ݥ���Ȥ�Ŭ�Ѥ�����Ǽ���',6,4,NULL,'2009-11-19 18:26:12','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes('),(636,'�ݥ���Ȥ��Ƕ���ղä���','MODULE_ORDER_TOTAL_SUBPOINT_CREDIT_TAX','false','�ݥ���ȹ��������Ƕ���ղä��ޤ�����',6,5,NULL,'2009-11-19 18:26:12',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(637,'��ʸ���ơ�����','MODULE_ORDER_TOTAL_SUBPOINT_ORDER_STATUS_ID','0','�ݥ���Ȥ����ۻ�ʧ����Ԥä�������ʸ���ơ����������ꤷ�ޤ���',6,6,NULL,'2009-11-19 18:26:12','zen_get_order_status_name','zen_cfg_pull_down_order_statuses('),(638,'���ѥݥ���Ȥ��ä���ʸ���ơ�����','MODULE_ORDER_TOTAL_SUBPOINT_CANCEL_ORDER_STATUS_ID','0','���ꤷ����ʸ���ơ������˹������줿���˻��ѥݥ���Ȥ���ä��ޤ���',6,7,NULL,'2009-11-19 18:26:12','zen_get_order_status_name','zen_cfg_pull_down_order_statuses('),(639,'ɽ���������','MODULE_ORDER_TOTAL_SUBPOINT_SORT_ORDER','860','ɽ��������������Ǥ��ޤ�. �������������ۤɾ�̤�ɽ������ޤ���',6,8,NULL,'2009-11-19 18:26:12',NULL,NULL),(640,'�����Ͽ�ݥ����ȯ�ԥ⥸�塼���ͭ����','MODULE_POINT_CREATEACCOUNT_STATUS','true','�����Ͽ�ݥ����ȯ�ԥ⥸�塼���ͭ���ˤ��ޤ�����<br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 18:56:07',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(641,'ȯ�ԥݥ���Ȥ���α','MODULE_POINT_CREATEACCOUNT_PENDING','false','�ݥ����ȯ�Ի��ˤ��Υݥ���Ȥλ��Ѥ���α�ˤ��ޤ�����<br />��α���ʤ����ϥݥ����ȯ�Ը夹���˻��ѤǤ��ޤ���<br />true: ��α�ˤ���<br />false: ��α�ˤ��ʤ���¨�����Ѳ�ǽ��',6,1,NULL,'2009-11-19 18:56:07',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(642,'�����Ͽ�ݥ���ȿ�','MODULE_POINT_CREATEACCOUNT_POINT','','�����Ͽ���ˤ��β���إץ쥼��Ȥ���ݥ���ȿ������ꤷ�ޤ���<br />��: 500 (�����Ͽ����500�ݥ���ȥץ쥼���)',6,2,NULL,'2009-11-19 18:56:07',NULL,NULL),(643,'ͥ���','MODULE_POINT_CREATEACCOUNT_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,3,NULL,'2009-11-19 18:56:07',NULL,NULL),(644,'�ܵ���ݥ���ȴԸ�Ψ����⥸�塼���ͭ����','MODULE_POINT_CUSTOMERSRATE_STATUS','true','�ܵ���ݥ���ȴԸ�Ψ�����ͭ���ˤ��ޤ�����<br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 18:56:29',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(645,'ͥ���','MODULE_POINT_CUSTOMERSRATE_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 18:56:29',NULL,NULL),(646,'�ܵҥ��롼����ݥ���ȴԸ�Ψ����⥸�塼���ͭ����','MODULE_POINT_GROUPRATE_STATUS','true','�ܵҥ��롼����ݥ���ȴԸ�Ψ�����ͭ���ˤ��ޤ�����<br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 18:56:53',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(647,'ͥ���','MODULE_POINT_GROUPRATE_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 18:56:53',NULL,NULL),(648,'������ݥ���ȴԸ�Ψ����⥸�塼���ͭ����','MODULE_POINT_PRODUCTSRATE_STATUS','true','������ݥ���ȴԸ�Ψ�����ͭ���ˤ��ޤ�����<br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 18:57:28',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(649,'ͥ���','MODULE_POINT_PRODUCTSRATE_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 18:57:28',NULL,NULL),(650,'����åԥ󥰥����ȥ��ޥ꡼�֥�å���ͭ����','MODULE_SHOPPING_CART_SUMMARY_STATUS','true','����åԥ󥰥����ȥ��ޥ꡼�֥�å���ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 19:37:35',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), '),(651,'ͥ���','MODULE_SHOPPING_CART_SUMMARY_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 19:37:35',NULL,NULL);
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_foreach_template`
--

DROP TABLE IF EXISTS `configuration_foreach_template`;
CREATE TABLE `configuration_foreach_template` (
  `configuration_id` int(11) NOT NULL auto_increment,
  `configuration_title` text NOT NULL,
  `configuration_key` varchar(255) NOT NULL default '',
  `configuration_value` text NOT NULL,
  `configuration_description` text NOT NULL,
  `configuration_group_id` int(11) NOT NULL default '0',
  `template_dir` varchar(64) NOT NULL default '',
  `sort_order` int(5) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `use_function` text,
  `set_function` text,
  PRIMARY KEY  (`configuration_id`),
  UNIQUE KEY `unq_config_key_zen` (`template_dir`,`configuration_key`),
  KEY `idx_key_value_zen` (`configuration_key`,`configuration_value`(10)),
  KEY `idx_cfg_grp_id_zen` (`configuration_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `configuration_foreach_template`
--

LOCK TABLES `configuration_foreach_template` WRITE;
/*!40000 ALTER TABLE `configuration_foreach_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_foreach_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_group`
--

DROP TABLE IF EXISTS `configuration_group`;
CREATE TABLE `configuration_group` (
  `configuration_group_id` int(11) NOT NULL auto_increment,
  `configuration_group_title` varchar(64) NOT NULL default '',
  `configuration_group_description` varchar(255) NOT NULL default '',
  `sort_order` int(5) default NULL,
  `visible` int(1) default '1',
  PRIMARY KEY  (`configuration_group_id`),
  KEY `idx_visible_zen` (`visible`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `configuration_group`
--

LOCK TABLES `configuration_group` WRITE;
/*!40000 ALTER TABLE `configuration_group` DISABLE KEYS */;
INSERT INTO `configuration_group` VALUES (1,'����å����̤�����','����åפΰ���Ū�ʹ��ܤ����ꤷ�ޤ���',1,1),(2,'�Ǿ��ͤ�����','��ǽ���ǡ�����κǾ�(��)�ͤˤĤ������ꤷ�ޤ���',2,1),(3,'�����ͤ�����','��ǽ���ǡ�����κ����ͤˤĤ������ꤷ�ޤ���',3,1),(4,'����������','�Ƽ�β����ˤĤ������ꤷ�ޤ���',4,1),(5,'�ܵҥ�������Ȥ�����','�ܵҤˤĤ��ƳƼ������򤷤ޤ���',5,1),(6,'�⥸�塼�������','(������̤Ǥϱ���Ƥ��ޤ�)',6,0),(7,'���������ѥå�����������','�Ҿ������ѥå�����(����)�ˤĤ��ƳƼ������򤷤ޤ���',7,1),(8,'���ʥꥹ�Ȥ�����','���ʥꥹ�Ȥ�ɽ���ˤĤ��ƳƼ������򤷤ޤ���',8,1),(9,'�߸ˤ�����','�߸ˤˤĤ��ƳƼ������򤷤ޤ���',9,1),(10,'��������','���ˤĤ��ƳƼ������򤷤ޤ���',10,1),(11,'�����Ϣ������','����ˤĤ��ƳƼ������򤷤ޤ���',16,1),(12,'�᡼�������','�᡼�����������񼰤ˤĤ��ƳƼ������򤷤ޤ���',12,1),(13,'����°��������','����°���ˤĤ��ƳƼ������򤷤ޤ���',13,1),(14,'GZip���̤�����','GZip���̤ˤĤ������ꤷ�ޤ���',14,1),(15,'���å�������������','���å�������δ����ˤĤ��ƳƼ������򤷤ޤ���',15,1),(16,'���եȷ��������ݥ��������','���եȷ��������ݥ���ˤĤ��ƳƼ������򤷤ޤ���',16,1),(17,'���쥸�åȥ����ɤ�����','���쥸�åȥ����ɤˤĤ��ƳƼ������򤷤ޤ���',17,1),(18,'���ʾ��������','���ʾ����ɽ���ˤĤ��ƳƼ������򤷤ޤ���',18,1),(19,'�쥤�����Ȥ�����','����åפ�ɽ���쥤�����ȤˤĤ��ƳƼ������򤷤ޤ���',19,1),(20,'���ƥʥ�ɽ��������','�֥��ƥʥ����ɽ���ʤɤˤĤ��ƳƼ������򤷤ޤ���',20,1),(21,'���徦�ʥꥹ�Ȥ�����','���徦�ʥꥹ�ȤˤĤ��ƳƼ������򤷤ޤ���',21,1),(22,'�������ᾦ�ʥꥹ�Ȥ�����','�������ᾦ�ʥꥹ�ȤˤĤ��ƳƼ������򤷤ޤ���',22,1),(23,'�����ʥꥹ�Ȥ�����','�����ʥꥹ�ȤˤĤ��ƳƼ������򤷤ޤ���',23,1),(24,'�ȥåץڡ�����ɽ������','�ȥåץڡ���������ɽ���ˤĤ��ƳƼ������򤷤ޤ���',24,1),(25,'���֥ڡ�����ɽ������','���֥ڡ�����HTMLArea�ʤɤˤĤ��ƳƼ������򤷤ޤ���',25,1),(30,'EZ-Pages������','EZ�ڡ����ˤĤ��ƳƼ������򤷤ޤ���',30,1),(100,'���ӥ����Ȥδ���','���ӥ����ȤˤĤ��ƳƼ������򤷤ޤ���',100,1);
/*!40000 ALTER TABLE `configuration_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `startdate` char(8) default NULL,
  `counter` int(12) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES ('20091119',51);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter_history`
--

DROP TABLE IF EXISTS `counter_history`;
CREATE TABLE `counter_history` (
  `startdate` char(8) default NULL,
  `counter` int(12) default NULL,
  `session_counter` int(12) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `counter_history`
--

LOCK TABLES `counter_history` WRITE;
/*!40000 ALTER TABLE `counter_history` DISABLE KEYS */;
INSERT INTO `counter_history` VALUES ('20091119',51,8);
/*!40000 ALTER TABLE `counter_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL auto_increment,
  `countries_name` varchar(64) NOT NULL default '',
  `countries_iso_code_2` varchar(2) NOT NULL default '',
  `countries_iso_code_3` varchar(3) NOT NULL default '',
  `address_format_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`countries_id`),
  KEY `idx_countries_name_zen` (`countries_name`)
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (240,'Aaland Islands','AX','ALA',1),(1,'Afghanistan','AF','AFG',1),(2,'Albania','AL','ALB',1),(3,'Algeria','DZ','DZA',1),(4,'American Samoa','AS','ASM',1),(5,'Andorra','AD','AND',1),(6,'Angola','AO','AGO',1),(7,'Anguilla','AI','AIA',1),(8,'Antarctica','AQ','ATA',1),(9,'Antigua and Barbuda','AG','ATG',1),(10,'Argentina','AR','ARG',1),(11,'Armenia','AM','ARM',1),(12,'Aruba','AW','ABW',1),(13,'Australia','AU','AUS',1),(14,'Austria','AT','AUT',5),(15,'Azerbaijan','AZ','AZE',1),(16,'Bahamas','BS','BHS',1),(17,'Bahrain','BH','BHR',1),(18,'Bangladesh','BD','BGD',1),(19,'Barbados','BB','BRB',1),(20,'Belarus','BY','BLR',1),(21,'Belgium','BE','BEL',1),(22,'Belize','BZ','BLZ',1),(23,'Benin','BJ','BEN',1),(24,'Bermuda','BM','BMU',1),(25,'Bhutan','BT','BTN',1),(26,'Bolivia','BO','BOL',1),(27,'Bosnia and Herzegowina','BA','BIH',1),(28,'Botswana','BW','BWA',1),(29,'Bouvet Island','BV','BVT',1),(30,'Brazil','BR','BRA',1),(31,'British Indian Ocean Territory','IO','IOT',1),(32,'Brunei Darussalam','BN','BRN',1),(33,'Bulgaria','BG','BGR',1),(34,'Burkina Faso','BF','BFA',1),(35,'Burundi','BI','BDI',1),(36,'Cambodia','KH','KHM',1),(37,'Cameroon','CM','CMR',1),(38,'Canada','CA','CAN',1),(39,'Cape Verde','CV','CPV',1),(40,'Cayman Islands','KY','CYM',1),(41,'Central African Republic','CF','CAF',1),(42,'Chad','TD','TCD',1),(43,'Chile','CL','CHL',1),(44,'China','CN','CHN',1),(45,'Christmas Island','CX','CXR',1),(46,'Cocos (Keeling) Islands','CC','CCK',1),(47,'Colombia','CO','COL',1),(48,'Comoros','KM','COM',1),(49,'Congo','CG','COG',1),(50,'Cook Islands','CK','COK',1),(51,'Costa Rica','CR','CRI',1),(52,'Cote D\'Ivoire','CI','CIV',1),(53,'Croatia','HR','HRV',1),(54,'Cuba','CU','CUB',1),(55,'Cyprus','CY','CYP',1),(56,'Czech Republic','CZ','CZE',1),(57,'Denmark','DK','DNK',1),(58,'Djibouti','DJ','DJI',1),(59,'Dominica','DM','DMA',1),(60,'Dominican Republic','DO','DOM',1),(61,'East Timor','TP','TMP',1),(62,'Ecuador','EC','ECU',1),(63,'Egypt','EG','EGY',1),(64,'El Salvador','SV','SLV',1),(65,'Equatorial Guinea','GQ','GNQ',1),(66,'Eritrea','ER','ERI',1),(67,'Estonia','EE','EST',1),(68,'Ethiopia','ET','ETH',1),(69,'Falkland Islands (Malvinas)','FK','FLK',1),(70,'Faroe Islands','FO','FRO',1),(71,'Fiji','FJ','FJI',1),(72,'Finland','FI','FIN',1),(73,'France','FR','FRA',1),(74,'France, Metropolitan','FX','FXX',1),(75,'French Guiana','GF','GUF',1),(76,'French Polynesia','PF','PYF',1),(77,'French Southern Territories','TF','ATF',1),(78,'Gabon','GA','GAB',1),(79,'Gambia','GM','GMB',1),(80,'Georgia','GE','GEO',1),(81,'Germany','DE','DEU',5),(82,'Ghana','GH','GHA',1),(83,'Gibraltar','GI','GIB',1),(84,'Greece','GR','GRC',1),(85,'Greenland','GL','GRL',1),(86,'Grenada','GD','GRD',1),(87,'Guadeloupe','GP','GLP',1),(88,'Guam','GU','GUM',1),(89,'Guatemala','GT','GTM',1),(90,'Guinea','GN','GIN',1),(91,'Guinea-bissau','GW','GNB',1),(92,'Guyana','GY','GUY',1),(93,'Haiti','HT','HTI',1),(94,'Heard and Mc Donald Islands','HM','HMD',1),(95,'Honduras','HN','HND',1),(96,'Hong Kong','HK','HKG',1),(97,'Hungary','HU','HUN',1),(98,'Iceland','IS','ISL',1),(99,'India','IN','IND',1),(100,'Indonesia','ID','IDN',1),(101,'Iran (Islamic Republic of)','IR','IRN',1),(102,'Iraq','IQ','IRQ',1),(103,'Ireland','IE','IRL',1),(104,'Israel','IL','ISR',1),(105,'Italy','IT','ITA',1),(106,'Jamaica','JM','JAM',1),(107,'Japan','JP','JPN',6),(108,'Jordan','JO','JOR',1),(109,'Kazakhstan','KZ','KAZ',1),(110,'Kenya','KE','KEN',1),(111,'Kiribati','KI','KIR',1),(112,'Korea, Democratic People\'s Republic of','KP','PRK',1),(113,'Korea, Republic of','KR','KOR',1),(114,'Kuwait','KW','KWT',1),(115,'Kyrgyzstan','KG','KGZ',1),(116,'Lao People\'s Democratic Republic','LA','LAO',1),(117,'Latvia','LV','LVA',1),(118,'Lebanon','LB','LBN',1),(119,'Lesotho','LS','LSO',1),(120,'Liberia','LR','LBR',1),(121,'Libyan Arab Jamahiriya','LY','LBY',1),(122,'Liechtenstein','LI','LIE',1),(123,'Lithuania','LT','LTU',1),(124,'Luxembourg','LU','LUX',1),(125,'Macau','MO','MAC',1),(126,'Macedonia, The Former Yugoslav Republic of','MK','MKD',1),(127,'Madagascar','MG','MDG',1),(128,'Malawi','MW','MWI',1),(129,'Malaysia','MY','MYS',1),(130,'Maldives','MV','MDV',1),(131,'Mali','ML','MLI',1),(132,'Malta','MT','MLT',1),(133,'Marshall Islands','MH','MHL',1),(134,'Martinique','MQ','MTQ',1),(135,'Mauritania','MR','MRT',1),(136,'Mauritius','MU','MUS',1),(137,'Mayotte','YT','MYT',1),(138,'Mexico','MX','MEX',1),(139,'Micronesia, Federated States of','FM','FSM',1),(140,'Moldova, Republic of','MD','MDA',1),(141,'Monaco','MC','MCO',1),(142,'Mongolia','MN','MNG',1),(143,'Montserrat','MS','MSR',1),(144,'Morocco','MA','MAR',1),(145,'Mozambique','MZ','MOZ',1),(146,'Myanmar','MM','MMR',1),(147,'Namibia','NA','NAM',1),(148,'Nauru','NR','NRU',1),(149,'Nepal','NP','NPL',1),(150,'Netherlands','NL','NLD',1),(151,'Netherlands Antilles','AN','ANT',1),(152,'New Caledonia','NC','NCL',1),(153,'New Zealand','NZ','NZL',1),(154,'Nicaragua','NI','NIC',1),(155,'Niger','NE','NER',1),(156,'Nigeria','NG','NGA',1),(157,'Niue','NU','NIU',1),(158,'Norfolk Island','NF','NFK',1),(159,'Northern Mariana Islands','MP','MNP',1),(160,'Norway','NO','NOR',1),(161,'Oman','OM','OMN',1),(162,'Pakistan','PK','PAK',1),(163,'Palau','PW','PLW',1),(164,'Panama','PA','PAN',1),(165,'Papua New Guinea','PG','PNG',1),(166,'Paraguay','PY','PRY',1),(167,'Peru','PE','PER',1),(168,'Philippines','PH','PHL',1),(169,'Pitcairn','PN','PCN',1),(170,'Poland','PL','POL',1),(171,'Portugal','PT','PRT',1),(172,'Puerto Rico','PR','PRI',1),(173,'Qatar','QA','QAT',1),(174,'Reunion','RE','REU',1),(175,'Romania','RO','ROM',1),(176,'Russian Federation','RU','RUS',1),(177,'Rwanda','RW','RWA',1),(178,'Saint Kitts and Nevis','KN','KNA',1),(179,'Saint Lucia','LC','LCA',1),(180,'Saint Vincent and the Grenadines','VC','VCT',1),(181,'Samoa','WS','WSM',1),(182,'San Marino','SM','SMR',1),(183,'Sao Tome and Principe','ST','STP',1),(184,'Saudi Arabia','SA','SAU',1),(185,'Senegal','SN','SEN',1),(186,'Seychelles','SC','SYC',1),(187,'Sierra Leone','SL','SLE',1),(188,'Singapore','SG','SGP',4),(189,'Slovakia (Slovak Republic)','SK','SVK',1),(190,'Slovenia','SI','SVN',1),(191,'Solomon Islands','SB','SLB',1),(192,'Somalia','SO','SOM',1),(193,'South Africa','ZA','ZAF',1),(194,'South Georgia and the South Sandwich Islands','GS','SGS',1),(195,'Spain','ES','ESP',3),(196,'Sri Lanka','LK','LKA',1),(197,'St. Helena','SH','SHN',1),(198,'St. Pierre and Miquelon','PM','SPM',1),(199,'Sudan','SD','SDN',1),(200,'Suriname','SR','SUR',1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM',1),(202,'Swaziland','SZ','SWZ',1),(203,'Sweden','SE','SWE',1),(204,'Switzerland','CH','CHE',1),(205,'Syrian Arab Republic','SY','SYR',1),(206,'Taiwan','TW','TWN',1),(207,'Tajikistan','TJ','TJK',1),(208,'Tanzania, United Republic of','TZ','TZA',1),(209,'Thailand','TH','THA',1),(210,'Togo','TG','TGO',1),(211,'Tokelau','TK','TKL',1),(212,'Tonga','TO','TON',1),(213,'Trinidad and Tobago','TT','TTO',1),(214,'Tunisia','TN','TUN',1),(215,'Turkey','TR','TUR',1),(216,'Turkmenistan','TM','TKM',1),(217,'Turks and Caicos Islands','TC','TCA',1),(218,'Tuvalu','TV','TUV',1),(219,'Uganda','UG','UGA',1),(220,'Ukraine','UA','UKR',1),(221,'United Arab Emirates','AE','ARE',1),(222,'United Kingdom','GB','GBR',1),(223,'United States','US','USA',2),(224,'United States Minor Outlying Islands','UM','UMI',1),(225,'Uruguay','UY','URY',1),(226,'Uzbekistan','UZ','UZB',1),(227,'Vanuatu','VU','VUT',1),(228,'Vatican City State (Holy See)','VA','VAT',1),(229,'Venezuela','VE','VEN',1),(230,'Viet Nam','VN','VNM',1),(231,'Virgin Islands (British)','VG','VGB',1),(232,'Virgin Islands (U.S.)','VI','VIR',1),(233,'Wallis and Futuna Islands','WF','WLF',1),(234,'Western Sahara','EH','ESH',1),(235,'Yemen','YE','YEM',1),(236,'Yugoslavia','YU','YUG',1),(237,'Zaire','ZR','ZAR',1),(238,'Zambia','ZM','ZMB',1),(239,'Zimbabwe','ZW','ZWE',1);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_email_track`
--

DROP TABLE IF EXISTS `coupon_email_track`;
CREATE TABLE `coupon_email_track` (
  `unique_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL default '0',
  `customer_id_sent` int(11) NOT NULL default '0',
  `sent_firstname` varchar(32) default NULL,
  `sent_lastname` varchar(32) default NULL,
  `emailed_to` varchar(32) default NULL,
  `date_sent` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_coupon_id_zen` (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `coupon_email_track`
--

LOCK TABLES `coupon_email_track` WRITE;
/*!40000 ALTER TABLE `coupon_email_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_email_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_gv_customer`
--

DROP TABLE IF EXISTS `coupon_gv_customer`;
CREATE TABLE `coupon_gv_customer` (
  `customer_id` int(5) NOT NULL default '0',
  `amount` decimal(20,4) NOT NULL default '0.0000',
  PRIMARY KEY  (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `coupon_gv_customer`
--

LOCK TABLES `coupon_gv_customer` WRITE;
/*!40000 ALTER TABLE `coupon_gv_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_gv_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_gv_queue`
--

DROP TABLE IF EXISTS `coupon_gv_queue`;
CREATE TABLE `coupon_gv_queue` (
  `unique_id` int(5) NOT NULL auto_increment,
  `customer_id` int(5) NOT NULL default '0',
  `order_id` int(5) NOT NULL default '0',
  `amount` decimal(20,4) NOT NULL default '0.0000',
  `date_created` datetime NOT NULL default '0001-01-01 00:00:00',
  `ipaddr` varchar(32) NOT NULL default '',
  `release_flag` char(1) NOT NULL default 'N',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_cust_id_order_id_zen` (`customer_id`,`order_id`),
  KEY `idx_release_flag_zen` (`release_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `coupon_gv_queue`
--

LOCK TABLES `coupon_gv_queue` WRITE;
/*!40000 ALTER TABLE `coupon_gv_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_gv_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_redeem_track`
--

DROP TABLE IF EXISTS `coupon_redeem_track`;
CREATE TABLE `coupon_redeem_track` (
  `unique_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL default '0',
  `customer_id` int(11) NOT NULL default '0',
  `redeem_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `redeem_ip` varchar(32) NOT NULL default '',
  `order_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_coupon_id_zen` (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `coupon_redeem_track`
--

LOCK TABLES `coupon_redeem_track` WRITE;
/*!40000 ALTER TABLE `coupon_redeem_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_redeem_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_restrict`
--

DROP TABLE IF EXISTS `coupon_restrict`;
CREATE TABLE `coupon_restrict` (
  `restrict_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL default '0',
  `coupon_restrict` char(1) NOT NULL default 'N',
  PRIMARY KEY  (`restrict_id`),
  KEY `idx_coup_id_prod_id_zen` (`coupon_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `coupon_restrict`
--

LOCK TABLES `coupon_restrict` WRITE;
/*!40000 ALTER TABLE `coupon_restrict` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_restrict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
  `coupon_id` int(11) NOT NULL auto_increment,
  `coupon_type` char(1) NOT NULL default 'F',
  `coupon_code` varchar(32) NOT NULL default '',
  `coupon_amount` decimal(8,4) NOT NULL default '0.0000',
  `coupon_minimum_order` decimal(8,4) NOT NULL default '0.0000',
  `coupon_start_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `coupon_expire_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `uses_per_coupon` int(5) NOT NULL default '1',
  `uses_per_user` int(5) NOT NULL default '0',
  `restrict_to_products` varchar(255) default NULL,
  `restrict_to_categories` varchar(255) default NULL,
  `restrict_to_customers` text,
  `coupon_active` char(1) NOT NULL default 'Y',
  `date_created` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`coupon_id`),
  KEY `idx_active_type_zen` (`coupon_active`,`coupon_type`),
  KEY `idx_coupon_code_zen` (`coupon_code`),
  KEY `idx_coupon_type_zen` (`coupon_type`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons_description`
--

DROP TABLE IF EXISTS `coupons_description`;
CREATE TABLE `coupons_description` (
  `coupon_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '0',
  `coupon_name` varchar(32) NOT NULL default '',
  `coupon_description` text,
  PRIMARY KEY  (`coupon_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `coupons_description`
--

LOCK TABLES `coupons_description` WRITE;
/*!40000 ALTER TABLE `coupons_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csv_columns`
--

DROP TABLE IF EXISTS `csv_columns`;
CREATE TABLE `csv_columns` (
  `csv_column_id` int(11) NOT NULL auto_increment,
  `csv_format_type_id` int(11) default NULL,
  `csv_column_name` varchar(255) default NULL,
  `csv_column_validate_function` text,
  `csv_columns_dbtable` varchar(255) default NULL,
  `csv_columns_dbcolumn` varchar(255) default NULL,
  PRIMARY KEY  (`csv_column_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3115 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `csv_columns`
--

LOCK TABLES `csv_columns` WRITE;
/*!40000 ALTER TABLE `csv_columns` DISABLE KEYS */;
INSERT INTO `csv_columns` VALUES (1001,1,'���ʥ�����','validateProductTypeExists','product_types','type_handler'),(1002,1,'�߸˿�','validateIsSignedFloat','products','products_quantity'),(1003,1,'����','validateIsString','products','products_model'),(1004,1,'���ʲ���̾','validateIsPathString','products','products_image'),(1005,1,'����','validateIsFloat','products','products_price'),(1006,1,'�������ץե饰','validateIsZeroOne','products','products_virtual'),(1007,1,'��Ͽ��','validateIsDatetimeLong','products','products_date_added'),(1008,1,'ȯ����','validateIsDatetimeLong','products','products_date_available'),(1009,1,'����(Kg)','validateIsFloat','products','products_weight'),(1010,1,'ɽ����ɽ���ե饰','validateIsZeroOne','products','products_status'),(1011,1,'�Ǽ���','validateTaxClassExists','tax_class','tax_class_title'),(1012,1,'�᡼����','validateIsString','manufacturers','manufacturers_name'),(1013,1,'���ʴ���ʸ��','validateIsInt','products','products_ordered'),(1014,1,'������ǽ�Ǿ��Ŀ�','validateIsInt','products','products_quantity_order_min'),(1015,1,'������ǽ����Ŀ�','validateIsInt','products','products_quantity_order_max'),(1016,1,'�����Ŀ�ñ��','validateIsInt','products','products_quantity_order_units'),(1017,1,'̵�����ʥե饰','validateIsZeroOne','products','product_is_free'),(1018,1,'���䤤��碌���ʥե饰','validateIsZeroOne','products','product_is_call'),(1019,1,'���ץ������ʤ�ޤ�ե饰','validateIsZeroOne','products','products_priced_by_attribute'),(1020,1,'�Ǿ����� ñ��MIX�ե饰','validateIsZeroOne','products','products_quantity_mixed'),(1021,1,'̵�������ե饰','validateIsZeroOne','products','product_is_always_free_shipping'),(1022,1,'����������ɽ���ե饰','validateIsZeroOne','products','products_qty_box_status'),(1023,1,'�¤ӽ�','validateIsSignedInt','products','products_sort_order'),(1100,1,'����̾(English):language_id=1','validateIsString','products_description','products_name'),(1101,1,'����̾(Japanese):language_id=2','validateIsString','products_description','products_name'),(1200,1,'��������(English):language_id=1','validateIsStringWithReturn','products_description','products_description'),(1201,1,'��������(Japanese):language_id=2','validateIsStringWithReturn','products_description','products_description'),(1300,1,'����URL(English):language_id=1','validateIsUrlString','products_description','products_url'),(1301,1,'����URL(Japanese):language_id=2','validateIsUrlString','products_description','products_url'),(1400,1,'�����ȥ�(English):language_id=1','validateIsString','meta_tags_products_description','metatags_title'),(1401,1,'�����ȥ�(Japanese):language_id=2','validateIsString','meta_tags_products_description','metatags_title'),(1500,1,'META�������(English):language_id=1','validateIsString','meta_tags_products_description','metatags_keywords'),(1501,1,'META�������(Japanese):language_id=2','validateIsString','meta_tags_products_description','metatags_keywords'),(1600,1,'META�ǥ�����ץ����(English):language_id=1','validateIsStringWithReturn','meta_tags_products_description','metatags_description'),(1601,1,'META�ǥ�����ץ����(Japanese):language_id=2','validateIsStringWithReturn','meta_tags_products_description','metatags_description'),(1700,1,'�������ᳫ����','validateIsDatetimeShort','featured','featured_date_available'),(1701,1,'�������Ὢλ��','validateIsDatetimeShort','featured','expires_date'),(1702,1,'�ò�����','validateIsFloat','specials','specials_new_products_price'),(1703,1,'�ò����ʳ�����','validateIsDatetimeShort','specials','specials_date_available'),(1704,1,'�ò����ʽ�λ��','validateIsDatetimeShort','specials','expires_date'),(1706,1,'���ʺ���ե饰','validateIsZeroOne','','delete'),(1707,1,'̵��','','','ignore'),(2000,2,'���ƥ���̾(English)-����1:language_id=1','validateIsString','categories_description','categories_name'),(2001,2,'���ƥ���̾(Japanese)-����1:language_id=2','validateIsString','categories_description','categories_name'),(2050,2,'���ƥ���̾(English)-����2:language_id=1','validateIsString','categories_description','categories_name'),(2051,2,'���ƥ���̾(Japanese)-����2:language_id=2','validateIsString','categories_description','categories_name'),(2100,2,'���ƥ���̾(English)-����3:language_id=1','validateIsString','categories_description','categories_name'),(2101,2,'���ƥ���̾(Japanese)-����3:language_id=2','validateIsString','categories_description','categories_name'),(2150,2,'���ƥ���̾(English)-����4:language_id=1','validateIsString','categories_description','categories_name'),(2151,2,'���ƥ���̾(Japanese)-����4:language_id=2','validateIsString','categories_description','categories_name'),(2200,2,'���ƥ���̾(English)-����5:language_id=1','validateIsString','categories_description','categories_name'),(2201,2,'���ƥ���̾(Japanese)-����5:language_id=2','validateIsString','categories_description','categories_name'),(2250,2,'���ƥ���̾(English)-����6:language_id=1','validateIsString','categories_description','categories_name'),(2251,2,'���ƥ���̾(Japanese)-����6:language_id=2','validateIsString','categories_description','categories_name'),(2300,2,'���ƥ���̾(English)-����7:language_id=1','validateIsString','categories_description','categories_name'),(2301,2,'���ƥ���̾(Japanese)-����7:language_id=2','validateIsString','categories_description','categories_name'),(2350,2,'���ƥ���̾(English)-����8:language_id=1','validateIsString','categories_description','categories_name'),(2351,2,'���ƥ���̾(Japanese)-����8:language_id=2','validateIsString','categories_description','categories_name'),(2400,2,'���ƥ���̾(English)-����9:language_id=1','validateIsString','categories_description','categories_name'),(2401,2,'���ƥ���̾(Japanese)-����9:language_id=2','validateIsString','categories_description','categories_name'),(2450,2,'���ƥ���̾(English)-����10:language_id=1','validateIsString','categories_description','categories_name'),(2451,2,'���ƥ���̾(Japanese)-����10:language_id=2','validateIsString','categories_description','categories_name'),(2500,2,'���ƥ�������(English):language_id=1','validateIsStringWithReturn','categories_description','categories_description'),(2501,2,'���ƥ�������(Japanese):language_id=2','validateIsStringWithReturn','categories_description','categories_description'),(2600,2,'���ƥ�������ե�����̾','validateIsPathString','categories','categories_image'),(2601,2,'���ƥ����¤ӽ�','validateIsSignedInt','categories','sort_order'),(2602,2,'���ƥ���ͭ��̵���ե饰','validateIsZeroOne','categories','categories_status'),(2603,2,'����','validateIsString','products','products_model'),(2650,2,'�����ȥ�(English):language_id=1','validateIsString','meta_tags_categories_description','metatags_title'),(2651,2,'�����ȥ�(Japanese):language_id=2','validateIsString','meta_tags_categories_description','metatags_title'),(2700,2,'META�������(English):language_id=1','validateIsString','meta_tags_categories_description','metatags_keywords'),(2701,2,'META�������(Japanese):language_id=2','validateIsString','meta_tags_categories_description','metatags_keywords'),(2750,2,'META�ǥ�����ץ����(English):language_id=1','validateIsStringWithReturn','meta_tags_categories_description','metatags_description'),(2751,2,'META�ǥ�����ץ����(Japanese):language_id=2','validateIsStringWithReturn','meta_tags_categories_description','metatags_description'),(2800,2,'���ƥ���ɳ�դ�����ե饰','validateIsZeroOne','','delete'),(2801,2,'̵��','','','ignore'),(3000,3,'���ץ����̾(English):language_id=1','validateIsNotReservedOptionName','products_options','products_options_name'),(3001,3,'���ץ����̾(Japanese):language_id=2','validateIsNotReservedOptionName','products_options','products_options_name'),(3050,3,'���ץ������(English):language_id=1','validateIsString','products_options_values','products_options_values_name'),(3051,3,'���ץ������(Japanese):language_id=2','validateIsString','products_options_values','products_options_values_name'),(3100,3,'����','validateIsString','products','products_model'),(3101,3,'����','validateIsFloat','products_attributes','options_values_price'),(3102,3,'��������','validateIsPlusMinus','products_attributes','price_prefix'),(3103,3,'�¤ӽ�','validateIsSignedInt','products_attributes','products_options_sort_order'),(3104,3,'̵���ե饰','validateIsZeroOne','products_attributes','product_attribute_is_free'),(3105,3,'����','validateIsFloat','products_attributes','products_attributes_weight'),(3106,3,'��������','validateIsPlusMinus','products_attributes','products_attributes_weight_prefix'),(3107,3,'ɽ���Τߥե饰','validateIsZeroOne','products_attributes','attributes_display_only'),(3108,3,'�ǥե���ȥե饰','validateIsZeroOne','products_attributes','attributes_default'),(3109,3,'���ʳ��Ŭ�ѥե饰','validateIsZeroOne','products_attributes','attributes_discounted'),(3110,3,'���ץ������ʹ绻�ե饰','validateIsZeroOne','products_attributes','attributes_price_base_included'),(3111,3,'�����ե�����̾','validateIsPathString','products_attributes','attributes_image'),(3112,3,'ɬ�ܥե饰','validateIsZeroOne','products_attributes','attributes_required'),(3113,3,'���ץ����ɳ�դ�����ե饰','validateIsZeroOne','','delete'),(3114,3,'̵��','','','ignore');
/*!40000 ALTER TABLE `csv_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csv_format_columns`
--

DROP TABLE IF EXISTS `csv_format_columns`;
CREATE TABLE `csv_format_columns` (
  `csv_format_column_id` int(11) NOT NULL auto_increment,
  `csv_format_id` int(11) default NULL,
  `csv_column_id` int(11) default NULL,
  `csv_format_column_number` int(11) default NULL,
  PRIMARY KEY  (`csv_format_column_id`),
  KEY `idx_csv_format_columns_zen` (`csv_format_id`,`csv_format_column_number`,`csv_column_id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `csv_format_columns`
--

LOCK TABLES `csv_format_columns` WRITE;
/*!40000 ALTER TABLE `csv_format_columns` DISABLE KEYS */;
INSERT INTO `csv_format_columns` VALUES (1,1,1001,1),(2,1,1002,2),(3,1,1003,3),(4,1,1004,4),(5,1,1005,5),(6,1,1006,6),(7,1,1007,7),(8,1,1008,8),(9,1,1009,9),(10,1,1010,10),(11,1,1011,11),(12,1,1012,12),(13,1,1013,13),(14,1,1014,14),(15,1,1015,15),(16,1,1016,16),(17,1,1017,17),(18,1,1018,18),(19,1,1019,19),(20,1,1020,20),(21,1,1021,21),(22,1,1022,22),(23,1,1023,23),(24,1,1100,24),(25,1,1101,25),(26,1,1200,26),(27,1,1201,27),(28,1,1300,28),(29,1,1301,29),(30,1,1400,30),(31,1,1401,31),(32,1,1500,32),(33,1,1501,33),(34,1,1600,34),(35,1,1601,35),(36,1,1700,36),(37,1,1701,37),(38,1,1702,38),(39,1,1703,39),(40,1,1704,40),(41,1,1706,41),(42,1,1707,42),(43,2,2000,1),(44,2,2001,2),(45,2,2050,3),(46,2,2051,4),(47,2,2100,5),(48,2,2101,6),(49,2,2150,7),(50,2,2151,8),(51,2,2200,9),(52,2,2201,10),(53,2,2250,11),(54,2,2251,12),(55,2,2300,13),(56,2,2301,14),(57,2,2350,15),(58,2,2351,16),(59,2,2400,17),(60,2,2401,18),(61,2,2450,19),(62,2,2451,20),(63,2,2500,21),(64,2,2501,22),(65,2,2600,23),(66,2,2601,24),(67,2,2602,25),(68,2,2603,26),(69,2,2650,27),(70,2,2651,28),(71,2,2700,29),(72,2,2701,30),(73,2,2750,31),(74,2,2751,32),(75,2,2800,33),(76,2,2801,34),(77,3,3000,1),(78,3,3001,2),(79,3,3050,3),(80,3,3051,4),(81,3,3100,5),(82,3,3101,6),(83,3,3102,7),(84,3,3103,8),(85,3,3104,9),(86,3,3105,10),(87,3,3106,11),(88,3,3107,12),(89,3,3108,13),(90,3,3109,14),(91,3,3110,15),(92,3,3111,16),(93,3,3112,17),(94,3,3113,18),(95,3,3114,19);
/*!40000 ALTER TABLE `csv_format_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csv_format_types`
--

DROP TABLE IF EXISTS `csv_format_types`;
CREATE TABLE `csv_format_types` (
  `csv_format_type_id` int(11) NOT NULL auto_increment,
  `csv_format_type_name` varchar(255) default NULL,
  PRIMARY KEY  (`csv_format_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `csv_format_types`
--

LOCK TABLES `csv_format_types` WRITE;
/*!40000 ALTER TABLE `csv_format_types` DISABLE KEYS */;
INSERT INTO `csv_format_types` VALUES (1,'���ʥޥ���'),(2,'���ʥ��ƥ���'),(3,'���ʥ��ץ����');
/*!40000 ALTER TABLE `csv_format_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csv_formats`
--

DROP TABLE IF EXISTS `csv_formats`;
CREATE TABLE `csv_formats` (
  `csv_format_id` int(11) NOT NULL auto_increment,
  `csv_format_type_id` int(11) default NULL,
  `csv_format_name` varchar(255) default NULL,
  `csv_format_date_added` datetime default NULL,
  `csv_format_last_modified` datetime default NULL,
  PRIMARY KEY  (`csv_format_id`),
  KEY `idx_format_name_zen` (`csv_format_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `csv_formats`
--

LOCK TABLES `csv_formats` WRITE;
/*!40000 ALTER TABLE `csv_formats` DISABLE KEYS */;
INSERT INTO `csv_formats` VALUES (1,1,'���ʥޥ���(����)','2009-11-19 13:04:30','2009-11-19 13:04:30'),(2,2,'���ʥ��ƥ���(����)','2009-11-19 13:04:30','2009-11-19 13:04:30'),(3,3,'���ʥ��ץ����(����)','2009-11-19 13:04:30','2009-11-19 13:04:30');
/*!40000 ALTER TABLE `csv_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE `currencies` (
  `currencies_id` int(11) NOT NULL auto_increment,
  `title` varchar(32) NOT NULL default '',
  `code` varchar(3) NOT NULL default '',
  `symbol_left` varchar(24) default NULL,
  `symbol_right` varchar(24) default NULL,
  `decimal_point` char(1) default NULL,
  `thousands_point` char(1) default NULL,
  `decimal_places` char(1) default NULL,
  `value` float(13,8) default NULL,
  `last_updated` datetime default NULL,
  PRIMARY KEY  (`currencies_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'US Dollar','USD','$','','.',',','2',0.00936500,'2009-11-19 12:39:40'),(2,'Euro','EUR','','EUR','.',',','2',0.00759400,'2009-11-19 12:39:40'),(3,'Japanese Yen','JPY','','��','.',',','',1.00000000,'2009-11-19 12:39:40');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL auto_increment,
  `customers_gender` char(1) NOT NULL default '',
  `customers_firstname` varchar(32) NOT NULL default '',
  `customers_lastname` varchar(32) NOT NULL default '',
  `customers_dob` datetime NOT NULL default '0001-01-01 00:00:00',
  `customers_email_address` varchar(96) NOT NULL default '',
  `customers_nick` varchar(96) NOT NULL default '',
  `customers_default_address_id` int(11) NOT NULL default '0',
  `customers_telephone` varchar(32) default NULL,
  `customers_fax` varchar(32) default NULL,
  `customers_password` varchar(40) NOT NULL default '',
  `customers_newsletter` char(1) default NULL,
  `customers_group_pricing` int(11) NOT NULL default '0',
  `customers_email_format` varchar(4) NOT NULL default 'TEXT',
  `customers_authorization` int(1) NOT NULL default '0',
  `customers_referral` varchar(32) NOT NULL default '',
  `customers_firstname_kana` varchar(32) NOT NULL default '',
  `customers_lastname_kana` varchar(32) NOT NULL default '',
  `customers_mobile_serial_number` varchar(64) default NULL,
  PRIMARY KEY  (`customers_id`),
  KEY `idx_email_address_zen` (`customers_email_address`),
  KEY `idx_referral_zen` (`customers_referral`(10)),
  KEY `idx_grp_pricing_zen` (`customers_group_pricing`),
  KEY `idx_nick_zen` (`customers_nick`),
  KEY `idx_newsletter_zen` (`customers_newsletter`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'m','Bill','Smith','2001-01-01 00:00:00','root@localhost','',1,'12345','','d95e8fa7f20a009372eb3477473fcd34:1c','0',0,'TEXT',0,'','','',NULL),(2,'m','saito','s','0001-01-01 00:00:00','saito@ark-web.jp','',2,'0123456789','','','0',0,'',0,'','�����Ȥ�','��',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_basket`
--

DROP TABLE IF EXISTS `customers_basket`;
CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `products_id` tinytext NOT NULL,
  `customers_basket_quantity` float NOT NULL default '0',
  `final_price` decimal(15,4) NOT NULL default '0.0000',
  `customers_basket_date_added` varchar(8) default NULL,
  PRIMARY KEY  (`customers_basket_id`),
  KEY `idx_customers_id_zen` (`customers_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `customers_basket`
--

LOCK TABLES `customers_basket` WRITE;
/*!40000 ALTER TABLE `customers_basket` DISABLE KEYS */;
INSERT INTO `customers_basket` VALUES (1,2,'190:e468d7a4871dca5f6c31f42a03a7c4a2',1,'0.0000','20091119');
/*!40000 ALTER TABLE `customers_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_basket_attributes`
--

DROP TABLE IF EXISTS `customers_basket_attributes`;
CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `products_id` tinytext NOT NULL,
  `products_options_id` varchar(64) NOT NULL default '0',
  `products_options_value_id` int(11) NOT NULL default '0',
  `products_options_value_text` blob,
  `products_options_sort_order` text NOT NULL,
  PRIMARY KEY  (`customers_basket_attributes_id`),
  KEY `idx_cust_id_prod_id_zen` (`customers_id`,`products_id`(36))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `customers_basket_attributes`
--

LOCK TABLES `customers_basket_attributes` WRITE;
/*!40000 ALTER TABLE `customers_basket_attributes` DISABLE KEYS */;
INSERT INTO `customers_basket_attributes` VALUES (1,2,'190:e468d7a4871dca5f6c31f42a03a7c4a2','3',4,'','100.00110');
/*!40000 ALTER TABLE `customers_basket_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_info`
--

DROP TABLE IF EXISTS `customers_info`;
CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL default '0',
  `customers_info_date_of_last_logon` datetime default NULL,
  `customers_info_number_of_logons` int(5) default NULL,
  `customers_info_date_account_created` datetime default NULL,
  `customers_info_date_account_last_modified` datetime default NULL,
  `global_product_notifications` int(1) default '0',
  PRIMARY KEY  (`customers_info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `customers_info`
--

LOCK TABLES `customers_info` WRITE;
/*!40000 ALTER TABLE `customers_info` DISABLE KEYS */;
INSERT INTO `customers_info` VALUES (1,'0001-01-01 00:00:00',0,'2004-01-21 01:35:28','0001-01-01 00:00:00',0),(2,NULL,0,'2009-11-19 15:19:04',NULL,0);
/*!40000 ALTER TABLE `customers_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_point_rate`
--

DROP TABLE IF EXISTS `customers_point_rate`;
CREATE TABLE `customers_point_rate` (
  `customers_id` int(11) NOT NULL default '0',
  `rate` int(11) NOT NULL default '0',
  PRIMARY KEY  (`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `customers_point_rate`
--

LOCK TABLES `customers_point_rate` WRITE;
/*!40000 ALTER TABLE `customers_point_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers_point_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_points`
--

DROP TABLE IF EXISTS `customers_points`;
CREATE TABLE `customers_points` (
  `customers_id` int(11) NOT NULL default '0',
  `deposit` int(11) NOT NULL default '0',
  `pending` int(11) NOT NULL default '0',
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `customers_points`
--

LOCK TABLES `customers_points` WRITE;
/*!40000 ALTER TABLE `customers_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_wishlist`
--

DROP TABLE IF EXISTS `customers_wishlist`;
CREATE TABLE `customers_wishlist` (
  `products_id` int(13) NOT NULL default '0',
  `customers_id` int(13) NOT NULL default '0',
  `products_model` varchar(13) default NULL,
  `products_name` varchar(64) NOT NULL default '',
  `products_price` decimal(8,2) NOT NULL default '0.00',
  `final_price` decimal(8,2) NOT NULL default '0.00',
  `products_quantity` int(2) NOT NULL default '0',
  `wishlist_name` varchar(64) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `customers_wishlist`
--

LOCK TABLES `customers_wishlist` WRITE;
/*!40000 ALTER TABLE `customers_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_cache`
--

DROP TABLE IF EXISTS `db_cache`;
CREATE TABLE `db_cache` (
  `cache_entry_name` varchar(64) NOT NULL default '',
  `cache_data` blob,
  `cache_entry_created` int(15) default NULL,
  PRIMARY KEY  (`cache_entry_name`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `db_cache`
--

LOCK TABLES `db_cache` WRITE;
/*!40000 ALTER TABLE `db_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_admin_sub_menus`
--

DROP TABLE IF EXISTS `easy_admin_sub_menus`;
CREATE TABLE `easy_admin_sub_menus` (
  `easy_admin_sub_menu_id` int(11) NOT NULL auto_increment,
  `easy_admin_top_menu_id` int(11) default NULL,
  `easy_admin_sub_menu_name` varchar(255) default NULL,
  `easy_admin_sub_menu_url` varchar(255) default NULL,
  `easy_admin_sub_menu_sort_order` int(11) default NULL,
  PRIMARY KEY  (`easy_admin_sub_menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `easy_admin_sub_menus`
--

LOCK TABLES `easy_admin_sub_menus` WRITE;
/*!40000 ALTER TABLE `easy_admin_sub_menus` DISABLE KEYS */;
INSERT INTO `easy_admin_sub_menus` VALUES (1,1,'�ܵҴ���','customers.php',1),(2,1,'��ʸ����','orders.php',2),(3,2,'���ƥ��ꡦ���ʤδ���','categories.php',1),(4,2,'���ʲ��ʤδ���','products_price_manager.php',2),(5,4,'�����Ԥ�����','admin.php',1),(6,4,'������˥塼������','addon_modules_admin.php?module=easy_admin',2);
/*!40000 ALTER TABLE `easy_admin_sub_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_admin_top_menus`
--

DROP TABLE IF EXISTS `easy_admin_top_menus`;
CREATE TABLE `easy_admin_top_menus` (
  `easy_admin_top_menu_id` int(11) NOT NULL auto_increment,
  `easy_admin_top_menu_name` varchar(255) default NULL,
  `is_dropdown` int(1) default NULL,
  `easy_admin_top_menu_sort_order` int(11) default NULL,
  PRIMARY KEY  (`easy_admin_top_menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `easy_admin_top_menus`
--

LOCK TABLES `easy_admin_top_menus` WRITE;
/*!40000 ALTER TABLE `easy_admin_top_menus` DISABLE KEYS */;
INSERT INTO `easy_admin_top_menus` VALUES (1,'��ʸ���ܵҴ���',1,0),(2,'���ʴ���',1,0),(3,'����ƥ�Ĵ���',1,0),(4,'�������',0,0),(5,'����¾',0,0);
/*!40000 ALTER TABLE `easy_admin_top_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_design_colors`
--

DROP TABLE IF EXISTS `easy_design_colors`;
CREATE TABLE `easy_design_colors` (
  `easy_design_color_id` int(11) NOT NULL auto_increment,
  `template_dir` varchar(255) default NULL,
  `easy_design_color_key` varchar(255) default NULL,
  `easy_design_color_name` text,
  `easy_design_color_value` text,
  PRIMARY KEY  (`easy_design_color_id`),
  KEY `template_dir` (`template_dir`),
  KEY `easy_design_color_key` (`easy_design_color_key`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `easy_design_colors`
--

LOCK TABLES `easy_design_colors` WRITE;
/*!40000 ALTER TABLE `easy_design_colors` DISABLE KEYS */;
INSERT INTO `easy_design_colors` VALUES (1,'template_default','maincolor','�ᥤ�󥫥顼','#f4f4f4'),(2,'template_default','subcolor','���֥��顼','#ffffff'),(3,'classic','maincolor','�ᥤ�󥫥顼','#f4f4f4'),(4,'classic','subcolor','���֥��顼','#ffffff'),(5,'sugudeki','maincolor','�ᥤ�󥫥顼','#FF6347'),(6,'addon_modules','maincolor','�ᥤ�󥫥顼','#f4f4f4'),(7,'addon_modules','subcolor','���֥��顼','#ffffff'),(8,'zen_mobile','maincolor','�ᥤ�󥫥顼','#f4f4f4'),(9,'zen_mobile','subcolor','���֥��顼','#ffffff');
/*!40000 ALTER TABLE `easy_design_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_design_languages`
--

DROP TABLE IF EXISTS `easy_design_languages`;
CREATE TABLE `easy_design_languages` (
  `easy_design_language_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) default NULL,
  `easy_design_language_key` varchar(255) default NULL,
  `easy_design_language_name` text,
  `easy_design_language_value` text,
  `easy_design_language_sort_order` int(11) default NULL,
  PRIMARY KEY  (`easy_design_language_id`),
  KEY `easy_design_language_key` (`easy_design_language_key`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `easy_design_languages`
--

LOCK TABLES `easy_design_languages` WRITE;
/*!40000 ALTER TABLE `easy_design_languages` DISABLE KEYS */;
INSERT INTO `easy_design_languages` VALUES (1,2,'EASY_DESIGN_TAGLINE','�����饤��','EC�����Ȥ������Ǥ��롪',1),(2,2,'EASY_DESIGN_KEY_COPYLIGHT','���ԡ��饤��','Zen-Cart �����Ǥ��ʤ�˥ѥå�',2);
/*!40000 ALTER TABLE `easy_design_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_archive`
--

DROP TABLE IF EXISTS `email_archive`;
CREATE TABLE `email_archive` (
  `archive_id` int(11) NOT NULL auto_increment,
  `email_to_name` varchar(96) NOT NULL default '',
  `email_to_address` varchar(96) NOT NULL default '',
  `email_from_name` varchar(96) NOT NULL default '',
  `email_from_address` varchar(96) NOT NULL default '',
  `email_subject` varchar(255) NOT NULL default '',
  `email_html` text NOT NULL,
  `email_text` text NOT NULL,
  `date_sent` datetime NOT NULL default '0001-01-01 00:00:00',
  `module` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`archive_id`),
  KEY `idx_email_to_address_zen` (`email_to_address`),
  KEY `idx_module_zen` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `email_archive`
--

LOCK TABLES `email_archive` WRITE;
/*!40000 ALTER TABLE `email_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE `email_templates` (
  `id` smallint(6) NOT NULL auto_increment,
  `grp` varchar(50) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `subject` varchar(255) NOT NULL default '',
  `contents` text NOT NULL,
  `updated` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'�桼������Ͽ','�桼������Ͽ���꤬�Ȥ��������ޤ�','�桼������Ͽ���꤬�Ȥ��������ޤ�','�桼������Ͽ���꤬�Ȥ��������ޤ�\r\n\r\n���줫����������ꤤ���ޤ���','2009-11-19 13:01:34'),(2,'��ʸ��λ','����ʸ���꤬�Ȥ��������ޤ�[�����]','����ʸ���꤬�Ȥ��������ޤ�','��ʸ��ǧ�� from XXXXXXXX\r\n\r\n[CUSTOMER_NAME] ��\r\n\r\n�����Ѥ��꤬�Ȥ��������ޤ���\r\n����ʸ���Ƥϰʲ����̤�Ǥ���\r\n------------------------------------------------------\r\n����ʸ�ֹ�: [ORDER_ID]\r\n����ʸ��: [DATE_ORDERED]\r\n�������ٽ�:\r\n[INVOICE_URL]\r\n\r\n[COMMENT]\r\n\r\n����\r\n------------------------------------------------------\r\n[PRODUCTS_ORDERED]\r\n------------------------------------------------------\r\n[TOTALS]\r\n\r\n���Ϥ���\r\n------------------------------------------------------\r\n[DELIVERY_ADDRESS]\r\n\r\n�����轻��\r\n------------------------------------------------------\r\n[BILLING_ADDRESS]\r\n\r\n����ʧ����ˡ\r\n------------------------------------------------------\r\n[PAYMENT_METHOD]\r\n\r\n\r\n-----\r\n���Υ᡼���������åפ���Ͽ���줿�����ͤ��Ф��Ƥ����ꤷ�Ƥ��ޤ���\r\n���������̵꤬���褦�Ǥ��������Ѥ�����Ǥ����᡼��ˤ�\r\nxxxxxxx@example.org �ޤǤ�Ϣ����������\r\n\r\n-----\r\nCopyright (c) XXXXXXXX Inc. All Rights Reserved\r\n','2009-11-19 13:01:34'),(3,'��ʸ��λ','����ʸ���꤬�Ȥ��������ޤ�[��������]','����ʸ���꤬�Ȥ��������ޤ�','��ʸ��ǧ�� from XXXXXXXX\r\n\r\n[CUSTOMER_NAME] ��\r\n\r\n�����Ѥ��꤬�Ȥ��������ޤ���\r\n����ʸ���Ƥϰʲ����̤�Ǥ���\r\n------------------------------------------------------\r\n����ʸ�ֹ�: [ORDER_ID]\r\n����ʸ��: [DATE_ORDERED]\r\n\r\n[COMMENT]\r\n\r\n����\r\n------------------------------------------------------\r\n[PRODUCTS_ORDERED]\r\n------------------------------------------------------\r\n[TOTALS]\r\n\r\n���Ϥ���\r\n------------------------------------------------------\r\n[DELIVERY_ADDRESS]\r\n\r\n�����轻��\r\n------------------------------------------------------\r\n[BILLING_ADDRESS]\r\n\r\n����ʧ����ˡ\r\n------------------------------------------------------\r\n[PAYMENT_METHOD]\r\n\r\n\r\n-----\r\n���Υ᡼���������åפ���Ͽ���줿�����ͤ��Ф��Ƥ����ꤷ�Ƥ��ޤ���\r\n���������̵꤬���褦�Ǥ��������Ѥ�����Ǥ����᡼��ˤ�\r\nxxxxxxx@example.org �ޤǤ�Ϣ����������\r\n\r\n-----\r\nCopyright (c) XXXXXXXX Inc. All Rights Reserved\r\n','2009-11-19 13:01:34'),(4,'�桼������','���ơ������ѹ�','����ʸ���վ����Τ��Τ餻','\r\n[CUSTOMER_NAME]��\r\n\r\n�����Ѥ��꤬�Ȥ��������ޤ���\r\n[DATE_ORDERED]�ˤ����Ѥ���������\r\n����ʸ�����ֹ桧[ORDER_ID]�ξ������ѹ�����ޤ����ΤǤ��Τ餻���ޤ���\r\n\r\n����ʸ�ˤĤ��Ƥξ���ϲ���URL�Ǥ������������ޤ���\r\n[INVOICE_URL]\r\n\r\n��������ꤤ���ޤ���\r\n\r\n-----\r\n���Υ᡼���������åפ���Ͽ���줿�����ͤ��Ф��Ƥ����ꤷ�Ƥ��ޤ���\r\n���������̵꤬���褦�Ǥ��������Ѥ�����Ǥ����᡼��ˤ�\r\nxxxxxxx@example.org �ޤǤ�Ϣ����������\r\n\r\n-----\r\nCopyright (c) XXXXXXXX Inc. All Rights Reserved\r\n','2009-11-19 13:01:34');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpages`
--

DROP TABLE IF EXISTS `ezpages`;
CREATE TABLE `ezpages` (
  `pages_id` int(11) NOT NULL auto_increment,
  `languages_id` int(11) NOT NULL default '1',
  `pages_title` varchar(64) NOT NULL default '',
  `alt_url` varchar(255) NOT NULL default '',
  `alt_url_external` varchar(255) NOT NULL default '',
  `pages_html_text` text,
  `status_header` int(1) NOT NULL default '1',
  `status_sidebox` int(1) NOT NULL default '1',
  `status_footer` int(1) NOT NULL default '1',
  `status_toc` int(1) NOT NULL default '1',
  `header_sort_order` int(3) NOT NULL default '0',
  `sidebox_sort_order` int(3) NOT NULL default '0',
  `footer_sort_order` int(3) NOT NULL default '0',
  `toc_sort_order` int(3) NOT NULL default '0',
  `page_open_new_window` int(1) NOT NULL default '0',
  `page_is_ssl` int(1) NOT NULL default '0',
  `toc_chapter` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pages_id`),
  KEY `idx_lang_id_zen` (`languages_id`),
  KEY `idx_ezp_status_header_zen` (`status_header`),
  KEY `idx_ezp_status_sidebox_zen` (`status_sidebox`),
  KEY `idx_ezp_status_footer_zen` (`status_footer`),
  KEY `idx_ezp_status_toc_zen` (`status_toc`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `ezpages`
--

LOCK TABLES `ezpages` WRITE;
/*!40000 ALTER TABLE `ezpages` DISABLE KEYS */;
INSERT INTO `ezpages` VALUES (1,1,'EZ�ڡ���','','','���Υڡ����ϡ��إå��ˤ����EZ�ڡ����פ����󥯤���Ƥ���ڡ������Υᥤ��ڡ����Ǥ���<br />\r\n<br />\r\n<strong>��ա�EZ�ڡ����γ�����ˡ�ˤĤ��Ƥϡ�EZ(��������)�ڡ����Ȥ�?�פ򻲾Ȥ��Ƥ���������</strong><br />\r\n<br />\r\n��EZ�ڡ����ץܥ���ϡ��إå��������ɥܥå������եå��Τ����줫���ޤ������Ƥξ���ɽ�����뤳�Ȥ��Ǥ��ޤ���<br />\r\n<br />\r\n���롼�ԥ󥰤����ꤹ��ȡ����롼�ײ����줿�ڡ��������ܼ���ɽ�����뤳�Ȥ��Ǥ��ޤ���<br />\r\n<br />\r\n¾�Υڡ����ϡ����Υᥤ��ڡ��������֤����ܼ������󥯤��뤫���ޤ��ϥإå����˥�˥塼�Ȥ���ɽ�����뤳�Ȥ�Ǥ��ޤ������ߤ����ꤷ�Ƥ���������<br />\r\n<br />\r\n',1,0,0,1,10,0,0,10,0,0,10),(2,2,'�ɲåڡ���1(EZ�ڡ�������)','','','���Υڡ������ɲåڡ�������Ǥ���<br />\r\n<br />\r\n���롼��ID10�ǥ��롼�ԥ󥰤��졢�ܼ��ϡ�ɽ����˽��äƥ����Ȥ���Ƥ��ޤ���<br />\r\n<br />\r\n���Υڡ����ˤϥإå����եå��������ɥܥå�������Υ�󥯤Ϥʤ����ᥤ��ڡ������ܼ���ɽ������ޤ���<br />\r\n<br />\r\n',0,0,0,1,0,0,0,30,0,0,10),(3,2,'�ɲåڡ���2(EZ�ڡ�������)','','','���Υڡ����ϡ����롼��ID10��°����⤦1�Ĥ��ɲåڡ����Ǥ���<br />\r\n<br />\r\n���롼�����ɽ�����10��20��30�Ȥ��ä���Ǥ���м�ͳ�˥ʥ�С��դ����뤳�Ȥ��Ǥ��ޤ����ޤ�����ǥڡ������ɲä����ꡢ���Ǥˤ���ڡ����ؤΥ�󥯤��ɲä����ꤹ�뤳�Ȥ��Ǥ��ޤ���<br />\r\n<br />\r\n���롼�פ�ñ�̤ˤޤȤ�뤳�Ȥ��Ǥ���ڡ�������������¤Ϥ���ޤ���<br />\r\n<br />\r\n[����][����]�ܥ���䡢�ܼ���ɽ������ɽ���ˤĤ��Ƥϡ�������̤��ڤ��ؤ��뤳�Ȥ��Ǥ��ޤ���',0,0,0,1,0,0,0,40,0,0,10),(4,2,'My���(EZ�ڡ�������)','','','����ϡ������ɥܥå����˥�󥯤�ɽ�������ñ�ȤΥڡ�������Ǥ���<br />\r\n<br />\r\n���Υڡ����ϾϤ�°���Ƥ��ʤ��Τǡ�¾���ɲåڡ����ؤΥ�󥯤Ϥ���ޤ���<br />\r\n<br />\r\n���Ȥ���ڡ�������������Ϥ��ܼ��ˤĤ������ꤹ�뤳�Ȥ�Ǥ��ޤ���<br />\r\n<br />\r\n�Ϥ�°���Ƥ��ʤ��ڡ����Ǥϡ�[����] [����] �ܥ�����ܼ��ϼ�ưŪ����ɽ���Ȥʤ�ޤ���',0,1,0,0,0,10,0,0,0,0,0),(5,2,'�����Υڡ���(EZ�ڡ�������)','','','�ڡ��������ȥ�ȥ��̾�ϡ�����ƥ�Ĥ����Ƥ��θ���Ƽ�ͳ�����ꤹ�뤳�Ȥ��Ǥ��ޤ���<br />\r\n<br />\r\n�ޤ�����󥯤�ɽ�����ϥإå��������ɥܥå������եå�����1������������Ƥʤɤ�����Ǥ��ޤ���<br />\r\n<br />\r\n���Υڡ�������Υ�󥯤�Ʊ�쥦����ɥ��ǳ������̥�����ɥ��ǳ��������������󥻥��奢(��SSL)�ڡ����������奢(SSL)�ڡ��������ʤɤ����ꤹ�뤳�Ȥ�Ǥ��ޤ���',0,1,0,0,0,20,0,0,0,0,0),(6,2,'����������(Shared)�ڡ���(EZ�ڡ�������)','','','���Υڡ����ϥإå��������ɥܥå������եå�����Υ���������(Shared)��󥯤�ĥ��줿�ڡ�������Ǥ���<br />\r\n<br />\r\n�����Ƚ�Ϥ狼��䤹��50�����ꤷ�Ƥ���ޤ������إå��������ɥܥå������եå��Τ��줾��ǰ㤦��Τˤ��뤳�Ȥ�Ǥ��ޤ���<br />\r\n<br />\r\n',1,1,1,0,50,50,50,0,0,0,0),(7,2,'My���������(EZ�ڡ�������)','index.php?main_page=account','','',0,0,1,0,0,0,10,0,0,1,0),(8,2,'�����ȥޥå�(EZ�ڡ�������)','index.php?main_page=site_map','','',0,1,1,0,0,40,20,0,0,0,0),(9,2,'�Ŀ;����ݸ�����(EZ�ڡ�������)','index.php?main_page=privacy','','',1,0,1,0,30,0,40,0,0,0,0),(10,2,'Zen Cart�ˤĤ���(EZ�ڡ�������)','','http://www.zen-cart.com','',1,0,0,0,60,0,0,0,1,0,0),(11,2,'���եȷ��ˤĤ���(EZ�ڡ�������)','index.php?main_page=index&cPath=21','','',0,1,0,0,0,60,0,0,0,0,0),(12,2,'DVD - ���������(EZ�ڡ�������)','index.php?main_page=index&cPath=3_10','','',0,0,1,0,0,0,60,0,0,0,0),(13,2,'Google�ˤĤ���(EZ�ڡ�������)','','http://www.google.com','',0,1,0,0,0,70,0,0,1,0,0),(14,2,'EZ(��������)�ڡ����Ȥ�?','','','<table cellspacing=\"4\" cellpadding=\"4\" border=\"3\" align=\"center\" style=\"width: 80%;\"><tbody><tr><td><span style=\"font-style: italic;\"><span style=\"font-weight: bold;\">��ա�����EZ�ڡ����ϡ�HTMLarea��Ȥäƺ������ޤ������Ǥ��Τǡ�¾�Υ��ǥ����ǤϤ��ޤ�ɽ���Ǥ��ʤ���ǽ��������ޤ���</span></span></td></tr></tbody></table><br />\r\n<br />\r\n<span style=\"font-weight: bold; color: rgb(255, 0, 0);\">�ޤȤ�</span><br />\r\n<br />\r\n<span style=\"font-weight: bold;\">EZ�ڡ���</span>�Ǥϡ��ɲåڡ����κ����䡢��󥯤�������ñ�˹Ԥ����Ȥ��Ǥ��ޤ���<br />\r\n<br />\r\n�ɲåڡ��������Ӥ��㡧<br />\r\n<ul><li>�����ڡ���</li><li>���������󥯤Υڡ���</li><li>�����ȳ���󥯤Υڡ���</li><li>�����奢(SSL)/�󥻥��奢(��SSL)�ڡ���</li><li>Ʊ�쥦����ɥ��ǳ����ڡ���/�̥�����ɥ��ǳ����ڡ���</li></ul>����˥ڡ���Ʊ�Τ򥰥롼�פǤޤȤᡢ���Ρ��ܼ��פ�ɽ�����뤳�Ȥ�Ǥ��ޤ���<br />\r\n<br />\r\n<span style=\"font-weight: bold; color: rgb(255, 0, 0);\">��󥯤�̿̾</span><br />\r\n<br />\r\n��󥯤ϥڡ��������ȥ��̿̾����ޤ������٤ƤΥ�󥯤ϡ���ǽ���뤿��ˤϥڡ��������ȥ뤬ɬ�פǤ��ꡢ�����˺���ȥ�󥯤��ɲä��뤳�Ȥ��Ǥ��ޤ���<br />\r\n<br />\r\n<span style=\"font-weight: bold;\"><span style=\"color: rgb(255, 0, 0);\">��󥯤�����</span><br />\r\n<br />\r\n</span>�������̤ǡ��إå��������ɥܥå������եå��Τɤ���ɽ�����뤫�����ꤹ��ɬ�פ�����ޤ���3�������Ƥ�ɽ�����뤳�Ȥ⡢���ߤξ�������ɽ�����뤳�Ȥ�Ǥ��ޤ���<br />\r\n30��إå��ˡ�50�򥵥��ɥܥå����ˡ��Ȥ��ä�������ǽ�Ǥ���<br />\r\n�ʥ�С��ο������ϼ�ͳ�Ǥ��������Ȥ���10��20��30�Ȥ����ʥ�С��դ��򤹤�С������Ȥ���Ω�����ޤ��夫��(�����δ֤�)��󥯤��ɲä��뤳�Ȥ�Ǥ���Ǥ��礦��<br />\r\n<br />\r\n��ա��ͤ��0�פˤ���ȥ�󥯤�ɽ������ʤ��ʤ�ޤ���<br />\r\n<br />\r\n<span style=\"font-weight: bold;\"><span style=\"color: rgb(255, 0, 0);\">���̥�����ɥ��ǳ����פȥ����奢(SSL�б�)�ڡ���</span><br />\r\n</span><br />\r\nEZ�ڡ����Ǥϡ��������̾�Τ褦��Ʊ�쥦����ɥ��ǳ������Ȥ⡢�ޤ�����������ɥ��ǳ����褦�����ꤹ�뤳�Ȥ�Ǥ��ޤ���<br />\r\n�ޤ��������򥻥��奢(SSL�б�)�ڡ����ǳ��������󥻥��奢(SSL���б�)�ڡ����Ȥ��Ƴ����������ꤹ�뤳�Ȥ�Ǥ��ޤ���<br />\r\n<br />\r\n<span style=\"font-weight: bold; color: rgb(255, 0, 0);\">�֥��롼�ԥ󥰡�</span><br style=\"font-weight: bold; color: rgb(255, 0, 0);\" /><br />\r\n�֥��롼�ԥ󥰡פϡ�EZ�ڡ���Ʊ�Τ�ޤȤ���ߤ��󥯤����륹�ޡ��Ȥ���ˡ�Ǥ���<br />\r\n<br />\r\nEZ�ڡ����Ǻ������줿ʣ���Υڡ�����������ݤˡ����Υᥤ��ڡ����ؤΥ�󥯤�إå��������ɥܥå������եå��Τ����줫��ɽ������������򤷤ޤ��礦��<br />\r\n���ˡ����Υ�󥯤ȴ�Ϣ�Ť��륰�롼��ID�����ꤷ�ޤ���<br />\r\n�����ơ����롼�����ɽ��������ꤷ�Ƥ������������줬�ܼ����¤ӽ�ˤʤ�ޤ���<br />\r\n<br />\r\n<span style=\"font-weight: bold; font-style: italic;\">��ա��إå��������ɥܥå������եå��ˤϡ����롼�פ˴ޤޤ�����ƤΥڡ������󥯤Ȥ���ɽ�����뤳�Ȥ�Ǥ����إå��ˤ�A�Ȥ����ڡ����򡢥եå��ˤ�B�Ȥ����ڡ����򡢤����ꤹ�뤳�Ȥ�Ǥ��ޤ����ޤ��ϡ����롼�פΥᥤ��ڡ���������Υڡ����������Ƥ���ݤˤ���ɽ�������󥯤����ꤹ�뤳�Ȥ�Ǥ��ޤ���</span><br />\r\n<br />\r\n<span style=\"color: rgb(255, 0, 0); font-weight: bold;\">�ֳ�����󥯡�</span><br />\r\n<br />\r\n�ֳ�����󥯡פϡ����ʤ��Υ���å׳��Υڡ����ؤΥ�󥯤Ǥ������Υڡ����ؤΥ�󥯤� \"http://www.sashbox.net/\" �Τ褦�����ꤷ�ޤ���<br />\r\n������Ʊ�쥦����ɥ��ǳ��������̥�����ɥ��ǳ����������ꤹ�뤳�Ȥ��Ǥ��ޤ���<br />\r\n<br />\r\n<span style=\"color: rgb(255, 0, 0); font-weight: bold;\">��������󥯡�</span><br />\r\n<br />\r\n��������󥯡פϤ��ʤ��Υ���å���Υڡ����ؤΥ�󥯤Ǥ������Υڡ����ؤΥ�󥯤ϡ����Ȥ���ID21�Υ��ƥ���إ�󥯤���ݤˤ� \"index.php?main_page=index&cPath=21\" �Τ褦�����Хѥ������ꤷ�ޤ������Хѥ��ǵ�������ݤˤϡ��ɥᥤ����ѹ������ݤʤɤ˽�������ɬ�פ����뤳�Ȥ���դ��Ƥ���������<br />\r\n������Ʊ�쥦����ɥ��ǳ��������̥�����ɥ��ǳ����������ꤹ�뤳�Ȥ��Ǥ��ޤ���<br />\r\n<br />\r\n<span style=\"font-weight: bold; color: rgb(255, 0, 0);\">EZ�ڡ������Խ��ˤĤ��Ƥ����</span><br />\r\n<br />\r\nHTMLarea�Τ褦�ʥ��ǥ�����ȤäƤ���ݡ�HTML�Խ����ꥢ��Enter�����ʤɤ򲡤��ȡ�����ƥ�Ĥ��ɲä��줿�ȸ��ʤ����(���ɲåڡ����פȤʤ�)���Ȥ�����ޤ������ξ�硢������󥯤䳰����󥯤������̵���ˤʤäƤ��ޤ��ޤ��Τ���դ��Ƥ���������<br />\r\n<br />\r\n<span style=\"font-weight: bold; color: rgb(255, 0, 0);\">�ִ����ԤˤΤ�ɽ��������</span><br />\r\n<br />\r\n����ϡ��ºݤ˲�ư���Ƥ��륷��åפ�EZ�ڡ������Խ�����ݤ�����������Ǥ���<br />\r\nEZ�ڡ����Υإå��������ɥܥå������եå��ؤ�ɽ����<br />\r\n<ul><li>����</li><li>����</li><li>�����ԤˤΤ�ɽ��</li></ul>������򤹤뤳�Ȥ��Ǥ��ޤ����ִ����ԤˤΤ�ɽ���פˤ��Ƥ����ȡ��������̤Ρ֡إ��ƥʥ����- ���ꤷ��IP���ɥ쥹������פ����ꤷ��IP���ɥ쥹�ǥ������������ݤˤ�����EZ�ڡ����ؤΥ�󥯤�ɽ������ޤ���<br />\r\n<br />\r\n',0,0,0,1,0,0,0,20,0,0,10);
/*!40000 ALTER TABLE `ezpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_area`
--

DROP TABLE IF EXISTS `feature_area`;
CREATE TABLE `feature_area` (
  `id` int(11) NOT NULL auto_increment,
  `main_image` varchar(64) default NULL,
  `thumb_image` varchar(64) default NULL,
  `link_url` varchar(255) default NULL,
  `sort_order` varchar(255) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  `status` tinyint(1) default NULL,
  `new_window` tinyint(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_sort_order_zen` (`sort_order`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `feature_area`
--

LOCK TABLES `feature_area` WRITE;
/*!40000 ALTER TABLE `feature_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `feature_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_area_info`
--

DROP TABLE IF EXISTS `feature_area_info`;
CREATE TABLE `feature_area_info` (
  `id` int(11) NOT NULL auto_increment,
  `languages_id` int(11) NOT NULL default '0',
  `name` varchar(255) default NULL,
  `url_clicked` int(11) default NULL,
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`id`,`languages_id`),
  KEY `idx_categories_name_zen` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `feature_area_info`
--

LOCK TABLES `feature_area_info` WRITE;
/*!40000 ALTER TABLE `feature_area_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `feature_area_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featured`
--

DROP TABLE IF EXISTS `featured`;
CREATE TABLE `featured` (
  `featured_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `featured_date_added` datetime default NULL,
  `featured_last_modified` datetime default NULL,
  `expires_date` date NOT NULL default '0001-01-01',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `featured_date_available` date NOT NULL default '0001-01-01',
  PRIMARY KEY  (`featured_id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_date_avail_zen` (`featured_date_available`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `featured`
--

LOCK TABLES `featured` WRITE;
/*!40000 ALTER TABLE `featured` DISABLE KEYS */;
INSERT INTO `featured` VALUES (1,18,'2007-01-18 00:38:40',NULL,'0001-01-01',NULL,1,'0001-01-01'),(2,2,'2007-01-18 00:38:50',NULL,'0001-01-01',NULL,1,'0001-01-01'),(3,4,'2007-01-18 00:38:59',NULL,'0001-01-01',NULL,1,'0001-01-01'),(4,9,'2007-01-18 00:39:11',NULL,'0001-01-01',NULL,1,'0001-01-01'),(5,28,'2007-01-18 00:39:33',NULL,'0001-01-01',NULL,1,'0001-01-01'),(6,11,'2007-01-18 00:40:27',NULL,'0001-01-01',NULL,1,'0001-01-01');
/*!40000 ALTER TABLE `featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_uploaded`
--

DROP TABLE IF EXISTS `files_uploaded`;
CREATE TABLE `files_uploaded` (
  `files_uploaded_id` int(11) NOT NULL auto_increment,
  `sesskey` varchar(32) default NULL,
  `customers_id` int(11) default NULL,
  `files_uploaded_name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`files_uploaded_id`),
  KEY `idx_customers_id_zen` (`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis COMMENT='Must always have either a sesskey or customers_id';

--
-- Dumping data for table `files_uploaded`
--

LOCK TABLES `files_uploaded` WRITE;
/*!40000 ALTER TABLE `files_uploaded` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_uploaded` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_zones`
--

DROP TABLE IF EXISTS `geo_zones`;
CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL auto_increment,
  `geo_zone_name` varchar(32) NOT NULL default '',
  `geo_zone_description` varchar(255) NOT NULL default '',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `geo_zones`
--

LOCK TABLES `geo_zones` WRITE;
/*!40000 ALTER TABLE `geo_zones` DISABLE KEYS */;
INSERT INTO `geo_zones` VALUES (1,'����','���ܡʾ����ǡ�','2007-01-15 11:44:41','2006-11-29 16:18:40');
/*!40000 ALTER TABLE `geo_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `get_terms_to_filter`
--

DROP TABLE IF EXISTS `get_terms_to_filter`;
CREATE TABLE `get_terms_to_filter` (
  `get_term_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`get_term_name`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `get_terms_to_filter`
--

LOCK TABLES `get_terms_to_filter` WRITE;
/*!40000 ALTER TABLE `get_terms_to_filter` DISABLE KEYS */;
INSERT INTO `get_terms_to_filter` VALUES ('manufacturers_id'),('music_genre_id'),('record_company_id');
/*!40000 ALTER TABLE `get_terms_to_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_point_rate`
--

DROP TABLE IF EXISTS `group_point_rate`;
CREATE TABLE `group_point_rate` (
  `group_id` int(11) NOT NULL default '0',
  `rate` int(11) NOT NULL default '0',
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `group_point_rate`
--

LOCK TABLES `group_point_rate` WRITE;
/*!40000 ALTER TABLE `group_point_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_point_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_pricing`
--

DROP TABLE IF EXISTS `group_pricing`;
CREATE TABLE `group_pricing` (
  `group_id` int(11) NOT NULL auto_increment,
  `group_name` varchar(32) NOT NULL default '',
  `group_percentage` decimal(5,2) NOT NULL default '0.00',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `group_pricing`
--

LOCK TABLES `group_pricing` WRITE;
/*!40000 ALTER TABLE `group_pricing` DISABLE KEYS */;
INSERT INTO `group_pricing` VALUES (1,'10%���','10.00',NULL,'2004-04-29 00:21:04');
/*!40000 ALTER TABLE `group_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
CREATE TABLE `holidays` (
  `id` int(11) NOT NULL auto_increment,
  `year` int(11) default NULL,
  `month` int(11) default NULL,
  `day` int(11) default NULL,
  `week` int(11) default NULL,
  `weekcnt` int(11) default NULL,
  `open` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `holidays`
--

LOCK TABLES `holidays` WRITE;
/*!40000 ALTER TABLE `holidays` DISABLE KEYS */;
INSERT INTO `holidays` VALUES (1,-1,1,1,-1,-1,0),(2,-1,1,2,-1,-1,0),(3,-1,1,3,-1,-1,0),(4,-1,1,-1,1,2,0),(5,-1,2,11,-1,-1,0),(6,-1,4,29,-1,-1,0),(7,-1,5,3,-1,-1,0),(8,-1,5,4,-1,-1,0),(9,-1,5,5,-1,-1,0),(10,-1,7,-1,1,3,0),(11,-1,9,-1,1,3,0),(12,-1,10,-1,1,2,0),(13,-1,11,3,-1,-1,0),(14,-1,11,23,-1,-1,0),(15,-1,12,23,-1,-1,0),(16,-1,12,29,-1,-1,0),(17,-1,12,30,-1,-1,0),(18,-1,12,31,-1,-1,0),(19,2009,3,20,-1,-1,0),(20,2009,5,6,-1,-1,0),(21,2009,9,22,-1,-1,0),(22,2009,9,23,-1,-1,0),(23,2010,3,21,-1,-1,0),(24,2010,3,22,-1,-1,0),(25,2010,9,23,-1,-1,0);
/*!40000 ALTER TABLE `holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL default '',
  `code` varchar(2) NOT NULL default '',
  `image` varchar(64) default NULL,
  `directory` varchar(32) default NULL,
  `sort_order` int(3) default NULL,
  PRIMARY KEY  (`languages_id`),
  KEY `idx_languages_name_zen` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','icon.gif','english',1),(2,'Japanese','ja','icon.gif','japanese',1);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout_boxes`
--

DROP TABLE IF EXISTS `layout_boxes`;
CREATE TABLE `layout_boxes` (
  `layout_id` int(11) NOT NULL auto_increment,
  `layout_template` varchar(64) NOT NULL default '',
  `layout_box_name` varchar(64) NOT NULL default '',
  `layout_box_status` tinyint(1) NOT NULL default '0',
  `layout_box_location` tinyint(1) NOT NULL default '0',
  `layout_box_sort_order` int(11) NOT NULL default '0',
  `layout_box_sort_order_single` int(11) NOT NULL default '0',
  `layout_box_status_single` tinyint(4) NOT NULL default '0',
  `layout_page` varchar(64) default '',
  PRIMARY KEY  (`layout_id`),
  KEY `idx_name_template_zen` (`layout_template`,`layout_box_name`),
  KEY `idx_layout_box_status_zen` (`layout_box_status`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `layout_boxes`
--

LOCK TABLES `layout_boxes` WRITE;
/*!40000 ALTER TABLE `layout_boxes` DISABLE KEYS */;
INSERT INTO `layout_boxes` VALUES (1,'default_template_settings','banner_box_all.php',1,1,5,0,0,''),(2,'default_template_settings','banner_box.php',1,0,300,1,127,''),(3,'default_template_settings','banner_box2.php',1,1,15,1,15,''),(4,'default_template_settings','best_sellers.php',1,1,30,70,1,''),(5,'default_template_settings','categories.php',1,0,10,10,1,''),(6,'default_template_settings','currencies.php',1,1,80,60,1,''),(7,'default_template_settings','document_categories.php',1,0,0,0,0,''),(8,'default_template_settings','ezpages.php',1,1,-1,2,1,''),(9,'default_template_settings','featured.php',1,0,45,0,0,''),(10,'default_template_settings','information.php',1,0,50,40,1,''),(11,'default_template_settings','languages.php',1,1,70,50,1,''),(12,'default_template_settings','manufacturers.php',1,0,30,20,1,''),(13,'default_template_settings','manufacturer_info.php',1,1,35,95,1,''),(14,'default_template_settings','more_information.php',1,0,200,200,1,''),(15,'default_template_settings','music_genres.php',1,1,0,0,0,''),(16,'default_template_settings','order_history.php',0,0,0,0,0,''),(17,'default_template_settings','product_notifications.php',1,1,55,85,1,''),(18,'default_template_settings','record_companies.php',1,1,0,0,0,''),(19,'default_template_settings','reviews.php',1,0,40,0,0,''),(20,'default_template_settings','search.php',1,1,10,0,0,''),(21,'default_template_settings','search_header.php',0,0,0,0,1,''),(22,'default_template_settings','shopping_cart.php',1,1,20,30,1,''),(23,'default_template_settings','specials.php',1,1,45,0,0,''),(24,'default_template_settings','tell_a_friend.php',1,1,65,0,0,''),(25,'default_template_settings','whats_new.php',1,0,20,0,0,''),(26,'default_template_settings','whos_online.php',1,1,200,200,1,''),(27,'template_default','banner_box_all.php',1,1,5,0,0,''),(28,'template_default','banner_box.php',1,0,300,1,127,''),(29,'template_default','banner_box2.php',1,1,15,1,15,''),(30,'template_default','best_sellers.php',1,1,30,70,1,''),(31,'template_default','categories.php',1,0,10,10,1,''),(32,'template_default','currencies.php',1,1,80,60,1,''),(33,'template_default','ezpages.php',1,1,-1,2,1,''),(34,'template_default','featured.php',1,0,45,0,0,''),(35,'template_default','information.php',1,0,50,40,1,''),(36,'template_default','languages.php',1,1,70,50,1,''),(37,'template_default','manufacturers.php',1,0,30,20,1,''),(38,'template_default','manufacturer_info.php',1,1,35,95,1,''),(39,'template_default','more_information.php',1,0,200,200,1,''),(40,'template_default','my_broken_box.php',1,0,0,0,0,''),(41,'template_default','order_history.php',0,0,0,0,0,''),(42,'template_default','product_notifications.php',1,1,55,85,1,''),(43,'template_default','reviews.php',1,0,40,0,0,''),(44,'template_default','search.php',1,1,10,0,0,''),(45,'template_default','search_header.php',0,0,0,0,1,''),(46,'template_default','shopping_cart.php',1,1,20,30,1,''),(47,'template_default','specials.php',1,1,45,0,0,''),(48,'template_default','tell_a_friend.php',1,1,65,0,0,''),(49,'template_default','whats_new.php',1,0,20,0,0,''),(50,'template_default','whos_online.php',1,1,200,200,1,''),(51,'classic','banner_box.php',1,0,300,1,127,''),(52,'classic','banner_box2.php',1,1,15,1,15,''),(53,'classic','banner_box_all.php',1,1,5,0,0,''),(54,'classic','best_sellers.php',1,1,30,70,1,''),(55,'classic','categories.php',1,0,10,10,1,''),(56,'classic','currencies.php',1,1,80,60,1,''),(57,'classic','document_categories.php',1,0,0,0,0,''),(58,'classic','ezpages.php',1,1,-1,2,1,''),(59,'classic','featured.php',1,0,45,0,0,''),(60,'classic','information.php',1,0,50,40,1,''),(61,'classic','languages.php',1,1,70,50,1,''),(62,'classic','manufacturers.php',1,0,30,20,1,''),(63,'classic','manufacturer_info.php',1,1,35,95,1,''),(64,'classic','more_information.php',1,0,200,200,1,''),(65,'classic','music_genres.php',1,1,0,0,0,''),(66,'classic','order_history.php',0,0,0,0,0,''),(67,'classic','product_notifications.php',1,1,55,85,1,''),(68,'classic','record_companies.php',1,1,0,0,0,''),(69,'classic','reviews.php',1,0,40,0,0,''),(70,'classic','search.php',1,1,10,0,0,''),(71,'classic','search_header.php',0,0,0,0,1,''),(72,'classic','shopping_cart.php',1,1,20,30,1,''),(73,'classic','specials.php',1,1,45,0,0,''),(74,'classic','tell_a_friend.php',1,1,65,0,0,''),(75,'classic','whats_new.php',1,0,20,0,0,''),(76,'classic','whos_online.php',1,1,200,200,1,''),(77,'sugudeki','banner_box.php',0,0,0,0,0,''),(78,'sugudeki','banner_box2.php',0,0,0,0,0,''),(79,'sugudeki','banner_box_all.php',0,0,0,0,0,''),(80,'sugudeki','best_sellers.php',0,0,0,0,0,''),(81,'sugudeki','categories.php',0,0,0,0,0,''),(82,'sugudeki','currencies.php',0,0,0,0,0,''),(83,'sugudeki','document_categories.php',0,0,0,0,0,''),(84,'sugudeki','ezpages.php',0,0,0,0,0,''),(85,'sugudeki','featured.php',0,0,0,0,0,''),(86,'sugudeki','information.php',0,0,0,0,0,''),(87,'sugudeki','languages.php',0,0,0,0,0,''),(88,'sugudeki','manufacturer_info.php',0,0,0,0,0,''),(89,'sugudeki','manufacturers.php',0,0,0,0,0,''),(90,'sugudeki','more_information.php',0,0,0,0,0,''),(91,'sugudeki','music_genres.php',0,0,0,0,0,''),(92,'sugudeki','order_history.php',0,0,0,0,0,''),(93,'sugudeki','product_notifications.php',0,0,0,0,0,''),(94,'sugudeki','record_companies.php',0,0,0,0,0,''),(95,'sugudeki','reviews.php',0,0,0,0,0,''),(96,'sugudeki','search.php',0,0,0,0,0,''),(97,'sugudeki','search_header.php',0,0,0,0,0,''),(98,'sugudeki','shopping_cart.php',0,1,0,0,0,''),(99,'sugudeki','specials.php',0,0,0,0,0,''),(100,'sugudeki','tell_a_friend.php',0,0,0,0,0,''),(101,'sugudeki','whats_new.php',0,0,0,0,0,''),(102,'sugudeki','whos_online.php',0,0,0,0,0,'');
/*!40000 ALTER TABLE `layout_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `manufacturers_id` int(11) NOT NULL auto_increment,
  `manufacturers_name` varchar(32) NOT NULL default '',
  `manufacturers_image` varchar(64) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`manufacturers_id`),
  KEY `idx_mfg_name_zen` (`manufacturers_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,'ABC������',NULL,'2007-01-17 14:59:37','2007-01-21 22:22:03'),(2,'���Ĳ�T����ĳ������',NULL,'2007-01-21 22:19:08','2007-01-21 22:19:55'),(3,'ZenMarT����',NULL,'2007-01-21 22:20:41',NULL),(4,'XYZ�ǥ�����',NULL,'2007-01-21 22:21:38',NULL);
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers_info`
--

DROP TABLE IF EXISTS `manufacturers_info`;
CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `manufacturers_url` varchar(255) NOT NULL default '',
  `url_clicked` int(5) NOT NULL default '0',
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`manufacturers_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `manufacturers_info`
--

LOCK TABLES `manufacturers_info` WRITE;
/*!40000 ALTER TABLE `manufacturers_info` DISABLE KEYS */;
INSERT INTO `manufacturers_info` VALUES (2,1,'',0,NULL),(2,2,'',0,NULL),(3,1,'',0,NULL),(3,2,'',0,NULL),(4,1,'',0,NULL),(4,2,'',0,NULL);
/*!40000 ALTER TABLE `manufacturers_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_clips`
--

DROP TABLE IF EXISTS `media_clips`;
CREATE TABLE `media_clips` (
  `clip_id` int(11) NOT NULL auto_increment,
  `media_id` int(11) NOT NULL default '0',
  `clip_type` smallint(6) NOT NULL default '0',
  `clip_filename` text NOT NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`clip_id`),
  KEY `idx_media_id_zen` (`media_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `media_clips`
--

LOCK TABLES `media_clips` WRITE;
/*!40000 ALTER TABLE `media_clips` DISABLE KEYS */;
INSERT INTO `media_clips` VALUES (1,1,1,'thehunter.mp3','2007-01-26 10:50:45','0001-01-01 00:00:00'),(3,1,1,'help.mp3','2007-01-26 11:03:23','0001-01-01 00:00:00');
/*!40000 ALTER TABLE `media_clips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_manager`
--

DROP TABLE IF EXISTS `media_manager`;
CREATE TABLE `media_manager` (
  `media_id` int(11) NOT NULL auto_increment,
  `media_name` varchar(255) NOT NULL default '',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`media_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `media_manager`
--

LOCK TABLES `media_manager` WRITE;
/*!40000 ALTER TABLE `media_manager` DISABLE KEYS */;
INSERT INTO `media_manager` VALUES (1,'Help!','2007-01-26 11:03:23','2007-01-26 10:50:30'),(2,'Russ Tippins - The Hunter','2007-01-26 10:51:28','2007-01-26 10:51:10');
/*!40000 ALTER TABLE `media_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_to_products`
--

DROP TABLE IF EXISTS `media_to_products`;
CREATE TABLE `media_to_products` (
  `media_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  KEY `idx_media_product_zen` (`media_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `media_to_products`
--

LOCK TABLES `media_to_products` WRITE;
/*!40000 ALTER TABLE `media_to_products` DISABLE KEYS */;
INSERT INTO `media_to_products` VALUES (1,213),(1,229),(2,212);
/*!40000 ALTER TABLE `media_to_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
CREATE TABLE `media_types` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(64) NOT NULL default '',
  `type_ext` varchar(8) NOT NULL default '',
  PRIMARY KEY  (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'MP3','.mp3');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_tags_categories_description`
--

DROP TABLE IF EXISTS `meta_tags_categories_description`;
CREATE TABLE `meta_tags_categories_description` (
  `categories_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL default '1',
  `metatags_title` varchar(255) NOT NULL default '',
  `metatags_keywords` text,
  `metatags_description` text,
  PRIMARY KEY  (`categories_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `meta_tags_categories_description`
--

LOCK TABLES `meta_tags_categories_description` WRITE;
/*!40000 ALTER TABLE `meta_tags_categories_description` DISABLE KEYS */;
INSERT INTO `meta_tags_categories_description` VALUES (58,1,'','',''),(58,2,'���Υ��ƥ���ˤ�����Ū��title���������ꤷ�ޤ�����','���Υ��ƥ���ˤ�����Ū��META��keyword�ˤ����ꤷ�Ƥ��ޤ�,�������1,�������2,�������3','���Υ��ƥ���ˤ�����Ū��META��description�ˤ����ꤷ�Ƥ��ޤ���Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus sit amet velit������');
/*!40000 ALTER TABLE `meta_tags_categories_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_tags_products_description`
--

DROP TABLE IF EXISTS `meta_tags_products_description`;
CREATE TABLE `meta_tags_products_description` (
  `products_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL default '1',
  `metatags_title` varchar(255) NOT NULL default '',
  `metatags_keywords` text,
  `metatags_description` text,
  PRIMARY KEY  (`products_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `meta_tags_products_description`
--

LOCK TABLES `meta_tags_products_description` WRITE;
/*!40000 ALTER TABLE `meta_tags_products_description` DISABLE KEYS */;
INSERT INTO `meta_tags_products_description` VALUES (115,1,'','',''),(115,2,'���ξ��ʥڡ����ˤ�����Ū��title���������ꤷ�ޤ�����','���ξ��ʥڡ����ˤ�����Ū��META��keyword�ˤ����ꤷ�Ƥ��ޤ�,���ʥ������1,���ʥ������2,���ʥ������3','���ξ��ʥڡ����ˤ�����Ū��META��description�ˤ����ꤷ�Ƥ��ޤ���Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus sit amet velit������');
/*!40000 ALTER TABLE `meta_tags_products_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_genre`
--

DROP TABLE IF EXISTS `music_genre`;
CREATE TABLE `music_genre` (
  `music_genre_id` int(11) NOT NULL auto_increment,
  `music_genre_name` varchar(32) NOT NULL default '',
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`music_genre_id`),
  KEY `idx_music_genre_name_zen` (`music_genre_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `music_genre`
--

LOCK TABLES `music_genre` WRITE;
/*!40000 ALTER TABLE `music_genre` DISABLE KEYS */;
INSERT INTO `music_genre` VALUES (1,'Jazz','2007-01-26 10:45:31',NULL),(2,'Rock','2007-01-26 10:45:46',NULL);
/*!40000 ALTER TABLE `music_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters` (
  `newsletters_id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `content_html` text NOT NULL,
  `module` varchar(255) NOT NULL default '',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_sent` datetime default NULL,
  `status` int(1) default NULL,
  `locked` int(1) default '0',
  PRIMARY KEY  (`newsletters_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `customers_name` varchar(64) NOT NULL default '',
  `customers_company` varchar(32) default NULL,
  `customers_street_address` varchar(64) NOT NULL default '',
  `customers_suburb` varchar(32) default NULL,
  `customers_city` varchar(32) NOT NULL default '',
  `customers_postcode` varchar(10) NOT NULL default '',
  `customers_state` varchar(32) default NULL,
  `customers_country` varchar(32) NOT NULL default '',
  `customers_telephone` varchar(32) default NULL,
  `customers_email_address` varchar(96) NOT NULL default '',
  `customers_address_format_id` int(5) NOT NULL default '0',
  `delivery_name` varchar(64) NOT NULL default '',
  `delivery_company` varchar(32) default NULL,
  `delivery_street_address` varchar(64) NOT NULL default '',
  `delivery_suburb` varchar(32) default NULL,
  `delivery_city` varchar(32) NOT NULL default '',
  `delivery_postcode` varchar(10) NOT NULL default '',
  `delivery_state` varchar(32) default NULL,
  `delivery_country` varchar(32) NOT NULL default '',
  `delivery_address_format_id` int(5) NOT NULL default '0',
  `billing_name` varchar(64) NOT NULL default '',
  `billing_company` varchar(32) default NULL,
  `billing_street_address` varchar(64) NOT NULL default '',
  `billing_suburb` varchar(32) default NULL,
  `billing_city` varchar(32) NOT NULL default '',
  `billing_postcode` varchar(10) NOT NULL default '',
  `billing_state` varchar(32) default NULL,
  `billing_country` varchar(32) NOT NULL default '',
  `billing_address_format_id` int(5) NOT NULL default '0',
  `payment_method` varchar(128) NOT NULL default '',
  `payment_module_code` varchar(32) NOT NULL default '',
  `shipping_method` varchar(128) NOT NULL default '',
  `shipping_module_code` varchar(32) NOT NULL default '',
  `coupon_code` varchar(32) NOT NULL default '',
  `cc_type` varchar(20) default NULL,
  `cc_owner` varchar(64) default NULL,
  `cc_number` varchar(32) default NULL,
  `cc_expires` varchar(4) default NULL,
  `cc_cvv` blob,
  `last_modified` datetime default NULL,
  `date_purchased` datetime default NULL,
  `orders_status` int(5) NOT NULL default '0',
  `orders_date_finished` datetime default NULL,
  `currency` varchar(3) default NULL,
  `currency_value` decimal(14,6) default NULL,
  `order_total` decimal(14,2) default NULL,
  `order_tax` decimal(14,2) default NULL,
  `paypal_ipn_id` int(11) NOT NULL default '0',
  `ip_address` varchar(96) NOT NULL default '',
  `delivery_telephone` varchar(32) default NULL,
  `delivery_fax` varchar(32) default NULL,
  `billing_telephone` varchar(32) default NULL,
  `billing_fax` varchar(32) default NULL,
  `customers_fax` varchar(32) default NULL,
  `customers_name_kana` varchar(64) NOT NULL default '',
  `delivery_name_kana` varchar(64) NOT NULL default '',
  `billing_name_kana` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`orders_id`),
  KEY `idx_status_orders_cust_zen` (`orders_status`,`orders_id`,`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `products_id` int(11) NOT NULL default '0',
  `products_model` varchar(32) default NULL,
  `products_name` varchar(64) NOT NULL default '',
  `products_price` decimal(15,4) NOT NULL default '0.0000',
  `final_price` decimal(15,4) NOT NULL default '0.0000',
  `products_tax` decimal(7,4) NOT NULL default '0.0000',
  `products_quantity` float NOT NULL default '0',
  `onetime_charges` decimal(15,4) NOT NULL default '0.0000',
  `products_priced_by_attribute` tinyint(1) NOT NULL default '0',
  `product_is_free` tinyint(1) NOT NULL default '0',
  `products_discount_type` tinyint(1) NOT NULL default '0',
  `products_discount_type_from` tinyint(1) NOT NULL default '0',
  `products_prid` tinytext NOT NULL,
  PRIMARY KEY  (`orders_products_id`),
  KEY `idx_orders_id_prod_id_zen` (`orders_id`,`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products_attributes`
--

DROP TABLE IF EXISTS `orders_products_attributes`;
CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_products_id` int(11) NOT NULL default '0',
  `products_options` varchar(32) NOT NULL default '',
  `products_options_values` blob NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL default '0.0000',
  `price_prefix` char(1) NOT NULL default '',
  `product_attribute_is_free` tinyint(1) NOT NULL default '0',
  `products_attributes_weight` float NOT NULL default '0',
  `products_attributes_weight_prefix` char(1) NOT NULL default '',
  `attributes_discounted` tinyint(1) NOT NULL default '1',
  `attributes_price_base_included` tinyint(1) NOT NULL default '1',
  `attributes_price_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_qty_prices` text,
  `attributes_qty_prices_onetime` text,
  `attributes_price_words` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_words_free` int(4) NOT NULL default '0',
  `attributes_price_letters` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_letters_free` int(4) NOT NULL default '0',
  `products_options_id` int(11) NOT NULL default '0',
  `products_options_values_id` int(11) NOT NULL default '0',
  `products_prid` tinytext NOT NULL,
  PRIMARY KEY  (`orders_products_attributes_id`),
  KEY `idx_orders_id_prod_id_zen` (`orders_id`,`orders_products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `orders_products_attributes`
--

LOCK TABLES `orders_products_attributes` WRITE;
/*!40000 ALTER TABLE `orders_products_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products_download`
--

DROP TABLE IF EXISTS `orders_products_download`;
CREATE TABLE `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_products_id` int(11) NOT NULL default '0',
  `orders_products_filename` varchar(255) NOT NULL default '',
  `download_maxdays` int(2) NOT NULL default '0',
  `download_count` int(2) NOT NULL default '0',
  `products_prid` tinytext NOT NULL,
  PRIMARY KEY  (`orders_products_download_id`),
  KEY `idx_orders_id_zen` (`orders_id`),
  KEY `idx_orders_products_id_zen` (`orders_products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `orders_products_download`
--

LOCK TABLES `orders_products_download` WRITE;
/*!40000 ALTER TABLE `orders_products_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_status`
--

DROP TABLE IF EXISTS `orders_status`;
CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `orders_status_name` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`orders_status_id`,`language_id`),
  KEY `idx_orders_status_name_zen` (`orders_status_name`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `orders_status`
--

LOCK TABLES `orders_status` WRITE;
/*!40000 ALTER TABLE `orders_status` DISABLE KEYS */;
INSERT INTO `orders_status` VALUES (1,1,'Pending'),(2,1,'Processing'),(3,1,'Delivered'),(4,1,'Update'),(1,2,'�����Ԥ�'),(2,2,'������'),(3,2,'�����Ѥ�'),(4,2,'����');
/*!40000 ALTER TABLE `orders_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_status_history`
--

DROP TABLE IF EXISTS `orders_status_history`;
CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_status_id` int(5) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `customer_notified` int(1) default '0',
  `comments` text,
  PRIMARY KEY  (`orders_status_history_id`),
  KEY `idx_orders_id_status_id_zen` (`orders_id`,`orders_status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `orders_status_history`
--

LOCK TABLES `orders_status_history` WRITE;
/*!40000 ALTER TABLE `orders_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_total`
--

DROP TABLE IF EXISTS `orders_total`;
CREATE TABLE `orders_total` (
  `orders_total_id` int(10) unsigned NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `text` varchar(255) NOT NULL default '',
  `value` decimal(15,4) NOT NULL default '0.0000',
  `class` varchar(32) NOT NULL default '',
  `sort_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`orders_total_id`),
  KEY `idx_ot_orders_id_zen` (`orders_id`),
  KEY `idx_ot_class_zen` (`class`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `orders_total`
--

LOCK TABLES `orders_total` WRITE;
/*!40000 ALTER TABLE `orders_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal`
--

DROP TABLE IF EXISTS `paypal`;
CREATE TABLE `paypal` (
  `paypal_ipn_id` int(11) unsigned NOT NULL auto_increment,
  `zen_order_id` int(11) unsigned NOT NULL default '0',
  `txn_type` varchar(10) NOT NULL default '',
  `reason_code` varchar(15) default NULL,
  `payment_type` varchar(7) NOT NULL default '',
  `payment_status` varchar(17) NOT NULL default '',
  `pending_reason` varchar(14) default NULL,
  `invoice` varchar(64) default NULL,
  `mc_currency` varchar(3) NOT NULL default '',
  `first_name` varchar(32) NOT NULL default '',
  `last_name` varchar(32) NOT NULL default '',
  `payer_business_name` varchar(64) default NULL,
  `address_name` varchar(32) default NULL,
  `address_street` varchar(64) default NULL,
  `address_city` varchar(32) default NULL,
  `address_state` varchar(32) default NULL,
  `address_zip` varchar(10) default NULL,
  `address_country` varchar(64) default NULL,
  `address_status` varchar(11) default NULL,
  `payer_email` varchar(96) NOT NULL default '',
  `payer_id` varchar(32) NOT NULL default '',
  `payer_status` varchar(10) NOT NULL default '',
  `payment_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `business` varchar(96) NOT NULL default '',
  `receiver_email` varchar(96) NOT NULL default '',
  `receiver_id` varchar(32) NOT NULL default '',
  `txn_id` varchar(17) NOT NULL default '',
  `parent_txn_id` varchar(17) default NULL,
  `num_cart_items` tinyint(4) unsigned NOT NULL default '1',
  `mc_gross` decimal(7,2) NOT NULL default '0.00',
  `mc_fee` decimal(7,2) NOT NULL default '0.00',
  `payment_gross` decimal(7,2) default NULL,
  `payment_fee` decimal(7,2) default NULL,
  `settle_amount` decimal(7,2) default NULL,
  `settle_currency` varchar(3) default NULL,
  `exchange_rate` decimal(4,2) default NULL,
  `notify_version` decimal(2,1) NOT NULL default '0.0',
  `verify_sign` varchar(128) NOT NULL default '',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `memo` text,
  PRIMARY KEY  (`paypal_ipn_id`,`txn_id`),
  KEY `idx_zen_order_id_zen` (`zen_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `paypal`
--

LOCK TABLES `paypal` WRITE;
/*!40000 ALTER TABLE `paypal` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_payment_status`
--

DROP TABLE IF EXISTS `paypal_payment_status`;
CREATE TABLE `paypal_payment_status` (
  `payment_status_id` int(11) NOT NULL auto_increment,
  `payment_status_name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`payment_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `paypal_payment_status`
--

LOCK TABLES `paypal_payment_status` WRITE;
/*!40000 ALTER TABLE `paypal_payment_status` DISABLE KEYS */;
INSERT INTO `paypal_payment_status` VALUES (1,'Completed'),(2,'Pending'),(3,'Failed'),(4,'Denied'),(5,'Refunded'),(6,'Canceled_Reversal'),(7,'Reversed');
/*!40000 ALTER TABLE `paypal_payment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_payment_status_history`
--

DROP TABLE IF EXISTS `paypal_payment_status_history`;
CREATE TABLE `paypal_payment_status_history` (
  `payment_status_history_id` int(11) NOT NULL auto_increment,
  `paypal_ipn_id` int(11) NOT NULL default '0',
  `txn_id` varchar(64) NOT NULL default '',
  `parent_txn_id` varchar(64) NOT NULL default '',
  `payment_status` varchar(17) NOT NULL default '',
  `pending_reason` varchar(14) default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`payment_status_history_id`),
  KEY `idx_paypal_ipn_id_zen` (`paypal_ipn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `paypal_payment_status_history`
--

LOCK TABLES `paypal_payment_status_history` WRITE;
/*!40000 ALTER TABLE `paypal_payment_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_payment_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_session`
--

DROP TABLE IF EXISTS `paypal_session`;
CREATE TABLE `paypal_session` (
  `unique_id` int(11) NOT NULL auto_increment,
  `session_id` text NOT NULL,
  `saved_session` blob NOT NULL,
  `expiry` int(17) NOT NULL default '0',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_session_id_zen` (`session_id`(36))
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `paypal_session`
--

LOCK TABLES `paypal_session` WRITE;
/*!40000 ALTER TABLE `paypal_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_testing`
--

DROP TABLE IF EXISTS `paypal_testing`;
CREATE TABLE `paypal_testing` (
  `paypal_ipn_id` int(11) unsigned NOT NULL auto_increment,
  `zen_order_id` int(11) unsigned NOT NULL default '0',
  `custom` varchar(255) NOT NULL default '',
  `txn_type` varchar(10) NOT NULL default '',
  `reason_code` varchar(15) default NULL,
  `payment_type` varchar(7) NOT NULL default '',
  `payment_status` varchar(17) NOT NULL default '',
  `pending_reason` varchar(14) default NULL,
  `invoice` varchar(64) default NULL,
  `mc_currency` varchar(3) NOT NULL default '',
  `first_name` varchar(32) NOT NULL default '',
  `last_name` varchar(32) NOT NULL default '',
  `payer_business_name` varchar(64) default NULL,
  `address_name` varchar(32) default NULL,
  `address_street` varchar(64) default NULL,
  `address_city` varchar(32) default NULL,
  `address_state` varchar(32) default NULL,
  `address_zip` varchar(10) default NULL,
  `address_country` varchar(64) default NULL,
  `address_status` varchar(11) default NULL,
  `payer_email` varchar(96) NOT NULL default '',
  `payer_id` varchar(32) NOT NULL default '',
  `payer_status` varchar(10) NOT NULL default '',
  `payment_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `business` varchar(96) NOT NULL default '',
  `receiver_email` varchar(96) NOT NULL default '',
  `receiver_id` varchar(32) NOT NULL default '',
  `txn_id` varchar(17) NOT NULL default '',
  `parent_txn_id` varchar(17) default NULL,
  `num_cart_items` tinyint(4) unsigned NOT NULL default '1',
  `mc_gross` decimal(7,2) NOT NULL default '0.00',
  `mc_fee` decimal(7,2) NOT NULL default '0.00',
  `payment_gross` decimal(7,2) default NULL,
  `payment_fee` decimal(7,2) default NULL,
  `settle_amount` decimal(7,2) default NULL,
  `settle_currency` varchar(3) default NULL,
  `exchange_rate` decimal(4,2) default NULL,
  `notify_version` decimal(2,1) NOT NULL default '0.0',
  `verify_sign` varchar(128) NOT NULL default '',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `memo` text,
  PRIMARY KEY  (`paypal_ipn_id`,`txn_id`),
  KEY `idx_zen_order_id_zen` (`zen_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `paypal_testing`
--

LOCK TABLES `paypal_testing` WRITE;
/*!40000 ALTER TABLE `paypal_testing` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_testing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_histories`
--

DROP TABLE IF EXISTS `point_histories`;
CREATE TABLE `point_histories` (
  `id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `related_id_name` varchar(64) NOT NULL default '',
  `related_id_value` int(11) NOT NULL default '0',
  `deposit` int(11) NOT NULL default '0',
  `withdraw` int(11) NOT NULL default '0',
  `pending` int(11) NOT NULL default '0',
  `description` varchar(255) NOT NULL default '',
  `class` varchar(64) NOT NULL default '',
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `updated_at` datetime default NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `IDX_customers_id_status` (`customers_id`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `point_histories`
--

LOCK TABLES `point_histories` WRITE;
/*!40000 ALTER TABLE `point_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `point_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_music_extra`
--

DROP TABLE IF EXISTS `product_music_extra`;
CREATE TABLE `product_music_extra` (
  `products_id` int(11) NOT NULL default '0',
  `artists_id` int(11) NOT NULL default '0',
  `record_company_id` int(11) NOT NULL default '0',
  `music_genre_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_id`),
  KEY `idx_music_genre_id_zen` (`music_genre_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `product_music_extra`
--

LOCK TABLES `product_music_extra` WRITE;
/*!40000 ALTER TABLE `product_music_extra` DISABLE KEYS */;
INSERT INTO `product_music_extra` VALUES (212,1,0,2),(213,0,1,2),(229,0,1,2);
/*!40000 ALTER TABLE `product_music_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type_layout`
--

DROP TABLE IF EXISTS `product_type_layout`;
CREATE TABLE `product_type_layout` (
  `configuration_id` int(11) NOT NULL auto_increment,
  `configuration_title` text NOT NULL,
  `configuration_key` varchar(255) NOT NULL default '',
  `configuration_value` text NOT NULL,
  `configuration_description` text NOT NULL,
  `product_type_id` int(11) NOT NULL default '0',
  `sort_order` int(5) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `use_function` text,
  `set_function` text,
  PRIMARY KEY  (`configuration_id`),
  UNIQUE KEY `unq_config_key_zen` (`configuration_key`),
  KEY `idx_key_value_zen` (`configuration_key`,`configuration_value`(10))
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `product_type_layout`
--

LOCK TABLES `product_type_layout` WRITE;
/*!40000 ALTER TABLE `product_type_layout` DISABLE KEYS */;
INSERT INTO `product_type_layout` VALUES (1,'����ɽ��','SHOW_PRODUCT_INFO_MODEL','1','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',1,1,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(2,'����ɽ��','SHOW_PRODUCT_INFO_WEIGHT','1','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',1,2,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(3,'���ץ�������ɽ��','SHOW_PRODUCT_INFO_WEIGHT_ATTRIBUTES','1','���ʾ���ǥ��ץ����ν��̤�ɽ�����롣 0= off 1= on',1,3,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(4,'�᡼������ɽ��','SHOW_PRODUCT_INFO_MANUFACTURER','1','���ʥڡ����ˡ��᡼����̾��ɽ�����ޤ�����0= off 1= on',1,4,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(5,'��������ο���ɽ��','SHOW_PRODUCT_INFO_IN_CART_QTY','1','���ʾ���ǥ�������ο��̤�ɽ�����롣 0= off 1= on',1,5,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(6,'�߸˿�ɽ��','SHOW_PRODUCT_INFO_QUANTITY','1','���ʾ���Ǻ߸˿���ɽ�����롣 0= off 1= on',1,6,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(7,'��ӥ塼��ɽ��','SHOW_PRODUCT_INFO_REVIEWS_COUNT','1','���ʾ���ǥ�ӥ塼����ɽ������ 0= off 1= on',1,7,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(8,'��ӥ塼�ܥ���ɽ��','SHOW_PRODUCT_INFO_REVIEWS','1','���ʾ���ǥ�ӥ塼�ܥ����ɽ������ 0= off 1= on',1,8,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(9,'������ǽ�ˤʤä����դ�ɽ��','SHOW_PRODUCT_INFO_DATE_AVAILABLE','1','���ʾ���Ǿ��ʤ�������ǽ�ˤʤä����դ�ɽ�����롣 0= off 1= on',1,9,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(10,'��Ͽ��ɽ��','SHOW_PRODUCT_INFO_DATE_ADDED','1','���ʾ���Ǿ��ʤ���Ͽ���줿���դ�ɽ�����ޤ��� 0= off 1= on',1,10,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(11,'����URLɽ��','SHOW_PRODUCT_INFO_URL','1','���ʾ���Ǿ��ʤ�URL��ɽ������ 0= off 1= on',1,11,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(12,'Show Product Additional Images','SHOW_PRODUCT_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',1,13,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(13,'�١������ʤ�ɽ��','SHOW_PRODUCT_INFO_STARTING_AT','1','���ʥڡ����ˡ��١������ʤ�ɽ�����ޤ�����0= off 1= on',1,12,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(14,'��ͧã���Τ餻��ץܥ���ɽ��','SHOW_PRODUCT_INFO_TELL_A_FRIEND','1','���ʾ���ǡ�ͧã���Τ餻��ץܥ����ɽ�����롣<br /><br />Note: ���������off�ˤ��Ƥ⥵���ɥܥå����Ρ�ͧã���Τ餻��פϾä��ޤ��󡣤ޤ��������ɥܥå����Ρ�ͧã���Τ餻��פ�off�ˤ��Ƥ⤳�Υܥ���ɽ��������˱ƶ��Ϥ���ޤ���<br />0= off 1= on',1,15,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(15,'����̵���β������ơ����� - ������','SHOW_PRODUCT_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH','0','�������������̵���β���/�ƥ����Ȥ�ɽ�����ޤ�����',1,16,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(16,'�Ǽ��̤Υǥե���� - �������ɲû�','DEFAULT_PRODUCT_TAX_CLASS_ID','0','�����ʤ��ɲä�����Ρ��Ǽ��̤Υǥե����ID�����Ϥ��Ƥ���������',1,100,NULL,'2009-11-19 12:39:40','',''),(17,'����������뾦�ʤΥǥե���ȥ��ơ����� - �������ɲû�','DEFAULT_PRODUCT_PRODUCTS_VIRTUAL','0','�����ʤ��ɲä�����Ρ�����������뾦�ʤΥǥե���ȥ��ơ�������ON�ˤ��ޤ�����',1,101,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(18,'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?','DEFAULT_PRODUCT_PRODUCTS_IS_ALWAYS_FREE_SHIPPING','0','What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping',1,102,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), '),(19,'����ɽ��','SHOW_PRODUCT_MUSIC_INFO_MODEL','1','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',2,1,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(20,'����ɽ��','SHOW_PRODUCT_MUSIC_INFO_WEIGHT','0','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',2,2,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(21,'���ץ�������ɽ��','SHOW_PRODUCT_MUSIC_INFO_WEIGHT_ATTRIBUTES','1','���ʾ���ǥ��ץ����ν��̤�ɽ�����롣 0= off 1= on',2,3,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(22,'�����ƥ����Ȥ�ɽ��','SHOW_PRODUCT_MUSIC_INFO_ARTIST','1','���ʥڡ����ˡ������ƥ�����̾��ɽ�����ޤ�����0= off 1= on',2,4,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(23,'���ڥ������ɽ��','SHOW_PRODUCT_MUSIC_INFO_GENRE','1','���ʥڡ����ˡ����ڥ������ɽ�����ޤ�����0= off 1= on',2,4,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(24,'�쥳���ɲ�Ҥ�ɽ��','SHOW_PRODUCT_MUSIC_INFO_RECORD_COMPANY','1','���ʥڡ����ˡ��쥳���ɲ�Ҥ�ɽ�����ޤ�����0= off 1= on',2,4,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(25,'��������ο���ɽ��','SHOW_PRODUCT_MUSIC_INFO_IN_CART_QTY','1','���ʾ���ǥ�������ο��̤�ɽ�����롣 0= off 1= on',2,5,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(26,'�߸˿�ɽ��','SHOW_PRODUCT_MUSIC_INFO_QUANTITY','0','���ʾ���Ǻ߸˿���ɽ�����롣 0= off 1= on',2,6,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(27,'��ӥ塼��ɽ��','SHOW_PRODUCT_MUSIC_INFO_REVIEWS_COUNT','1','���ʾ���ǥ�ӥ塼����ɽ������ 0= off 1= on',2,7,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(28,'��ӥ塼�ܥ���ɽ��','SHOW_PRODUCT_MUSIC_INFO_REVIEWS','1','���ʾ���ǥ�ӥ塼�ܥ����ɽ������ 0= off 1= on',2,8,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(29,'������ǽ�ˤʤä����դ�ɽ��','SHOW_PRODUCT_MUSIC_INFO_DATE_AVAILABLE','1','���ʾ���Ǿ��ʤ�������ǽ�ˤʤä����դ�ɽ�����롣 0= off 1= on',2,9,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(30,'��Ͽ��ɽ��','SHOW_PRODUCT_MUSIC_INFO_DATE_ADDED','1','���ʾ���Ǿ��ʤ���Ͽ���줿���դ�ɽ�����ޤ��� 0= off 1= on',2,10,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(31,'�١������ʤ�ɽ��','SHOW_PRODUCT_MUSIC_INFO_STARTING_AT','1','���ʥڡ����ˡ��١������ʤ�ɽ�����ޤ�����0= off 1= on',2,12,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(32,'Show Product Additional Images','SHOW_PRODUCT_MUSIC_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',2,13,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(33,'��ͧã���Τ餻��ץܥ���ɽ��','SHOW_PRODUCT_MUSIC_INFO_TELL_A_FRIEND','1','���ʾ���ǡ�ͧã���Τ餻��ץܥ����ɽ�����롣<br /><br />Note: ���������off�ˤ��Ƥ⥵���ɥܥå����Ρ�ͧã���Τ餻��פϾä��ޤ��󡣤ޤ��������ɥܥå����Ρ�ͧã���Τ餻��פ�off�ˤ��Ƥ⤳�Υܥ���ɽ��������˱ƶ��Ϥ���ޤ���<br />0= off 1= on',2,15,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(34,'����̵���β������ơ����� - ������','SHOW_PRODUCT_MUSIC_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH','0','�������������̵���β���/�ƥ����Ȥ�ɽ�����ޤ�����',2,16,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(35,'�Ǽ��̤Υǥե���� - �������ɲû�','DEFAULT_PRODUCT_MUSIC_TAX_CLASS_ID','0','�����ʤ��ɲä�����Ρ��Ǽ��̤Υǥե����ID�����Ϥ��Ƥ���������',2,100,NULL,'2009-11-19 12:39:40','',''),(36,'����������뾦�ʤΥǥե���ȥ��ơ����� - �������ɲû�','DEFAULT_PRODUCT_MUSIC_PRODUCTS_VIRTUAL','0','�����ʤ��ɲä�����Ρ�����������뾦�ʤΥǥե���ȥ��ơ�������ON�ˤ��ޤ�����',2,101,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(37,'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?','DEFAULT_PRODUCT_MUSIC_PRODUCTS_IS_ALWAYS_FREE_SHIPPING','0','What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping',2,102,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), '),(38,'��ӥ塼��ɽ��','SHOW_DOCUMENT_GENERAL_INFO_REVIEWS_COUNT','1','���ʾ���ǥ�ӥ塼����ɽ������ 0= off 1= on',3,7,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(39,'��ӥ塼�ܥ���ɽ��','SHOW_DOCUMENT_GENERAL_INFO_REVIEWS','1','���ʾ���ǥ�ӥ塼�ܥ����ɽ������ 0= off 1= on',3,8,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(40,'������ǽ�ˤʤä����դ�ɽ��','SHOW_DOCUMENT_GENERAL_INFO_DATE_AVAILABLE','1','���ʾ���Ǿ��ʤ�������ǽ�ˤʤä����դ�ɽ�����롣 0= off 1= on',3,9,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(41,'��Ͽ��ɽ��','SHOW_DOCUMENT_GENERAL_INFO_DATE_ADDED','1','���ʾ���Ǿ��ʤ���Ͽ���줿���դ�ɽ�����ޤ��� 0= off 1= on',3,10,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(42,'��ͧã���Τ餻��ץܥ���ɽ��','SHOW_DOCUMENT_GENERAL_INFO_TELL_A_FRIEND','1','���ʾ���ǡ�ͧã���Τ餻��ץܥ����ɽ�����롣<br /><br />Note: ���������off�ˤ��Ƥ⥵���ɥܥå����Ρ�ͧã���Τ餻��פϾä��ޤ��󡣤ޤ��������ɥܥå����Ρ�ͧã���Τ餻��פ�off�ˤ��Ƥ⤳�Υܥ���ɽ��������˱ƶ��Ϥ���ޤ���<br />0= off 1= on',3,15,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(43,'����URLɽ��','SHOW_DOCUMENT_GENERAL_INFO_URL','1','���ʾ���Ǿ��ʤ�URL��ɽ������ 0= off 1= on',3,11,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(44,'Show Product Additional Images','SHOW_DOCUMENT_GENERAL_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',3,13,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(45,'����ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_MODEL','1','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',4,1,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(46,'����ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_WEIGHT','0','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',4,2,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(47,'���ץ�������ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_WEIGHT_ATTRIBUTES','1','���ʾ���ǥ��ץ����ν��̤�ɽ�����롣 0= off 1= on',4,3,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(48,'�᡼������ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_MANUFACTURER','1','���ʥڡ����ˡ��᡼����̾��ɽ�����ޤ�����0= off 1= on',4,4,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(49,'��������ο���ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_IN_CART_QTY','1','���ʾ���ǥ�������ο��̤�ɽ�����롣 0= off 1= on',4,5,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(50,'�߸˿�ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_QUANTITY','0','���ʾ���Ǻ߸˿���ɽ�����롣 0= off 1= on',4,6,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(51,'��ӥ塼��ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_REVIEWS_COUNT','1','���ʾ���ǥ�ӥ塼����ɽ������ 0= off 1= on',4,7,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(52,'��ӥ塼�ܥ���ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_REVIEWS','1','���ʾ���ǥ�ӥ塼�ܥ����ɽ������ 0= off 1= on',4,8,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(53,'������ǽ�ˤʤä����դ�ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_DATE_AVAILABLE','1','���ʾ���Ǿ��ʤ�������ǽ�ˤʤä����դ�ɽ�����롣 0= off 1= on',4,9,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(54,'��Ͽ��ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_DATE_ADDED','1','���ʾ���Ǿ��ʤ���Ͽ���줿���դ�ɽ�����ޤ��� 0= off 1= on',4,10,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(55,'����URLɽ��','SHOW_DOCUMENT_PRODUCT_INFO_URL','1','���ʾ���Ǿ��ʤ�URL��ɽ������ 0= off 1= on',4,11,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(56,'Show Product Additional Images','SHOW_DOCUMENT_PRODUCT_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',4,13,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(57,'�١������ʤ�ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_STARTING_AT','1','���ʥڡ����ˡ��١������ʤ�ɽ�����ޤ�����0= off 1= on',4,12,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(58,'��ͧã���Τ餻��ץܥ���ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_TELL_A_FRIEND','1','���ʾ���ǡ�ͧã���Τ餻��ץܥ����ɽ�����롣<br /><br />Note: ���������off�ˤ��Ƥ⥵���ɥܥå����Ρ�ͧã���Τ餻��פϾä��ޤ��󡣤ޤ��������ɥܥå����Ρ�ͧã���Τ餻��פ�off�ˤ��Ƥ⤳�Υܥ���ɽ��������˱ƶ��Ϥ���ޤ���<br />0= off 1= on',4,15,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(59,'����̵���β������ơ����� - ������','SHOW_DOCUMENT_PRODUCT_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH','0','�������������̵���β���/�ƥ����Ȥ�ɽ�����ޤ�����',4,16,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(60,'�Ǽ��̤Υǥե���� - �������ɲû�','DEFAULT_DOCUMENT_PRODUCT_TAX_CLASS_ID','0','�����ʤ��ɲä�����Ρ��Ǽ��̤Υǥե����ID�����Ϥ��Ƥ���������',4,100,NULL,'2009-11-19 12:39:40','',''),(61,'����������뾦�ʤΥǥե���ȥ��ơ����� - �������ɲû�','DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_VIRTUAL','0','�����ʤ��ɲä�����Ρ�����������뾦�ʤΥǥե���ȥ��ơ�������ON�ˤ��ޤ�����',4,101,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(62,'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?','DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_IS_ALWAYS_FREE_SHIPPING','0','What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping',4,102,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), '),(63,'����ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_MODEL','1','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',5,1,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(64,'����ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_WEIGHT','0','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',5,2,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(65,'���ץ�������ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_WEIGHT_ATTRIBUTES','1','���ʾ���ǥ��ץ����ν��̤�ɽ�����롣 0= off 1= on',5,3,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(66,'�᡼������ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_MANUFACTURER','1','���ʥڡ����ˡ��᡼����̾��ɽ�����ޤ�����0= off 1= on',5,4,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(67,'��������ο���ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_IN_CART_QTY','1','���ʾ���ǥ�������ο��̤�ɽ�����롣 0= off 1= on',5,5,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(68,'�߸˿�ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_QUANTITY','1','���ʾ���Ǻ߸˿���ɽ�����롣 0= off 1= on',5,6,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(69,'��ӥ塼��ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_REVIEWS_COUNT','1','���ʾ���ǥ�ӥ塼����ɽ������ 0= off 1= on',5,7,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(70,'��ӥ塼�ܥ���ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_REVIEWS','1','���ʾ���ǥ�ӥ塼�ܥ����ɽ������ 0= off 1= on',5,8,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(71,'������ǽ�ˤʤä����դ�ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_DATE_AVAILABLE','0','���ʾ���Ǿ��ʤ�������ǽ�ˤʤä����դ�ɽ�����롣 0= off 1= on',5,9,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(72,'��Ͽ��ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_DATE_ADDED','1','���ʾ���Ǿ��ʤ���Ͽ���줿���դ�ɽ�����ޤ��� 0= off 1= on',5,10,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(73,'����URLɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_URL','1','���ʾ���Ǿ��ʤ�URL��ɽ������ 0= off 1= on',5,11,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(74,'Show Product Additional Images','SHOW_PRODUCT_FREE_SHIPPING_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',5,13,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(75,'�١������ʤ�ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_STARTING_AT','1','���ʥڡ����ˡ��١������ʤ�ɽ�����ޤ�����0= off 1= on',5,12,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(76,'��ͧã���Τ餻��ץܥ���ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_TELL_A_FRIEND','1','���ʾ���ǡ�ͧã���Τ餻��ץܥ����ɽ�����롣<br /><br />Note: ���������off�ˤ��Ƥ⥵���ɥܥå����Ρ�ͧã���Τ餻��פϾä��ޤ��󡣤ޤ��������ɥܥå����Ρ�ͧã���Τ餻��פ�off�ˤ��Ƥ⤳�Υܥ���ɽ��������˱ƶ��Ϥ���ޤ���<br />0= off 1= on',5,15,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(77,'����̵���β������ơ����� - ������','SHOW_PRODUCT_FREE_SHIPPING_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH','1','�������������̵���β���/�ƥ����Ȥ�ɽ�����ޤ�����',5,16,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(78,'�Ǽ��̤Υǥե���� - �������ɲû�','DEFAULT_PRODUCT_FREE_SHIPPING_TAX_CLASS_ID','0','�����ʤ��ɲä�����Ρ��Ǽ��̤Υǥե����ID�����Ϥ��Ƥ���������',5,100,NULL,'2009-11-19 12:39:40','',''),(79,'����������뾦�ʤΥǥե���ȥ��ơ����� - �������ɲû�','DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_VIRTUAL','0','�����ʤ��ɲä�����Ρ�����������뾦�ʤΥǥե���ȥ��ơ�������ON�ˤ��ޤ�����',5,101,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(80,'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?','DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_IS_ALWAYS_FREE_SHIPPING','1','What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping',5,102,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), '),(81,'Show Metatags Title Default - Product Title','SHOW_PRODUCT_INFO_METATAGS_TITLE_STATUS','1','Display Product Title in Meta Tags Title 0= off 1= on',1,50,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(82,'Show Metatags Title Default - Product Name','SHOW_PRODUCT_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Product Name in Meta Tags Title 0= off 1= on',1,51,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(83,'Show Metatags Title Default - Product Model','SHOW_PRODUCT_INFO_METATAGS_MODEL_STATUS','1','Display Product Model in Meta Tags Title 0= off 1= on',1,52,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(84,'Show Metatags Title Default - Product Price','SHOW_PRODUCT_INFO_METATAGS_PRICE_STATUS','1','Display Product Price in Meta Tags Title 0= off 1= on',1,53,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(85,'Show Metatags Title Default - Product Tagline','SHOW_PRODUCT_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Product Tagline in Meta Tags Title 0= off 1= on',1,54,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(86,'Show Metatags Title Default - Product Title','SHOW_PRODUCT_MUSIC_INFO_METATAGS_TITLE_STATUS','1','Display Product Title in Meta Tags Title 0= off 1= on',2,50,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(87,'Show Metatags Title Default - Product Name','SHOW_PRODUCT_MUSIC_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Product Name in Meta Tags Title 0= off 1= on',2,51,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(88,'Show Metatags Title Default - Product Model','SHOW_PRODUCT_MUSIC_INFO_METATAGS_MODEL_STATUS','1','Display Product Model in Meta Tags Title 0= off 1= on',2,52,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(89,'Show Metatags Title Default - Product Price','SHOW_PRODUCT_MUSIC_INFO_METATAGS_PRICE_STATUS','1','Display Product Price in Meta Tags Title 0= off 1= on',2,53,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(90,'Show Metatags Title Default - Product Tagline','SHOW_PRODUCT_MUSIC_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Product Tagline in Meta Tags Title 0= off 1= on',2,54,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(91,'Show Metatags Title Default - Document Title','SHOW_DOCUMENT_GENERAL_INFO_METATAGS_TITLE_STATUS','1','Display Document Title in Meta Tags Title 0= off 1= on',3,50,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(92,'Show Metatags Title Default - Document Name','SHOW_DOCUMENT_GENERAL_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Document Name in Meta Tags Title 0= off 1= on',3,51,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(93,'Show Metatags Title Default - Document Tagline','SHOW_DOCUMENT_GENERAL_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Document Tagline in Meta Tags Title 0= off 1= on',3,54,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(94,'Show Metatags Title Default - Document Title','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_TITLE_STATUS','1','Display Document Title in Meta Tags Title 0= off 1= on',4,50,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(95,'Show Metatags Title Default - Document Name','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Document Name in Meta Tags Title 0= off 1= on',4,51,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(96,'Show Metatags Title Default - Document Model','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_MODEL_STATUS','1','Display Document Model in Meta Tags Title 0= off 1= on',4,52,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(97,'Show Metatags Title Default - Document Price','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_PRICE_STATUS','1','Display Document Price in Meta Tags Title 0= off 1= on',4,53,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(98,'Show Metatags Title Default - Document Tagline','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Document Tagline in Meta Tags Title 0= off 1= on',4,54,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(99,'Show Metatags Title Default - Product Title','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_TITLE_STATUS','1','Display Product Title in Meta Tags Title 0= off 1= on',5,50,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(100,'Show Metatags Title Default - Product Name','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Product Name in Meta Tags Title 0= off 1= on',5,51,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(101,'Show Metatags Title Default - Product Model','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_MODEL_STATUS','1','Display Product Model in Meta Tags Title 0= off 1= on',5,52,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(102,'Show Metatags Title Default - Product Price','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_PRICE_STATUS','1','Display Product Price in Meta Tags Title 0= off 1= on',5,53,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(103,'Show Metatags Title Default - Product Tagline','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Product Tagline in Meta Tags Title 0= off 1= on',5,54,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),(104,'PRODUCT Attribute is Display Only - Default','DEFAULT_PRODUCT_ATTRIBUTES_DISPLAY_ONLY','0','PRODUCT Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',1,200,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(105,'PRODUCT Attribute is Free - Default','DEFAULT_PRODUCT_ATTRIBUTE_IS_FREE','1','PRODUCT Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',1,201,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(106,'PRODUCT Attribute is Default - Default','DEFAULT_PRODUCT_ATTRIBUTES_DEFAULT','0','PRODUCT Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',1,202,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(107,'PRODUCT Attribute is Discounted - Default','DEFAULT_PRODUCT_ATTRIBUTES_DISCOUNTED','1','PRODUCT Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',1,203,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(108,'PRODUCT Attribute is Included in Base Price - Default','DEFAULT_PRODUCT_ATTRIBUTES_PRICE_BASE_INCLUDED','1','PRODUCT Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',1,204,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(109,'PRODUCT Attribute is Required - Default','DEFAULT_PRODUCT_ATTRIBUTES_REQUIRED','0','PRODUCT Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',1,205,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(110,'PRODUCT Attribute Price Prefix - Default','DEFAULT_PRODUCT_PRICE_PREFIX','1','PRODUCT Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',1,206,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(111,'PRODUCT Attribute Weight Prefix - Default','DEFAULT_PRODUCT_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','PRODUCT Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',1,207,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(112,'MUSIC Attribute is Display Only - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DISPLAY_ONLY','0','MUSIC Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',2,200,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(113,'MUSIC Attribute is Free - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTE_IS_FREE','1','MUSIC Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',2,201,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(114,'MUSIC Attribute is Default - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DEFAULT','0','MUSIC Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',2,202,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(115,'MUSIC Attribute is Discounted - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DISCOUNTED','1','MUSIC Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',2,203,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(116,'MUSIC Attribute is Included in Base Price - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_PRICE_BASE_INCLUDED','1','MUSIC Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',2,204,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(117,'MUSIC Attribute is Required - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_REQUIRED','0','MUSIC Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',2,205,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(118,'MUSIC Attribute Price Prefix - Default','DEFAULT_PRODUCT_MUSIC_PRICE_PREFIX','1','MUSIC Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',2,206,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(119,'MUSIC Attribute Weight Prefix - Default','DEFAULT_PRODUCT_MUSIC_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','MUSIC Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',2,207,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(120,'DOCUMENT GENERAL Attribute is Display Only - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DISPLAY_ONLY','0','DOCUMENT GENERAL Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',3,200,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(121,'DOCUMENT GENERAL Attribute is Free - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTE_IS_FREE','1','DOCUMENT GENERAL Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',3,201,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(122,'DOCUMENT GENERAL Attribute is Default - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DEFAULT','0','DOCUMENT GENERAL Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',3,202,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(123,'DOCUMENT GENERAL Attribute is Discounted - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DISCOUNTED','1','DOCUMENT GENERAL Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',3,203,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(124,'DOCUMENT GENERAL Attribute is Included in Base Price - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_PRICE_BASE_INCLUDED','1','DOCUMENT GENERAL Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',3,204,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(125,'DOCUMENT GENERAL Attribute is Required - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_REQUIRED','0','DOCUMENT GENERAL Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',3,205,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(126,'DOCUMENT GENERAL Attribute Price Prefix - Default','DEFAULT_DOCUMENT_GENERAL_PRICE_PREFIX','1','DOCUMENT GENERAL Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',3,206,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(127,'DOCUMENT GENERAL Attribute Weight Prefix - Default','DEFAULT_DOCUMENT_GENERAL_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','DOCUMENT GENERAL Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',3,207,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(128,'DOCUMENT PRODUCT Attribute is Display Only - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DISPLAY_ONLY','0','DOCUMENT PRODUCT Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',4,200,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(129,'DOCUMENT PRODUCT Attribute is Free - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTE_IS_FREE','1','DOCUMENT PRODUCT Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',4,201,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(130,'DOCUMENT PRODUCT Attribute is Default - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DEFAULT','0','DOCUMENT PRODUCT Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',4,202,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(131,'DOCUMENT PRODUCT Attribute is Discounted - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DISCOUNTED','1','DOCUMENT PRODUCT Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',4,203,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(132,'DOCUMENT PRODUCT Attribute is Included in Base Price - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_PRICE_BASE_INCLUDED','1','DOCUMENT PRODUCT Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',4,204,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(133,'DOCUMENT PRODUCT Attribute is Required - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_REQUIRED','0','DOCUMENT PRODUCT Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',4,205,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(134,'DOCUMENT PRODUCT Attribute Price Prefix - Default','DEFAULT_DOCUMENT_PRODUCT_PRICE_PREFIX','1','DOCUMENT PRODUCT Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',4,206,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(135,'DOCUMENT PRODUCT Attribute Weight Prefix - Default','DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','DOCUMENT PRODUCT Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',4,207,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(136,'PRODUCT FREE SHIPPING Attribute is Display Only - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DISPLAY_ONLY','0','PRODUCT FREE SHIPPING Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',5,201,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(137,'PRODUCT FREE SHIPPING Attribute is Free - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTE_IS_FREE','1','PRODUCT FREE SHIPPING Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',5,201,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(138,'PRODUCT FREE SHIPPING Attribute is Default - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DEFAULT','0','PRODUCT FREE SHIPPING Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',5,202,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(139,'PRODUCT FREE SHIPPING Attribute is Discounted - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DISCOUNTED','1','PRODUCT FREE SHIPPING Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',5,203,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(140,'PRODUCT FREE SHIPPING Attribute is Included in Base Price - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_PRICE_BASE_INCLUDED','1','PRODUCT FREE SHIPPING Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',5,204,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(141,'PRODUCT FREE SHIPPING Attribute is Required - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_REQUIRED','0','PRODUCT FREE SHIPPING Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',5,205,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),(142,'PRODUCT FREE SHIPPING Attribute Price Prefix - Default','DEFAULT_PRODUCT_FREE_SHIPPING_PRICE_PREFIX','1','PRODUCT FREE SHIPPING Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',5,206,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),(143,'PRODUCT FREE SHIPPING Attribute Weight Prefix - Default','DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','PRODUCT FREE SHIPPING Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',5,207,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), ');
/*!40000 ALTER TABLE `product_type_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
CREATE TABLE `product_types` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(255) NOT NULL default '',
  `type_handler` varchar(255) NOT NULL default '',
  `type_master_type` int(11) NOT NULL default '1',
  `allow_add_to_cart` char(1) NOT NULL default 'Y',
  `default_image` varchar(255) NOT NULL default '',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`type_id`),
  KEY `idx_type_master_type_zen` (`type_master_type`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
INSERT INTO `product_types` VALUES (1,'Product - General','product',1,'Y','','2009-11-19 12:39:40','2009-11-19 12:39:40'),(2,'Product - Music','product_music',1,'Y','','2009-11-19 12:39:40','2009-11-19 12:39:40'),(3,'Document - General','document_general',3,'N','','2009-11-19 12:39:40','2009-11-19 12:39:40'),(4,'Document - Product','document_product',3,'Y','','2009-11-19 12:39:40','2009-11-19 12:39:40'),(5,'Product - Free Shipping','product_free_shipping',1,'Y','','2009-11-19 12:39:40','2009-11-19 12:39:40');
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types_to_category`
--

DROP TABLE IF EXISTS `product_types_to_category`;
CREATE TABLE `product_types_to_category` (
  `product_type_id` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL default '0',
  KEY `idx_category_id_zen` (`category_id`),
  KEY `idx_product_type_id_zen` (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `product_types_to_category`
--

LOCK TABLES `product_types_to_category` WRITE;
/*!40000 ALTER TABLE `product_types_to_category` DISABLE KEYS */;
INSERT INTO `product_types_to_category` VALUES (2,91),(3,93),(4,93),(1,97),(3,97),(4,90),(4,92),(4,97),(5,98);
/*!40000 ALTER TABLE `product_types_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `products_id` int(11) NOT NULL auto_increment,
  `products_type` int(11) NOT NULL default '1',
  `products_quantity` float NOT NULL default '0',
  `products_model` varchar(32) default NULL,
  `products_image` varchar(64) default NULL,
  `products_price` decimal(15,4) NOT NULL default '0.0000',
  `products_virtual` tinyint(1) NOT NULL default '0',
  `products_date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `products_last_modified` datetime default NULL,
  `products_date_available` datetime default NULL,
  `products_weight` float NOT NULL default '0',
  `products_status` tinyint(1) NOT NULL default '0',
  `products_tax_class_id` int(11) NOT NULL default '0',
  `manufacturers_id` int(11) default NULL,
  `products_ordered` float NOT NULL default '0',
  `products_quantity_order_min` float NOT NULL default '1',
  `products_quantity_order_units` float NOT NULL default '1',
  `products_priced_by_attribute` tinyint(1) NOT NULL default '0',
  `product_is_free` tinyint(1) NOT NULL default '0',
  `product_is_call` tinyint(1) NOT NULL default '0',
  `products_quantity_mixed` tinyint(1) NOT NULL default '0',
  `product_is_always_free_shipping` tinyint(1) NOT NULL default '0',
  `products_qty_box_status` tinyint(1) NOT NULL default '1',
  `products_quantity_order_max` float NOT NULL default '0',
  `products_sort_order` int(11) NOT NULL default '0',
  `products_discount_type` tinyint(1) NOT NULL default '0',
  `products_discount_type_from` tinyint(1) NOT NULL default '0',
  `products_price_sorter` decimal(15,4) NOT NULL default '0.0000',
  `master_categories_id` int(11) NOT NULL default '0',
  `products_mixed_discount_quantity` tinyint(1) NOT NULL default '1',
  `metatags_title_status` tinyint(1) NOT NULL default '0',
  `metatags_products_name_status` tinyint(1) NOT NULL default '0',
  `metatags_model_status` tinyint(1) NOT NULL default '0',
  `metatags_price_status` tinyint(1) NOT NULL default '0',
  `metatags_title_tagline_status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`products_id`),
  KEY `idx_products_date_added_zen` (`products_date_added`),
  KEY `idx_products_status_zen` (`products_status`)
) ENGINE=MyISAM AUTO_INCREMENT=230 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,1000,'SAMPLE-T01','sample_t/t-shirt_01.gif','4500.0000',0,'2007-01-16 15:03:58','2007-01-21 22:27:22',NULL,0.25,1,1,3,0,1,1,0,0,0,0,0,1,0,0,0,0,'4050.0000',2,1,0,0,0,0,0),(2,1,1000,'SAMPLE-T02','sample_t/t-shirt_02.gif','4500.0000',0,'2007-01-16 15:03:58','2007-01-21 22:28:03',NULL,0.25,1,1,3,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',4,1,0,0,0,0,0),(3,1,1000,'SAMPLE-T03','sample_t/t-shirt_03.gif','4500.0000',0,'2007-01-16 15:03:56','2007-01-21 22:27:35',NULL,0.25,1,1,3,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',2,1,0,0,0,0,0),(4,1,1000,'SAMPLE-T04','sample_t/t-shirt_04.gif','4500.0000',0,'2007-01-16 15:03:56','2007-01-20 17:48:17',NULL,0.25,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',2,1,0,0,0,0,0),(5,1,1000,'SAMPLE-T05','sample_t/t-shirt_05.gif','4500.0000',0,'2007-01-16 15:03:56','2007-01-21 22:27:48',NULL,0.25,1,1,3,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',4,1,0,0,0,0,0),(6,1,1000,'SAMPLE-T06','sample_t/t-shirt_06.gif','4500.0000',0,'2007-01-16 15:03:58','2007-01-16 15:03:58',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',5,1,0,0,0,0,0),(7,1,1000,'SAMPLE-T06KIDS','sample_t/t-shirt_06.gif','3800.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.2,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',7,1,0,0,0,0,0),(8,1,1000,'SAMPLE-T07','sample_t/t-shirt_07.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',8,1,0,0,0,0,0),(9,1,1000,'SAMPLE-T08','sample_t/t-shirt_08.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',5,1,0,0,0,0,0),(10,1,1000,'SAMPLE-T09','sample_t/t-shirt_09.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',8,1,0,0,0,0,0),(11,1,1000,'SAMPLE-T10','sample_t/t-shirt_10.gif','4500.0000',0,'2007-01-16 15:03:58','2007-01-18 00:42:21',NULL,0.25,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',5,1,0,0,0,0,0),(12,1,0,'SAMPLE-T10KIDS','sample_t/t-shirt_10.gif','3800.0000',0,'2007-01-16 15:03:57','2007-02-01 18:55:14',NULL,0.2,1,1,1,0,1,1,0,0,0,0,0,1,0,10,0,0,'3800.0000',7,1,0,0,0,0,0),(13,1,1000,'SAMPLE-T11','sample_t/t-shirt_11.gif','4500.0000',0,'2007-01-16 15:03:57','2007-02-01 18:56:23',NULL,0.25,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',8,1,0,0,0,0,0),(14,1,0,'SAMPLE-T12','sample_t/t-shirt_12.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-21 22:11:55',NULL,0.25,1,1,0,0,1,1,0,0,0,0,0,1,0,12,0,0,'4500.0000',5,1,0,0,0,0,0),(15,1,1000,'SAMPLE-T13','sample_t/t-shirt_13.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',9,1,0,0,0,0,0),(16,1,1000,'SAMPLE-T13KIDS','sample_t/t-shirt_13.gif','3800.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.2,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',10,1,0,0,0,0,0),(17,1,1000,'SAMPLE-T14','sample_t/t-shirt_14.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',11,0,0,0,0,0,0),(18,1,1000,'SAMPLE-T15','sample_t/t-shirt_15.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',8,1,0,0,0,0,0),(19,1,1000,'SAMPLE-T16','sample_t/t-shirt_16.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-21 22:25:53',NULL,0.25,1,1,4,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',12,1,0,0,0,0,0),(20,1,1000,'SAMPLE-T16KIDS','sample_t/t-shirt_16.gif','3800.0000',0,'2007-01-16 15:03:57','2007-01-21 22:30:37',NULL,0.2,1,1,4,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',7,1,0,0,0,0,0),(21,1,1000,'SAMPLE-T17','sample_t/t-shirt_17.gif','4500.0000',0,'2007-01-16 15:03:58','2007-01-21 22:26:50',NULL,0.25,1,1,3,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',13,1,0,0,0,0,0),(22,1,1000,'SAMPLE-T18','sample_t/t-shirt_18.gif','4500.0000',0,'2007-01-16 15:03:58','2007-01-21 22:26:38',NULL,0.25,1,1,3,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',13,1,0,0,0,0,0),(23,1,1000,'SAMPLE-T19','sample_t/t-shirt_19.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',14,1,0,0,0,0,0),(24,1,1000,'SAMPLE-T20','sample_t/t-shirt_20.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',14,1,0,0,0,0,0),(25,1,1000,'SAMPLE-T21','sample_t/t-shirt_21.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',11,1,0,0,0,0,0),(26,1,1000,'SAMPLE-T21KIDS','sample_t/t-shirt_21.gif','3800.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.2,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',7,1,0,0,0,0,0),(27,1,1000,'SAMPLE-T22','sample_t/t-shirt_22.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-21 22:31:27',NULL,0.25,1,1,4,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',12,1,0,0,0,0,0),(28,1,1000,'SAMPLE-T22KIDS','sample_t/t-shirt_22.gif','3800.0000',0,'2007-01-16 15:03:57','2007-01-21 22:30:49',NULL,0.2,1,1,4,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',7,1,0,0,0,0,0),(29,1,1000,'SAMPLE-T23','sample_t/t-shirt_23.gif','4500.0000',0,'2007-01-16 15:03:58','2007-01-16 15:03:58',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',14,1,0,0,0,0,0),(30,1,1000,'SAMPLE-T23KIDS','sample_t/t-shirt_23.gif','3800.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.2,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',7,1,0,0,0,0,0),(31,1,1000,'SAMPLE-T24','sample_t/t-shirt_24.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',14,1,0,0,0,0,0),(32,1,1000,'SAMPLE-T25','sample_t/t-shirt_25.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-18 00:35:01',NULL,0.25,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',14,1,0,0,0,0,0),(33,1,1000,'SAMPLE-T26','sample_t/t-shirt_26.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',13,1,0,0,0,0,0),(34,1,1000,'SAMPLE-T27','sample_t/t-shirt_27.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',13,1,0,0,0,0,0),(35,1,1000,'SAMPLE-T28','sample_t/t-shirt_28.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',9,1,0,0,0,0,0),(36,1,1000,'SAMPLE-T28KIDS','sample_t/t-shirt_28.gif','3800.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.2,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',10,1,0,0,0,0,0),(37,1,1000,'SAMPLE-T29','sample_t/t-shirt_29.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',9,1,0,0,0,0,0),(38,1,1000,'SAMPLE-T30','sample_t/t-shirt_30.gif','4500.0000',0,'2007-01-16 15:03:58','2007-01-26 03:38:47',NULL,0.25,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',9,1,0,0,0,0,0),(39,1,1000,'SAMPLE-T30KIDS','sample_t/t-shirt_30.gif','3800.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.2,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',10,1,0,0,0,0,0),(40,1,1000,'SAMPLE-T31','sample_t/t-shirt_31.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',9,1,0,0,0,0,0),(41,1,1000,'SAMPLE-T31KIDS','sample_t/t-shirt_31.gif','3800.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.2,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',10,1,0,0,0,0,0),(42,1,1000,'SAMPLE-T32','sample_t/t-shirt_32.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',13,1,0,0,0,0,0),(43,1,1000,'SAMPLE-T33','sample_t/t-shirt_33.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-21 21:26:40','2007-06-10 00:00:00',0.25,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',12,1,0,0,0,0,0),(44,1,1000,'SAMPLE-T34','sample_t/t-shirt_34.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',12,1,0,0,0,0,0),(45,1,1000,'SAMPLE-T35','sample_t/t-shirt_35.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',13,1,0,0,0,0,0),(46,1,1000,'SAMPLE-T36','sample_t/t-shirt_36.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-21 22:26:23',NULL,0.25,1,1,4,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',13,1,0,0,0,0,0),(47,1,1000,'SAMPLE-T37','sample_t/t-shirt_37.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',11,1,0,0,0,0,0),(48,1,1000,'SAMPLE-T38','sample_t/t-shirt_38.gif','4500.0000',0,'2007-01-16 15:03:58','2007-01-21 21:25:57','2007-04-01 00:00:00',0.25,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',13,1,0,0,0,0,0),(49,1,1000,'SAMPLE-T39','sample_t/t-shirt_39.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-18 00:37:13',NULL,0.25,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',13,1,0,0,0,0,0),(50,1,1000,'SAMPLE-T40','sample_t/t-shirt_40.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-21 22:24:08',NULL,0.25,1,1,4,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',15,1,0,0,0,0,0),(51,1,1000,'SAMPLE-T41','sample_t/t-shirt_41.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-21 22:23:36',NULL,0.25,1,1,2,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',16,1,0,0,0,0,0),(52,1,1000,'SAMPLE-T41KIDS','sample_t/t-shirt_41.gif','3800.0000',0,'2007-01-16 15:03:57','2007-01-21 22:28:43',NULL,0.2,1,1,2,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',7,1,0,0,0,0,0),(53,1,1000,'SAMPLE-T42','sample_t/t-shirt_42.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-21 22:22:48',NULL,0.25,1,1,1,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',16,1,0,0,0,0,0),(54,1,1000,'SAMPLE-T43','sample_t/t-shirt_43.gif','4500.0000',0,'2007-01-16 15:03:58','2007-01-21 22:25:40',NULL,0.25,1,1,1,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',12,1,0,0,0,0,0),(55,1,1000,'SAMPLE-T43KIDS','sample_t/t-shirt_43.gif','3800.0000',0,'2007-01-16 15:03:57','2007-01-21 22:29:01',NULL,0.2,1,1,1,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',7,1,0,0,0,0,0),(56,1,1000,'SAMPLE-T44','sample_t/t-shirt_44.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-21 22:25:19',NULL,0.25,1,1,1,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',12,1,0,0,0,0,0),(57,1,1000,'SAMPLE-T44KIDS','sample_t/t-shirt_44.gif','3800.0000',0,'2007-01-16 15:03:57','2007-01-21 21:58:29','2007-06-03 00:00:00',0.2,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',17,1,0,0,0,0,0),(58,1,1000,'SAMPLE-T45','sample_t/t-shirt_45.gif','4500.0000',0,'2007-01-16 15:03:58','2007-01-16 15:03:58',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',12,1,0,0,0,0,0),(59,1,1000,'SAMPLE-T45KIDS','sample_t/t-shirt_45.gif','3800.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.2,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',17,1,0,0,0,0,0),(60,1,1000,'SAMPLE-T46','sample_t/t-shirt_46.gif','4500.0000',0,'2007-01-16 15:03:58','2007-01-21 22:24:33',NULL,0.25,1,1,1,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',12,1,0,0,0,0,0),(61,1,1000,'SAMPLE-T46KIDS','sample_t/t-shirt_46.gif','3800.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.2,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'3800.0000',17,1,0,0,0,0,0),(62,1,1000,'SAMPLE-T47','sample_t/t-shirt_47.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-21 22:22:26',NULL,0.25,1,1,1,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',16,1,0,0,0,0,0),(63,1,1000,'SAMPLE-T48','sample_t/t-shirt_48.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-21 22:25:02','2007-08-12 00:00:00',0.25,1,1,2,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',12,1,0,0,0,0,0),(64,1,1000,'SAMPLE-T49','sample_t/t-shirt_49.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-21 22:23:12',NULL,0.25,1,1,2,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',16,1,0,0,0,0,0),(65,1,1000,'SAMPLE-T50','sample_t/t-shirt_50.gif','4500.0000',0,'2007-01-16 15:03:57','2007-01-16 15:03:57',NULL,0.25,1,1,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',2,1,0,0,0,0,0),(90,1,11,'SAMPLE-WP03','sample_w/wallpaper_03.jpg','200.0000',1,'2007-01-16 15:50:07','2007-01-23 11:34:23',NULL,0,1,1,0,0,1,1,0,0,0,0,2,1,0,3,0,0,'200.0000',23,1,0,0,0,0,0),(89,1,1000,'SAMPLE-WP02','sample_w/wallpaper_02.jpg','200.0000',1,'2007-01-16 15:50:07','2007-01-23 11:34:10',NULL,0,1,1,0,0,1,1,0,0,0,0,2,1,0,2,0,0,'200.0000',23,1,0,0,0,0,0),(88,1,1000,'SAMPLE-WP01','sample_w/wallpaper_01.jpg','200.0000',1,'2007-01-16 15:50:07','2007-01-23 11:33:59',NULL,0,1,1,0,0,1,1,0,0,0,0,2,1,0,1,0,0,'200.0000',23,1,0,0,0,0,0),(70,1,1000,'GIFT005','gift_certificates/gv_5.gif','500.0000',0,'2007-01-16 15:03:58','2007-01-20 14:40:45',NULL,0,1,0,0,0,1,1,0,0,0,0,0,1,0,500,0,0,'500.0000',20,1,0,0,0,0,0),(71,1,1000,'GIFT 010','gift_certificates/gv_10.gif','1000.0000',0,'2007-01-16 15:03:58','2007-01-20 14:37:46',NULL,0,1,0,0,0,1,1,0,0,0,0,0,1,0,1000,0,0,'1000.0000',20,1,0,0,0,0,0),(72,1,1000,'GIFT025','gift_certificates/gv_25.gif','2500.0000',0,'2007-01-16 15:03:58','2007-01-20 14:38:41',NULL,0,1,0,0,0,1,1,0,0,0,0,0,1,0,2500,0,0,'2500.0000',20,1,0,0,0,0,0),(73,1,1000,'GIFT050','gift_certificates/gv_50.gif','5000.0000',0,'2007-01-16 15:03:58','2007-01-27 20:58:47',NULL,0,1,0,0,0,1,1,0,0,0,0,0,1,0,5000,0,0,'5000.0000',20,1,0,0,0,0,0),(74,1,1000,'GIFT100','gift_certificates/gv_100.gif','10000.0000',0,'2007-01-16 15:03:58','2007-01-20 14:38:11',NULL,0,1,0,0,0,1,1,0,0,0,0,0,1,0,10000,0,0,'10000.0000',20,1,0,0,0,0,0),(75,1,1000,'GIFTSELECT','gift_certificates/gv.gif','0.0000',0,'2007-01-16 15:03:58','2007-01-22 10:56:42',NULL,0,1,0,0,0,1,1,0,0,0,0,0,1,0,20000,0,0,'0.0000',20,1,0,0,0,0,0),(76,1,1000,'NOTLINK01','sample_t/t-sample.gif','2500.0000',0,'2007-01-16 15:03:58','2007-01-18 00:28:51',NULL,1,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'2500.0000',0,1,0,0,0,0,0),(77,1,1000,'NOTLINK02','sample_t/t-sample.gif','2500.0000',0,'2007-01-16 15:03:58','2007-01-18 00:29:10',NULL,1,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'2500.0000',0,1,0,0,0,0,0),(78,1,1000,'NOTLINK03','sample_t/t-sample.gif','2500.0000',0,'2007-01-16 15:03:58','2007-01-18 00:29:22',NULL,1,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'2500.0000',0,1,0,0,0,0,0),(79,1,1000,'NOTLINK04','sample_t/t-sample.gif','2500.0000',0,'2007-01-16 15:03:58','2007-01-18 00:29:33',NULL,1,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'2000.0000',0,1,0,0,0,0,0),(80,1,1000,'NOTLINK05','sample_t/t-sample.gif','2500.0000',0,'2007-01-16 15:03:58','2007-01-18 00:29:52',NULL,1,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'2500.0000',0,1,0,0,0,0,0),(81,1,1000,'NOTLINK08','sample_t/t-sample.gif','2500.0000',0,'2007-01-16 15:03:58','2007-01-18 00:30:45',NULL,1,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'2500.0000',0,1,0,0,0,0,0),(82,1,1000,'NOTLINK10','sample_t/t-sample.gif','2500.0000',0,'2007-01-16 15:03:58','2007-01-18 00:31:56',NULL,1,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'2500.0000',0,1,0,0,0,0,0),(83,1,1000,'NOTLINK06','sample_t/t-sample.gif','2500.0000',0,'2007-01-16 15:03:58','2007-01-18 00:31:04',NULL,1,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'2500.0000',0,1,0,0,0,0,0),(84,1,1000,'NOTLINK07','sample_t/t-sample.gif','2500.0000',0,'2007-01-16 15:03:58','2007-01-18 00:31:20',NULL,1,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'2500.0000',0,1,0,0,0,0,0),(85,1,1000,'NOTLINK12','sample_t/t-sample.gif','2500.0000',0,'2007-01-16 15:03:58','2007-01-18 00:32:37',NULL,1,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'2500.0000',0,1,0,0,0,0,0),(86,1,1000,'NOTLINK09','sample_t/t-sample.gif','2500.0000',0,'2007-01-16 15:03:58','2007-01-18 00:31:41',NULL,1,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'2500.0000',0,1,0,0,0,0,0),(87,1,1000,'NOTLINK11','sample_t/t-sample.gif','2500.0000',0,'2007-01-16 15:03:58','2007-01-18 00:32:23',NULL,1,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'2500.0000',0,1,0,0,0,0,0),(92,1,1000,'FREEALL','sample_t/t-sample.gif','0.0000',0,'2007-01-16 15:50:07','2007-01-26 15:10:55',NULL,1,1,0,0,0,1,1,0,1,0,0,1,1,0,10,0,0,'0.0000',40,1,0,0,0,0,0),(93,1,1000,'FREE3','sample_t/t-sample.gif','10000.0000',0,'2007-01-16 15:50:07','2007-01-18 09:59:02',NULL,1,1,0,0,0,1,1,0,1,0,0,0,1,0,40,0,0,'0.0000',40,1,0,0,0,0,0),(91,1,1000,'SAMPLE-WP04','sample_w/wallpaper_04.jpg','200.0000',1,'2007-01-16 15:50:07','2007-01-23 11:34:34',NULL,0,1,1,4,0,1,1,0,0,0,0,2,1,0,4,0,0,'200.0000',23,1,0,0,0,0,0),(222,1,1000,'FREESHIP1','sample_t/t-shirt_01.gif','4000.0000',0,'2007-01-26 15:27:23','2007-01-26 15:39:06',NULL,50,1,0,0,0,1,1,0,0,0,0,1,1,0,1,0,0,'4000.0000',79,1,0,0,0,0,0),(95,1,1000,'FREE1','sample_t/t-sample.gif','10000.0000',0,'2007-01-16 15:50:07','2007-01-18 09:57:54',NULL,10,1,0,0,0,1,1,0,1,0,0,1,1,0,20,0,0,'0.0000',40,1,0,0,0,0,0),(101,1,1000,'CALL3','sample_t/t-sample.gif','10000.0000',0,'2007-01-16 17:24:53','2007-01-24 09:52:47',NULL,1,1,0,0,0,1,1,0,0,1,0,0,1,0,0,0,0,'8100.0000',64,1,0,0,0,0,0),(98,1,1000,'FREEATTRB1','sample_t/t-sample.gif','10000.0000',0,'2007-01-16 15:50:07','2007-01-23 00:15:26',NULL,0,1,0,0,0,1,1,0,1,0,0,0,1,0,50,0,0,'0.0000',40,1,0,0,0,0,0),(99,1,1000,'CALL1','sample_t/t-sample.gif','0.0000',0,'2007-01-16 15:50:07','2007-01-16 15:50:07',NULL,1,1,0,NULL,0,1,1,0,0,1,0,0,1,0,0,0,0,'0.0000',41,1,0,0,0,0,0),(100,1,1000,'CALL2','sample_t/t-sample.gif','10000.0000',0,'2007-01-16 15:50:07','2007-01-21 00:15:45',NULL,1,1,0,0,0,1,1,0,0,1,0,0,1,0,0,0,0,'10000.0000',41,1,0,0,0,0,0),(102,1,1000,'DISCNTQTY1','sample_t/t-sample.gif','10000.0000',0,'2007-01-16 21:10:16','2007-01-17 23:37:02',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,10,1,0,'10000.0000',45,1,0,0,0,0,0),(103,1,1000,'DISCNTQTY2','sample_t/t-sample.gif','10000.0000',0,'2007-01-16 21:10:16','2007-01-21 00:33:44',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,20,3,0,'10000.0000',45,1,0,0,0,0,0),(104,1,1000,'DISCNTQTY3','sample_t/t-sample.gif','10000.0000',0,'2007-01-16 21:10:17','2007-01-17 23:37:35',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,30,2,0,'10000.0000',45,1,0,0,0,0,0),(115,1,1000,'SEO','','10000.0000',0,'2007-01-16 21:41:07','2007-01-17 16:30:59',NULL,1,1,0,0,0,1,1,0,0,0,1,0,1,0,0,0,0,'10000.0000',58,1,1,1,1,1,1),(113,1,1000,'DISCNTQTY8','sample_t/t-sample.gif','10000.0000',0,'2007-01-16 21:10:17','2007-01-24 15:56:19',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,80,1,1,'5000.0000',45,1,0,0,0,0,0),(112,1,1000,'DISCNTQTY7','sample_t/t-sample.gif','10000.0000',0,'2007-01-16 21:10:17','2007-01-24 15:55:33',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,70,1,0,'10000.0000',45,1,0,0,0,0,0),(111,1,1000,'DISCNTQTY5','sample_t/t-sample.gif','10000.0000',0,'2007-01-16 21:10:17','2007-01-17 23:55:45',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,50,1,1,'5000.0000',45,1,0,0,0,0,0),(110,1,1000,'DISCNTQTY4','sample_t/t-sample.gif','10000.0000',0,'2007-01-16 21:10:17','2007-01-17 23:55:21',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,40,1,0,'9500.0000',45,1,0,0,0,0,0),(116,1,1000,'SEO2','','10000.0000',0,'2007-01-16 21:54:19','2007-01-16 22:00:23',NULL,1,1,0,0,0,1,1,0,0,0,1,0,1,0,10,0,0,'10000.0000',58,1,0,0,0,0,0),(151,1,1000,'ATTR_RADIO3','no_picture.gif','0.0000',0,'2007-01-17 18:12:19','2007-01-18 01:04:39',NULL,0,1,0,0,0,10,1,1,0,0,0,0,1,0,0,0,0,'5.0000',63,1,0,0,0,0,0),(227,1,1000,'ATTR_FILE','sample_t/t-shirt_01.gif','4000.0000',0,'2007-01-31 01:40:08','2007-02-01 18:36:02',NULL,0.2,1,0,0,0,1,1,1,0,0,0,0,1,0,0,0,0,'5000.0000',101,1,0,0,0,0,0),(139,1,1000,'ATTR_TEXT1','sample_t/t-shirt_01.gif','4000.0000',0,'2007-01-17 15:20:31','2007-01-17 17:28:37',NULL,0.2,1,0,0,0,1,1,1,0,0,0,0,1,0,0,0,0,'4000.0000',60,1,0,0,0,0,0),(140,1,1000,'ATTR_TEXT2','sample_t/t-shirt_02.gif','4000.0000',0,'2007-01-17 15:20:31','2007-01-17 17:29:01',NULL,0.2,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4000.0000',60,1,0,0,0,0,0),(141,1,1000,'ATTR_RDONLY','no_picture.gif','4000.0000',0,'2007-01-17 15:20:31','2007-01-17 17:31:44',NULL,0.2,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4000.0000',61,1,0,0,0,0,0),(142,1,1000,'ATTR_CHKBOX1','sample_t/t-shirt_01.gif','4000.0000',0,'2007-01-17 15:20:31','2007-01-17 15:20:31',NULL,0.2,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4000.0000',62,1,0,0,0,0,0),(143,1,1000,'ATTR_CHKBOX2','sample_t/t-shirt_02.gif','0.0000',0,'2007-01-17 15:20:31','2007-01-17 17:57:25',NULL,0.2,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'0.0000',62,1,0,0,0,0,0),(144,1,1000,'ATTR_DROPDOWN1','sample_t/t-shirt_01.gif','4000.0000',0,'2007-01-17 15:20:31','2007-01-17 19:09:09',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4000.0000',63,1,0,0,0,0,0),(152,1,1000,'ATTR_DROPDOWN2','sample_t/t-shirt_01.gif','4000.0000',0,'2007-01-17 19:09:41','2007-01-21 00:04:16',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'3600.0000',64,0,0,0,0,0,0),(146,1,1000,'ATTR_DROPDOWN3','no_picture.gif','0.0000',0,'2007-01-17 15:20:31','2007-01-18 01:04:56',NULL,0,1,0,0,0,10,1,1,0,0,0,0,1,0,0,0,0,'5.0000',63,1,0,0,0,0,0),(156,1,1000,'SALE10-1','sample_t/t-shirt_01.gif','10000.0000',0,'2007-01-18 14:13:01','2007-01-26 15:19:15',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'9000.0000',67,1,0,0,0,0,0),(155,1,1000,'FREEATTRB2','sample_t/t-sample.gif','10000.0000',0,'2007-01-18 10:22:57','2007-01-18 10:25:25',NULL,0,1,0,0,0,1,1,0,1,0,0,0,1,0,50,0,0,'0.0000',40,1,0,0,0,0,0),(157,1,1000,'SALE10-2','sample_t/t-shirt_02.gif','10000.0000',0,'2007-01-18 14:13:01','2007-01-18 14:13:01',NULL,1,1,0,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'10000.0000',67,1,0,0,0,0,0),(158,1,1000,'SALE10-3','sample_t/t-shirt_03.gif','10000.0000',0,'2007-01-18 14:13:01','2007-01-18 23:24:03',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'9000.0000',67,1,0,0,0,0,0),(159,1,1000,'SALE500-1','sample_t/t-shirt_01.gif','10000.0000',0,'2007-01-18 14:13:01','2007-01-18 14:13:01',NULL,1,1,0,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'9500.0000',68,1,0,0,0,0,0),(160,1,1000,'SALE500-2','sample_t/t-shirt_02.gif','10000.0000',0,'2007-01-18 14:13:01','2007-01-19 01:10:08',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'9500.0000',68,1,0,0,0,0,0),(161,1,1000,'SALE500-3','sample_t/t-shirt_03.gif','10000.0000',0,'2007-01-18 14:13:01','2007-01-18 14:13:01',NULL,1,1,0,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'9500.0000',68,1,0,0,0,0,0),(162,1,1000,'SALESET8000-1','sample_t/t-shirt_01.gif','10000.0000',0,'2007-01-18 14:13:01','2007-01-18 14:13:01',NULL,1,1,0,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'8000.0000',69,1,0,0,0,0,0),(163,1,1000,'SALESET8000-2','sample_t/t-shirt_02.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-19 01:15:03',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'8000.0000',69,1,0,0,0,0,0),(164,1,1000,'SALESET8000-3','sample_t/t-shirt_03.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-18 14:13:02',NULL,1,1,0,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'8000.0000',69,1,0,0,0,0,0),(165,1,1000,'SPECIAL1-1','sample_t/t-shirt_01.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-18 14:13:02',NULL,1,1,0,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'8000.0000',70,1,0,0,0,0,0),(166,1,1000,'SPECIAL2-1','sample_t/t-shirt_01.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-18 14:13:02',NULL,1,1,0,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'5000.0000',70,1,0,0,0,0,0),(167,1,1000,'SPECIAL2-2','sample_t/t-shirt_02.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-18 14:13:02',NULL,1,1,0,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'5000.0000',70,1,0,0,0,0,0),(168,1,1000,'SPECIAL2-3','sample_t/t-shirt_03.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-18 14:13:02',NULL,1,1,0,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'5000.0000',70,1,0,0,0,0,0),(169,1,1000,'SPECIAL3','sample_t/t-shirt_04.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-18 14:29:48',NULL,1,1,0,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'10000.0000',70,0,0,0,0,0,0),(170,1,1000,'SALE_ETC1','sample_t/t-shirt_01.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-18 14:13:02',NULL,1,1,0,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'10000.0000',71,1,0,0,0,0,0),(171,1,1000,'SALE_ETC2','sample_t/t-shirt_02.gif','7500.0000',0,'2007-01-18 14:13:03','2007-01-18 14:13:03',NULL,1,1,0,NULL,0,1,1,0,0,0,0,0,1,0,0,0,0,'7500.0000',71,1,0,0,0,0,0),(172,1,1000,'NOSALE','sample_t/t-shirt_04.gif','10000.0000',0,'2007-01-18 14:13:01','2007-01-26 15:18:09',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'10000.0000',72,1,0,0,0,0,0),(173,1,1000,'SALE_SPECIAL1-1','sample_t/t-shirt_03.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-19 13:25:48',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',73,1,0,0,0,0,0),(174,1,1000,'SALE_SPECIAL1-2','sample_t/t-shirt_04.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-19 13:27:09',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',73,1,0,0,0,0,0),(175,1,1000,'SALE_SPECIAL1-3','sample_t/t-shirt_05.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-19 13:27:22',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'4500.0000',73,1,0,0,0,0,0),(176,1,1000,'SALE_SPECIAL2-1','sample_t/t-shirt_03.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-19 13:27:42',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'9000.0000',74,1,0,0,0,0,0),(177,1,1000,'SALE_SPECIAL2-2','sample_t/t-shirt_04.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-19 13:27:54',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'9000.0000',74,1,0,0,0,0,0),(178,1,1000,'SALE_SPECIAL2-3','sample_t/t-shirt_05.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-19 13:28:06',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'9000.0000',74,1,0,0,0,0,0),(179,1,1000,'SALE_SPECIAL3-1','sample_t/t-shirt_03.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-19 13:28:29',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'5000.0000',75,1,0,0,0,0,0),(180,1,1000,'SALE_SPECIAL3-2','sample_t/t-shirt_04.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-19 13:28:44',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'5000.0000',75,1,0,0,0,0,0),(181,1,1000,'SALE_SPECIAL3-3','sample_t/t-shirt_05.gif','10000.0000',0,'2007-01-18 14:13:02','2007-01-19 13:28:59',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,'5000.0000',75,1,0,0,0,0,0),(182,1,1000,'DISCNTQTY6','sample_t/t-sample.gif','10000.0000',0,'2007-01-18 16:31:53','2007-01-24 15:54:28',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,60,1,0,'10000.0000',45,0,0,0,0,0,0),(183,1,1000,'MIN','','200.0000',0,'2007-01-18 17:13:22','2007-01-24 19:27:00',NULL,1,1,0,0,0,10,1,0,0,0,1,0,1,0,10,0,0,'200.0000',76,1,0,0,0,0,0),(184,1,1000,'MIN_ATR1','','200.0000',0,'2007-01-18 17:14:01','2007-01-24 19:46:56',NULL,1,1,0,0,0,10,1,0,0,0,1,0,1,0,20,0,0,'200.0000',76,1,0,0,0,0,0),(185,1,1000,'MIN_ATR2','','200.0000',0,'2007-01-18 17:19:58','2007-01-24 19:47:20',NULL,1,1,0,0,0,10,1,0,0,0,0,0,1,0,30,0,0,'200.0000',76,0,0,0,0,0,0),(187,1,1000,'LIMIT-5','','200.0000',0,'2007-01-19 01:58:18','2007-01-24 19:15:18',NULL,1,1,0,0,0,1,1,0,0,0,1,0,1,5,10,0,0,'200.0000',78,1,0,0,0,0,0),(188,1,1000,'LIMIT_ATR1','','200.0000',0,'2007-01-19 02:04:36','2007-01-24 19:22:43',NULL,1,1,0,0,0,1,1,0,0,0,1,0,1,5,50,0,0,'200.0000',78,1,0,0,0,0,0),(189,1,1000,'LIMIT_ATR2','','200.0000',0,'2007-01-19 02:13:38','2007-01-24 19:16:03',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,5,60,0,0,'200.0000',78,0,0,0,0,0,0),(190,1,1000,'TAXOUT','sample_t/t-sample.gif','10000.0000',0,'2007-01-23 10:39:16','2007-01-23 11:18:43',NULL,0.25,1,1,0,0,1,1,0,0,0,1,0,1,0,1,0,0,'10000.0000',81,1,0,0,0,0,0),(191,1,1000,'TAXIN','sample_t/t-sample.gif','10000.0000',0,'2007-01-23 10:41:32','2007-01-23 11:29:24',NULL,0.25,1,0,0,0,1,1,0,0,0,1,0,1,0,2,0,0,'10000.0000',81,1,0,0,0,0,0),(192,1,1000,'ATTR_IMAGE1','sample_t/t-shirt_01.gif','4000.0000',0,'2007-01-23 11:50:48','2007-01-24 00:13:12',NULL,1,1,0,0,0,1,1,0,0,0,0,0,1,0,3,0,0,'4000.0000',82,1,0,0,0,0,0),(193,1,1000,'ATTR_IMAGE2','sample_t/t-shirt_02.gif','4000.0000',0,'2007-01-23 11:53:44','2007-01-24 00:15:48',NULL,0.2,1,0,0,0,1,1,0,0,0,0,0,1,0,4,0,0,'4000.0000',82,1,0,0,0,0,0),(194,1,1000,'IMAGE1','samples/IMAGE1.jpg','4000.0000',0,'2007-01-24 00:34:30','2007-01-24 01:59:35',NULL,0.25,1,0,0,0,1,1,0,0,0,1,0,1,0,1,0,0,'4000.0000',82,1,0,0,0,0,0),(195,1,1000,'IMAGE2','samples/IMAGE2.gif','4000.0000',0,'2007-01-24 00:39:27','2007-01-24 02:21:17',NULL,0.25,1,0,0,0,1,1,0,0,0,1,0,1,0,2,0,0,'4000.0000',82,1,0,0,0,0,0),(196,1,1000,'DISCNTQTY_ATTR1','sample_t/t-shirt_01.gif','4000.0000',0,'2007-01-24 11:25:24','2007-01-25 20:01:10',NULL,0.25,1,0,0,0,1,1,0,0,0,0,0,1,0,1,0,0,'4000.0000',83,1,0,0,0,0,0),(197,1,1000,'DISCNTQTY_ATTR2','sample_t/t-shirt_01.gif','0.0000',0,'2007-01-24 15:35:08','2007-01-25 19:26:28',NULL,0.25,1,0,0,0,1,1,1,0,0,0,0,1,0,2,0,0,'4000.0000',83,1,0,0,0,0,0),(198,1,1000,'DSCNT_ONE1','sample_t/t-shirt_01.gif','0.0000',0,'2007-01-24 16:37:59','2007-01-26 03:05:02',NULL,0.25,1,0,0,0,1,1,1,0,0,0,0,1,0,1,0,0,'4000.0000',85,1,0,0,0,0,0),(199,1,1000,'DSCNT_ONE2','sample_t/t-sample.gif','4000.0000',0,'2007-01-24 17:42:19','2007-01-26 03:08:54',NULL,0.25,1,0,0,0,1,1,0,0,0,1,0,1,0,2,0,0,'4000.0000',85,1,0,0,0,0,0),(200,1,1000,'LIMIT-2','','200.0000',0,'2007-01-24 19:07:16','2007-01-24 19:15:29',NULL,1,1,0,0,0,1,1,0,0,0,1,0,1,1,20,0,0,'200.0000',78,1,0,0,0,0,0),(201,1,1000,'UNIT1','','200.0000',0,'2007-01-24 19:32:13','2007-01-24 19:36:47',NULL,1,1,0,0,0,100,100,0,0,0,1,0,1,0,10,0,0,'200.0000',86,1,0,0,0,0,0),(202,1,1000,'UNIT2','','200.0000',0,'2007-01-24 19:37:00','2007-01-24 19:43:47',NULL,1,1,0,0,0,2000,100,0,0,0,1,0,1,0,20,0,0,'200.0000',86,1,0,0,0,0,0),(203,1,1000,'UNIT_ATR1','','200.0000',0,'2007-01-24 19:44:59','2007-01-24 19:52:48',NULL,1,1,0,0,0,100,1,0,0,0,1,0,1,100,30,0,0,'200.0000',86,1,0,0,0,0,0),(204,1,1000,'UNIT_ATR2','','200.0000',0,'2007-01-24 19:45:15','2007-01-24 19:54:44',NULL,1,1,0,0,0,100,100,0,0,0,0,0,1,0,40,0,0,'200.0000',86,0,0,0,0,0,0),(205,1,1000,'PRCFACTOR','samples/teacup.png','20000.0000',0,'2007-01-25 12:48:10','2007-01-25 18:56:07',NULL,1,1,0,0,0,1,1,0,0,0,1,0,1,0,10,0,0,'20000.0000',87,1,0,0,0,0,0),(206,1,1000,'PRCFACTOR_OFFSET','sample_t/t-shirt_01.gif','0.0000',0,'2007-01-25 17:47:50','2007-01-26 01:32:25',NULL,0,1,0,0,0,1,1,1,0,0,1,0,1,0,20,0,0,'4000.0000',87,1,0,0,0,0,0),(209,1,1000,'BASEPRICE1','sample_t/t-shirt_01.gif','4000.0000',0,'2007-01-26 01:57:23','2007-01-26 02:57:14',NULL,0.25,1,0,0,0,1,1,1,0,0,0,0,1,0,1,0,0,'4500.0000',89,1,0,0,0,0,0),(207,1,1000,'PRCFACTOR_OFFSET_ONCE','sample_t/t-sample.gif','4000.0000',0,'2007-01-25 18:59:30','2007-01-26 17:48:08',NULL,0,1,0,0,0,1,1,1,0,0,1,0,1,0,30,0,0,'4000.0000',87,1,0,0,0,0,0),(208,1,1000,'DISCNTQTY_ATTR_ONCE','sample_t/t-shirt_01.gif','4000.0000',0,'2007-01-25 19:23:37','2007-01-25 20:01:38',NULL,0.25,1,0,0,0,1,1,0,0,0,0,0,1,0,3,0,0,'4000.0000',83,1,0,0,0,0,0),(210,1,1000,'BASEPRICE3','sample_t/t-shirt_01.gif','4000.0000',0,'2007-01-26 02:26:19','2007-01-26 02:50:02',NULL,0.25,1,0,0,0,1,1,1,0,0,0,0,1,0,3,0,0,'5000.0000',89,1,0,0,0,0,0),(211,1,1000,'BASEPRICE2','sample_t/t-shirt_02.gif','4000.0000',0,'2007-01-26 02:46:13','2007-01-26 02:59:27',NULL,0.25,1,0,0,0,1,1,0,0,0,0,0,1,0,2,0,0,'4000.0000',89,1,0,0,0,0,0),(212,2,1001,'RTBHUNTER','sooty.jpg','500.0000',0,'2007-01-26 10:54:55','2007-01-26 19:40:58',NULL,3,1,0,NULL,0,1,1,0,0,0,1,0,1,0,1,0,0,'450.0000',91,1,0,0,0,0,0),(213,2,1001,'HELP','samples/music.jpg','3500.0000',0,'2007-01-26 10:55:12','2007-02-01 18:28:20',NULL,0,1,0,NULL,0,1,1,0,0,0,1,2,1,0,2,0,0,'3500.0000',91,1,0,0,0,0,0),(214,3,0,'','samples/DOC_GENERAL.gif','0.0000',0,'2007-01-26 12:02:50','2007-01-26 17:09:58',NULL,0,1,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,'0.0000',93,1,0,0,0,0,0),(215,4,1000,'DOC_PRODUCT','samples/DOC_PRODUCT.gif','2000.0000',0,'2007-01-26 12:22:09','2007-01-26 17:01:36',NULL,0,1,0,0,0,1,1,0,0,0,1,0,1,0,2,0,0,'2000.0000',93,1,0,0,0,0,0),(225,1,1001,'DOWNLOAD1','samples/download.jpg','5000.0000',0,'2007-01-26 18:38:56','2007-01-26 19:58:12',NULL,0,1,0,0,0,1,1,0,0,0,1,0,1,0,10,0,0,'5000.0000',100,1,0,0,0,0,0),(217,5,1001,'TYPE_P_FREESHIP','sample_t/t-sample.gif','4000.0000',0,'2007-01-26 14:35:30','2007-01-26 16:53:40',NULL,1,1,0,0,0,1,1,0,0,0,1,1,1,0,10,0,0,'4000.0000',98,1,0,0,0,0,0),(218,1,1000,'FREE2','sample_t/t-sample.gif','0.0000',1,'2007-01-26 15:10:08','2007-01-26 15:10:10','0000-00-00 00:00:00',2,1,0,0,0,1,1,0,1,0,0,0,1,0,30,0,0,'0.0000',40,1,0,0,0,0,0),(224,1,1000,'FREESHIP3','sample_t/t-shirt_02.gif','4000.0000',0,'2007-01-26 15:54:57','2007-01-26 16:12:01',NULL,0,1,0,0,0,1,1,0,0,0,1,0,1,0,3,0,0,'4000.0000',79,1,0,0,0,0,0),(223,1,1000,'FREESHIP2','sample_w/wallpaper_M01.jpg','4000.0000',1,'2007-01-26 15:39:15','2007-01-26 15:48:48',NULL,50,1,0,0,0,1,1,0,0,0,0,1,1,0,2,0,0,'4000.0000',79,1,0,0,0,0,0),(226,1,1000,'DOWNLOAD2','samples/download.jpg','5000.0000',0,'2007-01-26 19:08:15','2007-01-26 19:58:26',NULL,0,1,0,0,0,1,1,0,0,0,1,0,1,0,20,0,0,'5000.0000',100,1,0,0,0,0,0),(229,2,1001,'MEDIA_MIX','samples/music.jpg','3500.0000',0,'2007-02-01 18:06:43','2007-02-01 18:30:53',NULL,0,1,0,0,0,1,1,0,0,0,1,2,1,0,30,0,0,'3500.0000',91,1,0,0,0,0,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_attributes`
--

DROP TABLE IF EXISTS `products_attributes`;
CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `options_id` int(11) NOT NULL default '0',
  `options_values_id` int(11) NOT NULL default '0',
  `options_values_price` decimal(15,4) NOT NULL default '0.0000',
  `price_prefix` char(1) NOT NULL default '',
  `products_options_sort_order` int(11) NOT NULL default '0',
  `product_attribute_is_free` tinyint(1) NOT NULL default '0',
  `products_attributes_weight` float NOT NULL default '0',
  `products_attributes_weight_prefix` char(1) NOT NULL default '',
  `attributes_display_only` tinyint(1) NOT NULL default '0',
  `attributes_default` tinyint(1) NOT NULL default '0',
  `attributes_discounted` tinyint(1) NOT NULL default '1',
  `attributes_image` varchar(64) default NULL,
  `attributes_price_base_included` tinyint(1) NOT NULL default '1',
  `attributes_price_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_qty_prices` text,
  `attributes_qty_prices_onetime` text,
  `attributes_price_words` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_words_free` int(4) NOT NULL default '0',
  `attributes_price_letters` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_letters_free` int(4) NOT NULL default '0',
  `attributes_required` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`products_attributes_id`),
  KEY `idx_id_options_id_values_zen` (`products_id`,`options_id`,`options_values_id`)
) ENGINE=MyISAM AUTO_INCREMENT=422 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `products_attributes`
--

LOCK TABLES `products_attributes` WRITE;
/*!40000 ALTER TABLE `products_attributes` DISABLE KEYS */;
INSERT INTO `products_attributes` VALUES (1,57,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(2,57,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(3,57,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(4,57,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(5,57,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(306,59,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(305,59,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(304,59,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(303,59,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(302,59,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(311,61,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(310,61,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(309,61,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(308,61,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(307,61,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(16,7,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(17,7,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(18,7,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(19,7,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(20,7,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(21,12,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(22,12,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(23,12,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(24,12,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(25,12,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(26,20,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(27,20,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(28,20,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(29,20,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(30,20,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(31,26,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(32,26,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(33,26,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(34,26,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(35,26,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(36,28,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(37,28,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(38,28,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(39,28,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(40,28,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(41,30,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(42,30,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(43,30,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(44,30,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(45,30,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(46,52,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(47,52,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(48,52,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(49,52,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(50,52,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(51,55,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(52,55,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(53,55,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(54,55,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(55,55,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(56,16,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(57,16,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(58,16,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(59,16,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(60,16,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(61,36,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(62,36,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(63,36,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(64,36,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(65,36,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(66,39,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(67,39,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(68,39,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(69,39,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(70,39,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(71,41,2,9,'0.0000','+',210,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(72,41,2,10,'0.0000','+',220,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(73,41,2,11,'0.0000','+',230,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(74,41,2,12,'0.0000','+',240,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(75,41,2,13,'0.0000','+',250,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(77,98,3,4,'500.0000','+',110,0,0,'+',0,1,1,'attributes/color_red.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(78,98,3,5,'0.0000','+',120,0,0,'+',0,0,1,'attributes/color_yellow.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(81,112,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(80,98,3,8,'0.0000','+',140,0,0,'+',0,0,1,'attributes/color_black.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(82,112,3,8,'1000.0000','+',140,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(83,113,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(84,113,3,8,'1000.0000','+',140,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(112,141,6,17,'0.0000','+',620,1,0,'+',0,0,1,'attributes/washM40.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(110,141,6,15,'0.0000','+',600,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(107,139,5,0,'0.0000','+',0,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'5.0000',0,1),(108,140,4,0,'0.0000','+',0,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','20.0000',2,'0.0000',0,1),(101,53,1,2,'0.0000','+',20,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(100,53,1,1,'0.0000','+',30,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(104,64,1,2,'0.0000','+',20,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(103,64,1,1,'0.0000','+',30,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(111,141,6,16,'0.0000','+',610,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(106,139,4,0,'0.0000','+',0,0,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'10.0000',5,1),(102,53,1,3,'0.0000','+',10,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(105,64,1,3,'0.0000','+',10,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(113,141,6,18,'0.0000','+',630,1,0,'+',0,0,1,'attributes/ironM.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(115,142,7,21,'0.0000','+',700,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(116,142,7,22,'0.0000','+',710,1,0,'+',0,0,1,'',0,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(117,142,7,23,'100.0000','+',720,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(118,143,8,27,'3000.0000','+',830,1,0.1,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(119,143,8,28,'3000.0000','+',840,1,0.1,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(120,143,8,29,'3000.0000','+',850,1,0.1,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(121,143,8,30,'3500.0000','+',860,1,0.15,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(122,143,8,31,'3500.0000','+',870,1,0.15,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(123,143,8,26,'4500.0000','+',820,1,0.25,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(124,143,8,24,'4000.0000','+',800,1,0.2,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(125,143,8,25,'4000.0000','+',810,1,0.2,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(126,144,1,1,'0.0000','+',30,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(127,144,1,2,'0.0000','+',20,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(128,144,1,3,'0.0000','+',10,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(129,144,1,19,'500.0000','+',40,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(130,144,3,5,'0.0000','+',120,1,0,'+',0,1,0,'attributes/color_yellow.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(132,144,3,8,'500.0000','+',140,1,0,'+',0,0,0,'attributes/color_black.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(133,144,3,7,'0.0000','+',130,1,0,'+',0,0,0,'attributes/color_blue.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(134,144,3,14,'0.0000','+',100,1,0,'+',0,0,0,'attributes/color_white.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(148,144,1,20,'0.0000','+',50,1,0,'+',1,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(163,152,1,19,'500.0000','+',40,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(164,152,3,5,'0.0000','+',120,1,0,'+',0,1,0,'attributes/color_yellow.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(165,152,3,8,'500.0000','+',140,1,0,'+',0,0,0,'attributes/color_black.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(166,152,3,7,'0.0000','+',130,1,0,'+',0,0,0,'attributes/color_blue.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(167,152,3,14,'0.0000','+',100,1,0,'+',0,0,0,'attributes/color_white.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(168,152,1,20,'0.0000','+',50,1,0,'+',1,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(144,146,9,32,'500.0000','',900,1,0.1,'',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(145,146,9,33,'5.0000','',910,1,0.001,'',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(146,151,10,35,'5.0000','',1010,1,0.001,'',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(147,151,10,34,'500.0000','',1000,1,0.1,'',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(149,144,3,4,'0.0000','+',110,1,0,'+',0,0,0,'attributes/color_red.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(169,152,3,4,'0.0000','+',110,1,0,'+',0,0,0,'attributes/color_red.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(160,152,1,1,'0.0000','+',30,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(161,152,1,2,'0.0000','+',20,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(162,152,1,3,'0.0000','+',10,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(173,155,3,4,'0.0000','+',110,1,0,'+',0,1,1,'attributes/color_red.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(174,155,3,5,'0.0000','+',120,0,0,'+',0,0,1,'attributes/color_yellow.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(175,155,3,8,'0.0000','+',140,0,0,'+',0,0,1,'attributes/color_black.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(291,156,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(292,156,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(293,156,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(290,156,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(180,157,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(181,157,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(182,157,3,4,'2000.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(183,157,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(184,158,3,5,'0.0000','+',120,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(185,158,3,14,'0.0000','+',100,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(186,158,3,4,'2000.0000','+',110,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(187,158,3,7,'0.0000','+',130,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(188,176,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(189,176,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(190,176,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(191,176,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(192,177,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(193,177,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(194,177,3,4,'2000.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','2000.0000',0,'0.0000',0,0),(195,177,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(196,178,3,5,'0.0000','+',120,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(197,178,3,14,'0.0000','+',100,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(198,178,3,4,'2000.0000','+',110,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(199,178,3,7,'0.0000','+',130,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(200,159,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(201,159,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(202,159,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(203,159,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(204,160,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(205,160,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(206,160,3,4,'2000.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(207,160,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(208,161,3,5,'0.0000','+',120,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(209,161,3,14,'0.0000','+',100,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(210,161,3,4,'2000.0000','+',110,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(211,161,3,7,'0.0000','+',130,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(212,162,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(213,162,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(214,162,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(215,162,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(216,163,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(217,163,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(218,163,3,4,'2000.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(219,163,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(220,164,3,5,'0.0000','+',120,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(221,164,3,14,'0.0000','+',100,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(222,164,3,4,'2000.0000','+',110,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(223,164,3,7,'0.0000','+',130,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(224,170,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(225,170,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(226,170,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(227,170,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(228,171,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(229,171,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(230,171,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(231,171,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(232,173,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(233,173,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(234,173,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(235,173,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(236,174,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(237,174,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(238,174,3,4,'2000.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(239,174,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(240,175,3,5,'0.0000','+',120,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(241,175,3,14,'0.0000','+',100,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(242,175,3,4,'2000.0000','+',110,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(243,175,3,7,'0.0000','+',130,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(244,179,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(245,179,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(246,179,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(247,179,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(248,180,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(249,180,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(250,180,3,4,'2000.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(251,180,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(252,181,3,5,'0.0000','+',120,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(253,181,3,14,'0.0000','+',100,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(254,181,3,4,'2000.0000','+',110,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(255,181,3,7,'0.0000','+',130,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(256,172,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(257,172,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(258,172,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(259,172,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(260,165,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(261,165,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(262,165,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(263,165,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(264,166,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(265,166,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(266,166,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(267,166,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(268,167,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(269,167,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(270,167,3,4,'2000.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(271,167,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(272,168,3,5,'0.0000','+',120,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(273,168,3,14,'0.0000','+',100,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(274,168,3,4,'2000.0000','+',110,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(275,168,3,7,'0.0000','+',130,1,0,'+',0,0,0,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(276,169,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(277,169,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(278,169,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(279,169,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(280,182,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(281,182,3,8,'1000.0000','+',140,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(282,184,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(283,184,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(284,184,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(285,184,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(286,185,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(287,185,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(288,185,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(289,185,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(294,188,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(295,188,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(296,188,3,4,'0.0000','+',110,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(297,188,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(298,189,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(299,189,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(300,189,3,4,'0.0000','+',110,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(301,189,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(316,88,11,37,'0.0000','+',2010,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(315,88,11,36,'0.0000','+',2000,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(317,89,11,36,'0.0000','+',2000,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(318,89,11,37,'0.0000','+',2010,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(319,90,11,36,'0.0000','+',2000,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(320,90,11,37,'0.0000','+',2010,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(321,91,11,36,'0.0000','+',2000,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(322,91,11,37,'0.0000','+',2010,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(356,193,6,15,'0.0000','+',600,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(365,198,3,14,'4000.0000','',100,1,0,'+',0,1,1,'attributes/t-shirt_01mini.gif',1,'-500.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(327,190,3,5,'2000.0000','+',120,1,0,'+',0,0,0,'attributes/color_yellow.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(360,192,3,38,'0.0000','+',150,1,0,'+',0,0,1,'attributes/t-shirt_02mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(361,196,3,14,'0.0000','+',100,1,0,'+',0,1,1,'attributes/t-shirt_01mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','9:-0,10:-100,11:-200','','0.0000',0,'0.0000',0,0),(330,190,3,14,'1000.0000','+',100,1,0,'+',0,0,0,'attributes/color_white.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(353,192,3,14,'0.0000','+',100,1,0,'+',0,0,1,'attributes/t-shirt_01mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(332,190,3,4,'0.0000','+',110,1,0,'+',0,1,0,'attributes/color_red.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(362,196,3,38,'0.0000','+',150,1,0,'+',0,0,1,'attributes/t-shirt_02mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','19:-0,20:-150','','0.0000',0,'0.0000',0,0),(363,197,3,14,'4000.0000','',100,1,0,'+',0,1,1,'attributes/t-shirt_01mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','9:-0,10:-100,11:-200','','0.0000',0,'0.0000',0,0),(364,197,3,38,'5000.0000','',150,1,0,'+',0,0,1,'attributes/t-shirt_02mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','19:-0,20:-150','','0.0000',0,'0.0000',0,0),(366,198,3,38,'5000.0000','',150,1,0,'+',0,0,1,'attributes/t-shirt_02mini.gif',1,'-1000.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(343,191,3,5,'2000.0000','+',120,1,0,'+',0,0,0,'attributes/color_yellow.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(344,191,3,14,'1000.0000','+',100,1,0,'+',0,0,0,'attributes/color_white.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(345,191,3,4,'0.0000','+',110,1,0,'+',0,1,0,'attributes/color_red.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(357,193,6,16,'0.0000','+',610,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(358,193,6,17,'0.0000','+',620,1,0,'+',0,0,1,'attributes/washM40.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(359,193,6,18,'0.0000','+',630,1,0,'+',0,0,1,'attributes/ironM.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(367,199,12,39,'600.0000','+',2100,1,0,'+',0,1,1,'',1,'10000.0000','0.0000','0.0000','0.0000','0.0000','49:-0,50:-200,100:-300','','0.0000',0,'0.0000',0,0),(368,199,12,40,'700.0000','+',2120,1,0,'+',0,0,1,'',1,'20000.0000','0.0000','0.0000','0.0000','0.0000','49:-0,50:-200,100:-300','','0.0000',0,'0.0000',0,0),(369,199,12,41,'800.0000','+',2130,1,0,'+',0,0,1,'',1,'30000.0000','0.0000','0.0000','0.0000','0.0000','49:-0,50:-200,100:-300','','0.0000',0,'0.0000',0,0),(370,203,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(371,203,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(372,203,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(373,203,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(374,204,3,5,'0.0000','+',120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(375,204,3,14,'0.0000','+',100,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(376,204,3,4,'0.0000','+',110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(377,204,3,7,'0.0000','+',130,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(379,205,14,45,'0.0000','+',2310,1,0,'+',0,1,1,'',1,'0.0000','0.0500','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(380,205,14,46,'0.0000','+',2320,1,0,'+',0,0,1,'',1,'0.0000','0.1500','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(381,205,14,44,'0.0000','+',2300,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(382,206,13,43,'4000.0000','',2210,1,0,'+',0,1,1,'',1,'0.0000','100.0000','1.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(389,209,3,50,'1000.0000','+',180,1,0,'+',0,0,1,'attributes/t-shirt_02mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(385,208,3,14,'0.0000','+',100,1,0,'+',0,1,1,'attributes/t-shirt_01mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','9:-0,10:-1000,11:-4000','0.0000',0,'0.0000',0,0),(386,208,3,38,'0.0000','+',150,1,0,'+',0,0,1,'attributes/t-shirt_02mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','19:-0,20:-5000','0.0000',0,'0.0000',0,0),(390,209,3,49,'500.0000','+',170,1,0,'+',0,1,1,'attributes/t-shirt_01mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(405,207,7,21,'0.0000','+',700,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.3000','0.1000','','','0.0000',0,'0.0000',0,0),(391,210,3,50,'1000.0000','+',180,1,0,'+',0,0,1,'attributes/t-shirt_02mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(393,210,3,48,'500.0000','+',160,1,0,'+',0,1,1,'attributes/t-shirt_01mini.gif',0,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(394,211,3,50,'1000.0000','+',180,1,0,'+',0,0,1,'attributes/t-shirt_02mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(396,211,3,49,'500.0000','+',170,1,0,'+',0,1,1,'attributes/t-shirt_01mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(397,217,6,18,'1000.0000','+',630,1,10,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(398,217,3,5,'2000.0000','+',120,1,20,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(399,222,3,14,'0.0000','+',100,1,100,'+',0,1,1,'attributes/t-shirt_01mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(400,222,3,38,'0.0000','+',150,1,40,'+',0,0,1,'attributes/t-shirt_02mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(404,224,3,38,'0.0000','+',150,1,20,'+',0,0,1,'attributes/t-shirt_02mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(403,224,3,14,'0.0000','+',100,1,2,'+',0,1,1,'attributes/t-shirt_01mini.gif',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(406,225,15,53,'0.0000','+',3010,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(407,225,15,52,'0.0000','+',3000,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(408,226,15,53,'0.0000','+',3010,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(409,226,15,52,'0.0000','+',3000,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(410,226,16,56,'0.0000','+',3120,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(411,226,16,54,'0.0000','+',3100,1,0,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(412,226,16,55,'0.0000','+',3110,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(413,213,17,57,'0.0000','+',4000,1,1,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(414,213,17,58,'0.0000','+',4010,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(417,227,18,0,'1000.0000','+',0,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(420,229,17,57,'0.0000','+',4000,1,1,'+',0,1,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0),(421,229,17,58,'0.0000','+',4010,1,0,'+',0,0,1,'',1,'0.0000','0.0000','0.0000','0.0000','0.0000','','','0.0000',0,'0.0000',0,0);
/*!40000 ALTER TABLE `products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_attributes_download`
--

DROP TABLE IF EXISTS `products_attributes_download`;
CREATE TABLE `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL default '0',
  `products_attributes_filename` varchar(255) NOT NULL default '',
  `products_attributes_maxdays` int(2) default '0',
  `products_attributes_maxcount` int(2) default '0',
  PRIMARY KEY  (`products_attributes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `products_attributes_download`
--

LOCK TABLES `products_attributes_download` WRITE;
/*!40000 ALTER TABLE `products_attributes_download` DISABLE KEYS */;
INSERT INTO `products_attributes_download` VALUES (315,'wallpaper_M01.jpg',7,5),(316,'wallpaper_L01.jpg',7,5),(317,'wallpaper_M02.jpg',7,5),(318,'wallpaper_L02.jpg',7,5),(319,'wallpaper_M03.jpg',7,5),(320,'wallpaper_L03.jpg',7,5),(321,'wallpaper_M04.jpg',7,5),(322,'wallpaper_L04.jpg',7,5),(406,'pdf_sample.zip',7,5),(407,'ms_word_sample.zip',7,5),(410,'mac-jp.zip',7,5),(409,'pdf_sample.zip',7,5),(408,'ms_word_sample.zip',7,5),(411,'win-en.zip',7,5),(412,'win-jp.zip',7,5),(414,'help.mp3',7,5);
/*!40000 ALTER TABLE `products_attributes_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_description`
--

DROP TABLE IF EXISTS `products_description`;
CREATE TABLE `products_description` (
  `products_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL default '1',
  `products_name` varchar(64) NOT NULL default '',
  `products_description` text,
  `products_url` varchar(255) default NULL,
  `products_viewed` int(5) default '0',
  PRIMARY KEY  (`products_id`,`language_id`),
  KEY `idx_products_name_zen` (`products_name`)
) ENGINE=MyISAM AUTO_INCREMENT=235 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `products_description`
--

LOCK TABLES `products_description` WRITE;
/*!40000 ALTER TABLE `products_description` DISABLE KEYS */;
INSERT INTO `products_description` VALUES (1,1,'t-shirt_01','','',0),(1,2,'Zen Cart��T�����','Zen Cart���ꥸ�ʥ��T����ĤǤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',2),(2,1,'t-shirt_02','','',0),(2,2,'Zen Cart��T�����','Zen Cart���ꥸ�ʥ��T����ĤǤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',7),(3,1,'t-shirt_03','','',0),(3,2,'CC��T�����','���ꥨ���ƥ��֡�����󥺥���T����ĤǤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','http://www.creativecommons.jp/',1),(4,1,'t-shirt_04','','',0),(4,2,'Google��T�����','�������󥸥��Google�פΥ�T����ĤǤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','www.google.co.jp/',6),(5,1,'t-shirt_05','','',0),(5,2,'Feed��������T�����','�ե����ɥ�������T����ĤǤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(6,1,'t-shirt_06','','',0),(6,2,'����ǭ','����ǭ�μ̿��򤢤���ä����塼�Ȥ�T����ġ�ǭ��������͵���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(7,1,'t-shirt_06','','',0),(7,2,'����ǭ for KIDS','����ǭ�μ̿��򤢤���ä����塼�Ȥ�T����ġ�ǭ��������͵���<br />����Ѥ⤴�����ޤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',2),(8,1,'t-shirt_07','','',0),(8,2,'����ǭ','����ǭ�μ̿��򤢤���ä�T����ĤǤ���ǭ��������͵���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',2),(9,1,'t-shirt_08','','',0),(9,2,'�Ӥ��ä�','��ǭ�Ӥ��ä��μ̿��򤢤���ä����塼�Ȥ�T����ġ�ǭ��������͵���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',5),(10,1,'t-shirt_09','','',0),(10,2,'�Ӥ��ä�','��ǭ�Ӥ��ä��μ̿��򤢤���ä����塼�Ȥ�T����ġ�ǭ��������͵���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',4),(11,1,'t-shirt_10','','',1),(11,2,'��ǭ���ޤ��1��','�ʥܡ���Ȣ�ˤ⤰�ꤳ�����ǭ�Τ��ޤ�T����ġ����ΰ����뤷������Ź�͵��ʥ�С�����ʤǤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',7),(12,1,'t-shirt_10','','',0),(12,2,'Ȣ����Τ��ޤ� for KIDS','�ʥܡ���Ȣ������������ǭ\"���ޤ�\"T����ġ��͵��ʥ�С�����ʤǤ���<br />\r\n����Ѥ⤴�����ޤ���<br /><br />\r\n\r\n�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� \r\n˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���\r\n�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� \r\n��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���<br /><br />\r\n\r\nNOTE��<br />\r\n���ξ��ʤϺ߸��ڤ쾦�ʤΥ���ץ�Ǥ���<br /><br />\r\n�ں߸��ڤ쾦�ʡ� �߸˿���0�ˤʤ�ȡ����ξ��ʤˤϺ߸��ڤ쾦�ʤΥ�������ɽ������ޤ���<br />\r\n\r\n���߸��ڤ쾦�ʤϡ��桼���Ͼ��ʾ���α����ϤǤ��ޤ�������ʸ�ϤǤ��ޤ���<br />\r\n���߸ˤ�0�ˤʤä��Ȥ��Τդ�ޤ��ʺ߸��ڤ쥢�������ɽ�������뤫�ɤ������ˤϡ����������Ȥΰ��������߸ˤδ������������ǽ�Ǥ����ʲ��Τ褦�����꤬�Ǥ��ޤ���<br />\r\n�������߸ˤ��ʤ��ʤä����ʤˡ��֥����Ȥ������ץܥ����<br />\r\n����������ˡ�����ڤ�ץ��������ɽ������/���ʤ�<br />\r\n�������߸��ڤ쾦�ʤ���ʸ�Ǥ���/�Ǥ��ʤ�<br />\r\n�������߸��ڤ쾦�ʤΥ��ơ������ѹ���<br />\r\n�������߸ˤ��ʤ��ʤä��龦�ʥ��ơ�������OFF�ˤ��ơ�<br />\r\n����������å׾�ؤηǺܤ�ư�Ǽ�����/���ʤ�<br />\r\n�������߸˿�������å����ƿ��ʲ��ˤʤä��鱿�ļԤ�<br />\r\n�������᡼����Τ餻��/�Τ餻�ʤ�<br />','',11),(13,1,'t-shirt_11','','',0),(13,2,'��ǭ���ޤ��2��','������åפΥ�ǥ�ǭ\"���ޤ�\"��T����ġ�<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',3),(14,1,'t-shirt_12','','',0),(14,2,'Extream Cat�ʥ�ȥ�����','�������ȥ꡼�७��åȥ��꡼����<br /><br />\r\n\r\n�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ����ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ�����ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���<br /><br />\r\n\r\nNOTE��<br />\r\n���ξ��ʤϺ߸��ڤ쾦�ʤΥ���ץ�Ǥ���<br /><br />\r\n�ں߸��ڤ쾦�ʡ� �߸˿���0�ˤʤ�ȡ����ξ��ʤˤϺ߸��ڤ쾦�ʤΥ�������ɽ������ޤ���<br />\r\n\r\n���߸��ڤ쾦�ʤϡ��桼���Ͼ��ʾ���α����ϤǤ��ޤ�������ʸ�ϤǤ��ޤ���<br />\r\n���߸ˤ�0�ˤʤä��Ȥ��Τդ�ޤ��ʺ߸��ڤ쥢�������ɽ�������뤫�ɤ������ˤϡ����������Ȥΰ��������߸ˤδ������������ǽ�Ǥ����ʲ��Τ褦�����꤬�Ǥ��ޤ���<br />\r\n�������߸ˤ��ʤ��ʤä����ʤˡ��֥����Ȥ������ץܥ����<br />\r\n����������ˡ�����ڤ�ץ��������ɽ������/���ʤ�<br />\r\n�������߸��ڤ쾦�ʤ���ʸ�Ǥ���/�Ǥ��ʤ�<br />\r\n�������߸��ڤ쾦�ʤΥ��ơ������ѹ���<br />\r\n�������߸ˤ��ʤ��ʤä��龦�ʥ��ơ�������OFF�ˤ��ơ�<br />\r\n����������å׾�ؤηǺܤ�ư�Ǽ�����/���ʤ�<br />\r\n�������߸˿�������å����ƿ��ʲ��ˤʤä��鱿�ļԤ�<br />\r\n�������᡼����Τ餻��/�Τ餻�ʤ�<br />','',3),(15,1,'t-shirt_13','','',0),(15,2,'��åɥɥ饴��','��²����ϤΤ褦�ʥɥ饴�����Ǥ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(16,1,'t-shirt_13','','',0),(16,2,'��åɥɥ饴�� for KIDS','��²����ϤΤ褦�ʥɥ饴�����Ǥ���<br />����Ѥ⤴�����ޤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(17,1,'t-shirt_14','','',0),(17,2,'���ͤࡦ����','�ͤि�����դˤ���ʸ����Ϥ�������<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',3),(18,1,'t-shirt_15','','',0),(18,2,'Extream Cat�ʥ����ե����','�������ȥ꡼�७��åȥ��꡼����<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',3),(19,1,'t-shirt_16','','',0),(19,2,'��ӥå�','�Ҷ������ˤ�͵��ι⤤��ӥåȥ���顣���å�T��·�äƤ��뤫��ƻҤ�·���ơ�<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',2),(20,1,'t-shirt_16','','',0),(20,2,'��ӥå� for KIDS','�Ҷ���������͵��Υ�ӥåȥ���顣����Ѥ�·�äƤ��뤫��ƻҤ�·���ơ�<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(21,1,'t-shirt_17','','',0),(21,2,'�������ݡ�','��͵����������ݥ��꡼���о�Ǥ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(22,1,'t-shirt_18','','',0),(22,2,'�������ݡ�','��͵����������ݥ��꡼���о�Ǥ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(23,1,'t-shirt_19','','',0),(23,2,'�����������͡�','�ӥӥåɤʿ��Ȥ�������Ū�ʥ������󥷥꡼����<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(24,1,'t-shirt_20','','',0),(24,2,'��������ʥ٥ӡ���','�ӥӥåɤʿ��Ȥ�������Ū�ʥ������󥷥꡼����<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(25,1,'t-shirt_21','','',0),(25,2,'�֤ȸ�','���֤˰Ϥޤ쥷���ﵤʬ�θ��μ̿��򤢤��餤�ޤ�����<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(26,1,'t-shirt_21','','',0),(26,2,'�֤ȸ� for KIDS','���֤˰Ϥޤ쥷���ﵤʬ�θ��μ̿��򤢤��餤�ޤ���������Ѥ�·�äƤ��뤫��ƻҤ�·���ơ�<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(27,1,'t-shirt_22','','',0),(27,2,'�ե�ߥ�','�Ȥܤ���ɽ�𤬱��줿�͵��Υե�ߥ��������å�T��·�äƤ��뤫��ƻҤ�·���ơ�<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(28,1,'t-shirt_22','','',0),(28,2,'�ե�ߥ� for KIDS','�Ȥܤ���ɽ�𤬱��줿�͵��Υե�ߥ���������Ѥ�·�äƤ��뤫��ƻҤ�·���ơ�<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',4),(29,1,'t-shirt_23','','',0),(29,2,'����ʥ�������','�ӥӥåɤʿ��Ȥ�������Ū�ʥ������󥷥꡼����<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(30,1,'t-shirt_23','','',0),(30,2,'����ʥ������� for KIDS','�ӥӥåɤʿ��Ȥ�������Ū�ʥ������󥷥꡼����<br />����Ѥ⤴�����ޤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',2),(31,1,'t-shirt_24','','',0),(31,2,'����ʥ��꡼���','�ӥӥåɤʿ��Ȥ�������Ū�ʥ������󥷥꡼����<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(32,1,'t-shirt_25','','',0),(32,2,'��������ʥϥ���','�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',2),(33,1,'t-shirt_26','','',0),(33,2,'���󥽡���','���󥽡����Υ��饹�Ȥ����襤���Ǥ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(34,1,'t-shirt_27','','',0),(34,2,'�ͤ��դΥ����С���1��','�����糧���ֻͤ��դΥ����С����Ǥ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(35,1,'t-shirt_28','','',0),(35,2,'���꡼��ɥ饴��','�Ȥܤ���ɽ����͵��Υɥ饴���������å�T��·�äƤ��뤫��ƻҤ�·���ơ�<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',2),(36,1,'t-shirt_28','','',0),(36,2,'���꡼��ɥ饴�� for KIDS','�Ȥܤ���ɽ����͵��Υɥ饴����������Ѥ�·�äƤ��뤫��ƻҤ�·���ơ�<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',2),(37,1,'t-shirt_29','','',0),(37,2,'��Ĺε','�ɥ饴�󥷥꡼������������<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(38,1,'t-shirt_30','','',0),(38,2,'�ɥ饴��','�Ի׵Ĥ�ʷ�ϵ����͵��Υɥ饴�����Ǥ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(39,1,'t-shirt_30','','',0),(39,2,'�ɥ饴�� for KIDS','�Ի׵Ĥ�ʷ�ϵ����͵��Υɥ饴�����Ǥ���<br />����Ѥ⤴�����ޤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(40,1,'t-shirt_31','','',0),(40,2,'�ɥ饴��','�Ի׵Ĥ�ʷ�ϵ����͵��Υɥ饴�����Ǥ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(41,1,'t-shirt_31','','',0),(41,2,'�ɥ饴�� for KIDS','�Ի׵Ĥ�ʷ�ϵ����͵��Υɥ饴�����Ǥ���<br />����Ѥ⤴�����ޤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(42,1,'t-shirt_32','','',0),(42,2,'�ͤ��դΥ����С���2��','�����糧���ֻͤ��դΥ����С����Ǥ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(43,1,'t-shirt_33','','',0),(43,2,'�դ���','��᤿ɽ��Τդ������˥ե���¿����<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',4),(44,1,'t-shirt_34','','',0),(44,2,'�դ���','��᤿ɽ��Τդ������˥ե���¿����<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(45,1,'t-shirt_35','','',0),(45,2,'�ͤ��դΥ����С���1��','�����糧���ֻͤ��դΥ����С����Ǥ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(46,1,'t-shirt_36','','',0),(46,2,'���ե�����','�ۥäȰ�©�Ĥ��������ˤ䤵�������ե��������Ϥ������Ǥ�����<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(47,1,'t-shirt_37','','',0),(47,2,'�ߥ˥��奢���å���','��󹥤��ˤϤ��ޤ�ʤ����͵��Υߥ˥��奢���å�������<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(48,1,'t-shirt_38','','',0),(48,2,'��ǥ�����1��','���㡼�꡼�����󥸥����פ碌�뤪ޯ��ʥ��饹�ȡ�Uba����κ��ʤ򤢤��餤�ޤ�����<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','www.flickr.com/photo_zoom.gne?id=4042701&size=m&context=set-101799',3),(49,1,'t-shirt_39','','',0),(49,2,'��ǥ�����2��','���㡼�꡼�����󥸥����פ碌�뤪ޯ��ʥ��饹�ȡ�Uba����κ��ʤ򤢤��餤�ޤ�����<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','www.flickr.com/photo_zoom.gne?id=4042701&size=m&context=set-101799',0),(50,1,'t-shirt_40','','',0),(50,2,'������','�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',7),(51,1,'t-shirt_41','','',0),(51,2,'���ꥬ��','ɽ�𤬤��襤�������֤ʥ��ꥬ�ˡ����줿�ҥåȾ��ʤǤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',6),(52,1,'t-shirt_41','','',0),(52,2,'���ꥬ�� for KIDS','ɽ�𤬤��襤�������֤ʥ��ꥬ�ˡ����줿�ҥåȾ��ʤǤ���<br />����Ѥ⤴�����ޤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(53,1,'t-shirt_42','','',0),(53,2,'�ڥ󥮥�','�͵��ι���ڥ󥮥�����<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(54,1,'t-shirt_43','','',0),(54,2,'�ڥ󥮥�','�͵��ι���ڥ󥮥�����<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(55,1,'t-shirt_43','','',0),(55,2,'�ڥ󥮥� for KIDS','�͵��ι���ڥ󥮥�����<br />����Ѥ⤴�����ޤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(56,1,'t-shirt_44','','',0),(56,2,'�פˤפ�','���������γ�������ʪ��<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(57,1,'t-shirt_44','','',0),(57,2,'�פˤפ� for KIDS','���������γ�������ʪ��<br />����Ѥ⤴�����ޤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',5),(58,1,'t-shirt_45','','',0),(58,2,'�֥롼�ۥ�����','����Ū�ʥ֥롼�ۥ�����ʤ����������<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(59,1,'t-shirt_45','','',0),(59,2,'�ۥ����� for KIDS','����Ū�ʥ֥롼�ۥ�����ʤ����������<br />����Ѥ⤴�����ޤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(60,1,'t-shirt_46','','',0),(60,2,'���륫�ʥ������','������å�����T�Υ������<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',2),(61,1,'t-shirt_46','','',0),(61,2,'���륫�ʥ������ for KIDS','������å�����T�Υ������<br />����Ѥ⤴�����ޤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',1),(62,1,'t-shirt_47','','',0),(62,2,'���륫�ʥ������','������å�����T�Υ������<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',3),(63,1,'t-shirt_48','','',0),(63,2,'����','�����֤ʷ��ܤ��ѥ�򤯤�ޤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',3),(64,1,'t-shirt_49','','',0),(64,2,'����','�����֤ʷ��ܤ��ѥ�򤯤�ޤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(65,1,'t-shirt_50','','',0),(65,2,'I love T-Shirt','���֤Ρ�I love T-Shirt�ץ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','',0),(91,1,'wallpaper_04','','',0),(90,2,'Extream Cat�ʥ��̡���','Extream Cat���꡼�����ɻ�Ǥ���<br /><br />\r\n\r\n�����ξ��ʤϥ�������ɾ��ʤǤ�','',6),(90,1,'wallpaper_03','','',0),(89,2,'Extream Cat�ʥ����ե����','Extream Cat���꡼�����ɻ�Ǥ���<br /><br />\r\n\r\n�����ξ��ʤϥ�������ɾ��ʤǤ�','',2),(89,1,'wallpaper_02','','',0),(88,1,'wallpaper_01','','',0),(88,2,'Extream Cat�ʥ����åȥ�������','Extream Cat���꡼�����ɻ�Ǥ���<br /><br />\r\n\r\n�����ξ��ʤϥ�������ɾ��ʤǤ�','',11),(70,1,'Gift Certificate $  5.00','Purchase a Gift Certificate today to share with your family, friends or business associates!','',0),(70,2,'���եȷ���500��','���եȷ���������ơ�����²����ͧã����Ҥ���֤�£��ޤ��礦��','',1),(71,1,'Gift Certificate $ 10.00','Purchase a Gift Certificate today to share with your family, friends or business associates!','',0),(71,2,'���եȷ� 1,000��','���եȷ���������ơ�����²����ͧã����Ҥ���֤�£��ޤ��礦��','',0),(72,1,'Gift Certificate $ 25.00','Purchase a Gift Certificate today to share with your family, friends or business associates!','',0),(72,2,'���եȷ� 2,500��','���եȷ���������ơ�����²����ͧã����Ҥ���֤�£��ޤ��礦��','',0),(73,1,'Gift Certificate $ 50.00','Purchase a Gift Certificate today to share with your family, friends or business associates!','',0),(73,2,'���եȷ� 5,000��','���եȷ���������ơ�����²����ͧã����Ҥ���֤�£��ޤ��礦��','',3),(74,1,'Gift Certificate $100.00','Purchase a Gift Certificate today to share with your family, friends or business associates!','',0),(74,2,'���եȷ� 10,000��','���եȷ���������ơ�����²����ͧã����Ҥ���֤�£��ޤ��礦��','',1),(75,1,'Gift Certificates by attributes','Priced by Attributes Gift Certificates.','',0),(75,2,'���եȷ��ʹ������˼���������','���եȷ��μ���ʳ��̡ˤ򥪥ץ����°�������ꤹ����Ǥ�','',2),(76,1,'Test One','This is a test product to fill this category with more 12 randomly entered products to envoke the split page results on products that are not linked, have no specials, sales, etc.','',0),(76,2,'����ץ�01','���ξ��ʤϡ�¾�Υ��ƥ���˥�󥯤��Ƥ��ޤ���','',0),(77,1,'Test Two','This is a test product to fill this category with more 12 randomly entered products to envoke the split page results on products that are not linked, have no specials, sales, etc.','',0),(77,2,'����ץ�02','���ξ��ʤϡ�¾�Υ��ƥ���˥�󥯤��Ƥ��ޤ���','',0),(78,1,'Test Three','This is a test product to fill this category with more 12 randomly entered products to envoke the split page results on products that are not linked, have no specials, sales, etc.','',0),(78,2,'����ץ�03','���ξ��ʤϡ�¾�Υ��ƥ���˥�󥯤��Ƥ��ޤ���','',0),(79,1,'Test Four','This is a test product to fill this category with more 12 randomly entered products to envoke the split page results on products that are not linked, have no specials, sales, etc.','',0),(79,2,'����ץ�04','���ξ��ʤϡ�¾�Υ��ƥ���˥�󥯤��Ƥ��ޤ���','',0),(80,1,'Test Five','This is a test product to fill this category with more 12 randomly entered products to envoke the split page results on products that are not linked, have no specials, sales, etc.','',0),(80,2,'����ץ�05','���ξ��ʤϡ�¾�Υ��ƥ���˥�󥯤��Ƥ��ޤ���','',0),(81,1,'Test Eight','This is a test product to fill this category with more 12 randomly entered products to envoke the split page results on products that are not linked, have no specials, sales, etc.','',0),(81,2,'����ץ�08','���ξ��ʤϡ�¾�Υ��ƥ���˥�󥯤��Ƥ��ޤ���','',2),(82,1,'Test Ten','This is a test product to fill this category with more 12 randomly entered products to envoke the split page results on products that are not linked, have no specials, sales, etc.','',0),(82,2,'����ץ�10','���ξ��ʤϡ�¾�Υ��ƥ���˥�󥯤��Ƥ��ޤ���','',1),(83,1,'Test Six','This is a test product to fill this category with more 12 randomly entered products to envoke the split page results on products that are not linked, have no specials, sales, etc.','',0),(83,2,'����ץ�06','���ξ��ʤϡ�¾�Υ��ƥ���˥�󥯤��Ƥ��ޤ���','',0),(156,2,'��1�ۥ�����Ŭ�Ѥδ�����','�����뵡ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���<br />���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ�����<br />���ץ����ˤ��ɲ���������ꤷ�Ƥ��ʤ��ΤǤ�Ȥ�ȤɤΥ��顼�Ǥ�Ʊ����Ǥ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����10��OFF<br />���Ͱ����ۡ���10.0<br />�������ס���Ψ�ʡ��<br />���������оݤΥ��ƥ��ꡧ���֥�����10��OFF�ץ��ƥ���<br /><br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥�����10��OFF�ץ��ƥ���<br />�����ʲ��ʡ���10000��<br /><br />\r\n\r\nNOTE��<br />\r\n���ξ��ʤϡ��֥�����10��OFF�ץ��ƥ���ʢ����줬�ޥ��������ƥ���ˤ�¾�ˡ�\r\n�֥�������ò� > �������оݳ����ƥ���פˤ��󥯤���Ƥ��ޤ���<br /><br />\r\n�֥������оݳ����ƥ���פϡ������������򤷤Ƥ��ʤ����ƥ���Ǥ�����\r\n���ξ��ʤΥޥ��������ƥ���ϥ��������ꤵ�줿���ƥ���ʤΤǡ��֥������оݳ����ƥ���פ�ɽ���������⥻���뤬Ŭ�Ѥ�����������ܤ��Ƥ���������','',2),(84,1,'Test Seven','This is a test product to fill this category with more 12 randomly entered products to envoke the split page results on products that are not linked, have no specials, sales, etc.','',0),(84,2,'����ץ�07','���ξ��ʤϡ�¾�Υ��ƥ���˥�󥯤��Ƥ��ޤ���','',0),(85,1,'Test Twelve','This is a test product to fill this category with more 12 randomly entered products to envoke the split page results on products that are not linked, have no specials, sales, etc.','',0),(85,2,'����ץ�12','���ξ��ʤϡ�¾�Υ��ƥ���˥�󥯤��Ƥ��ޤ���','',0),(86,1,'Test Nine','This is a test product to fill this category with more 12 randomly entered products to envoke the split page results on products that are not linked, have no specials, sales, etc.','',0),(86,2,'����ץ�09','���ξ��ʤϡ�¾�Υ��ƥ���˥�󥯤��Ƥ��ޤ���','',0),(87,1,'Test Eleven','This is a test product to fill this category with more 12 randomly entered products to envoke the split page results on products that are not linked, have no specials, sales, etc.','',0),(87,2,'����ץ�11','���ξ��ʤϡ�¾�Υ��ƥ���˥�󥯤��Ƥ��ޤ���','',0),(91,2,'Extream Cat�ʥ�ȥ�����','Extream Cat���꡼�����ɻ�Ǥ���<br /><br />\r\n\r\n�����ξ��ʤϥ�������ɾ��ʤǤ�','',2),(92,1,'A Free Product - All','This is a free product where there are no prices at all.  <br /><br />    The Always Free Shipping is also turned ON.  <br /><br />    If this is bought separately, the Zen Cart Free Charge payment module will show if there is no charges on shipping.  <br /><br />    If other products are purchased with a price or shipping charge, then the Zen Cart Free Charge payment module will not show and the shipping will be applied accordingly.','',0),(92,2,'����1��̵�����ʡ����0�ߡ�������̵��','̵�����ʤΥ���ץ�Ǥ�����Ȥ�Ȥξ��ʲ��ʤ�0�ߤξ��ʤǡ�Ʊ����������̵�������ꤷ����ǡ��㤨�Хǥ⾦�ʤ䥵��ץ뾦������ʤɤΥ�����������ˤ�����Ǥ��礦��<br /><br /><br />�ʤ���Ʊ����������¾�ξ��ʤ��٤Ƥ��ǥ⾦�ʤǤ���Ȥ�������������ȯ�����ޤ��󤬡�¾�������������뾦�ʤ��������С��������̾��̤꤫����ޤ���<br /><br /><br /><br />���������<br /><br />��̵�����ʡ� �Ϥ�<br /><br />�����ʲ��ʡ���0��<br /><br />���������̵�������Ϥ����������̵��<br />','',13),(93,1,'A Free Product - SALE','This is a free product that is also on special.  <br />    This should show as having a price, special price but then be free.  <br />','',0),(93,2,'����4��̵�����ʡ��ò����ʤ򤵤��̵���ˡ�������ͭ��','̵�����ʤΥ���ץ�Ǥ�����Ȥ�Ȥξ��ʲ��ʤ�10000�ߤǡ�������ò�����7500�ߤξ��ʤǤ�����̵�����ʡ�֤Ϥ��פ����ꤷ�����Ȥˤ�ꡢ���Ū��̵�����ʤȤʤ�ޤ�����Ȥξ��ʲ��ʤȡ��ò����ʤ�ξ����ɽ�����졢����ˤ���餬�Ǥ��ä����̵�����ʤ�ɽ������ޤ���<br /><br />���ʼ��Τ�̵���Ȥʤ�ޤ�����������Ǥ�������̵���Ȥ������̾�������������褦���ꤷ�ޤ��������Υ������ϡ�����ץ뾦���������������������ô���Ƥ������������褦�ʾ������ꤷ�Ƥ��ޤ���<br /><br /><br /><br />���������<br /><br />��̵�����ʡ����Ϥ�<br /><br />�����ʲ��ʡ� 10000��<br /><br />���ò����ʡ� 7500��<br /><br />���������̵���� ���������̾�������Ŭ��<br />','',10),(222,1,'FREESHIP1','','',0),(222,2,'��1�۾������̵��','[�������̵��]�������\"�Ϥ�\"�ˤ��뤳�Ȥǡ����ξ��ʤν��̤���ʤ˴ط��ʤ��������̵�����ʤȤ��ư�����Ǥ������ץ������̤�̵���оݤ˴ޤޤ�ޤ���<br /><br />\r\n\r\n��������۾��ʾ���<br />\r\n��[�������̵��]���Ϥ�<br />\r\n��[���ʽ���]��50Kg<br /><br />\r\n\r\n��������ۥ��ץ����°��<br />\r\n\"�ۥ磻��\"��\"�����\" �γƥ��ץ����ˤĤ��ơ�\r\n��[���ץ�������] 100Kg �� 40Kg','',9),(223,1,'FREESHIP2','','',0),(223,2,'��2������̵�����С�����뾦��','[�������̵��]�������\"�Ϥ�\"�ˤ��뤳�Ȥǡ����ξ��ʤν��̤���ʤ˴ط��ʤ��������̵�����ʤˤʤ�ޤ��������[����������뾦��]�������\"�Ϥ�\"�ˤ����Τǡ���ʸ��³�������轻������ϥ��ƥåפ������åפ���ޤ���<br />\r\n���ץ������̤�̵���оݤ˴ޤޤ�ޤ���<br /><br />\r\n\r\n��������۾��ʾ���<br />\r\n��[����������뾦��]���Ϥ��������轻��򥹥��å�<br />\r\n��[�������̵��]���Ϥ�<br />\r\n��[���ʽ���]��50Kg<br /><br />\r\n\r\n��������ۥ��ץ����°��<br />\r\n\"�ۥ磻��\"��\"�����\" �γƥ��ץ����ˤĤ��ơ�\r\n��[���ץ�������] 100Kg �� 40Kg','',4),(95,1,'Free Ship & Payment Virtual weight 10','Free Shipping and Payment  <br /><br />    The Price is set to 25.00 ... but what makes it Free is that this product has been marked as:  <br />  Product is Free: Yes  <br /><br />    This would allow the product to be listed with a price, but the actual charge is $0.00  <br /><br />    The weight is set to 10 but could be set to 0. What really makes it truely Free Shipping is that it has been marked to be Always Free Shipping.  <br /><br />    Always Free shipping is set to: Yes<br />  This will not charge for shipping, but requres a shipping address.  <br /><br />    Because there is no shipping and the price is 0, the Zen Cart Free Charge comes up for the payment module and the other payment modules vanish.  <br /><br />    You can change the text on the Zen Cart Free Charge module to read as you would prefer.  <br /><br />    Note: if you add products that incur a charge or shipping charge, then the Zen Cart Free Charge payment module will vanish and the regular payment modules will show.','',0),(95,2,'����2��̵�����ʡ����1���ߤΤȤ�����ʡ���������̵����','̵�����ʤǡ���������̵������Ǥ���<br /><br /><br />���ξ��ʲ��ʤ�10000�ߤǤ�����̵�����ʤ����ꤵ��Ƥ��뤿��̵���Ȥʤ�ޤ���<br />�ޤ������ʽ��̤�10Kg����ޤ�����������̵�������ꤷ�Ƥ��ޤ��Τ������⤫����ޤ��󡣤��������С�����뾦�ʡᤤ���������ꤷ�Ƥ���Τǥ桼���������轻������Ϥ�ɬ�פǤ���<br /><br />���������<br />��̵�����ʡ� �Ϥ�<br />�����ʲ��ʡ���0��<br />������������뾦�ʡ� �������������轻�꤬ɬ��<br />���������̵�������Ϥ����������̵��','',14),(101,2,'����3�۲��ʤ��䤤�礻���ʡ�����ȥ��������ɽ����','���ξ��ʤϥ������оݾ��ʤǤ������ʲ��ʡ�����ˤ��ò����ʡ���������ʤ�ɽ������ޤ��������ξ��ʤ򥫥����������ʸ���뤳�ȤϤǤ����������Τ��䤤�礻��ɬ�פǤ���<br /><br />�̾�ι����ܥ���Τ����ˡֲ��ʤ��䤤��碌���� �ץܥ���ɽ�����졢����å�����Ȥ��䤤�礻�ե����ब�����ޤ���<br /><br /><br /><br />���������<br /><br />�����ʤ��䤤��碌���ʡ����Ϥ�<br /><br />�����ʲ��� (�ͥå�)�� 10000��<br /><br />���ò����ʡ� 9000��<br />�����ʤδ����䥻����δ����������ξ��ʥޥ��������ƥ����10��Υ��������ꤷ�Ƥ���','',9),(102,1,'Normal Product','<p>This is a normal product priced at $15</p><p>There are quantity discounts setup which will be discounted from the Products Price.</p><p>Discounts are added on the Products Price Manager.</p>','',0),(102,2,'����1�ۡ��İʾ��㤦��1�Ĥ�����������','���̳���ʤ�����ܥ�塼��ǥ���������ȡˤ�Ŭ����Ǥ���<br />9�ĤޤǤ������10��20�Ĥ������10�������20��49�Ĥ�20�������50�İʾ��25������Ȥ����褦�ˡ����Ψ�ˤ����̳�������ꤷ�ޤ�����<br /><br />NOTE������������ϡ־��ʲ��ʤδ����פ���Ԥ��ޤ���<br />�����ʤδ����侦�ʲ��ʤδ���������ƤӽФ��������뤤�ϴ������̤ξ��ʥꥹ�Ȥα�ü�ˤ���[��]�ܥ�����п��Υܥ���ˤ���ƤӽФ����Ȥ��Ǥ��ޤ���<br /><br /><br /><br />�������⡧���ʲ��ʤδ�����<br /><br />�ʲ�������ˤ�ꡢ�׻����ϡ��������������ߡ�1�ݿ��̳��Ψ�ˡѡ��ߡ��������Ȥʤ�ޤ���<br />���ǥ���������ȥ����ס������Ψ<br />�����β��ʤ���ǥ���������ȡ�������<br />���������<br /><br />��------------------------------------------<br /><br />�������٥롡�������Ǿ��¤�ͭ�����̡������������<br /><br />��------------------------------------------<br /><br />�����3����������������10���ʸġˡ�����������������10.0���ʡ�ˡ�<br /><br />�����4����������������20���ʸġˡ�����������������20.0���ʡ�ˡ�<br /><br />�����5����������������50���ʸġˡ�����������������25.0���ʡ�ˡ�<br /><br />��------------------------------------------<br /><br />','',11),(103,1,'Normal Product��2��','','',0),(103,2,'����2�ۡ��İʾ��㤦��1�Ĥ�������߰���','���̳���ʤ�����ܥ�塼��ǥ���������ȡˤ�Ŭ����Ǥ���<br />9�ĤޤǤ������10��20�Ĥ������1000�߰�����20��49�Ĥ�1500�߰�����50�İʾ��2000�߰����Ȥ����褦�ˡ�������������Ͱ����������̳�������ꤷ�ޤ�����<br /><br />NOTE������������ϡ־��ʲ��ʤδ����פ���Ԥ��ޤ���<br />�����ʤδ����侦�ʲ��ʤδ���������ƤӽФ��������뤤�ϴ������̤ξ��ʥꥹ�Ȥα�ü�ˤ���[��]�ܥ�����п��Υܥ���ˤ���ƤӽФ����Ȥ��Ǥ��ޤ���<br /><br /><br /><br />�������⡧���ʲ��ʤδ�����<br /><br />�ʲ�������ˤ�ꡢ�׻����ϡ�������������������Ͱ����ˡ��ߡ��������Ȥʤ�ޤ���<br /><br />���ǥ���������ȥ����ס��������۳��<br />�����β��ʤ���ǥ���������ȡ�������<br />���������<br /><br />��------------------------------------------<br />�������٥롡�������Ǿ��¤�ͭ�����̡������������<br />��------------------------------------------<br />�����3����������������10���ʸġˡ�����������������1000���ʱߡˡ�<br />�����4����������������20���ʸġˡ�����������������1500���ʱߡˡ�<br />�����5����������������50���ʸġˡ�����������������2000���ʱߡˡ�<br />��------------------------------------------<br />','',8),(155,1,'A Free Product with Attributes','This is a free product that is also on special.  <br /><br />    This should show as having a price, special price but then be free.  <br /><br />    Attributes can be added that can optionally be set to free or not free  <br /><br />    The Color Red attribute is priced at $5.00 but marked as a Free Attribute when the Product is Free  <br /><br />    The Size Medium attribute is priced at $1.00 but marked as a Free Attribute when Product is Free','',0),(101,1,'A Call for Price Product SALE','This is a Call for Price product that is also on special and has a Sale price via Sale Maker.<br /><br /><br /><br /><br />This should show as having a price, special price but then be Call for Price. This means you cannot buy it.<br /><br /><br /><br /><br />The Add to Cart buttons automatically change to Call for Price, which is defined as: TEXT_CALL_FOR_PRICE<br /><br /><br /><br /><br />This link will take the customer to the Contact Us page.<br /><br /><br />','',0),(98,1,'A Free Product with Attributes','This is a free product that is also on special.  <br /><br />    This should show as having a price, special price but then be free.  <br /><br />    Attributes can be added that can optionally be set to free or not free  <br /><br />    The Color Red attribute is priced at $5.00 but marked as a Free Attribute when the Product is Free  <br /><br />    The Size Medium attribute is priced at $1.00 but marked as a Free Attribute when Product is Free','',0),(98,2,'����5��̵�����ʡ�����̵�������ɥ��ץ�����ͭ��','���ʤ�̵�����ʤˤ��Ƥ⡢���ʥ��ץ������ɲ����������ͭ���Τޤޤˤ�����������Ǥ���<br /><br />\r\n\r\n������Ǥϡ����顼���åɤ����򤷤��������ɲ������500�������ˤ�ȯ����������ˤʤäƤ��ޤ���<br />\r\n����ˡ��־��ʤ�̵���ΤȤ�°���ˤ����ʤ�̵���ˤ���ᤤ�����פ����ꤵ��Ƥ���Τǡ����ʤ�̵�����ʤ����ꤷ�Ƥ�\r\n°�����ʤˤϱƶ����ޤ��󡣤Ĥޤꡢ��åɤ����򤹤��500�ߡ�¾�ο������򤷤��Ȥ���0�ߤȤʤ�ޤ���<br /><br />\r\n\r\n\r\n���������<br />\r\n��̵�����ʡ� �Ϥ�<br /><br />\r\n\r\n�ڥ��ץ����°�������⡧ ���顼�֥�åɡס�<br />\r\n�����ץ����̾�����顼<br />\r\n�����ץ�����͡���å�<br />\r\n��°���ˤ��������ꡧ����500��<br />\r\n�����ʤ�̵���ΤȤ�°���ˤ����ʤ�̵���ˤ��롧 ������','',18),(155,2,'����6��̵�����ʡ�����̵���ʤ饪�ץ�����̵��','���ʤ�̵�����ʤˤ����顢���ʥ��ץ������ɲ����������̵���ˤ�����������Ǥ���<br /><br />\r\n\r\n������Ǥϡ����顼���åɤ����򤷤��������ɲ������500�������ˤ�ȯ����������ˤʤäƤ��ޤ���<br />\r\n����ˡ��־��ʤ�̵���ΤȤ�°���ˤ����ʤ�̵���ˤ����Ϥ��פ����ꤵ��Ƥ���Τǡ����ʤ�̵�����ʤ����ꤷ����\r\n°�����ʤ�̵���ˤʤ�ޤ����Ĥޤꡢ��åɤ����򤷤Ƥ�0�ߤǤ���<br /><br />\r\n\r\n\r\n���������<br />\r\n��̵�����ʡ� �Ϥ�<br /><br />\r\n\r\n�ڥ��ץ����°�������⡧ ���顼�֥�åɡס�<br />\r\n�����ץ����̾�����顼<br />\r\n�����ץ�����͡���å�<br />\r\n��°���ˤ��������ꡧ����500�ߡ��ʥ١������ʤ�500��������<br />\r\n�����ʤ�̵���ΤȤ�°���ˤ����ʤ�̵���ˤ��롧 �Ϥ�','',3),(99,1,'A Call No Price','This is a Call for Price product with no price<br /><br /><br />This should show as having a price, special price but then be Call for Price. This means you cannot buy it.<br /><br />','',0),(99,2,'����1�۲��ʤ��䤤�礻���ʡ����ɽ���ʤ���','����ϡֲ��ʤ��䤤�礻���ʡפ���Ǥ���<br /><br />���ʲ��ʡ�����ˤ�0�ߤ����ꤷ�Ƥ������ɽ���Ϥ���ޤ���ʤ�����̵�����ʤˤ����ꤵ��Ƥ��ʤ��Τ�̵���ޡ����ϤĤ��ʤ��ˡ����ξ��ʤ򥫥����������ʸ���뤳�ȤϤǤ����������Τ��䤤�礻��ɬ�פǤ���<br /><br />�̾�ι����ܥ���Τ����ˡֲ��ʤ��䤤��碌���� �ץܥ���ɽ�����졢����å�����Ȥ��䤤�礻�ե����ब�����ޤ���<br /><br /><br /><br />���������<br /><br />��̵�����ʡ� ������<br /><br />�����ʤ��䤤��碌���ʡ����Ϥ�<br /><br />�����ʲ��� (�ͥå�)�� 0��','',5),(100,1,'A Call for Price Product','This is a Call for Price product that is also on special. <br /><br /><br />This should show as having a price, special price but then be Call for Price. This means you cannot buy it','',0),(100,2,'����2�۲��ʤ��䤤�礻���ʡʲ���ɽ�������','���ʤ��䤤�礻���ʤ���Ǥ�<br /><br /><br />���ξ��ʤˤϾ��ʲ��ʤ�ɽ������ޤ��������ξ��ʤ򥫥����������ʸ���뤳�ȤϤǤ����������Τ��䤤�礻��ɬ�פǤ���<br /><br />�̾�ι����ܥ���Τ����ˡֲ��ʤ��䤤��碌���� �ץܥ���ɽ�����졢����å�����Ȥ��䤤�礻�ե����ब�����ޤ���<br /><br /><br /><br />���������<br /><br />�����ʤ��䤤��碌���ʡ����Ϥ�<br /><br />�����ʲ��� (�ͥå�)�� 10000��<br /><br />���ò����ʡ� 9000��','',9),(104,1,'Normal Product(3)','','',0),(104,2,'����3�ۡ��İʾ��㤦��1�Ĥ����������','���̳���ʤ�����ܥ�塼��ǥ���������ȡˤ�Ŭ����Ǥ���<br />9�ĤޤǤ�ñ��10000�ߡ�10��20�Ĥ�ñ��9500�ߡ�20��49�Ĥ�ñ��9000�ߡ�50�İʾ��ñ��8000�ߤȤ����褦�ˡ�ñ�������������ʤˤʤ�褦�ʿ��̳�������ꤷ�ޤ�����<br /><br />NOTE������������ϡ־��ʲ��ʤδ����פ���Ԥ��ޤ���<br />�����ʤδ����侦�ʲ��ʤδ���������ƤӽФ��������뤤�ϴ������̤ξ��ʥꥹ�Ȥα�ü�ˤ���[��]�ܥ�����п��Υܥ���ˤ���ƤӽФ����Ȥ��Ǥ��ޤ���<br /><br /><br /><br />�������⡧���ʲ��ʤδ�����<br /><br />�ʲ�������ˤ�ꡢ�׻����ϡ���������������ʡ��ߡ��������Ȥʤ�ޤ���<br /><br />���ǥ���������ȥ����ס�����������<br />�����β��ʤ���ǥ���������ȡ�������<br />���������<br /><br />��------------------------------------------<br />�������٥롡�������Ǿ��¤�ͭ�����̡������������<br />��------------------------------------------<br />�����3����������������10���ʸġˡ�����������������9500���ʱߡˡ�<br />�����4����������������20���ʸġˡ�����������������9000���ʱߡˡ�<br />�����5����������������50���ʸġˡ�����������������8000���ʱߡˡ�<br />��------------------------------------------<br />','',8),(115,1,'SEO','','',0),(115,2,'���ʥڡ����ؤ�SEO��META��title��������','SEO�к��ΰ�ĤȤ��ơ�Zen Cart�Ǥϸ��̾��ʤ��Ȥ�META������title����������Ū�����ꤹ�뤳�Ȥ��Ǥ��ޤ���<br /><br />\r\n\r\n���Υ���ץ뾦�ʤ��Ф��ơ��ʲ��Τ褦�����ꤷ�ޤ�����<br />\r\n�֥饦���Ρ֥�������ɽ���פǡ����Υڡ�����HTML��������<head>��</head>��ʬ���ǧ���ƤߤƤ���������<br /><br />\r\n\r\n�������⡧META��<br />\r\n��title��<br />\r\n�����֤��ξ��ʥڡ����ˤ�����Ū��title���������ꤷ�ޤ�������<br /><br />\r\n��META��keyword�ˡ�<br />\r\n�����֤��ξ��ʥڡ����ˤ�����Ū��META��keyword�ˤ����ꤷ�Ƥ��ޤ�,���ʥ������1,���ʥ������2,���ʥ������3��<br /><br />\r\n\r\n��META��description�ˡ�<br />\r\n�����֤��ξ��ʥڡ����ˤ�����Ū��META��description�ˤ����ꤷ�Ƥ��ޤ���Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus sit amet velit��������<br /><br />\r\n\r\nNOTE��<br />\r\n�����ʤߤˤ��ε�ǽ�����Ѥ��ʤ��Ƥ⡢Zen Cart�Ǥ�ɸ�ൡǽ�Ȥ���META��title�����˾���̾����ʤ���¾�����Ǥ�������褦�ˤǤ��Ƥ��ޤ���<br />\r\n���������̤ΰ�������侦�ʾ�������꤫�顢TITLE�����˾��ʲ��ʤ�ޤ��ʴޤ�ʤ��ˤ�META��description�ˤΥƥ�����Ĺ�ʤɤ����꤬�Ǥ��ޤ�������������ʤ��Ф���Ŭ�Ѥ���ޤ���<br /><br />','',15),(113,1,'Normal Product(8)','','',0),(113,2,'����8�ۥ��顼����OK�ǹ�ס��İʾ�ʤ��ò��򤵤�˿��̳��','�������䥫�顼�ʤɤΥ��ץ����°���������������ò����ꤵ�줿���ʤ��Ф��ƿ��̳���ʤ�����ܥ�塼��ǥ���������ȡˤ�Ŭ�Ѥ������ʣ����������Ǥ���<br />9�ĤޤǤ������10��20�Ĥ������10�������20��49�Ĥ�20�������50�İʾ��25������Ȥ����褦�ˡ����Ψ�ˤ����̳�������ꤷ�ޤ�����<br />�ò��١����ǿ��̳��Ψ��Ŭ�Ѥ�������ʳ��ϡ����Ρ���6�ۤ�Ʊ������Ǥ����դ�ޤ����ɤ��Ѥ�뤫����٤ƤߤƤ���������<br />NOTE������������ϡ־��ʲ��ʤδ����פ���Ԥ��ޤ���<br />�����ʤδ����侦�ʲ��ʤδ���������ƤӽФ��������뤤�ϴ������̤ξ��ʥꥹ�Ȥα�ü�ˤ���[��]�ܥ�����п��Υܥ���ˤ���ƤӽФ����Ȥ��Ǥ��ޤ���<br /><br />�������⡧���ʲ��ʤδ�����<br /><br />�ʲ�������ˤ�ꡢ�׻����ϡ�����������ò��ߡ�1�ݿ��̳��Ψ�ˡѡ��ߡ��������Ȥʤ�ޤ���<br />���ǥ���������ȥ����ס������Ψ<br />�����β��ʤ���ǥ���������ȡ����ò�<br />���������<br />��------------------------------------------<br />�������٥롡�������Ǿ��¤�ͭ�����̡������������<br />��------------------------------------------<br />�����3����������������10���ʸġˡ�����������������10.0���ʡ�ˡ�<br />�����4����������������20���ʸġˡ�����������������20.0���ʡ�ˡ�<br />�����5����������������50���ʸġˡ�����������������25.0���ʡ�ˡ�<br />��------------------------------------------<br /><br />\r\n�������⡧���ץ����°����<br />\r\n1�˥��顼�֥ۥ磻�ȡ�<br />\r\n���������ʡ� ��0��<br />\r\n�������ò�/����������Ŭ�Ѥ������ʤ�١������ʤȤ��ư��������Ϥ�<br />\r\n2�˥��顼�֥֥�å���<br />\r\n���������ʡ�����1000��<br />\r\n�������ò�/����������Ŭ�Ѥ������ʤ�١������ʤȤ��ư��������Ϥ�<br />\r\n������°���ˤ�����������١������ʤ˴ޤ�롧���Ϥ�<br /><br />\r\n\r\nNOTE��<br />\r\n������Ǥϡ����ץ����򤤤����꺮���Ƥ褯�����ξ��ʤι�פ������̰ʾ�Ǥ���Сʸġ��Υ��ץ�������򤬤ʤ�Ǥ���˳�������Ŭ�Ѥ���ޤ���<br />\r\n�Ĥޤꡢ�ۥ磻��5�����������졢³���ƥ֥�å���5�����������줿�����ǹ��10���ȸ��ʤ���Ƴ�����ʤ�Ŭ�Ѥ���ޤ���<br />\r\n������ۥ磻�Ȥ��뤤�ϥ֥�å�ñ�Τ�10�İʾ�������Ƥ�������ޤ���<br />\r\n����ϡ����ʲ��ʤδ����ˤ����ơ��ֿ��̤�Ʊ�쾦�ʤǤ���Х��ץ�����ͤ˴ط��ʤ��绻�����Ϥ��פ����ꤷ�����ˤ��Τ褦��ư��ˤʤ�ޤ���<br /><br />','',9),(112,1,'Normal Product(7)','','',0),(112,2,'����7�ۥ��顼����OK�ǹ�ס��İʾ�ʤ���','�������䥫�顼�ʤɤΥ��ץ����°������ľ��ʤˡ����̳���ʤ�����ܥ�塼��ǥ���������ȡˤ�Ŭ�Ѥ������ʣ����������Ǥ���<br />\r\n9�ĤޤǤ������10��20�Ĥ������10�������20��49�Ĥ�20�������50�İʾ��25������Ȥ����褦�ˡ����Ψ�ˤ����̳�������ꤷ�ޤ�����<br /><br />\r\n������Ǥϡ����ץ����򤤤����꺮���Ƥ褯�����ξ��ʤι�פ������̰ʾ�Ǥ���Сʸġ��Υ��ץ�������򤬤ʤ�Ǥ���˳�������Ŭ�Ѥ���ޤ���<br />\r\n�Ĥޤꡢ�ۥ磻��5�����������졢³���ƥ֥�å���5�����������줿�����ǹ��10���ȸ��ʤ���Ƴ�����ʤ�Ŭ�Ѥ���ޤ���<br />\r\n������ۥ磻�Ȥ��뤤�ϥ֥�å�ñ�Τ�10�İʾ�������Ƥ�������ޤ���<br />\r\n����ϡ����ʲ��ʤδ����ˤ����ơ��ֿ��̤�Ʊ�쾦�ʤǤ���Х��ץ�����ͤ˴ط��ʤ��绻�����Ϥ��פ����ꤷ�����ˤ��Τ褦��ư��ˤʤ�ޤ���<br /><br />\r\n\r\n\r\nNOTE������������ϡ־��ʲ��ʤδ����פ���Ԥ��ޤ���<br />�����ʤδ����侦�ʲ��ʤδ���������ƤӽФ��������뤤�ϴ������̤ξ��ʥꥹ�Ȥα�ü�ˤ���[��]�ܥ�����п��Υܥ���ˤ���ƤӽФ����Ȥ��Ǥ��ޤ���<br /><br />\r\n\r\n�������⡧���ʲ��ʤδ�����<br />\r\n�ʲ�������ˤ�ꡢ�׻����ϡ��������������ߡ�1�ݿ��̳��Ψ�ˡѡ��ߡ��������Ȥʤ�ޤ���<br />\r\n���ǥ���������ȥ����ס������Ψ<br />\r\n�����β��ʤ���ǥ���������ȡ�������<br />\r\n���������<br /><br />\r\n���������̤�Ʊ�쾦�ʤǤ���Х��ץ�����ͤ˴ط��ʤ��绻���롧���Ϥ�<br />\r\n��------------------------------------------<br />\r\n�������٥롡�������Ǿ��¤�ͭ�����̡������������<br />\r\n��------------------------------------------<br />\r\n�����3����������������10���ʸġˡ�����������������10.0���ʡ��<br />\r\n�����4����������������20���ʸġˡ�����������������20.0���ʡ��<br />\r\n�����5����������������50���ʸġˡ�����������������25.0���ʡ��<br />\r\n��-----------------------------------------<br /><br />\r\n\r\n�������⡧���ץ����°����<br />\r\n1�˥��顼�֥ۥ磻�ȡ�<br />\r\n���������ʡ� ��0��<br />\r\n�������ò�/����������Ŭ�Ѥ������ʤ�١������ʤȤ��ư��������Ϥ�<br />\r\n2�˥��顼�֥֥�å���<br />\r\n���������ʡ�����1000��<br />\r\n�������ò�/����������Ŭ�Ѥ������ʤ�١������ʤȤ��ư��������Ϥ�<br />\r\n������°���ˤ�����������١������ʤ˴ޤ�롧���Ϥ�','',16),(110,1,'Normal Product��4��','','',0),(110,2,'����4�ۡ��ĤޤǤ��ò�������ʾ�ʤ�����Ρ������','�ò����ʤ����ꤵ�줿���ʤ˿��̳���ʤ�����ܥ�塼��ǥ���������ȡˤ�Ŭ�Ѥ�����Ǥ���<br />�������ʤ��������ò����ʤ�Ŭ�Ѥ��졢������ʾ��������ȡ�1�Ĥ�����β��ʤ�������Ρ����Ͱ��������̳����Ŭ�Ѥ���ޤ����Ĥޤ���̳��ʬ������١����Ƿ׻����������Ǥ���<br /><br />NOTE������������ϡ־��ʲ��ʤδ����פ���Ԥ��ޤ���<br />�����ʤδ����侦�ʲ��ʤδ���������ƤӽФ��������뤤�ϴ������̤ξ��ʥꥹ�Ȥα�ü�ˤ���[��]�ܥ�����п��Υܥ���ˤ���ƤӽФ����Ȥ��Ǥ��ޤ���<br /><br /><br /><br />�������⡧���ʲ��ʤδ�����<br /><br />�ʲ�������ˤ�ꡢ�׻����ϡ�<br />�������̳���ʲ��λ�������������ò� �� ������<br />�������̳���ʾ�λ������������������ߡ�1�ݿ��̳��Ψ�ˡѡ��ߡ��������Ƿ׻�����ޤ���<br /><br />���ǥ���������ȥ����ס������Ψ�ʡ��<br />�����β��ʤ���ǥ���������ȡ������<br />���������<br /><br />��------------------------------------------<br />�������٥롡�������Ǿ��¤�ͭ�����̡������������<br />��------------------------------------------<br />�����3����������������10���ʸġˡ�����������������10���ʡ�ˡ�<br />�����4����������������20���ʸġˡ�����������������20���ʡ�ˡ�<br />�����5����������������50���ʸġˡ�����������������25���ʡ�ˡ�<br />��------------------------------------------<br />','',17),(111,1,'Normal Product(5)','','',0),(111,2,'����5�ۡ��ĤޤǤ��ò�������ʾ�ʤ��ò��򤵤�ˡ������','�ò����ʤ����ꤵ�줿���ʤ˿��̳���ʤ�����ܥ�塼��ǥ���������ȡˤ�Ŭ�Ѥ�����Ǥ���<br />������ʾ��������ȡ�1�Ĥ�����β��ʤ����ò����ʤ��餵��ˡ����Ͱ�����ޤ����Ĥޤ���ʬ���ò��١����Ƿ׻����������Ǥ���<br /><br />NOTE������������ϡ־��ʲ��ʤδ����פ���Ԥ��ޤ���<br />�����ʤδ����侦�ʲ��ʤδ���������ƤӽФ��������뤤�ϴ������̤ξ��ʥꥹ�Ȥα�ü�ˤ���[��]�ܥ�����п��Υܥ���ˤ���ƤӽФ����Ȥ��Ǥ��ޤ���<br /><br /><br /><br />�������⡧���ʲ��ʤδ�����<br /><br />�ʲ�������ˤ�ꡢ�׻����ϡ�����������ò��ߡ�1�ݿ��̳��Ψ�ˡ��ߡ��������Ȥʤ�ޤ���<br /><br />���ǥ���������ȥ����ס������Ψ�ʡ��<br />�����β��ʤ���ǥ���������ȡ����ò�<br />���������<br />��------------------------------------------<br />�������٥롡�������Ǿ��¤�ͭ�����̡������������<br />��------------------------------------------<br />�����3����������������10���ʸġˡ�����������������10���ʡ��<br />�����4����������������20���ʸġˡ�����������������20���ʡ��<br />�����5����������������50���ʸġˡ�����������������25���ʡ�ˡ�<br />��------------------------------------------<br />','',12),(116,1,'SEO2','','',0),(116,2,'META��title���ꤷ�Ƥ��ʤ�ɸ��ξ��ʥڡ�����','�����ɸ��ξ��ʥڡ�����META�����㡢title���������Ū�����ꤷ�Ƥ��ʤ��ˤΥ���ץ�Ǥ���<br /><br />\r\n\r\nSEO�к��ΰ�ĤȤ��ơ�Zen Cart�Ǥϸ��̾��ʤ��Ȥ�META������title����������Ū�����ꤹ�뤳�Ȥ��Ǥ��ޤ�����<br />\r\n���Υڡ�����ߤƤ狼��褦�ˡ�<br />\r\nZen Cart�Ǥ�ɸ�ൡǽ�Ȥ���META��title�����˾���̾����ʤ���¾�����Ǥ�������褦�ˤǤ��Ƥ��ޤ���<br /><br />\r\n\r\n�������̤ΰ�������侦�ʾ�������꤫�顢TITLE�����˾��ʲ��ʤ�ޤ��ʴޤ�ʤ��ˤ�META��description�ˤΥƥ�����Ĺ�ʤɤ����꤬�Ǥ��ޤ�������������ʤ��Ф���Ŭ�Ѥ���ޤ���<br /><br />','',3),(142,1,'ATTR_CHKBOX1','','',0),(142,2,'��1�ۥ��եȥ��ץ����','���ʥ��ץ����Υ����ס�CHECKBOX�ʥ����å��ܥå����ˤγ��ѥ���ץ�Ǥ���<br /><br />�����å��ܥå��������פˤ���ȡ�1���ʤ�����ʣ���Υ��ץ�����Ʊ������Ǥ��ޤ���<br />������Ǥϡ���£���Ѥ�ץ쥼��ȸ����Υ��ץ����Ȥ��ơ���1�˥��ե���������2�˥�å����������ɡ���3�˥��ꥸ�ʥ륭���ۥ�����դ���3�Ĥ����ꤷ�ޤ�����<br />���Τ������ꥸ�ʥ륭���ۥ�����դ���ͭ�����ץ����¾��2�Ĥ�̵�������ӥ��Ȥ��ޤ������ʤ����ץ����������ò�/������αƶ��򤦤��ʤ�����ˤ��Ƥ��ޤ���<br /><br /><br />���������<br />�����ץ����̾�������եȥ��ץ����<br />�������ץ����Υ����ס���CHECKBOX<br />�����ץ����°������ʤȽ��̡� <br />�����ץ�����͡��������������ץ������ʡ������ò�����/������ˤ�äƳ����Ŭ�Ѥ���<br />��--------------------------------------------------------------<br />����1�˥��ե������������� ��������0�ߡ�����������������<br />����2�˥�å����������ɡ���������0�ߡ�����������������<br />����3�˥����ۥ�����դ�����100�ߡ�����������������<br />','',16),(140,1,'ATTR_TEXT2','','',0),(140,2,'��2��̾���쥪�ץ�������1��ɤ������','���ʥ��ץ����Υ����ס�TEXT�γ��ѥ���ץ�Ǥ���<br />������Ʊ�͡�������Ǥ�ԥ���Ĥؤ�̾�������Ȥ��ƻȤäƤ��ޤ���<br />������Ǥ�1ʸ�����������������Ǥ������������Ǥ�1��ɤ�����ǥ�����Ȥ��ޤ���Word�ǥ�����Ȥ���Τ����ܸ�ˤϤʤ��ޤʤ���������⤷��ޤ��󤬡�����<br /><br /><br />2��ɤޤ�̵����3��ɰʾ�Ǥ�1��ɤ�����20�ߤ��ɲ������T����Ĥ˻����ʸ���������������Ǥ���<br /><br />���������<br />�����ץ����̾����̾�����1��<br />�������ץ����Υ����ס���TEXT<br />�����ƥ�����°���κ�Ĺ��ɽ��������<br />�������������ȡ�<br />�������������줿��ʸ��������Ϥ��Ƥ�������������40ʸ���ޤǡˡ���<br />���������ԡ���1<br />��������ɽ������������40<br />����������Ĺ����80<br />�����ʥ��ץ����°�� �� ���ʤȽ���<br />�������դ��Ȥβ��ʡ�����20��<br />����̵���θ��ա�����2�ʥ�ɡ�<br />����°���ե饰<br />��������°���ˤ�äƲ��ʤ��Ĥ�����Ȥ����ܲ��ʤ˴ޤ�롧���Ϥ�<br />���������ƥ��������Ϥ�ɬ�ܤˤ��롧���Ϥ�','',5),(141,1,'ATTR_RDONLY','','',0),(141,2,'ɽ���Τߥ��ץ����������','���ץ����°����������ˡ�ϡ����ʥХꥨ�������������Ȥ��Ƥ����Ѥ����ǤϤ���ޤ���<br />���ʥڡ������귿ʸ��ɽ���������ӤȤ��Ƥ����Ѳ�ǽ�Ǥ���<br />���ξ��ϡ����ץ����Υ����פȤ��ơ�READ ONLY�פ�Ȥ��ޤ���<br /><br />���������<br />�����ץ����̾��������������ˡ<br />�������ץ����Υ����ס���READ ONLY<br />�����ץ������<br />����1���� 100�� <br />����2�ˣ�.1����<br />����3���������ʼ��ή�ˤޤ��ϼ�Ӥ����岹��40��ޤǡ������ץ�����������Ͽ<br />����4�˥��������油�ʡ�160��ˤޤ� ���������ץ�����������Ͽ','',17),(139,1,'ATTR_TEXT1','','',0),(139,2,'��1��̾���쥪�ץ�������1ʸ���������','���ʥ��ץ����Υ����ס�TEXT�γ��ѥ���ץ�Ǥ���<br />������Ǥϡ��ԥ���Ĥؤ�̾�������Ȥ��ƻȤäƤ��ޤ���<br /><br /><br />̾���쥨�ꥢ�Ϻ���2�ԡ�<br />����1���ܤ�5ʸ���ޤ�̵����6ʸ���ʾ�ϰ�ʸ��10��<br />����2���ܤ�1ʸ��5��<br />���ɲ������T����Ĥ˻����ʸ�������������������ꤷ�ޤ�����<br /><br />�������⡧���ʾ����<br />\r\n������°���ˤ����ʡ����Ϥ�<br /><br />��������ۡ��� 1����̾���쥨�ꥢ��<br />�����ץ����̾����̾�����1��<br />�������ץ����Υ����ס���TEXT<br />�����ƥ�����°���κ�Ĺ��ɽ��������<br />�������������ȡ�<br />����������1���ܤ������ʸ�������Ϥ��Ƥ�������������40ʸ���ޤǡˡ���<br />���������ԡ���1<br />��������ɽ������������40<br />����������Ĺ����80<br />�����ʥ��ץ����°�� �� ���ʤȽ���<br />����ʸ�����Ȥβ��ʡ�����10��<br />����̵����ʸ��������5ʸ��<br />����°���ե饰<br />��������°���ˤ�äƲ��ʤ��Ĥ�����Ȥ����ܲ��ʤ˴ޤ�롧���Ϥ�<br />���������ƥ��������Ϥ�ɬ�ܤˤ��롧���Ϥ�<br /><br />-----------------------<br />��������ۡ���2����̾���쥨�ꥢ��<br />�����ץ����̾����̾�����2��<br />�������ץ����Υ����ס���TEXT<br />�����ƥ�����°���κ�Ĺ��ɽ��������<br />�������������ȡ�<br />����������2���ܤ������ʸ�������Ϥ��Ƥ�������������40ʸ���ޤǡˡ���<br />���������ԡ���1<br />��������ɽ������������40<br />����������Ĺ����80<br />�����ʥ��ץ����°�� �� ���ʤȽ���<br />����ʸ�����Ȥβ��ʡ�����5��<br />����̵����ʸ��������0ʸ��<br />����°���ե饰<br />��������°���ˤ�äƲ��ʤ��Ĥ�����Ȥ����ܲ��ʤ˴ޤ�롧���Ϥ�<br />���������ƥ��������Ϥ�ɬ�ܤˤ��롧���Ϥ�<br /><br />','',7),(144,1,'ATTR_DROPDOWN1','','',0),(144,2,'��1�ۥ����������顼����','���ʥ��ץ����Υ����ס�DROPDOWN�ʥꥹ�Ȥ�������ˤ����RADIO�ʥ饸���ܥ���ˤγ��ѥ���ץ�Ǥ���<br /><br />T����Ĥ�����Ǥ褯�Ȥ�����Ȥ��ơ��������䥫�顼�������ˤ��ޤ�����<br />DROPDOWN��RADIO�Ǥϡ�ʣ�������������椫��1�Ĥ��������ǽ�Ǥ���<br /><br />�����ˤ�ä��ɲ���������ꤹ�뤳�Ȥ��ǽ�Ǥ���<br />�����Ǥ�XL��������DROPDOWN�ˤȥ֥�å���RADIO�ˤΤߡ�500�ߤ����ꤷ�ޤ�����<br /><br />���������<br />�����ץ����̾����������<br />�������ץ����Υ����ס���DROPDOWN<br />�������ץ�����͡���S��M��L��XL�ʡ�500�ߡˡ��֤����򤯤�������������<br />------------------------------<br />�����ץ����̾�������顼<br />�������ץ����Υ����ס���RADIO<br />�������ץ�����͡����ۥ磻�ȡ������������֥롼���֥�å��ʡ�500�ߡ�<br /><br />NOTE��<br /> �֤����򤯤������������ץ��ץ�����ͤ�°���ե饰����ϡ�<br />����ɽ���Τߡס�\"�Ϥ�\"�ˡ����ġ�°���ˤ�äƲ��ʤ��Ĥ�����Ȥ����ܲ��ʤ˴ޤ��ס�\"������\"�����ꤵ��Ƥ��롣 <br />������ˤ�ꡢ�֤����򤯤������������פ����򤷤����֤ǥ���������뤳�ȤϤǤ��ʤ����ᡢ�桼����ɬ��¾�Τ����줫��S�������Ȥ�M�������ˤ����֤��Ȥˤʤ롣<br /><br />\r\n\r\nNOTE��\r\n���顼����Υ饸���ܥ���ˡ����顼���åסʿ����ܡˤ�ź�����Ƥ��ޤ���������ϡ����ʥ��ץ����°����°���θ��ܲ��� �ǲ�������Ͽ�����ɽ������ޤ���<br /><br />\r\n�ʤ����饸���ܥ��󡢥��ץ����̾�����ܲ��������֤ϡ��֥��ץ����̾�δ����פˤơ�<br />\r\n����(Row)�������°������<br />\r\n���饸���ܥ��󡦥����å��ܥå�����°����������<br />\r\n���ѹ����뤳�Ȥ��Ǥ��ޤ���','',28),(152,1,'ATTR_DROPDOWN2','','',0),(152,2,'��2�ۥ����������顼����ʥ�����10�󥪥�Ŭ�ѡ�','���ʥ��ץ����Υ����ס�DROPDOWN�ʥꥹ�Ȥ�������ˤ����RADIO�ʥ饸���ܥ���ˤγ��ѥ���ץ�Ǥ���<br /><br />������ʡ�1�ۥ����������顼����ˤȥ��ץ�����������Ƥ�����Ʊ���Ǥ�����<br />\r\n���ξ��ʤϥ�����10��������оݤˤʤäƤ��������ۤʤ�ޤ���<br /><br />\r\n\r\n�����ˤ�ä��ɲ���������ꤹ�뤳�Ȥ��ǽ�ǡ�<br />\r\n���ξ�硢�����뤬�ɲ������Ŭ�Ѥ���뤫�ɤ����ϥ��ץ����°�������꼡��Ǥ���<br />\r\n\r\n�㤨��XL���������ɲ������500�ߤΤȤ���<br />\r\n�֥��ץ����°���ˤ�����Ŭ�Ѥ����Ϥ��פ����ꤷ�Ƥ���Τ�<br />\r\n�����ɲ�������Ф��Ƥ�10�������Ŭ�Ѥ���뤳�Ȥˤʤꡢ<br />\r\nXL������������μºݤ��ɲ�����ϡ�450�ߤǤ���<br /><br />\r\n\r\n������Ф��ƥ֥�å��ʥ��顼�ˤ�XL��������Ʊ���ɲ������500�ߤǤ�����<br />\r\n�֥��ץ����°���ˤ�����Ŭ�Ѥ���ᤤ�����פ����ꤷ�Ƥ���Τ�<br />\r\n10�������Ŭ�Ѥ��줺���ºݤ��ɲ�������500�ߤΤޤޤ�����ޤ���<br /><br />\r\n\r\n���������<br />�����ץ����̾����������<br />�������ץ����Υ����ס���DROPDOWN<br />�������ץ�����͡���S��M��L��XL�ʡ�500�ߡˡ��֤����򤯤�������������<br />�������ץ����°���ˤ�����Ŭ�Ѥ��롧���Ϥ�<br />------------------------------<br />�����ץ����̾�������顼<br />�������ץ����Υ����ס���RADIO<br />�������ץ�����͡����ۥ磻�ȡ������������֥롼���֥�å��ʡ�500�ߡ�<br />�������ץ����°���ˤ�����Ŭ�Ѥ��롧��������<br /><br />NOTE��<br /> �֤����򤯤������������ץ��ץ�����ͤ�°���ե饰����ϡ�<br />����ɽ���Τߡס�\"�Ϥ�\"�ˡ����ġ�°���ˤ�äƲ��ʤ��Ĥ�����Ȥ����ܲ��ʤ˴ޤ��ס�\"������\"�����ꤵ��Ƥ��롣 <br />������ˤ�ꡢ�֤����򤯤������������פ����򤷤����֤ǥ���������뤳�ȤϤǤ��ʤ����ᡢ�桼����ɬ��¾�Τ����줫��S�������Ȥ�M�������ˤ����֤��Ȥˤʤ롣<br /><br />\r\n\r\nNOTE��\r\n���顼����Υ饸���ܥ���ˡ����顼���åסʿ����ܡˤ�ź�����Ƥ��ޤ���������ϡ����ʥ��ץ����°����°���θ��ܲ��� �ǲ�������Ͽ�����ɽ������ޤ���<br /><br />\r\n�ʤ����饸���ܥ��󡢥��ץ����̾�����ܲ��������֤ϡ��֥��ץ����̾�δ����פˤơ�<br />\r\n����(Row)�������°������<br />\r\n���饸���ܥ��󡦥����å��ܥå�����°����������<br />\r\n���ѹ����뤳�Ȥ��Ǥ��ޤ���','',43),(146,1,'ATTR_DROPDOWN3','','',0),(146,2,'��3D�ۥ�ܥ���̤�����DROPDOWN��','���ʥ��ץ����Υ����ס�DROPDOWN�ʥꥹ�Ȥ�������ˤγ��ѥ���ץ�Ǥ���<br /><br />������ϥ�ܥ���̤����Ȥ�������Ǥ���<br />�桼����1�᡼�ȥ뤢�뤤��1������᡼�ȥ�ñ�̤ǹ����Ǥ����ΤȤ���<br />����ñ�̤�DROPDOWN�����פξ��ʥ��ץ�����Ȥä������ǽ�ˤ��Ƥ��ޤ���<br /><br />�᡼�ȥ�������ϡ�1��m�ˤ����� ��500�ߤǡ����ʽ��̤�100g�ʡ�0��1Kg�ˡ�<br />�����������ϡ�1��cm�ˤ�����  ��5�ߤǡ����ʽ��̤�1g�ʡ�0��001Kg�ˤΤ褦�ˡ�<br />����ñ�̤�����˱����ơ�ñ��Ĺ������������ʤȾ��ʽ��̤���ޤ�Ȥ����ߥ��Ǥ���<br /><br />�ޤ����Ǿ�����������ꤷ�Ƥ��ꡢ������10cm��m�ξ���10m�˰ʾ夫��Ȥʤ�ޤ���<br /><br />���������<br />�����ʾ���<br />��������°���ˤ����ʡ����Ϥ�<br />�������ʲ��� (�ͥå�)����0<br />�������ʤκǾ����̡���10<br />�������ʤο���ñ�̡�����1<br />�������ʽ��̡���0<br /><br />�����ץ����°��������<br />�����ץ����̾����ñ��Ĺ��<br />�����ץ����°���� <br />�����ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧���Ϥ�<br />����°���ˤ�äƲ��ʤ��Ĥ�����Ȥ����ܲ��ʤ˴ޤ�롧���Ϥ�<br /><br />�������ʤȽ���<br />�������ץ�����͡��������������ץ������ʡ��������ץ�������<br />����--------------------------------------------------------------<br />������1�˥᡼�ȥ롡�������� ������500�ߡ���������0��1��Kg��<br />������2�˥�����᡼�ȥ롡�� ����5�ߡ����������� 0��001��Kg��<br /><br />NOTE��<br />Ʊ�����ƥ���ˡ�����Ⱦ��ʥ��ץ�������Ƥ�RADIO�ʥ饸���ܥ���˥����פ����ꤷ�����Ǻܤ��Ƥ��ޤ��ʢ���3R�ۥ�ܥ���̤�����ñ������ˡˡ������ܤΰ㤤�ʤɤ���ǧ����������','',12),(157,2,'��2�۾��ʥ��ץ��������ˤ⥻����Ŭ�Ѥ�����','�����뵡ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���<br />���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ���<br />���Τ�������åɤ����̿��Ȥ��ƥ��ץ��������ʡ�2000�ߡˤ����ꤵ��Ƥ��ޤ���<br />������Ǥϡ������뤬Ŭ�Ѥ��줿���ˡ����ץ��������ˤ⥻���뤬Ŭ�Ѥ����褦�����ꤷ�Ƥ��ޤ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����10��OFF<br />���Ͱ����ۡ���10.0<br />�������ס���Ψ�ʡ��<br />���������оݤΥ��ƥ��ꡧ���֥�����10��OFF�ץ��ƥ���<br /><br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥�����10��OFF�ץ��ƥ���<br />�����ʲ��ʡ���10000��<br /><br />�������⡧���ʥ��ץ����°���ۡ������ξ��ʤ˴ؤ�������<br />�����ץ����̾�������顼<br />�����ץ�����͡�����å�<br />�����ץ������ʡ�����2000��<br />���ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧 �Ϥ�','',5),(158,2,'��3�۾��ʥ��ץ��������ϥ������оݳ��ˤ�����','�����뵡ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���<br />���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ���<br />���Τ�������åɤ����̿��Ȥ��ƥ��ץ��������ʡ�2000�ߡˤ����ꤵ��Ƥ��ޤ���<br />���������ʡ�2�۾��ʥ��ץ������ɲ�����ˤ⥻���뤬Ŭ�Ѥ������ˤȰۤʤꡢ������Ǥϥ����뤬Ŭ�Ѥ��줿���ˡ����ץ��������ˤϥ����뤬Ŭ�Ѥ���ʤ�����ˤ��Ƥ��ޤ����Ĥޤꡢ��������⡢�̾��̤�Υ��ץ�������⤬������ޤ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����10��OFF<br />���Ͱ����ۡ���10.0<br />�������ס���Ψ�ʡ��<br />���������оݤΥ��ƥ��ꡧ���֥�����10��OFF�ץ��ƥ���<br /><br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥�����10��OFF�ץ��ƥ���<br />�����ʲ��ʡ���10000��<br /><br /><br />�������⡧���ʥ��ץ����°���ۡ������ξ��ʤ˴ؤ�������<br />�����ץ����̾�������顼<br />�����ץ�����͡�����å�<br />�����ץ������ʡ�����2000��<br />���ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧 ������','',1),(143,1,'ATTR_CHKBOX2','','',0),(143,2,'��2�ۥե��ߥ꡼�������å�����','���ʥ��ץ����Υ����ס�CHECKBOX�ʥ����å��ܥå����ˤγ��ѥ���ץ�Ǥ���<br /><br />�����å��ܥå��������פˤ���ȡ�1���ʤ�����ʣ���Υ��ץ�����Ʊ������Ǥ��ޤ���<br />������Ǥϡ��ե��ߥ꡼�Ǥ�·����T����Ĥ��������褦�ʥ����������ꤷ�ơ�<br />�ѥ��Ѥ�L���������ޥޤ�S�����������������ˤϿ�Ĺ150cm�����������A�Ҥ����˿�Ĺ120cm�������������Τ褦�˥����������ӡ�<br />���åȹ����Ǥ���褦���ꤷ�ޤ�����<br /><br /><br />NOTE��<br />��������������Ȥ˲��ʤȾ��ʽ��̤��ۤʤꤽ���ϥ��ץ�������⡢���ץ������̤Ȥ������ꤷ�Ƥ��ޤ���<br />�����ϡ��ò�����/������ˤ�äƳ����Ŭ�Ѥ����Ϥ��פ�����ʤΤǡ�<br />�⤷���ξ��ʤ��ò���������Ԥ��Х��ץ��������γۤ��Ѳ����ޤ���<br /><br />���������<br />�����ץ����̾����������<br />�������ץ����Υ����ס���CHECKBOX<br />�����ץ�����͡���S, M, L, 110, 120, 130, 140, 150<br />�����ץ����°��<br />�����ץ�����͡��������������ץ������ʡ������ò�����/������ˤ�äƳ����Ŭ�Ѥ���<br />��--------------------------------------------------------------<br />��S���������������������������� +4000�ߡ��������Ϥ�<br />��M������ ����������������������+4000�ߡ��������Ϥ�<br />��L�������� ��������������������+4500�ߡ��������Ϥ�<br />��140��150cm���������������� +3500�ߡ��������Ϥ�<br />��110��120��130cm����������+3000�ߡ��������Ϥ�','',10),(151,1,'ATTR_RADIO3','','',0),(151,2,'��3R�ۥ�ܥ���̤�����RADIO��','���ʥ��ץ����Υ����ס�RADIO�ʥ饸���ܥ���ˡˤγ��ѥ���ץ�Ǥ���<br /><br />������ϥ�ܥ���̤����Ȥ�������Ǥ���<br />�桼����1�᡼�ȥ뤢�뤤��1������᡼�ȥ�ñ�̤ǹ����Ǥ����ΤȤ���<br />����ñ�̤�DROPDOWN�����פξ��ʥ��ץ�����Ȥä������ǽ�ˤ��Ƥ��ޤ���<br /><br />�᡼�ȥ�������ϡ�1��m�ˤ����� ��500�ߤǡ����ʽ��̤�100g�ʡ�0��1Kg�ˡ�<br />�����������ϡ�1��cm�ˤ�����  ��5�ߤǡ����ʽ��̤�1g�ʡ�0��001Kg�ˤΤ褦�ˡ�<br />����ñ�̤�����˱����ơ�ñ��Ĺ������������ʤȾ��ʽ��̤���ޤ�Ȥ����ߥ��Ǥ���<br /><br />�ޤ����Ǿ�����������ꤷ�Ƥ��ꡢ������10cm��m�ξ���10m�˰ʾ夫��Ȥʤ�ޤ���<br /><br />���������<br />�����ʾ���<br />��������°���ˤ����ʡ����Ϥ�<br />�������ʲ��� (�ͥå�)����0<br />�������ʤκǾ����̡���10<br />�������ʤο���ñ�̡�����1<br />�������ʽ��̡���0<br /><br />�����ץ����°��������<br />�����ץ����̾����ñ��Ĺ��<br />�����ץ����°���� <br />�����ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧���Ϥ�<br />����°���ˤ�äƲ��ʤ��Ĥ�����Ȥ����ܲ��ʤ˴ޤ�롧���Ϥ�<br /><br />�������ʤȽ���<br />�������ץ�����͡��������������ץ������ʡ��������ץ�������<br />����--------------------------------------------------------------<br />������1�˥᡼�ȥ롡�������� ������500�ߡ���������0��1��Kg��<br />������2�˥�����᡼�ȥ롡�� ����5�ߡ����������� 0��001��Kg��<br /><br /><br />NOTE��<br />Ʊ�����ƥ���ˡ�����Ⱦ��ʥ��ץ�������Ƥ�DROPDOWN�ʥꥹ������˥����פ����ꤷ�����Ǻܤ��Ƥ��ޤ��ʢ���3D�ۥ�ܥ���̤�����ñ������ˡˡ������ܤΰ㤤�ʤɤ���ǧ����������','',4),(227,2,'��1�ۥ��ǡ������ե������ź�դ�����ʸ','���ʥ��ץ����Υ����ס�FILE�γ��ѥ���ץ�Ǥ���<br /><br />\r\n\r\nFILE�����פˤ���ȡ����åץ��ɥե�����λ�����ɽ�����졢�桼���ϥե������ź�դ�����ʸ���뤳�Ȥ��Ǥ��ޤ���<br />\r\n\r\n������ǰ����ԥ���Ĥϡ���Ҥ䥯��֤Υ��򥪥ꥸ�ʥ�ץ��ȤǤ��뾦�ʤǡ����Υǡ����ե�����ϥ桼�������餫���ᥤ�饹�ȥ졼���ʤɤǺ���������Τ򥢥åץ��ɤ��Ʊ��ļԤ��Ϥ��ޤ����ʤ������ץ��������Ȥ���1000�ߤ�����ޤ���<br /><br /><br />\r\n\r\n\r\n�ڥ��ץ����̾�������<br />\r\n��[���ץ����̾]����\"�����ǡ���ź��\"<br />\r\n��[���ץ����Υ�����]����FILE<br /><br />\r\n��FILE�����פξ��ϡ����ץ��������Ͽ�����פǤ���<br /><br />\r\n\r\n�������⡧���ʾ����<br />\r\n��[���ʲ���]��4000��<br />\r\n��[����°���ˤ�����]���Ϥ�<br /><br />\r\n\r\n�������⡧���ץ����°����\"�����ǡ���ź��\"���ץ����<br />\r\n�����ץ������ʡ�+1000 ��<br />','',4),(227,1,'ATTR_FILE','','',0),(159,2,'��1�ۥ�����Ŭ�Ѥδ�����','�����뵡ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���<br />���Υ��ƥ�����Ф��ơ�500�߰����Υ��������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ�����<br />���ץ����ˤ��ɲ���������ꤷ�Ƥ��ʤ��ΤǤ�Ȥ�ȤɤΥ��顼�Ǥ�Ʊ����Ǥ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����500��OFF<br />���Ͱ����ۡ���500�ʱߡ�<br />�������ס����Ͱ�����<br />���������оݤΥ��ƥ��ꡧ���֥����롧500��OFF�ץ��ƥ���<br /><br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥����롧500��OFF�ץ��ƥ���<br />�����ʲ��ʡ���10000��<br />','',2),(160,2,'��2�۾��ʥ��ץ��������ˤ⥻����Ŭ�Ѥ�����','�����뵡ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���<br />\r\n���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />\r\n\r\n���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ���<br />\r\n���Τ�������åɤ����̿��Ȥ��ƥ��ץ��������ʡ�2000�ߡˤ����ꤵ��Ƥ��ޤ���<br />\r\n������Ǥϡ������뤬Ŭ�Ѥ��줿���ˡ����ץ��������ˤ⥻���뤬Ŭ�Ѥ����褦�����ꤷ�Ƥ��ޤ���<br /><br />\r\n\r\n��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />\r\n��������̾����500��OFF<br />\r\n���Ͱ����ۡ���500�ʱߡ�<br />\r\n�������ס����Ͱ�����<br />\r\n���������оݤΥ��ƥ��ꡧ���֥����롧500��OFF�ץ��ƥ���<br /><br /><br />\r\n\r\n\r\n�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />\r\n�����ʥޥ��������ƥ��ꡧ���֥����롧500��OFF�ץ��ƥ���<br />\r\n�����ʲ��ʡ���10000��<br /><br /><br />\r\n\r\n\r\n�������⡧���ʥ��ץ����°���ۡ������ξ��ʤ˴ؤ�������<br />\r\n�����ץ����̾�������顼<br />\r\n�����ץ�����͡�����å�<br />\r\n�����ץ������ʡ�����2000��<br />\r\n���ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧 �Ϥ�<br /><br /><br />\r\n\r\n\r\n<strong>NOTE��</strong>\r\n���ºݤα��Ѥˤ����Ƥϡ�����ۤ��Ͱ���������򥪥ץ��������ˤ�Ŭ�Ѥ��������դ�ɬ�פǤ���<br />\r\n���Υ������Ǥϡ����ޤ��ޥ��ץ���������2000�ߡˤ���������Ͱ����ۡ�-500�ߡˤ����礭������������500�߰�����ȿ�Ǥ���Ƥ��ޤ������äˡ����ץ����������⥻������Ͱ����ۤ������礭��������������ǽ���ޤ��󡣸���ۤ��Ͱ�����̣��褯�ͤ���Ŭ�Ѥ���Ƥ���������<br /><br />','',5),(161,2,'��3�۾��ʥ��ץ��������ϥ������оݳ��ˤ�����','�����뵡ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���<br />���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ���<br />���Τ�������åɤ����̿��Ȥ��ƥ��ץ��������ʡ�2000�ߡˤ����ꤵ��Ƥ��ޤ���<br />���������Ȱۤʤꡢ������ǤϾ��ʤؤΥ�����Ŭ�ѻ��ˡ����ץ��������ˤ�Ŭ�Ѥ���ʤ�����ˤ��Ƥ��ޤ����Ĥޤꡢ���ʼ��Τ���������ʤǤ⥪�ץ��������˴ؤ��Ƥ��̾��̤꤫����ޤ���<br /><br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����������500��OFF<br />���Ͱ����ۡ���500�ʱߡ�<br />�������ס����Ͱ�����<br />���������оݤΥ��ƥ��ꡧ���֥����롧500��OFF�ץ��ƥ���<br /><br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥����롧500��OFF�ץ��ƥ���<br />�����ʲ��ʡ���10000��<br /><br /><br />�������⡧���ʥ��ץ����°���ۡ������ξ��ʤ˴ؤ�������<br />�����ץ����̾�������顼<br />�����ץ�����͡�����å�<br />�����ץ������ʡ�����2000��<br />���ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧 ������','',1),(162,2,'��1�ۥ�����Ŭ�Ѥδ�����','�����뵡ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���<br />���Υ��ƥ�����Ф��ơ�8000�ߡʿ��������ʡˤˤ��륻�������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ�����<br />���ץ����ˤ��ɲ���������ꤷ�Ƥ��ʤ��ΤǤ�Ȥ�ȤɤΥ��顼�Ǥ�Ʊ����Ǥ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����������8000��<br />���Ͱ����ۡ���8000�ʱߡ�<br />�������ס�������������<br />���������оݤΥ��ƥ��ꡧ���֥����롧1���ߤ�8000�ߤˡץ��ƥ���<br /><br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥����롧1���ߤ�8000�ߤˡץ��ƥ���<br />�����ʲ��ʡ���10000��<br />','',2),(163,2,'��2�۾��ʥ��ץ��������ˤ⥻����Ŭ�Ѥ�����','�����뵡ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���<br />\r\n���Υ��ƥ�����Ф��ơ�8000�ߡʿ��������ʡˤˤ��륻�������꤬����Ƥ��ꡢ���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />\r\n\r\n���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ���<br />\r\n���Τ�������åɤ����̿��Ȥ��ƥ��ץ��������ʡ�2000�ߡˤ����ꤵ��Ƥ��ޤ���<br />\r\n������Ǥϡ������뤬Ŭ�Ѥ��줿���ˡ����ץ��������ˤ⥻���뤬Ŭ�Ѥ����褦�����ꤷ�Ƥ��ޤ���<br /><br />\r\n\r\n\r\n��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����������8000��<br />\r\n���Ͱ����ۡ���8000�ʱߡ�<br />\r\n�������ס�������������<br />\r\n���������оݤΥ��ƥ��ꡧ���֥����롧1���ߤ�8000�ߤˡץ��ƥ���<br /><br /><br />\r\n\r\n\r\n�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />\r\n�����ʥޥ��������ƥ��ꡧ���֥����롧1���ߤ�8000�ߤˡץ��ƥ���<br />\r\n�����ʲ��ʡ���10000��<br /><br /><br />\r\n\r\n\r\n�������⡧���ʥ��ץ����°���ۡ������ξ��ʤ˴ؤ�������<br />\r\n�����ץ����̾�������顼<br />\r\n�����ץ�����͡�����å�<br />\r\n�����ץ������ʡ�����2000��<br />\r\n���ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧 �Ϥ�<br /><br /><br />\r\n\r\n\r\n<strong>NOTE��</strong><br />\r\n�ºݤˤϥ�åɤ��Ф��륪�ץ��������ϳ��������ޤ���ʤ��⤽��2000�ߤΥ��ץ��������˿�����8000�ߥ������Ŭ�Ѥ��������������ʤˤʤäƤ��ޤ��ޤ����ˡ�<br />\r\n���Τ褦�ˡ��ɿ��������ʡɤǸ��ͤ��֤������륻��������򥪥ץ����ؤ�Ŭ�Ѥ��뤳�ȼ���̵��̣�ʾ�礬¿�����ᡢ���ץ����ؤ�Ŭ�Ѥ�̵�뤵�����ͤˤʤäƤ��ޤ���<br /><br />','',6),(164,2,'��3�۾��ʥ��ץ��������ϥ������оݳ��ˤ�����','�����뵡ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���<br />���Υ��ƥ�����Ф��ơ�8000�ߡʿ��������ʡˤˤ��륻�������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ���<br />���Τ�������åɤ����̿��Ȥ��ƥ��ץ��������ʡ�2000�ߡˤ����ꤵ��Ƥ��ޤ���<br />���������Ȱۤʤꡢ������ǤϾ��ʤؤΥ�����Ŭ�ѻ��ˡ����ץ��������ˤ�Ŭ�Ѥ���ʤ�����ˤ��Ƥ��ޤ����Ĥޤꡢ���ʼ��Τ���������ʤǤ⥪�ץ��������˴ؤ��Ƥ��̾��̤꤫����ޤ���<br /><br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����������8000��<br />���Ͱ����ۡ���8000�ʱߡ�<br />�������ס�������������<br />���������оݤΥ��ƥ��ꡧ���֥����롧1���ߤ�8000�ߤˡץ��ƥ���<br /><br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥����롧1���ߤ�8000�ߤˡץ��ƥ���<br />�����ʲ��ʡ���10000��<br /><br /><br />�������⡧���ʥ��ץ����°���ۡ������ξ��ʤ˴ؤ�������<br />�����ץ����̾�������顼<br />�����ץ�����͡�����å�<br />�����ץ������ʡ�����2000��<br />���ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧 ������<br />','',3),(165,2,'��SP1-1���ò����ʤδ������1���ߤ�8000�ߤˡ�','�ò���ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���<br /><br />���ξ��ʤˤ��̾����10000�ߤΤȤ�����ò�8000�ߡʿ����ʡˤˤ����ò����꤬����Ƥ��ޤ���<br />�ò��Ͽ����ʡ����뤤�ϳ��Ψ�ǻ����ǽ�Ǥ���������Ͽ����ʤ����ꤷ����Ǥ���<br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ�����<br />���ץ����ˤ��ɲ���������ꤷ�Ƥ��ʤ��ΤǤ�Ȥ�ȤɤΥ��顼�Ǥ�Ʊ����Ǥ���<br /><br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʲ��ʡ���10000��<br />���ò����ʡ���8000��','',0),(166,2,'��SP2-1���ò����ʤδ������50%����','�ò���ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���<br /><br />���ξ��ʤˤ��̾����10000�ߤΤȤ�����ò�8000�ߡʿ����ʡˤˤ����ò����꤬����Ƥ��ޤ���<br />�ò��Ͽ����ʡ����뤤�ϳ��Ψ�ǻ����ǽ�Ǥ���������ϳ��Ψ�����ꤷ����Ǥ���<br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ�����<br />���ץ����ˤ��ɲ���������ꤷ�Ƥ��ʤ��ΤǤ�Ȥ�ȤɤΥ��顼�Ǥ�Ʊ����Ǥ���<br /><br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʲ��ʡ���10000��<br />���ò����ʡ���50%','',1),(167,2,'��SP2-2�۾��ʥ��ץ��������ˤ��ò�Ŭ�ѡ�50�����','�ò���ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���<br /><br />���ξ��ʤˤ��̾����10000�ߤΤȤ����50��������ò����꤬����Ƥ��ޤ���<br />�ò��Ͽ����ʡ����뤤�ϳ��Ψ�ǻ����ǽ�Ǥ���������ϳ��Ψ�����ꤷ����Ǥ���<br /><br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ���<br />���Τ�������åɤ����̿��Ȥ��ƥ��ץ��������ʡ�2000�ߡˤ����ꤵ��Ƥ��ޤ���<br />������Ǥϡ����ʤؤ��ò�Ŭ�ѻ��ˡ����ץ��������ˤ��ò���Ŭ�Ѥ����褦�����ꤷ�Ƥ��ޤ���<br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʲ��ʡ���10000��<br />���ò����ʡ���50%<br /><br />�������⡧���ʥ��ץ����°���ۡ������ξ��ʤ˴ؤ�������<br />�����ץ����̾�������顼<br />�����ץ�����͡�����å�<br />�����ץ������ʡ�����2000��<br />���ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧 �Ϥ�','',2),(168,2,'��SP2-2�۾��ʥ��ץ����������ò��оݳ���50�����','�ò���ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���<br /><br />���ξ��ʤˤ��̾����10000�ߤΤȤ����50��������ò����꤬����Ƥ��ޤ���<br />�ò��Ͽ����ʡ����뤤�ϳ��Ψ�ǻ����ǽ�Ǥ���������ϳ��Ψ�����ꤷ����Ǥ���<br /><br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ���<br />���Τ�������åɤ����̿��Ȥ��ƥ��ץ��������ʡ�2000�ߡˤ����ꤵ��Ƥ��ޤ���<br />���������Ȱۤʤꡢ������ǤϾ��ʤؤ��ò�Ŭ�ѻ��ˡ����ץ��������ˤ�Ŭ�Ѥ���ʤ�����ˤ��Ƥ��ޤ����Ĥޤꡢ���ʼ��Τ��ò��Ǥ⥪�ץ��������˴ؤ��Ƥ��̾��̤꤫����ޤ���<br /><br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʲ��ʡ���10000��<br />���ò����ʡ���50%<br /><br />�������⡧���ʥ��ץ����°���ۡ������ξ��ʤ˴ؤ�������<br />�����ץ����̾�������顼<br />�����ץ�����͡�����å�<br />�����ץ������ʡ�����2000��<br />���ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧 ������','',0),(169,2,'��SP3�۴��ָ�����ò�����','�ò���ǽ�����򤹤뤿��Ρ���������ץ����Ǥ���<br /><br />���ξ��ʤ��̾����10000�ߤΤȤ�����ò���Ⱦ�ۤˤ���<br />������ò��»ܴ��֤��ߤ��ޤ�����Ⱦǯ�֤����Ͱ�������ޤ���<br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ�����<br />���ץ����ˤ��ɲ���������ꤷ�Ƥ��ʤ��ΤǤ�Ȥ�ȤɤΥ��顼�Ǥ�Ʊ����Ǥ���<br /><br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʲ��ʡ���10000��<br />���ò����ʡ���50%<br />���󶡳���������λ������2007/1/15 �� 2007/6/15','',0),(170,2,'��������֤�Ŭ�Ѳ����ӡ�Ŭ�Ѥ���륱������','�����������Ǥϡ�������»ܴ��֤���ꤷ���ꡢ�������оݤ��ʲ����Ӥǹʤä��ꤹ�뵡ǽ������ޤ���<br />�㤨�С�8�����С����󥻡���פ�֥��ꥹ�ޥ�������פ�»ܤ��������ʤɤ˳��ѤǤ���Ǥ��礦��<br />����˲����ӵ�ǽ��Ȥ��С�5000�ߡ�10000�ߤξ��ʤ������Ͱ�������Ȥ��ä����Ȥ���ǽ�Ǥ���<br /><br />���Υ��ƥ���ϡ�10������Υ��������꤬����Ƥ��ޤ�����<br />����μ»ܴ��֤��ߤ��Ƥ��ޤ����ޤ���8000�߰ʾ�ξ��ʤˤ����������Ŭ�Ѥ���褦���ꤷ�Ƥ���ޤ���<br /><br />���ξ��ʤβ��ʤ�1���ߤʤΤǡ������뤬Ŭ�Ѥ���ޤ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����10�󥻡�����֤Ȳ����Ӹ���<br />���Ͱ����ۡ���10.0<br />�������ס���Ψ�ʡ��<br />������������10000�� ���� [���Ϥ��ʤ�]��<br />���������оݤΥ��ƥ��ꡧ���֥������Ϣetc�ץ��ƥ���<br /><br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥������Ϣetc�ץ��ƥ���<br />�����ʲ��ʡ���10000��','',1),(171,2,'��������֤�Ŭ�Ѳ����ӡ�Ŭ�Ѥ���ʤ���������','�����������Ǥϡ�������»ܴ��֤���ꤷ���ꡢ�������оݤ��ʲ����Ӥǹʤä��ꤹ�뵡ǽ������ޤ���<br />�㤨�С�8�����С����󥻡���פ�֥��ꥹ�ޥ�������פ�»ܤ��������ʤɤ˳��ѤǤ���Ǥ��礦��<br />����˲����ӵ�ǽ��Ȥ��С�5000�ߡ�10000�ߤξ��ʤ������Ͱ�������Ȥ��ä����Ȥ���ǽ�Ǥ���<br /><br />���Υ��ƥ���ϡ�10������Υ��������꤬����Ƥ��ޤ�����<br />����μ»ܴ��֤��ߤ��Ƥ��ޤ����ޤ���8000�߰ʾ�ξ��ʤˤ����������Ŭ�Ѥ���褦���ꤷ�Ƥ���ޤ���<br /><br />���ξ��ʤβ��ʤ�7500�ߤǤ��Τǡ��������Ŭ���оݳ��Ȥʤ�ޤ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����10�󥻡�����֤Ȳ����Ӹ���<br />���Ͱ����ۡ���10.0<br />�������ס���Ψ�ʡ��<br />������������10000�� ���� [���Ϥ��ʤ�]��<br />���������оݤΥ��ƥ��ꡧ���֥������Ϣetc�ץ��ƥ���<br /><br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥������Ϣetc�ץ��ƥ���<br />�����ʲ��ʡ���7500��','',2),(172,2,'��4�ۤ��ξ��ʤˤϥ����뤬Ŭ�Ѥ���ޤ���','���ξ��ʤϥ����뤬Ŭ�Ѥ���ޤ��󡣤ʤ��Ǥ��礦����<br />��ͳ�ϡ����ξ��ʤϥ�󥯾��ʤǡ��־��ʥޥ��������ƥ���פ��������оݳ��Υ��ƥ��������Ǥ���<br /><br /><strong>NOTE��</strong><br />ʣ���Υ��ƥ���˥�󥯤��줿���ʤξ�硢���ʥޥ��������ƥ���Υ��������꤬Ŭ�Ѥ���ޤ���<br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֤��Υ��ƥ���ˤϥ��������ꤷ�Ƥ��ʤ��ץ��ƥ���<br />�����ʲ��ʡ���10000��','',2),(173,2,'��SP1���ò����ʤ˥�����Ŭ�Ѥδ�����','�ò����ʤ˥������Ŭ�Ѥ������Τդ�ޤ������򤹤뤿��Ρ���������ץ����Ǥ���<br /><br />���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />�ޤ���������Ȥ��̤�<br />���ξ��ʤˤ��̾����10000�ߤΤȤ����Ⱦ�ۤˤ����ò����꤬����Ƥ��ޤ���<br /><br />�ò����ʤ��Ф��륻������������ò����ʤβ��ʤˤ���˥������Ͱ�����Ŭ�Ѥ���פˤ����Τ�<br />�ò����ʤ��餵���10��Υ������Ͱ�����Ŭ�Ѥ���ޤ���<br /><br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ�����<br />���ץ����ˤ��ɲ���������ꤷ�Ƥ��ʤ��ΤǤ�Ȥ�ȤɤΥ��顼�Ǥ�Ʊ����Ǥ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����10��OFF���ò��ܥ������<br />���Ͱ����ۡ���10.0<br />�������ס���Ψ�ʡ��<br />���ò����ʤξ�硧���ò����ʤβ��ʤˤ���˥������Ͱ�����Ŭ�Ѥ���<br />���������оݤΥ��ƥ��ꡧ���֥�������ò����ò����ʤ򤵤��10��OFF�ץ��ƥ���<br /><br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥�������ò����ò����ʤ򤵤��10��OFF�ץ��ƥ���<br />�����ʲ��ʡ���10000��<br />���ò����ʡ���50%<br />','',2),(174,2,'��SP2�۾��ʥ��ץ��������ˤ⥻���롦�ò�Ŭ�Ѥ�����','�ò����ʤ˥������Ŭ�Ѥ������Τդ�ޤ������򤹤뤿��Ρ���������ץ����Ǥ���<br />���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />�ޤ���������Ȥ��̤�<br />���ξ��ʤˤ��̾����10000�ߤΤȤ����Ⱦ�ۤˤ����ò����꤬����Ƥ��ޤ���<br /><br /><br />�ò����ʤ��Ф��륻������������ò����ʤβ��ʤˤ���˥������Ͱ�����Ŭ�Ѥ���פˤ����Τ�<br />�ò����ʤ��餵���10��Υ������Ͱ�����Ŭ�Ѥ���ޤ���<br /><br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ���<br />���Τ�������åɤ����̿��Ȥ��ƥ��ץ��������ʡ�2000�ߡˤ����ꤵ��Ƥ��ޤ���<br />������Ǥϡ������롦�ò���Ŭ�Ѥ��줿���ˡ����ץ��������ˤ⥻���롦�ò���Ŭ�Ѥ����褦�����ꤷ�Ƥ��ޤ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����10��OFF���ò��ܥ������<br />���Ͱ����ۡ���10.0<br />�������ס���Ψ�ʡ��<br />���ò����ʤξ�硧���ò����ʤβ��ʤˤ���˥������Ͱ�����Ŭ�Ѥ���<br />���������оݤΥ��ƥ��ꡧ���֥�������ò����ò����ʤ򤵤��10��OFF�ץ��ƥ���<br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥�������ò����ò����ʤ򤵤��10��OFF�ץ��ƥ���<br />�����ʲ��ʡ���10000��<br />���ò����ʡ���50%<br /><br />�������⡧���ʥ��ץ����°���ۡ������ξ��ʤ˴ؤ�������<br />�����ץ����̾�������顼<br />�����ץ�����͡�����å�<br />�����ץ������ʡ�����2000��<br />���ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧 �Ϥ�<br /><br />','',1),(175,2,'��SP3�۾��ʥ��ץ��������ϥ����롦�ò��оݳ��ˤ�����','�ò����ʤ˥������Ŭ�Ѥ������Τդ�ޤ������򤹤뤿��Ρ���������ץ����Ǥ���<br />���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />�ޤ���������Ȥ��̤�<br />���ξ��ʤˤ��̾����10000�ߤΤȤ����Ⱦ�ۤˤ����ò����꤬����Ƥ��ޤ���<br /><br /><br />�ò����ʤ��Ф��륻������������ò����ʤβ��ʤˤ���˥������Ͱ�����Ŭ�Ѥ���פˤ����Τ�<br />�ò����ʤ��餵���10��Υ������Ͱ�����Ŭ�Ѥ���ޤ���<br /><br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ���<br />���Τ�������åɤ����̿��Ȥ��ƥ��ץ��������ʡ�2000�ߡˤ����ꤵ��Ƥ��ޤ���<br />���������Ȱۤʤꡢ������ǤϾ��ʤؤ��ò�Ŭ�ѻ��ˡ����ץ��������ˤ�Ŭ�Ѥ���ʤ�����ˤ��Ƥ��ޤ����Ĥޤꡢ���ʼ��Τ��ò��Ǥ⥪�ץ��������˴ؤ��Ƥ��̾��̤꤫����ޤ���<br /><br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����10��OFF���ò��ܥ������<br />���Ͱ����ۡ���10.0<br />�������ס���Ψ�ʡ��<br />���ò����ʤξ�硧���ò����ʤβ��ʤˤ���˥������Ͱ�����Ŭ�Ѥ���<br />���������оݤΥ��ƥ��ꡧ���֥�������ò����ò����ʤ򤵤��10��OFF�ץ��ƥ���<br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥�������ò����ò����ʤ򤵤��10��OFF�ץ��ƥ���<br />�����ʲ��ʡ���10000��<br />���ò����ʡ���50%<br /><br />�������⡧���ʥ��ץ����°���ۡ������ξ��ʤ˴ؤ�������<br />�����ץ����̾�������顼<br />�����ץ�����͡�����å�<br />�����ץ������ʡ�����2000��<br />���ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧 ������<br />','',2),(176,2,'��SP1���ò����ʤ˥�����Ŭ�Ѥδ�����','�ò����ʤ˥������Ŭ�Ѥ������Τդ�ޤ������򤹤뤿��Ρ���������ץ����Ǥ���<br /><br />���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />�ޤ���������Ȥ��̤�<br />���ξ��ʤˤ��̾���ʤ�Ⱦ�ۤˤ����ò����꤬����Ƥ��ޤ�����<br />�ò����ʤ��Ф��륻������������ò����ʤβ��ʤ�̵�뤹��פˤ����Τ�<br />�̾���ʤ�10��Υ������Ͱ�����Ŭ�Ѥ��졢�ò����ʤ�̵�뤵��ޤ���<br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ�����<br />���ץ����ˤ��ɲ���������ꤷ�Ƥ��ʤ��ΤǤ�Ȥ�ȤɤΥ��顼�Ǥ�Ʊ����Ǥ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����10��OFF�ʥ�����ͥ���<br />���Ͱ����ۡ���10.0<br />�������ס���Ψ�ʡ��<br />���ò����ʤξ�硧���ò����ʤβ��ʤ�̵�뤹��<br />���������оݤΥ��ƥ��ꡧ���֥�������ò���������ͥ����ò�����̵��ˡץ��ƥ���<br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥�������ò���������ͥ����ò�����̵��ˡץ��ƥ���<br />�����ʲ��ʡ���10000��<br />���ò����ʡ���50%','',4),(177,2,'��SP2�۾��ʥ��ץ��������ˤ⥻���롦�ò�Ŭ�Ѥ�����','�ò����ʤ˥������Ŭ�Ѥ������Τդ�ޤ������򤹤뤿��Ρ���������ץ����Ǥ���<br />���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />�ޤ���������Ȥ��̤�<br />���ξ��ʤˤ��̾����10000�ߤΤȤ����Ⱦ�ۤˤ����ò����꤬����Ƥ��ޤ�����<br />�ò����ʤ��Ф��륻������������ò����ʤβ��ʤ�̵�뤹��פˤ����Τ�<br />�̾���ʤ�10��Υ������Ͱ�����Ŭ�Ѥ��졢�ò����ʤ�̵�뤵��ޤ���<br /><br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ���<br />���Τ�������åɤ����̿��Ȥ��ƥ��ץ��������ʡ�2000�ߡˤ����ꤵ��Ƥ��ޤ���<br />������Ǥϡ������롦�ò���Ŭ�Ѥ��줿���ˡ����ץ��������ˤ⥻���롦�ò���Ŭ�Ѥ����褦�����ꤷ�Ƥ��ޤ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����10��OFF�ʥ�����ͥ���<br />���Ͱ����ۡ���10.0<br />�������ס���Ψ�ʡ��<br />���ò����ʤξ�硧���ò����ʤβ��ʤ�̵�뤹��<br />���������оݤΥ��ƥ��ꡧ���֥�������ò���������ͥ����ò�����̵��ˡץ��ƥ���<br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥�������ò���������ͥ����ò�����̵��ˡץ��ƥ���<br />�����ʲ��ʡ���10000��<br />���ò����ʡ���50%<br /><br />�������⡧���ʥ��ץ����°���ۡ������ξ��ʤ˴ؤ�������<br />�����ץ����̾�������顼<br />�����ץ�����͡�����å�<br />�����ץ������ʡ�����2000��<br />���ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧 �Ϥ�<br /><br />','',5),(178,2,'��SP3�۾��ʥ��ץ��������ϥ����롦�ò��оݳ��ˤ�����','�ò����ʤ˥������Ŭ�Ѥ������Τդ�ޤ������򤹤뤿��Ρ���������ץ����Ǥ���<br />���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />�ޤ���������Ȥ��̤�<br />���ξ��ʤˤ��̾����10000�ߤΤȤ����Ⱦ�ۤˤ����ò����꤬����Ƥ��ޤ�����<br />�ò����ʤ��Ф��륻������������ò����ʤβ��ʤ�̵�뤹��פˤ����Τ�<br />�̾���ʤ�10��Υ������Ͱ�����Ŭ�Ѥ��졢�ò����ʤ�̵�뤵��ޤ���<br /><br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ���<br />���Τ�������åɤ����̿��Ȥ��ƥ��ץ��������ʡ�2000�ߡˤ����ꤵ��Ƥ��ޤ���<br />���������Ȱۤʤꡢ������ǤϾ��ʤؤΥ����롦�ò�Ŭ�ѻ��ˡ����ץ��������ˤ�Ŭ�Ѥ���ʤ�����ˤ��Ƥ��ޤ����Ĥޤꡢ���ʼ��Τ���������ʤǤ⥪�ץ��������˴ؤ��Ƥ��̾��̤꤫����ޤ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����10��OFF�ʥ�����ͥ���<br />���Ͱ����ۡ���10.0<br />�������ס���Ψ�ʡ��<br />���ò����ʤξ�硧���ò����ʤβ��ʤ�̵�뤹��<br />���������оݤΥ��ƥ��ꡧ���֥�������ò���������ͥ����ò�����̵��ˡץ��ƥ���<br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥�������ò���������ͥ����ò�����̵��ˡץ��ƥ���<br />�����ʲ��ʡ���10000��<br />���ò����ʡ���50%<br /><br />�������⡧���ʥ��ץ����°���ۡ������ξ��ʤ˴ؤ�������<br />�����ץ����̾�������顼<br />�����ץ�����͡�����å�<br />�����ץ������ʡ�����2000��<br />���ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧 ������','',6),(179,2,'��SP1���ò����ʤ˥�����Ŭ�Ѥδ�����','�ò����ʤ˥������Ŭ�Ѥ������Τդ�ޤ������򤹤뤿��Ρ���������ץ����Ǥ���<br /><br />���ξ��ʤˤ��̾����10000�ߤΤȤ����Ⱦ�ۤˤ����ò����꤬����Ƥ��ޤ���<br /><br />���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />���������ò����ʤ��Ф��륻����������֥������оݳ��פˤ����Τ�<br />�ò����ʤˤϥ�����10�������Ŭ�Ѥ���ޤ���<br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ�����<br />���ץ����ˤ��ɲ���������ꤷ�Ƥ��ʤ��ΤǤ�Ȥ�ȤɤΥ��顼�Ǥ�Ʊ����Ǥ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����10��OFF���ò�ͥ���<br />���Ͱ����ۡ���10.0<br />�������ס���Ψ�ʡ��<br />���ò����ʤξ�硧���������оݳ�<br />���������оݤΥ��ƥ��ꡧ���֥�������ò����ò�ͥ��ʥ������оݳ��ˡץ��ƥ���<br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥�������ò���������ͥ��ʥ������оݳ��ˡץ��ƥ���<br />�����ʲ��ʡ���10000��<br />���ò����ʡ���50%','',2),(180,2,'��SP2�۾��ʥ��ץ��������ˤ⥻���롦�ò�Ŭ�Ѥ�����','�ò����ʤ˥������Ŭ�Ѥ������Τդ�ޤ������򤹤뤿��Ρ���������ץ����Ǥ���<br /><br />���ξ��ʤˤ��̾����10000�ߤΤȤ����Ⱦ�ۤˤ����ò����꤬����Ƥ��ޤ���<br /><br />���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />���������ò����ʤ��Ф��륻����������֥������оݳ��פˤ����Τ�<br />�ò����ʤˤϥ�����10�������Ŭ�Ѥ���ޤ���<br /><br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ���<br />���Τ�������åɤ����̿��Ȥ��ƥ��ץ��������ʡ�2000�ߡˤ����ꤵ��Ƥ��ޤ���<br />������Ǥϡ������롦�ò���Ŭ�Ѥ��줿���ˡ����ץ��������ˤ⥻���롦�ò���Ŭ�Ѥ����褦�����ꤷ�Ƥ��ޤ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����10��OFF���ò�ͥ���<br />���Ͱ����ۡ���10.0<br />�������ס���Ψ�ʡ��<br />���ò����ʤξ�硧���������оݳ�<br />���������оݤΥ��ƥ��ꡧ���֥�������ò����ò�ͥ��ʥ������оݳ��ˡץ��ƥ���<br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥�������ò����ò�ͥ��ʥ������оݳ��ˡץ��ƥ���<br />�����ʲ��ʡ���10000��<br />���ò����ʡ���50%<br /><br />�������⡧���ʥ��ץ����°���ۡ������ξ��ʤ˴ؤ�������<br />�����ץ����̾�������顼<br />�����ץ�����͡�����å�<br />�����ץ������ʡ�����2000��<br />���ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧 �Ϥ�<br />','',2),(181,2,'��SP3�۾��ʥ��ץ��������ϥ����롦�ò��оݳ��ˤ�����','�ò����ʤ˥������Ŭ�Ѥ������Τդ�ޤ������򤹤뤿��Ρ���������ץ����Ǥ���<br /><br />���ξ��ʤˤ��̾����10000�ߤΤȤ����Ⱦ�ۤˤ����ò����꤬����Ƥ��ޤ���<br /><br />���Υ��ƥ�����Ф��ơ�10������Υ��������꤬����Ƥ��ꡢ<br />���Υ��ƥ����ޥ��������ƥ���Ȥ��������ʤ�Ŭ�Ѥ���ޤ���<br /><br />���������ò����ʤ��Ф��륻����������֥������оݳ��פˤ����Τ�<br />�ò����ʤˤϥ�����10�������Ŭ�Ѥ���ޤ���<br /><br />���ξ��ʤˤϾ��ʥ��ץ����ʥ��顼3����ˤ��Ĥ��Ƥ��ޤ���<br />���Τ�������åɤ����̿��Ȥ��ƥ��ץ��������ʡ�2000�ߡˤ����ꤵ��Ƥ��ޤ���<br />���������Ȱۤʤꡢ������ǤϾ��ʤؤ��ò�Ŭ�ѻ��ˡ����ץ��������ˤ�Ŭ�Ѥ���ʤ�����ˤ��Ƥ��ޤ����Ĥޤꡢ���ʼ��Τ��ò��Ǥ⥪�ץ��������˴ؤ��Ƥ��̾��̤꤫����ޤ���<br /><br />��������ۡ�������δ����������ƥ���ñ�̤�Ŭ�Ѥ����<br />��������̾����10��OFF���ò�ͥ���<br />���Ͱ����ۡ���10.0<br />�������ס���Ψ�ʡ��<br />���ò����ʤξ�硧���������оݳ�<br />���������оݤΥ��ƥ��ꡧ���֥�������ò����ò�ͥ��ʥ������оݳ��ˡץ��ƥ���<br /><br />�������⡧���ʾ���ۡ������ξ��ʤ˴ؤ�������<br />�����ʥޥ��������ƥ��ꡧ���֥�������ò����ò�ͥ��ʥ������оݳ��ˡץ��ƥ���<br />�����ʲ��ʡ���10000��<br />���ò����ʡ���50%<br /><br />�������⡧���ʥ��ץ����°���ۡ������ξ��ʤ˴ؤ�������<br />�����ץ����̾�������顼<br />�����ץ�����͡�����å�<br />�����ץ������ʡ�����2000��<br />���ò�����/������ˤ�äƳ����Ŭ�Ѥ��롧 ������<br />','',2),(182,1,'Normal Product(6)','','',0),(182,2,'����6��1������������ʾ�ʤ���','�������䥫�顼�ʤɤΥ��ץ����°������ľ��ʤˡ����̳���ʤ�����ܥ�塼��ǥ���������ȡˤ�Ŭ�Ѥ������ʣ����������Ǥ���<br />\r\n9�ĤޤǤ������10��20�Ĥ������10�������20��49�Ĥ�20�������50�İʾ��25������Ȥ����褦�ˡ����Ψ�ˤ����̳�������ꤷ�ޤ�����<br /><br />\r\n������Ǥϡ�1�ĤΥ��ץ������Ф��Ƶ����̰ʾ�����������˳�������Ŭ�Ѥ���ޤ���<br />\r\n�Ĥޤꡢ�ۥ磻�Ȥȥ֥�å���5�����Ĺ������Ƥ�������оݤˤϤʤ餺���ۥ磻�Ȥ��뤤�ϥ֥�å�ñ�Τ�10�İʾ�������ƤϤ���Ƴ���ˤʤ�ޤ���<br />\r\n����ϡ����ʲ��ʤδ����ˤ����ơ��ֿ��̤�Ʊ�쾦�ʤǤ���Х��ץ�����ͤ˴ط��ʤ��绻����ᤤ�����פ����ꤷ�Ƥ��뤫��Ǥ���<br /><br />\r\n\r\n\r\nNOTE������������ϡ־��ʲ��ʤδ����פ���Ԥ��ޤ���<br />�����ʤδ����侦�ʲ��ʤδ���������ƤӽФ��������뤤�ϴ������̤ξ��ʥꥹ�Ȥα�ü�ˤ���[��]�ܥ�����п��Υܥ���ˤ���ƤӽФ����Ȥ��Ǥ��ޤ���<br /><br />\r\n\r\n�������⡧���ʲ��ʤδ�����<br />\r\n�ʲ�������ˤ�ꡢ�׻����ϡ��������������ߡ�1�ݿ��̳��Ψ�ˡѡ��ߡ��������Ȥʤ�ޤ���<br />\r\n���ǥ���������ȥ����ס������Ψ<br />\r\n�����β��ʤ���ǥ���������ȡ�������<br />\r\n���������<br /><br />\r\n���������̤�Ʊ�쾦�ʤǤ���Х��ץ�����ͤ˴ط��ʤ��绻���롧��������<br />\r\n��------------------------------------------<br />\r\n�������٥롡�������Ǿ��¤�ͭ�����̡������������<br />\r\n��------------------------------------------<br />\r\n�����3����������������10���ʸġˡ�����������������10.0���ʡ��<br />\r\n�����4����������������20���ʸġˡ�����������������20.0���ʡ��<br />\r\n�����5����������������50���ʸġˡ�����������������25.0���ʡ��<br />\r\n��-----------------------------------------<br /><br />\r\n\r\n�������⡧���ץ����°����<br />\r\n1�˥��顼�֥ۥ磻�ȡ�<br />\r\n���������ʡ� ��0��<br />\r\n�������ò�/����������Ŭ�Ѥ������ʤ�١������ʤȤ��ư��������Ϥ�<br />\r\n2�˥��顼�֥֥�å���<br />\r\n���������ʡ�����1000��<br />\r\n�������ò�/����������Ŭ�Ѥ������ʤ�١������ʤȤ��ư��������Ϥ�<br />\r\n������°���ˤ�����������١������ʤ˴ޤ�롧���Ϥ�','',7),(183,1,'MIN','','',0),(183,2,'��1��10�İʾ�Ǥ���ʸ��������','����ϡ��ֺ���10�Ĥ�����䤤�����ޤ��פʤɡ��Ǿ������������¤���������������Ǥ���<br /><br />\r\n\r\n�������⡧���ʾ����<br />\r\n���Ǿ�����������10<br />','',14),(184,1,'MIN_ATR1','','',0),(184,2,'��OP1�ۥ��ץ������鷺���10�İʾ������','����ϡ����ʥ��ץ���󤢤�ξ��κǾ�������������Ǥ���<br />\r\n������Ǥϡ����ץ����򤤤����꺮���Ƥ褯�����ξ��ʤι�פ��Ǿ��������ʾ�Ǥ���Сʸġ��Υ��ץ�������򤬤ʤ�Ǥ���˹�����ǽ�Ǥ���<br />\r\n�Ĥޤꡢ�ۥ磻��5�����������졢³���ƥ֥롼��5�����������줿�����ǹ��10���ȸ��ʤ���ƹ�����ǽ�Ȥʤ�ޤ���<br /><br />\r\n\r\n�������⡧���ʾ����<br />\r\n���Ǿ�����������10<br /><br />\r\n\r\n�������⡧���ʲ��ʤδ�����<br />\r\n�������̤ȥ�˥å��̤��Ȥ߹�碌��Ŭ�����롧���Ϥ�','',7),(185,1,'MIN_ATR2','','',0),(185,2,'��OP2��1���ץ���󤢤���10�İʾ������','����ϡ����ʥ��ץ���󤢤�ξ��κǾ�������������Ǥ���<br />\r\n������Ǥϡ�1�ĤΥ��ץ���󤢤���ι������ǥ�����Ȥ���Ʊ�����ץ����ǺǾ���������ã���ʤ��ȷ�Ѥ˿ʤ�ޤ���<br />\r\n�Ĥޤꡢ�ۥ磻�Ȥȥ֥롼��5�����ĥ���������Ƥ����ǡ��ۥ磻�Ȥ��뤤�ϥ֥롼ñ�Τ�10�İʾ�ǤϤ���ƹ�����ǽ�Ȥʤ�ޤ���<br /><br />\r\n\r\n�������⡧���ʾ����<br />\r\n���Ǿ�����������10<br /><br />\r\n\r\n�������⡧���ʲ��ʤδ�����<br />\r\n�������̤ȥ�˥å��̤��Ȥ߹�碌��Ŭ�����롧��������','',4),(187,1,'LIMIT-1','','',0),(187,2,'��1�ۤ���ͤ���5���ޤǡ�','����ϡ��֤���ͤ���5���ޤǡ��פʤɡ���ʸ1�󤢤���ι����������¤���������������Ǥ���<br /><br />\r\n\r\n���������<br />\r\n�����ʤκǾ����̡���1<br />\r\n�����ʤκ�����̡���5<br />\r\n�����ʤο���ñ�̡���1<br /><br />','',8),(188,1,'LIMIT_ATR1','','',0),(188,2,'��OP1�ۥ��顼����鷺������5���ޤǡ�','����ϡ����ʥ��ץ���󤢤�ξ��κ��������������Ǥ���<br />\r\n������Ǥϡ����ץ����ˤ�����餺�����ξ��ʤ�������5���ޤǤ��������Ǥ��ޤ���<br />\r\n�Ĥޤꡢ�ۥ磻�Ȥȥ������Ƿ�5�����������äƤ����顢���ä����������ʤ��������ɲäϤǤ��ޤ���<br /><br />\r\n\r\n�������⡧���ʾ����<br />\r\n���Ǿ�����������1<br />\r\n���������������5<br />\r\n\r\n�������⡧���ʲ��ʤδ�����<br />\r\n�������̤ȥ�˥å��̤��Ȥ߹�碌��Ŭ�����롧���Ϥ�','',17),(201,2,'��1��100��ñ�̤Ǥ���ʸ��������','����ϡ���100��ñ�̤Ǥ���ʸ���������פΤ褦�ˡ���˥å�ñ�̤������Ԥ���������������Ǥ���<br /><br />\r\n\r\n�������⡧���ʾ����<br />\r\n��[�Ǿ�������]����100����<br />\r\n��[����ñ��]�� 100<br /><br />\r\n\r\n��������ˤ�����[�Ǿ�������]�����ɬ�ܤǤϤʤ������ɤΤߤ�100�Ĥ�����ꤿ���Τǰ�����ꤷ�Ƥ���','',0),(189,1,'LIMIT_ATR2','','',0),(189,2,'��OP2��1���ץ���󤢤���5���ޤǡ�','����ϡ����ʥ��ץ���󤢤�ξ��κ��������������Ǥ���<br /><br />\r\n������Ǥϡ��ƥ��ץ�������Ω�ǰ���졢���줾��ˤĤ���5���ޤǹ������뤳�Ȥ��Ǥ��ޤ���<br />\r\n�Ĥޤꡢ�ۥ磻��5���򥫥������줿�顢�ۥ磻�ȤϤ⤦�ɲäǤ��ޤ��󤬡�¾�ο��ʥ֥롼�䥤�����ˤʤ������ǽ�Ǥ���<br /><br />\r\n\r\n�������⡧���ʾ����<br />\r\n���Ǿ�����������1<br />\r\n���������������5<br />\r\n�������⡧���ʲ��ʤδ�����<br />\r\n�������̤ȥ�˥å��̤��Ȥ߹�碌��Ŭ�����롧��������','',12),(202,1,'UNIT2','','',0),(190,1,'TAXOUT','','',0),(190,2,'���ʲ��ʤ���ȴ���ʳ��ǡˤǴ���������','���ʲ��ʤ��ǡ���ȴ�����ʡˤǴ���������Ǥ���<br /><br />\r\n\r\nɽ�����ʤˤϡ�����������¦�����Ϥ������ʲ��ʤ˾�����ʬ���褻������Τ�ɽ������ޤ������ץ��������ˤ�Ʊ���褦��Ŭ�Ѥ��ޤ���<br /><br />\r\n�ʤ�������ʬ�ϡ����餫���᥷��å����Τ������ͤȤ������ꤷ����Τ��Ȥ��ޤ��ʥǥե���Ȥ�5��ˤʤäƤ��ޤ��ˡ�<br /><br />\r\n\r\n�����åȡ�\r\n��������ʬ����ư�Ǿ�褻�����Τǡ�����¦�Ǥ���ȴ�����ʤǴ����Ǥ��롣�ޤ���������Ψ���Ѥ�ä����ˡ�����å����Τ���Ψ�����ͤ��ѹ���������ǺѤࡣ<br /><br />\r\n���ǥ��åȡ� 4,980�ߤʤɾ���奦�����ɤ�����ɽ���ˤ�������硢���椷�Ť餤<br /><br /><br />\r\n\r\n��������۾��ʾ���<br />\r\n��[�Ǽ���]����������<br />\r\n��[���ʲ��ʡʥͥåȡ�]��10000�ߡ��ʾ�����ʬ��ޤ�ʤ���<br /><br />\r\n\r\n\r\n��������۾��ʥ��ץ����°��<br />\r\n��[���ץ�������] ��åɡʡ�0/�ɲ�����ʤ��ˡ��ۥ磻�ȡʡ�1000�ߡˡ��������ʡ�2000�ߡ�<br /><br />\r\n\r\n�ڥ���å����Τ�����ۡ��ϰ衦��Ψ�������Ψ���ꡡ<br />\r\n��[�����Ǥ���Ψ]����5��<br />','',10),(191,1,'TAXIN-2','','',1),(191,2,'���ʲ��ʤ��ǹ��ߡ����ǡˤǴ���������(2)','������ϡ����ʲ��ʤ����ǡ��ǹ��߲��ʡˤǴ���������Ǥ���<br />\r\n���Ǥξ�硢2�ĤΤ����������ޤ������������٤ƤߤƤ��������ˡ�<br />\r\n���Υ������Ǥ��Ǽ��̤�־����ǡפˤ��Ƥ��ޤ������ʲ��ʡʥ����ˤ��������ǲ��ʤ����Ϥ��ޤ���<br /><br />\r\n\r\n\r\n[�Ǽ���]������Ǥ˻��ꤷ�����ʲ��ʡʥ����ˤ����ǲ��ʤ����Ϥ���ȡ����ʲ��ʡʥͥåȡˤˤϼ�ư�׻����줿��ȴ�����ʤ�����ޤ�������å�¦��ɽ�������ΤϾ��ʲ��ʡʥ����ˤ����ʤΤǤĤޤ����ǲ��ʤ�ɽ�������Ȥ����櫓�Ǥ������ץ������ʤ������ͤ˾�����ʬ����褻�����ɽ�������Τ���դ��Ƥ���������<br /><br />\r\n\r\n\r\n������������ǤǴ������롧<br />\r\n��[�Ǽ���]����-- ������ --<br />\r\n��[���ʲ��ʡʥ�����]��10000�� ���ǹ��߲��ʤ����Ϥ����<br /><br />\r\n\r\n��������۾��ʥ��ץ����°��<br />\r\n��[���ץ�������] ��åɡʡ�0/�ɲ�����ʤ��ˡ��ۥ磻�ȡʡ�1000�ߡˡ��������ʡ�2000�ߡ�','',8),(192,1,'ATTR_IMAGE1','','',0),(192,2,'��OP1�۲����դ����ץ�������','�����դ����ʥ��ץ�������Ǥ��������Ǥϡ�2�����륫�顼�ʾ��ʥ��ץ����°���ˤΤ��줾��ˡ�������ź����ɽ�����Ƥ��ޤ���<br /><br />\r\n����ϡ����ʥ��ץ����°���θ��ܲ����ˡ������ե��������ꤹ�뤳�ȤǼ¸��Ǥ��ޤ���<br />\r\n\r\n��������۾��ʥ��ץ����°��<br />\r\n����[���ץ������]���Ф���<br />\r\n����[°���θ��ܲ���]�� �����ե�����ʤ������饢�åץ��ɲġ�<br />\r\n����[°���θ��ܲ����ǥ��쥯�ȥ�]�� \"attributes\" <br /><br />\r\n\r\n�ڻ��͡ۥ��ץ����̾<br />\r\n��[���ץ����̾]�������顼<br />\r\n��[���ץ����Υ�����]����RADIO<br />\r\n�����������ܲ���ɽ���ϥ����פ˰ͤ餺��ǽ<br /><br />\r\n\r\nNOTE��<br />\r\n�ʤ������ǡʥ饸���ܥ���ˡ����ץ����̾�����ܲ��������ִط��ϡ�������˥塼�ξ��ʤδ����䥪�ץ����̾�δ���������Ū�Υ��ץ����̾��[�Խ�]�ˤ�<br />\r\n����(Row)�������°������<br />\r\n���饸���ܥ��󡦥����å��ܥå�����°����������<br />\r\n��������Ѥ��뤳�Ȥ��Ǥ��ޤ���','',19),(193,1,'ATTR_IMAGE2','','',0),(193,2,'��OP2�۲����դ����ץ�������','�����դ����ʥ��ץ������㤽��2�Ǥ���<br />\r\n����ϡ����ʥ��ץ����°���θ��ܲ����ˡ������ե��������ꤹ�뤳�ȤǼ¸��Ǥ��ޤ���<br /><br />\r\n\r\n������ϡ����Ǻ�Ȥ���������ˡ�ס�READ ONLY�����פξ��ʥ��ץ�������ѡˤ˴ؤ��ơ�����ɽ���ȥ������β��٤�2���ץ���������դ��ˤ��Ƥ��ޤ���<br />\r\n\r\n��������۾��ʥ��ץ����°��<br />\r\n��[���ץ������]��\"��������\"�������  �ɥ������ϡ��� ���Ф��Ƥ��줾�첼���θ��ܲ�������ꤹ�롣<br />\r\n��[°���θ��ܲ���]�� �����餫�����Ѱդ������ܲ����Υե�����ʤ������饢�åץ��ɤǤ����<br />\r\n��[°���θ��ܲ����ǥ��쥯�ȥ�]�� \"attributes\" <br /><br />','',12),(194,1,'IMAGE1','','',0),(194,2,'��1��ʣ���ξ��ʲ�����Ǻܡʼ�ư�Ǻܡ�','�ᥤ��β�����¾�˴�Ϣ�����������Ǻܤ�������礬����ޤ���͡�<br />\r\n����ʻ��˺Ǥ��ñ�ʤΤ�������ˡ�ǡ�����Υ롼��ǲ����ե������̿̾����FTP���Ƥ����м�ư�Ǻܤ���ޤ���<br />\r\n����������ʸ�ΰ��ֲ��˲�����3���Ǻܤ���Ƥ��ޤ���<br /><br />\r\n\r\n�ڥ롼���<br />\r\n��2���ܰʹߤβ����ե�����̾��[�ᥤ������ե�����̾]��[����(_xx��]��[.Ʊ����ĥ��] �ǤĤ���<br />\r\n���ᥤ�������Ʊ���ǥ��쥯�ȥ�˥��åץ��ɤ���<br />\r\n��2���ܰʹߤβ����Ǻܽ�ϡ����֤ξ�������ˤʤ�<br /><br />\r\n\r\n����۾��ʾ���δ�����<br />\r\n��[���ʲ���]��[IMAGE1.jpg] <br />\r\n��[���åץ�����ǥ��쥯�ȥ�]������samples�ɤ�����<br />\r\n�Ȥ������ϡ�<br /><br />\r\n\r\n2���ܰʹߤβ���<br />\r\n��IMAGE1_01.jpg<br />\r\n��IMAGE1_02.jpg<br />\r\n��IMAGE1_03.jpg<br />\r\n��������<br />\r\n�򡢡ʥ���å����֥ǥ��쥯�ȥ��/images/samples/���۲���FTP����Ф褤��<br /><br />\r\n\r\nNOTE��<br />\r\n�����դ��β�������ư�Ǻܤ����Ȥ������Ȥϡ��դ˸����С����뾦��A�β����ե�����̾�������ޤ����̤ξ���B�β���̾_xx�ˤʤäƤ����顢����B�Υڡ����˼�ư�Ǻܤ���Ƥ��ޤ��Ȥ������Ȥ��̣���ޤ���<br /><br />\r\n������򤱤뤿��ˤ⡢�ᥤ������ˤĤ��Ƥ�̿̾�롼���褯�ͤ��Ʒ��ޤ��礦����������ϡ����ʷ��֤�Ʊ���ˤ��Ƥ������ȤǤ����̾ﾦ�ʷ��֤ϡ����ʤ��Ȥ˸�ͭ�Ǥ��礦����ˡ��ɤξ��ʤβ�������狼��䤹��������Ļ�Ǥ���','',18),(195,1,'IMAGE2','','',0),(195,2,'��2��ʣ���ξ��ʲ�����Ǻ�(�Ҳ�ʸ���HTMLľ�񤭡�','[��������]��ˡ�img�䥿����ľ�񤭤�����ˡ�⥢��Ǥ���<br /><br />\r\n\r\n������ˡ�ϡ�\r\n<ul>\r\n<li>�Ҳ�ʸ������˲����������ᡢ����ץ�����ź���뤳�Ȥ�Ǥ���ʤɥ쥤�����Ȥμ�ͳ�٤��⤤</li>\r\n<li>����̾���Х�Х���ä��ꡢ��ĥ�Ҥ��ۤʤ�����Ǥⰷ����</li>\r\n<li><a href=\"http://www.flickr.com/\">Flickr</a>�˥��åפ��������䡢<a href=\"http://www.youtube.com\">YouTube</a>���ư���Ǻܤ��뤳�Ȥ�Ǥ���</li>\r\n</ul>\r\n�ʤɤΥ��åȤ�����ޤ���<br />��������HTML���Τ�ʤ��ͤˤȤäƤϸ��������⤷��ޤ���<br /><br />\r\n\r\n��img src=\"������URL\" alt=\"����������\" /���񤱤Ф��β�����ɽ������ޤ���<br /><br />\r\n�����<br />\r\n<img src=\"http://okra.ark-web.jp/~shinchi/zenc/images/samples/IMAGE2_related.jpg\" alt=\"����T����ĤΥ�ǥ�ǭ�ؤ��ޤ�٤Ǥ�\" /><br />\r\n����T����ĤǤ�Ȥ��Ƥ��롢������å׼����Υ�ǥ�ǭ�ؤ��ޤ�٤Ǥ������Ѥ⤫�襤���Ǥ����*^o^*��b','',17),(196,1,'DISCNTQTY_ATTR1','','',0),(196,2,'��1�ۥ��顼�ǳ����郎�ۤʤ���̳����','���ץ���󤴤Ȥ˥ܥ�塼��ǥ���������Ȥγ����郎�ۤʤ�������Ǥ���<br />\r\n���̤Τ������͡�����ۤ򥪥ץ���󤴤Ȥ���Ω��������Ǥ��ޤ���<br /><br />\r\n\r\n������Ǥϡ��ۥ磻�Ȥι����Ŀ���9���ʲ��ʤ��Ͱ��ʤ��ǡ�10���ʤ��100�߰�����11���ʾ�ʤ��200�߰����Ǥ���<br />\r\n�Ф��륪��󥸤����ϡ�19���ޤǤϳ���ʤ��ǡ�20���ʾ�ʤ��150�߰����ˤʤ�ޤ���<br /><br /><br />\r\n\r\n<strong>���ץ����ο����Ͱ�����ν�</strong><br />\r\n[�������� N:�Ͱ����� D] ���󥻥åȤȤ��ơ�ɬ�ץ��å�ʬ������,��Ⱦ�ѥ���ޡˡפǷҤ��ޤ���<br /><br />\r\n\r\n�񼰡���N0:D0, N1:D1, N2:D2����, N(n-1):D(n-1), Nn:Dn<br /><br />\r\n��̣��1��N0�Ĥޤǡ� D0�߰���<br />\r\n������N1��N2�Ĥޤǡ� D1�߰���<br />\r\n��������<br />\r\n��������<br />\r\n������N(n-1)��Nn�Ĥޤǡ� D(n-1)�߰���<br />\r\n������N(n-1)+1�İʾ塧 Dn�߰���<br /><br />\r\n\r\n��n=1,2,������,N�μ��������Ǹ�Υ��åȤ�Nn�λ����ͤ˰�̣�Ϥʤ���Dn�Ͼ��N(n-1)+1�İʾ�λ����Ͱ��ۤȤ��ư����롣<br /><br />\r\n\r\n�ڼ���1��\"�ۥ磻��\"<br />\r\n[���ץ����ο����Ͱ�����]��9:-0,10:-100,11:-200<br />\r\n��̣������9���ޤǤ��Ͱ���0��10���ϡ�100�߰�����11���ʾ�ǡ�200�߰���<br /><br />\r\n\r\n�ڼ���1��\"�����\"<br />\r\n[���ץ����ο����Ͱ�����]��19:-0,20:-150<br />\r\n��̣������19���ޤǤ��Ͱ���0��20���ʾ��㤦�ȡ�150�߰���<br /><br />\r\n\r\nNOTE��<br />\r\nD���ͤ�Ƭ�ˡ�-�פ�Ĥ���-100�ʤ�100�߰����ˡ���+�פ�Ĥ���+100�Ȥʤ�100�������ˤʤ롣','',35),(197,1,'DISCNTQTY_ATTR2','','',0),(197,2,'��2�ۥ��顼���̾���ʤ���̳������ۤʤ���','���ץ���󤴤Ȥ˥ܥ�塼��ǥ���������Ȥγ����郎�ۤʤ�������Ǥ���<br />\r\nľ���Ρ�1�ۤ���Ȱۤʤ�Τϡ���1�ۤǤϾ��ʲ���¦�˴��ܲ���ʬ������������ץ����°���ǤϿ��̳��ʬ������ô�������Ƥ����Τ��Ф���������Ǥϡ����ʲ��ʤ�0�Ȥ��ơ����ץ��������¦�ǲ��ʤ򥻥åȤ��Ƥ������Ǥ���<br />\r\n�㤤���狼��褦���ۥ磻�Ȥ�����ʿ��̳��Ŭ�������ץ��������ˤ�4000�ߡ�����󥸤�5000�ߤˤ��Ƥ���ޤ���<br />\r\n\r\n���̳���ۤϡ���1�ۤ�Ʊ������ˤʤäƤ��ơ�<br />\r\n�ۥ磻�Ȥι����Ŀ���9���ʲ��ʤ��Ͱ��ʤ��ǡ�10���ʤ��100�߰�����11���ʾ�ʤ��200�߰����Ǥ���<br />\r\n�Ф��륪��󥸤����ϡ�19���ޤǤϳ���ʤ��ǡ�20���ʾ�ʤ��150�߰����ˤʤ�ޤ���<br /><br />\r\n\r\n�ƥ��ץ����°����[���ץ����ο����Ͱ�����]�ν񼰤ˤĤ��Ƥϡ�1�ۤ��������Ƥ��ޤ��ΤǤ�������������<br /><br />\r\n\r\n\r\n��������۾��ʾ���<br />\r\n��[����°���ˤ�����]���Ϥ�<br />\r\n��[���ʲ��� (�ͥå�)]��0��<br /><br />\r\n\r\n�ڥ��ץ�����������\"�ۥ磻��\"<br />\r\n��[���ץ����β���]��4000��<br />\r\n��[°���ˤ�����������١������ʤ˴ޤ��]���Ϥ�<br />\r\n��[���ץ����ο����Ͱ�����]��9:-0,10:-100,11:-200<br />\r\n����̣������9���ޤǤ��Ͱ���0��10���ϡ�100�߰�����11���ʾ�ǡ�200�߰���<br /><br />\r\n\r\n�ڥ��ץ�����������\"�����\"<br />\r\n��[���ץ����β���]��5000��<br />\r\n��[°���ˤ�����������١������ʤ˴ޤ��]���Ϥ�<br />\r\n��[���ץ����ο����Ͱ�����]��19:-0,20:-150<br />\r\n����̣������19���ޤǤ��Ͱ���0��20���ʾ��㤦�ȡ�150�߰���<br /><br /><br />\r\n\r\n<strong>NOTE1����[����°���ˤ�����]���Ϥ����ΰ�̣</strong><br /><br />\r\n����̾�β���ɽ����������� �� [���ʲ���] �� [���ץ������ʡʤκǰ���)] �ˤʤ�ޤ���<br />\r\n�������֤������פ��ȡ�[���ʲ���]������ɽ������ޤ��ʾ��ʲ��ʡ�0�ߤλ���ɽ�����ξ�ά�ˡ�<br />\r\n���������ȡ����ץ������ʤκǰ��ͤϥۥ磻�Ȥ�4000�ߤʤΤǡ�����̾�β���ɽ����������� ��0�ߡ�4000�ߤη�̤Ȥ���4000�ߤ�ɽ������Ƥ���櫓�Ǥ���<br /><br /><br />\r\n\r\n<strong>NOTE2��[°���ˤ�����������١������ʤ˴ޤ��]���Ϥ����ΰ�̣</strong><br /><br />\r\n���줬\"������\"�Υ��ץ����ϡ����Ȥ����Υ��ץ�������⤬���ץ����֤Ǻǰ��ͤ��ä��Ȥ��Ƥ�<br />\r\nNOTE1������������<br />\r\n������̾�β���ɽ����������� �� [���ʲ���] �� [���ץ������ʡʤκǰ���)] ��<br />\r\n���ͤȤ��ƤϻȤ��ޤ���','',13),(198,1,'DSCNT_ONE1','','',0),(198,2,'��OT1�ۥ�󥿥������㡧1��ʸ�ˤĤ�500�߰�����','���ץ����°����[��󥿥�����]��ǽ��Ȥäơ�Ʊ�쾦��Ʊ�쥫�顼�����̰ʾ�ʤ��1��ʸ������500�߰����פ�¸�������Ǥ������γ���ϥ��ץ���󤴤Ȥ�����ʤΤǡ����顼���Ȥ˳���ۤ��Ѥ��뤳�Ȥ��ǽ�Ǥ���<br /><br />\r\n\r\n��������۾��ʾ���<br />\r\n��[����°���ˤ�����]���Ϥ�<br />\r\n��[���ʲ��� (�ͥå�)]��0��<br /><br />\r\n\r\n�ڥ��ץ�����������\"�ۥ磻��\"<br />\r\n��[���ץ����β���]��4000��<br />\r\n��[°���ˤ�����������١������ʤ˴ޤ��]���Ϥ�<br />\r\n��[��󥿥����Ͱ����Ͱ����]��-500�ʱߡˡ���Ƭ��\"-\"��Ĥ��뤳��<br /><br />\r\n\r\n�ڥ��ץ�����������\"�����\"<br />\r\n��[���ץ����β���]��5000��<br />\r\n��[°���ˤ�����������١������ʤ˴ޤ��]���Ϥ�<br />\r\n��[��󥿥����Ͱ����Ͱ����]��-500�ʱߡˡ���Ƭ��\"-\"��Ĥ��뤳��<br /><br /><br />\r\n\r\n<strong>NOTE1����[����°���ˤ�����]���Ϥ����ΰ�̣</strong><br /><br />\r\n����̾�β���ɽ����������� �� [���ʲ���] �� [���ץ������ʡʤκǰ���)] �ˤʤ�ޤ���<br />\r\n�������֤������פ��ȡ�[���ʲ���]������ɽ������ޤ��ʾ��ʲ��ʡ�0�ߤλ���ɽ�����ξ�ά�ˡ�<br />\r\n���������ȡ����ץ������ʤκǰ��ͤϥۥ磻�Ȥ�4000�ߤʤΤǡ�����̾�β���ɽ����������� ��0�ߡ�4000�ߤη�̤Ȥ���4000�ߤ�ɽ������Ƥ���櫓�Ǥ���<br /><br /><br />\r\n\r\n<strong>NOTE2��[°���ˤ�����������١������ʤ˴ޤ��]���Ϥ����ΰ�̣</strong><br /><br />\r\n���줬\"������\"�Υ��ץ����ϡ����Ȥ����Υ��ץ�������⤬���ץ����֤Ǻǰ��ͤ��ä��Ȥ��Ƥ�<br />\r\nNOTE1������������<br />\r\n������̾�β���ɽ����������� �� [���ʲ���] �� [���ץ������ʡʤκǰ���)] ��<br />\r\n���ͤȤ��ƤϻȤ��ޤ���<br /><br /><br />','',7),(199,1,'DSCNT_ONE2','','',0),(199,2,'��OT2�ۥ�󥿥����\"��\"�㡧1��ʸ�ˤĤ�������Ѥ�û�','��󥿥�������ǽ�ϡ��Ȥ�������ǤϽ������Ū�ʻȤ�����Ǥ��ޤ���<br />\r\n�����ǽ�����Ѥȸ��äƤ���Τϡ�����ʸ�Ŀ��ˤ�����餺1�����ʸ������1�٤�������������פȤ�����̣�Ǥ���<br /><br />\r\n\r\n���ʤ��������Ǥ�������󥿥�������ǽ�ܥ��ץ����°���ο��̳����Ȥä�T����ĤΥ��ꥸ�ʥ�ץ��Ȥ���򤪤ߤ����ޤ��礦��<br /><br />\r\n\r\n������ϡ�̵��T����Ĥ˥����̾�ʤɤΥ��ꥸ�ʥ�ץ��Ȥ�ù����롢������\"������T�����\"���ʤǤ�������ϰʲ��Τ褦�˷�ޤ�ޤ���\r\n<ul>\r\n<li>�ץ��ȸ�������ǲ���ˤ�������ޤ������󥯤ο��������Ƿ�ޤ���ʸ���ˤ��ޤ���</li>\r\n<li>���Τۤ���T�����1�礢����Υץ�����ʲù���ˤ�������ޤ�������⥤�󥯤ο�����ñ�����㤤���������ʸ�������������ñ����������ޤ���</li>\r\n<li>������T��������Τ����ʤ����Ӥ�����ޤ�</li>\r\n</ul>\r\n\r\n��������۾��ʾ���<br />\r\n��[���ʲ���]����4000�ߡ���T��������Τβ��ʡ�<br /><br />\r\n\r\n��������ۥ��ץ����°��<br />\r\n[���ץ������]��[���ץ�������]��[��󥿥����Ͱ����Ͱ����]��[���ץ����ο����Ͱ�����]���ν��<br />\r\n���ץ���1������+ 600 �� +10000 ��49:-0,50:-200,100:-300<br />\r\n���ץ���2������+ 700 �� +20000 ��49:-0,50:-200,100:-300<br />\r\n���ץ���3������+ 800 �� +30000 ��49:-0,50:-200,100:-300<br /><br />\r\n\r\nNOTE��<br />\r\n��[���ʲ���]��̵��T�������<br />\r\n��[���ץ�������]��ù���<br />\r\n��[��󥿥����Ͱ����Ͱ����]��ץ��ȸ�����<br />\r\n�ˤ�����ޤ���<br /><br />\r\n\r\n��󥿥�������Ƭ��\"+\"���Ĥ��г����ʺ������ˤˡ�\"-\"���Ĥ��г���ʡ�1�ۤ���ˤȤ��Ƶ�ǽ���ޤ���','',10),(201,1,'UNIT1','','',0),(200,1,'LIMIT-2','','',0),(200,2,'��2�ۤ���ͤ���1���¤ꡪ�ʿ�����������ɽ����','��ʸ1�󤢤���ι����������1�Ĥ����ꤹ��ȡ��������������ɽ���ˤʤꡢ1�����Ĥ��������Ȥ��ɲäǤ��ʤ��ʤ�ޤ���<br /><br />\r\n\r\n���������<br />\r\n�����ʤκǾ����̡���1<br />\r\n�����ʤκ�����̡���1<br />\r\n�����ʤο���ñ�̡���1<br /><br />','',1),(202,2,'��2��2000�İʾ��100��ñ�̤Ǥ���ʸ��������','����ϡ�100��ñ�̤ǡ����ĺ���Ǥ�2000�İʾ夫�����ʸ�������������ʤɤΥ����������ꤷ����Ǥ�������������̹������оݤȤ�������ʤɤ����Ω�ĤȻפ��ޤ���<br /><br />\r\n\r\n�������⡧���ʾ����<br />\r\n��[�Ǿ�������]����2000<br />\r\n��[����ñ��]�� 100<br /><br />\r\n\r\nNOTE��<br />\r\n�����[���������]�����ꤷ�Ƥ����ȡ���ʸ�ξ�¤����¤Ǥ��롣<br />','',0),(203,1,'UNIT_ATR1','','',0),(203,2,'��OP1��100��ñ�̤Ǥ���ʸ���������ʥ��ץ���󺮺�OK��','����ϡ����ʥ��ץ���󤢤�ξ���[���ʤο���ñ��]������Ǥ���<br />\r\n������Ǥϡ����ץ������Ȥ߹�碌���ɤ����졢�ǽ�Ū�ˤ��ξ��ʹ��������ñ�̿��̤��ܿ��Ǥ���й�����ǽ�Ǥ���<br />\r\n�Ĥޤꡢ�ۥ磻��50�����������졢³���ƥ֥롼��50�����������줿�����ǹ��100���ȸ��ʤ���ƹ�����ǽ�Ȥʤ�ޤ���<br /><br />\r\n\r\n�������⡧���ʾ����<br />\r\n��[���ʤο���ñ��]����100<br /><br />\r\n\r\n�������⡧���ʲ��ʤδ�����<br />\r\n�������̤ȥ�˥å��̤��Ȥ߹�碌��Ŭ�����롧���Ϥ�','',1),(204,1,'UNIT_ATR2','','',0),(204,2,'��OP2��1���ץ���󤢤���100��ñ�̤Ǥ���ʸ��������','����ϡ����ʥ��ץ���󤢤�ξ���[���ʤο���ñ��]������Ǥ���<br />\r\n������Ǥϡ�1�ĤΥ��ץ���󤢤���ι������ǥ�����Ȥ���Ʊ�����ץ�����ñ�̿��̤��ܿ��Ǥʤ��Ȥȷ�Ѥ˿ʤ�ޤ���<br />\r\n�Ĥޤꡢ�ۥ磻�Ȥȥ֥롼��50�����ĥ���������Ƥ����ǡ��ۥ磻�Ȥ��뤤�ϥ֥롼ñ�Τ�100�ĤȤ�200�ĤǤϤ���ƹ�����ǽ�Ȥʤ�ޤ���<br /><br />\r\n\r\n�������⡧���ʾ����<br />\r\n��[���ʤο���ñ��]����100<br /><br />\r\n\r\n�������⡧���ʲ��ʤδ�����<br />\r\n�������̤ȥ�˥å��̤��Ȥ߹�碌��Ŭ�����롧��������','',1),(205,1,'PRCFACTOR','','',0),(205,2,'��1�ۥץ饤���ե����������ƥ������åס��ݾڥ����ӥ������','�ץ饤���ե�����������Ǥ���<br />\r\n�ƥ������åפ����䤷�ޤ������Υƥ������åפˤϡ����ʲ��ʤβ��󤫤��ɲä�ʧ���ȹ�����ΰ�����֡���졦�礱����̵���򴹤��Ƥ������ݾڥ����ӥ��פ��Ѱդ���Ƥ��ޤ��������Ǥϡ������ݾڥ����ӥ��򡢥ץ饤���ե���������Ȥä����ꤷ�ޤ���<br /><br />\r\n\r\n��������۾��ʾ���<br />\r\n��[���ʲ���]��20000 ��<br />\r\n��[����°���ˤ�����]�� �Ϥ�����1<br /><br />\r\n\r\n��������ۡ�5ǯ�ݾڡץ��ץ����<br />\r\n��[���ץ�������]�� 0��<br />\r\n��[�ץ饤���ե�������]�� 0.05 �����١������ʤ�5��<br />\r\n��[°���ˤ�����������١������ʤ˴ޤ��]�� �Ϥ�����2<br /><br />\r\n\r\n��������ۡ�20ǯ�ݾڡץ��ץ����<br />\r\n��[�ץ饤���ե�������]�� 0.15 �����١������ʤ�15��<br />\r\n��¾������ϡ�5ǯ�ݾڡץ��ץ�����Ʊ����<br /><br /><br />\r\n\r\n<strong>NOTE�� �ץ饤���ե��������ˤĤ���</strong><br />\r\n�ץ饤���ե��������䥪�ե��åȤϡ����ץ������������ɲ�����˼��Τ褦�˺��Ѥ��ޤ���<br /><br />\r\n\r\n��<strong>���ץ������������ɲ�����<br />\r\n���� [���ץ�������] ��  <br />\r\n���� [�١�������] �ߡ�[�ץ饤���ե�������]��[���ե��å�]��</strong><br /><br />\r\n\r\n�����������嵭��1,2�Υե饰��ξ���Ȥ�\"�Ϥ�\"�ʤ�<br />\r\n��[�١�������] �� [���ʲ���]��[���ץ�������]<br /><br />\r\n\r\n���ɤ��餫�ʤ��뤤��ξ���ˤ�\"������\"�ʤ�<br /><br />\r\n��[�١�������] �� [���ʲ���]\r\n\r\n\r\n��������Ǥ�1��2�Υե饰�ϡ�ξ��\"�Ϥ�\"�ˤ��ޤ���������Ȥ�ȥ��ץ������ʤ�0�ߤȤ��Ƥ���Τ�\r\n�ºݤ�\"�Ϥ�\"�Ǥ�\"������\"�Ǥ�Ʊ����̤ˤʤ�ޤ���<br />','',69),(206,1,'PRCFACTOR_OFFSET1','','',0),(206,2,'��2�ۥץ饤���ե��������ȥ��ե��åȡ��ѥå���������','������Ǥϥץ饤���ե���������1�ʲ����͡ʲ��ʤ�5�����ˤ�Ȥ��ޤ����������٤ϥѥå������������ˤȤä��礭�������ͤ�Ȥ���򤪸������ޤ��礦��������Ǥϥ��ե��åȤ�ʻ�������Ѥ��ޤ���<br /><br />\r\n\r\n�ȼԸ�����T����Ĥ�ѥå��������䤹������Ǥ�������̾�β��ˤ�����ʪ��T����ġ�1��β��ʤ�ɽ������ޤ������ºݤ���ʸ��1�ѥå�100�������ѥå�����������ʸ���Ƥ�餤�ޤ���1�ѥå��������T�����100��ʬ�Ǥ���<br /><br />\r\n\r\n�����Ǥϡ�����1�ѥå�����������ʤ򥪥ץ��������ʡ�T�����ñ���ˡ��ץ饤���ե��������ʥ��å�����ˤȥ��ե��åȡ�̵�������ӥ�ʬ�ˤ�Ȥä����ꤷ�ޤ���<br /><br />\r\n\r\n��������۾��ʾ���<br />\r\n��[���ʲ���]��0 ��<br />\r\n��[����°���ˤ�����]�� �Ϥ�����1<br /><br />\r\n\r\n��������ֶۡ�̳�ѥѥå���100������ˡץ��ץ����<br />\r\n��[���ץ�������]�� 4000��<br />\r\n��[�ץ饤���ե�������]�� 100 <br />\r\n��[���ե��å�]�� 1<br />\r\n��[°���ˤ�����������١������ʤ˴ޤ��]�� �Ϥ�����2<br /><br />\r\n\r\n<strong>NOTE�� �ץ饤���ե��������ˤĤ���</strong><br />\r\n�ץ饤���ե��������䥪�ե��åȤϡ����ץ������������ɲ�����˼��Τ褦�˺��Ѥ��ޤ���<br /><br />\r\n\r\n��<strong>���ץ����������ι���ñ���ʾ���1���������<br />\r\n���� [���ʲ���] �� [���ץ�������]  <br />\r\n������ [�١�������] �ߡ�[�ץ饤���ե�������]��[���ե��å�]��</strong><br /><br />\r\n\r\n�����������嵭��1,2�Υե饰�ξ��֤�[�١�������]���Ѥ�ꡢ\r\n<ul>\r\n<li>2�ե饰�Ȥ�� \"�Ϥ�\" �ʤ顦��<br />\r\n[�١�������] �� [���ʲ���]��[���ץ�������]</li>\r\n<li>�����줫�����뤤��ξ�� \"������\" �ʤ顦��<br />\r\n[�١�������] �� [���ʲ���]</li>\r\n</ul>\r\n\r\n\r\n<strong>�����ե��å��ͤˤĤ���</strong><br />\r\n�����������ߤơ��֤ʤ�ǥ��ե��åȤ�1�ˤ����������פȻפ��ޤ���Ǥ����������ҤΡ֥��ץ������������ɲ�����פμ�����դ��Ƹ����ߤ����ΤǤ������ץ饤���ե���������100�ܤ��Ƥ���¾�ˡ�����1���ܤǤ⤦1��ʬ�β��ʡʡ�[���ʲ���] �� [���ץ�������]��  ���û�����Ƥ��ޤ���͡����ΤޤޤǤ�101��ʬ������ˤʤäƤ��ޤ���礬�����Τǡ����ե��å�¦��;ʬ��1��ʬ�򥭥�󥻥뤷�Ƥ���ΤǤ���<br />\r\n������Ȥ��ơ��嵭���100��Τ���5��ʬ�������̵�������ӥ��ˤ���ʤ顢[���ե��å�]��\"6\" �ʥ���󥻥�1��̵�������ӥ�5�ˤȤʤ�ޤ���<br /><br />\r\n\r\n<strong>NOTE�� �߸ˤ������ˤĤ���</strong><br />\r\n�߸ˤ������ˤĤ�����դ����ߤ����Τϡ�������Ǥ���1�ѥå��������������顢�߸ˤθ������Ȥ��Ƥ�1�ʥѥå�������ʬ�Ǥ��äơ�100��ʬ������ʪ�θĿ��ˤǤϤʤ��Ȥ������ȤǤ���<br />\r\n�⤷�߸˿�������ʪ�١����Ǵ����������ΤǤ���С��ץ饤���ե��������ǤϤʤ���[���ʤο���ñ��]��100�ˤ�����ˡ�ʤ��������100ñ�̤Ǥ�����ʸ�Ǥ��ʤ��ˤ��٥������⤷��ޤ���','',41),(207,1,'PRCFACTOR_OFFSET_ONCE','','',0),(207,2,'��3�ۥ�󥿥���ץ饤���ե��������ȥ��ե��å�','������Ǥϥץ饤���ե��������ȥ��ե��åȤ�Ȥä��ѥå������������򤪸������ޤ��������٤�̾���ϻ��Ƥ��ޤ�����1��ʸ������ˤ���������Ȥ��ƥ�󥿥���ץ饤���ե��������ȥ��ե��åȤˤĤ����������ޤ���<br /><br />\r\n\r\n�̾�Υץ饤���ե������������ե��åȤȡ���󥿥�����ΰ㤤�ϡ�<br />\r\n�����ɲ�ʬ������ñ���˲û�����뤫�ʥץ饤���ե���������N���㤨��N�ܤ�����ˡ�<br />\r\n������ʸ1�󤢤�������˲û�����뤫�ʥ�󥿥������������äƤ��ɲ�ʬ��1��ʸ���������ۡ�<br />\r\n�Ȥ������Ǥ���<br /><br />\r\n\r\n�����Ǥ�T����Ĥ����䤷�ޤ����֥��ե������ץ��ץ���󤬤��äơ�����ϸ��������ǤϤʤ��ʲ�����äƤ��1�ĸ��ǥ�åԥ󥰤����ΤȤ��ޤ����Ĥޤ�1��ʸ������1��åԥ󥰤Ȥ������Ȥǡ����Υ��ץ������ɲ����ѤȤ��ƾ���1�Ĥ����ʤ�20�󤤤��������Ȥˤ��ޤ�����������󥿥���ץ饤���ե��������Ǽ¸����ޤ���<br /><br /><br />\r\n\r\n\r\n��������۾��ʾ���<br />\r\n��[���ʲ���]��4000 ��<br />\r\n��[����°���ˤ�����]�� �Ϥ�����1<br /><br />\r\n\r\n��������ۥ��եȥ��ץ����<br />\r\n��[���ץ�������]�� 0��<br />\r\n��[��󥿥���ץ饤���ե�������]�� 0.3 <br />\r\n��[��󥿥��४�ե��å�]�� 0.1<br />\r\n��[°���ˤ�����������١������ʤ˴ޤ��]�� �Ϥ�����2<br /><br />\r\n\r\n<strong>NOTE�� ��󥿥���ץ饤���ե�����������ӥ�󥿥��४�ե��åȤˤĤ���</strong><br />\r\n��󥿥���ץ饤���ե������������ե��åȤϡ����ץ������������ɲ�����˼��Τ褦�˺��Ѥ��ޤ���<br /><br />\r\n\r\n��<strong>���ץ����������ι���ñ���ʾ���1���������<br />\r\n���� [���ʲ���] �� [���ץ�������]</strong><br /><br />\r\n\r\n������¾�ˡ�1��ʸ�����꤫�������⤬���äơ�����<br />\r\n��<strong>���ץ������������ɲ������1��ʸ�������<br />\r\n���� [�١�������] �ߡ�[��󥿥���ץ饤���ե�������]��[��󥿥��४�ե��å�]��</strong><br /><br />\r\n\r\n�����������嵭��1,2�Υե饰�ξ��֤�[�١�������]���Ѥ�ꡢ\r\n<ul>\r\n<li>2�ե饰�Ȥ�� \"�Ϥ�\" �ʤ顦��<br />\r\n[�١�������] �� [���ʲ���]��[���ץ�������]</li>\r\n<li>�����줫�����뤤��ξ�� \"������\" �ʤ顦��<br />\r\n[�١�������] �� [���ʲ���]</li>','',18),(209,1,'BASEPRICE1','','',0),(209,2,'��1�ۥ١������ʡᾦ�ʲ��ʡܥ��ץ�������','�١������ʡ����ʲ��ʡ����ץ������ʤδط������򤹤��1��<br /><br />\r\n\r\n�١������ʤϡ����ץ���󤴤Ȥο��̳���䡢�ץ饤���ե���������Ŭ�Ѥ���ݤδ��ۤȤ��ƻȤ��ޤ���<br /><br />\r\n\r\n�١������ʤϡ�\r\n<ul>\r\n <li>[����°���ˤ�����]�ե饰�������ʾ���������1�������Τ˱ƶ������</li>\r\n <li>[°���ˤ�����������١������ʤ˴ޤ��]�ե饰�������ץ����°�����Ȥ�����ʤ��Υ��ץ��������˱ƶ������</li>\r\n</ul>\r\n��2�ե饰�ξ��֤��ƶ����ޤ����ط���ɽ�ˤ���ȡ�����<br /><br />\r\n\r\n<table border=\"1\">\r\n  <tr>\r\n    <th width=\"20%\">[����°���ˤ�����]</th>\r\n   <td colspan=\"2\" width=\"60%\"><b>\"�Ϥ�\"</b></td>\r\n   <td width=\"20%\"><b>\"������\"</b></td>\r\n  </tr>\r\n  <tr>\r\n   <th>[°���ˤ�����������١������ʤ˴ޤ��]</th>\r\n   <td width=\"40%\"><b>\"�Ϥ�\"</b></td>\r\n   <td width=\"20%\">\"������\"</td>\r\n   <td>��</td>\r\n  </tr>\r\n  <tr>\r\n   <th>[�١�������]</th>\r\n   <td style=\"background:#E6E68A;\">��[���ʲ���]��[���ץ�������]</td>\r\n   <td colspan=\"2\" style=\"background:#E6E68A;\">��[���ʲ���]</td>\r\n  </tr>\r\n  <tr>\r\n   <th>ɽ�����ʤ��оݡ�</th>\r\n   <td style=\"background:#E6E68A;\">YES�ʥ١���������Ǿ��ͤʤ�ɽ��������</td>\r\n   <td colspan=\"2\" style=\"background:#E6E68A;\">ɽ���оݳ�</td>\r\n  </tr>\r\n</table>\r\n<br />\r\n�����Ǥϡ��ɤ���Υե饰��\"�Ϥ�\"������󼨤��ޤ���<br /><br />\r\n\r\n��������۾��ʾ���<br />\r\n��[���ʲ���]��4000��<br />\r\n��[����°���ˤ�����]���Ϥ�<br /><br />\r\n\r\n���������\"�ۥ磻��\"<br />\r\n��[°���ˤ�����������١������ʤ˴ޤ��]���Ϥ�<br />\r\n��[���ץ�������]��500��<br /><br />\r\n\r\n���������\"�����\"<br />\r\n��[°���ˤ�����������١������ʤ˴ޤ��]���Ϥ�<br />\r\n��[���ץ�������]��1000��<br /><br />\r\n\r\nNOTE:<br />\r\nɽ�����ʡʾ���̾�β���ɽ������Ƥ�����ʡˤˤϡ��١������ʤκǾ��ͤ�ɽ������ޤ����ۥ磻�ȤΥ١������ʤ���������󥸤�꾮�����Τǡ��ۥ磻�Ȥ��ͤ�ɽ������Ƥ���櫓�Ǥ���','',11),(208,1,'DISCNTQTY_ATTR_ONCE','','',0),(208,2,'��3�ۥ��顼�ǳ����郎�ۤʤ��󥿥�����̳����','[���ץ����Υ�󥿥�������Ͱ�����]��Ȥ���Ǥ���<br />\r\n����2��ǰ��ä�[���ץ����ο����Ͱ�����]��ñ���˺��Ѥ����Ͱ������ä��Τ��Ф��ơ������ǰ���[���ץ����Υ�󥿥�������Ͱ�����]�ϡ�1�����ʸ������ˤ������Ͱ����Ǥ��������ۤʤ�ޤ���<br /><br />\r\n\r\n�Ĥޤꡢ<br />\r\n���ʲ��ʤ�1000�ߡ�10�İʾ���ä���100�߰����������Ȥ���<br />\r\n\r\n[���ץ����ο����Ͱ�����] �����ꤷ����硧<br />\r\n������������[10��ʬ]���1000�� �� 100�ߡˡ�10�� ��9000��<br />\r\n������ñ����900�ߤˤʤ롣<br /><br />\r\n��\r\n�Ǥ�����Ʊ�����Ȥ�<br />\r\n[���ץ����Υ�󥿥�������Ͱ�����]�����ꤷ����硧<br />\r\n������������[10��ʬ]�� ��1000�� �� 10�ġˡ�100�� �� 9900��<br />\r\n������ñ�����Ѳ���������פ���100�߰������<br /><br />\r\n\r\n�Ȥ�����̤ˤʤ�ޤ���<br />\r\n�ʤ������̤Τ������͡�����ۤ򥪥ץ���󤴤Ȥ���Ω��������Ǥ������ʤɤ�Ʊ���Ǥ���<br /><br /><br />\r\n\r\n<strong>���ץ����Υ�󥿥�������Ͱ�����ν�</strong><br />\r\n[�������� N:�Ͱ����� D] ���󥻥åȤȤ��ơ�ɬ�ץ��å�ʬ������,��Ⱦ�ѥ���ޡˡפǷҤ��ޤ���<br /><br />\r\n\r\n�񼰡���N0:D0, N1:D1, N2:D2����, N(n-1):D(n-1), Nn:Dn<br /><br />\r\n��̣��1��N0�Ĥޤǡ� D0�߰���<br />\r\n������N1��N2�Ĥޤǡ� D1�߰���<br />\r\n��������<br />\r\n��������<br />\r\n������N(n-1)��Nn�Ĥޤǡ� D(n-1)�߰���<br />\r\n������N(n-1)+1�İʾ塧 Dn�߰���<br /><br />\r\n\r\n��n=1,2,������,N�μ��������Ǹ�Υ��åȤ�Nn�λ����ͤ˰�̣�Ϥʤ���Dn�Ͼ��N(n-1)+1�İʾ�λ����Ͱ��ۤȤ��ư����롣<br /><br />\r\n\r\n�ڼ���1��\"�ۥ磻��\"<br />\r\n[���ץ����Υ�󥿥�������Ͱ�����]��9:-0,10:-1000,11:-4000<br />\r\n��̣������9���ޤǤ��Ͱ���0��10���ʤ��פ���1000�߰�����11���ʾ�Ǥ�4000�ߤ��פ������<br /><br />\r\n\r\n�ڼ���1��\"�����\"<br />\r\n[���ץ����Υ�󥿥�������Ͱ�����]��19:-0,20:-5000<br />\r\n��̣������19���ޤǤ��Ͱ���0��20���ʾ��㤦�ȹ�פ���5000�߰���<br /><br />\r\n\r\nNOTE��<br />\r\nD���ͤ�Ƭ�ˡ�-�פ�Ĥ���-100�ʤ�100�߰����ˡ���+�פ�Ĥ���+100�Ȥʤ�100�������ˤʤ롣','',11),(210,1,'BASEPRICE3','','',0),(210,2,'��3�ۥ١������ʤ˴ޤ��/�ʤ� ����','�١������ʡ����ʲ��ʡ����ץ������ʤδط������򤹤��2��<br /><br />\r\n\r\n��1�ۤ��2�ۤ���Ȥۤ�Ʊ������Ǥ�����<br />\r\n\"�ۥ磻��\"�����ϡ�[°���ˤ�����������١������ʤ˴ޤ��]�ե饰��\"������\"�ˡ�<br />\r\n����\"�����\"�ϥե饰��\"�Ϥ�\"�Τ褦�˥��ץ����ˤ�äƺ��ߤ��Ƥ�����Ǥ���<br />\r\n\r\n��������۾��ʾ���<br />\r\n��[���ʲ���]��4000��<br />\r\n��[����°���ˤ�����]���Ϥ�<br /><br />\r\n\r\n���������\"�ۥ磻��\"<br />\r\n��[°���ˤ�����������١������ʤ˴ޤ��]��������<br />\r\n��[���ץ�������]��500��<br /><br />\r\n\r\n���������\"�����\"<br />\r\n��[°���ˤ�����������١������ʤ˴ޤ��]���Ϥ�<br />\r\n��[���ץ�������]��1000��<br /><br />\r\n\r\nNOTE:<br />\r\nɽ�����ʡʾ���̾�β���ɽ������Ƥ�����ʡˤˤϡ��̾�١������ʤκǾ��ͤ�ɽ������ޤ������������ۥ磻�Ȥ�[°���ˤ�����������١������ʤ˴ޤ��]�ե饰��\"������\"�ʤΤ��оݤ���Ϥ���ơ�����󥸤Υ١������ʤ�ɽ������ޤ���','',9),(211,1,'BASEPRICE2','','',0),(211,2,'��2�ۥ١������ʤ˥��ץ������ʤ�ޤ�ʤ�','�١������ʡ����ʲ��ʡ����ץ������ʤδط������򤹤��2��<br /><br />\r\n\r\n����ľ���Ρ�1�ۤȤۤ�Ʊ������Ǥ�����<br />\r\n������Ȥ�[����°���ˤ�����]�ե饰��\"������\"�ʤΤ�<br />\r\n\"�ۥ磻��\"\"�����\"���ץ����Ȥ��[�١�������]�ˤ�[���ץ��������]��ޤߤޤ���<br />\r\n\r\n��������۾��ʾ���<br />\r\n��[���ʲ���]��4000��<br />\r\n��[����°���ˤ�����]���Ϥ�<br /><br />\r\n\r\n���������\"�ۥ磻��\"<br />\r\n��[°���ˤ�����������١������ʤ˴ޤ��]���Ϥ�<br />\r\n��[���ץ�������]��500��<br /><br />\r\n\r\n���������\"�����\"<br />\r\n��[°���ˤ�����������١������ʤ˴ޤ��]���Ϥ�<br />\r\n��[���ץ�������]��1000��<br /><br />\r\n\r\nNOTE:<br />\r\nɽ�����ʡʾ���̾�β���ɽ������Ƥ�����ʡˤ�١������ʡʥ��ץ���󤴤ȿ��̳���ʤɤδ��ܳۡˤ˴ޤޤ�ʤ������ǡ����Υ��ץ������������ɲ�����Ȥ��Ƥϵ�ǽ���ޤ���','',3),(212,1,'Russ Tippins Band - The Hunter','The Product Music Type is specially designed for music media. This can offer a lot more flexibility than the Product','',0),(212,2,'Russ Tippins Band - The Hunter','��Product - Music�פϲ��ڡʡ������˾��ʤ˺�Ŭ���������ʥ����פǤ���<br /><br />\r\n\r\n�������ʥ����פǾ�����Ͽ����ȡ�<br />\r\n�������ƥ�����<br />\r\n���쥳���ɲ��<br />\r\n�����ڥ�����<br />\r\n�ʤɤξ���򰷤����Ȥ��Ǥ���<br /><br />\r\n\r\n����ˡ��ߥ塼���å�����åס�mp3�ե��������ˤγ�����Ƥ���ǽ�ʤɡ����̤����ʥ����פ����������٤�Ǥ��ޤ���','',9),(213,1,'Help!','','',0),(213,2,'Help!','���ξ��ʤ��������Ʊ������Product - Music�׾��ʥ����פβ��ھ��ʤǤ���<br />\r\n�����㤬��CD��DVD�Τ褦�ʼ��ΤΤ��뾦�ʤ������оݤȤ��Ƥ����Τ��Ф������ξ��ʤϼ��ΤΤ��뾦�ʡ�CD�ˤȥ�������ɾ��ʡ�mp3�ե�����ˤΤɤ��餫����ǹ����Ǥ�������Ǥ���<br />\r\nmp3�ե��������������ϡ�������ޥ��ڡ��������������ɤǤ���褦�ˤʤ�ޤ���<br /><br />\r\n\r\n��������۾��ʾ���<br />\r\n��[����������뾦��l]���������������轻������Ϥ�ɬ��<br />\r\n��[�������̵��]�����̾��ʤȥ�������ɾ��ʤΥ���ӥ͡������������轻�����Ͽ��ɬ�פǤ���<br />\r\n��[����]��0��Kg�ˡ�����������ɾ��ʤξ�礬���뤿�ᥪ�ץ����°��¦�����ꤹ��<br /><br />\r\n\r\n�ڥ��ץ����°��������ۥ�ǥ���������<br />\r\n�����ץ����°����\"CD\"���ץ������Ф�<br />\r\n��[���ץ�������]��1��Kg��<br /><br />\r\n\r\n�����ץ����°����\"mp3�ʥ�������ɡ�\"���Ф�<br />\r\n��[���ץ�������]��0��Kg��<br />\r\n��[��������ɾ��ʥե�����̾]��help.mp3<br />\r\n��[ͭ������(��)]��7 ������<br />\r\n��[�����������ɿ�]: 5 �ʲ��<br /><br />\r\n\r\nNOTE1��<br />\r\n���ļԤ�������ʸ��[��ʸ�������ơ�����]��\"��λ\"�ˤ���ȡ�<br />\r\n��ʸ�ԤΥޥ��ڡ����ˤ����ƥ�������ɤǤ�����֤ˤʤ�ޤ���<br /><br />\r\n\r\nNOTE2��<br />\r\n��������ɥե�����ϡ����餫����<br />\r\n���ʥ���å����֥ǥ��쥯�ȥ��/download<br />\r\n�۲���FTP���åץ��ɤ��Ƥ����ޤ���<br /><br />\r\n\r\n\r\nNOTE3��<br />\r\n��Product - Music�פϲ��ڡʡ������˾��ʤ˺�Ŭ���������ʥ����פǤ���<br /><br />\r\n\r\n�������ʥ����פǾ�����Ͽ����ȡ�<br />\r\n�������ƥ�����<br />\r\n���쥳���ɲ��<br />\r\n�����ڥ�����<br />\r\n�ʤɤξ���򰷤����Ȥ��Ǥ���<br /><br />\r\n\r\n����ˡ��ߥ塼���å�����åס�mp3�ե��������ˤγ�����Ƥ���ǽ�ʤɡ����̤����ʥ����פ����������٤�Ǥ��ޤ���','',21),(214,1,'DOC_GENERAL','Document General Type is used for Products that are actually Documents. These cannot be added to the cart but can be configured for the Document Sidebox. If your Document Sidebox is not showing, go to the Layout Controller and turn it on for your template.','',0),(214,2,'���̥ɥ�����ȡ������ʡˤ���','��������ʥ����פ�[Document - General]����Ͽ�����ɥ�����Ȥǡ����ɤ�Ǥ��뤳���[�ɥ�����Ȥ�����]���Τ�ΤǤ���<br /><br />\r\n\r\n[Document - General]�˻��ꤵ�줿�ɥ�����Ȥϡ������Ȥ�������ޤ��󡣤ޤ������侦�ʤǤϤʤ��Τǡ�[\r\n���ʷ���]�⤢��ޤ���<br /><br />\r\n\r\n���Τ����ˡ��ֽ���פ�̾�դ���줿���̤ʥ����ɥܥå����˷Ǻܤ���ޤ������ξ��ʥ����פϡ�ʸ���̤�ɥ�����ȤȤ��ơ����Υ����ȤΥ���饤��ޥ˥奢���FAQ�Ȥ��ƻȤ��ʤɤ����Ӥ��ͤ����ޤ���<br /><br />\r\n\r\n����������\r\n\r\n<p>WWW(World Wide Web)��, ��������CERN(������γ��ʪ�������)�ˤ�����, ����θ���Դ֤θ������̤ζ�ͭ��ٱ礹�뤳�Ȥ���Ū�Ȥ���, 1990ǯ��ʬ��������ϥ��ѥƥ����ȥ����ƥ�ι��ۤΤ���Υץ������Ȥˤ�ä���Ω���줿�����Υϥ��ѥƥ����ȤǤ�, �ƥ��������ϥƥ����Ȥν����ʬ�䤷�ƥΡ��ɤȤ���ñ�̤�ʬ��, �Ρ�����˥���(ü��)���������, ���󥫴֤δط��Ȥ��ƥϥ��ѥ�󥯤��ꤷ�Ƥ��롣</p> \r\n\r\n<p>WWW�Υץ������Ȥ��Ǥ��������, CERN�ˤ���������ޥ����Υ饤��⡼�ɥ֥饦�����Ѱդ��줿�����Ǥ��ä���, 1991ǯ�ˤ�CERN�ʳ��Ǥ�WWW�����Ѥ���ǽ�ˤʤ�, X������ɥ������ƥ��ѤΥ֥饦������ȯ���줿��1993ǯ�ˤʤ��, ����Υ���ؤ�MOSAIC��ȯɽ�����ʸ����β���ɽ������ǽ�ˤʤ�, Windows�Ǥ˲ä���MAC�Ǥ�ȯɽ���줿��1994ǯ��Netscape Navigator�Υ�꡼����, WWW����ȯŪ��ڤΤ��ä�����Ĥ���, ���줬����˥��󥿥ͥå����ѼԤ����䤹���Ȥˤʤä��� </p>\r\n\r\n<p>CERN�ǤΥϥ��ѥƥ����Ȥι�¤���ҵڤӤ��θ򴹼�³����, ��ȯ����ϸ������λ��ͤˤȤɤޤäƤ�����, WWW����ڤȶ��ˤ�����ɸ�ಽ�ؤΰռ�����ޤ�, IETF(Internet Engineering Task Force)�ˤ�����, HTML�ڤ�HTTP(Hypertext Transfer Protocol)�κ�ȥ��롼�פ���Ω������ܳ�Ū��ɸ�ಽ��Ȥ����Ϥ��줿��HTML 2.0��, IETF RFC1866[1]�Ȥ��Ƹ�ɽ����, ���θ�, HTML��ɸ�ಽ��Ȥ�, W3C(World Wide Web Consortium)�˰ܤ��줿�� </p>\r\n\r\n<p>W3C�Ǥν����HTML���Ǻ�Ȥ�, �֥饦���᡼�����ȼ��γ�ĥ��ۼ����ƥ�����������ޤ�¿���ε�ǽ������������ˤǹԤ�줿�����������θ�, HTML�������ʸ��������¤���Ҥθ���˰����ᤷ��, �����������ˤĤ��Ƥ��̤θ��ͼ����б�����Ȥ������ˤ���ή�Ȥʤ�, HTML 3.2[2], HTML 4.0[3]�ؤȲ��Ǥ���Ƥ�����</p>','',9),(215,1,'Document - Product type','','',0),(215,2,'���ʥɥ�����ȡ����侦�ʡˤ���','����Ͼ��ʤȤ������䤹��ɥ�����Ȥǡ����ʥ����פ�[Document - Product]�Ǥ���<br /><br />\r\n\r\n���ʥ����פ�[Document - General]���ä�ľ������Ȱۤʤꡢ�����ˤϥ����������ܥ���ɽ������Ƥ��ޤ���<br />\r\n\r\n���ʥɥ�����ȡ����侦�ʡ˥����פǤϡ����ʾ�������Ϲ��ܤʤɤϰ��̾��ʤȤ���ꤢ��ޤ��󡣤��������ֽ���פȤ������̤ʥ����ɥܥå�����ɽ�������ʤɡ��ɥ�����ȤȤ������̰�������ޤ���','',4),(225,1,'Single Download','','',0),(225,2,'��������ɾ������1�ե������','����ϥե����뤬1�Ĥ����ξ��Υ����������Ǥ���<br />\r\n���ץ�����������ե���������Υե�����1�����������ɲ�ǽ�Ǥ���<br /><br />\r\n\r\n��������۾��ʾ���<br />\r\n��[����������뾦��l]���Ϥ��������轻��򥹥��å�<br />\r\n��[�������̵��]�����ξ��ʤ��������Ʊ������Product - Music�׾��ʥ����פβ��ھ��ʤǤ���<br />\r\n�����㤬��CD��DVD�Τ褦�ʼ��ΤΤ��뾦�ʤ������оݤȤ��Ƥ����Τ��Ф������ξ��ʤϼ��ΤΤ��뾦�ʡ�CD�ˤȥ�������ɾ��ʡ�mp3�ե�����ˤΤɤ��餫����ǹ����Ǥ�������Ǥ���<br />\r\nmp3�ե��������������ϡ�������ޥ��ڡ��������������ɤǤ���褦�ˤʤ�ޤ���\r\n\r\n��������۾��ʾ���<br />\r\n��[����������뾦��l]���Ϥ��������轻��򥹥��å�<br />\r\n��[�������̵��]�����̾��ʤȥ�������ɾ��ʤΥ���ӥ͡������������轻�����Ͽ��ɬ�פǤ���<br /><br />\r\n\r\n�ڥ��ץ����°��������ۥ��ץ����̾��\"�ե��������\"<br />\r\n��[��������ɾ��ʥե�����̾]��\r\n��-\"mp3�ʥ�������ɾ��ʡ�\" ���ץ����ˤΤߡ�ms_word_sample.zip<br />\r\n��-\"CD��\"���ץ���󡧡����ꤷ�ʤ���<br />\r\n��[ͭ������(��)]��7 ������<br />\r\n��[�����������ɿ�]: 5 �ʲ��<br /><br />\r\n\r\nNOTE1��<br />\r\n���ļԤ�������ʸ��[��ʸ�������ơ�����]��\"��λ\"�ˤ���ȡ�<br />\r\n��ʸ�ԤΥޥ��ڡ����ˤ����ƥ�������ɤǤ�����֤ˤʤ�ޤ���<br /><br />\r\n\r\nNOTE2��<br />\r\n��������ɥե�����ϡ����餫����<br />\r\n���ʥ���å����֥ǥ��쥯�ȥ��/download\r\n�۲���FTP���åץ��ɤ��Ƥ����ޤ���<br /><br />\r\n\r\n\r\nNOTE3��<br />\r\n��Product - Music�פϲ��ڡʡ������˾��ʤ˺�Ŭ���������ʥ����פǤ���<br /><br />\r\n\r\n�������ʥ����פǾ�����Ͽ����ȡ�<br />\r\n�������ƥ�����<br />\r\n���쥳���ɲ��<br />\r\n�����ڥ�����<br />\r\n�ʤɤξ���򰷤����Ȥ��Ǥ���<br /><br />\r\n\r\n����ˡ��ߥ塼���å�����åס�mp3�ե��������ˤγ�����Ƥ���ǽ�ʤɡ����̤����ʥ����פ����������٤�Ǥ��ޤ���<br /><br />\r\n\r\n�ڥ��ץ����°��������ۥ��ץ����̾��\"�ޥ˥奢��\"<br />\r\n��[��������ɾ��ʥե�����̾]��<br />\r\n��-\"PDF�ե�����\"���ץ���� pdf_sample.zip<br />\r\n��-\"Word�ե�����\" ���ץ����ms_word_sample.zip<br />\r\n��[ͭ������(��)]��7 ������<br />\r\n��[�����������ɿ�]: 5 �ʲ��<br /><br />\r\n\r\nNOTE1��<br />\r\n���ļԤ�������ʸ��[��ʸ�������ơ�����]��\"��λ\"�ˤ���ȡ�<br />\r\n��ʸ�ԤΥޥ��ڡ����ˤ����ƥ�������ɤǤ�����֤ˤʤ�ޤ���<br /><br />\r\n\r\nNOTE2��<br />\r\n��������ɥե�����ϡ����餫����<br />\r\n���ʥ���å����֥ǥ��쥯�ȥ��/download<br />\r\n�۲���FTP���åץ��ɤ��Ƥ����ޤ���<br />','',4),(217,1,'Sample of Product Free Shipping Type','<p>Product Free Shipping can be setup to highlight the Free Shipping aspect of the product. <br /><br />These pages include a Free Shipping Image on them. <br /><br />You can define the ALWAYS_FREE_SHIPPING_ICON in the language file. This can be Text, Image, Text/Image Combo or nothing. <br /><br />The weight does not matter on Always Free Shipping if you set Always Free Shipping to Yes. <br /><br />Be sure to have the Free Shipping Module Turned on! Otherwise, if this is the only product in the cart, it will not be able to be shipped. <br /><br />Notice that this is defined with a weight of 5lbs. But because of the Always Free Shipping being set to Y there will be no shipping charges for this product. <br /><br />You do not have to use the Product Free Shipping product type just to use Always Free Shipping. But the reason you may want to do this is so that the layout of the Product Free Shipping product info page can be layout specifically for the Free Shipping aspect of the product. <br /><br />This includes a READONLY attribute for Option Name: Shipping and Option Value: Free Shipping Included. READONLY attributes do not show on the options for the order.</p>','',0),(217,2,'����̵�������׾��ʤ���','�����Ǥϡ����ʥ����פ��뤤�ϥ��ƥ����[Product - Free Shipping]�����פˤ������Τդ�ޤ����������ޤ���<br /><br />\r\n\r\n���ξ��ʤν�°���륫�ƥ���ϡ�[Product - Free Shipping]���ʥ����סʰʲ�������̵�������ס˸�������ꤵ��Ƥ��ޤ������Υ��ƥ����۲��ǿ��������ʤ���Ͽ����ȡ�����̵�������פξ��ʤȤ�����Ͽ����ޤ���<br /><br />\r\n\r\n����̵�������פξ��ʤϡ���ǽŪ�ˤϰ��̤ξ��ʤȤ����ޤ��󤬡����餫����[�������̵��]�ե饰��\"�Ϥ�\"�����ꤵ��Ƥ��ޤ���<br /><br /><br />\r\n\r\n����̵���ξ��ʤˤϡ�����̵�����ץޡ������Ĥ��ƥϥ��饤��ɽ������ޤ���<br /><br />\r\n\r\n[�������̵��]�ե饰��\"�Ϥ�\"�ʤ顢���ʽ��̤˴ط��ʤ����������̵���Ȥʤ�ޤ���<br /><br />\r\n�ʤ��������⥸�塼��Ρ�������̵���ץ⥸�塼���ͭ���ˤ��Ƥ������ȡ�����ʤ��ȡ������Ȥ����줿����̵�����ʤ��������Ǥ��ʤ��ʤäƤ��ޤ��ޤ���<br /><br />\r\n\r\nNOTE:<br />\r\n����̵���ˤʤ뤫�ɤ�����Ƚ�����5lbs����2Kg���ˤǤ���������[�������̵��]�ե饰��\"�Ϥ�\"�ˤʤäƤ���ȡ����Τ������ͤˤ�����餺������̵���Ǥ���<br /><br />\r\n\r\nNOTE��<br />\r\nLanguage file��Ρ�[ALWAYS_FREE_SHIPPING_ICON] �ѿ����ѹ����뤳�Ȥǡ�����̵���λ��Τդ�ޤ��ʥƥ����Ȥ�ɽ�����롿���᡼��������ɽ�����ƥ����ȤȲ������Ȥ߹�碌��ɽ�����ʤˤ�ɽ�����ʤ��ˤ�����Ǥ��ޤ���<br /><br />','',7),(218,1,'Free Ship & Payment Virtual','Product Price is set to 0  <br /><br />    Payment weight is set to 2 ...  <br /><br />    Virtual is ON ... this will skip shipping address  <br /><br />','',0),(218,2,'����3��̵�����ʡ�����̵�����������轻����������','���ʲ��ʤ�0�ߡ�̵�����ʡˤǡ����ʽ��̤�2Kg�ξ��ʤǤ������С�����뾦�ʰ��������ꤷ�����ᡢ����̵���Ǥ��Ϥ���ν������Ϥ򥹥��åפ��ޤ���<br />����ϰ츫�Լ���������˸����ޤ������㤨�Ф��Ϥ����桼����Ͽ����˸��ꤷ������¾�ν���ϻ���Ǥ��ʤ��˾��ʤɤ����Ѥ��ͤ����ޤ���<br />�ʤ���Ʊ����������¾�ξ��ʤ��٤Ƥ��ǥ⾦�ʤǤ���Ȥ�������������ȯ�����ޤ���<br /><br /><br /><br />���������<br /><br />��̵�����ʡ� �Ϥ�<br /><br />�����ʲ��ʡ� 0��<br /><br />�����С�����뾦�ʡ����Ϥ��������轻��򥹥��å�<br /><br />���������̵���������������̾�������Ŭ��<br />','',1),(224,1,'FREESHIP3','','',0),(224,2,'��3������̵���ʽ��̡ᣰKg�ξ��ʡ�','��3������̵���ʽ��̤�0Kg�ξ��ʡ�\r\n����ޤǤ�2��Ǥϡ�[�������̵��]�ե饰��\"�Ϥ�\"�����ꤹ�뤳�Ȥˤ��������̵�����ʤȤ��Ƽ�갷������򸫤Ƥ��ޤ�����<br /><br />\r\n������Ф��ơ������ǤϽ��̤�0�Ǥ����̤Ȥ���������̵���ˤʤ�����󼨤��ޤ���<br /><br />\r\n\r\n�����Ǥξ��ʽ��̤�0�Ǥ����ޤ����ץ���󥫥顼\"�ۥ磻��\"���ɲý��̤�0�Ǥ��Τǡ��ۥ磻�ȹ�������������̵���ˤʤ�ޤ���\r\n�����������������¾������ͭ�����ʤ����äƤ��ʤ����ȡ�\r\n\r\n����\"�����\"�Υ��ץ������̤�20Kg����ޤ������äơ�������������������̵���ˤʤ�ޤ���\r\n\r\n��������۾��ʾ���\r\n��[�������̵��]�����������̾�������Ŭ��\r\n��[���ʽ���]��0��Kg��\r\n\r\n��������۾��ʥ��ץ����°��\r\n��\"�ۥ磻��\"��[����]��0��Kg��\r\n��\"�����\"��[����]��20��Kg��','',6),(226,1,'Multiple Download','<p>This product is set up to have multiple downloads.</p><p>The Product Price is $49.99</p><p>The attributes are setup with two Option Names, one for each download to allow for two downloads at the same time.</p><p>The first Download is listed under:</p><p>Option Name: Version<br />Option Value: Download Windows - English<br />Option Value: Download Windows - Spanish<br />Option Value: DownloadMAC - English<br /></p><p>The second Download is listed under:</p><p>Option Name: Documentation<br />Option Value: PDF - English<br />Option Value:MS Word- English</p>','',0),(226,2,'��������ɾ������ʣ���ե������','�����ʣ���ե��������������ɾ��ʤ���Ǥ���<br /><br />\r\n�����Ǥϥ��ե����ΤȤ��Υޥ˥奢��򥻥åȤǥ�����������䤹������Ǥ������Τȥޥ˥奢�뤽�줾��Υե��������������ǡʾ��ʥ��ץ�������ʸ����ȡ�2�ե����뤬Ʊ���˥�������ɲ�ǽ�ˤʤ�ޤ���<br /><br />\r\n\r\n��������۾��ʾ���<br />\r\n��[����������뾦��l]���Ϥ��������轻��򥹥��å�<br />\r\n��[�������̵��]�����ξ��ʤ��������Ʊ������Product - Music�׾��ʥ����פβ��ھ��ʤǤ���<br />\r\n�����㤬��CD��DVD�Τ褦�ʼ��ΤΤ��뾦�ʤ������оݤȤ��Ƥ����Τ��Ф������ξ��ʤϼ��ΤΤ��뾦�ʡ�CD�ˤȥ�������ɾ��ʡ�mp3�ե�����ˤΤɤ��餫����ǹ����Ǥ�������Ǥ���<br />\r\nmp3�ե��������������ϡ�������ޥ��ڡ��������������ɤǤ���褦�ˤʤ�ޤ���\r\n\r\n��������۾��ʾ���<br />\r\n��[����������뾦��l]���Ϥ��������轻��򥹥��å�<br />\r\n��[�������̵��]�����̾��ʤȥ�������ɾ��ʤΥ���ӥ͡������������轻�����Ͽ��ɬ�פǤ���<br /><br />\r\n\r\n�ڥ��ץ����°��������ۥ��ץ����̾��\"�ե��������\"<br />\r\n��[��������ɾ��ʥե�����̾]��\r\n��-\"mp3�ʥ�������ɾ��ʡ�\" ���ץ����ˤΤߡ�ms_word_sample.zip<br />\r\n��-\"CD��\"���ץ���󡧡����ꤷ�ʤ���<br />\r\n��[ͭ������(��)]��7 ������<br />\r\n��[�����������ɿ�]: 5 �ʲ��<br /><br />\r\n\r\nNOTE1��<br />\r\n���ļԤ�������ʸ��[��ʸ�������ơ�����]��\"��λ\"�ˤ���ȡ�<br />\r\n��ʸ�ԤΥޥ��ڡ����ˤ����ƥ�������ɤǤ�����֤ˤʤ�ޤ���<br /><br />\r\n\r\nNOTE2��<br />\r\n��������ɥե�����ϡ����餫����<br />\r\n���ʥ���å����֥ǥ��쥯�ȥ��/download\r\n�۲���FTP���åץ��ɤ��Ƥ����ޤ���<br /><br />\r\n\r\n\r\nNOTE3��<br />\r\n��Product - Music�פϲ��ڡʡ������˾��ʤ˺�Ŭ���������ʥ����פǤ���<br /><br />\r\n\r\n�������ʥ����פǾ�����Ͽ����ȡ�<br />\r\n�������ƥ�����<br />\r\n���쥳���ɲ��<br />\r\n�����ڥ�����<br />\r\n�ʤɤξ���򰷤����Ȥ��Ǥ���<br /><br />\r\n\r\n����ˡ��ߥ塼���å�����åס�mp3�ե��������ˤγ�����Ƥ���ǽ�ʤɡ����̤����ʥ����פ����������٤�Ǥ��ޤ���<br /><br />\r\n\r\n�ڥ��ץ����°���������<br />\r\n�����ץ����̾��\"���ե�����\"�˴ؤ�<br />\r\n��[��������ɾ��ʥե�����̾]��<br />\r\n��-\"Windows(en)��\": win-en.zip<br />\r\n��-\"Windows(jp)��\": win-jp.zip<br />\r\n��-\"Mac(jp)��\"��mac-jp.zip<br />\r\n��[ͭ������(��)]��7 ������<br />\r\n��[�����������ɿ�]: 5 �ʲ��<br /><br />\r\n\r\n�����ץ����̾��\"�ޥ˥奢��\"�˴ؤ���<br />\r\n��[��������ɾ��ʥե�����̾]��<br />\r\n��-\"PDF�ե�����\"���ץ���� pdf_sample.zip<br />\r\n��-\"Word�ե�����\" ���ץ����ms_word_sample.zip<br />\r\n��[ͭ������(��)]��7 ������<br />\r\n��[�����������ɿ�]: 5 �ʲ��<br /><br />\r\n\r\n\r\nNOTE1��<br />\r\n���ļԤ�������ʸ��[��ʸ�������ơ�����]��\"��λ\"�ˤ���ȡ�<br />\r\n��ʸ�ԤΥޥ��ڡ����ˤ����ƥ�������ɤǤ�����֤ˤʤ�ޤ���<br /><br />\r\n\r\nNOTE2��<br />\r\n��������ɥե�����ϡ����餫����<br />\r\n���ʥ���å����֥ǥ��쥯�ȥ��/download<br />\r\n�۲���FTP���åץ��ɤ��Ƥ����ޤ���<br />','',3),(229,1,'CD and download file(mp3)','','',0),(229,2,'��������ɾ��ʤȥꥢ�뾦�ʤκ��ߡ�CD��mp3�ե������','�����ޤǤ�2�㤬��������ɾ��ʤΤߤǹ�������Ƥ����Τ��Ф������ξ��ʤϼ��ΤΤ��뾦�ʡ�CD�ˤȥ�������ɾ��ʡ�mp3�ե�����ˤ����ߤ���������Ǥ����桼���Ϲ������˹��ߤ����Τ�����ǥ���������ޤ���<br />\r\nmp3�ե��������������ϡ�������ޥ��ڡ��������������ɤǤ���褦�ˤʤ�ޤ���<br /><br />\r\n\r\n��������۾��ʾ���<br />\r\n��[����������뾦��l]���������������轻������Ϥ�ɬ��<br />\r\n��[�������̵��]�����̾��ʤȥ�������ɾ��ʤΥ���ӥ͡������������轻�����Ͽ��ɬ�פǤ���<br />\r\n��[����]��0��Kg�ˡ�����������ɾ��ʤξ�礬���뤿�ᥪ�ץ����°��¦�����ꤹ��<br /><br />\r\n\r\n�ڥ��ץ����°��������ۥ�ǥ���������<br />\r\n�����ץ����°����\"CD\"���ץ������Ф�<br />\r\n��[���ץ�������]��1��Kg��<br /><br />\r\n\r\n�����ץ����°����\"mp3�ʥ�������ɡ�\"���Ф�<br />\r\n��[���ץ�������]��0��Kg��<br />\r\n��[��������ɾ��ʥե�����̾]��help.mp3<br />\r\n��[ͭ������(��)]��7 ������<br />\r\n��[�����������ɿ�]: 5 �ʲ��<br /><br />\r\n\r\nNOTE1��<br />\r\n���ļԤ�������ʸ��[��ʸ�������ơ�����]��\"��λ\"�ˤ���ȡ�<br />\r\n��ʸ�ԤΥޥ��ڡ����ˤ����ƥ�������ɤǤ�����֤ˤʤ�ޤ���<br /><br />\r\n\r\nNOTE2��<br />\r\n��������ɥե�����ϡ����餫����<br />\r\n���ʥ���å����֥ǥ��쥯�ȥ��/download\r\n�۲���FTP���åץ��ɤ��Ƥ����ޤ���<br /><br />\r\n\r\n\r\nNOTE3��<br />\r\n���ξ��ʤξ��ʥ����פϡ�Product - Music�פǤ�����Product - Music�ץ����פϲ��ڡʡ������˾��ʤ˺�Ŭ���������ʥ����פǤ���<br /><br />\r\n\r\n�������ʥ����פǾ�����Ͽ����ȡ�<br />\r\n�������ƥ�����<br />\r\n���쥳���ɲ��<br />\r\n�����ڥ�����<br />\r\n�ʤɤξ���򰷤����Ȥ��Ǥ���<br /><br />\r\n\r\n����ˡ��ߥ塼���å�����åס�mp3�ե��������ˤγ�����Ƥ���ǽ�ʤɡ����̤����ʥ����פ����������٤�Ǥ��ޤ���','',2),(230,1,'DOC_GENERAL','Document General Type is used for Products that are actually Documents. These cannot be added to the cart but can be configured for the Document Sidebox. If your Document Sidebox is not showing, go to the Layout Controller and turn it on for your template.','',0),(230,2,'���̥ɥ�����ȡ������ʡˤ���','��������ʥ����פ�[Document - General]����Ͽ�����ɥ�����Ȥǡ����ɤ�Ǥ��뤳���[�ɥ�����Ȥ�����]���Τ�ΤǤ���<br /><br />\r\n\r\n[Document - General]�˻��ꤵ�줿�ɥ�����Ȥϡ������Ȥ�������ޤ��󡣤ޤ������侦�ʤǤϤʤ��Τǡ�[\r\n���ʷ���]�⤢��ޤ���<br /><br />\r\n\r\n���Τ����ˡ��ֽ���פ�̾�դ���줿���̤ʥ����ɥܥå����˷Ǻܤ���ޤ������ξ��ʥ����פϡ�ʸ���̤�ɥ�����ȤȤ��ơ����Υ����ȤΥ���饤��ޥ˥奢���FAQ�Ȥ��ƻȤ��ʤɤ����Ӥ��ͤ����ޤ���<br /><br />\r\n\r\n����������\r\n\r\n<p>WWW(World Wide Web)��, ��������CERN(������γ��ʪ�������)�ˤ�����, ����θ���Դ֤θ������̤ζ�ͭ��ٱ礹�뤳�Ȥ���Ū�Ȥ���, 1990ǯ��ʬ��������ϥ��ѥƥ����ȥ����ƥ�ι��ۤΤ���Υץ������Ȥˤ�ä���Ω���줿�����Υϥ��ѥƥ����ȤǤ�, �ƥ��������ϥƥ����Ȥν����ʬ�䤷�ƥΡ��ɤȤ���ñ�̤�ʬ��, �Ρ�����˥���(ü��)���������, ���󥫴֤δط��Ȥ��ƥϥ��ѥ�󥯤��ꤷ�Ƥ��롣</p> \r\n\r\n<p>WWW�Υץ������Ȥ��Ǥ��������, CERN�ˤ���������ޥ����Υ饤��⡼�ɥ֥饦�����Ѱդ��줿�����Ǥ��ä���, 1991ǯ�ˤ�CERN�ʳ��Ǥ�WWW�����Ѥ���ǽ�ˤʤ�, X������ɥ������ƥ��ѤΥ֥饦������ȯ���줿��1993ǯ�ˤʤ��, ����Υ���ؤ�MOSAIC��ȯɽ�����ʸ����β���ɽ������ǽ�ˤʤ�, Windows�Ǥ˲ä���MAC�Ǥ�ȯɽ���줿��1994ǯ��Netscape Navigator�Υ�꡼����, WWW����ȯŪ��ڤΤ��ä�����Ĥ���, ���줬����˥��󥿥ͥå����ѼԤ����䤹���Ȥˤʤä��� </p>\r\n\r\n<p>CERN�ǤΥϥ��ѥƥ����Ȥι�¤���ҵڤӤ��θ򴹼�³����, ��ȯ����ϸ������λ��ͤˤȤɤޤäƤ�����, WWW����ڤȶ��ˤ�����ɸ�ಽ�ؤΰռ�����ޤ�, IETF(Internet Engineering Task Force)�ˤ�����, HTML�ڤ�HTTP(Hypertext Transfer Protocol)�κ�ȥ��롼�פ���Ω������ܳ�Ū��ɸ�ಽ��Ȥ����Ϥ��줿��HTML 2.0��, IETF RFC1866[1]�Ȥ��Ƹ�ɽ����, ���θ�, HTML��ɸ�ಽ��Ȥ�, W3C(World Wide Web Consortium)�˰ܤ��줿�� </p>\r\n\r\n<p>W3C�Ǥν����HTML���Ǻ�Ȥ�, �֥饦���᡼�����ȼ��γ�ĥ��ۼ����ƥ�����������ޤ�¿���ε�ǽ������������ˤǹԤ�줿�����������θ�, HTML�������ʸ��������¤���Ҥθ���˰����ᤷ��, �����������ˤĤ��Ƥ��̤θ��ͼ����б�����Ȥ������ˤ���ή�Ȥʤ�, HTML 3.2[2], HTML 4.0[3]�ؤȲ��Ǥ���Ƥ�����</p>','',0),(232,1,'Product - Music type','The Product Music Type is specially designed for music media. This can offer a lot more flexibility than the Product','',0),(232,2,'Music�����׾���','��Product - Music�פϲ��ڡʡ������˾��ʤ˺�Ŭ���������ʥ����פǤ���<br /><br />\r\n\r\n�������ʥ����פǾ�����Ͽ����ȡ�<br />\r\n�������ƥ�����<br />\r\n���쥳���ɲ��<br />\r\n�����ڥ�����<br />\r\n�ʤɤξ���򰷤����Ȥ��Ǥ���<br /><br />\r\n\r\n����ˡ��ߥ塼���å�����åס�mp3�ե��������ˤγ�����Ƥ���ǽ�ʤɡ����̤����ʥ����פ����������٤�Ǥ��ޤ���','',0),(233,1,'Product - General type','','',0),(233,2,'CC��T�����','���ꥨ���ƥ��֡�����󥺥���T����ĤǤ���<br /><br /><br />�١�����USA����COTTON 100�󡢣�.1���󥹡��إӡ���������T����ġ� <br /><br />˭�٤ʥ��顼�Хꥨ�������ǿ͵� No.1��T����ĤǤ���<br /><br />�ɼ����ʲ֤��Τ�����ե������åȥ���˻��Ѥ��� <br /><br />��ʬ�ۼ����ɤ����եȤ�ȩ���꤬�ɤ��Τ���ħ�Ǥ���','http://www.creativecommons.jp/',0),(234,1,'TAXIN-1','','',1),(234,2,'���ʲ��ʤ��ǹ��ߡ����ǡˤǴ���������(1)','���ʲ��ʤ����ǡ��ǹ��߲��ʡˤǴ���������Ǥ���<br />\r\n���Ǥξ�硢2�ĤΤ����������ޤ��ʼ��������٤ƤߤƤ��������ˡ�<br />\r\n���Υ������ǤϾ��ʲ��ʤ����ǲ��ʤ����Ϥ����Ǽ��̤�֤ʤ��פˤ��Ƥ��ޤ�<br /><br />\r\n\r\n[�Ǽ���]��ʤ��˻��ꤹ��ȡ����ʲ��ʡʥͥåȡˡᾦ�ʲ��ʡʥ����ˤˤʤꡢ���ϳۤ����Τޤ�ɽ������ޤ������ץ������ʤˤĤ��Ƥ�Ʊ�ͤ����ϳۤ����Τޤ޻Ȥ��ޤ���<br /><br />\r\n\r\n�����åȡ�<br />\r\n��������ʬ����褻����ʤ��Τǡ�4,980�ߤʤɾ���奦�����ɤ�����ɽ���ˤ�������硢���椷�䤹����<br /><br />\r\n���ǥ��åȡ�<br />\r\n��������Ψ���Ѥ�ä��顢���оݾ��ʤˤĤ��ư�İ�ĸ�ľ����ɬ�ס�<br />\r\n������Ū�ˤ��ǹ��߲��ʥ١����Ǵ������뤳�Ȥˤʤ�ΤǷ���������ݤ��⡩��<br /><br />\r\n\r\n������������ǤǴ������롧<br />\r\n��[�Ǽ���]����-- �ʤ� --<br />\r\n��[���ʲ��ʡʥͥåȡ�]��10000�� ���ǹ��߲��ʤ����Ϥ����<br /><br />\r\n\r\n��������۾��ʥ��ץ����°��<br />\r\n��[���ץ�������] ��åɡʡ�0/�ɲ�����ʤ��ˡ��ۥ磻�ȡʡ�1000�ߡˡ��������ʡ�2000�ߡ�','',0),(156,1,'SALE10%OFF-1','','',0),(157,1,'SALE10%OFF-2','','',0),(158,1,'SALE10%OFF-3','','',0),(159,1,'SALE500yenOFF-1','','',0),(160,1,'SALE500yenOFF-2','','',0),(161,1,'SALE500yenOFF-3','','',0),(162,1,'SALE set8000yen-1','','',0),(163,1,'SALE set8000yen-2','','',0),(164,1,'SALE set8000yen-3','','',0),(165,1,'SPECIAL1-1','','',0),(166,1,'SPECIAL2-1','','',0),(167,1,'SPECIAL2-2','','',0),(168,1,'SPECIAL2-3','','',0),(169,1,'SPECIAL3','','',0),(170,1,'SALE_ETC1','','',0),(171,1,'SALE_ETC2','','',0),(172,1,'NOSALE','','',0),(173,1,'SALE_SPECIAL1-1','','',0),(174,1,'SALE_SPECIAL1-2','','',0),(175,1,'SALE_SPECIAL1-3','','',0),(176,1,'SALE_SPECIAL2-1','','',0),(177,1,'SALE_SPECIAL2-2','','',0),(178,1,'SALE_SPECIAL2-3','','',0),(179,1,'SALE_SPECIAL3-1','','',0),(180,1,'SALE_SPECIAL3-2','','',0),(181,1,'SALE_SPECIAL3-3','','',0);
/*!40000 ALTER TABLE `products_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_discount_quantity`
--

DROP TABLE IF EXISTS `products_discount_quantity`;
CREATE TABLE `products_discount_quantity` (
  `discount_id` int(4) NOT NULL default '0',
  `products_id` int(11) NOT NULL default '0',
  `discount_qty` float NOT NULL default '0',
  `discount_price` decimal(15,4) NOT NULL default '0.0000',
  KEY `idx_id_qty_zen` (`products_id`,`discount_qty`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `products_discount_quantity`
--

LOCK TABLES `products_discount_quantity` WRITE;
/*!40000 ALTER TABLE `products_discount_quantity` DISABLE KEYS */;
INSERT INTO `products_discount_quantity` VALUES (2,182,20,'20.0000'),(1,182,10,'10.0000'),(3,102,50,'25.0000'),(2,102,20,'20.0000'),(1,102,10,'10.0000'),(3,103,50,'2000.0000'),(2,103,20,'1500.0000'),(1,103,10,'1000.0000'),(3,104,50,'8000.0000'),(2,104,20,'9000.0000'),(1,104,10,'9500.0000'),(3,110,50,'25.0000'),(2,110,20,'20.0000'),(1,110,10,'10.0000'),(1,111,10,'10.0000'),(2,111,20,'20.0000'),(3,111,50,'25.0000'),(3,112,50,'25.0000'),(2,112,20,'20.0000'),(1,112,10,'10.0000'),(3,113,50,'25.0000'),(2,113,20,'20.0000'),(1,113,10,'10.0000'),(3,182,50,'25.0000');
/*!40000 ALTER TABLE `products_discount_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_notifications`
--

DROP TABLE IF EXISTS `products_notifications`;
CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL default '0',
  `customers_id` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`products_id`,`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `products_notifications`
--

LOCK TABLES `products_notifications` WRITE;
/*!40000 ALTER TABLE `products_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_options`
--

DROP TABLE IF EXISTS `products_options`;
CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `products_options_name` varchar(32) NOT NULL default '',
  `products_options_sort_order` int(11) NOT NULL default '0',
  `products_options_type` int(5) NOT NULL default '0',
  `products_options_length` smallint(2) NOT NULL default '32',
  `products_options_comment` varchar(64) default NULL,
  `products_options_size` smallint(2) NOT NULL default '32',
  `products_options_images_per_row` int(2) default '5',
  `products_options_images_style` int(1) default '0',
  `products_options_rows` smallint(2) NOT NULL default '1',
  PRIMARY KEY  (`products_options_id`,`language_id`),
  KEY `idx_lang_id_zen` (`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `products_options`
--

LOCK TABLES `products_options` WRITE;
/*!40000 ALTER TABLE `products_options` DISABLE KEYS */;
INSERT INTO `products_options` VALUES (1,1,'size',1,0,32,NULL,32,0,0,0),(1,2,'������',1,0,32,NULL,32,0,0,0),(2,1,'size for kids',2,0,32,NULL,32,0,0,0),(2,2,'�������ʥ��å���',2,0,32,NULL,32,0,0,0),(3,1,'color',100,2,32,'',32,0,0,0),(3,2,'���顼',100,2,32,'���顼�����򤷤Ƥ�������',32,5,5,0),(4,1,'Line1',500,1,80,'Enter your text up to 80 characters, punctuation and spaces.',60,5,0,1),(4,2,'̾�����1��',500,1,80,'1���ܤ������ʸ�������Ϥ��Ƥ�������������40ʸ���ޤǡˡ�',60,5,0,1),(5,1,'Line2',510,1,80,'Enter your text up to 80 characters, punctuation and spaces.',60,5,0,1),(5,2,'̾�����2��',510,1,80,'2���ܤ������ʸ�������Ϥ��Ƥ�������������40ʸ���ޤǡˡ�',60,5,0,1),(6,1,'How to care, materials',600,5,32,'',32,0,0,0),(6,2,'�Ǻ�Ȥ���������ˡ',600,5,32,'',32,5,0,0),(7,1,'Gift',700,3,32,NULL,32,0,0,0),(7,2,'���եȥ��ץ����',700,3,32,NULL,32,0,0,0),(8,1,'Size(for chckbox)',800,3,32,NULL,32,0,0,0),(8,2,'����������͡����å���',800,3,32,NULL,32,0,0,0),(9,1,'',0,0,32,NULL,32,0,0,0),(9,2,'����ñ��',900,0,32,NULL,32,0,0,0),(10,1,'',0,2,32,'',32,0,0,0),(10,2,'����ñ��(radio)',1000,2,32,'',32,0,0,0),(11,1,'wallpaper-size',2000,0,32,NULL,32,0,0,0),(11,2,'�ɻ極����',2000,0,32,NULL,32,0,0,0),(12,1,'print',2100,2,32,'',32,0,0,0),(12,2,'���ꥸ�ʥ�ץ���',2100,2,32,'',32,0,0,0),(13,1,'Package',2200,2,32,NULL,32,0,0,0),(13,2,'�ѥå�����',2200,2,32,NULL,32,0,0,0),(14,1,'guarantee',2300,2,32,NULL,32,0,0,0),(14,2,'�ݾڥ����ӥ�',2300,2,32,NULL,32,0,0,0),(15,1,'File Type(1)',3000,0,32,'',32,0,0,0),(15,2,'�ޥ˥奢��',3000,0,32,'',32,0,0,0),(16,1,'File Type(2)',3100,0,32,'',32,0,0,0),(16,2,'���ե�����',3100,0,32,'',32,0,0,0),(17,1,'Media Type',4000,0,32,'',32,0,0,0),(17,2,'��ǥ���������',4000,0,32,'',32,0,0,0),(18,1,'Attach file',5000,4,32,'',32,0,0,0),(18,2,'�����ǡ���ź��',5000,4,32,'',32,0,0,0),(19,1,'test',0,0,32,NULL,32,0,0,0),(19,2,'�ƥ���',0,0,32,NULL,32,0,0,0);
/*!40000 ALTER TABLE `products_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_options_types`
--

DROP TABLE IF EXISTS `products_options_types`;
CREATE TABLE `products_options_types` (
  `products_options_types_id` int(11) NOT NULL default '0',
  `products_options_types_name` varchar(32) default NULL,
  PRIMARY KEY  (`products_options_types_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis COMMENT='Track products_options_types';

--
-- Dumping data for table `products_options_types`
--

LOCK TABLES `products_options_types` WRITE;
/*!40000 ALTER TABLE `products_options_types` DISABLE KEYS */;
INSERT INTO `products_options_types` VALUES (0,'Dropdown'),(1,'Text'),(2,'Radio'),(3,'Checkbox'),(4,'File'),(5,'Read Only');
/*!40000 ALTER TABLE `products_options_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_options_values`
--

DROP TABLE IF EXISTS `products_options_values`;
CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `products_options_values_name` varchar(64) NOT NULL default '',
  `products_options_values_sort_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_options_values_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `products_options_values`
--

LOCK TABLES `products_options_values` WRITE;
/*!40000 ALTER TABLE `products_options_values` DISABLE KEYS */;
INSERT INTO `products_options_values` VALUES (0,1,'TEXT',0),(0,2,'TEXT',0),(1,1,'Large',30),(1,2,'�̥�����',30),(2,1,'Midium',20),(2,2,'�ͥ�����',20),(3,1,'Small',10),(3,2,'�ӥ�����',10),(4,1,'red',110),(4,2,'��å�',110),(5,1,'yellow',120),(5,2,'������',120),(15,1,'COTTON 100��',600),(7,1,'blue',130),(7,2,'�֥롼',130),(8,1,'blank',140),(8,2,'�֥�å�',140),(9,1,'',210),(9,2,'110cm',210),(10,1,'',220),(10,2,'120cm',220),(11,1,'',230),(11,2,'130cm',230),(12,1,'140cm',240),(12,2,'140cm',240),(13,1,'150cm',250),(13,2,'150cm',250),(14,1,'white',100),(14,2,'�ۥ磻��',100),(15,2,'�� 100��',600),(16,1,'',610),(16,2,'��.1����',610),(17,1,'',620),(17,2,'�������ʼ��ή�ˤޤ��ϼ�����',620),(18,1,'',630),(18,2,'���������油�ʡ�160��ˤޤ�',630),(19,1,'X-Large',40),(19,2,'XL������',40),(20,1,'Select one...',50),(20,2,'�����򤯤�����������',50),(21,1,'Wrapping',700),(21,2,'���ե�����',700),(22,1,'Message Card',710),(22,2,'��å�����������',710),(23,1,'Prezent Keyholder',720),(23,2,'���ꥸ�ʥ륭���ۥ����',720),(24,1,'S',800),(24,2,'�ӥ�����',800),(25,1,'M',810),(25,2,'�ͥ�����',810),(26,1,'L',820),(26,2,'�̥�����',820),(27,1,'110cm',830),(27,2,'110cm',830),(28,1,'120cm',840),(28,2,'120cm',840),(29,1,'130cm',850),(29,2,'130cm',850),(30,1,'140cm',860),(30,2,'140cm',860),(31,1,'150cm',870),(31,2,'150cm',870),(32,1,'m',900),(32,2,'�᡼�ȥ��m��',900),(33,1,'cm',910),(33,2,'������᡼�ȥ��cm��',910),(34,1,'m',1000),(34,2,'�᡼�ȥ��m��',1000),(35,1,'cm',1010),(35,2,'������᡼�ȥ��cm��',1010),(36,1,'midium',2000),(36,2,'��500px',2000),(37,1,'Large',2010),(37,2,'��1024px',2010),(38,1,'orange',150),(38,2,'�����',150),(39,1,'print1',2100),(39,2,'�ץ���1��',2100),(40,1,'print2',2120),(40,2,'�ץ���2��',2120),(41,1,'',2130),(41,2,'�ץ���3��',2130),(42,1,'package5',2200),(42,2,'����ѥå���5�������',2200),(43,1,'package100',2210),(43,2,'��̳�ѥѥå���100�������',2210),(44,1,'none',2300),(44,2,'�ʤ�',2300),(45,1,'5 years',2310),(45,2,'5ǯ�ݾڡ��ݾ����Ͼ��ʤ�5��ʬ��',2310),(46,1,'20 years',2320),(46,2,'20ǯ�ݾڡ��ݾ����Ͼ��ʤ�15��ʬ��',2320),(47,2,'������ѡ�ɽ�����ʤ�20��˹���',2140),(47,1,'initial cost 20%',2140),(48,1,'white(NOT add to base price)',160),(48,2,'�ۥ磻�ȡʥ١������ʤ˴ޤ�ʤ���',160),(49,1,'white (add to base price)',170),(49,2,'�ۥ磻�ȡʥ١������ʤ˴ޤ���',170),(50,1,'orange',180),(50,2,'����󥸡ʥ١������ʤ˴ޤ���',180),(51,1,'orange(NOT add to base price)',190),(51,2,'����󥸡ʥ١������ʤ˴ޤ�ʤ���',190),(52,1,'Adobe PDF',3000),(52,2,'PDF�ե�����',3000),(53,1,'microsoft Word',3010),(53,2,'Word�ե�����',3010),(54,1,'Windows(en)',3100),(54,2,'Windows(en)��',3100),(55,1,'Windows(jp)',3110),(55,2,'Windows(jp)��',3110),(56,1,'Mac(jp)',3120),(56,2,'Mac(jp)��',3120),(57,1,'CD',4000),(57,2,'CD',4000),(58,1,'mp3',4010),(58,2,'mp3�ʥ�������ɾ��ʡ�',4010),(59,1,'gold',160),(59,2,'�������',160);
/*!40000 ALTER TABLE `products_options_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_options_values_to_products_options`
--

DROP TABLE IF EXISTS `products_options_values_to_products_options`;
CREATE TABLE `products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL auto_increment,
  `products_options_id` int(11) NOT NULL default '0',
  `products_options_values_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_options_values_to_products_options_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `products_options_values_to_products_options`
--

LOCK TABLES `products_options_values_to_products_options` WRITE;
/*!40000 ALTER TABLE `products_options_values_to_products_options` DISABLE KEYS */;
INSERT INTO `products_options_values_to_products_options` VALUES (1,1,1),(2,1,2),(3,1,3),(4,3,4),(5,3,5),(15,4,0),(7,3,7),(8,3,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,2,13),(14,3,14),(16,5,0),(17,6,15),(18,6,16),(19,6,17),(20,6,18),(21,1,19),(22,1,20),(23,7,21),(24,7,22),(25,7,23),(26,8,24),(27,8,25),(28,8,26),(29,8,27),(30,8,28),(31,8,29),(32,8,30),(33,8,31),(34,9,32),(35,9,33),(36,10,34),(37,10,35),(38,11,36),(39,11,37),(40,3,38),(41,12,39),(42,12,40),(43,12,41),(44,13,42),(45,13,43),(46,14,44),(47,14,45),(48,14,46),(50,12,47),(51,3,48),(52,3,49),(53,3,50),(54,3,51),(55,15,52),(56,15,53),(57,16,54),(58,16,55),(59,16,56),(60,17,57),(61,17,58),(62,18,0),(63,3,59);
/*!40000 ALTER TABLE `products_options_values_to_products_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_point_rate`
--

DROP TABLE IF EXISTS `products_point_rate`;
CREATE TABLE `products_point_rate` (
  `products_id` int(11) NOT NULL default '0',
  `rate` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `products_point_rate`
--

LOCK TABLES `products_point_rate` WRITE;
/*!40000 ALTER TABLE `products_point_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_point_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_to_categories`
--

DROP TABLE IF EXISTS `products_to_categories`;
CREATE TABLE `products_to_categories` (
  `products_id` int(11) NOT NULL default '0',
  `categories_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_id`,`categories_id`),
  KEY `idx_cat_prod_id_zen` (`categories_id`,`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `products_to_categories`
--

LOCK TABLES `products_to_categories` WRITE;
/*!40000 ALTER TABLE `products_to_categories` DISABLE KEYS */;
INSERT INTO `products_to_categories` VALUES (1,2),(1,21),(2,4),(2,21),(3,2),(4,2),(5,4),(6,5),(6,21),(7,7),(8,8),(9,5),(10,8),(11,5),(11,21),(12,7),(12,80),(13,8),(13,27),(14,5),(14,80),(15,9),(16,10),(17,11),(17,27),(18,8),(19,12),(20,7),(21,13),(21,21),(22,13),(22,21),(23,14),(24,14),(24,96),(25,11),(26,7),(26,30),(27,12),(28,7),(29,14),(29,21),(30,7),(31,14),(32,14),(33,13),(34,13),(35,9),(35,27),(36,10),(37,9),(38,9),(38,21),(38,31),(39,10),(40,9),(41,10),(42,13),(43,12),(44,12),(44,30),(45,13),(46,13),(47,11),(48,13),(48,21),(49,13),(49,96),(50,15),(51,16),(52,7),(53,16),(53,30),(54,12),(54,21),(55,7),(55,29),(56,12),(57,17),(57,80),(57,95),(58,12),(58,21),(59,17),(60,12),(60,21),(61,17),(62,16),(63,12),(63,80),(64,16),(65,2),(65,29),(70,20),(71,20),(72,20),(73,20),(74,20),(75,20),(76,22),(77,22),(78,22),(79,22),(80,22),(81,22),(82,22),(83,22),(84,22),(85,22),(86,22),(87,22),(88,23),(89,23),(89,27),(90,23),(91,23),(92,40),(93,40),(95,40),(98,40),(99,41),(100,41),(101,41),(101,64),(102,45),(103,45),(104,45),(110,45),(111,45),(112,45),(113,45),(115,58),(116,58),(139,60),(140,60),(141,61),(142,62),(143,62),(144,63),(146,63),(151,63),(152,63),(152,64),(155,40),(156,67),(156,72),(157,67),(158,67),(159,68),(160,68),(161,68),(162,69),(163,69),(164,69),(165,70),(166,70),(167,70),(168,70),(169,70),(170,71),(171,71),(172,67),(172,72),(173,73),(174,73),(175,73),(176,74),(177,74),(178,74),(179,75),(180,75),(181,75),(182,45),(183,76),(184,76),(185,76),(187,78),(188,78),(189,78),(190,81),(191,81),(192,82),(193,82),(194,82),(195,82),(196,83),(197,83),(198,85),(199,85),(200,78),(201,86),(202,86),(203,86),(204,86),(205,87),(206,87),(207,87),(208,83),(209,89),(210,89),(211,89),(212,91),(213,91),(214,93),(215,93),(215,97),(217,79),(217,98),(218,40),(222,79),(223,79),(224,79),(225,100),(226,100),(227,101),(229,100);
/*!40000 ALTER TABLE `products_to_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_with_attributes_stock`
--

DROP TABLE IF EXISTS `products_with_attributes_stock`;
CREATE TABLE `products_with_attributes_stock` (
  `stock_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `stock_attributes` varchar(255) NOT NULL default '',
  `skumodel` varchar(255) NOT NULL default '',
  `quantity` float NOT NULL default '0',
  PRIMARY KEY  (`stock_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `products_with_attributes_stock`
--

LOCK TABLES `products_with_attributes_stock` WRITE;
/*!40000 ALTER TABLE `products_with_attributes_stock` DISABLE KEYS */;
INSERT INTO `products_with_attributes_stock` VALUES (1,90,'319','�ף�����',11);
/*!40000 ALTER TABLE `products_with_attributes_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_xsell`
--

DROP TABLE IF EXISTS `products_xsell`;
CREATE TABLE `products_xsell` (
  `ID` int(10) NOT NULL auto_increment,
  `products_id` int(10) unsigned NOT NULL default '1',
  `xsell_id` int(10) unsigned NOT NULL default '1',
  `sort_order` int(10) unsigned NOT NULL default '1',
  PRIMARY KEY  (`ID`),
  KEY `idx_products_id_xsell` (`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `products_xsell`
--

LOCK TABLES `products_xsell` WRITE;
/*!40000 ALTER TABLE `products_xsell` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_xsell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_version`
--

DROP TABLE IF EXISTS `project_version`;
CREATE TABLE `project_version` (
  `project_version_id` tinyint(3) NOT NULL auto_increment,
  `project_version_key` varchar(40) NOT NULL default '',
  `project_version_major` varchar(20) NOT NULL default '',
  `project_version_minor` varchar(20) NOT NULL default '',
  `project_version_patch1` varchar(20) NOT NULL default '',
  `project_version_patch2` varchar(20) NOT NULL default '',
  `project_version_patch1_source` varchar(20) NOT NULL default '',
  `project_version_patch2_source` varchar(20) NOT NULL default '',
  `project_version_comment` varchar(250) NOT NULL default '',
  `project_version_date_applied` datetime NOT NULL default '0001-01-01 01:01:01',
  PRIMARY KEY  (`project_version_id`),
  UNIQUE KEY `idx_project_version_key_zen` (`project_version_key`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ujis COMMENT='Database Version Tracking';

--
-- Dumping data for table `project_version`
--

LOCK TABLES `project_version` WRITE;
/*!40000 ALTER TABLE `project_version` DISABLE KEYS */;
INSERT INTO `project_version` VALUES (1,'Zen-Cart Main','1','3.0.2-l10n-jp-5','','','','','Fresh Installation','2009-11-19 12:39:40'),(2,'Zen-Cart Database','1','3.0.2-l10n-jp-5','','','','','Fresh Installation','2009-11-19 12:39:40');
/*!40000 ALTER TABLE `project_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_version_history`
--

DROP TABLE IF EXISTS `project_version_history`;
CREATE TABLE `project_version_history` (
  `project_version_id` tinyint(3) NOT NULL auto_increment,
  `project_version_key` varchar(40) NOT NULL default '',
  `project_version_major` varchar(20) NOT NULL default '',
  `project_version_minor` varchar(20) NOT NULL default '',
  `project_version_patch` varchar(20) NOT NULL default '',
  `project_version_comment` varchar(250) NOT NULL default '',
  `project_version_date_applied` datetime NOT NULL default '0001-01-01 01:01:01',
  PRIMARY KEY  (`project_version_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=ujis COMMENT='Database Version Tracking History';

--
-- Dumping data for table `project_version_history`
--

LOCK TABLES `project_version_history` WRITE;
/*!40000 ALTER TABLE `project_version_history` DISABLE KEYS */;
INSERT INTO `project_version_history` VALUES (1,'Zen-Cart Main','1','3.0.2','','Fresh Installation','2009-11-19 12:39:40'),(2,'Zen-Cart Database','1','3.0.2','','Fresh Installation','2009-11-19 12:39:40'),(3,'Zen-Cart Main','1','3.0.2-l10n-jp-1','','v1.3.0.2-l10n-jp-1','2009-11-19 12:39:40'),(4,'Zen-Cart Database','1','3.0.2-l10n-jp-1','','v1.3.0.2-l10n-jp-1','2009-11-19 12:39:40'),(5,'Zen-Cart Main','1','3.0.2-l10n-jp-2','','v1.3.0.2-l10n-jp-2','2009-11-19 12:39:40'),(6,'Zen-Cart Database','1','3.0.2-l10n-jp-2','','v1.3.0.2-l10n-jp-2','2009-11-19 12:39:40'),(7,'Zen-Cart Main','1','3.0.2-l10n-jp-3','','v1.3.0.2-l10n-jp-3','2009-11-19 12:39:40'),(8,'Zen-Cart Database','1','3.0.2-l10n-jp-3','','v1.3.0.2-l10n-jp-3','2009-11-19 12:39:40'),(9,'Zen-Cart Main','1','3.0.2-l10n-jp-4','','v1.3.0.2-l10n-jp-4','2009-11-19 12:39:40'),(10,'Zen-Cart Database','1','3.0.2-l10n-jp-4','','v1.3.0.2-l10n-jp-4','2009-11-19 12:39:40'),(11,'Zen-Cart Main','1','3.0.2-l10n-jp-5','','v1.3.0.2-l10n-jp-5','2009-11-19 12:39:40'),(12,'Zen-Cart Database','1','3.0.2-l10n-jp-5','','v1.3.0.2-l10n-jp-5','2009-11-19 12:39:40');
/*!40000 ALTER TABLE `project_version_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query_builder`
--

DROP TABLE IF EXISTS `query_builder`;
CREATE TABLE `query_builder` (
  `query_id` int(11) NOT NULL auto_increment,
  `query_category` varchar(40) NOT NULL default '',
  `query_name` varchar(80) NOT NULL default '',
  `query_description` text NOT NULL,
  `query_string` text NOT NULL,
  `query_keys_list` text NOT NULL,
  PRIMARY KEY  (`query_id`),
  UNIQUE KEY `query_name` (`query_name`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=ujis COMMENT='Stores queries for re-use in Admin email and report modules';

--
-- Dumping data for table `query_builder`
--

LOCK TABLES `query_builder` WRITE;
/*!40000 ALTER TABLE `query_builder` DISABLE KEYS */;
INSERT INTO `query_builder` VALUES (1,'email','All Customers','Returns all customers name and email address for sending mass emails (ie: for newsletters, coupons, GV\'s, messages, etc).','select customers_email_address, customers_firstname, customers_lastname from TABLE_CUSTOMERS order by customers_lastname, customers_firstname, customers_email_address',''),(2,'email,newsletters','All Newsletter Subscribers','Returns name and email address of newsletter subscribers','select customers_firstname, customers_lastname, customers_email_address from TABLE_CUSTOMERS where customers_newsletter = \'1\'',''),(3,'email,newsletters','Dormant Customers (>3months) (Subscribers)','Subscribers who HAVE purchased something, but have NOT purchased for at least three months.','select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o where c.customers_newsletter = \'1\' AND c.customers_id = o.customers_id and o.date_purchased < subdate(now(),INTERVAL 3 MONTH) GROUP BY c.customers_email_address order by c.customers_lastname, c.customers_firstname ASC',''),(4,'email,newsletters','Active customers in past 3 months (Subscribers)','Newsletter subscribers who are also active customers (purchased something) in last 3 months.','select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o where c.customers_newsletter = \'1\' AND c.customers_id = o.customers_id and o.date_purchased > subdate(now(),INTERVAL 3 MONTH) GROUP BY c.customers_email_address order by c.customers_lastname, c.customers_firstname ASC',''),(5,'email,newsletters','Active customers in past 3 months (Regardless of subscription status)','All active customers (purchased something) in last 3 months, ignoring newsletter-subscription status.','select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o WHERE c.customers_id = o.customers_id and o.date_purchased > subdate(now(),INTERVAL 3 MONTH) GROUP BY c.customers_email_address order by c.customers_lastname, c.customers_firstname ASC',''),(6,'email,newsletters','Administrator','Just the email account of the current administrator','select \'ADMIN\' as customers_firstname, admin_name as customers_lastname, admin_email as customers_email_address from TABLE_ADMIN where admin_id = $SESSION:admin_id',''),(7,'email','�ӥ�������������Ƥθܵ�','Returns all customers name and email address for sending mass emails (ie: for newsletters, coupons, GV\'s, messages, etc).','select c.customers_email_address, c.customers_firstname, c.customers_lastname from TABLE_CUSTOMERS c left join TABLE_VISITORS v on c.customers_id = v.visitors_id where v.visitors_id is null order by c.customers_lastname, c.customers_firstname, c.customers_email_address',''),(8,'email,newsletters','�ӥ�������������ƤΥ᡼��ޥ�������ɼ�','Returns name and email address of newsletter subscribers','select c.customers_firstname, c.customers_lastname, c.customers_email_address from TABLE_CUSTOMERS c left join TABLE_VISITORS v on c.customers_id = v.visitors_id where c.customers_newsletter = \'1\' and v.visitors_id is null',''),(9,'email,newsletters','�ӥ������������̲��θܵ� (������Ķ����ʸ) (�᡼��ޥ�������ɼԤΤ�)','Subscribers who HAVE purchased something, but have NOT purchased for at least three months.','select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c left join TABLE_VISITORS v on c.customers_id = v.visitors_id , TABLE_ORDERS o where c.customers_newsletter = \'1\' and c.customers_id = o.customers_id and o.date_purchased < subdate(now(),INTERVAL 3 MONTH) and v.visitors_id is null GROUP BY c.customers_email_address order by c.customers_lastname, c.customers_firstname ASC',''),(10,'email,newsletters','�ӥ����������������̤������ʸ�����ä���ȯ�ʸܵ� (�᡼��ޥ�������ɼԤΤ�)','Newsletter subscribers who are also active customers (purchased something) in last 3 months.','select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c left join TABLE_VISITORS v on c.customers_id = v.visitors_id, TABLE_ORDERS o where c.customers_newsletter = \'1\' AND c.customers_id = o.customers_id and o.date_purchased > subdate(now(),INTERVAL 3 MONTH) and v.visitors_id is null GROUP BY c.customers_email_address order by c.customers_lastname, c.customers_firstname ASC',''),(11,'email,newsletters','�ӥ����������������̤������ʸ�����ä���ȯ�ʸܵ� (�᡼��ޥ�������ɼԤǤʤ��Ȥ�)','All active customers (purchased something) in last 3 months, ignoring newsletter-subscription status.','select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c left join TABLE_VISITORS v on c.customers_id = v.visitors_id, TABLE_ORDERS o WHERE c.customers_id = o.customers_id and o.date_purchased > subdate(now(),INTERVAL 3 MONTH) and v.visitors_id is null GROUP BY c.customers_email_address order by c.customers_lastname, c.customers_firstname ASC','');
/*!40000 ALTER TABLE `query_builder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_artists`
--

DROP TABLE IF EXISTS `record_artists`;
CREATE TABLE `record_artists` (
  `artists_id` int(11) NOT NULL auto_increment,
  `artists_name` varchar(32) NOT NULL default '',
  `artists_image` varchar(64) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`artists_id`),
  KEY `idx_rec_artists_name_zen` (`artists_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `record_artists`
--

LOCK TABLES `record_artists` WRITE;
/*!40000 ALTER TABLE `record_artists` DISABLE KEYS */;
INSERT INTO `record_artists` VALUES (1,'The Russ Tippins Band','sooty.jpg','2007-01-26 10:42:36',NULL);
/*!40000 ALTER TABLE `record_artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_artists_info`
--

DROP TABLE IF EXISTS `record_artists_info`;
CREATE TABLE `record_artists_info` (
  `artists_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `artists_url` varchar(255) NOT NULL default '',
  `url_clicked` int(5) NOT NULL default '0',
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`artists_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `record_artists_info`
--

LOCK TABLES `record_artists_info` WRITE;
/*!40000 ALTER TABLE `record_artists_info` DISABLE KEYS */;
INSERT INTO `record_artists_info` VALUES (1,1,'',0,NULL),(1,2,'',0,NULL);
/*!40000 ALTER TABLE `record_artists_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_company`
--

DROP TABLE IF EXISTS `record_company`;
CREATE TABLE `record_company` (
  `record_company_id` int(11) NOT NULL auto_increment,
  `record_company_name` varchar(32) NOT NULL default '',
  `record_company_image` varchar(64) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`record_company_id`),
  KEY `idx_rec_company_name_zen` (`record_company_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `record_company`
--

LOCK TABLES `record_company` WRITE;
/*!40000 ALTER TABLE `record_company` DISABLE KEYS */;
INSERT INTO `record_company` VALUES (1,'HMV Group',NULL,'2007-01-26 10:43:16','2007-01-26 10:43:59');
/*!40000 ALTER TABLE `record_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_company_info`
--

DROP TABLE IF EXISTS `record_company_info`;
CREATE TABLE `record_company_info` (
  `record_company_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `record_company_url` varchar(255) NOT NULL default '',
  `url_clicked` int(5) NOT NULL default '0',
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`record_company_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `record_company_info`
--

LOCK TABLES `record_company_info` WRITE;
/*!40000 ALTER TABLE `record_company_info` DISABLE KEYS */;
INSERT INTO `record_company_info` VALUES (1,1,'www.hmvgroup.com',0,NULL),(1,2,'www.hmvgroup.com',0,NULL);
/*!40000 ALTER TABLE `record_company_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `customers_id` int(11) default NULL,
  `customers_name` varchar(64) NOT NULL default '',
  `reviews_rating` int(1) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  `reviews_read` int(5) NOT NULL default '0',
  `status` int(1) NOT NULL default '1',
  PRIMARY KEY  (`reviews_id`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_customers_id_zen` (`customers_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,19,0,'Bill Smith',5,'2003-12-23 03:18:19','0001-01-01 00:00:00',11,1);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews_description`
--

DROP TABLE IF EXISTS `reviews_description`;
CREATE TABLE `reviews_description` (
  `reviews_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `reviews_text` text NOT NULL,
  PRIMARY KEY  (`reviews_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `reviews_description`
--

LOCK TABLES `reviews_description` WRITE;
/*!40000 ALTER TABLE `reviews_description` DISABLE KEYS */;
INSERT INTO `reviews_description` VALUES (1,1,'This really is a very funny but old movie!');
/*!40000 ALTER TABLE `reviews_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salemaker_sales`
--

DROP TABLE IF EXISTS `salemaker_sales`;
CREATE TABLE `salemaker_sales` (
  `sale_id` int(11) NOT NULL auto_increment,
  `sale_status` tinyint(4) NOT NULL default '0',
  `sale_name` varchar(30) NOT NULL default '',
  `sale_deduction_value` decimal(15,4) NOT NULL default '0.0000',
  `sale_deduction_type` tinyint(4) NOT NULL default '0',
  `sale_pricerange_from` decimal(15,4) NOT NULL default '0.0000',
  `sale_pricerange_to` decimal(15,4) NOT NULL default '0.0000',
  `sale_specials_condition` tinyint(4) NOT NULL default '0',
  `sale_categories_selected` text,
  `sale_categories_all` text,
  `sale_date_start` date NOT NULL default '0001-01-01',
  `sale_date_end` date NOT NULL default '0001-01-01',
  `sale_date_added` date NOT NULL default '0001-01-01',
  `sale_date_last_modified` date NOT NULL default '0001-01-01',
  `sale_date_status_change` date NOT NULL default '0001-01-01',
  PRIMARY KEY  (`sale_id`),
  KEY `idx_sale_status_zen` (`sale_status`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `salemaker_sales`
--

LOCK TABLES `salemaker_sales` WRITE;
/*!40000 ALTER TABLE `salemaker_sales` DISABLE KEYS */;
INSERT INTO `salemaker_sales` VALUES (1,1,'10%OFF','10.0000',1,'0.0000','0.0000',2,'64,67',',64,67,','0001-01-01','0001-01-01','2007-01-17','2007-01-18','2007-01-17'),(2,1,'500��OFF','500.0000',0,'0.0000','0.0000',2,'68',',68,','0001-01-01','0001-01-01','2007-01-18','2007-01-19','2007-01-18'),(3,1,'������8000��','8000.0000',2,'0.0000','0.0000',2,'69',',69,','0001-01-01','0001-01-01','2007-01-18','2007-01-19','2007-01-18'),(4,1,'10��OFF���ò��ܥ������','10.0000',1,'0.0000','0.0000',2,'73',',73,','0001-01-01','0001-01-01','2007-01-18','2007-01-18','2007-01-18'),(5,1,'10��OFF�ʥ�����ͥ���','10.0000',1,'0.0000','0.0000',0,'74',',74,','0001-01-01','0001-01-01','2007-01-18','2007-01-18','2007-01-18'),(6,1,'10��OFF���ò�ͥ���','10.0000',1,'0.0000','0.0000',1,'75',',75,','0001-01-01','0001-01-01','2007-01-18','2007-01-18','2007-01-18'),(7,0,'10�󥻡�����֤Ȳ����Ӹ���','10.0000',1,'10000.0000','0.0000',2,'71',',71,','2007-01-15','2007-06-15','2007-01-18','2007-01-18','2009-11-19');
/*!40000 ALTER TABLE `salemaker_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `sesskey` varchar(32) NOT NULL default '',
  `expiry` int(11) unsigned NOT NULL default '0',
  `value` text NOT NULL,
  PRIMARY KEY  (`sesskey`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('vlrgcajqsgfh40o9t0j484u8p0',1258611692,'initiated|b:1;securityToken|s:32:\"95769cdc6642d6e213827ba34c206356\";language|s:8:\"japanese\";languages_id|s:1:\"2\";selected_box|s:13:\"configuration\";html_editor_preference_status|s:4:\"NONE\";admin_id|s:1:\"1\";messageToStack|s:0:\"\";ez_sort_order|i:0;'),('1s3847k7v95mulp6tt8ri8apv0',1258606448,'initiated|b:1;customers_host_address|s:11:\"pc100.local\";cartID|s:0:\"\";cart|O:12:\"shoppingCart\":9:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";s:8:\"physical\";s:18:\"free_shipping_item\";i:0;s:20:\"free_shipping_weight\";i:0;s:19:\"free_shipping_price\";i:0;s:9:\"observers\";a:0:{}}navigation|O:17:\"navigationHistory\":3:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:5:\"index\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";s:0:\"\";s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}s:9:\"observers\";a:0:{}}check_valid|s:4:\"true\";language|s:8:\"japanese\";languages_id|s:1:\"2\";languages_code|s:2:\"ja\";currency|s:3:\"JPY\";session_counter|b:1;customers_ip_address|s:13:\"192.168.0.100\";payment|N;'),('0mctk6taf62o3i7a97979gptd5',1258611628,'initiated|b:1;securityToken|s:32:\"6e2360e9c369ae3dc59a6857131544cd\";language|s:8:\"japanese\";languages_id|s:1:\"2\";selected_box|s:13:\"configuration\";html_editor_preference_status|s:4:\"NONE\";admin_id|s:1:\"1\";'),('6nc0cgc4p1bd9egvrer61cbta2',1258613511,'initiated|b:1;customers_host_address|s:11:\"pc115.local\";cartID|s:0:\"\";cart|O:12:\"shoppingCart\":9:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;s:18:\"free_shipping_item\";i:0;s:20:\"free_shipping_weight\";i:0;s:19:\"free_shipping_price\";i:0;s:9:\"observers\";a:0:{}}navigation|O:17:\"navigationHistory\":3:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:5:\"index\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";s:0:\"\";s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}s:9:\"observers\";a:0:{}}check_valid|s:4:\"true\";language|s:8:\"japanese\";languages_id|s:1:\"2\";languages_code|s:2:\"ja\";currency|s:3:\"JPY\";session_counter|b:1;customers_ip_address|s:13:\"192.168.0.115\";'),('plrojh5ohsao9vangt7abnil35',1258615872,'initiated|b:1;securityToken|s:32:\"d6a27db44802ff124655c6581449cfad\";language|s:8:\"japanese\";languages_id|s:1:\"2\";selected_box|s:13:\"configuration\";html_editor_preference_status|s:4:\"NONE\";admin_id|s:1:\"1\";'),('ouobdeu24crqf1mhl6ppupdh77',1258613025,'initiated|b:1;customers_host_address|s:25:\"FLH1Akz188.tky.mesh.ad.jp\";cartID|N;cart|O:12:\"shoppingCart\":9:{s:8:\"contents\";a:1:{s:36:\"190:e468d7a4871dca5f6c31f42a03a7c4a2\";a:2:{s:3:\"qty\";s:1:\"1\";s:10:\"attributes\";a:1:{i:3;s:1:\"4\";}}}s:5:\"total\";d:10500;s:6:\"weight\";d:0.25;s:6:\"cartID\";N;s:12:\"content_type\";s:8:\"physical\";s:18:\"free_shipping_item\";i:0;s:20:\"free_shipping_weight\";i:0;s:19:\"free_shipping_price\";i:0;s:9:\"observers\";a:0:{}}navigation|O:17:\"navigationHistory\":3:{s:4:\"path\";a:5:{i:0;a:4:{s:4:\"page\";s:12:\"product_info\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:11:\"products_id\";s:3:\"190\";s:17:\"number_of_uploads\";s:1:\"0\";s:6:\"action\";s:11:\"add_product\";}s:4:\"post\";a:5:{s:2:\"id\";a:1:{i:3;i:4;}s:13:\"cart_quantity\";s:1:\"1\";s:11:\"products_id\";s:3:\"190\";s:1:\"x\";s:3:\"111\";s:1:\"y\";s:2:\"24\";}}i:1;a:4:{s:4:\"page\";s:13:\"shopping_cart\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:17:\"number_of_uploads\";s:1:\"0\";}s:4:\"post\";a:0:{}}i:2;a:4:{s:4:\"page\";s:17:\"checkout_shipping\";s:4:\"mode\";s:3:\"SSL\";s:3:\"get\";s:0:\"\";s:4:\"post\";a:7:{s:6:\"action\";s:7:\"process\";s:8:\"shipping\";s:9:\"flat_flat\";s:26:\"calendar_hope_delivery_day\";s:10:\"��û��ȯ��\";s:27:\"calendar_hope_delivery_time\";s:10:\"���ꤷ�ʤ�\";s:8:\"comments\";s:0:\"\";s:1:\"x\";s:3:\"161\";s:1:\"y\";s:2:\"18\";}}i:3;a:4:{s:4:\"page\";s:16:\"checkout_payment\";s:4:\"mode\";s:3:\"SSL\";s:3:\"get\";s:0:\"\";s:4:\"post\";a:0:{}}i:4;a:4:{s:4:\"page\";s:21:\"checkout_confirmation\";s:4:\"mode\";s:3:\"SSL\";s:3:\"get\";s:0:\"\";s:4:\"post\";a:8:{s:8:\"cc_owner\";s:7:\"saito s\";s:9:\"cc_number\";s:0:\"\";s:16:\"cc_expires_month\";s:2:\"01\";s:15:\"cc_expires_year\";s:2:\"09\";s:7:\"payment\";s:3:\"cod\";s:8:\"comments\";s:0:\"\";s:1:\"x\";s:3:\"120\";s:1:\"y\";s:2:\"16\";}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:17:\"checkout_shipping\";s:4:\"mode\";s:3:\"SSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}s:9:\"observers\";a:0:{}}check_valid|s:4:\"true\";language|s:8:\"japanese\";languages_id|s:1:\"2\";languages_code|s:2:\"ja\";currency|s:3:\"JPY\";session_counter|b:1;customers_ip_address|s:15:\"125.195.105.188\";new_products_id_in_cart|s:36:\"190:e468d7a4871dca5f6c31f42a03a7c4a2\";valid_to_checkout|b:1;cart_errors|s:0:\"\";payment|s:3:\"cod\";customer_id|i:2;visitors_id|i:2;customer_first_name|s:5:\"saito\";customer_last_name|s:1:\"s\";customer_first_name_kana|s:8:\"�����Ȥ�\";customer_last_name_kana|s:2:\"��\";customer_default_address_id|i:2;customer_country_id|s:3:\"107\";customer_zone_id|s:3:\"186\";customers_authorization|s:1:\"0\";sendto|i:2;shipping|a:4:{s:2:\"id\";s:9:\"flat_flat\";s:5:\"title\";s:8:\"�������\";s:4:\"cost\";s:4:\"5.00\";s:8:\"timespec\";N;}calendar_hope_delivery_day|s:10:\"��û��ȯ��\";calendar_hope_delivery_time|s:10:\"���ꤷ�ʤ�\";billto|i:2;cot_gv|i:0;comments|s:0:\"\";'),('bkeocfe30iro27kpicul05mhu1',1258612903,'initiated|b:1;customers_host_address|s:25:\"FLH1Akz188.tky.mesh.ad.jp\";cartID|s:0:\"\";cart|O:12:\"shoppingCart\":9:{s:8:\"contents\";a:1:{s:36:\"190:e468d7a4871dca5f6c31f42a03a7c4a2\";a:2:{s:3:\"qty\";i:1;s:10:\"attributes\";a:1:{i:3;i:4;}}}s:5:\"total\";d:10500;s:6:\"weight\";d:0.25;s:6:\"cartID\";s:5:\"59357\";s:12:\"content_type\";s:8:\"physical\";s:18:\"free_shipping_item\";i:0;s:20:\"free_shipping_weight\";i:0;s:19:\"free_shipping_price\";i:0;s:9:\"observers\";a:0:{}}navigation|O:17:\"navigationHistory\":3:{s:4:\"path\";a:5:{i:0;a:4:{s:4:\"page\";s:12:\"product_info\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:11:\"products_id\";s:3:\"190\";s:17:\"number_of_uploads\";s:1:\"0\";s:6:\"action\";s:11:\"add_product\";}s:4:\"post\";a:5:{s:2:\"id\";a:1:{i:3;i:4;}s:13:\"cart_quantity\";s:1:\"1\";s:11:\"products_id\";s:3:\"190\";s:1:\"x\";s:3:\"111\";s:1:\"y\";s:2:\"24\";}}i:1;a:4:{s:4:\"page\";s:13:\"shopping_cart\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:17:\"number_of_uploads\";s:1:\"0\";}s:4:\"post\";a:0:{}}i:2;a:4:{s:4:\"page\";s:17:\"checkout_shipping\";s:4:\"mode\";s:3:\"SSL\";s:3:\"get\";s:0:\"\";s:4:\"post\";a:0:{}}i:3;a:4:{s:4:\"page\";s:5:\"login\";s:4:\"mode\";s:3:\"SSL\";s:3:\"get\";s:0:\"\";s:4:\"post\";a:0:{}}i:4;a:4:{s:4:\"page\";s:5:\"addon\";s:4:\"mode\";s:3:\"SSL\";s:3:\"get\";a:1:{s:6:\"module\";s:23:\"visitors/create_visitor\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:17:\"checkout_shipping\";s:4:\"mode\";s:3:\"SSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}s:9:\"observers\";a:0:{}}check_valid|s:4:\"true\";language|s:8:\"japanese\";languages_id|s:1:\"2\";languages_code|s:2:\"ja\";currency|s:3:\"JPY\";session_counter|b:1;customers_ip_address|s:15:\"125.195.105.188\";new_products_id_in_cart|s:36:\"190:e468d7a4871dca5f6c31f42a03a7c4a2\";valid_to_checkout|b:1;cart_errors|s:0:\"\";payment|N;'),('4162ks23csgpfv95li9a7e2iv1',1258620110,'initiated|b:1;securityToken|s:32:\"67a4962d1aa6a9af6e2adc92b888f4c7\";language|s:8:\"japanese\";languages_id|s:1:\"2\";selected_box|s:13:\"configuration\";html_editor_preference_status|s:4:\"NONE\";admin_id|s:1:\"1\";messageToStack|s:0:\"\";'),('2mpo9v4064m0qn8egv6k2ou0m4',1258621356,'initiated|b:1;customers_host_address|s:11:\"pc115.local\";cartID|s:0:\"\";cart|O:12:\"shoppingCart\":8:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;s:18:\"free_shipping_item\";i:0;s:20:\"free_shipping_weight\";i:0;s:19:\"free_shipping_price\";i:0;s:9:\"observers\";a:0:{}}navigation|O:17:\"navigationHistory\":3:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:4:\"page\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:2:\"id\";s:1:\"1\";s:7:\"chapter\";s:2:\"10\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}s:9:\"observers\";a:0:{}}check_valid|s:4:\"true\";language|s:8:\"japanese\";languages_id|s:1:\"2\";languages_code|s:2:\"ja\";currency|s:3:\"JPY\";session_counter|b:1;customers_ip_address|s:13:\"192.168.0.115\";'),('0259nrnjmsgdhla4gr5p7ga2j0',1258624480,'initiated|b:1;customers_host_address|s:11:\"pc100.local\";cartID|s:0:\"\";cart|O:12:\"shoppingCart\":9:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;s:18:\"free_shipping_item\";i:0;s:20:\"free_shipping_weight\";i:0;s:19:\"free_shipping_price\";i:0;s:9:\"observers\";a:0:{}}navigation|O:17:\"navigationHistory\":3:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:5:\"index\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";s:0:\"\";s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}s:9:\"observers\";a:0:{}}check_valid|s:4:\"true\";language|s:8:\"japanese\";languages_id|s:1:\"2\";languages_code|s:2:\"ja\";currency|s:3:\"JPY\";session_counter|b:1;customers_ip_address|s:13:\"192.168.0.100\";'),('85opkjsig5gqhhl9vneuenicm6',1258630347,'initiated|b:1;securityToken|s:32:\"97693886982edef97f8d8bfa99079054\";language|s:8:\"japanese\";languages_id|s:1:\"2\";selected_box|s:13:\"configuration\";html_editor_preference_status|s:4:\"NONE\";admin_id|s:1:\"1\";cot_gv|s:4:\"0.00\";cot_subpoint|s:1:\"0\";messageToStack|s:0:\"\";'),('4f8mutp7q1cc9g12qm2rfgmd90',1258627004,'initiated|b:1;customers_host_address|s:11:\"pc100.local\";cartID|s:0:\"\";cart|O:12:\"shoppingCart\":9:{s:8:\"contents\";a:1:{i:40;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:4725;s:6:\"weight\";d:0.25;s:6:\"cartID\";s:5:\"75367\";s:12:\"content_type\";s:8:\"physical\";s:18:\"free_shipping_item\";i:0;s:20:\"free_shipping_weight\";i:0;s:19:\"free_shipping_price\";i:0;s:9:\"observers\";a:0:{}}navigation|O:17:\"navigationHistory\":3:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:5:\"index\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";s:0:\"\";s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:17:\"checkout_shipping\";s:4:\"mode\";s:3:\"SSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}s:9:\"observers\";a:0:{}}check_valid|s:4:\"true\";language|s:8:\"japanese\";languages_id|s:1:\"2\";languages_code|s:2:\"ja\";currency|s:3:\"JPY\";session_counter|b:1;customers_ip_address|s:13:\"192.168.0.100\";new_products_id_in_cart|s:0:\"\";valid_to_checkout|b:1;cart_errors|s:0:\"\";payment|N;'),('n4oi1c21jmqu2o2be1ddtvfv77',1258628682,'initiated|b:1;customers_host_address|s:11:\"pc115.local\";cartID|s:0:\"\";cart|O:12:\"shoppingCart\":9:{s:8:\"contents\";a:1:{i:92;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:0;s:6:\"weight\";i:0;s:6:\"cartID\";s:5:\"81447\";s:12:\"content_type\";s:8:\"physical\";s:18:\"free_shipping_item\";i:1;s:20:\"free_shipping_weight\";i:0;s:19:\"free_shipping_price\";d:0;s:9:\"observers\";a:0:{}}navigation|O:17:\"navigationHistory\":3:{s:4:\"path\";a:5:{i:0;a:4:{s:4:\"page\";s:5:\"index\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";s:0:\"\";s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:12:\"product_info\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"92\";s:6:\"action\";s:11:\"add_product\";}s:4:\"post\";a:4:{s:13:\"cart_quantity\";s:1:\"1\";s:11:\"products_id\";s:2:\"92\";s:1:\"x\";s:2:\"50\";s:1:\"y\";s:2:\"25\";}}i:2;a:4:{s:4:\"page\";s:13:\"shopping_cart\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";s:0:\"\";s:4:\"post\";a:0:{}}i:3;a:4:{s:4:\"page\";s:17:\"checkout_shipping\";s:4:\"mode\";s:3:\"SSL\";s:3:\"get\";s:0:\"\";s:4:\"post\";a:0:{}}i:4;a:4:{s:4:\"page\";s:5:\"login\";s:4:\"mode\";s:3:\"SSL\";s:3:\"get\";s:0:\"\";s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:17:\"checkout_shipping\";s:4:\"mode\";s:3:\"SSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}s:9:\"observers\";a:0:{}}check_valid|s:4:\"true\";language|s:8:\"japanese\";languages_id|s:1:\"2\";languages_code|s:2:\"ja\";currency|s:3:\"JPY\";session_counter|b:1;customers_ip_address|s:13:\"192.168.0.115\";new_products_id_in_cart|s:2:\"92\";valid_to_checkout|b:1;cart_errors|s:0:\"\";payment|N;'),('a63vbn3dugqnoa3sn33b971s13',1258631595,'initiated|b:1;securityToken|s:32:\"fed19a589b71f30bdf7e8f02e3eee33a\";language|s:8:\"japanese\";languages_id|s:1:\"2\";selected_box|s:13:\"configuration\";html_editor_preference_status|s:4:\"NONE\";admin_id|s:1:\"1\";messageToStack|s:0:\"\";');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specials`
--

DROP TABLE IF EXISTS `specials`;
CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `specials_new_products_price` decimal(15,4) NOT NULL default '0.0000',
  `specials_date_added` datetime default NULL,
  `specials_last_modified` datetime default NULL,
  `expires_date` date NOT NULL default '0001-01-01',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `specials_date_available` date NOT NULL default '0001-01-01',
  PRIMARY KEY  (`specials_id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_date_avail_zen` (`specials_date_available`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `specials`
--

LOCK TABLES `specials` WRITE;
/*!40000 ALTER TABLE `specials` DISABLE KEYS */;
INSERT INTO `specials` VALUES (1,1,'4050.0000','2007-01-16 00:29:45',NULL,'0001-01-01',NULL,1,'0001-01-01'),(2,17,'3800.0000','2007-01-16 00:31:09','2007-01-16 00:31:50','0001-01-01',NULL,1,'0001-01-01'),(3,79,'2000.0000','2007-01-16 00:34:02',NULL,'0001-01-01',NULL,1,'0001-01-01'),(4,93,'7500.0000','2007-01-16 15:11:23','2007-01-16 15:50:07','0001-01-01',NULL,1,'0001-01-01'),(7,101,'9000.0000','2007-01-16 17:24:53',NULL,'0001-01-01',NULL,1,'0001-01-01'),(27,212,'450.0000','2007-01-26 11:08:19',NULL,'0001-01-01',NULL,1,'0001-01-01'),(11,111,'5000.0000','2007-01-16 20:38:12','2007-01-16 21:13:28','0001-01-01',NULL,1,'0001-01-01'),(10,110,'9500.0000','2007-01-16 20:38:12','2007-01-16 21:10:17','0001-01-01',NULL,1,'0001-01-01'),(12,113,'5000.0000','2007-01-16 21:03:43','2007-01-16 21:14:42','0001-01-01',NULL,1,'0001-01-01'),(13,165,'8000.0000','2007-01-18 14:08:42','2007-01-18 14:13:02','0001-01-01',NULL,1,'0001-01-01'),(14,166,'5000.0000','2007-01-18 14:28:21',NULL,'0001-01-01',NULL,1,'0001-01-01'),(15,167,'5000.0000','2007-01-18 14:28:40',NULL,'0001-01-01',NULL,1,'0001-01-01'),(16,168,'5000.0000','2007-01-18 14:28:51',NULL,'0001-01-01',NULL,1,'0001-01-01'),(17,169,'5000.0000','2007-01-18 14:29:19','2007-01-18 14:29:48','2007-06-15','2009-11-19 12:41:47',0,'2007-01-15'),(18,173,'5000.0000','2007-01-18 14:30:15',NULL,'0001-01-01',NULL,1,'0001-01-01'),(19,174,'5000.0000','2007-01-18 14:30:26',NULL,'0001-01-01',NULL,1,'0001-01-01'),(20,175,'5000.0000','2007-01-18 14:30:35',NULL,'0001-01-01',NULL,1,'0001-01-01'),(21,176,'5000.0000','2007-01-18 14:30:53',NULL,'0001-01-01',NULL,1,'0001-01-01'),(22,177,'5000.0000','2007-01-18 14:31:03',NULL,'0001-01-01',NULL,1,'0001-01-01'),(23,178,'5000.0000','2007-01-18 14:31:11',NULL,'0001-01-01',NULL,1,'0001-01-01'),(24,179,'5000.0000','2007-01-18 14:34:01',NULL,'0001-01-01',NULL,1,'0001-01-01'),(25,180,'5000.0000','2007-01-18 14:34:11',NULL,'0001-01-01',NULL,1,'0001-01-01'),(26,181,'5000.0000','2007-01-18 14:34:24',NULL,'0001-01-01',NULL,1,'0001-01-01');
/*!40000 ALTER TABLE `specials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL auto_increment,
  `tax_class_title` varchar(32) NOT NULL default '',
  `tax_class_description` varchar(255) NOT NULL default '',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `tax_class`
--

LOCK TABLES `tax_class` WRITE;
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
INSERT INTO `tax_class` VALUES (1,'������','�����ǡ����ܡ�','2007-01-15 11:43:40','2004-01-21 01:35:29');
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rates`
--

DROP TABLE IF EXISTS `tax_rates`;
CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL auto_increment,
  `tax_zone_id` int(11) NOT NULL default '0',
  `tax_class_id` int(11) NOT NULL default '0',
  `tax_priority` int(5) default '1',
  `tax_rate` decimal(7,4) NOT NULL default '0.0000',
  `tax_description` varchar(255) NOT NULL default '',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`tax_rates_id`),
  KEY `idx_tax_zone_id_zen` (`tax_zone_id`),
  KEY `idx_tax_class_id_zen` (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `tax_rates`
--

LOCK TABLES `tax_rates` WRITE;
/*!40000 ALTER TABLE `tax_rates` DISABLE KEYS */;
INSERT INTO `tax_rates` VALUES (1,1,1,1,'5.0000','�����ǡ�5%','2007-01-15 11:44:17','2006-11-29 16:18:40');
/*!40000 ALTER TABLE `tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_select`
--

DROP TABLE IF EXISTS `template_select`;
CREATE TABLE `template_select` (
  `template_id` int(11) NOT NULL auto_increment,
  `template_dir` varchar(64) NOT NULL default '',
  `template_language` varchar(64) NOT NULL default '0',
  PRIMARY KEY  (`template_id`),
  KEY `idx_tpl_lang_zen` (`template_language`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `template_select`
--

LOCK TABLES `template_select` WRITE;
/*!40000 ALTER TABLE `template_select` DISABLE KEYS */;
INSERT INTO `template_select` VALUES (1,'sugudeki','0');
/*!40000 ALTER TABLE `template_select` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_exceptions`
--

DROP TABLE IF EXISTS `upgrade_exceptions`;
CREATE TABLE `upgrade_exceptions` (
  `upgrade_exception_id` smallint(5) NOT NULL auto_increment,
  `sql_file` varchar(50) default NULL,
  `reason` varchar(200) default NULL,
  `errordate` datetime default '0001-01-01 00:00:00',
  `sqlstatement` text,
  PRIMARY KEY  (`upgrade_exception_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `upgrade_exceptions`
--

LOCK TABLES `upgrade_exceptions` WRITE;
/*!40000 ALTER TABLE `upgrade_exceptions` DISABLE KEYS */;
INSERT INTO `upgrade_exceptions` VALUES (1,'mysql_zencart.sql','REASON_TABLE_NOT_FOUND CHECK PREFIXES!','2009-11-19 12:39:41','UPDATE `query_builder` SET `query_name` = \'���ܵ�\' WHERE `query_id` =1 LIMIT 1;'),(2,'mysql_zencart.sql','REASON_TABLE_NOT_FOUND CHECK PREFIXES!','2009-11-19 12:39:41','UPDATE `query_builder` SET `query_name` = \'�᡼��ޥ������˾��\' WHERE `query_id` =2 LIMIT 1;'),(3,'mysql_zencart.sql','REASON_TABLE_NOT_FOUND CHECK PREFIXES!','2009-11-19 12:39:41','UPDATE `query_builder` SET `query_name` = \'��̲�ܵҡʲ�����֡��ۿ���˾�ԤΤߡ�\' WHERE `query_id` =3 LIMIT 1;'),(4,'mysql_zencart.sql','REASON_TABLE_NOT_FOUND CHECK PREFIXES!','2009-11-19 12:39:41','UPDATE `query_builder` SET `query_name` = \'��ư�ܵҡʲ�����֡��ۿ���˾�ԤΤߡ�\' WHERE `query_id` =4 LIMIT 1;'),(5,'mysql_zencart.sql','REASON_TABLE_NOT_FOUND CHECK PREFIXES!','2009-11-19 12:39:41','UPDATE `query_builder` SET `query_name` = \'��ư�ܵҡʲ�����֡�\' WHERE `query_id` =5 LIMIT 1;'),(6,'mysql_zencart.sql','REASON_TABLE_NOT_FOUND CHECK PREFIXES!','2009-11-19 12:39:41','UPDATE `query_builder` SET `query_name` = \'������\' WHERE `query_id` =6 LIMIT 1;');
/*!40000 ALTER TABLE `upgrade_exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
CREATE TABLE `visitors` (
  `visitors_id` int(11) NOT NULL default '0',
  `visitors_email_address` varchar(96) NOT NULL default '',
  `visitors_info_date_account_created` datetime default NULL,
  `visitors_info_date_account_last_modified` datetime default NULL,
  PRIMARY KEY  (`visitors_id`),
  KEY `IDX_visitors_email_address` (`visitors_email_address`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `visitors`
--

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
INSERT INTO `visitors` VALUES (2,'saito@ark-web.jp','2009-11-19 15:19:04',NULL);
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whos_online`
--

DROP TABLE IF EXISTS `whos_online`;
CREATE TABLE `whos_online` (
  `customer_id` int(11) default NULL,
  `full_name` varchar(64) NOT NULL default '',
  `session_id` varchar(128) NOT NULL default '',
  `ip_address` varchar(15) NOT NULL default '',
  `time_entry` varchar(14) NOT NULL default '',
  `time_last_click` varchar(14) NOT NULL default '',
  `last_page_url` varchar(255) NOT NULL default '',
  `host_address` text NOT NULL,
  `user_agent` varchar(255) NOT NULL default '',
  KEY `idx_ip_address_zen` (`ip_address`),
  KEY `idx_session_id_zen` (`session_id`),
  KEY `idx_customer_id_zen` (`customer_id`),
  KEY `idx_time_entry_zen` (`time_entry`),
  KEY `idx_time_last_click_zen` (`time_last_click`),
  KEY `idx_last_page_url_zen` (`last_page_url`)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table `whos_online`
--

LOCK TABLES `whos_online` WRITE;
/*!40000 ALTER TABLE `whos_online` DISABLE KEYS */;
INSERT INTO `whos_online` VALUES (0,'&yen;Guest','n4oi1c21jmqu2o2be1ddtvfv77','192.168.0.115','1258626939','1258627242','/ohtsuji/zencart-sugu/index.php?main_page=login','pc115.local','Mozilla/5.0 (Windows; U; Windows NT 5.1; ja; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)');
/*!40000 ALTER TABLE `whos_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL auto_increment,
  `zone_country_id` int(11) NOT NULL default '0',
  `zone_code` varchar(32) NOT NULL default '',
  `zone_name` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `zones`
--

LOCK TABLES `zones` WRITE;
/*!40000 ALTER TABLE `zones` DISABLE KEYS */;
INSERT INTO `zones` VALUES (1,223,'AL','Alabama'),(2,223,'AK','Alaska'),(3,223,'AS','American Samoa'),(4,223,'AZ','Arizona'),(5,223,'AR','Arkansas'),(6,223,'AF','Armed Forces Africa'),(7,223,'AA','Armed Forces Americas'),(8,223,'AC','Armed Forces Canada'),(9,223,'AE','Armed Forces Europe'),(10,223,'AM','Armed Forces Middle East'),(11,223,'AP','Armed Forces Pacific'),(12,223,'CA','California'),(13,223,'CO','Colorado'),(14,223,'CT','Connecticut'),(15,223,'DE','Delaware'),(16,223,'DC','District of Columbia'),(17,223,'FM','Federated States Of Micronesia'),(18,223,'FL','Florida'),(19,223,'GA','Georgia'),(20,223,'GU','Guam'),(21,223,'HI','Hawaii'),(22,223,'ID','Idaho'),(23,223,'IL','Illinois'),(24,223,'IN','Indiana'),(25,223,'IA','Iowa'),(26,223,'KS','Kansas'),(27,223,'KY','Kentucky'),(28,223,'LA','Louisiana'),(29,223,'ME','Maine'),(30,223,'MH','Marshall Islands'),(31,223,'MD','Maryland'),(32,223,'MA','Massachusetts'),(33,223,'MI','Michigan'),(34,223,'MN','Minnesota'),(35,223,'MS','Mississippi'),(36,223,'MO','Missouri'),(37,223,'MT','Montana'),(38,223,'NE','Nebraska'),(39,223,'NV','Nevada'),(40,223,'NH','New Hampshire'),(41,223,'NJ','New Jersey'),(42,223,'NM','New Mexico'),(43,223,'NY','New York'),(44,223,'NC','North Carolina'),(45,223,'ND','North Dakota'),(46,223,'MP','Northern Mariana Islands'),(47,223,'OH','Ohio'),(48,223,'OK','Oklahoma'),(49,223,'OR','Oregon'),(50,223,'PW','Palau'),(51,223,'PA','Pennsylvania'),(52,223,'PR','Puerto Rico'),(53,223,'RI','Rhode Island'),(54,223,'SC','South Carolina'),(55,223,'SD','South Dakota'),(56,223,'TN','Tennessee'),(57,223,'TX','Texas'),(58,223,'UT','Utah'),(59,223,'VT','Vermont'),(60,223,'VI','Virgin Islands'),(61,223,'VA','Virginia'),(62,223,'WA','Washington'),(63,223,'WV','West Virginia'),(64,223,'WI','Wisconsin'),(65,223,'WY','Wyoming'),(66,38,'AB','Alberta'),(67,38,'BC','British Columbia'),(68,38,'MB','Manitoba'),(69,38,'NF','Newfoundland'),(70,38,'NB','New Brunswick'),(71,38,'NS','Nova Scotia'),(72,38,'NT','Northwest Territories'),(73,38,'NU','Nunavut'),(74,38,'ON','Ontario'),(75,38,'PE','Prince Edward Island'),(76,38,'QC','Quebec'),(77,38,'SK','Saskatchewan'),(78,38,'YT','Yukon Territory'),(79,81,'NDS','Niedersachsen'),(80,81,'BAW','Baden-Wrttemberg'),(81,81,'BAY','Bayern'),(82,81,'BER','Berlin'),(83,81,'BRG','Brandenburg'),(84,81,'BRE','Bremen'),(85,81,'HAM','Hamburg'),(86,81,'HES','Hessen'),(87,81,'MEC','Mecklenburg-Vorpommern'),(88,81,'NRW','Nordrhein-Westfalen'),(89,81,'RHE','Rheinland-Pfalz'),(90,81,'SAR','Saarland'),(91,81,'SAS','Sachsen'),(92,81,'SAC','Sachsen-Anhalt'),(93,81,'SCN','Schleswig-Holstein'),(94,81,'THE','Thringen'),(95,14,'WI','Wien'),(96,14,'NO','Niedersterreich'),(97,14,'OO','Obersterreich'),(98,14,'SB','Salzburg'),(99,14,'KN','Kten'),(100,14,'ST','Steiermark'),(101,14,'TI','Tirol'),(102,14,'BL','Burgenland'),(103,14,'VB','Voralberg'),(104,204,'AG','Aargau'),(105,204,'AI','Appenzell Innerrhoden'),(106,204,'AR','Appenzell Ausserrhoden'),(107,204,'BE','Bern'),(108,204,'BL','Basel-Landschaft'),(109,204,'BS','Basel-Stadt'),(110,204,'FR','Freiburg'),(111,204,'GE','Genf'),(112,204,'GL','Glarus'),(113,204,'JU','Graubnden'),(114,204,'JU','Jura'),(115,204,'LU','Luzern'),(116,204,'NE','Neuenburg'),(117,204,'NW','Nidwalden'),(118,204,'OW','Obwalden'),(119,204,'SG','St. Gallen'),(120,204,'SH','Schaffhausen'),(121,204,'SO','Solothurn'),(122,204,'SZ','Schwyz'),(123,204,'TG','Thurgau'),(124,204,'TI','Tessin'),(125,204,'UR','Uri'),(126,204,'VD','Waadt'),(127,204,'VS','Wallis'),(128,204,'ZG','Zug'),(129,204,'ZH','Zrich'),(130,195,'A Corua','A Corua'),(131,195,'Alava','Alava'),(132,195,'Albacete','Albacete'),(133,195,'Alicante','Alicante'),(134,195,'Almeria','Almeria'),(135,195,'Asturias','Asturias'),(136,195,'Avila','Avila'),(137,195,'Badajoz','Badajoz'),(138,195,'Baleares','Baleares'),(139,195,'Barcelona','Barcelona'),(140,195,'Burgos','Burgos'),(141,195,'Caceres','Caceres'),(142,195,'Cadiz','Cadiz'),(143,195,'Cantabria','Cantabria'),(144,195,'Castellon','Castellon'),(145,195,'Ceuta','Ceuta'),(146,195,'Ciudad Real','Ciudad Real'),(147,195,'Cordoba','Cordoba'),(148,195,'Cuenca','Cuenca'),(149,195,'Girona','Girona'),(150,195,'Granada','Granada'),(151,195,'Guadalajara','Guadalajara'),(152,195,'Guipuzcoa','Guipuzcoa'),(153,195,'Huelva','Huelva'),(154,195,'Huesca','Huesca'),(155,195,'Jaen','Jaen'),(156,195,'La Rioja','La Rioja'),(157,195,'Las Palmas','Las Palmas'),(158,195,'Leon','Leon'),(159,195,'Lleida','Lleida'),(160,195,'Lugo','Lugo'),(161,195,'Madrid','Madrid'),(162,195,'Malaga','Malaga'),(163,195,'Melilla','Melilla'),(164,195,'Murcia','Murcia'),(165,195,'Navarra','Navarra'),(166,195,'Ourense','Ourense'),(167,195,'Palencia','Palencia'),(168,195,'Pontevedra','Pontevedra'),(169,195,'Salamanca','Salamanca'),(170,195,'Santa Cruz de Tenerife','Santa Cruz de Tenerife'),(171,195,'Segovia','Segovia'),(172,195,'Sevilla','Sevilla'),(173,195,'Soria','Soria'),(174,195,'Tarragona','Tarragona'),(175,195,'Teruel','Teruel'),(176,195,'Toledo','Toledo'),(177,195,'Valencia','Valencia'),(178,195,'Valladolid','Valladolid'),(179,195,'Vizcaya','Vizcaya'),(180,195,'Zamora','Zamora'),(181,195,'Zaragoza','Zaragoza'),(182,107,'�̳�ƻ','�̳�ƻ'),(183,107,'�Ŀ���','�Ŀ���'),(184,107,'��긩','��긩'),(185,107,'�ܾ븩','�ܾ븩'),(186,107,'���ĸ�','���ĸ�'),(187,107,'������','������'),(188,107,'ʡ�縩','ʡ�縩'),(189,107,'��븩','��븩'),(190,107,'���ڸ�','���ڸ�'),(191,107,'���ϸ�','���ϸ�'),(192,107,'��̸�','��̸�'),(193,107,'���ո�','���ո�'),(194,107,'�����','�����'),(195,107,'�����','�����'),(196,107,'���㸩','���㸩'),(197,107,'�ٻ���','�ٻ���'),(198,107,'���','���'),(199,107,'ʡ�温','ʡ�温'),(200,107,'������','������'),(201,107,'Ĺ�','Ĺ�'),(202,107,'���츩','���츩'),(203,107,'�Ų���','�Ų���'),(204,107,'���θ�','���θ�'),(205,107,'���Ÿ�','���Ÿ�'),(206,107,'���츩','���츩'),(207,107,'������','������'),(208,107,'�����','�����'),(209,107,'ʼ�˸�','ʼ�˸�'),(210,107,'���ɸ�','���ɸ�'),(211,107,'�²λ���','�²λ���'),(212,107,'Ļ�踩','Ļ�踩'),(213,107,'�纬��','�纬��'),(214,107,'������','������'),(215,107,'���縩','���縩'),(216,107,'������','������'),(217,107,'���縩','���縩'),(218,107,'���','���'),(219,107,'��ɲ��','��ɲ��'),(220,107,'���θ�','���θ�'),(221,107,'ʡ����','ʡ����'),(222,107,'���츩','���츩'),(223,107,'Ĺ�긩','Ĺ�긩'),(224,107,'���ܸ�','���ܸ�'),(225,107,'��ʬ��','��ʬ��'),(226,107,'�ܺ긩','�ܺ긩'),(227,107,'�����縩','�����縩'),(228,107,'���츩','���츩');
/*!40000 ALTER TABLE `zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zones_to_geo_zones`
--

DROP TABLE IF EXISTS `zones_to_geo_zones`;
CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL auto_increment,
  `zone_country_id` int(11) NOT NULL default '0',
  `zone_id` int(11) default NULL,
  `geo_zone_id` int(11) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`association_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table `zones_to_geo_zones`
--

LOCK TABLES `zones_to_geo_zones` WRITE;
/*!40000 ALTER TABLE `zones_to_geo_zones` DISABLE KEYS */;
INSERT INTO `zones_to_geo_zones` VALUES (1,107,NULL,1,'2007-01-21 11:44:32','2006-11-29 16:18:40');
/*!40000 ALTER TABLE `zones_to_geo_zones` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

