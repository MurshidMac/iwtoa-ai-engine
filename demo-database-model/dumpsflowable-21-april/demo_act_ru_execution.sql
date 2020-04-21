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
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint DEFAULT NULL,
  `IS_CONCURRENT_` tinyint DEFAULT NULL,
  `IS_SCOPE_` tinyint DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint DEFAULT NULL,
  `IS_MI_ROOT_` tinyint DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `CACHED_ENT_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int DEFAULT NULL,
  `TASK_COUNT_` int DEFAULT NULL,
  `JOB_COUNT_` int DEFAULT NULL,
  `TIMER_JOB_COUNT_` int DEFAULT NULL,
  `SUSP_JOB_COUNT_` int DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int DEFAULT NULL,
  `VAR_COUNT_` int DEFAULT NULL,
  `ID_LINK_COUNT_` int DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
INSERT INTO `act_ru_execution` VALUES ('223423',1,'223423',NULL,NULL,'loan:1:10',NULL,'223423',NULL,1,0,1,0,0,1,NULL,'',NULL,'startEvent1','2020-04-20 15:13:00.639',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('223425',3,'223423',NULL,'223423','loan:1:10',NULL,'223423','sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD',1,0,0,0,0,1,NULL,'',NULL,NULL,'2020-04-20 15:13:00.639',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('223465',1,'223465',NULL,NULL,'loan:1:10',NULL,'223465',NULL,1,0,1,0,0,1,NULL,'',NULL,'startEvent1','2020-04-20 15:13:00.804',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('223467',3,'223465',NULL,'223465','loan:1:10',NULL,'223465','sid-786BC734-A9A0-419D-87AD-DF3EAA269671',1,0,0,0,0,1,NULL,'',NULL,NULL,'2020-04-20 15:13:00.804',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('223535',1,'223535',NULL,NULL,'loan:1:10',NULL,'223535',NULL,1,0,1,0,0,1,NULL,'',NULL,'startEvent1','2020-04-20 15:13:00.977',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('223537',2,'223535',NULL,'223535','loan:1:10',NULL,'223535','sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD',1,0,0,0,0,1,NULL,'',NULL,NULL,'2020-04-20 15:13:00.977',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('223601',1,'223601',NULL,NULL,'loan:1:10',NULL,'223601',NULL,1,0,1,0,0,1,NULL,'',NULL,'startEvent1','2020-04-20 15:13:01.126',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('223603',2,'223601',NULL,'223601','loan:1:10',NULL,'223601','sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD',1,0,0,0,0,1,NULL,'',NULL,NULL,'2020-04-20 15:13:01.126',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('223721',1,'223721',NULL,NULL,'loan:1:10',NULL,'223721',NULL,1,0,1,0,0,1,NULL,'',NULL,'startEvent1','2020-04-20 15:13:01.414',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('223723',1,'223721',NULL,'223721','loan:1:10',NULL,'223721','sid-E499C4FD-601A-428B-8A94-53A4702BCA5A',1,0,0,0,0,1,NULL,'',NULL,NULL,'2020-04-20 15:13:01.414',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('227523',1,'227523',NULL,NULL,'defect:1:227510',NULL,'227523',NULL,1,0,1,0,0,1,NULL,'',NULL,'startEvent1','2020-04-20 23:52:06.724',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('227525',1,'227523',NULL,'227523','defect:1:227510',NULL,'227523','sid-E499C4FD-601A-428B-8A94-53A4702BCA5A',1,0,0,0,0,1,NULL,'',NULL,NULL,'2020-04-20 23:52:06.730',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('227547',1,'227547',NULL,NULL,'defect:1:227510',NULL,'227547',NULL,1,0,1,0,0,1,NULL,'',NULL,'startEvent1','2020-04-20 23:52:07.073',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('227549',1,'227547',NULL,'227547','defect:1:227510',NULL,'227547','sid-E499C4FD-601A-428B-8A94-53A4702BCA5A',1,0,0,0,0,1,NULL,'',NULL,NULL,'2020-04-20 23:52:07.074',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('230001',1,'230001',NULL,NULL,'defect:1:227510',NULL,'230001',NULL,1,0,1,0,0,1,NULL,'',NULL,'startEvent1','2020-04-20 23:57:36.388',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('230003',1,'230001',NULL,'230001','defect:1:227510',NULL,'230001','sid-E499C4FD-601A-428B-8A94-53A4702BCA5A',1,0,0,0,0,1,NULL,'',NULL,NULL,'2020-04-20 23:57:36.410',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('99759',1,'99759',NULL,NULL,'loan:1:10',NULL,'99759',NULL,1,0,1,0,0,1,NULL,'',NULL,'startEvent1','2020-04-20 14:23:37.701',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL),('99761',2,'99759',NULL,'99759','loan:1:10',NULL,'99759','sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD',1,0,0,0,0,1,NULL,'',NULL,NULL,'2020-04-20 14:23:37.702',NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL);
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-21  0:09:53
