-- MySQL dump 10.13  Distrib 5.5.30, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: csync2_local
-- ------------------------------------------------------
-- Server version	5.5.30-1

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
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action` (
  `filename` varchar(275) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `command` text,
  `logfile` text,
  UNIQUE KEY `filename` (`filename`,`command`(20))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dirty`
--

DROP TABLE IF EXISTS `dirty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dirty` (
  `filename` varchar(275) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `forced` int(11) DEFAULT NULL,
  `myname` varchar(50) DEFAULT NULL,
  `peername` varchar(50) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `checktxt` varchar(255) DEFAULT NULL,
  `inode` bigint(20) DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  UNIQUE KEY `filename` (`filename`,`peername`),
  KEY `dirty_host` (`peername`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `filename` varchar(275) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `checktxt` varchar(200) DEFAULT NULL,
  `inode` bigint(20) DEFAULT NULL,
  `digest` varchar(1024) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  UNIQUE KEY `filename` (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hint`
--

DROP TABLE IF EXISTS `hint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hint` (
  `filename` varchar(275) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `recursive` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x509_cert`
--

DROP TABLE IF EXISTS `x509_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x509_cert` (
  `peername` varchar(50) DEFAULT NULL,
  `certdata` varchar(255) DEFAULT NULL,
  UNIQUE KEY `peername` (`peername`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-14 18:01:06
