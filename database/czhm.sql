-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2021-06-01 16:09:36
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `czhm`
--

-- --------------------------------------------------------

--
-- 表的结构 `cz_admin`
--

DROP TABLE IF EXISTS `cz_admin`;
CREATE TABLE IF NOT EXISTS `cz_admin` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录IP',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员表';

--
-- 转存表中的数据 `cz_admin`
--

INSERT INTO `cz_admin` (`id`, `username`, `nickname`, `password`, `salt`, `avatar`, `email`, `loginfailure`, `logintime`, `loginip`, `createtime`, `updatetime`, `token`, `status`) VALUES
(1, 'admin', 'Admin', '6951d4c158d74a86616c70ebfa84481a', 'b53459', '/assets/img/avatar.png', 'admin@admin.com', 0, 1622555229, '127.0.0.1', 1491635035, 1622555229, '6d2ca48c-0041-4f15-b25c-4fb4ae6cab33', 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_admin_log`
--

DROP TABLE IF EXISTS `cz_admin_log`;
CREATE TABLE IF NOT EXISTS `cz_admin_log` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '日志标题',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员日志表';

--
-- 转存表中的数据 `cz_admin_log`
--

INSERT INTO `cz_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(1, 1, 'admin', '/SOKaDshwIE.php/index/login?url=%2FSOKaDshwIE.php', '登录', '{\"url\":\"\\/SOKaDshwIE.php\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"FWDF\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621845648),
(2, 1, 'admin', '/SOKaDshwIE.php/addon/install', '插件管理', '{\"name\":\"cms\",\"force\":\"0\",\"uid\":\"7022\",\"token\":\"***\",\"version\":\"1.4.2\",\"faversion\":\"1.2.0.20210401_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621845824),
(3, 1, 'admin', '/SOKaDshwIE.php/addon/install', '插件管理', '{\"name\":\"alisms\",\"force\":\"0\",\"uid\":\"7022\",\"token\":\"***\",\"version\":\"1.0.9\",\"faversion\":\"1.2.0.20210401_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621846162),
(4, 1, 'admin', '/SOKaDshwIE.php/addon/install', '插件管理', '{\"name\":\"captchaconfig\",\"force\":\"0\",\"uid\":\"7022\",\"token\":\"***\",\"version\":\"1.0.2\",\"faversion\":\"1.2.0.20210401_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621846364),
(5, 1, 'admin', '/SOKaDshwIE.php/addon/config?name=captchaconfig&dialog=1', '插件管理 / 配置', '{\"name\":\"captchaconfig\",\"dialog\":\"1\",\"row\":{\"captcha_charset\":\"2345678abcdefhijkmnpqrstuvwxyzABCDEFGHJKLMNPQRTUVWXY\",\"captcha_fontsize\":\"24\",\"captcha_is_mixed\":\"0\",\"captcha_is_cn\":\"0\",\"captcha_height\":\"80\",\"captcha_width\":\"240\",\"captcha_size\":\"6\",\"captcha_is_reset\":\"1\",\"captcha_area\":\"backend\",\"captcha_is_close\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621846445),
(6, 1, 'admin', '/SOKaDshwIE.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"3T43XR\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621846481),
(7, 1, 'admin', '/SOKaDshwIE.php/addon/install', '插件管理', '{\"name\":\"geetest\",\"force\":\"0\",\"uid\":\"7022\",\"token\":\"***\",\"version\":\"1.0.0\",\"faversion\":\"1.2.0.20210401_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621846603),
(8, 1, 'admin', '/SOKaDshwIE.php/addon/config?name=geetest&dialog=1', '插件管理 / 配置', '{\"name\":\"geetest\",\"dialog\":\"1\",\"row\":{\"appid\":\"48a6ebac4ebc6642d68c217fca33eb4d\",\"appkey\":\"4f1c085290bec5afdc54df73535fc361\",\"product\":\"embed\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621846624),
(9, 1, 'admin', '/SOKaDshwIE.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ok\",\"geetest_challenge\":\"67ab8a8478a739b6aa5a2c8a87524745l1\",\"geetest_validate\":\"59c8d6ec9ee3e62c6ffb3334c70d9fac\",\"geetest_seccode\":\"59c8d6ec9ee3e62c6ffb3334c70d9fac|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621846648),
(10, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel_news.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848225),
(11, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"list_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"list_news.html\",\"searchField\":[\"name\"],\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848225),
(12, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show_news.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848225),
(13, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848766),
(14, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"list.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"list.html\",\"searchField\":[\"name\"],\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848766),
(15, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848766),
(16, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"g\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848771),
(17, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"go\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848772),
(18, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"gongs\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848772),
(19, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"gongs\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848773),
(20, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"公司\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848776),
(21, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"公司\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848778),
(22, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"公司\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848778),
(23, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"公司介绍\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848779),
(24, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"\",\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848791),
(25, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"channel——.html\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"channel——.html\",\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848795),
(26, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"\",\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848796),
(27, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"channel_.html\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"channel_.html\",\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848798),
(28, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"channel_jieshao.html\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"channel_jieshao.html\",\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848798),
(29, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"\",\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848804),
(30, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"list_.html\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"list_.html\",\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848808),
(31, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"list_jieshao.html\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"list_jieshao.html\",\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848808),
(32, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"\",\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848810),
(33, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"show_.html\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"show_.html\",\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848812),
(34, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"show_jieshao.html\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"show_jieshao.html\",\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848813),
(35, 1, 'admin', '/admin/cms/modelx/add?dialog=1', 'CMS管理 / 模型管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"公司介绍\",\"table\":\"cms_addongongsijieshao\",\"channeltpl\":\"channel.html\",\"listtpl\":\"list.html\",\"showtpl\":\"show.html\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848813),
(36, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel_news.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848828),
(37, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"list_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"list_news.html\",\"searchField\":[\"name\"],\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848828),
(38, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show_news.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848828),
(39, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"channel_jieshao.html\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"channel_jieshao.html\",\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848893),
(40, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"list_jieshao.html\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"list_jieshao.html\",\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848920),
(41, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"show_jieshao.html\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"show_jieshao.html\",\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848939),
(42, 1, 'admin', '/admin/cms/modelx/add?dialog=1', 'CMS管理 / 模型管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"公司介绍\",\"table\":\"cms_addongongsijieshao\",\"channeltpl\":\"channel.html\",\"listtpl\":\"list.html\",\"showtpl\":\"show.html\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848953),
(43, 1, 'admin', '/admin/cms/modelx/add?dialog=1', 'CMS管理 / 模型管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"公司介绍\",\"table\":\"cms_addongongsijieshao\",\"channeltpl\":\"channel.html\",\"listtpl\":\"list.html\",\"showtpl\":\"show.html\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848959),
(44, 1, 'admin', '/admin/cms/modelx/add?dialog=1', 'CMS管理 / 模型管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"公司介绍\",\"table\":\"cms_addongongsijieshao\",\"channeltpl\":\"channel.html\",\"listtpl\":\"list.html\",\"showtpl\":\"show.html\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848963),
(45, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"公司介绍SQLSTATE[22001]: String data, right truncated: 1406 Data too long for column \'table\' at row 1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848968),
(46, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"公司介绍\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848968),
(47, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"公司介绍\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621848969),
(48, 1, 'admin', '/admin/cms/modelx/add?dialog=1', 'CMS管理 / 模型管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"公司介绍\",\"table\":\"cms_addongongsijieshao\",\"channeltpl\":\"channel.html\",\"listtpl\":\"list.html\",\"showtpl\":\"show.html\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621849002),
(49, 1, 'admin', '/admin/cms/modelx/add?dialog=1', 'CMS管理 / 模型管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"公司介绍\",\"table\":\"cms_addongongsijieshao\",\"channeltpl\":\"channel.html\",\"listtpl\":\"list.html\",\"showtpl\":\"show.html\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621849008),
(50, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel_product.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel_product.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621849024),
(51, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"list_product.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"list_product.html\",\"searchField\":[\"name\"],\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621849024),
(52, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show_product.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show_product.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621849024),
(53, 1, 'admin', '/admin/cms/modelx/add?dialog=1', 'CMS管理 / 模型管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"公司介绍\",\"table\":\"cms_addonjieshao\",\"channeltpl\":\"channel.html\",\"listtpl\":\"list.html\",\"showtpl\":\"show.html\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621849051),
(54, 0, 'Unknown', '/admin/index/login?url=%2Fadmin', '登录', '{\"url\":\"\\/admin\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ok\",\"geetest_challenge\":\"6c8ab1f549c5c14bae481ec0539ade85cm\",\"geetest_validate\":\"b8563298d84006df547b5a57601b58cb\",\"geetest_seccode\":\"b8563298d84006df547b5a57601b58cb|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621991926),
(55, 1, 'admin', '/admin/index/login?url=%2Fadmin', '登录', '{\"url\":\"\\/admin\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ok\",\"geetest_challenge\":\"91621ae0e24b995c2ea5b2d19aec61558i\",\"geetest_validate\":\"d1db63272ded0a2bb5961f284dcde394\",\"geetest_seccode\":\"d1db63272ded0a2bb5961f284dcde394|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621991938),
(56, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621993190),
(57, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621993190),
(58, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621993600),
(59, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"list.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"list.html\",\"searchField\":[\"name\"],\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621993600),
(60, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621993600),
(61, 1, 'admin', '/admin/index/login?url=%2Fadmin%2Fcms%2Fchannel%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/admin\\/cms\\/channel?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ok\",\"geetest_challenge\":\"77cc33147963a45e3c17ea76e03dbdd261\",\"geetest_validate\":\"1fd76fd62add76d36ec045261337f1ef\",\"geetest_seccode\":\"1fd76fd62add76d36ec045261337f1ef|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622016310),
(62, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622016319),
(63, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"list_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"list_news.html\",\"searchField\":[\"name\"],\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622016319),
(64, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show_news.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622016319),
(65, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel_product.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel_product.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622016481),
(66, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"list_product.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"list_product.html\",\"searchField\":[\"name\"],\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622016481),
(67, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show_product.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show_product.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622016481),
(68, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel_news.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622016789),
(69, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"list_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"list_news.html\",\"searchField\":[\"name\"],\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622016789),
(70, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show_news.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622016789),
(71, 1, 'admin', '/admin/index/login?url=%2Fadmin%2Fcms%2Fchannel%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/admin\\/cms\\/channel?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ok\",\"geetest_challenge\":\"8c877f73b9ef4b4ec979408d2c224fb3g6\",\"geetest_validate\":\"1d81f2dbfe06725fa6511cb511be42c5\",\"geetest_seccode\":\"1d81f2dbfe06725fa6511cb511be42c5|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622022135),
(72, 1, 'admin', '/admin/index/login?url=%2Fadmin%2Faddon%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/admin\\/addon?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ok\",\"geetest_challenge\":\"919a084c5223de4155c8bd55ca4d69d56s\",\"geetest_validate\":\"5bfa3e56d5ada101308ba4ff0d130bfb\",\"geetest_seccode\":\"5bfa3e56d5ada101308ba4ff0d130bfb|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622290319),
(73, 1, 'admin', '/admin/cms/page/selectpage_type', 'CMS管理 / 单页管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"type\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"type\",\"keyField\":\"type\",\"searchField\":[\"type\"],\"type\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291748),
(74, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"gu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291755),
(75, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"guan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291755),
(76, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"guanyu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291756),
(77, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"\",\"type\":\"page\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291775),
(78, 1, 'admin', '/admin/cms/page/check_element_available', 'CMS管理 / 单页管理', '{\"id\":\"\",\"name\":\"row[diyname]\",\"value\":\"guanyu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291780),
(79, 1, 'admin', '/admin/cms/page/add?dialog=1', 'CMS管理 / 单页管理 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"type\":\"page\",\"title\":\"guanyu\",\"image\":\"\",\"content\":\"\",\"seotitle\":\"\",\"keywords\":\"\",\"description\":\"\",\"diyname\":\"guanyu\",\"showtpl\":\"page_about.html\",\"weigh\":\"0\",\"iscomment\":\"10\",\"parsetpl\":\"0\",\"status\":\"normal\",\"flag\":[\"\"]}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291780),
(80, 1, 'admin', '/admin/cms/page/selectpage_type', 'CMS管理 / 单页管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"type\",\"searchValue\":\"page\",\"orderBy\":[[\"type\",\"ASC\"]],\"showField\":\"type\",\"keyField\":\"type\",\"keyValue\":\"page\",\"searchField\":[\"type\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291786),
(81, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"page_about.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"page_about.html\",\"searchField\":[\"name\"],\"type\":\"page\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291786),
(82, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"guan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291790),
(83, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"guanyu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291791),
(84, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"guanyu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291793),
(85, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"guan\'y\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291797),
(86, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"guanyu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291798),
(87, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"gua\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291800),
(88, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"gu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291800),
(89, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"g\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291800),
(90, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"g\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291801),
(91, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"g\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291802),
(92, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"g\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291803),
(93, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"gu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291804),
(94, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"gua\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291805),
(95, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"guan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291805),
(96, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"guan\'yu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291805),
(97, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"关于\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291806),
(98, 1, 'admin', '/admin/cms/page/check_element_available', 'CMS管理 / 单页管理', '{\"id\":\"3\",\"name\":\"row[diyname]\",\"value\":\"guanyu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291828),
(99, 1, 'admin', '/admin/cms/page/edit/ids/3?dialog=1', 'CMS管理 / 单页管理 / 修改', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"type\":\"page\",\"title\":\"关于\",\"image\":\"\",\"content\":\"关于cz\",\"seotitle\":\"\",\"keywords\":\"\",\"description\":\"\",\"diyname\":\"guanyu\",\"showtpl\":\"page_about.html\",\"views\":\"0\",\"comments\":\"0\",\"weigh\":\"3\",\"iscomment\":\"10\",\"parsetpl\":\"0\",\"status\":\"normal\",\"flag\":[\"\"]},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622291829),
(100, 1, 'admin', '/admin/index/login?url=%2Fadmin', '登录', '{\"url\":\"\\/admin\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ok\",\"geetest_challenge\":\"b64ec468330dc7da3ab6dafd517375b29x\",\"geetest_validate\":\"5baa46d6ccc920c35ffd0a486b78f138\",\"geetest_seccode\":\"5baa46d6ccc920c35ffd0a486b78f138|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555230),
(101, 1, 'admin', '/admin/cms/page/selectpage_type', 'CMS管理 / 单页管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"type\",\"searchValue\":\"page\",\"orderBy\":[[\"type\",\"ASC\"]],\"showField\":\"type\",\"keyField\":\"type\",\"keyValue\":\"page\",\"searchField\":[\"type\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555248),
(102, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"page_about.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"page_about.html\",\"searchField\":[\"name\"],\"type\":\"page\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555248),
(103, 1, 'admin', '/admin/cms/page/selectpage_type', 'CMS管理 / 单页管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"type\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"type\",\"keyField\":\"type\",\"searchField\":[\"type\"],\"type\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555264),
(104, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"l\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555269),
(105, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"lia\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555270),
(106, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"lian\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555270),
(107, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"lianxi\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555270),
(108, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"lianxiwo\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555272),
(109, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"lianxiwome\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555272),
(110, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"lianxiwome\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555273),
(111, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"lian\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555275),
(112, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"lian\'xi\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555276),
(113, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"联系\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555276),
(114, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"联系wo\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555277),
(115, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"联系wo\'men\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555277),
(116, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"联系我们\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555278),
(117, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"\",\"type\":\"page\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555281),
(118, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"\",\"type\":\"page\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555483),
(119, 1, 'admin', '/admin/cms/page/check_element_available', 'CMS管理 / 单页管理', '{\"id\":\"\",\"name\":\"row[diyname]\",\"value\":\"lianxiwomen\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555492),
(120, 1, 'admin', '/admin/cms/page/add?dialog=1', 'CMS管理 / 单页管理 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"type\":\"page\",\"title\":\"联系我们\",\"image\":\"\",\"content\":\"\",\"seotitle\":\"\",\"keywords\":\"\",\"description\":\"\",\"diyname\":\"lianxiwomen\",\"showtpl\":\"page_lianxi.html\",\"weigh\":\"0\",\"iscomment\":\"10\",\"parsetpl\":\"0\",\"status\":\"normal\",\"flag\":[\"\"]}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555493),
(121, 1, 'admin', '/admin/addon/config?name=cms&dialog=1', '插件管理 / 配置', '{\"name\":\"cms\",\"dialog\":\"1\",\"row\":{\"system_user_id\":\"0\",\"sitename\":\"我的CMS网站\",\"sitelogo\":\"\\/assets\\/addons\\/cms\\/img\\/logo.png\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"mobileurl\":\"\",\"theme\":\"default\",\"qrcode\":\"\\/assets\\/addons\\/cms\\/img\\/qrcode.png\",\"wxapp\":\"\\/assets\\/addons\\/cms\\/img\\/qrcode.png\",\"donateimage\":\"\\/assets\\/addons\\/cms\\/img\\/qrcode.png\",\"default_archives_img\":\"\\/assets\\/addons\\/cms\\/img\\/noimage.jpg\",\"default_channel_img\":\"\\/assets\\/addons\\/cms\\/img\\/noimage.jpg\",\"default_block_img\":\"\\/assets\\/addons\\/cms\\/img\\/noimage.jpg\",\"default_page_img\":\"\\/assets\\/addons\\/cms\\/img\\/noimage.jpg\",\"default_special_img\":\"\\/assets\\/addons\\/cms\\/img\\/noimage.jpg\",\"downloadtype\":\"{&quot;baidu&quot;:&quot;\\\\u767e\\\\u5ea6\\\\u7f51\\\\u76d8&quot;,&quot;local&quot;:&quot;\\\\u672c\\\\u5730&quot;,&quot;other&quot;:&quot;\\\\u5176\\\\u5b83&quot;}\",\"archivesratio\":\"1:0\",\"score\":\"{&quot;postarchives&quot;:2,&quot;postcomment&quot;:0}\",\"limitscore\":\"{&quot;postarchives&quot;:0,&quot;postcomment&quot;:0}\",\"userpage\":\"1\",\"domain\":\"\",\"rewrite\":\"{&quot;index\\\\\\/index&quot;:&quot;\\\\\\/$&quot;,&quot;tag\\\\\\/index&quot;:&quot;\\\\\\/t\\\\\\/[:diyname]$&quot;,&quot;page\\\\\\/index&quot;:&quot;\\\\\\/p\\\\\\/[:diyname]$&quot;,&quot;search\\\\\\/index&quot;:&quot;\\\\\\/s$&quot;,&quot;diyform\\\\\\/index&quot;:&quot;\\\\\\/d\\\\\\/[:diyname]$&quot;,&quot;diyform\\\\\\/post&quot;:&quot;\\\\\\/d\\\\\\/[:diyname]\\\\\\/post&quot;,&quot;diyform\\\\\\/show&quot;:&quot;\\\\\\/d\\\\\\/[:diyname]\\\\\\/[:id]&quot;,&quot;special\\\\\\/index&quot;:&quot;\\\\\\/special\\\\\\/[:diyname]&quot;,&quot;user\\\\\\/index&quot;:&quot;\\\\\\/u\\\\\\/[:id]&quot;,&quot;channel\\\\\\/index&quot;:&quot;\\\\\\/[:diyname]$&quot;,&quot;archives\\\\\\/index&quot;:&quot;\\\\\\/[:catename]\\\\\\/[:id]$&quot;}\",\"wxappid\":\"\",\"wxappsecret\":\"\",\"ispaylogin\":\"1\",\"paytypelist\":[\"wechat\",\"alipay\",\"balance\"],\"defaultpaytype\":\"balance\",\"isarchivesaudit\":\"1\",\"iscommentaudit\":\"1\",\"iscomment\":\"1\",\"audittype\":\"local\",\"nlptype\":\"local\",\"aip_appid\":\"\",\"aip_apikey\":\"\",\"aip_secretkey\":\"\",\"apikey\":\"\",\"archiveseditmode\":\"dialog\",\"redirecturl\":\"1\",\"auditnotice\":\"none\",\"noticetemplateid\":\"1\",\"channelallocate\":\"1\",\"archivesdatalimit\":\"all\",\"specialdatalimit\":\"all\",\"pagedatalimit\":\"all\",\"diyformdatalimit\":\"all\",\"contactqq\":\"\",\"autolinks\":\"[]\",\"searchtype\":\"local\",\"autopinyin\":\"1\",\"baidupush\":\"0\",\"usersidenav\":[\"myarchives\",\"postarchives\",\"myorder\",\"mycomment\",\"mycollection\"],\"loadmode\":\"paging\",\"pagemode\":\"full\",\"cachelifetime\":\"true\",\"flagtype\":\"{&quot;hot&quot;:&quot;\\\\u70ed\\\\u95e8&quot;,&quot;new&quot;:&quot;\\\\u65b0&quot;,&quot;recommend&quot;:&quot;\\\\u63a8\\\\u8350&quot;,&quot;top&quot;:&quot;\\\\u7f6e\\\\u9876&quot;}\",\"urlsuffix\":\"html\",\"moduleurlsuffix\":\"{&quot;channel&quot;:&quot;html&quot;,&quot;archives&quot;:&quot;html&quot;,&quot;special&quot;:&quot;html&quot;,&quot;page&quot;:&quot;html&quot;,&quot;diyform&quot;:&quot;html&quot;,&quot;tag&quot;:&quot;html&quot;,&quot;user&quot;:&quot;&quot;}\",\"app_id\":\"\",\"app_secret\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622555662),
(122, 1, 'admin', '/admin/cms/page/selectpage_type', 'CMS管理 / 单页管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"type\",\"searchValue\":\"page\",\"orderBy\":[[\"type\",\"ASC\"]],\"showField\":\"type\",\"keyField\":\"type\",\"keyValue\":\"page\",\"searchField\":[\"type\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622558514),
(123, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"page_about.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"page_about.html\",\"searchField\":[\"name\"],\"type\":\"page\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622558514),
(124, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561240),
(125, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"list.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"list.html\",\"searchField\":[\"name\"],\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561240),
(126, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561240);
INSERT INTO `cz_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(127, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"c\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561246),
(128, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"cm\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561247),
(129, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"cms\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561247),
(130, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"cms_\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561248),
(131, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"cms_case\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561250),
(132, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"\",\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561275),
(133, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"\",\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561278),
(134, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"name\",\"searchField\":[\"name\"],\"name\":\"\",\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561280),
(135, 1, 'admin', '/admin/cms/modelx/add?dialog=1', 'CMS管理 / 模型管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"cms_case\",\"table\":\"cms_case\",\"channeltpl\":\"channel_case.html\",\"listtpl\":\"list_case.html\",\"showtpl\":\"show_case.html\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561288),
(136, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel_news.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561305),
(137, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"list_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"list_news.html\",\"searchField\":[\"name\"],\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561305),
(138, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show_news.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561306),
(139, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel_case.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel_case.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561317),
(140, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"list_case.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"list_case.html\",\"searchField\":[\"name\"],\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561317),
(141, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show_case.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show_case.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561317),
(142, 1, 'admin', '/admin/cms/modelx/edit/ids/5?dialog=1', 'CMS管理 / 模型管理 / 修改', '{\"dialog\":\"1\",\"row\":{\"name\":\"客户案例\",\"table\":\"cms_case\",\"channeltpl\":\"channel_case.html\",\"listtpl\":\"list_case.html\",\"showtpl\":\"show_case.html\"},\"ids\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561331),
(143, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel_news.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561339),
(144, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"list_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"list_news.html\",\"searchField\":[\"name\"],\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561340),
(145, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show_news.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show_news.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561340),
(146, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"ke\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561409),
(147, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"ke\'hu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561410),
(148, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"kehu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561410),
(149, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"kehuc\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561411),
(150, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"kehuca\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561411),
(151, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"kehuca\'s\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561411),
(152, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"kehuca\'se\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561412),
(153, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"kehucase\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561413),
(154, 1, 'admin', '/admin/cms/channel/check_element_available', 'CMS管理 / 栏目管理', '{\"id\":\"kehucase\",\"name\":\"row[name]\",\"value\":\"kehucase\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561414),
(155, 1, 'admin', '/admin/cms/channel/check_element_available', 'CMS管理 / 栏目管理', '{\"name\":\"row[diyname]\",\"value\":\"kehucase\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561415),
(156, 1, 'admin', '/admin/cms/channel/add?dialog=1', 'CMS管理 / 栏目管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"type\":\"list\",\"model_id\":\"5\",\"parent_id\":\"0\",\"name\":\"kehucase\",\"image\":\"\",\"seotitle\":\"\",\"keywords\":\"\",\"description\":\"\",\"diyname\":\"kehucase\",\"outlink\":\"\",\"channeltpl\":\"channel_case.html\",\"listtpl\":\"list_case.html\",\"showtpl\":\"show_case.html\",\"pagesize\":\"10\",\"listtype\":\"0\",\"iscontribute\":\"0\",\"isnav\":\"0\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561415),
(157, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"channel_case.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"channel_case.html\",\"searchField\":[\"name\"],\"type\":\"channel\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561430),
(158, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"list_case.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"list_case.html\",\"searchField\":[\"name\"],\"type\":\"list\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561430),
(159, 1, 'admin', '/admin/cms/ajax/get_template_list', 'CMS管理', '{\"searchTable\":\"tbl\",\"searchKey\":\"name\",\"searchValue\":\"show_case.html\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"name\",\"keyValue\":\"show_case.html\",\"searchField\":[\"name\"],\"type\":\"show\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561430),
(160, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"k\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561435),
(161, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"ke\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561436),
(162, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"ke\'hu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561436),
(163, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"ke\'hua\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561437),
(164, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"ke\'huan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561437),
(165, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"ke\'hu\'an\'l\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561437),
(166, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"ke\'hu\'an\'li\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561438),
(167, 1, 'admin', '/admin/cms/ajax/get_title_pinyin', 'CMS管理', '{\"title\":\"客户案例\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561438),
(168, 1, 'admin', '/admin/cms/channel/check_element_available', 'CMS管理 / 栏目管理', '{\"id\":\"24\",\"name\":\"row[diyname]\",\"value\":\"kehuanli\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561441),
(169, 1, 'admin', '/admin/cms/channel/edit/ids/24?dialog=1', 'CMS管理 / 栏目管理 / 修改', '{\"dialog\":\"1\",\"row\":{\"type\":\"list\",\"model_id\":\"5\",\"parent_id\":\"0\",\"name\":\"客户案例\",\"image\":\"\",\"seotitle\":\"\",\"keywords\":\"\",\"description\":\"\",\"diyname\":\"kehuanli\",\"outlink\":\"\",\"channeltpl\":\"channel_case.html\",\"listtpl\":\"list_case.html\",\"showtpl\":\"show_case.html\",\"listtype\":\"0\",\"pagesize\":\"10\",\"weigh\":\"24\",\"iscontribute\":\"0\",\"isnav\":\"0\",\"status\":\"normal\"},\"ids\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622561441);

-- --------------------------------------------------------

--
-- 表的结构 `cz_area`
--

DROP TABLE IF EXISTS `cz_area`;
CREATE TABLE IF NOT EXISTS `cz_area` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(10) DEFAULT NULL COMMENT '父id',
  `shortname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简称',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `mergename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '全称',
  `level` tinyint(4) DEFAULT NULL COMMENT '层级 0 1 2 省市区县',
  `pinyin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '拼音',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '长途区号',
  `zip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮编',
  `first` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '首字母',
  `lng` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经度',
  `lat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纬度',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='地区表';

-- --------------------------------------------------------

--
-- 表的结构 `cz_attachment`
--

DROP TABLE IF EXISTS `cz_attachment`;
CREATE TABLE IF NOT EXISTS `cz_attachment` (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filename` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '文件名称',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='附件表';

--
-- 转存表中的数据 `cz_attachment`
--

INSERT INTO `cz_attachment` (`id`, `admin_id`, `user_id`, `url`, `imagewidth`, `imageheight`, `imagetype`, `imageframes`, `filename`, `filesize`, `mimetype`, `extparam`, `createtime`, `updatetime`, `uploadtime`, `storage`, `sha1`) VALUES
(1, 1, 0, '/assets/img/qrcode.png', '150', '150', 'png', 0, 'qrcode.png', 21859, 'image/png', '', 1491635035, 1491635035, 1491635035, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');

-- --------------------------------------------------------

--
-- 表的结构 `cz_auth_group`
--

DROP TABLE IF EXISTS `cz_auth_group`;
CREATE TABLE IF NOT EXISTS `cz_auth_group` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '组名',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规则ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分组表';

--
-- 转存表中的数据 `cz_auth_group`
--

INSERT INTO `cz_auth_group` (`id`, `pid`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
(1, 0, 'Admin group', '*', 1491635035, 1491635035, 'normal'),
(2, 1, 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', 1491635035, 1491635035, 'normal'),
(3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1491635035, 1491635035, 'normal'),
(4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1491635035, 1491635035, 'normal'),
(5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1491635035, 1491635035, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_auth_group_access`
--

DROP TABLE IF EXISTS `cz_auth_group_access`;
CREATE TABLE IF NOT EXISTS `cz_auth_group_access` (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='权限分组表';

--
-- 转存表中的数据 `cz_auth_group_access`
--

INSERT INTO `cz_auth_group_access` (`uid`, `group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `cz_auth_rule`
--

DROP TABLE IF EXISTS `cz_auth_rule`;
CREATE TABLE IF NOT EXISTS `cz_auth_rule` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图标',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则URL',
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '条件',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `menutype` enum('addtabs','blank','dialog','ajax') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜单类型',
  `extend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '扩展属性',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='节点表';

--
-- 转存表中的数据 `cz_auth_rule`
--

INSERT INTO `cz_auth_rule` (`id`, `type`, `pid`, `name`, `title`, `icon`, `url`, `condition`, `remark`, `ismenu`, `menutype`, `extend`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 'file', 0, 'dashboard', 'Dashboard', 'fa fa-dashboard', '', '', 'Dashboard tips', 1, NULL, '', 1491635035, 1491635035, 143, 'normal'),
(2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', '', 1, NULL, '', 1491635035, 1491635035, 137, 'normal'),
(3, 'file', 0, 'category', 'Category', 'fa fa-leaf', '', '', 'Category tips', 1, NULL, '', 1491635035, 1491635035, 119, 'normal'),
(4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', '', 'Addon tips', 1, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(5, 'file', 0, 'auth', 'Auth', 'fa fa-group', '', '', '', 1, NULL, '', 1491635035, 1491635035, 99, 'normal'),
(6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', '', 'Config tips', 1, NULL, '', 1491635035, 1491635035, 60, 'normal'),
(7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', '', 'Attachment tips', 1, NULL, '', 1491635035, 1491635035, 53, 'normal'),
(8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', '', 1, NULL, '', 1491635035, 1491635035, 34, 'normal'),
(9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', '', 'Admin tips', 1, NULL, '', 1491635035, 1491635035, 118, 'normal'),
(10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', '', 'Admin log tips', 1, NULL, '', 1491635035, 1491635035, 113, 'normal'),
(11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', '', 'Group tips', 1, NULL, '', 1491635035, 1491635035, 109, 'normal'),
(12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', '', 'Rule tips', 1, NULL, '', 1491635035, 1491635035, 104, 'normal'),
(13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 136, 'normal'),
(14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 135, 'normal'),
(15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 133, 'normal'),
(16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 134, 'normal'),
(17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 132, 'normal'),
(18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 52, 'normal'),
(19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 51, 'normal'),
(20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 50, 'normal'),
(21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 49, 'normal'),
(22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 48, 'normal'),
(23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', '', 'Attachment tips', 0, NULL, '', 1491635035, 1491635035, 59, 'normal'),
(24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 58, 'normal'),
(25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 57, 'normal'),
(26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 56, 'normal'),
(27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 55, 'normal'),
(28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 54, 'normal'),
(29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 33, 'normal'),
(30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 32, 'normal'),
(31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 31, 'normal'),
(32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 30, 'normal'),
(33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 29, 'normal'),
(34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 28, 'normal'),
(35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', '', 'Category tips', 0, NULL, '', 1491635035, 1491635035, 142, 'normal'),
(36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 141, 'normal'),
(37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 140, 'normal'),
(38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 139, 'normal'),
(39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 138, 'normal'),
(40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', '', 'Admin tips', 0, NULL, '', 1491635035, 1491635035, 117, 'normal'),
(41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 116, 'normal'),
(42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 115, 'normal'),
(43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 114, 'normal'),
(44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', '', 'Admin log tips', 0, NULL, '', 1491635035, 1491635035, 112, 'normal'),
(45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 111, 'normal'),
(46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 110, 'normal'),
(47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', '', 'Group tips', 0, NULL, '', 1491635035, 1491635035, 108, 'normal'),
(48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 107, 'normal'),
(49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 106, 'normal'),
(50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 105, 'normal'),
(51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', '', 'Rule tips', 0, NULL, '', 1491635035, 1491635035, 103, 'normal'),
(52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 102, 'normal'),
(53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 101, 'normal'),
(54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 100, 'normal'),
(55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', '', 'Addon tips', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(59, 'file', 4, 'addon/downloaded', 'Local addon', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(66, 'file', 0, 'user', 'User', 'fa fa-list', '', '', '', 1, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(67, 'file', 66, 'user/user', 'User', 'fa fa-user', '', '', '', 1, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', '', 1, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(79, 'file', 66, 'user/rule', 'User rule', 'fa fa-circle-o', '', '', '', 1, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1491635035, 1491635035, 0, 'normal'),
(85, 'file', 0, 'cms', 'CMS管理', 'fa fa-list', '', '', '', 1, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(86, 'file', 85, 'cms/config', '站点配置', 'fa fa-gears', '', '', '', 1, NULL, '', 1621845822, 1621845822, 22, 'normal'),
(87, 'file', 86, 'cms/config/index', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(88, 'file', 85, 'cms/statistics', '统计控制台', 'fa fa-bar-chart', '', '', '', 1, NULL, '', 1621845822, 1621845822, 21, 'normal'),
(89, 'file', 88, 'cms/statistics/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(90, 'file', 85, 'cms/channel', '栏目管理', 'fa fa-list', '', '', '用于管理网站的分类，可进行无限级分类，注意只有类型为列表的才可以添加文章', 1, NULL, '', 1621845822, 1621845822, 20, 'normal'),
(91, 'file', 90, 'cms/channel/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(92, 'file', 90, 'cms/channel/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(93, 'file', 90, 'cms/channel/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(94, 'file', 90, 'cms/channel/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(95, 'file', 90, 'cms/channel/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(96, 'file', 90, 'cms/channel/admin', '栏目授权', 'fa fa-circle-o', '', '', '分配管理员可管理的栏目数据，此功能需要先开启站点配置栏目授权开关', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(97, 'file', 85, 'cms/archives', '内容管理', 'fa fa-file-text-o', '', '', '', 1, NULL, '', 1621845822, 1621845822, 19, 'normal'),
(98, 'file', 97, 'cms/archives/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(99, 'file', 97, 'cms/archives/content', '副表管理', 'fa fa-circle-o', '', '', '用于管理模型副表的数据列表,不建议在此进行删除操作', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(100, 'file', 97, 'cms/archives/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(101, 'file', 97, 'cms/archives/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(102, 'file', 97, 'cms/archives/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(103, 'file', 97, 'cms/archives/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(104, 'file', 97, 'cms/archives/move', '移动', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(105, 'file', 97, 'cms/archives/special', '专题', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(106, 'file', 97, 'cms/archives/recyclebin', '回收站', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(107, 'file', 97, 'cms/archives/restore', '还原', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(108, 'file', 97, 'cms/archives/destroy', '真实删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(109, 'file', 85, 'cms/modelx', '模型管理', 'fa fa-th', '', '', '在线添加修改删除模型，管理模型字段和相关模型数据', 1, NULL, '', 1621845822, 1621845822, 18, 'normal'),
(110, 'file', 109, 'cms/modelx/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(111, 'file', 109, 'cms/modelx/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(112, 'file', 109, 'cms/modelx/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(113, 'file', 109, 'cms/modelx/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(114, 'file', 109, 'cms/modelx/duplicate', '复制', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(115, 'file', 109, 'cms/modelx/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(116, 'file', 85, 'cms/fields', '字段管理', 'fa fa-fields', '', '', '用于管理模型或表单的字段，进行相关的增删改操作，灰色为主表字段无法修改', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(117, 'file', 116, 'cms/fields/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(118, 'file', 116, 'cms/fields/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(119, 'file', 116, 'cms/fields/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(120, 'file', 116, 'cms/fields/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(121, 'file', 116, 'cms/fields/duplicate', '复制', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(122, 'file', 116, 'cms/fields/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(123, 'file', 85, 'cms/tag', '标签管理', 'fa fa-tags', '', '', '用于管理文章关联的标签,标签的添加在添加文章时自动维护,无需手动添加标签', 1, NULL, '', 1621845822, 1621845822, 17, 'normal'),
(124, 'file', 123, 'cms/tag/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(125, 'file', 123, 'cms/tag/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(126, 'file', 123, 'cms/tag/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(127, 'file', 123, 'cms/tag/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(128, 'file', 123, 'cms/tag/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(129, 'file', 85, 'cms/block', '区块管理', 'fa fa-th-large', '', '', '用于管理站点的自定义区块内容,常用于广告、JS脚本、焦点图、片段代码等', 1, NULL, '', 1621845822, 1621845822, 16, 'normal'),
(130, 'file', 129, 'cms/block/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(131, 'file', 129, 'cms/block/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(132, 'file', 129, 'cms/block/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(133, 'file', 129, 'cms/block/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(134, 'file', 129, 'cms/block/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(135, 'file', 85, 'cms/page', '单页管理', 'fa fa-file', '', '', '用于管理网站的单页面，可任意创建修改删除单页面', 1, NULL, '', 1621845822, 1621845822, 15, 'normal'),
(136, 'file', 135, 'cms/page/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(137, 'file', 135, 'cms/page/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(138, 'file', 135, 'cms/page/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(139, 'file', 135, 'cms/page/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(140, 'file', 135, 'cms/page/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(141, 'file', 135, 'cms/page/recyclebin', '回收站', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(142, 'file', 135, 'cms/page/restore', '还原', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(143, 'file', 135, 'cms/page/destroy', '真实删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(144, 'file', 85, 'cms/comment', '评论管理', 'fa fa-comment', '', '', '用于管理用户在网站上发表的评论，可任意修改或隐藏评论', 1, NULL, '', 1621845822, 1621845822, 14, 'normal'),
(145, 'file', 144, 'cms/comment/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(146, 'file', 144, 'cms/comment/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(147, 'file', 144, 'cms/comment/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(148, 'file', 144, 'cms/comment/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(149, 'file', 144, 'cms/comment/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(150, 'file', 144, 'cms/comment/recyclebin', '回收站', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(151, 'file', 144, 'cms/comment/restore', '还原', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(152, 'file', 144, 'cms/comment/destroy', '真实删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(153, 'file', 85, 'cms/diyform', '自定义表单管理', 'fa fa-list', '', '', '可在线创建自定义表单，管理表单字段和数据列表', 1, NULL, '', 1621845822, 1621845822, 13, 'normal'),
(154, 'file', 153, 'cms/diyform/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(155, 'file', 153, 'cms/diyform/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(156, 'file', 153, 'cms/diyform/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(157, 'file', 153, 'cms/diyform/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(158, 'file', 153, 'cms/diyform/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(159, 'file', 85, 'cms/diydata', '自定义表单数据管理', 'fa fa-list', '', '', '可在线管理自定义表单的数据列表', 0, NULL, '', 1621845822, 1621845822, 12, 'normal'),
(160, 'file', 159, 'cms/diydata/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(161, 'file', 159, 'cms/diydata/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(162, 'file', 159, 'cms/diydata/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(163, 'file', 159, 'cms/diydata/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(164, 'file', 159, 'cms/diydata/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(165, 'file', 159, 'cms/diydata/import', '导入', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(166, 'file', 85, 'cms/order', '订单管理', 'fa fa-cny', '', '', '可在线管理付费查看所产生的订单', 1, NULL, '', 1621845822, 1621845822, 11, 'normal'),
(167, 'file', 166, 'cms/order/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(168, 'file', 166, 'cms/order/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(169, 'file', 166, 'cms/order/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(170, 'file', 166, 'cms/order/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(171, 'file', 166, 'cms/order/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(172, 'file', 85, 'cms/special', '专题管理', 'fa fa-newspaper-o', '', '', '可在线管理专题列表', 1, NULL, '', 1621845822, 1621845822, 10, 'normal'),
(173, 'file', 172, 'cms/special/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(174, 'file', 172, 'cms/special/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(175, 'file', 172, 'cms/special/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(176, 'file', 172, 'cms/special/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(177, 'file', 172, 'cms/special/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(178, 'file', 172, 'cms/special/recyclebin', '回收站', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(179, 'file', 172, 'cms/special/restore', '还原', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(180, 'file', 172, 'cms/special/destroy', '真实删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(181, 'file', 85, 'cms/builder', '标签生成器', 'fa fa-code', '', '', '可在线生成CMS模板标签并进行渲染标签', 1, NULL, '', 1621845822, 1621845822, 10, 'normal'),
(182, 'file', 181, 'cms/builder/index', '生成', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(183, 'file', 181, 'cms/builder/parse', '解析', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(184, 'file', 85, 'cms/autolink', '自动链接管理', 'fa fa-link', '', '', '管理文章正文内文本自动追加链接', 1, NULL, '', 1621845822, 1621845822, 11, 'normal'),
(185, 'file', 184, 'cms/autolink/index', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(186, 'file', 184, 'cms/autolink/add', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(187, 'file', 184, 'cms/autolink/edit', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(188, 'file', 184, 'cms/autolink/del', '修改', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal'),
(189, 'file', 184, 'cms/autolink/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 1621845822, 1621845822, 0, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_category`
--

DROP TABLE IF EXISTS `cz_category`;
CREATE TABLE IF NOT EXISTS `cz_category` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `flag` set('hot','index','recommend') COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分类表';

--
-- 转存表中的数据 `cz_category`
--

INSERT INTO `cz_category` (`id`, `pid`, `type`, `name`, `nickname`, `flag`, `image`, `keywords`, `description`, `diyname`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1491635035, 1491635035, 1, 'normal'),
(2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1491635035, 1491635035, 2, 'normal'),
(3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1491635035, 1491635035, 3, 'normal'),
(4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1491635035, 1491635035, 4, 'normal'),
(5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1491635035, 1491635035, 5, 'normal'),
(6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1491635035, 1491635035, 6, 'normal'),
(7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1491635035, 1491635035, 7, 'normal'),
(8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1491635035, 1491635035, 8, 'normal'),
(9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1491635035, 1491635035, 9, 'normal'),
(10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1491635035, 1491635035, 10, 'normal'),
(11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1491635035, 1491635035, 11, 'normal'),
(12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1491635035, 1491635035, 12, 'normal'),
(13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1491635035, 1491635035, 13, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_addondownload`
--

DROP TABLE IF EXISTS `cz_cms_addondownload`;
CREATE TABLE IF NOT EXISTS `cz_cms_addondownload` (
  `id` int(10) NOT NULL,
  `content` longtext NOT NULL,
  `os` set('windows','linux','mac','ubuntu') DEFAULT '' COMMENT '操作系统',
  `version` varchar(255) DEFAULT '' COMMENT '最新版本',
  `filesize` varchar(255) DEFAULT '' COMMENT '文件大小',
  `language` set('zh-cn','en') DEFAULT '' COMMENT '语言',
  `downloadurl` varchar(1500) DEFAULT '' COMMENT '下载地址',
  `screenshots` varchar(1500) DEFAULT '' COMMENT '预览截图',
  `downloads` varchar(10) DEFAULT '0' COMMENT '下载次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='下载';

--
-- 转存表中的数据 `cz_cms_addondownload`
--

INSERT INTO `cz_cms_addondownload` (`id`, `content`, `os`, `version`, `filesize`, `language`, `downloadurl`, `screenshots`, `downloads`) VALUES
(40, '<p>Qbserve 知道生产力费率为数以千计的网站和应用程序，具有独特的能力来区分在 Skype、 可宽延时间和电报，YouTube 视频聊天和 subreddits。您还可以设置警报，通知你，当你达到你的目标或花太多时间使人分心。</p><ul><li>automatic 识别的应用程序和受欢迎的网站，在 Chrome，Safari 和 Opera 浏览器中打开</li><li>separate 队的效率可宽延时间，聊天在 Skype，电报;YouTube 视频，Reddit.com subreddits;在一个应用程序内的不同窗口</li><li>show 应用程序窗口，作为独立活动的</li><li>view 所有登录 windows 为每个应用程序的记录的</li><li>ignore 任何应用程序、 网站、 窗口等。</li><li>enable 动态停靠图标和 （或） 菜单栏项的状态</li><li>搜索活动筛选器名称、 小丽、 类别、 应用程序或时间段</li><li>edit 未分类活动：不被 Qbserve</li><li>set 空闲时间限制和关闭\"视频\"等几种类型</li><li>view 详细的图表：与在一年之内任何时期的效率</li><li>get 反馈：效率变化相比前一天、 几周、 几个月的</li><li>pause 和跟踪的简历</li><li>track 仅选定的工作日或时间段</li></ul>', 'windows,mac', '1.0.0', '10M', 'en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/167/800/600', '2264'),
(41, '<p>Sublime Text 是一个代码编辑器.也是HTML和散文先进的文本编辑器。漂亮的用户界面和非凡的功能，例如迷你地图，多选择，Python的插件，代码段，等等。完全可自定义键绑定，菜单和工具栏。</p><p>Sublime Text的主要功能包括：拼写检查，书签，完整的 Python API ， Goto 功能，即时项目切换，多选择，多窗口等等</p><h2>更新日志</h2><ul><li>Sublime Text 3 beta is now available from<br /><a href=\"http://www.sublimetext.com/3\" target=\"_blank\">http://www.sublimetext.com/3</a></li><li>Removed expiry date</li><li>Backported various fixes from Sublime Text 3</li><li>Improved minimap click behavior. The old behavior is available via<br />the minimap_scroll_to_clicked_text setting</li><li>Added copy_with_empty_selection setting, to control the behavior of<br />the copy and cut commands when no text is selected</li><li></li></ul>', 'windows,linux,mac', '1.0.0', '12M', 'zh-cn,en', '{\"local\":\"\\/uploads\\/demo\\/test.zip\",\"baidu\":\"https:\\/\\/pan.baidu.com\\/s\\/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/265/800/600', '3393'),
(42, '<p>Secret Folder 并不会修改你的原始数据，只是想办法把文件夹给隐藏了而已，所以它的加密速度极快，即便文件夹包含大量文件也不会有影响。当 Secret Folder 工作之后，它会保护自己不被他人随意卸载，也不能通过命令行来访问到你加密了的文件夹。</p><p>虽然 Secret Folder 并不对数据进行加密，仅仅是将文件夹隐藏了，但相信这对于大部分人来说已经足够了，毕竟很多人也仅仅希望如此。</p>', 'windows,linux,mac', '1.0.1', '2M', 'en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600', '173'),
(43, '<p>THE ULTRA BOLD字体编辑器，适用于MAC和WINDOWS</p><p>使用FontLab VI，您可以创建，打开，修改，绘制，空间，文字，提示和导出桌面，网页，颜色和可变字体。该应用程序是一个全能的字体编辑器，但也支持与其他字体创建工具的数据交换，使其易于集成到您现有的工作流程中。</p><p>我们已将我们的全部放入FontLab VI中。我们与来自世界各地的设计师进行了交谈，并观察他们的工作。我们保留了经典应用程序FontLab Studio和Fontographer的最佳功能，包括许多熟悉的键盘FontLab快捷键。但是我们重新考虑并精简了每个功能。</p><p>我们也提出了一些新的，超大胆的想法。FontLab VI带来了开创性的新绘图工具和响应式轮廓操作，使您的设计过程更轻松，更高效，无论您是专家还是初学者。</p><p>FontLab现在支持颜色和可变性，因此您可以探索这些新的可能性并扩大您的创意范围。我们已经集成了行业标准的软件组件，并将已建立的最佳实践整理到应用程序中，以帮助您的字体在技术上一流。</p>', 'linux,ubuntu', '1.2.1', '3M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/197/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/167/800/600', '683'),
(44, '<p>功能强大的 Final Cut Pro 编码<br />• 使用 Compressor 自定 Final Cut Pro 中可用的编码设置<br />• 从形形色色的编解码器、大小、帧速率和其他参数中进行选取<br />• 在 Compressor 中存储您的自定设置；它们将自动出现在 Final Cut Pro 中<br />• 与其他编辑器共享设置，即便他们的工作站上未安装 Compressor<br />• 轻松创建 iTunes Store 项目包用于 iTunes Store 提交</p><p>省时的编码工作流程<br />• 使用现代化的单窗口界面并为常见编码任务预先设定目的位置，从而快速地完成工作<br />• 自由试用编码选项并放大“检视器”来查看真实像素精度的内容<br />• 显示通道并将其分配给优先进行处理的 QuickTime 音轨<br />• 设置批处理进程，从而简化大批量文件的编码操作<br />• 构建自定目的位置来将编码与任务（如移动或拷贝文件）合并<br />• 创建自包含的 Droplet，通过简单的拖放操作在桌面上进行编码<br />• 支持符合行业标准的编码<br />• 编码成各种符合行业标准的格式，如 MPEG-2、H.264 和 ProRes<br />• 使用适用于 Apple 设备及 Vimeo、YouTube 和 Facebook 等网站的一步设置<br />• 选择与主题菜单配合使用来进行编码，以及刻录 DVD 或 Blu-ray 光盘<br />• 一步生成用于 HTTP 实时流化的文件<br />• 导入 Targa、DPX、TIFF、PSD 或 PNG 图像序列并将它们编码成任意设置<br />• 利用高级编码功能来添加隐藏式字幕、元数据等等</p><p>无损格式转换<br />• 将任意文件从其源格式转换成其他格式，如 NTSC 到 PAL，或 SD 到 HD<br />• 使用图像滤镜、时间码叠层和水印来整理和自定您的内容<br />• 将视频加速、减速或调整帧速率以使其时间长度与运行时相匹配</p><p>分布式编码<br />• 通过在多个工作站之间分布编码作业来节省时间<br />• 在任意 Mac 上安装 Compressor 以将其激活成节点，从而进行分布式编码<br />• 通过选取共享电脑群组进行导出来提高 Final Cut Pro 编码速度</p><p>系统要求：OS X v10.10.4 或更高版本 、4GB 内存（建议 8GB 以用于 4K 效果和 3D 字幕）、支持 OpenCL 的图形卡或者 Intel HD Graphics 3000 或新款产品、256MB 显存（建议 1GB 以用于 4K 效果和 3D 字幕）、1.25GB 磁盘空间。</p><h2>更新日志</h2><p>版本 4.2.2 中的新功能<br />• 4K 导出预置用以创建适用于 Apple 设备的视频文件<br />• 修正了在创建 iTunes Store 项目包时，“隐藏式字幕”文件可能被错误地标记为 SDH 字幕的问题<br />• 修正了在缩放预览窗口时，导航窗口无法显示源片段的问题<br />• 启动屏幕可在 OS X El Capitan 中正确显示<br />• 将 iPhone 6s、iPhone 6s Plus、iPad Pro 和 Apple TV（第 4 代）添加到“Apple 设备”兼容性列表</p><p>版本 4.2 中介绍的新功能<br />• 创建 iTunes Store 项目包用于 iTunes Store 提交<br />• 轻松将影片、预告片、隐藏式字幕和字幕添加到 iTunes Store 项目包<br />• 检视器中对隐藏式字幕和字幕进行预览<br />• 放大检视器来查看真实像素精度的内容<br />• 使用“发送到 Compressor”可通过 GPU 进行渲染（支持双 GPU 渲染）<br />• 兼容系统上支持硬件加速多通路 H.264 编码<br />• MPEG-4 和 H.264 QuickTime 影片设置支持自动位速率计算<br />• 显示通道并将其分配给优先进行处理的 QuickTime 音轨<br />• 处理 QuickTime 输出环绕声时矩阵立体声降混音可用<br />• 用于多通路编码的 CABAC 熵模式</p>', 'windows,linux', '2.0.0', '20M', 'en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/1005/800/600', '2897'),
(45, '<p>TextMate的Bundles是TextMate的一个亮点，可以有效的提高开发速度。</p><p>包括DHH在内的Rails核心开发者一直都使用TextMate进行开发，原因就是他们主要都在使用Mac OS系统，并且TextMate具备出色的界面、强大的宏定义、以及可下载和编辑的宏定义包（bundles），这些都帮助开发者将编码的效率提升到最高。</p>', 'linux,mac', '1.0.2', '20M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/450/800/600', '2436'),
(46, '<span>Sketch（</span><span><em>App Store 精华</em></span><span>） 是最强大的移动应用矢量绘图设计工具，对于网页设计和移动设计者来说，比PhotoShop好用N倍！尤其是在移动应用设计方面，Sketch 的优点在于使用简单，学习曲线低，并且功能更加强大易用，支持自动切图，并且具有移动设计模板，能够大大节省设计师的时间和工作量，非常适合进行网站设计、移动应用设计、图标设计等。</span>', 'windows,linux,mac', '2.0.2', '19M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/866/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/450/800/600', '3489'),
(47, '<p>Pikka是一个易于使用的专为开发人员和设计师开发屏幕色软件。</p><p><span>功能介绍</span></p><ul><li>彩色文件夹</li></ul><p>&emsp;&emsp;在不同的文件夹之间共享颜色，以轻松组织调色板。 在文件夹之间拖放颜色。 双击从库中复制颜色。</p><ul><li>调色板发生器</li></ul><p>&emsp;&emsp;在几秒钟内生成完美的调色板。</p><ul><li>颜色色调</li></ul><p>&emsp;&emsp;选择一种颜色，并查看/复制此颜色的不同色调。</p><ul><li>格式</li></ul><p>&emsp;&emsp;提供了许多内置格式。 选择颜色并将选择的颜色直接粘贴到您使用的环境中。 选择：HEX，RGB，Swift UIColor，Swift NSColor，Objective-C UIColor，Obecjtive-C NSColor，Android XML，Android（A）RGB等等。</p><p>&emsp;Pikka不仅看起来不错，但有一个很酷的方式处理集的项目。 欢迎添加到任何开发人员颜色框。</p>', 'mac', '1.0.1', '5M', 'en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/197/800/600', '135'),
(48, '<p>Pixelmator 不仅仅是一款好软件，相对于 photoshop ，它的制作者也是目前为止最善待新手、最负责任的开发商。官方为了能让新手快速上手，针对各个功能前后制作了大量精简易懂的教程。（各大视频网站都能搜到）</p><p>Pixelmator在2011年登陆了Mac App Store，此前这款软件一直在网站销售或者在Apple Store通过盒装方式销售。自Mac App Store出现后，团队再也不用担心分发的问题了。团队的努力同时还得到了苹果的认可，除了获得苹果设计大奖外，Pixelmator还出现在了全新Mac Pro的营销材料中。</p><p>Pixelmator的开发者认为，公司将重点放在软件工程质量上，这些努力终于让苹果开始关注。Pixelmator总是能第一时间支持苹果最新的软件和硬件技术，当新功能出现后，Pixelmator总会第一时间升级，包括Retina MacBook Pro开售后，Pixelmator开始支持高DPI，以及在10.9发布后开始支持OS X Mavericks系统基于OpenCL的Core Image。</p><p>团队认为，Pixelmator是真正的原生Mac软件，这与Adobe跨平台的软件形成了鲜明的对比。Adobe的软件不能第一时间集成苹果最新的技术，不够灵活。对于Pixelmator的未来，Dailide认为团队的目标只有一个，开发最好的软件，创造更好的用户体验。</p><div><br /></div>', 'mac', '2.0.1', '40M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/866/800/600', '206'),
(49, '<p>除了支持普通的屏幕录像外，iShowU Instant 还支持同时录制屏幕和摄像头，方便我们制作视频教程、课程讲解、网页演示、游戏录制等等，此外，鼠标指针的高亮光晕显示、一键发布分享、音频混合录制、iPhoto集成等等功能，录像分辨率也能完全根据自己的需求自定义，非常强大!</p><p><span>特点</span></p><ul><li><p>简单易用的用户界面</p></li><li><p>可定制的设置和预置</p></li><li><p>伟大的股票期权，利用内置的OS X的共享服务，包括YouTube</p></li><li><p>创建GIF动画！</p></li><li><p>画中画（PIP）支持相机同时记录</p></li><li><p>灵活的输出，以60fps捕捉了</p></li><li><p>创建QuickTime和MP4电影</p></li><li><p>内置的调度记录</p></li><li><p>实时预览</p></li></ul>', 'windows,mac', '1.0.0', '3M', 'en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/265/800/600', '627'),
(50, '<p>VideoProc 是一款专为4K UHD时代而设计的转换应用，它是您必备的视频工具箱，可以处理从HD到3D，UHD 4K，5K和8K的最苛刻任务，无论是来自iPhone，GoPro，Dji，三星，DVD光盘或其他来源的视频文件。</p><p>VideoProc 处理您的媒体文件以适应各种社交网站，iPhone，iPad，电视，PS4等设备，灵活地编辑原始片段到更具吸引力的故事，在5分钟内备份和翻录完整的DVD，以最快的速度完成转换，而不会损失视频的质量。</p>', 'linux,mac', '1.0.0', '8M', 'en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/197/800/600', '2514'),
(51, '<p>RightFont是 Mac OS X 上一款非常轻巧的字体管理工具，打开后将会看到一个非常简洁的字体列表窗口。通过搜索你可以找到你所安装过的字体进行预览，而且RightFont被设计成始终处于窗口最上方，所以它看上去很像设计软件中的一个字体窗口。用起来也毫无违和感。</p><p>目前RightFont已经完成了与 PhotoShop、Sketch 两大设计应用的集成。如果我想为设计稿中某一段文字更换一下新的字体，在Sketch 中的选择该这段文本，双击RightFont中选择的字体，设计稿中的文字将会被替换为选择字体。</p>', 'windows,linux', '1.0.0', '30M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/450/800/600', '692'),
(52, '<p>帮助全球用户解决语言鸿沟问题,特长是对字幕支持(自动获取字幕) :<br />包括可自动识别字幕文件的语言编码;<br />避免字幕显示成乱码;<br />双字幕切换;<br />实时字幕延时调整等功能.</p><p>支持播放的视频格式包括但不限于: mpg, mpeg, mpeg 2, vob, dat, mp4, m4v, ts, rm, rmvb, wmv, asf, mkv, avi, 3gp, 3g2, flv, mov, 各种H264高清影片以及各类音频文件等等</p><p>支持字幕格式包括但不限于: srt, ssa, ass, idx+sub, sub, smi 等</p>', 'windows', '1.0.0', '10M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/265/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/368/800/600', '5914'),
(53, '<span><span>Sidify Apple Music Converter 是一个精心设计的音频转换器的iTunes音乐为Mac用户。它可以删除DRM从苹果音乐歌曲，并有可能以MP3，AAC或WAV格式保存到您的本地计算机或您的音乐播放器。此外，您可以使用Sidify Apple Music Converter转换成有声读物和M4P音乐。这是一个简单的应用程序，任何用户都应该得到的时刻。所有您需要做的是添加您要转换的歌曲，并选择所需的输出格式。与Sidify Apple Music Converter，您可以选择不同的预设质量。您还可以更改转换速度，这可能会影响输出内容的质量。最大20x转换速度是一个可行的选择。更重要的是，ID标签，如曲目的标题，艺术家，专辑，流派，和持续时间后保持转换。</span></span>', 'mac', '1.0.0', '5M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/251/800/600', '7494'),
(54, '<p>Meta帮助你管理你不断增长的数字音乐收藏。用它来轻松地编辑信息，如歌曲的标题，艺术家，专辑，专辑封面，等它支持大多数的音频格式，如MP3，MP4，M4A，FLAC，OGG、WAV、AIFF鹿，SPX，编辑，以及多种元数据格式包括ID3v1，ID3v2.3，id3v2.4，iTunes MP4，Vorbis评论，和APE标签。</p><p><span>特征</span></p><ul><li>采用了OS X标准的抛光直观的用户界面</li><li>将元数据一次性写入多个文件（批量标记编辑）</li><li>从文件中删除所有元数据（带标签）</li><li>改变铅字盘（大写，大写/小写，titlecase），带下划线</li><li>重命名基于元数据或者文件，将文件的元数据</li><li>在正则表达式（模式）的支持下查找和替换元数据中的字符、单词或字符串。</li><li>将选定的曲目添加到iTunes中，或者使用简单的键盘快捷方式刷新它们的元数据</li><li>自动生成磁道号</li><li>从内置文件管理操作中获益（移动、删除、查找中显示）</li><li>接口与视网膜显示器兼容。</li><li>相册封面可以很容易地通过拖放来设置或导出，并且可以配置元数据，以便在每次设置新图像时对其进行缩放、压缩和压缩图像，以便将音频文件的大小保持在最低限度。</li></ul>', 'mac', '1.0.0', '8M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/197/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/1005/800/600', '9726'),
(55, '<p>DRmare Audio Converter是一款适用于Apple Music，iTunes歌曲，Audible有声读物等的全功能DRM音频移除解决方案。作为最全面的流式音频转换器，它能够删除DRM并将保护和非DRM音频转换为MP3，AAC，WAV，FLAC，M4A等，并保留原始质量和ID3标签。</p><p>DRM版权可防止用户充分利用在线下载的数字音乐文件，如Apple Music，iTunes M4P歌曲和Audible AA，AAX有声读物。为了帮助您获得这些DRM编辑音频文件的真实所有权，全功能的DRM Audio Converter for Mac即将面世。 它专门开发的，可以让您完全摆脱流式音频的DRM保护，使您可以无限制地在任何流行设备和播放器上自由享受任何Apple音乐，iTunes音乐和Audible有声读物。</p>', 'linux', '1.0.0', '3M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/197/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/368/800/600', '6151'),
(56, '<span>Joyoshare Screen Recorder 是一款全功能，易于使用的屏幕录像工具。不仅可以录制所有屏幕视频和音频，还可将录制内容保存为流行格式，如MP4，MPG，MOV，MKV，AVI，FLV，WMV，MP3，OGG，AAC，WAV等，并且无损 保存质量。这是一个完美的视频解决方案，可以捕捉屏幕，制作教程视频，记录游戏内容，抓住在线聊天等等。</span>', 'mac,ubuntu', '1.0.0', '5M', 'en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/197/800/600', '1575'),
(57, '<span>Camtasia 是一款专门捕捉屏幕影音的工具软件。它能在任何模式下轻地记录屏幕动作，包括影像、声音、鼠标移动的轨迹，解说声音等等，另外，它还具有及时播放和编辑压缩的功能，可对影像片段进行剪接、添加转场效果。它输出的文件格式很多，有常用的AVI 及GIF 格式，还可输出为WMV 及MOV 格式。</span>', 'linux,mac,ubuntu', '2.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/368/800/600', '9420'),
(58, '<p>iRingg几乎可以将您从互联网找到的任何声音制作为个性化铃声，操作简单，简单几秒即可完成铃声制作，十分好用。还可以添加声音效果或录制自己的声音并使用滤镜创建极个性化的铃声，然后将铃声直接推送至iPhone（有线或无线连接），并且制作好的铃声会显示在默认铃声里面。</p><p>传统的铃声制作软件只会让你提供 mp3 或 m4r 源文件，然后拖入其中进行编辑导出，iRingg 除了能帮你剪辑音频，还给用户提供了选择歌曲源的渠道：启动 iRingg，主界面 For You 界面会根据用户本机音乐文件的风格来判断用户的视听口味，并从音源挑取音频或视频文件推送给用户，这就是前面提到的 6-Sense 技术… 选择一个进行铃声编辑记录（如果没有遇到喜欢的歌曲，可以单击右上角的“Suggest More Tracks”换一批推荐歌曲）</p><div><br /></div>', 'windows,linux,mac', '1.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/287/800/600', '2374'),
(59, '<p>Autodesk Maya是美国Autodesk公司出品的世界顶级的三维动画软件，应用对象是专业的影视广告，角色动画，电影特技等。Maya功能完善，工作灵活，易学易用，制作效率极高，渲染真实感极强，是电影级别的高端制作软件。</p><p>Maya售价高昂，声名显赫，是制作者梦寐以求的制作工具，掌握了Maya，会极大的提高制作效率和品质，调节出仿真的角色动画，渲染出电影一般的真实效果，向世界顶级动画师迈进。</p>', 'windows,linux,mac,ubuntu', '2.0.0', '8M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/197/800/600', '3610'),
(60, '<p>使用 Cinemagraph Pro 来创作活照片，吸引你的观众。</p><p>Cinemagraph Pro 是一款专为创作活照片设计的专业工具程序。艺术家可以使用应用程序独有的“实时蒙版”技术来实时通过高清（1080）甚至超高清（4K）输出来预览他们的混合照片。</p><p>编辑功能众多且强大，但是界面直观，浏览颇为容易；而且只需轻点几下即可与世界共享你的活照片。创作精美的专业 Cinemagraph 图像从未如此简单。<br /><br />直观创作。极速成像。</p><p>&emsp;&emsp;● Cinemagraph Pro 提供一整套编辑工具，方便用户快速、轻易地进行创作。<br />&emsp;&emsp;● 修剪：只需几秒钟即可找到最佳排列并设定静帧来制作完美循环。<br />&emsp;&emsp;● 静帧：导出静帧让你轻易自定和修改。<br />&emsp;&emsp;● 蒙版：选取照片中的指定区域，使用“实时蒙版”来为图像添加动感。<br />&emsp;&emsp;● 循环：选择循环、更改循环模式、交叉淡入淡出和速度。在循环之间添加延迟、效果可能更加使人惊奇。<br />&emsp;&emsp;● 效果：近 30 中内置滤镜，可实时预览。</p><div><br /></div>', 'windows,linux,mac', '1.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/197/800/600', '928'),
(61, '<ol><li><p>结合音频源<br />来自多个源的配置一个虚拟音频设备是容易的。只需添加物理音频设备要包括音频源表开始应用。</p></li><li><p>可用的系统<br />你的Mac会回送的虚拟设备完全一样的物理设备。找到他们列在系统偏好其他设备之间或选择在任何音频应用程序的输入或输出。</p></li><li><p>发送音频应用程序之间<br />环也可以通过设备，将音频从一个应用程序到另一个。设置环回设备作为输出在一个应用程序，输入另一个使音频流之间的直接应用。</p></li></ol>', 'windows,linux,mac,ubuntu', '2.0.0', '5M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/368/800/600', '3807'),
(62, '<p>MacX DVD Video Converter Pro 支持几乎所有的视频格式之间的互相转换。像MKV、 M2TS、 MP4、 MOV、 WMV、 AVI、 FLV……等。 能将文件依照读取装置的需求做转换，支持iPad, iPhone, Android, iMovie, QT等。 另外还能下载串流影音文件，包含：YouTube, Vimeo, Myspace等等。</p><p>MacX Video Converter Pro内置超过420种视频、音频编解码器和先进的高清视频解码引擎，MacX Video Converter Pro 支持各种高清（如MKV, M2TS, AVCHD, H.264/MPEG-4 AVC等）和标清（AVI, MPEG, MP4, H.264, MOV, FLV, F4V, RM, RMVB, WebM, Google TV等）视频之间的格式转换。经过转换的视频可以完美支持Mac电脑，iMovie, iTunes, iPhone 4, iPhone 3GS, iPad/iPad 2, iPod touch 4, iPod classic, iPod nano, Apple TV, PSP等移动设备。</p><div><br /></div>', 'windows,mac', '1.0.0', '5M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/866/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/197/800/600', '6254'),
(63, '<ul><li><p>支持FLAC、Ogg Vorbis和MP3，AAC，WAV、APE、AC3、wavpack，的WMA，和线索。</p></li><li><p>从iPod和iPhone的复制轨道。</p></li><li><p>手表的新文件的文件夹。</p></li><li><p>fetches专辑。</p></li><li><p>快速控制窗口。</p></li><li><p>进口的iTunes图书馆。</p></li><li><p>在airtunes回放。</p></li><li><p>重复的发现。</p></li><li><p>批量编辑标签与正则表达式支持。</p></li></ul>', 'windows,linux,mac', '2.0.0', '8M', 'en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/450/800/600', '9848'),
(64, '<span>ProPresenter是一个跨平台（MAC和Windows）的现场演出和媒体演示工具，适用于演出现场控制视频/音频/图像/PPT文件播放也可用于各类聚会，体育赛事，会议，或电视广播场合。和ProVideoPlayer一样ProPresenter可以实现软件控制与实时输出屏幕分开。这样你可以把精力放在工作上而不影响大屏幕的输出画面。</span>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/866/800/600', '478'),
(65, '<p><span>无需通过iTunes即可同步你的iPhone的iPod的音乐</span></p><p>&emsp;&emsp;有你喜欢的歌曲保存在多台计算机上，但您的iPod或iPhone，只能同步一个呢？primomusic可以转移你的音乐、电影、电视节目、播客、iTunes U，有声读物，多到你的苹果设备，而iTunes的麻烦。这样，你不会担心你的原始媒体内容在您的iPhone，iPad或iPod，得到覆盖。</p><p><span>重建的iTunes音乐库</span></p><p>&emsp;&emsp;iTunes是组织和享受你的播客、电影的最佳方式，和电视节目，尤其是你的音乐和个性化的播放，收视率和播放次数。在任何情况下，突如其来的“灾难”发生在您的iTunes资料库，primomusic带来两简单有效的帮助你重建起来的解决方案。</p>', 'windows,linux,mac', '2.0.0', '8M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/197/800/600', '2846'),
(66, '<p>要听你喜欢的歌曲，电台节目和视频随时随地，而无需连接到互联网？刚刚与专业的Mac录音机， AllMyMusic是一款Mac上的音频录制工具，由Wondershare出品，这款软件可以录制电脑内播放的任何声音，比如你在线播放的音乐、在线的视频等都可以通过这款软件录制下载，然后保存到本地，日后即可离线播放，其最大的特点是无损录制，能够最大程度保证音频的原来的质量，非常不错！</p><p><span>特色</span></p><ul><li><p>记录从任何网上电台的音乐</p></li><li><p>从YouTube，潘多拉，Napster公司，Spotify的，等录制音频</p></li><li><p>记录并保存MP3/M4A音频文件与零质量损失</p></li><li><p>智能检索跟踪信息，包括标题，艺术家和专辑封面</p></li><li><p>音轨之间自动拆分，并过滤掉的广告</p></li></ul>', 'windows,linux,mac,ubuntu', '2.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/450/800/600', '2794'),
(67, '<p>Jutoh让你可以很容易地创建流行格式的电子书，你可以在很多电子书网站上销售，包括亚马逊的Kindle和苹果的iBooks。</p><p>使用NewProjectWizard在几秒钟内从现有文件中创建项目；或者使用内置样式文本编辑器从头开始创建您的书。</p><p>从Jutoh的模板中选择一个书籍封面设计，或者用内置的封面设计师创建您自己的。</p><p>Jutoh允许您快速开始创建电子书，但是有许多特性和配置可供更高级的使用，包括支持内容、索引和尾注页面。</p>', 'windows,linux,mac,ubuntu', '1.0.0', '10M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/167/800/600', '5434'),
(68, '<p>Adobe Acrobat Pro DC将解决文件处理过程产生的浪费与低效率问题，无论在台式电脑或移动设备，人们都能够创建、查阅、审批和签署文件。Adobe Acrobat Pro DC最大亮点在于可将纸质图片、文字迅速转化成PDF或文档格式，比如人们通过手机拍照，可让纸质版文字转化成电子版，用户可直接对文档进行修改。另外，通过移动端和PC端，Adobe Acrobat Pro DC可让Excel、Word和PDF之间的相互转化更为便利。</p><p>Adobe Acrobat Pro DC将全球最佳的PDF解决方案提升到一个新的高度。Adobe Acrobat Pro DC配有直观的触控式界面，通过开发强大的新功能，使用户能够在任何地方完成工作。新的工具中心可使用户更简单迅速的访问最常使用的工具。Acrobat DC可利用Photoshop强大的图像编辑功能，将任何纸质文件转换为可编辑的电子文件，用于传输、签字。</p><p>Adobe Acrobat Pro DC所倡导的移动办公，正是跨设备和应用程序的。Adobe Acrobat Pro DC的使用界面非常友好，在不同设备上，Adobe Acrobat Pro DC的界面始终保持一致。而它的UI设计也非常易于客户使用，文档归类和文件搜索做的非常人性化。Adobe Acrobat Pro DC主画面上可以直接看到使用者最近开启过的档案列表。工具选单内，都采用了图示化的功能选项，直接点选需要的功能就可以开始作业。</p>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/265/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/265/800/600', '8785'),
(69, '<p>MarsEdit是Mac os平台上的一款博客写作软件，MarsEdit支持离线管理几乎所有的blog，包括WordPress、Blogger、Movable Type等数十种类型的博客网站，支持实时预览，提供了图文混排的编辑功能，图片等媒体文件一键即可轻松插入。</p><p><span>特色</span></p><ul><li>以最好的方式来编写、预览和发布博客，适用于WordPress 。</li><li>支持离线工作预览格式和内容的发布。</li><li>可以非常方便的从iPhoto、Aperture、 Lightroom媒体库浏览照片并能嵌入博客文章中自动上传 。</li><li>适合基于web的接口不想被复杂的页面影响分散注意力的职业博客写手和休闲作者。</li></ul>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/197/800/600', '7624'),
(70, '<span>Devonthink Pro Office 是一款Mac平台的文件管理工具，现在世界已被数字化，从购物的收据，到重要的调查文件，生活已经逐渐被各种形式的数字文件填满，如邮件、PDF、Word文件、多媒体文件等等，这么大的数据量和海量的文章都能通过这款应用来轻松搞定，我们可以直接向DEVONthink窗口中拖拽文件，非常简单的操作，拖拽操作在DEVONthink里可以运用的非常完美，也更加人我们用户觉得人性化。各种文件的格式、大小、最后修改时间、文件名称、是否拥有URL指向都可以作为查询的要素，并且可以进行依次排序，我们不必担心某个文件夹中有什么查询不到。换句话说DEVONthink的搜索功能就是小型的Spotlight，而且功能更加强大。</span>', 'windows,linux,mac,ubuntu', '2.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/251/800/600', '1765'),
(71, '<p>Downcast 是Mac os平台上的一款Podcast订阅工具，它的很多功能都直指原版Podcast的弱点。。</p><p>订阅功能<br />• 搜索、 订阅和下载音频和视频播客<br />• 通过 URL手动订阅播客<br />• 自动下载播客 （包括恢复下载）<br />• 浏览和下载更旧的播客节目<br />• 基于日程安排自动更新播客源<br />• 设置为自动下载和事件的保留 (全球和每个播客）<br />• 通过 OPML导入和导出播客源<br />• 导入支持音频和视频媒体文件<br />• 支持受密码保护的源<br />• 创建和编辑\"聪明\"的播放列表<br />• 查看播客详细信息和插曲显示注释<br />• 重命名播客订阅名称</p><p>iCloud 同步<br />• 同步播客订阅、 播放、 设置和与其他 Mac 和 iOS 设备 * * 通过 iCloud 的集信息</p>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/368/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/197/800/600', '5951'),
(72, '<p>Mate Translate 可以在你的所有设备之间轻松同步，并且直接通过你的Mac菜单栏访问和使用。Mate Translate是即时文本到文本翻译的最好的翻译应用。</p><p>Mate Translate 允许您翻译超过100种语言的单词和短语，使用文本到语音转换，并浏览历史上已完成的翻译。您可以使用Control + S在弹出窗口中快速交换语言。</p>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/265/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/866/800/600', '4459'),
(74, '<p>资金管理的第一步是在一个地方集中你所有的财产。Banktivity的设置助理会导入你的旧数据。你可以通过Banktivity的内置的浏览器来查看您的帐户和免费下载你的数据。</p><p>Banktivity的可选的直接访问全球10000多家银行，自动传递最新的交易数据到你的MAC当中。</p><p><span>看到钱哪里去了</span></p><p>  Banktivity还需要设置的帐户，工具，储蓄，信用卡，贷款，投资和。然后跟踪每一笔交易：微调它们的分类，分割或自定义编辑或让交易的模板，你做的工作。附上收据或任何文件交易；调和纸质报表；搜索帐户；任何货币的支付和转移，并跟踪；管理重复事件与预定的交易。</p><p>  Banktivity 5也可以让你在线支付！整合计划的交易与提醒，不要错过再付款。建立的收款人，送检查，跟踪他们的进展和看到他们出现在您的注册。您可以打印支票，太。</p><p>更新您的帐户在一次与Banktivity的更新所有的按钮，同步装置取直接访问数据和证券价格。和聪明的账户让你查看记录的账户，收款人，备忘录，范畴或更多。</p><p><span>建立储蓄</span></p><p>  Banktivity的预算工具帮助你设定储蓄和消费的目标，跟踪开支，削减债务并建立一个更安全的未来。通过将你的可用现金特定目的，包络预算可以让你对不同类别分配资金和进行储蓄。</p><p>  Banktivity自动预算预定的交易像支票和票据，所以通过分类每个费用和编辑预算本身，你可以看到你的钱，如何让它走的更远！这种视觉Banktivity这样你可以看到你每天的进步；比过去，当前或预期的预算；把它所有的预算与实际的报告。</p><p><span>确保你的未来</span></p><p>  Banktivity的投资特点管理股票，债券，基金，IRAS，401ks，CD和其他资产。你可以跟踪购买，出售，分裂，红利，期权，投资交易等；分类；检索引用雅虎！财务或投资回报率和更多的外汇；分析。</p><p>  内置的报表模板（收入与支出，净资产，收款人的总结和更多）动态分析您的财务状况。转让税码的交易产生的税收总结报告（或出口数据处理）；或查看您的控股投资组合中总结或投资总结报告。</p><p>  Banktivity的报告立即生成图表。你可以向下钻取一点细节，以电子表格导出表的数据，并打印报告，或将其保存为PDF文档。</p><div><br /></div>', 'windows,linux,mac', '1.0.0', '8M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/368/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/1005/800/600', '4442'),
(75, '<p><span>支持读取格式</span><br />zip, rar, 7z, gz, iso, tgz, lzh, apk, xz, z, bz2, tar, lzma, zst, lz4,<br />cab, xar, ar, gnutar, cpio, lzip, lzop, zstd, uu, mtree, pax, shar</p><ul><li>按空格键，进入预览模式！</li><li>Quick Look 预览压缩包！</li><li>支持 Mojave 深色模式</li><li>支持 rar, zip, 7z 加密压缩格式</li><li>Finder 右键，一键压缩、解压文档</li><li>批量加密、解密文件</li><li></li></ul>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/320/800/600', '8834'),
(76, '<span>AutoCAD具有良好的用户界面，通过交互菜单或命令行方式便可以进行各种操作。它的多文档设计环境，让非计算机专业人员也能很快地学会使用。在不断实践的过程中更好地掌握它的各种应用和开发技巧，从而不断提高工作效率。AutoCAD具有广泛的适应性，它可以在各种操作系统支持的微型计算机和工作站上运行。</span>', 'windows,linux,mac', '1.0.0', '8M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/197/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/368/800/600', '841'),
(77, '<span>iTubeDownloader 是目前 Mac OS 平台上一款非常好用的视频下载软件，你可以通过 iTubeDownloader 下载国外的在线视频，如果你经常逛 youtube 等网站的话，可以通过 iTubeDownloader 来下载视频哦！</span>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/320/800/600', '7704'),
(78, '<p>Downie 是 Mac OS X 上的一个超级易于使用的视频下载工具，支持YouTube，Vimeo 等大部分主流视频网站。它不会因为大量的选项而让用户困扰 - 它使用起来非常简单。支持国内的优酷和土豆以及国外的Youtube，如果你对视频下载有强烈的需求，那么Downie 是一个简单易用的视频下载工具。</p><h2>支持正版</h2><ol><li><a href=\"https://partner.lizhi.io/xclient/downie\" target=\"_blank\">数码荔枝购买</a></li><li><a href=\"https://software.charliemonroe.net/downie.php\" target=\"_blank\">官网购买</a>（xclient特享五折优惠码：<code style=\"box-sizing: border-box; font-size: 0.8125rem; line-height: 1.125rem; overflow-wrap: break-word; font-family: monospace, monospace; color: rgb(199, 37, 78); background-color: rgb(248, 248, 248); padding: 2px 4px; white-space: pre-wrap; border-radius: 0px;\">C5AE418A</code>）</li><li></li></ol>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/368/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/287/800/600', '5997'),
(79, '<p>一个非常容易使用，直观，以及跨平台的应用程序，允许您从多个视频托管网站下载视频到您的mac硬盘驱动器。</p><p>如果您需要脱机访问，或者如果您的互联网连接很差，无法处理流，则需要从YouTube视频共享平台下载内容。</p><p>YouTube Downloader是一个简单的OSX实用程序，它可以帮助您以一种高效的方式处理任务：可以同时处理多个视频，只能提取音频，并且可以将歌曲发送到iTunes库。</p><p>可用于多个视频共享平台的下载工具</p><p>尽管Youtube DownLoader应用程序基本上是为了处理YouTube链接而开发的，但您也可以使用它的功能来传输其他媒体共享平台(如Vimeo、SoundCloud、DailyMotion等)上的内容。</p><p>为了您的方便，Youtube DownLoader将监视您的剪贴板，一旦它检测到合适的URL，就会为您提供将任务添加到下载队列中的选项。</p><p>在这里，您可以指定是否要下载视频并选择视频质量和输出格式，或者选择只提取音频。</p><p>在查看了每个任务的配置之后，只需启动下载过程，Youtube Downloader将允许您监视其主窗口中的进度。此时，不需要进一步的用户交互。</p><p>转移到mac的整个播放列表，并完全控制输出质量。</p><p>为了优化您的工作流程，Youtube DownLoader允许您同时加载要下载的播放列表和频道，并可以监视它们以获取新的内容。这意味着，如果有互联网连接，应用程序可以自动下载新发布的视频。</p><p>同时，该实用工具还可以将下载的内容发送到iTunes库，甚至可以检测到元数据信息，如艺术家名称或视频或轨道标题。请注意，您可以选择使用与某些设备兼容的输出格式，以消除进一步处理文件的需要。</p><p>使在线内容脱机可用，而不浪费太多时间</p><p>YouTube Downloader为将各种在线平台上的媒体内容传输到您自己的计算机上提供了一个简化的解决方案。</p><p>YouTube Downloader可以处理整个播放列表或频道，可以使输出与不同的设备兼容，并且只能从视频中提取音频内容。</p><div><br /></div>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/866/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/167/800/600', '6870'),
(80, '<span>Jump Desktop 是一款Mac上非常强大和易用的远程桌面控制软件，支持RDP、VNC协议，无论速度、性能和流畅度上都非常不错，支持全屏、文本粘贴复制、快捷键发送等功能，在各种细节上要比微软的远程桌面优秀很多，可以用它远程连接Windows电脑，推荐使用！</span>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/197/800/600', '6361'),
(82, '<p>WiFi资源管理器Pro采用WiFi Explorer的代码库，并添加了一组功能，使其成为WLAN和IT专业人员的正确工具。您可以使用WiFi Explorer Pro进行初步评估，帮助设计和验证无线网络安装，以及识别信道冲突、重叠、信号质量差和其他可能影响您的家庭、办公室或企业无线网络的连接或性能的问题。</p><p><span>特征</span></p><ul><li>无源定向扫描模式</li><li>频谱分析集成</li><li>自定义过滤器</li><li>对远程传感器的支持</li><li>支持具有隐藏SSID的网络</li><li>具有高级信息的其他列</li><li>扫描结果的其他组织选项</li><li>dark与light主题</li></ul>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/368/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600', '1193'),
(83, '<p>WiFi扫描仪一款功能最为丰富和完整的WiFi扫描应用程序，WiFi扫描仪是可以在一个802.11 / WiFi~802.11 A / B / G / N /频段之间扫描网络信号。</p><p>WiFi扫描仪是一个易于使用的工具，设计，验证，和故障排除的WiFi覆盖。该工具提供的信息，这样的信号强度，噪声，制造商名称基于设备的MAC地址前缀（是的），和WiFi接入点AP的信道分配可以节约与他人分享。</p>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/265/800/600', '6883'),
(84, '<p>4K视频下载允许从YouTube的高品质，并以最快的速度为您的计算机和连接将允许下载的视频，音频和字幕。只要复制从您的浏览器视频链接，然后单击“选择性粘贴网址”。完成了！</p><p>想要省事的朋友，还可开启［Smart Mode（智能模式）］，勾选默认的视频下载配置。往后只需复制粘贴 YouTube 链接，4K Video Downloader 将会根据配置自动下载，算是软件的加分项。</p>', 'windows,linux,mac', '1.0.0', '5M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/287/800/600', '834'),
(85, '<p>使用VideoDuke点击下载任何您喜欢的视频！只需将链接粘贴到其中，VideoDuke将完成剩下的工作。在简单模式下，您可以快速访问音乐视频，电影，电视节目，还有Dailymotion等等提供的漫画。下载的文件可以保存为3GP，MP4，M4V，FLV视频格式，并且可以以首选分辨率保存，支持分辨率有360p，高清720p，高清1080p或其他。</p><p>在VideoDuke的高级模式下，您可以在下载内容时获得更多深层的选择。例如，您可以看到从网页获取的所有资源，包括视频，音频，Flash动画，图像等。切换到所需的选项卡，可以查看您需要下载的文件类型。</p>', 'windows,linux,mac,ubuntu', '1.0.0', '10M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/265/800/600', '3520'),
(86, '<span>Paw HTTP Client 是一款Mac上的HTTP客户端模拟测试工具，可以让Web开发者设置各种请求Header和参数，模拟发送HTTP请求，测试响应数据，支持OAuth, HTTP Basic Auth, Cookies等，设置HTTP标头，URL参数，JSON，url编码的表单，或多体。在馆藏档案整理你的请求，并生成客户端代码。这对于开发Web服务的应用很有帮助，非常实用的一款Web开发辅助工具。</span>', 'linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/287/800/600', '5099'),
(87, '<span>MAC地址修改器是一款小巧的工具，日常网络应用中，由于各种原因计算机的mac地址有时需要修改，如网卡地址被屏蔽等，需要更换新的mac地址。</span><br style=\"box-sizing:border-box;color:#3D464D;font-family:sans-serif;font-size:15px;white-space:normal;background-color:#FFFFFF;\" /><span>使用本软件使您跳过“如何修改mac地址”的烦恼。轻松实现新MAC地址输入、一键设定。并且支持原硬件MAC地址一键还原，操作简单明了。</span>', 'windows,linux,mac', '1.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/866/800/600', '4934'),
(89, '<p>Mac Video Ripper Pro 可以支持音频和视频文件的独立下载，只需要将你需要下载的音视频文件的链接URL地址直接拖入到应用界面之中即可开始文件的下载。</p><p>除了支持在线链接下载音视频的方式，还支持本地链接的音视频文件的下载，打开找到你的本地音视频地址，即可开始下载。</p>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/265/800/600', '9373'),
(90, '<p>CrossFTP 是一款非常给力的Mac OS FTP客户端软件，简直就是Mac上的FlashFXP。CrossFTP支持中文，且免费，而且在界面和功能上和FlashFXP以及CuteFTP类似。</p><p>软件使用双栏界面上传或下载文件，非常的方便，支持 FTP, SFTP, WebDav, Amazon S3, Amazon Glacier, Google storage等存储服务</p><p><span>主要功能：</span></p><ul><li>优良的CJK/中文/Unicode支持</li><li>站点管理,配置文件远程备份</li><li>多标签支持</li><li>压缩文档浏览，解压，压缩，直接上传</li><li>退出位置的自动记忆</li><li>队列恢复</li><li>文件本地和Web搜索</li><li>自动重连和anti-idle</li><li>队列编辑</li><li>命令控制</li><li>Amazon S3传输[pro]</li><li>SSH/SSL/TSL加密传输[pro]</li><li>iDisk/WebDav(s)协议[pro]</li><li>多线程传输[pro]</li><li>FXP传输[pro]</li><li>IPV6支持[pro]</li><li>同步文件夹[pro]</li><li>同步浏览[pro]</li><li>CRC检验[pro]</li><li></li></ul>', 'linux,ubuntu', '1.0.0', '8M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/320/800/600', '2064'),
(91, '<p>TeamViewer 是功能齐全的完整版本，拥有该系列软件的全部所有功能，既可以当作<a href=\"https://www.fastadmin.net/go/aliyun\" target=\"_blank\">服务器</a>端供其他人进行连接，也可以当作控制端连接其它作为终端的<a href=\"https://www.fastadmin.net/go/aliyun\" target=\"_blank\">服务器</a>端。</p><p>为了连接到另一台计算机，只需要在两台计算机上同时运行 TeamViewer 即可，而不需要进行安装（也可以选择安装，安装后可以设置开机运行）。该软件第一次启动在两台计算机上自动生成伙伴 ID。只需要输入你的伙伴的ID到TeamViewer，然后就会立即建立起连接。</p>', 'windows,linux,mac', '1.0.0', '8M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600', '2200'),
(93, '<p>PeakHour是Mac平台的网络监控工具,是一款位于您Mac菜单栏的网络实时监控工具.PeakHour for Mac (网络监控软件)提供了你的网络或无线网络活动实时的即时视图.</p><p>是完美的监控网络设备:网络,无线网络,NAS<a href=\"https://www.fastadmin.net/go/aliyun\" target=\"_blank\">服务器</a>等.<br />给你众多的带宽设备使用进行实时的可视化视图.<br />还可以跟踪单个总使用量<br />也可以跟踪您的互联网使用,如果你是一个上限,或有限的每月流量.</p>', 'windows,linux,mac,ubuntu', '2.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/265/800/600', '4805'),
(94, '<span>Instashare 利用AirDrop技术可以让Mac通过Wi-Fi或蓝牙向同网内其他Apple Device发送文本，图片，音频，视频等类型文件，将文件拖入Menubar上的菜单即可开始传送；同时在装有Instashare iOS版的iPhone上也能将照片集里的图片或视频分享给Mac等其他设备。</span>', 'windows,linux,mac', '1.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/265/800/600', '7428'),
(95, '<p>Little Snitch允许你拦截这些多余的连接尝试，并让你决定如何进行。</p><p>Little Snitch通知您，当一个程序试图建立一个传出的互联网连接。然后，您可以选择允许或拒绝就此，或定义一个规则如何处理类似的，未来的连接尝试。这可靠地防止在您不知情的情况下被送到私人数据。不显眼的小飞贼运行在后台，它也可以检测网络病毒，木马和其他恶意软件的相关活动。</p>', 'windows,linux,mac', '1.0.0', '8M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/450/800/600', '2723'),
(97, '<p>Yummy FTP Alias可在你的桌面上建立一个快捷方便的拖放 FTP ，拖放您的文件到Yummy FTP 在 Finder 或 Dock 中的图标，将上传它们到您的 FTP/S + SFTP + WebDAV/S 的<a href=\"https://www.fastadmin.net/go/aliyun\" target=\"_blank\">服务器</a>！</p><p>因其上传是由备受赞誉的&nbsp;<a href=\"https://xclient.info/s/yummy-ftp.html\" target=\"_blank\">Yummy FTP</a>&nbsp;程序的文件传输引擎提供的动力，所以是可保证您所期待的传输速度和可靠性的。</p>', 'windows,mac', '1.0.0', '5M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/265/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/197/800/600', '1328'),
(99, '<span>只需将任何类型的文件的URL地址添加到你的 iPhone、 iPad 或 iPod 上的Transloader客户端，轻轻点击它，即可将它们同步到您的Mac上并开始下载 。</span>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/368/800/600', '8474'),
(101, '<ol><li>SSH和Telnet协议。</li><li>用户名/密码和公共/私人密钥认证。</li><li>标签式界面多会话。</li><li>iCloud、Dropbox连接，宏和其他视频信号采样与保持应用程序共享密钥（用于iPhone，ipad&emsp;OS X）。</li><li>支持宏变量。</li><li>选择并复制/粘贴文本。</li><li>定制的字体和颜色。</li><li>多窗口的标签式界面。</li><li>自动滚动设置。</li></ol>', 'windows,linux,mac', '1.0.0', '5M', 'zh-cn', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600', '8385'),
(102, '<p>Royal TSX是一款帮助用户管理桌面的Mac桌面管理软件，Royal TSX为你提供方便安全的访问远程系统。Royal TSX专为<a href=\"https://www.fastadmin.net/go/aliyun\" target=\"_blank\">服务器</a>管理员、系统工程师、开发人员和IT信息工作者开发设计，是一款访问远程系统使用不同协议的完美工具。</p><p><span>功能介绍</span></p><ul><li>访问和管理您的连接。</li><li>凭证管理。</li><li>选项卡式用户界面。</li><li>连接插件（目前可提供：远程桌面，VNC，苹果远程桌面，SSH，远程登录，网络）。</li></ul>', 'windows,linux,mac,ubuntu', '1.0.0', '5M', 'zh-cn,en', '{\"local\":\"/uploads/demo/test.zip\",\"baidu\":\"https://pan.baidu.com/s/1NG8OoSpav2MqfnX6SGSyNw 14be\"}', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/368/800/600', '6502');

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_addonjieshao`
--

DROP TABLE IF EXISTS `cz_cms_addonjieshao`;
CREATE TABLE IF NOT EXISTS `cz_cms_addonjieshao` (
  `id` int(10) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='公司介绍';

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_addonnews`
--

DROP TABLE IF EXISTS `cz_cms_addonnews`;
CREATE TABLE IF NOT EXISTS `cz_cms_addonnews` (
  `id` int(10) NOT NULL,
  `content` longtext NOT NULL,
  `author` varchar(50) DEFAULT '' COMMENT '作者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='新闻';

--
-- 转存表中的数据 `cz_cms_addonnews`
--

INSERT INTO `cz_cms_addonnews` (`id`, `content`, `author`) VALUES
(1, '<p>据悉，驰为 HiGame 迷你 PC 配备了英特尔八代酷睿 i5-8305G 处理器，集成了移动版 Radeon Vega M 显卡和 4GB HMB 显存，性能不弱于 Nvidia GTX 1050 。</p><p><img src=\"https://picsum.photos/id/1005/800/600\" /></p><p>存储方面，入门机型从 8GB DDR4 RAM + 128GB M.2 SSD 起跳，消费者可根据实际需要后续升级，此外厂家宣称该机支持 VR 与 AR 系统。</p><p><img src=\"https://picsum.photos/id/197/800/600\" /></p><p>扩展性方面，该机提供了 1×雷电 3、5×USB 3.0、2×HDMI 2.0、2×DisplayPort 1.3、以及耳机 / 麦克风插孔。</p><p>驰为将于 5 月中旬发起 Indiegogo 众筹，感兴趣的朋友可以拿出 999 美元支持下，且可享受早鸟特惠。</p>', ''),
(2, '<p>Chromebox CXI3 价钱实惠，很适合在课堂上使用。但在教育市场之外，它也有着一番用武之地。</p>\r\n<p>宏碁为该系列机型提供了多种配置，入门款搭载的是英特尔赛扬 3865U 处理器，顶配版则是英特尔八代酷睿 i7-8550U 。</p>\r\n<p>存储方面，其提供了 4~16GB RAM + 32~64GB ROM 的组合。扩展方面，则有 2&times;USB 2.1、3&times;USB 3.0、1&times; USB-C 端口，以及 HDMI&nbsp;输出、以太网、音频复合插孔。</p>\r\n<p><img src=\"https://picsum.photos/id/320/800/600\" /></p>\r\n<p>Chromebox CXI3 支持 VESA 壁挂、垂直摆放、还有一根无线天线。</p>\r\n<p>CXI3 最先由 Chrome Unboxed 在 TigerDirect 上发现，网页给出的发货时间为 4 月 19 号起。赛扬版本售价 279 美元，酷睿 i3 / i5 / i7 版本则是 279 / 469 / 511 / 744 美元。</p>\r\n<p>[编译自：<a href=\"https://www.slashgear.com/acer-chromebox-cxi3-mini-chrome-os-desktops-go-up-for-preorder-12527240/\" target=\"_self\">SlashGear</a>&nbsp;, 来源：<a href=\"https://chromeunboxed.com/acer-chromebox-cxi3-available-shipping-april-19\" target=\"_self\">Chrome Unboxed</a>]</p>', ''),
(3, '<p>您可以跟踪您的步数，睡眠，消耗的卡路里以及全天行走的距离，并将所有数据同步到Misfit的移动应用程序。它的防水深度可达50米，可以使用可更换的纽扣电池，使用寿命长达六个月。</p>\r\n<p>混合手表变得越来越流行，因为它们看起来比传统智能手表更时尚。对于那些觉得自己不能持续充电的人来说，它们也特别方便。当然，你必须放弃一些功能，以便照顾它们圆滑的外观，比如阅读和回复邮件或电子邮件的能力。</p>\r\n<p><img src=\"https://picsum.photos/id/167/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/265/800/600\" /></p>\r\n<p><img title=\"\" src=\"https://picsum.photos/id/450/800/600\" alt=\"\" /><img title=\"\" src=\"https://picsum.photos/id/320/800/600\" /></p>', ''),
(4, '<p>大多数消费者可能熟悉UE推出的色彩鲜艳的蓝牙音箱，<strong>但该公司也有一系列定制入耳式耳机，UE刚刚推出了一款新的顶级旗舰机型：2,200美元的UE Live。</strong>UE Live耳机是该公司以前的旗舰UE18 Pro型号的进化版本，将每个耳机的扬声器数量从6个增加到8个，共计6个平衡电枢，一个True Tone Plus驱动器和一个6mm钕制动态扬声器，以提供更好的声音。</p>\r\n<p>但是，这些改进需要付出代价：UE Live耳机的起价为2,199美元，自定义选项价格可能会更高。</p>\r\n<p>Ultimate Ears的定制入耳式耳机倾向于专业音乐家在工作室或舞台上使用，而UE Live也不例外。 Ultimate Ears表示，新款耳机专为在音乐节，舞台和体育场举办音乐会的音乐家而设计 - 尽管如果您只是在家里听音乐，他们听起来也会非常出色。</p>\r\n<p>与UE Live一起，Ultimate Ears还宣布推出Ultimate Ears 6 PRO，这是一款价格为699美元的入耳式监听音箱，该监听音箱专为鼓手，贝斯手，DJ和嘻哈音乐家设计，并配有两个动态驱动程序中音和低音。</p>\r\n<p>这两款耳返将于2018年5月开始发货。</p>\r\n<p><img src=\"https://picsum.photos/id/1005/800/600\" alt=\"QQ图片20180413011632.png\" /></p>', ''),
(5, '<p>想必大家都遇到过这样尴尬的事情：家里有很多电池，用的时候也分不清哪个有电、哪个没电，扔了又怕浪费。于是旧的不丢掉，新的买来用，这样家里的电池越积攒越多，造成恶性循环。而现在，南孚带来了一款全新产品&mdash;&mdash;南孚测电器装电池，包含南孚测电器和南孚碱性电池，轻轻松松测一测，电池电量一目了然。</p>\r\n<p>而且测电器5号电池和7号电池均可以测量，一器双用。</p>\r\n<p>这款南孚测电器体积非常小巧，仅有<a href=\"http://aos.prf.hn/click/camref:100lcC/creativeref:305226\" target=\"_blank\" rel=\"noopener\" data-link=\"1\">iPhone</a>&nbsp;8手机的四分之一大小（长60mm、宽36mm、厚12mm）。测电器通体白色，侧边有纹路处理，方便持握。</p>\r\n<p>正面有&ldquo;南孚聚能环&rdquo;字样、电池放置正负极标志、电池剩余电量指示灯；背面有测试结果说明&mdash;&mdash;3灯全亮表示电量充足，2灯为还能用，1灯为建议更换，不亮则代表没电，显示结果简单易懂，学习成本几乎为0。</p>\r\n<p>对于正在使用的电池，我们也可以用南孚测电器去测试它的剩余电量，以达到心中有数的目的。比如家里孩子玩的玩具车，对于电池电量要求比较高，我们可以在玩具使用一段时间后，测试电池剩余电量，若指示为&ldquo;2灯亮&rdquo;及以下时，将该电池换到那些功率小的玩具上继续使用，让电池不至于浪费，物尽其用。</p>\r\n<p>最关键的是，这个测电器是南孚免费赠送的。从18年开始，南孚将狂送150万个测电器。只要在线下商超或者线上旗舰店购买南孚大包装，就能免费获得测电器。</p>\r\n<p><img src=\"https://picsum.photos/id/167/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/287/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/866/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/368/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/251/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/197/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/167/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/320/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/251/800/600\" /></p>', ''),
(7, '<p>据 Variety 报道，FCC 辐射实验室刚刚证实了一副来自 Snap 的新眼镜。<strong>今日曝光的这款穿戴设备的文档称，这是一款由 Snap Inc. 制作的穿戴式视频拍摄装置。从印刷标签来看，其品牌名称为 Spectacles，型号为 Model 002 。</strong>尽管文件中所附的大部分内容都以保密为由被遮掩，但还是可以知道它支持低功耗蓝牙 4.2 和 802.11ac Wi-Fi 。</p>\r\n<p><img src=\"https://picsum.photos/id/368/800/600\" alt=\"DSC_2124_2040b.0.jpg\" /></p>\r\n<p>2016 年发布的初代 Spectacles 眼镜</p>\r\n<p>上个月的时候，Cheddar 爆料了两款即将到来的 Spectacles 眼镜。其中一款是计划在 2018 年发布的二代产品，改进了性能并修复了 bug 。</p>\r\n<p>另外还有一款计划在 2019 年发布的第三代产品，据说它配备了 2 个摄像头、支持 GPS、售价 300 美元。</p>\r\n<p><img src=\"https://picsum.photos/id/866/800/600\" alt=\"screenshot_2018_04_11_08.31.06_1024.png.jpg\" /></p>\r\n<p>2016 年发布的初代 Spectacles 在营销上一度相当成功，很多人排着长队、甚至愿意出高价购买一副。即便炒作的热度很快就消散，但至少为该公司赚到了 4000 万美元。</p>\r\n<p>从 FCC 文件来看，Spectacles 二代产品的发布应该无需等待太久。当然，通过 FCC 认证也不见得产品会真的上市。</p>\r\n<p>[编译自：<a href=\"https://www.theverge.com/circuitbreaker/2018/4/11/17223426/snapchat-spectacles-second-generation-model-002\" target=\"_self\">TheVerge</a>]</p>', ''),
(8, '<p>云存储服务商Dropbox今日宣布，由于投资者需求强劲，现将IPO(数次公开招股)发行价区间调高2美元。上周一，Dropbox宣布将IPO发行价区间定为每股16美元至18美元，最高融资6.48亿美元，公司市值将达到约71亿美元。</p>\r\n<p><img src=\"https://picsum.photos/id/450/800/600\" /></p>\r\n<p>但Dropbox今日宣布，由于投资者需求强劲，现将发行价区间调高2美元，至每股18美元至20美元。这意味着Dropbox此次IPO最多将融资7.2亿美元，公司市值将达到约78.5亿美元。</p>\r\n<p>业内专家杰伊&middot;瑞特(Jay Ritter)称，与Box等竞争对手相比，Dropbox最初给出的IPO发行价区间确实有些保守。</p>\r\n<p>虽然调高了发行价区间，但Dropbox当前估值仍低于2014年100亿美元的估值。</p>\r\n<p>昨日就有报道称，Dropbox IPO股票已被超额认购，表明今年市场对第一大科技股的需求十分旺盛。</p>\r\n<p>Dropbox成立于2007年，上个月提交了IPO招股书。Dropbox计划在纳斯达克上市，证券代码为&ldquo;DBX&rdquo;。</p>', ''),
(9, '<p>著名云存储服务提供商Dropbox在上市交易首日股价大涨36%，开盘定价为21美元每股，在当日最高时达到31.6美元每股，最终以28.48美元每股的价格收盘，现在市值超过120亿美元。可以明显看出公开市场投资者十分看好Dropbox这家主营业务为云存储服务和内容协作平台的公司。Dropbox最先对自己股价的预期是16到18美元每股，后来提升到18到20美元每股。而由于上市交易首日表现出色，超过了2014年私募时100亿美元的估值。</p>\r\n<p><img src=\"https://picsum.photos/id/287/800/600\" /></p>\r\n<p>在2017年，Dropbox实现营收11亿美元。较2016年的8.45亿美元和2015年的6.04亿美元的年度总营收增长不少。不过，Dropbox至今尚未实现盈利，去年净亏损为1.12亿美元。该数字在2016年和2015年分别是2.1亿美元和3.26亿美元，可以看出其净亏损在逐年减少。其从每个付费用户获得的平均收入为111.91美元。</p>\r\n<div id=\"cbhahaha\" class=\"otherContent_01\">&nbsp;</div>\r\n<p>由于Dropbox采用的是免费+付费模式，既有面向消费者的业务也有面向企业的业务。Dropbox曾表示其所有5亿注册用户中只有1100万为其产品付费。</p>\r\n<p>著名风投公司红杉资本合伙人、Dropbox董事会成员布莱恩&middot;施莱尔（Bryan Schreier）称：&ldquo;Dropbox结合了一家消费者公司该有的规模和影响力和一家软件公司该有的长期收益的优势。&rdquo;他表示现在正是Dropbox上市的最佳时机，因为&ldquo;其业务规模和现金流都已经达到一定程度，足以支撑其上市计划&rdquo;。</p>\r\n<p>作为Dropbox的早期投资机构，红杉资本如今持有Dropbox 23.2%的股份。另一家风投公司Accel是第二大机构股东，持有5%的股份。Dropbox创始人兼首席执行官德鲁&middot;休斯敦（Drew Houston）持有公司25.3%的股份。</p>\r\n<p>投资机构Greylock Partners也拥有少量Dropbox股份，其合伙人约翰&middot;里利（John Lilly）说：&ldquo;之所以投资Dropbox，是因为德鲁和他的团队对未来的工作模式有着清晰的认识，并打造了一个满足现代生产力需求的产品。&rdquo;</p>\r\n<p>不过，目前市场上有大量与Dropbox相似的产品。Dropbox称：&ldquo;内容协作平台市场竞争激烈且变化很快。在云存储业务方面，我们面临来自<a href=\"http://t.cn/R61I7ap\" target=\"_blank\" rel=\"noopener\" data-link=\"1\">亚马逊</a>、苹果、谷歌、和<a href=\"http://clkde.tradedoubler.com/click?p=235167&amp;a=2355305&amp;g=21862034\" target=\"_blank\" rel=\"noopener\" data-link=\"1\">微软</a>公司同类产品的竞争。而在内容协作市场则有来自Atlassian、谷歌、和微软公司的竞争。我们与Box的竞争则主要局限在面向大型企业用户的云存储服务领域。&rdquo;</p>\r\n<p>Box是一家从事与Dropbox类似业务的公司，经常与Dropbox一起被提到。不过Box商业模式与Dropbox不同，其更专注于企业用户。在Dropbox上市首日，Box股价下跌了8.2%。</p>', ''),
(10, '<p><strong>云存储公司Dropbox周五向美国证券交易委员会（SEC）提交了IPO（首次公开招股）申请文件，寻求筹集5亿美元资金。</strong>Dropbox的IPO交易长期以来备受市场期待，该公司四年前在私募投资市场上的估值就已高达100亿美元。</p>\r\n<p><img src=\"https://picsum.photos/id/265/800/600\" /></p>\r\n<p>这家硅谷创业公司成立于2007年。在IPO申请文件中，该公司披露信息称其过去三年的营收分别为6.038亿美元、8.448亿美元和11.1亿美元，而亏损则从3.259亿美元渐次收窄到了2.102亿美元和1.117亿美元。</p>\r\n<p>据《华尔街日报》报道，Dropbox此前通过私募融资回合已经筹集到6亿美元资金。在2014年1月进行的最后一个融资回合中，该公司估值达100亿美元。</p>\r\n<div id=\"cbhahaha\" class=\"otherContent_01\">&nbsp;</div>\r\n<p>Dropbox计划在纳斯达克挂牌上市，股票代码为&ldquo;DBX&rdquo;。共有12家银行将担任该公司IPO交易的承销商，其中主承销商是高盛集团和摩根大通。</p>\r\n<p>文件还披露信息称，Dropbox去年每付费用户平均收入为11.91美元，高于2016年，但低于2015年；注册用户总数达5亿人，自2017年初以来的新注册用户人数为1亿人；付费用户总数达1100万人以上；毛利率为67%。</p>\r\n<p>Dropbox此前就已秘密向美国证券交易委员会提交了IPO申请文件，后者在周五对外公布了该文件。文件显示，Dropbox联合创始人及CEO德鲁&middot;休斯顿（Drew Houston）持有24.4%具备投票权的股票，风投公司红杉资本（Sequoia Capital）持有24.8%股权。</p>\r\n<p>受研发预算扩大的影响，Dropbox的支出有所增长，但该公司已在2016年实现了正向的自由现金流。很多云公司都依靠企业销售团队来获取收入，但Dropbox则与众不同，该公司90%以上营收都来自购买自己的订阅服务的用户。不过，这家仍未摆脱亏损的公司仍面临约17亿美元的合同义务，如租约和未偿还债务等。</p>\r\n<p>另外，Dropbox还面临着严峻的竞争压力，其各方面业务与<a href=\"http://t.cn/R61I7ap\" target=\"_blank\" rel=\"noopener\" data-link=\"1\">亚马逊</a>、苹果公司、谷歌和<a href=\"http://clkde.tradedoubler.com/click?p=235167&amp;a=2355305&amp;g=21862034\" target=\"_blank\" rel=\"noopener\" data-link=\"1\">微软</a>等科技巨头之间存在竞争关系。</p>\r\n<p>来自于IPO交易的收入将被用于融资一项扩张计划，内容包括将更多用户升级至订阅用户，以及扩大与第三方软件之间的整合等。</p>\r\n<p>在Dropbox的IPO申请文件公布以后，其竞争对手Box的股价上涨2.8%。Dropbox曾五次入选&ldquo;CNBC Disruptor 50&rdquo;榜单，该榜单每年公布一次，评选出50家最有影响力、最具有开拓精神的创业公司。</p>', ''),
(11, '<p>通用电气（GE）为推广Predix云平台的应用开发，在国内推出首期\"Predix星火计划\"，以奖励基于该平台的工业互联网开发者。首期有4家企业获奖，将进驻GE孵化器并获得技术支持和潜在投资机会。</p>\r\n<p><img title=\"\" src=\"https://picsum.photos/id/1005/800/600\" /></p>\r\n<p>参与该计划的团队需基于GE Predix平台，开发适合工业领域的资产绩效管理（APM）应用，用于工业企业实时、安全地收集和分析数据，增加正常运行时间、降低成本、减少运营风险。</p>\r\n<p>GE Predix是一个基于Cloud Foundry(CF)的云平台，专攻制造业。跟Azure，AWS的PaaS服务相比，Predix的优势在于对于工业数据的导入做了专门优化。</p>\r\n<p>2017年\"Predix星火计划\"采用提名邀请，共有16家GE合作伙伴及创业公司提交了内容涵盖包括能源、医疗、设备制造等领域的工业应用项目方案。</p>\r\n<p>获奖企业中，广采科技由思科参与投资，提供货物与集装箱的全球跟踪服务。实视科技面向汽车、装备制造等客户开发用于智能眼镜的AR应用。华瑞特信息主要开发企业业务管理流程整合应用。华中思能主要针对电力企业开发节能减排、运营优化、故障诊断应用。</p>\r\n<p>四家获奖企业将获得的资源支持包括，进驻位于上海的GE数字创新坊孵化1个月、期间将有GE技术团队支持和GE创投部门考察进一步投资机会。</p>', ''),
(13, '<p>当英特尔上周推出更多更多 Coffee Lake CPU 和配套主板时，传说中的 Z390 芯片组却意外缺席了。<strong>不过有眼尖的人们发现，主板厂商映泰（Biostar）在自家 B360 Racing GT5 手册中，竟然清楚地列明了另一款名叫&ldquo;Z390GT5&rdquo;主板的存在。</strong>作为一个二线品牌，映泰的产品主打平价而不是古怪的设计。不过它与现有的 Z370 系列没有太大差别，而且最高支持的 CPU TDP 也仅为 95W，刚好够酷睿 i7-8700K 使用而已。</p>\r\n<p><img src=\"https://picsum.photos/id/197/800/600\" alt=\"Biostar-Z390-Racing-GT3-1000x658.jpg\" /></p>\r\n<p>此前有传闻称，某款八核 Coffee Lake 芯片的 TDP 可能超过这个数值。若真如此，Z390 芯片组存在的意义，可能就是比 H370 系列多一些 PCIe 通道、内建 USB 3.1 Gen 2、以及 CNVi Wi-Fi 支持。</p>\r\n<p><img src=\"https://picsum.photos/id/866/800/600\" alt=\"z390gt5.png\" /></p>\r\n<p>映泰的公告中并未详细给出这些特性，所以仍有待证实。去年的泄露似乎表明，该公司的 Z390 芯片组会包含自家的音频硬件，但这块板子仍然采用了老旧的瑞昱（Realtek）编解码器。</p>\r\n<p><img src=\"https://picsum.photos/id/197/800/600\" alt=\"Biostar-Z390-GT5-layout.png\" /></p>\r\n<p>[编译自：<a href=\"https://techreport.com/news/33492/rumor-biostar-manual-tips-off-the-existence-of-a-z390-chipset\" target=\"_self\">TechReport</a>&nbsp;, 来源：<a href=\"https://videocardz.com/75858/biostar-confirms-z390-racing-gt3-gt5-motherboards\" target=\"_self\">VideoCardz</a>]</p>', ''),
(14, '<p>4 月 11 日，Valve 宣布旗下著名的 PC 游戏发行平台 Steam 会推出新的用户数据隐私安全措施。今后玩家们可以选择隐藏你的游戏库内容，也可以隐藏你的活动细节，具体到最近收藏什么游戏，买了什么游戏，玩了什么游戏以及在某游戏上花了多少小时等等。</p>\r\n<p>此前，这些信息全部是公开的，不仅你的好友可以看到，发表评论的时候社区用户可以看到，而且第三方可以采用 Steam API 轻而易举的获得，那些 PC 游戏数据提供商（Steam Spy 之类）就是依靠这些用户数据提供服务的。</p>\r\n<p>新的隐私措施实行后，不管是其他用户还是第三方，将无法轻易获取这些数据。也就是说，如果你想要隐藏，那就永远不会有第三者知道你在某成人视觉小说游戏上面花了多少时间。</p>\r\n<div id=\"cbhahaha\" class=\"otherContent_01\">&nbsp;</div>\r\n<p>这对 Steam 用户当然是个不错的消息，而受影响最大的是 Steam Spy 这种收集并分析数据的第三方。Steam Spy 说起来大家都不会太陌生，很多相关新闻也会引用 Steam Spy 的数据报告。他们根据过滤器筛选数据，然后将 Steam 上的游戏统计呈现给更多人浏览，但随着 Valve 关闭 Steam 可用库数据，包括 Steam Spy 在内的第三方可能都要面临倒闭。</p>\r\n<p>目前还未清楚 Valve 有没有其他替代方案，用以让第三方继续提供数据服务，或者单独推出面向开发者的数据统计工具。</p>\r\n<p>Steam Spy 的创始人 Sergey Galyonkin 在接受外媒采访时说，&ldquo;如果他们真的想遵守法律，应该隐藏所有的个人资料信息。目前他们有默认情况下暴露的敏感信息，只有游戏库被隐藏。这并不合理。&rdquo;默认情况下，你的 Steam 个人资料仍会向所有人显示识别信息，例如你的社交媒体帐户。</p>\r\n<p>Steam Spy 创始人提到的&ldquo;法律&rdquo;，其实是 5 月 25 日生效的欧盟&ldquo;GPDR&rdquo;，全称&ldquo;通用数据保护条例&rdquo;，欧盟的新规定要求公司加密所有&ldquo;非公开信息&rdquo;。</p>\r\n<p><img src=\"https://picsum.photos/id/167/800/600\" /></p>\r\n<p>所以我们可以认为 Valve 做出这一决定并不绝对与近期爆发的 Facebook 数据泄露事件有关，但是这一事件肯定推动了 G 胖尽快落实自己的隐私安全措施。在这个时期，恰到好处地透露给用户&ldquo;我们是一家坚定保护用户信息安全的公司&rdquo;这样的信息，就是一颗很好的定心丸了。</p>\r\n<p>可以想见 Facebook 数据泄露以及后来的 Cambridge Analytica 丑闻给各大科技公司带来了怎样的压力。尽管 Steam 光是卖游戏就能保证自己足够赚钱，看起来完全没有出卖数据的必要，Steam Spy 上收集的游戏数据和用户游戏行为，于操弄政治的 Cambridge Analytica（剑桥分析公司）之流也产生不了什么价值，但谁敢说有朝一日不会因金钱诱惑发生与 Facebook 丑闻类似的事情呢？</p>\r\n<p>Valve 宁愿让一家第三方数据服务商去死，也不会冒着 G 胖走进国会接受听证的风险，无数玩家还在苦苦等待《半条命3》呢。放整个业界来讲，不管是哪家公司，都不敢再承担一次这样的&ldquo;风暴潮&rdquo;。</p>\r\n<p><strong>Facebook的教训</strong></p>\r\n<p>Facebook 身处争议漩涡，人们的抗议达到了顶峰。有人怀疑它的用处，有人直接否认它的用处，在当前的信任危机下，一切情绪都持续放大，公司和公司的使命被极端质疑。Facebook的市值自从指控以来已经减少超过500亿美元，情况简直糟糕。</p>\r\n<p>上个月，根据纽约时报、卫报曝光 Facebook 发生了严重的数据泄露，波及用户有 5000 万人之多，外泄信息被商业公司利用建立成性格模型，用来操纵了 2016 年的美国大选。</p>\r\n<p>Facebook 日前承诺 ，对于受 Cambridge Analytica 数据丑闻影响的用户，该公司会专门进行通知。毫无疑问，自 Facebook 泄密丑闻曝光以来，许多人都在等待这样的消息。随着马克&middot;扎克伯格（Mark Zuckerberg）在美国参议院听证会上作证，更多关于数据丑闻的细节浮出水面。</p>\r\n<p>在过去一年的动荡中，Facebook 广告的基本理念，即基于用户隐藏性格特征来投放广告，已被证明是一种恶意利用用户信息，且容易遭到滥用的做法。Facebook 对此的回应与其他科技行业巨头的态度类似：感到震惊，向用户保证这绝对不是有意的行为，以及承诺采取行动。</p>\r\n<p>扎克伯格面对数不清的镜头提出的观点也颇有意思，他说经过此事希望美国数据处理和隐私规则能发生演化，其中包括直接呼吁放松监管来避免美国公司落后于中国竞争对手&mdash;&mdash;在西方人的脑子里，中国好像是毫无个人信息隐私而言的地方。</p>\r\n<p>他谈到了&ldquo;让人们完全控制&rdquo;自己所分享内容的概念，声称这是&ldquo;Facebook 最重要的原则&rdquo;。</p>\r\n<p>&ldquo;你在 Facebook 上分享的所有内容都归你自己所有，而且你完全控制着谁能看到它以及如何进行分享。此外，你还可以随时删除它。&rdquo;扎克伯格说道，并未提及该公司在其发展早期阶段距离这样的原则有多遥远。</p>\r\n<p>国外媒体纷纷认为扎克伯格的辩解不太含蓄，因为其他平台泄漏数据的规模都比不上 Facebook，而用户是否会买扎克伯格这个账还有待观察。</p>\r\n<p><strong>怼怼苹果 更开心</strong></p>\r\n<p>一般大公司的 CEO 都充当了企业发言人的角色，经常在各种访谈、社交媒体上发表自己的言论，甚至是向竞争对手开炮。</p>\r\n<p>Facebook 因为用户隐私泄露被网友围攻的时候，苹果 CEO 库克自然也被媒体围着追问对这件事情的看法，库克的回答十分尖锐：</p>\r\n<p>&ldquo;对我们来说用户隐私等同于用户的权利和公民自由，但是 Facebook 是一个免费服务，所以用户在这个服务中反而成了卖给广告商的商品，如果苹果这么做，我们将能赚到很多钱，但苹果最好不、也永远不会这么做。&rdquo;</p>\r\n<p>在隐私方面，苹果一直奉行着严格的标准，而且它自己也一直以这种严格为傲，苹果的隐私方案多次承诺&ldquo;我们不会根据你的电子邮件内容或网页浏览习惯来建立档案，然后出售给广告商。我们不会用你存放在&nbsp;<a href=\"http://aos.prf.hn/click/camref:100lcC/creativeref:305226\" target=\"_blank\" rel=\"noopener\" data-link=\"1\">iPhone</a>&nbsp;或 iCloud 上的信息来赚钱。&rdquo;</p>\r\n<p>他们有时甚至把美国政府搞得灰头土脸。在对发生在加利福尼亚州圣贝纳迪诺的大规模枪击案调查期间，苹果拒绝帮助美国联邦调查局解锁一名嫌犯的 iPhone，甚至不惜为此与政府对簿公堂。解锁嫌犯的 iPhone 要求开发专门软件，苹果认为影响所有用户手机的安全功能。美国司法部随后在没有苹果帮助的情况下自己找到解锁嫌犯手机的方法。</p>\r\n<p>直到现在，FBI 还在想方设法的要破解 iPhone。库克的态度肯定是&mdash;&mdash;抗争到底。</p>\r\n<p>当然，苹果对用户隐私的严格保护也是经过惨痛教训的，2014 年好莱坞女星照片泄露事件波及众多大腕，在全球引起了极大的注意，让苹果和 iCloud 都摊上了大事。虽然那一次隐私泄露是由于黑客行为，和今天说的用户数据泄露、滥用态度有所区别，但那一次事件让所有人开始思考应该如何给个人信息添加更严实的门锁，更谨慎细致地保护云端安全。</p>\r\n<p>所以，记住这些教训，可以让苹果和 Facebook 们以后不再那么惨痛。这次也一样。</p>', ''),
(15, '<p>今天，W3C和FIDO联盟标准机构宣布，Web浏览器正在构建一种新的登录方式。这款名为WebAuthn所呈现的新开放标准将在最新版本的Firefox中得到支持，并将在未来几个月发布的Chrome和Edge的版本中得到支持。<strong>这是多年来的最新举措，目的是让用户远离密码，转向更安全的登录方式，如生物识别和USB令牌。</strong></p>\r\n<p>该系统已经在谷歌和Facebook等主要服务上就位，在那里你可以使用符合FIDO标准的Yubikey设备登录。</p>\r\n<p><img src=\"https://picsum.photos/id/265/800/600\" alt=\"Security-Key-by-Yubico.png\" /></p>\r\n<p>WebAuthn将无疑将加速安全登录的实现，无论是将这些技术作为备用登陆方式，还是完全取代密码。随着更多的开源代码为新标准而编写出来，开发者将更容易实现新的登录方式。</p>\r\n<p>&ldquo;以前，USB令牌登陆的模式只运用于谷歌、<a href=\"http://clkde.tradedoubler.com/click?p=235167&amp;a=2355305&amp;g=21862034\" target=\"_blank\" rel=\"noopener\" data-link=\"1\">微软</a>和Facebook等大公司，&rdquo;参与Firefox工作的Selena Deckelmann说。&ldquo;现在，通过WebAuthn，更多的用户将能够体验安全登录。&rdquo;</p>\r\n<p>因为FIDO标准是建立在零知识的基础上的，所以没有一串字符可以保证对一个账户的访问，这使得传统的钓鱼攻击变得更加困难。它为有安全意识的用户和企业提供了保护自己的重要途径。随着越来越多的服务转向支持更安全的登录方式，FIDO-ready用户的数量会越来越多。</p>\r\n<p>Deckelmann说：&ldquo;它能真正的规避安全隐患，但现在我们还没到那一步，这将是我们的美好未来。&rdquo;</p>', ''),
(16, '<p>Github 去年推出的<a href=\"https://www.oschina.net/news/90737/security-alerts-on-github\">安全警告</a>，极大减少了开发人员消除 Ruby 和 JavaScript 项目漏洞的时间。<strong>GitHub 安全警告服务，可以搜索依赖寻找已知漏洞然后通过开发者，以便帮助开发者尽可能快的打上补丁修复漏洞，消除有漏洞的依赖或者转到安全版本。</strong></p>\r\n<p><img src=\"https://picsum.photos/id/251/800/600\" alt=\"36836206-97565a64-1ced-11e8-990f-d12cb4b003e5.png\" /></p>\r\n<p>根据 Github 的说法，目前安全警告已经报告了 50 多万个库中的 400 多万个漏洞。在所有显示的警告中，有将近一半的在一周之内得到了响应，前7天的漏洞解决率大约为30%。实际上，情况可能更好，因为当把统计限制在最近有贡献的库时，也就是说过去90天中有贡献的库，98%的库在7天之内打上了补丁。</p>\r\n<p>这个安全警报服务会扫描所有公共库，对于私有库，只扫描依赖图。每当发现有漏洞，库管理员都可以收到消息提示，其中还有漏洞级别及解决步骤提供。</p>\r\n<p>安全警告服务现在只支持 Ruby 和 JavaScript，不过 Github 表示 2018 年计划支持 Python。</p>', ''),
(20, '<p><strong>针对新兴市场，Google希望通过Google Go轻量级应用帮助身处网络速度慢、流量资费高昂地区的用户获得更流畅的网络搜索体验</strong>。现在谷歌正向在26个撒哈拉以南非洲国家/地区推广，Google Go轻量级应用可以让搜索数据用流量减少40%，并且支持对以往搜索记录的脱机访问。</p>\r\n<p><img src=\"https://picsum.photos/id/368/800/600\" alt=\"TIM截图20180413142756.png\" /></p>\r\n<p>Google Go 应用本身只有 5MB 大小，对于低存储空间设备很友好，这款应用也是不意外地有离线模式，主要针对的是网络条件不好地区的用户。除了应用本身的性能优化以外，Google Go 还能显示搜索结果的主题摘要信息，同时也会向用户推荐更多可能会感兴趣的内容，也拥有当前流行趋势主题推荐和语音搜索功能。</p>\r\n<p>Google Go 还可配合 YouTube Go 和文件管理应用 Files Go 使用，该应用将在 Android Oreo（ Go Edition ）设备中预装进行分发，让非洲等新兴市场的消费者得到更流畅、更便捷的 Android 系统体验。</p>', ''),
(21, '<p>尽管已经研发两年多时间，但对于Fuchsia系统Google始终缄口不言。不过今天，公司发表了名为&ldquo;<a href=\"https://fuchsia.googlesource.com/docs/+/master/the-book/\" target=\"_blank\" rel=\"noopener\">The Book</a>&rdquo;的深度解析文档，详细介绍了这款计划取代Android和Chrome OS的操作系统。 目前Android和Chrome OS都是使用Linux内核，不过在最新发布的文档中谷歌明确Fuchsia并非基于Linux内核。</p>\r\n<p><img src=\"https://picsum.photos/id/1005/800/600\" alt=\"google-says-its-upcoming-fuchsia-os-is-not-linux-uses-zircon-kernel-520641-2.jpg\" /></p>\r\n<p>根据公布的文档，Fuchsia是基于功能的模块化系统，使用名为&ldquo;Zircon&rdquo;（锆石）的内核，该微内核为Fuchsia系统提供核心驱动以及C Library（libc）实例。</p>\r\n<p>虽然文档仍未完成，但是我们也注意到Google正在打造的Fuchsia OS非常独特，极具创新且前途无限。这款系统从头构建自己的库和组件，通过POSIX向后兼容性和使用基于Vulkan的驱动打造出类UNIX系统。</p>\r\n<p>Fuchsia系统使用名为&ldquo;Escher&rdquo;的物理渲染器，提供物体的Soft Shadows，镜头特效、光影扩散和色彩外溢等功能。此外Fuchsia的文件系统完全在用户空间之间进行操作，并没有链接或者加载到内核中。</p>\r\n<p>在文档中写道：&ldquo;Fuchsia的文件系统本身可以很容易的进行更改--修改不需要重新编译内核。事实上，对Fuchsia的文件系统更新可以不需要重启。&rdquo;</p>', ''),
(22, '<p>谷歌手机应用程序在2月份收到了主要更新，为快速通话控件添加了便捷的聊天功能。<strong>在接下来的几周里，Pixel，Nexus和Android One设备的默认拨号程序正在添加垃圾邮件过滤功能，并附带一个新的测试版程序，现在就可以试用该功能。</strong></p>\r\n<p>2016年，该应用程序开始通过将来电屏幕以鲜红色闪烁，并通过电话号码下方的另一个&ldquo;怀疑垃圾邮件来电者&rdquo;警报来提醒用户潜在的垃圾邮件来电者。现在，测试中新的垃圾邮件过滤功能更进一步增强，不再打扰用户。当检测到潜在的垃圾邮件呼叫时，将直接把它发送到语音邮件。因此，手机不会响铃，用户也不会被打搅。</p>\r\n<p>同时，用户不会收到未接电话或语音邮件通知，但已过滤的电话将出现在通话记录中，并且任何留下的语音邮件仍将显示在相应的选项卡中。此功能将在未来几周内在全球范围内推出，但加入新版测试户可以率先使用该功能。和其他程序一样，Google指出允许用户在发布之前使用这种实验性功能。</p>\r\n<p>谷歌警告说，功能仍然在开发中，可能不稳定，并且存在&ldquo;一些问题&rdquo;。同时，用户将需要有能力在整个过程中提交应用内反馈。想要参与测试的用户可以前往电话应用的Google Play列表，然后向下滚动到&ldquo;成为测试人员&rdquo;以加入。</p>\r\n<p><img src=\"https://picsum.photos/id/450/800/600\" /></p>\r\n<p><img src=\"https://picsum.photos/id/287/800/600\" /></p>', ''),
(24, '<p>谷歌正在与美国医学协会（美国的一个医师游说团体）进行合作，双方达成一项挑战计划，其内容是让初创企业能够想出“促进健康监测设备数据共享的最佳新思路”。美国医学协会于周一表示，最终的挑战成果将会是一款手机应用或可穿戴设备。</p>\r\n<p><img src=\"https://picsum.photos/id/320/800/600\" /></p>\r\n<p>这两者可以让慢性病患者更轻松地与医生分享数据。</p>\r\n<div id=\"cbhahaha\" class=\"otherContent_01\"> </div>\r\n<p>该声明称：“获奖作品将展示申请人是如何通过病人的健康数据，借助有效的方式，改善医生工作流程临床效果、降低医疗保健系统成本的。”</p>\r\n<p>为了在3万亿美元的医疗保健市场中分得一杯羹，一些科技巨头对于医疗保健该行业的公司展开跨界合作显示出越来越强烈的意向，以促进创新。</p>\r\n<p> </p>\r\n<p>去年，亚马逊公司与默克公司共同发起了一项创新挑战计划，以鼓励Alexa的开发人员们提出新的“技能”，以帮助在家中接受治疗以及医院中接受治疗的糖尿病患者。</p>\r\n<p>亚马逊并没有过多透露其意图，但CNBC在3月份报道了该公司下一步的宏伟目标：针对老龄人口发展其技术。与年轻人相比，老年人在不同程度上更容易罹患糖尿病等慢性病。</p>\r\n<p>Alphabet选择将本次挑战计划集中在医疗数据的互操作性问题上。这样做的目的，是让患者和提供者能够更容易以计算机可读的格式（而不是PDF格式）共享实验室结果或医学成像这样的数据。从历史角度看，许多医院和他们的技术供应商都倾向于选择将病人“锁定”到他们独家的设备上，而不是为病人提供便捷的数据访问服务。</p>\r\n<p>值得一提的是，苹果公司也正在通过其医疗记录产品来解决这个问题。</p>\r\n<p>本次“谷歌——美国医疗协会”挑战赛最终将会产生出3个最佳创意，来共同分享5万美元的谷歌云奖金。</p>', ''),
(33, '<p>据外媒报道，去年，GitHub 向安全研究人员支付了总计 166495 美元的奖励，针对&nbsp;GitHub 这个为期四年的&ldquo;漏洞赏金&rdquo;项目，安全研究人员会上报自己发现的系统问题和漏洞。2016 年，GitHub 一共支付了81.7万美元，而去年的支出总额显然已经翻了一倍多，几乎相当于前三年的总支出（17.7万美元）。在 2014 和 2015 两年时间里，他们一共支付了95.3万美元的奖金。</p>\r\n<p><img src=\"https://picsum.photos/id/287/800/600\" /></p>\r\n<p>2017 年，GitHub 一共收到了 840 份漏洞报告意见书，但是最终解决问题并获得奖金的比例只有15%（约121份）。2016年，GitHub 共收到了 795 份漏洞报告意见书，最终获得奖励的只有 73 份，而其中只有 48 份有效报告最终被罗列在了漏洞赏金项目的主页上。</p>\r\n<p>有效报告的数量上升推动了总支出的增加，也导致了 GitHub 在去年十月重新评估其支付结构。结果就是，奖金增加了一倍，其中最低奖金为 555 美元，最高奖金高达 20000 美元。</p>\r\n<p>GitHub 的 Greg Ose 指出，随着参与的项目、计划和研究人员规模不断增加，去年是迄今为止支付赏金最多的一年。不仅如此，他们还把 GitHub Enterprise 引入到漏洞赏金项目之中，让研究人员能够在 GitHub.com 平台上一些未公开的、或是特定于某个企业部署的领域里找到漏洞。Ose说道：</p>\r\n<blockquote>\r\n<p>&ldquo;去年年初，很多漏洞报告涉及到了我们的企业认证方法，这也促使我们不得不在内部关注这个问题，而且我们也在研究如何让研究人员也关注这个功能。&rdquo;</p>\r\n</blockquote>\r\n<p>此外，Ose还表示，GitHub 已经发布了首个研究人员捐赠，也是他们长期以来关注的一项举措。这项工作会为挖掘应用程序特定功能或领域的研究人员支付固定金额。当然，其他任何发现漏洞的人也能够通过漏洞赏金项目获得奖励。</p>\r\n<p>去年，GitHub 还推出了私人漏洞补丁服务，让用户能够限制生产漏洞的影响范围。不仅如此，他们还进行了内部改进，以更有效进行漏洞分类和修复提交，并计划在今年进一步完善流程。</p>\r\n<p>现在，GitHub 希望进一步扩大 2017 年所取得成绩，推出更多私人奖励和研究补助金，以便在代码公开发布之前及之后引起大家的关注。该公司还计划在今年晚些时候，推出额外的奖励计划。Ose总结道：</p>\r\n<blockquote>\r\n<p>&ldquo;鉴于漏洞赏金项目取得了成功，我们现在正考虑如何扩大其范围，为我们的生产服务提供更多帮助，同时保护整个GitHub生态系统。我们很期待下一步工作，并且会在今年对提交的漏洞内容进行分类和修正。&rdquo;</p>\r\n</blockquote>', 'Github'),
(34, '<p>本周我们正在研究Leap Motion为增强现实带来的新东西。<strong>我们已经看到他们之前创造了一些令人难以置信的技术，尤其是当涉及到运动跟踪和控制时。现在看起来他们认为他们是以面向优先的方式进入AR增强现实世界。</strong></p><p>Leap Motion有一款在性能和外形之间达到平衡的头显，这款头显达到了Leap Motion所说最高技术规格所在的平衡点。换句话说，他们创造了一款人们可以使用的产品，与当今世界上大多数其他消费类产品不同。</p><p>$$paidbegin$$</p><p>为了制造这款头显，Leap Motion的团队使用了几款5.5英寸的智能手机。他们将这些智能手机放在佩戴者脸部的两侧，并将其内部的图像反映出来。通过这种设置，最终他们发现他们需要创建自己的LED显示系统。他们决定采用Analogix显示驱动器和两个“快速切换”BOE 3.5英寸显示屏的架构。</p><p>$$paidend$$</p><p>他们已经创造了一款头显，正如他们所描述的那样，它会让所有其他头显（VR，AR等）感到羞耻。两个120 fps，1600x1440显示屏，100+视角范围和150 fps手动追踪180 x 180度FOV，打开这个头显，当今系统的分辨率，等待时间和视野限制就会消失。</p><p>那么你可以在哪里购买这种现代技术的奇迹？你不能。目前，Leap Motion将此项目称为“北极星计划”，并将其作为一个跳板点。他们正在使用这个项目来表明我们所有人都关注于AR硬件是错误的，他们的产品可以带来最佳体验。</p><p><img src=\"https://picsum.photos/id/1005/800/600\" /></p><p><img src=\"https://picsum.photos/id/320/800/600\" /></p>', 'Leap');

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_addonproduct`
--

DROP TABLE IF EXISTS `cz_cms_addonproduct`;
CREATE TABLE IF NOT EXISTS `cz_cms_addonproduct` (
  `id` int(10) NOT NULL,
  `content` longtext NOT NULL,
  `productdata` varchar(1500) DEFAULT '' COMMENT '产品列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='产品表';

--
-- 转存表中的数据 `cz_cms_addonproduct`
--

INSERT INTO `cz_cms_addonproduct` (`id`, `content`, `productdata`) VALUES
(18, '<p>小米蓝牙耳机mini非常迷你，仅有4.9g，内置麦克风，支持语音通话。侧入耳贴合佩戴，稳固不易掉。一键式多控操作，仅有的一个按键即可实现双击唤醒小爱同学、轻按播放/暂停等多种功能。这款耳机支持IPX4防水，适合运动佩戴，带3副硅胶耳帽。小米蓝牙耳机mini配备充电底座，但充电底座并未内置电池，需要连接充电器，1小时充满</p>', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/866/800/600'),
(23, '随着智能穿戴设备越来越普及，市场上相关的智能手环和智能手表类产品层出不穷，不过提起好用又便宜的高性价比智能手环，几乎所有人都会第一个想到小米科技带来的小米手环系列，现如今小米手环已经发布到了第四代，可以说从功能到设计都已经趋于完美。华米科技是小米手环的生产商，在小米生态链中它是非常重要的存在之一！2014 年，华米推出小米手环1代。虽然仅有计步、监测睡眠等少量功能，但在那个国外品牌可穿戴设备价格动辄高达千元的时代，小米手环1代以 79 元的超低定价，迅速收拢了一大批国内用户的心！', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/251/800/600'),
(28, '虽然iphone已经上新款，但iphonex仍是你能买到的最棒的智能手机，为什么这么说呢，由于现在新款iPhone X XR、XS 以及max以及陆续可以接受预定，据我所知XR的屏幕没有iPhone 好，但是价格却更贵，记得乔布斯还在的时候，他的设计理念一直围绕着用户的使用感受，max确实太大了，其实小编最爱的是5s的大小，不知道有没有人有同感。', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/197/800/600'),
(36, '<p>2018年，4K机顶盒被层出不穷的人工智能新品消息所淹没，微创新不足的4K机顶盒行情显得有些疲乏。海美迪针对快速发展的潮流，推出了一款人工智能复合型产品。海美迪小白盒兼具了Q5四代的解码优势以及视听机器人的人工智能，是一款极具创新的复合产品，结合了海美迪旗舰电视盒的优势和高端蓝牙音箱的特色，是智能AI系统+Q5四代+蓝牙音箱的全新形态产品，让消费者重拾对4K机顶盒的关注。通过海美迪小白盒，不光可以看电视，听音乐，问天气，长知识，还可以作为智能家居的入口，可谓是一强有力的破局者。</p>', 'https://picsum.photos/id/866/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/197/800/600'),
(73, '手表在今天已经不再是一件简单的计时工具，它能反射出佩戴者的气质、品味和性格。极简风格腕表是现在年轻人最喜欢的手表风格之一，简单洁白的表盘成为了文艺青年们个性与思想的表达。今天就为大家介绍十二款最好看的极简手表，如果您也喜欢极简手表，那就一起来看看吧。', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/1005/800/600'),
(81, 'WiFi是一种无线局域网运用技术，其出现以来，凭借组网方便、易于扩展等特点，有着广泛的应用前景。而无线接入和高速传输是WiFi的主要技术优点，WiFi技术与机器人技术的结合便产生了WiFiRobot。WiFi Robot是集远程无线通讯、音视频传输、数据采集、多向机械云台、灯光控制、环境检测、超声波测距、红外壁障、超声波领航、动力四驱、摄像头云台等功能为一体的多功能智能遥感机器人，以WiFi网络作为数据传输平台，以高速MCU为数据处理中心，可通过电脑、智能手机、平板电脑等设备进行远程控制，并可拓展更多功能。', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/320/800/600'),
(88, '从2005年一代的512MB闪存到2008年四代的2GB闪存，从一代的口香糖式外形设计到四代的背夹式小巧设计，4年时间的发展奠定了iPod shuffle在播放器领域的地位，一种代表时尚与青春的态度，可以说风靡万千少男少女，真正的做到深入人心！', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/1005/800/600'),
(92, 'MacBook Pro Retina拥有更先进的元件，更先进的技术——最新的第四代双核与四核Intel处理器、速度高达700MB/s 的基于PCIe闪存、被称为5G网络的802.11ac无线网络技术、高达20Gb/s速度的Thunderbolt 2端口。', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/866/800/600'),
(96, '玩自拍，玩高清摄影，玩极限摄影，有一个牌子不得不提，这就是GoPro，也就是近期这个玩具开始时兴起来，无论是一些孩子通过GoPro拍到了外太空上地球的影像，还是飞行员用GoPro玩自拍搞得机毁人亡，还是100岁老太跳伞，都有GoPro的身影，同样越来越多的人开始发掘GoPro的潜力和可玩性。', 'https://picsum.photos/id/197/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/450/800/600'),
(98, '据外媒最新消息，美国权威消费者杂志《消费者报告》对全球最新智能手机进行了评比，三星Galaxy S10+以90分拿下榜单第一。而苹果iPhone XS Max和三星Galaxy S10虽分数同样也是90分，但却以小数点的差距，分别位列第二位和第三位。另外，第四位和第五位则分别是iPhone XS和Galaxy S10e(89分)。也就是说，三星Galaxy S10系列的三款机型均进入了榜单前五名，可谓实至名归。', 'https://picsum.photos/id/866/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/1005/800/600'),
(100, '从 2015 年，苹果推出第一代 Apple Watch 后，在这 3 年时间里，Apple Watch 已经凭借着较准确的定位、合理的迭代升级逐渐成为了目前智能手表行业相对较优的选择。\r\n\r\n今天凌晨发布的 Apple Watch 4 更是如此，我们认为在加入了「全面屏」设计的元素、ECG 心电监测功能以及更强的苹果 S4 双核芯片之后，它的竞争力有了显著的提升。', 'https://picsum.photos/id/320/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600'),
(103, '在蓝牙4.2时代，续航、延迟与偶尔的断线是真无线耳机无法解决的问题，即使是价值超过千元的大品牌，比如苹果的airpod、索尼WF-1000X降噪豆、BOSESoundsportFree也无法幸免，毕竟蓝牙4.2的硬件条件并不十分完善。', 'https://picsum.photos/id/450/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/167/800/600'),
(104, '游戏手柄品种琳琅满目，而游戏手柄除了可以在电脑上进行有线连接以外，很多手柄厂商也设计出了无线连接的手柄，毕竟厂商和消费者心知肚明：无线才是未来。与手机去除掉耳机孔不同，手柄的无线设计非常受欢迎。索尼、微软、任天堂三家游戏主机厂商招牌主机的手柄已经都是无线的设计了。而很多游戏手柄厂商也设计了很多无线连接的手柄。', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/368/800/600'),
(105, '2017四川航展无人机专项展可谓异彩纷呈，既有像翼龙、彩虹、鹞鹰这样的空中“大块头”，也有新晋的太阳能Wifi无人机、以及貌似怪兽的软体无人机。更多的，当然还是应用范围涵盖安防、测绘、巡线、植保等行业应用的各种款式工业无人机，以及与此相关的行业上下游企业。', 'https://picsum.photos/id/1005/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/265/800/600'),
(106, '相较上一代九号平衡车，九号平衡车Plus拥有八大改进，脚踏面积相较上一代提升19%，底盘高度离地增加17%，采用11英寸高性能防滑胎，新一代平衡车电机功率为800W。', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/251/800/600'),
(107, '从2017年推出首款激光电视以来，小米正式“扎根”智能微投领域，目前已经推出了三款家用投影产品，其中9999元的激光电视主要针对的还是高端家庭用户，而米家投影仪系列的两款产品则更多的面向普通家庭和年轻消费群体，尤其是最新发布的这款米家投影仪青春版，更是将价格拉至2199元（众筹价），不仅降低了用户选购的门槛，也更加符合入门级产品本身的定位，下面我们就来看看这款产品的实际体验效果。', 'https://picsum.photos/id/287/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/368/800/600,https://picsum.photos/id/320/800/600'),
(108, '小米近日正式发布米家互联网洗烘一体机10kg版。米家互联网洗烘一体机10kg版采用BLDC变频电机、1400高转速、一级能效、以及包含智能空气洗在内的21种洗涤模式，性能强劲、功能齐全。米家互联网洗烘一体机还有“自定义”功能，用户可以调节并保存自己最喜爱的洗涤方式，轻松搞定家庭日常生活中的各种洗烘需求。当然，也可远程操控，不耽误出门买菜逛街，拿起手机随时监控工作状态，洗烘完成后会发出通知，一个APP就可以完全掌控这台洗烘一体机。', 'https://picsum.photos/id/197/800/600,https://picsum.photos/id/1005/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/866/800/600,https://picsum.photos/id/167/800/600,https://picsum.photos/id/450/800/600'),
(109, '<p>加湿器可以说是目前家里比较常见的生活用品之一了，特别是爱美的女性朋友们，为了能保持容颜润泽，经常会在身旁备用一台。其实对于更多的用户来说，加湿器的主要作用还是放在空调房里，用来调节房间湿度的，因为空调房的空气非常干燥，用户长期待在房间里会产生皮肤干涩的感觉，老一辈人都是在床底下放一盆水来起到加湿作用，现在人们生活水平提高了，自然更愿意花钱购买专门的加湿器来使用了。今天给大家介绍一款来自ORICO的空气加湿器，它的体积小巧，便于搬动，而且还能当小夜灯来使用，一举两得，实用性很不错。</p>', 'https://picsum.photos/id/251/800/600,https://picsum.photos/id/320/800/600,https://picsum.photos/id/265/800/600,https://picsum.photos/id/287/800/600,https://picsum.photos/id/197/800/600,https://picsum.photos/id/167/800/600');

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_archives`
--

DROP TABLE IF EXISTS `cz_cms_archives`;
CREATE TABLE IF NOT EXISTS `cz_cms_archives` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `channel_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `channel_ids` varchar(255) DEFAULT '' COMMENT '副栏目ID集合',
  `model_id` int(10) NOT NULL DEFAULT '0' COMMENT '模型ID',
  `special_ids` varchar(255) DEFAULT '' COMMENT '专题ID集合',
  `admin_id` int(10) UNSIGNED DEFAULT '0' COMMENT '管理员ID',
  `title` varchar(255) DEFAULT '' COMMENT '文章标题',
  `flag` varchar(100) DEFAULT '' COMMENT '标志',
  `style` varchar(100) DEFAULT '' COMMENT '样式',
  `image` varchar(255) DEFAULT '' COMMENT '缩略图',
  `images` varchar(1500) DEFAULT '' COMMENT '组图',
  `seotitle` varchar(255) DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `tags` varchar(255) DEFAULT '' COMMENT 'TAG',
  `price` decimal(10,2) UNSIGNED DEFAULT '0.00' COMMENT '价格',
  `outlink` varchar(255) DEFAULT '' COMMENT '外部链接',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论次数',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞数',
  `dislikes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点踩数',
  `diyname` varchar(100) DEFAULT '' COMMENT '自定义URL',
  `isguest` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '是否访客访问',
  `iscomment` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '是否允许评论',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `publishtime` int(10) DEFAULT NULL COMMENT '发布时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `memo` varchar(100) DEFAULT '' COMMENT '备注',
  `status` enum('normal','hidden','rejected','pulloff') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  KEY `channel_ids` (`channel_ids`),
  KEY `diyname` (`diyname`),
  KEY `status` (`channel_id`,`status`),
  KEY `channel` (`channel_id`,`weigh`,`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `channel_id_2` (`channel_id`),
  KEY `channel_ids_2` (`channel_ids`),
  KEY `diyname_2` (`diyname`),
  KEY `channel_id_3` (`channel_id`),
  KEY `channel_ids_3` (`channel_ids`),
  KEY `diyname_3` (`diyname`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COMMENT='内容表';

--
-- 转存表中的数据 `cz_cms_archives`
--

INSERT INTO `cz_cms_archives` (`id`, `user_id`, `channel_id`, `channel_ids`, `model_id`, `special_ids`, `admin_id`, `title`, `flag`, `style`, `image`, `images`, `seotitle`, `keywords`, `description`, `tags`, `price`, `outlink`, `weigh`, `views`, `comments`, `likes`, `dislikes`, `diyname`, `isguest`, `iscomment`, `createtime`, `updatetime`, `publishtime`, `deletetime`, `memo`, `status`) VALUES
(1, 1, 6, '', 1, '', 0, '驰为发布HiGame迷你PC新品 小身材大能量', 'recommend', 'b|u|#fast', 'https://picsum.photos/id/1005/800/600', '', '', '驰为,笔记本,HiGame', '说到驰为（Chuwi），很多人第一时间想到的就是该公司的 Windows 笔记本或 Android 平板电脑。但是最近，该厂家又凭借 HiGame 子品牌进军了迷你游戏 PC 市场。作为一款迷你 PC，它的三围只有 17.3×15.8×7.3 CM（约 7×6×3 英寸）。即便如此，它的硬件配置也让我们眼前一亮。', 'HiGame,PC,驰为', '0.00', '', 0, 7426, 0, 83, 0, '', 1, 1, 1523718809, 1597139826, 1523635200, NULL, '', 'normal'),
(2, 1, 6, '', 1, '', 0, '宏碁Chromebox CXI3迷你台式机现已开放预定', '', '', 'https://picsum.photos/id/866/800/600', '', '', '宏基,台式机', '今年 1 月的时候，宏碁（Acer）发布了多款新产品，其中就包括 Chromebox CXI3 。与 Chromebook 笔记本不同，Chromebox CXI3 是一款运行 Chrome OS 的小型台式机。不占地方，显然是它的最大卖点，用户甚至可以将它背挂到显示器后面。如果你想要拥有一台，那么现在宏碁也已经开放预定了。', 'Chromebox,台式机,宏基', '0.00', '', 0, 1352, 0, 258, 0, '', 1, 1, 1523718936, 1597139833, 1523635200, NULL, '', 'normal'),
(3, 1, 6, '', 1, '', 0, 'Misfit最新的混合动力手表Path现已上市', 'recommend', '', 'https://picsum.photos/id/368/800/600', '', '', '手表,混合动力', 'Misfit的混合动力手表今天通过公司网站发售。它的售价为149.99美元，将有四种颜色可供选择：不锈钢，玫瑰金，黄金和带金色调的不锈钢。该公司首先在CES首次推出手表，在那里我们看到了这款小巧的新设备。这是该公司最小的手表 -  38毫米 - 并没有触摸屏，但它通过蓝牙与智能手机配对。', '智能手表,混合动力', '0.00', '', 0, 8942, 0, 267, 0, '', 1, 1, 1523719020, 1597139837, 1523635200, NULL, '', 'normal'),
(4, 1, 6, '', 1, '', 0, 'UE为现场演出者推出了价值2200美元的舞台耳返设备', '', '', 'https://picsum.photos/id/450/800/600', '', '', '耳返,智能设备', '大多数消费者可能熟悉UE推出的色彩鲜艳的蓝牙音箱，但该公司也有一系列定制入耳式耳机，UE刚刚推出了一款新的顶级旗舰机型：2,200美元的UE Live。UE Live耳机是该公司以前的旗舰UE18 Pro型号的进化版本，将每个耳机的扬声器数量从6个增加到8个，共计6个平衡电枢，一个True Tone Plus驱动器和一个6mm钕制动态扬声器，以提供更好的声音。', '智能设备,耳返', '0.00', '', 0, 7678, 0, 51, 0, '', 1, 1, 1523719106, 1597139842, 1523635200, NULL, '', 'normal'),
(5, 1, 6, '', 1, '', 0, '南孚推出全球首款测电器装电池：可秒分电池新旧', 'recommend', '', 'https://picsum.photos/id/167/800/600', '', '', '电池,南孚', '想必大家都遇到过这样尴尬的事情：家里有很多电池，用的时候也分不清哪个有电、哪个没电，扔了又怕浪费。于是旧的不丢掉，新的买来用，这样家里的电池越积攒越多，造成恶性循环。而现在，南孚带来了一款全新产品——南孚测电器装电池，包含南孚测电器和南孚碱性电池，轻轻松松测一测，电池电量一目了然。', '南孚,电池', '0.00', '', 0, 5385, 0, 57, 0, '', 1, 1, 1523719198, 1597139851, 1523635200, NULL, '', 'normal'),
(7, 1, 6, '', 1, '', 0, 'Snap新一代Spectacles眼镜文档已被FCC曝光', '', '', 'https://picsum.photos/id/866/800/600', '', '', '', '据 Variety 报道，FCC 辐射实验室刚刚证实了一副来自 Snap 的新眼镜。今日曝光的这款穿戴设备的文档称，这是一款由 Snap Inc. 制作的穿戴式视频拍摄装置。从印刷标签来看，其品牌名称为 Spectacles，型号为 Model 002 。尽管文件中所附的大部分内容都以保密为由被遮掩，但还是可以知道它支持低功耗蓝牙 4.2 和 802.11ac Wi-Fi 。', '智能设备,眼镜', '0.00', '', 0, 3222, 0, 15, 0, '', 1, 1, 1523719403, 1597139855, 1523635200, NULL, '', 'normal'),
(8, 1, 5, '', 1, '', 0, '投资者需求旺盛 Dropbox将IPO发行价区间调高2美元', '', '', 'https://picsum.photos/id/251/800/600', '', '', '', '云存储服务商Dropbox今日宣布，由于投资者需求强劲，现将IPO(数次公开招股)发行价区间调高2美元。上周一，Dropbox宣布将IPO发行价区间定为每股16美元至18美元，最高融资6.48亿美元，公司市值将达到约71亿美元。', 'dropbox,投资', '0.00', '', 0, 2723, 0, 66, 0, '', 1, 1, 1523719527, 1597139861, 1523635200, NULL, '', 'normal'),
(9, 1, 5, '', 1, '', 0, 'Dropbox股价上市首日大涨36% 市值超120亿美元', 'recommend', '', 'https://picsum.photos/id/197/800/600', '', '', '', '著名云存储服务提供商Dropbox在上市交易首日股价大涨36%，开盘定价为21美元每股，在当日最高时达到31.6美元每股，最终以28.48美元每股的价格收盘，现在市值超过120亿美元。可以明显看出公开市场投资者十分看好Dropbox这家主营业务为云存储服务和内容协作平台的公司。Dropbox最先对自己股价的预期是16到18美元每股，后来提升到18到20美元每股。而由于上市交易首日表现出色，超过了2014年私募时100亿美元的估值。', 'dropbox,投资', '0.00', '', 0, 2732, 0, 214, 0, '', 1, 1, 1523719610, 1597139866, 1523635200, NULL, '', 'normal'),
(10, 1, 5, '', 1, '', 0, '云存储公司Dropbox在美提交IPO申请：拟筹资5亿美元', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', '云存储公司Dropbox周五向美国证券交易委员会（SEC）提交了IPO（首次公开招股）申请文件，寻求筹集5亿美元资金。Dropbox的IPO交易长期以来备受市场期待，该公司四年前在私募投资市场上的估值就已高达100亿美元。', 'dropbox', '0.00', '', 0, 7388, 0, 168, 0, '', 1, 1, 1523719716, 1597139873, 1523635200, NULL, '', 'normal'),
(11, 1, 5, '', 1, '', 0, '通用电气针对Predix云平台的创业者推出奖励计划', 'recommend', '', 'https://picsum.photos/id/1005/800/600', '', '', '', '通用电气（GE）为推广Predix云平台的应用开发，在国内推出首期\"Predix星火计划\"，以奖励基于该平台的工业互联网开发者。首期有4家企业获奖，将进驻GE孵化器并获得技术支持和潜在投资机会。', '云计算,互联网', '0.00', '', 0, 5796, 0, 66, 0, '', 1, 1, 1523719810, 1597139878, 1523635200, NULL, '', 'normal'),
(13, 1, 5, '', 1, '', 0, '映泰Z390GT5主板手册曝光 英特尔Z390芯片组或即将到来 当', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', '当英特尔上周推出更多更多 Coffee Lake CPU 和配套主板时，传说中的 Z390 芯片组却意外缺席了。不过有眼尖的人们发现，主板厂商映泰（Biostar）在自家 B360 Racing GT5 手册中，竟然清楚地列明了另一款名叫“Z390GT5”主板的存在。作为一个二线品牌，映泰的产品主打平价而不是古怪的设计。不过它与现有的 Z370 系列没有太大差别，而且最高支持的 CPU TDP 也仅为 95W，刚好够酷睿 i7-8700K 使用而已。', '智能设备', '0.00', '', 0, 3607, 0, 44, 0, '', 1, 1, 1523720694, 1597139887, 1523635200, NULL, '', 'normal'),
(14, 1, 4, '', 1, '', 0, '在数据黑箱和信赖危机面前 谁更应该战战兢兢？', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', '4 月 11 日，Valve 宣布旗下著名的 PC 游戏发行平台 Steam 会推出新的用户数据隐私安全措施。今后玩家们可以选择隐藏你的游戏库内容，也可以隐藏你的活动细节，具体到最近收藏什么游戏，买了什么游戏，玩了什么游戏以及在某游戏上花了多少小时等等。', '安全', '0.00', '', 0, 6375, 0, 227, 0, '', 1, 1, 1523720913, 1597139894, 1523635200, NULL, '', 'normal'),
(15, 1, 4, '', 1, '', 0, 'Google Chrome和Mozilla Firefox将支持全新无密码登录规范', 'recommend', '', 'https://picsum.photos/id/320/800/600', '', '', '', '今天，W3C和FIDO联盟标准机构宣布，Web浏览器正在构建一种新的登录方式。这款名为WebAuthn所呈现的新开放标准将在最新版本的Firefox中得到支持，并将在未来几个月发布的Chrome和Edge的版本中得到支持。这是多年来的最新举措，目的是让用户远离密码，转向更安全的登录方式，如生物识别和USB令牌。', '互联网,安全', '0.00', '', 0, 8640, 0, 17, 0, '', 1, 1, 1523720991, 1597139899, 1523635200, NULL, '', 'normal'),
(16, 1, 4, '', 1, '', 0, 'GitHub 安全警告计划已检测出 400 多万个漏洞', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', 'Github 去年推出的安全警告，极大减少了开发人员消除 Ruby 和 JavaScript 项目漏洞的时间。GitHub 安全警告服务，可以搜索依赖寻找已知漏洞然后通过开发者，以便帮助开发者尽可能快的打上补丁修复漏洞，消除有漏洞的依赖或者转到安全版本。', '互联网,安全', '0.00', '', 0, 6792, 0, 70, 0, '', 1, 1, 1523721095, 1597139904, 1523635200, NULL, '', 'normal'),
(18, 1, 10, '', 2, '', 0, '小米无线蓝牙耳机mini', '', '', 'https://picsum.photos/id/320/800/600', '', '', '', '小米蓝牙耳机mini非常迷你，仅有4.9g，内置麦克风，支持语音通话。侧入耳贴合佩戴，稳固不易掉。一键式多控操作，仅有的一个按键即可实现双击唤醒小爱同学、轻按播放/暂停等多种功能。这款耳机支持IPX4防水，适合运动佩戴，带3副硅胶耳帽。', '互联网,安全', '0.00', '', 0, 1241, 0, 277, 0, '', 1, 1, 1523721203, 1597139969, 1523635200, NULL, '', 'normal'),
(20, 1, 3, '', 1, '', 0, '节省40%搜索流量:Google Go轻量级应用将于非洲市场推出', '', '', 'https://picsum.photos/id/866/800/600', '', '', '', '针对新兴市场，Google希望通过Google Go轻量级应用帮助身处网络速度慢、流量资费高昂地区的用户获得更流畅的网络搜索体验。现在谷歌正向在26个撒哈拉以南非洲国家/地区推广，Google Go轻量级应用可以让搜索数据用流量减少40%，并且支持对以往搜索记录的脱机访问。', 'Google,互联网', '0.00', '', 0, 2386, 0, 128, 0, '', 1, 1, 1523721344, 1597139972, 1523635200, NULL, '', 'normal'),
(21, 1, 3, '', 1, '', 0, '谷歌公布Fuchsia文档：并非Linux内核 从头构建自己的库和组件', 'recommend', '', 'https://picsum.photos/id/368/800/600', '', '', '', '尽管已经研发两年多时间，但对于Fuchsia系统Google始终缄口不言。不过今天，公司发表了名为“The Book”的深度解析文档，详细介绍了这款计划取代Android和Chrome OS的操作系统。 目前Android和Chrome OS都是使用Linux内核，不过在最新发布的文档中谷歌明确Fuchsia并非基于Linux内核。', 'Google,互联网', '0.00', '', 0, 4119, 0, 235, 0, '', 1, 1, 1523721408, 1597139976, 1523635200, NULL, '', 'normal'),
(22, 1, 3, '', 1, '', 0, '谷歌手机应用可直接过滤语音垃圾邮件', 'recommend', '', 'https://picsum.photos/id/251/800/600', '', '', '', '谷歌手机应用程序在2月份收到了主要更新，为快速通话控件添加了便捷的聊天功能。在接下来的几周里，Pixel，Nexus和Android One设备的默认拨号程序正在添加垃圾邮件过滤功能，并附带一个新的测试版程序，现在就可以试用该功能。', 'Google,互联网', '0.00', '', 0, 6818, 0, 16, 0, '', 1, 1, 1523721460, 1597139979, 1523635200, NULL, '', 'normal'),
(23, 1, 10, '', 2, '', 0, 'AMAZFIT米动手环2', '', '', 'https://picsum.photos/id/167/800/600', '', '', '', '随着智能穿戴设备越来越普及，市场上相关的智能手环和智能手表类产品层出不穷，不过提起好用又便宜的高性价比智能手环，几乎所有人都会第一个想到小米科技带来的小米手环系列，现如今小米手环已经发布到了第四代，可以说从功能到设计都已经趋于完美。', '互联网', '0.00', '', 0, 2121, 0, 273, 0, '', 1, 1, 1523721500, 1597139983, 1523635200, NULL, '', 'normal'),
(24, 1, 3, '', 1, '', 0, '谷歌携手美国医学协会 促进健康监测设备数据共享', '', '#f5058c', 'https://picsum.photos/id/287/800/600', '', '', '', '谷歌正在与美国医学协会（美国的一个医师游说团体）进行合作，双方达成一项挑战计划，其内容是让初创企业能够想出“促进健康监测设备数据共享的最佳新思路”。美国医学协会于周一表示，最终的挑战成果将会是一款手机应用或可穿戴设备。', 'Google,互联网', '0.00', '', 0, 9049, 0, 238, 0, '', 1, 1, 1523721555, 1597139986, 1523635200, NULL, '', 'normal'),
(28, 1, 9, '', 2, '', 0, 'iPhoneX 智能手机', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', '虽然iphone已经上新款，但iphonex仍是你能买到的最棒的智能手机，为什么这么说呢，由于现在新款iPhone X XR、XS 以及max以及陆续可以接受预定，据我所知XR的屏幕没有iPhone 好，但是价格却更贵', '互联网', '0.00', '', 0, 2532, 0, 267, 0, '', 1, 1, 1523755374, 1597139989, 1523721600, NULL, '', 'normal'),
(33, 1, 3, '', 1, '', 0, 'GitHub 去年为漏洞支付了 16.6 万美元赏金', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', '据外媒报道，去年，GitHub 向安全研究人员支付了总计 166495 美元的奖励，针对 GitHub 这个为期四年的“漏洞赏金”项目，安全研究人员会上报自己发现的系统问题和漏洞。2016 年，GitHub 一共支付了81.7万美元，而去年的支出总额显然已经翻了一倍多，几乎相当于前三年的总支出（17.7万美元）。在 2014 和 2015 两年时间里，他们一共支付了95.3万美元的奖金。', '互联网,安全', '0.00', '', 0, 6834, 0, 225, 1, '', 1, 1, 1523895893, 1597139992, 1523894400, NULL, '', 'normal'),
(34, 1, 6, '', 1, '', 0, 'Leap Motion AR头显看起来很疯狂但可能是奇迹', 'top', '', 'https://picsum.photos/id/197/800/600', '', '', '', '本周我们正在研究Leap Motion为增强现实带来的新东西。我们已经看到他们之前创造了一些令人难以置信的技术，尤其是当涉及到运动跟踪和控制时。现在看起来他们认为他们是以面向优先的方式进入AR增强现实世界。', 'AR,互联网', '0.00', '', 9999, 7008, 3, 70, 0, '', 1, 1, 1523895990, 1597140218, 1523894400, NULL, '', 'normal'),
(36, 1, 10, '', 2, '', 0, '海美迪高清4K小白盒', '', '', 'https://picsum.photos/id/1005/800/600', '', '', '', '2018年，4K机顶盒被层出不穷的人工智能新品消息所淹没，微创新不足的4K机顶盒行情显得有些疲乏。海美迪针对快速发展的潮流，推出了一款人工智能复合型产品。', 'VR,互联网', '0.00', '', 0, 657, 0, 191, 0, '', 1, 1, 1545930397, 1553991181, 1545926400, NULL, '', 'normal'),
(40, 1, 12, '', 3, '', 0, 'Qbserve 1.82 追踪你在 Mac 上的时间消耗', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', '创建多页PDF文档 多功能3D建模器 Rhinoceros 5.5 多功能3D建模器 不受限制的自由形式三维建模工具。可以创建，编辑，分析，文档，渲染，动画和翻译NURBS曲线，曲面和实体', 'Mac', '0.00', '', 0, 9782, 0, 296, 0, '', 1, 1, 1553508797, 1597139997, 1553443200, NULL, '', 'normal'),
(41, 1, 12, '', 3, '', 0, 'Sublime Text 3.2 Build 3202', '', '', 'https://picsum.photos/id/251/800/600', '', '', '', 'Sublime Text被称作Mac下的TextMate，而根据其官网介绍，Sublime Text的特点如下：拥有高效、没有干扰的界面，在编辑方面的多选、宏、代码片段等功能，以及很有特色的Minimap。', 'Sublime', '0.00', '', 0, 9990, 0, 11, 0, '', 1, 1, 1553511117, 1597140005, 1553443200, NULL, '', 'normal'),
(42, 1, 12, '', 3, '', 0, 'Secret Folder Pro 9.7 文件夹加密', '', '', 'https://picsum.photos/id/866/800/600', '', '', '', 'Secret Folder能够帮助你隐藏文件夹和其内容。如果你有私密和敏感信息不想被被人看到、修改和删除，那么只要轻松的点击几下鼠标，再输入密码就完全可以办到了。', '安全', '0.00', '', 0, 1767, 0, 234, 0, '', 1, 1, 1553520215, 1597140008, 1553443200, NULL, '', 'normal'),
(43, 1, 12, '', 3, '', 0, 'FontLab VI 6.1.3(7013) 字体编辑器', '', '', 'https://picsum.photos/id/197/800/600', '', '', '', 'FontLab VI 是一款Mac上的字体编辑软件，可以自动计算字距和指标，还可以修改字体，字形和技术字体信息，也能在zip中打开BitFonter Photofont（PHF + PNG，+ SVG），Fontographer（FOG），Glyphs，Ikarus的任意一种。', '字体', '0.00', '', 0, 3653, 0, 147, 0, '', 1, 1, 1553520395, 1597140011, 1553443200, NULL, '', 'normal'),
(44, 1, 12, '', 3, '', 0, 'Compressor 4.4.4 苹果官方出品视频解码格式转换工具', 'recommend', '', 'https://picsum.photos/id/368/800/600', '', '', '', 'Compressor 为 Final Cut Pro X 导出增添了功能和灵活性。自定了输出设置，采用分布式编码，工作更快，同时接进了一套全面的传送功能。', 'Mac', '0.00', '', 0, 3498, 0, 85, 0, '', 1, 1, 1553526718, 1597140015, 1553443200, NULL, '', 'normal'),
(45, 1, 12, '', 3, '', 0, 'TextMate 2.0 RC 23 著名的文本编辑器', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', 'TextMate是Mac下的著名的文本编辑器软件，与BBedit一起并称苹果机上的emacs和vim。尤其适合程序员使用，可以定制许多贴心使用的功能。', 'Mac', '0.00', '', 0, 3581, 0, 284, 0, '', 1, 1, 1553526799, 1597140018, 1553443200, NULL, '', 'normal'),
(46, 1, 12, '', 3, '', 0, 'Sketch 53.2 轻量易用的矢量设计工具', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', 'Sketch（App Store 精华） 是最强大的移动应用矢量绘图设计工具，对于网页设计和移动设计者来说，比PhotoShop好用N倍！尤其是在移动应用设计方面，Sketch 3 的优点在于使用简单，学习曲线低，并且功能更加强大易用。能够大大节省设计师的时间和工作量，非常适合进行网站设计、移动应用设计、图标设计等', '', '0.00', '', 0, 6531, 0, 129, 0, '', 1, 1, 1553526941, 1597140021, 1553443200, NULL, '', 'normal'),
(47, 1, 12, '', 3, '', 0, 'Pikka 2.0.4 菜单栏屏幕取色器', 'recommend', '', 'https://picsum.photos/id/1005/800/600', '', '', '', 'Pikka 是一款出色的颜色采集软件，在菜单栏以图标的形式显示，非常的简洁，点击图标就可以直接选取你所需要的颜色，非常的高效；颜色采样时还会自带一个放大器，非常的精准。', '', '0.00', '', 0, 1858, 0, 193, 0, '', 1, 1, 1553527005, 1597140024, 1553443200, NULL, '', 'normal'),
(48, 1, 12, '', 3, '', 0, 'Pixelmator 3.8.2(90215) 能修图的不只有PS', '', '', 'https://picsum.photos/id/320/800/600', '', '', '', 'Mac OS X 专有的图像处理软件。Pixelmator 界面清爽，布局灵活，熟悉 Photoshop 的人可迅速上手。软件建立在一些开源和 Mac OS X 图形技术之上，可调用 Mac 图形加速。使用起来在界面交互和流畅感上均优于 Photoshop，且与 Mac 自带程序整合不错。', '', '0.00', '', 0, 6528, 0, 102, 0, '', 1, 1, 1553527091, 1597140027, 1553443200, NULL, '', 'normal'),
(49, 1, 13, '', 3, '', 0, 'iShowU Instant 1.2.11 实时屏幕录制软件', 'recommend', '', 'https://picsum.photos/id/167/800/600', '', '', '', 'iShowU Instant是一款macOS平台的功能强大的屏幕录像软件，可以帮助我们在mac电脑上实现多种录像需求，支持游戏录制、屏幕录制、摄像头录制，还可以帮助用户对视频进行编辑。', '', '0.00', '', 0, 7308, 0, 193, 0, '', 1, 1, 1553527292, 1597140030, 1553443200, NULL, '', 'normal'),
(50, 1, 13, '', 3, '', 0, 'VideoProc 3.2(2019013001) 视频格式转换', 'recommend', '', 'https://picsum.photos/id/866/800/600', '', '', '', 'VideoProc是Mac平台上的一款视频处理软件，旨在通过全硬件加速来剪切，修剪，合并，调整，转码，编辑4k视频。', '', '0.00', '', 0, 97, 0, 38, 0, '', 1, 1, 1553527351, 1597140033, 1553443200, NULL, '', 'normal'),
(51, 1, 13, '', 3, '', 0, 'RightFont 5.4.1(2474) 超级好用的字体管理工具', 'recommend', '', 'https://picsum.photos/id/1005/800/600', '', '', '', 'RightFont是 Mac OS X 上一款非常轻巧的字体管理工具，目前已经完成了与 PhotoShop、Sketch 两大设计应用的集成。', '字体', '0.00', '', 0, 6023, 0, 191, 0, '', 1, 1, 1553694054, 1597140037, 1553616000, NULL, '', 'normal'),
(52, 1, 13, '', 3, '', 0, 'SPlayerX 4.1.4 射手播放器', 'recommend', '', 'https://picsum.photos/id/265/800/600', '', '', '', '射手播放器, 国内著名字幕发布网站旗下的播放器', '播放器', '0.00', '', 0, 3561, 0, 265, 0, '', 1, 1, 1553694139, 1597140040, 1553616000, NULL, '', 'normal'),
(53, 1, 13, '', 3, '', 0, 'Sidify Music Converter 1.3.2 优秀的音乐转换工具', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', 'Sidify Music Converter是一款苹果音乐转换软件，可以去除DRM的软件。它可以把苹果音乐转换为MP3或M4A格式，从而可以在其他设备播放。这个软件还可以将iTunes M4P音乐, M4A/M4B有声读物，以及AA/AAX 有声读物的DRM去掉，转换为自由播放的MP3, M4A和M4B。', '播放器', '0.00', '', 0, 3465, 0, 25, 0, '', 1, 1, 1553694196, 1597140043, 1553616000, NULL, '', 'normal'),
(54, 1, 13, '', 3, '', 0, 'Meta 1.9.2(2358) 音频元数据音乐标签信息编辑器', 'recommend', '', 'https://picsum.photos/id/167/800/600', '', '', '', 'Meta将帮助您管理不断增长的数字音乐收藏。它支持大多数音频格式的编辑，如MP3，MP4，M4A，FLAC，OGG，OGA，SPX，WAV等等。 AIFF和各种元数据格式，包括ID3v1，ID3v2.3，ID3v2.4，ITunes MP4，Vorbis注释和APE标签。', '', '0.00', '', 0, 3770, 0, 191, 0, '', 1, 1, 1553694251, 1597140047, 1553616000, NULL, '', 'normal'),
(55, 1, 13, '', 3, '', 0, 'DRmare Audio Converter 2.0.2.16 DRM音频清除转换应用', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', 'DRmare Audio Converter是mac平台上一款强大的DRM音频清除转换工具，它可以帮助您从受保护的Apple Music，iTunes歌曲和Audible有声读物中删除DRM，自定义输出音频格式和质量，整理专辑标签信息等。', '', '0.00', '', 0, 426, 0, 93, 0, '', 1, 1, 1553694301, 1597140049, 1553616000, NULL, '', 'normal'),
(56, 1, 13, '', 3, '', 0, 'Joyoshare Screen Recorder 2.0.0.22 Mac屏幕录制应用', '', '', 'https://picsum.photos/id/197/800/600', '', '', '', 'Joyoshare Screen Recorder可以用来录制视频、音频等任何屏幕上的活动，一键即可开始录制，非常便捷。', '屏幕录制', '0.00', '', 0, 4178, 0, 49, 0, '', 1, 1, 1553694911, 1597140059, 1553616000, NULL, '', 'normal'),
(57, 1, 13, '', 3, '', 0, 'Camtasia 2018.0.8(105822) 强大且易用的视频录制和剪辑软件', 'recommend', '', 'https://picsum.photos/id/251/800/600', '', '', '', 'Camtasia Studio是一套专业的屏幕录像软件，同时包含Camtasia 录像器、Camtasia Studio（编辑器）、Camtasia 菜单制作器、Camtasia 剧场、Camtasia 播放器和Screencast的内置功能。', '视频录制', '0.00', '', 0, 5514, 0, 83, 0, '', 1, 1, 1553695266, 1597140061, 1553616000, NULL, '', 'normal'),
(58, 1, 13, '', 3, '', 0, 'iRingg 1.0.38 iPhone铃声制作', '', '', 'https://picsum.photos/id/320/800/600', '', '', '', 'iRingg可以帮助我们在Mac电脑上非常方便高效地制作iPhone铃声，并且一键发送至设备。', '铃声制作', '0.00', '', 0, 7164, 0, 228, 0, '', 1, 1, 1553695576, 1597140064, 1553616000, NULL, '', 'normal'),
(59, 1, 13, '', 3, '', 0, 'Autodesk MayaLT 2019 最牛3D动画软件', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', 'Autodesk Maya 是一款Mac OS平台上的业界顶级的三维动画软件，由todesk公司出品的。可以说是三维动画制作必备工具，集成 Bifrost , Bifrost Node Editor 材质编辑器, 渲染窗口, 建模工具, 菜单显示优化, 插件管理器优化, XGEN正是集成。', '动画软件', '0.00', '', 0, 6465, 0, 287, 0, '', 1, 1, 1553695767, 1597140068, 1553616000, NULL, '', 'normal'),
(60, 1, 13, '', 3, '', 0, 'Cinemagraph Pro 2.7.1 专业的动态图片与视频制作工具', 'recommend', '', 'https://picsum.photos/id/866/800/600', '', '', '', 'Cinemagraph Pro是一款专业的动态图片与视频制作工具, 全新的动态蒙版技术与预览技术. 将可以实时输出 HP 与 4K 图片效果.', '视频制作', '0.00', '', 0, 8369, 0, 96, 0, '', 1, 1, 1553695899, 1597140070, 1553616000, NULL, '', 'normal'),
(61, 1, 13, '', 3, '', 0, 'Loopback 2.0.0 高端虚拟录音工作室 ', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', 'Loopback 是一款Mac平台上的可以创建虚拟音频设备的工具，从应用程序和音频的输入的设备创建虚拟音频设备的声音，然后将其发送给音频处理应用程序。Loopback 会给了你一个高端录音工作室。', '虚拟录音', '0.00', '', 0, 821, 0, 137, 0, '', 1, 1, 1553696042, 1597140076, 1553616000, NULL, '', 'normal'),
(62, 1, 13, '', 3, '', 0, 'MacX Video Converter Pro 6.4.0(20181213) 视频转换器', 'recommend', '', 'https://picsum.photos/id/320/800/600', '', '', '', 'MacX DVD Video Converter Pro 是一款很好用的视频转换器，支持几乎所有的视频格式之间的互相转换。', '视频转换器', '0.00', '', 0, 280, 0, 233, 0, '', 1, 1, 1553696153, 1597140079, 1553616000, NULL, '', 'normal'),
(63, 1, 13, '', 3, '', 0, 'Swinsian 2.1.11 专业的好用的Mac音乐播放器', '', '', 'https://picsum.photos/id/167/800/600', '', '', '', 'Swinsian Mac版是Mac os平台上的一款专业的好用的Mac音乐播放器，Swinsian可以管理自己的音频文件，你可以自己根据自己的浏览方式浏览自己的音频文件，这款软件要比iTunes好用的多，不需要那么繁琐的操作，还可以通过这款软件下载文件到移动设备。', '音乐播放器', '0.00', '', 0, 7916, 0, 190, 0, '', 1, 1, 1553696252, 1597140082, 1553616000, NULL, '', 'normal'),
(64, 1, 13, '', 3, '', 0, 'ProPresenter 6.3.8 现场演出和媒体演示工具', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', 'ProPresenter是一个演示系统，利用两个屏幕，使用户能够快速，轻松地在一个屏幕上演示幻灯片同时控制另一个屏幕演示文稿。', '媒体演示', '0.00', '', 0, 7860, 0, 10, 0, '', 1, 1, 1553696367, 1597140084, 1553616000, NULL, '', 'normal'),
(65, 1, 13, '', 3, '', 0, 'PrimoMusic 1.6-20181024 音乐管理工具', '', '', 'https://picsum.photos/id/251/800/600', '', '', '', 'PrimoMusic 是一款音乐管理工具，可以帮助管理iPhone、iPad、iPod上的音乐，支持导入导出音乐', '音乐管理', '0.00', '', 0, 8090, 0, 284, 0, '', 1, 1, 1553696539, 1597140087, 1553616000, NULL, '', 'normal'),
(66, 1, 13, '', 3, '', 0, 'Wondershare AllMyMusic 2.4.1 音频录制工具', '', '', 'https://picsum.photos/id/197/800/600', '', '', '', 'AllMyMusic是一款Mac上的音频录制工具，由Wondershare出品，这款软件可以录制电脑内播放的任何声音，比如你在线播放的音乐、在线的视频等都可以通过这款软件录制下载，然后保存到本地，日后即可离线播放。', '音频录制', '0.00', '', 0, 2933, 0, 191, 0, '', 1, 1, 1553696648, 1597140090, 1553616000, NULL, '', 'normal'),
(67, 1, 12, '', 3, '', 0, 'Jutoh 2.89.3 电子书设计制作软件', '', '', 'https://picsum.photos/id/1005/800/600', '', '', '', 'Jutoh 是一款电子书设计编辑制作软件，它可以很容易地创造流行的格式。通过现有的文件，使用新建项目向导，你可以在几秒钟内创建你的项目，或从头使用内置的样式文本编辑器，创造你的作品。通过内置的封面编辑器，你可以从Jutoh的模板或创建自己的封面。', '电子书设计制作', '0.00', '', 0, 2916, 0, 167, 0, '', 1, 1, 1553696834, 1597140093, 1553616000, NULL, '', 'normal'),
(68, 1, 12, '', 3, '', 0, 'Adobe Acrobat Pro DC 2019.010.20098 强大的PDF编辑软件', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', '该产品颠覆了当今文件的处理方式，旨在提高文件处理效率！', 'PDF编辑软件', '0.00', '', 0, 9017, 0, 253, 0, '', 1, 1, 1553697041, 1597140097, 1553616000, NULL, '', 'normal'),
(69, 1, 12, '', 3, '', 0, 'MarsEdit 4.2.6 博客写作软件', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', 'MarsEdit是一款博客写作软件，可同步博客到本地，预览、编辑、发布、分类、标签等一系列功能。可同步到常见博客上', '博客写作', '0.00', '', 0, 5071, 0, 3, 0, '', 1, 1, 1553697200, 1597140100, 1553616000, NULL, '', 'normal'),
(70, 1, 12, '', 3, '', 0, 'Devonthink Pro Office 2.11.2 文件管理用具', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', 'DEVONthink Pro Office 是一款Mac上知名的数字多媒体资源管理工具，支持统一管理Mac上的所有多媒体文档，如PDF、Word、PPT、TXT等所有文档，并支持OCR图片文字识别、快速分享、只能搜索等功能', '文件管理', '0.00', '', 0, 5201, 0, 173, 0, '', 1, 1, 1553697475, 1597140103, 1553616000, NULL, '', 'normal'),
(71, 1, 12, '', 3, '', 0, 'Downcast 2.9.38 Podcast订阅工具', '', '', 'https://picsum.photos/id/251/800/600', '', '', '', 'Downcast 可以下载、 播放和同步你最喜欢的播客。', 'Podcast订阅', '0.00', '', 0, 3153, 0, 256, 0, '', 1, 1, 1553697600, 1597140107, 1553616000, NULL, '', 'normal'),
(72, 1, 12, '', 3, '', 0, 'Mate Translate 5.1.3 多国语言即时翻译工具', '', '', 'https://picsum.photos/id/167/800/600', '', '', '', 'Mate Translate是一款多国语言即时翻译工具，支持103种语言之间的即时互译。', '即时翻译', '0.00', '', 0, 3093, 0, 298, 0, '', 1, 1, 1553697685, 1597140110, 1553616000, NULL, '', 'normal'),
(73, 1, 8, '', 2, '', 0, '极简化设计手表', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', '手表在今天已经不再是一件简单的计时工具，它能反射出佩戴者的气质、品味和性格。极简风格腕表是现在年轻人最喜欢的手表风格之一，简单洁白的表盘成为了文艺青年们个性与思想的表达。今天就为大家介绍十二款最好看的极简手表，如果您也喜欢极简手表，那就一起来看看吧。', '智能手表', '0.00', '', 0, 366, 0, 62, 0, '', 1, 1, 1553697736, 1597140113, 1553616000, NULL, '', 'normal'),
(74, 1, 12, '', 3, '', 0, 'Banktivity 7.1.2 财务管理软件', '', '', 'https://picsum.photos/id/320/800/600', '', '', '', 'Banktivity是一款Mac上强大专业的财务管理软件，具有丰富的数据导入和导出功能、多账户管理、预算管理、数据同步、智能的报表等等功能', '财务管理', '0.00', '', 0, 9100, 0, 281, 0, '', 1, 1, 1553697775, 1597140116, 1553616000, NULL, '', 'normal'),
(75, 1, 12, '', 3, '', 0, 'eZip 粉丝力荐的压缩软件', '', '', 'https://picsum.photos/id/866/800/600', '', '', '', 'eZip是一款功能上跟 Betterzip 差不多，支持格式很多，支持不解压预览，支持QuickLook，支持拖拽解压。', '压缩软件', '0.00', '', 0, 9441, 0, 276, 0, '', 1, 1, 1553697894, 1597140119, 1553616000, NULL, '', 'normal'),
(76, 1, 12, '', 3, '', 0, 'Autodesk AutoCAD 2019 强大的CAD绘图工具', '', '', 'https://picsum.photos/id/197/800/600', '', '', '', 'AutoCAD 2015 for mac是用于mac OS平台二维绘图、详细绘制、设计文档和基本三维的设计软件。现已经成为国际上广为流行的绘图工具。', 'CAD绘图', '0.00', '', 0, 7556, 0, 6, 0, '', 1, 1, 1553698018, 1597140122, 1553616000, NULL, '', 'normal'),
(77, 1, 14, '', 3, '', 0, 'iTubeDownloader 6.4.8 在线视频下载工具', '', '', 'https://picsum.photos/id/1005/800/600', '', '', '', 'iTubeDownloader 是一款Mac上优秀的在线视频下载工具，操作简单，只需要复制网址到软件上就可以自动下载在线视频，支持1080高清视频下载，可以帮助用户轻松的下载Youtube等网站上的所有视频文件到本地浏览观看。', '在线视频下载', '0.00', '', 0, 8326, 0, 32, 0, '', 1, 1, 1553698196, 1597140125, 1553616000, NULL, '', 'normal'),
(78, 1, 14, '', 3, '', 0, 'Downie 3.6.4 视频下载工具', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', '简单的拖放链接到Downie，它就会下载该网站上的视频。', '视频下载', '0.00', '', 0, 323, 0, 254, 0, '', 1, 1, 1553698506, 1597140128, 1553616000, NULL, '', 'normal'),
(79, 1, 14, '', 3, '', 0, 'MediaHuman Youtube Downloader 3.9.9.13(1803) 视频下载', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', 'MediaHuman Youtube Downloader是一个简单的OSX实用程序，它可以帮助您以一种高效的方式处理任务：可以同时处理多个视频，只能提取音频，并且可以将歌曲发送到iTunes库。可用于多个视频共享平台的下载工具。', '视频下载', '0.00', '', 0, 1199, 0, 21, 0, '', 1, 1, 1553698704, 1597140131, 1553616000, NULL, '', 'normal'),
(80, 1, 14, '', 3, '', 0, 'Jump Desktop 8.2.14 远程桌面', '', '', 'https://picsum.photos/id/197/800/600', '', '', '', 'Jump Desktop 是MAC OS平台上的一款远程控制程序，支持Windows和Mac 双平台，通过邮件关联即可帮助设备自动找到桌面并进行操作。', '', '0.00', '', 0, 9870, 0, 219, 0, '', 1, 1, 1553698807, 1597140133, 1553616000, NULL, '', 'normal'),
(81, 1, 9, '', 2, '', 0, '无线WIFI智能机器人', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', 'WiFi是一种无线局域网运用技术，其出现以来，凭借组网方便、易于扩展等特点，有着广泛的应用前景。而无线接入和高速传输是WiFi的主要技术优点，WiFi技术与机器人技术的结合便产生了WiFiRobot。', '机器人', '0.00', '', 0, 6738, 0, 57, 0, '', 1, 1, 1553698859, 1597140137, 1553616000, NULL, '', 'normal'),
(82, 1, 14, '', 3, '', 0, 'WiFi Explorer Pro 2.1.6 Mac上强大的WiFi无线扫描和管理工具', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', 'WiFi Explorer Pro是一款运行在Mac平台上的WiFi资源管理器专业版，可以帮助用户监控和排除无线网络故障，还具备信息元素解码、注释和自定义颜色、频谱分析整合、增强过滤等实用的功能。', 'WiFi无线扫描和管理', '0.00', '', 0, 9189, 0, 10, 0, '', 1, 1, 1553698936, 1597140140, 1553616000, NULL, '', 'normal'),
(83, 1, 14, '', 3, '', 0, 'WiFi Scanner 2.9 无线WiFi网络管理工具', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', 'WiFi Scanner是一款Mac平台的Wifi无线网络扫描管理软件，可以查找正在广播 SSID 的接入点和客户端。它可以用于WiFi现场调查，WiFi 的发现，并连接到的无线网络。该工具可以配合BSSID/MAC地址显示以dBm为单位的信号强度。', '无线WiFi网络管理', '0.00', '', 0, 3951, 0, 266, 0, '', 1, 1, 1553699076, 1597140143, 1553616000, NULL, '', 'normal'),
(84, 1, 14, '', 3, '', 0, '4K Video Downloader 4.5.0 下载高品质的YouTube视频', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', '4K Video Downloader 是“一个视频下载工具，如此简单，就是一个视频下载工具该有的样子”。复制 YouTube 视频链接并点击界面左上角的 “Paste URL”，就能自动识别 4K 甚至是原始分辨率片源。接下来，选择分辨率、格式后就开始下载了。', 'YouTube视频', '0.00', '', 0, 2335, 0, 155, 0, '', 1, 1, 1553699199, 1597140146, 1553616000, NULL, '', 'normal'),
(85, 1, 14, '', 3, '', 0, 'VideoDuke 1.0(204) 视频下载', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', 'VideoDuke 支持在网站视频下载所有流行格式的视频文件，可以以各种文件格式保存。只需将链接粘贴到应用中即可完成。', '视频下载', '0.00', '', 0, 8787, 0, 254, 0, '', 1, 1, 1553699324, 1597140149, 1553616000, NULL, '', 'normal'),
(86, 1, 14, '', 3, '', 0, 'Paw 3.1.8 实用的HTTP/REST服务测试工具', '', '', 'https://picsum.photos/id/251/800/600', '', '', '', 'Paw 是一款Mac上实用的HTTP/REST服务测试工具，完美兼容最新的OS X El Capitan系统，Paw可以让Web开发者设置各种请求Header和参数，模拟发送HTTP请求，测试响应数据，支持OAuth, HTTP Basic Auth, Cookies，JSONP等，这对于开发Web服务的应用很有帮助，非常实用的一款Web开发辅助工具。', 'HTTP/REST服务测试', '0.00', '', 0, 5952, 0, 132, 0, '', 1, 1, 1553699458, 1597140152, 1553616000, NULL, '', 'normal'),
(87, 1, 14, '', 3, '', 0, 'WiFiSpoof 3.4.3 MAC地址修改工具', '', '', 'https://picsum.photos/id/866/800/600', '', '', '', 'WiFiSpoof是一款适用于Mac系统的wifi地址修改器，用户只需要安装WiFiSpoof for mac，点击打开就能很直观的修改Mac地址，很容易操作。', 'MAC地址修改', '0.00', '', 0, 4000, 0, 207, 0, '', 1, 1, 1553699589, 1597140155, 1553616000, NULL, '', 'normal'),
(88, 1, 9, '', 2, '', 0, 'iPod Shuffle 播放器', '', '', 'https://picsum.photos/id/1005/800/600', '', '', '', '从2005年一代的512MB闪存到2008年四代的2GB闪存，从一代的口香糖式外形设计到四代的背夹式小巧设计，4年时间的发展奠定了iPod shuffle在播放器领域的地位，一种代表时尚与青春的态度，可以说风靡万千少男少女，真正的做到深入人心！', '', '0.00', '', 0, 2434, 0, 45, 0, '', 1, 1, 1553699651, 1597140157, 1553616000, NULL, '', 'normal'),
(89, 1, 14, '', 3, '', 0, 'Mac VideoRipper Pro 1.0.8 在线视频下载工具', '', '', 'https://picsum.photos/id/167/800/600', '', '', '', 'Mac Video Ripper Pro是Mac平台上的一款在线视频下载工具，可以帮助用户在各大在线视频网站上下载自己需要的视频文件。', '在线视频下载', '0.00', '', 0, 179, 0, 193, 0, '', 1, 1, 1553699698, 1597140160, 1553616000, NULL, '', 'normal'),
(90, 1, 14, '', 3, '', 0, 'CrossFTP 1.99.0 非常给力的ftp/sftp工具', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', 'CrossFTP 是一款非常给力的Mac OS FTP客户端软件，简直就是Mac上的FlashFXP。支持中文，且免费，而且在界面和功能上和FlashFXP以及CuteFTP类似。', '', '0.00', '', 0, 1528, 0, 252, 0, '', 1, 1, 1553699820, 1597140163, 1553616000, NULL, '', 'normal'),
(91, 1, 14, '', 3, '', 0, 'TeamViewer 远程支持、远程访问、在线协作和会议', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', 'TeamViewer是一个能在任何防火墙和NAT代理的后台用于远程控制，桌面共享和文件传输的简单且快速的解决方案。', '远程访问', '0.00', '', 0, 7410, 0, 56, 0, '', 1, 1, 1553699971, 1597140167, 1553616000, NULL, '', 'normal'),
(92, 1, 9, '', 2, '', 0, 'Macbook Pro Retina 笔记本', '', '', 'https://picsum.photos/id/320/800/600', '', '', '', 'MacBook Pro Retina拥有更先进的元件，更先进的技术——最新的第四代双核与四核Intel处理器、速度高达700MB/s 的基于PCIe闪存、被称为5G网络的802.11ac无线网络技术、高达20Gb/s速度的Thunderbolt 2端口。', '', '0.00', '', 0, 7035, 0, 289, 0, '', 1, 1, 1553700006, 1597140169, 1553616000, NULL, '', 'normal'),
(93, 1, 14, '', 3, '', 0, 'PeakHour 4.0.12 实时了解您的网络状况', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', 'Peakhour是Mac OS X平台上的一款帮助用户监控网络流量的Mac网络监控软件，提供您在实时互联网或无线网络的活动即时视图。', 'PeakHour', '0.00', '', 0, 6950, 0, 178, 0, '', 1, 1, 1553700072, 1597140172, 1553616000, NULL, '', 'normal'),
(94, 1, 14, '', 3, '', 0, 'Instashare 1.4.6 apple设备文件快传工具', '', '', 'https://picsum.photos/id/251/800/600', '', '', '', 'Instashare是一款帮助Apple设备互相快速传送文件的Mac工具， 支持Mac，iPhone，iPad三大设备，iDevice用户需要Instashare iOS App来配合使用。', '文件快传', '0.00', '', 0, 8732, 0, 178, 0, '', 1, 1, 1553700165, 1597140175, 1553616000, NULL, '', 'normal'),
(95, 1, 14, '', 3, '', 0, 'Little Snitch 4.0.3_CR2 防火墙工具', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', 'Little Snitch 是一款 Mac OS X 上的个人安全软件，能防止应用程序在你不知道的情况下自动访问网络，你可以定义不允许访问。如果你担心你的Mac连接到你不想去的地方，用它保护你。', '防火墙工具', '0.00', '', 0, 3364, 0, 273, 0, '', 1, 1, 1553700265, 1597140178, 1553616000, NULL, '', 'normal'),
(96, 1, 9, '', 2, '', 0, 'GoPro Hero4 Silver 高清摄像机', '', '', 'https://picsum.photos/id/866/800/600', '', '', '', '玩自拍，玩高清摄影，玩极限摄影，有一个牌子不得不提，这就是GoPro，也就是近期这个玩具开始时兴起来，无论是一些孩子通过GoPro拍到了外太空上地球的影像，还是飞行员用GoPro玩自拍搞得机毁人亡，还是100岁老太跳伞，都有GoPro的身影，同样越来越多的人开始发掘GoPro的潜力和可玩性。', '', '0.00', '', 0, 5324, 0, 281, 0, '', 1, 1, 1553700424, 1597140181, 1553616000, NULL, '', 'normal'),
(97, 1, 14, '', 3, '', 0, 'Yummy FTP Alias 2.2.13 FTP工具', '', '', 'https://picsum.photos/id/167/800/600', '', '', '', 'Yummy FTP Alias版是一款基于Yummy FTP的工具软件', 'FTP工具', '0.00', '', 0, 862, 0, 187, 0, '', 1, 1, 1553700484, 1597140184, 1553616000, NULL, '', 'normal'),
(98, 1, 9, '', 2, '', 0, 'Samsung Galaxy 智能手机', '', '', 'https://picsum.photos/id/197/800/600', '', '', '', '据外媒最新消息，美国权威消费者杂志《消费者报告》对全球最新智能手机进行了评比，三星Galaxy S10+以90分拿下榜单第一。而苹果iPhone XS Max和三星Galaxy S10虽分数同样也是90分，但却以小数点的差距，分别位列第二位和第三位。', '', '0.00', '', 0, 8470, 0, 112, 0, '', 1, 1, 1553700529, 1597140187, 1553616000, NULL, '', 'normal'),
(99, 1, 14, '', 3, '', 0, 'Transloader 2.1 MacOS、iOS多平台协作的下载工具', '', '', 'https://picsum.photos/id/1005/800/600', '', '', '', 'Transloader 可以让你从你的iPhone或iPad远程启动在你的Mac上的文件下载。', '多平台协作', '0.00', '', 0, 3166, 0, 141, 0, '', 1, 1, 1553700595, 1597140189, 1553616000, NULL, '', 'normal'),
(100, 1, 9, '', 2, '', 0, 'Apple watch 智能手表', '', '', 'https://picsum.photos/id/265/800/600', '', '', '', '从 2015 年，苹果推出第一代 Apple Watch 后，在这 3 年时间里，Apple Watch 已经凭借着较准确的定位、合理的迭代升级逐渐成为了目前智能手表行业相对较优的选择。', '', '0.00', '', 0, 3934, 0, 168, 0, '', 1, 1, 1553700683, 1597140192, 1553616000, NULL, '', 'normal'),
(101, 1, 14, '', 3, '', 0, 'vSSH 1.11.1 强大的多标签ssh工具', '', '', 'https://picsum.photos/id/197/800/600', '', '', '', 'Vssh for Mac是一款mac平台的SSH客户端工具，支持用户名和密码加密，非常实用的一款SSH客户端工具。', '多标签ssh工具', '0.00', '', 0, 6124, 0, 117, 0, '', 1, 1, 1553700703, 1597140196, 1553616000, NULL, '', 'normal'),
(102, 1, 14, '', 3, '', 0, 'Royal TSX 1.4.6 好用的多终端工具', '', '', 'https://picsum.photos/id/450/800/600', '', '', '', 'Royal TSX专为服务器管理员、系统工程师、开发人员和IT信息工作者开发设计，是一款访问远程系统使用不同协议的完美工具。', '多终端工具', '0.00', '', 0, 1021, 0, 102, 0, '', 1, 1, 1553700786, 1597140199, 1553616000, NULL, '', 'normal'),
(103, 1, 9, '', 2, '', 0, '高保真无绳WIFI耳机', '', '', 'https://picsum.photos/id/368/800/600', '', '', '', '在蓝牙4.2时代，续航、延迟与偶尔的断线是真无线耳机无法解决的问题，即使是价值超过千元的大品牌，比如苹果的airpod、索尼WF-1000X降噪豆、BOSESoundsportFree也无法幸免，毕竟蓝牙4.2的硬件条件并不十分完善。', '', '0.00', '', 0, 3932, 0, 285, 0, '', 1, 1, 1553700875, 1597140201, 1553616000, NULL, '', 'normal'),
(104, 1, 10, '', 2, '', 0, '智能游戏WIFI无线手柄', '', '', 'https://picsum.photos/id/251/800/600', '', '', '', '游戏手柄品种琳琅满目，而游戏手柄除了可以在电脑上进行有线连接以外，很多手柄厂商也设计出了无线连接的手柄，毕竟厂商和消费者心知肚明：无线才是未来。与手机去除掉耳机孔不同，手柄的无线设计非常受欢迎。', '', '0.00', '', 0, 5667, 0, 296, 0, '', 1, 1, 1553702809, 1597140204, 1553702400, NULL, '', 'normal'),
(105, 1, 8, '', 2, '', 0, '智能WIFI无人机', '', '', 'https://picsum.photos/id/866/800/600', '', '', '', '2017四川航展无人机专项展可谓异彩纷呈，既有像翼龙、彩虹、鹞鹰这样的空中“大块头”，也有新晋的太阳能Wifi无人机、以及貌似怪兽的软体无人机。更多的，当然还是应用范围涵盖安防、测绘、巡线、植保等行业应用的各种款式工业无人机，以及与此相关的行业上下游企业。', '', '0.00', '', 0, 2248, 0, 50, 0, '', 1, 1, 1553737769, 1597140206, 1553702400, NULL, '', 'normal'),
(106, 1, 8, '', 2, '', 0, '米家九号平衡车Plus', '', '', 'https://picsum.photos/id/1005/800/600', '', '', '', '相较上一代九号平衡车，九号平衡车Plus拥有八大改进，脚踏面积相较上一代提升19%，底盘高度离地增加17%，采用11英寸高性能防滑胎，新一代平衡车电机功率为800W。', '', '0.00', '', 0, 1612, 0, 92, 0, '', 1, 1, 1553738716, 1597140209, 1553702400, NULL, '', 'normal'),
(107, 1, 8, '', 2, '', 0, '米家无线投影仪青春版', '', '', 'https://picsum.photos/id/287/800/600', '', '', '', '从2017年推出首款激光电视以来，小米正式“扎根”智能微投领域，目前已经推出了三款家用投影产品，其中9999元的激光电视主要针对的还是高端家庭用户，而米家投影仪系列的两款产品则更多的面向普通家庭和年轻消费群体', '', '0.00', '', 0, 381, 0, 83, 0, '', 1, 1, 1553738898, 1597140212, 1553702400, NULL, '', 'normal'),
(108, 1, 8, '', 2, '', 0, '米家互联网洗烘一体机', '', '', 'https://picsum.photos/id/320/800/600', 'https://picsum.photos/id/167/800/600,https://picsum.photos/id/450/800/600,https://picsum.photos/id/251/800/600,https://picsum.photos/id/368/800/600', '', '', '小米近日正式发布米家互联网洗烘一体机10kg版。米家互联网洗烘一体机10kg版采用BLDC变频电机、1400高转速、一级能效、以及包含智能空气洗在内的21种洗涤模式，性能强劲、功能齐全。', '', '0.00', '', 0, 2632, 0, 143, 0, '', 1, 1, 1553739057, 1597198822, 1553702400, NULL, '', 'normal'),
(109, 1, 8, '', 2, '', 0, '奥睿科ORICO HU3温室加湿器', 'top', 'b|#162ceb', 'https://picsum.photos/id/287/800/600', '', '', '', '加湿器可以说是目前家里比较常见的生活用品之一了，特别是爱美的女性朋友们，为了能保持容颜润泽，经常会在身旁备用一台。其实对于更多的用户来说，加湿器的主要作用还是放在空调房里，用来调节房间湿度', '', '0.00', '', 9999, 6014, 0, 168, 0, '', 1, 1, 1553739167, 1597140221, 1553702400, NULL, '', 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_autolink`
--

DROP TABLE IF EXISTS `cz_cms_autolink`;
CREATE TABLE IF NOT EXISTS `cz_cms_autolink` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `url` varchar(255) DEFAULT '' COMMENT '链接',
  `target` enum('self','blank') DEFAULT 'blank' COMMENT '打开方式',
  `weigh` int(10) DEFAULT '0' COMMENT '排序',
  `views` int(10) UNSIGNED DEFAULT '0' COMMENT '点击次数',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自动链接表';

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_block`
--

DROP TABLE IF EXISTS `cz_cms_block`;
CREATE TABLE IF NOT EXISTS `cz_cms_block` (
  `id` smallint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(30) DEFAULT '' COMMENT '类型',
  `name` varchar(50) DEFAULT '' COMMENT '名称',
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `image` varchar(100) DEFAULT '' COMMENT '图片',
  `url` varchar(100) DEFAULT '' COMMENT '链接',
  `content` mediumtext COMMENT '内容',
  `parsetpl` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '解析模板标签',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `begintime` int(10) DEFAULT NULL COMMENT '开始时间',
  `endtime` int(10) DEFAULT NULL COMMENT '结束时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COMMENT='区块表';

--
-- 转存表中的数据 `cz_cms_block`
--

INSERT INTO `cz_cms_block` (`id`, `type`, `name`, `title`, `image`, `url`, `content`, `parsetpl`, `weigh`, `createtime`, `updatetime`, `begintime`, `endtime`, `status`) VALUES
(1, '焦点图', 'indexfocus', '首页焦点图标题1', 'https://picsum.photos/id/368/650/270', '/', '', 0, 1, 1553606219, 1553606219, NULL, NULL, 'normal'),
(2, '焦点图', 'indexfocus', '首页焦点图标题2', 'https://picsum.photos/id/866/650/270', '/', '', 0, 2, 1553606219, 1553606219, NULL, NULL, 'normal'),
(3, '焦点图', 'indexfocus', '首页焦点图标题3', 'https://picsum.photos/id/450/650/270', '/', '', 0, 3, 1553606219, 1553606219, NULL, NULL, 'normal'),
(4, '文字', 'contactus', '联系我们', '', '', '', 0, 4, 1553606219, 1553606219, NULL, NULL, 'normal'),
(5, '文字', 'partner', '合作伙伴', '', '', '<li><a href=\"/\"><img src=\"__ADDON__/img/logo/58.png\" /></a></li><li><a href=\"/\"><img src=\"__ADDON__/img/logo/360.png\" /></a></li><li><a href=\"/\"><img src=\"__ADDON__/img/logo/alipay.png\" /></a></li><li><a href=\"/\"><img src=\"__ADDON__/img/logo/baidu.png\" /></a></li><li><a href=\"/\"><img src=\"__ADDON__/img/logo/boc.png\" /></a></li><li><a href=\"/\"><img src=\"__ADDON__/img/logo/cctv.png\" /></a></li><li><a href=\"/\"><img src=\"__ADDON__/img/logo/didi.png\" /></a></li><li><a href=\"/\"><img src=\"__ADDON__/img/logo/iqiyi.png\" /></a></li><li><a href=\"/\"><img src=\"__ADDON__/img/logo/qq.png\" /></a></li><li><a href=\"/\"><img src=\"__ADDON__/img/logo/suning.png\" /></a></li><li><a href=\"/\"><img src=\"__ADDON__/img/logo/taobao.png\" /></a></li><li><a href=\"/\"><img src=\"__ADDON__/img/logo/tuniu.png\" /></a></li><li><a href=\"/\"><img src=\"__ADDON__/img/logo/weibo.png\" /></a></li>', 0, 5, 1553606219, 1553757753, NULL, NULL, 'normal'),
(6, '文字', 'footer', '底部链接', '', '', '<div class=\"col-md-3 col-sm-3\">\n                            <div class=\"footer-logo\">\n                                <a href=\"#\"><i class=\"fa fa-bookmark\"></i></a>\n                            </div>\n                            <p class=\"copyright\"><small>© 2017-2020. All Rights Reserved. <br>\n                                    我的网站\n                                </small>\n                            </p>\n                        </div>\n                        <div class=\"col-md-5 col-md-push-1 col-sm-5 col-sm-push-1\">\n                            <div class=\"row\">\n                                <div class=\"col-xs-4\">\n                                    <ul class=\"links\">\n                                        <li><a href=\"#\">关于我们</a></li>\n                                        <li><a href=\"#\">发展历程</a></li>\n                                        <li><a href=\"#\">服务项目</a></li>\n                                        <li><a href=\"#\">团队成员</a></li>\n                                    </ul>\n                                </div>\n                                <div class=\"col-xs-4\">\n                                    <ul class=\"links\">\n                                        <li><a href=\"#\">新闻</a></li>\n                                        <li><a href=\"#\">资讯</a></li>\n                                        <li><a href=\"#\">推荐</a></li>\n                                        <li><a href=\"#\">博客</a></li>\n                                    </ul>\n                                </div>\n                                <div class=\"col-xs-4\">\n                                    <ul class=\"links\">\n                                        <li><a href=\"#\">服务</a></li>\n                                        <li><a href=\"#\">圈子</a></li>\n                                        <li><a href=\"#\">论坛</a></li>\n                                        <li><a href=\"#\">广告</a></li>\n                                    </ul>\n                                </div>\n                            </div>\n                        </div>\n                        <div class=\"col-md-3 col-sm-3 col-md-push-1 col-sm-push-1\">\n                            <div class=\"footer-social\">\n                                <a href=\"#\"><i class=\"fa fa-weibo\"></i></a>\n                                <a href=\"#\"><i class=\"fa fa-qq\"></i></a>\n                                <a href=\"#\"><i class=\"fa fa-wechat\"></i></a>\n                            </div>\n                        </div>', 0, 6, 1553606219, 1553606219, NULL, NULL, 'normal'),
(7, '文字', 'friendlink', '友情链接 ', '', '', '<a href=\"https://gitee.com\" title=\"FastAdmin码云仓库\">码云</a> <a href=\"https://github.com\" title=\"FastAdminGithub仓库\">Github</a> <a href=\"https://www.fastadmin.net\" title=\"FastAdmin - 极速后台开发框架\">FastAdmin</a>', 0, 7, 1553606219, 1553757863, NULL, NULL, 'normal'),
(8, '边栏', 'sidebarad1', '边栏广告1', '', '', '<a href=\"https://www.fastadmin.net/store/ask.html\">\r\n    <img src=\"https://cdn.fastadmin.net/assets/addons/ask/img/sidebar/howto.png\" class=\"img-responsive\">\r\n</a>', 0, 8, 1553606219, 1553958914, NULL, NULL, 'normal'),
(9, '边栏', 'sidebarad2', '边栏广告2', '', '', '<a href=\"https://www.fastadmin.net/go/aliyun\" rel=\"nofollow\" title=\"推荐企业服务器\" target=\"_blank\">\r\n        <img src=\"https://cdn.fastadmin.net/uploads/store/aliyun-sidebar.png\" class=\"img-responsive\" alt=\"\">\r\n</a>', 0, 9, 1553606219, 1553958942, NULL, NULL, 'normal'),
(10, '焦点图', 'downloadfocus', '下载中心焦点图标题1', 'https://picsum.photos/id/320/650/270', '/', '', 0, 10, 1553606219, 1553606257, NULL, NULL, 'normal'),
(11, '焦点图', 'downloadfocus', '下载中心焦点图标题2', 'https://picsum.photos/id/197/650/270', '/', '', 0, 11, 1553606243, 1553606273, NULL, NULL, 'normal'),
(12, '焦点图', 'downloadfocus', '下载中心焦点图标题3', 'https://picsum.photos/id/1005/650/270', '/', '', 0, 12, 1553607965, 1553607965, NULL, NULL, 'normal'),
(13, '焦点图', 'downloadfocus', '下载中心焦点图标题4', 'https://picsum.photos/id/1006/650/270', '/', '', 0, 13, 1553608006, 1553608006, NULL, NULL, 'normal'),
(14, '焦点图', 'downloadfocus', '下载中心焦点图标题5', 'https://picsum.photos/id/251/650/270', '/', '', 0, 14, 1553608049, 1553608049, NULL, NULL, 'normal'),
(15, '焦点图', 'downloadfocus', '下载中心焦点图标题6', 'https://picsum.photos/id/167/650/270', '/', '', 0, 15, 1553608086, 1553608086, NULL, NULL, 'normal'),
(16, '焦点图', 'newsfocus', '新闻中心焦点图标题1', 'https://picsum.photos/id/287/650/270', '/', '', 0, 16, 1553606219, 1553606257, NULL, NULL, 'normal'),
(17, '焦点图', 'newsfocus', '新闻中心焦点图标题2', 'https://picsum.photos/id/278/650/270', '/', '', 0, 17, 1553606243, 1553606273, NULL, NULL, 'normal'),
(18, '焦点图', 'newsfocus', '新闻中心焦点图标题3', 'https://picsum.photos/id/1011/650/270', '/', '', 0, 18, 1553607965, 1553607965, NULL, NULL, 'normal'),
(19, '焦点图', 'newsfocus', '新闻中心焦点图标题4', 'https://picsum.photos/id/1012/650/270', '/', '', 0, 19, 1553608006, 1553608006, NULL, NULL, 'normal'),
(20, '焦点图', 'newsfocus', '新闻中心焦点图标题5', 'https://picsum.photos/id/265/650/270', '/', '', 0, 20, 1553608049, 1553608049, NULL, NULL, 'normal'),
(21, '焦点图', 'newsfocus', '新闻中心焦点图标题6', 'https://picsum.photos/id/270/650/270', '/', '', 0, 21, 1553608086, 1553608086, NULL, NULL, 'normal'),
(22, '焦点图', 'productfocus', '产品中心焦点图标题1', 'https://picsum.photos/id/1015/650/270', '/', '', 0, 22, 1553606219, 1553606257, NULL, NULL, 'normal'),
(23, '焦点图', 'productfocus', '产品中心焦点图标题2', 'https://picsum.photos/id/1016/650/270', '/', '', 0, 23, 1553606243, 1553606273, NULL, NULL, 'normal'),
(24, '焦点图', 'productfocus', '产品中心焦点图标题3', 'https://picsum.photos/id/330/650/270', '/', '', 0, 24, 1553607965, 1553607965, NULL, NULL, 'normal'),
(25, '焦点图', 'productfocus', '产品中心焦点图标题4', 'https://picsum.photos/id/1018/650/270', '/', '', 0, 25, 1553608006, 1553608006, NULL, NULL, 'normal'),
(26, '焦点图', 'productfocus', '产品中心焦点图标题5', 'https://picsum.photos/id/1019/650/270', '/', '', 0, 26, 1553608049, 1553608049, NULL, NULL, 'normal'),
(27, '焦点图', 'productfocus', '产品中心焦点图标题6', 'https://picsum.photos/id/33/650/270', '/', '', 0, 27, 1553608086, 1553608086, NULL, NULL, 'normal'),
(28, '边栏', 'sidebarad3', '边栏广告3', '', '', '<a href=\"http://www.fastadmin.net/go/aliyun\">\r\n    <img src=\"https://cdn.fastadmin.net/uploads/store/enterprisehost.png\" class=\"img-responsive\">\r\n</a>', 0, 9, 1553606219, 1553958942, NULL, NULL, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_case`
--

DROP TABLE IF EXISTS `cz_cms_case`;
CREATE TABLE IF NOT EXISTS `cz_cms_case` (
  `id` int(10) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='cms_case';

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_channel`
--

DROP TABLE IF EXISTS `cz_cms_channel`;
CREATE TABLE IF NOT EXISTS `cz_cms_channel` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('channel','page','link','list') NOT NULL COMMENT '类型',
  `model_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '模型ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(30) DEFAULT '' COMMENT '名称',
  `image` varchar(100) DEFAULT '' COMMENT '图片',
  `flag` varchar(100) DEFAULT '' COMMENT '标志',
  `seotitle` varchar(255) DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `diyname` varchar(100) DEFAULT '' COMMENT '自定义名称',
  `outlink` varchar(255) DEFAULT '' COMMENT '外部链接',
  `items` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文章数量',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `channeltpl` varchar(100) DEFAULT '' COMMENT '栏目页模板',
  `listtpl` varchar(100) DEFAULT '' COMMENT '列表页模板',
  `showtpl` varchar(100) DEFAULT '' COMMENT '详情页模板',
  `pagesize` smallint(5) NOT NULL DEFAULT '0' COMMENT '分页大小',
  `vip` tinyint(1) UNSIGNED DEFAULT '0' COMMENT 'VIP',
  `listtype` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '列表数据类型',
  `iscontribute` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可投稿',
  `isnav` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否导航显示',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diyname` (`diyname`),
  KEY `type` (`type`),
  KEY `weigh` (`weigh`,`id`),
  KEY `parent_id` (`parent_id`),
  KEY `type_2` (`type`),
  KEY `type_3` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COMMENT='栏目表';

--
-- 转存表中的数据 `cz_cms_channel`
--

INSERT INTO `cz_cms_channel` (`id`, `type`, `model_id`, `parent_id`, `name`, `image`, `flag`, `seotitle`, `keywords`, `description`, `diyname`, `outlink`, `items`, `weigh`, `channeltpl`, `listtpl`, `showtpl`, `pagesize`, `vip`, `listtype`, `iscontribute`, `isnav`, `createtime`, `updatetime`, `status`) VALUES
(1, 'channel', 1, 0, '新闻中心', '', '', '', '', '', 'news', '', 0, 9, 'channel_news.html', 'list_news.html', 'show_news.html', 10, 0, 0, 1, 1, 1508990697, 1553932759, 'normal'),
(2, 'channel', 2, 0, '产品中心', '', '', '', '', '', 'product', '', 0, 8, 'channel_product.html', 'list_product.html', 'show_product.html', 10, 0, 0, 1, 1, 1508992541, 1553932775, 'normal'),
(3, 'list', 1, 1, '互联网', '', 'recommend', '', '', '', 'internet', '', 5, 0, 'channel_news.html', 'list_news.html', 'show_news.html', 10, 0, 0, 1, 1, 1523718032, 1523718032, 'normal'),
(4, 'list', 1, 1, '安全', '', 'recommend', '', '', '', 'security', '', 5, 0, 'channel_news.html', 'list_news.html', 'show_news.html', 10, 0, 0, 1, 1, 1508990707, 1553416184, 'normal'),
(5, 'list', 1, 1, '投资', '', 'recommend', '', '', '', 'investment', '', 7, 0, 'channel_news.html', 'list_news.html', 'show_news.html', 10, 0, 0, 1, 1, 1508990716, 1523717837, 'normal'),
(6, 'list', 1, 1, '硬件', '', 'recommend', '', '', '', 'hardware', '', 7, 0, 'channel.html', 'list_news.html', 'show_news.html', 10, 0, 0, 1, 1, 1523717893, 1523717893, 'normal'),
(8, 'list', 2, 2, '智能设备', '', '', '', '', '', 'wearable', '', 8, 0, 'channel_product.html', 'list_product.html', 'show_product.html', 10, 0, 0, 1, 1, 1508992598, 1523718084, 'normal'),
(9, 'list', 2, 2, '移动设备', '', '', '', '', '', 'mobiledevice', '', 8, 0, 'channel_product.html', 'list_product.html', 'show_product.html', 10, 0, 0, 1, 1, 1508992623, 1523718179, 'normal'),
(10, 'list', 2, 2, '智能家居', '', 'recommend', '', '', '', 'smarthome', '', 4, 0, 'channel_product.html', 'list_product.html', 'show_product.html', 10, 0, 0, 1, 1, 1522157583, 1523718113, 'normal'),
(11, 'channel', 3, 0, '下载中心', '', '', '', '', '', 'download', '', 0, 7, 'channel_download.html', 'list_download.html', 'show_download.html', 10, 0, 0, 1, 1, 1553508489, 1553934386, 'normal'),
(12, 'list', 3, 11, '应用软件', '', '', '', '', '', 'app', '', 17, 0, 'channel_download.html', 'list_download.html', 'show_download.html', 10, 0, 0, 1, 1, 1553508581, 1553934383, 'normal'),
(13, 'list', 3, 11, '媒体工具', '', '', '', '', '', 'media', '', 18, 0, 'channel_download.html', 'list_download.html', 'show_download.html', 10, 0, 0, 1, 1, 1553508581, 1553934384, 'normal'),
(14, 'list', 3, 11, '网络工具', '', '', '', '', '', 'network', '', 20, 0, 'channel_download.html', 'list_download.html', 'show_download.html', 10, 0, 0, 1, 1, 1553508581, 1553934386, 'normal'),
(15, 'link', 1, 0, '自定义表单', '', '', '', '', '', 'message', '__INDEX__/cms/d/message.html', 0, 6, 'channel.html', 'list.html', 'show.html', 10, 0, 0, 0, 1, 1553420405, 1553932802, 'normal'),
(16, 'link', 1, 0, '单页', '', '', '', '', '', 'page', '__INDEX__/cms/p/aboutus.html', 0, 5, 'channel.html', '', 'show.html', 10, 0, 0, 0, 1, 1553420429, 1553932806, 'normal'),
(17, 'link', 1, 0, '更多', '', '', '', '', '', 'morelink', 'javascript:', 0, 3, 'channel.html', 'list.html', 'show.html', 10, 0, 0, 0, 1, 1553330120, 1553932811, 'normal'),
(18, 'link', 1, 17, '百度', '', '', '', '', '', 'baidu', 'https://www.baidu.com', 0, 4, 'channel.html', 'list.html', 'show.html', 10, 0, 0, 0, 1, 1508994753, 1553330274, 'normal'),
(22, 'link', 1, 0, '首页', '', '', '', '', '', 'index', '__INDEX__/cms/', 0, 10, 'channel.html', 'list.html', 'show.html', 10, 0, 0, 0, 1, 1553330375, 1553932754, 'normal'),
(23, 'link', 1, 0, '专题', '', '', '', '', '', 'special', '__INDEX__/cms/special/it.html', 0, 4, 'channel.html', 'list.html', 'show.html', 10, 0, 0, 0, 1, 1553330375, 1553932754, 'normal'),
(24, 'list', 5, 0, '客户案例', '', '', '', '', '', 'kehuanli', '', 0, 24, 'channel_case.html', 'list_case.html', 'show_case.html', 10, 0, 0, 0, 0, 1622561415, 1622561441, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_channel_admin`
--

DROP TABLE IF EXISTS `cz_cms_channel_admin`;
CREATE TABLE IF NOT EXISTS `cz_cms_channel_admin` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `channel_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '栏目ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_id` (`admin_id`,`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='栏目权限表';

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_collection`
--

DROP TABLE IF EXISTS `cz_cms_collection`;
CREATE TABLE IF NOT EXISTS `cz_cms_collection` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('archives','special','page','diyform') DEFAULT NULL COMMENT '类型',
  `aid` int(10) UNSIGNED DEFAULT '0' COMMENT '关联ID',
  `user_id` int(10) DEFAULT NULL COMMENT '会员ID',
  `title` varchar(255) DEFAULT NULL COMMENT '收藏标题',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `aid` (`type`,`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='收藏表';

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_comment`
--

DROP TABLE IF EXISTS `cz_cms_comment`;
CREATE TABLE IF NOT EXISTS `cz_cms_comment` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `type` enum('archives','page','special') NOT NULL DEFAULT 'archives' COMMENT '类型',
  `aid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '关联ID',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '父ID',
  `content` longtext COMMENT '内容',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论数',
  `ip` varchar(50) DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) DEFAULT '' COMMENT 'User Agent',
  `subscribe` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '订阅',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `post_id` (`aid`,`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='评论表';

--
-- 转存表中的数据 `cz_cms_comment`
--

INSERT INTO `cz_cms_comment` (`id`, `user_id`, `type`, `aid`, `pid`, `content`, `comments`, `ip`, `useragent`, `subscribe`, `createtime`, `updatetime`, `deletetime`, `status`) VALUES
(1, 1, 'archives', 34, 0, '看起来的确很疯狂，很值得一试。谁让他们创造了一款人们可以使用的产品，与当今世界上大多数其他消费类产品不同。', 0, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 0, 1553763251, 1553763251, NULL, 'normal'),
(2, 1, 'archives', 34, 0, '<em>@admin</em> 每个人都应该来尝试下的产品。', 0, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 1, 1553763300, 1553763300, NULL, 'normal'),
(3, 1, 'archives', 34, 0, '完全赞同这样的说法，欢迎提供你的意见或建议。', 0, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 1, 1553763331, 1553763331, NULL, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_diyform`
--

DROP TABLE IF EXISTS `cz_cms_diyform`;
CREATE TABLE IF NOT EXISTS `cz_cms_diyform` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) UNSIGNED DEFAULT '0' COMMENT '管理员ID',
  `name` char(30) DEFAULT '' COMMENT '表单名称',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `seotitle` varchar(255) DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(100) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `table` varchar(50) DEFAULT '' COMMENT '表名',
  `fields` text COMMENT '字段列表',
  `needlogin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否需要登录',
  `isedit` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否允许编辑',
  `iscaptcha` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否启用验证码',
  `successtips` varchar(255) DEFAULT NULL COMMENT '成功提示文字',
  `redirecturl` varchar(255) DEFAULT NULL COMMENT '成功后跳转链接',
  `posttpl` varchar(50) DEFAULT '' COMMENT '表单页模板',
  `listtpl` varchar(50) DEFAULT '' COMMENT '列表页模板',
  `showtpl` varchar(50) DEFAULT '' COMMENT '详情页模板',
  `diyname` varchar(100) DEFAULT NULL COMMENT '自定义名称',
  `usermode` enum('all','user') DEFAULT 'all' COMMENT '用户筛选模式',
  `statusmode` enum('all','normal','hidden') DEFAULT 'all' COMMENT '状态筛选模式',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `setting` varchar(1500) DEFAULT NULL COMMENT '表单配置',
  `status` enum('normal','hidden') DEFAULT 'hidden' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `diyname` (`diyname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='自定义表单表';

--
-- 转存表中的数据 `cz_cms_diyform`
--

INSERT INTO `cz_cms_diyform` (`id`, `admin_id`, `name`, `title`, `seotitle`, `keywords`, `description`, `table`, `fields`, `needlogin`, `isedit`, `iscaptcha`, `successtips`, `redirecturl`, `posttpl`, `listtpl`, `showtpl`, `diyname`, `usermode`, `statusmode`, `createtime`, `updatetime`, `setting`, `status`) VALUES
(1, 0, '留言', '留言', '', '留言板', '欢迎给我们留言反馈你的问题', 'cms_message', 'name,telephone,qq,content,image,os,language,address,category', 0, 1, 0, '留言已成功提交，我们会在第一时间进行处理', '', '', '', '', 'message', 'all', 'normal', 1540091957, 1597220040, '{\"orderfields\":[\"createtime\"]}', 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_fields`
--

DROP TABLE IF EXISTS `cz_cms_fields`;
CREATE TABLE IF NOT EXISTS `cz_cms_fields` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `source` varchar(30) DEFAULT '' COMMENT '来源',
  `source_id` int(10) NOT NULL DEFAULT '0' COMMENT '来源ID',
  `name` char(30) DEFAULT '' COMMENT '名称',
  `type` varchar(30) DEFAULT '' COMMENT '类型',
  `title` varchar(30) DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `filterlist` text COMMENT '筛选列表',
  `defaultvalue` varchar(100) DEFAULT '' COMMENT '默认值',
  `rule` varchar(100) DEFAULT '' COMMENT '验证规则',
  `msg` varchar(100) DEFAULT '0' COMMENT '错误消息',
  `ok` varchar(100) DEFAULT '0' COMMENT '成功消息',
  `tip` varchar(100) DEFAULT '' COMMENT '提示消息',
  `decimals` tinyint(1) DEFAULT NULL COMMENT '小数点',
  `length` mediumint(8) DEFAULT NULL COMMENT '长度',
  `minimum` smallint(6) DEFAULT NULL COMMENT '最小数量',
  `maximum` smallint(6) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最大数量',
  `extend` varchar(255) DEFAULT '' COMMENT '扩展信息',
  `setting` varchar(1500) DEFAULT '' COMMENT '配置信息',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `isorder` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可排序',
  `iscontribute` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可投稿',
  `isfilter` tinyint(1) NOT NULL DEFAULT '0' COMMENT '筛选',
  `status` enum('normal','hidden') NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `source` (`source`) USING BTREE,
  KEY `source_id` (`source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COMMENT='模型字段表';

--
-- 转存表中的数据 `cz_cms_fields`
--

INSERT INTO `cz_cms_fields` (`id`, `source`, `source_id`, `name`, `type`, `title`, `content`, `filterlist`, `defaultvalue`, `rule`, `msg`, `ok`, `tip`, `decimals`, `length`, `minimum`, `maximum`, `extend`, `setting`, `weigh`, `createtime`, `updatetime`, `isorder`, `iscontribute`, `isfilter`, `status`) VALUES
(1, 'diyform', 1, 'name', 'string', '姓名', 'value1|title1\r\nvalue2|title2', NULL, '', 'required', '', '', '', 0, 50, 0, 0, '', '', 136, 1540110334, 1540110334, 0, 1, 0, 'normal'),
(2, 'diyform', 1, 'telephone', 'string', '手机', 'value1|title1\r\nvalue2|title2', NULL, '', 'required,mobile', '', '', '', 0, 50, 0, 0, '', '', 135, 1540110369, 1540110369, 0, 1, 0, 'normal'),
(3, 'diyform', 1, 'qq', 'string', 'QQ', 'value1|title1\r\nvalue2|title2', NULL, '', 'digits', '', '', '', 0, 30, 0, 0, '', '', 134, 1540110394, 1540110394, 0, 1, 0, 'normal'),
(4, 'diyform', 1, 'content', 'editor', '内容', 'value1|title1\r\nvalue2|title2', NULL, '', 'required', '', '', '', 0, 255, 0, 0, '', '', 133, 1540110415, 1540110415, 0, 1, 0, 'normal'),
(5, 'model', 1, 'author', 'string', '作者', 'value1|title1\r\nvalue2|title2', NULL, '', '', '', '', '', 0, 50, 0, 0, '', '', 136, 1508990735, 1553759396, 0, 1, 0, 'normal'),
(6, 'model', 2, 'productdata', 'images', '产品列表', 'value1|title1\r\nvalue2|title2', NULL, '', 'required', '', '', '', 0, 1500, 0, 20, '', '{\"table\":\"\"}', 139, 1508992518, 1597218666, 0, 1, 0, 'normal'),
(8, 'diyform', 1, 'image', 'images', '图片', 'value1|title1\r\nvalue2|title2', NULL, '', 'required', '', '', '', 0, 500, 0, 0, '', '{\"table\":\"\"}', 17, 1597145973, 1597146911, 0, 1, 0, 'normal'),
(9, 'model', 3, 'os', 'checkbox', '操作系统', 'windows|Windows\r\nlinux|Linux\r\nmac|Mac\r\nubuntu|Ubuntu', NULL, '', '', '', '', '', 0, 255, 0, 0, '', '', 143, 1553508185, 1553508185, 0, 1, 1, 'normal'),
(10, 'model', 3, 'version', 'string', '最新版本', 'value1|title1\r\nvalue2|title2', NULL, '', '', '', '', '', 0, 255, 0, 0, '', '', 144, 1553508231, 1553775383, 0, 1, 0, 'normal'),
(11, 'model', 3, 'filesize', 'string', '文件大小', 'value1|title1\r\nvalue2|title2', NULL, '', '', '', '', '', 0, 255, 0, 0, '', '', 145, 1553508273, 1553775381, 0, 1, 0, 'normal'),
(12, 'model', 3, 'language', 'checkbox', '语言', 'zh-cn|中文\r\nen|英文', NULL, '', '', '', '', '', 0, 255, 0, 0, '', '', 146, 1553508324, 1553775371, 0, 1, 1, 'normal'),
(13, 'model', 3, 'downloadurl', 'array', '下载地址', 'local|本地下载地址\r\nbaidu|百度网盘地址', NULL, '', '', '', '', '', 0, 255, 0, 0, '', '', 147, 1553508466, 1553775368, 0, 1, 0, 'normal'),
(14, 'model', 3, 'screenshots', 'images', '预览截图', 'value1|title1\r\nvalue2|title2', NULL, '', '', '', '', '', 0, 1500, 0, 0, '', '', 148, 1553509260, 1553775364, 0, 1, 0, 'normal'),
(16, 'model', 3, 'downloads', 'string', '下载次数', 'value1|title1\r\nvalue2|title2', NULL, '0', '', '', '', '', 0, 10, 0, 0, '', '', 150, 1553744995, 1597200014, 1, 1, 0, 'normal'),
(17, 'diyform', 1, 'os', 'radio', '操作系统', 'windows|Windows\r\nmac|Mac', NULL, 'windows', '', '', '', '', 0, 50, 0, 0, '', '{\"table\":\"\"}', 17, 1597200354, 1597200354, 0, 1, 1, 'normal'),
(18, 'diyform', 1, 'language', 'checkbox', '语言', 'zh-cn|中文\r\nen|英文', NULL, '', '', '', '', '', 0, 255, 0, 0, '', '{\"table\":\"\"}', 18, 1597200417, 1597200417, 0, 1, 1, 'normal'),
(19, 'diyform', 1, 'address', 'city', '地区', 'value1|title1\r\nvalue2|title2', NULL, '', '', '', '', '', 0, 255, 0, 0, '', '{\"table\":\"\"}', 19, 1597200452, 1597201184, 0, 1, 0, 'normal'),
(20, 'diyform', 1, 'category', 'selectpages', '分类', 'value1|title1\r\nvalue2|title2', NULL, '', '', '', '', '', 0, 255, 0, 0, 'data-params=\'{\"isTree\":\"1\"}\'', '{\"table\":\"cz_category\",\"primarykey\":\"id\",\"field\":\"name\"}', 20, 1597204527, 1597221552, 0, 1, 0, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_message`
--

DROP TABLE IF EXISTS `cz_cms_message`;
CREATE TABLE IF NOT EXISTS `cz_cms_message` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL COMMENT '会员ID',
  `name` varchar(50) DEFAULT '' COMMENT '姓名',
  `telephone` varchar(100) DEFAULT '' COMMENT '电话',
  `qq` varchar(30) DEFAULT '' COMMENT 'QQ',
  `content` longtext COMMENT '内容',
  `os` enum('windows','mac') DEFAULT 'windows' COMMENT '操作系统',
  `language` set('zh-cn','en') DEFAULT '' COMMENT '语言',
  `address` varchar(255) DEFAULT '' COMMENT '地区',
  `category` varchar(255) DEFAULT '' COMMENT '分类',
  `memo` varchar(255) DEFAULT '' COMMENT '备注',
  `image` varchar(500) DEFAULT '' COMMENT '图片',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden','rejected') DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='站内留言';

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_model`
--

DROP TABLE IF EXISTS `cz_cms_model`;
CREATE TABLE IF NOT EXISTS `cz_cms_model` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` char(30) DEFAULT '' COMMENT '模型名称',
  `table` char(20) DEFAULT '' COMMENT '表名',
  `fields` text COMMENT '字段列表',
  `channeltpl` varchar(30) DEFAULT '' COMMENT '栏目页模板',
  `listtpl` varchar(30) DEFAULT '' COMMENT '列表页模板',
  `showtpl` varchar(30) DEFAULT '' COMMENT '详情页模板',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `setting` text COMMENT '模型配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='内容模型表';

--
-- 转存表中的数据 `cz_cms_model`
--

INSERT INTO `cz_cms_model` (`id`, `name`, `table`, `fields`, `channeltpl`, `listtpl`, `showtpl`, `createtime`, `updatetime`, `setting`) VALUES
(1, '新闻', 'cms_addonnews', 'author', 'channel_news.html', 'list_news.html', 'show_news.html', 1508990659, 1597199894, '{\"contributefields\":[\"image\",\"tags\",\"content\"],\"orderfields\":[\"views\",\"createtime\"]}'),
(2, '产品', 'cms_addonproduct', 'productdata', 'channel_product.html', 'list_product.html', 'show_product.html', 1508992445, 1597199995, '{\"contributefields\":[\"image\",\"tags\",\"content\"],\"orderfields\":[\"views\",\"likes\"]}'),
(3, '下载', 'cms_addondownload', 'os,version,filesize,language,downloadurl,screenshots,downloads', 'channel_download.html', 'list_download.html', 'show_download.html', 1553507913, 1597200019, '{\"contributefields\":[\"image\",\"tags\",\"content\"],\"orderfields\":[\"likes\"]}'),
(4, '公司介绍', 'cms_addonjieshao', NULL, 'channel.html', 'list.html', 'show.html', 1621849051, 1621849051, '{\"contributefields\":[\"image\",\"tags\",\"content\"]}'),
(5, '客户案例', 'cms_case', NULL, 'channel_case.html', 'list_case.html', 'show_case.html', 1622561285, 1622561331, '{\"contributefields\":[\"image\",\"tags\",\"content\"]}');

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_order`
--

DROP TABLE IF EXISTS `cz_cms_order`;
CREATE TABLE IF NOT EXISTS `cz_cms_order` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `orderid` varchar(50) DEFAULT '' COMMENT '订单ID',
  `user_id` int(10) UNSIGNED DEFAULT '0' COMMENT '会员ID',
  `archives_id` int(10) UNSIGNED DEFAULT '0' COMMENT '文档ID',
  `title` varchar(100) DEFAULT NULL COMMENT '订单标题',
  `amount` decimal(10,2) UNSIGNED DEFAULT '0.00' COMMENT '订单金额',
  `payamount` decimal(10,2) UNSIGNED DEFAULT '0.00' COMMENT '支付金额',
  `paytype` varchar(50) DEFAULT NULL COMMENT '支付类型',
  `paytime` int(10) DEFAULT NULL COMMENT '支付时间',
  `method` varchar(100) DEFAULT '' COMMENT '支付方法',
  `ip` varchar(50) DEFAULT NULL COMMENT 'IP地址',
  `useragent` varchar(255) DEFAULT NULL COMMENT 'UserAgent',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('created','paid','expired') DEFAULT 'created' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `archives_id` (`archives_id`),
  KEY `orderid` (`orderid`),
  KEY `orderid_2` (`orderid`),
  KEY `orderid_3` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表';

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_page`
--

DROP TABLE IF EXISTS `cz_cms_page`;
CREATE TABLE IF NOT EXISTS `cz_cms_page` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category_id` int(10) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `admin_id` int(10) UNSIGNED DEFAULT '0' COMMENT '管理员ID',
  `type` varchar(50) DEFAULT '' COMMENT '类型',
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `seotitle` varchar(255) DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `flag` varchar(100) DEFAULT '' COMMENT '标志',
  `image` varchar(255) DEFAULT '' COMMENT '头像',
  `content` longtext COMMENT '内容',
  `icon` varchar(50) DEFAULT '' COMMENT '图标',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点击',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞',
  `dislikes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点踩',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论',
  `diyname` varchar(100) DEFAULT '' COMMENT '自定义',
  `showtpl` varchar(50) DEFAULT '' COMMENT '视图模板',
  `iscomment` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '是否允许评论',
  `parsetpl` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '解析模板标签',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `diyname` (`diyname`),
  KEY `type` (`type`),
  KEY `diyname_2` (`diyname`),
  KEY `diyname_3` (`diyname`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='单页表';

--
-- 转存表中的数据 `cz_cms_page`
--

INSERT INTO `cz_cms_page` (`id`, `category_id`, `admin_id`, `type`, `title`, `seotitle`, `keywords`, `description`, `flag`, `image`, `content`, `icon`, `views`, `likes`, `dislikes`, `comments`, `diyname`, `showtpl`, `iscomment`, `parsetpl`, `createtime`, `updatetime`, `deletetime`, `weigh`, `status`) VALUES
(1, 0, 0, 'page', '关于我们', '', '', '', '', '', '<p>关于我们的内容</p>', '', 562, 225, 0, 0, 'aboutus', 'page', 1, 0, 1508933935, 1553769449, NULL, 1, 'normal'),
(2, 0, 0, 'page', '用户注册协议', '', '', '', '', '', '<p>用户注册协议</p>', '', 560, 225, 0, 0, 'agreement', 'page', 1, 0, 1508933935, 1553769449, NULL, 1, 'normal'),
(3, 0, 1, 'page', '关于', '', '', '', '', '', '关于cz', '', 15, 0, 0, 0, 'guanyu', 'page_about.html', 10, 0, 1622291780, 1622291829, NULL, 3, 'normal'),
(4, 0, 1, 'page', '联系我们', '', '', '', '', '', '', '', 6, 0, 0, 0, 'lianxiwomen', 'page_lianxi.html', 10, 0, 1622555492, 1622555492, NULL, 4, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_search_log`
--

DROP TABLE IF EXISTS `cz_cms_search_log`;
CREATE TABLE IF NOT EXISTS `cz_cms_search_log` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `keywords` varchar(100) DEFAULT '' COMMENT '关键字',
  `nums` int(10) UNSIGNED DEFAULT '0' COMMENT '搜索次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keywords` (`keywords`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='搜索记录表';

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_special`
--

DROP TABLE IF EXISTS `cz_cms_special`;
CREATE TABLE IF NOT EXISTS `cz_cms_special` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) UNSIGNED DEFAULT '0' COMMENT '管理员ID',
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `tag_ids` varchar(1500) DEFAULT '' COMMENT '标签ID集合',
  `flag` varchar(100) DEFAULT '' COMMENT '标志',
  `label` varchar(50) DEFAULT '' COMMENT '标签',
  `image` varchar(100) DEFAULT '' COMMENT '图片',
  `banner` varchar(100) DEFAULT '' COMMENT 'Banner图片',
  `diyname` varchar(100) DEFAULT '' COMMENT '自定义名称',
  `seotitle` varchar(255) DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(100) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `intro` varchar(255) DEFAULT NULL COMMENT '专题介绍',
  `views` int(10) UNSIGNED DEFAULT '0' COMMENT '浏览次数',
  `comments` int(10) UNSIGNED DEFAULT '0' COMMENT '评论次数',
  `iscomment` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '是否允许评论',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `template` varchar(100) DEFAULT '' COMMENT '专题模板',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `diyname` (`diyname`),
  KEY `diyname_2` (`diyname`),
  KEY `diyname_3` (`diyname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='专题表';

--
-- 转存表中的数据 `cz_cms_special`
--

INSERT INTO `cz_cms_special` (`id`, `admin_id`, `title`, `tag_ids`, `flag`, `label`, `image`, `banner`, `diyname`, `seotitle`, `keywords`, `description`, `intro`, `views`, `comments`, `iscomment`, `createtime`, `updatetime`, `deletetime`, `template`, `status`) VALUES
(1, 0, '这是一个测试专题标题', '1,16,17', '', '热门专题', 'https://picsum.photos/id/450/800/600', 'https://picsum.photos/id/450/1110/300', 'it', '', NULL, NULL, '这是测试专题的介绍内容，你可以在后台进行修改', 120, 0, 1, 1553606219, 1553606219, NULL, '', 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_tag`
--

DROP TABLE IF EXISTS `cz_cms_tag`;
CREATE TABLE IF NOT EXISTS `cz_cms_tag` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '标签名称',
  `nums` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文档数量',
  `seotitle` varchar(100) DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `views` int(10) DEFAULT NULL COMMENT '浏览次数',
  `autolink` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '自动内链',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `nums` (`nums`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COMMENT='标签表';

--
-- 转存表中的数据 `cz_cms_tag`
--

INSERT INTO `cz_cms_tag` (`id`, `name`, `nums`, `seotitle`, `keywords`, `description`, `views`, `autolink`, `createtime`, `updatetime`, `status`) VALUES
(1, 'HiGame', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(2, 'PC', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(3, '驰为', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(4, 'Chromebox', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(5, '台式机', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(6, '宏基', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(7, '智能手表', 2, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(8, '混合动力', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(9, '智能设备', 3, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(10, '耳返', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(11, '南孚', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(12, '电池', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(13, '眼镜', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(14, 'dropbox', 3, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(15, '投资', 2, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(16, '云计算', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(17, '互联网', 12, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(18, '安全', 6, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(19, 'Google', 4, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(20, 'AR', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(21, 'Mac', 3, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(22, 'Sublime', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(23, '字体', 2, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(24, '播放器', 2, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(25, '屏幕录制', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(26, '视频录制', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(27, '铃声制作', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(28, '动画软件', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(29, '视频制作', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(30, '虚拟录音', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(31, '视频转换器', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(32, '音乐播放器', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(33, '媒体演示', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(34, '音乐管理', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(35, '音频录制', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(36, '电子书设计制作', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(37, 'PDF编辑软件', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(38, '博客写作', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(39, '文件管理', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(40, 'Podcast订阅', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(41, '即时翻译', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(42, '财务管理', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(43, '压缩软件', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(44, 'CAD绘图', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(45, '在线视频下载', 2, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(46, '视频下载', 3, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(47, '机器人', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(48, 'WiFi无线扫描和管理', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(49, '无线WiFi网络管理', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(50, 'YouTube视频', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(51, 'HTTP/REST服务测试', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(52, 'MAC地址修改', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(53, '远程访问', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(54, 'PeakHour', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(55, '文件快传', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(56, '防火墙工具', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(57, 'FTP工具', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(58, '多平台协作', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(59, '多标签ssh工具', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal'),
(60, '多终端工具', 1, '', NULL, NULL, 0, 0, 1597140277, 1597140277, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_cms_taggable`
--

DROP TABLE IF EXISTS `cz_cms_taggable`;
CREATE TABLE IF NOT EXISTS `cz_cms_taggable` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) DEFAULT NULL COMMENT '标签ID',
  `archives_id` int(10) DEFAULT NULL COMMENT '文档ID',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  KEY `archives_id` (`archives_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COMMENT='标签列表';

--
-- 转存表中的数据 `cz_cms_taggable`
--

INSERT INTO `cz_cms_taggable` (`id`, `tag_id`, `archives_id`, `createtime`) VALUES
(1, 1, 1, 1597139826),
(2, 2, 1, 1597139826),
(3, 3, 1, 1597139826),
(4, 4, 2, 1597139833),
(5, 5, 2, 1597139833),
(6, 6, 2, 1597139833),
(7, 7, 3, 1597139837),
(8, 8, 3, 1597139837),
(9, 9, 4, 1597139842),
(10, 10, 4, 1597139842),
(11, 11, 5, 1597139851),
(12, 12, 5, 1597139851),
(13, 9, 7, 1597139855),
(14, 13, 7, 1597139855),
(15, 14, 8, 1597139861),
(16, 15, 8, 1597139861),
(17, 14, 9, 1597139866),
(18, 15, 9, 1597139866),
(19, 14, 10, 1597139873),
(20, 16, 11, 1597139878),
(21, 17, 11, 1597139878),
(22, 9, 13, 1597139887),
(23, 18, 14, 1597139894),
(24, 17, 15, 1597139899),
(25, 18, 15, 1597139899),
(26, 17, 16, 1597139904),
(27, 18, 16, 1597139904),
(28, 17, 18, 1597139969),
(29, 18, 18, 1597139969),
(30, 17, 20, 1597139972),
(31, 19, 20, 1597139972),
(32, 19, 21, 1597139976),
(33, 17, 21, 1597139976),
(34, 19, 22, 1597139979),
(35, 17, 22, 1597139979),
(36, 17, 23, 1597139983),
(37, 19, 24, 1597139986),
(38, 17, 24, 1597139986),
(39, 17, 28, 1597139989),
(40, 17, 33, 1597139992),
(41, 18, 33, 1597139992),
(42, 17, 34, 1597139995),
(43, 20, 34, 1597139995),
(44, 21, 40, 1597139997),
(45, 22, 41, 1597140005),
(46, 18, 42, 1597140008),
(47, 23, 43, 1597140011),
(48, 21, 44, 1597140015),
(49, 21, 45, 1597140018),
(50, 23, 51, 1597140037),
(51, 24, 52, 1597140040),
(52, 24, 53, 1597140043),
(53, 25, 56, 1597140052),
(54, 26, 57, 1597140061),
(55, 27, 58, 1597140064),
(56, 28, 59, 1597140068),
(57, 29, 60, 1597140070),
(58, 30, 61, 1597140076),
(59, 31, 62, 1597140079),
(60, 32, 63, 1597140082),
(61, 33, 64, 1597140084),
(62, 34, 65, 1597140087),
(63, 35, 66, 1597140090),
(64, 36, 67, 1597140093),
(65, 37, 68, 1597140097),
(66, 38, 69, 1597140100),
(67, 39, 70, 1597140103),
(68, 40, 71, 1597140107),
(69, 41, 72, 1597140110),
(70, 7, 73, 1597140113),
(71, 42, 74, 1597140116),
(72, 43, 75, 1597140119),
(73, 44, 76, 1597140122),
(74, 45, 77, 1597140125),
(75, 46, 78, 1597140128),
(76, 46, 79, 1597140131),
(77, 47, 81, 1597140137),
(78, 48, 82, 1597140140),
(79, 49, 83, 1597140143),
(80, 50, 84, 1597140146),
(81, 46, 85, 1597140149),
(82, 51, 86, 1597140152),
(83, 52, 87, 1597140155),
(84, 45, 89, 1597140160),
(85, 53, 91, 1597140167),
(86, 54, 93, 1597140172),
(87, 55, 94, 1597140175),
(88, 56, 95, 1597140178),
(89, 57, 97, 1597140184),
(90, 58, 99, 1597140189),
(91, 59, 101, 1597140196),
(92, 60, 102, 1597140199);

-- --------------------------------------------------------

--
-- 表的结构 `cz_config`
--

DROP TABLE IF EXISTS `cz_config`;
CREATE TABLE IF NOT EXISTS `cz_config` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量名',
  `group` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '分组',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text COLLATE utf8mb4_unicode_ci COMMENT '变量值',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '变量字典数据',
  `rule` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '扩展属性',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '配置',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统配置';

--
-- 转存表中的数据 `cz_config`
--

INSERT INTO `cz_config` (`id`, `name`, `group`, `title`, `tip`, `type`, `value`, `content`, `rule`, `extend`, `setting`) VALUES
(1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', '诚智', '', 'required', '', ''),
(2, 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', '', ''),
(3, 'cdnurl', 'basic', 'Cdn url', '如果全站静态资源使用第三方云储存请配置该值', 'string', '', '', '', '', ''),
(4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.7', '', 'required', '', ''),
(5, 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '', ''),
(6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '', ''),
(7, 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '', ''),
(8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '', ''),
(9, 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '', ''),
(10, 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '', ''),
(11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"请选择\",\"SMTP\"]', '', '', ''),
(12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '', ''),
(13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '', ''),
(14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '', ''),
(15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码或授权码）', 'string', 'password', '', '', '', ''),
(16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"无\",\"TLS\",\"SSL\"]', '', '', ''),
(17, 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `cz_ems`
--

DROP TABLE IF EXISTS `cz_ems`;
CREATE TABLE IF NOT EXISTS `cz_ems` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '事件',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮箱验证码表';

-- --------------------------------------------------------

--
-- 表的结构 `cz_sms`
--

DROP TABLE IF EXISTS `cz_sms`;
CREATE TABLE IF NOT EXISTS `cz_sms` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号',
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='短信验证码表';

-- --------------------------------------------------------

--
-- 表的结构 `cz_test`
--

DROP TABLE IF EXISTS `cz_test`;
CREATE TABLE IF NOT EXISTS `cz_test` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片',
  `images` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '描述',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '省市',
  `json` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `price` float(10,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='测试表';

--
-- 转存表中的数据 `cz_test`
--

INSERT INTO `cz_test` (`id`, `admin_id`, `category_id`, `category_ids`, `week`, `flag`, `genderdata`, `hobbydata`, `title`, `content`, `image`, `images`, `attachfile`, `keywords`, `description`, `city`, `json`, `price`, `views`, `startdate`, `activitytime`, `year`, `times`, `refreshtime`, `createtime`, `updatetime`, `deletetime`, `weigh`, `switch`, `status`, `state`) VALUES
(1, 0, 12, '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', 0.00, 0, '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1491635035, 1491635035, 1491635035, NULL, 0, 1, 'normal', '1');

-- --------------------------------------------------------

--
-- 表的结构 `cz_user`
--

DROP TABLE IF EXISTS `cz_user`;
CREATE TABLE IF NOT EXISTS `cz_user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int(10) DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Token',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  `verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员表';

--
-- 转存表中的数据 `cz_user`
--

INSERT INTO `cz_user` (`id`, `group_id`, `username`, `nickname`, `password`, `salt`, `email`, `mobile`, `avatar`, `level`, `gender`, `birthday`, `bio`, `money`, `score`, `successions`, `maxsuccessions`, `prevtime`, `logintime`, `loginip`, `loginfailure`, `joinip`, `jointime`, `createtime`, `updatetime`, `token`, `status`, `verification`) VALUES
(1, 1, 'admin', 'admin', '65d16cdd97c4239ad45c4147cd99291d', 'b3bf73', 'admin@163.com', '13888888888', '', 0, 0, '2017-04-08', '', '0.00', 0, 1, 1, 1491635035, 1491635035, '127.0.0.1', 0, '127.0.0.1', 1491635035, 0, 1491635035, '', 'normal', '');

-- --------------------------------------------------------

--
-- 表的结构 `cz_user_group`
--

DROP TABLE IF EXISTS `cz_user_group`;
CREATE TABLE IF NOT EXISTS `cz_user_group` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '组名',
  `rules` text COLLATE utf8mb4_unicode_ci COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员组表';

--
-- 转存表中的数据 `cz_user_group`
--

INSERT INTO `cz_user_group` (`id`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
(1, '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', 1491635035, 1491635035, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_user_money_log`
--

DROP TABLE IF EXISTS `cz_user_money_log`;
CREATE TABLE IF NOT EXISTS `cz_user_money_log` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员余额变动表';

-- --------------------------------------------------------

--
-- 表的结构 `cz_user_rule`
--

DROP TABLE IF EXISTS `cz_user_rule`;
CREATE TABLE IF NOT EXISTS `cz_user_rule` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `remark` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员规则表';

--
-- 转存表中的数据 `cz_user_rule`
--

INSERT INTO `cz_user_rule` (`id`, `pid`, `name`, `title`, `remark`, `ismenu`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 0, 'index', 'Frontend', '', 1, 1491635035, 1491635035, 1, 'normal'),
(2, 0, 'api', 'API Interface', '', 1, 1491635035, 1491635035, 2, 'normal'),
(3, 1, 'user', 'User Module', '', 1, 1491635035, 1491635035, 12, 'normal'),
(4, 2, 'user', 'User Module', '', 1, 1491635035, 1491635035, 11, 'normal'),
(5, 3, 'index/user/login', 'Login', '', 0, 1491635035, 1491635035, 5, 'normal'),
(6, 3, 'index/user/register', 'Register', '', 0, 1491635035, 1491635035, 7, 'normal'),
(7, 3, 'index/user/index', 'User Center', '', 0, 1491635035, 1491635035, 9, 'normal'),
(8, 3, 'index/user/profile', 'Profile', '', 0, 1491635035, 1491635035, 4, 'normal'),
(9, 4, 'api/user/login', 'Login', '', 0, 1491635035, 1491635035, 6, 'normal'),
(10, 4, 'api/user/register', 'Register', '', 0, 1491635035, 1491635035, 8, 'normal'),
(11, 4, 'api/user/index', 'User Center', '', 0, 1491635035, 1491635035, 10, 'normal'),
(12, 4, 'api/user/profile', 'Profile', '', 0, 1491635035, 1491635035, 3, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `cz_user_score_log`
--

DROP TABLE IF EXISTS `cz_user_score_log`;
CREATE TABLE IF NOT EXISTS `cz_user_score_log` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员积分变动表';

-- --------------------------------------------------------

--
-- 表的结构 `cz_user_token`
--

DROP TABLE IF EXISTS `cz_user_token`;
CREATE TABLE IF NOT EXISTS `cz_user_token` (
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Token',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员Token表';

-- --------------------------------------------------------

--
-- 表的结构 `cz_version`
--

DROP TABLE IF EXISTS `cz_version`;
CREATE TABLE IF NOT EXISTS `cz_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '包大小',
  `content` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='版本表';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
