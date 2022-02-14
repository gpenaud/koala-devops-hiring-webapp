
CREATE TABLE IF NOT EXISTS `articles` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `date` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

INSERT INTO `articles` (`title`, `content`, `date`) VALUES ('Hello World', 'This is the first article', '2016-01-01 00:00:00'), ('Second Article', 'This is the second article', '2016-01-02 00:00:00'), ('Third Article', 'This is the third article', '2016-01-03 00:00:00');