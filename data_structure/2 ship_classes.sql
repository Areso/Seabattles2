CREATE TABLE IF NOT EXISTS `ship_classes` (
  `id_class` int(11) NOT NULL,
  `ship_class_name` varchar(100) NOT NULL,
  `ship_max_health` int(11) NOT NULL,
  `ship_max_speed` int(11) NOT NULL,
  `ship_max_load` int(11) NOT NULL,
  PRIMARY KEY (`id_class`),
  UNIQUE KEY `ship_class_name` (`ship_class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `ship_classes` (`id_class`, `ship_class_name`, `ship_max_health`, `ship_max_speed`, `ship_max_load`) VALUES
(1101, 'humans brave rat', 7, 10, 7),
(1201, 'humans fat hamster', 10, 5, 10),
(1301, 'humans fidgeting chipmunk', 6, 12, 6),
(2101, 'orcs brave rat', 7, 10, 7),
(2201, 'orcs fat hamster', 10, 5, 10),
(2301, 'orcs fidgeting chipmunk', 6, 12, 6),
(3101, 'elves brave rat', 7, 10, 7),
(3201, 'elves fat hamster', 10, 5, 10),
(3301, 'elves fidgeting chipmunk', 6, 12, 6),
(4101, 'dwarves brave rat', 7, 10, 7),
(4201, 'dwarves fat hamster', 10, 5, 10),
(4301, 'dwarves fidgeting chipmunk', 6, 12, 6);

