-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 06 mars 2021 à 15:44
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


DROP DATABASE IF EXISTS portfolio;
CREATE DATABASE portfolio;
use portfolio;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idc` int(11) NOT NULL,
  `libelle` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idc`, `libelle`) VALUES
(1, 'Site WEB'),
(2, 'Programmation'),
(3, 'Stage'),
(7, 'Systeme ');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `idi` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`idi`, `nom`) VALUES
(1, 'filelec.png'),
(2, 'forum.png'),
(3, 'stage.png'),
(4, 'E6.jpg'),
(5, 'future.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `idp` int(11) NOT NULL,
  `libelle` varchar(70) NOT NULL,
  `description` varchar(255) NOT NULL,
  `lien` varchar(255) NOT NULL,
  `github` varchar(55) NOT NULL,
  `idc` int(11) NOT NULL,
  `idi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`idp`, `libelle`, `description`, `lien`, `github`, `idc`, `idi`) VALUES
(2, 'Filelec', 'Filelec est le nom du projet personalisée encadrée de fin d\'études du BTS SIO. Ce projet a été réalisée avec deux de mes camarades de classe Nicolas Vignon et Adrien DOll,Ce projet rassemble les langages : PHP, HTML, SQL, CSS', 'ppe', '', 1, 1),
(3, 'Forum', 'Cette section est en rapport avec le projet réalisée pendant les vacances de Toussaint 2020 et qui concerne la réalisation d\'un forum. Réalisé en Langages HTML , CSS, PHP et avec une base de donnée', 'forum', 'Forum_', 1, 2),
(4, 'Stage', 'Dans cette section vous retrouverez le contenu lié a mes stages effectués ces deux années de BTS, tous les deux ont été fait a L\'Office Français de l\'Immigration et de l\'Intégration (OFII) les deux dans le cadre sanitaire du Covid19', 'stage', '', 3, 3),
(8, 'Veille Technologique', 'Cette partie est destiné a la veille technologique. Malheureusement elle n\'est pas encore disponible vu qu\'elle n\'est pas finit. Veuillez attendre', '', '', 7, 4);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mail` varchar(70) NOT NULL,
  `mdp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `mail`, `mdp`) VALUES
(3, 'admin', 'admin@admin.com', 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idc`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`idi`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`idp`),
  ADD KEY `idc` (`idc`),
  ADD KEY `idi` (`idi`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `idi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `projet`
--
ALTER TABLE `projet`
  MODIFY `idp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`idc`) REFERENCES `categorie` (`idc`),
  ADD CONSTRAINT `projet_ibfk_2` FOREIGN KEY (`idi`) REFERENCES `image` (`idi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
