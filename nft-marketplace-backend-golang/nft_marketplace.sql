-- -------------------------------------------------------------
-- TablePlus 4.5.2(402)
--
-- https://tableplus.com/
--
-- Database: nft_marketplace
-- Generation Time: 2022-01-22 12:32:22.6970
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `nft_pets`;
CREATE TABLE `nft_pets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pet_id` int(11) NOT NULL,
  `nft_id` varchar(50) DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT 'male',
  `stats_attack` int(4) DEFAULT '0',
  `stats_def` int(4) DEFAULT '0',
  `stats_hp` int(4) DEFAULT '0',
  `stats_speed` int(4) DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  `mother_id` int(11) DEFAULT NULL,
  `listing_price` double DEFAULT '0',
  `listed_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('deleted','activated','selling','banned','locked') DEFAULT 'activated',
  PRIMARY KEY (`id`),
  KEY `owner_id` (`owner_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `listed_at` (`listed_at`) USING BTREE,
  KEY `listing_price` (`listing_price`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `pets`;
CREATE TABLE `pets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` enum('fire','water','plant') NOT NULL DEFAULT 'fire',
  `image` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('deleted','activated','banned','locked') DEFAULT 'activated',
  PRIMARY KEY (`id`),
  KEY `element` (`element`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wallet_address` varchar(50) NOT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `nonce` int(11) DEFAULT '0',
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `salt` varchar(35) DEFAULT NULL,
  `role` enum('super admin','admin','user') DEFAULT 'user',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('deleted','activated','banned','not_verified') DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wallet_address` (`wallet_address`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO `nft_pets` (`id`, `pet_id`, `nft_id`, `owner_id`, `name`, `gender`, `stats_attack`, `stats_def`, `stats_hp`, `stats_speed`, `parent_id`, `mother_id`, `listing_price`, `listed_at`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, NULL, 1, 'Starsky', 'male', 100, 100, 100, 100, NULL, NULL, 1.254, '2021-12-30 09:17:00.000000', '2021-12-30 05:31:49.000000', '2021-12-30 09:17:00', 'selling'),
(2, 5, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.882, '2021-12-30 09:17:00.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(3, 2, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(4, 3, NULL, 1, 'Swoop', 'female', 100, 100, 100, 100, NULL, NULL, 2.376, '2021-12-30 09:18:13.200000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:00', 'selling'),
(13, 3, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 1.24, '2021-12-30 09:22:14.100000', '2021-12-30 05:32:33.000000', '2021-12-30 09:24:04', 'selling'),
(22, 1, NULL, 1, 'Lemming', 'female', 100, 100, 100, 100, NULL, NULL, 1.254, '2021-12-30 09:17:00.000000', '2021-12-30 05:31:49.000000', '2021-12-30 09:17:00', 'selling'),
(23, 1, NULL, 1, 'Keg', 'male', 100, 100, 100, 100, NULL, NULL, 1.254, '2021-12-30 09:17:00.000000', '2021-12-30 05:31:49.000000', '2021-12-30 09:17:00', 'selling'),
(24, 1, NULL, 1, 'Ebony', 'female', 100, 100, 100, 100, NULL, NULL, 1.254, '2021-12-30 09:17:00.000000', '2021-12-30 05:31:49.000000', '2021-12-30 09:17:00', 'selling'),
(25, 1, NULL, 1, 'Brambles', 'male', 100, 100, 100, 100, NULL, NULL, 1.254, '2021-12-30 09:17:00.000000', '2021-12-30 05:31:49.000000', '2021-12-30 09:17:00', 'selling'),
(26, 1, NULL, 1, 'Dorito', 'female', 100, 100, 100, 100, NULL, NULL, 1.254, '2021-12-30 09:17:00.000000', '2021-12-30 05:31:49.000000', '2021-12-30 09:17:00', 'selling'),
(27, 1, NULL, 1, 'Barley', 'male', 100, 100, 100, 100, NULL, NULL, 1.254, '2021-12-30 09:17:00.000000', '2021-12-30 05:31:49.000000', '2021-12-30 09:17:00', 'selling'),
(28, 1, NULL, 1, 'Swoop', 'female', 100, 100, 100, 100, NULL, NULL, 1.254, '2021-12-30 09:17:00.000000', '2021-12-30 05:31:49.000000', '2021-12-30 09:17:00', 'selling'),
(29, 1, NULL, 1, 'Brambles', 'male', 100, 100, 100, 100, NULL, NULL, 1.254, '2021-12-30 09:17:00.000000', '2021-12-30 05:31:49.000000', '2021-12-30 09:17:00', 'selling'),
(30, 1, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 1.254, '2021-12-30 09:17:00.000000', '2021-12-30 05:31:49.000000', '2021-12-30 09:17:00', 'selling'),
(31, 2, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(32, 2, NULL, 1, 'Keg', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(33, 2, NULL, 1, 'Dorito', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(34, 2, NULL, 1, 'Wookie', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(35, 2, NULL, 1, 'Ebony', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(36, 2, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(37, 2, NULL, 1, 'Lemming', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(38, 2, NULL, 1, 'Barley', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(39, 2, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(40, 3, NULL, 1, 'Wookie', 'male', 100, 100, 100, 100, NULL, NULL, 1.24, '2021-12-30 09:22:14.100000', '2021-12-30 05:32:33.000000', '2021-12-30 09:24:04', 'selling'),
(41, 3, NULL, 1, 'Swoop', 'female', 100, 100, 100, 100, NULL, NULL, 2.376, '2021-12-30 09:18:13.200000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:00', 'selling'),
(42, 3, NULL, 1, 'Wookie', 'male', 100, 100, 100, 100, NULL, NULL, 1.24, '2021-12-30 09:22:14.100000', '2021-12-30 05:32:33.000000', '2021-12-30 09:24:04', 'selling'),
(43, 3, NULL, 1, 'Swoop', 'female', 100, 100, 100, 100, NULL, NULL, 2.376, '2021-12-30 09:18:13.200000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:00', 'selling'),
(44, 3, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 1.24, '2021-12-30 09:22:14.100000', '2021-12-30 05:32:33.000000', '2021-12-30 09:24:04', 'selling'),
(45, 3, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 2.376, '2021-12-30 09:18:13.200000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:00', 'selling'),
(46, 3, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 1.24, '2021-12-30 09:22:14.100000', '2021-12-30 05:32:33.000000', '2021-12-30 09:24:04', 'selling'),
(47, 3, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 2.376, '2021-12-30 09:18:13.200000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:00', 'selling'),
(48, 4, NULL, 1, 'Barley', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(49, 4, NULL, 1, 'Lemming', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(50, 4, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(51, 4, NULL, 1, 'Ebony', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(52, 4, NULL, 1, 'Wookie', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(53, 4, NULL, 1, 'Dorito', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(54, 4, NULL, 1, 'Keg', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(55, 4, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(56, 4, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(57, 4, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(59, 5, NULL, 1, 'Lemming', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(60, 5, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(61, 5, NULL, 1, 'Ebony', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(62, 5, NULL, 1, 'Wookie', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(63, 5, NULL, 1, 'Dorito', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(64, 5, NULL, 1, 'Keg', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(65, 5, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(66, 5, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(67, 5, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(68, 6, NULL, 1, 'Barley', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(69, 6, NULL, 1, 'Lemming', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(70, 6, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(71, 6, NULL, 1, 'Ebony', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(72, 6, NULL, 1, 'Wookie', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(73, 6, NULL, 1, 'Dorito', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(74, 6, NULL, 1, 'Keg', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(75, 6, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(76, 6, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(77, 6, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(78, 7, NULL, 1, 'Barley', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(79, 7, NULL, 1, 'Lemming', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(80, 7, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(81, 7, NULL, 1, 'Ebony', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(82, 7, NULL, 1, 'Wookie', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(83, 7, NULL, 1, 'Dorito', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(84, 7, NULL, 1, 'Keg', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(85, 7, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(86, 7, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(87, 7, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(88, 8, NULL, 1, 'Barley', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(89, 8, NULL, 1, 'Lemming', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(90, 8, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(91, 8, NULL, 1, 'Ebony', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(92, 8, NULL, 1, 'Wookie', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(93, 8, NULL, 1, 'Dorito', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(94, 8, NULL, 1, 'Keg', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(95, 8, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(96, 8, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(97, 8, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(98, 9, NULL, 1, 'Barley', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(99, 9, NULL, 1, 'Lemming', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(100, 9, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(101, 9, NULL, 1, 'Ebony', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(102, 9, NULL, 1, 'Wookie', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(103, 9, NULL, 1, 'Dorito', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(104, 9, NULL, 1, 'Keg', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(105, 9, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(106, 9, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(107, 9, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(108, 10, NULL, 1, 'Barley', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(109, 10, NULL, 1, 'Lemming', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(110, 10, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(111, 10, NULL, 1, 'Ebony', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(112, 10, NULL, 1, 'Wookie', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(113, 10, NULL, 1, 'Dorito', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(114, 10, NULL, 1, 'Keg', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(115, 10, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(116, 10, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(117, 10, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(118, 11, NULL, 1, 'Barley', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(119, 11, NULL, 1, 'Lemming', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(120, 11, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(121, 11, NULL, 1, 'Ebony', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(122, 11, NULL, 1, 'Wookie', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(123, 11, NULL, 1, 'Dorito', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(124, 11, NULL, 1, 'Keg', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(125, 11, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(126, 11, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(127, 11, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(128, 12, NULL, 1, 'Barley', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(129, 12, NULL, 1, 'Lemming', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(130, 12, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(131, 12, NULL, 1, 'Ebony', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(132, 12, NULL, 1, 'Wookie', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(133, 12, NULL, 1, 'Dorito', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(134, 12, NULL, 1, 'Keg', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(135, 12, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(136, 12, NULL, 1, 'Cadbury', 'female', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling'),
(137, 12, NULL, 1, 'Patch', 'male', 100, 100, 100, 100, NULL, NULL, 0.773, '2021-12-30 09:18:13.100000', '2021-12-30 05:31:59.000000', '2021-12-30 09:23:01', 'selling');

INSERT INTO `pets` (`id`, `element`, `image`, `created_at`, `updated_at`, `status`) VALUES
(1, 'plant', '{\"cloud\": \"localhost\", \"width\": 960, \"height\": 960, \"filename\": \"assets/pets/pets_1.png\"}', '2021-12-30 04:32:24.000000', '2021-12-30 06:06:17', 'activated'),
(2, 'plant', '{\"cloud\": \"localhost\", \"width\": 960, \"height\": 960, \"filename\": \"assets/pets/pets_2.png\"}', '2021-12-30 04:32:24.000000', '2021-12-30 06:06:17', 'activated'),
(3, 'plant', '{\"cloud\": \"localhost\", \"width\": 960, \"height\": 960, \"filename\": \"assets/pets/pets_3.png\"}', '2021-12-30 04:32:24.000000', '2021-12-30 06:06:17', 'activated'),
(4, 'plant', '{\"cloud\": \"localhost\", \"width\": 960, \"height\": 960, \"filename\": \"assets/pets/pets_4.png\"}', '2021-12-30 04:32:24.000000', '2021-12-30 06:06:17', 'activated'),
(5, 'fire', '{\"cloud\": \"localhost\", \"width\": 960, \"height\": 960, \"filename\": \"assets/pets/pets_5.png\"}', '2021-12-30 04:32:24.000000', '2021-12-30 06:06:17', 'activated'),
(6, 'fire', '{\"cloud\": \"localhost\", \"width\": 960, \"height\": 960, \"filename\": \"assets/pets/pets_6.png\"}', '2021-12-30 04:32:24.000000', '2021-12-30 06:06:16', 'activated'),
(7, 'fire', '{\"cloud\": \"localhost\", \"width\": 960, \"height\": 960, \"filename\": \"assets/pets/pets_7.png\"}', '2021-12-30 04:32:24.000000', '2021-12-30 06:06:16', 'activated'),
(8, 'fire', '{\"cloud\": \"localhost\", \"width\": 960, \"height\": 960, \"filename\": \"assets/pets/pets_8.png\"}', '2021-12-30 04:32:24.000000', '2021-12-30 06:06:16', 'activated'),
(9, 'water', '{\"cloud\": \"localhost\", \"width\": 960, \"height\": 960, \"filename\": \"assets/pets/pets_9.png\"}', '2021-12-30 04:32:24.000000', '2021-12-30 06:06:16', 'activated'),
(10, 'water', '{\"cloud\": \"localhost\", \"width\": 960, \"height\": 960, \"filename\": \"assets/pets/pets_10.png\"}', '2021-12-30 04:32:24.000000', '2021-12-30 06:06:16', 'activated'),
(11, 'water', '{\"cloud\": \"localhost\", \"width\": 960, \"height\": 960, \"filename\": \"assets/pets/pets_11.png\"}', '2021-12-30 04:32:24.000000', '2021-12-30 06:06:16', 'activated'),
(12, 'water', '{\"cloud\": \"localhost\", \"width\": 960, \"height\": 960, \"filename\": \"assets/pets/pets_12.png\"}', '2021-12-30 04:32:24.000000', '2021-12-30 06:06:16', 'activated');

INSERT INTO `users` (`id`, `wallet_address`, `display_name`, `nonce`, `username`, `password`, `salt`, `role`, `created_at`, `updated_at`, `status`) VALUES
(1, '0xaDC1F463D77725160756CB5691f2cAF4D8cC4252', 'Viet', 15893, NULL, NULL, NULL, 'user', '2021-12-30 05:17:44.000000', '2022-01-01 11:14:42', 'activated'),
(2, '0x83620C22cf7B69FDA381b2C1abE71A351dF42e30', NULL, 17543, NULL, NULL, NULL, 'user', '2022-01-01 08:18:31.635542', '2022-01-01 08:18:32', 'not_verified'),
(3, '0x79aded0cf5ab744ef7ee75ef9ab9d72c14631a63', 'Nhan', 16870, NULL, NULL, NULL, 'user', '2022-01-07 03:53:03.177353', '2022-01-09 06:19:29', 'activated'),
(4, '0xd1a870b75846f7a81eb4c68b24706974d5fab80c', NULL, 16333, NULL, NULL, NULL, 'user', '2022-01-09 05:55:15.033362', '2022-01-09 06:02:32', 'activated');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;