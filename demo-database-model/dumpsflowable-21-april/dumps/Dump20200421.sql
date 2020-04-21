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
-- Table structure for table `act_dmn_databasechangelog`
--

DROP TABLE IF EXISTS `act_dmn_databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_dmn_databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_dmn_databasechangelog`
--

LOCK TABLES `act_dmn_databasechangelog` WRITE;
/*!40000 ALTER TABLE `act_dmn_databasechangelog` DISABLE KEYS */;
INSERT INTO `act_dmn_databasechangelog` VALUES ('1','activiti','org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml','2020-04-20 01:56:54',1,'EXECUTED','7:d878c2672ead57b5801578fd39c423af','createTable tableName=ACT_DMN_DEPLOYMENT; createTable tableName=ACT_DMN_DEPLOYMENT_RESOURCE; createTable tableName=ACT_DMN_DECISION_TABLE','',NULL,'3.5.3',NULL,NULL,'7328014589'),('2','flowable','org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml','2020-04-20 01:56:54',2,'EXECUTED','7:15a6bda1fce898a58e04fe6ac2d89f54','createTable tableName=ACT_DMN_HI_DECISION_EXECUTION','',NULL,'3.5.3',NULL,NULL,'7328014589');
/*!40000 ALTER TABLE `act_dmn_databasechangelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_dmn_databasechangeloglock`
--

DROP TABLE IF EXISTS `act_dmn_databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_dmn_databasechangeloglock` (
  `ID` int NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_dmn_databasechangeloglock`
--

LOCK TABLES `act_dmn_databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `act_dmn_databasechangeloglock` DISABLE KEYS */;
INSERT INTO `act_dmn_databasechangeloglock` VALUES (1,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `act_dmn_databasechangeloglock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_dmn_decision_table`
--

DROP TABLE IF EXISTS `act_dmn_decision_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_dmn_decision_table` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `VERSION_` int DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `CATEGORY_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_dmn_decision_table`
--

LOCK TABLES `act_dmn_decision_table` WRITE;
/*!40000 ALTER TABLE `act_dmn_decision_table` DISABLE KEYS */;
INSERT INTO `act_dmn_decision_table` VALUES ('13','Credite advice',1,'credit',NULL,'11','1','','dmn-credit.dmn',NULL),('227513','Defect advice',1,'advice',NULL,'227511','227501','','defect/defect/dmn-advice.dmn',NULL);
/*!40000 ALTER TABLE `act_dmn_decision_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_dmn_deployment`
--

DROP TABLE IF EXISTS `act_dmn_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_dmn_deployment` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `CATEGORY_` varchar(255) DEFAULT NULL,
  `DEPLOY_TIME_` datetime DEFAULT NULL,
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_dmn_deployment`
--

LOCK TABLES `act_dmn_deployment` WRITE;
/*!40000 ALTER TABLE `act_dmn_deployment` DISABLE KEYS */;
INSERT INTO `act_dmn_deployment` VALUES ('11',NULL,NULL,'2020-04-20 02:03:15','','1'),('227511',NULL,NULL,'2020-04-20 23:52:07','','227501');
/*!40000 ALTER TABLE `act_dmn_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_dmn_deployment_resource`
--

DROP TABLE IF EXISTS `act_dmn_deployment_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_dmn_deployment_resource` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `RESOURCE_BYTES_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_dmn_deployment_resource`
--

LOCK TABLES `act_dmn_deployment_resource` WRITE;
/*!40000 ALTER TABLE `act_dmn_deployment_resource` DISABLE KEYS */;
INSERT INTO `act_dmn_deployment_resource` VALUES ('12','dmn-credit.dmn','11',_binary '<definitions xmlns=\"http://www.omg.org/spec/DMN/20151101\" id=\"definition_e3c70382-bdaa-11e7-a234-baca12a46316\" name=\"Credite advice\" namespace=\"http://www.flowable.org/dmn\">\n  <decision id=\"credit\" name=\"Credite advice\">\n    <decisionTable id=\"decisionTable_52422dad-bd88-11e7-90a6-92915f9dcc1e\" hitPolicy=\"FIRST\">\n      <input label=\"Age\">\n        <inputExpression id=\"inputExpression_1\" typeRef=\"number\">\n          <text>age</text>\n        </inputExpression>\n      </input>\n      <input label=\"Status\">\n        <inputExpression id=\"inputExpression_3\" typeRef=\"string\">\n          <text>home</text>\n        </inputExpression>\n        <inputValues>\n          <text>\"Rented\",\"Mortgaged\",\"Owned\"</text>\n        </inputValues>\n      </input>\n      <output id=\"outputExpression_2\" label=\"Credit Guidance\" name=\"guidance\" typeRef=\"string\"></output>\n      <rule>\n        <inputEntry id=\"inputEntry_1_1\">\n          <text><![CDATA[< 25]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_1\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_1\">\n          <text><![CDATA[\"Young, so need further checks\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_2\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_2\">\n          <text><![CDATA[\"Rented\"]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_2\">\n          <text><![CDATA[\"No collateral, so consider viability\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_3\">\n          <text><![CDATA[> 60]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_3\">\n          <text><![CDATA[\"Mortgaged\"]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_3\">\n          <text><![CDATA[\"Potentially overstretched debt to consider\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_4\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_4\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_4\">\n          <text><![CDATA[\"No guidance\"]]></text>\n        </outputEntry>\n      </rule>\n    </decisionTable>\n  </decision>\n</definitions>'),('227512','defect/defect/dmn-advice.dmn','227511',_binary '<definitions xmlns=\"http://www.omg.org/spec/DMN/20151101\" id=\"definition_e3c70382-bdaa-11e7-a234-baca12a46316\" name=\"Credite advice\" namespace=\"http://www.flowable.org/dmn\">\n  <decision id=\"advice\" name=\"Defect advice\">\n    <decisionTable id=\"decisionTable_52422dad-bd88-11e7-90a6-92915f9dcc1e\" hitPolicy=\"FIRST\">\n      <input label=\"Age\">\n        <inputExpression id=\"inputExpression_1\" typeRef=\"number\">\n          <text>age</text>\n        </inputExpression>\n      </input>\n      <input label=\"Status\">\n        <inputExpression id=\"inputExpression_3\" typeRef=\"string\">\n          <text>home</text>\n        </inputExpression>\n        <inputValues>\n          <text>\"Rented\",\"Mortgaged\",\"Owned\"</text>\n        </inputValues>\n      </input>\n      <output id=\"outputExpression_2\" label=\"Defect Guide\" name=\"guidance\" typeRef=\"string\"></output>\n      <rule>\n        <inputEntry id=\"inputEntry_1_1\">\n          <text><![CDATA[< 25]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_1\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_1\">\n          <text><![CDATA[\"New Home, so need further checks\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_2\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_2\">\n          <text><![CDATA[\"Rented\"]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_2\">\n          <text><![CDATA[\"No collateral, so consider viability\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_3\">\n          <text><![CDATA[> 60]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_3\">\n          <text><![CDATA[\"Mortgaged\"]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_3\">\n          <text><![CDATA[\"Potentially overstretched debt in home to consider\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_4\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_4\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_4\">\n          <text><![CDATA[\"No guidance\"]]></text>\n        </outputEntry>\n      </rule>\n    </decisionTable>\n  </decision>\n</definitions>');
/*!40000 ALTER TABLE `act_dmn_deployment_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_dmn_hi_decision_execution`
--

DROP TABLE IF EXISTS `act_dmn_hi_decision_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_dmn_hi_decision_execution` (
  `ID_` varchar(255) NOT NULL,
  `DECISION_DEFINITION_ID_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `START_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `INSTANCE_ID_` varchar(255) DEFAULT NULL,
  `EXECUTION_ID_` varchar(255) DEFAULT NULL,
  `ACTIVITY_ID_` varchar(255) DEFAULT NULL,
  `FAILED_` bit(1) DEFAULT b'0',
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `EXECUTION_JSON_` longtext,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_dmn_hi_decision_execution`
--

LOCK TABLES `act_dmn_hi_decision_execution` WRITE;
/*!40000 ALTER TABLE `act_dmn_hi_decision_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_dmn_hi_decision_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_evt_log`
--

DROP TABLE IF EXISTS `act_evt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_evt_log`
--

LOCK TABLES `act_evt_log` WRITE;
/*!40000 ALTER TABLE `act_evt_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_evt_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_fo_databasechangelog`
--

DROP TABLE IF EXISTS `act_fo_databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_fo_databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_fo_databasechangelog`
--

LOCK TABLES `act_fo_databasechangelog` WRITE;
/*!40000 ALTER TABLE `act_fo_databasechangelog` DISABLE KEYS */;
INSERT INTO `act_fo_databasechangelog` VALUES ('1','activiti','org/flowable/form/db/liquibase/flowable-form-db-changelog.xml','2020-04-20 01:56:55',1,'EXECUTED','7:252bd5cb28cf86685ed67eb15d910118','createTable tableName=ACT_FO_FORM_DEPLOYMENT; createTable tableName=ACT_FO_FORM_RESOURCE; createTable tableName=ACT_FO_FORM_DEFINITION; createTable tableName=ACT_FO_FORM_INSTANCE','',NULL,'3.5.3',NULL,NULL,'7328015373'),('2','flowable','org/flowable/form/db/liquibase/flowable-form-db-changelog.xml','2020-04-20 01:56:55',2,'EXECUTED','7:4850f9311e7503d7ea30a372e79b4ea2','addColumn tableName=ACT_FO_FORM_INSTANCE','',NULL,'3.5.3',NULL,NULL,'7328015373');
/*!40000 ALTER TABLE `act_fo_databasechangelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_fo_databasechangeloglock`
--

DROP TABLE IF EXISTS `act_fo_databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_fo_databasechangeloglock` (
  `ID` int NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_fo_databasechangeloglock`
--

LOCK TABLES `act_fo_databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `act_fo_databasechangeloglock` DISABLE KEYS */;
INSERT INTO `act_fo_databasechangeloglock` VALUES (1,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `act_fo_databasechangeloglock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_fo_form_definition`
--

DROP TABLE IF EXISTS `act_fo_form_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_fo_form_definition` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `VERSION_` int DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `CATEGORY_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_fo_form_definition`
--

LOCK TABLES `act_fo_form_definition` WRITE;
/*!40000 ALTER TABLE `act_fo_form_definition` DISABLE KEYS */;
INSERT INTO `act_fo_form_definition` VALUES ('19','Loan Application',1,'loanin',NULL,'14','1','','form-loanin.form',NULL),('20','Loan review',1,'loanreview',NULL,'14','1','','form-loanreview.form',NULL),('21','Advanced review',1,'advreview',NULL,'14','1','','form-advreview.form',NULL),('22','Get name',1,'name',NULL,'14','1','','form-name.form',NULL),('227519','Advanced review',2,'advreview',NULL,'227514','227501','','defect/defect/form-advreview.form',NULL),('227520','Get name',2,'name',NULL,'227514','227501','','defect/defect/form-name.form',NULL),('227521','Defect Request Application',1,'defectin',NULL,'227514','227501','','defect/defect/form-defectin.form',NULL),('227522','Defect review',1,'defectreview',NULL,'227514','227501','','defect/defect/form-defectreview.form',NULL);
/*!40000 ALTER TABLE `act_fo_form_definition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_fo_form_deployment`
--

DROP TABLE IF EXISTS `act_fo_form_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_fo_form_deployment` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `CATEGORY_` varchar(255) DEFAULT NULL,
  `DEPLOY_TIME_` datetime DEFAULT NULL,
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_fo_form_deployment`
--

LOCK TABLES `act_fo_form_deployment` WRITE;
/*!40000 ALTER TABLE `act_fo_form_deployment` DISABLE KEYS */;
INSERT INTO `act_fo_form_deployment` VALUES ('14',NULL,NULL,'2020-04-20 02:03:15','','1'),('227514',NULL,NULL,'2020-04-20 23:52:07','','227501');
/*!40000 ALTER TABLE `act_fo_form_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_fo_form_instance`
--

DROP TABLE IF EXISTS `act_fo_form_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_fo_form_instance` (
  `ID_` varchar(255) NOT NULL,
  `FORM_DEFINITION_ID_` varchar(255) NOT NULL,
  `TASK_ID_` varchar(255) DEFAULT NULL,
  `PROC_INST_ID_` varchar(255) DEFAULT NULL,
  `PROC_DEF_ID_` varchar(255) DEFAULT NULL,
  `SUBMITTED_DATE_` datetime DEFAULT NULL,
  `SUBMITTED_BY_` varchar(255) DEFAULT NULL,
  `FORM_VALUES_ID_` varchar(255) DEFAULT NULL,
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `SCOPE_ID_` varchar(255) DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_fo_form_instance`
--

LOCK TABLES `act_fo_form_instance` WRITE;
/*!40000 ALTER TABLE `act_fo_form_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_fo_form_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_fo_form_resource`
--

DROP TABLE IF EXISTS `act_fo_form_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_fo_form_resource` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `RESOURCE_BYTES_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_fo_form_resource`
--

LOCK TABLES `act_fo_form_resource` WRITE;
/*!40000 ALTER TABLE `act_fo_form_resource` DISABLE KEYS */;
INSERT INTO `act_fo_form_resource` VALUES ('15','form-loanin.form','14',_binary '{\"name\":\"Loan Application\",\"key\":\"loanin\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname:\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":\"\",\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"loan\",\"name\":\"Requested loan\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":true,\"placeholder\":\"Loan amount requested...\",\"layout\":null},{\"fieldType\":\"OptionFormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"radio-buttons\",\"value\":\"Rented\",\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"optionType\":null,\"hasEmptyValue\":null,\"options\":[{\"id\":null,\"name\":\"Rented\"},{\"id\":null,\"name\":\"Mortgaged\"},{\"id\":null,\"name\":\"Owned\"}]},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"OptionFormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"dropdown\",\"value\":\"Please choose one...\",\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"optionType\":null,\"hasEmptyValue\":true,\"options\":[{\"id\":null,\"name\":\"Please choose one...\"},{\"id\":null,\"name\":\"Belgian\"},{\"id\":null,\"name\":\"Dutch\"},{\"id\":null,\"name\":\"French\"},{\"id\":null,\"name\":\"German\"},{\"id\":null,\"name\":\"Italian\"},{\"id\":null,\"name\":\"Spanish\"},{\"id\":null,\"name\":\"UK\"},{\"id\":null,\"name\":\"Other\"}]},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"Total current income...\",\"layout\":null}],\"outcomes\":[]}'),('16','form-loanreview.form','14',_binary '{\"name\":\"Loan review\",\"key\":\"loanreview\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"loan\",\"name\":\"Loan\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"guidance\",\"name\":\"Guidance\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null}],\"outcomes\":[{\"id\":null,\"name\":\"Reject\"},{\"id\":null,\"name\":\"Consider\"},{\"id\":null,\"name\":\"Accept\"}]}'),('17','form-advreview.form','14',_binary '{\"name\":\"Advanced review\",\"key\":\"advreview\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"loan\",\"name\":\"Loan\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null}],\"outcomes\":[{\"id\":null,\"name\":\"Reject\"},{\"id\":null,\"name\":\"Accept\"}]}'),('18','form-name.form','14',_binary '{\"name\":\"Get name\",\"key\":\"name\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"Please enter the full name of the applicant...\",\"layout\":null}],\"outcomes\":[]}'),('227515','defect/defect/form-advreview.form','227514',_binary '{\"name\":\"Advanced review\",\"key\":\"advreview\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"defect\",\"name\":\"Defect\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null}],\"outcomes\":[{\"id\":null,\"name\":\"Reject\"},{\"id\":null,\"name\":\"Accept\"}]}'),('227516','defect/defect/form-name.form','227514',_binary '{\"name\":\"Get name\",\"key\":\"name\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"Please enter the full name of the applicant...\",\"layout\":null}],\"outcomes\":[]}'),('227517','defect/defect/form-defectin.form','227514',_binary '{\"name\":\"Defect Request Application\",\"key\":\"defectin\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname:\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":\"\",\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"defect\",\"name\":\"Request Defect\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":true,\"placeholder\":\"No of Defects requested...\",\"layout\":null},{\"fieldType\":\"OptionFormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"radio-buttons\",\"value\":\"Rented\",\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"optionType\":null,\"hasEmptyValue\":null,\"options\":[{\"id\":null,\"name\":\"Rented\"},{\"id\":null,\"name\":\"Mortgaged\"},{\"id\":null,\"name\":\"Owned\"}]},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"OptionFormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"dropdown\",\"value\":\"Please choose one...\",\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"optionType\":null,\"hasEmptyValue\":true,\"options\":[{\"id\":null,\"name\":\"Please choose one...\"},{\"id\":null,\"name\":\"Belgian\"},{\"id\":null,\"name\":\"Dutch\"},{\"id\":null,\"name\":\"French\"},{\"id\":null,\"name\":\"German\"},{\"id\":null,\"name\":\"Italian\"},{\"id\":null,\"name\":\"Spanish\"},{\"id\":null,\"name\":\"UK\"},{\"id\":null,\"name\":\"Other\"}]},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"Total current income...\",\"layout\":null}],\"outcomes\":[]}'),('227518','defect/defect/form-defectreview.form','227514',_binary '{\"name\":\"Defect review\",\"key\":\"defectreview\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"defect\",\"name\":\"Defect\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"guidance\",\"name\":\"Guidance\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null}],\"outcomes\":[{\"id\":null,\"name\":\"Reject\"},{\"id\":null,\"name\":\"Consider\"},{\"id\":null,\"name\":\"Accept\"}]}');
/*!40000 ALTER TABLE `act_fo_form_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

LOCK TABLES `act_ge_bytearray` WRITE;
/*!40000 ALTER TABLE `act_ge_bytearray` DISABLE KEYS */;
INSERT INTO `act_ge_bytearray` VALUES ('2',1,'form-loanin.form','1',_binary '{\"name\":\"Loan Application\",\"key\":\"loanin\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname:\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":\"\",\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"loan\",\"name\":\"Requested loan\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":true,\"placeholder\":\"Loan amount requested...\",\"layout\":null},{\"fieldType\":\"OptionFormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"radio-buttons\",\"value\":\"Rented\",\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"optionType\":null,\"hasEmptyValue\":null,\"options\":[{\"id\":null,\"name\":\"Rented\"},{\"id\":null,\"name\":\"Mortgaged\"},{\"id\":null,\"name\":\"Owned\"}]},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"OptionFormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"dropdown\",\"value\":\"Please choose one...\",\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"optionType\":null,\"hasEmptyValue\":true,\"options\":[{\"id\":null,\"name\":\"Please choose one...\"},{\"id\":null,\"name\":\"Belgian\"},{\"id\":null,\"name\":\"Dutch\"},{\"id\":null,\"name\":\"French\"},{\"id\":null,\"name\":\"German\"},{\"id\":null,\"name\":\"Italian\"},{\"id\":null,\"name\":\"Spanish\"},{\"id\":null,\"name\":\"UK\"},{\"id\":null,\"name\":\"Other\"}]},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"Total current income...\",\"layout\":null}],\"outcomes\":[]}',0),('227502',1,'defect/defect/form-advreview.form','227501',_binary '{\"name\":\"Advanced review\",\"key\":\"advreview\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"defect\",\"name\":\"Defect\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null}],\"outcomes\":[{\"id\":null,\"name\":\"Reject\"},{\"id\":null,\"name\":\"Accept\"}]}',0),('227503',1,'defect/defect/form-name.form','227501',_binary '{\"name\":\"Get name\",\"key\":\"name\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"Please enter the full name of the applicant...\",\"layout\":null}],\"outcomes\":[]}',0),('227504',1,'defect/defect/defect.app','227501',_binary '{\"key\":\"defect\",\"name\":\"Defect App\",\"description\":\"Applications for Defects\",\"theme\":\"theme-7\",\"icon\":\"glyphicon-ok\",\"usersAccess\":null,\"groupsAccess\":null}',0),('227505',1,'defect/defect/form-defectin.form','227501',_binary '{\"name\":\"Defect Request Application\",\"key\":\"defectin\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname:\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":\"\",\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"defect\",\"name\":\"Request Defect\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":true,\"placeholder\":\"No of Defects requested...\",\"layout\":null},{\"fieldType\":\"OptionFormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"radio-buttons\",\"value\":\"Rented\",\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"optionType\":null,\"hasEmptyValue\":null,\"options\":[{\"id\":null,\"name\":\"Rented\"},{\"id\":null,\"name\":\"Mortgaged\"},{\"id\":null,\"name\":\"Owned\"}]},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"OptionFormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"dropdown\",\"value\":\"Please choose one...\",\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"optionType\":null,\"hasEmptyValue\":true,\"options\":[{\"id\":null,\"name\":\"Please choose one...\"},{\"id\":null,\"name\":\"Belgian\"},{\"id\":null,\"name\":\"Dutch\"},{\"id\":null,\"name\":\"French\"},{\"id\":null,\"name\":\"German\"},{\"id\":null,\"name\":\"Italian\"},{\"id\":null,\"name\":\"Spanish\"},{\"id\":null,\"name\":\"UK\"},{\"id\":null,\"name\":\"Other\"}]},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"Total current income...\",\"layout\":null}],\"outcomes\":[]}',0),('227506',1,'defect/defect/form-defectreview.form','227501',_binary '{\"name\":\"Defect review\",\"key\":\"defectreview\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"defect\",\"name\":\"Defect\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"guidance\",\"name\":\"Guidance\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null}],\"outcomes\":[{\"id\":null,\"name\":\"Reject\"},{\"id\":null,\"name\":\"Consider\"},{\"id\":null,\"name\":\"Accept\"}]}',0),('227507',1,'defect/defect/defect.bpmn','227501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:flowable=\"http://flowable.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.flowable.org/processdef\">\n  <process id=\"defect\" name=\"Defect Request\" isExecutable=\"true\">\n    <startEvent id=\"startEvent1\" flowable:initiator=\"initiator\" flowable:formKey=\"name\"></startEvent>\n    <userTask id=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\" name=\"Capture defect details\" flowable:assignee=\"${initiator}\" flowable:formKey=\"defectin\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-966371C5-CCF2-4711-8F8D-A0F09F806C64\" sourceRef=\"startEvent1\" targetRef=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\"></sequenceFlow>\n    <sequenceFlow id=\"sid-F7DA85F8-2FA7-44FE-BF12-07E6CF04188B\" sourceRef=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\" targetRef=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\"></sequenceFlow>\n    <userTask id=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\" name=\"Defect Review\" flowable:assignee=\"${initiator}\" flowable:formKey=\"defectreview\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-1008F0B8-53E4-42FA-85C1-00264671FA13\" sourceRef=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\" targetRef=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-2E640A0B-D82B-45A8-8BCC-B2E70F07E46F\" sourceRef=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\" targetRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\"></sequenceFlow>\n    <userTask id=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\" name=\"Advanced Defect Review\" flowable:assignee=\"${initiator}\" flowable:formKey=\"advreview\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\" name=\"Inform Acceptance\" flowable:assignee=\"${initiator}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\" name=\"Inform Rejection\" flowable:assignee=\"${initiator}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <exclusiveGateway id=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-49699BF8-3761-4BFC-BEAD-8FD13225481F\" sourceRef=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\" targetRef=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\"></exclusiveGateway>\n    <endEvent id=\"sid-CC27E554-CFAE-4146-A34B-E30FD4687102\"></endEvent>\n    <sequenceFlow id=\"sid-73D814EE-CA76-4353-8B78-8656C2766F34\" sourceRef=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\" targetRef=\"sid-CC27E554-CFAE-4146-A34B-E30FD4687102\"></sequenceFlow>\n    <sequenceFlow id=\"sid-7CB955DC-9C32-4B4C-BEA5-645629BD108F\" sourceRef=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\" targetRef=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\"></sequenceFlow>\n    <serviceTask id=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\" name=\"Defect advice\" flowable:type=\"dmn\">\n      <extensionElements>\n        <flowable:field name=\"decisionTableReferenceKey\">\n          <flowable:string><![CDATA[advice]]></flowable:string>\n        </flowable:field>\n      </extensionElements>\n    </serviceTask>\n    <sequenceFlow id=\"sid-410F9B72-3AEA-4BB0-9F4C-B749488FE835\" name=\"Accept\" sourceRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" targetRef=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_defectreview_outcome == \"Accept\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-60C38402-D299-4107-8029-1F52BC3099F0\" name=\"May be\" sourceRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" targetRef=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_defectreview_outcome == \"Consider\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-114F299D-8AE9-457D-9C12-6DE8FEFA7099\" name=\"Reject\" sourceRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" targetRef=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_defectreview_outcome == \"Reject\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-FEFCC3DC-BDE1-44D0-B41C-EA10F0F3C858\" name=\"No\" sourceRef=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\" targetRef=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_advreview_outcome == \"Reject\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-CFAB6DD6-EAA0-4F48-9930-8010328F07B4\" name=\"Yes\" sourceRef=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\" targetRef=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_advreview_outcome == \"Accept\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-A6343F4C-9235-4C84-9F8E-65E775ED73EE\" sourceRef=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\" targetRef=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_defect\">\n    <bpmndi:BPMNPlane bpmnElement=\"defect\" id=\"BPMNPlane_defect\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"40.0\" y=\"183.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\" id=\"BPMNShape_sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"115.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\" id=\"BPMNShape_sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"405.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" id=\"BPMNShape_sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"550.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\" id=\"BPMNShape_sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"645.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\" id=\"BPMNShape_sid-786BC734-A9A0-419D-87AD-DF3EAA269671\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"755.0\" y=\"255.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\" id=\"BPMNShape_sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"755.0\" y=\"65.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\" id=\"BPMNShape_sid-8670129B-EBAC-4B60-A335-36F93DB70138\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"785.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\" id=\"BPMNShape_sid-F3E3FE06-D696-47AB-864B-8B31B230542C\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"915.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-CC27E554-CFAE-4146-A34B-E30FD4687102\" id=\"BPMNShape_sid-CC27E554-CFAE-4146-A34B-E30FD4687102\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"990.0\" y=\"184.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\" id=\"BPMNShape_sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"260.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-410F9B72-3AEA-4BB0-9F4C-B749488FE835\" id=\"BPMNEdge_sid-410F9B72-3AEA-4BB0-9F4C-B749488FE835\">\n        <omgdi:waypoint x=\"570.1025641025641\" y=\"217.8974358974359\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"570.5\" y=\"295.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"755.0\" y=\"295.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FEFCC3DC-BDE1-44D0-B41C-EA10F0F3C858\" id=\"BPMNEdge_sid-FEFCC3DC-BDE1-44D0-B41C-EA10F0F3C858\">\n        <omgdi:waypoint x=\"805.0\" y=\"178.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"805.0\" y=\"145.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1008F0B8-53E4-42FA-85C1-00264671FA13\" id=\"BPMNEdge_sid-1008F0B8-53E4-42FA-85C1-00264671FA13\">\n        <omgdi:waypoint x=\"360.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"405.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-60C38402-D299-4107-8029-1F52BC3099F0\" id=\"BPMNEdge_sid-60C38402-D299-4107-8029-1F52BC3099F0\">\n        <omgdi:waypoint x=\"590.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"645.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-49699BF8-3761-4BFC-BEAD-8FD13225481F\" id=\"BPMNEdge_sid-49699BF8-3761-4BFC-BEAD-8FD13225481F\">\n        <omgdi:waypoint x=\"745.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"785.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-F7DA85F8-2FA7-44FE-BF12-07E6CF04188B\" id=\"BPMNEdge_sid-F7DA85F8-2FA7-44FE-BF12-07E6CF04188B\">\n        <omgdi:waypoint x=\"215.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"260.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-CFAB6DD6-EAA0-4F48-9930-8010328F07B4\" id=\"BPMNEdge_sid-CFAB6DD6-EAA0-4F48-9930-8010328F07B4\">\n        <omgdi:waypoint x=\"805.0\" y=\"218.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"805.0\" y=\"255.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-2E640A0B-D82B-45A8-8BCC-B2E70F07E46F\" id=\"BPMNEdge_sid-2E640A0B-D82B-45A8-8BCC-B2E70F07E46F\">\n        <omgdi:waypoint x=\"505.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"550.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-73D814EE-CA76-4353-8B78-8656C2766F34\" id=\"BPMNEdge_sid-73D814EE-CA76-4353-8B78-8656C2766F34\">\n        <omgdi:waypoint x=\"955.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"990.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-966371C5-CCF2-4711-8F8D-A0F09F806C64\" id=\"BPMNEdge_sid-966371C5-CCF2-4711-8F8D-A0F09F806C64\">\n        <omgdi:waypoint x=\"70.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"115.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-A6343F4C-9235-4C84-9F8E-65E775ED73EE\" id=\"BPMNEdge_sid-A6343F4C-9235-4C84-9F8E-65E775ED73EE\">\n        <omgdi:waypoint x=\"855.0\" y=\"105.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.5\" y=\"105.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.1069518716578\" y=\"178.10695187165774\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-114F299D-8AE9-457D-9C12-6DE8FEFA7099\" id=\"BPMNEdge_sid-114F299D-8AE9-457D-9C12-6DE8FEFA7099\">\n        <omgdi:waypoint x=\"570.1069518716578\" y=\"178.10695187165774\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"570.5\" y=\"105.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"755.0\" y=\"105.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7CB955DC-9C32-4B4C-BEA5-645629BD108F\" id=\"BPMNEdge_sid-7CB955DC-9C32-4B4C-BEA5-645629BD108F\">\n        <omgdi:waypoint x=\"855.0\" y=\"295.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.0\" y=\"295.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.0\" y=\"218.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('227508',1,'defect/defect/dmn-advice.dmn','227501',_binary '<definitions xmlns=\"http://www.omg.org/spec/DMN/20151101\" id=\"definition_e3c70382-bdaa-11e7-a234-baca12a46316\" name=\"Credite advice\" namespace=\"http://www.flowable.org/dmn\">\n  <decision id=\"advice\" name=\"Defect advice\">\n    <decisionTable id=\"decisionTable_52422dad-bd88-11e7-90a6-92915f9dcc1e\" hitPolicy=\"FIRST\">\n      <input label=\"Age\">\n        <inputExpression id=\"inputExpression_1\" typeRef=\"number\">\n          <text>age</text>\n        </inputExpression>\n      </input>\n      <input label=\"Status\">\n        <inputExpression id=\"inputExpression_3\" typeRef=\"string\">\n          <text>home</text>\n        </inputExpression>\n        <inputValues>\n          <text>\"Rented\",\"Mortgaged\",\"Owned\"</text>\n        </inputValues>\n      </input>\n      <output id=\"outputExpression_2\" label=\"Defect Guide\" name=\"guidance\" typeRef=\"string\"></output>\n      <rule>\n        <inputEntry id=\"inputEntry_1_1\">\n          <text><![CDATA[< 25]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_1\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_1\">\n          <text><![CDATA[\"New Home, so need further checks\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_2\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_2\">\n          <text><![CDATA[\"Rented\"]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_2\">\n          <text><![CDATA[\"No collateral, so consider viability\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_3\">\n          <text><![CDATA[> 60]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_3\">\n          <text><![CDATA[\"Mortgaged\"]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_3\">\n          <text><![CDATA[\"Potentially overstretched debt in home to consider\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_4\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_4\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_4\">\n          <text><![CDATA[\"No guidance\"]]></text>\n        </outputEntry>\n      </rule>\n    </decisionTable>\n  </decision>\n</definitions>',0),('227509',1,'defect/defect/defect.defect.png','227501',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0Y\0\0\0O�a\0\09\"IDATx^\�\�}�$e}/𣥈h-�X�*M0\�k������D\�(�xoղ��qa-V�eH�CE��&ފe��D@A.*Q8\�.��\�\�K�ˮ��+�,\���\�w�\�\�\�\�3=s�L�\�y�\���֙\�\�\�3�<\�O�NO��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`�dY�߆\r.��\��z�\�lvvV&�\���Ժu\�\�_�fͱ�\�\0\0\0�Ć\r�\�;Ͷlْ\�ڵ+{��\�e\�	\�{x�׮]�cvv�\��3\0\0�ƅ3\��h|�*�\�\�͛�\�\�\�\�F\0\0\0и�5g���9\�\�\�\�?#\0\0\0h\\�{|`*���yğ\0\0\04�jA\���6gn�Jv�u�\'\�\�\�\�^\0\0\0��*��\�\�\�n�\�\�\�W�\�^	\�¼xy?\n\0\0\0LD���=�w�P\�\�\��e`y?\n\0\0\0LD����_����\"a^���\0\0\0&�JA\�ُ��y��2~\0\0\0���� \0\0\0�DT)��*��y��2~\0\0\0��*��~x\�@!�H�//\�GA\0\0\0���R\�v\�O�ۮ�\�b@�\�\�\�\��Q\0\0\0`\"�B\��\�\��0-^N\�EA\0\0\0���Tؽ;�k�?´0o`y;\n\0\0\0L\�|��\�\�\�\��\�\��E¼�L�8/\n\0\0\0L\�Ђ�\�\�\�\�\�d�^}�@ NX&,\�l��Q\0\0\0`\"\�\n�0,\��\0\0\0&�� P嬀a	��\�\'գ \0\0\0�D�\���&^�T��\0\0\0\0QV�ŋ�\0\0\0\0� �V\0\0\0���� \0\0\0�D(�\0\0\0&BA �(\0\0\00\niEA\0\0\0��PH+\n\0\0\0L��@ZQ\0\0\0`\"Ҋ�\0\0\0\0� �V\0\0\0���� \0\0\0�D(�\0\0\0&BA �(\0\0\00\niEA\0\0\0�Z�?��\�{Y\ZO�)�\0\0\0j9��㳹�,(�\0\0\0j\�+�,(�\0\0\0j))�Ҋ�\0\0\0\0��\�\���� \0\0\0�(9�\�T\�J��\�\�o\�\0`,��U|�ԗ돟\�+�\�y\�\�q.�\�\�\�C͞��ge\�s\���}�\���<�\�\�;\�l͚5\�ũ�{\rKx�\��\�76���8C�\�l\0\0\ZcpI[\�W(\�)<�\�\�Η۸qc��\�\�\�W\�}7\�pC~�U�z\��rM�\��R\'\n�\�f\0\��K\�j�B@a��@q�\�\�\�>�\�\�C\�.��\�=\���ݶm[�bŊ\��\�^��e�V�ʶo߾\�z\���7eGq\�^\�?��l���\�\��\�O~2\�a\��E]4��\�ر#�\�R��nݚ�z\�\�A�g��\�ٽ�\�;�Q˅\�[\��\�9\�yN��׼&�馛J߅�\��{�^!\n�\�f\0\��K\�j�B@�jA\���\�\�V�^�\���r!\�8ܿ\���/}\�K�\�p`ܿ췾��\�{\�\�kZX�\�o\�s���\�\�n�\��v8X����\���\�_����)���\��uݺu�\�w����\\�\��\�\��\�u�x||�\�\�^�\�Q�\�6\0�\�\\\�uU\�+�=�X\�\�q\�{\����>�`�p;.�\���\�ܹ3۽{�^\�\�\�\�+�!�~��|^x�x�^���\�;j��3\��\�GK��\�~�߽\�=�� P�m6\0\0�1��\��\��ˇ�\�8�Bn�S\�˖-�6\��xz($���\�\�Ư��ʽ^\�<0�q�-Wy䑡��\�/\�w�\��GA�\�l\0\0\ZcpI\�5Y8�\���\��/~��\�3\�<�tٲi�\�/��!��<?���O<1��\�\�~v\�\�	��\���Q\�{\���+��\"�Y|e\�\�}n~?\\k \\�}�\�\���Q�\�6\0�\�\\\�uM\�_\�\���칰\�駟���-[6m��æ_~�\���w�\��\�W�\\����/\�/\n����-۴iӞ\�=�\�O\�o�ZnÆ\rّG�p�\�k_�\����a��瞛��\�/\��\�a8�\��\�\���Q�\�6\0�\�\\\�ue�.&\0z�n����l`^JQ�\�6\0�\�\\\�u\�RX�ti�[��[٥�^:0/�(\�c�\r\0@c.\�i)�%\n�\�f\0\��K�NA �(\�c�\r\0@c.\�:��� P�m6\0\0�1��\�Ҋ�@=�\�\0\04\�\���SH+\n�\�f\0\��K�NA �(\�c�\r\0@c.\�:��� P�m6\0\0�1��\�Ҋ�@=�\�\0\04\�\���SH+\n�\�f\0\��K�NA �(\�c�\r\0@c.\�:��� P�m6\0\0�1��\�Ҋ�@=�\�\0\04\�\���SH+\n�\�f\0\��K�NA �(\�c�\r\0@c.\�:��� P�m6\0\0�1��\�Ҋ�@=�\�\0\04\�\���SH+\n�\�f\0\��K�NA �(\�c�\r\0@c.\�:��� P�m6\0\0�1��\�Ҋ�@=�\�\0\04\�\���SH+\n�\�f\0\��K�NA �(\�c�\r\0@c.\�:��� P�m6\0\0�1��\�Ҋ�@=�\�\0\04\�\���SH+\n�\�f\0\��K�NA �(\�c�\r\0@c.\�իW?�k׮�S�|z�\������\�ψ\�l�\0h��%]�nݺ��l\�2pp*�ϦM�.����9���\�6\0�\�\\\�uk֬9v\�ڵ;6o޼ՙ��\���y\�ƍ�\�\�\�����\�ψ\�l�\0h��%\� ���L��x�{\�r�\�g��\�\�[���_1�&\�l\0\0\Zcp	\�\��\�\��U\�\0\0�\�\\B\�z}ti\�sY\Z\�g�\�f\0\��KH[qv�\\��\�3]l�\0h��%�+:;�Y\�f\0\��KHWtv���\�\0�9���!g8K`\�\�f\0\��KHS8��\�,�)g�\r\0@c.!=\���\"@���\�\�>\�l\0\0\Zcp	\�	g\0�\0\�8K`\n\�f\0\��Kh}�@;\0\0�1�\��*�v\0\0@c.��U\�\0jȲl�\r6\\~\�7�z�\�\�\�\�\�L8����u\�\�ݿf͚c\�ϧ\r��ŏ6$u\��6\�4�\�\��\�\�\�4�_}�@;�\Zz;�o�v\"ٖ-[�]�ve�?��L8\�}\��ڵkw�v\�GǟQ괡ŏ6$u\��6\�4�\�\��\�\�\�4�_}�@;�\ZBE?\�D❋L>�7o\�\�ۑ\�F�ӆ҉6$u\�\�6\�4�\�\��\�t2��W_%\���pz��~\Z	�CoG�;��R�\r�mHꦭm�i�\�\�\�d\Z���J�@\r\�g�E/\��?�\�iCiE��icj��eu�oZ�����hPC\��#m\�6\��\��\��&O��\�\�I��qG^�\r�l~�\�C_��y\�\�x�\�O�ې\�\�d\�\�6\�4�\�\��ߴ2m�W_%\���*;�\�\�\�n�\�\�\�W�\�^	\�¼xy?mܑ�jC�w?�m{��=�\���/�\�\�b��z4{h\�.\'\�km��\�\�\�\�\�6\�4�\�\��ߴ2m�W_%\���*;�{n�\��N�Ƚ��\���2~ڸ#ֆB1\�k?�;�\��Iv\��gk\�؜�s\�m{\n\�v�~\���7�\�e��\�e;Q��.���\�M.mlCM3��N�M+\�\��U\�\0j��#��\��v`^$̋���\�\���6�uǣه/�ɞ�|9\�g�l}x`=��t�\r�\�vhricj��eu�oZ�����hPC��m�؁	�\�\�e��qG>�\r]�\�8��\�o\�4�xYx�ֆ�\�M.mlCM3��N�M+\�\��U\�\0j�#O+mܑ�jC\�k\��_��g��ߘ���\�	�ôb��~\�{�M�km��\�\�\�\�\�6\�4�\�\��ߴ2m�W_�>�\����ϓ\�\�\�CTّ��\�;�\"a^����6\�\�\�\�P�ᢁ�\��x�0���\r��\�\�+m(�\�\�\�\�\�6\�4\�\�ie\����:}z��Ғ@���\�!�\�\�\��\�;�\"a^����6\�\�\�\�P�u��pV@�\\�//\'\�ӕ6\�vhricj���\��ߴ2m�W_�N\���\"��`Uv\�\�\��Iv۵=�\�¼xy?mܑ����\0_A`r\�J�c;4���\r5\�AFu�oZ�����N�p@I!�\�0�*;�t���<L���zi㎼�\r�\��\�+m�,�C�I\�P\�dT����i\��\��\ng��\0UiG�{wv\��ؑ�ia\���2vڸ#Ն\�\��\�=��]T0,?^����=��X\�؆�\� �:�7�L[�\�W�W8�� �4^�\�|;�\�\�\�\��\�\�v\�E¼�L�8/mܑ�jCW�����\��s\��\�e\�\�Z\n��l\�؆�\� �:�7�L[�\�W�[t���`Cw\�wg�\�Z�\�z�\�;\�8a���*��qG>�\rm\��h�?���a�\�\���\�G\�#K�ڐ\�\�⤍m�i2�\�\�ʴ�_}u�Eg	,�\��\�\�\�\��*��qG^ֆB}lw�k\�ʿ�\�?�Ev�{_S \�^{\�\�\�\�[\�\���\�\�\�.��\�\�J�Z���\r5\�AFu�oZ�����R�%O**ۑW�\�Kxl�>��6\�\�\�\�P�P�\����H`�h`Q��\�>��b@C\�J�Z���\r5\�\�:�7�L[�\�W	g,[�L;�q�\�\�\��B�O���;�64,\�?�M`ߤ+m(ޮ,4���z\�؆\Z�d\� cI<�A�oZ�����,\����Wَ\\/mܑkCiE��icjPPn\�嬹���\�\�\��_}�@;��\�\�\�Jw\�\�PZц�n\�؆\ZR,�e|��oZ����\��>\�!�\�\��@v\�i��;rm(�hCR7mlC\r6�6�9�oZ���;�O�N7\r���M��#O+mܑkCiE��ic�i�\�|���V:\�\�\��ͧ\���\��!˲�\�x\���\�/��c�\�\��û\����=.N�jժ\'\�:묇{\��\�\�?����bŊ�ŏ\�\n;�\�\��6�V�!��6��\Z��.7u�ߴ\�\��[�V]�v���V]��-[vh\�v\��\�˿\��ys/��cڹ�7\�M_��;��,\��ꫯ�\�9\��\�+Wf\�w^�o��o\�\���l۶mY~��az�ꩧ>y\�glx\�{\��\�x}mgG�Vڸ#׆Ҋ6$u\�\�64����T\�\�JG�\�B�\�B����.t�\�9\�\�\�诛;���u\�q�F\�\0���\�w}��\�n��\�\�\�\'�\�\0�	˅\�\�<�\�\'\�����\�\�˗�<^w[ّ��6\�ȵ���\rIݴ�\r�a܁⸏\�,�7�t���\�\�\�}i\Z���qIǢ��\�\�/$\�\�\�1\�z\��O�\�k.9\�Ӳ���*�\�o~�W����\�N8\��y\�Ȏ<��qG�\r�mHꦍmh�\�\�>�S�ߴұ�[��\�}<i��9\�}|R�;\�7��C\�?�?�䓳O}\�S\�\�իK\�z\�\���\\Tx0�/~�\�\�O�\�+nz\��ޗ���?\��La=+W�|\�\�O<5~���#O+mܑkCiE��icZ���M����ߴҡ�\�Tkj=,��>��ֳ�z�p\�	�)\�O:\�\�\�_�r�}���p�TX.,\�Wx\"�7~�N	g�Z�*۲eK��\�ַbŊ�m��ؑ��6\�ȵ���\rIݴ�\rU\��\������V:\��\�[M��\�h�skz}5wf��b�駟�\�}�\��!j%\�q\���E��\��~���b@Sg\�z\�}\�\�\�~��e˖�\"~#O+mܑkCiE��ic� >��?����\�\��N�7�t��\�}*\�sUŏ�\�K\�\�\�+�<����±\�\'���8��\�G>�\�ر#>4]���������6Ӗ\����\��\���/}\�;\�\�\�������-\�\�\�Jw\�\�PZц�n\�؆\�\0\���{	�g�Yu�9\�q������VZ\�\�4�\�\�g\�\�\�����s\Z�y\�g\�\�\��\'�w�~U��u����\�L��\�\�n�\�}\�{_�M`\�Vֿr\�\�\��\�\�\�\�Jw\�\�PZц�n\�؆F(��\�\��T`�,���o~\��L�7������!}u��}>S\�\���\��k��5�a\����)\�\�c\��\�\�\��W�\��\'\�?�A�\�\�\r�\�h;�\�\��6�V�!��6��!�\r�\����e\�_07�߰\�\�4�7����\�;e}O_\�a�K\�\�:5\� c\�ႀ�BXo\�Y�<��~����\���7{�\�\'\�\�w�\�s\�I\'=�lٲC\�ײXz\���,��Ǫ\�\�?�\�d�����\�\�~\�K^�\�N\�~���\r,W5\�y\��\�7L\�י�\�0\�\�\�\\r\�%١��=\�Y\�ʎ9昁�U2\�\�Ҏ�\�6$��6$u\�\�6Tb��^ـ�l�Y�\\\���0\��F\��~X�=\�\���gw\�y\���\"\�2��2\�\�C^��d\�zU?���rq&1�X��[�����ϔ�A}�{\��<\�>\�V��*}&[��y���_V�o\�\��/	�J\�vl]t\�\�y\����\�\�>��ۖ/_����,��4ddc�#\�\�?�\�?\�*\�\�W�\�׾�\��\�_?�lՄǇ\�\��u�>ﳟ�\�|��7V\�ɗ�\�s�g�v\�e�lC2�hCR7mlC�����c�\0�l���e�\��\'�\�{_\�o�\���,��\�??�L�b�xz\n�ڊ\�v\�\�>�O\�\�:묁\�\�Lbl�X��j{�T\�+e}Q_펪�C\�\�\�\�vP�τc\�b�O�\��\�g�\���\�J\�vl��\��\�\�\n\�]w\�\�7����,��F6���\�\�\��\��aީ.���y!\�ׯ\�^�\�\�\�g�\��׿��|zxLH��?��\�\�?����\��\"�\�\�,���7�);\�#�i[�n\�N=�\�젃\�\�k�ٽ�\�;�\�\�Y�\��?x�\����\�7l\�0/\�\�\��d\�y\�s�׼\�5\�M7\�T��*Y�y�&ېL.ڐ\�M\�P�%3ؕ\r \����L�2�,,�u$�\�{_\�O;\��={\�;ߙ�\��k����\\���\n˽\�]\�\�\��\�?�\�㌳\�>;;�\���C9$��\��ye�\�0}\��|\�k���\�6m\�o�\�\��\�\���\�\�e����u\�Y��[���Y2��>��v\�B\��δ�*}�w��b~\�X3>�lTX\�kI\�vl���kÆ\r�\�O�v\"{o\�-�kY,%�����\�\�\�x\��y\�*;\�	;髯�:�\�;�\�^��\�\�\�퐰s�袋�\�G}�^�u��_\��ַ��\�s\�=��SN9%��z�\�lݺu�\�0��_۟�\�\��.��\��u��w\�:\�\�3j\�b��\�o~3���׽�tU�X;�2%mg\�6$��6$u\�\�64g\�\�x��\�Ϣ�X\�}=I(y\�K\������|���/\�\�w\�uW��=��\�\�y\�|���r��U�����,_\�����a<7\�8\���\�\��\���\�G\�χ�����O\�\��ۡX1\��\���Zv\�\�\�g��oI;)m/s�̌\�7�\�n�}\�D;(\�+}���b��>�\r\�\�{\r\�ӎmժUO=�\���\�Om۶mg\�ͻ/~-���q\�\�[�#/\�����s�ju</$4�p�ܫ_�\�=1L/n�i��n�\�B��b�\��\�gZ\�;�bz��=����*�\Z���ZG�r�-~���>�\�^\���JkG^��\�ĩ܆drц�n\�؆f\�\�\��E\�X꾮ES�^\�\�\������\������\��\�\�_{\���Q�\�\���\�\�o_y\��\�W�\����\��Q��\�G\�\�G����O��\��oԲ\�^��8�\�K\�G���\�\�\��j7\�}�[\�J�H�\�g�����mX\�s\'sL;�p�\�O<���T\��.� �O�#/\���\�l\�W\���7\���կ\�\�azq;�W\�X\�_\r�\�\�(\�k\�����9��x\���\�S�\\x�x\�>j�s�Z�\�i���*�?�6�J�\�%�|ڒ���\�K�٤�e˖e�\�\�ޞ5SO8\�4�+S��\�qV����x�������ۓ}\�C��Q�\�\�4�p͢�3\\ :L�o�Q<w��a�\�Q��Q��?�Ӌ���\����\�\�7j\�a�?^G���I)m\�3�q0x@<�F��7�\�ɶ��\�}}l\�\��|�\�7�uN;\�\'�u%\�ۘ��\���č�/\�?\�T���\��ɟ�I�y�\���|\�~����EE����\�kGU\���;�\�T�p�`�v�a�[T\�׮]�}\�+_)]O�k:�\��i��\�g�＄\�eW\�\r\�[���#\�\Z���9G-{\�\�\����\��gqZ_�;Ư�,�U\�/S\�v\�nC\�23�>��v�\�*)^{<}�\�4�ihC3����\��\�g>3�\���5k���b]��}�6����\��צ0=��65�\�=/}\���o\�\�=\�\�Ȏ:\�=Ӿ��/\�\�c�\�~�?j���P\�	}6L�o�Q<W��a�\�Q��Q��?\��ݻwg��\�\��\�\�sμ\�\�7j\�a���\�b�ߒvR\�^f\��	}�\�߭o%}e�\��~\�WL\�\�Ƕ�;C\�\���\�\�\�߳�\�q\�?:>�\�[�j\\��\�\�m;�0��#�<2��\��yagv\�\�yf\�:c�^\�..*.>�0\�\�s\�\�^�\�\�\�p!�K/�4���\�|\�(]O�\�	g�\\�2{\�K_�_p\�mo{[~a��u�\�/����=�X�b�u�ZG����\r�Sx?8\���{�Ņ�\�\�1~meY�y��\�PYf\�\�\��\�\\%M��\�LC�I�\��\�+����W�j`�\�\�\�64g\�\�x���e�W�q�㾞$T}\���o�ŽI�E��i�\�z\��1\�/G\�\�2z�ӟ�\�\�Ӟ�\�\�E�3�\�\�?l\�<j>\����\�|<\�3��\�?j���F-;\��\�7�X��[��\�Y23^\�\�W�e\���\�J�9\�5\�\�\�\�9\��2�\���\�\�=>�+2�j\\�:_Hf��̟\�ڑ��D�\�k#)]�y\���]�z\�ձ���\�\����ihC3}\�iJ\�z�էPD�\\U\�ΰǇy\�\�\�a^���[x\�\���\�\��\�)\�\�E֪��m�ϒ��\r\�\��\���eW�^\�\0s��#9U\����_ٷY��[���Yh\�W�i�\�g\�A�>s��20��}\�c�3�E{�N?���R����\ZW�}�#��\��t�\�ڑ��D�\�k#�F]}��q�-;Ε��]\�z\��G]��y���Q����64\����\�n�\��������\\U\�ΰǇyo}\�[���\�%�\�\��G�\�\�~	�ÿa[�t\��k�6��Ȓ�j�a\�b\0Y6�\�\0�\��\'�\�{�\��+�6�\����HվR\��\�\��9�}έmU�L8��;@\�>�\�OǇ��\n\�/�+�cڱ�X�\�e+W�|�\'�]��\�����\�=�lٲC\�ג:;�X;�:괡��\rv�؍��r�\�\�[v�+5����+P�:v�2\�^˨׿\�LC�\�{OSj7�\�5\�\�&�=W��3\�������\�w�é\�\�gq�A�\ZV�ZG��m�Ē�\����cٕ�˖5��\�y;g��W�mZ\�\�\�3e}P_\��>��Ϸ�\� [��1�\n\�\�L\�0�\�\�z\���w\�\����Ǵ�\�8㌻\'���\�.�\�k�7\��5�Aj;�\�O�^��{\r[_\�u/fZ�#�Նf�>���\�<\�֣�@=\�\�\��\�{-�^�B3\rmh�\�=M�\��v\�ܙ�\�{\�\� �\�\�vF=��7o\�2\�EΊ�ጹ�1�\�\�64Ē��^ـ�l`Y([�l�9\��:m���\�\��}&m��g�ii�\�w\����\�]\�>��\�uj\�A8\�,�r�\�/9>mDXo�m=�-\�P��\�3\�|\�7��M�;7���{zo\�]\�wܑ�kh�\�ܑ�e�\�θ\�ru3\�qG^�\r\�\�}&�]�y\��G]�z\�ձ���ZF���f\Z\�\�\�\�{�Z�\�_8�\�\�/y^X_�\\U\�Ψ\����?ݳlq%��U�b\������^\�|ic\Za\�\�\��\�\�f�\�\�\�\�B\�\0�\�}�˞g*,��6���>\�\�y6��߲>��N��\�g�\�A8\�,\�O:\�|LѤ�1Jqv@\�\�cڡN?���\�\�?�\�\rz\�\��\�\�\�{󮊟�-sG2\�\"maް�h\��/;\�\"p�\��\�z\��\�a\�\�\�\�\��΁\�7\�qG^�\r\��}�)]�y\��G]�z\�ձ���ZF���f\Z\�\�L�\�&^q���w�c\�sUi;�R�\rP\\L0�\�\��eg�J\�\�<�\�\�=�\�(VX�=.^�TYh�m23}}�\��l2-\�q_\Z\�\�\�3\�q��IS�9\r�<\�3\�q����5��\��m��kBX\�>��\'�\�h\�1\�P˖-{Eoо3��d_����Q\�\��\'~\�X\�yȰ���y�.�տ\\Ȱ���/\���>n�Zɿ�\�\�\�Ÿ\�\�7\�qG�\�mH��6$u\�\�6T����f�kQՁe!~\\�ީ���w�o�\�\�y6��߸O\�}���q�zI[�yşgU�\�\���B8\�\�sn+\�?�\�.\n�ǟ}�\�{\�\�o�1\�H\'�p\�Q���c\�/0Mڸq\��޸��;\�7\�\�\�&��#u��Q\�\�_.d\�E\��\�~�ߜ\�\�;ꨣ��\�??ۼy��\�tڸ#_\�6${G��ic�h\�L���\�\�J�\�g�1B[/\�\�d:\��\�4۷�^�\��\�\���&*s��=�\�?S`ܯ�\�Eg<\��c\�y�x≧�X�\�\�\��;3\�^N���msG2\�\"m�.�տ\\Ȱ��\r�.�u\�5\�d\����Sp\��\�d��6\�\��\r\�\�ц�n\�؆`\�L3¦\�\�z�\�g\��\�m��g�\�P�m��5�GS�_S\�YT\�س�(�).X���\�\���\��[_\�i+	U��O>y�w��\�\�^h0\\@p\��\�Je1w\�!�.\�6\�\"Z񅽆]n\�\�p݂p�\�\��vv\�-�䷋\�3mܑ/v���\rIݴ�\r-В�zú�\�\�\�3}��6_ȳ\�t��.��\�\�\�>�4\��\�>>)sg\n<\�w@�_\�S��T�����\�ٶm\��c\��3\�\�\���-X\���\�V�|���6�׬\\���\�=�\�\�!�\�r[.�\�Kzo\�]�|/�\'^w[-\�<d\�E\�F]D+��װ��\r��b�����@�P��I��;�\�nC�w�!��6��1�;@�q����w�o�\�\�y6��\�q�ܸ�#M\�~�\�>.i\�X4�F�M��il\�\�7�;餓v|���u�\�շ�\�g?�Eo\��H\��\�~��\r�\�~����\�o\�3\�o�ְ|\��\r\�\�\�\�\�e0mܑkCiE��ic\Z\�B�]~*\�i���w�}o�\�\��\\�|\�Ǵ%��\�\�cڱ-[�\�\�ޛ�j��\�\�\�����{\�ި��\�\�\�r�c�<��qG�\r�mHꦍm���ƪ\�M�7�t��V\�U����~�U�\�Ǵ\�bG�Vڸ#׆Ҋ6$u\�\�6T\�|\��\�O5�7�t��\�\�\�O7\��9\�7\�gG�Vڸ#׆Ҋ6$u\�\�6Ԁa\�aә����)\�\��\�\�tӰ\�{\�t`;�\�\��6�V�!��6���\�\��>%�ߴ2%�7\��}�C��\���*\�\�\�Jw\�\�PZц�n\�؆\ZT(Ϛ�i`9�7�LQ�\�W	��ˎ<��qG�\r�mHꦍm�aK\�Ř\�\�x��ߴ2e�W_e\�\��o�￿v\0\�#O+mܑkCiE��icj\�\�A\�ie\����J�\r\\�l\�2\�\0\�eG�Vڸ#׆Ҋ6$u\�\�6\�4\�\�ie\����:\�z��ҹ��4�T`G�Vڸ#׆Ҋ6$u\�\�6\�4\�\�ie\����:\�\�\�}�\�\��@v\�i��;rm(�hCR7mlCMs�Q���V���\�\�+:;�Y0.;�\�\��6�V�!��6���9ȨN�M+\�\��\�\��\�,�yZi\�\\J+ڐ\�M\�P\�dT����i\��\�t\Zrv��`v\�i��;rm(�hCR7mlCMs�Q���V���\�\�)�	PRp�\0�Î<��qG�\r�mHꦍm�i2�\�\�ʴ�_}u��3\0J�\0q�Ə��#O+mܑkCiE��icj���\��ߴ2m�W_�>\���@g	@Uv\�i��;rm(�hCR7mlCMs�Q���V���\�\�\�`G�Vڸ#׆Ҋ6$u\�\�6\�4�\�\��ߴ2m�W_%\��;�\�\��6�V�!��6���\\V����i\��*�v\05ؑ��6\�ȵ���\rIݴ�\r5\�\�:�7�L[�\�W	����<��qG�\r�mHꦍm�i�\�\�ie\����J�@\rv\�i��;rm(�hCR7mlCM3��N�M+\�\��U\�\0j�#O+mܑkCiE��icj��eu�oZ�����hP\�\�ի�ڵk\��E&�\�\�poG�;��R�\r�mHꦭm�i�\�\�\�d\Z���J�@\r\�֭�˖-;�|6m\�tYoG~s��NJ\'ڐ\�M[\�P\�.�\�\�\�4�_}�@;�\Z֬Ys\�ڵkwl޼y�\n�\���o޸q㥽��/z9:��R�\r-~�!������\\V��.~���\�\�\�v��\�\�\�\�\�?��&�\�\��o\�N<���\�AZ�hCR7�oCM2�\\�\�n\�ڏ��8�\����h\0\04\�\�\�A_%\�\0\0h��%���J�\0\0\��Kh}�@;\0\0�1�\��*�v\0\0@c.��U\�\0\0�\�\\B;\�\�\0\0�1�����\���oΓ\�\�\�\�}�\�\0\04\�\�\�\�\�KK\n\0q�Ə��l�\0h��%�)�PRpv���\�\0�1���p@I!�\�S\�6\0�\�\\B�\0%\�\0gL1\�l\0\0\Zcp	\�\ng��\�\�1=l�\0h��%�-:K�\�S\�6\0�\�\\Bڢ��\��.�\�\0\04\�\�\�W�%Og�h\0\04\�\�\�W�%Og�h\0\04\�\���˲l�\r6\\~\�7�z�\�\�\�\�\�l+�j<�-\�\�O�[�\��5k\�>,�m6\0\0�1��\�6l\���\��h�e˖l׮]\�\�?.Nx\�\���v\�\����Gǟ\�\�f\0\��K�.�F\�T�|6o޼uvv�\��3�:\�l\0\0\ZcpIׅ�	83 ��\�avvvw�Q�m6\0\0�1��\�\�w\�\�SY��\�#���\�6\0�\�\\\�uU�<�9\�p\�W�ۯ��<\�v�/\'�� P�m6\0\0�1��\�vn�/�\�s�_�{%L�\�\�e�(\�c�\r\0@c.\�*�{n�\�@1�Ƚ��\���2~\�\�\0�1�t]����_����\"a^����zl�\0h��%]W� p\�\�G\nE¼xy?\n�\�f\0\��K�NA �(\�c�\r\0@c.\�*��_\�B@�0/^^Ə�@=�\�\0\04\�\����R�\�\���y��2~\�\�\0�1�t]�����~�\�v\�_´0/^^Ə�@=�\�\0\04\�\����R��G´x9��zl�\0h��%]W� �{wv\��(�ia\���2v\�\�\0�1�t\�|��\�\�\�\��\�\��E¼�L�8/\n�\�f\0\��K�nhA`�\�l�]k�[�>{�\',�u�@�(\�c�\r\0@c.麲��|g��\�GA�\�l\0\0\ZcpIו��0,\����z\�\�\0�1�t]YA >\�_h\��I�(\�c�\r\0@c.麲��,^\�\�\0�1�t��@ZQ�\�6\0�\�\\\�u\niEA�\�l\0\0\ZcpI\�)��zl�\0h��%]� �V\�\�\0�1�t��@ZQ�\�6\0�\�\\\�u\niEA�\�l\0\0\ZcpI\�)��zl�\0h��%]� �V\�\�\0�1�t��@ZQ�\�6\0�\�\\\�u\niEA�\�l\0\0\ZcpI\�)��zl�\0h��%]� �V\�\�\0�1�t��@ZQ�\�6\0�\�\\\�V��{}/K\�\�\n���\'�\�K.\�=�\�\�Y\�zVv\�1\�\�\�B\�\�\0�1��Uh�sYhSA\�\�\�~v�\�ƍ��~x`~� P�m6\0\0�1����\n#��\�g�}vv��g�rHv\�\�޿\�m۲+Vdx`���([�jU�}���\��7�);\�#��v�\�g�\�_�\�O~���\�\�_t\�E�o�Q�\�6\0�\�\\\�V%�\�\�@���\�??[�zu~;\�\�˅�b@��d_�җ�ۡ(п췾��\�{\�\�kZX�\�o\�s���\�\�n�\���A4��&�zl�\0h��%mUR��R-��<�\�c��\�=\�y\�\�\�?�\��y\�\�x�\�ϳs\�\�l�\�\�{=W����M2\n�\�f\0И��(�N%Ղ@�y\�4�p?��\�\�ke˖M�\��b$�|d\�\0\0�f�AR_�?�_�2\�\�O\�|�_\�o�y晥˖M�\��b\�\0\0\0\�2_!�\�\��<��\�=\�\�sQ�\�O?=۱cG\�e\�滿Q\0\0\0���\n�\n�Q\0\0\0���\n��� \0\0\0�D(�\0\0\0&b_;\�=\�ǿ�\�;\�\�\�\�\�o|\���6DA\0\0\0��h� p\�\r7\�)�|��Xf_�x\�xz� \0\0\0�D4]8\�\���w���\�c�9fϼ�7foy\�[�\�<\�9\�k^�즛n\Z9}\�֭٩���t\�Ay�/_�\�{\����\�U�Ve\���\�?<?��^$,�~��쵯}m�\�~�e�zh���}�u�}�\�\���r\�!م^8�kj\"\n\0\0\0LD���~8{\�_����\�+?\�~\�s��=�\�#���H�\�o~3���׽n\��SN9%��z�\�lݺu�\�l�n����.�(�}�\�G\�5�x]�p�\�Wgw\�qG>=���\�\�?���9�\�󚚈�\0\0\0\0\�dA �彷\�\��`~���|e~�\�k�\�\�\�/\�\�?�\�{=n\��pp��\',\��w\�ؑm߾=�}\��\�5�Xφ\r��\�:+{��_�׼\�v(d<�\�c{\�\�55\0\0\0&�ɂ�\�\�����\�}\�C��\� �8c�Ȱ\�\�\0?L\����Xw8��(���\�˾\�\ro\�\���_\�k^�\\��q^SQ\0\0\0`\"�*�\�\�?\�\�Ȏ:\�=Ӿ��/\�\�\�/�\���\��߿\�+�\�i�æ�x\���\�~��\�u\�]�\�.�{@�N�/�S�\�\�\���B� \\c ܿꪫ�<�\�\�\�?\�kj\"\n\0\0\0LDS�\�|\�3��q�@_1\�\�[o\�s�N\�9�\�#�8 �^q��a\�\�_�W�\\����/\�/\�����-۴iS>�XoqQ�#�8\"_O�w\�\�f/~�g>�\�\\�}\�s�˗9��\�+\�yMMDA\0\0\0��h� 0\�\�D�]��\0\0\0\0� �V\0\0\0����\Z\0\0\0&BA �(\0\0\00\niEA\0\0\0��PH+\n\0\0\0L��@ZQ\0\0\0`\"Ҋ�\0\0\0\0� �V\0\0\0���� \0\0\0�D(�\0\0\0&BA �(\0\0\00\niEA\0\0\0��PH+\n\0\0\0L��@ZQ\0\0\0`\"Ҋ�\0\0\0\0� �V\0\0\0���� \0\0\0�D(�\0\0\0&BA �(\0\0\00\niEA\0\0\0��PH+\n\0\0\0L��@ZQ\0\0\0`\"V�^�Ԯ]�Le�\�}�\�\�\�\�?#\0\0\0hܺu\�\�߲e\����L>�6m�lvv�\��3\0\0�ƭY�\�صk\�\�ؼy�Vg\n,Nz\��\�7^:;;��^��?#\0\0\0\�\'\�Ah�\�t/��\�\�\�\����+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P\�����{�B$B\0\0\0\0IEND�B`�',1),('3',1,'loan.bpmn','1',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:flowable=\"http://flowable.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.flowable.org/processdef\">\n  <process id=\"loan\" name=\"Loan Request\" isExecutable=\"true\">\n    <startEvent id=\"startEvent1\" flowable:initiator=\"initiator\" flowable:formKey=\"name\"></startEvent>\n    <userTask id=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\" name=\"Capture application details\" flowable:assignee=\"${initiator}\" flowable:formKey=\"loanin\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-966371C5-CCF2-4711-8F8D-A0F09F806C64\" sourceRef=\"startEvent1\" targetRef=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\"></sequenceFlow>\n    <sequenceFlow id=\"sid-F7DA85F8-2FA7-44FE-BF12-07E6CF04188B\" sourceRef=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\" targetRef=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\"></sequenceFlow>\n    <userTask id=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\" name=\"Loan Review\" flowable:assignee=\"${initiator}\" flowable:formKey=\"loanreview\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-1008F0B8-53E4-42FA-85C1-00264671FA13\" sourceRef=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\" targetRef=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-2E640A0B-D82B-45A8-8BCC-B2E70F07E46F\" sourceRef=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\" targetRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\"></sequenceFlow>\n    <userTask id=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\" name=\"Advanced Loan Review\" flowable:assignee=\"${initiator}\" flowable:formKey=\"advreview\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\" name=\"Inform Acceptance\" flowable:assignee=\"${initiator}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\" name=\"Inform Rejection\" flowable:assignee=\"${initiator}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <exclusiveGateway id=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-49699BF8-3761-4BFC-BEAD-8FD13225481F\" sourceRef=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\" targetRef=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\"></exclusiveGateway>\n    <endEvent id=\"sid-CC27E554-CFAE-4146-A34B-E30FD4687102\"></endEvent>\n    <sequenceFlow id=\"sid-73D814EE-CA76-4353-8B78-8656C2766F34\" sourceRef=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\" targetRef=\"sid-CC27E554-CFAE-4146-A34B-E30FD4687102\"></sequenceFlow>\n    <sequenceFlow id=\"sid-7CB955DC-9C32-4B4C-BEA5-645629BD108F\" sourceRef=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\" targetRef=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\"></sequenceFlow>\n    <serviceTask id=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\" name=\"Credit advice\" flowable:type=\"dmn\">\n      <extensionElements>\n        <flowable:field name=\"decisionTableReferenceKey\">\n          <flowable:string><![CDATA[credit]]></flowable:string>\n        </flowable:field>\n      </extensionElements>\n    </serviceTask>\n    <sequenceFlow id=\"sid-410F9B72-3AEA-4BB0-9F4C-B749488FE835\" name=\"Accept\" sourceRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" targetRef=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_loanreview_outcome == \"Accept\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-60C38402-D299-4107-8029-1F52BC3099F0\" name=\"May be\" sourceRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" targetRef=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_loanreview_outcome == \"Consider\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-114F299D-8AE9-457D-9C12-6DE8FEFA7099\" name=\"Reject\" sourceRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" targetRef=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_loanreview_outcome == \"Reject\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-FEFCC3DC-BDE1-44D0-B41C-EA10F0F3C858\" name=\"No\" sourceRef=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\" targetRef=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_advreview_outcome == \"Reject\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-CFAB6DD6-EAA0-4F48-9930-8010328F07B4\" name=\"Yes\" sourceRef=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\" targetRef=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_advreview_outcome == \"Accept\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-A6343F4C-9235-4C84-9F8E-65E775ED73EE\" sourceRef=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\" targetRef=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_loan\">\n    <bpmndi:BPMNPlane bpmnElement=\"loan\" id=\"BPMNPlane_loan\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"40.0\" y=\"183.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\" id=\"BPMNShape_sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"115.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\" id=\"BPMNShape_sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"405.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" id=\"BPMNShape_sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"550.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\" id=\"BPMNShape_sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"645.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\" id=\"BPMNShape_sid-786BC734-A9A0-419D-87AD-DF3EAA269671\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"755.0\" y=\"255.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\" id=\"BPMNShape_sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"755.0\" y=\"65.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\" id=\"BPMNShape_sid-8670129B-EBAC-4B60-A335-36F93DB70138\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"785.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\" id=\"BPMNShape_sid-F3E3FE06-D696-47AB-864B-8B31B230542C\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"915.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-CC27E554-CFAE-4146-A34B-E30FD4687102\" id=\"BPMNShape_sid-CC27E554-CFAE-4146-A34B-E30FD4687102\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"990.0\" y=\"184.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\" id=\"BPMNShape_sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"260.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-410F9B72-3AEA-4BB0-9F4C-B749488FE835\" id=\"BPMNEdge_sid-410F9B72-3AEA-4BB0-9F4C-B749488FE835\">\n        <omgdi:waypoint x=\"570.1025641025641\" y=\"217.8974358974359\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"570.5\" y=\"295.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"755.0\" y=\"295.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FEFCC3DC-BDE1-44D0-B41C-EA10F0F3C858\" id=\"BPMNEdge_sid-FEFCC3DC-BDE1-44D0-B41C-EA10F0F3C858\">\n        <omgdi:waypoint x=\"805.0\" y=\"178.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"805.0\" y=\"145.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1008F0B8-53E4-42FA-85C1-00264671FA13\" id=\"BPMNEdge_sid-1008F0B8-53E4-42FA-85C1-00264671FA13\">\n        <omgdi:waypoint x=\"360.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"405.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-60C38402-D299-4107-8029-1F52BC3099F0\" id=\"BPMNEdge_sid-60C38402-D299-4107-8029-1F52BC3099F0\">\n        <omgdi:waypoint x=\"590.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"645.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-49699BF8-3761-4BFC-BEAD-8FD13225481F\" id=\"BPMNEdge_sid-49699BF8-3761-4BFC-BEAD-8FD13225481F\">\n        <omgdi:waypoint x=\"745.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"785.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-F7DA85F8-2FA7-44FE-BF12-07E6CF04188B\" id=\"BPMNEdge_sid-F7DA85F8-2FA7-44FE-BF12-07E6CF04188B\">\n        <omgdi:waypoint x=\"215.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"260.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-CFAB6DD6-EAA0-4F48-9930-8010328F07B4\" id=\"BPMNEdge_sid-CFAB6DD6-EAA0-4F48-9930-8010328F07B4\">\n        <omgdi:waypoint x=\"805.0\" y=\"218.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"805.0\" y=\"255.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-2E640A0B-D82B-45A8-8BCC-B2E70F07E46F\" id=\"BPMNEdge_sid-2E640A0B-D82B-45A8-8BCC-B2E70F07E46F\">\n        <omgdi:waypoint x=\"505.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"550.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-73D814EE-CA76-4353-8B78-8656C2766F34\" id=\"BPMNEdge_sid-73D814EE-CA76-4353-8B78-8656C2766F34\">\n        <omgdi:waypoint x=\"955.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"990.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-966371C5-CCF2-4711-8F8D-A0F09F806C64\" id=\"BPMNEdge_sid-966371C5-CCF2-4711-8F8D-A0F09F806C64\">\n        <omgdi:waypoint x=\"70.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"115.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-A6343F4C-9235-4C84-9F8E-65E775ED73EE\" id=\"BPMNEdge_sid-A6343F4C-9235-4C84-9F8E-65E775ED73EE\">\n        <omgdi:waypoint x=\"855.0\" y=\"105.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.5\" y=\"105.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.1069518716578\" y=\"178.10695187165774\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-114F299D-8AE9-457D-9C12-6DE8FEFA7099\" id=\"BPMNEdge_sid-114F299D-8AE9-457D-9C12-6DE8FEFA7099\">\n        <omgdi:waypoint x=\"570.1069518716578\" y=\"178.10695187165774\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"570.5\" y=\"105.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"755.0\" y=\"105.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7CB955DC-9C32-4B4C-BEA5-645629BD108F\" id=\"BPMNEdge_sid-7CB955DC-9C32-4B4C-BEA5-645629BD108F\">\n        <omgdi:waypoint x=\"855.0\" y=\"295.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.0\" y=\"295.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.0\" y=\"218.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('4',1,'form-loanreview.form','1',_binary '{\"name\":\"Loan review\",\"key\":\"loanreview\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"loan\",\"name\":\"Loan\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"guidance\",\"name\":\"Guidance\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null}],\"outcomes\":[{\"id\":null,\"name\":\"Reject\"},{\"id\":null,\"name\":\"Consider\"},{\"id\":null,\"name\":\"Accept\"}]}',0),('5',1,'form-advreview.form','1',_binary '{\"name\":\"Advanced review\",\"key\":\"advreview\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"loan\",\"name\":\"Loan\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null}],\"outcomes\":[{\"id\":null,\"name\":\"Reject\"},{\"id\":null,\"name\":\"Accept\"}]}',0),('6',1,'dmn-credit.dmn','1',_binary '<definitions xmlns=\"http://www.omg.org/spec/DMN/20151101\" id=\"definition_e3c70382-bdaa-11e7-a234-baca12a46316\" name=\"Credite advice\" namespace=\"http://www.flowable.org/dmn\">\n  <decision id=\"credit\" name=\"Credite advice\">\n    <decisionTable id=\"decisionTable_52422dad-bd88-11e7-90a6-92915f9dcc1e\" hitPolicy=\"FIRST\">\n      <input label=\"Age\">\n        <inputExpression id=\"inputExpression_1\" typeRef=\"number\">\n          <text>age</text>\n        </inputExpression>\n      </input>\n      <input label=\"Status\">\n        <inputExpression id=\"inputExpression_3\" typeRef=\"string\">\n          <text>home</text>\n        </inputExpression>\n        <inputValues>\n          <text>\"Rented\",\"Mortgaged\",\"Owned\"</text>\n        </inputValues>\n      </input>\n      <output id=\"outputExpression_2\" label=\"Credit Guidance\" name=\"guidance\" typeRef=\"string\"></output>\n      <rule>\n        <inputEntry id=\"inputEntry_1_1\">\n          <text><![CDATA[< 25]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_1\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_1\">\n          <text><![CDATA[\"Young, so need further checks\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_2\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_2\">\n          <text><![CDATA[\"Rented\"]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_2\">\n          <text><![CDATA[\"No collateral, so consider viability\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_3\">\n          <text><![CDATA[> 60]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_3\">\n          <text><![CDATA[\"Mortgaged\"]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_3\">\n          <text><![CDATA[\"Potentially overstretched debt to consider\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_4\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_4\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_4\">\n          <text><![CDATA[\"No guidance\"]]></text>\n        </outputEntry>\n      </rule>\n    </decisionTable>\n  </decision>\n</definitions>',0),('7',1,'form-name.form','1',_binary '{\"name\":\"Get name\",\"key\":\"name\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"Please enter the full name of the applicant...\",\"layout\":null}],\"outcomes\":[]}',0),('8',1,'loan.app','1',_binary '{\"key\":\"loan\",\"name\":\"Loan App\",\"description\":\"Applications for loans\",\"theme\":\"theme-7\",\"icon\":\"glyphicon-ok\",\"usersAccess\":null,\"groupsAccess\":null}',0),('9',1,'loan.loan.png','1',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0Y\0\0\0O�a\0\0;IDATx^\�\�}\�e�/�[K�U�Dֿ\�\�-_K�\\�D��B|��qy�\n�X.���k��k鮧ֲD�U@QV\�����`�s��rA^b$!���̯7����\�\��tg��\���Vf�{z枹�\�\�陛\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0fK�${�_��\�o��w+W�L\�\�\�e\�\�\�O�Y�\��U�V��|\0\0\0`�X�~�wz�ɦM��\�۷\'�?��L8�\���z�\�m���G\�?#\0\0\0�]����T�|6nܸy~~~m�3\0\0�\�\�\��Ќ\�\�0??�#�\0\0@\�\�;\��S�^\��\�F\0\0\0P���G~�1Y�גۮ�\�4q;�嗓jQ\0\0\0`\"\�\�z_r\�\�K~v\�_��\�\��Q\0\0\0`\"\�\�\�ŀ,�\���\�\��Q\0\0\0`\"\��㺿(d�y�\�e�(\0\0\00e\n�\�|��%\�嗗� \0\0\0�D(4+\n\0\0\0LD��@��@��%\�嗗� \0\0\0�D�)��ɹ��,1/���\0\0\0&�LA`\�}?On�\�o�1-\�嗗� \0\0\0�D�)D\��\�\����_N�EA\0\0\0��(Uر#Yw\�?\rbZ\�X^Ǝ�\0\0\0\0�PA\�\��%w�\�ŀ,1/�\�?NƋ�\0\0\0\01� �cG�qݪ䖫\�(\�\�Ĳ\��\0\0\0&�� �\�Y\�\�l�\�Q\0\0\0`\"�\ne\�\n�xl~}R>\n\0\0\0LDQA ��\�\�\�\'\� \0\0\0�DdzQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0*9\�\�\�ei~z��@�� \0\0\0@%\�w\\�3#\n͊�\0\0\0\0��F�\0\0\0*)(�\0\0\0*)(\��\0\0h���(�NEA�Y\�>��\�\�\0\00�K\�*�ԗ\�[\�+�\�i�\��\�K��:(y\�3��}�\���T�\�y�ӟ�|��ɪU��˧\�\�5,�^�\�Mo�m}Eq�@5�\�\0\0\�\�\���Z���Rx\�3��.�aÆ䡇\Z���\���������+^�\�\�N\���J��\�\0�6��\�B��\�B�\��9眓p�Ɂ�\\xᅻ��/�e˖\�\�ON�\�w\�\�/xAr�\�\'[�n\�m=�~xr衇\�6\�CI�\�k�tݟ�ԧ\�\�\��]t\�\�׷m۶�v���7oޜ�z\�\�~�\�f��\�ɽ�\�;�Q\�E�\�\�#�L��\�g\'�zի��n���\�]\�ߞ�WDA�\Z\�l\0\0jcpI[-TȔ-���\�ʕ+\�\�q��_.\�q��.H��\�/��\���\�\�.�,�\�{v�ˮ]�v\���\�;/��\�\�\�q�>\��]{\�\�\�׾��\��SN9%��u͚5\�\�w�\�]��\\����\�\���\�5�x|�~���\�=\�GA�\Z\�l\0\0jcpIו-\�W{\�\�y\�\��\��|��4q;_<�\��\�y�ᇓ;v\��\\�����,q\r�n�!�ϗ���\�=o\���Z.����>�h\��\�/����(Tc�\r\0@m.麲�2�\�t��\�q\n}܎S䋖-��\����($�\�}\�KƯ�\�\�^\�<0�q-�y䑡�\�\�_\�ߞ�\��jl�\0���%]WgA\�\�OL\�\�i�_�җ\�\�g�uV\�E\��_4=�!𒗼$=��뮻�\�?>���\�}n\�\�	�_\�ܨ\�9\���\�_���}e`�}�I\�ǵ\��\0�\�[\�ߞ�\��jl�\0���%]WgA �����N\�ua�3\�<3=`/Z�h\�B��M��\�K\��\�|\�;Ӌ�X�\"yы^�^�\�o{r�\�w\�z\�S��\����\�֯_�v\�aɳ���\�կ~uzQ��~\�\�&�\��S�q\�\��:�\�\��GA�\Z\�l\0\0jcpI\���(\0��\�\�\�/~���&EA�\Z\�l\0\0jcpI\�\�JA`\�ҥ\��\�%\��\�7\�5)\n\�\�f\0P�K�nV\nm��@5�\�\0\0\�\�\���ShV��\�\0�6�t��@�� P�m6\0\0�1��\���jl�\0���%]� Ь(Tc�\r\0@m.\�:�fEA�\Z\�l\0\0jcpI\�)4+\n\�\�f\0P�K�NA�YQ�\�6\0�\�\\\�u\n͊�@5�\�\0\0\�\�\���ShV��\�\0�6�t��@�� P�m6\0\0�1��\���jl�\0���%]� Ь(Tc�\r\0@m.\�:�fEA�\Z\�l\0\0jcpI\�)4+\n\�\�f\0P�K�NA�YQ�\�6\0�\�\\\�u\n͊�@5�\�\0\0\�\�\���ShV��\�\0�6�t��@�� P�m6\0\0�1��\���jl�\0���%]� Ь(Tc�\r\0@m.\�:�fEA�\Z\�l\0\0jcpI\�)4+\n\�\�f\0P�K�NA�YQ�\�6\0�\�\\\�u\n͊�@5�\�\0\0\�\�\���ShV��\�\0�6�t\�ʕ+�ܾ}����L>�\�\������ψ�l�\0���%]�f͚�7m\�4pp*�\�\�w\��\������ψ�l�\0���%]�jժcV�^�m\�ƍ��)0��\���6l�\�����z9*�Q�m6\0\0�1�d\�Ah�\�t/�\�w\�ۖ�/�8����ޢ\��\�b@E�\�\0\0\�\�\���\�O�\�W	\�\0\0�1��f\��ѥ\�Owfi~>�\�6\0�\�\\B�eg\�\�u��\�\�l\0\0jcp	͕;;�Y\�f\0P�Kh�\�\�\��6\0��\\B3\r9;�Y3\�6\0�\�\\B3ř\0�\0g	\�8\�l\0\0jcp	\�g\0�Y�\�g�\r\0@m.�y\���@>\��A�\�\0\0\�\�\�\�A_%h\0\0\�\�\�\�A_%h\0\0\�\�\�\�A_%hPA�${�_��\�o��w+W�L\�\�\�e\�\�\�O�Y�\��U�V��|\�@�~�!������\\���N?�\��U�v\0�v\�\�\�\�D�M�6%۷oO�q�p\�}���\�\�\�z;���Q\�iCӏ6$U\��6T7�\���\�\�g����J\����\�\�N$�s�\�g\�ƍ�{;��Ϩ鴡\�D��ik���ey�os2��W_%hPA�ާ�ߌ\�\�\�ۑ\�\�FM�\r5\'ڐTM[\�P\�.\�\���Y\��*A;�\n\�g��L/�y\�?��ӆ�mH���m�n�\�\�\�ʬ�_}��@ew\��vc��\�%�]��i\�vL\�/\'\�\�\�y\�6\��\�#ɇ���\�\�\��|��.�!ۡɤ�m�n�\�\�\�ʬ�_}��@ev\�o�/��\�%?�\�/wKL�y�\�e��qG>�\r\�\��x�\�\�v\�_��\�U�\�\��\���\�\��\�r2~�ֆ�\�M.mlCu3�,O�mVf��\�\�\0*(�#�\�\�ĳ\�{ۿ,/㧍;�am(�\��\�]\��\�ϓkn�?Y}�\�\�c�ߺ� �c��\�\�\����ǫ\�H�=�(P5]jC���\\\�؆\�fpY��۬\�Z�\�W	\�TPfG�\����<K\�\�//㧍;�amh�G��\\��]��r���ܳ����\�\�ҥ6\�ۡɥ�m�n�\�\�\�ʬ�_}��@ev\�\�|`�%\�嗗�\�\���6t\���o\��X.�\�\�\�\�\�ӵ6�\�vhric���ey�o�2k�W_%hP�y�\�\���6_\������Y�\�6$���o\�\�혖\��\�\�|���t�\re��\\\�؆\�fpY��۬\�Z�\�WgO\�3�.>�r]�q�ev\�q5\��<K\�\�//㧍;�6� \r\�f@\0�\�Ŵl~,��\�\�ҕ6��\�\�\�\�\�6T7\�\�\�ʬ�_}u��>��|�\�QfG�\�\'\�\���ļ��2~ڸ#/jC��D⬀�r1-�\\$���OW\�P>�C�K\�P\�d���6+�\��\�\�g\0�\0\�(�#\�r\�ϓ[�����xL�y�\�e��qG^Ԇ��\n�KW\�P>�C�K\�P\�d���6+�\��\�\�g\0�\0\�(�#�\��Ӌv\�1-��TKw\�Em\�W������\�M&mlCus�Q��۬\�Z�\�WgW�	PPpv\0,V���ɺ�i`G\�b\���2vڸ#ՆV\��\�]�]T0�\�?^����]��X\�؆\�\� �<��Y�����ή8�� �4����v\�o�/��\'_؉g�y�L�q2^ڸ#Ն��y�����u\��\�e�\�Z�\�M6mlCus�Q��۬\�Z�\�Wg[\�,g�8�\�\�w\�H6�[�\�r\�9;\�|b�XV��zڸ#ֆ6o{4�\�\��������ե?K~�\�G\�#�K�ڐ\�\�t\�\�6T7\�\�\�ʬ�_}u�\�\�X���P�#_��?,��\�\�\�yQ�<�؎\�V�K��/?�Ur\�\�_S n��}cr\�-�������e�\�`�r�҆l���6���9\�(O�mVf��\�dg	\�%\�\�\�T�%�_��Ow\�Em(K~���.\r\�\nq;��\�C�)Ԕ��!ۡ饍m�n�\�\�\�ʬ�_}�83`ٲe\���hG�\�9/6��I��qG^Ԇ�%~A +�5�=�����ve�ɯOʧ�m�fKvd,\�\�`��۬\�X�\�W	K�\�{o\�\0\�U�#�饍;rm�Yц�j\�؆j\�M����_\�\�\�\��_}��@Uv\�\�Jw\�\�P��\rIմ�\r\�$Xf\��}\n\�\�ʌ�\�|\�\�\�g6\�?��}�;�f��;rm�Yц�j\�؆j0l 9l:;\�\�\��\�a}r\�t�i\�\�=l:0�y�\�\��6ԬhCR5mlC-4�\\h�L\�����߅�\�B�醅>\�\�\�J�\�7\�x\��{�\�_�O|b�G>�\�\��������~�\�?�\�\�M�?��\�\'�\�\�\'��\��\��Yi\�\\jV�!��6��\n\�\�.7s�\�f�\���l,�\�T��-�\\\',[�\�\�1\�\�˗/�A\�ߵ�\�Ǵ;�]�s�\�\\��3)I����\�/\�c�݊+��\�;/����䗿�e�e˖$Ŀq?�\��SO=��~��\�\�����5����#oVڸ#׆�mH���mhL�0.v����6+\�\�{�]�vX\�\�\�\�[\�\�c�=�w��f\��٬�\�\�\�53z�g|�\���}(��\��\'�x\"-\0,$��\�\�:\�\�\���˗/I~\�meGެ�qG�\r5+ڐTM\�\�\�(���\�\����\�q�ܸ���\��<\�}\\�űh\������\��tL��\�1�S���\�KN;\�\�\�+�L���?\��K�\�\�\�O:\�G\��\�w��6�#oVڸ#׆�mH���mh���>�S�\�f�c��j_��x��\�\�X��r\�Ǿ�w�\����O<1���?��\\������c�\\Q\��X_�9:��^<\��\�/�\��\��_�b�#�1\�zV�X�\��\�j��\�fZ;�\�~��\�\�^��d���J^�\�&���\�q\�˕M�ozӛ��-mܑO�\rIq�!��6��E�k`X\�zZO�mV:\�\�\�cu��\�\��k=S\�;�?�w\��\���NH��$[�n\���\�b�x\\_Q\���\��suJ�p�\�\'�6mʿ\'�\��N>�\�\�^U�Ǝ��_�j\�\��x��o��_�\�\�,[6��H~z\�\�\��4ڐ�6$U\�\�6TR\�º\�\�J�o�ґ�[wߪ{}LFݟ[\�뛨�g\�*�y\�\�]wݕ?D-%�\�/\n���v�n�\�(\�uf@^o�O���\�ݺlٲ�査-��#\�\�;�\�\�K/�\�}nɫ_�\��쁃:(�ַ��N�\�D\�3}\�s��r\�!ɝw޹kz��e�u\�;��ÓC=4��y�\�xd�\�~��Y�|yr\����=�6\�ȧцdx�!��6���\�\�>|J/��\�\�\�?.�ޙ��6+\��>�\�se\��_/͖���gY�\�\�\�\�\nq�y��\�o\�\�?�я&۶m\��.J<>\�\�W\�\�\�c\�B��s\����\�\��ߓ���\�o\�}@W埿-��#\�w\�}cg5�;�W]uUr�\�˽\�/H�\�\�ȅ^�\\t\�E\�\�:j�y\�:F\�\�n_v\�e\�=�ܓN;\�S\�i��5k֤�\���w\r��=�6\�ȧцdx�!��6��,�X��\�\�\�߲\�a�˯�\�\�J\��o�/\r\�s����i��\�4\��\\Ȱ\�\�\�\�x���+�\��Z\�\�zrg\n\\�\�V�\����5�q/ XV�Ŋ��\���#\�s�3ٰa\���\���듳\�>;y\�+_�.�\�\�\�h����Ņ�y\�:F\�\�n?�\���\�G\�!��\�y\�{\��k\�\�i\�|\ZmH�G��ic\Za\�\�\��\�\�\�v\�ޗ`�,���o~\��\���Yiq�-\�C�\�\�)�|f�\��i�]\��k\�\����)\�\�c\���\��\������I��Wz�>�:\�`\Z;�׿��i\����׽\�u\����\�:qL\�n\�\��YA\��\��n�ud�{챴�P���\�\�\�Zx\��^\�$\�\��4ڐ�6$U\�\�64Ē�\�_\�@q\�\0�h�vN\�7\��:M�mVZ\��������vװϥ\�s��vǘ\��z\\pO����%\�\�c\�7\�p\�����/y\�\'�\�\�s\�	\'�vٲe\�_˴�>\�\�zY���7�y��\�{\�\�\�o~s�q\�\�\����\��/�\�\��q}��_��#1=�}��\�\�*d��\�\�>\���\ZB���_�zu�}�p=��\��\�O�}\�s�K���\���4~��I;�&�!mH���m����\���c\�\0�h���ef�\�m��\��b�\���\�}�k\0\�\�gɖ\�OoB���a\�\'�i�߲\��B}��\�ݳ\�\�Q�����\�3ql\�[\�\�^ҟ,�k�\�\��I\�\'�tL;��.�h���\�\���{\�\'>�[�/_���k���hddc[̎�\�\�\��׼&y\�3����\�a�%k׮M\�}��O���\��v�\�\�좂qA��zA\�;�\�s���\�?y�ӟ�\\p�\�7��\��q��3\�8�p=��\'\�:X�bE��(y������\�oO\��\�׽�3�y���!)�6$U\�\�6�Sv�W4p\�`\�5�̔}�F+�ޗ\�\�_}���|\�_X&K�L~z2\�\r�>\�L���m/9e�JQ_\�W��\�\�P�9���\�3ql�-��\�|&�Y�X�\\M:�\�\'?�\�&�u�̵\�^{[\�\r�<�Z�����llew\�M\�\\Cv�{2\�ڑ\�b��hCR5mlC};�+\Z@\���L/3�\�,�u4N\���l�=\�\�\��1\�\��>�\�]�\�\�\�o|cZ쏢̏D�?�����\�\�����\�\�~�\�s\�I8\��\��L\�L�yq\�#�<2-��\�U�Jn�\�t��_\Z\Z�\��߰\�-[�\�OU�_O�3c=�?r1o��cT�\�˶�>\�7\�G�\�nZ\��ߙvP�\��\�_�͏3���X\�ki\�1\�\��\��j{�\��$�vzo\�\��\�2-�����ݑ7!s#v�]ɴv\�E\n\�N\�\�\�,D��ic\�i\�]\�\0�\��\�,3㾞F(x\�\��2����J��\�\�֭K\�\���\�#�<�\�\�\�ޖN��\�w}�0��_�\��\����qz?\�x�\"Q|�0~9�^V��\�w���g*\��Q�44\�\��\�a\�#Q�yQ\��򗿜ގ�@\�\�\��i�߂vR\�^vZ27^\�\�W�e\���\����޿7g\����m��\�54\�vl��\�q�Iڲe\�ý7\��k���ƕO\�\�\�\�\�er�֎�HA�\�Gj`�!��6���\���f��e�\�뚚��:���/\�\��{�L\�ן\�~\\3(\�_s\�5\��\�\�A��\"�y�\'�޾\�+\�_�җ�\��E�(Bą��\�\�W\����>�\�\��KC�^[�M�d��c\�H\�\�\�\��;FeZ���}䓶��\�}B_톪\�w\�\�AA\�\'�\�\�\���>����=wc�i\�������\���{T\��*� �2;�ig�`�_�L\�o\�P`�u\�\�?�6�\rmh���|ڒ�\�!\�K��iz�-[�\��ޱ=?�o(0�8\�4��Lq?�Wqv�5w)e�\�x\�;��4���\��\�/�\�w��;;M?�\��o\\4:�/�D\�s�\�\�\nٙ	YF�\�Ш\�֟a\��\�\���@܎�ļq��Q\�>MJ�\�\�>+?�Z\��\�sc\�A�\�6!{�\�6\�\��|;�oJ\�v\�i�\�\�U��\�N\��נjJ��\�\�y�ߴ3Wr\'�P\�ZϞ̴*�E\n\�\�iC��\�g���\�e\��\'_�\�&\�~��\�\�l\�\'sCW�\�\�8\�_߰�Y�\�\�b��\��ɞ74�+��Z�j`���\�ߑO\�\�\\��\���M1���\�T�����_��\�w����%GqĮi_�\�\��6�W<\�\��\��W��\�4q;�\�\'����K.�$��\�/e\�\���c�Io_~�\�\�\�WF�\�Ш\�֟a\�#�U1/�2�/})�}\�Yg��w�ʴ�oA;)l/s\����\�\rU\�\�ַ���2\�gz�ޗM\�\�Ƕ�;C\�/�\�/\�\�߳Ȼ��\�z\\��o1�q�[hG>N�@N�+�rȮ�*3/{\�Ł��?{ܰu��\�O�\�b/\�3N��#/2�6�\r�b\�iӦ\�\��Fz���}\���\�$\�);}1�c{\"�ֆ\"sS�,��7���+^�\�ږ6����̍7�+\ZX\��\�i�港�ʾ��\�(��K��ٴ[n�e\�{㵸�@\��\�\��\����X6�\rO}\�S\��Oy\�Sv]\�o�_$ʞ��~<W��ѳ���t�\�Q�a�44\��\'��Ő3N:\�]c�3\�<3�\n¸ǨL���m/;-��o\�\�2\��މvP�\�\�\Z\�\�\�t\����˿�\��k\�G5�~\�\�\�\�Bȉ�\�.�(�}\�QG����=\�\�@=�:�\�O�\�b/\�3N��#/2�6�7�!}?\����\"1/r�ᇧ?3\�ƽ\Ztv;��s�F�{\�U���cXk\�\�3Nf�\rE\�|��Qža�u������\����?�\Z��}�e\�˰\�ǼxM1/n\�O�\�c���1��SW\�>��\r�Y2��]\��2�Zt\�\�\�0�:\Z�\�{_��J��V�-\�^�,��\�ݴ\���3\�L�9ί�\���\���߹��3\�<�\�&�f\�\�\�oO\�\��@N��yb�^v^����-��\�r��G]�\'[n��\'\�ڑ�DʾW9\�\08\�E.�\�\�{\�I��{5\�a��VP\Z�\�QW�\��a�Q\�8��6��y�*�\r����-T\�\�\�4\�\�\�a�k\��2\��1\�o}k���;v$�g�\�{�\�_�ޏ\�\�ҥK^\�b\�\�6��d�\��n\��2@\�/3�,���V���\��\�L���m/9e�JQ_\�W��\�\�P�9���\�3ql��\0=�\�g>�?��U�?{�&ӎ�7\0|�+�\�\���{D\�y~\�{�X�l\�A�\�\�t{bG�\�r\����������]h�\�ϖ\�?\�?�Ww��#��J\�\n1�\��y���\�%�6\�ՠ�\�\�gXAiԺ�]��a�Q\�8��6��y�*�\r���\��\�Y\�\Zq\�A\����i/����|$��}\�&�_�fg�q\��u1ic*�dn�\0�h\�Xte\�\�F\r0z\�Ω\��޴��.\�g����\�=}E�o\�\�A[��1����8�0Ɵ{B��=\�yO�<�|m<�-��~�I}m\�\�\���7zo\���\�\�{bG�\�r\�ݲ��\��\�\�\�\�vq�a\��y�\���t�.�ӿ\\\��:\�\�y�6��\�[ł_\�6\�ՠ�\�\�gXAiԺ�]��a�Q\�8��6��y�*�\r���\�\�\�\�O�\�\�\�<�q�\���E�k��2\��\�uQ�e\�;\���\���c�6��!�\���E\�L\��E\�a\�\�iU�o�\��}&]��g����\�;E}O_\�a�K\�\�:3\� �1����\�W��?�E�7{��\�\�\r�\�\�;�������\�\\�\��\�\�q\�=�\�\��\r�Ď|�\�d�\�\��Е���=\�\�@Þ�\�s\�M�\��tА�OZ6o\���+�_gڸ#�҆�S\�\��\�7\'7n\��=\���\��#���j\����š��+(�Z���`�/3��5\�\�\'�ֆ\"s}\�s>��}\�>\�������\��\�%/yIZ�����\\˴�Q��\�/~�k\�\�*\��U�lڏ~���׺���\r��dnp��\�s}\��\�\�e�h��޾�E\�3��\�*�\�\�3]��g�����!}u�}>3\�\�3;X?\�\�1F�v�Y����\�\�;�����ޓ�?�FO�\�?�\�\�zoޕ�\�n�I\�\�\��v\����7Ki㎼j��͌�\�[LE�g\�ڵ鼹�v1\�ՠ�o\�C�\�VP\Z�\�aW�\�_fXk\�\�3Nf�\r\�\�|��y��}\�>\��\�E��M\��\��\�w��\\˴�Q��dgd�6�=�謂Ť�mhK\�v��\�,3\��_�L�\��d��\�t\�U\����\�K\��\�B�=.�~�)�9\r�<2\�q��7^kf\�\�8���3\�8㉾�Z{L;Բe\�^\��?���\'�\�G?���\�m�\�\�?w[LrG>׷�\�gԼYJw\�lC�p�!��6����\���Xf�˯w\�L��\����ta\�*\�@�\���|�++���zi��\��<\�\�?.�\�V�c\�\�1\�\�����h\�@<��s\�\�uf@��\�Ǵ#��\�\�>��Q,�G�N6l�\�\�w��\����s�\�4w\�2�6\�ȵ�fE��ic*�\�`\�\�k�i�߹��Y�ra\�*\�H�]2Woߪ{}LFݟ[\�뛨8\�\�{���L�q�>�˝���\�.\��\�?�\�O~��3v�p_/�䟫m��#/\�\\\�\�xT\�u���u��ʮ{�i㎼imh֣\rIմ�\r-B]º\�\�z\�\�s;�\�]��g�t��\�\�\�\�Z\�Q\�\�W\�z�*�=��qM�� `\�_�\�b��k\�\\_\�iK��ǉ\'����\���\�q/4\�ỳ_w��2\�yQ\�J��]�\�c&�6\�țֆf=ڐTM\�\�\"UV}|�L��\��\�׻ta\�*\�X�]2W��U}<\�P�s���F\�y���}�\�5Q>�\�O�_q�\�/���R�\�~L��}?-�\���Ӗ�|���6�W�X�\���ǿ}\�\'r��\�z\�m����}I\�M[\�\�c=�u�\�4w\�;\�#y\�ߘ^\�+�\�Gbް�d\��/�ƅ\��\�k�䠃J��1���\�qU��ɱ�XW<��G�\�y\��o\�i\�|\�mHv�6$U\�\�64�q�\�>���\�\���둮\\سJ:\�\�\�s\�>�f\Z���q�ǢqL�;�_l:uL�h;�a\�	\'��\�\���-+W���w`��\�\���\���ÿ�\�o\�\�v\�m?�\�����~���fo�\�;�3s\�ݑG\�����;ϋ/�x\�O\�Ebި��/�b�UW]�\�~�\�\��\�\n��\��\�ξx\�7&��o��ގ\�_ߤ\�\���ې\�mH���mhLK\�7P\\\��3A�mV:\�\���<\�\�\�u�˷NvL[p�?*�<�۲e\�\�)�/_���\��r\�\�7*�]�s�\�\\��]1\�y�;\�q�_|�%nGbި��/���}�\�\�{��\�~\�[ޒގq\�\��矟lܸq\��M:mܑO�\r\�\�ц�j\�؆*X2Wn�Xv����6+\�e�`\�\�h���o\�\�:�1-�L{G��rŀ|A`\�}���\�\��q�\�_��n�ݎ]}�\�\�>���t������\�3\�qG>\�6$�G��ic�h\�\�\�\�B�g��۬t��.\��O7,�9/4\�7\��\�G;���{��\�ļQ�\�g�}\���($dg\Zĵ�\�1\�v\\� n\�{\�Kn��\��v��\�\�Lw\�\�nC�{�!��6��\Z,�+@�\�N�o�2�wX�6�n\Z�y�3\���u\�C9$����O>9vbibި�\�\�{�\������\�\��ɟ(\n\�\�1�\�v;�bň8!�Q ���\�^ߤ\�\���ې\�mH���m�&��d�>�\�feF�o�o\�\�3�{�>P�y�\�\��6ԬhCR5mlC5\��g\��\��r�o�2C�W_%hP�y�\�\��6ԬhCR5mlC5[��l3\��\�fe\����\�\����\��\�\��ˎ�Yi\�\\jV�!��6���\�<Ƞ��Y�����\�k\�-[�L;�qّ7+mܑkC͊6$U\�\�6T7\�\�\�ʬ�_}u��>��;^/�4?(���Yi\�\\jV�!��6���9\�(O�mVf��ꫳ-\�\�+\\���`Gެ�qG�\r5+ڐTM\�P\�d���6+�\��\�ٕ;;�Y0.;�f��;rm�Yц�j\�؆\�\� �<��Y�����ή\�\�\��qّ7+mܑkC͊6$U\�\�6T7\�\�\�ʬ�_}u6\r9;�Y0;�f��;rm�Yц�j\�؆\�\� �<��Y�����Φ8��\�,�y�\�\��6ԬhCR5mlCus�Q��۬\�Z�\�WgO�PP\�gi�q�v\�\�Jw\�\�P��\rIմ�\r\�\�AFy�o�2k�W_�=q@A g	@Yv\�\�Jw\�\�P��\rIմ�\r\�\�AFy�o�2k�W_%hP�y�\�\��6ԬhCR5mlCu3�,O�mVf��\�\�\0*�#oVڸ#׆�mH���m�n�\�\�\�ʬ�_}��@v\�\�Jw\�\�P��\rIմ�\r\�\�\�<��Y����������Yi\�\\jV�!��6���\\���6+�\��U�v\0ؑ7+mܑkC͊6$U\�\�6T7�\���\�fe\����J\��;�f��;rm�Yц�j\�؆\�fpY��۬\�Z�\�W	\�T�r\�\�\'�o\�>�C�ɧ�9\�\�ۑ\�\�FM�\r5\'ڐTM[\�P\�.\�\���Y\��*A;�\n֬Ys��M�v*2�\�}�\�\�\�\�\�\�\�?��ӆ�mH���m�n�\�\�\�\�,�_}��@�V�:f�\�\�\�6nܸY�:\�\�7l\��\�\�N�W�����N�~�!������\\���N?�\��U�v\0\�\�#*ʽ<\�K��3�h\�}����;�x\�;�mh:ц�jZ߆\�dp�8\�nv��w:�\�����\0\0jcp	\��\0\0jcp	\��\0\0jcp	\��\0\0jcp	\��\0\0jcp	\��\0\0jcp	\��\0\0jcp	\�\�\�\�E\�\\ \�\�G�\�f\0P�Kh�^�\\ZP\0\�gi�qt�m6\0\0�1��f�3\0\n�\0\��q�\�\0\0\�\�\��)\�\0((8;`\�\�f\0P�Kh�8��\�\�f�\r\0@m.��\�L����\��r\�\�l\0\0jcp	͖;K�\�3\�6\0�\�\\B�\�\�X��\�l�\�\0�6�\�|\�Y�\�\�\�\0\0�\�\\B�eg	\�3{�\0\0jcpI\�%I�\���\�/��\��r\�\�d~~������֖�\��\'׬Ys��U��\�>,�m6\0\0�1��\�֯_��\��h�iӦd��\�\�\�?.N�\����^�z\����Q�ψ�l�\0���%]g\��h� U&��7n���_���(\�6\0�\�\\\�u�5g4#�9\�\�\�\�\�F�g�\r\0@m.\��{��T���<�\�\�f\0P�K��lA\��\�nL\�\���\�k�6M܎i�\�Z��\�\0�6�t]���\�[\�Kn��c\�Ϯ�\�\�\�b^~y?\n\�\�f\0P�K��LA\��\�~0P\�r\�m�:����jl�\0���%]W� �\���@! K\�\�//\�GA�\Z\�l\0\0jcpIו)\�:��B@���_^Ə�@5�\�\0\0\�\�\���ShV��\�\0�6�t]��@��@��%\�嗗� P�m6\0\0�1��\�\�\��\�܁B@���_^Ə�@5�\�\0\0\�\�\���+S\�r\�ϓ[����b@L�y�\�e�(Tc�\r\0@m.\�2�\�]?�x� \��\�I�(Tc�\r\0@m.\�R�;�u7�\�@A �ż�\�e\�(Tc�\r\0@m.麅\no�/��\'_(d�y�L�q2^��\�\0�6�t\�Ђ��\�\�u��[�:g��O,\�:[�z��\�\0�6�t]QA`���\�\�գ P�m6\0\0�1��\�\ne\�\n�xl~}R>\n\�\�f\0P�K��� �?\�_l�\��Q�\�6\0�\�\\\�uE�^��\�\0�6�t��@�� P�m6\0\0�1��\���jl�\0���%]� Ь(Tc�\r\0@m.\�:�fEA�\Z\�l\0\0jcpI\�)4+\n\�\�f\0P�K�NA�YQ�\�6\0�\�\\\�u\n͊�@5�\�\0\0\�\�\���ShV��\�\0�6�t��@�� P�m6\0\0�1��\���jl�\0���%]� Ь(Tc�\r\0@m.\�:�fEA�\Z\�l\0\0jcpI\�)4+\n\�\�f\0P�Kڪ\�v�\�ei~z^\n���&?=�K.�$9蠃�g<\�\�\�G=0�Q�\�6\0�\�\\\�V\�vwfda�M�g>�\�r6lHz衁�]��@5�\�\0\0\�\�\���\�+�,4� �\�>\�s�8 9���/�p\���e�lْ�|�\�ɾ�\�/HN?��d\�֭��\��\�O=�\�ݦr\�!\�^{핮�S��T��\�:\��E]4��&�jl�\0���%mUP(,4� p��\�\'+W�Lo\��~~�H\��\\�|�\�_NoGQ�\�\�.�,�\�{v�ˮ]�v\���\�;/��\�\�\��\�\��\�d��\�\0�6��UA! ��0\�Ԃ@|%\�\�+��=\�9\�yNz��L��Ń����~8ٱc\�n\�\�?��&�jl�\0�M�A�H�\�Ԃ@�yq�܏����@܎�-[4m��\�H��\�g\0\0`�\���r\�q-�\�@�y\'�xbz?�2�/})�}\�Yg.[4m��ӈ3\0\0\0�d�B@�\��x 9餓v]T�\�3\�L�m\�V�lѴ�\�O#\n\0\0\0T�P! ӄ���W\0\0\0�d�B@FA�YQ\0\0\0`\"�\0\0\0&bO>�\�]\�ǿ�\�;\�\�\�\�\���7�i`z� \0\0\0�D\�]���\�w\"_�\��\�\�ɞ;?�\rQ\0\0\0`\"\�.�v\�i\����\����ߣ�>z׼\r6$Gyd�\�g?;yի^�\�t\�M#�o޼99�\�S���\�/\��\�˓{\�7�뎜~�\�\�s��\�\�CI\�FȦg�eo�\�\�կ~u�\�^{%tP�o}k�u�s\�9\��x\��Ʌ^8�k�#\n\0\0\0LD���z(y���\�u\�҃\�}�\�\'y\�G\��Y�\�\��n�\�k^�\�O9\���ʕ+�5k֤�c٘�#q\0\�E���:\�\�\�e�+�W]uUr�\�\�\���/w��\�\�\�?o�\�TG\0\0\0��:�?\�U&�Ї\��/�\�\��\�\\sMz�y\�{^z�\�G\�\�qæ\��yL\�O,��۶mK�nݚ\�\�w\�}w���g���\�\�g����\�m^v;\n�=�\�n�\�yMuDA\0\0\0���� ��w�c\�`9�\�8��dggd6=�c�<0�\\ٺ\��� g\'�\�˖}\�\�^�\���׿�ۼ�r��\�yMuDA\0\0\0���� ߣ\�Ӟ�q\���}�_L�\�\�\��1\��޿��\�\��\���M?��\�\����\�\�k��6���z@܎\�\��ف~v\�~|M!\�\�k�bA\\c \�_y啻׿�\���\�\�5\�\0\0\0&����g?�\��\�8.ЗM�\�[vd\�i��\�;,yֳ��~�?�P߰\���+V�H^����{�\�ߞ\�}�\�\�l�\�E=�\�t=1\�\�s\�M�\��\�\�Ozr�$���\�\�e�;\�\��q^SQ\0\0\0`\"\�*L:s����DA\0\0\0��PhV\0\0\0����\Z\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&BA�YQ\0\0\0`\"�\0\0\0&b\�ʕOn߾}\��T&�\�\�p������g\0\0\0�[�f\���6m\Z88�\�\�\�\������\��g\0\0\0�[�j\�1�W�޶q\�\�\�\��Nz\��\�\r6|s~~�W����\0\0\0`���\���\�^�\�\�\�\�{���\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��$����τ-\0\0\0\0IEND�B`�',1);
/*!40000 ALTER TABLE `act_ge_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('cfg.execution-related-entities-count','false',1),('cfg.task-related-entities-count','false',1),('common.schema.version','6.2.0.0',1),('identitylink.schema.version','6.2.0.0',1),('job.schema.version','6.2.0.0',1),('next.dbid','232501',94),('schema.history','create(6.2.0.0)',1),('schema.version','6.2.0.0',1),('task.schema.version','6.2.0.0',1),('variable.schema.version','6.2.0.0',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT '1',
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT '1',
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_EXE` (`EXECUTION_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_bytearray`
--

DROP TABLE IF EXISTS `act_id_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_bytearray`
--

LOCK TABLES `act_id_bytearray` WRITE;
/*!40000 ALTER TABLE `act_id_bytearray` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_group`
--

DROP TABLE IF EXISTS `act_id_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_group`
--

LOCK TABLES `act_id_group` WRITE;
/*!40000 ALTER TABLE `act_id_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_info`
--

DROP TABLE IF EXISTS `act_id_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_info`
--

LOCK TABLES `act_id_info` WRITE;
/*!40000 ALTER TABLE `act_id_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_membership`
--

DROP TABLE IF EXISTS `act_id_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_membership`
--

LOCK TABLES `act_id_membership` WRITE;
/*!40000 ALTER TABLE `act_id_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_priv`
--

DROP TABLE IF EXISTS `act_id_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_priv` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_priv`
--

LOCK TABLES `act_id_priv` WRITE;
/*!40000 ALTER TABLE `act_id_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_priv_mapping`
--

DROP TABLE IF EXISTS `act_id_priv_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_priv_mapping` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PRIV_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_PRIV_MAPPING` (`PRIV_ID_`),
  KEY `ACT_IDX_PRIV_USER` (`USER_ID_`),
  KEY `ACT_IDX_PRIV_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_PRIV_MAPPING` FOREIGN KEY (`PRIV_ID_`) REFERENCES `act_id_priv` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_priv_mapping`
--

LOCK TABLES `act_id_priv_mapping` WRITE;
/*!40000 ALTER TABLE `act_id_priv_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_priv_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_property`
--

DROP TABLE IF EXISTS `act_id_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_property`
--

LOCK TABLES `act_id_property` WRITE;
/*!40000 ALTER TABLE `act_id_property` DISABLE KEYS */;
INSERT INTO `act_id_property` VALUES ('schema.version','6.2.0.0',1);
/*!40000 ALTER TABLE `act_id_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_token`
--

DROP TABLE IF EXISTS `act_id_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_token` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TOKEN_VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_DATE_` timestamp(3) NULL DEFAULT NULL,
  `IP_ADDRESS_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_AGENT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_DATA_` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_token`
--

LOCK TABLES `act_id_token` WRITE;
/*!40000 ALTER TABLE `act_id_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_user`
--

DROP TABLE IF EXISTS `act_id_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_user`
--

LOCK TABLES `act_id_user` WRITE;
/*!40000 ALTER TABLE `act_id_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_procdef_info`
--

DROP TABLE IF EXISTS `act_procdef_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_procdef_info`
--

LOCK TABLES `act_procdef_info` WRITE;
/*!40000 ALTER TABLE `act_procdef_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_procdef_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment` VALUES ('1',NULL,NULL,NULL,'','2020-04-19 20:33:14.135',NULL),('227501',NULL,NULL,NULL,'','2020-04-20 18:22:05.689',NULL);
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_model`
--

DROP TABLE IF EXISTS `act_re_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_model`
--

LOCK TABLES `act_re_model` WRITE;
/*!40000 ALTER TABLE `act_re_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef` VALUES ('defect:1:227510',1,'http://www.flowable.org/processdef','Defect Request','defect',1,'227501','defect/defect/defect.bpmn','defect/defect/defect.defect.png',NULL,1,1,1,'',NULL),('loan:1:10',1,'http://www.flowable.org/processdef','Loan Request','loan',1,'1','loan.bpmn','loan.loan.png',NULL,1,1,1,'',NULL);
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_deadletter_job`
--

DROP TABLE IF EXISTS `act_ru_deadletter_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_deadletter_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_deadletter_job`
--

LOCK TABLES `act_ru_deadletter_job` WRITE;
/*!40000 ALTER TABLE `act_ru_deadletter_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_deadletter_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `act_ru_history_job`
--

DROP TABLE IF EXISTS `act_ru_history_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_history_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `ADV_HANDLER_CFG_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_history_job`
--

LOCK TABLES `act_ru_history_job` WRITE;
/*!40000 ALTER TABLE `act_ru_history_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_history_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_suspended_job`
--

DROP TABLE IF EXISTS `act_ru_suspended_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_suspended_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_suspended_job`
--

LOCK TABLES `act_ru_suspended_job` WRITE;
/*!40000 ALTER TABLE `act_ru_suspended_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_suspended_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint DEFAULT NULL,
  `VAR_COUNT_` int DEFAULT NULL,
  `ID_LINK_COUNT_` int DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_IDX_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
INSERT INTO `act_ru_task` VALUES ('223682',1,'223537','223535','loan:1:10',NULL,NULL,NULL,NULL,'Loan Review',NULL,NULL,'sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD',NULL,NULL,NULL,50,'2020-04-20 09:43:01.323',NULL,NULL,1,'','loanreview',NULL,0,0,0),('223708',1,'223425','223423','loan:1:10',NULL,NULL,NULL,NULL,'Advanced Loan Review',NULL,NULL,'sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD',NULL,NULL,NULL,50,'2020-04-20 09:43:01.366',NULL,NULL,1,'','advreview',NULL,0,0,0),('223724',1,'223723','223721','loan:1:10',NULL,NULL,NULL,NULL,'Capture application details',NULL,NULL,'sid-E499C4FD-601A-428B-8A94-53A4702BCA5A',NULL,NULL,NULL,50,'2020-04-20 09:43:01.414',NULL,NULL,1,'','loanin',NULL,0,0,0),('223742',1,'223603','223601','loan:1:10',NULL,NULL,NULL,NULL,'Loan Review',NULL,NULL,'sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD',NULL,NULL,NULL,50,'2020-04-20 09:43:01.466',NULL,NULL,1,'','loanreview',NULL,0,0,0),('223768',1,'223467','223465','loan:1:10',NULL,NULL,NULL,NULL,'Inform Acceptance',NULL,NULL,'sid-786BC734-A9A0-419D-87AD-DF3EAA269671',NULL,NULL,NULL,50,'2020-04-20 09:43:01.554',NULL,NULL,1,'',NULL,NULL,0,0,0),('227526',1,'227525','227523','defect:1:227510',NULL,NULL,NULL,NULL,'Capture defect details',NULL,NULL,'sid-E499C4FD-601A-428B-8A94-53A4702BCA5A',NULL,NULL,NULL,50,'2020-04-20 18:22:06.735',NULL,NULL,1,'','defectin',NULL,0,0,0),('227550',1,'227549','227547','defect:1:227510',NULL,NULL,NULL,NULL,'Capture defect details',NULL,NULL,'sid-E499C4FD-601A-428B-8A94-53A4702BCA5A',NULL,NULL,NULL,50,'2020-04-20 18:22:07.076',NULL,NULL,1,'','defectin',NULL,0,0,0),('230004',1,'230003','230001','defect:1:227510',NULL,NULL,NULL,NULL,'Capture defect details',NULL,NULL,'sid-E499C4FD-601A-428B-8A94-53A4702BCA5A',NULL,NULL,NULL,50,'2020-04-20 18:27:36.417',NULL,NULL,1,'','defectin',NULL,0,0,0),('99982',1,'99761','99759','loan:1:10',NULL,NULL,NULL,NULL,'Loan Review',NULL,NULL,'sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD',NULL,NULL,NULL,50,'2020-04-20 08:53:39.085',NULL,NULL,1,'','loanreview',NULL,0,0,0);
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_timer_job`
--

DROP TABLE IF EXISTS `act_ru_timer_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_timer_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_TIMER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_timer_job`
--

LOCK TABLES `act_ru_timer_job` WRITE;
/*!40000 ALTER TABLE `act_ru_timer_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_timer_job` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2020-04-21  0:10:43
