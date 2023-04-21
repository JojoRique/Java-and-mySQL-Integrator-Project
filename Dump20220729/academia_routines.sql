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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-29 10:01:28
