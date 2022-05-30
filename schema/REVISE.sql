-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: REVISE
-- ------------------------------------------------------

-- Table structure for table `INITIAL`
--
--指定Database
use REVISE
--

DROP TABLE IF EXISTS `INITIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INITIAL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Proj_ID` varchar(8) NOT NULL,
  `STID` varchar(8) DEFAULT NULL,
  `Address` varchar(30) NOT NULL,
  `Lng` varchar(20) NOT NULL,
  `Lat` varchar(20) NOT NULL,
  `IP` varchar(20) NOT NULL,
  `PORT` varchar(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
-- 插入資料
INSERT INTO `INITIAL` ( `Proj_ID`, `STID`, `Address`,`Lng`,`Lat`,`IP`,`PORT`) 
VALUES ('200209','3100024','高雄市前鎮區','20.604829500976447','120.30017448437619','125.227.111.239','383');
--

--
-- Table structure for table `LABEL`
--

DROP TABLE IF EXISTS `LABEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LABEL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Label` varchar(10) DEFAULT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `IsShow` varchar(5) DEFAULT 'True',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
-- 插入資料
INSERT INTO `LABEL` ( `Label`, `Name`, `IsShow`) VALUES ('Value1','Value1','True');
INSERT INTO `LABEL` ( `Label`, `Name`, `IsShow`) VALUES ('Value2','Value2','True');
INSERT INTO `LABEL` ( `Label`, `Name`, `IsShow`) VALUES ('Value3','Value3','True');
INSERT INTO `LABEL` ( `Label`, `Name`, `IsShow`) VALUES ('Value4','Value4','True');
INSERT INTO `LABEL` ( `Label`, `Name`, `IsShow`) VALUES ('Value5','Value5','True');
INSERT INTO `LABEL` ( `Label`, `Name`, `IsShow`) VALUES ('Value6','Value6','True');
INSERT INTO `LABEL` ( `Label`, `Name`, `IsShow`) VALUES ('Value7','Value7','True');
INSERT INTO `LABEL` ( `Label`, `Name`, `IsShow`) VALUES ('Value8','Value8','True');
INSERT INTO `LABEL` ( `Label`, `Name`, `IsShow`) VALUES ('Value9','Value9','True');
INSERT INTO `LABEL` ( `Label`, `Name`, `IsShow`) VALUES ('Value10','Value10','True');
INSERT INTO `LABEL` ( `Label`, `Name`, `IsShow`) VALUES ('Value11','Value11','True');
INSERT INTO `LABEL` ( `Label`, `Name`, `IsShow`) VALUES ('Value12','Value12','True');
INSERT INTO `LABEL` ( `Label`, `Name`, `IsShow`) VALUES ('Value13','Value13','True');
--

--
-- Table structure for table `RE_VALUE`
--

DROP TABLE IF EXISTS `RE_VALUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RE_VALUE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Va_Name` varchar(10) NOT NULL DEFAULT 'NO_Name',
  `Value_zero` float DEFAULT 1,
  `Value_span` float DEFAULT 0,
  `Count_zero` float DEFAULT 1,
  `Count_span` float DEFAULT 0,
  `a` float DEFAULT 0,
  `b` float DEFAULT 0,
  `offset` float DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
-- 插入資料
INSERT INTO `RE_VALUE` ( `Va_Name`) VALUES ('Value1');
INSERT INTO `RE_VALUE` ( `Va_Name`) VALUES ('Value2');
INSERT INTO `RE_VALUE` ( `Va_Name`) VALUES ('Value3');
INSERT INTO `RE_VALUE` ( `Va_Name`) VALUES ('Value4');
INSERT INTO `RE_VALUE` ( `Va_Name`) VALUES ('Value5');
INSERT INTO `RE_VALUE` ( `Va_Name`) VALUES ('Value6');
INSERT INTO `RE_VALUE` ( `Va_Name`) VALUES ('Value7');
INSERT INTO `RE_VALUE` ( `Va_Name`) VALUES ('Value8');
INSERT INTO `RE_VALUE` ( `Va_Name`) VALUES ('Value9');
INSERT INTO `RE_VALUE` ( `Va_Name`) VALUES ('Value10');
INSERT INTO `RE_VALUE` ( `Va_Name`) VALUES ('Value11');
INSERT INTO `RE_VALUE` ( `Va_Name`) VALUES ('Value12');
INSERT INTO `RE_VALUE` ( `Va_Name`) VALUES ('Value13');
--

--
-- Table structure for table `ST_VALUE`
--

DROP TABLE IF EXISTS `ST_VALUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ST_VALUE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Va_Name` varchar(10) NOT NULL,
  `Value_zero` float DEFAULT 1,
  `Value_span` float DEFAULT 0,
  `Count_zero` float DEFAULT 1,
  `Count_span` float DEFAULT 0,
  `a` float DEFAULT 0,
  `b` float DEFAULT 0,
  `offset` float DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
-- 插入資料
INSERT INTO `ST_VALUE` ( `Va_Name`) VALUES ('Value1');
INSERT INTO `ST_VALUE` ( `Va_Name`) VALUES ('Value2');
INSERT INTO `ST_VALUE` ( `Va_Name`) VALUES ('Value3');
INSERT INTO `ST_VALUE` ( `Va_Name`) VALUES ('Value4');
INSERT INTO `ST_VALUE` ( `Va_Name`) VALUES ('Value5');
INSERT INTO `ST_VALUE` ( `Va_Name`) VALUES ('Value6');
INSERT INTO `ST_VALUE` ( `Va_Name`) VALUES ('Value7');
INSERT INTO `ST_VALUE` ( `Va_Name`) VALUES ('Value8');
INSERT INTO `ST_VALUE` ( `Va_Name`) VALUES ('Value9');
INSERT INTO `ST_VALUE` ( `Va_Name`) VALUES ('Value10');
INSERT INTO `ST_VALUE` ( `Va_Name`) VALUES ('Value11');
INSERT INTO `ST_VALUE` ( `Va_Name`) VALUES ('Value12');
INSERT INTO `ST_VALUE` ( `Va_Name`) VALUES ('Value13');
--

-- Dump completed on 2022-05-26 15:52:33
