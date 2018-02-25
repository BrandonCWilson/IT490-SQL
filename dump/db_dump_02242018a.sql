-- MySQL dump 10.13  Distrib 5.7.21, for Linux (i686)
--
-- Host: localhost    Database: p_LeagueDB
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `Champions_Data`
--

DROP TABLE IF EXISTS `Champions_Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Champions_Data` (
  `championName` varchar(255) DEFAULT NULL,
  `winrate` float unsigned DEFAULT NULL,
  `gamesPlayedWithChampion` int(10) unsigned DEFAULT NULL,
  `releaseDate` int(11) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `accountID` int(11) DEFAULT NULL,
  KEY `accountID` (`accountID`),
  CONSTRAINT `Champions_Data_ibfk_1` FOREIGN KEY (`accountID`) REFERENCES `LoL_Data` (`accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Champions_Data`
--

LOCK TABLES `Champions_Data` WRITE;
/*!40000 ALTER TABLE `Champions_Data` DISABLE KEYS */;
INSERT INTO `Champions_Data` VALUES ('test',0.5,5,5,'test',5);
/*!40000 ALTER TABLE `Champions_Data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoL_Data`
--

DROP TABLE IF EXISTS `LoL_Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoL_Data` (
  `rank` varchar(255) DEFAULT NULL,
  `wins` int(10) unsigned DEFAULT NULL,
  `losses` int(10) unsigned DEFAULT NULL,
  `veteran` tinyint(1) DEFAULT NULL,
  `inactive` tinyint(1) DEFAULT NULL,
  `playerOrTeamName` varchar(255) DEFAULT NULL,
  `playerOrTeamID` varchar(255) DEFAULT NULL,
  `leaguePoints` int(10) unsigned DEFAULT NULL,
  `summonerLvl` int(11) DEFAULT NULL,
  `lastModificationDate` int(10) unsigned DEFAULT NULL,
  `accountID` int(11) NOT NULL,
  PRIMARY KEY (`accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoL_Data`
--

LOCK TABLES `LoL_Data` WRITE;
/*!40000 ALTER TABLE `LoL_Data` DISABLE KEYS */;
INSERT INTO `LoL_Data` VALUES ('test',5,5,1,1,'test','test',5,5,5,5),('myrank',20,1,0,0,'myteamName','myteamID',2000,3,1519512965,6),('bronze',32,7,0,0,'team noobs','team noobs id',3000,8,1519514527,7);
/*!40000 ALTER TABLE `LoL_Data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Matches_BannedChamps`
--

DROP TABLE IF EXISTS `Matches_BannedChamps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Matches_BannedChamps` (
  `gameID` int(10) unsigned DEFAULT NULL,
  `bannedChamp` int(11) DEFAULT NULL,
  KEY `gameID` (`gameID`),
  CONSTRAINT `Matches_BannedChamps_ibfk_1` FOREIGN KEY (`gameID`) REFERENCES `Matches_Data` (`gameID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Matches_BannedChamps`
--

LOCK TABLES `Matches_BannedChamps` WRITE;
/*!40000 ALTER TABLE `Matches_BannedChamps` DISABLE KEYS */;
/*!40000 ALTER TABLE `Matches_BannedChamps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Matches_Data`
--

DROP TABLE IF EXISTS `Matches_Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Matches_Data` (
  `gameID` int(10) unsigned NOT NULL,
  `gameStartTime` int(10) unsigned DEFAULT NULL,
  `platformID` varchar(255) DEFAULT NULL,
  `gameMode` varchar(255) DEFAULT NULL,
  `mapID` int(11) DEFAULT NULL,
  `gameType` varchar(255) DEFAULT NULL,
  `bannedChamps` int(11) DEFAULT NULL,
  `observers` int(11) DEFAULT NULL,
  `participants` int(11) DEFAULT NULL,
  `gameLength` int(11) DEFAULT NULL,
  PRIMARY KEY (`gameID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Matches_Data`
--

LOCK TABLES `Matches_Data` WRITE;
/*!40000 ALTER TABLE `Matches_Data` DISABLE KEYS */;
INSERT INTO `Matches_Data` VALUES (1,1,'test','test',1,'test',1,1,1,1);
/*!40000 ALTER TABLE `Matches_Data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Matches_Observers`
--

DROP TABLE IF EXISTS `Matches_Observers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Matches_Observers` (
  `gameID` int(10) unsigned DEFAULT NULL,
  `observer` int(10) unsigned DEFAULT NULL,
  KEY `gameID` (`gameID`),
  CONSTRAINT `Matches_Observers_ibfk_1` FOREIGN KEY (`gameID`) REFERENCES `Matches_Data` (`gameID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Matches_Observers`
--

LOCK TABLES `Matches_Observers` WRITE;
/*!40000 ALTER TABLE `Matches_Observers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Matches_Observers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Matches_Participants`
--

DROP TABLE IF EXISTS `Matches_Participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Matches_Participants` (
  `gameID` int(10) unsigned DEFAULT NULL,
  `participant` int(10) unsigned DEFAULT NULL,
  KEY `gameID` (`gameID`),
  CONSTRAINT `Matches_Participants_ibfk_1` FOREIGN KEY (`gameID`) REFERENCES `Matches_Data` (`gameID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Matches_Participants`
--

LOCK TABLES `Matches_Participants` WRITE;
/*!40000 ALTER TABLE `Matches_Participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `Matches_Participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Twitch_Data`
--

DROP TABLE IF EXISTS `Twitch_Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Twitch_Data` (
  `startedAt` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `viewerCount` int(10) unsigned DEFAULT NULL,
  `streamType` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `thumbnailURL` varchar(255) DEFAULT NULL,
  `userID` varchar(255) DEFAULT NULL,
  `gameID` varchar(255) DEFAULT NULL,
  UNIQUE KEY `userID` (`userID`),
  KEY `streamType` (`streamType`),
  CONSTRAINT `Twitch_Data_ibfk_1` FOREIGN KEY (`streamType`) REFERENCES `Twitch_StreamTypes` (`streamType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Twitch_Data`
--

LOCK TABLES `Twitch_Data` WRITE;
/*!40000 ALTER TABLE `Twitch_Data` DISABLE KEYS */;
INSERT INTO `Twitch_Data` VALUES ('time','title',5,'','language','thumbnailURL.com/image','dummytwitch','LeagueOfLegends'),('time','my stream title',22,'live','english','url.com','secretTwitchID','LeagueOfLegends'),('time','incredible streamer does things',3200,'vodcast','french','www.website.com/image.png','testtwitch','LeagueOfLegends');
/*!40000 ALTER TABLE `Twitch_Data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Twitch_StreamTypes`
--

DROP TABLE IF EXISTS `Twitch_StreamTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Twitch_StreamTypes` (
  `streamType` varchar(255) NOT NULL,
  PRIMARY KEY (`streamType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Twitch_StreamTypes`
--

LOCK TABLES `Twitch_StreamTypes` WRITE;
/*!40000 ALTER TABLE `Twitch_StreamTypes` DISABLE KEYS */;
INSERT INTO `Twitch_StreamTypes` VALUES (''),('live'),('vodcast');
/*!40000 ALTER TABLE `Twitch_StreamTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `email` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tokenID` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `lastActivity` int(11) NOT NULL,
  `twitchID` varchar(255) DEFAULT NULL,
  `summonerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `twitchID` (`twitchID`),
  UNIQUE KEY `summonerID` (`summonerID`),
  CONSTRAINT `Users_ibfk_1` FOREIGN KEY (`twitchID`) REFERENCES `Twitch_Data` (`userID`),
  CONSTRAINT `Users_ibfk_2` FOREIGN KEY (`summonerID`) REFERENCES `LoL_Data` (`accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('dummy@data.com','securepassword','dummytoken',0,1519515397,'dummytwitch',5),('not@twitch.com','pass','token',0,1519515424,NULL,NULL),('secret@agent.com','topsecretpasswd','secretToken',0,1519515397,'secretTwitchID',6),('test@test.com','testpasswd','testtoken',0,1519515397,'testtwitch',7);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-24 19:30:29
