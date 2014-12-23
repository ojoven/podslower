-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-12-2014 a las 22:07:11
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
  `title` varchar(256) COLLATE utf8_bin NOT NULL,
  `slug` varchar(256) COLLATE utf8_bin NOT NULL,
  `urlMp3` varchar(256) COLLATE utf8_bin NOT NULL,
  `duration` int(11) NOT NULL,
  `parsed` tinyint(1) NOT NULL,
  `datePodcast` datetime NOT NULL,
  `dateAdded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

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
(1, 'Les Pieds sur Terre', 'les-pieds-sur-terre', 'http://radiofrance-podcast.net/podcast09/rss_10078.xml', 'fr', 0, '2014-12-20 00:00:00'),
(2, 'RFI - Edition Monde 6h00 TU', 'rfi-edition-monde-6h00-tu', 'http://www1.rfi.fr/radiofr/podcast/trancheMonde.asp', 'fr', 0, '2014-12-20 00:00:00'),
(3, 'FRANCE 24 - REPORTAGES', 'france-24-reportages', 'http://www.france24.com/static/podcast/fr/REPORTAGES/reportages-fr.xml', 'fr', 0, '2014-12-20 00:00:00'),
(4, 'BBC World Service - Documentaries', 'bbc-world-service-documentaries', 'http://downloads.bbc.co.uk/podcasts/worldservice/docarchive/rss.xml', 'en', 0, '2014-12-20 00:00:00'),
(5, 'BBC World Service - Global News', 'bbc-world-service-global-news', 'http://downloads.bbc.co.uk/podcasts/worldservice/globalnews/rss.xml', 'en', 0, '2014-12-20 00:00:00'),
(6, 'BBC World Service - BBC Business Daily', 'bbc-world-service-bbc-business-daily', 'http://downloads.bbc.co.uk/podcasts/worldservice/bizdaily/rss.xml', 'en', 0, '2014-12-20 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
