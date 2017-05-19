/*
SQLyog Community v9.50 Beta1
MySQL - 5.6.17 : Database - pruebawp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `wp_commentmeta` */

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wp_commentmeta` */

LOCK TABLES `wp_commentmeta` WRITE;

UNLOCK TABLES;

/*Table structure for table `wp_comments` */

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wp_comments` */

LOCK TABLES `wp_comments` WRITE;

insert  into `wp_comments`(`comment_ID`,`comment_post_ID`,`comment_author`,`comment_author_email`,`comment_author_url`,`comment_author_IP`,`comment_date`,`comment_date_gmt`,`comment_content`,`comment_karma`,`comment_approved`,`comment_agent`,`comment_type`,`comment_parent`,`user_id`) values (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2017-05-19 15:49:52','2017-05-19 15:49:52','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);

UNLOCK TABLES;

/*Table structure for table `wp_links` */

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wp_links` */

LOCK TABLES `wp_links` WRITE;

UNLOCK TABLES;

/*Table structure for table `wp_options` */

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wp_options` */

LOCK TABLES `wp_options` WRITE;


UNLOCK TABLES;

/*Table structure for table `wp_postmeta` */

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wp_postmeta` */

LOCK TABLES `wp_postmeta` WRITE;

insert  into `wp_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (1,2,'_wp_page_template','default'),(2,4,'_pum_built_in','default-theme'),(3,4,'_pum_default_theme','1'),(4,4,'popup_theme_overlay_background_color','#ffffff'),(5,4,'popup_theme_overlay_background_opacity','100'),(6,4,'popup_theme_container_padding','18'),(7,4,'popup_theme_container_background_color','#f9f9f9'),(8,4,'popup_theme_container_background_opacity','100'),(9,4,'popup_theme_container_border_style','none'),(10,4,'popup_theme_container_border_color','#000000'),(11,4,'popup_theme_container_border_width','1'),(12,4,'popup_theme_container_border_radius','0'),(13,4,'popup_theme_container_boxshadow_inset','no'),(14,4,'popup_theme_container_boxshadow_horizontal','1'),(15,4,'popup_theme_container_boxshadow_vertical','1'),(16,4,'popup_theme_container_boxshadow_blur','3'),(17,4,'popup_theme_container_boxshadow_spread','0'),(18,4,'popup_theme_container_boxshadow_color','#020202'),(19,4,'popup_theme_container_boxshadow_opacity','23'),(20,4,'popup_theme_title_font_color','#000000'),(21,4,'popup_theme_title_line_height','36'),(22,4,'popup_theme_title_font_size','32'),(23,4,'popup_theme_title_font_family','inherit'),(24,4,'popup_theme_title_font_weight','inherit'),(25,4,'popup_theme_title_font_style','normal'),(26,4,'popup_theme_title_text_align','left'),(27,4,'popup_theme_title_textshadow_horizontal','0'),(28,4,'popup_theme_title_textshadow_vertical','0'),(29,4,'popup_theme_title_textshadow_blur','0'),(30,4,'popup_theme_title_textshadow_color','#020202'),(31,4,'popup_theme_title_textshadow_opacity','23'),(32,4,'popup_theme_content_font_color','#8c8c8c'),(33,4,'popup_theme_content_font_family','inherit'),(34,4,'popup_theme_content_font_weight','inherit'),(35,4,'popup_theme_content_font_style','normal'),(36,4,'popup_theme_close_text','CLOSE'),(37,4,'popup_theme_close_location','topright'),(38,4,'popup_theme_close_position_top','0'),(39,4,'popup_theme_close_position_left','0'),(40,4,'popup_theme_close_position_bottom','0'),(41,4,'popup_theme_close_position_right','0'),(42,4,'popup_theme_close_padding','8'),(43,4,'popup_theme_close_height','0'),(44,4,'popup_theme_close_width','0'),(45,4,'popup_theme_close_background_color','#00b7cd'),(46,4,'popup_theme_close_background_opacity','100'),(47,4,'popup_theme_close_font_color','#ffffff'),(48,4,'popup_theme_close_line_height','14'),(49,4,'popup_theme_close_font_size','12'),(50,4,'popup_theme_close_font_family','inherit'),(51,4,'popup_theme_close_font_weight','inherit'),(52,4,'popup_theme_close_font_style','normal'),(53,4,'popup_theme_close_border_style','none'),(54,4,'popup_theme_close_border_color','#ffffff'),(55,4,'popup_theme_close_border_width','1'),(56,4,'popup_theme_close_border_radius','0'),(57,4,'popup_theme_close_boxshadow_inset','no'),(58,4,'popup_theme_close_boxshadow_horizontal','0'),(59,4,'popup_theme_close_boxshadow_vertical','0'),(60,4,'popup_theme_close_boxshadow_blur','0'),(61,4,'popup_theme_close_boxshadow_spread','0'),(62,4,'popup_theme_close_boxshadow_color','#020202'),(63,4,'popup_theme_close_boxshadow_opacity','23'),(64,4,'popup_theme_close_textshadow_horizontal','0'),(65,4,'popup_theme_close_textshadow_vertical','0'),(66,4,'popup_theme_close_textshadow_blur','0'),(67,4,'popup_theme_close_textshadow_color','#000000'),(68,4,'popup_theme_close_textshadow_opacity','23'),(69,5,'popup_theme_overlay','a:2:{s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";s:2:\"60\";}'),(70,5,'popup_theme_container','a:14:{s:16:\"background_color\";s:7:\"#ffffff\";s:7:\"padding\";s:2:\"18\";s:18:\"background_opacity\";s:3:\"100\";s:13:\"border_radius\";s:1:\"3\";s:12:\"border_color\";s:7:\"#000000\";s:12:\"border_style\";s:5:\"solid\";s:12:\"border_width\";s:1:\"8\";s:15:\"boxshadow_inset\";s:2:\"no\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:1:\"0\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:14:\"boxshadow_blur\";s:2:\"30\";s:17:\"boxshadow_opacity\";s:3:\"100\";s:16:\"boxshadow_spread\";s:1:\"0\";}'),(71,5,'popup_theme_title','a:12:{s:11:\"line_height\";s:2:\"36\";s:9:\"font_size\";s:2:\"32\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";s:10:\"text_align\";s:4:\"left\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:18:\"textshadow_opacity\";s:2:\"23\";s:10:\"font_color\";s:7:\"#000000\";s:16:\"textshadow_color\";s:7:\"#020202\";}'),(72,5,'popup_theme_content','a:4:{s:10:\"font_color\";s:7:\"#000000\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";}'),(73,5,'popup_theme_close','a:33:{s:4:\"text\";s:2:\"×\";s:15:\"position_bottom\";s:1:\"0\";s:14:\"position_right\";s:3:\"-24\";s:11:\"line_height\";s:2:\"26\";s:13:\"position_left\";s:1:\"0\";s:12:\"position_top\";s:3:\"-24\";s:7:\"padding\";s:1:\"0\";s:6:\"height\";s:2:\"30\";s:5:\"width\";s:2:\"30\";s:9:\"font_size\";s:2:\"24\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:13:\"border_radius\";s:2:\"30\";s:10:\"font_style\";s:0:\"\";s:12:\"border_color\";s:7:\"#ffffff\";s:8:\"location\";s:8:\"topright\";s:12:\"border_style\";s:5:\"solid\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:12:\"border_width\";s:1:\"2\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:15:\"boxshadow_inset\";s:2:\"no\";s:10:\"font_color\";s:7:\"#ffffff\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:1:\"0\";s:14:\"boxshadow_blur\";s:2:\"15\";s:16:\"boxshadow_spread\";s:1:\"1\";s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";s:3:\"100\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:17:\"boxshadow_opacity\";s:2:\"75\";s:16:\"textshadow_color\";s:7:\"#000000\";s:18:\"textshadow_opacity\";s:2:\"23\";}'),(74,5,'_pum_built_in','lightbox'),(75,6,'popup_theme_overlay','a:2:{s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";s:2:\"70\";}'),(76,6,'popup_theme_container','a:14:{s:16:\"background_color\";s:7:\"#ffffff\";s:7:\"padding\";s:2:\"28\";s:18:\"background_opacity\";s:3:\"100\";s:13:\"border_radius\";s:1:\"5\";s:12:\"border_color\";s:7:\"#000000\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_width\";s:1:\"1\";s:15:\"boxshadow_inset\";s:2:\"no\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:2:\"10\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:14:\"boxshadow_blur\";s:2:\"25\";s:17:\"boxshadow_opacity\";s:2:\"50\";s:16:\"boxshadow_spread\";s:1:\"4\";}'),(77,6,'popup_theme_title','a:12:{s:11:\"line_height\";s:2:\"36\";s:9:\"font_size\";s:2:\"34\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";s:10:\"text_align\";s:4:\"left\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:18:\"textshadow_opacity\";s:2:\"23\";s:10:\"font_color\";s:7:\"#315b7c\";s:16:\"textshadow_color\";s:7:\"#020202\";}'),(78,6,'popup_theme_content','a:4:{s:10:\"font_color\";s:7:\"#2d2d2d\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";}'),(79,6,'popup_theme_close','a:33:{s:4:\"text\";s:2:\"×\";s:15:\"position_bottom\";s:1:\"0\";s:14:\"position_right\";s:1:\"8\";s:11:\"line_height\";s:2:\"20\";s:13:\"position_left\";s:1:\"0\";s:12:\"position_top\";s:1:\"8\";s:7:\"padding\";s:1:\"4\";s:6:\"height\";s:2:\"28\";s:5:\"width\";s:2:\"28\";s:9:\"font_size\";s:2:\"20\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:13:\"border_radius\";s:2:\"42\";s:10:\"font_style\";s:0:\"\";s:12:\"border_color\";s:7:\"#ffffff\";s:8:\"location\";s:8:\"topright\";s:12:\"border_style\";s:4:\"none\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:12:\"border_width\";s:1:\"1\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:15:\"boxshadow_inset\";s:2:\"no\";s:10:\"font_color\";s:7:\"#ffffff\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:1:\"0\";s:14:\"boxshadow_blur\";s:1:\"0\";s:16:\"boxshadow_spread\";s:1:\"0\";s:16:\"background_color\";s:7:\"#315b7c\";s:18:\"background_opacity\";s:3:\"100\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:17:\"boxshadow_opacity\";s:2:\"23\";s:16:\"textshadow_color\";s:7:\"#000000\";s:18:\"textshadow_opacity\";s:2:\"23\";}'),(80,6,'_pum_built_in','enterprise-blue'),(81,7,'popup_theme_overlay','a:2:{s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";s:2:\"75\";}'),(82,7,'popup_theme_container','a:14:{s:16:\"background_color\";s:7:\"#ffffff\";s:7:\"padding\";s:2:\"30\";s:18:\"background_opacity\";s:3:\"100\";s:13:\"border_radius\";s:2:\"80\";s:12:\"border_color\";s:7:\"#81d742\";s:12:\"border_style\";s:5:\"solid\";s:12:\"border_width\";s:2:\"14\";s:15:\"boxshadow_inset\";s:2:\"no\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:1:\"0\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:14:\"boxshadow_blur\";s:1:\"0\";s:17:\"boxshadow_opacity\";s:1:\"0\";s:16:\"boxshadow_spread\";s:1:\"0\";}'),(83,7,'popup_theme_title','a:12:{s:11:\"line_height\";s:2:\"36\";s:9:\"font_size\";s:2:\"32\";s:11:\"font_family\";s:10:\"Montserrat\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";s:10:\"text_align\";s:4:\"left\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:18:\"textshadow_opacity\";s:2:\"23\";s:10:\"font_color\";s:7:\"#2d2d2d\";s:16:\"textshadow_color\";s:7:\"#020202\";}'),(84,7,'popup_theme_content','a:4:{s:10:\"font_color\";s:7:\"#2d2d2d\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";}'),(85,7,'popup_theme_close','a:33:{s:4:\"text\";s:2:\"×\";s:15:\"position_bottom\";s:1:\"0\";s:14:\"position_right\";s:3:\"-30\";s:11:\"line_height\";s:2:\"28\";s:13:\"position_left\";s:3:\"-30\";s:12:\"position_top\";s:3:\"-30\";s:7:\"padding\";s:1:\"0\";s:6:\"height\";s:1:\"0\";s:5:\"width\";s:1:\"0\";s:9:\"font_size\";s:2:\"32\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:13:\"border_radius\";s:2:\"28\";s:10:\"font_style\";s:0:\"\";s:12:\"border_color\";s:7:\"#ffffff\";s:8:\"location\";s:8:\"topright\";s:12:\"border_style\";s:4:\"none\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:12:\"border_width\";s:1:\"1\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:15:\"boxshadow_inset\";s:2:\"no\";s:10:\"font_color\";s:7:\"#2d2d2d\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:1:\"0\";s:14:\"boxshadow_blur\";s:1:\"0\";s:16:\"boxshadow_spread\";s:1:\"0\";s:16:\"background_color\";s:7:\"#ffffff\";s:18:\"background_opacity\";s:3:\"100\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:17:\"boxshadow_opacity\";s:2:\"23\";s:16:\"textshadow_color\";s:7:\"#000000\";s:18:\"textshadow_opacity\";s:2:\"23\";}'),(86,7,'_pum_built_in','hello-box'),(87,8,'popup_theme_overlay','a:2:{s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";s:2:\"50\";}'),(88,8,'popup_theme_container','a:14:{s:16:\"background_color\";s:7:\"#1e73be\";s:7:\"padding\";s:2:\"18\";s:18:\"background_opacity\";s:3:\"100\";s:13:\"border_radius\";s:1:\"0\";s:12:\"border_color\";s:7:\"#000000\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_width\";s:1:\"1\";s:15:\"boxshadow_inset\";s:2:\"no\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:2:\"10\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:14:\"boxshadow_blur\";s:2:\"25\";s:17:\"boxshadow_opacity\";s:2:\"50\";s:16:\"boxshadow_spread\";s:1:\"0\";}'),(89,8,'popup_theme_title','a:12:{s:11:\"line_height\";s:2:\"28\";s:9:\"font_size\";s:2:\"26\";s:11:\"font_family\";s:10:\"Sans-Serif\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";s:10:\"text_align\";s:4:\"left\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:18:\"textshadow_opacity\";s:2:\"23\";s:10:\"font_color\";s:7:\"#ffffff\";s:16:\"textshadow_color\";s:7:\"#020202\";}'),(90,8,'popup_theme_content','a:4:{s:10:\"font_color\";s:7:\"#ffffff\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";}'),(91,8,'popup_theme_close','a:33:{s:4:\"text\";s:2:\"×\";s:15:\"position_bottom\";s:1:\"0\";s:14:\"position_right\";s:1:\"0\";s:11:\"line_height\";s:2:\"24\";s:13:\"position_left\";s:1:\"0\";s:12:\"position_top\";s:1:\"0\";s:7:\"padding\";s:1:\"0\";s:6:\"height\";s:2:\"24\";s:5:\"width\";s:2:\"24\";s:9:\"font_size\";s:2:\"32\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:13:\"border_radius\";s:1:\"0\";s:10:\"font_style\";s:0:\"\";s:12:\"border_color\";s:7:\"#ffffff\";s:8:\"location\";s:8:\"topright\";s:12:\"border_style\";s:4:\"none\";s:21:\"textshadow_horizontal\";s:2:\"-1\";s:12:\"border_width\";s:1:\"1\";s:19:\"textshadow_vertical\";s:1:\"1\";s:15:\"textshadow_blur\";s:1:\"1\";s:15:\"boxshadow_inset\";s:2:\"no\";s:10:\"font_color\";s:7:\"#1e73be\";s:20:\"boxshadow_horizontal\";s:2:\"-1\";s:18:\"boxshadow_vertical\";s:1:\"1\";s:14:\"boxshadow_blur\";s:1:\"1\";s:16:\"boxshadow_spread\";s:1:\"0\";s:16:\"background_color\";s:7:\"#eeee22\";s:18:\"background_opacity\";s:3:\"100\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:17:\"boxshadow_opacity\";s:2:\"10\";s:16:\"textshadow_color\";s:7:\"#000000\";s:18:\"textshadow_opacity\";s:2:\"10\";}'),(92,8,'_pum_built_in','cutting-edge'),(93,9,'popup_theme_overlay','a:2:{s:16:\"background_color\";s:7:\"#ffffff\";s:18:\"background_opacity\";s:2:\"50\";}'),(94,9,'popup_theme_container','a:14:{s:16:\"background_color\";s:7:\"#fffbef\";s:7:\"padding\";s:2:\"18\";s:18:\"background_opacity\";s:3:\"100\";s:13:\"border_radius\";s:1:\"0\";s:12:\"border_color\";s:7:\"#dd3333\";s:12:\"border_style\";s:6:\"outset\";s:12:\"border_width\";s:2:\"20\";s:15:\"boxshadow_inset\";s:3:\"yes\";s:20:\"boxshadow_horizontal\";s:1:\"1\";s:18:\"boxshadow_vertical\";s:1:\"1\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:14:\"boxshadow_blur\";s:1:\"3\";s:17:\"boxshadow_opacity\";s:2:\"97\";s:16:\"boxshadow_spread\";s:1:\"0\";}'),(95,9,'popup_theme_title','a:12:{s:11:\"line_height\";s:2:\"36\";s:9:\"font_size\";s:2:\"32\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";s:10:\"text_align\";s:4:\"left\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:18:\"textshadow_opacity\";s:2:\"23\";s:10:\"font_color\";s:7:\"#000000\";s:16:\"textshadow_color\";s:7:\"#020202\";}'),(96,9,'popup_theme_content','a:4:{s:10:\"font_color\";s:7:\"#2d2d2d\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";}'),(97,9,'popup_theme_close','a:33:{s:4:\"text\";s:2:\"×\";s:15:\"position_bottom\";s:1:\"0\";s:14:\"position_right\";s:3:\"-20\";s:11:\"line_height\";s:2:\"20\";s:13:\"position_left\";s:3:\"-20\";s:12:\"position_top\";s:3:\"-20\";s:7:\"padding\";s:1:\"0\";s:6:\"height\";s:2:\"20\";s:5:\"width\";s:2:\"20\";s:9:\"font_size\";s:2:\"20\";s:11:\"font_family\";s:4:\"Acme\";s:11:\"font_weight\";s:0:\"\";s:13:\"border_radius\";s:1:\"0\";s:10:\"font_style\";s:0:\"\";s:12:\"border_color\";s:7:\"#ffffff\";s:8:\"location\";s:8:\"topright\";s:12:\"border_style\";s:4:\"none\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:12:\"border_width\";s:1:\"1\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:15:\"boxshadow_inset\";s:2:\"no\";s:10:\"font_color\";s:7:\"#ffffff\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:1:\"0\";s:14:\"boxshadow_blur\";s:1:\"0\";s:16:\"boxshadow_spread\";s:1:\"0\";s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";s:2:\"55\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:17:\"boxshadow_opacity\";s:2:\"23\";s:16:\"textshadow_color\";s:7:\"#000000\";s:18:\"textshadow_opacity\";s:2:\"23\";}'),(98,9,'_pum_built_in','framed-border'),(99,10,'_edit_last','1'),(100,10,'_edit_lock','1495224675:1'),(101,10,'popup_display','a:19:{s:4:\"size\";s:6:\"xlarge\";s:20:\"responsive_min_width\";s:3:\"100\";s:20:\"responsive_max_width\";s:3:\"100\";s:12:\"custom_width\";s:3:\"640\";s:13:\"custom_height\";s:3:\"380\";s:14:\"animation_type\";s:4:\"fade\";s:15:\"animation_speed\";s:3:\"350\";s:16:\"animation_origin\";s:10:\"center top\";s:15:\"position_bottom\";s:1:\"0\";s:8:\"location\";s:10:\"center top\";s:14:\"position_right\";s:1:\"0\";s:12:\"position_top\";s:3:\"100\";s:13:\"position_left\";s:1:\"0\";s:14:\"overlay_zindex\";s:10:\"1999999998\";s:6:\"zindex\";s:10:\"1999999999\";s:25:\"responsive_min_width_unit\";s:1:\"%\";s:25:\"responsive_max_width_unit\";s:1:\"%\";s:17:\"custom_width_unit\";s:2:\"px\";s:18:\"custom_height_unit\";s:2:\"px\";}'),(102,10,'popup_close','a:2:{s:4:\"text\";s:0:\"\";s:12:\"button_delay\";s:1:\"0\";}'),(103,10,'popup_title','Popup Iframe'),(104,10,'popup_theme','4'),(105,10,'popup_triggers','a:1:{i:0;a:2:{s:4:\"type\";s:9:\"auto_open\";s:8:\"settings\";a:2:{s:5:\"delay\";s:3:\"500\";s:6:\"cookie\";a:1:{s:4:\"name\";a:1:{i:0;s:6:\"pum-10\";}}}}}'),(106,10,'popup_cookies','a:1:{i:0;a:2:{s:5:\"event\";s:14:\"on_popup_close\";s:8:\"settings\";a:4:{s:4:\"name\";s:6:\"pum-10\";s:3:\"key\";s:0:\"\";s:4:\"time\";s:7:\"1 month\";s:4:\"path\";i:1;}}}'),(107,10,'popup_conditions','a:1:{i:0;a:1:{i:0;a:2:{s:11:\"not_operand\";i:0;s:6:\"target\";s:13:\"is_front_page\";}}}'),(108,1,'_edit_lock','1495227984:1'),(109,1,'_edit_last','1'),(114,10,'popup_open_count','4'),(115,10,'popup_open_count_total','4'),(116,10,'popup_last_opened','1495228836'),(117,18,'_wp_trash_meta_status','publish'),(118,18,'_wp_trash_meta_time','1495225130'),(119,21,'_wp_attached_file','2017/05/ingeneo.png'),(120,21,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:216;s:6:\"height\";i:142;s:4:\"file\";s:19:\"2017/05/ingeneo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"ingeneo-150x142.png\";s:5:\"width\";i:150;s:6:\"height\";i:142;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(121,1,'_thumbnail_id','21'),(134,27,'_wp_attached_file','2017/05/slide3.jpg'),(135,27,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:572;s:4:\"file\";s:18:\"2017/05/slide3.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide3-300x172.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide3-768x439.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"screenr-blog-grid-small\";a:4:{s:4:\"file\";s:18:\"slide3-350x200.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"screenr-blog-grid\";a:4:{s:4:\"file\";s:18:\"slide3-540x300.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"screenr-blog-list\";a:4:{s:4:\"file\";s:18:\"slide3-790x400.jpg\";s:5:\"width\";i:790;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"screenr-service-small\";a:4:{s:4:\"file\";s:18:\"slide3-538x280.jpg\";s:5:\"width\";i:538;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(136,28,'_wp_attached_file','2017/05/slide1.jpg'),(137,28,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:572;s:4:\"file\";s:18:\"2017/05/slide1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide1-300x172.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide1-768x439.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"screenr-blog-grid-small\";a:4:{s:4:\"file\";s:18:\"slide1-350x200.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"screenr-blog-grid\";a:4:{s:4:\"file\";s:18:\"slide1-540x300.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"screenr-blog-list\";a:4:{s:4:\"file\";s:18:\"slide1-790x400.jpg\";s:5:\"width\";i:790;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"screenr-service-small\";a:4:{s:4:\"file\";s:18:\"slide1-538x280.jpg\";s:5:\"width\";i:538;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(138,29,'_wp_attached_file','2017/05/slide2.jpg'),(139,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:572;s:4:\"file\";s:18:\"2017/05/slide2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide2-300x172.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide2-768x439.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"screenr-blog-grid-small\";a:4:{s:4:\"file\";s:18:\"slide2-350x200.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"screenr-blog-grid\";a:4:{s:4:\"file\";s:18:\"slide2-540x300.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"screenr-blog-list\";a:4:{s:4:\"file\";s:18:\"slide2-790x400.jpg\";s:5:\"width\";i:790;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"screenr-service-small\";a:4:{s:4:\"file\";s:18:\"slide2-538x280.jpg\";s:5:\"width\";i:538;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(144,32,'_edit_last','1'),(145,32,'_edit_lock','1495228694:1'),(146,32,'_wp_page_template','default'),(147,34,'_menu_item_type','custom'),(148,34,'_menu_item_menu_item_parent','0'),(149,34,'_menu_item_object_id','34'),(150,34,'_menu_item_object','custom'),(151,34,'_menu_item_target',''),(152,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(153,34,'_menu_item_xfn',''),(154,34,'_menu_item_url','http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/'),(155,34,'_menu_item_orphaned','1495228159'),(156,35,'_menu_item_type','post_type'),(157,35,'_menu_item_menu_item_parent','0'),(158,35,'_menu_item_object_id','2'),(159,35,'_menu_item_object','page'),(160,35,'_menu_item_target',''),(161,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(162,35,'_menu_item_xfn',''),(163,35,'_menu_item_url',''),(164,35,'_menu_item_orphaned','1495228160'),(165,36,'_menu_item_type','post_type'),(166,36,'_menu_item_menu_item_parent','0'),(167,36,'_menu_item_object_id','32'),(168,36,'_menu_item_object','page'),(169,36,'_menu_item_target',''),(170,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(171,36,'_menu_item_xfn',''),(172,36,'_menu_item_url',''),(173,36,'_menu_item_orphaned','1495228161'),(174,37,'_menu_item_type','post_type'),(175,37,'_menu_item_menu_item_parent','0'),(176,37,'_menu_item_object_id','32'),(177,37,'_menu_item_object','page'),(178,37,'_menu_item_target',''),(179,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(180,37,'_menu_item_xfn',''),(181,37,'_menu_item_url',''),(183,38,'_wp_trash_meta_status','publish'),(184,38,'_wp_trash_meta_time','1495228267'),(185,40,'_wp_attached_file','2017/05/slide4.jpg'),(186,40,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:572;s:4:\"file\";s:18:\"2017/05/slide4.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide4-300x172.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide4-768x439.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"screenr-blog-grid-small\";a:4:{s:4:\"file\";s:18:\"slide4-350x200.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"screenr-blog-grid\";a:4:{s:4:\"file\";s:18:\"slide4-540x300.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"screenr-blog-list\";a:4:{s:4:\"file\";s:18:\"slide4-790x400.jpg\";s:5:\"width\";i:790;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"screenr-service-small\";a:4:{s:4:\"file\";s:18:\"slide4-538x280.jpg\";s:5:\"width\";i:538;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

UNLOCK TABLES;

/*Table structure for table `wp_posts` */

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wp_posts` */

LOCK TABLES `wp_posts` WRITE;

insert  into `wp_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (1,1,'2017-05-19 15:49:52','2017-05-19 15:49:52','','Hello world!','','publish','open','open','','hello-world','','','2017-05-19 21:08:42','2017-05-19 21:08:42','',0,'http://pruebawp.dev:8080/?p=1',0,'post','',1),(2,1,'2017-05-19 15:49:52','2017-05-19 15:49:52','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://pruebawp.dev:8080/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','closed','open','','sample-page','','','2017-05-19 15:49:52','2017-05-19 15:49:52','',0,'http://pruebawp.dev:8080/?page_id=2',0,'page','',0),(3,1,'2017-05-19 15:53:16','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2017-05-19 15:53:16','0000-00-00 00:00:00','',0,'http://pruebawp.dev:8080/?p=3',0,'post','',0),(4,1,'2017-05-19 19:58:27','2017-05-19 19:58:27','','Default Theme','','publish','closed','closed','','default-theme','','','2017-05-19 19:58:27','2017-05-19 19:58:27','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/popup_theme/default-theme',0,'popup_theme','',0),(5,1,'2017-05-19 19:58:30','2017-05-19 19:58:30','','Light Box','','publish','closed','closed','','lightbox','','','2017-05-19 19:58:30','2017-05-19 19:58:30','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/popup_theme/lightbox',0,'popup_theme','',0),(6,1,'2017-05-19 19:58:30','2017-05-19 19:58:30','','Enterprise Blue','','publish','closed','closed','','enterprise-blue','','','2017-05-19 19:58:30','2017-05-19 19:58:30','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/popup_theme/enterprise-blue',0,'popup_theme','',0),(7,1,'2017-05-19 19:58:30','2017-05-19 19:58:30','','Hello Box','','publish','closed','closed','','hello-box','','','2017-05-19 19:58:30','2017-05-19 19:58:30','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/popup_theme/hello-box',0,'popup_theme','',0),(8,1,'2017-05-19 19:58:31','2017-05-19 19:58:31','','Cutting Edge','','publish','closed','closed','','cutting-edge','','','2017-05-19 19:58:31','2017-05-19 19:58:31','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/popup_theme/cutting-edge',0,'popup_theme','',0),(9,1,'2017-05-19 19:58:31','2017-05-19 19:58:31','','Framed Border','','publish','closed','closed','','framed-border','','','2017-05-19 19:58:31','2017-05-19 19:58:31','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/popup_theme/framed-border',0,'popup_theme','',0),(10,1,'2017-05-19 20:00:09','2017-05-19 20:00:09','<iframe\r\nsrc=\"https://a.cstmapp.com/p/18518?micro=1&utm_source=widget&utm_medium=embed\"\r\nwidth=\"100%\" height=\"500px\" frameborder=\"0\" scrolling=\"yes\" webkitallowfullscreen=\"true\"\r\nmozallowfullscreen=\"true\" allowfullscreen=\"true\"></iframe>','Popup Iframe','','publish','closed','closed','','popup-iframe','','','2017-05-19 20:12:36','2017-05-19 20:12:36','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/?post_type=popup&#038;p=10',0,'popup','',0),(11,1,'2017-05-19 20:00:09','2017-05-19 20:00:09','<iframe src=\"https://a.cstmapp.com/p/18518?micro=1&amp;utm_source=widget&amp;utm_medium=embed\" width=\"100%\" height=\"500px\" frameborder=\"0\" scrolling=\"yes\" allowfullscreen=\"allowfullscreen\"></iframe>','Popup Iframe','','inherit','closed','closed','','10-revision-v1','','','2017-05-19 20:00:09','2017-05-19 20:00:09','',10,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/11',0,'revision','',0),(12,1,'2017-05-19 20:59:46','2017-05-19 20:59:46','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\n<h3>Plugin Slide</h3>\n[slide_linea_directa\n\n&nbsp;','Hello world!','','inherit','closed','closed','','1-autosave-v1','','','2017-05-19 20:59:46','2017-05-19 20:59:46','',1,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/12',0,'revision','',0),(13,1,'2017-05-19 20:02:12','2017-05-19 20:02:12','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\n<a class=\"btn btn-theme-primary popmake-10\">Abrir PopUp</a>\r\n&nbsp;','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2017-05-19 20:02:12','2017-05-19 20:02:12','',1,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/13',0,'revision','',0),(14,1,'2017-05-19 20:04:41','2017-05-19 20:04:41','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\n<button class=\"popmake-10\">','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2017-05-19 20:04:41','2017-05-19 20:04:41','',1,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/14',0,'revision','',0),(15,1,'2017-05-19 20:08:28','2017-05-19 20:08:28','Hola','Popup Iframe','','inherit','closed','closed','','10-autosave-v1','','','2017-05-19 20:08:28','2017-05-19 20:08:28','',10,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/15',0,'revision','',0),(16,1,'2017-05-19 20:08:37','2017-05-19 20:08:37','Hola','Popup Iframe','','inherit','closed','closed','','10-revision-v1','','','2017-05-19 20:08:37','2017-05-19 20:08:37','',10,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/16',0,'revision','',0),(17,1,'2017-05-19 20:10:04','2017-05-19 20:10:04','<iframe\r\nsrc=\"https://a.cstmapp.com/p/18518?micro=1&utm_source=widget&utm_medium=embed\"\r\nwidth=\"100%\" height=\"500px\" frameborder=\"0\" scrolling=\"yes\" webkitallowfullscreen=\"true\"\r\nmozallowfullscreen=\"true\" allowfullscreen=\"true\"></iframe>','Popup Iframe','','inherit','closed','closed','','10-revision-v1','','','2017-05-19 20:10:04','2017-05-19 20:10:04','',10,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/17',0,'revision','',0),(18,1,'2017-05-19 20:18:50','2017-05-19 20:18:50','{\n    \"custom_css[screenr]\": {\n        \"value\": \"/*\\nPuedes a\\u00f1adir tu propio CSS aqu\\u00ed.\\n\\nHaz clic en el icono de ayuda de arriba para averiguar m\\u00e1s.\\n*/\\n@media (min-width: 200px) and (max-width: 750px) {\\n    .site-main{\\n        display: none;\\n    }\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','aecf0200-b852-4b3e-88a5-219c29df7efd','','','2017-05-19 20:18:50','2017-05-19 20:18:50','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/?p=18',0,'customize_changeset','',0),(19,1,'2017-05-19 20:18:50','2017-05-19 20:18:50','/*\nPuedes añadir tu propio CSS aquí.\n\nHaz clic en el icono de ayuda de arriba para averiguar más.\n*/\n@media (min-width: 200px) and (max-width: 750px) {\n    .site-main{\n        display: none;\n    }\n}\n\n@keyframes slidy {\n        0% { left: 0%; }\n        20% { left: 0%; }\n        25% { left: -100%; }\n        45% { left: -100%; }\n        50% { left: -200%; }\n        70% { left: -200%; }\n        75% { left: -300%; }\n        95% { left: -300%; }\n        100% { left: -400%; }\n    }\n\n    body { margin: 0; } \n    div#slider { overflow: hidden; }\n    div#slider figure img { width: 20%; float: left; }\n    div#slider figure { \n        position: relative;\n        width: 500%;\n        margin: 0;\n        left: 0;\n        text-align: left;\n        font-size: 0;\n        animation: 30s slidy infinite; \n    }','screenr','','publish','closed','closed','','screenr','','','2017-05-19 21:11:07','2017-05-19 21:11:07','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/19',0,'custom_css','',0),(20,1,'2017-05-19 20:18:50','2017-05-19 20:18:50','/*\nPuedes añadir tu propio CSS aquí.\n\nHaz clic en el icono de ayuda de arriba para averiguar más.\n*/\n@media (min-width: 200px) and (max-width: 750px) {\n    .site-main{\n        display: none;\n    }\n}\n','screenr','','inherit','closed','closed','','19-revision-v1','','','2017-05-19 20:18:50','2017-05-19 20:18:50','',19,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/20',0,'revision','',0),(21,1,'2017-05-19 20:27:35','2017-05-19 20:27:35','','ingeneo','','inherit','open','closed','','ingeneo','','','2017-05-19 20:27:35','2017-05-19 20:27:35','',1,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/wp-content/uploads/2017/05/ingeneo.png',0,'attachment','image/png',0),(22,1,'2017-05-19 20:27:41','2017-05-19 20:27:41','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\n&nbsp;','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2017-05-19 20:27:41','2017-05-19 20:27:41','',1,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/22',0,'revision','',0),(23,1,'2017-05-19 21:02:01','2017-05-19 21:02:01','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n<h3>Plugin Slide</h3>\r\n[slide_linea_directa slide1.jpg slide2.jpg slide3.jpg]\r\n\r\n&nbsp;','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2017-05-19 21:02:01','2017-05-19 21:02:01','',1,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/23',0,'revision','',0),(24,1,'2017-05-19 21:03:02','2017-05-19 21:03:02','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n<h3>Plugin Slide</h3>\r\n\r\n\r\n&nbsp;','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2017-05-19 21:03:02','2017-05-19 21:03:02','',1,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/24',0,'revision','',0),(25,1,'2017-05-19 21:03:32','2017-05-19 21:03:32','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n<br />\r\n<h1>Plugin Slide</h1>\r\n\r\n\r\n&nbsp;','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2017-05-19 21:03:32','2017-05-19 21:03:32','',1,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/25',0,'revision','',0),(26,1,'2017-05-19 21:04:22','2017-05-19 21:04:22','<h1>Plugin Slide</h1>\r\n&nbsp;','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2017-05-19 21:04:22','2017-05-19 21:04:22','',1,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/26',0,'revision','',0),(27,1,'2017-05-19 21:04:59','2017-05-19 21:04:59','','slide3','','inherit','open','closed','','slide3','','','2017-05-19 21:04:59','2017-05-19 21:04:59','',1,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/wp-content/uploads/2017/05/slide3.jpg',0,'attachment','image/jpeg',0),(28,1,'2017-05-19 21:05:03','2017-05-19 21:05:03','','slide1','','inherit','open','closed','','slide1','','','2017-05-19 21:05:03','2017-05-19 21:05:03','',1,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/wp-content/uploads/2017/05/slide1.jpg',0,'attachment','image/jpeg',0),(29,1,'2017-05-19 21:05:05','2017-05-19 21:05:05','','slide2','','inherit','open','closed','','slide2','','','2017-05-19 21:05:05','2017-05-19 21:05:05','',1,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/wp-content/uploads/2017/05/slide2.jpg',0,'attachment','image/jpeg',0),(30,1,'2017-05-19 21:06:41','2017-05-19 21:06:41','<h1>Plugin Slide</h1>\r\n[slide_linea_directa slide1.jpg slide2.jpg slide3.jpg]','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2017-05-19 21:06:41','2017-05-19 21:06:41','',1,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/30',0,'revision','',0),(31,1,'2017-05-19 21:08:42','2017-05-19 21:08:42','','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2017-05-19 21:08:42','2017-05-19 21:08:42','',1,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/31',0,'revision','',0),(32,1,'2017-05-19 21:09:03','2017-05-19 21:09:03','<h1>Plugin Slide</h1>\r\n[slide_linea_directa slide1.jpg slide2.jpg slide3.jpg silde4.jpg]','Slide','','publish','closed','closed','','slide','','','2017-05-19 21:18:13','2017-05-19 21:18:13','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/?page_id=32',0,'page','',0),(33,1,'2017-05-19 21:09:03','2017-05-19 21:09:03','<h1>Plugin Slide</h1>\r\n[slide_linea_directa slide1.jpg slide2.jpg slide3.jpg]','Slide','','inherit','closed','closed','','32-revision-v1','','','2017-05-19 21:09:03','2017-05-19 21:09:03','',32,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/33',0,'revision','',0),(34,1,'2017-05-19 21:09:19','0000-00-00 00:00:00','','Inicio','','draft','closed','closed','','','','','2017-05-19 21:09:19','0000-00-00 00:00:00','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/?p=34',1,'nav_menu_item','',0),(35,1,'2017-05-19 21:09:20','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2017-05-19 21:09:20','0000-00-00 00:00:00','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/?p=35',1,'nav_menu_item','',0),(36,1,'2017-05-19 21:09:20','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2017-05-19 21:09:20','0000-00-00 00:00:00','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/?p=36',1,'nav_menu_item','',0),(37,1,'2017-05-19 21:09:33','2017-05-19 21:09:33',' ','','','publish','closed','closed','','37','','','2017-05-19 21:09:52','2017-05-19 21:09:52','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/?p=37',1,'nav_menu_item','',0),(38,1,'2017-05-19 21:11:07','2017-05-19 21:11:07','{\n    \"custom_css[screenr]\": {\n        \"value\": \"/*\\nPuedes a\\u00f1adir tu propio CSS aqu\\u00ed.\\n\\nHaz clic en el icono de ayuda de arriba para averiguar m\\u00e1s.\\n*/\\n@media (min-width: 200px) and (max-width: 750px) {\\n    .site-main{\\n        display: none;\\n    }\\n}\\n\\n@keyframes slidy {\\n        0% { left: 0%; }\\n        20% { left: 0%; }\\n        25% { left: -100%; }\\n        45% { left: -100%; }\\n        50% { left: -200%; }\\n        70% { left: -200%; }\\n        75% { left: -300%; }\\n        95% { left: -300%; }\\n        100% { left: -400%; }\\n    }\\n\\n    body { margin: 0; } \\n    div#slider { overflow: hidden; }\\n    div#slider figure img { width: 20%; float: left; }\\n    div#slider figure { \\n        position: relative;\\n        width: 500%;\\n        margin: 0;\\n        left: 0;\\n        text-align: left;\\n        font-size: 0;\\n        animation: 30s slidy infinite; \\n    }\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','0b476501-5fa6-4dfc-9bc7-8d9c2269abc5','','','2017-05-19 21:11:07','2017-05-19 21:11:07','',0,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/38',0,'customize_changeset','',0),(39,1,'2017-05-19 21:11:07','2017-05-19 21:11:07','/*\nPuedes añadir tu propio CSS aquí.\n\nHaz clic en el icono de ayuda de arriba para averiguar más.\n*/\n@media (min-width: 200px) and (max-width: 750px) {\n    .site-main{\n        display: none;\n    }\n}\n\n@keyframes slidy {\n        0% { left: 0%; }\n        20% { left: 0%; }\n        25% { left: -100%; }\n        45% { left: -100%; }\n        50% { left: -200%; }\n        70% { left: -200%; }\n        75% { left: -300%; }\n        95% { left: -300%; }\n        100% { left: -400%; }\n    }\n\n    body { margin: 0; } \n    div#slider { overflow: hidden; }\n    div#slider figure img { width: 20%; float: left; }\n    div#slider figure { \n        position: relative;\n        width: 500%;\n        margin: 0;\n        left: 0;\n        text-align: left;\n        font-size: 0;\n        animation: 30s slidy infinite; \n    }','screenr','','inherit','closed','closed','','19-revision-v1','','','2017-05-19 21:11:07','2017-05-19 21:11:07','',19,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/39',0,'revision','',0),(40,1,'2017-05-19 21:15:28','2017-05-19 21:15:28','','slide4','','inherit','open','closed','','slide4','','','2017-05-19 21:15:28','2017-05-19 21:15:28','',32,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/wp-content/uploads/2017/05/slide4.jpg',0,'attachment','image/jpeg',0),(41,1,'2017-05-19 21:15:44','2017-05-19 21:15:44','<h1>Plugin Slide</h1>\r\n[slide_linea_directa slide1.jpg slide2.jpg slide3.jpg silde4.jpg]','Slide','','inherit','closed','closed','','32-revision-v1','','','2017-05-19 21:15:44','2017-05-19 21:15:44','',32,'http://localhost/pruebas/PruebaWordpress/pruebaLDWP-master/archives/41',0,'revision','',0);

UNLOCK TABLES;

/*Table structure for table `wp_term_relationships` */

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wp_term_relationships` */

LOCK TABLES `wp_term_relationships` WRITE;

insert  into `wp_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) values (1,1,0),(37,2,0);

UNLOCK TABLES;

/*Table structure for table `wp_term_taxonomy` */

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wp_term_taxonomy` */

LOCK TABLES `wp_term_taxonomy` WRITE;

insert  into `wp_term_taxonomy`(`term_taxonomy_id`,`term_id`,`taxonomy`,`description`,`parent`,`count`) values (1,1,'category','',0,1),(2,2,'nav_menu','',0,1);

UNLOCK TABLES;

/*Table structure for table `wp_termmeta` */

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wp_termmeta` */

LOCK TABLES `wp_termmeta` WRITE;

UNLOCK TABLES;

/*Table structure for table `wp_terms` */

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wp_terms` */

LOCK TABLES `wp_terms` WRITE;

insert  into `wp_terms`(`term_id`,`name`,`slug`,`term_group`) values (1,'Uncategorized','uncategorized',0),(2,'Menu 1','menu-1',0);

UNLOCK TABLES;

/*Table structure for table `wp_usermeta` */

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wp_usermeta` */

LOCK TABLES `wp_usermeta` WRITE;

insert  into `wp_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (1,1,'nickname','admin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'locale',''),(11,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(12,1,'wp_user_level','10'),(13,1,'dismissed_wp_pointers',''),(14,1,'show_welcome_panel','1'),(16,1,'wp_dashboard_quick_press_last_post_id','3'),(17,1,'session_tokens','a:2:{s:64:\"3e2f48f9c40d056443de3dfdad6ab211d9407882f619ee6bfa160e122bba9098\";a:4:{s:10:\"expiration\";i:1495383555;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:112:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3104.0 Safari/537.36\";s:5:\"login\";i:1495210755;}s:64:\"21ce5d83be3e2199eb9ed5cd925464abf073f85814e75bf36eda0d4f0d5dbc69\";a:4:{s:10:\"expiration\";i:1495396432;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0\";s:5:\"login\";i:1495223632;}}'),(18,1,'wp_user-settings','editor=tinymce&libraryContent=browse'),(19,1,'wp_user-settings-time','1495227999'),(20,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(21,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');

UNLOCK TABLES;

/*Table structure for table `wp_users` */

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wp_users` */

LOCK TABLES `wp_users` WRITE;

insert  into `wp_users`(`ID`,`user_login`,`user_pass`,`user_nicename`,`user_email`,`user_url`,`user_registered`,`user_activation_key`,`user_status`,`display_name`) values (1,'admin','$P$BBmqumoBRYQgO371UcnlXageI85INC/','admin','dev@lineadirecta.com.co','','2017-05-19 15:49:50','',0,'admin');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;