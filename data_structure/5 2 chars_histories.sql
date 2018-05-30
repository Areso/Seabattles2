-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 30, 2018 at 11:04 PM
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
-- Table structure for table `chars_histories`
--

CREATE TABLE IF NOT EXISTS `chars_histories` (
  `id_history` int(11) NOT NULL,
  `id_race` int(11) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `playable` tinyint(1) NOT NULL,
  `base_stats` varchar(100) NOT NULL,
  `descr` varchar(500) NOT NULL,
  PRIMARY KEY (`id_history`),
  KEY `id_race` (`id_race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chars_histories`
--

INSERT INTO `chars_histories` (`id_history`, `id_race`, `gender`, `playable`, `base_stats`, `descr`) VALUES
(1, 1, 1, 1, '1', 'He has finished his service in royal navy after a conflict with superior officer. But still he has advanced military skills, friends in navy, and decommissioned training ship, equipped with military equipment. Good relations with all races, but orcs (bad)'),
(2, 1, 1, 1, '2', 'Father dropped him as service boy to old merchant. Years passed, he has now a little trade ship, haggling skills, and round account in a bank. Neutral relations will all races, but humans (good)'),
(3, 1, 1, 1, '3', 'Orphaned at 5 years. Street became his home. At ten years he entered the service as cabin boy at famous smuggler the Great Fox. Been caught, imprisoned. After Royal parole has bad relationship with all races, but humans (good)'),
(4, 1, 2, 1, '1', 'Has finished her service in royal navy after a conflict with superior officer. But still she has advanced military skills, friends in navy, and decomissioned training ship, equipped with military equipment. Good relations with all races, but orcs (bad)'),
(5, 1, 2, 1, '2', 'Father dropped she as service girl to old merchant. Years passed, she has now a little trade ship, haggling skills, and round account in a bank. Neutral relations will all races, but humans (good)'),
(6, 1, 2, 1, '3', 'Orphaned at 5 years. Street became her home. At ten years she entered the service as cabin boy in boy''s dress at famous smuggler the Great Fox. Been caught, imprisoned. After Royal parole has bad relationship with all races, but humans (good)'),
(7, 2, 1, 1, '1', 'Has finished his service as warchief in Great Orc''s Fleet after a conflict with Brigand Warchief. But still he has advanced military skills, friends in Fleet, and decomissioned training ship, equipped with military equipment. Neutral relations with all races, but humans.'),
(8, 2, 1, 1, '2', 'In the year of great drought Father dropped him as service boy to old merchant. Years passed, he has now a little trade ship with a lot goodies to exchange and haggling skills. Neutral relations to all races, but orcs (good)'),
(9, 2, 1, 1, '3', 'Orphaned at 5 years. Street became his home. At ten years he entered the service as cabin boy at famous smuggler Swift Orc. Been caught, caged. After an old Tribal Chief died, the new Tribal Chief release all caged orcs. Relations with all races are bad, but orcs (good)'),
(10, 2, 2, 1, '1', 'Has finished her service as warchief in Great Orc''s Fleet after a conflict with Brigand Warchief. But still she has advanced military skills, friends in Fleet, and decomissioned training ship, equipped with military equipment. Neutral relations with all races, but humans.'),
(11, 2, 2, 1, '2', 'In the year of great drought Father dropped her as service girl to old merchant. Years passed, she has now a little trade ship with a lot goodies to exchange and haggling skills. Neutral relations to all races, but orcs (good)'),
(12, 2, 2, 1, '3', 'Orphaned at 5 years. Street became her home. At ten years she entered the service as cabin girl at famous smuggler Swift Orc. Been caught, caged. After an old Tribal Chief died, the new Tribal Chief release all caged orcs. Relations with all races are bad, but orcs (good)'),
(13, 3, 1, 1, '1', 'He has finished his service in Green Leaf Navy after a conflict with superior officer. But still he has advanced military skills, friends in navy, and decommissioned training ship, equipped with military equipment. Good relations with all races, but orcs (neutral)'),
(14, 3, 1, 1, '2', 'Father placed him as service boy to old merchant. Years passed, he has now a little trade ship, haggling skills, and round account in a bank. Neutral relations will all races, but elves (good)'),
(15, 3, 1, 1, '3', 'Orphaned at 5 years. Left shelter at ten years and entered the service as cabin boy at famous smuggler Robin the Half-Elf. Been caught, imprisoned. After Royal parole has bad relationship with all races, but elves'),
(16, 3, 2, 1, '1', 'She has finished her service in Green Leaf Navy after a conflict with superior officer. But still she has advanced military skills, friends in navy, and decommissioned training ship, equipped with military equipment. Good relations with all races, but orcs (neutral)'),
(17, 3, 2, 1, '2', 'Father placed her as service girl to old merchant. Years passed, she has now a little trade ship, haggling skills, and round account in a bank. Neutral relations will all races, but elves (good)'),
(18, 3, 2, 1, '3', 'Orphaned at 5 years. Left shelter at ten years and entered the service as cabin girl at famous smuggler Robin the Half-Elf. Been caught, imprisoned. After Royal parole has bad relationship with all races, but elves'),
(19, 4, 1, 1, '1', 'He has finished his service in Iron Fleet after a conflict with superior officer. But still he has advanced military skills, friends in navy, and decommissioned training ship, equipped with military equipment. Good relations with all races, but orcs (neutral)'),
(20, 4, 1, 1, '2', 'Father dropped him as service boy to old merchant. Years passed, he has now a little trade ship, haggling skills, and round account in a bank. Neutral relations will all races, but dwarves (good)'),
(21, 4, 1, 1, '3', 'Orphaned at 5 years. All settlement was slaughtered. Street became his home. At ten years he entered the service as cabin boy at famous smuggler the Thorin Firebeard. Been caught, imprisoned. After Royal parole has bad relationship with all races, but dwarves (good)'),
(22, 4, 2, 1, '1', 'She has finished his service in Iron Fleet after a conflict with superior officer. But still she has advanced military skills, friends in navy, and decommissioned training ship, equipped with military equipment. Good relations with all races, but orcs (neutral)'),
(23, 4, 2, 1, '2', 'Father dropped she as service girl to old merchant. Years passed, she has now a little trade ship, haggling skills, and round account in a bank. Neutral relations will all races, but dwarves (good)'),
(24, 4, 2, 1, '3', 'Orphaned at 5 years. All settlement was slaughtered. Street became his home. At ten years she entered the service as cabin boy at famous smuggler the Thorin Firebeard. Been caught, imprisoned. After Royal parole has bad relationship with all races, but dwarves (good)');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chars_histories`
--
ALTER TABLE `chars_histories`
  ADD CONSTRAINT `char_history_race_id` FOREIGN KEY (`id_race`) REFERENCES `races` (`id_race`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
