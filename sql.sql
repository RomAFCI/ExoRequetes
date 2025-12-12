DROP TABLE IF EXISTS Eleves;
CREATE TABLE Eleves (
    idEleves int AUTO_INCREMENT NOT NULL,
    nomEleves VARCHAR(256),
    prenomEleves VARCHAR(256),
    idClasse INT NOT NULL,
    PRIMARY KEY (idEleves)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Classe;
CREATE TABLE Classe (
    idClasse int AUTO_INCREMENT NOT NULL,
    nomClasse VARCHAR(256),
    PRIMARY KEY (idClasse)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Professeur;
CREATE TABLE Professeur (
    idProfesseur int AUTO_INCREMENT NOT NULL,
    nomProfesseur VARCHAR(256),
    prenomProfesseur VARCHAR(256),
    idMatieres INT NOT NULL,
    PRIMARY KEY (idProfesseur)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Matieres;
CREATE TABLE Matieres (
    idMatieres int AUTO_INCREMENT NOT NULL,
    nomMatieres VARCHAR(256),
    PRIMARY KEY (idMatieres)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS avoir;
CREATE TABLE avoir (
    idClasse int AUTO_INCREMENT NOT NULL,
    idProfesseur INT NOT NULL,
    PRIMARY KEY (idClasse, idProfesseur)
) ENGINE = InnoDB;
ALTER TABLE Eleves
ADD CONSTRAINT FK_Eleves_idClasse FOREIGN KEY (idClasse) REFERENCES Classe (idClasse);
ALTER TABLE Professeur
ADD CONSTRAINT FK_Professeur_idMatieres FOREIGN KEY (idMatieres) REFERENCES Matieres (idMatieres);
ALTER TABLE avoir
ADD CONSTRAINT FK_avoir_idClasse FOREIGN KEY (idClasse) REFERENCES Classe (idClasse);
ALTER TABLE avoir
ADD CONSTRAINT FK_avoir_idProfesseur FOREIGN KEY (idProfesseur) REFERENCES Professeur (idProfesseur);