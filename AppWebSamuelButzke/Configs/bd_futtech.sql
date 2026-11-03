CREATE DATABASE  IF NOT EXISTS `bd_hotel_5` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_hotel_5`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_hotel_5
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `caixa`
--

DROP TABLE IF EXISTS `caixa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caixa` (
  `id_cai` int NOT NULL AUTO_INCREMENT,
  `data_abertura_cai` date NOT NULL,
  `data_fechamento_cai` date DEFAULT NULL,
  `saldo_inicial_cai` double NOT NULL,
  `valor_creditos_cai` double DEFAULT NULL,
  `valor_debitos_cai` double DEFAULT NULL,
  `saldo_final_cai` double DEFAULT NULL,
  `status_cai` varchar(100) NOT NULL,
  `id_fun_fk` int NOT NULL,
  PRIMARY KEY (`id_cai`),
  KEY `id_fun_fk` (`id_fun_fk`),
  CONSTRAINT `caixa_ibfk_1` FOREIGN KEY (`id_fun_fk`) REFERENCES `funcionario` (`id_fun`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caixa`
--

LOCK TABLES `caixa` WRITE;
/*!40000 ALTER TABLE `caixa` DISABLE KEYS */;
INSERT INTO `caixa` VALUES (1,'2022-05-02','2022-05-02',400,0,100,300,'Fechado',2),(2,'2022-05-05','2022-05-05',500,0,200,300,'Fechado',3),(3,'2022-05-08','2022-05-08',600,0,300,300,'Fechado',2),(4,'2022-05-11','2022-05-11',700,0,400,300,'Fechado',2),(5,'2022-05-14','2022-05-14',800,0,500,300,'Fechado',3),(6,'2022-05-17','2022-05-17',900,0,600,300,'Fechado',2),(7,'2022-05-20','2022-05-20',1000,0,700,300,'Fechado',3),(8,'2022-05-23','2022-05-23',1100,0,800,300,'Fechado',2),(9,'2022-05-26','2022-05-26',1200,0,900,300,'Fechado',2),(10,'2022-05-29','2022-05-29',1300,0,1000,300,'Fechado',2),(11,'2022-05-30',NULL,300,0,200,100,'Aberto',3);
/*!40000 ALTER TABLE `caixa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `id_carg` int NOT NULL AUTO_INCREMENT,
  `nome_carg` varchar(300) DEFAULT NULL,
  `atribuicoes_carg` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_carg`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Gerente','gestao operacional da empresa.'),(2,'Atendente','realiza checkin e checkout de hospedagens.'),(3,'Auxiliar de limpeza','realiza a limpeza dos quartos.'),(4,'Auxiliar de cozinha','cozinha e mantem o cafe da manhã.'),(5,'Auxiliar de serviços gerais','promove a manutenção dos quartos e demais locais do hotel.');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `id_cid` int NOT NULL AUTO_INCREMENT,
  `nome_cid` varchar(200) NOT NULL,
  `id_est_fk` int DEFAULT NULL,
  PRIMARY KEY (`id_cid`),
  KEY `id_est_fk` (`id_est_fk`),
  CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`id_est_fk`) REFERENCES `estado` (`id_est`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'ji-paraná',22),(2,'porto velho',22),(3,'vilhena',22),(4,'ariquemes',22),(5,'jaru',22),(6,'guajará-mirim ',22),(7,'colorado do oeste',22),(8,'ouro preto do oeste',22),(9,'pimenta bueno',22),(10,'Rio Branco',1),(11,'Cruzeiro do Sul',1),(12,'Feijó',1),(13,'Tarauacá',1),(14,'Sena Madureira',1),(15,'Maceió',2),(16,'Arapiraca',2),(17,'Palmeira dos Índios',2),(18,'Rio Largo',2),(19,'União dos Palmares',2),(20,'Macapá',3),(21,'Santana',3),(22,'Laranjal do Jari',3),(23,'Oiapoque',3),(24,'Porto Grande',3),(25,'Manaus',4),(26,'Parintins',4),(27,'Itacoatiara',4),(28,'Manacapuru',4),(29,'Coari',4),(30,'Salvador',5),(31,'Feira de Santana',5),(32,'Vitória da Conquista',5),(33,'Camaçari',5),(34,'Itabuna',5),(35,'Fortaleza',6),(36,'Caucaia',6),(37,'Juazeiro do Norte',6),(38,'Maracanaú',6),(39,'Sobral',6),(40,'Brasília',7),(41,'Vitória',8),(42,'Vila Velha',8),(43,'Cariacica',8),(44,'Serra',8),(45,'Linhares',8),(46,'Goiânia',9),(47,'Aparecida de Goiânia',9),(48,'Anápolis',9),(49,'Rio Verde',9),(50,'Luziânia',9),(51,'São Luís',10),(52,'Imperatriz',10),(53,'São José de Ribamar',10),(54,'Caxias',10),(55,'Timon',10),(56,'Cuiabá',11),(57,'Várzea Grande',11),(58,'Rondonópolis',11),(59,'Sinop',11),(60,'Tangará da Serra',11),(61,'Campo Grande',12),(62,'Dourados',12),(63,'Três Lagoas',12),(64,'Corumbá',12),(65,'Ponta Porã',12),(66,'Belo Horizonte',13),(67,'Uberlândia',13),(68,'Contagem',13),(69,'Juiz de Fora',13),(70,'Betim',13),(71,'Belém',14),(72,'Ananindeua',14),(73,'Santarém',14),(74,'Marabá',14),(75,'Castanhal',14),(76,'João Pessoa',15),(77,'Campina Grande',15),(78,'Santa Rita',15),(79,'Patos',15),(80,'Bayeux',15),(81,'Cuiabá',11),(82,'Várzea Grande',11),(83,'Rondonópolis',11),(84,'Sinop',11),(85,'Tangará da Serra',11),(86,'Campo Grande',12),(87,'Dourados',12),(88,'Três Lagoas',12),(89,'Corumbá',12),(90,'Ponta Porã',12),(91,'Belo Horizonte',13),(92,'Uberlândia',13),(93,'Contagem',13),(94,'Juiz de Fora',13),(95,'Betim',13),(96,'Belém',14),(97,'Ananindeua',14),(98,'Santarém',14),(99,'Marabá',14),(100,'Castanhal',14),(101,'João Pessoa',15),(102,'Campina Grande',15),(103,'Santa Rita',15),(104,'Patos',15),(105,'Bayeux',15),(106,'Curitiba',16),(107,'Londrina',16),(108,'Maringá',16),(109,'Ponta Grossa',16),(110,'Cascavel',16),(111,'Recife',17),(112,'Jaboatão dos Guararapes',17),(113,'Olinda',17),(114,'Caruaru',17),(115,'Paulista',17),(116,'Teresina',18),(117,'Parnaíba',18),(118,'Picos',18),(119,'Campo Maior',18),(120,'Floriano',18),(121,'Rio de Janeiro',19),(122,'São Gonçalo',19),(123,'Duque de Caxias',19),(124,'Nova Iguaçu',19),(125,'Niterói',19),(126,'Natal',20),(127,'Mossoró',20),(128,'Parnamirim',20),(129,'São Gonçalo do Amarante',20),(130,'Ceará-Mirim',20),(131,'Porto Alegre',21),(132,'Caxias do Sul',21),(133,'Pelotas',21),(134,'Santa Maria',21),(135,'Canoas',21),(136,'Boa Vista',23),(137,'Rorainópolis',23),(138,'Caracaraí',23),(139,'Mucajaí',23),(140,'São João da Baliza',23),(141,'Florianópolis',24),(142,'Joinville',24),(143,'Blumenau',24),(144,'São José',24),(145,'Lages',24),(146,'São Paulo',25),(147,'Guarulhos',25),(148,'Campinas',25),(149,'São Bernardo do Campo',25),(150,'Santo André',25),(151,'Aracaju',26),(152,'Nossa Senhora do Socorro',26),(153,'Lagarto',26),(154,'Itabaiana',26),(155,'São Cristóvão',26),(156,'Palmas',27),(157,'Araguaína',27),(158,'Gurupi',27),(159,'Porto Nacional',27),(160,'Paraíso do Tocantins',27);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id_com` int NOT NULL AUTO_INCREMENT,
  `data_com` date DEFAULT NULL,
  `valor_com` double DEFAULT NULL,
  `forma_pagamento_com` varchar(100) DEFAULT NULL,
  `id_fun_fk` int NOT NULL,
  `id_for_fk` int NOT NULL,
  PRIMARY KEY (`id_com`),
  KEY `id_fun_fk` (`id_fun_fk`),
  KEY `id_for_fk` (`id_for_fk`),
  CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_fun_fk`) REFERENCES `funcionario` (`id_fun`),
  CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`id_for_fk`) REFERENCES `fornecedor` (`id_for`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,'2022-03-20',3523.6,'Boleto - 30/60',1,1),(2,'2022-03-30',5000.15,'Dinheiro - Vista',5,1),(3,'2022-04-05',2800,'Cartão de Crédito - Parcelado',3,2),(4,'2022-04-10',1850.75,'Transferência Bancária',2,3),(5,'2022-04-15',4200.5,'Boleto - 30/60',4,4),(6,'2022-04-20',3500.25,'Dinheiro - Vista',6,5),(7,'2022-04-25',2800.9,'Cartão de Débito',7,6),(8,'2022-05-15',1800.9,'Cartão de Débito',7,6);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_produto`
--

DROP TABLE IF EXISTS `compra_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_produto` (
  `id_comp` int NOT NULL AUTO_INCREMENT,
  `quant_comp` int NOT NULL,
  `valor_comp` float NOT NULL,
  `id_pro_fk` int NOT NULL,
  `id_com_fk` int NOT NULL,
  PRIMARY KEY (`id_comp`),
  KEY `id_pro_fk` (`id_pro_fk`),
  KEY `id_com_fk` (`id_com_fk`),
  CONSTRAINT `compra_produto_ibfk_1` FOREIGN KEY (`id_pro_fk`) REFERENCES `produto` (`id_pro`),
  CONSTRAINT `compra_produto_ibfk_2` FOREIGN KEY (`id_com_fk`) REFERENCES `compra` (`id_com`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_produto`
--

LOCK TABLES `compra_produto` WRITE;
/*!40000 ALTER TABLE `compra_produto` DISABLE KEYS */;
INSERT INTO `compra_produto` VALUES (1,100,2.5,1,1),(2,10,2.5,2,1),(3,30,4.5,3,1),(4,80,3.25,4,2),(5,120,1.5,5,2),(6,50,2.75,6,2),(7,40,4,7,2),(8,20,2,8,3),(9,60,3.75,9,3),(10,70,2.5,10,4),(11,30,3.5,11,4),(12,100,4.25,12,4),(13,110,1.75,13,5),(14,90,2,14,5),(15,20,3,1,5),(16,50,4.5,2,5),(17,65,2.75,1,6),(18,40,1.5,5,6),(19,80,3,6,6),(20,30,4.25,7,6),(21,55,2.25,8,6),(22,25,3.75,9,7),(23,35,2.25,10,7),(24,45,4.5,1,7),(25,15,1.75,2,7),(26,50,2,1,8),(27,20,3.5,2,8),(28,30,4.25,3,8);
/*!40000 ALTER TABLE `compra_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id_dep` int NOT NULL AUTO_INCREMENT,
  `nome_dep` varchar(100) DEFAULT NULL,
  `descricao_dep` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_dep`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'vendas','venda de peças e serviços'),(2,'financeiro','controle financeiro e caixa'),(3,'entrega','entregar peças'),(4,'mecânica','realizar manutenção em veículos'),(5,'administração','gestão da empresa');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `despesa`
--

DROP TABLE IF EXISTS `despesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `despesa` (
  `id_des` int NOT NULL AUTO_INCREMENT,
  `descricao_des` varchar(200) DEFAULT NULL,
  `valor_des` double DEFAULT NULL,
  `numero_documento_des` int DEFAULT NULL,
  `forma_pagamento_des` varchar(200) DEFAULT NULL,
  `id_for_fk` int DEFAULT NULL,
  PRIMARY KEY (`id_des`),
  KEY `id_for_fk` (`id_for_fk`),
  CONSTRAINT `despesa_ibfk_1` FOREIGN KEY (`id_for_fk`) REFERENCES `fornecedor` (`id_for`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despesa`
--

LOCK TABLES `despesa` WRITE;
/*!40000 ALTER TABLE `despesa` DISABLE KEYS */;
INSERT INTO `despesa` VALUES (1,'Conta de agua ref. Maio/2022',200,1234564544,'A Vista',1),(2,'Conta de energia ref. Maio/2022',400,1234564545,'Boleto',2),(3,'Manutenção de elevadores',1000,1234564546,'Transferência Bancária',3),(4,'Limpeza e higienização de piscina',300,1234564547,'Dinheiro',4),(5,'Compra de materiais de limpeza',150,1234564548,'Cartão de Crédito',5),(6,'Manutenção de jardim',250,1234564549,'A Vista',6),(7,'Compra de produtos de higiene',180,1234564550,'Boleto Bancário',7),(8,'Compra de alimentos para café da manhã',350,1234564551,'Dinheiro',8),(9,'Manutenção de ar condicionado',500,1234564552,'Cartão de Débito',9),(10,'Compra de roupas de cama e banho',700,1234564553,'Transferência Bancária',10),(11,'Serviços de segurança',600,1234564554,'A Vista',11);
/*!40000 ALTER TABLE `despesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id_end` int NOT NULL AUTO_INCREMENT,
  `rua_end` varchar(300) DEFAULT NULL,
  `numero_end` int DEFAULT NULL,
  `bairro_end` varchar(100) DEFAULT NULL,
  `id_cid_fk` int NOT NULL,
  PRIMARY KEY (`id_end`),
  KEY `id_cid_fk` (`id_cid_fk`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`id_cid_fk`) REFERENCES `cidade` (`id_cid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'av. brasil',111,'nova brasília',1),(2,'av. marechal rondon',1245,'centro',1),(3,'rua dr. telma rios',1174,'colina park i',1),(4,'av. aracaju',911,'bnh',1),(5,'rua 07 de setembro',121,'centro',1),(6,'rua mato grosso',887,'dom bosco',1),(7,'av. jorge teixeira',1589,'centro',2),(8,'av. paulista',989,'centro',11),(9,'travessa dos mineiros',456,'centro',4),(10,'av. monte castelo',555,'jardim dos migrantes',1),(11,'av. aracaju',5111,'nova brasilia',1),(12,'av. monte castelo',9999,'jardim dos migrantes',1),(13,'rua x',12,'jardim dos migrantes',1),(14,'k-0',522,'são francisco',1),(15,'av. monte castelo',11229,'jardim dos migrantes',1),(16,'rua das flores',456,'jardim das flores',2),(17,'av. dos ipês',789,'parque das árvores',3),(18,'travessa dos cravos',231,'jardim das rosas',4),(19,'rua das violetas',876,'parque floral',5),(20,'av. das begônias',543,'jardim primavera',6),(21,'travessa das orquídeas',112,'parque das tulipas',7),(22,'rua dos lírios',789,'jardim das margaridas',8),(23,'av. das dálias',456,'parque das hortênsias',9),(24,'travessa das azaleias',231,'jardim das camélias',10),(25,'rua dos girassóis',876,'parque dos girassóis',11),(26,'av. das acácias',543,'jardim das palmeiras',12),(27,'travessa dos manacás',112,'parque dos manacás',13),(28,'rua das bromélias',789,'jardim das bromélias',14),(29,'av. das laranjeiras',456,'parque das laranjeiras',15),(30,'travessa das goiabeiras',231,'jardim das goiabeiras',16),(31,'rua dos abacaxis',876,'parque dos abacaxis',17),(32,'av. das pitangas',543,'jardim das pitangas',18),(33,'travessa dos cajueiros',112,'parque dos cajueiros',19),(34,'rua das mangueiras',789,'jardim das mangueiras',20),(35,'av. das jabuticabeiras',456,'parque das jabuticabeiras',21);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id_est` int NOT NULL AUTO_INCREMENT,
  `nome_est` varchar(200) NOT NULL,
  `sigla_est` varchar(2) NOT NULL,
  `regiao_est` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_est`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Acre','AC','Norte'),(2,'Alagoas','AL','Nordeste'),(3,'Amapá','AP','Norte'),(4,'Amazonas','AM','Norte'),(5,'Bahia','BA','Nordeste'),(6,'Ceará','CE','Nordeste'),(7,'Distrito Federal','DF','Centro-Oeste'),(8,'Espírito Santo','ES','Sudeste'),(9,'Goiás','GO','Centro-Oeste'),(10,'Maranhão','MA','Nordeste'),(11,'Mato Grosso','MT','Centro-Oeste'),(12,'Mato Grosso do Sul','MS','Centro-Oeste'),(13,'Minas Gerais','MG','Sudeste'),(14,'Pará','PA','Norte'),(15,'Paraíba','PB','Nordeste'),(16,'Paraná','PR','Sul'),(17,'Pernambuco','PE','Nordeste'),(18,'Piauí','PI','Nordeste'),(19,'Rio de Janeiro','RJ','Sudeste'),(20,'Rio Grande do Norte','RN','Nordeste'),(21,'Rio Grande do Sul','RS','Sul'),(22,'Rondônia','RO','Norte'),(23,'Roraima','RR','Norte'),(24,'Santa Catarina','SC','Sul'),(25,'São Paulo','SP','Sudeste'),(26,'Sergipe','SE','Nordeste'),(27,'Tocantins','TO','Norte');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id_for` int NOT NULL AUTO_INCREMENT,
  `razao_social_for` varchar(200) DEFAULT NULL,
  `nome_fantasia_for` varchar(100) DEFAULT NULL,
  `cpnj_for` varchar(100) DEFAULT NULL,
  `contato_for` varchar(300) DEFAULT NULL,
  `email_for` varchar(300) DEFAULT NULL,
  `id_end_fk` int DEFAULT NULL,
  PRIMARY KEY (`id_for`),
  KEY `id_end_fk` (`id_end_fk`),
  CONSTRAINT `fornecedor_ibfk_1` FOREIGN KEY (`id_end_fk`) REFERENCES `endereco` (`id_end`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Coka Cola LTDA','Distribuidora Coka Cola','11.123.123/0001-11','69 3421 1111','coka@gmail.com',20),(2,'Aguas da Amazonia ME','Distribuidora de Agua Mineral Aguas da Amazonia','01.454.183/0001-91','69 3421 1578','aguasdaamazonia@hotmail.com.com',30),(3,'Distribuidora de Bebidas Tropical LTDA','Bebidas Tropical','12.345.678/0001-99','69 3422 2222','bebidas.tropical@gmail.com',25),(4,'Sabor Natural Alimentos LTDA','Sabor Natural','45.678.912/0001-33','69 3423 3333','sabornatural@gmail.com',15),(5,'Distribuidora de Doces e Guloseimas Doçura LTDA','Doces Doçura','88.765.432/0001-22','69 3424 4444','docesdocura@gmail.com',30),(6,'Cervejaria Artesanal Amazônia LTDA','Cerveja Amazônia','23.456.789/0001-55','69 3425 5555','cervejaamazonia@hotmail.com',13),(7,'Frutas Frescas Distribuidora LTDA','Frutas Frescas','34.567.891/0001-77','69 3426 6666','frutasfrescas@gmail.com',5),(8,'Distribuidora de Produtos de Limpeza Clean LTDA','Produtos Clean','09.876.543/0001-44','69 3427 7777','produtosclean@hotmail.com',30),(9,'Laticínios Amazônia LTDA','Laticínios Amazônia','67.891.234/0001-66','69 3428 8888','laticiniosamazonia@gmail.com',35),(10,'Distribuidora de Carnes e Frios Saborosa LTDA','Carnes Saborosa','89.012.345/0001-88','69 3429 9999','carnessaborosa@gmail.com',34),(11,'Panificadora Pão Quentinho LTDA','Pão Quentinho','90.123.456/0001-00','69 3430 1010','paoquentinho@live.com',28),(12,'Distribuidora de Produtos Higiene e Beleza Beleza Amazônica LTDA','Beleza Amazônica','12.345.678/0001-90','69 3431 1111','belezaamazonica@hotmail.com',33);
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id_fun` int NOT NULL AUTO_INCREMENT,
  `nome_fun` varchar(200) NOT NULL,
  `cpf_fun` varchar(20) NOT NULL,
  `rg_fun` varchar(20) DEFAULT NULL,
  `data_nascimento_fun` date DEFAULT NULL,
  `salario_fun` double NOT NULL,
  `telefone_fun` varchar(50) DEFAULT NULL,
  `celular_fun` varchar(50) NOT NULL,
  `id_carg_fk` int NOT NULL,
  `id_sex_fk` int NOT NULL,
  `id_dep_fk` int NOT NULL,
  `id_end_fk` int NOT NULL,
  PRIMARY KEY (`id_fun`),
  KEY `id_carg_fk` (`id_carg_fk`),
  KEY `id_sex_fk` (`id_sex_fk`),
  KEY `id_dep_fk` (`id_dep_fk`),
  KEY `id_end_fk` (`id_end_fk`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`id_carg_fk`) REFERENCES `cargo` (`id_carg`),
  CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`id_sex_fk`) REFERENCES `sexo` (`id_sex`),
  CONSTRAINT `funcionario_ibfk_3` FOREIGN KEY (`id_dep_fk`) REFERENCES `departamento` (`id_dep`),
  CONSTRAINT `funcionario_ibfk_4` FOREIGN KEY (`id_end_fk`) REFERENCES `endereco` (`id_end`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'joão batista','123.544.311-99','22222 sesdec','1988-10-30',5000,'','69 84111155',1,1,5,3),(2,'marcos garcia souza','565.888.988-88','64444 sesdec','1965-01-20',45000,'','',2,1,1,8),(3,'leticia de jesus','998.999.789-55','46666 sesdec','1990-05-23',1500,'11 454546511','',2,2,1,10),(4,'mateus solano ','522.222.232-08','65655 spp','1990-11-30',900,'69 8855 5544','69 5555 4444',3,1,4,4),(5,'roger da silva','123.589.978-77',NULL,'1987-11-11',1100,NULL,'69 9988 7788',3,1,4,11),(6,'ana pereira silva','987.987.788-88',NULL,'1985-11-22',1000.5,NULL,'69 8888 7777',4,2,2,1),(7,'isaias queiroz','123.121.321-88','87788 sesdec','1980-11-30',2000,NULL,'69 8877 88881',5,1,3,7),(8,'ana clara oliveira','543.987.654-99','77777 spp','1995-07-15',3000,'69 8888 1234','69 9999 5678',1,2,5,9),(9,'pedro henrique santos','876.543.210-11','12345 spp','1982-02-18',6000,'69 8765 4321','69 9876 5432',2,1,3,2),(10,'carla fernandes','654.321.098-77','11111 spp','1998-06-09',2500,'69 8765 4321','69 9876 5432',3,2,1,5),(11,'lucas oliveira santos','987.654.321-00','99999 spp','1993-12-05',4000,'69 8877 1234','69 9999 5678',4,1,2,12),(12,'camila pereira','123.456.789-01','55555 spp','1991-04-20',3500,'69 8765 4321','69 9876 5432',5,2,4,6),(13,'vitor da silva','987.654.123-33','44444 spp','1988-09-28',2800,'69 8877 1234','69 9999 5678',1,1,3,3),(14,'amanda santos','111.222.333-44','66666 spp','1980-03-15',3200,'69 8765 4321','69 9876 5432',2,2,2,9),(15,'leonardo souza','555.888.777-00','77777 spp','1987-07-01',4200,'69 8877 1234','69 9999 5678',3,1,5,4),(16,'caroline oliveira','444.555.666-99','12345 spp','1997-11-10',2700,'69 8765 4321','69 9876 5432',4,2,1,8),(17,'gustavo rodrigues','777.888.999-11','33333 spp','1989-05-30',3800,'69 8877 1234','69 9999 5678',5,1,4,11);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospedagem`
--

DROP TABLE IF EXISTS `hospedagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospedagem` (
  `id_hosp` int NOT NULL AUTO_INCREMENT,
  `data_checkin_hosp` date NOT NULL,
  `hora_checkin_hop` time NOT NULL,
  `data_checkout_hosp` date DEFAULT NULL,
  `hora_checkout_hosp` time DEFAULT NULL,
  `status_hosp` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_hosp`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospedagem`
--

LOCK TABLES `hospedagem` WRITE;
/*!40000 ALTER TABLE `hospedagem` DISABLE KEYS */;
INSERT INTO `hospedagem` VALUES (1,'2022-04-20','14:00:00','2022-04-25','12:00:00','Fechado'),(2,'2022-04-24','15:30:00','2022-04-25','10:00:00','Fechado'),(3,'2022-04-26','16:00:00','2022-04-29','11:00:00','Fechado'),(4,'2022-04-28','17:00:00','2022-04-30','13:00:00','Fechado'),(5,'2022-04-30','18:30:00','2022-05-05','09:00:00','Fechado'),(6,'2022-05-02','19:00:00','2022-05-04','10:30:00','Fechado'),(7,'2022-05-04','20:00:00','2022-05-08','11:30:00','Fechado'),(8,'2022-05-06','21:30:00','2022-05-09','12:00:00','Fechado'),(9,'2022-05-08','22:00:00','2022-05-09','09:30:00','Fechado'),(10,'2022-05-10','23:00:00','2022-05-12','10:00:00','Fechado'),(11,'2022-05-12','14:30:00','2022-05-18','11:30:00','Fechado'),(12,'2022-05-14','15:00:00','2022-05-16','12:00:00','Fechado'),(13,'2022-05-16','16:00:00','2022-05-18','13:00:00','Fechado'),(14,'2022-05-18','17:30:00','2022-05-20','09:00:00','Fechado'),(15,'2022-05-20','18:00:00','2022-05-22','10:30:00','Fechado'),(16,'2022-05-22','19:00:00','2022-05-22','11:00:00','Fechado'),(17,'2022-05-24','20:30:00','2022-05-27','12:00:00','Fechado'),(18,'2022-05-26','21:00:00','2022-05-29','09:30:00','Fechado'),(19,'2022-05-28','22:00:00','2022-05-30','10:00:00','Fechado'),(20,'2022-05-30','23:30:00','2022-05-31','11:30:00','Fechado'),(21,'2022-06-01','18:00:00',NULL,NULL,'Aberto'),(22,'2022-06-03','14:30:00',NULL,NULL,'Aberto'),(23,'2022-06-05','15:50:00',NULL,NULL,'Aberto'),(24,'2022-06-07','15:40:00',NULL,NULL,'Aberto');
/*!40000 ALTER TABLE `hospedagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospedagem_funcionarios`
--

DROP TABLE IF EXISTS `hospedagem_funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospedagem_funcionarios` (
  `id_hfunc` int NOT NULL AUTO_INCREMENT,
  `atuacao_hfunc` varchar(300) NOT NULL,
  `id_hosp_fk` int NOT NULL,
  `id_fun_fk` int NOT NULL,
  PRIMARY KEY (`id_hfunc`),
  KEY `id_hosp_fk` (`id_hosp_fk`),
  KEY `id_fun_fk` (`id_fun_fk`),
  CONSTRAINT `hospedagem_funcionarios_ibfk_1` FOREIGN KEY (`id_hosp_fk`) REFERENCES `hospedagem` (`id_hosp`),
  CONSTRAINT `hospedagem_funcionarios_ibfk_2` FOREIGN KEY (`id_fun_fk`) REFERENCES `funcionario` (`id_fun`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospedagem_funcionarios`
--

LOCK TABLES `hospedagem_funcionarios` WRITE;
/*!40000 ALTER TABLE `hospedagem_funcionarios` DISABLE KEYS */;
INSERT INTO `hospedagem_funcionarios` VALUES (1,'Checkin',1,2),(2,'Checkout',1,2),(3,'Checkin',2,3),(4,'Checkout',2,2),(5,'Checkin',3,2),(6,'Checkout',3,3),(7,'Checkin',4,3),(8,'Checkout',4,3),(9,'Checkin',5,3),(10,'Checkout',5,2),(11,'Checkin',6,2),(12,'Checkout',6,2),(13,'Checkin',7,3),(14,'Checkout',7,2),(15,'Checkin',8,3),(16,'Checkout',8,2),(17,'Checkin',9,2),(18,'Checkout',9,3),(19,'Checkin',10,3),(20,'Checkout',10,3),(21,'Checkin',11,3),(22,'Checkout',11,3),(23,'Checkin',12,2),(24,'Checkout',12,3),(25,'Checkin',13,2),(26,'Checkout',13,3),(27,'Checkin',14,3),(28,'Checkout',14,3),(29,'Checkin',15,2),(30,'Checkout',15,3),(31,'Checkin',16,3),(32,'Checkout',16,3),(33,'Checkin',17,2),(34,'Checkout',17,2),(35,'Checkin',18,3),(36,'Checkout',18,3),(37,'Checkin',19,3),(38,'Checkout',19,2),(39,'Checkin',20,2),(40,'Checkout',20,2),(41,'Checkin',21,2),(42,'Checkin',22,3),(43,'Checkin',23,3),(44,'Checkin',24,3);
/*!40000 ALTER TABLE `hospedagem_funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospedagem_hospede`
--

DROP TABLE IF EXISTS `hospedagem_hospede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospedagem_hospede` (
  `id_hhos` int NOT NULL AUTO_INCREMENT,
  `tipo_hhos` varchar(100) DEFAULT NULL,
  `id_hos_fk` int NOT NULL,
  `id_hosp_fk` int NOT NULL,
  PRIMARY KEY (`id_hhos`),
  KEY `id_hos_fk` (`id_hos_fk`),
  KEY `id_hosp_fk` (`id_hosp_fk`),
  CONSTRAINT `hospedagem_hospede_ibfk_1` FOREIGN KEY (`id_hos_fk`) REFERENCES `hospede` (`id_hos`),
  CONSTRAINT `hospedagem_hospede_ibfk_2` FOREIGN KEY (`id_hosp_fk`) REFERENCES `hospedagem` (`id_hosp`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospedagem_hospede`
--

LOCK TABLES `hospedagem_hospede` WRITE;
/*!40000 ALTER TABLE `hospedagem_hospede` DISABLE KEYS */;
INSERT INTO `hospedagem_hospede` VALUES (1,'Principal',1,1),(2,'Acompanhante',2,1),(3,'Acompanhante',20,1),(4,'Acompanhante',21,1),(5,'Principal',3,2),(6,'Acompanhante',4,2),(7,'Principal',5,3),(8,'Acompanhante',6,3),(9,'Principal',7,4),(10,'Acompanhante',8,4),(11,'Principal',9,5),(12,'Acompanhante',10,5),(13,'Principal',11,6),(14,'Acompanhante',12,6),(15,'Principal',13,7),(16,'Acompanhante',14,7),(17,'Principal',15,8),(18,'Acompanhante',16,8),(19,'Principal',17,9),(20,'Acompanhante',18,9),(21,'Principal',19,10),(22,'Acompanhante',20,10),(23,'Principal',21,11),(24,'Acompanhante',22,11),(25,'Principal',23,12),(26,'Acompanhante',24,12),(27,'Principal',25,13),(28,'Acompanhante',26,13),(29,'Principal',27,14),(30,'Acompanhante',28,14),(31,'Principal',29,15),(32,'Acompanhante',30,15),(33,'Principal',31,16),(34,'Acompanhante',32,16),(35,'Principal',33,17),(36,'Acompanhante',34,17),(37,'Principal',35,18),(38,'Acompanhante',36,18),(39,'Principal',37,19),(40,'Acompanhante',38,19),(41,'Principal',39,20),(42,'Acompanhante',40,20);
/*!40000 ALTER TABLE `hospedagem_hospede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospedagem_quarto`
--

DROP TABLE IF EXISTS `hospedagem_quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospedagem_quarto` (
  `id_hqua` int NOT NULL AUTO_INCREMENT,
  `data_inicio_hqua` date DEFAULT NULL,
  `data_fim_hqua` date DEFAULT NULL,
  `id_hosp_fk` int NOT NULL,
  `id_qua_fk` int NOT NULL,
  PRIMARY KEY (`id_hqua`),
  KEY `id_hosp_fk` (`id_hosp_fk`),
  KEY `id_qua_fk` (`id_qua_fk`),
  CONSTRAINT `hospedagem_quarto_ibfk_1` FOREIGN KEY (`id_hosp_fk`) REFERENCES `hospedagem` (`id_hosp`),
  CONSTRAINT `hospedagem_quarto_ibfk_2` FOREIGN KEY (`id_qua_fk`) REFERENCES `quarto` (`id_qua`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospedagem_quarto`
--

LOCK TABLES `hospedagem_quarto` WRITE;
/*!40000 ALTER TABLE `hospedagem_quarto` DISABLE KEYS */;
INSERT INTO `hospedagem_quarto` VALUES (1,'2022-04-21','2022-04-22',1,1),(2,'2022-04-22','2022-04-24',1,21),(3,'2022-04-22','2022-04-25',2,2),(4,'2022-04-26','2022-04-29',3,3),(5,'2022-04-28','2022-04-30',4,4),(6,'2022-04-30','2022-05-05',5,5),(7,'2022-05-02','2022-05-04',6,6),(8,'2022-05-04','2022-05-08',7,7),(9,'2022-05-06','2022-05-09',8,8),(10,'2022-05-08','2022-05-09',9,9),(11,'2022-05-10','2022-05-12',10,10),(12,'2022-05-12','2022-05-18',11,11),(13,'2022-05-14','2022-05-16',12,12),(14,'2022-05-16','2022-05-18',13,13),(15,'2022-05-18','2022-05-20',14,14),(16,'2022-05-20','2022-05-22',15,15),(17,'2022-05-22','2022-05-28',16,16),(18,'2022-05-24','2022-05-27',17,17),(19,'2022-05-26','2022-05-29',18,18),(20,'2022-05-28','2022-05-30',19,19),(21,'2022-05-30','2022-05-31',20,20),(22,'2022-06-01',NULL,21,21),(23,'2022-06-03',NULL,22,22),(24,'2022-06-05',NULL,23,23),(25,'2022-06-07',NULL,24,24);
/*!40000 ALTER TABLE `hospedagem_quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospede`
--

DROP TABLE IF EXISTS `hospede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospede` (
  `id_hos` int NOT NULL AUTO_INCREMENT,
  `nome_hos` varchar(200) NOT NULL,
  `estado_civil_hos` varchar(50) DEFAULT NULL,
  `cpf_hos` varchar(20) NOT NULL,
  `rg_hos` varchar(30) DEFAULT NULL,
  `data_nascimento_hos` date DEFAULT NULL,
  `renda_familiar_hos` float DEFAULT NULL,
  `telefone_hos` varchar(50) DEFAULT NULL,
  `celular_hos` varchar(50) NOT NULL,
  `id_sex_fk` int NOT NULL,
  `id_end_fk` int NOT NULL,
  PRIMARY KEY (`id_hos`),
  KEY `id_sex_fk` (`id_sex_fk`),
  KEY `id_end_fk` (`id_end_fk`),
  CONSTRAINT `hospede_ibfk_1` FOREIGN KEY (`id_sex_fk`) REFERENCES `sexo` (`id_sex`),
  CONSTRAINT `hospede_ibfk_2` FOREIGN KEY (`id_end_fk`) REFERENCES `endereco` (`id_end`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospede`
--

LOCK TABLES `hospede` WRITE;
/*!40000 ALTER TABLE `hospede` DISABLE KEYS */;
INSERT INTO `hospede` VALUES (1,'rodrigo hilbert','casado','111.111.111-11','54654 sesdec','1987-06-30',10000,'69 84085712','69 84111111',1,3),(2,'tiago lacerda','casado','111.111.111-22','54654 sesdec','1965-01-01',456454,'','',1,8),(3,'tom cruise','solteiro','111.111.111-33','48877 sesdec','1950-05-30',0,'11 454546511','',1,1),(4,'josé pereiro da silva','casado','222.222.222-88','8888888 spp','1990-11-12',900,'69 88998899','69 4444 4444',1,4),(5,'maria de jesus dos santos','solteira','554.454.444-99','99999 sesdec','1993-06-21',3000,'69 3421 5511','69 99111111',2,3),(6,'camila de oliveira','casada','987.123.654-55','8889999 sesdec','2000-12-12',5450,'69 3421 1122','69 9999 7788',2,10),(7,'marcos araujo de souza','casado','654.789.123-88','998877 sesdec','1970-01-01',6845,'69 84085712','69 84111111',1,9),(8,'cleiton batista ferraz','solteiro','321.111.222-44','1234312 sesdec','1982-07-30',4199,'69 3421 2211','69 84118811',1,2),(9,'eliana da cruz','solteira','988.235.654-54','12345 sesdec','1978-11-11',3250,'69 3421 9999','69 84118811',2,5),(10,'igor garcia da silva','solteiro','123.445.888-99','999992 sesdec','1989-12-30',9600,'69 3421 1123','69 84118811',1,11),(11,'jackson henrique da silva bezerra','casado','529.562.612-15','880075 sesdec','1987-06-30',11000,'','69 84085712',1,3),(12,'jaqueline leão pereira','casada','522.222.153-15','12315 sesdec','1993-06-21',11000,NULL,'69 984210921',2,3),(13,'gleicy borgio','casada','126.777.888-99',NULL,NULL,5000,NULL,'69 84888899',2,11),(14,'diego da silva bezerra','solteiro','111.987.123-55',NULL,NULL,3999.99,NULL,'69 88997722',1,15),(15,'murilo benicio','casado','321.123.321-55',NULL,NULL,2450.8,NULL,'11 2121 1111',1,8),(16,'ana clara oliveira','solteira','111.222.333-44','12345 sesdec','1995-03-15',7800,'69 3421 3344','69 98888 7766',2,6),(17,'ana clara oliveira','solteira','111.222.333-44','12345 sesdec','1995-03-15',7800,'69 3421 3344','69 98888 7766',2,6),(18,'pedro henrique almeida','casado','555.666.777-88','998877 sesdec','1980-08-22',6500,'69 3421 5566','69 84123 9876',1,9),(19,'isabela pereira','solteira','987.654.321-01','12345 sesdec','1992-05-10',4200,'69 3421 8899','69 99222 3344',2,5),(20,'lucas souza','solteiro','123.456.789-10','54321 sesdec','1988-11-03',8900,'69 3421 2233','69 87654 3210',2,7),(21,'gabriela silva','casada','987.654.321-98','8889999 sesdec','1997-02-20',5500,'69 3421 7788','69 84123 5678',1,10),(22,'ricardo martins','solteiro','123.987.456-32','87654 sesdec','1985-09-17',7600,'69 3421 1122','69 99000 1122',2,4),(23,'carla santos','casada','654.987.321-45','876543 sesdec','1975-12-01',4800,'69 3421 5566','69 84123 3333',1,8),(24,'roberto mendes','solteiro','159.357.852-46','998877 sesdec','1991-04-12',6200,'69 3421 8899','69 99222 3344',2,6),(25,'marina costa','casada','987.654.321-00','12345 sesdec','1983-07-25',7100,'69 3421 3344','69 98888 7766',1,5),(26,'felipe rocha','solteiro','258.369.147-00','54321 sesdec','1994-10-08',5800,'69 3421 5566','69 84123 9876',2,3),(27,'lara alves','casada','852.963.741-22','87654 sesdec','1986-02-14',6800,'69 3421 2233','69 87654 3210',1,9),(28,'pedro martins','solteiro','123.456.789-10','54321 sesdec','1998-05-27',8100,'69 3421 8899','69 99222 3344',2,7),(29,'larissa rodrigues','solteira','987.654.321-98','8889999 sesdec','1984-09-30',5900,'69 3421 7788','69 84123 5678',1,10),(30,'rafael pereira','casado','123.987.456-32','87654 sesdec','1996-12-11',7200,'69 3421 1122','69 99000 1122',2,4),(31,'amanda santos','solteira','654.987.321-45','876543 sesdec','1972-03-05',5000,'69 3421 5566','69 84123 3333',1,8),(32,'vinicius mendes','casado','159.357.852-46','998877 sesdec','1999-06-18',6700,'69 3421 8899','69 99222 3344',2,6),(33,'thais costa','solteira','987.654.321-00','12345 sesdec','1981-08-21',4900,'69 3421 3344','69 98888 7766',1,5),(34,'bruno rocha','casado','258.369.147-00','54321 sesdec','1990-11-14',6400,'69 3421 5566','69 84123 9876',2,3),(35,'mariana alves','solteira','852.963.741-22','87654 sesdec','1979-02-28',7500,'69 3421 2233','69 87654 3210',1,9),(36,'eduardo martins','solteiro','123.456.789-10','54321 sesdec','1987-05-12',9200,'69 3421 8899','69 99222 3344',2,7),(37,'carol rodrigues','casada','987.654.321-98','8889999 sesdec','1995-08-25',6300,'69 3421 7788','69 84123 5678',1,10),(38,'andre pereira','solteiro','123.987.456-32','87654 sesdec','1982-11-06',7900,'69 3421 1122','69 99000 1122',2,4),(39,'luana santos','casada','654.987.321-45','876543 sesdec','1993-02-19',5300,'69 3421 5566','69 84123 3333',1,8),(40,'rodrigo mendes','solteiro','159.357.852-46','998877 sesdec','1988-05-03',7100,'69 3421 8899','69 99222 3344',2,6),(41,'ana costa','casada','987.654.321-00','12345 sesdec','1977-08-16',6800,'69 3421 3344','69 98888 7766',1,5),(42,'pedro rocha','solteiro','258.369.147-00','54321 sesdec','1992-11-29',5900,'69 3421 5566','69 84123 9876',2,3),(43,'isabela alves','casada','852.963.741-22','87654 sesdec','1974-04-10',7500,'69 3421 2233','69 87654 3210',1,9),(44,'lucas martins','solteiro','123.456.789-10','54321 sesdec','1989-07-23',8400,'69 3421 8899','69 99222 3344',2,7),(45,'gabriela rodrigues','solteira','987.654.321-98','8889999 sesdec','1996-10-06',6200,'69 3421 7788','69 84123 5678',1,10),(46,'ricardo pereira','casado','123.987.456-32','87654 sesdec','1976-01-18',7800,'69 3421 1122','69 99000 1122',2,4),(47,'carla alves','solteira','654.987.321-45','876543 sesdec','1990-04-01',5300,'69 3421 5566','69 84123 3333',1,8),(48,'roberto rocha','casado','159.357.852-46','998877 sesdec','1983-07-14',6900,'69 3421 8899','69 99222 3344',2,6),(49,'marina rodrigues','solteira','987.654.321-00','12345 sesdec','1978-10-27',5000,'69 3421 3344','69 98888 7766',1,5),(50,'felipe almeida','casado','258.369.147-00','54321 sesdec','1995-01-09',6400,'69 3421 5566','69 84123 9876',2,3),(51,'lara martins','solteira','852.963.741-22','87654 sesdec','1980-04-22',7700,'69 3421 2233','69 87654 3210',1,9),(52,'pedro mendes','solteiro','123.456.789-10','54321 sesdec','1998-07-05',9200,'69 3421 8899','69 99222 3344',2,7),(53,'larissa pereira','casada','987.654.321-98','8889999 sesdec','1985-10-18',6900,'69 3421 7788','69 84123 5678',1,10),(54,'rafael alves','solteiro','123.987.456-32','87654 sesdec','1997-01-30',8300,'69 3421 1122','69 99000 1122',2,4),(55,'amanda rocha','casada','654.987.321-45','876543 sesdec','1971-05-12',5600,'69 3421 5566','69 84123 3333',1,8),(56,'vinicius rocha','solteiro','159.357.852-46','998877 sesdec','1994-08-25',7200,'69 3421 8899','69 99222 3344',2,6),(57,'thais pereira','solteira','987.654.321-00','12345 sesdec','1982-11-07',5500,'69 3421 3344','69 98888 7766',1,5),(58,'bruno almeida','casado','258.369.147-00','54321 sesdec','1991-02-20',6700,'69 3421 5566','69 84123 9876',2,3),(59,'mariana martins','solteira','852.963.741-22','87654 sesdec','1973-05-04',7400,'69 3421 2233','69 87654 3210',1,9),(60,'eduardo mendes','solteiro','123.456.789-10','54321 sesdec','1986-08-17',9100,'69 3421 8899','69 99222 3344',2,7),(61,'carol alves','casada','987.654.321-98','8889999 sesdec','1999-11-30',5900,'69 3421 7788','69 84123 5678',1,10),(62,'andre rocha','solteiro','123.987.456-32','87654 sesdec','1975-02-12',7600,'69 3421 1122','69 99000 1122',2,4),(63,'luana alves','casada','654.987.321-45','876543 sesdec','1992-05-25',5200,'69 3421 5566','69 84123 3333',1,8),(64,'rodrigo rocha','solteiro','159.357.852-46','998877 sesdec','1987-08-08',6800,'69 3421 8899','69 99222 3344',2,6),(65,'ana rodrigues','casada','987.654.321-00','12345 sesdec','1979-11-21',7500,'69 3421 3344','69 98888 7766',1,5),(66,'pedro almeida','solteiro','258.369.147-00','54321 sesdec','1994-02-03',6200,'69 3421 5566','69 84123 9876',2,3);
/*!40000 ALTER TABLE `hospede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `id_pag` int NOT NULL AUTO_INCREMENT,
  `data_vencimento_pag` date DEFAULT NULL,
  `valor_pag` float DEFAULT NULL,
  `parcela_pag` varchar(100) DEFAULT NULL,
  `status_pag` varchar(100) DEFAULT NULL,
  `forma_pagamento_pag` varchar(100) DEFAULT NULL,
  `data_pagamento_pag` date DEFAULT NULL,
  `id_fun_fk` int DEFAULT NULL,
  `id_cai_fk` int DEFAULT NULL,
  `id_des_fk` int DEFAULT NULL,
  PRIMARY KEY (`id_pag`),
  KEY `id_fun_fk` (`id_fun_fk`),
  KEY `id_cai_fk` (`id_cai_fk`),
  KEY `id_des_fk` (`id_des_fk`),
  CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`id_fun_fk`) REFERENCES `funcionario` (`id_fun`),
  CONSTRAINT `pagamento_ibfk_2` FOREIGN KEY (`id_cai_fk`) REFERENCES `caixa` (`id_cai`),
  CONSTRAINT `pagamento_ibfk_3` FOREIGN KEY (`id_des_fk`) REFERENCES `despesa` (`id_des`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,'2022-06-01',200,'1/1','Pago','Conta Banco Brasil','2022-06-01',1,1,1),(2,'2022-06-02',400,'1/1','Pago','Transferência Bancária','2022-06-02',2,2,2),(3,'2022-06-03',1000,'1/1','Pago','Dinheiro','2022-06-03',3,3,3),(4,'2022-06-04',300,'1/1','Pago','Cartão de Crédito','2022-06-04',4,4,4),(5,'2022-06-05',150,'1/1','Pago','Boleto Bancário','2022-06-05',5,5,5),(6,'2022-06-06',250,'1/1','Pago','Transferência Bancária','2022-06-06',6,6,6),(7,'2022-06-07',180,'1/1','Pago','Dinheiro','2022-06-07',7,7,7),(8,'2022-06-08',350,'1/1','Pago','Cartão de Crédito','2022-06-08',8,8,8),(9,'2022-06-09',500,'1/1','Pago','Boleto Bancário','2022-06-09',9,9,9),(10,'2022-06-10',700,'1/1','Pago','Dinheiro','2022-06-10',10,10,10),(11,'2022-06-11',600,'1/1','Pago','Transferência Bancária','2022-06-11',1,11,11);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id_pro` int NOT NULL AUTO_INCREMENT,
  `nome_pro` varchar(300) NOT NULL,
  `descricao_pro` varchar(300) DEFAULT NULL,
  `foto_pro` blob,
  `valor_pro` float NOT NULL,
  `estoque_pro` float NOT NULL,
  `tipo_pro` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_pro`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Coka Cola LT 330ml','Regrigerante em lata',NULL,6,100,'Refrigerante'),(2,'Fanta LT 330ml','Regrigerante em lata',NULL,5,50,'Refrigerante'),(3,'Guarana Antartica LT 330ml','Regrigerante em lata',NULL,5.5,80,'Refrigerante'),(4,'Chocolate Lacta 100gr','Chocolate branco em barra',NULL,10,20,'Chocolate'),(5,'Água Mineral 500ml','Água mineral sem gás',NULL,3,200,'Bebida'),(6,'Lata de Amendoim Torrado 100gr','Amendoim torrado e salgado',NULL,8,50,'Petisco'),(7,'Barra de Cereal 30gr','Barra de cereal sabor morango',NULL,4.5,80,'Snack'),(8,'Salgadinho de Milho 50gr','Salgadinho de milho sabor queijo',NULL,6,70,'Petisco'),(9,'Kit Higiene Básico','Kit contendo escova de dentes, pasta dental e sabonete',NULL,15,30,'Higiene'),(10,'Kit de Costura','Kit contendo linha, agulha e botões',NULL,12,40,'Utilidades'),(11,'Bolacha Recheada 120gr','Bolacha recheada sabor chocolate',NULL,7,60,'Lanche'),(12,'Protetor Solar FPS 30','Protetor solar com fator de proteção 30',NULL,25,25,'Higiene'),(13,'Cartão Postal','Cartão postal com imagem do local',NULL,3.5,100,'Lembrança'),(14,'Fone de Ouvido Descartável','Fone de ouvido descartável para uso único',NULL,10,50,'Eletrônicos');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarto`
--

DROP TABLE IF EXISTS `quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quarto` (
  `id_qua` int NOT NULL AUTO_INCREMENT,
  `numero_qua` int NOT NULL,
  `descricao_qua` varchar(300) DEFAULT NULL,
  `tipo_qua` varchar(100) DEFAULT NULL,
  `valor_qua` float DEFAULT NULL,
  `andar_qua` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_qua`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarto`
--

LOCK TABLES `quarto` WRITE;
/*!40000 ALTER TABLE `quarto` DISABLE KEYS */;
INSERT INTO `quarto` VALUES (1,100,'Triplo com TV e geladeira','Luxo',400,'1º andar'),(2,101,'Duplo com TV e geladeira','Simples',200,'1º andar'),(3,102,'Triplo com varanda e vista para o mar','Luxo',500,'1º andar'),(4,103,'Quádruplo com TV, geladeira e banheira de hidromassagem','Luxo',600,'1º andar'),(5,104,'Duplo com vista para o jardim','Simples',250,'1º andar'),(6,105,'Triplo com TV e ar-condicionado','Simples',300,'1º andar'),(7,106,'Individual com cama king-size','Luxo',250,'1º andar'),(8,107,'Suíte Presidencial com piscina privativa','Luxo',1500,'1º andar'),(9,108,'Duplo com vista para a montanha','Simples',220,'1º andar'),(10,109,'Individual com varanda e vista para o mar','Luxo',300,'1º andar'),(11,110,'Quádruplo com TV, geladeira e sala de estar','Luxo',700,'1º andar'),(12,200,'Duplo com TV e geladeira','Luxo',300,'2º andar'),(13,201,'Individual com TV e geladeira','Luxo',200,'2º andar'),(14,202,'Suíte de Lua de Mel com banheira de hidromassagem','Luxo',400,'2º andar'),(15,203,'Individual com TV, geladeira e vista para o jardim','Luxo',250,'2º andar'),(16,204,'Duplo com cama queen-size e vista panorâmica','Luxo',350,'2º andar'),(17,205,'Triplo com varanda e vista para a piscina','Luxo',450,'2º andar'),(18,206,'Quádruplo com TV, geladeira e varanda','Luxo',600,'2º andar'),(19,207,'Individual com banheira de hidromassagem','Luxo',300,'2º andar'),(20,208,'Duplo com TV, geladeira e vista para o lago','Simples',280,'2º andar'),(21,209,'Triplo com varanda e vista para a cidade','Simples',320,'2º andar'),(22,210,'Suíte Familiar com sala de estar e cozinha','Luxo',800,'2º andar'),(23,211,'Quádruplo com TV, geladeira e vista para o parque','Luxo',650,'2º andar'),(24,212,'Individual com varanda e vista panorâmica','Simples',280,'2º andar');
/*!40000 ALTER TABLE `quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarto_produto`
--

DROP TABLE IF EXISTS `quarto_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quarto_produto` (
  `id_qpro` int NOT NULL AUTO_INCREMENT,
  `quant_qpro` float DEFAULT NULL,
  `id_qua_fk` int NOT NULL,
  `id_pro_fk` int NOT NULL,
  PRIMARY KEY (`id_qpro`),
  KEY `id_qua_fk` (`id_qua_fk`),
  KEY `id_pro_fk` (`id_pro_fk`),
  CONSTRAINT `quarto_produto_ibfk_1` FOREIGN KEY (`id_qua_fk`) REFERENCES `quarto` (`id_qua`),
  CONSTRAINT `quarto_produto_ibfk_2` FOREIGN KEY (`id_pro_fk`) REFERENCES `produto` (`id_pro`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarto_produto`
--

LOCK TABLES `quarto_produto` WRITE;
/*!40000 ALTER TABLE `quarto_produto` DISABLE KEYS */;
INSERT INTO `quarto_produto` VALUES (1,5,1,1),(2,6,1,2),(3,8,1,4),(4,9,1,5),(5,5,1,7),(6,7,1,9),(7,5,2,1),(8,6,2,2),(9,7,2,3),(10,8,2,4),(11,9,2,5),(12,10,2,6),(13,5,3,1),(14,6,3,2),(15,6,3,8),(16,7,3,9),(17,8,3,10),(18,5,4,1),(19,6,4,2),(20,7,4,3),(21,8,4,4),(22,9,4,5),(23,5,4,7),(24,6,4,8),(25,7,4,9),(26,8,4,10),(27,5,5,1),(28,6,5,2),(29,7,5,3),(30,8,5,4),(31,9,5,5),(32,10,5,6),(33,5,5,7),(34,6,5,8),(35,7,5,9),(36,5,6,1),(37,6,6,2),(38,7,6,3),(39,8,6,4),(40,9,6,5),(41,10,6,6),(42,7,6,9),(43,8,6,10),(44,5,7,1),(45,6,7,2),(46,7,7,3),(47,8,7,4),(48,9,7,5),(49,10,7,6),(50,6,7,8),(51,7,7,9),(52,8,7,10),(53,5,8,1),(54,6,8,2),(55,7,8,3),(56,8,8,4),(57,9,8,5),(58,5,8,7),(59,6,8,8),(60,7,8,9),(61,8,8,10),(62,5,9,1),(63,6,9,2),(64,7,9,3),(65,8,9,4),(66,9,9,5),(67,5,9,7),(68,7,9,9),(69,8,9,10),(70,5,10,1),(71,6,10,2),(72,7,10,3),(73,8,10,4),(74,9,10,5),(75,10,10,6),(76,7,10,9),(77,8,10,10),(78,5,11,1),(79,6,11,2),(80,7,11,3),(81,8,11,4),(82,9,11,5),(83,10,11,6),(84,5,11,7),(85,6,11,8),(86,7,11,9),(87,8,11,10),(88,5,12,1),(89,6,12,2),(90,7,12,3),(91,8,12,4),(92,10,12,6),(93,5,12,7),(94,6,12,8),(95,7,12,9),(96,8,12,10),(97,5,13,1),(98,6,13,2),(99,7,13,3),(100,8,13,4),(101,10,13,6),(102,5,13,7),(103,7,13,9),(104,8,13,10),(105,5,14,1),(106,6,14,2),(107,7,14,3),(108,8,14,4),(109,9,14,5),(110,10,14,6),(111,5,14,7),(112,7,14,9),(113,5,15,1),(114,6,15,2),(115,7,15,3),(116,8,15,4),(117,9,15,5),(118,10,15,6),(119,5,15,7),(120,7,15,9),(121,8,15,10),(122,5,16,1),(123,6,16,2),(124,7,16,3),(125,8,16,4),(126,9,16,5),(127,10,16,6),(128,5,16,7),(129,7,16,9),(130,8,16,10),(131,5,17,1),(132,6,17,2),(133,7,17,3),(134,8,17,4),(135,5,17,7),(136,6,17,8),(137,7,17,9),(138,8,17,10),(139,5,18,1),(140,6,18,2),(141,7,18,3),(142,8,18,4),(143,9,18,5),(144,10,18,6),(145,6,18,8),(146,8,18,10),(147,5,19,1),(148,6,19,2),(149,7,19,3),(150,8,19,4),(151,9,19,5),(152,10,19,6),(153,5,19,7),(154,6,19,8),(155,5,20,1),(156,6,20,2),(157,7,20,3),(158,8,20,4),(159,9,20,5),(160,10,20,6),(161,6,20,8),(162,8,20,10),(163,5,21,1),(164,6,21,2),(165,7,21,3),(166,8,21,4),(167,5,21,7),(168,6,21,8),(169,7,21,9),(170,8,21,10),(171,10,22,6),(172,5,22,7),(173,6,23,8),(174,7,23,9),(175,8,24,10);
/*!40000 ALTER TABLE `quarto_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarto_servico_limpeza`
--

DROP TABLE IF EXISTS `quarto_servico_limpeza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quarto_servico_limpeza` (
  `id_qser` int NOT NULL AUTO_INCREMENT,
  `data_qser` date DEFAULT NULL,
  `horario_qser` time DEFAULT NULL,
  `id_qua_fk` int NOT NULL,
  `id_ser_fk` int NOT NULL,
  `id_fun_fk` int NOT NULL,
  PRIMARY KEY (`id_qser`),
  KEY `id_qua_fk` (`id_qua_fk`),
  KEY `id_ser_fk` (`id_ser_fk`),
  KEY `id_fun_fk` (`id_fun_fk`),
  CONSTRAINT `quarto_servico_limpeza_ibfk_1` FOREIGN KEY (`id_qua_fk`) REFERENCES `quarto` (`id_qua`),
  CONSTRAINT `quarto_servico_limpeza_ibfk_2` FOREIGN KEY (`id_ser_fk`) REFERENCES `servico` (`id_ser`),
  CONSTRAINT `quarto_servico_limpeza_ibfk_3` FOREIGN KEY (`id_fun_fk`) REFERENCES `funcionario` (`id_fun`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarto_servico_limpeza`
--

LOCK TABLES `quarto_servico_limpeza` WRITE;
/*!40000 ALTER TABLE `quarto_servico_limpeza` DISABLE KEYS */;
INSERT INTO `quarto_servico_limpeza` VALUES (1,'2022-04-26','14:30:00',2,4,3),(2,'2022-04-27','12:45:00',3,4,4),(3,'2022-04-28','11:15:00',4,4,5),(4,'2022-04-29','10:00:00',5,4,6),(5,'2022-04-30','09:30:00',6,4,7),(6,'2022-05-01','14:00:00',7,4,8),(7,'2022-05-02','13:30:00',8,4,9),(8,'2022-05-03','11:45:00',9,4,10),(9,'2022-05-04','10:15:00',10,4,11),(10,'2022-05-05','09:00:00',11,4,12),(11,'2022-05-06','13:45:00',12,4,13),(12,'2022-05-07','12:30:00',13,4,14),(13,'2022-05-08','11:00:00',14,4,15),(14,'2022-05-09','09:45:00',15,4,16),(15,'2022-05-10','09:15:00',16,4,12),(16,'2022-05-11','13:15:00',17,4,12),(17,'2022-05-12','12:00:00',18,4,12),(18,'2022-05-13','10:30:00',19,4,13),(19,'2022-05-14','09:30:00',20,4,7),(20,'2022-05-15','14:45:00',21,4,4);
/*!40000 ALTER TABLE `quarto_servico_limpeza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recebimento`
--

DROP TABLE IF EXISTS `recebimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recebimento` (
  `id_rec` int NOT NULL AUTO_INCREMENT,
  `data_vencimento_rec` date DEFAULT NULL,
  `valor_rec` double DEFAULT NULL,
  `parcela_rec` varchar(100) DEFAULT NULL,
  `status_rec` varchar(100) DEFAULT NULL,
  `forma_recebimento_rec` varchar(100) DEFAULT NULL,
  `data_recebimento_rec` date DEFAULT NULL,
  `id_fun_fk` int DEFAULT NULL,
  `id_cai_fk` int DEFAULT NULL,
  `id_ven_fk` int NOT NULL,
  PRIMARY KEY (`id_rec`),
  KEY `id_fun_fk` (`id_fun_fk`),
  KEY `id_cai_fk` (`id_cai_fk`),
  KEY `id_ven_fk` (`id_ven_fk`),
  CONSTRAINT `recebimento_ibfk_1` FOREIGN KEY (`id_fun_fk`) REFERENCES `funcionario` (`id_fun`),
  CONSTRAINT `recebimento_ibfk_2` FOREIGN KEY (`id_cai_fk`) REFERENCES `caixa` (`id_cai`),
  CONSTRAINT `recebimento_ibfk_3` FOREIGN KEY (`id_ven_fk`) REFERENCES `venda` (`id_ven`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recebimento`
--

LOCK TABLES `recebimento` WRITE;
/*!40000 ALTER TABLE `recebimento` DISABLE KEYS */;
INSERT INTO `recebimento` VALUES (1,'2022-06-01',100,'1/2','Fechado','Cartão Stone','2022-06-01',2,1,1),(2,'2022-07-01',100,'2/2','Aberto',NULL,NULL,NULL,NULL,1),(3,'2022-06-02',150,'1/3','Fechado','Dinheiro','2022-06-02',3,1,2),(4,'2022-07-02',150,'2/3','Aberto',NULL,NULL,NULL,NULL,2),(5,'2022-08-02',150,'3/3','Aberto',NULL,NULL,NULL,NULL,2),(6,'2022-06-03',80,'1/2','Fechado','Boleto Bancário','2022-06-03',3,1,3),(7,'2022-07-03',80,'2/2','Aberto',NULL,NULL,NULL,NULL,3),(8,'2022-06-04',200,'1/1','Fechado','Pix','2022-06-04',2,1,4),(9,'2022-06-05',90,'1/3','Fechado','Cartão Visa','2022-06-05',2,2,5),(10,'2022-07-05',90,'2/3','Aberto',NULL,NULL,NULL,NULL,5),(11,'2022-08-05',90,'3/3','Aberto',NULL,NULL,NULL,NULL,5),(12,'2022-06-06',120,'1/2','Fechado','Transferência Bancária','2022-06-06',3,2,6),(13,'2022-07-06',120,'2/2','Aberto',NULL,NULL,NULL,NULL,6),(14,'2022-06-07',300,'1/1','Fechado','Dinheiro','2022-06-07',3,3,7),(15,'2022-06-08',180,'1/2','Fechado','Boleto Bancário','2022-06-08',2,4,8),(16,'2022-07-08',180,'2/2','Aberto',NULL,NULL,NULL,NULL,8),(17,'2022-06-09',250,'1/3','Fechado','Cartão Mastercard','2022-06-09',3,5,9),(18,'2022-07-09',250,'2/3','Fechado','Cartão Mastercard','2022-07-09',3,5,9),(19,'2022-08-09',250,'3/3','Aberto',NULL,NULL,NULL,NULL,9),(20,'2022-06-10',350,'1/2','Fechado','Pix','2022-06-10',6,6,10),(21,'2022-07-10',350,'2/2','Aberto',NULL,NULL,NULL,NULL,10),(22,'2022-06-11',150,'1/1','Fechado','Transferência Bancária','2022-06-11',3,7,11),(23,'2022-06-12',80,'1/2','Fechado','Cartão Visa','2022-06-12',3,8,12),(24,'2022-07-12',80,'2/2','Aberto',NULL,NULL,NULL,NULL,12),(25,'2022-06-13',170,'1/1','Fechado','Dinheiro','2022-06-13',3,9,13),(26,'2022-06-14',90,'1/2','Fechado','Boleto Bancário','2022-06-14',2,10,14),(27,'2022-07-14',90,'2/2','Aberto',NULL,NULL,NULL,NULL,14),(28,'2022-06-15',200,'1/3','Fechado','Cartão Mastercard','2022-06-15',2,11,15),(29,'2022-07-15',200,'2/3','Fechado','Cartão Mastercard','2022-07-15',2,11,15),(30,'2022-08-15',200,'3/3','Aberto',NULL,NULL,NULL,NULL,15),(31,'2022-06-16',120,'1/1','Fechado','Pix','2022-06-16',6,11,16),(32,'2022-06-17',300,'1/2','Fechado','Transferência Bancária','2022-06-17',2,11,17),(33,'2022-07-17',300,'2/2','Aberto',NULL,NULL,NULL,NULL,17),(34,'2022-06-18',180,'1/3','Fechado','Cartão Visa','2022-06-18',3,11,18),(35,'2022-07-18',180,'2/3','Fechado','Cartão Visa','2022-07-18',3,11,18),(36,'2022-08-18',180,'3/3','Aberto',NULL,NULL,NULL,NULL,18),(37,'2022-06-19',250,'1/1','Fechado','Boleto Bancário','2022-06-19',3,11,19),(38,'2022-06-20',350,'1/2','Fechado','Dinheiro','2022-06-20',2,11,20),(39,'2022-07-20',350,'2/2','Aberto',NULL,NULL,NULL,NULL,20);
/*!40000 ALTER TABLE `recebimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `id_ser` int NOT NULL AUTO_INCREMENT,
  `nome_ser` varchar(300) NOT NULL,
  `tipo_ser` varchar(300) DEFAULT NULL,
  `valor_ser` float NOT NULL,
  PRIMARY KEY (`id_ser`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (1,'Estacionamento 12h','Estacionamento',10),(2,'Estacionamento 24h','Estacionamento',20),(3,'Lavar roupa 1PC tecido','Lavanderia',15),(4,'Lavar roupa 1PC jeans','Lavanderia',15),(5,'Limpeza de quarto','Serviços Gerais do Hotel',0);
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexo`
--

DROP TABLE IF EXISTS `sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexo` (
  `id_sex` int NOT NULL AUTO_INCREMENT,
  `nome_sex` varchar(100) NOT NULL,
  PRIMARY KEY (`id_sex`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexo`
--

LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
INSERT INTO `sexo` VALUES (1,'masculino'),(2,'feminino');
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `id_ven` int NOT NULL AUTO_INCREMENT,
  `data_ven` date DEFAULT NULL,
  `forma_receb_ven` varchar(300) DEFAULT NULL,
  `valor_produtos_ven` float DEFAULT NULL,
  `valor_servicos_ven` float DEFAULT NULL,
  `valor_hospedagem_ven` float DEFAULT NULL,
  `valor_total_ven` float NOT NULL,
  `id_hosp_fk` int NOT NULL,
  `id_fun_fk` int NOT NULL,
  PRIMARY KEY (`id_ven`),
  KEY `id_hosp_fk` (`id_hosp_fk`),
  KEY `id_fun_fk` (`id_fun_fk`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`id_hosp_fk`) REFERENCES `hospedagem` (`id_hosp`),
  CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`id_fun_fk`) REFERENCES `funcionario` (`id_fun`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,'2022-04-20','Cartão de crédito',30,0,1040,1070,1,2),(2,'2022-04-24','Dinheiro',15.5,20,600,635.5,2,3),(3,'2022-04-26','Cartão de débito',40,30,1500,1570,3,3),(4,'2022-04-28','Dinheiro',30,15,1200,1245,4,2),(5,'2022-04-30','Cartão de crédito',34.5,0,1250,1284.5,5,3),(6,'2022-05-02','Cartão de crédito',30,10,600,640,6,3),(7,'2022-05-04','Dinheiro',36,20,1000,1056,7,3),(8,'2022-05-06','Cartão de débito',60,10,4500,4570,8,3),(9,'2022-05-08','Dinheiro',30,40,220,290,9,3),(10,'2022-05-10','Cartão de crédito',37,10,600,647,10,2),(11,'2022-05-12','Cartão de crédito',60,20,4200,4280,11,2),(12,'2022-05-14','Dinheiro',24,20,600,644,12,2),(13,'2022-05-16','Dinheiro',0,0,400,400,13,2),(14,'2022-05-18','Cartão de débito',0,10,800,810,14,3),(15,'2022-05-20','Cartão de crédito',0,30,500,530,15,3),(16,'2022-05-22','Dinheiro',0,0,2100,2100,16,2),(17,'2022-05-24','Dinheiro',0,20,1350,1370,17,2),(18,'2022-05-26','Cartão de crédito',0,10,1800,1810,18,2),(19,'2022-05-28','Cartão de crédito',0,20,600,620,19,2),(20,'2022-05-30','Dinheiro',0,10,280,290,20,2),(21,'2022-06-01','Cartão de crédito',0,0,0,0,21,2),(22,'2022-06-05','Cartão de crédito',0,0,0,0,23,3),(23,'2022-06-07','Cartão de débito',0,0,0,0,24,3);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda_produto`
--

DROP TABLE IF EXISTS `venda_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda_produto` (
  `id_vpro` int NOT NULL AUTO_INCREMENT,
  `quant_vpro` float DEFAULT NULL,
  `id_ven_fk` int NOT NULL,
  `id_pro_fk` int NOT NULL,
  PRIMARY KEY (`id_vpro`),
  KEY `id_ven_fk` (`id_ven_fk`),
  KEY `id_pro_fk` (`id_pro_fk`),
  CONSTRAINT `venda_produto_ibfk_1` FOREIGN KEY (`id_ven_fk`) REFERENCES `venda` (`id_ven`),
  CONSTRAINT `venda_produto_ibfk_2` FOREIGN KEY (`id_pro_fk`) REFERENCES `produto` (`id_pro`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda_produto`
--

LOCK TABLES `venda_produto` WRITE;
/*!40000 ALTER TABLE `venda_produto` DISABLE KEYS */;
INSERT INTO `venda_produto` VALUES (1,3,1,1),(2,2,2,2),(3,1,2,3),(4,4,3,4),(5,2,4,5),(6,3,4,6),(7,1,5,7),(8,5,5,8),(9,2,6,9),(10,3,7,10),(11,4,8,11),(12,1,8,12),(13,2,8,13),(14,3,9,14),(15,4,10,1),(16,2,10,2),(17,1,10,5),(18,5,11,10),(19,3,12,1),(20,1,12,8),(21,2,1,1);
/*!40000 ALTER TABLE `venda_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda_servico`
--

DROP TABLE IF EXISTS `venda_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda_servico` (
  `id_vser` int NOT NULL AUTO_INCREMENT,
  `quant_vser` float DEFAULT NULL,
  `id_ven_fk` int NOT NULL,
  `id_ser_fk` int NOT NULL,
  PRIMARY KEY (`id_vser`),
  KEY `id_ven_fk` (`id_ven_fk`),
  KEY `id_ser_fk` (`id_ser_fk`),
  CONSTRAINT `venda_servico_ibfk_1` FOREIGN KEY (`id_ven_fk`) REFERENCES `venda` (`id_ven`),
  CONSTRAINT `venda_servico_ibfk_2` FOREIGN KEY (`id_ser_fk`) REFERENCES `servico` (`id_ser`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda_servico`
--

LOCK TABLES `venda_servico` WRITE;
/*!40000 ALTER TABLE `venda_servico` DISABLE KEYS */;
INSERT INTO `venda_servico` VALUES (1,1,2,2),(2,2,3,3),(3,1,4,4),(4,2,5,5),(5,1,6,1),(6,2,7,1),(7,1,8,1),(8,2,9,2),(9,1,10,1),(10,2,11,1),(11,1,12,2),(12,2,13,5),(13,1,14,1),(14,2,15,4),(15,1,16,5),(16,2,17,1),(17,1,18,1),(18,2,19,1),(19,1,20,1);
/*!40000 ALTER TABLE `venda_servico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-04  8:18:45

#1. Selecione o id e data do checkin e checkout da hospedagens, o nome e cpf dos hospedes, o tipo do hospede na hospedagem e o nome do funcionario que atendeu a hospedagem. Selecione apenas as hospedagens com checkin entre os meses de abril e maio de 2022. Por fim ordene pelo Nome do Hospede.
SELECT
hospedagem.id_hosp AS ID,
hospedagem.checkin_hosp AS Checkin,
hospedagem.checkout_hosp AS Checkout,
hospede.nome_hos AS Nome,
hospede.cpf_hos AS Cpf,
hospedagem_hospede.tipo_hhos AS Tipo,
funcionario.nome_fun AS Funcionario
FROM hospedagem AS hospedagem
INNER JOIN hospedagem_hospede AS hospedagem_hospede ON
(hospedagem.id_hosp = hospedagem_hospede.id_hosp_fk)
INNER JOIN hospede AS hospede ON
(hospedagem_hospede.id_hos_fk = hospede.id_hos)
INNER JOIN hospedagem_funcionarios AS hospedagem_funcionarios ON
(hospedagem.id_hosp = hospedagem_funcionarios.id_hosp_fk)
INNER JOIN funcionario AS funcionario ON
(hospedagem_funcionarios.id_fun_fk = funcionario.id_fun)
WHERE hospedagem.checkin_hosp BETWEEN '2022-04-01' AND '2022-05-31'
AND hospedagem_funcionarios.atuacao_hfunc = 'Checkin'
ORDER BY hospede.nome_hos;

#2. Selecione os nomes e cpf dos hospedes, o tipo do hospede na hospedagem, o numero, tipo e andar do quarto e a data de inicio e fim da hospedagem no quarto. Você também deverá mostrar a quantidade de dias que o cliente ficou no quarto (data fim - data inicio), o valor do quarto. Ordene pelo numero do quarto.
SELECT
hospede.nome_hos AS Nome,
hospede.cpf_hos AS Cpf,
hospedagem_hospede.tipo_hhos AS Tipo,
quarto.numero_qua AS Numero,
quarto.tipo_qua AS Tipo_Quarto,
quarto.andar_qua AS Andar,
hospedagem_quarto.data_inicio_hqua AS Data_Inicio,
hospedagem_quarto.data_fim_hqua AS Data_Fim,
DATEDIFF(hospedagem_quarto.data_fim_hqua, hospedagem_quarto.data_inicio_hqua) AS Dias,
quarto.valor_qua AS Valor
FROM hospede AS hospede
INNER JOIN hospedagem_hospede AS hospedagem_hospede ON
(hospede.id_hos = hospedagem_hospede.id_hos_fk)
INNER JOIN hospedagem_quarto AS hospedagem_quarto ON
(hospedagem_hospede.id_hosp_fk = hospedagem_quarto.id_hosp_fk)
INNER JOIN quarto AS quarto ON
(hospedagem_quarto.id_qua_fk = quarto.id_qua)
ORDER BY quarto.numero_qua;

#3. Selecione o numero, descricao e tipo do quarto, o nome e valor do produto e a quantidado do produto disponível no quarto. Ordene pelo numero do quarto.
SELECT
quarto.numero_qua AS Numero,
quarto.descricao_qua AS Descricao,
quarto.tipo_qua AS Tipo,
produto.nome_pro AS Produto,
produto.valor_pro AS Valor,
quarto_produto.quant_qpro AS Quantidade
FROM quarto AS quarto
INNER JOIN quarto_produto AS quarto_produto ON
(quarto.id_qua = quarto_produto.id_qua_fk)
INNER JOIN produto AS produto ON
(quarto_produto.id_pro_fk = produto.id_pro)
ORDER BY quarto.numero_qua;

#4. Crie uma VIEW chamada Top_Quarto_Utilizado que mostre o numero, tipo e valor do quarto mais caro do Hotel. Depois faça uma consulta na visão usando duas condições.
CREATE VIEW Top_Quarto_Utilizado AS
SELECT
quarto.numero_qua AS Numero,
quarto.tipo_qua AS Tipo,
quarto.valor_qua AS Valor
FROM quarto AS quarto
WHERE quarto.valor_qua = (
SELECT MAX(quarto.valor_qua)
FROM quarto AS quarto
);

SELECT
Top_Quarto_Utilizado.Numero AS Numero,
Top_Quarto_Utilizado.Tipo AS Tipo,
Top_Quarto_Utilizado.Valor AS Valor
FROM Top_Quarto_Utilizado
WHERE Top_Quarto_Utilizado.Tipo = 'Luxo'
AND Top_Quarto_Utilizado.Valor > 500;

#5. Selecione o número do quarto (numero_qua), o tipo do quarto (tipo_qua), a data da limpeza (data_qser) e o horário da limpeza (horario_qser). Utilize a cláusula LEFT JOIN para garantir que os quartos sem limpeza também apareçam no resultado. Ordene o resultado pelo número do quarto.
SELECT
quarto.numero_qua AS Numero,
quarto.tipo_qua AS Tipo,
quarto_servico_limpeza.data_qser AS Data_Limpeza,
quarto_servico_limpeza.horario_qser AS Horario_Limpeza
FROM quarto AS quarto
LEFT JOIN quarto_servico_limpeza AS quarto_servico_limpeza ON
(quarto.id_qua = quarto_servico_limpeza.id_qua_fk)
ORDER BY quarto.numero_qua;
