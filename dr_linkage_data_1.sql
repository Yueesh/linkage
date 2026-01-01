-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2026-01-01 17:08:58
-- 服务器版本： 5.7.44-log
-- PHP 版本： 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `xunrui`
--

-- --------------------------------------------------------

--
-- 表的结构 `dr_linkage_data_1`
--

CREATE TABLE `dr_linkage_data_1` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `site` mediumint(5) UNSIGNED NOT NULL COMMENT '站点id',
  `pid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有上级id',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目名称',
  `cname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '别名',
  `child` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否有下级',
  `hidden` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '前端隐藏',
  `childids` text COLLATE utf8mb4_unicode_ci COMMENT '下级所有id',
  `displayorder` mediumint(8) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='联动菜单数据表';

--
-- 转存表中的数据 `dr_linkage_data_1`
--

INSERT INTO `dr_linkage_data_1` (`id`, `site`, `pid`, `pids`, `name`, `cname`, `child`, `hidden`, `childids`, `displayorder`) VALUES
(1, 1, 0, '0', '北京市', 'add11', 0, 0, '1', 0),
(2, 1, 0, '0', '天津市', 'add12', 0, 0, '2', 0),
(3, 1, 0, '0', '河北省', 'add13', 0, 0, '3', 0),
(4, 1, 0, '0', '山西省', 'add14', 0, 0, '4', 0),
(5, 1, 0, '0', '内蒙古自治区', 'add15', 0, 0, '5', 0),
(6, 1, 0, '0', '辽宁省', 'add21', 0, 0, '6', 0),
(7, 1, 0, '0', '吉林省', 'add22', 0, 0, '7', 0),
(8, 1, 0, '0', '黑龙江省', 'add23', 0, 0, '8', 0),
(9, 1, 0, '0', '上海市', 'add31', 0, 0, '9', 0),
(10, 1, 0, '0', '江苏省', 'add32', 0, 0, '10', 0),
(11, 1, 0, '0', '浙江省', 'add33', 0, 0, '11', 0),
(12, 1, 0, '0', '安徽省', 'add34', 0, 0, '12', 0),
(13, 1, 0, '0', '福建省', 'add35', 0, 0, '13', 0),
(14, 1, 0, '0', '江西省', 'add36', 0, 0, '14', 0),
(15, 1, 0, '0', '山东省', 'add37', 0, 0, '15', 0),
(16, 1, 0, '0', '河南省', 'add41', 0, 0, '16', 0),
(17, 1, 0, '0', '湖北省', 'add42', 0, 0, '17', 0),
(18, 1, 0, '0', '湖南省', 'add43', 0, 0, '18', 0),
(19, 1, 0, '0', '广东省', 'add44', 0, 0, '19', 0),
(20, 1, 0, '0', '广西壮族自治区', 'add45', 0, 0, '20', 0),
(21, 1, 0, '0', '海南省', 'add46', 0, 0, '21', 0),
(22, 1, 0, '0', '重庆市', 'add50', 0, 0, '22', 0),
(23, 1, 0, '0', '四川省', 'add51', 0, 0, '23', 0),
(24, 1, 0, '0', '贵州省', 'add52', 0, 0, '24', 0),
(25, 1, 0, '0', '云南省', 'add53', 0, 0, '25', 0),
(26, 1, 0, '0', '西藏自治区', 'add54', 0, 0, '26', 0),
(27, 1, 0, '0', '陕西省', 'add61', 0, 0, '27', 0),
(28, 1, 0, '0', '甘肃省', 'add62', 0, 0, '28', 0),
(29, 1, 0, '0', '青海省', 'add63', 0, 0, '29', 0),
(30, 1, 0, '0', '宁夏回族自治区', 'add64', 0, 0, '30', 0),
(31, 1, 0, '0', '新疆维吾尔自治区', 'add65', 0, 0, '31', 0);

--
-- 转储表的索引
--

--
-- 表的索引 `dr_linkage_data_1`
--
ALTER TABLE `dr_linkage_data_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cname` (`cname`),
  ADD KEY `hidden` (`hidden`),
  ADD KEY `list` (`site`,`displayorder`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `dr_linkage_data_1`
--
ALTER TABLE `dr_linkage_data_1`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
