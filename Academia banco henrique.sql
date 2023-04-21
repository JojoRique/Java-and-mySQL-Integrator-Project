-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: academia
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agenda` (
  `dataInicio` date NOT NULL,
  `hrInicial` varchar(5) NOT NULL,
  `idAtividades` int NOT NULL,
  `idUsuario` int NOT NULL,
  `hrFinal` varchar(5) NOT NULL,
  PRIMARY KEY (`dataInicio`,`hrInicial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` VALUES ('2022-05-05','10:00',3,3,'12:00');
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacaofisica`
--

DROP TABLE IF EXISTS `avaliacaofisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacaofisica` (
  `idUsuario` int NOT NULL,
  `dataAvaliacao` date NOT NULL,
  `altura` decimal(3,2) NOT NULL,
  `peso` decimal(5,2) NOT NULL,
  `imc` decimal(6,3) NOT NULL,
  `percBracoDir` decimal(4,2) NOT NULL,
  `percBracoEsq` decimal(4,2) NOT NULL,
  `percCoxaDir` decimal(4,2) NOT NULL,
  `percCoxaEsq` decimal(4,2) NOT NULL,
  `panturrilhaDir` decimal(4,2) NOT NULL,
  `panturrilhaEsq` decimal(4,2) NOT NULL,
  `percCostas` decimal(4,2) NOT NULL,
  `percAbdomen` decimal(4,2) NOT NULL,
  `percPeitoral` decimal(4,2) NOT NULL,
  `circufAbdominal` decimal(4,2) NOT NULL,
  `circufCoxaEsq` decimal(4,2) NOT NULL,
  `circuCoxaDir` decimal(4,2) NOT NULL,
  PRIMARY KEY (`idUsuario`,`dataAvaliacao`),
  CONSTRAINT `fk_avaUsu` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacaofisica`
--

LOCK TABLES `avaliacaofisica` WRITE;
/*!40000 ALTER TABLE `avaliacaofisica` DISABLE KEYS */;
INSERT INTO `avaliacaofisica` VALUES (1,'2022-05-05',1.80,90.00,27.778,20.00,20.00,20.00,20.00,20.00,20.00,20.00,20.00,20.00,20.00,20.00,2.00);
/*!40000 ALTER TABLE `avaliacaofisica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combos`
--

DROP TABLE IF EXISTS `combos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combos` (
  `idCombo` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `valor` decimal(5,2) NOT NULL,
  PRIMARY KEY (`idCombo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combos`
--

LOCK TABLES `combos` WRITE;
/*!40000 ALTER TABLE `combos` DISABLE KEYS */;
INSERT INTO `combos` VALUES (1,'Crossfit + Musculação',100.00),(2,'Muai thay + Musculação',120.00),(3,'Muai thay + Crossfit',140.00),(4,'GAP + Ritmos',100.00),(5,'GAP + Musculação + Crossfit',150.00),(6,'Muai tai + box',100.00);
/*!40000 ALTER TABLE `combos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formapagamento`
--

DROP TABLE IF EXISTS `formapagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formapagamento` (
  `idFormaPgto` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`idFormaPgto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formapagamento`
--

LOCK TABLES `formapagamento` WRITE;
/*!40000 ALTER TABLE `formapagamento` DISABLE KEYS */;
INSERT INTO `formapagamento` VALUES (1,'Dinheiro'),(2,'Boleto'),(3,'pix'),(4,'Gift card'),(5,'Cartão crédito'),(6,'Cartão débito'),(7,'Débito automatico'),(8,'Pay pal'),(9,'Pay pal');
/*!40000 ALTER TABLE `formapagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `idMatricula` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `dataRenovacao` date NOT NULL,
  `idAtividades` int NOT NULL,
  `idFormPgto` int NOT NULL,
  PRIMARY KEY (`idMatricula`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (1,6,'2023-06-05',1,1),(2,7,'2022-05-07',2,3),(3,8,'2023-12-26',3,1),(4,9,'2023-11-03',4,5),(5,10,'2022-12-12',5,6),(7,5,'2022-06-06',3,2);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoatividades`
--

DROP TABLE IF EXISTS `tipoatividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoatividades` (
  `idAtividades` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`idAtividades`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoatividades`
--

LOCK TABLES `tipoatividades` WRITE;
/*!40000 ALTER TABLE `tipoatividades` DISABLE KEYS */;
INSERT INTO `tipoatividades` VALUES (1,'crossfit'),(2,'musculação'),(3,'GAP'),(4,'ritmos'),(5,'muai thay'),(7,'Pilates'),(8,'Pilates');
/*!40000 ALTER TABLE `tipoatividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipousuario` (
  `idTipoUsu` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `idFormaPgto` int NOT NULL,
  PRIMARY KEY (`idTipoUsu`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` VALUES (1,'Treinador',0),(2,'Aluno',0),(3,'Henrique',0);
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `cpf` mediumtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `idTipoUsu` int NOT NULL,
  `idMatricula` int NOT NULL,
  `dataRenovacao` date DEFAULT NULL,
  `idAtividades` int NOT NULL,
  `idFormPgto` int NOT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `fk_tipoUsu_idx` (`idTipoUsu`),
  CONSTRAINT `fk_tipoUsu` FOREIGN KEY (`idTipoUsu`) REFERENCES `tipousuario` (`idTipoUsu`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Henrique','M','00028922','henrique@gmail.com','Rua dos alados',1,0,NULL,0,0),(2,'Roberson','M','22982000','Roberso@gmail.comn','Rua dos Robserson',1,0,NULL,0,0),(3,'Zuzan','F','34567444','Zuzan@gmail.com','Rua das Zuzan',1,0,NULL,0,0),(4,'Alisse','F','658453222','Alisse@gmail.com','Rua dos santos',1,0,NULL,0,0),(5,'Anne','F','3452457777','Anne@gmail.com','Rua dos titãs',1,0,NULL,0,0),(6,'Alisson','M','45435665','Alisson@gmail.com','Rua Alisson',2,0,NULL,0,0),(7,'Silvana','F','53534656','Silvana@gmail.com','Rua silvana ',2,0,NULL,0,0),(8,'Roberto','M','445366467','Roberto@gmail.com','Rua Roberto',2,0,NULL,0,0),(9,'Loraz','M','544356473','Loraz@gmail.com','Rua Loraz ',2,0,NULL,0,0),(10,'Abigail','F','44435633','Abigail@gmail.com','Rua Abigail',2,0,NULL,0,0),(11,'Marcos','M','34556632342','Marcos@gmail.com','Rua marcos silva',2,0,NULL,0,0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_agenda`
--

DROP TABLE IF EXISTS `v_agenda`;
/*!50001 DROP VIEW IF EXISTS `v_agenda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_agenda` AS SELECT 
 1 AS `dataInicio`,
 1 AS `hrInicial`,
 1 AS `hrFinal`,
 1 AS `idAtividades`,
 1 AS `idUsuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_atividades`
--

DROP TABLE IF EXISTS `v_atividades`;
/*!50001 DROP VIEW IF EXISTS `v_atividades`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_atividades` AS SELECT 
 1 AS `idAtividades`,
 1 AS `descricao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_combos`
--

DROP TABLE IF EXISTS `v_combos`;
/*!50001 DROP VIEW IF EXISTS `v_combos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_combos` AS SELECT 
 1 AS `idCombo`,
 1 AS `descricao`,
 1 AS `valor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_formapagamento`
--

DROP TABLE IF EXISTS `v_formapagamento`;
/*!50001 DROP VIEW IF EXISTS `v_formapagamento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_formapagamento` AS SELECT 
 1 AS `idUsuario`,
 1 AS `nome`,
 1 AS `cpf`,
 1 AS `email`,
 1 AS `idFormaPgto`,
 1 AS `descricao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_formaspagamento`
--

DROP TABLE IF EXISTS `v_formaspagamento`;
/*!50001 DROP VIEW IF EXISTS `v_formaspagamento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_formaspagamento` AS SELECT 
 1 AS `idFormaPgto`,
 1 AS `descricao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_matricula`
--

DROP TABLE IF EXISTS `v_matricula`;
/*!50001 DROP VIEW IF EXISTS `v_matricula`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_matricula` AS SELECT 
 1 AS `idMatricula`,
 1 AS `idUsuario`,
 1 AS `dataRenovacao`,
 1 AS `idAtividades`,
 1 AS `idFormPgto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_professores_agenda`
--

DROP TABLE IF EXISTS `v_professores_agenda`;
/*!50001 DROP VIEW IF EXISTS `v_professores_agenda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_professores_agenda` AS SELECT 
 1 AS `dataInicio`,
 1 AS `hrInicial`,
 1 AS `hrFinal`,
 1 AS `nome`,
 1 AS `idTipoUsu`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_tipousu`
--

DROP TABLE IF EXISTS `v_tipousu`;
/*!50001 DROP VIEW IF EXISTS `v_tipousu`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_tipousu` AS SELECT 
 1 AS `idTipoUsu`,
 1 AS `descricao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_usuario_tipousu`
--

DROP TABLE IF EXISTS `v_usuario_tipousu`;
/*!50001 DROP VIEW IF EXISTS `v_usuario_tipousu`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_usuario_tipousu` AS SELECT 
 1 AS `nome`,
 1 AS `cpf`,
 1 AS `email`,
 1 AS `descricao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_usuarios`
--

DROP TABLE IF EXISTS `v_usuarios`;
/*!50001 DROP VIEW IF EXISTS `v_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_usuarios` AS SELECT 
 1 AS `idUsuario`,
 1 AS `nome`,
 1 AS `sexo`,
 1 AS `cpf`,
 1 AS `email`,
 1 AS `endereco`,
 1 AS `idTipoUsu`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_agenda`
--

/*!50001 DROP VIEW IF EXISTS `v_agenda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_agenda` AS select `agenda`.`dataInicio` AS `dataInicio`,`agenda`.`hrInicial` AS `hrInicial`,`agenda`.`hrFinal` AS `hrFinal`,`agenda`.`idAtividades` AS `idAtividades`,`agenda`.`idUsuario` AS `idUsuario` from `agenda` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_atividades`
--

/*!50001 DROP VIEW IF EXISTS `v_atividades`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_atividades` AS select `tipoatividades`.`idAtividades` AS `idAtividades`,`tipoatividades`.`descricao` AS `descricao` from `tipoatividades` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_combos`
--

/*!50001 DROP VIEW IF EXISTS `v_combos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_combos` AS select `combos`.`idCombo` AS `idCombo`,`combos`.`descricao` AS `descricao`,`combos`.`valor` AS `valor` from `combos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_formapagamento`
--

/*!50001 DROP VIEW IF EXISTS `v_formapagamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_formapagamento` AS select `matricula`.`idUsuario` AS `idUsuario`,`usuario`.`nome` AS `nome`,`usuario`.`cpf` AS `cpf`,`usuario`.`email` AS `email`,`formapagamento`.`idFormaPgto` AS `idFormaPgto`,`formapagamento`.`descricao` AS `descricao` from ((`matricula` join `usuario` on((`matricula`.`idUsuario` = `usuario`.`idUsuario`))) join `formapagamento` on((`matricula`.`idFormPgto` = `formapagamento`.`idFormaPgto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_formaspagamento`
--

/*!50001 DROP VIEW IF EXISTS `v_formaspagamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_formaspagamento` AS select `formapagamento`.`idFormaPgto` AS `idFormaPgto`,`formapagamento`.`descricao` AS `descricao` from `formapagamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_matricula`
--

/*!50001 DROP VIEW IF EXISTS `v_matricula`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_matricula` AS select `matricula`.`idMatricula` AS `idMatricula`,`matricula`.`idUsuario` AS `idUsuario`,`matricula`.`dataRenovacao` AS `dataRenovacao`,`matricula`.`idAtividades` AS `idAtividades`,`matricula`.`idFormPgto` AS `idFormPgto` from `matricula` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_professores_agenda`
--

/*!50001 DROP VIEW IF EXISTS `v_professores_agenda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_professores_agenda` AS select `agenda`.`dataInicio` AS `dataInicio`,`agenda`.`hrInicial` AS `hrInicial`,`agenda`.`hrFinal` AS `hrFinal`,`usuario`.`nome` AS `nome`,`usuario`.`idTipoUsu` AS `idTipoUsu` from (`agenda` join `usuario` on((`agenda`.`idUsuario` = `usuario`.`idUsuario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_tipousu`
--

/*!50001 DROP VIEW IF EXISTS `v_tipousu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_tipousu` AS select `tipousuario`.`idTipoUsu` AS `idTipoUsu`,`tipousuario`.`descricao` AS `descricao` from `tipousuario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_usuario_tipousu`
--

/*!50001 DROP VIEW IF EXISTS `v_usuario_tipousu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_usuario_tipousu` AS select `usuario`.`nome` AS `nome`,`usuario`.`cpf` AS `cpf`,`usuario`.`email` AS `email`,`tipousuario`.`descricao` AS `descricao` from (`usuario` join `tipousuario` on((`usuario`.`idTipoUsu` = `tipousuario`.`idTipoUsu`))) order by `usuario`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `v_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_usuarios` AS select `usuario`.`idUsuario` AS `idUsuario`,`usuario`.`nome` AS `nome`,`usuario`.`sexo` AS `sexo`,`usuario`.`cpf` AS `cpf`,`usuario`.`email` AS `email`,`usuario`.`endereco` AS `endereco`,`usuario`.`idTipoUsu` AS `idTipoUsu` from `usuario` */;
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

-- Dump completed on 2022-07-29 10:12:38
