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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-29 10:01:28
