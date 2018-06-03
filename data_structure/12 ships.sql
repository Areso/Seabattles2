-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 01, 2018 at 09:36 PM
-- Server version: 5.5.60-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `seabattles`
--

-- --------------------------------------------------------

--
-- Table structure for table `ships`
--

CREATE TABLE IF NOT EXISTS `ships` (
  `id_ship` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `equipped` tinyint(1) NOT NULL,
  `coordx` int(11) NOT NULL,
  `coordy` int(11) NOT NULL,
  `ship_name` varchar(50) DEFAULT NULL,
  `ship_current_health` int(11) NOT NULL,
  `ship_current_load` int(11) NOT NULL,
  `id_char` int(11) NOT NULL,
  PRIMARY KEY (`id_ship`),
  UNIQUE KEY `ship_name` (`ship_name`),
  KEY `id_class` (`id_class`),
  KEY `id_char` (`id_char`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ships`
--
ALTER TABLE `ships`
  ADD CONSTRAINT `ship_id_char` FOREIGN KEY (`id_char`) REFERENCES `chars` (`id_char`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ship_id_class` FOREIGN KEY (`id_class`) REFERENCES `ship_classes` (`id_class`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
