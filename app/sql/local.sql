-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (43,'action_scheduler/migration_hook','complete','2023-08-21 18:49:53','2023-08-21 18:49:53','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1692643793;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1692643793;}',1,1,'2023-08-21 18:49:53','2023-08-21 18:49:53',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (44,'wpforms_process_forms_locator_scan','complete','2023-08-21 18:49:53','2023-08-21 18:49:53','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1692643793;s:18:\"\0*\0first_timestamp\";i:1692643793;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1692643793;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-08-21 18:49:53','2023-08-21 18:49:53',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (45,'wpforms_email_summaries_fetch_info_blocks','complete','2023-08-19 11:15:29','2023-08-19 11:15:29','{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1692443729;s:18:\"\0*\0first_timestamp\";i:1692443729;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1692443729;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2023-08-21 18:49:53','2023-08-21 18:49:53',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (46,'wpforms_email_summaries_fetch_info_blocks','pending','2023-08-28 18:49:53','2023-08-28 18:49:53','{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1693248593;s:18:\"\0*\0first_timestamp\";i:1692443729;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1693248593;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (47,'wpforms_process_forms_locator_scan','complete','2023-08-22 18:49:53','2023-08-22 18:49:53','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1692730193;s:18:\"\0*\0first_timestamp\";i:1692643793;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1692730193;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-08-22 18:50:55','2023-08-22 18:50:55',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (48,'wpforms_admin_addons_cache_update','pending','2023-08-28 18:50:19','2023-08-28 18:50:19','{\"tasks_meta_id\":2}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1693248619;s:18:\"\0*\0first_timestamp\";i:1693248619;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1693248619;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (49,'wpforms_admin_builder_templates_cache_update','pending','2023-08-28 18:50:19','2023-08-28 18:50:19','{\"tasks_meta_id\":3}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1693248619;s:18:\"\0*\0first_timestamp\";i:1693248619;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1693248619;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (50,'wpforms_builder_help_cache_update','pending','2023-08-28 18:50:20','2023-08-28 18:50:20','{\"tasks_meta_id\":4}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1693248620;s:18:\"\0*\0first_timestamp\";i:1693248620;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1693248620;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (51,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":5}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-08-21 18:51:15','2023-08-21 18:51:15',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (52,'wpforms_process_forms_locator_scan','complete','2023-08-23 18:50:55','2023-08-23 18:50:55','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1692816655;s:18:\"\0*\0first_timestamp\";i:1692643793;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1692816655;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-08-23 18:51:54','2023-08-23 18:51:54',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (53,'wpforms_admin_notifications_update','complete','2023-08-22 18:51:24','2023-08-22 18:51:24','{\"tasks_meta_id\":6}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-08-22 18:51:24','2023-08-22 18:51:24',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (54,'wpforms_process_forms_locator_scan','pending','2023-08-24 18:51:54','2023-08-24 18:51:54','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1692903114;s:18:\"\0*\0first_timestamp\";i:1692643793;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1692903114;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (55,'wpforms_admin_notifications_update','complete','2023-08-23 19:18:47','2023-08-23 19:18:47','{\"tasks_meta_id\":7}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-08-23 19:18:47','2023-08-23 19:18:47',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
INSERT INTO `wp_actionscheduler_groups` VALUES (2,'wpforms');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,43,'action created','2023-08-21 18:48:53','2023-08-21 18:48:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (2,43,'action started via WP Cron','2023-08-21 18:49:53','2023-08-21 18:49:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (3,43,'action complete via WP Cron','2023-08-21 18:49:53','2023-08-21 18:49:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (4,44,'action created','2023-08-21 18:49:53','2023-08-21 18:49:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (5,45,'action created','2023-08-21 18:49:53','2023-08-21 18:49:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (6,45,'action started via Async Request','2023-08-21 18:49:53','2023-08-21 18:49:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (7,45,'action complete via Async Request','2023-08-21 18:49:53','2023-08-21 18:49:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (8,46,'action created','2023-08-21 18:49:53','2023-08-21 18:49:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (9,44,'action started via Async Request','2023-08-21 18:49:53','2023-08-21 18:49:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (10,44,'action complete via Async Request','2023-08-21 18:49:53','2023-08-21 18:49:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (11,47,'action created','2023-08-21 18:49:53','2023-08-21 18:49:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (12,48,'action created','2023-08-21 18:50:19','2023-08-21 18:50:19');
INSERT INTO `wp_actionscheduler_logs` VALUES (13,49,'action created','2023-08-21 18:50:19','2023-08-21 18:50:19');
INSERT INTO `wp_actionscheduler_logs` VALUES (14,50,'action created','2023-08-21 18:50:20','2023-08-21 18:50:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (15,51,'action created','2023-08-21 18:50:20','2023-08-21 18:50:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (16,51,'action started via WP Cron','2023-08-21 18:51:15','2023-08-21 18:51:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (17,51,'action complete via WP Cron','2023-08-21 18:51:15','2023-08-21 18:51:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (18,47,'action started via WP Cron','2023-08-22 18:50:55','2023-08-22 18:50:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (19,47,'action complete via WP Cron','2023-08-22 18:50:55','2023-08-22 18:50:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (20,52,'action created','2023-08-22 18:50:55','2023-08-22 18:50:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (21,53,'action created','2023-08-22 18:51:24','2023-08-22 18:51:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (22,53,'action started via WP Cron','2023-08-22 18:51:24','2023-08-22 18:51:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (23,53,'action complete via WP Cron','2023-08-22 18:51:24','2023-08-22 18:51:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (24,52,'action started via WP Cron','2023-08-23 18:51:54','2023-08-23 18:51:54');
INSERT INTO `wp_actionscheduler_logs` VALUES (25,52,'action complete via WP Cron','2023-08-23 18:51:54','2023-08-23 18:51:54');
INSERT INTO `wp_actionscheduler_logs` VALUES (26,54,'action created','2023-08-23 18:51:54','2023-08-23 18:51:54');
INSERT INTO `wp_actionscheduler_logs` VALUES (27,55,'action created','2023-08-23 19:18:47','2023-08-23 19:18:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (28,55,'action started via WP Cron','2023-08-23 19:18:47','2023-08-23 19:18:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (29,55,'action complete via WP Cron','2023-08-23 19:18:47','2023-08-23 19:18:47');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-08-20 18:40:47','2023-08-20 18:40:47','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_imagify_files`
--

DROP TABLE IF EXISTS `wp_imagify_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_imagify_files` (
  `file_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `file_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `path` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `hash` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `modified` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `width` smallint(2) unsigned NOT NULL DEFAULT '0',
  `height` smallint(2) unsigned NOT NULL DEFAULT '0',
  `original_size` int(4) unsigned NOT NULL DEFAULT '0',
  `optimized_size` int(4) unsigned DEFAULT NULL,
  `percent` smallint(2) unsigned DEFAULT NULL,
  `optimization_level` tinyint(1) unsigned DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `path` (`path`),
  KEY `folder_id` (`folder_id`),
  KEY `optimization_level` (`optimization_level`),
  KEY `status` (`status`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_imagify_files`
--

LOCK TABLES `wp_imagify_files` WRITE;
/*!40000 ALTER TABLE `wp_imagify_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_imagify_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_imagify_folders`
--

DROP TABLE IF EXISTS `wp_imagify_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_imagify_folders` (
  `folder_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  UNIQUE KEY `path` (`path`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_imagify_folders`
--

LOCK TABLES `wp_imagify_folders` WRITE;
/*!40000 ALTER TABLE `wp_imagify_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_imagify_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=664 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://vine-dine-event-catering.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://vine-dine-event-catering.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Vine &amp; Dine Event Catering','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";i:3;s:19:\"imagify/imagify.php\";i:4;s:23:\"wordfence/wordfence.php\";i:5;s:24:\"wpforms-lite/wpforms.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','vine-dine-events-catering','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','vine-dine-events-catering','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','55853','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','16','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','8','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1708108847','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','55853','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:64:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:18:{i:1692821122;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1692823261;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1692823350;a:1:{s:21:\"wordfence_ls_ntp_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1692823355;a:1:{s:21:\"wordfence_hourly_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1692842400;a:1:{s:18:\"imagify_sync_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692859248;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1692859285;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1692889200;a:1:{s:20:\"imagify_rating_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692902448;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692902485;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692902486;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692902555;a:1:{s:20:\"wordfence_daily_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693161710;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1693231200;a:1:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:30:\"wpforms_email_summaries_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1693238400;a:1:{s:31:\"wordfence_email_activity_report\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1693248048;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1693368000;a:1:{s:46:\"imagify_update_library_size_calculations_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'_transient_wp_core_block_css_files','a:496:{i:0;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/archives/editor-rtl.css\";i:1;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/archives/editor-rtl.min.css\";i:2;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/archives/editor.css\";i:3;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/archives/editor.min.css\";i:4;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/archives/style-rtl.css\";i:5;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/archives/style-rtl.min.css\";i:6;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/archives/style.css\";i:7;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/archives/style.min.css\";i:8;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/audio/editor-rtl.css\";i:9;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/audio/editor-rtl.min.css\";i:10;s:94:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/audio/editor.css\";i:11;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/audio/editor.min.css\";i:12;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/audio/style-rtl.css\";i:13;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/audio/style-rtl.min.css\";i:14;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/audio/style.css\";i:15;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/audio/style.min.css\";i:16;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/audio/theme-rtl.css\";i:17;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/audio/theme-rtl.min.css\";i:18;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/audio/theme.css\";i:19;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/audio/theme.min.css\";i:20;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/avatar/editor-rtl.css\";i:21;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/avatar/editor-rtl.min.css\";i:22;s:95:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/avatar/editor.css\";i:23;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/avatar/editor.min.css\";i:24;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/avatar/style-rtl.css\";i:25;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/avatar/style-rtl.min.css\";i:26;s:94:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/avatar/style.css\";i:27;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/avatar/style.min.css\";i:28;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/block/editor-rtl.css\";i:29;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/block/editor-rtl.min.css\";i:30;s:94:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/block/editor.css\";i:31;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/block/editor.min.css\";i:32;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/button/editor-rtl.css\";i:33;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/button/editor-rtl.min.css\";i:34;s:95:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/button/editor.css\";i:35;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/button/editor.min.css\";i:36;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/button/style-rtl.css\";i:37;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/button/style-rtl.min.css\";i:38;s:94:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/button/style.css\";i:39;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/button/style.min.css\";i:40;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/buttons/editor-rtl.css\";i:41;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/buttons/editor-rtl.min.css\";i:42;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/buttons/editor.css\";i:43;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/buttons/editor.min.css\";i:44;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/buttons/style-rtl.css\";i:45;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/buttons/style-rtl.min.css\";i:46;s:95:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/buttons/style.css\";i:47;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/buttons/style.min.css\";i:48;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/calendar/style-rtl.css\";i:49;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/calendar/style-rtl.min.css\";i:50;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/calendar/style.css\";i:51;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/calendar/style.min.css\";i:52;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/categories/editor-rtl.css\";i:53;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/categories/editor-rtl.min.css\";i:54;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/categories/editor.css\";i:55;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/categories/editor.min.css\";i:56;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/categories/style-rtl.css\";i:57;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/categories/style-rtl.min.css\";i:58;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/categories/style.css\";i:59;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/categories/style.min.css\";i:60;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/code/editor-rtl.css\";i:61;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/code/editor-rtl.min.css\";i:62;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/code/editor.css\";i:63;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/code/editor.min.css\";i:64;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/code/style-rtl.css\";i:65;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/code/style-rtl.min.css\";i:66;s:92:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/code/style.css\";i:67;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/code/style.min.css\";i:68;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/code/theme-rtl.css\";i:69;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/code/theme-rtl.min.css\";i:70;s:92:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/code/theme.css\";i:71;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/code/theme.min.css\";i:72;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/columns/editor-rtl.css\";i:73;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/columns/editor-rtl.min.css\";i:74;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/columns/editor.css\";i:75;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/columns/editor.min.css\";i:76;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/columns/style-rtl.css\";i:77;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/columns/style-rtl.min.css\";i:78;s:95:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/columns/style.css\";i:79;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/columns/style.min.css\";i:80;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comment-content/style-rtl.css\";i:81;s:111:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comment-content/style-rtl.min.css\";i:82;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comment-content/style.css\";i:83;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comment-content/style.min.css\";i:84;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comment-template/style-rtl.css\";i:85;s:112:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comment-template/style-rtl.min.css\";i:86;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comment-template/style.css\";i:87;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comment-template/style.min.css\";i:88;s:120:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-pagination-numbers/editor-rtl.css\";i:89;s:124:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-pagination-numbers/editor-rtl.min.css\";i:90;s:116:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-pagination-numbers/editor.css\";i:91;s:120:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-pagination-numbers/editor.min.css\";i:92;s:112:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-pagination/editor-rtl.css\";i:93;s:116:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-pagination/editor-rtl.min.css\";i:94;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-pagination/editor.css\";i:95;s:112:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-pagination/editor.min.css\";i:96;s:111:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-pagination/style-rtl.css\";i:97;s:115:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-pagination/style-rtl.min.css\";i:98;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-pagination/style.css\";i:99;s:111:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-pagination/style.min.css\";i:100;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-title/editor-rtl.css\";i:101;s:111:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-title/editor-rtl.min.css\";i:102;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-title/editor.css\";i:103;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments-title/editor.min.css\";i:104;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments/editor-rtl.css\";i:105;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments/editor-rtl.min.css\";i:106;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments/editor.css\";i:107;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments/editor.min.css\";i:108;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments/style-rtl.css\";i:109;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments/style-rtl.min.css\";i:110;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments/style.css\";i:111;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/comments/style.min.css\";i:112;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/cover/editor-rtl.css\";i:113;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/cover/editor-rtl.min.css\";i:114;s:94:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/cover/editor.css\";i:115;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/cover/editor.min.css\";i:116;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/cover/style-rtl.css\";i:117;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/cover/style-rtl.min.css\";i:118;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/cover/style.css\";i:119;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/cover/style.min.css\";i:120;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/details/editor-rtl.css\";i:121;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/details/editor-rtl.min.css\";i:122;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/details/editor.css\";i:123;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/details/editor.min.css\";i:124;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/details/style-rtl.css\";i:125;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/details/style-rtl.min.css\";i:126;s:95:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/details/style.css\";i:127;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/details/style.min.css\";i:128;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/embed/editor-rtl.css\";i:129;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/embed/editor-rtl.min.css\";i:130;s:94:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/embed/editor.css\";i:131;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/embed/editor.min.css\";i:132;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/embed/style-rtl.css\";i:133;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/embed/style-rtl.min.css\";i:134;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/embed/style.css\";i:135;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/embed/style.min.css\";i:136;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/embed/theme-rtl.css\";i:137;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/embed/theme-rtl.min.css\";i:138;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/embed/theme.css\";i:139;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/embed/theme.min.css\";i:140;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/file/editor-rtl.css\";i:141;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/file/editor-rtl.min.css\";i:142;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/file/editor.css\";i:143;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/file/editor.min.css\";i:144;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/file/style-rtl.css\";i:145;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/file/style-rtl.min.css\";i:146;s:92:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/file/style.css\";i:147;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/file/style.min.css\";i:148;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/footnotes/style-rtl.css\";i:149;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/footnotes/style-rtl.min.css\";i:150;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/footnotes/style.css\";i:151;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/footnotes/style.min.css\";i:152;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/freeform/editor-rtl.css\";i:153;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/freeform/editor-rtl.min.css\";i:154;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/freeform/editor.css\";i:155;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/freeform/editor.min.css\";i:156;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/gallery/editor-rtl.css\";i:157;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/gallery/editor-rtl.min.css\";i:158;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/gallery/editor.css\";i:159;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/gallery/editor.min.css\";i:160;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/gallery/style-rtl.css\";i:161;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/gallery/style-rtl.min.css\";i:162;s:95:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/gallery/style.css\";i:163;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/gallery/style.min.css\";i:164;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/gallery/theme-rtl.css\";i:165;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/gallery/theme-rtl.min.css\";i:166;s:95:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/gallery/theme.css\";i:167;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/gallery/theme.min.css\";i:168;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/group/editor-rtl.css\";i:169;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/group/editor-rtl.min.css\";i:170;s:94:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/group/editor.css\";i:171;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/group/editor.min.css\";i:172;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/group/style-rtl.css\";i:173;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/group/style-rtl.min.css\";i:174;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/group/style.css\";i:175;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/group/style.min.css\";i:176;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/group/theme-rtl.css\";i:177;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/group/theme-rtl.min.css\";i:178;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/group/theme.css\";i:179;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/group/theme.min.css\";i:180;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/heading/style-rtl.css\";i:181;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/heading/style-rtl.min.css\";i:182;s:95:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/heading/style.css\";i:183;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/heading/style.min.css\";i:184;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/html/editor-rtl.css\";i:185;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/html/editor-rtl.min.css\";i:186;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/html/editor.css\";i:187;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/html/editor.min.css\";i:188;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/image/editor-rtl.css\";i:189;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/image/editor-rtl.min.css\";i:190;s:94:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/image/editor.css\";i:191;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/image/editor.min.css\";i:192;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/image/style-rtl.css\";i:193;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/image/style-rtl.min.css\";i:194;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/image/style.css\";i:195;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/image/style.min.css\";i:196;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/image/theme-rtl.css\";i:197;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/image/theme-rtl.min.css\";i:198;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/image/theme.css\";i:199;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/image/theme.min.css\";i:200;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/latest-comments/style-rtl.css\";i:201;s:111:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/latest-comments/style-rtl.min.css\";i:202;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/latest-comments/style.css\";i:203;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/latest-comments/style.min.css\";i:204;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/latest-posts/editor-rtl.css\";i:205;s:109:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/latest-posts/editor-rtl.min.css\";i:206;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/latest-posts/editor.css\";i:207;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/latest-posts/editor.min.css\";i:208;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/latest-posts/style-rtl.css\";i:209;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/latest-posts/style-rtl.min.css\";i:210;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/latest-posts/style.css\";i:211;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/latest-posts/style.min.css\";i:212;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/list/style-rtl.css\";i:213;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/list/style-rtl.min.css\";i:214;s:92:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/list/style.css\";i:215;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/list/style.min.css\";i:216;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/media-text/editor-rtl.css\";i:217;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/media-text/editor-rtl.min.css\";i:218;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/media-text/editor.css\";i:219;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/media-text/editor.min.css\";i:220;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/media-text/style-rtl.css\";i:221;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/media-text/style-rtl.min.css\";i:222;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/media-text/style.css\";i:223;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/media-text/style.min.css\";i:224;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/more/editor-rtl.css\";i:225;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/more/editor-rtl.min.css\";i:226;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/more/editor.css\";i:227;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/more/editor.min.css\";i:228;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation-link/editor-rtl.css\";i:229;s:112:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation-link/editor-rtl.min.css\";i:230;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation-link/editor.css\";i:231;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation-link/editor.min.css\";i:232;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation-link/style-rtl.css\";i:233;s:111:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation-link/style-rtl.min.css\";i:234;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation-link/style.css\";i:235;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation-link/style.min.css\";i:236;s:111:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation-submenu/editor-rtl.css\";i:237;s:115:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation-submenu/editor-rtl.min.css\";i:238;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation-submenu/editor.css\";i:239;s:111:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation-submenu/editor.min.css\";i:240;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation/editor-rtl.css\";i:241;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation/editor-rtl.min.css\";i:242;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation/editor.css\";i:243;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation/editor.min.css\";i:244;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation/style-rtl.css\";i:245;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation/style-rtl.min.css\";i:246;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation/style.css\";i:247;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/navigation/style.min.css\";i:248;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/nextpage/editor-rtl.css\";i:249;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/nextpage/editor-rtl.min.css\";i:250;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/nextpage/editor.css\";i:251;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/nextpage/editor.min.css\";i:252;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/page-list/editor-rtl.css\";i:253;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/page-list/editor-rtl.min.css\";i:254;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/page-list/editor.css\";i:255;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/page-list/editor.min.css\";i:256;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/page-list/style-rtl.css\";i:257;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/page-list/style-rtl.min.css\";i:258;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/page-list/style.css\";i:259;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/page-list/style.min.css\";i:260;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/paragraph/editor-rtl.css\";i:261;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/paragraph/editor-rtl.min.css\";i:262;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/paragraph/editor.css\";i:263;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/paragraph/editor.min.css\";i:264;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/paragraph/style-rtl.css\";i:265;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/paragraph/style-rtl.min.css\";i:266;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/paragraph/style.css\";i:267;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/paragraph/style.min.css\";i:268;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-author/style-rtl.css\";i:269;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-author/style-rtl.min.css\";i:270;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-author/style.css\";i:271;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-author/style.min.css\";i:272;s:111:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-comments-form/editor-rtl.css\";i:273;s:115:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-comments-form/editor-rtl.min.css\";i:274;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-comments-form/editor.css\";i:275;s:111:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-comments-form/editor.min.css\";i:276;s:110:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-comments-form/style-rtl.css\";i:277;s:114:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-comments-form/style-rtl.min.css\";i:278;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-comments-form/style.css\";i:279;s:110:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-comments-form/style.min.css\";i:280;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-date/style-rtl.css\";i:281;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-date/style-rtl.min.css\";i:282;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-date/style.css\";i:283;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-date/style.min.css\";i:284;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-excerpt/editor-rtl.css\";i:285;s:109:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-excerpt/editor-rtl.min.css\";i:286;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-excerpt/editor.css\";i:287;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-excerpt/editor.min.css\";i:288;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-excerpt/style-rtl.css\";i:289;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-excerpt/style-rtl.min.css\";i:290;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-excerpt/style.css\";i:291;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-excerpt/style.min.css\";i:292;s:112:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-featured-image/editor-rtl.css\";i:293;s:116:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-featured-image/editor-rtl.min.css\";i:294;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-featured-image/editor.css\";i:295;s:112:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-featured-image/editor.min.css\";i:296;s:111:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-featured-image/style-rtl.css\";i:297;s:115:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-featured-image/style-rtl.min.css\";i:298;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-featured-image/style.css\";i:299;s:111:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-featured-image/style.min.css\";i:300;s:112:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-navigation-link/style-rtl.css\";i:301;s:116:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-navigation-link/style-rtl.min.css\";i:302;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-navigation-link/style.css\";i:303;s:112:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-navigation-link/style.min.css\";i:304;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-template/editor-rtl.css\";i:305;s:110:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-template/editor-rtl.min.css\";i:306;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-template/editor.css\";i:307;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-template/editor.min.css\";i:308;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-template/style-rtl.css\";i:309;s:109:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-template/style-rtl.min.css\";i:310;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-template/style.css\";i:311;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-template/style.min.css\";i:312;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-terms/style-rtl.css\";i:313;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-terms/style-rtl.min.css\";i:314;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-terms/style.css\";i:315;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-terms/style.min.css\";i:316;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-title/style-rtl.css\";i:317;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-title/style-rtl.min.css\";i:318;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-title/style.css\";i:319;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/post-title/style.min.css\";i:320;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/preformatted/style-rtl.css\";i:321;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/preformatted/style-rtl.min.css\";i:322;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/preformatted/style.css\";i:323;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/preformatted/style.min.css\";i:324;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/pullquote/editor-rtl.css\";i:325;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/pullquote/editor-rtl.min.css\";i:326;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/pullquote/editor.css\";i:327;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/pullquote/editor.min.css\";i:328;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/pullquote/style-rtl.css\";i:329;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/pullquote/style-rtl.min.css\";i:330;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/pullquote/style.css\";i:331;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/pullquote/style.min.css\";i:332;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/pullquote/theme-rtl.css\";i:333;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/pullquote/theme-rtl.min.css\";i:334;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/pullquote/theme.css\";i:335;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/pullquote/theme.min.css\";i:336;s:117:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-pagination-numbers/editor-rtl.css\";i:337;s:121:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-pagination-numbers/editor-rtl.min.css\";i:338;s:113:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-pagination-numbers/editor.css\";i:339;s:117:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-pagination-numbers/editor.min.css\";i:340;s:109:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-pagination/editor-rtl.css\";i:341;s:113:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-pagination/editor-rtl.min.css\";i:342;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-pagination/editor.css\";i:343;s:109:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-pagination/editor.min.css\";i:344;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-pagination/style-rtl.css\";i:345;s:112:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-pagination/style-rtl.min.css\";i:346;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-pagination/style.css\";i:347;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-pagination/style.min.css\";i:348;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-title/style-rtl.css\";i:349;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-title/style-rtl.min.css\";i:350;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-title/style.css\";i:351;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query-title/style.min.css\";i:352;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query/editor-rtl.css\";i:353;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query/editor-rtl.min.css\";i:354;s:94:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query/editor.css\";i:355;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/query/editor.min.css\";i:356;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/quote/style-rtl.css\";i:357;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/quote/style-rtl.min.css\";i:358;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/quote/style.css\";i:359;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/quote/style.min.css\";i:360;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/quote/theme-rtl.css\";i:361;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/quote/theme-rtl.min.css\";i:362;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/quote/theme.css\";i:363;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/quote/theme.min.css\";i:364;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/read-more/style-rtl.css\";i:365;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/read-more/style-rtl.min.css\";i:366;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/read-more/style.css\";i:367;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/read-more/style.min.css\";i:368;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/rss/editor-rtl.css\";i:369;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/rss/editor-rtl.min.css\";i:370;s:92:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/rss/editor.css\";i:371;s:96:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/rss/editor.min.css\";i:372;s:95:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/rss/style-rtl.css\";i:373;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/rss/style-rtl.min.css\";i:374;s:91:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/rss/style.css\";i:375;s:95:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/rss/style.min.css\";i:376;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/search/editor-rtl.css\";i:377;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/search/editor-rtl.min.css\";i:378;s:95:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/search/editor.css\";i:379;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/search/editor.min.css\";i:380;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/search/style-rtl.css\";i:381;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/search/style-rtl.min.css\";i:382;s:94:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/search/style.css\";i:383;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/search/style.min.css\";i:384;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/search/theme-rtl.css\";i:385;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/search/theme-rtl.min.css\";i:386;s:94:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/search/theme.css\";i:387;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/search/theme.min.css\";i:388;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/separator/editor-rtl.css\";i:389;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/separator/editor-rtl.min.css\";i:390;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/separator/editor.css\";i:391;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/separator/editor.min.css\";i:392;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/separator/style-rtl.css\";i:393;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/separator/style-rtl.min.css\";i:394;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/separator/style.css\";i:395;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/separator/style.min.css\";i:396;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/separator/theme-rtl.css\";i:397;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/separator/theme-rtl.min.css\";i:398;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/separator/theme.css\";i:399;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/separator/theme.min.css\";i:400;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/shortcode/editor-rtl.css\";i:401;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/shortcode/editor-rtl.min.css\";i:402;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/shortcode/editor.css\";i:403;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/shortcode/editor.min.css\";i:404;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-logo/editor-rtl.css\";i:405;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-logo/editor-rtl.min.css\";i:406;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-logo/editor.css\";i:407;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-logo/editor.min.css\";i:408;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-logo/style-rtl.css\";i:409;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-logo/style-rtl.min.css\";i:410;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-logo/style.css\";i:411;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-logo/style.min.css\";i:412;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-tagline/editor-rtl.css\";i:413;s:109:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-tagline/editor-rtl.min.css\";i:414;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-tagline/editor.css\";i:415;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-tagline/editor.min.css\";i:416;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-title/editor-rtl.css\";i:417;s:107:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-title/editor-rtl.min.css\";i:418;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-title/editor.css\";i:419;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-title/editor.min.css\";i:420;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-title/style-rtl.css\";i:421;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-title/style-rtl.min.css\";i:422;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-title/style.css\";i:423;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/site-title/style.min.css\";i:424;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/social-link/editor-rtl.css\";i:425;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/social-link/editor-rtl.min.css\";i:426;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/social-link/editor.css\";i:427;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/social-link/editor.min.css\";i:428;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/social-links/editor-rtl.css\";i:429;s:109:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/social-links/editor-rtl.min.css\";i:430;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/social-links/editor.css\";i:431;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/social-links/editor.min.css\";i:432;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/social-links/style-rtl.css\";i:433;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/social-links/style-rtl.min.css\";i:434;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/social-links/style.css\";i:435;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/social-links/style.min.css\";i:436;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/spacer/editor-rtl.css\";i:437;s:103:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/spacer/editor-rtl.min.css\";i:438;s:95:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/spacer/editor.css\";i:439;s:99:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/spacer/editor.min.css\";i:440;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/spacer/style-rtl.css\";i:441;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/spacer/style-rtl.min.css\";i:442;s:94:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/spacer/style.css\";i:443;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/spacer/style.min.css\";i:444;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/table/editor-rtl.css\";i:445;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/table/editor-rtl.min.css\";i:446;s:94:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/table/editor.css\";i:447;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/table/editor.min.css\";i:448;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/table/style-rtl.css\";i:449;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/table/style-rtl.min.css\";i:450;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/table/style.css\";i:451;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/table/style.min.css\";i:452;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/table/theme-rtl.css\";i:453;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/table/theme-rtl.min.css\";i:454;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/table/theme.css\";i:455;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/table/theme.min.css\";i:456;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/tag-cloud/style-rtl.css\";i:457;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/tag-cloud/style-rtl.min.css\";i:458;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/tag-cloud/style.css\";i:459;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/tag-cloud/style.min.css\";i:460;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/template-part/editor-rtl.css\";i:461;s:110:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/template-part/editor-rtl.min.css\";i:462;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/template-part/editor.css\";i:463;s:106:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/template-part/editor.min.css\";i:464;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/template-part/theme-rtl.css\";i:465;s:109:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/template-part/theme-rtl.min.css\";i:466;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/template-part/theme.css\";i:467;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/template-part/theme.min.css\";i:468;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/term-description/style-rtl.css\";i:469;s:112:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/term-description/style-rtl.min.css\";i:470;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/term-description/style.css\";i:471;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/term-description/style.min.css\";i:472;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/text-columns/editor-rtl.css\";i:473;s:109:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/text-columns/editor-rtl.min.css\";i:474;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/text-columns/editor.css\";i:475;s:105:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/text-columns/editor.min.css\";i:476;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/text-columns/style-rtl.css\";i:477;s:108:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/text-columns/style-rtl.min.css\";i:478;s:100:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/text-columns/style.css\";i:479;s:104:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/text-columns/style.min.css\";i:480;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/verse/style-rtl.css\";i:481;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/verse/style-rtl.min.css\";i:482;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/verse/style.css\";i:483;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/verse/style.min.css\";i:484;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/video/editor-rtl.css\";i:485;s:102:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/video/editor-rtl.min.css\";i:486;s:94:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/video/editor.css\";i:487;s:98:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/video/editor.min.css\";i:488;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/video/style-rtl.css\";i:489;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/video/style-rtl.min.css\";i:490;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/video/style.css\";i:491;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/video/style.min.css\";i:492;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/video/theme-rtl.css\";i:493;s:101:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/video/theme-rtl.min.css\";i:494;s:93:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/video/theme.css\";i:495;s:97:\"/Users/ben/Local Sites/vine-dine-event-catering/app/public/wp-includes/blocks/video/theme.min.css\";}','yes');
INSERT INTO `wp_options` VALUES (121,'nonce_key','>hBpw5zKf+2D8ox<SE#YZQZ$1>|Q2%$*7iX/U0)]/QgXv`EtZ4XEA:1C7d*|J;2v','no');
INSERT INTO `wp_options` VALUES (122,'nonce_salt','A2g>on@mFNL+PAxOfI;0_X_+xeE{2JgT;5 (hsPT9y]9fEP~1)h)D6V{Xv|2iIi1','no');
INSERT INTO `wp_options` VALUES (124,'recovery_keys','a:1:{s:22:\"4Q6cam4vBmFnj8KrNnFt6a\";a:2:{s:10:\"hashed_key\";s:34:\"$P$Bb/5IjvB8uVcXooqswnI.wfvmWYTMf0\";s:10:\"created_at\";i:1692818173;}}','yes');
INSERT INTO `wp_options` VALUES (125,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1692557391;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (126,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (127,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.3\";s:7:\"version\";s:3:\"6.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1692821106;s:15:\"version_checked\";s:3:\"6.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (133,'_site_transient_timeout_browser_3b8d399b56fb9df5592b051fde36c903','1693161685','no');
INSERT INTO `wp_options` VALUES (134,'_site_transient_browser_3b8d399b56fb9df5592b051fde36c903','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"115.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (135,'_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b','1693161686','no');
INSERT INTO `wp_options` VALUES (136,'_site_transient_php_check_9522db31646a2e4672d744b6f556967b','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (140,'can_compress_scripts','1','yes');
INSERT INTO `wp_options` VALUES (156,'recently_activated','a:1:{s:39:\"disable-gutenberg/disable-gutenberg.php\";i:1692558006;}','yes');
INSERT INTO `wp_options` VALUES (157,'acf_version','6.2.0','yes');
INSERT INTO `wp_options` VALUES (160,'wordfence_ls_version','1.1.4','yes');
INSERT INTO `wp_options` VALUES (161,'wfls_last_role_change','1692556940','no');
INSERT INTO `wp_options` VALUES (162,'wordfence_version','7.10.3','yes');
INSERT INTO `wp_options` VALUES (163,'wordfence_case','1','yes');
INSERT INTO `wp_options` VALUES (164,'wordfence_installed','1','yes');
INSERT INTO `wp_options` VALUES (165,'wordfenceActivated','1','yes');
INSERT INTO `wp_options` VALUES (166,'wf_plugin_act_error','','yes');
INSERT INTO `wp_options` VALUES (173,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (178,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1692810999;s:7:\"checked\";a:4:{s:15:\"twentytwentyone\";s:3:\"1.9\";s:17:\"twentytwentythree\";s:3:\"1.2\";s:15:\"twentytwentytwo\";s:3:\"1.5\";s:25:\"vine-dine-events-catering\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (179,'current_theme','Vine &amp; Dine Events Catering','yes');
INSERT INTO `wp_options` VALUES (180,'theme_mods_vine-dine-events-catering','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (181,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (202,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (225,'_transient_health-check-site-status-result','{\"good\":18,\"recommended\":2,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (236,'action_scheduler_hybrid_store_demarkation','42','yes');
INSERT INTO `wp_options` VALUES (237,'schema-ActionScheduler_StoreSchema','6.0.1692643732','yes');
INSERT INTO `wp_options` VALUES (238,'schema-ActionScheduler_LoggerSchema','3.0.1692643732','yes');
INSERT INTO `wp_options` VALUES (239,'wpforms_version','1.8.3.1','yes');
INSERT INTO `wp_options` VALUES (240,'wpforms_version_lite','1.8.3.1','yes');
INSERT INTO `wp_options` VALUES (241,'wpforms_activated','a:1:{s:4:\"lite\";i:1692643732;}','yes');
INSERT INTO `wp_options` VALUES (246,'action_scheduler_lock_async-request-runner','1692818773','yes');
INSERT INTO `wp_options` VALUES (247,'wpforms_versions_lite','a:9:{s:5:\"1.5.9\";i:0;s:7:\"1.6.7.2\";i:0;s:5:\"1.6.8\";i:0;s:5:\"1.7.5\";i:0;s:7:\"1.7.5.1\";i:0;s:5:\"1.7.7\";i:0;s:5:\"1.8.2\";i:0;s:5:\"1.8.3\";i:0;s:7:\"1.8.3.1\";i:1692643732;}','yes');
INSERT INTO `wp_options` VALUES (248,'widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (251,'wpforms_settings','a:3:{s:13:\"modern-markup\";s:1:\"1\";s:20:\"modern-markup-is-set\";b:1;s:26:\"modern-markup-hide-setting\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (253,'wpforms_admin_notices','a:1:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1692643733;s:9:\"dismissed\";b:0;}}','yes');
INSERT INTO `wp_options` VALUES (254,'_wpforms_transient_timeout_addons.json','1693248533','no');
INSERT INTO `wp_options` VALUES (255,'_wpforms_transient_addons.json','1692643733','no');
INSERT INTO `wp_options` VALUES (256,'_transient_wpforms_htaccess_file','a:3:{s:4:\"size\";i:737;s:5:\"mtime\";i:1692643733;s:5:\"ctime\";i:1692643733;}','yes');
INSERT INTO `wp_options` VALUES (257,'_wpforms_transient_timeout_docs.json','1693248537','no');
INSERT INTO `wp_options` VALUES (258,'_wpforms_transient_docs.json','1692643737','no');
INSERT INTO `wp_options` VALUES (259,'_wpforms_transient_timeout_templates.json','1693248537','no');
INSERT INTO `wp_options` VALUES (260,'_wpforms_transient_templates.json','1692643737','no');
INSERT INTO `wp_options` VALUES (261,'wpforms_builder_opened_date','1692643737','no');
INSERT INTO `wp_options` VALUES (262,'wpforms_challenge','a:13:{s:6:\"status\";s:8:\"canceled\";s:4:\"step\";i:3;s:7:\"user_id\";i:1;s:7:\"form_id\";i:42;s:10:\"embed_page\";i:0;s:16:\"embed_page_title\";s:0:\"\";s:16:\"started_date_gmt\";s:19:\"2023-08-21 18:57:41\";s:17:\"finished_date_gmt\";s:19:\"2023-08-21 18:59:27\";s:13:\"seconds_spent\";i:300;s:12:\"seconds_left\";i:0;s:13:\"feedback_sent\";b:0;s:19:\"feedback_contact_me\";b:0;s:13:\"window_closed\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (263,'wpforms_forms_first_created','1692643773','no');
INSERT INTO `wp_options` VALUES (265,'action_scheduler_migration_status','complete','yes');
INSERT INTO `wp_options` VALUES (266,'wpforms_email_summaries_fetch_info_blocks_last_run','1692643793','yes');
INSERT INTO `wp_options` VALUES (267,'wpforms_process_forms_locator_status','completed','yes');
INSERT INTO `wp_options` VALUES (269,'wpforms_notifications','a:4:{s:4:\"feed\";a:0:{}s:6:\"events\";a:6:{s:15:\"welcome-message\";a:6:{s:2:\"id\";s:15:\"welcome-message\";s:5:\"title\";s:19:\"Welcome to WPForms!\";s:7:\"content\";s:233:\"We’re grateful that you chose WPForms for your website! Now that you’ve installed the plugin, you’re less than 5 minutes away from publishing your first form. To make it easy, we’ve got 800+ form templates to get you started!\";s:4:\"btns\";a:2:{s:4:\"main\";a:2:{s:3:\"url\";s:77:\"http://vine-dine-event-catering.local/wp-admin/admin.php?page=wpforms-builder\";s:4:\"text\";s:14:\"Start Building\";}s:3:\"alt\";a:2:{s:3:\"url\";s:163:\"https://wpforms.com/docs/creating-first-form/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Welcome%20Read%20the%20Guide\";s:4:\"text\";s:14:\"Read the Guide\";}}s:4:\"type\";a:7:{i:0;s:4:\"lite\";i:1;s:5:\"basic\";i:2;s:4:\"plus\";i:3;s:3:\"pro\";i:4;s:6:\"agency\";i:5;s:5:\"elite\";i:6;s:8:\"ultimate\";}s:5:\"start\";s:19:\"2023-08-21 18:48:52\";}s:22:\"wp-mail-smtp-education\";a:5:{s:2:\"id\";s:22:\"wp-mail-smtp-education\";s:5:\"title\";s:43:\"Don’t Miss Your Form Notification Emails!\";s:7:\"content\";s:260:\"Did you know that many WordPress sites are not properly configured to send emails? With the free WP Mail SMTP plugin, you can easily optimize your site to send emails, avoid the spam folder, and make sure your emails land in the recipient’s inbox every time.\";s:4:\"btns\";a:2:{s:4:\"main\";a:2:{s:3:\"url\";s:74:\"http://vine-dine-event-catering.local/wp-admin/admin.php?page=wpforms-smtp\";s:4:\"text\";s:11:\"Install Now\";}s:3:\"alt\";a:2:{s:3:\"url\";s:195:\"https://wpforms.com/docs/how-to-set-up-smtp-using-the-wp-mail-smtp-plugin/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=WP%20Mail%20SMTP%20Learn%20More\";s:4:\"text\";s:10:\"Learn More\";}}s:5:\"start\";s:19:\"2023-08-24 18:48:52\";}s:15:\"join-vip-circle\";a:5:{s:2:\"id\";s:15:\"join-vip-circle\";s:5:\"title\";s:27:\"Want to Be a VIP? Join Now!\";s:7:\"content\";s:326:\"Running a WordPress site can be challenging. But help is just around the corner! Our Facebook group contains tons of tips and help to get your business growing! When you join our VIP Circle, you’ll get instant access to tips, tricks, and answers from a community of loyal WPForms users. Best of all, membership is 100% free!\";s:4:\"btns\";a:1:{s:4:\"main\";a:2:{s:3:\"url\";s:43:\"https://www.facebook.com/groups/wpformsvip/\";s:4:\"text\";s:8:\"Join Now\";}}s:5:\"start\";s:19:\"2023-09-20 18:48:52\";}s:14:\"survey-reports\";a:5:{s:2:\"id\";s:14:\"survey-reports\";s:5:\"title\";s:46:\"Want to Know What Your Customers Really Think?\";s:7:\"content\";s:334:\"Nothing beats real feedback from your customers and visitors. That’s why many small businesses love our awesome Surveys and Polls addon. Instantly unlock full survey reporting right in your WordPress dashboard. And don’t forget: building a survey is easy with our pre-made templates, so you could get started within a few minutes!\";s:4:\"btns\";a:2:{s:4:\"main\";a:1:{s:7:\"license\";a:5:{s:4:\"lite\";a:2:{s:3:\"url\";s:178:\"https://wpforms.com/lite-upgrade/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Upgrade%20Lite&utm_locale=en_US\";s:4:\"text\";s:11:\"Upgrade Now\";}s:5:\"basic\";a:2:{s:3:\"url\";s:166:\"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Upgrade%20Basic\";s:4:\"text\";s:11:\"Upgrade Now\";}s:4:\"plus\";a:2:{s:3:\"url\";s:166:\"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Upgrade%20Basic\";s:4:\"text\";s:11:\"Upgrade Now\";}s:3:\"pro\";a:2:{s:3:\"url\";s:76:\"http://vine-dine-event-catering.local/wp-admin/admin.php?page=wpforms-addons\";s:4:\"text\";s:11:\"Install Now\";}s:5:\"elite\";a:2:{s:3:\"url\";s:76:\"http://vine-dine-event-catering.local/wp-admin/admin.php?page=wpforms-addons\";s:4:\"text\";s:11:\"Install Now\";}}}s:3:\"alt\";a:2:{s:3:\"url\";s:202:\"https://wpforms.com/docs/how-to-install-and-use-the-surveys-and-polls-addon/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Learn%20More\";s:4:\"text\";s:10:\"Learn More\";}}s:5:\"start\";s:19:\"2023-10-05 18:48:52\";}s:16:\"form-abandonment\";a:5:{s:2:\"id\";s:16:\"form-abandonment\";s:5:\"title\";s:31:\"Get More Leads From Your Forms!\";s:7:\"content\";s:363:\"Are your forms converting fewer visitors than you hoped? Often, visitors quit forms partway through. That can prevent you from getting all the leads you deserve to capture. With our Form Abandonment addon, you can capture partial entries even if your visitor didn’t hit Submit! From there, it’s easy to follow up with leads and turn them into loyal customers.\";s:4:\"btns\";a:2:{s:4:\"main\";a:1:{s:7:\"license\";a:5:{s:4:\"lite\";a:2:{s:3:\"url\";s:175:\"https://wpforms.com/lite-upgrade/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Upgrade%20Lite&utm_locale=en_US\";s:4:\"text\";s:11:\"Upgrade Now\";}s:5:\"basic\";a:2:{s:3:\"url\";s:163:\"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Upgrade%20Basic\";s:4:\"text\";s:11:\"Upgrade Now\";}s:4:\"plus\";a:2:{s:3:\"url\";s:163:\"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Upgrade%20Basic\";s:4:\"text\";s:11:\"Upgrade Now\";}s:3:\"pro\";a:2:{s:3:\"url\";s:76:\"http://vine-dine-event-catering.local/wp-admin/admin.php?page=wpforms-addons\";s:4:\"text\";s:11:\"Install Now\";}s:5:\"elite\";a:2:{s:3:\"url\";s:76:\"http://vine-dine-event-catering.local/wp-admin/admin.php?page=wpforms-addons\";s:4:\"text\";s:11:\"Install Now\";}}}s:3:\"alt\";a:2:{s:3:\"url\";s:201:\"https://wpforms.com/docs/how-to-install-and-use-form-abandonment-with-wpforms/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Learn%20More\";s:4:\"text\";s:10:\"Learn More\";}}s:5:\"start\";s:19:\"2023-10-20 18:48:52\";}s:5:\"ideas\";a:5:{s:2:\"id\";s:5:\"ideas\";s:5:\"title\";s:36:\"What’s Your Dream WPForms Feature?\";s:7:\"content\";s:288:\"If you could add just one feature to WPForms, what would it be? We want to know! Our team is busy surveying valued customers like you as we plan the year ahead. We’d love to know which features would take your business to the next level! Do you have a second to share your idea with us?\";s:4:\"btns\";a:1:{s:4:\"main\";a:2:{s:3:\"url\";s:36:\"https://wpforms.com/share-your-idea/\";s:4:\"text\";s:15:\"Share Your Idea\";}}s:5:\"start\";s:19:\"2023-12-19 18:48:52\";}}s:9:\"dismissed\";a:0:{}s:6:\"update\";i:1692818327;}','yes');
INSERT INTO `wp_options` VALUES (289,'wpforms_crypto_secret_key','kbB9kXC19D8bLcCEzkuDlvsH4q7u6lblT+ybL7S+rxQ=','yes');
INSERT INTO `wp_options` VALUES (340,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1692816073;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/force-regenerate-thumbnails\";s:4:\"slug\";s:27:\"force-regenerate-thumbnails\";s:6:\"plugin\";s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"2.1.2\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/force-regenerate-thumbnails/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/force-regenerate-thumbnails.2.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/force-regenerate-thumbnails/assets/icon-256x256.jpg?rev=2816275\";s:2:\"1x\";s:80:\"https://ps.w.org/force-regenerate-thumbnails/assets/icon-128x128.jpg?rev=2816275\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/force-regenerate-thumbnails/assets/banner-1544x500.jpg?rev=2816275\";s:2:\"1x\";s:82:\"https://ps.w.org/force-regenerate-thumbnails/assets/banner-772x250.jpg?rev=2816275\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:19:\"imagify/imagify.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/imagify\";s:4:\"slug\";s:7:\"imagify\";s:6:\"plugin\";s:19:\"imagify/imagify.php\";s:11:\"new_version\";s:5:\"2.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/imagify/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/imagify.2.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:52:\"https://ps.w.org/imagify/assets/icon.svg?rev=2833113\";s:3:\"svg\";s:52:\"https://ps.w.org/imagify/assets/icon.svg?rev=2833113\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/imagify/assets/banner-1544x500.png?rev=2759224\";s:2:\"1x\";s:62:\"https://ps.w.org/imagify/assets/banner-772x250.png?rev=2759224\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";}s:23:\"wordfence/wordfence.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/wordfence\";s:4:\"slug\";s:9:\"wordfence\";s:6:\"plugin\";s:23:\"wordfence/wordfence.php\";s:11:\"new_version\";s:6:\"7.10.3\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wordfence/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wordfence.7.10.3.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";s:3:\"svg\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.jpg?rev=2124102\";s:2:\"1x\";s:64:\"https://ps.w.org/wordfence/assets/banner-772x250.jpg?rev=2124102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.9\";}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.8.3.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.8.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=2574198\";s:3:\"svg\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=2574198\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=2602491\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=2602491\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500-rtl.png?rev=2602491\";s:2:\"1x\";s:71:\"https://ps.w.org/wpforms-lite/assets/banner-772x250-rtl.png?rev=2602491\";}s:8:\"requires\";s:3:\"5.2\";}}s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.0\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";s:5:\"2.1.2\";s:19:\"imagify/imagify.php\";s:5:\"2.1.1\";s:23:\"wordfence/wordfence.php\";s:6:\"7.10.3\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.8.3.1\";}}','no');
INSERT INTO `wp_options` VALUES (343,'_site_transient_timeout_imagify_seen_rating_notice','1692985476','no');
INSERT INTO `wp_options` VALUES (344,'_site_transient_imagify_seen_rating_notice','1','no');
INSERT INTO `wp_options` VALUES (345,'imagify_settings','a:12:{s:13:\"auto_optimize\";i:1;s:6:\"backup\";i:1;s:7:\"api_key\";s:40:\"5e764414e18535620ae991d2a7184b87a63de055\";s:15:\"convert_to_webp\";i:1;s:12:\"display_webp\";i:1;s:19:\"display_webp_method\";s:7:\"rewrite\";s:7:\"cdn_url\";s:0:\"\";s:13:\"resize_larger\";i:1;s:15:\"resize_larger_w\";i:2560;s:14:\"admin_bar_menu\";i:1;s:16:\"disallowed-sizes\";a:0:{}s:7:\"version\";s:5:\"2.1.1\";}','yes');
INSERT INTO `wp_options` VALUES (346,'imagify_data','a:4:{s:7:\"version\";s:5:\"2.1.1\";s:25:\"total_size_images_library\";d:0;s:29:\"average_size_images_per_month\";d:0;s:22:\"previous_quota_percent\";d:66.599999999999994;}','yes');
INSERT INTO `wp_options` VALUES (347,'imagify_folders_db_version','100','yes');
INSERT INTO `wp_options` VALUES (348,'imagify_files_db_version','102','yes');
INSERT INTO `wp_options` VALUES (353,'_site_transient_timeout_imagify_check_licence_1','1724262368','no');
INSERT INTO `wp_options` VALUES (354,'_site_transient_imagify_check_licence_1','1','no');
INSERT INTO `wp_options` VALUES (607,'_site_transient_timeout_theme_roots','1692817874','no');
INSERT INTO `wp_options` VALUES (608,'_site_transient_theme_roots','a:4:{s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:25:\"vine-dine-events-catering\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (630,'recovery_mode_email_last_sent','1692818173','yes');
INSERT INTO `wp_options` VALUES (663,'_transient_doing_cron','1692821106.2440130710601806640625','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (5,7,'_edit_lock','1692557439:1');
INSERT INTO `wp_postmeta` VALUES (6,8,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (7,8,'_edit_lock','1692730428:1');
INSERT INTO `wp_postmeta` VALUES (8,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (9,10,'_edit_lock','1692644518:1');
INSERT INTO `wp_postmeta` VALUES (10,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (11,12,'_edit_lock','1692733540:1');
INSERT INTO `wp_postmeta` VALUES (12,16,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (13,16,'_edit_lock','1692726686:1');
INSERT INTO `wp_postmeta` VALUES (14,18,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (15,18,'_edit_lock','1692726700:1');
INSERT INTO `wp_postmeta` VALUES (16,20,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (17,20,'_edit_lock','1692726816:1');
INSERT INTO `wp_postmeta` VALUES (18,22,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (19,22,'_edit_lock','1692557725:1');
INSERT INTO `wp_postmeta` VALUES (20,24,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (21,24,'_wp_trash_meta_time','1692557910');
INSERT INTO `wp_postmeta` VALUES (22,25,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (23,25,'_edit_lock','1692730409:1');
INSERT INTO `wp_postmeta` VALUES (24,8,'text_2-col','Based from our restaurant in Buxted, East Sussex, Vine &amp; Dine is an events caterer who are passionate about exceptional food, unique wines, and gracious service. We bring restaurant-quality food to your event.\r\n\r\nOur Executive Chef David Kirby has a background in three rosette restaurants and fine dining event catering. He is personally involved with each event and leads a highly skilled team of professional chefs. Our front of house is managed by Nick Bolton and Ben Acey.\r\n\r\nWe have been catering events since 2018 covering Sussex, Surrey &amp; Kent. We have been lucky enough to become very regular with some venues in our area building great friendships.\r\n\r\nOur passion is providing elite service from your first enquiry all the way through to the very last goodbye at the end of your event. Our commitment is to provide restaurant-standard food at each and every event we are lucky enough to cater.\r\n\r\nOur motto is short &amp; sweet — Your day, your way. Let us create your perfect day.');
INSERT INTO `wp_postmeta` VALUES (25,8,'_text_2-col','field_64e263448e487');
INSERT INTO `wp_postmeta` VALUES (26,27,'text_2-col','Lorem ipsum dolor sit amet consectetur adipiscing elit nullam, interdum id nibh maecenas class potenti taciti mi, mus nostra velit dignissim purus hac ligula. Vitae venenatis aliquet morbi risus consequat imperdiet, lobortis pulvinar pellentesque potenti porta, nisi augue vehicula dapibus parturient. Rutrum augue curabitur vestibulum nulla fermentum morbi euismod ad cras dis nullam porttitor lobortis, diam ligula mus ornare molestie in suscipit enim id netus imperdiet tristique. Ligula vulputate risus metus habitasse velit sociis mauris iaculis varius, porta facilisi facilisis himenaeos sagittis curae magnis platea magna nostra, scelerisque odio per praesent malesuada nisi vivamus neque. Pretium in habitasse quam gravida magnis non erat, eros dictum eu massa inceptos sodales ullamcorper, maecenas facilisis etiam nisl cursus scelerisque. Pellentesque habitasse consequat commodo donec orci magnis sed, iaculis pulvinar sagittis luctus porta magna facilisi, vestibulum natoque rutrum feugiat senectus penatibus. Aptent vitae gravida ad nam vehicula quam tortor leo purus libero imperdiet, posuere natoque sagittis fermentum vulputate magna curae mauris nostra condimentum, conubia porttitor convallis senectus vel mi praesent consequat nulla curabitur.\r\n\r\nMollis ultrices diam cum rutrum elementum fusce lectus, varius malesuada class neque cursus quis fames nunc, dis senectus suscipit feugiat iaculis facilisis. Enim egestas praesent dictumst hendrerit augue ut ridiculus in dis, fringilla tincidunt est felis accumsan consequat netus habitasse. Porttitor cursus placerat est natoque cubilia sagittis per tempus nisi class, tempor sollicitudin cum dis hendrerit parturient sodales donec ante etiam ad, aliquam conubia ut et dictumst accumsan hac pharetra varius. Semper tincidunt metus nascetur vitae nostra hac auctor quam mi, nulla cursus odio congue porttitor lacinia suscipit ut malesuada sollicitudin, scelerisque mauris litora risus montes quisque ridiculus cubilia. Cras massa natoque volutpat fringilla tristique arcu eget pretium lacinia at, nisi nec primis dignissim maecenas interdum mus sapien varius leo, in facilisis mollis sodales justo convallis laoreet ante duis.');
INSERT INTO `wp_postmeta` VALUES (27,27,'_text_2-col','field_64e263448e487');
INSERT INTO `wp_postmeta` VALUES (28,8,'paragraph_title','About Vine & Dine');
INSERT INTO `wp_postmeta` VALUES (29,8,'_paragraph_title','field_64e269a1b5164');
INSERT INTO `wp_postmeta` VALUES (30,29,'text_2-col','Lorem ipsum dolor sit amet consectetur adipiscing elit nullam, interdum id nibh maecenas class potenti taciti mi, mus nostra velit dignissim purus hac ligula. Vitae venenatis aliquet morbi risus consequat imperdiet, lobortis pulvinar pellentesque potenti porta, nisi augue vehicula dapibus parturient. Rutrum augue curabitur vestibulum nulla fermentum morbi euismod ad cras dis nullam porttitor lobortis, diam ligula mus ornare molestie in suscipit enim id netus imperdiet tristique. Ligula vulputate risus metus habitasse velit sociis mauris iaculis varius, porta facilisi facilisis himenaeos sagittis curae magnis platea magna nostra, scelerisque odio per praesent malesuada nisi vivamus neque. Pretium in habitasse quam gravida magnis non erat, eros dictum eu massa inceptos sodales ullamcorper, maecenas facilisis etiam nisl cursus scelerisque. Pellentesque habitasse consequat commodo donec orci magnis sed, iaculis pulvinar sagittis luctus porta magna facilisi, vestibulum natoque rutrum feugiat senectus penatibus. Aptent vitae gravida ad nam vehicula quam tortor leo purus libero imperdiet, posuere natoque sagittis fermentum vulputate magna curae mauris nostra condimentum, conubia porttitor convallis senectus vel mi praesent consequat nulla curabitur.\r\n\r\nMollis ultrices diam cum rutrum elementum fusce lectus, varius malesuada class neque cursus quis fames nunc, dis senectus suscipit feugiat iaculis facilisis. Enim egestas praesent dictumst hendrerit augue ut ridiculus in dis, fringilla tincidunt est felis accumsan consequat netus habitasse. Porttitor cursus placerat est natoque cubilia sagittis per tempus nisi class, tempor sollicitudin cum dis hendrerit parturient sodales donec ante etiam ad, aliquam conubia ut et dictumst accumsan hac pharetra varius. Semper tincidunt metus nascetur vitae nostra hac auctor quam mi, nulla cursus odio congue porttitor lacinia suscipit ut malesuada sollicitudin, scelerisque mauris litora risus montes quisque ridiculus cubilia. Cras massa natoque volutpat fringilla tristique arcu eget pretium lacinia at, nisi nec primis dignissim maecenas interdum mus sapien varius leo, in facilisis mollis sodales justo convallis laoreet ante duis.');
INSERT INTO `wp_postmeta` VALUES (31,29,'_text_2-col','field_64e263448e487');
INSERT INTO `wp_postmeta` VALUES (32,29,'paragraph_title','About Vine & Dine');
INSERT INTO `wp_postmeta` VALUES (33,29,'_paragraph_title','field_64e269a1b5164');
INSERT INTO `wp_postmeta` VALUES (34,30,'text_2-col','Based from our restaurant in Buxted, East Sussex, Vine &amp; Dine is an events caterer who are passionate about exceptional food, unique wines, and gracious service. We bring restaurant-quality food to your event.\r\n\r\nOur Executive Chef David Kirby has a background in three rosette restaurants and fine dining event catering. He is personally involved with each event and leads a highly skilled team of professional chefs. Our front of house is managed by Nick Bolton and Ben Acey.\r\n\r\nWe have been catering events since 2018 covering Sussex, Surrey &amp; Kent. We have been lucky enough to become very regular with some venues in our area building great friendships.\r\n\r\nOur passion is providing elite service from your first enquiry all the way through to the very last goodbye at the end of your event. Our commitment is to provide restaurant-standard food at each and every event we are lucky enough to cater.\r\n\r\nOur motto is short &amp; sweet- Your Day, Your Way, Let us create your perfect day.');
INSERT INTO `wp_postmeta` VALUES (35,30,'_text_2-col','field_64e263448e487');
INSERT INTO `wp_postmeta` VALUES (36,30,'paragraph_title','About Vine & Dine');
INSERT INTO `wp_postmeta` VALUES (37,30,'_paragraph_title','field_64e269a1b5164');
INSERT INTO `wp_postmeta` VALUES (38,31,'text_2-col','Based from our restaurant in Buxted, East Sussex, Vine &amp; Dine is an events caterer who are passionate about exceptional food, unique wines, and gracious service. We bring restaurant-quality food to your event.\r\n\r\nOur Executive Chef David Kirby has a background in three rosette restaurants and fine dining event catering. He is personally involved with each event and leads a highly skilled team of professional chefs. Our front of house is managed by Nick Bolton and Ben Acey.\r\n\r\nWe have been catering events since 2018 covering Sussex, Surrey &amp; Kent. We have been lucky enough to become very regular with some venues in our area building great friendships.\r\n\r\nOur passion is providing elite service from your first enquiry all the way through to the very last goodbye at the end of your event. Our commitment is to provide restaurant-standard food at each and every event we are lucky enough to cater.\r\n\r\nOur motto is short &amp; sweet — Your day, your way. Let us create your perfect day.');
INSERT INTO `wp_postmeta` VALUES (39,31,'_text_2-col','field_64e263448e487');
INSERT INTO `wp_postmeta` VALUES (40,31,'paragraph_title','About Vine & Dine');
INSERT INTO `wp_postmeta` VALUES (41,31,'_paragraph_title','field_64e269a1b5164');
INSERT INTO `wp_postmeta` VALUES (44,34,'_wp_attached_file','2023/08/Home-Hero-Image.jpg');
INSERT INTO `wp_postmeta` VALUES (45,34,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:27:\"2023/08/Home-Hero-Image.jpg\";s:8:\"filesize\";i:1560559;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"Home-Hero-Image-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15533;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"Home-Hero-Image-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:87016;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"Home-Hero-Image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7814;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"Home-Hero-Image-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57909;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:29:\"Home-Hero-Image-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:154036;}i:0;a:5:{s:4:\"file\";s:29:\"Home-Hero-Image-1620x1080.jpg\";s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:169000;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (46,8,'home_hero_image','34');
INSERT INTO `wp_postmeta` VALUES (47,8,'_home_hero_image','field_64e26bc8455ee');
INSERT INTO `wp_postmeta` VALUES (48,35,'text_2-col','Based from our restaurant in Buxted, East Sussex, Vine &amp; Dine is an events caterer who are passionate about exceptional food, unique wines, and gracious service. We bring restaurant-quality food to your event.\r\n\r\nOur Executive Chef David Kirby has a background in three rosette restaurants and fine dining event catering. He is personally involved with each event and leads a highly skilled team of professional chefs. Our front of house is managed by Nick Bolton and Ben Acey.\r\n\r\nWe have been catering events since 2018 covering Sussex, Surrey &amp; Kent. We have been lucky enough to become very regular with some venues in our area building great friendships.\r\n\r\nOur passion is providing elite service from your first enquiry all the way through to the very last goodbye at the end of your event. Our commitment is to provide restaurant-standard food at each and every event we are lucky enough to cater.\r\n\r\nOur motto is short &amp; sweet — Your day, your way. Let us create your perfect day.');
INSERT INTO `wp_postmeta` VALUES (49,35,'_text_2-col','field_64e263448e487');
INSERT INTO `wp_postmeta` VALUES (50,35,'paragraph_title','About Vine & Dine');
INSERT INTO `wp_postmeta` VALUES (51,35,'_paragraph_title','field_64e269a1b5164');
INSERT INTO `wp_postmeta` VALUES (52,35,'home_hero_image','34');
INSERT INTO `wp_postmeta` VALUES (53,35,'_home_hero_image','field_64e26bc8455ee');
INSERT INTO `wp_postmeta` VALUES (54,8,'page_link_card_left','10');
INSERT INTO `wp_postmeta` VALUES (55,8,'_page_link_card_left','field_64e27320f8c92');
INSERT INTO `wp_postmeta` VALUES (56,8,'page_link_card_right','12');
INSERT INTO `wp_postmeta` VALUES (57,8,'_page_link_card_right','field_64e2763757017');
INSERT INTO `wp_postmeta` VALUES (58,38,'text_2-col','Based from our restaurant in Buxted, East Sussex, Vine &amp; Dine is an events caterer who are passionate about exceptional food, unique wines, and gracious service. We bring restaurant-quality food to your event.\r\n\r\nOur Executive Chef David Kirby has a background in three rosette restaurants and fine dining event catering. He is personally involved with each event and leads a highly skilled team of professional chefs. Our front of house is managed by Nick Bolton and Ben Acey.\r\n\r\nWe have been catering events since 2018 covering Sussex, Surrey &amp; Kent. We have been lucky enough to become very regular with some venues in our area building great friendships.\r\n\r\nOur passion is providing elite service from your first enquiry all the way through to the very last goodbye at the end of your event. Our commitment is to provide restaurant-standard food at each and every event we are lucky enough to cater.\r\n\r\nOur motto is short &amp; sweet — Your day, your way. Let us create your perfect day.');
INSERT INTO `wp_postmeta` VALUES (59,38,'_text_2-col','field_64e263448e487');
INSERT INTO `wp_postmeta` VALUES (60,38,'paragraph_title','About Vine & Dine');
INSERT INTO `wp_postmeta` VALUES (61,38,'_paragraph_title','field_64e269a1b5164');
INSERT INTO `wp_postmeta` VALUES (62,38,'home_hero_image','34');
INSERT INTO `wp_postmeta` VALUES (63,38,'_home_hero_image','field_64e26bc8455ee');
INSERT INTO `wp_postmeta` VALUES (64,38,'page_link_card_left','10');
INSERT INTO `wp_postmeta` VALUES (65,38,'_page_link_card_left','field_64e27320f8c92');
INSERT INTO `wp_postmeta` VALUES (66,38,'page_link_card_right','12');
INSERT INTO `wp_postmeta` VALUES (67,38,'_page_link_card_right','field_64e2763757017');
INSERT INTO `wp_postmeta` VALUES (75,40,'_wp_attached_file','2023/08/long-dining-table-lined-with-glasses-and-floral-decoration.jpg');
INSERT INTO `wp_postmeta` VALUES (76,40,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1282;s:4:\"file\";s:70:\"2023/08/long-dining-table-lined-with-glasses-and-floral-decoration.jpg\";s:8:\"filesize\";i:347328;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:70:\"long-dining-table-lined-with-glasses-and-floral-decoration-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16280;}s:5:\"large\";a:5:{s:4:\"file\";s:71:\"long-dining-table-lined-with-glasses-and-floral-decoration-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:96886;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:70:\"long-dining-table-lined-with-glasses-and-floral-decoration-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7536;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:70:\"long-dining-table-lined-with-glasses-and-floral-decoration-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64155;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:72:\"long-dining-table-lined-with-glasses-and-floral-decoration-1536x1026.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:176969;}i:0;a:5:{s:4:\"file\";s:72:\"long-dining-table-lined-with-glasses-and-floral-decoration-1617x1080.jpg\";s:5:\"width\";i:1617;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:192252;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (77,12,'_thumbnail_id','40');
INSERT INTO `wp_postmeta` VALUES (78,41,'_wp_attached_file','2023/08/A-wedding-couple-kissing-under-confetti-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (79,41,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:58:\"2023/08/A-wedding-couple-kissing-under-confetti-scaled.jpg\";s:8:\"filesize\";i:805872;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:51:\"A-wedding-couple-kissing-under-confetti-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21442;}s:5:\"large\";a:5:{s:4:\"file\";s:52:\"A-wedding-couple-kissing-under-confetti-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:165396;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:51:\"A-wedding-couple-kissing-under-confetti-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9190;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"A-wedding-couple-kissing-under-confetti-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:201682;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:53:\"A-wedding-couple-kissing-under-confetti-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:327376;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:53:\"A-wedding-couple-kissing-under-confetti-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:543286;}i:0;a:5:{s:4:\"file\";s:52:\"A-wedding-couple-kissing-under-confetti-720x1080.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:180859;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:43:\"A-wedding-couple-kissing-under-confetti.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (80,10,'_thumbnail_id','41');
INSERT INTO `wp_postmeta` VALUES (81,48,'_wp_attached_file','2023/08/The-Oak-Barn.pdf');
INSERT INTO `wp_postmeta` VALUES (82,48,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:18378961;}');
INSERT INTO `wp_postmeta` VALUES (83,49,'_wp_attached_file','2023/08/What-we-do-at-Vine-Dine.pdf');
INSERT INTO `wp_postmeta` VALUES (84,49,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:3773870;}');
INSERT INTO `wp_postmeta` VALUES (85,8,'homepage_contact_form','42');
INSERT INTO `wp_postmeta` VALUES (86,8,'_homepage_contact_form','field_64e3b5e502b83');
INSERT INTO `wp_postmeta` VALUES (87,52,'text_2-col','Based from our restaurant in Buxted, East Sussex, Vine &amp; Dine is an events caterer who are passionate about exceptional food, unique wines, and gracious service. We bring restaurant-quality food to your event.\r\n\r\nOur Executive Chef David Kirby has a background in three rosette restaurants and fine dining event catering. He is personally involved with each event and leads a highly skilled team of professional chefs. Our front of house is managed by Nick Bolton and Ben Acey.\r\n\r\nWe have been catering events since 2018 covering Sussex, Surrey &amp; Kent. We have been lucky enough to become very regular with some venues in our area building great friendships.\r\n\r\nOur passion is providing elite service from your first enquiry all the way through to the very last goodbye at the end of your event. Our commitment is to provide restaurant-standard food at each and every event we are lucky enough to cater.\r\n\r\nOur motto is short &amp; sweet — Your day, your way. Let us create your perfect day.');
INSERT INTO `wp_postmeta` VALUES (88,52,'_text_2-col','field_64e263448e487');
INSERT INTO `wp_postmeta` VALUES (89,52,'paragraph_title','About Vine & Dine');
INSERT INTO `wp_postmeta` VALUES (90,52,'_paragraph_title','field_64e269a1b5164');
INSERT INTO `wp_postmeta` VALUES (91,52,'home_hero_image','34');
INSERT INTO `wp_postmeta` VALUES (92,52,'_home_hero_image','field_64e26bc8455ee');
INSERT INTO `wp_postmeta` VALUES (93,52,'page_link_card_left','10');
INSERT INTO `wp_postmeta` VALUES (94,52,'_page_link_card_left','field_64e27320f8c92');
INSERT INTO `wp_postmeta` VALUES (95,52,'page_link_card_right','12');
INSERT INTO `wp_postmeta` VALUES (96,52,'_page_link_card_right','field_64e2763757017');
INSERT INTO `wp_postmeta` VALUES (97,52,'homepage_contact_form','[wpforms id=\"42\"]');
INSERT INTO `wp_postmeta` VALUES (98,52,'_homepage_contact_form','field_64e3b5e502b83');
INSERT INTO `wp_postmeta` VALUES (99,53,'text_2-col','Based from our restaurant in Buxted, East Sussex, Vine &amp; Dine is an events caterer who are passionate about exceptional food, unique wines, and gracious service. We bring restaurant-quality food to your event.\r\n\r\nOur Executive Chef David Kirby has a background in three rosette restaurants and fine dining event catering. He is personally involved with each event and leads a highly skilled team of professional chefs. Our front of house is managed by Nick Bolton and Ben Acey.\r\n\r\nWe have been catering events since 2018 covering Sussex, Surrey &amp; Kent. We have been lucky enough to become very regular with some venues in our area building great friendships.\r\n\r\nOur passion is providing elite service from your first enquiry all the way through to the very last goodbye at the end of your event. Our commitment is to provide restaurant-standard food at each and every event we are lucky enough to cater.\r\n\r\nOur motto is short &amp; sweet — Your day, your way. Let us create your perfect day.');
INSERT INTO `wp_postmeta` VALUES (100,53,'_text_2-col','field_64e263448e487');
INSERT INTO `wp_postmeta` VALUES (101,53,'paragraph_title','About Vine & Dine');
INSERT INTO `wp_postmeta` VALUES (102,53,'_paragraph_title','field_64e269a1b5164');
INSERT INTO `wp_postmeta` VALUES (103,53,'home_hero_image','34');
INSERT INTO `wp_postmeta` VALUES (104,53,'_home_hero_image','field_64e26bc8455ee');
INSERT INTO `wp_postmeta` VALUES (105,53,'page_link_card_left','10');
INSERT INTO `wp_postmeta` VALUES (106,53,'_page_link_card_left','field_64e27320f8c92');
INSERT INTO `wp_postmeta` VALUES (107,53,'page_link_card_right','12');
INSERT INTO `wp_postmeta` VALUES (108,53,'_page_link_card_right','field_64e2763757017');
INSERT INTO `wp_postmeta` VALUES (109,53,'homepage_contact_form','[wpforms id=\"42\"]');
INSERT INTO `wp_postmeta` VALUES (110,53,'_homepage_contact_form','field_64e3b5e502b83');
INSERT INTO `wp_postmeta` VALUES (111,54,'text_2-col','Based from our restaurant in Buxted, East Sussex, Vine &amp; Dine is an events caterer who are passionate about exceptional food, unique wines, and gracious service. We bring restaurant-quality food to your event.\r\n\r\nOur Executive Chef David Kirby has a background in three rosette restaurants and fine dining event catering. He is personally involved with each event and leads a highly skilled team of professional chefs. Our front of house is managed by Nick Bolton and Ben Acey.\r\n\r\nWe have been catering events since 2018 covering Sussex, Surrey &amp; Kent. We have been lucky enough to become very regular with some venues in our area building great friendships.\r\n\r\nOur passion is providing elite service from your first enquiry all the way through to the very last goodbye at the end of your event. Our commitment is to provide restaurant-standard food at each and every event we are lucky enough to cater.\r\n\r\nOur motto is short &amp; sweet — Your day, your way. Let us create your perfect day.');
INSERT INTO `wp_postmeta` VALUES (112,54,'_text_2-col','field_64e263448e487');
INSERT INTO `wp_postmeta` VALUES (113,54,'paragraph_title','About Vine & Dine');
INSERT INTO `wp_postmeta` VALUES (114,54,'_paragraph_title','field_64e269a1b5164');
INSERT INTO `wp_postmeta` VALUES (115,54,'home_hero_image','34');
INSERT INTO `wp_postmeta` VALUES (116,54,'_home_hero_image','field_64e26bc8455ee');
INSERT INTO `wp_postmeta` VALUES (117,54,'page_link_card_left','10');
INSERT INTO `wp_postmeta` VALUES (118,54,'_page_link_card_left','field_64e27320f8c92');
INSERT INTO `wp_postmeta` VALUES (119,54,'page_link_card_right','12');
INSERT INTO `wp_postmeta` VALUES (120,54,'_page_link_card_right','field_64e2763757017');
INSERT INTO `wp_postmeta` VALUES (121,54,'homepage_contact_form','42');
INSERT INTO `wp_postmeta` VALUES (122,54,'_homepage_contact_form','field_64e3b5e502b83');
INSERT INTO `wp_postmeta` VALUES (125,56,'_wp_attached_file','2023/08/Testimonials-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (126,56,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:31:\"2023/08/Testimonials-scaled.jpg\";s:8:\"filesize\";i:378200;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Testimonials-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5693;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"Testimonials-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48404;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Testimonials-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3320;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"Testimonials-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26313;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"Testimonials-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:119654;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"Testimonials-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:229265;}i:0;a:5:{s:4:\"file\";s:26:\"Testimonials-1619x1080.jpg\";s:5:\"width\";i:1619;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:134982;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"Testimonials.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (130,57,'_wp_attached_file','2023/08/The-Tasting-Diary.jpg');
INSERT INTO `wp_postmeta` VALUES (131,57,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:29:\"2023/08/The-Tasting-Diary.jpg\";s:8:\"filesize\";i:230077;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"The-Tasting-Diary-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10461;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"The-Tasting-Diary-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63611;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"The-Tasting-Diary-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4985;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"The-Tasting-Diary-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40755;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"The-Tasting-Diary-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:120093;}i:0;a:5:{s:4:\"file\";s:31:\"The-Tasting-Diary-1620x1080.jpg\";s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:131854;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (132,56,'_imagify_optimization_level','2');
INSERT INTO `wp_postmeta` VALUES (133,56,'_imagify_status','success');
INSERT INTO `wp_postmeta` VALUES (134,56,'_imagify_data','a:2:{s:5:\"sizes\";a:14:{s:4:\"full\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:378200;s:14:\"optimized_size\";i:56618;s:7:\"percent\";d:85.030000000000001;}s:22:\"2048x2048@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:229265;s:14:\"optimized_size\";i:36360;s:7:\"percent\";d:84.140000000000001;}s:22:\"1536x1536@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:119654;s:14:\"optimized_size\";i:21968;s:7:\"percent\";d:81.640000000000001;}s:25:\"medium_large@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:26313;s:14:\"optimized_size\";i:7354;s:7:\"percent\";d:72.049999999999997;}s:22:\"thumbnail@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:3320;s:14:\"optimized_size\";i:1222;s:7:\"percent\";d:63.189999999999998;}s:18:\"large@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:48404;s:14:\"optimized_size\";i:11336;s:7:\"percent\";d:76.579999999999998;}s:19:\"medium@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:5693;s:14:\"optimized_size\";i:1868;s:7:\"percent\";d:67.189999999999998;}s:17:\"full@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:378200;s:14:\"optimized_size\";i:54902;s:7:\"percent\";d:85.480000000000004;}s:6:\"medium\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:5693;s:14:\"optimized_size\";i:3153;s:7:\"percent\";d:44.619999999999997;}s:5:\"large\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:48404;s:14:\"optimized_size\";i:17831;s:7:\"percent\";d:63.159999999999997;}s:9:\"thumbnail\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:3320;s:14:\"optimized_size\";i:1803;s:7:\"percent\";d:45.689999999999998;}s:12:\"medium_large\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:26313;s:14:\"optimized_size\";i:11302;s:7:\"percent\";d:57.049999999999997;}s:9:\"1536x1536\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:119654;s:14:\"optimized_size\";i:40248;s:7:\"percent\";d:66.359999999999999;}s:9:\"2048x2048\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:229265;s:14:\"optimized_size\";i:33753;s:7:\"percent\";d:85.280000000000001;}}s:5:\"stats\";a:3:{s:13:\"original_size\";i:1621698;s:14:\"optimized_size\";i:299718;s:7:\"percent\";d:81.519999999999996;}}');
INSERT INTO `wp_postmeta` VALUES (135,57,'_imagify_optimization_level','2');
INSERT INTO `wp_postmeta` VALUES (136,57,'_imagify_status','success');
INSERT INTO `wp_postmeta` VALUES (137,57,'_imagify_data','a:2:{s:5:\"sizes\";a:12:{s:4:\"full\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:230077;s:14:\"optimized_size\";i:56622;s:7:\"percent\";d:75.390000000000001;}s:22:\"1536x1536@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:120093;s:14:\"optimized_size\";i:54366;s:7:\"percent\";d:54.729999999999997;}s:25:\"medium_large@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:40755;s:14:\"optimized_size\";i:21338;s:7:\"percent\";d:47.640000000000001;}s:22:\"thumbnail@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:4985;s:14:\"optimized_size\";i:2602;s:7:\"percent\";d:47.799999999999997;}s:18:\"large@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:63611;s:14:\"optimized_size\";i:31234;s:7:\"percent\";d:50.899999999999999;}s:19:\"medium@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:10461;s:14:\"optimized_size\";i:5982;s:7:\"percent\";d:42.82;}s:17:\"full@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:230077;s:14:\"optimized_size\";i:77124;s:7:\"percent\";d:66.480000000000004;}s:6:\"medium\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:10461;s:14:\"optimized_size\";i:6333;s:7:\"percent\";d:39.460000000000001;}s:5:\"large\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:63611;s:14:\"optimized_size\";i:36077;s:7:\"percent\";d:43.280000000000001;}s:9:\"thumbnail\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:4985;s:14:\"optimized_size\";i:3260;s:7:\"percent\";d:34.600000000000001;}s:12:\"medium_large\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:40755;s:14:\"optimized_size\";i:24895;s:7:\"percent\";d:38.920000000000002;}s:9:\"1536x1536\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:120093;s:14:\"optimized_size\";i:63432;s:7:\"percent\";d:47.18;}}s:5:\"stats\";a:3:{s:13:\"original_size\";i:939964;s:14:\"optimized_size\";i:383265;s:7:\"percent\";d:59.229999999999997;}}');
INSERT INTO `wp_postmeta` VALUES (143,58,'_imagify_data','a:2:{s:5:\"sizes\";a:6:{s:4:\"full\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:841583;s:14:\"optimized_size\";i:533724;s:7:\"percent\";d:36.579999999999998;}s:22:\"2048x2048@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:597759;s:14:\"optimized_size\";i:320844;s:7:\"percent\";d:46.329999999999998;}s:22:\"1536x1536@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:376067;s:14:\"optimized_size\";i:208692;s:7:\"percent\";d:44.509999999999998;}s:25:\"medium_large@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:236323;s:14:\"optimized_size\";i:136780;s:7:\"percent\";d:42.119999999999997;}s:22:\"thumbnail@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:10631;s:14:\"optimized_size\";i:7398;s:7:\"percent\";d:30.41;}s:18:\"large@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:194575;s:14:\"optimized_size\";i:114396;s:7:\"percent\";d:41.210000000000001;}}s:5:\"stats\";a:3:{s:13:\"original_size\";i:2256938;s:14:\"optimized_size\";i:1321834;s:7:\"percent\";d:41.43;}}');
INSERT INTO `wp_postmeta` VALUES (144,59,'_wp_attached_file','2023/08/Our-food.jpg');
INSERT INTO `wp_postmeta` VALUES (145,59,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1920;s:4:\"file\";s:20:\"2023/08/Our-food.jpg\";s:8:\"filesize\";i:1389755;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"Our-food-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:34184;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"Our-food-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:266627;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"Our-food-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10735;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"Our-food-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:166866;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"Our-food-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:508895;}i:0;a:5:{s:4:\"file\";s:22:\"Our-food-1080x1080.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:292659;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (146,16,'_thumbnail_id','59');
INSERT INTO `wp_postmeta` VALUES (147,18,'_thumbnail_id','57');
INSERT INTO `wp_postmeta` VALUES (148,59,'_imagify_optimization_level','2');
INSERT INTO `wp_postmeta` VALUES (149,59,'_imagify_status','success');
INSERT INTO `wp_postmeta` VALUES (150,59,'_imagify_data','a:2:{s:5:\"sizes\";a:12:{s:4:\"full\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:1389755;s:14:\"optimized_size\";i:665245;s:7:\"percent\";d:52.130000000000003;}s:22:\"1536x1536@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:508895;s:14:\"optimized_size\";i:272954;s:7:\"percent\";d:46.359999999999999;}s:25:\"medium_large@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:166866;s:14:\"optimized_size\";i:99706;s:7:\"percent\";d:40.25;}s:22:\"thumbnail@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:10735;s:14:\"optimized_size\";i:7588;s:7:\"percent\";d:29.32;}s:18:\"large@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:266627;s:14:\"optimized_size\";i:153656;s:7:\"percent\";d:42.369999999999997;}s:19:\"medium@imagify-webp\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:34184;s:14:\"optimized_size\";i:22294;s:7:\"percent\";d:34.780000000000001;}s:17:\"full@imagify-webp\";a:2:{s:7:\"success\";b:0;s:5:\"error\";s:34:\"Our server returned an error (502)\";}s:6:\"medium\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:34184;s:14:\"optimized_size\";i:26901;s:7:\"percent\";d:21.309999999999999;}s:5:\"large\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:266627;s:14:\"optimized_size\";i:186156;s:7:\"percent\";d:30.18;}s:9:\"thumbnail\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:10735;s:14:\"optimized_size\";i:8301;s:7:\"percent\";d:22.670000000000002;}s:12:\"medium_large\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:166866;s:14:\"optimized_size\";i:124959;s:7:\"percent\";d:25.109999999999999;}s:9:\"1536x1536\";a:4:{s:7:\"success\";b:1;s:13:\"original_size\";i:508895;s:14:\"optimized_size\";i:329676;s:7:\"percent\";d:35.219999999999999;}}s:5:\"stats\";a:3:{s:13:\"original_size\";i:3364369;s:14:\"optimized_size\";i:1897436;s:7:\"percent\";d:43.600000000000001;}}');
INSERT INTO `wp_postmeta` VALUES (151,20,'_thumbnail_id','56');
INSERT INTO `wp_postmeta` VALUES (152,8,'card_link_3col_1','16');
INSERT INTO `wp_postmeta` VALUES (153,8,'_card_link_3col_1','field_64e4f756cda0d');
INSERT INTO `wp_postmeta` VALUES (154,8,'card_link_3col_2','18');
INSERT INTO `wp_postmeta` VALUES (155,8,'_card_link_3col_2','field_64e4f789cda0e');
INSERT INTO `wp_postmeta` VALUES (156,8,'card_link_3col_3','20');
INSERT INTO `wp_postmeta` VALUES (157,8,'_card_link_3col_3','field_64e4f78dcda0f');
INSERT INTO `wp_postmeta` VALUES (158,63,'text_2-col','Based from our restaurant in Buxted, East Sussex, Vine &amp; Dine is an events caterer who are passionate about exceptional food, unique wines, and gracious service. We bring restaurant-quality food to your event.\r\n\r\nOur Executive Chef David Kirby has a background in three rosette restaurants and fine dining event catering. He is personally involved with each event and leads a highly skilled team of professional chefs. Our front of house is managed by Nick Bolton and Ben Acey.\r\n\r\nWe have been catering events since 2018 covering Sussex, Surrey &amp; Kent. We have been lucky enough to become very regular with some venues in our area building great friendships.\r\n\r\nOur passion is providing elite service from your first enquiry all the way through to the very last goodbye at the end of your event. Our commitment is to provide restaurant-standard food at each and every event we are lucky enough to cater.\r\n\r\nOur motto is short &amp; sweet — Your day, your way. Let us create your perfect day.');
INSERT INTO `wp_postmeta` VALUES (159,63,'_text_2-col','field_64e263448e487');
INSERT INTO `wp_postmeta` VALUES (160,63,'paragraph_title','About Vine & Dine');
INSERT INTO `wp_postmeta` VALUES (161,63,'_paragraph_title','field_64e269a1b5164');
INSERT INTO `wp_postmeta` VALUES (162,63,'home_hero_image','34');
INSERT INTO `wp_postmeta` VALUES (163,63,'_home_hero_image','field_64e26bc8455ee');
INSERT INTO `wp_postmeta` VALUES (164,63,'page_link_card_left','10');
INSERT INTO `wp_postmeta` VALUES (165,63,'_page_link_card_left','field_64e27320f8c92');
INSERT INTO `wp_postmeta` VALUES (166,63,'page_link_card_right','12');
INSERT INTO `wp_postmeta` VALUES (167,63,'_page_link_card_right','field_64e2763757017');
INSERT INTO `wp_postmeta` VALUES (168,63,'homepage_contact_form','42');
INSERT INTO `wp_postmeta` VALUES (169,63,'_homepage_contact_form','field_64e3b5e502b83');
INSERT INTO `wp_postmeta` VALUES (170,63,'card_link_3col_1','16');
INSERT INTO `wp_postmeta` VALUES (171,63,'_card_link_3col_1','field_64e4f756cda0d');
INSERT INTO `wp_postmeta` VALUES (172,63,'card_link_3col_2','18');
INSERT INTO `wp_postmeta` VALUES (173,63,'_card_link_3col_2','field_64e4f789cda0e');
INSERT INTO `wp_postmeta` VALUES (174,63,'card_link_3col_3','20');
INSERT INTO `wp_postmeta` VALUES (175,63,'_card_link_3col_3','field_64e4f78dcda0f');
INSERT INTO `wp_postmeta` VALUES (176,8,'hero_header','Your day, your way');
INSERT INTO `wp_postmeta` VALUES (177,8,'_hero_header','field_64e5020c4f104');
INSERT INTO `wp_postmeta` VALUES (178,8,'hero_standfirst','Let us create your perfect day');
INSERT INTO `wp_postmeta` VALUES (179,8,'_hero_standfirst','field_64e5022200ca9');
INSERT INTO `wp_postmeta` VALUES (180,8,'hero_cta','a:3:{s:5:\"title\";s:11:\"Get started\";s:3:\"url\";s:46:\"http://vine-dine-event-catering.local/contact/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (181,8,'_hero_cta','field_64e5023ece967');
INSERT INTO `wp_postmeta` VALUES (182,67,'text_2-col','Based from our restaurant in Buxted, East Sussex, Vine &amp; Dine is an events caterer who are passionate about exceptional food, unique wines, and gracious service. We bring restaurant-quality food to your event.\r\n\r\nOur Executive Chef David Kirby has a background in three rosette restaurants and fine dining event catering. He is personally involved with each event and leads a highly skilled team of professional chefs. Our front of house is managed by Nick Bolton and Ben Acey.\r\n\r\nWe have been catering events since 2018 covering Sussex, Surrey &amp; Kent. We have been lucky enough to become very regular with some venues in our area building great friendships.\r\n\r\nOur passion is providing elite service from your first enquiry all the way through to the very last goodbye at the end of your event. Our commitment is to provide restaurant-standard food at each and every event we are lucky enough to cater.\r\n\r\nOur motto is short &amp; sweet — Your day, your way. Let us create your perfect day.');
INSERT INTO `wp_postmeta` VALUES (183,67,'_text_2-col','field_64e263448e487');
INSERT INTO `wp_postmeta` VALUES (184,67,'paragraph_title','About Vine & Dine');
INSERT INTO `wp_postmeta` VALUES (185,67,'_paragraph_title','field_64e269a1b5164');
INSERT INTO `wp_postmeta` VALUES (186,67,'home_hero_image','34');
INSERT INTO `wp_postmeta` VALUES (187,67,'_home_hero_image','field_64e26bc8455ee');
INSERT INTO `wp_postmeta` VALUES (188,67,'page_link_card_left','10');
INSERT INTO `wp_postmeta` VALUES (189,67,'_page_link_card_left','field_64e27320f8c92');
INSERT INTO `wp_postmeta` VALUES (190,67,'page_link_card_right','12');
INSERT INTO `wp_postmeta` VALUES (191,67,'_page_link_card_right','field_64e2763757017');
INSERT INTO `wp_postmeta` VALUES (192,67,'homepage_contact_form','42');
INSERT INTO `wp_postmeta` VALUES (193,67,'_homepage_contact_form','field_64e3b5e502b83');
INSERT INTO `wp_postmeta` VALUES (194,67,'card_link_3col_1','16');
INSERT INTO `wp_postmeta` VALUES (195,67,'_card_link_3col_1','field_64e4f756cda0d');
INSERT INTO `wp_postmeta` VALUES (196,67,'card_link_3col_2','18');
INSERT INTO `wp_postmeta` VALUES (197,67,'_card_link_3col_2','field_64e4f789cda0e');
INSERT INTO `wp_postmeta` VALUES (198,67,'card_link_3col_3','20');
INSERT INTO `wp_postmeta` VALUES (199,67,'_card_link_3col_3','field_64e4f78dcda0f');
INSERT INTO `wp_postmeta` VALUES (200,67,'hero_header','Your day, your way');
INSERT INTO `wp_postmeta` VALUES (201,67,'_hero_header','field_64e5020c4f104');
INSERT INTO `wp_postmeta` VALUES (202,67,'hero_standfirst','Let us create your perfect day');
INSERT INTO `wp_postmeta` VALUES (203,67,'_hero_standfirst','field_64e5022200ca9');
INSERT INTO `wp_postmeta` VALUES (204,67,'hero_cta','');
INSERT INTO `wp_postmeta` VALUES (205,67,'_hero_cta','field_64e5023ece967');
INSERT INTO `wp_postmeta` VALUES (206,68,'text_2-col','Based from our restaurant in Buxted, East Sussex, Vine &amp; Dine is an events caterer who are passionate about exceptional food, unique wines, and gracious service. We bring restaurant-quality food to your event.\r\n\r\nOur Executive Chef David Kirby has a background in three rosette restaurants and fine dining event catering. He is personally involved with each event and leads a highly skilled team of professional chefs. Our front of house is managed by Nick Bolton and Ben Acey.\r\n\r\nWe have been catering events since 2018 covering Sussex, Surrey &amp; Kent. We have been lucky enough to become very regular with some venues in our area building great friendships.\r\n\r\nOur passion is providing elite service from your first enquiry all the way through to the very last goodbye at the end of your event. Our commitment is to provide restaurant-standard food at each and every event we are lucky enough to cater.\r\n\r\nOur motto is short &amp; sweet — Your day, your way. Let us create your perfect day.');
INSERT INTO `wp_postmeta` VALUES (207,68,'_text_2-col','field_64e263448e487');
INSERT INTO `wp_postmeta` VALUES (208,68,'paragraph_title','About Vine & Dine');
INSERT INTO `wp_postmeta` VALUES (209,68,'_paragraph_title','field_64e269a1b5164');
INSERT INTO `wp_postmeta` VALUES (210,68,'home_hero_image','34');
INSERT INTO `wp_postmeta` VALUES (211,68,'_home_hero_image','field_64e26bc8455ee');
INSERT INTO `wp_postmeta` VALUES (212,68,'page_link_card_left','10');
INSERT INTO `wp_postmeta` VALUES (213,68,'_page_link_card_left','field_64e27320f8c92');
INSERT INTO `wp_postmeta` VALUES (214,68,'page_link_card_right','12');
INSERT INTO `wp_postmeta` VALUES (215,68,'_page_link_card_right','field_64e2763757017');
INSERT INTO `wp_postmeta` VALUES (216,68,'homepage_contact_form','42');
INSERT INTO `wp_postmeta` VALUES (217,68,'_homepage_contact_form','field_64e3b5e502b83');
INSERT INTO `wp_postmeta` VALUES (218,68,'card_link_3col_1','16');
INSERT INTO `wp_postmeta` VALUES (219,68,'_card_link_3col_1','field_64e4f756cda0d');
INSERT INTO `wp_postmeta` VALUES (220,68,'card_link_3col_2','18');
INSERT INTO `wp_postmeta` VALUES (221,68,'_card_link_3col_2','field_64e4f789cda0e');
INSERT INTO `wp_postmeta` VALUES (222,68,'card_link_3col_3','20');
INSERT INTO `wp_postmeta` VALUES (223,68,'_card_link_3col_3','field_64e4f78dcda0f');
INSERT INTO `wp_postmeta` VALUES (224,68,'hero_header','Your day, your way');
INSERT INTO `wp_postmeta` VALUES (225,68,'_hero_header','field_64e5020c4f104');
INSERT INTO `wp_postmeta` VALUES (226,68,'hero_standfirst','Let us create your perfect day');
INSERT INTO `wp_postmeta` VALUES (227,68,'_hero_standfirst','field_64e5022200ca9');
INSERT INTO `wp_postmeta` VALUES (228,68,'hero_cta','22');
INSERT INTO `wp_postmeta` VALUES (229,68,'_hero_cta','field_64e5023ece967');
INSERT INTO `wp_postmeta` VALUES (230,69,'text_2-col','Based from our restaurant in Buxted, East Sussex, Vine &amp; Dine is an events caterer who are passionate about exceptional food, unique wines, and gracious service. We bring restaurant-quality food to your event.\r\n\r\nOur Executive Chef David Kirby has a background in three rosette restaurants and fine dining event catering. He is personally involved with each event and leads a highly skilled team of professional chefs. Our front of house is managed by Nick Bolton and Ben Acey.\r\n\r\nWe have been catering events since 2018 covering Sussex, Surrey &amp; Kent. We have been lucky enough to become very regular with some venues in our area building great friendships.\r\n\r\nOur passion is providing elite service from your first enquiry all the way through to the very last goodbye at the end of your event. Our commitment is to provide restaurant-standard food at each and every event we are lucky enough to cater.\r\n\r\nOur motto is short &amp; sweet — Your day, your way. Let us create your perfect day.');
INSERT INTO `wp_postmeta` VALUES (231,69,'_text_2-col','field_64e263448e487');
INSERT INTO `wp_postmeta` VALUES (232,69,'paragraph_title','About Vine & Dine');
INSERT INTO `wp_postmeta` VALUES (233,69,'_paragraph_title','field_64e269a1b5164');
INSERT INTO `wp_postmeta` VALUES (234,69,'home_hero_image','34');
INSERT INTO `wp_postmeta` VALUES (235,69,'_home_hero_image','field_64e26bc8455ee');
INSERT INTO `wp_postmeta` VALUES (236,69,'page_link_card_left','10');
INSERT INTO `wp_postmeta` VALUES (237,69,'_page_link_card_left','field_64e27320f8c92');
INSERT INTO `wp_postmeta` VALUES (238,69,'page_link_card_right','12');
INSERT INTO `wp_postmeta` VALUES (239,69,'_page_link_card_right','field_64e2763757017');
INSERT INTO `wp_postmeta` VALUES (240,69,'homepage_contact_form','42');
INSERT INTO `wp_postmeta` VALUES (241,69,'_homepage_contact_form','field_64e3b5e502b83');
INSERT INTO `wp_postmeta` VALUES (242,69,'card_link_3col_1','16');
INSERT INTO `wp_postmeta` VALUES (243,69,'_card_link_3col_1','field_64e4f756cda0d');
INSERT INTO `wp_postmeta` VALUES (244,69,'card_link_3col_2','18');
INSERT INTO `wp_postmeta` VALUES (245,69,'_card_link_3col_2','field_64e4f789cda0e');
INSERT INTO `wp_postmeta` VALUES (246,69,'card_link_3col_3','20');
INSERT INTO `wp_postmeta` VALUES (247,69,'_card_link_3col_3','field_64e4f78dcda0f');
INSERT INTO `wp_postmeta` VALUES (248,69,'hero_header','Your day, your way');
INSERT INTO `wp_postmeta` VALUES (249,69,'_hero_header','field_64e5020c4f104');
INSERT INTO `wp_postmeta` VALUES (250,69,'hero_standfirst','Let us create your perfect day');
INSERT INTO `wp_postmeta` VALUES (251,69,'_hero_standfirst','field_64e5022200ca9');
INSERT INTO `wp_postmeta` VALUES (252,69,'hero_cta','a:3:{s:5:\"title\";s:11:\"Get started\";s:3:\"url\";s:46:\"http://vine-dine-event-catering.local/contact/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (253,69,'_hero_cta','field_64e5023ece967');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-08-20 18:40:47','2023-08-20 18:40:47','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-08-20 18:40:47','2023-08-20 18:40:47','',0,'http://vine-dine-event-catering.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-08-20 18:40:47','2023-08-20 18:40:47','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://vine-dine-event-catering.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2023-08-20 18:40:47','2023-08-20 18:40:47','',0,'http://vine-dine-event-catering.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-08-20 18:40:47','2023-08-20 18:40:47','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://vine-dine-event-catering.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2023-08-20 18:40:47','2023-08-20 18:40:47','',0,'http://vine-dine-event-catering.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2023-08-20 18:40:48','2023-08-20 18:40:48','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2023-08-20 18:40:48','2023-08-20 18:40:48','',0,'https://vine-dine-event-catering.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2023-08-20 18:41:26','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-08-20 18:41:26','0000-00-00 00:00:00','',0,'http://vine-dine-event-catering.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2023-08-20 18:52:54','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2023-08-20 18:52:54','0000-00-00 00:00:00','',0,'http://vine-dine-event-catering.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-08-20 18:55:32','2023-08-20 18:55:32','','Home','','publish','closed','closed','','home','','','2023-08-22 18:53:48','2023-08-22 18:53:48','',0,'http://vine-dine-event-catering.local/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2023-08-20 18:55:32','2023-08-20 18:55:32','','Home','','inherit','closed','closed','','8-revision-v1','','','2023-08-20 18:55:32','2023-08-20 18:55:32','',8,'http://vine-dine-event-catering.local/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2023-08-20 18:56:05','2023-08-20 18:56:05','','Vine & Dine Weddings','','publish','closed','closed','','vine-dine-weddings','','','2023-08-21 18:43:23','2023-08-21 18:43:23','',0,'http://vine-dine-event-catering.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-08-20 18:56:05','2023-08-20 18:56:05','','Vine & Dine Weddings','','inherit','closed','closed','','10-revision-v1','','','2023-08-20 18:56:05','2023-08-20 18:56:05','',10,'http://vine-dine-event-catering.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-08-20 18:56:15','2023-08-20 18:56:15','','Vine & Dine Events','','publish','closed','closed','','vine-dine-events','','','2023-08-21 18:42:08','2023-08-21 18:42:08','',0,'http://vine-dine-event-catering.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2023-08-20 18:56:15','2023-08-20 18:56:15','','Vine & Dine Events','','inherit','closed','closed','','12-revision-v1','','','2023-08-20 18:56:15','2023-08-20 18:56:15','',12,'http://vine-dine-event-catering.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-08-20 18:56:37','2023-08-20 18:56:37','','Our food','','inherit','closed','closed','','12-revision-v1','','','2023-08-20 18:56:37','2023-08-20 18:56:37','',12,'http://vine-dine-event-catering.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-08-20 18:56:47','2023-08-20 18:56:47','','Vine & Dine Events','','inherit','closed','closed','','12-revision-v1','','','2023-08-20 18:56:47','2023-08-20 18:56:47','',12,'http://vine-dine-event-catering.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-08-20 18:56:57','2023-08-20 18:56:57','','Our food','','publish','closed','closed','','our-food','','','2023-08-22 17:53:48','2023-08-22 17:53:48','',0,'http://vine-dine-event-catering.local/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2023-08-20 18:56:57','2023-08-20 18:56:57','','Our food','','inherit','closed','closed','','16-revision-v1','','','2023-08-20 18:56:57','2023-08-20 18:56:57','',16,'http://vine-dine-event-catering.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-08-20 18:57:31','2023-08-20 18:57:31','','The Tasting Diary','','publish','closed','closed','','the-tasting-diary','','','2023-08-22 17:54:02','2023-08-22 17:54:02','',0,'http://vine-dine-event-catering.local/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2023-08-20 18:57:31','2023-08-20 18:57:31','','The Tasting Diary','','inherit','closed','closed','','18-revision-v1','','','2023-08-20 18:57:31','2023-08-20 18:57:31','',18,'http://vine-dine-event-catering.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2023-08-20 18:57:41','2023-08-20 18:57:41','','Testimonials','','publish','closed','closed','','testimonials','','','2023-08-22 17:54:16','2023-08-22 17:54:16','',0,'http://vine-dine-event-catering.local/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2023-08-20 18:57:41','2023-08-20 18:57:41','','Testimonials','','inherit','closed','closed','','20-revision-v1','','','2023-08-20 18:57:41','2023-08-20 18:57:41','',20,'http://vine-dine-event-catering.local/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-08-20 18:57:47','2023-08-20 18:57:47','','Contact','','publish','closed','closed','','contact','','','2023-08-20 18:57:47','2023-08-20 18:57:47','',0,'http://vine-dine-event-catering.local/?page_id=22',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2023-08-20 18:57:47','2023-08-20 18:57:47','','Contact','','inherit','closed','closed','','22-revision-v1','','','2023-08-20 18:57:47','2023-08-20 18:57:47','',22,'http://vine-dine-event-catering.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2023-08-20 18:58:30','2023-08-20 18:58:30','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-08-20 18:58:30\"\n    },\n    \"page_on_front\": {\n        \"value\": \"8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-08-20 18:58:30\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"16\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-08-20 18:58:30\"\n    }\n}','','','trash','closed','closed','','5b941a73-b798-4af2-ad9e-3de2ecbe02af','','','2023-08-20 18:58:30','2023-08-20 18:58:30','',0,'http://vine-dine-event-catering.local/5b941a73-b798-4af2-ad9e-3de2ecbe02af/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2023-08-20 19:05:02','2023-08-20 19:05:02','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Home page settings','home-page-settings','publish','closed','closed','','group_64e2634398475','','','2023-08-22 18:53:29','2023-08-22 18:53:29','',0,'http://vine-dine-event-catering.local/?post_type=acf-field-group&#038;p=25',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2023-08-20 19:05:02','2023-08-20 19:05:02','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}','Text (2 column)','text_2-col','publish','closed','closed','','field_64e263448e487','','','2023-08-22 18:46:54','2023-08-22 18:46:54','',25,'http://vine-dine-event-catering.local/?post_type=acf-field&#038;p=26',10,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2023-08-20 19:22:47','2023-08-20 19:22:47','','Home','','inherit','closed','closed','','8-revision-v1','','','2023-08-20 19:22:47','2023-08-20 19:22:47','',8,'http://vine-dine-event-catering.local/?p=27',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2023-08-20 19:30:05','2023-08-20 19:30:05','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Paragraph Title','paragraph_title','publish','closed','closed','','field_64e269a1b5164','','','2023-08-22 18:46:54','2023-08-22 18:46:54','',25,'http://vine-dine-event-catering.local/?post_type=acf-field&#038;p=28',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2023-08-20 19:30:36','2023-08-20 19:30:36','','Home','','inherit','closed','closed','','8-revision-v1','','','2023-08-20 19:30:36','2023-08-20 19:30:36','',8,'http://vine-dine-event-catering.local/?p=29',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2023-08-20 19:34:29','2023-08-20 19:34:29','','Home','','inherit','closed','closed','','8-revision-v1','','','2023-08-20 19:34:29','2023-08-20 19:34:29','',8,'http://vine-dine-event-catering.local/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2023-08-20 19:35:00','2023-08-20 19:35:00','','Home','','inherit','closed','closed','','8-revision-v1','','','2023-08-20 19:35:00','2023-08-20 19:35:00','',8,'http://vine-dine-event-catering.local/?p=31',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2023-08-20 19:39:51','2023-08-20 19:39:51','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Home Hero Image','home_hero_image','publish','closed','closed','','field_64e26bc8455ee','','','2023-08-22 18:46:54','2023-08-22 18:46:54','',25,'http://vine-dine-event-catering.local/?post_type=acf-field&#038;p=32',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2023-08-20 19:44:36','2023-08-20 19:44:36','','Home-Hero-Image','','inherit','open','closed','','home-hero-image','','','2023-08-20 19:44:36','2023-08-20 19:44:36','',8,'http://vine-dine-event-catering.local/wp-content/uploads/2023/08/Home-Hero-Image.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (35,1,'2023-08-20 19:44:41','2023-08-20 19:44:41','','Home','','inherit','closed','closed','','8-revision-v1','','','2023-08-20 19:44:41','2023-08-20 19:44:41','',8,'http://vine-dine-event-catering.local/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2023-08-20 20:21:00','2023-08-20 20:21:00','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:11:\"post_status\";a:1:{i:0;s:7:\"publish\";}s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:13:\"bidirectional\";i:0;s:2:\"ui\";i:1;s:20:\"bidirectional_target\";a:0:{}}','Page Link Card (left)','page_link_card_left','publish','closed','closed','','field_64e27320f8c92','','','2023-08-22 18:46:54','2023-08-22 18:46:54','',25,'http://vine-dine-event-catering.local/?post_type=acf-field&#038;p=36',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2023-08-20 20:23:35','2023-08-20 20:23:35','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:11:\"post_status\";a:1:{i:0;s:7:\"publish\";}s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:13:\"bidirectional\";i:0;s:2:\"ui\";i:1;s:20:\"bidirectional_target\";a:0:{}}','Page Link Card (right)','page_link_card_right','publish','closed','closed','','field_64e2763757017','','','2023-08-22 18:46:54','2023-08-22 18:46:54','',25,'http://vine-dine-event-catering.local/?post_type=acf-field&#038;p=37',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2023-08-20 20:27:27','2023-08-20 20:27:27','','Home','','inherit','closed','closed','','8-revision-v1','','','2023-08-20 20:27:27','2023-08-20 20:27:27','',8,'http://vine-dine-event-catering.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2023-08-21 18:42:02','2023-08-21 18:42:02','','long dining table lined with glasses and floral decoration','','inherit','open','closed','','long-dining-table-lined-with-glasses-and-floral-decoration','','','2023-08-21 18:42:02','2023-08-21 18:42:02','',12,'http://vine-dine-event-catering.local/wp-content/uploads/2023/08/long-dining-table-lined-with-glasses-and-floral-decoration.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (41,1,'2023-08-21 18:42:48','2023-08-21 18:42:48','','A wedding couple kissing under confetti','','inherit','open','closed','','a-wedding-couple-kissing-under-confetti','','','2023-08-21 18:42:48','2023-08-21 18:42:48','',10,'http://vine-dine-event-catering.local/wp-content/uploads/2023/08/A-wedding-couple-kissing-under-confetti.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (42,1,'2023-08-21 18:49:33','2023-08-21 18:49:33','{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"First name\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"name\",\"label\":\"Last name\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"4\":{\"id\":\"4\",\"type\":\"number\",\"label\":\"Phone\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"5\":{\"id\":\"5\",\"type\":\"select\",\"label\":\"Dropdown\",\"choices\":{\"9\":{\"default\":\"1\",\"label\":\"Select a service...\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"1\":{\"label\":\"Wedding\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"2\":{\"label\":\"Wine tasting\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"3\":{\"label\":\"Dinner party\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"4\":{\"label\":\"Birthday\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"8\":{\"label\":\"Christening\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"7\":{\"label\":\"Wake\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"6\":{\"label\":\"Corporate event\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"5\":{\"label\":\"Other\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"}},\"description\":\"\",\"style\":\"modern\",\"size\":\"large\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"6\":{\"id\":\"6\",\"type\":\"number\",\"label\":\"Number of guests\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"7\":{\"id\":\"7\",\"type\":\"text\",\"label\":\"Venue\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"8\":{\"id\":\"8\",\"type\":\"text\",\"label\":\"Date\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Message\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}},\"id\":\"42\",\"field_id\":9,\"settings\":{\"form_title\":\"Request a brochure\",\"form_desc\":\"\",\"submit_text\":\"Request a brochure\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form\",\"sender_name\":\"Vine & Dine Event Catering\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"redirect\",\"message\":\"<p>Thanks for requesting our brochure! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"22\",\"redirect\":\"http:\\/\\/vine-dine-event-catering.local\\/wp-content\\/uploads\\/2023\\/08\\/What-we-do-at-Vine-Dine.pdf\"}},\"antispam\":\"1\",\"anti_spam\":{\"time_limit\":{\"duration\":\"3\"}},\"form_tags\":[]},\"meta\":{\"template\":\"simple-contact-form-template\"}}','Request a brochure','','publish','closed','closed','','simple-contact-form','','','2023-08-21 19:07:03','2023-08-21 19:07:03','',0,'http://vine-dine-event-catering.local/?post_type=wpforms&#038;p=42',0,'wpforms','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2023-08-21 18:49:35','2023-08-21 18:49:35','{\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}],\"id\":\"42\",\"field_id\":3,\"settings\":{\"form_title\":\"Simple Contact Form\",\"form_desc\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form\",\"sender_name\":\"Vine & Dine Event Catering\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"22\",\"redirect\":\"\"}},\"antispam\":\"1\",\"anti_spam\":{\"time_limit\":{\"duration\":\"3\"}},\"form_tags\":[]},\"meta\":{\"template\":\"simple-contact-form-template\"}}','Simple Contact Form','','inherit','closed','closed','','42-revision-v1','','','2023-08-21 18:49:35','2023-08-21 18:49:35','',42,'http://vine-dine-event-catering.local/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2023-08-21 18:50:20','2023-08-21 18:50:20','{\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"format\":\"first-last\",\"label\":\"Name\",\"required\":\"1\",\"size\":\"medium\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"required\":\"1\",\"size\":\"medium\",\"allowlist\":\"\",\"denylist\":\"\",\"default_value\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"size\":\"medium\",\"placeholder\":\"\",\"css\":\"\"}],\"field_id\":3,\"settings\":{\"form_title\":\"Simple Contact Form\",\"form_desc\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form\",\"sender_name\":\"Vine & Dine Event Catering\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"22\",\"redirect\":\"\"}},\"antispam\":\"1\",\"anti_spam\":{\"time_limit\":{\"duration\":\"3\"}},\"form_tags\":[],\"form_pages_title\":\"Simple Contact Form\",\"conversational_forms_title\":\"Simple Contact Form\",\"form_pages_page_slug\":\"simple-contact-form\",\"conversational_forms_page_slug\":\"simple-contact-form\"},\"meta\":{\"template\":\"simple-contact-form-template\"},\"id\":\"42\",\"payments\":[]}','Simple Contact Form','','inherit','closed','closed','','42-revision-v1','','','2023-08-21 18:50:20','2023-08-21 18:50:20','',42,'http://vine-dine-event-catering.local/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2023-08-21 18:53:18','2023-08-21 18:53:18','{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"First name\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"name\",\"label\":\"Last name\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}},\"id\":\"42\",\"field_id\":4,\"settings\":{\"form_title\":\"Simple Contact Form\",\"form_desc\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form\",\"sender_name\":\"Vine & Dine Event Catering\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"22\",\"redirect\":\"\"}},\"antispam\":\"1\",\"anti_spam\":{\"time_limit\":{\"duration\":\"3\"}},\"form_tags\":[]},\"meta\":{\"template\":\"simple-contact-form-template\"}}','Simple Contact Form','','inherit','closed','closed','','42-revision-v1','','','2023-08-21 18:53:18','2023-08-21 18:53:18','',42,'http://vine-dine-event-catering.local/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2023-08-21 18:56:39','2023-08-21 18:56:39','{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"First name\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"name\",\"label\":\"Last name\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"4\":{\"id\":\"4\",\"type\":\"number\",\"label\":\"Phone\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"5\":{\"id\":\"5\",\"type\":\"select\",\"label\":\"Dropdown\",\"choices\":{\"9\":{\"default\":\"1\",\"label\":\"Select a service...\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"1\":{\"label\":\"Wedding\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"2\":{\"label\":\"Wine tasting\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"3\":{\"label\":\"Dinner party\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"4\":{\"label\":\"Birthday\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"8\":{\"label\":\"Christening\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"7\":{\"label\":\"Wake\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"6\":{\"label\":\"Corporate event\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"5\":{\"label\":\"Other\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"}},\"description\":\"\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}},\"id\":\"42\",\"field_id\":6,\"settings\":{\"form_title\":\"Request a brochure\",\"form_desc\":\"\",\"submit_text\":\"Request a brochure\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form\",\"sender_name\":\"Vine & Dine Event Catering\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"22\",\"redirect\":\"\"}},\"antispam\":\"1\",\"anti_spam\":{\"time_limit\":{\"duration\":\"3\"}},\"form_tags\":[]},\"meta\":{\"template\":\"simple-contact-form-template\"}}','Request a brochure','','inherit','closed','closed','','42-revision-v1','','','2023-08-21 18:56:39','2023-08-21 18:56:39','',42,'http://vine-dine-event-catering.local/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2023-08-21 18:59:21','2023-08-21 18:59:21','{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"First name\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"name\",\"label\":\"Last name\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"4\":{\"id\":\"4\",\"type\":\"number\",\"label\":\"Phone\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"5\":{\"id\":\"5\",\"type\":\"select\",\"label\":\"Dropdown\",\"choices\":{\"9\":{\"default\":\"1\",\"label\":\"Select a service...\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"1\":{\"label\":\"Wedding\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"2\":{\"label\":\"Wine tasting\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"3\":{\"label\":\"Dinner party\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"4\":{\"label\":\"Birthday\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"8\":{\"label\":\"Christening\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"7\":{\"label\":\"Wake\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"6\":{\"label\":\"Corporate event\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"5\":{\"label\":\"Other\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"}},\"description\":\"\",\"style\":\"modern\",\"size\":\"large\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"6\":{\"id\":\"6\",\"type\":\"number\",\"label\":\"Number of guests\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"7\":{\"id\":\"7\",\"type\":\"text\",\"label\":\"Venue\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"8\":{\"id\":\"8\",\"type\":\"text\",\"label\":\"Date\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Message\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}},\"id\":\"42\",\"field_id\":9,\"settings\":{\"form_title\":\"Request a brochure\",\"form_desc\":\"\",\"submit_text\":\"Request a brochure\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form\",\"sender_name\":\"Vine & Dine Event Catering\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"22\",\"redirect\":\"\"}},\"antispam\":\"1\",\"anti_spam\":{\"time_limit\":{\"duration\":\"3\"}},\"form_tags\":[]},\"meta\":{\"template\":\"simple-contact-form-template\"}}','Request a brochure','','inherit','closed','closed','','42-revision-v1','','','2023-08-21 18:59:21','2023-08-21 18:59:21','',42,'http://vine-dine-event-catering.local/?p=47',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2023-08-21 19:04:36','2023-08-21 19:04:36','','The Oak Barn','','inherit','open','closed','','the-oak-barn','','','2023-08-21 19:04:36','2023-08-21 19:04:36','',0,'http://vine-dine-event-catering.local/wp-content/uploads/2023/08/The-Oak-Barn.pdf',0,'attachment','application/pdf',0);
INSERT INTO `wp_posts` VALUES (49,1,'2023-08-21 19:04:36','2023-08-21 19:04:36','','What we do at Vine & Dine','','inherit','open','closed','','what-we-do-at-vine-dine','','','2023-08-21 19:04:36','2023-08-21 19:04:36','',0,'http://vine-dine-event-catering.local/wp-content/uploads/2023/08/What-we-do-at-Vine-Dine.pdf',0,'attachment','application/pdf',0);
INSERT INTO `wp_posts` VALUES (50,1,'2023-08-21 19:05:29','2023-08-21 19:05:29','{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"First name\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"name\",\"label\":\"Last name\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"large\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":false,\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"4\":{\"id\":\"4\",\"type\":\"number\",\"label\":\"Phone\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"5\":{\"id\":\"5\",\"type\":\"select\",\"label\":\"Dropdown\",\"choices\":{\"9\":{\"default\":\"1\",\"label\":\"Select a service...\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"1\":{\"label\":\"Wedding\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"2\":{\"label\":\"Wine tasting\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"3\":{\"label\":\"Dinner party\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"4\":{\"label\":\"Birthday\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"8\":{\"label\":\"Christening\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"7\":{\"label\":\"Wake\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"6\":{\"label\":\"Corporate event\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"},\"5\":{\"label\":\"Other\",\"value\":\"\",\"image\":\"\",\"icon\":\"face-smile\",\"icon_style\":\"regular\"}},\"description\":\"\",\"style\":\"modern\",\"size\":\"large\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"6\":{\"id\":\"6\",\"type\":\"number\",\"label\":\"Number of guests\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"7\":{\"id\":\"7\",\"type\":\"text\",\"label\":\"Venue\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"8\":{\"id\":\"8\",\"type\":\"text\",\"label\":\"Date\",\"description\":\"\",\"size\":\"large\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Message\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}},\"id\":\"42\",\"field_id\":9,\"settings\":{\"form_title\":\"Request a brochure\",\"form_desc\":\"\",\"submit_text\":\"Request a brochure\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form\",\"sender_name\":\"Vine & Dine Event Catering\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"redirect\",\"message\":\"<p>Thanks for requesting our brochure! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"22\",\"redirect\":\"http:\\/\\/vine-dine-event-catering.local\\/wp-content\\/uploads\\/2023\\/08\\/What-we-do-at-Vine-Dine.pdf\"}},\"antispam\":\"1\",\"anti_spam\":{\"time_limit\":{\"duration\":\"3\"}},\"form_tags\":[]},\"meta\":{\"template\":\"simple-contact-form-template\"}}','Request a brochure','','inherit','closed','closed','','42-revision-v1','','','2023-08-21 19:05:29','2023-08-21 19:05:29','',42,'http://vine-dine-event-catering.local/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2023-08-21 19:07:50','2023-08-21 19:07:50','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:27:\"Add the ID of the form here\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Homepage Contact Form','homepage_contact_form','publish','closed','closed','','field_64e3b5e502b83','','','2023-08-22 18:46:54','2023-08-22 18:46:54','',25,'http://vine-dine-event-catering.local/?post_type=acf-field&#038;p=51',11,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2023-08-21 19:08:11','2023-08-21 19:08:11','','Home','','inherit','closed','closed','','8-revision-v1','','','2023-08-21 19:08:11','2023-08-21 19:08:11','',8,'http://vine-dine-event-catering.local/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2023-08-21 19:11:51','2023-08-21 19:11:51','','Home','','inherit','closed','closed','','8-revision-v1','','','2023-08-21 19:11:51','2023-08-21 19:11:51','',8,'http://vine-dine-event-catering.local/?p=53',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2023-08-21 19:15:02','2023-08-21 19:15:02','','Home','','inherit','closed','closed','','8-revision-v1','','','2023-08-21 19:15:02','2023-08-21 19:15:02','',8,'http://vine-dine-event-catering.local/?p=54',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2023-08-22 17:49:47','2023-08-22 17:49:47','','Testimonials','','inherit','open','closed','','testimonials-2','','','2023-08-22 17:49:47','2023-08-22 17:49:47','',0,'http://vine-dine-event-catering.local/wp-content/uploads/2023/08/Testimonials.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (57,1,'2023-08-22 17:49:51','2023-08-22 17:49:51','','The Tasting Diary','','inherit','open','closed','','the-tasting-diary-2','','','2023-08-22 17:49:51','2023-08-22 17:49:51','',0,'http://vine-dine-event-catering.local/wp-content/uploads/2023/08/The-Tasting-Diary.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (59,1,'2023-08-22 17:53:43','2023-08-22 17:53:43','','Our food','','inherit','open','closed','','our-food-2','','','2023-08-22 17:53:43','2023-08-22 17:53:43','',16,'http://vine-dine-event-catering.local/wp-content/uploads/2023/08/Our-food.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (60,1,'2023-08-22 17:59:46','2023-08-22 17:59:46','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:11:\"post_status\";a:1:{i:0;s:7:\"publish\";}s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:13:\"bidirectional\";i:0;s:2:\"ui\";i:1;s:20:\"bidirectional_target\";a:0:{}}','Card Link 3col 1','card_link_3col_1','publish','closed','closed','','field_64e4f756cda0d','','','2023-08-22 18:46:54','2023-08-22 18:46:54','',25,'http://vine-dine-event-catering.local/?post_type=acf-field&#038;p=60',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2023-08-22 17:59:46','2023-08-22 17:59:46','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:11:\"post_status\";a:1:{i:0;s:7:\"publish\";}s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:13:\"bidirectional\";i:0;s:2:\"ui\";i:1;s:20:\"bidirectional_target\";a:0:{}}','Card Link 3col 2','card_link_3col_2','publish','closed','closed','','field_64e4f789cda0e','','','2023-08-22 18:46:54','2023-08-22 18:46:54','',25,'http://vine-dine-event-catering.local/?post_type=acf-field&#038;p=61',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2023-08-22 17:59:46','2023-08-22 17:59:46','a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:11:\"post_status\";a:1:{i:0;s:7:\"publish\";}s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:13:\"bidirectional\";i:0;s:2:\"ui\";i:1;s:20:\"bidirectional_target\";a:0:{}}','Card Link 3col 3','card_link_3col_3','publish','closed','closed','','field_64e4f78dcda0f','','','2023-08-22 18:46:54','2023-08-22 18:46:54','',25,'http://vine-dine-event-catering.local/?post_type=acf-field&#038;p=62',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2023-08-22 18:06:49','2023-08-22 18:06:49','','Home','','inherit','closed','closed','','8-revision-v1','','','2023-08-22 18:06:49','2023-08-22 18:06:49','',8,'http://vine-dine-event-catering.local/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2023-08-22 18:44:39','2023-08-22 18:44:39','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Hero Header','hero_header','publish','closed','closed','','field_64e5020c4f104','','','2023-08-22 18:44:48','2023-08-22 18:44:48','',25,'http://vine-dine-event-catering.local/?post_type=acf-field&#038;p=64',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2023-08-22 18:45:10','2023-08-22 18:45:10','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Hero Standfirst','hero_standfirst','publish','closed','closed','','field_64e5022200ca9','','','2023-08-22 18:46:44','2023-08-22 18:46:44','',25,'http://vine-dine-event-catering.local/?post_type=acf-field&#038;p=65',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2023-08-22 18:46:44','2023-08-22 18:46:44','a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}','Hero Call to Action','hero_cta','publish','closed','closed','','field_64e5023ece967','','','2023-08-22 18:53:29','2023-08-22 18:53:29','',25,'http://vine-dine-event-catering.local/?post_type=acf-field&#038;p=66',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2023-08-22 18:52:00','2023-08-22 18:52:00','','Home','','inherit','closed','closed','','8-revision-v1','','','2023-08-22 18:52:00','2023-08-22 18:52:00','',8,'http://vine-dine-event-catering.local/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2023-08-22 18:52:42','2023-08-22 18:52:42','','Home','','inherit','closed','closed','','8-revision-v1','','','2023-08-22 18:52:42','2023-08-22 18:52:42','',8,'http://vine-dine-event-catering.local/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2023-08-22 18:53:48','2023-08-22 18:53:48','','Home','','inherit','closed','closed','','8-revision-v1','','','2023-08-22 18:53:48','2023-08-22 18:53:48','',8,'http://vine-dine-event-catering.local/?p=69',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','ben');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"0272a6af8a487c9a1c0a2c4b47f2cf045dfefdf7a0999463025e14d6dfc0ded5\";a:4:{s:10:\"expiration\";i:1692902535;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1692729735;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','5');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-08-20T18:52:58.095Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings-time','1692560665');
INSERT INTO `wp_usermeta` VALUES (21,1,'manageedit-acf-post-typecolumnshidden','a:1:{i:0;s:7:\"acf-key\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'acf_user_settings','a:1:{s:19:\"post-type-first-run\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (24,1,'wfls-last-login','1692729735');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'ben','$P$BvQWbICEC1HjZnGtqPos4a1CACINIe0','ben','dev-email@wpengine.local','http://vine-dine-event-catering.local','2023-08-20 18:40:47','',0,'ben');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfblockediplog`
--

DROP TABLE IF EXISTS `wp_wfblockediplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfblockediplog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) unsigned NOT NULL DEFAULT '0',
  `unixday` int(10) unsigned NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic',
  PRIMARY KEY (`IP`,`unixday`,`blockType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfblockediplog`
--

LOCK TABLES `wp_wfblockediplog` WRITE;
/*!40000 ALTER TABLE `wp_wfblockediplog` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfblockediplog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfblocks7`
--

DROP TABLE IF EXISTS `wp_wfblocks7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfblocks7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) unsigned DEFAULT '0',
  `blockedHits` int(10) unsigned DEFAULT '0',
  `expiration` bigint(20) unsigned NOT NULL DEFAULT '0',
  `parameters` text,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `IP` (`IP`),
  KEY `expiration` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfblocks7`
--

LOCK TABLES `wp_wfblocks7` WRITE;
/*!40000 ALTER TABLE `wp_wfblocks7` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfblocks7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfconfig`
--

DROP TABLE IF EXISTS `wp_wfconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfconfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfconfig`
--

LOCK TABLES `wp_wfconfig` WRITE;
/*!40000 ALTER TABLE `wp_wfconfig` DISABLE KEYS */;
INSERT INTO `wp_wfconfig` VALUES ('activatingIP',_binary '127.0.0.1','yes');
INSERT INTO `wp_wfconfig` VALUES ('actUpdateInterval',_binary '2','yes');
INSERT INTO `wp_wfconfig` VALUES ('addCacheComment',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('advancedCommentScanning',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('ajaxWatcherDisabled_admin',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('ajaxWatcherDisabled_front',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertEmails',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_adminLogin',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_block',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_breachLogin',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_firstAdminLoginOnly',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_firstNonAdminLoginOnly',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_loginLockout',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_lostPasswdForm',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_nonAdminLogin',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_scanIssues',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_severityLevel',_binary '25','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_throttle',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_update',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_wafDeactivated',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alertOn_wordfenceDeactivated',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('alert_maxHourly',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('allowed404s',_binary '/favicon.ico\n/apple-touch-icon*.png\n/*@2x.png\n/browserconfig.xml','yes');
INSERT INTO `wp_wfconfig` VALUES ('allowed404s6116Migration',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('allowHTTPSCaching',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('allowLegacy2FA',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('allowMySQLi',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('allScansScheduled',_binary 'a:0:{}','yes');
INSERT INTO `wp_wfconfig` VALUES ('apiKey',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('autoBlockScanners',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('autoUpdate',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('autoUpdateAttempts',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('bannedURLs',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('blockCustomText',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('blockedTime',_binary '300','yes');
INSERT INTO `wp_wfconfig` VALUES ('blocks702Migration',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('cacheType',_binary 'disabled','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_action',_binary 'block','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_bypassRedirDest',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_bypassRedirURL',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_bypassViewURL',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_cookieVal',_binary '64e25e8e75bf1','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_loggedInBlocked',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_redirURL',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('cbl_restOfSiteBlocked',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('checkSpamIP',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('config701Migration',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('config720Migration',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('dbTest',_binary 'a:1:{s:5:\"nonce\";s:64:\"8046193eb212ffeecc1de6f843c0296ebdb23d8a6b8599f0b97ccfa396bf0e4f\";}','no');
INSERT INTO `wp_wfconfig` VALUES ('dbVersion',_binary '8.0.16','yes');
INSERT INTO `wp_wfconfig` VALUES ('debugOn',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('deleteTablesOnDeact',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('detectProxyNextCheck',_binary '1693161741','no');
INSERT INTO `wp_wfconfig` VALUES ('detectProxyNonce',_binary '9b734cc95964879ebc95696bd407a67879e7b5cbc39d533c3d56450943976274','no');
INSERT INTO `wp_wfconfig` VALUES ('detectProxyRecommendation',_binary '','no');
INSERT INTO `wp_wfconfig` VALUES ('diagnosticsWflogsRemovalHistory',_binary '[]','no');
INSERT INTO `wp_wfconfig` VALUES ('disableCodeExecutionUploads',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('disableConfigCaching',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('disableWAFIPBlocking',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('dismissAutoPrependNotice',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('displayAutomaticBlocks',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('displayTopLevelBlocking',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('displayTopLevelLiveTraffic',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('displayTopLevelOptions',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('email_summary_dashboard_widget_enabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('email_summary_enabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('email_summary_excluded_directories',_binary 'wp-content/cache,wp-content/wflogs','yes');
INSERT INTO `wp_wfconfig` VALUES ('email_summary_interval',_binary 'weekly','yes');
INSERT INTO `wp_wfconfig` VALUES ('enableRemoteIpLookup',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('encKey',_binary '5e421b6aff919e49','yes');
INSERT INTO `wp_wfconfig` VALUES ('fileContentsGSB6315Migration',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('firewallEnabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('hasKeyConflict',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('howGetIPs',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('howGetIPs_trusted_proxies',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('isPaid',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('keyType',_binary 'free','yes');
INSERT INTO `wp_wfconfig` VALUES ('lastAdminLogin',_binary 'a:6:{s:6:\"userID\";i:1;s:8:\"username\";s:3:\"ben\";s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:4:\"time\";s:28:\"Tue 22nd August @ 06:42:15PM\";s:2:\"IP\";s:9:\"127.0.0.1\";}','yes');
INSERT INTO `wp_wfconfig` VALUES ('lastBlockAggregation',_binary '1692729800','yes');
INSERT INTO `wp_wfconfig` VALUES ('lastDailyCron',_binary '1692816174','yes');
INSERT INTO `wp_wfconfig` VALUES ('lastPermissionsTemplateCheck',_binary '1692816193','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveActivityPauseEnabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveTrafficEnabled',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveTraf_displayExpandedRecords',_binary '0','no');
INSERT INTO `wp_wfconfig` VALUES ('liveTraf_ignoreIPs',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveTraf_ignorePublishers',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveTraf_ignoreUA',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveTraf_ignoreUsers',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveTraf_maxAge',_binary '30','yes');
INSERT INTO `wp_wfconfig` VALUES ('liveTraf_maxRows',_binary '2000','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSecurityEnabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_blockAdminReg',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_breachPasswds',_binary 'admins','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_breachPasswds_enabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_countFailMins',_binary '240','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_disableApplicationPasswords',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_disableAuthorScan',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_disableOEmbedAuthor',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_enableSeparateTwoFactor',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_lockInvalidUsers',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_lockoutMins',_binary '240','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_maskLoginErrors',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_maxFailures',_binary '20','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_maxForgotPasswd',_binary '20','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_requireAdminTwoFactor',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_strongPasswds',_binary 'pubs','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_strongPasswds_enabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('loginSec_userBlacklist',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('longEncKey',_binary 'b60c4d4eff00a3f364b28fde9f069c534aa09009c53d3d625664f34a430bf89e','yes');
INSERT INTO `wp_wfconfig` VALUES ('lowResourceScansEnabled',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('manualScanType',_binary 'onceDaily','yes');
INSERT INTO `wp_wfconfig` VALUES ('max404Crawlers',_binary 'DISABLED','yes');
INSERT INTO `wp_wfconfig` VALUES ('max404Crawlers_action',_binary 'throttle','yes');
INSERT INTO `wp_wfconfig` VALUES ('max404Humans',_binary 'DISABLED','yes');
INSERT INTO `wp_wfconfig` VALUES ('max404Humans_action',_binary 'throttle','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxExecutionTime',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxGlobalRequests',_binary 'DISABLED','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxGlobalRequests_action',_binary 'throttle','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxMem',_binary '256','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxRequestsCrawlers',_binary 'DISABLED','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxRequestsCrawlers_action',_binary 'throttle','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxRequestsHumans',_binary 'DISABLED','yes');
INSERT INTO `wp_wfconfig` VALUES ('maxRequestsHumans_action',_binary 'throttle','yes');
INSERT INTO `wp_wfconfig` VALUES ('migration636_email_summary_excluded_directories',_binary '1','no');
INSERT INTO `wp_wfconfig` VALUES ('needsNewTour_blocking',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsNewTour_dashboard',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsNewTour_firewall',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsNewTour_livetraffic',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsNewTour_loginsecurity',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsNewTour_scan',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsUpgradeTour_blocking',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsUpgradeTour_dashboard',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsUpgradeTour_firewall',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsUpgradeTour_livetraffic',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsUpgradeTour_loginsecurity',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('needsUpgradeTour_scan',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('neverBlockBG',_binary 'neverBlockVerified','yes');
INSERT INTO `wp_wfconfig` VALUES ('notification_blogHighlights',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('notification_productUpdates',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('notification_promotions',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('notification_scanStatus',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('notification_securityAlerts',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('notification_updatesNeeded',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('onboardingAttempt1',_binary 'skipped','yes');
INSERT INTO `wp_wfconfig` VALUES ('onboardingAttempt2',_binary '','no');
INSERT INTO `wp_wfconfig` VALUES ('onboardingAttempt3',_binary '','no');
INSERT INTO `wp_wfconfig` VALUES ('onboardingAttempt3Initial',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('onboardingDelayedAt',_binary '1692726856','yes');
INSERT INTO `wp_wfconfig` VALUES ('other_blockBadPOST',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('other_bypassLitespeedNoabort',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('other_hideWPVersion',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('other_pwStrengthOnUpdate',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('other_scanComments',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('other_scanOutside',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('other_WFNet',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('previousWflogsFileList',_binary '[\"attack-data.php\",\"rules.php\",\"config-livewaf.php\",\"config-synced.php\",\"config.php\",\"config-transient.php\",\"GeoLite2-Country.mmdb\",\"template.php\",\"ips.php\",\".htaccess\"]','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_checkGSB',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_checkHowGetIPs',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_checkReadableConfig',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_comments',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_core',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_coreUnknown',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_diskSpace',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_fileContents',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_fileContentsGSB',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_geoipSupport',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_highSense',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_malware',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_oldVersions',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_options',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_passwds',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_plugins',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_posts',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_scanImages',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_suspectedFiles',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_suspiciousAdminUsers',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_suspiciousOptions',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_themes',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_wafStatus',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_wpscan_directoryListingEnabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scansEnabled_wpscan_fullPathDisclosure',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('scanType',_binary 'standard','yes');
INSERT INTO `wp_wfconfig` VALUES ('scan_exclude',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('scan_force_ipv4_start',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('scan_include_extra',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('scan_maxDuration',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('scan_maxIssues',_binary '1000','yes');
INSERT INTO `wp_wfconfig` VALUES ('scan_max_resume_attempts',_binary '2','yes');
INSERT INTO `wp_wfconfig` VALUES ('schedMode',_binary 'auto','yes');
INSERT INTO `wp_wfconfig` VALUES ('schedStartHour',_binary '16','yes');
INSERT INTO `wp_wfconfig` VALUES ('scheduledScansEnabled',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('serverDNS',_binary '1692816305;1;127.0.0.1','yes');
INSERT INTO `wp_wfconfig` VALUES ('showAdminBarMenu',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('spamvertizeCheck',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('ssl_verify',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('startScansRemotely',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('supportContent',_binary '{}','no');
INSERT INTO `wp_wfconfig` VALUES ('supportHash',_binary '','no');
INSERT INTO `wp_wfconfig` VALUES ('timeoffset_wf',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('timeoffset_wf_updated',_binary '1692816174','yes');
INSERT INTO `wp_wfconfig` VALUES ('totalAlertsSent',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('totalLoginHits',_binary '3','yes');
INSERT INTO `wp_wfconfig` VALUES ('totalLogins',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('touppBypassNextCheck',_binary '0','yes');
INSERT INTO `wp_wfconfig` VALUES ('touppPromptNeeded',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('vulnerabilities_plugin',_binary 'a:6:{i:0;a:3:{s:4:\"slug\";s:22:\"advanced-custom-fields\";s:11:\"fromVersion\";s:5:\"6.2.0\";s:10:\"vulnerable\";b:0;}i:1;a:3:{s:4:\"slug\";s:14:\"classic-editor\";s:11:\"fromVersion\";s:5:\"1.6.3\";s:10:\"vulnerable\";b:0;}i:2;a:3:{s:4:\"slug\";s:27:\"force-regenerate-thumbnails\";s:11:\"fromVersion\";s:5:\"2.1.2\";s:10:\"vulnerable\";b:0;}i:3;a:3:{s:4:\"slug\";s:7:\"imagify\";s:11:\"fromVersion\";s:5:\"2.1.1\";s:10:\"vulnerable\";b:0;}i:4;a:3:{s:4:\"slug\";s:9:\"wordfence\";s:11:\"fromVersion\";s:6:\"7.10.3\";s:10:\"vulnerable\";b:0;}i:5;a:3:{s:4:\"slug\";s:12:\"wpforms-lite\";s:11:\"fromVersion\";s:7:\"1.8.3.1\";s:10:\"vulnerable\";b:0;}}','yes');
INSERT INTO `wp_wfconfig` VALUES ('wafAlertInterval',_binary '600','yes');
INSERT INTO `wp_wfconfig` VALUES ('wafAlertOnAttacks',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('wafAlertThreshold',_binary '100','yes');
INSERT INTO `wp_wfconfig` VALUES ('wafAlertWhitelist',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('waf_status',_binary 'learning-mode','yes');
INSERT INTO `wp_wfconfig` VALUES ('whitelisted',_binary '','yes');
INSERT INTO `wp_wfconfig` VALUES ('whitelistedServices',_binary '{}','yes');
INSERT INTO `wp_wfconfig` VALUES ('whitelistHash',_binary '','no');
INSERT INTO `wp_wfconfig` VALUES ('whitelistPresets',_binary '{}','no');
INSERT INTO `wp_wfconfig` VALUES ('wordfenceI18n',_binary '1','yes');
INSERT INTO `wp_wfconfig` VALUES ('wordpressPluginVersions',_binary 'a:6:{s:22:\"advanced-custom-fields\";s:5:\"6.2.0\";s:14:\"classic-editor\";s:5:\"1.6.3\";s:27:\"force-regenerate-thumbnails\";s:5:\"2.1.2\";s:7:\"imagify\";s:5:\"2.1.1\";s:9:\"wordfence\";s:6:\"7.10.3\";s:12:\"wpforms-lite\";s:7:\"1.8.3.1\";}','yes');
INSERT INTO `wp_wfconfig` VALUES ('wordpressThemeVersions',_binary 'a:4:{s:15:\"twentytwentyone\";s:3:\"1.9\";s:17:\"twentytwentythree\";s:3:\"1.2\";s:15:\"twentytwentytwo\";s:3:\"1.5\";s:25:\"vine-dine-events-catering\";s:5:\"1.0.0\";}','yes');
INSERT INTO `wp_wfconfig` VALUES ('wordpressVersion',_binary '6.3','yes');
INSERT INTO `wp_wfconfig` VALUES ('wp_home_url',_binary 'http://vine-dine-event-catering.local','yes');
INSERT INTO `wp_wfconfig` VALUES ('wp_site_url',_binary 'http://vine-dine-event-catering.local','yes');
/*!40000 ALTER TABLE `wp_wfconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfcrawlers`
--

DROP TABLE IF EXISTS `wp_wfcrawlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfcrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  `PTR` varchar(255) DEFAULT '',
  PRIMARY KEY (`IP`,`patternSig`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfcrawlers`
--

LOCK TABLES `wp_wfcrawlers` WRITE;
/*!40000 ALTER TABLE `wp_wfcrawlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfcrawlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wffilechanges`
--

DROP TABLE IF EXISTS `wp_wffilechanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wffilechanges` (
  `filenameHash` char(64) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `md5` char(32) NOT NULL,
  PRIMARY KEY (`filenameHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wffilechanges`
--

LOCK TABLES `wp_wffilechanges` WRITE;
/*!40000 ALTER TABLE `wp_wffilechanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wffilechanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wffilemods`
--

DROP TABLE IF EXISTS `wp_wffilemods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wffilemods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `real_path` text NOT NULL,
  `knownFile` tinyint(3) unsigned NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) unsigned NOT NULL DEFAULT '0',
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?',
  PRIMARY KEY (`filenameMD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wffilemods`
--

LOCK TABLES `wp_wffilemods` WRITE;
/*!40000 ALTER TABLE `wp_wffilemods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wffilemods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfhits`
--

DROP TABLE IF EXISTS `wp_wfhits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfhits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attackLogTime` double(17,6) unsigned NOT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT '0',
  `statusCode` int(11) NOT NULL DEFAULT '200',
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `newVisit` tinyint(3) unsigned NOT NULL,
  `URL` text,
  `referer` text,
  `UA` text,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text,
  `actionData` text,
  PRIMARY KEY (`id`),
  KEY `k1` (`ctime`),
  KEY `k2` (`IP`,`ctime`),
  KEY `attackLogTime` (`attackLogTime`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfhits`
--

LOCK TABLES `wp_wfhits` WRITE;
/*!40000 ALTER TABLE `wp_wfhits` DISABLE KEYS */;
INSERT INTO `wp_wfhits` VALUES (1,0.000000,1692729735.494032,_binary '\0\0\0\0\0\0\0\0\0\0��\0\0',0,200,0,1,0,'http://vine-dine-event-catering.local/wp-login.php','http://vine-dine-event-catering.local/wp-login.php?interim-login=1&wp_lang=en_US','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36','loginOK',NULL,NULL);
/*!40000 ALTER TABLE `wp_wfhits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfhoover`
--

DROP TABLE IF EXISTS `wp_wfhoover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfhoover` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text,
  `host` text,
  `path` text,
  `hostKey` varbinary(124) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `k2` (`hostKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfhoover`
--

LOCK TABLES `wp_wfhoover` WRITE;
/*!40000 ALTER TABLE `wp_wfhoover` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfhoover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfissues`
--

DROP TABLE IF EXISTS `wp_wfissues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfissues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `lastUpdated` int(10) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `lastUpdated` (`lastUpdated`),
  KEY `status` (`status`),
  KEY `ignoreP` (`ignoreP`),
  KEY `ignoreC` (`ignoreC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfissues`
--

LOCK TABLES `wp_wfissues` WRITE;
/*!40000 ALTER TABLE `wp_wfissues` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfissues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfknownfilelist`
--

DROP TABLE IF EXISTS `wp_wfknownfilelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfknownfilelist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `path` text NOT NULL,
  `wordpress_path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfknownfilelist`
--

LOCK TABLES `wp_wfknownfilelist` WRITE;
/*!40000 ALTER TABLE `wp_wfknownfilelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfknownfilelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wflivetraffichuman`
--

DROP TABLE IF EXISTS `wp_wflivetraffichuman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wflivetraffichuman` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `identifier` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `expiration` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`,`identifier`),
  KEY `expiration` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wflivetraffichuman`
--

LOCK TABLES `wp_wflivetraffichuman` WRITE;
/*!40000 ALTER TABLE `wp_wflivetraffichuman` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wflivetraffichuman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wflocs`
--

DROP TABLE IF EXISTS `wp_wflocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wflocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) unsigned NOT NULL,
  `failed` tinyint(3) unsigned NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT '0.0000000',
  `lon` float(10,7) DEFAULT '0.0000000',
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wflocs`
--

LOCK TABLES `wp_wflocs` WRITE;
/*!40000 ALTER TABLE `wp_wflocs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wflocs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wflogins`
--

DROP TABLE IF EXISTS `wp_wflogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wflogins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `fail` tinyint(3) unsigned NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text,
  PRIMARY KEY (`id`),
  KEY `k1` (`IP`,`fail`),
  KEY `hitID` (`hitID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wflogins`
--

LOCK TABLES `wp_wflogins` WRITE;
/*!40000 ALTER TABLE `wp_wflogins` DISABLE KEYS */;
INSERT INTO `wp_wflogins` VALUES (1,1,1692729735.616270,0,'loginOK','ben',1,_binary '\0\0\0\0\0\0\0\0\0\0��\0\0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36');
/*!40000 ALTER TABLE `wp_wflogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfls_2fa_secrets`
--

DROP TABLE IF EXISTS `wp_wfls_2fa_secrets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfls_2fa_secrets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `secret` tinyblob NOT NULL,
  `recovery` blob NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `vtime` int(10) unsigned NOT NULL,
  `mode` enum('authenticator') NOT NULL DEFAULT 'authenticator',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfls_2fa_secrets`
--

LOCK TABLES `wp_wfls_2fa_secrets` WRITE;
/*!40000 ALTER TABLE `wp_wfls_2fa_secrets` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfls_2fa_secrets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfls_role_counts`
--

DROP TABLE IF EXISTS `wp_wfls_role_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfls_role_counts` (
  `serialized_roles` varbinary(255) NOT NULL,
  `two_factor_inactive` tinyint(1) NOT NULL,
  `user_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`serialized_roles`,`two_factor_inactive`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfls_role_counts`
--

LOCK TABLES `wp_wfls_role_counts` WRITE;
/*!40000 ALTER TABLE `wp_wfls_role_counts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfls_role_counts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfls_settings`
--

DROP TABLE IF EXISTS `wp_wfls_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfls_settings` (
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfls_settings`
--

LOCK TABLES `wp_wfls_settings` WRITE;
/*!40000 ALTER TABLE `wp_wfls_settings` DISABLE KEYS */;
INSERT INTO `wp_wfls_settings` VALUES ('2fa-user-grace-period',_binary '10','yes');
INSERT INTO `wp_wfls_settings` VALUES ('allow-disabling-ntp',_binary '1','yes');
INSERT INTO `wp_wfls_settings` VALUES ('allow-xml-rpc',_binary '1','yes');
INSERT INTO `wp_wfls_settings` VALUES ('captcha-stats',_binary '{\"counts\":[0,0,0,0,0,0,0,0,0,0,0],\"avg\":0}','yes');
INSERT INTO `wp_wfls_settings` VALUES ('delete-deactivation',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('disable-temporary-tables',_binary '0','yes');
INSERT INTO `wp_wfls_settings` VALUES ('enable-auth-captcha',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('enable-login-history-columns',_binary '1','yes');
INSERT INTO `wp_wfls_settings` VALUES ('enable-shortcode',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('enable-woocommerce-account-integration',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('enable-woocommerce-integration',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('global-notices',_binary '[]','yes');
INSERT INTO `wp_wfls_settings` VALUES ('ip-source',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('ip-trusted-proxies',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('last-secret-refresh',_binary '1692556940','yes');
INSERT INTO `wp_wfls_settings` VALUES ('ntp-failure-count',_binary '0','yes');
INSERT INTO `wp_wfls_settings` VALUES ('ntp-offset',_binary '0.32161426544189','yes');
INSERT INTO `wp_wfls_settings` VALUES ('recaptcha-threshold',_binary '0.5','yes');
INSERT INTO `wp_wfls_settings` VALUES ('remember-device',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('remember-device-duration',_binary '2592000','yes');
INSERT INTO `wp_wfls_settings` VALUES ('require-2fa-grace-period-enabled',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('require-2fa.administrator',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('schema-version',_binary '2','yes');
INSERT INTO `wp_wfls_settings` VALUES ('shared-hash-secret',_binary '21f38e1e10281f46969a42dd8b44f8a42a31f8d4c5ed71ea94b84cfe8e2d2e04','yes');
INSERT INTO `wp_wfls_settings` VALUES ('shared-symmetric-secret',_binary '5cc03fab1dd0e85420e844bd41c60e9699e35e34f487be6d9b611e0c66895b84','yes');
INSERT INTO `wp_wfls_settings` VALUES ('stack-ui-columns',_binary '1','yes');
INSERT INTO `wp_wfls_settings` VALUES ('use-ntp',_binary '1','yes');
INSERT INTO `wp_wfls_settings` VALUES ('user-count-query-state',_binary '0','yes');
INSERT INTO `wp_wfls_settings` VALUES ('whitelisted',_binary '','yes');
INSERT INTO `wp_wfls_settings` VALUES ('xmlrpc-enabled',_binary '1','yes');
/*!40000 ALTER TABLE `wp_wfls_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfnotifications`
--

DROP TABLE IF EXISTS `wp_wfnotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfnotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '1000',
  `ctime` int(10) unsigned NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfnotifications`
--

LOCK TABLES `wp_wfnotifications` WRITE;
/*!40000 ALTER TABLE `wp_wfnotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfnotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfpendingissues`
--

DROP TABLE IF EXISTS `wp_wfpendingissues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfpendingissues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `lastUpdated` int(10) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `lastUpdated` (`lastUpdated`),
  KEY `status` (`status`),
  KEY `ignoreP` (`ignoreP`),
  KEY `ignoreC` (`ignoreC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfpendingissues`
--

LOCK TABLES `wp_wfpendingissues` WRITE;
/*!40000 ALTER TABLE `wp_wfpendingissues` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfpendingissues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfreversecache`
--

DROP TABLE IF EXISTS `wp_wfreversecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfreversecache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfreversecache`
--

LOCK TABLES `wp_wfreversecache` WRITE;
/*!40000 ALTER TABLE `wp_wfreversecache` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfreversecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfsecurityevents`
--

DROP TABLE IF EXISTS `wp_wfsecurityevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfsecurityevents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `event_time` double(14,4) NOT NULL,
  `state` enum('new','sending','sent') NOT NULL DEFAULT 'new',
  `state_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfsecurityevents`
--

LOCK TABLES `wp_wfsecurityevents` WRITE;
/*!40000 ALTER TABLE `wp_wfsecurityevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfsecurityevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfsnipcache`
--

DROP TABLE IF EXISTS `wp_wfsnipcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfsnipcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `expiration` (`expiration`),
  KEY `IP` (`IP`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfsnipcache`
--

LOCK TABLES `wp_wfsnipcache` WRITE;
/*!40000 ALTER TABLE `wp_wfsnipcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfsnipcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfstatus`
--

DROP TABLE IF EXISTS `wp_wfstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfstatus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ctime` double(17,6) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `k1` (`ctime`),
  KEY `k2` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfstatus`
--

LOCK TABLES `wp_wfstatus` WRITE;
/*!40000 ALTER TABLE `wp_wfstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wftrafficrates`
--

DROP TABLE IF EXISTS `wp_wftrafficrates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wftrafficrates` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hitType` enum('hit','404') NOT NULL DEFAULT 'hit',
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eMin`,`IP`,`hitType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wftrafficrates`
--

LOCK TABLES `wp_wftrafficrates` WRITE;
/*!40000 ALTER TABLE `wp_wftrafficrates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wftrafficrates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfwaffailures`
--

DROP TABLE IF EXISTS `wp_wfwaffailures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wfwaffailures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `throwable` text NOT NULL,
  `rule_id` int(10) unsigned DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfwaffailures`
--

LOCK TABLES `wp_wfwaffailures` WRITE;
/*!40000 ALTER TABLE `wp_wfwaffailures` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfwaffailures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_payment_meta`
--

DROP TABLE IF EXISTS `wp_wpforms_payment_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforms_payment_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `meta_value` (`meta_value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_payment_meta`
--

LOCK TABLES `wp_wpforms_payment_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_payment_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_payment_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_payments`
--

DROP TABLE IF EXISTS `wp_wpforms_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforms_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subtotal_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `discount_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `total_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `currency` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `entry_id` bigint(20) NOT NULL DEFAULT '0',
  `gateway` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mode` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `transaction_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `customer_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `date_created_gmt` datetime NOT NULL,
  `date_updated_gmt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`(8)),
  KEY `total_amount` (`total_amount`),
  KEY `type` (`type`(8)),
  KEY `transaction_id` (`transaction_id`(32)),
  KEY `customer_id` (`customer_id`(32)),
  KEY `subscription_id` (`subscription_id`(32)),
  KEY `subscription_status` (`subscription_status`(8)),
  KEY `title` (`title`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_payments`
--

LOCK TABLES `wp_wpforms_payments` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpforms_tasks_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_tasks_meta`
--

LOCK TABLES `wp_wpforms_tasks_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` DISABLE KEYS */;
INSERT INTO `wp_wpforms_tasks_meta` VALUES (1,'wpforms_process_forms_locator_scan','W10=','2023-08-21 18:49:53');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (2,'wpforms_admin_addons_cache_update','W10=','2023-08-21 18:50:19');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (3,'wpforms_admin_builder_templates_cache_update','W10=','2023-08-21 18:50:19');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (4,'wpforms_builder_help_cache_update','W10=','2023-08-21 18:50:20');
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-23 21:06:10
