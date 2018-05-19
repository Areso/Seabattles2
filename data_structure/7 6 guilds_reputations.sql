CREATE TABLE IF NOT EXISTS `guilds_reputations` (
  `id_guild_rep` int(11) NOT NULL,
  `id_guild` int(11) NOT NULL,
  `race1` int(11) NOT NULL,
  `race2` int(11) NOT NULL,
  `race3` int(11) NOT NULL,
  `race4` int(11) NOT NULL,
  PRIMARY KEY (`id_guild_rep`),
  KEY `id_guild` (`id_guild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `guilds_reputations`
  ADD CONSTRAINT `guild_rep_guild_id` FOREIGN KEY (`id_guild`) REFERENCES `guilds` (`id_guild`) ON DELETE CASCADE ON UPDATE CASCADE;
