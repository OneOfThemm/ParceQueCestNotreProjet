-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 19 août 2019 à 14:36
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `caribougeneral`
--
CREATE DATABASE IF NOT EXISTS `caribougeneral` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `caribougeneral`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `loginAdmin` varchar(45) NOT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idUser`),
  KEY `fk_Admin_User1_idx` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`loginAdmin`, `idUser`) VALUES
('testAdmin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `carte`
--

DROP TABLE IF EXISTS `carte`;
CREATE TABLE IF NOT EXISTS `carte` (
  `idCarte` int(11) NOT NULL AUTO_INCREMENT,
  `numCarte` varchar(45) NOT NULL,
  `dateExpirationCarte` datetime NOT NULL,
  `codeCarte` int(11) NOT NULL,
  `compte_idCompte` int(11) NOT NULL,
  PRIMARY KEY (`idCarte`),
  UNIQUE KEY `numCarte_UNIQUE` (`numCarte`),
  KEY `fk_carte_compte1_idx` (`compte_idCompte`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `carte`
--

INSERT INTO `carte` (`idCarte`, `numCarte`, `dateExpirationCarte`, `codeCarte`, `compte_idCompte`) VALUES
(1, 'testCarte', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `numClient` varchar(45) NOT NULL,
  `idUser` int(11) NOT NULL,
  `conseiller_idUser` int(11) NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `numClient_UNIQUE` (`numClient`),
  KEY `fk_Client_User_idx` (`idUser`),
  KEY `fk_client_conseiller1_idx` (`conseiller_idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`numClient`, `idUser`, `conseiller_idUser`) VALUES
('testClient', 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `idCompte` int(11) NOT NULL AUTO_INCREMENT,
  `solde` double NOT NULL,
  `plafond` double NOT NULL,
  `decouvert` double NOT NULL,
  `numCompte` varchar(45) NOT NULL,
  `client_idUser` int(11) NOT NULL,
  PRIMARY KEY (`idCompte`),
  UNIQUE KEY `numCompte_UNIQUE` (`numCompte`),
  KEY `fk_compte_client1_idx` (`client_idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`idCompte`, `solde`, `plafond`, `decouvert`, `numCompte`, `client_idUser`) VALUES
(1, 1000, 100, 100, 'testCompte', 3);

-- --------------------------------------------------------

--
-- Structure de la table `conseiller`
--

DROP TABLE IF EXISTS `conseiller`;
CREATE TABLE IF NOT EXISTS `conseiller` (
  `loginConseiller` varchar(45) NOT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `login_UNIQUE` (`loginConseiller`),
  KEY `fk_Conseiller_User1_idx` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `conseiller`
--

INSERT INTO `conseiller` (`loginConseiller`, `idUser`) VALUES
('testConseiller', 2);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `idMessage` int(11) NOT NULL AUTO_INCREMENT,
  `corpsMessage` varchar(45) DEFAULT NULL,
  `dateMessage` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_idEmetteur` int(11) NOT NULL,
  `user_idRecepteur` int(11) NOT NULL,
  PRIMARY KEY (`idMessage`),
  KEY `fk_message_user1_idx` (`user_idEmetteur`),
  KEY `fk_message_user2_idx` (`user_idRecepteur`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`idMessage`, `corpsMessage`, `dateMessage`, `user_idEmetteur`, `user_idRecepteur`) VALUES
(2, 'vous êtes à decouvert', '2019-08-19 00:00:00', 2, 3),
(3, 'test', '2018-08-18 00:00:00', 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL,
  `dateConnexion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdp` varchar(45) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`idUser`, `nom`, `prenom`, `email`, `tel`, `dateConnexion`, `mdp`) VALUES
(1, 'testAdmin', 'testAdmin', 'testAdmin', 'testAdmin', '2019-08-16 08:55:55', 'testAdmin'),
(2, 'testConseiller', 'testConseiller', 'testConseiller', 'testConseiller', '2019-08-16 08:55:55', 'testConseiller'),
(3, 'testClient', 'testClient', 'testClient', 'testClient', '2019-08-16 08:55:55', 'testClient');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_Admin_User1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `carte`
--
ALTER TABLE `carte`
  ADD CONSTRAINT `fk_carte_compte1` FOREIGN KEY (`compte_idCompte`) REFERENCES `compte` (`idCompte`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `fk_Client_User` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_client_conseiller1` FOREIGN KEY (`conseiller_idUser`) REFERENCES `conseiller` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `fk_compte_client1` FOREIGN KEY (`client_idUser`) REFERENCES `client` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `conseiller`
--
ALTER TABLE `conseiller`
  ADD CONSTRAINT `fk_Conseiller_User1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk_message_user1` FOREIGN KEY (`user_idEmetteur`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_message_user2` FOREIGN KEY (`user_idRecepteur`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
