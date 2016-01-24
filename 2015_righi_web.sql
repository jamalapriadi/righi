-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 06, 2015 at 01:29 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `2015_righi_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `backend_access_log`
--

DROP TABLE IF EXISTS `backend_access_log`;
CREATE TABLE IF NOT EXISTS `backend_access_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', '2015-12-05 21:58:15', '2015-12-05 21:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users`
--

DROP TABLE IF EXISTS `backend_users`;
CREATE TABLE IF NOT EXISTS `backend_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_unique` (`login`),
  UNIQUE KEY `email_unique` (`email`),
  KEY `act_code_index` (`activation_code`),
  KEY `reset_code_index` (`reset_password_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `activated_at`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Jamal', 'Apriadi', 'admin', 'admin@righimarine.com', '$2y$10$V1KLxYqtMjm2fzowoSqVQ.KVJyCW/8SHnuX0fFdZ2Y.GV6GqwOweu', NULL, '$2y$10$Gsfr1FrNBq2EsVx5/9ryheGFYvZQLwVWt4J/ePISkhodcz/hdTGS2', NULL, '{"superuser":1}', 1, NULL, '2015-12-05 21:58:15', '2015-12-05 21:40:22', '2015-12-05 21:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users_groups`
--

DROP TABLE IF EXISTS `backend_users_groups`;
CREATE TABLE IF NOT EXISTS `backend_users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `user_group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_groups`
--

DROP TABLE IF EXISTS `backend_user_groups`;
CREATE TABLE IF NOT EXISTS `backend_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_unique` (`name`),
  KEY `code_index` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `permissions`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', NULL, '2015-12-05 21:40:22', '2015-12-05 21:40:22', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_preferences`
--

DROP TABLE IF EXISTS `backend_user_preferences`;
CREATE TABLE IF NOT EXISTS `backend_user_preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_throttle`
--

DROP TABLE IF EXISTS `backend_user_throttle`;
CREATE TABLE IF NOT EXISTS `backend_user_throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_user_throttle_user_id_index` (`user_id`),
  KEY `backend_user_throttle_ip_address_index` (`ip_address`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_data`
--

DROP TABLE IF EXISTS `cms_theme_data`;
CREATE TABLE IF NOT EXISTS `cms_theme_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `cms_theme_data_theme_index` (`theme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

DROP TABLE IF EXISTS `deferred_bindings`;
CREATE TABLE IF NOT EXISTS `deferred_bindings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `master_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `master_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slave_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slave_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `deferred_bindings_master_type_index` (`master_type`),
  KEY `deferred_bindings_master_field_index` (`master_field`),
  KEY `deferred_bindings_slave_type_index` (`slave_type`),
  KEY `deferred_bindings_slave_id_index` (`slave_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_10_01_000001_Db_Deferred_Bindings', 1),
('2013_10_01_000002_Db_System_Files', 1),
('2013_10_01_000003_Db_System_Plugin_Versions', 1),
('2013_10_01_000004_Db_System_Plugin_History', 1),
('2013_10_01_000005_Db_System_Settings', 1),
('2013_10_01_000006_Db_System_Parameters', 1),
('2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
('2013_10_01_000008_Db_System_Mail_Templates', 1),
('2013_10_01_000009_Db_System_Mail_Layouts', 1),
('2014_10_01_000010_Db_Jobs', 1),
('2014_10_01_000011_Db_System_Event_Logs', 1),
('2014_10_01_000012_Db_System_Request_Logs', 1),
('2014_10_01_000013_Db_System_Sessions', 1),
('2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
('2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
('2015_10_01_000016_Db_Cache', 1),
('2015_10_01_000017_Db_System_Revisions', 1),
('2015_10_01_000018_Db_FailedJobs', 1),
('2013_10_01_000001_Db_Backend_Users', 2),
('2013_10_01_000002_Db_Backend_User_Groups', 2),
('2013_10_01_000003_Db_Backend_Users_Groups', 2),
('2013_10_01_000004_Db_Backend_User_Throttle', 2),
('2014_01_04_000005_Db_Backend_User_Preferences', 2),
('2014_10_01_000006_Db_Backend_Access_Log', 2),
('2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
('2014_10_01_000001_Db_Cms_Theme_Data', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mohsin_magnificgallery_galleries`
--

DROP TABLE IF EXISTS `mohsin_magnificgallery_galleries`;
CREATE TABLE IF NOT EXISTS `mohsin_magnificgallery_galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_categories`
--

DROP TABLE IF EXISTS `rainlab_blog_categories`;
CREATE TABLE IF NOT EXISTS `rainlab_blog_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `rainlab_blog_categories_slug_index` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL, '2015-12-05 22:00:52', '2015-12-05 22:00:52'),
(2, 'About', 'about', NULL, NULL, '2015-12-05 22:10:15', '2015-12-05 22:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts`
--

DROP TABLE IF EXISTS `rainlab_blog_posts`;
CREATE TABLE IF NOT EXISTS `rainlab_blog_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content_html` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  KEY `rainlab_blog_posts_slug_index` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `published_at`, `published`, `created_at`, `updated_at`, `content_html`) VALUES
(1, 1, 'Terancam Blacklist Internasional, BNP2TKI Buat Aturan Baru Pelaut', 'terancam-blacklist-internasional', '', 'Ketua Badan Nasional Penempatan dan Perlindungan Tenaga Kerja Indonesia (BNP2TKI) Jumhur Hidayat mengatakan telah membuat aturan terkait pelindungan terhadap pelaut yang bekerja di kapal niaga dan kapal pesiar di luar negeri.\r\nHal ini dilakukan Indonesia sempat hampir masuk daftar hitam dunia internasional akibat tidak adanya perlindungan bagi tenaga kerja.\r\n\r\n"Dunia internasional tidak akan merekrut pelaut kita untuk bekerja. Bahkan, kapal-kapal kita terancam tidak akan dilayani, jika kita tidak meratifikasi Maritime Labor Convension," ujar Kepala BNP2TKI, Jumhur Hidayat di SCTV Tower, Senayan, Jakarta, Kamis (19/12/13).\r\n\r\nIa menjelaskan April lalu bekerja sama dengan Serikat Buruh Persatuan Pelaut Indonesia, pihak BNP2TKI meminta kepada pemerintah untuk segera mengeluarkan peraturan mengenai perlindungan terhadap pelaut Indonesia. Aturan yang dibuat antara lain peraturan tentang perekrutan pelaut.\r\n\r\n"Dead-linenya bulan Agustus lalu. Ya setidaknya walaupun belum ada undang-undangnya, tapi setidaknya kita sudah menunjukkan niat baik kalo kita mau dan akan melindungi para pelaut kita," tambah Jumhur.\r\n\r\nJumhur menambahkan bahwa peraturan yang telah dibuat kemudian disebarluaskan ke seluruh dunia.\r\n\r\n"Dulu, sebelum ada aturan ini, orang gampang banget mau jadi pelaut. Nggak karuanlah pokoknya," keluh Jumrah.\r\n\r\nSelain itu, Januari 2013 lalu BNP2TKI juga membuat peraturan terkait syarat-syarat perekrutan pelaut perikanan Indonesia.\r\n\r\n"Ini berdampak luar biasa. Karena sekarang ngga semua orang bisa jadi pelaut," pungkas Jumhur.\r\n\r\nIa menambahkan diharapkan dengan adanya aturan-aturan baru ini, kualitas para pekerja Indonesia akan lebih baik dan mereka akan merasa lebih terlindungi. (Adi)', '2015-12-05 17:00:00', 1, '2015-12-05 22:11:04', '2015-12-06 02:29:21', '<p>Ketua Badan Nasional Penempatan dan Perlindungan Tenaga Kerja Indonesia (BNP2TKI) Jumhur Hidayat mengatakan telah membuat aturan terkait pelindungan terhadap pelaut yang bekerja di kapal niaga dan kapal pesiar di luar negeri.\nHal ini dilakukan Indonesia sempat hampir masuk daftar hitam dunia internasional akibat tidak adanya perlindungan bagi tenaga kerja.</p>\n<p>&quot;Dunia internasional tidak akan merekrut pelaut kita untuk bekerja. Bahkan, kapal-kapal kita terancam tidak akan dilayani, jika kita tidak meratifikasi Maritime Labor Convension,&quot; ujar Kepala BNP2TKI, Jumhur Hidayat di SCTV Tower, Senayan, Jakarta, Kamis (19/12/13).</p>\n<p>Ia menjelaskan April lalu bekerja sama dengan Serikat Buruh Persatuan Pelaut Indonesia, pihak BNP2TKI meminta kepada pemerintah untuk segera mengeluarkan peraturan mengenai perlindungan terhadap pelaut Indonesia. Aturan yang dibuat antara lain peraturan tentang perekrutan pelaut.</p>\n<p>&quot;Dead-linenya bulan Agustus lalu. Ya setidaknya walaupun belum ada undang-undangnya, tapi setidaknya kita sudah menunjukkan niat baik kalo kita mau dan akan melindungi para pelaut kita,&quot; tambah Jumhur.</p>\n<p>Jumhur menambahkan bahwa peraturan yang telah dibuat kemudian disebarluaskan ke seluruh dunia.</p>\n<p>&quot;Dulu, sebelum ada aturan ini, orang gampang banget mau jadi pelaut. Nggak karuanlah pokoknya,&quot; keluh Jumrah.</p>\n<p>Selain itu, Januari 2013 lalu BNP2TKI juga membuat peraturan terkait syarat-syarat perekrutan pelaut perikanan Indonesia.</p>\n<p>&quot;Ini berdampak luar biasa. Karena sekarang ngga semua orang bisa jadi pelaut,&quot; pungkas Jumhur.</p>\n<p>Ia menambahkan diharapkan dengan adanya aturan-aturan baru ini, kualitas para pekerja Indonesia akan lebih baik dan mereka akan merasa lebih terlindungi. (Adi)</p>'),
(2, 1, 'Dalam Setahun, RI Cetak 1.000 Pelaut Kelas Dunia', 'dalam-setahun-ri-cetak-1000-pelaut-kelas-dunia', '', 'Sebagai negara maritim, Indonesia ternyata memiliki kemampuan untuk menghasilkan para pelaut-pelaut yang memiliki lisensi bertaraf Internasional. Dalam setahun, sebanyak 1.000 pelaut dicetak dari Sekolah Tinggi Ilmu Pelayaran (STIP) yang ada di seluruh Indonesia.\r\n\r\n"Kami telah menghasilkan sekitar 1.000 orang untuk perwira dari Departemen Perhubungan, padahal total kebutuhan pelaut dunia itu sekitar 7.000 orang per tahunnya," ungkapnya saat berbincang dengan Liputan6.com, yang ditulis, Sabtu (28/6/2014).\r\n\r\nSaat ini, STIP milik Departemen Perhubungan di Indonesia setidaknya terdapat 10 sekolah yang tersebar di enam kota yaitu Aceh, Makassar, Jakarta, Semarang, Surabaya dan Sorong.\r\n\r\nHanya saja, lanjut dia, dari 1000 lulusan yang mampu dihasilkan oleh Indonesia tersebut mayoritas bekerja untuk perusahaan-perusahaan luar negeri. "Selama ini pelaut alumni STIP banyak tersedot ke luar negeri, karena gaji lebih besar. Soalnya ijazah kita sudah standar internasional," jelas dia.\r\n\r\nDisparitas gaji antara bekerja di luar negeri dengan di dalam negeri, menurut Eko, disebabkan perusahaan pelayaran lokal kurang mampu bersaing. Untuk itu, dia berharap, ke depan Indonesia akan dapat menjadi pelopor industri pelayaran mengingat kondisi geografis Indonesia yang merupakan negara kepulauan.\r\n\r\n"Ked epan harapannya ya lebih banyak lagi industri pelayaran, sehingga tidak banyak terserap ke luar negeri," pungkas Eko. (Yas/Ndw)', '2015-12-05 17:00:00', 1, '2015-12-06 02:35:20', '2015-12-06 02:35:20', '<p>Sebagai negara maritim, Indonesia ternyata memiliki kemampuan untuk menghasilkan para pelaut-pelaut yang memiliki lisensi bertaraf Internasional. Dalam setahun, sebanyak 1.000 pelaut dicetak dari Sekolah Tinggi Ilmu Pelayaran (STIP) yang ada di seluruh Indonesia.</p>\n<p>&quot;Kami telah menghasilkan sekitar 1.000 orang untuk perwira dari Departemen Perhubungan, padahal total kebutuhan pelaut dunia itu sekitar 7.000 orang per tahunnya,&quot; ungkapnya saat berbincang dengan Liputan6.com, yang ditulis, Sabtu (28/6/2014).</p>\n<p>Saat ini, STIP milik Departemen Perhubungan di Indonesia setidaknya terdapat 10 sekolah yang tersebar di enam kota yaitu Aceh, Makassar, Jakarta, Semarang, Surabaya dan Sorong.</p>\n<p>Hanya saja, lanjut dia, dari 1000 lulusan yang mampu dihasilkan oleh Indonesia tersebut mayoritas bekerja untuk perusahaan-perusahaan luar negeri. &quot;Selama ini pelaut alumni STIP banyak tersedot ke luar negeri, karena gaji lebih besar. Soalnya ijazah kita sudah standar internasional,&quot; jelas dia.</p>\n<p>Disparitas gaji antara bekerja di luar negeri dengan di dalam negeri, menurut Eko, disebabkan perusahaan pelayaran lokal kurang mampu bersaing. Untuk itu, dia berharap, ke depan Indonesia akan dapat menjadi pelopor industri pelayaran mengingat kondisi geografis Indonesia yang merupakan negara kepulauan.</p>\n<p>&quot;Ked epan harapannya ya lebih banyak lagi industri pelayaran, sehingga tidak banyak terserap ke luar negeri,&quot; pungkas Eko. (Yas/Ndw)</p>');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts_categories`
--

DROP TABLE IF EXISTS `rainlab_blog_posts_categories`;
CREATE TABLE IF NOT EXISTS `rainlab_blog_posts_categories` (
  `post_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts_categories`
--

INSERT INTO `rainlab_blog_posts_categories` (`post_id`, `category_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_sitemap_definitions`
--

DROP TABLE IF EXISTS `rainlab_sitemap_definitions`;
CREATE TABLE IF NOT EXISTS `rainlab_sitemap_definitions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `rainlab_sitemap_definitions_theme_index` (`theme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_user_mail_blockers`
--

DROP TABLE IF EXISTS `rainlab_user_mail_blockers`;
CREATE TABLE IF NOT EXISTS `rainlab_user_mail_blockers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `rainlab_user_mail_blockers_email_index` (`email`),
  KEY `rainlab_user_mail_blockers_template_index` (`template`),
  KEY `rainlab_user_mail_blockers_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_event_logs`
--

DROP TABLE IF EXISTS `system_event_logs`;
CREATE TABLE IF NOT EXISTS `system_event_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `details` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `system_event_logs_level_index` (`level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'exception ''October\\Rain\\Exception\\SystemException'' with message ''Class name is not registered for the component "blogPosts". Check the component plugin.'' in /opt/lampp/htdocs/2015/righi2/modules/cms/classes/ComponentManager.php:200\nStack trace:\n#0 /opt/lampp/htdocs/2015/righi2/modules/cms/classes/Controller.php(1197): Cms\\Classes\\ComponentManager->makeComponent(''blogPosts'', Object(Cms5663c0c370206_1282760310Class), Array)\n#1 /opt/lampp/htdocs/2015/righi2/modules/cms/classes/Controller.php(555): Cms\\Classes\\Controller->addComponent(''blogPosts'', ''blogPosts'', Array)\n#2 /opt/lampp/htdocs/2015/righi2/modules/cms/classes/Controller.php(302): Cms\\Classes\\Controller->initComponents()\n#3 /opt/lampp/htdocs/2015/righi2/modules/cms/classes/Controller.php(208): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 /opt/lampp/htdocs/2015/righi2/modules/cms/classes/CmsController.php(47): Cms\\Classes\\Controller->run(''/'')\n#5 [internal function]: Cms\\Classes\\CmsController->run(''/'')\n#6 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(246): call_user_func_array(Array, Array)\n#7 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#8 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), ''run'')\n#9 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#10 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#11 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#13 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#15 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Cms\\Classes\\Cms...'', ''run'')\n#16 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#17 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#18 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#20 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#22 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#24 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#25 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#26 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#28 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#40 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#42 /opt/lampp/htdocs/2015/righi2/index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#43 {main}', NULL, '2015-12-05 21:59:47', '2015-12-05 21:59:47'),
(2, 'error', 'exception ''ErrorException'' with message ''Trying to get property of non-object'' in /opt/lampp/htdocs/2015/righi2/modules/cms/classes/CodeParser.php(189) : eval()''d code:6\nStack trace:\n#0 /opt/lampp/htdocs/2015/righi2/modules/cms/classes/CodeParser.php(189) : eval()''d code(6): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, ''Trying to get p...'', ''/opt/lampp/htdo...'', 6, Array)\n#1 /opt/lampp/htdocs/2015/righi2/modules/cms/classes/Controller.php(431): Cms5663c175d47ea_1594851644Class->onStart()\n#2 /opt/lampp/htdocs/2015/righi2/modules/cms/classes/Controller.php(350): Cms\\Classes\\Controller->execPageCycle()\n#3 /opt/lampp/htdocs/2015/righi2/modules/cms/classes/Controller.php(208): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 /opt/lampp/htdocs/2015/righi2/modules/cms/classes/CmsController.php(47): Cms\\Classes\\Controller->run(''/'')\n#5 [internal function]: Cms\\Classes\\CmsController->run(''/'')\n#6 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(246): call_user_func_array(Array, Array)\n#7 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#8 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), ''run'')\n#9 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#10 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#11 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#13 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#15 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Cms\\Classes\\Cms...'', ''run'')\n#16 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#17 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#18 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#20 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#22 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#24 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Routing/Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#25 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#26 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#28 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#40 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /opt/lampp/htdocs/2015/righi2/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#42 /opt/lampp/htdocs/2015/righi2/index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#43 {main}', NULL, '2015-12-05 22:02:45', '2015-12-05 22:02:45'),
(3, 'error', 'exception ''Symfony\\Component\\Debug\\Exception\\FatalErrorException'' with message ''Class ''Mohsin\\MagnificGallery\\Models\\Gallery'' not found'' in /opt/lampp/htdocs/2015/righi2/modules/cms/classes/CodeParser.php(189) : eval()''d code:5\nStack trace:\n#0 {main}', NULL, '2015-12-05 23:35:00', '2015-12-05 23:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

DROP TABLE IF EXISTS `system_files`;
CREATE TABLE IF NOT EXISTS `system_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `disk_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `system_files_field_index` (`field`),
  KEY `system_files_attachment_id_index` (`attachment_id`),
  KEY `system_files_attachment_type_index` (`attachment_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(2, '5663ffef24a20348215020.jpg', 'bnp2tki130224b.jpg', 25730, 'image/jpeg', NULL, NULL, 'featured_images', '1', 'RainLab\\Blog\\Models\\Post', 1, 2, '2015-12-06 02:29:19', '2015-12-06 02:29:21'),
(3, '5664013cef9e1951789296.jpg', 'Perwira-Pelaut-3-553x398.jpg', 71771, 'image/jpeg', NULL, NULL, 'featured_images', '2', 'RainLab\\Blog\\Models\\Post', 1, 3, '2015-12-06 02:34:52', '2015-12-06 02:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

DROP TABLE IF EXISTS `system_mail_layouts`;
CREATE TABLE IF NOT EXISTS `system_mail_layouts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `content_css` text COLLATE utf8_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'default', '<html>\n    <head>\n        <style type="text/css" media="screen">\n            {{ css|raw }}\n        </style>\n    </head>\n    <body>\n        {{ content|raw }}\n    </body>\n</html>', '{{ content|raw }}', 'a, a:hover {\n    text-decoration: none;\n    color: #0862A2;\n    font-weight: bold;\n}\n\ntd, tr, th, table {\n    padding: 0px;\n    margin: 0px;\n}\n\np {\n    margin: 10px 0;\n}', 1, '2015-12-05 21:40:22', '2015-12-05 21:40:22'),
(2, 'System', 'system', '<html>\n    <head>\n        <style type="text/css" media="screen">\n            {{ css|raw }}\n        </style>\n    </head>\n    <body>\n        {{ content|raw }}\n        <hr />\n        <p>This is an automatic message. Please do not reply to it.</p>\n    </body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', 'a, a:hover {\n    text-decoration: none;\n    color: #0862A2;\n    font-weight: bold;\n}\n\ntd, tr, th, table {\n    padding: 0px;\n    margin: 0px;\n}\n\np {\n    margin: 10px 0;\n}', 1, '2015-12-05 21:40:22', '2015-12-05 21:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

DROP TABLE IF EXISTS `system_mail_templates`;
CREATE TABLE IF NOT EXISTS `system_mail_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `system_mail_templates_layout_id_index` (`layout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

DROP TABLE IF EXISTS `system_parameters`;
CREATE TABLE IF NOT EXISTS `system_parameters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `item_index` (`namespace`,`group`,`item`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'core', 'hash', '"58bc8782b203c46e8df037c8d24bc14f"'),
(3, 'system', 'core', 'build', '"309"'),
(4, 'cms', 'theme', 'active', '"righi"');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_history`
--

DROP TABLE IF EXISTS `system_plugin_history`;
CREATE TABLE IF NOT EXISTS `system_plugin_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `system_plugin_history_code_index` (`code`),
  KEY `system_plugin_history_type_index` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=63 ;

--
-- Dumping data for table `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2015-12-05 22:00:49'),
(2, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2015-12-05 22:00:52'),
(3, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2015-12-05 22:00:52'),
(4, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2015-12-05 22:00:52'),
(5, 'RainLab.Blog', 'script', '1.0.2', 'create_posts_content_html.php', '2015-12-05 22:00:54'),
(6, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2015-12-05 22:00:54'),
(7, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2015-12-05 22:00:54'),
(8, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2015-12-05 22:00:54'),
(9, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2015-12-05 22:00:54'),
(10, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2015-12-05 22:00:54'),
(11, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2015-12-05 22:00:54'),
(12, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2015-12-05 22:00:54'),
(13, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2015-12-05 22:00:54'),
(14, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2015-12-05 22:00:54'),
(15, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate "idParam" component property in favour of "slug" property.', '2015-12-05 22:00:54'),
(16, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2015-12-05 22:00:55'),
(17, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2015-12-05 22:00:55'),
(18, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2015-12-05 22:00:55'),
(19, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2015-12-05 22:00:55'),
(20, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2015-12-05 22:00:55'),
(21, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2015-12-05 22:00:55'),
(22, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2015-12-05 22:00:55'),
(23, 'RainLab.Twitter', 'comment', '1.0.1', 'Initialize plugin.', '2015-12-05 22:09:11'),
(24, 'RainLab.Twitter', 'comment', '1.0.2', 'Adds Tweet Button, Follow Button, Embed Tweet and Embed Timeline components.', '2015-12-05 22:09:14'),
(25, 'RainLab.Twitter', 'comment', '1.0.3', 'Minor improvements to the code.', '2015-12-05 22:09:16'),
(26, 'RainLab.Sitemap', 'comment', '1.0.1', 'First version of Sitemap', '2015-12-05 22:09:50'),
(27, 'RainLab.Sitemap', 'script', '1.0.2', 'create_definitions_table.php', '2015-12-05 22:09:52'),
(28, 'RainLab.Sitemap', 'comment', '1.0.2', 'Create definitions table', '2015-12-05 22:09:52'),
(29, 'RainLab.Sitemap', 'comment', '1.0.3', 'Minor improvements to the code.', '2015-12-05 22:09:52'),
(30, 'RainLab.Sitemap', 'comment', '1.0.4', 'Fixes issue where correct headers not being sent.', '2015-12-05 22:09:52'),
(31, 'RainLab.Sitemap', 'comment', '1.0.5', 'Minor back-end styling fix.', '2015-12-05 22:09:52'),
(32, 'RainLab.Sitemap', 'comment', '1.0.6', 'Minor fix to internal API.', '2015-12-05 22:09:52'),
(33, 'RainLab.User', 'script', '1.0.1', 'create_users_table.php', '2015-12-05 22:16:34'),
(34, 'RainLab.User', 'script', '1.0.1', 'create_throttle_table.php', '2015-12-05 22:16:37'),
(35, 'RainLab.User', 'comment', '1.0.1', 'Initialize plugin.', '2015-12-05 22:16:37'),
(36, 'RainLab.User', 'comment', '1.0.2', 'Seed tables.', '2015-12-05 22:16:37'),
(37, 'RainLab.User', 'comment', '1.0.3', 'Translated hard-coded text to language strings.', '2015-12-05 22:16:37'),
(38, 'RainLab.User', 'comment', '1.0.4', 'Improvements to user-interface for Location manager.', '2015-12-05 22:16:37'),
(39, 'RainLab.User', 'comment', '1.0.5', 'Added contact details for users.', '2015-12-05 22:16:38'),
(40, 'RainLab.User', 'script', '1.0.6', 'create_mail_blockers_table.php', '2015-12-05 22:16:41'),
(41, 'RainLab.User', 'comment', '1.0.6', 'Added Mail Blocker utility so users can block specific mail templates.', '2015-12-05 22:16:41'),
(42, 'RainLab.User', 'comment', '1.0.7', 'Add back-end Settings page.', '2015-12-05 22:16:41'),
(43, 'RainLab.User', 'comment', '1.0.8', 'Updated the Settings page.', '2015-12-05 22:16:41'),
(44, 'RainLab.User', 'comment', '1.0.9', 'Adds new welcome mail message for users and administrators.', '2015-12-05 22:16:42'),
(45, 'RainLab.User', 'comment', '1.0.10', 'Adds administrator-only activation mode.', '2015-12-05 22:16:42'),
(46, 'RainLab.User', 'script', '1.0.11', 'users_add_login_column.php', '2015-12-05 22:16:46'),
(47, 'RainLab.User', 'comment', '1.0.11', 'Users now have an optional login field that defaults to the email field.', '2015-12-05 22:16:46'),
(48, 'RainLab.User', 'script', '1.0.12', 'users_rename_login_to_username.php', '2015-12-05 22:16:47'),
(49, 'RainLab.User', 'comment', '1.0.12', 'Create a dedicated setting for choosing the login mode.', '2015-12-05 22:16:47'),
(50, 'RainLab.User', 'comment', '1.0.13', 'Minor fix to the Account sign in logic.', '2015-12-05 22:16:47'),
(51, 'RainLab.User', 'comment', '1.0.14', 'Minor improvements to the code.', '2015-12-05 22:16:47'),
(52, 'RainLab.User', 'script', '1.0.15', 'users_add_surname.php', '2015-12-05 22:16:50'),
(53, 'RainLab.User', 'comment', '1.0.15', 'Adds last name column to users table (surname).', '2015-12-05 22:16:50'),
(54, 'RainLab.User', 'comment', '1.0.16', 'Require permissions for settings page too.', '2015-12-05 22:16:50'),
(55, 'RainLab.User', 'comment', '1.1.0', '!!! Profile fields and Locations have been removed.', '2015-12-05 22:16:51'),
(56, 'RainLab.User', 'script', '1.1.1', 'create_user_groups_table.php', '2015-12-05 22:16:53'),
(57, 'RainLab.User', 'script', '1.1.1', 'seed_user_groups_table.php', '2015-12-05 22:16:53'),
(58, 'RainLab.User', 'comment', '1.1.1', 'Users can now be added to groups.', '2015-12-05 22:16:54'),
(59, 'RainLab.User', 'comment', '1.1.2', 'A raw URL can now be passed as the redirect property in the Account component.', '2015-12-05 22:16:54'),
(60, 'Mohsin.MagnificGallery', 'script', '1.0.1', 'create_galleries_table.php', '2015-12-05 23:51:12'),
(61, 'Mohsin.MagnificGallery', 'comment', '1.0.1', 'Basic Gallery Plugin', '2015-12-05 23:51:12'),
(62, 'Mohsin.MagnificGallery', 'comment', '1.0.2', 'Added permissions', '2015-12-05 23:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

DROP TABLE IF EXISTS `system_plugin_versions`;
CREATE TABLE IF NOT EXISTS `system_plugin_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `system_plugin_versions_code_index` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'RainLab.Blog', '1.1.3', '2015-12-05 22:00:55', 0, 0),
(2, 'RainLab.Twitter', '1.0.3', '2015-12-05 22:09:16', 0, 0),
(3, 'RainLab.Sitemap', '1.0.6', '2015-12-05 22:09:52', 0, 0),
(4, 'RainLab.User', '1.1.2', '2015-12-05 22:16:54', 0, 0),
(5, 'Mohsin.MagnificGallery', '1.0.2', '2015-12-05 23:51:12', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_request_logs`
--

DROP TABLE IF EXISTS `system_request_logs`;
CREATE TABLE IF NOT EXISTS `system_request_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `system_request_logs`
--

INSERT INTO `system_request_logs` (`id`, `status_code`, `url`, `referer`, `count`, `created_at`, `updated_at`) VALUES
(1, 404, 'http://righimarine.dev/themes/righi/assets/img/berita/none.jpg', '["http:\\/\\/righimarine.dev\\/"]', 1, '2015-12-05 22:11:09', '2015-12-05 22:11:09'),
(2, 404, 'http://righimarine.dev/page.php', '["http:\\/\\/righimarine.dev\\/"]', 1, '2015-12-05 23:34:51', '2015-12-05 23:34:51'),
(3, 404, 'http://righimarine.dev/blog.php', '["http:\\/\\/righimarine.dev\\/"]', 2, '2015-12-05 23:34:56', '2015-12-06 02:21:48'),
(4, 404, 'http://righimarine.dev/favicon.ico', '["http:\\/\\/righimarine.dev\\/"]', 2, '2015-12-06 02:21:23', '2015-12-06 05:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `system_revisions`
--

DROP TABLE IF EXISTS `system_revisions`;
CREATE TABLE IF NOT EXISTS `system_revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  `new_value` text COLLATE utf8_unicode_ci,
  `revisionable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  KEY `system_revisions_user_id_index` (`user_id`),
  KEY `system_revisions_field_index` (`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

DROP TABLE IF EXISTS `system_settings`;
CREATE TABLE IF NOT EXISTS `system_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `system_settings_item_index` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_login_unique` (`username`),
  KEY `users_activation_code_index` (`activation_code`),
  KEY `users_reset_password_code_index` (`reset_password_code`),
  KEY `users_login_index` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `user_group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_groups_code_index` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sample group', 'sample', 'Sample group for website users.', '2015-12-05 22:16:53', '2015-12-05 22:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_throttle`
--

DROP TABLE IF EXISTS `user_throttle`;
CREATE TABLE IF NOT EXISTS `user_throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_throttle_user_id_index` (`user_id`),
  KEY `user_throttle_ip_address_index` (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
