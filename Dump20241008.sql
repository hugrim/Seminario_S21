CREATE DATABASE  IF NOT EXISTS `sliga_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sliga_db`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: sliga_db
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `categoriaId` int NOT NULL,
  `anioCategoria` int DEFAULT NULL,
  `apellidoNombreJugador` char(50) DEFAULT NULL,
  `nombreEquipo` char(50) DEFAULT NULL,
  PRIMARY KEY (`categoriaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,2012,'Juan Perez','Equipo A'),(2,2012,'Maria Lopez','Equipo B'),(3,2012,'Carlos Ruiz','Equipo C'),(4,2013,'Laura Gomez','Equipo D'),(5,2013,'Javier Martinez','Equipo E'),(6,2013,'Sofia Hernandez','Equipo F'),(7,2016,'Ricardo Alvarez','Equipo G'),(8,2016,'Elena Torres','Equipo H'),(9,2016,'Victor Ramírez','Equipo I'),(10,2017,'Ana Silva','Equipo J');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinador`
--

DROP TABLE IF EXISTS `coordinador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coordinador` (
  `coordinadorId` int NOT NULL,
  `apellidoNombre` char(100) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `dni` int DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `direccion` char(100) DEFAULT NULL,
  `provincia` char(50) DEFAULT NULL,
  `codigoPostal` char(10) DEFAULT NULL,
  `telefono` bigint DEFAULT NULL,
  `email` char(100) DEFAULT NULL,
  `directorTecnicoFanatico` char(100) DEFAULT NULL,
  `hinchaClub` char(50) DEFAULT NULL,
  PRIMARY KEY (`coordinadorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinador`
--

LOCK TABLES `coordinador` WRITE;
/*!40000 ALTER TABLE `coordinador` DISABLE KEYS */;
INSERT INTO `coordinador` VALUES (1,'Antonio Díaz','1980-05-15',12345678,'M','Calle Falsa 123','Buenos Aires','1000',1123456789,'antonio.diaz@example.com','Club A','Club A'),(2,'Claudia Sánchez','1985-08-25',23456789,'F','Avenida Siempre Viva 742','CABA','2000',1123456788,'claudia.sanchez@example.com','Club B','Club B'),(3,'Eduardo Martín','1975-12-30',34567890,'M','Calle Verdadera 456','CABA','3000',1123456787,'eduardo.martin@example.com','Club C','Club C');
/*!40000 ALTER TABLE `coordinador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo` (
  `equipoId` int NOT NULL,
  `nombreEquipo` char(50) DEFAULT NULL,
  `categoriaEquipo` int DEFAULT NULL,
  `apellidoNombreJugador` char(50) DEFAULT NULL,
  `nroCamisetaJugador` int DEFAULT NULL,
  PRIMARY KEY (`equipoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES (1,'Equipo A',1,'Juan Perez',10),(2,'Equipo B',2,'Maria Lopez',9),(3,'Equipo C',3,'Carlos Ruiz',8),(4,'Equipo D',4,'Laura Gomez',7),(5,'Equipo E',5,'Javier Martinez',6),(6,'Equipo F',6,'Sofia Hernandez',5),(7,'Equipo G',7,'Ricardo Alvarez',4),(8,'Equipo H',8,'Elena Torres',3),(9,'Equipo I',9,'Victor Ramírez',2),(10,'Equipo J',10,'Ana Silva',1);
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixture`
--

DROP TABLE IF EXISTS `fixture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fixture` (
  `fixtureId` int NOT NULL,
  `posicionEquipo` int DEFAULT NULL,
  `nombreEquipo` char(50) DEFAULT NULL,
  `puntosEquipo` int DEFAULT NULL,
  `nroPartidosGanados` int DEFAULT NULL,
  `nroPartidosEmpatados` int DEFAULT NULL,
  `nroPartidosPerdidos` int DEFAULT NULL,
  `cantidadGolesAFavor` int DEFAULT NULL,
  `cantidadGolesenContra` int DEFAULT NULL,
  `diferenciadeGol` int DEFAULT NULL,
  `ligaId` int DEFAULT NULL,
  PRIMARY KEY (`fixtureId`),
  KEY `ligaId` (`ligaId`),
  CONSTRAINT `fixture_ibfk_1` FOREIGN KEY (`ligaId`) REFERENCES `liga` (`ligaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixture`
--

LOCK TABLES `fixture` WRITE;
/*!40000 ALTER TABLE `fixture` DISABLE KEYS */;
INSERT INTO `fixture` VALUES (1,1,'Equipo A',0,0,0,0,0,0,0,1),(2,2,'Equipo B',0,0,0,0,0,0,0,1),(3,3,'Equipo C',0,0,0,0,0,0,0,2),(4,4,'Equipo D',0,0,0,0,0,0,0,2);
/*!40000 ALTER TABLE `fixture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador`
--

DROP TABLE IF EXISTS `jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador` (
  `jugadorId` int NOT NULL,
  `apellidoNombre` char(100) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `dni` int DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `direccion` char(100) DEFAULT NULL,
  `provincia` char(50) DEFAULT NULL,
  `codigoPostal` char(10) DEFAULT NULL,
  `telefono` bigint DEFAULT NULL,
  `email` char(100) DEFAULT NULL,
  `categoriaJugador` int DEFAULT NULL,
  `equipoAsignado` int DEFAULT NULL,
  `nroCamisetaJugador` int DEFAULT NULL,
  `hinchaClub` char(50) DEFAULT NULL,
  PRIMARY KEY (`jugadorId`),
  KEY `categoriaJugador` (`categoriaJugador`),
  KEY `equipoAsignado` (`equipoAsignado`),
  CONSTRAINT `jugador_ibfk_1` FOREIGN KEY (`categoriaJugador`) REFERENCES `categoria` (`categoriaId`),
  CONSTRAINT `jugador_ibfk_2` FOREIGN KEY (`equipoAsignado`) REFERENCES `equipo` (`equipoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (1,'Lucas Fernández','2000-01-15',12345601,'M','Calle Cuatro 404','Buenos Aires','1000',1123456783,'lucas.fernandez@example.com',1,2,10,'Club A'),(2,'Marta González','2001-02-20',12345602,'F','Calle Cinco 505','CABA','2000',1123456784,'marta.gonzalez@example.com',2,2,11,'Club B'),(3,'Daniel Ramírez','2002-03-25',12345603,'M','Calle Seis 606','CABA','3000',1123456785,'daniel.ramirez@example.com',3,3,8,'Club B'),(6,'Valentina Silva','2000-06-15',12345606,'F','Calle Nueve 909','CABA','3000',1123456788,'valentina.silva@example.com',3,3,5,'Club C'),(7,'Pablo López','2001-07-20',12345607,'M','Calle Diez 1010','Buenos Aires','1000',1123456789,'pablo.lopez@example.com',1,1,4,'Club A'),(8,'Sofia Morales','1998-08-25',12345608,'F','Calle Once 1111','CABA','2000',1123456790,'sofia.morales@example.com',2,2,3,'Club B'),(9,'Ricardo Alvarado','2000-09-30',12345609,'M','Calle Doce 1212','CABA','3000',1123456791,'ricardo.alvarado@example.com',3,3,2,'Club C'),(10,'Ana Torres','1997-10-10',12345610,'F','Calle Trece 1313','Buenos Aires','1000',1123456792,'ana.torres@example.com',1,1,1,'Club A');
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liga`
--

DROP TABLE IF EXISTS `liga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liga` (
  `ligaId` int NOT NULL,
  `nombreLiga` char(100) DEFAULT NULL,
  `nroFechaLiga` int DEFAULT NULL,
  `equipoLocal` int DEFAULT NULL,
  `equipoVisitante` int DEFAULT NULL,
  `categoriaJugador` int DEFAULT NULL,
  `fechaPartidoLiga` date DEFAULT NULL,
  `horaPartidoLiga` int DEFAULT NULL,
  `equipoGanadorPartidoAsignado` int DEFAULT NULL,
  `nroCamisetaJugador` int DEFAULT NULL,
  `golesEquipoLocal` int DEFAULT NULL,
  `golesEquipoVisitante` int DEFAULT NULL,
  PRIMARY KEY (`ligaId`),
  KEY `equipoLocal` (`equipoLocal`),
  KEY `equipoVisitante` (`equipoVisitante`),
  KEY `categoriaJugador` (`categoriaJugador`),
  CONSTRAINT `liga_ibfk_1` FOREIGN KEY (`equipoLocal`) REFERENCES `equipo` (`equipoId`),
  CONSTRAINT `liga_ibfk_2` FOREIGN KEY (`equipoVisitante`) REFERENCES `equipo` (`equipoId`),
  CONSTRAINT `liga_ibfk_3` FOREIGN KEY (`categoriaJugador`) REFERENCES `categoria` (`categoriaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liga`
--

LOCK TABLES `liga` WRITE;
/*!40000 ALTER TABLE `liga` DISABLE KEYS */;
INSERT INTO `liga` VALUES (1,'Liga Nacional',1,1,2,1,'2024-05-01',18,NULL,NULL,0,0),(2,'Liga Nacional',2,3,4,2,'2024-05-02',19,NULL,NULL,0,0),(3,'BundesLiga',3,4,5,3,'2024-05-02',19,NULL,NULL,0,0);
/*!40000 ALTER TABLE `liga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor` (
  `profesorId` int NOT NULL,
  `apellidoNombre` char(100) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `dni` int DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `direccion` char(100) DEFAULT NULL,
  `provincia` char(50) DEFAULT NULL,
  `codigoPostal` char(10) DEFAULT NULL,
  `telefono` bigint DEFAULT NULL,
  `email` char(100) DEFAULT NULL,
  `categoriaDirigida` int DEFAULT NULL,
  `equipoAsignado` int DEFAULT NULL,
  `directorTecnicoFanatico` char(100) DEFAULT NULL,
  `hinchaClub` char(50) DEFAULT NULL,
  PRIMARY KEY (`profesorId`),
  KEY `equipoAsignado` (`equipoAsignado`),
  CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`equipoAsignado`) REFERENCES `equipo` (`equipoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (3,'Roberto Díaz','1978-11-11',76543210,'M','Calle Tres 303','CABA','3000',1123456782,'roberto.diaz@newexample.com',3,3,'Club C','Club C');
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08  1:38:51
