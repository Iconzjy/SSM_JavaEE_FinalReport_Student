-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: student_java
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.10.1

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `c_teacherID` int(11) DEFAULT NULL,
  `c_room` varchar(20) DEFAULT NULL,
  `c_maxStudentNum` int(11) NOT NULL DEFAULT '60',
  `collegeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'c1',1,NULL,60,NULL),(2,'c2',2,'2',60,2),(3,'3',3,'3',3,3),(4,'4',4,'4',4,4),(5,'5',5,'5',5,5),(6,'6',6,'6',6,6),(7,'7',7,'7',7,7),(8,'8',8,'8',8,8),(9,'9',9,'9',9,9),(10,'10',10,'10',10,10),(11,'11',11,'11',11,11),(12,'13',12,'12',12,12),(15,'15',15,'15',15,15),(20,'软件',20,'20',20,20),(33,'33',33,'33',33,33);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `s_ID` int(11) NOT NULL,
  `s_studentID` int(11) NOT NULL,
  `s_courseID` int(11) DEFAULT NULL,
  `s_score` float DEFAULT NULL,
  PRIMARY KEY (`s_ID`),
  KEY `score_course_c_id_fk` (`s_courseID`),
  KEY `score_student_num_fk` (`s_studentID`),
  CONSTRAINT `score_course_c_id_fk` FOREIGN KEY (`s_courseID`) REFERENCES `course` (`c_id`),
  CONSTRAINT `score_student_num_fk` FOREIGN KEY (`s_studentID`) REFERENCES `student` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成绩表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,1,1,2),(4,1,1,1),(5,1,1,1),(6,1,1,1),(7,1,1,1),(8,1,1,1),(9,1,1,1),(10,1,1,1),(12,1,1,1),(13,1,1,1),(14,1,1,1),(15,1,1,1),(21,1,1,1),(22,1,1,1),(70,1,1,1);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `name` varchar(15) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `IDCard` int(20) DEFAULT NULL,
  `tel` int(12) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('n1',1,1,'男',1,'1',NULL,NULL,NULL),('n2',2,2,'男',2,'2','2019-06-15',2,2),('n3',3,3,'女',3,'3','2019-05-21',3,3),('n4',4,13,'男',4,'4','2019-05-17',4,4),('5',5,5,'女',5,'5','2019-06-10',5,5),('6',6,6,'女',6,'6','2019-06-10',6,6),('7',7,7,'男',7,'7','2019-06-10',7,7),('8',8,8,'女',8,'8','2019-06-09',8,8),('9',9,9,'男',9,'9','2019-06-10',9,9),('10',10,10,'男',10,'10','2019-06-30',10,10),('12',11,13,'男',13,'13','2019-06-11',13,13);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `teacherid` int(11) NOT NULL,
  `teacherName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `idCard` varchar(18) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `schoolid` int(11) DEFAULT NULL,
  `collegeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`teacherid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'t1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'t2','2','2',NULL,'2019-06-11','2','2',2,2),(3,'3','3','3','男',NULL,'3','3',3,3),(4,'4','4','4','女','2019-06-17','4','4',4,4),(7,'7','7','7','男','2019-06-17','7','7',7,7);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-07 21:29:58
