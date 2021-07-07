drop database if exists oto;
create database oto;
use oto;
--structure de la table 'concession'

create  table concession (
Idconcession SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
adresse VARCHAR(40) NOT NULL,
CodePostal VARCHAR(40)NOT NULL, 
ville  VARCHAR(20)NOT NULL,
nb_employes int NOT NULL,
type_service VARCHAR(20),
nb_vehicule int,
idvéhicule SMALLINT,
PRIMARY KEY (idconcession)

);
--structure de la table clients


CREATE TABLE Clients (
IdClient SMALLINT NOT NULL ,
Nom VARCHAR(40) NOT NULL,
Prenom VARCHAR(40) NOT NULL,
CodePostal VARCHAR(10),
Localite VARCHAR(50),
Rue VARCHAR(80),
Numero VARCHAR(10),
Telephone VARCHAR(40) NOT NULL,
Email VARCHAR(50),
PRIMARY KEY (IdClient)
);
--structure de la table  commande

CREATE TABLE commande (
Idcommande SMALLINT NOT NULL ,
date_commande date NOT NULL,
date_reception date NOT NULL,
date_éxepedation date NOT NULL,
date_payement date NOT NULL
idpieces_auto SMALLINT,
IdClient SMALLINT,
idPRIMARY KEY (Idcommande)
);
--structure de la table details de commande

CREATE TABLE details_commande(
iddetails_commande SMALLINT NOT NULL ,
Prix_unité FLOAT NOT NULL,
quantité_commande int,
Idcommande SMALLINT,
PRIMARY KEY(iddetails_commande)
);

--strucuture de la table employes

CREATE TABLE employes (
idemployes SMALLINT  NOT NULL,
Nom VARCHAR(40)NOT NULL,
Prenom VARCHAR(40)Not NULL,
metier VARCHAR(50)NOT NULL,
id_concession SMALLINT,
PRIMARY KEY(idemployes)
);

--structure de la table véhicule

CREATE TABLE véhicule(
idvéhicule SMALLINT Not NULL,
Marque VARCHAR(20) NOT NULL,
Modele VARCHAR(20) NOT NULL,
Cylindree SMALLINT NOT NULL,
Transmission CHAR(1) NOT NULL,
kilometrage int CHECK (kilometrage BETWEEN 0 and 300000 ) 
Prix FLOAT NOT NULL,
type_véhicule int check ('neuf','occasion'),
option_auto VARCHAR(30) NOT NULL , 
idemployes SMALLINT,
PRIMARY KEY (idvéhicule) 
)
--structure de la table entretien

CREATE TABLE entretien (
identretient SMALLINT  NOT NULL ,
idemployes SMALLINT,
id_concession SMALLINT,
idvéhicule SMALLINT,
idfacture SMALLINT,

PRIMARY KEY (identretient)
)

--structure de la table reparition


CREATE TABLE reparition (
idreparition SMALLINT  NOT NULL ,
idemployes SMALLINT,
id_concession SMALLINT,
idvéhicule SMALLINT,
idfacture SMALLINT,

PRIMARY KEY (idreparition)
)

--structure  de la table vente

CREATE TABLE vente(
Idvente SMALLINT  NOT NULL,
IdClient SMALLINT  NOT NULL,
idvéhicule VARCHAR(12) NOT NULL,
idfacture VARCHAR (12) NOT NULL,
DateDebut DATETIME NOT NULL,
DateFin DATETIME NOT NULL,
DateRentree DATETIME,
Assurance BOOL NOT NULL,
PRIMARY KEY (Idvente)
);
-- structure de la table  pieces_auto
CREATE TABLE pieces_auto(
idpieces_auto SMALLINT NOT NULL,
Nom VARCHAR(30) NOT NULL,
prix_ht int NOT NULL,
date_commande date,
date_reception date, 
montant__ttc_facture int ,
PRIMARY KEY (idpieces_auto) 
)

--structure  de la table facture
CREATE TABLE facture(
idfacture SMALLINT NOT NULL,
idvéhicule SMALLINT NOT NULL,
Id_concession SMALLINT,
idemployes SMALLINT ,
IdClient SMALLINT NOT NULL,
montant_ht int NOT NULL,
montant_ttc int NOT NULL,
PRIMARY KEY(idfacture)

)
-- les clés étrangères 
ALTER TABLE concession ADD(
CONSTRAINT FK_concession_vehicule
FOREIGN KEY (idvéhicule),,,
REFERENCES véhicule(idvéhicule)
)

ALTER TABLE commande ADD(
CONSTRAINT FK_commande_client
FOREIGN KEY (IdClient)
REFERENCES IdClient(clients)
)
ALTER TABLE commande ADD(
CONSTRAINT FK_commande_piecesauto
FOREIGN KEY (idpieces_auto)
REFERENCES idpieces_auto(pieces_auto)
)

ALTER TABLE details_commande ADD(
CONSTRAINT FK_'details_commande'FK_commande
FOREIGN KEY (Idcommande)
REFERENCES commande(Idcommande)
)
ALTER table employes ADD (
CONSTRAINT FK_employes_concession
FOREIGN KEY (idconcession)
REFERENCES concession(idconcession)
);
ALTER TABLE véhicule ADD(
CONSTRAINT FK_véhicule_reparition 
FOREIGN KEY (idreparition)
REFERENCES reparition(idreparition)
)
ALTER TABLE véhicule ADD (
CONSTRAINT FK_véhicule_entretien
FOREIGN KEY (identretient)
REFERENCES entretien(identretient)
);
ALTER TABLE vente ADD (
CONSTRAINT FK_vente_véhicule
FOREIGN KEY (idvéhicule)
REFERENCES véhicule(idvéhicule));

ALTER TABLE vente ADD (
CONSTRAINT FK_vente_Clients
FOREIGN KEY (IdClient)
REFERENCES Clients(IdClient));

ALTER TABLE vente ADD(
CONSTRAINT FK_vente_facture
FOREIGN KEY (idfacture)
REFERENCES facture(idfacture));

ALTER TABLE facture ADD(
CONSTRAINT FK_facture_clinets
FOREIGN KEY (IdClient)
REFERENCES Clients(IdClient)
);
ALTER TABLE facture ADD(
CONSTRAINT Fk_facture_employes
FOREIGN KEY (idemployes)
REFERENCES employes(idemployes)
);
ALTER TABLE facture ADD(
CONSTRAINT FK_facture_concession
FOREIGN KEY (Id_concession)
REFERENCES concession(Idconcession)
);

