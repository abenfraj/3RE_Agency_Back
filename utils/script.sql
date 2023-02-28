DROP TABLE IF EXISTS Personne
CREATE TABLE Personne(
   idPersonne INT,
   nom VARCHAR(255) NOT NULL,
   adresse VARCHAR(255) NOT NULL,
   PRIMARY KEY(idPersonne)
);

DROP TABLE IF EXISTS Logement
CREATE TABLE Logement(
   idLogement INT,
   nomPropriétaire VARCHAR(255) NOT NULL,
   type VARCHAR(50) NOT NULL,
   surfaceHabitable INT NOT NULL,
   etatHabitation VARCHAR(255) NOT NULL,
   objectifLogement VARCHAR(255) NOT NULL,
   dateDisponibilite DATE NOT NULL,
   nbPieces INT NOT NULL,
   adresse VARCHAR(255) NOT NULL,
   idPersonne INT,
   PRIMARY KEY(idLogement),
   FOREIGN KEY(idPersonne) REFERENCES Personne(idPersonne)
);

DROP TABLE IF EXISTS Garage
CREATE TABLE Garage(
   idGarage INT,
   adresse VARCHAR(255) NOT NULL,
   capacite INT NOT NULL,
   idLogement INT,
   PRIMARY KEY(idGarage),
   FOREIGN KEY(idLogement) REFERENCES Logement(idLogement)
);

DROP TABLE IF EXISTS Transaction
CREATE TABLE Transaction(
   idLogement INT,
   idPersonne INT,
   idPersonne_1 INT,
   prixLocation INT,
   prixCommission INT,
   prixAchat INT,
   PRIMARY KEY(idLogement, idPersonne, idPersonne_1),
   FOREIGN KEY(idLogement) REFERENCES Logement(idLogement),
   FOREIGN KEY(idPersonne) REFERENCES Personne(idPersonne),
   FOREIGN KEY(idPersonne_1) REFERENCES Personne(idPersonne)
);

DROP TABLE IF EXISTS Visite
CREATE TABLE Visite(
   idLogement INT,
   idPersonne INT,
   dateVisite DATE,
   PRIMARY KEY(idLogement, idPersonne),
   UNIQUE(dateVisite),
   FOREIGN KEY(idLogement) REFERENCES Logement(idLogement),
   FOREIGN KEY(idPersonne) REFERENCES Personne(idPersonne)
);

-- Insertion des données (20 insertions par table)
-- TABLE Personne
-- Insertion des propriétaires 

INSERT INTO personne VALUES (1,'Adam El Karki','06 avenue Montaigne Paris');
INSERT INTO personne VALUES (2,'Ayoub Ben Fraj','07 avenue Montaigne Paris');
INSERT INTO personne VALUES (3,'Clarence Seedorf','1 toz straat Amsterdam Netherlands');
INSERT INTO personne VALUES (4,'Dupont Roger','28 avenue de la Fontaine Marseille France');
INSERT INTO personne VALUES (5,'Marc Dupont','45 bis rue Jean Jacques Reims France');
INSERT INTO personne VALUES (6,'Gringo loco','1 calle de puto Barcelone Espagne');
INSERT INTO personne VALUES (7,'Manuel Macaron','1 avenue des champs-Elysés Paris France');
INSERT INTO personne VALUES (8,'Arnaud De La Fuente','18 avenue henri barbusse Ivry-Sur-Seine France');
INSERT INTO personne VALUES (9,'Enzo Bellisimo','25 strada de Milano Italia');
INSERT INTO personne VALUES (10,'Alain Teryeur','4 rue du Général de Gaulle Rennes France');
INSERT INTO personne VALUES (11,'Alex Teryeur','7 avenue Montaigne Paris');
INSERT INTO personne VALUES (12,'Boris Johnson','1 tea Street London England');
INSERT INTO personne VALUES (13,'Jean Neymar','47 selecao obrigado Rio Brasil');
INSERT INTO personne VALUES (14,'Lésa Rabedeor','10 rue de la golri Lille France');
INSERT INTO personne VALUES (15,'Gonzalez de la Fuente','7 calle de la muerte Mexico Mexico');
INSERT INTO personne VALUES (16,'Fris Korleon','667 boulevard de Dakar Senegal');
INSERT INTO personne VALUES (17,'Nacer El Karki','1 boulevard Stalingrad Paris France');
INSERT INTO personne VALUES (18,'Igor Vladimir','80 avenue de Staline Moscou Russie');
INSERT INTO personne VALUES (19,'Shot Louf','1 avenue du général arma Paris France');

-- Insetion de 20 personnes à la recherche de logement.
INSERT INTO personne VALUES (20,'Cépa Nourmale','94 impasse de la rue Vitry France');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('21', 'Manon Renard', '78 place Saint-Honoré Amiens France');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('22', 'Ambre LeGall', '3607 rue de Montmorency Créteil France');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('23', 'Nicolas Vasseur', '54 Avenue Charlemagne Antony France');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('24', 'Marie Moulin', '8 Avenue de la Victoire Avignon France');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('25', 'Océane Blanchard', '10 Rue D\'Abbeville Bordeaux France');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('26', 'Nicolas Lola', '06 Quai Royale Amiens France');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('27', 'Gérard Ambre', '4586 Allé, Voie de Richelieu Paris France');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('28', 'Maeva Robert', '313 impasse La Boétie Paris France');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('29', 'Baptiste Tuta', '10 calle de la roja Madrid Espagna');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('30', 'Jean Baptiste', '66 Avenue Saint-Jacques Sarcelles France');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('31 ', 'Jeanne Dark', '75 impasse de la Seine Paris France');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('32', 'John Papa', '50 avenue de la Poésie Rouen France');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('33', 'Lukas Ruebbelke', '310 Impaase des Coquillages Valence France');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('34', 'Todd Motto', '1270 rue de la Bavette Sevrans France');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('35', 'Jayson Tatum', '1 rue de Boston New-York Etats-Unis');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('36', 'Kevin James', '2781 avenue de l\'indépendance Rio Brasil');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('37', 'Lebron Durant', '5189 boulevard des gentils Miami Etats-Unis');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('38', 'Luca Young', '2 impasse des hawks Mexico Mexico');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('39', 'Vladimir Cachemir', '294 rue du froid Moscou Russie');
INSERT INTO `3re_agency`.`personne` (`idPersonne`, `nom`, `adresse`) VALUES ('40', 'Lasère Mie', '6532 boulvard de la mer Dakar Senegal');
ALTER TABLE `3re_agency`.`personne` 
ADD COLUMN `numeroTelephone` VARCHAR(45) NOT NULL AFTER `adresse`;
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '1');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '2');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '3');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '4');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '5');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '6');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '7');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '40');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '39');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '38');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '37');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '36');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '35');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '34');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '33');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '32');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '31');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '30');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '29');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '28');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '27');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '26');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '25');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '24');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '23');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '22');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '21');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '20');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '19');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '18');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '17');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '16');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '15');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '14');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '13');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '12');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '11');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '10');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '9');
UPDATE `3re_agency`.`personne` SET `numeroTelephone` = '06.06.06.06.06' WHERE (`idPersonne` = '8');



-- TABLE Logement 
INSERT INTO logement VALUES (1,'Adam El Karki','appartement',70,'bon état','location','2022-01-01',3,'10 avenue henri barbusse Ivry France',1);
INSERT INTO logement VALUES (2,'Ayoub Ben Fraj','maison',150,'à rénover','vente','2022-01-01',4,'10 avenue Montaigne Paris France',2);
INSERT INTO logement VALUES (3,'Clarence Seedorf','appartement',55,'très bon état','vente','2022-01-01',2,'14 toz straat Amsterdam Netherlands',3);
INSERT INTO logement VALUES (4,'Dupont Roger','maison',180,'bon état','vente','2022-01-01',3,'30 avenue de la Fontaine Marseille France',4);
INSERT INTO logement VALUES (5,'Marc Dupont','appartement',45,'neuf','vente','2022-01-01',1,'80 rue Jean Jacques Reims France',5);
INSERT INTO logement VALUES (6,'Gringo loco','maison',220,'très bon état','vente','2022-01-01',4,'numero 10 del cartelito Barcelone Espagne',6);
INSERT INTO logement VALUES (7,'Manuel Macaron','appartement',80,'très bon état','location','2022-01-01',3,'2 avenue des Champs-Elysés Paris',7);
INSERT INTO logement VALUES (8,'Arnaud De La Fuente','maison',170,'bon état','vente','2022-01-01',4,'19 avenue Henri Barbusse Ivry France',8);
INSERT INTO logement VALUES (9,'Enzo Bellisimo','appartement',170,'bon état','vente','2022-01-01',3,'27 strada de Sicilia Milano Italia',9);
INSERT INTO logement VALUES (10,'Alain Teryeur','maison',300,'très bon état','vente','2022-01-01',5,'7 rue du Général de Gaulle Rennes France',10);
INSERT INTO logement VALUES (11,'Alex Teryeur','appartement',120,'bon état','location','2022-01-01',3,'8 avenue Foch Paris France',11);
INSERT INTO logement VALUES (12,'Boris Johnson','maison',100,'à rénover','vente','2022-01-01',3,'10 tea street London England',12);
INSERT INTO logement VALUES (13,'Jean Neymar','appartement',140,'à rénover','location','2022-01-01',4,'50 selecao obrigado Rio Brasil',13);
INSERT INTO logement VALUES (14,'Lésa Rabedeor','maison',230,'neuf','vente','2022-01-01',5,'20 rue des martyrs Lille France',14);
INSERT INTO logement VALUES (15,'Gonzalez de la Fuente','appartement',100,'bon état','location','2022-01-01',2,'8 calle del fuego Mexico Mexico',15);
INSERT INTO logement VALUES (16,'Fris Korleon','maison',500,'bon état','vente','2022-01-01',6,'942 rue de Dakar Senegal',16);
INSERT INTO logement VALUES (17,'Nacer El Karki','appartement',100,'neuf','location','2022-01-01',2,'10 boulevard Stalingrad Paris France',17);
INSERT INTO logement VALUES (18,'Igor Vladimir','maison',185,'à rénover','vente','2022-01-01',4,'120 avenue de Karl Marx Moscou Russie',18);
INSERT INTO logement VALUES (19,'Shot Louf','appartement',50,'bon état','location','2022-01-01',1,'10 rue du gmod Paris France',19);
INSERT INTO logement VALUES (20,'Adam EL Karki','maison',720,'neuf','vente','2022-01-01',7,'75 impasse de la rue Villejuif France',1);
INSERT INTO `3re_agency`.`logement` (`idLogement`, `nomPropriétaire`, `type`, `surfaceHabitable`, `etatHabitation`, `objectifLogement`, `dateDisponibilite`, `nbPieces`, `adresse`, `idPersonne`) VALUES ('21', 'Adam El Karki', 'appartement', '150', 'bon état', 'vente', '2022-01-01', '3', '74  impasse de la rue Villejuif France', '1');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '1' WHERE (`idLogement` = '1');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '2' WHERE (`idLogement` = '2');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '3' WHERE (`idLogement` = '3');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '4' WHERE (`idLogement` = '4');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '5' WHERE (`idLogement` = '5');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '6' WHERE (`idLogement` = '6');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '7' WHERE (`idLogement` = '7');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '8' WHERE (`idLogement` = '8');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '9' WHERE (`idLogement` = '9');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '10' WHERE (`idLogement` = '10');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '11' WHERE (`idLogement` = '11');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '12' WHERE (`idLogement` = '12');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '13' WHERE (`idLogement` = '13');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '14' WHERE (`idLogement` = '14');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '15' WHERE (`idLogement` = '15');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '16' WHERE (`idLogement` = '16');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '17' WHERE (`idLogement` = '17');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '18' WHERE (`idLogement` = '18');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '19' WHERE (`idLogement` = '19');
UPDATE `3re_agency`.`logement` SET `idPersonne` = '1' WHERE (`idLogement` = '20');


-- Table Garage

INSERT INTO `3re_agency`.`garage` (`idGarage`, `adresse`, `capacite`, `idLogement`) VALUES ('1', '10 avenue Montaigne Paris France', '1', '2');
INSERT INTO `3re_agency`.`garage` (`idGarage`, `adresse`, `capacite`, `idLogement`) VALUES ('2', '30 avenue de la Fontaine Marseille France', '2', '4');
INSERT INTO `3re_agency`.`garage` (`idGarage`, `adresse`, `capacite`, `idLogement`) VALUES ('3', 'numero 10 del cartelito Barcelone Espagne', '3', '6');
INSERT INTO `3re_agency`.`garage` (`idGarage`, `adresse`, `capacite`, `idLogement`) VALUES ('4', '19 avenue Henri Barbusse Ivry France', '1', '8');
INSERT INTO `3re_agency`.`garage` (`idGarage`, `adresse`, `capacite`, `idLogement`) VALUES ('5', '7 rue du Général de Gaulle Rennes France', '2', '10');
INSERT INTO `3re_agency`.`garage` (`idGarage`, `adresse`, `capacite`, `idLogement`) VALUES ('6', '10 tea street London England', '5', '12');
INSERT INTO `3re_agency`.`garage` (`idGarage`, `adresse`, `capacite`, `idLogement`) VALUES ('7', '20 rue des martyrs Lille France', '2', '14');
INSERT INTO `3re_agency`.`garage` (`idGarage`, `adresse`, `capacite`, `idLogement`) VALUES ('8', '942 rue de Dakar Senegal', '1', '16');
INSERT INTO `3re_agency`.`garage` (`idGarage`, `adresse`, `capacite`, `idLogement`) VALUES ('9', '120 avenue de Karl Marx Moscou Russie', '4', '18');
INSERT INTO `3re_agency`.`garage` (`idGarage`, `adresse`, `capacite`, `idLogement`) VALUES ('10', '75 impasse de la rue Villejuif France', '1', '20');

-- Table Visite

INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('3', '21', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('5', '22', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('8', '23', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('2', '24', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('1', '25', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('6', '26', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('4', '27', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('5', '28', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('18', '29', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('20', '30', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('19', '31', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('15', '32', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('15', '33', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('14', '34', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('13', '35', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('12', '36', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('10', '37', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('9', '38', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('8', '39', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('5', '40', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('3', '7', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('2', '8', '2022-01-01');
INSERT INTO `3re_agency`.`visite` (`idLogement`, `idPersonne`, `dateVisite`) VALUES ('1', '8', '2022-01-01');


-- Table TRANSACTION

INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('1', '1', '21', '1400', '0', '0');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('2', '2', '22', '0', '1000', '200000');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('3', '3', '23', '1400', '0', '0');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('4', '4', '24', '0', '1000', '200000');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('5', '5', '25', '1400', '0', '0');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('6', '6', '26', '0', '1000', '200000');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('7', '7', '27', '1400', '0', '0');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('8', '8', '28', '0', '1000', '200000');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('9', '9', '29', '1400', '0', '0');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('10', '10', '30', '0', '1000', '200000');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('11', '11', '31', '1400', '0', '0');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('12', '12', '32', '0', '1000', '200000');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('13', '13', '33', '1400', '0', '0');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('14', '14', '34', '0', '1000', '200000');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('15', '15', '35', '1400', '0', '0');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('16', '16', '36', '0', '1000', '200000');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('17', '17', '37', '1400', '0', '0');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('18', '18', '38', '0', '1000', '200000');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('19', '19', '39', '1400', '0', '0');
INSERT INTO `3re_agency`.`transaction` (`idLogement`, `idPersonne`, `idPersonne_1`, `prixLocation`, `prixCommission`, `prixAchat`) VALUES ('20', '20', '40', '0', '1000', '200000');


-- Requêtes d'ordres simples 

SELECT * FROM logement;
SELECT adresse,capacite FROM garage;

SELECT DISTINCT nomPropriétaire from logement;
SELECT DISTINCT nom FROM Personne;

SELECT * from TRANSACTION as t;
SELECT adresse as a, capacite as c FROM garage as g;

-- Requêtes d'ordres complexe

SELECT * FROM logement ORDER BY dateDisponibilite ASC;
SELECT adresse FROM garage ORDER BY capacite DESC;

SELECT * from garage where capacite >= 4;
SELECT * from garage where idLogement = ?;
SELECT * from logement WHERE type ='appartement' AND objectifLogement = 'vente' AND etatHabitation='neuf';

SELECT adresse FROM logement Group by nomPropriétaire;
SELECT idLogement FROM Visite Group by dateVisite;

SELECT * FROM TRANSACTION GROUP BY idPersonne HAVING prixAchat >= 200000;
SELECT adresse FROM garage GROUP BY capacite HAVING capacite >= 2;

-- Les jointures

-- Récupérer les dates de visites + les infos sur l'appartement visité par une personne
SELECT v.idPersonne,p.nom, l.* FROM visite as v inner join logement as l on v.idLogement = l.idLogement inner join personne as p on v.idPersonne = p.idPersonne where p.nom = ?;

--Récupérer les noms des propriétaires qui louent pour un prix donné
SELECT nomPropriétaire, numeroTelephone FROM logement INNER JOIN transaction on logement.idLogement = transaction.idLogement where transaction.prixLocation = ?;

-- Idées de jointures ...

-- Les requêtes impbriquées

-- Récupérer les personnes qui ne sont pas propriétaires (= acheteur)
select nom from personne where idPersonne NOT IN (select idLogement From logement)

-- Récupérer les logements qui n'ont pas de visite de prévus
select * from logement where idPersonne NOT IN (select idLogement From visite)

-- Opérateurs et prédicats

select * from logement where idPersonne IN (select idLogement From visite where dateVisite = ?)
select * from personne where numeroTelephone IS NULL;
select * from personne where numeroTelephone IS NOT NULL;
select * from logement inner join visite on logement.idLogement = visite.idLogement Where visite.prixLocation <= 1400 AND logement.adresse LIKE '%France%';
select * from logement inner join visite on logement.idLogement = visite.idLogement Where visite.prixAchat >= 1400 AND prixLocation == 0;
select adresse from garage where capacite < 5 OR capacite > 2;
select MAX(capacite) from garage;
select MIN(prixLocation) FROM transaction inner join logement on transaction.idLogement = logement.idLogement where logement.type != 'maison';
select AVG(prixAchat) FROM transaction inner join logement on transaction.idLogement = logement.idLogement where logement.adresse LIKE '%Paris%';
select count(*) as nbAppartementParisien from logement where adresse like '%paris%';

-- NE FONCTIONNE PAS SUR MYSQL !!!!
select nom FROM Personne UNION ALL select nomPropriétaire from Logement;





