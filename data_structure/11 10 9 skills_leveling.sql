-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 31, 2018 at 11:10 PM
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
-- Table structure for table `skills_leveling`
--

CREATE TABLE IF NOT EXISTS `skills_leveling` (
  `id_levelling` int(11) NOT NULL,
  `id_skill` int(11) NOT NULL,
  `skill_level` int(11) NOT NULL,
  `req_path_id` int(11) NOT NULL,
  `req_path_exp` int(11) NOT NULL,
  `req_char_level` int(11) NOT NULL,
  PRIMARY KEY (`id_levelling`),
  KEY `id_skill` (`id_skill`),
  KEY `req_path_id` (`req_path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `skills_leveling`
--
ALTER TABLE `skills_leveling`
  ADD CONSTRAINT `leveling_path+id` FOREIGN KEY (`req_path_id`) REFERENCES `skills_paths_ref` (`id_path`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `leveling_skill_id` FOREIGN KEY (`id_skill`) REFERENCES `skills_ref` (`id_skill`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
