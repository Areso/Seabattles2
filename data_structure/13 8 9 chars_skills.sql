-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 01, 2018 at 09:35 PM
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
-- Table structure for table `chars_skills`
--

CREATE TABLE IF NOT EXISTS `chars_skills` (
  `id_chars_skills` int(11) NOT NULL,
  `id_char` int(11) NOT NULL,
  `id_skill` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id_chars_skills`),
  UNIQUE KEY `id_char` (`id_char`),
  KEY `id_skill` (`id_skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chars_skills`
--
ALTER TABLE `chars_skills`
  ADD CONSTRAINT `chars_skills_id_skill` FOREIGN KEY (`id_skill`) REFERENCES `skills_ref` (`id_skill`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chars_skills_id_char` FOREIGN KEY (`id_char`) REFERENCES `chars` (`id_char`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
