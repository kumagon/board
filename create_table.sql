// mysqlにrootユーザーでログインします
// mysql -uroot

// ユーザーを作成する
create user 'board'@localhost identified by 'boardpw';
grant all on *.* to 'board'@localhost identified by 'boardpw';

// 作成したらログアウトしてからboardユーザーでログインしましょう
// ログアウト
// quit

// ログイン
// mysql -uboard -pboardpw


// データベースを作成する
CREATE DATABASE board;


//テーブルを作成する
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` DATETIME NOT NULL,
  `modified` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_mail` (`mail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='user';

CREATE TABLE `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created` DATETIME NOT NULL,
  `modified` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='board';

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `boardId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='comment';


