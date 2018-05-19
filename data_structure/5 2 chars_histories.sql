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


INSERT INTO `chars_histories` (`id_history`, `id_race`, `gender`, `playable`, `base_stats`, `descr`) VALUES
(1, 1, 1, 1, '1', ' has finished his service in royal navy after a conflict with superior officer. But still he has advanced military skills, friends in navy, and decomissioned training ship, equipped with military equipment. Neutral relations with all races, but orcs.'),
(2, 1, 1, 1, '2', '. Father dropped him as service boy to old merchant. Years passed, he has now a little trade ship, haggling skills, and round account in a bank. Good relations with all races but orcs'),
(3, 1, 1, 1, '1', '. Orphaned at 5 years. Street became his home. At ten years he entered the service as cabin boy at famous smuggler the Great Fox');


ALTER TABLE `chars_histories`
  ADD CONSTRAINT `char_history_race_id` FOREIGN KEY (`id_race`) REFERENCES `races` (`id_race`) ON DELETE CASCADE ON UPDATE CASCADE;
