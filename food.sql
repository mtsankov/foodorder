-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time:  4 дек 2020 в 10:49
-- Версия на сървъра: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Структура на таблица `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserName` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin user', 'admin', 7894561238, 'test@gmail.com', 'd121b51b6cb53b5ee16798f535bd57c0', '2019-04-05 07:16:39');

-- --------------------------------------------------------

--
-- Структура на таблица `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(3, 'Ð˜Ñ‚Ð°Ð»Ð¸ÑÐ½ÑÐºÐ° ÐºÑƒÑ…Ð½Ñ', '2019-04-05 10:36:01'),
(4, 'ÐžÑÐ½Ð¾Ð²Ð½Ð¸', '2019-04-05 10:36:25'),
(5, 'ÐŸÐ¸Ñ†Ð¸', '2019-04-05 10:36:35'),
(6, 'ÐÐ°Ð¿Ð¸Ñ‚ÐºÐ¸', '2019-04-05 10:36:47'),
(7, 'Ð”ÐµÑÐµÑ€Ñ‚Ð¸', '2019-04-05 10:43:13'),
(8, 'Ð¡Ñ‚Ð°Ñ€Ñ‚ÐµÑ€Ð¸', '2019-04-05 10:43:45'),
(9, 'ÐšÐ¸Ñ‚Ð°Ð¹ÑÐºÐ° ÐºÑƒÑ…Ð½Ñ', '2019-04-24 05:43:08'),
(10, 'Test Food ', '2019-05-06 16:36:16');

-- --------------------------------------------------------

--
-- Структура на таблица `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ItemName` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ItemPrice` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ItemDes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ItemQty` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`) VALUES
(1, 'ÐŸÐ¸Ñ†Ð¸', 'ÐšÐ°Ð¿Ñ€Ð¸Ñ‡Ð¾Ð·Ð° 400 Ð³Ñ€.', '9.80', 'Ð´Ð¾Ð¼Ð°Ñ‚ÐµÐ½ ÑÐ¾Ñ, ÐºÐ°ÑˆÐºÐ°Ð²Ð°Ð», ÑˆÑƒÐ½ÐºÐ°, Ð³ÑŠÐ±Ð¸', 'f97fcb777fbc60235e7cfdf991cb0cfa.jpg', '124'),
(2, 'ÐŸÐ¸Ñ†Ð¸', 'ÐœÐ°Ð¼Ð¼Ð° Ð¼Ð¸Ð°', '11.20', 'Ð´Ð¾Ð¼Ð°Ñ‚ÐµÐ½ ÑÐ¾Ñ, Ð±Ð¸Ð²Ð¾Ð»ÑÐºÐ° Ð¼Ð¾Ñ†Ð°Ñ€ÐµÐ»Ð°, ÑÐ¿Ð¸Ð½Ð°Ñ‚Ð°, Ð¿Ñ€Ð¾ÑˆÑƒÑ‚Ð¾,Ð¿Ð°Ñ€Ð¼ÐµÐ·Ð°Ð½,â€¦', 'f97fcb777fbc60235e7cfdf991cb0cfa.jpg', 'Regular'),
(3, 'Ð˜Ñ‚Ð°Ð»Ð¸ÑÐ½ÑÐºÐ° ÐºÑƒÑ…Ð½Ñ', 'Corn Pizza', '12.20', 'Sprinkle with salt and pepper; let stand 20 minutes. Place pizza crust on a parchment paper-lined baking sheet', 'f97fcb777fbc60235e7cfdf991cb0cfa.jpg', 'Large'),
(4, 'Ð˜Ñ‚Ð°Ð»Ð¸ÑÐ½ÑÐºÐ° ÐºÑƒÑ…Ð½Ñ', 'Veg Extravaganza Pizza', '14.50', 'Veg ExtravaganzaA pizza that decidedly staggers', '73323ff74a39e6157cf73ad52cf15c66.jpg', 'Medium'),
(5, 'Ð˜Ñ‚Ð°Ð»Ð¸ÑÐ½ÑÐºÐ° ÐºÑƒÑ…Ð½Ñ', 'Veg Extravaganza Pizza', '14.40', 'Veg ExtravaganzaA pizza that decidedly staggers under an overload of golden corn, exotic black olives, crunchy onions', '9ed5c4756f56317810d7e364ca7f1634.jpg', 'Large'),
(6, 'North Indian', 'Chana Masala', '12.00', 'To make this chana masala we start with a trio of ingredients found in most Indian curriesâ€“onion, garlic, and ginger. ', '0ee2405d162c60e415bfba56a24aca8c.jpg', 'Full'),
(7, 'North Indian', 'Rajma Masala', '12.50', 'Rajma Masala is a much loved spicy curry in most Indian Households.                               	', '63d50ef58f33ec97cf928c05deb8ccd3.jpg', 'Full'),
(8, 'South Indian', 'Dosa', '8.50', 'Dosa  are served hot along with sambar, a stuffing of potatoes, and chutney.                             	', 'd984b4a23552203107391bc98dd0e4dc.jpg', 'Regular'),
(9, 'South Indian', 'Idli', '7.50', 'Idli are a type of savoury rice cake, originating from the Indian subcontinent and served coconut chutney.                                         	', '0cbe727a2529cc6cd8dcbd40ee53fe2c.jpg', '2 pcs'),
(10, 'South Indian', 'Vada', '6.00', 'Medu vada served with hot shambhar and coconut chutney ', '66d5785b3c99179f5a5bb7d7d94636dd.jpg', '2 pcs'),
(11, 'North Indian', 'Chole Bhature', '13.90', 'Chole Bhuture is a combination of chana masala (spicy white chickpeas) and bhatura,                                                	', 'da41d10bb09c6cfac8168435164ff0b3.jpg', '2 pcs'),
(12, 'North Indian', 'Aloo paratha', '8.50', ' Aloo paratha is served with butter, chutney, or Indian pickles in different parts of northern and western India.                                                 	', '8cc336b118e1feb503f9a54f3bdcdf1b.jpg', '2 pieces'),
(13, 'North Indian', 'Mix Pratha', '8.80', 'veg paratha soft, healthy and delicious whole wheat parathas made with mix vegetables. ... this no onion no garlic veg paratha recipe is pretty flexible.                                               	', '4b4f0a570c7f36f0db9e4f8e7fa60442.jpg', '2 pieces'),
(14, 'North Indian', 'Paneer Paratha.', '9.50', 'paneer paratha. paneer paratha is an indian flat bread made with cottage cheese stuffing. paneer paratha are popular breakfast recipe in punjabi homes.                                                 	', 'a19b8b7095ad0c23ddd95a28c3f85268.jpg', '2 pieces'),
(15, 'ÐšÐ¸Ñ‚Ð°Ð¹ÑÐºÐ° ÐºÑƒÑ…Ð½Ñ', 'Hakka Noodle', '5.20', 'Hakka Noodle is one our famous food which is made up by our homemade masale.                                               	', 'f8f34e70f13c6d9e982640e3b39f317b.jpg', 'full'),
(16, 'ÐšÐ¸Ñ‚Ð°Ð¹ÑÐºÐ° ÐºÑƒÑ…Ð½Ñ', 'Veg Chowmin', '8.20', 'Veg Chowmien full Plate                                                 	', '927f5a1c2bcfff25ff8a936fa98d5f2f.jpg', 'Full'),
(17, 'ÐŸÐ¸Ñ†Ð¸', 'ÐœÐ°Ñ€Ð³Ð°Ñ€Ð¸Ñ‚Ð°', '8.40', 'Ð´Ð¾Ð¼Ð°Ñ‚ÐµÐ½ ÑÐ¾Ñ, Ð¼Ð¾Ñ†Ð°Ñ€ÐµÐ»Ð°, ÐºÐ°ÑˆÐºÐ°Ð²Ð°Ð», Ð±Ð¾ÑÐ¸Ð»ÐµÐº                                  	', '471aaffdc4b6e69503d0dbd37c7c9213.jpg', '340 '),
(18, 'ÐÐ°Ð¿Ð¸Ñ‚ÐºÐ¸', 'ÐšÐ¾ÐºÐ° ÐºÐ¾Ð»Ð°', '2.20', '                                                 	', '67fdeff53683ef2c4960fa3cf26c3510.jpg', '233'),
(19, 'ÐÐ°Ð¿Ð¸Ñ‚ÐºÐ¸', 'ÐšÐ¾ÐºÐ° ÐºÐ¾Ð»Ð°', '2.20', '                                                 	', '67fdeff53683ef2c4960fa3cf26c3510.jpg', '233');

-- --------------------------------------------------------

--
-- Структура на таблица `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(1, '783218118', 'Restaurant Closed.', 'Order Cancelled', '2019-05-05 16:07:35', NULL),
(6, '448858080', 'I want  to cancel this order', 'Order Cancelled', '2019-05-05 17:33:42', 1),
(7, '270156472', 'Order confiremed', 'Order Confirmed', '2019-05-06 16:30:38', NULL),
(8, '270156472', 'Food is preparing.', 'Food being Prepared', '2019-05-06 16:31:08', NULL),
(9, '270156472', 'Food on the way', 'Food Pickup', '2019-05-06 16:31:42', NULL),
(10, '270156472', 'Food is delivired', 'Food Delivered', '2019-05-06 16:35:27', NULL),
(11, '201712648', 'order Cancelled', 'Order Cancelled', '2019-05-06 16:41:55', NULL),
(12, '523988302', 'Ð¾Ñ‚ÐºÐ°Ð·Ð°Ð½Ð° Ð¿Ð¾Ñ€ÑŠÑ‡ÐºÐ°', 'Order Cancelled', '2020-11-30 10:38:12', NULL),
(13, '523988302', 'Ð¾Ñ‚ÐºÐ°Ð·Ð°Ð½Ð° Ð¿Ð¾Ñ€ÑŠÑ‡ÐºÐ°', 'Order Cancelled', '2020-11-30 10:57:06', NULL),
(14, '936623156', '', 'Order Confirmed', '2020-11-30 11:14:31', NULL),
(15, '936623156', '', 'Order Confirmed', '2020-11-30 11:17:17', NULL),
(16, '936623156', '', 'Order Confirmed', '2020-11-30 11:18:05', NULL),
(17, '936623156', '', 'Food being Prepared', '2020-11-30 11:18:31', NULL),
(18, '936623156', '', 'Food being Prepared', '2020-11-30 11:33:35', NULL),
(19, '936623156', '', 'Food Pickup', '2020-11-30 11:34:04', NULL),
(20, '936623156', '', 'Food Delivered', '2020-11-30 11:40:57', NULL),
(21, '936623156', '', 'Food Delivered', '2020-11-30 11:46:07', NULL),
(22, '936623156', '', 'Food Delivered', '2020-11-30 11:48:46', NULL),
(23, '504858430', '', 'Order Confirmed', '2020-11-30 11:49:26', NULL),
(24, '504858430', '', 'Order Cancelled', '2020-11-30 11:49:57', NULL),
(25, '504858430', '', 'Order Cancelled', '2020-11-30 11:52:22', NULL),
(26, '650477594', '', 'Order Confirmed', '2020-11-30 11:52:31', NULL),
(27, '650477594', '', 'Order Confirmed', '2020-11-30 11:53:06', NULL),
(28, '650477594', '', 'ÐŸÐ¾Ñ€ÑŠÑ‡ÐºÐ°Ñ‚Ð° Ð´Ð¾ÑÑ‚Ð°Ð²ÐµÐ½Ð°', '2020-11-30 11:53:11', NULL),
(29, '657118605', '', 'ÐŸÐ¾Ñ‚Ð²ÑŠÑ€Ð´ÐµÑ€Ð½Ð° Ð¿Ð¾Ñ€ÑŠÑ‡ÐºÐ°', '2020-12-01 11:39:10', NULL),
(30, '190398969', '', 'Ð”Ð¾ÑÑ‚Ð°Ð²ÑÐ½Ðµ Ð½Ð° Ð¿Ð¾Ñ€ÑŠÑ‡ÐºÐ°', '2020-12-01 11:39:36', NULL),
(31, '510296445', '', 'ÐÐ½ÑƒÐ»Ð¸Ñ€Ð°Ð½Ð° Ð¿Ð¾Ñ€ÑŠÑ‡ÐºÐ°', '2020-12-01 11:52:50', NULL),
(32, '729007529', '', 'ÐŸÐ¾Ñ€ÑŠÑ‡ÐºÐ°Ñ‚Ð° Ð´Ð¾ÑÑ‚Ð°Ð²ÐµÐ½Ð°', '2020-12-01 11:54:45', NULL),
(33, '158443517', '', 'ÐŸÐ¾Ð´Ð³Ð¾Ñ‚Ð¾Ð²ÐºÐ° Ð½Ð° Ð¿Ð¾Ñ€ÑŠÑ‡ÐºÐ°', '2020-12-01 13:28:14', NULL),
(34, '427448181', '', 'ÐŸÐ¾Ñ‚Ð²ÑŠÑ€Ð´ÐµÑ€Ð½Ð° Ð¿Ð¾Ñ€ÑŠÑ‡ÐºÐ°', '2020-12-03 10:20:53', NULL),
(35, '989592852', '', 'ÐÐ½ÑƒÐ»Ð¸Ñ€Ð°Ð½Ð° Ð¿Ð¾Ñ€ÑŠÑ‡ÐºÐ°', '2020-12-03 10:22:53', NULL),
(36, '459376379', 'xasd', 'Order Confirmed', '2020-12-03 10:24:40', NULL);

-- --------------------------------------------------------

--
-- Структура на таблица `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ordernumber` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Flatnobuldngno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StreetName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Landmark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OrderFinalStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `OrderTime`, `OrderFinalStatus`) VALUES
(1, '1', '783218118', 'Hno 546', 'Gali No10', 'New Delhi', 'NA', 'Delhi', '2019-05-05 16:03:28', 'Order Cancelled'),
(2, '1', '448858080', 'Flat 12A', 'ABC', 'XYZ', 'ABCDEF', 'New Delhi', '2019-05-05 17:01:58', 'Order Cancelled'),
(3, '2', '201712648', 'A-10', 'HK pg house', 'Mayur Vihar', 'Near Reliance Fresh', 'New Delhi', '2019-05-06 06:27:28', 'Order Cancelled'),
(4, '5', '270156472', 'Flat no 123', 'ABC Street', 'XYZ Area', 'NA', 'New Delhi', '2019-05-06 16:28:18', 'Food Delivered'),
(5, '6', '523988302', '6', 'ÐÐ»ÐµÐ½ ÐœÐ°Ðº', 'Ñ‚ÐµÑ€Ðµ', '', 'Ð’ÐµÐ»Ð¸ÐºÐ¾ Ð¢ÑŠÑ€Ð½Ð¾Ð²Ð¾', '2020-11-30 07:00:17', 'Order Cancelled'),
(6, '6', '936623156', '23', 'Ñ„Ð²ÐµÐ´Ð¶Ñ†', '', 'Ñ„Ð´Ð±Ð¶Ñ„Ð´', 'Ð²ÐµÐ»Ð¸', '2020-11-30 11:12:59', 'Food Delivered'),
(7, '7', '504858430', '1', 'Ð¼Ð¾ÑÑ‚', '', '', 'Ð¿Ñ€Ð°Ð³Ð°', '2020-11-30 11:18:29', 'Order Cancelled'),
(8, '6', '650477594', '12', 'Ð¼Ð°Ñ€Ð¼', '', '', 'Ð’ÐµÐ»Ð¸ÐºÐ¾ Ð¢ÑŠÑ€Ð½Ð¾Ð²Ð¾', '2020-11-30 11:51:48', 'ÐŸÐ¾Ñ€ÑŠÑ‡ÐºÐ°Ñ‚Ð° Ð´Ð¾ÑÑ‚Ð°Ð²ÐµÐ½Ð°'),
(9, '6', '729007529', '', '', '', '', '', '2020-12-01 07:25:56', 'ÐŸÐ¾Ñ€ÑŠÑ‡ÐºÐ°Ñ‚Ð° Ð´Ð¾ÑÑ‚Ð°Ð²ÐµÐ½Ð°'),
(10, '7', '657118605', '1', 'Ð¼Ð¾ÑÑ‚', '', '', 'Ð¿Ñ€Ð°Ð³Ð°', '2020-12-01 11:36:32', 'ÐŸÐ¾Ñ‚Ð²ÑŠÑ€Ð´ÐµÑ€Ð½Ð° Ð¿Ð¾Ñ€ÑŠÑ‡ÐºÐ°'),
(11, '7', '190398969', '', 'Ð¼Ð¾ÑÑ‚', '', '', 'Ð¿Ñ€Ð°Ð³Ð°', '2020-12-01 11:38:19', 'Ð”Ð¾ÑÑ‚Ð°Ð²ÑÐ½Ðµ Ð½Ð° Ð¿Ð¾Ñ€ÑŠÑ‡ÐºÐ°'),
(12, '7', '510296445', '', '', '', '', '', '2020-12-01 11:45:42', 'ÐÐ½ÑƒÐ»Ð¸Ñ€Ð°Ð½Ð° Ð¿Ð¾Ñ€ÑŠÑ‡ÐºÐ°'),
(13, '7', '158443517', '', '', '', '', '', '2020-12-01 13:25:26', 'ÐŸÐ¾Ð´Ð³Ð¾Ñ‚Ð¾Ð²ÐºÐ° Ð½Ð° Ð¿Ð¾Ñ€ÑŠÑ‡ÐºÐ°'),
(14, '7', '459376379', '', '', '', '', '', '2020-12-01 13:26:58', 'Order Confirmed'),
(15, '7', '989592852', '', '', '', '', '', '2020-12-02 07:15:05', 'ÐÐ½ÑƒÐ»Ð¸Ñ€Ð°Ð½Ð° Ð¿Ð¾Ñ€ÑŠÑ‡ÐºÐ°'),
(16, '7', '584303309', '', '', '', '', '', '2020-12-03 08:04:23', NULL),
(17, '6', '427448181', '', '', '', '', '', '2020-12-03 10:13:55', 'ÐŸÐ¾Ñ‚Ð²ÑŠÑ€Ð´ÐµÑ€Ð½Ð° Ð¿Ð¾Ñ€ÑŠÑ‡ÐºÐ°');

-- --------------------------------------------------------

--
-- Структура на таблица `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FoodId` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Схема на данните от таблица `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `IsOrderPlaced`, `OrderNumber`) VALUES
(1, '1', '8', 1, '783218118'),
(2, '1', '4', 1, '783218118'),
(3, '1', '1', 1, '448858080'),
(4, '1', '5', 1, '448858080'),
(5, '2', '4', 1, '201712648'),
(6, '2', '8', NULL, NULL),
(7, '5', '6', 1, '270156472'),
(8, '5', '13', 1, '270156472'),
(9, '6', '15', 1, '523988302'),
(10, '6', '1', 1, '936623156'),
(11, '7', '4', 1, '504858430'),
(12, '6', '1', 1, '650477594'),
(13, '6', '1', 1, '729007529'),
(14, '6', '1', 1, '729007529'),
(15, '6', '1', 1, '729007529'),
(16, '6', '1', 1, '729007529'),
(17, '7', '1', 1, '657118605'),
(18, '7', '18', 1, '190398969'),
(19, '7', '15', 1, '190398969'),
(20, '7', '3', 1, '190398969'),
(21, '7', '7', 1, '510296445'),
(22, '6', '13', 1, '427448181'),
(23, '7', '2', 1, '158443517'),
(24, '7', '2', 1, '158443517'),
(25, '6', '14', 1, '427448181'),
(26, '7', '1', 1, '459376379'),
(27, '', '2', NULL, NULL),
(28, '7', '15', 1, '989592852'),
(29, '7', '1', 1, '584303309'),
(30, '7', '1', 1, '584303309'),
(31, '7', '2', 1, '584303309'),
(32, '7', '2', 1, '584303309'),
(33, '7', '1', 1, '584303309'),
(34, '7', '1', 1, '584303309'),
(35, '7', '1', 1, '584303309'),
(36, '7', '1', 1, '584303309'),
(37, '7', '1', 1, '584303309'),
(38, '7', '1', 1, '584303309'),
(39, '7', '4', NULL, NULL),
(40, '7', '16', NULL, NULL),
(41, '7', '16', NULL, NULL),
(42, '6', '2', 1, '427448181');

-- --------------------------------------------------------

--
-- Структура на таблица `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Town` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Addr` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `Town`, `Addr`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'ÐœÐ°Ñ€Ð¸Ñ', 'ÐŸÐµÑ‚Ñ€Ð¾Ð²Ð°', 'maria@gmail.com', NULL, NULL, 887655574343, '202cb962ac59075b964b07152d234b70', '2019-04-08 07:41:22'),
(2, 'Ð ÑƒÐ¼ÐµÐ½ ', 'Ð˜Ð²Ð°Ð½Ð¾Ð²', 'rumeniv@gmail.com', NULL, NULL, 886788812, '202cb962ac59075b964b07152d234b70', '2019-04-08 07:43:28'),
(3, 'Ð¯Ð²Ð¾Ñ€', 'ÐŸÐµÑ‚Ñ€Ð¾Ð²', 'yavor@gmail.com', NULL, NULL, 8989898989, '202cb962ac59075b964b07152d234b70', '2019-04-24 07:04:02'),
(4, 'Ð¢Ð¾Ð´Ð¾Ñ€', 'ÐšÐ°Ñ€Ð°Ð½ÐµÐ´ÐµÐ²', 'karandev@gmail.com', NULL, NULL, 8975895698, '202cb962ac59075b964b07152d234b70', '2019-05-06 09:09:05'),
(5, 'Test demo', 'User', 'testuser123@gmail.com', NULL, NULL, 1234567890, '7ec66345281b134a33f784bcd06d7ea5', '2019-05-06 16:26:40'),
(6, 'ÐœÐ¸Ñ…Ð°Ð¸Ð»', 'Ð¦Ð°Ð½ÐºÐ¾Ð²', 'marcelo1@abv.bg', NULL, NULL, 886799127, 'e10adc3949ba59abbe56e057f20f883e', '2020-11-30 06:58:47'),
(7, 'Ñ‚Ð¾Ð´Ð¾Ñ€', 'Ñ‚Ð¾Ð´Ð¾Ñ€Ð¾Ð²', 'sodsot79@gmail.com', NULL, NULL, 888888888, 'e10adc3949ba59abbe56e057f20f883e', '2020-11-30 11:15:24'),
(27, 'jfeiwojadngvs', 'ÐŸÐµÑˆÐµÐ²', 'sodtsafwerewfervets@abv.bg', 'Ð’ÐµÐ»Ð¸ÐºÐ¾ Ð¢ÑŠÑ€Ð½Ð¾Ð²Ð¾', NULL, 9865435425, 'cf79ae6addba60ad018347359bd144d2', '2020-12-02 13:49:45'),
(28, 'jfeiwojadngvs', 'CVAZ SDX VCDVC D', 'test76547@abv.bg', 'Ð’ÐµÐ»Ð¸ÐºÐ¾ Ð¢ÑŠÑ€Ð½Ð¾Ð²Ð¾', 'adr', 3245235234, 'e10adc3949ba59abbe56e057f20f883e', '2020-12-03 09:39:21'),
(29, 'ÐœÐ¸Ñ…Ð°Ð¸Ð»', 'Ð¦Ð°Ð½ÐºÐ¾Ð²', 'marcelo12@abv.bg', 'Ð’ÐµÐ»Ð¸ÐºÐ¾ Ð¢ÑŠÑ€Ð½Ð¾Ð²Ð¾', 'adr', 877766213, 'e10adc3949ba59abbe56e057f20f883e', '2020-12-03 09:42:32'),
(30, 'ÐŸÐµÑˆÐ¾', 'ÐŸÐµÑˆÐµÐ²', 'marcelo79@abv.bg', 'Ð’ÐµÐ»Ð¸ÐºÐ¾ Ð¢ÑŠÑ€Ð½Ð¾Ð²Ð¾', 'ÐÐ»ÐµÐ½ ÐœÐ°Ðº 6', 8789789789, 'e10adc3949ba59abbe56e057f20f883e', '2020-12-03 09:47:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`FoodId`,`OrderNumber`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
