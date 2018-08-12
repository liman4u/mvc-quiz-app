
--
-- Dumping data for table `quizzes`
--

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` VALUES (1,'Mathematics','2018-08-06 14:35:33',NULL),(3,'World History','2018-08-08 13:42:11',NULL),(4,'ICT','2018-08-08 13:42:11',NULL);
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
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
-- Dumping data for table `quiz_question_options`
--

LOCK TABLES `quiz_question_options` WRITE;
/*!40000 ALTER TABLE `quiz_question_options` DISABLE KEYS */;
INSERT INTO `quiz_question_options` VALUES (1,1,'2',1,'2018-08-10 22:19:47',NULL),(2,1,'4',0,'2018-08-10 22:19:47',NULL),(3,1,'6',0,'2018-08-10 22:19:47',NULL),(4,2,'1',0,'2018-08-10 22:19:47',NULL),(5,2,'2',0,'2018-08-10 22:19:47',NULL),(6,2,'3',0,'2018-08-10 22:19:47',NULL),(7,2,'4',1,'2018-08-10 22:19:47',NULL),(8,5,'3',0,'2018-08-12 01:58:23',NULL),(9,5,'4',0,'2018-08-12 01:58:23',NULL),(10,5,'6',1,'2018-08-12 01:58:23',NULL),(11,6,'8',1,'2018-08-12 01:58:23',NULL),(12,6,'6',0,'2018-08-12 01:58:23',NULL),(13,7,'10',1,'2018-08-12 01:58:23',NULL),(14,7,'15',0,'2018-08-12 01:58:23',NULL),(15,7,'20',0,'2018-08-12 01:58:23',NULL),(16,8,'Huge Resoltuion TV',0,'2018-08-12 02:10:38',NULL),(17,8,'Huge Difference TV',0,'2018-08-12 02:10:38',NULL),(18,8,'High Definition TV',1,'2018-08-12 02:10:38',NULL),(19,9,'Blank carbon copy',0,'2018-08-12 02:10:38',NULL),(20,9,'Bulk carbon copy',0,'2018-08-12 02:10:38',NULL),(21,9,'Blind carbon copy',1,'2018-08-12 02:10:38',NULL),(22,9,'Backup carbon copy',0,'2018-08-12 02:10:38',NULL),(23,10,'downloading',0,'2018-08-12 02:31:00',NULL),(24,10,'downlinking',0,'2018-08-12 02:31:00',NULL),(25,10,'uploading',1,'2018-08-12 02:31:00',NULL),(26,10,'uplinking',0,'2018-08-12 02:31:00',NULL),(27,11,'site',0,'2018-08-12 02:31:00',NULL),(28,11,'web',1,'2018-08-12 02:31:00',NULL),(29,11,'broswer',0,'2018-08-12 02:31:00',NULL),(30,11,'map',0,'2018-08-12 02:31:00',NULL),(31,16,'molasses',1,'2018-08-12 02:39:48',NULL),(32,16,'fabric of rocks',0,'2018-08-12 02:39:48',NULL),(33,16,'bed of rocks',0,'2018-08-12 02:39:48',NULL),(34,17,'Mercury',1,'2018-08-12 18:43:18',NULL),(35,17,'Venus',0,'2018-08-12 18:43:18',NULL),(36,17,'Mars',0,'2018-08-12 18:43:18',NULL),(37,17,'Earth',0,'2018-08-12 18:43:18',NULL),(38,18,'dwarf planet',1,'2018-08-12 18:43:18',NULL),(39,18,'light planet',0,'2018-08-12 18:43:18',NULL),(40,18,'ice planet',0,'2018-08-12 18:43:18',NULL),(41,18,'gas planet',0,'2018-08-12 18:43:18',NULL),(42,19,'Northern Hemisphere',1,'2018-08-12 18:43:18',NULL),(43,19,'Southern Hemisphere',0,'2018-08-12 18:43:18',NULL),(44,19,'Eastern Hemisphere',0,'2018-08-12 18:43:18',NULL),(45,19,'Western Hemisphere',0,'2018-08-12 18:43:18',NULL),(46,20,'fossil bed',0,'2018-08-12 18:43:18',NULL),(47,20,'fabric of rocks',1,'2018-08-12 18:43:18',NULL),(48,20,'bed of rocks',0,'2018-08-12 18:43:18',NULL);
/*!40000 ALTER TABLE `quiz_question_options` ENABLE KEYS */;
UNLOCK TABLES;