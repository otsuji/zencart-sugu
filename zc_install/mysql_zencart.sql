-- MySQL dump 10.9
--
-- Host: localhost    Database: zencart-sugu-hachiya
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
-- Table structure for table address_book
--

DROP TABLE IF EXISTS address_book;
CREATE TABLE address_book (
address_book_id int(11) NOT NULL auto_increment,
customers_id int(11) NOT NULL default '0',
entry_gender char(1) NOT NULL default '',
entry_company varchar(32) default NULL,
entry_firstname varchar(32) NOT NULL default '',
entry_lastname varchar(32) NOT NULL default '',
entry_street_address varchar(64) NOT NULL default '',
entry_suburb varchar(32) default NULL,
entry_postcode varchar(10) NOT NULL default '',
entry_city varchar(32) NOT NULL default '',
entry_state varchar(32) default NULL,
entry_country_id int(11) NOT NULL default '0',
entry_zone_id int(11) NOT NULL default '0',
entry_telephone varchar(32) NOT NULL default '',
entry_fax varchar(32) default NULL,
entry_firstname_kana varchar(32) NOT NULL default '',
entry_lastname_kana varchar(32) NOT NULL default '',
PRIMARY KEY  (address_book_id),
KEY idx_address_book_customers_id_zen (customers_id)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=ujis;

--
-- Dumping data for table address_book
--


--
-- Table structure for table address_format
--

DROP TABLE IF EXISTS address_format;
CREATE TABLE address_format (
address_format_id int(11) NOT NULL auto_increment,
address_format varchar(128) NOT NULL default '',
address_summary varchar(48) NOT NULL default '',
PRIMARY KEY  (address_format_id)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=ujis;

--
-- Dumping data for table address_format
--

INSERT INTO address_format VALUES (1,'$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country','$city / $country');
INSERT INTO address_format VALUES (2,'$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country','$city, $state / $country');
INSERT INTO address_format VALUES (3,'$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country','$state / $country');
INSERT INTO address_format VALUES (4,'$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country','$postcode / $country');
INSERT INTO address_format VALUES (5,'$firstname $lastname$cr$streets$cr$postcode $city$cr$country','$city / $country');
INSERT INTO address_format VALUES (6,'$firstname $lastname$cr$postcode$cr$state$city$cr$streets$cr$country$cr$telephone$cr$fax','$statename $city');

--
-- Table structure for table admin
--

DROP TABLE IF EXISTS admin;
CREATE TABLE admin (
admin_id int(11) NOT NULL auto_increment,
admin_name varchar(32) NOT NULL default '',
admin_email varchar(96) NOT NULL default '',
admin_pass varchar(40) NOT NULL default '',
admin_level tinyint(1) NOT NULL default '1',
PRIMARY KEY  (admin_id),
KEY idx_admin_name_zen (admin_name)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table admin
--

INSERT INTO admin VALUES (1,'admin','hachiya@ark-web.jp','d367f03201e84bb4cfd137da723fc4a0:ae',1);

--
-- Table structure for table admin_acl
--

DROP TABLE IF EXISTS admin_acl;
CREATE TABLE admin_acl (
acl_id int(11) NOT NULL auto_increment,
admin_id int(11) NOT NULL default '0',
easy_admin_top_menu_id int(11) NOT NULL default '0',
easy_admin_sub_menu_id int(11) NOT NULL default '0',
PRIMARY KEY  (acl_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table admin_acl
--


--
-- Table structure for table admin_activity_log
--

DROP TABLE IF EXISTS admin_activity_log;
CREATE TABLE admin_activity_log (
log_id int(15) NOT NULL auto_increment,
access_date datetime NOT NULL default '0001-01-01 00:00:00',
admin_id int(11) NOT NULL default '0',
page_accessed varchar(80) NOT NULL default '',
page_parameters varchar(150) default NULL,
ip_address varchar(15) NOT NULL default '',
PRIMARY KEY  (log_id),
KEY idx_page_accessed_zen (page_accessed),
KEY idx_access_date_zen (access_date),
KEY idx_ip_zen (ip_address)
) ENGINE=MyISAM AUTO_INCREMENT=2410 DEFAULT CHARSET=ujis;

--
-- Dumping data for table admin_activity_log
--


--
-- Table structure for table authorizenet
--

DROP TABLE IF EXISTS authorizenet;
CREATE TABLE authorizenet (
id int(11) unsigned NOT NULL auto_increment,
customer_id int(11) NOT NULL default '0',
order_id int(11) NOT NULL default '0',
response_code int(1) NOT NULL default '0',
response_text varchar(255) NOT NULL default '',
authorization_type text NOT NULL,
transaction_id int(15) NOT NULL default '0',
sent longtext NOT NULL,
received longtext NOT NULL,
time varchar(50) NOT NULL default '',
session_id varchar(255) NOT NULL default '',
UNIQUE KEY idx_auth_net_id (id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table authorizenet
--


--
-- Table structure for table banners
--

DROP TABLE IF EXISTS banners;
CREATE TABLE banners (
banners_id int(11) NOT NULL auto_increment,
banners_title varchar(64) NOT NULL default '',
banners_url varchar(255) NOT NULL default '',
banners_image varchar(64) NOT NULL default '',
banners_group varchar(15) NOT NULL default '',
banners_html_text text,
expires_impressions int(7) default '0',
expires_date datetime default NULL,
date_scheduled datetime default NULL,
date_added datetime NOT NULL default '0001-01-01 00:00:00',
date_status_change datetime default NULL,
status int(1) NOT NULL default '1',
banners_open_new_windows int(1) NOT NULL default '1',
banners_on_ssl int(1) NOT NULL default '1',
banners_sort_order int(11) NOT NULL default '0',
PRIMARY KEY  (banners_id),
KEY idx_status_group_zen (status,banners_group)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=ujis;

--
-- Dumping data for table banners
--

INSERT INTO banners VALUES (1,'Zen Cart','http://www.zen-cart.com','banners/zencart_468_60_02.gif','Wide-Banners','',0,NULL,NULL,'2004-01-11 20:59:12',NULL,1,1,1,0);
INSERT INTO banners VALUES (2,'Zen Cart the art of e-commerce','http://www.zen-cart.com','banners/125zen_logo.gif','SideBox-Banners','',0,NULL,NULL,'2004-01-11 20:59:12',NULL,1,1,1,0);
INSERT INTO banners VALUES (3,'Zen Cart the art of e-commerce','http://www.zen-cart.com','banners/125x125_zen_logo.gif','SideBox-Banners','',0,NULL,NULL,'2004-01-11 20:59:12',NULL,1,1,1,0);
INSERT INTO banners VALUES (4,'if you have to think ... you haven\'t been Zenned!','http://www.zen-cart.com','banners/think_anim.gif','Wide-Banners','',0,NULL,NULL,'2004-01-12 20:53:18',NULL,1,1,1,0);
INSERT INTO banners VALUES (5,'Sashbox.net - the ultimate e-commerce hosting solution','http://www.sashbox.net/zencart/','banners/sashbox_125x50.jpg','BannersAll','',0,NULL,NULL,'2005-05-13 10:53:50',NULL,1,1,1,20);
INSERT INTO banners VALUES (6,'Zen Cart the art of e-commerce','http://www.zen-cart.com','banners/bw_zen_88wide.gif','BannersAll','',0,NULL,NULL,'2005-05-13 10:54:38',NULL,1,1,1,10);
INSERT INTO banners VALUES (7,'Sashbox.net - the ultimate e-commerce hosting solution','http://www.sashbox.net/zencart/','banners/sashbox_468x60.jpg','Wide-Banners','',0,NULL,NULL,'2005-05-13 10:55:11',NULL,1,1,1,0);
INSERT INTO banners VALUES (8,'Start Accepting Credit Cards For Your Business Today!','http://www.zen-cart.com/modules/freecontent/index.php?id=29','banners/cardsvcs_468x60.gif','Wide-Banners','',0,NULL,NULL,'2006-03-13 11:02:43',NULL,1,1,1,0);

--
-- Table structure for table banners_history
--

DROP TABLE IF EXISTS banners_history;
CREATE TABLE banners_history (
banners_history_id int(11) NOT NULL auto_increment,
banners_id int(11) NOT NULL default '0',
banners_shown int(5) NOT NULL default '0',
banners_clicked int(5) NOT NULL default '0',
banners_history_date datetime NOT NULL default '0001-01-01 00:00:00',
PRIMARY KEY  (banners_history_id),
KEY idx_banners_id_zen (banners_id)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=ujis;

--
-- Dumping data for table banners_history
--


--
-- Table structure for table blocks
--

DROP TABLE IF EXISTS blocks;
CREATE TABLE blocks (
id int(11) NOT NULL auto_increment,
module varchar(64) NOT NULL default '',
block varchar(64) NOT NULL default '',
template varchar(64) NOT NULL default '',
status tinyint(1) NOT NULL default '0',
location varchar(64) NOT NULL default '',
sort_order int(11) NOT NULL default '0',
visible tinyint(1) NOT NULL default '0',
pages text NOT NULL,
PRIMARY KEY  (id),
UNIQUE KEY UNQ_module_block_template (module,block,template),
KEY IDX_module_template_status_location_sort_order (module,template,status,location,sort_order)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=ujis;

--
-- Dumping data for table blocks
--

INSERT INTO blocks VALUES (1,'sideboxes','banner_box.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (2,'sideboxes','banner_box2.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (3,'sideboxes','banner_box_all.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (4,'sideboxes','best_sellers.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (5,'sideboxes','categories.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (6,'sideboxes','currencies.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (7,'sideboxes','document_categories.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (8,'sideboxes','ezpages.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (9,'sideboxes','featured.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (10,'sideboxes','information.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (11,'sideboxes','languages.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (12,'sideboxes','manufacturer_info.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (13,'sideboxes','manufacturers.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (14,'sideboxes','more_information.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (15,'sideboxes','music_genres.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (16,'sideboxes','order_history.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (17,'sideboxes','product_notifications.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (18,'sideboxes','record_companies.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (19,'sideboxes','reviews.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (20,'sideboxes','search.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (21,'sideboxes','search_header.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (22,'sideboxes','shopping_cart.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (23,'sideboxes','specials.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (24,'sideboxes','tell_a_friend.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (25,'sideboxes','whats_new.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (26,'sideboxes','whos_online.php','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (28,'globalnavi','block','classic',0,'',0,0,'');
INSERT INTO blocks VALUES (29,'sideboxes','banner_box.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (30,'sideboxes','banner_box2.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (31,'sideboxes','banner_box_all.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (32,'sideboxes','best_sellers.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (33,'sideboxes','categories.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (34,'sideboxes','currencies.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (35,'sideboxes','document_categories.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (36,'sideboxes','ezpages.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (37,'sideboxes','featured.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (38,'sideboxes','information.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (39,'sideboxes','languages.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (40,'sideboxes','manufacturer_info.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (41,'sideboxes','manufacturers.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (42,'sideboxes','more_information.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (43,'sideboxes','music_genres.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (44,'sideboxes','order_history.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (45,'sideboxes','product_notifications.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (46,'sideboxes','record_companies.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (47,'sideboxes','reviews.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (48,'sideboxes','search.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (49,'sideboxes','search_header.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (50,'sideboxes','shopping_cart.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (51,'sideboxes','specials.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (52,'sideboxes','tell_a_friend.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (53,'sideboxes','whats_new.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (54,'sideboxes','whos_online.php','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (55,'globalnavi','block','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (70,'carousel_ui','block_featured_products','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (71,'carousel_ui','block_specials_products','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (72,'carousel_ui','block_also_purchased_products','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (73,'carousel_ui','block_xsell_products','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (61,'multiple_image_view','block','addon_modules',0,'',0,1,'product_free_shipping_info\nproduct_info\nproduct_music_info');
INSERT INTO blocks VALUES (62,'multiple_image_view','block_expd','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (63,'multiple_image_view','block_thmb','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (81,'search_more','block_sort','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (80,'search_more','block_par_page','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (69,'carousel_ui','block_new_products','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (79,'search_more','block_search_form','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (78,'search_more','block','addon_modules',0,'',0,0,'');
INSERT INTO blocks VALUES (82,'sideboxes','banner_box.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (83,'sideboxes','banner_box2.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (84,'sideboxes','banner_box_all.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (85,'sideboxes','best_sellers.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (86,'sideboxes','categories.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (87,'sideboxes','currencies.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (88,'sideboxes','document_categories.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (89,'sideboxes','ezpages.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (90,'sideboxes','featured.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (91,'sideboxes','information.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (92,'sideboxes','languages.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (93,'sideboxes','manufacturer_info.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (94,'sideboxes','manufacturers.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (95,'sideboxes','more_information.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (96,'sideboxes','music_genres.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (97,'sideboxes','order_history.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (98,'sideboxes','product_notifications.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (99,'sideboxes','record_companies.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (100,'sideboxes','reviews.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (101,'sideboxes','search.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (102,'sideboxes','search_header.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (103,'sideboxes','shopping_cart.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (104,'sideboxes','specials.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (105,'sideboxes','tell_a_friend.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (106,'sideboxes','whats_new.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (107,'sideboxes','whos_online.php','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (108,'carousel_ui','block_new_products','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (109,'carousel_ui','block_featured_products','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (110,'carousel_ui','block_specials_products','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (111,'carousel_ui','block_also_purchased_products','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (112,'carousel_ui','block_xsell_products','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (113,'globalnavi','block','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (114,'multiple_image_view','block','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (115,'multiple_image_view','block_expd','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (116,'multiple_image_view','block_thmb','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (117,'search_more','block','accessible_and_usable',1,'main_bottom',0,0,'');
INSERT INTO blocks VALUES (118,'search_more','block_search_form','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (119,'search_more','block_par_page','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (120,'search_more','block_sort','accessible_and_usable',0,'',0,0,'');
INSERT INTO blocks VALUES (121,'sideboxes','banner_box.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (122,'sideboxes','banner_box2.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (123,'sideboxes','banner_box_all.php','sugudeki',1,'sidebar_left',2,0,'checkout_confirmation\ncheckout_payment\ncheckout_payment_address\ncheckout_shipping\ncheckout_shipping_address\ncheckout_success\ncreate_account\ncreate_account_success\nlogin\nlogoff\npassword_forgotten\nshopping_cart\nvisitors#page_create_visitor\nvisitors#page_visitor_edit\nvisitors#page_visitor_to_account');
INSERT INTO blocks VALUES (124,'sideboxes','best_sellers.php','sugudeki',1,'sidebar_right',0,1,'index');
INSERT INTO blocks VALUES (125,'sideboxes','categories.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (126,'sideboxes','currencies.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (127,'sideboxes','document_categories.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (128,'sideboxes','ezpages.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (129,'sideboxes','featured.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (130,'sideboxes','information.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (131,'sideboxes','languages.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (132,'sideboxes','manufacturer_info.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (133,'sideboxes','manufacturers.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (134,'sideboxes','more_information.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (135,'sideboxes','music_genres.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (136,'sideboxes','order_history.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (137,'sideboxes','product_notifications.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (138,'sideboxes','record_companies.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (139,'sideboxes','reviews.php','sugudeki',1,'main_bottom',0,1,'product_info');
INSERT INTO blocks VALUES (140,'sideboxes','search.php','sugudeki',1,'header',0,0,'');
INSERT INTO blocks VALUES (141,'sideboxes','search_header.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (142,'sideboxes','shopping_cart.php','sugudeki',0,'',1,0,'');
INSERT INTO blocks VALUES (143,'sideboxes','specials.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (144,'sideboxes','tell_a_friend.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (145,'sideboxes','whats_new.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (146,'sideboxes','whos_online.php','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (147,'aboutbox','block','sugudeki',1,'footer',1,0,'');
INSERT INTO blocks VALUES (148,'ajax_category_tree','block','sugudeki',1,'sidebar_left',0,0,'checkout_confirmation\ncheckout_payment\ncheckout_payment_address\ncheckout_shipping\ncheckout_shipping_address\ncheckout_success\ncreate_account\ncreate_account_success\nlogin\nlogoff\npassword_forgotten\nshopping_cart\nvisitors#page_create_visitor\nvisitors#page_visitor_edit\nvisitors#page_visitor_to_account');
INSERT INTO blocks VALUES (149,'calendar','block','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (150,'calendar','block_desired_delivery_date','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (151,'calendar','block_desired_delivery_time','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (152,'calendar','block_delivery_info','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (153,'carousel_ui','block_new_products','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (154,'carousel_ui','block_featured_products','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (155,'carousel_ui','block_specials_products','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (156,'carousel_ui','block_also_purchased_products','sugudeki',1,'main_bottom',1,1,'product_info');
INSERT INTO blocks VALUES (157,'carousel_ui','block_xsell_products','sugudeki',1,'main_bottom',2,1,'product_info');
INSERT INTO blocks VALUES (181,'easy_admin','block','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (182,'easy_admin','block_right_top_menu','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (162,'globalnavi','block','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (163,'multiple_image_view','block','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (164,'multiple_image_view','block_expd','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (165,'multiple_image_view','block_thmb','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (166,'search_more','block','sugudeki',1,'main_top',10,1,'index_products');
INSERT INTO blocks VALUES (167,'search_more','block_search_form','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (168,'search_more','block_par_page','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (169,'search_more','block_sort','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (170,'category_sitemap','block','sugudeki',1,'footer',0,0,'');
INSERT INTO blocks VALUES (171,'checkout_step','block','sugudeki',1,'main_top',0,1,'checkout_confirmation\ncheckout_payment\ncheckout_payment_address\ncheckout_shipping\ncheckout_shipping_address\ncheckout_success');
INSERT INTO blocks VALUES (172,'easy_design','block','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (173,'products_with_attributes_stock','block','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (183,'easy_admin','block_dropdown_menu','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (175,'feature_area','block','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (176,'blog','block','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (185,'easy_admin_simplify','block','sugudeki',0,'',0,0,'');
INSERT INTO blocks VALUES (178,'point_base','block','sugudeki',1,'main_bottom',0,1,'account');
INSERT INTO blocks VALUES (180,'shopping_cart_summary','block','sugudeki',1,'header',1,0,'');
INSERT INTO blocks VALUES (184,'easy_reviews','block','sugudeki',0,'',0,0,'');

--
-- Table structure for table categories
--

DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
categories_id int(11) NOT NULL auto_increment,
categories_image varchar(64) default NULL,
parent_id int(11) NOT NULL default '0',
sort_order int(3) default NULL,
date_added datetime default NULL,
last_modified datetime default NULL,
categories_status tinyint(1) NOT NULL default '1',
PRIMARY KEY  (categories_id),
KEY idx_parent_id_cat_id_zen (parent_id,categories_id),
KEY idx_status_zen (categories_status),
KEY idx_sort_order_zen (sort_order)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=ujis;

--
-- Dumping data for table categories
--


--
-- Table structure for table categories_description
--

DROP TABLE IF EXISTS categories_description;
CREATE TABLE categories_description (
categories_id int(11) NOT NULL default '0',
language_id int(11) NOT NULL default '1',
categories_name varchar(32) NOT NULL default '',
categories_description text NOT NULL,
PRIMARY KEY  (categories_id,language_id),
KEY idx_categories_name_zen (categories_name)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table categories_description
--


--
-- Table structure for table configuration
--

DROP TABLE IF EXISTS configuration;
CREATE TABLE configuration (
configuration_id int(11) NOT NULL auto_increment,
configuration_title text NOT NULL,
configuration_key varchar(255) NOT NULL default '',
configuration_value text NOT NULL,
configuration_description text NOT NULL,
configuration_group_id int(11) NOT NULL default '0',
sort_order int(5) default NULL,
last_modified datetime default NULL,
date_added datetime NOT NULL default '0001-01-01 00:00:00',
use_function text,
set_function text,
PRIMARY KEY  (configuration_id),
UNIQUE KEY unq_config_key_zen (configuration_key),
KEY idx_key_value_zen (configuration_key,configuration_value(10)),
KEY idx_cfg_grp_id_zen (configuration_group_id)
) ENGINE=MyISAM AUTO_INCREMENT=1536 DEFAULT CHARSET=ujis;

--
-- Dumping data for table configuration
--

INSERT INTO configuration VALUES (1,'����å�̾','STORE_NAME','Zen��Ź','����å�̾�����ꤷ�ޤ���',1,1,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (2,'����åץ����ʡ�̾','STORE_OWNER','����Ϻ','����åץ����ʡ�̾(�ޤ��ϱ��Ĵ�����̾)�����ꤷ�ޤ���',1,2,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (3,'��','STORE_COUNTRY','107','Ź�ޤ�¸�ߤ����̾�����Ϥ��Ƥ���������<strong>��ա��ѹ�������Ź�ޤΥ�����ι�����˺�줺�˹ԤäƤ���������</strong>',1,6,NULL,'2009-11-19 12:39:39','zen_get_country_name','zen_cfg_pull_down_country_list(');
INSERT INTO configuration VALUES (4,'�ϰ�','STORE_ZONE','194','����åפν���ϰ�(��̾)�����ꤷ�ޤ���',1,7,NULL,'2009-11-19 12:39:39','zen_cfg_get_zone_name','zen_cfg_pull_down_zone_list(');
INSERT INTO configuration VALUES (5,'����ͽ�꾦�ʤΥ����Ƚ�','EXPECTED_PRODUCTS_SORT','desc','����ͽ�꾦�ʤΥ����Ƚ�����ꤷ�ޤ���<br /><br />\r\n��asc(����)<br />\r\n��desc(�߽�)',1,8,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'asc\', \'desc\'), ');
INSERT INTO configuration VALUES (6,'����ͽ�꾦�ʤΥ����Ƚ���Ѥ���ե������','EXPECTED_PRODUCTS_FIELD','date_expected','����ͽ�꾦�ʤΥ����Ƚ�˻��Ѥ���ե�����ɤ����ꤷ�ޤ���<BR>��products_name:��̾<BR>��date_expected:ͽ����',1,9,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'products_name\', \'date_expected\'), ');
INSERT INTO configuration VALUES (7,'ɽ��������̲ߤ�Ϣư','USE_DEFAULT_LANGUAGE_CURRENCY','false','ɽ��������̲ߤ��ѹ���Ϣư�����뤫�ɤ������ꤷ�ޤ���<br /><br />true(Ϣư)<br />false(��Ϣư)',1,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (8,'ɽ�����������','LANGUAGE_DEFAULT_SELECTOR','Default','����åפΥǥե���Ȥ�ɽ������ϥ���åפν������ޤ��ϥ桼�����Υ֥饦������Τɤ���˴�Ť��������ꤷ�ޤ���<br /><br />�ǥե���ȡ�����åפν������',1,11,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'Default\', \'Browser\'), ');
INSERT INTO configuration VALUES (9,'���������󥸥�ե��ɥ꡼��URLɽ��(��ȯ��)','SEARCH_ENGINE_FRIENDLY_URLS','false','���������󥸥�˽����䤹������ŪHTML�Τ褦��URLɽ����Ԥ����ɤ��������ꤷ�ޤ���<br /><br />��ա�Google�Ǥ�ưŪURL�Υ����뤬�������줿���ᡢ���ޤ��̣�Ϥʤ��褦�Ǥ���',6,12,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (10,'���ʤ��ɲø�˥����Ȥ�ɽ��','DISPLAY_CART','true','���ʤ򥫡��Ȥ��ɲä���ľ��˥����Ȥ����Ƥ�ɽ�����뤫���ޤ��ϸ��ڡ����ˤ�����뤫�����ꤷ�ޤ���<br /><br />\r\n��true (ɽ��)<br />\r\n��false (��ɽ��)',1,14,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (11,'�ǥե���Ȥθ����黻��','ADVANCED_SEARCH_DEFAULT_OPERATOR','and','�ǥե���Ȥθ����黻�Ҥ����ꤷ�ޤ���',1,17,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'and\', \'or\'), ');
INSERT INTO configuration VALUES (12,'����åפν���������ֹ�','STORE_NAME_ADDRESS','Zen��Ź\r\n������������1-1-1\r\n03-0000-0000','����å�̾����̾�����ꡢ�����ֹ�����ꤷ�ޤ���',1,18,'2010-06-18 11:34:11','2009-11-19 12:39:39',NULL,'zen_cfg_textarea(');
INSERT INTO configuration VALUES (13,'���ƥ�����ξ��ʿ���ɽ��','SHOW_COUNTS','true','���ƥ�����ξ��ʿ��򲼰̥��ƥ����ޤ�ƥ������ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true (����)<br />\r\n��false (���ʤ�)',1,19,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (14,'�ǳۤξ���������','TAX_DECIMAL_PLACES','0','�ǳۤξ������ʲ��η�������ꤷ�ޤ���',1,20,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (15,'���ʤ��ǹ��ߤ�ɽ��','DISPLAY_PRICE_WITH_TAX','true','���ʤ��ǹ��ߤ�ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true = ���ʤ��ǹ��ߤ�ɽ��<br />\r\n��false = �ǳۤ�ޤȤ��ɽ��',1,21,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (16,'���ʤ��ǹ��ߤ�ɽ�� - ��������','DISPLAY_PRICE_WITH_TAX_ADMIN','true','�������̤ǲ��ʤ��ǹ��ߤ�ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true = ���ʤ��ǹ��ߤ�ɽ��<br />\r\n��false = �Ǹ���ǳۤ�ɽ��',1,21,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (17,'���ʤˤ������ǳۤλ�����','STORE_PRODUCT_TAX_BASIS','Shipping','���ʤˤ������ǳۤ򻻽Ф���ݤδ������ꤷ�ޤ���<br /><br />\r\n��Shipping �ĸܵ�(����������)�ν���<br />\r\n��Billing �ĸܵҤ�������ν���<br />\r\n��Store �ĥ���åפν���Ϥˤ��(�����衦������Ȥ⥷��åפν���ϰ�Ǥ������ͭ��)\r\n',1,21,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'Shipping\', \'Billing\', \'Store\'), ');
INSERT INTO configuration VALUES (18,'�����ˤ������ǳۤλ�����','STORE_SHIPPING_TAX_BASIS','Shipping','�����ˤ������Ƕ�򻻽Ф���ݤδ������ꤷ�ޤ���<br /><br />\r\n��Shipping �ĸܵ�(����������)�ν���<br />\r\n��Billing �ĸܵҤ�������ν���<br />\r\n��Store �ĥ���åפν���Ϥˤ��(�����衦������Ȥ⥷��åפν���ϰ�Ǥ������ͭ��)<br />\r\n��ա���������������⥸�塼��ˤ�äƥ����С��饤��(�������)����ǽ�Ǥ���',1,21,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'Shipping\', \'Billing\', \'Store\'), ');
INSERT INTO configuration VALUES (19,'�Ƕ��ɽ��','STORE_TAX_DISPLAY_STATUS','0','��׳ۤ�0�ߤǤ��Ƕ��ɽ�����ޤ���?<br />0= Off<br />1= On',1,21,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (20,'�������̤Υ����ॢ��������(�ÿ�)','SESSION_TIMEOUT_ADMIN','3600','�������̤������ॢ���Ȥ���ޤǤ��ÿ������ꤷ�ޤ����ǥե���Ȥ�3600�á�1���֤Ǥ���<br />���ޤ�û������ꤹ��Ⱦ�����Ͽ��ʤɤ˥����ॢ���Ȥ��Ƥ��ޤ��ޤ��Τ���ա�<br />900��̤�������ꤹ���900�ä˼�ưŪ�����ꤵ��ޤ���',1,40,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (21,'�������̤Υץ��������ξ�»�������(��)\r\n','GLOBAL_SET_TIME_LIMIT','60','�������̤ˤ����Ƥʤ�餫������Ԥä����Ρ��ץ��������ζ�����λ���֤����ꤷ�ޤ����ǥե���Ȥ�60�á�1ʬ����������ϡ��ץ����������֤����꤬������ʤɤˤ����ѹ����Ƥ���������\r\n',1,42,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (22,'Zen Cart���С������μ�ư�����å�(�إå��ǹ��Τ��뤫�ݤ�)','SHOW_VERSION_UPDATE_IN_HEADER','true','Zen Cart�ο��С�����󤬥�꡼�����줿��硢�إå��˾����ɽ�����ޤ���?<br /><br />\r\n��ա���������򥪥�ˤ���ȡ������ԥڡ�����ɽ�����٤��ʤ��礬����ޤ������󥿡��ͥåȤ˷Ҥ��äƤ��ʤ��ƥ��ȴĶ��ʤɤǤ�false�ˤ��Ƥ���������\r\n',1,44,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (23,'����åפΥ��ơ�����','STORE_STATUS','0','����åפξ��֤����ꤷ�ޤ���<br /><br />\r\n��0���̾�Υ���å�<br />\r\n��1�����ɽ���ʤ��Υǥ⥷��å�<br />\r\n��2�����ɽ���դ��Υǥ⥷��å�\r\n',1,25,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ');
INSERT INTO configuration VALUES (24,'�����Фβ�ư����(���åץ�����)','DISPLAY_SERVER_UPTIME','true','�����Фβ�Ư���֤�ɽ�����뤫�ɤ��������ꤷ�ޤ������ξ���Ϥ����Ĥ��Υ����Фǥ��顼���Ȥ��ƻĤ뤳�Ȥ�����ޤ���<br /><br />true��ɽ��<br /><br />false����ɽ��',1,46,'2003-11-08 20:24:47','0001-01-01 00:00:00','','zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (25,'����ڤ�ڡ����Υ����å�','MISSING_PAGE_CHECK','On','Zen Cart������ڤ�ڡ������Τ����ݤ˼�ưŪ�˥ȥåץڡ�����ž�����ޤ���?<br /><br />\r\n��On = ����<br />\r\n��Off = ����<br />\r\n��Page Not Found = �ڡ��������Ĥ���ޤ�����̤����ܤ���<br />\r\n<br />\r\n��ա��ǥХå��κݤʤɤˤϤ��ε�ǽ�򥪥դˤ���Ȥ褤�Ǥ��礦��',1,48,'2003-11-08 20:24:47','0001-01-01 00:00:00','','zen_cfg_select_option(array(\'On\', \'Off\', \'Page Not Found\'),');
INSERT INTO configuration VALUES (26,'HTML���ǥ���','HTML_EDITOR_PREFERENCE','NONE','�᡼��ޥ�����侦�������ʤɤ��Ѥ���HTML/��å��ƥ������ѤΥ��եȥ����������ꤷ�ޤ���',1,110,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'HTMLAREA\', \'NONE\'),');
INSERT INTO configuration VALUES (27,'phpBB�ؤΥ�󥯤�ɽ��','PHPBB_LINKS_ENABLED','false','Zen Cart���(���󥹥ȡ���Ѥߤ�)phpBB�Υե������ؤΥ�󥯤�ɽ�����뤫�ɤ��������ꤷ�ޤ���\r\n',1,120,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (28,'���ƥ�����ξ��ʿ���ɽ�� - ��������','SHOW_COUNTS_ADMIN','true','���ƥ�����ξ��ʿ��򲼰̥��ƥ����ޤ�ƥ������ɽ�����ޤ���?<br /><br />\r\n��true (����)<br />\r\n��false (���ʤ�)',1,130,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (29,'̾���κǾ�ʸ����','ENTRY_FIRST_NAME_MIN_LENGTH','1','̾����ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,1,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (30,'���κǾ�ʸ����','ENTRY_LAST_NAME_MIN_LENGTH','1','����ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,2,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (31,'��ǯ�����κǾ�ʸ����','ENTRY_DOB_MIN_LENGTH','10','��ǯ������ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,3,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (32,'�᡼�륢�ɥ쥹�κǾ�ʸ����','ENTRY_EMAIL_ADDRESS_MIN_LENGTH','6','�᡼�륢�ɥ쥹��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,4,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (33,'����κǾ�ʸ����','ENTRY_STREET_ADDRESS_MIN_LENGTH','1','���ϡ��ޥ󥷥�󡦥��ѡ���̾�κǾ�ʸ���������ꤷ�ޤ���',2,5,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (34,'���̾�κǾ�ʸ����','ENTRY_COMPANY_MIN_LENGTH','2','���̾��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,6,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (35,'͹���ֹ�κǾ�ʸ����','ENTRY_POSTCODE_MIN_LENGTH','4','͹���ֹ��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,7,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (36,'�Զ�Į¼�κǾ�ʸ����','ENTRY_CITY_MIN_LENGTH','2','�Զ�Į¼��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,8,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (37,'��ƻ�ܸ�̾�κǾ�ʸ����','ENTRY_STATE_MIN_LENGTH','2','��ƻ�ܸ���ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,9,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (38,'�����ֹ�κǾ�ʸ����','ENTRY_TELEPHONE_MIN_LENGTH','3','�����ֹ��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,10,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (39,'�ѥ���ɤκǾ�ʸ����','ENTRY_PASSWORD_MIN_LENGTH','5','�ѥ���ɤ�ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,11,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (40,'���쥸�åȥ�����̾���κǾ�ʸ����','CC_OWNER_MIN_LENGTH','3','���쥸�åȥ����ɽ�ͭ��̾��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,12,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (41,'���쥸�åȥ������ֹ�κǾ�ʸ����','CC_NUMBER_MIN_LENGTH','10','���쥸�åȥ������ֹ��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,13,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (42,'���쥸�åȥ�����CVV�ֹ�κǾ�ʸ����','CC_CVV_MIN_LENGTH','3','���쥸�åȥ�����CVV�ֹ��ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,13,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (43,'��ӥ塼��ʸ�ϤκǾ�ʸ����','REVIEW_TEXT_MIN_LENGTH','50','��ӥ塼��ʸ�Ϥ�ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,14,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (44,'�٥��ȥ��顼�κǾ�ɽ�����','MIN_DISPLAY_BESTSELLERS','1','�٥��ȥ��顼�Ȥ���ɽ�����뾦�ʤκǾ��ͤ����ꤷ�ޤ���',2,15,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (45,'�֤���ʾ��ʤ�������Ƥ��ޤ��פκǾ�ɽ����','MIN_DISPLAY_ALSO_PURCHASED','1','�֤��ξ��ʤ���������ͤϤ���ʾ��ʤ�������Ƥ��ޤ��פ�ɽ�����뾦�ʿ��κǾ��ͤ����ꤷ�ޤ���',2,16,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (46,'�˥å��͡���κǾ�ʸ����','ENTRY_NICK_MIN_LENGTH','3','�˥å��͡����ʸ�����κǾ��ͤ����ꤷ�ޤ���',2,1,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (47,'���ɥ쥹Ģ�κ�����Ͽ��','MAX_ADDRESS_BOOK_ENTRIES','5','�ܵҤ���Ͽ�Ǥ��륢�ɥ쥹Ģ����Ͽ���κ����ͤ����ꤷ�ޤ���',3,1,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (48,'�������� - 1�ڡ�����ɽ�����븡����̤κ����','MAX_DISPLAY_SEARCH_RESULTS','20','�������̤�1�ڡ�����ɽ�����븡����̤ο��κ����ͤ����ꤷ�ޤ���',3,2,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (49,'�ڡ�������󥯿��κ���ɽ����','MAX_DISPLAY_PAGE_LINKS','5','���ʥꥹ�Ȥ��������ΰ���ɽ���ǥڡ����β��ʤɤ�ɽ�������ڡ���������󥯿��κ����ͤ����ꤷ�ޤ���',3,3,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (50,'�ò����ʤκ���ɽ����','MAX_DISPLAY_SPECIAL_PRODUCTS','9','�ò����ʤȤ���ɽ�����뾦�ʿ��κ����ͤ����ꤷ�ޤ���',3,4,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (51,'����ο��徦�ʤκ���ɽ����','MAX_DISPLAY_NEW_PRODUCTS','9','����ο��徦�ʿ��κ����ͤ����ꤷ�ޤ���',3,5,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (52,'����ͽ�꾦�ʤκ���ɽ����','MAX_DISPLAY_UPCOMING_PRODUCTS','10','����ͽ�꾦�ʤȤ���ɽ�����뾦�ʿ��κ����ͤ����ꤷ�ޤ���',3,6,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (53,'�᡼�����ꥹ�� - ��������ܥå����Υ�����/��������','MAX_MANUFACTURERS_LIST','3','��������ܥå�����ɽ�������᡼�������� ?<br />1��0�����ꤹ��ȥɥ�åץ�����ꥹ�Ȥˤʤ�ޤ���',3,7,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (54,'�᡼�����ꥹ�� - ���ʤ�¸�ߤ��ǧ','PRODUCTS_MANUFACTURERS_STATUS','1','�ƥ᡼�����ˤĤ��ơ�1���ʾ�ξ��ʤ����ꡢ���ı�����ǽ�Ǥ��뤫�ɤ������ǧ���ޤ���?<br /><br />��ա����ε�ǽ��ON�ξ�硢���ʿ���᡼�����ο���¿����ɽ�����٤��ʤ�ޤ���<br />0= off 1= on',3,7,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (55,'���ڥ�����ꥹ�� - ��������ܥå����Υ�����/��������','MAX_MUSIC_GENRES_LIST','3','��������ܥå�����ɽ������벻�ڥ�����ꥹ�Ȥο������ꤷ�ޤ���1��0�����ꤹ��ȡ��ɥ�åץ�����ꥹ�Ȥˤʤ�ޤ���\r\n',3,7,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (56,'�쥳���ɲ�ҥꥹ�� - ��������ܥå����Υ�����/��������','MAX_RECORD_COMPANY_LIST','3','��������ܥå�����ɽ�������쥳���ɲ�ҥꥹ�Ȥο��Ǥ���1��0�����ꤹ��ȡ��ɥ�åץ�����ꥹ�Ȥˤʤ�ޤ���\r\n',3,7,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (57,'�쥳���ɲ��̾ɽ����Ĺ��','MAX_DISPLAY_RECORD_COMPANY_NAME_LEN','15','�쥳���ɲ��̾�ܥå�����ɽ�������̾����Ĺ�������ꤷ�ޤ���������Ĺ��̾���Ͼ�άɽ������ޤ���\r\n',3,8,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (58,'���ڥ�����̾��ʸ������Ĺ��','MAX_DISPLAY_MUSIC_GENRES_NAME_LEN','15','���ڥ�����ܥå�����ɽ�������̾����Ĺ�������ꤷ�ޤ���������Ĺ��̾���Ͼ�άɽ������ޤ���\r\n',3,8,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (59,'�᡼����̾��Ĺ��','MAX_DISPLAY_MANUFACTURER_NAME_LEN','15','�᡼�����ꥹ�Ȥ�ɽ�������᡼����̾��ʸ�����κ����ͤ����ꤷ�ޤ���',3,8,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (60,'��������ӥ塼��ɽ����������','MAX_DISPLAY_NEW_REVIEWS','6','��������ӥ塼�Ȥ���ɽ���������κ����ͤ����ꤷ�ޤ���',3,9,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (61,'��ӥ塼�Υ�����ɽ����','MAX_RANDOM_SELECT_REVIEWS','10','�������ɽ�������ӥ塼���κ����ͤ����ꤷ�ޤ���<br /><br />��ա����������ͤ�X�Ȥ���ȡ�������ɽ�����оݤˤʤ�Τϡ���äȤ�Ť������ƥ��֤ʥ�ӥ塼���������X���ܤ���Ͽ���줿�����ƥ��֤ʥ�ӥ塼�ޤǤˤʤ�ޤ���',3,10,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (62,'���徦�ʤΥ�����ɽ����','MAX_RANDOM_SELECT_NEW','10','�������ɽ�����뿷�徦�ʿ��κ����ͤ����ꤷ�ޤ���<br /><br />��ա����������ͤ�X�Ȥ���ȡ�������ɽ�����оݤˤʤ�Τϡ���äȤ�Ť������ƥ��֤ʿ��徦�ʤ��������X���ܤ���Ͽ���줿�����ƥ��֤ʿ��徦�ʤޤǤˤʤ�ޤ���',3,11,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (63,'�ò����ʤΥ�����ɽ����','MAX_RANDOM_SELECT_SPECIALS','10','�������ɽ�������ò����ʿ��κ����ͤ����ꤷ�ޤ���<br /><br />��ա����������ͤ�X�Ȥ���ȡ�������ɽ�����оݤˤʤ�Τϡ���äȤ�Ť������ƥ��֤��ò����ʤ��������X���ܤ���Ͽ���줿�����ƥ��֤��ò����ʤޤǤˤʤ�ޤ���',3,12,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (64,'��Ԥ�ɽ�����륫�ƥ����','MAX_DISPLAY_CATEGORIES_PER_ROW','3','��Ԥ�ɽ�����륫�ƥ���������ꤷ�ޤ���',3,13,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (65,'���徦�ʰ���ɽ����','MAX_DISPLAY_PRODUCTS_NEW','10','���徦�ʥڡ������ڡ�����ɽ�����뾦�ʿ��κ����ͤ����ꤷ�ޤ���',3,14,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (66,'�٥��ȥ��顼�κ���ɽ�����','MAX_DISPLAY_BESTSELLERS','10','�٥��ȥ��顼�ڡ������ڡ�����ɽ������٥��ȥ��顼���ʿ��κ����ͤ����ꤷ�ޤ���',3,15,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (67,'�֤���ʾ��ʤ���äƤ��ޤ��פκ���ɽ�����','MAX_DISPLAY_ALSO_PURCHASED','6','�֤���ʾ��ʤ���äƤ��ޤ������ɽ�����뾦�ʿ��κ����ͤ����ꤷ�ޤ���',3,16,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (68,'�ܵҤ���ʸ����ܥå����κ���ɽ����','MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX','6','�ܵҤ���ʸ����ܥå�����ɽ�����뾦�ʿ��κ����ͤ����ꤷ�ޤ���',3,17,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (69,'��ʸ����ڡ����κ���ɽ�����','MAX_DISPLAY_ORDER_HISTORY','10','�ܵҤ���ʸ����ڡ������ڡ�����ɽ�����뾦�ʿ��κ����ͤ����ꤷ�ޤ���',3,18,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (70,'�ܵҴ����ڡ�����ɽ������ܵҿ��κ�����','MAX_DISPLAY_SEARCH_RESULTS_CUSTOMER','20','',3,19,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (71,'��ʸ�����ڡ�����ɽ��������ʸ���κ�����','MAX_DISPLAY_SEARCH_RESULTS_ORDERS','20','',3,20,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (72,'��ݡ��ȥڡ�����ɽ�����뾦�ʿ��κ�����','MAX_DISPLAY_SEARCH_RESULTS_REPORTS','20','',3,21,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (73,'���ƥ���/���ʥڡ�����ɽ������ꥹ�ȿ�','MAX_DISPLAY_RESULTS_CATEGORIES','10','���ڡ�����ɽ�����뾦�ʿ��κ����ͤ����ꤷ�ޤ���',3,22,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (74,'���ʥꥹ�� - �ڡ������������ɽ����','MAX_DISPLAY_PRODUCTS_LISTING','10','�ȥåץڡ����ξ��ʥꥹ��ɽ���Ǥκ���ɽ���������ꤷ�ޤ���',3,30,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (75,'���ʥ��ץ���� - ���ץ����̾�ȥ��ץ�����ͤ�ɽ��','MAX_ROW_LISTS_OPTIONS','10','���ʥ��ץ����ڡ�����ɽ�����륪�ץ����̾/���ץ�����ͤκ����ͤ����ꤷ�ޤ���',3,24,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (76,'���ʥ��ץ���� - ���ץ�����������','MAX_ROW_LISTS_ATTRIBUTES_CONTROLLER','30','���ץ����������̤�ɽ�����륪�ץ������κ����ͤ����ꤷ�ޤ���',3,25,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (77,'����°��- ��������ɴ����ڡ�����ɽ��','MAX_DISPLAY_SEARCH_RESULTS_DOWNLOADS_MANAGER','30','��������ɴ������̤ǡ���������ɾ��ʤ�°���κ���ɽ���������ꤷ�ޤ���',3,26,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (78,'�������ᾦ�� - �������̤ǤΥڡ���������ɽ�������','MAX_DISPLAY_SEARCH_RESULTS_FEATURED_ADMIN','10','�������̤ˤ����ơ��ڡ���������Τ������ᾦ�ʤ����ɽ����������ꤷ�ޤ���',3,27,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (79,'�������ᾦ�� - �ȥåץڡ����Ǥκ���ɽ����','MAX_DISPLAY_SEARCH_RESULTS_FEATURED','9','�ȥåץڡ����Ǥ������ᾦ�ʤ���粿��ɽ�����뤫�����ꤷ�ޤ���',3,28,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (80,'�������ᾦ�� - ���ʥꥹ�ȤǤκ���ɽ����','MAX_DISPLAY_PRODUCTS_FEATURED_PRODUCTS','10','���ʥꥹ�ȤǤ������ᾦ�ʤ�ڡ�����������粿��ɽ�����뤫�����ꤷ�ޤ���',3,29,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (81,'�������ᾦ�ʤΥ�����ɽ���ܥå��� - ����ɽ����','MAX_RANDOM_SELECT_FEATURED_PRODUCTS','10','�������ᾦ�ʤΥ�����ɽ���ܥå����ˤ����ơ����粿��ɽ�����뤫�����ꤷ�ޤ���',3,30,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (82,'�ò����� - �ȥåץڡ����Ǥκ���ɽ������','MAX_DISPLAY_SPECIAL_PRODUCTS_INDEX','9','�ȥåץڡ����ǡ��ò����ʤ���粿��ɽ�����뤫�����ꤷ�ޤ���',3,31,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (83,'���徦�� - ɽ������','SHOW_NEW_PRODUCTS_LIMIT','0','���徦�ʤ�ɽ�����¤����ꤷ�ޤ���<br />\r\n<br />\r\n��0=���ơ��߽�<br />\r\n��1=������Ͽʬ�Τ�<br />\r\n��30=��Ͽ����30����<br />\r\n��60=��Ͽ����60����(�ۤ�90��120�����꤬��ǽ)',3,40,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'7\', \'14\', \'30\', \'60\', \'90\', \'120\'), ');
INSERT INTO configuration VALUES (84,'���ʰ����ڡ��� - �ڡ���������ɽ������','MAX_DISPLAY_PRODUCTS_ALL','10','���ʰ����ˤ����ơ��ڡ���������κ���ɽ�����������ꤷ�ޤ���',3,45,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (85,'���쥵���ɥܥå��� -���ե�å�����ɽ����','MAX_LANGUAGE_FLAGS_COLUMNS','3','���쥵���ɥܥå����ˤ����ơ��󤢤���Υե�å��κ���ɽ�����������ꤷ�ޤ���',3,50,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (86,'�ե�����Υ��åץ��ɥ����� - ���','MAX_FILE_UPLOAD_SIZE','2048000','�ե����륢�åץ��ɤκݤξ�¥����������ꤷ�ޤ����ǥե���Ȥ�2MB(2,048,000�Х���)�Ǥ���',3,60,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (87,'���åץ��ɥե�����˵��Ĥ���ե����륿����','UPLOAD_FILENAME_EXTENSIONS','jpg,jpeg,gif,png,eps,cdr,ai,pdf,tif,tiff,bmp,zip','�桼���������åץ��ɤ���ե�������Ф��Ƶ��Ĥ���ե����륿���פγ�ĥ�Ҥ����ꤷ�ޤ���ʣ���ξ��ϥ����(,)�Ƕ��ڤꡢ�����(.)�ϴޤ�ʤ��Ǥ���������<br /><br />������: \"jpg,jpeg,gif,png,eps,cdr,ai,pdf,tif,tiff,bmp,zip\"',3,61,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea(');
INSERT INTO configuration VALUES (88,'�������̤���ʸ�ꥹ�Ȥ�ɽ��������ʸ�ܺ٤κ�����','MAX_DISPLAY_RESULTS_ORDERS_DETAILS_LISTING','0','�������̤���ʸ�ꥹ�ȤǤ���ʸ�ܺ٤κ���ɽ�������?<br />0 = ̵����',3,65,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (89,'�������̤Υꥹ�Ȥ�ɽ������PayPal IPN�κ�����','MAX_DISPLAY_SEARCH_RESULTS_PAYPAL_IPN','20','�������̤Υꥹ�ȤǤ�PayPal IPN��ɽ�������?<br />�ǥե���Ȥ�20�Ǥ���',3,66,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (90,'�ޥ�����ƥ���ޥ͡�����Ǿ��ʤ�ɽ�����륫���κ����','MAX_DISPLAY_PRODUCTS_TO_CATEGORIES_COLUMNS','3','�ޥ�����ƥ���ޥ͡�����(Multiple Categories Manager)�Ǿ��ʤ�ɽ�����륫���κ������?<br />3 = �ǥե����',3,70,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (91,'EZ�ڡ�����ɽ���κ�����','MAX_DISPLAY_SEARCH_RESULTS_EZPAGE','20','EZ�ڡ�����ɽ���κ�������?<br />20 = �ǥե����',3,71,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (92,'���ʲ���(��)�β���','SMALL_IMAGE_WIDTH','100','�����ʲ����β���(�ԥ�����)�����ꤷ�ޤ���',4,1,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (93,'���ʲ���(��)�ι⤵','SMALL_IMAGE_HEIGHT','80','�����ʲ����ι⤵(�ԥ�����)�����ꤷ�ޤ���',4,2,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (94,'�إå������β��� - ��������','HEADING_IMAGE_WIDTH','57','�������̤ǤΥإå������β��������ꤷ�ޤ���',4,3,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (95,'�إå������ι⤵ - ��������','HEADING_IMAGE_HEIGHT','40','�������̤ǤΥإå������ι⤵�����ꤷ�ޤ���',4,4,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (96,'���֥��ƥ�������β���','SUBCATEGORY_IMAGE_WIDTH','100','���֥��ƥ�������β�����ԥ�����������ꤷ�ޤ���',4,5,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (97,'���֥��ƥ�������ι⤵','SUBCATEGORY_IMAGE_HEIGHT','57','���֥��ƥ�������ι⤵��ԥ�����������ꤷ�ޤ���',4,6,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (98,'������������׻�','CONFIG_CALCULATE_IMAGE_SIZE','true','������������ưŪ�˷׻����뤫�ɤ��������ꤷ�ޤ���',4,7,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (99,'������ɬ�ܤȤ���','IMAGE_REQUIRED','true','�������ʤ����Ȥ�ɽ�����ޤ���(�������κ�������ͭ��)',4,8,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (100,'����åԥ󥰥����Ȥ���� - ���ʲ�����ɽ�����󡦥���','IMAGE_SHOPPING_CART_STATUS','1','����åԥ󥰥����Ȥ���Ȥ����äƤ��뾦�ʤβ�����ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= on',4,9,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (101,'����åԥ󥰥����Ȥ���Ȥβ����β���','IMAGE_SHOPPING_CART_WIDTH','50','�ǥե���� = 50',4,10,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (102,'����åԥ󥰥����Ȥ���Ȥβ����ι⤵','IMAGE_SHOPPING_CART_HEIGHT','40','�ǥե���� = 40',4,11,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (103,'���ʾ��� - ���ƥ��ꥢ����������β���','CATEGORY_ICON_IMAGE_WIDTH','57','���ʾ���ڡ����ǤΥ��ƥ��ꥢ������β���(�ԥ������)��?',4,13,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (104,'���ʾ��� - ���ƥ��ꥢ����������ι⤵','CATEGORY_ICON_IMAGE_HEIGHT','40','���ʾ���ڡ����ǤΥ��ƥ��ꥢ������ι⤵(�ԥ������)��?',4,14,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (105,'���ʾ��� - �����β���','MEDIUM_IMAGE_WIDTH','150','���ʲ����β��������ꤷ�ޤ���',4,20,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (106,'���ʾ��� - �����ι⤵','MEDIUM_IMAGE_HEIGHT','120','���ʲ����ι⤵�����ꤷ�ޤ���',4,21,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (107,'���ʾ��� - ����(��)�Υե�����������(Suffix)','IMAGE_SUFFIX_MEDIUM','_MED','���ʲ����Υե����������������ꤷ�ޤ���<br /><br />���ǥե���� = _MED',4,22,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (108,'���ʾ��� - ����(��)�Υե�����������(Suffix)','IMAGE_SUFFIX_LARGE','_LRG','���ʲ����Υե����������������ꤷ�ޤ���<br /><br />\r\n���ǥե���� = _LRG',4,23,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (109,'���ʾ��� - ���Ԥ�ɽ�������ɲò�����','IMAGES_AUTO_ADDED','3','���ʾ���ǣ��Ԥ�ɽ�������ɲò����������ꤷ�ޤ���<br /><br />\r\n���ǥե���� = 3',4,30,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (110,'���ʥꥹ�� - �����β���','IMAGE_PRODUCT_LISTING_WIDTH','100','�ǥե���� = 100',4,40,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (111,'���ʥꥹ�� - �����ι⤵','IMAGE_PRODUCT_LISTING_HEIGHT','80','�ǥե���� = 80',4,41,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (112,'�����ʥꥹ�� - �����β���','IMAGE_PRODUCT_NEW_LISTING_WIDTH','100','�ǥե���� = 100',4,42,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (113,'�����ʥꥹ�� - �����ι⤵','IMAGE_PRODUCT_NEW_LISTING_HEIGHT','80','�ǥե���� = 80',4,43,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (114,'������ - �����β���','IMAGE_PRODUCT_NEW_WIDTH','100','�ǥե���� = 100',4,44,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (115,'������ - �����ι⤵','IMAGE_PRODUCT_NEW_HEIGHT','80','�ǥե���� = 80',4,45,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (116,'�������ᾦ�� -��������','IMAGE_FEATURED_PRODUCTS_LISTING_WIDTH','100','�ǥե���� = 100',4,46,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (117,'�������ᾦ�� - �����ι⤵','IMAGE_FEATURED_PRODUCTS_LISTING_HEIGHT','80','�ǥե���� = 80',4,47,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (118,'�����ʰ��� - ��������','IMAGE_PRODUCT_ALL_LISTING_WIDTH','100','�ǥե���� = 100',4,48,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (119,'�����ʰ��� - �����ι⤵','IMAGE_PRODUCT_ALL_LISTING_HEIGHT','80','�ǥե���� = 80',4,49,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (120,'���ʲ��� - �������ʤ�����No Image����','PRODUCTS_IMAGE_NO_IMAGE_STATUS','1','��No Image�ײ�����ưŪ��ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= On<br />',4,60,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (121,'���ʲ��� - No Image�����λ���','PRODUCTS_IMAGE_NO_IMAGE','no_picture.gif','���ʲ������ʤ�����ɽ������No Image���������ꤷ�ޤ���<br /><br />Default = no_picture.gif',4,61,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (122,'���ʲ��� - ���ʡ����ƥ���ǥץ�ݡ�����ʥ�ʲ�����Ȥ�','PROPORTIONAL_IMAGES_STATUS','1','���ʾ��󡦥��ƥ���ǥץ�ݡ�����ʥ�ʲ�����Ȥ��ޤ���?<br /><br />��ա��ץ�ݡ�����ʥ�����ˤϹ⤵�������Ȥ�\"0\"(�ԥ�����)����ꤷ�ʤ��Ǥ���������<br />0= off 1= on',4,75,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (123,'(�᡼����)�ɾ�ɽ��(Mr. or Ms)','ACCOUNT_GENDER','true','�ܵҤΥ�������Ⱥ����κݡ��᡼���Ѥηɾ�(Mr. or Ms) ��ɽ�����뤫�ɤ��������ꤷ�ޤ���',5,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (124,'��ǯ����','ACCOUNT_DOB','true','�ܵҤΥ�������Ⱥ����κݡ�����ǯ�����פ����ɽ�����뤫�ɤ��������ꤷ�ޤ���<br />���: ���פʾ���false�ˡ�ɬ�פʾ���true����ꤷ�Ƥ���������',5,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (125,'���̾','ACCOUNT_COMPANY','true','�ܵҤΥ�������Ⱥ����κݡ��ֲ��̾�פ�ɽ�����뤫�ɤ��������ꤷ�ޤ���',5,3,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (126,'����2','ACCOUNT_SUBURB','false','�ܵҤΥ�������Ⱥ����κݡ��ֽ���2�פ�ɽ�����뤫�ɤ��������ꤷ�ޤ���',5,4,'2010-06-16 16:55:31','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (127,'��ƻ�ܸ�̾','ACCOUNT_STATE','true','�ܵҤΥ�������Ⱥ����κݡ�����ƻ�ܸ�̾�פ�ɽ�����뤫�ɤ��������ꤷ�ޤ���',5,5,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (128,'��ƻ�ܸ�̾ - �ɥ�åץ������ɽ��','ACCOUNT_STATE_DRAW_INITIAL_DROPDOWN','false','����ƻ�ܸ�̾�פϾ�˥ɥ�åץ����������ɽ�����ޤ���?',5,5,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (129,'��������ȤΥǥե���ȹ���ID�κ���','SHOW_CREATE_ACCOUNT_DEFAULT_COUNTRY','107','��������ȤΥǥե���ȹ���ID�����ꤷ�ޤ���<br />�ǥե���Ȥ�223�Ǥ���',5,6,NULL,'2009-11-19 12:39:39','zen_get_country_name','zen_cfg_pull_down_country_list_none(');
INSERT INTO configuration VALUES (130,'Fax�ֹ�','ACCOUNT_FAX_NUMBER','true','�ܵҤΥ�������Ⱥ����κݡ���Fax�ֹ�פ�ɽ�����뤫�ɤ��������ꤷ�ޤ���',5,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (131,'�᡼��ޥ�����Υ����å��ܥå�����ɽ��','ACCOUNT_NEWSLETTER_STATUS','1','�᡼��ޥ�����Υ����å��ܥå�����ɽ������򤷤ޤ���<br />0= ɽ������<br />1= �ܥå���ɽ���������å��ʤ�����<br />2= �ܥå���ɽ���������å��������<br />����աۥǥե���Ȥǡ֥����å�����פξ��֤ˤ��Ƥ����ȡ��ƹ�Υ��ѥ൬��ˡ�����񿨤��붲�줬����ޤ���',5,45,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ');
INSERT INTO configuration VALUES (132,'�ǥե���ȤΥ᡼�����������','ACCOUNT_EMAIL_PREFERENCE','0','�ܵҤΥǥե���ȤΥ᡼����������ꤷ�ޤ���<br />0= �ƥ����ȷ���<br />1= HTML����',5,46,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (133,'�ܵҤؤξ��ʤ����� - ���ơ�����','CUSTOMERS_PRODUCTS_NOTIFICATION_STATUS','1','�ܵҤ������å������ȸ�ˡ����ʤ�����(product notifications)�ˤĤ��ƿҤͤ뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= �Ҥͤʤ�<br />\r\n��1= �Ҥͤ�(���������Τ��Ф������ꤵ��Ƥ��ʤ����)<br />\r\n����աۥ����ɥܥå����Ϥ�������Ȥ��̤˥��դˤ���ɬ�פ�����ޤ���',5,50,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (134,'���ʡ����ʤα�������','CUSTOMERS_APPROVAL','0','�ܵҤ�����å���Ǿ��ʤ���ʤ��������Τ����¤��뤫�ɤ��������ꤷ�ޤ���<br />0= �ץ�����ʤɤ����¤ʤ�<br />1= �֥饦���ˤϥ�����ɬ��<br />2= ������ʤ��ǥ֥饦����ǽ�������ʤ���ɽ��<br />3= ���ʱ����Τ�<br /><br />����աۥ��ץ�����2�פϡ����������󥸥�Υ�ܥåȤ˼������줿���ʤ����䡢������ѤߤθܵҤˤΤ߲��ʤ򳫼�����������ͭ���Ǥ���',5,55,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ');
INSERT INTO configuration VALUES (135,'�ܵҤι����������饤��','CUSTOMERS_APPROVAL_AUTHORIZATION','0','����åפǤι����˺ݤ��ơ��ܵҤϥ���å�¦�˿��������Ĥ����ɬ�פ����뤫�ɤ��������ꤷ�ޤ���<br />0= ����<br />1= ���ʤα����ˤ���Ĥ�ɬ��<br />2= ���ʤα����ϼ�ͳ�������ʤα����ϵ��Ĥ��줿�ܵҤΤ�<br />����աۥ��ץ�����2�פϥ��������󥸥�Υ�ܥåȽ������Ѥ��뤳�Ȥ�Ǥ��ޤ���',5,65,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ');
INSERT INTO configuration VALUES (136,'�ܵҤΥ������饤��(��������) - �ե�����̾','CUSTOMERS_AUTHORIZATION_FILENAME','customers_authorization','�ܵҤΥ������饤��(��������)�˻Ȥ��ե�����̾�����ꤷ�ޤ�����ĥ�Ҥʤ���ɽ�����Ƥ���������<br />�ǥե���Ȥ�\r\n\"customers_authorization\"',5,66,NULL,'2009-11-19 12:39:39',NULL,'');
INSERT INTO configuration VALUES (137,'�ܵҤΥ������饤��(��������) - �إå��򱣤�','CUSTOMERS_AUTHORIZATION_HEADER_OFF','false','�ܵҤΥ������饤��(��������) �ǥإå���ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true=hide<br />\r\n��false=show',5,67,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (138,'�ܵҤΥ������饤��(��������) - �������򱣤�','CUSTOMERS_AUTHORIZATION_COLUMN_LEFT_OFF','false','�ܵҤΥ������饤��(��������) �ǡ���������ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true=hide<br />\r\n��false=show',5,68,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (139,'�ܵҤΥ������饤��(��������) - �������򱣤�','CUSTOMERS_AUTHORIZATION_COLUMN_RIGHT_OFF','false','�ܵҤΥ������饤��(��������)�ǡ���������ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true=hide<br />\r\n��false=show',5,69,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (140,'�ܵҤΥ������饤��(��������) - �եå��򱣤�','CUSTOMERS_AUTHORIZATION_FOOTER_OFF','false','�ܵҤΥ������饤��(��������) �ǡ��եå���ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true=hide<br />\r\n��false=show',5,70,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (141,'�ܵҤΥ������饤��(��������) - ���ʤ���ɽ��','CUSTOMERS_AUTHORIZATION_PRICES_OFF','false','�ܵҤΥ������饤���ǡ����ʤ�ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��true=hide<br />\r\n��false=show',5,71,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (142,'�ܵҤξҲ�(Customers Referral)���ơ�����','CUSTOMERS_REFERRAL_STATUS','0','�ܵҤξҲ𥳡��ɤˤĤ������ꤷ�ޤ���<br />0= Off<br />1= 1st Discount Coupon Code used�ǽ�Υǥ���������ȥ����ݥ����ѺѤ�<br />2= ��������Ⱥ����κݡ��ܵҼ��Ȥ��ɲá��Խ���ǽ<br /><br />��ա��ܵҤξҲ𥳡��ɤ����åȤ����ȡ��������̤�������ѹ����뤳�Ȥ��Ǥ��ޤ���',5,80,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ');
INSERT INTO configuration VALUES (143,'���󥹥ȡ���Ѥߤλ�ʧ���⥸�塼��','MODULE_PAYMENT_INSTALLED','cc.php;cod.php;moneyorder.php;purchaseorder.php','���󥹥ȡ��뤵��Ƥ����ʧ���⥸�塼��Υե�����̾�Υꥹ��( ���ߥ����(;)���ڤ� )�Ǥ������ξ���ϼ�ưŪ�˹�������ޤ��Τ��Խ���ɬ�פϤ���ޤ���',6,0,'2010-06-04 14:41:51','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (144,'���󥹥ȡ���Ѥ���ʸ��ץ⥸�塼��','MODULE_ORDER_TOTAL_INSTALLED','ot_subtotal.php;ot_shipping.php;ot_coupon.php;ot_group_pricing.php;ot_tax.php;ot_gv.php;ot_cod_fee.php;ot_total.php','���󥹥ȡ��뤵��Ƥ�����ʸ��ץ⥸�塼��Υե�����̾�Υꥹ��(���ߥ����(;)���ڤ�)�Ǥ���\r\n<br /><br />\r\n����աۤ��ξ���ϼ�ưŪ�˹�������ޤ��Τ��Խ���ɬ�פϤ���ޤ���',6,0,'2010-06-27 04:42:19','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (145,'���󥹥ȡ���Ѥ������⥸�塼��','MODULE_SHIPPING_INSTALLED','flat.php;freeshipper.php;yamato.php','���󥹥ȡ��뤵��Ƥ��������⥸�塼��Υե�����̾�Υꥹ��(���ߥ����(;)���ڤ�)�Ǥ������ξ���ϼ�ưŪ�˹�������ޤ��Τ��Խ���ɬ�פϤ���ޤ���',6,0,'2010-06-04 14:29:45','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (146,'�������⥸�塼���ͭ���ˤ���','MODULE_PAYMENT_COD_STATUS','True','�������⥸�塼���ͭ���ˤ��뤫�ɤ��������ꤷ�ޤ���',6,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (147,'��ʧ���ϰ�','MODULE_PAYMENT_COD_ZONE','0','�ϰ�����򤷤���硢���򤵤줿�ϰ���Ф��ƤΤ߻�ʧ����ˡ��Ŭ�Ѥ���ޤ���',6,2,NULL,'2009-11-19 12:39:39','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes(');
INSERT INTO configuration VALUES (148,'ɽ���������','MODULE_PAYMENT_COD_SORT_ORDER','0','ɽ�������������ꤷ�ޤ����������������ۤɾ�̤�ɽ������ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (149,'��ʸ���ơ�����������','MODULE_PAYMENT_COD_ORDER_STATUS_ID','0','���λ�ʧ����ˡ�ξ�����ʸ���ơ����������ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39','zen_get_order_status_name','zen_cfg_pull_down_order_statuses(');
INSERT INTO configuration VALUES (150,'���쥸�åȥ����ɥ⥸�塼���ͭ���ˤ���','MODULE_PAYMENT_CC_STATUS','True','���쥸�åȥ����ɤˤ���ʧ����ͭ���ˤ��뤫�ɤ��������ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (151,'���쥸�åȥ������ֹ��ʬ�䤹��','MODULE_PAYMENT_CC_EMAIL','','�᡼�륢�ɥ쥹�����Ϥ��줿��硢���쥸�åȥ����ɤ���֤ο����򤽤Υ��ɥ쥹�����������Ĥ�γ�¦���ֹ��ǡ����١�������¸���ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (152,'CVV�ֹ����¸����','MODULE_PAYMENT_CC_COLLECT_CVV','false','CVV�ֹ�����/��¸���ޤ���? ��ա�ͭ���ˤ���ȡ�CVV�ֹ�ϥ��󥳡��ɤ��줿���֤ǥǡ����١�������¸����ޤ���',6,0,NULL,'2004-01-11 22:55:51',NULL,'zen_cfg_select_option(array(\'True\', \'False\'),');
INSERT INTO configuration VALUES (153,'���쥸�åȥ����ɥʥ�С����������¸����','MODULE_PAYMENT_CC_STORE_NUMBER','False','���쥸�åȥ������ֹ���������¸���뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n����աۥ��쥸�åȥ������ֹ�ϰŹ沽�ʤ�����¸����ޤ����������ƥ��������˽�ʬ��դ��Ƥ���������',6,0,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'),');
INSERT INTO configuration VALUES (154,'ɽ���������','MODULE_PAYMENT_CC_SORT_ORDER','0','ɽ�������������ꤷ�ޤ�. �������������ۤɾ�̤�ɽ������ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (155,'��ʧ���ϰ�','MODULE_PAYMENT_CC_ZONE','0','�ϰ�����򤷤���硢���򤵤줿�ϰ�ˤ������ƤΤ߻�ʧ����ˡ��Ŭ�Ѥ���ޤ���',6,2,NULL,'2009-11-19 12:39:39','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes(');
INSERT INTO configuration VALUES (156,'��ʸ���ơ�����','MODULE_PAYMENT_CC_ORDER_STATUS_ID','0','���λ�ʧ����ˡ�ξ�����ʸ���ơ����������ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39','zen_get_order_status_name','zen_cfg_pull_down_order_statuses(');
INSERT INTO configuration VALUES (157,'�������','MODULE_SHIPPING_FLAT_STATUS','True','�������ˤ���������󶡤��뤫�ɤ��������ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (158,'��������','MODULE_SHIPPING_FLAT_COST','5.00','���٤Ƥ���ʸ���Ф���Ŭ�Ѥ����������������ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (159,'�Ǽ���','MODULE_SHIPPING_FLAT_TAX_CLASS','0','��������Ŭ�Ѥ�����Ǽ��̤����򤷤ޤ���',6,0,NULL,'2009-11-19 12:39:39','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes(');
INSERT INTO configuration VALUES (160,'��Ψ�η׻��١���','MODULE_SHIPPING_FLAT_TAX_BASIS','Shipping','�������ˤ������Ƕ⥪�ץ��������ꤷ�ޤ���<br /><br />\r\n��Shipping - �ܵҤ������轻��˴�Ť�<br />\r\n��Billing - �ܵҤ������轻��˴�Ť�<br />\r\n��Store - ����åפν�߽���˴�Ť�(������/�����褬����å׽���Ϥ�Ʊ���ϰ�ξ���ͭ��)',6,0,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'Shipping\', \'Billing\', \'Store\'), ');
INSERT INTO configuration VALUES (161,'�����ϰ�','MODULE_SHIPPING_FLAT_ZONE','0','�����ϰ�����򤹤�����򤵤줿�ϰ�Τߤ����Ѳ�ǽ�ˤʤ�ޤ���',6,0,NULL,'2009-11-19 12:39:39','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes(');
INSERT INTO configuration VALUES (162,'ɽ���������','MODULE_SHIPPING_FLAT_SORT_ORDER','0','ɽ��������������Ǥ��ޤ����������������ۤɾ�̤�ɽ������ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (163,'�ǥե���Ȥ��̲�','DEFAULT_CURRENCY','JPY','�ǥե���Ȥ��̲ߤ����ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (164,'�ǥե���Ȥθ���','DEFAULT_LANGUAGE','ja','�ǥե���Ȥθ�������ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (165,'������ʸ�Υǥե���ȥ��ơ�����','DEFAULT_ORDERS_STATUS_ID','1','��������ʸ������դ����Ȥ��Υǥե���ȥ��ơ����������ꤷ�ޤ���',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (166,'�������̤����ꥭ��(configuration_key)��ɽ��','ADMIN_CONFIGURATION_KEY_ON','0','�������̤����ꥭ��(configuration_key)��ɽ�����ޤ���?<br />\r\nɽ������������1�����ꤷ�Ƥ���������',6,0,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (167,'�вٹ�̾','SHIPPING_ORIGIN_COUNTRY','107','�������η׻������Ѥ��뤿��ι�̾�����򤷤ޤ���',7,1,NULL,'2009-11-19 12:39:39','zen_get_country_name','zen_cfg_pull_down_country_list(');
INSERT INTO configuration VALUES (168,'����åפ�͹���ֹ�','SHIPPING_ORIGIN_ZIP','100-0000','����åפ�͹���ֹ�����Ϥ��ޤ���',7,2,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (169,'����������������ǽ�ʺ������(kg)','SHIPPING_MAX_WEIGHT','50','���������ǲ�ǽ�ʽ���(kg)�κ����ͤ����ꤷ�ޤ����㤨��10kg�����ꤷ�����֤ǥ����Ȥ�30kg�ξ��ʤ����ä���硢10kg �� 3��������Ȥ������ǽ�������ޤ���',7,3,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (170,'������ѥå����������� - ��Ψ������','SHIPPING_BOX_WEIGHT','0:3','ŵ��Ū�ʾ�����ѥå�����������(�դ��������礭���Ƚ���)�����ꤷ�ޤ���<br />\r\n�㡧10% + 1lb 10:1<br />\r\n10% + 0lbs 10:0<br />\r\n0% + 5lbs 0:5<br />\r\n0% + 0lbs 0:0',7,4,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (171,'�緿�ѥå����������� - �礭��������','SHIPPING_BOX_PADDING','10:0','�礭�ʥѥå���������������(�դ��������礭���Ƚ���)�����ꤷ�ޤ���<br />\r\n�㡧10% + 1lb 10:1<br />\r\n10% + 0lbs 10:0<br />\r\n0% + 5lbs 0:5<br />\r\n0% + 0lbs 0:0',7,5,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (172,'�Ŀ��Ƚ��̤�ɽ��','SHIPPING_BOX_WEIGHT_DISPLAY','3','���������ʪ�θĿ��Ƚ��̤�ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= �Ŀ��Τ�ɽ��<br />\r\n��2= ���̤Τ�ɽ��<br />\r\n��3= ξ��ɽ��',7,15,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ');
INSERT INTO configuration VALUES (173,'��������ɽ����ɽ������ɽ��','SHOW_SHIPPING_ESTIMATOR_BUTTON','1','���������ܥ����ɽ�����뤫�ɤ��������ꤷ�ޤ���<br />\r\n��0= Off<br />\r\n��1= ����åԥ󥰥����Ⱦ�˥ܥ���Ȥ���ɽ��',7,20,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ');
INSERT INTO configuration VALUES (174,'��ʸ�ν��̤�0�ʤ�����̵����','ORDER_WEIGHT_ZERO_STATUS','1','��ʸ�ν��̤�0�ξ�硢����̵���ˤ��ޤ���?\r\n<br />\r\n��0= ������<br />\r\n��1= �Ϥ�<br />\r\n��ա�������̵����ɽ���򤷤������ˤ�����̵���⥸�塼���Ȥ����Ȥ򤪴��ᤷ�ޤ������Υ��ץ����ϼºݤ�����̵���ΤȤ���ɽ�����������Ǥ���',7,15,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (175,'���ʥ��᡼����ɽ��','PRODUCT_LIST_IMAGE','1','���ʰ�����ξ��ʲ�����ɽ������ɽ��/�����Ƚ�����ꤷ�ޤ���<br /><br />\r\n�����ͤ��������ۤ����ɽ��<br />\r\n��0 = ��ɽ��',8,1,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (176,'���ʥ᡼������ɽ��','PRODUCT_LIST_MANUFACTURER','0','���ʤΥ᡼����̾��ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n�����ͤ��������ۤ����ɽ��<br />\r\n��0 = ��ɽ��',8,2,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (177,'���ʷ��֤�ɽ��','PRODUCT_LIST_MODEL','0','���ʰ�����ξ��ʷ��֤�ɽ������ɽ��/�����Ƚ�����ꤷ�ޤ������ͤ��������ۤ����ɽ������ޤ���(0 = ��ɽ��)',8,3,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (178,'����̾','PRODUCT_LIST_NAME','2','���ʰ�����ξ���̾��ɽ������ɽ��/�����Ƚ�����ꤷ�ޤ���<br /><br />\r\n�����ͤ��������ۤ����ɽ��<br />\r\n��0 = ��ɽ��',8,4,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (179,'���ʲ��ʡ��֥����Ȥ������פ�ɽ��','PRODUCT_LIST_PRICE','3','���ʲ��ʡ��֥����Ȥ������ץܥ����ɽ�����뤫�ɤ��������ꤷ�ޤ���<br />\r\n<br />\r\n�����ͤ��������ۤ����ɽ��<br />\r\n��0 = ��ɽ��',8,5,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (180,'���ʿ��̤�ɽ��','PRODUCT_LIST_QUANTITY','0','���ʰ�����ξ��ʿ��̤�ɽ������ɽ��/�����Ƚ�����ꤷ�ޤ���<br /><br />\r\n�����ͤ��������ۤ����ɽ��<br />\r\n��0 = ��ɽ��',8,6,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (181,'���ʽ��̤�ɽ��','PRODUCT_LIST_WEIGHT','0','���ʰ�����ξ��ʽ��̤�ɽ������ɽ��/�����Ƚ�����ꤷ�ޤ������ͤ��������ۤ����ɽ������ޤ���(0 = ��ɽ��)',8,7,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (182,'���ʲ��ʡ��֥����Ȥ������ץ�������','PRODUCTS_LIST_PRICE_WIDTH','125','���ʲ��ʡ��֥����Ȥ������ץܥ����ɽ�����륫������(�ԥ������)�����ꤷ�ޤ���<br />\r\n��Default= 125',8,8,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (183,'���ƥ���/�᡼�����ιʤ���ߤ�ɽ��','PRODUCT_LIST_FILTER','1','���ƥ�������ڡ����� [�ʤ����] ��ɽ�����뤫�ɤ��������ꤷ�ޤ���<br />\r\n��0=��ɽ��<br />\r\n��1=ɽ��',8,9,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (184,'[���ڡ���] [���ڡ���] ��ɽ������','PREV_NEXT_BAR_LOCATION','3','[���ڡ���] [���ڡ���] ��ɽ�����֤����ꤷ�ޤ���<br /><br />\r\n��1 = ��<br />\r\n��2 = ��<br />\r\n��3 = ξ��',8,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\'), ');
INSERT INTO configuration VALUES (185,'���ʥꥹ�ȤΥǥե���ȥ����Ƚ�','PRODUCT_LISTING_DEFAULT_SORT_ORDER','','���ʥꥹ�ȤΥǥե���ȤΥ����Ƚ�����ꤷ�ޤ���\r\n<br />\r\n��ա����ʤǥ����Ȥ�����϶���ˡ�\r\nSort the Product Listing in the order you wish for the default display to start in to get the sort order setting. Example: 2a',8,15,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (186,'�֥����Ȥ������ץܥ����ɽ��','PRODUCT_LIST_PRICE_BUY_NOW','1','�֥����Ȥ������ץܥ����ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= on',8,20,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (187,'ʣ�����ʤο������̵ͭ��ɽ������','PRODUCT_LISTING_MULTIPLE_ADD_TO_CART','3','ʣ�����ʤ򥫡��Ȥ������������ɽ�����뤫�ɤ����ȡ�ɽ�����֤����ꤷ�ޤ���<br />0= off<br />1= ����<br />2= ����<br />3= ξ��',8,25,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ');
INSERT INTO configuration VALUES (188,'����������ɽ��','PRODUCT_LIST_DESCRIPTION','150','����������ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />0= OFF<br />150= �侩����Ĺ�����ޤ��ϼ�ͳ��ɽ�����뾦�������κ���ʸ���������ꤷ�Ƥ���������',8,30,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (189,'���ʥꥹ�Ȥξ����ɽ�����뵭��','PRODUCT_LIST_SORT_ORDER_ASCENDING','+','���ʥꥹ�Ȥξ���򼨤������?<br />�ǥե���� = +',8,40,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (190,'���ʥꥹ�Ȥι߽��ɽ�����뵭��','PRODUCT_LIST_SORT_ORDER_DESCENDING','-','���ʥꥹ�Ȥι߽�򼨤������?<br />�ǥե���� = -',8,41,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (191,'�߸˿��Υ����å�','STOCK_CHECK','true','��ʬ�ʺ߸ˤ����뤫�����å����뤫�ɤ��������ꤷ�ޤ���',9,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (192,'�߸˿�����ޥ��ʥ�','STOCK_LIMITED','true','��������ǳƺ߸˿�������ʸ����ޥ��ʥ����ޤ���?',9,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (193,'�����å������Ȥ����','STOCK_ALLOW_CHECKOUT','true','�߸ˤ���­���Ƥ�����˥����å������Ȥ���Ĥ��ޤ���?',9,3,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (194,'�߸��ڤ쾦�ʤΥ�����','STOCK_MARK_PRODUCT_OUT_OF_STOCK','�߸��ڤ�Ǥ�','��ʸ�����Ǿ��ʤ��߸��ڤ�ξ��˸ܵҤ�ɽ�����륵��������ꤷ�ޤ���',9,4,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (195,'�߸ˤκ���ʸ���','STOCK_REORDER_LEVEL','5','�߸ˤκ���ʸ��ɬ�פˤʤ뾦�ʿ������ꤷ�ޤ���',9,5,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (196,'�߸��ڤ쾦�ʤΥ��ơ������ѹ�','SHOW_PRODUCTS_SOLD_OUT','0','���ʤκ߸ˤ��ʤ����Υ��ơ�����ɽ�������ꤷ�ޤ���<br /><br />0= ���ʥ��ơ�������OFF��<br />1= ���ʥ��ơ�������ON�Τޤ�',9,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (197,'�߸��ڤ쾦�ʤˡ�����ڤ�ײ���ɽ��','SHOW_PRODUCTS_SOLD_OUT_IMAGE','1','�߸ˤ��ʤ��ʤä����ʤξ��ˡ֥����Ȥ������ץܥ��������ˡ�����ڤ�ײ�����ɽ�����ޤ���?<br /><br />\r\n��0= ɽ�����ʤ�<br />\r\n��1= ɽ������',9,11,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (198,'���ʿ��̤˻���Ǥ��뾮�����η��','QUANTITY_DECIMALS','0','���ʤο��̤˾����������Ѥ���Ĥ����������ꤷ�ޤ���<br /><br />\r\n��0= off',9,15,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ');
INSERT INTO configuration VALUES (199,'����åԥ󥰥����� - �ֺ���ץ����å��ܥå���/�ܥ���','SHOW_SHOPPING_CART_DELETE','3','�ֺ���ץ����å��ܥå���/�ܥ����ɽ���ˤĤ������ꤷ�ޤ���<br /><br />1= �ܥ���Τ�<br />2= �����å��ܥå����Τ�<br />3= �ܥ���/�����å��ܥå���ξ��',9,20,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\'), ');
INSERT INTO configuration VALUES (200,'����åԥ󥰥����� -�֥����Ȥ���Ȥ򹹿��ץܥ���ΰ���','SHOW_SHOPPING_CART_UPDATE','3','�֥����Ȥ���Ȥ򹹿��ץܥ���ΰ��֤����ꤷ�ޤ���<br /><br />1=����ʸ������β�<br />2= ���ʥꥹ�Ȥβ�<br />3=����ʸ������β��Ⱦ��ʥꥹ�Ȥβ�<br /><br />��ա����������3�Ĥ�\"tpl_shopping_cart_default\"�ե����뤬�ƤФ����ʬ�����ꤷ�ޤ���',9,22,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\'), ');
INSERT INTO configuration VALUES (201,'�ڡ����Υѡ������פ������֤���˵�Ͽ���뤫�ɤ��������ꤷ�ޤ���','STORE_PAGE_PARSE_TIME','false','�ڡ����Υѡ������פ������֤���˵�Ͽ���뤫�ɤ��������ꤷ�ޤ���',10,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (202,'�ڡ����Υѡ���������¸����ǥ��쥯�ȥ�ȥե�����̾�����ꤷ�ޤ���','STORE_PAGE_PARSE_TIME_LOG','/var/log/www/zen/page_parse_time.log','�ڡ����Υѡ���������¸����ǥ��쥯�ȥ�ȥե�����̾�����ꤷ�ޤ���',10,2,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (203,'���˵�Ͽ�������շ��������ꤷ�ޤ���','STORE_PARSE_DATE_TIME_FORMAT','%d/%m/%Y %H:%M:%S','���˵�Ͽ�������շ��������ꤷ�ޤ���',10,3,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (204,'�ƥڡ����β��˥ѡ������֤�ɽ�����뤫�ɤ��������ꤷ�ޤ���<br />�֥ڡ����Υѡ������֤�Ͽ�פ� true �ˤ��Ƥ���ɬ�פϤ���ޤ���','DISPLAY_PAGE_PARSE_TIME','false','�ƥڡ����β��˥ѡ������֤�ɽ�����뤫�ɤ��������ꤷ�ޤ���<br />�֥ڡ����Υѡ������֤�Ͽ�פ� true �ˤ��Ƥ���ɬ�פϤ���ޤ���',10,4,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (205,'���˥ǡ����١��������꡼��Ͽ���Ƥ������ɤ������ꤷ�ޤ���(PHP4�ξ��Τ�)','STORE_DB_TRANSACTIONS','false','���˥ǡ����١��������꡼��Ͽ���Ƥ������ɤ������ꤷ�ޤ���(PHP4�ξ��Τ�)',10,5,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (206,'�᡼������ - ��³��ˡ','EMAIL_TRANSPORT','sendmail','�᡼��������sendmail�ؤΥ�������³����Ѥ��뤫TCP/IP��ͳ��SMTP��³����Ѥ��뤫�����ꤷ�ޤ��������Ф�OS��Windows��MacOS�ξ���SMTP�����ꤷ�Ƥ���������<br /><br />SMTPAUTH�ϡ������С����᡼�������κݤ�SMTP authorization�������ˤΤ߻ȤäƤ������������ξ�硢�������̤�SMTPAUTH�����Ԥ�ɬ�פ�����ޤ���<br /><br />\"Sendmail -f\"�ϡ�-f�ѥ�᡼����ɬ�פʥ����и���������ǡ����ס��ե��󥰤��ɤ�������Ѥ����뤳�Ȥ�¿���������ƥ��������Ǥ����᡼�륵���С��Υۥ���¦�ǻ��Ѳ�ǽ������ˤʤäƤ��ʤ���硢���顼�ˤʤ뤳�Ȥ�����ޤ���',12,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'sendmail\', \'sendmail-f\', \'smtp\', \'smtpauth\'),');
INSERT INTO configuration VALUES (207,'SMTPǧ�� - �᡼�륢�������','EMAIL_SMTPAUTH_MAILBOX','YourEmailAccountNameHere','���ʤ��Υۥ��ƥ��󥰥����ӥ����󶡤��Ƥ���᡼�륢�������(�㡧me@mydomain.com)�����Ϥ��Ƥ��������������SMTPǧ�ڤ�ɬ�פʾ���Ǥ���<br />�᡼���SMTPǧ�ڤ�ȤäƤ�����ˤΤ�ɬ�פǤ���',12,101,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (208,'SMTPǧ�� - �ѥ����','EMAIL_SMTPAUTH_PASSWORD','YourPasswordHere','SMTP�᡼��ܥå����Υѥ���ɤ����Ϥ��Ƥ���������<br />�᡼���SMTPǧ�ڤ�ȤäƤ�����ˤΤ�ɬ�פǤ���',12,101,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (209,'SMTPǧ�� - DNS̾','EMAIL_SMTPAUTH_MAIL_SERVER','mail.EnterYourDomain.com','SMTP�᡼�륵���Ф�DNS̾�����Ϥ��Ƥ���������<br />�㡧mail.mydomain.com or 55.66.77.88<br />�᡼���SMTPǧ�ڤ�ȤäƤ�����ˤΤ�ɬ�פǤ���',12,101,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (210,'SMTPǧ�� - IP�ݡ����ֹ�','EMAIL_SMTPAUTH_MAIL_SERVER_PORT','25','SMTP�᡼�륵���Ф����Ѥ���Ƥ���IP�ݡ����ֹ�����Ϥ��Ƥ���������<br />�᡼���SMTPǧ�ڤ�ȤäƤ�����ˤΤ�ɬ�פǤ���',12,101,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (211,'�ƥ����ȥ᡼��Ǥβ�ʾ���Ѵ�','CURRENCIES_TRANSLATIONS','&amp;pound;,��:&amp;euro;,EUR','�ƥ����ȷ����Υ᡼��ˡ��ɤ�ʲ�ʾ���Ѵ���ɬ�פǤ���?<br />Default = &amp;pound;,��:&amp;euro;,EUR',12,120,NULL,'2003-11-21 00:00:00',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (212,'�᡼��β��ԥ�����','EMAIL_LINEFEED','LF','�᡼��إå�����ڤ�Τ˻��Ѥ�����ԥ����ɤ���ꤷ�ޤ���',12,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'LF\', \'CRLF\'),');
INSERT INTO configuration VALUES (213,'�᡼��������MIME HTML�����','EMAIL_USE_HTML','false','�᡼���HTML�������������뤫�ɤ��������ꤷ�ޤ���',12,3,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (214,'�᡼�륢�ɥ쥹��DNS�ǳ�ǧ','ENTRY_EMAIL_ADDRESS_CHECK','false','�᡼�륢�ɥ쥹��DNS�����Ф��䤤��碌��ǧ���뤫�ɤ��������ꤷ�ޤ���',12,4,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (215,'�᡼�������','SEND_EMAILS','true','E-Mail�������������뤫�ɤ��������ꤷ�ޤ���',12,5,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (216,'�᡼����¸������','EMAIL_ARCHIVE','false','�����ѤߤΥ᡼�����¸���Ƥ�������true�����ꤷ�Ƥ���������',12,6,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (217,'�᡼���������顼��ɽ��','EMAIL_FRIENDLY_ERRORS','false','�᡼�����������Ԥ����ݡ����ܤǤ狼�륨�顼��ɽ�����ޤ���? ������Υ���åפǤ�true�����ꤹ�뤳�Ȥ򴫤�ޤ���false�����ꤹ���PHP�Υ��顼��å�������ɽ�������Τǡ��ȥ�֥���Υҥ�Ȥˤʤ�ޤ���',12,7,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (218,'�᡼�륢�ɥ쥹 (����åפ�ɽ�������䤤��碌��)','STORE_OWNER_EMAIL_ADDRESS','hachiya@ark-web.jp','����åץ����ʡ��Υ᡼�륢�ɥ쥹�Ȥ��ƥ����Ⱦ��ɽ������륢�ɥ쥹�����ꤷ�ޤ���',12,10,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (219,'�᡼�륢�ɥ쥹 (�ܵҤؤ�������)','EMAIL_FROM','hachiya@ark-web.jp','�ܵҤ����������᡼��Υǥե���Ȥ��������Ȥ���ɽ������륢�ɥ쥹�����ꤷ�ޤ���<br />\r\n�������̤ǥ᡼�������򤹤����١��񤭴����뤳�Ȥ�Ǥ��ޤ���',12,11,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (220,'�����᡼������������ɥ쥹�μº���','EMAIL_SEND_MUST_BE_STORE','No','���Ȥ��Υ᡼�륵���ФǤϡ���������᡼���������(From)���ɥ쥹��Web�����о�˼ºߤ��뤳�Ȥ�ɬ�ܤǤ���?<br /><br />spam�������ɻߤ���ʤɤΤ���ˤ��Τ褦�����ꤵ��Ƥ��뤳�Ȥ�����ޤ���Yes�����ꤹ��ȡ����������ɥ쥹�ȥ᡼�����From���ɥ쥹�����פ��Ƥ��뤳�Ȥ������ޤ���',12,11,NULL,'0001-01-01 00:00:00',NULL,'zen_cfg_select_option(array(\'No\', \'Yes\'), ');
INSERT INTO configuration VALUES (221,'�����Ԥ���������᡼��ե����ޥå�','ADMIN_EXTRA_EMAIL_FORMAT','TEXT','�����Ԥ����դ���᡼��ե����ޥåȤ����ꤷ�ޤ���<br /><br />\r\n��TEXT =�ƥ����ȷ���<br />\r\n��HTML =HTML����',12,12,NULL,'0001-01-01 00:00:00',NULL,'zen_cfg_select_option(array(\'TEXT\', \'HTML\'), ');
INSERT INTO configuration VALUES (222,'��ʸ��ǧ�᡼��(���ԡ�)������','SEND_EXTRA_ORDER_EMAILS_TO','hachiya@ark-web.jp','�ܵҤ������������ʸ��ǧ�᡼��Υ��ԡ������դ���᡼�륢�ɥ쥹�����ꤷ�ޤ���<br />������: ̾��1 &lt;email@address1&gt;, ̾��2 &lt;email@address2&gt;',12,12,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (223,'��������Ⱥ�����λ�᡼��(���ԡ�)������','SEND_EXTRA_CREATE_ACCOUNT_EMAILS_TO_STATUS','0','��������Ⱥ�����λ�᡼��Υ��ԡ������Υ᡼�륢�ɥ쥹���������ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',12,13,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),');
INSERT INTO configuration VALUES (224,'��������Ⱥ�����λ�᡼��(���ԡ�)��������','SEND_EXTRA_CREATE_ACCOUNT_EMAILS_TO','hachiya@ark-web.jp','��������Ⱥ�����λ�᡼��Υ��ԡ�����������᡼�륢�ɥ쥹�����ꤷ�ޤ���<br /><br />\r\n�����㡧 ̾��1 &lt;email@address1&gt;, ̾��2 &lt;email@address2&gt;',12,14,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (225,'��ͧã���Τ餻��ץ᡼��(���ԡ�)������','SEND_EXTRA_TELL_A_FRIEND_EMAILS_TO_STATUS','0','��ͧã���Τ餻��ץ᡼��Υ��ԡ����������ޤ���?<br />0= off 1= on',12,15,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),');
INSERT INTO configuration VALUES (226,'��ͧã���Τ餻��ץ᡼��(���ԡ�)��������','SEND_EXTRA_TELL_A_FRIEND_EMAILS_TO','hachiya@ark-web.jp','��ͧã���Τ餻��ץ᡼��Υ��ԡ�����������᡼�륢�ɥ쥹�����ꤷ�ޤ���������: ̾��1 &lt;email@address1&gt;, ̾��2 &lt;email@address2&gt;',12,16,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (227,'���եȷ����ե᡼��(���ԡ�)������','SEND_EXTRA_GV_CUSTOMER_EMAILS_TO_STATUS','0','�ܵҤ����դ��륮�եȷ����ե᡼��Υ��ԡ����������ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',12,17,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),');
INSERT INTO configuration VALUES (228,'���եȷ����ե᡼��(���ԡ�)��������','SEND_EXTRA_GV_CUSTOMER_EMAILS_TO','hachiya@ark-web.jp','�ܵҤ����դ��륮�եȷ����ե᡼��Υ��ԡ�����������᡼�륢�ɥ쥹�����ꤷ�ޤ���<br /><br />�����㡧 ̾��1 &lt;email@address1&gt;, ̾��2&lt;email@address2&gt;',12,18,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (229,'����åױ��ļԤ���Υ��եȷ����ե᡼��(���ԡ�)������','SEND_EXTRA_GV_ADMIN_EMAILS_TO_STATUS','0','����åױ��ļԤ���Υ��եȷ����ե᡼��Υ��ԡ����������ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',12,19,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),');
INSERT INTO configuration VALUES (230,'����åױ��ļԤ���Υ��եȷ����ե᡼��(���ԡ�)��������','SEND_EXTRA_GV_ADMIN_EMAILS_TO','hachiya@ark-web.jp','����åױ��ļԤ���Υ��եȷ����ե᡼��Υ��ԡ�����������᡼�륢�ɥ쥹�����ꤷ�ޤ���<br /><br />\r\n�����㡧̾��1 &lt;email@address1&gt;, ̾��2 &lt;email@address2&gt;',12,20,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (231,'����åױ��ļԤ���Υ����ݥ�����ե᡼��(���ԡ�)������','SEND_EXTRA_DISCOUNT_COUPON_ADMIN_EMAILS_TO_STATUS','0','����åױ��ļԤ���Υ����ݥ�����ե᡼��Υ��ԡ����������ޤ���?<br />0= off 1= on',12,21,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),');
INSERT INTO configuration VALUES (232,'����åױ��ļԤ���Υ����ݥ�����ե᡼��(���ԡ�)��������','SEND_EXTRA_DISCOUNT_COUPON_ADMIN_EMAILS_TO','hachiya@ark-web.jp','����åױ��ļԤ���Υ����ݥ�����ե᡼��Υ��ԡ�����������᡼�륢�ɥ쥹�����ꤷ�ޤ���<br /><br />\r\n�����㡧 ̾��1 &lt;email@address1&gt;, ̾��2 &lt;email@address2&gt;',12,22,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (233,'����åױ��ļԤ���ʸ���ơ������᡼��(���ԡ�)������','SEND_EXTRA_ORDERS_STATUS_ADMIN_EMAILS_TO_STATUS','0','����åױ��ļԤ���ʸ���ơ������᡼��Υ��ԡ����������ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',12,23,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),');
INSERT INTO configuration VALUES (234,'����åױ��ļԤ���ʸ���ơ������᡼��(���ԡ�)��������','SEND_EXTRA_ORDERS_STATUS_ADMIN_EMAILS_TO','hachiya@ark-web.jp','����åױ��ļԤ���ʸ���ơ������᡼��Υ��ԡ�����������᡼�륢�ɥ쥹�����ꤷ�ޤ���<br /><br />\r\n�����㡧 ̾��1 &lt;email@address1&gt;, ̾��2 &lt;email@address2&gt;',12,24,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (235,'�Ǻ��Ԥ���ӥ塼�ˤĤ��ƥ᡼������','SEND_EXTRA_REVIEW_NOTIFICATION_EMAILS_TO_STATUS','0','�Ǻ��Ԥ��Υ�ӥ塼�ˤĤ��ƥ᡼����������ޤ���?<br />0= off 1= on',12,25,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),');
INSERT INTO configuration VALUES (236,'�Ǻ��Ԥ���ӥ塼�ˤĤ��ƤΥ᡼��������','SEND_EXTRA_REVIEW_NOTIFICATION_EMAILS_TO','hachiya@ark-web.jp','�Ǻ��Ԥ��Υ�ӥ塼�ˤĤ��ƤΥ᡼����������륢�ɥ쥹�����ꤷ�ޤ���<br />�ե����ޥåȡ�Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,26,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (237,'�֤��䤤��碌�ץ᡼��Υɥ�åץ���������','CONTACT_US_LIST','','�֤��䤤��碌�ץڡ����ǡ��᡼�륢�ɥ쥹�Υꥹ�Ȥ����ꤷ���ɥ�åץ�����ꥹ�ȤȤ���ɽ���Ǥ��ޤ���<br />\r\n�ե����ޥåȡ�Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,40,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea(');
INSERT INTO configuration VALUES (238,'�����Ȥˡ�ͧã���Τ餻��׵�ǽ�����','ALLOW_GUEST_TO_TELL_A_FRIEND','false','������(̤��Ͽ�桼��)�ˡ�ͧã���Τ餻��׵�ǽ����Ĥ��뤫�ɤ��������ꤷ�ޤ��� <br />[false]�����ꤹ��ȡ����ε�ǽ�����Ѥ��褦�Ȥ����ݤ˥������¥���ޤ���',12,50,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (239,'�֤��䤤��碌�פ˥���å�̾�Ƚ����ɽ��','CONTACT_US_STORE_NAME_ADDRESS','1','�֤��䤤��碌�ײ��̤˥���å�̾�Ƚ����ɽ�����뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= on',12,50,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (240,'�߸ˤ鷺���ˤʤä���᡼������','SEND_LOWSTOCK_EMAIL','0','���ʤκ߸ˤ����򲼲�ä��ݤ˥᡼����������뤫�ɤ��������ꤷ�ޤ���<br />\r\n��0= off<br />\r\n��1= on',12,60,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),');
INSERT INTO configuration VALUES (241,'�߸ˤ鷺���ˤʤä��ݤΥ᡼��������','SEND_EXTRA_LOW_STOCK_EMAILS_TO','hachiya@ark-web.jp','���ʤκ߸ˤ����򲼲�ä��ݤ˥᡼����������륢�ɥ쥹�����ꤷ�ޤ���ʣ�����ꤹ�뤳�Ȥ��Ǥ��ޤ���<br />\r\n�ե����ޥåȡ�Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;',12,61,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (242,'�֥᡼��ޥ�����ι��ɲ���ץ�󥯤�ɽ��','SHOW_NEWSLETTER_UNSUBSCRIBE_LINK','true','�֥᡼��ޥ�����ι��ɲ���ץ�󥯤򥤥�ե��᡼����󥵥��ɥܥå�����ɽ�����ޤ���?',12,70,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (243,'����饤��桼��������ɽ������','AUDIENCE_SELECT_DISPLAY_COUNTS','true','����饤��Υ桼��(audiences/recipients)��ɽ������ݡ�recipients��ޤ�ޤ���?<br /><br />\r\n����աۤ��������true�ˤ���ȡ������θܵҤ�������ʤɤ�ɽ�����٤��ʤ��礬����ޤ���',12,90,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (244,'��������ɤ�ͭ���ˤ���','DOWNLOAD_ENABLED','true','���ʤΥ�������ɵ�ǽ�����ꤷ�ޤ���',13,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (245,'������쥯�Ȥǥ�������ɲ��̤�','DOWNLOAD_BY_REDIRECT','true','��������ɤκݤ˥֥饦���ˤ�������쥯��(ž��)���ǽ�ˤ��뤫�ɤ��������ꤷ�ޤ���<br />\r\nUNIX�ϤǤʤ������ФǤϥ��դˤ��Ƥ���������\r\n<br />��ա���������򥪥�ˤ����顢/pub �ǥ��쥯�ȥ�Υѡ��ߥå�����777�ˤ��Ƥ���������',13,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (246,'���ȥ꡼�ߥ󥰤ˤ����������','DOWNLOAD_IN_CHUNKS','false','�֥�����쥯�Ȥǥ�������ɡפ����դǡ�����PHP memory_limit���꤬8MB�ʲ��ξ�硢��������򥪥�ˤ��Ƥ������������ȥ꡼�ߥ󥰤ǡ���꾮����ñ�̤ǤΥե�����ž����Ԥ�����Ǥ���<br /><br />�֥�����쥯�Ȥǥ�������ɡפ�����ξ�硢���̤Ϥ���ޤ���',13,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (247,'��������ɤ�ͭ������(����)','DOWNLOAD_MAX_DAYS','7','��������ɥ�󥯤�ͭ�����֤����������ꤷ�ޤ���<br /><br />\r\n��0 = ̵����',13,3,NULL,'2009-11-19 12:39:39',NULL,'');
INSERT INTO configuration VALUES (248,'��������ɲ�ǽ���(���ʤ���)','DOWNLOAD_MAX_COUNT','5','��������ɤǤ������κ����ͤ����ꤷ�ޤ���<br /><br />\r\n��0 = ����������Բ�',13,4,NULL,'2009-11-19 12:39:39',NULL,'');
INSERT INTO configuration VALUES (249,'������������� - ��ʸ�����ˤ�빹��','DOWNLOADS_ORDERS_STATUS_UPDATED_VALUE','4','orders_status�ˤ���������ɤ�ͭ�����¡���ǽ����Υꥻ�åȤˤĤ������ꤷ�ޤ���<br />�ǥե���� = 4',13,10,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (250,'��������ɲ�ǽ�Ȥʤ���ʸ���ơ�������ID - �ǥե���� >= 2','DOWNLOADS_CONTROLLER_ORDERS_STATUS','2','��������ɲ�ǽ�Ȥʤ���ʸ���ơ�������ID - �ǥե���� >= 2<br /><br />��ʸ���ơ�������ID�������ͤ��⤤��ʸ�ϥ�������ɲ�ǽ�ˤʤ�ޤ���������λ������ʸ���ơ������ϻ�ʧ���⥸�塼���������ꤵ��ޤ���',13,12,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (251,'��������ɽ�λ�Ȥʤ���ʸ���ơ�������ID','DOWNLOADS_CONTROLLER_ORDERS_STATUS_END','4','��������ɽ�λ�Ȥʤ���ʸ���ơ�������ID - �ǥե���� >= 4<br /><br />��ʸ���ơ������������ͤ��⤤��ʸ�ϥ�������ɤ���λ�Ȥʤ�ޤ���',13,13,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (252,'Price Factor°�����ǽ�ˤ���','ATTRIBUTES_ENABLED_PRICE_FACTOR','true','Price Factor°�����ǽ�ˤ��뤫�ɤ��������ꤷ�ޤ���',13,25,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (253,'Qty Price Discount°���Υ���/����','ATTRIBUTES_ENABLED_QTY_PRICES','true','�����̹����ˤ���Ͱ�����°���Υ���/���դ����ꤷ�ޤ���',13,26,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (254,'���᡼��°���Υ���/����','ATTRIBUTES_ENABLED_IMAGES','true','���᡼��°���Υ���/���դ����ꤷ�ޤ���',13,28,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (255,'(���ա�ʸ���ˤ��)�ƥ����Ȥˤ���������Υ���/����','ATTRIBUTES_ENABLED_TEXT_PRICES','true','�ƥ����Ȥˤ����������°���Υ���/���դ����ꤷ�ޤ���',13,35,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (256,'�ƥ����Ȥˤ��������� - ����ξ���̵��','TEXT_SPACES_FREE','1','�ƥ����Ȥˤ���������ξ�硢����Τޤޤʤ�̵���ˤ��뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= on',13,36,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (257,'Read Only°���ξ��� -�֥����Ȥ������ץܥ����ɽ��','PRODUCTS_OPTIONS_TYPE_READONLY_IGNORED','1','READONLY°�����������ꤵ�줿���ʤˡ֥����Ȥ������ץܥ����ɽ�����ޤ���?<br />0= OFF<br />1= ON',13,37,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (258,'GZip���̤���Ѥ���','GZIP_LEVEL','0','HTTP�̿���GZip���̤���Ѥ��ƥڡ�����ž�����ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',14,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),');
INSERT INTO configuration VALUES (259,'���å���������¸�ǥ��쥯�ȥ�','SESSION_WRITE_DIRECTORY','/var/www/projects/z/zen-cart/htdocs/hachiya/zencart-sugu/cache','���å����������ե�����١����ξ�����¸����ǥ��쥯�ȥ�����ꤷ�ޤ���',15,1,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (260,'���å�������¸����ɥᥤ��̾������','SESSION_USE_FQDN','True','���å�������¸����ɥᥤ��̾�ˤĤ������ꤷ�ޤ���<br /><br />\r\n\r\n��True = �ɥᥤ��͡������Τ򥯥å�������¸(�㡧www.mydomain.com)<br />\r\n��False = �ɥᥤ��͡���ΰ�������¸(�㡧mydomain.com)��<br />\r\n�褯�狼��ʤ����Ϥ��������True�ˤ��Ƥ����Ƥ���������',15,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (261,'���å������Ѥ�ɬ�ܤˤ���','SESSION_FORCE_COOKIE_USE','True','���å�����ɬ�����å��������Ѥ��ޤ���True���ꤹ��ȥ֥饦���Υ��å��������դˤʤäƤ�����ϥ��å����򳫻Ϥ��ޤ��󡣥������ƥ������ͳ����;������ͳ�Τʤ��¤��True����ΤޤޤȤ��뤳�Ȥ򶯤��侩���ޤ���',15,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (262,'SSL���å����ID�����å�','SESSION_CHECK_SSL_SESSION_ID','False','���Ƥ�HTTPS�ꥯ�����Ȥ�SSL���å����ID������å����ޤ���?',15,3,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (263,'User Agent�����å�','SESSION_CHECK_USER_AGENT','False','���ƤΥꥯ�����Ȼ���User Agent�Υ����å���Ԥ��ޤ���?',15,4,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (264,'IP���ɥ쥹�����å�','SESSION_CHECK_IP_ADDRESS','False','���ƤΥꥯ�����Ȼ���IP���ɥ쥹������å����ޤ���?',15,5,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (265,'��ܥå�(���ѥ�����)�Υ��å������ɻ�','SESSION_BLOCK_SPIDERS','True','���ΤΥ�ܥå�(���ѥ�����)�����å����򳫻Ϥ��뤳�Ȥ��ɻߤ��ޤ���?',15,6,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (266,'���å�����ȯ��','SESSION_RECREATE','True','�桼������������ޤ��ϥ�������Ȥ�����������˥��å������ȯ�Ԥ��ޤ���?<br />(PHP4.1�ʾ夬ɬ��)',15,7,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (267,'IP���ɥ쥹�Ѵ�������','SESSION_IP_TO_HOST_ADDRESS','true','IP���ɥ쥹��ۥ��ȥ��ɥ쥹���Ѵ����ޤ���?<br /><br />��ա������Фˤ�äƤϡ���������ǥ᡼�������Υ������ȡ���λ���٤��ʤ뤳�Ȥ�����ޤ���',15,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (268,'���ե�/�����ݥ�������ɤ�Ĺ��','SECURITY_CODE_LENGTH','10','���ե�/�����ݥ�������ɤ�Ĺ�������ꤷ�ޤ���<br /><br />\r\n��ա������ɤ�Ĺ���ۤɰ����Ǥ���',16,1,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (269,'�����Ĺ�0�ξ�����ʸ���ơ�����','DEFAULT_ZERO_BALANCE_ORDERS_STATUS_ID','2','��ʸ�κ����Ĺ⤬0�ξ���Ŭ�Ѥ������ʸ���ơ����������ꤷ�ޤ���',16,0,NULL,'2009-11-19 12:39:39','zen_get_order_status_name','zen_cfg_pull_down_order_statuses(');
INSERT INTO configuration VALUES (270,'�����륫�९���ݥ��','NEW_SIGNUP_DISCOUNT_COUPON','','�����Ͽ���ˤ��β���˥����륫�९���ݥ���Ȥ��Ƽ�ưȯ�Ԥ��륯���ݥ�������򤷤Ƥ���������',16,75,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_coupon_id(');
INSERT INTO configuration VALUES (271,'���������եȷ�����Ͽ��','NEW_SIGNUP_GIFT_VOUCHER_AMOUNT','','���������եȷ�����Ͽ�ۤ����ꤷ�ޤ���<br /><br />\r\n������ = �ʤ�<br />\r\n��1000 = 1000��',16,76,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (272,'�����ݥ���Υڡ������������ɽ�����','MAX_DISPLAY_SEARCH_RESULTS_DISCOUNT_COUPONS','20','�����ݥ����1�ڡ����������ɽ����������ꤷ�ޤ���',16,81,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (273,'�����ݥ����ݡ��ȤΥڡ������������ɽ�����','MAX_DISPLAY_SEARCH_RESULTS_DISCOUNT_COUPONS_REPORTS','20','�����ݥ���Υ�ݡ��ȥڡ����Ǥ�ɽ����������ꤷ�ޤ���',16,81,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (274,'���եȷ��Ĺ�κ����Ϳ�','MAX_GIFT_AMOUNT','100000','���եȷ��Ĺ�κ����ͤ����ꤷ�ޤ������եȷ�����������̤������ͤ�Ķ������ϰ��������������Ǥ��ޤ����ͤ�100000�ʲ�����ꤷ�Ƥ���������',16,82,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (275,'���쥸�åȥ��������Ѥβ��� - VISA','CC_ENABLED_VISA','1','VISA��ͭ���ˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',17,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (276,'���쥸�åȥ��������Ѥβ��� - MasterCard','CC_ENABLED_MC','1','MasterCard��ͭ���ˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',17,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (277,'���쥸�åȥ��������Ѥβ��� - AmericanExpress','CC_ENABLED_AMEX','0','AmericanExpress��ͭ���ˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',17,3,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (278,'���쥸�åȥ��������Ѥβ��� - Diners Club','CC_ENABLED_DINERS_CLUB','0','Diners Club��ͭ���ˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',17,4,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (279,'���쥸�åȥ��������Ѥβ��� - Discover Card','CC_ENABLED_DISCOVER','0','Discover Card��ͭ���ˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',17,5,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (280,'���쥸�åȥ��������Ѥβ��� - JCB','CC_ENABLED_JCB','0','JCB��ͭ���ˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',17,6,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (281,'���쥸�åȥ��������Ѥβ��� - AUSTRALIAN BANKCARD','CC_ENABLED_AUSTRALIAN_BANKCARD','0','AUSTRALIAN BANKCARD��ͭ���ˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',17,7,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (282,'���Ѳ�ǽ�ʥ��쥸�åȥ����� - ��ʧ���ڡ�����ɽ��','SHOW_ACCEPTED_CREDIT_CARDS','0','���Ѳ�ǽ�ʥ��쥸�åȥ����ɤ��ʧ���ڡ�����ɽ�����ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= �ƥ����Ȥ�ɽ��<br />\r\n��2= ������ɽ��<br />\r\n����աۥ��쥸�åȥ����ɤβ����ȥƥ����Ȥϡ��ǡ����١����ȥ�󥲡����ե���������������Ƥ���ɬ�פ�����ޤ���',17,50,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ');
INSERT INTO configuration VALUES (283,'���եȷ���ɽ��','MODULE_ORDER_TOTAL_GV_STATUS','true','',6,1,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\'),');
INSERT INTO configuration VALUES (284,'ɽ���������','MODULE_ORDER_TOTAL_GV_SORT_ORDER','840','ɽ�������������ꤷ�ޤ���<br />�������������ۤɾ�̤�ɽ������ޤ���',6,2,NULL,'2003-10-30 22:16:40',NULL,NULL);
INSERT INTO configuration VALUES (285,'������ǧ�Ԥ���','MODULE_ORDER_TOTAL_GV_QUEUE','true','���եȷ�������ǧ�Ԥ��ꥹ�Ȥ��ɲä��ޤ���?',6,3,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (286,'������ޤ��','MODULE_ORDER_TOTAL_GV_INC_SHIPPING','true','��׷׻���������ޤ�ޤ���?',6,5,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (287,'�Ƕ��ޤ��','MODULE_ORDER_TOTAL_GV_INC_TAX','true','�׻������Ƕ��ޤ�뤫�ɤ��������ꤷ�ޤ���',6,6,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (288,'�Ƕ��Ʒ׻�','MODULE_ORDER_TOTAL_GV_CALC_TAX','None','�Ƕ��Ʒ׻����ޤ���?',6,7,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'None\', \'Standard\', \'Credit Note\'),');
INSERT INTO configuration VALUES (289,'�Ǽ���','MODULE_ORDER_TOTAL_GV_TAX_CLASS','0','���եȷ���Ŭ�Ѥ�����Ǽ��̤����ꤷ�ޤ���',6,0,NULL,'2003-10-30 22:16:40','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes(');
INSERT INTO configuration VALUES (290,'�Ƕ���ղä���','MODULE_ORDER_TOTAL_GV_CREDIT_TAX','false','���եȷ���׻�����ݤ��Ƕ���ղä��ޤ���?',6,8,NULL,'2003-10-30 22:16:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (1524,'�ƥ����ȥ᡼��Ǥβ�ʾ���Ѵ�','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_211','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1525,'�����⥸�塼��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_MODULES_OT_SHIPPING','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1526,'���ץ⥸�塼��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_MODULES_OT_SUBTOTAL','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1532,'������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_SUPER_ORDERS_NUMBER_UNIT','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1533,'������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_SALEMAKER_NUMBER_UNIT','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (958,'ͥ���','MODULE_EASY_ADMIN_SIMPLIFY_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2010-06-07 16:43:06',NULL,NULL);
INSERT INTO configuration VALUES (300,'������ɽ��','MODULE_ORDER_TOTAL_SHIPPING_STATUS','true','',6,1,NULL,'2003-10-30 22:16:46',NULL,'zen_cfg_select_option(array(\'true\'),');
INSERT INTO configuration VALUES (301,'ɽ���������','MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER','200','ɽ�������������ꤷ�ޤ���<br />\r\n�������������ۤɾ�̤�ɽ������ޤ���',6,2,NULL,'2003-10-30 22:16:46',NULL,NULL);
INSERT INTO configuration VALUES (302,'����̵������','MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING','false','����̵�������ͭ���ˤ��ޤ���?',6,3,NULL,'2003-10-30 22:16:46',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (303,'����̵���ˤ�������������','MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER','50','�����۰ʾ�Τ������ξ���������̵���ˤ��ޤ���',6,4,NULL,'2003-10-30 22:16:46','currencies->format',NULL);
INSERT INTO configuration VALUES (304,'����̵���ˤ����ϰ������','MODULE_ORDER_TOTAL_SHIPPING_DESTINATION','national','���ꤷ���ϰ���Ф�������̵����Ŭ�Ѥ��ޤ���',6,5,NULL,'2003-10-30 22:16:46',NULL,'zen_cfg_select_option(array(\'national\', \'international\', \'both\'),');
INSERT INTO configuration VALUES (305,'���פ�ɽ��','MODULE_ORDER_TOTAL_SUBTOTAL_STATUS','true','',6,1,NULL,'2003-10-30 22:16:49',NULL,'zen_cfg_select_option(array(\'true\'),');
INSERT INTO configuration VALUES (306,'ɽ���������','MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER','100','ɽ�������������ꤷ�ޤ���<br />\r\n�������������ۤɾ�̤�ɽ������ޤ���',6,2,NULL,'2003-10-30 22:16:49',NULL,NULL);
INSERT INTO configuration VALUES (307,'�Ƕ��ɽ��','MODULE_ORDER_TOTAL_TAX_STATUS','true','',6,1,NULL,'2003-10-30 22:16:52',NULL,'zen_cfg_select_option(array(\'true\'),');
INSERT INTO configuration VALUES (308,'ɽ���������','MODULE_ORDER_TOTAL_TAX_SORT_ORDER','300','ɽ��������������Ǥ��ޤ�. �������������ۤɾ�̤�ɽ������ޤ���',6,2,NULL,'2003-10-30 22:16:52',NULL,NULL);
INSERT INTO configuration VALUES (309,'��פ�ɽ��','MODULE_ORDER_TOTAL_TOTAL_STATUS','true','',6,1,NULL,'2003-10-30 22:16:55',NULL,'zen_cfg_select_option(array(\'true\'),');
INSERT INTO configuration VALUES (310,'ɽ���������','MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER','999','ɽ��������������Ǥ��ޤ���<br />\r\n�������������ۤɾ�̤�ɽ������ޤ���',6,2,NULL,'2003-10-30 22:16:55',NULL,NULL);
INSERT INTO configuration VALUES (311,'�Ǽ���','MODULE_ORDER_TOTAL_COUPON_TAX_CLASS','0','�����ݥ����Ŭ�Ѥ�����Ǽ��̤����ꤷ�ޤ���',6,0,NULL,'2003-10-30 22:16:36','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes(');
INSERT INTO configuration VALUES (312,'�Ƕ��ޤ�� - ����/����','MODULE_ORDER_TOTAL_COUPON_INC_TAX','true','���׻����Ƕ��ޤ�뤫�ɤ��������ꤷ�ޤ���',6,6,NULL,'2003-10-30 22:16:36',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (313,'ɽ���������','MODULE_ORDER_TOTAL_COUPON_SORT_ORDER','280','ɽ�������������ꤷ�ޤ���',6,2,NULL,'2003-10-30 22:16:36',NULL,NULL);
INSERT INTO configuration VALUES (314,'������ޤ��','MODULE_ORDER_TOTAL_COUPON_INC_SHIPPING','false','������׻��˴ޤ�뤫�ɤ��������ꤷ�ޤ���',6,5,NULL,'2003-10-30 22:16:36',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (315,'�����ݥ����ɽ��','MODULE_ORDER_TOTAL_COUPON_STATUS','true','',6,1,NULL,'2003-10-30 22:16:36',NULL,'zen_cfg_select_option(array(\'true\'),');
INSERT INTO configuration VALUES (316,'�Ƕ��Ʒ׻�','MODULE_ORDER_TOTAL_COUPON_CALC_TAX','Standard','�Ƕ��Ʒ׻����ޤ���?',6,7,NULL,'2003-10-30 22:16:36',NULL,'zen_cfg_select_option(array(\'None\', \'Standard\', \'Credit Note\'),');
INSERT INTO configuration VALUES (317,'�����ԥǥ� -����/����','ADMIN_DEMO','0','�����ԥǥ��ͭ���ˤ��뤫�ɤ��������ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= on',6,0,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (318,'���ʥ��ץ���� - ���쥯�ȥܥå�����','PRODUCTS_OPTIONS_TYPE_SELECT','0','���쥯�ȥܥå������ξ��ʥ��ץ����ο��ͤ�?',0,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (319,'���ʥ��ץ���� - �ƥ����ȷ�','PRODUCTS_OPTIONS_TYPE_TEXT','1','�ƥ����ȷ��ξ��ʥ��ץ����ο��ͤ�?',6,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (320,'���ʥ��ץ���� - �饸���ܥ���','PRODUCTS_OPTIONS_TYPE_RADIO','2','�饸���ܥ��󷿤ξ��ʥ��ץ����ο��ͤ�?',6,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (321,'���ʥ��ץ���� - �����å��ܥå�����','PRODUCTS_OPTIONS_TYPE_CHECKBOX','3','�����å��ܥå������ξ��ʥ��ץ����ο��ͤ�?',6,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (322,'���ʥ��ץ���� - �ե����뷿','PRODUCTS_OPTIONS_TYPE_FILE','4','�ե����뷿�ξ��ʥ��ץ����ο��ͤ�?',6,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (323,'ID for text and file products options values','PRODUCTS_OPTIONS_VALUES_TEXT_ID','0','�ƥ����ȷ����ե����뷿°����products_options_values_id�ǻȤ�����ͤ�?',6,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (324,'���åץ��ɥ��ץ�������Ƭ��(Prefix)','UPLOAD_PREFIX','upload_','���åץ��ɥ��ץ�����¾�Υ��ץ����ȶ��̤��뤿��˻Ȥ���Ƭ��(Prefix)��?',0,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (325,'�ƥ����Ȥ���Ƭ��(Prefix)','TEXT_PREFIX','txt_','�ƥ����ȥ��ץ�����¾�Υ��ץ����ȶ��̤��뤿��˻Ȥ���Ƭ��(Prefix)��?',0,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (326,'���ʥ��ץ���� - READ ONLY��','PRODUCTS_OPTIONS_TYPE_READONLY','5','READ ONLY���ξ��ʥ��ץ����ο��ͤ�?',6,NULL,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (327,'���ʾ��� - ���ʥ��ץ����Υ����Ƚ�','PRODUCTS_OPTIONS_SORT_ORDER','0','���ʾ���ˤ����륪�ץ����̾�Υ����Ƚ�����ꤷ�ޤ���<br />\r\n<br />\r\n��0= �����Ƚ硢���ץ����̾<br />\r\n��1= ���ץ����̾',18,35,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),');
INSERT INTO configuration VALUES (328,'���ʾ��� - ���ʥ��ץ�����ͤΥ����Ƚ�','PRODUCTS_OPTIONS_SORT_BY_PRICE','1','���������Ǥξ��ʥ��ץ�����ͤΥ����Ƚ�����ꤷ�ޤ���<br />\r\n<br />\r\n��0= �����Ƚ硢����<br />\r\n��1= �����Ƚ硢���ץ�����ͤ�̾��',18,36,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),');
INSERT INTO configuration VALUES (329,'���ʤ�°�������β���ɽ�����륪�ץ������','PRODUCT_IMAGES_ATTRIBUTES_NAMES','1','���ʤ�°�������β��˥��ץ����̾��ɽ�����ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',18,41,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (330,'���ʾ��� - ��������ɽ��','SHOW_SALE_DISCOUNT_STATUS','1','��������ʬ��ɽ�����ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',18,45,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (331,'���ʾ��� - ����������ɽ����ˡ(����ۡ��ѡ������)','SHOW_SALE_DISCOUNT','1','����������ɽ����ˡ�����ꤷ�ޤ���<br /><br />\r\n��1= ���Ψ(%) �Ǥ�off<br />\r\n��2= ������ �Ǥ�off',18,46,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\'), ');
INSERT INTO configuration VALUES (332,'���ʾ��� - ���Ψɽ���ξ�����','SHOW_SALE_DISCOUNT_DECIMALS','0','���Ψɽ���Υѡ�����Ȥξ��������֤����ꤷ�ޤ���<br /><br />\r\n���ǥե����= 0',18,47,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (333,'���ʾ���- ̵�����ʤβ������ƥ����ȤΥ��ơ�����','OTHER_IMAGE_PRICE_IS_FREE_ON','1','���ʾ���Ǥ�̵�����ʤβ��������᡼����ɽ�������ꤷ�ޤ���<br />\r\n<br />\r\n��0= Text<br />\r\n��1= Image',18,50,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (334,'���ʾ��� - ���䤤��碌����ɽ������','PRODUCTS_PRICE_IS_CALL_IMAGE_ON','1','���䤤��碌���ʤǤ��뤳�Ȥ�ɽ����������ޤ��ϥƥ����ȤˤĤ������ꤷ�ޤ���<br /><br />\r\n��0= �ƥ�����<br />\r\n��1= ����',18,51,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (335,'���ʤο����� - ���������ʤ��ɲä���ݤ�','PRODUCTS_QTY_BOX_STATUS','1','���������ʤ���Ͽ����ݡ����ʤο�����Υǥե���������ɤ����ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on<br />\r\n��ա�on�ˤ���ȿ������ɽ�������֥����Ȥ˲ä���פ�on�ˤʤ�ޤ���(This will show a Qty Box when ON and default the Add to Cart to 1)',18,55,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (336,'���ʥ�ӥ塼 - ��ǧ������','REVIEWS_APPROVAL','1','���ʥ�ӥ塼��ɽ���ˤϾ�ǧ��ɬ�פˤ��ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on<br />\r\n��ա���ӥ塼����ɽ������ˤʤäƤ������̵�뤵��ޤ���',18,62,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (337,'META���� - TITLE�����ؤξ��ʲ���ɽ��','META_TAG_INCLUDE_PRICE','1','TITLE�����˾��ʲ��ʤ�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1= on',18,70,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (338,'META���� - Meta Description��Ĺ��','MAX_META_TAG_DESCRIPTION_LENGTH','50','Meta Description�κ����Ĺ�������ꤷ�Ƥ���������<br />�ǥե���Ȥκ�����(��ɿ�)��50',18,71,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (339,'�֤���ʾ��ʤ�������Ƥ��ޤ��� - ���󤢤����ɽ������','SHOW_PRODUCT_INFO_COLUMNS_ALSO_PURCHASED_PRODUCTS','3','�֤���ʾ��ʤ���äƤ��ޤ��פβ���(Row)�������ɽ�����������ꤷ�ޤ���<br />0= off �ޤ��ϥ����Ƚ������',18,72,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), ');
INSERT INTO configuration VALUES (340,'[����] [����] - �ʥӥ��������С��ΰ���','PRODUCT_INFO_PREVIOUS_NEXT','1','[����] [����] �ʥӥ��������С��ΰ��֤����ꤷ�ޤ���<br /><br />\r\n��0= off<br />\r\n��1= �ڡ�������<br />\r\n��2= �ڡ�������<br />\r\n��3= �ڡ�������������',18,21,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Off\'), array(\'id\'=>\'1\', \'text\'=>\'Top of Page\'), array(\'id\'=>\'2\', \'text\'=>\'Bottom of Page\'), array(\'id\'=>\'3\', \'text\'=>\'Both Top & Bottom of Page\')),');
INSERT INTO configuration VALUES (341,'[����] [����] - �����Ƚ�','PRODUCT_INFO_PREVIOUS_NEXT_SORT','1','���ʤΥ����Ƚ�����ꤷ�ޤ���\r\n<br /><br />\r\n��0= ����ID<br />\r\n��1= ����̾<br />\r\n��2= ����<br />\r\n��3= ���ʡ�����̾<br />\r\n��4= ���ʡ�����<br />\r\n��5= ����̾, ����',18,22,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Product ID\'), array(\'id\'=>\'1\', \'text\'=>\'Name\'), array(\'id\'=>\'2\', \'text\'=>\'Product Model\'), array(\'id\'=>\'3\', \'text\'=>\'Product Price - Name\'), array(\'id\'=>\'4\', \'text\'=>\'Product Price - Model\'), array(\'id\'=>\'5\', \'text\'=>\'Product Name - Model\'), array(\'id\'=>\'6\', \'text\'=>\'Product Sort Order\')),');
INSERT INTO configuration VALUES (342,'[����] [����] - �ܥ���Ȳ����Υ��ơ�����','SHOW_PREVIOUS_NEXT_STATUS','0','�ܥ���Ȳ����Υ��ơ����������ꤷ�ޤ���<br /><br />\r\n��0= Off<br />\r\n��1= On',18,20,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Off\'), array(\'id\'=>\'1\', \'text\'=>\'On\')),');
INSERT INTO configuration VALUES (343,'[����] [����] - �ܥ���Ȳ�����ɽ������','SHOW_PREVIOUS_NEXT_IMAGES','0','[����] [����] �Υܥ���Ȳ�����ɽ�������ꤷ�ޤ���<br /><br />\r\n��0= �ܥ���Τ�<br />\r\n��1= �ܥ��󡦾��ʲ���<br />\r\n��2= ���ʲ����Τ�',18,21,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Button Only\'), array(\'id\'=>\'1\', \'text\'=>\'Button and Product Image\'), array(\'id\'=>\'2\', \'text\'=>\'Product Image Only\')),');
INSERT INTO configuration VALUES (344,'[����] [����] - �����β���','PREVIOUS_NEXT_IMAGE_WIDTH','50','[����] [����] �����β����β�����?',18,22,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (345,'[����] [����] - �����ι⤵','PREVIOUS_NEXT_IMAGE_HEIGHT','40','[����] [����] �����β����ι⤵��?',18,23,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (346,'[����] [����] - ���ƥ���̾�Ȳ���������','PRODUCT_INFO_CATEGORIES','1','[����] [����] �Υ��ƥ���β�����̾�Τ����֤�?<br /><br />\r\n��0= off<br />\r\n��1= ��������<br />\r\n��2= ���������<br />\r\n��3= ��������',18,20,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Off\'), array(\'id\'=>\'1\', \'text\'=>\'Align Left\'), array(\'id\'=>\'2\', \'text\'=>\'Align Center\'), array(\'id\'=>\'3\', \'text\'=>\'Align Right\')),');
INSERT INTO configuration VALUES (347,'��¦�����ɥܥå����β���','BOX_WIDTH_LEFT','150px','��¦��ɽ������륵���ɥܥå����β��������ꤷ�ޤ���px��ޤ�����ϤǤ��ޤ���\r\n<br /><br />\r\n���ǥե���� = 150px',19,1,NULL,'2003-11-21 22:16:36',NULL,NULL);
INSERT INTO configuration VALUES (348,'��¦�����ɥܥå����β���','BOX_WIDTH_RIGHT','150px','��¦��ɽ������륵���ɥܥå����β��������ꤷ�ޤ���px��ޤ�����ϤǤ��ޤ���<br /><br />\r\n��Default = 150px',19,2,NULL,'2003-11-21 22:16:36',NULL,NULL);
INSERT INTO configuration VALUES (349,'�ѥ���ꥹ�Ȥζ��ڤ�ʸ��','BREAD_CRUMBS_SEPARATOR','&nbsp;::&nbsp;','�ѥ���ꥹ�Ȥζ��ڤ�ʸ�������ꤷ�ޤ���<br /><br />\r\n����ա۶����ޤ����&amp;nbsp;����Ѥ��뤳�Ȥ��Ǥ��ޤ���<br />\r\n���ǥե���� = &amp;nbsp;::&amp;nbsp;',19,3,NULL,'2003-11-21 22:16:36',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (350,'�ѥ���ꥹ�Ȥ�����','DEFINE_BREADCRUMB_STATUS','1','�ѥ���ꥹ�ȤΥ�󥯤�ͭ���ˤ��ޤ���?<br />0= OFF<br />1= ON',19,4,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (351,'�٥��ȥ��顼 - �����碌ʸ��','BEST_SELLERS_FILLER','&nbsp;','������碌�뤿�����������ʸ�������ꤷ�ޤ���<br />�ǥե���� = &amp;nbsp;(����)',19,5,NULL,'2003-11-21 22:16:36',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (352,'�٥��ȥ��顼 - ɽ��ʸ����','BEST_SELLERS_TRUNCATE','35','�٥��ȥ��顼�Υ����ɥܥå�����ɽ�����뾦��̾��Ĺ�������ꤷ�ޤ���<br />�ǥե���� = 35',19,6,NULL,'2003-11-21 22:16:36',NULL,NULL);
INSERT INTO configuration VALUES (353,'�٥��ȥ��顼 - ɽ��ʸ������Ķ�������ˡ�...�פ�ɽ��','BEST_SELLERS_TRUNCATE_MORE','true','����̾��������ڤ줿���ˡ�...�פ�ɽ�����ޤ���<br />�ǥե���� = true',19,7,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (354,'���ƥ���ܥå��� - �ò����ʤΥ��ɽ��','SHOW_CATEGORIES_BOX_SPECIALS','true','���ƥ���ܥå������ò����ʤΥ�󥯤�ɽ�����ޤ���',19,8,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (355,'���ƥ���ܥå��� - ���徦�ʤΥ��ɽ��','SHOW_CATEGORIES_BOX_PRODUCTS_NEW','true','���ƥ���ܥå����˿��徦�ʤؤΥ�󥯤�ɽ�����ޤ���',19,9,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (356,'����åԥ󥰥����ȥܥå�����ɽ��','SHOW_SHOPPING_CART_BOX_STATUS','1','����åԥ󥰥����Ȥ�ɽ�������ꤷ�ޤ���<br />\r\n<br />\r\n��0= ���ɽ��<br />\r\n��1= ���ʤ����äƤ���Ȥ�����ɽ��<br />\r\n��2= ���ʤ����äƤ���Ȥ���ɽ�����뤬������åԥ󥰥����ȥڡ����Ǥ�ɽ�����ʤ�',19,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ');
INSERT INTO configuration VALUES (357,'���ƥ���ܥå��� - �������ᾦ�ʤؤΥ�󥯤�ɽ��','SHOW_CATEGORIES_BOX_FEATURED_PRODUCTS','true','���ƥ���ܥå����ˤ������ᾦ�ʤؤΥ�󥯤�ɽ�����ޤ���?',19,11,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (358,'���ƥ���ܥå��� - �����ʥꥹ�ȤؤΥ�󥯤�ɽ��','SHOW_CATEGORIES_BOX_PRODUCTS_ALL','true','���ƥ���ܥå����������ʥꥹ�ȤؤΥ�󥯤�ɽ�����ޤ���?',19,12,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (359,'��¦������ɽ��','COLUMN_LEFT_STATUS','1','��¦������ɽ�����ޤ���? (�ڡ����򥪡��С��饤�ɤ����Τ��ʤ����)<br /><br />\r\n��0= �����ɽ��<br />\r\n1= �����С��饤�ɤ��ʤ����ɽ��',19,15,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (360,'��¦������ɽ��','COLUMN_RIGHT_STATUS','1','��¦������ɽ�����ޤ���? (�ڡ����򥪡��С��饤�ɤ����Τ��ʤ����)<br /><br />\r\n��0= �����ɽ��<br />\r\n��1= �����С��饤�ɤ��ʤ����ɽ��',19,16,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (361,'��¦�����β���','COLUMN_WIDTH_LEFT','150px','��¦�����β��������ꤷ�ޤ���px��ޤ�ƻ����ǽ��<br /><br />\r\n�ǥե���� = 150px',19,20,NULL,'2003-11-21 22:16:36',NULL,NULL);
INSERT INTO configuration VALUES (362,'��¦�����β���','COLUMN_WIDTH_RIGHT','150px','��¦�����β��������ꤷ�ޤ���px��ޤ�ƻ����ǽ��<br /><br />\r\n�ǥե���� = 150px',19,21,NULL,'2003-11-21 22:16:36',NULL,NULL);
INSERT INTO configuration VALUES (363,'���ƥ���̾����󥯴֤ζ��ڤ�','SHOW_CATEGORIES_SEPARATOR_LINK','1','���ƥ���̾�ȥ�󥯡ʡ֤������ᾦ�ʡפʤɡˤδ֤˥��ѥ졼��(���ڤ�)��ɽ�����ޤ���?<br /><br />\r\n��0= off<br />\r\n��1= on',19,24,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (364,'���ƥ���ζ��ڤ� - ���ƥ���̾�����ʿ�','CATEGORIES_SEPARATOR','-&gt;','���ƥ���̾��(���ƥ������)���ʿ��δ֤Υ��ѥ졼��(���ڤ�)�ϲ��ˤ��ޤ���?<br /><br />\r\n�ǥե���� = -&amp;gt;',19,25,NULL,'2003-11-21 22:16:36',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (365,'���ƥ���ζ��ڤ� - ���ƥ���̾�ȥ��֥��ƥ���̾�δ�','CATEGORIES_SEPARATOR_SUBS','|_&nbsp;','���ƥ���̾�����֥��ƥ���̾�δ֤Υ��ѥ졼��(���ڤ�)�ϲ��ˤ��ޤ���?<br />\r\n<br />\r\n�ǥե���� = |_&amp;nbsp;',19,26,NULL,'2004-03-25 22:16:36',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (366,'���ƥ����⾦�ʿ�����Ƭ��(Prefix)','CATEGORIES_COUNT_PREFIX','&nbsp;(','���ƥ�����ξ��ʿ�ɽ������Ƭ��(Prefix)��?\r\n<br /><br />\r\n���ǥե����= (',19,27,NULL,'2003-01-21 22:16:36',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (367,'���ƥ����⾦�ʿ���������(Suffix)','CATEGORIES_COUNT_SUFFIX',')','���ƥ�����ξ��ʿ�ɽ����������(Suffix)��?\r\n<br /><br />\r\n���ǥե����= )',19,28,NULL,'2003-01-21 22:16:36',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (368,'���ƥ��ꡦ���֥��ƥ���Υ���ǥ��','CATEGORIES_SUBCATEGORIES_INDENT','&nbsp;&nbsp;','���֥��ƥ���򥤥�ǥ��(������)ɽ������ݤ�ʸ���������?<br /><br />\r\n���ǥե���� = &nbsp;&nbsp;',19,29,NULL,'2004-06-24 22:16:36',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (369,'������Ͽ0�Υ��ƥ��� - ɽ������ɽ��','CATEGORIES_COUNT_ZERO','0','���ʿ���0�Υ��ƥ����ɽ�����ޤ���?<br />\r\n<br />\r\n��0 = off<br />\r\n��1 = on',19,30,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (370,'���ƥ���ܥå����Υ��ץ�å�(ʬ��)ɽ��','CATEGORIES_SPLIT_DISPLAY','True','���ʥ����פˤ�äƥ��ƥ���ܥå����򥹥ץ�å�(ʬ��)ɽ�����뤫�ɤ��������ꤷ�ޤ���',19,31,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (371,'����åԥ󥰥����� - ��פ�ɽ��','SHOW_TOTALS_IN_CART','1','��׳ۤ򥷥�åԥ󥰥����Ȥξ��ɽ�����ޤ���?<br />��0= off<br />��1= on: ���ʤο��̡����̹��<br />��2= on: ���ʤο��̡����̹��(0�ΤȤ��ˤ���ɽ��)<br />��3= on: ���ʤο��̹��',19,31,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ');
INSERT INTO configuration VALUES (372,'�ܵҤؤΰ��� - �ȥåץڡ�����ɽ��','SHOW_CUSTOMER_GREETING','1','�ܵҤؤδ��ޥ�å��������˥ȥåץڡ�����ɽ�����ޤ���?<br />0= off<br />1= on',19,40,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (373,'���ƥ��� - �ȥåץڡ�����ɽ��','SHOW_CATEGORIES_ALWAYS','0','���ƥ�����˥ȥåץڡ�����ɽ�����ޤ���?<br />\r\n��0= off<br />\r\n��1= on<br />\r\n��Default category can be set to Top Level or a Specific Top Level',19,45,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (374,'���ƥ��� - �ȥåץڡ��� �Ǥγ���','CATEGORIES_START_MAIN','0','�ȥåץڡ����ˤ����륫�ƥ���γ��ľ��֤����ꤷ�ޤ���<br />\r\n��0= �ȥåץ�٥�(��)���ƥ���Τ�<br />\r\n������Υ��ƥ���򳫤��ˤϥ��ƥ���ID�ǻ��ꡣ���֥��ƥ��������ǽ��<br />\r\n�����3_10 (���ƥ���ID:3�����֥��ƥ���ID:10)',19,46,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (375,'���ƥ��� - ���֥��ƥ�����˳����Ƥ���','SHOW_CATEGORIES_SUBCATEGORIES_ALWAYS','1','���ƥ���ȥ��֥��ƥ���Ͼ��ɽ�����ޤ���?<br />0= OFF �ƥ��ƥ���Τ�<br />1= ON ���ƥ��ꡦ���֥��ƥ�������򤵤줿����ɽ��',19,47,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (376,'�Хʡ�ɽ�����롼�� - �إå��ݥ������1','SHOW_BANNERS_GROUP_SET1','','�ɤΥХʡ����롼�פ�إå��ݥ������1�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,55,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (377,'�Хʡ�ɽ�����롼�� - �إå��ݥ������2','SHOW_BANNERS_GROUP_SET2','','�ɤΥХʡ����롼�פ�إå��ݥ������2�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,56,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (378,'�Хʡ�ɽ�����롼�� - �إå��ݥ������3','SHOW_BANNERS_GROUP_SET3','','�ɤΥХʡ����롼�פ�إå��ݥ������3�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,57,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (379,'�Хʡ�ɽ�����롼�� - �եå��ݥ������1','SHOW_BANNERS_GROUP_SET4','','�ɤΥХʡ����롼�פ�եå��ݥ������1�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,65,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (380,'�Хʡ�ɽ�����롼�� - �եå��ݥ������2','SHOW_BANNERS_GROUP_SET5','','�ɤΥХʡ����롼�פ�եå��ݥ������2�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,66,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (381,'�Хʡ�ɽ�����롼�� - �եå��ݥ������3','SHOW_BANNERS_GROUP_SET6','Wide-Banners','�ɤΥХʡ����롼�פ�եå��ݥ������3�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,67,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (382,'�Хʡ�ɽ�����롼�� - �����ɥܥå�����Хʡ��ܥå���','SHOW_BANNERS_GROUP_SET7','SideBox-Banners','�ɤΥХʡ����롼�פ򥵥��ɥܥå�����Хʡ��ܥå���2�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n�ǥե���ȤΥ��롼�פ�SideBox-Banners�Ǥ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,70,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (383,'�Хʡ�ɽ�����롼�� - �����ɥܥå�����Хʡ��ܥå���2','SHOW_BANNERS_GROUP_SET8','SideBox-Banners','�ɤΥХʡ����롼�פ򥵥��ɥܥå�����Хʡ��ܥå���2�˻��Ѥ��ޤ���? �Ȥ�ʤ�����̤�����ˤ��ޤ���<br />\r\n�ǥե���ȤΥ��롼�פ�SideBox-Banners�Ǥ���<br />\r\n<br />\r\n�Хʡ�ɽ�����롼�פ�1��(1�Хʡ����롼��)�ޤ���ʣ��(�ޥ���Хʡ����롼��)�ˤ��뤳�Ȥ�Ǥ��ޤ����ޥ���Хʡ����롼�פ�ɽ�����뤿��ˤϥ��롼��̾�򥳥��(<strong>:</strong>)�Ƕ��ڤä����Ϥ��ޤ���<br />\r\n�㡧Wide-Banners:SideBox-Banners',19,71,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (384,'�Хʡ�ɽ�����롼�� - �����ɥܥå�����Хʡ��ܥå�������','SHOW_BANNERS_GROUP_SET_ALL','BannersAll','�����ɥܥå�����Хʡ��ܥå�������(Banner All sidebox)��ɽ������Хʡ�ɽ�����롼�פϡ�1�ĤǤ����ǥե���ȤΥ��롼�פ�BannersAll�Ǥ����ɤΥХʡ����롼�פ򥵥��ɥܥå�����banner_box_all��ɽ�����ޤ���?<br />ɽ�����ʤ����϶���ˤ��Ƥ���������',19,72,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (385,'�եå� - IP���ɥ쥹��ɽ������ɽ��','SHOW_FOOTER_IP','1','�ܵҤ�IP���ɥ쥹��եå���ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1= on<br />',19,80,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (386,'���̳�� - �ɲó����٥��','DISCOUNT_QTY_ADD','5','���̳���γ����٥���ɲÿ�����ꤷ�ޤ�����Ĥγ����٥�˰�Ĥγ�������Ԥ����Ȥ��Ǥ��ޤ���',19,90,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (387,'���̳�� - ��Ԥ������ɽ����','DISCOUNT_QUANTITY_PRICES_COLUMN','5','���ʾ���ڡ�����ɽ��������̳������ΰ�Ԥ�����ɽ��������ꤷ�ޤ������������ʳ����٥���ˤ���Ԥ������ɽ������Ķ�������ϡ�ʣ���Ԥ�ɽ������ޤ���',19,95,NULL,'2009-11-19 12:39:39','','');
INSERT INTO configuration VALUES (388,'���ƥ���/���ʤΥ����Ƚ�','CATEGORIES_PRODUCTS_SORT_ORDER','0','���ƥ���/���ʤΥ����Ƚ�����ꤷ�ޤ���<br />0= ���ƥ���/���� �����Ƚ�/̾��<br />1= ���ƥ���/���� ̾��<br />2= ���ʥ�ǥ�<br />3= ���ʿ���+, ����̾<br />4= ���ʿ���-, ����̾<br />5= ���ʲ���+, ����̾<br />6= ���ʲ���+, ����̾',19,100,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\', \'5\', \'6\'), ');
INSERT INTO configuration VALUES (389,'���ץ����̾/���ץ�����ͤ��ɲá����ԡ������','OPTION_NAMES_VALUES_GLOBAL_STATUS','1','���ץ����̾/���ץ�����ͤ��ɲá����ԡ�������ε�ǽ�ˤĤ��ƤΥ����Х�������Ԥ��ޤ���<br />0= ��ǽ�򱣤�<br />1= ��ǽ��ɽ������<br />2= ���ʥ�ǥ�',19,110,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (390,'���ƥ��� - ���֥�˥塼','CATEGORIES_TABS_STATUS','1','���ƥ��� - ���֤򥪥�ˤ���ȥ���åײ��̤Υإå���ʬ�˥��ƥ��꤬ɽ������ޤ������ޤ��ޤʱ��Ѥ��Ǥ���Ǥ��礦��<br />0= ���ƥ���Υ��֤򱣤�<br />1= ���ƥ���Υ��֤�ɽ��',19,112,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (391,'�����ȥޥå� - My�ڡ�����ɽ��','SHOW_ACCOUNT_LINKS_ON_SITE_MAP','No','My�ڡ����Υ�󥯤򥵥��ȥޥåפ�ɽ�����ޤ���?<br />��ա����������󥸥�Υ����顼�����Υڡ����򥤥�ǥå������褦�Ȥ��ƥ�����ڡ�����ͶƳ����Ƥ��ޤ���ǽ�������ꡢ�����ᤷ�ޤ���<br /><br />�ǥե���ȡ�false (ɽ�����ʤ�)',19,115,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'Yes\', \'No\'), ');
INSERT INTO configuration VALUES (392,'1���ʤ����Υ��ƥ����ɽ���򥹥��å�','SKIP_SINGLE_PRODUCT_CATEGORIES','False','���ʤ�1�Ĥ����Υ��ƥ����ɽ���򥹥��åפ��ޤ���?<br />���Υ��ץ����True�ξ�硢�桼���������ʤ�1�Ĥ����Υ��ƥ���򥯥�å�����ȡ�Zen Cart��ľ�ܾ��ʥڡ�����ɽ������褦�ˤʤ�ޤ���<br />�ǥե���ȡ�True',19,120,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (393,'CSS�ܥ���','IMAGE_USE_CSS_BUTTONS','No','CSS����(gif/jpg)������˥ܥ����ɽ�����ޤ���?<br />ON�ˤ�����硢�ܥ���Υ�������ϥ������륷���Ȥ�������Ƥ���������',19,147,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'No\', \'Yes\'), ');
INSERT INTO configuration VALUES (394,'<strong>�֥��ƥʥ���� ����/����</strong>','DOWN_FOR_MAINTENANCE','false','�֥��ƥʥ���פ�ɽ���ˤĤ������ꤷ�ޤ���<br />\r\n<br />\r\n��true=on\r\n��false=off',20,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (395,'�֥��ƥʥ����- ɽ������ե�����','DOWN_FOR_MAINTENANCE_FILENAME','down_for_maintenance','���ƥʥ����ɽ������ե�����Υե�����̾�����ꤷ�ޤ����ǥե���Ȥ�\"down_for_maintenance\"�Ǥ���<br /><br />\r\n����ա۳�ĥ�Ҥ��դ��ʤ��Ǥ���������',20,2,NULL,'2009-11-19 12:39:39',NULL,'');
INSERT INTO configuration VALUES (396,'�֥��ƥʥ����- �إå��򱣤�','DOWN_FOR_MAINTENANCE_HEADER_OFF','false','�֥��ƥʥ����ɽ���⡼�ɤκݡ��إå��򱣤��ޤ���?<br /><br />\r\n��true=hide<br />\r\n��false=show',20,3,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (397,'�֥��ƥʥ����- �������򱣤�','DOWN_FOR_MAINTENANCE_COLUMN_LEFT_OFF','false','�֥��ƥʥ����ɽ���⡼�ɤκݡ��������򱣤��ޤ���?<br /><br />\r\n��true=hide<br />\r\n��false=show',20,4,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (398,'�֥��ƥʥ����- �������򱣤�','DOWN_FOR_MAINTENANCE_COLUMN_RIGHT_OFF','false','�֥��ƥʥ����ɽ���⡼�ɤκݡ��������򱣤��ޤ���?<br /><br />\r\n��true=hide<br />\r\n��false=show',20,5,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (399,'�֥��ƥʥ����- �եå��򱣤�','DOWN_FOR_MAINTENANCE_FOOTER_OFF','false','�֥��ƥʥ����ɽ���⡼�ɤκݡ��եå��򱣤��ޤ���?<br /><br />\r\n��true=hide<br />\r\n��false=show',20,6,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (400,'�֥��ƥʥ����- ���ʤ�ɽ�����ʤ�','DOWN_FOR_MAINTENANCE_PRICES_OFF','false','�֥��ƥʥ����ɽ���⡼�ɤκݡ����ʲ��ʤ򱣤��ޤ���?<br /><br />\r\n��true=hide<br />\r\n��false=show',20,7,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (401,'�֥��ƥʥ����- ���ꤷ��IP���ɥ쥹�����','EXCLUDE_ADMIN_IP_FOR_MAINTENANCE','your IP (ADMIN)','����å״������Ѥʤɤˡ��֥��ƥʥ����ɽ���⡼�ɤκݤǤ⥢��������ǽ��IP���ɥ쥹�����ꤷ�ޤ���?<br /><br />\r\nʣ����IP���ɥ쥹����ꤹ��ˤϥ����(,)�Ƕ��ڤ�ޤ����ޤ������ʤ��Υ�����������IP���ɥ쥹���狼��ʤ����ϡ�����åפΥեå���ɽ�������IP���ɥ쥹������å����Ƥ���������',20,8,'2003-03-21 13:43:22','2003-03-21 21:20:07',NULL,NULL);
INSERT INTO configuration VALUES (402,'�֥��ƥʥ�ͽ��(NOTICE PUBLIC)��-  ����/����','WARN_BEFORE_DOWN_FOR_MAINTENANCE','false','����åפΡ֥��ƥʥ����ɽ����Ф����˹��Τ�Ф��ޤ���?<br /><br />\r\n��true=on<br />\r\n��false=off<br />\r\n��ա��֥��ƥʥ����ɽ����ͭ���ˤʤ�ȡ���������ϼ�ưŪ��false�˽񤭴������ޤ���',20,9,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (403,'�֥��ƥʥ�ͽ���- ��å�������ɽ����������','PERIOD_BEFORE_DOWN_FOR_MAINTENANCE','15/05/2003  2-3 PM','�إå���ɽ��������ƥʥ�ͽ���å������γ������Ȼ��֤����ꤷ�ޤ���',20,10,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,NULL);
INSERT INTO configuration VALUES (404,'�֥��ƥʥ����- ���ƥʥ󥹤򳫻Ϥ�������(when webmaster has enabled maintenance)��ɽ��','DISPLAY_MAINTENANCE_TIME','false','����å״����Ԥ����ġ֥��ƥʥ����ɽ���򥪥�ˤ�����ɽ�����ޤ���?<br /><br />\r\n��true=on<br />\r\n��false=off',20,11,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (405,'�֥��ƥʥ����- ���ƥʥ󥹴��֤�ɽ��','DISPLAY_MAINTENANCE_PERIOD','false','���ƥʥ󥹤δ��֤�ɽ�����ޤ���?<br /><br />\r\n��true=on<br />\r\n��false=off',20,12,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (406,'���ƥʥ󥹴���','TEXT_MAINTENANCE_PERIOD_TIME','2h00','���ƥʥ󥹴��֤����ꤷ�ޤ���<br />\r\n�񼰡�(hh:mm)<br />h = ���֡�m = ʬ',20,13,'2003-03-21 13:08:25','2003-03-21 11:42:47',NULL,NULL);
INSERT INTO configuration VALUES (407,'�����å������Ȼ��ˡ֤����ѵ���׳�ǧ���̤�ɽ��','DISPLAY_CONDITIONS_ON_CHECKOUT','false','�����å������Ȥκݤˡ֤����ѵ���פβ��̤�ɽ�����ޤ���?',11,1,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (408,'��������Ⱥ������˸Ŀ;����ݸ����˳�ǧ���̤�ɽ��','DISPLAY_PRIVACY_CONDITIONS','true','��������Ⱥ����κݡ��Ŀ;����ݸ����ˤؤ�Ʊ�ղ��̤�ɽ�����ޤ���?<br /><div style=\"color: red;\">��ա��ָĿ;����ݸ�ˡ�פǤϡ��Ŀ;����ݸ����ˤ򳫼����뤳�Ȥ������Ƥ��ޤ���</div>',11,2,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (409,'���ʲ�����ɽ��','PRODUCT_NEW_LIST_IMAGE','1102','���ʲ�����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,1,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (410,'���ʤο��̤�ɽ��','PRODUCT_NEW_LIST_QUANTITY','1202','���ʿ��̤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,2,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (411,'�ֺ������㤦�ץܥ����ɽ��','PRODUCT_NEW_BUY_NOW','1300','�ֺ������㤦�ץܥ����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,3,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (412,'����̾��ɽ��','PRODUCT_NEW_LIST_NAME','2101','����̾��ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,4,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (413,'���ʷ��֤�ɽ��','PRODUCT_NEW_LIST_MODEL','2201','���ʷ��֤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,5,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (414,'���ʥ᡼������ɽ��','PRODUCT_NEW_LIST_MANUFACTURER','2302','���ʥ᡼������ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,6,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (415,'���ʲ��ʤ�ɽ��','PRODUCT_NEW_LIST_PRICE','2402','���ʲ��ʤ�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,7,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (416,'���ʽ��̤�ɽ��','PRODUCT_NEW_LIST_WEIGHT','2502','���ʤν��̤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,8,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (417,'������Ͽ����ɽ��','PRODUCT_NEW_LIST_DATE_ADDED','2601','������Ͽ����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',21,9,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (418,'����������ɽ��','PRODUCT_NEW_LIST_DESCRIPTION','1','��������(�ǽ��150ʸ��)��ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1= on',21,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (419,'���ʤ�ɽ�� - �ǥե���ȤΥ����Ƚ�','PRODUCT_NEW_LIST_SORT_DEFAULT','6','���徦�ʥꥹ�Ȥ�ɽ���Υǥե���ȤΥ����Ƚ��? �ǥե�����ͤ�6�Ǥ���<br /><br />\r\n��1= ����̾<br />\r\n��2= ����̾(�߽�)<br />\r\n��3= ���ʤ��¤���Τ��龦��̾<br />\r\n��4= ���ʤ��⤤��Τ��龦��̾<br />\r\n��5= ����<br />\r\n��6= ������Ͽ��(�߽�)<br />\r\n��7= ������Ͽ��<br />\r\n��8= ���ʽ�(Product Sort)\r\n',21,11,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\'), ');
INSERT INTO configuration VALUES (420,'���徦�� - �ǥե���ȤΥ��롼��ID','PRODUCT_NEW_LIST_GROUP_ID','21','���徦�ʥꥹ�Ȥ����ꥰ�롼��ID(configuration_group_id)�ϲ��Ǥ���?<br />\r\n<br />\r\n��ա������ʥꥹ�ȤΥ��롼��ID���ǥե���Ȥ�21�����ѹ����줿�Ȥ��������ꤷ�Ƥ���������',21,12,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (421,'ʣ�����ʤο������̵ͭ��ɽ������','PRODUCT_NEW_LISTING_MULTIPLE_ADD_TO_CART','3','ʣ�����ʤο������ɽ����̵ͭ��ɽ�����֤ˤĤ������ꤷ�ޤ���<br />0= off<br />1= ����<br />2= ����<br />3= ξ��',21,25,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ');
INSERT INTO configuration VALUES (422,'���ʲ�����ɽ��','PRODUCT_FEATURED_LIST_IMAGE','1102','���ʲ�����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />\r\n',22,1,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (423,'���ʿ��̤�ɽ��','PRODUCT_FEATURED_LIST_QUANTITY','1202','���ʿ��̤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />\r\n',22,2,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (424,'�ֺ������㤦�ץܥ����ɽ��','PRODUCT_FEATURED_BUY_NOW','1300','�ֺ������㤦�ץܥ����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',22,3,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (425,'����̾��ɽ��','PRODUCT_FEATURED_LIST_NAME','2101','����̾��ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',22,4,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (426,'���ʷ��֤�ɽ��','PRODUCT_FEATURED_LIST_MODEL','2201','���ʷ��֤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',22,5,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (427,'���ʥ᡼������ɽ��','PRODUCT_FEATURED_LIST_MANUFACTURER','2302','���ʥ᡼������ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',22,6,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (428,'���ʲ��ʤ�ɽ��','PRODUCT_FEATURED_LIST_PRICE','2402','���ʲ��ʤ�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',22,7,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (429,'���ʽ��̤�ɽ��','PRODUCT_FEATURED_LIST_WEIGHT','2502','���ʽ��̤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',22,8,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (430,'������Ͽ����ɽ��','PRODUCT_FEATURED_LIST_DATE_ADDED','2601','������Ͽ����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',22,9,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (431,'����������ɽ��','PRODUCT_FEATURED_LIST_DESCRIPTION','1','��������(�ǽ��150ʸ��)��ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1= on',22,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (432,'����ɽ�� - �ǥե���ȤΥ����Ƚ�','PRODUCT_FEATURED_LIST_SORT_DEFAULT','1','�������ᾦ�ʥꥹ�Ȥ�ɽ���Υǥե���ȤΥ����Ƚ��? �ǥե�����ͤ�1�Ǥ���<br />\r\n<br />\r\n��1= ����̾<br />\r\n��2= ����̾(�߽�)<br />\r\n��3= ���ʤ��¤���Τ��顢����̾<br />\r\n��4= ���ʤ��⤤��Τ��顢����̾<br />\r\n��5= ����<br />\r\n��6= ������Ͽ��(�߽�)<br />\r\n��7= ������Ͽ��<br />\r\n��8= ���ʽ�(Product Sort)',22,11,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\'), ');
INSERT INTO configuration VALUES (433,'�������ᾦ�� - �ǥե���ȤΥ��롼��ID','PRODUCT_FEATURED_LIST_GROUP_ID','22','�������ᾦ�ʥꥹ�Ȥ����ꥰ�롼��ID(configuration_group_id)�ϲ��Ǥ���?<br />\r\n<br />\r\n��ա��������ᾦ�ʥꥹ�ȤΥ��롼��ID���ǥե���Ȥ�22�����ѹ����줿�Ȥ��������ꤷ�Ƥ���������\r\n',22,12,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (434,'ʣ�����ʤο������̵ͭ��ɽ������','PRODUCT_FEATURED_LISTING_MULTIPLE_ADD_TO_CART','3','ʣ�����ʤο������ɽ����̵ͭ��ɽ�����֤ˤĤ������ꤷ�ޤ���<br />0= off<br />1= ����<br />2= ����<br />3= ξ��',22,25,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ');
INSERT INTO configuration VALUES (435,'���ʲ�����ɽ��','PRODUCT_ALL_LIST_IMAGE','1102','���ʲ�����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,1,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (436,'���ʿ��̤�ɽ��','PRODUCT_ALL_LIST_QUANTITY','1202','���ʿ��̤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,2,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (437,'�ֺ������㤦�ץܥ����ɽ��','PRODUCT_ALL_BUY_NOW','1300','�ֺ������㤦�ץܥ����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,3,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (438,'���ʲ��ʤ�ɽ��','PRODUCT_ALL_LIST_NAME','2101','���ʲ��ʤ�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,4,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (439,'���ʷ��֤�ɽ��','PRODUCT_ALL_LIST_MODEL','2201','���ʷ��֤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,5,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (440,'���ʥ᡼������ɽ��','PRODUCT_ALL_LIST_MANUFACTURER','2302','���ʥ᡼������ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,6,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (441,'���ʲ��ʤ�ɽ��','PRODUCT_ALL_LIST_PRICE','2402','���ʲ��ʤ�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,7,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (442,'���ʽ��̤�ɽ��','PRODUCT_ALL_LIST_WEIGHT','2502','���ʽ��̤�ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,8,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (443,'������Ͽ����ɽ��','PRODUCT_ALL_LIST_DATE_ADDED','2601','������Ͽ����ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1���ܡ���������<br />\r\n��2��3���ܡ�(¾��ɽ�����ܤȤ�)�����Ƚ�<br />\r\n��4���ܡ�ɽ����β���(br)��<br />',23,9,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (444,'����������ɽ��','PRODUCT_ALL_LIST_DESCRIPTION','1','��������(�ǽ��150ʸ��)��ɽ�����ޤ���?<br />\r\n<br />\r\n��0= off<br />\r\n��1= on',23,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (445,'����ɽ�� - �ǥե���ȤΥ����Ƚ�','PRODUCT_ALL_LIST_SORT_DEFAULT','1','�����ʥꥹ�Ȥ�ɽ���Υǥե���ȤΥ����Ƚ��? �ǥե�����ͤ�1�Ǥ���<br />\r\n<br />\r\n��1= ����̾<br />\r\n��2= ����̾(�߽�)<br />\r\n��3= ���ʤ��¤���Τ��顢����̾<br />\r\n��4= ���ʤ��⤤��Τ��顢����̾<br />\r\n��5= ����<br />\r\n��6= ������Ͽ��(�߽�)<br />\r\n��7= ������Ͽ��<br />\r\n��8= ���ʽ�(Product Sort)',23,11,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\'), ');
INSERT INTO configuration VALUES (446,'�����ʥꥹ�� - �ǥե���ȤΥ��롼��ID','PRODUCT_ALL_LIST_GROUP_ID','23','�����ʥꥹ�Ȥ����ꥰ�롼��ID(configuration_group_id)��?<br />\r\n<br />\r\n��ա������ʥꥹ�ȤΥ��롼��ID���ǥե���Ȥ�23�����ѹ����줿�Ȥ��������ꤷ�Ƥ���������\r\n',23,12,NULL,'2009-11-19 12:39:39',NULL,NULL);
INSERT INTO configuration VALUES (447,'ʣ�����ʤο������̵ͭ��ɽ������','PRODUCT_ALL_LISTING_MULTIPLE_ADD_TO_CART','3','ʣ�����ʤο������ɽ����̵ͭ��ɽ�����֤ˤĤ������ꤷ�ޤ���<br />0= off<br />1= ����<br />2= ����<br />3= ξ��',23,25,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ');
INSERT INTO configuration VALUES (448,'���徦�ʤ�ȥåץڡ�����ɽ������','SHOW_PRODUCT_INFO_MAIN_NEW_PRODUCTS','1','���徦�ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(104)�����ꤷ�Ƥ���������\r\n',24,65,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (449,'�������ᾦ�ʤ�ȥåץڡ�����ɽ������','SHOW_PRODUCT_INFO_MAIN_FEATURED_PRODUCTS','2','�������ᾦ�ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(104)�����ꤷ�Ƥ���������\r\n',24,66,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (450,'�ò����ʤ�ȥåץڡ�����ɽ������','SHOW_PRODUCT_INFO_MAIN_SPECIALS_PRODUCTS','3','�ò����ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(104)�����ꤷ�Ƥ���������\r\n',24,67,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (451,'����ͽ�꾦�ʤ�ȥåץڡ�����ɽ������','SHOW_PRODUCT_INFO_MAIN_UPCOMING','4','����ͽ�꾦�ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(104)�����ꤷ�Ƥ���������\r\n',24,68,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (452,'���徦�ʤ�ȥåץڡ�����ɽ������ - ���ƥ��ꡦ���֥��ƥ��궦��\r\n','SHOW_PRODUCT_INFO_CATEGORY_NEW_PRODUCTS','1','���徦�ʤ�(�ȥåץ�٥�)���ƥ��ꡦ���֥��ƥ��궦�˥ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(104)�����ꤷ�Ƥ���������\r\n',24,70,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (453,'�������ᾦ�ʤ�ȥåץڡ�����ɽ������ - ���ƥ��ꡦ���֥��ƥ��궦��','SHOW_PRODUCT_INFO_CATEGORY_FEATURED_PRODUCTS','2','�������ᾦ�ʤ�(�ȥåץ�٥�)���ƥ��ꡦ���֥��ƥ��궦�˥ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(104)�����ꤷ�Ƥ���������\r\n',24,71,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (454,'�ò����ʤ�ȥåץڡ�����ɽ������ - ���ƥ��ꡦ���֥��ƥ��궦��','SHOW_PRODUCT_INFO_CATEGORY_SPECIALS_PRODUCTS','3','�ò����ʤ�(�ȥåץ�٥�)���ƥ��ꡦ���֥��ƥ��궦�˥ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(104)�����ꤷ�Ƥ���������\r\n',24,72,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (455,'����ͽ�꾦�ʤ�ȥåץڡ�����ɽ������ - ���ƥ��ꡦ���֥��ƥ��궦��','SHOW_PRODUCT_INFO_CATEGORY_UPCOMING','4','����ͽ�꾦�ʤ�(�ȥåץ�٥�)���ƥ��ꡦ���֥��ƥ��궦�˥ȥåץڡ�����ɽ�� ���ޤ���?\r\n<br />\r\n0= off<br />\r\n�ޤ���ɽ��������(104)�����ꤷ�Ƥ���������\r\n',24,73,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (456,'���徦�ʤ�ȥåץڡ�����ɽ������ - ���顼�ȥ���ڤ쾦�ʥڡ���','SHOW_PRODUCT_INFO_MISSING_NEW_PRODUCTS','1','����ͽ�꾦�ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n(���顼�ȥ���ڤ쾦�ʥڡ�����/* ������̣���� */)<br />\r\n0= off<br />\r\n�ޤ��Ͻ��֤����(104)�����ꤷ�Ƥ���������',24,75,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (457,'�������ᾦ�ʤ�ȥåץڡ�����ɽ������ - ���顼�ȥ���ڤ쾦�ʥڡ���','SHOW_PRODUCT_INFO_MISSING_FEATURED_PRODUCTS','2','�������ᾦ�ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n(���顼�ȥ���ڤ쾦�ʥڡ�����/* ������̣���� */)<br />\r\n0= off<br />\r\n�ޤ��Ͻ��֤����(104)�����ꤷ�Ƥ���������',24,76,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (458,'�ò����ʤ�ȥåץڡ�����ɽ������ - ���顼�ȥ���ڤ쾦�ʥڡ���','SHOW_PRODUCT_INFO_MISSING_SPECIALS_PRODUCTS','3','�ò����ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n(���顼�ȥ���ڤ쾦�ʥڡ�����/* ������̣���� */)<br />\r\n0= off<br />\r\n�ޤ��Ͻ��֤����(104)�����ꤷ�Ƥ���������',24,77,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (459,'����ͽ�꾦�ʤ�ȥåץڡ�����ɽ������ - ���顼�ȥ���ڤ쾦�ʥڡ���','SHOW_PRODUCT_INFO_MISSING_UPCOMING','4','����ͽ�꾦�ʤ�ȥåץڡ�����ɽ�� ���ޤ���?\r\n(���顼�ȥ���ڤ쾦�ʥڡ�����/* ������̣���� */)<br />\r\n0= off<br />\r\n�ޤ��Ͻ��֤����(104)�����ꤷ�Ƥ���������',24,78,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (460,'���徦�ʤ�ɽ������ - ���ʥꥹ�Ȥβ�����','SHOW_PRODUCT_INFO_LISTING_BELOW_NEW_PRODUCTS','1','���ʥꥹ�Ȥβ��˿��徦�ʤ�ɽ�����ޤ���?\r\n<br />0= off <br />\r\n�ޤ������ֽ�����(104)�����ꤷ�Ƥ���������',24,85,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (461,'�������ᾦ�ʤ�ɽ������ - ���ʥꥹ�Ȥβ�����','SHOW_PRODUCT_INFO_LISTING_BELOW_FEATURED_PRODUCTS','2','���ʥꥹ�Ȥβ��ˤ������ᾦ�ʤ�ɽ�����ޤ���?\r\n<br />0= off <br />\r\n�ޤ������ֽ�����(104)�����ꤷ�Ƥ���������',24,86,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (462,'�ò����ʤ�ɽ������ - ���ʥꥹ�Ȥβ�����','SHOW_PRODUCT_INFO_LISTING_BELOW_SPECIALS_PRODUCTS','3','���ʥꥹ�Ȥβ����ò����ʤ�ɽ�����ޤ���?\r\n<br />0= off <br />\r\n�ޤ������ֽ�����(104)�����ꤷ�Ƥ���������',24,87,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (463,'����ͽ�꾦�ʤ�ɽ������ - ���ʥꥹ�Ȥβ�����','SHOW_PRODUCT_INFO_LISTING_BELOW_UPCOMING','4','���ʥꥹ�Ȥβ�������ͽ�꾦�ʤ�ɽ�����ޤ���?\r\n<br />0= off <br />\r\n�ޤ������ֽ�����(104)�����ꤷ�Ƥ���������',24,88,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ');
INSERT INTO configuration VALUES (464,'���徦�� - ���󤢤����ɽ������','SHOW_PRODUCT_INFO_COLUMNS_NEW_PRODUCTS','3','���徦�ʤ���(Row)��������������������ꤷ�ޤ���',24,95,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), ');
INSERT INTO configuration VALUES (465,'�������ᾦ�� - ���󤢤����ɽ������','SHOW_PRODUCT_INFO_COLUMNS_FEATURED_PRODUCTS','3','�������ᾦ�ʤ���(Row)��������������������ꤷ�ޤ���',24,96,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), ');
INSERT INTO configuration VALUES (466,'�ò����� - ���󤢤����ɽ������','SHOW_PRODUCT_INFO_COLUMNS_SPECIALS_PRODUCTS','3','�ò����ʤ���(Row)��������������������ꤷ�ޤ���',24,97,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), ');
INSERT INTO configuration VALUES (467,'�ȥåץ�٥�(��)���ƥ���ξ��ʥꥹ��ɽ�� - �ե��륿ɽ����������ɽ��','SHOW_PRODUCT_INFO_ALL_PRODUCTS','1','���ߤΥᥤ�󥫥ƥ���˾��ʥꥹ�Ȥ�Ŭ�Ѥ��줿�ݡ����ʤ�ե��륿ɽ�����ޤ���? ����Ȥ������ƥ��꤫�龦�ʤ�ɽ�����ޤ���?<br />\r\n��0= Filter\r\n��Off 1=Filter On',24,100,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'), ');
INSERT INTO configuration VALUES (468,'�ȥåץڡ���������ΰ� - ���ơ�����','DEFINE_MAIN_PAGE_STATUS','1','�Խ����줿�ΰ��ɽ����Ԥ��ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,60,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),');
INSERT INTO configuration VALUES (469,'�֤��䤤��碌�ץڡ�����ɽ�� - ���ơ�����','DEFINE_CONTACT_US_STATUS','1','�Խ����줿�֤��䤤��碌�ץƥ����Ȥ�ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,61,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),');
INSERT INTO configuration VALUES (470,'�ָĿ;����ݸ����ˡ�ɽ�� - ���ơ�����','DEFINE_PRIVACY_STATUS','1','�Խ����줿�ָĿ;����ݸ����ˡפ�ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,62,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),');
INSERT INTO configuration VALUES (471,'�������������ˤĤ��ơ� �ڡ��� - ���ơ�����','DEFINE_SHIPPINGINFO_STATUS','1','�Խ����줿�������������ˤĤ��ơץƥ����Ȥ�ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,63,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),');
INSERT INTO configuration VALUES (472,'�֤����ѵ���ץڡ��� - ���ơ�����','DEFINE_CONDITIONS_STATUS','1','�Խ����줿�֤����ѵ���ץڡ�����ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,64,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),');
INSERT INTO configuration VALUES (473,'�֤���ʸ����λ���ޤ����ץڡ��� - ���ơ�����','DEFINE_CHECKOUT_SUCCESS_STATUS','1','�Խ����줿�֤���ʸ����λ���ޤ����ץƥ����Ȥ�ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,65,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),');
INSERT INTO configuration VALUES (474,'�֥����ݥ���ץڡ��� - ���ơ�����','DEFINE_DISCOUNT_COUPON_STATUS','1','�Խ����줿�֥����ݥ���ץƥ����Ȥ�ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,66,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),');
INSERT INTO configuration VALUES (475,'�֥����ȥޥåסץڡ��� - ���ơ�����','DEFINE_SITE_MAP_STATUS','1','�Խ����줿�֥����ݥ���ץƥ����Ȥ�ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,67,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),');
INSERT INTO configuration VALUES (476,'��ͳ�Խ��ڡ���(Define Page) 2','DEFINE_PAGE_2_STATUS','1','��ͳ�Խ��ڡ���2��ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,82,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),');
INSERT INTO configuration VALUES (477,'��ͳ�Խ��ڡ���(Define Page) 3','DEFINE_PAGE_3_STATUS','1','��ͳ�Խ��ڡ���3 ��ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,83,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),');
INSERT INTO configuration VALUES (478,'��ͳ�Խ��ڡ���(Define Page) 4','DEFINE_PAGE_4_STATUS','1','��ͳ�Խ��ڡ���(Define Page) 4��ɽ�����ޤ���?<br />0= ���:ɽ�������Խ��ΰ�:��ɽ��<br />1= ���:ɽ�������Խ��ΰ�:ɽ��<br />2= ���:��ɽ�����Խ��ΰ�:ɽ��<br />3= ���:��ɽ�����Խ��ΰ�:��ɽ��',25,84,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),');
INSERT INTO configuration VALUES (479,'EZ�ڡ�����ɽ�� - �ڡ����إå�','EZPAGES_STATUS_HEADER','1','EZ�ڡ����Υ���ƥ�Ĥ�ڡ����إå���ɽ�����뤫�ɤ����򥰥��Х�(����������)�����ꤷ�ޤ���<br />0 = Off<br />1 = On<br />2= �����ȥ��ƥʥ󥹤κݤ˴����Ԥ�IP���ɥ쥹�ǥ��������������Τ�ɽ��<br />��ա���˥󥰤ϸ������줺�����Ԥˤ���ɽ������ޤ���',30,10,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ');
INSERT INTO configuration VALUES (480,'EZ�ڡ�����ɽ�� - �ڡ����եå�','EZPAGES_STATUS_FOOTER','1','EZ�ڡ����Υ���ƥ�Ĥ�ڡ����եå���ɽ�����뤫�ɤ����򥰥��Х�(����������)�����ꤷ�ޤ���<br />0 = Off<br />1 = On<br />2= �����ȥ��ƥʥ󥹤κݤ˴����Ԥ�IP���ɥ쥹�ǥ��������������Τ�ɽ��<br />��ա���˥󥰤ϸ������줺�����Ԥˤ���ɽ������ޤ���',30,11,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ');
INSERT INTO configuration VALUES (481,'EZ�ڡ�����ɽ�� - �����ɥܥå���','EZPAGES_STATUS_SIDEBOX','1','EZ�ڡ����Υ���ƥ�Ĥ򥵥��ɥܥå�����ɽ�����뤫�ɤ����򥰥��Х�(����������)�����ꤷ�ޤ���<br />0 = Off<br />1 = On<br />2= �����ȥ��ƥʥ󥹤κݤ˴����Ԥ�IP���ɥ쥹�ǥ��������������Τ�ɽ��<br />��ա���˥󥰤ϸ������줺�����Ԥˤ���ɽ������ޤ���',30,12,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ');
INSERT INTO configuration VALUES (482,'EZ�ڡ��� �Υإå� - ��󥯤Υ��ѥ졼��(���ڤ국��)','EZPAGES_SEPARATOR_HEADER','','E�ڥڡ����Υإå��Υ��ɽ���Υ��ѥ졼��(���ڤ�ʸ��)��?<br />�ǥե���� = &amp;nbsp;::&amp;nbsp;',30,20,'2009-11-19 13:10:25','2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (483,'EZ�ڡ��� �Υեå� - ��󥯤Υ��ѥ졼��(���ڤ국��)','EZPAGES_SEPARATOR_FOOTER','&nbsp;::&nbsp;','E�ڥڡ����Υեå��Υ��ɽ���Υ��ѥ졼��(���ڤ�ʸ��)��?<br />�ǥե���� = &amp;nbsp;::&amp;nbsp;',30,21,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (484,'EZ�ڡ��� - [����][����]�ܥ���','EZPAGES_SHOW_PREV_NEXT_BUTTONS','2','EZ�ڡ����Υ���ƥ����[����][³����][����]�ܥ����ɽ�����ޤ���?<br />0=OFF (�ܥ���ʤ�)<br />1=��³����פ�ɽ��<br />2=�����ءס�³����סּ��ءפ�ɽ��<br /><br />�ǥե���ȡ�2',30,30,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ');
INSERT INTO configuration VALUES (485,'EZ�ڡ��� - �ܼ���ɽ��','EZPAGES_SHOW_TABLE_CONTENTS','1','EZ�ڡ������ܼ���ɽ�����ޤ���?<br />0= OFF<br />1= ON',30,35,'2009-11-19 12:39:39','2009-11-19 12:39:39',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),');
INSERT INTO configuration VALUES (486,'EZ-�ڡ��� - �إå���ɽ�����ʤ��ڡ���','EZPAGES_DISABLE_HEADER_DISPLAY_LIST','','EZ�ڡ����Τ����̾�Υڡ����إå���ɽ�����ʤ��ڡ�����?<br />ɽ�����ʤ��ڡ����Υڡ���ID�򥫥��(,)���ڤ�ǵ��Ҥ��Ƥ����������ڡ���ID�ϴ������̤�[�ɲ����ꡦ�ġ���]��EZ�ڡ���������̤ǳ�ǧ�Ǥ��ޤ���<br />�㡧1,5,2<br />�ʤ����϶���Τޤ�',30,40,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (487,'EZ-�ڡ��� - �եå���ɽ�����ʤ��ڡ���','EZPAGES_DISABLE_FOOTER_DISPLAY_LIST','','EZ�ڡ����Τ����̾�Υڡ����եå���ɽ�����ʤ��ڡ�����?<br />ɽ�����ʤ��ڡ����Υڡ���ID�򥫥��(,)���ڤ�ǵ��Ҥ��Ƥ����������ڡ���ID�ϴ������̤�[�ɲ����ꡦ�ġ���]��EZ�ڡ���������̤ǳ�ǧ�Ǥ��ޤ���<br />�㡧3,7<br />�ʤ����϶���Τޤ�',30,41,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (488,'EZ-�ڡ��� - ��������ɽ�����ʤ��ڡ���','EZPAGES_DISABLE_LEFTCOLUMN_DISPLAY_LIST','','EZ�ڡ����Τ����̾�κ�������ɽ�����ʤ��ڡ�����?<br />ɽ�����ʤ��ڡ����Υڡ���ID�򥫥��(,)���ڤ�ǵ��Ҥ��Ƥ����������ڡ���ID�ϴ������̤�[�ɲ����ꡦ�ġ���]��EZ�ڡ���������̤ǳ�ǧ�Ǥ��ޤ���<br />�㡧6,17<br />�ʤ����϶���Τޤ�',30,42,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (489,'EZ-�ڡ��� - ��������ɽ�����ʤ��ڡ���','EZPAGES_DISABLE_RIGHTCOLUMN_DISPLAY_LIST','','EZ�ڡ����Τ����̾�α�������ɽ�����ʤ��ڡ�����?<br />ɽ�����ʤ��ڡ����Υڡ���ID�򥫥��(,)���ڤ�ǵ��Ҥ��Ƥ����������ڡ���ID�ϴ������̤�[�ɲ����ꡦ�ġ���]��EZ�ڡ���������̤ǳ�ǧ�Ǥ��ޤ���<br />�㡧5,23,47<br />�ʤ����϶���Τޤ�',30,43,NULL,'2009-11-19 12:39:39',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (490,'���䤤��碌���θĿ;����ǧ����ɽ��','DISPLAY_CONTACT_US_PRIVACY_CONDITIONS','true','���䤤��碌������̤ǸĿ;���γ�ǧ���̤�ɽ�����ޤ���<div style=\"color: red;\">2005ǯ4��1���˻ܹԤ��줿�ָĿ;����ݸ�ˡ�פǤϡ��Ŀ;����ݸ����ˤ򳫼����뤳�Ȥ������Ƥ��ޤ���</div>',11,3,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (491,'�դ꤬�ʤ�ɬ�פʹ�','FURIKANA_NECESSARY_COUNTRIES','Japanese','�դ꤬�ʤ�ɬ�פʹ�̾�򥫥�ޤǶ��ڤä����Ϥ��Ƥ�������',5,100,NULL,'2009-11-19 12:39:40',NULL,'');
INSERT INTO configuration VALUES (492,'Product Listing - Layout Style','PRODUCT_LISTING_LAYOUT_STYLE','rows','Select the layout style:<br />Each product can be listed in its own row (rows option) or products can be listed in multiple columns per row (columns option)',8,40,'2010-05-28 11:45:17','2009-11-19 12:39:41',NULL,'zen_cfg_select_option(array(\"rows\", \"columns\"),');
INSERT INTO configuration VALUES (493,'Product Listing - Columns Per Row','PRODUCT_LISTING_COLUMNS_PER_ROW','3','Select the number of columns of products to show in each row in the product listing. The default setting is 3.',8,41,NULL,'2009-11-19 12:39:41',NULL,NULL);
INSERT INTO configuration VALUES (494,'Display Cross-Sell Products','MIN_DISPLAY_XSELL','1','This is the minimum number of configured Cross-Sell products required in order to cause the Cross Sell information to be displayed.<br />Default: 1',2,17,NULL,'2009-11-19 12:39:41',NULL,NULL);
INSERT INTO configuration VALUES (495,'Display Cross-Sell Products','MAX_DISPLAY_XSELL','6','This is the maximum number of configured Cross-Sell products to be displayed.<br />Default: 6',3,66,NULL,'2009-11-19 12:39:41',NULL,NULL);
INSERT INTO configuration VALUES (496,'Cross-Sell Products Columns per Row','SHOW_PRODUCT_INFO_COLUMNS_XSELL_PRODUCTS','3','Cross-Sell Products Columns to display per Row<br />0= off or set the sort order.<br />Default: 3',18,72,NULL,'2009-11-19 12:39:41',NULL,'zen_cfg_select_option(array(0, 1, 2, 3, 4), ');
INSERT INTO configuration VALUES (497,'Cross-Sell - Display prices?','XSELL_DISPLAY_PRICE','false','Cross-Sell -- Do you want to display the product prices too?<br />Default: false',18,72,NULL,'2009-11-19 12:39:41',NULL,'zen_cfg_select_option(array(\'true\',\'false\'), ');
INSERT INTO configuration VALUES (498,'̵������','MODULE_SHIPPING_FREESHIPPER_STATUS','True','̵���������󶡤��ޤ�����',6,0,NULL,'2009-11-19 12:41:06',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (499,'̵������������','MODULE_SHIPPING_FREESHIPPER_COST','0','̵�������ˤ����륳����',6,6,NULL,'2009-11-19 12:41:06',NULL,NULL);
INSERT INTO configuration VALUES (500,'�����','MODULE_SHIPPING_FREESHIPPER_HANDLING','0','̵�������ˤ���������.',6,0,NULL,'2009-11-19 12:41:06',NULL,NULL);
INSERT INTO configuration VALUES (501,'�Ǽ���','MODULE_SHIPPING_FREESHIPPER_TAX_CLASS','0','��������Ŭ�Ѥ�����Ǽ��̤����򤷤Ƥ���������',6,0,NULL,'2009-11-19 12:41:06','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes(');
INSERT INTO configuration VALUES (502,'�����ϰ�','MODULE_SHIPPING_FREESHIPPER_ZONE','0','�����ϰ�����򤹤�����򤵤줿�ϰ�Τߤ����Ѳ�ǽ�ˤʤ�ޤ���.',6,0,NULL,'2009-11-19 12:41:06','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes(');
INSERT INTO configuration VALUES (503,'ɽ���������','MODULE_SHIPPING_FREESHIPPER_SORT_ORDER','0','ɽ��������������Ǥ��ޤ����������������ۤɾ�̤�ɽ������ޤ���',6,0,NULL,'2009-11-19 12:41:06',NULL,NULL);
INSERT INTO configuration VALUES (504,'������ؤ�������ͭ���ˤ���','MODULE_SHIPPING_YAMATO_STATUS','True','��ޥȱ�͢(�����)���������󶡤��ޤ���?',6,0,NULL,'2009-11-19 12:41:06',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (505,'�谷�������','MODULE_SHIPPING_YAMATO_HANDLING','0','������Ŭ�Ѥ���谷�����������Ǥ��ޤ�.',6,1,NULL,'2009-11-19 12:41:06',NULL,NULL);
INSERT INTO configuration VALUES (506,'����̵������','MODULE_SHIPPING_YAMATO_FREE_SHIPPING','False','����̵�������ͭ���ˤ��ޤ���? [��ץ⥸�塼��]-[����]-[����̵������]��ͥ�褹����� False ������Ǥ�������.',6,2,NULL,'2009-11-19 12:41:06',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (507,'������̵���ˤ�������������','MODULE_SHIPPING_YAMATO_OVER','5000','�����۰ʾ�򤴹����ξ���������̵���ˤ��ޤ�.',6,3,NULL,'2009-11-19 12:41:06',NULL,NULL);
INSERT INTO configuration VALUES (508,'�������Ͱ�Ψ','MODULE_SHIPPING_YAMATO_DISCOUNT','0','�������Ͱ�Ψ����ꤷ�ޤ�.(��)',6,4,NULL,'2009-11-19 12:41:06',NULL,NULL);
INSERT INTO configuration VALUES (509,'�����ϰ�','MODULE_SHIPPING_YAMATO_ZONE','0','�����ϰ�����򤹤�����򤵤줿�ϰ�Τߤ����Ѳ�ǽ�Ȥʤ�ޤ�.',6,5,NULL,'2009-11-19 12:41:06','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes(');
INSERT INTO configuration VALUES (510,'ɽ���������','MODULE_SHIPPING_YAMATO_SORT_ORDER','0','ɽ��������������Ǥ��ޤ�. �������������ۤɾ�̤�ɽ������ޤ�.',6,6,NULL,'2009-11-19 12:41:06',NULL,NULL);
INSERT INTO configuration VALUES (511,'Installed Modules','ADDON_MODULE_INSTALLED','aboutbox;addon_modules;feature_area;carousel_ui;am_ajax_address;ajax_category_tree;blog;calendar;category_sitemap;checkout_step;easy_admin;easy_admin_simplify;easy_design;easy_reviews;email_templates;globalnavi;jquery;multiple_image_view;point_base;point_createaccount;point_customersrate;point_grouprate;point_productsrate;product_csv;products_with_attributes_stock;search_more;shopping_cart_summary;sitemapXML','This is automatically updated. No need to edit.',6,0,'2010-06-27 05:17:44','2009-11-19 12:42:23',NULL,NULL);
INSERT INTO configuration VALUES (512,'�����⥸�塼���ͭ����','MODULE_ADDON_MODULES_STATUS','true','̵���ˤ��뤳�ȤϽ���ޤ���',6,0,NULL,'2009-11-19 12:42:37',NULL,'zen_cfg_select_option(array(\'true\'), ');
INSERT INTO configuration VALUES (513,'���۸�URL�ꥹ��','MODULE_ADDON_MODULES_DISTRIBUTION_URL','http://zen-cart.ark-web.jp/shida/zencart-sugu/','addon�⥸�塼��ѥå�������������륵���Ȥ�URL����ꤷ�Ƥ���������<br/>ʣ�����ꤹ����ϲ��Ԥ������Ϥ��Ƥ���������',6,1,NULL,'2009-11-19 12:42:37',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (514,'ͥ���','MODULE_ADDON_MODULES_SORT_ORDER','0','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,2,NULL,'2009-11-19 12:42:37',NULL,NULL);
INSERT INTO configuration VALUES (515,'�ѥ��å��������������','MOBILE_SLIM_SIZE','1','�ѥ��å����������˴ؤ�������򤷤ޤ�<BR />���������HTML��β��Ԥ䥹�ڡ�����������ե����륵�����򾮤������ޤ�����������ǥѥ��å���������󤹤��������ޤ�<br />0=OFF<br />1=ON<br />',100,2,NULL,'0001-01-01 00:00:00',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),');
INSERT INTO configuration VALUES (516,'���ӥ����ȥơ��ޥ��顼������','MOBILE_THEME_COLOR','#CA6312','�����ȤΥơ��ޥ��顼���#666666�פʤ�HTML���顼�����ɤ����ꤷ�ޤ������Υơ��ޥ��顼�ϡ����Ф����Ӥ��طʿ��ʤɤǻ��Ѥ���ޤ�',100,3,NULL,'0001-01-01 00:00:00',NULL,NULL);
INSERT INTO configuration VALUES (517,'CSS������','MOBILE_CSS_CONF','0','�����Ǥ�HTML���[class]��[id]��̵ͭ�����ꤷ�ޤ�<br />�ǥե���ȤǤϥե����륵�����̾���Ū�ΰ٤�0�����ꤵ��Ƥ��ޤ�<br />CSS����Ѥ������1�����ꤷ�Ʋ�����<BR /><br />0=CSS����Ѥ��ʤ�<br />1=CSS����Ѥ���<br />',100,4,NULL,'0001-01-01 00:00:00',NULL,'zen_cfg_select_option(array(\'0\', \'1\'),');
INSERT INTO configuration VALUES (518,'���Х��ȥܥå����֥�å���ͭ����','MODULE_ABOUTBOX_STATUS','true','���Х��ȥܥå�����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:50:52',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (519,'ͥ���','MODULE_ABOUTBOX_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 12:50:52',NULL,NULL);
INSERT INTO configuration VALUES (520,'���Х��ȥܥå����Υ����ȥ�','MODULE_ABOUTBOX_CFG_HEADER','','���Х��ȥܥå����֥�å���ɽ�����륿���ȥ����ꤷ�ޤ���',6,2,NULL,'2009-11-19 12:50:52',NULL,NULL);
INSERT INTO configuration VALUES (521,'���Х��ȥܥå�������ʸ�Υ����ȥ�','MODULE_ABOUTBOX_CFG_GREETING_TITLE','ŹĹ����ΰ���','���Х��ȥܥå�����ɽ����������ʸ�Υ����ȥ����ꤷ�ޤ���',6,3,NULL,'2009-11-19 12:50:52',NULL,NULL);
INSERT INTO configuration VALUES (522,'���Х��ȥܥå�������ʸ����ʸ','MODULE_ABOUTBOX_CFG_GREETING_TEXT','�����Ǥ��ʤ�˥ѥå��Υǥ⥷��åפǤ���\r\n�ƥ�ץ졼�Ȥμ����򤬤�Ф���','���Х��ȥܥå�����ɽ����������ʸ����ʸ����ꤷ�ޤ���',6,4,NULL,'2009-11-19 12:50:52',NULL,'zen_cfg_textarea_small(');
INSERT INTO configuration VALUES (523,'���Х��ȥܥå�����ɽ���������','MODULE_ABOUTBOX_CFG_IMAGEPATH','images/my.jpg','���Х��ȥܥå�����ɽ����������Υѥ�����ꤷ�ޤ���',6,5,NULL,'2009-11-19 12:50:52',NULL,NULL);
INSERT INTO configuration VALUES (524,'��������ɽ��','MODULE_ABOUTBOX_DISPLAY_CALENDAR','true','�Ķȥ���������ɽ�����뤫�ɤ������ꤷ�ޤ����Ķȥ��������⥸�塼�뤬���󥹥ȡ��뤵��Ƥ��ʤ���true�ˤ��Ƥ�ɽ������ޤ���<br />true: ɽ��<br />false: ��ɽ��',6,6,NULL,'2009-11-19 12:50:52',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (525,'�б����쥸�åȥ�����ɽ��','MODULE_ABOUTBOX_AVALABLE_CARDS','2','�б����쥸�åȥ����ɤ�ɽ�����뤫�ɤ������ꤷ�ޤ�<br />0: ��ɽ��<br />1: �ƥ�����ɽ��<br />2: ����ɽ��',6,7,NULL,'2009-11-19 12:50:52',NULL,'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ');
INSERT INTO configuration VALUES (526,'jQuery��ͭ����','MODULE_JQUERY_STATUS','true','jQuery��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:51:33',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (527,'jQuery�饤�֥��','MODULE_JQUERY_LIBRARY','jquery.js','jQuery�饤�֥��Υե�����̾�����ꤷ�ޤ����ä���ͳ���ʤ��¤��ѹ�����ɬ�פϤ���ޤ���<br />������� = jquery.js',6,1,NULL,'2009-11-19 12:51:33',NULL,NULL);
INSERT INTO configuration VALUES (528,'noConflict��ͭ����','MODULE_JQUERY_NOCONFLICT_STATUS','false','noConflict��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,2,NULL,'2009-11-19 12:51:33',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (529,'ͥ���','MODULE_JQUERY_SORT_ORDER','1','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,3,NULL,'2009-11-19 12:51:33',NULL,NULL);
INSERT INTO configuration VALUES (530,'���ʥ��ƥ����ͭ����','MODULE_ADDON_MODULES_AJAXCATEGORYTREE_STATUS','true','���ʥ��ƥ���ɽ����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:51:55',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (531,'ͥ���','MODULE_ADDON_MODULES_AJAXCATEGORYTREE_SORT_ORDER','1000','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 12:51:55',NULL,NULL);
INSERT INTO configuration VALUES (532,'�֥���ͭ����','MODULE_BLOG_STATUS','true','�֥���ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:52:36',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (533,'�֥�URL','MODULE_BLOG_URL','','�����оݤ�URL�� http:// �������Ϥ��Ƥ�������(https̤�б�)',6,1,NULL,'2009-11-19 12:52:36',NULL,NULL);
INSERT INTO configuration VALUES (534,'�����ॢ����','MODULE_BLOG_TIMEOUT','1','������ߥåȻ��֤����ꤷ�ޤ��������ǻ��ꤷ�����ְʾ�˼����˻��֤������ä����ϼ�������ߤ��ޤ�',6,2,NULL,'2009-11-19 12:52:36',NULL,NULL);
INSERT INTO configuration VALUES (535,'ɽ�����','MODULE_BLOG_COUNT','10','����ɽ����������ꤷ�ޤ���0�ξ��Ϥ��٤ƤȤʤ�ޤ�',6,3,NULL,'2009-11-19 12:52:36',NULL,NULL);
INSERT INTO configuration VALUES (536,'ͥ���','MODULE_BLOG_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,4,NULL,'2009-11-19 12:52:36',NULL,NULL);
INSERT INTO configuration VALUES (537,'�Ķȥ���������ͭ����','MODULE_CALENDAR_STATUS','true','�Ķȥ���������ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:53:04',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (538,'���γ��Ϥ�������','MODULE_CALENDAR_START_SUNDAY','true','���γ��Ϥ��������Ȥ��ޤ����� <br />true: ����<br />false: ����',6,1,NULL,'2009-11-19 12:53:04',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (539,'��û������ǽ��: ��ʸ������������αĶ���','MODULE_CALENDAR_DELIVERY_START','3','�������Ȥ��ƻ���Ǥ����ϰϤ������Ȥ��ƻ��ꤷ�ޤ�',6,2,NULL,'2009-11-19 12:53:04',NULL,NULL);
INSERT INTO configuration VALUES (540,'�ǽ�������ǽ��: ��û������ǽ����������','MODULE_CALENDAR_DELIVERY_END','14','�������Ȥ��ƻ���Ǥ����ϰϤ������Ȥ��ƻ��ꤷ�ޤ�',6,3,NULL,'2009-11-19 12:53:04',NULL,NULL);
INSERT INTO configuration VALUES (541,'����������������','MODULE_CALENDAR_HOPE_DELIVERY_TIME','���ꤷ�ʤ�,������,12��015��,15��018��,18��021��','���������������ܤ򥫥�޶��ڤ�����Ϥ��Ƥ�������',6,4,NULL,'2009-11-19 12:53:04',NULL,NULL);
INSERT INTO configuration VALUES (542,'ͥ���','MODULE_CALENDAR_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,5,NULL,'2009-11-19 12:53:04',NULL,NULL);
INSERT INTO configuration VALUES (543,'���롼����UI��ͭ����','MODULE_CAROUSEL_UI_STATUS','true','���롼����UI��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (544,'jCarouselLite�饤�֥��','MODULE_CAROUSEL_UI_JCAROUSELLITE_LIBRARY','jcarousellite.js','jCarouselLite�饤�֥��Υե�����̾�����ꤷ�ޤ����ä���ͳ���ʤ��¤��ѹ�����ɬ�פϤ���ޤ���<br />������� = jcarousellite.js',6,1,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (545,'ͥ���','MODULE_CAROUSEL_UI_SORT_ORDER','11','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������<br />��jQuery�⥸�塼������礭�ʿ��������ꤷ�Ƥ���������',6,2,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (546,'���徦�� - ����ɽ�����','MODULE_CAROUSEL_UI_MAX_DISPLAY_NEW_PRODUCTS','4','���徦�ʤκ���ɽ����������ꤷ�ޤ���<br />������� = 4',6,3,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (547,'���徦�� - ��ư��������','MODULE_CAROUSEL_UI_CONF_AUTO_NEW_PRODUCTS','0','���徦�ʤ�ưŪ�˥������뤹����δֳ�(�ߥ���)�����ꤷ�ޤ���<br />0�ߥ��äξ��ϼ�ư�������뤷�ޤ���<br />������� = 0',6,4,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (548,'���徦�� - ��������®��','MODULE_CAROUSEL_UI_CONF_SPEED_NEW_PRODUCTS','200','���徦�ʤ򥹥����뤹��®��(�ߥ���)�����ꤷ�ޤ���<br />�����ͤ��礭������Ȥ�ä��ꥹ�����뤷�ޤ���0�����ꤹ��ȥ������뤷�ʤ��ʤ�ޤ���<br />������� = 200',6,5,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (549,'���徦�� - �ĥ�������','MODULE_CAROUSEL_UI_CONF_VERTICAL_NEW_PRODUCTS','false','���徦�ʤ�Ĥ˥������뤷�ޤ�����<br />true: �ĥ�������<br />false: ����������<br />������� = false',6,6,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (550,'���徦�� - �۴ĥ�������','MODULE_CAROUSEL_UI_CONF_CIRCULAR_NEW_PRODUCTS','true','���徦�ʤ�۴�Ū�˥������뤷�ޤ�����<br />true: �۴ĥ�������<br />false: ������������<br />������� = true',6,7,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (551,'���徦�� - �������륨�ꥢɽ�����','MODULE_CAROUSEL_UI_CONF_VISIBLE_NEW_PRODUCTS','3','���徦�ʤΥ������륨�ꥢ��ɽ�������������ꤷ�ޤ���<br />������� = 3',6,8,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (552,'���徦�� - ����������','MODULE_CAROUSEL_UI_CONF_SCROLL_NEW_PRODUCTS','1','���徦�ʤΰ��٤˥������뤵�����������ꤷ�ޤ���<br />������� = 1',6,9,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (553,'�������ᾦ�� - ����ɽ�����','MODULE_CAROUSEL_UI_MAX_DISPLAY_FEATURED_PRODUCTS','4','�������ᾦ�ʤκ���ɽ����������ꤷ�ޤ���<br />������� = 4',6,10,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (554,'�������ᾦ�� - ��ư��������','MODULE_CAROUSEL_UI_CONF_AUTO_FEATURED_PRODUCTS','0','�������ᾦ�ʤ�ưŪ�˥������뤹����δֳ�(�ߥ���)�����ꤷ�ޤ���<br />0�ߥ��äξ��ϼ�ư�������뤷�ޤ���<br />������� = 0',6,11,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (555,'�������ᾦ�� - ��������®��','MODULE_CAROUSEL_UI_CONF_SPEED_FEATURED_PRODUCTS','200','�������ᾦ�ʤ򥹥����뤹��®��(�ߥ���)�����ꤷ�ޤ���<br />�����ͤ��礭������Ȥ�ä��ꥹ�����뤷�ޤ���0�����ꤹ��ȥ������뤷�ʤ��ʤ�ޤ���<br />������� = 200',6,12,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (556,'�������ᾦ�� - �ĥ�������','MODULE_CAROUSEL_UI_CONF_VERTICAL_FEATURED_PRODUCTS','false','�������ᾦ�ʤ�Ĥ˥������뤷�ޤ�����<br />true: �ĥ�������<br />false: ����������<br />������� = false',6,13,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (557,'�������ᾦ�� - �۴ĥ�������','MODULE_CAROUSEL_UI_CONF_CIRCULAR_FEATURED_PRODUCTS','true','�������ᾦ�ʤ�۴�Ū�˥������뤷�ޤ�����<br />true: �۴ĥ�������<br />false: ������������<br />������� = true',6,14,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (558,'�������ᾦ�� - �������륨�ꥢɽ�����','MODULE_CAROUSEL_UI_CONF_VISIBLE_FEATURED_PRODUCTS','3','�������ᾦ�ʤΥ������륨�ꥢ��ɽ�������������ꤷ�ޤ���<br />������� = 3',6,15,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (559,'�������ᾦ�� - ����������','MODULE_CAROUSEL_UI_CONF_SCROLL_FEATURED_PRODUCTS','1','�������ᾦ�ʤΰ��٤˥������뤵�����������ꤷ�ޤ���<br />������� = 1',6,16,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (560,'�ò����� - ����ɽ�����','MODULE_CAROUSEL_UI_MAX_DISPLAY_SPECIALS_PRODUCTS','4','�ò����ʤκ���ɽ����������ꤷ�ޤ���<br />������� = 4',6,17,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (561,'�ò����� - ��ư��������','MODULE_CAROUSEL_UI_CONF_AUTO_SPECIALS_PRODUCTS','0','�ò����ʤ�ưŪ�˥������뤹����δֳ�(�ߥ���)�����ꤷ�ޤ���<br />0�ߥ��äξ��ϼ�ư�������뤷�ޤ���<br />������� = 0',6,18,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (562,'�ò����� - ��������®��','MODULE_CAROUSEL_UI_CONF_SPEED_SPECIALS_PRODUCTS','200','�ò����ʤ򥹥����뤹��®��(�ߥ���)�����ꤷ�ޤ���<br />�����ͤ��礭������Ȥ�ä��ꥹ�����뤷�ޤ���0�����ꤹ��ȥ������뤷�ʤ��ʤ�ޤ���<br />������� = 200',6,19,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (563,'�ò����� - �ĥ�������','MODULE_CAROUSEL_UI_CONF_VERTICAL_SPECIALS_PRODUCTS','false','�ò����ʤ�Ĥ˥������뤷�ޤ�����<br />true: �ĥ�������<br />false: ����������<br />������� = false',6,20,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (564,'�ò����� - �۴ĥ�������','MODULE_CAROUSEL_UI_CONF_CIRCULAR_SPECIALS_PRODUCTS','true','�ò����ʤ�۴�Ū�˥������뤷�ޤ�����<br />true: �۴ĥ�������<br />false: ������������<br />������� = true',6,21,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (565,'�ò����� - �������륨�ꥢɽ�����','MODULE_CAROUSEL_UI_CONF_VISIBLE_SPECIALS_PRODUCTS','3','�ò����ʤΥ������륨�ꥢ��ɽ�������������ꤷ�ޤ���<br />������� = 3',6,22,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (566,'�ò����� - ����������','MODULE_CAROUSEL_UI_CONF_SCROLL_SPECIALS_PRODUCTS','1','�ò����ʤΰ��٤˥������뤵�����������ꤷ�ޤ���<br />������� = 1',6,23,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (567,'����ʾ��ʤ�������Ƥ��ޤ� - ����ɽ�����','MODULE_CAROUSEL_UI_MAX_DISPLAY_ALSO_PURCHASED_PRODUCTS','4','����ʾ��ʤ�������Ƥ��ޤ��κ���ɽ����������ꤷ�ޤ���<br />������� = 4',6,24,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (568,'����ʾ��ʤ�������Ƥ��ޤ� - ��ư��������','MODULE_CAROUSEL_UI_CONF_AUTO_ALSO_PURCHASED_PRODUCTS','0','����ʾ��ʤ�������Ƥ��ޤ���ưŪ�˥������뤹����δֳ�(�ߥ���)�����ꤷ�ޤ���<br />0�ߥ��äξ��ϼ�ư�������뤷�ޤ���<br />������� = 0',6,25,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (569,'����ʾ��ʤ�������Ƥ��ޤ� - ��������®��','MODULE_CAROUSEL_UI_CONF_SPEED_ALSO_PURCHASED_PRODUCTS','200','����ʾ��ʤ�������Ƥ��ޤ��򥹥����뤹��®��(�ߥ���)�����ꤷ�ޤ���<br />�����ͤ��礭������Ȥ�ä��ꥹ�����뤷�ޤ���0�����ꤹ��ȥ������뤷�ʤ��ʤ�ޤ���<br />������� = 200',6,26,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (570,'����ʾ��ʤ�������Ƥ��ޤ� - �ĥ�������','MODULE_CAROUSEL_UI_CONF_VERTICAL_ALSO_PURCHASED_PRODUCTS','false','����ʾ��ʤ�������Ƥ��ޤ���Ĥ˥������뤷�ޤ�����<br />true: �ĥ�������<br />false: ����������<br />������� = false',6,27,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (571,'����ʾ��ʤ�������Ƥ��ޤ� - �۴ĥ�������','MODULE_CAROUSEL_UI_CONF_CIRCULAR_ALSO_PURCHASED_PRODUCTS','true','����ʾ��ʤ�������Ƥ��ޤ���۴�Ū�˥������뤷�ޤ�����<br />true: �۴ĥ�������<br />false: ������������<br />������� = true',6,28,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (572,'����ʾ��ʤ�������Ƥ��ޤ� - �������륨�ꥢɽ�����','MODULE_CAROUSEL_UI_CONF_VISIBLE_ALSO_PURCHASED_PRODUCTS','3','����ʾ��ʤ�������Ƥ��ޤ��Υ������륨�ꥢ��ɽ�������������ꤷ�ޤ���<br />������� = 3',6,29,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (573,'����ʾ��ʤ�������Ƥ��ޤ� - ����������','MODULE_CAROUSEL_UI_CONF_SCROLL_ALSO_PURCHASED_PRODUCTS','1','����ʾ��ʤ�������Ƥ��ޤ��ΰ��٤˥������뤵�����������ꤷ�ޤ���<br />������� = 1',6,30,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (574,'��Ϣ���� - ����ɽ�����','MODULE_CAROUSEL_UI_MAX_DISPLAY_XSELL_PRODUCTS','4','��Ϣ���ʤκ���ɽ����������ꤷ�ޤ���<br />������� = 4',6,31,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (575,'��Ϣ���� - ��ư��������','MODULE_CAROUSEL_UI_CONF_AUTO_XSELL_PRODUCTS','0','��Ϣ���ʤ�ưŪ�˥������뤹����δֳ�(�ߥ���)�����ꤷ�ޤ���<br />0�ߥ��äξ��ϼ�ư�������뤷�ޤ���<br />������� = 0',6,32,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (576,'��Ϣ���� - ��������®��','MODULE_CAROUSEL_UI_CONF_SPEED_XSELL_PRODUCTS','200','��Ϣ���ʤ򥹥����뤹��®��(�ߥ���)�����ꤷ�ޤ���<br />�����ͤ��礭������Ȥ�ä��ꥹ�����뤷�ޤ���0�����ꤹ��ȥ������뤷�ʤ��ʤ�ޤ���<br />������� = 200',6,33,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (577,'��Ϣ���� - �ĥ�������','MODULE_CAROUSEL_UI_CONF_VERTICAL_XSELL_PRODUCTS','false','��Ϣ���ʤ�Ĥ˥������뤷�ޤ�����<br />true: �ĥ�������<br />false: ����������<br />������� = false',6,34,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (578,'��Ϣ���� - �۴ĥ�������','MODULE_CAROUSEL_UI_CONF_CIRCULAR_XSELL_PRODUCTS','true','��Ϣ���ʤ�۴�Ū�˥������뤷�ޤ�����<br />true: �۴ĥ�������<br />false: ������������<br />������� = true',6,35,NULL,'2009-11-19 12:53:57',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (579,'��Ϣ���� - �������륨�ꥢɽ�����','MODULE_CAROUSEL_UI_CONF_VISIBLE_XSELL_PRODUCTS','3','��Ϣ���ʤΥ������륨�ꥢ��ɽ�������������ꤷ�ޤ���<br />������� = 3',6,36,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (580,'��Ϣ���� - ����������','MODULE_CAROUSEL_UI_CONF_SCROLL_XSELL_PRODUCTS','1','��Ϣ���ʤΰ��٤˥������뤵�����������ꤷ�ޤ���<br />������� = 1',6,37,NULL,'2009-11-19 12:53:57',NULL,NULL);
INSERT INTO configuration VALUES (581,'���ƥ��ꥵ���ȥޥåפ�ͭ����','MODULE_ADDON_MODULES_CATEGORY_SITEMAP_STATUS','true','���ƥ��ꥵ���ȥޥå�ɽ����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:54:42',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (582,'ɽ�����륫�ƥ���ο���','MODULE_ADDON_MODULES_CATEGORY_SITEMAP_TREE_LEVEL','2','ɽ�����륫�ƥ���ο�������ꤷ�ޤ��ʥǥե����=2��',6,1,NULL,'2009-11-19 12:54:42',NULL,NULL);
INSERT INTO configuration VALUES (583,'ͥ���','MODULE_ADDON_MODULES_CATEGORY_SITEMAP_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,2,NULL,'2009-11-19 12:54:42',NULL,NULL);
INSERT INTO configuration VALUES (584,'��ʸ���ƥå�ɽ����ͭ����','MODULE_CHECKOUT_STEP_STATUS','true','��ʸ���ƥå�ɽ����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:56:18',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (585,'ͥ���','MODULE_CHECKOUT_STEP_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 12:56:18',NULL,NULL);
INSERT INTO configuration VALUES (586,'������˥塼�������ͭ����','MODULE_EASY_ADMIN_STATUS','false','������˥塼�������ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:56:42',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (587,'ͥ���','MODULE_EASY_ADMIN_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 12:56:42',NULL,NULL);
INSERT INTO configuration VALUES (590,'�ǥ�����������ͭ����','MODULE_EASY_DESIGN_STATUS','true','�ǥ�����������ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 12:59:53',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (591,'ͥ���','MODULE_EASY_DESIGN_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 12:59:53',NULL,NULL);
INSERT INTO configuration VALUES (1534,'�᡼��ƥ�ץ졼�Ȥ�ͭ����','MODULE_EMAIL_TEMPLATES_STATUS','true','�᡼��ƥ�ץ졼�Ȥ�ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2010-06-27 04:29:58',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (1535,'ͥ���','MODULE_EMAIL_TEMPLATES_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2010-06-27 04:29:58',NULL,NULL);
INSERT INTO configuration VALUES (594,'�ե������㡼���ꥢUI��ͭ����','MODULE_FEATURE_AREA_STATUS','true','�ե������㡼���ꥢUI��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:02:18',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (595,'ͥ���','MODULE_FEATURE_AREA_SORT_ORDER','10','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 13:02:18',NULL,NULL);
INSERT INTO configuration VALUES (596,'����ͥ��� - ��ư�������� ','MODULE_FEATURE_AREA_UI_CONF_AUTO','6200','����ͥ����ưŪ�˥������뤹����δֳ�(�ߥ���)�����ꤷ�ޤ���<br />0�ߥ��äξ��ϼ�ư�������뤷�ޤ���<br />������� = 6200',6,2,NULL,'2009-11-19 13:02:18',NULL,NULL);
INSERT INTO configuration VALUES (597,'����ͥ��� - ��������®��','MODULE_FEATURE_AREA_UI_CONF_SPEED','800','����ͥ���򥹥����뤹��®��(�ߥ���)�����ꤷ�ޤ���<br />�����ͤ��礭������Ȥ�ä��ꥹ�����뤷�ޤ���0�����ꤹ��ȥ������뤷�ʤ��ʤ�ޤ���<br />������� = 800',6,3,NULL,'2009-11-19 13:02:18',NULL,NULL);
INSERT INTO configuration VALUES (598,'����ͥ��� - �������륨�ꥢɽ�����','MODULE_FEATURE_AREA_UI_CONF_VISIBLE','5','����ͥ���Υ������륨�ꥢ��ɽ�������������ꤷ�ޤ���<br />������� = 5',6,4,NULL,'2009-11-19 13:02:18',NULL,NULL);
INSERT INTO configuration VALUES (599,'�����Х�ʥӥ֥�å���ͭ����','MODULE_GLOBALNAVI_STATUS','true','�����Х�ʥӤ�ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:03:12',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (600,'ͥ���','MODULE_GLOBALNAVI_SORT_ORDER','1950','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 13:03:12',NULL,NULL);
INSERT INTO configuration VALUES (601,'ɽ�����륫�ƥ���ξ��','MODULE_GLOBALNAVI_CFG_LIMIT','5','�����Х�ʥӤ�ɽ�����륫�ƥ�����ξ�¤����ꤷ�ޤ�',6,2,NULL,'2009-11-19 13:03:12',NULL,NULL);
INSERT INTO configuration VALUES (602,'ʣ������ɽ�� ��ͭ����','MODULE_MULTIPLE_IMAGE_VIEW_STATUS','true','ʣ������ɽ����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:03:54',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (603,'ͥ���','MODULE_MULTIPLE_IMAGE_VIEW_SORT_ORDER','10','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 13:03:54',NULL,NULL);
INSERT INTO configuration VALUES (604,'����ͥ��륵��������','MODULE_MULTIPLE_IMAGE_VIEW_THMB_WIDTH','100','����ͥ��������ɽ����������Ǥ��ޤ���(pixel)',6,2,NULL,'2009-11-19 13:03:54',NULL,NULL);
INSERT INTO configuration VALUES (605,'����ͥ��륵�������⤵','MODULE_MULTIPLE_IMAGE_VIEW_THMB_HEIGHT','80','����ͥ��������ɽ���⤵������Ǥ��ޤ���(pixel)',6,3,NULL,'2009-11-19 13:03:54',NULL,NULL);
INSERT INTO configuration VALUES (606,'CSV�ˤ�뾦�ʰ����Ͽ��ͭ����','MODULE_PRODUCT_CSV_STATUS','true','CSV�ˤ�뾦�ʰ����Ͽ��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:04:30',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (607,'ͥ���','MODULE_PRODUCT_CSV_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 13:04:30',NULL,NULL);
INSERT INTO configuration VALUES (608,'���ץ������κ߸˴�����ͭ����','MODULE_PRODUCTS_WITH_ATTRIBUTES_STOCK_STATUS','true','���ץ������κ߸˴�����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:05:03',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (609,'ͥ���','MODULE_PRODUCTS_WITH_ATTRIBUTES_STOCK_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 13:05:03',NULL,NULL);
INSERT INTO configuration VALUES (610,'���ʥ�ӥ塼��ͭ����','MODULE_REVIEWS_STATUS','true','���ʥ�ӥ塼��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:05:33',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (611,'���ʾܺ٥ڡ�������ӥ塼ɽ����','MODULE_REVIEWS_MAX_DISPLAY_NEW_REVIEWS','3','���ʾܺ٥ڡ�����ɽ������뾦�ʥ�ӥ塼�ο������ꤷ�Ƥ���������<br />���ʥ�ӥ塼�����ڡ����Υ�ӥ塼���ϡְ��������-�ֺ����ͤ������-�ֿ�������ӥ塼��ɽ���������͡פ����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 13:05:33',NULL,NULL);
INSERT INTO configuration VALUES (612,'�������桼�����ξ��ʥ�ӥ塼�����ػ�','MODULE_REVIEWS_LIST_DISPLAY_FORCE_LOGIN','false','�����󤷤Ƥ��ʤ��桼�����Ͼ��ʥ�ӥ塼�������Ǥ��ʤ���',6,2,NULL,'2009-11-19 13:05:33',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (613,'ͥ���','MODULE_REVIEWS_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,3,NULL,'2009-11-19 13:05:33',NULL,NULL);
INSERT INTO configuration VALUES (614,'��äȸ�����ͭ����','MODULE_SEARCH_MORE_STATUS','true','��äȸ�����ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 13:06:01',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (615,'ɽ������ꥹ�ȥܥå����Υ����ȥ�','MODULE_SEARCH_MORE_PAGE_MAX_LIST_NAME','ɽ�����','���ʰ��������ɽ������뾦�ʤο�����ꤹ��ꥹ�ȤΥ�٥����ꤷ�Ƥ����������ǥե�����ͤϡ�ɽ������פǤ���',6,1,NULL,'2009-11-19 13:06:01',NULL,NULL);
INSERT INTO configuration VALUES (616,'ɽ������ꥹ�ȥܥå�������','MODULE_SEARCH_MORE_PAGE_MAX_LIST_VALUE','10,25,50,100','���ʰ��������ɽ������뾦�ʤο�����ꤹ��ꥹ�Ȥ����Ƥ򥫥��(,)���ڤ�ǻ��ꤷ�Ƥ����������ǥե�����ͤϡ�10,25,50,100�פǤ���',6,2,NULL,'2009-11-19 13:06:01',NULL,NULL);
INSERT INTO configuration VALUES (617,'�¤��ؤ��ꥹ�ȥܥå����Υ����ȥ�','MODULE_SEARCH_MORE_SORT_LIST_NAME','�¤��ؤ�','���ʰ����Υ����Ƚ����ꤹ��ꥹ�ȤΥ�٥����ꤷ�Ƥ����������ǥե�����ͤϡ��¤��ؤ��פǤ���',6,3,NULL,'2009-11-19 13:06:01',NULL,NULL);
INSERT INTO configuration VALUES (618,'ͥ���','MODULE_SEARCH_MORE_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,4,NULL,'2009-11-19 13:06:01',NULL,NULL);
INSERT INTO configuration VALUES (622,'�ݥ���ȥ⥸�塼���ͭ����<br />ͭ�����θ��<a href=\"http://zen-cart.ark-web.jp/ohtsuji/zencart-sugu/admin/addon_modules_admin.php?module=addon_modules/blocks\">�֥�å�������</a>����ָ��ߤΥݥ���Ȼĳۡץ֥�å���ɽ������򤷤Ƥ���������','MODULE_POINT_BASE_STATUS','true','�ݥ���Ȥ�ͭ���ˤ��ޤ����� (�ݥ���ȥ⥸�塼���¾�����ƤΥݥ���ȥ⥸�塼��ˤȤä�ɬ�ܤǤ�)<br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 18:25:40',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (623,'�ݥ����ñ��̾��','MODULE_POINT_BASE_POINT_SYMBOL','point','�ݥ���Ȥ�ñ��̾�Τ����Ϥ��Ƥ���������<br />������� = point',6,1,NULL,'2009-11-19 18:25:40',NULL,NULL);
INSERT INTO configuration VALUES (624,'�ݥ���ȴ����ڡ�����ɽ������ݥ��������κ�����','MODULE_POINT_BASE_MAX_DISPLAY_SEARCH_RESULTS_POINTS','20','�ݥ���ȴ����ڡ�����ɽ������ݥ��������κ����ͤ����ꤷ�Ƥ���������<br />������� = 20',6,2,NULL,'2009-11-19 18:25:40',NULL,NULL);
INSERT INTO configuration VALUES (625,'ͥ���','MODULE_POINT_BASE_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,3,NULL,'2009-11-19 18:25:40',NULL,NULL);
INSERT INTO configuration VALUES (640,'�����Ͽ�ݥ����ȯ�ԥ⥸�塼���ͭ����','MODULE_POINT_CREATEACCOUNT_STATUS','true','�����Ͽ�ݥ����ȯ�ԥ⥸�塼���ͭ���ˤ��ޤ�����<br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 18:56:07',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (641,'ȯ�ԥݥ���Ȥ���α','MODULE_POINT_CREATEACCOUNT_PENDING','false','�ݥ����ȯ�Ի��ˤ��Υݥ���Ȥλ��Ѥ���α�ˤ��ޤ�����<br />��α���ʤ����ϥݥ����ȯ�Ը夹���˻��ѤǤ��ޤ���<br />true: ��α�ˤ���<br />false: ��α�ˤ��ʤ���¨�����Ѳ�ǽ��',6,1,NULL,'2009-11-19 18:56:07',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (642,'�����Ͽ�ݥ���ȿ�','MODULE_POINT_CREATEACCOUNT_POINT','','�����Ͽ���ˤ��β���إץ쥼��Ȥ���ݥ���ȿ������ꤷ�ޤ���<br />��: 500 (�����Ͽ����500�ݥ���ȥץ쥼���)',6,2,NULL,'2009-11-19 18:56:07',NULL,NULL);
INSERT INTO configuration VALUES (643,'ͥ���','MODULE_POINT_CREATEACCOUNT_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,3,NULL,'2009-11-19 18:56:07',NULL,NULL);
INSERT INTO configuration VALUES (644,'�ܵ���ݥ���ȴԸ�Ψ����⥸�塼���ͭ����','MODULE_POINT_CUSTOMERSRATE_STATUS','true','�ܵ���ݥ���ȴԸ�Ψ�����ͭ���ˤ��ޤ�����<br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 18:56:29',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (645,'ͥ���','MODULE_POINT_CUSTOMERSRATE_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 18:56:29',NULL,NULL);
INSERT INTO configuration VALUES (646,'�ܵҥ��롼����ݥ���ȴԸ�Ψ����⥸�塼���ͭ����','MODULE_POINT_GROUPRATE_STATUS','true','�ܵҥ��롼����ݥ���ȴԸ�Ψ�����ͭ���ˤ��ޤ�����<br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 18:56:53',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (647,'ͥ���','MODULE_POINT_GROUPRATE_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 18:56:53',NULL,NULL);
INSERT INTO configuration VALUES (648,'������ݥ���ȴԸ�Ψ����⥸�塼���ͭ����','MODULE_POINT_PRODUCTSRATE_STATUS','true','������ݥ���ȴԸ�Ψ�����ͭ���ˤ��ޤ�����<br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 18:57:28',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (649,'ͥ���','MODULE_POINT_PRODUCTSRATE_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 18:57:28',NULL,NULL);
INSERT INTO configuration VALUES (650,'����åԥ󥰥����ȥ��ޥ꡼�֥�å���ͭ����','MODULE_SHOPPING_CART_SUMMARY_STATUS','true','����åԥ󥰥����ȥ��ޥ꡼�֥�å���ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2009-11-19 19:37:35',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (651,'ͥ���','MODULE_SHOPPING_CART_SUMMARY_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,1,NULL,'2009-11-19 19:37:35',NULL,NULL);
INSERT INTO configuration VALUES (1531,'���ʤ���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_SUPER_ORDERS_PRODUCTS','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1530,'�����ʬ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_SUPER_ORDERS_SPLIT','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1529,'��ʸ�ǽ�����','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_SUPER_ORDERS_FINAL','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1528,'��ʧ����','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_SUPER_ORDERS_PAYMENT','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1527,'��ץ⥸�塼��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_MODULES_OT_TOTAL','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1522,'SMTPǧ�� - DNS̾','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_209','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1523,'SMTPǧ�� - IP�ݡ����ֹ�','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_210','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1520,'SMTPǧ�� - �᡼�륢�������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_207','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1521,'SMTPǧ�� - �ѥ����','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_208','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1519,'����饤��桼��������ɽ������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_243','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1517,'�߸ˤ鷺���ˤʤä���᡼������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_240','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1518,'�֥᡼��ޥ�����ι��ɲ���ץ�󥯤�ɽ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_242','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1513,'�Ǻ��Ԥ���ӥ塼�ˤĤ��ƤΥ᡼��������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_236','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1514,'�֤��䤤��碌�ץ᡼��Υɥ�åץ���������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_237','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1516,'�֤��䤤��碌�פ˥���å�̾�Ƚ����ɽ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_239','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1515,'�����Ȥˡ�ͧã���Τ餻��׵�ǽ�����','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_238','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1510,'����åױ��ļԤ���ʸ���ơ������᡼��(���ԡ�)������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_233','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1511,'����åױ��ļԤ���ʸ���ơ������᡼��(���ԡ�)��������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_234','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1512,'�Ǻ��Ԥ���ӥ塼�ˤĤ��ƥ᡼������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_235','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1506,'����åױ��ļԤ���Υ��եȷ����ե᡼��(���ԡ�)������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_229','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1507,'����åױ��ļԤ���Υ��եȷ����ե᡼��(���ԡ�)��������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_230','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1508,'����åױ��ļԤ���Υ����ݥ�����ե᡼��(���ԡ�)������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_231','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1509,'����åױ��ļԤ���Υ����ݥ�����ե᡼��(���ԡ�)��������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_232','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1505,'���եȷ����ե᡼��(���ԡ�)��������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_228','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1503,'�����Ԥ���������᡼��ե����ޥå�','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_221','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1504,'���եȷ����ե᡼��(���ԡ�)������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_227','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1502,'�����᡼������������ɥ쥹�μº���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_220','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1501,'�᡼���������顼��ɽ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_217','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1500,'�᡼����¸������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_216','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1498,'�᡼�륢�ɥ쥹��DNS�ǳ�ǧ','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_214','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1499,'�᡼�������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_215','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1495,'�᡼������ - ��³��ˡ','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_206','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1497,'�᡼��������MIME HTML�����','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_213','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1496,'�᡼��β��ԥ�����','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_12_212','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1494,'���ƥ�����ξ��ʿ���ɽ�� - ��������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_28','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1489,'Zen Cart���С������μ�ư�����å�(�إå��ǹ��Τ��뤫�ݤ�)','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_22','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1490,'�����Фβ�ư����(���åץ�����)','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_24','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1491,'����ڤ�ڡ����Υ����å�','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_25','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1492,'HTML���ǥ���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_26','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1493,'phpBB�ؤΥ�󥯤�ɽ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_27','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1488,'�������̤Υץ��������ξ�»�������(��)','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_21','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1487,'�������̤Υ����ॢ��������(�ÿ�)','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_20','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1486,'����åפΥ��ơ�����','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_23','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1483,'���ʤˤ������ǳۤλ�����','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_17','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1484,'�����ˤ������ǳۤλ�����','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_18','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1485,'�Ƕ��ɽ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_19','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1482,'���ʤ��ǹ��ߤ�ɽ�� - ��������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_16','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1480,'�ǳۤξ���������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_14','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1481,'���ʤ��ǹ��ߤ�ɽ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_15','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1476,'ɽ�����������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_8','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1477,'���ʤ��ɲø�˥����Ȥ�ɽ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_10','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1478,'�ǥե���Ȥθ����黻��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_11','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1479,'���ƥ�����ξ��ʿ���ɽ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_13','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1474,'����ͽ�꾦�ʤΥ����Ƚ���Ѥ���ե������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_6','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1475,'ɽ��������̲ߤ�Ϣư','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_7','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1470,'�����ե�����̾������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_BANNER_MANAGER_IMAGE_LOCAL','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1471,'��������¸��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_BANNER_MANAGER_IMAGE_TARGET','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1473,'����ͽ�꾦�ʤΥ����Ƚ�','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_5','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1472,'����åץ����ʡ�̾','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CONFIGURATION_1_2','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1469,'�������Хʡ�','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_BANNER_MANAGER_NEW_GROUP','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1468,'����,°��,�Ͱ�����','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ATTRIBUTES_CONTROLLER_COLUMN','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1466,'��������ץ������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ATTRIBUTES_CONTROLLER_PRODUCTS','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1467,'°������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ATTRIBUTES_CONTROLLER_LEGEND','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1465,'���ƥ�������ץ������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ATTRIBUTES_CONTROLLER_CATEGORIES','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1464,'���ץ�������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ATTRIBUTES_CONTROLLER_IMAGE','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1463,'°���ե饰','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ATTRIBUTES_CONTROLLER_FLAGS','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1462,'ñ��/ʸ���Ͱ���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ATTRIBUTES_CONTROLLER_PRICE_WORDS','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1461,'�����Ͱ���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ATTRIBUTES_CONTROLLER_QTY_PRICES','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1460,'°���Υץ饤���ե�������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ATTRIBUTES_CONTROLLER_PRICE_FACTOR','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1459,'°���Υ�󥿥����Ͱ���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ATTRIBUTES_CONTROLLER_ONETIME','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1458,'°���ν���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ATTRIBUTES_CONTROLLER_WEIGHT','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1457,'������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ATTRIBUTES_CONTROLLER_NUMBER_UNIT','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1456,'ʣ�����ƥ���Υ�󥯴����ؤΥ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ATTRIBUTES_CONTROLLER_CATEGORY','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1455,'���ʤ���Ӳ����Խ��ܥ���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ATTRIBUTES_CONTROLLER_MODIFY','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1454,'�������ᾦ�ʥץ������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_OPTIONS_VALUES_COPIER','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1453,'���ԡ����','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_OPTIONS_VALUES_COPY','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1452,'���ܸ�ʳ������Ϲ���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_OPTIONS_VALUES_LANGUAGE','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1451,'�ƥ�����°����Ĺ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_OPTIONS_NAME_LENGTH','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1450,'��Ϣ���礭���ѹ�','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_OPTIONS_NAME_BIG_MODIFY','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1449,'���ܸ�ʳ������Ϲ���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_OPTIONS_NAME_LANGUAGE','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1448,'�Խ��ؤΥ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_FEATURED_EDIT_LINK','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1447,'���ʤδ����ؤΥ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_FEATURED_PRICE_LINK','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1446,'������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_SPECIALS_NUMBER_UNIT','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1445,'����ؤΥ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_SPECIALS_PRE_ADD','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1443,'���ʤδ����ؤΥ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_SPECIALS_PRICE_LINK','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1444,'�Խ��ؤΥ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_SPECIALS_EDIT_LINK','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1436,'������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_NUMBER_UNIT','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1437,'�᥿�����Ǥ���ս�','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_META_TAGS_USAGE','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1438,'ʣ���Υ��ƥ��꤬�ޥ͡��������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_CATEGORY_MANAGER','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1439,'���ܸ�ʳ������Ϲ���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_ORDER_STATUS_LANGUAGE','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1440,'���롼�׳��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CUSTOMERS_GROUP_PRICING','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1441,'�����£��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CUSTOMERS_REFERRAL','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1442,'���ܸ�ʳ������Ϲ���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_MANUFACTURERS_LANGUAGE','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (767,'Sitemap XML��ͭ����','MODULE_SITEMAPXML_STATUS','true','Sitemap XML��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2010-04-20 19:40:09',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (768,'Compress XML File','MODULE_SITEMAPXML_COMPRESS','false','Compress Google XML Sitemap file',6,1,NULL,'2010-04-20 19:40:09',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (769,'Lastmod tag format','MODULE_SITEMAPXML_LASTMOD_FORMAT','date','Lastmod tag format:<br />date - Complete date: YYYY-MM-DD (eg 1997-07-16)<br />full -    Complete date plus hours, minutes and seconds: YYYY-MM-DDThh:mm:ssTZD (eg 1997-07-16T19:20:30+01:00)',6,2,NULL,'2010-04-20 19:40:09',NULL,'zen_cfg_select_option(array(\'date\', \'full\'), ');
INSERT INTO configuration VALUES (770,'Use Existing Files','MODULE_SITEMAPXML_USE_EXISTING_FILES','true','Use Existing XML Files',6,3,NULL,'2010-04-20 19:40:09',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (771,'Generate language_id for default language','MODULE_SITEMAPXML_USE_DEFAULT_LANGUAGE','true','Generate language_id parameter for default language',6,4,NULL,'2010-04-20 19:40:09',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (772,'Ping urls','MODULE_SITEMAPXML_PING_URLS','Google => http://www.google.com/webmasters/sitemaps/ping?sitemap=%s; Yahoo! => http://search.yahooapis.com/SiteExplorerService/V1/ping?sitemap=%s; Ask.com => http://submissions.ask.com/ping?sitemap=%s; Microsoft => http://www.moreover.com/ping?u=%s','List of pinging urls separated by ;',6,5,NULL,'2010-04-20 19:40:09',NULL,'zen_cfg_textarea(');
INSERT INTO configuration VALUES (773,'Products order by','MODULE_SITEMAPXML_PRODUCTS_ORDERBY','products_sort_order ASC, last_date DESC','',6,6,NULL,'2010-04-20 19:40:09',NULL,NULL);
INSERT INTO configuration VALUES (774,'Products changefreq','MODULE_SITEMAPXML_PRODUCTS_CHANGEFREQ','weekly','How frequently the Product pages page is likely to change.',6,7,NULL,'2010-04-20 19:40:09',NULL,'zen_cfg_select_option(array(\'always\', \'hourly\', \'daily\', \'weekly\', \'monthly\', \'yearly\', \'never\'),');
INSERT INTO configuration VALUES (775,'Categories order by','MODULE_SITEMAPXML_CATEGORIES_ORDERBY','sort_order ASC, last_date DESC','',6,8,NULL,'2010-04-20 19:40:09',NULL,NULL);
INSERT INTO configuration VALUES (776,'Category changefreq','MODULE_SITEMAPXML_CATEGORIES_CHANGEFREQ','weekly','How frequently the Category pages page is likely to change.',6,9,NULL,'2010-04-20 19:40:09',NULL,'zen_cfg_select_option(array(\'always\', \'hourly\', \'daily\', \'weekly\', \'monthly\', \'yearly\', \'never\'),');
INSERT INTO configuration VALUES (777,'Reviews order by','MODULE_SITEMAPXML_REVIEWS_ORDERBY','reviews_rating ASC, last_date DESC','',6,10,NULL,'2010-04-20 19:40:09',NULL,NULL);
INSERT INTO configuration VALUES (778,'Reviews changefreq','MODULE_SITEMAPXML_REVIEWS_CHANGEFREQ','weekly','How frequently the Category pages page is likely to change.',6,11,NULL,'2010-04-20 19:40:09',NULL,'zen_cfg_select_option(array(\'always\', \'hourly\', \'daily\', \'weekly\', \'monthly\', \'yearly\', \'never\'),');
INSERT INTO configuration VALUES (779,'EZPages order by','MODULE_SITEMAPXML_EZPAGES_ORDERBY','sidebox_sort_order ASC, header_sort_order ASC, footer_sort_order ASC','',6,12,NULL,'2010-04-20 19:40:09',NULL,NULL);
INSERT INTO configuration VALUES (780,'EZPages changefreq','MODULE_SITEMAPXML_EZPAGES_CHANGEFREQ','weekly','How frequently the EZPages pages page is likely to change.',6,13,NULL,'2010-04-20 19:40:09',NULL,'zen_cfg_select_option(array(\'always\', \'hourly\', \'daily\', \'weekly\', \'monthly\', \'yearly\', \'never\'),');
INSERT INTO configuration VALUES (781,'Testimonials order by','MODULE_SITEMAPXML_TESTIMONIALS_ORDERBY','last_date DESC','',6,14,NULL,'2010-04-20 19:40:09',NULL,NULL);
INSERT INTO configuration VALUES (782,'Testimonials changefreq','MODULE_SITEMAPXML_TESTIMONIALS_CHANGEFREQ','weekly','How frequently the EZPages pages page is likely to change.',6,15,NULL,'2010-04-20 19:40:09',NULL,'zen_cfg_select_option(array(\'always\', \'hourly\', \'daily\', \'weekly\', \'monthly\', \'yearly\', \'never\'),');
INSERT INTO configuration VALUES (783,'ͥ���','MODULE_SITEMAPXML_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,16,NULL,'2010-04-20 19:40:09',NULL,NULL);
INSERT INTO configuration VALUES (784,'���ʥ�ӥ塼��ͭ����','MODULE_EASY_REVIEWS_STATUS','true','���ʥ�ӥ塼��ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2010-05-20 12:54:48',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (785,'���ʾܺ٥ڡ�������ӥ塼ɽ����','MODULE_EASY_REVIEWS_MAX_DISPLAY_NEW_REVIEWS','3','���ʾܺ٥ڡ�����ɽ������뾦�ʥ�ӥ塼�ο������ꤷ�Ƥ���������<br />���ʥ�ӥ塼�����ڡ����Υ�ӥ塼���ϡְ��������-�ֺ����ͤ������-�ֿ�������ӥ塼��ɽ���������͡פ����ꤷ�Ƥ���������',6,1,NULL,'2010-05-20 12:54:48',NULL,NULL);
INSERT INTO configuration VALUES (786,'�������桼�����ξ��ʥ�ӥ塼�����ػ�','MODULE_EASY_REVIEWS_LIST_DISPLAY_FORCE_LOGIN','false','�����󤷤Ƥ��ʤ��桼�����Ͼ��ʥ�ӥ塼�������Ǥ��ʤ���',6,2,NULL,'2010-05-20 12:54:48',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (787,'ͥ���','MODULE_EASY_REVIEWS_SORT_ORDER','','�⥸�塼���ͥ��������Ǥ��ޤ����������������ۤ���˥⥸�塼����ɤ߹��ߤȽ������¹Ԥ���ޤ���Ⱦ�ѿ�����¾�Υ⥸�塼��ȽŤʤ�ʤ��褦�����ꤷ�Ƥ���������',6,3,NULL,'2010-05-20 12:54:48',NULL,NULL);
INSERT INTO configuration VALUES (788,'͹���ֹ�ˤ�뽻�꼫ư���Ϥ�ͭ����','MODULE_AM_AJAX_ADDRESS_STATUS','true','͹���ֹ�ˤ�뽻�꼫ư���Ϥ�ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2010-05-20 13:02:17',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');
INSERT INTO configuration VALUES (1435,'���ʽ���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_WEIGHT','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1434,'�Ǿ�����/ñ�̥ߥå���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_QUANTITY_MIXED','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1433,'���ʤο���ñ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_QUANTITY_ORDER_UNIT','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1432,'���ʤκ������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_QUANTITY_ORDER_MIN','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1431,'���ʤκǾ�����','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_QUANTITY_ORDER_MAX','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1430,'�������̵��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_ALWAYS_FREE_SHIPPING','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1429,'����������뾦��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_VIRTUAL','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1428,'���ʤ��䤤��碌','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_PRICE_CALL','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1427,'̵������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_PRICE_FREE','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1426,'���ʲ��ʡʥ�����','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_PRICE_GROSS','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1424,'����°���ˤ�����','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_PRICE_ATTRIBUTE','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1425,'�Ǽ���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_TAX_CLASS','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1423,'���ܸ�ʳ������Ϲ���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_PRODUCT_LANGUAGE','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1422,'���ʥ��ץ����ؤΥ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CATEGORY_PRODUCT_ATTRIBUTE','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1421,'�������ʤξ��ʼ���ץ������','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CATEGORY_PRODUCT_TYPE','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1420,'���ʲ��ʴ����ؤΥ��','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CATEGORY_PRICE_LINK','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (1419,'���ܸ�ʳ������Ϲ���','MODULE_EASY_ADMIN_SIMPLIFY_CONFIG_CATEGORY_LANGUAGE','false','',-1,1,NULL,'2010-06-07 22:43:03',NULL,NULL);
INSERT INTO configuration VALUES (907,'Store Fax','STORE_FAX','03-XXXX-XXXX','Enter the fax number for your store.<br>You can call upon this by using the define <strong>STORE_FAX</strong>.',1,4,'2010-06-18 11:27:23','2010-06-04 14:00:45',NULL,NULL);
INSERT INTO configuration VALUES (908,'Store Phone','STORE_PHONE','03-XXXX-XXXX','Enter the phone number for your store.<br>You can call upon this by using the define <strong>STORE_PHONE</strong>.',1,4,'2010-06-18 11:27:28','2010-06-04 14:00:45',NULL,NULL);
INSERT INTO configuration VALUES (909,'Enable Purchase Order Module','MODULE_PAYMENT_PURCHASE_ORDER_STATUS','True','Do you want to accept Purchase Order payments?',6,1,'2010-06-04 14:00:45','2010-06-04 14:00:45',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (910,'Make payable to:','MODULE_PAYMENT_PURCHASE_ORDER_PAYTO','Destination ImagiNation, Inc.','Who should payments be made payable to?',6,2,'2010-06-04 14:00:45','2010-06-04 14:00:45',NULL,NULL);
INSERT INTO configuration VALUES (911,'Sort order of display.','MODULE_PAYMENT_PURCHASE_ORDER_SORT_ORDER','0','Sort order of display. Lowest is displayed first.',6,4,'2010-06-04 14:00:45','2010-06-04 14:00:45',NULL,NULL);
INSERT INTO configuration VALUES (912,'Payment Zone','MODULE_PAYMENT_PURCHASE_ORDER_ZONE','0','If a zone is selected, only enable this payment method for that zone.',6,5,'2010-06-04 14:00:45','2010-06-04 14:00:45','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes(');
INSERT INTO configuration VALUES (913,'Set Order Status','MODULE_PAYMENT_PURCHASE_ORDER_ORDER_STATUS_ID','2','Set the status of orders made with this payment module to this value',6,6,'2010-06-04 14:00:45','2010-06-04 14:00:45','zen_get_order_status_name','zen_cfg_pull_down_order_statuses(');
INSERT INTO configuration VALUES (914,'Auto Status - Purchase Order','AUTO_STATUS_PO','2','Number of the status assigned to an order when a purchase order is added to the payment data.',28,11,'2010-06-04 14:00:45','2010-06-04 14:00:45','zen_get_order_status_name','zen_cfg_pull_down_order_statuses(');
INSERT INTO configuration VALUES (915,'Auto Status - Payment','AUTO_STATUS_PAYMENT','2','Number of the order status assigned when a payment (<B>not</B> attached to a purchase order) is added to the payment data.',28,10,'2010-06-04 14:00:45','2010-06-04 14:00:45','zen_get_order_status_name','zen_cfg_pull_down_order_statuses(');
INSERT INTO configuration VALUES (916,'Auto Status - P.O. Payment','AUTO_STATUS_PO_PAYMENT','2','Number of the order status assigned when a payment <B>attached to a purchase order</B> is added to the payment data.',28,10,'2010-06-04 14:00:45','2010-06-04 14:00:45','zen_get_order_status_name','zen_cfg_pull_down_order_statuses(');
INSERT INTO configuration VALUES (917,'Auto Status - Refund','AUTO_STATUS_REFUND','2','Number of the order status assigned when a refund is added to the payment data.',28,13,'2010-06-04 14:00:45','2010-06-04 14:00:45','zen_get_order_status_name','zen_cfg_pull_down_order_statuses(');
INSERT INTO configuration VALUES (918,'Auto Comments - Payment','AUTO_COMMENTS_PAYMENT','Payment received in our office. Payment ID: %s','You\'ll have the option of adding these pre-configured comments to an order when a payment is entered.  You can attach the payment number to the comments by typing <strong>%s</strong>.',28,14,'2010-06-04 14:00:45','2010-06-04 14:00:45',NULL,NULL);
INSERT INTO configuration VALUES (919,'Auto Comments - P.O. Payment','AUTO_COMMENTS_PO_PAYMENT','Payment on purchase order received in our office. Payment ID: %s','You will have the option of adding these pre-configured comments to an order when a purchase order payment is entered.  You can attach the payment number to the comments by typing <strong>%s</strong>.',28,14,'2010-06-04 14:00:45','2010-06-04 14:00:45',NULL,NULL);
INSERT INTO configuration VALUES (920,'Auto Comments - Purchase Order','AUTO_COMMENTS_PO','Purchase Order #%s received in our office','You will have the option of adding these pre-configured comments to an order when a purchase order is entered.  You can attach the payment number to the comments by typing <strong>%s</strong>.',28,15,'2010-06-04 14:00:45','2010-06-04 14:00:45',NULL,NULL);
INSERT INTO configuration VALUES (921,'Auto Comments - Refund','AUTO_COMMENTS_REFUND','Refund #%s has been issued from our office.','You will have the option of adding these pre-configured comments to an order when a refund is entered.  You can attach the refund number to the comments by typing <strong>%s</strong>.',28,17,'2010-06-04 14:00:45','2010-06-04 14:00:45',NULL,NULL);
INSERT INTO configuration VALUES (922,'Federal Tax Exempt Number','FED_TAX_ID_NUMBER','00-000000','If your tax exempt, then you should have a federal tax ID number. Enter the number here and the tax columns will not appear on the invoice. The number will also be displayed at the top of the invoice.',28,50,'2010-06-04 14:00:45','2010-06-04 14:00:45',NULL,NULL);
INSERT INTO configuration VALUES (923,'Closed Status - \"Cancelled\"','STATUS_ORDER_CANCELLED','0','Insert the order status ID # you would like to assign to an order when you press the special \"Cancelled!\" button on super_orders.php.<p>If you do not have a \"cancel\" status, or do not want assign one automatically, choose <B>default</B> and this option will be ignored.<p><strong>You cannot attach comments or notify the customer using this option.</strong>',28,30,'2010-06-04 14:00:45','2010-06-04 14:00:45','zen_get_order_status_name','zen_cfg_pull_down_order_statuses(');
INSERT INTO configuration VALUES (924,'Closed Status - \"Completed\"','STATUS_ORDER_COMPLETED','0','Insert the order status ID # you would like to assign to an order when you press the special \"Completed!\" button on super_orders.php.<p>If you do not have a \"complete\" status, or do not want assign one automatically, choose <B>default</B> and this option will be ignored.<p><strong>You cannot attach comments or notify the customer using this option.</strong>',28,30,'2010-06-04 14:00:45','2010-06-04 14:00:45','zen_get_order_status_name','zen_cfg_pull_down_order_statuses(');
INSERT INTO configuration VALUES (925,'Closed Status - \"Reopened\"','STATUS_ORDER_REOPEN','0','Insert the order status ID # you would like to assign to an order when you undo the cancelled/completed status of an order.<p>If you do not have a \"reopened\" status, or do not want assign one automatically, choose <B>default</B> and this option will be ignored.<p><strong>You cannot attach comments or notify the customer using this option.</strong>',28,30,'2010-06-04 14:00:45','2010-06-04 14:00:45','zen_get_order_status_name','zen_cfg_pull_down_order_statuses(');
INSERT INTO configuration VALUES (926,'��Կ�����ͭ���ˤ���','MODULE_PAYMENT_MONEYORDER_STATUS','True','��Կ����ˤ���ʧ��������դ��ޤ�����',6,1,NULL,'2010-06-04 14:41:50',NULL,'zen_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO configuration VALUES (927,'��������:','MODULE_PAYMENT_MONEYORDER_PAYTO','','��������̾�������ꤷ�Ƥ���������',6,1,NULL,'2010-06-04 14:41:50',NULL,NULL);
INSERT INTO configuration VALUES (928,'ɽ���������','MODULE_PAYMENT_MONEYORDER_SORT_ORDER','0','ɽ��������������Ǥ��ޤ����������������ۤɾ�̤�ɽ������ޤ���',6,0,NULL,'2010-06-04 14:41:50',NULL,NULL);
INSERT INTO configuration VALUES (929,'Ŭ���ϰ�','MODULE_PAYMENT_MONEYORDER_ZONE','0','Ŭ���ϰ�����򤹤�ȡ����򤷤��ϰ�Τߤ����Ѳ�ǽ�Ȥʤ�ޤ���',6,2,NULL,'2010-06-04 14:41:50','zen_get_zone_class_title','zen_cfg_pull_down_zone_classes(');
INSERT INTO configuration VALUES (930,'�����ʸ���ơ�����','MODULE_PAYMENT_MONEYORDER_ORDER_STATUS_ID','0','���ꤷ�����ơ��������������Ŭ�Ѥ���ޤ���',6,0,NULL,'2010-06-04 14:41:50','zen_get_order_status_name','zen_cfg_pull_down_order_statuses(');
INSERT INTO configuration VALUES (931,'���󥹥ȡ������','MODULE_ORDER_TOTAL_GROUP_PRICING_STATUS','true','',6,1,NULL,'2010-06-04 14:43:24',NULL,'zen_cfg_select_option(array(\'true\'), ');
INSERT INTO configuration VALUES (932,'ɽ���������','MODULE_ORDER_TOTAL_GROUP_PRICING_SORT_ORDER','290','ɽ��������������Ǥ��ޤ�. �������������ۤɾ�̤�ɽ������ޤ���',6,2,NULL,'2010-06-04 14:43:24',NULL,NULL);
INSERT INTO configuration VALUES (933,'������ޤ��','MODULE_ORDER_TOTAL_GROUP_PRICING_INC_SHIPPING','false','������׻��˴ޤ�ޤ�����',6,5,NULL,'2010-06-04 14:43:24',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (934,'�Ƕ��ޤ��','MODULE_ORDER_TOTAL_GROUP_PRICING_INC_TAX','true','�Ƕ��׻��˴ޤ�ޤ�����',6,6,NULL,'2010-06-04 14:43:24',NULL,'zen_cfg_select_option(array(\'true\', \'false\'), ');
INSERT INTO configuration VALUES (935,'�Ƕ�κƷ׻�','MODULE_ORDER_TOTAL_GROUP_PRICING_CALC_TAX','Standard','�Ƕ��Ʒ׻����ޤ�����',6,7,NULL,'2010-06-04 14:43:24',NULL,'zen_cfg_select_option(array(\'None\', \'Standard\', \'Credit Note\'), ');
INSERT INTO configuration VALUES (936,'�Ǽ���','MODULE_ORDER_TOTAL_GROUP_PRICING_TAX_CLASS','0','�ܵҳ����Credit Note������ɼ�˼���Ȥ������Ѥ���ݤ�Ŭ�������Ǽ��̡�',6,0,NULL,'2010-06-04 14:43:24','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes(');
INSERT INTO configuration VALUES (937,'���󥹥ȡ������','MODULE_ORDER_TOTAL_COD_STATUS','true','',6,1,NULL,'2010-06-04 14:43:27',NULL,'zen_cfg_select_option(array(\'true\'), ');
INSERT INTO configuration VALUES (938,'ɽ���������','MODULE_ORDER_TOTAL_COD_SORT_ORDER','950','ɽ��������������Ǥ��ޤ�. �������������ۤɾ�̤�ɽ������ޤ���',6,2,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (939,'COD Fee for FLAT','MODULE_ORDER_TOTAL_COD_FEE_FLAT','AT:3.00,DE:3.58,00:9.99','FLAT: &lt;Country code&gt;:&lt;COD price&gt;, .... 00 as country code applies for all countries. If country code is 00, it must be the last statement. If no 00:9.99 appears, COD shipping in foreign countries is not calculated (not possible)',6,3,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (940,'COD Fee for Free Shipping by default','MODULE_ORDER_TOTAL_COD_FEE_FREE','US:3.00','Free by default: &lt;Country code&gt;:&lt;COD price&gt;, .... 00 as country code applies for all countries. If country code is 00, it must be the last statement. If no 00:9.99 appears, COD shipping in foreign countries is not calculated (not possible)',6,3,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (941,'COD Fee for Free Shipping Module - (freeshipper)','MODULE_ORDER_TOTAL_COD_FEE_FREESHIPPER','CA:4.50,US:3.00,00:9.99','Free Module: &lt;Country code&gt;:&lt;COD price&gt;, .... 00 as country code applies for all countries. If country code is 00, it must be the last statement. If no 00:9.99 appears, COD shipping in foreign countries is not calculated (not possible)',6,3,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (942,'COD Fee for Free-Options Shipping Module - (freeoptions)','MODULE_ORDER_TOTAL_COD_FEE_FREEOPTIONS','CA:4.50,US:3.00,00:9.99','Free+Options: &lt;Country code&gt;:&lt;COD price&gt;, .... 00 as country code applies for all countries. If country code is 00, it must be the last statement. If no 00:9.99 appears, COD shipping in foreign countries is not calculated (not possible)',6,3,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (943,'COD Fee for Per Weight Unit Shipping Module - (perweightunit)','MODULE_ORDER_TOTAL_COD_FEE_PERWEIGHTUNIT','CA:4.50,US:3.00,00:9.99','Per Weight Unit: &lt;Country code&gt;:&lt;COD price&gt;, .... 00 as country code applies for all countries. If country code is 00, it must be the last statement. If no 00:9.99 appears, COD shipping in foreign countries is not calculated (not possible)',6,3,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (944,'COD Fee for ITEM','MODULE_ORDER_TOTAL_COD_FEE_ITEM','AT:3.00,DE:3.58,00:9.99','ITEM: &lt;Country code&gt;:&lt;COD price&gt;, .... 00 as country code applies for all countries. If country code is 00, it must be the last statement. If no 00:9.99 appears, COD shipping in foreign countries is not calculated (not possible)',6,4,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (945,'COD Fee for TABLE','MODULE_ORDER_TOTAL_COD_FEE_TABLE','AT:3.00,DE:3.58,00:9.99','TABLE: &lt;Country code&gt;:&lt;COD price&gt;, .... 00 as country code applies for all countries. If country code is 00, it must be the last statement. If no 00:9.99 appears, COD shipping in foreign countries is not calculated (not possible)',6,5,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (946,'COD Fee for UPS','MODULE_ORDER_TOTAL_COD_FEE_UPS','CA:4.50,US:3.00,00:9.99','UPS: &lt;Country code&gt;:&lt;COD price&gt;, .... 00 as country code applies for all countries. If country code is 00, it must be the last statement. If no 00:9.99 appears, COD shipping in foreign countries is not calculated (not possible)',6,6,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (947,'COD Fee for USPS','MODULE_ORDER_TOTAL_COD_FEE_USPS','CA:4.50,US:3.00,00:9.99','USPS: &lt;Country code&gt;:&lt;COD price&gt;, .... 00 as country code applies for all countries. If country code is 00, it must be the last statement. If no 00:9.99 appears, COD shipping in foreign countries is not calculated (not possible)',6,7,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (948,'COD Fee for ZONES','MODULE_ORDER_TOTAL_COD_FEE_ZONES','CA:4.50,US:3.00,00:9.99','ZONES: &lt;Country code&gt;:&lt;COD price&gt;, .... 00 as country code applies for all countries. If country code is 00, it must be the last statement. If no 00:9.99 appears, COD shipping in foreign countries is not calculated (not possible)',6,8,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (949,'COD Fee for Austrian Post','MODULE_ORDER_TOTAL_COD_FEE_AP','AT:3.63,00:9.99','Austrian Post: &lt;Country code&gt;:&lt;COD price&gt;, .... 00 as country code applies for all countries. If country code is 00, it must be the last statement. If no 00:9.99 appears, COD shipping in foreign countries is not calculated (not possible)',6,9,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (950,'COD Fee for German Post','MODULE_ORDER_TOTAL_COD_FEE_DP','DE:3.58,00:9.99','German Post: &lt;Country code&gt;:&lt;COD price&gt;, .... 00 as country code applies for all countries. If country code is 00, it must be the last statement. If no 00:9.99 appears, COD shipping in foreign countries is not calculated (not possible)',6,10,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (951,'COD Fee for Servicepakke','MODULE_ORDER_TOTAL_COD_FEE_SERVICEPAKKE','NO:69','Servicepakke: &lt;Country code&gt;:&lt;COD price&gt;, .... 00 as country code applies for all countries. If country code is 00, it must be the last statement. If no 00:9.99 appears, COD shipping in foreign countries is not calculated (not possible)',6,11,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (952,'COD Fee for FedEx','MODULE_ORDER_TOTAL_COD_FEE_FEDEX','US:3.00','FedEx: &lt;Country code&gt;:&lt;COD price&gt;, .... 00 as country code applies for all countries. If country code is 00, it must be the last statement. If no 00:9.99 appears, COD shipping in foreign countries is not calculated (not possible)',6,12,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (953,'������ؤ�������(e-���쥯��)�Ѥ�����������','MODULE_ORDER_TOTAL_COD_FEE_SAGAWA','00:500','e-���쥯�Ȥμ������ֹ񥳡���:�����,�񥳡���:�����,...�פȤ����񼰤����Ϥ��Ƥ����������񥳡��ɤ��狼�ʤ餤��硢�ޤ��Ϥ��٤����줹�����00��������ǵ����Ƥ�������',6,13,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (954,'��ޥȱ�͢��������(��ޥȥ��쥯��)�Ѥ�����������','MODULE_ORDER_TOTAL_COD_FEE_YAMATO','00:400','��ޥȥ��쥯�Ȥμ������ֹ񥳡���:�����,�񥳡���:�����,...�פȤ����񼰤����Ϥ��Ƥ����������񥳡��ɤ��狼�ʤ餤��硢�ޤ��Ϥ��٤����줹�����00��������ǵ����Ƥ�������',6,14,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (955,'�����̱���������(�ڥꥫ�󽸶⥵���ӥ�)�Ѥ�����������','MODULE_ORDER_TOTAL_COD_FEE_NITTSU','00:400','�ڥꥫ�󽸶⥵���ӥ��μ������ֹ񥳡���:�����,�񥳡���:�����,...�פȤ����񼰤����Ϥ��Ƥ����������񥳡��ɤ��狼�ʤ餤��硢�ޤ��Ϥ��٤����줹�����00��������ǵ����Ƥ�������',6,15,NULL,'2010-06-04 14:43:27',NULL,NULL);
INSERT INTO configuration VALUES (956,'�Ǽ���','MODULE_ORDER_TOTAL_COD_TAX_CLASS','0','�������������Ŭ�Ѥ�����Ǽ���',6,25,NULL,'2010-06-04 14:43:27','zen_get_tax_class_title','zen_cfg_pull_down_tax_classes(');
INSERT INTO configuration VALUES (957,'������˥塼�������ͭ����','MODULE_EASY_ADMIN_SIMPLIFY_STATUS','true','������˥塼�������ͭ���ˤ��ޤ����� <br />true: ͭ��<br />false: ̵��',6,0,NULL,'2010-06-07 16:43:06',NULL,'zen_cfg_select_option(array(\'true\', \'false\'),');

--
-- Table structure for table configuration_foreach_template
--

DROP TABLE IF EXISTS configuration_foreach_template;
CREATE TABLE configuration_foreach_template (
configuration_id int(11) NOT NULL auto_increment,
configuration_title text NOT NULL,
configuration_key varchar(255) NOT NULL default '',
configuration_value text NOT NULL,
configuration_description text NOT NULL,
configuration_group_id int(11) NOT NULL default '0',
template_dir varchar(64) NOT NULL default '',
sort_order int(5) default NULL,
last_modified datetime default NULL,
date_added datetime NOT NULL default '0001-01-01 00:00:00',
use_function text,
set_function text,
PRIMARY KEY  (configuration_id),
UNIQUE KEY unq_config_key_zen (template_dir,configuration_key),
KEY idx_key_value_zen (configuration_key,configuration_value(10)),
KEY idx_cfg_grp_id_zen (configuration_group_id)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=ujis;

--
-- Dumping data for table configuration_foreach_template
--


--
-- Table structure for table configuration_group
--

DROP TABLE IF EXISTS configuration_group;
CREATE TABLE configuration_group (
configuration_group_id int(11) NOT NULL auto_increment,
configuration_group_title varchar(64) NOT NULL default '',
configuration_group_description varchar(255) NOT NULL default '',
sort_order int(5) default NULL,
visible int(1) default '1',
PRIMARY KEY  (configuration_group_id),
KEY idx_visible_zen (visible)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=ujis;

--
-- Dumping data for table configuration_group
--

INSERT INTO configuration_group VALUES (1,'����å����̤�����','����åפΰ���Ū�ʹ��ܤ����ꤷ�ޤ���',1,1);
INSERT INTO configuration_group VALUES (2,'�Ǿ��ͤ�����','��ǽ���ǡ�����κǾ�(��)�ͤˤĤ������ꤷ�ޤ���',2,1);
INSERT INTO configuration_group VALUES (3,'�����ͤ�����','��ǽ���ǡ�����κ����ͤˤĤ������ꤷ�ޤ���',3,1);
INSERT INTO configuration_group VALUES (4,'����������','�Ƽ�β����ˤĤ������ꤷ�ޤ���',4,1);
INSERT INTO configuration_group VALUES (5,'�ܵҥ�������Ȥ�����','�ܵҤˤĤ��ƳƼ������򤷤ޤ���',5,1);
INSERT INTO configuration_group VALUES (6,'�⥸�塼�������','(������̤Ǥϱ���Ƥ��ޤ�)',6,0);
INSERT INTO configuration_group VALUES (7,'���������ѥå�����������','�Ҿ������ѥå�����(����)�ˤĤ��ƳƼ������򤷤ޤ���',7,1);
INSERT INTO configuration_group VALUES (8,'���ʥꥹ�Ȥ�����','���ʥꥹ�Ȥ�ɽ���ˤĤ��ƳƼ������򤷤ޤ���',8,1);
INSERT INTO configuration_group VALUES (9,'�߸ˤ�����','�߸ˤˤĤ��ƳƼ������򤷤ޤ���',9,1);
INSERT INTO configuration_group VALUES (10,'��������','���ˤĤ��ƳƼ������򤷤ޤ���',10,1);
INSERT INTO configuration_group VALUES (11,'�����Ϣ������','����ˤĤ��ƳƼ������򤷤ޤ���',16,1);
INSERT INTO configuration_group VALUES (12,'�᡼�������','�᡼�����������񼰤ˤĤ��ƳƼ������򤷤ޤ���',12,1);
INSERT INTO configuration_group VALUES (13,'����°��������','����°���ˤĤ��ƳƼ������򤷤ޤ���',13,1);
INSERT INTO configuration_group VALUES (14,'GZip���̤�����','GZip���̤ˤĤ������ꤷ�ޤ���',14,1);
INSERT INTO configuration_group VALUES (15,'���å�������������','���å�������δ����ˤĤ��ƳƼ������򤷤ޤ���',15,1);
INSERT INTO configuration_group VALUES (16,'���եȷ��������ݥ��������','���եȷ��������ݥ���ˤĤ��ƳƼ������򤷤ޤ���',16,1);
INSERT INTO configuration_group VALUES (17,'���쥸�åȥ����ɤ�����','���쥸�åȥ����ɤˤĤ��ƳƼ������򤷤ޤ���',17,1);
INSERT INTO configuration_group VALUES (18,'���ʾ��������','���ʾ����ɽ���ˤĤ��ƳƼ������򤷤ޤ���',18,1);
INSERT INTO configuration_group VALUES (19,'�쥤�����Ȥ�����','����åפ�ɽ���쥤�����ȤˤĤ��ƳƼ������򤷤ޤ���',19,1);
INSERT INTO configuration_group VALUES (20,'���ƥʥ�ɽ��������','�֥��ƥʥ����ɽ���ʤɤˤĤ��ƳƼ������򤷤ޤ���',20,1);
INSERT INTO configuration_group VALUES (21,'���徦�ʥꥹ�Ȥ�����','���徦�ʥꥹ�ȤˤĤ��ƳƼ������򤷤ޤ���',21,1);
INSERT INTO configuration_group VALUES (22,'�������ᾦ�ʥꥹ�Ȥ�����','�������ᾦ�ʥꥹ�ȤˤĤ��ƳƼ������򤷤ޤ���',22,1);
INSERT INTO configuration_group VALUES (23,'�����ʥꥹ�Ȥ�����','�����ʥꥹ�ȤˤĤ��ƳƼ������򤷤ޤ���',23,1);
INSERT INTO configuration_group VALUES (24,'�ȥåץڡ�����ɽ������','�ȥåץڡ���������ɽ���ˤĤ��ƳƼ������򤷤ޤ���',24,1);
INSERT INTO configuration_group VALUES (25,'���֥ڡ�����ɽ������','���֥ڡ�����HTMLArea�ʤɤˤĤ��ƳƼ������򤷤ޤ���',25,1);
INSERT INTO configuration_group VALUES (30,'EZ-Pages������','EZ�ڡ����ˤĤ��ƳƼ������򤷤ޤ���',30,1);
INSERT INTO configuration_group VALUES (100,'���ӥ����Ȥδ���','���ӥ����ȤˤĤ��ƳƼ������򤷤ޤ���',100,1);
INSERT INTO configuration_group VALUES (28,'Super Orders','Settings for Super Order features',100,1);

--
-- Table structure for table counter
--

DROP TABLE IF EXISTS counter;
CREATE TABLE counter (
startdate char(8) default NULL,
counter int(12) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table counter
--


--
-- Table structure for table counter_history
--

DROP TABLE IF EXISTS counter_history;
CREATE TABLE counter_history (
startdate char(8) default NULL,
counter int(12) default NULL,
session_counter int(12) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table counter_history
--


--
-- Table structure for table countries
--

DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
countries_id int(11) NOT NULL auto_increment,
countries_name varchar(64) NOT NULL default '',
countries_iso_code_2 varchar(2) NOT NULL default '',
countries_iso_code_3 varchar(3) NOT NULL default '',
address_format_id int(11) NOT NULL default '0',
PRIMARY KEY  (countries_id),
KEY idx_countries_name_zen (countries_name)
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=ujis;

--
-- Dumping data for table countries
--

INSERT INTO countries VALUES (240,'Aaland Islands','AX','ALA',1);
INSERT INTO countries VALUES (1,'Afghanistan','AF','AFG',1);
INSERT INTO countries VALUES (2,'Albania','AL','ALB',1);
INSERT INTO countries VALUES (3,'Algeria','DZ','DZA',1);
INSERT INTO countries VALUES (4,'American Samoa','AS','ASM',1);
INSERT INTO countries VALUES (5,'Andorra','AD','AND',1);
INSERT INTO countries VALUES (6,'Angola','AO','AGO',1);
INSERT INTO countries VALUES (7,'Anguilla','AI','AIA',1);
INSERT INTO countries VALUES (8,'Antarctica','AQ','ATA',1);
INSERT INTO countries VALUES (9,'Antigua and Barbuda','AG','ATG',1);
INSERT INTO countries VALUES (10,'Argentina','AR','ARG',1);
INSERT INTO countries VALUES (11,'Armenia','AM','ARM',1);
INSERT INTO countries VALUES (12,'Aruba','AW','ABW',1);
INSERT INTO countries VALUES (13,'Australia','AU','AUS',1);
INSERT INTO countries VALUES (14,'Austria','AT','AUT',5);
INSERT INTO countries VALUES (15,'Azerbaijan','AZ','AZE',1);
INSERT INTO countries VALUES (16,'Bahamas','BS','BHS',1);
INSERT INTO countries VALUES (17,'Bahrain','BH','BHR',1);
INSERT INTO countries VALUES (18,'Bangladesh','BD','BGD',1);
INSERT INTO countries VALUES (19,'Barbados','BB','BRB',1);
INSERT INTO countries VALUES (20,'Belarus','BY','BLR',1);
INSERT INTO countries VALUES (21,'Belgium','BE','BEL',1);
INSERT INTO countries VALUES (22,'Belize','BZ','BLZ',1);
INSERT INTO countries VALUES (23,'Benin','BJ','BEN',1);
INSERT INTO countries VALUES (24,'Bermuda','BM','BMU',1);
INSERT INTO countries VALUES (25,'Bhutan','BT','BTN',1);
INSERT INTO countries VALUES (26,'Bolivia','BO','BOL',1);
INSERT INTO countries VALUES (27,'Bosnia and Herzegowina','BA','BIH',1);
INSERT INTO countries VALUES (28,'Botswana','BW','BWA',1);
INSERT INTO countries VALUES (29,'Bouvet Island','BV','BVT',1);
INSERT INTO countries VALUES (30,'Brazil','BR','BRA',1);
INSERT INTO countries VALUES (31,'British Indian Ocean Territory','IO','IOT',1);
INSERT INTO countries VALUES (32,'Brunei Darussalam','BN','BRN',1);
INSERT INTO countries VALUES (33,'Bulgaria','BG','BGR',1);
INSERT INTO countries VALUES (34,'Burkina Faso','BF','BFA',1);
INSERT INTO countries VALUES (35,'Burundi','BI','BDI',1);
INSERT INTO countries VALUES (36,'Cambodia','KH','KHM',1);
INSERT INTO countries VALUES (37,'Cameroon','CM','CMR',1);
INSERT INTO countries VALUES (38,'Canada','CA','CAN',1);
INSERT INTO countries VALUES (39,'Cape Verde','CV','CPV',1);
INSERT INTO countries VALUES (40,'Cayman Islands','KY','CYM',1);
INSERT INTO countries VALUES (41,'Central African Republic','CF','CAF',1);
INSERT INTO countries VALUES (42,'Chad','TD','TCD',1);
INSERT INTO countries VALUES (43,'Chile','CL','CHL',1);
INSERT INTO countries VALUES (44,'China','CN','CHN',1);
INSERT INTO countries VALUES (45,'Christmas Island','CX','CXR',1);
INSERT INTO countries VALUES (46,'Cocos (Keeling) Islands','CC','CCK',1);
INSERT INTO countries VALUES (47,'Colombia','CO','COL',1);
INSERT INTO countries VALUES (48,'Comoros','KM','COM',1);
INSERT INTO countries VALUES (49,'Congo','CG','COG',1);
INSERT INTO countries VALUES (50,'Cook Islands','CK','COK',1);
INSERT INTO countries VALUES (51,'Costa Rica','CR','CRI',1);
INSERT INTO countries VALUES (52,'Cote D\'Ivoire','CI','CIV',1);
INSERT INTO countries VALUES (53,'Croatia','HR','HRV',1);
INSERT INTO countries VALUES (54,'Cuba','CU','CUB',1);
INSERT INTO countries VALUES (55,'Cyprus','CY','CYP',1);
INSERT INTO countries VALUES (56,'Czech Republic','CZ','CZE',1);
INSERT INTO countries VALUES (57,'Denmark','DK','DNK',1);
INSERT INTO countries VALUES (58,'Djibouti','DJ','DJI',1);
INSERT INTO countries VALUES (59,'Dominica','DM','DMA',1);
INSERT INTO countries VALUES (60,'Dominican Republic','DO','DOM',1);
INSERT INTO countries VALUES (61,'East Timor','TP','TMP',1);
INSERT INTO countries VALUES (62,'Ecuador','EC','ECU',1);
INSERT INTO countries VALUES (63,'Egypt','EG','EGY',1);
INSERT INTO countries VALUES (64,'El Salvador','SV','SLV',1);
INSERT INTO countries VALUES (65,'Equatorial Guinea','GQ','GNQ',1);
INSERT INTO countries VALUES (66,'Eritrea','ER','ERI',1);
INSERT INTO countries VALUES (67,'Estonia','EE','EST',1);
INSERT INTO countries VALUES (68,'Ethiopia','ET','ETH',1);
INSERT INTO countries VALUES (69,'Falkland Islands (Malvinas)','FK','FLK',1);
INSERT INTO countries VALUES (70,'Faroe Islands','FO','FRO',1);
INSERT INTO countries VALUES (71,'Fiji','FJ','FJI',1);
INSERT INTO countries VALUES (72,'Finland','FI','FIN',1);
INSERT INTO countries VALUES (73,'France','FR','FRA',1);
INSERT INTO countries VALUES (74,'France, Metropolitan','FX','FXX',1);
INSERT INTO countries VALUES (75,'French Guiana','GF','GUF',1);
INSERT INTO countries VALUES (76,'French Polynesia','PF','PYF',1);
INSERT INTO countries VALUES (77,'French Southern Territories','TF','ATF',1);
INSERT INTO countries VALUES (78,'Gabon','GA','GAB',1);
INSERT INTO countries VALUES (79,'Gambia','GM','GMB',1);
INSERT INTO countries VALUES (80,'Georgia','GE','GEO',1);
INSERT INTO countries VALUES (81,'Germany','DE','DEU',5);
INSERT INTO countries VALUES (82,'Ghana','GH','GHA',1);
INSERT INTO countries VALUES (83,'Gibraltar','GI','GIB',1);
INSERT INTO countries VALUES (84,'Greece','GR','GRC',1);
INSERT INTO countries VALUES (85,'Greenland','GL','GRL',1);
INSERT INTO countries VALUES (86,'Grenada','GD','GRD',1);
INSERT INTO countries VALUES (87,'Guadeloupe','GP','GLP',1);
INSERT INTO countries VALUES (88,'Guam','GU','GUM',1);
INSERT INTO countries VALUES (89,'Guatemala','GT','GTM',1);
INSERT INTO countries VALUES (90,'Guinea','GN','GIN',1);
INSERT INTO countries VALUES (91,'Guinea-bissau','GW','GNB',1);
INSERT INTO countries VALUES (92,'Guyana','GY','GUY',1);
INSERT INTO countries VALUES (93,'Haiti','HT','HTI',1);
INSERT INTO countries VALUES (94,'Heard and Mc Donald Islands','HM','HMD',1);
INSERT INTO countries VALUES (95,'Honduras','HN','HND',1);
INSERT INTO countries VALUES (96,'Hong Kong','HK','HKG',1);
INSERT INTO countries VALUES (97,'Hungary','HU','HUN',1);
INSERT INTO countries VALUES (98,'Iceland','IS','ISL',1);
INSERT INTO countries VALUES (99,'India','IN','IND',1);
INSERT INTO countries VALUES (100,'Indonesia','ID','IDN',1);
INSERT INTO countries VALUES (101,'Iran (Islamic Republic of)','IR','IRN',1);
INSERT INTO countries VALUES (102,'Iraq','IQ','IRQ',1);
INSERT INTO countries VALUES (103,'Ireland','IE','IRL',1);
INSERT INTO countries VALUES (104,'Israel','IL','ISR',1);
INSERT INTO countries VALUES (105,'Italy','IT','ITA',1);
INSERT INTO countries VALUES (106,'Jamaica','JM','JAM',1);
INSERT INTO countries VALUES (107,'Japan','JP','JPN',6);
INSERT INTO countries VALUES (108,'Jordan','JO','JOR',1);
INSERT INTO countries VALUES (109,'Kazakhstan','KZ','KAZ',1);
INSERT INTO countries VALUES (110,'Kenya','KE','KEN',1);
INSERT INTO countries VALUES (111,'Kiribati','KI','KIR',1);
INSERT INTO countries VALUES (112,'Korea, Democratic People\'s Republic of','KP','PRK',1);
INSERT INTO countries VALUES (113,'Korea, Republic of','KR','KOR',1);
INSERT INTO countries VALUES (114,'Kuwait','KW','KWT',1);
INSERT INTO countries VALUES (115,'Kyrgyzstan','KG','KGZ',1);
INSERT INTO countries VALUES (116,'Lao People\'s Democratic Republic','LA','LAO',1);
INSERT INTO countries VALUES (117,'Latvia','LV','LVA',1);
INSERT INTO countries VALUES (118,'Lebanon','LB','LBN',1);
INSERT INTO countries VALUES (119,'Lesotho','LS','LSO',1);
INSERT INTO countries VALUES (120,'Liberia','LR','LBR',1);
INSERT INTO countries VALUES (121,'Libyan Arab Jamahiriya','LY','LBY',1);
INSERT INTO countries VALUES (122,'Liechtenstein','LI','LIE',1);
INSERT INTO countries VALUES (123,'Lithuania','LT','LTU',1);
INSERT INTO countries VALUES (124,'Luxembourg','LU','LUX',1);
INSERT INTO countries VALUES (125,'Macau','MO','MAC',1);
INSERT INTO countries VALUES (126,'Macedonia, The Former Yugoslav Republic of','MK','MKD',1);
INSERT INTO countries VALUES (127,'Madagascar','MG','MDG',1);
INSERT INTO countries VALUES (128,'Malawi','MW','MWI',1);
INSERT INTO countries VALUES (129,'Malaysia','MY','MYS',1);
INSERT INTO countries VALUES (130,'Maldives','MV','MDV',1);
INSERT INTO countries VALUES (131,'Mali','ML','MLI',1);
INSERT INTO countries VALUES (132,'Malta','MT','MLT',1);
INSERT INTO countries VALUES (133,'Marshall Islands','MH','MHL',1);
INSERT INTO countries VALUES (134,'Martinique','MQ','MTQ',1);
INSERT INTO countries VALUES (135,'Mauritania','MR','MRT',1);
INSERT INTO countries VALUES (136,'Mauritius','MU','MUS',1);
INSERT INTO countries VALUES (137,'Mayotte','YT','MYT',1);
INSERT INTO countries VALUES (138,'Mexico','MX','MEX',1);
INSERT INTO countries VALUES (139,'Micronesia, Federated States of','FM','FSM',1);
INSERT INTO countries VALUES (140,'Moldova, Republic of','MD','MDA',1);
INSERT INTO countries VALUES (141,'Monaco','MC','MCO',1);
INSERT INTO countries VALUES (142,'Mongolia','MN','MNG',1);
INSERT INTO countries VALUES (143,'Montserrat','MS','MSR',1);
INSERT INTO countries VALUES (144,'Morocco','MA','MAR',1);
INSERT INTO countries VALUES (145,'Mozambique','MZ','MOZ',1);
INSERT INTO countries VALUES (146,'Myanmar','MM','MMR',1);
INSERT INTO countries VALUES (147,'Namibia','NA','NAM',1);
INSERT INTO countries VALUES (148,'Nauru','NR','NRU',1);
INSERT INTO countries VALUES (149,'Nepal','NP','NPL',1);
INSERT INTO countries VALUES (150,'Netherlands','NL','NLD',1);
INSERT INTO countries VALUES (151,'Netherlands Antilles','AN','ANT',1);
INSERT INTO countries VALUES (152,'New Caledonia','NC','NCL',1);
INSERT INTO countries VALUES (153,'New Zealand','NZ','NZL',1);
INSERT INTO countries VALUES (154,'Nicaragua','NI','NIC',1);
INSERT INTO countries VALUES (155,'Niger','NE','NER',1);
INSERT INTO countries VALUES (156,'Nigeria','NG','NGA',1);
INSERT INTO countries VALUES (157,'Niue','NU','NIU',1);
INSERT INTO countries VALUES (158,'Norfolk Island','NF','NFK',1);
INSERT INTO countries VALUES (159,'Northern Mariana Islands','MP','MNP',1);
INSERT INTO countries VALUES (160,'Norway','NO','NOR',1);
INSERT INTO countries VALUES (161,'Oman','OM','OMN',1);
INSERT INTO countries VALUES (162,'Pakistan','PK','PAK',1);
INSERT INTO countries VALUES (163,'Palau','PW','PLW',1);
INSERT INTO countries VALUES (164,'Panama','PA','PAN',1);
INSERT INTO countries VALUES (165,'Papua New Guinea','PG','PNG',1);
INSERT INTO countries VALUES (166,'Paraguay','PY','PRY',1);
INSERT INTO countries VALUES (167,'Peru','PE','PER',1);
INSERT INTO countries VALUES (168,'Philippines','PH','PHL',1);
INSERT INTO countries VALUES (169,'Pitcairn','PN','PCN',1);
INSERT INTO countries VALUES (170,'Poland','PL','POL',1);
INSERT INTO countries VALUES (171,'Portugal','PT','PRT',1);
INSERT INTO countries VALUES (172,'Puerto Rico','PR','PRI',1);
INSERT INTO countries VALUES (173,'Qatar','QA','QAT',1);
INSERT INTO countries VALUES (174,'Reunion','RE','REU',1);
INSERT INTO countries VALUES (175,'Romania','RO','ROM',1);
INSERT INTO countries VALUES (176,'Russian Federation','RU','RUS',1);
INSERT INTO countries VALUES (177,'Rwanda','RW','RWA',1);
INSERT INTO countries VALUES (178,'Saint Kitts and Nevis','KN','KNA',1);
INSERT INTO countries VALUES (179,'Saint Lucia','LC','LCA',1);
INSERT INTO countries VALUES (180,'Saint Vincent and the Grenadines','VC','VCT',1);
INSERT INTO countries VALUES (181,'Samoa','WS','WSM',1);
INSERT INTO countries VALUES (182,'San Marino','SM','SMR',1);
INSERT INTO countries VALUES (183,'Sao Tome and Principe','ST','STP',1);
INSERT INTO countries VALUES (184,'Saudi Arabia','SA','SAU',1);
INSERT INTO countries VALUES (185,'Senegal','SN','SEN',1);
INSERT INTO countries VALUES (186,'Seychelles','SC','SYC',1);
INSERT INTO countries VALUES (187,'Sierra Leone','SL','SLE',1);
INSERT INTO countries VALUES (188,'Singapore','SG','SGP',4);
INSERT INTO countries VALUES (189,'Slovakia (Slovak Republic)','SK','SVK',1);
INSERT INTO countries VALUES (190,'Slovenia','SI','SVN',1);
INSERT INTO countries VALUES (191,'Solomon Islands','SB','SLB',1);
INSERT INTO countries VALUES (192,'Somalia','SO','SOM',1);
INSERT INTO countries VALUES (193,'South Africa','ZA','ZAF',1);
INSERT INTO countries VALUES (194,'South Georgia and the South Sandwich Islands','GS','SGS',1);
INSERT INTO countries VALUES (195,'Spain','ES','ESP',3);
INSERT INTO countries VALUES (196,'Sri Lanka','LK','LKA',1);
INSERT INTO countries VALUES (197,'St. Helena','SH','SHN',1);
INSERT INTO countries VALUES (198,'St. Pierre and Miquelon','PM','SPM',1);
INSERT INTO countries VALUES (199,'Sudan','SD','SDN',1);
INSERT INTO countries VALUES (200,'Suriname','SR','SUR',1);
INSERT INTO countries VALUES (201,'Svalbard and Jan Mayen Islands','SJ','SJM',1);
INSERT INTO countries VALUES (202,'Swaziland','SZ','SWZ',1);
INSERT INTO countries VALUES (203,'Sweden','SE','SWE',1);
INSERT INTO countries VALUES (204,'Switzerland','CH','CHE',1);
INSERT INTO countries VALUES (205,'Syrian Arab Republic','SY','SYR',1);
INSERT INTO countries VALUES (206,'Taiwan','TW','TWN',1);
INSERT INTO countries VALUES (207,'Tajikistan','TJ','TJK',1);
INSERT INTO countries VALUES (208,'Tanzania, United Republic of','TZ','TZA',1);
INSERT INTO countries VALUES (209,'Thailand','TH','THA',1);
INSERT INTO countries VALUES (210,'Togo','TG','TGO',1);
INSERT INTO countries VALUES (211,'Tokelau','TK','TKL',1);
INSERT INTO countries VALUES (212,'Tonga','TO','TON',1);
INSERT INTO countries VALUES (213,'Trinidad and Tobago','TT','TTO',1);
INSERT INTO countries VALUES (214,'Tunisia','TN','TUN',1);
INSERT INTO countries VALUES (215,'Turkey','TR','TUR',1);
INSERT INTO countries VALUES (216,'Turkmenistan','TM','TKM',1);
INSERT INTO countries VALUES (217,'Turks and Caicos Islands','TC','TCA',1);
INSERT INTO countries VALUES (218,'Tuvalu','TV','TUV',1);
INSERT INTO countries VALUES (219,'Uganda','UG','UGA',1);
INSERT INTO countries VALUES (220,'Ukraine','UA','UKR',1);
INSERT INTO countries VALUES (221,'United Arab Emirates','AE','ARE',1);
INSERT INTO countries VALUES (222,'United Kingdom','GB','GBR',1);
INSERT INTO countries VALUES (223,'United States','US','USA',2);
INSERT INTO countries VALUES (224,'United States Minor Outlying Islands','UM','UMI',1);
INSERT INTO countries VALUES (225,'Uruguay','UY','URY',1);
INSERT INTO countries VALUES (226,'Uzbekistan','UZ','UZB',1);
INSERT INTO countries VALUES (227,'Vanuatu','VU','VUT',1);
INSERT INTO countries VALUES (228,'Vatican City State (Holy See)','VA','VAT',1);
INSERT INTO countries VALUES (229,'Venezuela','VE','VEN',1);
INSERT INTO countries VALUES (230,'Viet Nam','VN','VNM',1);
INSERT INTO countries VALUES (231,'Virgin Islands (British)','VG','VGB',1);
INSERT INTO countries VALUES (232,'Virgin Islands (U.S.)','VI','VIR',1);
INSERT INTO countries VALUES (233,'Wallis and Futuna Islands','WF','WLF',1);
INSERT INTO countries VALUES (234,'Western Sahara','EH','ESH',1);
INSERT INTO countries VALUES (235,'Yemen','YE','YEM',1);
INSERT INTO countries VALUES (236,'Yugoslavia','YU','YUG',1);
INSERT INTO countries VALUES (237,'Zaire','ZR','ZAR',1);
INSERT INTO countries VALUES (238,'Zambia','ZM','ZMB',1);
INSERT INTO countries VALUES (239,'Zimbabwe','ZW','ZWE',1);

--
-- Table structure for table coupon_email_track
--

DROP TABLE IF EXISTS coupon_email_track;
CREATE TABLE coupon_email_track (
unique_id int(11) NOT NULL auto_increment,
coupon_id int(11) NOT NULL default '0',
customer_id_sent int(11) NOT NULL default '0',
sent_firstname varchar(32) default NULL,
sent_lastname varchar(32) default NULL,
emailed_to varchar(32) default NULL,
date_sent datetime NOT NULL default '0001-01-01 00:00:00',
PRIMARY KEY  (unique_id),
KEY idx_coupon_id_zen (coupon_id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table coupon_email_track
--


--
-- Table structure for table coupon_gv_customer
--

DROP TABLE IF EXISTS coupon_gv_customer;
CREATE TABLE coupon_gv_customer (
customer_id int(5) NOT NULL default '0',
amount decimal(20,4) NOT NULL default '0.0000',
PRIMARY KEY  (customer_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table coupon_gv_customer
--


--
-- Table structure for table coupon_gv_queue
--

DROP TABLE IF EXISTS coupon_gv_queue;
CREATE TABLE coupon_gv_queue (
unique_id int(5) NOT NULL auto_increment,
customer_id int(5) NOT NULL default '0',
order_id int(5) NOT NULL default '0',
amount decimal(20,4) NOT NULL default '0.0000',
date_created datetime NOT NULL default '0001-01-01 00:00:00',
ipaddr varchar(32) NOT NULL default '',
release_flag char(1) NOT NULL default 'N',
PRIMARY KEY  (unique_id),
KEY idx_cust_id_order_id_zen (customer_id,order_id),
KEY idx_release_flag_zen (release_flag)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table coupon_gv_queue
--


--
-- Table structure for table coupon_redeem_track
--

DROP TABLE IF EXISTS coupon_redeem_track;
CREATE TABLE coupon_redeem_track (
unique_id int(11) NOT NULL auto_increment,
coupon_id int(11) NOT NULL default '0',
customer_id int(11) NOT NULL default '0',
redeem_date datetime NOT NULL default '0001-01-01 00:00:00',
redeem_ip varchar(32) NOT NULL default '',
order_id int(11) NOT NULL default '0',
PRIMARY KEY  (unique_id),
KEY idx_coupon_id_zen (coupon_id)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ujis;

--
-- Dumping data for table coupon_redeem_track
--


--
-- Table structure for table coupon_restrict
--

DROP TABLE IF EXISTS coupon_restrict;
CREATE TABLE coupon_restrict (
restrict_id int(11) NOT NULL auto_increment,
coupon_id int(11) NOT NULL default '0',
product_id int(11) NOT NULL default '0',
category_id int(11) NOT NULL default '0',
coupon_restrict char(1) NOT NULL default 'N',
PRIMARY KEY  (restrict_id),
KEY idx_coup_id_prod_id_zen (coupon_id,product_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table coupon_restrict
--


--
-- Table structure for table coupons
--

DROP TABLE IF EXISTS coupons;
CREATE TABLE coupons (
coupon_id int(11) NOT NULL auto_increment,
coupon_type char(1) NOT NULL default 'F',
coupon_code varchar(32) NOT NULL default '',
coupon_amount decimal(8,4) NOT NULL default '0.0000',
coupon_minimum_order decimal(8,4) NOT NULL default '0.0000',
coupon_start_date datetime NOT NULL default '0001-01-01 00:00:00',
coupon_expire_date datetime NOT NULL default '0001-01-01 00:00:00',
uses_per_coupon int(5) NOT NULL default '1',
uses_per_user int(5) NOT NULL default '0',
restrict_to_products varchar(255) default NULL,
restrict_to_categories varchar(255) default NULL,
restrict_to_customers text,
coupon_active char(1) NOT NULL default 'Y',
date_created datetime NOT NULL default '0001-01-01 00:00:00',
date_modified datetime NOT NULL default '0001-01-01 00:00:00',
PRIMARY KEY  (coupon_id),
KEY idx_active_type_zen (coupon_active,coupon_type),
KEY idx_coupon_code_zen (coupon_code),
KEY idx_coupon_type_zen (coupon_type)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ujis;

--
-- Dumping data for table coupons
--


--
-- Table structure for table coupons_description
--

DROP TABLE IF EXISTS coupons_description;
CREATE TABLE coupons_description (
coupon_id int(11) NOT NULL default '0',
language_id int(11) NOT NULL default '0',
coupon_name varchar(32) NOT NULL default '',
coupon_description text,
PRIMARY KEY  (coupon_id,language_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table coupons_description
--


--
-- Table structure for table csv_columns
--

DROP TABLE IF EXISTS csv_columns;
CREATE TABLE csv_columns (
csv_column_id int(11) NOT NULL auto_increment,
csv_format_type_id int(11) default NULL,
csv_column_name varchar(255) default NULL,
csv_column_validate_function text,
csv_columns_dbtable varchar(255) default NULL,
csv_columns_dbcolumn varchar(255) default NULL,
PRIMARY KEY  (csv_column_id)
) ENGINE=MyISAM AUTO_INCREMENT=3115 DEFAULT CHARSET=ujis;

--
-- Dumping data for table csv_columns
--


--
-- Table structure for table csv_format_columns
--

DROP TABLE IF EXISTS csv_format_columns;
CREATE TABLE csv_format_columns (
csv_format_column_id int(11) NOT NULL auto_increment,
csv_format_id int(11) default NULL,
csv_column_id int(11) default NULL,
csv_format_column_number int(11) default NULL,
PRIMARY KEY  (csv_format_column_id),
KEY idx_csv_format_columns_zen (csv_format_id,csv_format_column_number,csv_column_id)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=ujis;

--
-- Dumping data for table csv_format_columns
--


--
-- Table structure for table csv_format_types
--

DROP TABLE IF EXISTS csv_format_types;
CREATE TABLE csv_format_types (
csv_format_type_id int(11) NOT NULL auto_increment,
csv_format_type_name varchar(255) default NULL,
PRIMARY KEY  (csv_format_type_id)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=ujis;

--
-- Dumping data for table csv_format_types
--


--
-- Table structure for table csv_formats
--

DROP TABLE IF EXISTS csv_formats;
CREATE TABLE csv_formats (
csv_format_id int(11) NOT NULL auto_increment,
csv_format_type_id int(11) default NULL,
csv_format_name varchar(255) default NULL,
csv_format_date_added datetime default NULL,
csv_format_last_modified datetime default NULL,
PRIMARY KEY  (csv_format_id),
KEY idx_format_name_zen (csv_format_name)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=ujis;

--
-- Dumping data for table csv_formats
--


--
-- Table structure for table currencies
--

DROP TABLE IF EXISTS currencies;
CREATE TABLE currencies (
currencies_id int(11) NOT NULL auto_increment,
title varchar(32) NOT NULL default '',
code varchar(3) NOT NULL default '',
symbol_left varchar(24) default NULL,
symbol_right varchar(24) default NULL,
decimal_point char(1) default NULL,
thousands_point char(1) default NULL,
decimal_places char(1) default NULL,
value float(13,8) default NULL,
last_updated datetime default NULL,
PRIMARY KEY  (currencies_id)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=ujis;

--
-- Dumping data for table currencies
--

INSERT INTO currencies VALUES (1,'US Dollar','USD','$','','.',',','2',0.00936500,'2009-11-19 12:39:40');
INSERT INTO currencies VALUES (2,'Euro','EUR','','EUR','.',',','2',0.00759400,'2009-11-19 12:39:40');
INSERT INTO currencies VALUES (3,'Japanese Yen','JPY','','��','.',',','',1.00000000,'2009-11-19 12:39:40');

--
-- Table structure for table currencies_m17n
--

DROP TABLE IF EXISTS currencies_m17n;
CREATE TABLE currencies_m17n (
currencies_id int(11) NOT NULL default '0',
language_id int(11) NOT NULL default '0',
symbol_left varchar(24) default NULL,
symbol_right varchar(24) default NULL,
PRIMARY KEY  (currencies_id,language_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table currencies_m17n
--


--
-- Table structure for table customers
--

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
customers_id int(11) NOT NULL auto_increment,
customers_gender char(1) NOT NULL default '',
customers_firstname varchar(32) NOT NULL default '',
customers_lastname varchar(32) NOT NULL default '',
customers_dob datetime NOT NULL default '0001-01-01 00:00:00',
customers_email_address varchar(96) NOT NULL default '',
customers_nick varchar(96) NOT NULL default '',
customers_default_address_id int(11) NOT NULL default '0',
customers_telephone varchar(32) default NULL,
customers_fax varchar(32) default NULL,
customers_password varchar(40) NOT NULL default '',
customers_newsletter char(1) default NULL,
customers_group_pricing int(11) NOT NULL default '0',
customers_email_format varchar(4) NOT NULL default 'TEXT',
customers_authorization int(1) NOT NULL default '0',
customers_referral varchar(32) NOT NULL default '',
customers_firstname_kana varchar(32) NOT NULL default '',
customers_lastname_kana varchar(32) NOT NULL default '',
customers_mobile_serial_number varchar(64) default NULL,
customers_languages_id int(11) NOT NULL default '0',
PRIMARY KEY  (customers_id),
KEY idx_email_address_zen (customers_email_address),
KEY idx_referral_zen (customers_referral(10)),
KEY idx_grp_pricing_zen (customers_group_pricing),
KEY idx_nick_zen (customers_nick),
KEY idx_newsletter_zen (customers_newsletter)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=ujis;

--
-- Dumping data for table customers
--


--
-- Table structure for table customers_admin_notes
--

DROP TABLE IF EXISTS customers_admin_notes;
CREATE TABLE customers_admin_notes (
admin_notes_id int(12) NOT NULL auto_increment,
customers_id int(11) NOT NULL default '0',
date_added datetime NOT NULL default '0000-00-00 00:00:00',
admin_id int(11) NOT NULL default '0',
admin_notes text NOT NULL,
rating tinyint(1) NOT NULL default '0',
PRIMARY KEY  (admin_notes_id),
KEY customers_id (customers_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table customers_admin_notes
--


--
-- Table structure for table customers_basket
--

DROP TABLE IF EXISTS customers_basket;
CREATE TABLE customers_basket (
customers_basket_id int(11) NOT NULL auto_increment,
customers_id int(11) NOT NULL default '0',
products_id tinytext NOT NULL,
customers_basket_quantity float NOT NULL default '0',
final_price decimal(15,4) NOT NULL default '0.0000',
customers_basket_date_added varchar(8) default NULL,
PRIMARY KEY  (customers_basket_id),
KEY idx_customers_id_zen (customers_id)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=ujis;

--
-- Dumping data for table customers_basket
--


--
-- Table structure for table customers_basket_attributes
--

DROP TABLE IF EXISTS customers_basket_attributes;
CREATE TABLE customers_basket_attributes (
customers_basket_attributes_id int(11) NOT NULL auto_increment,
customers_id int(11) NOT NULL default '0',
products_id tinytext NOT NULL,
products_options_id varchar(64) NOT NULL default '0',
products_options_value_id int(11) NOT NULL default '0',
products_options_value_text blob,
products_options_sort_order text NOT NULL,
PRIMARY KEY  (customers_basket_attributes_id),
KEY idx_cust_id_prod_id_zen (customers_id,products_id(36))
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=ujis;

--
-- Dumping data for table customers_basket_attributes
--


--
-- Table structure for table customers_info
--

DROP TABLE IF EXISTS customers_info;
CREATE TABLE customers_info (
customers_info_id int(11) NOT NULL default '0',
customers_info_date_of_last_logon datetime default NULL,
customers_info_number_of_logons int(5) default NULL,
customers_info_date_account_created datetime default NULL,
customers_info_date_account_last_modified datetime default NULL,
global_product_notifications int(1) default '0',
PRIMARY KEY  (customers_info_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table customers_info
--


--
-- Table structure for table customers_point_rate
--

DROP TABLE IF EXISTS customers_point_rate;
CREATE TABLE customers_point_rate (
customers_id int(11) NOT NULL default '0',
rate int(11) NOT NULL default '0',
PRIMARY KEY  (customers_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table customers_point_rate
--


--
-- Table structure for table customers_points
--

DROP TABLE IF EXISTS customers_points;
CREATE TABLE customers_points (
customers_id int(11) NOT NULL default '0',
deposit int(11) NOT NULL default '0',
pending int(11) NOT NULL default '0',
updated_at datetime default NULL,
PRIMARY KEY  (customers_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table customers_points
--


--
-- Table structure for table customers_wishlist
--

DROP TABLE IF EXISTS customers_wishlist;
CREATE TABLE customers_wishlist (
products_id int(13) NOT NULL default '0',
customers_id int(13) NOT NULL default '0',
products_model varchar(13) default NULL,
products_name varchar(64) NOT NULL default '',
products_price decimal(8,2) NOT NULL default '0.00',
final_price decimal(8,2) NOT NULL default '0.00',
products_quantity int(2) NOT NULL default '0',
wishlist_name varchar(64) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table customers_wishlist
--


--
-- Table structure for table db_cache
--

DROP TABLE IF EXISTS db_cache;
CREATE TABLE db_cache (
cache_entry_name varchar(64) NOT NULL default '',
cache_data blob,
cache_entry_created int(15) default NULL,
PRIMARY KEY  (cache_entry_name)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table db_cache
--


--
-- Table structure for table easy_admin_sub_menus
--

DROP TABLE IF EXISTS easy_admin_sub_menus;
CREATE TABLE easy_admin_sub_menus (
easy_admin_sub_menu_id int(11) NOT NULL auto_increment,
easy_admin_top_menu_id int(11) default NULL,
easy_admin_sub_menu_name varchar(255) default NULL,
easy_admin_sub_menu_url varchar(255) default NULL,
easy_admin_sub_menu_sort_order int(11) default NULL,
PRIMARY KEY  (easy_admin_sub_menu_id)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=ujis;

--
-- Dumping data for table easy_admin_sub_menus
--


--
-- Table structure for table easy_admin_top_menus
--

DROP TABLE IF EXISTS easy_admin_top_menus;
CREATE TABLE easy_admin_top_menus (
easy_admin_top_menu_id int(11) NOT NULL auto_increment,
easy_admin_top_menu_name varchar(255) default NULL,
is_dropdown int(1) default NULL,
easy_admin_top_menu_sort_order int(11) default NULL,
PRIMARY KEY  (easy_admin_top_menu_id)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=ujis;

--
-- Dumping data for table easy_admin_top_menus
--


--
-- Table structure for table easy_design_colors
--

DROP TABLE IF EXISTS easy_design_colors;
CREATE TABLE easy_design_colors (
easy_design_color_id int(11) NOT NULL auto_increment,
template_dir varchar(255) default NULL,
easy_design_color_key varchar(255) default NULL,
easy_design_color_name text,
easy_design_color_value text,
PRIMARY KEY  (easy_design_color_id),
KEY template_dir (template_dir),
KEY easy_design_color_key (easy_design_color_key)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=ujis;

--
-- Dumping data for table easy_design_colors
--


--
-- Table structure for table easy_design_languages
--

DROP TABLE IF EXISTS easy_design_languages;
CREATE TABLE easy_design_languages (
easy_design_language_id int(11) NOT NULL auto_increment,
language_id int(11) default NULL,
easy_design_language_key varchar(255) default NULL,
easy_design_language_name text,
easy_design_language_value text,
easy_design_language_sort_order int(11) default NULL,
PRIMARY KEY  (easy_design_language_id),
KEY easy_design_language_key (easy_design_language_key)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ujis;

--
-- Dumping data for table easy_design_languages
--


--
-- Table structure for table email_archive
--

DROP TABLE IF EXISTS email_archive;
CREATE TABLE email_archive (
archive_id int(11) NOT NULL auto_increment,
email_to_name varchar(96) NOT NULL default '',
email_to_address varchar(96) NOT NULL default '',
email_from_name varchar(96) NOT NULL default '',
email_from_address varchar(96) NOT NULL default '',
email_subject varchar(255) NOT NULL default '',
email_html text NOT NULL,
email_text text NOT NULL,
date_sent datetime NOT NULL default '0001-01-01 00:00:00',
module varchar(64) NOT NULL default '',
PRIMARY KEY  (archive_id),
KEY idx_email_to_address_zen (email_to_address),
KEY idx_module_zen (module)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table email_archive
--


--
-- Table structure for table email_templates
--

DROP TABLE IF EXISTS email_templates;
CREATE TABLE email_templates (
id smallint(6) NOT NULL auto_increment,
grp varchar(50) NOT NULL default '',
title varchar(255) NOT NULL default '',
PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=ujis;

--
-- Dumping data for table email_templates
--

INSERT INTO email_templates VALUES (1,'�桼������Ͽ','�桼������Ͽ���꤬�Ȥ��������ޤ�');
INSERT INTO email_templates VALUES (2,'��ʸ��λ','����ʸ���꤬�Ȥ��������ޤ�[�����]');
INSERT INTO email_templates VALUES (3,'��ʸ��λ','����ʸ���꤬�Ȥ��������ޤ�[��������]');
INSERT INTO email_templates VALUES (4,'�桼������','���ơ������ѹ�');

--
-- Table structure for table email_templates_description
--

DROP TABLE IF EXISTS email_templates_description;
CREATE TABLE email_templates_description (
email_templates_id smallint(6) NOT NULL default '0',
language_id int(11) NOT NULL default '0',
subject varchar(255) NOT NULL default '',
contents text NOT NULL,
updated datetime NOT NULL default '0000-00-00 00:00:00',
PRIMARY KEY  (email_templates_id,language_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table email_templates_description
--

INSERT INTO email_templates_description VALUES (1,2,'�桼������Ͽ���꤬�Ȥ��������ޤ�','�桼������Ͽ���꤬�Ȥ��������ޤ�\r\n\r\n���줫����������ꤤ���ޤ���','2010-06-27 12:52:56');
INSERT INTO email_templates_description VALUES (1,1,'Thank you for membership registration','Thank you for membership registration','2010-06-27 04:29:58');
INSERT INTO email_templates_description VALUES (2,2,'����ʸ���꤬�Ȥ��������ޤ�[�����]','��ʸ��ǧ�� from XXXXXXXX\r\n\r\n[CUSTOMER_NAME] ��\r\n\r\n�����Ѥ��꤬�Ȥ��������ޤ���\r\n����ʸ���Ƥϰʲ����̤�Ǥ���\r\n------------------------------------------------------\r\n����ʸ�ֹ�: [ORDER_ID]\r\n����ʸ��: [DATE_ORDERED]\r\n�������ٽ�:\r\n[INVOICE_URL]\r\n\r\n[COMMENT]\r\n\r\n����\r\n------------------------------------------------------\r\n[PRODUCTS_ORDERED]\r\n------------------------------------------------------\r\n[TOTALS]\r\n\r\n���Ϥ���\r\n------------------------------------------------------\r\n[DELIVERY_ADDRESS]\r\n\r\n�����轻��\r\n------------------------------------------------------\r\n[BILLING_ADDRESS]\r\n\r\n����ʧ����ˡ\r\n------------------------------------------------------\r\n[PAYMENT_METHOD]\r\n\r\n\r\n-----\r\n���Υ᡼���������åפ���Ͽ���줿�����ͤ��Ф��Ƥ����ꤷ�Ƥ��ޤ���\r\n���������̵꤬���褦�Ǥ��������Ѥ�����Ǥ����᡼��ˤ�\r\nxxxxxxx@example.org �ޤǤ�Ϣ����������\r\n\r\n-----\r\nCopyright (c) XXXXXXXX Inc. All Rights Reserved','2010-06-27 12:52:25');
INSERT INTO email_templates_description VALUES (2,1,'Thank you for the order[member]','OrderConfirmation from XXXXXXXX\r\n\r\n[CUSTOMER_NAME]\r\n\r\nOrderNumber: [ORDER_ID]\r\nOrderDate: [DATE_ORDERED]\r\nInvoice:\r\n[INVOICE_URL]\r\n\r\n[COMMENT]\r\n\r\nProducts\r\n------------------------------------------------------\r\n[PRODUCTS_ORDERED]\r\n------------------------------------------------------\r\n[TOTALS]\r\n\r\nShipping\r\n------------------------------------------------------\r\n[DELIVERY_ADDRESS]\r\n\r\nInvoiceAddress\r\n------------------------------------------------------\r\n[BILLING_ADDRESS]\r\n\r\nPayment\r\n------------------------------------------------------\r\n[PAYMENT_METHOD]\r\n\r\n\r\n-----\r\nThis E-mail is sent to the customer registered in this shop.\r\nVery sorry to trouble you, but with mail when there is no mind hit\r\nxxxxxxx@example.org\r\n\r\n-----\r\nCopyright (c) XXXXXXXX Inc. All Rights Reserved','2010-06-27 04:29:58');
INSERT INTO email_templates_description VALUES (3,2,'����ʸ���꤬�Ȥ��������ޤ�[��������]','��ʸ��ǧ�� from XXXXXXXX\r\n\r\n[CUSTOMER_NAME] ��\r\n\r\n�����Ѥ��꤬�Ȥ��������ޤ���\r\n����ʸ���Ƥϰʲ����̤�Ǥ���\r\n------------------------------------------------------\r\n����ʸ�ֹ�: [ORDER_ID]\r\n����ʸ��: [DATE_ORDERED]\r\n\r\n[COMMENT]\r\n\r\n����\r\n------------------------------------------------------\r\n[PRODUCTS_ORDERED]\r\n------------------------------------------------------\r\n[TOTALS]\r\n\r\n���Ϥ���\r\n------------------------------------------------------\r\n[DELIVERY_ADDRESS]\r\n\r\n�����轻��\r\n------------------------------------------------------\r\n[BILLING_ADDRESS]\r\n\r\n����ʧ����ˡ\r\n------------------------------------------------------\r\n[PAYMENT_METHOD]\r\n\r\n\r\n-----\r\n���Υ᡼���������åפ���Ͽ���줿�����ͤ��Ф��Ƥ����ꤷ�Ƥ��ޤ���\r\n���������̵꤬���褦�Ǥ��������Ѥ�����Ǥ����᡼��ˤ�\r\nxxxxxxx@example.org �ޤǤ�Ϣ����������\r\n\r\n-----\r\nCopyright (c) XXXXXXXX Inc. All Rights Reserved','2010-06-27 04:31:58');
INSERT INTO email_templates_description VALUES (3,1,'Thank you for the order[guest]','OrderConfirmation from XXXXXXXX\r\n\r\n[CUSTOMER_NAME]\r\n\r\nOrderNumber: [ORDER_ID]\r\nOrderDate: [DATE_ORDERED]\r\nInvoice:\r\n[INVOICE_URL]\r\n\r\n[COMMENT]\r\n\r\nProducts\r\n------------------------------------------------------\r\n[PRODUCTS_ORDERED]\r\n------------------------------------------------------\r\n[TOTALS]\r\n\r\nShipping\r\n------------------------------------------------------\r\n[DELIVERY_ADDRESS]\r\n\r\nInvoiceAddress\r\n------------------------------------------------------\r\n[BILLING_ADDRESS]\r\n\r\nPayment\r\n------------------------------------------------------\r\n[PAYMENT_METHOD]\r\n\r\n\r\n-----\r\nThis E-mail is sent to the customer registered in this shop.\r\nVery sorry to trouble you, but with mail when there is no mind hit\r\nxxxxxxx@example.org\r\n\r\n-----\r\nCopyright (c) XXXXXXXX Inc. All Rights Reserved','2010-06-27 04:29:58');
INSERT INTO email_templates_description VALUES (4,2,'����ʸ���վ����Τ��Τ餻','[CUSTOMER_NAME]��\r\n\r\n�����Ѥ��꤬�Ȥ��������ޤ���\r\n[DATE_ORDERED]�ˤ����Ѥ���������\r\n����ʸ�����ֹ桧[ORDER_ID]�ξ������ѹ�����ޤ����ΤǤ��Τ餻���ޤ���\r\n\r\n����ʸ�ˤĤ��Ƥξ���ϲ���URL�Ǥ������������ޤ���\r\n[INVOICE_URL]\r\n\r\n��������ꤤ���ޤ���\r\n\r\n-----\r\n���Υ᡼���������åפ���Ͽ���줿�����ͤ��Ф��Ƥ����ꤷ�Ƥ��ޤ���\r\n���������̵꤬���褦�Ǥ��������Ѥ�����Ǥ����᡼��ˤ�\r\nxxxxxxx@example.org �ޤǤ�Ϣ����������\r\n\r\n-----\r\nCopyright (c) XXXXXXXX Inc. All Rights Reserved','2010-07-20 16:35:51');
INSERT INTO email_templates_description VALUES (4,1,'Information of order situation','MODULE_EMAIL_TEMPLATE_STATUS_MAIL_BODY_EN\', \'\r\n[CUSTOMER_NAME]��\r\n\r\nThank you for use\r\n[DATE_ORDERED]\r\nOrder receipt number��[ORDER_ID]\r\n\r\nYou can see ordering information\r\n[INVOICE_URL]\r\n\r\n-----\r\nThis E-mail is sent to the customer registered in this shop.\r\nVery sorry to trouble you, but with mail when there is no mind hit\r\nxxxxxxx@example.org\r\n\r\n-----\r\nCopyright (c) XXXXXXXX Inc. All Rights Reserved','2010-06-27 04:29:58');
INSERT INTO email_templates_description VALUES (1,9,'[������]�桼������Ͽ��λ','�桼������Ͽ���꤬�Ȥ��������ޤ���','2010-06-27 12:52:56');
INSERT INTO email_templates_description VALUES (2,9,'[����]��ʸ��λ','[CUSTOMER_NAME] ��\r\n\r\n�����Ѥ��꤬�Ȥ��������ޤ���\r\n����ʸ���Ƥϰʲ����̤�Ǥ���\r\n\r\n����ʸ�ֹ�: [ORDER_ID]\r\n����ʸ��: [DATE_ORDERED]\r\n\r\n�ܤ����Ϥ����顣\r\n[INVOICE_URL]','2010-06-27 12:52:25');
INSERT INTO email_templates_description VALUES (3,9,'����ʸ���꤬�Ȥ��������ޤ�[��������]','��ʸ��ǧ�� from XXXXXXXX\r\n\r\n[CUSTOMER_NAME] ��\r\n\r\n�����Ѥ��꤬�Ȥ��������ޤ���\r\n����ʸ���Ƥϰʲ����̤�Ǥ���\r\n------------------------------------------------------\r\n����ʸ�ֹ�: [ORDER_ID]\r\n����ʸ��: [DATE_ORDERED]\r\n\r\n[COMMENT]\r\n\r\n����\r\n------------------------------------------------------\r\n[PRODUCTS_ORDERED]\r\n------------------------------------------------------\r\n[TOTALS]\r\n\r\n���Ϥ���\r\n------------------------------------------------------\r\n[DELIVERY_ADDRESS]\r\n\r\n�����轻��\r\n------------------------------------------------------\r\n[BILLING_ADDRESS]\r\n\r\n����ʧ����ˡ\r\n------------------------------------------------------\r\n[PAYMENT_METHOD]\r\n\r\n\r\n-----\r\n���Υ᡼���������åפ���Ͽ���줿�����ͤ��Ф��Ƥ����ꤷ�Ƥ��ޤ���\r\n���������̵꤬���褦�Ǥ��������Ѥ�����Ǥ����᡼��ˤ�\r\nxxxxxxx@example.org �ޤǤ�Ϣ����������\r\n\r\n-----\r\nCopyright (c) XXXXXXXX Inc. All Rights Reserved','0000-00-00 00:00:00');
INSERT INTO email_templates_description VALUES (4,9,'[������]����ʸ���վ�������','[CUSTOMER_NAME]��\r\n\r\n�����Ѥ��꤬�Ȥ��������ޤ���\r\n[DATE_ORDERED]�ˤ����Ѥ���������\r\n����ʸ�����ֹ桧[ORDER_ID]�ξ������ѹ�����ޤ����ΤǤ��Τ餻���ޤ���\r\n\r\n����ʸ�ˤĤ��Ƥξ���ϲ���URL�Ǥ������������ޤ���\r\n[INVOICE_URL]\r\n\r\n��������ꤤ���ޤ���','2010-07-20 16:35:51');

--
-- Table structure for table ezpages
--

DROP TABLE IF EXISTS ezpages;
CREATE TABLE ezpages (
pages_id int(11) NOT NULL auto_increment,
languages_id int(11) NOT NULL default '1',
pages_title varchar(64) NOT NULL default '',
alt_url varchar(255) NOT NULL default '',
alt_url_external varchar(255) NOT NULL default '',
pages_html_text text,
status_header int(1) NOT NULL default '1',
status_sidebox int(1) NOT NULL default '1',
status_footer int(1) NOT NULL default '1',
status_toc int(1) NOT NULL default '1',
header_sort_order int(3) NOT NULL default '0',
sidebox_sort_order int(3) NOT NULL default '0',
footer_sort_order int(3) NOT NULL default '0',
toc_sort_order int(3) NOT NULL default '0',
page_open_new_window int(1) NOT NULL default '0',
page_is_ssl int(1) NOT NULL default '0',
toc_chapter int(11) NOT NULL default '0',
PRIMARY KEY  (pages_id),
KEY idx_lang_id_zen (languages_id),
KEY idx_ezp_status_header_zen (status_header),
KEY idx_ezp_status_sidebox_zen (status_sidebox),
KEY idx_ezp_status_footer_zen (status_footer),
KEY idx_ezp_status_toc_zen (status_toc)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=ujis;

--
-- Dumping data for table ezpages
--


--
-- Table structure for table feature_area
--

DROP TABLE IF EXISTS feature_area;
CREATE TABLE feature_area (
id int(11) NOT NULL auto_increment,
main_image varchar(64) default NULL,
thumb_image varchar(64) default NULL,
link_url varchar(255) default NULL,
sort_order varchar(255) default NULL,
date_added datetime default NULL,
last_modified datetime default NULL,
status tinyint(1) default NULL,
new_window tinyint(1) default NULL,
PRIMARY KEY  (id),
KEY idx_status_zen (status),
KEY idx_sort_order_zen (sort_order)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table feature_area
--


--
-- Table structure for table feature_area_info
--

DROP TABLE IF EXISTS feature_area_info;
CREATE TABLE feature_area_info (
id int(11) NOT NULL auto_increment,
languages_id int(11) NOT NULL default '0',
name varchar(255) default NULL,
url_clicked int(11) default NULL,
date_last_click datetime default NULL,
PRIMARY KEY  (id,languages_id),
KEY idx_categories_name_zen (name)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table feature_area_info
--


--
-- Table structure for table featured
--

DROP TABLE IF EXISTS featured;
CREATE TABLE featured (
featured_id int(11) NOT NULL auto_increment,
products_id int(11) NOT NULL default '0',
featured_date_added datetime default NULL,
featured_last_modified datetime default NULL,
expires_date date NOT NULL default '0001-01-01',
date_status_change datetime default NULL,
status int(1) NOT NULL default '1',
featured_date_available date NOT NULL default '0001-01-01',
PRIMARY KEY  (featured_id),
KEY idx_status_zen (status),
KEY idx_products_id_zen (products_id),
KEY idx_date_avail_zen (featured_date_available)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=ujis;

--
-- Dumping data for table featured
--


--
-- Table structure for table files_uploaded
--

DROP TABLE IF EXISTS files_uploaded;
CREATE TABLE files_uploaded (
files_uploaded_id int(11) NOT NULL auto_increment,
sesskey varchar(32) default NULL,
customers_id int(11) default NULL,
files_uploaded_name varchar(64) NOT NULL default '',
PRIMARY KEY  (files_uploaded_id),
KEY idx_customers_id_zen (customers_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis COMMENT='Must always have either a sesskey or customers_id';

--
-- Dumping data for table files_uploaded
--


--
-- Table structure for table geo_zones
--

DROP TABLE IF EXISTS geo_zones;
CREATE TABLE geo_zones (
geo_zone_id int(11) NOT NULL auto_increment,
geo_zone_name varchar(32) NOT NULL default '',
geo_zone_description varchar(255) NOT NULL default '',
last_modified datetime default NULL,
date_added datetime NOT NULL default '0001-01-01 00:00:00',
PRIMARY KEY  (geo_zone_id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table geo_zones
--

INSERT INTO geo_zones VALUES (1,'����','���ܡʾ����ǡ�','2007-01-15 11:44:41','2006-11-29 16:18:40');

--
-- Table structure for table get_terms_to_filter
--

DROP TABLE IF EXISTS get_terms_to_filter;
CREATE TABLE get_terms_to_filter (
get_term_name varchar(255) NOT NULL default '',
PRIMARY KEY  (get_term_name)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table get_terms_to_filter
--

INSERT INTO get_terms_to_filter VALUES ('manufacturers_id');
INSERT INTO get_terms_to_filter VALUES ('music_genre_id');
INSERT INTO get_terms_to_filter VALUES ('record_company_id');

--
-- Table structure for table group_point_rate
--

DROP TABLE IF EXISTS group_point_rate;
CREATE TABLE group_point_rate (
group_id int(11) NOT NULL default '0',
rate int(11) NOT NULL default '0',
PRIMARY KEY  (group_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table group_point_rate
--


--
-- Table structure for table group_pricing
--

DROP TABLE IF EXISTS group_pricing;
CREATE TABLE group_pricing (
group_id int(11) NOT NULL auto_increment,
group_name varchar(32) NOT NULL default '',
group_percentage decimal(5,2) NOT NULL default '0.00',
last_modified datetime default NULL,
date_added datetime NOT NULL default '0001-01-01 00:00:00',
PRIMARY KEY  (group_id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table group_pricing
--


--
-- Table structure for table group_pricing_m17n
--

DROP TABLE IF EXISTS group_pricing_m17n;
CREATE TABLE group_pricing_m17n (
group_id int(11) NOT NULL default '0',
language_id int(11) NOT NULL default '0',
group_name varchar(32) NOT NULL default '',
PRIMARY KEY  (group_id,language_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table group_pricing_m17n
--


--
-- Table structure for table holidays
--

DROP TABLE IF EXISTS holidays;
CREATE TABLE holidays (
id int(11) NOT NULL auto_increment,
year int(11) default NULL,
month int(11) default NULL,
day int(11) default NULL,
week int(11) default NULL,
weekcnt int(11) default NULL,
open int(11) default NULL,
PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=ujis;

--
-- Dumping data for table holidays
--


--
-- Table structure for table languages
--

DROP TABLE IF EXISTS languages;
CREATE TABLE languages (
languages_id int(11) NOT NULL auto_increment,
name varchar(32) NOT NULL default '',
code varchar(20) NOT NULL default '',
image varchar(64) default NULL,
directory varchar(32) default NULL,
sort_order int(3) default NULL,
PRIMARY KEY  (languages_id),
KEY idx_languages_name_zen (name)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=ujis;

--
-- Dumping data for table languages
--

INSERT INTO languages VALUES (1,'English','en','icon.gif','english',1);
INSERT INTO languages VALUES (2,'Japanese','ja','icon.gif','japanese',1);
INSERT INTO languages VALUES (9,'Japanese(mobile)','ja-mobile','icon.gif','japanese',1);

--
-- Table structure for table layout_boxes
--

DROP TABLE IF EXISTS layout_boxes;
CREATE TABLE layout_boxes (
layout_id int(11) NOT NULL auto_increment,
layout_template varchar(64) NOT NULL default '',
layout_box_name varchar(64) NOT NULL default '',
layout_box_status tinyint(1) NOT NULL default '0',
layout_box_location tinyint(1) NOT NULL default '0',
layout_box_sort_order int(11) NOT NULL default '0',
layout_box_sort_order_single int(11) NOT NULL default '0',
layout_box_status_single tinyint(4) NOT NULL default '0',
layout_page varchar(64) default '',
PRIMARY KEY  (layout_id),
KEY idx_name_template_zen (layout_template,layout_box_name),
KEY idx_layout_box_status_zen (layout_box_status)
) ENGINE=MyISAM AUTO_INCREMENT=1237 DEFAULT CHARSET=ujis;

--
-- Dumping data for table layout_boxes
--

INSERT INTO layout_boxes VALUES (1,'default_template_settings','banner_box_all.php',1,1,5,0,0,'');
INSERT INTO layout_boxes VALUES (2,'default_template_settings','banner_box.php',1,0,300,1,127,'');
INSERT INTO layout_boxes VALUES (3,'default_template_settings','banner_box2.php',1,1,15,1,15,'');
INSERT INTO layout_boxes VALUES (4,'default_template_settings','best_sellers.php',1,1,30,70,1,'');
INSERT INTO layout_boxes VALUES (5,'default_template_settings','categories.php',1,0,10,10,1,'');
INSERT INTO layout_boxes VALUES (6,'default_template_settings','currencies.php',1,1,80,60,1,'');
INSERT INTO layout_boxes VALUES (7,'default_template_settings','document_categories.php',1,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (8,'default_template_settings','ezpages.php',1,1,-1,2,1,'');
INSERT INTO layout_boxes VALUES (9,'default_template_settings','featured.php',1,0,45,0,0,'');
INSERT INTO layout_boxes VALUES (10,'default_template_settings','information.php',1,0,50,40,1,'');
INSERT INTO layout_boxes VALUES (11,'default_template_settings','languages.php',1,1,70,50,1,'');
INSERT INTO layout_boxes VALUES (12,'default_template_settings','manufacturers.php',1,0,30,20,1,'');
INSERT INTO layout_boxes VALUES (13,'default_template_settings','manufacturer_info.php',1,1,35,95,1,'');
INSERT INTO layout_boxes VALUES (14,'default_template_settings','more_information.php',1,0,200,200,1,'');
INSERT INTO layout_boxes VALUES (15,'default_template_settings','music_genres.php',1,1,0,0,0,'');
INSERT INTO layout_boxes VALUES (16,'default_template_settings','order_history.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (17,'default_template_settings','product_notifications.php',1,1,55,85,1,'');
INSERT INTO layout_boxes VALUES (18,'default_template_settings','record_companies.php',1,1,0,0,0,'');
INSERT INTO layout_boxes VALUES (19,'default_template_settings','reviews.php',1,0,40,0,0,'');
INSERT INTO layout_boxes VALUES (20,'default_template_settings','search.php',1,1,10,0,0,'');
INSERT INTO layout_boxes VALUES (21,'default_template_settings','search_header.php',0,0,0,0,1,'');
INSERT INTO layout_boxes VALUES (22,'default_template_settings','shopping_cart.php',1,1,20,30,1,'');
INSERT INTO layout_boxes VALUES (23,'default_template_settings','specials.php',1,1,45,0,0,'');
INSERT INTO layout_boxes VALUES (24,'default_template_settings','tell_a_friend.php',1,1,65,0,0,'');
INSERT INTO layout_boxes VALUES (25,'default_template_settings','whats_new.php',1,0,20,0,0,'');
INSERT INTO layout_boxes VALUES (26,'default_template_settings','whos_online.php',1,1,200,200,1,'');
INSERT INTO layout_boxes VALUES (27,'template_default','banner_box_all.php',1,1,5,0,0,'');
INSERT INTO layout_boxes VALUES (28,'template_default','banner_box.php',1,0,300,1,127,'');
INSERT INTO layout_boxes VALUES (29,'template_default','banner_box2.php',1,1,15,1,15,'');
INSERT INTO layout_boxes VALUES (30,'template_default','best_sellers.php',1,1,30,70,1,'');
INSERT INTO layout_boxes VALUES (31,'template_default','categories.php',1,0,10,10,1,'');
INSERT INTO layout_boxes VALUES (32,'template_default','currencies.php',1,1,80,60,1,'');
INSERT INTO layout_boxes VALUES (33,'template_default','ezpages.php',1,1,-1,2,1,'');
INSERT INTO layout_boxes VALUES (34,'template_default','featured.php',1,0,45,0,0,'');
INSERT INTO layout_boxes VALUES (35,'template_default','information.php',1,0,50,40,1,'');
INSERT INTO layout_boxes VALUES (36,'template_default','languages.php',1,1,70,50,1,'');
INSERT INTO layout_boxes VALUES (37,'template_default','manufacturers.php',1,0,30,20,1,'');
INSERT INTO layout_boxes VALUES (38,'template_default','manufacturer_info.php',1,1,35,95,1,'');
INSERT INTO layout_boxes VALUES (39,'template_default','more_information.php',1,0,200,200,1,'');
INSERT INTO layout_boxes VALUES (40,'template_default','my_broken_box.php',1,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (41,'template_default','order_history.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (42,'template_default','product_notifications.php',1,1,55,85,1,'');
INSERT INTO layout_boxes VALUES (43,'template_default','reviews.php',1,0,40,0,0,'');
INSERT INTO layout_boxes VALUES (44,'template_default','search.php',1,1,10,0,0,'');
INSERT INTO layout_boxes VALUES (45,'template_default','search_header.php',0,0,0,0,1,'');
INSERT INTO layout_boxes VALUES (46,'template_default','shopping_cart.php',1,1,20,30,1,'');
INSERT INTO layout_boxes VALUES (47,'template_default','specials.php',1,1,45,0,0,'');
INSERT INTO layout_boxes VALUES (48,'template_default','tell_a_friend.php',1,1,65,0,0,'');
INSERT INTO layout_boxes VALUES (49,'template_default','whats_new.php',1,0,20,0,0,'');
INSERT INTO layout_boxes VALUES (50,'template_default','whos_online.php',1,1,200,200,1,'');
INSERT INTO layout_boxes VALUES (51,'classic','banner_box.php',1,0,300,1,127,'');
INSERT INTO layout_boxes VALUES (52,'classic','banner_box2.php',1,1,15,1,15,'');
INSERT INTO layout_boxes VALUES (53,'classic','banner_box_all.php',1,1,5,0,0,'');
INSERT INTO layout_boxes VALUES (54,'classic','best_sellers.php',1,1,30,70,1,'');
INSERT INTO layout_boxes VALUES (55,'classic','categories.php',1,0,10,10,1,'');
INSERT INTO layout_boxes VALUES (56,'classic','currencies.php',1,1,80,60,1,'');
INSERT INTO layout_boxes VALUES (57,'classic','document_categories.php',1,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (58,'classic','ezpages.php',1,1,-1,2,1,'');
INSERT INTO layout_boxes VALUES (59,'classic','featured.php',1,0,45,0,0,'');
INSERT INTO layout_boxes VALUES (60,'classic','information.php',1,0,50,40,1,'');
INSERT INTO layout_boxes VALUES (61,'classic','languages.php',1,1,70,50,1,'');
INSERT INTO layout_boxes VALUES (62,'classic','manufacturers.php',1,0,30,20,1,'');
INSERT INTO layout_boxes VALUES (63,'classic','manufacturer_info.php',1,1,35,95,1,'');
INSERT INTO layout_boxes VALUES (64,'classic','more_information.php',1,0,200,200,1,'');
INSERT INTO layout_boxes VALUES (65,'classic','music_genres.php',1,1,0,0,0,'');
INSERT INTO layout_boxes VALUES (66,'classic','order_history.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (67,'classic','product_notifications.php',1,1,55,85,1,'');
INSERT INTO layout_boxes VALUES (68,'classic','record_companies.php',1,1,0,0,0,'');
INSERT INTO layout_boxes VALUES (69,'classic','reviews.php',1,0,40,0,0,'');
INSERT INTO layout_boxes VALUES (70,'classic','search.php',1,1,10,0,0,'');
INSERT INTO layout_boxes VALUES (71,'classic','search_header.php',0,0,0,0,1,'');
INSERT INTO layout_boxes VALUES (72,'classic','shopping_cart.php',1,1,20,30,1,'');
INSERT INTO layout_boxes VALUES (73,'classic','specials.php',1,1,45,0,0,'');
INSERT INTO layout_boxes VALUES (74,'classic','tell_a_friend.php',1,1,65,0,0,'');
INSERT INTO layout_boxes VALUES (75,'classic','whats_new.php',1,0,20,0,0,'');
INSERT INTO layout_boxes VALUES (76,'classic','whos_online.php',1,1,200,200,1,'');
INSERT INTO layout_boxes VALUES (77,'sugudeki','banner_box.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (78,'sugudeki','banner_box2.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (79,'sugudeki','banner_box_all.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (80,'sugudeki','best_sellers.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (81,'sugudeki','categories.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (82,'sugudeki','currencies.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (83,'sugudeki','document_categories.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (84,'sugudeki','ezpages.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (85,'sugudeki','featured.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (86,'sugudeki','information.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (87,'sugudeki','languages.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (88,'sugudeki','manufacturer_info.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (89,'sugudeki','manufacturers.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (90,'sugudeki','more_information.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (91,'sugudeki','music_genres.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (92,'sugudeki','order_history.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (93,'sugudeki','product_notifications.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (94,'sugudeki','record_companies.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (95,'sugudeki','reviews.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (96,'sugudeki','search.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (97,'sugudeki','search_header.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (98,'sugudeki','shopping_cart.php',0,1,0,0,0,'');
INSERT INTO layout_boxes VALUES (99,'sugudeki','specials.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (100,'sugudeki','tell_a_friend.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (101,'sugudeki','whats_new.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (102,'sugudeki','whos_online.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (1236,'zen_mobile','whos_online.php',0,1,200,200,1,'shopping_cart');
INSERT INTO layout_boxes VALUES (1235,'zen_mobile','whos_online.php',0,1,200,200,1,'product_list');
INSERT INTO layout_boxes VALUES (1234,'zen_mobile','whos_online.php',0,1,200,200,1,'product_info');
INSERT INTO layout_boxes VALUES (1233,'zen_mobile','whos_online.php',0,1,200,200,1,'index');
INSERT INTO layout_boxes VALUES (1232,'zen_mobile','whos_online.php',0,1,200,200,1,'');
INSERT INTO layout_boxes VALUES (1231,'zen_mobile','whos_online.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1230,'zen_mobile','whats_new.php',0,0,20,0,0,'shopping_cart');
INSERT INTO layout_boxes VALUES (1229,'zen_mobile','whats_new.php',0,0,20,0,0,'product_list');
INSERT INTO layout_boxes VALUES (1228,'zen_mobile','whats_new.php',0,0,20,0,0,'product_info');
INSERT INTO layout_boxes VALUES (1227,'zen_mobile','whats_new.php',0,0,20,0,0,'index');
INSERT INTO layout_boxes VALUES (1225,'zen_mobile','whats_new.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1226,'zen_mobile','whats_new.php',0,0,20,0,0,'');
INSERT INTO layout_boxes VALUES (1224,'zen_mobile','tell_a_friend.php',0,1,65,0,0,'shopping_cart');
INSERT INTO layout_boxes VALUES (1223,'zen_mobile','tell_a_friend.php',0,1,65,0,0,'product_list');
INSERT INTO layout_boxes VALUES (1222,'zen_mobile','tell_a_friend.php',0,1,65,0,0,'product_info');
INSERT INTO layout_boxes VALUES (1221,'zen_mobile','tell_a_friend.php',0,1,65,0,0,'index');
INSERT INTO layout_boxes VALUES (1220,'zen_mobile','tell_a_friend.php',0,1,65,0,0,'');
INSERT INTO layout_boxes VALUES (1219,'zen_mobile','tell_a_friend.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1218,'zen_mobile','specials.php',0,1,9,0,0,'shopping_cart');
INSERT INTO layout_boxes VALUES (1217,'zen_mobile','specials.php',0,1,45,0,0,'product_list');
INSERT INTO layout_boxes VALUES (1215,'zen_mobile','specials.php',0,1,45,0,0,'index');
INSERT INTO layout_boxes VALUES (1216,'zen_mobile','specials.php',0,1,45,0,0,'product_info');
INSERT INTO layout_boxes VALUES (1214,'zen_mobile','specials.php',0,1,45,0,0,'');
INSERT INTO layout_boxes VALUES (1213,'zen_mobile','specials.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1210,'zen_mobile','shopping_cart.php',0,1,20,30,1,'product_info');
INSERT INTO layout_boxes VALUES (1212,'zen_mobile','shopping_cart.php',0,1,20,30,1,'shopping_cart');
INSERT INTO layout_boxes VALUES (1211,'zen_mobile','shopping_cart.php',0,1,20,30,1,'product_list');
INSERT INTO layout_boxes VALUES (1209,'zen_mobile','shopping_cart.php',0,1,20,30,1,'index');
INSERT INTO layout_boxes VALUES (1208,'zen_mobile','shopping_cart.php',0,1,20,30,1,'');
INSERT INTO layout_boxes VALUES (1207,'zen_mobile','shopping_cart.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1206,'zen_mobile','search_header.php',0,1,7,0,1,'shopping_cart');
INSERT INTO layout_boxes VALUES (1205,'zen_mobile','search_header.php',0,0,0,0,1,'product_list');
INSERT INTO layout_boxes VALUES (1200,'zen_mobile','search.php',1,1,5,0,0,'index');
INSERT INTO layout_boxes VALUES (1201,'zen_mobile','search_header.php',0,0,0,0,0,'index');
INSERT INTO layout_boxes VALUES (1202,'zen_mobile','search_header.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1203,'zen_mobile','search_header.php',0,0,0,0,1,'');
INSERT INTO layout_boxes VALUES (1204,'zen_mobile','search_header.php',0,0,0,0,1,'product_info');
INSERT INTO layout_boxes VALUES (1199,'zen_mobile','search.php',1,1,11,0,0,'product_list');
INSERT INTO layout_boxes VALUES (1198,'zen_mobile','search.php',0,1,20,0,0,'shopping_cart');
INSERT INTO layout_boxes VALUES (1197,'zen_mobile','search.php',0,1,10,0,0,'product_info');
INSERT INTO layout_boxes VALUES (1196,'zen_mobile','search.php',0,1,10,0,0,'');
INSERT INTO layout_boxes VALUES (1195,'zen_mobile','search.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1194,'zen_mobile','reviews.php',0,0,40,0,0,'shopping_cart');
INSERT INTO layout_boxes VALUES (1193,'zen_mobile','reviews.php',0,0,40,0,0,'product_list');
INSERT INTO layout_boxes VALUES (1192,'zen_mobile','reviews.php',0,0,40,0,0,'product_info');
INSERT INTO layout_boxes VALUES (1191,'zen_mobile','reviews.php',0,0,40,0,0,'index');
INSERT INTO layout_boxes VALUES (1190,'zen_mobile','reviews.php',0,0,40,0,0,'');
INSERT INTO layout_boxes VALUES (1189,'zen_mobile','reviews.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1187,'zen_mobile','record_companies.php',0,1,0,0,0,'product_list');
INSERT INTO layout_boxes VALUES (1188,'zen_mobile','record_companies.php',0,1,0,0,0,'shopping_cart');
INSERT INTO layout_boxes VALUES (1186,'zen_mobile','record_companies.php',0,1,0,0,0,'product_info');
INSERT INTO layout_boxes VALUES (1185,'zen_mobile','record_companies.php',0,1,0,0,0,'index');
INSERT INTO layout_boxes VALUES (1184,'zen_mobile','record_companies.php',0,1,0,0,0,'');
INSERT INTO layout_boxes VALUES (1183,'zen_mobile','record_companies.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1182,'zen_mobile','product_notifications.php',0,1,55,85,1,'shopping_cart');
INSERT INTO layout_boxes VALUES (1179,'zen_mobile','product_notifications.php',0,1,55,85,1,'index');
INSERT INTO layout_boxes VALUES (1180,'zen_mobile','product_notifications.php',0,1,55,85,1,'product_info');
INSERT INTO layout_boxes VALUES (1181,'zen_mobile','product_notifications.php',0,1,55,85,1,'product_list');
INSERT INTO layout_boxes VALUES (1178,'zen_mobile','product_notifications.php',0,1,55,85,1,'');
INSERT INTO layout_boxes VALUES (1177,'zen_mobile','product_notifications.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1176,'zen_mobile','order_history.php',0,0,0,0,0,'shopping_cart');
INSERT INTO layout_boxes VALUES (1175,'zen_mobile','order_history.php',0,0,0,0,0,'product_list');
INSERT INTO layout_boxes VALUES (1174,'zen_mobile','order_history.php',0,0,0,0,0,'product_info');
INSERT INTO layout_boxes VALUES (1173,'zen_mobile','order_history.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1172,'zen_mobile','order_history.php',0,0,0,0,0,'index');
INSERT INTO layout_boxes VALUES (1171,'zen_mobile','order_history.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (1169,'zen_mobile','music_genres.php',0,1,0,0,0,'product_list');
INSERT INTO layout_boxes VALUES (1170,'zen_mobile','music_genres.php',0,1,0,0,0,'shopping_cart');
INSERT INTO layout_boxes VALUES (1168,'zen_mobile','music_genres.php',0,1,0,0,0,'product_info');
INSERT INTO layout_boxes VALUES (1167,'zen_mobile','music_genres.php',0,1,0,0,0,'index');
INSERT INTO layout_boxes VALUES (1166,'zen_mobile','music_genres.php',0,1,0,0,0,'');
INSERT INTO layout_boxes VALUES (1165,'zen_mobile','music_genres.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1164,'zen_mobile','more_information.php',0,0,200,200,1,'shopping_cart');
INSERT INTO layout_boxes VALUES (1163,'zen_mobile','more_information.php',0,0,200,200,1,'product_list');
INSERT INTO layout_boxes VALUES (1162,'zen_mobile','more_information.php',0,0,200,200,1,'product_info');
INSERT INTO layout_boxes VALUES (1161,'zen_mobile','more_information.php',0,0,200,200,1,'index');
INSERT INTO layout_boxes VALUES (1159,'zen_mobile','more_information.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1160,'zen_mobile','more_information.php',0,0,200,200,1,'');
INSERT INTO layout_boxes VALUES (1157,'zen_mobile','manufacturers.php',0,0,30,20,1,'product_list');
INSERT INTO layout_boxes VALUES (1158,'zen_mobile','manufacturers.php',0,0,30,20,1,'shopping_cart');
INSERT INTO layout_boxes VALUES (1155,'zen_mobile','manufacturers.php',0,0,30,20,1,'index');
INSERT INTO layout_boxes VALUES (1156,'zen_mobile','manufacturers.php',0,0,30,20,1,'product_info');
INSERT INTO layout_boxes VALUES (1154,'zen_mobile','manufacturers.php',0,0,30,20,1,'');
INSERT INTO layout_boxes VALUES (1153,'zen_mobile','manufacturers.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1152,'zen_mobile','manufacturer_info.php',0,1,35,95,1,'shopping_cart');
INSERT INTO layout_boxes VALUES (1151,'zen_mobile','manufacturer_info.php',0,1,35,95,1,'product_list');
INSERT INTO layout_boxes VALUES (1147,'zen_mobile','manufacturer_info.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1150,'zen_mobile','manufacturer_info.php',0,1,35,95,1,'product_info');
INSERT INTO layout_boxes VALUES (1149,'zen_mobile','manufacturer_info.php',0,1,35,95,1,'index');
INSERT INTO layout_boxes VALUES (1148,'zen_mobile','manufacturer_info.php',0,1,35,95,1,'');
INSERT INTO layout_boxes VALUES (1146,'zen_mobile','languages.php',0,1,70,50,1,'shopping_cart');
INSERT INTO layout_boxes VALUES (1145,'zen_mobile','languages.php',0,1,70,50,1,'product_list');
INSERT INTO layout_boxes VALUES (1142,'zen_mobile','languages.php',0,1,70,50,1,'');
INSERT INTO layout_boxes VALUES (1143,'zen_mobile','languages.php',0,1,70,50,1,'index');
INSERT INTO layout_boxes VALUES (1144,'zen_mobile','languages.php',0,1,70,50,1,'product_info');
INSERT INTO layout_boxes VALUES (1141,'zen_mobile','languages.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1140,'zen_mobile','information.php',1,1,10,40,1,'index');
INSERT INTO layout_boxes VALUES (1139,'zen_mobile','information.php',0,1,50,40,1,'shopping_cart');
INSERT INTO layout_boxes VALUES (1138,'zen_mobile','information.php',0,1,50,40,1,'product_info');
INSERT INTO layout_boxes VALUES (1137,'zen_mobile','information.php',0,1,50,40,1,'');
INSERT INTO layout_boxes VALUES (1136,'zen_mobile','information.php',0,1,50,40,0,'product_list');
INSERT INTO layout_boxes VALUES (1133,'zen_mobile','featured.php',0,0,45,0,0,'product_list');
INSERT INTO layout_boxes VALUES (1134,'zen_mobile','featured.php',0,0,45,0,0,'shopping_cart');
INSERT INTO layout_boxes VALUES (1135,'zen_mobile','information.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1127,'zen_mobile','ezpages.php',0,1,-1,2,1,'product_list');
INSERT INTO layout_boxes VALUES (1128,'zen_mobile','ezpages.php',0,1,-1,2,1,'shopping_cart');
INSERT INTO layout_boxes VALUES (1129,'zen_mobile','featured.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1130,'zen_mobile','featured.php',0,0,45,0,0,'');
INSERT INTO layout_boxes VALUES (1131,'zen_mobile','featured.php',0,0,45,0,0,'index');
INSERT INTO layout_boxes VALUES (1132,'zen_mobile','featured.php',0,0,45,0,0,'product_info');
INSERT INTO layout_boxes VALUES (1126,'zen_mobile','ezpages.php',0,1,-1,2,1,'product_info');
INSERT INTO layout_boxes VALUES (1125,'zen_mobile','ezpages.php',0,1,-1,2,1,'index');
INSERT INTO layout_boxes VALUES (1124,'zen_mobile','ezpages.php',0,1,-1,2,1,'');
INSERT INTO layout_boxes VALUES (1123,'zen_mobile','ezpages.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1122,'zen_mobile','document_categories.php',0,0,0,0,0,'shopping_cart');
INSERT INTO layout_boxes VALUES (1121,'zen_mobile','document_categories.php',0,0,0,0,0,'product_list');
INSERT INTO layout_boxes VALUES (1120,'zen_mobile','document_categories.php',0,0,0,0,0,'product_info');
INSERT INTO layout_boxes VALUES (1119,'zen_mobile','document_categories.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1118,'zen_mobile','document_categories.php',0,0,0,0,0,'index');
INSERT INTO layout_boxes VALUES (1117,'zen_mobile','document_categories.php',0,0,0,0,0,'');
INSERT INTO layout_boxes VALUES (1116,'zen_mobile','currencies.php',0,1,80,60,1,'shopping_cart');
INSERT INTO layout_boxes VALUES (1115,'zen_mobile','currencies.php',0,1,80,60,1,'product_list');
INSERT INTO layout_boxes VALUES (1114,'zen_mobile','currencies.php',0,1,80,60,1,'product_info');
INSERT INTO layout_boxes VALUES (1113,'zen_mobile','currencies.php',0,1,80,60,1,'index');
INSERT INTO layout_boxes VALUES (1112,'zen_mobile','currencies.php',0,1,80,60,1,'');
INSERT INTO layout_boxes VALUES (1111,'zen_mobile','currencies.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1110,'zen_mobile','categories.php',1,1,0,10,1,'index');
INSERT INTO layout_boxes VALUES (1108,'zen_mobile','categories.php',0,1,10,10,0,'product_list');
INSERT INTO layout_boxes VALUES (1109,'zen_mobile','categories.php',0,1,10,10,0,'shopping_cart');
INSERT INTO layout_boxes VALUES (1107,'zen_mobile','categories.php',0,1,10,10,0,'product_info');
INSERT INTO layout_boxes VALUES (1105,'zen_mobile','categories.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1106,'zen_mobile','categories.php',0,1,10,10,0,'');
INSERT INTO layout_boxes VALUES (1104,'zen_mobile','best_sellers.php',0,1,8,0,1,'shopping_cart');
INSERT INTO layout_boxes VALUES (1103,'zen_mobile','best_sellers.php',0,1,30,70,1,'product_list');
INSERT INTO layout_boxes VALUES (1102,'zen_mobile','best_sellers.php',0,1,30,70,1,'product_info');
INSERT INTO layout_boxes VALUES (1098,'zen_mobile','banner_box_all.php',0,1,5,0,0,'shopping_cart');
INSERT INTO layout_boxes VALUES (1101,'zen_mobile','best_sellers.php',0,1,30,70,1,'index');
INSERT INTO layout_boxes VALUES (1100,'zen_mobile','best_sellers.php',0,1,30,70,1,'');
INSERT INTO layout_boxes VALUES (1099,'zen_mobile','best_sellers.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1097,'zen_mobile','banner_box_all.php',0,1,5,0,0,'product_list');
INSERT INTO layout_boxes VALUES (1096,'zen_mobile','banner_box_all.php',0,1,5,0,0,'product_info');
INSERT INTO layout_boxes VALUES (1095,'zen_mobile','banner_box_all.php',0,1,5,0,0,'index');
INSERT INTO layout_boxes VALUES (1094,'zen_mobile','banner_box_all.php',0,1,5,0,0,'');
INSERT INTO layout_boxes VALUES (1091,'zen_mobile','banner_box2.php',0,1,15,1,1,'product_list');
INSERT INTO layout_boxes VALUES (1093,'zen_mobile','banner_box_all.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1092,'zen_mobile','banner_box2.php',0,1,15,1,1,'shopping_cart');
INSERT INTO layout_boxes VALUES (1090,'zen_mobile','banner_box2.php',0,1,15,1,1,'product_info');
INSERT INTO layout_boxes VALUES (1089,'zen_mobile','banner_box2.php',0,1,15,1,1,'index');
INSERT INTO layout_boxes VALUES (1088,'zen_mobile','banner_box2.php',0,1,15,1,1,'');
INSERT INTO layout_boxes VALUES (1087,'zen_mobile','banner_box2.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1086,'zen_mobile','banner_box.php',0,0,300,1,1,'shopping_cart');
INSERT INTO layout_boxes VALUES (1085,'zen_mobile','banner_box.php',0,0,300,1,1,'product_list');
INSERT INTO layout_boxes VALUES (1084,'zen_mobile','banner_box.php',0,0,300,1,1,'product_info');
INSERT INTO layout_boxes VALUES (1083,'zen_mobile','banner_box.php',0,0,300,1,1,'index');
INSERT INTO layout_boxes VALUES (1082,'zen_mobile','banner_box.php',0,0,300,1,1,'');
INSERT INTO layout_boxes VALUES (1081,'zen_mobile','banner_box.php',0,0,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1080,'zen_mobile','account_menu.php',1,1,7,0,0,'index');
INSERT INTO layout_boxes VALUES (1079,'zen_mobile','account_menu.php',1,1,30,0,0,'shopping_cart');
INSERT INTO layout_boxes VALUES (1078,'zen_mobile','account_menu.php',1,1,30,0,0,'product_list');
INSERT INTO layout_boxes VALUES (1077,'zen_mobile','account_menu.php',1,1,0,0,0,'product_info');
INSERT INTO layout_boxes VALUES (1076,'zen_mobile','account_menu.php',1,1,0,0,0,'mypage');
INSERT INTO layout_boxes VALUES (1075,'zen_mobile','account_menu.php',0,0,0,0,0,'');

--
-- Table structure for table manufacturers
--

DROP TABLE IF EXISTS manufacturers;
CREATE TABLE manufacturers (
manufacturers_id int(11) NOT NULL auto_increment,
manufacturers_name varchar(32) NOT NULL default '',
manufacturers_image varchar(64) default NULL,
date_added datetime default NULL,
last_modified datetime default NULL,
PRIMARY KEY  (manufacturers_id),
KEY idx_mfg_name_zen (manufacturers_name)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=ujis;

--
-- Dumping data for table manufacturers
--


--
-- Table structure for table manufacturers_info
--

DROP TABLE IF EXISTS manufacturers_info;
CREATE TABLE manufacturers_info (
manufacturers_id int(11) NOT NULL default '0',
languages_id int(11) NOT NULL default '0',
manufacturers_url varchar(255) NOT NULL default '',
url_clicked int(5) NOT NULL default '0',
date_last_click datetime default NULL,
manufacturers_name varchar(32) NOT NULL default '',
PRIMARY KEY  (manufacturers_id,languages_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table manufacturers_info
--


--
-- Table structure for table media_clips
--

DROP TABLE IF EXISTS media_clips;
CREATE TABLE media_clips (
clip_id int(11) NOT NULL auto_increment,
media_id int(11) NOT NULL default '0',
clip_type smallint(6) NOT NULL default '0',
clip_filename text NOT NULL,
date_added datetime NOT NULL default '0001-01-01 00:00:00',
last_modified datetime NOT NULL default '0001-01-01 00:00:00',
PRIMARY KEY  (clip_id),
KEY idx_media_id_zen (media_id)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=ujis;

--
-- Dumping data for table media_clips
--


--
-- Table structure for table media_manager
--

DROP TABLE IF EXISTS media_manager;
CREATE TABLE media_manager (
media_id int(11) NOT NULL auto_increment,
media_name varchar(255) NOT NULL default '',
last_modified datetime NOT NULL default '0001-01-01 00:00:00',
date_added datetime NOT NULL default '0001-01-01 00:00:00',
PRIMARY KEY  (media_id)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ujis;

--
-- Dumping data for table media_manager
--


--
-- Table structure for table media_to_products
--

DROP TABLE IF EXISTS media_to_products;
CREATE TABLE media_to_products (
media_id int(11) NOT NULL default '0',
product_id int(11) NOT NULL default '0',
KEY idx_media_product_zen (media_id,product_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table media_to_products
--


--
-- Table structure for table media_types
--

DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types (
type_id int(11) NOT NULL auto_increment,
type_name varchar(64) NOT NULL default '',
type_ext varchar(8) NOT NULL default '',
PRIMARY KEY  (type_id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table media_types
--

INSERT INTO media_types VALUES (1,'MP3','.mp3');

--
-- Table structure for table meta_tags_categories_description
--

DROP TABLE IF EXISTS meta_tags_categories_description;
CREATE TABLE meta_tags_categories_description (
categories_id int(11) NOT NULL auto_increment,
language_id int(11) NOT NULL default '1',
metatags_title varchar(255) NOT NULL default '',
metatags_keywords text,
metatags_description text,
PRIMARY KEY  (categories_id,language_id)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=ujis;

--
-- Dumping data for table meta_tags_categories_description
--


--
-- Table structure for table meta_tags_products_description
--

DROP TABLE IF EXISTS meta_tags_products_description;
CREATE TABLE meta_tags_products_description (
products_id int(11) NOT NULL auto_increment,
language_id int(11) NOT NULL default '1',
metatags_title varchar(255) NOT NULL default '',
metatags_keywords text,
metatags_description text,
PRIMARY KEY  (products_id,language_id)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=ujis;

--
-- Dumping data for table meta_tags_products_description
--


--
-- Table structure for table music_genre
--

DROP TABLE IF EXISTS music_genre;
CREATE TABLE music_genre (
music_genre_id int(11) NOT NULL auto_increment,
music_genre_name varchar(32) NOT NULL default '',
date_added datetime default NULL,
last_modified datetime default NULL,
PRIMARY KEY  (music_genre_id),
KEY idx_music_genre_name_zen (music_genre_name)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ujis;

--
-- Dumping data for table music_genre
--


--
-- Table structure for table newsletters
--

DROP TABLE IF EXISTS newsletters;
CREATE TABLE newsletters (
newsletters_id int(11) NOT NULL auto_increment,
title varchar(255) NOT NULL default '',
content text NOT NULL,
content_html text NOT NULL,
module varchar(255) NOT NULL default '',
date_added datetime NOT NULL default '0001-01-01 00:00:00',
date_sent datetime default NULL,
status int(1) default NULL,
locked int(1) default '0',
PRIMARY KEY  (newsletters_id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table newsletters
--


--
-- Table structure for table orders
--

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
orders_id int(11) NOT NULL auto_increment,
customers_id int(11) NOT NULL default '0',
customers_name varchar(64) NOT NULL default '',
customers_company varchar(32) default NULL,
customers_street_address varchar(64) NOT NULL default '',
customers_suburb varchar(32) default NULL,
customers_city varchar(32) NOT NULL default '',
customers_postcode varchar(10) NOT NULL default '',
customers_state varchar(32) default NULL,
customers_country varchar(32) NOT NULL default '',
customers_telephone varchar(32) default NULL,
customers_email_address varchar(96) NOT NULL default '',
customers_address_format_id int(5) NOT NULL default '0',
delivery_name varchar(64) NOT NULL default '',
delivery_company varchar(32) default NULL,
delivery_street_address varchar(64) NOT NULL default '',
delivery_suburb varchar(32) default NULL,
delivery_city varchar(32) NOT NULL default '',
delivery_postcode varchar(10) NOT NULL default '',
delivery_state varchar(32) default NULL,
delivery_country varchar(32) NOT NULL default '',
delivery_address_format_id int(5) NOT NULL default '0',
billing_name varchar(64) NOT NULL default '',
billing_company varchar(32) default NULL,
billing_street_address varchar(64) NOT NULL default '',
billing_suburb varchar(32) default NULL,
billing_city varchar(32) NOT NULL default '',
billing_postcode varchar(10) NOT NULL default '',
billing_state varchar(32) default NULL,
billing_country varchar(32) NOT NULL default '',
billing_address_format_id int(5) NOT NULL default '0',
payment_method varchar(128) NOT NULL default '',
payment_module_code varchar(32) NOT NULL default '',
shipping_method varchar(128) NOT NULL default '',
shipping_module_code varchar(32) NOT NULL default '',
coupon_code varchar(32) NOT NULL default '',
cc_type varchar(20) default NULL,
cc_owner varchar(64) default NULL,
cc_number varchar(32) default NULL,
cc_expires varchar(4) default NULL,
cc_cvv blob,
last_modified datetime default NULL,
date_purchased datetime default NULL,
orders_status int(5) NOT NULL default '0',
orders_date_finished datetime default NULL,
currency varchar(3) default NULL,
currency_value decimal(14,6) default NULL,
order_total decimal(14,2) default NULL,
order_tax decimal(14,2) default NULL,
paypal_ipn_id int(11) NOT NULL default '0',
ip_address varchar(96) NOT NULL default '',
delivery_telephone varchar(32) default NULL,
delivery_fax varchar(32) default NULL,
billing_telephone varchar(32) default NULL,
billing_fax varchar(32) default NULL,
customers_fax varchar(32) default NULL,
customers_name_kana varchar(64) NOT NULL default '',
delivery_name_kana varchar(64) NOT NULL default '',
billing_name_kana varchar(64) NOT NULL default '',
date_completed datetime default NULL,
date_cancelled datetime default NULL,
balance_due decimal(14,2) default NULL,
PRIMARY KEY  (orders_id),
KEY idx_status_orders_cust_zen (orders_status,orders_id,customers_id)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=ujis;

--
-- Dumping data for table orders
--


--
-- Table structure for table orders_products
--

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
orders_products_id int(11) NOT NULL auto_increment,
orders_id int(11) NOT NULL default '0',
products_id int(11) NOT NULL default '0',
products_model varchar(32) default NULL,
products_name varchar(64) NOT NULL default '',
products_price decimal(15,4) NOT NULL default '0.0000',
final_price decimal(15,4) NOT NULL default '0.0000',
products_tax decimal(7,4) NOT NULL default '0.0000',
products_quantity float NOT NULL default '0',
onetime_charges decimal(15,4) NOT NULL default '0.0000',
products_priced_by_attribute tinyint(1) NOT NULL default '0',
product_is_free tinyint(1) NOT NULL default '0',
products_discount_type tinyint(1) NOT NULL default '0',
products_discount_type_from tinyint(1) NOT NULL default '0',
products_prid tinytext NOT NULL,
PRIMARY KEY  (orders_products_id),
KEY idx_orders_id_prod_id_zen (orders_id,products_id)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=ujis;

--
-- Dumping data for table orders_products
--


--
-- Table structure for table orders_products_attributes
--

DROP TABLE IF EXISTS orders_products_attributes;
CREATE TABLE orders_products_attributes (
orders_products_attributes_id int(11) NOT NULL auto_increment,
orders_id int(11) NOT NULL default '0',
orders_products_id int(11) NOT NULL default '0',
products_options varchar(32) NOT NULL default '',
products_options_values blob NOT NULL,
options_values_price decimal(15,4) NOT NULL default '0.0000',
price_prefix char(1) NOT NULL default '',
product_attribute_is_free tinyint(1) NOT NULL default '0',
products_attributes_weight float NOT NULL default '0',
products_attributes_weight_prefix char(1) NOT NULL default '',
attributes_discounted tinyint(1) NOT NULL default '1',
attributes_price_base_included tinyint(1) NOT NULL default '1',
attributes_price_onetime decimal(15,4) NOT NULL default '0.0000',
attributes_price_factor decimal(15,4) NOT NULL default '0.0000',
attributes_price_factor_offset decimal(15,4) NOT NULL default '0.0000',
attributes_price_factor_onetime decimal(15,4) NOT NULL default '0.0000',
attributes_price_factor_onetime_offset decimal(15,4) NOT NULL default '0.0000',
attributes_qty_prices text,
attributes_qty_prices_onetime text,
attributes_price_words decimal(15,4) NOT NULL default '0.0000',
attributes_price_words_free int(4) NOT NULL default '0',
attributes_price_letters decimal(15,4) NOT NULL default '0.0000',
attributes_price_letters_free int(4) NOT NULL default '0',
products_options_id int(11) NOT NULL default '0',
products_options_values_id int(11) NOT NULL default '0',
products_prid tinytext NOT NULL,
PRIMARY KEY  (orders_products_attributes_id),
KEY idx_orders_id_prod_id_zen (orders_id,orders_products_id)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=ujis;

--
-- Dumping data for table orders_products_attributes
--


--
-- Table structure for table orders_products_download
--

DROP TABLE IF EXISTS orders_products_download;
CREATE TABLE orders_products_download (
orders_products_download_id int(11) NOT NULL auto_increment,
orders_id int(11) NOT NULL default '0',
orders_products_id int(11) NOT NULL default '0',
orders_products_filename varchar(255) NOT NULL default '',
download_maxdays int(2) NOT NULL default '0',
download_count int(2) NOT NULL default '0',
products_prid tinytext NOT NULL,
PRIMARY KEY  (orders_products_download_id),
KEY idx_orders_id_zen (orders_id),
KEY idx_orders_products_id_zen (orders_products_id)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=ujis;

--
-- Dumping data for table orders_products_download
--


--
-- Table structure for table orders_status
--

DROP TABLE IF EXISTS orders_status;
CREATE TABLE orders_status (
orders_status_id int(11) NOT NULL default '0',
language_id int(11) NOT NULL default '1',
orders_status_name varchar(32) NOT NULL default '',
PRIMARY KEY  (orders_status_id,language_id),
KEY idx_orders_status_name_zen (orders_status_name)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table orders_status
--

INSERT INTO orders_status VALUES (1,1,'Pending');
INSERT INTO orders_status VALUES (2,1,'Processing');
INSERT INTO orders_status VALUES (3,1,'Delivered');
INSERT INTO orders_status VALUES (4,1,'Update');
INSERT INTO orders_status VALUES (1,2,'�����Ԥ�');
INSERT INTO orders_status VALUES (2,2,'������');
INSERT INTO orders_status VALUES (3,2,'�����Ѥ�');
INSERT INTO orders_status VALUES (4,2,'����');
INSERT INTO orders_status VALUES (4,9,'����');
INSERT INTO orders_status VALUES (1,9,'�����Ԥ�');
INSERT INTO orders_status VALUES (3,9,'�����Ѥ�');
INSERT INTO orders_status VALUES (2,9,'������');

--
-- Table structure for table orders_status_history
--

DROP TABLE IF EXISTS orders_status_history;
CREATE TABLE orders_status_history (
orders_status_history_id int(11) NOT NULL auto_increment,
orders_id int(11) NOT NULL default '0',
orders_status_id int(5) NOT NULL default '0',
date_added datetime NOT NULL default '0001-01-01 00:00:00',
customer_notified int(1) default '0',
comments text,
PRIMARY KEY  (orders_status_history_id),
KEY idx_orders_id_status_id_zen (orders_id,orders_status_id)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=ujis;

--
-- Dumping data for table orders_status_history
--


--
-- Table structure for table orders_total
--

DROP TABLE IF EXISTS orders_total;
CREATE TABLE orders_total (
orders_total_id int(10) unsigned NOT NULL auto_increment,
orders_id int(11) NOT NULL default '0',
title varchar(255) NOT NULL default '',
text varchar(255) NOT NULL default '',
value decimal(15,4) NOT NULL default '0.0000',
class varchar(32) NOT NULL default '',
sort_order int(11) NOT NULL default '0',
PRIMARY KEY  (orders_total_id),
KEY idx_ot_orders_id_zen (orders_id),
KEY idx_ot_class_zen (class)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=ujis;

--
-- Dumping data for table orders_total
--


--
-- Table structure for table paypal
--

DROP TABLE IF EXISTS paypal;
CREATE TABLE paypal (
paypal_ipn_id int(11) unsigned NOT NULL auto_increment,
zen_order_id int(11) unsigned NOT NULL default '0',
txn_type varchar(10) NOT NULL default '',
reason_code varchar(15) default NULL,
payment_type varchar(7) NOT NULL default '',
payment_status varchar(17) NOT NULL default '',
pending_reason varchar(14) default NULL,
invoice varchar(64) default NULL,
mc_currency varchar(3) NOT NULL default '',
first_name varchar(32) NOT NULL default '',
last_name varchar(32) NOT NULL default '',
payer_business_name varchar(64) default NULL,
address_name varchar(32) default NULL,
address_street varchar(64) default NULL,
address_city varchar(32) default NULL,
address_state varchar(32) default NULL,
address_zip varchar(10) default NULL,
address_country varchar(64) default NULL,
address_status varchar(11) default NULL,
payer_email varchar(96) NOT NULL default '',
payer_id varchar(32) NOT NULL default '',
payer_status varchar(10) NOT NULL default '',
payment_date datetime NOT NULL default '0001-01-01 00:00:00',
business varchar(96) NOT NULL default '',
receiver_email varchar(96) NOT NULL default '',
receiver_id varchar(32) NOT NULL default '',
txn_id varchar(17) NOT NULL default '',
parent_txn_id varchar(17) default NULL,
num_cart_items tinyint(4) unsigned NOT NULL default '1',
mc_gross decimal(7,2) NOT NULL default '0.00',
mc_fee decimal(7,2) NOT NULL default '0.00',
payment_gross decimal(7,2) default NULL,
payment_fee decimal(7,2) default NULL,
settle_amount decimal(7,2) default NULL,
settle_currency varchar(3) default NULL,
exchange_rate decimal(4,2) default NULL,
notify_version decimal(2,1) NOT NULL default '0.0',
verify_sign varchar(128) NOT NULL default '',
last_modified datetime NOT NULL default '0001-01-01 00:00:00',
date_added datetime NOT NULL default '0001-01-01 00:00:00',
memo text,
PRIMARY KEY  (paypal_ipn_id,txn_id),
KEY idx_zen_order_id_zen (zen_order_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table paypal
--


--
-- Table structure for table paypal_payment_status
--

DROP TABLE IF EXISTS paypal_payment_status;
CREATE TABLE paypal_payment_status (
payment_status_id int(11) NOT NULL auto_increment,
payment_status_name varchar(64) NOT NULL default '',
PRIMARY KEY  (payment_status_id)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=ujis;

--
-- Dumping data for table paypal_payment_status
--

INSERT INTO paypal_payment_status VALUES (1,'Completed');
INSERT INTO paypal_payment_status VALUES (2,'Pending');
INSERT INTO paypal_payment_status VALUES (3,'Failed');
INSERT INTO paypal_payment_status VALUES (4,'Denied');
INSERT INTO paypal_payment_status VALUES (5,'Refunded');
INSERT INTO paypal_payment_status VALUES (6,'Canceled_Reversal');
INSERT INTO paypal_payment_status VALUES (7,'Reversed');

--
-- Table structure for table paypal_payment_status_history
--

DROP TABLE IF EXISTS paypal_payment_status_history;
CREATE TABLE paypal_payment_status_history (
payment_status_history_id int(11) NOT NULL auto_increment,
paypal_ipn_id int(11) NOT NULL default '0',
txn_id varchar(64) NOT NULL default '',
parent_txn_id varchar(64) NOT NULL default '',
payment_status varchar(17) NOT NULL default '',
pending_reason varchar(14) default NULL,
date_added datetime NOT NULL default '0001-01-01 00:00:00',
PRIMARY KEY  (payment_status_history_id),
KEY idx_paypal_ipn_id_zen (paypal_ipn_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table paypal_payment_status_history
--


--
-- Table structure for table paypal_session
--

DROP TABLE IF EXISTS paypal_session;
CREATE TABLE paypal_session (
unique_id int(11) NOT NULL auto_increment,
session_id text NOT NULL,
saved_session blob NOT NULL,
expiry int(17) NOT NULL default '0',
PRIMARY KEY  (unique_id),
KEY idx_session_id_zen (session_id(36))
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table paypal_session
--


--
-- Table structure for table paypal_testing
--

DROP TABLE IF EXISTS paypal_testing;
CREATE TABLE paypal_testing (
paypal_ipn_id int(11) unsigned NOT NULL auto_increment,
zen_order_id int(11) unsigned NOT NULL default '0',
custom varchar(255) NOT NULL default '',
txn_type varchar(10) NOT NULL default '',
reason_code varchar(15) default NULL,
payment_type varchar(7) NOT NULL default '',
payment_status varchar(17) NOT NULL default '',
pending_reason varchar(14) default NULL,
invoice varchar(64) default NULL,
mc_currency varchar(3) NOT NULL default '',
first_name varchar(32) NOT NULL default '',
last_name varchar(32) NOT NULL default '',
payer_business_name varchar(64) default NULL,
address_name varchar(32) default NULL,
address_street varchar(64) default NULL,
address_city varchar(32) default NULL,
address_state varchar(32) default NULL,
address_zip varchar(10) default NULL,
address_country varchar(64) default NULL,
address_status varchar(11) default NULL,
payer_email varchar(96) NOT NULL default '',
payer_id varchar(32) NOT NULL default '',
payer_status varchar(10) NOT NULL default '',
payment_date datetime NOT NULL default '0001-01-01 00:00:00',
business varchar(96) NOT NULL default '',
receiver_email varchar(96) NOT NULL default '',
receiver_id varchar(32) NOT NULL default '',
txn_id varchar(17) NOT NULL default '',
parent_txn_id varchar(17) default NULL,
num_cart_items tinyint(4) unsigned NOT NULL default '1',
mc_gross decimal(7,2) NOT NULL default '0.00',
mc_fee decimal(7,2) NOT NULL default '0.00',
payment_gross decimal(7,2) default NULL,
payment_fee decimal(7,2) default NULL,
settle_amount decimal(7,2) default NULL,
settle_currency varchar(3) default NULL,
exchange_rate decimal(4,2) default NULL,
notify_version decimal(2,1) NOT NULL default '0.0',
verify_sign varchar(128) NOT NULL default '',
last_modified datetime NOT NULL default '0001-01-01 00:00:00',
date_added datetime NOT NULL default '0001-01-01 00:00:00',
memo text,
PRIMARY KEY  (paypal_ipn_id,txn_id),
KEY idx_zen_order_id_zen (zen_order_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table paypal_testing
--


--
-- Table structure for table point_histories
--

DROP TABLE IF EXISTS point_histories;
CREATE TABLE point_histories (
id int(11) NOT NULL auto_increment,
customers_id int(11) NOT NULL default '0',
related_id_name varchar(64) NOT NULL default '',
related_id_value int(11) NOT NULL default '0',
deposit int(11) NOT NULL default '0',
withdraw int(11) NOT NULL default '0',
pending int(11) NOT NULL default '0',
description varchar(255) NOT NULL default '',
class varchar(64) NOT NULL default '',
created_at datetime NOT NULL default '0000-00-00 00:00:00',
updated_at datetime default NULL,
status tinyint(1) NOT NULL default '1',
PRIMARY KEY  (id),
KEY IDX_customers_id_status (customers_id,status)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=ujis;

--
-- Dumping data for table point_histories
--


--
-- Table structure for table product_music_extra
--

DROP TABLE IF EXISTS product_music_extra;
CREATE TABLE product_music_extra (
products_id int(11) NOT NULL default '0',
artists_id int(11) NOT NULL default '0',
record_company_id int(11) NOT NULL default '0',
music_genre_id int(11) NOT NULL default '0',
PRIMARY KEY  (products_id),
KEY idx_music_genre_id_zen (music_genre_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table product_music_extra
--


--
-- Table structure for table product_type_layout
--

DROP TABLE IF EXISTS product_type_layout;
CREATE TABLE product_type_layout (
configuration_id int(11) NOT NULL auto_increment,
configuration_title text NOT NULL,
configuration_key varchar(255) NOT NULL default '',
configuration_value text NOT NULL,
configuration_description text NOT NULL,
product_type_id int(11) NOT NULL default '0',
sort_order int(5) default NULL,
last_modified datetime default NULL,
date_added datetime NOT NULL default '0001-01-01 00:00:00',
use_function text,
set_function text,
PRIMARY KEY  (configuration_id),
UNIQUE KEY unq_config_key_zen (configuration_key),
KEY idx_key_value_zen (configuration_key,configuration_value(10))
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=ujis;

--
-- Dumping data for table product_type_layout
--

INSERT INTO product_type_layout VALUES (1,'����ɽ��','SHOW_PRODUCT_INFO_MODEL','1','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',1,1,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (2,'����ɽ��','SHOW_PRODUCT_INFO_WEIGHT','1','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',1,2,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (3,'���ץ�������ɽ��','SHOW_PRODUCT_INFO_WEIGHT_ATTRIBUTES','1','���ʾ���ǥ��ץ����ν��̤�ɽ�����롣 0= off 1= on',1,3,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (4,'�᡼������ɽ��','SHOW_PRODUCT_INFO_MANUFACTURER','1','���ʥڡ����ˡ��᡼����̾��ɽ�����ޤ�����0= off 1= on',1,4,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (5,'��������ο���ɽ��','SHOW_PRODUCT_INFO_IN_CART_QTY','1','���ʾ���ǥ�������ο��̤�ɽ�����롣 0= off 1= on',1,5,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (6,'�߸˿�ɽ��','SHOW_PRODUCT_INFO_QUANTITY','1','���ʾ���Ǻ߸˿���ɽ�����롣 0= off 1= on',1,6,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (7,'��ӥ塼��ɽ��','SHOW_PRODUCT_INFO_REVIEWS_COUNT','1','���ʾ���ǥ�ӥ塼����ɽ������ 0= off 1= on',1,7,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (8,'��ӥ塼�ܥ���ɽ��','SHOW_PRODUCT_INFO_REVIEWS','1','���ʾ���ǥ�ӥ塼�ܥ����ɽ������ 0= off 1= on',1,8,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (9,'������ǽ�ˤʤä����դ�ɽ��','SHOW_PRODUCT_INFO_DATE_AVAILABLE','1','���ʾ���Ǿ��ʤ�������ǽ�ˤʤä����դ�ɽ�����롣 0= off 1= on',1,9,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (10,'��Ͽ��ɽ��','SHOW_PRODUCT_INFO_DATE_ADDED','1','���ʾ���Ǿ��ʤ���Ͽ���줿���դ�ɽ�����ޤ��� 0= off 1= on',1,10,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (11,'����URLɽ��','SHOW_PRODUCT_INFO_URL','1','���ʾ���Ǿ��ʤ�URL��ɽ������ 0= off 1= on',1,11,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (12,'Show Product Additional Images','SHOW_PRODUCT_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',1,13,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (13,'�١������ʤ�ɽ��','SHOW_PRODUCT_INFO_STARTING_AT','1','���ʥڡ����ˡ��١������ʤ�ɽ�����ޤ�����0= off 1= on',1,12,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (14,'��ͧã���Τ餻��ץܥ���ɽ��','SHOW_PRODUCT_INFO_TELL_A_FRIEND','1','���ʾ���ǡ�ͧã���Τ餻��ץܥ����ɽ�����롣<br /><br />Note: ���������off�ˤ��Ƥ⥵���ɥܥå����Ρ�ͧã���Τ餻��פϾä��ޤ��󡣤ޤ��������ɥܥå����Ρ�ͧã���Τ餻��פ�off�ˤ��Ƥ⤳�Υܥ���ɽ��������˱ƶ��Ϥ���ޤ���<br />0= off 1= on',1,15,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (15,'����̵���β������ơ����� - ������','SHOW_PRODUCT_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH','0','�������������̵���β���/�ƥ����Ȥ�ɽ�����ޤ�����',1,16,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (16,'�Ǽ��̤Υǥե���� - �������ɲû�','DEFAULT_PRODUCT_TAX_CLASS_ID','0','�����ʤ��ɲä�����Ρ��Ǽ��̤Υǥե����ID�����Ϥ��Ƥ���������',1,100,NULL,'2009-11-19 12:39:40','','');
INSERT INTO product_type_layout VALUES (17,'����������뾦�ʤΥǥե���ȥ��ơ����� - �������ɲû�','DEFAULT_PRODUCT_PRODUCTS_VIRTUAL','0','�����ʤ��ɲä�����Ρ�����������뾦�ʤΥǥե���ȥ��ơ�������ON�ˤ��ޤ�����',1,101,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (18,'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?','DEFAULT_PRODUCT_PRODUCTS_IS_ALWAYS_FREE_SHIPPING','0','What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping',1,102,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), ');
INSERT INTO product_type_layout VALUES (19,'����ɽ��','SHOW_PRODUCT_MUSIC_INFO_MODEL','1','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',2,1,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (20,'����ɽ��','SHOW_PRODUCT_MUSIC_INFO_WEIGHT','0','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',2,2,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (21,'���ץ�������ɽ��','SHOW_PRODUCT_MUSIC_INFO_WEIGHT_ATTRIBUTES','1','���ʾ���ǥ��ץ����ν��̤�ɽ�����롣 0= off 1= on',2,3,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (22,'�����ƥ����Ȥ�ɽ��','SHOW_PRODUCT_MUSIC_INFO_ARTIST','1','���ʥڡ����ˡ������ƥ�����̾��ɽ�����ޤ�����0= off 1= on',2,4,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (23,'���ڥ������ɽ��','SHOW_PRODUCT_MUSIC_INFO_GENRE','1','���ʥڡ����ˡ����ڥ������ɽ�����ޤ�����0= off 1= on',2,4,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (24,'�쥳���ɲ�Ҥ�ɽ��','SHOW_PRODUCT_MUSIC_INFO_RECORD_COMPANY','1','���ʥڡ����ˡ��쥳���ɲ�Ҥ�ɽ�����ޤ�����0= off 1= on',2,4,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (25,'��������ο���ɽ��','SHOW_PRODUCT_MUSIC_INFO_IN_CART_QTY','1','���ʾ���ǥ�������ο��̤�ɽ�����롣 0= off 1= on',2,5,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (26,'�߸˿�ɽ��','SHOW_PRODUCT_MUSIC_INFO_QUANTITY','0','���ʾ���Ǻ߸˿���ɽ�����롣 0= off 1= on',2,6,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (27,'��ӥ塼��ɽ��','SHOW_PRODUCT_MUSIC_INFO_REVIEWS_COUNT','1','���ʾ���ǥ�ӥ塼����ɽ������ 0= off 1= on',2,7,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (28,'��ӥ塼�ܥ���ɽ��','SHOW_PRODUCT_MUSIC_INFO_REVIEWS','1','���ʾ���ǥ�ӥ塼�ܥ����ɽ������ 0= off 1= on',2,8,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (29,'������ǽ�ˤʤä����դ�ɽ��','SHOW_PRODUCT_MUSIC_INFO_DATE_AVAILABLE','1','���ʾ���Ǿ��ʤ�������ǽ�ˤʤä����դ�ɽ�����롣 0= off 1= on',2,9,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (30,'��Ͽ��ɽ��','SHOW_PRODUCT_MUSIC_INFO_DATE_ADDED','1','���ʾ���Ǿ��ʤ���Ͽ���줿���դ�ɽ�����ޤ��� 0= off 1= on',2,10,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (31,'�١������ʤ�ɽ��','SHOW_PRODUCT_MUSIC_INFO_STARTING_AT','1','���ʥڡ����ˡ��١������ʤ�ɽ�����ޤ�����0= off 1= on',2,12,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (32,'Show Product Additional Images','SHOW_PRODUCT_MUSIC_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',2,13,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (33,'��ͧã���Τ餻��ץܥ���ɽ��','SHOW_PRODUCT_MUSIC_INFO_TELL_A_FRIEND','1','���ʾ���ǡ�ͧã���Τ餻��ץܥ����ɽ�����롣<br /><br />Note: ���������off�ˤ��Ƥ⥵���ɥܥå����Ρ�ͧã���Τ餻��פϾä��ޤ��󡣤ޤ��������ɥܥå����Ρ�ͧã���Τ餻��פ�off�ˤ��Ƥ⤳�Υܥ���ɽ��������˱ƶ��Ϥ���ޤ���<br />0= off 1= on',2,15,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (34,'����̵���β������ơ����� - ������','SHOW_PRODUCT_MUSIC_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH','0','�������������̵���β���/�ƥ����Ȥ�ɽ�����ޤ�����',2,16,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (35,'�Ǽ��̤Υǥե���� - �������ɲû�','DEFAULT_PRODUCT_MUSIC_TAX_CLASS_ID','0','�����ʤ��ɲä�����Ρ��Ǽ��̤Υǥե����ID�����Ϥ��Ƥ���������',2,100,NULL,'2009-11-19 12:39:40','','');
INSERT INTO product_type_layout VALUES (36,'����������뾦�ʤΥǥե���ȥ��ơ����� - �������ɲû�','DEFAULT_PRODUCT_MUSIC_PRODUCTS_VIRTUAL','0','�����ʤ��ɲä�����Ρ�����������뾦�ʤΥǥե���ȥ��ơ�������ON�ˤ��ޤ�����',2,101,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (37,'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?','DEFAULT_PRODUCT_MUSIC_PRODUCTS_IS_ALWAYS_FREE_SHIPPING','0','What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping',2,102,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), ');
INSERT INTO product_type_layout VALUES (38,'��ӥ塼��ɽ��','SHOW_DOCUMENT_GENERAL_INFO_REVIEWS_COUNT','1','���ʾ���ǥ�ӥ塼����ɽ������ 0= off 1= on',3,7,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (39,'��ӥ塼�ܥ���ɽ��','SHOW_DOCUMENT_GENERAL_INFO_REVIEWS','1','���ʾ���ǥ�ӥ塼�ܥ����ɽ������ 0= off 1= on',3,8,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (40,'������ǽ�ˤʤä����դ�ɽ��','SHOW_DOCUMENT_GENERAL_INFO_DATE_AVAILABLE','1','���ʾ���Ǿ��ʤ�������ǽ�ˤʤä����դ�ɽ�����롣 0= off 1= on',3,9,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (41,'��Ͽ��ɽ��','SHOW_DOCUMENT_GENERAL_INFO_DATE_ADDED','1','���ʾ���Ǿ��ʤ���Ͽ���줿���դ�ɽ�����ޤ��� 0= off 1= on',3,10,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (42,'��ͧã���Τ餻��ץܥ���ɽ��','SHOW_DOCUMENT_GENERAL_INFO_TELL_A_FRIEND','1','���ʾ���ǡ�ͧã���Τ餻��ץܥ����ɽ�����롣<br /><br />Note: ���������off�ˤ��Ƥ⥵���ɥܥå����Ρ�ͧã���Τ餻��פϾä��ޤ��󡣤ޤ��������ɥܥå����Ρ�ͧã���Τ餻��פ�off�ˤ��Ƥ⤳�Υܥ���ɽ��������˱ƶ��Ϥ���ޤ���<br />0= off 1= on',3,15,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (43,'����URLɽ��','SHOW_DOCUMENT_GENERAL_INFO_URL','1','���ʾ���Ǿ��ʤ�URL��ɽ������ 0= off 1= on',3,11,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (44,'Show Product Additional Images','SHOW_DOCUMENT_GENERAL_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',3,13,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (45,'����ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_MODEL','1','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',4,1,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (46,'����ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_WEIGHT','0','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',4,2,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (47,'���ץ�������ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_WEIGHT_ATTRIBUTES','1','���ʾ���ǥ��ץ����ν��̤�ɽ�����롣 0= off 1= on',4,3,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (48,'�᡼������ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_MANUFACTURER','1','���ʥڡ����ˡ��᡼����̾��ɽ�����ޤ�����0= off 1= on',4,4,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (49,'��������ο���ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_IN_CART_QTY','1','���ʾ���ǥ�������ο��̤�ɽ�����롣 0= off 1= on',4,5,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (50,'�߸˿�ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_QUANTITY','0','���ʾ���Ǻ߸˿���ɽ�����롣 0= off 1= on',4,6,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (51,'��ӥ塼��ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_REVIEWS_COUNT','1','���ʾ���ǥ�ӥ塼����ɽ������ 0= off 1= on',4,7,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (52,'��ӥ塼�ܥ���ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_REVIEWS','1','���ʾ���ǥ�ӥ塼�ܥ����ɽ������ 0= off 1= on',4,8,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (53,'������ǽ�ˤʤä����դ�ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_DATE_AVAILABLE','1','���ʾ���Ǿ��ʤ�������ǽ�ˤʤä����դ�ɽ�����롣 0= off 1= on',4,9,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (54,'��Ͽ��ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_DATE_ADDED','1','���ʾ���Ǿ��ʤ���Ͽ���줿���դ�ɽ�����ޤ��� 0= off 1= on',4,10,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (55,'����URLɽ��','SHOW_DOCUMENT_PRODUCT_INFO_URL','1','���ʾ���Ǿ��ʤ�URL��ɽ������ 0= off 1= on',4,11,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (56,'Show Product Additional Images','SHOW_DOCUMENT_PRODUCT_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',4,13,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (57,'�١������ʤ�ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_STARTING_AT','1','���ʥڡ����ˡ��١������ʤ�ɽ�����ޤ�����0= off 1= on',4,12,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (58,'��ͧã���Τ餻��ץܥ���ɽ��','SHOW_DOCUMENT_PRODUCT_INFO_TELL_A_FRIEND','1','���ʾ���ǡ�ͧã���Τ餻��ץܥ����ɽ�����롣<br /><br />Note: ���������off�ˤ��Ƥ⥵���ɥܥå����Ρ�ͧã���Τ餻��פϾä��ޤ��󡣤ޤ��������ɥܥå����Ρ�ͧã���Τ餻��פ�off�ˤ��Ƥ⤳�Υܥ���ɽ��������˱ƶ��Ϥ���ޤ���<br />0= off 1= on',4,15,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (59,'����̵���β������ơ����� - ������','SHOW_DOCUMENT_PRODUCT_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH','0','�������������̵���β���/�ƥ����Ȥ�ɽ�����ޤ�����',4,16,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (60,'�Ǽ��̤Υǥե���� - �������ɲû�','DEFAULT_DOCUMENT_PRODUCT_TAX_CLASS_ID','0','�����ʤ��ɲä�����Ρ��Ǽ��̤Υǥե����ID�����Ϥ��Ƥ���������',4,100,NULL,'2009-11-19 12:39:40','','');
INSERT INTO product_type_layout VALUES (61,'����������뾦�ʤΥǥե���ȥ��ơ����� - �������ɲû�','DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_VIRTUAL','0','�����ʤ��ɲä�����Ρ�����������뾦�ʤΥǥե���ȥ��ơ�������ON�ˤ��ޤ�����',4,101,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (62,'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?','DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_IS_ALWAYS_FREE_SHIPPING','0','What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping',4,102,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), ');
INSERT INTO product_type_layout VALUES (63,'����ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_MODEL','1','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',5,1,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (64,'����ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_WEIGHT','0','���ʾ���Ƿ��֤�ɽ������ 0= off 1= on',5,2,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (65,'���ץ�������ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_WEIGHT_ATTRIBUTES','1','���ʾ���ǥ��ץ����ν��̤�ɽ�����롣 0= off 1= on',5,3,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (66,'�᡼������ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_MANUFACTURER','1','���ʥڡ����ˡ��᡼����̾��ɽ�����ޤ�����0= off 1= on',5,4,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (67,'��������ο���ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_IN_CART_QTY','1','���ʾ���ǥ�������ο��̤�ɽ�����롣 0= off 1= on',5,5,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (68,'�߸˿�ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_QUANTITY','1','���ʾ���Ǻ߸˿���ɽ�����롣 0= off 1= on',5,6,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (69,'��ӥ塼��ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_REVIEWS_COUNT','1','���ʾ���ǥ�ӥ塼����ɽ������ 0= off 1= on',5,7,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (70,'��ӥ塼�ܥ���ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_REVIEWS','1','���ʾ���ǥ�ӥ塼�ܥ����ɽ������ 0= off 1= on',5,8,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (71,'������ǽ�ˤʤä����դ�ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_DATE_AVAILABLE','0','���ʾ���Ǿ��ʤ�������ǽ�ˤʤä����դ�ɽ�����롣 0= off 1= on',5,9,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (72,'��Ͽ��ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_DATE_ADDED','1','���ʾ���Ǿ��ʤ���Ͽ���줿���դ�ɽ�����ޤ��� 0= off 1= on',5,10,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (73,'����URLɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_URL','1','���ʾ���Ǿ��ʤ�URL��ɽ������ 0= off 1= on',5,11,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (74,'Show Product Additional Images','SHOW_PRODUCT_FREE_SHIPPING_INFO_ADDITIONAL_IMAGES','1','Display Additional Images on Product Info 0= off 1= on',5,13,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (75,'�١������ʤ�ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_STARTING_AT','1','���ʥڡ����ˡ��١������ʤ�ɽ�����ޤ�����0= off 1= on',5,12,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (76,'��ͧã���Τ餻��ץܥ���ɽ��','SHOW_PRODUCT_FREE_SHIPPING_INFO_TELL_A_FRIEND','1','���ʾ���ǡ�ͧã���Τ餻��ץܥ����ɽ�����롣<br /><br />Note: ���������off�ˤ��Ƥ⥵���ɥܥå����Ρ�ͧã���Τ餻��פϾä��ޤ��󡣤ޤ��������ɥܥå����Ρ�ͧã���Τ餻��פ�off�ˤ��Ƥ⤳�Υܥ���ɽ��������˱ƶ��Ϥ���ޤ���<br />0= off 1= on',5,15,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (77,'����̵���β������ơ����� - ������','SHOW_PRODUCT_FREE_SHIPPING_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH','1','�������������̵���β���/�ƥ����Ȥ�ɽ�����ޤ�����',5,16,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (78,'�Ǽ��̤Υǥե���� - �������ɲû�','DEFAULT_PRODUCT_FREE_SHIPPING_TAX_CLASS_ID','0','�����ʤ��ɲä�����Ρ��Ǽ��̤Υǥե����ID�����Ϥ��Ƥ���������',5,100,NULL,'2009-11-19 12:39:40','','');
INSERT INTO product_type_layout VALUES (79,'����������뾦�ʤΥǥե���ȥ��ơ����� - �������ɲû�','DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_VIRTUAL','0','�����ʤ��ɲä�����Ρ�����������뾦�ʤΥǥե���ȥ��ơ�������ON�ˤ��ޤ�����',5,101,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (80,'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?','DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_IS_ALWAYS_FREE_SHIPPING','1','What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping',5,102,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), ');
INSERT INTO product_type_layout VALUES (81,'Show Metatags Title Default - Product Title','SHOW_PRODUCT_INFO_METATAGS_TITLE_STATUS','1','Display Product Title in Meta Tags Title 0= off 1= on',1,50,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (82,'Show Metatags Title Default - Product Name','SHOW_PRODUCT_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Product Name in Meta Tags Title 0= off 1= on',1,51,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (83,'Show Metatags Title Default - Product Model','SHOW_PRODUCT_INFO_METATAGS_MODEL_STATUS','1','Display Product Model in Meta Tags Title 0= off 1= on',1,52,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (84,'Show Metatags Title Default - Product Price','SHOW_PRODUCT_INFO_METATAGS_PRICE_STATUS','1','Display Product Price in Meta Tags Title 0= off 1= on',1,53,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (85,'Show Metatags Title Default - Product Tagline','SHOW_PRODUCT_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Product Tagline in Meta Tags Title 0= off 1= on',1,54,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (86,'Show Metatags Title Default - Product Title','SHOW_PRODUCT_MUSIC_INFO_METATAGS_TITLE_STATUS','1','Display Product Title in Meta Tags Title 0= off 1= on',2,50,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (87,'Show Metatags Title Default - Product Name','SHOW_PRODUCT_MUSIC_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Product Name in Meta Tags Title 0= off 1= on',2,51,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (88,'Show Metatags Title Default - Product Model','SHOW_PRODUCT_MUSIC_INFO_METATAGS_MODEL_STATUS','1','Display Product Model in Meta Tags Title 0= off 1= on',2,52,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (89,'Show Metatags Title Default - Product Price','SHOW_PRODUCT_MUSIC_INFO_METATAGS_PRICE_STATUS','1','Display Product Price in Meta Tags Title 0= off 1= on',2,53,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (90,'Show Metatags Title Default - Product Tagline','SHOW_PRODUCT_MUSIC_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Product Tagline in Meta Tags Title 0= off 1= on',2,54,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (91,'Show Metatags Title Default - Document Title','SHOW_DOCUMENT_GENERAL_INFO_METATAGS_TITLE_STATUS','1','Display Document Title in Meta Tags Title 0= off 1= on',3,50,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (92,'Show Metatags Title Default - Document Name','SHOW_DOCUMENT_GENERAL_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Document Name in Meta Tags Title 0= off 1= on',3,51,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (93,'Show Metatags Title Default - Document Tagline','SHOW_DOCUMENT_GENERAL_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Document Tagline in Meta Tags Title 0= off 1= on',3,54,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (94,'Show Metatags Title Default - Document Title','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_TITLE_STATUS','1','Display Document Title in Meta Tags Title 0= off 1= on',4,50,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (95,'Show Metatags Title Default - Document Name','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Document Name in Meta Tags Title 0= off 1= on',4,51,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (96,'Show Metatags Title Default - Document Model','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_MODEL_STATUS','1','Display Document Model in Meta Tags Title 0= off 1= on',4,52,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (97,'Show Metatags Title Default - Document Price','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_PRICE_STATUS','1','Display Document Price in Meta Tags Title 0= off 1= on',4,53,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (98,'Show Metatags Title Default - Document Tagline','SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Document Tagline in Meta Tags Title 0= off 1= on',4,54,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (99,'Show Metatags Title Default - Product Title','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_TITLE_STATUS','1','Display Product Title in Meta Tags Title 0= off 1= on',5,50,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (100,'Show Metatags Title Default - Product Name','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_PRODUCTS_NAME_STATUS','1','Display Product Name in Meta Tags Title 0= off 1= on',5,51,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (101,'Show Metatags Title Default - Product Model','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_MODEL_STATUS','1','Display Product Model in Meta Tags Title 0= off 1= on',5,52,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (102,'Show Metatags Title Default - Product Price','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_PRICE_STATUS','1','Display Product Price in Meta Tags Title 0= off 1= on',5,53,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (103,'Show Metatags Title Default - Product Tagline','SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_TITLE_TAGLINE_STATUS','1','Display Product Tagline in Meta Tags Title 0= off 1= on',5,54,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO product_type_layout VALUES (104,'PRODUCT Attribute is Display Only - Default','DEFAULT_PRODUCT_ATTRIBUTES_DISPLAY_ONLY','0','PRODUCT Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',1,200,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (105,'PRODUCT Attribute is Free - Default','DEFAULT_PRODUCT_ATTRIBUTE_IS_FREE','1','PRODUCT Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',1,201,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (106,'PRODUCT Attribute is Default - Default','DEFAULT_PRODUCT_ATTRIBUTES_DEFAULT','0','PRODUCT Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',1,202,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (107,'PRODUCT Attribute is Discounted - Default','DEFAULT_PRODUCT_ATTRIBUTES_DISCOUNTED','1','PRODUCT Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',1,203,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (108,'PRODUCT Attribute is Included in Base Price - Default','DEFAULT_PRODUCT_ATTRIBUTES_PRICE_BASE_INCLUDED','1','PRODUCT Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',1,204,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (109,'PRODUCT Attribute is Required - Default','DEFAULT_PRODUCT_ATTRIBUTES_REQUIRED','0','PRODUCT Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',1,205,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (110,'PRODUCT Attribute Price Prefix - Default','DEFAULT_PRODUCT_PRICE_PREFIX','1','PRODUCT Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',1,206,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), ');
INSERT INTO product_type_layout VALUES (111,'PRODUCT Attribute Weight Prefix - Default','DEFAULT_PRODUCT_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','PRODUCT Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',1,207,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), ');
INSERT INTO product_type_layout VALUES (112,'MUSIC Attribute is Display Only - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DISPLAY_ONLY','0','MUSIC Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',2,200,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (113,'MUSIC Attribute is Free - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTE_IS_FREE','1','MUSIC Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',2,201,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (114,'MUSIC Attribute is Default - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DEFAULT','0','MUSIC Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',2,202,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (115,'MUSIC Attribute is Discounted - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DISCOUNTED','1','MUSIC Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',2,203,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (116,'MUSIC Attribute is Included in Base Price - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_PRICE_BASE_INCLUDED','1','MUSIC Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',2,204,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (117,'MUSIC Attribute is Required - Default','DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_REQUIRED','0','MUSIC Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',2,205,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (118,'MUSIC Attribute Price Prefix - Default','DEFAULT_PRODUCT_MUSIC_PRICE_PREFIX','1','MUSIC Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',2,206,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), ');
INSERT INTO product_type_layout VALUES (119,'MUSIC Attribute Weight Prefix - Default','DEFAULT_PRODUCT_MUSIC_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','MUSIC Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',2,207,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), ');
INSERT INTO product_type_layout VALUES (120,'DOCUMENT GENERAL Attribute is Display Only - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DISPLAY_ONLY','0','DOCUMENT GENERAL Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',3,200,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (121,'DOCUMENT GENERAL Attribute is Free - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTE_IS_FREE','1','DOCUMENT GENERAL Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',3,201,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (122,'DOCUMENT GENERAL Attribute is Default - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DEFAULT','0','DOCUMENT GENERAL Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',3,202,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (123,'DOCUMENT GENERAL Attribute is Discounted - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DISCOUNTED','1','DOCUMENT GENERAL Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',3,203,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (124,'DOCUMENT GENERAL Attribute is Included in Base Price - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_PRICE_BASE_INCLUDED','1','DOCUMENT GENERAL Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',3,204,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (125,'DOCUMENT GENERAL Attribute is Required - Default','DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_REQUIRED','0','DOCUMENT GENERAL Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',3,205,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (126,'DOCUMENT GENERAL Attribute Price Prefix - Default','DEFAULT_DOCUMENT_GENERAL_PRICE_PREFIX','1','DOCUMENT GENERAL Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',3,206,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), ');
INSERT INTO product_type_layout VALUES (127,'DOCUMENT GENERAL Attribute Weight Prefix - Default','DEFAULT_DOCUMENT_GENERAL_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','DOCUMENT GENERAL Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',3,207,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), ');
INSERT INTO product_type_layout VALUES (128,'DOCUMENT PRODUCT Attribute is Display Only - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DISPLAY_ONLY','0','DOCUMENT PRODUCT Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',4,200,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (129,'DOCUMENT PRODUCT Attribute is Free - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTE_IS_FREE','1','DOCUMENT PRODUCT Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',4,201,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (130,'DOCUMENT PRODUCT Attribute is Default - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DEFAULT','0','DOCUMENT PRODUCT Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',4,202,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (131,'DOCUMENT PRODUCT Attribute is Discounted - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DISCOUNTED','1','DOCUMENT PRODUCT Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',4,203,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (132,'DOCUMENT PRODUCT Attribute is Included in Base Price - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_PRICE_BASE_INCLUDED','1','DOCUMENT PRODUCT Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',4,204,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (133,'DOCUMENT PRODUCT Attribute is Required - Default','DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_REQUIRED','0','DOCUMENT PRODUCT Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',4,205,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (134,'DOCUMENT PRODUCT Attribute Price Prefix - Default','DEFAULT_DOCUMENT_PRODUCT_PRICE_PREFIX','1','DOCUMENT PRODUCT Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',4,206,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), ');
INSERT INTO product_type_layout VALUES (135,'DOCUMENT PRODUCT Attribute Weight Prefix - Default','DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','DOCUMENT PRODUCT Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',4,207,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), ');
INSERT INTO product_type_layout VALUES (136,'PRODUCT FREE SHIPPING Attribute is Display Only - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DISPLAY_ONLY','0','PRODUCT FREE SHIPPING Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes',5,201,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (137,'PRODUCT FREE SHIPPING Attribute is Free - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTE_IS_FREE','1','PRODUCT FREE SHIPPING Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes',5,201,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (138,'PRODUCT FREE SHIPPING Attribute is Default - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DEFAULT','0','PRODUCT FREE SHIPPING Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes',5,202,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (139,'PRODUCT FREE SHIPPING Attribute is Discounted - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DISCOUNTED','1','PRODUCT FREE SHIPPING Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes',5,203,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (140,'PRODUCT FREE SHIPPING Attribute is Included in Base Price - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_PRICE_BASE_INCLUDED','1','PRODUCT FREE SHIPPING Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes',5,204,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (141,'PRODUCT FREE SHIPPING Attribute is Required - Default','DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_REQUIRED','0','PRODUCT FREE SHIPPING Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes',5,205,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), ');
INSERT INTO product_type_layout VALUES (142,'PRODUCT FREE SHIPPING Attribute Price Prefix - Default','DEFAULT_PRODUCT_FREE_SHIPPING_PRICE_PREFIX','1','PRODUCT FREE SHIPPING Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -',5,206,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), ');
INSERT INTO product_type_layout VALUES (143,'PRODUCT FREE SHIPPING Attribute Weight Prefix - Default','DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX','1','PRODUCT FREE SHIPPING Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -',5,207,NULL,'2009-11-19 12:39:40',NULL,'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), ');

--
-- Table structure for table product_types
--

DROP TABLE IF EXISTS product_types;
CREATE TABLE product_types (
type_id int(11) NOT NULL auto_increment,
type_name varchar(255) NOT NULL default '',
type_handler varchar(255) NOT NULL default '',
type_master_type int(11) NOT NULL default '1',
allow_add_to_cart char(1) NOT NULL default 'Y',
default_image varchar(255) NOT NULL default '',
date_added datetime NOT NULL default '0001-01-01 00:00:00',
last_modified datetime NOT NULL default '0001-01-01 00:00:00',
PRIMARY KEY  (type_id),
KEY idx_type_master_type_zen (type_master_type)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=ujis;

--
-- Dumping data for table product_types
--

INSERT INTO product_types VALUES (1,'Product - General','product',1,'Y','','2009-11-19 12:39:40','2009-11-19 12:39:40');
INSERT INTO product_types VALUES (2,'Product - Music','product_music',1,'Y','','2009-11-19 12:39:40','2009-11-19 12:39:40');
INSERT INTO product_types VALUES (3,'Document - General','document_general',3,'N','','2009-11-19 12:39:40','2009-11-19 12:39:40');
INSERT INTO product_types VALUES (4,'Document - Product','document_product',3,'Y','','2009-11-19 12:39:40','2009-11-19 12:39:40');
INSERT INTO product_types VALUES (5,'Product - Free Shipping','product_free_shipping',1,'Y','','2009-11-19 12:39:40','2009-11-19 12:39:40');

--
-- Table structure for table product_types_to_category
--

DROP TABLE IF EXISTS product_types_to_category;
CREATE TABLE product_types_to_category (
product_type_id int(11) NOT NULL default '0',
category_id int(11) NOT NULL default '0',
KEY idx_category_id_zen (category_id),
KEY idx_product_type_id_zen (product_type_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table product_types_to_category
--


--
-- Table structure for table products
--

DROP TABLE IF EXISTS products;
CREATE TABLE products (
products_id int(11) NOT NULL auto_increment,
products_type int(11) NOT NULL default '1',
products_quantity float NOT NULL default '0',
products_model varchar(32) default NULL,
products_image varchar(64) default NULL,
products_price decimal(15,4) NOT NULL default '0.0000',
products_virtual tinyint(1) NOT NULL default '0',
products_date_added datetime NOT NULL default '0001-01-01 00:00:00',
products_last_modified datetime default NULL,
products_date_available datetime default NULL,
products_weight float NOT NULL default '0',
products_status tinyint(1) NOT NULL default '0',
products_tax_class_id int(11) NOT NULL default '0',
manufacturers_id int(11) default NULL,
products_ordered float NOT NULL default '0',
products_quantity_order_min float NOT NULL default '1',
products_quantity_order_units float NOT NULL default '1',
products_priced_by_attribute tinyint(1) NOT NULL default '0',
product_is_free tinyint(1) NOT NULL default '0',
product_is_call tinyint(1) NOT NULL default '0',
products_quantity_mixed tinyint(1) NOT NULL default '0',
product_is_always_free_shipping tinyint(1) NOT NULL default '0',
products_qty_box_status tinyint(1) NOT NULL default '1',
products_quantity_order_max float NOT NULL default '0',
products_sort_order int(11) NOT NULL default '0',
products_discount_type tinyint(1) NOT NULL default '0',
products_discount_type_from tinyint(1) NOT NULL default '0',
products_price_sorter decimal(15,4) NOT NULL default '0.0000',
master_categories_id int(11) NOT NULL default '0',
products_mixed_discount_quantity tinyint(1) NOT NULL default '1',
metatags_title_status tinyint(1) NOT NULL default '0',
metatags_products_name_status tinyint(1) NOT NULL default '0',
metatags_model_status tinyint(1) NOT NULL default '0',
metatags_price_status tinyint(1) NOT NULL default '0',
metatags_title_tagline_status tinyint(1) NOT NULL default '0',
PRIMARY KEY  (products_id),
KEY idx_products_date_added_zen (products_date_added),
KEY idx_products_status_zen (products_status)
) ENGINE=MyISAM AUTO_INCREMENT=230 DEFAULT CHARSET=ujis;

--
-- Dumping data for table products
--


--
-- Table structure for table products_attributes
--

DROP TABLE IF EXISTS products_attributes;
CREATE TABLE products_attributes (
products_attributes_id int(11) NOT NULL auto_increment,
products_id int(11) NOT NULL default '0',
options_id int(11) NOT NULL default '0',
options_values_id int(11) NOT NULL default '0',
options_values_price decimal(15,4) NOT NULL default '0.0000',
price_prefix char(1) NOT NULL default '',
products_options_sort_order int(11) NOT NULL default '0',
product_attribute_is_free tinyint(1) NOT NULL default '0',
products_attributes_weight float NOT NULL default '0',
products_attributes_weight_prefix char(1) NOT NULL default '',
attributes_display_only tinyint(1) NOT NULL default '0',
attributes_default tinyint(1) NOT NULL default '0',
attributes_discounted tinyint(1) NOT NULL default '1',
attributes_image varchar(64) default NULL,
attributes_price_base_included tinyint(1) NOT NULL default '1',
attributes_price_onetime decimal(15,4) NOT NULL default '0.0000',
attributes_price_factor decimal(15,4) NOT NULL default '0.0000',
attributes_price_factor_offset decimal(15,4) NOT NULL default '0.0000',
attributes_price_factor_onetime decimal(15,4) NOT NULL default '0.0000',
attributes_price_factor_onetime_offset decimal(15,4) NOT NULL default '0.0000',
attributes_qty_prices text,
attributes_qty_prices_onetime text,
attributes_price_words decimal(15,4) NOT NULL default '0.0000',
attributes_price_words_free int(4) NOT NULL default '0',
attributes_price_letters decimal(15,4) NOT NULL default '0.0000',
attributes_price_letters_free int(4) NOT NULL default '0',
attributes_required tinyint(1) NOT NULL default '0',
PRIMARY KEY  (products_attributes_id),
KEY idx_id_options_id_values_zen (products_id,options_id,options_values_id)
) ENGINE=MyISAM AUTO_INCREMENT=423 DEFAULT CHARSET=ujis;

--
-- Dumping data for table products_attributes
--


--
-- Table structure for table products_attributes_download
--

DROP TABLE IF EXISTS products_attributes_download;
CREATE TABLE products_attributes_download (
products_attributes_id int(11) NOT NULL default '0',
products_attributes_filename varchar(255) NOT NULL default '',
products_attributes_maxdays int(2) default '0',
products_attributes_maxcount int(2) default '0',
PRIMARY KEY  (products_attributes_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table products_attributes_download
--


--
-- Table structure for table products_description
--

DROP TABLE IF EXISTS products_description;
CREATE TABLE products_description (
products_id int(11) NOT NULL auto_increment,
language_id int(11) NOT NULL default '1',
products_name varchar(64) NOT NULL default '',
products_description text,
products_url varchar(255) default NULL,
products_viewed int(5) default '0',
PRIMARY KEY  (products_id,language_id),
KEY idx_products_name_zen (products_name)
) ENGINE=MyISAM AUTO_INCREMENT=235 DEFAULT CHARSET=ujis;

--
-- Dumping data for table products_description
--


--
-- Table structure for table products_discount_quantity
--

DROP TABLE IF EXISTS products_discount_quantity;
CREATE TABLE products_discount_quantity (
discount_id int(4) NOT NULL default '0',
products_id int(11) NOT NULL default '0',
discount_qty float NOT NULL default '0',
discount_price decimal(15,4) NOT NULL default '0.0000',
KEY idx_id_qty_zen (products_id,discount_qty)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table products_discount_quantity
--


--
-- Table structure for table products_notifications
--

DROP TABLE IF EXISTS products_notifications;
CREATE TABLE products_notifications (
products_id int(11) NOT NULL default '0',
customers_id int(11) NOT NULL default '0',
date_added datetime NOT NULL default '0001-01-01 00:00:00',
PRIMARY KEY  (products_id,customers_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table products_notifications
--


--
-- Table structure for table products_options
--

DROP TABLE IF EXISTS products_options;
CREATE TABLE products_options (
products_options_id int(11) NOT NULL default '0',
language_id int(11) NOT NULL default '1',
products_options_name varchar(32) NOT NULL default '',
products_options_sort_order int(11) NOT NULL default '0',
products_options_type int(5) NOT NULL default '0',
products_options_length smallint(2) NOT NULL default '32',
products_options_comment varchar(64) default NULL,
products_options_size smallint(2) NOT NULL default '32',
products_options_images_per_row int(2) default '5',
products_options_images_style int(1) default '0',
products_options_rows smallint(2) NOT NULL default '1',
PRIMARY KEY  (products_options_id,language_id),
KEY idx_lang_id_zen (language_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table products_options
--


--
-- Table structure for table products_options_types
--

DROP TABLE IF EXISTS products_options_types;
CREATE TABLE products_options_types (
products_options_types_id int(11) NOT NULL default '0',
products_options_types_name varchar(32) default NULL,
PRIMARY KEY  (products_options_types_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis COMMENT='Track products_options_types';

--
-- Dumping data for table products_options_types
--

INSERT INTO products_options_types VALUES (0,'Dropdown');
INSERT INTO products_options_types VALUES (1,'Text');
INSERT INTO products_options_types VALUES (2,'Radio');
INSERT INTO products_options_types VALUES (3,'Checkbox');
INSERT INTO products_options_types VALUES (4,'File');
INSERT INTO products_options_types VALUES (5,'Read Only');

--
-- Table structure for table products_options_values
--

DROP TABLE IF EXISTS products_options_values;
CREATE TABLE products_options_values (
products_options_values_id int(11) NOT NULL default '0',
language_id int(11) NOT NULL default '1',
products_options_values_name varchar(64) NOT NULL default '',
products_options_values_sort_order int(11) NOT NULL default '0',
PRIMARY KEY  (products_options_values_id,language_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table products_options_values
--

INSERT INTO products_options_values VALUES (0,1,'TEXT',0);
INSERT INTO products_options_values VALUES (0,2,'TEXT',0);
INSERT INTO products_options_values VALUES (0,9,'TEXT',0);

--
-- Table structure for table products_options_values_to_products_options
--

DROP TABLE IF EXISTS products_options_values_to_products_options;
CREATE TABLE products_options_values_to_products_options (
products_options_values_to_products_options_id int(11) NOT NULL auto_increment,
products_options_id int(11) NOT NULL default '0',
products_options_values_id int(11) NOT NULL default '0',
PRIMARY KEY  (products_options_values_to_products_options_id)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=ujis;

--
-- Dumping data for table products_options_values_to_products_options
--


--
-- Table structure for table products_point_rate
--

DROP TABLE IF EXISTS products_point_rate;
CREATE TABLE products_point_rate (
products_id int(11) NOT NULL default '0',
rate int(11) NOT NULL default '0',
PRIMARY KEY  (products_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table products_point_rate
--


--
-- Table structure for table products_to_categories
--

DROP TABLE IF EXISTS products_to_categories;
CREATE TABLE products_to_categories (
products_id int(11) NOT NULL default '0',
categories_id int(11) NOT NULL default '0',
PRIMARY KEY  (products_id,categories_id),
KEY idx_cat_prod_id_zen (categories_id,products_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table products_to_categories
--


--
-- Table structure for table products_with_attributes_stock
--

DROP TABLE IF EXISTS products_with_attributes_stock;
CREATE TABLE products_with_attributes_stock (
stock_id int(11) NOT NULL auto_increment,
products_id int(11) NOT NULL default '0',
stock_attributes varchar(255) NOT NULL default '',
skumodel varchar(255) NOT NULL default '',
quantity float NOT NULL default '0',
PRIMARY KEY  (stock_id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table products_with_attributes_stock
--


--
-- Table structure for table products_xsell
--

DROP TABLE IF EXISTS products_xsell;
CREATE TABLE products_xsell (
ID int(10) NOT NULL auto_increment,
products_id int(10) unsigned NOT NULL default '1',
xsell_id int(10) unsigned NOT NULL default '1',
sort_order int(10) unsigned NOT NULL default '1',
PRIMARY KEY  (ID),
KEY idx_products_id_xsell (products_id)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=ujis;

--
-- Dumping data for table products_xsell
--


--
-- Table structure for table project_version
--

DROP TABLE IF EXISTS project_version;
CREATE TABLE project_version (
project_version_id tinyint(3) NOT NULL auto_increment,
project_version_key varchar(40) NOT NULL default '',
project_version_major varchar(20) NOT NULL default '',
project_version_minor varchar(20) NOT NULL default '',
project_version_patch1 varchar(20) NOT NULL default '',
project_version_patch2 varchar(20) NOT NULL default '',
project_version_patch1_source varchar(20) NOT NULL default '',
project_version_patch2_source varchar(20) NOT NULL default '',
project_version_comment varchar(250) NOT NULL default '',
project_version_date_applied datetime NOT NULL default '0001-01-01 01:01:01',
PRIMARY KEY  (project_version_id),
UNIQUE KEY idx_project_version_key_zen (project_version_key)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=ujis COMMENT='Database Version Tracking';

--
-- Dumping data for table project_version
--

INSERT INTO project_version VALUES (1,'Zen-Cart Main','1','3.0.2-l10n-jp-5','','','','','Fresh Installation','2009-11-19 12:39:40');
INSERT INTO project_version VALUES (2,'Zen-Cart Database','1','3.0.2-l10n-jp-5','','','','','Fresh Installation','2009-11-19 12:39:40');

--
-- Table structure for table project_version_history
--

DROP TABLE IF EXISTS project_version_history;
CREATE TABLE project_version_history (
project_version_id tinyint(3) NOT NULL auto_increment,
project_version_key varchar(40) NOT NULL default '',
project_version_major varchar(20) NOT NULL default '',
project_version_minor varchar(20) NOT NULL default '',
project_version_patch varchar(20) NOT NULL default '',
project_version_comment varchar(250) NOT NULL default '',
project_version_date_applied datetime NOT NULL default '0001-01-01 01:01:01',
PRIMARY KEY  (project_version_id)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=ujis COMMENT='Database Version Tracking History';

--
-- Dumping data for table project_version_history
--

INSERT INTO project_version_history VALUES (1,'Zen-Cart Main','1','3.0.2','','Fresh Installation','2009-11-19 12:39:40');
INSERT INTO project_version_history VALUES (2,'Zen-Cart Database','1','3.0.2','','Fresh Installation','2009-11-19 12:39:40');
INSERT INTO project_version_history VALUES (3,'Zen-Cart Main','1','3.0.2-l10n-jp-1','','v1.3.0.2-l10n-jp-1','2009-11-19 12:39:40');
INSERT INTO project_version_history VALUES (4,'Zen-Cart Database','1','3.0.2-l10n-jp-1','','v1.3.0.2-l10n-jp-1','2009-11-19 12:39:40');
INSERT INTO project_version_history VALUES (5,'Zen-Cart Main','1','3.0.2-l10n-jp-2','','v1.3.0.2-l10n-jp-2','2009-11-19 12:39:40');
INSERT INTO project_version_history VALUES (6,'Zen-Cart Database','1','3.0.2-l10n-jp-2','','v1.3.0.2-l10n-jp-2','2009-11-19 12:39:40');
INSERT INTO project_version_history VALUES (7,'Zen-Cart Main','1','3.0.2-l10n-jp-3','','v1.3.0.2-l10n-jp-3','2009-11-19 12:39:40');
INSERT INTO project_version_history VALUES (8,'Zen-Cart Database','1','3.0.2-l10n-jp-3','','v1.3.0.2-l10n-jp-3','2009-11-19 12:39:40');
INSERT INTO project_version_history VALUES (9,'Zen-Cart Main','1','3.0.2-l10n-jp-4','','v1.3.0.2-l10n-jp-4','2009-11-19 12:39:40');
INSERT INTO project_version_history VALUES (10,'Zen-Cart Database','1','3.0.2-l10n-jp-4','','v1.3.0.2-l10n-jp-4','2009-11-19 12:39:40');
INSERT INTO project_version_history VALUES (11,'Zen-Cart Main','1','3.0.2-l10n-jp-5','','v1.3.0.2-l10n-jp-5','2009-11-19 12:39:40');
INSERT INTO project_version_history VALUES (12,'Zen-Cart Database','1','3.0.2-l10n-jp-5','','v1.3.0.2-l10n-jp-5','2009-11-19 12:39:40');

--
-- Table structure for table query_builder
--

DROP TABLE IF EXISTS query_builder;
CREATE TABLE query_builder (
query_id int(11) NOT NULL auto_increment,
query_category varchar(40) NOT NULL default '',
query_name varchar(80) NOT NULL default '',
query_description text NOT NULL,
query_string text NOT NULL,
query_keys_list text NOT NULL,
PRIMARY KEY  (query_id),
UNIQUE KEY query_name (query_name)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=ujis COMMENT='Stores queries for re-use in Admin email and report modules';

--
-- Dumping data for table query_builder
--

INSERT INTO query_builder VALUES (1,'email','All Customers','Returns all customers name and email address for sending mass emails (ie: for newsletters, coupons, GV\'s, messages, etc).','select customers_email_address, customers_firstname, customers_lastname from TABLE_CUSTOMERS order by customers_lastname, customers_firstname, customers_email_address','');
INSERT INTO query_builder VALUES (2,'email,newsletters','All Newsletter Subscribers','Returns name and email address of newsletter subscribers','select customers_firstname, customers_lastname, customers_email_address from TABLE_CUSTOMERS where customers_newsletter = \'1\'','');
INSERT INTO query_builder VALUES (3,'email,newsletters','Dormant Customers (>3months) (Subscribers)','Subscribers who HAVE purchased something, but have NOT purchased for at least three months.','select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o where c.customers_newsletter = \'1\' AND c.customers_id = o.customers_id and o.date_purchased < subdate(now(),INTERVAL 3 MONTH) GROUP BY c.customers_email_address order by c.customers_lastname, c.customers_firstname ASC','');
INSERT INTO query_builder VALUES (4,'email,newsletters','Active customers in past 3 months (Subscribers)','Newsletter subscribers who are also active customers (purchased something) in last 3 months.','select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o where c.customers_newsletter = \'1\' AND c.customers_id = o.customers_id and o.date_purchased > subdate(now(),INTERVAL 3 MONTH) GROUP BY c.customers_email_address order by c.customers_lastname, c.customers_firstname ASC','');
INSERT INTO query_builder VALUES (5,'email,newsletters','Active customers in past 3 months (Regardless of subscription status)','All active customers (purchased something) in last 3 months, ignoring newsletter-subscription status.','select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o WHERE c.customers_id = o.customers_id and o.date_purchased > subdate(now(),INTERVAL 3 MONTH) GROUP BY c.customers_email_address order by c.customers_lastname, c.customers_firstname ASC','');
INSERT INTO query_builder VALUES (6,'email,newsletters','Administrator','Just the email account of the current administrator','select \'ADMIN\' as customers_firstname, admin_name as customers_lastname, admin_email as customers_email_address from TABLE_ADMIN where admin_id = $SESSION:admin_id','');

--
-- Table structure for table record_artists
--

DROP TABLE IF EXISTS record_artists;
CREATE TABLE record_artists (
artists_id int(11) NOT NULL auto_increment,
artists_name varchar(32) NOT NULL default '',
artists_image varchar(64) default NULL,
date_added datetime default NULL,
last_modified datetime default NULL,
PRIMARY KEY  (artists_id),
KEY idx_rec_artists_name_zen (artists_name)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table record_artists
--


--
-- Table structure for table record_artists_info
--

DROP TABLE IF EXISTS record_artists_info;
CREATE TABLE record_artists_info (
artists_id int(11) NOT NULL default '0',
languages_id int(11) NOT NULL default '0',
artists_url varchar(255) NOT NULL default '',
url_clicked int(5) NOT NULL default '0',
date_last_click datetime default NULL,
PRIMARY KEY  (artists_id,languages_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table record_artists_info
--


--
-- Table structure for table record_company
--

DROP TABLE IF EXISTS record_company;
CREATE TABLE record_company (
record_company_id int(11) NOT NULL auto_increment,
record_company_name varchar(32) NOT NULL default '',
record_company_image varchar(64) default NULL,
date_added datetime default NULL,
last_modified datetime default NULL,
PRIMARY KEY  (record_company_id),
KEY idx_rec_company_name_zen (record_company_name)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table record_company
--


--
-- Table structure for table record_company_info
--

DROP TABLE IF EXISTS record_company_info;
CREATE TABLE record_company_info (
record_company_id int(11) NOT NULL default '0',
languages_id int(11) NOT NULL default '0',
record_company_url varchar(255) NOT NULL default '',
url_clicked int(5) NOT NULL default '0',
date_last_click datetime default NULL,
PRIMARY KEY  (record_company_id,languages_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table record_company_info
--


--
-- Table structure for table reviews
--

DROP TABLE IF EXISTS reviews;
CREATE TABLE reviews (
reviews_id int(11) NOT NULL auto_increment,
products_id int(11) NOT NULL default '0',
customers_id int(11) default NULL,
customers_name varchar(64) NOT NULL default '',
reviews_rating int(1) default NULL,
date_added datetime default NULL,
last_modified datetime default NULL,
reviews_read int(5) NOT NULL default '0',
status int(1) NOT NULL default '1',
PRIMARY KEY  (reviews_id),
KEY idx_products_id_zen (products_id),
KEY idx_customers_id_zen (customers_id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table reviews
--


--
-- Table structure for table reviews_description
--

DROP TABLE IF EXISTS reviews_description;
CREATE TABLE reviews_description (
reviews_id int(11) NOT NULL default '0',
languages_id int(11) NOT NULL default '0',
reviews_text text NOT NULL,
PRIMARY KEY  (reviews_id,languages_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table reviews_description
--


--
-- Table structure for table salemaker_sales
--

DROP TABLE IF EXISTS salemaker_sales;
CREATE TABLE salemaker_sales (
sale_id int(11) NOT NULL auto_increment,
sale_status tinyint(4) NOT NULL default '0',
sale_name varchar(30) NOT NULL default '',
sale_deduction_value decimal(15,4) NOT NULL default '0.0000',
sale_deduction_type tinyint(4) NOT NULL default '0',
sale_pricerange_from decimal(15,4) NOT NULL default '0.0000',
sale_pricerange_to decimal(15,4) NOT NULL default '0.0000',
sale_specials_condition tinyint(4) NOT NULL default '0',
sale_categories_selected text,
sale_categories_all text,
sale_date_start date NOT NULL default '0001-01-01',
sale_date_end date NOT NULL default '0001-01-01',
sale_date_added date NOT NULL default '0001-01-01',
sale_date_last_modified date NOT NULL default '0001-01-01',
sale_date_status_change date NOT NULL default '0001-01-01',
PRIMARY KEY  (sale_id),
KEY idx_sale_status_zen (sale_status)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=ujis;

--
-- Dumping data for table salemaker_sales
--


--
-- Table structure for table sessions
--

DROP TABLE IF EXISTS sessions;
CREATE TABLE sessions (
sesskey varchar(32) NOT NULL default '',
expiry int(11) unsigned NOT NULL default '0',
value text NOT NULL,
PRIMARY KEY  (sesskey)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table sessions
--


--
-- Table structure for table so_payment_types
--

DROP TABLE IF EXISTS so_payment_types;
CREATE TABLE so_payment_types (
payment_type_id int(11) NOT NULL auto_increment,
language_id int(11) NOT NULL default '1',
payment_type_code varchar(4) NOT NULL default '',
payment_type_full varchar(20) NOT NULL default '',
PRIMARY KEY  (payment_type_id),
UNIQUE KEY type_code (payment_type_code),
KEY type_code_2 (payment_type_code)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=ujis;

--
-- Dumping data for table so_payment_types
--


--
-- Table structure for table so_payments
--

DROP TABLE IF EXISTS so_payments;
CREATE TABLE so_payments (
payment_id int(11) NOT NULL auto_increment,
orders_id int(11) NOT NULL default '0',
payment_number varchar(32) NOT NULL default '',
payment_name varchar(40) NOT NULL default '',
payment_amount decimal(14,2) NOT NULL default '0.00',
payment_type varchar(20) NOT NULL default '',
date_posted datetime NOT NULL default '0000-00-00 00:00:00',
last_modified datetime NOT NULL default '0000-00-00 00:00:00',
purchase_order_id int(11) NOT NULL default '0',
PRIMARY KEY  (payment_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table so_payments
--


--
-- Table structure for table so_purchase_orders
--

DROP TABLE IF EXISTS so_purchase_orders;
CREATE TABLE so_purchase_orders (
purchase_order_id int(11) NOT NULL auto_increment,
orders_id int(11) NOT NULL default '0',
po_number varchar(32) default NULL,
date_posted datetime NOT NULL default '0000-00-00 00:00:00',
last_modified datetime NOT NULL default '0000-00-00 00:00:00',
PRIMARY KEY  (purchase_order_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table so_purchase_orders
--


--
-- Table structure for table so_refunds
--

DROP TABLE IF EXISTS so_refunds;
CREATE TABLE so_refunds (
refund_id int(11) NOT NULL auto_increment,
payment_id int(11) NOT NULL default '0',
orders_id int(11) NOT NULL default '0',
refund_number varchar(32) NOT NULL default '',
refund_name varchar(40) NOT NULL default '',
refund_amount decimal(14,2) NOT NULL default '0.00',
refund_type varchar(4) NOT NULL default 'CK',
date_posted datetime NOT NULL default '0000-00-00 00:00:00',
last_modified datetime NOT NULL default '0000-00-00 00:00:00',
PRIMARY KEY  (refund_id),
KEY refund_id (refund_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table so_refunds
--


--
-- Table structure for table specials
--

DROP TABLE IF EXISTS specials;
CREATE TABLE specials (
specials_id int(11) NOT NULL auto_increment,
products_id int(11) NOT NULL default '0',
specials_new_products_price decimal(15,4) NOT NULL default '0.0000',
specials_date_added datetime default NULL,
specials_last_modified datetime default NULL,
expires_date date NOT NULL default '0001-01-01',
date_status_change datetime default NULL,
status int(1) NOT NULL default '1',
specials_date_available date NOT NULL default '0001-01-01',
PRIMARY KEY  (specials_id),
KEY idx_status_zen (status),
KEY idx_products_id_zen (products_id),
KEY idx_date_avail_zen (specials_date_available)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=ujis;

--
-- Dumping data for table specials
--


--
-- Table structure for table tax_class
--

DROP TABLE IF EXISTS tax_class;
CREATE TABLE tax_class (
tax_class_id int(11) NOT NULL auto_increment,
tax_class_title varchar(32) NOT NULL default '',
tax_class_description varchar(255) NOT NULL default '',
last_modified datetime default NULL,
date_added datetime NOT NULL default '0001-01-01 00:00:00',
PRIMARY KEY  (tax_class_id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table tax_class
--

INSERT INTO tax_class VALUES (1,'������','�����ǡ����ܡ�','2007-01-15 11:43:40','2004-01-21 01:35:29');

--
-- Table structure for table tax_class_m17n
--

DROP TABLE IF EXISTS tax_class_m17n;
CREATE TABLE tax_class_m17n (
tax_class_id int(11) NOT NULL default '0',
language_id int(11) NOT NULL default '0',
tax_class_title varchar(32) NOT NULL default '',
tax_class_description varchar(255) NOT NULL default '',
PRIMARY KEY  (tax_class_id,language_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table tax_class_m17n
--


--
-- Table structure for table tax_rates
--

DROP TABLE IF EXISTS tax_rates;
CREATE TABLE tax_rates (
tax_rates_id int(11) NOT NULL auto_increment,
tax_zone_id int(11) NOT NULL default '0',
tax_class_id int(11) NOT NULL default '0',
tax_priority int(5) default '1',
tax_rate decimal(7,4) NOT NULL default '0.0000',
tax_description varchar(255) NOT NULL default '',
last_modified datetime default NULL,
date_added datetime NOT NULL default '0001-01-01 00:00:00',
PRIMARY KEY  (tax_rates_id),
KEY idx_tax_zone_id_zen (tax_zone_id),
KEY idx_tax_class_id_zen (tax_class_id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table tax_rates
--

INSERT INTO tax_rates VALUES (1,1,1,1,'5.0000','�����ǡ�5%','2007-01-15 11:44:17','2006-11-29 16:18:40');

--
-- Table structure for table tax_rates_m17n
--

DROP TABLE IF EXISTS tax_rates_m17n;
CREATE TABLE tax_rates_m17n (
tax_rates_id int(11) NOT NULL default '0',
language_id int(11) NOT NULL default '0',
tax_description varchar(255) NOT NULL default '',
PRIMARY KEY  (tax_rates_id,language_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table tax_rates_m17n
--


--
-- Table structure for table template_select
--

DROP TABLE IF EXISTS template_select;
CREATE TABLE template_select (
template_id int(11) NOT NULL auto_increment,
template_dir varchar(64) NOT NULL default '',
template_language varchar(64) NOT NULL default '0',
PRIMARY KEY  (template_id),
KEY idx_tpl_lang_zen (template_language)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=ujis;

--
-- Dumping data for table template_select
--

INSERT INTO template_select VALUES (1,'sugudeki','0');
INSERT INTO template_select VALUES (8,'zen_mobile','9');

--
-- Table structure for table upgrade_exceptions
--

DROP TABLE IF EXISTS upgrade_exceptions;
CREATE TABLE upgrade_exceptions (
upgrade_exception_id smallint(5) NOT NULL auto_increment,
sql_file varchar(50) default NULL,
reason varchar(200) default NULL,
errordate datetime default '0001-01-01 00:00:00',
sqlstatement text,
PRIMARY KEY  (upgrade_exception_id)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=ujis;

--
-- Dumping data for table upgrade_exceptions
--


--
-- Table structure for table visitors
--

DROP TABLE IF EXISTS visitors;
CREATE TABLE visitors (
visitors_id int(11) NOT NULL default '0',
visitors_email_address varchar(96) NOT NULL default '',
visitors_info_date_account_created datetime default NULL,
visitors_info_date_account_last_modified datetime default NULL,
PRIMARY KEY  (visitors_id),
KEY IDX_visitors_email_address (visitors_email_address)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table visitors
--


--
-- Table structure for table visitors_orders
--

DROP TABLE IF EXISTS visitors_orders;
CREATE TABLE visitors_orders (
orders_id int(11) NOT NULL default '0',
visitors_id int(11) NOT NULL default '0',
last_modified datetime default NULL,
date_purchased datetime default NULL,
PRIMARY KEY  (orders_id),
KEY IDX_visitors_id (visitors_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table visitors_orders
--


--
-- Table structure for table whos_online
--

DROP TABLE IF EXISTS whos_online;
CREATE TABLE whos_online (
customer_id int(11) default NULL,
full_name varchar(64) NOT NULL default '',
session_id varchar(128) NOT NULL default '',
ip_address varchar(15) NOT NULL default '',
time_entry varchar(14) NOT NULL default '',
time_last_click varchar(14) NOT NULL default '',
last_page_url varchar(255) NOT NULL default '',
host_address text NOT NULL,
user_agent varchar(255) NOT NULL default '',
KEY idx_ip_address_zen (ip_address),
KEY idx_session_id_zen (session_id),
KEY idx_customer_id_zen (customer_id),
KEY idx_time_entry_zen (time_entry),
KEY idx_time_last_click_zen (time_last_click),
KEY idx_last_page_url_zen (last_page_url)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table whos_online
--


--
-- Table structure for table zones
--

DROP TABLE IF EXISTS zones;
CREATE TABLE zones (
zone_id int(11) NOT NULL auto_increment,
zone_country_id int(11) NOT NULL default '0',
zone_code varchar(32) NOT NULL default '',
zone_name varchar(32) NOT NULL default '',
PRIMARY KEY  (zone_id)
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=ujis;

--
-- Dumping data for table zones
--

INSERT INTO zones VALUES (1,223,'AL','Alabama');
INSERT INTO zones VALUES (2,223,'AK','Alaska');
INSERT INTO zones VALUES (3,223,'AS','American Samoa');
INSERT INTO zones VALUES (4,223,'AZ','Arizona');
INSERT INTO zones VALUES (5,223,'AR','Arkansas');
INSERT INTO zones VALUES (6,223,'AF','Armed Forces Africa');
INSERT INTO zones VALUES (7,223,'AA','Armed Forces Americas');
INSERT INTO zones VALUES (8,223,'AC','Armed Forces Canada');
INSERT INTO zones VALUES (9,223,'AE','Armed Forces Europe');
INSERT INTO zones VALUES (10,223,'AM','Armed Forces Middle East');
INSERT INTO zones VALUES (11,223,'AP','Armed Forces Pacific');
INSERT INTO zones VALUES (12,223,'CA','California');
INSERT INTO zones VALUES (13,223,'CO','Colorado');
INSERT INTO zones VALUES (14,223,'CT','Connecticut');
INSERT INTO zones VALUES (15,223,'DE','Delaware');
INSERT INTO zones VALUES (16,223,'DC','District of Columbia');
INSERT INTO zones VALUES (17,223,'FM','Federated States Of Micronesia');
INSERT INTO zones VALUES (18,223,'FL','Florida');
INSERT INTO zones VALUES (19,223,'GA','Georgia');
INSERT INTO zones VALUES (20,223,'GU','Guam');
INSERT INTO zones VALUES (21,223,'HI','Hawaii');
INSERT INTO zones VALUES (22,223,'ID','Idaho');
INSERT INTO zones VALUES (23,223,'IL','Illinois');
INSERT INTO zones VALUES (24,223,'IN','Indiana');
INSERT INTO zones VALUES (25,223,'IA','Iowa');
INSERT INTO zones VALUES (26,223,'KS','Kansas');
INSERT INTO zones VALUES (27,223,'KY','Kentucky');
INSERT INTO zones VALUES (28,223,'LA','Louisiana');
INSERT INTO zones VALUES (29,223,'ME','Maine');
INSERT INTO zones VALUES (30,223,'MH','Marshall Islands');
INSERT INTO zones VALUES (31,223,'MD','Maryland');
INSERT INTO zones VALUES (32,223,'MA','Massachusetts');
INSERT INTO zones VALUES (33,223,'MI','Michigan');
INSERT INTO zones VALUES (34,223,'MN','Minnesota');
INSERT INTO zones VALUES (35,223,'MS','Mississippi');
INSERT INTO zones VALUES (36,223,'MO','Missouri');
INSERT INTO zones VALUES (37,223,'MT','Montana');
INSERT INTO zones VALUES (38,223,'NE','Nebraska');
INSERT INTO zones VALUES (39,223,'NV','Nevada');
INSERT INTO zones VALUES (40,223,'NH','New Hampshire');
INSERT INTO zones VALUES (41,223,'NJ','New Jersey');
INSERT INTO zones VALUES (42,223,'NM','New Mexico');
INSERT INTO zones VALUES (43,223,'NY','New York');
INSERT INTO zones VALUES (44,223,'NC','North Carolina');
INSERT INTO zones VALUES (45,223,'ND','North Dakota');
INSERT INTO zones VALUES (46,223,'MP','Northern Mariana Islands');
INSERT INTO zones VALUES (47,223,'OH','Ohio');
INSERT INTO zones VALUES (48,223,'OK','Oklahoma');
INSERT INTO zones VALUES (49,223,'OR','Oregon');
INSERT INTO zones VALUES (50,223,'PW','Palau');
INSERT INTO zones VALUES (51,223,'PA','Pennsylvania');
INSERT INTO zones VALUES (52,223,'PR','Puerto Rico');
INSERT INTO zones VALUES (53,223,'RI','Rhode Island');
INSERT INTO zones VALUES (54,223,'SC','South Carolina');
INSERT INTO zones VALUES (55,223,'SD','South Dakota');
INSERT INTO zones VALUES (56,223,'TN','Tennessee');
INSERT INTO zones VALUES (57,223,'TX','Texas');
INSERT INTO zones VALUES (58,223,'UT','Utah');
INSERT INTO zones VALUES (59,223,'VT','Vermont');
INSERT INTO zones VALUES (60,223,'VI','Virgin Islands');
INSERT INTO zones VALUES (61,223,'VA','Virginia');
INSERT INTO zones VALUES (62,223,'WA','Washington');
INSERT INTO zones VALUES (63,223,'WV','West Virginia');
INSERT INTO zones VALUES (64,223,'WI','Wisconsin');
INSERT INTO zones VALUES (65,223,'WY','Wyoming');
INSERT INTO zones VALUES (66,38,'AB','Alberta');
INSERT INTO zones VALUES (67,38,'BC','British Columbia');
INSERT INTO zones VALUES (68,38,'MB','Manitoba');
INSERT INTO zones VALUES (69,38,'NF','Newfoundland');
INSERT INTO zones VALUES (70,38,'NB','New Brunswick');
INSERT INTO zones VALUES (71,38,'NS','Nova Scotia');
INSERT INTO zones VALUES (72,38,'NT','Northwest Territories');
INSERT INTO zones VALUES (73,38,'NU','Nunavut');
INSERT INTO zones VALUES (74,38,'ON','Ontario');
INSERT INTO zones VALUES (75,38,'PE','Prince Edward Island');
INSERT INTO zones VALUES (76,38,'QC','Quebec');
INSERT INTO zones VALUES (77,38,'SK','Saskatchewan');
INSERT INTO zones VALUES (78,38,'YT','Yukon Territory');
INSERT INTO zones VALUES (79,81,'NDS','Niedersachsen');
INSERT INTO zones VALUES (80,81,'BAW','Baden-Wrttemberg');
INSERT INTO zones VALUES (81,81,'BAY','Bayern');
INSERT INTO zones VALUES (82,81,'BER','Berlin');
INSERT INTO zones VALUES (83,81,'BRG','Brandenburg');
INSERT INTO zones VALUES (84,81,'BRE','Bremen');
INSERT INTO zones VALUES (85,81,'HAM','Hamburg');
INSERT INTO zones VALUES (86,81,'HES','Hessen');
INSERT INTO zones VALUES (87,81,'MEC','Mecklenburg-Vorpommern');
INSERT INTO zones VALUES (88,81,'NRW','Nordrhein-Westfalen');
INSERT INTO zones VALUES (89,81,'RHE','Rheinland-Pfalz');
INSERT INTO zones VALUES (90,81,'SAR','Saarland');
INSERT INTO zones VALUES (91,81,'SAS','Sachsen');
INSERT INTO zones VALUES (92,81,'SAC','Sachsen-Anhalt');
INSERT INTO zones VALUES (93,81,'SCN','Schleswig-Holstein');
INSERT INTO zones VALUES (94,81,'THE','Thringen');
INSERT INTO zones VALUES (95,14,'WI','Wien');
INSERT INTO zones VALUES (96,14,'NO','Niedersterreich');
INSERT INTO zones VALUES (97,14,'OO','Obersterreich');
INSERT INTO zones VALUES (98,14,'SB','Salzburg');
INSERT INTO zones VALUES (99,14,'KN','Kten');
INSERT INTO zones VALUES (100,14,'ST','Steiermark');
INSERT INTO zones VALUES (101,14,'TI','Tirol');
INSERT INTO zones VALUES (102,14,'BL','Burgenland');
INSERT INTO zones VALUES (103,14,'VB','Voralberg');
INSERT INTO zones VALUES (104,204,'AG','Aargau');
INSERT INTO zones VALUES (105,204,'AI','Appenzell Innerrhoden');
INSERT INTO zones VALUES (106,204,'AR','Appenzell Ausserrhoden');
INSERT INTO zones VALUES (107,204,'BE','Bern');
INSERT INTO zones VALUES (108,204,'BL','Basel-Landschaft');
INSERT INTO zones VALUES (109,204,'BS','Basel-Stadt');
INSERT INTO zones VALUES (110,204,'FR','Freiburg');
INSERT INTO zones VALUES (111,204,'GE','Genf');
INSERT INTO zones VALUES (112,204,'GL','Glarus');
INSERT INTO zones VALUES (113,204,'JU','Graubnden');
INSERT INTO zones VALUES (114,204,'JU','Jura');
INSERT INTO zones VALUES (115,204,'LU','Luzern');
INSERT INTO zones VALUES (116,204,'NE','Neuenburg');
INSERT INTO zones VALUES (117,204,'NW','Nidwalden');
INSERT INTO zones VALUES (118,204,'OW','Obwalden');
INSERT INTO zones VALUES (119,204,'SG','St. Gallen');
INSERT INTO zones VALUES (120,204,'SH','Schaffhausen');
INSERT INTO zones VALUES (121,204,'SO','Solothurn');
INSERT INTO zones VALUES (122,204,'SZ','Schwyz');
INSERT INTO zones VALUES (123,204,'TG','Thurgau');
INSERT INTO zones VALUES (124,204,'TI','Tessin');
INSERT INTO zones VALUES (125,204,'UR','Uri');
INSERT INTO zones VALUES (126,204,'VD','Waadt');
INSERT INTO zones VALUES (127,204,'VS','Wallis');
INSERT INTO zones VALUES (128,204,'ZG','Zug');
INSERT INTO zones VALUES (129,204,'ZH','Zrich');
INSERT INTO zones VALUES (130,195,'A Corua','A Corua');
INSERT INTO zones VALUES (131,195,'Alava','Alava');
INSERT INTO zones VALUES (132,195,'Albacete','Albacete');
INSERT INTO zones VALUES (133,195,'Alicante','Alicante');
INSERT INTO zones VALUES (134,195,'Almeria','Almeria');
INSERT INTO zones VALUES (135,195,'Asturias','Asturias');
INSERT INTO zones VALUES (136,195,'Avila','Avila');
INSERT INTO zones VALUES (137,195,'Badajoz','Badajoz');
INSERT INTO zones VALUES (138,195,'Baleares','Baleares');
INSERT INTO zones VALUES (139,195,'Barcelona','Barcelona');
INSERT INTO zones VALUES (140,195,'Burgos','Burgos');
INSERT INTO zones VALUES (141,195,'Caceres','Caceres');
INSERT INTO zones VALUES (142,195,'Cadiz','Cadiz');
INSERT INTO zones VALUES (143,195,'Cantabria','Cantabria');
INSERT INTO zones VALUES (144,195,'Castellon','Castellon');
INSERT INTO zones VALUES (145,195,'Ceuta','Ceuta');
INSERT INTO zones VALUES (146,195,'Ciudad Real','Ciudad Real');
INSERT INTO zones VALUES (147,195,'Cordoba','Cordoba');
INSERT INTO zones VALUES (148,195,'Cuenca','Cuenca');
INSERT INTO zones VALUES (149,195,'Girona','Girona');
INSERT INTO zones VALUES (150,195,'Granada','Granada');
INSERT INTO zones VALUES (151,195,'Guadalajara','Guadalajara');
INSERT INTO zones VALUES (152,195,'Guipuzcoa','Guipuzcoa');
INSERT INTO zones VALUES (153,195,'Huelva','Huelva');
INSERT INTO zones VALUES (154,195,'Huesca','Huesca');
INSERT INTO zones VALUES (155,195,'Jaen','Jaen');
INSERT INTO zones VALUES (156,195,'La Rioja','La Rioja');
INSERT INTO zones VALUES (157,195,'Las Palmas','Las Palmas');
INSERT INTO zones VALUES (158,195,'Leon','Leon');
INSERT INTO zones VALUES (159,195,'Lleida','Lleida');
INSERT INTO zones VALUES (160,195,'Lugo','Lugo');
INSERT INTO zones VALUES (161,195,'Madrid','Madrid');
INSERT INTO zones VALUES (162,195,'Malaga','Malaga');
INSERT INTO zones VALUES (163,195,'Melilla','Melilla');
INSERT INTO zones VALUES (164,195,'Murcia','Murcia');
INSERT INTO zones VALUES (165,195,'Navarra','Navarra');
INSERT INTO zones VALUES (166,195,'Ourense','Ourense');
INSERT INTO zones VALUES (167,195,'Palencia','Palencia');
INSERT INTO zones VALUES (168,195,'Pontevedra','Pontevedra');
INSERT INTO zones VALUES (169,195,'Salamanca','Salamanca');
INSERT INTO zones VALUES (170,195,'Santa Cruz de Tenerife','Santa Cruz de Tenerife');
INSERT INTO zones VALUES (171,195,'Segovia','Segovia');
INSERT INTO zones VALUES (172,195,'Sevilla','Sevilla');
INSERT INTO zones VALUES (173,195,'Soria','Soria');
INSERT INTO zones VALUES (174,195,'Tarragona','Tarragona');
INSERT INTO zones VALUES (175,195,'Teruel','Teruel');
INSERT INTO zones VALUES (176,195,'Toledo','Toledo');
INSERT INTO zones VALUES (177,195,'Valencia','Valencia');
INSERT INTO zones VALUES (178,195,'Valladolid','Valladolid');
INSERT INTO zones VALUES (179,195,'Vizcaya','Vizcaya');
INSERT INTO zones VALUES (180,195,'Zamora','Zamora');
INSERT INTO zones VALUES (181,195,'Zaragoza','Zaragoza');
INSERT INTO zones VALUES (182,107,'�̳�ƻ','�̳�ƻ');
INSERT INTO zones VALUES (183,107,'�Ŀ���','�Ŀ���');
INSERT INTO zones VALUES (184,107,'��긩','��긩');
INSERT INTO zones VALUES (185,107,'�ܾ븩','�ܾ븩');
INSERT INTO zones VALUES (186,107,'���ĸ�','���ĸ�');
INSERT INTO zones VALUES (187,107,'������','������');
INSERT INTO zones VALUES (188,107,'ʡ�縩','ʡ�縩');
INSERT INTO zones VALUES (189,107,'��븩','��븩');
INSERT INTO zones VALUES (190,107,'���ڸ�','���ڸ�');
INSERT INTO zones VALUES (191,107,'���ϸ�','���ϸ�');
INSERT INTO zones VALUES (192,107,'��̸�','��̸�');
INSERT INTO zones VALUES (193,107,'���ո�','���ո�');
INSERT INTO zones VALUES (194,107,'�����','�����');
INSERT INTO zones VALUES (195,107,'�����','�����');
INSERT INTO zones VALUES (196,107,'���㸩','���㸩');
INSERT INTO zones VALUES (197,107,'�ٻ���','�ٻ���');
INSERT INTO zones VALUES (198,107,'���','���');
INSERT INTO zones VALUES (199,107,'ʡ�温','ʡ�温');
INSERT INTO zones VALUES (200,107,'������','������');
INSERT INTO zones VALUES (201,107,'Ĺ�','Ĺ�');
INSERT INTO zones VALUES (202,107,'���츩','���츩');
INSERT INTO zones VALUES (203,107,'�Ų���','�Ų���');
INSERT INTO zones VALUES (204,107,'���θ�','���θ�');
INSERT INTO zones VALUES (205,107,'���Ÿ�','���Ÿ�');
INSERT INTO zones VALUES (206,107,'���츩','���츩');
INSERT INTO zones VALUES (207,107,'������','������');
INSERT INTO zones VALUES (208,107,'�����','�����');
INSERT INTO zones VALUES (209,107,'ʼ�˸�','ʼ�˸�');
INSERT INTO zones VALUES (210,107,'���ɸ�','���ɸ�');
INSERT INTO zones VALUES (211,107,'�²λ���','�²λ���');
INSERT INTO zones VALUES (212,107,'Ļ�踩','Ļ�踩');
INSERT INTO zones VALUES (213,107,'�纬��','�纬��');
INSERT INTO zones VALUES (214,107,'������','������');
INSERT INTO zones VALUES (215,107,'���縩','���縩');
INSERT INTO zones VALUES (216,107,'������','������');
INSERT INTO zones VALUES (217,107,'���縩','���縩');
INSERT INTO zones VALUES (218,107,'���','���');
INSERT INTO zones VALUES (219,107,'��ɲ��','��ɲ��');
INSERT INTO zones VALUES (220,107,'���θ�','���θ�');
INSERT INTO zones VALUES (221,107,'ʡ����','ʡ����');
INSERT INTO zones VALUES (222,107,'���츩','���츩');
INSERT INTO zones VALUES (223,107,'Ĺ�긩','Ĺ�긩');
INSERT INTO zones VALUES (224,107,'���ܸ�','���ܸ�');
INSERT INTO zones VALUES (225,107,'��ʬ��','��ʬ��');
INSERT INTO zones VALUES (226,107,'�ܺ긩','�ܺ긩');
INSERT INTO zones VALUES (227,107,'�����縩','�����縩');
INSERT INTO zones VALUES (228,107,'���츩','���츩');

--
-- Table structure for table zones_m17n
--

DROP TABLE IF EXISTS zones_m17n;
CREATE TABLE zones_m17n (
zone_id int(11) NOT NULL default '0',
language_id int(11) NOT NULL default '0',
zone_name_m17n varchar(32) NOT NULL default '',
PRIMARY KEY  (zone_id,language_id)
) ENGINE=MyISAM DEFAULT CHARSET=ujis;

--
-- Dumping data for table zones_m17n
--


--
-- Table structure for table zones_to_geo_zones
--

DROP TABLE IF EXISTS zones_to_geo_zones;
CREATE TABLE zones_to_geo_zones (
association_id int(11) NOT NULL auto_increment,
zone_country_id int(11) NOT NULL default '0',
zone_id int(11) default NULL,
geo_zone_id int(11) default NULL,
last_modified datetime default NULL,
date_added datetime NOT NULL default '0001-01-01 00:00:00',
PRIMARY KEY  (association_id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

--
-- Dumping data for table zones_to_geo_zones
--

INSERT INTO zones_to_geo_zones VALUES (1,107,NULL,1,'2007-01-21 11:44:32','2006-11-29 16:18:40');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

