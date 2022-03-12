-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2021 at 08:25 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multiauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `category`, `coupon`, `product`, `blog`, `order`, `other`, `report`, `role`, `return`, `contact`, `comment`, `setting`, `stock`, `type`, `created_at`, `updated_at`) VALUES
(5, 'saddam', '01620105436', 'saddam312514@gmail.com', NULL, '$2y$10$M1QVAP90tT/uvSkxmGYzi.Ni/AYCqe4dDCUzuM/HJQg1TpyjvvnqG', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 2, NULL, '2021-01-25 03:55:24'),
(6, 'Fakrul', '01914986254', 'fakrul@gmail.com', NULL, '$2y$10$iEacWlGwxUMXuPSCdOK.I.r1pzdbKcrgwvCTCeXa13WHMlygqlzte', NULL, '1', '1', '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '1', 2, NULL, NULL),
(7, 'Mou', '01648886818', 'mou@gmail.com', NULL, '$2y$10$ZF7K6guDnTxnE4/VtQAxIOAFLFHdGH5HkH99F6/ZGQwAaED8i2H8G', NULL, '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`, `created_at`, `updated_at`) VALUES
(22, 'Sumsung', 'public/media/brand/110121_10_53_57.jpg', NULL, NULL),
(23, 'Nokia', 'public/media/brand/190121_15_14_51.jpg', NULL, NULL),
(24, 'Xiaomi', 'public/media/brand/190121_15_03_52.webp', NULL, NULL),
(25, 'Nikon', 'public/media/brand/190121_15_50_59.jpg', NULL, NULL),
(26, 'Hp', 'public/media/brand/200121_06_07_41.jpg', NULL, NULL),
(27, 'JBL', 'public/media/brand/200121_07_05_02.jpg', NULL, NULL),
(28, 'Dell', 'public/media/brand/200121_07_49_05.jpg', NULL, NULL),
(29, 'adata', 'public/media/brand/220121_14_23_21.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(11, 'Mobile', '2021-01-11 04:49:52', '2021-01-11 04:49:52'),
(12, 'Camera', '2021-01-11 04:49:57', '2021-01-11 04:49:57'),
(13, 'Desktop', '2021-01-11 04:50:04', '2021-01-11 04:50:04'),
(14, 'Headphone', '2021-01-11 04:50:15', '2021-01-11 04:50:15'),
(15, 'Monitor', '2021-01-11 04:50:22', '2021-01-11 04:50:22'),
(16, 'Laptop', '2021-01-11 04:50:33', '2021-01-11 04:50:33'),
(17, 'Ram', '2021-01-22 08:18:37', '2021-01-22 08:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `discount`, `created_at`, `updated_at`) VALUES
(5, 'saddam101', '15', NULL, NULL),
(6, 'Fakrul102', '10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_05_052517_create_admins_table', 1),
(5, '2019_10_10_135206_create_categories_table', 2),
(6, '2019_10_10_135221_create_subcategories_table', 2),
(7, '2019_10_10_135236_create_brands_table', 2),
(8, '2019_10_15_152304_create_coupons_table', 3),
(9, '2019_10_15_154357_create_newslaters_table', 4),
(10, '2019_10_16_054617_create_products_table', 5),
(11, '2019_10_21_153355_create_post_category_table', 6),
(12, '2019_10_21_153417_create_posts_table', 6),
(13, '2019_10_25_140504_create_wishlists_table', 7),
(14, '2019_11_19_144943_create_settings_table', 8),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 9),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 9),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 9),
(18, '2016_06_01_000004_create_oauth_clients_table', 9),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 9),
(20, '2019_11_28_124814_create_orders_table', 10),
(21, '2019_11_28_124827_create_order_details_table', 10),
(22, '2019_11_28_124843_create_shipping_table', 10),
(23, '2019_12_10_145038_create_subscribers_table', 11),
(24, '2019_12_10_145333_create_seo_table', 12),
(25, '2019_12_12_144824_create_sitesetting_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `newslaters`
--

CREATE TABLE `newslaters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newslaters`
--

INSERT INTO `newslaters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(3, 'saddam312514@gmail.com', '2021-01-20 03:35:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'SDrHy9raVskWZ2SKC9rzPQWLl7OBSuRH2Itplvss', 'http://localhost', 1, 0, 0, '2019-11-20 01:17:41', '2019-11-20 01:17:41'),
(2, NULL, 'Laravel Password Grant Client', 'hWD1ovG64xGFLKy6VsFc58ngKu4DVu8PFxJzrNKA', 'http://localhost', 0, 1, 0, '2019-11-20 01:17:41', '2019-11-20 01:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-11-20 01:17:41', '2019-11-20 01:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_type`, `payment_id`, `paying_amount`, `blnc_transection`, `stripe_order_id`, `subtotal`, `shipping`, `vat`, `total`, `status`, `return_order`, `month`, `date`, `year`, `status_code`, `created_at`, `updated_at`) VALUES
(10, '6', 'stripe', 'card_1IBaKKBuaPJrN3per5eIyZal', '957', 'txn_1IBaKMBuaPJrN3peoQyUCoiX', '6007cfc9a8b26', '940', '7', '0', '957', '3', '2', 'January', '20-01-21', '2021', '475085', NULL, NULL),
(11, '6', 'stripe', 'card_1IBdhvBuaPJrN3pe6U1zsDZv', '657', 'txn_1IBdhwBuaPJrN3peFEVx4SfA', '6008028bee7b8', '640', '7', '0', '657', '4', '0', 'January', '20-01-21', '2021', '678517', NULL, NULL),
(12, '6', 'stripe', 'card_1ICI6eBuaPJrN3peU5pbXJGt', '482', 'txn_1ICI6gBuaPJrN3peXhvpiB4P', '600a612a03aa7', '475.00', '7', '0', '482', '0', '0', 'January', '22-01-21', '2021', '266208', NULL, NULL),
(13, '7', 'stripe', 'card_1ICQFTBuaPJrN3pezA0O0hfJ', '307', 'txn_1ICQFWBuaPJrN3perp9u2oRq', '600adb6c65c84', '300.00', '7', '0', '307', '3', '2', 'January', '22-01-21', '2021', '602654', NULL, NULL),
(14, '7', 'stripe', 'card_1ICQoFBuaPJrN3pepBgRoqSD', '957', 'txn_1ICQoGBuaPJrN3peIVdnvTVA', '600ae3d781813', '950.00', '7', '0', '957', '3', '2', 'January', '22-01-21', '2021', '993746', NULL, NULL),
(15, '6', 'stripe', 'card_1IDLtsBuaPJrN3pem6fUJRzn', '482', 'txn_1IDLtvBuaPJrN3pe3vgOmfJv', '600e3d196a625', '475.00', '7', '0', '482', '3', '0', 'January', '25-01-21', '2021', '712137', NULL, NULL),
(16, '6', 'stripe', 'card_1IDmiGBuaPJrN3peiJjJKmhn', '457', 'txn_1IDmiIBuaPJrN3peJjiBpUMX', '600fcfb4c2b1f', '450.00', '7', '0', '457', '0', '0', 'January', '26-01-21', '2021', '569938', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `singleprice`, `totalprice`, `created_at`, `updated_at`) VALUES
(1, 2, '21', 'Yellow Smart Watch', 'Yellow', NULL, '2', '70', '140', NULL, NULL),
(2, 2, '18', 'Women Jacket', 'Blue', 'Sm', '2', '30', '60', NULL, NULL),
(3, 3, '23', 'JBl Speaker', 'Black', NULL, '2', '100', '200', NULL, NULL),
(4, 3, '20', 'Men Smart Watch', 'Black', NULL, '1', '40', '40', NULL, NULL),
(5, 4, '23', 'JBl Speaker', 'Black', NULL, '1', '100', '100', NULL, NULL),
(6, 4, '21', 'Yellow Smart Watch', 'Yellow', NULL, '2', '70', '140', NULL, NULL),
(7, 4, '16', 'Computer Desk', 'Black', NULL, '1', '240', '240', NULL, NULL),
(8, 5, '22', 'Canon 1100D', 'Black', NULL, '1', '400', '400', NULL, NULL),
(9, 6, '18', 'Women Jacket', 'yellow', 'Xl', '2', '30', '60', NULL, NULL),
(10, 7, '18', 'Women Jacket', 'yellow', 'Xl', '2', '30', '60', NULL, NULL),
(11, 8, '21', 'Yellow Smart Watch', 'Yellow', NULL, '1', '70', '70', NULL, NULL),
(12, 8, '20', 'Men Smart Watch', 'Black', NULL, '2', '40', '80', NULL, NULL),
(13, 9, '24', 'Nokia 6.2', 'black', '6.2', '1', '250', '250', NULL, NULL),
(14, 10, '25', 'Nikon D3200', 'Black', 'DSLR 24.2', '2', '475', '950', NULL, NULL),
(15, 11, '28', 'JBL Original Tune T500BT', 'Black', 'Bluetooth Version 4.1', '1', '150', '150', NULL, NULL),
(16, 11, '24', 'Nokia 6.2', 'black', '6.2', '2', '250', '500', NULL, NULL),
(17, 12, '25', 'Nikon D3200', 'Black', 'DSLR 24.2', '1', '475', '475', NULL, NULL),
(18, 13, '28', 'JBL Original Tune T500BT', 'white', 'Bluetooth Version 4.1', '2', '150', '300', NULL, NULL),
(19, 14, '25', 'Nikon D3200', 'Black', 'DSLR 24.2', '2', '475', '950', NULL, NULL),
(20, 15, '25', 'Nikon D3200', 'Black', 'DSLR 24.2', '1', '475', '475', NULL, NULL),
(21, 16, '31', 'Samsung Galaxy M21', 'blue', '4gb', '1', '150', '150', NULL, NULL),
(22, 16, '28', 'JBL Original Tune T500BT', 'Black', 'Bluetooth Version 4.1', '2', '150', '300', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `post_title_en`, `post_title_bn`, `post_image`, `details_en`, `details_bn`, `created_at`, `updated_at`) VALUES
(6, 1, 'First blog', 'প্রথম ব্লগ', 'public/media/post/1689378370605037.webp', '<strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>', '<div><br></div><div><span style=\"color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 24px; white-space: pre-wrap; background-color: rgb(248, 249, 250);\">Lorem Ipsum কেবল মুদ্রণ এবং টাইপসেটিং শিল্পের ডামি পাঠ্য। লোরেম ইপসাম 1500 এর দশক থেকে শিল্পের স্ট্যান্ডার্ড ডামি পাঠ্য হিসাবে কাজ করছেন, যখন কোনও অজানা প্রিন্টার একটি গ্যালারী টাইপ নিয়ে স্ক্র্যাম্বল করে একটি ধরণের নমুনার বই তৈরি করেছিলেন। এটি কেবল পাঁচটি শতাব্দীই বেঁচে নেই, বৈদ্যুতিন টাইপসেটেটিংয়ে ঝাঁপিয়ে পড়েছে, মূলত অপরিবর্তিত রয়েছে। ১৯60০ এর দশকে এটি লোরেম ইপসাম প্যাসেজ সমেত লেট্রেসেট শিট প্রকাশের মাধ্যমে এবং সম্প্রতি সম্প্রতি এলডাস পেজমেকারের মতো ডেস্কটপ প্রকাশনা সফটওয়্যার সহ লোরেম ইপসামের সংস্করণ সহ জনপ্রিয় হয়েছিল</span><br></div>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `category_name_en`, `category_name_bn`, `created_at`, `updated_at`) VALUES
(1, 'Offer', 'অফার ', NULL, NULL),
(2, 'Service', 'সার্ভিস ', NULL, NULL),
(3, 'Event', 'ইভেন্ট ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `buyone_getone` int(11) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(24, 11, 28, 23, 'Nokia 6.2', 'N-102', '99', '<span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px;\">Corning Gorilla Glass 3 front &amp; back, plastic frame</span>', 'black,Silver', '6.2', '250', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 'public/media/product/1689331284877692.webp', 'public/media/product/1689331285528542.jpg', 'public/media/product/1689331285866101.webp', 1, NULL, NULL),
(25, 12, 26, 25, 'Nikon D3200', 'NC-12', '195', '<h1 itemprop=\"name\" class=\"product-name\" style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; -webkit-font-smoothing: antialiased; font-size: 16px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><table class=\"data-table\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; -webkit-font-smoothing: antialiased; border-spacing: 0px; background-color: rgb(241, 243, 245); width: 847px; font-size: 14px;\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Warranty</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">03 Years Service Warranty (No parts warranty)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">LCD</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">3.0 in. diagonal, 921,000 Dots, Wide Viewing Angle TFT-LCD</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Lens</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">18mm-55mm</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Video Resolution</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">HD movies<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\">HD 1,920x1,080 / 30 fps<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\">HD 1,920x1,080 / 25 fps<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\">HD 1,920x1,080 / 24 fps<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\">HD 1,280x720 / 60 fps<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\">HD 1,280x720 / 50 fps<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\">VGA 640x424 / 30 fps<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\">VGA 640x424 / 25 fps</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Memory Card Slot</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">SD, SDHC, SDXC</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Battery Life</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">EN-EL14 Rechargeable Li-ion Battery</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Other Features</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">HD Movie Mode, Flash ON, Flash OFF, Slow Sync, Red-eye Reduction, Flash Exposure Compensation</td></tr></tbody></table></h1>', 'Black', 'DSLR 24.2', '500', '475', NULL, 1, 1, 1, NULL, NULL, NULL, 1, 'public/media/product/1689331629613265.jpg', 'public/media/product/1689331629885267.jpg', 'public/media/product/1689331629960467.jpg', 1, NULL, NULL),
(26, 16, 29, 26, 'HP 15s-du2062TU', 'N-10', '100', '<table class=\"data-table\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; -webkit-font-smoothing: antialiased; border-spacing: 0px; background-color: rgb(241, 243, 245); width: 847px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Processor</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Intel Core i5-1035G1 Processor (6M Cache, 1.00 GHz up to 3.60 GHz)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Display</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">15.6\" diagonal FHD SVA anti-glare micro-edge WLED-backlit, 220 nits, 45% NTSC (1920 x 1080)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Memory</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">4 GB DDR4-2666 SDRAM (1 x 4 GB)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Storage</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">1TB HDD</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Graphics</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Intel UHD Graphics</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Operating System</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Windows 10</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Battery</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Battery type: 3-cell, 41 Wh Li-ion<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\">Battery life mixed usage: Up to 5 hours and 15 minutes<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\">Video Playback Battery life: Up to 6 hours and 15 minutes</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Adapter</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">45 W Smart AC power adapter</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Audio</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Dual speakers</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 30px; -webkit-font-smoothing: antialiased; background: rgb(151, 161, 161); font-size: 15px; color: rgb(255, 255, 255); font-weight: 600;\">Input Devices</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Optical Drive</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">N/A</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">WebCam</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">HP TrueVision HD camera with integrated dual array digital microphone</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Card Reader</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">1 multi-format SD media card reader</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 30px; -webkit-font-smoothing: antialiased; background: rgb(151, 161, 161); font-size: 15px; color: rgb(255, 255, 255); font-weight: 600;\">Network &amp; Wireless Connectivity</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">LAN</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Integrated 10/100/1000 GbE LAN</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Wi-Fi</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">802.11ac (1x1) Wi-Fi</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Bluetooth</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Bluetooth 4.2</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 30px; -webkit-font-smoothing: antialiased; background: rgb(151, 161, 161); font-size: 15px; color: rgb(255, 255, 255); font-weight: 600;\">Ports, Connectors &amp; Slots</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">USB (s)</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">1 SuperSpeed USB Type-C 5Gbps signaling rate;<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\">2 SuperSpeed USB Type-A 5Gbps signaling rate;</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">HDMI</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">1 HDMI 1.4b</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Audio Jack Combo</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">1 headphone/microphone combo</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Extra RAM Slot</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Yes</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Extra M.2 Slot</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Yes</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Supported SSD Type</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">M.2 SATA / M.2 PCIe NVMe</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 30px; -webkit-font-smoothing: antialiased; background: rgb(151, 161, 161); font-size: 15px; color: rgb(255, 255, 255); font-weight: 600;\">Physical Specification</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Dimensions (W x D x H)</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">35.85 x 24.2 x 1.99 cm</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Weight</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Starting at 1.75 kg</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Color(s)</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Silver</td></tr></tbody></table>', 'Silver,black', '15.6\'\' FHD', '625', NULL, NULL, NULL, 1, 1, 1, 1, NULL, 1, 'public/media/product/1689387327973573.jpg', 'public/media/product/1689387328041715.jpg', 'public/media/product/1689387328074389.jpg', 1, NULL, NULL),
(27, 13, 30, 26, 'Cisco UCS-C220-M5SX', 'N-105', '50', '<table class=\"data-table\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; -webkit-font-smoothing: antialiased; border-spacing: 0px; background-color: rgb(241, 243, 245); width: 847px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">ocessor</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Intel Xeon Bronze 1.7 GHz 3104/85W 6C/8.25MB Cache/DDR4 2133MHz<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\">Chassis with Up to10 SFF drives for CPU Configuration</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Memory</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">2 x 16GB DDR4-2666-MHz RDIMM/PC4-21300/single rank/x4/1.2v</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Hard Disk</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">2 x 1.2 TB 12G SAS 10K RPM SFF HDD</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">RAID Controller</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Cisco 12G Modular SAS HBA</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Operating System</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Linux,VM, Microsoft</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 30px; -webkit-font-smoothing: antialiased; background: rgb(151, 161, 161); font-size: 15px; color: rgb(255, 255, 255); font-weight: 600;\">Additional Features</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Optical Drive</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">No</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Lan/Nic</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Dual 10GBASE-T Intel x550 Ethernet ports</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Power Supply</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Cisco UCS 770W AC Power Supply for Rack Server, Dual<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\">Power Cord Jumper, C13-C14 Connectors, 2 Meter Length</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Others</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Remote Management: IMC SW (Recommended) latest release for C-Series Server<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\">Ball Bearing Rail Kit for C220 &amp; C240 M4 &amp; M5 rack servers</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 30px; -webkit-font-smoothing: antialiased; background: rgb(151, 161, 161); font-size: 15px; color: rgb(255, 255, 255); font-weight: 600;\">Manufacture Warranty</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Warranty</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">01 years</td></tr></tbody></table>', 'Black', '1RU rack server', '750', NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 'public/media/product/1689387559263386.jpg', 'public/media/product/1689387559305566.jpg', 'public/media/product/1689387559324860.jpg', 1, NULL, NULL),
(28, 14, 31, 27, 'JBL Original Tune T500BT', 'h-102', '68', '<table class=\"data-table\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; -webkit-font-smoothing: antialiased; border-spacing: 0px; background-color: rgb(241, 243, 245); width: 847px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Color</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Black/Blue/White</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 30px; -webkit-font-smoothing: antialiased; background: rgb(151, 161, 161); font-size: 15px; color: rgb(255, 255, 255); font-weight: 600;\">Technical Specification</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Frequency Range</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">20 Hz - 20 kHz</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Impedance</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">32.0</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Sensitivity</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">1kHz - 24dBV/Pa</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Connectivity</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Wireless</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 30px; -webkit-font-smoothing: antialiased; background: rgb(151, 161, 161); font-size: 15px; color: rgb(255, 255, 255); font-weight: 600;\">Warranty Information</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Manufacturing Warranty</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">No Warranty</td></tr></tbody></table>', 'Black,white,blue', 'Bluetooth Version 4.1', '150', NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 'public/media/product/1689388283136612.jpg', 'public/media/product/1689388283174679.jpg', 'public/media/product/1689388283207017.jpg', 1, NULL, NULL),
(30, 17, 32, 29, 'ram ddr3', '10254', '100', '<a href=\"https://en.wikipedia.org/wiki/Synchronous_dynamic_random-access_memory\" title=\"Synchronous dynamic random-access memory\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">synchronous dynamic random-access memory</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">&nbsp;(SDRAM) with a high&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Bandwidth_(computing)\" title=\"Bandwidth (computing)\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">bandwidth</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">&nbsp;(\"</span><a href=\"https://en.wikipedia.org/wiki/Double_data_rate\" title=\"Double data rate\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">double data rate</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">\") interface, and has been in use since 2007. It is the higher-speed successor to&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/DDR_SDRAM\" title=\"DDR SDRAM\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">DDR</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">&nbsp;and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/DDR2_SDRAM\" title=\"DDR2 SDRAM\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">DDR2</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">&nbsp;and predecessor to&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/DDR4_SDRAM\" title=\"DDR4 SDRAM\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">DDR4</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Synchronous_dynamic_random-access_memory\" title=\"Synchronous dynamic random-access memory\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">synchronous dynamic random-access memory</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">&nbsp;(SDRAM) chips. DDR3 SDRAM is neither&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Forward_compatibility\" title=\"Forward compatibility\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">forward</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">&nbsp;nor&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Backward_compatibility\" title=\"Backward compatibility\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">backward compatible</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">&nbsp;with any earlier type of&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Random-access_memory\" title=\"Random-access memory\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">random-access memory</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">&nbsp;(RAM) because of different signaling voltages, timings, and other factors.</span>', 'fsdaf', '4gb,8gb', '75', '10', NULL, 1, 1, 1, 1, 1, NULL, NULL, 'public/media/product/1689597607306511.jpg', 'public/media/product/1689597607892970.jpg', 'public/media/product/1689790327384202.jpg', 0, NULL, NULL),
(32, 11, 28, 22, 'Nokia 6.2', 'N-102', '100', '<span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px; background-color: rgb(239, 246, 250);\">Corning Gorilla Glass 3 front &amp; back, plastic frame</span>', 'Black', '4/16', '480', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 'public/media/product/1690210282691298.png', 'public/media/product/1690210282827772.png', 'public/media/product/1690210282879963.png', 1, NULL, NULL);
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(33, 11, 28, 24, 'xiami', 'NC-12', '100', '<table class=\"data-table\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; border-spacing: 0px; background-color: rgb(241, 243, 245); width: 847px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 30px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; background: rgb(151, 161, 161); font-size: 15px; color: rgb(255, 255, 255); font-weight: 600;\">Technical Specification</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Frequency Range</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">20 Hz - 20 kHz</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Impedance</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">32.0</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Sensitivity</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">1kHz - 24dBV/Pa</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Connectivity</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">Wireless</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 30px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; background: rgb(151, 161, 161); font-size: 15px; color: rgb(255, 255, 255); font-weight: 600;\">Warranty Information</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; border-bottom: 1px solid rgb(225, 225, 225);\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; width: 212px; background: rgb(238, 238, 238); text-align: right; color: rgb(70, 68, 68); font-size: 13px; line-height: 35px; font-weight: 600;\">Manufacturing Warranty</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 30px; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; width: 635px; background: rgb(255, 255, 255); color: rgb(34, 34, 34); line-height: 22px;\">No Warrant</td></tr></tbody></table>', 'red', '3/32', '500', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 'public/media/product/1690210378528017.png', 'public/media/product/1690210378582614.png', 'public/media/product/1690210378636843.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bing_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `google_analytics`, `bing_analytics`, `created_at`, `updated_at`) VALUES
(1, 'LH Ecommerce', 'Learn Hunter', 'Ecommerce,Online Store', 'lorem ipsum etc etce ect ;learn hunter is one of the best youtibe channle .....', '112d12812891', '217312381', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vat`, `shipping_charge`, `shopname`, `email`, `phone`, `address`, `logo`, `created_at`, `updated_at`) VALUES
(1, '0', '7', 'Echovel', 'echovel18@gmail.com', '01900000000', 'Dhaka mirpur 1204 muktobangla', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `order_id`, `ship_name`, `ship_phone`, `ship_email`, `ship_address`, `ship_city`, `created_at`, `updated_at`) VALUES
(1, '2', 'Sohidul Islam', '01961363543', 'sohidulislam353@gmail.com', 'Dhaka gandaria sadhona', 'Dhaka', NULL, NULL),
(2, '3', 'Masud Khan', '01961363543', 'sohidulislam353@gmail.com', 'Dhaka Dhanmondi 32 Kalabagan math', 'Dhaka', NULL, NULL),
(3, '4', 'Sohidul Islam', '01961363543', 'sohidulislam343@gmail.com', 'Dhaka Dhanmondi 32 Kalabagan math', 'Dhaka', NULL, NULL),
(4, '5', 'Masud Khan', '01961363543', 'sohidulislam@gmail.com', 'sadas', 'sdas', NULL, NULL),
(5, '6', 'Sohidul Islam', '01961363543', 'sohidulislam353@gmail.com', 'sadas', 'sdas', NULL, NULL),
(6, '7', 'Sohidul Islam', '01961363543', 'sohidulislam353@gmail.com', 'sadas', 'sdas', NULL, NULL),
(7, '8', 'Sohidul Islam', '01961363543', 'sohidulislam@gmail.com', 'sadas', 'sdas', NULL, NULL),
(8, '9', 'sadda', '01620105436', 'saddam312514@gmail.com', 'asdf', 'asdf', NULL, NULL),
(9, '10', 'Md.saddam hossain', '01620105436', 'saddam312514@gmail.com', 'asdf', 'asdf', NULL, NULL),
(10, '11', 'Md.saddam hossain', '01620105436', 'saddam312514@gmail.com', 'asdf', 'asdf', NULL, NULL),
(11, '12', 'Md.saddam hossain', '01620105436', 'saddam312514@gmail.com', 'asdf', 'asdf', NULL, NULL),
(12, '13', 'Fakrul', '01914986254', 'fakrul7469@gmail.com', 'dhaka', 'dhaka', NULL, NULL),
(13, '14', 'Fakrul', '01620105436', 'fakrul7469@gmail.com', 'asdf', 'dhaka', NULL, NULL),
(14, '15', 'Fakrul', '01620105436', 'saddam312514@gmail.com', 'asdf', 'dhaka', NULL, NULL),
(15, '16', 'anupam', '0165857745', 'anupam@gmail.com', 'dhaka', 'motijeel', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitesetting`
--

CREATE TABLE `sitesetting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesetting`
--

INSERT INTO `sitesetting` (`id`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `youtube`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '01620105436', '01531953645', 'eshop@gmail.com', 'E-Shop', 'Malibag,dhaka', 'https://www.facebook.com/e-shop/12', 'https://www.facebook.com/e-shop/12', 'https://www.facebook.com/e-shop/12', 'https://www.facebook.com/e-shop/12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pants', NULL, NULL),
(2, 1, 'Shirt & T-shirt', NULL, NULL),
(3, 1, 'Shoes', NULL, NULL),
(4, 2, 'Hijab and Scarf', NULL, NULL),
(5, 2, 'Three piece', NULL, NULL),
(6, 2, 'Shoes', NULL, NULL),
(7, 5, 'Men\'s Watch', NULL, NULL),
(8, 5, 'Women\'s watch', NULL, NULL),
(9, 5, 'Child Watch', NULL, NULL),
(10, 1, 'Punjabi & Pajama', NULL, NULL),
(11, 2, 'Kurtis', NULL, NULL),
(12, 7, 'Mobile & Tablet', NULL, NULL),
(13, 7, 'Laptop', NULL, NULL),
(14, 7, 'Desktop', NULL, NULL),
(15, 7, 'Camera', NULL, NULL),
(16, 7, 'Television', NULL, NULL),
(17, 7, 'Refrigerator', NULL, NULL),
(18, 6, 'Bed Room', NULL, NULL),
(19, 6, 'Official', NULL, NULL),
(20, 6, 'Dining', NULL, NULL),
(21, 2, 'Jacket', NULL, NULL),
(22, 1, 'Jacket', NULL, NULL),
(23, 15, '4k Monitor', NULL, NULL),
(24, 12, 'Camera Flush', NULL, NULL),
(25, 15, 'Curve', NULL, NULL),
(26, 12, 'Digital Camera', NULL, NULL),
(27, 15, 'Gaming Monitor', NULL, NULL),
(28, 11, 'Smart Phone', NULL, NULL),
(29, 16, 'Node book', NULL, NULL),
(30, 13, 'Server pc', NULL, NULL),
(31, 14, 'Blutooth', NULL, NULL),
(32, 17, 'DDR3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `avatar`, `provider`, `provider_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sohidul Islam', NULL, 'sohidulislam@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$AXmPJQ.tg/8z5VJr6Z9Ar.XJzte2Ytw058vRAes3CxI7CXwAr/CT6', NULL, '2019-10-04 23:27:57', '2019-10-04 23:27:57'),
(6, 'saddam', NULL, 'saddam312514@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$0sXVJ9qpEHEHxQPbOUb5BeIOE7xNp3grKU5I4j66fYKnQPaQpzstC', NULL, '2021-01-19 21:38:44', '2021-01-19 21:38:44'),
(7, 'Fakrul', NULL, 'fakrul7469@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$odxZmZwWy53aNJLoHsgNgevhLezQ2/9VX/EdbCcBdGdG9Z/blCZB.', NULL, '2021-01-22 08:02:04', '2021-01-22 08:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 15, NULL, NULL),
(7, 3, 13, NULL, NULL),
(8, 3, 17, NULL, NULL),
(9, 4, 23, NULL, NULL),
(10, 4, 21, NULL, NULL),
(11, 4, 20, NULL, NULL),
(12, 5, 17, NULL, NULL),
(13, 5, 22, NULL, NULL),
(14, 6, 29, NULL, NULL),
(15, 6, 31, NULL, NULL),
(16, 6, 24, NULL, NULL),
(17, 6, 25, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newslaters`
--
ALTER TABLE `newslaters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitesetting`
--
ALTER TABLE `sitesetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `newslaters`
--
ALTER TABLE `newslaters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sitesetting`
--
ALTER TABLE `sitesetting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
