-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2022 at 10:10 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserName` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin user', 'admin', 7894561238, 'marcelo@abv.bg', 'e10adc3949ba59abbe56e057f20f883e', '2019-04-05 07:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(3, 'Пици', '2019-04-05 10:36:01'),
(4, 'Дюнери', '2019-04-05 10:36:25'),
(5, 'Спагети', '2019-04-05 10:36:35'),
(6, 'Основни', '2019-04-05 10:36:47'),
(11, 'Десерти', '2021-12-18 17:29:21'),
(13, 'Безалкохолни', '2022-02-05 20:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
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
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`) VALUES
(1, 'Пици', 'Пица Рома', '9.80', 'кашкавал, шунка', 'f97fcb777fbc60235e7cfdf991cb0cfa.jpg', '124'),
(2, 'Пици', 'Пица капричоза', '10.20', 'кашкавал, шунка, ', '0c3dea8d2edc9b9b7174616874b21b58.jpg', 'Regular'),
(4, 'Пици', 'Вегетариана', '14.50', 'маслини, гъби ', '73323ff74a39e6157cf73ad52cf15c66.jpg', 'Medium'),
(6, 'Основни', 'Боб ', '12.00', 'боб (бял, шарен),морков, червена чушка, лук, джоджен , магданоз, червен пипер', '0ee2405d162c60e415bfba56a24aca8c.jpg', 'Full'),
(8, 'Десерти', 'Палачинки', '8.50', 'сирене, сладко, мед                      	', 'd984b4a23552203107391bc98dd0e4dc.jpg', '2'),
(10, 'Десерти', 'Понички', '6.00', 'шоколад, сладко', '66d5785b3c99179f5a5bb7d7d94636dd.jpg', '4 pcs'),
(12, 'Основни', 'Омлет', '8.50', 'Яица, сирене                                           	', '8cc336b118e1feb503f9a54f3bdcdf1b.jpg', '1'),
(15, 'Спагети', 'Карбонара', '5.20', 'бекон, сметана, пармезан                                  	', 'f8f34e70f13c6d9e982640e3b39f317b.jpg', 'full'),
(16, 'Спагети', 'Спагети Болонезе', '8.20', 'говеждо/свинско месо панчета (италиански бекон ). лук. моркови. целина. домати          	', '927f5a1c2bcfff25ff8a936fa98d5f2f.jpg', 'Full'),
(19, 'Безалкохолни', 'Кока кола', '1.20', '                  кола                               	', '67fdeff53683ef2c4960fa3cf26c3510.jpg', '233'),
(20, 'Десерти', 'тиква', '4.50', '                                                 	', 'a4bc1c98696070b9336705e0e8882f08.jpg', '5'),
(21, 'Дюнери', 'Дюнер малък ', '4.00', 'Месо, салати, картофи                              	', 'ece5f11bd5934cd4c76f2112a4ac256b.png', '1'),
(22, 'Дюнери', 'Дюнер среден', '5.00', 'месо, салати, картофи    	', '38a7197d4bb403037bc7557bd9f8fd15.jpg', '1'),
(23, 'Безалкохолни', 'Капи праскова', '1.90', '                  праскова                               	', '2567bb951796921896c61ee27e602fbd.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(52, '144149318', 's', 'Order Confirmed', '2021-12-18 21:35:08', NULL),
(53, '314140323', '', 'Order Confirmed', '2021-12-18 21:36:54', NULL),
(54, '314140323', '', 'Food being Prepared', '2021-12-18 21:40:06', NULL),
(55, '314140323', '', 'Food Pickup', '2021-12-18 21:40:56', NULL),
(56, '614585762', '', 'Order Confirmed', '2021-12-19 14:13:17', NULL),
(57, '867280274', '', 'Order Confirmed', '2021-12-19 15:28:46', NULL),
(58, '867280274', '', 'Order Confirmed', '2021-12-19 16:12:33', NULL),
(59, '634177578', '', 'Order Confirmed', '2021-12-19 20:05:21', NULL),
(60, '634177578', '', 'Order Confirmed', '2021-12-20 19:48:36', NULL),
(61, '634177578', '', 'Order Confirmed', '2021-12-20 19:55:05', NULL),
(62, '634177578', '', 'Order Confirmed', '2021-12-20 19:57:05', NULL),
(63, '228380484', '', 'Order Confirmed', '2021-12-20 19:57:15', NULL),
(64, '228380484', '', 'Order Confirmed', '2021-12-20 19:57:52', NULL),
(65, '922911768', '', 'Order Confirmed', '2022-01-28 12:10:39', NULL),
(66, '922911768', '', 'Order Confirmed', '2022-01-28 12:13:25', NULL),
(67, '922911768', '', 'Order Cancelled', '2022-01-28 12:13:41', NULL),
(68, '922911768', '', 'Order Cancelled', '2022-01-28 12:17:12', NULL),
(69, '766070719', '', 'Order Confirmed', '2022-01-28 12:23:09', NULL),
(70, '766070719', '', 'Order Cancelled', '2022-01-28 12:23:32', NULL),
(71, '878864919', '', 'Order Confirmed', '2022-01-28 12:26:05', NULL),
(72, '878864919', '', 'Food being Prepared', '2022-01-28 12:26:22', NULL),
(73, '878864919', '', 'Food being Prepared', '2022-01-28 12:29:41', NULL),
(74, '878864919', '', 'Food being Prepared', '2022-01-28 12:30:24', NULL),
(75, '878864919', '', 'Food being Prepared', '2022-01-28 12:35:00', NULL),
(76, '878864919', '', 'Food being Prepared', '2022-01-28 12:37:43', NULL),
(77, '878864919', '', 'Food being Prepared', '2022-01-28 12:41:01', NULL),
(78, '878864919', '', 'Food being Prepared', '2022-01-28 12:43:26', NULL),
(79, '878864919', '', 'Food being Prepared', '2022-01-28 12:45:06', NULL),
(80, '878864919', '', 'Food being Prepared', '2022-01-28 12:46:43', NULL),
(81, '878864919', '', 'Food being Prepared', '2022-01-28 12:47:15', NULL),
(82, '878864919', '', 'Food Pickup', '2022-01-28 12:47:30', NULL),
(83, '878864919', '', 'Food Pickup', '2022-01-28 12:56:52', NULL),
(84, '878864919', '', 'Food Pickup', '2022-01-28 12:57:31', NULL),
(85, '878864919', '', 'Food Delivered', '2022-01-28 13:01:15', NULL),
(86, '652894914', '', 'Food being Prepared', '2022-01-28 13:42:15', NULL),
(87, '652894914', '', 'Food being Prepared', '2022-01-28 13:44:04', NULL),
(88, '652894914', '', 'Food Pickup', '2022-01-28 13:47:25', NULL),
(89, '652894914', '', 'Food Delivered', '2022-01-28 13:47:45', NULL),
(90, '372448152', 'грешка', 'Order Cancelled', '2022-01-28 16:03:09', 1),
(91, '731549998', '', 'Order Cancelled', '2022-01-28 16:11:27', NULL),
(92, '357839502', '', 'Order Confirmed', '2022-02-05 20:01:08', NULL),
(93, '357839502', '', 'Food being Prepared', '2022-02-05 20:01:26', NULL),
(94, '357839502', '', 'Food Pickup', '2022-02-05 20:01:40', NULL),
(95, '357839502', '', 'Food Delivered', '2022-02-05 20:01:52', NULL),
(96, '472400528', '', 'Order Cancelled', '2022-02-05 20:04:32', NULL),
(97, '331771371', '', 'Order Cancelled', '2022-02-05 20:04:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ordernumber` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `About` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StreetName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `About`, `StreetName`, `Phone`, `City`, `OrderTime`, `OrderFinalStatus`) VALUES
(28, '35', '144149318', '', '', 0, '', '2021-12-18 21:23:02', 'Order Confirmed'),
(29, '35', '314140323', 'на спирката', 'marmAA', 2147483647, 'Велико Търново', '2021-12-18 21:24:42', 'Food Pickup'),
(30, '35', '614585762', 'жсдфбжф', 'христо ботев ', 2147483647, 'Велико Търново', '2021-12-18 22:07:16', 'Order Confirmed'),
(31, '36', '867280274', 'стдиона', 'българия 33', 886799127, 'велико търново', '2021-12-19 15:18:00', 'Order Confirmed'),
(32, '36', '634177578', 'На спирката', 'България', 2147483647, 'Велико Търново', '2021-12-19 18:05:48', 'Order Confirmed'),
(33, '35', '228380484', 'стдиона', 'българия 33', 886799127, 'велико търново', '2021-12-20 19:56:50', 'Order Confirmed'),
(34, '34', '922911768', 'На спирката', 'България', 886799127, 'Велико Търново', '2022-01-28 12:09:30', 'Order Cancelled'),
(35, '34', '766070719', 'На спирката', 'България', 886799127, 'Велико Търново', '2022-01-28 12:22:15', 'Order Cancelled'),
(36, '34', '878864919', 'На спирката', 'България', 886799127, 'Велико Търново', '2022-01-28 12:24:48', 'Food Delivered'),
(37, '34', '652894914', 'На спирката', 'България', 886799127, 'Велико Търново', '2022-01-28 13:12:11', 'Food Delivered'),
(38, '34', '472400528', '', '', 0, '', '2022-01-28 14:02:45', 'Order Cancelled'),
(39, '34', '331771371', 'На спирката', 'България', 886799127, 'Велико Търново', '2022-01-28 14:06:26', 'Order Cancelled'),
(40, '34', '557202976', '', '', 0, '', '2022-01-28 14:17:18', NULL),
(41, '34', '922946618', '', '', 0, '', '2022-01-28 14:18:50', NULL),
(42, '34', '506598693', '', '', 0, '', '2022-01-28 14:19:20', NULL),
(43, '34', '381978142', '', '', 0, '', '2022-01-28 14:30:29', NULL),
(44, '34', '503206152', '', '', 0, '', '2022-01-28 14:31:19', NULL),
(45, '34', '535182969', '', '', 0, '', '2022-01-28 15:36:17', NULL),
(46, '34', '403323512', '', '', 0, '', '2022-01-28 15:37:40', NULL),
(47, '34', '709210791', '', '', 0, '', '2022-01-28 15:38:52', NULL),
(48, '34', '359231390', '', '', 0, '', '2022-01-28 15:39:07', NULL),
(49, '34', '604884928', '', '', 0, '', '2022-01-28 15:43:53', NULL),
(50, '34', '821069461', '', '', 0, '', '2022-01-28 15:45:14', NULL),
(51, '34', '546016992', '', '', 0, '', '2022-01-28 15:45:58', NULL),
(52, '34', '308926961', '', '', 0, '', '2022-01-28 15:47:10', NULL),
(53, '34', '808983987', '', '', 0, '', '2022-01-28 15:49:00', NULL),
(54, '34', '230961373', '', '', 0, '', '2022-01-28 15:49:44', NULL),
(55, '34', '756412603', '', '', 0, '', '2022-01-28 15:50:32', NULL),
(56, '34', '503696885', '', '', 0, '', '2022-01-28 15:51:35', NULL),
(57, '34', '613483278', '', '', 0, '', '2022-01-28 15:54:38', NULL),
(58, '34', '731549998', '', '', 0, '', '2022-01-28 15:55:04', 'Order Cancelled'),
(59, '34', '372448152', '', '', 0, '', '2022-01-28 16:02:49', 'Order Cancelled'),
(60, '34', '245989610', 'На спирката', 'Мармарлиска 24 ', 886799127, 'Велико Търново', '2022-02-02 22:04:27', NULL),
(61, '34', '936316676', 'На спирката', 'Мармарлиска 24 ', 886799127, 'Велико Търново', '2022-02-03 20:17:00', NULL),
(62, '34', '113270568', 'На спирката', 'България', 886799127, 'Велико Търново', '2022-02-03 20:22:26', NULL),
(63, '34', '852590935', 'На спирката', 'Мармарлиска 24 ', 886799127, 'Велико Търново', '2022-02-03 20:23:55', NULL),
(64, '34', '458200240', 'до магазина', 'българия 33', 886799127, 'елена', '2022-02-03 20:27:52', NULL),
(65, '34', '792538968', 'до магазина', 'България', 2147483647, 'елена', '2022-02-03 20:28:54', NULL),
(66, '34', '102967346', 'до магазина', 'България', 2147483647, 'елена', '2022-02-03 20:30:26', NULL),
(67, '34', '100670854', 'до магазина', 'България', 2147483647, 'елена', '2022-02-03 20:31:53', NULL),
(68, '34', '719782754', 'На спирката', 'Мармарлиска 24 ', 886799127, 'Велико Търново', '2022-02-03 20:32:56', NULL),
(69, '34', '357839502', 'до магазина', 'България', 886799127, 'Велико Търново', '2022-02-05 19:59:04', 'Food Delivered'),
(70, '34', '882454159', 'На спирката', 'България', 886799127, '', '2022-02-05 21:48:57', NULL),
(71, '34', '935320292', 'до магазина', 'България', 2147483647, '', '2022-02-05 21:50:03', NULL),
(72, '34', '466191619', '', '', 0, '', '2022-02-05 21:55:03', NULL),
(73, '34', '473375646', 'На спирката', 'България', 886799127, 'Велико Търново', '2022-02-05 22:24:20', NULL),
(74, '34', '534091825', 'На спирката', 'България', 886799127, 'Велико Търново', '2022-02-05 22:32:45', NULL),
(75, '34', '360591156', '', 'България', 2147483647, 'Велико Търново', '2022-02-05 22:44:43', NULL),
(76, '34', '461098094', 'На спирката', 'България', 886799127, 'Велико Търново', '2022-02-06 20:49:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FoodId` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` time NOT NULL DEFAULT current_timestamp(),
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `IsOrderPlaced`, `OrderNumber`, `time`, `date`) VALUES
(113, '34', '1', 1, '105070743', '23:14:02', '2021-12-18'),
(114, '35', '1', 1, '587284662', '23:17:45', '2021-12-18'),
(115, '35', '1', 1, '986596891', '23:20:39', '2021-12-18'),
(116, '35', '1', 1, '144149318', '23:22:57', '2021-12-18'),
(117, '35', '1', 1, '314140323', '23:23:41', '2021-12-18'),
(118, '35', '2', 1, '314140323', '23:23:44', '2021-12-18'),
(119, '35', '1', 1, '314140323', '23:23:45', '2021-12-18'),
(120, '35', '16', 1, '614585762', '00:06:47', '2021-12-19'),
(121, '36', '1', 1, '867280274', '16:23:18', '2021-12-19'),
(122, '36', '2', 1, '867280274', '16:23:41', '2021-12-19'),
(123, '36', '1', 1, '867280274', '16:40:39', '2021-12-19'),
(124, '36', '2', 1, '634177578', '20:04:48', '2021-12-19'),
(125, '36', '1', 1, '634177578', '20:04:57', '2021-12-19'),
(126, '35', '1', 1, '228380484', '21:56:33', '2021-12-20'),
(127, '34', '1', 1, '922911768', '14:09:14', '2022-01-28'),
(128, '34', '2', 1, '766070719', '14:22:03', '2022-01-28'),
(129, '34', '2', 1, '878864919', '14:24:36', '2022-01-28'),
(130, '34', '1', 1, '652894914', '15:11:56', '2022-01-28'),
(131, '34', '2', 1, '652894914', '15:11:58', '2022-01-28'),
(132, '34', '1', 1, '472400528', '16:00:23', '2022-01-28'),
(133, '34', '4', 1, '331771371', '16:05:19', '2022-01-28'),
(134, '34', '17', 1, '331771371', '16:06:05', '2022-01-28'),
(135, '34', '2', 1, '557202976', '16:17:13', '2022-01-28'),
(136, '34', '2', 1, '922946618', '16:18:44', '2022-01-28'),
(137, '34', '2', 1, '506598693', '16:19:14', '2022-01-28'),
(138, '34', '6', 1, '381978142', '16:24:28', '2022-01-28'),
(139, '34', '1', 1, '381978142', '16:28:45', '2022-01-28'),
(140, '34', '1', 1, '381978142', '16:29:34', '2022-01-28'),
(141, '34', '2', 1, '381978142', '16:29:38', '2022-01-28'),
(142, '34', '1', 1, '381978142', '16:30:17', '2022-01-28'),
(143, '34', '2', 1, '381978142', '16:30:20', '2022-01-28'),
(144, '34', '1', 1, '503206152', '16:31:13', '2022-01-28'),
(145, '34', '1', 1, '535182969', '17:12:43', '2022-01-28'),
(149, '34', '1', 1, '535182969', '17:19:00', '2022-01-28'),
(150, '34', '1', 1, '535182969', '17:19:51', '2022-01-28'),
(151, '34', '1', 1, '535182969', '17:20:01', '2022-01-28'),
(152, '34', '1', 1, '535182969', '17:26:22', '2022-01-28'),
(153, '34', '2', 1, '535182969', '17:26:28', '2022-01-28'),
(154, '34', '1', 1, '535182969', '17:29:58', '2022-01-28'),
(155, '34', '2', 1, '535182969', '17:30:03', '2022-01-28'),
(156, '34', '1', 1, '535182969', '17:30:20', '2022-01-28'),
(157, '34', '1', 1, '535182969', '17:30:57', '2022-01-28'),
(158, '34', '1', 1, '535182969', '17:31:02', '2022-01-28'),
(159, '34', '2', 1, '535182969', '17:31:06', '2022-01-28'),
(160, '34', '1', 1, '535182969', '17:31:14', '2022-01-28'),
(161, '34', '1', 1, '535182969', '17:31:19', '2022-01-28'),
(162, '34', '1', 1, '535182969', '17:31:26', '2022-01-28'),
(163, '34', '2', 1, '535182969', '17:31:29', '2022-01-28'),
(164, '34', '1', 1, '403323512', '17:37:33', '2022-01-28'),
(165, '34', '1', 1, '359231390', '17:38:59', '2022-01-28'),
(166, '34', '2', 1, '359231390', '17:39:02', '2022-01-28'),
(167, '34', '1', 1, '604884928', '17:42:06', '2022-01-28'),
(168, '34', '1', 1, '821069461', '17:45:09', '2022-01-28'),
(169, '34', '2', 1, '546016992', '17:45:53', '2022-01-28'),
(170, '34', '2', 1, '308926961', '17:47:06', '2022-01-28'),
(171, '34', '2', 1, '808983987', '17:48:55', '2022-01-28'),
(172, '34', '2', 1, '230961373', '17:49:37', '2022-01-28'),
(173, '34', '2', 1, '230961373', '17:49:40', '2022-01-28'),
(174, '34', '2', 1, '756412603', '17:50:25', '2022-01-28'),
(175, '34', '2', 1, '756412603', '17:50:28', '2022-01-28'),
(176, '34', '10', 1, '503696885', '17:51:28', '2022-01-28'),
(177, '34', '1', 1, '613483278', '17:52:37', '2022-01-28'),
(178, '34', '1', 1, '613483278', '17:54:03', '2022-01-28'),
(179, '34', '2', 1, '613483278', '17:54:09', '2022-01-28'),
(180, '34', '12', 1, '613483278', '17:54:17', '2022-01-28'),
(181, '34', '1', 1, '613483278', '17:54:25', '2022-01-28'),
(182, '34', '2', 1, '731549998', '17:54:49', '2022-01-28'),
(183, '34', '17', 1, '731549998', '17:54:57', '2022-01-28'),
(184, '34', '1', 1, '372448152', '17:55:21', '2022-01-28'),
(185, '34', '2', 1, '372448152', '17:55:29', '2022-01-28'),
(186, '34', '1', 1, '372448152', '17:58:32', '2022-01-28'),
(187, '34', '1', 1, '372448152', '17:58:42', '2022-01-28'),
(188, '34', '1', 1, '372448152', '17:59:39', '2022-01-28'),
(189, '34', '1', 1, '372448152', '18:02:40', '2022-01-28'),
(190, '34', '1', 1, '372448152', '18:02:44', '2022-01-28'),
(191, '34', '1', 1, '245989610', '00:03:27', '2022-02-03'),
(192, '34', '2', 1, '245989610', '00:03:35', '2022-02-03'),
(193, '34', '6', 1, '245989610', '00:03:56', '2022-02-03'),
(194, '34', '16', 1, '936316676', '22:13:38', '2022-02-03'),
(195, '34', '1', 1, '113270568', '22:22:14', '2022-02-03'),
(196, '34', '1', 1, '852590935', '22:23:41', '2022-02-03'),
(197, '34', '2', 1, '458200240', '22:27:05', '2022-02-03'),
(198, '34', '1', 1, '792538968', '22:28:18', '2022-02-03'),
(199, '34', '16', 1, '102967346', '22:30:04', '2022-02-03'),
(200, '34', '10', 1, '102967346', '22:30:08', '2022-02-03'),
(201, '34', '1', 1, '100670854', '22:31:41', '2022-02-03'),
(202, '34', '1', 1, '719782754', '22:32:40', '2022-02-03'),
(203, '34', '2', 1, '719782754', '22:32:43', '2022-02-03'),
(210, '34', '2', 1, '357839502', '19:11:18', '2022-02-05'),
(212, '34', '1', 1, '357839502', '19:13:16', '2022-02-05'),
(217, '34', '10', 1, '357839502', '21:53:47', '2022-02-05'),
(226, '34', '1', 1, '882454159', '23:40:14', '2022-02-05'),
(228, '34', '22', 1, '882454159', '23:41:43', '2022-02-05'),
(231, '34', '2', 1, '935320292', '23:49:12', '2022-02-05'),
(232, '34', '1', 1, '466191619', '23:54:56', '2022-02-05'),
(233, '34', '2', 1, '473375646', '23:56:31', '2022-02-05'),
(234, '34', '6', 1, '473375646', '00:03:42', '2022-02-06'),
(235, '34', '22', 1, '534091825', '00:24:29', '2022-02-06'),
(236, '34', '22', 1, '360591156', '00:40:52', '2022-02-06'),
(238, '34', '2', 1, '461098094', '00:48:52', '2022-02-06'),
(239, '34', '16', 1, '461098094', '22:48:51', '2022-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
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
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `Town`, `Addr`, `MobileNumber`, `Password`, `RegDate`) VALUES
(36, 'Михаил', 'Борисов', 'marcelo@abv.bg', 'велико търново', 'мармарлийска 24', 886799129, 'e10adc3949ba59abbe56e057f20f883e', '2021-12-19 14:22:50');

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
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
