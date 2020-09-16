-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: matricula_victorsaad
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ALUNO`
--

DROP TABLE IF EXISTS `ALUNO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALUNO` (
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `curso` varchar(20) NOT NULL,
  `datanasc` date NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALUNO`
--

LOCK TABLES `ALUNO` WRITE;
/*!40000 ALTER TABLE `ALUNO` DISABLE KEYS */;
INSERT INTO `ALUNO` VALUES ('11166794562','Yegor','Sist. da Info.','1995-09-12'),('11244238810','Victor Saad','Sist. da Info.','1996-06-30'),('12344218911','Jax Teller','Ciencias Contabeis','1990-06-20'),('19055339811','Clara Cavalcanti','Medicina','1997-08-23'),('26844231811','Sebastian Krueger','Sist. da Info.','1996-06-30');
/*!40000 ALTER TABLE `ALUNO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DISCIPLINA`
--

DROP TABLE IF EXISTS `DISCIPLINA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DISCIPLINA` (
  `Num_disciplina` int NOT NULL,
  `Dnome` varchar(15) NOT NULL,
  `Dept` varchar(15) NOT NULL,
  PRIMARY KEY (`Num_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DISCIPLINA`
--

LOCK TABLES `DISCIPLINA` WRITE;
/*!40000 ALTER TABLE `DISCIPLINA` DISABLE KEYS */;
INSERT INTO `DISCIPLINA` VALUES (1,'Banco de dados','Tec. da Info.'),(2,'LPOO','Tec. da Info');
/*!40000 ALTER TABLE `DISCIPLINA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INSCRICAO`
--

DROP TABLE IF EXISTS `INSCRICAO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INSCRICAO` (
  `cpf` varchar(11) NOT NULL,
  `Num_Disciplina` int NOT NULL,
  `Semestre` varchar(15) NOT NULL,
  `Nota` int DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INSCRICAO`
--

LOCK TABLES `INSCRICAO` WRITE;
/*!40000 ALTER TABLE `INSCRICAO` DISABLE KEYS */;
INSERT INTO `INSCRICAO` VALUES ('11166794562',1,'2020,1',8),('11244238810',1,'2020.1',10);
/*!40000 ALTER TABLE `INSCRICAO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LIVRO`
--

DROP TABLE IF EXISTS `LIVRO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LIVRO` (
  `ISBN_livro` int NOT NULL,
  `Titulo_livro` varchar(20) NOT NULL,
  `editora` varchar(15) NOT NULL,
  `autor` varchar(20) NOT NULL,
  PRIMARY KEY (`ISBN_livro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LIVRO`
--

LOCK TABLES `LIVRO` WRITE;
/*!40000 ALTER TABLE `LIVRO` DISABLE KEYS */;
INSERT INTO `LIVRO` VALUES (50,'Banco de dados','Abril','John');
/*!40000 ALTER TABLE `LIVRO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LIVRO_ADOTADO`
--

DROP TABLE IF EXISTS `LIVRO_ADOTADO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LIVRO_ADOTADO` (
  `Num_disciplina` int NOT NULL,
  `semestre` varchar(15) NOT NULL,
  `ISBN_livro` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LIVRO_ADOTADO`
--

LOCK TABLES `LIVRO_ADOTADO` WRITE;
/*!40000 ALTER TABLE `LIVRO_ADOTADO` DISABLE KEYS */;
INSERT INTO `LIVRO_ADOTADO` VALUES (1,'2020.1',50);
/*!40000 ALTER TABLE `LIVRO_ADOTADO` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-10 15:33:56
