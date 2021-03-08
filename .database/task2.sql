-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for task2
CREATE DATABASE IF NOT EXISTS `task2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `task2`;

-- Dumping structure for table task2.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table task2.customers: ~20 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
REPLACE INTO `customers` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
	(1, 'Dr. Javon Schneider DVM', '922 Bradtke Field Apt. 197\nTobyberg, NY 79467-2445', '1-972-825-9812', 'tromp.leif@hotmail.com', '2021-03-08 02:50:31', '2021-03-08 02:50:31'),
	(2, 'Janae Reinger', '984 Jacobi Fall Suite 314\nWest Hildabury, MI 16468', '+1-463-300-7757', 'ohickle@yahoo.com', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(3, 'Clark O\'Hara', '32721 Altenwerth Extensions\nEast Romaine, NH 64041', '752-595-1774', 'nconroy@gmail.com', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(4, 'Mrs. Maryse Mueller', '821 Zane Lake\nLittleville, TX 98514', '+1.848.433.0741', 'fiona.murazik@gmail.com', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(5, 'Mr. Pablo Rogahn Jr.', '9567 Nitzsche Keys\nBeerfurt, CO 15645', '475-377-2490', 'stanton12@gmail.com', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(6, 'Elenor Ferry', '1973 Hintz Vista Apt. 268\nPort Adam, DE 23194', '+1 (434) 640-1201', 'emelie86@yahoo.com', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(7, 'Trey Bergstrom PhD', '15678 Vincenza Well\nSouth Drewtown, WA 86237', '+1-997-712-2750', 'rrau@gmail.com', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(8, 'Kiana Rowe', '93403 Greenfelder Spur Apt. 234\nUllrichfort, NV 17385', '+1.358.705.9390', 'juliet36@hotmail.com', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(9, 'Kelsie Daniel IV', '614 Herminio Walk\nNew Kasandra, ND 34519', '241-364-6940', 'nkirlin@hotmail.com', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(10, 'Sarai Weber', '56804 Kaycee Port Suite 717\nEast Tiara, WI 21954-5091', '405.893.9793', 'dameon48@gmail.com', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(11, 'Cindy Waters', '50200 Zechariah Estate\nPort Opal, NY 61024', '846-570-1668', 'piper.steuber@hotmail.com', '2021-03-08 02:50:37', '2021-03-08 02:50:37'),
	(12, 'Nicklaus Heidenreich', '39019 Heidenreich Motorway\nKylietown, TX 94877', '+1-482-295-1362', 'ilebsack@hotmail.com', '2021-03-08 02:50:37', '2021-03-08 02:50:37'),
	(13, 'Sylvia Jacobson DDS', '73301 Sauer Plain\nLake Keaton, RI 80144-2087', '737-847-1104', 'earline.hagenes@gmail.com', '2021-03-08 02:50:37', '2021-03-08 02:50:37'),
	(14, 'Odie Friesen', '2023 DuBuque Parkways\nSouth Abeview, VT 88992', '1-908-803-4524', 'harber.herminio@hotmail.com', '2021-03-08 02:50:37', '2021-03-08 02:50:37'),
	(15, 'Adalberto Yundt', '70279 Cara Plains\nWest Matteoshire, MT 18985-6209', '(890) 281-5117', 'narmstrong@gmail.com', '2021-03-08 02:50:37', '2021-03-08 02:50:37'),
	(16, 'Kamren Schaden', '6533 Jast Stream Suite 018\nSouth Alayna, MN 71513', '1-791-509-7576', 'nettie.rolfson@gmail.com', '2021-03-08 02:50:37', '2021-03-08 02:50:37'),
	(17, 'Brant Kautzer', '878 Dach Port\nLake Cathy, NJ 74440-7731', '1-971-954-9153', 'aida85@hotmail.com', '2021-03-08 02:50:37', '2021-03-08 02:50:37'),
	(18, 'Theron Friesen', '4344 Wilderman Overpass Suite 525\nErdmanborough, DE 12371', '347-399-4283', 'dfadel@hotmail.com', '2021-03-08 02:50:38', '2021-03-08 02:50:38'),
	(19, 'Ernestina Bogan', '6857 Alexane Walks\nLake Helmer, KS 48637', '+1-521-561-0926', 'hjacobs@yahoo.com', '2021-03-08 02:50:38', '2021-03-08 02:50:38'),
	(21, 'Kennedi Ratke', '6499 Cormier PlazaSheilastad, SC 66782-9708', '868-683-8276', 'fabiola.metz@hotmail.com', '2021-03-08 02:54:13', '2021-03-08 02:54:13');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table task2.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table task2.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table task2.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table task2.migrations: ~7 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2021_03_08_020834_create_customers_table', 1),
	(5, '2021_03_08_021552_create_products_table', 1),
	(6, '2021_03_08_030520_create_sales_orders_table', 2),
	(7, '2021_03_08_041600_create_orders_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table task2.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table task2.orders: ~1 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
REPLACE INTO `orders` (`id`, `customer_name`, `product_name`, `price`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
	(2, 'Dr. Javon Schneider DVM', 'deserunt', '2449072', '3', '7347216', '2021-03-08 04:26:30', '2021-03-08 04:27:32');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table task2.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table task2.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table task2.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table task2.products: ~20 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
REPLACE INTO `products` (`id`, `product_name`, `price`, `quantity`, `unit`, `created_at`, `updated_at`) VALUES
	(1, 'deserunt', '2449072', '31', 'quia', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(2, 'sequi', '3149218', '17', 'recusandae', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(3, 'non', '1135987', '78', 'quis', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(4, 'beatae', '72004', '35', 'reprehenderit', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(5, 'quis', '60781', '7', 'accusamus', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(6, 'quod', '1448985', '51', 'nihil', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(7, 'suscipit', '3267134', '13', 'quia', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(8, 'eum', '900875', '47', 'qui', '2021-03-08 02:50:32', '2021-03-08 02:50:32'),
	(9, 'rerum', '4257952', '54', 'id', '2021-03-08 02:50:33', '2021-03-08 02:50:33'),
	(10, 'non', '3122896', '70', 'nihil', '2021-03-08 02:50:33', '2021-03-08 02:50:33'),
	(11, 'dolor', '3825552', '62', 'quibusdam', '2021-03-08 02:50:38', '2021-03-08 02:50:38'),
	(12, 'iusto', '1938748', '41', 'aliquid', '2021-03-08 02:50:38', '2021-03-08 02:50:38'),
	(13, 'et', '1939568', '87', 'voluptates', '2021-03-08 02:50:38', '2021-03-08 02:50:38'),
	(14, 'blanditiis', '4150596', '66', 'cupiditate', '2021-03-08 02:50:38', '2021-03-08 02:50:38'),
	(15, 'sed', '2444283', '23', 'magni', '2021-03-08 02:50:38', '2021-03-08 02:50:38'),
	(16, 'quaerat', '3105652', '98', 'est', '2021-03-08 02:50:38', '2021-03-08 02:50:38'),
	(17, 'eius', '3792255', '60', 'ab', '2021-03-08 02:50:38', '2021-03-08 02:50:38'),
	(18, 'iste', '3852220', '57', 'sed', '2021-03-08 02:50:38', '2021-03-08 02:50:38'),
	(19, 'illum', '2152317', '48', 'ut', '2021-03-08 02:50:38', '2021-03-08 02:50:38'),
	(21, 'iures', '4251093', '86', 'odit', '2021-03-08 03:01:10', '2021-03-08 03:01:10');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table task2.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table task2.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Dena Herdiyani', 'denaherdiyani@gmail.com', NULL, '$2y$10$12lkqeXLUGuhoBdtntWdLOcYSQfRVaKU.g/FqVz1H2EoUeEE9C2K.', NULL, '2021-03-08 02:52:29', '2021-03-08 02:52:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
