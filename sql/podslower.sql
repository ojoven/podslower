-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-01-2015 a las 16:30:07
-- Versión del servidor: 5.5.34
-- Versión de PHP: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `podslower`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `episodes`
--

CREATE TABLE IF NOT EXISTS `episodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idPodcast` int(11) NOT NULL,
  `title` varchar(256) COLLATE utf8_bin NOT NULL,
  `slug` varchar(256) COLLATE utf8_bin NOT NULL,
  `urlMp3` varchar(256) COLLATE utf8_bin NOT NULL,
  `duration` int(11) NOT NULL,
  `parsed` tinyint(1) NOT NULL,
  `datePodcast` datetime NOT NULL,
  `dateAdded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=165 ;

--
-- Volcado de datos para la tabla `episodes`
--

INSERT INTO `episodes` (`id`, `idPodcast`, `title`, `slug`, `urlMp3`, `duration`, `parsed`, `datePodcast`, `dateAdded`) VALUES
(1, 1, 'La perle rare', 'la-perle-rare', 'http://rf.proxycast.org/974916800972070912/10078-23.12.2014-ITEMA_20704258-0.mp3', 27365504, 1, '2014-12-23 13:55:00', '2014-12-24 01:24:52'),
(2, 1, 'Le village fantôme de Courbefy', 'le-village-fantôme-de-courbefy', 'http://rf.proxycast.org/974545712941375488/10078-22.12.2014-ITEMA_20703853-0.mp3', 27332736, 1, '2014-12-22 13:55:00', '2014-12-24 01:44:22'),
(3, 1, 'Les Pieds sur Terre - On a tous un professeur dans le coeur... (3/3)', 'les-pieds-sur-terre-on-a-tous-un-professeur-dans-le-coeur-3-3', 'http://rf.proxycast.org/973432453202976768/10078-19.12.2014-ITEMA_20702983-0.mp3', 27687040, 1, '2014-12-19 13:55:00', '2014-12-24 02:05:35'),
(4, 1, 'Le scandale des pesticides, en partenariat avec l''Humanité', 'le-scandale-des-pesticides-en-partenariat-avec-l-humanité', 'http://rf.proxycast.org/973061383216177152/10078-18.12.2014-ITEMA_20702596-0.mp3', 27269248, 1, '2014-12-18 13:55:00', '2014-12-24 02:25:34'),
(5, 1, 'Fins de droits', 'fins-de-droits', 'http://rf.proxycast.org/972690287698649088/10078-17.12.2014-ITEMA_20702205-0.mp3', 27271296, 1, '2014-12-17 13:55:00', '2014-12-24 02:47:14'),
(6, 1, 'Le corps et l’argent', 'le-corps-et-l-argent', 'http://rf.proxycast.org/972319205347041280/10078-16.12.2014-ITEMA_20701827-0.mp3', 27923424, 1, '2014-12-16 13:55:00', '2014-12-24 03:06:29'),
(7, 1, 'Sauvetages', 'sauvetages', 'http://rf.proxycast.org/971948121896525824/10078-15.12.2014-ITEMA_20701425-0.mp3', 27939808, 1, '2014-12-15 13:55:00', '2014-12-24 03:27:12'),
(8, 1, 'Les nouveaux territoires du FN : épisode 4 : David Rachline (en partenariat avec Mediapart)', 'les-nouveaux-territoires-du-fn-épisode-4-david-rachline-en-partenariat-avec-mediapart', 'http://rf.proxycast.org/970463776220389376/10078-11.12.2014-ITEMA_20700145-0.mp3', 27939808, 1, '2014-12-11 13:55:00', '2014-12-24 03:43:11'),
(9, 1, 'Mères au combat', 'mères-au-combat', 'http://rf.proxycast.org/970092698826448896/10078-10.12.2014-ITEMA_20699727-0.mp3', 27939808, 1, '2014-12-10 13:55:00', '2014-12-24 04:03:28'),
(10, 1, 'Un château en Espagne', 'un-château-en-espagne', 'http://rf.proxycast.org/969721608795070464/10078-09.12.2014-ITEMA_20699348-0.mp3', 27939808, 1, '2014-12-09 13:55:00', '2014-12-24 04:21:12'),
(11, 2, 'Session d''informations internationales du 23/12/2014 à 06h15 TU ', 'session-d-informations-internationales-du-23-12-2014-à-06h15-tu', 'http://telechargement.rfi.fr/rfi/francais/audio/tranchesinfo/r001/tranche_international_06h15_-_06h30_tu_20141223.mp3', 0, 1, '2014-12-23 07:15:00', '2014-12-24 04:39:41'),
(12, 2, 'Session d''informations internationales du 21/12/2014 à 06h15 TU ', 'session-d-informations-internationales-du-21-12-2014-à-06h15-tu', 'http://telechargement.rfi.fr/rfi/francais/audio/tranchesinfo/r001/tranche_international_06h15_-_06h30_tu_20141221.mp3', 0, 1, '2014-12-21 07:15:00', '2014-12-24 04:45:21'),
(13, 2, 'Session d''informations internationales du 20/12/2014 à 06h15 TU ', 'session-d-informations-internationales-du-20-12-2014-à-06h15-tu', 'http://telechargement.rfi.fr/rfi/francais/audio/tranchesinfo/r001/tranche_international_06h15_-_06h30_tu_20141220.mp3', 0, 1, '2014-12-20 07:15:00', '2014-12-24 04:51:03'),
(14, 2, 'Session d''informations internationales du 19/12/2014 à 06h15 TU ', 'session-d-informations-internationales-du-19-12-2014-à-06h15-tu', 'http://telechargement.rfi.fr/rfi/francais/audio/tranchesinfo/r001/tranche_international_06h15_-_06h30_tu_20141219.mp3', 0, 1, '2014-12-19 07:15:00', '2014-12-24 04:56:46'),
(15, 2, 'Session d''informations internationales du 18/12/2014 à 06h15 TU ', 'session-d-informations-internationales-du-18-12-2014-à-06h15-tu', 'http://telechargement.rfi.fr/rfi/francais/audio/tranchesinfo/r001/tranche_international_06h15_-_06h30_tu_20141218.mp3', 0, 1, '2014-12-18 07:15:00', '2014-12-24 05:01:44'),
(16, 2, 'Session d''informations internationales du 17/12/2014 à 06h15 TU ', 'session-d-informations-internationales-du-17-12-2014-à-06h15-tu', 'http://telechargement.rfi.fr/rfi/francais/audio/tranchesinfo/r001/tranche_international_06h15_-_06h30_tu_20141217.mp3', 0, 1, '2014-12-17 07:15:00', '2014-12-24 05:07:26'),
(17, 2, 'Session d''informations internationales du 16/12/2014 à 06h15 TU ', 'session-d-informations-internationales-du-16-12-2014-à-06h15-tu', 'http://telechargement.rfi.fr/rfi/francais/audio/tranchesinfo/r001/tranche_international_06h15_-_06h30_tu_20141216.mp3', 0, 1, '2014-12-16 07:15:00', '2014-12-24 05:13:07'),
(18, 2, 'Session d''informations internationales du 15/12/2014 à 06h15 TU ', 'session-d-informations-internationales-du-15-12-2014-à-06h15-tu', 'http://telechargement.rfi.fr/rfi/francais/audio/tranchesinfo/r001/tranche_international_06h15_-_06h30_tu_20141215.mp3', 0, 1, '2014-12-15 07:15:00', '2014-12-24 05:18:56'),
(29, 4, 'DocArchive: Tupac Shakur: Hip Hop Immortal 31 Dec 2014', 'docarchive-tupac-shakur-hip-hop-immortal-31-dec-2014', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20141223-0905a.mp3', 13033210, 1, '2014-12-23 10:05:00', '2014-12-24 05:27:47'),
(30, 4, 'DocArchive: The Kinshasa Symphony Orchestra', 'docarchive-the-kinshasa-symphony-orchestra', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20141223-0232a.mp3', 13043777, 1, '2014-12-23 03:32:00', '2014-12-24 05:37:59'),
(31, 4, 'DocArchive: Global Beats: Lisbon', 'docarchive-global-beats-lisbon', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20141221-2005a.mp3', 24070611, 1, '2014-12-21 21:05:00', '2014-12-24 05:48:26'),
(32, 4, 'DocArchive: Mothers of Jihadists', 'docarchive-mothers-of-jihadists', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20141221-1205a.mp3', 11373727, 1, '2014-12-21 13:05:00', '2014-12-24 06:06:37'),
(33, 4, 'DocArchive: The Knights of New Russia 18 Dec 2014', 'docarchive-the-knights-of-new-russia-18-dec-2014', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20141218-0232a.mp3', 13013508, 1, '2014-12-18 03:32:00', '2014-12-24 06:16:07'),
(34, 4, 'DocArchive: Afghan Women: Speaking Out, Losing Lives', 'docarchive-afghan-women-speaking-out-losing-lives', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20141217-0232a.mp3', 13039998, 1, '2014-12-17 03:32:00', '2014-12-24 06:26:17'),
(35, 4, 'DocArchive: Greyhound 100', 'docarchive-greyhound-100', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20141216-1357a.mp3', 13045926, 1, '2014-12-16 14:57:00', '2014-12-24 06:36:57'),
(36, 4, 'DocArchive: Washington Redskins - 11 Dec 2014', 'docarchive-washington-redskins-11-dec-2014', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20141211-0232a.mp3', 13010370, 1, '2014-12-11 03:32:00', '2014-12-24 06:46:41'),
(37, 4, 'DocArchive: Reclaiming the Swastika', 'docarchive-reclaiming-the-swastika', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20141210-0232a.mp3', 13051240, 1, '2014-12-10 03:32:00', '2014-12-24 06:56:26'),
(38, 4, 'DocArchive: Number Crunched', 'docarchive-number-crunched', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20141209-0232a.mp3', 13045412, 1, '2014-12-09 03:32:00', '2014-12-24 07:06:39'),
(39, 5, 'GlobalNews: 23 Dec 14 PM Ukraine votes to drop non-aligned status', 'globalnews-23-dec-14-pm-ukraine-votes-to-drop-non-aligned-status', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20141223-1629a.mp3', 14850456, 1, '2014-12-23 17:29:00', '2014-12-24 07:17:17'),
(40, 5, 'GlobalNews: 23 Dec 14 AM Pope attacks Vatican hypocricy', 'globalnews-23-dec-14-am-pope-attacks-vatican-hypocricy', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20141223-0121a.mp3', 13652251, 1, '2014-12-23 02:21:00', '2014-12-24 07:28:55'),
(41, 5, 'GlobalNews: 22 Dec 14 PM Yazidi women used as sex slaves by IS', 'globalnews-22-dec-14-pm-yazidi-women-used-as-sex-slaves-by-is', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20141222-1549a.mp3', 14050416, 1, '2014-12-22 16:49:00', '2014-12-24 07:39:21'),
(42, 5, 'GlobalNews: 22 Dec 14 AM Tunisia''s first free presidential elections', 'globalnews-22-dec-14-am-tunisia-s-first-free-presidential-elections', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20141222-0137b.mp3', 14244219, 1, '2014-12-22 02:37:00', '2014-12-24 07:50:22'),
(43, 5, 'GlobalNews: 21 Dec 14: New York Police Officers Killed', 'globalnews-21-dec-14-new-york-police-officers-killed', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20141221-1504a.mp3', 15288826, 1, '2014-12-21 16:04:00', '2014-12-24 08:00:49'),
(44, 5, 'GlobalNews: 20 Dec 14: North Korea denies hacking Sony', 'globalnews-20-dec-14-north-korea-denies-hacking-sony', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20141220-1418a.mp3', 14431625, 1, '2014-12-20 15:18:00', '2014-12-24 08:12:32'),
(45, 5, 'GlobalNews: 19 Dec 14 PM FIFA to publish corruption report', 'globalnews-19-dec-14-pm-fifa-to-publish-corruption-report', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20141219-1551a.mp3', 13990331, 1, '2014-12-19 16:51:00', '2014-12-24 08:23:18'),
(46, 5, 'GlobalNews: 19 Dec 14 AM Sony hack: White House responds', 'globalnews-19-dec-14-am-sony-hack-white-house-responds', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20141219-0117b.mp3', 12255482, 1, '2014-12-19 02:17:00', '2014-12-24 08:34:09'),
(47, 5, 'GlobalNews: 18 Dec 14 PM Putin upbeat on Russian economy', 'globalnews-18-dec-14-pm-putin-upbeat-on-russian-economy', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20141218-1622a.mp3', 14028830, 1, '2014-12-18 17:22:00', '2014-12-24 08:43:23'),
(48, 5, 'GlobalNews: 18 Dec 14 AM New era of US-Cuban relations', 'globalnews-18-dec-14-am-new-era-of-us-cuban-relations', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20141218-0056c.mp3', 13569849, 1, '2014-12-18 01:56:00', '2014-12-24 08:54:00'),
(49, 6, 'BizDaily: Crunch Lit - books on the financial crisis', 'bizdaily-crunch-lit-books-on-the-financial-crisis', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20141223-0909a.mp3', 8461156, 1, '2014-12-23 10:09:00', '2014-12-24 09:04:21'),
(50, 6, 'BizDaily: German Prudence Under Fire', 'bizdaily-german-prudence-under-fire', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20141222-0946a.mp3', 8444057, 1, '2014-12-22 10:46:00', '2014-12-24 09:11:04'),
(51, 6, 'ITB: ...And what a year it was', 'itb-and-what-a-year-it-was', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20141220-0830c.mp3', 12778229, 1, '2014-12-20 09:30:00', '2014-12-24 09:17:38'),
(52, 6, 'BizDaily: Russia Sanctions: A Dangerous Game?', 'bizdaily-russia-sanctions-a-dangerous-game', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20141219-1024a.mp3', 8455611, 1, '2014-12-19 11:24:00', '2014-12-24 09:27:45'),
(53, 6, 'BizDaily: Money: A Potted History', 'bizdaily-money-a-potted-history', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20141218-1020b.mp3', 8447480, 1, '2014-12-18 11:20:00', '2014-12-24 09:34:20'),
(54, 6, 'BizDaily: Malawi land grabs', 'bizdaily-malawi-land-grabs', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20141217-1141a.mp3', 8461433, 1, '2014-12-17 12:41:00', '2014-12-24 09:40:39'),
(55, 6, 'BizDaily: Willfull Blindness', 'bizdaily-willfull-blindness', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20141216-1023a.mp3', 8463785, 1, '2014-12-16 11:23:00', '2014-12-24 09:47:06'),
(56, 6, 'BizDaily: Global impact of ever cheaper oil', 'bizdaily-global-impact-of-ever-cheaper-oil', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20141215-1007a.mp3', 8448355, 1, '2014-12-15 11:07:00', '2014-12-24 09:53:36'),
(57, 6, 'ITB: China exhales: the global impact of Chinese deflation', 'itb-china-exhales-the-global-impact-of-chinese-deflation', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20141213-0830b.mp3', 12785086, 1, '2014-12-13 09:30:00', '2014-12-24 10:00:04'),
(58, 6, 'BizDaily: Oil prices hit new low', 'bizdaily-oil-prices-hit-new-low', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20141212-1205a.mp3', 8449767, 1, '2014-12-12 13:05:00', '2014-12-24 10:11:17'),
(59, 1, 'Les Pieds sur Terre - Les transformations du corps 3/3 : Estelle, strip-teaseuse', 'les-pieds-sur-terre-les-transformations-du-corps-3-3-estelle-strip-teaseuse', 'http://rf.proxycast.org/978627640279703552/10078-02.01.2015-ITEMA_20707883-0.mp3', 27635840, 1, '2015-01-02 13:55:00', '2015-01-02 14:18:51'),
(60, 1, 'Les Pieds sur Terre - De l''amour Inshallah', 'les-pieds-sur-terre-de-l-amour-inshallah', 'http://rf.proxycast.org/978256560578895872/10078-01.01.2015-ITEMA_20707505-0.mp3', 29024384, 1, '2015-01-01 13:55:00', '2015-01-02 14:18:51'),
(61, 1, 'Les Pieds sur Terre - La chorale des seniors', 'les-pieds-sur-terre-la-chorale-des-seniors', 'http://rf.proxycast.org/977885484996894720/10078-31.12.2014-ITEMA_20707117-0.mp3', 28010624, 1, '2014-12-31 13:55:00', '2015-01-02 14:18:51'),
(62, 1, 'Les Pieds sur Terre - Retour sur... Clara Candiani', 'les-pieds-sur-terre-retour-sur-clara-candiani', 'http://rf.proxycast.org/977514391744290816/10078-30.12.2014-ITEMA_20706737-0.mp3', 27455616, 1, '2014-12-30 13:55:00', '2015-01-02 14:18:51'),
(63, 1, 'Les Pieds sur Terre - Allo Ménie !', 'les-pieds-sur-terre-allo-ménie', 'http://rf.proxycast.org/977143305164824577/10078-29.12.2014-ITEMA_20706313-0.mp3', 27318400, 1, '2014-12-29 13:55:00', '2015-01-02 14:18:51'),
(64, 2, 'Session d''informations internationales du 02/01/2015 à 06h15 TU ', 'session-d-informations-internationales-du-02-01-2015-à-06h15-tu', 'http://telechargement.rfi.fr/rfi/francais/audio/tranchesinfo/r001/tranche_international_06h15_-_06h30_tu_20150102.mp3', 0, 1, '2015-01-02 07:15:00', '2015-01-02 14:18:51'),
(65, 2, 'Session d''informations internationales du 01/01/2015 à 06h15 TU ', 'session-d-informations-internationales-du-01-01-2015-à-06h15-tu', 'http://telechargement.rfi.fr/rfi/francais/audio/tranchesinfo/r001/tranche_international_06h15_-_06h30_tu_20150101.mp3', 0, 1, '2015-01-01 07:15:00', '2015-01-02 14:18:51'),
(66, 2, 'Session d''informations internationales du 31/12/2014 à 06h15 TU ', 'session-d-informations-internationales-du-31-12-2014-à-06h15-tu', 'http://telechargement.rfi.fr/rfi/francais/audio/tranchesinfo/r001/tranche_international_06h15_-_06h30_tu_20141231.mp3', 0, 1, '2014-12-31 07:15:00', '2015-01-02 14:18:51'),
(67, 2, 'Session d''informations internationales du 30/12/2014 à 06h15 TU ', 'session-d-informations-internationales-du-30-12-2014-à-06h15-tu', 'http://telechargement.rfi.fr/rfi/francais/audio/tranchesinfo/r001/tranche_international_06h15_-_06h30_tu_20141230.mp3', 0, 1, '2014-12-30 07:15:00', '2015-01-02 14:18:51'),
(68, 2, 'Session d''informations internationales du 29/12/2014 à 06h15 TU ', 'session-d-informations-internationales-du-29-12-2014-à-06h15-tu', 'http://telechargement.rfi.fr/rfi/francais/audio/tranchesinfo/r001/tranche_international_06h15_-_06h30_tu_20141229.mp3', 0, 1, '2014-12-29 07:15:00', '2015-01-02 14:18:51'),
(74, 4, 'DocArchive: MINT - One Year On', 'docarchive-mint-one-year-on', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20150101-0430a.mp3', 24107335, 1, '2015-01-01 05:30:00', '2015-01-02 14:18:54'),
(75, 4, 'DocArchive: Colombia – Where the Truth Lies Buried - 01 Jan 2015', 'docarchive-colombia-where-the-truth-lies-buried-01-jan-2015', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20150101-0232a.mp3', 13032924, 1, '2015-01-01 03:32:00', '2015-01-02 14:18:54'),
(76, 4, 'DocArchive: Surviving the Most Lethal Route in the World 27 Dec 2014', 'docarchive-surviving-the-most-lethal-route-in-the-world-27-dec-2014', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20141230-1245a.mp3', 24103522, 1, '2014-12-30 13:45:00', '2015-01-02 14:18:54'),
(77, 4, 'DocArchive: Musa''s Money 30 Dec 2014', 'docarchive-musa-s-money-30-dec-2014', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20141230-0905a.mp3', 13038192, 1, '2014-12-30 10:05:00', '2015-01-02 14:18:54'),
(78, 4, 'DocArchive: The Lipinski 28 Dec 2014', 'docarchive-the-lipinski-28-dec-2014', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/docarchive_20141228-2005a.mp3', 24086516, 1, '2014-12-28 21:05:00', '2015-01-02 14:18:54'),
(79, 5, 'GlobalNews: 02 Jan 15 AM Deadliest year for Syria', 'globalnews-02-jan-15-am-deadliest-year-for-syria', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20150102-0046a.mp3', 15526615, 1, '2015-01-02 01:46:00', '2015-01-02 14:18:55'),
(80, 5, 'GlobalNews: 01 Jan 15 PM Egypt to retry 3 jailed journalists', 'globalnews-01-jan-15-pm-egypt-to-retry-3-jailed-journalists', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20150101-1653a.mp3', 14231476, 1, '2015-01-01 17:53:00', '2015-01-02 14:18:55'),
(81, 5, 'GlobalNews: 01 Jan 15 AM Stampede in China''s New Year', 'globalnews-01-jan-15-am-stampede-in-china-s-new-year', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20150101-0120a.mp3', 14447072, 1, '2015-01-01 02:20:00', '2015-01-02 14:18:55'),
(82, 5, 'GlobalNews: 31 Dec 14 PM Hundreds rescued from migrant ship', 'globalnews-31-dec-14-pm-hundreds-rescued-from-migrant-ship', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20141231-1655a.mp3', 15328858, 1, '2014-12-31 17:55:00', '2015-01-02 14:18:55'),
(83, 5, 'GlobalNews: 31 Dec 14 AM Palestinian resolution rejected', 'globalnews-31-dec-14-am-palestinian-resolution-rejected', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/globalnews_20141231-0017b.mp3', 14176951, 1, '2014-12-31 01:17:00', '2015-01-02 14:18:55'),
(84, 6, 'BizDaily: Treasure from trash', 'bizdaily-treasure-from-trash', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20150102-0830a.mp3', 8455943, 1, '2015-01-02 09:30:00', '2015-01-02 14:18:55'),
(85, 6, 'BizDaily: Look ahead to 2015 01 Jan 15', 'bizdaily-look-ahead-to-2015-01-jan-15', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20150101-0830a.mp3', 8460259, 1, '2015-01-01 09:30:00', '2015-01-02 14:18:55'),
(86, 6, 'BizDaily: Extracting Ear Wax and Other Tales 31 Dec 14', 'bizdaily-extracting-ear-wax-and-other-tales-31-dec-14', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20141231-0830a.mp3', 8456129, 1, '2014-12-31 09:30:00', '2015-01-02 14:18:55'),
(87, 6, 'BizDaily: Russia''s Woes 30 Dec 14', 'bizdaily-russia-s-woes-30-dec-14', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20141230-0832a.mp3', 8454575, 1, '2014-12-30 09:32:00', '2015-01-02 14:18:55'),
(88, 6, 'BizDaily: Central Bankers 29 Dec 14', 'bizdaily-central-bankers-29-dec-14', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20141229-0832a.mp3', 8461444, 1, '2014-12-29 09:32:00', '2015-01-02 14:18:55'),
(89, 7, 'Ist der Mensch, was er isst? (Sendung vom 19.12.2014)', 'ist-der-mensch-was-er-isst-sendung-vom-19-12-2014', 'http://podcast-ww.wdr.de/medstdp/fsk0/59/599030/wdr5dasphilosophischeradio_2014-12-19_20-05.mp3', 25499871, 1, '2014-12-19 20:05:00', '2015-01-02 14:18:57'),
(90, 7, 'Verrückt? - Der Begriff der psychischen Krankheit (Sendung vom 12.12.2014)', 'verrückt-der-begriff-der-psychischen-krankheit-sendung-vom-12-12-2014', 'http://podcast-ww.wdr.de/medstdp/fsk0/59/593232/wdr5dasphilosophischeradio_2014-12-12_20-05.mp3', 25870779, 1, '2014-12-12 20:05:00', '2015-01-02 14:18:57'),
(91, 7, 'Störfaktor? - der Schmerz (Sendung vom 05.12.2014)', 'störfaktor-der-schmerz-sendung-vom-05-12-2014', 'http://podcast-ww.wdr.de/medstdp/fsk0/58/587433/wdr5dasphilosophischeradio_2014-12-05_20-05.mp3', 25262341, 1, '2014-12-05 20:05:00', '2015-01-02 14:18:57'),
(92, 7, 'Eine Chance? - globale Kooperation (Sendung vom 21.11.2014)', 'eine-chance-globale-kooperation-sendung-vom-21-11-2014', 'http://podcast-ww.wdr.de/medstdp/fsk0/57/575746/wdr5dasphilosophischeradio_2014-11-21_20-05.mp3', 26857297, 1, '2014-11-21 20:05:00', '2015-01-02 14:18:57'),
(93, 7, 'Gut geregelt? - Moral und Gesellschaft (Sendung vom 14.11.2014)', 'gut-geregelt-moral-und-gesellschaft-sendung-vom-14-11-2014', 'http://podcast-ww.wdr.de/medstdp/fsk0/57/570351/wdr5dasphilosophischeradio_2014-11-14_20-05.mp3', 25961863, 1, '2014-11-14 20:05:00', '2015-01-02 14:18:57'),
(94, 8, 'WDR 5 Presseclub: (14.12.2014)', 'wdr-5-presseclub-14-12-2014', 'http://medien.wdr.de/m/1418559268/radio/presseclubwdr5/wdr5_presseclub_20141214.mp3', 27385399, 1, '2014-12-14 00:00:00', '2015-01-02 14:18:58'),
(95, 8, 'WDR 5 Presseclub: (30.11.2014)', 'wdr-5-presseclub-30-11-2014', 'http://medien.wdr.de/m/1417352972/radio/presseclubwdr5/wdr5_presseclub_20141130.mp3', 27596851, 1, '2014-11-30 00:00:00', '2015-01-02 14:18:58'),
(96, 8, 'WDR 5 Presseclub: (23.11.2014)', 'wdr-5-presseclub-23-11-2014', 'http://medien.wdr.de/m/1416745692/radio/presseclubwdr5/wdr5_presseclub_20141123.mp3', 26090647, 1, '2014-11-23 00:00:00', '2015-01-02 14:18:58'),
(97, 8, 'WDR 5 Presseclub: (16.11.2014)', 'wdr-5-presseclub-16-11-2014', 'http://medien.wdr.de/m/1416215150/radio/presseclubwdr5/wdr5_presseclub_20141116.mp3', 19807807, 1, '2014-11-16 00:00:00', '2015-01-02 14:18:58'),
(98, 8, 'WDR 5 Presseclub: Gerecht oder Gemein? Wie kleine Gewerkschaften Deutschland lahmlegen (09.11.2014)', 'wdr-5-presseclub-gerecht-oder-gemein-wie-kleine-gewerkschaften-deutschland-lahmlegen-09-11-2014', 'http://medien.wdr.de/m/1415537180/radio/presseclubwdr5/wdr5_presseclub_20141109.mp3', 26773465, 1, '2014-11-09 00:00:00', '2015-01-02 14:18:58'),
(99, 9, 'WDR 5 Bärenbude: Kuschelbären: Krach machen (01.01.2015)', 'wdr-5-bärenbude-kuschelbären-krach-machen-01-01-2015', 'http://medien.wdr.de/m/1417782643/radio/baerenbude/wdr5_kuschelbaeren_20150101_1930.mp3', 1919011, 1, '2015-01-01 19:30:00', '2015-01-02 14:18:59'),
(100, 9, 'WDR 5 Bärenbude: Kuschelbären: Silvester (31.12.2014)', 'wdr-5-bärenbude-kuschelbären-silvester-31-12-2014', 'http://medien.wdr.de/m/1417779256/radio/baerenbude/wdr5_kuschelbaeren_20141231_1930.mp3', 1905057, 1, '2014-12-31 19:30:00', '2015-01-02 14:18:59'),
(101, 9, 'WDR 5 Bärenbude: Kuschelbären: Schottland- Nessie (30.12.2014)', 'wdr-5-bärenbude-kuschelbären-schottland-nessie-30-12-2014', 'http://medien.wdr.de/m/1417780510/radio/baerenbude/wdr5_kuschelbaeren_20141230_1930.mp3', 1686693, 1, '2014-12-30 19:30:00', '2015-01-02 14:18:59'),
(102, 9, 'WDR 5 Bärenbude: Kuschelbären: Wettervorhersage (27.12.2014)', 'wdr-5-bärenbude-kuschelbären-wettervorhersage-27-12-2014', 'http://medien.wdr.de/m/1417615212/radio/baerenbude/wdr5_kuschelbaeren_20141227_1930.mp3', 2115379, 1, '2014-12-27 19:30:00', '2015-01-02 14:18:59'),
(103, 9, 'WDR 5 Bärenbude: Kuschelbären: Weihnachten - das neue Spielzeug (25.12.2014)', 'wdr-5-bärenbude-kuschelbären-weihnachten-das-neue-spielzeug-25-12-2014', 'http://medien.wdr.de/m/1417172786/radio/baerenbude/wdr5_kuschelbaeren_20141225_1930.mp3', 2238775, 1, '2014-12-25 19:30:00', '2015-01-02 14:18:59'),
(104, 10, 'WDR 5 Erlebte Geschichten: Erlebte Geschichten vom 01.01.2015', 'wdr-5-erlebte-geschichten-erlebte-geschichten-vom-01-01-2015', 'http://medien.wdr.de/m/1420037063/radio/erlebtegeschichten/wdr5_erlebte_geschichten_20150101_1805.mp3', 11226495, 1, '2015-01-01 18:05:00', '2015-01-02 14:19:00'),
(105, 10, 'WDR 5 Erlebte Geschichten: Erlebte Geschichten vom 31.12.2014', 'wdr-5-erlebte-geschichten-erlebte-geschichten-vom-31-12-2014', 'http://medien.wdr.de/m/1420031060/radio/erlebtegeschichten/wdr5_erlebte_geschichten_20141231_1512.mp3', 11231611, 1, '2014-12-31 15:12:00', '2015-01-02 14:19:00'),
(106, 10, 'WDR 5 Erlebte Geschichten: Erlebte Geschichten vom 28.12.2014', 'wdr-5-erlebte-geschichten-erlebte-geschichten-vom-28-12-2014', 'http://medien.wdr.de/m/1419766694/radio/erlebtegeschichten/wdr5_erlebte_geschichten_20141228_0705.mp3', 11120385, 1, '2014-12-28 07:05:00', '2015-01-02 14:19:00'),
(107, 10, 'WDR 5 Erlebte Geschichten: Erlebte Geschichten vom 26.12.2014', 'wdr-5-erlebte-geschichten-erlebte-geschichten-vom-26-12-2014', 'http://medien.wdr.de/m/1419592410/radio/erlebtegeschichten/wdr5_erlebte_geschichten_20141226_1805.mp3', 10648195, 1, '2014-12-26 18:05:00', '2015-01-02 14:19:00'),
(108, 10, 'WDR 5 Erlebte Geschichten: Erlebte Geschichten vom 25.12.2014', 'wdr-5-erlebte-geschichten-erlebte-geschichten-vom-25-12-2014', 'http://medien.wdr.de/m/1419592030/radio/erlebtegeschichten/wdr5_erlebte_geschichten_20141225_1805.mp3', 11722265, 1, '2014-12-25 18:05:00', '2015-01-02 14:19:00'),
(109, 11, 'Sport : exploits et souvenirs de 2014 !', 'sport-exploits-et-souvenirs-de-2014', 'http://telechargement.rfi.fr/rfi/francais/audio/magazines/r180/debat_du_jour_20150101_1840.mp3', 0, 1, '2015-01-01 18:40:00', '2015-01-02 14:19:02'),
(110, 11, 'Les talons hauts des femmes ont-ils un effet sur le comportement des hommes ?', 'les-talons-hauts-des-femmes-ont-ils-un-effet-sur-le-comportement-des-hommes', 'http://telechargement.rfi.fr/rfi/francais/audio/magazines/r179/debat_du_jour_20141231_1833.mp3', 0, 1, '2014-12-31 18:33:00', '2015-01-02 14:19:02'),
(111, 11, 'François Hollande peut-il rebondir en 2015 ?', 'françois-hollande-peut-il-rebondir-en-2015', 'http://telechargement.rfi.fr/rfi/francais/audio/magazines/r179/debat_du_jour_20141230_1840.mp3', 0, 1, '2014-12-30 18:40:00', '2015-01-02 14:19:02'),
(112, 11, 'Quelles conséquences en France, du réchauffement climatique ?', 'quelles-conséquences-en-france-du-réchauffement-climatique', 'http://telechargement.rfi.fr/rfi/francais/audio/magazines/r179/debat_du_jour_20141229_1840.mp3', 0, 1, '2014-12-29 18:40:00', '2015-01-02 14:19:02'),
(113, 11, 'Le pape François parviendra-t-il à réformer l’église ?', 'le-pape-françois-parviendra-t-il-à-réformer-l-église', 'http://telechargement.rfi.fr/rfi/francais/audio/magazines/r179/debat_du_jour_20141226_1840.mp3', 0, 1, '2014-12-26 18:40:00', '2015-01-02 14:19:02'),
(114, 12, 'EP71: Des Traynor on the forgotten job of every SaaS product', 'ep71-des-traynor-on-the-forgotten-job-of-every-saas-product', 'http://media.blubrry.com/productpeople/media.strongcaster.com/productpeople/ep71-des-traynor.mp3', 27532701, 1, '2014-12-12 01:23:47', '2015-01-02 14:19:05'),
(115, 12, 'EP70: Samuel Hulick talks about building Useronboard', 'ep70-samuel-hulick-talks-about-building-useronboard', 'http://media.blubrry.com/productpeople/media.strongcaster.com/productpeople/ep070-sam.mp3', 32415578, 1, '2014-11-07 02:12:02', '2015-01-02 14:19:05'),
(116, 12, 'EP69: Nir Eyal on how to build habit forming products', 'ep69-nir-eyal-on-how-to-build-habit-forming-products', 'http://media.blubrry.com/productpeople/media.strongcaster.com.s3.amazonaws.com/productpeople/ep069nir2.mp3', 24518866, 1, '2014-10-31 05:36:32', '2015-01-02 14:19:05'),
(117, 12, 'EP68: Brian Casel on productized services', 'ep68-brian-casel-on-productized-services', 'http://media.blubrry.com/productpeople/media.strongcaster.com.s3.amazonaws.com/productpeople/ep068-casjam.mp3', 26848989, 1, '2014-10-24 00:04:11', '2015-01-02 14:19:05'),
(118, 12, 'EP67: Mike Rohde is building a sketchnote army', 'ep67-mike-rohde-is-building-a-sketchnote-army', 'http://media.blubrry.com/productpeople/media.strongcaster.com/productpeople/ep067-mike-rohde.mp3', 17908842, 1, '2014-10-02 21:33:36', '2015-01-02 14:19:05'),
(119, 13, '第62回（2014年12月25日放送分）)「Anna & Lueのひみつの小部屋（完全版）」', '第62回-2014年12月25日放送分-anna-lueのひみつの小部屋-完全版', 'http://lovefm.co.jp/files/podcast_file/57SB54VkxwYJMt6w4gAT7YwSLpwQsBPV0fzmUwUCQIPDNxMaYu.mp3', 8132358, 1, '2014-12-26 06:31:30', '2015-01-02 14:48:21'),
(120, 13, '第61回（2014年12月18日放送分）)「Anna & Lueのひみつの小部屋（完全版）」', '第61回-2014年12月18日放送分-anna-lueのひみつの小部屋-完全版', 'http://lovefm.co.jp/files/podcast_file/DQ9QIEBIAvgTnFTTmgbiUpAjQWWtVJP7UvJGM7fuxFyF27Petw.mp3', 6533860, 1, '2014-12-19 06:14:13', '2015-01-02 14:48:21'),
(121, 13, '第60回(2014年12月11日放送分)「Anna & Lueのひみつの小部屋（完全版）」', '第60回-2014年12月11日放送分-anna-lueのひみつの小部屋-完全版', 'http://lovefm.co.jp/files/podcast_file/2vf8H0JIBMBht1K4EJb0YlqRyCgm9o9ZWI2AtoGfEzJUkaIRfT.mp3', 6984831, 1, '2014-12-12 08:29:35', '2015-01-02 14:48:21'),
(122, 13, '第59回(2014年12月4日放送分)「Anna & Lueのひみつの小部屋（完全版）」 ', '第59回-2014年12月4日放送分-anna-lueのひみつの小部屋-完全版', 'http://lovefm.co.jp/files/podcast_file/AnrR4KSNBxg4bK1bPFCOj0gf1rIXjdkE0zPzz5Qub1rn7sDRUA.mp3', 4876135, 1, '2014-12-05 01:53:51', '2015-01-02 14:48:21'),
(123, 13, '第58回(2014年11月27日放送分)「Anna & Lueのひみつの小部屋（完全版）」', '第58回-2014年11月27日放送分-anna-lueのひみつの小部屋-完全版', 'http://lovefm.co.jp/files/podcast_file/mB8HRz2KIVFxNnDyWNr66gxq2lfqpSgEoEgm4hdbNT3CONHUGb.mp3', 8048907, 1, '2014-11-28 03:16:54', '2015-01-02 14:48:21'),
(124, 14, 'クリスマスイヴに石田は？団長は？(2014.12.26)', 'クリスマスイヴに石田は-団長は-2014-12-26', 'http://lovefm.co.jp/files/podcast_file/7KRqVh8IGAqCySZOHU3CcbTtYmC2J9lXtgVoB8jppH0OQa1GfA.mp3', 17679477, 1, '2014-12-26 03:08:55', '2015-01-02 14:48:24'),
(125, 14, '団長は主役、石田はキモいのか？(2014.12.19)', '団長は主役-石田はキモいのか-2014-12-19', 'http://lovefm.co.jp/files/podcast_file/5WLydMDouLJKF0fpQy1Lbxen2gZVffpNvzXfgtkgL2Dqq01FO2.mp3', 15053382, 1, '2014-12-19 05:17:06', '2015-01-02 14:48:24'),
(126, 14, '役者って仕事がギャンブルみたいなもんだ(2014.12.12)', '役者って仕事がギャンブルみたいなもんだ-2014-12-12', 'http://lovefm.co.jp/files/podcast_file/eN9aMNzZuInUnKH4bYpUeX7owXzQaKuvbOv8rx2K3zSM1d2raK.mp3', 21999603, 1, '2014-12-12 02:09:33', '2015-01-02 14:48:24'),
(127, 14, '看護婦さんの笑顔が好き(2014.12.05)', '看護婦さんの笑顔が好き-2014-12-05', 'http://lovefm.co.jp/files/podcast_file/fQNd6RcasL349T8s6ALM47tEAlEnwYSGMj0dyH7onXRM6G9fT4.mp3', 23786901, 1, '2014-12-05 07:46:04', '2015-01-02 14:48:24'),
(128, 14, '結局二人は離れ離れ(2014.11.28)', '結局二人は離れ離れ-2014-11-28', 'http://lovefm.co.jp/files/podcast_file/rA2cjgMwyb13XceAIkjDPbQvU3EYOW58D0VLy8xcUy3mhddX2l.mp3', 14069080, 1, '2014-11-28 12:06:03', '2015-01-02 14:48:24'),
(129, 15, '第13回（2012年8月2日オンエア）※最終回', '第13回-2012年8月2日オンエア-最終回', 'http://lovefm.co.jp/files/podcast_file/UcyM7hfJtjwA8qdk8ErVaY9jHIywrmaNomJXh8ZBzORpcAh6ac.mp3', 10483300, 1, '2012-08-03 03:37:16', '2015-01-02 14:48:26'),
(130, 15, '第12回（2012年7月26日オンエア）', '第12回-2012年7月26日オンエア', 'http://lovefm.co.jp/files/podcast_file/jAX5n9pbMYEPsTRFxvqrmpbUfVuP5q48fdBhH6pztQR0fB0yMW.mp3', 10403052, 1, '2012-07-27 03:20:41', '2015-01-02 14:48:26'),
(131, 15, '第11回（2012年7月19日オンエア）', '第11回-2012年7月19日オンエア', 'http://lovefm.co.jp/files/podcast_file/LwfBZzsOBUn5PsyXkumWefg1ulCTGcUAN2ianuPmn8uaAzFBZT.mp3', 10643379, 1, '2012-07-23 05:27:34', '2015-01-02 14:48:26'),
(132, 15, '第10回（2012年7月12日オンエア）', '第10回-2012年7月12日オンエア', 'http://lovefm.co.jp/files/podcast_file/Hg8xfYUBfDoiSculUp53U1n87Y29YxrZAc5kEExXUQ64B13e4q.mp3', 10323225, 1, '2012-07-13 11:12:56', '2015-01-02 14:48:26'),
(133, 15, '第9回（2012年7月5日オンエア）', '第9回-2012年7月5日オンエア', 'http://lovefm.co.jp/files/podcast_file/MsVfUoUWBqksHmOAIpGYj5DBwbYPiy0qU0WGmGjgtDIj0D97Bg.mp3', 10403055, 1, '2012-07-06 04:59:37', '2015-01-02 14:48:26'),
(134, 16, 'the 12th session「ステルスではないマーケッティングっ」', 'the-12th-session-ステルスではないマーケッティングっ', 'http://lovefm.co.jp/files/podcast_file/hC7i98mhkciBGmOrLzoK1ZvQDEFOqYAELtjOj9G8ufu5dsP4Y0.mp3', 13024026, 1, '2013-10-24 05:02:53', '2015-01-02 14:48:28'),
(135, 16, 'the 11th session「長さ２倍返しくらい」', 'the-11th-session-長さ２倍返しくらい', 'http://lovefm.co.jp/files/podcast_file/G7Ez30VarV3nW7CdKgqdLKqUNugKiRBwNe6G3gPtQzgzT7jxmn.mp3', 18141518, 1, '2013-09-12 12:03:58', '2015-01-02 14:48:28'),
(136, 16, 'the 10th session「録ったのは夏」', 'the-10th-session-録ったのは夏', 'http://lovefm.co.jp/files/podcast_file/LRBQSubQyAkGfISgu1t4kRlhaKSRGmJW0aPRRFZxo5LXMQvIVw.mp3', 10573113, 1, '2012-10-17 13:00:48', '2015-01-02 14:48:28'),
(137, 16, 'the 9th session「録ったのは3ヶ月前」', 'the-9th-session-録ったのは3ヶ月前', 'http://lovefm.co.jp/files/podcast_file/v6g49xClpHg8aaSo0iH8YATEQ1hdAofMemzI5mLeCmjgtG7fYL.mp3', 9684114, 1, '2012-10-10 05:13:35', '2015-01-02 14:48:28'),
(138, 16, 'the 8th session「頭痛が痛い」', 'the-8th-session-頭痛が痛い', 'http://lovefm.co.jp/files/podcast_file/k9o1La2g34PURr4UNBbgCM2Nn88ykUsyHgzB3aFe4wXpGlTEeh.mp3', 12460617, 1, '2012-05-30 10:05:13', '2015-01-02 14:48:28'),
(139, 17, '01/01/2015 La Ventana de 18:00 a 19:00', '01-01-2015-la-ventana-de-18-00-a-19-00', 'http://sdmedia.playser.cadenaser.com/2015/1/1/cadenaser_laventana_20150101_180000_190000.mp3', 3600000, 1, '2015-01-01 19:00:36', '2015-01-02 14:48:29'),
(140, 17, '01/01/2015 La Ventana de 17:00 a 18:00', '01-01-2015-la-ventana-de-17-00-a-18-00', 'http://sdmedia.playser.cadenaser.com/2015/1/1/cadenaser_laventana_20150101_170000_180000.mp3', 3600000, 1, '2015-01-01 18:00:35', '2015-01-02 14:48:29'),
(141, 17, '31/12/2014 La Ventana de 19:00 a 20:00', '31-12-2014-la-ventana-de-19-00-a-20-00', 'http://sdmedia.playser.cadenaser.com/2014/12/31/cadenaser_laventana_20141231_190000_200000.mp3', 3600000, 1, '2014-12-31 20:00:34', '2015-01-02 14:48:29'),
(142, 17, '31/12/2014 La Ventana de 18:00 a 19:00', '31-12-2014-la-ventana-de-18-00-a-19-00', 'http://sdmedia.playser.cadenaser.com/2014/12/31/cadenaser_laventana_20141231_180000_190000.mp3', 3600000, 1, '2014-12-31 19:00:34', '2015-01-02 14:48:29'),
(143, 17, '31/12/2014 La Ventana de 17:00 a 18:00', '31-12-2014-la-ventana-de-17-00-a-18-00', 'http://sdmedia.playser.cadenaser.com/2014/12/31/cadenaser_laventana_20141231_170000_180000.mp3', 3600000, 1, '2014-12-31 18:00:34', '2015-01-02 14:48:29'),
(144, 18, '"Repartiendo millones entre tus amigotes, todos igual de jetas"', 'repartiendo-millones-entre-tus-amigotes-todos-igual-de-jetas', 'http://sdmedia.playser.cadenaser.com/2015/1/2/000WB0923720150102123618.mp3', 126000, 1, '2015-01-02 12:36:21', '2015-01-02 14:48:31'),
(145, 18, 'En la hora del cine hablamos con Luis Alegre que acaba de publicar "Cerca de Casa"', 'en-la-hora-del-cine-hablamos-con-luis-alegre-que-acaba-de-publicar-cerca-de-casa', 'http://sdmedia.playser.cadenaser.com/2015/1/2/000WB0022320150102123900.mp3', 1589000, 1, '2015-01-02 12:39:14', '2015-01-02 14:48:31'),
(146, 18, '02/01/2015 Hoy por hoy de 12:00 a 12:20', '02-01-2015-hoy-por-hoy-de-12-00-a-12-20', 'http://sdmedia.playser.cadenaser.com/2015/1/2/cadenaser_hoyporhoy_20150102_120000_122000.mp3', 1200000, 1, '2015-01-02 12:30:37', '2015-01-02 14:48:31'),
(147, 18, '02/01/2015 Hoy por hoy de 11:00 a 12:00', '02-01-2015-hoy-por-hoy-de-11-00-a-12-00', 'http://sdmedia.playser.cadenaser.com/2015/1/2/cadenaser_hoyporhoy_20150102_110000_120000.mp3', 3600000, 1, '2015-01-02 12:00:37', '2015-01-02 14:48:31'),
(148, 18, '"Desde 2007 no sale un año bueno"', 'desde-2007-no-sale-un-año-bueno', 'http://sdmedia.playser.cadenaser.com/2015/1/2/000WB0923720150102113324.mp3', 85000, 1, '2015-01-02 11:33:55', '2015-01-02 14:48:31'),
(149, 19, 'Coordenadas - Pequeñas coherencias II - 01/01/15', 'coordenadas-pequeñas-coherencias-ii-01-01-15', 'http://mvod.lvlt.rtve.es/resources/TE_SCOORDE/mp3/7/8/1419433127787.mp3', 115111399, 1, '2015-01-01 22:00:00', '2015-01-02 14:48:32'),
(150, 19, 'Coordenadas - Pequeñas coherencias I - 31/12/14', 'coordenadas-pequeñas-coherencias-i-31-12-14', 'http://mvod.lvlt.rtve.es/resources/TE_SCOORDE/mp3/4/9/1419433188394.mp3', 114333994, 1, '2014-12-31 22:00:00', '2015-01-02 14:48:32'),
(151, 19, 'Coordenadas - Viviendo en gerundio - 30/12/14', 'coordenadas-viviendo-en-gerundio-30-12-14', 'http://mvod.lvlt.rtve.es/resources/TE_SCOORDE/mp3/4/7/1419433430474.mp3', 114441828, 1, '2014-12-30 22:00:00', '2015-01-02 14:48:32'),
(152, 19, 'Coordenadas - Viaje lento - 29/12/14', 'coordenadas-viaje-lento-29-12-14', 'http://mvod.lvlt.rtve.es/resources/TE_SCOORDE/mp3/6/9/1419433488296.mp3', 114588950, 1, '2014-12-29 22:00:00', '2015-01-02 14:48:32'),
(153, 19, 'Coordenadas - Distopias que no sucederán - 25/12/14', 'coordenadas-distopias-que-no-sucederán-25-12-14', 'http://mvod.lvlt.rtve.es/resources/TE_SCOORDE/mp3/4/1/1419434534914.mp3', 115171587, 1, '2014-12-25 23:00:00', '2015-01-02 14:48:32'),
(154, 20, 'Fallo de sistema - Episodio 161: Best Of - 28/12/14', 'fallo-de-sistema-episodio-161-best-of-28-12-14', 'http://mvod.lvlt.rtve.es/resources/TE_SFALLOD/mp3/4/0/1419341486604.mp3', 114520423, 1, '2014-12-28 13:00:00', '2015-01-02 14:48:33'),
(155, 20, 'Fallo de Sistema - Episodio 160: Superpodcast ¿qué juego comprar? - 21/12/14', 'fallo-de-sistema-episodio-160-superpodcast-qué-juego-comprar-21-12-14', 'http://mvod.lvlt.rtve.es/resources/TE_SFALLOD/mp3/9/0/1418999698209.mp3', 114710177, 1, '2014-12-21 12:00:00', '2015-01-02 14:48:33'),
(156, 20, 'Fallo de sistema - Episodio 159: Biotecnología y arte - 14/12/14', 'fallo-de-sistema-episodio-159-biotecnología-y-arte-14-12-14', 'http://mvod.lvlt.rtve.es/resources/TE_SFALLOD/mp3/3/4/1418390217043.mp3', 115589563, 1, '2014-12-14 12:00:00', '2015-01-02 14:48:33'),
(157, 20, 'Fallo de Sistema - Episodio 158: "Fun&Serious" - 07/12/14', 'fallo-de-sistema-episodio-158-fun-serious-07-12-14', 'http://mvod.lvlt.rtve.es/resources/TE_SFALLOD/mp3/9/4/1417767870249.mp3', 115502627, 1, '2014-12-07 12:00:00', '2015-01-02 14:48:33'),
(158, 20, 'Fallo de Sistema - Episodio 157: "De miedo" - 30/11/14', 'fallo-de-sistema-episodio-157-de-miedo-30-11-14', 'http://mvod.lvlt.rtve.es/resources/TE_SFALLOD/mp3/5/7/1417185888775.mp3', 115861236, 1, '2014-11-30 12:00:00', '2015-01-02 14:48:33'),
(159, 21, 'Les voies du Vatican sont-elles impénétrables?', 'les-voies-du-vatican-sont-elles-impénétrables', 'http://rf.proxycast.org/976833569764679680/13955-28.12.2014-ITEMA_20706080-0.mp3', 54016128, 1, '2014-12-28 17:53:00', '2015-01-02 15:04:21'),
(160, 21, 'Quel Pouvoir pour le Ministère de la Culture ?', 'quel-pouvoir-pour-le-ministère-de-la-culture', 'http://rf.proxycast.org/974235981609705472/13955-21.12.2014-ITEMA_20703619-0.mp3', 54294656, 1, '2014-12-21 17:53:00', '2015-01-02 15:04:21'),
(161, 21, 'le gouvernement du corps: le rôle du corps en politique', 'le-gouvernement-du-corps-le-rôle-du-corps-en-politique', 'http://rf.proxycast.org/971638381245112320/13955-14.12.2014-ITEMA_20701192-0.mp3', 54419584, 1, '2014-12-14 17:53:00', '2015-01-02 15:04:21'),
(162, 21, 'L''arme du Nobel: les pouvoirs d''un prix', 'l-arme-du-nobel-les-pouvoirs-d-un-prix', 'http://rf.proxycast.org/969040778938556416/13955-07.12.2014-ITEMA_20698723-0.mp3', 54325376, 1, '2014-12-07 17:53:00', '2015-01-02 15:04:21'),
(163, 21, 'La balle au Centre: le Centre, arbitre ou acteur du jeu politique?', 'la-balle-au-centre-le-centre-arbitre-ou-acteur-du-jeu-politique', 'http://rf.proxycast.org/966443182407557120/13955-30.11.2014-ITEMA_20696236-0.mp3', 54552704, 1, '2014-11-30 17:53:00', '2015-01-02 15:04:21'),
(164, 14, 'お正月は眠いもんです(2015.01.03)', 'お正月は眠いもんです-2015-01-03', 'http://lovefm.co.jp/files/podcast_file/dDiwRWyRCzaicpbUDm73TpJOkDktrKmXJ2hfu9N1NLCeKBSBXQ.mp3', 19667134, 1, '2015-01-02 16:01:20', '2015-01-02 16:11:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_bin NOT NULL,
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `status`) VALUES
(1, 'fr', 'Français', 1),
(2, 'en', 'English', 1),
(3, 'de', 'Deutsch', 1),
(4, 'jp', 'Japanese', 1),
(5, 'es', 'Español', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `podcasts`
--

CREATE TABLE IF NOT EXISTS `podcasts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_bin NOT NULL,
  `slug` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(128) COLLATE utf8_bin NOT NULL,
  `lang` varchar(2) COLLATE utf8_bin NOT NULL,
  `parsed` tinyint(1) NOT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `podcasts`
--

INSERT INTO `podcasts` (`id`, `title`, `slug`, `url`, `lang`, `parsed`, `date`) VALUES
(1, 'Les Pieds sur Terre', 'les-pieds-sur-terre', 'http://radiofrance-podcast.net/podcast09/rss_10078.xml', 'fr', 1, '2014-12-20 00:00:00'),
(2, 'RFI - Edition Monde 6h00 TU', 'rfi-edition-monde-6h00-tu', 'http://www1.rfi.fr/radiofr/podcast/trancheMonde.asp', 'fr', 1, '2014-12-20 00:00:00'),
(4, 'BBC World Service - Documentaries', 'documentaries', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/rss.xml', 'en', 1, '2014-12-20 00:00:00'),
(5, 'BBC World Service - Global News', 'global-news', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/rss.xml', 'en', 1, '2014-12-20 00:00:00'),
(6, 'BBC World Service - BBC Business Daily', 'bbc-business-daily', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/rss.xml', 'en', 1, '2014-12-20 00:00:00'),
(7, 'WDR 5 Das philosophische Radio', 'wdr-5-das-philosophische-radio', 'http://www1.wdr.de/radio/podcasts/wdr5/dasphilosophischeradio100.podcast', 'de', 1, '2014-12-31 00:00:00'),
(8, 'Der Presseclub im WDR 5-Radio zum Mitnehmen', 'der-presseclub-im-wdr-5-radio-zum-mitnehmen', 'http://podcast.wdr.de/radio/presseclubwdr5.xml', 'de', 1, '2014-12-31 00:00:00'),
(9, 'Kinderradio im WDR 5-Radio zum Mitnehmen', 'kinderradio-im-wdr-5-radio-zum-mitnehmen', 'http://podcast.wdr.de/radio/baerenbude.xml', 'de', 1, '2014-12-31 00:00:00'),
(10, 'Erlebte Geschichten im WDR 5 Radio zum Mitnehmen', 'erlebte-geschichten-im-wdr-5-radio-zum-mitnehmen', 'http://podcast.wdr.de/radio/erlebtegeschichten.xml', 'de', 1, '2014-12-31 00:00:00'),
(11, 'Débat du jour', 'debat-du-jour', 'http://www.rfi.fr/emission/debat-jour/podcast', 'fr', 1, '2014-12-31 00:00:00'),
(12, 'Product People', 'product-people', 'http://productpeople.tv/feed/podcast/', 'en', 1, '2014-12-31 00:00:00'),
(13, 'Anna & Lueのひみつの小部屋（完全版）', 'anna-lue', 'http://lovefm.co.jp/podcasts/xml/133/24.xml', 'jp', 1, '2014-12-31 00:00:00'),
(14, 'ヨーロッパ企画福岡支部ポッドキャスト', 'europe-planning-fukuoka-branch-podcasts', 'http://lovefm.co.jp/podcasts/xml/114/23.xml', 'jp', 1, '2014-12-31 00:00:00'),
(15, 'Global Hearts', 'global-hearts', 'http://lovefm.co.jp/podcasts/xml/84/15.xml', 'jp', 1, '2014-12-31 00:00:00'),
(16, 'Global Session ?', 'global-session', 'http://lovefm.co.jp/podcasts/xml/53/8.xml', 'jp', 1, '2014-12-31 00:00:00'),
(17, 'La Ventana (Cadena SER)', 'la-ventana-cadena-ser', 'http://urotrosfiles.media.streamtheworld.com/otrosfiles/podcasts/324.xml', 'es', 1, '2014-12-31 00:00:00'),
(18, 'Hoy por Hoy (Cadena SER)', 'hoy-por-hoy-cadena-ser', 'http://urotrosfiles.media.streamtheworld.com/otrosfiles/podcasts/222.xml', 'es', 1, '2014-12-31 00:00:00'),
(19, 'Coordenadas (Radio 3)', 'coordenadas-radio-3', 'http://www.rtve.es/api/programas/58250/audios.rss', 'es', 1, '2014-12-31 00:00:00'),
(20, 'Fallo de sistema (Radio 3)', 'fallo-de-sistema-radio-3', 'http://www.rtve.es/api/programas/46690/audios.rss', 'es', 1, '2014-12-31 00:00:00'),
(21, 'L''Atelier du pouvoir', 'latelier-du-pouvoir', 'http://radiofrance-podcast.net/podcast09/rss_13955.xml', 'fr', 1, '2015-01-31 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
