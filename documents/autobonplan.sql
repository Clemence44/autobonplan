-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 21 sep. 2021 à 19:34
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autobonplan`
--

-- --------------------------------------------------------

--
-- Structure de la table `arrivage`
--

DROP TABLE IF EXISTS `arrivage`;
CREATE TABLE IF NOT EXISTS `arrivage` (
  `no_vo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fournisseur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `immat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_mec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marque` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VIN` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modele` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `places` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `energie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `puissance_fiscale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrosserie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `segment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `couleur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `couleur_interieure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sellerie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_achat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entree_parc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_h_vente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `puissance_DIN` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boite_vitesse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_rapports` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix_achat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TVA_achat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix_particulier_TTC` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TVA_vente_vehicule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix_professionnel_TTC` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_garantie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_radio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frais` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frais_reel_HT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equip_serie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equip_option` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cylindree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provenance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conso_carbone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_lot_achat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poids_vide_min` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duree_mois` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_CNIT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entree_arrivage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `livraison_prevue_BC` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `livraison_prevue_BT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dispo_le` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`no_vo`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `arrivage`
--

INSERT INTO `arrivage` (`no_vo`, `etat`, `fournisseur`, `immat`, `date_mec`, `annee`, `marque`, `VIN`, `modele`, `version`, `places`, `energie`, `puissance_fiscale`, `carrosserie`, `segment`, `portes`, `genre`, `kms`, `couleur`, `couleur_interieure`, `sellerie`, `date_achat`, `date_entree_parc`, `date_h_vente`, `puissance_DIN`, `boite_vitesse`, `nb_rapports`, `prix_achat`, `TVA_achat`, `prix_particulier_TTC`, `TVA_vente_vehicule`, `prix_professionnel_TTC`, `type_garantie`, `code_radio`, `frais`, `frais_reel_HT`, `equip_serie`, `equip_option`, `cylindree`, `provenance`, `conso_carbone`, `no_lot_achat`, `poids_vide_min`, `duree_mois`, `type_CNIT`, `date_entree_arrivage`, `parc`, `livraison_prevue_BC`, `livraison_prevue_BT`, `dispo_le`) VALUES
('AUDI02', 'Arrivage', 'SAGA LENS', 'EZ-464-KB', '28/07/2018', '2018', 'AUDI', 'WAUZZZ8X7JB100005', 'A1 SPORTBACK', '1.4 TDI ultra 90 S tronic 7 Midnight Series', '4', 'Diesel', '5', 'Berline', 'NULL', '5', 'VP', '35231', 'Blanc', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '90', 'Boîte séquentielle', '7', '13750', 'TVA 20', '18990', 'NULL', '18500', 'Garantie', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '1422', 'Négociant', '104', 'NULL', '1145', '6', 'M10AUDVP0303326', '2021/08/03', 'Sorinières', 'NULL', 'NULL', '01/04/2021'),
('CLIO01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Clio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021/04/01', NULL, NULL, NULL, ''),
('CLIO02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Clio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021/04/01', NULL, NULL, NULL, ''),
('﻿AUDI01', 'Arrivage', 'SAGA LENS', 'EZ-464-KB', '28/07/2018', '2018', 'AUDI', 'WAUZZZ8X7JB100005', 'A1 SPORTBACK', '1.4 TDI ultra 90 S tronic 7 Midnight Series', '4', 'Diesel', '5', 'Berline', 'NULL', '5', 'VP', '35231', 'Blanc', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '90', 'Boîte séquentielle', '7', '13750', 'TVA 20', '18990', 'NULL', '18500', 'Garantie', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '1422', 'Négociant', '104', 'NULL', '1145', '6', 'M10AUDVP0303326', '2021/08/10', 'Sorinières', 'NULL', 'NULL', '01/08/2021');

-- --------------------------------------------------------

--
-- Structure de la table `arrivages`
--
/*
DROP TABLE IF EXISTS `arrivages`;
CREATE TABLE IF NOT EXISTS `arrivages` (
  `no_vo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fournisseur` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `immat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_mec` date DEFAULT NULL,
  `annee` int(11) DEFAULT NULL,
  `marque` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VIN` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modele` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `places` int(11) DEFAULT NULL,
  `energie` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `puissance_fiscale` int(11) DEFAULT NULL,
  `carrosserie` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `segment` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portes` int(11) DEFAULT NULL,
  `genre` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kms` int(11) DEFAULT NULL,
  `couleur` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `couleur_interieure` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sellerie` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_achat` date DEFAULT NULL,
  `date_entree_parc` date DEFAULT NULL,
  `date_h_vente` datetime DEFAULT NULL,
  `puissance_DIN` int(11) DEFAULT NULL,
  `boite_vitesse` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_rapports` int(11) DEFAULT NULL,
  `prix_achat` decimal(10,0) DEFAULT NULL,
  `TVA_achat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix_particulier_TTC` decimal(10,0) DEFAULT NULL,
  `TVA_vente_vehicule` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix_professionnel_TTC` decimal(10,0) DEFAULT NULL,
  `type_garantie` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_radio` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frais` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frais_reel_HT` decimal(10,0) DEFAULT NULL,
  `equip_serie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equip_option` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cylindree` int(11) DEFAULT NULL,
  `provenance` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conso_carbone` int(11) DEFAULT NULL,
  `no_lot_achat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poids_vide_min` int(11) DEFAULT NULL,
  `duree_mois` int(11) DEFAULT NULL,
  `type_CNIT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entree_arrivage` date DEFAULT NULL,
  `parc` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `livraison_prevue_BC` datetime DEFAULT NULL,
  `livraison_prevue_BT` datetime DEFAULT NULL,
  `dispo_le` date DEFAULT NULL,
  PRIMARY KEY (`no_vo`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
*/
-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `no_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifiant` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mot_de_passe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `droit_ajout_vehicule` tinyint(4) NOT NULL,
  PRIMARY KEY (`no_utilisateur`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`no_utilisateur`, `prenom`, `nom`, `identifiant`, `mot_de_passe`, `droit_ajout_vehicule`) VALUES
(4, 'Clemence', 'Perrouin', 'clemence_perrouin', 'azerty', 1),
(5, 'Paul', 'Vendor', 'paul_vendor', 'azerty', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
