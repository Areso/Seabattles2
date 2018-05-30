CREATE TABLE IF NOT EXISTS `skills_ref` (
  `id_skill` int(11) NOT NULL,
  `id_skill_required` int(11) DEFAULT NULL,
  `descr` varchar(500) NOT NULL,
  PRIMARY KEY (`id_skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills_ref`
--

INSERT INTO `skills_ref` (`id_skill`, `id_skill_required`, `descr`) VALUES
(1, NULL, 'Wood gathering. Each skilllevel adds 1% to effectiviness of wood gathering'),
(2, 1, 'Wood carving. Each skilllevel adds 1% to effectiviness of wood carving. Requires learned Wood Gathering'),
(3, NULL, 'Precisious cannon shot. Adds 1% per each skilllevel for precision'),
(4, NULL, 'Boarding skill. Adds 1% per each skilllevel for boarding'),
(5, 4, 'Boarding adv skill. Adds 2% per each skilllevel for boarding attack'),
(6, 4, 'Boarding def skill. Adds 2% per each skilllevel for boarding def'),
(7, NULL, 'Crew management. Each skilllevel grants ability to command 10 mates, 2 under-officers and 1 officer'),
(8, NULL, 'Haggling skill allows you get 1% discount with any NPC and 1% premium when you get paid contracts with any NPC for each skilllevel');
