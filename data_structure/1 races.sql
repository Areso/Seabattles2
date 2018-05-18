CREATE TABLE IF NOT EXISTS `races` (
  `id_race` int(11) NOT NULL,
  `race_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id_race`),
  UNIQUE KEY `race_name` (`race_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `races` (`id_race`, `race_name`) VALUES
(4, 'dwarves'),
(3, 'elves'),
(1, 'humans'),
(2, 'orcs');
