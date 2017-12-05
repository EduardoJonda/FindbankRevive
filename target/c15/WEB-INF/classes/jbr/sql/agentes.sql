-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2017 a las 02:24:09
-- Versión del servidor: 5.5.58-0ubuntu0.14.04.1
-- Versión de PHP: 5.6.31-6+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `findbank`
--

-- --------------------------------------------------------

--
-- 
Estructura de tabla para la tabla `agentes`
--


CREATE TABLE IF NOT EXISTS `agentes` (
 
 `idAgente` int(11) NOT NULL AUTO_INCREMENT,
 
 `nombre` varchar(60) NOT NULL,
 
 `direccion` varchar(80) NOT NULL,
  
`lat` float NOT NULL,
  
`lng` float NOT NULL,
 
 `tipo` varchar(45) NOT NULL,
 
 `sistema` tinyint(1) NOT NULL,
  
`seguridad` int(5) NOT NULL,
 
 `horario` date NOT NULL,
  
`descripcion` varchar(100) NOT NULL,

  PRIMARY KEY (`idAgente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;


--
-- Volcado de datos para la tabla `agentes`
--


INSERT INTO `agentes` (
`idAgente`, `nombre`, `direccion`, `lat`, `lng`, `tipo`, `sistema`, `seguridad`, `horario`, `descripcion`) VALUES
(1, 'Nicky', 'Av. santa anita', -12.0441, -76.9522, 'Mercado', 1, 4, '2017-10-30', 'Agente BCP'),
(2, 'Agente2', 'Mz C Su casa', -12.2198, -76.965, 'Botica', 1, 4, '2017-10-30', 'Bonito lugar'),
(3, 'Residencia', 'Av. reducto', -12.0443, -76.9551, 'Residencia', 1, 3, '2017-11-22', 'Residencia Cooworking'),
(6, 'Demo01', 'Av demo', -12.1342, -77.0227, 'demo', 0, 1, '2017-11-21', 'Demoooooo'),
(8, 'Demo02', 'Av demo2', -12.1341, -77.0236, 'de', 0, 2, '2017-11-22', 'Demo2'),
(10, 'Demo03', 'Av. demo 3', -12.1357, -77.0236, 'demo3', 1, 4, '2017-11-29', 'demo3'),
(11, 'Demo04', 'Av. demo 4', -12.1357, -77.1436, 'demo4', 1, 4, '2017-11-29', 'demo4');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;