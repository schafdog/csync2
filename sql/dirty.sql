-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (x86_64)
--
-- Host: localhost    Database: csync2_local
-- ------------------------------------------------------
-- Server version	5.6.19

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
-- Table structure for table `dirty`
--

DROP TABLE IF EXISTS `dirty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dirty` (
  `filename` varchar(275) COLLATE utf8_bin DEFAULT NULL,
  `forced` int(11) DEFAULT NULL,
  `myname` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `peername` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `operation` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `op` int(11) DEFAULT NULL,
  `checktxt` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `device` bigint(20) DEFAULT NULL,
  `inode` bigint(20) DEFAULT NULL,
  `other` varchar(275) COLLATE utf8_bin DEFAULT NULL,
  `file_id` bigint(20) DEFAULT NULL,
  `digest` varchar(130) COLLATE utf8_bin DEFAULT NULL,
  `mode` int(11) DEFAULT NULL,
  UNIQUE KEY `filename` (`filename`,`peername`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dirty`
--

LOCK TABLES `dirty` WRITE;
/*!40000 ALTER TABLE `dirty` DISABLE KEYS */;
INSERT INTO `dirty` VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local',0,'local','other','MKDIR',1,'v2:mtime=1435219174:mode=16877:user=dennis:group=staff:type=dir',16777223,80124306,NULL,NULL,NULL,16877),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST',0,'local','other','NEW',1,'v2:mtime=1435219176:mode=33188:user=dennis:group=staff:type=reg:size=8',16777223,80124331,NULL,NULL,NULL,33188),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir',0,'local','other','MKDIR',1,'v2:mtime=1435219174:mode=16877:user=dennis:group=staff:type=dir',16777223,80124307,NULL,NULL,NULL,16877),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp',0,'local','other','MKDIR',1,'v2:mtime=1435219177:mode=16877:user=dennis:group=staff:type=dir',16777223,80124310,NULL,NULL,NULL,16877),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new',0,'local','other','MKDIR',1,'v2:mtime=1435219179:mode=16877:user=dennis:group=staff:type=dir',16777223,80124309,NULL,NULL,NULL,16877),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur',0,'local','other','MKDIR',1,'v2:mtime=1435219185:mode=16877:user=dennis:group=staff:type=dir',16777223,80124308,NULL,NULL,NULL,16877),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash',0,'local','other','MKDIR',1,'v2:mtime=1435219174:mode=16877:user=dennis:group=staff:type=dir',16777223,80124311,NULL,NULL,NULL,16877),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur',0,'local','other','MKDIR',1,'v2:mtime=1435219185:mode=16877:user=dennis:group=staff:type=dir',16777223,80124312,NULL,NULL,NULL,16877),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S',0,'local','other','NEW',1,'v2:mtime=1435219176:mode=33188:user=dennis:group=staff:type=reg:size=8',16777223,80124331,NULL,NULL,NULL,33188);
/*!40000 ALTER TABLE `dirty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `filename` varchar(275) COLLATE utf8_bin DEFAULT NULL,
  `hostname` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `checktxt` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `device` bigint(20) DEFAULT NULL,
  `inode` bigint(20) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `mode` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `digest` varchar(130) COLLATE utf8_bin DEFAULT NULL,
  UNIQUE KEY `filename` (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local',NULL,'v2:mtime=1435219174:mode=16877:user=dennis:group=staff:type=dir',16777223,80124306,102,16877,NULL,NULL,NULL),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir',NULL,'v2:mtime=1435219174:mode=16877:user=dennis:group=staff:type=dir',16777223,80124307,204,16877,NULL,NULL,NULL),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp',NULL,'v2:mtime=1435219177:mode=16877:user=dennis:group=staff:type=dir',16777223,80124310,68,16877,NULL,NULL,NULL),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new',NULL,'v2:mtime=1435219179:mode=16877:user=dennis:group=staff:type=dir',16777223,80124309,68,16877,NULL,NULL,NULL),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur',NULL,'v2:mtime=1435219185:mode=16877:user=dennis:group=staff:type=dir',16777223,80124308,102,16877,NULL,NULL,NULL),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash',NULL,'v2:mtime=1435219174:mode=16877:user=dennis:group=staff:type=dir',16777223,80124311,102,16877,NULL,NULL,NULL),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur',NULL,'v2:mtime=1435219185:mode=16877:user=dennis:group=staff:type=dir',16777223,80124312,102,16877,NULL,NULL,NULL),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST',NULL,'v2:mtime=1435219176:mode=33188:user=dennis:group=staff:type=reg:size=8',16777223,80124331,8,33188,NULL,NULL,'6cb0c34bcc2b89205c6601b4edaa2eace19ec981'),('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S',NULL,'v2:mtime=1435219176:mode=33188:user=dennis:group=staff:type=reg:size=8',16777223,80124331,8,33188,NULL,NULL,'6cb0c34bcc2b89205c6601b4edaa2eace19ec981');
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-25 10:02:45
