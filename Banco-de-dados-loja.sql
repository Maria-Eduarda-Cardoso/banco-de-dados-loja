CREATE DATABASE  IF NOT EXISTS `loja` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `loja`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: loja
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_produto` int DEFAULT NULL,
  `data_compra` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pedido`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `pessoas` (`id`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,6,9,'2025-05-29 18:36:53'),(2,10,8,'2025-05-29 18:43:21'),(3,6,14,'2025-05-29 18:43:21'),(4,7,16,'2025-05-29 18:43:21'),(5,5,7,'2025-05-29 18:43:21'),(6,2,2,'2025-05-29 18:43:21'),(7,4,1,'2025-05-29 18:43:21'),(8,8,1,'2025-05-29 18:43:21'),(9,7,3,'2025-05-29 18:43:21'),(10,3,12,'2025-05-29 18:43:21'),(11,1,4,'2025-05-29 18:43:21'),(12,9,15,'2025-05-29 18:43:21'),(13,8,11,'2025-05-29 18:43:21'),(14,5,10,'2025-05-29 18:43:21'),(15,9,7,'2025-05-29 18:43:21'),(16,4,3,'2025-05-29 18:43:21'),(17,1,14,'2025-05-29 18:43:21'),(18,8,15,'2025-05-29 18:43:21'),(19,10,3,'2025-05-29 18:43:21'),(20,2,13,'2025-05-29 18:43:21'),(21,7,10,'2025-05-29 18:43:21');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cpf` char(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `data_nasc` date NOT NULL,
  `sexo` enum('Feminino','Masculino','Outro') NOT NULL,
  `uf` varchar(21) NOT NULL,
  `tel` char(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (1,'11111111111','Goldofredo da Silva Martins','1984-01-02','Masculino','Pernambuco','11111111111','Goldofredomartins@hotmail.com'),(2,'22222222222','Kelvin Alisson Souza Costa Cordeiro','2001-09-30','Masculino','Minas Gerais','22222222222','Kelvincordeiro@gmail.com'),(3,'33333333333','Marta Ferreira','1964-11-18','Feminino','Minas Gerais','33333333333','Martaferreira@yahoo.com'),(4,'44444444444','Márcio Felipe Oliveira','2008-08-10','Masculino','Rio de Janeiro','44444444444','Marciofelipe@gmail.com'),(5,'55555555555','Markus Henrique dos Santos','2010-02-28','Masculino','São Paulo','55555555555','Markushenrique@gmail.com'),(6,'66666666666','José Ricardo de Almeida','1973-07-30','Masculino','Maranhão','66666666666','Josericardo@yahoo.com'),(7,'77777777777','Marcelo da Silva Oliveira','1985-03-18','Masculino','Rio Grande do Sul','77777777777','Marcelosilva@outlook.com'),(8,'88888888888','Maria Alice de Siqueira','2005-07-04','Feminino','Distrito Federal','88888888888','Mariaalice@hotmail.com'),(9,'99999999999','Fernanda Monteiro Costa','1992-01-11','Feminino','Acre','99999999999','Fernandamonteiro@outlookmail.com'),(10,'00000000000','Isabelle Suzan Vieira','2004-10-27','Feminino','Piauí','00000000000','Isabellesuzan@gmail.com');
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(40) NOT NULL,
  `descricao` text,
  `valor` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Banco','Banco de madeira confortável para uma pessoa.',25.99),(2,'Sofá','Sofá branco de couro para três pessoas.',5224.99),(3,'Mesa de vidro','Mesa de vidro resistente. Aguenta até 100kg.',520.80),(4,'Fogão cinco bocas','Fogão cinco bocas, com forno espaçoso e tampa de vidro.',871.90),(5,'Geladeira','Geladeira 375l com refrigerador.',2789.59),(6,'Cama','Cama com colchão de molas ensacadas.',1150.70),(7,'Guarda-roupa','Guarda-roupa de casal com seis portas e seis gavetas.',2622.13),(8,'Penteadeira','Penteadeira com espelho, luzes de led e sete gavetas.',699.90),(9,'Televisão','SmartTV 40 polegadas com a tela sem bordas.',1359.63),(10,'Celular','Celualr com câmera traseira tripla, 128GB de memória e 4GB de RAM.',1698.95),(11,'Kit com quatro cadeiras','Quatro cadeiras resistentes com assento confortável.',389.46),(12,'Estante para escritório','Estante de madeira natural com cinco prateleiras.',163.67),(13,'Rack','Rack com painel e cinco prateleiras.',379.26),(14,'Armário de cozinha','Armário de cozinha com sete portas e duas gavetas',249.83),(15,'Mesa de cabeceira','Mesa de cabeceira com duas gavetas',166.59),(16,'Poltrona','Poltrona confortável para a sala',383.53);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-25 18:08:10
