-- MariaDB dump 10.19  Distrib 10.4.20-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sys_pa
-- ------------------------------------------------------
-- Server version	10.4.20-MariaDB

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
-- Table structure for table `tb_area`
--

DROP TABLE IF EXISTS `tb_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_area` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo` int(11) DEFAULT NULL,
  `area_nome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_area`),
  KEY `id_tipo` (`id_tipo`),
  CONSTRAINT `tb_area_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tb_tipousuario` (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_area`
--

LOCK TABLES `tb_area` WRITE;
/*!40000 ALTER TABLE `tb_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_elementuc`
--

DROP TABLE IF EXISTS `tb_elementuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_elementuc` (
  `id_elementuc` int(11) NOT NULL AUTO_INCREMENT,
  `nome_elementuc` varchar(120) DEFAULT NULL,
  `id_uc` int(11) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_elementuc`),
  KEY `id_tipo` (`id_tipo`),
  KEY `id_area` (`id_area`),
  KEY `id_uc` (`id_uc`),
  CONSTRAINT `tb_elementuc_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tb_tipousuario` (`id_tipo`),
  CONSTRAINT `tb_elementuc_ibfk_2` FOREIGN KEY (`id_area`) REFERENCES `tb_area` (`id_area`),
  CONSTRAINT `tb_elementuc_ibfk_3` FOREIGN KEY (`id_uc`) REFERENCES `tb_uc` (`id_uc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_elementuc`
--

LOCK TABLES `tb_elementuc` WRITE;
/*!40000 ALTER TABLE `tb_elementuc` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_elementuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_planoaula`
--

DROP TABLE IF EXISTS `tb_planoaula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_planoaula` (
  `id_pa` int(11) NOT NULL AUTO_INCREMENT,
  `id_colab` int(11) DEFAULT NULL,
  `usuario_nome` varchar(50) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `area_nome` varchar(50) DEFAULT NULL,
  `id_turma` int(11) DEFAULT NULL,
  `turma_nome` varchar(50) DEFAULT NULL,
  `dataest_pa` date DEFAULT NULL,
  `uc_pa` varchar(50) DEFAULT NULL,
  `temapi_pa` text DEFAULT NULL,
  `sitap_pa` text DEFAULT NULL,
  `duracao_pa` time DEFAULT NULL,
  `descativ_pa` text DEFAULT NULL,
  `descsitap_pa` text DEFAULT NULL,
  `descsitpi_pa` text DEFAULT NULL,
  `elemuc_pa` varchar(120) DEFAULT NULL,
  `critav_pa` text DEFAULT NULL,
  `id_rec` int(11) DEFAULT NULL,
  `rec_nome` varchar(50) DEFAULT NULL,
  `avaldoc_pa` text DEFAULT NULL,
  `obs_pa` text DEFAULT NULL,
  PRIMARY KEY (`id_pa`),
  KEY `id_colab` (`id_colab`),
  KEY `id_area` (`id_area`),
  KEY `id_turma` (`id_turma`),
  KEY `id_rec` (`id_rec`),
  CONSTRAINT `tb_planoaula_ibfk_1` FOREIGN KEY (`id_colab`) REFERENCES `tb_usuario` (`id_colab`),
  CONSTRAINT `tb_planoaula_ibfk_2` FOREIGN KEY (`id_area`) REFERENCES `tb_area` (`id_area`),
  CONSTRAINT `tb_planoaula_ibfk_3` FOREIGN KEY (`id_turma`) REFERENCES `tb_turma` (`id_turma`),
  CONSTRAINT `tb_planoaula_ibfk_4` FOREIGN KEY (`id_rec`) REFERENCES `tb_recurso` (`id_rec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_planoaula`
--

LOCK TABLES `tb_planoaula` WRITE;
/*!40000 ALTER TABLE `tb_planoaula` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_planoaula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_recurso`
--

DROP TABLE IF EXISTS `tb_recurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_recurso` (
  `id_rec` int(11) NOT NULL AUTO_INCREMENT,
  `rec_nome` varchar(50) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_rec`),
  KEY `id_tipo` (`id_tipo`),
  CONSTRAINT `tb_recurso_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tb_tipousuario` (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_recurso`
--

LOCK TABLES `tb_recurso` WRITE;
/*!40000 ALTER TABLE `tb_recurso` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_recurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipousuario`
--

DROP TABLE IF EXISTS `tb_tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tipousuario` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `desc_tipo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipousuario`
--

LOCK TABLES `tb_tipousuario` WRITE;
/*!40000 ALTER TABLE `tb_tipousuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_turma`
--

DROP TABLE IF EXISTS `tb_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_turma` (
  `id_turma` int(11) NOT NULL AUTO_INCREMENT,
  `turma_nome` varchar(50) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_turma`),
  KEY `id_tipo` (`id_tipo`),
  KEY `id_area` (`id_area`),
  CONSTRAINT `tb_turma_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tb_tipousuario` (`id_tipo`),
  CONSTRAINT `tb_turma_ibfk_2` FOREIGN KEY (`id_area`) REFERENCES `tb_area` (`id_area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_turma`
--

LOCK TABLES `tb_turma` WRITE;
/*!40000 ALTER TABLE `tb_turma` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_uc`
--

DROP TABLE IF EXISTS `tb_uc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc` (
  `id_uc` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `uc_nome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_uc`),
  KEY `id_tipo` (`id_tipo`),
  KEY `id_area` (`id_area`),
  CONSTRAINT `tb_uc_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tb_tipousuario` (`id_tipo`),
  CONSTRAINT `tb_uc_ibfk_2` FOREIGN KEY (`id_area`) REFERENCES `tb_area` (`id_area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_uc`
--

LOCK TABLES `tb_uc` WRITE;
/*!40000 ALTER TABLE `tb_uc` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_uc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_usuario` (
  `id_colab` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo` int(11) DEFAULT NULL,
  `usuario_nome` varchar(50) DEFAULT NULL,
  `usuario_email` varchar(30) DEFAULT NULL,
  `usuario_senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_colab`),
  KEY `id_tipo` (`id_tipo`),
  CONSTRAINT `tb_usuario_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tb_tipousuario` (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-06 22:15:34