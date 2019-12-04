-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.26 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for lsapp
CREATE DATABASE IF NOT EXISTS `lsapp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `lsapp`;


-- Dumping structure for table lsapp.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lsapp.failed_jobs: 0 rows
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;


-- Dumping structure for table lsapp.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lsapp.migrations: 6 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_02_094442_create_posts_table', 1),
	(5, '2019_12_03_032451_add_user_id_to_posts', 2),
	(6, '2019_12_03_122519_add_cover_image_to_posts', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Dumping structure for table lsapp.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lsapp.password_resets: 1 rows
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
REPLACE INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('growen@live.com', '$2y$10$FtcjdBHC0f8M5EKtfBm8K.ux8BIh0FgRqm3jwSbk4vN0AjVO0HkGm', '2019-12-03 03:20:43');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


-- Dumping structure for table lsapp.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lsapp.posts: 1 rows
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
REPLACE INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
	(4, 'Way klase, biyahe gikanselar', '<p>fdgfd</p>', '2019-12-03 03:08:32', '2019-12-03 13:14:43', 1, '60734119_1025300684342320_6186645432039374848_n_1575378883.jpg');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


-- Dumping structure for table lsapp.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lsapp.users: 2 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'rowen', 'growen@live.com', NULL, '$2y$10$eThl3bFuAS8IuMh9h1atl.VsLa0GlpgdMl0c.tyrcHg3MswAZw6iq', 'Oi2uiEjNAn9p5mZMuzfv1P1iLr3tIh8LdIujc1AHTx3u0DMKIXbwdYnAExZK', '2019-12-03 03:12:43', '2019-12-03 03:12:43'),
	(2, 'ronel', 'gronel@live.com', NULL, '$2y$10$9oOcKZ9rQeYG6wUnsg0THOWnz1boVu0poDkAmy5w6jtf.s3Sp07ai', NULL, '2019-12-03 06:08:05', '2019-12-03 06:08:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
