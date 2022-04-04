-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 02 avr. 2022 à 15:27
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `histographie`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Histoire'),
(2, 'Géographie');

-- --------------------------------------------------------

--
-- Structure de la table `quizz`
--

DROP TABLE IF EXISTS `quizz`;
CREATE TABLE IF NOT EXISTS `quizz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(1000) NOT NULL,
  `proposals` json NOT NULL,
  `answer` varchar(255) NOT NULL,
  `thematics_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `thematics_id` (`thematics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `quizz`
--

INSERT INTO `quizz` (`id`, `question`, `proposals`, `answer`, `thematics_id`) VALUES
(1, 'Quand a eu lieu le débarquement en Normandie ? ', '[\"Le 21 juillet 1945\", \"Le 6 juin 1944 \", \"Le 8 juin 1944 \"]', 'Le 6 juin 1944  ', 1),
(2, 'Quelle fut la plus célèbre bataille de la Première Guerre mondiale ?', '[\"La bataille de la Somme \", \"La bataille de la Marne \", \"La bataille de Verdun \"]', 'La bataille de Verdun', 1),
(3, 'Avec qui Staline s\'allie-t-il en août 1939 ?  ', '[\"Roosevelt\", \"Churchill\", \"Hitler\"]', 'Hitler', 1),
(4, 'Quel est le slogan du Front populaire ?  ', '[\"Avec la France, pour les Français\", \"Travail, Famille, Patrie\", \"Le pain, la paix, la liberté\"]', 'Le pain, la paix, la liberté', 1),
(5, 'Le 14 juillet 1790, que fêtait-on sur le Champs de Mars ? ', '[\"La fête de la Bastille \", \"La fête de la Fédération\", \"La fête du drapeau tricolore \"]', 'La fête de la Fédération', 2),
(6, 'Qui fit voter la loi sur la séparation de l\'Eglise et de l\'Etat, le 9 décembre 1905 ? ', '[\"Emile Combes\", \"Georges Clemenceau\", \"Jules Ferry\"]', 'Emile Combes', 2),
(7, 'Qui fut le candidat des socialistes contre Georges Pompidou, en 1969 ? ', '[\"Gaston Deferre\", \"Guy Mollet \", \"François Mitterrand \"]', 'Gaston Deferre', 2),
(8, 'Sur quelle période s’étend la Première République ?  ', '[\"1799 - 1814 \", \"1792 - 1804 \", \"1792 – 1794\"]', '1792 - 1804 ', 2),
(9, 'Quel vaccin a été inventé en 1921 ? ', '[\"Le vaccin antituberculeux : le BCG \", \" Le vaccin antirabique\", \"Le vaccin contre la poliomyélite\"]', 'Le vaccin antituberculeux : le BCG', 3),
(10, 'En quelle année a été inventée l’automobile ?  ', '[\"1770  \", \"1760\", \"1750 \", \"1740\"]', '1770  ', 3),
(11, 'Qui est considéré comme l’inventeur de l’imprimerie ?  ', '[\"Johannes Gutenberg\", \"Nicéphore Niépce\", \"Daguerre\", \"Graham Bell\"]', 'Johannes Gutenberg', 3),
(12, 'Qui est l’inventeur de la lunette astronomique ?  ', '[\"Galilée Isaac\", \"Hans Lippershey \", \"Newton\", \"Archimède\"]', 'Hans Lippershey', 3),
(13, 'Quelle est la capitale du Sénégal ? ', '[\"Ouagadoudou \", \"Yaoundé\", \"Dakar \", \"Bissau\"]', 'Dakar ', 4),
(14, ' Quelle est la capitale de la Belgique ? ', '[\"Liège\", \"Anvers\", \"Bruxelles\", \"Bruges\"]', 'Bruxelles ', 4),
(15, 'Quelle est la capitale de la Turquie ? ', '[\"stanbul\", \"Jérusalem\", \"Antalya\", \"Ankara\"]', 'Ankara', 4),
(16, 'Quelle est la capitale du Cap-vert ? ', '[\"Praia\", \"Le Caire\", \"Malabo\", \"Conakry\"]', 'Praia', 4),
(17, 'En 1960, quelle est la population de la Chine ? ', '[\"1384530000\", \"667070000 \", \"1184530000\", \"1084530000\"]', '667070000 \r\n', 6),
(21, 'En 1951, quelle est la population de l\'Inde ? ', '[\"361088000 \", \"958843000\", \"1158843000\", \"1258843000\"]', '361088000 ', 6),
(22, 'En 1960, quelle est la population des Etats-Unis ? ', '[\"340810000 \", \"390810000 \", \"180671000\", \"40810000\"]', '180671000', 6),
(23, 'En 1968, quelle est la population de la France ? ', '[\"60810000\", \"90810000 \", \"40810000\", \"50798112\"]', '50798112 ', 6),
(24, 'Le plus grand pays du monde a une superficie de... ', '[\"9,98 millions de km² \", \"17,09 millions de km²  \", \"9,68 millions de km² \"]', '17,09 millions de km² ', 5),
(25, 'Le premier pays le plus grand du monde est... ', '[\"La Chine\", \"La Russie\", \"Le Canada\"]', 'La Russie ', 5),
(26, 'Le deuxième pays le plus grand du monde est... ', '[\"Le Brésil \", \"La Russie\", \"Le Canada\"]', 'Le Canada', 5),
(27, 'La France fait partie des plus grands pays du monde : elle se place... ', '[\"Dans les 10 premiers\", \"Dans les 10 derniers\", \"Aucun des deux\"]', 'Aucun des deux ', 5);

-- --------------------------------------------------------

--
-- Structure de la table `thematics`
--

DROP TABLE IF EXISTS `thematics`;
CREATE TABLE IF NOT EXISTS `thematics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `categories_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_id` (`categories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `thematics`
--

INSERT INTO `thematics` (`id`, `name`, `categories_id`) VALUES
(1, 'Bataille', 1),
(2, 'Politique', 1),
(3, 'Inventions', 1),
(4, 'Capitale', 2),
(5, 'Population', 2),
(6, 'Superficie', 2);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `quizz`
--
ALTER TABLE `quizz`
  ADD CONSTRAINT `thematics_id` FOREIGN KEY (`thematics_id`) REFERENCES `thematics` (`id`);

--
-- Contraintes pour la table `thematics`
--
ALTER TABLE `thematics`
  ADD CONSTRAINT `categories_id` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
