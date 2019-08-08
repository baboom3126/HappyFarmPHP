-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2017-05-12 01:55:38
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
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, '紅莧菜', '新安農場在西螺栽種的紅莧菜，採用高透光率水平棚架網室栽培，長期使用全腐熟有機肥，嚴格要求降低硝酸鹽，並且採用人工及火焰除草，很適合搭配海鮮食用。', 40, '1.jpg'),
(2, '黃豆芽', '有機黃豆芽是以純天然,無污染的礦泉活水來培育及清洗,可炒食貨熬高湯,也是火鍋料理的好配料。張年富（康萊富有機芽菜農園）', 55, '2.jpg'),
(3, '青蔥', '生活該有怎樣的態度,人生該有怎樣的責任。有機不只是一個商品,而是一種生活方式。圓培致力於推廣最好的營養保存方式，讓有機蔬果不只有機，讓人們更健康！', 40, '3.jpg'),
(4, '紫高麗', '富含維生素，含有維生素A、C、E、U。維生素C可促進膠原蛋白的形成；維生素E具抗氧化作用，有助於減少自由基的產生；維生素U則為天然抗潰瘍因子。', 70, '4.jpg'),
(5, '韭菜花', '韭菜花富含水分，蛋白質，脂肪，糖類，礦物質鈣、磷、鐵，維生素A原、維生素B1、維生素B2、維生素c和食物纖維等。適宜夜盲症，乾眼病之人食用。', 50, '5.jpg'),
(6, '九層塔', '九層塔的繁殖力很強，味道亦極特殊。貝有去腥味增香氣的效果，如煮海鮮類、炒烏賊、下水湯、魚丸或魚羹等，有了它，滋味就不同凡響了。', 20, '6.jpg'),
(7, '糯米椒', '為無辣味之甘甜辣椒品種，可當蔬菜食用而非只當調味的配角！果實長10~12cm，果色濃綠，果型直長少彎曲，結果量豐富且產期長，抗病性佳。', 35, '7.jpg'),
(8, '青江菜', '青江菜含有豐富的維生素Ｃ、鈣質及葉酸，對高血壓、動脈硬化有預防的效果，也能維持牙齒、骨骼的強壯，豐富的維生素A對於眼睛的保養上有極佳的幫助。', 40, '8.jpg'),
(9, '雪裡紅', '在中國北方，其莖葉用來製做成同名的鹹菜。其根用來醃制鹹菜芥菜頭。醃好的雪裡蕻顏色保持深綠，可用來炒肉，炖豆腐等。', 50, '9.jpg'),
(10, '青江菜', '由於青江菜含有維生素A、Ｃ和高量的蛋白質，因此對於預防老化、滋潤肌膚有很大的保養功用。此外，青江菜富有纖維質，可以有效改善便秘。 ', 40, '10.jpg'),
(11, '大陸妹', '屬於立葉不結球萵苣類，其營養成分以維生素A居多，鐵、磷、鈣、鈉、矽、硫等微量元素。適合炒食、生菜、盤飾或麵包生菜。', 40, '11.jpg'),
(12, '綠豆芽', '有機綠豆芽是以純天然,無污染的礦泉活水來培育及清洗,可直接生食,打精力湯或做沙拉配菜,潤餅手捲及精力湯,爽脆清甜。', 50, '12.jpg');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
