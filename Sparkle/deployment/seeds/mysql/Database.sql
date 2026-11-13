-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: peacockdb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `channel` (
  `channel_id` bigint NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `team_id` bigint NOT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`channel_id`),
  KEY `idx_team_create` (`team_id`,`create_at`),
  CONSTRAINT `FK63ug4lh1q6hpxuyqhbs6xm1v8` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT INTO `channel` VALUES (7650002000001,'2024-03-20 09:00:00.000000',7650000000002,7650000000001,'2024-03-20 09:00:00.000000',7650000000002,'General discussions for the development team','general','DEFAULT'),(7650002000002,'2024-03-20 09:00:00.000000',7650000000002,7650000000001,'2024-03-20 09:00:00.000000',7650000000002,'Technical discussions and architecture decisions','architecture','DEFAULT'),(7650002000003,'2024-03-25 10:00:00.000000',7650000000003,7650000000001,'2024-03-25 10:00:00.000000',7650000000003,'Backend services and API development','backend','DEFAULT'),(7650002000004,'2024-03-25 10:00:00.000000',7650000000002,7650000000001,'2024-03-25 10:00:00.000000',7650000000002,'Frontend development and React discussions','frontend','DEFAULT'),(7650002000005,'2024-04-01 09:00:00.000000',7650000000004,7650000000001,'2024-04-01 09:00:00.000000',7650000000004,'DevOps, CI/CD, and infrastructure topics','devops','DEFAULT'),(7650002000006,'2024-04-15 11:00:00.000000',7650000000005,7650000000001,'2024-04-15 11:00:00.000000',7650000000005,'Mobile app development (iOS and Android)','mobile','DEFAULT'),(7650002000007,'2024-05-01 14:00:00.000000',7650000000006,7650000000001,'2024-05-01 14:00:00.000000',7650000000006,'Testing strategies and quality assurance','qa-testing','DEFAULT'),(7650002000008,'2024-03-20 09:00:00.000000',7650000000007,7650000000002,'2024-03-20 09:00:00.000000',7650000000007,'General sales team communications','sales-floor','DEFAULT'),(7650002000009,'2024-03-22 10:00:00.000000',7650000000007,7650000000002,'2024-03-22 10:00:00.000000',7650000000007,'Pipeline updates and deal discussions','pipeline','DEFAULT'),(7650002000010,'2024-04-01 09:00:00.000000',7650000000008,7650000000002,'2024-04-01 09:00:00.000000',7650000000008,'Healthcare industry leads and accounts','healthcare-accounts','DEFAULT'),(7650002000011,'2024-04-01 09:00:00.000000',7650000000009,7650000000002,'2024-04-01 09:00:00.000000',7650000000009,'Fintech sector opportunities','fintech-accounts','DEFAULT'),(7650002000012,'2024-05-15 11:00:00.000000',7650000000010,7650000000002,'2024-05-15 11:00:00.000000',7650000000010,'Sales metrics and reporting','sales-ops','DEFAULT'),(7650002000013,'2024-03-20 09:00:00.000000',7650000000011,7650000000003,'2024-03-20 09:00:00.000000',7650000000011,'Design team general discussion','design-studio','DEFAULT'),(7650002000014,'2024-03-25 10:00:00.000000',7650000000011,7650000000003,'2024-03-25 10:00:00.000000',7650000000011,'User research and usability testing','user-research','DEFAULT'),(7650002000015,'2024-04-01 09:00:00.000000',7650000000012,7650000000003,'2024-04-01 09:00:00.000000',7650000000012,'Brand guidelines and visual identity','brand','DEFAULT'),(7650002000016,'2024-04-15 14:00:00.000000',7650000000013,7650000000003,'2024-04-15 14:00:00.000000',7650000000013,'Design system components and patterns','design-system','DEFAULT'),(7650002000017,'2024-05-01 10:00:00.000000',7650000000014,7650000000003,'2024-05-01 10:00:00.000000',7650000000014,'Animation and motion design work','motion-lab','DEFAULT'),(7650002000018,'2024-03-18 09:00:00.000000',7650000000001,7650000000001,'2024-03-18 09:00:00.000000',7650000000001,'Company-wide announcements','announcements','DEFAULT'),(7650002000019,'2024-03-18 09:00:00.000000',7650000000001,7650000000002,'2024-03-18 09:00:00.000000',7650000000001,'Company-wide announcements','announcements','DEFAULT'),(7650002000020,'2024-03-18 09:00:00.000000',7650000000001,7650000000003,'2024-03-18 09:00:00.000000',7650000000001,'Company-wide announcements','announcements','DEFAULT'),(7650002000021,'2024-03-18 10:00:00.000000',7650000000001,7650000000001,'2024-03-18 10:00:00.000000',7650000000001,'Random non-work discussions','random','DEFAULT'),(7650002000022,'2024-03-18 10:00:00.000000',7650000000001,7650000000002,'2024-03-18 10:00:00.000000',7650000000001,'Random non-work discussions','random','DEFAULT'),(7650002000023,'2024-03-18 10:00:00.000000',7650000000001,7650000000003,'2024-03-18 10:00:00.000000',7650000000001,'Random non-work discussions','random','DEFAULT'),(359257365121454080,'2026-09-18 15:40:30.524309',7650000000008,7650000000002,'2026-09-18 16:18:42.756997',7650000000008,'M&A Contract Dispute Resolution','Mergers and acquisitions and Investment','DELETED');
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `comment_id` bigint NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `post_id` bigint NOT NULL,
  `reply_to_id` bigint DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `idx_post_create` (`post_id`,`create_at`),
  CONSTRAINT `FKs1slvnkuemjsq2kj4h3vhx7i1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (7650005000001,'2025-01-05 11:00:00.000000',7650000000003,7650004000001,NULL,'2025-01-05 11:00:00.000000',7650000000003,'{\"type\": \"text\", \"contentPayload\": \"Great documentation! The rollback section is particularly helpful. One suggestion: add a troubleshooting FAQ for common deployment errors.\"}','DEFAULT'),(7650005000002,'2025-01-05 11:30:00.000000',7650000000004,7650004000001,NULL,'2025-01-05 11:30:00.000000',7650000000004,'{\"type\": \"text\", \"contentPayload\": \"Will add that. Planning to include common Docker and Kubernetes errors with solutions.\"}','DEFAULT'),(7650005000003,'2025-01-05 12:00:00.000000',7650000000005,7650004000001,7650005000001,'2025-01-05 12:00:00.000000',7650000000005,'{\"type\": \"text\", \"contentPayload\": \"Also recommend adding a section on database migration Gotchas. We ran into some issues with the schema changes.\"}','DEFAULT'),(7650005000004,'2025-01-06 15:00:00.000000',7650000000002,7650004000002,NULL,'2025-01-06 15:00:00.000000',7650000000002,'{\"type\": \"text\", \"contentPayload\": \"Strong proposal. The performance benchmarks are convincing. What is the estimated development timeline?\"}','DEFAULT'),(7650005000005,'2025-01-06 15:30:00.000000',7650000000003,7650004000002,NULL,'2025-01-06 15:30:00.000000',7650000000003,'{\"type\": \"text\", \"contentPayload\": \"I estimate 6-8 weeks for the core implementation, including thorough testing. We can do a phased rollout starting with read-only queries.\"}','DEFAULT'),(7650005000006,'2025-01-06 16:00:00.000000',7650000000006,7650004000002,7650005000004,'2025-01-06 16:00:00.000000',7650000000006,'{\"type\": \"text\", \"contentPayload\": \"Will the testing strategy change with GraphQL? We will need to update our API testing approach.\"}','DEFAULT'),(7650005000007,'2025-01-05 15:00:00.000000',7650000000012,7650004000011,NULL,'2025-01-05 15:00:00.000000',7650000000012,'{\"type\": \"text\", \"contentPayload\": \"This is fantastic work. The component documentation is very thorough. Can we schedule a walkthrough for the frontend team?\"}','DEFAULT'),(7650005000008,'2025-01-05 16:00:00.000000',7650000000013,7650004000011,NULL,'2025-01-05 16:00:00.000000',7650000000013,'{\"type\": \"text\", \"contentPayload\": \"Thanks Rachel! Thursday at 2 PM works for me. I will prepare a live coding session.\"}','DEFAULT'),(7650005000009,'2025-01-06 09:00:00.000000',7650000000002,7650004000011,NULL,'2025-01-06 09:00:00.000000',7650000000002,'{\"type\": \"text\", \"contentPayload\": \"The Storybook integration is excellent. Makes component development much faster.\"}','DEFAULT'),(7650005000010,'2025-01-06 11:00:00.000000',7650000000011,7650004000012,NULL,'2025-01-06 11:00:00.000000',7650000000011,'{\"type\": \"text\", \"contentPayload\": \"The persona updates are spot on. The enterprise user segment really resonates with what we hear in sales calls.\"}','DEFAULT'),(7650005000011,'2025-01-06 14:00:00.000000',7650000000008,7650004000012,NULL,'2025-01-06 14:00:00.000000',7650000000008,'{\"type\": \"text\", \"contentPayload\": \"Great insights here. The journey mapping will help us align our demo scripts with actual user workflows.\"}','DEFAULT'),(7650005000012,'2025-01-05 10:00:00.000000',7650000000009,7650004000006,NULL,'2025-01-05 10:00:00.000000',7650000000009,'{\"type\": \"text\", \"contentPayload\": \"The competitive positioning section is exactly what we needed. Clear differentiation from HubSpot.\"}','DEFAULT'),(7650005000013,'2025-01-05 11:00:00.000000',7650000000010,7650004000006,NULL,'2025-01-05 11:00:00.000000',7650000000010,'{\"type\": \"text\", \"contentPayload\": \"Added the updated objection handling scripts based on Q4 learnings. Should help with the healthcare segment.\"}','DEFAULT'),(7650005000014,'2025-01-08 12:00:00.000000',7650000000002,7650004000004,NULL,'2025-01-08 12:00:00.000000',7650000000002,'{\"type\": \"text\", \"contentPayload\": \"Smooth release! The new notification system is working great. Already seeing positive feedback from users.\"}','DEFAULT'),(7650005000015,'2025-01-08 14:00:00.000000',7650000000006,7650004000004,7650005000014,'2025-01-08 14:00:00.000000',7650000000006,'{\"type\": \"text\", \"contentPayload\": \"Crash rate dropped from 0.8% to 0.2% after the update. Good job everyone!\"}','DEFAULT'),(359245167082983424,'2026-09-18 14:52:02.285356',7650000000003,7650004000001,NULL,'2026-09-18 15:16:55.289435',7650000000003,'{\"type\": \"text\", \"contentPayload\": \"COMMENT HAS BEEN DELETED\"}','DELETED'),(359251677137719296,'2026-09-18 15:17:54.403456',7650000000003,7650004000001,NULL,'2026-09-18 15:18:36.679248',7650000000003,'{\"type\": \"text\", \"contentPayload\": \"COMMENT HAS BEEN DELETED\"}','DELETED');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_emoji`
--

DROP TABLE IF EXISTS `custom_emoji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_emoji` (
  `create_by` bigint DEFAULT NULL,
  `emoji_id` bigint NOT NULL,
  `team_id` bigint NOT NULL,
  `emoji_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DEFAULT',
  PRIMARY KEY (`emoji_id`),
  KEY `idx_team_emoji` (`team_id`,`emoji_name`),
  CONSTRAINT `FKheu11359frfm6qkm7n5gh1fmm` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_emoji`
--

LOCK TABLES `custom_emoji` WRITE;
/*!40000 ALTER TABLE `custom_emoji` DISABLE KEYS */;
INSERT INTO `custom_emoji` VALUES (7650000000002,7650007000001,7650000000001,'deploy_rocket','deploy_rocket','DEFAULT'),(7650000000003,7650007000002,7650000000001,'green_check','green_check','DEFAULT'),(7650000000004,7650007000003,7650000000001,'docker_whale','docker_whale','DEFAULT'),(7650000000005,7650007000004,7650000000001,'android_robot','android_robot','DEFAULT'),(7650000000006,7650007000005,7650000000001,'test_passed','test_passed','DEFAULT'),(7650000000007,7650007000006,7650000000002,'money_bag','money_bag','DEFAULT'),(7650000000008,7650007000007,7650000000002,'deal_closed','deal_closed','DEFAULT'),(7650000000009,7650007000008,7650000000002,'target_hit','target_hit','DEFAULT'),(7650000000010,7650007000009,7650000000002,'pipeline_flow','pipeline_flow','DEFAULT'),(7650000000011,7650007000010,7650000000003,'design_wizard','design_wizard','DEFAULT'),(7650000000012,7650007000011,7650000000003,'pixel_perfect','pixel_perfect','DEFAULT'),(7650000000013,7650007000012,7650000000003,'color_palette','color_palette','DEFAULT'),(7650000000014,7650007000013,7650000000003,'animation_star','animation_star','DEFAULT'),(7650000000001,7650007000014,7650000000001,'phoenix_pride','phoenix_pride','DEFAULT'),(7650000000001,7650007000015,7650000000002,'team_spirit','team_spirit','DEFAULT'),(7650000000001,7650007000016,7650000000003,'coffee_time','coffee_time','DEFAULT'),(7650000000001,7650007000017,7650000000001,'fire_emoji','fire_emoji','DEFAULT'),(7650000000001,7650007000018,7650000000002,'party_popper','party_popper','DEFAULT');
/*!40000 ALTER TABLE `custom_emoji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direct_message`
--

DROP TABLE IF EXISTS `direct_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direct_message` (
  `create_at` datetime(6) DEFAULT NULL,
  `message_id` bigint NOT NULL,
  `reply_to_id` bigint DEFAULT NULL,
  `send_at` datetime(6) DEFAULT NULL,
  `sender_id` bigint NOT NULL,
  `session_id` bigint NOT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`message_id`),
  KEY `idx_session_message` (`session_id`,`message_id`),
  CONSTRAINT `FKl40muonx3lcdqmebnjxagwsvp` FOREIGN KEY (`session_id`) REFERENCES `private_session` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_message`
--

LOCK TABLES `direct_message` WRITE;
/*!40000 ALTER TABLE `direct_message` DISABLE KEYS */;
INSERT INTO `direct_message` VALUES ('2025-01-05 10:05:00.000000',7650009000001,NULL,'2025-01-05 10:05:00.000000',7650000000001,7650008000001,'2025-01-05 10:05:00.000000','{\"type\": \"text\", \"contentPayload\": \"Hey Sarah, can you review the GraphQL RFC when you get a chance? Want your perspective on the timeline.\"}','ACTIVE'),('2025-01-05 10:30:00.000000',7650009000002,NULL,'2025-01-05 10:30:00.000000',7650000000002,7650008000001,'2025-01-05 10:30:00.000000','{\"type\": \"text\", \"contentPayload\": \"Sure thing! I took a quick look. The performance benchmarks look solid. Will give detailed feedback by EOD.\"}','ACTIVE'),('2025-01-05 11:00:00.000000',7650009000003,NULL,'2025-01-05 11:00:00.000000',7650000000001,7650008000001,'2025-01-05 11:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Thanks. Also, let us sync on Sprint 47 priorities tomorrow morning.\"}','ACTIVE'),('2025-01-06 14:05:00.000000',7650009000004,NULL,'2025-01-06 14:05:00.000000',7650000000001,7650008000002,'2025-01-06 14:05:00.000000','{\"type\": \"text\", \"contentPayload\": \"Michael, the board is happy with Q4 results. Great leadership from you and the sales team.\"}','ACTIVE'),('2025-01-06 14:15:00.000000',7650009000005,NULL,'2025-01-06 14:15:00.000000',7650000000007,7650008000002,'2025-01-06 14:15:00.000000','{\"type\": \"text\", \"contentPayload\": \"Thank you! The team really pulled together in December. Meridian Healthcare alone brought in $180K.\"}','ACTIVE'),('2025-01-06 14:30:00.000000',7650009000006,NULL,'2025-01-06 14:30:00.000000',7650000000001,7650008000002,'2025-01-06 14:30:00.000000','{\"type\": \"text\", \"contentPayload\": \"Exactly. Keep pushing on the fintech segment - that is where I see the most growth potential.\"}','ACTIVE'),('2025-01-07 09:05:00.000000',7650009000007,NULL,'2025-01-07 09:05:00.000000',7650000000001,7650008000003,'2025-01-07 09:05:00.000000','{\"type\": \"text\", \"contentPayload\": \"Alex, the design system documentation is excellent. Engineers love working with it.\"}','ACTIVE'),('2025-01-07 09:20:00.000000',7650009000008,NULL,'2025-01-07 09:20:00.000000',7650000000011,7650008000003,'2025-01-07 09:20:00.000000','{\"type\": \"text\", \"contentPayload\": \"Thanks! Rachel and Chris put a lot of effort into it. We are planning v3.0 with dark mode support.\"}','ACTIVE'),('2025-01-07 09:45:00.000000',7650009000009,NULL,'2025-01-07 09:45:00.000000',7650000000001,7650008000003,'2025-01-07 09:45:00.000000','{\"type\": \"text\", \"contentPayload\": \"Dark mode is highly requested. Prioritize it for Q1 if possible.\"}','ACTIVE'),('2025-01-04 11:05:00.000000',7650009000010,NULL,'2025-01-04 11:05:00.000000',7650000000002,7650008000004,'2025-01-04 11:05:00.000000','{\"type\": \"text\", \"contentPayload\": \"James, can you lead the GraphQL implementation? You have the most backend experience.\"}','ACTIVE'),('2025-01-04 11:20:00.000000',7650009000011,NULL,'2025-01-04 11:20:00.000000',7650000000003,7650008000004,'2025-01-04 11:20:00.000000','{\"type\": \"text\", \"contentPayload\": \"Happy to take this on. I have been researching best practices for a while. Time to put it into action.\"}','ACTIVE'),('2025-01-04 11:30:00.000000',7650009000012,NULL,'2025-01-04 11:30:00.000000',7650000000002,7650008000004,'2025-01-04 11:30:00.000000','{\"type\": \"text\", \"contentPayload\": \"Perfect. Start with a spike next week to validate the approach. Talk to David about mobile requirements.\"}','ACTIVE'),('2025-01-03 10:05:00.000000',7650009000013,NULL,'2025-01-03 10:05:00.000000',7650000000007,7650008000006,'2025-01-03 10:05:00.000000','{\"type\": \"text\", \"contentPayload\": \"Jennifer, Meridian Healthcare is moving fast. Make sure we have a contract draft ready by Friday.\"}','ACTIVE'),('2025-01-03 10:20:00.000000',7650009000014,NULL,'2025-01-03 10:20:00.000000',7650000000008,7650008000006,'2025-01-03 10:20:00.000000','{\"type\": \"text\", \"contentPayload\": \"On it! I already started drafting the outline. Legal review should take about 3 days.\"}','ACTIVE'),('2025-01-03 10:35:00.000000',7650009000015,NULL,'2025-01-03 10:35:00.000000',7650000000007,7650008000006,'2025-01-03 10:35:00.000000','{\"type\": \"text\", \"contentPayload\": \"Great. Also, schedule an executive sponsor meeting for next week if possible.\"}','ACTIVE'),('2025-01-04 14:05:00.000000',7650009000016,NULL,'2025-01-04 14:05:00.000000',7650000000011,7650008000008,'2025-01-04 14:05:00.000000','{\"type\": \"text\", \"contentPayload\": \"Rachel, the user research insights are gold. Can you present to the leadership team next week?\"}','ACTIVE'),('2025-01-04 14:20:00.000000',7650009000017,NULL,'2025-01-04 14:20:00.000000',7650000000012,7650008000008,'2025-01-04 14:20:00.000000','{\"type\": \"text\", \"contentPayload\": \"Absolutely! I will prepare a 20-minute presentation highlighting the key findings.\"}','ACTIVE'),('2025-01-04 14:30:00.000000',7650009000018,NULL,'2025-01-04 14:30:00.000000',7650000000011,7650008000008,'2025-01-04 14:30:00.000000','{\"type\": \"text\", \"contentPayload\": \"Perfect. Focus on the settings page redesign - that is where we can make the biggest impact.\"}','ACTIVE'),('2025-01-07 10:05:00.000000',7650009000019,NULL,'2025-01-07 10:05:00.000000',7650000000003,7650008000010,'2025-01-07 10:05:00.000000','{\"type\": \"text\", \"contentPayload\": \"Emily, we will need dedicated GraphQL server instances. Can you help with the infrastructure design?\"}','ACTIVE'),('2025-01-07 10:25:00.000000',7650009000020,NULL,'2025-01-07 10:25:00.000000',7650000000004,7650008000010,'2025-01-07 10:25:00.000000','{\"type\": \"text\", \"contentPayload\": \"Sure! I am thinking 3 instances behind the load balancer with auto-scaling. Will set up monitoring too.\"}','ACTIVE'),('2025-01-07 10:45:00.000000',7650009000021,NULL,'2025-01-07 10:45:00.000000',7650000000003,7650008000010,'2025-01-07 10:45:00.000000','{\"type\": \"text\", \"contentPayload\": \"Sounds perfect. Let us sync on the metrics we should track for performance.\"}','ACTIVE'),('2025-01-08 09:05:00.000000',7650009000022,NULL,'2025-01-08 09:05:00.000000',7650000000008,7650008000011,'2025-01-08 09:05:00.000000','{\"type\": \"text\", \"contentPayload\": \"Amanda, can you pull the win rate analysis for healthcare deals in 2024? Need it for the board presentation.\"}','ACTIVE'),('2025-01-08 09:30:00.000000',7650009000023,NULL,'2025-01-08 09:30:00.000000',7650000000010,7650008000011,'2025-01-08 09:30:00.000000','{\"type\": \"text\", \"contentPayload\": \"Done! Healthcare win rate was 34%, up from 28% in 2023. Average deal size increased to $145K.\"}','ACTIVE'),('2025-01-08 09:45:00.000000',7650009000024,NULL,'2025-01-08 09:45:00.000000',7650000000008,7650008000011,'2025-01-08 09:45:00.000000','{\"type\": \"text\", \"contentPayload\": \"Excellent! That growth shows our strategy is working. Thanks for the quick turnaround.\"}','ACTIVE');
/*!40000 ALTER TABLE `direct_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `number_attend` int DEFAULT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `end_time` datetime(6) DEFAULT NULL,
  `event_id` bigint NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `team_id` bigint NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `idx_team_create` (`team_id`,`create_at`),
  CONSTRAINT `FKo7r78aa4ksoidjb2oh13jsgc5` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (6,'2025-01-03 09:00:00.000000',7650000000002,'2025-01-10 10:00:00.000000',7650006000001,'2025-01-10 09:00:00.000000',7650000000001,'Sprint 47 planning session to review stories, set priorities, and assign tasks for the next two weeks.','DEFAULT','Sprint 47 Planning'),(4,'2025-01-06 10:00:00.000000',7650000000003,'2025-01-07 12:00:00.000000',7650006000002,'2025-01-07 10:00:00.000000',7650000000001,'Architecture review meeting to discuss GraphQL migration proposal and get feedback from senior engineers.','DEFAULT','GraphQL RFC Review'),(6,'2025-01-08 09:00:00.000000',7650000000004,'2025-01-08 10:30:00.000000',7650006000003,'2025-01-08 09:00:00.000000',7650000000001,'Weekly infrastructure sync covering Kubernetes updates, monitoring dashboards, and incident reviews.','DEFAULT','Infrastructure Sync'),(5,'2025-01-09 11:00:00.000000',7650000000005,'2025-01-09 12:00:00.000000',7650006000004,'2025-01-09 11:00:00.000000',7650000000001,'Mobile release retrospective to discuss v3.2.0 launch outcomes and plan improvements for next release.','DEFAULT','Mobile Release Retro'),(8,'2025-01-06 08:45:00.000000',7650000000007,'2025-01-06 09:45:00.000000',7650006000005,'2025-01-06 08:45:00.000000',7650000000002,'Weekly sales kickoff to review pipeline, discuss deals, and align on weekly priorities.','DEFAULT','Weekly Sales Kickoff'),(4,'2025-01-07 14:00:00.000000',7650000000008,'2025-01-07 15:00:00.000000',7650006000006,'2025-01-07 14:00:00.000000',7650000000002,'Healthcare vertical deep-dive with account managers to review strategic accounts.','DEFAULT','Healthcare Accounts Review'),(5,'2025-01-08 10:00:00.000000',7650000000009,'2025-01-08 11:00:00.000000',7650006000007,'2025-01-08 10:00:00.000000',7650000000002,'Fintech sector pipeline review and strategy session for Q1 targets.','DEFAULT','Fintech Pipeline Review'),(4,'2025-01-10 09:00:00.000000',7650000000010,'2025-01-10 10:00:00.000000',7650006000008,'2025-01-10 09:00:00.000000',7650000000002,'Sales operations sync to review CRM data quality, reporting, and process improvements.','DEFAULT','Sales Ops Sync'),(5,'2025-01-06 13:45:00.000000',7650000000011,'2025-01-06 15:15:00.000000',7650006000009,'2025-01-06 13:45:00.000000',7650000000003,'Bi-weekly design critique session to review ongoing work and provide feedback.','DEFAULT','Design Critique'),(8,'2025-01-07 10:00:00.000000',7650000000012,'2025-01-07 11:30:00.000000',7650006000010,'2025-01-07 10:00:00.000000',7650000000003,'User research presentation covering findings from January testing sessions.','DEFAULT','User Research Presentation'),(4,'2025-01-09 14:00:00.000000',7650000000013,'2025-01-09 15:00:00.000000',7650006000011,'2025-01-09 14:00:00.000000',7650000000003,'Design system component review with frontend engineers to ensure implementation feasibility.','DEFAULT','Design System Review'),(5,'2025-01-10 11:00:00.000000',7650000000014,'2025-01-10 12:00:00.000000',7650006000012,'2025-01-10 11:00:00.000000',7650000000003,'Motion design showcase presenting new animations and micro-interactions.','DEFAULT','Motion Showcase'),(25,'2025-01-03 08:30:00.000000',7650000000001,'2025-01-03 10:00:00.000000',7650006000013,'2025-01-03 08:30:00.000000',7650000000001,'Company-wide meeting to celebrate 2024 achievements, announce 2025 goals, and recognize outstanding contributors.','DEFAULT','Q4 2024 Celebration'),(30,'2025-01-10 09:00:00.000000',7650000000001,'2025-01-10 10:30:00.000000',7650006000014,'2025-01-10 09:00:00.000000',7650000000001,'Monthly all-hands meeting covering company updates, product roadmap, and team highlights.','DEFAULT','January All-Hands'),(0,'2026-09-17 14:53:52.534607',123,NULL,358883241635205120,NULL,7650000000001,'','DELETED','');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership` (
  `joined_at` datetime(6) DEFAULT NULL,
  `membership_id` bigint NOT NULL,
  `team_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`membership_id`),
  UNIQUE KEY `uk_membership_user_team` (`user_id`,`team_id`),
  KEY `idx_membership_team` (`team_id`,`user_id`),
  KEY `idx_membership_team_user` (`team_id`,`user_id`),
  CONSTRAINT `FK7mts58iqmathhpvblj7mj4yna` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`),
  CONSTRAINT `FKjp7ht675da9n751xycuwii77s` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
INSERT INTO `membership` VALUES ('2024-03-15 10:00:00.000000',7650001000001,7650000000001,7650000000001,'ADMIN'),('2024-03-15 10:00:00.000000',7650001000002,7650000000002,7650000000001,'ADMIN'),('2024-03-15 10:00:00.000000',7650001000003,7650000000003,7650000000001,'ADMIN'),('2024-04-01 09:00:00.000000',7650001000004,7650000000001,7650000000002,'LEADER'),('2024-04-15 09:00:00.000000',7650001000005,7650000000001,7650000000003,'MEMBER'),('2024-05-01 09:00:00.000000',7650001000006,7650000000001,7650000000004,'MEMBER'),('2024-06-01 09:00:00.000000',7650001000007,7650000000001,7650000000005,'MEMBER'),('2024-07-15 09:00:00.000000',7650001000008,7650000000001,7650000000006,'MEMBER'),('2024-04-01 09:00:00.000000',7650001000009,7650000000002,7650000000007,'LEADER'),('2024-05-15 09:00:00.000000',7650001000010,7650000000002,7650000000008,'MEMBER'),('2024-06-01 09:00:00.000000',7650001000011,7650000000002,7650000000009,'MEMBER'),('2024-07-01 09:00:00.000000',7650001000012,7650000000002,7650000000010,'MEMBER'),('2024-04-01 09:00:00.000000',7650001000013,7650000000003,7650000000011,'LEADER'),('2024-05-01 09:00:00.000000',7650001000014,7650000000003,7650000000012,'MEMBER'),('2024-06-15 09:00:00.000000',7650001000015,7650000000003,7650000000013,'MEMBER'),('2024-08-01 09:00:00.000000',7650001000016,7650000000003,7650000000014,'MEMBER');
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `channel_id` bigint NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `message_id` bigint NOT NULL,
  `reply_to_id` bigint DEFAULT NULL,
  `sender_id` bigint NOT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`message_id`),
  KEY `idx_channel_message` (`channel_id`,`message_id`),
  CONSTRAINT `FKiimr93ytmcuira5le0sldvvma` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (7650002000001,'2025-01-06 09:15:00.000000',7650003000001,NULL,7650000000002,'2025-01-06 09:15:00.000000','{\"type\": \"text\", \"contentPayload\": \"Good morning everyone! Starting the sprint planning session in 30 minutes. Please review the Jira board beforehand.\"}','DEFAULT'),(7650002000001,'2025-01-06 09:20:00.000000',7650003000002,NULL,7650000000003,'2025-01-06 09:20:00.000000','{\"type\": \"text\", \"contentPayload\": \"On it! I see we have 42 story points planned for this sprint. Should be manageable.\"}','DEFAULT'),(7650002000001,'2025-01-06 09:22:00.000000',7650003000003,NULL,7650000000004,'2025-01-06 09:22:00.000000','{\"type\": \"text\", \"contentPayload\": \"Just pushed the latest Docker images to our registry. All services are running with the new load balancer config.\"}','DEFAULT'),(7650002000001,'2025-01-06 09:30:00.000000',7650003000004,NULL,7650000000005,'2025-01-06 09:30:00.000000','{\"type\": \"text\", \"contentPayload\": \"Android build passed all tests. Preparing the TestFlight upload now.\"}','DEFAULT'),(7650002000001,'2025-01-06 10:00:00.000000',7650003000005,NULL,7650000000002,'2025-01-06 10:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Sprint 47 planning is complete. Key deliverables: API v3 rollout, mobile push notifications, and security audit fixes.\"}','DEFAULT'),(7650002000003,'2025-01-07 11:00:00.000000',7650003000006,NULL,7650000000003,'2025-01-07 11:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Proposal: Migrate from REST to GraphQL for the new mobile API. I have drafted an RFC document. Thoughts?\"}','DEFAULT'),(7650002000003,'2025-01-07 11:15:00.000000',7650003000007,7650003000006,7650000000002,'2025-01-07 11:15:00.000000','{\"type\": \"text\", \"contentPayload\": \"GraphQL makes sense for mobile. We can reduce over-fetching and improve battery life on client devices.\"}','DEFAULT'),(7650002000003,'2025-01-07 11:45:00.000000',7650003000008,NULL,7650000000003,'2025-01-07 11:45:00.000000','{\"type\": \"text\", \"contentPayload\": \"Database indexes are optimized. Query response time down from 850ms to 120ms on the reports endpoint.\"}','DEFAULT'),(7650002000003,'2025-01-07 14:00:00.000000',7650003000009,NULL,7650000000003,'2025-01-07 14:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Redis cache is now warm. First user requests will populate the cache automatically.\"}','DEFAULT'),(7650002000004,'2025-01-08 09:30:00.000000',7650003000010,NULL,7650000000002,'2025-01-08 09:30:00.000000','{\"type\": \"text\", \"contentPayload\": \"Just merged the new dashboard design into main. Performance is looking great - Lighthouse score 94.\"}','DEFAULT'),(7650002000004,'2025-01-08 10:00:00.000000',7650003000011,NULL,7650000000005,'2025-01-08 10:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"React 19 upgrade is complete. All hooks are working correctly. Need help testing edge cases.\"}','DEFAULT'),(7650002000004,'2025-01-08 10:30:00.000000',7650003000012,NULL,7650000000006,'2025-01-08 10:30:00.000000','{\"type\": \"text\", \"contentPayload\": \"Updated our component library with the new design tokens. Breaking changes documented in the changelog.\"}','DEFAULT'),(7650002000005,'2025-01-09 08:00:00.000000',7650003000013,NULL,7650000000004,'2025-01-09 08:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Kubernetes cluster upgraded to 1.28. All pods running smoothly. No downtime during the rollout.\"}','DEFAULT'),(7650002000005,'2025-01-09 09:00:00.000000',7650003000014,NULL,7650000000004,'2025-01-09 09:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Monitoring dashboard is now live: prometheus.phoenixdigital.io/grafana. Alerting rules configured for P1 incidents.\"}','DEFAULT'),(7650002000005,'2025-01-09 14:00:00.000000',7650003000015,NULL,7650000000004,'2025-01-09 14:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"CI pipeline now completes in 8 minutes (down from 22 minutes). Parallelized test execution helped a lot.\"}','DEFAULT'),(7650002000007,'2025-01-10 10:00:00.000000',7650003000016,NULL,7650000000006,'2025-01-10 10:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Automated E2E tests now cover 85% of critical user flows. Cypress configuration is in the repo.\"}','DEFAULT'),(7650002000007,'2025-01-10 11:00:00.000000',7650003000017,NULL,7650000000006,'2025-01-10 11:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Found a regression in the checkout flow during smoke testing. Already reported in Jira - P2 priority.\"}','DEFAULT'),(7650002000007,'2025-01-10 15:00:00.000000',7650003000018,NULL,7650000000006,'2025-01-10 15:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Load testing results: System handles 10,000 concurrent users with p99 latency under 200ms.\"}','DEFAULT'),(7650002000008,'2025-01-06 09:00:00.000000',7650003000019,NULL,7650000000007,'2025-01-06 09:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Weekly sales kickoff in 15 minutes! We have some exciting announcements about Q1 targets.\"}','DEFAULT'),(7650002000008,'2025-01-06 09:15:00.000000',7650003000020,NULL,7650000000008,'2025-01-06 09:15:00.000000','{\"type\": \"text\", \"contentPayload\": \"Q1 target: $2.5M in new ARR. We are currently at 68% of that goal with 6 weeks remaining.\"}','DEFAULT'),(7650002000008,'2025-01-06 10:00:00.000000',7650003000021,NULL,7650000000009,'2025-01-06 10:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Closed a meeting with Meridian Healthcare this morning. Strong interest in our enterprise tier.\"}','DEFAULT'),(7650002000008,'2025-01-06 14:00:00.000000',7650003000022,NULL,7650000000010,'2025-01-06 14:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Updated the Salesforce integration with new lead scoring. Improved accuracy by 23%.\"}','DEFAULT'),(7650002000009,'2025-01-07 11:00:00.000000',7650003000023,NULL,7650000000007,'2025-01-07 11:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Pipeline snapshot: 15 deals in negotiation, 8 in proposal stage, 23 in discovery.\"}','DEFAULT'),(7650002000009,'2025-01-07 14:00:00.000000',7650003000024,NULL,7650000000008,'2025-01-07 14:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"TechVentures Inc. moving forward with annual contract. Legal review expected next week.\"}','DEFAULT'),(7650002000009,'2025-01-07 16:00:00.000000',7650003000025,NULL,7650000000009,'2025-01-07 16:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Westfield Bank demo went well. They need custom integrations with their existing systems.\"}','DEFAULT'),(7650002000010,'2025-01-08 10:00:00.000000',7650003000026,NULL,7650000000008,'2025-01-08 10:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Meridian Healthcare: Executive sponsor confirmed. Contract value $180K/year.\"}','DEFAULT'),(7650002000010,'2025-01-08 11:00:00.000000',7650003000027,NULL,7650000000008,'2025-01-08 11:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Horizon Medical Group requesting SOC 2 Type II report. Sending today.\"}','DEFAULT'),(7650002000010,'2025-01-08 15:00:00.000000',7650003000028,NULL,7650000000008,'2025-01-08 15:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Pioneer Health Partners demo scheduled for Thursday. 3 stakeholders attending.\"}','DEFAULT'),(7650002000011,'2025-01-09 09:00:00.000000',7650003000029,NULL,7650000000009,'2025-01-09 09:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Nexus Financial Services: Technical deep-dive completed. They like our API flexibility.\"}','DEFAULT'),(7650002000011,'2025-01-09 14:00:00.000000',7650003000030,NULL,7650000000009,'2025-01-09 14:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Westfield Bank: Custom security requirements discussed. Our enterprise tier covers all needs.\"}','DEFAULT'),(7650002000011,'2025-01-09 16:00:00.000000',7650003000031,NULL,7650000000010,'2025-01-09 16:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"CryptoSecure Inc. showing strong signals. Initial outreach received positive response.\"}','DEFAULT'),(7650002000012,'2025-01-10 08:00:00.000000',7650003000032,NULL,7650000000010,'2025-01-10 08:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"January sales report: 47 new qualified leads, 12 demos scheduled, 3 deals closed.\"}','DEFAULT'),(7650002000012,'2025-01-10 09:00:00.000000',7650003000033,NULL,7650000000010,'2025-01-10 09:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Updated commission structure in the shared drive. Effective February 1st.\"}','DEFAULT'),(7650002000012,'2025-01-10 14:00:00.000000',7650003000034,NULL,7650000000010,'2025-01-10 14:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"New email templates ready for healthcare vertical. Copy in the sales playbook.\"}','DEFAULT'),(7650002000013,'2025-01-06 09:30:00.000000',7650003000035,NULL,7650000000011,'2025-01-06 09:30:00.000000','{\"type\": \"text\", \"contentPayload\": \"Design review today at 2 PM. We will be looking at the new onboarding flow.\"}','DEFAULT'),(7650002000013,'2025-01-06 10:00:00.000000',7650003000036,NULL,7650000000012,'2025-01-06 10:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"User testing sessions scheduled for next week. Recruited 8 participants from our beta group.\"}','DEFAULT'),(7650002000013,'2025-01-06 14:00:00.000000',7650003000037,NULL,7650000000013,'2025-01-06 14:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Onboarding flow redesign complete. Reduced steps from 7 to 4. Conversion rate should improve.\"}','DEFAULT'),(7650002000014,'2025-01-07 10:00:00.000000',7650003000038,NULL,7650000000012,'2025-01-07 10:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Heatmap analysis shows users struggling with the settings page. Will prioritize redesign.\"}','DEFAULT'),(7650002000014,'2025-01-07 11:00:00.000000',7650003000039,NULL,7650000000012,'2025-01-07 11:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Interview insights: Power users want keyboard shortcuts. Adding to backlog.\"}','DEFAULT'),(7650002000014,'2025-01-07 15:00:00.000000',7650003000040,NULL,7650000000012,'2025-01-07 15:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"A/B test results: New card layout outperforms grid by 34% in engagement.\"}','DEFAULT'),(7650002000015,'2025-01-08 09:00:00.000000',7650003000041,NULL,7650000000011,'2025-01-08 09:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"New brand guidelines document uploaded to Figma. Includes color palette, typography, and logo usage.\"}','DEFAULT'),(7650002000015,'2025-01-08 14:00:00.000000',7650003000042,NULL,7650000000013,'2025-01-08 14:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Social media templates created for all platforms. Consistent brand voice across channels.\"}','DEFAULT'),(7650002000016,'2025-01-09 10:00:00.000000',7650003000043,NULL,7650000000013,'2025-01-09 10:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Button component updated with new hover states. Documentation in Storybook.\"}','DEFAULT'),(7650002000016,'2025-01-09 14:00:00.000000',7650003000044,NULL,7650000000012,'2025-01-09 14:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Form validation states standardized. Error, success, and warning patterns consistent across app.\"}','DEFAULT'),(7650002000016,'2025-01-09 16:00:00.000000',7650003000045,NULL,7650000000013,'2025-01-09 16:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Icon library expanded to 200+ icons. Custom icons for fintech and healthcare domains.\"}','DEFAULT'),(7650002000017,'2025-01-10 10:00:00.000000',7650003000046,NULL,7650000000014,'2025-01-10 10:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Loading animations redesigned. Lottie files optimized - file size reduced by 60%.\"}','DEFAULT'),(7650002000017,'2025-01-10 14:00:00.000000',7650003000047,NULL,7650000000014,'2025-01-10 14:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Micro-interactions for dashboard widgets complete. Subtle but satisfying feedback.\"}','DEFAULT'),(7650002000017,'2025-01-10 16:00:00.000000',7650003000048,NULL,7650000000014,'2025-01-10 16:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Page transition animations documented. Guidelines for duration and easing curves.\"}','DEFAULT'),(7650002000018,'2025-01-03 09:00:00.000000',7650003000049,NULL,7650000000001,'2025-01-03 09:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Happy New Year team! We closed 2024 with $8.2M ARR, exceeding our target by 15%. Thank you all for your hard work.\"}','DEFAULT'),(7650002000018,'2025-01-10 10:00:00.000000',7650003000050,NULL,7650000000001,'2025-01-10 10:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Reminder: Company all-hands meeting this Friday at 3 PM. Virtual attendance available for remote team members.\"}','DEFAULT'),(7650002000021,'2025-01-06 12:00:00.000000',7650003000051,NULL,7650000000004,'2025-01-06 12:00:00.000000','{\"type\": \"text\", \"contentPayload\": \"Anyone up for board games Friday evening? I am bringing Catan and Ticket to Ride.\"}','DEFAULT'),(7650002000021,'2025-01-06 12:15:00.000000',7650003000052,NULL,7650000000008,'2025-01-06 12:15:00.000000','{\"type\": \"text\", \"contentPayload\": \"Count me in! I will bring some snacks from Trader Joes.\"}','DEFAULT'),(7650002000021,'2025-01-06 12:30:00.000000',7650003000053,NULL,7650000000011,'2025-01-06 12:30:00.000000','{\"type\": \"text\", \"contentPayload\": \"Sounds fun! I will try to make it.\"}','DEFAULT'),(7650002000021,'2025-01-08 08:30:00.000000',7650003000054,NULL,7650000000006,'2025-01-08 08:30:00.000000','{\"type\": \"text\", \"contentPayload\": \"Coffee machine in the break room is fixed! New espresso machine from the SF office.\"}','DEFAULT'),(7650002000021,'2025-01-10 16:30:00.000000',7650003000055,NULL,7650000000009,'2025-01-10 16:30:00.000000','{\"type\": \"text\", \"contentPayload\": \"Anyone recommend a good ITP bar? Taking clients out next week.\"}','DEFAULT'),(7650002000003,'2026-09-18 16:46:16.472021',359273915626934272,7650003000007,7650000000003,'2026-09-18 16:52:01.794290','{\"type\": \"text\", \"contentPayload\": \"Message has been deleted\"}','DELETED'),(7650002000003,'2026-10-21 17:48:55.582000',7518624355270574081,NULL,7650000000001,'2026-10-21 17:48:55.582000','{\"type\":\"text\",\"contentPayload\":\"Live MySQL direct test from Replix Frontend!\"}','DEFAULT');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `create_at` datetime(6) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `post_id` bigint NOT NULL,
  `team_id` bigint NOT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `idx_team_create` (`team_id`,`create_at`),
  CONSTRAINT `FKp50yuj3g6cnce6rtt5d6hc3k5` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES ('2025-01-05 10:00:00.000000',7650000000002,7650004000001,7650000000001,'2026-09-18 01:34:45.898765',7650000000002,'Comprehensive guide for API v3 migration including step-by-step instructions, breaking changes documentation, and rollback procedures and optimized the payloads','UPDATED','API v3 Migration Guide'),('2025-01-06 14:00:00.000000',7650000000003,7650004000002,7650000000001,'2025-01-06 14:00:00.000000',7650000000003,'Technical design document proposing GraphQL adoption for mobile APIs, with performance benchmarks and implementation timeline.','DEFAULT','RFC: GraphQL for Mobile API'),('2025-01-07 09:00:00.000000',7650000000004,7650004000003,7650000000001,'2025-01-07 09:00:00.000000',7650000000004,'Runbook for Kubernetes cluster operations including scaling procedures, emergency rollbacks, and monitoring setup.','DEFAULT','Kubernetes Operations Runbook'),('2025-01-08 11:00:00.000000',7650000000005,7650004000004,7650000000001,'2025-01-08 11:00:00.000000',7650000000005,'Mobile app release notes for version 3.2.0 including new features, bug fixes, and known issues.','DEFAULT','Mobile App v3.2.0 Release Notes'),('2025-01-09 15:00:00.000000',7650000000006,7650004000005,7650000000001,'2025-01-09 15:00:00.000000',7650000000006,'Testing strategy document covering unit tests, integration tests, and E2E test coverage goals for Q1 2025.','DEFAULT','Q1 2025 Testing Strategy'),('2025-01-05 09:00:00.000000',7650000000007,7650004000006,7650000000002,'2025-01-05 09:00:00.000000',7650000000007,'Q1 2025 sales playbook with target accounts, competitive positioning, and objection handling guides.','DEFAULT','Q1 2025 Sales Playbook'),('2025-01-06 11:00:00.000000',7650000000008,7650004000007,7650000000002,'2025-01-06 11:00:00.000000',7650000000008,'ROI calculator and case studies for healthcare vertical, highlighting compliance benefits and efficiency gains.','DEFAULT','Healthcare Solutions ROI Package'),('2025-01-07 10:00:00.000000',7650000000009,7650004000008,7650000000002,'2025-01-07 10:00:00.000000',7650000000009,'Competitive analysis comparing our platform against Salesforce, HubSpot, and Microsoft Dynamics.','DEFAULT','Competitive Intelligence Report'),('2025-01-08 14:00:00.000000',7650000000010,7650004000009,7650000000002,'2025-01-08 14:00:00.000000',7650000000010,'Updated demo environment setup guide with scenario scripts for different verticals.','DEFAULT','Demo Environment Guide'),('2025-01-09 09:00:00.000000',7650000000007,7650004000010,7650000000002,'2025-01-09 09:00:00.000000',7650000000007,'Win/loss analysis from Q4 2024 with insights on pricing sensitivity and feature gaps.','DEFAULT','Q4 2024 Win/Loss Analysis'),('2025-01-05 14:00:00.000000',7650000000011,7650004000011,7650000000003,'2025-01-05 14:00:00.000000',7650000000011,'Complete design system documentation including color palette, typography scale, spacing system, and component library.','DEFAULT','Phoenix Design System v2.0'),('2025-01-06 10:00:00.000000',7650000000012,7650004000012,7650000000003,'2025-01-06 10:00:00.000000',7650000000012,'User research synthesis from Q4 2024 studies, including persona updates and journey mapping insights.','DEFAULT','Q4 2024 User Research Summary'),('2025-01-07 15:00:00.000000',7650000000013,7650004000013,7650000000003,'2025-01-07 15:00:00.000000',7650000000013,'Brand refresh proposal introducing new logo variations, tagline options, and visual identity updates.','UPDATED','Brand Refresh Proposal 2025'),('2025-01-08 09:00:00.000000',7650000000014,7650004000014,7650000000003,'2025-01-08 09:00:00.000000',7650000000014,'Motion design guidelines and animation specifications for the product team.','DEFAULT','Motion Design Guidelines'),('2025-01-09 11:00:00.000000',7650000000011,7650004000015,7650000000003,'2025-01-09 11:00:00.000000',7650000000011,'Accessibility audit results with WCAG 2.1 AA compliance checklist and remediation plan.','DEFAULT','Accessibility Audit Report'),('2026-09-18 01:13:06.923805',7650000000001,359039078437605376,7650000000001,'2026-09-18 01:34:57.469123',7650000000001,'Just A Ordinary Post','DELETED','Tesing The Post Feature');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `private_session`
--

DROP TABLE IF EXISTS `private_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `private_session` (
  `connector_id` bigint NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `id` bigint NOT NULL,
  `receiver_id` bigint NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKi7mh78qmo5u9rwjfwum5kcn61` (`connector_id`,`receiver_id`),
  KEY `idx_connector_receiver` (`connector_id`,`receiver_id`),
  KEY `idx_receiver` (`receiver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_session`
--

LOCK TABLES `private_session` WRITE;
/*!40000 ALTER TABLE `private_session` DISABLE KEYS */;
INSERT INTO `private_session` VALUES (7650000000001,'2025-01-05 10:00:00.000000',7650000000001,7650008000001,7650000000002,'ACTIVE'),(7650000000001,'2025-01-06 14:00:00.000000',7650000000001,7650008000002,7650000000007,'ACTIVE'),(7650000000001,'2025-01-07 09:00:00.000000',7650000000001,7650008000003,7650000000011,'ACTIVE'),(7650000000002,'2025-01-04 11:00:00.000000',7650000000002,7650008000004,7650000000003,'ACTIVE'),(7650000000002,'2025-01-08 15:00:00.000000',7650000000002,7650008000005,7650000000005,'ACTIVE'),(7650000000007,'2025-01-03 10:00:00.000000',7650000000007,7650008000006,7650000000008,'ACTIVE'),(7650000000007,'2025-01-09 16:00:00.000000',7650000000007,7650008000007,7650000000009,'ACTIVE'),(7650000000011,'2025-01-04 14:00:00.000000',7650000000011,7650008000008,7650000000012,'ACTIVE'),(7650000000011,'2025-01-06 11:00:00.000000',7650000000011,7650008000009,7650000000013,'ACTIVE'),(7650000000003,'2025-01-07 10:00:00.000000',7650000000003,7650008000010,7650000000004,'ACTIVE'),(7650000000008,'2025-01-08 09:00:00.000000',7650000000008,7650008000011,7650000000010,'ACTIVE'),(7650000000001,'2026-09-18 23:58:00.181875',7650000000014,359382563657207808,7650000000014,'DEFAULT');
/*!40000 ALTER TABLE `private_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `create_at` datetime(6) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `team_id` bigint NOT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`team_id`),
  KEY `idx_team_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES ('2024-03-15 09:00:00.000000',NULL,7650000000001,'2024-03-15 09:00:00.000000',NULL,'Engineering team responsible for product development, infrastructure, and technical architecture','Phoenix Dev','ACTIVE','DEVELOPMENT'),('2024-03-15 09:00:00.000000',NULL,7650000000002,'2024-03-15 09:00:00.000000',NULL,'Sales team focused on client acquisition, partnerships, and revenue growth','Phoenix Sales','ACTIVE','SALES'),('2024-03-15 09:00:00.000000',NULL,7650000000003,'2024-03-15 09:00:00.000000',NULL,'Design team creating user experiences, brand identity, and visual assets','Phoenix Design','ACTIVE','DESIGN'),('2026-09-17 22:35:09.545622',7650000000001,358999327437344768,'2026-09-19 14:49:32.489803',7650000000001,'Just A Ordinary New Team','Phoenix Master','DELETED','Ordinary'),('2026-09-19 15:23:54.747563',7650000000002,359615576395599872,'2026-09-19 15:28:33.027373',7650000000001,'Just A Ordinary Team','Ordinary Team','DELETED','CHATTING'),('2026-09-19 15:44:18.427164',7650000000002,359620708881518592,'2026-09-19 15:54:53.983593',7650000000002,'Just A Ordinary Chating Team','Cafeteria','DELETED','Ordinary'),('2026-09-19 16:02:06.839539',7650000000004,359625190126243840,'2026-09-19 16:06:39.685466',7650000000004,'WTX','DWX','DELETED','DWX');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `create_at` datetime(6) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `config` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `idx_username_unique` (`user_name`),
  UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('2024-03-15 10:00:00.000000',NULL,'2025-06-20 14:30:00.000000',7650000000001,7650000000001,'default_avatar','Tech enthusiast and coffee lover. Building great products since 2015.',NULL,'marcus.chen@phoenixdigital.io','Marcus','Chen','$argon2id$v=19$m=16384,t=2,p=1$mZbtSAN4mgmgtkiEsJnOJQ$9M8OHun3ob4Zzgz+5lZn8MIYRkvSvpJZPG4DTggyTYM','ACTIVE','ADMIN','marcus.chen'),('2024-04-01 09:00:00.000000',7650000000001,'2025-07-01 11:20:00.000000',7650000000002,7650000000002,'default_avatar','Full-stack developer specializing in React and Node.js. Open source contributor.',NULL,'sarah.johnson@phoenixdigital.io','Sarah','Johnson','$argon2id$v=19$m=16384,t=2,p=1$mZbtSAN4mgmgtkiEsJnOJQ$9M8OHun3ob4Zzgz+5lZn8MIYRkvSvpJZPG4DTggyTYM','ACTIVE','MEMBER','sarah.johnson'),('2024-04-15 09:00:00.000000',7650000000001,'2025-06-28 16:45:00.000000',7650000000003,7650000000003,'default_avatar','Backend engineer with expertise in microservices and cloud architecture. AWS certified.',NULL,'james.wilson@phoenixdigital.io','James','Wilson','$argon2id$v=19$m=16384,t=2,p=1$mZbtSAN4mgmgtkiEsJnOJQ$9M8OHun3ob4Zzgz+5lZn8MIYRkvSvpJZPG4DTggyTYM','ACTIVE','MEMBER','james.wilson'),('2024-05-01 09:00:00.000000',7650000000001,'2025-07-05 09:15:00.000000',7650000000004,7650000000004,'default_avatar','DevOps engineer passionate about CI/CD pipelines and infrastructure as code.',NULL,'emily.davis@phoenixdigital.io','Emily','Davis','$argon2id$v=19$m=16384,t=2,p=1$mZbtSAN4mgmgtkiEsJnOJQ$9M8OHun3ob4Zzgz+5lZn8MIYRkvSvpJZPG4DTggyTYM','ACTIVE','MEMBER','emily.davis'),('2024-06-01 09:00:00.000000',7650000000001,'2025-06-30 18:00:00.000000',7650000000005,7650000000005,'default_avatar','Mobile developer specializing in iOS and Android. Former startup founder.',NULL,'david.kim@phoenixdigital.io','David','Kim','$argon2id$v=19$m=16384,t=2,p=1$mZbtSAN4mgmgtkiEsJnOJQ$9M8OHun3ob4Zzgz+5lZn8MIYRkvSvpJZPG4DTggyTYM','ACTIVE','MEMBER','david.kim'),('2024-07-15 09:00:00.000000',7650000000001,'2025-07-02 10:30:00.000000',7650000000006,7650000000006,'default_avatar','QA Engineer focused on automated testing and quality assurance.',NULL,'lisa.martinez@phoenixdigital.io','Lisa','Martinez','$argon2id$v=19$m=16384,t=2,p=1$mZbtSAN4mgmgtkiEsJnOJQ$9M8OHun3ob4Zzgz+5lZn8MIYRkvSvpJZPG4DTggyTYM','ACTIVE','MEMBER','lisa.martinez'),('2024-04-01 09:00:00.000000',7650000000001,'2025-07-08 14:00:00.000000',7650000000007,7650000000007,'default_avatar','Senior Account Executive with 10+ years in enterprise software sales.',NULL,'michael.brown@phoenixdigital.io','Michael','Brown','$argon2id$v=19$m=16384,t=2,p=1$mZbtSAN4mgmgtkiEsJnOJQ$9M8OHun3ob4Zzgz+5lZn8MIYRkvSvpJZPG4DTggyTYM','ACTIVE','LEADER','michael.brown'),('2024-05-15 09:00:00.000000',7650000000001,'2025-07-09 11:45:00.000000',7650000000008,7650000000008,'default_avatar','Account Manager specializing in healthcare and fintech clients.',NULL,'jennifer.taylor@phoenixdigital.io','Jennifer','Taylor','$argon2id$v=19$m=16384,t=2,p=1$mZbtSAN4mgmgtkiEsJnOJQ$9M8OHun3ob4Zzgz+5lZn8MIYRkvSvpJZPG4DTggyTYM','ACTIVE','MEMBER','jennifer.taylor'),('2024-06-01 09:00:00.000000',7650000000001,'2025-07-01 16:20:00.000000',7650000000009,7650000000009,'default_avatar','Business Development Representative focused on market expansion.',NULL,'robert.anderson@phoenixdigital.io','Robert','Anderson','$argon2id$v=19$m=16384,t=2,p=1$mZbtSAN4mgmgtkiEsJnOJQ$9M8OHun3ob4Zzgz+5lZn8MIYRkvSvpJZPG4DTggyTYM','ACTIVE','MEMBER','robert.anderson'),('2024-07-01 09:00:00.000000',7650000000001,'2025-06-25 13:30:00.000000',7650000000010,7650000000010,'default_avatar','Sales Operations Manager optimizing CRM and sales processes.',NULL,'amanda.white@phoenixdigital.io','Amanda','White','$argon2id$v=19$m=16384,t=2,p=1$mZbtSAN4mgmgtkiEsJnOJQ$9M8OHun3ob4Zzgz+5lZn8MIYRkvSvpJZPG4DTggyTYM','ACTIVE','MEMBER','amanda.white'),('2024-04-01 09:00:00.000000',7650000000001,'2025-07-10 09:00:00.000000',7650000000011,7650000000011,'default_avatar','Creative Director with a passion for minimalist design and brand strategy.',NULL,'alex.nguyen@phoenixdigital.io','Alex','Nguyen','$argon2id$v=19$m=16384,t=2,p=1$mZbtSAN4mgmgtkiEsJnOJQ$9M8OHun3ob4Zzgz+5lZn8MIYRkvSvpJZPG4DTggyTYM','ACTIVE','LEADER','alex.nguyen'),('2024-05-01 09:00:00.000000',7650000000001,'2025-07-08 15:45:00.000000',7650000000012,7650000000012,'default_avatar','UX Designer focused on user research and interaction design.',NULL,'rachel.garcia@phoenixdigital.io','Rachel','Garcia','$argon2id$v=19$m=16384,t=2,p=1$mZbtSAN4mgmgtkiEsJnOJQ$9M8OHun3ob4Zzgz+5lZn8MIYRkvSvpJZPG4DTggyTYM','ACTIVE','MEMBER','rachel.garcia'),('2024-06-15 09:00:00.000000',7650000000001,'2025-07-05 11:00:00.000000',7650000000013,7650000000013,'default_avatar','UI Designer and illustrator creating beautiful interfaces.',NULL,'christopher.lee@phoenixdigital.io','Christopher','Lee','$argon2id$v=19$m=16384,t=2,p=1$mZbtSAN4mgmgtkiEsJnOJQ$9M8OHun3ob4Zzgz+5lZn8MIYRkvSvpJZPG4DTggyTYM','ACTIVE','MEMBER','christopher.lee'),('2024-08-01 09:00:00.000000',7650000000001,'2025-06-30 17:30:00.000000',7650000000014,7650000000014,'default_avatar','Motion Designer bringing interfaces to life with animations.',NULL,'megan.scott@phoenixdigital.io','Megan','Scott','$argon2id$v=19$m=16384,t=2,p=1$mZbtSAN4mgmgtkiEsJnOJQ$9M8OHun3ob4Zzgz+5lZn8MIYRkvSvpJZPG4DTggyTYM','ACTIVE','MEMBER','megan.scott');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-13 21:03:38
