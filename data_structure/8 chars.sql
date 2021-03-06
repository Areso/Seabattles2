-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 31, 2018 at 11:28 PM
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
-- Table structure for table `chars`
--

CREATE TABLE IF NOT EXISTS `chars` (
  `id_char` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `id_race` int(11) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `id_portrait` int(11) NOT NULL,
  `id_history` int(11) NOT NULL,
  `id_guild` int(11) DEFAULT NULL,
  `char_name` varchar(50) NOT NULL,
  `coordx` int(11) NOT NULL,
  `coordy` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `playable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_char`),
  UNIQUE KEY `char_name` (`char_name`),
  KEY `id_account` (`id_account`,`id_race`,`id_portrait`,`id_history`,`id_guild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
