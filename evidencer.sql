CREATE DATABASE  IF NOT EXISTS `evi_new` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `evi_new`;
-- MySQL dump 10.13  Distrib 5.5.50, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: evi_new
-- ------------------------------------------------------
-- Server version	5.5.50-0ubuntu0.14.04.1

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
-- Table structure for table `ATTACHMENT`
--

DROP TABLE IF EXISTS `ATTACHMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ATTACHMENT` (
  `ATTACHMENTID` int(11) NOT NULL AUTO_INCREMENT,
  `FILENAME` varchar(255) DEFAULT NULL,
  `ATTACHMENTNAME` varchar(255) DEFAULT NULL,
  `ATTACHMENTDESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATEDON` datetime DEFAULT NULL,
  `CREATEDBY` varchar(255) DEFAULT NULL,
  `CASEEVENTDETAILID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ATTACHMENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ATTACHMENT`
--

LOCK TABLES `ATTACHMENT` WRITE;
/*!40000 ALTER TABLE `ATTACHMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `ATTACHMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CASEEVENTDETAIL`
--

DROP TABLE IF EXISTS `CASEEVENTDETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CASEEVENTDETAIL` (
  `CASEEVENTDETAILID` int(11) NOT NULL AUTO_INCREMENT,
  `SITTINGNO` int(11) DEFAULT NULL,
  `SESSIONNO` int(11) DEFAULT NULL,
  `EVENTDATE` date DEFAULT NULL,
  `LOGNOTES` longtext,
  `FTPLOCATION` varchar(255) DEFAULT NULL,
  `STARTTIME` datetime DEFAULT NULL,
  `ENDTIME` datetime DEFAULT NULL,
  `PRIVATENOTEFLAG` bit(1) DEFAULT NULL,
  `ATTACHMENTFLAG` bit(1) DEFAULT NULL,
  `CONFIDENTIAL` bit(1) DEFAULT NULL,
  `CASENO` varchar(255) DEFAULT NULL,
  `COURTID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CASEEVENTDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CASEEVENTDETAIL`
--

LOCK TABLES `CASEEVENTDETAIL` WRITE;
/*!40000 ALTER TABLE `CASEEVENTDETAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `CASEEVENTDETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CASEINFO`
--

DROP TABLE IF EXISTS `CASEINFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CASEINFO` (
  `CASENO` varchar(255) NOT NULL,
  `CASETITLE` varchar(255) DEFAULT NULL,
  `CASEDESCRIPTION` longtext,
  `CASETYPEID` int(11) DEFAULT NULL,
  `CASESTATUSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CASENO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CASEINFO`
--

LOCK TABLES `CASEINFO` WRITE;
/*!40000 ALTER TABLE `CASEINFO` DISABLE KEYS */;
/*!40000 ALTER TABLE `CASEINFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CASESTATUS`
--

DROP TABLE IF EXISTS `CASESTATUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CASESTATUS` (
  `CASESTATUSID` int(11) NOT NULL AUTO_INCREMENT,
  `STATUS` varchar(255) DEFAULT NULL,
  `STATUSDESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CASESTATUSID`),
  UNIQUE KEY `STATUS` (`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CASESTATUS`
--

LOCK TABLES `CASESTATUS` WRITE;
/*!40000 ALTER TABLE `CASESTATUS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CASESTATUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CASETYPE`
--

DROP TABLE IF EXISTS `CASETYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CASETYPE` (
  `CASETYPEID` int(11) NOT NULL AUTO_INCREMENT,
  `CASETYPE` varchar(255) DEFAULT NULL,
  `TYPEDESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CASETYPEID`),
  UNIQUE KEY `CASETYPE` (`CASETYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CASETYPE`
--

LOCK TABLES `CASETYPE` WRITE;
/*!40000 ALTER TABLE `CASETYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CASETYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COURT`
--

DROP TABLE IF EXISTS `COURT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COURT` (
  `COURTID` int(11) NOT NULL AUTO_INCREMENT,
  `COURTNAME` varchar(255) DEFAULT NULL,
  `COURTDETAILS` varchar(255) DEFAULT NULL,
  `LOCATIONID` int(11) DEFAULT NULL,
  PRIMARY KEY (`COURTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COURT`
--

LOCK TABLES `COURT` WRITE;
/*!40000 ALTER TABLE `COURT` DISABLE KEYS */;
/*!40000 ALTER TABLE `COURT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LANDEPATH`
--

DROP TABLE IF EXISTS `LANDEPATH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LANDEPATH` (
  `USERNAME` varchar(255) NOT NULL,
  `LEPATH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LANDEPATH`
--

LOCK TABLES `LANDEPATH` WRITE;
/*!40000 ALTER TABLE `LANDEPATH` DISABLE KEYS */;
/*!40000 ALTER TABLE `LANDEPATH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOCATION`
--

DROP TABLE IF EXISTS `LOCATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOCATION` (
  `LOCATIONID` int(11) NOT NULL AUTO_INCREMENT,
  `LOCATIONNAME` varchar(255) DEFAULT NULL,
  `LOCATIONDESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LOCATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOCATION`
--

LOCK TABLES `LOCATION` WRITE;
/*!40000 ALTER TABLE `LOCATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOCATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MOBDATA`
--

DROP TABLE IF EXISTS `MOBDATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MOBDATA` (
  `RANDOMCODE` varchar(255) NOT NULL,
  `FILETYPE` varchar(255) DEFAULT NULL,
  `DETAIL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LATITUDE` varchar(255) DEFAULT NULL,
  `LONGITUDE` varchar(255) DEFAULT NULL,
  `CREATEDON` datetime DEFAULT NULL,
  `CREATEDBY` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RANDOMCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MOBDATA`
--

LOCK TABLES `MOBDATA` WRITE;
/*!40000 ALTER TABLE `MOBDATA` DISABLE KEYS */;
/*!40000 ALTER TABLE `MOBDATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MOBFILE`
--

DROP TABLE IF EXISTS `MOBFILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MOBFILE` (
  `FILEID` int(11) NOT NULL AUTO_INCREMENT,
  `FILENAME` varchar(255) DEFAULT NULL,
  `randomCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MOBFILE`
--

LOCK TABLES `MOBFILE` WRITE;
/*!40000 ALTER TABLE `MOBFILE` DISABLE KEYS */;
/*!40000 ALTER TABLE `MOBFILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MOBUSER`
--

DROP TABLE IF EXISTS `MOBUSER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MOBUSER` (
  `EMAIL` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MOBUSER`
--

LOCK TABLES `MOBUSER` WRITE;
/*!40000 ALTER TABLE `MOBUSER` DISABLE KEYS */;
/*!40000 ALTER TABLE `MOBUSER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PARTICIPANT`
--

DROP TABLE IF EXISTS `PARTICIPANT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PARTICIPANT` (
  `PARTICIPANTID` int(11) NOT NULL AUTO_INCREMENT,
  `PARTICIPANTNAME` varchar(255) DEFAULT NULL,
  `PARTICIPANTCATEGORY` varchar(255) DEFAULT NULL,
  `CASEEVENTDETAILID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PARTICIPANTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PARTICIPANT`
--

LOCK TABLES `PARTICIPANT` WRITE;
/*!40000 ALTER TABLE `PARTICIPANT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PARTICIPANT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRIVATENOTE`
--

DROP TABLE IF EXISTS `PRIVATENOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRIVATENOTE` (
  `PRIVATENOTEID` int(11) NOT NULL AUTO_INCREMENT,
  `PRIVATENOTES` varchar(255) DEFAULT NULL,
  `CREATEDON` datetime DEFAULT NULL,
  `CREATEDBY` varchar(255) DEFAULT NULL,
  `CASEEVENTDETAILID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PRIVATENOTEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRIVATENOTE`
--

LOCK TABLES `PRIVATENOTE` WRITE;
/*!40000 ALTER TABLE `PRIVATENOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRIVATENOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRIVILEGE`
--

DROP TABLE IF EXISTS `PRIVILEGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRIVILEGE` (
  `PRIVILEGEID` int(11) NOT NULL AUTO_INCREMENT,
  `PRIVILEGE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PRIVILEGEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRIVILEGE`
--

LOCK TABLES `PRIVILEGE` WRITE;
/*!40000 ALTER TABLE `PRIVILEGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRIVILEGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE`
--

DROP TABLE IF EXISTS `ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ROLE` (
  `ROLEID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLENAME` varchar(255) DEFAULT NULL,
  `ROLEDESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE`
--

LOCK TABLES `ROLE` WRITE;
/*!40000 ALTER TABLE `ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SECURITYQUESTION`
--

DROP TABLE IF EXISTS `SECURITYQUESTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SECURITYQUESTION` (
  `USERNAME` varchar(255) NOT NULL,
  `QUESTION1` varchar(255) DEFAULT NULL,
  `ANSWER1` varchar(255) DEFAULT NULL,
  `QUESTION2` varchar(255) DEFAULT NULL,
  `ANSWER2` varchar(255) DEFAULT NULL,
  `QUESTION3` varchar(255) DEFAULT NULL,
  `ANSWER3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SECURITYQUESTION`
--

LOCK TABLES `SECURITYQUESTION` WRITE;
/*!40000 ALTER TABLE `SECURITYQUESTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `SECURITYQUESTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `USERNAME` varchar(255) NOT NULL,
  `FIRSTNAME` varchar(255) DEFAULT NULL,
  `MIDDLENAME` varchar(255) DEFAULT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PRIMARYEMAILID` varchar(255) DEFAULT NULL,
  `SECONDARYEMAILID` varchar(255) DEFAULT NULL,
  `PRIMARYMOBILENUMBER` varchar(255) DEFAULT NULL,
  `SECONDARYMOBILENUMBER` varchar(255) DEFAULT NULL,
  `USERTYPE` tinyint(4) DEFAULT NULL,
  `LASTMODIFIEDON` datetime DEFAULT NULL,
  `CREATEDON` datetime DEFAULT NULL,
  `CREATEDBY` varchar(255) DEFAULT NULL,
  `ROLEID` int(11) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERPRIVILEGE`
--

DROP TABLE IF EXISTS `USERPRIVILEGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERPRIVILEGE` (
  `USERPRIVILEGEID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PRIVILEGEID` int(11) DEFAULT NULL,
  `DATEOFPURCHASE` date DEFAULT NULL,
  `DATEOFEXPIRE` date DEFAULT NULL,
  PRIMARY KEY (`USERPRIVILEGEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERPRIVILEGE`
--

LOCK TABLES `USERPRIVILEGE` WRITE;
/*!40000 ALTER TABLE `USERPRIVILEGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USERPRIVILEGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERSESSION`
--

DROP TABLE IF EXISTS `USERSESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERSESSION` (
  `USERNAME` varchar(255) NOT NULL,
  `SESSIONID` varchar(255) DEFAULT NULL,
  `CLIENTIP` varchar(255) DEFAULT NULL,
  `LOGINTIME` datetime DEFAULT NULL,
  `LASTREQUESTEDTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERSESSION`
--

LOCK TABLES `USERSESSION` WRITE;
/*!40000 ALTER TABLE `USERSESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USERSESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachment`
--

DROP TABLE IF EXISTS `attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment` (
  `ATTACHMENTID` int(11) NOT NULL AUTO_INCREMENT,
  `FILENAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ATTACHMENTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ATTACHMENTDESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATEDON` datetime DEFAULT NULL,
  `CREATEDBY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CASEEVENTDETAILID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ATTACHMENTID`),
  KEY `FKA7E14523FAC1902C` (`CASEEVENTDETAILID`),
  KEY `FKA7E145239BFC428F` (`CREATEDBY`),
  CONSTRAINT `FKA7E145239BFC428F` FOREIGN KEY (`CREATEDBY`) REFERENCES `user` (`USERNAME`),
  CONSTRAINT `FKA7E14523FAC1902C` FOREIGN KEY (`CASEEVENTDETAILID`) REFERENCES `caseeventdetail` (`CASEEVENTDETAILID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment`
--

LOCK TABLES `attachment` WRITE;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
INSERT INTO `attachment` VALUES (1,'1448000435424Image453244.jpg','fgjgfj','gfjfgjfgj','2015-11-20 11:50:35','senzit123',10),(2,'1448001051981Image623568.jpg','JGHJG','GJGJG','2015-11-20 12:00:52','senzit123',13),(3,'1448001213503Image982809.jpg','fgmfgmf','mfmfmfm','2015-11-20 12:03:34','senzit123',14),(4,'1448001755614Image982809.jpg','fgtdgh','dfsdfgf','2015-11-20 12:12:36','senzit123',15),(5,'1448001844835Image982809.jpg','office','Equipments','2015-11-20 12:14:05','senzit123',16),(6,'1448002440825Image318441.jpg','office','Equipments','2015-11-20 12:24:01','senzit123',18),(7,'1448260864811Image877537.jpg','ngjnhgj','hjhgjghjhgj','2015-11-23 12:11:05','senzit123',20),(8,'1448264281080Image883340.jpg','evidencer','evidencer description','2015-11-23 13:08:01','senzit123',28),(9,'1448268252155Image206977.jpg','evidencer','evidencer description','2015-11-23 14:14:12','senzit123',32),(10,'1448268617173Image598273.jpg','evidencer','evidencer description','2015-11-23 14:20:17','senzit123',33),(11,'1448272452915Image638157.jpg','evidencer','evidencer description','2015-11-23 15:24:13','senzit123',36),(12,'1448368248674Image774305.jpg','cc','cc','2015-11-24 18:00:49','senzit123',70),(13,'1448368723069Image688139.jpg','saddddd','asd','2015-11-24 18:08:43','senzit123',71),(14,'1470901236736Image326770.jpg','test','test','2016-08-11 13:10:36','senzit123',85),(15,'1470905823076image.jpeg','hgfh','cgc','2016-08-11 14:27:03','shibi2015',86),(16,'1470908406509Image425732.jpg','rt','rtert','2016-08-11 15:10:06','senzit123',87),(17,'1470908457731Image181475.jpg','vvv','vb','2016-08-11 15:10:57','senzit123',87),(18,'1470908526117Image657712.jpg','gfcb','ff','2016-08-11 15:12:06','senzit123',87),(19,'1470909455578image.jpeg','ygf','ygf','2016-08-11 15:27:35','shibi2015',90),(20,'1470909845348image.jpeg','b','hgvhgv','2016-08-11 15:34:05','shibi2015',91),(21,'1471418026235Image690651.jpg','knife','evidencer','2016-08-17 12:43:46','senzit123',100),(22,'1471422030311image.jpeg','ghgy','hghg','2016-08-17 13:50:30','shibi2015',103),(23,'1471440374455Image263678.jpg','test','test desc','2016-08-17 18:56:14','senzit123',109),(24,'1471525483168image.jpeg','evidence1','nbnbh','2016-08-18 18:34:43','shibi2015',113),(25,'1471582361072image.jpeg','bhbh','bbh','2016-08-19 10:22:41','shibi2015',119),(26,'1471582635965image.jpeg','hhh','gvhv','2016-08-19 10:27:15','shibi2015',120),(27,'1471595540277image.jpeg','ftygg.','fgfh','2016-08-19 14:02:20','shibi2015',121);
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caseeventdetail`
--

DROP TABLE IF EXISTS `caseeventdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caseeventdetail` (
  `CASEEVENTDETAILID` int(11) NOT NULL AUTO_INCREMENT,
  `SITTINGNO` int(11) DEFAULT NULL,
  `SESSIONNO` int(11) DEFAULT NULL,
  `EVENTDATE` date DEFAULT NULL,
  `LOGNOTES` longtext COLLATE utf8_bin,
  `FTPLOCATION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STARTTIME` datetime DEFAULT NULL,
  `ENDTIME` datetime DEFAULT NULL,
  `PRIVATENOTEFLAG` bit(1) DEFAULT NULL,
  `ATTACHMENTFLAG` bit(1) DEFAULT NULL,
  `CONFIDENTIAL` bit(1) DEFAULT NULL,
  `CASENO` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `COURTID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CASEEVENTDETAILID`),
  KEY `FKE7FFF21BCA02448C` (`COURTID`),
  KEY `FKE7FFF21B2D2F53F4` (`CASENO`),
  CONSTRAINT `FKE7FFF21B2D2F53F4` FOREIGN KEY (`CASENO`) REFERENCES `caseinfo` (`CASENO`),
  CONSTRAINT `FKE7FFF21BCA02448C` FOREIGN KEY (`COURTID`) REFERENCES `court` (`COURTID`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caseeventdetail`
--

LOCK TABLES `caseeventdetail` WRITE;
/*!40000 ALTER TABLE `caseeventdetail` DISABLE KEYS */;
INSERT INTO `caseeventdetail` VALUES (1,1,1,'2015-11-12','[{\"timestamp\":\"11/12/2015  3:52:26\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/12/2015  3:52:45\",\"duration\":\"71\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CR35164/Sitting 1/Session 1','2015-11-12 15:50:50','2015-11-12 15:52:47','\0','\0','','CR35164',1001),(2,1,1,'2015-11-18','[{\"timestamp\":\"11/18/2015  6:01:51\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/18/2015  6:02:52\",\"duration\":\"88\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/DEMO2015/Sitting 1/Session 1','2015-11-18 18:01:03','2015-11-18 18:02:56','\0','\0','','DEMO2015',1001),(3,1,1,'2015-11-02',NULL,NULL,'2015-11-02 09:21:39',NULL,'\0','\0','','SRN01',1001),(4,1,1,'2015-11-02','[{\"timestamp\":\"11/20/2015  11:05:24\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/20/2015  11:11:01\",\"duration\":\"318\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SNR01/Sitting 1/Session 1','2015-11-02 09:24:26','2015-11-02 09:30:05','\0','\0','','SNR01',1001),(5,2,1,'2015-11-02','[{\"timestamp\":\"11/20/2015  11:12:57\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/20/2015  11:13:56\",\"duration\":\"54\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SNR01/Sitting 2/Session 1','2015-11-02 09:32:00','2015-11-02 09:33:00','\0','\0','','SNR01',1001),(6,3,1,'2015-11-02','[{\"timestamp\":\"11/20/2015  11:22:53\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/20/2015  11:23:29\",\"duration\":\"32\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SNR01/Sitting 3/Session 1','2015-11-02 09:41:56','2015-11-02 09:42:33','\0','\0','','SNR01',1001),(7,4,1,'2015-11-02','[{\"timestamp\":\"11/20/2015  11:25:45\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/20/2015  11:28:48\",\"duration\":\"168\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"case postponed\"},{\"timestamp\":\"11/20/2015  11:30:10\",\"duration\":\"246\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Murderer brought in front of court\"},{\"timestamp\":\"11/20/2015  11:33:33\",\"duration\":\"434\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"11/20/2015  11:40:38\",\"duration\":\"818\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SNR01/Sitting 4/Session 1','2015-11-02 09:44:49','2015-11-20 11:40:38','','\0','','SNR01',1001),(8,5,1,'2015-11-20','[{\"timestamp\":\"11/20/2015  11:41:20\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/20/2015  11:48:47\",\"duration\":\"415\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SNR01/Sitting 5/Session 1','2015-11-20 11:41:20','2015-11-20 11:48:47','\0','\0','','SNR01',1001),(9,1,1,'2015-11-20','[{\"timestamp\":\"11/20/2015  11:49:11\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/20/2015  11:49:25\",\"duration\":\"13\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SHINZ/Sitting 1/Session 1','2015-11-20 11:49:09','2015-11-20 11:49:24','\0','\0','','SHINZ',1001),(10,2,1,'2015-11-20','[{\"timestamp\":\"11/20/2015  11:50:21\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/20/2015  11:52:00\",\"duration\":\"97\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"bcb\"},{\"timestamp\":\"11/20/2015  11:52:02\",\"duration\":\"99\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"cvbcvb\"},{\"timestamp\":\"11/20/2015  11:52:03\",\"duration\":\"100\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"vcbcvb\"},{\"timestamp\":\"11/20/2015  11:52:05\",\"duration\":\"102\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SHINZ/Sitting 2/Session 1','2015-11-20 11:50:19','2015-11-20 11:52:04','\0','','','SHINZ',1001),(11,2,1,'2015-11-20',NULL,NULL,'2015-11-20 11:54:03',NULL,'\0','\0','','SRN01',1001),(12,1,1,'2015-11-20','[{\"timestamp\":\"11/20/2015  11:57:28\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/20/2015  12:02:39\",\"duration\":\"112\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/TEST/Sitting 1/Session 1','2015-11-20 11:57:28','2015-11-20 12:02:40','\0','\0','','TEST',1001),(13,1,1,'2015-11-20','[{\"timestamp\":\"11/20/2015  12:00:37\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/20/2015  12:02:39\",\"duration\":\"120\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/HH123/Sitting 1/Session 1','2015-11-20 12:00:36','2015-11-20 12:02:40','\0','','','HH123',1001),(14,2,1,'2015-11-20',NULL,NULL,'2015-11-20 12:03:15',NULL,'\0','','','TEST',1001),(15,3,1,'2015-11-20','[{\"timestamp\":\"11/20/2015  12:09:00\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/20/2015  12:12:57\",\"duration\":\"219\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SRN01/Sitting 3/Session 1','2015-11-20 12:09:00','2015-11-20 12:12:58','\0','','','SRN01',1001),(16,3,2,'2015-11-20',NULL,NULL,'2015-11-20 12:13:20',NULL,'\0','','','SRN01',1001),(17,4,1,'2015-11-20','[{\"timestamp\":\"11/20/2015  12:20:28\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/20/2015  12:21:45\",\"duration\":\"71\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SRN01/Sitting 4/Session 1','2015-11-20 12:20:28','2015-11-20 12:21:46','\0','\0','','SRN01',1001),(18,5,1,'2015-11-20','[{\"timestamp\":\"11/20/2015  12:22:46\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/20/2015  12:23:33\",\"duration\":\"43\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Murderer brought in front of court\"},{\"timestamp\":\"11/20/2015  12:25:14\",\"duration\":\"137\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"11/20/2015  12:25:21\",\"duration\":\"143\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SRN01/Sitting 5/Session 1','2015-11-20 12:22:46','2015-11-20 12:25:21','','','','SRN01',1001),(19,5,2,'2015-11-20','[{\"timestamp\":\"11/20/2015  12:26:00\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/20/2015  12:26:14\",\"duration\":\"11\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SRN01/Sitting 5/Session 2','2015-11-20 12:26:00','2015-11-20 12:26:14','\0','\0','','SRN01',1001),(20,1,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  12:05:05\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  12:06:08\",\"duration\":\"53\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"dgfdsg\"},{\"timestamp\":\"11/23/2015  12:06:24\",\"duration\":\"68\",\"speaker\":\"Lawyer : gfh\",\"notes\":\"cbcxvbcvn\"},{\"timestamp\":\"11/23/2015  12:07:13\",\"duration\":\"111\",\"speaker\":\"Other : wrwre\",\"notes\":\"vcbcvb\"},{\"timestamp\":\"11/23/2015  12:07:29\",\"duration\":\"124\",\"speaker\":\"Participant : gjghj\",\"notes\":\"dgsdg\"},{\"timestamp\":\"11/23/2015  12:08:29\",\"duration\":\"181\",\"speaker\":\"Participant : gjghj\",\"notes\":\"vcnbvbn\"},{\"timestamp\":\"11/23/2015  12:08:35\",\"duration\":\"186\",\"speaker\":\"Judge : 22\",\"notes\":\"jhgkghk\"},{\"timestamp\":\"11/23/2015  12:08:42\",\"duration\":\"192\",\"speaker\":\"Judge : 11\",\"notes\":\"sgfsgf\"},{\"timestamp\":\"11/23/2015  12:09:07\",\"duration\":\"215\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"ffhfghfgh\"},{\"timestamp\":\"11/23/2015  12:10:16\",\"duration\":\"278\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"11/23/2015  12:11:19\",\"duration\":\"338\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"dsgdfg\"},{\"timestamp\":\"11/23/2015  12:11:30\",\"duration\":\"348\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CR123/Sitting 1/Session 1','2015-11-23 12:05:07','2015-11-23 12:11:34','','','','CR123',1001),(21,1,1,'2015-11-23',NULL,NULL,'2015-11-23 12:31:29',NULL,'','\0','','CASE2020',1001),(22,2,1,'2015-11-23',NULL,NULL,'2015-11-23 12:36:16',NULL,'\0','\0','','CASE2020',1001),(23,1,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  12:44:49\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  12:45:23\",\"duration\":\"32\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/DEMO2014/Sitting 1/Session 1','2015-11-23 12:44:48','2015-11-23 12:45:22','\0','\0','','DEMO2014',1001),(24,1,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  12:47:56\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  12:48:10\",\"duration\":\"13\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"1456\"},{\"timestamp\":\"11/23/2015  12:48:38\",\"duration\":\"40\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"11/23/2015  12:48:45\",\"duration\":\"47\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE456/Sitting 1/Session 1','2015-11-23 12:47:55','2015-11-23 12:48:44','','\0','','CASE456',1001),(25,2,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  12:58:49\",\"duration\":0,\"speaker\":\"Clerk : administrator\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  12:58:57\",\"duration\":\"6\",\"speaker\":\"Clerk : administrator\",\"notes\":\"Recording Stopped\"}]','Evidencer/DEMO2015/Sitting 2/Session 1','2015-11-23 12:58:48','2015-11-23 12:58:56','\0','\0','','DEMO2015',1001),(26,1,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  12:59:55\",\"duration\":0,\"speaker\":\"Clerk : administrator\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  1:00:10\",\"duration\":\"14\",\"speaker\":\"Clerk : administrator\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE789/Sitting 1/Session 1','2015-11-23 12:59:54','2015-11-23 13:00:08','\0','\0','','CASE789',1001),(27,1,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  1:00:47\",\"duration\":0,\"speaker\":\"Clerk : administrator\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  1:00:54\",\"duration\":\"6\",\"speaker\":\"Clerk : administrator\",\"notes\":\"Recording Stopped\"}]','Evidencer/DEMO7894/Sitting 1/Session 1','2015-11-23 13:00:45','2015-11-23 13:00:53','\0','\0','','DEMO7894',1001),(28,1,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  1:06:38\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  1:06:59\",\"duration\":\"20\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"case123\"},{\"timestamp\":\"11/23/2015  1:08:08\",\"duration\":\"88\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE123/Sitting 1/Session 1','2015-11-23 13:06:37','2015-11-23 13:08:07','\0','','','CASE123',1001),(29,2,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  1:14:57\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  1:15:56\",\"duration\":\"72\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/DEMO2014/Sitting 2/Session 1','2015-11-23 13:14:37','2015-11-23 13:15:55','\0','\0','','DEMO2014',1001),(30,1,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  1:54:59\",\"duration\":0,\"speaker\":\"Clerk : administrator\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  1:55:15\",\"duration\":\"11\",\"speaker\":\"Judge : tyy\",\"notes\":\"hrhhgfh\"},{\"timestamp\":\"11/23/2015  1:55:22\",\"duration\":\"17\",\"speaker\":\"Judge : rty\",\"notes\":\"fghfghngfhgfhfgh\"},{\"timestamp\":\"11/23/2015  1:55:29\",\"duration\":\"23\",\"speaker\":\"Judge : tyrty\",\"notes\":\"fghgfhhfjjhj\"},{\"timestamp\":\"11/23/2015  1:55:42\",\"duration\":\"35\",\"speaker\":\"Judge : tyrty\",\"notes\":\"fghfgh\"},{\"timestamp\":\"11/23/2015  1:55:56\",\"duration\":\"47\",\"speaker\":\"Judge : rty\",\"notes\":\"gfhfhgfh\"},{\"timestamp\":\"11/23/2015  1:56:14\",\"duration\":\"65\",\"speaker\":\"Clerk : administrator\",\"notes\":\"hjfgj\"},{\"timestamp\":\"11/23/2015  1:57:50\",\"duration\":\"158\",\"speaker\":\"Clerk : administrator\",\"notes\":\"Recording Stopped\"}]','Evidencer/111111/Sitting 1/Session 1','2015-11-23 13:55:02','2015-11-23 13:57:54','\0','\0','','111111',1001),(31,1,1,'2015-11-23',NULL,NULL,'2015-11-23 14:06:40',NULL,'','\0','','CASE07',1001),(32,1,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  2:12:44\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  2:13:26\",\"duration\":\"40\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"11/23/2015  2:14:36\",\"duration\":\"110\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE09/Sitting 1/Session 1','2015-11-23 14:12:43','2015-11-23 14:14:35','','','','CASE09',1001),(33,1,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  2:18:36\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  2:19:16\",\"duration\":\"38\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Refuse the existing evidence\"},{\"timestamp\":\"11/23/2015  2:19:46\",\"duration\":\"68\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"11/23/2015  2:20:43\",\"duration\":\"124\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE10/Sitting 1/Session 1','2015-11-23 14:18:35','2015-11-23 14:20:42','','','','CASE10',1001),(34,2,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  2:43:42\",\"duration\":0,\"speaker\":\"Clerk : administrator\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  2:44:08\",\"duration\":\"25\",\"speaker\":\"Clerk : administrator\",\"notes\":\"objection sustained\"},{\"timestamp\":\"11/23/2015  2:45:18\",\"duration\":\"94\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"11/23/2015  2:45:47\",\"duration\":\"123\",\"speaker\":\"Clerk : administrator\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE10/Sitting 2/Session 1','2015-11-23 14:43:41','2015-11-23 14:45:46','','\0','','CASE10',1001),(35,2,2,'2015-11-23',NULL,NULL,'2015-11-23 15:15:15',NULL,'\0','\0','','CASE10',1001),(36,1,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  3:22:02\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  3:22:47\",\"duration\":\"32\",\"speaker\":\"Judge : Michael\",\"notes\":\"objection sustained\"},{\"timestamp\":\"11/23/2015  3:23:03\",\"duration\":\"45\",\"speaker\":\"Lawyer : James\",\"notes\":\"Refusal between two team\"},{\"timestamp\":\"11/23/2015  3:23:38\",\"duration\":\"75\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"11/23/2015  3:24:28\",\"duration\":\"118\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"case100\"},{\"timestamp\":\"11/23/2015  3:24:35\",\"duration\":\"124\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE100/Sitting 1/Session 1','2015-11-23 15:22:02','2015-11-23 15:24:37','','','','CASE100',1001),(37,1,1,'2015-11-23',NULL,NULL,'2015-11-23 15:53:00',NULL,'\0','\0','','case1010',1001),(38,1,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  4:09:38\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  4:09:49\",\"duration\":\"18\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/case102/Sitting 1/Session 1','2015-11-23 15:57:49','2015-11-23 16:09:53','','\0','','case102',1001),(39,1,1,'2015-11-23','[{\"timestamp\":\"11/23/2015  5:19:04\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/23/2015  5:19:17\",\"duration\":\"14\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE103/Sitting 1/Session 1','2015-11-23 17:14:40','2015-11-23 17:19:18','\0','\0','','CASE103',1001),(40,1,1,'2015-11-23',NULL,NULL,'2015-11-23 17:25:50',NULL,'','\0','','CASE104',1001),(41,1,1,'2015-11-24','[{\"timestamp\":\"11/24/2015  9:32:32\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  9:33:54\",\"duration\":\"75\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE300/Sitting 1/Session 1','2015-11-24 09:32:36','2015-11-24 09:33:59','\0','\0','','CASE300',1001),(42,1,1,'2015-11-24','[{\"timestamp\":\"11/24/2015  9:44:09\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  9:44:53\",\"duration\":\"58\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"11/24/2015  9:45:06\",\"duration\":\"70\",\"speaker\":\"Police : Michael\",\"notes\":\"ggdyuhbvgujfnb\"},{\"timestamp\":\"11/24/2015  9:45:15\",\"duration\":\"78\",\"speaker\":\"Lawyer : Muhammed\",\"notes\":\"gdcrhythy\"},{\"timestamp\":\"11/24/2015  9:45:21\",\"duration\":\"84\",\"speaker\":\"Participant : Luke\",\"notes\":\"dffdtghbftcgh\"},{\"timestamp\":\"11/24/2015  9:45:25\",\"duration\":\"87\",\"speaker\":\"Other : Ajini\",\"notes\":\"gdfrhyftrhyutgfyju\"},{\"timestamp\":\"11/24/2015  9:45:34\",\"duration\":\"96\",\"speaker\":\"Writer : senzit123\",\"notes\":\"hbfvhyfghju\"},{\"timestamp\":\"11/24/2015  9:46:12\",\"duration\":\"132\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/case105/Sitting 1/Session 1','2015-11-24 09:43:52','2015-11-24 09:46:17','','\0','','case105',1001),(43,1,1,'2015-11-24','[{\"timestamp\":\"11/24/2015  10:23:50\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  10:24:17\",\"duration\":\"38\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/106/Sitting 1/Session 1','2015-11-24 10:23:37','2015-11-24 10:24:21','\0','\0','','106',1001),(44,1,1,'2015-11-24','[{\"timestamp\":\"11/24/2015  10:32:23\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  10:32:55\",\"duration\":\"45\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"11/24/2015  10:33:06\",\"duration\":\"55\",\"speaker\":\"Writer : senzit123\",\"notes\":\"objections\"},{\"timestamp\":\"11/24/2015  10:33:14\",\"duration\":\"63\",\"speaker\":\"Police : Micheal\",\"notes\":\"sustains\"},{\"timestamp\":\"11/24/2015  10:33:20\",\"duration\":\"69\",\"speaker\":\"Lawyer : Arun\",\"notes\":\"events\"},{\"timestamp\":\"11/24/2015  10:33:29\",\"duration\":\"77\",\"speaker\":\"Participant : Ram\",\"notes\":\"case107\"},{\"timestamp\":\"11/24/2015  10:33:39\",\"duration\":\"88\",\"speaker\":\"Other : VAMILA\",\"notes\":\"documents\"},{\"timestamp\":\"11/24/2015  10:34:36\",\"duration\":\"142\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE107/Sitting 1/Session 1','2015-11-24 10:32:07','2015-11-24 10:34:41','','\0','','CASE107',1001),(45,1,1,'2015-11-24','[{\"timestamp\":\"11/24/2015  11:38:55\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  11:39:25\",\"duration\":\"26\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASETEMP/Sitting 1/Session 1','2015-11-24 11:38:55','2015-11-24 11:39:25','\0','\0','','CASETEMP',1001),(46,1,2,'2015-11-24','[{\"timestamp\":\"11/24/2015  11:41:58\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  11:42:39\",\"duration\":\"39\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASETEMP/Sitting 1/Session 2','2015-11-24 11:41:59','2015-11-24 11:42:40','\0','\0','','CASETEMP',1001),(47,1,3,'2015-11-24','[{\"timestamp\":\"11/24/2015  11:54:18\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  11:54:45\",\"duration\":\"25\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASETEMP/Sitting 1/Session 3','2015-11-24 11:54:18','2015-11-24 11:54:46','\0','\0','','CASETEMP',1001),(48,1,4,'2015-11-24','[{\"timestamp\":\"11/24/2015  12:50:34\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  12:51:32\",\"duration\":\"56\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASETEMP/Sitting 1/Session 4','2015-11-24 12:50:34','2015-11-24 12:51:33','\0','\0','','CASETEMP',1001),(49,1,5,'2015-11-24',NULL,NULL,'2015-11-24 12:54:09',NULL,'\0','\0','','CASETEMP',1001),(50,1,6,'2015-11-24','[{\"timestamp\":\"11/24/2015  12:59:31\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  12:59:51\",\"duration\":\"17\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASETEMP/Sitting 1/Session 6','2015-11-24 12:59:31','2015-11-24 12:59:51','\0','\0','','CASETEMP',1001),(51,1,7,'2015-11-24','[{\"timestamp\":\"11/24/2015  1:10:14\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  1:10:41\",\"duration\":\"26\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASETEMP/Sitting 1/Session 7','2015-11-24 13:10:14','2015-11-24 13:10:42','\0','\0','','CASETEMP',1001),(52,1,2,'2015-11-24',NULL,NULL,'2015-11-24 13:44:31',NULL,'\0','\0','','CASE107',1001),(53,1,3,'2015-11-24','[{\"timestamp\":\"11/24/2015  1:49:30\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  1:50:20\",\"duration\":\"63\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE107/Sitting 1/Session 3','2015-11-24 13:49:15','2015-11-24 13:50:21','\0','\0','','CASE107',1001),(54,1,4,'2015-11-24','[{\"timestamp\":\"11/24/2015  2:05:00\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  2:05:20\",\"duration\":\"26\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE107/Sitting 1/Session 4','2015-11-24 14:04:51','2015-11-24 14:05:21','\0','\0','','CASE107',1001),(55,1,5,'2015-11-24',NULL,NULL,'2015-11-24 14:12:09',NULL,'\0','\0','','CASE107',1001),(56,1,6,'2015-11-24','[{\"timestamp\":\"11/24/2015  2:14:14\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  2:14:36\",\"duration\":\"46\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE107/Sitting 1/Session 6','2015-11-24 14:13:49','2015-11-24 14:14:37','\0','\0','','CASE107',1001),(57,1,7,'2015-11-24','[{\"timestamp\":\"11/24/2015  2:16:15\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  2:16:48\",\"duration\":\"47\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE107/Sitting 1/Session 7','2015-11-24 14:15:59','2015-11-24 14:16:49','\0','\0','','CASE107',1001),(58,1,8,'2015-11-24','[{\"timestamp\":\"11/24/2015  2:20:02\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  2:20:22\",\"duration\":\"26\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"11/24/2015  2:20:29\",\"duration\":\"33\",\"speaker\":\"Writer : senzit123\",\"notes\":\"refusal\"},{\"timestamp\":\"11/24/2015  2:20:38\",\"duration\":\"42\",\"speaker\":\"Police : John\",\"notes\":\"objection\"},{\"timestamp\":\"11/24/2015  2:20:45\",\"duration\":\"49\",\"speaker\":\"Lawyer : Varun\",\"notes\":\"numbers\"},{\"timestamp\":\"11/24/2015  2:20:53\",\"duration\":\"57\",\"speaker\":\"Participant : Ejas\",\"notes\":\"commitee\"},{\"timestamp\":\"11/24/2015  2:21:15\",\"duration\":\"79\",\"speaker\":\"Other : Hima\",\"notes\":\"commitee members\"},{\"timestamp\":\"11/24/2015  2:22:01\",\"duration\":\"124\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE107/Sitting 1/Session 8','2015-11-24 14:19:50','2015-11-24 14:22:02','','\0','','CASE107',1001),(59,1,2,'2015-11-24','[{\"timestamp\":\"11/24/2015  2:33:33\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  2:33:52\",\"duration\":\"17\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE100/Sitting 1/Session 2','2015-11-24 14:33:34','2015-11-24 14:33:53','\0','\0','','CASE100',1001),(60,1,1,'2015-11-24','[{\"timestamp\":\"11/24/2015  2:48:38\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  2:49:03\",\"duration\":\"30\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE200/Sitting 1/Session 1','2015-11-24 14:48:31','2015-11-24 14:49:04','\0','\0','','CASE200',1001),(61,1,1,'2015-11-24',NULL,NULL,'2015-11-24 15:26:36',NULL,'','\0','','CASE500',1001),(62,1,1,'2015-11-24',NULL,NULL,'2015-11-24 15:38:39',NULL,'','\0','','CASE501',1001),(63,2,1,'2015-11-24',NULL,NULL,'2015-11-24 15:45:51',NULL,'\0','\0','','CASE501',1001),(64,1,1,'2015-11-24','[{\"timestamp\":\"11/24/2015  3:55:40\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  3:56:19\",\"duration\":\"39\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"11/24/2015  3:56:34\",\"duration\":\"53\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"refusal\"},{\"timestamp\":\"11/24/2015  3:56:42\",\"duration\":\"61\",\"speaker\":\"Lawyer : Vaishak\",\"notes\":\"moments\"},{\"timestamp\":\"11/24/2015  3:56:49\",\"duration\":\"68\",\"speaker\":\"Participant : Lilly\",\"notes\":\"members\"},{\"timestamp\":\"11/24/2015  3:57:03\",\"duration\":\"82\",\"speaker\":\"Other : Glenn\",\"notes\":\"participants\"},{\"timestamp\":\"11/24/2015  3:57:16\",\"duration\":\"94\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"number of documents\"},{\"timestamp\":\"11/24/2015  3:57:35\",\"duration\":\"114\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE599/Sitting 1/Session 1','2015-11-24 15:55:40','2015-11-24 15:57:36','','\0','','CASE599',1001),(65,1,1,'2015-11-24',NULL,NULL,'2015-11-24 16:10:19',NULL,'\0','\0','','CASE524',1001),(66,1,1,'2015-11-24',NULL,NULL,'2015-11-24 16:27:30',NULL,'\0','\0','','CASE1',1001),(67,1,1,'2015-11-24','[{\"timestamp\":\"11/24/2015  5:17:38\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  5:18:45\",\"duration\":\"65\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE12/Sitting 1/Session 1','2015-11-24 17:17:40','2015-11-24 17:18:48','\0','\0','','CASE12',1001),(68,1,1,'2015-11-24','[{\"timestamp\":\"11/24/2015  5:21:52\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  5:22:22\",\"duration\":\"61\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"11/24/2015  5:23:22\",\"duration\":\"121\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE14/Sitting 1/Session 1','2015-11-24 17:21:20','2015-11-24 17:23:25','','\0','','CASE14',1001),(69,1,1,'2015-11-24','[{\"timestamp\":\"11/24/2015  5:26:51\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  5:27:24\",\"duration\":\"37\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"11/24/2015  5:27:36\",\"duration\":\"49\",\"speaker\":\"Writer : senzit123\",\"notes\":\"yes\"},{\"timestamp\":\"11/24/2015  5:27:52\",\"duration\":\"66\",\"speaker\":\"Police : P1\",\"notes\":\"okay\"},{\"timestamp\":\"11/24/2015  5:27:58\",\"duration\":\"71\",\"speaker\":\"Lawyer : L1\",\"notes\":\"not okay\"},{\"timestamp\":\"11/24/2015  5:28:04\",\"duration\":\"78\",\"speaker\":\"Lawyer : L1\",\"notes\":\"no no\"},{\"timestamp\":\"11/24/2015  5:28:11\",\"duration\":\"84\",\"speaker\":\"Participant : PP1\",\"notes\":\"am ready\"},{\"timestamp\":\"11/24/2015  5:28:17\",\"duration\":\"90\",\"speaker\":\"Other : O1\",\"notes\":\"leave me\"},{\"timestamp\":\"11/24/2015  5:30:21\",\"duration\":\"215\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE01/Sitting 1/Session 1','2015-11-24 17:26:46','2015-11-24 17:30:24','','\0','','CASE01',1001),(70,1,1,'2015-11-24','[{\"timestamp\":\"11/24/2015  5:59:58\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  6:00:23\",\"duration\":\"23\",\"speaker\":\"Lawyer : Varun\",\"notes\":\"vvvv\"},{\"timestamp\":\"11/24/2015  6:00:27\",\"duration\":\"27\",\"speaker\":\"Participant : Pkjhj\",\"notes\":\"vvv\"},{\"timestamp\":\"11/24/2015  6:00:30\",\"duration\":\"30\",\"speaker\":\"Other : kjjh\",\"notes\":\"vvv\"},{\"timestamp\":\"11/24/2015  6:00:34\",\"duration\":\"34\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"vvvv\"},{\"timestamp\":\"11/24/2015  6:01:03\",\"duration\":\"62\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE600/Sitting 1/Session 1','2015-11-24 18:00:00','2015-11-24 18:01:04','\0','','','CASE600',1001),(71,1,1,'2015-11-24','[{\"timestamp\":\"11/24/2015  6:06:43\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  6:06:56\",\"duration\":\"11\",\"speaker\":\"Judge : sssss\",\"notes\":\"sadsad dsadsa sadasd\"},{\"timestamp\":\"11/24/2015  6:07:10\",\"duration\":\"26\",\"speaker\":\"Participant : dsdsd\",\"notes\":\"sdasdsad\"},{\"timestamp\":\"11/24/2015  6:07:22\",\"duration\":\"38\",\"speaker\":\"Other : sdsd\",\"notes\":\"asdsad\"},{\"timestamp\":\"11/24/2015  6:07:26\",\"duration\":\"42\",\"speaker\":\"Judge : sssss\",\"notes\":\"sadsad\"},{\"timestamp\":\"11/24/2015  6:07:31\",\"duration\":\"46\",\"speaker\":\"Judge : sssss\",\"notes\":\"asdasd\"},{\"timestamp\":\"11/24/2015  6:08:15\",\"duration\":\"90\",\"speaker\":\"Judge : sssss\",\"notes\":\"sadsad\"},{\"timestamp\":\"11/24/2015  6:08:18\",\"duration\":\"93\",\"speaker\":\"Participant : dsdsd\",\"notes\":\"asdsad\"},{\"timestamp\":\"11/24/2015  6:08:23\",\"duration\":\"97\",\"speaker\":\"Other : sdsd\",\"notes\":\"sdasad\"},{\"timestamp\":\"11/24/2015  6:09:02\",\"duration\":\"137\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASE601/Sitting 1/Session 1','2015-11-24 18:06:42','2015-11-24 18:09:02','\0','','','CASE601',1001),(72,1,8,'2015-11-24','[{\"timestamp\":\"11/24/2015  6:23:46\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  6:23:56\",\"duration\":\"8\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASETEMP/Sitting 1/Session 8','2015-11-24 18:23:46','2015-11-24 18:23:57','\0','\0','','CASETEMP',1001),(73,1,9,'2015-11-24',NULL,NULL,'2015-11-24 18:30:22',NULL,'\0','\0','','CASETEMP',1001),(74,1,10,'2015-11-24','[{\"timestamp\":\"11/24/2015  6:35:26\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  6:36:07\",\"duration\":\"35\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASETEMP/Sitting 1/Session 10','2015-11-24 18:35:26','2015-11-24 18:36:07','\0','\0','','CASETEMP',1001),(75,1,11,'2015-11-24','[{\"timestamp\":\"11/24/2015  6:58:15\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  6:58:24\",\"duration\":\"7\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASETEMP/Sitting 1/Session 11','2015-11-24 18:58:15','2015-11-24 18:58:24','\0','\0','','CASETEMP',1001),(76,1,12,'2015-11-24','[{\"timestamp\":\"11/24/2015  7:01:42\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/24/2015  7:03:05\",\"duration\":\"80\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/CASETEMP/Sitting 1/Session 12','2015-11-24 19:01:42','2015-11-24 19:03:05','\0','\0','','CASETEMP',1001),(77,1,13,'2015-11-24',NULL,NULL,'2015-11-24 19:08:24',NULL,'\0','\0','','CASETEMP',1001),(78,1,14,'2015-11-25','[{\"timestamp\":\"25/11/2015  10:26:40\",\"duration\":0,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"25/11/2015  10:27:49\",\"duration\":66,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/CASETEMP/Sitting 1/Session 14','2015-11-25 10:26:38','2015-11-25 10:27:53','\0','\0','\0','CASETEMP',1001),(79,1,15,'2015-11-25','[{\"timestamp\":\"25/11/2015  10:33:55\",\"duration\":0,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"25/11/2015  10:35:55\",\"duration\":117,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/CASETEMP/Sitting 1/Session 15','2015-11-25 10:33:55','2015-11-25 10:36:00','\0','\0','\0','CASETEMP',1001),(80,2,1,'2015-11-25','[{\"timestamp\":\"25/11/2015  10:44:13\",\"duration\":0,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"25/11/2015  10:45:37\",\"duration\":82,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/CASETEMP/Sitting 2/Session 1','2015-11-25 10:44:13','2015-11-25 10:48:22','\0','\0','\0','CASETEMP',1001),(81,1,1,'2016-08-10','[{\"timestamp\":\"8/10/2016  5:33:49\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/10/2016  5:34:14\",\"duration\":\"24\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"dfhgfdhg\"},{\"timestamp\":\"8/10/2016  5:34:16\",\"duration\":\"26\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"fgfdg\"},{\"timestamp\":\"8/10/2016  5:34:17\",\"duration\":\"28\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"fgfg\"},{\"timestamp\":\"8/10/2016  5:34:21\",\"duration\":\"32\",\"speaker\":\"Judge : dfd\",\"notes\":\"fg\"},{\"timestamp\":\"8/10/2016  5:34:24\",\"duration\":\"34\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/AQ1/Sitting 1/Session 1','2016-08-10 17:33:46','2016-08-10 17:34:22','\0','\0','','AQ1',1001),(82,2,1,'2016-08-11','[{\"timestamp\":\"8/11/2016  12:44:52\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/11/2016  12:45:09\",\"duration\":\"15\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"sss\"},{\"timestamp\":\"8/11/2016  12:45:12\",\"duration\":\"17\",\"speaker\":\"Judge : aq\",\"notes\":\"ss\"},{\"timestamp\":\"8/11/2016  12:45:15\",\"duration\":\"20\",\"speaker\":\"Judge : ad\",\"notes\":\"s\"},{\"timestamp\":\"8/11/2016  12:45:18\",\"duration\":\"24\",\"speaker\":\"Judge : as\",\"notes\":\"ssss\"},{\"timestamp\":\"8/11/2016  12:45:24\",\"duration\":\"29\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"terterter\"},{\"timestamp\":\"8/11/2016  12:45:27\",\"duration\":\"33\",\"speaker\":\"Judge : aq\",\"notes\":\"reterter\"},{\"timestamp\":\"8/11/2016  12:45:30\",\"duration\":\"35\",\"speaker\":\"Judge : as\",\"notes\":\"reertert\"},{\"timestamp\":\"8/11/2016  12:45:33\",\"duration\":\"38\",\"speaker\":\"Judge : ad\",\"notes\":\"ertert\"},{\"timestamp\":\"8/11/2016  12:45:35\",\"duration\":\"40\",\"speaker\":\"Judge : as\",\"notes\":\"rtretet\"},{\"timestamp\":\"8/11/2016  12:45:38\",\"duration\":\"43\",\"speaker\":\"Judge : aq\",\"notes\":\"erterter\"},{\"timestamp\":\"8/11/2016  12:51:31\",\"duration\":\"392\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"8/11/2016  12:52:22\",\"duration\":\"443\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"8/11/2016  12:52:55\",\"duration\":\"476\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"8/11/2016  12:53:03\",\"duration\":\"483\",\"speaker\":\"Judge : as\",\"notes\":\"rfetr\"},{\"timestamp\":\"8/11/2016  12:53:05\",\"duration\":\"485\",\"speaker\":\"Judge : as\",\"notes\":\"retrt\"},{\"timestamp\":\"8/11/2016  12:53:14\",\"duration\":\"494\",\"speaker\":\"Judge : as\",\"notes\":\"rdtgrdy\"},{\"timestamp\":\"8/11/2016  12:53:17\",\"duration\":\"497\",\"speaker\":\"Judge : aq\",\"notes\":\"ty ty\"},{\"timestamp\":\"8/11/2016  12:53:21\",\"duration\":\"501\",\"speaker\":\"Judge : ad\",\"notes\":\"try try\"},{\"timestamp\":\"8/11/2016  12:53:27\",\"duration\":\"507\",\"speaker\":\"Judge : ad\",\"notes\":\"yrtytryryrytytrty\"},{\"timestamp\":\"8/11/2016  12:58:59\",\"duration\":\"837\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/AQ1/Sitting 2/Session 1','2016-08-11 12:44:52','2016-08-11 12:58:59','','\0','','AQ1',1001),(83,3,1,'2016-08-11','[{\"timestamp\":\"8/11/2016  12:59:28\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/11/2016  1:00:12\",\"duration\":\"43\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/AQ1/Sitting 3/Session 1','2016-08-11 12:59:27','2016-08-11 13:00:12','\0','\0','','AQ1',1001),(84,1,1,'2016-08-11',NULL,NULL,'2016-08-11 13:00:53',NULL,'\0','\0','','AQ',1001),(85,4,1,'2016-08-11','[{\"timestamp\":\"8/11/2016  1:10:14\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/11/2016  1:10:42\",\"duration\":\"25\",\"speaker\":\"Judge : sdewr\",\"notes\":\"rwrewrwerw\"},{\"timestamp\":\"8/11/2016  1:10:44\",\"duration\":\"27\",\"speaker\":\"Participant : sdsd\",\"notes\":\"werwre\"},{\"timestamp\":\"8/11/2016  1:10:46\",\"duration\":\"30\",\"speaker\":\"Judge : sdewr\",\"notes\":\"wer\"},{\"timestamp\":\"8/11/2016  1:10:48\",\"duration\":\"32\",\"speaker\":\"Judge : werwer\",\"notes\":\"er\"},{\"timestamp\":\"8/11/2016  1:10:50\",\"duration\":\"34\",\"speaker\":\"Other : sdsd\",\"notes\":\"ewr\"},{\"timestamp\":\"8/11/2016  1:10:53\",\"duration\":\"37\",\"speaker\":\"Participant : sdsd\",\"notes\":\"werwer\"},{\"timestamp\":\"8/11/2016  1:10:59\",\"duration\":\"43\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"8/11/2016  1:11:05\",\"duration\":\"48\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/AQ1/Sitting 4/Session 1','2016-08-11 13:10:13','2016-08-11 13:11:05','','','','AQ1',1001),(86,1,1,'2016-08-11','[{\"timestamp\":\"11/8/2016  14:25:47\",\"duration\":0,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/8/2016  14:25:58\",\"duration\":8,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Fhghgfhgf\"},{\"timestamp\":\"11/8/2016  14:26:34\",\"duration\":45,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Jhgjhg\"},{\"timestamp\":\"11/8/2016  14:26:36\",\"duration\":46,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Hgfhtd\"},{\"timestamp\":\"11/8/2016  14:27:3\",\"duration\":73,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Attachment saved\"},{\"timestamp\":\"11/8/2016  14:28:18\",\"duration\":148,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Private note saved\"},{\"timestamp\":\"11/8/2016  14:28:30\",\"duration\":159,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/756754/Sitting 1/Session 1','2016-08-11 14:25:46','2016-08-11 14:28:32','','','\0','756754',1001),(87,1,1,'2016-08-11','[{\"timestamp\":\"8/11/2016  3:09:16\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/11/2016  3:10:15\",\"duration\":\"56\",\"speaker\":\"Lawyer : eqe\",\"notes\":\"trt\"},{\"timestamp\":\"8/11/2016  3:10:17\",\"duration\":\"59\",\"speaker\":\"Judge : wewe\",\"notes\":\"rtet\"},{\"timestamp\":\"8/11/2016  3:10:20\",\"duration\":\"61\",\"speaker\":\"Participant : eq\",\"notes\":\"rtert\"},{\"timestamp\":\"8/11/2016  3:10:23\",\"duration\":\"65\",\"speaker\":\"Judge : wewe\",\"notes\":\"rteett\"},{\"timestamp\":\"8/11/2016  3:10:26\",\"duration\":\"68\",\"speaker\":\"Participant : qee\",\"notes\":\"ret\"},{\"timestamp\":\"8/11/2016  3:10:34\",\"duration\":\"75\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"8/11/2016  3:11:08\",\"duration\":\"109\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"8/11/2016  3:11:34\",\"duration\":\"135\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"8/11/2016  3:11:56\",\"duration\":\"157\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"8/11/2016  3:12:18\",\"duration\":\"179\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"8/11/2016  3:12:28\",\"duration\":\"189\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/AQ2/Sitting 1/Session 1','2016-08-11 15:09:15','2016-08-11 15:12:28','','','','AQ2',1001),(88,1,1,'2016-08-11','[{\"timestamp\":\"11/8/2016  15:16:21\",\"duration\":0,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"11/8/2016  15:16:47\",\"duration\":24,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/AQ123/Sitting 1/Session 1','2016-08-11 15:16:20','2016-08-11 15:16:50','\0','\0','\0','AQ123',1001),(89,1,1,'2016-08-11',NULL,NULL,'2016-08-11 15:21:38',NULL,'\0','\0','\0','SE001',1001),(90,1,1,'2016-08-11','[{\"timestamp\":\"19/1/2014  10:32:41\",\"duration\":0,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"19/1/2014  10:33:4\",\"duration\":21,\"speaker\":\"Judge : Jgjhg\",\"notes\":\"Dgjlou\"},{\"timestamp\":\"19/1/2014  10:33:10\",\"duration\":26,\"speaker\":\"Judge : Jgjhg\",\"notes\":\"Gfbe\"},{\"timestamp\":\"19/1/2014  10:33:15\",\"duration\":32,\"speaker\":\"Judge : Jgjhg\",\"notes\":\"Nbvhgf\"},{\"timestamp\":\"19/1/2014  10:33:24\",\"duration\":41,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Jyguyfutf\"},{\"timestamp\":\"19/1/2014  10:33:51\",\"duration\":68,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Attachment saved\"},{\"timestamp\":\"19/1/2014  10:34:14\",\"duration\":90,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Private note saved\"},{\"timestamp\":\"19/1/2014  10:34:21\",\"duration\":97,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/AS123/Sitting 1/Session 1','2016-08-11 15:26:24','2016-08-11 15:28:08','','','\0','AS123',1001),(91,2,1,'2016-08-11','[{\"timestamp\":\"19/1/2014  10:39:44\",\"duration\":0,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"19/1/2014  10:39:58\",\"duration\":11,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Jhbjhgugg\"},{\"timestamp\":\"19/1/2014  10:40:21\",\"duration\":35,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Attachment saved\"},{\"timestamp\":\"19/1/2014  10:40:27\",\"duration\":40,\"speaker\":\"Police : Gjhbjh\",\"notes\":\"Mknkjnjhg\"},{\"timestamp\":\"19/1/2014  10:40:57\",\"duration\":70,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Private note saved\"},{\"timestamp\":\"19/1/2014  10:41:2\",\"duration\":75,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/AS123/Sitting 2/Session 1','2016-08-11 15:33:27','2016-08-11 15:34:49','','','\0','AS123',1001),(92,1,1,'2016-08-11','[{\"timestamp\":\"8/11/2016  3:38:59\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/11/2016  3:39:07\",\"duration\":\"8\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"8/11/2016  3:39:10\",\"duration\":\"11\",\"speaker\":\"Writer : senzit123\",\"notes\":\"ww\"},{\"timestamp\":\"8/11/2016  3:39:14\",\"duration\":\"14\",\"speaker\":\"Police : wqeqwe\",\"notes\":\"ww\"},{\"timestamp\":\"8/11/2016  3:39:17\",\"duration\":\"18\",\"speaker\":\"Lawyer : qwe\",\"notes\":\"ww\"},{\"timestamp\":\"8/11/2016  3:39:21\",\"duration\":\"21\",\"speaker\":\"Other : eqwe\",\"notes\":\"ww\"},{\"timestamp\":\"8/11/2016  3:39:24\",\"duration\":\"25\",\"speaker\":\"Participant : qewqwee\",\"notes\":\"www\"},{\"timestamp\":\"8/11/2016  3:39:50\",\"duration\":\"51\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/ASD123/Sitting 1/Session 1','2016-08-11 15:38:58','2016-08-11 15:39:50','','\0','','ASD123',1001),(93,2,1,'2016-08-12',NULL,NULL,'2016-08-12 12:00:59',NULL,'\0','\0','','SE001',1001),(94,3,1,'2016-08-12',NULL,NULL,'2016-08-12 12:43:08',NULL,'\0','\0','','SE001',1001),(95,4,1,'2016-08-12',NULL,NULL,'2016-08-12 12:46:47',NULL,'\0','\0','','SE001',1001),(96,1,1,'2016-08-12','[{\"timestamp\":\"8/12/2016  12:54:43\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/12/2016  12:55:23\",\"duration\":\"39\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/49282/Sitting 1/Session 1','2016-08-12 12:54:42','2016-08-12 12:55:22','\0','\0','','49282',1001),(97,5,1,'2016-08-12','[{\"timestamp\":\"8/12/2016  12:55:32\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/12/2016  12:55:37\",\"duration\":\"4\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SE001/Sitting 5/Session 1','2016-08-12 12:55:31','2016-08-12 12:55:36','\0','\0','','SE001',1001),(98,6,1,'2016-08-12','[{\"timestamp\":\"8/12/2016  12:59:01\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/12/2016  12:59:38\",\"duration\":\"35\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SE001/Sitting 6/Session 1','2016-08-12 12:59:00','2016-08-12 12:59:37','\0','\0','','SE001',1001),(99,7,1,'2016-08-16',NULL,NULL,'2016-08-16 16:00:42',NULL,'\0','\0','','SE001',1001),(100,8,1,'2016-08-17','[{\"timestamp\":\"8/17/2016  11:12:07\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/17/2016  11:13:07\",\"duration\":\"59\",\"speaker\":\"Judge : j1\",\"notes\":\"gufuyf\"},{\"timestamp\":\"8/17/2016  11:13:13\",\"duration\":\"64\",\"speaker\":\"Lawyer : l1\",\"notes\":\"hghh\"},{\"timestamp\":\"8/17/2016  11:14:17\",\"duration\":\"127\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"8/17/2016  11:14:27\",\"duration\":\"137\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SE001/Sitting 8/Session 1','2016-08-17 12:42:03','2016-08-17 12:44:24','','','','SE001',1001),(101,9,1,'2016-08-17','[{\"timestamp\":\"8/17/2016  11:56:11\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/17/2016  11:57:50\",\"duration\":\"97\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SE001/Sitting 9/Session 1','2016-08-17 13:26:08','2016-08-17 13:27:47','\0','\0','','SE001',1001),(102,10,1,'2016-08-17','[{\"timestamp\":\"8/17/2016  11:58:23\",\"duration\":0,\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/17/2016  11:58:29\",\"duration\":\"6\",\"speaker\":\"Writer : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SE001/Sitting 10/Session 1','2016-08-17 13:28:20','2016-08-17 13:28:26','\0','\0','','SE001',1001),(103,1,1,'2016-08-17','[{\"timestamp\":\"14/7/2014  11:44:2\",\"duration\":0,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"14/7/2014  11:44:20\",\"duration\":15,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Vfxgcggt\"},{\"timestamp\":\"14/7/2014  11:44:26\",\"duration\":21,\"speaker\":\"Judge : hbh\",\"notes\":\"Vfxgffg\"},{\"timestamp\":\"14/7/2014  11:44:44\",\"duration\":40,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Attachment saved\"},{\"timestamp\":\"14/7/2014  11:45:6\",\"duration\":61,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Private note saved\"},{\"timestamp\":\"14/7/2014  11:45:10\",\"duration\":65,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/DEMO4/Sitting 1/Session 1','2016-08-17 13:49:47','2016-08-17 13:50:59','','','\0','DEMO4',1001),(104,1,2,'2016-08-17','[{\"timestamp\":\"14/7/2014  11:48:48\",\"duration\":0,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"14/7/2014  11:49:1\",\"duration\":11,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/DEMO4/Sitting 1/Session 2','2016-08-17 13:54:33','2016-08-17 13:54:50','\0','\0','\0','DEMO4',1001),(105,11,1,'2016-08-17','[{\"timestamp\":\"8/17/2016  1:07:59\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/17/2016  1:08:44\",\"duration\":\"44\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SE001/Sitting 11/Session 1','2016-08-17 14:37:55','2016-08-17 14:38:42','\0','\0','','SE001',1001),(106,12,1,'2016-08-17',NULL,NULL,'2016-08-17 14:39:33',NULL,'\0','\0','','SE001',1001),(107,13,1,'2016-08-17','[{\"timestamp\":\"8/17/2016  3:30:38\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/17/2016  3:30:57\",\"duration\":\"18\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SE001/Sitting 13/Session 1','2016-08-17 17:00:34','2016-08-17 17:00:54','\0','\0','','SE001',1001),(108,14,1,'2016-08-17','[{\"timestamp\":\"8/17/2016  5:12:50\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/17/2016  5:13:02\",\"duration\":\"10\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/SE001/Sitting 14/Session 1','2016-08-17 18:42:47','2016-08-17 18:42:59','\0','\0','','SE001',1001),(109,1,1,'2016-08-17','[{\"timestamp\":\"8/17/2016  5:25:24\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/17/2016  5:25:41\",\"duration\":\"17\",\"speaker\":\"Judge : j1\",\"notes\":\"1 cam\"},{\"timestamp\":\"8/17/2016  5:25:49\",\"duration\":\"24\",\"speaker\":\"Lawyer : l1\",\"notes\":\"its  strted\"},{\"timestamp\":\"8/17/2016  5:25:58\",\"duration\":\"33\",\"speaker\":\"Judge : j2 \",\"notes\":\"helloo\"},{\"timestamp\":\"8/17/2016  5:26:33\",\"duration\":\"68\",\"speaker\":\"Admin : senzit123\",\"notes\":\"Private Note Added\"},{\"timestamp\":\"8/17/2016  5:26:58\",\"duration\":\"92\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/DEMO123/Sitting 1/Session 1','2016-08-17 18:55:21','2016-08-17 18:56:55','','','','DEMO123',1001),(110,1,1,'2016-08-18',NULL,NULL,'2016-08-18 12:59:17',NULL,'\0','\0','','SENSIT123',1001),(111,2,1,'2016-08-18',NULL,NULL,'2016-08-18 13:07:03',NULL,'\0','\0','','DEMO123',1001),(112,3,1,'2016-08-18','[{\"timestamp\":\"8/18/2016  1:29:22\",\"duration\":0,\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Started\"},{\"timestamp\":\"8/18/2016  1:29:57\",\"duration\":\"32\",\"speaker\":\"Clerk : senzit123\",\"notes\":\"Recording Stopped\"}]','Evidencer/DEMO123/Sitting 3/Session 1','2016-08-18 14:54:38','2016-08-18 14:57:14','\0','\0','','DEMO123',1001),(113,15,1,'2016-08-18',NULL,NULL,'2016-08-18 18:33:09',NULL,'\0','','\0','SE001',1001),(114,4,1,'2016-08-19',NULL,NULL,'2016-08-19 09:47:40',NULL,'\0','\0','','DEMO123',1001),(115,5,1,'2016-08-19','[{\"timestamp\":\"16/7/2014  7:42:37\",\"duration\":0,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"16/7/2014  7:45:0\",\"duration\":121,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/DEMO123/Sitting 5/Session 1','2016-08-19 09:48:17','2016-08-19 09:50:47','\0','\0','\0','DEMO123',1001),(116,6,1,'2016-08-19','[{\"timestamp\":\"16/7/2014  7:45:44\",\"duration\":0,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"16/7/2014  7:47:15\",\"duration\":89,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/DEMO123/Sitting 6/Session 1','2016-08-19 09:51:24','2016-08-19 09:52:59','\0','\0','\0','DEMO123',1001),(117,1,1,'2016-08-19',NULL,NULL,'2016-08-19 09:56:18',NULL,'\0','\0','','DEM123',1001),(118,7,1,'2016-08-19','[{\"timestamp\":\"16/7/2014  8:4:56\",\"duration\":0,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"16/7/2014  8:5:27\",\"duration\":28,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/DEMO123/Sitting 7/Session 1','2016-08-19 10:10:36','2016-08-19 10:11:11','\0','\0','\0','DEMO123',1001),(119,8,1,'2016-08-19','[{\"timestamp\":\"16/7/2014  8:16:42\",\"duration\":0,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"16/7/2014  8:17:0\",\"duration\":15,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Attachment saved\"},{\"timestamp\":\"16/7/2014  8:17:5\",\"duration\":20,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Vhvjbjn\"},{\"timestamp\":\"16/7/2014  8:17:19\",\"duration\":34,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/DEMO123/Sitting 8/Session 1','2016-08-19 10:22:23','2016-08-19 10:23:03','\0','','\0','DEMO123',1001),(120,9,1,'2016-08-19','[{\"timestamp\":\"16/7/2014  8:21:19\",\"duration\":0,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"16/7/2014  8:21:35\",\"duration\":13,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Attachment saved\"},{\"timestamp\":\"16/7/2014  8:21:38\",\"duration\":17,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Bvbbm\"},{\"timestamp\":\"16/7/2014  8:23:49\",\"duration\":147,\"speaker\":\"Writer : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/DEMO123/Sitting 9/Session 1','2016-08-19 10:26:59','2016-08-19 10:29:36','\0','','\0','DEMO123',1001),(121,10,1,'2016-08-19','[{\"timestamp\":\"16/7/2014  11:56:14\",\"duration\":0,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"16/7/2014  11:56:39\",\"duration\":22,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Attachment saved\"},{\"timestamp\":\"16/7/2014  11:56:55\",\"duration\":38,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Cv bvbv\"},{\"timestamp\":\"16/7/2014  11:57:7\",\"duration\":50,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/DEMO123/Sitting 10/Session 1','2016-08-19 14:01:54','2016-08-19 14:02:51','\0','','\0','DEMO123',1001),(122,16,1,'2016-08-31','[{\"timestamp\":\"27/6/2014  15:14:35\",\"duration\":0,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"27/6/2014  15:15:23\",\"duration\":45,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/SE001/Sitting 16/Session 1','2016-08-31 17:20:47','2016-08-31 17:21:39','\0','\0','\0','SE001',1001),(123,17,1,'2016-08-30',NULL,NULL,'2016-08-30 09:02:33',NULL,'\0','\0','\0','SE001',1001),(124,16,2,'2016-08-30','[{\"timestamp\":\"28/6/2014  14:43:56\",\"duration\":0,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"28/6/2014  14:44:53\",\"duration\":54,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/SE001/Sitting 16/Session 2','2016-08-30 09:05:29','2016-08-30 09:06:29','\0','\0','\0','SE001',1001),(125,16,2,'2016-08-30','[{\"timestamp\":\"28/6/2014  14:45:14\",\"duration\":0,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"28/6/2014  14:46:30\",\"duration\":73,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/SE001/Sitting 16/Session 2','2016-08-30 09:06:47','2016-08-30 09:08:06','\0','\0','\0','SE001',1001),(126,16,2,'2016-08-30','[{\"timestamp\":\"28/6/2014  14:47:13\",\"duration\":0,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"28/6/2014  14:48:56\",\"duration\":101,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/SE001/Sitting 16/Session 2','2016-08-30 09:08:44','2016-08-30 09:10:33','\0','\0','\0','SE001',1001),(127,17,1,'2016-08-30','[{\"timestamp\":\"28/6/2014  14:49:23\",\"duration\":0,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording Started\"},{\"timestamp\":\"28/6/2014  14:49:37\",\"duration\":11,\"speaker\":\"Clerk : shibi2015\",\"notes\":\"Recording stopped\"}]','Evidencer/SE001/Sitting 17/Session 1','2016-08-30 09:10:56','2016-08-30 09:11:13','\0','\0','\0','SE001',1001);
/*!40000 ALTER TABLE `caseeventdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caseinfo`
--

DROP TABLE IF EXISTS `caseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caseinfo` (
  `CASENO` varchar(255) COLLATE utf8_bin NOT NULL,
  `CASETITLE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CASEDESCRIPTION` longtext COLLATE utf8_bin,
  `CASETYPEID` int(11) DEFAULT NULL,
  `CASESTATUSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CASENO`),
  KEY `FK2FF4B7DE7AD90E94` (`CASETYPEID`),
  KEY `FK2FF4B7DE9DADF4C4` (`CASESTATUSID`),
  CONSTRAINT `FK2FF4B7DE7AD90E94` FOREIGN KEY (`CASETYPEID`) REFERENCES `casetype` (`CASETYPEID`),
  CONSTRAINT `FK2FF4B7DE9DADF4C4` FOREIGN KEY (`CASESTATUSID`) REFERENCES `casestatus` (`CASESTATUSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caseinfo`
--

LOCK TABLES `caseinfo` WRITE;
/*!40000 ALTER TABLE `caseinfo` DISABLE KEYS */;
INSERT INTO `caseinfo` VALUES ('106','Fight','fight between two teams',3,2),('111111','tyutyuytu','ruytu',2,2),('49282','desgrtg','ada',1,2),('756754','Jhggj','Vugv',2,2),('AQ','erwwe','werwer',2,2),('AQ1','dfdfds','dfdsfdsf',1,2),('AQ123','Hgv','Gvgcf',3,2),('AQ2','gdf','fdfdfd',1,2),('AS123','Bvcgf','Recesses huhgug',2,2),('ASD123','CgfHi','Thgg',1,2),('CASE01','Fight','fight between two teams',3,2),('CASE07','Boa vs Python','Fight between Boa and Python',2,2),('CASE09','Boa vs Python','Fight between two teams',2,2),('CASE1','GHDFH','SDFDFG',1,2),('CASE10','Boa vs Python','Fight between two teams',2,2),('CASE100','Boa vs Python','Fight between two teams',2,2),('CASE103','Fight','fight between two teams',2,2),('CASE104','Fight','two team fight',2,2),('CASE107','Fight','fight between two teams',2,2),('CASE12','nmvbd','hgjhsgjhgsdfg',4,2),('CASE123','criminal','criminal offence between two teams',2,2),('CASE14','Fight','fight between two teams',2,2),('CASE200','Fight','Fight between two teams',2,2),('CASE2020','case123','Fight between phython',1,2),('CASE300','fgrgt','Abcsyhudf',3,2),('CASE456','case123','case between two parties',1,2),('CASE500','Fight','fight between two teams',2,2),('CASE501','Boa Vs Python','fight between two team',2,2),('CASE524','Fight','fight between two teams',3,2),('CASE599','Boa Vs Python','Fight between two teams',2,2),('CASE600','Boa Vs Pyton','Fight between two teams',2,2),('CASE601','qwert','test123',1,2),('CASE789','rr','aaaa',2,2),('CASETEMP','title','tempo dec',1,2),('CR123','fsf','ggvg',1,2),('CR35164','Jhvjv','jhh',2,2),('DEM123','yfyf','yfyf',3,2),('DEMO123','123Case','case desc demo',2,2),('DEMO2014','dd','fiik',1,2),('DEMO2015','Hjfj','Hgff',2,2),('DEMO4','demo4','Test from iPad',4,2),('DEMO7894','ww','ss',2,2),('HH123','VBVCB','XCGFDGFDG',2,2),('SE001',' Jh','Hm. Jhg',3,2),('SENSIT123','Corner Shop','Robbery Trial',2,2),('SHINZ','fasfas','sfasfs',2,2),('SNR01','PythonBoa','Man found with gun. Shoot out at public place',2,2),('SRN01','PythonBoa','Man found with a gun. Shoot out at Public Place.',2,2),('TEST','erher','therh',3,2),('case1010','Evidencer','The Digital Truth',2,2),('case102','Fight','fight between two teams',2,2),('case105','Fight','fight between 2 teams',2,2);
/*!40000 ALTER TABLE `caseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casestatus`
--

DROP TABLE IF EXISTS `casestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casestatus` (
  `CASESTATUSID` int(11) NOT NULL AUTO_INCREMENT,
  `STATUS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STATUSDESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`CASESTATUSID`),
  UNIQUE KEY `STATUS` (`STATUS`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casestatus`
--

LOCK TABLES `casestatus` WRITE;
/*!40000 ALTER TABLE `casestatus` DISABLE KEYS */;
INSERT INTO `casestatus` VALUES (1,'Closed','Case Over'),(2,'Active','Existing Cases'),(3,'Reopen','Reopen Cases'),(4,'Otherz','Other Cases');
/*!40000 ALTER TABLE `casestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casetype`
--

DROP TABLE IF EXISTS `casetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casetype` (
  `CASETYPEID` int(11) NOT NULL AUTO_INCREMENT,
  `CASETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPEDESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`CASETYPEID`),
  UNIQUE KEY `CASETYPE` (`CASETYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casetype`
--

LOCK TABLES `casetype` WRITE;
/*!40000 ALTER TABLE `casetype` DISABLE KEYS */;
INSERT INTO `casetype` VALUES (1,'Civil','Civil Cases'),(2,'Criminal','Criminal Cases'),(3,'Family','Family Cases'),(4,'Others','Other Cases'),(5,'Probate','Probate Cases'),(6,'Divorce','Divorce Cases');
/*!40000 ALTER TABLE `casetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `court`
--

DROP TABLE IF EXISTS `court`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `court` (
  `COURTID` int(11) NOT NULL AUTO_INCREMENT,
  `COURTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `COURTDETAILS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCATIONID` int(11) DEFAULT NULL,
  PRIMARY KEY (`COURTID`),
  KEY `FK3D5596B4AA8CE4A` (`LOCATIONID`),
  CONSTRAINT `FK3D5596B4AA8CE4A` FOREIGN KEY (`LOCATIONID`) REFERENCES `location` (`LOCATIONID`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `court`
--

LOCK TABLES `court` WRITE;
/*!40000 ALTER TABLE `court` DISABLE KEYS */;
INSERT INTO `court` VALUES (1001,'SC','Supreme Court',1001),(1002,'SenzIT','SenzIT Court',1002),(1003,'HC','HIGH COURT',1001),(1004,'LC','LOWER COURT',1001);
/*!40000 ALTER TABLE `court` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landepath`
--

DROP TABLE IF EXISTS `landepath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landepath` (
  `USERNAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `LEPATH` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`USERNAME`),
  KEY `FKFA9EA2DF687B5A26` (`USERNAME`),
  CONSTRAINT `FKFA9EA2DF687B5A26` FOREIGN KEY (`USERNAME`) REFERENCES `user` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landepath`
--

LOCK TABLES `landepath` WRITE;
/*!40000 ALTER TABLE `landepath` DISABLE KEYS */;
INSERT INTO `landepath` VALUES ('please00','/home/rebbon/Documents/apache-tomcat-7.0.54/webapps/LnE'),('senzit123','F:\\apache-tomcat-7.0.34\\webapps'),('shintvpm','/home/rebbon/Documents/apache-tomcat-7.0.54/webapps/LnE');
/*!40000 ALTER TABLE `landepath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `LOCATIONID` int(11) NOT NULL AUTO_INCREMENT,
  `LOCATIONNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCATIONDESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`LOCATIONID`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1001,'India','This is India'),(1002,'Technopark','Trivandrum Technopark'),(1003,'hgkghkghk','ghkghkghkgh');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobcase`
--

DROP TABLE IF EXISTS `mobcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobcase` (
  `MOBCASEID` int(11) NOT NULL AUTO_INCREMENT,
  `CASENO` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RANDOMCODE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`MOBCASEID`),
  KEY `FK73D02E102D2F53F4` (`CASENO`),
  KEY `FK73D02E10E175A815` (`RANDOMCODE`),
  CONSTRAINT `FK73D02E102D2F53F4` FOREIGN KEY (`CASENO`) REFERENCES `caseinfo` (`CASENO`),
  CONSTRAINT `FK73D02E10E175A815` FOREIGN KEY (`RANDOMCODE`) REFERENCES `mobdata` (`RANDOMCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobcase`
--

LOCK TABLES `mobcase` WRITE;
/*!40000 ALTER TABLE `mobcase` DISABLE KEYS */;
/*!40000 ALTER TABLE `mobcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobdata`
--

DROP TABLE IF EXISTS `mobdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobdata` (
  `RANDOMCODE` varchar(255) COLLATE utf8_bin NOT NULL,
  `FILETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DETAIL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATEDON` datetime DEFAULT NULL,
  `CREATEDBY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STATUS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LATITUDE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `LONGITUDE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`RANDOMCODE`),
  KEY `FK73D0A28A2EA46885` (`CREATEDBY`),
  CONSTRAINT `FK73D0A28A2EA46885` FOREIGN KEY (`CREATEDBY`) REFERENCES `mobuser` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobdata`
--

LOCK TABLES `mobdata` WRITE;
/*!40000 ALTER TABLE `mobdata` DISABLE KEYS */;
INSERT INTO `mobdata` VALUES ('11064','video','Dxxx','Hijsbsn','2016-08-19 10:26:16','shibi@senzit.net','New','13.71919496277217','100.5137404018461'),('11948','image','Fight','two team fight','2015-11-23 17:22:11','shibi@senzit.net','Registered','8.556727132660203','76.88076251753391'),('20635','image','Fight','fight between two teams','2015-11-24 15:22:25','shibi@senzit.net','Registered','8.556821282840273','76.88076201392393'),('20937','image','Fight','fight between two teams','2015-11-24 16:18:44','shibi@senzit.net','Registered','8.556676244761418','76.88077206022759'),('20975','image','Hgg','Vbvg','2016-08-11 14:26:01','shibi@senzit.net','Read','8.556910320929466','76.8807801233135'),('21769','image','Fight','fight between two teams','2015-11-24 10:27:45','shibi@senzit.net','Registered','8.556908548120969','76.88054151904616'),('31398','image','Fight','Fight between two teams','2015-11-24 14:43:33','shibi@senzit.net','Registered','8.556818831796758','76.88065663064928'),('31634','image','Dispute','battle between two teams','2015-11-24 17:50:52','shibi@senzit.net','New','8.556729836773917','76.88091623631368'),('35164','video','Jhvjv','jhh','2015-11-11 15:05:14','shibi@senzit.net','Read','8.556786047989682','76.88071101495682'),('36436','image','Fight','fight between two teams','2015-11-23 15:54:53','shibi@senzit.net','Registered','8.556662104118198','76.88074070945906'),('36930','video','Case roberry','Try it ','2016-08-19 10:18:39','shibi@senzit.net','New','13.71926263188732','100.5138226293648'),('38652','image','details','description between two teams','2015-11-24 17:49:49','shibi@senzit.net','New','8.556782235063126','76.88083344943476'),('40386','image','Vbgg','Gggg','2016-08-16 20:41:04','shibi@senzit.net','Read','25.16075577111399','55.23019897804127'),('42780','image','Server','Evidence','2016-08-17 19:05:39','shibi@senzit.net','Read','25.16085085924314','55.23007995929922'),('43590','image','Evidencer','The Digital Truth','2015-11-23 15:50:18','shibi@senzit.net','Registered','8.556865375660948','76.88070718694179'),('45569','image','Czech','fgughc','2015-11-24 14:59:13','shibi@senzit.net','Read','8.556674023258113','76.88087810982489'),('46827','image','Fight','fight between two teams','2015-11-24 10:03:38','shibi@senzit.net','Registered','8.556797931023276','76.88070782521272'),('50077','image','Fight','fight between 2 teams','2015-11-24 09:41:39','shibi@senzit.net','Registered','8.556683129560627','76.88073564546173'),('51859','image','case details','Case between two teams','2015-11-24 17:48:29','shibi@senzit.net','New','8.55690946442687','76.88054358235354'),('52403','image','Ugh','tcrc tctc','2015-10-19 15:14:29','shibi@senzit.net','Read','8.556862692098392','76.88069757852951'),('54442','video','Corruption ','Ministry ','2016-08-19 10:20:38','shibi@senzit.net','New','13.7192671180492','100.5133747826153'),('55408','video','Hgugg','cgjg jgc','2015-11-11 15:03:57','shibi@senzit.net','Read','8.556705581569542','76.8807942240269'),('56217','image','Fight','fight between two teams','2015-11-24 15:04:05','shibi@senzit.net','Read','8.556738969001673','76.88081463950854'),('57991','video','123','Car ','2016-08-18 18:40:08','shibi@senzit.net','Read','13.72175551952209','100.5143414811236'),('61572','image','Fight','fight between two teams','2015-11-23 17:10:40','shibi@senzit.net','Registered','8.556865257422942','76.88069151423989'),('61831','image','Fight','fight between two teams\n','2015-11-24 17:25:20','shibi@senzit.net','Registered','8.556743200866842','76.88072266407828'),('62149','image','Fight','fight between two teams','2015-11-24 15:31:44','shibi@senzit.net','Registered','8.556865255456458','76.88069151728425'),('67829','image','Details ','description between two teams','2015-11-24 17:51:55','shibi@senzit.net','New','8.55677328181461','76.88085285344044'),('67904','video','Se001','Video','2016-08-18 18:38:29','shibi@senzit.net','Read','13.72257095297214','100.5141035188926'),('68514','image','Hhhhh','Gggsh','2016-08-16 18:59:35','shibi@senzit.net','Read','25.160804725825','55.23017632934773'),('68908','image','Hjfj','Hgff','2015-10-19 12:23:36','shibi@senzit.net','Registered','8.556712891755772','76.88070457877058'),('75013','image','Fuji','dgfjgbc','2015-11-24 14:56:22','shibi@senzit.net','Read','8.556669615087085','76.88073894804492'),('79762','image','CgfHi','Thgg','2016-08-11 15:37:59','shibi@senzit.net','Registered','8.556795212978761','76.88065377714128'),('86926','image','Selfie','Selfie','2016-08-11 15:34:44','shibi@senzit.net','Read','8.556746443591157','76.88074733212915'),('88118','image','Evidencer','the digital truth','2015-11-23 15:41:59','shibi@senzit.net','Registered','8.556865375660948','76.88070718694179'),('96741','image','Dispute','dispute between two teams','2015-11-24 17:53:10','shibi@senzit.net','New','8.55678016035314','76.88082769002756'),('97285','image','Fight','fight between two teams','2015-11-24 14:51:15','shibi@senzit.net','Read','8.556774657012765','76.88085071394326');
/*!40000 ALTER TABLE `mobdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobfile`
--

DROP TABLE IF EXISTS `mobfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobfile` (
  `FILEID` int(11) NOT NULL AUTO_INCREMENT,
  `FILENAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `randomCode` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FILEID`),
  KEY `FK73D1A85C11DD7455` (`randomCode`),
  CONSTRAINT `FK73D1A85C11DD7455` FOREIGN KEY (`randomCode`) REFERENCES `mobdata` (`RANDOMCODE`)
) ENGINE=InnoDB AUTO_INCREMENT=849 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobfile`
--

LOCK TABLES `mobfile` WRITE;
/*!40000 ALTER TABLE `mobfile` DISABLE KEYS */;
INSERT INTO `mobfile` VALUES (812,'0cdv_photo_002.jpg','68908'),(813,'0cdv_photo_006.jpg','52403'),(814,'0IMG_0026.MOV','55408'),(815,'0capturedvideo.MOV','35164'),(816,'0cdv_photo_001.jpg','88118'),(817,'0cdv_photo_002.jpg','43590'),(818,'0cdv_photo_003.jpg','36436'),(819,'0cdv_photo_005.jpg','61572'),(820,'0cdv_photo_006.jpg','11948'),(821,'0cdv_photo_007.jpg','50077'),(822,'0cdv_photo_008.jpg','46827'),(823,'0cdv_photo_009.jpg','21769'),(824,'0cdv_photo_010.jpg','31398'),(825,'0cdv_photo_011.jpg','97285'),(826,'0cdv_photo_012.jpg','75013'),(827,'0cdv_photo_013.jpg','45569'),(828,'0cdv_photo_014.jpg','56217'),(829,'0cdv_photo_015.jpg','20635'),(830,'0cdv_photo_016.jpg','62149'),(831,'0cdv_photo_017.jpg','20937'),(832,'0cdv_photo_018.jpg','61831'),(833,'0cdv_photo_019.jpg','51859'),(834,'0cdv_photo_020.jpg','38652'),(835,'0cdv_photo_021.jpg','31634'),(836,'0cdv_photo_022.jpg','67829'),(837,'0cdv_photo_023.jpg','96741'),(838,'0cdv_photo_001.jpg','20975'),(839,'0cdv_photo_001.jpg','86926'),(840,'0cdv_photo_002.jpg','79762'),(841,'0cdv_photo_001.jpg','68514'),(842,'0cdv_photo_001.jpg','40386'),(843,'0cdv_photo_001.jpg','42780'),(844,'0capturedvideo.MOV','67904'),(845,'0capturedvideo.MOV','57991'),(846,'0capturedvideo.MOV','36930'),(847,'0capturedvideo.MOV','54442'),(848,'0capturedvideo.MOV','11064');
/*!40000 ALTER TABLE `mobfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobuser`
--

DROP TABLE IF EXISTS `mobuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobuser` (
  `EMAIL` varchar(255) COLLATE utf8_bin NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobuser`
--

LOCK TABLES `mobuser` WRITE;
/*!40000 ALTER TABLE `mobuser` DISABLE KEYS */;
INSERT INTO `mobuser` VALUES ('deepak.senzit@gmail.com','1234'),('deepak@gmail.com','deepak123'),('shibi@senzit.net','senzit15'),('titto.a@senzit.net','senzit2015'),('tittoalex@gmail.com','titto123'),('tittoalex@live.com','senzit123'),('اسم المستخدم','كلمة السر'),('रामू','रामू');
/*!40000 ALTER TABLE `mobuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant` (
  `PARTICIPANTID` int(11) NOT NULL AUTO_INCREMENT,
  `PARTICIPANTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARTICIPANTCATEGORY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CASEEVENTDETAILID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PARTICIPANTID`),
  KEY `FKAE118313FAC1902C` (`CASEEVENTDETAILID`),
  CONSTRAINT `FKAE118313FAC1902C` FOREIGN KEY (`CASEEVENTDETAILID`) REFERENCES `caseeventdetail` (`CASEEVENTDETAILID`)
) ENGINE=InnoDB AUTO_INCREMENT=509 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
INSERT INTO `participant` VALUES (1,'p1,p2,p3','judge',1),(2,'l1,l2,l3','lawyer',1),(3,'pp1,pp2,pp3','participant',1),(4,'o1,o2,o3','other',1),(5,'','judge',2),(6,'','lawyer',2),(7,'','participant',2),(8,'','other',2),(9,'Michel,John,Manny','judge',3),(10,'Carl,Tom','lawyer',3),(11,'','participant',3),(12,'','other',3),(13,'Michel,Tom,Carl','judge',4),(14,'Kat,Manny','lawyer',4),(15,'','participant',4),(16,'','other',4),(17,'','judge',5),(18,'','lawyer',5),(19,'','participant',5),(20,'','other',5),(21,'','judge',6),(22,'','lawyer',6),(23,'','participant',6),(24,'','other',6),(25,'Tom,Michel,Kat','judge',7),(26,'Manny,Rachel','lawyer',7),(27,'','participant',7),(28,'','other',7),(29,'','judge',8),(30,'','lawyer',8),(31,'','participant',8),(32,'','other',8),(33,'','judge',9),(34,'','lawyer',9),(35,'','participant',9),(36,'','other',9),(37,'','judge',10),(38,'','lawyer',10),(39,'','participant',10),(40,'','other',10),(41,'Kat,Manny,Maichel','judge',11),(42,'Tom,Evan','lawyer',11),(43,'','participant',11),(44,'','other',11),(45,'','judge',12),(46,'','lawyer',12),(47,'','participant',12),(48,'','other',12),(49,'j1,j2,j3','judge',13),(50,'L1,L2,L3','lawyer',13),(51,'P1,P2,P3','participant',13),(52,'O1,O2,O3','other',13),(53,'','judge',14),(54,'','lawyer',14),(55,'','participant',14),(56,'','other',14),(57,'','judge',15),(58,'','lawyer',15),(59,'','participant',15),(60,'','other',15),(61,'','judge',16),(62,'','lawyer',16),(63,'','participant',16),(64,'','other',16),(65,'Kat,Tom,Michel','judge',17),(66,'Rachel,Catherine','lawyer',17),(67,'','participant',17),(68,'','other',17),(69,'Kat,Tom,Rachel','judge',18),(70,'Michel,Van','lawyer',18),(71,'','participant',18),(72,'','other',18),(73,'','judge',19),(74,'','lawyer',19),(75,'','participant',19),(76,'','other',19),(77,'11,22,33','judge',20),(78,'gfh,hgj,fhg','lawyer',20),(79,'gjghj,klkl,adad','participant',20),(80,'wrwre,dggfg,ggjgj','other',20),(81,'','judge',21),(82,'','lawyer',21),(83,'','participant',21),(84,'','other',21),(85,'','judge',22),(86,'','lawyer',22),(87,'','participant',22),(88,'','other',22),(89,'','judge',23),(90,'','lawyer',23),(91,'','participant',23),(92,'','other',23),(93,'george,john,james','judge',24),(94,'arihant','lawyer',24),(95,'sam','participant',24),(96,'rachel','other',24),(97,'','judge',25),(98,'','lawyer',25),(99,'','participant',25),(100,'','other',25),(101,'','judge',26),(102,'','lawyer',26),(103,'','participant',26),(104,'','other',26),(105,'','judge',27),(106,'','lawyer',27),(107,'','participant',27),(108,'','other',27),(109,'john,james,george','judge',28),(110,'arihant','lawyer',28),(111,'hima','participant',28),(112,'rachel','other',28),(113,'','judge',29),(114,'','lawyer',29),(115,'','participant',29),(116,'','other',29),(117,'tyy,rty,rtyu,tyrty','judge',30),(118,'','lawyer',30),(119,'','participant',30),(120,'','other',30),(121,'Michael,Simon','judge',31),(122,'Sami,Maria','lawyer',31),(123,'John,Glenn','participant',31),(124,'Racheal','other',31),(125,'Michael,Simon','judge',32),(126,'Sami,Maria','lawyer',32),(127,'John,Glenn','participant',32),(128,'Racheal','other',32),(129,'Michael,Simon','judge',33),(130,'Sami','lawyer',33),(131,'John','participant',33),(132,'rachel','other',33),(133,'Michael','judge',34),(134,'Sami','lawyer',34),(135,'John','participant',34),(136,'Glenn','other',34),(137,'','judge',35),(138,'','lawyer',35),(139,'','participant',35),(140,'','other',35),(141,'Michael,John,Simon','judge',36),(142,'James,Arihant,Govind','lawyer',36),(143,'Ahmed,Glenn,Titto','participant',36),(144,'Vishak,Rachel,Varum','other',36),(145,'Micheal,john,james','judge',37),(146,'varun,vaishak,tilak','lawyer',37),(147,'albert,rachel,hima','participant',37),(148,'glenn,reni,hema','other',37),(149,'John,james,albert','judge',38),(150,'rachel,albertstin,varun','lawyer',38),(151,'hima,hema,glenn','participant',38),(152,'vaishak,renin,jeni','other',38),(153,'John,James,Albert','judge',39),(154,'Renin,Vishak,Ram','lawyer',39),(155,'Vena,Hima,Maheen','participant',39),(156,'Glenn,Merin,Thomas','other',39),(157,'John,George,Jack','judge',40),(158,'veena,Varun,Vimal','lawyer',40),(159,'RAM,EMAN,VIREN','participant',40),(160,'JACKSOM,VIRU,INDU','other',40),(161,'dgv,gjhj,kkk','judge',41),(162,'rr,ttt,yy','lawyer',41),(163,'ww,qq,rr','participant',41),(164,'aa,ss,ff','other',41),(165,'Michael,James,John','judge',42),(166,'Muhammed,Abdu,Razzaq','lawyer',42),(167,'Mathew,Luke,Mark','participant',42),(168,'Dharshi,Ajini,Shin','other',42),(169,'john,james,aravind','judge',43),(170,'aeru,lohit,raman','lawyer',43),(171,'hima,vani,veena','participant',43),(172,'cinu,glenn,simon','other',43),(173,'Micheal,Renin,James','judge',44),(174,'Arun,Varun,Manu','lawyer',44),(175,'Ram,Vivek,Vaishak','participant',44),(176,'VAMILA,GLENN,SHIN','other',44),(177,'','judge',45),(178,'','lawyer',45),(179,'','participant',45),(180,'','other',45),(181,'','judge',46),(182,'','lawyer',46),(183,'','participant',46),(184,'','other',46),(185,'','judge',47),(186,'','lawyer',47),(187,'','participant',47),(188,'','other',47),(189,'','judge',48),(190,'','lawyer',48),(191,'','participant',48),(192,'','other',48),(193,'','judge',49),(194,'','lawyer',49),(195,'','participant',49),(196,'','other',49),(197,'','judge',50),(198,'','lawyer',50),(199,'','participant',50),(200,'','other',50),(201,'','judge',51),(202,'','lawyer',51),(203,'','participant',51),(204,'','other',51),(205,'','judge',52),(206,'','lawyer',52),(207,'','participant',52),(208,'','other',52),(209,'','judge',53),(210,'','lawyer',53),(211,'','participant',53),(212,'','other',53),(213,'AA,BB','judge',54),(214,'EE,R','lawyer',54),(215,'RR,NN','participant',54),(216,'','other',54),(217,'John,James,George','judge',55),(218,'Arun,Hima,Hema','lawyer',55),(219,'Varun,Vaishak,Rema','participant',55),(220,'GAYATHRI,Glenn,hemanth','other',55),(221,'','judge',56),(222,'','lawyer',56),(223,'','participant',56),(224,'','other',56),(225,'','judge',57),(226,'','lawyer',57),(227,'','participant',57),(228,'','other',57),(229,'John,James,Glenn','judge',58),(230,'Varun,Mohan,Tarun','lawyer',58),(231,'Ejas,Abdu,Rasali','participant',58),(232,'Hima,Mahwen,Ram','other',58),(233,'','judge',59),(234,'','lawyer',59),(235,'','participant',59),(236,'','other',59),(237,'AA','judge',60),(238,'A','lawyer',60),(239,'A','participant',60),(240,'A','other',60),(241,'JOHN,JAMES,ARUN','judge',61),(242,'ABUDU,VIKRAM,VINU','lawyer',61),(243,'ALLU,VENA,VANI','participant',61),(244,'VIKTRA,MITRA,DARY','other',61),(245,'john,james,arun','judge',62),(246,'ram,vikram,varun','lawyer',62),(247,'aruna,william,reman','participant',62),(248,'glenn,resmi,athira','other',62),(249,'a','judge',63),(250,'a','lawyer',63),(251,'a','participant',63),(252,'a','other',63),(253,'Ram,Arun,Varun','judge',64),(254,'Vaishak,Viren,RAMAN','lawyer',64),(255,'Lilly,kesav,Appu','participant',64),(256,'Glenn,Ram,Vivek','other',64),(257,'R','judge',65),(258,'T','lawyer',65),(259,'T','participant',65),(260,'U','other',65),(261,'J1,j2,j3','judge',66),(262,'L1,L2','lawyer',66),(263,'','participant',66),(264,'','other',66),(265,'','judge',67),(266,'','lawyer',67),(267,'','participant',67),(268,'','other',67),(269,'P1','judge',68),(270,'L1','lawyer',68),(271,'PP1','participant',68),(272,'O1','other',68),(273,'P1,P2,P3','judge',69),(274,'L1,L2,L3','lawyer',69),(275,'PP1,PP2,PP3','participant',69),(276,'O1,O2,O3','other',69),(277,'John,James,Arun','judge',70),(278,'Varun,Ammu,Anin','lawyer',70),(279,'Pkjhj,jkhkj,jhjkh','participant',70),(280,'kjjh,kjhjhjkjh,jkh','other',70),(281,'sssss','judge',71),(282,'ssad','lawyer',71),(283,'dsdsd','participant',71),(284,'sdsd','other',71),(285,'','judge',72),(286,'','lawyer',72),(287,'','participant',72),(288,'','other',72),(289,'','judge',73),(290,'','lawyer',73),(291,'','participant',73),(292,'','other',73),(293,'','judge',74),(294,'','lawyer',74),(295,'','participant',74),(296,'','other',74),(297,'','judge',75),(298,'','lawyer',75),(299,'','participant',75),(300,'','other',75),(301,'','judge',76),(302,'','lawyer',76),(303,'','participant',76),(304,'','other',76),(305,'','judge',77),(306,'','lawyer',77),(307,'','participant',77),(308,'','other',77),(309,'','judge',78),(310,'','lawyer',78),(311,'','participant',78),(312,'','other',78),(313,'','judge',79),(314,'','lawyer',79),(315,'','participant',79),(316,'','other',79),(317,'','judge',80),(318,'','lawyer',80),(319,'','participant',80),(320,'','other',80),(321,'dfd,fdf,dsfdsf','judge',81),(322,'','lawyer',81),(323,'','participant',81),(324,'','other',81),(325,'aq,as,ad','judge',82),(326,'','lawyer',82),(327,'','participant',82),(328,'','other',82),(329,'rwe,rwer,erwerew','judge',83),(330,'ewrw,erwerwe,werwer','lawyer',83),(331,'ewer,werw,rewr','participant',83),(332,'rwr,r,ewrw','other',83),(333,'ewrwe,werwer,ewerer','judge',84),(334,'ewrw,werwer','lawyer',84),(335,'erew,werwer,ewrwewr','participant',84),(336,'ewrwer,werew,ewrr','other',84),(337,'sdewr,ewrweer,werwer','judge',85),(338,'sada,wer,erewr','lawyer',85),(339,'sdsd,reww,rwerwer','participant',85),(340,'sdsd,asew,werwe','other',85),(341,'Vhhjjhgvj,Gjhhvjhvju,Ghfhgf','judge',86),(342,'Huvhgfhgf','lawyer',86),(343,'','participant',86),(344,'','other',86),(345,'wewe,qee,qeqe','judge',87),(346,'eqe,qe,qeeq','lawyer',87),(347,'eq,qee,eq','participant',87),(348,'','other',87),(349,'Ygyy,Hv,Hub','judge',88),(350,'','lawyer',88),(351,'','participant',88),(352,'','other',88),(353,'','judge',89),(354,'','lawyer',89),(355,'','participant',89),(356,'','other',89),(357,'J,Jgjhg,Hfghtdfy','judge',90),(358,'','lawyer',90),(359,'','participant',90),(360,'','other',90),(361,'Hjhgjgv,Gjhbjh,Gfchgchg','judge',91),(362,'','lawyer',91),(363,'','participant',91),(364,'','other',91),(365,'wqeqwe,wqeqwe,qwee','judge',92),(366,'qwe,wq,weqwe','lawyer',92),(367,'wqeqwe,ewq,qewqwee','participant',92),(368,'eqwe,qwe,qwe','other',92),(369,'','judge',93),(370,'','lawyer',93),(371,'','participant',93),(372,'','other',93),(373,'','judge',94),(374,'','lawyer',94),(375,'','participant',94),(376,'','other',94),(377,'','judge',95),(378,'','lawyer',95),(379,'','participant',95),(380,'','other',95),(381,'','judge',96),(382,'','lawyer',96),(383,'','participant',96),(384,'','other',96),(385,'','judge',97),(386,'','lawyer',97),(387,'','participant',97),(388,'','other',97),(389,'','judge',98),(390,'','lawyer',98),(391,'','participant',98),(392,'','other',98),(393,'','judge',99),(394,'','lawyer',99),(395,'','participant',99),(396,'','other',99),(397,'j1,j2,j3','judge',100),(398,'l1,l1','lawyer',100),(399,'hh,fhf','participant',100),(400,'','other',100),(401,'','judge',101),(402,'','lawyer',101),(403,'','participant',101),(404,'','other',101),(405,'','judge',102),(406,'','lawyer',102),(407,'','participant',102),(408,'','other',102),(409,'Cigg,hbh,bvgh','judge',103),(410,'Vggv,hghh','lawyer',103),(411,'','participant',103),(412,'','other',103),(413,'','judge',104),(414,'','lawyer',104),(415,'','participant',104),(416,'','other',104),(417,'','judge',105),(418,'','lawyer',105),(419,'','participant',105),(420,'','other',105),(421,'','judge',106),(422,'','lawyer',106),(423,'','participant',106),(424,'','other',106),(425,'','judge',107),(426,'','lawyer',107),(427,'','participant',107),(428,'','other',107),(429,'','judge',108),(430,'','lawyer',108),(431,'','participant',108),(432,'','other',108),(433,'j1,j2 ,j3','judge',109),(434,'l1,l2','lawyer',109),(435,'','participant',109),(436,'','other',109),(437,'','judge',110),(438,'','lawyer',110),(439,'','participant',110),(440,'','other',110),(441,'','judge',111),(442,'','lawyer',111),(443,'','participant',111),(444,'','other',111),(445,'','judge',112),(446,'','lawyer',112),(447,'','participant',112),(448,'','other',112),(449,'','judge',113),(450,'','lawyer',113),(451,'','participant',113),(452,'','other',113),(453,'','judge',114),(454,'','lawyer',114),(455,'','participant',114),(456,'','other',114),(457,'','judge',115),(458,'','lawyer',115),(459,'','participant',115),(460,'','other',115),(461,'','judge',116),(462,'','lawyer',116),(463,'','participant',116),(464,'','other',116),(465,'','judge',117),(466,'','lawyer',117),(467,'','participant',117),(468,'','other',117),(469,'','judge',118),(470,'','lawyer',118),(471,'','participant',118),(472,'','other',118),(473,'','judge',119),(474,'','lawyer',119),(475,'','participant',119),(476,'','other',119),(477,'','judge',120),(478,'','lawyer',120),(479,'','participant',120),(480,'','other',120),(481,'','judge',121),(482,'','lawyer',121),(483,'','participant',121),(484,'','other',121),(485,'','judge',122),(486,'','lawyer',122),(487,'','participant',122),(488,'','other',122),(489,'','judge',123),(490,'','lawyer',123),(491,'','participant',123),(492,'','other',123),(493,'','judge',124),(494,'','lawyer',124),(495,'','participant',124),(496,'','other',124),(497,'','judge',125),(498,'','lawyer',125),(499,'','participant',125),(500,'','other',125),(501,'','judge',126),(502,'','lawyer',126),(503,'','participant',126),(504,'','other',126),(505,'','judge',127),(506,'','lawyer',127),(507,'','participant',127),(508,'','other',127);
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privatenote`
--

DROP TABLE IF EXISTS `privatenote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privatenote` (
  `PRIVATENOTEID` int(11) NOT NULL AUTO_INCREMENT,
  `PRIVATENOTES` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATEDON` datetime DEFAULT NULL,
  `CREATEDBY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CASEEVENTDETAILID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PRIVATENOTEID`),
  KEY `FKF5E3EFD5FAC1902C` (`CASEEVENTDETAILID`),
  KEY `FKF5E3EFD59BFC428F` (`CREATEDBY`),
  CONSTRAINT `FKF5E3EFD59BFC428F` FOREIGN KEY (`CREATEDBY`) REFERENCES `user` (`USERNAME`),
  CONSTRAINT `FKF5E3EFD5FAC1902C` FOREIGN KEY (`CASEEVENTDETAILID`) REFERENCES `caseeventdetail` (`CASEEVENTDETAILID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privatenote`
--

LOCK TABLES `privatenote` WRITE;
/*!40000 ALTER TABLE `privatenote` DISABLE KEYS */;
INSERT INTO `privatenote` VALUES (1,'Boa was not presented','2015-11-02 09:52:35','senzit123',7),(2,'case resumed after break','2015-11-20 12:25:14','senzit123',18),(3,'Test application','2015-11-23 12:10:19','senzit123',20),(4,'case2020 finalize','2015-11-23 12:33:09','senzit123',21),(5,'case1008','2015-11-23 12:48:36','senzit123',24),(6,'Objection sustained','2015-11-23 14:07:33','senzit123',31),(7,'Objection sustaines','2015-11-23 14:13:24','senzit123',32),(8,'objection sustained','2015-11-23 14:19:44','senzit123',33),(9,'refusal of existing ','2015-11-23 14:45:16','senzit123',34),(10,'refusal strategies','2015-11-23 15:23:38','senzit123',36),(11,'objection between two','2015-11-23 15:59:22','senzit123',38),(12,'fight between two teams','2015-11-23 17:28:04','senzit123',40),(13,'Refusal ','2015-11-24 09:44:57','senzit123',42),(14,'refusal parties','2015-11-24 10:32:59','senzit123',44),(15,'refusal','2015-11-24 14:20:22','senzit123',58),(16,'refusal come','2015-11-24 15:27:28','senzit123',61),(17,'refusal sustains','2015-11-24 15:39:24','senzit123',62),(18,'objection sustains','2015-11-24 15:56:20','senzit123',64),(19,'adcdef','2015-11-24 17:22:23','senzit123',68),(20,'hi this is case ','2015-11-24 17:27:26','senzit123',69),(21,'uygt ytft h76t6','2016-08-11 12:51:29','senzit123',82),(22,'need for investigation','2016-08-11 12:52:21','senzit123',82),(23,'need to re investigate','2016-08-11 12:52:54','senzit123',82),(24,'ewrwer','2016-08-11 13:10:58','senzit123',85),(25,'vughv','2016-08-11 14:28:18','senzit123',86),(26,'ret','2016-08-11 15:10:33','senzit123',87),(27,'bbv','2016-08-11 15:11:07','senzit123',87),(28,'ghgh','2016-08-11 15:11:33','senzit123',87),(29,'fffgfg','2016-08-11 15:11:55','senzit123',87),(30,'ffff','2016-08-11 15:12:17','senzit123',87),(31,'shin','2016-08-11 15:27:57','senzit123',90),(32,'fish','2016-08-11 15:34:41','senzit123',91),(33,'ae','2016-08-11 15:39:06','senzit123',92),(34,'secret note','2016-08-17 12:44:13','senzit123',100),(35,'hgfjjcy','2016-08-17 13:50:51','senzit123',103),(36,'test p note','2016-08-17 18:56:30','senzit123',109);
/*!40000 ALTER TABLE `privatenote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilege` (
  `PRIVILEGEID` int(11) NOT NULL AUTO_INCREMENT,
  `PRIVILEGE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`PRIVILEGEID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege`
--

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
INSERT INTO `privilege` VALUES (1,'EviRecorder'),(2,'EviPlayer'),(3,'EviLogNotes'),(4,'EviAnalytics'),(5,'EviTranslator'),(6,'EviBroadcast'),(7,'EviSecure'),(8,'Cloud Services'),(9,'EviEdit'),(10,'PrivateNote'),(11,'ghkghkghkgh'),(12,'dfhdfh'),(13,'fgjfgj'),(14,'rrr'),(15,'MYTest1');
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `ROLEID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLENAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ROLEDESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ROLEID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'VOD','Player Privilege'),(2,'admin','Full Privilege'),(3,'Clerk','Full Privilege'),(4,'Judge','Judge Privilege'),(5,'Remote User','Access via HTTP');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securityquestion`
--

DROP TABLE IF EXISTS `securityquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securityquestion` (
  `USERNAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `QUESTION1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ANSWER1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `QUESTION2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ANSWER2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `QUESTION3` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ANSWER3` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`USERNAME`),
  KEY `FK32255326687B5A26` (`USERNAME`),
  CONSTRAINT `FK32255326687B5A26` FOREIGN KEY (`USERNAME`) REFERENCES `user` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securityquestion`
--

LOCK TABLES `securityquestion` WRITE;
/*!40000 ALTER TABLE `securityquestion` DISABLE KEYS */;
INSERT INTO `securityquestion` VALUES ('Evidencer12','What was your childhood nickname?','SenzIT','What is your pet\'s name?','SenzIT','Who was your favorite author?','SenzIT'),('Sangeetha','In what county where you born?','sdg','What is your pet\'s name?','dgdsf','What is the name of your hometown newspaper?','gdf'),('administrator','What was your childhood nickname?','admin','What is your pet\'s name?','admin','What is the name of the first school you attended?','admin'),('ammu123','What was your childhood nickname?','au','What is your pet\'s name?','au','What is your favorite team?','au'),('anumol123','What was your childhood nickname?','anu','What is your pet\'s name?','anu','What is your favorite team?','anu'),('athira123','What was your childhood nickname?','s','What is your pet\'s name?','s','What is your favorite team?','s'),('manutvpm1','What was your childhood nickname?','fgdxfg','What is your pet\'s name?','dsgsg','What is the name of your favorite teacher?','dgsdg'),('please00','What was your childhood nickname?','dgd','What is your pet\'s name?','dgdg','Who was your favorite author?','gsdg'),('sabin007','What was your childhood nickname?','sabi','What is your pet\'s name?','patti','What is your favorite team?','asd'),('senzit123','Company name?','SenzIT','Company location?','Technopark','Company CEO?','Shibi'),('shibi2015','Company name?','SenzIT','Company location?','Technopark','Designation','CEO'),('shintvpm','What was your childhood nickname?','nvbvnvbn','Who was your childhood hero?','vnvbn','What is the name of your favorite teacher?','vnnvbnv');
/*!40000 ALTER TABLE `securityquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `USERNAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `FIRSTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MIDDLENAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LASTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PRIMARYEMAILID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SECONDARYEMAILID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PRIMARYMOBILENUMBER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SECONDARYMOBILENUMBER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USERTYPE` tinyint(4) DEFAULT NULL,
  `LASTMODIFIEDON` datetime DEFAULT NULL,
  `CREATEDON` datetime DEFAULT NULL,
  `CREATEDBY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ROLEID` int(11) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`),
  KEY `FK27E3CB4127AE0C` (`ROLEID`),
  CONSTRAINT `FK27E3CB4127AE0C` FOREIGN KEY (`ROLEID`) REFERENCES `role` (`ROLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Evidencer12','Evidencer','SenzIT','SenzIT','Evidencer12','Evidencer12@senzit.net','SenzIT@gmail.com','9895198951','9567705479',1,NULL,NULL,NULL,1),('Sangeetha','Geetha','San','Geetha','GeethuGeethu','gee@g.net','dsaf@f.net','1236547896','12365478965',NULL,NULL,NULL,NULL,NULL),('administrator','SenzIT','Admin','Solutions','admin1234','admin@senzit.net','evidencer@senzit.net','9895198951','9633605479',0,NULL,NULL,NULL,2),('ammu123','ammus','S','S','ammu123456','ammu@gmail.com','ammu@yahoo.com','9996378451','7896325410',NULL,NULL,NULL,NULL,NULL),('anumol123','anumol','s','s','anumol100','anu@gmail.com','anu@yahoo.com','7896325410','5623417890',NULL,NULL,NULL,NULL,NULL),('athira123','athira','s','babu','athira123','athiras32@yahoo.com','athirac32@gmail.com','9995918859','5656315656',NULL,NULL,NULL,NULL,NULL),('manutvpm1','manutvpm','dfgdf','gdfgfd','manutvpm1','shintvpfghfm@gmail.com','shisntvpm@gmail.com','9567705479','52444554544',1,NULL,NULL,NULL,1),('please00','Please','fwsfgws','sfgsgf','please00','please@senzit.net','wfwfw@senzit.net','9090909090','9099009090',NULL,NULL,NULL,NULL,NULL),('sabin007','Sabin','Babu','vk','sabin100','sabin@senzit.com','sabinb@senzit.net','8547632644','238723876823',1,NULL,NULL,NULL,3),('senzit123','Michel','Kat','Vany','senzit123','senzit@esenzit.com','xyz@esoccer.com','9400940094','940094009455',1,NULL,NULL,NULL,3),('shibi2015','Shibi','Salim','Senzit','salim2015','shibimail@senzit.net','shibimail22@senzit.net','9400940094','94009400988',1,NULL,NULL,NULL,3),('shintvpm','SHIrrr','fdvbc','bcvbcvb','shintvpm','shintvpm@gmail.com','shinssoman@gmail.com','9567705479','19567705479',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprivilege`
--

DROP TABLE IF EXISTS `userprivilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userprivilege` (
  `USERPRIVILEGEID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PRIVILEGEID` int(11) DEFAULT NULL,
  `DATEOFPURCHASE` date DEFAULT NULL,
  `DATEOFEXPIRE` date DEFAULT NULL,
  PRIMARY KEY (`USERPRIVILEGEID`),
  KEY `FK59573726687B5A26` (`USERNAME`),
  KEY `FK59573726E1F3D7D8` (`PRIVILEGEID`),
  CONSTRAINT `FK59573726687B5A26` FOREIGN KEY (`USERNAME`) REFERENCES `user` (`USERNAME`),
  CONSTRAINT `FK59573726E1F3D7D8` FOREIGN KEY (`PRIVILEGEID`) REFERENCES `privilege` (`PRIVILEGEID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprivilege`
--

LOCK TABLES `userprivilege` WRITE;
/*!40000 ALTER TABLE `userprivilege` DISABLE KEYS */;
INSERT INTO `userprivilege` VALUES (1,'senzit123',1,'2015-01-01','2017-01-01'),(2,'senzit123',2,'2015-01-01','2017-01-01'),(3,'senzit123',3,'2015-01-01','2017-01-01'),(4,'senzit123',4,'2015-01-01','2017-01-01'),(5,'senzit123',5,'2015-01-01','2017-01-01'),(6,'senzit123',6,'2015-01-01','2017-01-01'),(7,'senzit123',7,'2015-01-01','2017-01-01'),(8,'senzit123',8,'2015-01-01','2017-01-01'),(9,'senzit123',9,'2015-01-01','2017-01-01'),(10,'senzit123',10,'2015-01-01','2017-01-01'),(11,'shibi2015',1,'2015-01-01','2017-01-01'),(12,'shibi2015',2,'2015-01-01','2017-01-01'),(13,'shibi2015',3,'2015-01-01','2017-01-01'),(14,'shibi2015',4,'2015-01-01','2017-01-01'),(15,'shibi2015',5,'2015-01-01','2017-01-01'),(16,'shibi2015',6,'2015-01-01','2017-01-01'),(17,'shibi2015',7,'2015-01-01','2017-01-01'),(18,'shibi2015',8,'2015-01-01','2017-01-01'),(19,'shibi2015',9,'2015-01-01','2017-01-01'),(20,'shibi2015',10,'2015-01-01','2017-01-01'),(21,'administrator',1,'2015-06-05','2016-06-05'),(22,'administrator',2,'2015-06-05','2016-06-05'),(23,'administrator',3,'2015-06-05','2016-06-05'),(24,'administrator',4,'2015-06-05','2016-06-05'),(25,'administrator',5,'2015-06-05','2016-06-05'),(26,'administrator',6,'2015-06-05','2016-06-05'),(27,'administrator',7,'2015-06-05','2016-06-05'),(28,'administrator',8,'2015-06-05','2016-06-05'),(29,'administrator',9,'2015-06-05','2016-06-05'),(30,'administrator',10,'2015-06-05','2016-06-05'),(31,'sabin007',1,'2015-06-17','2016-06-05'),(32,'sabin007',2,'2015-06-17','2016-06-05'),(33,'sabin007',3,'2015-06-17','2016-06-05'),(34,'sabin007',4,'2015-06-17','2016-06-05'),(35,'sabin007',5,'2015-06-17','2016-06-05'),(36,'sabin007',6,'2015-06-17','2016-06-05'),(37,'sabin007',7,'2015-06-17','2016-06-05'),(38,'sabin007',8,'2015-06-17','2016-06-05'),(39,'sabin007',9,'2015-06-17','2016-06-05'),(40,'sabin007',10,'2015-06-17','2016-06-05');
/*!40000 ALTER TABLE `userprivilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersession`
--

DROP TABLE IF EXISTS `usersession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersession` (
  `USERNAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `SESSIONID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLIENTIP` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOGINTIME` datetime DEFAULT NULL,
  `LASTREQUESTEDTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`USERNAME`),
  KEY `FK816D604B687B5A26` (`USERNAME`),
  CONSTRAINT `FK816D604B687B5A26` FOREIGN KEY (`USERNAME`) REFERENCES `user` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersession`
--

LOCK TABLES `usersession` WRITE;
/*!40000 ALTER TABLE `usersession` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersession` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-28 10:07:49
