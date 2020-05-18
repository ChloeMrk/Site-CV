-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 18 mai 2020 à 22:42
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cv`
--
CREATE DATABASE IF NOT EXISTS `cv` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cv`;

-- --------------------------------------------------------

--
-- Structure de la table `experience`
--

CREATE TABLE `experience` (
  `id_experience` int(2) NOT NULL,
  `emplois` varchar(50) NOT NULL,
  `duree` varchar(50) NOT NULL,
  `nom_entreprise` varchar(100) NOT NULL,
  `description_emplois` varchar(10000) NOT NULL,
  `delection_flag` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `experience`
--

INSERT INTO `experience` (`id_experience`, `emplois`, `duree`, `nom_entreprise`, `description_emplois`, `delection_flag`) VALUES
(6, 'Stagiaire', 'Mai 2017 - Juin 2017', 'Ayming', ' Masterisation ordinateur et téléphone\r\nAide Client pour leurs ordinateurs et/ou logiciel\r\nAide technicien réseau', 0),
(8, 'Stagiaire', 'Mars 2018 - Avril 2018', 'SPIE Ministère de écologie', 'Masterisation ordinateur\r\nAide client au problème lié à l’ordinateur \r\nAide technicien', 0),
(11, 'Stagiaire', 'Novembre 2018 - Décembre 2018', 'JOYJET', 'Aide à la gestion de projet\r\nCréation de wireframe\r\nCode REACT', 0);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id_formation` int(2) NOT NULL,
  `nom_ecole` varchar(30) NOT NULL,
  `diplome` varchar(30) NOT NULL,
  `specialite` varchar(30) DEFAULT NULL,
  `temps_formation` varchar(40) NOT NULL,
  `delection_flag` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id_formation`, `nom_ecole`, `diplome`, `specialite`, `temps_formation`, `delection_flag`) VALUES
(1, 'Groupe Scolaire Espérance', 'Diplôme National du Brevet', '', '2010 -2014', 0),
(2, 'Lycée St-Vincent de Paul', 'CAP Esthetique', '', '2014 - 2016', 0),
(3, 'Lycée Robert Schuman', 'BEP SN (Système Numérique)', 'Option Télécom Réseau', '2016 - 2018', 0),
(4, 'Lycée Robert Schuamn', 'BAC PRO SN (Système Numérique)', 'Option Télécom Réseau', '2018 - 2019', 0),
(5, 'YNOV', 'BACHELOR Informatique', '', '2019 - présent', 0);

-- --------------------------------------------------------

--
-- Structure de la table `info`
--

CREATE TABLE `info` (
  `id_personne` int(3) NOT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `sexe` enum('m','f') NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `cp` int(5) NOT NULL,
  `telephone` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `info`
--

INSERT INTO `info` (`id_personne`, `prenom`, `nom`, `sexe`, `adresse`, `cp`, `telephone`, `email`, `description`) VALUES
(10, 'Chloe', 'MERCK', 'f', '52 BOULEVARD CIRCULAIRE VILLEPINTE', 93420, 672000000, 'chloe.merck@ynov.com', 'description test');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id_experience`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id_formation`);

--
-- Index pour la table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_personne`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `experience`
--
ALTER TABLE `experience`
  MODIFY `id_experience` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id_formation` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `info`
--
ALTER TABLE `info`
  MODIFY `id_personne` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Base de données : `registration`
--
CREATE DATABASE IF NOT EXISTS `registration` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `registration`;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(2, 'ChloeMrk', 'cococassandra@hotmail.fr', '2b886c8ad3c9d7abccf32344262c823391bcf02428f6ffc6ed0931ca8ae3d6f9');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
