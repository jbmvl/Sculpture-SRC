-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 18, 2011 at 11:41 AM
-- Server version: 5.1.44
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sculptureSrc`
--

-- --------------------------------------------------------

--
-- Table structure for table `actualites`
--

CREATE TABLE `actualites` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `contenu` text NOT NULL,
  `date` date NOT NULL,
  `annee` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `actualites`
--

INSERT INTO `actualites` VALUES(2, 'exemple d''actualités', '<p><span style="text-decoration: underline;"><strong>Lorem ipsum dolor </strong></span>sit amet, consectetur adipiscing elit. Etiam nec augue eros, quis mollis ipsum. Etiam egestas hendrerit libero, a euismod enim lobortis et. Aliquam erat volutpat. Proin at justo dui. Curabitur sed tortor tellus. Nulla justo magna, sodales non aliquet ac, viverra sit amet erat. Nullam vitae feugiat mi. Proin quis nisi quam. Duis consectetur velit neque. Mauris eu erat eu lorem suscipit egestas at vel turpis.<br />Duis massa arcu, vulputate at viverra non, sodales ut risus. Cras ac neque arcu, ut ultricies diam. Donec ut magna leo. Vestibulum quis dolor sed nisl aliquam vulputate. Sed nisl lorem, blandit at fermentum ac, porttitor sed urna. Pellentesque tempor quam eu erat elementum fringilla. Fusce imperdiet libero eget elit pulvinar id feugiat dolor congue. Morbi dictum tempus iaculis. Donec at enim dolor, quis pellentesque tortor. Nunc risus justo, congue vitae ultricies sed, eleifend nec metus. Integer elementum, urna sit amet mattis scelerisque, urna sapien imperdiet nibh, ut viverra sapien risus in quam. In id odio et leo mollis cursus ut quis arcu.</p>', '2011-03-07', 2011);
INSERT INTO `actualites` VALUES(4, 'Exemple d''actualité 2', '<p><img style="float: left;" src="http://www.jihel-sculpture.com/images/index.jpg" alt="" width="73" height="97" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam&nbsp;nec augue eros, quis mollis ipsum. <span style="text-decoration: underline;"><em>Etiam egestas hendrerit libero, a euismod enim lobortis et. Aliquam erat volutpat. Proin at justo dui. Curabitur sed tortor tellus. Nulla justo magna, sodales non aliquet ac, viverra sit amet era</em></span>t. Nullam vitae feugiat mi. Proin quis nisi quam. Duis consectetur velit neque. Mauris eu erat eu lorem suscipit egestas at vel turpis.<br />Duis massa arcu, vulputate at viverra non, sodales ut risus. Cras ac neque arcu, ut ultricies diam. Donec ut magna leo. Vestibulum quis dolor sed nisl aliquam vulputate. Sed nisl lorem, blandit at fermentum ac, porttitor sed urna. Pellentesque tempor quam eu erat elementum fringilla. Fusce imperdiet libero eget elit pulvinar id feugiat dolor congue. Morbi dictum tempus iaculis. Donec at enim dolor, quis pellentesque tortor. Nunc risus justo, congue vitae ultricies sed, eleifend nec metus. Integer elementum, urna sit amet mattis scelerisque, urna sapien imperdiet nibh, ut viverra sapien risus in quam. In id odio et leo mollis cursus ut quis arcu.</p>', '2011-04-11', 2011);

-- --------------------------------------------------------

--
-- Table structure for table `avis`
--

CREATE TABLE `avis` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `contenu` text NOT NULL,
  `idPersonne` mediumint(9) NOT NULL,
  `annee` year(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `avis`
--

INSERT INTO `avis` VALUES(4, '<p>Une bonne id&eacute;e mais je ne vois pas clairement le rapport avec la formation SRC.</p>', 23, 2011);
INSERT INTO `avis` VALUES(3, '<p>Id&eacute;e Int&eacute;ressante mais pas&nbsp; assez de temps pour le faire en SRC, il  vaudrait mieux ajouter des heures dans d''autres mati&egrave;res que celle ci.</p>', 57, 2011);
INSERT INTO `avis` VALUES(5, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt pharetra dapibus. Aliquam hendrerit lacinia malesuada.</p>', 6, 2011);
INSERT INTO `avis` VALUES(6, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt pharetra dapibus. Aliquam hendrerit lacinia malesuada.</p>', 15, 2011);
INSERT INTO `avis` VALUES(7, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt pharetra dapibus.<em> Aliquam hendrerit</em> lacinia malesuada.</p>', 60, 2011);

-- --------------------------------------------------------

--
-- Table structure for table `contientavis`
--

CREATE TABLE `contientavis` (
  `idAvis` mediumint(9) NOT NULL,
  `idPromotion` mediumint(9) NOT NULL,
  PRIMARY KEY (`idAvis`,`idPromotion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contientavis`
--


-- --------------------------------------------------------

--
-- Table structure for table `faces`
--

CREATE TABLE `faces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `idImage` int(11) NOT NULL,
  `annee` year(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `faces`
--

INSERT INTO `faces` VALUES(1, 'diffuse Face devant 1', 80, 2011);
INSERT INTO `faces` VALUES(4, 'diffuse face devant 2', 81, 2011);
INSERT INTO `faces` VALUES(5, 'diffuse face devant 3', 68, 2011);
INSERT INTO `faces` VALUES(6, 'diffuse face devant 4', 69, 2011);
INSERT INTO `faces` VALUES(7, 'diffuse face derrière 1', 76, 2011);
INSERT INTO `faces` VALUES(8, 'diffuse face derrière 2', 77, 2011);
INSERT INTO `faces` VALUES(9, 'diffuse face derrière 3', 78, 2011);
INSERT INTO `faces` VALUES(10, 'diffuse face derrière 4', 79, 2011);
INSERT INTO `faces` VALUES(11, 'diffuse face de gauche', 75, 2011);
INSERT INTO `faces` VALUES(12, 'diffuse face de droite', 82, 2011);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `URLpetit` varchar(100) NOT NULL,
  `URLmoyen` varchar(100) NOT NULL,
  `URLgrand` varchar(100) NOT NULL,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` VALUES(55, 'images/petit/DorizonCharlènesymbole.jpg', 'images/moyen/DorizonCharlènesymbole.jpg', 'images/grand/DorizonCharlènesymbole.jpg', 'DorizonCharlènesymbole');
INSERT INTO `images` VALUES(52, 'images/petit/CorentinBAC_symbole.jpg', 'images/moyen/CorentinBAC_symbole.jpg', 'images/grand/CorentinBAC_symbole.jpg', 'CorentinBAC_symbole');
INSERT INTO `images` VALUES(53, 'images/petit/Guillaume Geay Symbole.jpg', 'images/moyen/Guillaume Geay Symbole.jpg', 'images/grand/Guillaume Geay Symbole.jpg', 'Guillaume Geay Symbole');
INSERT INTO `images` VALUES(49, 'images/petit/enAttente45.jpg', 'images/moyen/enAttente45.jpg', 'images/grand/enAttente45.jpg', 'enAttente');
INSERT INTO `images` VALUES(37, 'images/petit/diffuse.jpg', 'images/moyen/diffuse.jpg', 'images/grand/diffuse.jpg', 'Shéma diffuse');
INSERT INTO `images` VALUES(38, 'images/petit/AlexisHemonSymbol.jpg', 'images/moyen/AlexisHemonSymbol.jpg', 'images/grand/AlexisHemonSymbol.jpg', 'AlexisHemonSymbol');
INSERT INTO `images` VALUES(39, 'images/petit/AlexNoelSymbole.jpg', 'images/moyen/AlexNoelSymbole.jpg', 'images/grand/AlexNoelSymbole.jpg', 'AlexNoelSymbole');
INSERT INTO `images` VALUES(40, 'images/petit/Amandine_dessin.jpg', 'images/moyen/Amandine_dessin.jpg', 'images/grand/Amandine_dessin.jpg', 'Amandine_dessin');
INSERT INTO `images` VALUES(41, 'images/petit/Auriane-Sburlino-symbole-.jpg', 'images/moyen/Auriane-Sburlino-symbole-.jpg', 'images/grand/Auriane-Sburlino-symbole-.jpg', 'Auriane-Sburlino-symbole-');
INSERT INTO `images` VALUES(42, 'images/petit/baptiste_rasschaert-Symbole.jpg', 'images/moyen/baptiste_rasschaert-Symbole.jpg', 'images/grand/baptiste_rasschaert-Symbole.jpg', 'baptiste_rasschaert-Symbole');
INSERT INTO `images` VALUES(43, 'images/petit/BenoitGuittonsymbole_paix.jpg', 'images/moyen/BenoitGuittonsymbole_paix.jpg', 'images/grand/BenoitGuittonsymbole_paix.jpg', 'BenoitGuittonsymbole_paix');
INSERT INTO `images` VALUES(44, 'images/petit/Chopin laby-src-noir-1.jpg', 'images/moyen/Chopin laby-src-noir-1.jpg', 'images/grand/Chopin laby-src-noir-1.jpg', 'Chopin laby-src-noir-1');
INSERT INTO `images` VALUES(45, 'images/petit/JBMinviellesymbole.jpg', 'images/moyen/JBMinviellesymbole.jpg', 'images/grand/JBMinviellesymbole.jpg', 'JBMinviellesymbole');
INSERT INTO `images` VALUES(50, 'images/petit/Delmas Jérémy Symbole.jpg', 'images/moyen/Delmas Jérémy Symbole.jpg', 'images/grand/Delmas Jérémy Symbole.jpg', 'Delmas Jérémy Symbole');
INSERT INTO `images` VALUES(54, 'images/petit/CorentinBAC_symbole68.jpg', 'images/moyen/CorentinBAC_symbole68.jpg', 'images/grand/CorentinBAC_symbole68.jpg', 'CorentinBAC_symbole');
INSERT INTO `images` VALUES(56, 'images/petit/Fabian-RiviereSymbole.jpg', 'images/moyen/Fabian-RiviereSymbole.jpg', 'images/grand/Fabian-RiviereSymbole.jpg', 'Fabian-RiviereSymbole');
INSERT INTO `images` VALUES(57, 'images/petit/Fabrice-Doublet_symbole.jpg', 'images/moyen/Fabrice-Doublet_symbole.jpg', 'images/grand/Fabrice-Doublet_symbole.jpg', 'Fabrice-Doublet_symbole');
INSERT INTO `images` VALUES(58, 'images/petit/Gary Ghenosymbole.jpg', 'images/moyen/Gary Ghenosymbole.jpg', 'images/grand/Gary Ghenosymbole.jpg', 'Gary Ghenosymbole');
INSERT INTO `images` VALUES(59, 'images/petit/Germain Chavignysymbole.jpg', 'images/moyen/Germain Chavignysymbole.jpg', 'images/grand/Germain Chavignysymbole.jpg', 'Germain Chavignysymbole');
INSERT INTO `images` VALUES(60, 'images/petit/Guillaume Geay Symbole23.jpg', 'images/moyen/Guillaume Geay Symbole23.jpg', 'images/grand/Guillaume Geay Symbole23.jpg', 'Guillaume Geay Symbole');
INSERT INTO `images` VALUES(61, 'images/petit/HERISSOU_Camille_Symbole.jpg', 'images/moyen/HERISSOU_Camille_Symbole.jpg', 'images/grand/HERISSOU_Camille_Symbole.jpg', 'HERISSOU_Camille_Symbole');
INSERT INTO `images` VALUES(62, 'images/petit/HUET-symbole-s.jpg', 'images/moyen/HUET-symbole-s.jpg', 'images/grand/HUET-symbole-s.jpg', 'HUET-symbole-s');
INSERT INTO `images` VALUES(63, 'images/petit/JeremyGuilpinSymbol_1.jpg', 'images/moyen/JeremyGuilpinSymbol_1.jpg', 'images/grand/JeremyGuilpinSymbol_1.jpg', 'JeremyGuilpinSymbol_1');
INSERT INTO `images` VALUES(64, 'images/petit/JeremyGuilpinSymbol_150.jpg', 'images/moyen/JeremyGuilpinSymbol_150.jpg', 'images/grand/JeremyGuilpinSymbol_150.jpg', 'JeremyGuilpinSymbol_1');
INSERT INTO `images` VALUES(65, 'images/petit/JimmyJanissonSymbol.jpg', 'images/moyen/JimmyJanissonSymbol.jpg', 'images/grand/JimmyJanissonSymbol.jpg', 'JimmyJanissonSymbol');
INSERT INTO `images` VALUES(66, 'images/petit/faceA1.png', 'images/moyen/faceA1.png', 'images/grand/faceA1.png', 'faceA1');
INSERT INTO `images` VALUES(67, 'images/petit/faceA2.png', 'images/moyen/faceA2.png', 'images/grand/faceA2.png', 'faceA2');
INSERT INTO `images` VALUES(68, 'images/petit/faceA3.png', 'images/moyen/faceA3.png', 'images/grand/faceA3.png', 'faceA3');
INSERT INTO `images` VALUES(69, 'images/petit/faceA4.png', 'images/moyen/faceA4.png', 'images/grand/faceA4.png', 'faceA4');
INSERT INTO `images` VALUES(70, 'images/petit/faceB1.png', 'images/moyen/faceB1.png', 'images/grand/faceB1.png', 'faceB1');
INSERT INTO `images` VALUES(71, 'images/petit/faceB2.png', 'images/moyen/faceB2.png', 'images/grand/faceB2.png', 'faceB2');
INSERT INTO `images` VALUES(72, 'images/petit/faceB3.png', 'images/moyen/faceB3.png', 'images/grand/faceB3.png', 'faceB3');
INSERT INTO `images` VALUES(73, 'images/petit/faceB4.png', 'images/moyen/faceB4.png', 'images/grand/faceB4.png', 'faceB4');
INSERT INTO `images` VALUES(74, 'images/petit/faceD.png', 'images/moyen/faceD.png', 'images/grand/faceD.png', 'faceD');
INSERT INTO `images` VALUES(75, 'images/petit/faceG.png', 'images/moyen/faceG.png', 'images/grand/faceG.png', 'faceG');
INSERT INTO `images` VALUES(76, 'images/petit/faceB197.png', 'images/moyen/faceB197.png', 'images/grand/faceB197.png', 'faceB1');
INSERT INTO `images` VALUES(77, 'images/petit/faceB233.png', 'images/moyen/faceB233.png', 'images/grand/faceB233.png', 'faceB2');
INSERT INTO `images` VALUES(78, 'images/petit/faceB393.png', 'images/moyen/faceB393.png', 'images/grand/faceB393.png', 'faceB3');
INSERT INTO `images` VALUES(79, 'images/petit/faceB421.png', 'images/moyen/faceB421.png', 'images/grand/faceB421.png', 'faceB4');
INSERT INTO `images` VALUES(80, 'images/petit/faceA115.png', 'images/moyen/faceA115.png', 'images/grand/faceA115.png', 'faceA1');
INSERT INTO `images` VALUES(81, 'images/petit/faceA251.png', 'images/moyen/faceA251.png', 'images/grand/faceA251.png', 'faceA2');
INSERT INTO `images` VALUES(82, 'images/petit/faceD11.png', 'images/moyen/faceD11.png', 'images/grand/faceD11.png', 'faceD');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `titre` varchar(30) NOT NULL,
  `contenu` text NOT NULL,
  `annee` year(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` VALUES(1, 'Accueil', '<p>Page d''accueil : texte de pr&eacute;sentation.</p>', 2011);
INSERT INTO `pages` VALUES(2, 'Objectifs pédagogiques', '& description du projet d’un point de vue artistique.', 2011);
INSERT INTO `pages` VALUES(6, 'La mission artistique', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt pharetra dapibus. Aliquam hendrerit lacinia malesuada. Nullam non tortor at tellus vestibulum vehicula a et purus.</p>\n<p>Sed egestas felis vitae turpis aliquam non fringilla sem porta. Proin convallis bibendum est nec tincidunt. Cras tellus leo, scelerisque eu pulvinar quis, malesuada eu enim.</p>', 2011);

-- --------------------------------------------------------

--
-- Table structure for table `personnes`
--

CREATE TABLE `personnes` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `prenom` varchar(30) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `statut` enum('prof','eleve','public') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `personnes`
--

INSERT INTO `personnes` VALUES(1, 'Jean-Baptiste', 'Minvielle', 'eleve');
INSERT INTO `personnes` VALUES(2, 'Jean-Louis', 'Lapouille', 'prof');
INSERT INTO `personnes` VALUES(3, 'Mickaël', 'Descoudard', 'eleve');
INSERT INTO `personnes` VALUES(51, 'Frédérique', 'Chopin', 'prof');
INSERT INTO `personnes` VALUES(6, 'Paul', 'Rouger', 'eleve');
INSERT INTO `personnes` VALUES(9, 'Romain', 'Cabarat', 'eleve');
INSERT INTO `personnes` VALUES(10, 'Amandine', 'Labonnette', 'eleve');
INSERT INTO `personnes` VALUES(11, 'Auriane', 'Sburlino', 'eleve');
INSERT INTO `personnes` VALUES(12, 'Baptiste', 'Rasschaert', 'eleve');
INSERT INTO `personnes` VALUES(13, 'Jerôme', 'Barbaray', 'eleve');
INSERT INTO `personnes` VALUES(14, 'Benoit', 'Guitton', 'eleve');
INSERT INTO `personnes` VALUES(15, 'Franck', 'Chopin', 'prof');
INSERT INTO `personnes` VALUES(16, 'Jean', 'Filleau', 'prof');
INSERT INTO `personnes` VALUES(17, 'Corentin', 'Bac', 'eleve');
INSERT INTO `personnes` VALUES(18, 'Delphine', 'Coutable', 'eleve');
INSERT INTO `personnes` VALUES(19, 'Jérémy', 'Delmas', 'eleve');
INSERT INTO `personnes` VALUES(20, 'Charlène', 'Dorizon', 'eleve');
INSERT INTO `personnes` VALUES(21, 'Fabian', 'Riviere', '');
INSERT INTO `personnes` VALUES(22, 'Fabrice', 'Doublet', 'eleve');
INSERT INTO `personnes` VALUES(23, 'Gary', 'Ghéno', 'eleve');
INSERT INTO `personnes` VALUES(24, 'Germain', 'Chavigny', '');
INSERT INTO `personnes` VALUES(25, 'Guillaume', 'Geay', 'eleve');
INSERT INTO `personnes` VALUES(26, 'Alexandre', 'Guy', 'eleve');
INSERT INTO `personnes` VALUES(27, 'Camille', 'Hérissou', 'eleve');
INSERT INTO `personnes` VALUES(28, 'Angélique', 'Huet', 'eleve');
INSERT INTO `personnes` VALUES(29, 'Jérémy', 'Guilpin', 'eleve');
INSERT INTO `personnes` VALUES(30, 'Jimmy', 'Janisson', 'eleve');
INSERT INTO `personnes` VALUES(31, 'Jean-Pierre ', 'Kuhnel', 'prof');
INSERT INTO `personnes` VALUES(32, 'Julien', 'Huguet', 'eleve');
INSERT INTO `personnes` VALUES(33, 'Landry', 'Bernard', 'eleve');
INSERT INTO `personnes` VALUES(34, 'Typhaine', 'Ledortz', 'eleve');
INSERT INTO `personnes` VALUES(35, 'Emilie', 'Seng', 'eleve');
INSERT INTO `personnes` VALUES(36, 'Manuel', 'Garcia', 'eleve');
INSERT INTO `personnes` VALUES(37, 'Marine', 'Pichard', 'eleve');
INSERT INTO `personnes` VALUES(38, 'Antoine', 'Martin', 'eleve');
INSERT INTO `personnes` VALUES(40, 'Maxime', 'Auriau', 'eleve');
INSERT INTO `personnes` VALUES(41, 'Nicolas', 'Hanzel', 'eleve');
INSERT INTO `personnes` VALUES(42, 'Noémie', 'Lhermenot', 'eleve');
INSERT INTO `personnes` VALUES(43, 'Pauline', 'Jamet', 'eleve');
INSERT INTO `personnes` VALUES(44, 'Renaud', 'Derien', 'eleve');
INSERT INTO `personnes` VALUES(45, 'Sylvain', 'Delisle', 'eleve');
INSERT INTO `personnes` VALUES(46, 'Thibaut', 'Tejedor', 'eleve');
INSERT INTO `personnes` VALUES(47, 'Thomas', 'Allain', 'eleve');
INSERT INTO `personnes` VALUES(48, 'Valentin', 'Duval', 'eleve');
INSERT INTO `personnes` VALUES(49, 'Vincent', 'Quem', 'eleve');
INSERT INTO `personnes` VALUES(50, 'Yann', 'Hascoet', 'eleve');
INSERT INTO `personnes` VALUES(52, 'Alex', 'Jolly', 'eleve');
INSERT INTO `personnes` VALUES(53, 'Alexis', 'Hemon', 'eleve');
INSERT INTO `personnes` VALUES(54, 'Alexandre', 'Noel', 'eleve');
INSERT INTO `personnes` VALUES(55, 'Aline', 'Blot', 'eleve');
INSERT INTO `personnes` VALUES(56, 'Alois', 'Noreve', 'eleve');
INSERT INTO `personnes` VALUES(57, 'Walig', 'Castain', 'eleve');
INSERT INTO `personnes` VALUES(58, 'Clément', 'Pingaud', 'eleve');
INSERT INTO `personnes` VALUES(59, 'Fabien', 'Fauvelet', 'eleve');
INSERT INTO `personnes` VALUES(60, 'Jack', 'Lang', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `annee` year(4) NOT NULL,
  PRIMARY KEY (`annee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` VALUES(2011);

-- --------------------------------------------------------

--
-- Table structure for table `symboles`
--

CREATE TABLE `symboles` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `commentaire` text NOT NULL,
  `idPersonne` mediumint(9) NOT NULL,
  `idImage` mediumint(9) NOT NULL,
  `idFace` int(11) NOT NULL,
  `annee` year(4) NOT NULL,
  `coordX1` smallint(5) unsigned NOT NULL,
  `coordY1` smallint(5) unsigned NOT NULL,
  `coordX2` smallint(5) unsigned NOT NULL,
  `coordY2` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `symboles`
--

INSERT INTO `symboles` VALUES(1, '<p>Ce symbole, qui fait r&eacute;f&eacute;rence &agrave; la pochette de l''album <em>The Dark Side of the Moon</em>&nbsp;part d''une attirance personnelle pour la musique de Pink Floyd et du design sobre et d&eacute;pouill&eacute; de la pochette du collectif <em>Hipgnosis</em>.</p>\n<p>La logique SRC apparait &eacute;galement ici si l''on veut bien s''int&eacute;resser au concept de la dispersion de la lumi&egrave;re &eacute;voqu&eacute;e par ce visuel : comme le prisme, la formation permet de multiplier les acquis et les connaissances.</p>\n<p>De plus les diff&eacute;rentes couleurs du spectre (repr&eacute;sent&eacute;es ici sous forme d''alternance mati&egrave;re-vide, impos&eacute;e par la technique utilis&eacute;e) peut repr&eacute;senter la pluridisciplinarit&eacute; de la fili&egrave;re.</p>', 1, 45, 1, 2011, 333, 358, 393, 415);
INSERT INTO `symboles` VALUES(7, '<p>Ce symbole peut repr&eacute;senter plusieurs choses &agrave; la fois, une fleur, un  soleil, une forme abstraite. Cela laisse la possibilit&eacute; au spectateur  d''en faire sa propre interpr&eacute;tation. Mais quelque soit cette  interpr&eacute;tation, la r&eacute;p&eacute;tition des pointes est un lien avec les fractales  qui est le projet auquel je participe. Nous pourrions zoomer infiniment  sur la forme, les contours ne sembleraient pas bouger.</p>', 53, 38, 5, 2011, 179, 314, 247, 415);
INSERT INTO `symboles` VALUES(8, '<p>Le haut du symbole repr&eacute;sente un arbre et donc la vie.</p>\n<p>Le bas du symbole, en forme de nuage, repr&eacute;sente les fant&ocirc;mes dans la culture japonaise, ou la vie apr&egrave;s la mort.</p>\n<p>Ainsi, &agrave; travers ce symbole, je repr&eacute;sente la vie de l''Homme, de sa naissance &agrave; sa r&eacute;surrection.</p>', 54, 39, 9, 2011, 224, 195, 271, 236);
INSERT INTO `symboles` VALUES(9, '<p>J''ai cr&eacute;e ce symbole en pensant &agrave; une nouvelle que j''avais lu sur  internet. Elle se d&eacute;roulait dans un univers fantastique dans l''esprit  Harry Potter. Parmi les personnages de cette nouvelle, il y avait un  loup-garou qui se battait symboliquement contre la lune afin de pouvoir  mener une vie normale. J''ai cr&eacute;e ce symbole repr&eacute;sentant un loup-garou  qui "avale" la lune en r&eacute;f&eacute;rence &agrave; ce personnage, et montrer qu''on peut  se battre contre le destin.</p>', 55, 49, 1, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(18, '<p>J''ai choisi de mod&eacute;liser un r&eacute;veil comme &eacute;l&eacute;ment personnel pour le projet artistique car il symbolise en g&eacute;n&eacute;ral la peine qu''ont les &eacute;tudiants &agrave; se r&eacute;veiller le matin.</p>\n<p>D''un point de vue descriptif, il faut remarquer qu''il est agit&eacute;, nous pouvons donc supposer qu''il est en train de sonner.</p>\n<p>On peut &eacute;galement voir que le rond au centre et les aiguilles forment un point d''exclamation, ce qui met en relation la brutalit&eacute; du r&eacute;veil</p>', 58, 49, 0, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(11, '<p>Th&eacute;orie du complot !</p>\n<p>Franc-ma&ccedil;onnerie, alliance politique mondiale, que de sp&eacute;culations dans ce monde incertain ...</p>\n<p>Et si tout cela pouvait &ecirc;tre beaucoup moins s&eacute;rieux ? A l''image de notre jeunesse d&eacute;lur&eacute;e, trouvons ici un symbole synonyme d''ironie et d''humour d&eacute;lav&eacute;.</p>\n<p>Explication approximative, mais avec un sens perdu. Pyramide et oeil de billets de 5 am&eacute;ricains.</p>\n<p>Repr&eacute;sentation d''une trinit&eacute; &eacute;ternelle.</p>', 56, 49, 4, 2011, 228, 187, 269, 234);
INSERT INTO `symboles` VALUES(12, '<p>Mon symbole repr&eacute;sente le mot PUB : deux visages forment la lettre "P", l''un parle dans une bulle ouverte en forme de "U".</p>\n<p>Le symbole a deux significations compl&eacute;mentaires. D''une part le mot form&eacute; symbolise la publicit&eacute;. D''autre part, le personnage qui parle &agrave; l''autre symbolise la communication.</p>\n<p>Ce symbole illustre bien le fait qu''en communication, pour trouver des id&eacute;es, il faut regarder les choses diff&eacute;remment, comme il faut regarder diff&eacute;rement le symbole pour en comprendre tous les sens.</p>', 10, 40, 1, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(13, '<p>Ce symbole repr&eacute;sente deux entit&eacute;s, la flamme et le tourbillon.</p>\n<p>Le tourbillon &eacute;voque l''infini, la continuit&eacute;, mais il repr&eacute;sente aussi une cible, pour d&eacute;signer un but &agrave; atteindre. La flamme &eacute;voque quant &agrave; elle le dynamisme et la force mentale.</p>\n<p>&Eacute;tant une personne d&eacute;termin&eacute;e, la flamme est repr&eacute;sentative de ma force et ma d&eacute;termination &agrave; m''investir dans mon avenir pour atteindre mon but.</p>', 11, 41, 1, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(14, '<p>"Ca faisait longtemps qu''on la connaissait,</p>\n<p>Elle &eacute;tait l&agrave;, tout le temps mais jamais on ne la voyait,</p>\n<p>Elle nous suivait de la cit&eacute; jusqu''aux vacances,</p>\n<p>Et on faisait comme si elle n''avait pas d''importance.</p>\n<p>Maintenant je sais que beaucoup nous jalousalent,</p>\n<p>Parce que tout comme nous ils la m&eacute;ritalent,</p>\n<p>Ils prient pour elles, se battent pour elle, c''est vital,</p>\n<p>C''est pas une pin-up, une playmate,</p>\n<p>C''est juste l''eau potable."</p>\n<p>&nbsp;</p>\n<p>MC Solaar - Intr''eau</p>', 12, 42, 1, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(15, '<p>Aucune vraie explication. C''est un symbole abstrait, chacun voit ce qu''il veut.</p>\n<p>Mon id&eacute;e de d&eacute;part &eacute;tait de faire un soleil comme &agrave; l''encre de Chine avec plein d''&eacute;clats de peinture.</p>', 13, 49, 1, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(16, '<p>Ce symbole repr&eacute;sente la paix, l''amour et l''unit&eacute;. Le symbole fait &eacute;cho &agrave; l''Humanit&eacute;, la Libert&eacute;, l''Environnement et l''&Eacute;cologie.</p>\n<p>Le symbole du centre fait penser aux armes d''un Homme tomb&eacute; dans le d&eacute;sespoir.</p>', 14, 43, 1, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(17, '<p>Non, ce n''est pas un jeu !</p>\n<p>Il est fini, le temps des circuits et des petites autos.</p>\n<p>Ici, en SRC, on travaille, on doute, on s''interroge. On va, on vient, on vire, on s''&eacute;lance. Loin, devant ! Si ... alors ... Une boucle ? Deux boucles ? Gare &agrave; la fermeture ! On h&eacute;site, forc&eacute;ment, tout ... ou presque ... est possible ! Pourquoi s''en plaindre ?</p>\n<p>Essayez plut&ocirc;t, et vous verrez, finalement c''est facile et on en sort rapidement, du labyrinthe.</p>\n<p>A regret ! Alors vite ! Un nouveau d&eacute;part ...</p>', 51, 44, 7, 2011, 70, 80, 148, 162);
INSERT INTO `symboles` VALUES(19, '<p>Mon symbole est ma repr&eacute;sentation d''un nouveau commencement, du renouveau.</p>\n<p>De par sa forme, on peut distinguer deux &eacute;l&eacute;ments distincts :</p>\n<p>Une premi&egrave;re courbe situ&eacute;e sur la gauche, rappelant la forme d''un "L" qui appele le mot "Life".</p>\n<p>Une seconde courbe, situ&eacute;e sur la droite, repr&eacute;sentant la silhouette de la lettre "B" qui appele le mot "Beginning".</p>\n<p>Cette symbolique est arbitraire, et chacun sera libre de voir ce qui lui plait au travers de ce symbole.</p>', 0, 54, 0, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(20, '<p>Les lignes repr&eacute;sentent les lignes d''une partition, avec bien s&ucirc;r, une cl&eacute; de Sol.</p>\n<p>Le cercle continu repr&eacute;sente la vie.</p>\n<p>Music is Life.</p>', 20, 55, 0, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(21, '<p>Il fallait faire simple, que pouvait-on trouver de moins compliqu&eacute; ?</p>\n<p>Quelques arcs de cercle, quelques droites, et voici sa silhouette. Il appartient &agrave; chacun de donner un sens &agrave; ce personnage.</p>', 21, 56, 0, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(22, '<p>Le symbole est constitu&eacute; d''une personnage de type fil de fer (Stickman) nous faisant face, et pouvant repr&eacute;senter n''importe quel &eacute;tudiant de mani&egrave;re impersonnelle. Celui-ci tient une fourche, ou un trident dans sa main gauche au bout duquel se trouve le symbole USB (repr&eacute;sentation de la formation SRC, utilisant principalement l''outif informatique pour ses travaux et r&eacute;alisations.</p>', 22, 57, 12, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(23, '<p>"Y a des &eacute;toiles qui courent<br /> Dans la neige autour<br /> De son chalet de bois<br /> Y a des guirlandes qui pendent du toit<br /> Et la nuit descend<br /> Sur les sapins blancs<br /> Juste quand elle frappe des doigts</p>\n<p>Je prendrai ma guitare avec moi<br /> Et peut-&ecirc;tre mon chien<br /> S''il est encore l&agrave;<br /> Et j''irai dormir chez la dame de Haute-Savoie."</p>\n<p>&nbsp;</p>\n<p>Francis Cabrel</p>', 23, 58, 0, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(24, '<p>Je voulais simplement laisser ma trace sur cette oeuvre collective. Pour cela, je d&eacute;pose mes initiales en bas d''une page vierge.</p>\n<p>Cette page blanche repr&eacute;sente aussi ma peur de l''oubli et du manque d''imagination. Cette peur qui est ma source d''&eacute;nergie et qui a fait de moi ce que je suis.</p>', 24, 59, 0, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(25, '<p>J''ai choisi comme symbole une t&eacute;l&eacute;vision parce qu''elle repr&eacute;sente &agrave; mon sens l''anc&ecirc;tre d''Internet.</p>\n<p>Elle est pour l''instant omipr&eacute;sente dans notre quotidien et est vou&eacute;e &agrave; dispara&icirc;tre ou tout au plus optimis&eacute; ou revisit&eacute;. Dans un certain sens, mon symbole est un hommage &agrave; l''objet qui a fascin&eacute; et fascine toujours des milliards de gens.</p>', 25, 60, 0, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(26, '<p>A comme Alexandre,</p>\n<p>A comme Art,</p>\n<p>A comme Acc&eacute;laration,</p>\n<p>A comme Abruti,</p>\n<p>A comme Abysse,</p>\n<p>A comme Avenir,</p>\n<p>A comme Attention,</p>\n<p>A comme Amiti&eacute;,</p>\n<p>A comme Amour,</p>\n<p>A comme Authentique,</p>\n<p>A comme Antique,</p>\n<p>A comme Agacant,</p>\n<p>A comme moi.</p>', 26, 49, 0, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(27, '<p>Kanji qui, en japonais se prononce shu.</p>\n<p>Kanji du seigneur.</p>\n<p>Signifie la puissance, le pouvoir, la sup&eacute;riotrit&eacute; mais aussi la protection, la sagesse et le savoir.</p>', 27, 61, 0, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(28, '<p>Mon symbole est compos&eacute; de deux &eacute;l&eacute;ments : une t&eacute;l&eacute;vision et des ailes.</p>\n<p>La t&eacute;l&eacute;vision repr&eacute;sente ma passion pour les films et s&eacute;ries t&eacute;l&eacute;vis&eacute;es.</p>\n<p>Les ailes repr&eacute;sentent simplement mon pr&eacute;nom.</p>', 28, 62, 0, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(29, '', 29, 0, 0, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(30, '', 29, 0, 0, 2011, 0, 0, 0, 0);
INSERT INTO `symboles` VALUES(31, '<p>Tout le monde aime la musique, j''ai donc d&eacute;cid&eacute; de repr&eacute;senter un casque et une note d emusique pour mon symbole.</p>', 30, 65, 0, 2011, 0, 0, 0, 0);
