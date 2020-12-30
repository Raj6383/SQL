-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: localhost    Database: ipl
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+05:30' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `IPL_BIDDER_DETAILS`
--

CREATE DATABASE IF NOT EXISTS ipl;
USE ipl;

DROP TABLE IF EXISTS IPL_BIDDER_DETAILS;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IPL_BIDDER_DETAILS (
  BIDDER_ID int(6) NOT NULL,
  USER_ID varchar(20) DEFAULT NULL,
  BIDDER_NAME varchar(40) NOT NULL,
  CONTACT_NO bigint(12) DEFAULT NULL,
  EMAIL_ID varchar(100) DEFAULT NULL,
  REMARKS varchar(200) DEFAULT NULL,
  PRIMARY KEY (BIDDER_ID),
  KEY USER_ID (USER_ID),
  CONSTRAINT ipl_bidder_details_ibfk_1 FOREIGN KEY (USER_ID) REFERENCES ipl_user (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPL_BIDDER_DETAILS`
--

INSERT INTO IPL_BIDDER_DETAILS VALUES (102,'USR002','Krishan Valimbe',7088118461,'valimbek@yahoo.com',NULL),(103,'USR003','Megaduta Dheer',9325049602,'dheerm@gmail.com',NULL),(104,'USR004','Chatur Mahalanabis',7135247807,'mahalanabisc@yahoo.co.in',NULL),(105,'USR005','Shackcham Bajpeyi',7836088705,'bajpeyis@yahoo.com',NULL),(106,'USR006','Vineet Hegadi',8824587622,'hegadiv@gmail.com',NULL),(107,'USR007','Vakpati Munshi',6547277826,'munshiv@gmail.com',NULL),(108,'USR008','Kusika Rajavade',8481700165,'rajavadek@yahoo.com',NULL),(109,'USR009','Gagan Panda',7121254186,'pandag@edge.com',NULL),(110,'USR010','Mishri Nayar',9824959314,'nayarm@edge.com',NULL),(111,'USR011','Amara Mudaliyar',9287282100,'mudaliyara@yahoo.com',NULL),(112,'USR012','Shinu Sanyal',6732250379,'sanyals@edge.com',NULL),(113,'USR013','Vijaya Mayadev',8844350689,'mayadevv@edge.com',NULL),(114,'USR014','Durgautti Misra',8169330574,'misrad@edge.com',NULL),(115,'USR015','Jayanti Chadda',9468271869,'chaddaj@edge.com',NULL),(116,'USR016','Ronald D\'Souza',6943983550,'kumarb@gmail.com',NULL),(117,'USR017','Nagini Sarkar',7458743576,'sarkarn@yahoo.com',NULL),(118,'USR018','Akshara Pandey',6475579718,'pandeya@ipl.co.in',NULL),(119,'USR019','Madri Valimbe',9807726348,'valimbem@gmail.com',NULL),(120,'USR020','Saurandhri Mahanta',8465838514,'mahantas@yahoo.co.in',NULL),(121,'USR021','Aryabhatta Parachure',6887518099,'parachurea@yahoo.com',NULL),(122,'USR022','Veer Tipanis',6709912746,'tipanisv@ipl.co.in',NULL),(123,'USR023','Ganesh Phadatare',6722490653,'phadatareg@ipl.co.in',NULL),(124,'USR024','Sackhcham Nayar',7563150546,'nayars@edge.com',NULL),(125,'USR025','Gagan Adwani',6665727109,'adwanig@yahoo.com',NULL),(126,'USR026','Vincy Fernandes',6815856957,'vinfern@yahoo.co.in',NULL),(127,'USR027','Panini Mallaya',7415107521,'mallayap@yahoo.co.in',NULL),(128,'USR028','Salil Choudhary',9187146065,'salilch@yahoo.co.in',NULL),(129,'USR029','Aryabhata Valimbe',8580175938,'valimbea@ipl.co.in',NULL),(130,'USR030','Nawazuddin Saif',9017365395,'nawazs@gmail.com',NULL),(131,'USR031','Maya Gharapure',7434834146,'gharapurem@gmail.com',NULL);

--
-- Table structure for table `IPL_BIDDER_POINTS`
--

DROP TABLE IF EXISTS IPL_BIDDER_POINTS;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IPL_BIDDER_POINTS (
  BIDDER_ID int(6) DEFAULT NULL,
  TOURNMT_ID int(5) DEFAULT NULL,
  NO_OF_BIDS int(4) DEFAULT NULL,
  NO_OF_MATCHES int(4) DEFAULT NULL,
  TOTAL_POINTS int(5) DEFAULT NULL,
  REMARKS varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPL_BIDDER_POINTS`
--

INSERT INTO IPL_BIDDER_POINTS VALUES (102,2018,4,4,0,NULL),(103,2018,5,5,19,'Runner up'),(104,2018,7,5,17,NULL),(105,2018,9,8,4,NULL),(106,2018,10,9,14,NULL),(107,2018,8,7,6,NULL),(108,2018,7,6,6,NULL),(109,2018,5,4,0,NULL),(110,2018,9,8,15,NULL),(111,2018,7,6,7,NULL),(112,2018,8,8,9,NULL),(113,2018,7,7,9,NULL),(114,2018,8,7,10,NULL),(115,2018,6,6,5,NULL),(116,2018,3,3,0,NULL),(117,2018,5,3,5,NULL),(118,2018,6,6,15,NULL),(119,2018,10,8,2,NULL),(120,2018,4,4,5,NULL),(121,2018,11,11,35,'Winner'),(122,2018,3,3,4,NULL),(123,2018,6,6,11,NULL),(124,2018,5,5,7,NULL),(125,2018,9,7,8,NULL),(126,2018,5,5,12,NULL),(127,2018,8,8,12,NULL),(128,2018,4,4,4,NULL),(129,2018,8,8,9,NULL),(130,2018,7,7,5,NULL),(131,2018,6,6,12,NULL);

--
-- Table structure for table `IPL_BIDDING_DETAILS`
--

DROP TABLE IF EXISTS IPL_BIDDING_DETAILS;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IPL_BIDDING_DETAILS (
  BIDDER_ID int(6) NOT NULL,
  SCHEDULE_ID int(6) NOT NULL,
  BID_TEAM int(2) DEFAULT NULL,
  BID_DATE datetime NOT NULL,
  BID_STATUS varchar(20) NOT NULL,
  PRIMARY KEY (BIDDER_ID,SCHEDULE_ID,BID_DATE,BID_STATUS)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPL_BIDDING_DETAILS`
--

INSERT INTO IPL_BIDDING_DETAILS VALUES (102,10002,1,'2017-04-05 00:00:00','Bid'),(102,10016,7,'2017-04-17 00:00:00','Lost'),(102,10080,7,'2018-04-23 00:00:00','Lost'),(102,10084,8,'2018-04-25 00:00:00','Lost'),(103,10017,1,'2017-04-17 00:00:00','Won'),(103,10041,8,'2017-05-05 00:00:00','Won'),(103,10042,7,'2017-05-05 00:00:00','Won'),(103,10086,8,'2018-04-26 00:00:00','Won'),(103,10098,6,'2018-05-04 00:00:00','Won'),(104,10002,1,'2017-04-05 00:00:00','Won'),(104,10006,7,'2017-04-09 00:00:00','Won'),(104,10053,6,'2017-05-13 00:00:00','Won'),(104,10053,6,'2017-05-14 00:00:00','Cancelled'),(104,10054,1,'2017-05-15 00:00:00','Won'),(104,10086,2,'2018-04-26 00:00:00','Cancelled'),(104,10119,8,'2018-05-23 00:00:00','Won'),(105,10031,3,'2017-04-30 00:00:00','Bid'),(105,10034,8,'2017-05-01 00:00:00','Lost'),(105,10054,1,'2017-05-15 00:00:00','Lost'),(105,10062,2,'2018-04-07 00:00:00','Lost'),(105,10074,3,'2018-04-16 00:00:00','Won'),(105,10076,3,'2018-04-20 00:00:00','Won'),(105,10086,8,'2018-04-26 00:00:00','Cancelled'),(105,10089,2,'2018-04-28 00:00:00','Bid'),(105,10096,8,'2018-05-02 00:00:00','Bid'),(106,10001,2,'2017-04-05 00:00:00','Won'),(106,10020,6,'2017-04-22 00:00:00','Bid'),(106,10047,5,'2017-05-09 00:00:00','Won'),(106,10058,7,'2017-05-17 00:00:00','Bid'),(106,10060,6,'2017-05-19 00:00:00','Cancelled'),(106,10073,1,'2018-04-15 00:00:00','Won'),(106,10077,5,'2018-04-20 00:00:00','Lost'),(106,10092,6,'2018-04-30 00:00:00','Won'),(106,10094,1,'2018-05-01 00:00:00','Won'),(106,10104,5,'2018-05-09 00:00:00','Lost'),(107,10029,5,'2017-04-29 00:00:00','Bid'),(107,10032,6,'2017-04-30 00:00:00','Won'),(107,10047,4,'2017-05-09 00:00:00','Lost'),(107,10057,8,'2017-05-17 00:00:00','Lost'),(107,10084,4,'2018-04-25 00:00:00','Cancelled'),(107,10084,8,'2018-04-25 00:00:00','Won'),(107,10085,1,'2018-04-25 00:00:00','Won'),(107,10122,8,'2018-05-27 00:00:00','Lost'),(108,10005,7,'2017-04-09 00:00:00','Won'),(108,10044,6,'2017-05-06 00:00:00','Won'),(108,10052,3,'2017-05-11 00:00:00','Won'),(108,10060,3,'2017-05-19 00:00:00','Bid'),(108,10062,2,'2018-04-07 00:00:00','Lost'),(108,10105,2,'2018-05-09 00:00:00','Bid'),(108,10107,6,'2018-05-10 00:00:00','Cancelled'),(109,10003,2,'2017-04-07 00:00:00','Lost'),(109,10052,3,'2017-05-11 00:00:00','Bid'),(109,10059,5,'2017-05-19 00:00:00','Lost'),(109,10105,2,'2018-05-09 00:00:00','Lost'),(109,10113,2,'2018-05-14 00:00:00','Cancelled'),(110,10006,7,'2017-04-09 00:00:00','Cancelled'),(110,10031,3,'2017-04-30 00:00:00','Won'),(110,10032,6,'2017-04-30 00:00:00','Won'),(110,10039,2,'2017-05-04 00:00:00','Bid'),(110,10063,3,'2018-04-07 00:00:00','Lost'),(110,10072,6,'2018-04-14 00:00:00','Bid'),(110,10075,3,'2018-04-18 00:00:00','Won'),(110,10084,8,'2018-04-25 00:00:00','Won'),(110,10087,1,'2018-04-27 00:00:00','Won'),(111,10001,2,'2017-04-05 00:00:00','Won'),(111,10033,3,'2017-05-01 00:00:00','Lost'),(111,10056,6,'2017-05-16 00:00:00','Cancelled'),(111,10064,5,'2018-04-08 00:00:00','Won'),(111,10091,2,'2018-04-29 00:00:00','Bid'),(111,10111,3,'2018-05-13 00:00:00','Won'),(111,10117,1,'2018-05-21 00:00:00','Lost'),(112,10020,6,'2017-04-10 00:00:00','Bid'),(112,10020,6,'2017-04-22 00:00:00','Won'),(112,10037,5,'2017-05-03 00:00:00','Bid'),(112,10065,7,'2018-04-08 00:00:00','Won'),(112,10067,8,'2018-04-11 00:00:00','Bid'),(112,10068,1,'2018-04-11 00:00:00','Won'),(112,10092,3,'2018-04-30 00:00:00','Bid'),(112,10096,8,'2018-05-02 00:00:00','Won'),(113,10009,2,'2017-04-11 00:00:00','Won'),(113,10020,8,'2017-04-22 00:00:00','Lost'),(113,10047,4,'2017-05-09 00:00:00','Won'),(113,10072,4,'2018-04-14 00:00:00','Bid'),(113,10077,6,'2018-04-20 00:00:00','Bid'),(113,10083,4,'2018-04-24 00:00:00','Won'),(113,10091,4,'2018-04-29 00:00:00','Won'),(114,10020,6,'2017-04-22 00:00:00','Won'),(114,10035,2,'2017-05-02 00:00:00','Lost'),(114,10040,2,'2017-05-04 00:00:00','Won'),(114,10054,4,'2017-05-15 00:00:00','Bid'),(114,10071,8,'2018-04-13 00:00:00','Cancelled'),(114,10081,6,'2018-04-23 00:00:00','Won'),(114,10087,5,'2018-04-27 00:00:00','Won'),(114,10099,8,'2018-05-04 00:00:00','Lost'),(115,10034,8,'2017-05-01 00:00:00','Lost'),(115,10048,8,'2017-05-09 00:00:00','Lost'),(115,10062,1,'2018-04-07 00:00:00','Won'),(115,10072,6,'2018-04-14 00:00:00','Won'),(115,10074,4,'2018-04-16 00:00:00','Lost'),(115,10077,6,'2018-04-20 00:00:00','Bid'),(116,10025,3,'2017-04-27 00:00:00','Lost'),(116,10041,7,'2017-05-05 00:00:00','Lost'),(116,10099,8,'2018-05-04 00:00:00','Bid'),(117,10031,3,'2017-04-30 00:00:00','Cancelled'),(117,10037,7,'2017-05-03 00:00:00','Bid'),(117,10042,7,'2017-05-05 00:00:00','Cancelled'),(117,10052,3,'2017-05-11 00:00:00','Won'),(117,10107,2,'2018-05-10 00:00:00','Won'),(118,10012,8,'2017-04-15 00:00:00','Won'),(118,10013,1,'2017-04-15 00:00:00','Won'),(118,10036,7,'2017-05-02 00:00:00','Won'),(118,10076,7,'2018-04-20 00:00:00','Won'),(118,10089,2,'2018-04-28 00:00:00','Bid'),(118,10116,7,'2018-05-21 00:00:00','Won'),(119,10011,5,'2017-04-13 00:00:00','Lost'),(119,10021,8,'2017-04-22 00:00:00','Bid'),(119,10028,7,'2017-04-28 00:00:00','Bid'),(119,10028,4,'2017-04-28 00:00:00','Lost'),(119,10061,6,'2017-05-21 00:00:00','Cancelled'),(119,10065,8,'2018-04-08 00:00:00','Lost'),(119,10066,5,'2018-04-10 00:00:00','Bid'),(119,10078,3,'2018-04-21 00:00:00','Cancelled'),(119,10079,7,'2018-04-22 00:00:00','Won'),(119,10119,4,'2018-05-23 00:00:00','Bid'),(120,10012,2,'2017-04-15 00:00:00','Bid'),(120,10015,5,'2017-04-16 00:00:00','Won'),(120,10049,1,'2017-05-10 00:00:00','Bid'),(120,10074,4,'2018-04-16 00:00:00','Lost'),(121,10019,6,'2017-04-21 00:00:00','Won'),(121,10022,3,'2017-04-23 00:00:00','Won'),(121,10025,4,'2017-04-27 00:00:00','Won'),(121,10049,3,'2017-05-10 00:00:00','Won'),(121,10056,2,'2017-05-16 00:00:00','Bid'),(121,10068,6,'2018-04-11 00:00:00','Won'),(121,10094,1,'2018-05-01 00:00:00','Won'),(121,10105,2,'2018-05-09 00:00:00','Won'),(121,10108,8,'2018-05-11 00:00:00','Won'),(121,10114,3,'2018-05-15 00:00:00','Won'),(121,10118,1,'2018-05-23 00:00:00','Won'),(122,10012,8,'2017-04-15 00:00:00','Won'),(122,10022,3,'2017-04-23 00:00:00','Bid'),(122,10074,4,'2018-04-16 00:00:00','Won'),(123,10029,5,'2017-04-29 00:00:00','Won'),(123,10035,2,'2017-05-02 00:00:00','Bid'),(123,10035,5,'2017-05-02 00:00:00','Won'),(123,10069,4,'2018-04-12 00:00:00','Won'),(123,10106,4,'2018-05-10 00:00:00','Bid'),(123,10111,3,'2018-05-13 00:00:00','Won'),(124,10012,8,'2017-04-15 00:00:00','Won'),(124,10018,1,'2017-04-21 00:00:00','Won'),(124,10022,6,'2017-04-23 00:00:00','Won'),(124,10061,5,'2017-05-21 00:00:00','Bid'),(124,10067,8,'2018-04-11 00:00:00','Lost'),(125,10009,1,'2017-04-11 00:00:00','Cancelled'),(125,10010,4,'2017-04-11 00:00:00','Won'),(125,10013,6,'2017-04-15 00:00:00','Bid'),(125,10025,4,'2017-04-27 00:00:00','Cancelled'),(125,10034,8,'2017-05-01 00:00:00','Bid'),(125,10052,4,'2017-05-11 00:00:00','Won'),(125,10079,7,'2018-04-22 00:00:00','Lost'),(125,10115,5,'2018-05-15 00:00:00','Won'),(125,10116,7,'2018-05-21 00:00:00','Won'),(126,10012,8,'2017-04-15 00:00:00','Won'),(126,10062,2,'2018-04-07 00:00:00','Bid'),(126,10088,1,'2018-04-28 00:00:00','Won'),(126,10093,5,'2018-04-30 00:00:00','Won'),(126,10119,4,'2018-05-23 00:00:00','Won'),(127,10030,2,'2017-04-29 00:00:00','Bid'),(127,10033,2,'2017-05-01 00:00:00','Won'),(127,10058,7,'2017-05-17 00:00:00','Won'),(127,10063,1,'2018-04-07 00:00:00','Won'),(127,10069,4,'2018-04-12 00:00:00','Lost'),(127,10076,7,'2018-04-20 00:00:00','Lost'),(127,10092,3,'2018-04-30 00:00:00','Won'),(127,10120,8,'2018-05-25 00:00:00','Won'),(128,10003,5,'2017-04-07 00:00:00','Won'),(128,10018,6,'2017-04-21 00:00:00','Bid'),(128,10079,7,'2018-04-22 00:00:00','Won'),(128,10102,5,'2018-05-08 00:00:00','Bid'),(129,10009,2,'2017-04-11 00:00:00','Lost'),(129,10021,3,'2017-04-22 00:00:00','Lost'),(129,10024,2,'2017-04-26 00:00:00','Won'),(129,10025,4,'2017-04-27 00:00:00','Won'),(129,10029,5,'2017-04-29 00:00:00','Lost'),(129,10042,7,'2017-05-05 00:00:00','Won'),(129,10081,6,'2018-04-23 00:00:00','Won'),(129,10091,4,'2018-04-29 00:00:00','Lost'),(130,10011,5,'2017-04-13 00:00:00','Bid'),(130,10016,7,'2017-04-17 00:00:00','Bid'),(130,10037,5,'2017-05-03 00:00:00','Won'),(130,10038,8,'2017-05-03 00:00:00','Bid'),(130,10045,8,'2017-05-07 00:00:00','Lost'),(130,10049,1,'2017-05-10 00:00:00','Won'),(130,10058,7,'2017-05-17 00:00:00','Lost'),(131,10019,6,'2017-04-21 00:00:00','Won'),(131,10048,5,'2017-05-09 00:00:00','Won'),(131,10051,8,'2017-05-11 00:00:00','Won'),(131,10070,7,'2018-04-13 00:00:00','Bid'),(131,10078,3,'2018-04-21 00:00:00','Won'),(131,10089,1,'2018-04-28 00:00:00','Bid');

--
-- Table structure for table `IPL_MATCH`
--

DROP TABLE IF EXISTS IPL_MATCH;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IPL_MATCH (
  MATCH_ID int(6) NOT NULL,
  TEAM_ID1 int(5) NOT NULL,
  TEAM_ID2 int(5) NOT NULL,
  TOSS_WINNER int(2) DEFAULT NULL,
  MATCH_WINNER int(2) DEFAULT NULL,
  WIN_DETAILS varchar(200) DEFAULT NULL,
  REMARKS varchar(200) DEFAULT NULL,
  PRIMARY KEY (MATCH_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPL_MATCH`
--

INSERT INTO IPL_MATCH VALUES (1001,1,2,2,1,'Team CSK won by 7 Wkts',NULL),(1002,1,3,2,1,'Team CSK won by 7 Wkts',NULL),(1003,1,4,1,2,'Team KKR won by 35 Runs',NULL),(1004,1,5,2,1,'Team CSK won by 7 Wkts',NULL),(1005,1,6,1,2,'Team RR won by 35 Runs',NULL),(1006,1,7,2,2,'Team RCB won by 35 Runs',NULL),(1007,2,1,2,1,'Team DD won by 35 Runs',NULL),(1008,2,3,2,1,'Team DD won by 35 Runs',NULL),(1009,2,4,1,1,'Team DD won by 35 Runs',NULL),(1010,2,5,2,2,'Team MI won by 7 Wkts',NULL),(1011,2,6,1,2,'Team RR won by 35 Runs',NULL),(1012,2,7,2,1,'Team DD won by 7 Wkts',NULL),(1013,2,8,2,2,'Team SRH won by 7 Wkts',NULL),(1014,3,2,1,1,'Team KXIP won by 7 Wkts',NULL),(1015,3,1,1,2,'Team CSK won by 7 Wkts',NULL),(1016,3,4,2,1,'Team KXIP won by 35 Runs',NULL),(1017,3,5,1,1,'Team KXIP won by 7 Wkts',NULL),(1018,3,6,1,2,'Team RR won by 7 Wkts',NULL),(1019,3,7,1,1,'Team KXIP won by 35 Runs',NULL),(1020,3,8,2,1,'Team KXIP won by 35 Runs',NULL),(1021,4,2,1,2,'Team DD won by 35 Runs',NULL),(1022,4,3,1,2,'Team KXIP won by 7 Wkts',NULL),(1023,4,5,1,2,'Team MI won by 35 Runs',NULL),(1024,4,6,1,2,'Team RR won by 35 Runs',NULL),(1025,4,7,2,1,'Team KKR won by 7 Wkts',NULL),(1026,4,8,2,2,'Team SRH won by 35 Runs',NULL),(1027,5,2,2,1,'Team MI won by 35 Runs',NULL),(1028,5,3,1,2,'Team KXIP won by 7 Wkts',NULL),(1029,5,4,2,2,'Team KKR won by 7 Wkts',NULL),(1030,5,1,2,2,'Team CSK won by 7 Wkts',NULL),(1031,5,6,2,2,'Team RR won by 35 Runs',NULL),(1032,5,7,2,2,'Team RCB won by 35 Runs',NULL),(1033,5,8,2,2,'Team SRH won by 7 Wkts',NULL),(1034,6,2,1,1,'Team RR won by 35 Runs',NULL),(1035,6,3,2,2,'Team KXIP won by 35 Runs',NULL),(1036,6,4,2,2,'Team KKR won by 7 Wkts',NULL),(1037,6,5,1,2,'Team MI won by 35 Runs',NULL),(1038,6,1,2,1,'Team RR won by 35 Runs',NULL),(1039,6,7,1,2,'Team RCB won by 35 Runs',NULL),(1040,6,8,2,1,'Team RR won by 35 Runs',NULL),(1041,7,3,2,1,'Team RCB won by 35 Runs',NULL),(1042,7,4,1,2,'Team KKR won by 7 Wkts',NULL),(1043,7,5,2,2,'Team MI won by 7 Wkts',NULL),(1044,7,6,1,2,'Team RR won by 7 Wkts',NULL),(1045,7,1,1,2,'Team CSK won by 35 Runs',NULL),(1046,7,8,1,2,'Team SRH won by 35 Runs',NULL),(1047,8,2,2,1,'Team SRH won by 35 Runs',NULL),(1048,8,3,2,2,'Team KXIP won by 7 Wkts',NULL),(1049,8,4,1,2,'Team KKR won by 35 Runs',NULL),(1050,8,5,1,2,'Team MI won by 35 Runs',NULL),(1051,8,6,2,1,'Team SRH won by 35 Runs',NULL),(1052,8,7,2,1,'Team SRH won by 35 Runs',NULL),(1053,8,1,1,2,'Team CSK won by 35 Runs',NULL),(1054,2,6,1,6,'Team RR won by 7 Wkts',NULL),(1055,1,4,2,1,'Team CSK won by 35 Runs',NULL),(1056,5,7,1,5,'Team RCB won by 35 Runs',NULL),(1057,8,3,2,3,'Team KXIP won by 7 Wkts',NULL),(1058,6,3,1,6,'Team KXIP won by 35 Runs',NULL),(1059,1,5,2,2,'Team MI won by 7 Wkts',NULL),(1060,5,6,1,1,'Team MI won by 7 Wkts',NULL),(1061,1,2,2,1,'Team CSK won by 35 Runs',NULL),(1062,1,3,1,1,'Team CSK won by 7 Wkts',NULL),(1063,1,4,2,2,'Team KKR won by 7 Wkts',NULL),(1064,1,5,2,1,'Team CSK won by 35 Runs',NULL),(1065,1,6,2,2,'Team RR won by 7 Wkts',NULL),(1066,1,7,2,2,'Team RCB won by 7 Wkts',NULL),(1067,1,8,1,2,'Team SRH won by 35 Runs',NULL),(1068,2,1,2,1,'Team DD won by 35 Runs',NULL),(1069,2,3,2,2,'Team KXIP won by 7 Wkts',NULL),(1070,2,4,1,2,'Team KKR won by 7 Wkts',NULL),(1071,2,5,1,1,'Team DD won by 7 Wkts',NULL),(1072,2,6,1,1,'Team DD won by 35 Runs',NULL),(1073,2,7,1,1,'Team DD won by 35 Runs',NULL),(1074,2,8,2,2,'Team SRH won by 7 Wkts',NULL),(1075,3,2,2,2,'Team DD won by 35 Runs',NULL),(1076,3,4,1,2,'Team KKR won by 35 Runs',NULL),(1077,3,5,2,2,'Team MI won by 35 Runs',NULL),(1078,3,6,2,2,'Team RR won by 7 Wkts',NULL),(1079,3,7,2,1,'Team KXIP won by 35 Runs',NULL),(1080,3,8,2,1,'Team KXIP won by 7 Wkts',NULL),(1081,4,2,1,2,'Team DD won by 7 Wkts',NULL),(1082,4,3,1,1,'Team KKR won by 35 Runs',NULL),(1083,4,5,1,2,'Team MI won by 7 Wkts',NULL),(1084,4,6,2,2,'Team RR won by 35 Runs',NULL),(1085,4,7,2,2,'Team RCB won by 35 Runs',NULL),(1086,4,8,2,1,'Team KKR won by 35 Runs',NULL),(1087,5,2,1,1,'Team MI won by 35 Runs',NULL),(1088,5,3,2,2,'Team KXIP won by 7 Wkts',NULL),(1089,5,4,1,2,'Team KKR won by 35 Runs',NULL),(1090,5,1,2,1,'Team MI won by 7 Wkts',NULL),(1091,5,6,2,2,'Team RR won by 7 Wkts',NULL),(1092,5,7,1,1,'Team MI won by 7 Wkts',NULL),(1093,5,8,2,2,'Team SRH won by 35 Runs',NULL),(1094,6,2,1,1,'Team RR won by 35 Runs',NULL),(1095,6,3,1,1,'Team RR won by 7 Wkts',NULL),(1096,6,4,1,1,'Team RR won by 7 Wkts',NULL),(1097,6,5,1,1,'Team RR won by 7 Wkts',NULL),(1098,6,1,2,2,'Team CSK won by 35 Runs',NULL),(1099,6,7,1,1,'Team RR won by 7 Wkts',NULL),(1100,6,8,1,2,'Team SRH won by 35 Runs',NULL),(1101,7,3,2,1,'Team RCB won by 7 Wkts',NULL),(1102,7,4,1,1,'Team RCB won by 35 Runs',NULL),(1103,7,5,1,2,'Team MI won by 35 Runs',NULL),(1104,7,6,2,2,'Team RR won by 35 Runs',NULL),(1105,7,1,2,2,'Team CSK won by 35 Runs',NULL),(1106,7,8,1,1,'Team RCB won by 35 Runs',NULL),(1107,8,2,2,1,'Team SRH won by 7 Wkts',NULL),(1108,8,3,1,1,'Team SRH won by 7 Wkts',NULL),(1109,8,4,1,1,'Team SRH won by 35 Runs',NULL),(1110,8,5,2,2,'Team MI won by 35 Runs',NULL),(1111,8,6,1,1,'Team SRH won by 35 Runs',NULL),(1112,8,7,2,2,'Team RCB won by 7 Wkts',NULL),(1113,8,1,2,1,'Team SRH won by 7 Wkts',NULL),(1114,2,6,1,1,'Team DD won by 7 Wkts',NULL),(1115,1,4,2,1,'Team CSK won by 7 Wkts',NULL),(1116,5,7,1,2,'Team RCB won by 7 Wkts',NULL),(1117,8,3,2,1,'Team SRH won by 35 Runs',NULL),(1118,8,7,2,1,'Team SRH won by 7 Wkts',NULL),(1119,1,2,2,1,'Team CSK won by 7 Wkts',NULL),(1120,8,1,1,2,'Team CSK won by 35 Runs',NULL);

--
-- Table structure for table `IPL_MATCH_SCHEDULE`
--

DROP TABLE IF EXISTS IPL_MATCH_SCHEDULE;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IPL_MATCH_SCHEDULE (
  SCHEDULE_ID int(6) NOT NULL,
  TOURNMT_ID int(4) NOT NULL,
  MATCH_ID int(6) NOT NULL,
  MATCH_TYPE varchar(20) DEFAULT NULL,
  MATCH_DATE datetime NOT NULL,
  START_TIME int(4) DEFAULT NULL,
  STADIUM_ID int(2) DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  REMARKS varchar(200) DEFAULT NULL,
  PRIMARY KEY (SCHEDULE_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPL_MATCH_SCHEDULE`
--

INSERT INTO IPL_MATCH_SCHEDULE VALUES (10001,2017,1001,'League','2017-04-05 00:00:00',1600,6,'Completed',NULL),(10002,2017,1002,'League','2017-04-05 00:00:00',2000,7,'Completed',NULL),(10003,2017,1027,'League','2017-04-07 00:00:00',1600,7,'Completed',NULL),(10004,2017,1032,'League','2017-04-08 00:00:00',2000,7,'Completed',NULL),(10005,2017,1039,'League','2017-04-09 00:00:00',1600,3,'Completed',NULL),(10006,2017,1006,'League','2017-04-09 00:00:00',2000,1,'Completed',NULL),(10007,2017,1033,'League','2017-04-10 00:00:00',1600,1,'Completed',NULL),(10008,2017,1016,'League','2017-04-10 00:00:00',2000,8,'Cancelled','Unforeseen circumstance'),(10009,2017,1007,'League','2017-04-11 00:00:00',1600,2,'Completed',NULL),(10010,2017,1023,'League','2017-04-11 00:00:00',2000,8,'Completed',NULL),(10011,2017,1031,'League','2017-04-13 00:00:00',1600,6,'Completed',NULL),(10012,2017,1013,'League','2017-04-15 00:00:00',2000,1,'Completed',NULL),(10013,2017,1038,'League','2017-04-15 00:00:00',1600,7,'Completed',NULL),(10014,2017,1051,'League','2017-04-16 00:00:00',2000,2,'Completed',NULL),(10015,2017,1004,'League','2017-04-16 00:00:00',1600,1,'Completed',NULL),(10016,2017,1041,'League','2017-04-17 00:00:00',2000,9,'Completed',NULL),(10017,2017,1045,'League','2017-04-17 00:00:00',1600,6,'Completed',NULL),(10018,2017,1005,'League','2017-04-21 00:00:00',2000,3,'Completed',NULL),(10019,2017,1034,'League','2017-04-21 00:00:00',1600,8,'Completed',NULL),(10020,2017,1040,'League','2017-04-22 00:00:00',2000,1,'Completed',NULL),(10021,2017,1020,'League','2017-04-22 00:00:00',1600,6,'Completed',NULL),(10022,2017,1018,'League','2017-04-23 00:00:00',2000,9,'Completed',NULL),(10023,2017,1028,'League','2017-04-24 00:00:00',1600,5,'Completed',NULL),(10024,2017,1009,'League','2017-04-26 00:00:00',2000,10,'Completed',NULL),(10025,2017,1022,'League','2017-04-27 00:00:00',1600,3,'Completed',NULL),(10026,2017,1052,'League','2017-04-27 00:00:00',2000,1,'Completed',NULL),(10027,2017,1019,'League','2017-04-28 00:00:00',1600,1,'Completed',NULL),(10028,2017,1025,'League','2017-04-28 00:00:00',2000,2,'Completed',NULL),(10029,2017,1017,'League','2017-04-29 00:00:00',1600,6,'Completed',NULL),(10030,2017,1014,'League','2017-04-29 00:00:00',2000,2,'Completed',NULL),(10031,2017,1035,'League','2017-04-30 00:00:00',1600,5,'Completed',NULL),(10032,2017,1037,'League','2017-04-30 00:00:00',2000,5,'Completed',NULL),(10033,2017,1008,'League','2017-05-01 00:00:00',1600,2,'Completed',NULL),(10034,2017,1026,'League','2017-05-01 00:00:00',2000,3,'Completed',NULL),(10035,2017,1010,'League','2017-05-02 00:00:00',1600,6,'Completed',NULL),(10036,2017,1044,'League','2017-05-02 00:00:00',2000,5,'Completed',NULL),(10037,2017,1043,'League','2017-05-03 00:00:00',1600,3,'Completed',NULL),(10038,2017,1048,'League','2017-05-03 00:00:00',2000,7,'Completed',NULL),(10039,2017,1011,'League','2017-05-04 00:00:00',1600,7,'Completed',NULL),(10040,2017,1021,'League','2017-05-04 00:00:00',2000,8,'Completed',NULL),(10041,2017,1046,'League','2017-05-05 00:00:00',1600,3,'Completed',NULL),(10042,2017,1042,'League','2017-05-05 00:00:00',2000,2,'Completed',NULL),(10043,2017,1012,'League','2017-05-06 00:00:00',1600,5,'Completed',NULL),(10044,2017,1024,'League','2017-05-06 00:00:00',2000,10,'Completed',NULL),(10045,2017,1047,'League','2017-05-07 00:00:00',1600,1,'Completed',NULL),(10046,2017,1030,'League','2017-05-07 00:00:00',2000,8,'Completed',NULL),(10047,2017,1029,'League','2017-05-09 00:00:00',1600,2,'Completed',NULL),(10048,2017,1050,'League','2017-05-09 00:00:00',2000,8,'Completed',NULL),(10049,2017,1015,'League','2017-05-10 00:00:00',1600,3,'Completed',NULL),(10050,2017,1049,'League','2017-05-10 00:00:00',2000,1,'Completed',NULL),(10051,2017,1053,'League','2017-05-11 00:00:00',1600,9,'Completed',NULL),(10052,2017,1016,'League','2017-05-11 00:00:00',2000,5,'Completed',NULL),(10053,2017,1036,'League','2017-05-14 00:00:00',1600,3,'Completed',NULL),(10054,2017,1003,'League','2017-05-15 00:00:00',2000,5,'Completed',NULL),(10055,2017,1055,'Knock out','2017-05-16 00:00:00',1600,7,'Completed',NULL),(10056,2017,1054,'Knock out','2017-05-16 00:00:00',2000,5,'Completed',NULL),(10057,2017,1057,'Knock out','2017-05-17 00:00:00',1600,7,'Completed',NULL),(10058,2017,1056,'Knock out','2017-05-17 00:00:00',2000,4,'Completed',NULL),(10059,2017,1059,'Semifinal','2017-05-19 00:00:00',1600,7,'Completed',NULL),(10060,2017,1058,'Semifinal','2017-05-19 00:00:00',2000,2,'Completed',NULL),(10061,2017,1060,'Final','2017-05-21 00:00:00',1600,10,'Completed',NULL),(10062,2018,1061,'League','2018-04-07 00:00:00',2000,8,'Completed',NULL),(10063,2018,1062,'League','2018-04-07 00:00:00',1600,9,'Completed',NULL),(10064,2018,1092,'League','2018-04-08 00:00:00',2000,1,'Completed',NULL),(10065,2018,1106,'League','2018-04-08 00:00:00',1600,7,'Completed',NULL),(10066,2018,1097,'League','2018-04-10 00:00:00',2000,6,'Completed',NULL),(10067,2018,1080,'League','2018-04-11 00:00:00',1600,7,'Completed',NULL),(10068,2018,1098,'League','2018-04-11 00:00:00',2000,8,'Completed',NULL),(10069,2018,1089,'League','2018-04-12 00:00:00',1600,4,'Completed',NULL),(10070,2018,1099,'League','2018-04-13 00:00:00',2000,8,'Completed',NULL),(10071,2018,1118,'League','2018-04-13 00:00:00',1600,7,'Completed',NULL),(10072,2018,1096,'League','2018-04-14 00:00:00',2000,1,'Completed',NULL),(10073,2018,1066,'League','2018-04-15 00:00:00',1600,8,'Completed',NULL),(10074,2018,1076,'League','2018-04-16 00:00:00',2000,4,'Completed',NULL),(10075,2018,1069,'League','2018-04-18 00:00:00',1600,1,'Completed',NULL),(10076,2018,1079,'League','2018-04-20 00:00:00',2000,10,'Completed',NULL),(10077,2018,1091,'League','2018-04-20 00:00:00',1600,8,'Completed',NULL),(10078,2018,1108,'League','2018-04-21 00:00:00',2000,6,'Completed',NULL),(10079,2018,1116,'League','2018-04-22 00:00:00',1600,10,'Completed',NULL),(10080,2018,1073,'League','2018-04-23 00:00:00',2000,2,'Completed',NULL),(10081,2018,1114,'League','2018-04-23 00:00:00',1600,3,'Completed',NULL),(10082,2018,1110,'League','2018-04-24 00:00:00',2000,8,'Cancelled','Unforeseen circumstance'),(10083,2018,1084,'League','2018-04-24 00:00:00',1600,5,'Completed',NULL),(10084,2018,1109,'League','2018-04-25 00:00:00',2000,6,'Completed',NULL),(10085,2018,1119,'League','2018-04-25 00:00:00',1600,3,'Completed',NULL),(10086,2018,1107,'League','2018-04-26 00:00:00',2000,9,'Completed',NULL),(10087,2018,1090,'League','2018-04-27 00:00:00',1600,4,'Completed',NULL),(10088,2018,1067,'League','2018-04-28 00:00:00',2000,9,'Completed',NULL),(10089,2018,1068,'League','2018-04-28 00:00:00',1600,9,'Completed',NULL),(10090,2018,1103,'League','2018-04-29 00:00:00',2000,4,'Completed',NULL),(10091,2018,1070,'League','2018-04-29 00:00:00',1600,1,'Completed',NULL),(10092,2018,1095,'League','2018-04-30 00:00:00',2000,2,'Completed',NULL),(10093,2018,1110,'League','2018-04-30 00:00:00',1600,2,'Completed',NULL),(10094,2018,1115,'League','2018-05-01 00:00:00',2000,3,'Completed',NULL),(10095,2018,1075,'League','2018-05-01 00:00:00',1600,4,'Completed',NULL),(10096,2018,1111,'League','2018-05-02 00:00:00',2000,3,'Completed',NULL),(10097,2018,1105,'League','2018-05-03 00:00:00',1600,9,'Completed',NULL),(10098,2018,1065,'League','2018-05-04 00:00:00',2000,8,'Completed',NULL),(10099,2018,1093,'League','2018-05-04 00:00:00',1600,2,'Completed',NULL),(10100,2018,1117,'League','2018-05-05 00:00:00',2000,5,'Completed',NULL),(10101,2018,1085,'League','2018-05-07 00:00:00',1600,5,'Completed',NULL),(10102,2018,1071,'League','2018-05-08 00:00:00',2000,9,'Completed',NULL),(10103,2018,1104,'League','2018-05-08 00:00:00',1600,1,'Completed',NULL),(10104,2018,1083,'League','2018-05-09 00:00:00',2000,3,'Completed',NULL),(10105,2018,1087,'League','2018-05-09 00:00:00',1600,2,'Completed',NULL),(10106,2018,1081,'League','2018-05-10 00:00:00',2000,4,'Completed',NULL),(10107,2018,1094,'League','2018-05-10 00:00:00',1600,5,'Completed',NULL),(10108,2018,1100,'League','2018-05-11 00:00:00',2000,9,'Completed',NULL),(10109,2018,1112,'League','2018-05-11 00:00:00',1600,1,'Completed',NULL),(10110,2018,1077,'League','2018-05-13 00:00:00',2000,1,'Completed',NULL),(10111,2018,1082,'League','2018-05-13 00:00:00',1600,8,'Completed',NULL),(10112,2018,1063,'League','2018-05-14 00:00:00',2000,6,'Completed',NULL),(10113,2018,1072,'League','2018-05-14 00:00:00',1600,1,'Completed',NULL),(10114,2018,1101,'League','2018-05-15 00:00:00',2000,1,'Completed',NULL),(10115,2018,1088,'League','2018-05-15 00:00:00',1600,7,'Completed',NULL),(10116,2018,1102,'Knock out','2018-05-21 00:00:00',2000,9,'Completed',NULL),(10117,2018,1064,'Knock out','2018-05-21 00:00:00',1600,8,'Completed',NULL),(10118,2018,1113,'Knock out','2018-05-23 00:00:00',2000,9,'Completed',NULL),(10119,2018,1086,'Knock out','2018-05-23 00:00:00',1600,10,'Completed',NULL),(10120,2018,1074,'Semifinal','2018-05-25 00:00:00',2000,9,'Completed',NULL),(10121,2018,1078,'Semifinal','2018-05-25 00:00:00',1600,8,'Completed',NULL),(10122,2018,1120,'Final','2018-05-27 00:00:00',2000,10,'Completed',NULL);

--
-- Table structure for table `IPL_PLAYER`
--

DROP TABLE IF EXISTS IPL_PLAYER;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IPL_PLAYER (
  PLAYER_ID int(6) NOT NULL,
  PLAYER_NAME varchar(50) NOT NULL,
  PERFORMANCE_DTLS varchar(500) DEFAULT NULL,
  REMARKS varchar(200) DEFAULT NULL,
  PRIMARY KEY (PLAYER_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPL_PLAYER`
--

INSERT INTO IPL_PLAYER VALUES (1,'Sunil Narine','Pts-379.5 Mat-16 Wkt-17 Dot-137 4s-40 6s-23 Cat-1 Stmp-0','Top performer'),(2,'Shane Watson','Pts-318 Mat-15 Wkt-6 Dot-57 4s-44 6s-35 Cat-3 Stmp-0','Second best'),(3,'Rishabh Pant','Pts-314.5 Mat-14 Wkt-0 Dot-0 4s-68 6s-37 Cat-4 Stmp-2','Third best'),(4,'Lokesh Rahul','Pts-304.5 Mat-14 Wkt-0 Dot-0 4s-66 6s-32 Cat-10 Stmp-1',NULL),(5,'Andre Russell','Pts-292.5 Mat-16 Wkt-13 Dot-76 4s-17 6s-31 Cat-8 Stmp-0',NULL),(6,'Rashid Khan','Pts-284 Mat-17 Wkt-21 Dot-167 4s-3 6s-6 Cat-6 Stmp-0',NULL),(7,'Kane Williamson','Pts-273 Mat-17 Wkt-0 Dot-0 4s-64 6s-28 Cat-6 Stmp-0',NULL),(8,'Hardik Pandya','Pts-269.5 Mat-13 Wkt-18 Dot-98 4s-20 6s-11 Cat-8 Stmp-0',NULL),(9,'Ambati Rayudu','Pts-256.5 Mat-16 Wkt-0 Dot-0 4s-53 6s-34 Cat-2 Stmp-0',NULL),(10,'Krunal Pandya','Pts-239.5 Mat-14 Wkt-12 Dot-85 4s-22 6s-10 Cat-9 Stmp-0',NULL),(11,'Shakib Al Hasan','Pts-237 Mat-17 Wkt-14 Dot-98 4s-26 6s-5 Cat-3 Stmp-0',NULL),(12,'Suryakumar Yadav','Pts-228.5 Mat-14 Wkt-0 Dot-0 4s-61 6s-16 Cat-8 Stmp-0',NULL),(13,'Jos Buttler','Pts-228.5 Mat-13 Wkt-0 Dot-0 4s-52 6s-21 Cat-9 Stmp-1',NULL),(14,'Shikhar Dhawan','Pts-226.5 Mat-16 Wkt-0 Dot-0 4s-59 6s-14 Cat-12 Stmp-0',NULL),(15,'Dinesh Karthik','Pts-223.5 Mat-16 Wkt-0 Dot-0 4s-49 6s-16 Cat-14 Stmp-4',NULL),(16,'Umesh Yadav','Pts-223 Mat-14 Wkt-20 Dot-148 4s-0 6s-0 Cat-2 Stmp-0',NULL),(17,'Andrew Tye','Pts-221 Mat-14 Wkt-24 Dot-116 4s-2 6s-1 Cat-5 Stmp-0',NULL),(18,'AB de Villiers','Pts-217.5 Mat-12 Wkt-0 Dot-0 4s-39 6s-30 Cat-6 Stmp-0',NULL),(19,'Dwayne Bravo','Pts-216.5 Mat-16 Wkt-14 Dot-90 4s-8 6s-10 Cat-9 Stmp-0',NULL),(20,'Virat Kohli','Pts-213 Mat-14 Wkt-0 Dot-0 4s-52 6s-18 Cat-8 Stmp-0',NULL),(21,'Chris Lynn','Pts-210.5 Mat-16 Wkt-0 Dot-0 4s-56 6s-18 Cat-3 Stmp-0',NULL),(22,'Siddarth Kaul','Pts-209.5 Mat-17 Wkt-21 Dot-131 4s-0 6s-0 Cat-2 Stmp-0',NULL),(23,'Krishnappa Gowtham','Pts-207.5 Mat-15 Wkt-11 Dot-90 4s-9 6s-9 Cat-10 Stmp-0',NULL),(24,'Jasprit Bumrah','Pts-205 Mat-14 Wkt-17 Dot-133 4s-1 6s-0 Cat-4 Stmp-0',NULL),(25,'Trent Boult','Pts-203.5 Mat-14 Wkt-18 Dot-118 4s-0 6s-0 Cat-9 Stmp-0',NULL),(26,'MS Dhoni','Pts-200 Mat-16 Wkt-0 Dot-0 4s-24 6s-30 Cat-11 Stmp-3',NULL),(27,'Shardul Thakur','Pts-186.5 Mat-13 Wkt-16 Dot-113 4s-3 6s-0 Cat-4 Stmp-0',NULL),(28,'Suresh Raina','Pts-179.5 Mat-15 Wkt-0 Dot-0 4s-46 6s-12 Cat-9 Stmp-0',NULL),(29,'Piyush Chawla','Pts-175 Mat-15 Wkt-14 Dot-110 4s-1 6s-1 Cat-4 Stmp-0',NULL),(30,'Yuzvendra Chahal','Pts-175 Mat-14 Wkt-12 Dot-128 4s-0 6s-0 Cat-2 Stmp-0',NULL),(31,'Chris Gayle','Pts-174.5 Mat-11 Wkt-0 Dot-0 4s-30 6s-27 Cat-2 Stmp-0',NULL),(32,'Ben Stokes','Pts-173.5 Mat-13 Wkt-8 Dot-77 4s-13 6s-6 Cat-6 Stmp-0',NULL),(33,'Evin Lewis','Pts-171.5 Mat-13 Wkt-0 Dot-0 4s-32 6s-24 Cat-3 Stmp-0',NULL),(34,'Deepak Chahar','Pts-171 Mat-12 Wkt-10 Dot-117 4s-1 6s-4 Cat-1 Stmp-0',NULL),(35,'Kuldeep Yadav','Pts-171 Mat-16 Wkt-17 Dot-94 4s-1 6s-0 Cat-6 Stmp-0',NULL),(36,'Ravindra Jadeja','Pts-169.5 Mat-16 Wkt-11 Dot-82 4s-3 6s-4 Cat-11 Stmp-0',NULL),(37,'Jaydev Unadkat','Pts-169 Mat-15 Wkt-11 Dot-97 4s-6 6s-1 Cat-6 Stmp-0',NULL),(38,'Bhuvneshwar Kumar','Pts-163 Mat-12 Wkt-9 Dot-124 4s-1 6s-0 Cat-2 Stmp-0',NULL),(39,'Sandeep Sharma','Pts-163 Mat-12 Wkt-12 Dot-116 4s-0 6s-0 Cat-2 Stmp-0',NULL),(40,'Robin Uthappa','Pts-161 Mat-16 Wkt-0 Dot-0 4s-30 6s-21 Cat-5 Stmp-0',NULL),(41,'Ravichandran Ashwin','Pts-159.5 Mat-14 Wkt-10 Dot-77 4s-7 6s-5 Cat-5 Stmp-0',NULL),(42,'Shreyas Iyer','Pts-158.5 Mat-14 Wkt-0 Dot-0 4s-29 6s-21 Cat-5 Stmp-0',NULL),(43,'Mitchell McClenaghan','Pts-158 Mat-11 Wkt-14 Dot-103 4s-1 6s-1 Cat-0 Stmp-0',NULL),(44,'Jofra Archer','Pts-158 Mat-10 Wkt-15 Dot-98 4s-2 6s-0 Cat-1 Stmp-0',NULL),(45,'Sanju Samson','Pts-154 Mat-15 Wkt-0 Dot-0 4s-30 6s-19 Cat-5 Stmp-0',NULL),(46,'Mayank Markande','Pts-152 Mat-14 Wkt-15 Dot-87 4s-2 6s-0 Cat-3 Stmp-0',NULL),(47,'Nitish Rana','Pts-150 Mat-15 Wkt-4 Dot-17 4s-26 6s-14 Cat-2 Stmp-0',NULL),(48,'Mujeeb Ur Rahman','Pts-149.5 Mat-11 Wkt-14 Dot-93 4s-2 6s-0 Cat-1 Stmp-0',NULL),(49,'Mohammed Siraj','Pts-149.5 Mat-11 Wkt-11 Dot-90 4s-2 6s-1 Cat-5 Stmp-0',NULL),(50,'Ishan Kishan','Pts-142 Mat-14 Wkt-0 Dot-0 4s-22 6s-17 Cat-9 Stmp-2',NULL),(51,'Shreyas Gopal','Pts-126.5 Mat-11 Wkt-11 Dot-68 4s-5 6s-0 Cat-3 Stmp-0',NULL),(52,'Glenn Maxwell','Pts-126 Mat-12 Wkt-5 Dot-32 4s-14 6s-9 Cat-4 Stmp-0',NULL),(53,'Ankit Rajpoot','Pts-126 Mat-8 Wkt-11 Dot-80 4s-1 6s-0 Cat-2 Stmp-0',NULL),(54,'Karun Nair','Pts-125.5 Mat-13 Wkt-0 Dot-0 4s-23 6s-13 Cat-9 Stmp-0',NULL),(55,'Ajinkya Rahane','Pts-125 Mat-15 Wkt-0 Dot-0 4s-39 6s-5 Cat-4 Stmp-0',NULL),(56,'Rohit Sharma','Pts-124.5 Mat-14 Wkt-0 Dot-0 4s-25 6s-12 Cat-8 Stmp-0',NULL),(57,'Lungi Ngidi','Pts-120 Mat-7 Wkt-11 Dot-79 4s-0 6s-0 Cat-1 Stmp-0',NULL),(58,'Amit Mishra','Pts-116 Mat-10 Wkt-12 Dot-74 4s-0 6s-0 Cat-0 Stmp-0',NULL),(59,'Harbhajan Singh','Pts-113.5 Mat-13 Wkt-7 Dot-68 4s-3 6s-1 Cat-4 Stmp-0',NULL),(60,'Prithvi Shaw','Pts-112.5 Mat-9 Wkt-0 Dot-0 4s-27 6s-10 Cat-4 Stmp-0',NULL),(61,'Yusuf Pathan','Pts-106.5 Mat-15 Wkt-1 Dot-2 4s-22 6s-11 Cat-3 Stmp-0',NULL),(62,'Quinton de Kock','Pts-103 Mat-8 Wkt-0 Dot-0 4s-20 6s-8 Cat-7 Stmp-3',NULL),(63,'Tim Southee','Pts-100 Mat-8 Wkt-5 Dot-59 4s-5 6s-1 Cat-3 Stmp-0',NULL),(64,'Prasidh Krishna','Pts-97.5 Mat-7 Wkt-10 Dot-60 4s-0 6s-0 Cat-1 Stmp-0',NULL),(65,'Manish Pandey','Pts-95 Mat-15 Wkt-0 Dot-0 4s-22 6s-5 Cat-9 Stmp-0',NULL),(66,'Vijay Shankar','Pts-92.5 Mat-13 Wkt-1 Dot-8 4s-11 6s-11 Cat-6 Stmp-0',NULL),(67,'Shivam Mavi','Pts-91.5 Mat-9 Wkt-5 Dot-64 4s-1 6s-0 Cat-3 Stmp-0',NULL),(68,'Ben Cutting','Pts-89 Mat-9 Wkt-2 Dot-24 4s-5 6s-8 Cat-7 Stmp-0',NULL),(69,'Mustafizur Rahman','Pts-88.5 Mat-7 Wkt-7 Dot-59 4s-0 6s-0 Cat-2 Stmp-0',NULL),(70,'Mandeep Singh','Pts-88.5 Mat-14 Wkt-0 Dot-0 4s-16 6s-11 Cat-4 Stmp-0',NULL),(71,'Colin de Grandhomme','Pts-85.5 Mat-9 Wkt-2 Dot-26 4s-4 6s-10 Cat-3 Stmp-0',NULL),(72,'Harshal Patel','Pts-84 Mat-5 Wkt-7 Dot-36 4s-1 6s-6 Cat-0 Stmp-0',NULL),(73,'Chris Woakes','Pts-83.5 Mat-5 Wkt-8 Dot-47 4s-1 6s-1 Cat-1 Stmp-0',NULL),(74,'Rahul Tewatia','Pts-83 Mat-8 Wkt-6 Dot-41 4s-5 6s-1 Cat-2 Stmp-0',NULL),(75,'Rahul Tripathi','Pts-83 Mat-12 Wkt-0 Dot-0 4s-18 6s-8 Cat-4 Stmp-0',NULL),(76,'Mohit Sharma','Pts-82 Mat-9 Wkt-7 Dot-50 4s-1 6s-0 Cat-2 Stmp-0',NULL),(77,'Shubman Gill','Pts-80 Mat-13 Wkt-0 Dot-0 4s-22 6s-5 Cat-3 Stmp-0',NULL),(78,'Axar Patel','Pts-78 Mat-9 Wkt-3 Dot-41 4s-3 6s-4 Cat-2 Stmp-0',NULL),(79,'Carlos Brathwaite','Pts-76 Mat-4 Wkt-5 Dot-23 4s-1 6s-8 Cat-2 Stmp-0',NULL),(80,'Moeen Ali','Pts-73.5 Mat-5 Wkt-3 Dot-27 4s-4 6s-6 Cat-2 Stmp-0',NULL),(81,'Parthiv Patel','Pts-71.5 Mat-6 Wkt-0 Dot-0 4s-20 6s-4 Cat-3 Stmp-0',NULL),(82,'Dhawal Kulkarni','Pts-70.5 Mat-8 Wkt-4 Dot-54 4s-0 6s-0 Cat-1 Stmp-0',NULL),(83,'Washington Sundar','Pts-69.5 Mat-7 Wkt-4 Dot-29 4s-5 6s-4 Cat-0 Stmp-0',NULL),(84,'Ish Sodhi','Pts-68.5 Mat-6 Wkt-5 Dot-51 4s-0 6s-0 Cat-0 Stmp-0',NULL),(85,'Ben Laughlin','Pts-68 Mat-7 Wkt-9 Dot-34 4s-0 6s-0 Cat-1 Stmp-0',NULL),(86,'Billy Stanlake','Pts-67 Mat-4 Wkt-5 Dot-47 4s-1 6s-0 Cat-0 Stmp-0',NULL),(87,'Faf du Plessis','Pts-66 Mat-6 Wkt-0 Dot-0 4s-17 6s-6 Cat-1 Stmp-0',NULL),(88,'Imran Tahir','Pts-66 Mat-6 Wkt-6 Dot-40 4s-0 6s-0 Cat-2 Stmp-0',NULL),(89,'Barinder Sran','Pts-66 Mat-6 Wkt-4 Dot-47 4s-0 6s-0 Cat-2 Stmp-0',NULL),(90,'Avesh Khan','Pts-65.5 Mat-6 Wkt-4 Dot-44 4s-0 6s-0 Cat-3 Stmp-0',NULL),(91,'Brendon McCullum','Pts-63.5 Mat-6 Wkt-0 Dot-0 4s-16 6s-6 Cat-1 Stmp-0',NULL),(92,'Mitchell Johnson','Pts-63 Mat-6 Wkt-2 Dot-46 4s-2 6s-0 Cat-2 Stmp-0',NULL),(93,'D\' Arcy Short','Pts-61.5 Mat-7 Wkt-1 Dot-8 4s-11 6s-5 Cat-2 Stmp-0',NULL),(94,'Chris Morris','Pts-61 Mat-4 Wkt-3 Dot-31 4s-3 6s-2 Cat-2 Stmp-0',NULL),(95,'Liam Plunkett','Pts-61 lMat-7 Wkt-4 Dot-42 4s-0 6s-0 Cat-2 Stmp-0',NULL),(96,'Wriddhiman Saha','Pts-61 Mat-11 Wkt-0 Dot-0 4s-17 6s-1 Cat-5 Stmp-1',NULL),(97,'Marcus Stoinis','Pts-59.5 Mat-7 Wkt-3 Dot-15 4s-6 6s-4 Cat-2 Stmp-0',NULL),(98,'Kieron Pollard','Pts-59.5 Mat-9 Wkt-0 Dot-0 4s-10 6s-7 Cat-4 Stmp-0',NULL),(99,'Alex Hales','Pts-58.5 Mat-6 Wkt-0 Dot-0 4s-13 6s-6 Cat-2 Stmp-0',NULL),(100,'Jason Roy','Pts-57 Mat-5 Wkt-0 Dot-0 4s-9 6s-7 Cat-4 Stmp-0',NULL),(101,'Aaron Finch','Pts-53 Mat-10 Wkt-0 Dot-0 4s-6 6s-8 Cat-4 Stmp-0',NULL),(102,'Sam Billings','Pts-50 Mat-10 Wkt-0 Dot-0 4s-8 6s-5 Cat-5 Stmp-0',NULL),(103,'Sandeep Lamichhane','Pts-47.5 Mat-3 Wkt-5 Dot-30 4s-0 6s-0 Cat-0 Stmp-0',NULL),(104,'Mohammed Shami','Pts-46 Mat-4 Wkt-3 Dot-28 4s-1 6s-0 Cat-2 Stmp-0',NULL),(105,'Tom Curran','Pts-46 Mat-5 Wkt-6 Dot-15 4s-3 6s-0 Cat-1 Stmp-0',NULL),(106,'Mayank Agarwal','Pts-45 Mat-11 Wkt-0 Dot-0 4s-9 6s-5 Cat-2 Stmp-0',NULL),(107,'Dan Christian','Pts-39.5 Mat-4 Wkt-4 Dot-22 4s-0 6s-1 Cat-0 Stmp-0',NULL),(108,'Basil Thampi','Pts-39.5 Mat-4 Wkt-5 Dot-17 4s-0 6s-0 Cat-2 Stmp-0',NULL),(109,'Karn Sharma','Pts-37.5 Mat-6 Wkt-4 Dot-16 4s-0 6s-0 Cat-3 Stmp-0',NULL),(110,'Colin Munro','Pts-36.5 Mat-5 Wkt-0 Dot-0 4s-7 6s-4 Cat-2 Stmp-0',NULL),(111,'Shahbaz Nadeem','Pts-34 Mat-6 Wkt-3 Dot-21 4s-0 6s-0 Cat-1 Stmp-0',NULL),(112,'Heinrich Klaasen','Pts-33.5 Mat-4 Wkt-0 Dot-0 4s-5 6s-1 Cat-3 Stmp-4',NULL),(113,'David Willey','Pts-32 Mat-3 Wkt-2 Dot-20 4s-0 6s-0 Cat-2 Stmp-0',NULL),(114,'Shreevats Goswami','Pts-31 Mat-6 Wkt-0 Dot-0 4s-6 6s-1 Cat-5 Stmp-0',NULL),(115,'Murugan Ashwin','Pts-30.5 Mat-2 Wkt-3 Dot-20 4s-0 6s-0 Cat-0 Stmp-0',NULL),(116,'Corey Anderson','Pts-30 Mat-3 Wkt-3 Dot-16 4s-0 6s-1 Cat-0 Stmp-0',NULL),(117,'Deepak Hooda','Pts-29 Mat-9 Wkt-0 Dot-6 4s-2 6s-3 Cat-3 Stmp-0',NULL),(118,'Abhishek Sharma','Pts-27.5 Mat-3 Wkt-0 Dot-0 4s-3 6s-5 Cat-1 Stmp-0',NULL),(119,'Javon Searles','Pts-27.5 Mat-4 Wkt-2 Dot-7 4s-0 6s-1 Cat-4 Stmp-0',NULL),(120,'KM Asif','Pts-26.5 Mat-2 Wkt-3 Dot-16 4s-0 6s-0 Cat-0 Stmp-0',NULL),(121,'Gautam Gambhir','Pts-26 Mat-6 Wkt-0 Dot-0 4s-8 6s-1 Cat-1 Stmp-0',NULL),(122,'Sarfaraz Khan','Pts-26 Mat-7 Wkt-0 Dot-0 4s-7 6s-1 Cat-2 Stmp-0',NULL),(123,'Kulwant Khejroliya','Pts-25 Mat-3 Wkt-2 Dot-18 4s-0 6s-0 Cat-0 Stmp-0',NULL),(124,'Yuvraj Singh','Pts-24.5 Mat-8 Wkt-0 Dot-0 4s-6 6s-2 Cat-1 Stmp-0',NULL),(125,'Manoj Tiwary','Pts-23.5 Mat-5 Wkt-0 Dot-0 4s-4 6s-1 Cat-4 Stmp-0',NULL),(126,'Mohammad Nabi','Pts-23 Mat-2 Wkt-1 Dot-12 4s-3 6s-0 Cat-0 Stmp-0',NULL),(127,'Vinay Kumar','Pts-22.5 Mat-2 Wkt-2 Dot-8 4s-1 6s-0 Cat-2 Stmp-0',NULL),(128,'JP Duminy','Pts-22 Mat-6 Wkt-0 Dot-6 4s-3 6s-1 Cat-2 Stmp-0',NULL),(129,'Rinku Singh','Pts-20 Mat-4 Wkt-0 Dot-0 4s-4 6s-0 Cat-4 Stmp-0',NULL),(130,'Manan Vohra','Pts-19 Mat-4 Wkt-0 Dot-0 4s-2 6s-4 Cat-0 Stmp-0',NULL),(131,'Stuart Binny','Pts-16.5 Mat-7 Wkt-0 Dot-2 4s-2 6s-2 Cat-1 Stmp-0',NULL),(132,'David Miller','Pts-14.5 Mat-3 Wkt-0 Dot-0 4s-3 6s-2 Cat-0 Stmp-0',NULL),(133,'Pawan Negi','Pts-12.5 Mat-2 Wkt-1 Dot-9 4s-0 6s-0 Cat-0 Stmp-0',NULL),(134,'Chris Jordan','Pts-11 Mat-1 Wkt-0 Dot-11 4s-0 6s-0 Cat-0 Stmp-0',NULL),(135,'Anureet Singh','Pts-10 Mat-3 Wkt-1 Dot-4 4s-0 6s-0 Cat-1 Stmp-0',NULL),(136,'Kedar Jadhav','Pts-9.5 Mat-1 Wkt-0 Dot-0 4s-1 6s-2 Cat-0 Stmp-0',NULL),(137,'Mark Wood','Pts-8.5 Mat-1 Wkt-0 Dot-6 4s-0 6s-0 Cat-1 Stmp-0',NULL),(138,'Junior Dala','Pts-7 Mat-1 Wkt-0 Dot-7 4s-0 6s-0 Cat-0 Stmp-0',NULL),(139,'Khaleel Ahmed','Pts-7 Mat-1 Wkt-0 Dot-7 4s-0 6s-0 Cat-0 Stmp-0',NULL),(140,'Akila Dananjaya','Pts-6 Mat-1 Wkt-0 Dot-6 4s-0 6s-0 Cat-0 Stmp-0',NULL),(141,'Akshdeep Nath','Pts-5 Mat-1 Wkt-0 Dot-0 4s-1 6s-0 Cat-1 Stmp-0',NULL),(142,'Pradeep Sangwan','Pts-5 Mat-1 Wkt-0 Dot-5 4s-0 6s-0 Cat-0 Stmp-0',NULL),(143,'Prashant Chopra','Pts-5 Mat-1 Wkt-0 Dot-0 4s-2 6s-0 Cat-0 Stmp-0',NULL),(144,'Mahipal Lomror','Pts-4.5 Mat-2 Wkt-0 Dot-2 4s-1 6s-0 Cat-0 Stmp-0',NULL),(145,'Dhruv Shorey','Pts-3.5 Mat-1 Wkt-0 Dot-0 4s-0 6s-1 Cat-0 Stmp-0',NULL),(146,'Murali Vijay','Pts-3.5 Mat-1 Wkt-0 Dot-0 4s-0 6s-1 Cat-0 Stmp-0',NULL),(147,'Ankit Sharma','Pts-1 Mat-1 Wkt-0 Dot-1 4s-0 6s-0 Cat-0 Stmp-0',NULL),(148,'Naman Ojha','Pts-0 Mat-1 Wkt-0 Dot-0 4s-0 6s-0 Cat-0 Stmp-0',NULL),(149,'Ricky Bhui','Pts-0 Mat-1 Wkt-0 Dot-0 4s-0 6s-0 Cat-0 Stmp-0',NULL);

--
-- Table structure for table `IPL_STADIUM`
--

DROP TABLE IF EXISTS IPL_STADIUM;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IPL_STADIUM (
  STADIUM_ID int(5) NOT NULL,
  STADIUM_NAME varchar(100) NOT NULL,
  CITY varchar(50) NOT NULL,
  CAPACITY int(8) DEFAULT NULL,
  ADDRESS varchar(200) DEFAULT NULL,
  CONTACT_NO bigint(12) DEFAULT NULL,
  PRIMARY KEY (STADIUM_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPL_STADIUM`
--

INSERT INTO IPL_STADIUM VALUES (1,'Wankhede Stadium','Mumbai',45000,'Wankhede Stadium, Mumbai',6232108776),(2,'Feroz Shah Kotla','Delhi',48000,'Feroz Shah Kotla, Delhi',7471757880),(3,'Eden Gardens','Kolkata',90000,'Eden Gardens, Kolkata',6847069662),(4,'Rajiv Gandhi International Stadium','Hyderabad',55000,'Rajiv Gandhi International Stadium, Hyderabad',6555859360),(5,'MS Chidambaram Stadium','Chennai',50000,'MS Chidambaram Stadium, Chennai',9534880787),(6,'Sawai Mansingh Stadium','Jaipur',30000,'Sawai Mansingh Stadium, Jaipur',9255986370),(7,'M. Chinnaswamy Stadium','Bengaluru',40000,'M. Chinnaswamy Stadium, Bengaluru',6680348191),(8,'Is Bindra Stadium','Mohali',30000,'Is Bindra Stadium, Mohali',6370992699),(9,'Holkar Stadium','Indore',30000,'Holkar Stadium, Indore',9045919945),(10,'MCA Stadium','Pune',35000,'MCA Stadium, Pune',8541151117);

--
-- Table structure for table `IPL_TEAM`
--

DROP TABLE IF EXISTS IPL_TEAM;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IPL_TEAM (
  TEAM_ID int(5) NOT NULL,
  TEAM_NAME varchar(50) NOT NULL,
  TEAM_CITY varchar(50) DEFAULT NULL,
  REMARKS varchar(200) DEFAULT NULL,
  PRIMARY KEY (TEAM_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPL_TEAM`
--

INSERT INTO IPL_TEAM VALUES (1,'Chennai Super Kings','Chennai, Tamil Nadu','CSK'),(2,'Delhi Daredevils','Delhi, NCR','DD'),(3,'Kings XI Punjab','Mohali (Chandigarh CR), Punjab','KXIP'),(4,'Kolkata Knight Riders','Kolkata, West Bengal','KKR'),(5,'Mumbai Indians','Mumbai, Maharashtra','MI'),(6,'Rajasthan Royals','Jaipur, Rajasthan','RR'),(7,'Royal Challengers Bangalore','Bangalore, Karnataka','RCB'),(8,'Sunrisers Hyderabad','Hyderabad, Telangana','SRH');

--
-- Table structure for table `IPL_TEAM_PLAYERS`
--

DROP TABLE IF EXISTS IPL_TEAM_PLAYERS;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IPL_TEAM_PLAYERS (
  TEAM_ID int(5) NOT NULL,
  PLAYER_ID int(6) NOT NULL,
  PLAYER_ROLE varchar(30) NOT NULL,
  REMARKS varchar(200) DEFAULT NULL,
  PRIMARY KEY (TEAM_ID,PLAYER_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPL_TEAM_PLAYERS`
--

INSERT INTO IPL_TEAM_PLAYERS VALUES (1,2,'Bowler','TEAM - RR'),(1,9,'All-Rounder','TEAM - MI'),(1,19,'Batsman','TEAM - KXIP'),(1,26,'Bowler','TEAM - MI'),(1,27,'All-Rounder','TEAM - MI'),(1,28,'Batsman','TEAM - SRH'),(1,34,'Bowler','TEAM - RCB'),(1,36,'Bowler','TEAM - DD'),(1,57,'Bowler','TEAM - SRH'),(1,59,'Batsman','TEAM - SRH'),(1,87,'Bowler','TEAM - CSK'),(1,88,'Batsman','TEAM - DD'),(1,102,'Batsman','TEAM - KXIP'),(1,109,'Bowler','TEAM - SRH'),(1,113,'Batsman','TEAM - MI'),(1,120,'Bowler','TEAM - CSK'),(1,136,'All-Rounder','TEAM - CSK'),(1,137,'Bowler','TEAM - CSK'),(1,145,'Batsman','TEAM - KXIP'),(1,146,'All-Rounder','TEAM - KXIP'),(2,3,'Batsman','TEAM - KXIP'),(2,25,'Batsman','TEAM - KXIP'),(2,42,'Batsman','TEAM - RCB'),(2,52,'All-Rounder','TEAM - DD'),(2,58,'Bowler','TEAM - SRH'),(2,60,'Batsman','TEAM - DD'),(2,66,'Bowler','TEAM - DD'),(2,72,'All-Rounder','TEAM - RCB'),(2,74,'Bowler','TEAM - CSK'),(2,90,'Bowler','TEAM - MI'),(2,94,'Batsman','TEAM - RCB'),(2,95,'Batsman','TEAM - DD'),(2,100,'All-Rounder','TEAM - KXIP'),(2,103,'Batsman','TEAM - MI'),(2,104,'Bowler','TEAM - RCB'),(2,107,'All-Rounder','TEAM - SRH'),(2,110,'Bowler','TEAM - RCB'),(2,111,'Bowler','TEAM - CSK'),(2,118,'All-Rounder','TEAM - MI'),(2,121,'All-Rounder','TEAM - DD'),(2,138,'All-Rounder','TEAM - CSK'),(2,148,'Batsman','TEAM - MI'),(3,4,'Batsman','TEAM - SRH'),(3,17,'All-Rounder','TEAM - CSK'),(3,31,'Wicket Keeper','TEAM - RR'),(3,41,'Bowler','TEAM - SRH'),(3,48,'All-Rounder','TEAM - KKR'),(3,54,'All-Rounder','TEAM - KKR'),(3,76,'Batsman','TEAM - KXIP'),(3,78,'All-Rounder','TEAM - SRH'),(3,89,'All-Rounder','TEAM - DD'),(3,97,'Batsman','TEAM - CSK'),(3,101,'Batsman','TEAM - KXIP'),(3,106,'Wicket Keeper','TEAM - SRH'),(3,124,'All-Rounder','TEAM - RR'),(3,125,'Bowler','TEAM - RR'),(3,132,'All-Rounder','TEAM - RR'),(3,141,'Bowler','TEAM - DD'),(4,1,'All-Rounder','TEAM - RR'),(4,5,'Batsman','TEAM - KKR'),(4,15,'Bowler','TEAM - KXIP'),(4,21,'Wicket Keeper','TEAM - MI'),(4,29,'Bowler','TEAM - CSK'),(4,35,'All-Rounder','TEAM - CSK'),(4,40,'Batsman','TEAM - MI'),(4,47,'All-Rounder','TEAM - DD'),(4,53,'Bowler','TEAM - KKR'),(4,64,'Wicket Keeper','TEAM - CSK'),(4,67,'Bowler','TEAM - KXIP'),(4,77,'Batsman','TEAM - KXIP'),(4,92,'Wicket Keeper','TEAM - DD'),(4,105,'All-Rounder','TEAM - RCB'),(4,119,'All-Rounder','TEAM - CSK'),(4,127,'Bowler','TEAM - CSK'),(4,129,'Batsman','TEAM - KKR'),(5,8,'Bowler','TEAM - SRH'),(5,10,'Wicket Keeper','TEAM - RR'),(5,12,'Bowler','TEAM - KXIP'),(5,24,'Bowler','TEAM - KKR'),(5,33,'Bowler','TEAM - KKR'),(5,43,'All-Rounder','TEAM - SRH'),(5,46,'Bowler','TEAM - DD'),(5,50,'All-Rounder','TEAM - RCB'),(5,56,'Bowler','TEAM - RCB'),(5,68,'Bowler','TEAM - MI'),(5,69,'All-Rounder','TEAM - MI'),(5,98,'Bowler','TEAM - CSK'),(5,128,'Bowler','TEAM - SRH'),(5,140,'Batsman','TEAM - DD'),(5,142,'All-Rounder','TEAM - DD'),(6,13,'Wicket Keeper','TEAM - KKR'),(6,23,'Bowler','TEAM - RCB'),(6,32,'Bowler','TEAM - DD'),(6,37,'Bowler','TEAM - KXIP'),(6,44,'All-Rounder','TEAM - KKR'),(6,45,'Batsman','TEAM - RR'),(6,51,'Bowler','TEAM - DD'),(6,55,'Batsman','TEAM - KXIP'),(6,75,'Bowler','TEAM - KKR'),(6,82,'All-Rounder','TEAM - SRH'),(6,84,'Wicket Keeper','TEAM - RCB'),(6,85,'All-Rounder','TEAM - RCB'),(6,93,'Bowler','TEAM - KXIP'),(6,112,'Batsman','TEAM - KKR'),(6,131,'Bowler','TEAM - RR'),(6,135,'All-Rounder','TEAM - CSK'),(6,143,'Batsman','TEAM - KKR'),(6,144,'Batsman','TEAM - KKR'),(6,147,'All-Rounder','TEAM - KXIP'),(7,16,'All-Rounder','TEAM - RR'),(7,18,'Wicket Keeper','TEAM - KKR'),(7,20,'All-Rounder','TEAM - KXIP'),(7,30,'Wicket Keeper','TEAM - SRH'),(7,49,'Batsman','TEAM - MI'),(7,62,'Bowler','TEAM - RCB'),(7,63,'Bowler','TEAM - KXIP'),(7,70,'Bowler','TEAM - RCB'),(7,71,'Bowler','TEAM - RCB'),(7,73,'Batsman','TEAM - CSK'),(7,80,'All-Rounder','TEAM - DD'),(7,81,'Bowler','TEAM - MI'),(7,83,'Batsman','TEAM - KKR'),(7,91,'Bowler','TEAM - MI'),(7,115,'Bowler','TEAM - RR'),(7,116,'Bowler','TEAM - DD'),(7,122,'Bowler','TEAM - MI'),(7,123,'Bowler','TEAM - RR'),(7,130,'Bowler','TEAM - RCB'),(7,133,'Wicket Keeper','TEAM - CSK'),(8,6,'Bowler','TEAM - KKR'),(8,7,'Batsman','TEAM - DD'),(8,11,'Batsman','TEAM - CSK'),(8,14,'All-Rounder','TEAM - RCB'),(8,22,'Bowler','TEAM - RR'),(8,38,'All-Rounder','TEAM - RR'),(8,39,'Batsman','TEAM - RR'),(8,61,'Wicket Keeper','TEAM - RCB'),(8,65,'Bowler','TEAM - CSK'),(8,79,'All-Rounder','TEAM - SRH'),(8,86,'Batsman','TEAM - CSK'),(8,96,'Batsman','TEAM - RCB'),(8,99,'Bowler','TEAM - KKR'),(8,108,'Bowler','TEAM - SRH'),(8,114,'All-Rounder','TEAM - DD'),(8,117,'All-Rounder','TEAM - DD'),(8,126,'Bowler','TEAM - SRH'),(8,134,'All-Rounder','TEAM - CSK'),(8,139,'Bowler','TEAM - DD'),(8,149,'Wicket Keeper','TEAM - MI');

--
-- Table structure for table `IPL_TEAM_STANDINGS`
--

DROP TABLE IF EXISTS IPL_TEAM_STANDINGS;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IPL_TEAM_STANDINGS (
  TEAM_ID int(4) NOT NULL,
  TOURNMT_ID int(4) NOT NULL,
  MATCHES_PLAYED int(2) DEFAULT NULL,
  MATCHES_WON int(2) DEFAULT NULL,
  MATCHES_LOST int(2) DEFAULT NULL,
  MATCHES_TIED int(2) DEFAULT NULL,
  NO_RESULT int(2) DEFAULT NULL,
  TOTAL_POINTS int(3) DEFAULT NULL,
  REMARKS varchar(200) DEFAULT NULL,
  PRIMARY KEY (TEAM_ID,TOURNMT_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPL_TEAM_STANDINGS`
--

INSERT INTO IPL_TEAM_STANDINGS VALUES (1,2017,14,9,5,0,0,18,NULL),(1,2018,14,9,5,0,0,18,'Champions'),(2,2017,14,6,8,0,0,12,NULL),(2,2018,14,5,9,0,0,10,NULL),(3,2017,14,7,7,0,0,14,NULL),(3,2018,14,6,8,0,0,12,NULL),(4,2017,14,8,6,0,0,16,NULL),(4,2018,14,8,6,0,0,16,NULL),(5,2017,14,10,4,0,0,20,'Champions'),(5,2018,14,6,8,0,0,12,NULL),(6,2017,14,9,5,0,0,8,NULL),(6,2018,14,7,7,0,0,14,NULL),(7,2017,14,3,10,0,1,7,NULL),(7,2018,14,6,8,0,0,12,NULL),(8,2017,14,8,5,0,1,17,NULL),(8,2018,14,9,5,0,0,18,NULL);

--
-- Table structure for table `IPL_TOURNAMENT`
--

DROP TABLE IF EXISTS IPL_TOURNAMENT;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IPL_TOURNAMENT (
  TOURNMT_ID int(4) NOT NULL,
  TOURNMT_NAME varchar(100) NOT NULL,
  FROM_DATE datetime NOT NULL,
  TO_DATE datetime DEFAULT NULL,
  TEAM_COUNT int(2) DEFAULT NULL,
  TOTAL_MATCHES int(3) DEFAULT NULL,
  REMARKS varchar(200) DEFAULT NULL,
  PRIMARY KEY (TOURNMT_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPL_TOURNAMENT`
--

INSERT INTO IPL_TOURNAMENT VALUES (2008,'IPL SEASON - 2008','2008-04-18 00:00:00','2008-06-01 00:00:00',8,59,'Champions - RR'),(2009,'IPL SEASON - 2009','2009-04-18 00:00:00','2009-05-24 00:00:00',8,59,'Champions - DC'),(2010,'IPL SEASON - 2010','2010-03-12 00:00:00','2010-04-25 00:00:00',8,60,'Champions - CSK'),(2011,'IPL SEASON - 2011','2011-04-08 00:00:00','2011-05-28 00:00:00',10,74,'Champions - CSK'),(2012,'IPL SEASON - 2012','2012-04-04 00:00:00','2012-05-27 00:00:00',9,76,'Champions - KKR'),(2013,'IPL SEASON - 2013','2013-04-03 00:00:00','2013-05-26 00:00:00',9,76,'Champions - MI'),(2014,'IPL SEASON - 2014','2014-04-16 00:00:00','2014-06-01 00:00:00',8,60,'Champions - KKR'),(2015,'IPL SEASON - 2015','2015-04-08 00:00:00','2015-05-24 00:00:00',8,60,'Champions - MI'),(2016,'IPL SEASON - 2016','2016-04-09 00:00:00','2016-05-29 00:00:00',8,60,'Champions - SRH'),(2017,'IPL SEASON - 2017','2017-04-05 00:00:00','2017-05-21 00:00:00',8,60,'Champions - MI'),(2018,'IPL SEASON - 2018','2018-04-07 00:00:00','2018-05-27 00:00:00',8,60,'Champions - CSK');

--
-- Table structure for table `IPL_USER`
--

DROP TABLE IF EXISTS IPL_USER;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IPL_USER (
  USER_ID varchar(20) NOT NULL,
  `PASSWORD` varchar(40) NOT NULL,
  USER_TYPE varchar(20) DEFAULT 'Bidder',
  REMARKS varchar(200) DEFAULT NULL,
  PRIMARY KEY (USER_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPL_USER`
--

INSERT INTO IPL_USER VALUES ('admin','Qiheq667','Admin','System administrator'),('USR002','Uuauj599','Bidder',NULL),('USR003','Eouaj349','Bidder',NULL),('USR004','Xegah916','Bidder',NULL),('USR005','Fabai193','Bidder',NULL),('USR006','Debih891','Bidder',NULL),('USR007','Toias988','Bidder',NULL),('USR008','Oijiy996','Bidder',NULL),('USR009','Wixeb478','Bidder',NULL),('USR010','Dojoh725','Bidder',NULL),('USR011','Caxuc180','Bidder',NULL),('USR012','Zuvut888','Bidder',NULL),('USR013','Waiay336','Bidder',NULL),('USR014','Eunud150','Bidder',NULL),('USR015','Fodiy520','Bidder',NULL),('USR016','Taaon354','Bidder',NULL),('USR017','Qegat246','Bidder',NULL),('USR018','Latan774','Bidder',NULL),('USR019','Kenax859','Bidder',NULL),('USR020','Oehov784','Bidder',NULL),('USR021','Jidao220','Bidder',NULL),('USR022','Mesey643','Bidder',NULL),('USR023','Jotup765','Bidder',NULL),('USR024','Diooo769','Bidder',NULL),('USR025','Diyal596','Bidder',NULL),('USR026','Eotir416','Bidder',NULL),('USR027','Tojec918','Bidder',NULL),('USR028','Coiep158','Bidder',NULL),('USR029','Gazou951','Bidder',NULL),('USR030','Yuiip331','Bidder',NULL),('USR031','Kuoom311','Bidder',NULL);
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
