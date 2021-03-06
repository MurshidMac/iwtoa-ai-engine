-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_RU_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_RU_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
INSERT INTO `act_ru_variable` VALUES ('223424',1,'null','initiator','223423','223423',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('223466',1,'null','initiator','223465','223465',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('223536',1,'null','initiator','223535','223535',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('223549',1,'integer','income','223423','223423',NULL,NULL,NULL,NULL,NULL,NULL,10000,'10000',NULL),('223550',1,'integer','loan','223423','223423',NULL,NULL,NULL,NULL,NULL,NULL,50000,'50000',NULL),('223551',1,'string','nationality','223423','223423',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Dutch',NULL),('223552',1,'string','fullname','223423','223423',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'John Doe 608',NULL),('223553',1,'integer','age','223423','223423',NULL,NULL,NULL,NULL,NULL,NULL,46,'46',NULL),('223554',1,'string','home','223423','223423',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Owned',NULL),('223555',1,'string','guidance','223423','223423',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No guidance',NULL),('223602',1,'null','initiator','223601','223601',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('223615',1,'integer','income','223465','223465',NULL,NULL,NULL,NULL,NULL,NULL,10000,'10000',NULL),('223616',1,'integer','loan','223465','223465',NULL,NULL,NULL,NULL,NULL,NULL,50000,'50000',NULL),('223617',1,'string','nationality','223465','223465',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Belgian',NULL),('223618',1,'string','fullname','223465','223465',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'John Doe 893',NULL),('223619',1,'integer','age','223465','223465',NULL,NULL,NULL,NULL,NULL,NULL,41,'41',NULL),('223620',1,'string','home','223465','223465',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rented',NULL),('223621',1,'string','guidance','223465','223465',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No collateral, so consider viability',NULL),('223675',1,'integer','income','223535','223535',NULL,NULL,NULL,NULL,NULL,NULL,10000,'10000',NULL),('223676',1,'integer','loan','223535','223535',NULL,NULL,NULL,NULL,NULL,NULL,50000,'50000',NULL),('223677',1,'string','nationality','223535','223535',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Belgian',NULL),('223678',1,'string','fullname','223535','223535',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'John Doe 962',NULL),('223679',1,'integer','age','223535','223535',NULL,NULL,NULL,NULL,NULL,NULL,11,'11',NULL),('223680',1,'string','home','223535','223535',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rented',NULL),('223681',1,'string','guidance','223535','223535',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Young, so need further checks',NULL),('223707',1,'string','form_loanreview_outcome','223423','223423',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Consider',NULL),('223722',1,'null','initiator','223721','223721',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('223735',1,'integer','income','223601','223601',NULL,NULL,NULL,NULL,NULL,NULL,10000,'10000',NULL),('223736',1,'integer','loan','223601','223601',NULL,NULL,NULL,NULL,NULL,NULL,50000,'50000',NULL),('223737',1,'string','nationality','223601','223601',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Dutch',NULL),('223738',1,'string','fullname','223601','223601',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'John Doe 699',NULL),('223739',1,'integer','age','223601','223601',NULL,NULL,NULL,NULL,NULL,NULL,53,'53',NULL),('223740',1,'string','home','223601','223601',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Owned',NULL),('223741',1,'string','guidance','223601','223601',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No guidance',NULL),('223767',1,'string','form_loanreview_outcome','223465','223465',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Accept',NULL),('227524',1,'null','initiator','227523','227523',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('227548',1,'null','initiator','227547','227547',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('230002',1,'null','initiator','230001','230001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('99760',1,'null','initiator','99759','99759',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('99975',1,'integer','income','99759','99759',NULL,NULL,NULL,NULL,NULL,NULL,10000,'10000',NULL),('99976',1,'integer','loan','99759','99759',NULL,NULL,NULL,NULL,NULL,NULL,50000,'50000',NULL),('99977',1,'string','nationality','99759','99759',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Dutch',NULL),('99978',1,'string','fullname','99759','99759',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'John Doe 204',NULL),('99979',1,'integer','age','99759','99759',NULL,NULL,NULL,NULL,NULL,NULL,44,'44',NULL),('99980',1,'string','home','99759','99759',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Owned',NULL),('99981',1,'string','guidance','99759','99759',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No guidance',NULL);
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-21  0:09:51
