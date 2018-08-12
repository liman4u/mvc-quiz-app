-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: printful_quiz
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `quiz_question_options`
--

LOCK TABLES `quiz_question_options` WRITE;
/*!40000 ALTER TABLE `quiz_question_options` DISABLE KEYS */;
INSERT INTO `quiz_question_options` VALUES (1,1,'2',1,'2018-08-10 22:19:47',NULL),(2,1,'4',0,'2018-08-10 22:19:47',NULL),(3,1,'6',0,'2018-08-10 22:19:47',NULL),(4,2,'1',0,'2018-08-10 22:19:47',NULL),(5,2,'2',0,'2018-08-10 22:19:47',NULL),(6,2,'3',0,'2018-08-10 22:19:47',NULL),(7,2,'4',1,'2018-08-10 22:19:47',NULL),(8,5,'3',0,'2018-08-12 01:58:23',NULL),(9,5,'4',0,'2018-08-12 01:58:23',NULL),(10,5,'6',1,'2018-08-12 01:58:23',NULL),(11,6,'8',1,'2018-08-12 01:58:23',NULL),(12,6,'6',0,'2018-08-12 01:58:23',NULL),(13,7,'10',1,'2018-08-12 01:58:23',NULL),(14,7,'15',0,'2018-08-12 01:58:23',NULL),(15,7,'20',0,'2018-08-12 01:58:23',NULL),(16,8,'Huge Resoltuion TV',0,'2018-08-12 02:10:38',NULL),(17,8,'Huge Difference TV',0,'2018-08-12 02:10:38',NULL),(18,8,'High Definition TV',1,'2018-08-12 02:10:38',NULL),(19,9,'Blank carbon copy',0,'2018-08-12 02:10:38',NULL),(20,9,'Bulk carbon copy',0,'2018-08-12 02:10:38',NULL),(21,9,'Blind carbon copy',1,'2018-08-12 02:10:38',NULL),(22,9,'Backup carbon copy',0,'2018-08-12 02:10:38',NULL),(23,10,'downloading',0,'2018-08-12 02:31:00',NULL),(24,10,'downlinking',0,'2018-08-12 02:31:00',NULL),(25,10,'uploading',1,'2018-08-12 02:31:00',NULL),(26,10,'uplinking',0,'2018-08-12 02:31:00',NULL),(27,11,'site',0,'2018-08-12 02:31:00',NULL),(28,11,'web',1,'2018-08-12 02:31:00',NULL),(29,11,'broswer',0,'2018-08-12 02:31:00',NULL),(30,11,'map',0,'2018-08-12 02:31:00',NULL),(31,16,'molasses',1,'2018-08-12 02:39:48',NULL),(32,16,'fabric of rocks',0,'2018-08-12 02:39:48',NULL),(33,16,'bed of rocks',0,'2018-08-12 02:39:48',NULL),(34,17,'Mercury',1,'2018-08-12 18:43:18',NULL),(35,17,'Venus',0,'2018-08-12 18:43:18',NULL),(36,17,'Mars',0,'2018-08-12 18:43:18',NULL),(37,17,'Earth',0,'2018-08-12 18:43:18',NULL),(38,18,'dwarf planet',1,'2018-08-12 18:43:18',NULL),(39,18,'light planet',0,'2018-08-12 18:43:18',NULL),(40,18,'ice planet',0,'2018-08-12 18:43:18',NULL),(41,18,'gas planet',0,'2018-08-12 18:43:18',NULL),(42,19,'Northern Hemisphere',1,'2018-08-12 18:43:18',NULL),(43,19,'Southern Hemisphere',0,'2018-08-12 18:43:18',NULL),(44,19,'Eastern Hemisphere',0,'2018-08-12 18:43:18',NULL),(45,19,'Western Hemisphere',0,'2018-08-12 18:43:18',NULL),(46,20,'fossil bed',0,'2018-08-12 18:43:18',NULL),(47,20,'fabric of rocks',1,'2018-08-12 18:43:18',NULL),(48,20,'bed of rocks',0,'2018-08-12 18:43:18',NULL);
/*!40000 ALTER TABLE `quiz_question_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `quiz_questions`
--

LOCK TABLES `quiz_questions` WRITE;
/*!40000 ALTER TABLE `quiz_questions` DISABLE KEYS */;
INSERT INTO `quiz_questions` VALUES (1,1,'How much is 1 + 1','2018-08-10 22:18:46',NULL),(2,1,'How much is 2 + 2','2018-08-10 22:18:46',NULL),(5,1,'How much is 3 + 3','2018-08-12 01:55:30',NULL),(6,1,'How much is 4 + 4','2018-08-12 01:55:30',NULL),(7,1,'How much is 5 + 5','2018-08-12 01:55:30',NULL),(8,4,'What does HDTV stand for','2018-08-12 02:08:37',NULL),(9,4,'In e-mail context, what does bcc stand for','2018-08-12 02:08:37',NULL),(10,4,'Transferring data from a remote computer to a local computer is referred to as','2018-08-12 02:26:48',NULL),(11,4,'The world wide network that makes electronic information available to users is also known as','2018-08-12 02:26:48',NULL),(16,3,'Erosion material of continuously growing mountain chain is known as','2018-08-12 02:37:06',NULL),(17,3,'Most nearest planet to Sun is','2018-08-12 02:37:06',NULL),(18,3,'In Solar System, ninth discarded planet Pluto is also known as','2018-08-12 02:37:06',NULL),(19,3,'Motion of water of \'Pacific Ocean\' is clockwise in','2018-08-12 02:37:06',NULL),(20,3,'Three-dimensional orientation of \'Clastic Rocks\' is classified as','2018-08-12 02:37:06',NULL);
/*!40000 ALTER TABLE `quiz_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `quiz_submissions`
--

LOCK TABLES `quiz_submissions` WRITE;
/*!40000 ALTER TABLE `quiz_submissions` DISABLE KEYS */;
INSERT INTO `quiz_submissions` VALUES (7,14,4,4,4,100,'2018-08-12 21:28:25'),(8,15,3,5,5,100,'2018-08-12 21:30:53'),(9,16,1,5,3,60,'2018-08-12 21:31:53');
/*!40000 ALTER TABLE `quiz_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `quiz_user_answers`
--

LOCK TABLES `quiz_user_answers` WRITE;
/*!40000 ALTER TABLE `quiz_user_answers` DISABLE KEYS */;
INSERT INTO `quiz_user_answers` VALUES (42,14,'Question 1:What does HDTV stand for?','Huge Difference TV','2018-08-12 21:28:13'),(43,14,'Question 2:In e-mail context, what does bcc stand for?','Blind carbon copy','2018-08-12 21:28:17'),(44,14,'Question 3:Transferring data from a remote computer to a local computer is referred to as?','uplinking','2018-08-12 21:28:21'),(46,15,'Question 1:Erosion material of continuously growing mountain chain is known as?','fabric of rocks','2018-08-12 21:30:13'),(47,15,'Question 2:Most nearest planet to Sun is?','Mars','2018-08-12 21:30:16'),(48,15,'Question 3:In Solar System, ninth discarded planet Pluto is also known as?','gas planet','2018-08-12 21:30:46');
/*!40000 ALTER TABLE `quiz_user_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `quizzes`
--

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` VALUES (1,'Mathematics','2018-08-06 14:35:33',NULL),(3,'World History','2018-08-08 13:42:11',NULL),(4,'ICT','2018-08-08 13:42:11',NULL);
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (14,'Liman Adamu','2018-08-12 01:58:46'),(15,'Nusiratu Adamu','2018-08-12 21:29:34'),(16,'John','2018-08-12 21:31:10');
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

-- Dump completed on 2018-08-12 21:56:19
