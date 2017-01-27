-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 25 Janvier 2017 à 18:20
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `artpublicmtl`
--
CREATE DATABASE IF NOT EXISTS `artpublicmtl` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `artpublicmtl`;

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE IF NOT EXISTS `administrateur` (
  `nom` varchar(20) NOT NULL DEFAULT '',
  `motDePasse` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nom`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `administrateur`
--

INSERT INTO `administrateur` (`nom`, `motDePasse`) VALUES
('artpublicmtl', 'adcdbf2d0d8c4c9053256256831136cf'),
('totolemagicien', 'c83663d1c69a2024012428f0cdb2c45b');

-- --------------------------------------------------------

--
-- Structure de la table `arrondissement`
--

CREATE TABLE IF NOT EXISTS `arrondissement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=130 ;

--
-- Contenu de la table `arrondissement`
--

INSERT INTO `arrondissement` (`id`, `nom`) VALUES
(16, 'Ahuntsic-Cartierville'),
(30, 'Anjou'),
(34, 'Baie-d''Urfé'),
(26, 'Beaconsfield'),
(57, 'Côte-des-Neiges-Notre-Dame-de-Grâce'),
(23, 'Côte-des-Neiges–Notre-Dame-de-Grâce'),
(17, 'Côte-Saint-Luc'),
(14, 'Dollard-des-Ormeaux'),
(10, 'Dorval'),
(6, 'Hampstead'),
(13, 'Kirkland'),
(46, 'L''Île-Bizard-Sainte-Geneviève'),
(21, 'L''Île-Dorval'),
(9, 'Lachine'),
(2, 'LaSalle'),
(5, 'Le Plateau-Mont-Royal'),
(7, 'Le Sud-Ouest'),
(12, 'L’Île-Bizard–Sainte-Geneviève'),
(56, 'Mercier-Hochelaga-Maisonneuve'),
(22, 'Mercier–Hochelaga-Maisonneuve'),
(3, 'Mont-Royal'),
(29, 'Montréal-Est'),
(11, 'Montréal-Nord'),
(19, 'Montréal-Ouest'),
(1, 'Outremont'),
(31, 'Pierrefonds-Roxboro'),
(20, 'Pointe-Claire'),
(42, 'Rivière-des-Prairies-Pointe-aux-Trembles'),
(8, 'Rivière-des-Prairies–Pointe-aux-Trembles'),
(58, 'Rosemont-La Petite-Patrie'),
(24, 'Rosemont–La Petite-Patrie'),
(25, 'Saint-Laurent'),
(18, 'Saint-Léonard'),
(32, 'Sainte-Anne-de-Bellevue'),
(15, 'Senneville'),
(33, 'Verdun'),
(4, 'Ville-Marie'),
(61, 'Villeray-Saint-Michel-Parc-Extension'),
(27, 'Villeray–Saint-Michel–Parc-Extension'),
(28, 'Westmount');

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE IF NOT EXISTS `artiste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noInterne` int(11) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `nomCollectif` varchar(50) DEFAULT NULL,
  `biographie` varchar(2000) DEFAULT NULL,
  `valide` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `sommesArtistes` (`id`),
  UNIQUE KEY `noInterne` (`noInterne`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2095 ;

--
-- Contenu de la table `artiste`
--

INSERT INTO `artiste` (`id`, `noInterne`, `nom`, `prenom`, `nomCollectif`, `biographie`, `valide`) VALUES
(1, 960, 'Coutu', 'Patrick', NULL, NULL, 0),
(2, 1098, 'Alloucherie', 'Jocelyne', NULL, NULL, 0),
(4, 1135, 'Angers', 'Pierre Yves', NULL, NULL, 0),
(6, 1152, 'Arsenault', 'Denise', NULL, NULL, 0),
(7, 1156, NULL, NULL, 'Atelier TAG', NULL, 0),
(8, 1173, 'Adam', 'Henri-Georges', NULL, NULL, 0),
(9, 1394, 'Antoci', 'Rosario', NULL, NULL, 0),
(10, 1396, 'Aquino', 'Eduardo', NULL, NULL, 0),
(11, 6661, 'Streubel', 'Heinrich', NULL, NULL, 0),
(12, 1398, 'Inconnu', 'Auteur', NULL, NULL, 0),
(16, 3091, 'Pootoogook', 'Elijah Pudlat', NULL, NULL, 0),
(19, 1408, 'Baier', 'Nicolas', NULL, NULL, 0),
(21, 1174, 'Balboni', 'Carlo', NULL, NULL, 0),
(22, 1424, 'Bélanger', 'Octave', NULL, NULL, 0),
(23, 1177, 'Benet', 'Eugène-Paul', NULL, NULL, 0),
(24, 1179, 'Berezowsky', 'Liliana', NULL, NULL, 0),
(25, 1180, 'Bergeron', 'Germain', NULL, NULL, 0),
(26, 1433, 'Bérubé', 'Patrick', NULL, NULL, 0),
(27, 1183, 'Boisvert', 'Gilles', NULL, NULL, 0),
(29, 1184, 'Borduas', 'Paul', NULL, NULL, 0),
(30, 1453, 'Borduas', 'Paul-Émile', NULL, NULL, 0),
(36, 1458, 'Boudot', 'Lucien', NULL, NULL, 0),
(37, 1462, 'Bourassa', 'Guy', NULL, NULL, 0),
(38, 1185, 'Bourgault', 'Pierre', NULL, NULL, 0),
(39, 1186, 'Bourgeau', 'Annick', NULL, NULL, 0),
(41, 1187, 'Boyer', 'Gilbert', NULL, NULL, 0),
(43, 1473, 'Brière', 'Marie-France', NULL, NULL, 0),
(44, 1188, 'Brunet', 'Émile', NULL, NULL, 0),
(46, 1189, 'Buren', 'Daniel', NULL, NULL, 0),
(47, 1190, 'Burman', 'Irving', NULL, NULL, 0),
(48, 1191, 'Cadieux', 'Alain', NULL, NULL, 0),
(49, 1192, 'Calder', 'Alexander', NULL, NULL, 0),
(50, 1193, 'Cantieni', 'Graham', NULL, NULL, 0),
(51, 1194, 'Cardenas', 'Augustin', NULL, NULL, 0),
(52, 1195, 'Carpentier', 'Jacques', NULL, NULL, 0),
(55, 1496, 'Cartier', 'Jean', NULL, NULL, 0),
(56, 1196, 'Casini', 'Guido', NULL, NULL, 0),
(58, 1197, 'Cavalli', 'Roger', NULL, NULL, 0),
(59, 1504, 'Charland-Favretti', 'Lyse', NULL, NULL, 0),
(60, 1198, 'Charney', 'Melvin', NULL, NULL, 0),
(61, 1199, 'Chavignier', 'Louis', NULL, NULL, 0),
(62, 1509, 'Comtois', 'Ulysse', NULL, NULL, 0),
(63, 1511, 'Connolly', 'Reynald', NULL, NULL, 0),
(64, 1200, NULL, NULL, 'Cooke-Sasseville', NULL, 0),
(66, 1515, 'Covit', 'Linda', NULL, NULL, 0),
(70, 1202, 'Daoust', 'Sylvia', NULL, NULL, 0),
(71, 1203, 'Dardel', 'René', NULL, NULL, 0),
(72, 1204, 'Daudelin', 'Charles', NULL, NULL, 0),
(76, 1205, 'De Almeida', 'Charters', NULL, NULL, 0),
(77, 1206, 'De Broin', 'Michel', NULL, NULL, 0),
(79, 1207, 'De Leon Imao', 'Abdulmari Jr.', NULL, NULL, 0),
(80, 1208, 'De Palma', 'Armand', NULL, NULL, 0),
(81, 1547, 'De Tonnancour', 'Jacques', NULL, NULL, 0),
(82, 1209, 'Debré', 'Olivier', NULL, NULL, 0),
(83, 1210, 'Delavalle', 'Jean-Marie', NULL, NULL, 0),
(84, 1552, 'Delfosse', 'George', NULL, NULL, 0),
(85, 1211, 'Démidoff-Séguin', 'Tatiana', NULL, NULL, 0),
(87, 1212, 'Dubois', 'Pierre-Gilles', NULL, NULL, 0),
(88, 1213, 'Dubray', 'Vital', NULL, NULL, 0),
(89, 1214, 'Dumouchel', 'Agnès', NULL, NULL, 0),
(90, 1215, 'Duval', 'Lucie', NULL, NULL, 0),
(92, 1219, 'Dyens', 'Georges', NULL, NULL, 0),
(93, 1220, 'Edstrom', 'Peter David', NULL, NULL, 0),
(94, 1221, 'Eloul', 'Kosso', NULL, NULL, 0),
(95, 1572, 'Faniel', 'Alfred', NULL, NULL, 0),
(96, 1574, 'Farley', 'Denis', NULL, NULL, 0),
(97, 1575, 'Filion', 'Armand', NULL, NULL, 0),
(99, 1576, 'Fiorucci', 'Vittorio', NULL, NULL, 0),
(101, 1223, 'Fontaine', 'Lorraine', NULL, NULL, 0),
(102, 1584, 'Fortin', 'Marc-Aurèle', NULL, NULL, 0),
(103, 1222, 'Fournelle', 'André', NULL, NULL, 0),
(108, 1225, 'Galipeau', 'Benoit', NULL, NULL, 0),
(109, 1226, 'Gavoty', 'Jean-François', NULL, NULL, 0),
(110, 1227, 'Gladstone', 'Gerald', NULL, NULL, 0),
(111, 1228, 'Gnass', 'Peter', NULL, NULL, 0),
(112, 1229, 'Gokakis', 'Spyros', NULL, NULL, 0),
(113, 1230, 'Gorduz', 'Vasile', NULL, NULL, 0),
(114, 1231, 'Goulet', 'Michel', NULL, NULL, 0),
(120, 1232, 'Goulet', 'Rose-Marie', NULL, NULL, 0),
(123, 1233, 'Granche', 'Pierre', NULL, NULL, 0),
(124, 1234, 'Granet', 'Roseline', NULL, NULL, 0),
(126, 1236, 'Hayeur', 'Isabelle', NULL, NULL, 0),
(127, 1645, 'Hébert', 'Adrien', NULL, NULL, 0),
(128, 1237, 'Hébert', 'Henri', NULL, NULL, 0),
(130, 1653, 'Hébert', 'Jacques', NULL, NULL, 0),
(131, 1238, 'Hébert', 'Louis-Philippe', NULL, NULL, 0),
(135, 1239, 'Heyvaert', 'Pierre', NULL, NULL, 0),
(136, 1240, 'Hill', 'George William', NULL, NULL, 0),
(139, 1671, 'Holgate', 'Edwin H.', NULL, NULL, 0),
(140, 1242, 'Hunt', 'Henry', NULL, NULL, 0),
(141, 1243, 'Hunter', 'Raoul', NULL, NULL, 0),
(143, 1246, 'Jarnuszkiewicz', 'Jacek', NULL, NULL, 0),
(144, 1681, 'Keyt', 'George', NULL, NULL, 0),
(145, 1247, 'Lachapelle', 'Guillaume', NULL, NULL, 0),
(147, 1248, 'Laliberté', 'Alfred', NULL, NULL, 0),
(152, 1694, 'Lamarche', 'Claude', NULL, NULL, 0),
(155, 1249, 'Lancz', 'Paul', NULL, NULL, 0),
(158, 1250, 'Langevin', 'Roger', NULL, NULL, 0),
(160, 1707, 'Lapalme', 'Robert', NULL, NULL, 0),
(161, 1709, 'Lapointe', 'Michèle', NULL, NULL, 0),
(163, 1251, 'Larivée', 'Francine', NULL, NULL, 0),
(164, 1252, 'Larivière', 'Gilles', NULL, NULL, 0),
(165, 1253, 'Lasalle', 'Jules', NULL, NULL, 0),
(170, 1254, 'Lawson', 'Georges Anderson', NULL, NULL, 0),
(171, 1255, 'Leblanc', 'Pierre', NULL, NULL, 0),
(177, 1257, 'Lebourg', 'Charles-Auguste', NULL, NULL, 0),
(178, 1258, 'Leclerc', 'Pierre E.', NULL, NULL, 0),
(179, 1256, 'Lefébure', 'Jean', NULL, NULL, 0),
(180, 1260, 'Lemieux', 'F. Maurice', NULL, NULL, 0),
(185, 1259, 'Lemieux', 'Lisette', NULL, NULL, 0),
(189, 1262, NULL, NULL, 'Les Industries perdues', NULL, 0),
(190, 1263, 'Lui', 'Andrew', NULL, NULL, 0),
(191, 1264, 'Maler', 'Miroslav Frederik', NULL, NULL, 0),
(193, 1772, 'McCarthy', 'Coeur de lion', NULL, NULL, 0),
(194, 1241, 'Hilton-Moore', 'Marlene', NULL, NULL, 0),
(195, 1775, 'Merola', 'Mario', NULL, NULL, 0),
(197, 1266, 'Mihalcean', 'Gilles', NULL, NULL, 0),
(200, 1267, 'Millette', 'Claude', NULL, NULL, 0),
(204, 2786, 'Mitchell', 'Robert', NULL, NULL, 0),
(205, 1270, 'Moore', 'David', NULL, NULL, 0),
(206, 1797, 'Moreau', 'Mathurin', NULL, NULL, 0),
(207, 1271, 'Morin', 'Jean-Pierre', NULL, NULL, 0),
(209, 1802, 'Morin', 'Madeleine', NULL, NULL, 0),
(210, 1804, 'Morosoli', 'Joëlle', NULL, NULL, 0),
(211, 1805, 'Mott', 'J.L.', NULL, NULL, 0),
(213, 1272, 'Nadeau', 'Guy', NULL, NULL, 0),
(215, 1806, 'Nadeau', 'Marc-Antoine', NULL, NULL, 0),
(216, 1273, 'Narita', 'Takera', NULL, NULL, 0),
(217, 1274, 'Nepveu', 'Robert', NULL, NULL, 0),
(218, 1275, 'Olariu', 'Octavian', NULL, NULL, 0),
(219, 1808, 'O''Shea', 'John Patrick', NULL, NULL, 0),
(220, 1829, 'Paiement', 'Alain', NULL, NULL, 0),
(222, 1276, 'Pang', 'Tin Neon', NULL, NULL, 0),
(223, 1277, 'Pellegrinuzzi', 'Roberto', NULL, NULL, 0),
(225, 1830, 'Pellerin', 'Guy', NULL, NULL, 0),
(226, 1278, 'Pelletier', 'Robert', NULL, NULL, 0),
(227, 1831, 'Pellus', 'Raymond', NULL, NULL, 0),
(228, 1279, 'Pelzer', 'Alfonso', NULL, NULL, 0),
(229, 1280, 'Pillhofer', 'Josef', NULL, NULL, 0),
(230, 1832, 'Pilot', 'Robert', NULL, NULL, 0),
(231, 1282, 'Planes', 'José', NULL, NULL, 0),
(232, 1283, 'Poliquin', 'Jean-Noël', NULL, NULL, 0),
(233, 1285, 'Poulin', 'Roland', NULL, NULL, 0),
(234, 1286, 'Prent', 'Mark', NULL, NULL, 0),
(235, 1288, 'Reddy', 'Krishna', NULL, NULL, 0),
(236, 1846, 'Reusch', 'Astri', NULL, NULL, 0),
(237, 1849, 'Rochette', 'Sylvie', NULL, NULL, 0),
(238, 2883, 'Rolland', 'Dominique', NULL, NULL, 0),
(240, 1291, 'Roussil', 'Robert', NULL, NULL, 0),
(244, 1293, 'Sandonato', 'Aurelio', NULL, NULL, 0),
(245, 1294, 'Santini', 'Laura', NULL, NULL, 0),
(246, 1295, 'Saxe', 'Henry', NULL, NULL, 0),
(247, 1296, 'Schleeh', 'Hans', NULL, NULL, 0),
(248, 1297, 'Sebastian', NULL, NULL, NULL, 0),
(249, 1850, 'Si Tu', 'Jie', NULL, NULL, 0),
(250, 1298, 'Signori', 'Carlos Sergio', NULL, NULL, 0),
(251, 1299, 'Sklavos', 'Yérassimo (Gerasimos)', NULL, NULL, 0),
(252, 1300, 'Szekely', 'Pierre', NULL, NULL, 0),
(253, 1902, 'Taccola', 'U', NULL, NULL, 0),
(254, 1904, 'Taylor', 'William Hughes', NULL, NULL, 0),
(255, 1905, 'Tett', 'Alison', NULL, NULL, 0),
(257, 1301, 'Théberge', 'Claude', NULL, NULL, 0),
(259, 1302, 'Thorvaldsen', 'Berthel', NULL, NULL, 0),
(260, 1908, 'Topham', 'William Thurston', NULL, NULL, 0),
(261, 1303, 'Toto', 'Carlos Maria', NULL, NULL, 0),
(262, 1304, 'Trudeau', 'Yves', NULL, NULL, 0),
(265, 1305, 'Vaillancourt', 'Armand', NULL, NULL, 0),
(270, 1306, 'Valade', 'Dominique', NULL, NULL, 0),
(274, 1909, 'Van Der Heide', 'Herman J.', NULL, NULL, 0),
(275, 1307, 'Vazan', 'Bill', NULL, NULL, 0),
(278, 1910, 'Végiard', 'Alfonse', NULL, NULL, 0),
(279, 1911, 'Vermette', 'Claude', NULL, NULL, 0),
(280, 1308, 'Viger', 'Louise', NULL, NULL, 0),
(281, 1309, 'Vincent', 'Joseph-Arthur', NULL, NULL, 0),
(282, 1310, 'Vivot', 'Léa', NULL, NULL, 0),
(283, 1311, 'Wade', 'George Edward', NULL, NULL, 0),
(284, 1312, 'Widgery', 'Catherine', NULL, NULL, 0),
(286, 1313, 'Winant', 'Alice', NULL, NULL, 0),
(287, 1314, 'Witebsky', 'Shirley', NULL, NULL, 0),
(288, 1315, 'Wood', 'Marshall', NULL, NULL, 0),
(289, 1284, 'Pelletier', 'Luce', NULL, NULL, 0),
(290, 1235, 'Hannah', 'Adad', NULL, NULL, 0),
(291, 3094, 'Lauda', 'Jiri Georges', NULL, NULL, 0),
(292, 1178, 'Bélanger', 'Gwenaël', NULL, NULL, 0),
(293, 1181, 'Besner', 'Jean-Jacques', NULL, NULL, 0),
(294, 5598, NULL, NULL, 'Daily tous les jours', NULL, 0),
(295, 3103, 'Montillaud', 'Francis', NULL, NULL, 0),
(296, 3106, 'Wilson', 'Robert', NULL, NULL, 0),
(297, 1182, 'Bisson', 'Yvette', NULL, NULL, 0),
(298, 5797, 'Sylvain', 'Catherine', NULL, NULL, 0),
(299, 6671, NULL, NULL, 'BGL', NULL, 0),
(1496, NULL, 'fuck', 'fuck', NULL, '', 0);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `artisteavecoeuvre`
--
CREATE TABLE IF NOT EXISTS `artisteavecoeuvre` (
`nomCollectif` varchar(50)
,`nom` varchar(50)
,`prenom` varchar(50)
,`id` int(11)
);
-- --------------------------------------------------------

--
-- Structure de la table `a_propos`
--

CREATE TABLE IF NOT EXISTS `a_propos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sommesT` varchar(30) NOT NULL DEFAULT '',
  `sommesD` varchar(3000) NOT NULL DEFAULT '',
  `missionT` varchar(30) NOT NULL DEFAULT '',
  `missionD` varchar(3000) NOT NULL DEFAULT '',
  `joindreT` varchar(30) NOT NULL DEFAULT '',
  `joindreD` varchar(3000) NOT NULL DEFAULT '',
  `partenaireT` varchar(30) NOT NULL DEFAULT '',
  `partenaireD` varchar(3000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Contenu de la table `a_propos`
--

INSERT INTO `a_propos` (`id`, `sommesT`, `sommesD`, `missionT`, `missionD`, `joindreT`, `joindreD`, `partenaireT`, `partenaireD`) VALUES
(30, 'Qui sommes nous?', 'ArtPublicMTL est un site réalisé pour et par la Ville de Montréal en collaboration avec tourisme Montréal. Son but est de promouvoir la collection artistique publique de la Ville. Vous pourriez accéder Ã  une liste exhaustive de toutes les oeuvres géo-localisées de Montréal, ainsi qu''à  la liste de tous les artistes.                       ', 'Notre mission', 'En sillonnant les rues de Montréal, il vous est sans doute déjà  arrivé de tomber, par hasard, sur une oeuvre d''art placée là , tout bonnement, au coin de la rue ou vous travaillez, par exemple, ou au café que vous affectionnez. Qui sait? Des oeuvres, Ã  l''effigie de Paul-Émile Borduas, de Félix Leclerc en passant par la chasse Galerie jusqu''à  Gilles Vigneault. Oui, Montréal  regorge de plus de 300 oeuvres rappelant que Montréal est bel et bien une ville culturellement riche. Qui a dit qu''admirer des oeuvres d''art se faisait seulement Ã  l''intérieur des murs d''un musée? Ici, l''art est public! Et, constituer un répertoire de ces oeuvres est précisément la toute première mission d''ARTPUBLIC.                      ', 'Nous joindre', 'Pour nous joindre, contactez: <a href=mailto:artpublic@montreal.qc>artpublic@montreal.qc</a>', 'Nos partenaire', 'Grande Bibliothèque - BAnQ <br />\r\nVille de Montréal <br />\r\nCineplex');

-- --------------------------------------------------------

--
-- Structure de la table `caroussel`
--

CREATE TABLE IF NOT EXISTS `caroussel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urlImage` varchar(200) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `caroussel`
--

INSERT INTO `caroussel` (`id`, `urlImage`) VALUES
(18, 'images/ChamplainVisiteDeNouveauLeSiteDeMontréalEn1611_O_ Bélanger-1425_4095.JPG'),
(19, 'images/chromazone.JPG'),
(20, 'images/anamorphose.JPG');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=280 ;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(185, 'Bois/menuiserie d''art'),
(55, 'Céramique'),
(274, 'Design industriel'),
(279, 'Émaux'),
(2, 'Installation'),
(237, 'Mobilier'),
(18, 'Mosaique'),
(255, 'Multimédia'),
(16, 'Peinture'),
(19, 'Photographie'),
(1, 'Sculpture'),
(37, 'Techniques mixtes'),
(161, 'Verre'),
(12, 'Vitrail');

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre`
--

CREATE TABLE IF NOT EXISTS `oeuvre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noInterne` int(11) DEFAULT NULL,
  `titre` varchar(100) NOT NULL,
  `titreVariante` varchar(100) DEFAULT NULL,
  `nomCollection` varchar(50) DEFAULT NULL,
  `categorieObjet` varchar(50) DEFAULT NULL,
  `modeAcquisition` varchar(50) DEFAULT NULL,
  `dateAccession` varchar(50) DEFAULT NULL,
  `materiaux` varchar(50) DEFAULT NULL,
  `support` varchar(50) DEFAULT NULL,
  `technique` varchar(50) DEFAULT NULL,
  `dimensionsGenerales` varchar(50) DEFAULT NULL,
  `parc` varchar(100) DEFAULT NULL,
  `batiment` varchar(100) DEFAULT NULL,
  `adresseCivique` varchar(100) DEFAULT NULL,
  `coordonneeLatitude` varchar(50) DEFAULT NULL,
  `coordonneeLongitude` varchar(50) DEFAULT NULL,
  `mediums` varchar(50) DEFAULT NULL,
  `numeroAccession` varchar(20) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `urlImage` varchar(200) DEFAULT NULL,
  `arrondissement` int(11) DEFAULT NULL,
  `categorie` int(11) DEFAULT NULL,
  `idArtiste` int(1) DEFAULT NULL,
  `valide` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `sommesOeuvre` (`id`),
  UNIQUE KEY `noInterne` (`noInterne`),
  KEY `idArtiste` (`idArtiste`),
  KEY `arrondissement` (`arrondissement`),
  KEY `categorie` (`categorie`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=304 ;

--
-- Contenu de la table `oeuvre`
--

INSERT INTO `oeuvre` (`id`, `noInterne`, `titre`, `titreVariante`, `nomCollection`, `categorieObjet`, `modeAcquisition`, `dateAccession`, `materiaux`, `support`, `technique`, `dimensionsGenerales`, `parc`, `batiment`, `adresseCivique`, `coordonneeLatitude`, `coordonneeLongitude`, `mediums`, `numeroAccession`, `description`, `urlImage`, `arrondissement`, `categorie`, `idArtiste`, `valide`) VALUES
(1, 962, 'Source', NULL, 'Art public', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(1270785600000-0400)/', 'Bronze', NULL, 'Bronze coulé; boulonné', '549 x 466 x 466 cm', 'Parc Benny', 'Centre sportif Notre-Dame-de Grâce', '6445, avenue Monkland, Montréal', '45.466405', '-73.631648', NULL, '2010-AP-SC-0011', '', '', 23, 1, 1, 1),
(2, 1099, 'Porte de jour', 'Une porte rouge (ouverte, rougeâtre, solaire)', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal (Concour', '/Date(1082865600000-0400)/', 'acier corten', NULL, 'Soudé', '298 x 350 x 1070 cm', 'Square Dalhousie', NULL, NULL, '45.512090', '-73.550979', NULL, '2004-SC-08', '', '', 4, 2, 2, 1),
(3, 1119, 'Regarder les pommetiers', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de Montréal (Concour', '/Date(1156996800000-0400)/', 'Acier corten; granit', NULL, 'Taillé; assemblé', '294 x 600 x 182', 'Jardin botanique', 'Jardin botanique', '4101, rue Sherbrooke Est, Montréal (QC) H1X 2B2', '45.561585', '-73.562673', NULL, '2007-SC-01', '', '', 24, 2, 2, 1),
(4, 1127, 'Le malheureux magnifique', NULL, 'Art public', 'Beaux-arts', 'Achat directement à l''artiste', '/Date(677995200000-0400)/', 'Ciment; fer; peinture', NULL, 'Assemblé; cimenté; peint', '340 x 235 x 310', 'Intersection des rues Sherbrooke et Saint-Denis', NULL, '385, rue Sherbrooke Est, Montréal, (QC) H2X 3L1', '45.516907', '-73.567846', NULL, '910021.0', '', '', 5, 1, 4, 1),
(5, 1137, 'Les clochards célestes', 'Monumental III', 'Art public', 'Beaux-arts', 'Cession', '/Date(1273204800000-0400)/', 'Ciment; fer; peinture', NULL, 'Assemblé; cimenté; peint', '640 x 250 x 420 cm', 'Parc Miville-Couture', NULL, NULL, '45.516853', '-73.555153', NULL, '1983-SC-03', '', '', 4, 1, 4, 1),
(6, 1151, 'Discours du roi poète', NULL, 'Art public', 'Beaux-arts', 'Don', NULL, 'Calcaire', NULL, NULL, '233 X 56 X 63 cm', 'Place Roland-Proulx', NULL, NULL, '45.472390', '-73.584704', NULL, '1982-APE-SC-18', '', '', 7, 1, 6, 1),
(7, 1157, 'Hommage à Jérôme Le Royer De La Dauversière', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', NULL, 'Acier Corten; acier inoxydable; verre trempé', NULL, NULL, '84 x 193 x 81', 'Place De La Dauversière', NULL, NULL, '45.508493', '-73.5533', NULL, '1999-SC-04', '', '', 4, 1, 7, 1),
(8, 1391, 'Obélisque oblique', NULL, 'Art public', 'Beaux-arts', 'Autre', NULL, 'Acier inoxydable', NULL, 'Pliées; soudées; boulonnées', '546 x 160 x 190', 'Parc Jean-Drapeau, Île Notre-Dame', 'Casino de Montréal', '1 Avenue du Casino, Montréal, QC H3C 4W7', '45.506046', '-73.526706', NULL, '901425.0', '', '', 4, 1, 8, 1),
(9, 1393, 'La source', 'Sergenti', 'Art public', 'Beaux-arts', 'Don', '/Date(978325200000-0500)/', 'Calcaire', NULL, 'Taillé', NULL, 'Parc Guglielmo-Marconi', NULL, NULL, '45.534752', '-73.617845', NULL, '2001-SC-10', '', '', 24, 1, 9, 1),
(10, 1397, 'Vous êtes ici', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Autre', NULL, 'Aluminium; DEL', NULL, NULL, '3000 x 1000 cm', NULL, 'Maison de la culture Maisonneuve', '4200, rue Ontario Est, Montréal, H1V 1K1', '45.551183', '-73.540539', NULL, '2006-IA-IN-0001', '', '', 22, 2, 10, 1),
(11, 1399, 'Non titré (Murale en relief et sculpture)', 'Murale en relief et sculpture (extérieur)', 'Intégration à l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Centre du Plateau', '2275 boul.St-Joseph Est, Montréal, (Qc) H2H 1G4', '45.539713', '-73.576110', NULL, '1962-IA-SC-0001', '', '', 5, 1, 11, 1),
(12, 1400, 'Non titré (Vitraux)', 'Vitraux', 'Intégration à l''architecture', 'Arts décoratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hôtel de Ville de Montréal', '275 Rue Notre-Dame Est, Montréal, QC H2Y 1C6', '45.508816', '-73.554069', NULL, '1878-IA-VT-0001', '', '', 4, 12, 12, 1),
(13, 1401, 'Non titré (Vitraux)', 'Vitraux', 'Intégration à l''architecture', 'Arts décoratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bibliothèque Mile-End', '5434 Avenue du Parc, Montréal, QC H2V 4G7', '45.521778', '-73.601548', NULL, '1898-IA-VT-0001', '', '', 5, 12, 12, 1),
(14, 1402, 'Non titré (Vitraux)', 'Vitraux', 'Intégration à l''architecture', 'Arts décoratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Édifice Gaston-Miron', '1210, rue Sherbrooke Est, Montréal (Québec) H2L 1L9', '45.522741', '-73.565331', NULL, '1917-IA-VT-0001', '', '', 4, 12, 12, 1),
(15, 1403, 'Non titré (Vitraux)', 'Vitraux', 'Intégration à l''architecture', 'Arts décoratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Centre Laurier', '1115 Laurier Est, Montréal', '45.531814', '-73.587131', NULL, '1930-IA-VT-0001', '', '', 5, 12, 12, 1),
(16, 1404, 'Non titré (Murale inuit)', 'Murale inuit', 'Intégration à l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, 'Parc Jean-Drapeau, Île Notre-Dame', 'Pavillon de l''administration, parc Jean-Drapeau', '1 Circuit Gilles Villeneuve Île Notre-Dame, Montréal, Québec, H3C 1A9', '45.503792', '-73.529322', NULL, '1967-IA-PE-0001', '', '', 4, 16, 16, 1),
(17, 1406, 'Non titré (Murale peinte)', 'Murale peinte', 'Intégration à l''architecture', 'Beaux-arts', 'Inconnu', NULL, 'Peinture', NULL, 'Œuvre peinte', NULL, 'Parc Marcel-Léger', 'Maison Antoine-Beaudry', '14 678 Rue Notre-Dame Est, Montréal, QC H1A 1W1', '45.676603', '-73.491423', NULL, '1850-IA-PE-0001', '', '', 8, 16, 12, 1),
(18, 1407, 'Non titré (Fontaine, mosaïque)', 'Fontaine (mosaïque)', 'Intégration à l''architecture', 'Arts décoratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Station de pompage centrale (Atwater)', '3161, rue Joseph, Montréal', '45.472308', '-73.572944', NULL, '1918-IA-MO-0001', '', '', 7, 18, 12, 1),
(19, 1414, 'Bibliotheca Universalis', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Commande publique de la Ville de Montréal (Concour', '/Date(1136869200000-0500)/', 'Verre, plexiglas', NULL, 'Impression', NULL, NULL, 'Bibliothèque interculturelle de Côte-des-Neiges', '6767, chemin de la Côte-des-Neiges, Montréal (Québec) H3S 2T6', '45.503130', '-73.636947', NULL, '2006-IA-PH-0003', '', '', 23, 19, 19, 1),
(20, 1415, 'Chibouki', 'Chiboukis', 'Intégration à l''architecture', 'Beaux-arts', 'Autre', '/Date(1136869200000-0500)/', 'Papier', NULL, 'Impression numérique', '122 x 122cm', NULL, 'Bibliothèque interculturelle de Côte-des-Neiges', '6767, chemin de la Côte-des-Neiges, Montréal, QC, H3T 1Y4', '45.503302', '-73.636776', NULL, '2006-IA-PH-0004', '', '', 23, 19, 19, 1),
(21, 1416, 'La mort de Dante', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-1546282800000-0500)/', 'Bronze; granit', NULL, 'Coulé', '390 x 250 x 210 cm', 'Parc Dante', NULL, NULL, '45.534445', '-73.611721', NULL, '900908.0', '', '', 24, 1, 21, 1),
(22, 1425, 'Champlain visite de nouveau le site de Montréal en 1611', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503909', '-73.587452', NULL, '1931-IA-PE-0001', '', '', 4, 16, 22, 1),
(23, 1426, 'Monument à Jean Vauquelin', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', NULL, 'Bronze; granit', NULL, 'Bronze coulé; pierre taillée', '680cm x 400 cm x 400 cm approximatif', 'Place Vauquelin', NULL, NULL, '45.508588', '-73.554655', NULL, '900935.0', '', '', 4, 1, 23, 1),
(24, 1428, 'Smoke and steel', NULL, 'Art public', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, '260 x 60 x 90 cm', NULL, 'Caserne d''incendie 22', '5455, rue Antonio-Dagenais, Saint-Léonard (Québec) H1S 2X3', '45.582705', '-73.585774', NULL, '', '', '', 18, 1, 24, 1),
(25, 1431, 'Le cycliste', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'Soudé; peint', '425 x 140 x 539 cm', 'Parc de West Vancouver', NULL, NULL, '45.456655', '-73.542746', NULL, '1990-SC-15', '', '', 33, 1, 25, 1),
(26, 1434, 'Contournement', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(1325394000000-0500)/', 'Acier', NULL, 'Cintré et peinturé', NULL, NULL, 'Le Taz', '8931 Avenue Papineau, Montreal, QC H2M 2G2', '45.560942', '-73.635233', NULL, '2008-IA-SC-0001', '', '', 27, 1, 26, 1),
(27, 1441, 'L''arbre des générations', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier (feuille)', NULL, 'Découpé; soudé; boulonné; peint', '385 x 275 x 548 cm', 'Parc du musée de Lachine', 'Musée de Lachine', '1, chemin du Musée, Lachine (Québec) H8S 4L9', '45.430699', '-73.666113', NULL, '2002-SC-10', '', '', 9, 1, 27, 1),
(28, 1443, 'Vire au vent', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier brut, acier peint', NULL, 'Soudage; boulonnage; peint', '495 x 610 x 295 cm', 'Parc René-Lévesque', NULL, NULL, '45.428480', '-73.682451', NULL, '2002-AP-SC-28', '', '', 9, 1, 27, 1),
(29, 1447, 'Sans titre', 'Oiseau', 'Art public', 'Beaux-arts', 'Don', '/Date(-157748400000-0500)/', 'Acier peint', NULL, 'Feuilles d''acier coupées; soudées les unes aux aut', '150 x 150 x 52 cm', 'Jardin botanique', 'Jardin botanique', '4101, rue Sherbrooke Est, Montréal, Québec, H1X 2B2', '45.558218', '-73.563644', NULL, '902218.0', '', '', 24, 1, 29, 1),
(30, 1450, 'Carte du site de Montréal par Champlain en 1611', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503986', '-73.587585', NULL, '1931-IA-PE-0002', '', '', 4, 16, 30, 1),
(31, 1451, 'Les anciennes possessions françaises en Amérique', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503969', '-73.587623', NULL, '1931-IA-PE-0003', '', '', 4, 16, 30, 1),
(32, 1452, 'Les voyages de Jacques Cartier au Canada en 1534 et 1535', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503961', '-73.587657', NULL, '1931-IA-PE-0004', '', '', 4, 16, 30, 1),
(33, 1454, 'Montréal de 1645 à 1672', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503945', '-73.587697', NULL, '1931-IA-PE-0005', '', '', 4, 16, 30, 1),
(34, 1455, 'Montréal en 1760', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503918', '-73.587731', NULL, '1931-IA-PE-0006', '', '', 4, 16, 30, 1),
(35, 1456, 'Plan d''Hochelaga par Jacques Cartier en 1535', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503874', '-73.587727', NULL, '1931-IA-PE-0007', '', '', 4, 16, 30, 1),
(36, 1457, 'Jacques Cartier est reçu par le chef Agouhana', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503842', '-73.587707', NULL, '1931-IA-PE-0008', '', '', 4, 16, 36, 1),
(37, 1461, 'Parades Parures', 'Parades-parures', 'Intégration à l''architecture', 'Beaux-arts', 'Commande publique de la Ville de Montréal (Concour', '/Date(915166800000-0500)/', 'Tissu; aluminium; acier; bois; verre', NULL, NULL, '574 x 81 x 10 cm', NULL, 'Bibliothèque Rivière-des-Prairies', '9001, boulevard Perras, Montréal, Québec H1E 3J7', '45.649803', '-73.578961', NULL, '1999-IA-SC-0007', '', '', 8, 37, 37, 1),
(38, 1463, 'Le village imaginé. «Le renard l''emporte, le suit à la trace…»', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', NULL, 'Aluminium, manganèse et chrome poli (jeu de ficell', NULL, 'Assemblé; soudé', 'Ensemble de l''œuvre : 98 x 115 m', 'Parc Marguerite-Bourgeoys', NULL, NULL, '45.475158', '-73.558862', NULL, '2005-SC-03', '', '', 7, 2, 38, 1),
(39, 1465, 'Monument à Jean Drapeau', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(978325200000-0500)/', 'Bronze; granit', NULL, 'Bronze coulé; cire perdue', '287 X 200 x 200 cm', 'Place De La Dauversière', NULL, NULL, '45.50853', '-73.55342', NULL, '2001-APE-SC-10', '', '', 4, 1, 39, 1),
(40, 1467, 'Hommage à Maurice Richard', NULL, 'Art public', 'Beaux-arts', 'Prêt', NULL, 'Bronze', NULL, NULL, '221 x 327 x 182 cm', NULL, 'Aréna Maurice-Richard', '2800 Rue Viau, Montréal, QC H1V 3J3', '45.562682', '-73.546957', NULL, '2010-AP-SC-0001', '', '', 22, 1, 39, 1),
(41, 1468, 'La montagne des jours', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(834724800000-0400)/', 'Granit', NULL, 'Gravé au jet de sable; poli', '153 X 8 cm', 'Parc du Mont-Royal', NULL, NULL, '45.507069', '-73.590031', NULL, '910977.0', '', '', 4, 1, 41, 1),
(42, 1470, 'Mémoire ardente', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal (Concour', '/Date(754722000000-0500)/', 'Granit; acier inoxydable', NULL, NULL, '197 x 197 x 197', 'Promenade de la Commune', NULL, NULL, '45.508932', '-73.551062', NULL, '940636.0', '', '', 4, 1, 41, 1),
(43, 1472, 'Les jours d''été quand le fleuve monte à l''assaut des murs, hommage à Marie Uguay', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Commande publique de la Ville de Montréal', NULL, 'Plâtre; livre; feutre; marbre', 'Bois', 'Mixte', '86 x 117 x 10 cm', NULL, 'Bibliothèque interculturelle de Côte-des-Neiges', '6767, chemin de la Côte-des-Neiges, Montréal (Québec) H3S 2T6', '45.503130', '-73.636947', NULL, '2006-IA-TM-0001', '', '', 23, 37, 43, 1),
(44, 1474, 'Monument à sir Wilfrid Laurier', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-513460800000-0400)/', 'Bronze; granit', NULL, 'Bronze coulé', '622 x 490 x 106 cm', 'Square Dorchester', NULL, NULL, '45.4994744', '-73.571061', NULL, '530924.0', '', '', 4, 1, 44, 1),
(45, 1476, 'Monument au frère André', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(504939600000-0500)/', 'Bronze; granit', NULL, 'Bronze coulé', '301 x 120 x 50cm', 'Place du frère André', NULL, NULL, '45.503309', '-73.566600', NULL, '900985.0', '', '', 4, 1, 44, 1),
(46, 1478, 'Neuf couleurs au vent', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(985928400000-0500)/', 'Aluminium; nylon', NULL, 'Soudé; sérigraphié', '1650 x 110 x 2510 cm', 'Place Urbain-Baudreau-Graveline', NULL, NULL, '45.521709', '-73.565776', NULL, '1996-APE-SC-08', '', '', 5, 2, 46, 1),
(47, 1480, 'Sans titre', 'Non titrée (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Calcaire', NULL, 'Taillé; sculpté', '244 X 206 cm', 'Parc du Mont-Royal', NULL, NULL, '45.499327', '-73.594604', NULL, '902404.0', '', '', 4, 1, 47, 1),
(48, 1482, 'Table Ronde', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Béton armé; aluminium peint', NULL, 'Assemblé; soudé', NULL, NULL, 'Mairie d''arrondissement de LaSalle', '55 avenue Dupras', '45.428134', '-73.661771', NULL, '1984-APE-SC-06', '', '', 2, 2, 48, 1),
(49, 1484, 'Trois disques', 'Man, Three Disks;\rL''Homme; Man; The Man', 'Art public', 'Beaux-arts', 'Don', '/Date(-68583600000-0500)/', 'Acier inoxydable', NULL, 'Découpé; assemblé; boulonné; soudé ', '2130 x 2200 x 1625 cm', 'Parc Jean-Drapeau, Île Sainte-Hélène', NULL, NULL, '45.510658', '-73.536837', NULL, '1976-SC-05', '', '', 4, 1, 49, 1),
(50, 1486, 'Hermès', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'Soudé; peint; boulonné', '320 x 370 x 570 cm', 'Parc René-Lévesque', NULL, NULL, '45.428752', '-73.683435', NULL, '2002-AP-SC-29', '', '', 9, 1, 50, 1),
(51, 1488, 'Sans titre', 'Non titrée (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-120596400000-0500)/', 'Schiste', NULL, 'Sculpté', '412cm x 107cm', 'Parc du Mont-Royal', NULL, NULL, '45.500036', '-73.594996', NULL, '902230.0', '', '', 4, 1, 51, 1),
(52, 1490, 'Non titré', NULL, 'Art public', 'Beaux-arts', NULL, NULL, 'Acier peint', NULL, 'Soudés; peints', '700 x 82.5 x 82.5 cm', 'Parc Serge-Garant', NULL, 'Rue Beaudry', '45.519070', '-73.556071', NULL, '902225.0', '', '', 4, 1, 52, 1),
(53, 1492, 'Trilogie', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1041310800000-0500)/', 'Acier peint', NULL, 'Soudé; peint', '380 x 366 x 366 cm', 'Parc du musée de Lachine', 'Musée de Lachine', '1, chemin du Musée, Lachine (Québec) H8S 4L9', '45.430106', '-73.666757', NULL, '2002-SC-11', '', '', 9, 1, 52, 1),
(54, 1494, 'Communion', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(641188800000-0400)/', 'Acier peint', NULL, 'Soudé; peint', '335 x 427 x 853cm', 'Parc des Rapides', NULL, NULL, '45.423958', '-73.598574', NULL, '1990-APE-SC-10', '', '', 2, 1, 52, 1),
(55, 1497, 'Non titré (mosaïque en céramique)', 'Sans titre (mosaïque en céramique)', 'Intégration à l''architecture', 'Arts décoratifs', 'Intégration des arts à l''architecture', '/Date(-347137200000-0500)/', 'Peinture; céramique', NULL, 'Peint; assemblé', '381 x 554 cm', NULL, 'Centre récréatif Gadbois', '5485, chemin de la Côte-Saint-Paul, Montréal (Québec) H4C 1X3', '45.466425', '-73.595811', NULL, '1959-IA-CE-0001', '', '', 7, 55, 55, 1),
(56, 1498, 'Monument à Giovanni Caboto', NULL, 'Art public', 'Beaux-arts', 'Don', NULL, 'Bronze; travertin', NULL, 'Bronze coulé; cire perdue', '875 x 800 x 800', 'Square Cabot', NULL, NULL, '45.489490', '-73.583652', NULL, '350901.0', '', '', 4, 1, 56, 1),
(57, 1500, 'Non titré ', 'Bronzes', 'Intégration à l''architecture', 'Beaux-arts', 'Inconnu', NULL, 'Bronze', NULL, 'Moulage', '(2) 165 x 245 x 137 cm ', 'Complexe aquatique, Parc Jean-Drapeau', NULL, '130, chemin du Tour-de-l''Isle', '45.512832', '-73.534573', NULL, '1952-IA-SC-0001', '', '', 4, 1, 56, 1),
(58, 1501, 'La femme-fontaine', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Pierre', NULL, 'Taille directe', '183,50 x 57,50 x 40,70 cm', NULL, 'Centre culturel de Verdun', '5955 Bannantyne, Verdun, Québec, H4H 1H6', '45.448399', '-73.577621', NULL, '1967-SC-21', '', '', 33, 1, 58, 1),
(59, 1503, 'Envol d''oiseaux', 'Puit de lumière en vitraux', 'Intégration à l''architecture', 'Arts décoratifs', 'Intégration des arts à l''architecture', '/Date(410245200000-0500)/', 'Verre; silicone; nylon; bois', NULL, 'Découpé; assemblé', '400 x 65 cm', NULL, 'Bibliothèque Le Prévost', '7355 Avenue Christophe-Colomb, Montréal, QC H2R 2S5', '45.543774', '-73.614480', NULL, '1982-IA-VT-0001', '', '', 27, 12, 59, 1),
(60, 1505, 'Gratte-ciel, cascades d''eau / rues, ruisseau… une construction', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de Montréal (Concour', '/Date(669358800000-0500)/', 'Acier inoxydable; béton; granit', NULL, 'Multiple', '1700 x 7500 x 5000 cm', 'Place Émilie-Gamelin', NULL, NULL, '45.515449', '-73.560028', NULL, '926087.0', '', '', 4, 2, 60, 1),
(61, 1507, 'Le carrousel sauvage', 'Le carrousel sauvage (SISM-64)\rLe manège d''amour', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Calcaire; béton', NULL, 'Taillé; assemblé', '315 x 1828 cm', 'Parc du Mont-Royal', NULL, NULL, '45.501169', '-73.594040', NULL, '642245.0', '', '', 4, 1, 61, 1),
(62, 1510, 'Décor', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'Soudé; peint', '134 x 65 x 97 cm', 'Parc du musée de Lachine', 'Musée de Lachine', '1, chemin du Musée, Lachine (Québec) H8S 4L9', '45.429875', '-73.666409', NULL, '2002-AP-SC-0071', '', '', 9, 1, 62, 1),
(63, 1512, 'L''eau et la nourriture', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Commande à l''artiste', '/Date(252478800000-0500)/', 'Aluminium', 'Aluminium', 'Aluchromie', ' 274,5 x 812 cm', NULL, 'Usine de filtration Charles-J. des Baillets', '8585, Boulevard De La Vérendrye, LaSalle, Québec, H8N 2K2', '45.425053', '-73.619043', NULL, '1978-IA-PE-0001', '', '', 2, 16, 63, 1),
(64, 1513, 'Le mélomane', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', '/Date(1288497600000-0400)/', 'Bronze; béton', NULL, NULL, NULL, 'Parc François-Perrault', NULL, NULL, '45.562200', '-73.600852', NULL, '2011-AP-SC-0011', '', '', 27, 1, 64, 1),
(65, 1514, 'Mélangez le Tout', 'Le batteur à œufs', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', '/Date(1311652800000-0400)/', 'Aluminium', NULL, 'Découpe au laser; assemblage; peinture électrostat', '580 x 365 cm', NULL, 'Centre Jean-Claude-Malépart', '2633 Ontario Est, Montréal, QC H2K 1W8', '45.534340', '-73.552733', NULL, '2011-AP-SC-0031', '', '', 4, 1, 64, 1),
(66, 1516, 'Caesura', 'Œuvre pour la paix', 'Art public', 'Beaux-arts', 'Commande publique de la ville de Montréal (Concour', '/Date(678859200000-0400)/', 'Granit; pierre de Rivière-à-Pierre; bronze; béton,', NULL, 'Bronze coulé; soudure; béton coulé; taille; poliss', '500 x 1100 x 1450 cm', 'Parc Jarry', NULL, NULL, '45.537512', '-73.628020', NULL, '910757.0', '', '', 27, 2, 66, 1),
(67, 1518, 'Theatre for Sky Blocks', 'Théâtre pour fragments célestes', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; encre de sérigraphie; granit vert laurentie', NULL, 'Soudure; sérigraphie; peinture; coupage', '300 x 250 x 1000 cm', 'Parc Fort-Rolland', NULL, NULL, '45.433893', '-73.696750', NULL, '2002-SC-49', '', '', 9, 2, 66, 1),
(68, 1520, 'Les graminées du jardin Saint-Sulpice', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal (Concour', '/Date(1167627600000-0500)/', 'Acier inoxydable', NULL, 'Coupé; soudé', '244 x 1000', 'Parc Berthe-Louard', NULL, '9355, avenue de Galilée', '45.559348', '-73.641608', NULL, '2007-IN-02', '', '', 16, 2, 66, 1),
(69, 1522, 'Give Peace a Chance', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', NULL, 'Calcaire; plantes indigènes', NULL, 'Pierre taillée', '2300 x 640 cm', 'Parc du Mont-Royal', NULL, NULL, '45.505007', '-73.583820', NULL, '2009-IN-05', '', '', 4, 2, 66, 1),
(70, 1524, 'Monument au frère Marie-Victorin', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-504903600000-0500)/', 'Bronze; granit', NULL, 'Bronze coulé', '295  x 140  x 140 cm', NULL, 'Jardin botanique', '4101, rue Sherbrooke Est, Montréal, Québec, H1X 2B2', '45.557281', '-73.555903', NULL, '900963.0', '', '', 24, 1, 70, 1),
(71, 1526, 'Le lion de La Feuillée', 'Le lion de Lyon', 'Art public', 'Beaux-arts', 'Don', '/Date(694242000000-0500)/', 'Fonte', NULL, 'Coulée industriel', '210 x 230 x 400 cm', 'Jardin botanique', 'Jardin botanique', '4101, rue Sherbrooke Est, Montréal, Québec, H1X 2B2', '45.558796', '-73.555637', NULL, '1994-APE-SC-04', '', '', 24, 1, 71, 1),
(72, 1528, 'Agora', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(566715600000-0500)/', 'Béton; pavés; eau ', NULL, 'Moulage; assemblage', '762 x 762 x 762 cm', 'Square Viger', NULL, NULL, '45.512075', '-73.554819', NULL, '1982-IN-16', '', '', 4, 2, 72, 1),
(73, 1530, 'Mastodo', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(566715600000-0500)/', 'Bronze; acier inoxydable; béton; eau', NULL, 'Moulage; assemblage', '420 x 580 x 610 cm', 'Square Viger', NULL, NULL, '45.511800', '-73.554681', NULL, '1987-APE-SC-28', '', '', 4, 1, 72, 1),
(74, 1532, 'Cailloudo', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(632466000000-0500)/', 'Bronze, lumière', NULL, 'Coulé; assemblé', '132 x 425 x 760 cm', NULL, 'Bibliothèque de Saint-Laurent', '1380, rue de l''Église, Montréal (QC) H4L 2H2', '45.512457', '-73.676799', NULL, '2002-SC-68', '', '', 25, 1, 72, 1),
(75, 1534, 'Hommage à Claude Jutra', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(926913600000-0400)/', 'Granit; laiton; émail', NULL, 'Assemblé; soudé; découpé; taillé; collé', '250 x 75 x 70 cm', 'Parc Claude-Jutra', NULL, NULL, '45.513240', '-73.572945', NULL, '1997-AP-SC-08', '', '', 5, 1, 72, 1),
(76, 1536, 'La ville imaginaire', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(873864000000-0400)/', 'Granit', NULL, 'Taillé; assemblé', '1900 x 1800 x 2750 cm', 'Parc Jean-Drapeau, Île Sainte-Hélène', NULL, NULL, '45.512697', '-73.537714', NULL, '1997-APE-SC-08', '', '', 4, 2, 76, 1),
(77, 1538, 'Révolutions', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', '/Date(1042779600000-0500)/', 'Aluminium; acier galvanisé', NULL, NULL, '850 x 500 cm', 'Parc Maisonneuve-Cartier', NULL, NULL, '45.523985', '-73.552731', NULL, '2003-APE-SC-03', '', '', 4, 1, 77, 1),
(78, 1540, 'L''arc', 'Hommage à Salvador Allende (1908-1973)', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal (Concour', '/Date(1230786000000-0500)/', 'Béton, acier inoxydable', NULL, NULL, '305 x 470 x 125', 'Parc Jean-Drapeau, Île Notre-Dame', NULL, NULL, '45.505855', '-73.527741', NULL, '2009-SC-03', '', '', 4, 1, 77, 1),
(79, 1542, 'Buste du Dr. José P. Rizal', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(915166800000-0500)/', 'Bronze; granit', NULL, 'Fonte à la cire perdue', '238 x 148 x 135 cm', 'Parc Mackenzie-King', NULL, NULL, '45.491014', '-73.634079', NULL, '1999-SC-05', '', '', 23, 1, 79, 1),
(80, 1544, 'Monument à Christophe Colomb', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(189320400000-0500)/', 'Bronze; granit; béton', NULL, 'Bronze coulé', '272 x 116 x 94 cm', 'Parc de Turin', NULL, NULL, '45.545114', '-73.610194', NULL, '900959.0', '', '', 27, 1, 80, 1),
(81, 1546, 'Cosmos', 'Murale peinte; Cosmos I, II, III', 'Intégration à l''architecture', 'Beaux-arts', 'Don', '/Date(-157748400000-0500)/', 'Bois; tissus; nylon; papier', 'Toile marouflé sur contreplaqué', 'Collage; peinture', '185 x 677 x 5 cm', NULL, 'Bibliothèque de Pointe-aux-Trembles', '14001 Rue Notre-Dame Est, Montréal, QC H1A 1T9', '45.668131', '-73.494621', NULL, '0 45901.0', '', '', 8, 16, 81, 1),
(82, 1548, 'Obélisque en hommage à Charles de Gaulle', 'Mémorial au général De Gaulle', 'Art public', 'Beaux-arts', 'Don', '/Date(694242000000-0500)/', 'Granit; époxy; ciment; peinture', NULL, NULL, '1780 x 240 x 270 cm', 'Parc La Fontaine', NULL, NULL, '45.526107', '-73.564759', NULL, '926212.0', '', '', 5, 1, 82, 1),
(83, 1550, 'China Wall', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier corten', NULL, 'Soudé', '225 x 177 x 489 cm', 'Parc René-Lévesque', NULL, NULL, '45.428562', '-73.681682', NULL, '2002-SC-29', '', '', 9, 1, 83, 1),
(84, 1553, 'Maisonneuve fonde Montréal le 18 mai 1642', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503819', '-73.587641', NULL, '1931-IA-PE-0009', '', '', 4, 16, 84, 1),
(85, 1554, 'Portail avec bas-reliefs', 'Mémoire', 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(536475600000-0500)/', 'Bois; ciment; peinture; miroir', NULL, 'Fondu; vitrifié; peint; coupé; assemblé', '520 X 520 cm', NULL, 'Chapelle historique du Bon-Pasteur', '100, rue Sherbrooke Est, Montréal (Québec)  H2X 1C3', '45.513427', '-73.546886', NULL, '1987-IA-SC-0001', '', '', 4, 1, 85, 1),
(86, 1555, 'Place du Temple', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(641448000000-0400)/', 'Ciment; métal; peinture', NULL, 'Coulé; peint', '500 x 1800 x 6700 cm', 'Place Félix-Leclerc', NULL, NULL, '45.423620', '-73.624915', NULL, '2002-SC-62', '', '', 2, 2, 85, 1),
(87, 1557, 'Fontaine de vie', 'Les baigneuses', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Anorthosite', NULL, 'Sculpté', '370 x 550 cm', 'Place de l''hôtel de ville', NULL, '1800, boul Saint-Joseph, Lachine, QC H8S 2N4', '45.433162', '-73.681258', NULL, '2002-SC-26', '', '', 9, 1, 87, 1),
(88, 1559, 'Buste de Simon Bolivar', 'Simón Bolívar', 'Art public', 'Beaux-arts', 'Don', '/Date(820472400000-0500)/', 'Bronze; granit', NULL, NULL, '248.5 x 99.5 x 48', 'Parc Hector-Toe-Blake', NULL, NULL, '45.489486', '-73.580919', NULL, '1986-SC-09', '', '', 4, 1, 88, 1),
(89, 1561, 'Albarello', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Céramique; acier; plantes', NULL, 'Soudé; assemblé', '340 x 290 cm', 'Parc du musée de Lachine', 'Musée de Lachine', '1, chemin du Musée, Lachine (Québec) H8S 4L9', '45.429940', '-73.666844', NULL, '2002-SC-14', '', '', 9, 1, 89, 1),
(90, 1563, 'À la croisée des mots', 'arbre-sculpture', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', '/Date(1093752000000-0400)/', 'Acier galvanisé, aluminium anodisé', NULL, 'Feuilles d''aluminium anodisé; découpées; soudées', '732 x 300 cm', NULL, 'Centre Georges-Vanier', '2450 Rue Workman\rMontréal, Qc', '45.483797', '-73.575105', NULL, '2004-SC-10', '', '', 7, 2, 90, 1),
(91, 1565, 'Mots choisis', 'Les mots choisis', 'Intégration à l''architecture', 'Beaux-arts', 'Commande publique de la Ville de Montréal', NULL, 'Plexiglas; bois', NULL, 'Gravé; assemblé', NULL, NULL, 'Bibliothèque de Pointe-aux-Trembles', '14001 Rue Notre-Dame Est, Montréal, QC H1A 1T9', '45.668131', '-73.494621', NULL, '2006-IA-SC-0001', '', '', 8, 1, 90, 1),
(92, 1566, 'Hommage aux forces vitales du Québec', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; acier chromé; béton; lumière', NULL, 'Techniques multiples', '366 x 3800 x 1600 cm', 'Parc des Rapides', NULL, NULL, '45.420052', '-73.603372', NULL, '2002-SC-63', '', '', 2, 2, 92, 1),
(93, 1568, 'Monument aux braves de N.D.G.', 'Monument aux combattants\rLes Braves de N.D.G.', 'Art public', 'Beaux-arts', 'Inconnu', '/Date(-1577991600000-0500)/', 'Bronze; granit', NULL, 'Bronze moulé', '400 x 318 cm', 'Parc Notre-Dame-de Grâce', NULL, NULL, '45.472499', '-73.613726', NULL, '190916.0', '', '', 23, 1, 93, 1),
(94, 1570, 'Optimax', 'Le Sphinx, Optimax (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Calcaire; béton', NULL, 'Taille directe', '292 x 246 x 1250 cm', 'Parc du Mont-Royal', NULL, NULL, '45.500911', '-73.593288', NULL, '1966-APE-SC-13', '', '', 4, 1, 94, 1),
(95, 1571, 'Jacques Cartier sur le sommet du mont Royal', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503843', '-73.587576', NULL, '1931-IA-PE-0010', '', '', 4, 16, 95, 1),
(96, 1573, 'Non titré', 'Sans-titre (photographies)', 'Intégration à l''architecture', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', NULL, 'Bois', 'Contre-collé sur bois et laminé', '67 x 101.5 x 3 cm', NULL, 'Bibliothèque Saint-Pierre', '183, rue des Érables, Lachine (Québec) H8R 1B1', '45.445692', '-73.651331', NULL, '', '', '', 9, 19, 96, 1),
(97, 1577, 'Les baigneurs', NULL, 'Intégration à l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Centre récréatif Gadbois', '5485, chemin de la Côte-Saint-Paul, Montréal (Québec) H4C 1X3', '45.466339', '-73.595615', NULL, '1960-IA-SC-0001', '', '', 7, 1, 97, 1),
(98, 1578, 'Les baigneurs', 'Bas-relief (extérieur)', 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', NULL, 'Pierre', NULL, 'Taille directe', '(2) 165 x 555 x 15', NULL, 'Aréna Maurice-Richard', '2800 Rue Viau, Montréal, QC H1V 3J3', '45.562464', '-73.547304', NULL, '1961-IA-SC-0001', '', '', 22, 1, 97, 1),
(99, 1579, 'L''eau et la santé', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Commande à l''artiste', NULL, 'Aluminium', 'Aluminium', 'Aluchromie', ' 274,5 x 812 cm', NULL, 'Usine de filtration Charles-J. des Baillets', '8585, Boulevard De La Vérendrye, LaSalle, Québec, H8N 2K2', '45.425053', '-73.619043', NULL, '1977-IA-PE-0001', '', '', 2, 16, 99, 1),
(100, 1580, 'Une leçon d''histoire', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(599634000000-0500)/', 'Métal; bois; époxy; livre', NULL, 'Coulé; taillé; moulé; patiné; collé; pulvérisé', NULL, NULL, 'Bibliothèque Frontenac', '2550 Rue Ontario Est, Montréal, QC H2K 1W7', '45.533042', '-73.551858', NULL, '860317.0', '', '', 4, 2, 99, 1),
(101, 1581, 'Delos, septième porte de la perfection et de l''immortalité, Convoi III', 'Delos', 'Art public', 'Beaux-arts', 'Don', '/Date(1292389200000-0500)/', 'Acier corten; acier.', NULL, NULL, NULL, 'Parc Baldwin', NULL, NULL, '45.534496', '-73.562238', NULL, '2011-AP-IN-0013 ', '', '', 5, 1, 101, 1),
(102, 1583, 'Champlain explore le site de Montréal en 1603', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503877', '-73.587492', NULL, '1931-IA-PE-0011', '', '', 4, 16, 102, 1),
(103, 1595, 'Nous deux', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(915166800000-0500)/', 'Acier; peinture', NULL, 'Découpé; soudé; meulé; boulonné; peint', '244 x 142 x 161', 'Parc du musée de Lachine', 'Musée de Lachine', '1, chemin du Musée, Lachine (Québec) H8S', '45.429983', '-73.666989', NULL, '2002-SC-16', '', '', 9, 1, 103, 1),
(104, 1597, 'Colonne', 'Sculpture (extérieur)', 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', NULL, 'Granit; acier inoxydable; verre; néon', NULL, 'Taille directe; assemblé', '700 x 124,5 cm', NULL, 'Centre des arts contemporains du Québec à Montréal', '4247, rue Saint-Dominique, Montréal, Québec H2W 2A9', '45.518992', '-73.581993', NULL, '1985-IA-SC-0006', '', '', 5, 1, 103, 1),
(105, 1598, 'États de choc', 'States of shock', 'Art public', 'Beaux-arts', 'Transfert', '/Date(473403600000-0500)/', 'Acier; brique; mortier; ciment; peinture', NULL, 'Soudé; formé; coulé; briqueté; peint', '15.51m', 'Parc Summerlea', NULL, NULL, '45.438429', '-73.718209', NULL, '2002-SC-50', '', '', 9, 1, 103, 1),
(106, 1600, 'La ville blanche', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; granit', NULL, 'Découpé; soudé; boulonné; percé; coulé', '650 x 2400', 'Parc René-Lévesque', NULL, NULL, '45.428448', '-73.680350', NULL, '2002-SC-30', '', '', 9, 2, 103, 1),
(107, 1602, 'Espace cubique ou hommage à Malevitch', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(694242000000-0500)/', 'Verre; granit; acier; béton; lumière', NULL, 'Taillé; coupé; soudé; assemblé', '254 x 224 x 225 cm', 'Parc du musée de Lachine', 'Musée de Lachine', '1, chemin du Musée, Lachine (Québec) H8S 4L9', '45.429901', '-73.666579', NULL, '2002-SC-15', '', '', 9, 2, 103, 1),
(108, 1604, 'Cube géométrique', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier corten; Béton', NULL, NULL, '500 x 390 x 390 cm', 'Parc Malborough', NULL, '2105, rue Beauzèle,\rSaint-Laurent (Montréal)\rQuébec', '45.523012', '-73.721010', NULL, '1978-SC-02', '', '', 25, 1, 108, 1),
(109, 1606, 'Le jardin de Lyon', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(944110800000-0500)/', 'Acier inoxydable; bronze; luminaire; bois; granit;', NULL, NULL, NULL, 'Place J.-Ernest-Laforce', NULL, NULL, '45.512470', '-73.555461', NULL, '2000-IN-08', '', '', 4, 2, 109, 1),
(110, 1610, 'Orbite optique no 2', 'L''Artichaut', 'Art public', 'Beaux-arts', 'Transfert', '/Date(-63140400000-0500)/', 'Béton; acier', NULL, 'Béton projeté', '800 cm x 1230 cm', 'Parc Jean-Drapeau, Île Sainte-Hélène', NULL, NULL, '45.522507', '-73.534649', NULL, '901611.0', '', '', 4, 1, 110, 1),
(111, 1612, 'Fontaine', 'Jeux d''enfants\r\rNote : Ce titre était en usage avant le démantèlement de l''œuvre, en 2000. De l''œuvr', 'Art public', 'Beaux-arts', 'Transfert', '/Date(489211200000-0400)/', 'Acier inoxydable; bronze chromé; béton', NULL, NULL, '450 x 1450 x 1195 cm', 'Square Viger', NULL, NULL, '45.513958', '-73.552921', NULL, '1984-APE-SC-08', '', '', 4, 2, 111, 1),
(112, 1616, 'Athéna', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(951886800000-0500)/', 'Bronze; granit', NULL, 'Fonte à la cire perdue', '310 x 100 x 100 cm', 'Parc Athéna', NULL, NULL, '45.527740', '-73.624282', NULL, '2000-SC-07', '', '', 27, 1, 112, 1),
(113, 1618, 'Hommage à Mihai Eminescu, poète roumain', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(1104555600000-0500)/', 'Bronze', NULL, 'Bronze coulé', '243 x 149 cm', 'Parc Devonshire/Place de la Roumanie', NULL, NULL, '45.514796', '-73.576459', NULL, '2004-SC-09', '', '', 5, 1, 113, 1),
(114, 1620, 'Trait d''union', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(410245200000-0500)/', 'Béton; pierre; acier inoxydable; eau.', NULL, 'Ancré; boulonné; collé', '265 x 275 x 1800 cm', NULL, 'Bibliothèque Saint-Léonard', '8400, boulevard Lacordaire\rSaint-Léonard (Québec)\rH1R 3B1', '45.586472', '-73.597139', NULL, '1984-APE-SC-07', '', '', 18, 1, 114, 1),
(115, 1622, 'Les leçons singulières (volet 1)', 'Les leçons singulières (première partie)', 'Art public', 'Beaux-arts', 'Commande publique de la ville de Montréal (Concour', '/Date(654667200000-0400)/', 'Bronze; laiton; acier inoxydable', NULL, 'Coulé; découpé; formé', '97 x 2000 x 1000 cm', 'Place Roy', NULL, NULL, '45.521580', '-73.570456', NULL, '908500.0', '', '', 5, 2, 114, 1),
(116, 1625, 'Les leçons singulières (volet 2)', 'Les leçons singulières (deuxième partie)', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', '/Date(673070400000-0400)/', 'Bronze; laiton; acier inoxydable', NULL, 'Coulé; découpé; formé', '96 x 1800 x 1120 cm', 'Parc La Fontaine', NULL, NULL, '45.523417', '-73.568557', NULL, '912010.0', '', '', 5, 2, 114, 1),
(117, 1627, 'Détour : le grand jardin', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(757400400000-0500)/', 'aluminium ; acier galvanisé', NULL, 'Soudé; boulonné; percé; peint', '500 x 1865 x 2109 cm', 'Parc René-Lévesque', NULL, NULL, '45.428373', '-73.681115', NULL, '2002-SC-31', '', '', 9, 2, 114, 1),
(118, 1629, 'Le carrousel de l’île', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', '/Date(1103778000000-0500)/', 'Acier galvanisé; laiton', NULL, NULL, '470 x 1500 cm', 'Carrefour giratoire des boulevards, René-Lévesque et Ïle-des-Sœurs', NULL, NULL, '45.465811', '-73.544778', NULL, '2005-SC-02', '', '', 33, 2, 114, 1),
(119, 1631, 'Un jardin à soi', NULL, 'Art public', 'Beaux-arts', 'Commande à l''artiste', '/Date(1268024400000-0500)/', 'Laiton; acier inoxydable', NULL, 'Découpé; assemblé', '101.5 x 157 x 203 cm', NULL, 'Jardin botanique', '4101, rue Sherbrooke Est, Montréal, Québec, H1X 2B2', '45.560956', '-73.565822', NULL, '2010-AP-IN-0012', '', '', 24, 2, 114, 1),
(120, 1633, 'Monument pour L', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; végétaux; asphalte', NULL, 'Coulé; soudé; peint', '111 x 4000 x 1500 cm', 'Parc Fort-Rolland', NULL, NULL, '45.434760', '-73.699892', NULL, '2002-SC-51', '', '', 9, 2, 120, 1),
(121, 1635, 'Volatiles', 'Splish-splash', 'Intégration à l''architecture', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Aluminum', NULL, 'Découpé; assemblé', NULL, NULL, 'Aquadôme-Centre aquatique familiale de LaSalle', '1411 Rue Lapierre, LaSalle, QC H8N 2J4', '45.436661', '-73.607768', NULL, '1996-IA-IN-0001', '', '', 2, 2, 120, 1),
(122, 1636, 'Nef pour quatorze reines', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de Montréal (Concour', '/Date(927864000000-0400)/', 'Granit; acier inoxydable; criblure granitique; gaz', NULL, NULL, '0.6 x 21 x 113 m', 'Place du 6-décembre-1989', NULL, NULL, '45.496042', '-73.617702', NULL, '1999-APE-IN-02', '', '', 23, 2, 120, 1),
(123, 1638, 'Hommage aux travailleurs', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Béton', NULL, 'Coulé; peint', '600 x 272 x 138 cm', NULL, NULL, 'Boulevard Henri-Bourassa', '45.600702', '-73.638456', NULL, '2002-SC-67', '', '', 11, 1, 123, 1),
(124, 1640, 'Le grand Jean-Paul', NULL, 'Art public', 'Beaux-arts', 'Dépôt', NULL, 'Bronze', NULL, 'Cire perdue', '202 x 199.5 x 60.5 cm', 'Place Jean-Paul-Riopelle', NULL, NULL, '45.503104', '-73.560661', NULL, '2014-AP-SC-0002', '', '', 4, 1, 124, 1),
(125, 1641, 'Monument à Émile Nelligan', 'Buste à l''effigie du poète Émile Nelligan', 'Art public', 'Beaux-arts', 'Achat', '/Date(1119412800000-0400)/', 'Bronze; calcaire; granit', NULL, 'Bronze coulé; cire perdue', '271 x 112 x 132 cm', 'Square Saint-Louis', NULL, NULL, '45.516215', '-73.570284', NULL, '2005-SC-01', '', '', 5, 1, 124, 1),
(126, 1643, 'Songes', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', NULL, 'Papier; aluminium', NULL, NULL, '282 x 482 x 2,5 cm', NULL, 'Maison culturelle et communautaire de Montréal-Nord', '12 004, boulevard Rolland, Montréal-Nord (Québec), H1W  3W1', '45.616540', '-73.620970', NULL, '2006-IA-PH-0005', '', '', 11, 19, 126, 1),
(127, 1644, 'Jacques Cartier atterit à Hochelaga en 1535', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503907', '-73.587428', NULL, '1931-IA-PE-0012', '', '', 4, 16, 127, 1),
(128, 1648, 'Monument à sir Louis-Hippolyte La Fontaine', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-1262286000000-0500)/', 'Bronze; granit; grès; marbre', NULL, 'Fonte au sable', '700 x 570 x 370cm', 'Parc La Fontaine', NULL, NULL, '45.523017', '-73.566328', NULL, '1930-APE-SC-15', '', '', 5, 1, 128, 1),
(129, 1650, 'Monument aux braves d''Outremont', 'Monument aux morts de la guerre', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Bronze; marbre', NULL, 'Bronze coulé', '400 x 600 x 480 cm', 'Parc Outremont', NULL, NULL, '45.517753', '-73.604103', NULL, '1925-APE-SC-01', '', '', 1, 1, 128, 1),
(130, 1652, 'L''habitation en milieu urbain', 'L''espace de l''homme dans l''univers', 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', NULL, 'Grès, mortier', NULL, 'Modelage', '251 x 620 x 3,80 cm', NULL, 'Maison de la culture Marie-Uguay', '6052, boulevard Monk, Montréal (Québec) H4E 3H6', '45.457694', '-73.595515', NULL, '1982-IA-SC-0001', '', '', 7, 1, 130, 1),
(131, 1654, 'Monument à Paul de Chomedey, sieur de Maisonneuve', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-2366737200000-0500)/', 'Bronze; granit', NULL, NULL, '9m de haut', 'Place d''Armes', NULL, NULL, '45.504800', '-73.557260', NULL, '927189.5', '', '', 4, 1, 131, 1),
(132, 1656, 'Monument à Louis-Octave Crémazie', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-2004638400000-0400)/', 'Bronze; granit', NULL, 'Bronze coulé; pierre taillée', '300 x 300 x 188 cm', 'Square Saint-Louis', NULL, NULL, '45.517388', '-73.569581', NULL, '1907-APE-SC-01', '', '', 5, 1, 131, 1),
(133, 1658, 'Monument à John Young', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-1833390000000-0500)/', 'Bronze; granit', NULL, 'Bronze coulé; pierre taillée', '520 x 340 x 670cm', 'De la Commune', NULL, NULL, '45.500112', '-73.553427', NULL, '110941', '', '', 4, 1, 131, 1),
(134, 1660, 'Monument à Édouard VII', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-1767207600000-0500)/', 'Bronze; granit', NULL, 'Coulé à la cire perdue; assemblé à la romaine à l''', '1400cm', 'Square Phillips', NULL, NULL, '45.503724', '-73.568507', NULL, '140910.0', '', '', 4, 1, 131, 1),
(135, 1662, 'Acier', 'Sous l''eau', 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Acier; béton', NULL, 'Soudé; coulé', '385 x 700 x 350cm', 'Parc Jean-Drapeau, Île Notre-Dame', NULL, NULL, '45.504307', '-73.526535', NULL, '1968-APE-SC-17', '', '', 4, 1, 135, 1),
(136, 1664, 'Le lion de Belfort', 'La Fontaine de la Sun Life Assurance Company', 'Art public', 'Beaux-arts', 'Don', '/Date(-2303578800000-0500)/', 'Bronze; granit', NULL, 'Sculpté (granite); coulé (bronze)', '504 x 232 x 421 cm', 'Square Dorchester', NULL, NULL, '45.499704', '-73.570273', NULL, '936189.7', '', '', 4, 1, 136, 1),
(137, 1666, 'Monument aux héros de la guerre des Boers', 'Monument à Lord Strathcona', 'Art public', 'Beaux-arts', 'Don par souscription publique', NULL, 'Bronze; granit', NULL, NULL, '920 x 2200 x 1600 cm', 'Square Dorchester', NULL, NULL, '45.499610', '-73.570967', NULL, '900934.0', '', '', 4, 1, 136, 1),
(138, 1668, 'Monument à sir George-Étienne Cartier', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-1609441200000-0500)/', 'Bronze; granit', NULL, 'Bronze coulé', '25 x 30 x 30m', 'Parc du Mont-Royal', NULL, NULL, '45.514231', '-73.585250', NULL, '900902.0', '', '', 4, 1, 136, 1),
(139, 1670, 'Départ de La Salle pour aller à la découverte du Mississipi', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503946', '-73.587378', NULL, '1931-IA-PE-0013', '', '', 4, 16, 139, 1),
(140, 1672, 'Totem Kwakiutl', 'Mât totémique Kwakwaka''wakw (Kwakiutl)', 'Art public', 'Beaux-arts', 'Transfert', '/Date(-63140400000-0500)/', 'Bois', NULL, 'Sculpté', '2130 x 95 cm', 'Parc Jean-Drapeau, Île Notre-Dame', NULL, NULL, '45.504995', '-73.529284', NULL, '1968-SC-17', '', '', 4, 1, 140, 1),
(141, 1674, 'Iris', 'Iris (Québec)', 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Aluminium', NULL, 'Feuilles d''aluminium galbées par martelage; soudée', NULL, 'Parc Jean-Drapeau, Île Notre-Dame', NULL, NULL, '45.505532', '-73.527751', NULL, '901608.0', '', '', 4, 1, 141, 1),
(142, 1676, 'Monument à Émilie Gamelin', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', '/Date(915166800000-0500)/', 'Bronze', NULL, 'Bronze coulé; cire perdue', '190 x 122 cm', 'Place Émilie-Gamelin', NULL, NULL, '45.51486', '-73.559707', NULL, '1999-SC-03', '', '', 4, 1, 141, 1),
(143, 1679, 'Les allusifs', NULL, 'Art public', 'Beaux-arts', NULL, NULL, 'Bois; acier', NULL, 'Assemblé; soudé; incrusté; gravé', 'xx cm x 230 cm x 170 cm', NULL, 'Marché Atwater', '138 Avenue Atwater, Montreal, QC H4C 2H6', '45.478839', '-73.575339', NULL, '2002-IN-76', '', '', 7, 2, 143, 1),
(144, 1682, 'Lanka Mata', NULL, 'Intégration à l''architecture', 'Arts décoratifs', 'Don', '/Date(-94676400000-0500)/', 'Verre; plomb; acier; néon', 'Verre', NULL, '260 x 524 x 20 cm', NULL, 'Bibliothèque Marie-Uguay', '6052 Boulevard Monk, Montréal, QC H4E 3H6', '45.457751', '-73.595486', NULL, '1967-IA-VT-0001', '', '', 7, 12, 144, 1),
(145, 1683, 'L''attente', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de Montréal (Concour', '/Date(1232946000000-0500)/', 'Aluminum ; béton ; laiton ; bronze', NULL, 'Assemblé; soudé; vissé', '411 x 258 x 258 cm', 'Parc Belmont', NULL, NULL, '45.532697', '-73.725844', NULL, '2009-SC-02', '', '', 16, 1, 145, 1),
(146, 1684, 'La façade', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(1315454400000-0400)/', 'Nylon', NULL, 'Modélisation 3D; frittage laser sélectif', '115 x 235 x 32 cm', NULL, 'Bibliothèque Père-Ambroise', '2093, rue de la Visitation, Montréal, QC, H2L 3C9', '45.522767', '-73.562670', NULL, '2011-IA-SC-0006', '', '', 4, 1, 145, 1),
(147, 1685, 'La fermière', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(-1830366000000-0500)/', 'Bronze', NULL, 'Coulé', '575 x 1900 cm', 'Place Gennevilliers-Laliberté', NULL, NULL, '45.553561', '-73.539698', NULL, '180911.0', '', '', 22, 1, 147, 1),
(148, 1687, 'Les petits baigneurs', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(-1640977200000-0500)/', 'Bronze; pierre; fonte; granit', NULL, 'Coulé; assemblé', '1000 x 400 x 300 cm', NULL, 'Bain Morgan', '1875, avenue Morgan \rMontréal (QC) \rH1V 2R1', '45.553359', '-73.538434', NULL, '182213.0', '', '', 22, 1, 147, 1),
(149, 1689, 'Monument à Dollard des Ormeaux', 'Monument à Adam Dollard des Ormeaux et à ses compagnons', 'Art public', 'Beaux-arts', 'Don par souscription publique', NULL, 'Bronze; granit', NULL, 'Coulé', '800 x 925 x 345 cm', 'Parc La Fontaine', NULL, NULL, '45.525594', '-73.573055', NULL, '200909.0', '', '', 5, 1, 147, 1);
INSERT INTO `oeuvre` (`id`, `noInterne`, `titre`, `titreVariante`, `nomCollection`, `categorieObjet`, `modeAcquisition`, `dateAccession`, `materiaux`, `support`, `technique`, `dimensionsGenerales`, `parc`, `batiment`, `adresseCivique`, `coordonneeLatitude`, `coordonneeLongitude`, `mediums`, `numeroAccession`, `description`, `urlImage`, `arrondissement`, `categorie`, `idArtiste`, `valide`) VALUES
(150, 1691, 'Monument aux braves de Lachine', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(-1420052400000-0500)/', 'Bronze; granit', NULL, 'Coulé; assemblé', '524 x 900 x 216 cm', 'Parc Stoney-Point', NULL, NULL, '45.436555', '-73.706738', NULL, '1945-APE-SC-04', '', '', 9, 1, 147, 1),
(151, 1692, 'Monument aux Patriotes', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', NULL, 'Bronze; granit', NULL, 'Fonte au sable', '850 x 410 x 370 cm', 'Place des Patriotes', NULL, NULL, '45.523411', '-73.546212', NULL, '260931.0', '', '', 4, 1, 147, 1),
(152, 1695, 'Signal dans l''espace', 'Sculpture, extérieur', 'Intégration à l''architecture', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; béton', NULL, 'Assemblage', '1370 x 975 x 30 cm', NULL, 'Bibliothèque l''Octogone', '1080 Avenue Dollard, Montreal, QC H8N 2T9', '45.424150', '-73.623311', NULL, '1984-IA-IN-0001', '', '', 2, 1, 152, 1),
(153, 1696, 'Temps d''heures', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(521438400000-0400)/', 'Béton; acier de Corten; acier; peinture', NULL, 'Assemblé; découpé; peint', '540 x 1020 x 303 cm', NULL, 'Centre Jean-Marie Gauvreau', '911, rue Jean-Talon Est, Montréal, H2R 1V5', '45.541376', '-73.613177', NULL, '902241.0', '', '', 27, 2, 152, 1),
(154, 1697, 'Anamorphose d’une fenêtre', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(631170000000-0500)/', 'Acier; béton', NULL, NULL, NULL, NULL, 'Maison de la culture Mercier', '8105, rue Hochelaga, Montréal, H1L 2K9', '45.595513', '-73.523788', NULL, '902242.0', '', '', 22, 2, 152, 1),
(155, 1698, 'Monument à John F. Kennedy', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(532069200000-0500)/', 'Bronze; granit', NULL, 'Bronze moulé', '355 x 100 x 120', 'Intersection des avenues du Président-Kennedy et McGill-College', NULL, '2001, avenue McGill College', '45.503367', '-73.573689', NULL, '1986-APE-SC-08', '', '', 4, 1, 155, 1),
(156, 1700, 'Monument à Joseph Beaubien', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Bronze; granit', NULL, 'Bronze coulé', '249 x 76.5 x 65.5 cm', 'Parc Beaubien', NULL, '461 Chemin de la Côte-Sainte-Catherine', '45.515161', '-73.607800', NULL, '2003-SC-04', '', '', 1, 1, 155, 1),
(157, 1701, 'Buste du cardinal Paul-Émile Léger', NULL, 'Art public', 'Beaux-arts', 'Prêt', '/Date(1199163600000-0500)/', 'Bronze', NULL, 'Coulé', '168 x 75 x 61,5 cm', 'Place du Cardinal-Paul-Émile-Léger', NULL, NULL, '45.509549', '-73.561333', NULL, '2008-SC-01', '', '', 4, 1, 155, 1),
(158, 1702, 'Debout', 'Debout (Monument à Félix Leclerc)', 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(657522000000-0500)/', 'Bronze', NULL, '23 sections de bronze moulées par enrobage et soud', '350 cm x 170 cm x 149.5 cm', 'Parc La Fontaine', NULL, NULL, '45.526717', '-73.571036', NULL, '900069.0', '', '', 5, 1, 158, 1),
(159, 1704, 'La porte de l’avenir', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Béton; fibre de verre; résine', NULL, 'Empilé; gravé; peint', '238 x 201,5 x 42 cm', 'Parc Elgar', 'Centre communautaire Elgar', '260 Rue Elgar, Verdun, QC', '45.457215', '-73.547032', NULL, '2000-APE-SC-06', '', '', 33, 1, 158, 1),
(160, 1706, 'Deux murales', 'Deux murales (céramique)', 'Intégration à l''architecture', 'Arts décoratifs', 'Intégration des arts à l''architecture', NULL, 'Céramique; peinture', NULL, 'Assemblage', 'Petite : 218 x 744 cm\rGrande : 427 x 881 cm', NULL, 'Jardin botanique', '4101, rue Sherbrooke Est, Montréal, Québec, H1X 2B2', '45.555969', '-73.557184', NULL, '1956-IA-CE-0001', '', '', 24, 55, 160, 1),
(161, 1708, 'Le théâtre de papier', NULL, 'Intégration à l''architecture', 'Arts décoratifs', 'Intégration des arts à l''architecture', NULL, 'Verre, acier', NULL, NULL, '360 x 1250 x 140 cm', NULL, 'Bibliothèque La Petite-Patrie', '6707 Avenue de Lorimier, Montréal, QC H2G 2P8', '45.547360', '-73.598375', NULL, '1986-IA-VR-0001', '', '', 24, 161, 161, 1),
(162, 1710, 'Et pourtant elle tourne', 'Verrière cadran solaire', 'Intégration à l''architecture', 'Arts décoratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bibliothèque de l''Île-Bizard', '500, montée de l''Église, Montréal, QC, H9C 1G9', '45.489425', '-73.882544', NULL, '1992-IA-VR-0001', '', '', 12, 161, 161, 1),
(163, 1711, 'La réparation', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de Montréal (Concour', '/Date(894600000000-0400)/', 'Marbre; granit; béton; arbres', NULL, 'Taille', '294 x 2500 cm', 'Parc Marcelin-Wilson', NULL, NULL, '45.534994', '-73.679998', NULL, '1998-AP-SC-03', '', '', 16, 2, 163, 1),
(164, 1713, 'Temple du troisième millénaire', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Béton; aluminium', NULL, 'Coulé; découpé; assemblé', '475 cm x 380 cm x 75 cm', 'Parc Alexis-Nihon', NULL, 'Rue Bertrand', '45.497286', '-73.689694', NULL, '2002-SC-69', '', '', 25, 2, 164, 1),
(165, 1715, 'Monica', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Béton; métal; ciment (base).', NULL, 'Moulé; collé; soudé; boulonné', '278 x 211 x 200 cm', 'Promenade Père-Marquette', NULL, NULL, '45.432433', '-73.683443', NULL, '2002-SC-52', '', '', 9, 1, 165, 1),
(166, 1717, 'Monument à Jackie Robinson', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(538722000000-0500)/', 'Bronze; béton', NULL, 'Bronze coulé', '254 x 203 x 194 cm', NULL, 'Stade olympique', '4545 Pierre-de-Coubertin\rMontréal, Québec', '45.555846', '-73.551088', NULL, '902214.0', '', '', 22, 1, 165, 1),
(167, 1719, 'Joseph-Xavier Perrault', 'Monument à Joseph-Xavier Perrault', 'Art public', 'Beaux-arts', 'Prêt', NULL, 'Aluminium, granit, béton', NULL, 'Aluminium moulé et fondu; granit poli', '280 cm x 92 cm x 92 cm', 'Place du Commerce', NULL, '800, rue du Square-Victoria, Montréal, Québec', '45.501193', '-73.561572', NULL, '872243.0', '', '', 4, 1, 165, 1),
(168, 1721, 'Hommage à Marguerite Bourgeoys', NULL, 'Art public', 'Beaux-arts', 'Commande en partenariat', '/Date(568011600000-0500)/', 'Bronze; granit; béton', NULL, 'Bronze coulé; cire perdue', '178 x 414 cm', 'Place Marguerite-Bourgeoys', NULL, '85, rue Notre-Dame est', '45.507373', '-73.555063', NULL, '900571.0', '', '', 4, 1, 165, 1),
(169, 1723, 'Forces', NULL, 'Art public', 'Beaux-arts', 'Autre', '/Date(1325394000000-0500)/', 'Béton; acier inoxydable', NULL, 'Coulé; ancré', '220 x 370 x 230 cm', NULL, NULL, '6150, avenue Royalmount', '45.485971', '-73.674962', NULL, 'NUL022', '', '', 23, 1, 165, 1),
(170, 1724, 'Monument à Robert Burns', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-1262286000000-0500)/', 'Bronze; granit', NULL, 'Bronze coulé', '511 x 276 x 276 cm', 'Square Dorchester', NULL, NULL, '45.499462', '-73.571571', NULL, '1930-APE-SC-16', '', '', 4, 1, 170, 1),
(171, 1726, 'Pont d''Arles en transfert', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; pierres; bois; gravier; tourbe', NULL, 'Soudé; boulonné; peint', '347 x 320 x 900 cm', 'Parc du musée de Lachine', 'Musée de Lachine', '1, chemin du Musée, Lachine (Québec) H8S 4L9', '45.429964', '-73.666167', NULL, '2002-SC-20', '', '', 9, 2, 171, 1),
(172, 1728, 'Signal pour Takis', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; granit; béton', NULL, 'Soudé; boulonné', '850 x 900 x 2000 cm', 'Parc René-Lévesque', NULL, 'Chemin du canal', '45.428754', '-73.682789', NULL, '2002-SC-32', '', '', 9, 2, 171, 1),
(173, 1730, 'Lieux sans temple 3', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'Soudé; patiné; oxydé; collé; boulonné', '229 x 140 x 117.5 cm', 'Parc du musée de Lachine', 'Musée de Lachine', '1, chemin du Musée, Lachine (Québec) H8S 4L9', '45.429924', '-73.666603', NULL, '2002-SC-17', '', '', 9, 1, 171, 1),
(174, 1732, 'Lieux sans temple 4', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'Soudé; patiné; oxydé; collé; boulonné', '225 x 110 x 131 cm', 'Parc du musée de Lachine', 'Musée de Lachine', '1, chemin du Musée, Lachine (Québec) H8S 4L9\r', '45.429923', '-73.666567', NULL, '2002-SC-18', '', '', 9, 1, 171, 1),
(175, 1734, 'Lieux sans temple 5', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'Soudé; patiné; oxydé; collé; boulonné', '250 x 140,5 x 117,5 cm', 'Parc du musée de Lachine', 'Musée de Lachine', '1, chemin du Musée, Lachine (Québec) H8S 4L9', '45.429882', '-73.666570', NULL, '2002-SC-19', '', '', 9, 1, 171, 1),
(176, 1736, 'Souvenir de 1955 ou 2026 Roberval', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; pierre', NULL, 'Découpé; soudé; boulonné; peint', '465 x 1017 x 800 cm', 'Parc René-Lévesque', NULL, NULL, '45.429123', '-73.681809', NULL, '2002-SC-33', '', '', 9, 2, 171, 1),
(177, 1738, 'Fontaine Wallace', 'Fontaine des Vosges', 'Art public', 'Beaux-arts', 'Don', NULL, 'Fonte', NULL, 'Moulé; boulonné; peint', '275 cm x 82 x 82 cm', 'Parc Jean-Drapeau, Île Notre-Dame', NULL, NULL, '45.505419', '-73.528120', NULL, '160580.4', '', '', 4, 1, 177, 1),
(178, 1740, 'Triptyque sur le paysage', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(852094800000-0500)/', 'Acier galvanisé; verre', NULL, NULL, '200 cm', 'Île de la Visitation', NULL, '10897, rue Du Pont', '45.575443', '-73.661664', NULL, '1997-AP-SC-09', '', '', 16, 2, 178, 1),
(179, 1742, 'Signe solaire', NULL, 'Art public', 'Beaux-arts', 'Achat', NULL, 'Acier; béton; fibre de verre; résine d''époxy; lima', NULL, NULL, '277 x 330 x 106.5 cm', 'Parc Jean-Drapeau, Île Sainte-Hélène', NULL, NULL, '45.513247', '-73.530889', NULL, '1967-APE-SC-18', '', '', 4, 1, 179, 1),
(180, 1744, 'Ashapmouchouan', 'L''œuvre était initialement sans-titre, son titre actuel a été attribué par l''ayant droit de Maurice ', 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Acier Corten', NULL, NULL, '417 x 245 cm', NULL, 'Habitations Laurier', '465, rue Gilford\rMontréal, Québec', '45.526861', '-73.586445', NULL, '1972-SC-03', '', '', 5, 1, 180, 1),
(181, 1745, 'Éclosion', 'Note: L''œuvre était initialement sans-titre, son titre actuel a été attribué par l''ayant droit de Ma', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'Découpé; courbé; soudé; boulonné; peint', '258 x 142 x 202 cm', 'Parc du musée de Lachine', 'Musée de Lachine', '1, chemin du Musée, Lachine (Québec) H8S 4L9', '45.430104', '-73.666761', NULL, '2002-SC-21', '', '', 9, 1, 180, 1),
(182, 1748, 'À voile déchirée', 'L''œuvre était initialement sans-titre, son titre actuel a été attribué par l''ayant droit de Maurice ', 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Acier peint', NULL, NULL, '469 x 315 x 394 cm', NULL, 'Habitations De Maisonneuve', '2485, boulevard de Maisonneuve est\rMontréal, Québec', '45.530132', '-73.548258', NULL, '902223.0', '', '', 4, 1, 180, 1),
(183, 1750, 'Sublime', 'L''œuvre était initialement sans-titre, son titre actuel a été attribué par l''ayant droit de Maurice ', 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Acier; béton', NULL, NULL, '762 x 457 cm', NULL, 'Habitations Favard', '2066, rue Favard\rMontréal, Québec', '45.477999', '-73.556237', NULL, '1978-SC-03', '', '', 7, 1, 180, 1),
(184, 1752, 'Évolution de joie', 'L''œuvre était initialement sans-titre, son titre actuel a été attribué par l''ayant droit de Maurice ', 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Acier; béton', NULL, 'Coupé; courbé; soudé', '252.5 x 165 x 335', NULL, 'Habitations De Mentana', '4110 rue Mentana\rMontréal, Québec', '45.524225', '-73.574470', NULL, '1966-APE-SC-12', '', '', 5, 1, 180, 1),
(185, 1755, 'Sans titre', 'Cloisons-paravent et comptoir-réception', 'Intégration à l''architecture', 'Arts décoratifs', 'Commande publique de la ville de Montréal (Concour', '/Date(441781200000-0500)/', 'Bois; acier', NULL, 'Assemblé', '211 x 1589 x 348 cm', NULL, 'Bibliothèque du Plateau-Mont-Royal', '465 Avenue du Mont-Royal Est, Montréal, QC H2J 1W3', '45.524831', '-73.582313', NULL, '1984-IA-MA-001', '', '', 5, 185, 185, 1),
(186, 1756, 'Colonne stèle', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(631170000000-0500)/', 'Ardoise; silicone; verre', NULL, 'Assemblage; inscription', '244 x 45,5 x 32 cm', NULL, 'Bibliothèque du Plateau-Mont-Royal', '465 Avenue du Mont-Royal Est, Montréal, QC H2J 1W3', '45.524831', '-73.582313', NULL, '1990-IA-SC-0016', '', '', 5, 1, 185, 1),
(187, 1757, 'Regard sur le fleuve', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier corten', NULL, 'Découpé; soudé', '312 x 650 x 20 cm', 'Parc Stoney-Point', NULL, NULL, '45.435609', '-73.706410', NULL, '2002-SC-53', '', '', 9, 1, 185, 1),
(188, 1759, 'Table des matières de supports du savoir', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(1031889600000-0400)/', 'Matériaux divers', 'Gypse', 'Multiple', '311 x 863 x 6', NULL, 'Bibliothèque Parc-Extension', '421, rue Saint-Roch, H3N 1K2', '45.531255', '-73.628576', NULL, '2002-IA-IN-0001', '', '', 27, 37, 185, 1),
(189, 1762, 'Tango de Montréal', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal (Concour', '/Date(923976000000-0400)/', 'Argile', NULL, 'Moulage d''argile crue', '1040 x 1740 cm', 'Place Gérald-Godin', NULL, '4433-4435-4437, rue Rivard, Place Gérald Godin', '45.524229', '-73.581463', NULL, '1999-SC-06', '', '', 5, 1, 189, 1),
(190, 1764, 'Les sons de la musique', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', NULL, 'Béton', NULL, 'Coulé; moulé', '246 x 1344 x 108 cm', 'De la Gauchetière', NULL, NULL, '45.507074', '-73.560927', NULL, '902229.0', '', '', 4, 1, 190, 1),
(191, 1767, 'Cheval à plume', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Calcaire', NULL, 'Taillé; sculpté; gravé; percé; peint', '245 x 315 x 210 cm', 'Parc René-Lévesque', NULL, NULL, '45.427985', '-73.679242', NULL, '2002-SC-35', '', '', 9, 1, 191, 1),
(192, 1769, 'Études pour la figure, Saint-Laurent', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Pierre; pigments métalliques', NULL, 'Taillé; gravé; collé; peint', '310 x 95 x 95 cm', 'Boulevard Saint-Joseph', NULL, NULL, '45.433725', '-73.685529', NULL, '2002-SC-54', '', '', 9, 1, 191, 1),
(193, 1771, 'Monument aux braves de Verdun', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Bronze', NULL, NULL, NULL, 'Parc du Souvenir', 'Hôtel de Ville arrondissement de Verdun', '4555 rue de Verdun', '45.458882', '-73.572314', NULL, '1924-AP-SC-0001', '', '', 33, 1, 193, 1),
(194, 1773, 'After Babel, a Civic Square', 'After Babel\rAfter Babel / A Civic Square\rAfter Babel (a civic square)', 'Art public', 'Beaux-arts', 'Don', '/Date(859352400000-0500)/', 'Acier corten; bronze; laiton', NULL, 'Assemblé; soudé; découpé; moulé', '450 x 1000 cm', 'Promenade des artistes', NULL, NULL, '45.509963', '-73.567202', NULL, '936043.0', '', '', 4, 2, 194, 1),
(195, 1776, 'Les sports', 'Murale (mosaïque)', 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(-321652800000-0400)/', 'Céramique; verre', NULL, 'Assemblage', '84 x 2261 x 2,5 cm', NULL, 'Aréna Maurice-Richard', '2800 Rue Viau, Montréal, QC H1V 3J3', '45.562464', '-73.547304', NULL, '1959-IA-TM-0001', '', '', 22, 37, 195, 1),
(196, 1777, 'La joie', 'Murale peinte', 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(-300571200000-0400)/', 'Gesso; béton', NULL, 'Modelage; peinture', '254 x 1234,5 x 10', NULL, 'Centre Pierre-Charbonneau', '3000 Rue Viau, Montréal, QC H1V 3J3', '45.562047', '-73.550076', NULL, '1959-IA-TM-0002', '', '', 22, 37, 195, 1),
(197, 1779, 'La peur', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(907214400000-0400)/', 'Granit; aluminium; acier galvanisé; grès; calcaire', NULL, 'Peint; soudé; assemblé', '365 x 121 x 320cm', 'Place D’Youville', NULL, NULL, '45.501361', '-73.555219', NULL, '1998-SC-04', '', '', 4, 2, 197, 1),
(198, 1781, 'Monument à la Pointe', 'La Pointe (titre provisoire)', 'Art public', 'Beaux-arts', 'Commande publique de la ville de Montréal (Concour', '/Date(976683600000-0500)/', 'Béton; brique; acier; aluminium', NULL, NULL, '1400 x 400 cm', NULL, NULL, NULL, '45.476015', '-73.573449', NULL, '2001-APE-SC-07', '', '', 7, 2, 197, 1),
(199, 1783, 'Daleth', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal (Concour', '/Date(1257742800000-0500)/', 'Granit; béton; acier inoxydable', NULL, 'Coulé; gravé; découpé; collé; assemblé', '350 x 6200 cm', 'Parc Marcelin-Wilson', NULL, NULL, '45.534506', '-73.678436', NULL, '2010-AP-SC-0002', '', '', 16, 2, 197, 1),
(200, 1784, 'Trajectoire no 2', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'Soudé; peint; patiné; boulonné', '195 cm x 103 cm x 276 cm', 'Parc du musée de Lachine', 'Musée de Lachine', '1, chemin du Musée, Lachine (Québec) H8S 4L9', '45.430542', '-73.666852', NULL, '2002-SC-22', '', '', 9, 1, 200, 1),
(201, 1786, 'Trame d’appel', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; granit', NULL, 'Souder; peint; installation par ancrages chimique', '400 x 365 x 183 cm', 'Parc Eugène-Dostie', 'Pavillon Vincent Lecavalier', '500, montée de l''Église, Montréal', '45.487539', '-73.883436', NULL, '2002-SC-66', '', '', 12, 1, 200, 1),
(202, 1788, 'La naissance', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(788936400000-0500)/', 'Acier', NULL, 'Découpé; soudé', '380 X 100 X 140 cm', NULL, 'Centre culturel de Verdun', '5955 Bannantyne, Verdun, Québec, H4H 1H6', '45.448586', '-73.577611', NULL, '1995-APE-SC-22', '', '', 33, 1, 200, 1),
(203, 1790, 'Le coup de départ', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', '/Date(1226466000000-0500)/', 'Acier inoxydable', NULL, NULL, '538 X 371 X165 cm', 'Parc Philippe-Laheurte', NULL, NULL, '45.505415', '-73.718634', NULL, '2009-SC-01', '', '', 25, 1, 200, 1),
(204, 1792, 'Monument à Nelson', 'Colonne Nelson', 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-5080647600000-0500)/', 'Calcaire; béton; grès', NULL, NULL, '2055 x 600 x 600 cm', 'Place Jacques-Cartier', NULL, NULL, '45.508186', '-73.553845', NULL, '1809-APE-SC-01', '', '', 4, 1, 204, 1),
(205, 1794, 'Site/interlude', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier galvanisé, pierre', NULL, 'Découpé; soudé', '400 x 185 x 8535 cm', 'Parc René-Lévesque', NULL, NULL, '45.427777', '-73.676973', NULL, '2002-AP-SC-37', '', '', 9, 2, 205, 1),
(206, 1796, 'Non titré (Fontaine; Les chérubins)', 'Fontaine; Les chérubins', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Fonte', NULL, 'Coulée', NULL, 'Parc Outremont', NULL, NULL, '45.517895', '-73.604464', NULL, '2002-AP-SC-0072', '', '', 1, 1, 206, 1),
(207, 1798, 'La pierre et le feu', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(473403600000-0500)/', 'Acier', NULL, 'Découpé; soudé; boulonné; peint', '304 x 122 x 400 cm', 'Parc René-Lévesque', NULL, NULL, '45.428946', '-73.682977', NULL, '2002-AP-SC-36', '', '', 9, 1, 207, 1),
(208, 1800, 'Temps d’arrêt', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de Montréal (Concour', '/Date(1115697600000-0400)/', 'Acier intempérique; aluminium', NULL, 'Coupage; assemblage; soudure', '500 x 145 cm', 'Parc Molson', NULL, NULL, '45.549062', '-73.592662', NULL, '2006-SC-01', '', '', 24, 1, 207, 1),
(209, 1803, 'L''eau et le transport', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Commande à l''artiste', NULL, 'Aluminium', 'Aluminium', 'aluchromie', '274.5 x 812 cm', NULL, 'Usine de filtration Charles-J. des Baillets', '8585, Boulevard De La Vérendrye, LaSalle, Québec, H8N 2K2', '45.425053', '-73.619043', NULL, '1977-IA-PE-0002', '', '', 2, 16, 209, 1),
(210, 1809, 'Courbes et vent', NULL, 'Intégration à l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bibliothèque de Pierrefonds', '13555, boulevard de Pierrefonds', '45.495937', '-73.847429', NULL, '1990-IA-SC-0017', '', '', 31, 1, 210, 1),
(211, 1810, 'Fontaine du square Saint-Louis', 'Fontaine Lacroix du square Viger', 'Art public', 'Beaux-arts', 'Achat', NULL, 'Fonte', NULL, NULL, '457 x 240 cm', 'Square Saint-Louis', NULL, NULL, '45.517041', '-73.569964', NULL, '900957.0', '', '', 5, 1, 211, 1),
(212, 1812, 'Sculpture-fontaine, square Sir-George-Étienne-Cartier', 'Sculpture-fontaine du square G.-É. Cartier', 'Art public', 'Beaux-arts', 'Achat', NULL, 'Fonte', NULL, NULL, '650 x 205 cm', 'Square Sir-George-Étienne-Cartier', NULL, NULL, '45.473413', '-73.586390', NULL, '900955.0', '', '', 7, 1, 211, 1),
(213, 1815, 'Du long du long', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier brut; peinture; gravier', NULL, 'Découpé; soudé; boulonné; peint', '120 X 287X 496 cm', 'Promenade Père-Marquette', NULL, NULL, '45.431119', '-73.673413', NULL, '2002-SC-55', '', '', 9, 1, 213, 1),
(214, 1817, 'Les voûtes d''Ulysse', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(694242000000-0500)/', 'Acier; béton', NULL, 'Découpé; soudé; boulonné', '110 X 558 X 1226 cm', 'Parc René-Lévesque', NULL, NULL, '45.428916', '-73.682227', NULL, '2002-SC-37', '', '', 9, 1, 213, 1),
(215, 1819, 'L''eau et les sports', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Commande à l''artiste', NULL, 'Aluminium', 'Aluminium', 'Aluchromie', ' 274,5 x 812 cm', NULL, 'Usine de filtration Charles-J. des Baillets', '8585, Boulevard De La Vérendrye, LaSalle, Québec, H8N 2K2', '45.425053', '-73.619043', NULL, '1979-IA-PE-0001', '', '', 2, 16, 215, 1),
(216, 1821, 'From A', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Granit; mortier', NULL, NULL, '170 x 150 x 590 cm', 'Parc René-Lévesque', NULL, NULL, '45.428743', '-73.686001', NULL, '2002-SC-38', '', '', 9, 1, 216, 1),
(217, 1823, 'Force et progrès', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'Soudé; peint', '255 x 220 x 425 cm', 'Parc Monk', NULL, NULL, '45.431031', '-73.670124', NULL, '2002-SC-56', '', '', 9, 1, 217, 1),
(218, 1825, 'Écluses', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier inoxydable', NULL, 'Soudé', '415 x 111 x 135 cm', 'Parc René-Lévesque', NULL, NULL, '45.428215', '-73.678237', NULL, '2002-SC-39', '', '', 9, 1, 218, 1),
(219, 1827, 'Vitraux', NULL, 'Intégration à l''architecture', 'Arts décoratifs', NULL, '/Date(-1388516400000-0500)/', NULL, NULL, NULL, NULL, NULL, 'Hôtel de Ville de Montréal', '275 Rue Notre-Dame Est, Montréal, QC H2Y 1C6', '45.508816', '-73.554069', NULL, '1926-IA-VT-0001', '', '', 4, 12, 219, 1),
(220, 1828, 'Jour ou nuit inconnue', 'Motifs et réseaux (titre provisoire)', 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(902894400000-0400)/', 'Verre; peinture; acier; bois', 'Verre', 'Sérigraphie', '254 x 685 x 35 cm', NULL, 'Maison de la culture Pointe-aux-Trembles', '14001, rue Notre-Dame Est, Montréal, H1A 1T9', '45.668073', '-73.494782', NULL, '1998-IA-TM-0001', '', '', 8, 37, 220, 1),
(221, 1834, 'Ce qui reste 1997-2001', 'Ce qui reste; DIA-LOG (titre provisoire)', 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(990676800000-0400)/', 'Papier; bois; acrylique', 'Bois', NULL, '400 x 234 x 2 cm', NULL, 'Centre d''histoire de Montréal', '335 Place d''Youville, Montréal, QC H2Y 3T1', '45.501079', '-73.555515', NULL, '2001-API-PH-05', '', '', 4, 19, 220, 1),
(222, 1835, 'Le roi Singe', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(441781200000-0500)/', 'Béton', NULL, 'Coulé; assemblé; moulé', '550 x 400 x 21 cm', 'De la Gauchetière', NULL, NULL, '45.506907', '-73.560590', NULL, '902215.0', '', '', 4, 1, 222, 1),
(223, 1837, 'Le spectacle de la curiosité', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(894859200000-0400)/', 'Bois; verre; métal; papier', 'bois, verre et métal', 'Impression sur papier ilfochrome', '260 x 800 cm', NULL, 'Maison de la culture d''Ahuntsic - Cartierville', '10 300 rue Lajeunesse, 1er étage, Montréal (Québec), H3L 2E5 ', '45.553357', '-73.662743', NULL, '1998-IN-05', '', '', 16, 19, 223, 1),
(224, 1838, 'Espace vert', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal (Concour', '/Date(1151380800000-0400)/', 'Aluminium; verre; acier inoxydable; acrylique', 'Plexiglas', 'Impressions numériques montées à froid sur support', '215 x 450 x 36', 'Parc Pierre-Elliott-Trudeau', 'Centre communautaire intergénérationnel d''Outremont', '999, avenue McEachran, Montréal (QC) H2V 3E6', '45.519579', '-73.619247', NULL, '2006-PH-02', '', '', 1, 19, 223, 1),
(225, 1839, 'Être +', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(1259125200000-0500)/', 'Aluminum', NULL, NULL, NULL, NULL, 'Chalet du parc Étienne Desmarteaux', '3800, rue Beaubien est, Montréal, QC H1X 2T1', '45.559685', '-73.581582', NULL, '2010-IA-IN-0001', '', '', 24, 2, 225, 1),
(226, 1840, 'Monument à Louis Cyr', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(31554000000-0500)/', 'Bronze; granit; béton', NULL, 'Bronze coulé; cire perdue', '440  x 183  x 180 cm', 'Parc des Hommes-Forts', NULL, NULL, '45.475382', '-73.593225', NULL, '730929.0', '', '', 7, 1, 226, 1),
(227, 1842, 'Le serment de Dollard des Ormeaux et de ses compagnons', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503965', '-73.587328', NULL, '1931-IA-PE-0014', '', '', 4, 16, 227, 1),
(228, 1843, 'Monument à Jean-Olivier Chénier', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-2366737200000-0500)/', 'Cuivre; granit; résine', NULL, 'Sculpture de cuivre formé; soudure à l''étain.', '400 x 100 x 100 cm', 'Square Viger', NULL, NULL, '45.511042', '-73.554960', NULL, '905189.5', '', '', 4, 1, 228, 1),
(229, 1851, 'Sans titre', 'Non titrée (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-120596400000-0500)/', 'Calcaire; béton ', NULL, 'Sculpté', '348 x 335 x 267 cm', 'Parc du Mont-Royal', NULL, NULL, '45.499994', '-73.594489', NULL, '902233.0', '', '', 4, 1, 229, 1),
(230, 1853, 'Maisonneuve érige une croix sur la montagne', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.503995', '-73.587278', NULL, '1931-IA-PE-0015', '', '', 4, 16, 230, 1),
(231, 1854, 'Monument à Isabelle la Catholique', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-347137200000-0500)/', 'Bronze; cuivre; granit', NULL, 'Bronze coulé', '293 x 152.5 x 107 cm', 'Parc Sir-Wilfrid-Laurier', NULL, NULL, '45.531079', '-73.586023', NULL, '900922.0', '', '', 5, 1, 231, 1),
(232, 1856, 'Épisode', NULL, 'Art public', 'Beaux-arts', 'Achat', '/Date(63090000000-0500)/', 'Ciment', NULL, 'Ciment fondu', '184 x 250 x 113 cm', 'Jardin botanique', 'Jardin botanique', '4101, rue Sherbrooke Est, Montréal, Québec, H1X 2B2', '45.560483', '-73.558557', NULL, '1966-SC-12', '', '', 24, 1, 232, 1),
(233, 1859, 'Continuum 2009 (à la mémoire de Pierre Perrault)', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', '/Date(1243483200000-0400)/', 'Acier corten', NULL, 'Assemblé; soudé', '305 x 770 x 300 cm', 'Parc de la Promenade-Bellerive', NULL, NULL, '45.604249', '-73.509548', NULL, '2009-SC-04', '', '', 22, 1, 233, 1),
(234, 1860, 'Explorer', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(807336000000-0400)/', 'Acier brut; acier inoxydable; résine; fibre de ver', NULL, 'Soudé; boulonné; découpé; moulé', '484 x 178 x 212 cm', 'Parc René-Lévesque', NULL, NULL, '45.428890', '-73.680853', NULL, '2002-SC-40', '', '', 9, 1, 234, 1),
(235, 1865, 'Sans titre', 'Non titrée (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Calcaire', NULL, 'Sculpté', '336 x 117 x 178 cm', 'Parc du Mont-Royal', NULL, NULL, '45.500025', '-73.594055', NULL, '1966-APE-SC-14', '', '', 4, 1, 235, 1),
(236, 1867, 'Non titré', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', NULL, 'Bois; laiton; aluminium; verre; peinture; disposit', NULL, 'Découpé; assemblé; boulonné', '1 200 x 1 200 x 15 cm', NULL, 'Bibliothèque Côte-des-Neiges', '5290, chemin de la Côte-des-Neiges, Montréal, QC, H3T 1Y2', '45.496073', '-73.622116', NULL, '1983-IA-TM-0001', '', '', 23, 37, 236, 1),
(237, 1871, 'Non titré (Portes)', 'Portes', 'Intégration à l''architecture', 'Arts décoratifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maison de la culture Notre-Dame-de-Grâce', '3755, rue Botrel, Montréal, H4A 3G8', '45.475605', '-73.614587', NULL, '1983-IA-MB-0001', '', '', 23, 237, 237, 1),
(238, 1872, 'Le phare d''Archimède', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Granit; acier; néon', NULL, 'Meulé; cimenté', '750 x 1000 x 1050 cm', 'Parc René-Lévesque', NULL, NULL, '45.429161', '-73.688205', NULL, '1986-APE-SC-05', '', '', 9, 2, 238, 1),
(239, 1874, 'Le déjeuner sur l’herbe', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(757400400000-0500)/', 'Granit; pierre indiana; béton; bronze', NULL, 'Taillé; polissage; tourné; coulé; patiné', '300 x 900 x 1308 cm', 'Parc René-Lévesque', NULL, NULL, '45.428482', '-73.677576', NULL, '2002-SC-42', '', '', 9, 2, 238, 1),
(240, 1876, 'Girafes', 'Non titrée', 'Art public', 'Beaux-arts', 'Achat', '/Date(-18993600000-0400)/', 'Acier', NULL, 'Assemblé; soudé; peint', '11,8 x 3 m', 'Parc Jean-Drapeau, Île Sainte-Hélène', NULL, NULL, '45.520049', '-73.532032', NULL, '1967-SC-20', '', '', 4, 1, 240, 1),
(241, 1878, 'Migration', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-63140400000-0500)/', 'Fonte', NULL, 'Coulé; boulonné', '465 x 230 x 400 cm', 'Parc Jean-Drapeau, Île Sainte-Hélène', NULL, NULL, '45.514075', '-73.534655', NULL, '901609.0', '', '', 4, 1, 240, 1),
(242, 1880, 'Hommage à René Lévesque', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Ciment; acier inoxydable; verre', NULL, 'Ciment moulé', '518 x 1829 x 457 cm', 'Parc René-Lévesque', NULL, NULL, '45.428749', '-73.687124', NULL, '1988-SC-03', '', '', 9, 1, 240, 1),
(243, 1882, 'Lieu', 'Fleur d''hiver\rSans titre', 'Art public', 'Beaux-arts', 'Transfert', '/Date(632120400000-0500)/', 'Béton armé', NULL, 'Moulé; assemblé', '700 x 914 cm', 'Parc Noël-Sud', NULL, NULL, '45.516350', '-73.725394', NULL, '2002-SC-70', '', '', 25, 1, 240, 1),
(244, 1885, 'Les promeneurs', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, NULL, '592 x 190 x 812', 'Parc Saint-Laurent', NULL, NULL, '45.527273', '-73.686882', NULL, '1990-APE-SC-08', '', '', 25, 1, 244, 1),
(245, 1887, 'Trampolino', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier inoxydable, acier Corten', NULL, 'Soudé; assemblé', '350 x 600', NULL, 'Centre Léonard de Vinci', '8371, boulevard Lacordaire, Montréal', '45.585723', '-73.596644', NULL, '2001-APE-SC-06', '', '', 18, 1, 245, 1),
(246, 1889, 'Dex', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; ciment', NULL, 'Assemblé; soudé; percé', '148 x 503 x 730 cm', 'Parc du musée de Lachine', 'Musée de Lachine', '1, chemin du Musée, Lachine (Québec) H8S 4L9', '45.430429', '-73.666229', NULL, '2002-SC-23', '', '', 9, 1, 246, 1),
(247, 1891, 'Affinités', NULL, 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Cuivre; granit', NULL, 'Assemblé; soudé; martelé; découpé; patiné', '268 x 160 x 150 cm', 'Place Upper-Trafalgar', NULL, NULL, '45.495832', '-73.596190', NULL, '902200.0', '', '', 4, 1, 247, 1),
(248, 1893, 'Puerta de la Amistad', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(792824400000-0500)/', 'Acier peint', NULL, NULL, '750 x 120 x 570 cm', 'Parc Jean-Drapeau, Île Sainte-Hélène', NULL, NULL, '45.511015', '-73.533386', NULL, '951358.0', '', '', 4, 1, 248, 1),
(249, 1895, 'Monument à Norman Bethune', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(229752000000-0400)/', 'Marbre; granit', 'Pierre', 'Taille directe', '380 x 100 x 100 cm', 'Place Norman-Bethune', NULL, NULL, '45.495970', '-73.579460', NULL, '770958.0', '', '', 4, 1, 249, 1),
(250, 1897, 'Sans titre', 'Non titrée (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-120596400000-0500)/', 'Marbre', NULL, 'Taille directe', '274 x 127 x 81 cm', 'Parc du Mont-Royal', NULL, NULL, '45.500500', '-73.594335', NULL, '902235.0', '', '', 4, 1, 250, 1),
(251, 1899, 'Les sœurs cardinales', 'Les sœurs cardinales (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-120596400000-0500)/', 'Marbre; granit', NULL, 'Taille directe', '440 x 360 x 100', 'Parc du Mont-Royal', NULL, NULL, '45.499881', '-73.594816', NULL, '902236.0', '', '', 4, 1, 251, 1),
(252, 1901, 'L''ange de pierre', 'L''ange de pierre, (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Marbre; béton', NULL, 'Sculpté', '208 x 152cm', 'Parc du Mont-Royal', NULL, NULL, '45.500421', '-73.593759', NULL, '1964-SC-01', '', '', 4, 1, 252, 1),
(253, 1912, 'Non titré', NULL, 'Art public', 'Beaux-arts', 'Inconnu', NULL, 'Bronze', NULL, 'Coulé', '445 x 600 x 600 cm', 'Parc Ladauversière', NULL, NULL, '45.582048', '-73.582485', NULL, '1986-AP-SC-0010', '', '', 18, 1, 253, 1),
(254, 1913, 'La fondation de Montréal est décidée à Paris', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.504020', '-73.587238', NULL, '1931-IA-PE-0016', '', '', 4, 16, 254, 1),
(255, 1914, 'Polaris en lumière', NULL, 'Art public', 'Beaux-arts', 'Commande à l''artiste', '/Date(1328072400000-0500)/', 'Lumière', NULL, 'Image lumineuse projettée au sol', NULL, 'Place d''Armes', NULL, NULL, '45.504636', '-73.557128', NULL, '2013-AP-MU-0003', '', '', 4, 255, 255, 1),
(256, 1916, 'Équinoxe', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(820472400000-0500)/', 'Granit; acier inoxydable', NULL, 'Gravé; incrusté', '248 x 200', 'Promenade de la Commune', NULL, NULL, '45.508180', '-73.551290', NULL, '2013-AP-IN-0002', '', '', 4, 2, 255, 1),
(257, 1917, 'Force', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(566715600000-0500)/', 'Béton, granit; eau; céramique', NULL, NULL, '330 x 2900 x 4500 cm', 'Square Viger', NULL, NULL, '45.512625', '-73.553821', NULL, '900982.0', '', '', 4, 1, 257, 1),
(258, 1919, 'Murale céramique', NULL, 'Intégration à l''architecture', 'Arts décoratifs', 'Intégration des arts à l''architecture', NULL, 'Céramique; peinture', NULL, 'Assemblage; peinture', '213,5 x 1559 cm ', NULL, 'Centre Pierre-Charbonneau', '3000 Rue Viau, Montréal, QC H1V 3J3', '45.562047', '-73.550076', NULL, '1960-IA-CE-0001', '', '', 22, 55, 257, 1),
(259, 1920, 'Monument à Nicolas Copernic', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(-63140400000-0500)/', 'Bronze; béton', NULL, 'Bronzé coulé', '452 x 148 cm', NULL, 'Planétarium Rio Tinto Alcan de Montréal', '4801, avenue Pierre-De Coubertin, Montréal  Québec  H1V 3V4', '45.560641', '-73.549375', NULL, '689009.4', '', '', 22, 1, 259, 1),
(260, 1923, 'Dollard des Ormeaux meurt à Long-Sault pour sauver la colonie', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Achat', '/Date(-1212091200000-0400)/', NULL, NULL, NULL, NULL, 'Parc du Mont-Royal', 'Chalet du parc du Mont-Royal', '1196 Voie Camillien Houde, Montréal, QC H3H 1A1', '45.504105', '-73.587259', NULL, '1931-IA-PE-0017', '', '', 4, 16, 260, 1),
(261, 1924, 'Buste de José de San Martin', NULL, 'Art public', 'Beaux-arts', 'Don', NULL, 'Bronze; Grès ', NULL, 'Fonte à la cire perdue', '276 x 105.5 x 95 cm', 'Parc Hector-Toe-Blake', NULL, NULL, '45.489365', '-73.580891', NULL, '2000-SC-09', '', '', 4, 1, 261, 1),
(262, 1926, 'Spatio-mobile #1', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier', NULL, 'Soudé, peint', '176 x 135 x 150 cm', 'Parc du musée de Lachine', 'Musée de Lachine', '1, chemin du Musée, Lachine (Québec) H8S 4L9', '45.430317', '-73.666315', NULL, '2002-SC-24', '', '', 9, 1, 262, 1),
(263, 1928, 'Le phare du Cosmos', 'Phare cosmique', 'Art public', 'Beaux-arts', 'Don', '/Date(198216000000-0400)/', 'Acier', NULL, 'Taille; soudé', '960 x 280 cm', 'Parc Jean-Drapeau, Île Sainte-Hélène', NULL, NULL, '45.509335', '-73.532705', NULL, '761308.0', '', '', 4, 1, 262, 1),
(264, 1930, 'Parvis et portail #22', 'Place de l''an 2000', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Aluminium; acier', NULL, 'Soudé; poli', '492 x 575 x 1000 cm', 'Place de l’an 2000', NULL, NULL, '45.516024', '-73.679906', NULL, '2000-APE-SC-05', '', '', 25, 2, 262, 1),
(265, 1932, 'La force', 'La force (SISM-64) \rNon titrée (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Fonte', NULL, 'Coulé; moulé', '244 x 533 x 275 cm', 'Parc du Mont-Royal', NULL, NULL, '45.500095', '-73.595506', NULL, '642238.0', '', '', 4, 1, 265, 1),
(266, 1934, 'La sainte Trinité', 'Holy Trinity', 'Art public', 'Beaux-arts', 'Dépôt', '/Date(-157748400000-0500)/', 'Fonte; époxy; acier', NULL, 'Moulé; soudé; peint (?)', '130 x 90 x 165', 'Square Saint-Louis', NULL, NULL, '45.517612', '-73.569411', NULL, '902216.0', '', '', 5, 1, 265, 1),
(267, 1936, 'Rectangle', 'Sans titre', 'Art public', 'Beaux-arts', 'Dépôt', '/Date(-157748400000-0500)/', 'Béton; acier; verre; pierre', NULL, 'Moulé; sculpté', '245 x L:124 x L:85 cm', 'Jardin botanique', 'Jardin botanique', '4101, rue Sherbrooke Est, Montréal, Québec, H1X 2B2', '45.560966', '-73.564589', NULL, '1965-SC-06', '', '', 24, 1, 265, 1),
(268, 1938, 'Sans titre', 'Non titrée (square Saint-Louis)\rLe chien du Québec', 'Art public', 'Beaux-arts', 'Dépôt', '/Date(63090000000-0500)/', 'Fonte; peinture', NULL, 'Coulé; peint', '97 x 167 x 183 cm', 'Square Saint-Louis', NULL, NULL, '45.517421', '-73.569295', NULL, '902217.0', '', '', 5, 1, 265, 1),
(269, 1940, 'Justice et paix', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(504939600000-0500)/', 'Calcite; acier; peinture', NULL, 'Taillé; sculpté; gravé; peint', '360 x 300 x 570 cm', 'Parc Saint-Léonard', NULL, NULL, '45.586578', '-73.595143', NULL, '1986-APE-SC-06', '', '', 18, 1, 265, 1),
(270, 1942, 'L''argoulet', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Granit', NULL, 'Sculpté; taillé; poli; assemblé', '550 x 130 x 242', 'Parc Labelle', NULL, NULL, '45.472525', '-73.570481', NULL, '1985-APE-SC-05', '', '', 33, 1, 270, 1),
(271, 1944, 'Les cariatides', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Acier; granit; gravier; végétaux.', NULL, 'Découpé; collé; boulonné; taillé; peint; planté', '262 x 610 x 1723 cm', 'Parc René-Lévesque', NULL, NULL, '45.428688', '-73.684251', NULL, '2002-SC-44', '', '', 9, 2, 270, 1),
(272, 1946, 'Les dos blancs', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Calcaire; granit; aluminium; ciment', NULL, 'Techniques multiples', '251 x 350 x 930 cm', 'Parc Caron', NULL, NULL, '45.521679', '-73.671706', NULL, '1990-APE-SC-06', '', '', 25, 2, 270, 1),
(273, 1948, 'Le portage', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier; granit; briques; pigments; végétaux', NULL, 'Taillé; sculpté; gravé; boulonnée; collé', '265 x 260 x 800 cm', 'Parc Summerlea', NULL, NULL, '45.437485', '-73.714281', NULL, '2002-SC-58', '', '', 9, 2, 270, 1),
(274, 1950, 'Cadran solaire', NULL, 'Art public', 'Arts décoratifs', 'Don', '/Date(-63140400000-0500)/', 'Acier; aluminium', NULL, 'Soudage; coulé; anodisation; peint', '350 x 360 x 360 cm', NULL, 'Planétarium Rio Tinto Alcan de Montréal', '4801, avenue Pierre-De Coubertin, Montréal  Québec  H1V 3V4', '45.560805', '-73.549767', NULL, '1968-AP-DI-0001', '', '', 22, 274, 274, 1),
(275, 1951, 'Story Rock', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Pierre', NULL, NULL, '244 x 240 x 220 cm', 'Parc René-Lévesque', NULL, NULL, '45.428096', '-73.677199', NULL, '2002-SC-46', '', '', 9, 1, 275, 1),
(276, 1953, 'Le navigateur', NULL, 'Art public', 'Beaux-arts', 'Transfert', NULL, 'Granit', NULL, 'Gravé', '350 x 620 x 245 cm', 'Parc Summerlea', NULL, NULL, '45.438513', '-73.719208', NULL, '2002-SC-59', '', '', 9, 1, 275, 1),
(277, 1955, 'Vortexit II', 'Vortexit 2', 'Art public', 'Beaux-arts', 'Commande à l''artiste', '/Date(1234155600000-0500)/', 'Granit; gravier', NULL, 'Assemblé; gravé; fixé', '270 x 1050 x 1440 cm', 'Parc René-Lévesque', NULL, NULL, '45.428603', '-73.678586', NULL, '2009-IN-06', '', '', 9, 1, 275, 1),
(278, 1957, 'Non titré (Traitement pictural au plafond de l''ancien bureau du conservateur)', 'Traitement pictural au plafond de l''ancien bureau du conservateur', 'Intégration à l''architecture', 'Beaux-arts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Édifice Gaston-Miron', '1210, rue Sherbrooke Est, Montréal (Québec) H2L 1L9', '45.522741', '-73.565331', NULL, '1931-IA-PE-0018', '', '', 4, 16, 278, 1),
(279, 1958, 'Murale extérieure', 'Non titrée', 'Intégration à l''architecture', 'Arts décoratifs', 'Intégration des arts à l''architecture', NULL, 'Métal, pigments', NULL, NULL, '183 x 361,5 cm', 'Parc du Mont-Royal', 'Pavillon du lac aux Castors', '2000, chemin Remembrance, Montréal (Québec) H3H 1A2', '45.498526', '-73.599161', NULL, '2006-IA-EM-0001', '', '', 4, 279, 279, 1),
(280, 1960, 'Des lauriers pour mémoire, Jean-Duceppe 1923-1990', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la ville de Montréal (Concour', '/Date(1232341200000-0500)/', 'Acier inoxydable', NULL, 'Forge; soudure; assemblage', '240 x  1130 cm', 'Parc Jean-Duceppe', NULL, NULL, '45.543529', '-73.566053', NULL, '2008-IN-02', '', '', 24, 2, 280, 1),
(281, 1962, 'Monument à Jacques Cartier', NULL, 'Art public', 'Beaux-arts', 'Transfert', '/Date(-2415643200000-0400)/', 'Bronze; acier; fonte de fer.', NULL, 'Statue originale : cuivre repoussé-estampé; Statue', '9.14 m (h) x 3.6 m (diamètre)', 'Square Saint-Henri', NULL, NULL, '45.480058', '-73.586269', NULL, '050903.0', '', '', 7, 1, 281, 1),
(282, 1964, 'Le banc des amoureux', 'Lover''s Bench', 'Art public', 'Beaux-arts', 'Don', '/Date(537771600000-0500)/', 'Bronze', NULL, 'Coulé', '184 x 240 x 150 cm', 'Jardin botanique', 'Jardin botanique', '4101, rue Sherbrooke Est, Montréal, Québec, H1X 2B2', '45.556163', '-73.558294', NULL, '1987-APE-SC-26', '', '', 24, 1, 282, 1),
(283, 1966, 'Monument à sir John A. Macdonald', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-2353262400000-0400)/', 'Bronze; granit', NULL, NULL, '1800 x 486 x 432 cm', 'Place du Canada', NULL, NULL, '45.498786', '-73.569638', NULL, '1895-APE-SC-01', '', '', 4, 1, 283, 1),
(284, 1968, 'Wind Boat', 'Bateau à vent', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier galvanisé; aluminium', NULL, 'Assemblé; imbriqué', '762 x 183 x 148 cm', 'Boulevard LaSalle', NULL, NULL, '45.432687', '-73.588115', NULL, '1990-APE-SC-11', '', '', 2, 1, 284, 1),
(285, 1970, 'The Passing Song', 'Passing Song, The', 'Art public', 'Beaux-arts', 'Transfert', '/Date(694242000000-0500)/', 'Acier brut, béton', NULL, NULL, '456 x 744 cm', 'Parc René-Lévesque', NULL, NULL, '45.428971', '-73.681205', NULL, '2002-SC-47', '', '', 9, 2, 284, 1),
(286, 1972, 'The First Jewel', 'La femme au collier', 'Art public', 'Beaux-arts', 'Don', '/Date(660546000000-0500)/', 'Bronze', NULL, 'Coulé', '172 x 115 x 70 cm', 'Jardin botanique', 'Jardin botanique', '4101, rue Sherbrooke Est, Montréal, Québec, H1X 2B2', '45.559703', '-73.556911', NULL, '909084.0', '', '', 24, 1, 286, 1),
(287, 1974, 'Sans titre', 'Non titrée (SISM-64)', 'Art public', 'Beaux-arts', 'Achat', '/Date(-119214000000-0500)/', 'Calcaire', NULL, 'Sculpté', '197 x 102 x 84 cm', 'Parc du Mont-Royal', NULL, NULL, '45.499908', '-73.594361', NULL, '1965-APE-SC-04', '', '', 4, 1, 287, 1),
(288, 1976, 'Monument à la reine Victoria', NULL, 'Art public', 'Beaux-arts', 'Don par souscription publique', '/Date(-3092583600000-0500)/', 'Bronze; granit', NULL, NULL, '1190 x 437.5 x 437.5 cm', 'Square Victoria', NULL, NULL, '45.501421', '-73.561586', NULL, '1872-APE-SC-01', '', '', 4, 1, 288, 1),
(289, 2994, 'L''étreinte', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', '/Date(1320728400000-0500)/', 'Aluminium; granit', NULL, 'Aluminium: découpé; plié; soudé et assemblé. Grani', 'Les différents ensemble de l''installation sont rép', 'Parc Paul-Dozois', NULL, 'Devant l''entrée du 250, boul. de Maisonneuve est', '45.512386', '-73.563593', NULL, '2011-AP-IN-0014', '', '', 4, 2, 289, 1),
(290, 3093, 'Constellation en Sol', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', NULL, 'Résine de copolyester; impression', NULL, 'Découpage au laser; impression; assemblage', NULL, NULL, 'Bibliothèque Marc-Favreau', '500 Boulevard Rosemont, Montréal, Qc H2S 0C4', '45.531832', '-73.597543', NULL, '2013-IA-IN-0001', '', '', 24, 37, 290, 1),
(291, 3096, 'Hommage à l''esprit sportif', NULL, 'Intégration à l''architecture', 'Arts décoratifs', 'Intégration des arts à l''architecture', NULL, 'Céramique ?', NULL, NULL, NULL, NULL, 'Aréna Garon', '11212 Rue Garon, Montréal-Nord, QC', '45.594994', '-73.637955', NULL, '1990-IA-CE-0001', '', '', 11, 55, 291, 1),
(292, 3097, 'La Bourrasque', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(1289365200000-0500)/', 'Acier inoxydable', NULL, 'Découpe au laser', '2700 x 570 cm', NULL, 'Bibliothèque du Boisé', '2727 Boulevard Thimens, Montréal, QC H4R 1T4', '45.504072', '-73.705185', NULL, '2010-IA-SC-0001', '', '', 25, 1, 292, 1),
(293, 3098, 'Voiles', 'Voile I & Voile II', 'Art public', 'Beaux-arts', 'Transfert', '/Date(1009861200000-0500)/', 'Acier inoxydable', NULL, 'Poli, finition effectuée par meuleuse à disque (gr', '488 x 310 x 10 cm\r488 x 275 x 13 cm', 'Boulevard Albert-Brosseau', NULL, NULL, '45.603186', '-73.642556', NULL, '1990-APE-SC-14', '', '', 11, 1, 293, 1),
(294, 3101, 'Chorégraphie pour les humains et les étoiles', NULL, 'Art public', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(1390194000000-0500)/', 'Béton ductal; composantes technologiques', NULL, 'Béton coulé (stèles); vidéoprojections (oeuvre num', 'Hauteur 1500cm', NULL, 'Planétarium Rio Tinto Alcan de Montréal', '4801, avenue Pierre-De Coubertin, Montréal  Québec  H1V 3V4', '45.560735', '-73.550116', NULL, '2014-AP-MU-0001', '', '', 22, 255, 294, 1),
(295, 3104, 'Carrefour', NULL, 'Intégration à l''architecture', 'Beaux-arts', 'Intégration des arts à l''architecture', '/Date(1359003600000-0500)/', 'Bronze; acier inoxydable', NULL, 'Moulage; assemblage', NULL, NULL, 'La Station (Maison intergénérationnelle)', '201, rue Berlioz, Verdun (Québec) H3C 1C1', '45.460134', '-73.544592', NULL, '2013-IA-SC-0001', '', '', 33, 1, 295, 1),
(296, 3107, 'Kate & Nora', NULL, 'Art public', 'Beaux-arts', 'Don', '/Date(1376971200000-0400)/', 'Acier inoxydable', NULL, NULL, '100 x 90 x 45 cm', 'Place Kate-McGarrigle', NULL, NULL, '45.517594', '-73.597311', NULL, '2013-AP-IN-0001', '', '', 1, 2, 296, 1),
(297, 5143, 'COSMOTOME NO 7, OH HOMME !', NULL, 'Art public', 'Beaux-arts', 'Commande à l''artiste', '/Date(1388552400000-0500)/', NULL, NULL, NULL, NULL, 'Parc Jean-Drapeau, Île Sainte-Hélène', NULL, '200, chemin du Tour-de-d''îsle, Montreal, QC, H3C 4G8', '45.515301', '-73.530778', NULL, '2014-AP-SC-0001', '', '', 4, 1, 297, 1),
(298, 5809, 'Point d''origine', NULL, 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal', NULL, 'Aluminium; Granit', NULL, 'Aluminium taillé, soudé et assemblé (fini satiné e', '192 x 290 x 633,5 cm', 'Place Raymond-Plante', NULL, '780, boulevard Rosemont, Montréal, H2S 0A7', '45.533555', '-73.596281', NULL, '2014-AP-SC-0003', '', '', 24, 1, 298, 1),
(299, 6680, 'La vélocité des lieux', 'La grande roue', 'Art public', 'Beaux-arts', 'Commande publique de la Ville de Montréal (Concour', '/Date(1434686400000-0400)/', 'Aluminium, acier galvanisé, acier inoxydable, plex', NULL, 'Assemblage', '19 x 16 x 13 m', 'Carrefour Henri-Bourassa–Pie-IX', NULL, NULL, '45.596262', '-73.642587 ', NULL, '2015-AP-SC-0003', '', '', 11, 1, 299, 1);

-- --------------------------------------------------------

--
-- Structure de la vue `artisteavecoeuvre`
--
DROP TABLE IF EXISTS `artisteavecoeuvre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `artisteavecoeuvre` AS select distinct `a`.`nomCollectif` AS `nomCollectif`,`a`.`nom` AS `nom`,`a`.`prenom` AS `prenom`,`a`.`id` AS `id` from (`artiste` `a` left join `oeuvre` `o` on((`o`.`idArtiste` = `a`.`id`))) where (`o`.`valide` = 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
