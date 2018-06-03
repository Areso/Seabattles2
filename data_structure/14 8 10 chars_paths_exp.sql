-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 01, 2018 at 10:39 PM
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
-- Table structure for table `chars_paths_exp`
--

CREATE TABLE IF NOT EXISTS `chars_paths_exp` (
  `id_chars_paths_exp` int(11) NOT NULL,
  `id_char` int(11) NOT NULL,
  `id_path` int(11) NOT NULL,
  `path_exp` int(11) NOT NULL,
  PRIMARY KEY (`id_chars_paths_exp`),
  KEY `id_char` (`id_char`),
  KEY `id_path` (`id_path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chars_paths_exp`
--
ALTER TABLE `chars_paths_exp`
  ADD CONSTRAINT `chars_paths_exp_id_path` FOREIGN KEY (`id_path`) REFERENCES `skills_paths_ref` (`id_path`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chars_paths_exp_id_char` FOREIGN KEY (`id_char`) REFERENCES `chars` (`id_char`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
