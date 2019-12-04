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
	(5, '2019_12_03_032451_add_user_id_to_posts', 1),
	(6, '2019_12_03_122519_add_cover_image_to_posts', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Dumping structure for table lsapp.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lsapp.password_resets: 0 rows
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


-- Dumping structure for table lsapp.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lsapp.posts: 2 rows
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
REPLACE INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
	(2, 'Facebook to allow transfer of photos, videos to Google Photos', '<p>Facebook Inc said on Monday it has introduced an option to transfer photos and videos from the social media network directly to other services, starting with Google Photos.</p>\r\n\r\n<p>The option will be available to users in Ireland, with a worldwide roll-out planned for the first half of 2020.</p>\r\n\r\n<p>All data transfers will be encrypted and users will be asked for a password before the transfer is initiated, the company said in a blog post.</p>\r\n\r\n<p>Facebook said in September it supports data portability and is planning to build new tools around it.</p>\r\n\r\n<p>United States Senators Josh Hawley, Mark Warner and Richard Blumenthal introduced a bill in late October that would require communications platforms with more than 100 million monthly active members to allow its users to easily move, or port, their data to another network.</p>', '2019-12-04 02:31:15', '2019-12-04 02:31:15', 1, '20191113-facebook_1575426675.jpg'),
	(3, '[Update: Galaxy S10] Samsung Galaxy Note 10 and Note 9 now receiving December 2019 security patch', '<p>The Samsung Galaxy Note 9 and Note 10 are now receiving the December 2019 security patch &mdash; ahead of the Google Pixel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Samsung is on a roll with updates recently, having started the public rollout of Android 10 for the Galaxy S10 already. Kudos to the Korean company for improving the speed of security updates. The OTA update is now heading out in over 25 European markets (via&nbsp;<em><a href="https://ww.9to5google.com/?load=aHR0cHM6Ly93d3cuc2FtbW9iaWxlLmNvbS9uZXdzL2dhbGF4eS1ub3RlLTEwLWFuZC1nYWxheHktbm90ZS05LWdldC1kZWNlbWJlci1zZWN1cml0eS11cGRhdGUv&amp;r=1">SamMobile</a></em>) for the duo of Note flagship devices.</p>\r\n\r\n<hr />\r\n<p>[<strong>Update 12/03</strong>]: The December 2019 security patch is now rolling out for the unlocked Galaxy S10 in the United States (via&nbsp;<em><a href="https://ww.9to5google.com/?load=aHR0cHM6Ly93d3cuc2FtbW9iaWxlLmNvbS9uZXdzL3VubG9ja2VkLWdhbGF4eS1zMTAtYTUwLWdldC1kZWNlbWJlci1zZWN1cml0eS11cGRhdGUtaW4tdXMv&amp;r=1">SamMobile</a></em>). The inherent differences between the Exynos and Snapdragon models mean that it often takes a little while before the US version (with the Snapdragon chipset) gets the same updates.</p>\r\n\r\n<p>Samsung seems to have put the pedal to the metal recently with updates and with the impending release of Android 10, this might have been another catalyst for the patch rolling out so soon. Be sure to head to Settings &gt; System updates.</p>\r\n\r\n<hr />\r\n<p>For those of you with the Galaxy Note 10, the firmware version&nbsp;<strong>N97*FXXS1ASKB&nbsp;</strong>is the build with the December 2019 security patch you&rsquo;ll be looking for. Alternatively, if you have the Galaxy Note 9 the firmware build you&rsquo;ll be awaiting is&nbsp;<strong>N960FXXS4CSK2</strong>&nbsp;&mdash; although the rollout has only been confirmed in Germany at present.</p>\r\n\r\n<p>We&rsquo;re hoping that the Note 10 does get the full Android 10 update in the coming weeks after the S10 and S10+ have already started getting the full OS upgrade in some regions. If this incremental security patch is any indication, we&rsquo;ll have a few weeks longer to wait for OneUI 2.0 on the latest Samsung flagship. That also lines up with the Android 10 roadmap that hints at a January 2020 release for the Note 10 &mdash; and late January 2020 for the Note 9.</p>\r\n\r\n<p>If you have received the December patch on your Galaxy Note 10 or Note 9, be sure to let us know down in the comments section below. Be sure to head to your device Settings &gt; System updates panel to check if you have the update waiting for your device.</p>', '2019-12-04 02:32:41', '2019-12-04 02:32:41', 1, 'samsung_galaxy_note_10_plus_18_1575426761.jpg');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lsapp.users: 1 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'rowen', 'growen@live.com', NULL, '$2y$10$M8QuNE.h3jz//RD16kkQN.oisN8ZkHKZq6/rutCdljZj9xCVS2tLm', NULL, '2019-12-04 02:07:11', '2019-12-04 02:07:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
