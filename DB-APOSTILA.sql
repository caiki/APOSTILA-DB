-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: MBD-USP
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.10.1

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
-- Table structure for table `DEPARTAMENTO`
--

DROP TABLE IF EXISTS `DEPARTAMENTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEPARTAMENTO` (
  `DNOME` varchar(45) NOT NULL,
  `DNUMERO` int(11) NOT NULL,
  `NSSGER` varchar(45) NOT NULL,
  `DATAINICGER` date NOT NULL,
  PRIMARY KEY (`DNUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTAMENTO`
--

LOCK TABLES `DEPARTAMENTO` WRITE;
/*!40000 ALTER TABLE `DEPARTAMENTO` DISABLE KEYS */;
INSERT INTO `DEPARTAMENTO` VALUES ('Gerencial',1,'888665555','1971-06-19'),('Administrativo',4,'987654321','1985-01-01'),('Pesquisa',5,'333445555','1978-05-22');
/*!40000 ALTER TABLE `DEPARTAMENTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEPENDENTE`
--

DROP TABLE IF EXISTS `DEPENDENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEPENDENTE` (
  `NSSEMP` varchar(45) NOT NULL,
  `NOMEDEPENDENTE` varchar(45) NOT NULL,
  `SEXO` varchar(1) NOT NULL,
  `DATANIV` date NOT NULL,
  `RELAÇÃO` varchar(45) NOT NULL,
  PRIMARY KEY (`NSSEMP`,`NOMEDEPENDENTE`),
  CONSTRAINT `fk_DEPENDENTE_1` FOREIGN KEY (`NSSEMP`) REFERENCES `EMPREGADO` (`NSS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPENDENTE`
--

LOCK TABLES `DEPENDENTE` WRITE;
/*!40000 ALTER TABLE `DEPENDENTE` DISABLE KEYS */;
INSERT INTO `DEPENDENTE` VALUES ('123456789','Alice','F','1978-12-31','FILHA'),('123456789','Elizabeth','F','1957-05-05','ESPOSA '),('123456789','Michael','M','1978-01-01','FILHO'),('333445555','Alice','F','1976-04-05','FILHA'),('333445555','Joy','F','1948-05-03','ESPOSA'),('333445555','Theodore','M','1973-10-25','FILHO'),('987654321','Abner','M','0000-00-00','MARIDO');
/*!40000 ALTER TABLE `DEPENDENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `DEPENDENTE_IGUAL`
--

DROP TABLE IF EXISTS `DEPENDENTE_IGUAL`;
/*!50001 DROP VIEW IF EXISTS `DEPENDENTE_IGUAL`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `DEPENDENTE_IGUAL` AS SELECT 
 1 AS `NSSEMP`,
 1 AS `NOMEDEPENDENTE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `DEPTOPROJX`
--

DROP TABLE IF EXISTS `DEPTOPROJX`;
/*!50001 DROP VIEW IF EXISTS `DEPTOPROJX`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `DEPTOPROJX` AS SELECT 
 1 AS `PNUMERO`,
 1 AS `DNUM`,
 1 AS `NDEP`,
 1 AS `NSS`,
 1 AS `PNOME`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `DEPTO_EMP_5`
--

DROP TABLE IF EXISTS `DEPTO_EMP_5`;
/*!50001 DROP VIEW IF EXISTS `DEPTO_EMP_5`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `DEPTO_EMP_5` AS SELECT 
 1 AS `NDEP`,
 1 AS `NSS`,
 1 AS `PNOME`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `EMPREGADO`
--

DROP TABLE IF EXISTS `EMPREGADO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPREGADO` (
  `PNOME` varchar(25) NOT NULL,
  `MNOME` varchar(1) NOT NULL,
  `SNOME` varchar(45) NOT NULL,
  `NSS` varchar(45) NOT NULL,
  `DATANASC` date NOT NULL,
  `ENDEREÇO` varchar(25) NOT NULL,
  `SEXO` varchar(1) NOT NULL,
  `SALARIO` double NOT NULL,
  `NSSSUPER` varchar(45) DEFAULT NULL,
  `NDEP` varchar(1) NOT NULL,
  PRIMARY KEY (`NSS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPREGADO`
--

LOCK TABLES `EMPREGADO` WRITE;
/*!40000 ALTER TABLE `EMPREGADO` DISABLE KEYS */;
INSERT INTO `EMPREGADO` VALUES ('John','B','Smith','123456789','1955-01-09','R. A, 1','M',3000,'333445555','5'),('Franklin','T','Wong','333445555','1945-12-08','R. B, 2','M',4000,'888665555','5'),('Joyce','A','English','453453453','1958-07-19','R. F, 6','F',2500,'333445555','5'),('Ramesh','K','Narayan','666884444','1931-06-20','R. E, 5','M',3800,'333445555','5'),('James','E','Borg','888665555','1952-09-15','Av H, 8','M',5500,'','1'),('Jennifer','S','Wallace','987654321','1962-07-31','Trav. D, 4','F',4300,'888665555','4'),('Ahmad','V','Jabbar','987987987','1959-03-29','Av G, 7','M',2500,'987654321','4'),('Alicia','J','Zelaya','999887777','1927-11-10','Av. C, 3','F',2500,'987654321','4');
/*!40000 ALTER TABLE `EMPREGADO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `EMPREGADO_DEPENDENTE`
--

DROP TABLE IF EXISTS `EMPREGADO_DEPENDENTE`;
/*!50001 DROP VIEW IF EXISTS `EMPREGADO_DEPENDENTE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `EMPREGADO_DEPENDENTE` AS SELECT 
 1 AS `NSSEMP`,
 1 AS `NOMEDEPENDENTE`,
 1 AS `PNOME`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `HORAS_TRAB`
--

DROP TABLE IF EXISTS `HORAS_TRAB`;
/*!50001 DROP VIEW IF EXISTS `HORAS_TRAB`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `HORAS_TRAB` AS SELECT 
 1 AS `NSSEMP`,
 1 AS `PNRO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `HORAS_TRAB_10`
--

DROP TABLE IF EXISTS `HORAS_TRAB_10`;
/*!50001 DROP VIEW IF EXISTS `HORAS_TRAB_10`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `HORAS_TRAB_10` AS SELECT 
 1 AS `PNOME`,
 1 AS `PNRO`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `LOCAIS_DEPTO`
--

DROP TABLE IF EXISTS `LOCAIS_DEPTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOCAIS_DEPTO` (
  `DNUMERO` int(11) NOT NULL,
  `DLOCALIZACAO` varchar(45) NOT NULL,
  PRIMARY KEY (`DNUMERO`),
  CONSTRAINT `fk_LOCAIS_DEPTO_1` FOREIGN KEY (`DNUMERO`) REFERENCES `DEPARTAMENTO` (`DNUMERO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOCAIS_DEPTO`
--

LOCK TABLES `LOCAIS_DEPTO` WRITE;
/*!40000 ALTER TABLE `LOCAIS_DEPTO` DISABLE KEYS */;
INSERT INTO `LOCAIS_DEPTO` VALUES (1,'Houston'),(4,'Stafford'),(5,'Bellaire');
/*!40000 ALTER TABLE `LOCAIS_DEPTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROJETO`
--

DROP TABLE IF EXISTS `PROJETO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROJETO` (
  `PNOME` varchar(15) NOT NULL,
  `PNUMERO` int(11) NOT NULL,
  `PLOCALIZAÇAO` varchar(45) NOT NULL,
  `DNUM` int(11) NOT NULL,
  PRIMARY KEY (`PNUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROJETO`
--

LOCK TABLES `PROJETO` WRITE;
/*!40000 ALTER TABLE `PROJETO` DISABLE KEYS */;
INSERT INTO `PROJETO` VALUES ('ProdutoX',1,'Bellaire',5),('ProdutoY',2,'Sugarland',5),('ProdutoZ',3,'Houston',5),('Automacao',10,'Stafford',4),('Reorganizacao',20,'Houston',1),('Beneficiamento',30,'Stafford',4);
/*!40000 ALTER TABLE `PROJETO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `PROJX`
--

DROP TABLE IF EXISTS `PROJX`;
/*!50001 DROP VIEW IF EXISTS `PROJX`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `PROJX` AS SELECT 
 1 AS `PNUMERO`,
 1 AS `DNUM`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `SUPFRANKLIN`
--

DROP TABLE IF EXISTS `SUPFRANKLIN`;
/*!50001 DROP VIEW IF EXISTS `SUPFRANKLIN`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `SUPFRANKLIN` AS SELECT 
 1 AS `PNOME`,
 1 AS `MNOME`,
 1 AS `SNOME`,
 1 AS `NSS`,
 1 AS `DATANASC`,
 1 AS `ENDEREÇO`,
 1 AS `SEXO`,
 1 AS `SALARIO`,
 1 AS `NSSSUPER`,
 1 AS `NDEP`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `TOTALHORASPRO`
--

DROP TABLE IF EXISTS `TOTALHORASPRO`;
/*!50001 DROP VIEW IF EXISTS `TOTALHORASPRO`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `TOTALHORASPRO` AS SELECT 
 1 AS `PNRO`,
 1 AS `H`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `TOTALHORASPROJ`
--

DROP TABLE IF EXISTS `TOTALHORASPROJ`;
/*!50001 DROP VIEW IF EXISTS `TOTALHORASPROJ`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `TOTALHORASPROJ` AS SELECT 
 1 AS `PNRO`,
 1 AS `sum(HORAS)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `TRABALHA_EM`
--

DROP TABLE IF EXISTS `TRABALHA_EM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRABALHA_EM` (
  `NSSEMP` varchar(45) NOT NULL,
  `PNRO` int(11) NOT NULL,
  `HORAS` double DEFAULT NULL,
  PRIMARY KEY (`NSSEMP`,`PNRO`),
  KEY `fk_TRABALHA_EM_2_idx` (`PNRO`),
  CONSTRAINT `fk_TRABALHA_EM_1` FOREIGN KEY (`NSSEMP`) REFERENCES `EMPREGADO` (`NSS`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TRABALHA_EM_2` FOREIGN KEY (`PNRO`) REFERENCES `PROJETO` (`PNUMERO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRABALHA_EM`
--

LOCK TABLES `TRABALHA_EM` WRITE;
/*!40000 ALTER TABLE `TRABALHA_EM` DISABLE KEYS */;
INSERT INTO `TRABALHA_EM` VALUES ('123456789',1,32),('123456789',2,7),('333445555',2,10),('333445555',3,10),('333445555',10,10),('333445555',20,10),('453453453',1,20),('453453453',2,20),('666884444',3,40),('987654321',20,0),('987654321',30,20),('987987987',10,35),('987987987',30,5),('999887777',10,10),('999887777',30,30);
/*!40000 ALTER TABLE `TRABALHA_EM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `DEPENDENTE_IGUAL`
--

/*!50001 DROP VIEW IF EXISTS `DEPENDENTE_IGUAL`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `DEPENDENTE_IGUAL` AS select `DEPENDENTE`.`NSSEMP` AS `NSSEMP`,`DEPENDENTE`.`NOMEDEPENDENTE` AS `NOMEDEPENDENTE` from `DEPENDENTE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DEPTOPROJX`
--

/*!50001 DROP VIEW IF EXISTS `DEPTOPROJX`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `DEPTOPROJX` AS select `PROJX`.`PNUMERO` AS `PNUMERO`,`PROJX`.`DNUM` AS `DNUM`,`DEPTO_EMP_5`.`NDEP` AS `NDEP`,`DEPTO_EMP_5`.`NSS` AS `NSS`,`DEPTO_EMP_5`.`PNOME` AS `PNOME` from (`PROJX` join `DEPTO_EMP_5` on((`PROJX`.`DNUM` = `DEPTO_EMP_5`.`NDEP`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DEPTO_EMP_5`
--

/*!50001 DROP VIEW IF EXISTS `DEPTO_EMP_5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `DEPTO_EMP_5` AS select `EMPREGADO`.`NDEP` AS `NDEP`,`EMPREGADO`.`NSS` AS `NSS`,`EMPREGADO`.`PNOME` AS `PNOME` from `EMPREGADO` where (`EMPREGADO`.`NDEP` = 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `EMPREGADO_DEPENDENTE`
--

/*!50001 DROP VIEW IF EXISTS `EMPREGADO_DEPENDENTE`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `EMPREGADO_DEPENDENTE` AS select `DEPENDENTE`.`NSSEMP` AS `NSSEMP`,`DEPENDENTE`.`NOMEDEPENDENTE` AS `NOMEDEPENDENTE`,`EMPREGADO`.`PNOME` AS `PNOME` from (`DEPENDENTE` join `EMPREGADO` on((`DEPENDENTE`.`NSSEMP` = `EMPREGADO`.`NSS`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HORAS_TRAB`
--

/*!50001 DROP VIEW IF EXISTS `HORAS_TRAB`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `HORAS_TRAB` AS select `TRABALHA_EM`.`NSSEMP` AS `NSSEMP`,`TRABALHA_EM`.`PNRO` AS `PNRO` from `TRABALHA_EM` where (`TRABALHA_EM`.`HORAS` > 10) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HORAS_TRAB_10`
--

/*!50001 DROP VIEW IF EXISTS `HORAS_TRAB_10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `HORAS_TRAB_10` AS select `DEPTO_EMP_5`.`PNOME` AS `PNOME`,`TRABALHA_EM`.`PNRO` AS `PNRO` from (`DEPTO_EMP_5` join `TRABALHA_EM` on((`DEPTO_EMP_5`.`NSS` = `TRABALHA_EM`.`NSSEMP`))) where (`TRABALHA_EM`.`HORAS` > 10) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PROJX`
--

/*!50001 DROP VIEW IF EXISTS `PROJX`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `PROJX` AS select `PROJETO`.`PNUMERO` AS `PNUMERO`,`PROJETO`.`DNUM` AS `DNUM` from `PROJETO` where (`PROJETO`.`PNOME` = 'ProdutoX') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `SUPFRANKLIN`
--

/*!50001 DROP VIEW IF EXISTS `SUPFRANKLIN`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `SUPFRANKLIN` AS select `EMPREGADO`.`PNOME` AS `PNOME`,`EMPREGADO`.`MNOME` AS `MNOME`,`EMPREGADO`.`SNOME` AS `SNOME`,`EMPREGADO`.`NSS` AS `NSS`,`EMPREGADO`.`DATANASC` AS `DATANASC`,`EMPREGADO`.`ENDEREÇO` AS `ENDEREÇO`,`EMPREGADO`.`SEXO` AS `SEXO`,`EMPREGADO`.`SALARIO` AS `SALARIO`,`EMPREGADO`.`NSSSUPER` AS `NSSSUPER`,`EMPREGADO`.`NDEP` AS `NDEP` from `EMPREGADO` where ((`EMPREGADO`.`PNOME` = 'Franklin') and (`EMPREGADO`.`SNOME` = 'Wong')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `TOTALHORASPRO`
--

/*!50001 DROP VIEW IF EXISTS `TOTALHORASPRO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `TOTALHORASPRO` AS select `TRABALHA_EM`.`PNRO` AS `PNRO`,sum(`TRABALHA_EM`.`HORAS`) AS `H` from `TRABALHA_EM` group by `TRABALHA_EM`.`PNRO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `TOTALHORASPROJ`
--

/*!50001 DROP VIEW IF EXISTS `TOTALHORASPROJ`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `TOTALHORASPROJ` AS select `TRABALHA_EM`.`PNRO` AS `PNRO`,sum(`TRABALHA_EM`.`HORAS`) AS `sum(HORAS)` from `TRABALHA_EM` group by `TRABALHA_EM`.`PNRO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-22 21:54:48
