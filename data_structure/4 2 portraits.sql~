CREATE TABLE IF NOT EXISTS `portraits` (
  `id_portrait` int(11) NOT NULL,
  `id_race` int(11) NOT NULL,
  `playable` tinyint(1) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_portrait`),
  KEY `race_id` (`id_race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `portraits` (`id_portrait`, `id_race`, `playable`, `gender`) VALUES
(1001, 1, 1, 1),
(2001, 1, 1, 1),
(3001, 1, 1, 1),
(4001, 1, 1, 1);

ALTER TABLE `portraits`
  ADD CONSTRAINT `portrait_race_id` FOREIGN KEY (`id_race`) REFERENCES `races` (`id_race`) ON DELETE CASCADE ON UPDATE CASCADE;
