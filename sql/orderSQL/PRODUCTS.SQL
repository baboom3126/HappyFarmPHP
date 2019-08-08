-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2017-05-24 02:10:10
-- 伺服器版本: 5.7.14
-- PHP 版本： 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `happyfarm`
--

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `inventory` int(25) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `inventory`) VALUES
(7, '糯米椒123', '為無辣味之甘甜辣椒品種，可當蔬菜食用而非只當調味的配角！果實長10~12cm，果色濃綠，果型直長少彎曲，結果量豐富且產期長，抗病性佳。', 35, '3.jpg', 9),
(8, '青江菜', '青江菜含有豐富的維生素Ｃ、鈣質及葉酸，對高血壓、動脈硬化有預防的效果，也能維持牙齒、骨骼的強壯，豐富的維生素A對於眼睛的保養上有極佳的幫助。', 40, '8.jpg', -14),
(9, '雪裡紅', '在中國北方，其莖葉用來製做成同名的鹹菜。其根用來醃制鹹菜芥菜頭。醃好的雪裡蕻顏色保持深綠，可用來炒肉，炖豆腐等。', 50, '9.jpg', 21),
(10, '青江菜', '由於青江菜含有維生素A、Ｃ和高量的蛋白質，因此對於預防老化、滋潤肌膚有很大的保養功用。此外，青江菜富有纖維質，可以有效改善便秘。 ', 40, '10.jpg', 20),
(11, '大陸妹', '屬於立葉不結球萵苣類，其營養成分以維生素A居多，鐵、磷、鈣、鈉、矽、硫等微量元素。適合炒食、生菜、盤飾或麵包生菜。', 40, '11.jpg', 20),
(12, '綠豆芽', '有機綠豆芽是以純天然,無污染的礦泉活水來培育及清洗,可直接生食,打精力湯或做沙拉配菜,潤餅手捲及精力湯,爽脆清甜。', 50, '12.jpg', 20);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
