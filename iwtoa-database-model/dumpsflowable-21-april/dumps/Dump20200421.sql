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
INSERT INTO `act_ge_bytearray` VALUES ('2',1,'form-loanin.form','1',_binary '{\"name\":\"Loan Application\",\"key\":\"loanin\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname:\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":\"\",\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"loan\",\"name\":\"Requested loan\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":true,\"placeholder\":\"Loan amount requested...\",\"layout\":null},{\"fieldType\":\"OptionFormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"radio-buttons\",\"value\":\"Rented\",\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"optionType\":null,\"hasEmptyValue\":null,\"options\":[{\"id\":null,\"name\":\"Rented\"},{\"id\":null,\"name\":\"Mortgaged\"},{\"id\":null,\"name\":\"Owned\"}]},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"OptionFormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"dropdown\",\"value\":\"Please choose one...\",\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"optionType\":null,\"hasEmptyValue\":true,\"options\":[{\"id\":null,\"name\":\"Please choose one...\"},{\"id\":null,\"name\":\"Belgian\"},{\"id\":null,\"name\":\"Dutch\"},{\"id\":null,\"name\":\"French\"},{\"id\":null,\"name\":\"German\"},{\"id\":null,\"name\":\"Italian\"},{\"id\":null,\"name\":\"Spanish\"},{\"id\":null,\"name\":\"UK\"},{\"id\":null,\"name\":\"Other\"}]},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"Total current income...\",\"layout\":null}],\"outcomes\":[]}',0),('227502',1,'defect/defect/form-advreview.form','227501',_binary '{\"name\":\"Advanced review\",\"key\":\"advreview\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"defect\",\"name\":\"Defect\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null}],\"outcomes\":[{\"id\":null,\"name\":\"Reject\"},{\"id\":null,\"name\":\"Accept\"}]}',0),('227503',1,'defect/defect/form-name.form','227501',_binary '{\"name\":\"Get name\",\"key\":\"name\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"Please enter the full name of the applicant...\",\"layout\":null}],\"outcomes\":[]}',0),('227504',1,'defect/defect/defect.app','227501',_binary '{\"key\":\"defect\",\"name\":\"Defect App\",\"description\":\"Applications for Defects\",\"theme\":\"theme-7\",\"icon\":\"glyphicon-ok\",\"usersAccess\":null,\"groupsAccess\":null}',0),('227505',1,'defect/defect/form-defectin.form','227501',_binary '{\"name\":\"Defect Request Application\",\"key\":\"defectin\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname:\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":\"\",\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"defect\",\"name\":\"Request Defect\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":true,\"placeholder\":\"No of Defects requested...\",\"layout\":null},{\"fieldType\":\"OptionFormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"radio-buttons\",\"value\":\"Rented\",\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"optionType\":null,\"hasEmptyValue\":null,\"options\":[{\"id\":null,\"name\":\"Rented\"},{\"id\":null,\"name\":\"Mortgaged\"},{\"id\":null,\"name\":\"Owned\"}]},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"OptionFormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"dropdown\",\"value\":\"Please choose one...\",\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"optionType\":null,\"hasEmptyValue\":true,\"options\":[{\"id\":null,\"name\":\"Please choose one...\"},{\"id\":null,\"name\":\"Belgian\"},{\"id\":null,\"name\":\"Dutch\"},{\"id\":null,\"name\":\"French\"},{\"id\":null,\"name\":\"German\"},{\"id\":null,\"name\":\"Italian\"},{\"id\":null,\"name\":\"Spanish\"},{\"id\":null,\"name\":\"UK\"},{\"id\":null,\"name\":\"Other\"}]},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"Total current income...\",\"layout\":null}],\"outcomes\":[]}',0),('227506',1,'defect/defect/form-defectreview.form','227501',_binary '{\"name\":\"Defect review\",\"key\":\"defectreview\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"defect\",\"name\":\"Defect\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"guidance\",\"name\":\"Guidance\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null}],\"outcomes\":[{\"id\":null,\"name\":\"Reject\"},{\"id\":null,\"name\":\"Consider\"},{\"id\":null,\"name\":\"Accept\"}]}',0),('227507',1,'defect/defect/defect.bpmn','227501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:flowable=\"http://flowable.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.flowable.org/processdef\">\n  <process id=\"defect\" name=\"Defect Request\" isExecutable=\"true\">\n    <startEvent id=\"startEvent1\" flowable:initiator=\"initiator\" flowable:formKey=\"name\"></startEvent>\n    <userTask id=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\" name=\"Capture defect details\" flowable:assignee=\"${initiator}\" flowable:formKey=\"defectin\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-966371C5-CCF2-4711-8F8D-A0F09F806C64\" sourceRef=\"startEvent1\" targetRef=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\"></sequenceFlow>\n    <sequenceFlow id=\"sid-F7DA85F8-2FA7-44FE-BF12-07E6CF04188B\" sourceRef=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\" targetRef=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\"></sequenceFlow>\n    <userTask id=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\" name=\"Defect Review\" flowable:assignee=\"${initiator}\" flowable:formKey=\"defectreview\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-1008F0B8-53E4-42FA-85C1-00264671FA13\" sourceRef=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\" targetRef=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-2E640A0B-D82B-45A8-8BCC-B2E70F07E46F\" sourceRef=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\" targetRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\"></sequenceFlow>\n    <userTask id=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\" name=\"Advanced Defect Review\" flowable:assignee=\"${initiator}\" flowable:formKey=\"advreview\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\" name=\"Inform Acceptance\" flowable:assignee=\"${initiator}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\" name=\"Inform Rejection\" flowable:assignee=\"${initiator}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <exclusiveGateway id=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-49699BF8-3761-4BFC-BEAD-8FD13225481F\" sourceRef=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\" targetRef=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\"></exclusiveGateway>\n    <endEvent id=\"sid-CC27E554-CFAE-4146-A34B-E30FD4687102\"></endEvent>\n    <sequenceFlow id=\"sid-73D814EE-CA76-4353-8B78-8656C2766F34\" sourceRef=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\" targetRef=\"sid-CC27E554-CFAE-4146-A34B-E30FD4687102\"></sequenceFlow>\n    <sequenceFlow id=\"sid-7CB955DC-9C32-4B4C-BEA5-645629BD108F\" sourceRef=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\" targetRef=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\"></sequenceFlow>\n    <serviceTask id=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\" name=\"Defect advice\" flowable:type=\"dmn\">\n      <extensionElements>\n        <flowable:field name=\"decisionTableReferenceKey\">\n          <flowable:string><![CDATA[advice]]></flowable:string>\n        </flowable:field>\n      </extensionElements>\n    </serviceTask>\n    <sequenceFlow id=\"sid-410F9B72-3AEA-4BB0-9F4C-B749488FE835\" name=\"Accept\" sourceRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" targetRef=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_defectreview_outcome == \"Accept\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-60C38402-D299-4107-8029-1F52BC3099F0\" name=\"May be\" sourceRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" targetRef=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_defectreview_outcome == \"Consider\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-114F299D-8AE9-457D-9C12-6DE8FEFA7099\" name=\"Reject\" sourceRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" targetRef=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_defectreview_outcome == \"Reject\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-FEFCC3DC-BDE1-44D0-B41C-EA10F0F3C858\" name=\"No\" sourceRef=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\" targetRef=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_advreview_outcome == \"Reject\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-CFAB6DD6-EAA0-4F48-9930-8010328F07B4\" name=\"Yes\" sourceRef=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\" targetRef=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_advreview_outcome == \"Accept\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-A6343F4C-9235-4C84-9F8E-65E775ED73EE\" sourceRef=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\" targetRef=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_defect\">\n    <bpmndi:BPMNPlane bpmnElement=\"defect\" id=\"BPMNPlane_defect\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"40.0\" y=\"183.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\" id=\"BPMNShape_sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"115.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\" id=\"BPMNShape_sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"405.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" id=\"BPMNShape_sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"550.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\" id=\"BPMNShape_sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"645.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\" id=\"BPMNShape_sid-786BC734-A9A0-419D-87AD-DF3EAA269671\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"755.0\" y=\"255.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\" id=\"BPMNShape_sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"755.0\" y=\"65.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\" id=\"BPMNShape_sid-8670129B-EBAC-4B60-A335-36F93DB70138\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"785.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\" id=\"BPMNShape_sid-F3E3FE06-D696-47AB-864B-8B31B230542C\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"915.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-CC27E554-CFAE-4146-A34B-E30FD4687102\" id=\"BPMNShape_sid-CC27E554-CFAE-4146-A34B-E30FD4687102\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"990.0\" y=\"184.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\" id=\"BPMNShape_sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"260.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-410F9B72-3AEA-4BB0-9F4C-B749488FE835\" id=\"BPMNEdge_sid-410F9B72-3AEA-4BB0-9F4C-B749488FE835\">\n        <omgdi:waypoint x=\"570.1025641025641\" y=\"217.8974358974359\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"570.5\" y=\"295.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"755.0\" y=\"295.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FEFCC3DC-BDE1-44D0-B41C-EA10F0F3C858\" id=\"BPMNEdge_sid-FEFCC3DC-BDE1-44D0-B41C-EA10F0F3C858\">\n        <omgdi:waypoint x=\"805.0\" y=\"178.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"805.0\" y=\"145.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1008F0B8-53E4-42FA-85C1-00264671FA13\" id=\"BPMNEdge_sid-1008F0B8-53E4-42FA-85C1-00264671FA13\">\n        <omgdi:waypoint x=\"360.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"405.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-60C38402-D299-4107-8029-1F52BC3099F0\" id=\"BPMNEdge_sid-60C38402-D299-4107-8029-1F52BC3099F0\">\n        <omgdi:waypoint x=\"590.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"645.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-49699BF8-3761-4BFC-BEAD-8FD13225481F\" id=\"BPMNEdge_sid-49699BF8-3761-4BFC-BEAD-8FD13225481F\">\n        <omgdi:waypoint x=\"745.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"785.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-F7DA85F8-2FA7-44FE-BF12-07E6CF04188B\" id=\"BPMNEdge_sid-F7DA85F8-2FA7-44FE-BF12-07E6CF04188B\">\n        <omgdi:waypoint x=\"215.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"260.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-CFAB6DD6-EAA0-4F48-9930-8010328F07B4\" id=\"BPMNEdge_sid-CFAB6DD6-EAA0-4F48-9930-8010328F07B4\">\n        <omgdi:waypoint x=\"805.0\" y=\"218.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"805.0\" y=\"255.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-2E640A0B-D82B-45A8-8BCC-B2E70F07E46F\" id=\"BPMNEdge_sid-2E640A0B-D82B-45A8-8BCC-B2E70F07E46F\">\n        <omgdi:waypoint x=\"505.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"550.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-73D814EE-CA76-4353-8B78-8656C2766F34\" id=\"BPMNEdge_sid-73D814EE-CA76-4353-8B78-8656C2766F34\">\n        <omgdi:waypoint x=\"955.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"990.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-966371C5-CCF2-4711-8F8D-A0F09F806C64\" id=\"BPMNEdge_sid-966371C5-CCF2-4711-8F8D-A0F09F806C64\">\n        <omgdi:waypoint x=\"70.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"115.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-A6343F4C-9235-4C84-9F8E-65E775ED73EE\" id=\"BPMNEdge_sid-A6343F4C-9235-4C84-9F8E-65E775ED73EE\">\n        <omgdi:waypoint x=\"855.0\" y=\"105.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.5\" y=\"105.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.1069518716578\" y=\"178.10695187165774\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-114F299D-8AE9-457D-9C12-6DE8FEFA7099\" id=\"BPMNEdge_sid-114F299D-8AE9-457D-9C12-6DE8FEFA7099\">\n        <omgdi:waypoint x=\"570.1069518716578\" y=\"178.10695187165774\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"570.5\" y=\"105.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"755.0\" y=\"105.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7CB955DC-9C32-4B4C-BEA5-645629BD108F\" id=\"BPMNEdge_sid-7CB955DC-9C32-4B4C-BEA5-645629BD108F\">\n        <omgdi:waypoint x=\"855.0\" y=\"295.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.0\" y=\"295.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.0\" y=\"218.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('227508',1,'defect/defect/dmn-advice.dmn','227501',_binary '<definitions xmlns=\"http://www.omg.org/spec/DMN/20151101\" id=\"definition_e3c70382-bdaa-11e7-a234-baca12a46316\" name=\"Credite advice\" namespace=\"http://www.flowable.org/dmn\">\n  <decision id=\"advice\" name=\"Defect advice\">\n    <decisionTable id=\"decisionTable_52422dad-bd88-11e7-90a6-92915f9dcc1e\" hitPolicy=\"FIRST\">\n      <input label=\"Age\">\n        <inputExpression id=\"inputExpression_1\" typeRef=\"number\">\n          <text>age</text>\n        </inputExpression>\n      </input>\n      <input label=\"Status\">\n        <inputExpression id=\"inputExpression_3\" typeRef=\"string\">\n          <text>home</text>\n        </inputExpression>\n        <inputValues>\n          <text>\"Rented\",\"Mortgaged\",\"Owned\"</text>\n        </inputValues>\n      </input>\n      <output id=\"outputExpression_2\" label=\"Defect Guide\" name=\"guidance\" typeRef=\"string\"></output>\n      <rule>\n        <inputEntry id=\"inputEntry_1_1\">\n          <text><![CDATA[< 25]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_1\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_1\">\n          <text><![CDATA[\"New Home, so need further checks\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_2\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_2\">\n          <text><![CDATA[\"Rented\"]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_2\">\n          <text><![CDATA[\"No collateral, so consider viability\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_3\">\n          <text><![CDATA[> 60]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_3\">\n          <text><![CDATA[\"Mortgaged\"]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_3\">\n          <text><![CDATA[\"Potentially overstretched debt in home to consider\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_4\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_4\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_4\">\n          <text><![CDATA[\"No guidance\"]]></text>\n        </outputEntry>\n      </rule>\n    </decisionTable>\n  </decision>\n</definitions>',0),('227509',1,'defect/defect/defect.defect.png','227501',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0Y\0\0\0Oıa\0\09\"IDATx^\í\İ}°$e}/ğ£¥ˆh-‘X•*M0\åk™ª„ü»D\Ñ(…xoÕ²¼ˆqa-V®eH¼CE£–&ŞŠe‰•D@A.*Q8\ì².º°\î½\ÊK®Ë®¼¬+»,\Ë»ˆ\Ğw\Î\é\Í\ì3=súL÷\Îyº\çó©úÖ™\é\î\é™3ó<\İOÿNOŸ™\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0`ºdY¶ß†\r.¿ñ\Æ½zõ\êlvvV&œ\ŞûşÔºu\ë\î_³fÍ±ñ\ç\0\0\0ûÄ†\r¾\Ñ;Í¶lÙ’\íÚµ+{üñ\Çe\Â	\ï{xÿ×®]»cvvö\èø3\0\0€Æ…3\ÂÁh|*“\Ï\æÍ›·\Î\Î\Î\ŞF\0\0\0Ğ¸ğ5g¤‘ğ9\Ì\Î\Î\î?#\0\0\0h\\ø{|`*‹—ğyÄŸ\0\0\04®jA\à‘‡6gnùJvûu“\'\Ü\Ó\â\å¤^\0\0\0˜ˆ*\Û\ï\Ën»\æœ\ì\ÇWş\Å^	\ÓÂ¼xy?\n\0\0\0LD•‚À=·w P\ä\Ş\Ûÿe`y?\n\0\0\0LD•‚À¿_ÿ·…€\"a^¼¼Œ\0\0\0&¢JA\à¶ÙŠ„yñò2~\0\0\0˜´¢ \0\0\0ÀDT)„ÿ*Š„yñò2~\0\0\0˜ˆ*»~x\î@! H˜//\ãGA\0\0\0€‰¨R\Øv\ßO²Û®ı\ëb@˜\æ\Å\Ë\ËøQ\0\0\0`\"ªB\îş\Ñ\Å0-^N\êEA\0\0\0€‰¨TØ½;»kı?Â´0o`y;\n\0\0\0L\Ä|\Û\ï\Ë\îü\á\çŠEÂ¼°Lü8/\n\0\0\0L\ÄĞ‚À\î\İ\Ù\æ»\Öd·^}ö@ NX&,\ëlúQ\0\0\0`\"\Ê\nó0,\Î¨\0\0\0&¢¬ På¬€a	\×\'Õ£ \0\0\0ÀD”\âƒü…&^ŸT‚\0\0\0\0QVÅ‹‚\0\0\0\0¡ V\0\0\0˜´¢ \0\0\0ÀD(¤\0\0\0&BA ­(\0\0\00\niEA\0\0\0€‰PH+\n\0\0\0L„‚@ZQ\0\0\0`\"ÒŠ‚\0\0\0\0¡ V\0\0\0˜´¢ \0\0\0ÀD(¤\0\0\0&BA ­(\0\0\00\niEA\0\0\0€Z?şø\ë{Y\ZO)¤\0\0\0j9şøã³¹Œ,(¤\0\0\0j\é+Œ,(¤\0\0\0j))”ÒŠ‚\0\0\0\0µ”\â\ä…´¢ \0\0\0‰(9ˆ\éT\ÒJüù\È\Âo\Ç\0`,—´U|Ô—ëŸ\ç+½\Éy\â\éq.¹\ä’\ì\ĞCÍõ¬ge\Çs\ÌÀü}•\âõ…<ó™\Ï\Ì;\ì°lÍš5\ËÅ©ú{\rKx¯\Şø\Æ76¶¾²8C \Ûl\0\0\ZcpI[\ÍW(\Ô)<û\Ù\ÏÎ—Û¸qcöğ\Ã\Ì\ßW\é}7\ÜpC~ûU¯z\ÕÀrM§\êûR\'\nõ\Øf\0\ĞƒK\Új¾B@a¾‚@qû\ì³\Ï\Î>ø\à\ìC\É.¼ğ\Â=\Óû—İ¶m[¶bÅŠ\ìÀ\Ì^ô¢e«V­Ê¶oß¾\×z\Şô¦7eGq\Ä^\Ó?üğl¿ıö\Ë\×ı\ÉO~2\İa\áşE]4òõ\íØ±#¿\ÎR÷·nİšz\ê©\ÙA”gùò\åÙ½÷\Ş;ğ¸QË…\Ç[\Şò–\ì9\ÏyNöš×¼&»é¦›Jß…ş\îñ{ÿ^!\nõ\Øf\0\ĞƒK\Új¾B@¡jA\àüó\Ï\ÏV¯^\ß¼ñr!\á€8Ü¿\à‚²/}\éKù\íp`Ü¿ì·¾õ­\ì{\î\ÙkZXö\æ›o\Şsÿ¼ó\Î\Ën¹\å–üv8Xõú®»\îºüö\ë_ÿúüş)§œ’\ß¯uİºuù\íw¾óµ\\ø\îó›\ß\Ì¾\îu¯x||¿\Ê\ï^ö\ÆQ¨\Ç6\0€\Æ\\\ÒuU\á+=öX\é¼\âq\Ï{\Şóòû>ø`p;.„\éñó\ìÜ¹3Û½{÷^\Ï\Õ\Ø\ë+®!°~ıú|^x¾xş^ğ‚\×;j¹ğ3\Üô\ÑGKŸ·\ì~•ß½\ì=Œ£ Pm6\0\01¸¤\ëªª\Ì§Ë‡û\á€8œBn‡S\äË–-›6\ßıxz($¼÷½\ï\ÍÆ¯¼òÊ½^\Ã<0ôqó-Wyä‘¡\ï/\äw\ï÷GA \Ûl\0\0\ZcpI\×5Y8ù\ä“óû\á´ù/~ñ‹ù\í3\Ï<³tÙ²ió\İ/›®!ğò—¿<?ˆ¿ûî»³O<1Ÿ÷\Ù\Ï~v\Ï\×	Šÿ\Ğÿ¸Q\Ë{\ì±ùı+®¸\"ÿY|e\à¹\Ï}n~?\\k \\ }ù\İ\ãûıQ¨\Ç6\0€\Æ\\\ÒuM\Â_\Û\ßó÷ì¹°\Şé§Ÿ°—-[6m¾ûÃ¦_~ù\åùıw¼\ãù\ÅW®\\™½ô¥/\Í/\nø¶·½-Û´iÓ\Ç=ı\éO\ÏoZnÃ†\rÙ‘G™pÀ\Ùk_û\Úü¢‚aú¹ç›½ø\Å/\Îÿ\Õa8ğ\ïù\İ\ãûıQ¨\Ç6\0€\Æ\\\Òue.&\0z¿nö²—½l`^JQ¨\Ç6\0€\Æ\\\Òu\ÓRXºtiö[¿õ[Ù¥—^:0/¥(\Ôc›\r\0@c.\éºi)´%\nõ\Øf\0\ĞƒKºNA ­(\Ôc›\r\0@c.\é:´¢ Pm6\0\01¸¤\ëÒŠ‚@=¶\Ù\0\04\Æ\à’®SH+\nõ\Øf\0\ĞƒKºNA ­(\Ôc›\r\0@c.\é:´¢ Pm6\0\01¸¤\ëÒŠ‚@=¶\Ù\0\04\Æ\à’®SH+\nõ\Øf\0\ĞƒKºNA ­(\Ôc›\r\0@c.\é:´¢ Pm6\0\01¸¤\ëÒŠ‚@=¶\Ù\0\04\Æ\à’®SH+\nõ\Øf\0\ĞƒKºNA ­(\Ôc›\r\0@c.\é:´¢ Pm6\0\01¸¤\ëÒŠ‚@=¶\Ù\0\04\Æ\à’®SH+\nõ\Øf\0\ĞƒKºNA ­(\Ôc›\r\0@c.\é:´¢ Pm6\0\01¸¤\ëÒŠ‚@=¶\Ù\0\04\Æ\à’®SH+\nõ\Øf\0\ĞƒKºNA ­(\Ôc›\r\0@c.\é:´¢ Pm6\0\01¸¤\ëÒŠ‚@=¶\Ù\0\04\Æ\à’®SH+\nõ\Øf\0\ĞƒKºNA ­(\Ôc›\r\0@c.\éºÕ«W?µk×®S™|zŸ\Ãı³³³»\ãÏˆ\êl³\0hŒÁ%]·nİºû·l\Ù2pp*“Ï¦M›.›½9şŒ¨\Î6\0€\Æ\\\ÒukÖ¬9v\íÚµ;6oŞ¼Õ™‹“\Şû¾y\ãÆ—\Î\Î\Îş¢—£\ãÏˆ\êl³\0hŒÁ%\Ó „†¿L÷òxø{\Ûrñ\Åg¡¯\Æ\Ó[”ğ¾‡÷_1 &\Ûl\0\0\Zcp	\é\ëõ\Ó\ëõU\í\0\0€\Æ\\B\Úz}ti\è§sY\Z\Ïgº\Øf\0\ĞƒKH[qvÀ\\®\ç3]l³\0hŒÁ%¤+:;ÀY\Øf\0\ĞƒKHWtv€³°\Í\0 9—¦!g8K`\Ê\Ùf\0\ĞƒKHS8 ¤\à,)g›\r\0@c.!=\á€’\"@œ¥ñ\ã\è>\Ûl\0\0\Zcp	\é	g\0”\0\â8K`\n\Ùf\0\ĞƒKh}•@;\0\0 1—\Ğú*v\0\0@c.¡ôU\í\0jÈ²l¿\r6\\~\ã7şzõ\ê\Õ\Ù\ì\ì¬L8½÷ı©u\ë\Öİ¿fÍšc\ãÏ§\r´¡Å6$u\Óö6\Ô4ƒ\Ë\êô\ß\Å\Ï4÷_}•@;€\Zz;ñoôv\"Ù–-[²]»ve?ş¸L8\á}\ïÿÚµkwôv\ìGÇŸQê´¡Å6$u\Óö6\Ô4ƒ\Ë\êô\ß\Å\Ï4÷_}•@;€\ZBE?\ìDâ‹L>›7o\Ş\ÚÛ‘\ßF©Ó†Ò‰6$u\Ó\Ö6\Ô4ƒ\Ë\êô\ßt2ıW_%\Ğ †pzŸŠ~\Z	ŸCoG¾;şŒR§\r¥mHê¦­m¨i—\Õ\é¿\éd\Zû¯¾J @\r\á»gñE/\áóˆ?£\ÔiCiE’ºicjšÁeuúoZ™¶ş«¯hPC\Õù#m\Î6\Üò•\ìö\ëş&O¸¦\Å\ËI½´qG^µ\r…l~ğ‘\ìC_ÿ¿y\Â\íx¾\ÔO—Û\í\Ğd\Ò\Æ6\Ô4ƒ\Ë\êôß´2mıW_%\Ğ †*;ò\Û\ï\Ën»\æœ\ì\ÇWş\Å^	\ÓÂ¼xy?mÜ‘jC»w?m{ø±=÷\×ıû/÷\Â\íbú¯z4{h\ç.\'\ã§km¨ˆ\í\Ğ\ä\Ò\Æ6\Ô4ƒ\Ë\êôß´2mıW_%\Ğ †*;ò{nÿ\îÀN¼È½·ÿ\ËÀò2~Ú¸#Ö†B1\àk?¼;û\ßøIv\í­÷gk\ïØœs\Åm{\n\áv˜~\åÿ¹7û\ï½eşş\êŸe;Q¨›.µ¡ş\ØM.mlCM3¸¬NÿM+\Ó\ÖõU\í\0j¨²#ÿ÷\ëÿv`^$Ì‹——ñ\Ó\Æù°6´uÇ£Ù‡/ÿÉÀ|9\ë²g÷l}x`=²°t©\rõ\ÇvhricjšÁeuúoZ™¶ş«¯hPC•ùm³Ø	ó\â\åeü´qG>ª\r]õ\ï8ğ–\Ëo\Ú4ğxYxºÖ†Š\ØM.mlCM3¸¬NÿM+\Ó\ÖõU\í\0j°#O+mÜ‘jC\ák\Åÿ_ü¯g—®ß˜ıü—\å	·Ã´bş÷~\ì{¤M¤km¨ˆ\í\Ğ\ä\Ò\Æ6\Ô4ƒ\Ë\êôß´2mıW_>½\Ïüúğ¹Ï“\ë\ã\ÇCTÙ‘‡«\Ç;ğ\"a^¼¼ŒŸ6\î\È\Ë\ÚPøá¢ı\×€x¹0­˜–\rñ\ß\ê¥+m(\í\Ğ\ä\Ò\Æ6\Ô4\Õ\é¿ie\Úú¯¾:}zŸùÒ’@œ¥ñ\ã€!ª\ì\È\ïú\á¹;ğ\"a^¼¼ŒŸ6\î\È\Ë\ÚPüu€pV@¼\\˜//\'\ÕÓ•6\ÇvhricjšƒŒ\êôß´2mıW_N\á€’\"€³`Uv\ä\Û\îûIvÛµ=°\ÓÂ¼xy?mÜ‘—µ¡ø\0_A`r\éJŠc;4¹´±\r5\ÍAFuúoZ™¶ş«¯N§p@I!À\Ù0*;ò»tñÀ<L‹—“ziã¼¬\rù\ÊÀ\â¥+m¨,¶C“I\ÛP\ÓdT§ÿ¦•i\ë¿ú\êô\ng”œ\0UiG¾{wv\×úØ‘‡ia\ŞÀò2vÚ¸#Õ†\Ö\Şñ\Ë=üó]T0,?^®µ¡=±šX\ÚØ†š\æ £:ı7­L[ÿ\ÕW§W8 ¤ °4^˜\Ç|;ò\Û\ï\Ë\îü\á\çv\âEÂ¼°Lü8/mÜ‘jCWÿ¤ú¿ü\×ÿs\ïÀ\ãe\á\éZ\n±šl\ÚØ†š\æ £:ı7­L[ÿ\ÕW§[t–€³`Cw\ä»wg›\ïZ“\İzõ\Ù;\ï8a™°¬*ı´qG>¬\rm\İñhö?¾ñ“ÿaù\Ë\Ëœı\ê¡G\Ö#K—Ú\í\Ğâ¤m¨i2ª\Ó\ÓÊ´õ_}uºEg	,\ç”\í\È\ç«\æ‹*ı´qG^Ö†B}lwök\îÊ¿ğ\Ï?úEvı{_S \Ü^{\Ç\æ\ì\Ú[\ï\Ïÿ´\î\ç\Ù.ƒÁ\Ú\éJ²Z¼´±\r5\ÍAFuúoZ™¶ş«¯Rœ%O**Û‘W©\æKxl¼>©6\î\È\Ë\ÚP‘Pø\åöÿ¼H`¸h`Q·‹\é>ü˜b@C\éJ²Z¼´±\r5\Í\à²:ı7­L[ÿ\ÕW	g,[¶L;€q•\í\È\ãóB¯Oª§;ò²64,\á?ÿM`ß¤+m(Ş®,4ñú¤z\ÚØ†\Z¶d\î cI<ƒAúoZ™²ş«¯,\ÙÿıµWÙ\\/mÜ‘kCiE’ºicjPPn\éå¬¹Ÿ˜ó\Ğ\Ó\Êõ_}•@;€º\ì\È\ÓJw\ä\ÚPZÑ†¤n\ÚØ†\ZR,‹e|ŸúoZ™’ş÷\Íø>\Ó!ş\Ü\ãû@v\äi¥;rm(­hCR7mlC\r669úoZ™‚ş;¬O›N7\rû¼‡M†±#O+mÜ‘kCiE’ºicªi¾\ä|ó§šş›V:\Ş\ç\ë‹óÍ§\æûœ\ç›ÿ!Ë²§\ßx\ãÿõ\â‹/¾öcû\Ø\ÖøÃ»\Ş÷¾÷=.N²jÕª\'\Î:ë¬‡{\Óş\ß\Ç?şñÿ¹bÅŠ—Å\ï\n;ò´\Ò\Æ¹6”V´!©›6¶¡\Zª«.7uôß´\Ò\áş[µV]vªúùV]®–-[vh\ïv\Õò\åË¿\Ûûys/÷„cÚ¹Ÿ7\ÏM_–‹;•²,\Ûÿê«¯ş\Ò9\çœó\ë•+Wf\çw^öoÿöo\Ù\ÏşólÛ¶mY~†ûaz˜ê©§>y\Æglx\ï{\ßû\Öx}mgGVÚ¸#×†ÒŠ6$u\Ó\Æ64¦…ºüT\Ğ\ÓJGû\ïBû\ŞB—§ú¹.tù\Ö9\î¸\ã\ìè¯›;ø¯šu\áqñº¦F\ï\0ÿÿø\Çw}ğƒ\Ìn¼ñ\Æ\ì\É\'Ÿ\Ì\0ó	Ë…\å\Ï<ó\Ì\'\Şÿş÷ÿ\ï\åË—¿<^w[Ù‘§•6\îÈµ¡´¢\rIİ´±\raÜâ¸\ë,ı7­t°ÿ\Û\ç\Æ}i\Z÷ó÷qIÇ¢½û\ï•\ì/$\ß\ë\Ò1\í¼z\ÇôO»\æšk.9\í´Ó²«®º*û\Ío~óWÿ÷¼\ç‘N8\á¨øy\ÚÈ<­´qG®\r¥mHê¦mh\ê\ë>¾Sôß´Ò±ş[·¯\Õ}<i¨û9\Ö}|R;\î¸7÷C\ê?¸?ùä“³O}\êS\Ù\êÕ«K\Ïz\Ó\Ãü°\\Tx0¬/~\Î\é½O»\âŠ+nz\ßûŞ—ıô§?\İûLa=+W®|\ì\ÄO<5~¾¶±#O+mÜ‘kCiE’ºicZ€¦†M­§õôß´Ò¡ş\ÛTkj=,¦>¿¦Ö³¨zğ§œp\Â	¿)\èO:\é¤\ì\Ë_şr¶}ûöøpµTX.,\×Wx\"¬7~®N	g¬Zµ*Û²eKü\ÔÖ·bÅŠm¯ªØ‘§•6\îÈµ¡´¢\rIİ´±\rU\Ôô€°\éõµ’ş›V:\Ò›\î[M¯\Éhúskz}5wfÀbÀé§Ÿ\İ}÷\İñ!j%\áq\áñıE¶\Óµ~ıú„b@Sg\Äz\ë}\ê\İ\ï~÷öeË–½\"~î¶°#O+mÜ‘kCiE’ºicª >­—?›û¹ñ\ã\âõNı7­t ÿ\Æ}*\îsUÅ‹\×K\Ú\â\Ï+ş<«Š¯·Â±\æ‰\'¸½8€ÿ\ÈG>’\íØ±#>4]ğø°¾¢À¶6Ó–\êıû\âŸ\Ø¾ó¿/}\ç;\ß\Ù\Şû€®Ÿ¿-\ì\È\ÓJw\ä\ÚPZÑ†¤n\ÚØ†\æ\0\ÃÀğ{	¿gøYu€9\ìqñú§Šş›VZ\Ş\ã¾4¬\Ï\Íg\Ø\ã\âõ“¦øs\Zöy\Îg\Ø\ã\âõ\'¯w°~Uÿ™u‹…°\èL«\â\çnµ\ï}\ï{_ÿM`\ÜVÖ¿r\å\Ê\Úú\ï\ì\È\ÓJw\ä\ÚPZÑ†¤n\ÚØ†F(øı\Ù\Ì‹T`ö,‹¼»o~\ÙóLı7­´¸ÿ–õ!}uú”}>S\İ\æşµ\àkŒû5a\Âúú¯)\Ğ\Öc\Ú½\ß\í\éõWõ\ëğ¯\'\á?øA¸\Ò\ã\rñ\ëh;ò´\Ò\Æ¹6”V´!©›6¶¡!†\rø\ÊŠ£˜e\Ë_07½ß°\ç\ë4ı7­´´ÿ\ë;e}O_\í®aŸK\Ù\ç:5\í c\ëá‚€ûBXo\ßY­<¦°~ıúÿò\Ş÷¾7{ò\É\'\ã\ßwŸ\Ïs\ÒI\'=´lÙ²C\ã×²Xz\æõ½,§Çª\î\È?ó™\Ïd¿û»¿›\í·\ß~\ÙK^ò’\ì„N\È~ö³Ÿ\r,W5\áy\ßø\Æ7L\ß×™™\Û0\Ä\Ó\ã\\r\É%Ù¡‡š=\ëY\ÏÊ9æ˜ùU2\Î\ï˜Ò¼\é6$“‰6$u\Ó\Æ6Tb¾^Ù€±l€Y¶\\\ÙÀ²0\ßó¶F\Õ÷~Xÿ=\ì°\Ãö¼gw\Şy\çÀü\"\Å2ñô2\ìµ\ÓC^ğ‚d\ázU?üğÀrq&1¶X¬ş[µ½”˜¯Ï”õA}µ{\æû<\Ê>\ßV·ƒ*}&[ö–yª—ü_Vıo\Ö\Û÷/	ŸJ\é˜vl]t\Ñ\ìy\çÿ®û\Ô\Ç>ö±Û–/_ş¾øµ,–¹4ddc¶#\ï\Ï?ı\Ó?\å*\ì€\ÂWø\Ú×¾–\ßı\ë_?°lÕ„Ç‡\Ä\Ó÷uª>ï³Ÿı\ì|¹7V\ÚÉ—¥\êsõg±v\äešlC2¹hCR7mlC‘ª¼²cÿ\0³lş¨e¡\êó\'­\ê{_\Öo¸\á†ş÷,ûü\ç??°L‘b™xz\nöÚŠ\é»v\í\Ê>ñ‰O\ä·\Ï:ë¬\å\âLbl±Xı·j{‰T\í+e}Q_íªŸC\Ù\ç\Ü\ÚvP¥Ï„c\Ëb¹Oú\Óñ\ág£\Âú‹\çJ\é˜vlÿø\Ç˜\Ô\×\n\×]w\İ\í½7ğŠøµ,–¾F6²±•\í\È\ãü\áşaŞ©.¿üòy!\ë×¯\Ï^û\Ú\×\æg„\Ê÷×¿şõ|zxLH¨œ?ÿù\Ï\Ï?üğü¯\Åô\"ı\Ë\ë,›÷¦7½);\âˆ#òi[·n\ÍN=õ\Ôì ƒ\Ê\Ók¸Ù½÷\Ş;ğ\Ú\ÂYü\Çœ?xı\ë¶²\×7l\Ù0/\ì\Ø\ßò–·d\Ïy\Îs²×¼\æ5\ÙM7\İTº*Y¬y™&ÛL.Ú\ÔM\ÛPŸ%3Ø•\r \Ãı§—L¯2°,,ôu$§\ê{_\ÖO;\í´ü={\ç;ß™ÿ\ìÿkø°ıò\\ÿ¥\nË½\ë]\ï\Ê\ïÿ\ã?ş\ã¼ãŒ³\Ï>;;ø\àƒ³C9$»ğ\Âóyeû\æ0}\Ôş|\Øk‹¿ş\é›6m\Êoÿ\Î\ïü\Î\Èõ\é\ì°e‡½ş²u\ÄY¬ş[µ½ôY2³°>¢¯v\ÓB\ßÿÎ´ƒ*}¦wÿŠb~\ïX3>ülTX\ßkI\æ˜vlù—¹kÃ†\rñ\ï¹Oõv\"{o\Ş-ñkY,%¬´±•\í\È\ãx\ày\Ç*;\à	;é«¯¾:»\ã;ò\å^ô¢\å\Ó\Ãí°s¾è¢‹ò\ÛG}ô^óŠuŒº_\ÜşÖ·¾•\İs\Ï=ù´SN9%Ÿ¶zõ\êlİºuù\í0ğˆ_ÛŸş\éŸ\æó.¾ø\âüuô¯w\Ô:\â\×3j\ÙbÀó\Ío~3ÿùº×½®tU²X;ò2%mg\ì6$“‹6$u\Ó\Æ64g\É\Ìxº²\æÏ¢ûX\Æ}=I(y\ÏK\ßû¸ÿ†¿|¿ğ…/\Ì\Çw\İuWşş=÷¹\Ï\Íy\ä‘|ş°ır¸°Uøù²—½,_\î·û·óûa<7\ß8\ãüó\Ï\Ï÷\Ïıó†\í›G\íÏ‡½¶¸ôO\ì±\ÇòÛ¡X1\ßú\ãõZv\Ø\ë\×g±úoI;)m/s–ÌŒ\×7ô\Õn÷}\ïD;(\é+}¦÷ó–bú¾>¶\r\ë\ï{\r\ÉÓmÕªUO=ø\àƒñ\ï¹OmÛ¶mg\ïÍ»/~-‹¥¤q\Å\É[¼#/\Ëó÷¼¼s…ju</$4 pªÜ«_ı\ê=1L/n‡i¾›n‡\âBÿ¼b£\î·\ÃgZ\Ì;übz‘ğ=¾øµ…*ü\ZŠõZGÿró-~†û>ú\è^\Ï¯£JkG^¦¤\ÍÄ©Ü†drÑ†¤n\ÚØ†f\ê\ä\Ê˜E\ÆXê¾®ESò^\Ç\É\ßû¸ÿ†¿\Ş÷…ÿô\î¿ò•¯\Ì\ï_{\íµùıQû\å\ßû½\ß\Ëo_y\å•ù\ÏW¼\âùôù\Æ¡Q˜ó†\í›G\í\ÏG½¶şôO£\Ö¯oÔ²\Ã^¼8‹\ÕK\ÚGœ¼½\Ì\Ô\ïúj7\Ô}¿[\ßJúHœ\Ğg¶÷÷õ±mX\ßs\'sL;¶pº\ÙO<ÿûT\ïù.ù “O¼#/\ËüÁ\äl\ØW\Şğ†7\äó¿úÕ¯\î\éŒazq;œW\ìX\Ã_\rú\ç\ë(\î‡k\Ø—­§ÿ9‹³x\à\×S¶\\xşx\ç>jñsZ¶\Øiı¶*‰?Ÿ6¤J’\É%ş|Ú’ø÷\ÅKüÙ¤eË–eû\ï¿\ØŞ5SO8\å4ş+S¸¦\×qVüš»”xğö·¿½ÿıÛ“}\èCùüQû\å\â4ıpÍ¢ğ3\\ :LŸoœQ<wÿıaû\æQûóQ¯­?ıÓ‹¯üş\ïÿş¼\ë\×7j\Ùa¯?^GœøóI)m\è«3ÿq0x@<ƒF…÷7¼\ÏÉ¶ƒ¸\í¦}}l\Ö\ß÷|»\ã7¥uN;\í´\'öu%\ÖÛ˜ÿ¿\ãª¦Ä¨/\×?\âT¿²§\ÍıÉŸüI¶yó\æüû|\á~¨ú‡ùEEıª«®\ÚkGU\Ü§ò;ñ\âT¸pú`¸v¤a§[T\É×®]›}\å+_)]Oÿk:ñ\ÄóiŸı\ìgóï¼„\ÛeW\İ\r\ß[óÂ…‹‹#\ë\Zµø9G-{\ì±\Ç\æ÷¯¸\âŠügqZ_ü;Æ¯­,‹U\Ù/S\Òv\ÆnC\Ã23÷>‡¤v¥\æ*)^{<}¡\Ë4™ihC3‰¶›ş\×õ\Ìg>3¿\Êúš5k–«šb]ñô}6¶¡™ú\Õõ×¦0=ù¿65­\ä=/}\ïûûo\Ø\ß=\ã\ÏÈ:\ê¨=Ó¾ğ…/\ä\ïcø\ë~¸?j¿şğP\Ü	}6LŸoœQ<Wÿıaû\æQûóQ¯­?\Åôİ»wgŸû\Ü\çò\Û\çœsÎ¼\ë\×7j\Ùa¯¾±\Åbõß’vR\Ú^f\ê÷	}µ\ê¾ß­o%}e \Ïô~\ŞWL\ß\×Ç¶;C\à\Ïÿü\Ï\Ş\×ß³ˆ\İq\Ç?:>¡\ï[Œj\\ıª\Ä\Ãm;£0ğ#<2»ù\æ›óyagv\Ö\áyf\æ:c˜^\Ü..*.>—0\ï\Üs\Ï\Í^ü\â\çƒ\æp!¡K/½4¨‡‹\ê|\à(]Oÿ\ë	g¬\\¹2{\éK_š_p\çmo{[~aŸøu‡\ï/†‹†¯=¬X±b¯uZGüœ£–\r¿Sx?8\à€ü{Å…‹\â\ß1~meY¬y™¦\ÛPYf\æ\Ş\ç¯\Ô\\%M¬£\éLCšI´\İô\Ï+®²şªW½j`¹\Ô\Ó\Æ64g\É\Ìx¹²eüW§q˜ã¾$T}\ïûûoøÅ½IùEşŠi·\Şz\ë÷1\ì/G\í—\Ã2zúÓŸ\ß\ÚÓ¶\ç\ÚEó3Š\ç\ê¿?l\ß<j>\êµõ§˜\Î|<\ãŒ3öœ\Ú?jıñúF-;\ìõ\Ï7¶X¬ş[µ½\ÌY23^\ß\ĞW»e\Ü÷½\í JŸ9\Ş5\Æ\×\Û\İ9\éÿ2ğ\Ïÿü\Ï\ß=>¡+2j\\ı:_Hf¢ŸÌŸ\ÅÚ‘—™Dš\ék#)]©y\Ø­‡]z\ÔÕ±ûŸ£\ìµ\Ì÷úšihC3}\ïiJ\í¦zñÕ§PDõ\\U\ÛÎ°Ç‡y\á\ê\êa^¸ş½[x\Ì\ßÿı\ß\ç÷\Ã)\×\ÅEÖª¦m¨Ï’™…\r\è\Ê–\áû§eW¬^\È\0s¡¯#9U\ßû…ö_Ù·Y¬ş[µ½ôYh\ÑW»i¡\ïg\ÚA•>s¼ÿ20¾}\ìcÿ3üE{’N?ıô«RúŸ£\ZW¿}¹#Ÿ™\ëñt\ÅÚ‘—™Dš\ék#ñ…™F]}¹ÿqó-;Î•š‡]\Ñz\Ø¨G]»ÿy†½–Q¯¡™†64\Ó÷¦\Ônú\ç§ÿ¾şõ¯ù\\U\ÛÎ°Ç‡yo}\ë[³—¼\ä%ù\é\ËôG”\Ï\×~	÷Ã¿a[ºt\éÀk•6¶¡È’™j»a\Ëb\0Y6¿\Ê\0³\êó\'­\ê{¿\Ğş+û6‹\Õ«¶—HÕ¾R\Öõ\Õ\î¨ú9”}Î­mUúL8¶œ;@\Ï>ı\éOÇ‡Ÿ\n\ë/+¥cÚ±­X±\âe+W®|²\'ş]÷‰\Şóü²÷\æ=°lÙ²C\ã×’:;ò´²X;ò:ê´¡™¹\rv¸Øºúrÿ\ã\æ[vœ+5»¢õ¨+P»:vÿ2\Ã^Ë¨×¿\ĞLCš\é{OSj7ñº\Â5\Â\Ù&ó=W•¶3\êñşğ‡óû\ÅwÃ©\Ä\ágqöAø\ZVüZG¥m¨Ä’™\Ñ¼²cÙ•©Ë–5Àœ\ïy;g¡ıWömZ\Ø\ç\ë3e}P_\íù>²Ï·ó\í [ö1Ÿ\n\é\áL\Â0ö\Ü\Âz\ßõ®w\å\Ï¯Ç´¥\Î8ãŒ»\'õµ\Ë.»\ìk½7\ï†ø5´Aj;ò™¹\ÎO^÷°{\r[_\Õu/fZ¸#¯Õ†fú>“”®\Ô<\ìŠÖ£®@=\ì\ê\Øı\Ë{-£^ÿB3\rmh¦\ï=M©\İóv\îÜ™ş\á{\È\á ¾\çª\ÒvF=¾ø7o\Å2\ÅEÎŠûáŒ¹ø1£\Ò\Æ64Ä’™ò^Ù€±l`Y([¾l€9\ìù:m¡ı·\É\Ìô}&m¾g“iiÿ\Öw\Êú¾\Ú]\Ã>—²\Ïuj\ÚA8\Æ,şrÿ\å/9>mDXoñm=¦-\ÕP½õ\Ì3\Ï|\â7¿ùMü;7ª·ş{zo\Ü]\ÇwÜ‘ñkhƒ\ÅÜ‘—e¦\âÎ¸\êru3\é´qG^§\r\Í\Ì}&©]©y\Ø­G]z\ØÕ±û—öZF½ş…f\Z\Ú\Ğ\Ì\Ü{šZ»\é_8‹\ä\å/y^X_õ\\U\ÚÎ¨\Çÿô§?İ³lq%÷ğU…b\Ú÷¿ÿı½^\ç|ic\Za\É\Ì\à€\ï\Ïfú\Ş\ï™\Ñ\ËB\Ù\0ó\İ}óËg*,´ÿ6™™¾>\Ò\æy6™÷ß²>¤¯NŸ²\Ïgª\ÛA8\Æ,\ÖO:\é¤|LÑ¤¹1Jqv@\Ö\ÖcÚ¡N?ıôÿ\İ\Ğ?ÿ\â\rz\ê\ïş\î\ï¾\Ò{ó®ŠŸ»-sG2\ì\"maŞ°‹h\Ëô/;\ì\"pı\Ëô\ßz\á¯À\á‚a\á¹\Ã\Å\Ã\î¼óÎ\×7\é´qG^§\r\Íô})]©y\Ø­G]z\ØÕ±û—öZF½ş…f\Z\Ú\ĞL¢\í&^q ÿw¼c\äsUi;£Rœ\rP\\L0¼\Î\âñegŒJ\Û\Ğ<–\Ì\ì=ğ\ë(VX†=.^ÿTYhÿm23}}¤\Íòl2-\ï¿q_\Z\Ö\ç\æ3\ìqñúISü9\rû<\ç3\ìqñú“5‹ö\Şñm¾½kBX\Ï>ğ\'û\Îh\í1\íPË–-{EoĞ¾3üõd_øş÷¿Q\ï\Û\'~\î¶X\ÌyÈ°‹´…y£.¢Õ¿\\È°‹Àõ/\×»ø>nøZÉ¿ş\ë¿\æ·\ÃÅ¸\â\×7\é´qG¾\ØmHö6$u\Ó\Æ6TÁ’™ÁføkQÕe!~\\¼Ş©³˜ıw¦o¿\Ş\æy6™ôß¸O\Å}®ªøqñzI[üyÅŸgUñ\ã\âõ¶B8\Ö\ìsn+\Ü?ò‘\Ô.\n„ÇŸ}ö\Ù{\Î\ëoó1\íH\'œp\ÂQ½úc\á/0MÚ¸q\ã¿ôŞ¸û;\î¸7\Ç\Ï\Ù&‹¹#u‘¶Q\Ñ\ê_.d\ØE\à†\İ~ó›ßœ\ß\å;ê¨£²ó\Ï??Û¼yóÀ\ë›tÚ¸#_\ì6${G’ºicªh\ÉL³Á¦\×\×J‹\Ùg¢1B[/\ä\Ùd:\Ò—\Ì4Û·š^“\Ñô\ç\Öôú&*sö=Ÿ\è?S`Ü¯„\ÇEg<\Ñöc\Úyxâ‰§®X±\â\á¦\Î˜;3\à¾^N‰Ÿ«msG2\ê\"m£.¢Õ¿\\È°‹À\r».úu\Í5\×d\ïÿûóSp\Ãô\â¢d‹™6\î\È»\r\É\ŞÑ†¤n\ÚØ†`\ÉL3Â¦\Ö\Óz‹\Ùg\æö\ëm¿g“\éPÿmª5µGSŸ_S\ëYT\áØ³¿(®).Xõ¿„\å\Âòı\×˜[_\ëi+	U“O>yûw¾ó\í\ã^h0\\@p\îš¿\ìJe1w\ä!£.\Ò6\ê\"Zñ…½†]n\Ø\ípİ‚pû\Û\ßşvv\Ë-·ä·‹\Ó3mÜ‘/v’½£\rIİ´±\r-Ğ’™zÃº\ï”\Å\ì¿3}ûõ6_È³\Ét¬ÿ.™©\×\×\ê>4\Ôı\ë>>)sg\n<\Øw@Ÿ_\åSŸúTş§Ÿÿü\çÙ¶m\Ûòc\×ğ3\Ü\Ó\Ãü¾-X\äÁ®\ÓV¶|ùò—÷6ğ×¬\\¹òü\à=ù\ä“\Ñ!¹\Şr[.»\ì²Kzo\Ú]½|/¬\'^w[-\æ<d\ÔE\ÚF]D+¾°×°‹À\r»¾bŠ¡šŠ¡@®P¿¾I§;ò\ÅnC²w´!©›6¶¡1Œ;@÷qµ˜ıw¦o¿\Ò\Öy6™ö\ßqûÜ¸#M\ã~\ã>.i\áX4“F÷M§il\î\ß7¬;é¤“v|ô£½uõ\êÕ·ı\ìg?ûEo\ãÿH\ïø\ç¯~õ«\r·\ß~û¾ı\ío\çŒ3\ÎoöÖ°|\çş\r\Ã\Ì\â\î\Èe0mÜ‘kCiE’ºic\Z\ÓBŠ]~*\è¿i¥£ıw¡}o¡\Ë\Óı\\º|\ëÇ´%û£\Ò\ÉcÚ±-[¶\ì\ĞŞ›²jùò\å\ß\íı¼¹—{\æŞ¨ğó\æ¹\é«\Ârñc»Â<­´qG®\r¥mHê¦m¨†ªÆª\ËMı7­t¸ÿV\íƒU—£ª~¾U—\ëÇ´\ÔbGVÚ¸#×†ÒŠ6$u\Ó\Æ6T\Ó|\Çù\æO5ı7­t¼ÿ\Î\×\ç›O7\Ì÷9\Ï7\ègGVÚ¸#×†ÒŠ6$u\Ó\Æ6Ô€a\ÈaÓ™£ÿ¦•)\è¿\Ãú\ä°\étÓ°\Ï{\Øt`;ò´\Ò\Æ¹6”V´!©›6¶¡†\Ä\Éø>%ôß´2%ı7\î›ñ}¦Cü¹\Ç÷*\ì\È\ÓJw\ä\ÚPZÑ†¤n\ÚØ†\ZT(Ïšûi`9ı7­LQÿ\ÕW	´¨Ë<­´qG®\r¥mHê¦m¨aK\ÂÅ˜\Â\Ïxƒôß´2eıW_e\æ°\Ãûoûï¿¿v\0\ã²#O+mÜ‘kCiE’ºicj\Ú\ÜA\è¿ie\Úú¯¾J¯\r\\¿l\Ù2\í\0\ÆeGVÚ¸#×†ÒŠ6$u\Ó\Æ6\Ô4\Õ\é¿ie\Úú¯¾:\İzŸÿÒ¹¯²4T`GVÚ¸#×†ÒŠ6$u\Ó\Æ6\Ô4\Õ\é¿ie\Úú¯¾:\İ\Â\Ù}\ë\ãù@v\äi¥;rm(­hCR7mlCMsQş›V¦­ÿ\ê«\Ó+:;ÀY0.;ò´\Ò\Æ¹6”V´!©›6¶¡¦9È¨NÿM+\Ó\Öõ\Õ\é\à,—yZi\ã\\J+Ú\ÔM\ÛP\ÓdT§ÿ¦•i\ë¿ú\êt\Zrv€³`v\äi¥;rm(­hCR7mlCMsQş›V¦­ÿ\ê«\Ó)œ	PRp–\0ŒÃ<­´qG®\r¥mHê¦m¨i2ª\Ó\ÓÊ´õ_}uú„3\0JŠ\0q–Æ†°#O+mÜ‘kCiE’ºicjšƒŒ\êôß´2mıW_>\á€’@g	@Uv\äi¥;rm(­hCR7mlCMsQş›V¦­ÿ\ê«\Ú\Ô`GVÚ¸#×†ÒŠ6$u\Ó\Æ6\Ô4ƒ\Ë\êôß´2mıW_%\Ğ ;ò´\Ò\Æ¹6”V´!©›6¶¡¦\\V§ÿ¦•i\ë¿ú*v\05Ø‘§•6\îÈµ¡´¢\rIİ´±\r5\Í\à²:ı7­L[ÿ\ÕW	´¨Á<­´qG®\r¥mHê¦m¨i—\Õ\é¿ie\Úú¯¾J @\rv\äi¥;rm(­hCR7mlCM3¸¬NÿM+\Ó\ÖõU\í\0j°#O+mÜ‘kCiE’ºicjšÁeuúoZ™¶ş«¯hP\Ã\êÕ«ŸÚµk\×ÀE&Ÿ\Ş\çpoG¾;şŒR§\r¥mHê¦­m¨i—\Õ\é¿\éd\Zû¯¾J @\r\ëÖ­»Ë–-;™|6m\ÚtYoG~sü¥NJ\'Ú\ÔM[\ÛP\Ó.«\Ó\Ó\É4ö_}•@;€\ZÖ¬Ys\ìÚµkwlŞ¼y«\nÿ\â¤÷¾oŞ¸qã¥½ø/z9:şŒR§\r-~´!©›¶·¡¦\\V§ÿ.~¦¹ÿ\ê«\Ú\Ôv¡¢\Ü\Ë\ã½\ä\ß?“‰&¼\ï\áıo\íN<¼ö¹\ßAZœhCR7­oCM2¸\\˜\Ğn\æÚş»8™\Úş«¯h\0\04\Æ\à\ÚA_%\Ğ\0\0hŒÁ%´ƒ¾J \0\0\ĞƒKh}•@;\0\0 1—\Ğú*v\0\0@c.¡ôU\í\0\0€\Æ\\B;\è«\Ú\0\01¸„ôôú\åõ¡oÎ“\ë\ã\Ç\Ñ}¶\Ù\0\04\Æ\à\Ò\Ó\ë—KK\n\0q–Æ£ûl³\0hŒÁ%¤)œPRpvÀ”³\Í\0 1—¦p@I!À\ÙS\Î6\0€\Æ\\BºÂ™\0%\Å\0gL1\Ûl\0\0\Zcp	\é\ng”–\Æ\Ë1=l³\0hŒÁ%¤-:KÀ\ÙS\Î6\0€\Æ\\BÚ¢³–\Æó™.¶\Ù\0\04\Æ\à\ÒWœ%Ogúh\0\04\Æ\à\ÒWœ%Ogúh\0\04\Æ\à’®Ë²l¿\r6\\~\ã7şzõ\ê\Õ\Ù\ì\ìl+új<­-\é½\ïO­[·\îş5k\Ö>,Œm6\0\01¸¤\ë6l\Øğ\ŞÁh¶eË–l×®]\Ù\ã?.Nx\ß\Ãû¿v\í\Ú³³³GÇŸ\Õ\Ùf\0\ĞƒKº.œF\ãƒT™|6oŞ¼uvvö\æø3¢:\Ûl\0\0\ZcpI×…¯	83 „\ÏavvvwüQm6\0\01¸¤\ë\Âw\Ø\ãSY¼„\Ï#şŒ¨\Î6\0€\Æ\\\ÒuU<´9\Ûp\ËW²Û¯û›<\áv˜/\'õ¢ Pm6\0\01¸¤\ëªvn¿/»\íšs²_ù{%Ló\â\åeü(\Ôc›\r\0@c.\éº*{nÿ\î@1 È½·ÿ\ËÀò2~\ê±\Í\0 1—t]•‚À¿_ÿ·…€\"a^¼¼Œzl³\0hŒÁ%]W¥ p\Û\ìG\nEÂ¼xy?\nõ\Øf\0\ĞƒKºNA ­(\Ôc›\r\0@c.\éº*ğ_\âB@‘0/^^Æ‚@=¶\Ù\0\04\Æ\à’®«R¸\ë‡\çŠ„yñò2~\ê±\Í\0 1—t]•‚À¶û~’\İv\í_Â´0/^^Æ‚@=¶\Ù\0\04\Æ\à’®«R¹ûGÂ´x9©zl³\0hŒÁ%]W© °{wv\×ú(„ia\ŞÀò2v\ê±\Í\0 1—t\İ|\Û\ï\Ë\îü\á\çŠEÂ¼°Lü8/\nõ\Øf\0\ĞƒKºnhA`÷\îló]k²[¯>{ \',–u¶@ı(\Ôc›\r\0@c.éº²‚À|g‹³\êGA \Ûl\0\0\ZcpI×•ªœ0,\á±ñú¤z\ê±\Í\0 1—t]YA >\È_h\âõIõ(\Ôc›\r\0@c.éº²‚€,^\ê±\Í\0 1—t‚@ZQ¨\Ç6\0€\Æ\\\Òu\niEA \Ûl\0\0\ZcpI\×)¤zl³\0hŒÁ%]§ V\ê±\Í\0 1—t‚@ZQ¨\Ç6\0€\Æ\\\Òu\niEA \Ûl\0\0\ZcpI\×)¤zl³\0hŒÁ%]§ V\ê±\Í\0 1—t‚@ZQ¨\Ç6\0€\Æ\\\Òu\niEA \Ûl\0\0\ZcpI\×)¤zl³\0hŒÁ%]§ V\ê±\Í\0 1—t‚@ZQ¨\Ç6\0€\Æ\\\ÒV½¶{}/K\ã\é±\n½—‘\'\ç’K.\É=ô\Ğ\ìY\ÏzVv\Ì1\Ç\Ì\ïB\ê±\Í\0 1—´Uh»sYhSA\à\Ù\Ï~v¾\ÜÆ³‡~x`~¢ Pm6\0\01¸¤­ú\n#©Š\ÛgŸ}vvğÁg‡rHv\á…\î™Ş¿\ì¶mÛ²+Vdx`ö¢½([µjU¶}ûö½\Öó¦7½);\âˆ#öšvø\á‡gû\í·_¾\îO~ò“ùû\Ö\î_t\ÑE¯o’Q¨\Ç6\0€\Æ\\\ÒV%\Ò\Â@ªó\Ï??[½zu~;\ì\ÇË…„b@¸Ád_úÒ—òÛ¡(Ğ¿ì·¾õ­\ì{\î\ÙkZXö\æ›o\Şsÿ¼ó\Î\Ën¹\å–üöA4ğú&zl³\0hŒÁ%mURˆ“R-„¯<ö\Øc¥óŠ\Ç=\ïy\Ï\Ë\ï?ø\àƒy\Â\í¸x¦\ÇÏ³s\ç\Îl÷\î\İ{=WÿıøõM2\nõ\Øf\0Ğ˜’ƒ(‘N%Õ‚@•y\á4ÿp?ô‡¯„\Û\ákeË–M›\ïşb$ş|d\á™\0\0˜fñAR_®?¾_¨2\ï\ä“O\Îï‡¯|ñ‹_\ÌoŸyæ™¥Ë–M›\ïşb\Ä\0\0\0\Ô2_! \Ğ\æ‚À<½\ç=\ï\ÙsQÁ\ÓO?=Û±cG\é²e\Óæ»¿Q\0\0\0 –ù\n…\nòŸQ\0\0\0 –ù\n´¢ \0\0\0ÀD(¤\0\0\0&b_;\ì°=\ßÇ¿ó\Î;\æ\ï\ë„\ß\éo|\ãÀô6DA\0\0\0€‰hº p\Ã\r7\ì)„|şóŸXf_§x\îxz¢ \0\0\0ÀD4]8\í´\Óòƒñw¾óù\Ïc9fÏ¼7foy\Ë[²\ç<\ç9\Ùk^óšì¦›n\Z9}\ëÖ­Ù©§št\ĞAy–/_\İ{\ï½ù¼°\îU«Ve\Ïşó³\Ã?<?¡˜^$,»~ıúìµ¯}m¶\ß~ûe‡zhöõ¯}¯uœ}ö\Ù\ÙÁœr\È!Ù…^8ökj\"\n\0\0\0LD“‡~8{\á_˜ÿÀ»\îº+?\Ø~\îsŸ›=ò\È#ùü¢Hğ\Ío~3ÿùº×½n\äôSN9%¿¿zõ\êlİºuù\í°l˜n‡„ø‹.º(¿}ô\ÑG\ï5¯x]¡põ\ÕWgw\ÜqG>=¼¾ş\å\Î?ÿüü9ú\çóššˆ‚\0\0\0\0\ÑdA üå½·\Ê\ìƒü`~ÿ•¯|e~ÿ\Úk¯\Í\ï¿\à/\È\ï?ú\è£{=n\Øôpp¦÷\',\æ÷w\ìØ‘mß¾=¿}\à\î5¯XÏ†\r²³\Î:+{õ«_½×¼\âv(d<ö\Øc{\Í\ç55\0\0\0&¢É‚À\Û\ßşöƒ\å}\èCùü\â »8c È°\é\á\0?L\à«Xw8…¿(„³ú\çË¾\á\ro\È\ïõ«_\İk^¼\\ÿıq^SQ\0\0\0`\"š*„\ï\Ñ?\ã\ÏÈ:\ê¨=Ó¾ğ…/\ä\Ï\á/ó\áş±\Ç›ß¿\âŠ+òŸ\ÅiøÃ¦Ÿx\â‰ùı\Ï~ö³\Ùu\×]—\ß.ş{@¸N÷/ô‹S÷\Ã\×\ÂığšB± \\c Ü¿êª«ö<®\Å\ë\í¿?\Îkj\"\n\0\0\0LDS\Ï|\æ3ùÁq¸@_1\í\Ö[o\İsN\Û9ò\È#³8 ÿ^q¡¾a\Ó\Ã_ÿW®\\™½ô¥/\Í/\î÷¶·½-Û´iS>¯XoqQÁ#8\"_O˜w\î¹\çf/~ñ‹³g>ó™\Ù\\}\îsŸË—9şø\ã+\ÆyMMDA\0\0\0€‰hª 0\é\ÌDó]‰‚\0\0\0\0¡ V\0\0\0˜ˆ¶º\Z\0\0\0&BA ­(\0\0\00\niEA\0\0\0€‰PH+\n\0\0\0L„‚@ZQ\0\0\0`\"ÒŠ‚\0\0\0\0¡ V\0\0\0˜´¢ \0\0\0ÀD(¤\0\0\0&BA ­(\0\0\00\niEA\0\0\0€‰PH+\n\0\0\0L„‚@ZQ\0\0\0`\"ÒŠ‚\0\0\0\0¡ V\0\0\0˜´¢ \0\0\0ÀD(¤\0\0\0&BA ­(\0\0\00\niEA\0\0\0€‰PH+\n\0\0\0L„‚@ZQ\0\0\0`\"V¯^ıÔ®]»Leò\é}÷\Ï\Î\Î\î?#\0\0\0hÜºu\ë\îß²e\ËÀÁ©L>›6mºlvvö\æø3\0\0€Æ­Y³\æØµk\×\îØ¼yóVg\n,Nz\ïû\æ7^:;;û‹^?#\0\0\0\Ø\'\ÂAhø\Ët/‡\ï°\Ë\Ä\Ş÷ğş+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P\İÿ ­²{‚B$B\0\0\0\0IEND®B`‚',1),('3',1,'loan.bpmn','1',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:flowable=\"http://flowable.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.flowable.org/processdef\">\n  <process id=\"loan\" name=\"Loan Request\" isExecutable=\"true\">\n    <startEvent id=\"startEvent1\" flowable:initiator=\"initiator\" flowable:formKey=\"name\"></startEvent>\n    <userTask id=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\" name=\"Capture application details\" flowable:assignee=\"${initiator}\" flowable:formKey=\"loanin\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-966371C5-CCF2-4711-8F8D-A0F09F806C64\" sourceRef=\"startEvent1\" targetRef=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\"></sequenceFlow>\n    <sequenceFlow id=\"sid-F7DA85F8-2FA7-44FE-BF12-07E6CF04188B\" sourceRef=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\" targetRef=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\"></sequenceFlow>\n    <userTask id=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\" name=\"Loan Review\" flowable:assignee=\"${initiator}\" flowable:formKey=\"loanreview\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-1008F0B8-53E4-42FA-85C1-00264671FA13\" sourceRef=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\" targetRef=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-2E640A0B-D82B-45A8-8BCC-B2E70F07E46F\" sourceRef=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\" targetRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\"></sequenceFlow>\n    <userTask id=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\" name=\"Advanced Loan Review\" flowable:assignee=\"${initiator}\" flowable:formKey=\"advreview\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\" name=\"Inform Acceptance\" flowable:assignee=\"${initiator}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\" name=\"Inform Rejection\" flowable:assignee=\"${initiator}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://flowable.org/modeler\"><![CDATA[true]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <exclusiveGateway id=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-49699BF8-3761-4BFC-BEAD-8FD13225481F\" sourceRef=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\" targetRef=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\"></exclusiveGateway>\n    <endEvent id=\"sid-CC27E554-CFAE-4146-A34B-E30FD4687102\"></endEvent>\n    <sequenceFlow id=\"sid-73D814EE-CA76-4353-8B78-8656C2766F34\" sourceRef=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\" targetRef=\"sid-CC27E554-CFAE-4146-A34B-E30FD4687102\"></sequenceFlow>\n    <sequenceFlow id=\"sid-7CB955DC-9C32-4B4C-BEA5-645629BD108F\" sourceRef=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\" targetRef=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\"></sequenceFlow>\n    <serviceTask id=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\" name=\"Credit advice\" flowable:type=\"dmn\">\n      <extensionElements>\n        <flowable:field name=\"decisionTableReferenceKey\">\n          <flowable:string><![CDATA[credit]]></flowable:string>\n        </flowable:field>\n      </extensionElements>\n    </serviceTask>\n    <sequenceFlow id=\"sid-410F9B72-3AEA-4BB0-9F4C-B749488FE835\" name=\"Accept\" sourceRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" targetRef=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_loanreview_outcome == \"Accept\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-60C38402-D299-4107-8029-1F52BC3099F0\" name=\"May be\" sourceRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" targetRef=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_loanreview_outcome == \"Consider\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-114F299D-8AE9-457D-9C12-6DE8FEFA7099\" name=\"Reject\" sourceRef=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" targetRef=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_loanreview_outcome == \"Reject\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-FEFCC3DC-BDE1-44D0-B41C-EA10F0F3C858\" name=\"No\" sourceRef=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\" targetRef=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_advreview_outcome == \"Reject\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-CFAB6DD6-EAA0-4F48-9930-8010328F07B4\" name=\"Yes\" sourceRef=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\" targetRef=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${form_advreview_outcome == \"Accept\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-A6343F4C-9235-4C84-9F8E-65E775ED73EE\" sourceRef=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\" targetRef=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_loan\">\n    <bpmndi:BPMNPlane bpmnElement=\"loan\" id=\"BPMNPlane_loan\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"40.0\" y=\"183.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\" id=\"BPMNShape_sid-E499C4FD-601A-428B-8A94-53A4702BCA5A\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"115.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\" id=\"BPMNShape_sid-9C9AE870-0DA8-4D3A-8F71-E93EC9AB70BD\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"405.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\" id=\"BPMNShape_sid-0D7A96A9-DF66-401C-9086-CDBE8A8E32BB\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"550.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\" id=\"BPMNShape_sid-E2AD03B5-E29D-4118-851B-3FEB4A2DF9AD\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"645.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-786BC734-A9A0-419D-87AD-DF3EAA269671\" id=\"BPMNShape_sid-786BC734-A9A0-419D-87AD-DF3EAA269671\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"755.0\" y=\"255.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\" id=\"BPMNShape_sid-8197ACA7-AF91-42B2-AD61-38AC56434D4D\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"755.0\" y=\"65.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8670129B-EBAC-4B60-A335-36F93DB70138\" id=\"BPMNShape_sid-8670129B-EBAC-4B60-A335-36F93DB70138\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"785.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-F3E3FE06-D696-47AB-864B-8B31B230542C\" id=\"BPMNShape_sid-F3E3FE06-D696-47AB-864B-8B31B230542C\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"915.0\" y=\"178.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-CC27E554-CFAE-4146-A34B-E30FD4687102\" id=\"BPMNShape_sid-CC27E554-CFAE-4146-A34B-E30FD4687102\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"990.0\" y=\"184.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\" id=\"BPMNShape_sid-2DE79A5D-66B8-45A1-A2A2-906925F63E90\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"260.0\" y=\"158.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-410F9B72-3AEA-4BB0-9F4C-B749488FE835\" id=\"BPMNEdge_sid-410F9B72-3AEA-4BB0-9F4C-B749488FE835\">\n        <omgdi:waypoint x=\"570.1025641025641\" y=\"217.8974358974359\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"570.5\" y=\"295.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"755.0\" y=\"295.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FEFCC3DC-BDE1-44D0-B41C-EA10F0F3C858\" id=\"BPMNEdge_sid-FEFCC3DC-BDE1-44D0-B41C-EA10F0F3C858\">\n        <omgdi:waypoint x=\"805.0\" y=\"178.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"805.0\" y=\"145.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1008F0B8-53E4-42FA-85C1-00264671FA13\" id=\"BPMNEdge_sid-1008F0B8-53E4-42FA-85C1-00264671FA13\">\n        <omgdi:waypoint x=\"360.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"405.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-60C38402-D299-4107-8029-1F52BC3099F0\" id=\"BPMNEdge_sid-60C38402-D299-4107-8029-1F52BC3099F0\">\n        <omgdi:waypoint x=\"590.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"645.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-49699BF8-3761-4BFC-BEAD-8FD13225481F\" id=\"BPMNEdge_sid-49699BF8-3761-4BFC-BEAD-8FD13225481F\">\n        <omgdi:waypoint x=\"745.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"785.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-F7DA85F8-2FA7-44FE-BF12-07E6CF04188B\" id=\"BPMNEdge_sid-F7DA85F8-2FA7-44FE-BF12-07E6CF04188B\">\n        <omgdi:waypoint x=\"215.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"260.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-CFAB6DD6-EAA0-4F48-9930-8010328F07B4\" id=\"BPMNEdge_sid-CFAB6DD6-EAA0-4F48-9930-8010328F07B4\">\n        <omgdi:waypoint x=\"805.0\" y=\"218.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"805.0\" y=\"255.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-2E640A0B-D82B-45A8-8BCC-B2E70F07E46F\" id=\"BPMNEdge_sid-2E640A0B-D82B-45A8-8BCC-B2E70F07E46F\">\n        <omgdi:waypoint x=\"505.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"550.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-73D814EE-CA76-4353-8B78-8656C2766F34\" id=\"BPMNEdge_sid-73D814EE-CA76-4353-8B78-8656C2766F34\">\n        <omgdi:waypoint x=\"955.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"990.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-966371C5-CCF2-4711-8F8D-A0F09F806C64\" id=\"BPMNEdge_sid-966371C5-CCF2-4711-8F8D-A0F09F806C64\">\n        <omgdi:waypoint x=\"70.0\" y=\"198.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"115.0\" y=\"198.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-A6343F4C-9235-4C84-9F8E-65E775ED73EE\" id=\"BPMNEdge_sid-A6343F4C-9235-4C84-9F8E-65E775ED73EE\">\n        <omgdi:waypoint x=\"855.0\" y=\"105.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.5\" y=\"105.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.1069518716578\" y=\"178.10695187165774\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-114F299D-8AE9-457D-9C12-6DE8FEFA7099\" id=\"BPMNEdge_sid-114F299D-8AE9-457D-9C12-6DE8FEFA7099\">\n        <omgdi:waypoint x=\"570.1069518716578\" y=\"178.10695187165774\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"570.5\" y=\"105.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"755.0\" y=\"105.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7CB955DC-9C32-4B4C-BEA5-645629BD108F\" id=\"BPMNEdge_sid-7CB955DC-9C32-4B4C-BEA5-645629BD108F\">\n        <omgdi:waypoint x=\"855.0\" y=\"295.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.0\" y=\"295.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"935.0\" y=\"218.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('4',1,'form-loanreview.form','1',_binary '{\"name\":\"Loan review\",\"key\":\"loanreview\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"loan\",\"name\":\"Loan\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"guidance\",\"name\":\"Guidance\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null}],\"outcomes\":[{\"id\":null,\"name\":\"Reject\"},{\"id\":null,\"name\":\"Consider\"},{\"id\":null,\"name\":\"Accept\"}]}',0),('5',1,'form-advreview.form','1',_binary '{\"name\":\"Advanced review\",\"key\":\"advreview\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"loan\",\"name\":\"Loan\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"age\",\"name\":\"Age\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"nationality\",\"name\":\"Nationality\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"income\",\"name\":\"Income\",\"type\":\"integer\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null},{\"fieldType\":\"FormField\",\"id\":\"home\",\"name\":\"Home\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":true,\"overrideId\":false,\"placeholder\":null,\"layout\":null}],\"outcomes\":[{\"id\":null,\"name\":\"Reject\"},{\"id\":null,\"name\":\"Accept\"}]}',0),('6',1,'dmn-credit.dmn','1',_binary '<definitions xmlns=\"http://www.omg.org/spec/DMN/20151101\" id=\"definition_e3c70382-bdaa-11e7-a234-baca12a46316\" name=\"Credite advice\" namespace=\"http://www.flowable.org/dmn\">\n  <decision id=\"credit\" name=\"Credite advice\">\n    <decisionTable id=\"decisionTable_52422dad-bd88-11e7-90a6-92915f9dcc1e\" hitPolicy=\"FIRST\">\n      <input label=\"Age\">\n        <inputExpression id=\"inputExpression_1\" typeRef=\"number\">\n          <text>age</text>\n        </inputExpression>\n      </input>\n      <input label=\"Status\">\n        <inputExpression id=\"inputExpression_3\" typeRef=\"string\">\n          <text>home</text>\n        </inputExpression>\n        <inputValues>\n          <text>\"Rented\",\"Mortgaged\",\"Owned\"</text>\n        </inputValues>\n      </input>\n      <output id=\"outputExpression_2\" label=\"Credit Guidance\" name=\"guidance\" typeRef=\"string\"></output>\n      <rule>\n        <inputEntry id=\"inputEntry_1_1\">\n          <text><![CDATA[< 25]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_1\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_1\">\n          <text><![CDATA[\"Young, so need further checks\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_2\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_2\">\n          <text><![CDATA[\"Rented\"]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_2\">\n          <text><![CDATA[\"No collateral, so consider viability\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_3\">\n          <text><![CDATA[> 60]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_3\">\n          <text><![CDATA[\"Mortgaged\"]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_3\">\n          <text><![CDATA[\"Potentially overstretched debt to consider\"]]></text>\n        </outputEntry>\n      </rule>\n      <rule>\n        <inputEntry id=\"inputEntry_1_4\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <inputEntry id=\"inputEntry_3_4\">\n          <text><![CDATA[-]]></text>\n        </inputEntry>\n        <outputEntry id=\"outputEntry_2_4\">\n          <text><![CDATA[\"No guidance\"]]></text>\n        </outputEntry>\n      </rule>\n    </decisionTable>\n  </decision>\n</definitions>',0),('7',1,'form-name.form','1',_binary '{\"name\":\"Get name\",\"key\":\"name\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"fullname\",\"name\":\"Fullname\",\"type\":\"text\",\"value\":null,\"required\":true,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"Please enter the full name of the applicant...\",\"layout\":null}],\"outcomes\":[]}',0),('8',1,'loan.app','1',_binary '{\"key\":\"loan\",\"name\":\"Loan App\",\"description\":\"Applications for loans\",\"theme\":\"theme-7\",\"icon\":\"glyphicon-ok\",\"usersAccess\":null,\"groupsAccess\":null}',0),('9',1,'loan.loan.png','1',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0Y\0\0\0Oıa\0\0;IDATx^\í\İ}\Ğe/ü[K•U´DÖ¿\Ô\Å-_K«\\üDğ…B|ªqy‰\nòX.»ƒk­®ké®§Ö²D•U@QV\İ›„–`s”—rA^b$!†·úÌ¯7ôô\Ì\İ÷tg¦»\çó©úVfº{zæ¹®\î«\éé™›\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0fK’${­_¿ş\Òo¼ñw+W®L\æ\ç\çe\Â\é½\ïO®Y³\æşU«V“ÿ|\0\0\0`X¿~ıwz£É¦M›’\íÛ·\'?ş¸L8ñ¾\Çû¿zõ\êmóóóG\å?#\0\0\0¨]œ£ùƒT™|6nÜ¸y~~~mş3\0\0€\Ú\Å\×œĞŒ\Ä\ç0??¿#ÿ\0\0@\í\â;\ìùS™^\âó\ÈF\0\0\0P»²G~»1Yó×’Û®ı\Û4q;¦å—“jQ\0\0\0`\"\Ê\Şz_r\ë\ÕK~v\Å_î–˜óò\Ë\ËøQ\0\0\0`\"\Ê\î¹\íÅ€,÷\Şö¯\Ë\ËøQ\0\0\0`\"\Êşãº¿(d‰yù\åeü(\0\0\00e\n·\Î| %\æå——ñ£ \0\0\0ÀD(4+\n\0\0\0LD™‚@üª@¾%\æå——ñ£ \0\0\0ÀD”)¬ûÉ¹…€,1/¿¼Œ\0\0\0&¢LA`\Ë}?On½\æoŠ1-\æå——ñ£ \0\0\0ÀD”)D\îú\é\Å˜–_NªEA\0\0\0€‰(UØ±#Yw\Ã?\rbZ\ÌX^Æ‚\0\0\0\0±PA\à\á­÷%wş\äÅ€,1/–\É?NÆ‹‚\0\0\0\01´ °cG²qİªä–«\Î(\ä\ËÄ²\Î¨\0\0\0&¢¨ °\ĞY\Ã\âl\êQ\0\0\0`\"Š\ne\Î\n–xl~}R>\n\0\0\0LDQA ¿\Ø\ä\×\'\å£ \0\0\0ÀDdzQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0*9\î¸\ã®\ëei~z‚@³¢ \0\0\0@%\Çw\\²3#\nÍŠ‚\0\0\0\0•ôFš\0\0\0*)(š\0\0\0*)(\ä“š\0\0hˆ‚ƒ(‘NEA Y\É>²ø\ä·\ã\0\00ƒK\Ú*Ô—\ë[\à+½\Éiò\Óó¹\ä’K’ƒ:(y\Æ3‘}ô\Ñó÷T²\×yúÓŸ|ğÁÉªU«–Ë§\ì\ß5,ñ^½\éMoªm}Eq†@5¶\Ù\0\0\Ô\Æ\à’¶Z¨©Rx\æ3Ÿ™.·aÃ†ä¡‡\Z˜¿§\Òÿú®¿şúôö+^ñŠ\å\êN\Ù÷¥Jª±\Í\0 6—´\ÕB…€\ÌB\ìö9çœ“pÀÉ˜\\xá…»¦÷/»eË–\ä\ä“ONö\İw\ß\ä/xArú\é§\'[·n\İm=‡~xrè¡‡\î6\íCIö\Úk¯tİŸúÔ§\Ò\×\ëˆû]t\Ñ\È×·mÛ¶ôvœ¥÷7oŞœœz\ê©\É~û\í—fùò\åÉ½÷\Ş;ğ¸Q\ËE\ã\È#Lı\ìg\'¯zÕ«’›nº©ğ\ï]\ìßóWDA \Z\Ûl\0\0jcpI[-TÈ”-œşù\ÉÊ•+\Ó\ÛqÀ›_.\Äqÿ‚.H¾ü\å/§·\ãÀ¸\Ù\Ë.»,¹\ç{v›Ë®]»v\×ıó\Î;/¹ù\æ›\Ó\Ûq°>\êõ]{\íµ\é\í×¾öµ\éıSN9%½¯uÍš5\é\íw½\ë]µ\\ü÷¿û\İ\ï¦ÿ¾\æ5¯x|ş~™¿½\è=\ÌGA \Z\Ûl\0\0jcpI×•-\ÄW{\ì±\Ây\Ù\ãóœ\ç¤÷|ğÁ4q;_<ˆ\éù\çyøá‡“;v\ìö\\ı÷‡½¾,q\rn¸!Ï—Ÿÿ¼\ç=o\àõZ.şû>úh\áó\İ/ó·½‡ù(Tc›\r\0@m.éº²2ó\âtù¸\Äq\n}ÜSä‹–-š¶\Ğıüô($¼\ï}\ïKÆ¯¸\âŠ\İ^\Ã<0ôq-—yä‘¡\Ï\ß_\Ìß¿\ßjl³\0¨Á%]WgA\à\ÄOL\ï\Çió_úÒ—\Ò\ÛguV\á²E\Óº_4=®!ğ’—¼$=ˆ¿ë®»’\ã?>÷¹\Ï}n\×\×	²_\èÜ¨\å9\æ˜ôş\å—_ş›}e`Ÿ}öI\ïÇµ\âú\0ı\ë[\Ìß¿\ßjl³\0¨Á%]WgA ş·ı¤“N\Úua½3\Ï<3=`/Z¶h\ÚB÷‡M¿ô\ÒK\Óû\ï|\ç;Ó‹®X±\"yÑ‹^”^ğ\ío{r÷\İw\ïz\ÜSŸú\Ôôö¨\åÖ¯_Ÿv\ØaÉ³õ¬\äÕ¯~uzQÁ˜~\î¹\ç&û\ï¿úS‡q\à\ßÿ:ó·\ç\ï÷GA \Z\Ûl\0\0jcpI\×º˜(\0ôş\Ü\ä\Å/~ñÀ¼&EA \Z\Ûl\0\0jcpI\×\ÍJA`\éÒ¥\Éı\Ñ%\ßü\æ7\æ5)\n\Õ\Øf\0PƒKºnV\nm‰‚@5¶\Ù\0\0\Ô\Æ\à’®ShVª±\Í\0 6—t‚@³¢ Pm6\0\0µ1¸¤\ëšjl³\0¨Á%]§ Ğ¬(Tc›\r\0@m.\é:fEA \Z\Ûl\0\0jcpI\×)4+\n\Õ\Øf\0PƒKºNA YQ¨\Æ6\0€\Ú\\\Òu\nÍŠ‚@5¶\Ù\0\0\Ô\Æ\à’®ShVª±\Í\0 6—t‚@³¢ Pm6\0\0µ1¸¤\ëšjl³\0¨Á%]§ Ğ¬(Tc›\r\0@m.\é:fEA \Z\Ûl\0\0jcpI\×)4+\n\Õ\Øf\0PƒKºNA YQ¨\Æ6\0€\Ú\\\Òu\nÍŠ‚@5¶\Ù\0\0\Ô\Æ\à’®ShVª±\Í\0 6—t‚@³¢ Pm6\0\0µ1¸¤\ëšjl³\0¨Á%]§ Ğ¬(Tc›\r\0@m.\é:fEA \Z\Ûl\0\0jcpI\×)4+\n\Õ\Øf\0PƒKºNA YQ¨\Æ6\0€\Ú\\\Òu\nÍŠ‚@5¶\Ù\0\0\Ô\Æ\à’®ShVª±\Í\0 6—t\İÊ•+ŸÜ¾}ûÀ©L>½\Ï\áşùùùùÏˆòl³\0¨Á%]·fÍšû7m\Ú4pp*“\Ï\İw\ßı\íùùùµùÏˆòl³\0¨Á%]·jÕªcV¯^½m\ãÆ›)0ô\Ş÷6lø\æüüü¯z9*ÿQm6\0\0µ1¸d\ÄAhü\Ït/\Çw\ØÛ–‹/¾8‰¾šŸŞ¢\Äû\ï¿b@E¶\Ù\0\0\Ô\Æ\àš¯\×O¯\ÓW	\Ú\0\0µ1¸„f\ëõÑ¥\ÑOwfi~>³\Å6\0€\Ú\\B³eg\ì\Ìuùù\Ì\Ûl\0\0jcp	Í•;;ÀY\Øf\0PƒKh®\Ü\Ù\ÎÀ6\0€ú\\B3\r9;ÀY3\Î6\0€\Ú\\B3Å™\0…\0g	\Ì8\Ûl\0\0jcp	\Íg\0òYš\İg›\r\0@m.¡y\â€‚@>\Î˜A¶\Ù\0\0\Ô\Æ\à\ÚA_%h\0\0\Ô\Æ\à\ÚA_%h\0\0\Ô\Æ\à\ÚA_%hPA’${­_¿ş\Òo¼ñw+W®L\æ\ç\çe\Â\é½\ïO®Y³\æşU«V“ÿ|\Ú@š~´!©š¶·¡º\\–§ÿN?³\ÜõU‚v\0ôv\â\ß\é\íD’M›6%Û·oOüq™p\â}÷õ\ê\Õ\Ûz;ö£òŸQ\ÓiCÓ6$U\Óö6T7ƒ\Ëòô\ß\ég–û¯¾J\Ğ ‚¨\è\ÇN$¿s‘\Ég\ãÆ›{;òµùÏ¨é´¡\æD’ªikª›Áeyúos2‹ıW_%hPAœŞ§¢ßŒ\Ä\ç\ĞÛ‘\ï\ÈFM§\r5\'ÚTM[\ÛP\İ.\Ë\Ó›“Y\ì¿ú*A;€\n\â»gùŠL/ñy\ä?£¦Ó†šmHª¦m¨n—\å\é¿\ÍÊ¬õ_}• @ew\äüvc²ş\æ¯%·]û·i\âvL\Ë/\'\Õ\Ò\Æy\Ù6\Ùø\à#É‡¿õ¿\Ó\Ä\íü|©.·!Û¡É¤m¨n—\å\é¿\ÍÊ¬õ_}• @ev\äo½/¹õ\ê%?»\â/wKL‹yù\åeü´qG>ª\r\í\Øñx²\å¡\Çv\İ_ó¿\ŞUˆ\Û\Ùô\ßüö\Ñ\ä·ÿ\×r2~ºÖ†²\ØM.mlCu3¸,OÿmVf­ÿ\ê«\í\0*(³#¿\ç¶\ìÄ³\Ü{Û¿,/ã§;òam(Š\ßø\É]\Éÿ\ÎÏ“kn¹?Y}û\Æ\äc—ßº« ·cúÿ\ë\Ş\ä¿õ–ùÇ«\îH¶=¢(P5]jCı±š\\\ÚØ†\êfpYşÛ¬\ÌZÿ\ÕW	\ÚTPfGş\×ııÀ<K\Ì\Ë//ã§;òamhó¶G“\\úó]€…rö·–Ü³ù¡õ\È\âÒ¥6\ÔÛ¡É¥m¨n—\å\é¿\ÍÊ¬õ_}• @ev\ä·\Î|`%\æå——ñ\Ó\Æù¨6t\åÿ¾o\àÀX.½\é\î\Ç\Ë\âÓµ6”\Åvhricª›Áeyúo³2kıW_%hPy³\Ò\Æù¨6_\ÈøÿòÿÿYò\Í6$¿üõo\Ó\Äí˜–\Íÿ\á\Ï|´t­\re±š\\\ÚØ†\êfpYşÛ¬\ÌZÿ\ÕWgO\ï3¿.>÷r]şqÀev\äq5\àü<K\Ì\Ë//ã§;ò¢6¿ \r\ì¿f@\0ò\ËÅ´l~,ñ\ë\ÕÒ•6”\í\Ğ\ä\Ò\Æ6T7\å\é¿\ÍÊ¬õ_}uöô>ó¥€|–\æQfG¾\î\'\ç\ìÀ³Ä¼üò2~Ú¸#/jCù¯Dâ¬€ür1-¿\\$¿œ”OW\ÚP>¶C“K\ÛP\İd”§ÿ6+³\Öõ\Õ\Ùg\0œ\0\ã(³#\ßr\ßÏ“[¯ù›xL‹yù\åeü´qG^Ô†òø\n“KW\ÚP>¶C“K\ÛP\İd”§ÿ6+³\Öõ\Õ\Ùg\0œ\0\ã(³#\ÜõÓ‹v\ä1-¿œTKw\äEm\ÈW¦—®´¡¢\ØM&mlCusQşÛ¬\ÌZÿ\ÕWgWœ	PPpv\0,V©ùÉºşi`G\Ób\ŞÀò2vÚ¸#Õ†V\ßş\ë]ü]T0–\Í?^Ÿ®µ¡]±šX\ÚØ†\ê\æ £<ı·Y™µş«¯Î®8   °4¿°€…v\äo½/¹ó\'_Ø‰g‰y±Lşq2^Ú¸#Õ†®úyùŸü·ÿu\ïÀ\ãeñ\éZŠ\ØM6mlCusQşÛ¬\ÌZÿ\ÕWg[\î,gÀ8†\î\Èw\ìH6®[•\Ür\Õ9;\ï|b™XV•¿zÚ¸#Ö†6o{4ù\ï\ßùùÀÿ°üÕ¥?K~ó\ÛG\Ö#‹K—Ú\í\Ğt\Ò\Æ6T7\å\é¿\ÍÊ¬õ_}u¶\å\ÎXšŸ”P´#_¨š?,ªü\Õ\Ó\ÆyQŠ<úØ\äŸV­K¿ğ/?ıUr\İ\í»_S n¯¾}cr\Í-÷§…ƒ¯®ùe²\İ`°rºÒ†l‡¦—6¶¡º9\È(OÿmVf­ÿ\ê«dg	\ä§%\í\È\ËTó‡%›_Ÿ”Ow\äEm(K~½õ¿.\r\Ì\nq;›ş\àC)Ô”®´!Û¡é¥m¨n—\å\é¿\ÍÊ¬õ_}•83`Ù²e\ÚŒ«hG\ß9/6ùõIù´qG^Ô††%~A +ø5=“®´¡üve±É¯OÊ§m¨fKvd,\É\Ï`şÛ¬\ÌXÿ\ÕW	Kö\Ş{o\í\0\ÆU´#—é¥;rm¨YÑ†¤j\ÚØ†j\ÊM½œ½ó_\Ì\è¿\Í\Êõ_}• @Uv\ä\ÍJw\ä\ÚP³¢\rIÕ´±\r\Õ$Xf\Êü}\n\è¿\ÍÊŒô\ß|\ß\Ì\ßg6\ä?÷ü} ;òf¥;rm¨YÑ†¤j\ÚØ†j0l 9l:;\é¿\Í\Êô\ßa}r\Øtºi\Ø\ç=l:0Œy³\Ò\Æ¹6Ô¬hCR5mlC-4€\\hşL\Ó›•÷ß…ú\âBóé†…>\ç…\æ\ÃJ’\ä©7\Şx\ãÿ{ñ\Å_ó‰O|bóG>ò‘\í\ïÿûŸŒ‹“œ~ú\é¿?û\ì³\êMû?Ÿü\ä\'ÿ\Ç\É\'Ÿü\âü\ã»Â¼Yi\ã\\jV´!©š6¶¡\n\Ê\Ë.7sô\ßf¥\Ãı·l,»\íTöó-»\\\',[¶\ì \Ş1\ì\éË—/ÿA\ïßµ½\ÜÇ´;ÿ]»sú\é±\\ş±3)I’½¯º\êª/\ìcûİŠ+’ó\Î;/ù÷ÿ÷ä—¿üe²eË–$Ä¿q?¦\ÇüSO=õ‰~ğƒ\ë\ß÷¾÷½5¿¾¶³#oVÚ¸#×†šmHª¦mhL‹0.vù™ ÿ6+\í¿‹\í{‹]vX\ì\çº\Ø\å[\ç\Øc=¬w ¿f\çÁÙ¬‰\Ç\å\×53zøg|ò“Ÿ\Üş¡}(¹ñ\Æ“\'x\"-\0,$–‹\å\Ï:\ë¬\ß\àøŸË—/I~\İmeGŞ¬´qG®\r5+ÚTM\Û\Ğ\Æ(û¸\Î\Ò›•ö\ßqûÜ¸£™\Æı<\Ç}\\£Å±h\ïÀş‡û‹\É»tL» \Ş1ıS®¾ú\êKN;\í´\ä\Ê+¯Lşğ‡?\äùK‰\Ç\Å\ãO:\é¤G\Şı\îw‘6²#oVÚ¸#×†šmHª¦mh‘ª«>¾Sô\ßf¥cı·j_«úxš¡\ê\çXõñr\ì±Ç¾¥wú\ÛşƒûO<1ùô§?¬\\¹²ğ¬÷˜óc¹\\Q\àÁX_ş9:§÷^<\åò\Ë/¿\éı\ïò‹_üb÷#ü1\ÅzV¬Xñ\Øñ\Çjşù\ÚfZ;ò\Ï~ö³\É\Ë^ö²d¯½öJ^ø\Â&½†\Üq\ÇË•MüozÓ›¦·-mÜ‘O«\rIq´!©š6¶¡E¨k`X\×zZOÿmV:\Ô\ë\êcu­‡\é¨\ëó«k=S\Õ;€?¥w\Ìô‡\ì€ş„NH¾ò•¯$[·n\Í®Š\åbùx\\_Q\à÷±\ŞüsuJœpú\é§\'›6mÊ¿\'•\ÄúN>ù\ä‡\Û^U™Æü«_ıj\ì¬\Òøx¿ño¤÷_û\Ú\×,[6ñøH~z\Û\Ò\Æù4Ú6$U\Ó\Æ6TR\İÂº\×\×Júo³Ò‘ş[wßª{}LFİŸ[\İë›¨g\ì*œy\æ™\É]wİ•?D-%\ï/\n´ı˜v¨n¸\áŒ(\Ôuf@^o½O¾÷½\ïİºlÙ²—æŸ»-¦±#\Ã\Ş;«\ä\ÒK/˜\é}nÉ«_ı\êôìƒ:(ùÖ·¾•N\ÇD\â3}\îsŸ›r\È!ÉwŞ¹kz–şe³u\Í;üğÃ“C=4¶yó\æ¸xd²\ß~û¥Y¾|yr\ï½÷¼¶=6\îÈ§Ñ†dx´!©š6¶¡–\Ì\í>|J/¾ó\ß\Å\È?.¿Ş™£ÿ6+\è¿ù>•\ïse\å—_/Í–ÿ¼òŸgYù\Ç\å\×\Û\nq¬yüñ\Ço\Í\à?úÑ&Û¶m\Ëš.J<>\Ö\ÓW\Ø\Ò\æc\ÚB½¿s\ï¿û»¿\Û\ßùß“¾ÿı\ïo\í}@WåŸ¿-¦±#\ßw\ß}cg5ô€;ŠW]uUrû\í·§Ë½\à/H§\Ç\íÈ…^˜\\t\ÑE\é\í£:j·y\Ù:F\İ\Ïn_v\Ùe\É=÷Ü“N;\å”S\Òiñ›5kÖ¤·\ßõ®w\r¼¶=6\îÈ§Ñ†dx´!©š6¶¡,™Xşó\Ü\î\âß²\ÌaË¯¦\è¿\ÍJ\Ëûo¾/\r\ësö¸üúi¦ü\ç4\ìó\\È°\Ç\å\×\ßx½ƒõ+û\Ï¨Z\È\Äzrg\n\\™\îVû\áø¥ø5q/ XV¬ÅŠ´õ\ç¦±#\Îs3Ù°a\ÃÀ¼\Èúõë“³\Ï>;y\å+_™.‰\é\Ù\íh¼ñ˜¸Å…şy\Ù:F\İ\Ïn?ø\àƒ»\æG\Ñ!›\åy\Ï{\ŞÀk\Û\Ói\ã|\ZmH†G’ªic\Za\É\Ü\àÀ\ï\Ï\çv\ßŞ—`ö,³¼·o~\Ñó\Ìı·Yiqÿ-\êCú\ê\ì)ú|fº\ìüiÁ]\×÷k\Ã\Äúú¯)\Ğ\Öc\Ú½¿\í©ı\×ı»ø©ÀIøñWz¼>ÿ:\Ú`\Z;ò×¿şõi\Çö•×½\îu\éü¯ı\ë»:qL\Ïn\Ç\éıYA\àù\Ïşnó²ud÷{ì±´€P´ş\ç\Ì\ÎZx\à^\Ï$\Ó\Æù4Ú6$U\Ó\Æ64Ä’¹\â_\Ñ@q\Ô\0³hùvN\ï7\ìù:MÿmVZ\Ú‡õ¢¾§¯v×°Ï¥\ès™vÇ˜\ÙÁz\\pOˆõö%\Ğ\Êc\Ú7\Üp\Ãÿó¾÷½/y\â‰\'ò\ï\Ïs\Â	\'üvÙ²e\å_Ë´ô>\Ì\ëzYšŸ7yœò\ß{\ê\ä\Ío~s²q\ã\Æ\äŸÿùŸ\Óû/ù\Ë\Óùq}€¸_÷ˆ#1=»}şù\ç\ï*d§õ\ï³\Ï>\éıø\ZB²ÿñ_½zuòµ¯}­p=ı¯\éø\ãO§}\îsŸK®½ö\Úôö4~µ I;ò&·!mHª¦m¨À’¹\Ñ½¢c\Ñ\0³h¹¢ef¡\çm²\ïıbú\ïÁ¼\ë}Œk\0\å\çgÉ–\ÉOoB†½¶a\Ó\'iõß²\í¥ÀB}¦¨\ê«İ³\Ğ\çQôù¶º”\é3ql\Ù[\æ\É^ÒŸ,ûk‹\ë\íûI\Â\'›tL;¶‹.ºhş¼ó\Î\Ëÿ­{\Ô\'>ñ‰[—/_şşük™–hddc[Ì¼\Î\Ä\çóš×¼&y\Æ3‘š\Øa‡%k×®M\ç}şóŸO‹ñú\çúv°\Ù\íì¢‚qAÀøzA\Ì;÷\Üs“ı÷\ß?yúÓŸ\\pÁ\É7¿ù\Íô‚„qÀ3\Î8£p=ı¯\'\Î:X±bEò¢½(yö³Ÿ¼ı\íoO\î¾û\î×½§3­y‘¦·!)6$U\Ó\Æ6”Sv€W4p\ì`\Í5°Ì”}şF+ûŞ—\í¿\×_}ÿû˜|\á_X&K¶L~z2\ìµ\r›>\éL«ÿ–m/9eûJQ_\ÔW»£\ì\çPô9·¶”\é3ql™-÷™\Ï|&øY«Xö\\M:¦\Û\'?ù\É&õuÌµ\×^{[\ï\r¼<ÿZ¦¥¯‘llew\äM\È\\Cv¶{2\ÓÚ‘\ébš…hCR5mlC};°+\Z@\Æı§L/3°\Ì,öu4N\Ù÷¾lÿ=\í´\Ó\Ò÷1\Î\ì‹>ú\è]ó\î¸\ã\äo|cZì¢ÌD?şÿ¹Š\å\Şó÷¤÷\ã\ÌÂ…~‘\èœs\ÎI8\à€\äÀL\ÏLŒyq\í¢#<2-ü¿\êU¯Jnº\é¦tú¨_\Z\Zö\Úòß°\é‘-[¶\ÄOU§_OŒ3c=ñ?r1oœ¿cT¦\ÕË¶—>\Ñ7\ÓGô\ÕnZ\ìûß™vP¦\Ïô\î_Í3˜÷¤X\ßki\Ì1\í\Øş\ê¯şj{ü\Ïñ$õvzo\Ş\Íù\×2-¬°±•İ‘7!s#v¶]É´v\äE\n\ÚN\ë\Û\Ğ,D’ªic\Úi\Ü]\Ñ\0ó\Üı\Å,3ã¾F(x\Ï\ßû2ı÷¡‡J¯ù\Ã\ëÖ­K\ß\Óøª\ß#<’\Î\Û\ÛŞ–N»ø\â‹w}­0»Š_ü\â§\Ëıñÿqz?\Æxı\"Q|½0~9¨^VŒø\îw¿›şg*\ÆôQ¿44\ìµ\åÿ\Æa\Ó#QˆyQ\àøò—¿œŞ¢@\Ì\ç\ï•iõß‚vR\Ø^vZ27^\ß\ĞW»e\Ü÷½\í  ¯ô™Ş¿7g\Ó÷ô±m¬¿\ï54\æ˜vl½\ì“qùIÚ²e\ËÃ½7\ï¾ük™–‚Æ•O\Ú\Ø\Ê\ì\Èer™Ö¼HA›\ÉGj`´!©š6¶¡¹\ê¹¢f•e¦\êëšš‚÷:Ÿô½/\Ó\ã½{«L\â×Ÿ\â~\\3(\î_s\Í5\éı\ì\ÚAı¿\"‰yò\'’Ş¾\âŠ+\Ò_úÒ—¦\ÓúE¢(BÄ……û\ç\ÅW\ãö£>º\Û\ëõKC£^[†Md¿®c\ÓH\Ü\Î\î\Çù;FeZı· }ä“¶—¹\ê}B_í†ª\ïw\ë\ÛAA\É\'ú\Ì\æ\ìş>¶õ÷=wci\Ç§–ış÷¿\Ïÿ{T\ïù*ø Ÿ2;òig®`™_¦L\âo\í¿P`•u\í©\ä?Ÿ6¤\rmh–’ÿ|Ú’ü\ß!\ÓKş³iz–-[–\ì½÷Ş±=?»o(08\å4ÿ¿Lq?¦Wqvş5w)eö\ïx\Ç;òö4şğ‡\Óù\Ù/ı\Äwş ;;M?ö\ßño\\4:¦/ô‹D\Ùs÷\ß\Ï\nÙ™	YFı\ÒĞ¨\×ÖŸa\Óû\×\îøú@Ü¯Ä¼qşQ\É>MJú\ê\Ü>+?ƒZ\Åû\ïsc\ÛA¾\í6!{ú\Ø6\Ö\ß÷|;òoJ\ëœv\Úi¿\ß\ÓU”¼\ŞN\äÿ× jJ¾õ\åº\ãyªß´3Wr\'¸P\êZÏÌ´*ûE\n\Ú\ÎiCŸı\ìg“—½\ìe\é÷\'_ø\Â&\ï~÷»\Ó\ïl\æ—\'sCWù\â\Ğ8\é_ß°”Y¦\î\Ìbš›\ÂûÉ74+¨¯Zµj`¹²™\Öß‘O\Û\Ğ\\õÿ\Õõ¿M1½ñÿ\ÛT·‚÷¼ğ½_¨ÿ\ÆwñŸö´§%GqÄ®i_ü\â\Ó÷6şW<\î\Çõ\âşW¿ú\Õ4q;ó\â\'Š³û‘K.¹$¾\Ğ/e\Ï\Õÿ˜cIo_~ù\å\é¿\ÙWFı\ÒĞ¨\×ÖŸa\Ó#ñU1/¾2ğ¥/})½}\ÖYgıwŒÊ´úoA;)l/s\Õû„¾\Ú\rU\ß\ïÖ·ƒ‚¾2\ĞgzÿŞ—M\ß\ÓÇ¶;C\à/ş\â/\Ú\Óß³È»ıö\Ûz\\ƒ¾o1ªqõ[hG>Nº@Nö+‡rÈ®Ÿ*3/{\ØÅŠ?{Ü°uº\àO¶\Üb/\ì3N¦µ#/2‰6”\r®b\àµiÓ¦\ä\ßøFzÿµ¯}\íÀ²\ã$\Ö);}1©c{\"³Ö†\"sSú,úŸ7»‚ú+^ñŠ\åÚ–6¶¡–Ì7+\ZX\æÿ\×iœæ¸¯§Ê¾÷õ\ß(úöK÷¡Ù´[n¹e\×{ãµ¸®@\ì÷\ã\Ôú\ìûö‘X6ö\rO}\êS\ÓûOy\ÊSv]\ìo¡_$Ê«ÿ~<WüªÑ³õ¬tœ\ĞQÁa¿44\êµõ\'›OÌ‹3N:\é¤]cŒ3\Ï<3ı\nÂ¸Ç¨L«ÿ–m/;-™¯o\è«\İ2\îûŞ‰vP¦\Ï\ç\Z\ã\ë\ít\îœô¯üË¿ü\Ëk\ĞG5®~\í\È\Ç\ÉBÈ‰ƒ\é‹.º(½}\ÔQG•—¿=\ì\â@=ö:ûïº\àO¶\Üb/\ì3N¦µ#/2‰6ô†7¼!}?\ã€òó\"1/røá‡§?3\ÓÆ½\Ztv;Ÿüs”F­{\ÔU°ûŸcXk\Ô\ß3Nf­\rE\æ†|–‘QÅ¾aŸu¶¾…Š€ı\Ïƒû¸?¥\Z÷‡}®e\ÛË°\ÇÇ¼xM1/n\ÇO·\Åcşñÿ1½§SW\İ>µ±\rõY2·¸]\ÑÀ2¾Zt\Å\ê\Å0û:\Z§\ì{_µÿJ½™Vÿ-\Û^ú,¶\è«İ´\Ø÷¿3\í LŸ9Î¯Œ\ïŸø\Äÿˆß¹Ÿ¤3\Ï<ó\Ê&ıf\ã¨\Æ\ÕoO\ì\Èº@Nÿ…yb^v^şö°‹-ôü\Ùrı÷G]ğ\'[n±ö\'\ÓÚ‘™DÊ¾W9\ì\08\æE.»\ì²\ä{\îI§{5\èa·óVP\Z¶\îQWÁ\îa¬Q\Ï8™µ6™ñy*ö\rû¬³õ-T\ì\Ş\ì4\ã\ì\ì–aŸk\Ùö2\ìñ1\ï­o}kúõš;v$ög–\Î{ı\ë_ŸŞ\â\ÅÒ¥K^\ëb\Ò\Æ6”³d®\ÜÀn\ØÀ2@\Í/3À,ûüVö½¯\Ú¥\ŞL«ÿ–m/9eûJQ_\ÔW»£\ì\çPô9·¶”\é3ql¹ó\0=ù\Ìg>“?ü¬U¬?{®&Ó­7\0|ñŠ+\è\Éÿ­{D\ïy~\İ{óX¶l\ÙAù\×\Òt{bG¾\Ğr\â¾²ƒşø¢²óò·‡]h¡\çÏ–\ë¿?\ê‚?£Ww¦µ#¯¢J\Ê\n1ñ¿\çùy‘˜‰\Ï%›6\îÕ ‡\İ\ÎgXAiÔº‡]»™a¬Q\Ï8™µ6™ñy*ö\rû¬³\Û³\éY\â\Zq\ÖA\Ìõ¹–i/£ÿ‘|$½Ÿ}\å&®_ÿfgœq\Æ¯u1ic*°dnô\0¯h\àXte\ê¢\åF\r0z\ŞÎ©\Ú¥Ş´°ÿ.\ÔgŠú ¾\Ú=}EŸo\ç\ÛA[ö1ŸŒƒô8³0ÆŸ{B¬÷=\ïyOú<ñ|m<¦-ôÁ~ğ®I}m\à\Û\ßşö7zo\Şõù\×\Ğ{bG¾\Ğr\âİ²ƒõ\ì¼\Ê\Ì\Ë\ßvq a\Ï¿y·\ã£ót£.øÓ¿\\\Ñı:\Ó\Ây¥6ÿ«\Ù[Å‚_\èŸ6\îÕ ‡\İ\ÎgXAiÔº‡]»™a¬Q\Ï8™µ6™ñy*ö\rû¬ó\ë\Ë\ß\ÏOø\á‡\Ó\Ï<Šq\ßÿ¼EŸk™ö2\êñ\ÙuQ²e\â;\Èı÷\ã¹üc“6¶¡!–\ÌôŠŒE\ËL\ÑòE\Ìa\Ï\×iUûo•\Ìõ}&]º°g•´´ÿ\ë;E}O_\í®aŸK\Ñ\ç:3\í 1³ÿ¹ÿ\ÊW¾’?­E¬7{¶\Ó\ê\r°\Ş\Ú; ûışğ‡ü\ß\\«\Şú\ï\é½q\ë=ö\Ø\Ãò¯¡\röÄ|¡\ädŒ\ï„\ÇÿĞ•—¿=\ì\â@Ãÿ\Üs\ÏMö\ßÿtĞıOZ6o\Ôú—+º_gÚ¸#¯Ò†²S\ï\ßü\æ7\'7n\Üõ=\êø\ê˜·#ı÷j\Ğı·óÅ¡şõ+(Z÷°«`÷/3¬€5\ê\ï\'³Ö†\"s}\ïs>£Š}\Ã>\ëüúò÷‹¦\Çö\â%/yIZø‰¯Œú\\Ë´—Qÿ\Å/~±k\Ù\ì*\íñU…lÚ~ô£×º˜´±\r°dnpÀ÷\çs}\ïÿ\Ü\èe¦h€ùŞ¾ùE\Ï3ªö\ß*™\ë\ë3]º°g•´¸ÿõ!}uö}>3\İ\â3;X?\á„\Ò1FvY²³’¶\Ó\Õ;¨ûŸ½Ş“ù?¼FOş\Ã?ü\Ã\×zoŞ•ù\çn‹I\î\È\çúv\ÜùŒš7Kiã¼jŠÿÍŒƒ\ã¸[LE‘g\íÚµé¼¹‚v1\îÕ ûo\ç‹Cı\ëVP\Zµ\îaWÁ\î_fXk\Ô\ß3Nf±\r\Í\í|Ÿó‰y£Š}\Ã>\ëş\ÛE÷‡M\Ïô\ßù\Îwü\\Ë´—QdgdŒ6=¾è¬‚Å¤mhK\ævøõ\Ë,3\Ã—_ÿL©\Ú«d®¯\Ït\éÂU\Òòş›\ïK\Ãú\ÜB†=.¿~š)ÿ9\rû<2\ìqùõ7^kf\ì\Ù8¦±3\Î8ã‰¾³Z{L;Ô²e\Ë^\Ú¸?ÿ›²\'ü\èG?º¨÷\ÆmŒ\ç\É?w[LrG>×·£\ÍgÔ¼YJw\ä“lC²p´!©š6¶¡òÀ\Æÿ•XfòË¯w\æL³ÿ\Îõºta\Ï*\é@ÿ\Í÷©|Ÿ++ÿ¸üzi¶ü\ç•ÿ<\Ë\Ê?.¿\ŞVˆc\Í\Ş1\ç–\ìÀı£ıh\å¢@<şœs\Î\Ùuf@¬¿\ÍÇ´#½û\İ\ï>¢·Q,şG¦N6lø\×\Şwÿ±\Çû–üs¶\É4w\ä2˜6\îÈµ¡fE’ªic*©\î`\İ\ëk¥iöß¹ğYºra\Ï*\éHÿ]2Woßª{}LFİŸ[\İë›¨8\æ\ì{ş¾ÿLq¿>Ëğû¶\Ó.\èø\ã?õ\ä“O~¨®3vp_/§äŸ«m¦¹#/\Ê\\\ß\ÎxT\âu—ùuÿúÊ®{šiã¼imhÖ£\rIÕ´±\r-B]Âº\Ö\Óz\Ó\ì¿s;÷\ë]»°g•t¨ÿ\Ö\Õ\Ç\êZ\ÓQ\×\çW\×z¦*=û‹qM¸ `\Ù_ˆ\åbùşk\ì\\_\ëiK‰ªÇ‰\'¸õû\ßÿş\Öq/4\ÜyÍ€_w¥Š2\ÍyQ\æJ´—]®\êc&6\îÈ›Ö†f=ÚTM\Û\Ğ\"UV}|§L³ÿ\Îõ\í×»ta\Ï*\éXÿ]2W­¯U}<\ÍPõs¬úøF\Ùy¦Àƒ}ô\é5Q>ı\éO§_qú\å/™şªRˆ\ã~Lù}?-˜\åÁ®Ó–¶|ùò—ô6ğW¯X±\âÿøÇ¿}\â‰\'r‡ü\Åz\Ëmúö·¿}I\ïM[\×\Ëc=ùu·\Õ4w\ä‘;\î¸#y\ãß˜^\Ø+«\ØGbŞ°úd\Ëô/§Æ…\Úö\Úk¯ä ƒJ«÷1½™ş\ÛqUñøÉ±¸XW<÷‘G™\Üy\ç¯o\Òi\ã|\ÚmHv6$U\Ó\Æ64†qˆ\ã>®³¦\Ù\çúöë‘®\\Ø³J:\Ø\Ç\ís\ã>f\Z÷ó÷qÇ¢qLš;¸_l:uL»h;¾a\Í	\'œ°\í\ãÿø-+W®¼µw`ú«\Ş\Æÿ‘\ŞñÿÃ¿ù\Ío\Ö\ßv\Ûm?ı\Ş÷¾÷ı~ğƒñfo\å;÷3s\Óİ‘G\Şö¶·¥;Ï‹/¾x\×O\ĞEbŞ¨úô/‰bÀUW]•\Ü~û\í\éô\ì\n¿ı\Ëõ\ßÎ¾x\ã7&ÿöoÿ–Ş\å_ß¤\Ó\Æù´Û\ìmHª¦mhLK\æ7P\\\ìò3AÿmV:\Ú\Û÷»<\í°\Ø\Ïu±Ë·NvL[p°?*<¦Û²e\Ë\ê½)§/_¾ü½\×ör\Ï\Î7*ş]»sú\é±\\ş±]1\íyö;\àqª_|¯%nGbŞ¨úô/‰«Ÿ}ö\Ù\é©{ıó†\İ~\Ë[Ş’Şq\Ä\ÉùçŸŸlÜ¸q\àõM:mÜ‘O»\r\É\îÑ†¤j\ÚØ†*X2WnÀXv¹™£ÿ6+\î¿eû`\Ù\åh§²Ÿo\Ù\å:Á1-•L{GrÅ€|A`\Ô}ú—‹\Ä\éÿqÿ\ë_ÿúnó†İ]}õ\Õ\É>ğôtÀ˜ş§ú§\Ï3\é´qG>\í6$»G’ªicªh\É\Ü\è\ãBógšşÛ¬t¼ÿ.\ÔšO7,ô9/4\è7\íù\ÑG;®ô§{²Ÿ\ï‰Ä¼Qô\ÙgŸ}\Òûñ½¿($dg\ZÄµú\×1\ìv\\· n\ï{\ßKn¾ù\æôvö›\Ä\ÓLw\ä\ÓnC²{´!©š6¶¡\Z,™+@›\ÎNúo³2ıwXŸ6n\Zöy›3\íùºu\ë’C9$ı© “O>9vbibŞ¨ú\Ä\Å{ö\ßÿô”ÿø\İ\ßøÉŸ(\n\Ä\é1ı\ëv;¾bÅˆ8!ŠQ ¸şú\ë^ß¤\Ó\Æù´Û\ìmHª¦m¨&ùdş>ô\ßfeFúo¾o\æ\ï3òŸ{ş>P†y³\Ò\Æ¹6Ô¬hCR5mlC5\Ê”g\ïü\×Àrúo³2CıW_%hP•y³\Ò\Æ¹6Ô¬hCR5mlC5[²ól3\Ëô\ßfe\Æú¯¾\Ê\ÜÁüÿ\í½÷\Ş\ÚŒË¼Yi\ã\\jV´!©š6¶¡º\í<È ı·Y™µş«¯\Òk\×-[¶L;€qÙ‘7+mÜ‘kCÍŠ6$U\Ó\Æ6T7\å\é¿\ÍÊ¬õ_}u¶õ>ÿ¥;^/²4?(Á¼Yi\ã\\jV´!©š6¶¡º9\È(OÿmVf­ÿê«³-\Î\è+\\—Ÿ”`GŞ¬´qG®\r5+ÚTM\ÛP\İd”§ÿ6+³\Öõ\ÕÙ•;;ÀY0.;òf¥;rm¨YÑ†¤j\ÚØ†\ê\æ £<ı·Y™µş«¯Î®\Ü\Ù\Î€qÙ‘7+mÜ‘kCÍŠ6$U\Ó\Æ6T7\å\é¿\ÍÊ¬õ_}u6\r9;ÀY0;òf¥;rm¨YÑ†¤j\ÚØ†\ê\æ £<ı·Y™µş«¯Î¦8  \à,‡y³\Ò\Æ¹6Ô¬hCR5mlCusQşÛ¬\ÌZÿ\ÕWgOœPP\ÈgişqÀv\ä\ÍJw\ä\ÚP³¢\rIÕ´±\r\Õ\ÍAFyúo³2kıW_=q@A g	@Yv\ä\ÍJw\ä\ÚP³¢\rIÕ´±\r\Õ\ÍAFyúo³2kıW_%hPy³\Ò\Æ¹6Ô¬hCR5mlCu3¸,OÿmVf­ÿ\ê«\í\0*°#oVÚ¸#×†šmHª¦m¨n—\å\é¿\ÍÊ¬õ_}• @v\ä\ÍJw\ä\ÚP³¢\rIÕ´±\r\Õ\Í\à²<ı·Y™µş«¯´¨À¼Yi\ã\\jV´!©š6¶¡º\\–§ÿ6+³\ÖõU‚v\0Ø‘7+mÜ‘kCÍŠ6$U\Ó\Æ6T7ƒ\Ëòô\ßfe\Öú¯¾J\Ğ ;òf¥;rm¨YÑ†¤j\ÚØ†\êfpYşÛ¬\ÌZÿ\ÕW	\ÚT°r\å\Ê\'·o\ß>°C‘É§÷9\Ü\ßÛ‘\ï\ÈFM§\r5\'ÚTM[\ÛP\İ.\Ë\Ó›“Y\ì¿ú*A;€\nÖ¬Ysÿ¦M›v*2ù\Ü}÷\İ\ß\î\í\È\×\æ?£¦Ó†šmHª¦­m¨n—\å\é¿\Í\É,ö_}• @«V­:fõ\ê\Õ\Û6nÜ¸Y…:\é½\ï7l\Øğ\Í\ŞNüW½•ÿŒšNš~´!©š¶·¡º\\–§ÿN?³\ÜõU‚v\0\Å\Î#*Ê½<\ŞKúı3™h\â}÷¿µ;ñx\í;ÿmh:Ñ†¤jZß†\êdp¹8\Ñnv¶ıw:™\Ùş«¯´\0\0jcp	\í ¯´\0\0jcp	\í ¯´\0\0jcp	\í ¯´\0\0jcp	\í ¯´\0\0jcp	\í ¯´\0\0jcp	\í ¯´\0\0jcp	\Í\Ó\ë—\×E\ß\\ \×\åG÷\Ùf\0PƒKh^¿\\ZP\0\ÈgişqtŸm6\0\0µ1¸„fŠ3\0\nŠ\0\Î˜q¶\Ù\0\0\Ô\Æ\àš)\Î\0((8;`\Æ\Ùf\0PƒKh®8  \à\ì€f›\r\0@m.¡¹\âL€‚‚À\Òür\Ì\Ûl\0\0jcp	Í–;KÀ\Ù3\Î6\0€\Ú\\B³\å\ÎXšŸ\Ïl±\Í\0 6—\Ğ|\ÙYù\é\Ì\í\0\0€\Ú\\Bóeg	\ä§3{´\0\0jcpI\×%I²\×úõ\ë/½ñ\Æ·r\å\Êd~~¾•‰¾šŸÖ–ô\Ş÷\'×¬YsÿªU«\É>,m6\0\0µ1¸¤\ëÖ¯_ÿ\ŞÁh²iÓ¦dûö\í\É\ã?.N¼\ïñş¯^½z\ÛüüüQùÏˆòl³\0¨Á%]g\ÄÁhş U&Ÿ7nŸŸ_›ÿŒ(\Ï6\0€\Ú\\\Òuñ5g4#ñ9\Ì\Ï\Ï\ï\ÈF”g›\r\0@m.\éºø{şÀT¦—ø<òŸ\å\Ùf\0PƒKº®lA\à‘\ßnL\Ö\ßüµ\ä¶kÿ6MÜiù\å¤Zª±\Í\0 6—t]™‚À\Ã[\ïKn½úc\ÉÏ®ø\Ë\İ\Ób^~y?\n\Õ\Øf\0PƒKº®LA\à\Û~0P\Èr\ïmÿ:°¼Œjl³\0¨Á%]W¦ ğ\×ıı@! K\Ì\Ë//\ãGA \Z\Ûl\0\0jcpI×•)\Ü:ÿñB@–˜—_^Æ‚@5¶\Ù\0\0\Ô\Æ\à’®ShVª±\Í\0 6—t]™‚@üª@¾%\æå——ñ£ Pm6\0\0µ1¸¤\ë\Ê\Öı\äÜB@–˜—_^Æ‚@5¶\Ù\0\0\Ô\Æ\à’®+S\Ør\ßÏ“[¯ù›b@L‹yù\åeü(Tc›\r\0@m.\éº2\È]?½x  \Óò\ËIµ(Tc›\r\0@m.\éºR;’u7ü\Ó@A ¦Å¼\åe\ì(Tc›\r\0@m.éº…\no½/¹ó\'_(d‰y±Lşq2^ª±\Í\0 6—t\İĞ‚À\É\Æu«’[®:g O,\Ë:[ zª±\Í\0 6—t]QA`¡³†\Å\ÙÕ£ Pm6\0\0µ1¸¤\ëŠ\ne\Î\n–xl~}R>\n\Õ\Øf\0PƒKº®¨ ?\È_lò\ë“òQ¨\Æ6\0€\Ú\\\ÒuE™^ª±\Í\0 6—t‚@³¢ Pm6\0\0µ1¸¤\ëšjl³\0¨Á%]§ Ğ¬(Tc›\r\0@m.\é:fEA \Z\Ûl\0\0jcpI\×)4+\n\Õ\Øf\0PƒKºNA YQ¨\Æ6\0€\Ú\\\Òu\nÍŠ‚@5¶\Ù\0\0\Ô\Æ\à’®ShVª±\Í\0 6—t‚@³¢ Pm6\0\0µ1¸¤\ëšjl³\0¨Á%]§ Ğ¬(Tc›\r\0@m.\é:fEA \Z\Ûl\0\0jcpI\×)4+\n\Õ\Øf\0PƒKÚª\×v¯\ëei~z^\n½—‘&?=ŸK.¹$9è ƒ’g<\ã\É\ÑG=0¿Q¨\Æ6\0€\Ú\\\ÒV\Ñvwfda Mg>ó™\ér6lHzè¡ù]ˆ‚@5¶\Ù\0\0\Ô\Æ\à’¶\ê+Œ,4­ \İ>\çœs’8 9ğÀ“/¼p\×ôşe·lÙ’œ|ò\ÉÉ¾ûî›¼\à/HN?ıôd\ëÖ­»­\çğ\ÃO=ô\Ğİ¦r\È!\É^{í•®ûSŸúTúş\Ä:\âşE]4ğú&jl³\0¨Á%mUP(,4µ pşù\ç\'+W®Lo\ÇÁ~~¹H\âş\\|ù\Ë_NoGQ \Ù\Ë.»,¹\ç{v›Ë®]»v\×ıó\Î;/¹ù\æ›\Ó\Ûû\í·\ßÀ\ë›dª±\Í\0 6—´UA! Ÿ´0\ĞÔ‚@|%\à±\Ç+œ—=\î9\ÏyNzÿÁL·óÅƒ˜‡~8Ù±c\Çn\Ï\Õ?ÿú&jl³\0¨MÁA”H§\ÒÔ‚@™yqšÜƒşøú@Ü¯-[4m¡û\ÓHşó‘\Åg\0\0`–\å’úr\İq-ø\Ê@™y\'xbz?¾2ğ¥/})½}\ÖYg.[4m¡ûÓˆ3\0\0\0¨d¡B@¦\Íx 9é¤“v]Tğ\Ì3\ÏL¶m\ÛV¸lÑ´…\îO#\n\0\0\0T²P! Ó„‚€üW\0\0\0¨d¡B@FA YQ\0\0\0`\"š\0\0\0&bO>ø\à]\ßÇ¿ó\Î;\æ\ï\é\Ä\ßô¦7½i`z¢ \0\0\0ÀD\Ô]¸şú\ëw\"_ø\Â–\Ù\ÓÉ;?½\rQ\0\0\0`\"\ê.œv\Úi\éÁø»\Şõ®ôß£>z×¼\r6$Gydò\ìg?;yÕ«^•\Üt\ÓM#§oŞ¼99õ\ÔS“ıö\Û/\Íò\åË“{\ï½7ëœ~ú\é\ÉsŸû\Ü\äCI\ÏFÈ¦g‰eo¸\á†\äÕ¯~u²\×^{%tPò­o}k·uœs\Î9\Éx\àÉ…^8ökª#\n\0\0\0LD‡z(yşóŸŸş\àºu\ëÒƒ\í}ö\Ù\'y\ä‘G\ÒùY‘\à»\ßınú\ïk^óš‘\ÓO9\å”ôşÊ•+“5kÖ¤·cÙ˜·#q\0\ÑE¥·:\ê¨\İ\æe¯+ŠW]uUrû\í·§\Ó\ãõõ/wşù\ç§\Ï\Ñ?oœ\×TG\0\0\0˜ˆ:ñ?\ï½U&úĞ‡\Òû/ù\Ë\Óû\×\\sMzÿy\Ï{^zÿ\ÑG\İ\íqÃ¦\ÇÁyL\ïO,ó²ûÛ¶mK¶nİš\Ş\Şw\ß}w›—­gıúõ\É\ÙgŸ¼ò•¯\Üm^v;\n=ö\Ønó\ÆyMuDA\0\0\0€‰¨³ ğw¼c\à`9ò\á8Ÿdggd6=ğcú<0ğ\\Ùº\ãş¬ g\'ô\ÏË–}\İ\ë^—\Şÿú×¿¾Û¼ürı÷\ÇyMuDA\0\0\0€‰¨« ß£\ÚÓ–q\Ä»¦}ñ‹_L\ã\æ\ãş1\Ç“Ş¿üò\Ë\Ó³\Óğ‡M?şø\ã\ÓûŸû\Ü\ç’k¯½6½ız@Ü\Ä\éşÙ~v\ê~|M!\î\ÇkŠbA\\c \î_yå•»×¿\ìõö\ß\ç5\Õ\0\0\0&¢®‚Àg?û\Ùô\à8.Ğ—M»\å–[vd\Çiû‘\Ã;,yÖ³•~¯?»Pß°\éñ¿ÿ+V¬H^ô¢¥÷{û\Ûß\Ü}÷\İ\é¼l½\ÙE=ô\Ğt=1\ï\Üs\ÏMö\ßÿ\ä\éOzrÁ$Ÿÿü\ç\Óe;\î¸\Òq^SQ\0\0\0`\"\ê*L:s¹ƒù®DA\0\0\0€‰PhV\0\0\0˜ˆ¶º\Z\0\0\0&BA YQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0&BA YQ\0\0\0`\"š\0\0\0&b\åÊ•Onß¾}\àÀT&Ÿ\Ş\çpÿüüüüg\0\0\0µ[³f\Íı›6m\Z88•\É\ç\î»\ïşöüüü\Úüg\0\0\0µ[µj\Õ1«W¯Ş¶q\ã\Æ\Í\Î˜Nz\ïû\Æ\r6|s~~şW½•ÿŒ\0\0\0`ˆƒ\ĞøŸ\é^\ï°\Ë\Ä\ï{¼ÿŠ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0”÷$†”“˜Ï„-\0\0\0\0IEND®B`‚',1);
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
