-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 30, 2022 at 04:55 PM
-- Server version: 10.3.32-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arklo1`
--

-- --------------------------------------------------------

--
-- Table structure for table `anticheat_settings`
--

CREATE TABLE `anticheat_settings` (
  `ac_code` int(2) NOT NULL,
  `ac_code_trigger_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anticheat_settings`
--

INSERT INTO `anticheat_settings` (`ac_code`, `ac_code_trigger_type`) VALUES
(0, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 0),
(39, 1),
(40, 0),
(41, 0),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 0),
(49, 0),
(50, 1),
(51, 1),
(52, 1);

-- --------------------------------------------------------

--
-- Table structure for table `arrestpoints`
--

CREATE TABLE `arrestpoints` (
  `id` int(2) NOT NULL,
  `PosX` float(10,5) NOT NULL DEFAULT 0.00000,
  `PosY` float(10,5) NOT NULL DEFAULT 0.00000,
  `PosZ` float(10,5) NOT NULL DEFAULT 0.00000,
  `VW` int(5) NOT NULL DEFAULT 0,
  `Int` int(5) NOT NULL DEFAULT 0,
  `Type` int(1) NOT NULL DEFAULT 0,
  `jailVW` int(5) NOT NULL DEFAULT 0,
  `jailInt` int(5) NOT NULL DEFAULT 0,
  `jailpos1x` float(10,5) NOT NULL DEFAULT 0.00000,
  `jailpos1y` float(10,5) NOT NULL DEFAULT 0.00000,
  `jailpos1z` float(10,5) NOT NULL DEFAULT 0.00000,
  `jailpos2x` float(10,5) NOT NULL DEFAULT 0.00000,
  `jailpos2y` float(10,5) NOT NULL DEFAULT 0.00000,
  `jailpos2z` float(10,5) NOT NULL DEFAULT 0.00000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auctions`
--

CREATE TABLE `auctions` (
  `id` int(11) NOT NULL,
  `BiddingFor` varchar(64) NOT NULL DEFAULT '(none)',
  `InProgress` int(11) NOT NULL DEFAULT 0,
  `Bid` int(11) NOT NULL DEFAULT 0,
  `Bidder` int(11) NOT NULL DEFAULT 0,
  `Expires` int(11) NOT NULL DEFAULT 0,
  `Wining` varchar(24) NOT NULL DEFAULT '(none)',
  `Increment` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auctions`
--

INSERT INTO `auctions` (`id`, `BiddingFor`, `InProgress`, `Bid`, `Bidder`, `Expires`, `Wining`, `Increment`) VALUES
(1, 'ARKLO', 0, 100000, 0, 0, '', 100);

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `bannedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `permanent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bans`
--

INSERT INTO `bans` (`id`, `username`, `ip`, `bannedby`, `date`, `reason`, `permanent`) VALUES
(1, 'Sebestic_hek', '150.129.102.6', 'Wizz_Annann', '2021-07-29 16:12:08', 'poda myre', 0),
(2, 'Sebestic_hek', '150.129.102.6', 'Wizz_Annann', '2021-07-29 16:12:08', 'poda myre', 0),
(5, 'Adil_yt', '42.106.189.194', 'KERP_BOT', '2021-07-31 11:33:03', 'myran', 0),
(6, 'Adil_yt', '42.106.189.194', 'KERP_BOT', '2021-07-31 11:33:03', 'myran', 0),
(7, 'Cluder_yt', '42.106.189.196', 'KERP_BOT', '2021-07-31 16:03:16', 'myre nirthi poo', 0),
(8, 'Cluder_yt', '42.106.189.196', 'KERP_BOT', '2021-07-31 16:03:16', 'myre nirthi poo', 0),
(9, 'Adil_FF', '42.106.190.25', 'KERP_BOT', '2021-08-01 09:17:33', 'poda', 0),
(10, 'Adil_FF', '42.106.190.25', 'KERP_BOT', '2021-08-01 09:17:33', 'poda', 0),
(11, 'n/a', '255.255.255.255', 'KERP_BOT', '2021-08-01 09:18:17', '+', 0),
(17, 'Chintu_Mon', '137.97.122.115', 'Chandra_Bose', '2022-01-26 16:26:29', 'not longe', 0);

-- --------------------------------------------------------

--
-- Table structure for table `billboards`
--

CREATE TABLE `billboards` (
  `id` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `rentby` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `rentdate` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `posRX` float NOT NULL,
  `posRY` float NOT NULL,
  `posRZ` float NOT NULL,
  `int` int(11) NOT NULL,
  `vw` int(11) NOT NULL,
  `model` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `name` varchar(64) DEFAULT 'Unamed Business',
  `message` varchar(128) DEFAULT 'Welcome to the business!',
  `type` tinyint(2) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `entryfee` int(10) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 1,
  `timestamp` int(10) DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `int_x` float DEFAULT 0,
  `int_y` float DEFAULT 0,
  `int_z` float DEFAULT 0,
  `int_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `outsideint` tinyint(2) DEFAULT 0,
  `outsidevw` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `products` int(10) DEFAULT 500,
  `robbed` smallint(6) NOT NULL DEFAULT 3,
  `robbing` int(11) DEFAULT NULL,
  `prices0` int(11) NOT NULL DEFAULT 0,
  `prices1` int(11) NOT NULL DEFAULT 0,
  `prices2` int(11) NOT NULL DEFAULT 0,
  `prices3` int(11) NOT NULL DEFAULT 0,
  `prices4` int(11) NOT NULL DEFAULT 0,
  `prices5` int(11) NOT NULL DEFAULT 0,
  `prices6` int(11) NOT NULL DEFAULT 0,
  `prices7` int(11) NOT NULL DEFAULT 0,
  `prices8` int(11) NOT NULL DEFAULT 0,
  `prices9` int(11) NOT NULL DEFAULT 0,
  `prices10` int(11) NOT NULL DEFAULT 0,
  `prices11` int(11) NOT NULL DEFAULT 0,
  `prices12` int(11) NOT NULL DEFAULT 0,
  `prices13` int(11) NOT NULL DEFAULT 0,
  `prices14` int(11) NOT NULL DEFAULT 0,
  `prices15` int(11) NOT NULL DEFAULT 0,
  `prices16` int(11) NOT NULL DEFAULT 0,
  `prices17` int(11) NOT NULL DEFAULT 0,
  `prices18` int(11) NOT NULL DEFAULT 0,
  `prices19` int(11) NOT NULL DEFAULT 0,
  `prices20` int(11) NOT NULL DEFAULT 0,
  `prices21` int(11) NOT NULL DEFAULT 0,
  `prices22` int(11) NOT NULL DEFAULT 0,
  `prices23` int(11) NOT NULL DEFAULT 0,
  `prices24` int(11) NOT NULL DEFAULT 0,
  `Car0PosX` float NOT NULL DEFAULT 0,
  `Car0PosY` float NOT NULL DEFAULT 0,
  `Car0PosZ` float NOT NULL DEFAULT 0,
  `Car0PosAngle` float NOT NULL DEFAULT 0,
  `Car0ModelId` int(11) NOT NULL DEFAULT 0,
  `Car0Price` int(11) NOT NULL DEFAULT 0,
  `Car1PosX` float NOT NULL DEFAULT 0,
  `Car1PosY` float NOT NULL DEFAULT 0,
  `Car1PosZ` float NOT NULL DEFAULT 0,
  `Car1PosAngle` float NOT NULL DEFAULT 0,
  `Car1ModelId` int(11) NOT NULL DEFAULT 0,
  `Car1Price` int(11) NOT NULL DEFAULT 0,
  `Car2PosX` float NOT NULL DEFAULT 0,
  `Car2PosY` float NOT NULL DEFAULT 0,
  `Car2PosZ` float NOT NULL DEFAULT 0,
  `Car2PosAngle` float NOT NULL DEFAULT 0,
  `Car2ModelId` int(11) NOT NULL DEFAULT 0,
  `Car2Price` int(11) NOT NULL DEFAULT 0,
  `Car3PosX` float NOT NULL DEFAULT 0,
  `Car3PosY` float NOT NULL DEFAULT 0,
  `Car3PosZ` float NOT NULL DEFAULT 0,
  `Car3PosAngle` float NOT NULL DEFAULT 0,
  `Car3ModelId` int(11) NOT NULL DEFAULT 0,
  `Car3Price` int(11) NOT NULL DEFAULT 0,
  `Car1Stock` int(11) NOT NULL DEFAULT 0,
  `Car2Stock` int(11) NOT NULL DEFAULT 0,
  `Car3Stock` int(11) NOT NULL DEFAULT 0,
  `Car1Order` int(11) NOT NULL DEFAULT 0,
  `Car2Order` int(11) NOT NULL DEFAULT 0,
  `Car3Order` int(11) NOT NULL DEFAULT 0,
  `Car4PosX` float NOT NULL DEFAULT 0,
  `Car4PosY` float NOT NULL DEFAULT 0,
  `Car4PosZ` float NOT NULL DEFAULT 0,
  `Car4PosAngle` float NOT NULL DEFAULT 0,
  `Car4ModelId` int(11) NOT NULL DEFAULT 0,
  `Car4Price` int(11) NOT NULL DEFAULT 0,
  `Car5PosX` int(11) NOT NULL DEFAULT 0,
  `Car5PosY` float NOT NULL DEFAULT 0,
  `Car5PosZ` float NOT NULL DEFAULT 0,
  `Car5PosAngle` float NOT NULL DEFAULT 0,
  `Car5ModelId` int(11) NOT NULL DEFAULT 0,
  `Car5Price` int(11) NOT NULL DEFAULT 0,
  `Car6PosX` float NOT NULL DEFAULT 0,
  `Car6PosY` float NOT NULL DEFAULT 0,
  `Car6PosZ` float NOT NULL DEFAULT 0,
  `Car6PosAngle` float NOT NULL DEFAULT 0,
  `Car6ModelId` int(11) NOT NULL DEFAULT 0,
  `Car6Price` int(11) NOT NULL DEFAULT 0,
  `Car7PosX` float NOT NULL DEFAULT 0,
  `Car7PosY` float NOT NULL DEFAULT 0,
  `Car7PosZ` float NOT NULL DEFAULT 0,
  `Car7PosAngle` float NOT NULL DEFAULT 0,
  `Car7ModelId` int(11) NOT NULL DEFAULT 0,
  `Car7Price` int(11) NOT NULL DEFAULT 0,
  `Car8PosX` float NOT NULL DEFAULT 0,
  `Car8PosY` float NOT NULL DEFAULT 0,
  `Car8PosZ` float NOT NULL DEFAULT 0,
  `Car8PosAngle` float NOT NULL DEFAULT 0,
  `Car8ModelId` int(11) NOT NULL DEFAULT 0,
  `Car8Price` int(11) NOT NULL DEFAULT 0,
  `Car9PosX` float NOT NULL DEFAULT 0,
  `Car9PosY` float NOT NULL DEFAULT 0,
  `Car9PosZ` float NOT NULL DEFAULT 0,
  `Car9PosAngle` float NOT NULL DEFAULT 0,
  `Car9ModelId` int(11) NOT NULL DEFAULT 0,
  `Car9Price` int(11) NOT NULL DEFAULT 0,
  `PurchaseX` float NOT NULL DEFAULT 0,
  `PurchaseY` float NOT NULL DEFAULT 0,
  `PurchaseZ` float NOT NULL DEFAULT 0,
  `PurchaseAngle` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `ownerid`, `owner`, `name`, `message`, `type`, `price`, `entryfee`, `locked`, `timestamp`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `int_x`, `int_y`, `int_z`, `int_a`, `interior`, `world`, `outsideint`, `outsidevw`, `cash`, `products`, `robbed`, `robbing`, `prices0`, `prices1`, `prices2`, `prices3`, `prices4`, `prices5`, `prices6`, `prices7`, `prices8`, `prices9`, `prices10`, `prices11`, `prices12`, `prices13`, `prices14`, `prices15`, `prices16`, `prices17`, `prices18`, `prices19`, `prices20`, `prices21`, `prices22`, `prices23`, `prices24`, `Car0PosX`, `Car0PosY`, `Car0PosZ`, `Car0PosAngle`, `Car0ModelId`, `Car0Price`, `Car1PosX`, `Car1PosY`, `Car1PosZ`, `Car1PosAngle`, `Car1ModelId`, `Car1Price`, `Car2PosX`, `Car2PosY`, `Car2PosZ`, `Car2PosAngle`, `Car2ModelId`, `Car2Price`, `Car3PosX`, `Car3PosY`, `Car3PosZ`, `Car3PosAngle`, `Car3ModelId`, `Car3Price`, `Car1Stock`, `Car2Stock`, `Car3Stock`, `Car1Order`, `Car2Order`, `Car3Order`, `Car4PosX`, `Car4PosY`, `Car4PosZ`, `Car4PosAngle`, `Car4ModelId`, `Car4Price`, `Car5PosX`, `Car5PosY`, `Car5PosZ`, `Car5PosAngle`, `Car5ModelId`, `Car5Price`, `Car6PosX`, `Car6PosY`, `Car6PosZ`, `Car6PosAngle`, `Car6ModelId`, `Car6Price`, `Car7PosX`, `Car7PosY`, `Car7PosZ`, `Car7PosAngle`, `Car7ModelId`, `Car7Price`, `Car8PosX`, `Car8PosY`, `Car8PosZ`, `Car8PosAngle`, `Car8ModelId`, `Car8Price`, `Car9PosX`, `Car9PosY`, `Car9PosZ`, `Car9PosAngle`, `Car9ModelId`, `Car9Price`, `PurchaseX`, `PurchaseY`, `PurchaseZ`, `PurchaseAngle`) VALUES
(56, 209, 'Raquel_Murillo', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Clothing Line (500 Products left). Type /buy to purchase from this business.', 2, 999999999, 0, 0, 1643505444, 1119.19, -1370.03, 13.984, 175.391, 206.946, -139.532, 1003.51, 0, 3, 3000056, 0, 0, 440841, 355, 0, 0, 4000, 3000, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 209, 'Raquel_Murillo', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Ammunation (500 Products left). Type /buy to purchase from this business.', 1, 999999999, 0, 0, 1643278014, 1126.36, -1370.03, 13.984, -170.937, 285.783, -85.986, 1001.52, 0, 4, 3000057, 0, 0, 416503, 433, 0, NULL, 500, 5000, 7000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 208, 'itziar_ituno', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Advertisement Agency. /(ad)vertise to make an advertisement.', 5, 999999999, 0, 0, 1643296500, 1104.65, -1370.03, 13.984, 173.06, 834.152, 7.41, 1004.19, 90, 3, 3000061, 0, 0, 0, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 208, 'itziar_ituno', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Resturant (500 Products left). Type /buy to purchase from this business.', 4, 999999999, 0, 0, 1643557498, 1112.2, -1370.03, 13.984, -179.235, 377.073, -193.057, 1000.64, 0, 17, 3000062, 0, 0, 37750, 367, 0, NULL, 200, 400, 150, 300, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 208, 'itziar_ituno', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Ammunation (500 Products left). Type /buy to purchase from this business.', 7, 999999999, 0, 0, 1643296519, 1097.68, -1370.03, 13.984, 166.523, -25.942, -140.666, 1003.55, 0, 16, 3000063, 0, 0, 44250, 435, 0, NULL, 250, 500, 750, 500, 750, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 209, 'Raquel_Murillo', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 999999999, 0, 0, 1643295233, 1133.46, -1370.04, 13.984, 162.272, -2240.36, 128.282, 1035.42, 270, 6, 3000065, 0, 0, 779655, 169, 0, NULL, 10000, 3000, 10, 200, 1500, 500, 250, 250, 40, 60, 25, 150, 3500, 100, 35, 100, 100, 250, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 207, 'Mr_Paco', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Club/Bar (500 Products left). Type /buy to purchase from this business.', 6, 0, 0, 0, 1643278158, 1797.46, -1579.05, 14.086, -86.297, 2018.21, 1017.78, 996.875, 90, 10, 3000072, 0, 4000012, 0, 499, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 210, 'Sergio_Maquena', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Resturant (500 Products left). Type /buy to purchase from this business.', 4, 999999999, 0, 0, 1643296870, 928.917, -1353.05, 13.344, 105.289, 372.302, -133.122, 1001.49, 0, 5, 3000074, 0, 0, 11500, 445, 0, NULL, 100, 100, 200, 300, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(75, 210, 'Sergio_Maquena', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Club/Bar (500 Products left). Type /buy to purchase from this business.', 6, 999999999, 0, 0, 1643296968, 816.164, -1386.09, 13.602, 160.653, -795.033, 489.857, 1376.19, 0, 1, 3000075, 0, 0, 9100, 492, 0, NULL, 100, 100, 2500, 3500, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `changes`
--

CREATE TABLE `changes` (
  `slot` tinyint(2) DEFAULT NULL,
  `text` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `chargedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`id`, `uid`, `chargedby`, `date`, `reason`) VALUES
(1, 20, 'Daniel_Annan', '2021-07-24 12:16:35', '('),
(2, 26, 'Daniel_Annan', '2021-07-24 12:17:47', '('),
(6, 67, 'Daniel_Annan', '2021-07-25 20:35:31', '#'),
(24, 31, 'RK_GOD', '2021-07-26 20:53:52', 'allmarratam'),
(25, 31, 'RK_GOD', '2021-07-26 20:53:56', 'allmarratam'),
(26, 31, 'RK_GOD', '2021-07-26 20:53:58', 'allmarratam'),
(29, 19, 'Mutta_Biju', '2021-07-27 14:43:17', 'for loc'),
(30, 19, 'Daniel_Annan', '2021-07-27 14:52:28', 'track'),
(32, 67, 'Daniel_Annan', '2021-07-27 19:06:35', 'on rob'),
(33, 40, 'Daniel_Annan', '2021-07-29 19:48:10', 'loc'),
(34, 75, 'phyco_muthalaly', '2021-07-31 11:10:38', 'single robery'),
(35, 75, 'phyco_muthalaly', '2021-07-31 11:10:39', 'single robery'),
(36, 75, 'phyco_muthalaly', '2021-07-31 11:10:40', 'single robery'),
(37, 75, 'phyco_muthalaly', '2021-07-31 11:10:41', 'single robery'),
(38, 22, 'Bullet_Dathan', '2021-08-01 08:45:40', 'Disrespecting LSPD'),
(39, 81, 'Wizz_Annann', '2021-08-02 06:29:52', 'adichit nirthand poyyi'),
(41, 241, 'Kunjappan_Us', '2022-01-29 09:46:02', 'PROVOKING'),
(43, 249, 'The State', '2022-01-30 06:55:22', 'Bank Robbery');

-- --------------------------------------------------------

--
-- Table structure for table `clothing`
--

CREATE TABLE `clothing` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `boneid` tinyint(2) DEFAULT NULL,
  `attached` tinyint(1) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `scale_x` float DEFAULT NULL,
  `scale_y` float DEFAULT NULL,
  `scale_z` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clothing`
--

INSERT INTO `clothing` (`id`, `uid`, `name`, `modelid`, `boneid`, `attached`, `pos_x`, `pos_y`, `pos_z`, `rot_x`, `rot_y`, `rot_z`, `scale_x`, `scale_y`, `scale_z`) VALUES
(1, 2, 'Sports bag', 11745, 1, 1, 0.036, -0.21, -0.004, -98.4, -3.9, -54.9, 1, 1.764, 1),
(3, 2, 'Black headphones', 19422, 17, 1, -0.161, -0.00000002387, -0.025, 0, 49.6, -33.2, 3, 1.303, 1.637),
(5, 7, 'Zorro mask', 18974, 2, 0, 0.088, 0.029, 0.009, 10.4, 92.3, 82.1, 1.016, 1.295, 0.788),
(6, 1, 'Balaclava', 19801, 2, 0, 0.079, 0.032, 0.004, 0, 92.5, -179.2, 1.142, 1.115, 1.083),
(8, 7, 'Balaclava', 19801, 2, 0, 0.069, 0.044, 0.005, -4.7, 91.4, -174, 1.272, 1.265, 1.088),
(9, 17, 'Hammer', 18635, 6, 0, 0, -0.027, -0.021, 0, 0, 0, 1, 1, 1),
(10, 4, 'Fedora', 18639, 2, 0, 0.19, 0, 0, 0, 0, 0, 1, 1, 1),
(12, 38, 'Blue cap', 18931, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 38, 'Skull bandana', 18895, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 38, 'Custom Toy', 19006, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 41, 'Green tinted shades', 19008, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 41, 'Green bandana mask', 18918, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 42, 'Brown sunglasses', 19027, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 42, 'Bass guitar', 19317, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 55, 'Blue tinted shades', 19009, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 55, 'Grey hair', 19517, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 55, 'Wave cap', 18927, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 41, 'Plain red shades', 19032, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 34, 'Hiker backpack', 19559, 1, 0, 0, 0, 0, 0, 90, 0, 0, 0, 0),
(30, 33, 'Green tinted shades', 19008, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 27, 'Red & white bandana', 18893, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 27, 'Green bandana mask', 18918, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 27, 'Devil mask', 11704, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 27, 'Yellow sunglasses', 19028, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 62, 'Purple watch', 19044, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 22, 'Spiralled shades', 19011, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 22, 'Purple watch', 19044, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 22, 'Skull bandana', 18895, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 76, 'Bag of money', 1550, 1, 0, 0, -0.13, 0, 180, 90, 0, 1, 1, 1),
(41, 76, 'Skull bandana', 18895, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 76, 'Cool blue bandana', 18904, 2, 0, 0.8, 0.2, 0, 90, 180, 90, 1, 1, 1),
(43, 76, 'Black tinted shades', 19012, 2, 0, 0.1, 0.04, 0, 90, 90, 0, 1, 1, 1),
(45, 76, 'Blue headphones', 19424, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 76, 'Cigarette', 19625, 2, 0, 0.1, 0.1, 0, 180, 0.1, 0, 1, 1, 1),
(47, 76, 'Katana', 3028, 1, 1, 0.28, -0.13, 0, 0, 125, -0.11, 1, 1, 1),
(48, 76, 'Katana', 3028, 1, 1, 0.28, -0.13, 0.11, 0, 55, 180, 1, 1, 1),
(49, 21, 'Checkered fedora', 18971, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 21, 'Katana', 3028, 2, 1, 0, 50, 0, 50, 0, 0, 0, 0, 0),
(51, 67, 'Black tinted shades', 19012, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 45, 'Blue tinted shades', 19009, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 28, 'Yellow bandana', 18902, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 28, 'Orange cap', 18932, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 28, 'Green bandana mask', 18918, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 33, 'Pink watch', 19045, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 33, 'Black guitar', 19319, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 33, 'Oil can', 19621, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 33, 'Hammer', 18635, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 33, 'Wrench', 18633, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 33, 'Katana', 3028, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 33, 'Fedora', 18639, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 40, 'Red clown hair', 19274, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 41, 'Green sunglasses', 19029, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 41, 'Checkered fedora', 18971, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 113, 'Hiker backpack', 19559, 1, 1, 0.085, 0, 0, -2.4, 86.8, -1.4, 1, 1, 1),
(72, 113, 'Blue headphones', 19424, 2, 1, 0.044, -0.028, -0.006, -85.9, 36.7, -91.1, 1, 1, 1),
(79, 121, 'Blue tinted shades', 19009, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 23, 'Brown bandana', 18905, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(81, 23, 'Plain black shades', 19033, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 82, 'Hiker backpack', 19559, 1, 1, 0, -0.02, 0, 0, 90, 0, 0, 0, 0),
(92, 82, 'Hippy cap', 18928, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 82, 'Hippy cap', 18928, 2, 1, 0.2, 0, 0, 0, 0, 0, 0, 0, 0),
(95, 137, 'Clear sunglasses', 19022, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 137, 'Plain black shades', 19033, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, 137, 'Red sunglasses', 19026, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 140, 'Purple watch', 19044, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99, 140, 'Black beret', 18921, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, 140, 'Balaclava', 19801, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(101, 140, 'Brown tinted shades', 19007, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(102, 117, 'Santa hat', 19064, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(103, 139, 'Hiker backpack', 19559, 1, 0, 0, 20, 0, 270, 90, 90, 0, 0, 0),
(104, 139, 'Hiker backpack', 19559, 1, 1, 0, 90, 0, 0, 90, 0, 0, 0, 0),
(105, 139, 'Briefcase', 19624, 6, 1, 0, 0, 100, 0, 90, 0, 0, 1, 0),
(106, 146, 'White watch', 19043, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 146, 'Sports bag', 11745, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 155, 'White headphones', 19421, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(109, 155, 'Custom Toy', 19006, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 28, 'Green bandana mask', 18918, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 67, 'Balaclava', 19801, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(117, 173, 'Blue tinted shades', 19009, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(118, 172, 'Brown bandana', 18905, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(119, 172, 'Blue tinted shades', 19009, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(120, 172, 'Black headphones', 19422, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(121, 172, 'Blue headphones', 19424, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(122, 75, 'Yellow sunglasses', 19028, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123, 75, 'Wave back cap', 18940, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(124, 37, 'Brown bandana', 18905, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(126, 73, 'Skull bandana', 18895, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(127, 73, 'Black bucket hat', 18967, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(129, 155, 'Katana', 3028, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(130, 155, 'Wavy glasses', 19035, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(131, 155, 'Green bandana mask', 18918, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(133, 165, 'Bag of money', 1550, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(136, 66, 'Santa hat', 19064, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(137, 224, 'Katana', 3028, 1, 1, 0.311, -0.143, 0.235, 6.7, 47.2, -3.9, 1, 1, 1),
(138, 224, 'Katana', 3028, 1, 1, 0.3, -0.168, -0.22, -0.6, 132, 176.8, 1, 1, 0.995),
(139, 224, 'Gas mask', 19472, 2, 1, -0.003, 0.121, 0.00000001979, -13.7, 87.7, 105.2, 1, 1.027, 1.054),
(140, 224, 'Plain black shades', 19033, 2, 1, 0.09, 0.028, 0.00000000163, 98.5, 87.3, -8, 1, 1, 1),
(141, 224, 'Black bowler hat', 18947, 2, 1, 0.136, 0.017, 0, 0, 0, 0, 1, 1.119, 1.027),
(142, 224, 'Top hat', 19352, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(143, 224, 'Black hair', 19077, 2, 0, 0.095, -0.003, 0, 0, 0, 0, 1.155, 1.388, 0.994),
(144, 224, 'Black headphones', 19422, 2, 0, 0.061, 0.001, 0.002, 92.2, 2.5, -91.7, 1.035, 0.928, 1),
(145, 237, 'Green boater hat', 18945, 2, 0, 0.219, 0.012, 0.009, 0, 0, 0, 1, 1, 1),
(146, 237, 'Checkered fedora', 18971, 2, 1, 0.191, 0.045, 0.015, -159.7, 91.9, -104.8, 1, 1, 1),
(147, 237, 'Spade', 19626, 1, 0, 0.14, -0.115, 0.004, 4.7, 53.7, 0, 1, 1, 1),
(148, 237, 'Katana', 3028, 1, 1, 0.368, -0.085, -0.081, 9.7, 108.4, -31.8, 1, 1, 1),
(149, 237, 'Cigarette', 19625, 2, 1, 0.033, 0.081, 0.014, 0, 99, -179.3, 1, 1, 1),
(150, 254, 'Katana', 3028, 1, 1, 0.315, -0.158, 0.209, 17, 47.5, -28, 1, 1, 1),
(151, 254, 'Katana', 3028, 1, 1, 0.436, -0.14, -0.07, 1.7, 133.4, 17.2, 1, 1, 1),
(152, 261, 'White bowler hat', 19488, 2, 0, 0.185, 0.003, 0, -77.6, 93.4, -1.6, 1, 1, 1),
(153, 261, 'Checkered fedora', 18971, 2, 1, 0.181, 0.042, 0, 0, 88.6, 91, 1, 1, 1),
(154, 261, 'Katana', 3028, 1, 1, 0.396, -0.119, -0.064, 2, 118.1, 0, 1, 1, 1),
(155, 261, 'Katana', 3028, 1, 1, 0.404, -0.124, 0.109, 174.8, 123.1, 0, 1, 1, 1),
(156, 261, 'White bandana mask', 18919, 2, 1, 0.107, 0.035, 0.007, -80.5, 0, -96.5, 1, 1, 1),
(157, 237, 'Katana', 3028, 1, 1, 0.324, -0.097, 0.092, -12.6, 58.4, -171.2, 1, 1, 1),
(158, 254, 'Fedora', 18639, 2, 1, 0.191, -0.01, 0, 0, 0, 0, 1, 1, 1),
(161, 254, 'Gas mask', 19472, 2, 0, 0.017, 0.112, 0.013, -2.9, -77.5, 78, 1.079, 1, 1),
(162, 269, 'Black tinted shades', 19012, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(165, 249, 'Blue sunglasses', 19023, 2, 1, 0.068, 0.038, 0.005, 91.2, 79, -1.9, 1, 1, 1),
(169, 249, 'White hockey mask', 19036, 2, 0, 0.08, 0.016, 0.005, 85.8, 87.1, -9.3, 1, 1, 1),
(170, 249, 'Briefcase', 19624, 6, 0, 0.106, 0.019, 0, -3.6, -91, -32.5, 1, 1, 1),
(172, 249, 'Briefcase', 19624, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(174, 249, 'Grove bandana mask', 18913, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1),
(175, 224, 'Black bowler hat', 18947, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(176, 278, 'Red & white bandana', 18893, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(177, 227, 'Katana', 3028, 2, 0, -0.313, 0.296, 0.464, 0, 0, 0, 0, 0, 0),
(178, 227, 'Katana', 3028, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179, 227, 'Plain black shades', 19033, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180, 227, 'Black bandana', 18896, 2, 0, -0.011, 0.207, -0.038, 0, 0, -120.9, 1, 1, 1),
(181, 227, 'Black back cap', 18941, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crates`
--

CREATE TABLE `crates` (
  `id` int(11) NOT NULL,
  `cbObject` int(11) DEFAULT 964,
  `Facility` int(11) NOT NULL DEFAULT 0,
  `Group` int(11) NOT NULL DEFAULT -1,
  `CrateX` float(20,5) NOT NULL DEFAULT 0.00000,
  `CrateY` float(20,5) NOT NULL DEFAULT 0.00000,
  `CrateZ` float(20,5) NOT NULL DEFAULT 0.00000,
  `InVehicle` int(11) NOT NULL DEFAULT -1,
  `OnVehicle` int(11) NOT NULL DEFAULT -1,
  `Int` int(11) NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Materials` int(11) NOT NULL DEFAULT 0,
  `Gun1` int(11) NOT NULL DEFAULT 0,
  `GunAmount1` int(11) NOT NULL DEFAULT 0,
  `Gun2` int(11) NOT NULL DEFAULT 0,
  `GunAmount2` int(11) NOT NULL DEFAULT 0,
  `Gun3` int(11) NOT NULL DEFAULT 0,
  `GunAmount3` int(11) NOT NULL DEFAULT 0,
  `Gun4` int(11) NOT NULL DEFAULT 0,
  `GunAmount4` int(11) NOT NULL DEFAULT 0,
  `Gun5` int(11) NOT NULL DEFAULT 0,
  `GunAmount5` int(11) NOT NULL DEFAULT 0,
  `Gun6` int(11) NOT NULL DEFAULT 0,
  `GunAmount6` int(11) NOT NULL DEFAULT 0,
  `Gun7` int(11) NOT NULL DEFAULT 0,
  `GunAmount7` int(11) NOT NULL DEFAULT 0,
  `Gun8` int(11) NOT NULL DEFAULT 0,
  `GunAmount8` int(11) NOT NULL DEFAULT 0,
  `Gun9` int(11) NOT NULL DEFAULT 0,
  `GunAmount9` int(11) NOT NULL DEFAULT 0,
  `Gun10` int(11) NOT NULL DEFAULT 0,
  `GunAmount10` int(11) NOT NULL DEFAULT 0,
  `Gun11` int(11) NOT NULL DEFAULT 0,
  `GunAmount11` int(11) NOT NULL DEFAULT 0,
  `Gun12` int(11) NOT NULL DEFAULT 0,
  `GunAmount12` int(11) NOT NULL DEFAULT 0,
  `Gun13` int(11) NOT NULL DEFAULT 0,
  `GunAmount13` int(11) NOT NULL DEFAULT 0,
  `Gun14` int(11) NOT NULL DEFAULT 0,
  `GunAmount14` int(11) NOT NULL DEFAULT 0,
  `Gun15` int(11) NOT NULL DEFAULT 0,
  `GunAmount16` int(11) NOT NULL DEFAULT 0,
  `GunAmount15` int(11) NOT NULL DEFAULT 0,
  `Gun16` int(11) NOT NULL DEFAULT 0,
  `PlacedBy` varchar(24) NOT NULL DEFAULT 'Unknown',
  `Lifespan` int(11) NOT NULL DEFAULT 0,
  `Transfer` int(1) NOT NULL DEFAULT 0,
  `DoorID` int(11) NOT NULL DEFAULT -1,
  `DoorType` int(11) NOT NULL DEFAULT -1,
  `Price` int(11) NOT NULL DEFAULT 0,
  `Paid` int(1) NOT NULL DEFAULT 0,
  `Active` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` tinyint(2) DEFAULT NULL,
  `divisionid` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entrances`
--

CREATE TABLE `entrances` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `iconid` smallint(5) DEFAULT 1239,
  `locked` tinyint(1) DEFAULT 0,
  `radius` float DEFAULT 3,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `int_x` float DEFAULT 0,
  `int_y` float DEFAULT 0,
  `int_z` float DEFAULT 0,
  `int_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `outsideint` tinyint(2) DEFAULT 0,
  `outsidevw` int(10) DEFAULT 0,
  `adminlevel` tinyint(2) DEFAULT 0,
  `factiontype` tinyint(2) DEFAULT 0,
  `vip` tinyint(2) DEFAULT 0,
  `vehicles` tinyint(1) DEFAULT 0,
  `freeze` tinyint(1) DEFAULT 0,
  `password` varchar(64) DEFAULT 'None',
  `label` tinyint(1) DEFAULT 1,
  `mapicon` tinyint(2) NOT NULL DEFAULT -1,
  `color` int(10) NOT NULL DEFAULT -256
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entrances`
--

INSERT INTO `entrances` (`id`, `ownerid`, `owner`, `name`, `iconid`, `locked`, `radius`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `int_x`, `int_y`, `int_z`, `int_a`, `interior`, `world`, `outsideint`, `outsidevw`, `adminlevel`, `factiontype`, `vip`, `vehicles`, `freeze`, `password`, `label`, `mapicon`, `color`) VALUES
(25, 0, NULL, 'Osaka City Police Department', 1247, 0, 3, 1554.69, -1675.58, 16.195, 88.94, 288.78, 166.974, 1007.17, 188.729, 3, 59, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 30, -256),
(28, 0, NULL, 'City Hall', 1314, 0, 3, 1480.73, -1772.08, 18.796, 187.728, 390.768, 173.701, 1008.38, 267.06, 3, 1, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 56, -256),
(29, 0, NULL, 'Paradox Bank', 1550, 0, 3, 1458.07, -1010.1, 26.844, 169.553, 1667.39, -995.437, 683.691, 354.686, 1, 4000029, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 52, -256),
(30, 0, NULL, 'Backdoor', 1239, 0, 3, 1656.2, -971.498, 683.683, 258.386, 1433.84, -967.634, 37.391, 56.506, 0, 0, 1, 4000029, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(32, 0, NULL, 'Garage', 1239, 0, 3, 1618.69, 1566.61, 10.836, 180.238, 1568.89, -1691.47, 5.891, 4.48, 0, 0, 1, 1, 0, 1, 0, 0, 1, 'None', 1, -1, -256),
(50, 0, NULL, 'Crack Lab', 1239, 0, 3, 2352, -1170.67, 28.075, -0.12, 2352.79, -1180.94, 1027.98, 92.316, 5, 4000050, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 12, -256),
(51, 0, NULL, 'Drug House', 1239, 0, 3, 2165.92, -1671.21, 15.073, -135.096, 318.829, 1114.48, 1083.88, 359.864, 5, 4000051, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 24, -256),
(61, 0, NULL, 'Church', 1239, 0, 3, -1989.35, 1118.06, 54.469, -80.52, 0, 0, 0, 0, 0, 4000061, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0, -256),
(62, 0, NULL, 'Church', 1239, 0, 3, 2439.14, 1293.45, 11.012, 87.572, 0, 0, 0, 0, 0, 4000062, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(63, 0, NULL, 'City Hall', 1239, 0, 3, -207.028, 1119.19, 20.43, -92.691, 0, 0, 0, 0, 0, 4000063, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(64, 0, NULL, 'Bank', 1239, 0, 3, -179.758, 1133.01, 19.742, 105.941, 0, 0, 0, 0, 0, 4000064, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(65, 0, NULL, 'Barangay Hall', 1239, 0, 3, -217.844, 979.201, 19.504, -97.148, 0, 0, 0, 0, 0, 4000065, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(66, 0, NULL, 'Hospital', 1239, 0, 3, -318.728, 1048.82, 20.34, -4.735, 0, 0, 0, 0, 0, 4000066, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(68, 0, NULL, 'Hospital', 1239, 0, 3, -1514.91, 2519.86, 56.011, 15.188, 0, 0, 0, 0, 0, 4000068, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(69, 0, NULL, 'Church', 1239, 0, 3, -2482.06, 2406.68, 17.109, 127.284, 298.653, -1338.36, 53.442, 217.312, 0, 4000069, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(70, 0, NULL, 'Drug Factory', 1239, 0, 3, 412.019, -1729.02, 9.285, -4.595, 2204.4, 1552.29, 1008.72, 93.624, 1, 4000070, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 23, -256),
(71, 0, NULL, 'Casino', 1239, 0, 3, 2019.32, 1007.7, 10.82, -93.893, 0, 0, 0, 0, 0, 4000071, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(72, 0, NULL, 'Casino', 1239, 0, 3, 2196.96, 1677.06, 12.367, 87.258, 725.555, -1276.03, 13.648, 91.721, 0, 4000072, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(73, 0, NULL, 'Material House', 1239, 0, 3, 2379.07, -2017.45, 14.833, -3.391, 2203.4, -1250.49, 1529.11, 88.234, 1, 4000073, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 23, -256),
(75, 0, NULL, 'mapicon', 1239, 0, 3, 2143.31, -2263.31, 13.298, 138.512, 0, 0, 0, 0, 0, 4000075, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 23, -256),
(108, 0, 'Nobody', 'Staff Headquarters', 1239, 0, 3, 1653.94, -1654.76, 22.516, 177.394, 1298.99, -797.007, 1084.01, 0.034, 5, 4000108, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0, -256),
(112, 0, NULL, 'VIP LOUNGE', 19132, 0, 3, 1797.98, -1578.8, 14.091, 104.368, 2792.22, 2389.03, 1240.53, 356.38, 0, 10, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 44, -256),
(115, 0, NULL, 'CHURCH', 1239, 0, 3, 1720.47, -1740.93, 13.547, 170.388, -2029.07, 1019.36, 1418.5, 89.606, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 0, -256),
(116, 0, NULL, 'Rooftop', 1239, 0, 3, 1606.3, 1569.67, 10.836, -114.354, 1565.03, -1666.89, 28.396, 357.297, 0, 0, 1, 1, 0, 1, 0, 0, 1, 'None', 1, -1, -256),
(118, 0, NULL, 'Staff Meeting Room', 1239, 0, 3, 1699.73, -1667.81, 20.208, 100.549, 0, 0, 0, 0, 0, 4000118, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0, -256),
(123, 0, NULL, 'Sogo Motel', 1239, 0, 3, 2233.22, -1159.74, 25.891, 266.88, 2214.39, -1150.55, 1025.8, 85.272, 15, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(125, 0, NULL, 'BACK DOOR', 19134, 0, 3, 725.422, -1476.36, 5.469, 171.101, 1298.97, -796.628, 1084.01, 170.781, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0, -256),
(126, 0, NULL, 'Press \'Y\' to go inside.', 19605, 0, 3, 1852.28, 458.197, 19.287, -32.511, 1825.1, -1717.79, 5202.59, 267.447, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 0, -16776961),
(127, 0, NULL, 'Press \'Y\' to go outside.', 19605, 0, 2, 1825, -1717.73, 5202.59, 97.128, 1852.2, 457.904, 19.287, 180.952, 0, 0, 0, 0, 1, 0, 0, 0, 1, 'None', 1, 0, -16776961),
(128, 0, NULL, 'DoC', 1239, 0, 3, 1846.63, 413.815, 19.86, -121.082, 1863.1, -1699.11, 5202.59, 184.532, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 0, -256),
(130, 0, NULL, 'Paradox News', 19132, 0, 3, 648.408, -1357.32, 13.563, 85.323, 2497.43, 2481.99, -84.9, 267.308, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 0, -256),
(133, 852, 'Jhon_Parack', 'helepad', 1242, 0, 1, 1009.67, -1105.72, 28.031, 7.398, 991.867, -1120.32, 29.403, 92.85, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 27, -256),
(136, 0, NULL, 'OPEN MEETING ROOM', 1239, 0, 3, 368.27, 194.207, 1008.38, -45.57, 0, 0, 0, 0, 0, 4000136, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(138, 0, NULL, '2nd floor to 3rd floor', 1239, 0, 3, 344.676, 178.503, 1014.19, -171.318, 0, 0, 0, 0, 0, 4000138, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(139, 0, NULL, 'canteen', 1239, 0, 3, 333.397, 160.522, 1014.19, -79.534, 0, 0, 0, 0, 0, 4000139, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(142, 871, 'Jhon_Prack', 'FREE GANG HQ', 1239, 0, 3, 1764.77, -1342.71, 15.757, 158.199, 2215.66, -1150.64, 1025.8, 75.453, 15, 4000142, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, 591330047),
(143, 0, 'Nobody', 'DREAMS POLICE DEPARTMENT', 19133, 0, 4, 327.066, -1512.88, 36.033, -125.883, 389.983, 173.606, 1008.38, 84.661, 3, 4000143, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 39, -256),
(145, 0, NULL, 'AIRPORT', 1239, 0, 3, 131.12, -68.053, 1.578, 38.532, 1629, -2237.75, 13.515, 171.489, 0, 4000145, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(148, 0, NULL, 'ROOFTOP', 1239, 0, 1, 1243.97, -1297.69, 1061.14, 356.348, 1163.6, -1342.9, 26.616, 358.257, 0, 0, 18, 1000, 0, 2, 0, 0, 1, 'None', 1, -1, -256),
(150, 0, NULL, 'ROOFTOP ACCES', 1239, 0, 3, 1189.79, -1346.47, 2423.26, 179.568, 0, 0, 0, 0, 0, 4000150, 1, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(154, 0, NULL, 'ROOFTOP', 1239, 0, 3, 1189.76, -1346.48, 2423.26, 174.181, 2049.57, -1405.47, 48.336, 88.53, 0, 0, 1, 2, 0, 2, 0, 0, 1, 'None', 1, -1, -256),
(157, 0, NULL, 'ROOFTOP 1', 1239, 0, 3, 1240.72, -1293.2, 1061.15, 260.322, 1161.38, -1330.02, 31.498, 175.708, 0, 4000157, 18, 1000, 0, 2, 0, 0, 1, 'None', 1, -1, -256),
(160, 0, NULL, 'Rooftop', 1239, 0, 3, 1092.53, -1159.98, 64.5, 131.549, 1123.87, -1160.53, 32.028, 83.378, 0, 4000160, 0, 0, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(173, 856, 'Jhon_Pres', 'JEWELRY', 1239, 0, 3, 476.609, -1498.95, 20.483, 271.248, 195.448, 1851.63, 994.373, 87.48, 0, 4000173, 0, 0, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(174, 0, NULL, 'rooftop', 1239, 0, 3, 1564.84, -1666.78, 28.396, 356.781, 1525.19, -1677.97, 5.891, 270.581, 0, 0, 0, 0, 0, 1, 0, 0, 1, 'None', 1, -1, -256),
(175, 0, NULL, 'BackDoor', 1239, 0, 3, -143.142, -1182.93, 5.48, 155.221, 1260.64, -785.359, 1091.91, 95.199, 5, 4000175, 0, 4000157, 0, 0, 0, 0, 0, '123', 1, -1, -256),
(182, 0, NULL, 'Allsaints Hospital', 19132, 0, 5, 1172.27, -1323.29, 15.403, 270.193, 1266.2, -1291.55, 1061.15, 87.275, 18, 1000, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 22, -256),
(185, 0, NULL, 'ammu', 1239, 0, 3, 1243.15, -1314.32, 1006, 78.029, 0, 0, 0, 0, 0, 4000185, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(187, 0, NULL, 'FOUR DRAGON CASINO', 1239, 0, 3, 2695.25, -1704.56, 11.844, 58.974, 2019.06, 1018.31, 996.875, 100.623, 10, 4000187, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(194, 0, NULL, 'hatdog', 19132, 0, 3, 1736.62, -1115.41, 24.078, 89.63, 0, 0, 0, 0, 0, 4000194, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0, -256),
(209, 0, NULL, 'Rooftop', 19132, 0, 3, 406.036, -932.6, 94.251, -6.335, 406.184, -932.308, 102.421, 184.586, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(210, 0, NULL, 'Hide Out', 19132, 0, 3, 2316.15, -1144.42, 1054.31, 178.974, 2757.25, -1421.84, 16.25, 265.722, 0, 0, 12, 69, 0, 0, 0, 0, 1, 'onlymadrazo', 1, -1, -256),
(211, 0, NULL, 'Madrazo Headquaters', 19132, 0, 3, 405.906, -954.342, 94.053, 356.181, 887.632, 1917.96, -88.974, 89.289, 0, 69, 0, 0, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(218, 0, NULL, 'Eating And Chilling Lounge', 19132, 0, 3, 2332.51, -1144.07, 1054.31, 358.754, 1628.89, -1169.42, 613.149, 353.579, 0, 69, 12, 69, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(221, 0, NULL, 'Armory And Meeting Room', 1239, 0, 3, 2335.94, -1142.43, 1054.31, 176.572, 1634.59, -1161.16, 608.749, 190.007, 0, 69, 12, 69, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(229, 0, NULL, 'CLUB', 1239, 0, 3, 1154.96, -1180.96, 32.813, 100.022, -2634.29, 1409.62, 906.461, 102.849, 3, 4000229, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(237, 0, NULL, 'Guest Room', 19132, 0, 3, -171.887, -1180.15, 7.8, -97.58, 23.892, 1340.16, 1084.38, 358.638, 10, 4000237, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0, -256),
(245, 0, NULL, 'Donators House', 1239, 0, 3, 1688.22, 100.993, 34.9, -21.289, 0, 0, 0, 0, 0, 4000245, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(247, 0, NULL, 'Rooftop', 19132, 0, 3, 1576.92, -2146.22, 13.558, -93.139, 1599.51, -2172.41, 20.228, 88.138, 0, 0, 0, 0, 0, 7, 0, 0, 0, 'None', 1, -1, -256),
(251, 0, NULL, 'donator house', 1239, 0, 3, 298.968, -1338.42, 53.44, 12.997, 0, 0, 0, 0, 0, 4000251, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(252, 979, 'Johnx_Madrazo', 'ROOFTOP', 19132, 1, 3, 2332.67, -1144.42, 1054.31, 0.814, 605.861, -1278.06, 64.188, 183.461, 0, 0, 12, 1000055, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(254, 0, NULL, 'ROYAL HOTEL', 1239, 0, 3, 1919.14, -1683.95, 13.565, 88.347, 0, 0, 0, 0, 0, 4000254, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(256, 969, 'Kurosaki_Madrazo', 'Sunugan Baga', 2057, 0, 3, -350.097, -1036.13, 59.664, 0.98, 226.301, 1114.05, 1080.99, 276.401, 5, 4000256, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(257, 977, 'Heneral_Berting', 'SECRET DOOR', 1239, 0, 3, -704.178, -1904.05, 10.071, 145.349, 1188.99, -1017.97, 36.234, 67.398, 0, 4000257, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(260, 0, NULL, 'STAR TOWER', 1239, 0, 3, 1570.44, -1337.45, 16.484, -42.838, 1549.1, -1363.48, 335.975, 11.455, 0, 4000260, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(262, 0, NULL, 'LIGHT HOUSE', 1239, 0, 3, 154.315, -1946.61, 5.381, 2.129, 155.609, -1950.02, 47.401, 9.295, 0, 4000262, 0, 4000260, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(264, 0, NULL, 'HIDE OUT', 1239, 1, 3, -1218.47, -2637.38, 10.418, 134.095, -1218.17, -2644.25, 30.596, 198.439, 0, 4000264, 0, 0, 0, 0, 0, 0, 0, 'secret', 1, -1, -256),
(273, 0, NULL, '2nd Floor', 1239, 0, 3, 1568.82, -1679.04, 2113.03, -97.324, 1565.38, -1693.59, 62.201, 359.713, 0, 59, 0, 59, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(276, 0, NULL, 'Armory', 1239, 0, 2, 1557.21, -1685.19, 2113.03, 259.796, 1555.63, -1685.2, 2113.03, 272.724, 0, 59, 0, 59, 0, 1, 0, 0, 0, 'None', 1, -1, -256),
(277, 0, NULL, 'MINNAL MEX', 1239, 0, 3, 725.352, -1276.23, 13.648, -81.802, 0, 0, 0, 0, 0, 4000277, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(280, 0, NULL, 'Familia Cosa Nostra', 1239, 0, 3, 1298.19, -985.303, 32.695, 95.423, 2468.84, -1698.3, 1013.51, 266.977, 2, 4000280, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(281, 0, NULL, 'Train', 1239, 0, 3, 3585.68, 521.027, 1519.53, -2.96, 0, 0, 0, 0, 0, 4000281, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(282, 0, NULL, 'Coffe Shop', 1239, 0, 3, 1952.01, -2003.96, 13.547, 91.818, 1950.99, -2004.21, 13.575, 270.654, 0, 4000282, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(287, 0, NULL, 'S', 1239, 0, 3, 865.929, 1955.6, -94.397, -52.673, 0, 0, 0, 0, 0, 4000287, 0, 1000090, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(289, 0, NULL, 'Lspd', 1239, 0, 3, 1568.61, -1689.98, 6.219, 5.149, 1569.48, -1674.76, 2113.03, 86.33, 0, 59, 0, 0, 0, 1, 0, 0, 1, 'None', 1, -1, -256),
(290, 0, NULL, 'DRUG SELLING', 1239, 0, 3, 2792.91, -1087.86, 31.258, -119.359, 1204.66, -13.852, 1000.92, 199.099, 2, 4000290, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(291, 0, NULL, 'fire exit', 1239, 0, 3, 1220.7, -16.629, 1001.53, -91.676, 2790.35, -1088.8, 94.187, 84.444, 0, 4000291, 2, 4000290, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(292, 0, NULL, 'Lux', 1239, 0, 3, 1808.56, -1443.86, 995.046, -84.117, 0, 0, 0, 0, 0, 4000292, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(293, 0, NULL, 'RESERVE PD', 1239, 0, 3, 1527.75, -1677.12, 2110.21, -80.665, 0, 0, 0, 0, 0, 4000293, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(294, 0, NULL, 'RESERVE HQ', 1239, 0, 3, 2111.87, -1431.92, 1118.61, -94.059, 0, 0, 0, 0, 0, 4000294, 0, 59, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(295, 0, NULL, 'end', 1239, 0, 3, 476.781, -1493.43, 20.363, 178.151, 0, 0, 0, 0, 0, 4000295, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(296, 0, NULL, 'DCRP-GOVERNMENT', 1239, 0, 3, 1122.85, -2036.95, 69.894, 94.039, 246.297, 107.302, 1003.22, 180.95, 10, 4000296, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(298, 0, NULL, 'HOSPITAL', 1239, 0, 3, 1183.19, -1324.04, 13.578, 89.277, 1266.56, -1291.68, 1061.15, 90.653, 1, 4000298, 0, 0, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(299, 0, NULL, 'Exit', 1239, 0, 3, 1266.41, -1291.67, 1061.15, -88.338, 1183.38, -1324.55, 13.573, 268.579, 0, 0, 1, 2, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(300, 0, NULL, 'roof', 19135, 0, 3, 246.714, 87.9, 1003.64, -4.064, 1563.87, -1684.15, 28.396, 164.761, 0, 0, 6, 59, 0, 1, 0, 0, 1, 'None', 1, -1, -256),
(302, 0, NULL, 'jail', 1239, 0, 3, 250.097, 87.048, 1002.96, 84.222, 251.634, 87.135, 1002.45, 266.76, 6, 1, 6, 59, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(303, 0, NULL, 'helipad', 1239, 0, 3, 2459.68, -1690.58, 13.534, -174.967, 2472.91, -1693.15, 27.913, 47.957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(305, 0, NULL, 'down', 1239, 0, 3, 2473.18, -1693.64, 27.913, 51.658, 0, 0, 0, 0, 0, 4000305, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(308, 0, NULL, 'VIP LOUNGE', 1239, 0, 3, 1797.44, -1578.92, 14.085, -72.388, 2019.08, 1017.76, 996.875, 275.067, 10, 4000308, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(314, 0, NULL, 'MK GANG HOUSE', 1239, 0, 3, 1278.37, -812.257, 83.434, 165.747, 140.208, 1365.93, 1083.86, 169.53, 5, 4000314, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(315, 0, NULL, 'DARK REALM', 1239, 0, 3, 1093.44, -315.319, 74.945, 103.836, 140.443, 1365.92, 1083.86, 187.245, 5, 4000315, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(317, 0, NULL, 'MANJADY ADHOLOKAM', 1239, 0, 3, 836.703, -2070.85, 12.768, -3.213, 0, 0, 0, 0, 0, 4000317, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256);

-- --------------------------------------------------------

--
-- Table structure for table `factionpay`
--

CREATE TABLE `factionpay` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factionpay`
--

INSERT INTO `factionpay` (`id`, `rank`, `amount`) VALUES
(2, 1, 1000),
(2, 2, 2000),
(2, 3, 3000),
(2, 4, 10000),
(2, 5, 15000),
(2, 6, 18000),
(2, 7, 50000),
(1, 1, 7000),
(1, 2, 20000),
(1, 3, 30000),
(1, 4, 40000),
(1, 5, 50000),
(1, 6, 60000),
(1, 7, 70000),
(1, 8, 80000),
(1, 9, 100000),
(1, 10, 100000),
(3, 5, 25000),
(3, 4, 20000),
(3, 3, 15000),
(3, 2, 10000),
(3, 1, 5000),
(4, 5, 50000),
(4, 4, 40000),
(7, 1, 10000),
(7, 2, 20000),
(7, 3, 28000),
(7, 4, 35000),
(7, 5, 42000);

-- --------------------------------------------------------

--
-- Table structure for table `factionranks`
--

CREATE TABLE `factionranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factionranks`
--

INSERT INTO `factionranks` (`id`, `rank`, `name`) VALUES
(1, 0, 'TRAINEE'),
(1, 1, 'CONSTABLE'),
(1, 2, 'HEADCONSTABLE'),
(1, 3, 'ASI'),
(1, 4, 'SI'),
(1, 5, 'ACI'),
(1, 7, 'DIG'),
(1, 8, 'IG'),
(1, 9, 'ADGP'),
(1, 10, 'DGP'),
(1, 6, 'CI'),
(2, 0, 'Intern'),
(2, 1, 'Junior Resident'),
(2, 2, 'Senior Resident'),
(2, 3, 'Chief Resident'),
(2, 4, 'NURSE'),
(2, 5, 'JUNIOR DOCTOR'),
(2, 6, 'HEAD DOCTOR'),
(2, 7, 'CHIEF DOCTOR'),
(4, 0, 'trainee'),
(4, 1, 'traineee'),
(4, 2, 'mechanic'),
(4, 3, 'junior mech'),
(4, 4, 'senior mech'),
(4, 5, 'boss'),
(7, 5, 'Chief Reporter');

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(48) DEFAULT NULL,
  `shortname` tinytext DEFAULT NULL,
  `leader` varchar(24) DEFAULT 'No-one',
  `type` tinyint(2) DEFAULT 0,
  `color` int(10) DEFAULT -1,
  `rankcount` tinyint(2) DEFAULT 6,
  `lockerx` float DEFAULT 0,
  `lockery` float DEFAULT 0,
  `lockerz` float DEFAULT 0,
  `lockerinterior` tinyint(2) DEFAULT 0,
  `lockerworld` int(10) DEFAULT 0,
  `turftokens` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`id`, `name`, `shortname`, `leader`, `type`, `color`, `rankcount`, `lockerx`, `lockery`, `lockerz`, `lockerinterior`, `lockerworld`, `turftokens`) VALUES
(1, 'KERALA POLICE', 'TNP', 'Kunjappan_Us', 1, 587267584, 11, 300.873, 187.482, 1007.17, 3, 0, 3),
(2, 'KERALA MEDIC', 'TFRT', 'Pending', 2, -12369152, 8, 1266.55, -1278.83, 1061.15, 1, 4000298, 0),
(3, 'CRIME BRACH', 'TBI', 'Pending', 6, 1904135680, 6, 255.386, 77.621, 1003.64, 6, 4000004, 0),
(4, 'MECHANIC', NULL, 'Pavitran_Kunj', 7, 620367616, 6, 1583.51, -2145.33, 13.558, 0, 0, 0),
(5, 'GOVERNMENT', NULL, 'Pending', 4, 268431616, 6, 0, 0, 0, 0, 0, 0),
(7, 'NEWS', NULL, 'Pending', 3, 268431360, 6, 2315.05, -16.662, 26.742, 0, 4000015, 0);

-- --------------------------------------------------------

--
-- Table structure for table `factionskins`
--

CREATE TABLE `factionskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factionskins`
--

INSERT INTO `factionskins` (`id`, `slot`, `skinid`) VALUES
(4, 0, 50),
(2, 0, 276),
(2, 1, 275),
(2, 2, 274),
(3, 0, 286),
(3, 1, 310),
(7, 0, 177),
(7, 1, 176),
(1, 0, 282),
(1, 1, 280),
(1, 2, 281),
(1, 3, 300),
(1, 4, 301),
(1, 5, 306),
(1, 6, 307),
(1, 7, 310),
(1, 8, 311),
(1, 9, 283),
(1, 10, 284),
(1, 11, 285),
(2, 3, 309),
(2, 4, 308);

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `flaggedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `id` int(10) NOT NULL,
  `houseid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `interior` tinyint(2) DEFAULT NULL,
  `world` int(10) DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT 0,
  `door_locked` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangranks`
--

CREATE TABLE `gangranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gangranks`
--

INSERT INTO `gangranks` (`id`, `rank`, `name`) VALUES
(1, 1, 'Worker'),
(1, 6, 'Boss'),
(1, 5, 'Co Boss'),
(1, 4, 'Darker'),
(1, 3, 'Drug Dealer'),
(1, 2, 'Assualter'),
(1, 0, 'Trainee'),
(3, 6, 'OWNER'),
(3, 5, 'CO-OWNER'),
(3, 4, 'MANGER'),
(3, 3, 'HITLER'),
(3, 2, 'WORKER'),
(3, 1, 'TRAINEE');

-- --------------------------------------------------------

--
-- Table structure for table `gangs`
--

CREATE TABLE `gangs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT 'None',
  `motd` varchar(128) DEFAULT 'None',
  `leader` varchar(24) DEFAULT 'No-one',
  `color` int(10) DEFAULT -256,
  `strikes` tinyint(1) DEFAULT 0,
  `level` tinyint(2) DEFAULT 1,
  `points` int(10) DEFAULT 0,
  `turftokens` int(10) DEFAULT 0,
  `stash_x` float DEFAULT 0,
  `stash_y` float DEFAULT 0,
  `stash_z` float DEFAULT 0,
  `stashinterior` tinyint(2) DEFAULT 0,
  `stashworld` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `pot` int(10) DEFAULT 0,
  `crack` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `pistolammo` int(10) DEFAULT 0,
  `shotgunammo` int(10) DEFAULT 0,
  `smgammo` int(10) DEFAULT 0,
  `arammo` int(10) DEFAULT 0,
  `rifleammo` int(10) DEFAULT 0,
  `hpammo` int(10) DEFAULT 0,
  `poisonammo` int(10) DEFAULT 0,
  `fmjammo` int(10) DEFAULT 0,
  `weapon_9mm` int(10) DEFAULT 0,
  `weapon_sdpistol` int(10) DEFAULT 0,
  `weapon_deagle` int(10) DEFAULT 0,
  `weapon_shotgun` int(10) DEFAULT 0,
  `weapon_spas12` int(10) DEFAULT 0,
  `weapon_sawnoff` int(10) DEFAULT 0,
  `weapon_tec9` int(10) DEFAULT 0,
  `weapon_uzi` int(10) DEFAULT 0,
  `weapon_mp5` int(10) DEFAULT 0,
  `weapon_ak47` int(10) DEFAULT 0,
  `weapon_m4` int(10) DEFAULT 0,
  `weapon_rifle` int(10) DEFAULT 0,
  `weapon_sniper` int(10) DEFAULT 0,
  `weapon_molotov` int(10) DEFAULT 0,
  `armsdealer` tinyint(1) DEFAULT 0,
  `drugdealer` tinyint(1) DEFAULT 0,
  `arms_x` float DEFAULT 0,
  `arms_y` float DEFAULT 0,
  `arms_z` float DEFAULT 0,
  `arms_a` float DEFAULT 0,
  `drug_x` float DEFAULT 0,
  `drug_y` float DEFAULT 0,
  `drug_z` float DEFAULT 0,
  `drug_a` float DEFAULT 0,
  `armsworld` int(10) DEFAULT 0,
  `drugworld` int(10) DEFAULT 0,
  `drugweed` int(10) DEFAULT 0,
  `drugcocaine` int(10) DEFAULT 0,
  `drugmeth` int(10) DEFAULT 0,
  `armsmaterials` int(10) DEFAULT 0,
  `armsprice_1` int(10) DEFAULT 0,
  `armsprice_2` int(10) DEFAULT 0,
  `armsprice_3` int(10) DEFAULT 0,
  `armsprice_4` int(10) DEFAULT 0,
  `armsprice_5` int(10) DEFAULT 0,
  `armsprice_6` int(10) DEFAULT 0,
  `armsprice_7` int(10) DEFAULT 0,
  `armsprice_8` int(10) DEFAULT 0,
  `weed_price` int(10) DEFAULT 0,
  `cocaine_price` int(10) DEFAULT 0,
  `meth_price` int(10) DEFAULT 0,
  `armshpammo` int(10) DEFAULT 0,
  `armspoisonammo` int(10) DEFAULT 0,
  `armsfmjammo` int(10) DEFAULT 0,
  `alliance` int(10) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gangs`
--

INSERT INTO `gangs` (`id`, `name`, `motd`, `leader`, `color`, `strikes`, `level`, `points`, `turftokens`, `stash_x`, `stash_y`, `stash_z`, `stashinterior`, `stashworld`, `cash`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `weapon_9mm`, `weapon_sdpistol`, `weapon_deagle`, `weapon_shotgun`, `weapon_spas12`, `weapon_sawnoff`, `weapon_tec9`, `weapon_uzi`, `weapon_mp5`, `weapon_ak47`, `weapon_m4`, `weapon_rifle`, `weapon_sniper`, `weapon_molotov`, `armsdealer`, `drugdealer`, `arms_x`, `arms_y`, `arms_z`, `arms_a`, `drug_x`, `drug_y`, `drug_z`, `drug_a`, `armsworld`, `drugworld`, `drugweed`, `drugcocaine`, `drugmeth`, `armsmaterials`, `armsprice_1`, `armsprice_2`, `armsprice_3`, `armsprice_4`, `armsprice_5`, `armsprice_6`, `armsprice_7`, `armsprice_8`, `weed_price`, `cocaine_price`, `meth_price`, `armshpammo`, `armspoisonammo`, `armsfmjammo`, `alliance`) VALUES
(1, 'Dark Realm', 'None', 'Pavithran_Kunj', 16776960, 0, 1, 137, 8, 84.347, 1332.14, 1083.87, 9, 4000311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1),
(2, 'MUTHUKOOTHATTAM', 'None', 'Mk_Carlo', -256, 0, 1, 17, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1),
(3, 'MANJADI ADHOLOKAM', 'None', 'Techy_Tom', -256, 0, 1, 10, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);

-- --------------------------------------------------------

--
-- Table structure for table `gangskins`
--

CREATE TABLE `gangskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gangskins`
--

INSERT INTO `gangskins` (`id`, `slot`, `skinid`) VALUES
(1, 0, 294),
(1, 1, 29);

-- --------------------------------------------------------

--
-- Table structure for table `garages`
--

CREATE TABLE `garages` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT NULL,
  `type` tinyint(1) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 0,
  `timestamp` int(10) DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `exit_x` float DEFAULT 0,
  `exit_y` float DEFAULT 0,
  `exit_z` float DEFAULT 0,
  `exit_a` float DEFAULT 0,
  `world` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `garages`
--

INSERT INTO `garages` (`id`, `ownerid`, `owner`, `type`, `price`, `locked`, `timestamp`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `exit_x`, `exit_y`, `exit_z`, `exit_a`, `world`) VALUES
(1, 10, 'Marko_reyes', 1, 125000, 0, 1627484469, 2135.93, -1330.35, 25.543, 0.556, 2135.95, -1333.35, 25.543, -179.444, 2000001),
(3, 1, 'Felix_Miller', 1, 125000, 0, 1626354536, 686.503, -1567.26, 14.242, 359.883, 686.28, -1569.86, 14.242, 178.932, 2000003),
(5, 25, 'Wizz_Annann', 2, 250000, 0, 1627815128, 277.804, -1265.82, 73.945, 119.872, 280.405, -1264.32, 73.945, -60.128, 2000005);

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `gateID` int(12) NOT NULL,
  `gateModel` int(12) DEFAULT 980,
  `gateSpeed` float DEFAULT 0,
  `gateTime` int(12) DEFAULT 0,
  `gateX` float DEFAULT 0,
  `gateY` float DEFAULT 0,
  `gateZ` float DEFAULT 0,
  `gateRX` float DEFAULT 0,
  `gateRY` float DEFAULT 0,
  `gateRZ` float DEFAULT 0,
  `gateInterior` int(12) DEFAULT 0,
  `gateWorld` int(12) DEFAULT 0,
  `gateMoveX` float DEFAULT 0,
  `gateMoveY` float DEFAULT 0,
  `gateMoveZ` float DEFAULT 0,
  `gateMoveRX` float DEFAULT 0,
  `gateMoveRY` float DEFAULT 0,
  `gateMoveRZ` float DEFAULT 0,
  `gateLinkID` int(12) DEFAULT 0,
  `gateFaction` int(12) DEFAULT 0,
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gates`
--

INSERT INTO `gates` (`gateID`, `gateModel`, `gateSpeed`, `gateTime`, `gateX`, `gateY`, `gateZ`, `gateRX`, `gateRY`, `gateRZ`, `gateInterior`, `gateWorld`, `gateMoveX`, `gateMoveY`, `gateMoveZ`, `gateMoveRX`, `gateMoveRY`, `gateMoveRZ`, `gateLinkID`, `gateFaction`, `gatePass`, `gateRadius`) VALUES
(3, 980, 3, 0, 1565.33, -1684.1, -10.9598, 0, 0, 1.0595, 0, 1000100, 1563.26, -1684.14, -10.9598, 0, 0, 1.0595, -1, 1, '', 10),
(5, 1569, 3, 0, 1572.69, -1696.18, -18.1426, 0, 0, -90.1605, 0, 1000100, 1572.69, -1696.18, -18.1426, 0, 0, 0.4394, -1, 1, '', 5),
(6, 1569, 3, 0, 1572.69, -1700.96, -18.1431, 0, 0, -90.0519, 0, 1000100, 1572.69, -1700.96, -18.1431, 0, 0, 1.048, -1, 1, '', 5),
(21, 980, 0, 0, 2071.81, -1831.43, 13.5468, 0, 0, 90.0102, 0, 0, 2071.81, -1831.43, 3.5468, -1000, -1000, -1000, -1, -1, '', 5),
(55, 980, 3, 0, 282.638, -1545.86, 24.6224, 0, 0, 145.19, 0, 0, 283.044, -1543.44, 14.5965, -1000, -1000, -1000, -1, 6, '', 5),
(56, 980, 3, 0, 322.746, -1486.99, 24.9839, 0, 0, 145.189, 0, 0, 322.746, -1486.99, 14.9839, -1000, -1000, -1000, -1, -1, '', 5),
(57, 980, 3, 0, 329.081, -1498.23, 24.9218, 0, 0, 232.947, 0, 0, 322.435, -1487.12, 14.5779, -1000, -1000, -1000, -1, -1, '', 5),
(58, 1250, 3, 0, 319.973, -1483.24, 24.8616, 0, 0, 55.0049, 0, 0, 320.608, -1483.98, 15.0555, -1000, -1000, -1000, -1, 6, '', 5),
(60, 980, 3, 0, 209.954, -1350.11, 50.8874, 0, 0, 45.2024, 0, 0, 209.954, -1350.11, 40.8874, -1000, -1000, -1000, -1, -1, 'D', 5),
(83, 980, 3, 0, 665.004, -1310.11, 13.4609, 0, 0, 356.658, 0, 0, 665.386, -1311.12, 3.4609, -1000, -1000, -1000, -1, -1, 'D', 5),
(95, 8572, 0, 0, 847.737, -2062, 14.1071, 0, 0, 272.916, 0, 0, 848.181, -2051.64, 12.8671, 0, 0, 272.916, -1, -1, '', 5),
(96, 8572, 3, 0, 824.669, -2043.68, 14.1772, 0, 0, 88.5056, 0, 0, 824.669, -2043.68, 14.1772, 0, 0, 88.5056, -1, -1, '', 5),
(100, 9833, 0, 0, 669.111, -1275.73, 13.4609, 0, 0, 292.836, 0, 0, 669.974, -1275.65, 3.4609, -1000, -1000, -1000, -1, -1, '', 5),
(101, 3660, 0, 0, 670.517, -1276.29, 14.8477, 0, 0, 269.632, 0, 0, 667.372, -1276.49, 3.4609, -1000, -1000, -1000, -1, -1, '', 5),
(106, 971, 0, 0, 823.459, -1882.69, 12.8671, 0, 0, 0.7732, 0, 0, 822.903, -1882.95, 2.8671, -1000, -1000, -1000, -1, -1, '', 5),
(107, 971, 0, 0, 849.22, -1882.41, 12.8671, 0, 0, 355.509, 0, 0, 849.404, -1882.2, 2.8671, -1000, -1000, -1000, -1, -1, '', 5),
(109, 3749, 0, 0, 836.324, -1880.7, 17.2005, 0, 0, 0.9956, 0, 0, 835.704, -1881.97, 2.8671, -1000, -1000, -1000, -1, -1, '', 5),
(111, 980, 3, 0, 282.406, -1320.26, 53.7668, 0, 0, 34.1672, 0, 0, 282.406, -1320.26, 43.7668, -1000, -1000, -1000, -1, -1, '???', 5),
(114, 19129, 0, 0, 1075.26, -1497.6, 21.84, 0, 0, 105.19, 0, 0, 1069.45, -1499.42, 22.05, 0, 0, 105.19, -1, -1, '', 5),
(115, 18655, 0, 0, 1062.85, -1492.18, 21.784, -0.2, 0.1999, 137.62, 0, 0, 1063.26, -1492.83, 21.5664, 1.1, 8.0999, 132.42, -1, -1, '', 5),
(116, 19608, 0, 0, 1066.32, -1495.87, 21.8803, 0, 0, 100.78, 0, 0, 1063.2, -1495.58, 12.9103, -1000, -1000, -1000, -1, -1, '', 5),
(117, 19609, 3, 0, 1066.44, -1493.02, 21.8833, -8.8999, 2.1999, 99.2052, 0, 0, 1066.76, -1492.97, 21.9328, -8.8999, 2.1999, 99.2052, -1, -1, '', 5),
(118, 19609, 3, 0, 1067.11, -1497.88, 22.0051, -7.5, 2.2999, 103.982, 0, 0, 1068.91, -1497.32, 12.9271, -1000, -1000, -1000, -1, -1, '', 5),
(119, 18647, 3, 0, 1078.11, -1498.27, 25.0647, -0.9, -1.1, -71.019, 0, 0, 1076.89, -1496.97, 12.9103, -1000, -1000, -1000, -1, -1, '', 5),
(120, 18647, 3, 0, 1075.94, -1489.71, 24.7303, -0.2, 0, 102.853, 0, 0, 1076.21, -1490.57, 12.9103, -1000, -1000, -1000, -1, -1, '', 5),
(121, 18650, 3, 0, 1074.3, -1498.92, 25.1697, 1.2999, -11.5999, -92.629, 0, 0, 1074.26, -1497.81, 12.9103, -1000, -1000, -1000, -1, -1, '', 5),
(122, 18650, 3, 0, 1072.58, -1490.13, 24.9631, -1.8999, -14.2, 109.293, 0, 0, 1072.92, -1490.24, 12.9103, -1000, -1000, -1000, -1, -1, '', 5),
(123, 18658, 3, 0, 1065.27, -1499.55, 18.591, 66.6999, 126.9, 82.5303, 0, 0, 1062.26, -1498.51, 12.9271, -1000, -1000, -1000, -1, -1, '', 5),
(124, 18657, 3, 0, 1066.99, -1489.94, 20.7168, 54.5, 47.3999, 108.963, 0, 0, 1062.99, -1494.74, 12.9271, -1000, -1000, -1000, -1, -1, '', 5),
(140, 980, 3, 0, 1814.08, -1347.96, 16.3406, 0, 0, 89.6892, 0, 0, 1815.06, -1347.81, 5.0721, -1000, -1000, -1000, -1, -1, 'D', 5),
(164, 980, 3, 0, 282.522, -1263.44, 73.9288, 0, 0, 152.05, 0, 0, 282.522, -1263.44, 63.9288, -1000, -1000, -1000, -1, -1, '3333', 5),
(170, 980, 3, 0, 249.919, -1265.07, 69.7544, 0, 0, 213.222, 0, 0, 249.919, -1265.07, 59.7544, -1000, -1000, -1000, -1, -1, '3333', 5),
(171, 16037, 0, 0, 44.0749, -1714.41, 17.5461, 0.6, 4.5, 16.9349, 0, 0, 88.9175, -1698.21, 13.6433, 0.6, 4.5, 16.9349, -1, -1, '', 5),
(176, 19529, 0, 0, -72.6234, -1750.17, 17.5894, 0.6999, 0, -68.3504, 0, 0, -59.4182, -1728.51, 9.8893, -1000, -1000, -1000, -1, -1, '', 5),
(177, 6522, 0, 0, -101.485, -1732.51, 25.6493, 0, 0, -160.314, 0, 0, -93.1405, -1747.89, 9.2994, -1000, -1000, -1000, -1, -1, '', 5),
(178, 6522, 0, 0, -55.7335, -1774.28, 25.9725, -0.1, 0, -69.0915, 0, 0, -50.7411, -1771.08, 9.2994, -1000, -1000, -1000, -1, -1, '', 5),
(179, 9833, 0, 0, -49.7802, -1731.06, 18.8984, 0, 0, 291.189, 0, 0, -70.8683, -1748.55, 9.2994, -1000, -1000, -1000, -1, -1, '', 5),
(180, 8645, 0, 0, -21.1834, -1709.71, 19.1494, 0, 0, 291.298, 0, 0, -21.5813, -1705.55, 9.2994, -1000, -1000, -1000, -1, -1, '', 5),
(182, 8645, 3, 0, -3.6574, -1754.2, 19.1404, -0.0998, 0.2, -68.0416, 0, 0, -3.0009, -1759.84, 9.2994, -1000, -1000, -1000, -1, -1, '', 5),
(183, 8645, 3, 0, 3.2848, -1771.8, 19.0394, 0, 0, -68.843, 0, 0, -3.2973, -1780.9, 9.2994, -1000, -1000, -1000, -1, -1, '', 5),
(184, 8645, 3, 0, -30.4949, -1686.43, 19.1351, 2.7, 0.1999, -67.9486, 0, 0, -36.0488, -1691.44, 9.2994, -1000, -1000, -1000, -1, -1, '', 5),
(185, 8645, 3, 0, -49.6492, -1678.25, 18.9441, 3.7, 0.7, 22.3682, 0, 0, -45.1233, -1678.76, 9.2994, -1000, -1000, -1000, -1, -1, '', 5),
(186, 8645, 3, 0, -86.1598, -1692.7, 18.5351, 0.5999, 0.4999, -158.615, 0, 0, -69.7743, -1692.22, 9.2994, -1000, -1000, -1000, -1, -1, '', 5),
(187, 8645, 3, 0, -5.5075, -1790.41, 18.904, 1.2, 0.4999, -158.877, 0, 0, -5.9201, -1787.19, 9.2994, -1000, -1000, -1000, -1, -1, '', 5),
(189, 8645, 3, 0, -66.3118, -1814.16, 18.0193, 0, 0.4999, -158.282, 0, 0, -96.0758, -1812.55, 9.2994, -1000, -1000, -1000, -1, -1, '', 5),
(190, 8645, 3, 0, -92.8054, -1824.55, 17.8259, -0.7999, 0.7, -158.836, 0, 0, -97.4559, -1819.53, 9.2994, -1000, -1000, -1000, -1, -1, '', 5),
(197, 980, 3, 0, 2177.86, -2255.03, 14.7734, 0, 0, 44.6309, 0, 0, 2177.86, -2255.03, 4.7734, -1000, -1000, -1000, -1, -1, '', 5),
(198, 3749, 0, 0, 2235.15, -2214.94, 18.4114, 0.7, 0.1999, -48.0041, 0, 0, 2232.44, -2217.38, 3.5468, -1000, -1000, -1000, -1, -1, '', 5),
(208, 980, 3, 0, 2236.11, -2214.08, 14.2191, 0, -0.6999, 134.762, 0, 0, 2236.68, -2212.58, 3.3172, -1000, -1000, -1000, -1, -1, 'S', 5),
(212, 19858, 3, 0, 2120.28, -2274.55, 20.8718, 0, 0, 136.907, 0, 0, 2120.12, -2274.52, 10.6718, -1000, -1000, -1000, -1, -1, 'S', 5),
(237, 980, 3, 0, 2264.17, -2254.72, 13.5468, 0, 0, 130.219, 0, 0, 2264.17, -2254.72, 3.5468, -1000, -1000, -1000, -1, -1, 'ARRS', 5),
(238, 3928, 3, 0, 2175.65, -2303.52, 12.5568, 0.1999, -0.0999, 45.8278, 0, 0, 2175.87, -2303.15, 3.5468, -1000, -1000, -1000, -1, -1, '', 5),
(241, 19588, 0, 0, 2815.88, -2391.17, 11.9835, -0.8999, 12.4, 0.6911, 0, 0, 2821.01, -2391.43, 2.0779, -1000, -1000, -1000, -1, -1, '', 5),
(243, 2605, 0, 0, 544.487, -1299.8, 16.6191, 0, 0, 180.88, 0, 0, 543.981, -1301.25, 7.2492, -1000, -1000, -1000, -1, -1, '', 5),
(244, 2605, 0, 0, 542.536, -1299.83, 16.6091, 0, 0, -179.39, 0, 0, 542.415, -1300.83, 7.2492, -1000, -1000, -1000, -1, -1, '', 5),
(245, 2605, 0, 0, 546.442, -1299.78, 16.6292, 0, 0, 179.51, 0, 0, 547.104, -1300.69, 7.2492, -1000, -1000, -1000, -1, -1, '', 5),
(246, 19999, 0, 0, 544.459, -1300.81, 16.2015, -1.4999, -0.9999, 178.665, 0, 0, 544.112, -1299.28, 7.2491, -1000, -1000, -1000, -1, -1, '', 5),
(247, 18449, 0, 0, 989.581, -2353.84, 11.0079, -0.5, -1.4, 45.8581, 0, 0, 998.755, -2303.04, 3.0937, -1000, -1000, -1000, -1, -1, '', 5),
(248, 19853, 0, 0, 940.751, -2404, 10.517, 0, 0, 134.829, 0, 0, 964.485, -2380.38, 1.537, -1000, -1000, -1000, -1, -1, '', 5),
(249, 9320, 0, 0, 926.364, -2422.02, 15.9137, -0.5, 0.6, -135.904, 0, 0, 930.322, -2413.84, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(250, 9320, 0, 0, 925.437, -2365.62, 16.1943, -0.0999, -0.0999, 134.631, 0, 0, 943.194, -2397.46, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(251, 19853, 0, 0, 919.224, -2382.66, 10.5572, 0.1, -0.0999, 135.694, 0, 0, 943.601, -2381.8, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(252, 9324, 0, 0, 916.239, -2393.82, 15.887, 0, 0, 93.1213, 0, 0, 930.35, -2393.98, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(255, 983, 0, 0, 970.495, -2389.65, 11.077, 0, 0, -135.977, 0, 0, 969.246, -2389.01, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(257, 983, 0, 0, 971.587, -2390.84, 11.1063, 0.0999, 0, -135.94, 0, 0, 963.73, -2401.16, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(260, 983, 0, 0, 948.567, -2418.08, 11.057, 0, 0, -45.3674, 0, 0, 947.5, -2418.17, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(261, 983, 0, 0, 944.063, -2422.61, 11.057, 0, 0, 135.069, 0, 0, 942.944, -2422.63, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(262, 983, 0, 0, 939.483, -2427.17, 11.077, 0, 0, 134.482, 0, 0, 940.204, -2426.61, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(263, 983, 0, 0, 934.939, -2431.7, 11.037, 0, 0, -45.2108, 0, 0, 932.243, -2433.48, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(264, 983, 3, 0, 931.806, -2434.79, 11.097, 0, 0, 134.355, 0, 0, 931.697, -2437.73, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(265, 8645, 0, 0, 919.22, -2426.38, 11.307, 0, 0, 134.824, 0, 0, 924.549, -2434.47, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(266, 8645, 0, 0, 898.098, -2405.55, 11.419, 0, 0, 136.494, 0, 0, 904.588, -2409.45, 1.589, -1000, -1000, -1000, -1, -1, '', 5),
(267, 8645, 0, 0, 896.468, -2383.76, 11.3784, 0, 0, 46.7198, 0, 0, 896.755, -2390.01, 1.6084, -1000, -1000, -1000, -1, -1, '', 5),
(268, 8645, 3, 0, 917.065, -2362.46, 11.4076, 0.5, 0, 45.3925, 0, 0, 910.715, -2371.05, 1.582, -1000, -1000, -1000, -1, -1, '', 5),
(269, 983, 0, 0, 927.675, -2351.66, 11.2245, 0, 0.1999, -44.0999, 0, 0, 929.554, -2351.8, 1.5245, -1000, -1000, -1000, -1, -1, '', 5),
(270, 983, 0, 0, 932.186, -2351.63, 11.2522, 0, 0, -134.267, 0, 0, 935.196, -2353.04, 1.5222, -1000, -1000, -1000, -1, -1, '', 5),
(271, 983, 0, 0, 936.696, -2356.08, 11.1955, 0, 0, -134.827, 0, 0, 937.718, -2355.17, 1.5155, -1000, -1000, -1000, -1, -1, '', 5),
(272, 983, 0, 0, 941.279, -2360.59, 11.2253, 0, 0, -134.581, 0, 0, 942.154, -2360.63, 1.5053, -1000, -1000, -1000, -1, -1, '', 5),
(273, 983, 0, 0, 945.903, -2365.11, 11.1799, 0, 0, -134.721, 0, 0, 944.218, -2363.64, 1.4999, -1000, -1000, -1000, -1, -1, '', 5),
(274, 983, 0, 0, 950.495, -2369.6, 11.174, 0, 0, -134.604, 0, 0, 946.593, -2369.26, 1.494, -1000, -1000, -1000, -1, -1, '', 5),
(275, 983, 0, 0, 954.944, -2373.97, 11.1881, 0, 0, -134.238, 0, 0, 949.127, -2372.24, 1.4881, -1000, -1000, -1000, -1, -1, '', 5),
(278, 3515, 0, 0, 947.444, -2394.63, 11.3181, 0, 6.3999, 72.2606, 0, 0, 950.903, -2393, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(279, 3515, 0, 0, 948.147, -2390.93, 11.1951, 0, -3.3999, 78.3068, 0, 0, 951.475, -2391.22, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(280, 869, 0, 0, 948.885, -2392.42, 10.967, 0, 0, 153.171, 0, 0, 953.024, -2391.23, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(281, 869, 0, 0, 945.408, -2392.6, 10.927, 0, 0, 262.239, 0, 0, 944.576, -2392.49, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(282, 869, 0, 0, 945.811, -2389.36, 10.947, 0, 0, 232.472, 0, 0, 945.089, -2388.8, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(283, 869, 0, 0, 949.352, -2389.68, 10.877, 0, 0, 135.338, 0, 0, 949.352, -2389.68, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(284, 869, 0, 0, 947.984, -2396.19, 10.937, 0, 0, 15.3301, 0, 0, 947.698, -2396.85, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(285, 869, 0, 0, 944.996, -2395.53, 10.917, 0, 0, 311.723, 0, 0, 944.332, -2396.12, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(287, 8418, 3, 0, 969.326, -2412.32, 11.007, -0.1999, -0.0999, -44.6087, 0, 0, 962.341, -2402.32, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(288, 997, 0, 0, 973.601, -2393.02, 10.4935, 0, 0.2999, 46.9794, 0, 0, 975.422, -2392.56, 1.4635, -1000, -1000, -1000, -1, -1, '', 5),
(289, 983, 0, 0, 977.981, -2393.19, 11.1275, 0, 0, 44.2587, 0, 0, 976.892, -2395.5, 1.4775, -1000, -1000, -1000, -1, -1, '', 5),
(290, 983, 0, 0, 982.474, -2397.67, 11.0778, 0, 0, 45.3652, 0, 0, 981.729, -2400.02, 1.4878, -1000, -1000, -1000, -1, -1, '', 5),
(291, 983, 0, 0, 987.071, -2402.17, 11.0955, 0, 0, -133.732, 0, 0, 986.848, -2403.77, 1.4956, -1000, -1000, -1000, -1, -1, '', 5),
(292, 983, 0, 0, 988.43, -2403.49, 11.1279, 0, 0, -134.021, 0, 0, 988.437, -2404.83, 1.4979, -1000, -1000, -1000, -1, -1, '', 5),
(293, 983, 0, 0, 988.495, -2408.03, 11.1721, 0, 0, 135.768, 0, 0, 988.253, -2407.33, 1.4921, -1000, -1000, -1000, -1, -1, '', 5),
(294, 983, 0, 0, 983.983, -2412.6, 11.2061, 0, 0, 135.414, 0, 0, 982.259, -2411.92, 1.5161, -1000, -1000, -1000, -1, -1, '', 5),
(295, 983, 0, 0, 979.437, -2417.22, 11.249, 0, 0, 135.351, 0, 0, 977.575, -2416.53, 1.539, -1000, -1000, -1000, -1, -1, '', 5),
(296, 983, 0, 0, 888.694, -2396.43, 10.8771, 0, 0, 45.8969, 0, 0, 888.833, -2394.5, 1.6271, -1000, -1000, -1000, -1, -1, '', 5),
(297, 983, 0, 0, 974.929, -2421.83, 11.292, 0, 0, 135.478, 0, 0, 973.753, -2421.79, 1.562, -1000, -1000, -1000, -1, -1, '', 5),
(298, 983, 0, 0, 970.469, -2426.38, 11.273, 0, 0, 135.705, 0, 0, 967.62, -2425.18, 1.583, -1000, -1000, -1000, -1, -1, '', 5),
(299, 983, 0, 0, 965.897, -2430.97, 11.2878, 0, 0, 135.298, 0, 0, 964.763, -2431.06, 1.6078, -1000, -1000, -1000, -1, -1, '', 5),
(300, 983, 0, 0, 965.63, -2431.26, 11.2856, 0, 0, 134.895, 0, 0, 963.998, -2430.02, 1.6056, -1000, -1000, -1000, -1, -1, '', 5),
(301, 3934, 0, 0, 972.258, -2403.26, 10.5135, 0, 0, -134.318, 0, 0, 975.18, -2400.71, 1.4835, -1000, -1000, -1000, -1, -1, '', 5),
(302, 3934, 0, 0, 978.823, -2409.71, 10.5545, 0, 0, -134.651, 0, 0, 977.556, -2411.07, 1.5345, -1000, -1000, -1000, -1, -1, '', 5),
(303, 3507, 0, 0, 970.243, -2392.69, 10.287, 0, 0, 227.333, 0, 0, 970.243, -2392.69, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(304, 3507, 0, 0, 946.886, -2388.49, 10.397, 0, 0, 117.979, 0, 0, 949.314, -2387.18, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(305, 3507, 0, 0, 949.727, -2375.35, 10.497, 0, 0, 31.8111, 0, 0, 949.743, -2375.37, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(306, 3507, 0, 0, 946.927, -2409.99, 10.447, 0, 0, 147.119, 0, 0, 948.372, -2407.75, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(307, 3507, 0, 0, 930.883, -2386.99, 10.4634, 0, 0, 44.9712, 0, 0, 930.883, -2386.99, 1.5234, -1000, -1000, -1000, -1, -1, '', 5),
(308, 3934, 3, 0, 898.276, -2392, 10.6184, 0, 0, 45.483, 0, 0, 901.049, -2397.7, 1.5984, -1000, -1000, -1000, -1, -1, '', 5),
(309, 16113, 3, 0, 975.352, -2428.71, -7.6857, -1, 0, 78.7082, 0, 0, 988.16, -2406.32, 1.4909, -1000, -1000, -1000, -1, -1, '', 5),
(310, 16113, 3, 0, 961.2, -2443.91, -1.4216, 0, 0, 41.2387, 0, 0, 972.683, -2429.16, 4.4483, -1000, -1000, -1000, -1, -1, '', 5),
(311, 16113, 3, 0, 938.308, -2439.29, 2.6097, 0, 0, -92.2559, 0, 0, 951.881, -2423.42, 1.5897, -1000, -1000, -1000, -1, -1, '', 5),
(312, 16113, 3, 0, 879.408, -2400.41, 1.4383, 0, 0, 143.114, 0, 0, 912.174, -2421.51, 1.517, -1000, -1000, -1000, -1, -1, '', 5),
(313, 16113, 3, 0, 896.915, -2364.22, 4.7394, 0, 0, 78.702, 0, 0, 905.863, -2394.66, 9.4483, -1000, -1000, -1000, -1, -1, '', 5),
(314, 16113, 3, 0, 902.206, -2433.45, 0.9018, 0, 0, 179.007, 0, 0, 907.005, -2412.26, 1.5818, -1000, -1000, -1000, -1, -1, '', 5),
(315, 16113, 3, 0, 926.427, -2339.75, 3.4049, 0, 0, 35.4433, 0, 0, 942.54, -2362.39, 1.4949, -1000, -1000, -1000, -1, -1, '', 5),
(316, 16113, 3, 0, 944.106, -2345.95, 1.5914, 0, 0, 339.201, 0, 0, 942.698, -2362.44, 1.5014, -1000, -1000, -1000, -1, -1, '', 5),
(317, 16113, 3, 0, 993.24, -2390.4, -1.1195, 0, 0, -6.1737, 0, 0, 977.94, -2400.72, 1.4904, -1000, -1000, -1000, -1, -1, '', 5),
(320, 8640, 3, 0, 1017.06, -2325.59, 17.8637, 0, 0, 43.7792, 0, 0, 1019.1, -2323.08, 3.0937, -1000, -1000, -1000, -1, -1, '', 5),
(321, 985, 0, 0, 1007.71, -2318.41, 13.7837, 0, 0, 133.245, 0, 0, 1010.6, -2314.58, 3.0937, -1000, -1000, -1000, -1, -1, '', 5),
(322, 985, 0, 0, 1023.61, -2335.48, 13.7862, 0, 0, 136.671, 0, 0, 1027.7, -2332.45, 3.0862, -1000, -1000, -1000, -1, -1, '', 5),
(323, 19911, 0, 0, 1018.3, -2324.16, 11.9738, -0.3, -85.4, 42.5814, 0, 0, 1019.52, -2323.02, 3.0937, -1000, -1000, -1000, -1, -1, '', 5),
(324, 19129, 0, 0, -8.7972, -1774.93, 18.3293, 0, 0, 201.142, 0, 0, -18.3343, -1757.76, 9.2994, -1000, -1000, -1000, -1, -1, '', 5),
(325, 19608, 0, 0, -6.3116, -1781.49, 18.3796, 0, 0, 200.515, 0, 0, -7.9202, -1777.19, 9.3997, -1000, -1000, -1000, -1, -1, '', 5),
(326, 8418, 0, 0, -50.0142, -1689.67, 18.7293, 0.2, 0, -68.1333, 0, 0, -45.4613, -1720.04, 9.2994, -1000, -1000, -1000, -1, -1, '', 5),
(327, 8623, 0, 0, -49.4019, -1730.99, 18.6802, 0, 0, 115.407, 0, 0, -47.3286, -1730.89, 9.0002, -1000, -1000, -1000, -1, -1, '', 5),
(328, 8623, 0, 0, -49.2636, -1731.26, 18.6639, 0, 0, 12.8068, 0, 0, -46.2018, -1730.57, 9.0139, -1000, -1000, -1000, -1, -1, '', 5),
(329, 3507, 0, 0, -48.0939, -1728.8, 17.8232, 0, 0, 149.537, 0, 0, -48.0939, -1728.8, 8.9932, -1000, -1000, -1000, -1, -1, '', 5),
(330, 3507, 0, 0, -45.9873, -1733.24, 17.8962, 0, 0, 70.5764, 0, 0, -42.8751, -1734.34, 9.0263, -1000, -1000, -1000, -1, -1, '', 5),
(331, 3507, 0, 0, -51.9376, -1733.77, 17.8375, 0, 0, 320.595, 0, 0, -53.6388, -1735.84, 8.8375, -1000, -1000, -1000, -1, -1, '', 5),
(332, 3507, 0, 0, -52.8416, -1728.89, 17.8768, 0, 0, 236.935, 0, 0, -54.2663, -1727.96, 8.8769, -1000, -1000, -1000, -1, -1, '', 5),
(333, 8652, 3, 0, -39.4146, -1803.59, 18.4783, 0, 0, -158.976, 0, 0, -44.1124, -1803.46, 8.6683, -1000, -1000, -1000, -1, -1, '', 5),
(334, 8652, 3, 0, -22.5405, -1797.11, 18.5047, 0, 0, -158.919, 0, 0, -23.937, -1792.97, 8.9547, -1000, -1000, -1000, -1, -1, '', 5),
(335, 8652, 3, 0, -112.287, -1815.92, 17.6061, 0, 0, 111.453, 0, 0, -112.445, -1811.75, 7.8961, -1000, -1000, -1000, -1, -1, '', 5),
(336, 8652, 3, 0, -123.161, -1788.26, 17.6779, 0, 0, 111.606, 0, 0, -119.602, -1793.31, 7.8979, -1000, -1000, -1000, -1, -1, '', 5),
(337, 8652, 3, 0, -134.163, -1760.55, 17.6476, 0, 0, 111.733, 0, 0, -129.195, -1762.56, 7.9276, -1000, -1000, -1000, -1, -1, '', 5),
(338, 8652, 3, 0, -145.08, -1732.87, 17.6963, 0, 0, 111.697, 0, 0, -138.109, -1733.78, 7.9563, -1000, -1000, -1000, -1, -1, '', 5),
(339, 8652, 3, 0, -145.517, -1731.85, 17.7568, 0, 0, 111.41, 0, 0, -147.515, -1718.84, 7.9168, -1000, -1000, -1000, -1, -1, '', 5),
(340, 8652, 3, 0, -137.072, -1712.29, 17.7241, 0, -0.4999, 21.079, 0, 0, -143.505, -1716.19, 7.9341, -1000, -1000, -1000, -1, -1, '', 5),
(341, 8652, 3, 0, -109.681, -1701.68, 18.4454, 0, 1, -159.326, 0, 0, -109.717, -1701.59, 8.3754, -1000, -1000, -1000, -1, -1, '', 5),
(342, 3507, 0, 0, -18.5787, -1744.78, 18.1995, 0, 0, 164.623, 0, 0, -18.5787, -1744.78, 9.2495, -1000, -1000, -1000, -1, -1, '', 5),
(343, 3507, 0, 0, -32.018, -1714.27, 18.0943, 0, 0, 58.4022, 0, 0, -32.018, -1714.27, 9.2343, -1000, -1000, -1000, -1, -1, '', 5),
(344, 3507, 0, 0, -73.5663, -1710.83, 17.7228, 0, 0, 80.9624, 0, 0, -73.6857, -1711.58, 8.7828, -1000, -1000, -1000, -1, -1, '', 5),
(345, 3507, 0, 0, -81.4567, -1762.24, 17.3616, 0, 0, 154.596, 0, 0, -81.4567, -1762.24, 8.4616, -1000, -1000, -1000, -1, -1, '', 5),
(346, 3507, 0, 0, -22.5183, -1789.93, 17.8875, 0, 0, 151.15, 0, 0, -22.5183, -1789.93, 9.0075, -1000, -1000, -1000, -1, -1, '', 5),
(347, 3507, 0, 0, -93.8441, -1699.71, 17.3999, 0, 0, 28.0086, 0, 0, -93.8441, -1699.71, 8.5799, -1000, -1000, -1000, -1, -1, '', 5),
(348, 3934, 0, 0, -44.0052, -1682.13, 18.308, 0, 0, -157.205, 0, 0, -47.0892, -1683.16, 9.268, -1000, -1000, -1000, -1, -1, '', 5),
(349, 3934, 0, 0, -40.2211, -1690.89, 18.3079, 0, 0, 22.216, 0, 0, -38.3858, -1690.23, 9.3079, -1000, -1000, -1000, -1, -1, '', 5),
(350, 3749, 0, 0, -3.2905, -1731.95, 26.1964, 0, 0, 93.7573, 0, 0, -16.3404, -1731.88, 9.2743, -1000, -1000, -1000, -1, -1, '', 5),
(351, 3749, 0, 0, 99.7261, -1697.03, 14.7395, 0, 0, 107.228, 0, 0, 105.206, -1694.46, -0.1704, -1000, -1000, -1000, -1, -1, '', 5),
(363, 3279, 0, 0, -23.3826, -1714.91, 18.2396, 0, 0, -72.0263, 0, 0, -20.9794, -1720.15, 9.2997, -1000, -1000, -1000, -1, -1, '', 5),
(364, 3279, 0, 0, -13.5317, -1749.87, 18.0897, 0, 0, 108.062, 0, 0, -16.2037, -1739.45, 9.2797, -1000, -1000, -1000, -1, -1, '', 5),
(365, 3528, 0, 0, 103.272, -1696.08, 17.7574, -0.3999, 8.8999, 13.1144, 0, 0, 106.933, -1694.39, -0.2926, -1000, -1000, -1000, -1, -1, '', 5),
(370, 1569, 3, 0, 239.744, 116.118, 1002.25, 0, 0, 91.809, 10, 4000001, 239.776, 115.119, 1002.25, 0, 0, 116.109, 371, 1, '', 5),
(371, 1569, 3, 0, 239.686, 119.097, 1002.22, 0, 0, -90.7506, 10, 4000001, 239.7, 120.127, 1002.22, 0, 0, -90.7506, -1, -1, '', 5),
(372, 1569, 3, 0, 253.036, 110.533, 1002.26, 0, 0, -88.649, 10, 4000001, 253.041, 111.593, 1002.26, 0, 0, -89.849, 373, 1, '', 5),
(373, 1569, 3, 0, 253.109, 107.549, 1002.27, 0, 0, 91.2039, 10, 4000001, 1989.76, 1003.35, 993.479, 0, 0, 177.757, -1, -1, '', 5),
(374, 980, 3, 0, 1282.95, -616.753, 104.049, 0, 0, 217.591, 0, 0, 1282.95, -616.753, 99.5785, 0, 0, 217.591, -1, -1, 'kun10', 5),
(376, 980, 3, 0, 1021.31, -367.049, 75.449, 0, 0, -0.2086, 0, 0, 1021.31, -367.049, 70.109, 0, 0, -0.2086, -1, -1, 'DARK', 5),
(377, 980, 3, 0, 321.453, -1188.1, 77.1771, 0, 0, 38.8383, 0, 0, 321.453, -1188.1, 73.7771, 0, 0, 38.8383, -1, -1, '', 5),
(378, 980, 3, 0, 1588.13, -1635.93, 13.3301, 0, 0, 4.6291, 0, 0, 1588.13, -1635.93, 3.3301, -1000, -1000, -1000, -1, -1, '', 5),
(379, 980, 3, 0, 835.944, -1882.5, 12.8671, 0, 0, 179.675, 0, 0, 835.944, -1882.5, 2.8671, -1000, -1000, -1000, -1, -1, '', 5),
(380, 980, 3, 0, 1595.69, -2180.69, 13.5721, 0, 0, 5.996, 0, 0, 1595.69, -2180.69, 3.5721, -1000, -1000, -1000, -1, 7, '', 5),
(381, 980, 3, 0, 1595.56, -2183.66, 13.5468, 0, 0, 359.78, 0, 0, 1595.56, -2183.66, 3.5468, -1000, -1000, -1000, -1, -1, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int(12) NOT NULL,
  `graffitiX` float DEFAULT 0,
  `graffitiY` float DEFAULT 0,
  `graffitiZ` float DEFAULT 0,
  `graffitiAngle` float DEFAULT 0,
  `graffitiColor` int(12) DEFAULT 0,
  `graffitiText` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `graffities`
--

CREATE TABLE `graffities` (
  `id` int(11) NOT NULL,
  `text` varchar(32) NOT NULL,
  `color` int(16) NOT NULL,
  `back_color` int(16) NOT NULL,
  `font` varchar(16) NOT NULL,
  `font_size` int(11) NOT NULL,
  `bold` int(11) NOT NULL,
  `creator` varchar(32) NOT NULL,
  `c_date` varchar(64) NOT NULL,
  `posx` float NOT NULL,
  `posy` float NOT NULL,
  `posz` float NOT NULL,
  `rotx` float NOT NULL,
  `roty` float NOT NULL,
  `rotz` float NOT NULL,
  `gotox` float NOT NULL,
  `gotoy` float NOT NULL,
  `gotoz` float NOT NULL,
  `interior` int(11) NOT NULL,
  `world` int(11) NOT NULL,
  `accepted` int(11) NOT NULL,
  `acceptor` varchar(32) NOT NULL,
  `a_date` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gunracks`
--

CREATE TABLE `gunracks` (
  `rackID` int(12) NOT NULL,
  `rackHouse` int(12) DEFAULT 0,
  `rackX` float DEFAULT 0,
  `rackY` float DEFAULT 0,
  `rackZ` float DEFAULT 0,
  `rackA` float DEFAULT 0,
  `rackInterior` int(12) DEFAULT 0,
  `rackWorld` int(12) DEFAULT 0,
  `rackWeapon1` int(12) DEFAULT 0,
  `rackAmmo1` int(12) DEFAULT 0,
  `rackWeapon2` int(12) DEFAULT 0,
  `rackAmmo2` int(12) DEFAULT 0,
  `rackWeapon3` int(12) DEFAULT 0,
  `rackAmmo3` int(12) DEFAULT 0,
  `rackWeapon4` int(12) DEFAULT 0,
  `rackAmmo4` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `type` tinyint(2) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `rentprice` int(10) DEFAULT 0,
  `level` tinyint(2) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 0,
  `timestamp` int(10) DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `int_x` float DEFAULT 0,
  `int_y` float DEFAULT 0,
  `int_z` float DEFAULT 0,
  `int_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `outsideint` int(10) DEFAULT 0,
  `outsidevw` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `pot` int(10) DEFAULT 0,
  `crack` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `weapon_1` tinyint(2) DEFAULT 0,
  `weapon_2` tinyint(2) DEFAULT 0,
  `weapon_3` tinyint(2) DEFAULT 0,
  `weapon_4` tinyint(2) DEFAULT 0,
  `weapon_5` tinyint(2) DEFAULT 0,
  `weapon_6` tinyint(2) DEFAULT 0,
  `weapon_7` tinyint(2) DEFAULT 0,
  `weapon_8` tinyint(2) DEFAULT 0,
  `weapon_9` tinyint(2) DEFAULT 0,
  `weapon_10` tinyint(2) DEFAULT 0,
  `ammo_1` smallint(5) DEFAULT 0,
  `ammo_2` smallint(5) DEFAULT 0,
  `ammo_3` smallint(5) DEFAULT 0,
  `ammo_4` smallint(5) DEFAULT 0,
  `ammo_5` smallint(5) DEFAULT 0,
  `ammo_6` tinyint(2) DEFAULT 0,
  `ammo_7` tinyint(2) DEFAULT 0,
  `ammo_8` tinyint(2) DEFAULT 0,
  `ammo_9` tinyint(2) DEFAULT 0,
  `ammo_10` tinyint(2) DEFAULT 0,
  `pistolammo` smallint(5) DEFAULT 0,
  `shotgunammo` smallint(5) DEFAULT 0,
  `smgammo` smallint(5) DEFAULT 0,
  `arammo` smallint(5) DEFAULT 0,
  `rifleammo` smallint(5) DEFAULT 0,
  `hpammo` smallint(5) DEFAULT 0,
  `poisonammo` smallint(5) DEFAULT 0,
  `fmjammo` smallint(5) DEFAULT 0,
  `robbed` smallint(6) NOT NULL DEFAULT 3,
  `robbing` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `ownerid`, `owner`, `type`, `price`, `rentprice`, `level`, `locked`, `timestamp`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `int_x`, `int_y`, `int_z`, `int_a`, `interior`, `world`, `outsideint`, `outsidevw`, `cash`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `robbed`, `robbing`) VALUES
(25, 142, 'Ashw_Athy', 5, 550000, 0, 0, 0, 1627615896, 910.377, -817.553, 103.126, 30.057, 2217.98, -1076.25, 1050.48, 90, 1, 1000025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 223, 'Kunjappan_Us', 2, 550000, 0, 0, 0, 1643546623, 827.834, -857.976, 70.331, -161.976, 2259.76, -1135.88, 1050.63, 270, 10, 1000028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 33, 'Rajan_Nair', 14, 10000000, 0, 0, 1, 1627896372, 298.447, -1338.24, 53.44, 31.18, 2324.39, -1148.88, 1050.71, 0, 12, 1000029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 35, 'David_John', 18, 10000000, 0, 0, 1, 1627275001, 254.517, -1366.95, 53.109, -55.549, 1298.87, -796.205, 1084.01, 0, 5, 1000030, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 35, 'David_John', 2, 550000, 0, 0, 1, 1627275183, 693.763, -1645.73, 4.094, -77.12, 2259.76, -1135.88, 1050.63, 270, 10, 1000031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 35, 'David_John', 14, 800000, 0, 0, 1, 1627275415, 850.048, -1519.94, 14.344, -95.305, 2324.39, -1148.88, 1050.71, 0, 12, 1000037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 223, 'Kunjappan_Us', 18, 14000000, 0, 0, 1, 1643546424, 1094.88, -647.657, 113.648, -9.898, 1298.87, -796.205, 1084.01, 0, 5, 1000038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 34, 'Bullet_Dathan', 2, 300000, 0, 1, 1, 1627282093, 1179.89, -1260.99, 15.18, -88.319, 2259.76, -1135.88, 1050.63, 270, 10, 1000044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 31, 'DUDE_', 18, 1, 0, 0, 0, 1627500200, 189.638, -1308.25, 70.256, -85.302, 1298.87, -796.205, 1084.01, 0, 5, 1000046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 31, 'DUDE_', 18, 1, 0, 0, 0, 1643534838, 977.443, -771.718, 112.203, -5.311, 1298.87, -796.205, 1084.01, 0, 5, 1000047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 34, 'Bullet_Dathan', 12, 800000, 0, 0, 1, 1627308602, 2523.27, -1679.31, 15.497, 100.047, 2269.91, -1210.5, 1047.56, 90, 10, 1000049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 223, 'Kunjappan_Us', 18, 12000000, 0, 0, 0, 1643555796, 206.841, -1768.91, 4.367, -147.161, 1298.87, -796.205, 1084.01, 0, 5, 1000050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 0, 'Nobody', 12, 1000000, 0, 0, 0, 0, 1285.26, -1091.55, 28.258, 82.47, 2269.91, -1210.5, 1047.56, 90, 10, 1000051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 223, 'Kunjappan_Us', 14, 1000000, 5000, 0, 0, 1643531852, 1285.25, -1067.19, 31.672, 91.445, 2324.39, -1148.88, 1050.71, 0, 12, 1000052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 0, 'Nobody', 12, 1000000, 0, 0, 0, 0, 1241.95, -1075.1, 31.555, -88.471, 2269.91, -1210.5, 1047.56, 90, 10, 1000053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 34, 'Bullet_Dathan', 2, 150000, 0, 0, 1, 1627394365, 1187.36, -1254.72, 15.18, 88.9, 2259.76, -1135.88, 1050.63, 270, 10, 1000057, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 38, 'Bhavani_Op', 4, 1, 1000, 0, 0, 1627704999, 1179.81, -1254.63, 15.18, -89.52, 2233.65, -1114.78, 1050.88, 0, 5, 1000059, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 34, 'Bullet_Dathan', 5, 200000, 0, 0, 1, 1627394380, 1187.36, -1254.73, 18.898, 92.394, 2217.98, -1076.25, 1050.48, 90, 1, 1000060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 34, 'Bullet_Dathan', 5, 200000, 0, 0, 1, 1627394076, 1187.44, -1260.86, 18.898, 79.362, 2217.98, -1076.25, 1050.48, 90, 1, 1000061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 56, 'Mutta_Biju', 4, 200000, 0, 0, 1, 1627395049, 1179.89, -1260.91, 18.898, -89.935, 2233.65, -1114.78, 1050.88, 0, 5, 1000062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 46, 'Bilal_John', 4, 200000, 0, 0, 0, 1627383131, 1179.81, -1254.82, 18.898, -94.572, 2233.65, -1114.78, 1050.88, 0, 5, 1000063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 22, 'Mr_Decxo', 18, 1, 0, 0, 0, 1627379586, 980.392, -677.215, 121.976, -116.693, 1298.87, -796.205, 1084.01, 0, 5, 1000064, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 22, 'Mr_Decxo', 18, 1, 0, 0, 0, 1627380014, 841.4, -1471.46, 14.271, -6.857, 1298.87, -796.205, 1084.01, 0, 5, 1000065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 38, 'Bhavani_Op', 18, 1, 0, 0, 1, 1627734161, 251.582, -1220.11, 76.102, 42.7, 1298.87, -796.205, 1084.01, 0, 5, 1000066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 38, 'Bhavani_Op', 2, 1, 0, 0, 0, 1627390777, 416.688, -1154.07, 76.688, 148.947, 2259.76, -1135.88, 1050.63, 270, 10, 1000068, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 31, 'DUDE_', 4, 1, 0, 0, 0, 1627500983, 700.289, -1060.28, 49.422, 58.397, 2233.65, -1114.78, 1050.88, 0, 5, 1000069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, 223, 'GOD', 18, 1, 0, 0, 0, 1643545943, 1496.96, -687.892, 95.563, -174.491, 1298.87, -796.205, 1084.01, 0, 5, 1000070, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 0, 'Nobody', 12, 99999999, 0, 0, 0, 0, 2126.74, -1320.86, 26.624, 1.981, 2269.91, -1210.5, 1047.56, 90, 10, 1000071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 0, 'Nobody', 14, 99999999, 0, 0, 0, 0, 2148.93, -1484.86, 26.624, 85.046, 2324.39, -1148.88, 1050.71, 0, 12, 1000072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, 0, 'Nobody', 2, 300000, 0, 0, 0, 0, 2000, -1114.05, 27.125, -178.043, 2259.76, -1135.88, 1050.63, 270, 10, 1000073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(77, 25, 'Wizz_Annann', 18, 1, 0, 0, 0, 1627814850, 265.67, -1287.81, 74.633, -141.587, 1298.87, -796.205, 1084.01, 0, 5, 1000077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, 147, 'Vasu_Annann', 14, 1, 0, 5, 0, 1627577980, 852.109, -1423.26, 14.137, -10.531, 2324.39, -1148.88, 1050.71, 0, 12, 1000078, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79, 63, 'Marshal_Sir', 2, 120000, 0, 0, 0, 1627899037, 1187.29, -1261.11, 15.18, 78.8, 2259.76, -1135.88, 1050.63, 270, 10, 1000079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 27, 'phyco_muthalaly', 18, 1, 0, 0, 0, 1627586270, 1568.07, -1897.73, 13.554, -10.279, 1298.87, -796.205, 1084.01, 0, 5, 1000080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 167, 'Dr_Lutapi', 9, 550000, 0, 0, 0, 1627644722, 1045.37, -642.901, 120.117, -16.488, 1363.76, -2145.7, 1050.59, 0, 3, 1000083, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 207, 'Mr_Paco', 18, 0, 0, 5, 0, 1643519676, 1332.2, -633.466, 109.135, 23.125, 1260.65, -785.505, 1091.91, 85.977, 5, 1000088, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 0, 'Nobody', 2, 0, 0, 0, 0, 0, 2232.8, -1469.76, 24.251, 175.266, 2259.76, -1135.88, 1050.63, 270, 10, 1000089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 220, 'Vincent_Thomas', 18, 0, 0, 5, 0, 1643445367, 300.208, -1154.42, 81.391, 128.72, 1298.87, -796.205, 1084.01, 0, 5, 1000091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(95, 249, 'Anjali_Anju', 12, 800000, 0, 0, 0, 1643535568, 1242.26, -1097.59, 27.977, -103.972, 2269.91, -1210.5, 1047.56, 90, 10, 1000095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kills`
--

CREATE TABLE `kills` (
  `id` int(10) NOT NULL,
  `killer_uid` int(10) DEFAULT NULL,
  `target_uid` int(10) DEFAULT NULL,
  `killer` varchar(24) DEFAULT NULL,
  `target` varchar(24) DEFAULT NULL,
  `reason` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kills`
--

INSERT INTO `kills` (`id`, `killer_uid`, `target_uid`, `killer`, `target`, `reason`, `date`) VALUES
(1, 1, 1, 'Felix_Miller', 'Felix_Miller', 'Explosion', '2021-07-10 13:24:53'),
(2, 1, 1, 'Felix_Miller', 'Felix_Miller', 'Explosion', '2021-07-10 13:25:15'),
(3, 1, 1, 'Felix_Miller', 'Felix_Miller', 'Explosion', '2021-07-10 13:34:05'),
(4, 1, 1, 'Felix_Miller', 'Felix_Miller', 'Explosion', '2021-07-10 13:34:22'),
(5, 1, 1, 'Felix_Miller', 'Felix_Miller', 'Explosion', '2021-07-11 05:23:11'),
(6, 1, 1, 'Felix_Miller', 'Felix_Miller', 'Explosion', '2021-07-11 05:23:38'),
(7, 1, 1, 'Felix_Miller', 'Felix_Miller', 'Explosion', '2021-07-11 07:00:57'),
(8, 1, 1, 'Felix_Miller', 'Felix_Miller', 'Explosion', '2021-07-11 07:01:12'),
(9, 7, 7, 'Vrenz_Denzo', 'Vrenz_Denzo', 'Explosion', '2021-07-11 07:04:03'),
(10, 6, 6, 'Clerck_C._Temple', 'Clerck_C._Temple', 'Explosion', '2021-07-12 02:30:50'),
(11, 17, 17, 'Felix_Miller', 'Felix_Miller', 'Explosion', '2021-07-12 16:03:46'),
(12, 17, 17, 'Felix_Miller', 'Felix_Miller', 'Explosion', '2021-07-12 16:04:01'),
(13, 7, 7, 'Vrenz_Denzo', 'Vrenz_Denzo', 'Explosion', '2021-07-13 05:39:45'),
(14, 1, 2, 'Felix_Miller', 'Vrenz_Denzo', 'M4', '2021-07-15 05:04:20'),
(15, 1, 6, 'Felix_Miller', 'Jerald_Bughao', 'Fists', '2021-07-15 11:35:31'),
(16, 1, 4, 'Felix_Miller', 'Cardo_Suarez', 'Shovel', '2021-07-15 15:34:38'),
(17, 1, 4, 'Felix_Miller', 'Cardo_Suarez', 'Shovel', '2021-07-15 15:35:01'),
(18, 4, 4, 'Cardo_Suarez', 'Cardo_Suarez', 'Explosion', '2021-07-15 15:35:25'),
(19, 4, 4, 'Cardo_Suarez', 'Cardo_Suarez', 'Explosion', '2021-07-15 15:48:24'),
(20, 8, 8, 'Renz_X_Walker', 'Renz_X_Walker', 'Explosion', '2021-07-16 14:16:30'),
(21, 8, 8, 'Renz_X_Walker', 'Renz_X_Walker', 'Explosion', '2021-07-16 14:16:53'),
(22, 1, 1, 'Felix_Miller', 'Felix_Miller', 'Explosion', '2021-07-18 11:24:22'),
(23, 23, 23, 'Bebu_Op', 'Bebu_Op', 'Explosion', '2021-07-23 19:55:16'),
(24, 25, 23, 'Wizz_Annann', 'Bebu_Op', 'AK-47', '2021-07-23 20:23:35'),
(25, 25, 23, 'Wizz_Annann', 'Bebu_Op', 'AK-47', '2021-07-23 20:24:06'),
(26, 25, 23, 'Wizz_Annann', 'Bebu_Op', 'AK-47', '2021-07-23 20:24:16'),
(27, 23, 25, 'Bebu_Op', 'Wizz_Annann', 'Minigun', '2021-07-23 20:25:43'),
(28, 23, 25, 'Bebu_Op', 'Wizz_Annann', 'Minigun', '2021-07-23 20:26:04'),
(29, 23, 25, 'Bebu_Op', 'Wizz_Annann', 'Minigun', '2021-07-23 20:26:19'),
(30, 23, 25, 'Bebu_Op', 'Wizz_Annann', 'Minigun', '2021-07-23 20:26:30'),
(31, 23, 25, 'Bebu_Op', 'Wizz_Annann', 'Minigun', '2021-07-23 20:26:38'),
(32, 23, 25, 'Bebu_Op', 'Wizz_Annann', 'Minigun', '2021-07-23 20:26:52'),
(33, 23, 25, 'Bebu_Op', 'Wizz_Annann', 'Minigun', '2021-07-23 20:27:29'),
(34, 23, 25, 'Bebu_Op', 'Wizz_Annann', 'Minigun', '2021-07-23 20:27:54'),
(35, 26, 25, 'The_Demon_King', 'Wizz_Annann', 'Fists', '2021-07-23 20:49:17'),
(36, 29, 29, 'RK_RAJ', 'RK_RAJ', 'Explosion', '2021-07-24 06:43:36'),
(37, 29, 29, 'RK_RAJ', 'RK_RAJ', 'Explosion', '2021-07-24 06:43:51'),
(38, 28, 28, 'Jack_Sir', 'Jack_Sir', 'Explosion', '2021-07-24 07:54:34'),
(39, 27, 27, 'RK_GOD', 'RK_GOD', 'Explosion', '2021-07-24 07:54:36'),
(40, 28, 28, 'Jack_Sir', 'Jack_Sir', 'Explosion', '2021-07-24 07:54:54'),
(41, 27, 27, 'RK_GOD', 'RK_GOD', 'Explosion', '2021-07-24 07:54:56'),
(42, 27, 28, 'RK_GOD', 'Jack_Sir', 'Fists', '2021-07-24 07:57:45'),
(43, 27, 28, 'RK_GOD', 'Jack_Sir', 'Fists', '2021-07-24 07:57:58'),
(44, 27, 28, 'RK_GOD', 'Jack_Sir', 'Fists', '2021-07-24 07:59:06'),
(45, 21, 21, 'Daniel_Annan', 'Daniel_Annan', 'Explosion', '2021-07-24 08:25:26'),
(46, 21, 21, 'Daniel_Annan', 'Daniel_Annan', 'Explosion', '2021-07-24 08:25:41'),
(47, 21, 21, 'Daniel_Annan', 'Daniel_Annan', 'Explosion', '2021-07-24 08:28:00'),
(48, 21, 21, 'Daniel_Annan', 'Daniel_Annan', 'Explosion', '2021-07-24 08:28:16'),
(49, 21, 21, 'Daniel_Annan', 'Daniel_Annan', 'Explosion', '2021-07-24 08:29:40'),
(50, 21, 21, 'Daniel_Annan', 'Daniel_Annan', 'Explosion', '2021-07-24 08:29:54'),
(51, 21, 21, 'Daniel_Annan', 'Daniel_Annan', 'Explosion', '2021-07-24 08:31:50'),
(52, 23, 23, 'Bebu_Op', 'Bebu_Op', 'Explosion', '2021-07-24 08:31:51'),
(53, 21, 21, 'Daniel_Annan', 'Daniel_Annan', 'Explosion', '2021-07-24 08:32:05'),
(54, 23, 23, 'Bebu_Op', 'Bebu_Op', 'Explosion', '2021-07-24 08:32:06'),
(55, 22, 27, 'Mr_Decxo', 'RK_GOD', 'Fists', '2021-07-24 08:32:25'),
(56, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-07-24 08:32:30'),
(57, 22, 27, 'Mr_Decxo', 'RK_GOD', 'Fists', '2021-07-24 08:32:41'),
(58, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-07-24 08:32:45'),
(59, 30, 30, 'SALEO_OP', 'SALEO_OP', 'Explosion', '2021-07-24 08:34:00'),
(60, 24, 24, 'Devil_Jack', 'Devil_Jack', 'Explosion', '2021-07-24 08:34:02'),
(61, 24, 24, 'Devil_Jack', 'Devil_Jack', 'Explosion', '2021-07-24 08:34:19'),
(62, 27, 27, 'RK_GOD', 'RK_GOD', 'Explosion', '2021-07-24 08:46:20'),
(63, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-07-24 09:23:12'),
(64, 28, 28, 'Jack_Sir', 'Jack_Sir', 'Explosion', '2021-07-24 09:28:07'),
(65, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-07-24 09:50:48'),
(66, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Fists', '2021-07-24 14:32:32'),
(67, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Fists', '2021-07-24 14:32:56'),
(68, 34, 34, 'Bullet_Dathan', 'Bullet_Dathan', 'Explosion', '2021-07-24 14:55:27'),
(69, 34, 34, 'Bullet_Dathan', 'Bullet_Dathan', 'Explosion', '2021-07-24 14:56:30'),
(70, 34, 34, 'Bullet_Dathan', 'Bullet_Dathan', 'Explosion', '2021-07-24 14:56:45'),
(71, 21, 30, 'Daniel_Annan', 'SALEO_OP', 'M4', '2021-07-24 15:01:37'),
(72, 24, 39, 'Devil_Jack', 'Jhonny_Kuttan', 'Fists', '2021-07-24 15:25:26'),
(73, 39, 39, 'Jhonny_Kuttan', 'Jhonny_Kuttan', 'Explosion', '2021-07-24 15:26:15'),
(74, 39, 39, 'Jhonny_Kuttan', 'Jhonny_Kuttan', 'Explosion', '2021-07-24 16:02:01'),
(75, 22, 23, 'Mr_Decxo', 'Bebu_Op', 'Shotgun', '2021-07-24 17:04:11'),
(76, 23, 23, 'Bebu_Op', 'Bebu_Op', 'Explosion', '2021-07-24 17:05:08'),
(77, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-24 17:06:51'),
(78, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-24 17:07:15'),
(79, 23, 22, 'Bebu_Op', 'Mr_Decxo', 'Shotgun', '2021-07-24 17:09:10'),
(80, 23, 45, 'Bebu_Op', 'Divya_Mol', 'Shotgun', '2021-07-24 17:09:26'),
(81, 40, 23, 'Ap_AppappaN', 'Bebu_Op', 'Fists', '2021-07-24 17:09:42'),
(82, 23, 23, 'Bebu_Op', 'Bebu_Op', 'Explosion', '2021-07-24 17:10:17'),
(83, 40, 22, 'Ap_AppappaN', 'Mr_Decxo', 'Fists', '2021-07-24 17:11:12'),
(84, 34, 34, 'Bullet_Dathan', 'Bullet_Dathan', 'Explosion', '2021-07-24 17:42:33'),
(85, 34, 34, 'Bullet_Dathan', 'Bullet_Dathan', 'Explosion', '2021-07-24 17:42:46'),
(86, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-24 18:00:35'),
(87, 21, 21, 'Daniel_Annan', 'Daniel_Annan', 'Explosion', '2021-07-24 18:05:45'),
(88, 25, 25, 'Wizz_Annann', 'Wizz_Annann', 'Explosion', '2021-07-24 19:45:24'),
(89, 39, 39, 'Jhonny_Kuttan', 'Jhonny_Kuttan', 'Explosion', '2021-07-25 03:53:59'),
(90, 39, 39, 'Jhonny_Kuttan', 'Jhonny_Kuttan', 'Explosion', '2021-07-25 03:54:25'),
(91, 38, 38, 'Bhavani_Op', 'Bhavani_Op', 'Explosion', '2021-07-25 04:05:37'),
(92, 41, 41, 'Gamergenix_yt', 'Gamergenix_yt', 'Explosion', '2021-07-25 07:35:37'),
(93, 30, 30, 'SALEO_OP', 'SALEO_OP', 'Explosion', '2021-07-25 09:25:53'),
(94, 35, 35, 'David_John', 'David_John', 'Explosion', '2021-07-25 09:49:32'),
(95, 53, 33, 'bhaskar_op', 'Rajan_Nair', 'Fists', '2021-07-25 09:57:21'),
(96, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-25 10:16:04'),
(97, 33, 33, 'Rajan_Nair', 'Rajan_Nair', 'Explosion', '2021-07-25 10:27:44'),
(98, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'MP5', '2021-07-25 11:21:34'),
(99, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-25 11:22:39'),
(100, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'M4', '2021-07-25 12:18:50'),
(101, 21, 42, 'Daniel_Annan', 'Sathan_xavier', 'M4', '2021-07-25 12:18:54'),
(102, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'Shotgun', '2021-07-25 12:19:35'),
(103, 27, 27, 'RK_GOD', 'RK_GOD', 'Explosion', '2021-07-25 12:21:42'),
(104, 27, 27, 'RK_GOD', 'RK_GOD', 'Explosion', '2021-07-25 12:24:16'),
(105, 34, 62, 'Bullet_Dathan', 'Eric_Kilmonger', 'M4', '2021-07-25 12:25:56'),
(106, 21, 32, 'Daniel_Annan', 'Bad_BoY', 'Deagle', '2021-07-25 12:27:25'),
(107, 21, 32, 'Daniel_Annan', 'Bad_BoY', 'MP5', '2021-07-25 12:31:30'),
(108, 21, 32, 'Daniel_Annan', 'Bad_BoY', 'MP5', '2021-07-25 12:31:39'),
(109, 40, 28, 'Ap_AppappaN', 'Jack_Sir', 'Shotgun', '2021-07-25 12:42:52'),
(110, 40, 40, 'Ap_AppappaN', 'Ap_AppappaN', 'Explosion', '2021-07-25 12:58:06'),
(111, 62, 62, 'Eric_Kilmonger', 'Eric_Kilmonger', 'Explosion', '2021-07-25 13:23:21'),
(112, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-25 13:26:49'),
(113, 40, 40, 'Ap_AppappaN', 'Ap_AppappaN', 'Explosion', '2021-07-25 13:27:15'),
(114, 21, 35, 'Daniel_Annan', 'David_John', 'MP5', '2021-07-25 14:25:38'),
(115, 41, 41, 'Gamergenix_yt', 'Gamergenix_yt', 'Explosion', '2021-07-25 14:42:18'),
(116, 41, 41, 'Gamergenix_yt', 'Gamergenix_yt', 'Explosion', '2021-07-25 15:23:24'),
(117, 37, 28, 'Revathy_Kutty', 'Jack_Sir', 'Bat', '2021-07-25 16:24:39'),
(118, 28, 28, 'Jack_Sir', 'Jack_Sir', 'Explosion', '2021-07-25 16:26:15'),
(119, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'Shotgun', '2021-07-25 16:27:56'),
(120, 37, 28, 'Revathy_Kutty', 'Jack_Sir', 'Shotgun', '2021-07-25 16:30:53'),
(121, 22, 38, 'Mr_Decxo', 'Bhavani_Op', 'Shotgun', '2021-07-25 16:30:58'),
(122, 22, 38, 'Mr_Decxo', 'Bhavani_Op', 'Shotgun', '2021-07-25 16:31:21'),
(123, 37, 38, 'Revathy_Kutty', 'Bhavani_Op', 'Shotgun', '2021-07-25 16:32:42'),
(124, 38, 38, 'Bhavani_Op', 'Bhavani_Op', 'Explosion', '2021-07-25 16:35:02'),
(125, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'M4', '2021-07-25 16:41:44'),
(126, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'M4', '2021-07-25 16:43:18'),
(127, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'M4', '2021-07-25 16:43:42'),
(128, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'M4', '2021-07-25 16:47:21'),
(129, 28, 28, 'Jack_Sir', 'Jack_Sir', 'Explosion', '2021-07-25 17:05:21'),
(130, 21, 41, 'Daniel_Annan', 'Gamergenix_yt', 'Deagle', '2021-07-25 17:16:54'),
(131, 63, 63, 'Wick_Sir', 'Wick_Sir', 'Explosion', '2021-07-25 17:23:02'),
(132, 41, 41, 'Gamergenix_yt', 'Gamergenix_yt', 'Explosion', '2021-07-25 17:32:47'),
(133, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'Deagle', '2021-07-25 20:25:50'),
(134, 23, 25, 'Bebu_Op', 'Wizz_Annann', 'Shotgun', '2021-07-25 21:00:45'),
(135, 23, 27, 'Bebu_Op', 'RK_GOD', 'Shotgun', '2021-07-25 21:02:06'),
(136, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'M4', '2021-07-25 21:03:34'),
(137, 23, 25, 'Bebu_Op', 'Wizz_Annann', 'Shotgun', '2021-07-25 21:03:39'),
(138, 22, 27, 'Mr_Decxo', 'RK_GOD', 'Shotgun', '2021-07-25 21:10:05'),
(139, 34, 35, 'Bullet_Dathan', 'David_John', 'M4', '2021-07-26 07:11:03'),
(140, 34, 46, 'Bullet_Dathan', 'Bilal_John', 'M4', '2021-07-26 08:08:31'),
(141, 34, 35, 'Bullet_Dathan', 'David_John', 'M4', '2021-07-26 08:08:38'),
(142, 22, 56, 'Mr_Decxo', 'Mutta_Biju', 'Shotgun', '2021-07-26 08:51:31'),
(143, 34, 35, 'Bullet_Dathan', 'David_John', 'M4', '2021-07-26 08:52:07'),
(144, 56, 22, 'Mutta_Biju', 'Mr_Decxo', 'M4', '2021-07-26 08:57:57'),
(145, 34, 22, 'Bullet_Dathan', 'Mr_Decxo', 'M4', '2021-07-26 09:02:14'),
(146, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'M4', '2021-07-26 09:07:08'),
(147, 34, 34, 'Bullet_Dathan', 'Bullet_Dathan', 'Explosion', '2021-07-26 09:14:17'),
(148, 56, 21, 'Mutta_Biju', 'Daniel_Annan', 'M4', '2021-07-26 09:23:15'),
(149, 21, 56, 'Daniel_Annan', 'Mutta_Biju', 'Deagle', '2021-07-26 09:23:42'),
(150, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'Nightstick', '2021-07-26 09:30:14'),
(151, 34, 34, 'Bullet_Dathan', 'Bullet_Dathan', 'Explosion', '2021-07-26 09:30:32'),
(152, 35, 35, 'David_John', 'David_John', 'Explosion', '2021-07-26 09:47:12'),
(153, 35, 35, 'David_John', 'David_John', 'Explosion', '2021-07-26 09:56:25'),
(154, 35, 35, 'David_John', 'David_John', 'Explosion', '2021-07-26 09:57:38'),
(155, 56, 79, 'Mutta_Biju', 'Clouder_ff', 'M4', '2021-07-26 10:44:39'),
(156, 56, 80, 'Mutta_Biju', 'Tva_BABU', 'M4', '2021-07-26 10:45:26'),
(157, 82, 82, 'German_Kannapi', 'German_Kannapi', 'Explosion', '2021-07-26 10:48:45'),
(158, 82, 82, 'German_Kannapi', 'German_Kannapi', 'Explosion', '2021-07-26 10:49:45'),
(159, 82, 82, 'German_Kannapi', 'German_Kannapi', 'Explosion', '2021-07-26 10:49:58'),
(160, 68, 82, 'Don_David', 'German_Kannapi', 'Shotgun', '2021-07-26 10:51:05'),
(161, 82, 82, 'German_Kannapi', 'German_Kannapi', 'Explosion', '2021-07-26 10:51:31'),
(162, 68, 82, 'Don_David', 'German_Kannapi', 'M4', '2021-07-26 10:53:26'),
(163, 82, 82, 'German_Kannapi', 'German_Kannapi', 'Explosion', '2021-07-26 10:53:45'),
(164, 82, 79, 'German_Kannapi', 'Clouder_ff', 'Fists', '2021-07-26 11:01:52'),
(165, 76, 76, 'Tva_Joker', 'Tva_Joker', 'Explosion', '2021-07-26 11:24:18'),
(166, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-26 14:21:50'),
(167, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-07-26 16:31:34'),
(168, 80, 80, 'Tva_BABU', 'Tva_BABU', 'Explosion', '2021-07-26 17:05:06'),
(169, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-07-26 17:23:39'),
(170, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-07-26 17:23:54'),
(171, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'Deagle', '2021-07-26 17:38:01'),
(172, 49, 22, 'Kerp_2', 'Mr_Decxo', 'Fists', '2021-07-26 17:38:17'),
(173, 31, 80, 'DUDE_', 'Tva_BABU', 'Shotgun', '2021-07-26 17:48:51'),
(174, 80, 80, 'Tva_BABU', 'Tva_BABU', 'Explosion', '2021-07-26 17:49:06'),
(175, 98, 21, 'Sarak_Annan', 'Daniel_Annan', 'Shotgun', '2021-07-26 18:06:21'),
(176, 80, 21, 'Tva_BABU', 'Daniel_Annan', 'Fists', '2021-07-26 18:06:43'),
(177, 34, 34, 'Bullet_Dathan', 'Bullet_Dathan', 'Explosion', '2021-07-26 18:14:08'),
(178, 34, 34, 'Bullet_Dathan', 'Bullet_Dathan', 'Explosion', '2021-07-26 18:14:25'),
(179, 76, 76, 'Tva_Joker', 'Tva_Joker', 'Explosion', '2021-07-26 18:20:52'),
(180, 76, 76, 'Tva_Joker', 'Tva_Joker', 'Explosion', '2021-07-26 18:22:01'),
(181, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'M4', '2021-07-26 18:25:13'),
(182, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'M4', '2021-07-26 18:25:27'),
(183, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'M4', '2021-07-26 18:29:32'),
(184, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'M4', '2021-07-26 18:29:47'),
(185, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-07-26 18:38:10'),
(186, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-07-26 18:38:25'),
(187, 22, 31, 'Mr_Decxo', 'DUDE_', 'Shotgun', '2021-07-26 20:33:06'),
(188, 104, 49, 'Saleo_', 'KERP_BOT', 'Shotgun', '2021-07-26 20:33:29'),
(189, 40, 104, 'Ap_AppappaN', 'Saleo_', 'Shotgun', '2021-07-26 20:33:34'),
(190, 40, 31, 'Ap_AppappaN', 'DUDE_', 'Shotgun', '2021-07-26 20:33:45'),
(191, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Shotgun', '2021-07-26 20:33:53'),
(192, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Shotgun', '2021-07-26 20:34:24'),
(193, 40, 27, 'Ap_AppappaN', 'RK_GOD', 'Shotgun', '2021-07-26 20:34:32'),
(194, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-26 20:34:38'),
(195, 40, 49, 'Ap_AppappaN', 'KERP_BOT', 'Colt 45', '2021-07-26 20:34:55'),
(196, 40, 31, 'Ap_AppappaN', 'DUDE_', 'Colt 45', '2021-07-26 20:35:16'),
(197, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-07-26 20:36:12'),
(198, 22, 31, 'Mr_Decxo', 'DUDE_', 'Bat', '2021-07-26 20:43:09'),
(199, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-07-26 20:43:25'),
(200, 31, 19, 'DUDE_', 'Shaji_Pappan', 'Fists', '2021-07-26 20:52:06'),
(201, 31, 19, 'DUDE_', 'Shaji_Pappan', 'Fists', '2021-07-26 20:53:42'),
(202, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-26 20:53:57'),
(203, 25, 31, 'Wizz_Annann', 'DUDE_', 'M4', '2021-07-26 21:00:57'),
(204, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Fists', '2021-07-26 21:16:20'),
(205, 67, 67, 'Saathan_xavier', 'Saathan_xavier', 'Explosion', '2021-07-26 21:25:42'),
(206, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Helicopter Blades', '2021-07-26 21:26:28'),
(207, 25, 19, 'Wizz_Annann', 'Shaji_Pappan', 'M4', '2021-07-26 21:52:04'),
(208, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Shotgun', '2021-07-26 21:52:22'),
(209, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Shotgun', '2021-07-26 21:52:40'),
(210, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Shotgun', '2021-07-26 21:56:30'),
(211, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Shotgun', '2021-07-26 21:57:00'),
(212, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Shotgun', '2021-07-26 21:59:06'),
(213, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Fists', '2021-07-26 21:59:26'),
(214, 106, 106, 'Johny_Synte', 'Johny_Synte', 'Explosion', '2021-07-27 02:53:24'),
(215, 38, 38, 'Bhavani_Op', 'Bhavani_Op', 'Explosion', '2021-07-27 03:53:43'),
(216, 38, 38, 'Bhavani_Op', 'Bhavani_Op', 'Explosion', '2021-07-27 03:53:57'),
(217, 69, 69, 'Chekuthan_Lasar', 'Chekuthan_Lasar', 'Explosion', '2021-07-27 05:10:13'),
(218, 69, 69, 'Chekuthan_Lasar', 'Chekuthan_Lasar', 'Explosion', '2021-07-27 05:10:28'),
(219, 69, 69, 'Chekuthan_Lasar', 'Chekuthan_Lasar', 'Explosion', '2021-07-27 05:12:10'),
(220, 69, 69, 'Chekuthan_Lasar', 'Chekuthan_Lasar', 'Explosion', '2021-07-27 06:12:50'),
(221, 83, 83, 'Star_Load', 'Star_Load', 'Explosion', '2021-07-27 07:28:23'),
(222, 83, 83, 'Star_Load', 'Star_Load', 'Explosion', '2021-07-27 07:28:36'),
(223, 66, 66, 'Mr_Alpha', 'Mr_Alpha', 'Explosion', '2021-07-27 07:40:39'),
(224, 21, 20, 'Daniel_Annan', 'Dude_Op', 'Sniper', '2021-07-27 08:06:05'),
(225, 21, 28, 'Daniel_Annan', 'Jack_Sir', 'Sniper', '2021-07-27 08:49:21'),
(226, 21, 28, 'Daniel_Annan', 'Jack_Sir', 'Sniper', '2021-07-27 08:49:44'),
(227, 21, 49, 'Daniel_Annan', 'KERP_BOT', 'Sniper', '2021-07-27 08:50:11'),
(228, 21, 49, 'Daniel_Annan', 'KERP_BOT', 'Sniper', '2021-07-27 08:51:27'),
(229, 21, 49, 'Daniel_Annan', 'KERP_BOT', 'Sniper', '2021-07-27 08:52:33'),
(230, 49, 21, 'KERP_BOT', 'Daniel_Annan', 'Sniper', '2021-07-27 08:52:54'),
(231, 49, 21, 'KERP_BOT', 'Daniel_Annan', 'Sniper', '2021-07-27 08:53:57'),
(232, 49, 21, 'KERP_BOT', 'Daniel_Annan', 'Sniper', '2021-07-27 08:54:12'),
(233, 49, 21, 'KERP_BOT', 'Daniel_Annan', 'Sniper', '2021-07-27 08:54:22'),
(234, 49, 28, 'KERP_BOT', 'Jack_Sir', 'Sniper', '2021-07-27 08:54:26'),
(235, 49, 22, 'KERP_BOT', 'Mr_Decxo', 'Sniper', '2021-07-27 08:55:18'),
(236, 21, 28, 'Daniel_Annan', 'Jack_Sir', 'Sniper', '2021-07-27 08:55:53'),
(237, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'Sniper', '2021-07-27 08:56:09'),
(238, 49, 28, 'KERP_BOT', 'Jack_Sir', 'Sniper', '2021-07-27 08:56:19'),
(239, 49, 28, 'KERP_BOT', 'Jack_Sir', 'Sniper', '2021-07-27 08:56:36'),
(240, 49, 21, 'KERP_BOT', 'Daniel_Annan', 'Sniper', '2021-07-27 08:56:46'),
(241, 21, 28, 'Daniel_Annan', 'Jack_Sir', 'Sniper', '2021-07-27 08:57:26'),
(242, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'Mac-10', '2021-07-27 08:58:11'),
(243, 21, 49, 'Daniel_Annan', 'KERP_BOT', 'Pistol whip', '2021-07-27 08:59:23'),
(244, 49, 21, 'KERP_BOT', 'Daniel_Annan', 'Fists', '2021-07-27 08:59:37'),
(245, 49, 21, 'KERP_BOT', 'Daniel_Annan', 'Fists', '2021-07-27 09:00:27'),
(246, 21, 49, 'Daniel_Annan', 'KERP_BOT', 'M4', '2021-07-27 09:01:03'),
(247, 21, 49, 'Daniel_Annan', 'KERP_BOT', 'Deagle', '2021-07-27 09:01:33'),
(248, 49, 21, 'KERP_BOT', 'Daniel_Annan', 'Fists', '2021-07-27 09:02:00'),
(249, 21, 28, 'Daniel_Annan', 'Jack_Sir', 'Sniper', '2021-07-27 09:03:01'),
(250, 27, 22, 'RK_GOD', 'Mr_Decxo', 'Vehicle', '2021-07-27 09:32:58'),
(251, 22, 37, 'Mr_Decxo', 'Revathy_Kutty', 'Sniper', '2021-07-27 09:38:00'),
(252, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-27 09:39:43'),
(253, 68, 68, 'Don_David', 'Don_David', 'Explosion', '2021-07-27 09:53:39'),
(254, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'Mac-10', '2021-07-27 10:31:15'),
(255, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'M4', '2021-07-27 10:31:29'),
(256, 81, 98, 'Tva_Saaho', 'Sarak_Annan', 'Deagle', '2021-07-27 10:34:50'),
(257, 81, 98, 'Tva_Saaho', 'Sarak_Annan', 'Combat shotgun', '2021-07-27 10:35:22'),
(258, 81, 98, 'Tva_Saaho', 'Sarak_Annan', 'Combat shotgun', '2021-07-27 10:35:39'),
(259, 98, 81, 'Sarak_Annan', 'Tva_Saaho', 'M4', '2021-07-27 10:36:29'),
(260, 98, 76, 'Sarak_Annan', 'Tva_Joker', 'M4', '2021-07-27 10:38:03'),
(261, 76, 98, 'Tva_Joker', 'Sarak_Annan', 'Combat shotgun', '2021-07-27 10:39:58'),
(262, 81, 33, 'Tva_Saaho', 'Rajan_Nair', 'Deagle', '2021-07-27 11:08:30'),
(263, 23, 23, 'Bebu_Op', 'Bebu_Op', 'Explosion', '2021-07-27 11:12:47'),
(264, 80, 40, 'Tva_Babu', 'Ap_AppappaN', 'Shotgun', '2021-07-27 11:28:23'),
(265, 98, 37, 'Sarak_Annan', 'Revathy_Kutty', 'M4', '2021-07-27 11:28:26'),
(266, 22, 101, 'Mr_Decxo', 'Drago_Op', 'Combat shotgun', '2021-07-27 11:28:55'),
(267, 22, 101, 'Mr_Decxo', 'Drago_Op', 'Deagle', '2021-07-27 11:29:20'),
(268, 23, 23, 'Bebu_Op', 'Bebu_Op', 'Explosion', '2021-07-27 11:33:52'),
(269, 23, 28, 'Bebu_Op', 'Jack_Sir', 'Shotgun', '2021-07-27 12:05:47'),
(270, 23, 28, 'Bebu_Op', 'Jack_Sir', 'Shotgun', '2021-07-27 12:10:35'),
(271, 28, 46, 'Jack_Sir', 'Bilal_John', 'Fists', '2021-07-27 12:14:21'),
(272, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'Deagle', '2021-07-27 12:27:54'),
(273, 76, 37, 'Tva_Joker', 'Revathy_Kutty', 'M4', '2021-07-27 12:30:46'),
(274, 38, 38, 'Bhavani_Op', 'Bhavani_Op', 'Explosion', '2021-07-27 12:32:56'),
(275, 38, 38, 'Bhavani_Op', 'Bhavani_Op', 'Explosion', '2021-07-27 12:33:11'),
(276, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'Combat shotgun', '2021-07-27 12:34:30'),
(277, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'Sniper', '2021-07-27 12:34:55'),
(278, 22, 98, 'Mr_Decxo', 'Sarak_Annan', 'Mac-10', '2021-07-27 12:43:34'),
(279, 49, 22, 'KERP_BOT', 'Mr_Decxo', 'Sniper', '2021-07-27 12:43:59'),
(280, 49, 28, 'KERP_BOT', 'Jack_Sir', 'Sniper', '2021-07-27 12:44:04'),
(281, 49, 76, 'KERP_BOT', 'Tva_Joker', 'Sniper', '2021-07-27 12:45:59'),
(282, 25, 101, 'Wizz_Annann', 'Drago_Op', 'Fists', '2021-07-27 12:46:14'),
(283, 49, 26, 'KERP_BOT', 'KERP_OFFICIAL', 'Sniper', '2021-07-27 12:46:31'),
(284, 21, 98, 'Daniel_Annan', 'Sarak_Annan', 'Sniper', '2021-07-27 12:51:31'),
(285, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-07-27 13:06:02'),
(286, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-07-27 13:06:16'),
(287, 21, 80, 'Daniel_Annan', 'Tva_Babu', 'Sniper', '2021-07-27 13:11:15'),
(288, 80, 21, 'Tva_Babu', 'Daniel_Annan', 'Shotgun', '2021-07-27 13:13:10'),
(289, 80, 21, 'Tva_Babu', 'Daniel_Annan', 'Shotgun', '2021-07-27 13:13:37'),
(290, 28, 31, 'Jack_Sir', 'DUDE_', 'Deagle', '2021-07-27 13:17:09'),
(291, 31, 37, 'DUDE_', 'Revathy_Kutty', 'Combat shotgun', '2021-07-27 13:24:56'),
(292, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-27 13:25:49'),
(293, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-27 13:26:33'),
(294, 25, 80, 'Wizz_Annann', 'Tva_Babu', 'Vehicle', '2021-07-27 13:33:34'),
(295, 63, 63, 'Wick_Sir', 'Wick_Sir', 'Explosion', '2021-07-27 13:33:43'),
(296, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-27 13:37:06'),
(297, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-07-27 13:38:17'),
(298, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-07-27 13:38:31'),
(299, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-27 13:45:28'),
(300, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-27 13:54:10'),
(301, 114, 114, 'Moll_Sana', 'Moll_Sana', 'Explosion', '2021-07-27 14:00:05'),
(302, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-27 14:04:18'),
(303, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-27 14:04:32'),
(304, 22, 37, 'Mr_Decxo', 'Revathy_Kutty', 'Deagle', '2021-07-27 14:17:32'),
(305, 40, 37, 'Ap_AppappaN', 'Revathy_Kutty', 'Shotgun', '2021-07-27 14:18:52'),
(306, 40, 21, 'Ap_AppappaN', 'Daniel_Annan', 'Shotgun', '2021-07-27 14:26:48'),
(307, 56, 40, 'Mutta_Biju', 'Ap_AppappaN', 'M4', '2021-07-27 14:26:49'),
(308, 56, 22, 'Mutta_Biju', 'Mr_Decxo', 'M4', '2021-07-27 14:26:54'),
(309, 56, 22, 'Mutta_Biju', 'Mr_Decxo', 'M4', '2021-07-27 14:27:45'),
(310, 19, 21, 'Shaji_Pappan', 'Daniel_Annan', 'Shotgun', '2021-07-27 14:29:44'),
(311, 56, 22, 'Mutta_Biju', 'Mr_Decxo', 'M4', '2021-07-27 14:31:40'),
(312, 19, 56, 'Shaji_Pappan', 'Mutta_Biju', 'Shotgun', '2021-07-27 14:32:18'),
(313, 21, 19, 'Daniel_Annan', 'Shaji_Pappan', 'M4', '2021-07-27 14:38:04'),
(314, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'M4', '2021-07-27 14:38:22'),
(315, 63, 63, 'Wick_Sir', 'Wick_Sir', 'Explosion', '2021-07-27 14:49:04'),
(316, 63, 63, 'Wick_Sir', 'Wick_Sir', 'Explosion', '2021-07-27 14:49:19'),
(317, 40, 21, 'Ap_AppappaN', 'Daniel_Annan', 'Combat shotgun', '2021-07-27 14:58:04'),
(318, 56, 19, 'Mutta_Biju', 'Shaji_Pappan', 'M4', '2021-07-27 15:04:42'),
(319, 34, 34, 'Bullet_Dathan', 'Bullet_Dathan', 'Explosion', '2021-07-27 15:29:23'),
(320, 63, 63, 'Wick_Sir', 'Wick_Sir', 'Explosion', '2021-07-27 15:59:08'),
(321, 68, 68, 'Don_David', 'Don_David', 'Explosion', '2021-07-27 16:28:25'),
(322, 98, 98, 'Sarak_Annan', 'Sarak_Annan', 'Explosion', '2021-07-27 16:28:56'),
(323, 98, 98, 'Sarak_Annan', 'Sarak_Annan', 'Explosion', '2021-07-27 16:29:15'),
(324, 68, 68, 'Don_David', 'Don_David', 'Explosion', '2021-07-27 16:35:45'),
(325, 38, 38, 'Bhavani_Op', 'Bhavani_Op', 'Explosion', '2021-07-27 16:51:44'),
(326, 38, 38, 'Bhavani_Op', 'Bhavani_Op', 'Explosion', '2021-07-27 16:52:01'),
(327, 92, 92, 'Urukk_Satheesh', 'Urukk_Satheesh', 'Explosion', '2021-07-27 17:41:40'),
(328, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Shotgun', '2021-07-27 18:19:44'),
(329, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Shotgun', '2021-07-27 18:22:13'),
(330, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Combat shotgun', '2021-07-27 18:28:20'),
(331, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Deagle', '2021-07-27 18:29:02'),
(332, 22, 107, 'Mr_Decxo', 'Mr_Raju', 'Sniper', '2021-07-27 18:33:01'),
(333, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'Sniper', '2021-07-27 18:33:18'),
(334, 22, 107, 'Mr_Decxo', 'Mr_Raju', 'Sniper', '2021-07-27 18:33:18'),
(335, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'Deagle', '2021-07-27 18:33:46'),
(336, 21, 41, 'Daniel_Annan', 'su_vasu', 'Deagle', '2021-07-27 18:34:15'),
(337, 41, 41, 'su_vasu', 'su_vasu', 'Explosion', '2021-07-27 18:35:23'),
(338, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Shotgun', '2021-07-27 18:37:30'),
(339, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Shotgun', '2021-07-27 18:37:42'),
(340, 40, 27, 'Ap_AppappaN', 'angel_l', 'Combat shotgun', '2021-07-27 18:44:44'),
(341, 40, 22, 'Ap_AppappaN', 'Mr_Decxo', 'Combat shotgun', '2021-07-27 18:45:17'),
(342, 40, 27, 'Ap_AppappaN', 'angel_l', 'Combat shotgun', '2021-07-27 18:46:10'),
(343, 40, 33, 'Ap_AppappaN', 'Rajan_Nair', 'Deagle', '2021-07-27 18:46:59'),
(344, 40, 22, 'Ap_AppappaN', 'Mr_Decxo', 'Deagle', '2021-07-27 18:47:15'),
(345, 40, 27, 'Ap_AppappaN', 'angel_l', 'Deagle', '2021-07-27 18:47:19'),
(346, 40, 27, 'Ap_AppappaN', 'angel_l', 'Deagle', '2021-07-27 18:47:32'),
(347, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Combat shotgun', '2021-07-27 18:48:09'),
(348, 22, 33, 'Mr_Decxo', 'Rajan_Nair', 'Fists', '2021-07-27 18:48:37'),
(349, 33, 22, 'Rajan_Nair', 'Mr_Decxo', 'Fists', '2021-07-27 18:48:59'),
(350, 21, 37, 'Daniel_Annan', 'Revathy_Kutty', 'M4', '2021-07-27 19:09:16'),
(351, 22, 21, 'Mr_Decxo', 'Daniel_Annan', 'Sniper', '2021-07-27 19:14:45'),
(352, 21, 19, 'Daniel_Annan', 'Shaji_Pappan', 'Combat shotgun', '2021-07-27 19:15:39'),
(353, 19, 21, 'Shaji_Pappan', 'Daniel_Annan', 'Combat shotgun', '2021-07-27 19:16:35'),
(354, 19, 25, 'Shaji_Pappan', 'Wizz_Annann', 'Combat shotgun', '2021-07-27 19:50:16'),
(355, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'M4', '2021-07-27 19:51:02'),
(356, 22, 34, 'Mr_Decxo', 'Bullet_Dathan', 'M4', '2021-07-27 19:51:10'),
(357, 22, 34, 'Mr_Decxo', 'Bullet_Dathan', 'M4', '2021-07-27 19:51:26'),
(358, 19, 22, 'Shaji_Pappan', 'Mr_Decxo', 'Sniper', '2021-07-27 19:52:04'),
(359, 34, 22, 'Bullet_Dathan', 'Mr_Decxo', 'Vehicle', '2021-07-27 19:54:50'),
(360, 92, 92, 'Urukk_Satheesh', 'Urukk_Satheesh', 'Explosion', '2021-07-27 20:04:03'),
(361, 31, 27, 'DUDE_', 'angel_l', 'Combat shotgun', '2021-07-27 20:09:24'),
(362, 68, 68, 'Don_David', 'Don_David', 'Explosion', '2021-07-27 21:06:16'),
(363, 80, 37, 'Tva_Babu', 'Revathy_Kutty', 'Shotgun', '2021-07-28 04:50:12'),
(364, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-28 04:50:45'),
(365, 80, 37, 'Tva_Babu', 'Revathy_Kutty', 'Shotgun', '2021-07-28 04:55:18'),
(366, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-28 04:56:11'),
(367, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-07-28 05:07:12'),
(368, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-28 05:07:37'),
(369, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-28 05:07:52'),
(370, 38, 117, 'Bhavani_Op', 'Simon_Pokkiri', 'Sniper', '2021-07-28 06:25:27'),
(371, 113, 121, 'El_professor', 'Broso_Op', 'M4', '2021-07-28 06:47:16'),
(372, 117, 117, 'Simon_Pokkiri', 'Simon_Pokkiri', 'Explosion', '2021-07-28 07:10:44'),
(373, 117, 117, 'Simon_Pokkiri', 'Simon_Pokkiri', 'Explosion', '2021-07-28 07:10:59'),
(374, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'Mac-10', '2021-07-28 07:14:29'),
(375, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Shotgun', '2021-07-28 07:14:37'),
(376, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'AK-47', '2021-07-28 07:16:06'),
(377, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'M4', '2021-07-28 07:22:40'),
(378, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'M4', '2021-07-28 07:22:58'),
(379, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'Deagle', '2021-07-28 07:23:47'),
(380, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'M4', '2021-07-28 07:24:36'),
(381, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'M4', '2021-07-28 07:27:01'),
(382, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'M4', '2021-07-28 07:27:32'),
(383, 66, 66, 'Mr_Alpha', 'Mr_Alpha', 'Explosion', '2021-07-28 07:37:36'),
(384, 22, 81, 'Mr_Decxo', 'Tva_Saaho', 'Deagle', '2021-07-28 08:08:34'),
(385, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-28 08:19:55'),
(386, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-28 08:20:11'),
(387, 28, 21, 'Jack_Sir', 'Daniel_Annan', 'Combat shotgun', '2021-07-28 08:33:18'),
(388, 21, 28, 'Daniel_Annan', 'Jack_Sir', 'Combat shotgun', '2021-07-28 08:33:34'),
(389, 21, 28, 'Daniel_Annan', 'Jack_Sir', 'Combat shotgun', '2021-07-28 08:33:54'),
(390, 21, 28, 'Daniel_Annan', 'Jack_Sir', 'Sniper', '2021-07-28 08:35:48'),
(391, 21, 28, 'Daniel_Annan', 'Jack_Sir', 'Sniper', '2021-07-28 08:36:17'),
(392, 80, 21, 'Tva_Babu', 'Daniel_Annan', 'Combat shotgun', '2021-07-28 08:40:25'),
(393, 80, 37, 'Tva_Babu', 'Revathy_Kutty', 'Combat shotgun', '2021-07-28 08:42:23'),
(394, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-28 08:43:18'),
(395, 80, 21, 'Tva_Babu', 'Daniel_Annan', 'Sniper', '2021-07-28 08:43:41'),
(396, 80, 28, 'Tva_Babu', 'Jack_Sir', 'Combat shotgun', '2021-07-28 08:50:40'),
(397, 21, 80, 'Daniel_Annan', 'Tva_Babu', 'M4', '2021-07-28 08:51:55'),
(398, 80, 21, 'Tva_Babu', 'Daniel_Annan', 'Combat shotgun', '2021-07-28 08:52:04'),
(399, 28, 80, 'Jack_Sir', 'Tva_Babu', 'Deagle', '2021-07-28 08:52:20'),
(400, 28, 80, 'Jack_Sir', 'Tva_Babu', 'Deagle', '2021-07-28 08:55:13'),
(401, 80, 28, 'Tva_Babu', 'Jack_Sir', 'Combat shotgun', '2021-07-28 08:55:30'),
(402, 80, 28, 'Tva_Babu', 'Jack_Sir', 'Combat shotgun', '2021-07-28 08:55:52'),
(403, 41, 41, 'su_vasu', 'su_vasu', 'Explosion', '2021-07-28 10:19:58'),
(404, 98, 98, 'Sarak_Annan', 'Sarak_Annan', 'Explosion', '2021-07-28 11:49:39'),
(405, 98, 98, 'Sarak_Annan', 'Sarak_Annan', 'Explosion', '2021-07-28 12:02:31'),
(406, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-28 13:05:54'),
(407, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-28 13:06:10'),
(408, 129, 37, 'athulya_chandran', 'Revathy_Kutty', 'Mac-10', '2021-07-28 14:06:11'),
(409, 129, 37, 'athulya_chandran', 'Revathy_Kutty', 'Mac-10', '2021-07-28 14:06:21'),
(410, 38, 38, 'Bhavani_Op', 'Bhavani_Op', 'Explosion', '2021-07-28 14:47:26'),
(411, 38, 38, 'Bhavani_Op', 'Bhavani_Op', 'Explosion', '2021-07-28 14:47:40'),
(412, 21, 134, 'Daniel_Annan', 'AMMU_', 'M4', '2021-07-28 16:44:43'),
(413, 67, 21, 'Saathan_xavier', 'Daniel_Annan', 'Deagle', '2021-07-28 16:46:44'),
(414, 25, 67, 'Wizz_Annann', 'Saathan_xavier', 'M4', '2021-07-28 16:48:15'),
(415, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'M4', '2021-07-28 16:48:23'),
(416, 98, 25, 'Sarak_Annan', 'Wizz_Annann', 'Combat shotgun', '2021-07-28 17:00:04'),
(417, 21, 98, 'Daniel_Annan', 'Sarak_Annan', 'Combat shotgun', '2021-07-28 17:00:27'),
(418, 21, 103, 'Daniel_Annan', 'Shahaluu_Mohd', 'Mac-10', '2021-07-28 17:00:38'),
(419, 121, 121, 'Broso_Op', 'Broso_Op', 'Explosion', '2021-07-28 17:02:24'),
(420, 76, 21, 'Tva_Joker', 'Daniel_Annan', 'M4', '2021-07-28 17:02:59'),
(421, 98, 21, 'Sarak_Annan', 'Daniel_Annan', 'Combat shotgun', '2021-07-28 17:04:02'),
(422, 113, 121, 'El_professor', 'Broso_Op', 'Pistol whip', '2021-07-28 17:21:52'),
(423, 121, 121, 'Broso_Op', 'Broso_Op', 'Explosion', '2021-07-28 17:23:15'),
(424, 82, 121, 'German_Kannapi', 'Broso_Op', 'Fists', '2021-07-28 17:30:15'),
(425, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'M4', '2021-07-28 17:36:22'),
(426, 21, 67, 'Daniel_Annan', 'Saathan_xavier', 'M4', '2021-07-28 17:36:30'),
(427, 104, 21, 'Saleo_', 'Daniel_Annan', 'Shotgun', '2021-07-28 17:36:37'),
(428, 25, 104, 'Wizz_Annann', 'Saleo_', 'M4', '2021-07-28 17:36:40'),
(429, 121, 82, 'Broso_Op', 'German_Kannapi', 'M4', '2021-07-28 17:37:44'),
(430, 121, 82, 'Broso_Op', 'German_Kannapi', 'M4', '2021-07-28 17:37:50'),
(431, 82, 121, 'German_Kannapi', 'Broso_Op', 'Shotgun', '2021-07-28 17:41:14'),
(432, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-07-28 17:41:36'),
(433, 121, 121, 'Broso_Op', 'Broso_Op', 'Explosion', '2021-07-28 17:41:52'),
(434, 82, 121, 'German_Kannapi', 'Broso_Op', 'Fists', '2021-07-28 17:46:29'),
(435, 98, 37, 'Sarak_Annan', 'Revathy_Kutty', 'M4', '2021-07-28 18:06:05'),
(436, 49, 98, 'Kerp_Bot', 'Sarak_Annan', 'M4', '2021-07-28 18:25:55'),
(437, 49, 76, 'Kerp_Bot', 'Tva_Joker', 'M4', '2021-07-28 18:26:13'),
(438, 49, 103, 'Kerp_Bot', 'TVA_Shahahluu', 'M4', '2021-07-28 18:26:23'),
(439, 49, 103, 'Kerp_Bot', 'TVA_Shahahluu', 'M4', '2021-07-28 18:27:43'),
(440, 49, 98, 'Kerp_Bot', 'Sarak_Annan', 'M4', '2021-07-28 18:27:59'),
(441, 22, 104, 'Mr_Decxo', 'Saleo_', 'Combat shotgun', '2021-07-28 18:28:31'),
(442, 22, 137, 'Mr_Decxo', 'Mayavi_', 'Combat shotgun', '2021-07-28 18:28:36'),
(443, 22, 104, 'Mr_Decxo', 'Saleo_', 'Combat shotgun', '2021-07-28 18:28:40'),
(444, 22, 137, 'Mr_Decxo', 'Mayavi_', 'M4', '2021-07-28 18:29:12'),
(445, 22, 37, 'Mr_Decxo', 'Revathy_Kutty', 'Combat shotgun', '2021-07-28 18:34:20'),
(446, 49, 22, 'Kerp_Bot', 'Mr_Decxo', 'M4', '2021-07-28 18:34:37'),
(447, 98, 22, 'Sarak_Annan', 'Mr_Decxo', 'M4', '2021-07-28 18:43:39'),
(448, 53, 53, 'bhaskar_op', 'bhaskar_op', 'Explosion', '2021-07-28 18:45:03'),
(449, 21, 40, 'Daniel_Annan', 'Ap_AppappaN', 'Fists', '2021-07-28 20:17:07'),
(450, 40, 40, 'Ap_AppappaN', 'Ap_AppappaN', 'Explosion', '2021-07-28 20:17:49'),
(451, 40, 40, 'Ap_AppappaN', 'Ap_AppappaN', 'Explosion', '2021-07-28 20:18:03'),
(452, 40, 21, 'Ap_AppappaN', 'Daniel_Annan', 'Fists', '2021-07-28 20:20:35'),
(453, 139, 139, 'Levi_Ackerman', 'Levi_Ackerman', 'Explosion', '2021-07-28 20:24:25'),
(454, 139, 139, 'Levi_Ackerman', 'Levi_Ackerman', 'Explosion', '2021-07-28 20:24:39'),
(455, 138, 67, 'Susan_', 'KATTALAN_PORINJU', 'Sniper', '2021-07-28 21:23:37'),
(456, 138, 67, 'Susan_', 'KATTALAN_PORINJU', 'Combat shotgun', '2021-07-28 21:24:51'),
(457, 138, 67, 'Susan_', 'KATTALAN_PORINJU', 'Sniper', '2021-07-28 21:26:10'),
(458, 67, 138, 'KATTALAN_PORINJU', 'Susan_', 'Deagle', '2021-07-28 21:26:25'),
(459, 138, 67, 'Susan_', 'KATTALAN_PORINJU', 'Sniper', '2021-07-28 21:27:39'),
(460, 67, 33, 'KATTALAN_PORINJU', 'Rajan_Nair', 'Deagle', '2021-07-28 21:29:02'),
(461, 138, 67, 'Susan_', 'KATTALAN_PORINJU', 'Sniper', '2021-07-28 21:29:57'),
(462, 67, 138, 'KATTALAN_PORINJU', 'Susan_', 'Mac-10', '2021-07-28 21:30:46'),
(463, 67, 33, 'KATTALAN_PORINJU', 'Rajan_Nair', 'Deagle', '2021-07-28 21:31:22'),
(464, 138, 67, 'Susan_', 'KATTALAN_PORINJU', 'Sniper', '2021-07-28 21:31:37'),
(465, 67, 33, 'KATTALAN_PORINJU', 'Rajan_Nair', 'Combat shotgun', '2021-07-28 21:32:31'),
(466, 138, 67, 'Susan_', 'KATTALAN_PORINJU', 'Sniper', '2021-07-28 21:32:42'),
(467, 67, 33, 'KATTALAN_PORINJU', 'Rajan_Nair', 'Combat shotgun', '2021-07-28 21:33:14'),
(468, 67, 33, 'KATTALAN_PORINJU', 'Rajan_Nair', 'Combat shotgun', '2021-07-28 21:33:38'),
(469, 33, 67, 'Rajan_Nair', 'KATTALAN_PORINJU', 'Combat shotgun', '2021-07-28 21:34:36'),
(470, 67, 33, 'KATTALAN_PORINJU', 'Rajan_Nair', 'Sniper', '2021-07-28 21:37:36'),
(471, 33, 67, 'Rajan_Nair', 'KATTALAN_PORINJU', 'M4', '2021-07-28 21:40:37'),
(472, 67, 33, 'KATTALAN_PORINJU', 'Rajan_Nair', 'Combat shotgun', '2021-07-28 21:42:06'),
(473, 33, 67, 'Rajan_Nair', 'KATTALAN_PORINJU', 'Combat shotgun', '2021-07-28 21:42:20'),
(474, 33, 67, 'Rajan_Nair', 'KATTALAN_PORINJU', 'Combat shotgun', '2021-07-28 21:42:57'),
(475, 67, 33, 'KATTALAN_PORINJU', 'Rajan_Nair', 'Combat shotgun', '2021-07-28 21:44:34'),
(476, 40, 67, 'Ap_AppappaN', 'KATTALAN_PORINJU', 'Vehicle', '2021-07-28 21:48:07'),
(477, 67, 67, 'KATTALAN_PORINJU', 'KATTALAN_PORINJU', 'Explosion', '2021-07-29 01:16:33'),
(478, 117, 117, 'Simon_Pokkiri', 'Simon_Pokkiri', 'Explosion', '2021-07-29 04:51:05'),
(479, 117, 117, 'Simon_Pokkiri', 'Simon_Pokkiri', 'Explosion', '2021-07-29 04:51:23'),
(480, 141, 141, 'Mr_Kannapi', 'Mr_Kannapi', 'Explosion', '2021-07-29 04:51:39'),
(481, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-29 05:12:41'),
(482, 138, 103, 'Susan_', 'TVA_Shahahluu', 'Sniper', '2021-07-29 05:25:16'),
(483, 117, 103, 'Simon_Pokkiri', 'TVA_Shahahluu', 'Combat shotgun', '2021-07-29 05:45:31'),
(484, 117, 103, 'Simon_Pokkiri', 'TVA_Shahahluu', 'Fists', '2021-07-29 05:46:11'),
(485, 142, 142, 'Ashw_Athy', 'Ashw_Athy', 'Explosion', '2021-07-29 06:47:55'),
(486, 81, 76, 'Tva_Saaho', 'Tva_Joker', 'Deagle', '2021-07-29 06:52:31'),
(487, 76, 81, 'Tva_Joker', 'Tva_Saaho', 'Combat shotgun', '2021-07-29 06:55:07'),
(488, 76, 98, 'Tva_Joker', 'TVA_Sarak', 'M4', '2021-07-29 06:56:22'),
(489, 76, 81, 'Tva_Joker', 'Tva_Saaho', 'Combat shotgun', '2021-07-29 06:56:59'),
(490, 80, 37, 'Tva_Babu', 'Revathy_Kutty', 'Deagle', '2021-07-29 09:16:07'),
(491, 76, 37, 'Tva_Joker', 'Revathy_Kutty', 'M4', '2021-07-29 09:17:14'),
(492, 80, 37, 'Tva_Babu', 'Revathy_Kutty', 'Deagle', '2021-07-29 09:17:25'),
(493, 76, 37, 'Tva_Joker', 'Revathy_Kutty', 'M4', '2021-07-29 09:17:35'),
(494, 80, 37, 'Tva_Babu', 'Revathy_Kutty', 'Sniper', '2021-07-29 09:17:42'),
(495, 21, 98, 'Daniel_Annan', 'TVA_Sarak', 'Sniper', '2021-07-29 09:33:34'),
(496, 21, 81, 'Daniel_Annan', 'Tva_Saaho', 'Sniper', '2021-07-29 09:33:36'),
(497, 76, 137, 'Tva_Joker', 'Mayavi_', 'M4', '2021-07-29 09:33:40'),
(498, 80, 21, 'Tva_Babu', 'Daniel_Annan', 'Deagle', '2021-07-29 09:34:04'),
(499, 142, 25, 'Ashw_Athy', 'Wizz_Annann', 'Combat shotgun', '2021-07-29 09:34:07'),
(500, 76, 86, 'Tva_Joker', 'Mr_Minnal', 'M4', '2021-07-29 09:34:08'),
(501, 25, 76, 'Wizz_Annann', 'Tva_Joker', 'Combat shotgun', '2021-07-29 09:36:48'),
(502, 25, 80, 'Wizz_Annann', 'Tva_Babu', 'Combat shotgun', '2021-07-29 09:36:56'),
(503, 81, 137, 'Tva_Saaho', 'Mayavi_', 'Vehicle', '2021-07-29 09:38:23'),
(504, 134, 134, 'AMMU_', 'AMMU_', 'Explosion', '2021-07-29 10:18:37'),
(505, 21, 37, 'Daniel_Annan', 'Revathy_Kutty', 'Combat shotgun', '2021-07-29 10:34:43'),
(506, 21, 63, 'Daniel_Annan', 'Wick_Sir', 'Sniper', '2021-07-29 10:37:15'),
(507, 98, 86, 'TVA_Sarak', 'Mr_Minnal', 'M4', '2021-07-29 10:37:33'),
(508, 63, 63, 'Wick_Sir', 'Wick_Sir', 'Explosion', '2021-07-29 10:37:53'),
(509, 21, 81, 'Daniel_Annan', 'Tva_Saaho', 'M4', '2021-07-29 10:37:53'),
(510, 25, 98, 'Wizz_Annann', 'TVA_Sarak', 'Sniper', '2021-07-29 10:38:09'),
(511, 21, 80, 'Daniel_Annan', 'Tva_Babu', 'M4', '2021-07-29 10:39:30'),
(512, 21, 80, 'Daniel_Annan', 'Tva_Babu', 'Combat shotgun', '2021-07-29 10:40:45'),
(513, 98, 21, 'TVA_Sarak', 'Daniel_Annan', 'Combat shotgun', '2021-07-29 10:40:46'),
(514, 80, 25, 'Tva_Babu', 'Wizz_Annann', 'Sniper', '2021-07-29 10:43:35'),
(515, 80, 21, 'Tva_Babu', 'Daniel_Annan', 'Sniper', '2021-07-29 10:44:05'),
(516, 80, 37, 'Tva_Babu', 'Revathy_Kutty', 'Helicopter Blades', '2021-07-29 11:15:08'),
(517, 80, 33, 'Tva_Babu', 'Rajan_Nair', 'Helicopter Blades', '2021-07-29 11:15:08'),
(518, 80, 22, 'Tva_Babu', 'Mr_Decxo', 'Helicopter Blades', '2021-07-29 11:15:09'),
(519, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Shotgun', '2021-07-29 11:17:47'),
(520, 49, 37, 'KERP_BOT', 'Revathy_Kutty', 'M4', '2021-07-29 11:18:01'),
(521, 49, 25, 'KERP_BOT', 'Wizz_Annann', 'M4', '2021-07-29 11:18:32'),
(522, 37, 49, 'Revathy_Kutty', 'KERP_BOT', 'Combat shotgun', '2021-07-29 11:18:34'),
(523, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'M4', '2021-07-29 11:18:41'),
(524, 37, 49, 'Revathy_Kutty', 'KERP_BOT', 'Combat shotgun', '2021-07-29 11:18:46'),
(525, 49, 37, 'KERP_BOT', 'Revathy_Kutty', 'Rocket launcher', '2021-07-29 11:21:52'),
(526, 98, 76, 'TVA_Sarak', 'Tva_Joker', 'Sniper', '2021-07-29 11:42:45'),
(527, 81, 142, 'Tva_Saaho', 'Ashw_Athy', 'Deagle', '2021-07-29 12:33:38'),
(528, 31, 104, 'DUDE_', 'Saleo_', 'Combat shotgun', '2021-07-29 14:00:41'),
(529, 31, 37, 'DUDE_', 'Revathy_Kutty', 'Combat shotgun', '2021-07-29 14:01:35'),
(530, 146, 146, 'Luttappi_', 'Luttappi_', 'Explosion', '2021-07-29 14:11:50'),
(531, 151, 151, 'Anja_Na', 'Anja_Na', 'Explosion', '2021-07-29 14:19:24'),
(532, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Deagle', '2021-07-29 16:23:18'),
(533, 21, 41, 'Daniel_Annan', 'su_vasu', 'Combat shotgun', '2021-07-29 16:23:23'),
(534, 21, 19, 'Daniel_Annan', 'Shaji_Pappan', 'Combat shotgun', '2021-07-29 16:23:27'),
(535, 21, 25, 'Daniel_Annan', 'Wizz_Annann', 'Sniper', '2021-07-29 16:30:35'),
(536, 22, 41, 'Mr_Decxo', 'su_vasu', 'M4', '2021-07-29 16:31:52'),
(537, 98, 22, 'TVA_Sarak', 'Mr_Decxo', 'M4', '2021-07-29 16:31:55'),
(538, 142, 142, 'Ashw_Athy', 'Ashw_Athy', 'Explosion', '2021-07-29 16:37:45'),
(539, 142, 142, 'Ashw_Athy', 'Ashw_Athy', 'Explosion', '2021-07-29 16:38:00'),
(540, 19, 81, 'Shaji_Pappan', 'Tva_Saaho', 'Combat shotgun', '2021-07-29 16:51:53'),
(541, 22, 98, 'Mr_Decxo', 'TVA_Sarak', 'M4', '2021-07-29 16:51:57'),
(542, 41, 142, 'su_vasu', 'Ashw_Athy', 'Deagle', '2021-07-29 16:52:08'),
(543, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-29 16:52:51'),
(544, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-29 16:53:21'),
(545, 41, 41, 'su_vasu', 'su_vasu', 'Explosion', '2021-07-29 16:55:33'),
(546, 31, 104, 'DUDE_', 'Saleo_', 'Sniper', '2021-07-29 17:08:01'),
(547, 147, 49, 'Vasu_Annann', 'KERP_BOT', 'Combat shotgun', '2021-07-29 17:14:44'),
(548, 147, 49, 'Vasu_Annann', 'KERP_BOT', 'Deagle', '2021-07-29 17:16:47'),
(549, 49, 76, 'KERP_BOT', 'Tva_Joker', 'Sniper', '2021-07-29 17:18:03'),
(550, 49, 40, 'KERP_BOT', 'Ap_AppappaN', 'Sniper', '2021-07-29 17:33:30'),
(551, 40, 158, 'Ap_AppappaN', 'KERP_GOST', 'AK-47', '2021-07-29 17:42:41'),
(552, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-29 17:44:42'),
(553, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-29 17:44:59'),
(554, 49, 28, 'KERP_BOT', 'Jack_Sir', 'Vehicle', '2021-07-29 17:45:20'),
(555, 158, 40, 'KERP_GOST', 'Ap_AppappaN', 'Fists', '2021-07-29 17:46:54'),
(556, 21, 158, 'Daniel_Annan', 'KERP_GOST', 'Combat shotgun', '2021-07-29 18:09:51'),
(557, 40, 158, 'Ap_AppappaN', 'KERP_GOST', 'AK-47', '2021-07-29 18:09:59'),
(558, 21, 40, 'Daniel_Annan', 'Ap_AppappaN', 'M4', '2021-07-29 18:11:44'),
(559, 21, 40, 'Daniel_Annan', 'Ap_AppappaN', 'M4', '2021-07-29 18:11:53'),
(560, 158, 37, 'KERP_GOST', 'Revathy_Kutty', 'Sniper', '2021-07-29 18:37:29'),
(561, 158, 33, 'KERP_GOST', 'Rajan_Nair', 'Sniper', '2021-07-29 18:38:50'),
(562, 158, 49, 'KERP_GOST', 'KERP_BOT', 'Sniper', '2021-07-29 18:50:58'),
(563, 49, 158, 'KERP_BOT', 'KERP_GOST', 'Rocket launcher', '2021-07-29 18:59:30'),
(564, 158, 49, 'KERP_GOST', 'KERP_BOT', 'Sniper', '2021-07-29 19:00:08'),
(565, 158, 49, 'KERP_GOST', 'KERP_BOT', 'Sniper', '2021-07-29 19:00:45'),
(566, 49, 158, 'KERP_BOT', 'KERP_GOST', 'Sniper', '2021-07-29 19:01:20'),
(567, 158, 49, 'KERP_GOST', 'KERP_BOT', 'Sniper', '2021-07-29 19:02:33'),
(568, 40, 21, 'Ap_AppappaN', 'Daniel_Annan', 'Combat shotgun', '2021-07-29 19:39:33'),
(569, 25, 158, 'Wizz_Annann', 'KERP_GOST', 'Combat shotgun', '2021-07-29 19:46:51'),
(570, 19, 25, 'Shaji_Pappan', 'Wizz_Annann', 'Sniper', '2021-07-29 19:47:51'),
(571, 19, 21, 'Shaji_Pappan', 'Daniel_Annan', 'Deagle', '2021-07-29 19:52:23'),
(572, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-29 19:53:34'),
(573, 49, 49, 'KERP_BOT', 'KERP_BOT', 'Explosion', '2021-07-29 20:01:17'),
(574, 49, 49, 'KERP_BOT', 'KERP_BOT', 'Explosion', '2021-07-29 20:01:32'),
(575, 21, 21, 'Daniel_Annan', 'Daniel_Annan', 'Explosion', '2021-07-29 20:02:57'),
(576, 19, 49, 'Shaji_Pappan', 'KERP_BOT', 'Combat shotgun', '2021-07-29 20:15:26'),
(577, 49, 49, 'KERP_BOT', 'KERP_BOT', 'Explosion', '2021-07-29 20:15:41'),
(578, 25, 40, 'Wizz_Annann', 'Ap_AppappaN', 'Sniper', '2021-07-29 20:26:21'),
(579, 19, 68, 'Shaji_Pappan', 'Kayamkulam_kochunni', 'Combat shotgun', '2021-07-29 20:26:24'),
(580, 68, 68, 'Kayamkulam_kochunni', 'Kayamkulam_kochunni', 'Explosion', '2021-07-29 20:26:51'),
(581, 49, 158, 'KERP_BOT', 'KERP_GOST', 'Sniper', '2021-07-29 20:28:31'),
(582, 158, 158, 'KERP_GOST', 'KERP_GOST', 'Explosion', '2021-07-29 20:29:05'),
(583, 49, 49, 'KERP_BOT', 'KERP_BOT', 'Explosion', '2021-07-29 20:30:37'),
(584, 19, 25, 'Shaji_Pappan', 'Wizz_Annann', 'Combat shotgun', '2021-07-29 20:42:50'),
(585, 158, 25, 'KERP_GOST', 'Wizz_Annann', 'Mac-10', '2021-07-29 20:45:26'),
(586, 49, 19, 'KERP_BOT', 'Shaji_Pappan', 'Sniper', '2021-07-29 20:47:52'),
(587, 19, 25, 'Shaji_Pappan', 'Wizz_Annann', 'Combat shotgun', '2021-07-29 20:47:52'),
(588, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-29 20:48:18'),
(589, 25, 158, 'Wizz_Annann', 'KERP_GOST', 'Combat shotgun', '2021-07-29 20:48:35'),
(590, 158, 158, 'KERP_GOST', 'KERP_GOST', 'Explosion', '2021-07-29 20:52:49'),
(591, 27, 27, 'angel_l', 'angel_l', 'Explosion', '2021-07-29 21:27:19'),
(592, 25, 40, 'Wizz_Annann', 'Ap_AppappaN', 'Combat shotgun', '2021-07-29 22:23:32'),
(593, 25, 40, 'Wizz_Annann', 'Ap_AppappaN', 'Combat shotgun', '2021-07-29 22:23:40'),
(594, 25, 40, 'Wizz_Annann', 'Ap_AppappaN', 'M4', '2021-07-29 22:23:47'),
(595, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Combat shotgun', '2021-07-29 22:23:57'),
(596, 25, 40, 'Wizz_Annann', 'Ap_AppappaN', 'Combat shotgun', '2021-07-29 22:24:37'),
(597, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-07-30 03:29:39'),
(598, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-07-30 03:43:53'),
(599, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-07-30 03:44:14'),
(600, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-30 05:46:16'),
(601, 76, 37, 'Tva_Joker', 'Revathy_Kutty', 'Combat shotgun', '2021-07-30 05:58:47'),
(602, 76, 37, 'Tva_Joker', 'Revathy_Kutty', 'Combat shotgun', '2021-07-30 05:58:59'),
(603, 98, 37, 'TVA_Sarak', 'Revathy_Kutty', 'Combat shotgun', '2021-07-30 06:05:39'),
(604, 66, 66, 'Mr_Alpha', 'Mr_Alpha', 'Explosion', '2021-07-30 06:05:47'),
(605, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-30 06:06:19'),
(606, 66, 66, 'Mr_Alpha', 'Mr_Alpha', 'Explosion', '2021-07-30 06:21:46'),
(607, 66, 66, 'Mr_Alpha', 'Mr_Alpha', 'Explosion', '2021-07-30 06:22:04'),
(608, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-30 06:23:28'),
(609, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-30 06:23:44'),
(610, 76, 151, 'Tva_Joker', 'Anja_Na', 'Helicopter Blades', '2021-07-30 06:25:36'),
(611, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-30 06:26:07'),
(612, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-30 06:26:22'),
(613, 76, 151, 'Tva_Joker', 'Anja_Na', 'Combat shotgun', '2021-07-30 06:27:36'),
(614, 151, 151, 'Anja_Na', 'Anja_Na', 'Explosion', '2021-07-30 06:30:10'),
(615, 151, 151, 'Anja_Na', 'Anja_Na', 'Explosion', '2021-07-30 06:30:26'),
(616, 22, 37, 'Mr_Decxo', 'Revathy_Kutty', 'Sniper', '2021-07-30 06:33:18'),
(617, 22, 38, 'Mr_Decxo', 'Bhavani_Op', 'Sniper', '2021-07-30 06:39:28'),
(618, 22, 38, 'Mr_Decxo', 'Bhavani_Op', 'Sniper', '2021-07-30 06:39:37'),
(619, 22, 37, 'Mr_Decxo', 'Revathy_Kutty', 'Sniper', '2021-07-30 06:40:42'),
(620, 22, 37, 'Mr_Decxo', 'Revathy_Kutty', 'Sniper', '2021-07-30 06:41:08'),
(621, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'Sniper', '2021-07-30 06:41:57'),
(622, 28, 22, 'Jack_Sir', 'Mr_Decxo', 'M4', '2021-07-30 06:43:14'),
(623, 37, 22, 'Revathy_Kutty', 'Mr_Decxo', 'Sniper', '2021-07-30 06:44:42'),
(624, 37, 22, 'Revathy_Kutty', 'Mr_Decxo', 'Sniper', '2021-07-30 06:45:22'),
(625, 37, 38, 'Revathy_Kutty', 'Bhavani_Op', 'M4', '2021-07-30 06:48:25'),
(626, 38, 38, 'Bhavani_Op', 'Bhavani_Op', 'Explosion', '2021-07-30 06:49:05'),
(627, 49, 37, 'Kerp_Bot', 'Revathy_Kutty', 'Sniper', '2021-07-30 06:49:28'),
(628, 142, 80, 'Ashw_Athy', 'Tva_Babu', 'Fists', '2021-07-30 07:06:45'),
(629, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-07-30 07:07:45'),
(630, 76, 142, 'Tva_Joker', 'Ashw_Athy', 'Sniper', '2021-07-30 07:11:45'),
(631, 76, 142, 'Tva_Joker', 'Ashw_Athy', 'Sniper', '2021-07-30 07:12:26'),
(632, 80, 76, 'Tva_Babu', 'Tva_Joker', 'Sniper', '2021-07-30 07:17:15'),
(633, 142, 76, 'Ashw_Athy', 'Tva_Joker', 'Mac-10', '2021-07-30 07:17:38'),
(634, 80, 142, 'Tva_Babu', 'Ashw_Athy', 'Deagle', '2021-07-30 07:17:41'),
(635, 80, 142, 'Tva_Babu', 'Ashw_Athy', 'Deagle', '2021-07-30 07:17:49'),
(636, 80, 76, 'Tva_Babu', 'Tva_Joker', 'Combat shotgun', '2021-07-30 07:22:21'),
(637, 142, 80, 'Ashw_Athy', 'Tva_Babu', 'Combat shotgun', '2021-07-30 07:22:24'),
(638, 142, 76, 'Ashw_Athy', 'Tva_Joker', 'M4', '2021-07-30 07:22:46'),
(639, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-07-30 07:22:48'),
(640, 142, 142, 'Ashw_Athy', 'Ashw_Athy', 'Explosion', '2021-07-30 07:36:02'),
(641, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Combat shotgun', '2021-07-30 07:44:12'),
(642, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-30 08:01:29'),
(643, 76, 41, 'Tva_Joker', 'su_vasu', 'M4', '2021-07-30 08:19:16'),
(644, 22, 76, 'Mr_Decxo', 'Tva_Joker', 'M4', '2021-07-30 08:19:29'),
(645, 40, 103, 'Ap_AppappaN', 'TVA_Shahahluu', 'Combat shotgun', '2021-07-30 08:19:31'),
(646, 81, 40, 'Tva_Saaho', 'Ap_AppappaN', 'M4', '2021-07-30 08:19:38'),
(647, 22, 80, 'Mr_Decxo', 'Tva_Babu', 'M4', '2021-07-30 08:19:42'),
(648, 103, 103, 'TVA_Shahahluu', 'TVA_Shahahluu', 'Explosion', '2021-07-30 08:19:46'),
(649, 19, 81, 'Shaji_Pappan', 'Tva_Saaho', 'Combat shotgun', '2021-07-30 08:20:22'),
(650, 19, 142, 'Shaji_Pappan', 'Ashw_Athy', 'Combat shotgun', '2021-07-30 08:20:42'),
(651, 142, 142, 'Ashw_Athy', 'Ashw_Athy', 'Explosion', '2021-07-30 08:20:57'),
(652, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-07-30 08:20:58'),
(653, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-07-30 08:21:25'),
(654, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-30 08:21:56'),
(655, 41, 41, 'su_vasu', 'su_vasu', 'Explosion', '2021-07-30 08:24:17'),
(656, 103, 22, 'TVA_Shahahluu', 'Mr_Decxo', 'M4', '2021-07-30 08:26:20'),
(657, 103, 40, 'TVA_Shahahluu', 'Ap_AppappaN', 'M4', '2021-07-30 08:26:27'),
(658, 19, 103, 'Shaji_Pappan', 'TVA_Shahahluu', 'Combat shotgun', '2021-07-30 08:26:30'),
(659, 103, 103, 'TVA_Shahahluu', 'TVA_Shahahluu', 'Explosion', '2021-07-30 08:26:45');
INSERT INTO `kills` (`id`, `killer_uid`, `target_uid`, `killer`, `target`, `reason`, `date`) VALUES
(660, 142, 19, 'Ashw_Athy', 'Shaji_Pappan', 'M4', '2021-07-30 08:26:45'),
(661, 142, 40, 'Ashw_Athy', 'Ap_AppappaN', 'M4', '2021-07-30 08:26:57'),
(662, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-30 08:27:00'),
(663, 22, 80, 'Mr_Decxo', 'Tva_Babu', 'Combat shotgun', '2021-07-30 08:30:55'),
(664, 40, 80, 'Ap_AppappaN', 'Tva_Babu', 'M4', '2021-07-30 08:31:03'),
(665, 81, 22, 'Tva_Saaho', 'Mr_Decxo', 'M4', '2021-07-30 08:31:06'),
(666, 81, 40, 'Tva_Saaho', 'Ap_AppappaN', 'M4', '2021-07-30 08:31:18'),
(667, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-30 08:31:28'),
(668, 40, 40, 'Ap_AppappaN', 'Ap_AppappaN', 'Explosion', '2021-07-30 08:31:39'),
(669, 19, 81, 'Shaji_Pappan', 'Tva_Saaho', 'Combat shotgun', '2021-07-30 08:33:33'),
(670, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-30 08:34:33'),
(671, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-07-30 08:36:40'),
(672, 19, 80, 'Shaji_Pappan', 'Tva_Babu', 'Combat shotgun', '2021-07-30 08:39:11'),
(673, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-07-30 08:39:25'),
(674, 19, 142, 'Shaji_Pappan', 'Ashw_Athy', 'Combat shotgun', '2021-07-30 08:39:44'),
(675, 103, 19, 'TVA_Shahahluu', 'Shaji_Pappan', 'M4', '2021-07-30 08:39:54'),
(676, 142, 142, 'Ashw_Athy', 'Ashw_Athy', 'Explosion', '2021-07-30 08:39:58'),
(677, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-30 08:40:12'),
(678, 40, 103, 'Ap_AppappaN', 'TVA_Shahahluu', 'M4', '2021-07-30 08:40:16'),
(679, 103, 103, 'TVA_Shahahluu', 'TVA_Shahahluu', 'Explosion', '2021-07-30 08:40:33'),
(680, 63, 63, 'Wick_Sir', 'Wick_Sir', 'Explosion', '2021-07-30 08:42:41'),
(681, 63, 63, 'Wick_Sir', 'Wick_Sir', 'Explosion', '2021-07-30 08:42:55'),
(682, 81, 19, 'Tva_Saaho', 'Shaji_Pappan', 'M4', '2021-07-30 08:45:03'),
(683, 40, 142, 'Ap_AppappaN', 'Ashw_Athy', 'M4', '2021-07-30 08:45:14'),
(684, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-30 08:45:19'),
(685, 40, 142, 'Ap_AppappaN', 'Ashw_Athy', 'Combat shotgun', '2021-07-30 08:45:24'),
(686, 40, 80, 'Ap_AppappaN', 'Tva_Babu', 'M4', '2021-07-30 08:45:51'),
(687, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-07-30 08:46:07'),
(688, 40, 81, 'Ap_AppappaN', 'Tva_Saaho', 'M4', '2021-07-30 08:46:20'),
(689, 40, 81, 'Ap_AppappaN', 'Tva_Saaho', 'M4', '2021-07-30 08:46:27'),
(690, 40, 40, 'Ap_AppappaN', 'Ap_AppappaN', 'Explosion', '2021-07-30 08:47:00'),
(691, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-07-30 08:47:37'),
(692, 22, 103, 'Mr_Decxo', 'TVA_Shahahluu', 'Combat shotgun', '2021-07-30 08:48:54'),
(693, 103, 103, 'TVA_Shahahluu', 'TVA_Shahahluu', 'Explosion', '2021-07-30 08:49:11'),
(694, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-30 08:50:26'),
(695, 40, 142, 'Ap_AppappaN', 'Ashw_Athy', 'M4', '2021-07-30 08:51:07'),
(696, 80, 41, 'Tva_Babu', 'su_vasu', 'Combat shotgun', '2021-07-30 08:51:17'),
(697, 80, 40, 'Tva_Babu', 'Ap_AppappaN', 'Combat shotgun', '2021-07-30 08:52:15'),
(698, 41, 41, 'su_vasu', 'su_vasu', 'Explosion', '2021-07-30 08:52:38'),
(699, 40, 40, 'Ap_AppappaN', 'Ap_AppappaN', 'Explosion', '2021-07-30 08:52:58'),
(700, 76, 19, 'Tva_Joker', 'Shaji_Pappan', 'M4', '2021-07-30 08:53:04'),
(701, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-30 08:53:19'),
(702, 40, 81, 'Ap_AppappaN', 'Tva_Saaho', 'M4', '2021-07-30 08:58:53'),
(703, 76, 40, 'Tva_Joker', 'Ap_AppappaN', 'M4', '2021-07-30 08:59:27'),
(704, 103, 19, 'TVA_Shahahluu', 'Shaji_Pappan', 'M4', '2021-07-30 09:00:02'),
(705, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-30 09:00:04'),
(706, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-30 09:00:16'),
(707, 103, 103, 'TVA_Shahahluu', 'TVA_Shahahluu', 'Explosion', '2021-07-30 09:00:35'),
(708, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-07-30 09:00:39'),
(709, 76, 81, 'Tva_Joker', 'Tva_Saaho', 'Mac-10', '2021-07-30 09:06:22'),
(710, 103, 142, 'TVA_Shahahluu', 'Ashw_Athy', 'M4', '2021-07-30 09:06:29'),
(711, 76, 76, 'Tva_Joker', 'Tva_Joker', 'Explosion', '2021-07-30 09:06:56'),
(712, 142, 142, 'Ashw_Athy', 'Ashw_Athy', 'Explosion', '2021-07-30 09:07:09'),
(713, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-07-30 09:07:13'),
(714, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-07-30 09:08:26'),
(715, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-07-30 09:29:22'),
(716, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-07-30 09:29:37'),
(717, 38, 154, 'Bhavani_Op', 'Jithu_Mon', 'Car parking', '2021-07-30 09:31:31'),
(718, 134, 134, 'AMMU_', 'AMMU_', 'Explosion', '2021-07-30 09:41:03'),
(719, 38, 38, 'Bhavani_Op', 'Bhavani_Op', 'Explosion', '2021-07-30 09:41:52'),
(720, 63, 63, 'Marshal_Sir', 'Marshal_Sir', 'Explosion', '2021-07-30 09:59:59'),
(721, 63, 63, 'Marshal_Sir', 'Marshal_Sir', 'Explosion', '2021-07-30 10:00:13'),
(722, 103, 81, 'TVA_Shahahluu', 'Tva_Saaho', 'M4', '2021-07-30 10:08:50'),
(723, 103, 81, 'TVA_Shahahluu', 'Tva_Saaho', 'M4', '2021-07-30 10:09:06'),
(724, 136, 136, 'Mr_cruzer', 'Mr_cruzer', 'Explosion', '2021-07-30 11:04:03'),
(725, 167, 167, 'Dr_Lutapi', 'Dr_Lutapi', 'Explosion', '2021-07-30 11:34:01'),
(726, 167, 167, 'Dr_Lutapi', 'Dr_Lutapi', 'Explosion', '2021-07-30 11:34:49'),
(727, 163, 163, 'malik_1', 'malik_1', 'Explosion', '2021-07-30 12:48:51'),
(728, 104, 104, 'Saleo_', 'Saleo_', 'Explosion', '2021-07-30 13:14:37'),
(729, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-30 15:38:51'),
(730, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-30 15:39:10'),
(731, 31, 49, 'DUDE_', 'KERP_BOT', 'Sniper', '2021-07-30 16:18:25'),
(732, 49, 31, 'KERP_BOT', 'DUDE_', 'Sniper', '2021-07-30 16:18:47'),
(733, 49, 31, 'KERP_BOT', 'DUDE_', 'Sniper', '2021-07-30 16:19:04'),
(734, 49, 31, 'KERP_BOT', 'DUDE_', 'Sniper', '2021-07-30 16:19:17'),
(735, 31, 49, 'DUDE_', 'KERP_BOT', 'Combat shotgun', '2021-07-30 16:19:36'),
(736, 31, 49, 'DUDE_', 'KERP_BOT', 'Combat shotgun', '2021-07-30 16:19:44'),
(737, 31, 49, 'DUDE_', 'KERP_BOT', 'Combat shotgun', '2021-07-30 16:19:51'),
(738, 31, 49, 'DUDE_', 'KERP_BOT', 'Combat shotgun', '2021-07-30 16:20:04'),
(739, 27, 27, 'angel_l', 'angel_l', 'Explosion', '2021-07-30 16:46:36'),
(740, 27, 27, 'angel_l', 'angel_l', 'Explosion', '2021-07-30 16:47:04'),
(741, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-30 17:00:35'),
(742, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-30 17:58:16'),
(743, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-30 17:58:32'),
(744, 25, 40, 'Wizz_Annann', 'Ap_AppappaN', 'Combat shotgun', '2021-07-30 18:01:32'),
(745, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Combat shotgun', '2021-07-30 18:01:41'),
(746, 25, 67, 'Wizz_Annann', 'KATTALAN_PORINJU', 'M4', '2021-07-30 18:02:14'),
(747, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'M4', '2021-07-30 18:05:49'),
(748, 104, 104, 'Saleo_', 'Saleo_', 'Explosion', '2021-07-30 18:27:41'),
(749, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Shotgun', '2021-07-30 18:32:56'),
(750, 40, 21, 'Ap_AppappaN', 'Daniel_Annan', 'Shotgun', '2021-07-30 18:33:23'),
(751, 21, 21, 'Daniel_Annan', 'Daniel_Annan', 'Explosion', '2021-07-30 18:34:24'),
(752, 25, 25, 'Wizz_Annann', 'Wizz_Annann', 'Explosion', '2021-07-30 18:35:44'),
(753, 25, 25, 'Wizz_Annann', 'Wizz_Annann', 'Explosion', '2021-07-30 18:37:11'),
(754, 21, 40, 'Daniel_Annan', 'Ap_AppappaN', 'Combat shotgun', '2021-07-30 18:52:59'),
(755, 21, 67, 'Daniel_Annan', 'KATTALAN_PORINJU', 'Combat shotgun', '2021-07-30 18:54:47'),
(756, 21, 22, 'Daniel_Annan', 'Mr_Decxo', 'Combat shotgun', '2021-07-30 18:54:52'),
(757, 40, 40, 'Ap_AppappaN', 'Ap_AppappaN', 'Explosion', '2021-07-30 19:00:41'),
(758, 137, 137, 'Mayavi_', 'Mayavi_', 'Explosion', '2021-07-30 19:02:55'),
(759, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Sniper', '2021-07-30 19:14:10'),
(760, 21, 33, 'Daniel_Annan', 'Rajan_Nair', 'Deagle', '2021-07-30 19:14:57'),
(761, 22, 21, 'Mr_Decxo', 'Daniel_Annan', 'Deagle', '2021-07-30 19:14:59'),
(762, 22, 33, 'Mr_Decxo', 'Rajan_Nair', 'Sniper', '2021-07-30 19:32:16'),
(763, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Combat shotgun', '2021-07-30 19:57:59'),
(764, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-30 20:44:45'),
(765, 67, 67, 'KATTALAN_PORINJU', 'KATTALAN_PORINJU', 'Explosion', '2021-07-30 20:50:24'),
(766, 22, 19, 'Mr_Decxo', 'Shaji_Pappan', 'M4', '2021-07-30 21:04:11'),
(767, 25, 67, 'Wizz_Annann', 'KATTALAN_PORINJU', 'Combat shotgun', '2021-07-30 21:04:40'),
(768, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Mac-10', '2021-07-30 21:07:43'),
(769, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-30 21:12:29'),
(770, 83, 83, 'Star_Load', 'Star_Load', 'Explosion', '2021-07-31 03:43:37'),
(771, 83, 83, 'Star_Load', 'Star_Load', 'Explosion', '2021-07-31 03:43:58'),
(772, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-31 07:08:37'),
(773, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-31 07:08:53'),
(774, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-31 07:13:43'),
(775, 49, 28, 'KERP_BOT', 'Jack_Sir', 'Minigun', '2021-07-31 08:02:36'),
(776, 28, 49, 'Jack_Sir', 'KERP_BOT', 'Deagle', '2021-07-31 08:03:25'),
(777, 147, 147, 'Vasu_Annann', 'Vasu_Annann', 'Explosion', '2021-07-31 08:57:19'),
(778, 22, 37, 'Mr_Decxo', 'Revathy_Kutty', 'M4', '2021-07-31 09:07:34'),
(779, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-31 09:07:49'),
(780, 103, 25, 'TVA_Shahahluu', 'Wizz_Annann', 'M4', '2021-07-31 09:11:29'),
(781, 25, 103, 'Wizz_Annann', 'TVA_Shahahluu', 'M4', '2021-07-31 09:12:32'),
(782, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'Combat shotgun', '2021-07-31 09:12:34'),
(783, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'Combat shotgun', '2021-07-31 09:12:55'),
(784, 22, 28, 'Mr_Decxo', 'Jack_Sir', 'Deagle', '2021-07-31 09:13:33'),
(785, 125, 125, 'Sunny_Leone', 'Sunny_Leone', 'Explosion', '2021-07-31 09:16:50'),
(786, 125, 125, 'Sunny_Leone', 'Sunny_Leone', 'Explosion', '2021-07-31 09:17:05'),
(787, 33, 33, 'Rajan_Nair', 'Rajan_Nair', 'Explosion', '2021-07-31 09:22:59'),
(788, 33, 33, 'Rajan_Nair', 'Rajan_Nair', 'Explosion', '2021-07-31 09:23:15'),
(789, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Deagle', '2021-07-31 09:27:15'),
(790, 22, 33, 'Mr_Decxo', 'Rajan_Nair', 'Deagle', '2021-07-31 09:27:19'),
(791, 125, 22, 'Sunny_Leone', 'Mr_Decxo', 'Sniper', '2021-07-31 09:28:32'),
(792, 125, 22, 'Sunny_Leone', 'Mr_Decxo', 'Deagle', '2021-07-31 09:28:56'),
(793, 49, 49, 'KERP_BOT', 'KERP_BOT', 'Explosion', '2021-07-31 10:38:20'),
(794, 175, 175, 'Rambo_Chu', 'Rambo_Chu', 'Explosion', '2021-07-31 10:58:14'),
(795, 31, 75, 'DUDE_', 'Adil_yt', 'Combat shotgun', '2021-07-31 11:26:43'),
(796, 37, 28, 'Revathy_Kutty', 'Jack_Sir', 'Vehicle', '2021-07-31 11:51:47'),
(797, 176, 176, 'Sukumara_Kurup', 'Sukumara_Kurup', 'Explosion', '2021-07-31 12:10:09'),
(798, 176, 176, 'Sukumara_Kurup', 'Sukumara_Kurup', 'Explosion', '2021-07-31 12:30:15'),
(799, 176, 176, 'Sukumara_Kurup', 'Sukumara_Kurup', 'Explosion', '2021-07-31 12:30:32'),
(800, 33, 67, 'Rajan_Nair', 'KATTALAN_PORINJU', 'Combat shotgun', '2021-07-31 13:41:59'),
(801, 173, 173, 'malik__', 'malik__', 'Explosion', '2021-07-31 13:48:35'),
(802, 103, 40, 'TVA_Shahahluu', 'Ap_AppappaN', 'M4', '2021-07-31 15:37:52'),
(803, 40, 40, 'Ap_AppappaN', 'Ap_AppappaN', 'Explosion', '2021-07-31 15:38:10'),
(804, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-31 15:38:16'),
(805, 103, 103, 'TVA_Shahahluu', 'TVA_Shahahluu', 'Explosion', '2021-07-31 15:38:46'),
(806, 182, 40, 'Cluder_yt', 'Ap_AppappaN', 'Fists', '2021-07-31 15:39:35'),
(807, 40, 40, 'Ap_AppappaN', 'Ap_AppappaN', 'Explosion', '2021-07-31 15:39:52'),
(808, 98, 67, 'TVA_Sarak', 'KATTALAN_PORINJU', 'Combat shotgun', '2021-07-31 15:40:46'),
(809, 81, 37, 'Tva_Saaho', 'Revathy_Kutty', 'Combat shotgun', '2021-07-31 15:40:52'),
(810, 98, 98, 'TVA_Sarak', 'TVA_Sarak', 'Explosion', '2021-07-31 15:41:06'),
(811, 22, 76, 'Mr_Decxo', 'Tva_Joker', 'Combat shotgun', '2021-07-31 15:41:49'),
(812, 76, 76, 'Tva_Joker', 'Tva_Joker', 'Explosion', '2021-07-31 15:42:14'),
(813, 81, 22, 'Tva_Saaho', 'Mr_Decxo', 'M4', '2021-07-31 15:44:10'),
(814, 81, 41, 'Tva_Saaho', 'su_vasu', 'Combat shotgun', '2021-07-31 15:44:19'),
(815, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-31 15:44:24'),
(816, 41, 41, 'su_vasu', 'su_vasu', 'Explosion', '2021-07-31 15:45:49'),
(817, 103, 146, 'TVA_Shahahluu', 'Luttappi_', 'M4', '2021-07-31 15:46:36'),
(818, 40, 81, 'Ap_AppappaN', 'Tva_Saaho', 'M4', '2021-07-31 15:47:03'),
(819, 40, 98, 'Ap_AppappaN', 'TVA_Sarak', 'M4', '2021-07-31 15:47:22'),
(820, 40, 103, 'Ap_AppappaN', 'TVA_Shahahluu', 'M4', '2021-07-31 15:47:26'),
(821, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-07-31 15:47:37'),
(822, 98, 98, 'TVA_Sarak', 'TVA_Sarak', 'Explosion', '2021-07-31 15:47:39'),
(823, 103, 103, 'TVA_Shahahluu', 'TVA_Shahahluu', 'Explosion', '2021-07-31 15:48:06'),
(824, 19, 76, 'Shaji_Pappan', 'Tva_Joker', 'M4', '2021-07-31 15:49:06'),
(825, 31, 19, 'DUDE_', 'Shaji_Pappan', 'M4', '2021-07-31 15:49:13'),
(826, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-31 15:49:30'),
(827, 76, 76, 'Tva_Joker', 'Tva_Joker', 'Explosion', '2021-07-31 15:49:34'),
(828, 173, 173, 'malik__', 'malik__', 'Explosion', '2021-07-31 15:51:21'),
(829, 22, 53, 'Mr_Decxo', 'bhaskar_op', 'Combat shotgun', '2021-07-31 15:51:30'),
(830, 31, 41, 'DUDE_', 'su_vasu', 'M4', '2021-07-31 15:52:33'),
(831, 41, 41, 'su_vasu', 'su_vasu', 'Explosion', '2021-07-31 15:52:57'),
(832, 173, 173, 'malik__', 'malik__', 'Explosion', '2021-07-31 15:53:31'),
(833, 98, 98, 'TVA_Sarak', 'TVA_Sarak', 'Explosion', '2021-07-31 15:53:46'),
(834, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-31 15:53:59'),
(835, 81, 31, 'Tva_Saaho', 'DUDE_', 'Combat shotgun', '2021-07-31 15:54:02'),
(836, 103, 104, 'TVA_Shahahluu', 'Saleo_', 'M4', '2021-07-31 15:54:06'),
(837, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-07-31 15:55:07'),
(838, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-07-31 15:55:56'),
(839, 19, 103, 'Shaji_Pappan', 'TVA_Shahahluu', 'Combat shotgun', '2021-07-31 15:55:58'),
(840, 76, 19, 'Tva_Joker', 'Shaji_Pappan', 'M4', '2021-07-31 15:56:10'),
(841, 103, 103, 'TVA_Shahahluu', 'TVA_Shahahluu', 'Explosion', '2021-07-31 15:56:15'),
(842, 104, 76, 'Saleo_', 'Tva_Joker', 'M4', '2021-07-31 15:56:23'),
(843, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-31 15:56:24'),
(844, 40, 104, 'Ap_AppappaN', 'Saleo_', 'M4', '2021-07-31 15:56:35'),
(845, 76, 76, 'Tva_Joker', 'Tva_Joker', 'Explosion', '2021-07-31 15:56:38'),
(846, 53, 53, 'bhaskar_op', 'bhaskar_op', 'Explosion', '2021-07-31 15:58:00'),
(847, 40, 104, 'Ap_AppappaN', 'Saleo_', 'M4', '2021-07-31 15:58:22'),
(848, 67, 67, 'KATTALAN_PORINJU', 'KATTALAN_PORINJU', 'Explosion', '2021-07-31 15:58:24'),
(849, 40, 104, 'Ap_AppappaN', 'Saleo_', 'M4', '2021-07-31 15:58:28'),
(850, 182, 146, 'Cluder_yt', 'Luttappi_', 'Fists', '2021-07-31 15:59:06'),
(851, 22, 76, 'Mr_Decxo', 'Tva_Joker', 'Combat shotgun', '2021-07-31 16:00:35'),
(852, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-31 16:01:00'),
(853, 76, 76, 'Tva_Joker', 'Tva_Joker', 'Explosion', '2021-07-31 16:01:02'),
(854, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-07-31 16:01:55'),
(855, 40, 103, 'Ap_AppappaN', 'TVA_Shahahluu', 'Combat shotgun', '2021-07-31 16:03:40'),
(856, 103, 103, 'TVA_Shahahluu', 'TVA_Shahahluu', 'Explosion', '2021-07-31 16:03:53'),
(857, 81, 40, 'Tva_Saaho', 'Ap_AppappaN', 'M4', '2021-07-31 16:04:04'),
(858, 40, 40, 'Ap_AppappaN', 'Ap_AppappaN', 'Explosion', '2021-07-31 16:04:26'),
(859, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-07-31 16:04:41'),
(860, 98, 19, 'TVA_Sarak', 'Shaji_Pappan', 'Combat shotgun', '2021-07-31 16:04:59'),
(861, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-31 16:05:15'),
(862, 172, 172, 'Rayan_op', 'Rayan_op', 'Explosion', '2021-07-31 16:12:26'),
(863, 103, 19, 'TVA_Shahahluu', 'Shaji_Pappan', 'M4', '2021-07-31 16:12:35'),
(864, 19, 19, 'Shaji_Pappan', 'Shaji_Pappan', 'Explosion', '2021-07-31 16:12:50'),
(865, 22, 103, 'Mr_Decxo', 'TVA_Shahahluu', 'M4', '2021-07-31 16:13:36'),
(866, 103, 103, 'TVA_Shahahluu', 'TVA_Shahahluu', 'Explosion', '2021-07-31 16:13:51'),
(867, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-31 16:13:58'),
(868, 81, 31, 'Tva_Saaho', 'DUDE_', 'Combat shotgun', '2021-07-31 16:14:29'),
(869, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-07-31 16:14:49'),
(870, 81, 41, 'Tva_Saaho', 'su_vasu', 'Combat shotgun', '2021-07-31 16:14:56'),
(871, 41, 41, 'su_vasu', 'su_vasu', 'Explosion', '2021-07-31 16:15:25'),
(872, 67, 67, 'KATTALAN_PORINJU', 'KATTALAN_PORINJU', 'Explosion', '2021-07-31 16:19:08'),
(873, 174, 174, 'Akshay_Op', 'Akshay_Op', 'Explosion', '2021-07-31 16:26:06'),
(874, 98, 103, 'TVA_Sarak', 'TVA_Shahahluu', 'Pistol whip', '2021-07-31 16:42:29'),
(875, 104, 104, 'Saleo_', 'Saleo_', 'Explosion', '2021-07-31 16:45:55'),
(876, 104, 175, 'Saleo_', 'Rambo_Chu', 'Deagle', '2021-07-31 17:12:18'),
(877, 80, 104, 'Tva_Babu', 'Saleo_', 'Shotgun', '2021-07-31 18:20:54'),
(878, 80, 146, 'Tva_Babu', 'Luttappi_', 'Shotgun', '2021-07-31 18:21:00'),
(879, 80, 137, 'Tva_Babu', 'Mayavi_', 'Shotgun', '2021-07-31 18:21:06'),
(880, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Fists', '2021-07-31 19:14:54'),
(881, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Combat shotgun', '2021-07-31 19:34:48'),
(882, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Deagle', '2021-07-31 19:43:09'),
(883, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Deagle', '2021-07-31 19:43:37'),
(884, 31, 22, 'DUDE_', 'Mr_Decxo', 'M4', '2021-07-31 19:45:24'),
(885, 31, 40, 'DUDE_', 'Ap_AppappaN', 'M4', '2021-07-31 19:45:30'),
(886, 31, 146, 'DUDE_', 'Luttappi_', 'M4', '2021-07-31 19:45:33'),
(887, 40, 146, 'Ap_AppappaN', 'Luttappi_', 'Combat shotgun', '2021-07-31 19:46:53'),
(888, 53, 25, 'bhaskar_op', 'Wizz_Annann', 'Combat shotgun', '2021-07-31 19:46:53'),
(889, 22, 53, 'Mr_Decxo', 'bhaskar_op', 'Combat shotgun', '2021-07-31 19:46:55'),
(890, 40, 146, 'Ap_AppappaN', 'Luttappi_', 'Combat shotgun', '2021-07-31 19:47:05'),
(891, 137, 40, 'Mayavi_', 'Ap_AppappaN', 'Deagle', '2021-07-31 19:47:13'),
(892, 22, 137, 'Mr_Decxo', 'Mayavi_', 'Combat shotgun', '2021-07-31 19:47:42'),
(893, 22, 53, 'Mr_Decxo', 'bhaskar_op', 'Combat shotgun', '2021-07-31 19:49:03'),
(894, 22, 53, 'Mr_Decxo', 'bhaskar_op', 'Combat shotgun', '2021-07-31 19:49:27'),
(895, 22, 173, 'Mr_Decxo', 'malik__', 'Combat shotgun', '2021-07-31 19:49:33'),
(896, 25, 173, 'Wizz_Annann', 'malik__', 'M4', '2021-07-31 19:49:42'),
(897, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Combat shotgun', '2021-07-31 19:50:08'),
(898, 104, 104, 'Saleo_', 'Saleo_', 'Explosion', '2021-07-31 19:50:21'),
(899, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Combat shotgun', '2021-07-31 19:50:45'),
(900, 31, 25, 'DUDE_', 'Wizz_Annann', 'Combat shotgun', '2021-07-31 19:51:22'),
(901, 22, 31, 'Mr_Decxo', 'DUDE_', 'Combat shotgun', '2021-07-31 19:52:44'),
(902, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Combat shotgun', '2021-07-31 19:58:43'),
(903, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Deagle', '2021-07-31 19:59:52'),
(904, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Combat shotgun', '2021-07-31 20:00:23'),
(905, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Deagle', '2021-07-31 20:00:48'),
(906, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Deagle', '2021-07-31 20:01:12'),
(907, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Deagle', '2021-07-31 20:01:31'),
(908, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Combat shotgun', '2021-07-31 20:01:48'),
(909, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Deagle', '2021-07-31 20:05:38'),
(910, 25, 40, 'Wizz_Annann', 'Ap_AppappaN', 'Deagle', '2021-07-31 20:07:17'),
(911, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Deagle', '2021-07-31 20:07:48'),
(912, 25, 40, 'Wizz_Annann', 'Ap_AppappaN', 'Combat shotgun', '2021-07-31 20:09:47'),
(913, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Sniper', '2021-07-31 20:10:26'),
(914, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Sniper', '2021-07-31 20:15:13'),
(915, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Sniper', '2021-07-31 20:15:26'),
(916, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-07-31 20:25:07'),
(917, 40, 67, 'Ap_AppappaN', 'KATTALAN_PORINJU', 'Explosion', '2021-08-01 00:19:45'),
(918, 173, 172, 'malik__', 'Rayan_op', 'Deagle', '2021-08-01 04:43:57'),
(919, 35, 33, 'David_John', 'Rajan_Nair', 'Deagle', '2021-08-01 04:47:10'),
(920, 38, 38, 'Bhavani_Op', 'Bhavani_Op', 'Explosion', '2021-08-01 05:10:14'),
(921, 172, 173, 'Rayan_op', 'malik__', 'Vehicle', '2021-08-01 07:12:24'),
(922, 173, 173, 'malik__', 'malik__', 'Explosion', '2021-08-01 07:12:46'),
(923, 76, 80, 'Tva_Joker', 'Tva_Babu', 'M4', '2021-08-01 07:44:54'),
(924, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-08-01 07:45:09'),
(925, 76, 76, 'Tva_Joker', 'Tva_Joker', 'Explosion', '2021-08-01 07:45:50'),
(926, 31, 104, 'DUDE_', 'Saleo_', 'Helicopter Blades', '2021-08-01 07:55:53'),
(927, 31, 104, 'DUDE_', 'Saleo_', 'Helicopter Blades', '2021-08-01 07:56:02'),
(928, 103, 80, 'TVA_Shahahluu', 'Tva_Babu', 'M4', '2021-08-01 07:59:41'),
(929, 179, 179, 'Maandru_Annan', 'Maandru_Annan', 'Explosion', '2021-08-01 08:05:42'),
(930, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-08-01 08:14:50'),
(931, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-08-01 08:15:09'),
(932, 76, 104, 'Tva_Joker', 'Saleo_', 'Combat shotgun', '2021-08-01 08:16:43'),
(933, 76, 31, 'Tva_Joker', 'DUDE_', 'M4', '2021-08-01 08:17:07'),
(934, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-08-01 08:17:22'),
(935, 104, 104, 'Saleo_', 'Saleo_', 'Explosion', '2021-08-01 08:17:56'),
(936, 104, 104, 'Saleo_', 'Saleo_', 'Explosion', '2021-08-01 08:18:36'),
(937, 104, 104, 'Saleo_', 'Saleo_', 'Explosion', '2021-08-01 08:18:59'),
(938, 80, 27, 'Tva_Babu', 'phyco_muthalaly', 'M4', '2021-08-01 08:21:28'),
(939, 27, 27, 'phyco_muthalaly', 'phyco_muthalaly', 'Explosion', '2021-08-01 08:21:54'),
(940, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-08-01 08:24:30'),
(941, 39, 39, 'Jhonny_Kuttan', 'Jhonny_Kuttan', 'Explosion', '2021-08-01 08:47:48'),
(942, 39, 39, 'Jhonny_Kuttan', 'Jhonny_Kuttan', 'Explosion', '2021-08-01 08:48:18'),
(943, 22, 188, 'Mr_Decxo', 'Adil_FF', 'Deagle', '2021-08-01 09:15:09'),
(944, 22, 49, 'Mr_Decxo', 'KERP_BOT', 'Deagle', '2021-08-01 09:18:30'),
(945, 49, 22, 'KERP_BOT', 'Mr_Decxo', 'Sniper', '2021-08-01 09:19:53'),
(946, 179, 179, 'Maandru_Annan', 'Maandru_Annan', 'Explosion', '2021-08-01 09:40:45'),
(947, 179, 179, 'Maandru_Annan', 'Maandru_Annan', 'Explosion', '2021-08-01 09:41:05'),
(948, 179, 179, 'Maandru_Annan', 'Maandru_Annan', 'Explosion', '2021-08-01 09:43:09'),
(949, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-08-01 09:52:02'),
(950, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-08-01 09:52:18'),
(951, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-01 10:11:16'),
(952, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-01 10:11:33'),
(953, 176, 176, 'Sukumara_Kurup', 'Sukumara_Kurup', 'Explosion', '2021-08-01 10:11:35'),
(954, 179, 179, 'Maandru_Annan', 'Maandru_Annan', 'Explosion', '2021-08-01 10:11:40'),
(955, 176, 176, 'Sukumara_Kurup', 'Sukumara_Kurup', 'Explosion', '2021-08-01 10:11:53'),
(956, 177, 177, 'Michael_Ichayan', 'Michael_Ichayan', 'Explosion', '2021-08-01 10:11:53'),
(957, 179, 179, 'Maandru_Annan', 'Maandru_Annan', 'Explosion', '2021-08-01 10:12:00'),
(958, 177, 177, 'Michael_Ichayan', 'Michael_Ichayan', 'Explosion', '2021-08-01 10:12:28'),
(959, 176, 177, 'Sukumara_Kurup', 'Michael_Ichayan', 'Fists', '2021-08-01 10:16:29'),
(960, 28, 154, 'Jack_Sir', 'Jithu_Mon', 'Deagle', '2021-08-01 10:35:17'),
(961, 76, 22, 'Tva_Joker', 'Mr_Decxo', 'M4', '2021-08-01 10:49:44'),
(962, 81, 67, 'Tva_Saaho', 'KATTALAN_PORINJU', 'Combat shotgun', '2021-08-01 10:49:48'),
(963, 28, 76, 'Jack_Sir', 'Tva_Joker', 'Deagle', '2021-08-01 10:50:04'),
(964, 154, 154, 'Jithu_Mon', 'Jithu_Mon', 'Explosion', '2021-08-01 10:51:34'),
(965, 22, 37, 'Mr_Decxo', 'Revathy_Kutty', 'Combat shotgun', '2021-08-01 10:55:45'),
(966, 49, 22, 'KERP_BOT', 'Mr_Decxo', 'Explosion', '2021-08-01 11:36:56'),
(967, 49, 22, 'KERP_BOT', 'Mr_Decxo', 'Rocket launcher', '2021-08-01 11:41:48'),
(968, 49, 22, 'KERP_BOT', 'Mr_Decxo', 'Rocket launcher', '2021-08-01 11:44:30'),
(969, 49, 40, 'KERP_BOT', 'Ap_AppappaN', 'Rocket launcher', '2021-08-01 11:45:02'),
(970, 49, 22, 'KERP_BOT', 'Mr_Decxo', 'Rocket launcher', '2021-08-01 11:45:02'),
(971, 49, 22, 'KERP_BOT', 'Mr_Decxo', 'Rocket launcher', '2021-08-01 11:45:20'),
(972, 40, 22, 'Ap_AppappaN', 'Mr_Decxo', 'Heat seeking RPG', '2021-08-01 11:45:29'),
(973, 40, 22, 'Ap_AppappaN', 'Mr_Decxo', 'Heat seeking RPG', '2021-08-01 11:46:39'),
(974, 40, 181, 'Ap_AppappaN', 'TECHY_OP', 'Sniper', '2021-08-01 11:51:55'),
(975, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Combat shotgun', '2021-08-01 12:04:10'),
(976, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-01 13:23:56'),
(977, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-01 13:24:10'),
(978, 37, 31, 'Revathy_Kutty', 'DUDE_', 'Helicopter Blades', '2021-08-01 13:26:46'),
(979, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-08-01 13:26:59'),
(980, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-01 13:39:05'),
(981, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-01 13:39:18'),
(982, 67, 67, 'KATTALAN_PORINJU', 'KATTALAN_PORINJU', 'Explosion', '2021-08-01 13:39:51'),
(983, 67, 67, 'KATTALAN_PORINJU', 'KATTALAN_PORINJU', 'Explosion', '2021-08-01 13:41:04'),
(984, 67, 67, 'KATTALAN_PORINJU', 'KATTALAN_PORINJU', 'Explosion', '2021-08-01 13:55:19'),
(985, 67, 67, 'KATTALAN_PORINJU', 'KATTALAN_PORINJU', 'Explosion', '2021-08-01 13:56:01'),
(986, 33, 33, 'Rajan_Nair', 'Rajan_Nair', 'Explosion', '2021-08-01 14:22:17'),
(987, 46, 46, 'BilaL_JohN', 'BilaL_JohN', 'Explosion', '2021-08-01 14:23:53'),
(988, 33, 33, 'Rajan_Nair', 'Rajan_Nair', 'Explosion', '2021-08-01 14:29:30'),
(989, 33, 33, 'Rajan_Nair', 'Rajan_Nair', 'Explosion', '2021-08-01 14:31:21'),
(990, 76, 177, 'Tva_Joker', 'Michael_Ichayan', 'Helicopter Blades', '2021-08-01 15:29:35'),
(991, 63, 63, 'Marshal_Sir', 'Marshal_Sir', 'Explosion', '2021-08-01 15:37:54'),
(992, 165, 165, 'Toby_Marshal', 'Toby_Marshal', 'Explosion', '2021-08-01 15:37:59'),
(993, 63, 63, 'Marshal_Sir', 'Marshal_Sir', 'Explosion', '2021-08-01 15:38:10'),
(994, 98, 40, 'TVA_Sarak', 'Ap_AppappaN', 'Combat shotgun', '2021-08-01 15:39:52'),
(995, 165, 165, 'Toby_Marshal', 'Toby_Marshal', 'Explosion', '2021-08-01 15:40:31'),
(996, 165, 165, 'Toby_Marshal', 'Toby_Marshal', 'Explosion', '2021-08-01 15:40:55'),
(997, 179, 179, 'Maandru_Annan', 'Maandru_Annan', 'Explosion', '2021-08-01 15:51:43'),
(998, 177, 177, 'Michael_Ichayan', 'Michael_Ichayan', 'Explosion', '2021-08-01 15:52:00'),
(999, 179, 179, 'Maandru_Annan', 'Maandru_Annan', 'Explosion', '2021-08-01 15:52:01'),
(1000, 194, 194, 'Ak_Dude', 'Ak_Dude', 'Explosion', '2021-08-01 15:52:11'),
(1001, 177, 177, 'Michael_Ichayan', 'Michael_Ichayan', 'Explosion', '2021-08-01 15:52:17'),
(1002, 194, 194, 'Ak_Dude', 'Ak_Dude', 'Explosion', '2021-08-01 15:52:29'),
(1003, 176, 176, 'Sukumara_Kurup', 'Sukumara_Kurup', 'Explosion', '2021-08-01 15:56:20'),
(1004, 176, 176, 'Sukumara_Kurup', 'Sukumara_Kurup', 'Explosion', '2021-08-01 15:56:34'),
(1005, 76, 76, 'Tva_Joker', 'Tva_Joker', 'Explosion', '2021-08-01 16:00:18'),
(1006, 49, 49, 'KERP_BOT', 'KERP_BOT', 'Explosion', '2021-08-01 16:06:48'),
(1007, 40, 103, 'Ap_AppappaN', 'TVA_Shahahluu', 'M4', '2021-08-01 16:15:00'),
(1008, 40, 103, 'Ap_AppappaN', 'TVA_Shahahluu', 'M4', '2021-08-01 16:15:10'),
(1009, 76, 40, 'Tva_Joker', 'Ap_AppappaN', 'Combat shotgun', '2021-08-01 16:16:00'),
(1010, 40, 40, 'Ap_AppappaN', 'Ap_AppappaN', 'Explosion', '2021-08-01 16:17:16'),
(1011, 76, 22, 'Tva_Joker', 'Mr_Decxo', 'Combat shotgun', '2021-08-01 16:18:55'),
(1012, 98, 98, 'TVA_Sarak', 'TVA_Sarak', 'Explosion', '2021-08-01 16:28:40'),
(1013, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-08-01 16:31:15'),
(1014, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-08-01 16:33:23'),
(1015, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-08-01 16:33:38'),
(1016, 194, 194, 'Ak_Dude', 'Ak_Dude', 'Explosion', '2021-08-01 16:35:12'),
(1017, 194, 194, 'Ak_Dude', 'Ak_Dude', 'Explosion', '2021-08-01 16:35:27'),
(1018, 98, 98, 'TVA_Sarak', 'TVA_Sarak', 'Explosion', '2021-08-01 16:38:06'),
(1019, 76, 39, 'Tva_Joker', 'Jhonny_Kuttan', 'Combat shotgun', '2021-08-01 16:42:28'),
(1020, 76, 80, 'Tva_Joker', 'Tva_Babu', 'Combat shotgun', '2021-08-01 16:47:20'),
(1021, 76, 80, 'Tva_Joker', 'Tva_Babu', 'Combat shotgun', '2021-08-01 16:47:30'),
(1022, 22, 80, 'Mr_Decxo', 'Tva_Babu', 'Combat shotgun', '2021-08-01 16:49:49'),
(1023, 22, 98, 'Mr_Decxo', 'TVA_Sarak', 'Combat shotgun', '2021-08-01 16:49:54'),
(1024, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-08-01 16:51:07'),
(1025, 22, 73, 'Mr_Decxo', 'Johny_Vick', 'Combat shotgun', '2021-08-01 16:52:06'),
(1026, 76, 22, 'Tva_Joker', 'Mr_Decxo', 'M4', '2021-08-01 16:52:14'),
(1027, 40, 76, 'Ap_AppappaN', 'Tva_Joker', 'Combat shotgun', '2021-08-01 16:52:23'),
(1028, 25, 80, 'Wizz_Annann', 'Tva_Babu', 'Mac-10', '2021-08-01 16:52:29'),
(1029, 73, 73, 'Johny_Vick', 'Johny_Vick', 'Explosion', '2021-08-01 16:52:36'),
(1030, 40, 81, 'Ap_AppappaN', 'Tva_Saaho', 'Combat shotgun', '2021-08-01 16:52:36'),
(1031, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-08-01 16:52:59'),
(1032, 98, 22, 'TVA_Sarak', 'Mr_Decxo', 'M4', '2021-08-01 16:52:59'),
(1033, 40, 98, 'Ap_AppappaN', 'TVA_Sarak', 'Combat shotgun', '2021-08-01 16:53:08'),
(1034, 25, 81, 'Wizz_Annann', 'Tva_Saaho', 'Combat shotgun', '2021-08-01 16:53:14'),
(1035, 98, 98, 'TVA_Sarak', 'TVA_Sarak', 'Explosion', '2021-08-01 16:53:23'),
(1036, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-01 16:53:26'),
(1037, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-01 16:53:40'),
(1038, 76, 76, 'Tva_Joker', 'Tva_Joker', 'Explosion', '2021-08-01 16:54:58'),
(1039, 67, 67, 'KATTALAN_PORINJU', 'KATTALAN_PORINJU', 'Explosion', '2021-08-01 16:55:56'),
(1040, 67, 67, 'KATTALAN_PORINJU', 'KATTALAN_PORINJU', 'Explosion', '2021-08-01 16:56:15'),
(1041, 24, 24, 'Devil_Jack', 'Devil_Jack', 'Explosion', '2021-08-01 17:04:00'),
(1042, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-08-01 17:15:27'),
(1043, 176, 176, 'Sukumara_Kurup', 'Sukumara_Kurup', 'Explosion', '2021-08-01 17:16:39'),
(1044, 98, 40, 'TVA_Sarak', 'Ap_AppappaN', 'Sniper', '2021-08-01 17:17:55'),
(1045, 22, 76, 'Mr_Decxo', 'Tva_Joker', 'Sniper', '2021-08-01 17:18:23'),
(1046, 22, 73, 'Mr_Decxo', 'Johny_Vick', 'M4', '2021-08-01 17:20:04'),
(1047, 73, 73, 'Johny_Vick', 'Johny_Vick', 'Explosion', '2021-08-01 17:20:21'),
(1048, 81, 67, 'Tva_Saaho', 'KATTALAN_PORINJU', 'Combat shotgun', '2021-08-01 17:22:30'),
(1049, 22, 31, 'Mr_Decxo', 'DUDE_', 'Sniper', '2021-08-01 17:23:21'),
(1050, 176, 176, 'Sukumara_Kurup', 'Sukumara_Kurup', 'Explosion', '2021-08-01 17:26:43'),
(1051, 21, 40, 'Daniel_Annan', 'Ap_AppappaN', 'Deagle', '2021-08-01 17:45:27'),
(1052, 80, 86, 'Tva_Babu', 'Mr_Minnal', 'Combat shotgun', '2021-08-01 18:05:36'),
(1053, 81, 40, 'Tva_Saaho', 'Ap_AppappaN', 'Combat shotgun', '2021-08-01 18:27:05'),
(1054, 81, 67, 'Tva_Saaho', 'KATTALAN_PORINJU', 'Combat shotgun', '2021-08-01 18:27:33'),
(1055, 22, 81, 'Mr_Decxo', 'Tva_Saaho', 'Combat shotgun', '2021-08-01 18:27:34'),
(1056, 100, 40, 'Mr_Moosa', 'Ap_AppappaN', 'Combat shotgun', '2021-08-01 18:33:23'),
(1057, 80, 115, 'Tva_Babu', 'Marshal_Leo', 'Combat shotgun', '2021-08-01 18:51:43'),
(1058, 40, 80, 'Ap_AppappaN', 'Tva_Babu', 'M4', '2021-08-01 18:51:49'),
(1059, 25, 40, 'Wizz_Annann', 'Ap_AppappaN', 'Combat shotgun', '2021-08-01 19:04:59'),
(1060, 22, 25, 'Mr_Decxo', 'Wizz_Annann', 'Deagle', '2021-08-01 19:40:32'),
(1061, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'Fists', '2021-08-01 19:40:45'),
(1062, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Sniper', '2021-08-01 20:39:51'),
(1063, 25, 22, 'Wizz_Annann', 'Mr_Decxo', 'Sniper', '2021-08-01 20:42:37'),
(1064, 22, 40, 'Mr_Decxo', 'Ap_AppappaN', 'Helicopter Blades', '2021-08-01 21:34:13'),
(1065, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-08-02 03:49:20'),
(1066, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-08-02 03:49:44'),
(1067, 196, 196, 'Charlie_Chaplin', 'Charlie_Chaplin', 'Explosion', '2021-08-02 05:35:25'),
(1068, 25, 39, 'Wizz_Annann', 'Jhonny_Kuttan', 'M4', '2021-08-02 06:11:42'),
(1069, 81, 25, 'Tva_Saaho', 'Wizz_Annann', 'Combat shotgun', '2021-08-02 06:12:33'),
(1070, 25, 25, 'Wizz_Annann', 'Wizz_Annann', 'Explosion', '2021-08-02 06:40:27'),
(1071, 142, 81, 'Ashw_Athy', 'Tva_Saaho', 'Deagle', '2021-08-02 06:41:05'),
(1072, 25, 81, 'Wizz_Annann', 'Tva_Saaho', 'Combat shotgun', '2021-08-02 06:46:00'),
(1073, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-02 06:51:01'),
(1074, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-02 06:51:15'),
(1075, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-02 06:53:48'),
(1076, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-02 06:54:04'),
(1077, 25, 81, 'Wizz_Annann', 'Tva_Saaho', 'Combat shotgun', '2021-08-02 07:05:54'),
(1078, 25, 81, 'Wizz_Annann', 'Tva_Saaho', 'Combat shotgun', '2021-08-02 07:06:19'),
(1079, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-08-02 07:07:26'),
(1080, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-08-02 07:10:00'),
(1081, 25, 115, 'Wizz_Annann', 'Marshal_Leo', 'Combat shotgun', '2021-08-02 07:24:19'),
(1082, 25, 103, 'Wizz_Annann', 'TVA_Shahahluu', 'Combat shotgun', '2021-08-02 08:56:02'),
(1083, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-02 09:22:53'),
(1084, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-02 09:23:09'),
(1085, 33, 37, 'Rajan_Nair', 'Revathy_Kutty', 'Fists', '2021-08-02 10:19:04'),
(1086, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-02 10:19:20'),
(1087, 81, 117, 'Tva_Saaho', 'Simon_Pokkiri', 'Combat shotgun', '2021-08-02 10:41:31'),
(1088, 117, 117, 'Simon_Pokkiri', 'Simon_Pokkiri', 'Explosion', '2021-08-02 10:41:58'),
(1089, 165, 165, 'Toby_Marshal', 'Toby_Marshal', 'Explosion', '2021-08-02 10:44:35'),
(1090, 63, 63, 'Marshal_Sir', 'Marshal_Sir', 'Explosion', '2021-08-02 10:44:43'),
(1091, 63, 63, 'Marshal_Sir', 'Marshal_Sir', 'Explosion', '2021-08-02 10:45:02'),
(1092, 117, 39, 'Simon_Pokkiri', 'Jhonny_Kuttan', 'Combat shotgun', '2021-08-02 10:47:40'),
(1093, 117, 81, 'Simon_Pokkiri', 'Tva_Saaho', 'M4', '2021-08-02 10:49:39'),
(1094, 80, 81, 'Tva_Babu', 'Tva_Saaho', 'M4', '2021-08-02 10:50:06'),
(1095, 155, 155, 'Poongari_Shashi', 'Poongari_Shashi', 'Explosion', '2021-08-02 10:50:32'),
(1096, 117, 80, 'Simon_Pokkiri', 'Tva_Babu', 'Fists', '2021-08-02 10:51:55'),
(1097, 80, 80, 'Tva_Babu', 'Tva_Babu', 'Explosion', '2021-08-02 10:53:29'),
(1098, 117, 81, 'Simon_Pokkiri', 'Tva_Saaho', 'M4', '2021-08-02 10:53:34'),
(1099, 76, 117, 'Tva_Joker', 'Simon_Pokkiri', 'Combat shotgun', '2021-08-02 10:54:00'),
(1100, 155, 155, 'Poongari_Shashi', 'Poongari_Shashi', 'Explosion', '2021-08-02 10:54:33'),
(1101, 76, 81, 'Tva_Joker', 'Tva_Saaho', 'Combat shotgun', '2021-08-02 10:55:18'),
(1102, 76, 117, 'Tva_Joker', 'Simon_Pokkiri', 'Combat shotgun', '2021-08-02 10:55:44'),
(1103, 81, 117, 'Tva_Saaho', 'Simon_Pokkiri', 'Combat shotgun', '2021-08-02 10:58:36'),
(1104, 76, 117, 'Tva_Joker', 'Simon_Pokkiri', 'M4', '2021-08-02 10:59:53'),
(1105, 81, 117, 'Tva_Saaho', 'Simon_Pokkiri', 'Combat shotgun', '2021-08-02 11:05:43'),
(1106, 81, 117, 'Tva_Saaho', 'Simon_Pokkiri', 'Combat shotgun', '2021-08-02 11:06:44'),
(1107, 117, 103, 'Simon_Pokkiri', 'TVA_Shahahluu', 'Fists', '2021-08-02 11:11:17'),
(1108, 81, 103, 'Tva_Saaho', 'TVA_Shahahluu', 'Combat shotgun', '2021-08-02 11:16:22'),
(1109, 165, 165, 'Toby_Marshal', 'Toby_Marshal', 'Explosion', '2021-08-02 11:19:37'),
(1110, 165, 165, 'Toby_Marshal', 'Toby_Marshal', 'Explosion', '2021-08-02 11:19:57'),
(1111, 103, 81, 'TVA_Shahahluu', 'Tva_Saaho', 'Sniper', '2021-08-02 11:20:01'),
(1112, 103, 81, 'TVA_Shahahluu', 'Tva_Saaho', 'Helicopter Blades', '2021-08-02 11:23:32'),
(1113, 165, 165, 'Toby_Marshal', 'Toby_Marshal', 'Explosion', '2021-08-02 11:25:48'),
(1114, 165, 165, 'Toby_Marshal', 'Toby_Marshal', 'Explosion', '2021-08-02 11:26:03'),
(1115, 165, 165, 'Toby_Marshal', 'Toby_Marshal', 'Explosion', '2021-08-02 11:29:54'),
(1116, 63, 63, 'Marshal_Sir', 'Marshal_Sir', 'Explosion', '2021-08-02 11:34:06'),
(1117, 63, 63, 'Marshal_Sir', 'Marshal_Sir', 'Explosion', '2021-08-02 11:35:09'),
(1118, 41, 41, 'su_vasu', 'su_vasu', 'Explosion', '2021-08-02 11:46:58'),
(1119, 67, 67, 'KATTALAN_PORINJU', 'KATTALAN_PORINJU', 'Explosion', '2021-08-02 11:47:02'),
(1120, 67, 67, 'KATTALAN_PORINJU', 'KATTALAN_PORINJU', 'Explosion', '2021-08-02 11:47:28'),
(1121, 41, 41, 'su_vasu', 'su_vasu', 'Explosion', '2021-08-02 11:54:14'),
(1122, 25, 25, 'Wizz_Annann', 'Wizz_Annann', 'Explosion', '2021-08-02 12:01:37'),
(1123, 165, 165, 'Toby_Marshal', 'Toby_Marshal', 'Explosion', '2021-08-02 12:03:40'),
(1124, 165, 165, 'Toby_Marshal', 'Toby_Marshal', 'Explosion', '2021-08-02 12:03:54'),
(1125, 40, 22, 'Ap_AppappaN', 'Mr_Decxo', 'Fists', '2021-08-02 12:30:11'),
(1126, 100, 179, 'Mr_Moosa', 'Maandru_Annan', 'M4', '2021-08-02 14:31:54'),
(1127, 177, 177, 'Michael_Ichayan', 'Michael_Ichayan', 'Explosion', '2021-08-02 15:02:28'),
(1128, 177, 177, 'Michael_Ichayan', 'Michael_Ichayan', 'Explosion', '2021-08-02 15:02:46'),
(1129, 63, 63, 'Marshal_Sir', 'Marshal_Sir', 'Explosion', '2021-08-02 15:22:03'),
(1130, 98, 98, 'TVA_Sarak', 'TVA_Sarak', 'Explosion', '2021-08-02 15:32:33'),
(1131, 40, 202, 'Ap_AppappaN', 'Rossy_Mol', 'Combat shotgun', '2021-08-02 15:43:17'),
(1132, 40, 103, 'Ap_AppappaN', 'TVA_Shahahluu', 'Combat shotgun', '2021-08-02 15:43:31'),
(1133, 40, 202, 'Ap_AppappaN', 'Rossy_Mol', 'Combat shotgun', '2021-08-02 15:44:42'),
(1134, 40, 103, 'Ap_AppappaN', 'TVA_Shahahluu', 'Combat shotgun', '2021-08-02 15:44:55'),
(1135, 98, 98, 'TVA_Sarak', 'TVA_Sarak', 'Explosion', '2021-08-02 15:50:38'),
(1136, 142, 142, 'Ashw_Athy', 'Ashw_Athy', 'Explosion', '2021-08-02 15:50:44'),
(1137, 49, 40, 'KERP_BOT', 'Ap_AppappaN', 'Silenced pistol', '2021-08-02 16:09:34'),
(1138, 22, 49, 'Mr_Decxo', 'KERP_BOT', 'Deagle', '2021-08-02 16:12:17'),
(1139, 22, 49, 'Mr_Decxo', 'KERP_BOT', 'Fists', '2021-08-02 16:15:01'),
(1140, 104, 98, 'Saleo_', 'TVA_Sarak', 'M4', '2021-08-02 16:16:44'),
(1141, 103, 104, 'TVA_Shahahluu', 'Saleo_', 'M4', '2021-08-02 16:16:46'),
(1142, 31, 103, 'DUDE_', 'TVA_Shahahluu', 'Combat shotgun', '2021-08-02 16:17:00'),
(1143, 76, 31, 'Tva_Joker', 'DUDE_', 'M4', '2021-08-02 16:17:11'),
(1144, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-08-02 16:17:26'),
(1145, 104, 104, 'Saleo_', 'Saleo_', 'Explosion', '2021-08-02 16:17:32'),
(1146, 76, 27, 'Tva_Joker', 'phyco_muthalaly', 'M4', '2021-08-02 16:17:37'),
(1147, 27, 27, 'phyco_muthalaly', 'phyco_muthalaly', 'Explosion', '2021-08-02 16:17:54'),
(1148, 98, 98, 'TVA_Sarak', 'TVA_Sarak', 'Explosion', '2021-08-02 16:18:25'),
(1149, 67, 67, 'KATTALAN_PORINJU', 'KATTALAN_PORINJU', 'Explosion', '2021-08-02 16:23:02'),
(1150, 67, 67, 'KATTALAN_PORINJU', 'KATTALAN_PORINJU', 'Explosion', '2021-08-02 16:23:25'),
(1151, 31, 31, 'DUDE_', 'DUDE_', 'Explosion', '2021-08-02 16:24:19'),
(1152, 98, 104, 'TVA_Sarak', 'Saleo_', 'Combat shotgun', '2021-08-02 16:24:27'),
(1153, 27, 27, 'phyco_muthalaly', 'phyco_muthalaly', 'Explosion', '2021-08-02 16:24:29'),
(1154, 104, 104, 'Saleo_', 'Saleo_', 'Explosion', '2021-08-02 16:24:41'),
(1155, 103, 76, 'TVA_Shahahluu', 'Tva_Joker', 'M4', '2021-08-02 16:27:26'),
(1156, 76, 76, 'Tva_Joker', 'Tva_Joker', 'Explosion', '2021-08-02 16:27:45'),
(1157, 98, 98, 'TVA_Sarak', 'TVA_Sarak', 'Explosion', '2021-08-02 16:28:03'),
(1158, 113, 113, 'El_Professor', 'El_Professor', 'Explosion', '2021-08-02 16:47:24'),
(1159, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-02 17:05:01'),
(1160, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-02 17:05:16'),
(1161, 46, 103, 'BilaL_JohN', 'TVA_Shahahluu', 'Deagle', '2021-08-02 17:50:30'),
(1162, 46, 103, 'BilaL_JohN', 'TVA_Shahahluu', 'M4', '2021-08-02 17:53:24'),
(1163, 142, 142, 'Ashw_Athy', 'Ashw_Athy', 'Explosion', '2021-08-02 18:03:43'),
(1164, 142, 142, 'Ashw_Athy', 'Ashw_Athy', 'Explosion', '2021-08-02 18:03:58'),
(1165, 142, 142, 'Ashw_Athy', 'Ashw_Athy', 'Explosion', '2021-08-02 18:04:05'),
(1166, 142, 142, 'Ashw_Athy', 'Ashw_Athy', 'Explosion', '2021-08-02 18:05:55'),
(1167, 142, 142, 'Ashw_Athy', 'Ashw_Athy', 'Explosion', '2021-08-02 18:24:48'),
(1168, 142, 142, 'Ashw_Athy', 'Ashw_Athy', 'Explosion', '2021-08-02 18:25:03'),
(1169, 34, 34, 'Bullet_Dathan', 'Bullet_Dathan', 'Explosion', '2021-08-02 18:44:51'),
(1170, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-02 18:56:46'),
(1171, 25, 103, 'Wizz_Annann', 'TVA_Shahahluu', 'Combat shotgun', '2021-08-02 19:12:24'),
(1172, 34, 104, 'Bullet_Dathan', 'Saleo_', 'M4', '2021-08-02 19:12:31'),
(1173, 25, 103, 'Wizz_Annann', 'TVA_Shahahluu', 'Combat shotgun', '2021-08-02 19:13:14'),
(1174, 25, 104, 'Wizz_Annann', 'Saleo_', 'Combat shotgun', '2021-08-02 19:13:18'),
(1175, 40, 22, 'Ap_AppappaN', 'Mr_Decxo', 'AK-47', '2021-08-02 19:37:06'),
(1176, 98, 40, 'TVA_Sarak', 'Ap_AppappaN', 'M4', '2021-08-02 19:38:24'),
(1177, 40, 98, 'Ap_AppappaN', 'TVA_Sarak', 'AK-47', '2021-08-02 19:39:05'),
(1178, 40, 98, 'Ap_AppappaN', 'TVA_Sarak', 'AK-47', '2021-08-02 19:39:49'),
(1179, 40, 98, 'Ap_AppappaN', 'TVA_Sarak', 'AK-47', '2021-08-02 19:40:18'),
(1180, 98, 40, 'TVA_Sarak', 'Ap_AppappaN', 'Combat shotgun', '2021-08-02 19:40:30'),
(1181, 98, 40, 'TVA_Sarak', 'Ap_AppappaN', 'Combat shotgun', '2021-08-02 19:40:47'),
(1182, 98, 40, 'TVA_Sarak', 'Ap_AppappaN', 'Combat shotgun', '2021-08-02 19:40:53'),
(1183, 98, 40, 'TVA_Sarak', 'Ap_AppappaN', 'Combat shotgun', '2021-08-02 19:41:40'),
(1184, 40, 98, 'Ap_AppappaN', 'TVA_Sarak', 'AK-47', '2021-08-02 19:41:49'),
(1185, 33, 25, 'KERP_RAJ', 'Wizz_Annann', 'AK-47', '2021-08-02 19:42:14'),
(1186, 98, 40, 'TVA_Sarak', 'Ap_AppappaN', 'Mac-10', '2021-08-02 19:42:21'),
(1187, 33, 98, 'KERP_RAJ', 'TVA_Sarak', 'AK-47', '2021-08-02 19:42:21'),
(1188, 33, 25, 'KERP_RAJ', 'Wizz_Annann', 'AK-47', '2021-08-02 19:42:29'),
(1189, 98, 40, 'TVA_Sarak', 'Ap_AppappaN', 'Combat shotgun', '2021-08-02 19:42:49'),
(1190, 25, 98, 'Wizz_Annann', 'TVA_Sarak', 'Combat shotgun', '2021-08-02 19:42:53'),
(1191, 25, 40, 'Wizz_Annann', 'Ap_AppappaN', 'Combat shotgun', '2021-08-02 19:42:58'),
(1192, 40, 25, 'Ap_AppappaN', 'Wizz_Annann', 'AK-47', '2021-08-02 19:43:18'),
(1193, 98, 40, 'TVA_Sarak', 'Ap_AppappaN', 'Combat shotgun', '2021-08-02 19:43:22'),
(1194, 98, 40, 'TVA_Sarak', 'Ap_AppappaN', 'Combat shotgun', '2021-08-02 19:43:30'),
(1195, 98, 40, 'TVA_Sarak', 'Ap_AppappaN', 'M4', '2021-08-02 19:43:44'),
(1196, 98, 25, 'TVA_Sarak', 'Wizz_Annann', 'Combat shotgun', '2021-08-02 19:43:50'),
(1197, 33, 33, 'Rajan_Nair', 'Rajan_Nair', 'Explosion', '2021-08-02 20:02:05'),
(1198, 194, 194, 'Ak_Dude', 'Ak_Dude', 'Explosion', '2021-08-03 02:31:42'),
(1199, 151, 81, 'Anja_Na', 'Tva_Saaho', 'Sniper', '2021-08-03 04:04:43'),
(1200, 151, 151, 'Anja_Na', 'Anja_Na', 'Explosion', '2021-08-03 04:08:04'),
(1201, 81, 81, 'Tva_Saaho', 'Tva_Saaho', 'Explosion', '2021-08-03 04:08:22'),
(1202, 151, 151, 'Anja_Na', 'Anja_Na', 'Explosion', '2021-08-03 04:08:27'),
(1203, 113, 113, 'El_professor', 'El_professor', 'Explosion', '2021-08-03 04:42:30'),
(1204, 113, 113, 'El_professor', 'El_professor', 'Explosion', '2021-08-03 04:42:47'),
(1205, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-08-03 04:51:26'),
(1206, 22, 22, 'Mr_Decxo', 'Mr_Decxo', 'Explosion', '2021-08-03 04:51:48'),
(1207, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-03 05:07:28'),
(1208, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-03 05:07:45'),
(1209, 22, 37, 'Mr_Decxo', 'Revathy_Kutty', 'Car parking', '2021-08-03 05:10:26'),
(1210, 37, 37, 'Revathy_Kutty', 'Revathy_Kutty', 'Explosion', '2021-08-03 05:10:43'),
(1211, 21, 40, 'Daniel_Annan', 'Ap_AppappaN', 'M4', '2021-08-03 05:46:24'),
(1212, 103, 98, 'TVA_Shahahluu', 'TVA_Sarak', 'Helicopter Blades', '2021-08-03 06:22:00'),
(1213, 98, 98, 'TVA_Sarak', 'TVA_Sarak', 'Explosion', '2021-08-03 06:23:01'),
(1214, 98, 98, 'TVA_Sarak', 'TVA_Sarak', 'Explosion', '2021-08-03 07:19:58'),
(1215, 98, 98, 'TVA_Sarak', 'TVA_Sarak', 'Explosion', '2021-08-03 07:20:13'),
(1216, 165, 165, 'Toby_Marshal', 'Toby_Marshal', 'Explosion', '2021-08-03 07:25:06'),
(1217, 165, 165, 'Toby_Marshal', 'Toby_Marshal', 'Explosion', '2021-08-03 07:25:28'),
(1218, 27, 27, 'phyco_muthalaly', 'phyco_muthalaly', 'Explosion', '2021-08-03 07:29:13'),
(1219, 98, 98, 'TVA_Sarak', 'TVA_Sarak', 'Explosion', '2021-08-03 07:32:05'),
(1220, 209, 209, 'Udumb_Vasu', 'Udumb_Vasu', 'Explosion', '2022-01-25 14:51:21'),
(1221, 213, 207, 'Keerikkadan_Jose', 'Mr_Paco', 'Fists', '2022-01-27 09:43:38'),
(1222, 209, 209, 'Udumb_Vasu', 'Udumb_Vasu', 'Explosion', '2022-01-27 10:11:27'),
(1223, 207, 207, 'Mr_Paco', 'Mr_Paco', 'Explosion', '2022-01-28 05:24:53'),
(1224, 207, 207, 'Mr_Paco', 'Mr_Paco', 'Explosion', '2022-01-28 05:25:36'),
(1225, 240, 224, 'Ace_Rocky', 'Mr_Trenexe', 'Car parking', '2022-01-28 14:50:24'),
(1226, 221, 221, 'Raquel_Murillo', 'Raquel_Murillo', 'Explosion', '2022-01-28 15:12:28'),
(1227, 221, 254, 'Raquel_Murillo', 'David_Unni', 'Helicopter Blades', '2022-01-28 16:27:13'),
(1228, 240, 226, 'Ace_Rocky', 'Kallipulla_Achu', 'Fists', '2022-01-28 17:17:27'),
(1229, 226, 226, 'Kallipulla_Achu', 'Kallipulla_Achu', 'Explosion', '2022-01-28 17:17:59'),
(1230, 258, 258, 'Kmc_Hybolt', 'Kmc_Hybolt', 'Explosion', '2022-01-28 17:27:17'),
(1231, 249, 240, 'Anjali_Anju', 'Ace_Rocky', 'M4', '2022-01-28 17:58:28'),
(1232, 258, 240, 'Kmc_Hybolt', 'Ace_Rocky', 'Fists', '2022-01-28 18:01:02'),
(1233, 253, 258, 'Rocky_Star', 'Kmc_Hybolt', 'Helicopter Blades', '2022-01-28 18:16:27'),
(1234, 253, 253, 'Rocky_Star', 'Rocky_Star', 'Explosion', '2022-01-28 18:28:12'),
(1235, 240, 240, 'Ace_Rocky', 'Ace_Rocky', 'Explosion', '2022-01-28 19:41:31'),
(1236, 236, 236, 'Chintu_Kuttan', 'Chintu_Kuttan', 'Explosion', '2022-01-29 08:18:59'),
(1237, 239, 239, 'Maztro_Don', 'Maztro_Don', 'Explosion', '2022-01-29 08:21:44'),
(1238, 221, 221, 'Raquel_Murillo', 'Raquel_Murillo', 'Explosion', '2022-01-29 08:21:57'),
(1239, 239, 239, 'Maztro_Don', 'Maztro_Don', 'Explosion', '2022-01-29 08:21:59'),
(1240, 245, 245, 'Miya_Kutty', 'Miya_Kutty', 'Explosion', '2022-01-29 09:27:06'),
(1241, 239, 239, 'Maztro_Don', 'Maztro_Don', 'Explosion', '2022-01-29 09:37:43'),
(1242, 239, 239, 'Maztro_Don', 'Maztro_Don', 'Explosion', '2022-01-29 09:38:00'),
(1243, 226, 226, 'Kallipulla_Achu', 'Kallipulla_Achu', 'Explosion', '2022-01-29 10:06:33'),
(1244, 223, 223, 'Kunjappan_Us', 'Kunjappan_Us', 'Explosion', '2022-01-29 10:14:54'),
(1245, 223, 223, 'Kunjappan_Us', 'Kunjappan_Us', 'Explosion', '2022-01-29 10:15:07'),
(1246, 223, 223, 'Kunjappan_Us', 'Kunjappan_Us', 'Explosion', '2022-01-29 10:16:52'),
(1247, 223, 223, 'Kunjappan_Us', 'Kunjappan_Us', 'Explosion', '2022-01-29 10:17:07'),
(1248, 258, 224, 'Kmc_Hybolt', 'Mr_Trenexe', 'Helicopter Blades', '2022-01-29 11:43:20'),
(1249, 253, 253, 'Rocky_Star', 'Rocky_Star', 'Explosion', '2022-01-29 14:25:42'),
(1250, 226, 224, 'Kallipulla_Achu', 'Mr_Trenexe', 'Fists', '2022-01-29 15:19:02'),
(1251, 239, 239, 'Maztro_Don', 'Maztro_Don', 'Explosion', '2022-01-29 15:40:50'),
(1252, 239, 239, 'Maztro_Don', 'Maztro_Don', 'Explosion', '2022-01-29 15:41:04'),
(1253, 245, 275, 'Miya_Kutty', 'Jimbru_Mon', 'Vehicle', '2022-01-29 16:22:59'),
(1254, 265, 265, 'Lucifer_Annan', 'Lucifer_Annan', 'Explosion', '2022-01-29 19:06:51'),
(1255, 265, 265, 'Lucifer_Annan', 'Lucifer_Annan', 'Explosion', '2022-01-29 19:07:13'),
(1256, 240, 240, 'Ace_Rocky', 'Ace_Rocky', 'Explosion', '2022-01-29 19:07:56'),
(1257, 240, 240, 'Ace_Rocky', 'Ace_Rocky', 'Explosion', '2022-01-29 19:08:27'),
(1258, 235, 220, 'Joji_Xz', 'Vincent_Thomas', 'Vehicle', '2022-01-30 03:53:46'),
(1259, 226, 226, 'Kallipulla_Achu', 'Kallipulla_Achu', 'Explosion', '2022-01-30 03:57:35'),
(1260, 224, 224, 'Mr_Trenexe', 'Mr_Trenexe', 'Explosion', '2022-01-30 04:01:31'),
(1261, 224, 224, 'Mr_Trenexe', 'Mr_Trenexe', 'Explosion', '2022-01-30 04:02:04'),
(1262, 249, 249, 'Anjali_Anju', 'Anjali_Anju', 'Explosion', '2022-01-30 04:57:38'),
(1263, 207, 220, 'Mr_Paco', 'Vincent_Thomas', 'M4', '2022-01-30 06:00:26'),
(1264, 222, 254, 'Mk_Carlo', 'David_Unni', 'Vehicle', '2022-01-30 06:17:57'),
(1265, 220, 249, 'Vincent_Thomas', 'Anjali_Anju', 'M4', '2022-01-30 06:39:16'),
(1266, 220, 219, 'Vincent_Thomas', 'Kallipulla_Dude', 'M4', '2022-01-30 06:39:20'),
(1267, 222, 222, 'Mk_Carlo', 'Mk_Carlo', 'Explosion', '2022-01-30 07:14:04'),
(1268, 269, 269, 'Ace_Mani', 'Ace_Mani', 'Explosion', '2022-01-30 07:47:41'),
(1269, 269, 269, 'Ace_Mani', 'Ace_Mani', 'Explosion', '2022-01-30 07:53:44'),
(1270, 269, 269, 'Ace_Mani', 'Ace_Mani', 'Explosion', '2022-01-30 08:13:48'),
(1271, 269, 269, 'Ace_Mani', 'Ace_Mani', 'Explosion', '2022-01-30 08:14:16'),
(1272, 249, 249, 'Anjali_Anju', 'Anjali_Anju', 'Explosion', '2022-01-30 08:37:41'),
(1273, 249, 242, 'Anjali_Anju', 'Mk_Kuttusan', 'Fists', '2022-01-30 09:05:24'),
(1274, 239, 239, 'Maztro_Don', 'Maztro_Don', 'Explosion', '2022-01-30 09:07:18'),
(1275, 239, 239, 'Maztro_Don', 'Maztro_Don', 'Explosion', '2022-01-30 09:07:33'),
(1276, 239, 239, 'Maztro_Don', 'Maztro_Don', 'Explosion', '2022-01-30 09:24:30'),
(1277, 239, 239, 'Maztro_Don', 'Maztro_Don', 'Explosion', '2022-01-30 09:24:44'),
(1278, 219, 242, 'Kallipulla_Dude', 'Mk_Kuttusan', 'M4', '2022-01-30 10:04:01'),
(1279, 265, 265, 'Lucifer_Annan', 'Lucifer_Annan', 'Explosion', '2022-01-30 10:14:23'),
(1280, 265, 265, 'Lucifer_Annan', 'Lucifer_Annan', 'Explosion', '2022-01-30 10:14:39'),
(1281, 265, 265, 'Lucifer_Annan', 'Lucifer_Annan', 'Explosion', '2022-01-30 10:30:33'),
(1282, 265, 265, 'Lucifer_Annan', 'Lucifer_Annan', 'Explosion', '2022-01-30 10:30:48'),
(1283, 237, 261, 'Jack_Settan', 'Pavithran_Kunj', 'MP5', '2022-01-30 10:40:06'),
(1284, 261, 237, 'Pavithran_Kunj', 'Jack_Settan', 'M4', '2022-01-30 10:40:41'),
(1285, 223, 235, 'GOD', 'Joji_Xz', 'Helicopter Blades', '2022-01-30 11:32:02'),
(1286, 223, 265, 'GOD', 'Lucifer_Annan', 'Helicopter Blades', '2022-01-30 11:32:03'),
(1287, 230, 230, 'German_Kannapi', 'German_Kannapi', 'Explosion', '2022-01-30 11:34:10'),
(1288, 254, 222, 'David_Unni', 'Mk_Carlo', 'Vehicle', '2022-01-30 11:38:49'),
(1289, 227, 282, 'Techy_Tom', 'Mk_verappan', 'Helicopter Blades', '2022-01-30 11:49:23'),
(1290, 282, 282, 'Mk_verappan', 'Mk_verappan', 'Explosion', '2022-01-30 11:49:49'),
(1291, 219, 227, 'Kallipulla_Dude', 'Techy_Tom', 'Shotgun', '2022-01-30 11:50:24'),
(1292, 219, 219, 'Kallipulla_Dude', 'Kallipulla_Dude', 'Explosion', '2022-01-30 11:50:40'),
(1293, 227, 219, 'Techy_Tom', 'Kallipulla_Dude', 'M4', '2022-01-30 11:50:53'),
(1294, 230, 230, 'German_Kannapi', 'German_Kannapi', 'Explosion', '2022-01-30 11:57:57'),
(1295, 230, 230, 'German_Kannapi', 'German_Kannapi', 'Explosion', '2022-01-30 11:58:15');
INSERT INTO `kills` (`id`, `killer_uid`, `target_uid`, `killer`, `target`, `reason`, `date`) VALUES
(1296, 240, 265, 'Ace_Rocky', 'Lucifer_Annan', 'Helicopter Blades', '2022-01-30 12:00:43'),
(1297, 222, 222, 'Mk_Carlo', 'Mk_Carlo', 'Explosion', '2022-01-30 12:10:49'),
(1298, 222, 222, 'Mk_Carlo', 'Mk_Carlo', 'Explosion', '2022-01-30 12:11:04'),
(1299, 282, 282, 'Mk_verappan', 'Mk_verappan', 'Explosion', '2022-01-30 12:33:57'),
(1300, 282, 282, 'Mk_verappan', 'Mk_verappan', 'Explosion', '2022-01-30 12:35:38'),
(1301, 282, 282, 'Mk_verappan', 'Mk_verappan', 'Explosion', '2022-01-30 12:55:11'),
(1302, 282, 282, 'Mk_verappan', 'Mk_verappan', 'Explosion', '2022-01-30 12:55:32'),
(1303, 227, 220, 'Techy_Tom', 'Vincent_Thomas', 'Helicopter Blades', '2022-01-30 13:28:43'),
(1304, 239, 239, 'Maztro_Don', 'Maztro_Don', 'Explosion', '2022-01-30 14:03:18'),
(1305, 254, 226, 'David_Unni', 'Kallipulla_Achu', 'Cuntgun', '2022-01-30 15:23:04'),
(1306, 237, 265, 'Jack_Settan', 'Lucifer_Annan', 'Bat', '2022-01-30 15:33:00'),
(1307, 265, 265, 'Lucifer_Annan', 'Lucifer_Annan', 'Explosion', '2022-01-30 15:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `landobjects`
--

CREATE TABLE `landobjects` (
  `id` int(10) NOT NULL,
  `landid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT 0,
  `door_locked` tinyint(1) DEFAULT 0,
  `move_x` float DEFAULT 0,
  `move_y` float DEFAULT 0,
  `move_z` float DEFAULT 0,
  `move_rx` float DEFAULT 0,
  `move_ry` float DEFAULT 0,
  `move_rz` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lands`
--

CREATE TABLE `lands` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `price` int(10) DEFAULT 0,
  `min_x` float DEFAULT 0,
  `min_y` float DEFAULT 0,
  `max_x` float DEFAULT 0,
  `max_y` float DEFAULT 0,
  `height` float DEFAULT 0,
  `lx` float NOT NULL,
  `ly` float NOT NULL,
  `lz` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_admin`
--

CREATE TABLE `log_admin` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_admin`
--

INSERT INTO `log_admin` (`id`, `date`, `description`) VALUES
(1, '2021-08-03 08:45:21', 'Dude_Op (uid: 20) whitelist Dude_Op\'s account.'),
(2, '2021-08-03 08:45:36', 'Dude_Op (uid: 20) whitelist Shaji_Pappan\'s account.'),
(3, '2021-08-03 08:50:46', 'Shaji_Pappan (uid: 19) whitelist charlie_choklli\'s account.'),
(4, '2021-08-03 08:50:58', 'Shaji_Pappan (uid: 19) whitelist chinnu_kutty\'s account.'),
(5, '2021-08-03 08:51:25', 'Shaji_Pappan (uid: 19) whitelist parunth_vasu\'s account.'),
(6, '2021-08-03 08:51:36', 'Shaji_Pappan (uid: 19) whitelist susan_\'s account.'),
(7, '2021-08-03 08:51:46', 'Shaji_Pappan (uid: 19) whitelist ajinas_aji\'s account.'),
(8, '2021-08-03 08:52:14', 'Shaji_Pappan (uid: 19) whitelist johny_synte\'s account.'),
(9, '2021-08-03 09:09:05', 'Shaji_Pappan (uid: 19) whitelist shaji_pappan\'s account.');

-- --------------------------------------------------------

--
-- Table structure for table `log_bans`
--

CREATE TABLE `log_bans` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_cheat`
--

CREATE TABLE `log_cheat` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_contracts`
--

CREATE TABLE `log_contracts` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_faction`
--

CREATE TABLE `log_faction` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_faction`
--

INSERT INTO `log_faction` (`id`, `date`, `description`) VALUES
(1, '2022-01-29 04:41:55', 'Kunjappan_Us (uid: 223) has arrested Kallipulla_Achu (uid: 226) for 10 minutes, fine: $200.');

-- --------------------------------------------------------

--
-- Table structure for table `log_gang`
--

CREATE TABLE `log_gang` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_give`
--

CREATE TABLE `log_give` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_namechanges`
--

CREATE TABLE `log_namechanges` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_namehistory`
--

CREATE TABLE `log_namehistory` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `oldname` varchar(24) DEFAULT NULL,
  `newname` varchar(24) DEFAULT NULL,
  `changedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_property`
--

CREATE TABLE `log_property` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_property`
--

INSERT INTO `log_property` (`id`, `date`, `description`) VALUES
(1, '2021-07-10 12:46:06', 'Felix_Miller (uid: 1) purchased a Comet for $400000.'),
(2, '2021-07-12 03:05:29', 'Vrenz_Denzo (uid: 7) purchased blue neon for their Comet (id: 4)'),
(3, '2021-07-13 06:27:36', 'Vrenz_Denzo (uid: 7) purchased yellow neon for their Burrito (id: 24)'),
(4, '2021-07-13 06:28:26', 'Felix_Miller (uid: 17) purchased blue neon for their Sandking (id: 22)'),
(5, '2021-07-13 06:28:44', 'Felix_Miller (uid: 17) paid $2000 to set the license plate of their Sandking (id: 22) to FUJIXEROX.'),
(6, '2021-07-13 06:28:59', 'Felix_Miller (uid: 17) upgraded the stash of their Sandking (id: 22) to level 1/3.'),
(7, '2021-07-13 06:28:59', 'Felix_Miller (uid: 17) upgraded the stash of their Sandking (id: 22) to level 2/3.'),
(8, '2021-07-13 06:29:00', 'Felix_Miller (uid: 17) upgraded the stash of their Sandking (id: 22) to level 3/3.'),
(9, '2021-07-13 06:29:34', 'Vrenz_Denzo (uid: 7) purchased green neon for their Burrito (id: 24)'),
(10, '2021-07-13 09:57:26', 'Felix_Miller (uid: 1) purchased a Super GT for $250000.'),
(11, '2021-07-13 10:05:49', 'Felix_Miller (uid: 1) purchased blue neon for their Super GT (id: 26)'),
(12, '2021-07-13 10:05:55', 'Felix_Miller (uid: 1) upgraded the stash of their Super GT (id: 26) to level 1/3.'),
(13, '2021-07-13 10:05:56', 'Felix_Miller (uid: 1) upgraded the stash of their Super GT (id: 26) to level 2/3.'),
(14, '2021-07-13 10:05:57', 'Felix_Miller (uid: 1) upgraded the stash of their Super GT (id: 26) to level 3/3.'),
(15, '2021-07-13 10:48:53', 'Felix_Miller (uid: 1) purchased a Super GT for $250000.'),
(16, '2021-07-13 12:42:09', 'Felix_Miller (uid: 1) purchased blue neon for their Super GT (id: 1)'),
(17, '2021-07-13 12:42:14', 'Felix_Miller (uid: 1) upgraded the stash of their Super GT (id: 1) to level 1/3.'),
(18, '2021-07-13 12:42:15', 'Felix_Miller (uid: 1) upgraded the stash of their Super GT (id: 1) to level 2/3.'),
(19, '2021-07-13 12:42:16', 'Felix_Miller (uid: 1) upgraded the stash of their Super GT (id: 1) to level 3/3.'),
(20, '2021-07-13 12:44:12', 'Felix_Miller (uid: 1) purchased green neon for their Sandking (id: 2)'),
(21, '2021-07-13 12:44:23', 'Felix_Miller (uid: 1) upgraded the stash of their Sandking (id: 2) to level 1/3.'),
(22, '2021-07-13 12:44:24', 'Felix_Miller (uid: 1) upgraded the stash of their Sandking (id: 2) to level 2/3.'),
(23, '2021-07-13 12:44:25', 'Felix_Miller (uid: 1) upgraded the stash of their Sandking (id: 2) to level 3/3.'),
(24, '2021-07-13 13:43:33', 'Vrenz_Denzo (uid: 2) purchased blue neon for their Super GT (id: 4)'),
(25, '2021-07-13 14:40:37', 'Vrenz_Denzo (uid: 2) purchased a Jester for $8400000.'),
(26, '2021-07-13 14:52:18', 'Vrenz_Denzo (uid: 2) purchased a Sultan for $8000000.'),
(27, '2021-07-13 14:53:50', 'Kakashi_Brown (uid: 3) purchased a Sabre for $47250.'),
(28, '2021-07-13 14:56:07', 'Vrenz_Denzo (uid: 2) purchased blue neon for their Sultan (id: 7)'),
(29, '2021-07-14 07:41:16', 'Vrenz_Denzo (uid: 2) purchased a Bullet for $21000000.'),
(30, '2021-07-14 07:43:35', 'Vrenz_Denzo (uid: 2) purchased blue neon for their Bullet (id: 11)'),
(31, '2021-07-14 07:44:03', 'Vrenz_Denzo (uid: 2) paid $2000 to set the license plate of their Bullet (id: 11) to VRENZ.'),
(32, '2021-07-14 07:45:44', 'Vrenz_Denzo (uid: 2) paid $2000 to set the license plate of their Bullet (id: 11) to Vrenz.'),
(33, '2021-07-14 07:57:17', 'Vrenz_Denzo (uid: 2) purchased a Turismo for $27000000.'),
(34, '2021-07-14 08:00:40', 'Vrenz_Denzo (uid: 2) purchased blue neon for their Turismo (id: 12)'),
(35, '2021-07-14 08:00:51', 'Vrenz_Denzo (uid: 2) paid $2000 to set the license plate of their Turismo (id: 12) to Vrenz.'),
(36, '2021-07-15 04:06:03', 'Vrenz_Denzo (uid: 2) purchased a Elegy for $7700000.'),
(37, '2021-07-15 04:19:43', 'Vrenz_Denzo (uid: 2) purchased green neon for their Elegy (id: 15)'),
(38, '2021-07-15 04:27:24', 'Vrenz_Denzo (uid: 2) purchased blue neon for their Elegy (id: 15)'),
(39, '2021-07-15 04:30:34', 'Vrenz_Denzo (uid: 2) purchased blue neon for their Jester (id: 6)'),
(40, '2021-07-15 04:34:32', 'Vrenz_Denzo (uid: 2) purchased a Banshee for $12000000.'),
(41, '2021-07-15 04:37:43', 'Vrenz_Denzo (uid: 2) purchased blue neon for their Banshee (id: 16)'),
(42, '2021-07-15 04:39:58', 'Vrenz_Denzo (uid: 2) purchased a Infernus for $25000000.'),
(43, '2021-07-15 04:48:56', 'Vrenz_Denzo (uid: 2) purchased blue neon for their Infernus (id: 17)'),
(44, '2021-07-15 14:52:58', 'Vrenz_Denzo (uid: 2) purchased a Stratum for $7200000.'),
(45, '2021-07-15 14:59:36', 'Vrenz_Denzo (uid: 2) purchased blue neon for their Stratum (id: 24)'),
(46, '2021-07-15 15:08:43', 'Cardo_Suarez (uid: 4) purchased a Blade for $42000.'),
(47, '2021-07-15 15:08:54', 'Cardo_Suarez (uid: 4) purchased a Blade for $42000.'),
(48, '2021-07-15 15:18:12', 'Yohan_Suarez (uid: 7) purchased a Bullet for $21000000.'),
(49, '2021-07-15 15:26:38', 'Vrenz_Denzo (uid: 2) purchased yellow neon for their Bullet (id: 29)'),
(50, '2021-07-16 10:28:04', 'Yohan_Suarez (uid: 7) purchased yellow neon for their Comet (id: 25)'),
(51, '2021-07-16 10:37:08', 'Cardo_Suarez (uid: 4) purchased red neon for their Sultan (id: 22)'),
(52, '2021-07-16 10:39:49', 'Cardo_Suarez (uid: 4) purchased red neon for their Hotring (id: 20)'),
(53, '2021-07-16 10:42:18', 'Cardo_Suarez (uid: 4) purchased red neon for their Sultan (id: 19)'),
(54, '2021-07-16 10:49:46', 'Cardo_Suarez (uid: 4) purchased a Elegy for $7700000.'),
(55, '2021-07-16 10:55:39', 'Cardo_Suarez (uid: 4) purchased red neon for their Elegy (id: 30)'),
(56, '2021-07-16 11:06:37', 'Cardo_Suarez (uid: 4) purchased a Elegy for $7700000.'),
(57, '2021-07-16 11:08:18', 'Cardo_Suarez (uid: 4) purchased a Stratum for $7200000.'),
(58, '2021-07-16 11:12:54', 'Yohan_Suarez (uid: 7) purchased a Jester for $8400000.'),
(59, '2021-07-16 11:14:08', 'Cardo_Suarez (uid: 4) purchased red neon for their Elegy (id: 31)'),
(60, '2021-07-16 11:28:48', 'Yohan_Suarez (uid: 7) purchased red neon for their Jester (id: 33)'),
(61, '2021-07-16 11:29:57', 'Cardo_Suarez (uid: 4) purchased red neon for their Stratum (id: 32)'),
(62, '2021-07-16 11:30:00', 'Cardo_Suarez (uid: 4) purchased red neon for their Stratum (id: 32)'),
(63, '2021-07-18 07:08:25', 'Jerald_Bughao (uid: 6) purchased green neon for their Bullet (id: 21)'),
(64, '2021-07-18 07:08:35', 'Jerald_Bughao (uid: 6) purchased blue neon for their Bullet (id: 21)'),
(65, '2021-07-18 07:09:00', 'Jerald_Bughao (uid: 6) upgraded the stash of their Bullet (id: 21) to level 1/3.'),
(66, '2021-07-18 07:09:05', 'Jerald_Bughao (uid: 6) upgraded the stash of their Bullet (id: 21) to level 2/3.'),
(67, '2021-07-18 07:09:06', 'Jerald_Bughao (uid: 6) upgraded the stash of their Bullet (id: 21) to level 3/3.'),
(68, '2021-07-18 07:09:32', 'Jerald_Bughao (uid: 6) paid $2000 to set the license plate of their Bullet (id: 21) to Bugz Family.'),
(69, '2021-07-18 09:31:20', 'Cardo_Suarez (uid: 4) purchased a Tornado for $45500.'),
(70, '2021-07-18 09:41:24', 'Cardo_Suarez (uid: 4) purchased red neon for their Tornado (id: 41)'),
(71, '2021-07-18 09:47:40', 'Cardo_Suarez (uid: 4) purchased a ZR-350 for $15000000.'),
(72, '2021-07-23 19:35:13', 'Daniel_Annan (uid: 21) paid $2000 to set the license plate of their NRG-500 (id: 0) to DANIEL.'),
(73, '2021-07-23 20:09:10', 'Wizz_Annann (uid: 25) purchased white neon for their Police Rancher (id: 52)'),
(74, '2021-07-24 08:47:12', 'DUDE_ (uid: 31) purchased a Sanchez for $140000.'),
(75, '2021-07-24 16:29:56', 'shaan_disusa (uid: 43) purchased a Freeway for $215000.'),
(76, '2021-07-24 16:42:52', 'Jhonny_Kuttan (uid: 39) purchased a Sanchez for $140000.'),
(77, '2021-07-24 18:09:39', 'Bilal_Jhon (uid: 46) purchased red neon for their Sultan (id: 119)'),
(78, '2021-07-24 20:55:51', 'Wizz_Annann (uid: 25) purchased white neon for their Huntley (id: 0)'),
(79, '2021-07-24 20:57:24', 'Wizz_Annann (uid: 25) purchased white neon for their Huntley (id: 0)'),
(80, '2021-07-24 20:57:39', 'Wizz_Annann (uid: 25) purchased white neon for their Huntley (id: 0)'),
(81, '2021-07-24 21:19:51', 'bhaskar_op (uid: 53) purchased a Intruder for $340250.'),
(82, '2021-07-25 05:39:15', 'Rajan_Nair (uid: 33) purchased red neon for their Stratum (id: 147)'),
(83, '2021-07-25 05:47:21', 'Rajan_Nair (uid: 33) purchased red neon for their Sultan (id: 122)'),
(84, '2021-07-25 05:50:10', 'Rajan_Nair (uid: 33) purchased red neon for their Infernus (id: 148)'),
(85, '2021-07-25 05:56:45', 'Rajan_Nair (uid: 33) purchased blue neon for their Windsor (id: 149)'),
(86, '2021-07-25 06:00:03', 'Rajan_Nair (uid: 33) purchased blue neon for their Bullet (id: 151)'),
(87, '2021-07-25 06:18:06', 'Rajan_Nair (uid: 33) purchased pink neon for their Comet (id: 152)'),
(88, '2021-07-25 07:09:08', 'Rajan_Nair (uid: 33) sold their FCR-900 (id: 73) to the dealership for $0'),
(89, '2021-07-25 07:10:02', 'Bilal_John (uid: 46) sold their Sultan (id: 119) to the dealership for $0'),
(90, '2021-07-25 07:17:13', 'Bilal_John (uid: 46) purchased white neon for their Turismo (id: 154)'),
(91, '2021-07-25 07:17:40', 'Bilal_John (uid: 46) purchased red neon for their Turismo (id: 154)'),
(92, '2021-07-25 07:18:02', 'Bilal_John (uid: 46) purchased blue neon for their Turismo (id: 154)'),
(93, '2021-07-25 07:19:13', 'Bilal_John (uid: 46) upgraded the stash of their Turismo (id: 154) to level 1/3.'),
(94, '2021-07-25 07:19:16', 'Bilal_John (uid: 46) upgraded the stash of their Turismo (id: 154) to level 2/3.'),
(95, '2021-07-25 07:19:18', 'Bilal_John (uid: 46) upgraded the stash of their Turismo (id: 154) to level 3/3.'),
(96, '2021-07-25 08:05:35', 'Revathy_Kutty (uid: 37) sold their FCR-900 (id: 77) to the dealership for $0'),
(97, '2021-07-25 09:10:39', 'David_ (uid: 55) purchased a Freeway for $215000.'),
(98, '2021-07-25 10:28:04', 'Bilal_John (uid: 46) purchased red neon for their Hotknife (id: 103)'),
(99, '2021-07-25 10:36:02', 'Bilal_John (uid: 46) purchased blue neon for their Sultan (id: 93)'),
(100, '2021-07-25 10:47:37', 'Bilal_John (uid: 46) purchased yellow neon for their Cheetah (id: 115)'),
(101, '2021-07-25 12:00:20', 'Rajan_Nair (uid: 33) purchased red neon for their Sultan (id: 164)'),
(102, '2021-07-25 12:00:42', 'Rajan_Nair (uid: 33) purchased yellow neon for their Sultan (id: 164)'),
(103, '2021-07-25 12:06:38', 'Rajan_Nair (uid: 33) purchased yellow neon for their Infernus (id: 163)'),
(104, '2021-07-25 12:07:22', 'Rajan_Nair (uid: 33) purchased yellow neon for their Cheetah (id: 166)'),
(105, '2021-07-25 12:53:17', 'Wick_Sir (uid: 63) purchased a Sanchez for $140000.'),
(106, '2021-07-25 18:02:30', 'Lsd_Kannappi (uid: 70) purchased a PCJ-600 for $150000.'),
(107, '2021-07-26 04:00:57', 'RK_GOD (uid: 27) purchased a Freeway for $215000.'),
(108, '2021-07-26 05:50:39', 'Bilal_John (uid: 46) purchased red neon for their Turismo (id: 154)'),
(109, '2021-07-26 06:40:47', 'Bilal_John (uid: 46) purchased pink neon for their Turismo (id: 154)'),
(110, '2021-07-26 06:40:56', 'Bilal_John (uid: 46) purchased blue neon for their Turismo (id: 154)'),
(111, '2021-07-26 08:16:36', 'Abraham_kureyshi (uid: 78) purchased a Sanchez for $140000.'),
(112, '2021-07-26 09:07:34', 'Star_Load (uid: 83) purchased a Sanchez for $140000.'),
(113, '2021-07-26 09:10:32', 'Tva_Saaho (uid: 81) purchased a FCR-900 for $230000.'),
(114, '2021-07-26 10:27:54', 'Kerp_2 (uid: 49) purchased a FCR-900 for $230000.'),
(115, '2021-07-26 12:24:27', 'DUDE_ (uid: 31) purchased white neon for their Windsor (id: 222)'),
(116, '2021-07-26 12:28:19', 'DUDE_ (uid: 31) purchased blue neon for their Infernus (id: 215)'),
(117, '2021-07-26 12:28:43', 'DUDE_ (uid: 31) paid $2000 to set the license plate of their Infernus (id: 215) to KL 46 0 DUDE.'),
(118, '2021-07-26 12:29:03', 'DUDE_ (uid: 31) upgraded the stash of their Infernus (id: 215) to level 1/3.'),
(119, '2021-07-26 12:29:07', 'DUDE_ (uid: 31) upgraded the stash of their Infernus (id: 215) to level 2/3.'),
(120, '2021-07-26 12:29:08', 'DUDE_ (uid: 31) upgraded the stash of their Infernus (id: 215) to level 3/3.'),
(121, '2021-07-26 13:47:04', 'Ap_AppappaN (uid: 40) purchased a Tampa for $333250.'),
(122, '2021-07-26 13:52:35', 'Ap_AppappaN (uid: 40) purchased a Tampa for $333250.'),
(123, '2021-07-26 13:53:07', 'Ap_AppappaN (uid: 40) purchased a Clover for $354250.'),
(124, '2021-07-26 14:03:17', 'Jack_Sir (uid: 28) purchased a Washington for $422750.'),
(125, '2021-07-26 15:52:07', 'Bilal_John (uid: 46) purchased a Sunrise for $428400.'),
(126, '2021-07-26 15:59:03', 'Bilal_John (uid: 46) purchased red neon for their Sunrise (id: 237)'),
(127, '2021-07-26 16:21:42', 'Bilal_John (uid: 46) purchased red neon for their Washington (id: 231)'),
(128, '2021-07-26 16:48:45', 'Bilal_John (uid: 46) purchased white neon for their Sultan (id: 226)'),
(129, '2021-07-26 16:48:48', 'bhaskar_op (uid: 53) purchased a Sunrise for $428400.'),
(130, '2021-07-26 16:55:23', 'DUDE_ (uid: 31) paid $2000 to set the license plate of their Sunrise (id: 244) to 2.'),
(131, '2021-07-26 16:55:30', 'DUDE_ (uid: 31) paid $2000 to set the license plate of their Sunrise (id: 244) to BHASKAR.'),
(132, '2021-07-26 16:55:43', 'DUDE_ (uid: 31) upgraded the stash of their Sunrise (id: 244) to level 1/3.'),
(133, '2021-07-26 16:55:44', 'DUDE_ (uid: 31) upgraded the stash of their Sunrise (id: 244) to level 2/3.'),
(134, '2021-07-26 16:55:45', 'DUDE_ (uid: 31) upgraded the stash of their Sunrise (id: 244) to level 3/3.'),
(135, '2021-07-26 16:56:06', 'DUDE_ (uid: 31) purchased white neon for their Sunrise (id: 244)'),
(136, '2021-07-26 16:56:16', 'DUDE_ (uid: 31) purchased red neon for their Sunrise (id: 244)'),
(137, '2021-07-26 16:57:22', 'Bilal_John (uid: 46) purchased white neon for their Pony (id: 225)'),
(138, '2021-07-26 17:00:35', 'Bilal_John (uid: 46) purchased white neon for their Patriot (id: 233)'),
(139, '2021-07-26 17:07:14', 'DUDE_ (uid: 31) purchased white neon for their Sultan (id: 223)'),
(140, '2021-07-26 19:01:49', 'Rajan_Nair (uid: 33) purchased white neon for their Elegy (id: 243)'),
(141, '2021-07-26 19:17:47', 'Rajan_Nair (uid: 33) purchased blue neon for their Patriot (id: 252)'),
(142, '2021-07-26 19:22:30', 'Rajan_Nair (uid: 33) purchased blue neon for their Sultan (id: 250)'),
(143, '2021-07-26 19:23:54', 'Rajan_Nair (uid: 33) purchased white neon for their Sultan (id: 250)'),
(144, '2021-07-26 20:16:04', 'Shaji_Pappan (uid: 19) purchased a Sanchez for $140000.'),
(145, '2021-07-27 05:24:43', 'Jack_Sir (uid: 28) sold their Washington (id: 231) to the dealership for $317063'),
(146, '2021-07-27 05:28:51', 'Jack_Sir (uid: 28) purchased a Stafford for $542000.'),
(147, '2021-07-27 05:29:47', 'Bilal_John (uid: 46) purchased blue neon for their Stratum (id: 258)'),
(148, '2021-07-27 05:38:02', 'Bilal_John (uid: 46) purchased white neon for their Stafford (id: 259)'),
(149, '2021-07-27 05:38:35', 'Bilal_John (uid: 46) upgraded the stash of their Stafford (id: 259) to level 1/3.'),
(150, '2021-07-27 05:38:36', 'Bilal_John (uid: 46) upgraded the stash of their Stafford (id: 259) to level 2/3.'),
(151, '2021-07-27 05:38:38', 'Bilal_John (uid: 46) upgraded the stash of their Stafford (id: 259) to level 3/3.'),
(152, '2021-07-27 05:39:10', 'Bilal_John (uid: 46) paid $2000 to set the license plate of their Stafford (id: 259) to JD NO 1.'),
(153, '2021-07-27 06:35:43', 'Star_Load (uid: 83) purchased a PCJ-600 for $150000.'),
(154, '2021-07-27 09:39:59', 'Mr_Raju (uid: 107) purchased a Sanchez for $140000.'),
(155, '2021-07-27 10:59:26', 'Bilal_John (uid: 46) purchased white neon for their Sultan (id: 226)'),
(156, '2021-07-27 11:00:30', 'Bilal_John (uid: 46) purchased yellow neon for their Patriot (id: 233)'),
(157, '2021-07-27 11:06:35', 'Bilal_John (uid: 46) purchased pink neon for their Sultan (id: 167)'),
(158, '2021-07-27 11:07:41', 'Bilal_John (uid: 46) purchased yellow neon for their Infernus (id: 270)'),
(159, '2021-07-27 11:10:26', 'Bilal_John (uid: 46) purchased red neon for their Stratum (id: 273)'),
(160, '2021-07-27 11:12:12', 'Bilal_John (uid: 46) purchased red neon for their Turismo (id: 271)'),
(161, '2021-07-27 11:14:27', 'Bilal_John (uid: 46) purchased blue neon for their Comet (id: 269)'),
(162, '2021-07-27 11:21:47', 'Rajan_Nair (uid: 33) purchased yellow neon for their Clover (id: 230)'),
(163, '2021-07-27 11:53:03', 'Rajan_Nair (uid: 33) sold their Sunrise (id: 237) to the dealership for $321300'),
(164, '2021-07-27 12:01:02', 'Bebu_Op (uid: 23) purchased a Tampa for $333250.'),
(165, '2021-07-27 12:08:12', 'Rajan_Nair (uid: 33) purchased white neon for their Tampa (id: 275)'),
(166, '2021-07-27 12:25:41', 'Bilal_John (uid: 46) purchased white neon for their Sultan (id: 226)'),
(167, '2021-07-27 12:29:57', 'Bilal_John (uid: 46) purchased yellow neon for their Patriot (id: 233)'),
(168, '2021-07-27 12:50:17', 'Drago_Op (uid: 101) purchased a Tampa for $333250.'),
(169, '2021-07-27 13:32:57', 'DUDE_ (uid: 31) purchased red neon for their Turismo (id: 220)'),
(170, '2021-07-27 15:11:48', 'Sarak_Annan (uid: 98) purchased a Savanna for $449000.'),
(171, '2021-07-27 18:28:17', 'Rajan_Nair (uid: 33) purchased green neon for their Tampa (id: 228)'),
(172, '2021-07-28 05:30:47', 'Wizz_Annann (uid: 25) purchased white neon for their Police Rancher (id: 107)'),
(173, '2021-07-28 08:42:37', 'Jack_Sir (uid: 28) sold their FCR-900 (id: 58) to the dealership for $0'),
(174, '2021-07-28 09:04:09', 'Mr_Alpha (uid: 66) purchased a Tampa for $333250.'),
(175, '2021-07-28 16:28:36', 'DUDE_ (uid: 31) purchased white neon for their Hotring Racer A (id: 288)'),
(176, '2021-07-28 16:28:52', 'DUDE_ (uid: 31) upgraded the stash of their Hotring Racer A (id: 288) to level 1/3.'),
(177, '2021-07-28 16:29:27', 'DUDE_ (uid: 31) upgraded the stash of their Hotring Racer A (id: 288) to level 2/3.'),
(178, '2021-07-28 16:29:29', 'DUDE_ (uid: 31) upgraded the stash of their Hotring Racer A (id: 288) to level 3/3.'),
(179, '2021-07-28 16:32:41', 'Revathy_Kutty (uid: 37) purchased a Clover for $354250.'),
(180, '2021-07-28 16:41:20', 'DUDE_ (uid: 31) purchased blue neon for their Sultan (id: 287)'),
(181, '2021-07-28 16:41:32', 'DUDE_ (uid: 31) upgraded the stash of their Sultan (id: 287) to level 1/3.'),
(182, '2021-07-28 16:41:34', 'DUDE_ (uid: 31) upgraded the stash of their Sultan (id: 287) to level 2/3.'),
(183, '2021-07-28 16:41:35', 'DUDE_ (uid: 31) upgraded the stash of their Sultan (id: 287) to level 3/3.'),
(184, '2021-07-28 16:41:42', 'DUDE_ (uid: 31) paid $2000 to set the license plate of their Sultan (id: 287) to TVA.'),
(185, '2021-07-28 16:42:32', 'DUDE_ (uid: 31) paid $2000 to set the license plate of their Hotring Racer A (id: 288) to TVA.'),
(186, '2021-07-28 16:47:09', 'DUDE_ (uid: 31) purchased pink neon for their Clover (id: 312)'),
(187, '2021-07-28 18:34:28', 'Rajan_Nair (uid: 33) purchased blue neon for their Hotring (id: 153)'),
(188, '2021-07-28 19:05:24', 'DUDE_ (uid: 31) purchased pink neon for their Bullet (id: 216)'),
(189, '2021-07-28 19:07:08', 'Da_Vid (uid: 92) purchased a Intruder for $340250.'),
(190, '2021-07-29 04:27:09', 'Devin_carlo (uid: 140) purchased a Sanchez for $140000.'),
(191, '2021-07-29 07:25:07', 'Revathy_Kutty (uid: 37) purchased a Stafford for $542000.'),
(192, '2021-07-29 07:32:30', 'Rajan_Nair (uid: 33) purchased blue neon for their Stafford (id: 324)'),
(193, '2021-07-29 07:42:25', 'Rajan_Nair (uid: 33) purchased red neon for their Stratum (id: 221)'),
(194, '2021-07-29 13:47:35', 'DUDE_ (uid: 31) purchased white neon for their Stretch (id: 284)'),
(195, '2021-07-29 13:47:48', 'DUDE_ (uid: 31) upgraded the stash of their Stretch (id: 284) to level 1/3.'),
(196, '2021-07-29 13:47:49', 'DUDE_ (uid: 31) upgraded the stash of their Stretch (id: 284) to level 2/3.'),
(197, '2021-07-29 13:47:50', 'DUDE_ (uid: 31) upgraded the stash of their Stretch (id: 284) to level 3/3.'),
(198, '2021-07-29 13:53:52', 'Bilal_John (uid: 46) purchased a Sunrise for $428400.'),
(199, '2021-07-29 13:57:06', 'Bilal_John (uid: 46) purchased red neon for their Sunrise (id: 343)'),
(200, '2021-07-30 07:07:06', 'Wizz_Annann (uid: 25) purchased pink neon for their Sultan (id: 326)'),
(201, '2021-07-30 08:32:50', 'Bilal_John (uid: 46) sold their Stratum (id: 258) to the dealership for $0'),
(202, '2021-07-30 13:05:12', 'Revathy_Kutty (uid: 37) purchased a Super GT for $2000000.'),
(203, '2021-07-30 13:06:09', 'Revathy_Kutty (uid: 37) sold their Clover (id: 312) to the dealership for $265688'),
(204, '2021-07-30 15:40:20', 'Rajan_Nair (uid: 33) purchased white neon for their Super GT (id: 358)'),
(205, '2021-07-30 19:56:44', 'Rajan_Nair (uid: 33) purchased white neon for their Burrito (id: 362)'),
(206, '2021-07-30 20:01:42', 'Rajan_Nair (uid: 33) purchased white neon for their Patriot (id: 360)'),
(207, '2021-07-30 20:11:54', 'Rajan_Nair (uid: 33) purchased white neon for their Stafford (id: 364)'),
(208, '2021-07-30 20:15:39', 'Rajan_Nair (uid: 33) purchased white neon for their Sultan (id: 361)'),
(209, '2021-07-30 21:42:52', 'Wizz_Annann (uid: 25) purchased white neon for their Turismo (id: 328)'),
(210, '2021-07-30 21:43:56', 'Wizz_Annann (uid: 25) purchased green neon for their Stratum (id: 329)'),
(211, '2021-07-30 21:45:44', 'Wizz_Annann (uid: 25) purchased pink neon for their Hotknife (id: 335)'),
(212, '2021-07-30 21:47:36', 'Wizz_Annann (uid: 25) purchased white neon for their Comet (id: 336)'),
(213, '2021-07-30 21:49:09', 'Wizz_Annann (uid: 25) purchased white neon for their Infernus (id: 337)'),
(214, '2021-07-31 06:07:32', 'Bilal_John (uid: 46) purchased green neon for their Stafford (id: 259)'),
(215, '2021-07-31 08:52:35', 'Marshal_Sir (uid: 63) purchased a Remington for $450750.'),
(216, '2021-07-31 10:55:48', 'malik__ (uid: 173) purchased a Sanchez for $140000.'),
(217, '2021-07-31 11:08:28', 'Saleo_ (uid: 104) purchased a Blade for $442000.'),
(218, '2021-07-31 11:32:00', 'Luttappi_ (uid: 146) purchased a Sunrise for $428400.'),
(219, '2021-07-31 11:40:52', 'BilaL_JohN (uid: 46) paid $2000 to set the license plate of their Cheetah (id: 115) to 369.'),
(220, '2021-07-31 11:44:31', 'BilaL_JohN (uid: 46) paid $2000 to set the license plate of their NRG-500 (id: 88) to 369.'),
(221, '2021-07-31 12:07:57', 'BilaL_JohN (uid: 46) purchased red neon for their Sultan (id: 361)'),
(222, '2021-07-31 12:10:55', 'BilaL_JohN (uid: 46) purchased yellow neon for their Stafford (id: 259)'),
(223, '2021-07-31 12:11:22', 'BilaL_JohN (uid: 46) purchased white neon for their Stafford (id: 259)'),
(224, '2021-07-31 12:17:11', 'BilaL_JohN (uid: 46) purchased red neon for their Stafford (id: 364)'),
(225, '2021-07-31 12:20:47', 'BilaL_JohN (uid: 46) paid $2000 to set the license plate of their Turismo (id: 154) to FUCK COPZ.'),
(226, '2021-07-31 12:21:40', 'BilaL_JohN (uid: 46) paid $2000 to set the license plate of their Sultan (id: 93) to 369.'),
(227, '2021-07-31 12:23:42', 'BilaL_JohN (uid: 46) purchased red neon for their Burrito (id: 362)'),
(228, '2021-07-31 13:13:46', 'BilaL_JohN (uid: 46) purchased a Glendale for $389750.'),
(229, '2021-07-31 13:22:46', 'Rajan_Nair (uid: 33) purchased pink neon for their Glendale (id: 381)'),
(230, '2021-07-31 14:17:09', 'KATTALAN_PORINJU (uid: 67) purchased a Freeway for $215000.'),
(231, '2021-07-31 14:33:44', 'Rajan_Nair (uid: 33) purchased red neon for their Turismo (id: 246)'),
(232, '2021-07-31 14:40:00', 'Rajan_Nair (uid: 33) purchased blue neon for their Camper (id: 248)'),
(233, '2021-07-31 15:12:24', 'Rajan_Nair (uid: 33) purchased blue neon for their Sunrise (id: 376)'),
(234, '2021-07-31 17:59:27', 'Maandru_Annan (uid: 179) purchased a PCJ-600 for $150000.'),
(235, '2021-07-31 18:38:35', 'Mayavi_ (uid: 137) purchased a Sunrise for $428400.'),
(236, '2021-07-31 19:18:51', 'KATTALAN_PORINJU (uid: 67) purchased a Premier for $587500.'),
(237, '2021-08-01 06:33:12', 'Rayan_op (uid: 172) purchased a Sanchez for $140000.'),
(238, '2021-08-01 07:31:31', 'Maandru_Annan (uid: 179) purchased a Stafford for $542000.'),
(239, '2021-08-01 08:30:30', 'Bullet_Dathan (uid: 34) purchased a Buffalo for $1400000.'),
(240, '2021-08-01 08:38:49', 'BilaL_JohN (uid: 46) purchased red neon for their Buffalo (id: 395)'),
(241, '2021-08-01 08:39:20', 'BilaL_JohN (uid: 46) upgraded the stash of their Buffalo (id: 395) to level 1/3.'),
(242, '2021-08-01 08:39:21', 'BilaL_JohN (uid: 46) upgraded the stash of their Buffalo (id: 395) to level 2/3.'),
(243, '2021-08-01 08:39:22', 'BilaL_JohN (uid: 46) upgraded the stash of their Buffalo (id: 395) to level 3/3.'),
(244, '2021-08-01 08:39:50', 'BilaL_JohN (uid: 46) paid $2000 to set the license plate of their Buffalo (id: 395) to BULLET.'),
(245, '2021-08-01 08:49:57', 'BilaL_JohN (uid: 46) purchased pink neon for their Stafford (id: 394)'),
(246, '2021-08-01 08:58:52', 'BilaL_JohN (uid: 46) paid $2000 to set the license plate of their Stafford (id: 394) to TXB.'),
(247, '2021-08-01 08:59:10', 'BilaL_JohN (uid: 46) upgraded the stash of their Stafford (id: 394) to level 1/3.'),
(248, '2021-08-01 08:59:11', 'BilaL_JohN (uid: 46) upgraded the stash of their Stafford (id: 394) to level 2/3.'),
(249, '2021-08-01 08:59:12', 'BilaL_JohN (uid: 46) upgraded the stash of their Stafford (id: 394) to level 3/3.'),
(250, '2021-08-01 09:55:04', 'BilaL_JohN (uid: 46) purchased green neon for their Super GT (id: 358)'),
(251, '2021-08-01 10:12:52', 'BilaL_JohN (uid: 46) purchased red neon for their Tow Truck (id: 396)'),
(252, '2021-08-01 10:15:25', 'Rajan_Nair (uid: 33) purchased red neon for their Tow Truck (id: 397)'),
(253, '2021-08-01 14:05:07', 'Mr_Alpha (uid: 66) purchased a Tahoma for $452500.'),
(254, '2021-08-01 14:54:21', 'Revathy_Kutty (uid: 37) purchased a FCR-900 for $230000.'),
(255, '2021-08-01 14:56:11', 'Poongari_Shashi (uid: 155) purchased a Sanchez for $140000.'),
(256, '2021-08-01 16:30:16', 'Rajan_Nair (uid: 33) purchased green neon for their Sunrise (id: 387)'),
(257, '2021-08-01 17:15:22', 'BilaL_JohN (uid: 46) purchased white neon for their Tahoma (id: 402)'),
(258, '2021-08-01 17:16:25', 'BilaL_JohN (uid: 46) purchased blue neon for their Tahoma (id: 402)'),
(259, '2021-08-01 17:19:06', 'Rajan_Nair (uid: 33) upgraded the stash of their FCR-900 (id: 236) to level 1/3.'),
(260, '2021-08-01 17:19:09', 'Rajan_Nair (uid: 33) upgraded the stash of their FCR-900 (id: 236) to level 2/3.'),
(261, '2021-08-01 17:19:11', 'Rajan_Nair (uid: 33) upgraded the stash of their FCR-900 (id: 236) to level 3/3.'),
(262, '2021-08-01 17:34:45', 'BilaL_JohN (uid: 46) purchased blue neon for their Tampa (id: 296)'),
(263, '2021-08-01 17:38:26', 'Rajan_Nair (uid: 33) paid $2000 to set the license plate of their Tampa (id: 296) to 5355.'),
(264, '2021-08-01 17:38:38', 'Rajan_Nair (uid: 33) upgraded the stash of their Tampa (id: 296) to level 1/3.'),
(265, '2021-08-01 17:38:40', 'Rajan_Nair (uid: 33) upgraded the stash of their Tampa (id: 296) to level 2/3.'),
(266, '2021-08-01 17:38:41', 'Rajan_Nair (uid: 33) upgraded the stash of their Tampa (id: 296) to level 3/3.'),
(267, '2021-08-02 04:06:51', 'Marshal_Sir (uid: 63) sold their Remington (id: 368) to the dealership for $338063'),
(268, '2021-08-02 04:07:28', 'Marshal_Sir (uid: 63) sold their FCR-900 (id: 169) to the dealership for $0'),
(269, '2021-08-02 04:07:59', 'Marshal_Sir (uid: 63) sold their Savanna (id: 289) to the dealership for $336750'),
(270, '2021-08-02 08:19:09', 'Marshal_Sir (uid: 63) purchased a Sabre for $547250.'),
(271, '2021-08-02 09:01:36', 'Rajan_Nair (uid: 33) purchased red neon for their Cheetah (id: 403)'),
(272, '2021-08-02 09:01:53', 'Rajan_Nair (uid: 33) upgraded the stash of their Cheetah (id: 403) to level 1/3.'),
(273, '2021-08-02 09:01:55', 'Rajan_Nair (uid: 33) upgraded the stash of their Cheetah (id: 403) to level 2/3.'),
(274, '2021-08-02 09:01:58', 'Rajan_Nair (uid: 33) upgraded the stash of their Cheetah (id: 403) to level 3/3.'),
(275, '2021-08-02 09:02:38', 'Rajan_Nair (uid: 33) paid $2000 to set the license plate of their Cheetah (id: 403) to 9946.'),
(276, '2021-08-02 09:12:24', 'Rajan_Nair (uid: 33) purchased yellow neon for their Sabre (id: 408)'),
(277, '2021-08-02 09:56:55', 'Rajan_Nair (uid: 33) purchased blue neon for their Cheetah (id: 409)'),
(278, '2021-08-02 09:58:07', 'Rajan_Nair (uid: 33) paid $2000 to set the license plate of their Cheetah (id: 409) to KL60 A 1.'),
(279, '2021-08-02 10:03:02', 'Rajan_Nair (uid: 33) paid $2000 to set the license plate of their Cheetah (id: 409) to KL60 A 1.'),
(280, '2021-08-02 10:03:41', 'Rajan_Nair (uid: 33) upgraded the stash of their Cheetah (id: 409) to level 1/3.'),
(281, '2021-08-02 10:03:43', 'Rajan_Nair (uid: 33) upgraded the stash of their Cheetah (id: 409) to level 2/3.'),
(282, '2021-08-02 10:03:46', 'Rajan_Nair (uid: 33) upgraded the stash of their Cheetah (id: 409) to level 3/3.'),
(283, '2021-08-02 10:53:11', 'Marshal_Sir (uid: 63) purchased a Tampa for $333250.'),
(284, '2021-08-02 11:11:24', 'Revathy_Kutty (uid: 37) purchased a Glendale for $389750.'),
(285, '2021-08-02 11:13:04', 'Revathy_Kutty (uid: 37) sold their FCR-900 (id: 404) to the dealership for $172500'),
(286, '2021-08-02 11:21:09', 'Rajan_Nair (uid: 33) purchased white neon for their Sultan (id: 205)'),
(287, '2021-08-02 11:21:31', 'Rajan_Nair (uid: 33) upgraded the stash of their Sultan (id: 205) to level 1/3.'),
(288, '2021-08-02 11:21:33', 'Rajan_Nair (uid: 33) upgraded the stash of their Sultan (id: 205) to level 2/3.'),
(289, '2021-08-02 11:21:34', 'Rajan_Nair (uid: 33) upgraded the stash of their Sultan (id: 205) to level 3/3.'),
(290, '2021-08-02 11:21:57', 'Rajan_Nair (uid: 33) paid $2000 to set the license plate of their Sultan (id: 205) to 0000.'),
(291, '2021-08-02 11:24:49', 'Rajan_Nair (uid: 33) purchased white neon for their Glendale (id: 412)'),
(292, '2021-08-02 12:26:26', 'Revathy_Kutty (uid: 37) purchased a Oceanic for $443750.'),
(293, '2021-08-02 13:39:30', 'Rajan_Nair (uid: 33) purchased yellow neon for their Oceanic (id: 413)'),
(294, '2021-08-02 13:39:43', 'Rajan_Nair (uid: 33) upgraded the stash of their Oceanic (id: 413) to level 1/3.'),
(295, '2021-08-02 13:39:45', 'Rajan_Nair (uid: 33) upgraded the stash of their Oceanic (id: 413) to level 2/3.'),
(296, '2021-08-02 13:39:47', 'Rajan_Nair (uid: 33) upgraded the stash of their Oceanic (id: 413) to level 3/3.'),
(297, '2021-08-02 13:40:05', 'Rajan_Nair (uid: 33) paid $2000 to set the license plate of their Oceanic (id: 413) to 100.'),
(298, '2021-08-02 14:56:47', 'BilaL_JohN (uid: 46) purchased red neon for their Sunrise (id: 376)'),
(299, '2021-08-02 15:06:27', 'BilaL_JohN (uid: 46) purchased a Clover for $354250.'),
(300, '2021-08-02 15:11:19', 'Toby_Marshal (uid: 165) purchased a Freeway for $215000.'),
(301, '2021-08-02 15:11:40', 'BilaL_JohN (uid: 46) purchased red neon for their Clover (id: 415)'),
(302, '2021-08-02 15:15:54', 'BilaL_JohN (uid: 46) purchased white neon for their Clover (id: 415)'),
(303, '2021-08-02 15:31:30', 'Drax_op (uid: 203) purchased a Freeway for $215000.'),
(304, '2021-08-02 15:33:47', 'su_vasu (uid: 41) purchased a Tampa for $333250.'),
(305, '2021-08-02 16:50:05', 'BilaL_JohN (uid: 46) purchased a Blade for $442000.'),
(306, '2021-08-02 17:01:09', 'BilaL_JohN (uid: 46) purchased a Tampa for $333250.'),
(307, '2021-08-02 17:06:04', 'Rajan_Nair (uid: 33) upgraded the stash of their Tampa (id: 421) to level 1/3.'),
(308, '2021-08-02 17:06:06', 'Rajan_Nair (uid: 33) upgraded the stash of their Tampa (id: 421) to level 2/3.'),
(309, '2021-08-02 17:06:08', 'Rajan_Nair (uid: 33) upgraded the stash of their Tampa (id: 421) to level 3/3.'),
(310, '2021-08-02 17:07:39', 'Rajan_Nair (uid: 33) purchased blue neon for their Tampa (id: 421)'),
(311, '2021-08-02 17:08:13', 'Rajan_Nair (uid: 33) paid $2000 to set the license plate of their Tampa (id: 421) to 666.'),
(312, '2021-08-02 18:15:49', 'TVA_Sarak (uid: 98) purchased a Super GT for $2000000.'),
(313, '2021-08-03 05:18:32', 'BilaL_JohN (uid: 46) purchased a Clover for $354250.'),
(314, '2021-08-03 05:36:00', 'BilaL_JohN (uid: 46) purchased green neon for their Clover (id: 425)'),
(315, '2021-08-03 05:36:46', 'BilaL_JohN (uid: 46) purchased white neon for their Clover (id: 425)'),
(316, '2021-08-03 06:23:14', 'Dark_ff (uid: 204) purchased a PCJ-600 for $150000.'),
(317, '2021-08-03 06:28:12', 'BilaL_JohN (uid: 46) purchased yellow neon for their Super GT (id: 422)'),
(318, '2021-08-03 06:28:47', 'BilaL_JohN (uid: 46) paid $2000 to set the license plate of their Super GT (id: 422) to SARAK.'),
(319, '2021-08-03 06:29:07', 'BilaL_JohN (uid: 46) upgraded the stash of their Super GT (id: 422) to level 1/3.'),
(320, '2021-08-03 06:29:09', 'BilaL_JohN (uid: 46) upgraded the stash of their Super GT (id: 422) to level 2/3.'),
(321, '2021-08-03 06:29:10', 'BilaL_JohN (uid: 46) upgraded the stash of their Super GT (id: 422) to level 3/3.'),
(322, '2021-08-03 06:37:58', 'BilaL_JohN (uid: 46) purchased a Sunrise for $428400.'),
(323, '2021-08-03 06:42:09', 'Mr_Minnal (uid: 86) purchased a PCJ-600 for $150000.'),
(324, '2021-08-03 06:45:55', 'BilaL_JohN (uid: 46) purchased green neon for their Sunrise (id: 428)'),
(325, '2021-08-03 07:27:38', 'Maandru_Annan (uid: 179) purchased a Landstalker for $520000.'),
(326, '2021-08-03 08:06:21', 'BilaL_JohN (uid: 46) purchased green neon for their Landstalker (id: 430)'),
(327, '2021-08-03 08:07:16', 'BilaL_JohN (uid: 46) purchased pink neon for their Landstalker (id: 430)'),
(328, '2022-01-28 13:39:03', 'Techy_Tom (uid: 227) purchased a Mountain Bike for $1800.'),
(329, '2022-01-28 13:41:17', 'Techy_Tom (uid: 227) purchased a Stafford for $230000.'),
(330, '2022-01-28 13:46:51', 'Vincent_Thomas (uid: 220) purchased a Club for $210000.'),
(331, '2022-01-28 14:05:04', 'Kattalan_Porinju (uid: 233) purchased a Bravura for $310000.'),
(332, '2022-01-28 14:20:49', 'Kunjappan_Us (uid: 223) purchased a Turismo for $0.'),
(333, '2022-01-28 14:21:09', 'Kunjappan_Us (uid: 223) purchased a Turismo for $0.'),
(334, '2022-01-28 14:21:13', 'Mr_Paco (uid: 207) purchased a Turismo for $0.'),
(335, '2022-01-28 14:21:39', 'Raquel_Murillo (uid: 221) purchased a Turismo for $0.'),
(336, '2022-01-28 14:24:56', 'Vincent_Thomas (uid: 220) purchased a Turismo for $0.'),
(337, '2022-01-28 14:26:11', 'Kallipulla_Dude (uid: 219) purchased a Turismo for $0.'),
(338, '2022-01-28 14:26:18', 'Kunjappan_Us (uid: 223) purchased a Turismo for $0.'),
(339, '2022-01-28 14:26:21', 'Kallipulla_Dude (uid: 219) purchased a Turismo for $0.'),
(340, '2022-01-28 14:32:06', 'Kodali_Vaasu (uid: 234) purchased a Turismo for $0.'),
(341, '2022-01-28 14:32:17', 'Mr_Trenexe (uid: 224) purchased a Turismo for $0.'),
(342, '2022-01-28 14:40:51', 'Jack_Settan (uid: 237) purchased a Turismo for $0.'),
(343, '2022-01-28 14:47:33', 'Joji_Xz (uid: 235) purchased a Turismo for $0.'),
(344, '2022-01-28 14:48:54', 'German_Kannapi (uid: 230) purchased a Turismo for $0.'),
(345, '2022-01-28 14:49:28', 'Ace_Rocky (uid: 240) purchased a Turismo for $0.'),
(346, '2022-01-28 14:57:15', 'Miya_Kutty (uid: 245) purchased a Turismo for $0.'),
(347, '2022-01-28 14:58:53', 'Jonathan_James (uid: 244) purchased a Turismo for $0.'),
(348, '2022-01-28 14:59:18', 'Jonathan_James (uid: 244) purchased a Turismo for $0.'),
(349, '2022-01-28 15:13:32', 'Pathuz_Xz (uid: 243) purchased a Turismo for $0.'),
(350, '2022-01-28 15:18:44', 'Kallipulla_Achu (uid: 226) purchased a Admiral for $310000.'),
(351, '2022-01-28 15:23:12', 'Pushpa_Raj (uid: 246) purchased a Turismo for $0.'),
(352, '2022-01-28 15:31:06', 'Chaver_Usman (uid: 247) purchased a PCJ-600 for $180000.'),
(353, '2022-01-28 15:31:29', 'Chaver_Usman (uid: 247) purchased a Turismo for $0.'),
(354, '2022-01-28 15:47:31', 'Kallipulla_Dude (uid: 219) purchased a Turismo for $0.'),
(355, '2022-01-28 15:48:52', 'Jack_Settan (uid: 237) purchased a Turismo for $0.'),
(356, '2022-01-28 15:55:40', 'Kunjappan_Us (uid: 223) purchased a Turismo for $0.'),
(357, '2022-01-28 15:56:28', 'Kunjappan_Us (uid: 223) purchased a Turismo for $0.'),
(358, '2022-01-28 16:03:56', 'Techy_Tom (uid: 227) purchased a Turismo for $0.'),
(359, '2022-01-28 16:04:51', 'Anjali_Anju (uid: 249) purchased a Turismo for $0.'),
(360, '2022-01-28 16:07:07', 'Anjali_Anju (uid: 249) purchased a Club for $210000.'),
(361, '2022-01-28 16:13:38', 'David_Unni (uid: 254) purchased a Turismo for $0.'),
(362, '2022-01-28 16:20:24', 'Joji_Xz (uid: 235) purchased a Emperor for $230000.'),
(363, '2022-01-29 04:23:42', 'Chintu_Kuttan (uid: 236) purchased a Freeway for $180000.'),
(364, '2022-01-29 04:27:56', 'Chachu_Adhi (uid: 255) purchased a Stafford for $230000.'),
(365, '2022-01-29 04:48:50', 'Kochu_Kunj (uid: 229) purchased a Freeway for $180000.'),
(366, '2022-01-29 07:25:39', 'Mr_Thakkudu (uid: 267) purchased a Wayfarer for $240000.'),
(367, '2022-01-30 09:11:02', 'Maztro_Don (uid: 239) purchased a Sabre for $320000.'),
(368, '2022-01-30 12:22:41', 'Maztro_Don (uid: 239) purchased a Mountain Bike for $1800.'),
(369, '2022-01-30 12:35:24', 'Joji_Xz (uid: 235) purchased a Mesa for $900000.'),
(370, '2022-01-30 13:07:53', 'David_Unni (uid: 254) purchased a Mountain Bike for $1800.'),
(371, '2022-01-30 14:02:35', 'Ace_Rocky (uid: 240) purchased a Mesa for $900000.'),
(372, '2022-01-30 15:30:41', 'Rocky_Star (uid: 253) purchased a Mesa for $900000.');

-- --------------------------------------------------------

--
-- Table structure for table `log_punishments`
--

CREATE TABLE `log_punishments` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_referrals`
--

CREATE TABLE `log_referrals` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_vip`
--

CREATE TABLE `log_vip` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `object`
--

CREATE TABLE `object` (
  `mobjID` int(11) NOT NULL,
  `mobjModel` int(11) NOT NULL DEFAULT 980,
  `mobjInterior` int(11) NOT NULL DEFAULT 0,
  `mobjWorld` int(11) NOT NULL DEFAULT 0,
  `mobjX` float NOT NULL DEFAULT 0,
  `mobjY` float NOT NULL DEFAULT 0,
  `mobjZ` float NOT NULL DEFAULT 0,
  `mobjRX` float NOT NULL DEFAULT 0,
  `mobjRY` float NOT NULL DEFAULT 0,
  `mobjRZ` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `object`
--

INSERT INTO `object` (`mobjID`, `mobjModel`, `mobjInterior`, `mobjWorld`, `mobjX`, `mobjY`, `mobjZ`, `mobjRX`, `mobjRY`, `mobjRZ`) VALUES
(8, 2007, 10, 3000072, 1989.76, 1003.35, 993.479, 0, 0, 177.757),
(9, 2007, 10, 0, 1989.99, 1003.43, 993.468, 0, 0, 177.306),
(10, 4731, 0, 0, 381.15, -2329.21, 31.0119, 0, 0, -149.766);

-- --------------------------------------------------------

--
-- Table structure for table `phonebook`
--

CREATE TABLE `phonebook` (
  `name` varchar(24) DEFAULT NULL,
  `number` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phone_contacts`
--

CREATE TABLE `phone_contacts` (
  `contact_id` int(11) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `contact_name` varchar(24) NOT NULL,
  `contact_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT -1,
  `type` tinyint(2) DEFAULT 0,
  `profits` int(10) DEFAULT 0,
  `time` tinyint(2) DEFAULT 24,
  `point_x` float DEFAULT 0,
  `point_y` float DEFAULT 0,
  `point_z` float DEFAULT 0,
  `pointinterior` tinyint(2) DEFAULT 0,
  `pointworld` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `name`, `capturedby`, `capturedgang`, `type`, `profits`, `time`, `point_x`, `point_y`, `point_z`, `pointinterior`, `pointworld`) VALUES
(0, 'MAT FACTORY', 'TVA_Sarak', -1, 8, 0, 0, 2685.29, -2071.65, 13.547, 0, 0),
(1, 'SHIPYARD', 'TVA_Sarak', -1, 6, 0, 0, 2837.41, -2366.35, 31.004, 0, 0),
(2, 'FUEL FACTORY', 'TVA_Shahahluu', -1, 5, 2738, 0, 193.247, 1397.79, 10.586, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `publicgarage`
--

CREATE TABLE `publicgarage` (
  `id` int(4) NOT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `pos_r` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publicgarage`
--

INSERT INTO `publicgarage` (`id`, `pos_x`, `pos_y`, `pos_z`, `pos_r`) VALUES
(15, 557.052, -1277.79, 17.248, 355.512),
(18, 1957.62, -2308.58, 13.547, 179.966),
(19, 1650.14, -1056.65, 23.898, 176.063),
(21, 1082.57, -1763.8, 13.37, 91.582),
(29, 325.479, -1796.23, 4.749, 236.595),
(30, 1519.4, -2170.9, 13.558, 87.567),
(37, 2217.19, -1163.59, 25.727, 6.48),
(39, 1351.68, -1750.97, 13.359, 238.242),
(40, 1279.16, -1333.3, 13.367, 177.13),
(41, 1278.42, -1338.29, 13.365, 268.965);

-- --------------------------------------------------------

--
-- Table structure for table `shots`
--

CREATE TABLE `shots` (
  `id` int(10) NOT NULL,
  `playerid` smallint(3) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `hittype` tinyint(2) DEFAULT NULL,
  `hitid` int(10) DEFAULT NULL,
  `hitplayer` varchar(24) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `timestamp` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(11) NOT NULL,
  `speedRange` float DEFAULT 0,
  `speedLimit` float DEFAULT 0,
  `speedX` float DEFAULT 0,
  `speedY` float DEFAULT 0,
  `speedZ` float DEFAULT 0,
  `speedAngle` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` int(10) NOT NULL,
  `sender_number` int(10) DEFAULT NULL,
  `recipient_number` int(10) DEFAULT NULL,
  `sender` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `texts`
--

INSERT INTO `texts` (`id`, `sender_number`, `recipient_number`, `sender`, `date`, `message`) VALUES
(1, 3439, 7563, 'Saathan_xavier', '2021-07-27 15:06:45', 'hospittalil pett kidakkuvaa rekshikkamo'),
(4, 4092, 7563, 'Wick_Sir', '2021-07-30 08:46:02', 'GIVE ME NEWS FACTION '),
(5, 4092, 7563, 'Marshal_Sir', '2021-07-30 08:58:15', 'NEWS FACTION ROL THA DECXO'),
(8, 5521, 3, 'Revathy_Kutty', '2021-08-03 07:59:04', 'anne mech akk anna');

-- --------------------------------------------------------

--
-- Table structure for table `turfs`
--

CREATE TABLE `turfs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT -1,
  `type` tinyint(2) DEFAULT 0,
  `time` tinyint(2) DEFAULT 12,
  `min_x` float DEFAULT 0,
  `min_y` float DEFAULT 0,
  `max_x` float DEFAULT 0,
  `max_y` float DEFAULT 0,
  `height` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `turfs`
--

INSERT INTO `turfs` (`id`, `name`, `capturedby`, `capturedgang`, `type`, `time`, `min_x`, `min_y`, `max_x`, `max_y`, `height`) VALUES
(1, 'TURF', 'No-one', -1, 10, 0, 1129.32, -1489.36, 1129.32, -1489.36, 22.769),
(2, 'sales taxing', 'No-one', -1, 7, 0, 476.137, -1498.99, 476.137, -1498.99, 20.481);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(129) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `setup` tinyint(1) DEFAULT 1,
  `gender` tinyint(1) DEFAULT 1,
  `age` tinyint(3) DEFAULT 18,
  `skin` smallint(3) DEFAULT 299,
  `BirthYear` int(10) DEFAULT 0,
  `BirthMonth` tinyint(5) DEFAULT 0,
  `BirthDay` tinyint(5) DEFAULT 0,
  `camera_x` float DEFAULT 0,
  `camera_y` float DEFAULT 0,
  `camera_z` float DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 13000,
  `bank` int(10) DEFAULT 2000,
  `paycheck` int(10) DEFAULT 0,
  `level` int(10) DEFAULT 1,
  `exp` int(10) DEFAULT 0,
  `minutes` smallint(3) DEFAULT 0,
  `hours` int(10) DEFAULT 0,
  `adminlevel` int(10) DEFAULT 0,
  `adminname` varchar(24) DEFAULT 'None',
  `helperlevel` tinyint(2) DEFAULT 0,
  `health` float DEFAULT 100,
  `armor` float DEFAULT 0,
  `upgradepoints` int(10) DEFAULT 0,
  `warnings` tinyint(3) DEFAULT 0,
  `injured` tinyint(1) DEFAULT 0,
  `hospital` tinyint(1) DEFAULT 0,
  `spawnhealth` float DEFAULT 50,
  `spawnarmor` float DEFAULT 0,
  `jailtype` tinyint(1) DEFAULT 0,
  `jailtime` int(10) DEFAULT 0,
  `newbiemuted` tinyint(1) DEFAULT 0,
  `helpmuted` tinyint(1) DEFAULT 0,
  `admuted` tinyint(1) DEFAULT 0,
  `livemuted` tinyint(1) DEFAULT 0,
  `globalmuted` tinyint(1) DEFAULT 0,
  `reportmuted` tinyint(2) DEFAULT 0,
  `reportwarns` tinyint(2) DEFAULT 0,
  `fightstyle` tinyint(2) DEFAULT 4,
  `locked` tinyint(1) DEFAULT 0,
  `accent` varchar(16) DEFAULT 'None',
  `cookies` int(10) DEFAULT 0,
  `phone` varchar(24) DEFAULT '0',
  `job` int(10) DEFAULT -1,
  `secondjob` tinyint(2) DEFAULT -1,
  `crimes` int(10) DEFAULT 0,
  `arrested` int(10) DEFAULT 0,
  `wantedlevel` tinyint(2) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `pot` int(10) DEFAULT 0,
  `crack` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `seeds` int(10) DEFAULT 0,
  `ephedrine` int(10) DEFAULT 0,
  `muriaticacid` int(10) DEFAULT 0,
  `bakingsoda` int(10) DEFAULT 0,
  `cigars` int(10) DEFAULT 0,
  `walkietalkie` tinyint(1) DEFAULT 0,
  `channel` int(10) DEFAULT 0,
  `rentinghouse` int(10) DEFAULT 0,
  `spraycans` int(10) DEFAULT 0,
  `boombox` tinyint(1) DEFAULT 0,
  `mp3player` tinyint(1) DEFAULT 0,
  `phonebook` tinyint(1) DEFAULT 0,
  `fishingrod` tinyint(1) DEFAULT 0,
  `fishingbait` int(10) DEFAULT 0,
  `fishweight` int(10) DEFAULT 0,
  `components` int(10) DEFAULT 0,
  `courierskill` int(10) DEFAULT 0,
  `fishingskill` int(10) DEFAULT 0,
  `guardskill` int(10) DEFAULT 0,
  `weaponskill` int(10) DEFAULT 0,
  `mechanicskill` int(10) DEFAULT 0,
  `lawyerskill` int(10) DEFAULT 0,
  `smugglerskill` int(10) DEFAULT 0,
  `toggletextdraws` tinyint(1) DEFAULT 0,
  `toggleooc` tinyint(1) DEFAULT 0,
  `togglephone` tinyint(1) DEFAULT 0,
  `toggleadmin` tinyint(1) DEFAULT 0,
  `togglehelper` tinyint(1) DEFAULT 0,
  `togglenewbie` tinyint(1) DEFAULT 0,
  `togglewt` tinyint(1) DEFAULT 0,
  `toggleradio` tinyint(1) DEFAULT 0,
  `togglevip` tinyint(1) DEFAULT 0,
  `togglemusic` tinyint(1) DEFAULT 0,
  `togglefaction` tinyint(1) DEFAULT 0,
  `togglegang` tinyint(1) DEFAULT 0,
  `togglenews` tinyint(1) DEFAULT 0,
  `toggleglobal` tinyint(1) DEFAULT 0,
  `togglecam` tinyint(1) DEFAULT 0,
  `carlicense` tinyint(1) DEFAULT 0,
  `vippackage` tinyint(2) NOT NULL DEFAULT 0,
  `viptime` int(10) DEFAULT 0,
  `vipcooldown` int(10) DEFAULT 0,
  `weapon_0` tinyint(2) DEFAULT 0,
  `weapon_1` tinyint(2) DEFAULT 0,
  `weapon_2` tinyint(2) DEFAULT 0,
  `weapon_3` tinyint(2) DEFAULT 0,
  `weapon_4` tinyint(2) DEFAULT 0,
  `weapon_5` tinyint(2) DEFAULT 0,
  `weapon_6` tinyint(2) DEFAULT 0,
  `weapon_7` tinyint(2) DEFAULT 0,
  `weapon_8` tinyint(2) DEFAULT 0,
  `weapon_9` tinyint(2) DEFAULT 0,
  `weapon_10` tinyint(2) DEFAULT 0,
  `weapon_11` tinyint(2) DEFAULT 0,
  `weapon_12` tinyint(2) DEFAULT 0,
  `ammo_0` smallint(5) DEFAULT 0,
  `ammo_1` smallint(5) DEFAULT 0,
  `ammo_2` smallint(5) DEFAULT 0,
  `ammo_3` smallint(5) DEFAULT 0,
  `ammo_4` smallint(5) DEFAULT 0,
  `ammo_5` smallint(5) DEFAULT 0,
  `ammo_6` smallint(5) DEFAULT 0,
  `ammo_7` smallint(5) DEFAULT 0,
  `ammo_8` smallint(5) DEFAULT 0,
  `ammo_9` smallint(5) DEFAULT 0,
  `ammo_10` smallint(5) DEFAULT 0,
  `ammo_11` smallint(5) DEFAULT 0,
  `ammo_12` smallint(5) DEFAULT 0,
  `faction` tinyint(2) DEFAULT -1,
  `gang` tinyint(2) DEFAULT -1,
  `factionrank` tinyint(2) DEFAULT 0,
  `gangrank` tinyint(2) DEFAULT 0,
  `division` tinyint(2) DEFAULT -1,
  `contracted` int(10) DEFAULT 0,
  `contractby` varchar(24) DEFAULT 'Nobody',
  `bombs` int(10) DEFAULT 0,
  `completedhits` int(10) DEFAULT 0,
  `failedhits` int(10) DEFAULT 0,
  `reports` int(10) DEFAULT 0,
  `helprequests` int(10) DEFAULT 0,
  `speedometer` tinyint(1) DEFAULT 1,
  `factionmod` tinyint(1) DEFAULT 0,
  `gangmod` tinyint(1) DEFAULT 0,
  `MapperMod` tinyint(1) NOT NULL DEFAULT 0,
  `banappealer` tinyint(1) DEFAULT 0,
  `potplanted` tinyint(1) DEFAULT 0,
  `pottime` int(10) DEFAULT 0,
  `potgrams` int(10) DEFAULT 0,
  `pot_x` float DEFAULT 0,
  `pot_y` float DEFAULT 0,
  `pot_z` float DEFAULT 0,
  `pot_a` float DEFAULT 0,
  `inventoryupgrade` int(10) DEFAULT 0,
  `addictupgrade` int(10) DEFAULT 0,
  `traderupgrade` int(10) DEFAULT 0,
  `assetupgrade` int(10) DEFAULT 0,
  `pistolammo` smallint(5) DEFAULT 0,
  `shotgunammo` smallint(5) DEFAULT 0,
  `smgammo` smallint(5) DEFAULT 0,
  `arammo` smallint(5) DEFAULT 0,
  `rifleammo` smallint(5) DEFAULT 0,
  `hpammo` smallint(5) DEFAULT 0,
  `poisonammo` smallint(5) DEFAULT 0,
  `fmjammo` smallint(5) DEFAULT 0,
  `ammotype` tinyint(2) DEFAULT 0,
  `ammoweapon` tinyint(2) DEFAULT 0,
  `dmwarnings` tinyint(2) DEFAULT 0,
  `weaponrestricted` int(10) DEFAULT 0,
  `referral_uid` int(10) DEFAULT 0,
  `refercount` int(10) DEFAULT 0,
  `watch` tinyint(1) DEFAULT 0,
  `gps` tinyint(1) DEFAULT 0,
  `prisonedby` varchar(24) DEFAULT 'No-one',
  `prisonreason` varchar(128) DEFAULT 'None',
  `togglehud` tinyint(1) DEFAULT 1,
  `clothes` smallint(3) DEFAULT -1,
  `showturfs` tinyint(1) DEFAULT 0,
  `showlands` tinyint(1) DEFAULT 0,
  `watchon` tinyint(1) DEFAULT 0,
  `gpson` tinyint(1) DEFAULT 0,
  `doublexp` int(10) DEFAULT 0,
  `couriercooldown` int(10) DEFAULT 0,
  `pizzacooldown` int(10) DEFAULT 0,
  `detectivecooldown` int(10) DEFAULT 0,
  `duty` int(10) DEFAULT 0,
  `bandana` int(10) NOT NULL DEFAULT 0,
  `detectiveskill` int(11) DEFAULT 0,
  `gascan` int(11) DEFAULT 0,
  `refunded` int(11) DEFAULT 0,
  `backpack` int(11) DEFAULT 0,
  `bpcash` int(11) DEFAULT 0,
  `bpmaterials` int(11) DEFAULT 0,
  `bppot` int(11) DEFAULT 0,
  `bpcrack` int(11) DEFAULT 0,
  `bpmeth` int(11) DEFAULT 0,
  `bppainkillers` int(11) DEFAULT 0,
  `bpweapon_0` int(11) DEFAULT 0,
  `bpweapon_1` int(11) DEFAULT 0,
  `bpweapon_2` int(11) DEFAULT 0,
  `bpweapon_3` int(11) DEFAULT 0,
  `bpweapon_4` int(11) DEFAULT 0,
  `bpweapon_5` int(11) DEFAULT 0,
  `bpweapon_6` int(11) DEFAULT 0,
  `bpweapon_7` int(11) DEFAULT 0,
  `bpweapon_8` int(11) DEFAULT 0,
  `bpweapon_9` int(11) DEFAULT 0,
  `bpweapon_10` int(11) DEFAULT 0,
  `bpweapon_11` int(11) DEFAULT 0,
  `bpweapon_12` int(11) DEFAULT 0,
  `bpweapon_13` int(11) DEFAULT 0,
  `bpweapon_14` int(11) DEFAULT 0,
  `bphpammo` int(11) DEFAULT 0,
  `bppoisonammo` int(11) DEFAULT 0,
  `bpfmjammo` int(11) DEFAULT 0,
  `formeradmin` int(2) NOT NULL DEFAULT 0,
  `deathcooldown` int(10) NOT NULL DEFAULT 0,
  `hunger` int(10) NOT NULL DEFAULT 100,
  `hungertimer` int(10) NOT NULL DEFAULT 0,
  `thirst` int(11) NOT NULL DEFAULT 100,
  `thirsttimer` int(11) NOT NULL DEFAULT 0,
  `covid` int(11) NOT NULL DEFAULT 0,
  `covidtimer` int(11) NOT NULL DEFAULT 0,
  `totalpatients` int(10) NOT NULL DEFAULT 0,
  `totalfires` int(10) NOT NULL DEFAULT 0,
  `rarecooldown` int(10) NOT NULL DEFAULT 0,
  `customtitle` varchar(64) NOT NULL DEFAULT '0',
  `customcolor` varchar(16) NOT NULL DEFAULT '0',
  `callsign` varchar(64) NOT NULL DEFAULT '0',
  `mask` int(10) NOT NULL DEFAULT 0,
  `diamonds` int(11) NOT NULL DEFAULT 0,
  `blindfold` int(10) NOT NULL DEFAULT 0,
  `rope` int(10) NOT NULL DEFAULT 0,
  `insurance` int(10) NOT NULL DEFAULT 0,
  `passport` int(10) NOT NULL DEFAULT 0,
  `passportname` varchar(64) DEFAULT NULL,
  `passportlevel` int(10) NOT NULL DEFAULT 0,
  `passportskin` int(10) NOT NULL DEFAULT 0,
  `passportphone` int(10) NOT NULL DEFAULT 0,
  `marriedto` int(10) NOT NULL DEFAULT -1,
  `newbies` int(10) NOT NULL DEFAULT 0,
  `chatanim` tinyint(2) NOT NULL DEFAULT 0,
  `Lottery` int(11) NOT NULL DEFAULT 0,
  `LotteryB` int(11) NOT NULL DEFAULT 0,
  `flashlight` tinyint(2) NOT NULL DEFAULT 0,
  `candy` int(11) NOT NULL DEFAULT 0,
  `investor` int(11) NOT NULL DEFAULT 0,
  `bitcoins` int(11) NOT NULL DEFAULT 0,
  `thiefskill` int(11) DEFAULT 0,
  `thiefcooldown` int(11) DEFAULT 0,
  `cocainecooldown` int(11) DEFAULT 0,
  `gunlicense` tinyint(2) NOT NULL DEFAULT 0,
  `dirtycash` int(11) NOT NULL DEFAULT 0,
  `comserv` int(11) NOT NULL DEFAULT 0,
  `fmtime` int(11) DEFAULT 0,
  `facemask` int(11) DEFAULT 0,
  `groupleader` tinyint(11) NOT NULL DEFAULT 0,
  `crew` tinyint(11) NOT NULL DEFAULT -1,
  `pgroup` tinyint(11) NOT NULL DEFAULT 0,
  `drugwater` int(10) DEFAULT 0,
  `drugpot` int(10) DEFAULT 0,
  `drugcrack` int(10) DEFAULT 0,
  `drugmuriatic` int(10) DEFAULT 0,
  `drughydrogen` int(10) DEFAULT 0,
  `drugbattery` int(10) DEFAULT 0,
  `drugacetone` int(10) DEFAULT 0,
  `drugethyl` int(10) DEFAULT 0,
  `drugsulfuric` int(10) DEFAULT 0,
  `druglithium` int(10) DEFAULT 0,
  `drugiodine` int(10) DEFAULT 0,
  `drugopium` int(10) DEFAULT 0,
  `drugamphetamine` int(10) DEFAULT 0,
  `drugbenzodioxol` int(10) DEFAULT 0,
  `gunlicensedate` int(10) DEFAULT 0,
  `task1` int(10) NOT NULL DEFAULT 0,
  `task2` int(10) NOT NULL DEFAULT 0,
  `task3` int(10) NOT NULL DEFAULT 0,
  `task4` int(10) NOT NULL DEFAULT 0,
  `task5` int(10) NOT NULL DEFAULT 0,
  `claimed1` int(10) NOT NULL DEFAULT 0,
  `claimed2` int(10) NOT NULL DEFAULT 0,
  `claimed3` int(10) NOT NULL DEFAULT 0,
  `claimed4` int(10) NOT NULL DEFAULT 0,
  `claimed5` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `ip`, `setup`, `gender`, `age`, `skin`, `BirthYear`, `BirthMonth`, `BirthDay`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `MapperMod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `covid`, `covidtimer`, `totalpatients`, `totalfires`, `rarecooldown`, `customtitle`, `customcolor`, `callsign`, `mask`, `diamonds`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `investor`, `bitcoins`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `gunlicense`, `dirtycash`, `comserv`, `fmtime`, `facemask`, `groupleader`, `crew`, `pgroup`, `drugwater`, `drugpot`, `drugcrack`, `drugmuriatic`, `drughydrogen`, `drugbattery`, `drugacetone`, `drugethyl`, `drugsulfuric`, `druglithium`, `drugiodine`, `drugopium`, `drugamphetamine`, `drugbenzodioxol`, `gunlicensedate`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`) VALUES
(207, 'Mr_Paco', '1D33449CDFE00BB96FD547E6907FE4C2B4194D160E79FE380CD5B8E11D4151B8A9368F972BE48A5D8C1843F973D437F7720B5DEB3021C59558ECEE6DA8EB5073', '2022-01-25 06:31:20', '2022-01-30 15:45:16', '202.83.58.221', 0, 1, 18, 120, 1930, 6, 6, 1084.31, -314.42, 74.538, 1082.13, -314.264, 73.992, 85.913, 0, 0, 97739, 42000, 0, 1, 9, 7, 8, 8, 'Merin_John', 0, 50, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 'None', 0, '3333', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643697239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, -1, 5, 0, -1, 0, 'Nobody', 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 95, 27, 95, 3, 5, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1645870418, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(218, 'Chandra_Bose', 'CE3E591A36AAA3B655810F3AEFD3671406373081AE9C6DE9213DF6CD8CB430B962A24E4F916A13F7C3D77355157D96E34D87311FD8EA72B16C3AF02AEFF7678E', '2022-01-28 09:50:24', '2022-01-30 14:15:53', '103.151.188.76', 0, 1, 18, 282, 2004, 3, 13, 1107.98, -1382.11, 15.31, 1202.67, -938.11, 42.461, 126.78, 0, 0, 280401, 142000, 0, 1, 2, 18, 2, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '9363', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643968265, 0, 0, 0, 0, 0, 29, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 299, 0, 0, 0, 0, 0, 0, 0, 1, -1, 9, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 302, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 6, 40, 6, 48, 6, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1674492343, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(219, 'Kallipulla_Dude', 'DC6B603FE023FE82206D441E24C018F1F8321A3DEFACEFCA996CA9232A3EED47A54CE001265ABCC1AB0C9AC734ABF26CE3D19379411E79462911F5333C4C7CD2', '2022-01-28 10:19:41', '2022-01-30 14:05:00', '157.44.141.238', 0, 1, 18, 294, 2000, 8, 9, 1130.05, -2037.84, 70.65, 1132.2, -2040.84, 69.008, 107.605, 0, 0, 31481, 7497, 83149, 1, 4, 54, 4, 0, 'None', 0, 50, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '8888', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643970032, 0, 0, 0, 22, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 5, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 113, 79, 113, 17, 83, 0, 0, 7504, '0', '0', '0', 0, 1, 2, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1646116188, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1646115596, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(220, 'Vincent_Thomas', '8A10B381D2C8C4E99262CF962F3DFEFB211B9E3C1A49D60BF61D3644CC4874FAF884B11D2C3C48507F707B158FD44617145FAACB2F9799E7BDA7F372D075FF9B', '2022-01-28 12:26:40', '2022-01-30 15:52:34', '103.166.245.156', 0, 1, 18, 155, 2001, 7, 15, 1101.64, -56.842, 19.1, 1103.89, -56.03, 17.974, 226.971, 0, 0, 68832, 21400000, 0, 1, 12, 25, 12, 7, 'Zeues_Devam', 0, 48.489, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '9126', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643977704, 0, 0, 3, 22, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 1, 599, 0, 0, 250, 0, 0, 0, 0, 0, 0, 0, 1, -1, 10, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, 101, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 75, 49, 75, 100, 19129, 0, 0, 0, '0', '0', '0', 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(221, 'Raquel_Murillo', 'B6DF1FD781843A889472CD4EE63E8A83E7C9D1103F61AA11485A9322105AFF19025544D1511FD9049DCD9584DB232C6EDD6DEFB950FA8FE76B154D1079E4C442', '2022-01-28 12:32:58', '2022-01-30 13:41:08', '157.44.201.140', 0, 1, 18, 50, 2000, 1, 21, 1121.16, -1419.51, 15.079, 1121.47, -1415.33, 13.565, 355.865, 0, 0, 500, 404543, 0, 1, 13, 8, 13, 9, 'Kukku_Manjadi', 0, 72.5, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '7825', 5, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643978006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, -1, 7, 0, -1, 0, 'Nobody', 0, 0, 0, 15, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Server', 'Logging to avoid arrest', 1, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 156, 47, 96, 100, 6473, 1, 0, 3100, '0', '0', '0', 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1645684864, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(222, 'Mk_Carlo', '8EADE6064597F7924BDECB2F01AA7669D0C5B64EA8EEB813ADF5750B903F2221E06EDB6F425708AF72706D960F5342AF7488E57B37C3DBAC3660C055879A7B5A', '2022-01-28 13:06:30', '2022-01-30 13:48:27', '137.97.81.195', 0, 1, 18, 115, 2001, 10, 10, 243.901, 114.502, 1005.43, 240.894, 110.556, 1003.22, 133.606, 10, 0, 1018330, 4782000, 0, 1, 7, 35, 7, 0, 'None', 0, 0.83, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '3737', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643980027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, 0, 6, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 44, 58, 44, 33, 134, 0, 0, 10887, '0', '0', '0', 0, 2, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(223, 'Kunjappan_Us', 'F8CD1DA2954598F6177E83651B06E3FF78D34213A5200FE5BFAC7603B18B6FBFB2747C73E33C38818612094F3B796127D2E3F8CA1F5649AD4B48752710D2EB6F', '2022-01-28 13:07:06', '2022-01-30 16:00:58', '117.213.24.241', 0, 1, 18, 305, 2007, 5, 1, 1544.15, -1672.07, 14.333, 1544.44, -1675.55, 13.558, 90, 0, 0, 1333, 1612736, 0, 1, 14, 0, 14, 7, 'DRIVER_SUGU', 0, 50, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '7629', 5, -1, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643980054, 0, 0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 281, 0, 0, 0, 0, 0, 0, 0, 1, -1, 10, 0, -1, 0, 'Nobody', 0, 0, 0, 7, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 305, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 155, 29, 35, 0, 155, 1, 0, 0, '0', '0', '0', 0, 2, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1645982253, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1674492420, 9, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(224, 'Mr_Trenexe', 'D906FDC269F46920D58B14D23C4914FBAF2B43F034C23F2436B20EC1A1B92E37764BF1C3F760F27A904ECB7F6FAD68CB380B000EE1D68B331F2461688DD7A0F1', '2022-01-28 13:07:42', '2022-01-30 15:51:51', '59.99.82.174', 0, 1, 18, 294, 2000, 11, 8, 1395.25, -1863.6, 15.009, 1398.47, -1863.56, 13.547, 270.865, 0, 0, 16555, 3580497, 0, 1, 19, 3, 19, 0, 'None', 0, 90.1, 82.18, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '9', 0, '4224', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643980132, 0, 0, 0, 0, 25, 29, 31, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 6, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 126, 30, 52, 51, 139, 0, 0, 0, '0', '0', '0', 0, 2, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1645973049, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1646108644, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(225, 'Fernandez_Goes', '21D5CB651222C347EA1284C0ACF162000B4D3E34766F0D00312E3480F633088822809B6A54BA7EDFA17E8FCB5713F8912EE3A218DD98D88C38BBF611B1B1ED2B', '2022-01-28 13:08:35', '2022-01-28 13:14:43', '111.92.75.38', 0, 1, 18, 271, 1935, 12, 9, 1203.51, -1397.27, 15.009, 1195.81, -1391.44, 12.731, 96.189, 0, 0, 313000, 2000, 0, 1, 0, 24, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643980148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 99, 70, 99, 24, 99, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(226, 'Kallipulla_Achu', 'FE3DA623F38C7D4C5C1DF9F6811B6E2C89D89ECDE40E51CED7C63E19A558F19B2143093439AD1E9E9BEAA4A3F355F824D09711AD9CD962D9199EC66F6DA6199D', '2022-01-28 13:08:58', '2022-01-30 15:46:36', '42.111.224.119', 0, 1, 18, 76, 1928, 8, 7, 1532.84, -1654.73, 14.465, 1533.23, -1651.3, 13.383, 353.541, 0, 0, 4228, 3650792, 0, 1, 12, 0, 12, 7, 'ACHU', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '12058', 5, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643980164, 0, 0, 0, 0, 25, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 10, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 151, 93, 31, 18, 55, 0, 0, 7212, '0', '0', '0', 0, 2, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1646023648, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(227, 'Techy_Tom', '014337E62EE45B625D3983A5FCC3AFDB401F3C443620AF8F13E62F69E0C75D9ACE1070E60FD34A73585ED76710BA44CD51E016641B47E36AB6A98663B62C4CA2', '2022-01-28 13:09:49', '2022-01-30 15:13:06', '103.104.46.49', 0, 1, 18, 123, 1987, 10, 9, 382.046, -2285.44, 14.859, 382.37, -2288.5, 13.068, 8.286, 0, 0, 15439, 2263347, 0, 1, 6, 11, 6, 0, 'None', 0, 90.1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '5090', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643980212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3, 0, 6, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 0, 81, 60, 38, 137, 0, 0, 3020, '0', '0', '0', 0, 1, 2, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1646116160, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(228, 'Chekuthaan_Laser', 'E715898A9D31A38A7FCFE44187742F488FF1577996DAABE8E5BFD7E9A66FC0A1B1BCF9ED5A99AAADEEE671CA32AE3321B9E49B221AC9DEF2C4E119B96284A547', '2022-01-28 13:12:21', '2022-01-29 07:13:12', '103.170.54.242', 0, 1, 18, 115, 1962, 11, 22, 819.049, -1791.15, 15.651, 817.981, -1788.17, 13.687, 15.383, 0, 0, 313000, 2000, 0, 1, 0, 18, 0, 0, 'None', 0, 83.83, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643980361, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 60, 91, 60, 7, 90, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(229, 'Kochu_Kunj', '0336F530EE8E7F57CC2D3537218DDE9B7F33C6F58F4A5B0346769413C2E64A9D1867D6CBB9305510DB0EC01A44D78E2A9A78744C5156BD3C6EDB24DE05585664', '2022-01-28 13:13:14', '2022-01-30 14:05:24', '42.106.188.217', 0, 1, 18, 294, 2014, 6, 30, 1058.61, -1361.43, 16.439, 1056.98, -1331.94, 12.953, 14.462, 0, 0, 41480, 204030, 458075, 1, 5, 41, 5, 0, 'None', 7, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '6893', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643980412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 5, -1, 0, 'Nobody', 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 32, 100, 31, 11, 42, 0, 0, 5871, '0', '0', '0', 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1645967968, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1646023865, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(230, 'German_Kannapi', '963BA5E9E5C10CF3A5AB0FEA744902ED27C5F28AA7034B09B9F94ABD88C49C4C72E5C144AABBF061895339EE6CFFE73DBCF25550B0B7A243BBDB3512BD2B9F68', '2022-01-28 13:24:50', '2022-01-30 14:34:05', '27.63.203.127', 0, 1, 18, 115, 2005, 9, 6, 1520.3, -1943.24, 21.07, 1524.95, -1943.21, 18.355, 134.583, 0, 0, 0, 0, 396413, 1, 4, 61, 4, 0, 'None', 0, 23.6, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '10455', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643981167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 122, 68, 62, 26, 2, 0, 0, 7555, '0', '0', '0', 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(231, 'Rio_Jack.', '02BE41A2E1C526786017363B5E11FD48A6A66D329618716789AD43131709BBF22D8D21A00710E67E654E0A9182125952F560D0BEF278412FEBCDF9102F0E15A2', '2022-01-28 13:29:27', '2022-01-28 13:37:01', '137.97.88.122', 0, 1, 18, 125, 2000, 9, 28, 1465.93, -1036.98, 27.92, 1461.85, -1031.56, 23.222, 254.03, 0, 0, 137015, 147500, 0, 1, 1, 9, 1, 0, 'None', 0, 85.15, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '5549', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643981482, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 75, 82, 75, 14, 135, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(232, 'Zayed_Masood', '7FA73F4E3BFB6B26954E8FBCB7B5758E3EFD546CE0B916660BA770103D063AFDFCD940B28BEC4435C723C13A58472664F8F10C126C94DA9F661E0D2FF56EE338', '2022-01-28 13:32:13', '2022-01-29 13:49:45', '111.92.76.227', 0, 1, 18, 123, 2006, 1, 19, 1391.95, -1746.5, 14.798, 1390.59, -1749.62, 13.383, 158.681, 0, 0, 303000, 2000, 0, 1, 0, 6, 0, 0, 'None', 0, 98.727, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '11', 0, '4170', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643981566, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 27, 97, 27, 2, 87, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(233, 'Kattalan_Porinju', '22F79B0087DBDB8ECD741470346A464A36683B02D1284126D1AFD4BE3CA3929F5DC98D38233E5878AF2159EDD3E907AC9E60FC2E2AADA8C9D623289084DF5810', '2022-01-28 13:36:59', '2022-01-28 13:51:38', '117.207.232.4', 0, 1, 18, 82, 1997, 3, 8, 1453.42, -1034.35, 27.496, 1459.55, -1030.14, 23.483, 276.024, 0, 0, 13985, 111700, 0, 1, 0, 30, 0, 0, 'None', 0, 88.78, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '10677', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643981881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 102, 85, 102, 12, 102, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(234, 'Kodali_Vaasu', '99E28820CF7E9BE3BF8BE79FC28F0B19D991AF3C202CB92920BF7A6BC18D6B6DDDD1B2F27A4C90C97F9C4AC8D8E4A1A780D06AED5C003812C7C1CDD677853831', '2022-01-28 13:39:58', '2022-01-29 07:43:11', '150.129.102.96', 0, 1, 18, 29, 1999, 8, 1, 1069.45, -1405.7, 14.26, 1074.62, -1407.23, 13.542, 215.829, 0, 0, 267400, 2000, 0, 1, 0, 77, 0, 0, 'None', 0, 92.41, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '14', 0, '9465', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643982607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 58, 60, 118, 32, 118, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(235, 'Joji_Xz', '79E7B43586AA51D62693ABEC62E427B411DAB79098810D6AD416E5D041E0340090A837224DB1C98246C8F4A4110529025D011AB6E8C20D38A96503D042C40C33', '2022-01-28 13:48:02', '2022-01-30 14:57:57', '103.81.182.28', 0, 1, 18, 294, 2004, 1, 1, 399.78, -2287.26, 8.864, 400.895, -2288.08, 7.836, 233.979, 0, 0, -3038, -21924, 0, 1, 14, 18, 14, 0, 'None', 0, 34.966, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '8279', 5, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 0, 0, 0, 10, 0, 0, 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643982526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 3, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Server', 'Logging to avoid arrest', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 75, 18, 75, 10, 15, 0, 0, 1630, '0', '0', '0', 0, 3, 1, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1645978169, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1646116746, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(236, 'Chintu_Kuttan', '6918F9CC4EF185B1059D86C3386D9492F3C0D38DB42A01493A21B44022B26A7BCBD96F280FC12C40B1E836B070C4061B551A092FEED352E63B2C2435F5309675', '2022-01-28 14:10:15', '2022-01-30 10:08:49', '157.46.162.47', 0, 1, 18, 276, 1982, 12, 30, 1802.3, -1536.67, 13.337, 1805.19, -1537.85, 11.794, 276.222, 0, 0, 118150, 2000, 0, 1, 1, 10, 1, 0, 'None', 0, 88, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '3195', -1, -1, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643983868, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 97, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 2, 69, 62, 25, 32, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(237, 'Jack_Settan', 'CC6D537EA9E54C12B076B247AF68A651999963ACD9DABC4E0F7F18D1A8A23C3A0FC5D74E78B80FBBCF2CF0FD1118C9210BFD743D284FB94A6689BBBBB794AE05', '2022-01-28 14:27:37', '2022-01-30 15:51:19', '103.161.144.101', 0, 1, 18, 294, 1997, 5, 15, 1078.77, -290.784, 74.398, 1082.68, -289.449, 74.242, 356.013, 0, 0, 3351, 55231, 0, 1, 12, 36, 12, 0, 'None', 0, 22.28, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '3375', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643984881, 0, 0, 5, 0, 25, 29, 31, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1357, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 5, 6, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 161, 17, 41, 10, 101, 0, 0, 0, '0', '0', '0', 0, 2, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1646028054, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1646025525, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(238, 'Ains_Ag', '8DDB02E7FC9FDAB2965AFE7AE8987CABEF0DDEB7F4235294CA090DC9C7C08B121F2A2005F81CE4596CFE021ACF426027FA6648044BD203A92084879E56843942', '2022-01-28 14:34:00', '2022-01-30 11:18:25', '157.46.164.204', 0, 1, 18, 15, 2003, 4, 18, 1535.85, -1675.66, 14.837, 1539.17, -1676.33, 13.547, 283.519, 0, 0, 295400, 2000, 0, 1, 0, 41, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '5705', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643985295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, 150, 78, 30, 17, 120, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(239, 'Maztro_Don', 'DE3FD587C7E464EE833090946EC1F3A77039CC93770A17FF8ECD07F7527F5D1E453879B46DD98603CC5785997BE36DC56C3D76404F47F0CDAC7FD002450E9093', '2022-01-28 14:35:22', '2022-01-30 15:44:06', '45.249.168.70', 0, 1, 18, 3, 1997, 6, 10, 1100.21, -54.542, 19.868, 1105.4, -54.275, 17.647, 121.017, 0, 0, 12949, 667664, 209791, 1, 10, 12, 10, 0, 'None', 0, 100, 86.14, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '6730', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643985387, 0, 0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 0, 0, 0, 0, 0, 0, 1, -1, 10, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 175, 71, 115, 20, 145, 0, 0, 15364, '0', '0', '0', 0, 2, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1646135807, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1646030515, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(240, 'Ace_Rocky', 'EFA69CCA806D87DA409234E0B1A1DCC15DCA3218BF5BBD1727D5B92163C3E6B0F56716B79A9A4C65F431C78F0E3F185971BB519DD4D315FC85405420CD79CD81', '2022-01-28 14:40:20', '2022-01-30 16:04:40', '223.228.184.148', 0, 1, 18, 294, 2003, 1, 26, 1087.3, -1405.92, 14.299, 1090.68, -1405.05, 13.477, 332.625, 0, 0, 1495, 1, 0, 1, 32, 7, 32, 0, 'None', 0, 95.05, 98.68, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '5913', 5, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643985876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 5, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Server', 'Logging to avoid arrest', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 168, 10, 108, 16, 108, 0, 0, 0, '0', '0', '0', 0, 4, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1646034795, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1645252901, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(241, 'Minnal_Unni', '2BE13161DF97518932DD1569D97C8D5717E12A7319E51C9C7F0D74533B7B75DD56B4D486B4FF4C1EAFD8928E455BCF7D8E9602D54F3687E0E922E33500CF94A2', '2022-01-28 14:41:20', '2022-01-29 09:40:49', '42.104.154.133', 0, 1, 18, 50, 1997, 10, 26, 1421.08, -1731.05, 14.312, 1419.68, -1730.86, 13.383, 84.317, 0, 0, 1500, 294000, 0, 1, 0, 28, 0, 0, 'None', 0, 98.332, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '9750', -1, -1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643985719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 113, 86, 53, 11, 83, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(242, 'Mk_Kuttusan', 'D270A36196DEEF4250703149DE1DE484AAD44D2B5D787D459446EDEC67CA2BB3E3750E9803FF5B56B8A8E03E6878BA6B6B2983CE0A0A900E01AB6F4C5F9EFCAD', '2022-01-28 14:44:31', '2022-01-30 14:58:34', '137.97.116.111', 0, 1, 18, 115, 2002, 6, 8, 356.946, -2334.13, 8.7, 358.363, -2333.97, 7.836, 272.626, 0, 0, 74399894, 11602151, 0, 1, 10, 17, 10, 0, 'None', 0, 12.676, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '7060', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643985961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, 0, 5, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 28, 13, 28, 90, 37, 0, 0, 6640, '0', '0', '0', 0, 2, 8, 8, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1646098612, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1652174742, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(243, 'Pathuz_Xz', '9B1C7D8C09736AA481D3E739A9AA70045004AB700B7CCD0C23D8948542E1A04B0381FE6A8E3E1FD8C0E125F69E9C3E4FACE3C4D2313F1280EF515020E73A3C9F', '2022-01-28 14:45:11', '2022-01-29 16:26:47', '223.228.168.37', 0, 2, 18, 169, 1931, 6, 5, 1460.13, -1021.97, 24.684, 1458.73, -1022.27, 23.828, 23.341, 0, 0, 8000, 83300, 0, 1, 0, 54, 0, 0, 'None', 0, 96.04, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '10922', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643987198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 72, 71, 12, 23, 42, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(244, 'Jonathan_James', '62BFA4D5930B99F9BA389269979B754E1CB47E970E86CE0A5C14E38A436633016EF1E57B1980B50381C3B3D5431C075FA1D737388510D15F6647FF5F8FAB213F', '2022-01-28 14:49:32', '2022-01-30 08:50:33', '42.107.201.245', 0, 1, 18, 208, 1999, 10, 22, 1263.74, -200.413, 1.016, 1265.45, -203.292, -0.532, 211.451, 0, 0, 1950, 291940, 0, 1, 0, 24, 0, 0, 'None', 0, 57.853, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '14', 0, '8565', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643986241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 79, 86, 19, 11, 49, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(245, 'Miya_Kutty', '4BB21AD87658D50372E7FE8ECC56EC8F1F4DC995C940A0CDB0DDE2FCCC49B454005CBA0154216EDA06B463C073086A18050EED2A8359433F304372E1E6AE4C4B', '2022-01-28 14:49:33', '2022-01-30 15:45:27', '42.105.28.190', 0, 2, 18, 211, 1925, 5, 29, 1023.97, -372.007, 74.519, 1020.77, -373.205, 73.395, 189.95, 0, 0, 39723, 706014, 0, 1, 13, 9, 13, 7, 'RIDER_KANAPI', 0, 95.05, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '5787', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643986207, 0, 0, 3, 0, 25, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2101, 0, 2026, 0, 0, 0, 0, 0, 0, 0, 1, -1, 6, 0, -1, 0, 'Nobody', 0, 0, 0, 16, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 211, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 36, 3, 96, 100, 11745, 0, 0, 6002, '0', '0', '0', 0, 2, 10, 10, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1646885660, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(246, 'Pushpa_Raj', '2F9959B230A44678DD2DC29F037BA1159F233AA9AB183CE3A0678EAAE002E5AA6F27F47144A1A4365116D3DB1B58EC47896623B92D85CB2F191705DAF11858B8', '2022-01-28 14:56:43', '2022-01-28 17:24:05', '45.249.169.181', 0, 1, 18, 72, 2006, 10, 6, 1336.1, -1395.46, 14.215, 1341.81, -1393.97, 14.052, 281.263, 0, 0, 90500, 196000, 0, 1, 2, 22, 2, 0, 'None', 0, 36.757, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '24', 0, '11608', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643986743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 91, 43, 91, 46, 31, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(247, 'Chaver_Usman', '9DB1DBF59320D92ABE10224489CF16DA59F1A6AC3CF09B39F437DF4216C602D72D09C0F32F207B23CFB649C39D1C391D6665A64498F62500866E5944CE84AF76', '2022-01-28 15:01:22', '2022-01-30 15:14:38', '117.216.148.188', 0, 1, 18, 294, 1995, 2, 15, 368.315, -2201.85, 9.533, 368.555, -2204.99, 7.835, 184.06, 0, 0, 100850, 2000, 0, 1, 3, 26, 3, 0, 'None', 0, 30, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '9', 0, '5388', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643986993, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 4, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 22, 30, 22, 0, 22, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1645974680, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(248, 'Abhi_Mode', 'F4EB90FE7FC2B429AAEFC9DBECF494D9943A380C3BFBD37C7A1D2B495A2DF8A510A616ADAF1D9987F5C939873D02C858FAE9111709462E09E62EEF4825E16A52', '2022-01-28 15:19:06', '2022-01-28 15:19:06', '27.59.226.140', 0, 1, 18, 23, 1929, 4, 8, 1062.08, -1438.66, 15.693, 1067.27, -1437.26, 13.025, 17.716, 0, 0, 312000, 2000, 0, 1, 0, 11, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643987966, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 178, 95, 118, 4, 118, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(249, 'Anjali_Anju', '4C1974B91D453276B614CACDE3D81B0E50B6E7CA8796779DC9063CD98B2E868CD00A8419B45EC1393E2E1AE393402188E139D6B1DECB7A449F0702FA7D528C33', '2022-01-28 15:34:37', '2022-01-30 15:48:20', '27.61.55.133', 0, 2, 18, 263, 1998, 12, 9, 374.966, -2191.29, 8.913, 376.143, -2194.36, 7.835, 192.802, 0, 0, 1172, 960142, 0, 1, 10, 21, 10, 0, 'None', 0, 68.423, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '9773', 5, -1, 1, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643988945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Server', 'Logging to avoid arrest', 1, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 89, 53, 25, 34, 139, 3, 0, 0, '0', '0', '0', 0, 2, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1646065775, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1645980364, 10, 0, 2, 0, 0, 0, 0, 0, 0, 0),
(250, 'Kallipulla_Simon', '843608FE3BFB94BA9377D8EF11BEB078427B1EEF7D664EE6911C64C75174CBDD482BDD626DEB1D543D076528B21CDD480416540F9CF7F74A497100A22BD8F766', '2022-01-28 15:47:47', '2022-01-29 14:44:21', '157.44.221.139', 0, 1, 18, 294, 2001, 8, 17, 1052.21, -62.086, 22.755, 1033.02, -65.183, 22.243, 72.117, 0, 0, 295490, 2000, 0, 1, 0, 36, 0, 0, 'None', 0, 48.133, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '14', 0, '9430', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643989861, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 219, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 146, 74, 86, 20, 63, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1645977666, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(251, 'Dawood_ibrahim', '3CA6E515B31DCCF0A4DF707A15940B5E108A431C07B244D4AC0EBC58ADD8C3295D1B665757BF231337DDEC6D1803D986B5B76C21192DD021E0E26A7939235810', '2022-01-28 15:55:05', '2022-01-30 15:30:45', '1.39.76.126', 0, 1, 18, 117, 2004, 4, 12, 977.849, -123.212, 1.438, 975.252, -125.11, -0.494, 102.018, 0, 0, 236550, 21382, 310217, 1, 3, 34, 3, 0, 'None', 0, 88.78, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '4106', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643990291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 51, 70, 44, 24, 96, 0, 0, 16939, '0', '0', '0', 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1674492717, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(252, 'Hishbin_Kv', '12210005D8950B6E75FD00D7BE90C7A06454CFE7BC128BC9ADDA2DA445A07B623DA2BA7863466A0B76FE5CDB7C239DC2D4FE1157B9883C298B0B6990C62B54ED', '2022-01-28 15:56:28', '2022-01-29 16:34:10', '103.78.17.124', 0, 1, 18, 294, 1927, 1, 5, 1096.78, -61.236, 19.554, 1099.98, -62.254, 18.059, 275.509, 0, 0, 58956, 43447, 114738, 1, 5, 25, 5, 0, 'None', 0, 10.4, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '3044', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643990622, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 14, 5, 74, 20, 74, 0, 0, 17986, '0', '0', '0', 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(253, 'Rocky_Star', '6EE56C8BEAFD24B314E6D21C4668D59C38F965EE938B31C6B269AEDF147B656959AE9AAD1B0DE4AF22CD72B351A739DD4A99FEDA9FC27A158F228406244FD549', '2022-01-28 16:03:04', '2022-01-30 16:23:41', '157.44.131.216', 0, 1, 18, 294, 1997, 2, 5, 1025.32, -440.162, 55.808, 1032.85, -454.471, 51.605, 179.256, 0, 0, 8126, 82864, 0, 1, 8, 48, 8, 0, 'None', 0, 83.17, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '3558', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643990677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 5, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 156, 23, 96, 62, 66, 0, 0, 9624, '0', '0', '0', 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(254, 'David_Unni', 'EE98A46C44AE0D556F2D41B8019063C8D7AB306FD84F8995DB0CC36C4CAF377971690902007F9A318247E978A0BC1FA9525BB77EF4429B162ACDED6CBC023CC3', '2022-01-28 16:06:43', '2022-01-30 16:09:26', '117.204.158.173', 0, 1, 18, 294, 2006, 4, 20, 1024.84, -309.818, 82.853, 1021.87, -308.529, 81.596, 129.271, 0, 0, 3650, 0, 0, 1, 13, 5, 13, 0, 'None', 0, 64.03, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '8196', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643990858, 0, 0, 5, 22, 25, 29, 31, 33, 0, 0, 0, 0, 0, 0, 0, 1, 7, 10, 3, 0, 3, 0, 0, 0, 0, 0, 0, -1, 1, 0, 4, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 111, 91, 108, 11, 58, 0, 0, 5710, '0', '0', '0', 0, 2, 6, 6, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1645982920, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1645982200, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `ip`, `setup`, `gender`, `age`, `skin`, `BirthYear`, `BirthMonth`, `BirthDay`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `MapperMod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `covid`, `covidtimer`, `totalpatients`, `totalfires`, `rarecooldown`, `customtitle`, `customcolor`, `callsign`, `mask`, `diamonds`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `investor`, `bitcoins`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `gunlicense`, `dirtycash`, `comserv`, `fmtime`, `facemask`, `groupleader`, `crew`, `pgroup`, `drugwater`, `drugpot`, `drugcrack`, `drugmuriatic`, `drughydrogen`, `drugbattery`, `drugacetone`, `drugethyl`, `drugsulfuric`, `druglithium`, `drugiodine`, `drugopium`, `drugamphetamine`, `drugbenzodioxol`, `gunlicensedate`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`) VALUES
(255, 'Chachu_Adhi', '75D0FF1B1177C1A3530198A1128E7C9E741C829A2A9A9FF47577730DB6169EFFAFF9596F9F6BBA7B04BE11EAFA5F761D64F40E92022E759F1325354E652DE415', '2022-01-28 16:09:11', '2022-01-30 16:10:22', '42.107.199.1', 0, 1, 18, 2, 1929, 7, 10, 992.128, -68.272, 26.19, 993.345, -67.509, 25.788, 85.29, 0, 0, 53093, 965622, 187630, 1, 10, 12, 10, 0, 'None', 0, 74.934, 60.4, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '12', 0, '8385', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643990987, 0, 0, 3, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 271, 0, 0, 0, 0, 0, 0, 0, 1, -1, 1, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Server', 'Logging to avoid arrest', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 151, 15, 28, 85, 26, 0, 0, 0, '0', '0', '0', 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1646034802, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(256, 'Sarak_Danny', '963BA5E9E5C10CF3A5AB0FEA744902ED27C5F28AA7034B09B9F94ABD88C49C4C72E5C144AABBF061895339EE6CFFE73DBCF25550B0B7A243BBDB3512BD2B9F68', '2022-01-28 16:12:25', '2022-01-28 16:12:25', '157.46.210.94', 0, 1, 18, 29, 2000, 11, 6, 1389.72, -30.85, 1002.33, 1392.98, -31.632, 1000.86, 268.298, 1, 333, 313000, 2000, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643991168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 176, 99, 56, 1, 26, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(257, 'Phil_Foden', 'CC51C0518EAF93DCA3E94AC0651E321D72B538C9CBC22131A3CFA53F9734248E91130C5DC7ED513A4FCFC4A4F03C3A9B589CAC16F1321FBF6B5296D9A41D8EFD', '2022-01-28 16:17:23', '2022-01-30 09:48:24', '157.44.200.234', 0, 1, 18, 294, 2002, 3, 29, 789.992, -1096.55, 26.511, 788.62, -1105.22, 23.621, 166.083, 0, 0, 312999, 2000, 0, 1, 0, 13, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643991471, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 89, 94, 89, 5, 59, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(258, 'Kmc_Hybolt', '99BA36D32CB6AA4A5C7E8D1A6E662440CE47ABDC4CF943A3CDCFD9084912416CE54EE721603FD3AA7A9DB6BB5ED213BB9854A3EB6E715B0E41948F54FF587469', '2022-01-28 16:25:28', '2022-01-29 20:04:09', '116.68.73.251', 0, 1, 18, 293, 2003, 10, 1, -91.16, -1726.44, 19.102, 226.297, 1114.01, 1080.98, 80.241, 5, 4000312, 239500, 278420, 21178, 1, 3, 26, 3, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '3612', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 1, 0, 0, 0, 0, 0, 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1643992029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 2, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 240, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 69, 49, 69, 29, 57, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(259, 'Mittu_Mon', 'EE1E06A93161097134BCE627F56D5C8E5CB038D5B471E6EB72BB1534690E1CC2DF97EB07F7DA462D4CA3C3A51FC1DC5188E8395B691CF279E2425003560C868C', '2022-01-29 02:41:02', '2022-01-30 05:54:20', '106.197.29.239', 0, 1, 18, 23, 2003, 11, 1, 1131.55, -1424.49, 16.858, 1133.43, -1423.95, 15.797, 9.673, 0, 0, 5300, 273600, 0, 1, 1, 21, 1, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '9', 0, '9959', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644029371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 48, 100, 48, 21, 19, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(260, 'Ziyad_Zadh', 'A30A049352086B2D8B7D7C38841FA4EE295AE794F851C58988F7AF614EF7D4E162D50AFE09C17F55CD5C9AC0EEBA1C2C91EF7232F504147BEF12F578F99BA23F', '2022-01-29 03:10:07', '2022-01-30 09:50:30', '157.44.153.229', 0, 1, 18, 86, 2000, 7, 25, 1066.51, -56.059, 23.919, 1074.96, -56.297, 20.913, 263.502, 0, 0, 300532, 51279, 123488, 1, 1, 7, 1, 0, 'None', 0, 90.1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '9846', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1644030663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 5, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85, 28, 78, 88, 18, 28, 0, 0, 17944, '0', '0', '0', 0, 2, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(261, 'Pavithran_Kunj', '51C9C688544439C1CE10AE746DC031E846CDFF47FDEA14D1444BA06CD8A48A489E653A89ED4D1BAE42F15FB18C373D20283C4FC2D04F3AE638221737986CD1E2', '2022-01-29 03:59:39', '2022-01-30 15:43:34', '45.116.228.244', 0, 1, 18, 294, 2006, 8, 30, 1056.07, -324.994, 74.882, 1056.77, -322.746, 73.985, 342.647, 0, 0, 43863, 691612, 0, 1, 6, 39, 6, 0, 'None', 0, 50, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '10528', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644033641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 5, 6, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 173, 99, 53, 1, 23, 0, 0, 6543, '0', '0', '0', 0, 2, 0, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1646067499, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(262, 'Tomz_Mali', 'CACF060B8E7AB0EF6C8504A6B8681EF800187E96D75861E644BC428ECBDEF16E7340ED9C7F6783D09AE12EDF0ADF65AD5EC416C066A37DCD206E27F97621D8AD', '2022-01-29 04:20:13', '2022-01-30 16:03:55', '103.146.175.0', 0, 1, 18, 283, 1990, 8, 9, 236.844, 169.313, 1004.41, 244.548, 165.673, 1003.02, 293.148, 3, 59, 5028, 969174, 0, 1, 12, 30, 12, 0, 'None', 0, 96.04, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '9', 0, '12464', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1644034913, 0, 0, 3, 22, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 1, 299, -1, 0, 597, 0, 0, 0, 0, 0, 0, 0, 1, -1, 10, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'GOD', 'FIRING AT SAFEZON ', 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 54, 96, 106, 18, 53, 0, 0, 0, '0', '0', '0', 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1646034833, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1646127964, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(263, 'Ammu_Kutty', '964D67B505E3D70768FE950ACDCC3B2A270DEA2D52BEB8A190241DC719E7DC7F959742551CF3EB14EF1C96F476A75D15EC760B715C042FD7B286BE8D3F402CB6', '2022-01-29 04:43:20', '2022-01-30 15:48:13', '103.203.72.216', 0, 2, 18, 85, 2006, 5, 1, 1245.33, -1350.09, 14.555, 1262.08, -1352.95, 12.747, 197.109, 0, 0, 294750, 2000, 0, 1, 0, 20, 0, 0, 'None', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '10511', 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644036232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 93, 89, 33, 9, 3, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(264, 'Hitler_Rom', '171FCBA21C3F7045FF07B1DF97DD4E8D109DD571383EEA720164D012A55C29DBF8E78CCF9ED3E7FA1DED24A60168171D0C62FE86388171D5E6AD71BF84435FD3', '2022-01-29 07:03:58', '2022-01-30 10:28:58', '103.161.55.75', 0, 1, 18, 107, 1940, 1, 11, 1144.32, -1355.82, 14.811, 1145.06, -1359.01, 13.686, 192.833, 0, 0, 4250, 1001005, 31250, 1, 4, 19, 4, 7, 'HITLER', 0, 100, 94.72, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '8248', 5, -1, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644044657, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 19, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, -1, 7, 0, -1, 0, 'Nobody', 0, 0, 0, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 102, 4, 102, 77, 72, 0, 0, 15875, '0', '0', '0', 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(265, 'Lucifer_Annan', '33C4EBF62281D918811C8F1ABDCBF9749EF0EEAC762947A0E8B78708F76D31EA7609E51BB1A78EC8628BBE2E3D90BAB40C7CF9DF1EF20948D01ACF9AF241DD18', '2022-01-29 07:13:01', '2022-01-30 15:30:05', '27.62.84.6', 0, 1, 18, 294, 2003, 2, 14, 1338.24, -925.112, 36.206, 1252.38, -350.224, 4.66, 32.909, 0, 0, -463, 18345, 0, 1, 13, 40, 13, 0, 'None', 0, 32, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '3402', 5, -1, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1644045623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 3, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 240, 0, 0, 1, 'GOD', 'CJ', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 99, 24, 99, 5, 69, 0, 0, 0, '0', '0', '0', 0, 3, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(266, 'Vaattu_Jonny', 'D11427D0D2DF484970320219C02DBBFD958B9B66A7F1253B3CA5110009DEBFBD374C5BFF4628639272BE54B770E345DD4125E55454CE87770C2A3B5E73665E7A', '2022-01-29 07:17:40', '2022-01-30 14:15:42', '157.44.142.145', 0, 1, 18, 285, 2001, 9, 13, 1211.4, -2036.78, 69.011, 1216.76, -2036.5, 67.07, 270.915, 0, 0, 308400, 2000, 0, 1, 2, 9, 2, 0, 'None', 0, 74.772, 96.04, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '0', 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1644046509, 0, 0, 0, 22, 25, 29, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1199, 900, 600, 300, 0, 0, 0, 0, 0, 0, 0, 1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, 222, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 10, 90, 66, 44, 133, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1646040553, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(267, 'Mr_Thakkudu', '09F5B45FC25576702CD445F31BE0DED674FC4F68531EDAE7EBA31D973E0B7CEB384CE24BFF5FC3448BA9B32E2111ABD94998DD5817DDEF66F9981FEC67F1AE1B', '2022-01-29 07:21:51', '2022-01-29 07:21:51', '103.170.54.139', 0, 1, 18, 1, 1934, 5, 12, 1555.67, -1675.6, 16.844, 1554.69, -1675.58, 16.195, 88.94, 0, 0, 73000, 2000, 0, 1, 0, 8, 0, 0, 'None', 0, 97.478, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '5', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644045743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 131, 96, 11, 3, 41, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(268, 'Mikhael_Williams', '52A28AE6773E2136FD1E8329ADD3344D24DC2E47BEC0B0514F262533C9E19D2E23C99D9CFA57C7F7FE8ADA05521577D7FA483F5DF62E533D7319B596C4ADE264', '2022-01-29 07:28:07', '2022-01-30 06:55:09', '223.228.163.28', 0, 1, 18, 186, 1931, 10, 10, 553.987, -1280.86, 18.668, 557.746, -1276.73, 16.814, 47.229, 0, 0, 297900, 2000, 0, 1, 0, 27, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '11588', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1644046102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 74, 85, 74, 12, 74, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(269, 'Ace_Mani', '9D3F7474E5F93D0F72557B3A23465AC6FF6D979F481CC78C774B5175BCC263826EA93FCAAF9B5F13E3FF51DBD1ECAC623822C82148F791112D25BBFDDED74BBE', '2022-01-29 08:13:55', '2022-01-30 09:15:12', '157.46.179.75', 0, 1, 18, 19, 2004, 8, 21, 1088.73, -62.581, 19.491, 1087.23, -62.45, 18.56, 84.966, 0, 0, 16590, 1253651, 227746, 1, 4, 41, 4, 0, 'None', 0, 85.15, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '10969', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644049033, 0, 0, 0, 22, 25, 29, 31, 33, 0, 0, 0, 0, 0, 0, 0, 0, 9, 12, 10, 10, 10, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 13, 85, 20, 19, 108, 0, 0, 7517, '0', '0', '0', 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1646121079, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(270, 'Boxey_Master', '49CA0B9820C0147704C9E70C84D35AECE65766D9C0232DBAE7B5B2E70D2B7F44D7D7965D7CF3A5712D8DD9AF8F1987D27C71A20999C2315494B613E14B16C1AB', '2022-01-29 08:16:08', '2022-01-29 08:31:50', '157.44.213.35', 0, 1, 18, 299, 1922, 11, 1, 1216.25, -1328.92, 15.673, 1210.88, -1329.34, 13.056, 229.646, 0, 0, 310500, 2000, 0, 1, 0, 19, 0, 0, 'None', 0, 70.752, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '0', 6, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644049000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 28, 97, 28, 8, 68, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(271, 'STEEL_ANNAN', '9A3F696DE8BF9BF2ACCC7E1AB52B064FD42F9A4A7127ED4ED384A9738F7D28F6B1D46F617C9949188F495B25DCC280D0CBF8AE7B606FDDD0FB06187FB9BE6433', '2022-01-29 08:17:14', '2022-01-29 08:39:40', '49.15.202.199', 0, 1, 18, 294, 2002, 5, 22, 1565.44, -1629.33, 14.288, 1566.73, -1628.74, 13.383, 305.634, 0, 0, 47765, 244500, 0, 1, 1, 12, 1, 0, 'None', 0, 92.41, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '7', 0, '5390', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644049389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 105, 80, 45, 16, 45, 0, 0, 0, '0', '0', '0', 0, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(272, 'Aleena_MK', '8F851DCCB0B80B0C06E90F308C11F603E0553702AFC8F7CB17A7B5EC274BDAA46780A2484D321E3E58430D637E059AE485A819BBB9ED44E7F9133CA371100D89', '2022-01-29 08:21:04', '2022-01-29 09:02:10', '106.197.20.101', 0, 1, 18, 141, 2008, 3, 31, 1276.37, -1334.96, 15.212, 1278.23, -1336.64, 13.363, 309.954, 0, 0, 10890, 291000, 0, 1, 0, 43, 0, 0, 'None', 0, 40.418, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '14', 0, '0', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644049407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, 153, 78, 33, 17, 123, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(273, 'Black_King', '103668B568D8D2B11049855210FF4681A1D44650F2A96253718E6C59D55914D8FFDAD3AA4110CFF8D391EEC7A5B6E9AC384A8B04B7634058EE045DBC2A83A901', '2022-01-29 09:40:16', '2022-01-30 11:58:23', '117.230.4.215', 0, 1, 18, 2, 1980, 6, 1, 1400.94, -1416.7, 14.438, 1395.39, -1414.97, 13.383, 77.541, 0, 333, 306950, 1485, 0, 1, 2, 6, 2, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '0', 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644054196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 42, 22, 42, 62, 102, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(274, 'John_Wick', '60ABE1547C2BDFD01D71A50DB1B396AAB776FDBE4DC7FDC5D9AB5AE4E4D07B88D50206D987187A8B22CD3FC47D1876F6DE3F2C15E4200432B81BE7DEAE8AF1CA', '2022-01-29 12:16:55', '2022-01-29 12:16:55', '103.70.197.156', 0, 1, 18, 48, 1940, 1, 1, 1536.92, -2180.49, 14.361, 1533.6, -2178.61, 13.558, 60.469, 0, 0, 313000, 2000, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644063431, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 58, 100, 58, 0, 58, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(275, 'Jimbru_Mon', '9DA117B186C4A7277F004EDDBB67D971A959899A01B3DAA102B44BAA4F7F191099D3734D0A0FE3814F391317EBB9FE42BCB163C359D28E091E349EF64E453CEA', '2022-01-29 14:36:30', '2022-01-30 15:21:54', '157.46.134.0', 0, 1, 18, 117, 2001, 6, 7, 382.419, -2285.8, 11.26, 382.852, -2282.96, 7.836, 344.528, 0, 0, 2500, 341547, 0, 1, 4, 18, 4, 7, 'Kannapi_Mon', 0, 28.05, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '7822', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644071814, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3, 0, 5, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 106, 2, 46, 78, 106, 0, 0, 7747, '0', '0', '0', 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(276, 'Babu_Namboothirii', '5858183A9DCC97A1ABF8D6246E66C740A1A96B2AD88D07FA7FB07F7C7F790BBF5E24BABC68A5DA3623341E2704C3B154EFCC57E55F98A8761C60281EEB419FF5', '2022-01-29 19:26:22', '2022-01-29 19:26:22', '223.227.117.142', 0, 1, 18, 289, 1938, 7, 11, 1674.11, -2309.87, -0.879, 1673.55, -2313.84, -2.666, 167.655, 0, 0, 313000, 2000, 0, 1, 0, 2, 0, 0, 'None', 0, 70.177, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644089203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 99, 100, 99, 0, 99, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(277, 'Mk_Shashi', '2EA7A0D2F69BD558A4476484F49E6A73AD9CE95CB0548E92C2A86244CF5370C3E16ADE5938FA6BF14D966A5B09162388EAB86F401CDC1E4A193B11CD630B6929', '2022-01-30 02:58:32', '2022-01-30 02:58:32', '137.97.125.165', 1, 1, 18, 299, 0, 0, 0, 50, 50, 50, 1529.6, -1691.2, 13.3, 0, 0, 0, 13000, 2000, 0, 1, 0, 0, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 12, 100, 12, 0, 12, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(278, 'Mr_Shot', '88F93221C36CFB2C6F9B3595C948BE1C3FDB316CE6499436A6038A3665030415F2C4932282620A8130555C3148FDE25219AA22D92D4C63C0CE9975A625C859CB', '2022-01-30 04:32:18', '2022-01-30 16:24:22', '42.109.144.248', 0, 1, 18, 29, 2003, 8, 10, 1917.25, -44.232, 1.167, 1921.63, -41.95, -0.167, 303.43, 0, 0, 268690, 288090, 0, 1, 4, 92, 4, 0, 'None', 0, 95, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '8883', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644122205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 335, 77, 34, 38, 35, 0, 0, 608, '0', '0', '0', 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(279, 'David_John', '4677A3F08464FD31E23BF3354E95125C600B694044074215DA3B0B005244938794BD160D9E7DEFF34F06185BF9A6B316EBC2D9B31B5AD0CB3DC941092BC174CC', '2022-01-30 06:38:04', '2022-01-30 08:15:13', '103.42.196.6', 0, 1, 18, 281, 1922, 1, 1, 1850.63, -1205.78, 21.942, 1849.72, -1215.65, 19.064, 259.043, 0, 0, 298000, 2000, 0, 1, 0, 28, 0, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '5716', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644129511, 0, 0, 3, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 1, -1, 8, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 48, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 150, 86, 90, 11, 120, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(280, 'Mad_Tyson', 'B91392DEB779E07FB7F27A502C022E90E8567EC5E4F64A31C167248835261308749FD0B6F205F74445D3F1EAEC96C1DD359FC0A1A42F075BE002EDEA34752F72', '2022-01-30 07:00:43', '2022-01-30 13:49:49', '27.61.44.72', 0, 1, 18, 121, 2000, 3, 21, 1177.64, -2055.85, 70.239, 1176.18, -2051.18, 69.008, 130.937, 0, 0, 88656, 2500000, 0, 1, 1, 39, 1, 0, 'None', 0, 82.51, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '2', 0, '2923', 12, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1644130998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3, 0, 5, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 160, 35, 100, 52, 100, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(281, 'Keerikkadan_Jose', '2025DE88E2F8388437B331C981B62B567DEFDB1049C7D392B0A1FB8213554742DBB556C7DE972B858827D5122B23B842121440262280C1A8E902F48276827255', '2022-01-30 08:32:53', '2022-01-30 08:42:33', '157.46.222.254', 0, 1, 18, 100, 1933, 3, 22, 1360.07, -1403.37, 14.744, 1356.55, -1399.04, 12.872, 111.363, 0, 0, 313000, 2000, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644136410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 128, 98, 68, 2, 8, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(282, 'Mk_verappan', '963BA5E9E5C10CF3A5AB0FEA744902ED27C5F28AA7034B09B9F94ABD88C49C4C72E5C144AABBF061895339EE6CFFE73DBCF25550B0B7A243BBDB3512BD2B9F68', '2022-01-30 10:27:00', '2022-01-30 16:18:53', '157.46.183.75', 0, 1, 18, 115, 2003, 10, 16, 1215.28, -743.81, 98.549, 1210.94, -744.745, 98.225, 95.186, 0, 0, 1500, 0, 10688, 1, 3, 61, 3, 0, 'None', 0, 42.03, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '3944', 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644143261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 67, 64, 67, 29, 37, 0, 0, 7135, '0', '0', '0', 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(283, 'Udumb_Vasu', 'B6DF1FD781843A889472CD4EE63E8A83E7C9D1103F61AA11485A9322105AFF19025544D1511FD9049DCD9584DB232C6EDD6DEFB950FA8FE76B154D1079E4C442', '2022-01-30 13:44:46', '2022-01-30 15:33:09', '157.44.201.140', 0, 1, 18, 2, 1930, 1, 21, 1669.43, 1422.8, 11.56, 1672.49, 1424.49, 10.784, 298.848, 0, 0, 309000, 2000, 0, 1, 0, 77, 0, 9, 'Kannapi', 0, 85.81, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644155100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 91, 58, 91, 34, 31, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(284, 'Omana_Kuttan', 'A052B0C2D181591C9B1D0D5E5B575FD31034914A08DB0E7F2BDF5B42B392D5F96D1FA9C42DAA96F2E8A58A747A7F6B91CEFF2B9EADBFCAA8D4661465695CECD0', '2022-01-30 16:07:00', '2022-01-30 16:07:00', '150.129.100.139', 0, 1, 18, 105, 1998, 6, 20, 1541.5, -2189.7, 14.52, 1544.11, -2189.22, 13.547, 203.197, 0, 0, 313000, 2000, 0, 1, 0, 17, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, '0', 0, '0', -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1644164355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 127, 92, 67, 6, 127, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `modelid` smallint(3) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `tickets` int(10) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 0,
  `dlock` tinyint(1) DEFAULT 0,
  `dlocked` tinyint(1) DEFAULT 0,
  `plate` varchar(32) DEFAULT 'None',
  `fuel` tinyint(3) DEFAULT 100,
  `health` float DEFAULT 1000,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `color1` smallint(3) DEFAULT 0,
  `color2` smallint(3) DEFAULT 0,
  `paintjob` smallint(3) DEFAULT -1,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `neon` smallint(5) DEFAULT 0,
  `neonenabled` tinyint(1) DEFAULT 0,
  `trunk` tinyint(1) DEFAULT 0,
  `mod_1` smallint(4) DEFAULT 0,
  `mod_2` smallint(4) DEFAULT 0,
  `mod_3` smallint(4) DEFAULT 0,
  `mod_4` smallint(4) DEFAULT 0,
  `mod_5` smallint(4) DEFAULT 0,
  `mod_6` smallint(4) DEFAULT 0,
  `mod_7` smallint(4) DEFAULT 0,
  `mod_8` smallint(4) DEFAULT 0,
  `mod_9` smallint(4) DEFAULT 0,
  `mod_10` smallint(4) DEFAULT 0,
  `mod_11` smallint(4) DEFAULT 0,
  `mod_12` smallint(4) DEFAULT 0,
  `mod_13` smallint(4) DEFAULT 0,
  `mod_14` smallint(4) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `pot` int(10) DEFAULT 0,
  `crack` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `weapon_1` tinyint(2) DEFAULT 0,
  `weapon_2` tinyint(2) DEFAULT 0,
  `weapon_3` tinyint(2) DEFAULT 0,
  `ammo_1` smallint(5) DEFAULT 0,
  `ammo_2` smallint(5) DEFAULT 0,
  `ammo_3` smallint(5) DEFAULT 0,
  `gangid` tinyint(2) DEFAULT -1,
  `factiontype` tinyint(2) DEFAULT 0,
  `vippackage` tinyint(2) NOT NULL DEFAULT 0,
  `job` tinyint(2) DEFAULT -1,
  `respawndelay` int(10) DEFAULT 0,
  `pistolammo` smallint(5) DEFAULT 0,
  `shotgunammo` smallint(5) DEFAULT 0,
  `smgammo` smallint(5) DEFAULT 0,
  `arammo` smallint(5) DEFAULT 0,
  `rifleammo` smallint(5) DEFAULT 0,
  `hpammo` smallint(5) DEFAULT 0,
  `poisonammo` smallint(5) DEFAULT 0,
  `fmjammo` smallint(5) DEFAULT 0,
  `registered` int(11) NOT NULL DEFAULT 0,
  `siren` tinyint(2) DEFAULT 0,
  `rank` tinyint(3) DEFAULT 0,
  `alarm` int(11) NOT NULL DEFAULT 0,
  `impounded` tinyint(1) NOT NULL DEFAULT 0,
  `broken` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `ownerid`, `owner`, `modelid`, `price`, `tickets`, `locked`, `dlock`, `dlocked`, `plate`, `fuel`, `health`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `color1`, `color2`, `paintjob`, `interior`, `world`, `neon`, `neonenabled`, `trunk`, `mod_1`, `mod_2`, `mod_3`, `mod_4`, `mod_5`, `mod_6`, `mod_7`, `mod_8`, `mod_9`, `mod_10`, `mod_11`, `mod_12`, `mod_13`, `mod_14`, `cash`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `weapon_1`, `weapon_2`, `weapon_3`, `ammo_1`, `ammo_2`, `ammo_3`, `gangid`, `factiontype`, `vippackage`, `job`, `respawndelay`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `registered`, `siren`, `rank`, `alarm`, `impounded`, `broken`) VALUES
(440, 207, 'Mr_Paco', 541, 0, 0, 0, 0, 0, 'None', 8, 996.235, 1149.85, -1388.04, 13.45, 89.118, 3, 2, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(442, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 1602.23, -1683.82, 5.461, 83.475, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(443, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 1602.74, -1688.07, 5.46, 89.826, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(444, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1602.58, -1696.22, 5.612, 91.367, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(445, 0, 'Nobody', 596, 0, 0, 1, 0, 0, 'None', 100, 1000, 1602.27, -1700.27, 5.611, 93.607, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(446, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1602.89, -1692.04, 5.611, 90.71, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(447, 0, 'Nobody', 596, 0, 0, 1, 0, 0, 'None', 100, 1000, 1602.43, -1704.23, 5.607, 92.079, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(449, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 353.759, -1808.57, 4.04, 181.848, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(450, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 357.009, -1808.7, 4.041, 176.357, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(451, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 350.259, -1808.23, 4.047, 184.42, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(452, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 346.972, -1808.19, 4.043, 179.779, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(453, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 343.885, -1808, 4.047, 180.781, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(454, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 340.75, -1807.95, 4.043, 180.656, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(455, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 337.118, -1807.64, 4.024, 181.229, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(456, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 333.877, -1807.91, 4, 182.009, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(457, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 330.875, -1807.81, 3.998, 182.587, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(458, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 328.017, -1807.97, 3.994, 181.142, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(459, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 324.322, -1808.02, 3.991, 179.066, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(460, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 321.083, -1807.91, 3.992, 180.509, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(461, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 318.077, -1807.65, 3.996, 180.611, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(462, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 314.662, -1807.58, 3.995, 172.384, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(463, 0, 'Nobody', 471, 0, 0, 0, 0, 0, 'None', 100, 1000, 311.614, -1808.14, 3.967, 174.449, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(464, 215, 'Jonathan_James', 521, 0, 0, 0, 0, 0, 'None', 79, 936.85, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(465, 216, 'God_Ikka', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(466, 217, 'Vasu_Annan', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(467, 218, 'Chandra_Bose', 521, 0, 0, 0, 0, 0, 'None', 79, 803.976, 1464.16, -1025.05, 23.4, 178.664, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(468, 219, 'Kallipulla_Dude', 521, 0, 0, 1, 0, 0, 'None', 100, 684.378, 1347.25, -1273.86, 12.95, 274.41, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(469, 220, 'Vincent_Thomas', 521, 0, 0, 0, 0, 0, 'None', 0, 944.247, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(470, 221, 'Raquel_Murillo', 521, 0, 0, 0, 0, 0, 'None', 88, 898.984, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(471, 222, 'Mk_Carlo', 521, 0, 0, 0, 0, 0, 'None', 41, 686.915, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(472, 223, 'Kunjappan_Us', 521, 0, 0, 0, 0, 0, 'None', 78, 1000, 322.006, -1186.6, 76.206, 334.026, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(473, 224, 'Mr_Trenexe', 521, 0, 0, 0, 0, 0, 'None', 0, 869.531, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(474, 225, 'Fernandez_Goes', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.37, -2240.46, 13.497, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(475, 226, 'Kallipulla_Achu', 521, 0, 0, 0, 0, 0, 'None', 100, 943.98, 1642.5, -2239.96, 13.5, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(476, 227, 'Techy_Tom', 521, 0, 0, 0, 0, 0, 'None', 80, 770.149, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(477, 228, 'Chekuthaan_Laser', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1130.5, -1421.12, 15.576, 1.235, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(478, 229, 'Kochu_Kunj', 521, 0, 0, 0, 0, 0, 'None', 32, 857.203, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(479, 230, 'German_Kannapi', 521, 0, 0, 0, 0, 0, 'None', 78, 835.338, 687.977, -1180.84, 14.906, 147.734, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(480, 231, 'Rio_Jack.', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(481, 232, 'Zayed_Masood', 521, 0, 0, 1, 0, 0, 'None', 96, 904.76, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(482, 233, 'Kattalan_Porinju', 521, 0, 0, 0, 0, 0, 'None', 82, 867, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(483, 223, 'Kunjappan_Us', 510, 1800, 0, 0, 0, 0, 'None', 100, 1000, 557.867, -1283.98, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(484, 227, 'Techy_Tom', 580, 230000, 0, 0, 0, 0, 'None', 7, 659.422, 557.867, -1283.98, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(485, 220, 'Vincent_Thomas', 589, 210000, 0, 1, 0, 0, 'None', 93, 836.924, 562.397, -1283.85, 17.0007, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(486, 235, 'Joji_Xz', 521, 0, 0, 0, 0, 0, 'None', 16, 920.966, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(487, 234, 'Kodali_Vaasu', 521, 0, 500, 0, 0, 0, 'None', 64, 1000, 1642.44, -2239.94, 13.5, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(488, 233, 'Kattalan_Porinju', 401, 310000, 0, 0, 0, 0, 'None', 100, 1000, 552.818, -1284.13, 17.0007, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(489, 236, 'Chintu_Kuttan', 521, 0, 0, 0, 0, 0, 'None', 100, 956.603, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(490, 223, 'Kunjappan_Us', 451, 0, 0, 0, 0, 0, 'None', 97, 654.616, 562.397, -1283.85, 17.0007, 0, 6, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(491, 223, 'Kunjappan_Us', 451, 0, 0, 1, 0, 0, 'None', 83, 548.362, 552.818, -1284.13, 17.0007, 0, 6, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1096, 0, 1087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(492, 207, 'Mr_Paco', 451, 0, 0, 0, 0, 0, 'None', 85, 864.575, 562.397, -1283.85, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(493, 221, 'Raquel_Murillo', 451, 0, 0, 0, 0, 0, 'None', 0, 1000, 552.818, -1284.13, 17.0007, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(494, 220, 'Vincent_Thomas', 451, 0, 0, 0, 0, 0, 'None', 69, 975.953, 562.397, -1283.85, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(495, 219, 'Kallipulla_Dude', 451, 0, 0, 0, 0, 0, 'None', 95, 980.982, 552.818, -1284.13, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(496, 223, 'Kunjappan_Us', 451, 0, 0, 1, 0, 0, 'None', 82, 914.466, 552.818, -1284.13, 17.0007, 0, 6, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1096, 0, 1087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(497, 219, 'Kallipulla_Dude', 451, 0, 0, 0, 0, 0, 'None', 86, 362.001, 552.818, -1284.13, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(498, 237, 'Jack_Settan', 521, 0, 0, 0, 0, 0, 'None', 0, 734.835, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(499, 234, 'Kodali_Vaasu', 451, 0, 0, 0, 0, 0, 'None', 83, 251, 562.397, -1283.85, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(500, 224, 'Mr_Trenexe', 451, 0, 0, 0, 0, 0, 'None', 85, 955.733, 1131.08, -1388.05, 13.412, 90.332, 3, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1010, 0, 0, 0, 1087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(501, 238, 'Ains_Ag', 521, 0, 0, 0, 0, 0, 'None', 73, 896.798, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(502, 239, 'Maztro_Don', 521, 0, 0, 1, 0, 0, 'None', 42, 620.82, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 237, 'Jack_Settan', 451, 0, 0, 1, 0, 0, 'None', 56, 934.314, 525.069, -1288.47, 16.949, 181.833, 93, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1010, 0, 1076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(504, 241, 'Minnal_Unni', 521, 0, 0, 0, 0, 0, 'None', 61, 910.149, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(505, 240, 'Ace_Rocky', 521, 0, 500, 0, 0, 0, 'None', 72, 566.606, 1642.78, -2240.63, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(506, 242, 'Mk_Kuttusan', 521, 0, 0, 0, 0, 0, 'None', 24, 726.978, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(507, 235, 'Joji_Xz', 451, 0, 5000, 0, 0, 0, 'None', 85, 757.077, 2062.19, -1919.92, 13.12, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(508, 230, 'German_Kannapi', 451, 0, 0, 1, 0, 0, 'None', 99, 616.451, 1113, -1385.46, 13.438, 98.72, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(509, 240, 'Ace_Rocky', 451, 0, 0, 0, 0, 0, 'None', 75, 57866.2, 1356.64, -2380.67, 19.39, 56.332, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(510, 245, 'Miya_Kutty', 521, 0, 0, 1, 0, 0, 'None', 47, 926.549, 1355.22, -1400.96, 12.848, 75.216, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(511, 244, 'Jonathan_James', 521, 0, 0, 0, 0, 0, 'None', 96, 971.715, 1642.37, -2239.53, 13.5, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(514, 245, 'Miya_Kutty', 451, 0, 0, 1, 0, 0, 'None', 93, 1000, 552.818, -1284.13, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(516, 244, 'Jonathan_James', 451, 0, 0, 0, 0, 0, 'None', 83, 251, 1165.18, -696.121, 61.974, 184.582, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(517, 246, 'Pushpa_Raj', 521, 0, 0, 1, 0, 0, 'None', 62, 688.424, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(518, 244, 'Jonathan_James', 451, 0, 0, 0, 0, 0, 'None', 100, 1000, 557.867, -1283.98, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(519, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 1118.07, -1326.7, 13.931, 180.061, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(522, 247, 'Chaver_Usman', 521, 0, 0, 0, 0, 0, 'None', 64, 764.869, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(523, 243, 'Pathuz_Xz', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(524, 243, 'Pathuz_Xz', 451, 0, 0, 0, 0, 0, 'None', 100, 1000, 552.818, -1284.13, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(527, 226, 'Kallipulla_Achu', 445, 310000, 0, 0, 0, 0, 'None', 77, 251, 552.818, -1284.13, 17.0007, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(528, 248, 'Abhi_Mode', 521, 0, 0, 1, 0, 0, 'None', 92, 703.991, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(529, 246, 'Pushpa_Raj', 451, 0, 0, 0, 0, 0, 'None', 64, 300, 557.867, -1283.98, 17.0007, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(530, 247, 'Chaver_Usman', 461, 180000, 0, 0, 0, 0, 'None', 98, 997.56, 562.397, -1283.85, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(531, 247, 'Chaver_Usman', 451, 0, 0, 0, 0, 0, 'None', 87, 1000, 552.818, -1284.13, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(532, 249, 'Anjali_Anju', 521, 0, 0, 0, 0, 0, 'None', 54, 630, 1642.37, -2240.23, 13.499, 178.91, 126, 126, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(533, 219, 'Kallipulla_Dude', 451, 0, 0, 0, 0, 0, 'None', 90, 300, 1041.68, -1032.83, 31.711, 256.337, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(534, 261, 'Pavithran_Kunj', 451, 0, 1500, 0, 0, 0, 'None', 19, 705.661, 562.397, -1283.85, 17.0007, 0, 126, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(535, 250, 'Kallipulla_Simon', 521, 0, 0, 0, 0, 0, 'None', 80, 822.088, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(536, 223, 'Kunjappan_Us', 451, 0, 0, 0, 0, 0, 'None', 100, 1000, 557.867, -1283.98, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(537, 223, 'Kunjappan_Us', 451, 0, 0, 0, 0, 0, 'None', 100, 962.98, 557.867, -1283.98, 17.0007, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(538, 251, 'Dawood_ibrahim', 521, 0, 0, 0, 0, 0, 'None', 57, 805.554, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(539, 252, 'Hishbin_Kv', 521, 0, 0, 0, 0, 0, 'None', 86, 968.583, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(540, 257, 'Phil_Foden', 451, 0, 0, 1, 0, 0, 'None', 98, 776.679, 557.867, -1283.98, 17.0007, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(541, 253, 'Rocky_Star', 521, 0, 500, 0, 0, 0, 'None', 36, 555.396, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(542, 249, 'Anjali_Anju', 451, 0, 0, 0, 0, 0, 'None', 41, 561.171, 600.641, -1221.9, 17.679, 284.137, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(543, 249, 'Anjali_Anju', 589, 210000, 0, 1, 0, 0, 'None', 75, 834.785, 562.397, -1283.85, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(544, 254, 'David_Unni', 521, 0, 0, 0, 0, 0, 'None', 51, 757.541, -65.778, -1696.04, 18.771, 112.526, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(545, 255, 'Chachu_Adhi', 521, 0, 0, 0, 0, 0, 'None', 82, 610.902, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(546, 256, 'Sarak_Danny', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(547, 254, 'David_Unni', 451, 0, 0, 0, 0, 0, 'None', 72, 804.812, 1282.81, -1331.17, 13.066, 359.951, 6, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1074, 0, 1087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(548, 257, 'Phil_Foden', 521, 0, 0, 0, 0, 0, 'None', 90, 990.22, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(549, 235, 'Joji_Xz', 585, 230000, 0, 0, 0, 0, 'None', 63, 535.296, 1056.15, -1247.18, 14.913, 1.319, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(552, 258, 'Kmc_Hybolt', 521, 0, 0, 0, 0, 0, 'None', 49, 741, 1254.5, -1257.47, 12.686, 10.837, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(553, 0, 'Nobody', 487, 0, 0, 1, 0, 0, 'None', 100, 1000, 1080.24, -292.194, 80.515, 180.977, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(554, 259, 'Mittu_Mon', 521, 0, 0, 0, 0, 0, 'None', 29, 791.31, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(555, 260, 'Ziyad_Zadh', 521, 0, 0, 0, 0, 0, 'None', 92, 784.575, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(556, 261, 'Pavithran_Kunj', 521, 0, 0, 0, 0, 0, 'None', 63, 757.228, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(557, 262, 'Tomz_Mali', 521, 0, 0, 0, 0, 0, 'None', 74, 709.301, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(558, 236, 'Chintu_Kuttan', 463, 180000, 0, 0, 0, 0, 'None', 88, 806.275, 557.867, -1283.98, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(559, 255, 'Chachu_Adhi', 580, 230000, 0, 0, 0, 0, 'None', 4, 849.274, 562.397, -1283.85, 17.0007, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(560, 263, 'Ammu_Kutty', 521, 0, 0, 0, 0, 0, 'None', 80, 957.466, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(561, 229, 'Kochu_Kunj', 463, 180000, 0, 0, 0, 0, 'None', 86, 930.872, 562.397, -1283.85, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(562, 226, 'Kallipulla_Achu', 451, 0, 4500, 0, 0, 0, 'None', 100, 300, 1111.25, -1393.25, 13.122, 0.213, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(563, 264, 'Hitler_Rom', 521, 0, 0, 0, 0, 0, 'None', 100, 907.774, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(564, 265, 'Lucifer_Annan', 521, 0, 0, 0, 0, 0, 'None', 50, 760.21, 1642.62, -2239.53, 13.5, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(565, 267, 'Mr_Thakkudu', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(566, 267, 'Mr_Thakkudu', 586, 240000, 500, 0, 0, 0, 'None', 22, 1000, 557.867, -1283.98, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(567, 268, 'Mikhael_Williams', 521, 0, 0, 0, 0, 0, 'None', 27, 995.008, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(568, 266, 'Vaattu_Jonny', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(569, 0, 'Nobody', 400, 0, 0, 0, 0, 0, 'None', 100, 1000, 1254.83, -803.314, 84.234, 186.785, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(570, 0, 'Nobody', 409, 0, 0, 0, 0, 0, 'None', 100, 1000, 1692.14, -1825.68, 13.185, 178.939, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(571, 270, 'Boxey_Master', 521, 0, 0, 0, 0, 0, 'None', 90, 843.751, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(572, 269, 'Ace_Mani', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.27, -2239.53, 13.5, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(573, 271, 'STEEL_ANNAN', 521, 0, 0, 1, 0, 0, 'None', 95, 976.284, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(574, 272, 'Aleena_MK', 521, 0, 0, 1, 0, 0, 'None', 99, 960.545, 1642.38, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(575, 273, 'Black_King', 521, 0, 0, 0, 0, 0, 'None', 0, 524.04, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(576, 274, 'John_Wick', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(577, 275, 'Jimbru_Mon', 521, 0, 0, 0, 0, 0, 'None', 72, 1000, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(578, 276, 'Babu_Namboothirii', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(579, 278, 'Mr_Shot', 521, 0, 0, 0, 0, 0, 'None', 52, 986.905, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(580, 0, 'Nobody', 400, 0, 0, 0, 0, 0, 'None', 100, 1000, 1069.22, -289.955, 74.085, 179.265, -1, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(582, 0, 'Nobody', 541, 0, 0, 0, 0, 0, 'None', 100, 1000, 1104.62, -1328.89, 13.406, 181.144, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, 0, -1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(583, 279, 'David_John', 521, 0, 0, 0, 0, 0, 'None', 27, 997.704, 1642.37, -2240.23, 13.498, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(584, 280, 'Mad_Tyson', 521, 0, 0, 0, 0, 0, 'None', 63, 693.336, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(585, 281, 'Keerikkadan_Jose', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(586, 207, 'Mr_Paco', 470, 0, 0, 0, 0, 0, 'None', 99, 995.658, 544.139, -1272.81, 17.239, 124.955, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(587, 239, 'Maztro_Don', 475, 320000, 0, 0, 0, 0, 'None', 3, 413, 578.077, -1236.09, 17.303, 306.944, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(588, 0, 'Nobody', 490, 0, 0, 0, 0, 0, 'None', 100, 1000, 1110.24, -1328.24, 13.439, 179.456, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(589, 282, 'Mk_verappan', 521, 0, 0, 0, 0, 0, 'None', 72, 1000, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(590, 0, 'Nobody', 487, 0, 0, 0, 0, 0, 'None', 100, 1000, 808.126, -2052.84, 16.772, 267.426, 3, 3, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(591, 0, 'Nobody', 482, 0, 0, 0, 0, 0, 'None', 100, 1000, 836.93, -2051.71, 12.989, 0.776, 3, 3, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(592, 0, 'Nobody', 579, 0, 0, 0, 0, 0, 'None', 100, 1000, 828.916, -2062.53, 12.798, 359.122, 3, 3, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(593, 0, 'Nobody', 579, 0, 0, 0, 0, 0, 'None', 100, 1000, 843.741, -2063.13, 12.803, 359.103, 3, 3, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(594, 239, 'Maztro_Don', 510, 1800, 0, 0, 0, 0, 'None', 100, 1000, 562.397, -1283.85, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(595, 235, 'Joji_Xz', 500, 900000, 0, 0, 0, 0, 'None', 84, 852.135, 1309.67, -1512.37, 13.489, 155.307, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(596, 254, 'David_Unni', 510, 1800, 0, 0, 0, 0, 'None', 100, 998.796, 552.818, -1284.13, 17.0007, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(597, 283, 'Udumb_Vasu', 521, 0, 0, 0, 0, 0, 'None', 32, 1000, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(598, 240, 'Ace_Rocky', 500, 900000, 0, 0, 0, 0, 'None', 72, 959.286, 1255.92, -2030.77, 59.636, 97.595, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(599, 253, 'Rocky_Star', 500, 900000, 0, 0, 0, 0, 'None', 73, 966.986, 1120.49, -1403.51, 13.506, 181.372, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(600, 284, 'Omana_Kuttan', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.37, -2240.23, 13.499, 178.91, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendorID` int(12) NOT NULL,
  `vendorModel` int(12) DEFAULT 980,
  `vendorPosX` float DEFAULT 0,
  `vendorPosY` float DEFAULT 0,
  `vendorPosZ` float DEFAULT 0,
  `vendorInterior` int(12) DEFAULT 0,
  `vendorWorld` int(12) DEFAULT 0,
  `vendorAngle` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendorID`, `vendorModel`, `vendorPosX`, `vendorPosY`, `vendorPosZ`, `vendorInterior`, `vendorWorld`, `vendorAngle`) VALUES
(1, 1340, 1814.64, -1592.62, 13.4469, 0, 0, 269);

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `uid` int(10) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `ammo` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weaponsettings`
--

CREATE TABLE `weaponsettings` (
  `Name` varchar(24) NOT NULL,
  `WeaponID` tinyint(4) NOT NULL,
  `PosX` float DEFAULT -0.116,
  `PosY` float DEFAULT 0.189,
  `PosZ` float DEFAULT 0.088,
  `RotX` float DEFAULT 0,
  `RotY` float DEFAULT 44.5,
  `RotZ` float DEFAULT 0,
  `Bone` tinyint(4) NOT NULL DEFAULT 1,
  `Hidden` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anticheat_settings`
--
ALTER TABLE `anticheat_settings`
  ADD UNIQUE KEY `ac_code` (`ac_code`);

--
-- Indexes for table `arrestpoints`
--
ALTER TABLE `arrestpoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auctions`
--
ALTER TABLE `auctions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billboards`
--
ALTER TABLE `billboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `changes`
--
ALTER TABLE `changes`
  ADD UNIQUE KEY `slot` (`slot`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothing`
--
ALTER TABLE `clothing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crates`
--
ALTER TABLE `crates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD UNIQUE KEY `id` (`id`,`divisionid`);

--
-- Indexes for table `entrances`
--
ALTER TABLE `entrances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factionpay`
--
ALTER TABLE `factionpay`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `factionranks`
--
ALTER TABLE `factionranks`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `factionskins`
--
ALTER TABLE `factionskins`
  ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangranks`
--
ALTER TABLE `gangranks`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `gangs`
--
ALTER TABLE `gangs`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `gangskins`
--
ALTER TABLE `gangskins`
  ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateID`);

--
-- Indexes for table `graffities`
--
ALTER TABLE `graffities`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kills`
--
ALTER TABLE `kills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landobjects`
--
ALTER TABLE `landobjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lands`
--
ALTER TABLE `lands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_admin`
--
ALTER TABLE `log_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_bans`
--
ALTER TABLE `log_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_cheat`
--
ALTER TABLE `log_cheat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_contracts`
--
ALTER TABLE `log_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_faction`
--
ALTER TABLE `log_faction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_gang`
--
ALTER TABLE `log_gang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_give`
--
ALTER TABLE `log_give`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_property`
--
ALTER TABLE `log_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_punishments`
--
ALTER TABLE `log_punishments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_referrals`
--
ALTER TABLE `log_referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_vip`
--
ALTER TABLE `log_vip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`mobjID`);

--
-- Indexes for table `phonebook`
--
ALTER TABLE `phonebook`
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `phone_contacts`
--
ALTER TABLE `phone_contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `publicgarage`
--
ALTER TABLE `publicgarage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shots`
--
ALTER TABLE `shots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turfs`
--
ALTER TABLE `turfs`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendorID`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD UNIQUE KEY `uid` (`uid`,`slot`);

--
-- Indexes for table `weaponsettings`
--
ALTER TABLE `weaponsettings`
  ADD PRIMARY KEY (`WeaponID`),
  ADD UNIQUE KEY `weapon` (`Name`,`WeaponID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arrestpoints`
--
ALTER TABLE `arrestpoints`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auctions`
--
ALTER TABLE `auctions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `billboards`
--
ALTER TABLE `billboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `clothing`
--
ALTER TABLE `clothing`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `crates`
--
ALTER TABLE `crates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrances`
--
ALTER TABLE `entrances`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `flags`
--
ALTER TABLE `flags`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `garages`
--
ALTER TABLE `garages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `gateID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `kills`
--
ALTER TABLE `kills`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1308;

--
-- AUTO_INCREMENT for table `landobjects`
--
ALTER TABLE `landobjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lands`
--
ALTER TABLE `lands`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_admin`
--
ALTER TABLE `log_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `log_bans`
--
ALTER TABLE `log_bans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_cheat`
--
ALTER TABLE `log_cheat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_contracts`
--
ALTER TABLE `log_contracts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_faction`
--
ALTER TABLE `log_faction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_gang`
--
ALTER TABLE `log_gang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_give`
--
ALTER TABLE `log_give`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_property`
--
ALTER TABLE `log_property`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `log_punishments`
--
ALTER TABLE `log_punishments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_referrals`
--
ALTER TABLE `log_referrals`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_vip`
--
ALTER TABLE `log_vip`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `object`
--
ALTER TABLE `object`
  MODIFY `mobjID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `phone_contacts`
--
ALTER TABLE `phone_contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publicgarage`
--
ALTER TABLE `publicgarage`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `shots`
--
ALTER TABLE `shots`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendorID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `weaponsettings`
--
ALTER TABLE `weaponsettings`
  MODIFY `WeaponID` tinyint(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
