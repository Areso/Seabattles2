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
  KEY `id_account` (`id_account`,`id_race`,`id_portrait`,`id_history`,`id_guild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
