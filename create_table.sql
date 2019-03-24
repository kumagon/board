create user 'board'@localhost identified by 'boardpw';
grant all on *.* to 'board'@localhost identified by 'boardpw';

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` DATETIME NOT NULL,
  `modified` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_mail` (`mail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ユーザーテーブル';

CREATE TABLE `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created` DATETIME NOT NULL,
  `modified` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='掲示板テーブル';

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `boardId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='コメントテーブル';


