CREATE TABLE IF NOT EXISTS `accounts` (
  `id_account` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `passwordh` varchar(100) NOT NULL,
  PRIMARY KEY (`id_account`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4;

INSERT INTO `accounts` (`id_account`, `email`, `passwordh`) VALUES
(1, 'noreply@gmail.com', 'asdasdasdfasdqweasdwqe'),
(2, 'returnstrike@ya.ru', 'fd8e1b2ec2f403c60d5085b62722b704'),
(3, 'returnstrike123@yandex.ru', '202cb962ac59075b964b07152d234b70');

