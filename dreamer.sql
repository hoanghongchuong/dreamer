-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2017 at 10:49 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dreamer`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `alias`, `photo`, `mota`, `link`, `content`, `status`, `title`, `keyword`, `description`, `com`, `created_at`, `updated_at`) VALUES
(3, 5, NULL, '', '1484794077641-1387114.jpg', '<p>&nbsp;Bằng kh&aacute;t vọng ti&ecirc;n phong c&ugrave;ng chiến lược đầu tư ph&aacute;t triển bền vững, lấy Bất động sản v&agrave; Du lịch l&agrave;m lĩnh vực trọng t&acirc;m, VINGROUP phấn đấu trở th&agrave;nh Tập đo&agrave;n kinh tế đa ng&agrave;nh h&agrave;ng đầu Việt Nam v&agrave; khu vực; hướng đến ....</p>', NULL, '<p>&nbsp;</p>\r\n<div class=\"bwt_title_main\">\r\n<h2><a href=\"http://localhost/dreamer/backend/about/gioi-thieu.html\">Giới thiệu chung về tập đo&agrave;n Vingroup</a></h2>\r\n</div>\r\n<div class=\"field_work_short\">\r\n<p>Tập đo&agrave;n Vingroup - C&ocirc;ng ty CP (gọi tắt l&agrave; \"Tập đo&agrave;n Vingroup\"), tiền th&acirc;n l&agrave; Tập đo&agrave;n Technocom, được th&agrave;nh lập tại Ukraina năm 1993 bởi những người Việt Nam trẻ tuổi, hoạt động ban đầu trong lĩnh vực thực phẩm v&agrave; th&agrave;nh c&ocirc;ng rực rỡ với thương hiệu Mivina. Những năm đầu của thế kỷ 21, Technocom lu&ocirc;n c&oacute; mặt trong bảng xếp hạng Top 100 doanh nghiệp lớn mạnh nhất Ukraina. Từ năm 2000, Technocom - Vingroup trở về Việt Nam đầu tư với ước vọng được g&oacute;p phần x&acirc;y dựng đất nước.</p>\r\n</div>', 1, NULL, NULL, NULL, 'gioi-thieu', '2017-10-31 06:54:06', '2017-10-30 23:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`id`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, '1507946485_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN HẢI YẾN</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh Đống Đa</p>', '2017-10-14 02:01:25', '2017-10-13 19:01:25'),
(3, '1507946490_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN Ho&agrave;ng&nbsp;Hải</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh&nbsp;H&agrave; Nội</p>\r\n<p>&nbsp;</p>', '2017-10-14 02:01:30', '2017-10-13 19:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_content`
--

CREATE TABLE `banner_content` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `content` text CHARACTER SET utf8,
  `position` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_content`
--

INSERT INTO `banner_content` (`id`, `image`, `link`, `content`, `position`, `updated_at`, `created_at`) VALUES
(6, '1509526556_slider_1.jpg', NULL, NULL, 1, '2017-11-01 01:55:56', '2017-11-01 08:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `banner_position`
--

CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_position`
--

INSERT INTO `banner_position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '2017-09-20 08:29:24', '2017-09-20 01:29:24'),
(2, 'Tin tức', '2017-10-14 03:36:18', '2017-10-13 20:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `note` text,
  `status` tinyint(2) DEFAULT '0',
  `total` int(11) DEFAULT NULL,
  `detail` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `card_code` varchar(250) DEFAULT NULL,
  `payment` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `full_name`, `email`, `phone`, `address`, `province`, `district`, `note`, `status`, `total`, `detail`, `created_at`, `updated_at`, `card_code`, `payment`) VALUES
(1, 'Hoàng Hồng Chương', 'chuonghoanghong@gmail.com', '0987654321', 'Cầu Diễn, Từ Liêm, Hà Nội', '4', NULL, 'sdfs', 1, 15000000, '[{\"product_name\":\"Iphone 5 32GB\",\"product_numb\":\"5\",\"product_price\":3000000,\"product_img\":\"1507862089_shop-item-8.jpg\",\"product_code\":\"tsf3\"}]', '2017-10-25 02:12:25', '2017-10-24 19:12:25', NULL, 1),
(2, 'Hoàng Hồng Chương', 'chuong1194@yahoo.com', '09983292', NULL, NULL, NULL, 'sdfsdf', 0, 22000000, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m iphone 6 32GB\",\"product_numb\":\"6\",\"product_price\":2000000,\"product_img\":\"1508820259_upload_0dd04450f7694280ae3315e24e4256ce_large.jpg\",\"product_code\":null},{\"product_name\":\"HTC M8\",\"product_numb\":\"2\",\"product_price\":5000000,\"product_img\":\"1508820166_upload_f2b057cc8c454700a6cfd54fd6a27fc6_large.jpg\",\"product_code\":null}]', '2017-10-24 18:59:30', '2017-10-24 18:59:30', NULL, 0),
(4, 'Trần Văn A', 'admin@team.vn', '0987654321', 'Cầu Diễn, Từ Liêm, Hà Nội', NULL, NULL, 'sdasd', 3, 4000000, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m iphone 6 32GB\",\"product_numb\":\"2\",\"product_price\":2000000,\"product_img\":\"1508820259_upload_0dd04450f7694280ae3315e24e4256ce_large.jpg\",\"product_code\":null}]', '2017-10-25 02:12:37', '2017-10-24 19:12:37', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `campaign_type` int(2) DEFAULT NULL,
  `campaign_value` int(10) DEFAULT NULL,
  `campaign_expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `del_flg` int(1) NOT NULL DEFAULT '0',
  `card_numb` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `campaign_type`, `campaign_value`, `campaign_expired`, `created_at`, `updated_at`, `del_flg`, `card_numb`) VALUES
(1, 'Chào mừng giáng sinh', 1, 100000, '2017-09-30', '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0, 7),
(2, 'Chào thu', 2, 10, '2017-09-30', '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_cards`
--

CREATE TABLE `campaign_cards` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `card_code` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `del_flg` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_cards`
--

INSERT INTO `campaign_cards` (`id`, `campaign_id`, `card_code`, `is_active`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 1, 'hDXoOAI7BpxYJ', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(2, 1, 'FepHYPARhlTbe', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(3, 1, 'bpDe0nb31sZiN', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(4, 1, '0DK0VoB53JeJj', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(5, 1, 'hF3Ad1g7J411w', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(6, 1, '8PyZN6OTyAIwZ', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(7, 1, 'Zqy0atJII1nzS', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(8, 2, '3Qe06mci6qmMc', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(9, 2, 'vUrrWre9EN6iR', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(10, 2, 'IGzmLXBT9pDk5', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(11, 2, 'OXSiH6ooCzJj7', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chinhanh`
--

INSERT INTO `chinhanh` (`id`, `name`, `website`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Văn phòng Hà Nội', 'http://gco.vn/', '(04).32.033.033 - 32.026.026 - - 37.340.201', 'Tầng 2, tòa nhà Handico, Phạm Hùng, Nam Từ Liêm, Hà Nội', '2017-10-11 08:03:21', '2017-10-11 01:03:21'),
(2, 'Văn phòng đại diện', 'http://gco.vn/', '(04) - 38.36 00 88 – Fax: (04) – 38.36 00 88', 'Số 148 Nguyễn Thái Học, Điện Biên, Ba Đình, Hà Nội', '2017-10-11 08:03:26', '2017-10-11 01:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `content` text CHARACTER SET latin1,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `content`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Hoàng Hồng Chương', 'chuong1194@yahoo.com', NULL, 'dfs', 0, '2017-10-23 19:48:09', '2017-10-25 03:11:25'),
(4, 'Dislay', 'chuong1194@yahoo.com', NULL, 'jgj g', 1, '2017-10-25 02:09:31', '2017-10-25 03:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district_name` varchar(250) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `district_name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'Ba Đình', 4, '2017-09-24 18:03:47', '2017-09-24 18:03:47'),
(2, 'Từ Liêm', 4, '2017-09-24 18:04:29', '2017-09-24 18:04:29'),
(3, 'Hoàn Kiếm', 4, '2017-09-24 18:04:40', '2017-09-24 18:04:40'),
(4, 'Cầu giấy', 4, '2017-09-25 00:14:58', '2017-09-25 00:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `photo` text,
  `content` text,
  `position` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `photo`, `content`, `position`, `created_at`, `updated_at`) VALUES
(3, 'Trần Thu Trang', '1509500518_sec_feed_img_2.png', '<p>GCO lu&ocirc;n cố gắng chuẩn bị đầy đủ năng lực thực thi, nỗ lực hết m&igrave;nh để đảm bảo đ&uacute;ng v&agrave; cao hơn c&aacute;c cam kết của m&igrave;nh với kh&aacute;ch h&agrave;ng, đối t&aacute;c. Đặc biệt l&agrave; c&aacute;c cam kết về chất lượng sản phẩm - dịch vụ v&agrave; tiến độ thực hiện</p>', 'programer', '2017-11-01 01:41:58', '2017-10-31 18:41:58'),
(4, 'Adam levin', '1509500566_sec_feed_img_1.png', '<p>Vingroup lu&ocirc;n cố gắng chuẩn bị đầy đủ năng lực thực thi, nỗ lực hết m&igrave;nh để đảm bảo đ&uacute;ng v&agrave; cao hơn c&aacute;c cam kết của m&igrave;nh với kh&aacute;ch h&agrave;ng, đối t&aacute;c; đặc biệt l&agrave; c&aacute;c cam kết về chất lượng sản phẩm &ndash; dịch vụ v&agrave; tiến độ thực hiện.</p>', 'telesale', '2017-10-31 18:42:46', '2017-10-31 18:42:46'),
(5, 'super women', '1509500688_sec_feed_img_3.png', '<p>Vingroup lu&ocirc;n cố gắng chuẩn bị đầy đủ năng lực thực thi, nỗ lực hết m&igrave;nh</p>', 'Human resource', '2017-11-01 01:51:59', '2017-10-31 18:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_copy`
--

CREATE TABLE `feedback_copy` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `photo` text,
  `content` text,
  `position` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback_copy`
--

INSERT INTO `feedback_copy` (`id`, `name`, `photo`, `content`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Hoàng Hồng Chương', NULL, '<p>sfd s fsfd&nbsp;</p>', 'programer', '2017-10-31 03:25:19', '2017-10-31 03:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `name`, `alias`, `photo`, `status`, `image_path`, `alt`, `stt`, `created_at`, `updated_at`) VALUES
(1, 16, NULL, NULL, '1502966468_noithatnhaodep4.png', 1, NULL, NULL, 0, '2017-08-17 10:41:08', '0000-00-00 00:00:00'),
(38, 10, NULL, NULL, '1508820503_s15_grande.jpg', 1, NULL, NULL, 0, '2017-10-24 04:48:23', '2017-10-24 04:48:23'),
(58, 3, NULL, NULL, '1509507737_7-ly-do-nen-song-tai-vinhomes-riverside-ha-noi.jpg', 1, NULL, NULL, 0, '2017-11-01 03:42:17', '2017-11-01 03:42:17'),
(49, 4, NULL, NULL, '1508904849_s14_grande.jpg', 1, NULL, NULL, 0, '2017-10-25 04:14:09', '2017-10-25 04:14:09'),
(41, 2, NULL, NULL, '1508833231_upload_672c44d63b054b43a5f13d115d00b7b3_large.jpg', 1, NULL, NULL, 0, '2017-10-24 08:20:31', '2017-10-24 08:20:31'),
(31, 19, NULL, NULL, '1508820113_upload_f4d6260f9c484471ad30d72b2fd83770_large.jpg', 1, NULL, NULL, 0, '2017-10-24 04:41:53', '2017-10-24 04:41:53'),
(32, 18, NULL, NULL, '1508820166_upload_ec9e16203b47424a9a23e50fc8f635fc_large.jpg', 1, NULL, NULL, 0, '2017-10-24 04:42:46', '2017-10-24 04:42:46'),
(33, 17, NULL, NULL, '1508820232_upload_8b188104973f48069b553981cc9ec8a7_large.jpg', 1, NULL, NULL, 0, '2017-10-24 04:43:52', '2017-10-24 04:43:52'),
(44, 14, NULL, NULL, '1508835497_upload_5497d21a25894f40801e62c4a8f5db8d_large.jpg', 1, NULL, NULL, 0, '2017-10-24 08:58:17', '2017-10-24 08:58:17'),
(36, 11, NULL, NULL, '1508820394_s13_grande.gif', 1, NULL, NULL, 0, '2017-10-24 04:46:34', '2017-10-24 04:46:34'),
(45, 14, NULL, NULL, '1508835519_upload_2f6808d9cef247a4820a52b5a90b9966_small.jpg', 1, NULL, NULL, 0, '2017-10-24 08:58:39', '2017-10-24 08:58:39'),
(43, 14, NULL, NULL, '1508835441_upload_1e458a04950e4df28ee4546f2eecfeae_small.jpg', 1, NULL, NULL, 0, '2017-10-24 08:57:21', '2017-10-24 08:57:21'),
(53, 4, NULL, NULL, '1509071301_s12_grande.jpg', 1, NULL, NULL, 0, '2017-10-27 02:28:21', '2017-10-27 02:28:21'),
(54, 4, NULL, NULL, '1509071301_s13_grande.gif', 1, NULL, NULL, 0, '2017-10-27 02:28:21', '2017-10-27 02:28:21'),
(55, 4, NULL, NULL, '1509071324_s12_grande.jpg', 1, NULL, NULL, 0, '2017-10-27 02:28:44', '2017-10-27 02:28:44'),
(56, 4, NULL, NULL, '1509071324_s13_grande.gif', 1, NULL, NULL, 0, '2017-10-27 02:28:44', '2017-10-27 02:28:44'),
(57, 10, NULL, NULL, '1509071509_s14_grande.jpg', 1, NULL, NULL, 0, '2017-10-27 02:31:49', '2017-10-27 02:31:49'),
(59, 3, NULL, NULL, '1509507737_8.jpg', 1, NULL, NULL, 0, '2017-11-01 03:42:17', '2017-11-01 03:42:17'),
(60, 3, NULL, NULL, '1509507737_14.jpg', 1, NULL, NULL, 0, '2017-11-01 03:42:17', '2017-11-01 03:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(4, 5, 'Slider 1', NULL, '1503972273_banner.png', NULL, NULL, 1, 0, 'slider', 1, '2017-08-29 02:04:33', '2017-08-28 19:04:33'),
(5, 5, 'Slider 2', 'http://gco.vn/', '1503972281_banner.png', NULL, NULL, 1, 0, 'slider', 2, '2017-08-29 02:04:41', '2017-08-28 19:04:41'),
(8, 5, 'Chị Thanh Lam', NULL, '1504774299_relation-3.png', NULL, NULL, 1, 0, 'cam-nhan', 1, '2017-09-07 08:51:40', '2017-09-07 01:51:40'),
(9, 5, 'Chị Lê Thu Thủy', 'http://gco.vn/', '1504774309_relation-4.png', NULL, NULL, 1, 0, 'cam-nhan', 2, '2017-09-07 08:51:49', '2017-09-07 01:51:49'),
(10, 5, 'Chị Khánh Ngọc', NULL, '1504774321_relation-1.png', NULL, NULL, 1, 0, 'cam-nhan', 3, '2017-09-07 08:52:01', '2017-09-07 01:52:01'),
(11, 5, 'Anh Tuấn Lâm Nhã', NULL, '1504774330_relation-2.png', NULL, NULL, 1, 0, 'cam-nhan', 4, '2017-09-07 08:52:10', '2017-09-07 01:52:10'),
(45, 5, 'right sidebar', NULL, '1505460187_qc.png', NULL, NULL, 1, 0, 'chuyen-muc', 1, '2017-09-15 00:23:07', '2017-09-15 00:23:07'),
(16, 5, 'Chi nhánh Hà Nội', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782745_bv3.jpg', 'Số 65 Cửa Bắc, Phường Trúc Bạch, Quận Ba Đình', '<p>X&atilde; Trưng Trắc, Huyện Văn L&acirc;m, Tỉnh Hưng Y&ecirc;n&nbsp;<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;<br />Email: chauhungjsc@hn.vnn.vn</p>', 1, 0, 'chi-nhanh', 1, '2017-09-05 09:34:50', '2017-09-05 02:34:50'),
(17, 5, 'Chi nhánh HCM', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782773_bv1.jpg', '85 Nguyễn Thị Thập(Khu dân cư Himlam, Phường Tân Hưng) Quận 7', '<p>144 Khuất Duy Tiến, P. Nh&acirc;n Ch&iacute;nh, Q. Thanh Xu&acirc;n, HN<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;</p>', 1, 0, 'chi-nhanh', 2, '2017-09-05 09:35:59', '2017-09-05 02:35:59'),
(25, 5, 'Đối tác 1', 'http://gco.vn/', '1503974583_dt3.png', NULL, NULL, 1, 0, 'doi-tac', 1, '2017-08-28 19:43:03', '2017-08-28 19:43:03'),
(26, 5, 'Đối tác 2', NULL, '1503974601_dt2.png', NULL, NULL, 1, 0, 'doi-tac', 2, '2017-08-28 19:43:21', '2017-08-28 19:43:21'),
(27, 5, 'Đối tác 3', NULL, '1503974611_dt4.png', NULL, NULL, 1, 0, 'doi-tac', 3, '2017-08-28 19:43:31', '2017-08-28 19:43:31'),
(28, 5, 'Đối tác 4', NULL, '1503974620_dt1.png', NULL, NULL, 1, 0, 'doi-tac', 4, '2017-08-28 19:43:40', '2017-08-28 19:43:40'),
(29, 5, 'Đối tác 5', 'http://gco.vn/', '1503974634_dt5.png', NULL, NULL, 1, 0, 'doi-tac', 5, '2017-08-28 19:43:54', '2017-08-28 19:43:54'),
(35, 5, 'Hình 1', 'http://gco.vn/', '1504230555_1.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2017-08-31 18:49:15', '2017-08-31 18:49:15'),
(36, 5, 'Hình ảnh 2', NULL, '1504230566_2.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2017-08-31 18:49:26', '2017-08-31 18:49:26'),
(38, 5, 'Tiêu chí 1', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 1, '2017-09-05 03:05:01', '2017-09-05 03:05:01'),
(39, 5, 'Tiêu chí 2', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 2, '2017-09-05 03:05:10', '2017-09-05 03:05:10'),
(40, 5, 'Tiêu chí 3', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 3, '2017-09-05 03:05:22', '2017-09-05 03:05:22'),
(41, 5, 'Tiêu chí 4', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 4, '2017-09-05 03:05:31', '2017-09-05 03:05:31'),
(46, 5, 'banner quảng cáo trang tin tức', 'http://gco.vn/', '1505460335_thumb2.png', NULL, NULL, 1, 0, 'chuyen-muc', 2, '2017-09-15 00:25:35', '2017-09-15 00:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `alias`, `photo`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(3, 'Trang chủ', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 1, '2017-08-24 04:42:40', '2017-08-23 21:42:40'),
(2, 'Giới thiệu', 'gioi-thieu', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 2, '2017-09-01 01:33:58', '2017-08-31 18:33:58'),
(12, 'Sản phẩm', 'san-pham', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 3, '2017-09-01 01:34:21', '2017-08-31 18:34:21'),
(13, 'Tin tức', 'tin-tuc', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 4, '2017-08-24 04:17:41', '2017-08-23 21:17:41'),
(14, 'Liên hệ', 'lien-he', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 5, '2017-08-24 04:17:32', '2017-08-23 21:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `noibat` int(11) DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `alias`, `photo`, `background`, `mota`, `content`, `status`, `noibat`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 0, 5, 'Tin tức 1', 'tin-tuc-1', '1507711266_news-list-5.jpg', '', 'Với mong muốn đem đến cho thị trường những sản phẩm - dịch vụ theo tiêu chuẩn quốc tế và những trải nghiệm hoàn toàn mới về phong cách sống hiện đại', NULL, 1, 1, NULL, NULL, NULL, 'tin-tuc', 1, '2017-10-31 04:18:50', '2017-10-30 21:18:50'),
(2, 0, 5, 'Tin tức 3', 'tin-tuc-3', '1507711257_news-list-3.jpg', '', 'sf sf s', NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2017-10-31 04:17:34', '2017-10-30 21:17:34'),
(3, 0, 5, 'Những chiếc smartphone  chụp ảnh đẹp nhất năm 2017', 'nhung-chiec-smartphone-chup-anh-dep-nhat-nam-2017', '1507711099_news-list-1.jpg', '', 'Với mong muốn đem đến cho thị trường những sản phẩm - dịch vụ theo tiêu chuẩn quốc tế và những trải nghiệm hoàn toàn mới về phong cách sống hiện đại', NULL, 1, 1, NULL, NULL, NULL, 'tin-tuc', 3, '2017-10-31 04:18:35', '2017-10-30 21:18:35'),
(4, 0, 5, 'Lễ ra mắt sony xperia', 'le-ra-mat-sony-xperia', '1509528579_anh-1-lauu.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 4, '2017-11-01 09:29:39', '2017-11-01 02:29:39'),
(5, 0, 5, 'Lễ ra mắt Iphone 8', 'le-ra-mat-iphone-8', '1509528561_untitled-2.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 5, '2017-11-01 09:29:21', '2017-11-01 02:29:21'),
(6, 0, 5, 'Lễ ra mắt Galaxy s8', 'le-ra-mat-galaxy-s8', '1509528571_untitled-5.jpg', '', 'Với mong muốn đem đến cho thị trường những sản phẩm - dịch vụ theo tiêu chuẩn quốc tế và những trải nghiệm hoàn toàn mới về phong cách sống hiện đại', '<p class=\"the-article-summary cms-desc\">Bản S8+ c&oacute; gi&aacute; 20,49 triệu đồng. Như vậy, gi&aacute; b&aacute;n của m&aacute;y thấp hơn 500.000 đồng so với gi&aacute; dự kiến của c&aacute;c nh&agrave; b&aacute;n lẻ.</p>\r\n<div class=\"the-article-body cms-body\">\r\n<p>Sau sự kiện ra mắt ho&agrave;nh tr&aacute;ng cuối th&aacute;ng 3, Samsung Galaxy S8 v&agrave; S8+ sẽ ch&iacute;nh thức cập bến thị trường Việt Nam ng&agrave;y 19/4. Sự kiện được tổ chức tại TP.HCM với một s&acirc;n khấu lớn được gọi l&agrave; \"s&acirc;n khấu v&ocirc; cực\".</p>\r\n<p>M&agrave;n h&igrave;nh v&ocirc; cực (Infinity Display) cũng l&agrave; điểm nhấn đ&aacute;ng ch&uacute; &yacute; nhất tr&ecirc;n sản phẩm mới từ Samsung. Với thiết kế n&agrave;y, h&atilde;ng c&oacute; thể tạo ra những chiếc smartphone m&agrave;n h&igrave;nh si&ecirc;u lớn (lần lượt 5,8 inch v&agrave; 6,2 inch) nhưng vẫn đảm bảo k&iacute;ch thước nhỏ gọn, theo &ocirc;ng L&ecirc; Kh&ocirc;i Nguy&ecirc;n, Gi&aacute;m đốc chiến lược ng&agrave;nh h&agrave;ng Samsung.</p>\r\n<p>Camera của S8 giữ nguy&ecirc;n độ ph&acirc;n giải so với thế hệ trước nhưng được tinh chỉnh về phần mềm, cho tốc độ chụp nhanh hơn, hỗ trợ chỉnh sửa tốt hơn. Camera n&agrave;y c&oacute; độ ph&acirc;n giải 12 megapixel, khẩu độ f/1.7. Trong khi đ&oacute;, camera trước của m&aacute;y c&oacute; độ ph&acirc;n giải 8 megapixel, hỗ trợ lấy n&eacute;t tự động.</p>\r\n<p>Galaxy S8 v&agrave; S8+ hỗ trợ chuẩn chống nước IP68, d&ugrave;ng vi xử l&yacute; kiến tr&uacute;c 10 nm. Galaxy S8 c&oacute; gi&aacute; b&aacute;n 18,49 triệu đồng, S8+ gi&aacute; 20,49 triệu đồng với 3 m&agrave;u gồm đen huyền b&iacute;, v&agrave;ng hổ ph&aacute;ch, xanh san h&ocirc;. M&aacute;y l&ecirc;n kệ từ ng&agrave;y 5/5.</p>\r\n<p>Dưới đ&acirc;y l&agrave; diễn biến sự kiện:</p>\r\n<div id=\"livestream-2319\" class=\"\" data-choice=\"featured\">\r\n<div class=\"controller\"><a class=\"btnFeatured tooltipstered active\" href=\"https://news.zing.vn/galaxy-s8-ra-mat-tai-viet-nam-voi-gia-18-49-trieu-len-ke-ngay-55-post739065.html#featured\" data-choice=\"featured\"><strong>13</strong></a><a class=\"btnImage tooltipstered\" href=\"https://news.zing.vn/galaxy-s8-ra-mat-tai-viet-nam-voi-gia-18-49-trieu-len-ke-ngay-55-post739065.html#image\" data-choice=\"image\"><strong>18</strong></a><a class=\"btnVideo tooltipstered\" href=\"https://news.zing.vn/galaxy-s8-ra-mat-tai-viet-nam-voi-gia-18-49-trieu-len-ke-ngay-55-post739065.html#video\" data-choice=\"video\"><strong>1</strong></a><a class=\"btnSocial tooltipstered\" href=\"https://news.zing.vn/galaxy-s8-ra-mat-tai-viet-nam-voi-gia-18-49-trieu-len-ke-ngay-55-post739065.html#video\" data-choice=\"social\"><strong>3</strong></a></div>\r\n<div class=\"message ending\"><strong>Sự kiện đ&atilde; kết th&uacute;c.</strong>&nbsp;C&aacute;c nội dung quan trọng được t&oacute;m tắt b&ecirc;n dưới. Nhấn v&agrave;o c&aacute;c lựa chọn để xem đầy đủ.</div>\r\n<ul class=\"events\">\r\n<li id=\"112964\" class=\"comment featured picture\">\r\n<div class=\"event\">\r\n<div class=\"event-content\"><time datetime=\"2017-04-19 14:21+0700\">14:21 19/04</time>\r\n<p>H&agrave;ng trăm kh&aacute;ch mời v&agrave; người nổi tiếng c&oacute; mặt b&ecirc;n ngo&agrave;i kh&aacute;n ph&ograve;ng ở Gem Center chuẩn bị cho sự kiện ra mắt Galaxy S8. Đ&acirc;y l&agrave; lễ ra mắt lớn nhất của Samsung trong nhiều năm trở lại đ&acirc;y. Họ mời gần 100 người nổi tiếng c&ugrave;ng h&agrave;ng trăm ph&oacute;ng vi&ecirc;n, đối t&aacute;c b&aacute;n lẻ tham gia sự kiện.</p>\r\n<table class=\"picture\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"pic\"><img src=\"https://znews-photo-td.zadn.vn/w660/Uploaded/mzdyv/2017_04_19/57Samsung_Galaxy_S8_VietNam_zing.JPG\" alt=\"Galaxy S8 ra mat tai Viet Nam voi gia 18,49 trieu, len ke ngay 5/5 hinh anh 1\" width=\"1620\" height=\"1080\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"picture\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"pic\"><img src=\"https://znews-photo-td.zadn.vn/w660/Uploaded/mzdyv/2017_04_19/65Samsung_Galaxy_S8_VietNam_zing.JPG\" alt=\"Galaxy S8 ra mat tai Viet Nam voi gia 18,49 trieu, len ke ngay 5/5 hinh anh 2\" width=\"1620\" height=\"1080\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</li>\r\n<li id=\"112966\" class=\"comment featured\">\r\n<div class=\"event\">\r\n<div class=\"event-content\"><time datetime=\"2017-04-19 14:24+0700\">14:24 19/04</time>\r\n<p>Bộ đ&ocirc;i Galaxy S8 v&agrave; S8+ ch&iacute;nh thức ra mắt thị trường quốc tế ng&agrave;y 29/3. Điểm nổi bật của sản phẩm ch&iacute;nh l&agrave; m&agrave;n h&igrave;nh v&ocirc; cực (Infinity Display) với thiết kế tr&agrave;n viền. Model n&agrave;y cũng trang bị cấu h&igrave;nh mạnh mẽ nhất hiện nay c&ugrave;ng camera cải tiến so với thế hệ trước.</p>\r\n</div>\r\n</div>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>', 1, 1, NULL, NULL, NULL, 'tin-tuc', 6, '2017-11-01 09:29:31', '2017-11-01 02:29:31'),
(10, 0, 5, 'Phát triển bền vững', 'phat-trien-ben-vung', '1509529615_img2.jpg', '', NULL, '<div class=\"bwt_title_main\">\r\n<h2><a>Kh&aacute;t vọng ti&ecirc;n phong</a></h2>\r\n</div>\r\n<div class=\"field_work_short\">\r\n<p>Với mong muốn đem đến cho thị trường những sản phẩm - dịch vụ theo ti&ecirc;u chuẩn quốc tế v&agrave; những trải nghiệm ho&agrave;n to&agrave;n mới về phong c&aacute;ch sống hiện đại, ở bất cứ lĩnh vực n&agrave;o cũng chứng tỏ vai tr&ograve; ti&ecirc;n phong, dẫn dắt sự thay đổi xu hướng ti&ecirc;u d&ugrave;ng. Ch&uacute;ng t&ocirc;i đ&atilde; l&agrave;m n&ecirc;n những điều kỳ diệu để t&ocirc;n vinh thương hiệu Việt v&agrave; tự h&agrave;o l&agrave; một trong những Tập đo&agrave;nkinh tế tư nh&acirc;n h&agrave;ng đầu Việt Nam.</p>\r\n</div>', 1, 0, NULL, NULL, NULL, 'phat-trien', 1, '2017-11-01 02:46:55', '2017-11-01 02:46:55'),
(8, 0, 5, 'Tin tuyển dụng 1', 'tin-tuyen-dung-1', '1507947364_home-item-1.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tuyen-dung', 1, '2017-10-14 02:20:41', '2017-10-13 19:16:04'),
(9, 0, 5, 'tin tuyen dụng hot', 'tin-tuyen-dung-hot', '1507947598_home-cate-2.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tuyen-dung', 2, '2017-10-14 02:20:47', '2017-10-13 19:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `user_id`, `name`, `link`, `email`, `phone`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(45, 0, NULL, NULL, 'chuonghoanghong@gmail.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2017-10-24 19:52:53', '2017-10-24 19:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `alias`, `photo`, `mota`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `background`, `updated_at`) VALUES
(3, 'Tin nội bộ', 'tin-noi-bo', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2017-08-07 21:52:19', NULL, '2017-08-08 00:13:28'),
(2, 'Tin thế giới', 'tin-the-gioi', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 1, '2017-08-07 21:36:29', NULL, '2017-08-08 00:13:31'),
(13, 'Cách thức thanh toán', 'cach-thuc-thanh-toan', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'bai-viet', 1, '2017-08-29 04:05:32', NULL, '2017-08-28 21:05:32'),
(14, 'Quy định mua hàng', 'quy-dinh-mua-hang', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'bai-viet', 2, '2017-08-29 04:05:44', NULL, '2017-08-28 21:05:44'),
(20, 'Không gian phòng ngủ', 'khong-gian-phong-ngu', '1504077747_1_19.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 1, '2017-08-30 07:48:00', NULL, '2017-08-30 00:48:00'),
(21, 'Không gian phòng khách', 'khong-gian-phong-khach', '1504078021_1_20.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 2, '2017-08-30 07:48:07', NULL, '2017-08-30 00:48:07'),
(22, 'Phòng bếp hiện đại', 'phong-bep-hien-dai', '1504078039_1_21.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 3, '2017-08-30 07:48:12', NULL, '2017-08-30 00:48:12'),
(23, 'Phòng ngủ châu âu', 'phong-ngu-chau-au', '1504078067_1_20.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 4, '2017-08-30 07:48:18', NULL, '2017-08-30 00:48:18'),
(31, 'Sản phẩm khác', 'san-pham-khac', '1505465773_sv3.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 3, '2017-09-15 09:49:21', '1505468961_dv4.png', '2017-09-15 02:49:21'),
(30, 'Canxi nano', 'canxi-nano', '1505465758_sv2.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 2, '2017-09-15 09:48:41', '1505468921_dv3.png', '2017-09-15 02:48:41'),
(29, 'Sản phẩm bảo vệ sức khỏe', 'san-pham-bao-ve-suc-khoe', '1505465729_sv1.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 1, '2017-09-16 04:14:59', '1505468944_dv4.png', '2017-09-15 21:14:59'),
(33, 'Sản phẩm mới nhập', 'san-pham-moi-nhap', '', NULL, 0, 0, 0, NULL, NULL, NULL, 'dich-vu', 4, '2017-09-18 01:49:43', '', '2017-09-17 18:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `hoten` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` text COLLATE utf8_unicode_ci NOT NULL,
  `totalprice` int(11) NOT NULL,
  `tonggia` int(11) NOT NULL,
  `donhang` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `tinhtrang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `com` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `name`, `url`, `photo`, `desc`, `com`, `content`, `status`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, '1509416934_brand_2.png', NULL, 'doi-tac', NULL, 0, '2017-10-30 19:19:11', '2017-10-30 19:28:54'),
(5, NULL, NULL, '1509417351_brand_1.png', NULL, 'doi-tac', NULL, 1, '2017-10-30 19:35:51', '2017-10-30 19:35:51'),
(6, NULL, NULL, '1509417362_brand_3.png', NULL, 'doi-tac', NULL, 1, '2017-10-30 19:36:02', '2017-10-30 19:36:02'),
(7, NULL, NULL, '1509417370_brand_4.png', NULL, 'doi-tac', NULL, 1, '2017-10-30 19:36:10', '2017-10-30 19:36:10'),
(8, NULL, NULL, '1509417382_brand_5.png', NULL, 'doi-tac', NULL, 1, '2017-10-30 19:36:22', '2017-10-30 19:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `thuonghieu_id` int(11) DEFAULT NULL,
  `code` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) DEFAULT '0',
  `price_old` int(11) DEFAULT '0',
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `thuonghieu` text COLLATE utf8_unicode_ci,
  `tinhtrang` int(11) NOT NULL DEFAULT '1',
  `baohanh` text COLLATE utf8_unicode_ci,
  `properties` text CHARACTER SET utf8,
  `model` text COLLATE utf8_unicode_ci,
  `namsanxuat` text COLLATE utf8_unicode_ci,
  `quatang` text COLLATE utf8_unicode_ci,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `dientich` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `quymo` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `huongdan` text COLLATE utf8_unicode_ci,
  `vanchuyen` text COLLATE utf8_unicode_ci,
  `noibat` int(11) NOT NULL DEFAULT '0',
  `spbc` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `cate_id`, `thuonghieu_id`, `code`, `stt`, `name`, `alias`, `photo`, `price`, `sale`, `price_old`, `mota`, `content`, `thuonghieu`, `tinhtrang`, `baohanh`, `properties`, `model`, `namsanxuat`, `quatang`, `address`, `dientich`, `quymo`, `huongdan`, `vanchuyen`, `noibat`, `spbc`, `status`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 5, 3, 2, NULL, 1, 'Khu đô thị sinh thái vinhome', 'khu-do-thi-sinh-thai-vinhome', '1509503845_2-min.jpg', 150000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-11-01 07:16:49', '2017-11-01 00:16:49'),
(2, 5, 2, 2, NULL, 2, 'Dự án vinhomes Đồng Khởi', 'du-an-vinhomes-dong-khoi', '1509503995_7-ly-do-nen-song-tai-vinhomes-riverside-ha-noi.jpg', 3000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-11-01 07:16:43', '2017-11-01 00:16:43'),
(3, 5, 1, 2, NULL, 3, 'Khởi công xây dựng dự án mới nhất', 'khoi-cong-xay-dung-du-an-moi-nhat', '1509504183_6-min.jpg', 5000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-11-01 07:16:27', '2017-11-01 00:16:27'),
(4, 5, 2, NULL, NULL, 4, 'Điện thoại sky', 'dien-thoai-sky', '1509525479_1484794077641-1387114.jpg', 3000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-11-01 08:37:59', '2017-11-01 01:37:59'),
(6, 5, 2, NULL, NULL, 6, 'Điện thoại sky 2', 'dien-thoai-sky-2', '1509528593_6-min.jpg', 1000000, 0, 0, NULL, '<p>Đ&egrave;n ch&ugrave;m trang tr&iacute; tạo kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch ấm c&uacute;ng v&agrave; sang trọng</p>\r\n<p>nh s&aacute;ng của đ&egrave;n ch&ugrave;m ph&ograve;ng kh&aacute;ch cực kỳ quan trọng trong việc trang tr&iacute; nội thất căn ph&ograve;ng. Ngo&agrave;i những c&ocirc;ng năng trang tr&iacute; chiếu s&aacute;ng th&ocirc;ng thường ch&uacute;ng c&ograve;n g&oacute;p phần t&ocirc;n l&ecirc;n vẻ đẹp sang trọng, ấm c&uacute;ng cho căn ph&ograve;ng kh&aacute;ch của bạn.</p>\r\n<p>Để tạo ra một ko gian ấm &aacute;p với &aacute;nh nguồn &aacute;nh s&aacute;ng dịu nhẹ, lan tỏa bạn cần treo một chiếc đ&egrave;n ch&ugrave;m trang tr&iacute; đảm bảo cường độ &aacute;nh s&aacute;ng vừa phải, nguồn &aacute;nh s&aacute;ng t&ocirc;ng v&agrave;ng sẽ mang lại một cảm gi&aacute;c ấm &aacute;p cho căn ph&ograve;ng v&agrave; đỡ tr&oacute;i mắt . Ngo&agrave;i ra treo một đ&egrave;n ch&ugrave;m pha l&ecirc; lớn tr&ecirc;n trần của ph&ograve;ng ăn cũng rất tốt v&igrave; n&oacute; tượng trưng cho năng lượng dương, rất tốt cho c&aacute;c bữa ăn.</p>\r\n<p>Lựa chọn đ&egrave;n trang tr&iacute; ph&ugrave; hợp cho ph&ograve;ng kh&aacute;ch Đ&egrave;n ch&ugrave;m ph&ograve;ng kh&aacute;ch phải tạo được cho căn ph&ograve;ng kh&ocirc;ng gian ấm c&uacute;ng v&agrave; sang trọng. C&oacute; thể bố tr&iacute; cho ph&ograve;ng kh&aacute;ch những ngọn đ&egrave;n ch&ugrave;m đẹp lấp l&aacute;nh sẽ l&agrave;m cho ph&ograve;ng kh&aacute;ch th&ecirc;m lung linh</p>\r\n<p>C&oacute; rất nhiều loại đ&egrave;n trang tr&iacute; nội thất như đ&egrave;n ch&ugrave;m, đ&egrave;n trần, đ&egrave;n b&agrave;n, ... mỗi loại c&oacute; một ưu điểm v&agrave; c&aacute;ch b&agrave;i tr&iacute; xắp đặt ri&ecirc;ng, v&igrave; k&iacute;ch cỡ mỗi loại kh&aacute;c nhau n&ecirc;n cần phải lụa chọn cho ph&ugrave; hợp với từng kh&ocirc;ng gian</p>\r\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; treo đ&egrave;n ch&ugrave;m trang tr&iacute; ph&ograve;ng kh&aacute;ch cần phải hiểu r&otilde; chức năng, biết lựa chọn đ&egrave;n c&oacute; k&iacute;ch thước ph&ugrave; hợp, ngo&agrave;i việc bạn cần hiểu về đặc điểm từng loại ra th&igrave; đ&egrave;n c&ograve;n phải gắn với kh&ocirc;ng gian kiến tr&uacute;c v&agrave; nội thất.</p>', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-11-01 09:29:53', '2017-11-01 02:29:53'),
(7, 5, 1, NULL, NULL, 7, 'Dự án bất động sản 1', 'du-an-bat-dong-san-1', '1509508426_anh-1-lauu.jpg', 1000000, 0, 0, NULL, '<p><strong>Khu đ&ocirc; thị Vinhomes Riverside</strong></p>\r\n<p>Riverside l&agrave; tổ hợp khu biệt thự đơn lập v&agrave; song lập ven s&ocirc;ng, được thiết kế theo phong c&aacute;ch T&acirc;n cổ điển, được lấy &yacute; tưởng v&agrave; thiết kế theo m&ocirc; h&igrave;nh của th&agrave;nh phố Venice (&Yacute;) đầy sang trọng, xinh đẹp v&agrave; quyến rũ. Được đ&aacute;nh gi&aacute; l&agrave; một trong những khu đ&ocirc; thị hiện đại, đẳng cấp v&agrave; sang trọng h&agrave;ng đầu tại Việt Nam,&nbsp;<strong>Vinhomes Riverside</strong>&nbsp;đang nhận được sự quan t&acirc;m của đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng th&ocirc;ng minh v&agrave; ti&ecirc;n tiến. Chủ đầu tư của dự &aacute;n l&agrave; c&ocirc;ng ty C&ocirc;ng ty Cổ phần Đầu tư v&agrave; Ph&aacute;t triển Đ&ocirc; thị S&agrave;i Đồng &ndash; đơn vị th&agrave;nh vi&ecirc;n của Tập đo&agrave;n Vingroup (đồng thời l&agrave; chủ đầu tư của c&aacute;c khu đ&ocirc; thị danh tiếng như Vinhomes Royal City, Vinhomes Times City, Vinhomes Nguyễn Ch&iacute; Thanh, Vinhomes T&acirc;n Cảng, Vinpearl Ph&uacute; Quốc&hellip;)</p>\r\n<p>DỰ &Aacute;N VINHOMES RIVERSIDE LONG BI&Ecirc;N</p>\r\n<p><strong>Khu đ&ocirc; thị Vinhomes Riverside</strong></p>\r\n<p>Riverside l&agrave; tổ hợp khu biệt thự đơn lập v&agrave; song lập ven s&ocirc;ng, được thiết kế theo phong c&aacute;ch T&acirc;n cổ điển, được lấy &yacute; tưởng v&agrave; thiết kế theo m&ocirc; h&igrave;nh của th&agrave;nh phố Venice (&Yacute;) đầy sang trọng, xinh đẹp v&agrave; quyến rũ. Được đ&aacute;nh gi&aacute; l&agrave; một trong những khu đ&ocirc; thị hiện đại, đẳng cấp v&agrave; sang trọng h&agrave;ng đầu tại Việt Nam,&nbsp;<strong>Vinhomes Riverside</strong>&nbsp;đang nhận được sự quan t&acirc;m của đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng th&ocirc;ng minh v&agrave; ti&ecirc;n tiến. Chủ đầu tư của dự &aacute;n l&agrave; c&ocirc;ng ty C&ocirc;ng ty Cổ phần Đầu tư v&agrave; Ph&aacute;t triển Đ&ocirc; thị S&agrave;i Đồng &ndash; đơn vị th&agrave;nh vi&ecirc;n của Tập đo&agrave;n Vingroup (đồng thời l&agrave; chủ đầu tư của c&aacute;c khu đ&ocirc; thị danh tiếng như Vinhomes Royal City, Vinhomes Times City, Vinhomes Nguyễn Ch&iacute; Thanh, Vinhomes T&acirc;n Cảng, Vinpearl Ph&uacute; Quốc&hellip;)</p>\r\n<p><img src=\"//bizweb.dktcdn.net/100/213/729/files/khu-do-thi-vinhomes-riverside-5.jpg?v=1495437365910\" alt=\"Khu đ&ocirc; thị sinh th&aacute;i Vinhomes Riverside\" width=\"800\" height=\"601\" /></p>\r\n<p>Với ưu thế về vị tr&iacute; tọa lạc ngay tại cửa ng&otilde; ph&iacute;a Đ&ocirc;ng Bắc Thủ đ&ocirc; H&agrave; Nội, từ&nbsp;<strong>Vinhomes Riverside</strong>, bạn c&oacute; thểdễ d&agrave;ng di chuyển v&agrave;o trung t&acirc;m th&agrave;nh phố v&agrave; c&aacute;c cụm c&ocirc;ng tr&igrave;nh trọng điểm của th&agrave;nh phố bằng hệ thống giao th&ocirc;ng đường bộ, đường cao tốc tr&ecirc;n cao hiện đại, linh hoạt v&agrave; cực kỳ thuận tiện.</p>\r\n<p><strong>Biệt thự&nbsp;Vinhomes Riverside</strong>&nbsp;giai đoạn 1 được chia th&agrave;nh 5 ph&acirc;n khu: Biệt thự Bằng Lăng, Biệt thự Hoa Phượng, Biệt thự Hoa Lan, Biệt thự Hoa Sữa v&agrave; Biệt thự Hoa Anh Đ&agrave;o.</p>\r\n<p>Với mật độ x&acirc;y dựng thấp, khoảng c&aacute;ch giữa c&aacute;c căn biệt thự cao,&nbsp;<strong>Vinhomes Riverside</strong>&nbsp;tạo n&ecirc;n kh&ocirc;ng gian ri&ecirc;ng tư cho mỗi gia đ&igrave;nh, l&agrave; nơi t&igrave;m về sau chuỗi những bộn bề c&ocirc;ng việc, học tập&hellip;</p>\r\n<p>Sự kết hợp th&ocirc;ng minh giữa c&aacute;c căn biệt thự của&nbsp;<strong>Vinhomes Riverside</strong>&nbsp;với vườn c&acirc;y sinh th&aacute;i đa dạng c&ugrave;ng hệ thống k&ecirc;nh đ&agrave;o nh&acirc;n tạo rộng gần 600.000 m2 sẽ đem đến kh&ocirc;ng gian tho&aacute;ng đ&atilde;ng, tự nhi&ecirc;n v&agrave; chuẩn &ldquo;sinh th&aacute;i&rdquo;. Tại đ&acirc;y, qu&yacute; kh&aacute;ch c&oacute; thể tận hưởng c&aacute;c th&uacute; vui tao nh&atilde; v&agrave; đẳng cấp sau một ng&agrave;y l&agrave;m việc, lao động, học tập căng thẳng v&agrave; mệt mỏi như: c&acirc;u c&aacute;, h&oacute;ng gi&oacute;, ngắm cảnh, đi dạo, chạy bộ&hellip;</p>\r\n<p>B&ecirc;n cạnh đ&oacute;, cư d&acirc;n của&nbsp;<strong>Vinhomes Riverside</strong>&nbsp;sẽ được hưởng đầy đủ những tiện &iacute;ch đồng bộ v&agrave; to&agrave;n diện của một khu đ&ocirc; thị chuẩn hiện đại, sang trọng với hạ tầng đầy đủ:hệ thống văn ph&ograve;ng cao cấp, trung t&acirc;m thương mại, khu mua sắm, khu ẩm thực, bệnh viện, kh&aacute;ch sạn, ng&acirc;n h&agrave;ng, trường học, khu vui chơi giải tr&iacute;, s&acirc;n golf, khu thể thao, bể bơi, vườn nướng BBQ&hellip;</p>', NULL, 0, NULL, '', NULL, NULL, NULL, '315 Trường Chính, Thanh Xuân, Hà Nội', '300 ha', 'Tòa nhà văn phòng', NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-11-01 04:15:03', '2017-10-31 21:15:03'),
(8, 5, 3, NULL, NULL, 8, 'Điện thoại sam sung 2', 'dien-thoai-sam-sung-2', '1509528543_7-ly-do-nen-song-tai-vinhomes-riverside-ha-noi.jpg', 2000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-11-01 09:29:03', '2017-11-01 02:29:03'),
(9, 5, 3, NULL, NULL, 9, 'Điện thoại sam sung 3', 'dien-thoai-sam-sung-3', '1509528526_8.jpg', 3000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-11-01 09:28:46', '2017-11-01 02:28:46'),
(10, 5, 8, NULL, NULL, 10, 'Xe đẩy Goodbay', 'xe-day-goodbay', '1509510664_17-min.jpg', 14000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-11-01 08:35:10', '2017-11-01 01:35:10'),
(11, 5, 8, NULL, NULL, 11, 'Iphone 5s 64GB', 'iphone-5s-64gb', '1509510654_river-gate-apartment.jpg', 5000000, 0, 0, NULL, NULL, NULL, 0, NULL, 'Hãng sản xuất: Apple###sdf sf###sdf s sdf###Xuất xứ: Chính hãng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-11-01 08:35:13', '2017-11-01 01:35:13'),
(13, 5, 7, NULL, NULL, 13, 'Iphone 6s 64GB', 'iphone-6s-64gb', '1509525340_14.jpg', 2000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-11-01 08:35:53', '2017-11-01 01:35:53'),
(14, 5, 6, NULL, NULL, 14, 'Sản phẩm iphone 6 32GB', 'san-pham-iphone-6-32gb', '1508820259_upload_0dd04450f7694280ae3315e24e4256ce_large.jpg', 2000000, 0, 0, NULL, NULL, NULL, 0, NULL, 'man hinh full hd###bo nho 32gb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-10-24 08:36:42', '2017-10-24 01:36:42'),
(17, 5, 5, NULL, NULL, 16, 'Điện thoại HTC M10', 'dien-thoai-htc-m10', '1508820217_upload_cc00af45dbe94e8cb4d19a05f57970f6_large.jpg', 6000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-10-26 08:38:56', '2017-10-26 01:38:56'),
(18, 5, 5, NULL, NULL, 17, 'HTC M8', 'htc-m8', '1508820166_upload_f2b057cc8c454700a6cfd54fd6a27fc6_large.jpg', 5000000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-10-24 04:42:46', '2017-10-23 21:42:46'),
(19, 5, 5, NULL, NULL, 18, 'HTC M7', 'htc-m7', '1508820089_upload_4bb7319a4d4146309d1c6ad256286999_large.jpg', 6500000, 0, 0, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-10-24 04:41:29', '2017-10-23 21:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `stt` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `noibat` int(2) DEFAULT '0',
  `status` int(11) NOT NULL,
  `lever` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `stt`, `name`, `alias`, `photo`, `noibat`, `status`, `lever`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Bất động sản', 'bat-dong-san', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-31 19:02:28', '2017-10-31 19:02:28'),
(2, 0, 2, 'Du lịch - Khách sạn', 'du-lich-khach-san', '', 0, 1, 0, NULL, NULL, NULL, '2017-11-01 02:37:42', '2017-10-31 19:37:42'),
(3, 0, 3, 'Vui chơi - Giải  trí', 'vui-choi-giai-tri', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-31 19:03:18', '2017-10-31 19:03:18'),
(4, 0, 4, 'Y tế', 'y-te', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-31 19:04:02', '2017-10-31 19:04:02'),
(5, 0, 5, 'Giáo dục', 'giao-duc', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-31 19:04:16', '2017-10-31 19:04:16'),
(6, 0, 6, 'Thương mại điện tử', 'thuong-mai-dien-tu', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-31 19:04:25', '2017-10-31 19:04:25'),
(7, 0, 7, 'Trung tâm thương mại', 'trung-tam-thuong-mai', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-31 19:04:42', '2017-10-31 19:04:42'),
(8, 0, 8, 'Kinh doanh bán lẻ', 'kinh-doanh-ban-le', '', 0, 1, 0, NULL, NULL, NULL, '2017-10-31 19:05:14', '2017-10-31 19:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `province_name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `province_name`, `created_at`, `updated_at`) VALUES
(2, 'hai phong', '2017-09-21 07:19:34', '2017-09-21 07:19:34'),
(4, 'Hà Nội', '2017-09-21 21:47:54', '2017-09-21 21:47:54'),
(5, 'Thái Bình', '2017-09-21 21:48:05', '2017-09-21 21:48:17'),
(6, 'Hồ Chí Minh', '2017-09-25 00:14:42', '2017-09-25 00:14:42'),
(7, 'Nam Định', '2017-10-13 20:09:01', '2017-10-13 20:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruitment`
--

INSERT INTO `recruitment` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Công ty Gco', 'trường chinh, thanh xuân, hà nội', '0943249', 'gco@gmail.com', '2017-09-15 04:21:08', '2017-09-14 21:21:08', 1),
(7, 'Hoàng Hồng Chương', 'Hà Nội', '0987654321', 'chuonghoanghong@gmail.com', '2017-09-17 20:31:17', '2017-09-17 20:31:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `facebook` text COLLATE utf8_unicode_ci NOT NULL,
  `twitter` text COLLATE utf8_unicode_ci NOT NULL,
  `google` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `title`, `company`, `website`, `address`, `phone`, `hotline`, `fax`, `email`, `photo`, `favico`, `title_index`, `mota`, `content`, `facebook`, `twitter`, `google`, `youtube`, `status`, `toado`, `copyright`, `iframemap`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Dreamer', 'Dreamer', 'Dreamer', 'http://gco.vn/', 'Tầng 8, TOYOTA Thanh Xuân 315 Trường Chinh, Thanh Xuân, Hà Nội', '(04)6 290 8885', NULL, '(04)3 550 1492', 'support@gco.vn', '1509418074_logo.png', '1509418074_logo.png', NULL, NULL, NULL, 'https://www.facebook.com/FacebookforDevelopers/', 'https://twitter.com/?lang=vi', 'https://plus.google.com/?hl=vi', 'https://www.youtube.com/', 1, NULL, '© GCO 2017. All rights reserved. Design by duydoan.webdesign@gmail.com.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761617598985!2d105.82076241501875!3d21.00219068601275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac869cd63f89%3A0xa2e71c273579f51b!2zMzE1IFRyxrDhu51uZyBDaGluaA!5e0!3m2!1sen!2s!4v1505443560797\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2017-10-31 02:47:54', '2017-10-30 19:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `link`, `photo`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(38, 5, 'Sản phẩm demo 12', NULL, '1504839494_gl-2.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 8, '2017-09-08 02:59:48', '2017-09-07 19:59:48'),
(39, 5, 'Sản phẩm demo 13', NULL, '1504839505_gl-1.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 7, '2017-09-08 02:59:41', '2017-09-07 19:59:41'),
(40, 5, 'Sản phẩm demo 14', NULL, '1504839600_gl-3.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 9, '2017-09-07 20:00:00', '2017-09-07 20:00:00'),
(41, 5, 'banner', NULL, '1509432918_slider_gt_1.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2017-10-31 06:55:18', '2017-10-30 23:55:18'),
(32, 5, 'Hình 1', NULL, '1504780100_gl-1.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 6, '2017-09-08 02:59:34', '2017-09-07 19:59:34'),
(33, 5, 'Hình 2', NULL, '1504780109_gl-2.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 5, '2017-09-08 02:59:26', '2017-09-07 19:59:26'),
(34, 5, 'Hình 3', NULL, '1504780118_gl-3.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 4, '2017-09-08 02:59:18', '2017-09-07 19:59:18'),
(35, 5, 'Hình 4', NULL, '1504780134_gl-3.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 3, '2017-09-08 02:59:07', '2017-09-07 19:59:07'),
(36, 5, 'Quần jean nam', NULL, '1504780141_gl-1.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 2, '2017-09-08 02:59:00', '2017-09-07 19:59:00'),
(37, 5, 'Sản phẩm demo 1', NULL, '1504780160_gl-2.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 1, '2017-09-08 02:58:54', '2017-09-07 19:58:54'),
(29, 5, 'MIỄN PHÍ VẬN CHUYỂN', NULL, '1504143783_oto.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 1, '2017-08-31 01:44:03', '2017-08-30 18:44:03'),
(30, 5, 'ĐỔI TRẢ TRONG VÒNG 07 NGÀY', NULL, '1504143807_phone.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 2, '2017-08-30 18:43:27', '2017-08-30 18:43:27'),
(31, 5, 'HỖ TRỢ ONLINE 24/7', NULL, '1504143833_watch.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 3, '2017-08-30 18:43:53', '2017-08-30 18:43:53'),
(42, 5, 'New Arrivals', NULL, '1509432930_slider_gt_2.jpg', '', 'Bé trai - bé gái', NULL, 1, 0, 'gioi-thieu', 2, '2017-10-31 06:55:30', '2017-10-30 23:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `slogan`
--

CREATE TABLE `slogan` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slogan`
--

INSERT INTO `slogan` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Slogan đối tác', '<p>Với mong muốn đem đến cho thị trường những sản phẩm - dịch vụ theo ti&ecirc;u chuẩn quốc tế v&agrave; những trải nghiệm ho&agrave;n to&agrave;n mới về phong c&aacute;ch sống hiện đại, ở bất cứ lĩnh vực n&agrave;o cũng chứng tỏ vai tr&ograve; ti&ecirc;n phong, dẫn dắt sự thay đổi xu hướng ti&ecirc;u d&ugrave;ng. Ch&uacute;ng t&ocirc;i đ&atilde; l&agrave;m n&ecirc;n những điều kỳ diệu để t&ocirc;n vinh thương hiệu Việt v&agrave; tự h&agrave;o l&agrave; một trong những Tập đo&agrave;nkinh tế tư nh&acirc;n h&agrave;ng đầu Việt Nam.</p>', '2017-10-30 20:05:33', '2017-10-30 20:05:33'),
(2, 'Slogan lĩnh vực hoạt động', '<p>Với mong muốn đem đến cho thị trường những sản phẩm - dịch vụ theo ti&ecirc;u chuẩn quốc tế v&agrave; những trải nghiệm ho&agrave;n to&agrave;n mới về phong c&aacute;ch sống hiện đại, ở bất cứ lĩnh vực n&agrave;o cũng chứng tỏ vai tr&ograve; ti&ecirc;n phong, dẫn dắt sự thay đổi xu hướng ti&ecirc;u d&ugrave;ng. Ch&uacute;ng t&ocirc;i đ&atilde; l&agrave;m n&ecirc;n những điều kỳ diệu để t&ocirc;n vinh thương hiệu Việt v&agrave; tự h&agrave;o l&agrave; một trong những Tập đo&agrave;nkinh tế tư nh&acirc;n h&agrave;ng đầu Việt Nam.</p>', '2017-10-30 20:13:47', '2017-10-30 20:13:47'),
(3, 'Sologan header', '<p>Ch&agrave;o mừng bạn đến với Dreamer</p>', '2017-11-01 00:48:28', '2017-11-01 00:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`id`, `name`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Bitexco', 'bitexco', '2017-11-01 00:07:02', '2017-11-01 00:07:02'),
(2, 'Vingroup', 'vingroup', '2017-11-01 00:07:14', '2017-11-01 00:07:14'),
(3, 'Garden', 'garden', '2017-11-01 00:07:27', '2017-11-01 00:07:27'),
(4, 'FLC', 'flc', '2017-11-01 00:07:36', '2017-11-01 00:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `useronline`
--

CREATE TABLE `useronline` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-06-14 23:42:39', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-06-16 02:51:34', '2017-06-16 02:51:34'),
(5, 'gco_admin', '$2y$10$Lm3vxVo0UYuWFSzJkpvmwOKecqZm5coQSy1D3QW/Tc8c569RgBNFK', 'Admin', 'gco@gmail.com', '0985431797', '315 Trường chinh, Thanh Xuân, Hà Nội', 1, '5.jpg', 1, 'zCkRF2boomcoF8VVxJkzGLhx18jheiMcFjjETNmCK4Bz5X1aDMD32M4w6Y9e', '2017-10-16 06:40:43', '2017-09-24 19:31:27'),
(6, 'hoangchuong', '$2y$10$hgK6I2IZypbAH4cQhCLGnuworUM5T2MO9R/wEOpYDzh1Igmw0tMES', 'Hoàng Hồng Chương', 'chuonghoanghong@gmail.com', NULL, NULL, 2, NULL, 1, 'JVbavXrhMLNRXMdcGx9MiZGhTwAGqFQmulGcRYwnQWkfYn0ZQu0OtN5o0j7J', '2017-10-13 01:18:31', '2017-10-12 18:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `link` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `link`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nvy3XBg-tmU\" frameborder=\"0\" allowfullscreen></iframe>', '2017-10-15 20:31:58', '2017-10-15 20:34:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_content`
--
ALTER TABLE `banner_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_position`
--
ALTER TABLE `banner_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_cards`
--
ALTER TABLE `campaign_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_copy`
--
ALTER TABLE `feedback_copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_content`
--
ALTER TABLE `banner_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `campaign_cards`
--
ALTER TABLE `campaign_cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback_copy`
--
ALTER TABLE `feedback_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `slogan`
--
ALTER TABLE `slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
