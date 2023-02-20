-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: 3re_agency
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `garage`
--

DROP TABLE IF EXISTS `garage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garage` (
  `idGarage` int NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `capacite` int NOT NULL,
  `idLogement` int DEFAULT NULL,
  PRIMARY KEY (`idGarage`),
  KEY `idLogement` (`idLogement`),
  CONSTRAINT `garage_ibfk_1` FOREIGN KEY (`idLogement`) REFERENCES `logement` (`idLogement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garage`
--

LOCK TABLES `garage` WRITE;
/*!40000 ALTER TABLE `garage` DISABLE KEYS */;
INSERT INTO `garage` VALUES (1,'10 avenue Montaigne Paris France',1,2),(2,'30 avenue de la Fontaine Marseille France',2,4),(3,'numero 10 del cartelito Barcelone Espagne',3,6),(4,'19 avenue Henri Barbusse Ivry France',1,8),(5,'7 rue du Général de Gaulle Rennes France',2,10),(6,'10 tea street London England',5,12),(7,'20 rue des martyrs Lille France',2,14),(8,'942 rue de Dakar Senegal',1,16),(9,'120 avenue de Karl Marx Moscou Russie',4,18),(10,'75 impasse de la rue Villejuif France',1,20);
/*!40000 ALTER TABLE `garage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logement`
--

DROP TABLE IF EXISTS `logement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logement` (
  `idLogement` int NOT NULL,
  `nomPropriétaire` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `surfaceHabitable` int NOT NULL,
  `etatHabitation` varchar(255) NOT NULL,
  `objectifLogement` varchar(255) NOT NULL,
  `dateDisponibilite` date NOT NULL,
  `nbPieces` int NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `idPersonne` int DEFAULT NULL,
  PRIMARY KEY (`idLogement`),
  KEY `idPersonne` (`idPersonne`),
  CONSTRAINT `logement_ibfk_1` FOREIGN KEY (`idPersonne`) REFERENCES `personne` (`idPersonne`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logement`
--

LOCK TABLES `logement` WRITE;
/*!40000 ALTER TABLE `logement` DISABLE KEYS */;
INSERT INTO `logement` VALUES (1,'Adam EL Karki','appartement',70,'bon état','location','2022-01-01',3,'10 avenue henri barbusse Ivry France',21),(2,'Ayoub Ben Fraj','maison',150,'à rénover','vente','2022-01-01',4,'10 avenue Montaigne Paris France',22),(3,'Clarence Seedorf','appartement',55,'très bon état','vente','2022-01-01',2,'14 toz straat Amsterdam Netherlands',23),(4,'Dupont Roger','maison',180,'bon état','vente','2022-01-01',3,'30 avenue de la Fontaine Marseille France',24),(5,'Marc Dupont','appartement',45,'neuf','vente','2022-01-01',1,'80 rue Jean Jacques Reims France',25),(6,'Gringo loco','maison',220,'très bon état','vente','2022-01-01',4,'numero 10 del cartelito Barcelone Espagne',26),(7,'Manuel Macaron','appartement',80,'très bon état','location','2022-01-01',3,'2 avenue des Champs-Elysés Paris',27),(8,'Arnaud De La Fuente','maison',170,'bon état','vente','2022-01-01',4,'19 avenue Henri Barbusse Ivry France',28),(9,'Enzo Bellisimo','appartement',170,'bon état','vente','2022-01-01',3,'27 strada de Sicilia Milano Italia',29),(10,'Alain Teryeur','maison',300,'très bon état','vente','2022-01-01',5,'7 rue du Général de Gaulle Rennes France',30),(11,'Alex Teryeur','appartement',120,'bon état','location','2022-01-01',3,'8 avenue Foch Paris France',31),(12,'Boris Johnson','maison',100,'à rénover','vente','2022-01-01',3,'10 tea street London England',32),(13,'Jean Neymar','appartement',140,'à rénover','location','2022-01-01',4,'50 selecao obrigado Rio Brasil',33),(14,'Lésa Rabedeor','maison',230,'neuf','vente','2022-01-01',5,'20 rue des martyrs Lille France',34),(15,'Gonzalez de la Fuente','appartement',100,'bon état','location','2022-01-01',2,'8 calle del fuego Mexico Mexico',35),(16,'Fris Korleon','maison',500,'bon état','vente','2022-01-01',6,'942 rue de Dakar Senegal',36),(17,'Nacer El Karki','appartement',100,'neuf','location','2022-01-01',2,'10 boulevard Stalingrad Paris France',37),(18,'Igor Vladimir','maison',185,'à rénover','vente','2022-01-01',4,'120 avenue de Karl Marx Moscou Russie',38),(19,'Shot Louf','appartement',50,'bon état','location','2022-01-01',1,'10 rue du gmod Paris France',39),(20,'Adam EL Karki','maison',720,'neuf','vente','2022-01-01',7,'75 impasse de la rue Villejuif France',40);
/*!40000 ALTER TABLE `logement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personne`
--

DROP TABLE IF EXISTS `personne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personne` (
  `idPersonne` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  PRIMARY KEY (`idPersonne`),
  UNIQUE KEY `nom_UNIQUE` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personne`
--

LOCK TABLES `personne` WRITE;
/*!40000 ALTER TABLE `personne` DISABLE KEYS */;
INSERT INTO `personne` VALUES (1,'Adam El Karki','06 avenue Montaigne Paris'),(2,'Ayoub Ben Fraj','07 avenue Montaigne Paris'),(3,'Clarence Seedorf','1 toz straat Amsterdam Netherlands'),(4,'Dupont Roger','28 avenue de la Fontaine Marseille France'),(5,'Marc Dupont','45 bis rue Jean Jacques Reims France'),(6,'Gringo loco','1 calle de puto Barcelone Espagne'),(7,'Manuel Macaron','1 avenue des champs-Elysés Paris France'),(8,'Arnaud De La Fuente','18 avenue henri barbusse Ivry-Sur-Seine France'),(9,'Enzo Bellisimo','25 strada de Milano Italia'),(10,'Alain Teryeur','4 rue du Général de Gaulle Rennes France'),(11,'Alex Teryeur','7 avenue Montaigne Paris'),(12,'Boris Johnson','1 tea Street London England'),(13,'Jean Neymar','47 selecao obrigado Rio Brasil'),(14,'Lésa Rabedeor','10 rue de la golri Lille France'),(15,'Gonzalez de la Fuente','7 calle de la muerte Mexico Mexico'),(16,'Fris Korleon','667 boulevard de Dakar Senegal'),(17,'Nacer El Karki','1 boulevard Stalingrad Paris France'),(18,'Igor Vladimir','80 avenue de Staline Moscou Russie'),(19,'Shot Louf','1 avenue du général arma Paris France'),(20,'Cépa Nourmale','94 impasse de la rue Vitry France'),(21,'Manon Renard','78 place Saint-Honoré Amiens France'),(22,'Ambre LeGall','3607 rue de Montmorency Créteil France'),(23,'Nicolas Vasseur','54 Avenue Charlemagne Antony France'),(24,'Marie Moulin','8 Avenue de la Victoire Avignon France'),(25,'Océane Blanchard','10 Rue D\'Abbeville Bordeaux France'),(26,'Nicolas Lola','06 Quai Royale Amiens France'),(27,'Gérard Ambre','4586 Allé, Voie de Richelieu Paris France'),(28,'Maeva Robert','313 impasse La Boétie Paris France'),(29,'Baptiste Tuta','10 calle de la roja Madrid Espagna'),(30,'Jean Baptiste','66 Avenue Saint-Jacques Sarcelles France'),(31,'Jeanne Dark','75 impasse de la Seine Paris France'),(32,'John Papa','50 avenue de la Poésie Rouen France'),(33,'Lukas Ruebbelke','310 Impaase des Coquillages Valence France'),(34,'Todd Motto','1270 rue de la Bavette Sevrans France'),(35,'Jayson Tatum','1 rue de Boston New-York Etats-Unis'),(36,'Kevin James','2781 avenue de l\'indépendance Rio Brasil'),(37,'Lebron Durant','5189 boulevard des gentils Miami Etats-Unis'),(38,'Luca Young','2 impasse des hawks Mexico Mexico'),(39,'Vladimir Cachemir','294 rue du froid Moscou Russie'),(40,'Lasère Mie','6532 boulvard de la mer Dakar Senegal');
/*!40000 ALTER TABLE `personne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `idLogement` int NOT NULL,
  `idPersonne` int NOT NULL,
  `idPersonne_1` int NOT NULL,
  `prixLocation` int DEFAULT NULL,
  `prixCommission` int DEFAULT NULL,
  `prixAchat` int DEFAULT NULL,
  PRIMARY KEY (`idLogement`,`idPersonne`,`idPersonne_1`),
  KEY `idPersonne` (`idPersonne`),
  KEY `idPersonne_1` (`idPersonne_1`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`idLogement`) REFERENCES `logement` (`idLogement`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`idPersonne`) REFERENCES `personne` (`idPersonne`),
  CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`idPersonne_1`) REFERENCES `personne` (`idPersonne`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,1,21,1400,0,0),(2,2,22,0,1000,200000),(3,3,23,1400,0,0),(4,4,24,0,1000,200000),(5,5,25,1400,0,0),(6,6,26,0,1000,200000),(7,7,27,1400,0,0),(8,8,28,0,1000,200000),(9,9,29,1400,0,0),(10,10,30,0,1000,200000),(11,11,31,1400,0,0),(12,12,32,0,1000,200000),(13,13,33,1400,0,0),(14,14,34,0,1000,200000),(15,15,35,1400,0,0),(16,16,36,0,1000,200000),(17,17,37,1400,0,0),(18,18,38,0,1000,200000),(19,19,39,1400,0,0),(20,20,40,0,1000,200000);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visite`
--

DROP TABLE IF EXISTS `visite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visite` (
  `idLogement` int NOT NULL,
  `idPersonne` int NOT NULL,
  `dateVisite` date DEFAULT NULL,
  PRIMARY KEY (`idLogement`,`idPersonne`),
  KEY `idPersonne` (`idPersonne`),
  CONSTRAINT `visite_ibfk_1` FOREIGN KEY (`idLogement`) REFERENCES `logement` (`idLogement`),
  CONSTRAINT `visite_ibfk_2` FOREIGN KEY (`idPersonne`) REFERENCES `personne` (`idPersonne`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visite`
--

LOCK TABLES `visite` WRITE;
/*!40000 ALTER TABLE `visite` DISABLE KEYS */;
INSERT INTO `visite` VALUES (1,8,'2022-01-01'),(1,25,'2022-01-01'),(2,8,'2022-01-01'),(2,24,'2022-01-01'),(3,7,'2022-01-01'),(3,21,'2022-01-01'),(4,27,'2022-01-01'),(5,22,'2022-01-01'),(5,28,'2022-01-01'),(5,40,'2022-01-01'),(6,26,'2022-01-01'),(8,23,'2022-01-01'),(8,39,'2022-01-01'),(9,38,'2022-01-01'),(10,37,'2022-01-01'),(12,36,'2022-01-01'),(13,35,'2022-01-01'),(14,34,'2022-01-01'),(15,32,'2022-01-01'),(15,33,'2022-01-01'),(18,29,'2022-01-01'),(19,31,'2022-01-01'),(20,30,'2022-01-01');
/*!40000 ALTER TABLE `visite` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-03 14:57:00
