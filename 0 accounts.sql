CREATE TABLE IF NOT EXISTS `accounts` (
  `id_account` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `passwordh` varchar(100) NOT NULL,
  PRIMARY KEY (`id_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
