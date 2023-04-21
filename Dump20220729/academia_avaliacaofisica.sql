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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-29 10:01:28
