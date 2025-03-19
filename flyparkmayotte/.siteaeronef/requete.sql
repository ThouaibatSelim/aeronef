-- Base de données
CREATE DATABASE flyparkmayotte;

-- Utilisateur
CREATE TABLE utilisateur (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, nom_utilisateur VARCHAR(200), prenom_utilisateur VARCHAR(200), date_naissance DATE, adresse_mail VARCHAR(200), numero VARCHAR(200));

-- Historique
CREATE TABLE historique (id NOT NULL PRIMARY KEY AUTO_INCREMENT, id_reservation INT FOREIGN KEY NOT NULL);

-- Liste place de parking
CREATE TABLE liste_place_parking (numero_place INT, dimension_place INT, cout_location VARCHAR(200), disponibilité VARCHAR(200));

-- Réservation
CREATE TABLE reservation (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, id_utilisateur INT FOREIGN KEY NOT NULL, numero_reservation INT, id_place_parking INT FOREIGN KEY NOT NULL, date_reservation DATE, confirmation BOOLEAN);