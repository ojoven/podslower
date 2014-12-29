-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-12-2014 a las 19:42:25
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=59 ;

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
(19, 3, 'REPORTAGES du 22/12/2014 12:22:44 ', 'reportages-du-22-12-2014-12-22-44', 'http://prof.estat.com/m/media/france24en_v.m4v?c=REPORTAGES&p=DN097158-A-01-20141219.m4v&media_url=http%3A%2F%2Fwww.france24.com%2Fstatic%2Fpodcast%2Ffr%2FREPORTAGES%2Fvideos%2FDN097158-A-01-20141219.m4v', -1, 1, '2014-12-22 12:22:44', '2014-12-24 05:24:33'),
(20, 3, 'REPORTAGES du 20/12/2014 14:24:00 ', 'reportages-du-20-12-2014-14-24-00', 'http://prof.estat.com/m/media/france24en_v.m4v?c=REPORTAGES&p=DN097145-A-01-20141218.m4v&media_url=http%3A%2F%2Fwww.france24.com%2Fstatic%2Fpodcast%2Ffr%2FREPORTAGES%2Fvideos%2FDN097145-A-01-20141218.m4v', -1, 1, '2014-12-20 14:24:00', '2014-12-24 05:24:57'),
(21, 3, 'REPORTAGES du 20/12/2014 10:22:00 ', 'reportages-du-20-12-2014-10-22-00', 'http://prof.estat.com/m/media/france24en_v.m4v?c=REPORTAGES&p=DN097144-A-01-20141218.m4v&media_url=http%3A%2F%2Fwww.france24.com%2Fstatic%2Fpodcast%2Ffr%2FREPORTAGES%2Fvideos%2FDN097144-A-01-20141218.m4v', -1, 1, '2014-12-20 10:22:00', '2014-12-24 05:25:15'),
(22, 3, 'REPORTAGES du 20/12/2014 06:24:00 ', 'reportages-du-20-12-2014-06-24-00', 'http://prof.estat.com/m/media/france24en_v.m4v?c=REPORTAGES&p=DN097143-A-01-20141218.m4v&media_url=http%3A%2F%2Fwww.france24.com%2Fstatic%2Fpodcast%2Ffr%2FREPORTAGES%2Fvideos%2FDN097143-A-01-20141218.m4v', -1, 1, '2014-12-20 06:24:00', '2014-12-24 05:25:39'),
(23, 3, 'REPORTAGES du 19/12/2014 12:24:44 ', 'reportages-du-19-12-2014-12-24-44', 'http://prof.estat.com/m/media/france24en_v.m4v?c=REPORTAGES&p=DN097101-A-01-20141216.m4v&media_url=http%3A%2F%2Fwww.france24.com%2Fstatic%2Fpodcast%2Ffr%2FREPORTAGES%2Fvideos%2FDN097101-A-01-20141216.m4v', -1, 1, '2014-12-19 12:24:44', '2014-12-24 05:25:56'),
(24, 3, 'REPORTAGES du 19/12/2014 01:55:23 ', 'reportages-du-19-12-2014-01-55-23', 'http://prof.estat.com/m/media/france24en_v.m4v?c=REPORTAGES&p=DN097067-A-01-20141216.m4v&media_url=http%3A%2F%2Fwww.france24.com%2Fstatic%2Fpodcast%2Ffr%2FREPORTAGES%2Fvideos%2FDN097067-A-01-20141216.m4v', -1, 1, '2014-12-19 01:55:23', '2014-12-24 05:26:12'),
(25, 3, 'REPORTAGES du 18/12/2014 17:54:40 ', 'reportages-du-18-12-2014-17-54-40', 'http://prof.estat.com/m/media/france24en_v.m4v?c=REPORTAGES&p=DN097066-A-01-20141216.m4v&media_url=http%3A%2F%2Fwww.france24.com%2Fstatic%2Fpodcast%2Ffr%2FREPORTAGES%2Fvideos%2FDN097066-A-01-20141216.m4v', -1, 1, '2014-12-18 17:54:40', '2014-12-24 05:26:30'),
(26, 3, 'REPORTAGES du 18/12/2014 01:55:22 ', 'reportages-du-18-12-2014-01-55-22', 'http://prof.estat.com/m/media/france24en_v.m4v?c=REPORTAGES&p=DN097050-A-01-20141215.m4v&media_url=http%3A%2F%2Fwww.france24.com%2Fstatic%2Fpodcast%2Ffr%2FREPORTAGES%2Fvideos%2FDN097050-A-01-20141215.m4v', -1, 1, '2014-12-18 01:55:22', '2014-12-24 05:26:46'),
(27, 3, 'REPORTAGES du 17/12/2014 10:24:27 ', 'reportages-du-17-12-2014-10-24-27', 'http://prof.estat.com/m/media/france24en_v.m4v?c=REPORTAGES&p=DN097049-A-01-20141215.m4v&media_url=http%3A%2F%2Fwww.france24.com%2Fstatic%2Fpodcast%2Ffr%2FREPORTAGES%2Fvideos%2FDN097049-A-01-20141215.m4v', -1, 1, '2014-12-17 10:24:27', '2014-12-24 05:27:05'),
(28, 3, 'REPORTAGES du 16/12/2014 15:40:00 ', 'reportages-du-16-12-2014-15-40-00', 'http://prof.estat.com/m/media/france24en_v.m4v?c=REPORTAGES&p=DN097035-A-01-20141215.m4v&media_url=http%3A%2F%2Fwww.france24.com%2Fstatic%2Fpodcast%2Ffr%2FREPORTAGES%2Fvideos%2FDN097035-A-01-20141215.m4v', -1, 1, '2014-12-16 15:40:00', '2014-12-24 05:27:26'),
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
(58, 6, 'BizDaily: Oil prices hit new low', 'bizdaily-oil-prices-hit-new-low', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/bizdaily_20141212-1205a.mp3', 8449767, 1, '2014-12-12 13:05:00', '2014-12-24 10:11:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_bin NOT NULL,
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`) VALUES
(1, 'fr', 'Français'),
(2, 'en', 'English');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `podcasts`
--

INSERT INTO `podcasts` (`id`, `title`, `slug`, `url`, `lang`, `parsed`, `date`) VALUES
(1, 'Les Pieds sur Terre', 'les-pieds-sur-terre', 'http://radiofrance-podcast.net/podcast09/rss_10078.xml', 'fr', 1, '2014-12-20 00:00:00'),
(2, 'RFI - Edition Monde 6h00 TU', 'rfi-edition-monde-6h00-tu', 'http://www1.rfi.fr/radiofr/podcast/trancheMonde.asp', 'fr', 1, '2014-12-20 00:00:00'),
(3, 'FRANCE 24 - REPORTAGES', 'france-24-reportages', 'http://www.france24.com/static/podcast/fr/REPORTAGES/reportages-fr.xml', 'fr', 1, '2014-12-20 00:00:00'),
(4, 'BBC World Service - Documentaries', 'documentaries', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/rss.xml', 'en', 1, '2014-12-20 00:00:00'),
(5, 'BBC World Service - Global News', 'global-news', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/rss.xml', 'en', 1, '2014-12-20 00:00:00'),
(6, 'BBC World Service - BBC Business Daily', 'bbc-business-daily', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/rss.xml', 'en', 1, '2014-12-20 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
