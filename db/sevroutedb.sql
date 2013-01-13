-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Янв 13 2013 г., 23:02
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `sevroutedb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sevroute_admin`
--

DROP TABLE IF EXISTS `sevroute_admin`;
CREATE TABLE IF NOT EXISTS `sevroute_admin` (
  `admin_code` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(200) NOT NULL DEFAULT '',
  `admin_login` varchar(200) NOT NULL DEFAULT '',
  `admin_pass` varchar(200) NOT NULL DEFAULT '',
  `admin_email` varchar(200) NOT NULL DEFAULT '',
  `admin_active` tinyint(4) NOT NULL DEFAULT '1',
  `admin_radmin` tinyint(4) DEFAULT '0' COMMENT 'права на раздел "Управление доступом"',
  `admin_rtext` tinyint(4) DEFAULT '0' COMMENT 'права на редактирвание "текстовые страницы"',
  `admin_rnews` tinyint(4) DEFAULT '0' COMMENT 'права на раздел "Новости"',
  `admin_rpartner` tinyint(4) DEFAULT '0' COMMENT 'права на раздел "Партнеры"',
  PRIMARY KEY (`admin_code`),
  UNIQUE KEY `admin_login` (`admin_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `sevroute_admin`
--

INSERT INTO `sevroute_admin` (`admin_code`, `admin_name`, `admin_login`, `admin_pass`, `admin_email`, `admin_active`, `admin_radmin`, `admin_rtext`, `admin_rnews`, `admin_rpartner`) VALUES
(1, 'George Sergeev', 'george', 'b633e58ff7d328a069f54451d1685e0a', 'pu88@mail.ru', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sevroute_news`
--

DROP TABLE IF EXISTS `sevroute_news`;
CREATE TABLE IF NOT EXISTS `sevroute_news` (
  `news_code` int(11) NOT NULL AUTO_INCREMENT,
  `news_date` date NOT NULL,
  `news_title` varchar(200) DEFAULT '',
  `static_code` int(11) NOT NULL,
  `news_active` tinyint(4) NOT NULL DEFAULT '1',  
  PRIMARY KEY (`news_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sevroute_partner`
--

DROP TABLE IF EXISTS `sevroute_partner`;
CREATE TABLE IF NOT EXISTS `sevroute_partner` (
  `partner_code` int(11) NOT NULL AUTO_INCREMENT,
  `partner_pos` int(11) NOT NULL DEFAULT '0',
  `static_code` int(11) NOT NULL DEFAULT '0',
  `partner_url` varchar(255) CHARACTER SET cp1251 DEFAULT NULL,
  PRIMARY KEY (`partner_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sevroute_picture`
--

DROP TABLE IF EXISTS `sevroute_picture`;
CREATE TABLE IF NOT EXISTS `sevroute_picture` (
  `picture_code` int(11) NOT NULL AUTO_INCREMENT,
  `page_code` int(11) NOT NULL DEFAULT '0',
  `picsmall` varchar(200) DEFAULT NULL,
  `picbig` varchar(200) DEFAULT NULL,
  `picpos` int(11) NOT NULL DEFAULT '0',
  `piccomment` text,
  PRIMARY KEY (`picture_code`),
  UNIQUE KEY `picture_code` (`picture_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sevroute_route`
--

DROP TABLE IF EXISTS `sevroute_route`;
CREATE TABLE IF NOT EXISTS `sevroute_route` (
  `route_code` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `route_name` varchar(128) NOT NULL,
  `route_url` varchar(128) DEFAULT NULL,
  `route_season` varchar(10) NOT NULL,
  `static_code` int(11) NOT NULL,
  `route_active` tinyint(4) NOT NULL DEFAULT '1',    PRIMARY KEY (`route_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sevroute_static`
--

DROP TABLE IF EXISTS `sevroute_static`;
CREATE TABLE IF NOT EXISTS `sevroute_static` (
  `static_code` int(11) NOT NULL AUTO_INCREMENT,
  `static_name` varchar(200) NOT NULL DEFAULT '',
  `static_text` text NOT NULL,
  `static_pos` int(11) NOT NULL DEFAULT '0',
  `static_seo_title` text,
  `static_seo_desc` text,
  `static_seo_key` text,
  `static_abstract` text,
  `static_url` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`static_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
