-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para db_larablog_dev
CREATE DATABASE IF NOT EXISTS `db_larablog_dev` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci */;
USE `db_larablog_dev`;

-- Volcando estructura para tabla db_larablog_dev.access
CREATE TABLE IF NOT EXISTS `access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.access: ~90 rows (aproximadamente)
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
INSERT INTO `access` (`id`, `user_id`, `added_on`, `ip`) VALUES
	(13, 2, '2020-02-01 16:28:00', '127.0.0.1'),
	(14, 3, '2020-02-01 17:27:14', '127.0.0.1'),
	(15, 6, '2020-02-01 17:27:39', '127.0.0.1'),
	(16, 6, '2020-02-01 17:37:43', '127.0.0.1'),
	(17, 2, '2020-02-01 17:55:56', '127.0.0.1'),
	(18, 2, '2020-02-02 17:00:51', '127.0.0.1'),
	(19, 2, '2020-02-02 17:27:55', '127.0.0.1'),
	(20, 2, '2020-02-02 18:53:53', '127.0.0.1'),
	(21, 2, '2020-02-02 19:51:10', '127.0.0.1'),
	(22, 2, '2020-02-02 19:51:35', '127.0.0.1'),
	(23, 3, '2020-02-02 19:52:58', '127.0.0.1'),
	(24, 3, '2020-02-02 19:53:52', '127.0.0.1'),
	(25, 2, '2020-02-02 19:54:35', '127.0.0.1'),
	(26, 2, '2020-02-02 20:21:15', '127.0.0.1'),
	(27, 2, '2020-02-02 20:34:35', '127.0.0.1'),
	(28, 2, '2020-02-02 21:25:18', '127.0.0.1'),
	(29, 6, '2020-02-02 21:31:03', '127.0.0.1'),
	(30, 3, '2020-02-02 23:47:33', '127.0.0.1'),
	(31, 2, '2020-02-03 14:45:22', '127.0.0.1'),
	(32, 6, '2020-02-03 15:49:02', '127.0.0.1'),
	(33, 2, '2020-02-03 15:54:41', '127.0.0.1'),
	(34, 2, '2020-02-03 15:56:10', '127.0.0.1'),
	(35, 2, '2020-02-03 19:25:05', '127.0.0.1'),
	(36, 2, '2020-02-03 20:07:18', '127.0.0.1'),
	(37, 2, '2020-02-03 21:43:41', '127.0.0.1'),
	(38, 3, '2020-02-03 21:56:31', '127.0.0.1'),
	(39, 2, '2020-02-03 21:56:45', '127.0.0.1'),
	(40, 2, '2020-02-03 22:16:20', '192.168.1.3'),
	(41, 2, '2020-02-03 22:22:21', '192.168.1.3'),
	(42, 3, '2020-02-03 22:27:31', '192.168.1.3'),
	(43, 2, '2020-02-03 22:28:20', '192.168.1.3'),
	(44, 2, '2020-02-03 22:31:35', '192.168.1.5'),
	(45, 2, '2020-02-03 23:11:23', '192.168.1.3'),
	(46, 2, '2020-02-03 23:31:25', '192.168.1.3'),
	(47, 2, '2020-02-03 23:46:20', '192.168.1.3'),
	(48, 7, '2020-02-03 23:46:57', '192.168.1.3'),
	(49, 7, '2020-02-03 23:47:20', '192.168.1.3'),
	(50, 2, '2020-02-03 23:47:34', '192.168.1.3'),
	(51, 2, '2020-02-04 00:20:36', '192.168.1.3'),
	(52, 2, '2020-02-04 15:51:02', '192.168.1.3'),
	(53, 3, '2020-02-04 16:35:47', '192.168.1.3'),
	(54, 2, '2020-02-04 16:36:16', '192.168.1.3'),
	(55, 2, '2020-02-04 17:55:46', '192.168.1.3'),
	(56, 2, '2020-02-04 18:04:34', '192.168.1.3'),
	(57, 2, '2020-02-04 18:07:21', '192.168.1.2'),
	(58, 2, '2020-02-04 18:36:34', '192.168.1.5'),
	(59, 2, '2020-02-04 18:43:06', '127.0.0.1'),
	(60, 2, '2020-02-04 20:00:28', '192.168.1.3'),
	(61, 2, '2020-02-04 21:29:48', '192.168.1.3'),
	(62, 2, '2020-02-04 21:30:33', '192.168.1.3'),
	(63, 2, '2020-02-04 22:45:13', '192.168.1.3'),
	(64, 2, '2020-02-04 23:02:10', '127.0.0.1'),
	(65, 2, '2020-02-04 23:13:26', '192.168.1.3'),
	(66, 2, '2020-02-05 17:30:55', '192.168.1.3'),
	(67, 2, '2020-02-05 17:32:25', '192.168.1.200'),
	(68, 2, '2020-02-05 23:41:34', '127.0.0.1'),
	(69, 2, '2020-02-05 23:42:16', '192.168.1.3'),
	(70, 2, '2020-02-05 23:57:44', '192.168.1.3'),
	(71, 2, '2020-02-06 22:26:26', '127.0.0.1'),
	(72, 2, '2020-02-07 21:08:10', '127.0.0.1'),
	(73, 2, '2020-02-08 19:55:35', '127.0.0.1'),
	(74, 2, '2020-02-08 19:58:58', '127.0.0.1'),
	(75, 6, '2020-02-08 23:14:11', '127.0.0.1'),
	(76, 2, '2020-02-08 23:25:26', '127.0.0.1'),
	(77, 2, '2020-02-09 20:11:35', '127.0.0.1'),
	(78, 2, '2020-02-09 22:20:10', '127.0.0.1'),
	(79, 2, '2020-02-09 22:32:05', '127.0.0.1'),
	(80, 2, '2020-02-09 22:50:25', '192.168.1.3'),
	(81, 2, '2020-02-09 22:50:57', '192.168.1.3'),
	(82, 2, '2020-02-10 13:26:20', '127.0.0.1'),
	(83, 2, '2020-02-10 13:58:53', '127.0.0.1'),
	(84, 2, '2020-02-10 14:00:28', '192.168.1.3'),
	(85, 2, '2020-02-10 14:08:24', '192.168.1.3'),
	(86, 2, '2020-02-10 14:12:25', '192.168.1.3'),
	(87, 2, '2020-02-10 14:15:30', '127.0.0.1'),
	(88, 5, '2020-02-10 14:26:48', '192.168.1.3'),
	(89, 5, '2020-02-10 14:28:58', '192.168.1.3'),
	(90, 2, '2020-02-10 16:21:07', '127.0.0.1'),
	(91, 2, '2020-02-10 16:33:44', '127.0.0.1'),
	(92, 2, '2020-02-10 16:49:59', '192.168.1.3'),
	(93, 2, '2020-02-10 19:48:51', '127.0.0.1'),
	(94, 2, '2020-02-10 22:27:42', '127.0.0.1'),
	(95, 2, '2020-02-11 13:28:19', '127.0.0.1'),
	(96, 2, '2020-02-11 21:09:29', '127.0.0.1'),
	(97, 2, '2020-02-11 21:10:33', '127.0.0.1'),
	(98, 2, '2020-02-12 21:27:50', '127.0.0.1'),
	(99, 5, '2020-03-02 22:01:09', '127.0.0.1'),
	(100, 5, '2020-03-02 22:01:09', '127.0.0.1'),
	(101, 5, '2020-03-02 22:02:49', '127.0.0.1'),
	(102, 2, '2020-03-02 22:04:44', '127.0.0.1'),
	(103, 2, '2020-03-03 20:57:38', '127.0.0.1'),
	(104, 2, '2020-03-03 21:14:23', '127.0.0.1'),
	(105, 2, '2020-03-07 20:27:38', '127.0.0.1'),
	(106, 2, '2020-03-08 21:43:31', '127.0.0.1'),
	(107, 2, '2020-03-08 21:57:23', '192.168.1.200'),
	(108, 2, '2020-03-09 22:10:54', '127.0.0.1'),
	(109, 2, '2020-03-10 22:30:28', '127.0.0.1'),
	(110, 2, '2020-03-10 22:44:22', '192.168.1.200'),
	(111, 2, '2020-03-11 19:51:26', '127.0.0.1'),
	(112, 2, '2020-03-11 19:58:07', '127.0.0.1'),
	(113, 2, '2020-03-12 21:03:11', '127.0.0.1'),
	(114, 2, '2020-03-12 21:55:21', '127.0.0.1'),
	(115, 2, '2020-03-15 16:07:18', '127.0.0.1'),
	(116, 2, '2020-03-15 19:35:18', '127.0.0.1'),
	(117, 2, '2020-03-17 21:17:24', '127.0.0.1'),
	(118, 2, '2020-03-19 22:21:17', '127.0.0.1'),
	(119, 2, '2020-03-25 20:58:48', '127.0.0.1'),
	(120, 2, '2020-03-26 22:04:34', '127.0.0.1'),
	(121, 2, '2020-03-26 23:14:59', '192.168.1.200'),
	(122, 2, '2020-03-28 21:47:56', '127.0.0.1'),
	(123, 2, '2020-03-29 18:41:17', '127.0.0.1'),
	(124, 2, '2020-03-30 13:53:59', '127.0.0.1'),
	(125, 2, '2020-03-31 16:55:36', '127.0.0.1'),
	(126, 2, '2020-03-31 17:04:21', '127.0.0.1'),
	(127, 2, '2020-03-31 21:00:05', '127.0.0.1'),
	(128, 2, '2020-04-01 12:46:38', '127.0.0.1'),
	(129, 2, '2020-04-04 22:10:34', '127.0.0.1'),
	(130, 2, '2020-04-04 22:22:50', '192.168.1.16'),
	(131, 2, '2020-04-05 15:15:22', '127.0.0.1'),
	(132, 2, '2020-04-05 21:22:07', '192.168.1.16'),
	(133, 2, '2020-04-12 14:42:46', '127.0.0.1'),
	(134, 2, '2020-04-23 23:13:39', '127.0.0.1'),
	(135, 3, '2020-04-23 23:32:03', '127.0.0.1'),
	(136, 2, '2020-04-23 23:32:38', '127.0.0.1'),
	(137, 2, '2020-04-29 21:04:54', '127.0.0.1'),
	(138, 3, '2020-04-29 21:47:17', '127.0.0.1'),
	(139, 2, '2020-04-29 21:47:41', '127.0.0.1'),
	(140, 2, '2020-04-29 23:26:15', '127.0.0.1'),
	(141, 2, '2020-05-01 00:00:09', '127.0.0.1'),
	(142, 2, '2020-05-01 00:19:37', '127.0.0.1'),
	(143, 2, '2020-05-01 01:34:12', '127.0.0.1'),
	(144, 3, '2020-05-01 01:34:31', '127.0.0.1'),
	(145, 2, '2020-05-03 17:11:58', '127.0.0.1'),
	(146, 2, '2020-05-03 19:59:00', '127.0.0.1'),
	(147, 2, '2020-05-03 20:28:37', '127.0.0.1'),
	(148, 2, '2020-05-08 20:07:15', '127.0.0.1'),
	(149, 2, '2020-05-08 21:07:28', '127.0.0.1'),
	(150, 2, '2020-05-09 00:45:26', '192.168.1.5'),
	(151, 2, '2020-05-09 01:43:45', '192.168.1.5'),
	(152, 2, '2020-05-09 20:55:48', '127.0.0.1'),
	(153, 2, '2020-05-10 13:43:35', '127.0.0.1'),
	(154, 2, '2020-05-11 12:41:28', '127.0.0.1'),
	(155, 2, '2020-05-26 21:38:20', '127.0.0.1'),
	(156, 2, '2020-05-27 00:51:08', '127.0.0.1'),
	(157, 2, '2020-05-27 10:41:42', '127.0.0.1'),
	(158, 2, '2020-05-27 21:34:54', '127.0.0.1'),
	(159, 2, '2020-05-27 21:47:45', '192.168.1.8'),
	(160, 2, '2020-05-27 21:53:16', '192.168.1.11'),
	(161, 2, '2020-05-28 18:34:04', '127.0.0.1'),
	(162, 5, '2020-05-28 20:35:06', '127.0.0.1'),
	(163, 5, '2020-05-28 20:35:27', '127.0.0.1'),
	(164, 2, '2020-05-28 20:35:54', '127.0.0.1'),
	(165, 2, '2020-05-28 22:47:23', '127.0.0.1'),
	(166, 2, '2020-05-28 22:47:23', '127.0.0.1'),
	(167, 2, '2020-05-30 13:04:48', '127.0.0.1'),
	(168, 2, '2020-05-30 15:19:28', '127.0.0.1'),
	(169, 2, '2020-05-30 21:33:57', '127.0.0.1'),
	(170, 2, '2020-06-01 11:26:10', '127.0.0.1'),
	(171, 2, '2020-06-12 17:30:21', '127.0.0.1'),
	(172, 2, '2020-07-03 00:00:42', '127.0.0.1'),
	(173, 2, '2020-07-05 01:15:46', '127.0.0.1'),
	(174, 2, '2020-07-11 23:07:03', '127.0.0.1'),
	(175, 2, '2020-07-19 19:48:37', '127.0.0.1'),
	(176, 2, '2020-07-19 19:54:02', '127.0.0.1');
/*!40000 ALTER TABLE `access` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_clean` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.categories: ~42 rows (aproximadamente)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `title`, `url_clean`, `created_at`, `updated_at`) VALUES
	(1, 'Categoria N° 1', 'categoria url  1.', '2020-01-29 15:26:31', '2020-01-31 00:07:42'),
	(2, 'Categoria N° 2', 'categoria url  2', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(3, 'Categoria N° 32', 'categoria url  3', '2020-01-29 15:26:31', '2020-02-08 23:11:20'),
	(4, 'Categoria N° 4', 'categoria url  4', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(5, 'Categoria N° 5', 'categoria url  5', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(6, 'Categoria N° 6', 'categoria url  6', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(7, 'Categoria N° 7', 'categoria url  7', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(8, 'Categoria N° 8', 'categoria url  8', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(9, 'Categoria N° 9', 'categoria url  9', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(10, 'Categoria N° 10', 'categoria url  10', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(11, 'Categoria N° 11', 'categoria url  11', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(12, 'Categoria N° 12', 'categoria url  12', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(13, 'Categoria N° 13', 'categoria url  13', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(14, 'Categoria N° 14', 'categoria url  14', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(15, 'Categoria N° 15', 'categoria url  15', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(16, 'Categoria N° 16', 'categoria url  16', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(17, 'Categoria N° 17', 'categoria url  17', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(18, 'Categoria N° 18', 'categoria url  18', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(19, 'Categoria N° 19', 'categoria url  19', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(20, 'Categoria N° 20', 'categoria url  20', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(21, 'Categoria N° 21', 'categoria url  21', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(22, 'Categoria N° 22', 'categoria url  22', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(23, 'Categoria N° 23', 'categoria url  23', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(24, 'Categoria N° 24', 'categoria url  24', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(25, 'Categoria N° 25', 'categoria url  25', '2020-01-29 15:26:31', '2020-01-29 15:26:31'),
	(26, 'Rosauu', 'Juanjose', '2020-02-04 18:05:13', '2020-02-04 18:05:13'),
	(28, 'primera categoría  modificada', 'primera-categoria-modificada', '2020-02-08 22:15:07', '2020-02-08 22:15:07'),
	(29, 'prueba del old type2', 'abbbbbbbbbbbbbbbbbbbbbbbbbbbb', '2020-02-08 22:17:41', '2020-02-08 22:17:41'),
	(30, 'la momia', 'prueba-del-old-type', '2020-02-08 22:21:30', '2020-02-08 22:21:30'),
	(31, 'el metóOdo', 'prueba-del-old-type11', '2020-02-08 22:28:19', '2020-02-08 22:28:19'),
	(32, 'tipo hidden', 'yttttttttttttttttttttttttttttttttttttt', '2020-02-08 22:30:22', '2020-02-08 22:30:22'),
	(33, 'prueba del old type', 'prueba-del-old-type333p', '2020-02-08 22:30:51', '2020-02-08 22:30:51'),
	(34, 'posted', 'posted', '2020-02-08 22:33:04', '2020-02-08 22:33:04'),
	(35, 'La categoría ha sido creada con exito', 'la-categoria-ha-sido-creada-con-exito', '2020-02-08 22:35:30', '2020-02-08 22:35:30'),
	(36, 'Ejemplo', 'ejemplo', '2020-02-08 22:35:51', '2020-02-08 22:35:51'),
	(37, 'utooweewqer', 'utooweewqer', '2020-02-08 22:36:16', '2020-02-08 22:36:16'),
	(38, 'Lorem Ipsum is simply dummy text COM MAYÚSCULAS', 'lorem-ipsum-is-simply-dummy-text-com-mayusculas', '2020-02-08 22:36:42', '2020-02-08 22:36:42'),
	(39, 'ultima prueba', 'url_clean-al-pelo', '2020-02-08 22:37:06', '2020-02-08 22:37:06'),
	(40, 'prueba del old type', 'jajaj-jajaj', '2020-02-08 22:37:20', '2020-02-08 22:37:20'),
	(41, 'prueba del old type', 'muestre-la-url', '2020-02-08 22:37:57', '2020-02-08 22:37:57'),
	(42, 'por que funcíona bn', 'por-que-funcona-bn', '2020-02-08 22:38:09', '2020-02-08 23:12:17'),
	(43, 'categorías bíen', 'categorias-bien', '2020-02-08 23:25:47', '2020-02-08 23:25:47'),
	(44, 'about:blank#blocked', 'aboutblankblocked', '2020-04-05 21:24:07', '2020-04-05 21:24:07');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.contacts: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` (`id`, `name`, `surname`, `email`, `message`, `user_id`, `created_at`, `updated_at`, `phone`) VALUES
	(4, 'Nombre N° 4', 'Apellido N° 4', 'correo4@gmail.com ', 'Mensaje de contenido N° 4', 2, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(7, 'Nombre N° 7', 'Apellido N° 7', 'correo7@gmail.com ', 'Mensaje de contenido N° 7', 3, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(8, 'Nombre N° 8', 'Apellido N° 8', 'correo8@gmail.com ', 'Mensaje de contenido N° 8', 3, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(9, 'Nombre N° 9', 'Apellido N° 9', 'correo9@gmail.com ', 'Mensaje de contenido N° 9', 5, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(11, 'Nombre N° 11', 'Apellido N° 11', 'correo11@gmail.com ', 'Mensaje de contenido N° 11', 7, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(12, 'Nombre N° 12', 'Apellido N° 12', 'correo12@gmail.com ', 'Mensaje de contenido N° 12', 5, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(13, 'Nombre N° 13', 'Apellido N° 13', 'correo13@gmail.com ', 'Mensaje de contenido N° 13', 6, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(14, 'Nombre N° 14', 'Apellido N° 14', 'correo14@gmail.com ', 'Mensaje de contenido N° 14', 6, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(15, 'Nombre N° 15', 'Apellido N° 15', 'correo15@gmail.com ', 'Mensaje de contenido N° 15', 3, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(16, 'Nombre N° 16', 'Apellido N° 16', 'correo16@gmail.com ', 'Mensaje de contenido N° 16', 2, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(17, 'Nombre N° 17', 'Apellido N° 17', 'correo17@gmail.com ', 'Mensaje de contenido N° 17', 5, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(18, 'Nombre N° 18', 'Apellido N° 18', 'correo18@gmail.com ', 'Mensaje de contenido N° 18', 5, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(19, 'Nombre N° 19', 'Apellido N° 19', 'correo19@gmail.com ', 'Mensaje de contenido N° 19', 6, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(20, 'Nombre N° 20', 'Apellido N° 20', 'correo20@gmail.com ', 'Mensaje de contenido N° 20', 7, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(21, 'Nombre N° 21', 'Apellido N° 21', 'correo21@gmail.com ', 'Mensaje de contenido N° 21', 7, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(23, 'Nombre N° 23', 'Apellido N° 23', 'correo23@gmail.com ', 'Mensaje de contenido N° 23', 7, '2020-02-10 16:01:35', '2020-02-10 16:01:35', NULL),
	(24, 'martha', 'aldana', 'conctact@gmail.com', 'conctact', NULL, '2020-07-18 21:47:10', '2020-07-18 21:47:10', '(+057) 454-354-54-54');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.failed_jobs: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
	(1, 'database', 'default', '{"displayName":"App\\\\Jobs\\\\SendEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"App\\\\Jobs\\\\SendEmail","command":"O:18:\\"App\\\\Jobs\\\\SendEmail\\":10:{s:8:\\"\\u0000*\\u0000title\\";s:23:\\"email enviado por colas\\";s:8:\\"\\u0000*\\u0000email\\";s:24:\\"nicolas53024@hotmail.com\\";s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username "nicolas53024@gmail.com" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code "535", with message "535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials q15sm2615693vsn.24 - gsmtp\r\n". Authenticator PLAIN returned Expected response code 235 but got code "535", with message "535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials q15sm2615693vsn.24 - gsmtp\r\n". Authenticator XOAUTH2 returned Expected response code 250 but got code "535", with message "535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials q15sm2615693vsn.24 - gsmtp\r\n". in C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(486): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(159): Illuminate\\Mail\\Mailer->send(\'emails.title\', Array, Object(Closure))\n#6 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(160): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(277): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(231): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\EmailForQueue))\n#10 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(122): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\EmailForQueue))\n#11 C:\\laragon\\www\\larablog\\app\\Jobs\\SendEmail.php(37): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\EmailForQueue))\n#12 [internal function]: App\\Jobs\\SendEmail->handle()\n#13 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#14 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#19 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmail))\n#20 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmail))\n#21 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmail), false)\n#23 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmail))\n#24 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmail))\n#25 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendEmail))\n#27 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(354): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(300): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#33 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#35 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(201): Illuminate\\Container\\Container->call(Array)\n#40 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(188): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Application.php(1011): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Application.php(272): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Application.php(148): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\larablog\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2020-05-03 19:59:04'),
	(2, 'database', 'default', '{"displayName":"App\\\\Jobs\\\\SendEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"App\\\\Jobs\\\\SendEmail","command":"O:18:\\"App\\\\Jobs\\\\SendEmail\\":10:{s:8:\\"\\u0000*\\u0000title\\";s:23:\\"email enviado por colas\\";s:8:\\"\\u0000*\\u0000email\\";s:24:\\"nicolas53024@hotmail.com\\";s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username "nicolas53024@gmail.com" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code "535", with message "535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials k184sm4093359vke.42 - gsmtp\r\n". Authenticator PLAIN returned Expected response code 235 but got code "535", with message "535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials k184sm4093359vke.42 - gsmtp\r\n". Authenticator XOAUTH2 returned Expected response code 250 but got code "535", with message "535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials k184sm4093359vke.42 - gsmtp\r\n". in C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(486): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(159): Illuminate\\Mail\\Mailer->send(\'emails.title\', Array, Object(Closure))\n#6 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(160): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(277): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(231): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\EmailForQueue))\n#10 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(122): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\EmailForQueue))\n#11 C:\\laragon\\www\\larablog\\app\\Jobs\\SendEmail.php(37): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\EmailForQueue))\n#12 [internal function]: App\\Jobs\\SendEmail->handle()\n#13 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#14 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#19 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmail))\n#20 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmail))\n#21 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmail), false)\n#23 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmail))\n#24 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmail))\n#25 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendEmail))\n#27 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(354): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(300): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#33 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#35 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(201): Illuminate\\Container\\Container->call(Array)\n#40 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(188): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Application.php(1011): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Application.php(272): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Application.php(148): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\larablog\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2020-05-03 20:04:15'),
	(3, 'database', 'default', '{"displayName":"App\\\\Jobs\\\\SendEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"App\\\\Jobs\\\\SendEmail","command":"O:18:\\"App\\\\Jobs\\\\SendEmail\\":10:{s:8:\\"\\u0000*\\u0000title\\";s:23:\\"email enviado por colas\\";s:8:\\"\\u0000*\\u0000email\\";s:24:\\"nicolas53024@hotmail.com\\";s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username "nicolas53024@gmail.com" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code "535", with message "535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials v23sm4047876vsa.6 - gsmtp\r\n". Authenticator PLAIN returned Expected response code 235 but got code "535", with message "535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials v23sm4047876vsa.6 - gsmtp\r\n". Authenticator XOAUTH2 returned Expected response code 250 but got code "535", with message "535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials v23sm4047876vsa.6 - gsmtp\r\n". in C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(486): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(159): Illuminate\\Mail\\Mailer->send(\'emails.title\', Array, Object(Closure))\n#6 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(160): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(277): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(231): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\EmailForQueue))\n#10 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(122): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\EmailForQueue))\n#11 C:\\laragon\\www\\larablog\\app\\Jobs\\SendEmail.php(37): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\EmailForQueue))\n#12 [internal function]: App\\Jobs\\SendEmail->handle()\n#13 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#14 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#19 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmail))\n#20 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmail))\n#21 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmail), false)\n#23 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmail))\n#24 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmail))\n#25 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendEmail))\n#27 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(354): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(300): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#33 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#35 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(201): Illuminate\\Container\\Container->call(Array)\n#40 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(188): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Application.php(1011): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Application.php(272): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Application.php(148): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\larablog\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2020-05-03 20:07:17'),
	(4, 'database', 'default', '{"displayName":"App\\\\Jobs\\\\SendEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"App\\\\Jobs\\\\SendEmail","command":"O:18:\\"App\\\\Jobs\\\\SendEmail\\":10:{s:8:\\"\\u0000*\\u0000title\\";s:23:\\"email enviado por colas\\";s:8:\\"\\u0000*\\u0000email\\";s:24:\\"nicolas53024@hotmail.com\\";s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username "nicolas@gmail.com" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code "535", with message "535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials k24sm3932434uaq.20 - gsmtp\r\n". Authenticator PLAIN returned Expected response code 235 but got code "535", with message "535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials k24sm3932434uaq.20 - gsmtp\r\n". Authenticator XOAUTH2 returned Expected response code 250 but got code "535", with message "535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials k24sm3932434uaq.20 - gsmtp\r\n". in C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 C:\\laragon\\www\\larablog\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(486): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(159): Illuminate\\Mail\\Mailer->send(\'emails.title\', Array, Object(Closure))\n#6 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(160): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(277): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(231): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\EmailForQueue))\n#10 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(122): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\EmailForQueue))\n#11 C:\\laragon\\www\\larablog\\app\\Jobs\\SendEmail.php(37): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\EmailForQueue))\n#12 [internal function]: App\\Jobs\\SendEmail->handle()\n#13 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#14 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#19 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmail))\n#20 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmail))\n#21 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmail), false)\n#23 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmail))\n#24 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmail))\n#25 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendEmail))\n#27 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(354): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(300): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#33 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#35 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(201): Illuminate\\Container\\Container->call(Array)\n#40 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(188): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Application.php(1011): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Application.php(272): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\larablog\\vendor\\symfony\\console\\Application.php(148): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\larablog\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\larablog\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2020-05-03 20:08:21');
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
	(1, 'default', '{"displayName":"App\\\\Jobs\\\\ProccessImageSmall","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"App\\\\Jobs\\\\ProccessImageSmall","command":"O:27:\\"App\\\\Jobs\\\\ProccessImageSmall\\":9:{s:8:\\"\\u0000*\\u0000image\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:13:\\"App\\\\PostImage\\";s:2:\\"id\\";i:31;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1588987045, 1588987045);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.migrations: ~27 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_01_15_185925_create_posts_table', 1),
	(5, '2020_01_15_193458_create_category_table', 1),
	(7, '2020_01_27_174223_create_post_images_table', 2),
	(8, '2020_01_27_185804_add_surname_to_users', 2),
	(9, '2020_01_28_152149_create_rols_table', 3),
	(10, '2020_01_28_153433_add_rol_id_to_users', 3),
	(12, '2020_01_30_205030_create_access_table', 4),
	(13, '2020_02_10_151726_create_contacts_table', 5),
	(15, '2020_02_10_172604_create_post_coments_table', 6),
	(16, '2020_03_28_231245_create_tags_table', 7),
	(17, '2020_03_28_232130_create_post_tag_table', 8),
	(18, '2020_03_31_222416_create_taggable_table', 9),
	(19, '2020_03_31_231637_create_taggables_table', 10),
	(20, '2020_03_31_231748_create_taggables_table', 11),
	(21, '2020_05_03_182741_create_jobs_table', 12),
	(22, '2019_05_03_000001_create_customer_columns', 13),
	(23, '2019_05_03_000002_create_subscriptions_table', 13),
	(24, '2019_05_03_000003_create_subscription_items_table', 13),
	(25, '2020_07_17_195539_add_phone_to_contacts_table', 14),
	(26, '2016_06_01_000001_create_oauth_auth_codes_table', 15),
	(27, '2016_06_01_000002_create_oauth_access_tokens_table', 15),
	(28, '2016_06_01_000003_create_oauth_refresh_tokens_table', 15),
	(29, '2016_06_01_000004_create_oauth_clients_table', 15),
	(30, '2016_06_01_000005_create_oauth_personal_access_clients_table', 15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.oauth_access_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.oauth_auth_codes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.oauth_clients: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'Fj1RmlKUb3OHuYofHXnQaOp39m2ouiL8wXfhyvLl', NULL, 'http://localhost', 1, 0, 0, '2020-07-19 20:34:49', '2020-07-19 20:34:49'),
	(2, NULL, 'Laravel Password Grant Client', 'OtkervSDHoXbGxPMrnfEOn5GE6lkG54lLwNDVRaK', 'users', 'http://localhost', 0, 1, 0, '2020-07-19 20:34:49', '2020-07-19 20:34:49');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.oauth_personal_access_clients: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2020-07-19 20:34:49', '2020-07-19 20:34:49');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.oauth_refresh_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.password_resets: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('nicolas53024@gmail.com', '$2y$10$.Y9bCeIH27B6eQmPvAdCoe4u6LpllPlM1CQ8gmLD/0WU3N8yOMebO', '2020-01-27 21:57:40'),
	('nn@vision.com', '$2y$10$nBhgEnQ5yXhO51.sla67ceZZ2N0oiRpan63g8WtY4hWvpsUSTWZkm', '2020-01-31 00:10:18');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_clean` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `posted` enum('yes','not') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not',
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.posts: ~68 rows (aproximadamente)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `url_clean`, `content`, `posted`, `category_id`, `created_at`, `updated_at`) VALUES
	(2, 'PRUEBA 2', 'PRUEBA 2', '<figure class="image"><img src="http://larablog.test/images_ckeditor/1581306260.jpeg"></figure><p><strong>PRUEBA 2 imagen del ckeditor ok</strong></p>', 'yes', 10, '2020-01-22 23:13:18', '2020-02-09 22:46:38'),
	(3, 'PRUEBA 23', 'PRUEBA 2 yy', '<p>PRUEBA 2 ok,pñ,</p>', 'yes', 10, '2020-01-22 23:13:28', '2020-02-03 23:48:58'),
	(4, 'Lorem Ipsum', 'Lorem Ipsum', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'yes', 3, '2020-01-22 23:17:50', '2020-01-24 03:28:27'),
	(5, 'prueba del old type', 'urlestabien', 'prueba de paginacion', 'not', 2, '2020-01-22 23:18:17', '2020-01-22 23:18:17'),
	(6, 'prueba de CKEditor', 'http://larablog.test/dashboard/post/create', '<h2><i><strong>What is Lorem Ipsum?</strong></i></h2><ul><li><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</li></ul><figure class="media"><oembed url="https://www.youtube.com/watch?v=kJQP7kiw5Fk"></oembed></figure><figure class="table"><table><tbody><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure>', 'not', 2, '2020-01-24 01:09:22', '2020-01-24 01:09:22'),
	(7, 'aaa prueba de time', 'aaa prueba de time', '<figure class="image"><img src="http://192.168.1.4/larablog/public/images_ckeditor/1581361209.png"></figure><p>aaa prueba de time</p>', 'not', 5, '2020-01-24 01:20:14', '2020-02-10 14:00:16'),
	(8, 'prueba de hora y fecha correcta', 'prueba de hora y fecha.', '<figure class="image"><img src="http://larablog.test/images_ckeditor/1581359987.png"></figure><p>prueba de hora y fecha col</p>', 'not', 6, '2020-01-24 01:32:13', '2020-02-10 13:39:51'),
	(9, 'horas', 'horas', '<p>horas</p>', 'not', 3, '2020-01-24 01:34:22', '2020-01-24 01:34:22'),
	(10, 'horasaaa', 'horasaaa', '<p>horasaaa</p>', 'not', 3, '2020-01-24 01:37:32', '2020-01-24 01:37:32'),
	(11, 'francia', 'francia', '<p>francia</p>', 'not', 3, '2020-01-24 01:41:37', '2020-01-24 01:41:37'),
	(12, 'prueba del old type', 'prueba del old type', '<p>prueba del old type</p>', 'not', 2, '2020-01-26 00:22:15', '2020-01-26 00:22:15'),
	(13, 'solucionado', 'solucionado', '<p>solucionado</p>', 'yes', 11, '2020-01-26 00:29:46', '2020-01-25 21:20:35'),
	(14, 'prueba del old type', 'prueba del old type', '<p>prueba del old type</p>', 'yes', 3, '2020-01-26 00:33:22', '2020-01-25 21:07:52'),
	(15, 'prueba del old type', 'prueba del old type', '<p>prueba del old type</p>', 'not', 2, '2020-01-26 00:34:26', '2020-01-26 00:34:26'),
	(16, '855', '855', '855', 'not', 12, '2020-01-25 20:55:44', '2020-01-25 20:57:11'),
	(17, 'prueba del old type', 'prueba del old type', '<p>prueba del old type</p>', 'not', 2, '2020-01-25 21:04:12', '2020-01-25 21:04:12'),
	(18, 'sabado 25 enero', '2104 9 04 pm', '<p>2104 9 04 pm</p>', 'not', 2, '2020-01-25 21:04:50', '2020-01-25 21:04:50'),
	(19, 'tipo hidden', 'tipo hidden', '<p>tipo hidden</p>', 'not', 2, '2020-01-25 21:11:09', '2020-01-25 21:11:09'),
	(20, 'hiddem 2', 'hiddem 2', '<p>hiddem 2&nbsp;</p>', 'not', 2, '2020-01-25 21:11:58', '2020-01-25 21:11:58'),
	(22, 'posted', 'posted', '<p>posted</p>', 'not', 2, '2020-01-25 21:20:09', '2020-01-25 21:20:09'),
	(23, 'microEdge', 'microEdge', '<p>hora modificada</p>', 'not', 9, '2020-01-25 21:26:24', '2020-01-25 21:49:30'),
	(24, 'ultima prueba', 'ultima prueba', '<blockquote><ol><li><i>ultima prueba</i></li><li><i>esta bn</i></li><li><i>ok</i></li></ol></blockquote>', 'yes', 2, '2020-01-25 21:57:58', '2020-01-25 21:58:17'),
	(25, 'getquery', 'getquery', '<p>getquery</p>', 'not', 5, '2020-01-26 19:19:10', '2020-01-26 19:19:10'),
	(26, '27 de enero', '27 de enero', '<figure class="image"><img src="http://larablog.test/images_ckeditor/1581362418.png"></figure><p><i>27 de enero</i></p>', 'not', 3, '2020-01-27 14:38:34', '2020-02-10 14:20:22'),
	(27, 'ultima prueba 28 enero 3 18 pm', 'ok todo bn', '<p>excelente el app</p>', 'not', 3, '2020-01-28 15:18:35', '2020-01-28 15:18:35'),
	(28, 'posted cond', 'posted cond', '<p>posted cond</p>', 'not', 2, '2020-01-28 15:57:30', '2020-01-28 15:57:30'),
	(29, 'posted not', 'posted not', '<p>posted not</p>', 'yes', 3, '2020-01-28 15:58:08', '2020-01-28 16:02:00'),
	(30, 'prueba del old type', 'prueba-del-old-type', ',l,lñmklmlkmlknjknjl', 'not', 1, '2020-02-06 23:29:54', '2020-02-06 23:29:54'),
	(31, 'nícolas aldana Castañeda **""!/○○\\L\\', 'nicolas-aldana-Castaneda-L', 'nnnnnnnnnnnnnnnnnnnn', 'not', 11, '2020-02-06 23:30:55', '2020-02-06 23:30:55'),
	(32, 'mayúsculas inactivas', 'aaaaaaaaaaaaaaaaa', 'njunnÄaááááááááááááááá', 'not', 1, '2020-02-06 23:31:56', '2020-02-06 23:31:56'),
	(33, 'prueba del old type', '', 'ininininin', 'not', 1, '2020-02-06 23:32:36', '2020-02-06 23:32:36'),
	(34, 'ü, é, á, í, ó, ú, ñ, Ñ, ¿, ¡', '', 'ü, é, á, í, ó, ú, ñ, Ñ, ¿, ¡', 'not', 1, '2020-02-06 23:34:21', '2020-02-06 23:34:21'),
	(35, 'presionada la tecla “ALT” en', 'presionada-la-tecla-ALT-en', 'presionada la tecla “ALT” en', 'not', 1, '2020-02-06 23:34:55', '2020-02-06 23:34:55'),
	(36, 'presionada la tecla “ALT” en', 'a-debe-ser-el-primer-elemento-del-paginator', 'presionada la tecla “ALT” en', 'not', 1, '2020-02-06 23:35:13', '2020-02-06 23:35:13'),
	(37, 'presionada la tecla “ALT” en', 'abbbbbbbbbbbbbbbbbbbbbbbbbbbb', 'jmkasnmlkdn', 'not', 1, '2020-02-06 23:35:39', '2020-02-06 23:35:39'),
	(38, 'prueba del old type', '', 'hhhhhhhhhhhhhhhhhhhhhhhhhh', 'not', 1, '2020-02-06 23:36:05', '2020-02-06 23:36:05'),
	(39, 'nícolas aldana Castañeda **""!/○○\\L\\', 'nicolas-aldana-Castaneda-L', 'nnnnnnnnnnnnnnnnnnnnnnnnnn', 'not', 1, '2020-02-06 23:36:34', '2020-02-06 23:36:34'),
	(40, 'primera categoría  modificada', 'primera-categoria-modificada', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp;_) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;__ \\ &nbsp; &nbsp; _ \\ &nbsp; &nbsp; &nbsp; __| &nbsp; &nbsp;_ \\ &nbsp; &nbsp; __| &nbsp; &nbsp;_` | &nbsp; &nbsp;__| &nbsp; &nbsp; &nbsp; _ \\ &nbsp; &nbsp;__| &nbsp; __| &nbsp; &nbsp;_ \\ &nbsp; &nbsp; &nbsp; _` | &nbsp; &nbsp;__| &nbsp; &nbsp;__| &nbsp; __ \\ &nbsp; &nbsp;| &nbsp;\\ \\ &nbsp; / &nbsp; &nbsp;_ \\ &nbsp; &nbsp;| &nbsp; | &nbsp; ( &nbsp; | &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp; ( &nbsp; | &nbsp; ( &nbsp; &nbsp; &nbsp;( &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;__/ &nbsp;\\__ \\ &nbsp; | &nbsp; &nbsp; &nbsp;__/ &nbsp; &nbsp; &nbsp;( &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp;( &nbsp; &nbsp; &nbsp;| | | &nbsp; | &nbsp; \\ \\ / &nbsp; &nbsp;( &nbsp; | _| &nbsp;_| &nbsp;\\___/ &nbsp; &nbsp; &nbsp;\\__| &nbsp;\\___/ &nbsp; \\___| &nbsp;\\__,_| &nbsp;_| &nbsp; &nbsp; &nbsp; &nbsp;\\___| &nbsp;____/ &nbsp;\\__| &nbsp;\\___| &nbsp; &nbsp; \\__,_| &nbsp;_| &nbsp; &nbsp; \\___| &nbsp;_| |_| &nbsp;_| &nbsp; &nbsp;\\_/ &nbsp; &nbsp;\\___/ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 'yes', 1, '2020-02-07 00:11:19', '2020-02-07 00:12:07'),
	(41, 'Prueba Con Mayúsculas y tildes', 'Prueba-Con-Mayusculas-y-tildes', '<p>ok, el post funciona con el metodo store</p>', 'not', 26, '2020-02-07 21:09:00', '2020-02-07 21:09:00'),
	(42, 'Prueba Con Mayúsculas y tildes', 'Prueba Con Mayúsculas y tildes', '<figure class="image"><img src="http://192.168.1.4/larablog/public/images_ckeditor/1581362025.jpeg"></figure><p>Prueba Con Mayúsculas y tildes</p>', 'yes', 1, '2020-02-07 21:09:43', '2020-02-10 18:34:41'),
	(43, 'ü, é, á, í, ó, ú, ñ, Ñ, ¿, ¡', '', '<p>ü, é, á, í, ó, ú, ñ, Ñ, ¿, ¡</p>', 'not', 1, '2020-02-07 21:10:51', '2020-02-07 21:10:51'),
	(44, 'ü, é, á, í, ó, ú, ñ, Ñ, ¿, ¡', '', '<p>ü, é, á, í, ó, ú, ñ, Ñ, ¿, ¡</p>', 'not', 1, '2020-02-07 21:11:09', '2020-02-07 21:11:09'),
	(45, 'ü, é, á, í, ó, ú, ñ, Ñ, ¿, ¡', 'u-y-el-post-sirve', '<p>ü, é, á, í, ó, ú, ñ, Ñ, ¿, ¡</p>', 'not', 1, '2020-02-07 21:11:35', '2020-02-07 21:11:35'),
	(46, '‘ Mi tío Joaquín viaja de aquí para allá todo el año', 'mi-tio-joaquin-viaja-de-aqui-para-alla-todo-el-ano', '<p>‘ Mi tío Joaquín viaja de aquí para allá todo el año</p>', 'not', 1, '2020-02-07 21:12:53', '2020-02-07 21:12:53'),
	(47, 'presionada la tecla “ALT” en', 'presionada-la-tecla-alt-en', '<p>presionada la tecla “ALT” en</p>', 'not', 1, '2020-02-07 21:13:59', '2020-02-07 21:13:59'),
	(48, 'update', 'updateupdate', '<p>update</p>', 'not', 1, '2020-02-08 19:58:24', '2020-02-08 19:58:24'),
	(49, 'update2', 'update2', '<p>update</p>', 'yes', 1, '2020-02-08 20:01:05', '2020-02-08 20:57:51'),
	(50, 'nícolas aldana Castañeda **""!/○○\\L\\12244', 'nícolas aldana Castañeda **""!/○○\\L\\122', '<p>nícolas aldana Castañeda **""!/○○\\L\\</p>', 'not', 1, '2020-02-08 20:43:55', '2020-02-08 20:49:51'),
	(51, 'ldana Castañeda **""!/○○\\L\\122', 'ldana-castaneda-l122', '<p>ldana Castañeda **""!/○○\\L\\122</p>', 'not', 1, '2020-02-08 21:01:03', '2020-02-08 21:01:03'),
	(52, 'tíyulo con MAYUSCULAS y tíáó', 'tiyulo-con-mayusculas-y-tiao', '<p>hahahahahaha</p>', 'not', 22, '2020-02-08 21:02:04', '2020-02-08 21:02:04'),
	(53, 'La categoría ha sido creada con exito', 'la-categoria-ha-sido-creada-con-exito', '<p>La categoría ha sido creada con exito</p>', 'not', 1, '2020-02-08 22:34:36', '2020-02-08 22:34:36'),
	(54, 'prueba de fecha', 'prueba-de-fecha', '<p>jajajajajja</p>', 'not', 1, '2020-02-10 16:37:04', '2020-02-10 16:37:04'),
	(55, 'prueba de fecha', 'csrfy-hastamas', '<p>@csrfjajajajaja</p>', 'not', 1, '2020-02-10 16:37:57', '2020-02-10 16:37:57'),
	(56, 'prueba del old typeaaa', 'prueba-del-old-typeaaa', '<p>prueba del old typeaaa</p>', 'yes', 3, '2020-02-11 16:16:28', '2020-03-07 20:28:26'),
	(57, 'Prueba cel', 'fgfdgfdges', '<p>Ok<strong>kk</strong></p>', 'not', 6, '2020-03-10 22:45:13', '2020-03-10 22:45:13'),
	(58, 'Prueba cel', 'gtsgtt', '<p><strong>Jajjajajaj</strong></p>', 'not', 10, '2020-03-10 22:46:48', '2020-03-10 22:46:48'),
	(59, 'nicolas aldana', 'ldana-castaneda-l12234', '<p>ldana Castañeda **""!/○○\\L\\122</p>', 'not', 1, '2020-03-10 22:47:49', '2020-03-10 22:47:49'),
	(60, 'Mautllais', 'mayusculas-y-tildes', '<p>Ok this is true</p>', 'not', 7, '2020-03-10 22:49:17', '2020-03-10 22:49:17'),
	(61, 'redirect', 'redirect-despues-creado-el-ost', '<p>prueeba ok</p>', 'not', 10, '2020-03-11 19:55:35', '2020-03-11 19:55:35'),
	(62, 'redirect 2', 'redirect-despues-creado-el-ostff', '<p>ok prueba</p>', 'not', 1, '2020-03-11 19:57:27', '2020-03-11 19:57:27'),
	(64, 'last test', 'last test', '<p>last tests</p>', 'not', 1, '2020-03-11 19:59:33', '2020-03-30 15:09:47'),
	(65, 'this is a test for redirectlmlm', 'mlmlmlmlml', '<p>lmlmlmlmlm</p>', 'not', 1, '2020-03-15 18:43:56', '2020-03-15 18:43:56'),
	(66, 'etiquetas', 'etiquetas', '<p>etiquetas</p>', 'not', 1, '2020-03-30 15:30:12', '2020-03-30 15:30:12'),
	(67, 'etiquetas', 'la-pandemia-muchas', '<p>etiquetas</p>', 'not', 19, '2020-03-30 15:32:32', '2020-03-30 15:32:32'),
	(68, 'prueba de etiquetas', 'redirect-despues-creado-el-ostsssss', '<p>la pandemia muchas</p>', 'not', 1, '2020-03-30 15:33:50', '2020-03-30 15:33:50'),
	(70, 'categoria uncia', 'categoria-uncia', '<p>categoria</p>', 'not', 1, '2020-03-30 16:07:31', '2020-03-30 16:07:31'),
	(71, 'nicolas aldana', 'm', '<p>mklsmdlksmdlf</p>', 'not', 1, '2020-03-30 16:10:41', '2020-03-30 16:10:41');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.post_coments
CREATE TABLE IF NOT EXISTS `post_coments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `approved` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.post_coments: ~30 rows (aproximadamente)
/*!40000 ALTER TABLE `post_coments` DISABLE KEYS */;
INSERT INTO `post_coments` (`id`, `title`, `message`, `post_id`, `user_id`, `approved`, `created_at`, `updated_at`) VALUES
	(2, 'Título n° 1', 'Mensaje de prueba 1', 1, 2, '1', '2020-02-10 17:48:10', '2020-03-27 00:31:31'),
	(3, 'Título n° 2', 'Mensaje de prueba 2', 2, 2, '1', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(4, 'Título n° 3', 'Mensaje de prueba 3', 3, 2, '1', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(5, 'Título n° 4', 'Mensaje de prueba 4', 4, 2, '1', '2020-02-10 17:48:10', '2020-05-11 16:07:02'),
	(6, 'Título n° 5', 'Mensaje de prueba 5', 5, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(7, 'Título n° 6', 'Mensaje de prueba 6', 6, 2, '0', '2020-02-10 17:48:10', '2020-03-28 22:02:15'),
	(8, 'Título n° 7', 'Mensaje de prueba 7', 7, 2, '0', '2020-02-10 17:48:10', '2020-05-27 00:46:28'),
	(9, 'Título n° 8', 'Mensaje de prueba 8', 8, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(10, 'Título n° 9', 'Mensaje de prueba 9', 9, 2, '1', '2020-02-10 17:48:10', '2020-05-27 00:49:17'),
	(11, 'Título n° 10', 'Mensaje de prueba 10', 10, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(12, 'Título n° 11', 'Mensaje de prueba 11', 11, 2, '1', '2020-02-10 17:48:10', '2020-07-19 19:52:51'),
	(13, 'Título n° 12', 'Google Drive: Ten todos tus archivos a mano desde cualquier dispositivo.\r\nGoogle LLC, 1600 Amphitheatre Parkway, Mountain View, CA 94043, USAGoogle Drive: Ten todos tus archivos a mano desde cualquier dispositivo.', 12, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(14, 'Título n° 13', 'Mensaje de prueba 13', 13, 2, '1', '2020-02-10 17:48:10', '2020-04-05 21:22:52'),
	(15, 'Título n° 14', 'Mensaje de prueba 14', 14, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(16, 'Título n° 15', 'Mensaje de prueba 15', 15, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(17, 'Título n° 16', 'Mensaje de prueba 16', 16, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(18, 'Título n° 17', 'Mensaje de prueba 17', 17, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(19, 'Título n° 18', 'Mensaje de prueba 18', 46, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(20, 'Título n° 19', 'Mensaje de prueba 19', 46, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(21, 'Título n° 20', 'Mensaje de prueba 20', 20, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(22, 'Título n° 21', 'Mensaje de prueba 21', 21, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(24, 'Título n° 23', 'Mensaje de prueba 23', 23, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(25, 'Título n° 24', 'Mensaje de prueba 24', 24, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(26, 'Título n° 25', 'Mensaje de prueba 25', 25, 2, '0', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(27, 'Título n° 26', 'Mensaje de prueba 26', 26, 2, '1', '2020-02-10 17:48:10', '2020-02-10 17:48:10'),
	(28, 'comentario', 'unico coment de este post', 64, 3, '1', '2020-03-12 21:49:21', '2020-04-29 21:05:50'),
	(29, 'coment', 'curso de laravel', 58, 2, '0', '2020-03-12 22:46:20', '2020-03-12 22:46:21'),
	(30, 'comentario', 'el lorem impsyr', 64, 3, '1', '2020-03-15 17:59:30', '2020-04-29 21:05:49');
/*!40000 ALTER TABLE `post_coments` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.post_images
CREATE TABLE IF NOT EXISTS `post_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_post_images_posts` (`post_id`),
  CONSTRAINT `FK_post_images_posts` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.post_images: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `post_images` DISABLE KEYS */;
INSERT INTO `post_images` (`id`, `post_id`, `image`, `created_at`, `updated_at`) VALUES
	(6, 10, '1580273634.png', '2020-01-28 23:53:54', '2020-01-28 23:53:54'),
	(9, 4, '1580273952.png', '2020-01-28 23:59:12', '2020-01-28 23:59:12'),
	(10, 3, '1580791343.jpeg', '2020-02-03 23:42:23', '2020-02-03 23:42:23'),
	(11, 5, '1580791403.jpeg', '2020-02-03 23:43:23', '2020-02-03 23:43:23'),
	(12, 8, '1581213525.jpeg', '2020-02-03 23:44:43', '2020-02-03 23:44:43'),
	(15, 49, '1581213525.jpeg', '2020-02-08 20:58:45', '2020-02-08 20:58:45'),
	(28, 70, '1580180875.jpeg', '2020-04-04 22:48:15', '2020-04-04 22:48:15'),
	(29, 2, '1581213525.jpeg\r\n', '2020-05-01 00:01:38', '2020-05-01 00:01:38'),
	(31, 71, '1588987044.png', '2020-05-08 20:17:24', '2020-05-08 20:17:24'),
	(32, 58, '1588987044.png', '2020-07-05 19:55:09', '2020-07-05 19:55:10'),
	(33, 16, '1588987044.png', '2020-07-11 20:39:26', '2020-07-11 20:39:27'),
	(34, 9, '1580180875.jpeg', '2020-07-11 20:40:04', '2020-07-11 20:40:05'),
	(35, 51, '1580180875.jpeg', '2020-07-11 20:40:06', '2020-07-11 20:40:06'),
	(36, 25, '1580180875.jpeg', '2020-07-11 20:40:45', '2020-07-11 20:40:46'),
	(37, 64, '1580273634.png', '2020-07-11 20:41:03', '2020-07-11 20:41:04'),
	(38, 11, '1580273634.png', '2020-07-11 20:41:04', '2020-07-11 20:41:05'),
	(39, 7, '1580273634.png', '2020-07-11 20:43:07', '2020-07-11 20:43:08'),
	(40, 32, '1580273634.png', '2020-07-11 20:43:09', '2020-07-11 20:43:10'),
	(41, 33, '1580791343.jpeg', '2020-07-13 21:54:57', '2020-07-13 21:54:58'),
	(42, 30, '1580791343.jpeg', '2020-07-13 21:55:09', '2020-07-13 21:55:10'),
	(43, 34, '1580791343.jpeg', '2020-07-13 21:55:36', '2020-07-13 21:55:37'),
	(44, 35, '1580791343.jpeg', '2020-07-13 21:55:46', '2020-07-13 21:55:47'),
	(45, 36, '1580791343.jpeg', '2020-07-13 21:55:55', '2020-07-13 21:55:55'),
	(46, 37, '1580791343.jpeg', '2020-07-13 21:56:04', '2020-07-13 21:56:05'),
	(47, 38, '1580791343.jpeg', '2020-07-13 21:56:30', '2020-07-13 21:56:31');
/*!40000 ALTER TABLE `post_images` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.post_tag
CREATE TABLE IF NOT EXISTS `post_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.post_tag: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
	(10, 64, 2),
	(11, 64, 4),
	(12, 64, 3),
	(13, 67, 2),
	(14, 68, 1),
	(15, 69, 4),
	(17, 70, 7),
	(18, 70, 8),
	(19, 71, 3),
	(20, 71, 1);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.rols
CREATE TABLE IF NOT EXISTS `rols` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.rols: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `rols` DISABLE KEYS */;
INSERT INTO `rols` (`id`, `key`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'administrador', 'este usuario puede editar, modificar, publicar los posts .Tambien decidir si el post sube o no a la vista de usuario', '2020-01-28 15:44:08', '2020-01-28 15:44:09'),
	(2, 'regular', 'usuario normal', 'el usuario solo puede visualizar', '2020-01-28 15:45:02', '2020-01-28 15:45:02');
/*!40000 ALTER TABLE `rols` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.subscriptions
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.subscriptions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.subscription_items
CREATE TABLE IF NOT EXISTS `subscription_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint(20) unsigned NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  KEY `subscription_items_stripe_id_index` (`stripe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.subscription_items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `subscription_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_items` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.taggables
CREATE TABLE IF NOT EXISTS `taggables` (
  `tag_id` bigint(20) unsigned NOT NULL,
  `taggable_id` bigint(20) unsigned NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.taggables: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `taggables` DISABLE KEYS */;
INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`) VALUES
	(2, 71, 'App\\Post'),
	(4, 71, 'App\\Post'),
	(8, 71, 'App\\Post'),
	(25, 72, 'App\\Post'),
	(1, 2, 'App\\Post'),
	(4, 2, 'App\\Post');
/*!40000 ALTER TABLE `taggables` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.tags: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `title`, `created_at`, `updated_at`) VALUES
	(1, 'Tag N° 1', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(2, 'Tag N° 2', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(3, 'Tag N° 3', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(4, 'Tag N° 4', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(5, 'Tag N° 5', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(6, 'Tag N° 6', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(7, 'Tag N° 7', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(8, 'Tag N° 8', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(9, 'Tag N° 9', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(10, 'Tag N° 10', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(11, 'Tag N° 11', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(12, 'Tag N° 12', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(13, 'Tag N° 13', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(14, 'Tag N° 14', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(15, 'Tag N° 15', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(16, 'Tag N° 16', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(17, 'Tag N° 17', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(18, 'Tag N° 18', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(19, 'Tag N° 19', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(20, 'Tag N° 20', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(21, 'Tag N° 21', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(22, 'Tag N° 22', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(23, 'Tag N° 23', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(24, 'Tag N° 24', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(25, 'Tag N° 25', '2020-03-28 23:17:27', '2020-03-28 23:17:27'),
	(26, 'Tag ok', '2020-03-28 23:20:08', '2020-03-28 23:20:09');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Volcando estructura para tabla db_larablog_dev.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rol_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_stripe_id_index` (`stripe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_larablog_dev.users: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `rol_id`, `name`, `surname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
	(2, '1', 'nicols', 'aldana', 'nicolas53024@gmail.com', NULL, '$2y$10$U4BoZCET53QRwdtRz7Mzd.xMnqmHY6mcn5C18qu3mYAuXP5TSth9C', NULL, '2020-01-27 21:02:16', '2020-06-12 17:32:24', NULL, NULL, NULL, NULL),
	(3, '1', 'freddy', 'dfdfdf', 'nico@yopmail.com', NULL, '$2y$10$U4BoZCET53QRwdtRz7Mzd.xMnqmHY6mcn5C18qu3mYAuXP5TSth9C', NULL, '2020-01-28 16:07:03', '2020-06-12 17:31:33', 'cus_HMjEMRYsF1VcyO', NULL, NULL, NULL),
	(5, '2', 'prueba', 'prueba', 'nicolas53024@hotmail.com', NULL, '$2y$10$U4BoZCET53QRwdtRz7Mzd.xMnqmHY6mcn5C18qu3mYAuXP5TSth9C', NULL, '2020-01-28 18:47:41', '2020-01-28 22:24:56', NULL, NULL, NULL, NULL),
	(6, '1', 'chilindot', 'pilas', 'nn@vision.com', NULL, '$2y$10$ebfhnllg31KS6.CC8jCy3eVcxn7MY/cgNQVjm8sSILrpL0G8.hIq6', NULL, '2020-01-30 18:57:51', '2020-04-29 21:55:18', NULL, NULL, NULL, NULL),
	(7, '2', 'Maria', 'Castañeda', 'chilin@yopmail.com', NULL, '$2y$10$l5j/RIQ8RKQwlrV.Frx0SONTMMsSlc/V37/XXoVPj7TSQvIhcOg2O', NULL, '2020-02-03 23:45:24', '2020-02-03 23:45:24', NULL, NULL, NULL, NULL),
	(8, '1', 'Juan', 'perez', 'jj@email.co', NULL, '$2y$10$Prt0hb22RgiWcWcBfFLIyucPs.J5E3YxDFsxqEoafRQr8c45bUIGq', NULL, '2020-04-05 19:25:02', '2020-04-05 19:25:02', NULL, NULL, NULL, NULL),
	(12, '1', 'maria luisa', 'castañeda', 'mariluza875@gmail.com', NULL, '$2y$10$pF7AEsmzxshkibtOFpURre4orHrjO7LEEVOHCGmN.Pj42xiiv27Ba', NULL, '2020-04-05 21:54:30', '2020-04-05 21:54:30', NULL, NULL, NULL, NULL),
	(14, '1', 'martha', 'aldana', 'fredyn.aldanac@ecci.edu.co', NULL, '$2y$10$eLUunXBOQFqhHtYiPUKypeAUXvZNNIricAl8utM7AibC5s9vT1ZMu', NULL, '2020-04-05 22:02:05', '2020-04-05 22:02:05', NULL, NULL, NULL, NULL),
	(21, '2', 'paulina', 'perez', 'nnn@njdsnfjdks', NULL, '$2y$10$kxIAchUDEhCCIdCE4McHd.KdkNYDSsCC87delTW2yIRFhIeUsODLa', NULL, '2020-05-28 20:21:15', '2020-05-28 20:21:15', NULL, NULL, NULL, NULL),
	(22, '2', 'pedro', 'aldana', 'correo@gmail.com', NULL, '$2y$10$UcTiY4Bqsr9dxpPE5GeD/.TZfOFPWpzUUUorrBpDoxbAYiTHWjTOK', NULL, '2020-05-28 20:21:15', '2020-05-28 20:21:15', NULL, NULL, NULL, NULL),
	(23, '2', 'lorena', 'vanegas', 'lore@gmail.com', NULL, '$2y$10$mMunBM9kRfNy6CI9QeLumeeFsy8BkyA5qGhr.k7FL6x.dJbXIU7sK', NULL, '2020-05-28 20:21:15', '2020-05-28 20:21:15', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
