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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-21  0:09:52
