-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2021 at 03:01 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pergola_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$25jK2P33SPXL8.rIwQQnoOwdalrJXWFWK7BflAGMef2NXDAVbE5Gq', NULL, '2021-01-17 18:30:00', '2021-01-17 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `billing_address_tbls`
--

CREATE TABLE `billing_address_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `final_checkout_id` bigint(20) NOT NULL,
  `final_checkout_session_id` bigint(20) NOT NULL,
  `f_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street1_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `street2_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `email_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `combination_tbl`
--

CREATE TABLE `combination_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `combination_id` bigint(20) NOT NULL,
  `existing_price` double(8,2) NOT NULL,
  `new_price` double(8,2) NOT NULL,
  `canopy_list` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `canopy_price` double(8,2) NOT NULL,
  `left_price` double(8,2) NOT NULL,
  `right_price` double(8,2) NOT NULL,
  `rear_price` double(8,2) NOT NULL,
  `left_rear_price` double(8,2) NOT NULL,
  `right_rear_price` double(8,2) NOT NULL,
  `left_right_rear_price` double(8,2) NOT NULL,
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `combination_tbl`
--

INSERT INTO `combination_tbl` (`id`, `combination_id`, `existing_price`, `new_price`, `canopy_list`, `canopy_price`, `left_price`, `right_price`, `rear_price`, `left_rear_price`, `right_rear_price`, `left_right_rear_price`, `admin_action`, `created_at`, `updated_at`) VALUES
(1, 1, 100.00, 150.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 100.00, 100.00, 100.00, 100.00, 100.00, 100.00, 100.00, 'yes', '2021-03-18 04:00:00', '2021-03-18 04:00:00'),
(2, 2, 100.00, 150.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 100.00, 100.00, 100.00, 100.00, 100.00, 100.00, 100.00, 'yes', '2021-03-18 04:00:00', '2021-03-18 04:00:00'),
(3, 3, 100.00, 150.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 100.00, 100.00, 100.00, 100.00, 100.00, 100.00, 100.00, 'yes', '2021-03-18 04:00:00', '2021-03-18 04:00:00'),
(4, 4, 100.00, 150.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 100.00, 100.00, 100.00, 100.00, 100.00, 100.00, 100.00, 'yes', '2021-03-18 04:00:00', '2021-03-18 04:00:00'),
(5, 5, 100.00, 150.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 100.00, 100.00, 100.00, 100.00, 100.00, 100.00, 100.00, 'yes', '2021-03-18 04:00:00', '2021-03-18 04:00:00'),
(6, 6, 100.00, 150.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 100.00, 100.00, 100.00, 100.00, 100.00, 100.00, 100.00, 'yes', '2021-03-18 04:00:00', '2021-03-18 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `final_before_checkout_product_tbl`
--

CREATE TABLE `final_before_checkout_product_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `final_width` bigint(20) NOT NULL,
  `final_length` bigint(20) NOT NULL,
  `final_no_posts` bigint(20) NOT NULL,
  `final_overhead` bigint(20) NOT NULL,
  `final_post_length` bigint(20) NOT NULL,
  `final_post_mount_type` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `final_post_mount` bigint(20) DEFAULT NULL,
  `final_canopy_type` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `final_canopy` bigint(20) DEFAULT NULL,
  `final_lpanel_type` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `final_lpanel` bigint(20) DEFAULT NULL,
  `final_price` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `final_product_id` bigint(22) NOT NULL,
  `pay_status` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `final_product_tbls`
--

CREATE TABLE `final_product_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pick_footprint` bigint(20) NOT NULL,
  `final_product_img` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `final_footprint_img` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `final_product_tbls`
--

INSERT INTO `final_product_tbls` (`id`, `pick_footprint`, `final_product_img`, `final_footprint_img`, `admin_action`, `created_at`, `updated_at`) VALUES
(1, 1, 'public/final_imgs/ATYciNiOYYvZo2iTEiRD3tyPiErOyexLgnLLQ0nt.jpg', 'public/final_imgs/HQeJQ9SWuUXsTz3g2SxcF3TDOe76Z6HZTqHhfaEP.jpg', 'yes', '2021-03-17 15:00:55', '2021-03-17 15:00:55'),
(2, 2, 'public/final_imgs/kHgXExxaYEgmU7adwB9Xh4fJAkMqq0vOHt3bWkTY.jpg', 'public/final_imgs/hzKoADcLVIYNHHmEaIE6vQtkOohSFsdsQ5BrW0D8.jpg', 'yes', '2021-03-17 15:01:49', '2021-03-17 15:01:49'),
(3, 3, 'public/final_imgs/OrqZo2RlZWm7o77gNbSLurAZKrPIACL4NbHfWquL.jpg', 'public/final_imgs/m1eyV1S9RopOwSvaCktIUXyPN3IQvLKTP3gS3nCK.jpg', 'yes', '2021-03-17 15:02:21', '2021-03-17 15:02:21'),
(4, 4, 'public/final_imgs/ZdJRxJM50EJvSofOCGsP2jtIrIgPjcXZOGJluFCQ.jpg', 'public/final_imgs/y4nZ0QgKZldCfhtzPgbhcttQQhf4w8KwbCF6EAro.jpg', 'yes', '2021-03-17 15:09:00', '2021-03-17 15:09:00'),
(5, 5, 'public/final_imgs/zPPCkcoEoSUdopJfQq5OUVOHc18tc2dTbRbFk6KA.jpg', 'public/final_imgs/ERlzbwpvTXrKg6pMGgRx39zQiq0WfwhzZ9rZm8qK.jpg', 'yes', '2021-03-17 15:09:34', '2021-03-17 15:09:34'),
(6, 6, 'public/final_imgs/c1spsoVwywoDPc5Mhd7cp3bhKAHaIpmmLSMZfMuE.jpg', 'public/final_imgs/VUJD161OBTkNeWABHNihcro6IRvwO9GadaRX21dC.jpg', 'yes', '2021-03-17 15:11:10', '2021-03-17 15:11:10'),
(7, 7, 'public/final_imgs/11oYcnlk75yysrhaChVeHzjpO4TWZwSjowiQthrF.jpg', 'public/final_imgs/GlvD4uet8jfuYITcUBmTgmwVZmGzajnH4fNDMads.jpg', 'yes', '2021-03-17 15:21:14', '2021-03-17 15:21:14'),
(8, 8, 'public/final_imgs/uGC0M4tjWhtyhnsg5omha3uFFf9wzKhy4QSwDvrk.jpg', 'public/final_imgs/Q6mwiSyDd0kOxLcd94MAgeLm0GZRAGMSmxG4Gkei.jpg', 'yes', '2021-03-17 15:21:40', '2021-03-17 15:21:40'),
(9, 9, 'public/final_imgs/6eZTXMbwYRIE3EAubbvw4lq0nEvAtRVobYif4YLa.jpg', 'public/final_imgs/HklQn0xefXZnt1dWlxZyjERxlwPxUjtqWdRwjhsA.jpg', 'yes', '2021-03-17 15:22:08', '2021-03-17 15:22:08'),
(10, 10, 'public/final_imgs/LjmN2SpoD5J7e9CvZDOlu7Ps8wdETx9MfWwrCtmq.jpg', 'public/final_imgs/hDdTVGEGHheb3UrbDUySu2q6UjrbFIh390tL8mn1.jpg', 'yes', '2021-03-17 15:22:29', '2021-03-17 15:22:29'),
(11, 11, 'public/final_imgs/DJzAO2CMVKKQ5XaTZ39ZZFU6DP5aFAZhHUCK83g2.jpg', 'public/final_imgs/JnVIzHBppXN6cakiuMcBhELb3QvLAdoDfPkSuvly.jpg', 'yes', '2021-03-17 15:22:50', '2021-03-17 15:22:50'),
(12, 12, 'public/final_imgs/purowVbDzxPEnzIQoNpG5KT1UYf8h10SknVZytjb.jpg', 'public/final_imgs/eFiE1G64uRWMH67t9FM3PlNy64lRCOJosZnbXzgF.jpg', 'yes', '2021-03-17 15:23:16', '2021-03-17 15:23:16'),
(13, 13, 'public/final_imgs/NI8HyB3kMjV75YRufvJoNI5gR4Zo7pHc6iXkBmiM.jpg', 'public/final_imgs/avHDpUXGA711LThUgl7xhJfZwBpKGj8ylX4Yxbz7.jpg', 'yes', '2021-03-17 15:25:32', '2021-03-17 15:25:32'),
(14, 14, 'public/final_imgs/jouHaY8nNSfOqwWwomIAfURGFIoQ88Tpcr3beagN.jpg', 'public/final_imgs/cc2mf4FQhGlcdTlTZnu0Za7oEg3jK0eBWLsQBLTb.jpg', 'yes', '2021-03-17 15:25:55', '2021-03-17 15:25:55'),
(15, 15, 'public/final_imgs/oXIIYSxhXINMtQeMfYPehmZJdzsUYqHKIq5G0owC.jpg', 'public/final_imgs/MpdfLqfdbOnhXrfaVZpsUYySPIR6LZsKSwVovAuQ.jpg', 'yes', '2021-03-17 15:26:18', '2021-03-17 15:26:18'),
(16, 16, 'public/final_imgs/ffZ8QUpQ9wPHwMHKqD2ySRYcz88xIt8bfiB87XGB.jpg', 'public/final_imgs/qhRm1pMhJTcNKF1OswMkcmSSb1MbzRJ6F8ED8dUf.jpg', 'yes', '2021-03-17 15:27:01', '2021-03-17 15:27:01'),
(17, 17, 'public/final_imgs/fDVjKuc6xb8vDTvglzvlfIosHRMDWBReqGlxwFtr.jpg', 'public/final_imgs/DUA8u3QTDCPMsuWIXL0YkjKCNuMbWbiJK1kbTcEF.jpg', 'yes', '2021-03-17 15:27:25', '2021-03-17 15:27:25'),
(18, 18, 'public/final_imgs/O4VALsunbuoHpUwYFgSprCTO6bPg0EJbt7OX7KGM.jpg', 'public/final_imgs/qdK7lh9E1Dd4fNij5hDd2ufRk4xqDVIvpHbAH0Xh.jpg', 'yes', '2021-03-17 15:27:47', '2021-03-17 15:27:47'),
(19, 19, 'public/final_imgs/c7aDHdN0m5ZhXGsmt6p47pjkbqQ01pd7k5jolz84.jpg', 'public/final_imgs/AWuDeJHsW28YDsJkfoan7GiZ9DQJgduGRyFUTqZe.jpg', 'yes', '2021-03-17 15:28:14', '2021-03-17 15:28:14'),
(20, 20, 'public/final_imgs/agAT3hUNSyYZzQISYsGay0RUcPO0tf9t9OOVkX1r.jpg', 'public/final_imgs/b82K982v8GVTy4MGPfwfvhwKsyBQmDHNXqlJQSKj.jpg', 'yes', '2021-03-17 15:28:46', '2021-03-17 15:28:46'),
(21, 21, 'public/final_imgs/Wc4MGjHPzc5i0IsBWZqYCjVg0PEaZsLB41nmeRca.jpg', 'public/final_imgs/8uuqU5tIEiVNPPSkN5Pr0rMDlrS3aF5wuCS5ws5m.jpg', 'yes', '2021-03-17 15:29:38', '2021-03-17 15:29:38'),
(22, 22, 'public/final_imgs/uFar380SKCnd1sKIkLFTvtKspdbndFjtPIFd5R8l.jpg', 'public/final_imgs/Q3vcHNNQwS1OBuTcXbta2o9i3sWMhmcG35Cjrykk.jpg', 'yes', '2021-03-17 15:29:59', '2021-03-17 15:29:59'),
(23, 23, 'public/final_imgs/YUV3Zw2kyoKv5UVYibOuKUq8Z9Js6pb91UrFE6bV.jpg', 'public/final_imgs/bzmZ4IrD3Tsn2NGwgaYK5Pr74LqUY4oEgu9GS9wn.jpg', 'yes', '2021-03-17 15:30:34', '2021-03-17 15:30:34'),
(24, 24, 'public/final_imgs/MrszItNtndSMB1nLU2XfOCH7qu2eeiU64TRixBO8.jpg', 'public/final_imgs/o2Suh6xNFF95MljAicJzU6oNaM6G9ntKfnp8LVa8.jpg', 'yes', '2021-03-17 15:31:04', '2021-03-17 15:31:04'),
(25, 25, 'public/final_imgs/0AGDi7slbz3RhXxKW6TDwKHJcMcATS5kR0HwQr7U.jpg', 'public/final_imgs/FDmsuGSf8j2YGnvMr03DVIBerT7gImvpms0Bg8eQ.jpg', 'yes', '2021-03-17 15:59:00', '2021-03-17 15:59:00'),
(26, 26, 'public/final_imgs/qnVat8TR4BmBns625VNvuI8jrIAcLq50kMV9sXy6.jpg', 'public/final_imgs/1vD9LKk7Lzlo5GrmjareVxYZcGCSb1gDuVGjCvU2.jpg', 'yes', '2021-03-17 16:00:50', '2021-03-17 16:00:50'),
(27, 27, 'public/final_imgs/Vvf3LPQMA4seYHASfZm9PEP9KBTQZC70GQdEyk5M.jpg', 'public/final_imgs/at1jtHz756fmtGztJyugCWFeXZEa5cNrRhRnGce1.jpg', 'yes', '2021-03-17 16:01:26', '2021-03-17 16:01:26'),
(28, 28, 'public/final_imgs/wNslHL9tCWCQHpHOiROX5DaMioQGijq7q9nDEeKg.jpg', 'public/final_imgs/hqqRmTakzvkm12aoJQLjqRutk25939IcjC1CfzLZ.jpg', 'yes', '2021-03-17 16:01:55', '2021-03-17 16:01:55'),
(29, 29, 'public/final_imgs/cvzxc5GxPQUUqVyp7bQX4MpQbGOFujn3DeMLKjHJ.jpg', 'public/final_imgs/XTFq7aaD6sX1G7Vhni3jwJbiOpy57LmJYKbIlKgk.jpg', 'yes', '2021-03-17 16:02:18', '2021-03-17 16:02:18'),
(30, 30, 'public/final_imgs/QDQ7r0RsfbARlgyFW1ieYkyHTtdZrGvnLZKxNSye.jpg', 'public/final_imgs/95lWid0efXTkfbbvEWCtGPVvCG8n9dHRZDRUo1vr.jpg', 'yes', '2021-03-17 16:02:40', '2021-03-17 16:02:40'),
(31, 31, 'public/final_imgs/nD3b3hypXuDSW937paUcyZsENLsiLNzslMR3zYPR.jpg', 'public/final_imgs/pfxxsJRK9vPpfVuIgb8W1PR9QdAj0p6K92zTayfu.jpg', 'yes', '2021-03-17 16:21:17', '2021-03-17 16:21:17'),
(32, 32, 'public/final_imgs/3cZTD5iJFIw1XuePZsKmWUA3jlD7KZlLLwm1NJWJ.jpg', 'public/final_imgs/Ymwc7WL2uoINptcvqxY0BPXfDMdk7uBrS3F0BQx4.jpg', 'yes', '2021-03-17 16:21:38', '2021-03-17 16:21:38'),
(33, 33, 'public/final_imgs/Ps2wdrYbED4auLgBd4LMVs7vOBdSz5x8hXQMcsmJ.jpg', 'public/final_imgs/L3dAi5EqnfHR7JYQTrLHO2W0cygvnKKKwA6zrb4H.jpg', 'yes', '2021-03-17 16:22:05', '2021-03-17 16:22:05'),
(34, 34, 'public/final_imgs/qFhIguwfryD9W1jm3GDnySR0wiqdo1GrcpJeXcUQ.jpg', 'public/final_imgs/JqenArPCpMC9TKHiRupnhCLQmUbdGe7YQC6QBH1k.jpg', 'yes', '2021-03-17 16:22:27', '2021-03-17 16:22:27'),
(35, 35, 'public/final_imgs/Gdf04GWCEYYWtG8u3YFyqsnY7OfqUGmmHb4gh696.jpg', 'public/final_imgs/Nm5ITcvBTRjzMrvwdWUvDWndLEL51B7CpGEFEStS.jpg', 'yes', '2021-03-17 16:22:49', '2021-03-17 16:22:49'),
(36, 36, 'public/final_imgs/D5HdJepkYxMhIXL5ryO4K1LGFkI6POVB8nVBpeKR.jpg', 'public/final_imgs/TwJ0pevhG2OdjH6GhICFSOwTejSW4qRch6Wk0rMv.jpg', 'yes', '2021-03-17 16:23:10', '2021-03-17 16:23:10'),
(37, 37, 'public/final_imgs/bgAscSwkiHHeH4y21IZdUXk9mLPO7hUQMgqJV5iE.jpg', 'public/final_imgs/9VrUb9FlgwytcowdSO6EfBaGNl4UKYPq7hLbmRkx.jpg', 'yes', '2021-03-17 16:56:32', '2021-03-17 16:56:32'),
(38, 38, 'public/final_imgs/nQXt4t1IT3YiHr7jaOZzh4SsTOTmKTx6qScOKaJX.jpg', 'public/final_imgs/CyT0nWPtR1JppCpSKLEpfeZBUnr1Zko2UO9ygqp4.jpg', 'yes', '2021-03-17 16:58:30', '2021-03-17 16:58:30'),
(39, 39, 'public/final_imgs/cE3SCFRSjqdWNurOR2oIiPjvWr5Xn7x0lwKb1XR4.jpg', 'public/final_imgs/dlVdp4awUCtdPa7eF8jD8ySG4nyMQA5IMkHUMQTz.jpg', 'yes', '2021-03-17 16:59:06', '2021-03-17 16:59:06'),
(40, 40, 'public/final_imgs/NYCoXqI7aUrxEM7BZfyaDncabcNztMSpF3Rr2bnm.jpg', 'public/final_imgs/XdUqsDyhmCgUELq19TWBE7xkPqaJMsImW9ckw2Zg.jpg', 'yes', '2021-03-17 17:14:55', '2021-03-17 17:14:55'),
(41, 41, 'public/final_imgs/uCDCTyht0sDhO9mtsSNR71dh2pEuvzzl2bJVobdE.jpg', 'public/final_imgs/rHgFgME0VakTyDE6571XaztJxpYn661AwHJENRJq.jpg', 'yes', '2021-03-17 17:15:49', '2021-03-17 17:15:49'),
(42, 42, 'public/final_imgs/PDevbo4Z1OToEnjqgCcetta3NMMvCHKctJ1gU28G.jpg', 'public/final_imgs/5R4bP0Q5uTZNxatsCk5JcWXTRK0UlK8kKY1ry1Ny.jpg', 'yes', '2021-03-17 17:16:13', '2021-03-17 17:16:13'),
(43, 43, 'public/final_imgs/NCeI72OHewhMdFkacsL5OnqY9MJFNpATOovdMmQn.jpg', 'public/final_imgs/yXEKRssFHcVCXU14disaBDl7FPVSkedwEKF097T3.jpg', 'yes', '2021-03-18 09:12:48', '2021-03-18 09:12:48'),
(44, 44, 'public/final_imgs/xybLGjYoejriF59uKKpLm7KnYj3YSol1mOj6FNaq.jpg', 'public/final_imgs/XHXMzIyzjKkC1pufA6zPXXKFsTnuhonkGpPQcsGa.jpg', 'yes', '2021-03-18 09:13:19', '2021-03-18 09:13:19'),
(45, 45, 'public/final_imgs/J9jjv0F6ZLSoKxydG3owCYhp0wDy0lyN9o0otkRa.jpg', 'public/final_imgs/Cp0sHGTkQCrbS8o5PjIoY8AI86yhMRxSYVIQ0rnO.jpg', 'yes', '2021-03-18 09:13:44', '2021-03-18 09:13:44'),
(46, 46, 'public/final_imgs/chWoNP1wqDo6lbb6do0pkVwagrdQOCRjpm1c44zk.jpg', 'public/final_imgs/DUgxFc1Rc9a0WDTeNxp8PUgESUcTHkBItYPglh52.jpg', 'yes', '2021-03-18 09:14:11', '2021-03-18 09:14:11'),
(47, 47, 'public/final_imgs/gQi9AMNmDcdAKQUEswWk4Glt93UulPO2T3JRkqIq.jpg', 'public/final_imgs/dEzKVsXL313DSAE74AHzUZl6FJXOl5NqYCOL52op.jpg', 'yes', '2021-03-18 09:14:36', '2021-03-18 09:14:36'),
(48, 48, 'public/final_imgs/HRPP3o2TNfLUPvVNrHfiKlc86Y44VFX7jowSQoow.jpg', 'public/final_imgs/LatcDY5Ev8g62BLPWOFrzCNxYE0X3KzLAuOxHwcs.jpg', 'yes', '2021-03-18 09:15:00', '2021-03-18 09:15:00'),
(49, 49, 'public/final_imgs/8YOgUpVhQVDbY2qO7NWsITUev7dN5xviLMByrkNJ.jpg', 'public/final_imgs/8yELBfIVW2Ycsq3ur0p4NhcwoUB5QiJTGtDcfiRe.jpg', 'yes', '2021-03-18 09:28:18', '2021-03-18 09:28:18'),
(50, 50, 'public/final_imgs/sLJsBfKBz15TfTBKrWjmwAO61BpRaVkGRPkCmNSC.jpg', 'public/final_imgs/eMUZMncSBHRY6TlISVWZpNOhORqhePVZlO3tGo5v.jpg', 'yes', '2021-03-18 09:28:44', '2021-03-18 09:28:44'),
(51, 51, 'public/final_imgs/sO65ZsW1vjoQbkZWJr2RZY12RTA5eN2NUWKkeUgY.jpg', 'public/final_imgs/vUQRvmeac8UopLWRo3gxxqb16qLMWaC7dMrF5Avi.jpg', 'yes', '2021-03-18 09:29:10', '2021-03-18 09:29:10'),
(52, 52, 'public/final_imgs/1dKNSQOeGu0sO53jNwjoJdVsp0rWQjixe1nLpB7r.jpg', 'public/final_imgs/QXoIuyGfdNXVDrrjDkGgp7mmBgRn4gBhpVWIXMRC.jpg', 'yes', '2021-03-18 09:30:27', '2021-03-18 09:30:27'),
(53, 53, 'public/final_imgs/NM6h79TXKNCSPII0K9GGS0uGawLydvo6RV1ZbjWf.jpg', 'public/final_imgs/Ms8VWJdbMhfSJqQ1rz9szp0zBTIe4ybXmMW62DYf.jpg', 'yes', '2021-03-18 09:30:52', '2021-03-18 09:30:52'),
(54, 54, 'public/final_imgs/7iBmWobq3N4LvOktjTf7URVv8vQijQioLD5OLfok.jpg', 'public/final_imgs/ssnCysU0vrQCC35uBx37kskQjPbAuN9D6h0MOCCC.jpg', 'yes', '2021-03-18 09:31:14', '2021-03-18 09:31:14'),
(55, 55, 'public/final_imgs/XFqISuCGsx3uGbh9FCsLfDQRzi1jC5m3dYImBP18.jpg', 'public/final_imgs/jbQvwmi7liia7RwT7RSnadRxpW31ws7R0onlfLeK.jpg', 'yes', '2021-03-18 09:41:38', '2021-03-18 09:41:38'),
(56, 56, 'public/final_imgs/CS1WQmdF6LhmWqxOOuAopgWXKwDxTFHEu0ffTlgG.jpg', 'public/final_imgs/NhDuX1t5oOTgNk8TqXypVRF8xPgZj12hVbJ6zE7J.jpg', 'yes', '2021-03-18 09:42:06', '2021-03-18 09:42:06'),
(57, 57, 'public/final_imgs/dnxrlQ16Ut2j3lFUI20v51M6C6e0D0xlKDHip4mo.jpg', 'public/final_imgs/prdvMJzYLRqurMovHVYvVAew1cZjSc0wxnjAnBW0.jpg', 'yes', '2021-03-18 09:42:30', '2021-03-18 09:42:30'),
(58, 58, 'public/final_imgs/MpGGEon5bbhPEsA5N3W6Nl6ZvHTCaIpLlfe5DSIR.jpg', 'public/final_imgs/YhMjSMLjkWXivjK97VNOhjifGjhFmotwDN1OHwH6.jpg', 'yes', '2021-03-18 09:42:58', '2021-03-18 09:42:58'),
(59, 59, 'public/final_imgs/jdv3IfoE7VQSpCctMZE5gwZUGlF34tTdZam3eQcR.jpg', 'public/final_imgs/4nIt8rps4EQVUqRfYSZiGkyAXkG5y7QG0BixX4ZR.jpg', 'yes', '2021-03-18 09:43:26', '2021-03-18 09:43:26'),
(60, 60, 'public/final_imgs/k7lw1FBnbCKRIg4B3O0A5NOtAKKNOs2BEqFjtdNi.jpg', 'public/final_imgs/TGy20rcXPKjbFLsfES2U0kIp5ch58bDYKkQlZwko.jpg', 'yes', '2021-03-18 09:44:11', '2021-03-18 09:44:11'),
(61, 61, 'public/final_imgs/yb5rRrXJbaAwsXmyP2gUpWsuO2Dn29yHpKhmZpo8.jpg', 'public/final_imgs/MQ6lAKPufqIajHiRsByD4EuPdNDro0b3tLDjw3MN.jpg', 'yes', '2021-03-18 09:56:44', '2021-03-18 09:56:44'),
(62, 62, 'public/final_imgs/Asw0tsX8pS98IM4OnQHIYRuzKaRkA8TFnxtfhnz8.jpg', 'public/final_imgs/b9IxOecwpfyH6EAsyAIdGHgR5DpkVHsNTk5oDVOS.jpg', 'yes', '2021-03-18 09:57:04', '2021-03-18 09:57:04'),
(63, 63, 'public/final_imgs/qdOMJjpGtSMwjqxOfvyRl6R0dvrPc5yunWcBDneY.jpg', 'public/final_imgs/RUUWqwfgex9lgabBK1puq9oaPh53VLs9EHtFk3g4.jpg', 'yes', '2021-03-18 09:57:33', '2021-03-18 09:57:33'),
(64, 64, 'public/final_imgs/hkqB6qjFZy3ZbSN6lHghZiJzIqa8aqbEUnoskRMO.jpg', 'public/final_imgs/sIaARJgHIgc7J1CvUq6Cv3Fjtja9L9gyrnJgBpFn.jpg', 'yes', '2021-03-18 09:58:53', '2021-03-18 09:58:53'),
(65, 65, 'public/final_imgs/JmULs7JzTm6PZTOfqtbYnIEw1MM2fvwFu3txJ6OF.jpg', 'public/final_imgs/xkl0wWPWHzPCKtpJ6F9jZ9SCTSGDIeZKudR59AH5.jpg', 'yes', '2021-03-18 09:59:13', '2021-03-18 09:59:13'),
(66, 66, 'public/final_imgs/kntvvciDYVbE8MPAAgwuA5H48FqHnFoqvw4eZCqL.jpg', 'public/final_imgs/GOX2DsLmmwYJp2KR9CGxCnOcnckgXccnwGSjF0fk.jpg', 'yes', '2021-03-18 09:59:35', '2021-03-18 09:59:35'),
(67, 67, 'public/final_imgs/ahEUZEx26OoBSiaui6OufreEvym3s1KFpJfCsPq2.jpg', 'public/final_imgs/6oEAfsJc47h90zkQxkOjjNNcLL9b6JBaM4aOlFlX.jpg', 'yes', '2021-03-18 10:10:50', '2021-03-18 10:20:13'),
(68, 68, 'public/final_imgs/31w0bBgnwQGHkuk1JxM4FnTzZqRMxHeV7MiRZUeR.jpg', 'public/final_imgs/8eWfaqvmS71D6m2Szw9H3yVQ4PfM2h1nOSRVO5d7.jpg', 'yes', '2021-03-18 10:11:12', '2021-03-18 10:20:48'),
(69, 69, 'public/final_imgs/0AkQPBBOfJGJdDXJ1XTjIUJX8R6p99EYjNEUQbSx.jpg', 'public/final_imgs/SRDCLHwvowj9dondHeswmUq7tHNuLRGe4g9dPLA9.jpg', 'yes', '2021-03-18 10:11:36', '2021-03-18 10:21:19'),
(70, 70, 'public/final_imgs/inASjUdHrZtdPNEVB5EaEVjDwElv1FYfSz7T7EE8.jpg', 'public/final_imgs/CC4XVzE3cXBQikgteSJgsGEVicIjDfN2qIGsJWRo.jpg', 'yes', '2021-03-18 10:12:28', '2021-03-18 10:12:28'),
(71, 71, 'public/final_imgs/lROLSN3jXZCuq8mf62WRmeas0Y5OtZzPVd2AUZyk.jpg', 'public/final_imgs/9BcN86oVOiuraBQghVtu3xkcETya4YCNRjlnQsdm.jpg', 'yes', '2021-03-18 10:12:53', '2021-03-18 10:12:53'),
(72, 72, 'public/final_imgs/EYqJ6arLE9Ix3Q3r5vsAQseEpNVYRX63WFy04IJ3.jpg', 'public/final_imgs/qac5UTNwLriIpDuQeezmdsaklMVVbnKVUDZP6LMJ.jpg', 'yes', '2021-03-18 10:13:22', '2021-03-18 10:13:22'),
(73, 73, 'public/final_imgs/BQlwqfS0z4mQDQNp1CajxEQwNgBAjMXJYulxSrQg.jpg', 'public/final_imgs/8baPEAitdRjBC1zyWpbThSfgfavQZI3WFkbj8p1A.jpg', 'yes', '2021-03-18 10:32:12', '2021-03-18 10:32:12'),
(74, 79, 'public/final_imgs/7tUhcdGrHq5l2py3foGvM0OVut1hQdqsMRxkBN0N.jpg', 'public/final_imgs/jekSyTWFcxwVwXNvS0KN3o4nsND0j4IHO0uiyhKu.jpg', 'yes', '2021-03-18 11:06:14', '2021-03-18 11:06:14'),
(75, 80, 'public/final_imgs/fMSnIQq8tuImjjOUNWkFo7oGMYElXtKKXh76hrtg.jpg', 'public/final_imgs/ndGpb018nEs3gjnFjVKpW0YZQIuYXdrNTkIutUkD.jpg', 'yes', '2021-03-18 11:06:49', '2021-03-18 11:06:49'),
(76, 81, 'public/final_imgs/KUlD6nqgfntSE6T377A9rw0zo5hJXiPGEO44AIkm.jpg', 'public/final_imgs/IxJwx57C1tP6LNc0cZ5GK5ihMOrjHTgMNrLXHrpm.jpg', 'yes', '2021-03-18 11:07:17', '2021-03-18 11:07:17'),
(77, 82, 'public/final_imgs/OuhEyNZSzIdwhQApWmGRzcR9e7ysSlpMvubz2yco.jpg', 'public/final_imgs/rh6qDXgqAZEsReoVQYjl1IH0gWQCU9wWUhHzJFHx.jpg', 'yes', '2021-03-18 11:07:48', '2021-03-18 11:07:48'),
(78, 83, 'public/final_imgs/ChYpSzc5o0EBJV1LQLp57qGJIKlKSI8APPIcv5FM.jpg', 'public/final_imgs/SdXCMUZIEutn2KIi8ocxU0quRCPOqRXs21gShfJV.jpg', 'yes', '2021-03-18 11:08:16', '2021-03-18 11:08:16'),
(79, 84, 'public/final_imgs/KLbx7qT0kDAN4z9HjNAuvrfF9Ohd790HNoF6DOJN.jpg', 'public/final_imgs/F3Icy2uFe8kQ4v9SC4A60LTsgNGwtABijho1tOqO.jpg', 'yes', '2021-03-18 11:08:44', '2021-03-18 11:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `master_height_tbls`
--

CREATE TABLE `master_height_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_height_length` double(8,1) DEFAULT NULL,
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_height_tbls`
--

INSERT INTO `master_height_tbls` (`id`, `master_height_length`, `admin_action`, `created_at`, `updated_at`) VALUES
(1, 8.0, 'yes', '2021-03-17 09:26:15', '2021-03-17 09:26:15'),
(2, 8.5, 'yes', '2021-03-17 11:58:04', '2021-03-17 11:58:04'),
(3, 9.0, 'yes', '2021-03-17 11:58:13', '2021-03-17 11:58:13'),
(4, 9.5, 'yes', '2021-03-17 11:58:22', '2021-03-17 11:58:22'),
(5, 10.0, 'yes', '2021-03-17 11:58:31', '2021-03-17 11:58:31'),
(6, 10.5, 'yes', '2021-03-17 11:58:58', '2021-03-17 11:58:58'),
(7, 11.0, 'yes', '2021-03-17 11:59:06', '2021-03-17 11:59:06'),
(8, 11.5, 'yes', '2021-03-17 11:59:15', '2021-03-17 11:59:15'),
(9, 12.0, 'yes', '2021-03-17 11:59:23', '2021-03-17 11:59:23'),
(10, 12.5, 'yes', '2021-03-17 11:59:34', '2021-03-17 11:59:34'),
(11, 13.0, 'yes', '2021-03-17 11:59:42', '2021-03-17 11:59:42'),
(12, 13.5, 'yes', '2021-03-17 11:59:53', '2021-03-17 11:59:53'),
(13, 14.0, 'yes', '2021-03-17 12:00:04', '2021-03-17 12:00:04'),
(14, 14.5, 'yes', '2021-03-17 12:00:18', '2021-03-17 12:00:18'),
(15, 15.0, 'yes', '2021-03-17 12:00:33', '2021-03-17 12:00:33'),
(16, 15.5, 'yes', '2021-03-17 12:00:50', '2021-03-17 12:00:50'),
(17, 16.0, 'yes', '2021-03-17 12:01:03', '2021-03-17 12:01:03'),
(18, 16.5, 'yes', '2021-03-17 12:01:12', '2021-03-17 12:01:12'),
(19, 17.0, 'yes', '2021-03-17 12:01:19', '2021-03-17 12:01:19'),
(20, 17.5, 'yes', '2021-03-17 12:01:28', '2021-03-17 12:01:28'),
(21, 18.0, 'yes', '2021-03-17 12:01:39', '2021-03-17 12:01:39'),
(22, 18.5, 'yes', '2021-03-17 12:01:48', '2021-03-17 12:01:48'),
(23, 19.0, 'yes', '2021-03-17 12:01:58', '2021-03-17 12:01:58'),
(24, 19.5, 'yes', '2021-03-17 12:02:07', '2021-03-17 12:02:07'),
(25, 20.0, 'yes', '2021-03-17 12:02:14', '2021-03-17 12:02:14'),
(26, 20.5, 'yes', '2021-03-17 12:02:23', '2021-03-17 12:02:23'),
(27, 21.0, 'yes', '2021-03-17 12:02:31', '2021-03-17 12:02:31'),
(28, 21.5, 'yes', '2021-03-17 12:02:42', '2021-03-17 12:02:42'),
(29, 22.0, 'yes', '2021-03-17 12:02:50', '2021-03-17 12:02:50'),
(30, 22.5, 'yes', '2021-03-17 12:02:58', '2021-03-17 12:02:58'),
(31, 23.0, 'yes', '2021-03-17 12:03:09', '2021-03-17 12:03:09'),
(32, 23.5, 'yes', '2021-03-17 12:03:18', '2021-03-17 12:03:18'),
(33, 24.0, 'yes', '2021-03-17 12:04:20', '2021-03-17 12:04:20'),
(34, 24.5, 'yes', '2021-03-17 12:04:28', '2021-03-17 12:04:28'),
(35, 25.0, 'yes', '2021-03-17 12:04:38', '2021-03-17 12:04:38'),
(36, 25.5, 'yes', '2021-03-17 12:04:46', '2021-03-17 12:04:46'),
(37, 26.0, 'yes', '2021-03-17 12:04:56', '2021-03-17 12:04:56'),
(38, 26.5, 'yes', '2021-03-17 12:05:07', '2021-03-17 12:05:07'),
(39, 27.0, 'yes', '2021-03-17 12:05:18', '2021-03-17 12:05:18'),
(40, 27.5, 'yes', '2021-03-17 12:05:28', '2021-03-17 12:05:28'),
(41, 28.0, 'yes', '2021-03-17 12:05:36', '2021-03-17 12:05:36'),
(42, 28.5, 'yes', '2021-03-17 12:06:46', '2021-03-17 12:06:46'),
(43, 29.0, 'yes', '2021-03-17 12:06:54', '2021-03-17 12:06:54'),
(44, 29.5, 'yes', '2021-03-17 12:07:03', '2021-03-17 12:07:03'),
(45, 30.0, 'yes', '2021-03-17 12:07:11', '2021-03-17 12:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `master_post_length_tbl`
--

CREATE TABLE `master_post_length_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_post_length` float NOT NULL,
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_post_length_tbl`
--

INSERT INTO `master_post_length_tbl` (`id`, `master_post_length`, `admin_action`, `created_at`, `updated_at`) VALUES
(1, 9, 'yes', '2021-03-17 12:19:45', '2021-03-17 12:19:45'),
(2, 12, 'yes', '2021-03-17 12:19:55', '2021-03-17 12:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `master_width_tbls`
--

CREATE TABLE `master_width_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_width_length` double(8,1) DEFAULT NULL,
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_width_tbls`
--

INSERT INTO `master_width_tbls` (`id`, `master_width_length`, `admin_action`, `created_at`, `updated_at`) VALUES
(1, 8.0, 'yes', '2021-03-17 09:26:27', '2021-03-17 09:26:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_11_24_123649_create-admin-table', 1),
(4, '2021_01_19_104440_create-piller-post-table', 2),
(5, '2021_01_20_055601_create-pickup-footprint-table', 3),
(6, '2021_01_20_061120_alter-add-price-pickup-footprint-table', 4),
(7, '2021_01_21_045249_create-pick-overhead-shades-table', 5),
(8, '2021_01_21_050123_alter-pick-overhead-shades-table', 6),
(9, '2021_01_21_103416_create-pick-post-length-table', 7),
(10, '2021_01_21_122332_create-pick-slap-table', 8),
(12, '2021_01_21_130712_create-pick-canopy-table', 9),
(13, '2021_01_22_044158_create-pick-louvered-panel-table', 10),
(14, '2021_01_22_095740_create-final-product-table', 11),
(15, '2021_01_25_045049_create-master-width-table', 12),
(16, '2021_01_25_045439_create-master-height-table', 13),
(17, '2021_03_15_052624_create-master-overhead-shades-tbl', 14),
(18, '2021_03_15_073112_alter-pergola-overhead-shade-tbl', 15),
(19, '2021_03_16_071302_create-master-post-length-tbl', 16),
(20, '2021_03_16_085839_alter-post-length-table', 17),
(21, '2021_03_16_123153_create-combination-tbl', 18);

-- --------------------------------------------------------

--
-- Table structure for table `overhead_shades_tbl`
--

CREATE TABLE `overhead_shades_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `overhead_shades_val` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `overhead_shades_tbl`
--

INSERT INTO `overhead_shades_tbl` (`id`, `overhead_shades_val`, `admin_action`, `created_at`, `updated_at`) VALUES
(1, 'open', 'yes', '2021-03-17 12:20:15', '2021-03-17 12:20:15'),
(3, 'regular', 'yes', '2021-03-17 12:21:04', '2021-03-17 12:21:04'),
(5, 'sunblocker', 'yes', '2021-03-17 12:21:31', '2021-03-17 12:21:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_footprint_tbls`
--

CREATE TABLE `pickup_footprint_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `height_master` bigint(22) NOT NULL,
  `width_master` bigint(22) NOT NULL,
  `posts_master` bigint(20) NOT NULL,
  `price_master` double(8,2) NOT NULL,
  `img_master` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickup_footprint_tbls`
--

INSERT INTO `pickup_footprint_tbls` (`id`, `height_master`, `width_master`, `posts_master`, `price_master`, `img_master`, `admin_action`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 100.00, 'public/pick-up-footage/master/nj1BsOIk1CH2HhpFrrC6lHdHqvvY0HwSHtHjsR3t.jpg', 'yes', '2021-03-17 12:08:25', '2021-03-17 13:08:50'),
(2, 2, 1, 1, 100.00, 'public/pick-up-footage/master/otQRS37uuMUON46wgMdsLuW9OFt0Nk6HPe5ZRFEz.jpg', 'yes', '2021-03-17 13:44:41', '2021-03-17 14:43:03'),
(3, 4, 1, 1, 100.00, 'public/pick-up-footage/master/5xJya5G7z1K42ZfJXKfR91bR9LM9IYjYNdwv0MgH.jpg', 'yes', '2021-03-17 14:25:09', '2021-03-17 14:43:14'),
(4, 3, 1, 1, 100.00, 'public/pick-up-footage/master/8CtCMyVzf2qTiGEBJ37UwsN4jlrt6WU6b5pL2pvg.jpg', 'yes', '2021-03-17 14:47:02', '2021-03-17 14:47:02'),
(5, 5, 1, 1, 100.00, 'public/pick-up-footage/master/9SnDUAUnk0qSH0HXwQSLp0ac0qCyQbbMOfkLnuRL.jpg', 'yes', '2021-03-17 15:14:45', '2021-03-17 15:14:45'),
(6, 6, 1, 1, 100.00, 'public/pick-up-footage/master/BDta1scZUxBO4A5pvANJ0FDnPvFD6OBHVNSrkJxz.jpg', 'yes', '2021-03-17 16:10:52', '2021-03-17 16:10:52'),
(7, 7, 1, 1, 100.00, 'public/pick-up-footage/master/lLe7t8XhNIR32hVpVTrwDJxYZ5sugo6mSBJer6ow.jpg', 'yes', '2021-03-17 16:34:58', '2021-03-17 16:34:58'),
(8, 8, 1, 1, 100.00, 'public/pick-up-footage/master/CCI40XFzr9780rF9KKRJFYaWce0aKbScAFcCJs8f.jpg', 'yes', '2021-03-18 09:06:24', '2021-03-18 09:06:24'),
(9, 9, 1, 1, 100.00, 'public/pick-up-footage/master/kgmNebqi2KQrKi2hrjuRwdHC7R7p6mOawU8pfhsE.jpg', 'yes', '2021-03-18 09:19:29', '2021-03-18 09:19:29'),
(10, 10, 1, 1, 100.00, 'public/pick-up-footage/master/BOmOcr3IZyvTbOVAnSoIPsb1KVvIQlRPFHNdhEGY.jpg', 'yes', '2021-03-18 09:35:26', '2021-03-18 09:35:26'),
(11, 11, 1, 1, 100.00, 'public/pick-up-footage/master/SFBPfmTC647cIesbe3E6gi2namdDJMTZ3fqeLE55.jpg', 'yes', '2021-03-18 09:48:07', '2021-03-18 09:48:07'),
(12, 12, 1, 1, 100.00, 'public/pick-up-footage/master/yG0i9l2yo2zGvQDeBu9u0VOgIUWcx7Zh14FwqeHw.jpg', 'yes', '2021-03-18 10:04:01', '2021-03-18 10:04:01'),
(13, 13, 1, 1, 100.00, 'public/pick-up-footage/master/66VIiUoY8dcK58odNEuMWk3VE6XW6mftsvqeWJaZ.jpg', 'yes', '2021-03-18 10:26:45', '2021-03-18 10:26:45'),
(14, 13, 1, 2, 150.00, 'public/pick-up-footage/master/RCykGciMBgbsKFHLxlKSIhM5z5gcgCKWX3u94euH.jpg', 'yes', '2021-03-18 10:57:01', '2021-03-18 04:01:41'),
(15, 16, 1, 2, 150.00, 'public/pick-up-footage/master/e91y8gc7fWR1weTUG76LXabVW6xWyhF0A3sOrRHq.jpg', 'yes', '2021-03-18 11:13:15', '2021-03-18 11:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `pick_canopy_tbls`
--

CREATE TABLE `pick_canopy_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `canopy_question` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canopy_note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canopy_price` double(8,2) NOT NULL,
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pick_louvered_panel_tbls`
--

CREATE TABLE `pick_louvered_panel_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `l_panel_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_panel_price` double(8,2) NOT NULL,
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pick_louvered_panel_tbls`
--

INSERT INTO `pick_louvered_panel_tbls` (`id`, `l_panel_name`, `l_panel_price`, `admin_action`, `created_at`, `updated_at`) VALUES
(1, 'left', 10.00, 'yes', '2021-01-22 00:15:20', '2021-01-22 00:30:01'),
(2, 'rear', 20.00, 'yes', '2021-01-22 00:30:21', '2021-01-22 00:30:21'),
(3, 'right', 30.00, 'yes', '2021-01-22 00:30:38', '2021-01-22 00:30:38'),
(4, 'left + rear', 40.00, 'yes', '2021-01-22 00:30:56', '2021-01-22 00:30:56'),
(5, 'right + rear', 50.00, 'yes', '2021-01-22 00:31:26', '2021-01-22 00:31:26'),
(6, 'left + right + rear', 60.00, 'yes', '2021-01-22 00:31:49', '2021-01-22 00:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `pick_overhead_shades_tbls`
--

CREATE TABLE `pick_overhead_shades_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img_standard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `master_width` bigint(20) NOT NULL,
  `master_height` bigint(20) NOT NULL,
  `master_post` bigint(20) NOT NULL,
  `master_overhead_shades` bigint(20) NOT NULL,
  `price_details` double(8,2) DEFAULT NULL,
  `img_file` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pick_overhead_shades_tbls`
--

INSERT INTO `pick_overhead_shades_tbls` (`id`, `img_standard_name`, `master_width`, `master_height`, `master_post`, `master_overhead_shades`, `price_details`, `img_file`, `admin_action`, `created_at`, `updated_at`) VALUES
(1, 'open', 1, 1, 1, 1, 25.00, 'public/ladder_spacing/3Ry7vunbVE3JnFXkWGdqGWAMn6ej7suZ0qzcaTBt.jpg', 'yes', '2021-03-17 13:17:05', '2021-03-17 13:17:05'),
(2, 'regular', 1, 1, 1, 3, 25.00, 'public/ladder_spacing/qqxGpyBRnFrosQY60OJS0NY9P8PY3O5KtSZhOpct.jpg', 'yes', '2021-03-17 13:37:22', '2021-03-17 13:37:22'),
(3, 'sunblocker', 1, 1, 1, 5, 25.00, 'public/ladder_spacing/bprdJJVjS2THYI7IsxVNko7LV9WIrJYDDwRuLcE6.jpg', 'yes', '2021-03-17 13:37:50', '2021-03-17 13:37:50'),
(4, 'open', 1, 2, 1, 1, 25.00, 'public/ladder_spacing/zknvc3VKp1dmWfrMEePtcgdDeRabJAaqqlDI2iH7.jpg', 'yes', '2021-03-17 14:10:10', '2021-03-17 14:10:10'),
(5, 'regular', 1, 2, 1, 3, 25.00, 'public/ladder_spacing/6tuUAA5GrrRrmqFCXe8RxboK9UEJ6WV1yyk5oPnC.jpg', 'yes', '2021-03-17 14:12:01', '2021-03-17 14:12:01'),
(6, 'sunblocker', 1, 2, 1, 5, 25.00, 'public/ladder_spacing/aZ7v9ZslfpGpSUNxZV5WgTt89ZX7q2xDcDwlmz0B.jpg', 'yes', '2021-03-17 14:12:24', '2021-03-17 14:12:24'),
(7, 'open', 1, 4, 1, 1, 25.00, 'public/ladder_spacing/eheNjT2CWPYWHTJ5ySqATVkLnsfYsGgZXFl4E6rJ.jpg', 'yes', '2021-03-17 14:26:50', '2021-03-17 14:26:50'),
(8, 'regular', 1, 4, 1, 3, 25.00, 'public/ladder_spacing/TqYnFeF8VFf9o8AZOjYyNIYbN7dnfYZIBqXJXmyW.jpg', 'yes', '2021-03-17 14:27:16', '2021-03-17 14:27:16'),
(9, 'sunblocker', 1, 4, 1, 5, 25.00, 'public/ladder_spacing/dCtoZQsxPlEfMQry8hmc4nIHVPej7ngbp8y6ayeE.jpg', 'yes', '2021-03-17 14:27:45', '2021-03-17 14:27:45'),
(10, 'open', 1, 3, 1, 1, 25.00, 'public/ladder_spacing/9kkVj65lxYsnaxab3t7GwzlapsN6SPmxnJKZZkdJ.jpg', 'yes', '2021-03-17 14:49:46', '2021-03-17 14:49:46'),
(11, 'regular', 1, 3, 1, 3, 25.00, 'public/ladder_spacing/gR9BjJT70VaJmq3TXy6GZFdX8H1frFIIBmGDxpUX.jpg', 'yes', '2021-03-17 14:50:12', '2021-03-17 14:50:12'),
(12, 'sunblocker', 1, 3, 1, 5, 25.00, 'public/ladder_spacing/CcXKpph7foy0aJ3u2AkTI0VpQ0jUnP6FepSknQn9.jpg', 'yes', '2021-03-17 14:50:35', '2021-03-17 14:50:35'),
(13, 'open', 1, 5, 1, 1, 25.00, 'public/ladder_spacing/AzWNHjhCr3RqC33GpV3UHshwmIdKAuQ7QvPdaWt2.jpg', 'yes', '2021-03-17 15:15:21', '2021-03-17 15:15:21'),
(14, 'sunblocker', 1, 5, 1, 5, 25.00, 'public/ladder_spacing/4YRUpmfnUqOU3rhO5Ls5uGhtw5IOycDNX5hJ4or2.jpg', 'yes', '2021-03-17 15:15:46', '2021-03-17 15:15:46'),
(15, 'regular', 1, 5, 1, 3, 25.00, 'public/ladder_spacing/CtPfmPW8ClAImBGMDTsfVYqaTEICZ7O8wisNWI7z.jpg', 'yes', '2021-03-17 15:16:15', '2021-03-17 15:16:15'),
(16, 'open', 1, 6, 1, 1, 25.00, 'public/ladder_spacing/9TK31S5WYXIjh6GJaNebllyDbWiCENxM0LoN5U76.jpg', 'yes', '2021-03-17 16:11:39', '2021-03-17 16:11:39'),
(17, 'regular', 1, 6, 1, 3, 25.00, 'public/ladder_spacing/WyLvMrxwR3UalAZHiFjytiTO4uuBCvWK7oNcbSrU.jpg', 'yes', '2021-03-17 16:12:31', '2021-03-17 16:12:31'),
(18, 'sunblocker', 1, 6, 1, 5, 25.00, 'public/ladder_spacing/8eBZCV3FLmXNjlvyWdMgftlgjhj9zqdhimtJrSaZ.jpg', 'yes', '2021-03-17 16:13:37', '2021-03-17 16:13:37'),
(19, 'open', 1, 7, 1, 1, 25.00, 'public/ladder_spacing/RTv6je4BcznK6KAXsIB4CtT7bOVqpCzsd1XpeBqN.jpg', 'yes', '2021-03-17 16:46:37', '2021-03-17 16:46:37'),
(20, 'regular', 1, 7, 1, 3, 25.00, 'public/ladder_spacing/kYn995ae3zm4csnva7uhijZk2RlmxiEEWvikhar9.jpg', 'yes', '2021-03-17 16:47:05', '2021-03-17 16:47:05'),
(21, 'sunblocker', 1, 7, 1, 5, 25.00, 'public/ladder_spacing/yfbZAHtmLEpKEO3ps5LZtjlZG4S9byvW4cYH3qwZ.jpg', 'yes', '2021-03-17 16:48:01', '2021-03-17 16:48:01'),
(22, 'open', 1, 8, 1, 1, 25.00, 'public/ladder_spacing/5e68ry6ggH0ykMQXNI4vwAveeNS8qjw8T3RMmXIl.jpg', 'yes', '2021-03-18 09:06:54', '2021-03-18 09:06:54'),
(23, 'sunblocker', 1, 8, 1, 5, 25.00, 'public/ladder_spacing/WcXsc5XzyecYshvO86puwVTAKkUsC57NmtYu8Fk2.jpg', 'yes', '2021-03-18 09:07:20', '2021-03-18 09:07:20'),
(24, 'regular', 1, 8, 1, 3, 100.00, 'public/ladder_spacing/q7LVBk2d3nRlx3copDAt5vvwUReXQXMQ35iCfeRb.jpg', 'yes', '2021-03-18 09:07:55', '2021-03-18 09:07:55'),
(25, 'open', 1, 9, 1, 1, 25.00, 'public/ladder_spacing/Wqjs0VwyruCCsh4W7bf7XF5CVDapR7eoP7J3nPKJ.jpg', 'yes', '2021-03-18 09:19:56', '2021-03-18 09:19:56'),
(26, 'sunblocker', 1, 9, 1, 5, 25.00, 'public/ladder_spacing/QlDWWepfYmvtXObADW2JcO2CaNQShOc8Q1Cs4MGt.jpg', 'yes', '2021-03-18 09:20:21', '2021-03-18 09:20:21'),
(27, 'regular', 1, 9, 1, 3, 25.00, 'public/ladder_spacing/hyn9XqB0zrJqQmHjm2qXaRtDRa6wFDyQiRGzyXJj.jpg', 'yes', '2021-03-18 09:21:09', '2021-03-18 09:21:09'),
(28, 'open', 1, 10, 1, 1, 25.00, 'public/ladder_spacing/VFQZWGudkHTe8gZfwNRWWTFKqSoxFbLj5V1FmlMW.jpg', 'yes', '2021-03-18 09:36:03', '2021-03-18 09:36:03'),
(29, 'regular', 1, 10, 1, 3, 25.00, 'public/ladder_spacing/IsOGoKZXXeicGh6sYrODqqmIsSGKC5LEhm4vaRp9.jpg', 'yes', '2021-03-18 09:36:24', '2021-03-18 09:36:24'),
(30, 'sunblocker', 1, 10, 1, 5, 25.00, 'public/ladder_spacing/gZOtE3I57VLeuOvq4EGi8gkstk98YabZhoS0ZdN3.jpg', 'yes', '2021-03-18 09:36:43', '2021-03-18 09:36:43'),
(31, 'open', 1, 11, 1, 1, 25.00, 'public/ladder_spacing/fNQcli5I50Mpxgm7ob7wBHtFATOSheANPp5Stzcw.jpg', 'yes', '2021-03-18 09:48:41', '2021-03-18 09:48:41'),
(32, 'regular', 1, 11, 1, 3, 25.00, 'public/ladder_spacing/eKVHnf9J1WMDNnqZmqLvQ4lxAEWxKerbe664yMUc.jpg', 'yes', '2021-03-18 09:49:08', '2021-03-18 09:49:08'),
(33, 'sunblocker', 1, 11, 1, 5, 25.00, 'public/ladder_spacing/FOQU7HnGcViFmyrQZNhVcL5PDXDxBZJh9zbzfA3S.jpg', 'yes', '2021-03-18 09:49:30', '2021-03-18 09:49:30'),
(34, 'open', 1, 12, 1, 1, 25.00, 'public/ladder_spacing/iRJzdE230n608H8DhkUnejB242wNif0m6Gdkr8iv.jpg', 'yes', '2021-03-18 10:21:50', '2021-03-18 10:21:50'),
(35, 'regular', 1, 12, 1, 3, 25.00, 'public/ladder_spacing/uh0YBqtPRzvdghrys9MDn3ZZBGDHb9udBsoYUhaY.jpg', 'yes', '2021-03-18 10:22:10', '2021-03-18 10:22:10'),
(36, 'sunblocker', 1, 12, 1, 5, 25.00, 'public/ladder_spacing/zLV5ywL0vOkEvQegJbSw7DmOmQikhCOBRQj1py9p.jpg', 'yes', '2021-03-18 10:22:27', '2021-03-18 10:22:27'),
(37, 'open', 1, 13, 1, 1, 25.00, 'public/ladder_spacing/N8Fak1t3UTdcnCrc0jIUQPqh1T8KYcCQA2WeRIf4.jpg', 'yes', '2021-03-18 10:27:52', '2021-03-18 10:27:52'),
(38, 'regular', 1, 13, 1, 3, 25.00, 'public/ladder_spacing/LqR8cGMOZCdIbkgtYuHdP72FMnSD1OlKin6bYNPl.jpg', 'yes', '2021-03-18 10:28:06', '2021-03-18 10:28:06'),
(39, 'sunblocker', 1, 13, 1, 5, 25.00, 'public/ladder_spacing/9qLbx8vAzag3fcMKLNefluscOFCRLonkC7ZwTAoG.jpg', 'yes', '2021-03-18 10:28:27', '2021-03-18 10:28:27'),
(40, 'open', 1, 13, 2, 1, 25.00, 'public/ladder_spacing/jiyQXu9uVmD3Zb02kxyzMzvviow68OYH8OWK8EiG.jpg', 'yes', '2021-03-18 10:57:36', '2021-03-18 10:57:36'),
(41, 'regular', 1, 13, 2, 3, 35.00, 'public/ladder_spacing/qdoFbcEvuwzwENz0YiRvdaKmLeh8x5bEQcJ4L8EW.jpg', 'yes', '2021-03-18 04:17:49', '2021-03-18 04:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `pick_post_length_tbls`
--

CREATE TABLE `pick_post_length_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posts_length` bigint(20) DEFAULT NULL,
  `master_width` bigint(20) NOT NULL,
  `master_height` bigint(20) NOT NULL,
  `master_post` bigint(20) NOT NULL,
  `master_overhead_shades` bigint(20) NOT NULL,
  `price_details` double(8,2) DEFAULT NULL,
  `img_file` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pick_post_length_tbls`
--

INSERT INTO `pick_post_length_tbls` (`id`, `posts_length`, `master_width`, `master_height`, `master_post`, `master_overhead_shades`, `price_details`, `img_file`, `admin_action`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 25.00, 'public/post_length/lcjQxsMyPPCjVTAFQv2EVdy5W9HU6Omn4c24FYUG.jpg', 'yes', '2021-03-17 13:19:55', '2021-03-17 13:56:15'),
(2, 2, 1, 1, 1, 1, 25.00, 'public/post_length/rnvpVxlH1RWDYLV1mMVVofkRY7jVhqRmhyVYbGU4.jpg', 'yes', '2021-03-17 13:55:58', '2021-03-17 13:55:58'),
(3, 1, 1, 1, 1, 3, 25.00, 'public/post_length/riVrgCrUUdErUHE4zAZZafK8Dz8iukl9qGQ0U4MO.jpg', 'yes', '2021-03-17 14:03:43', '2021-03-17 14:04:48'),
(4, 2, 1, 1, 1, 3, 25.00, 'public/post_length/YZ2aV8PwuOcxYov9Ov5P5VfN6dmvM4pU6vWJT0Ah.jpg', 'yes', '2021-03-17 14:06:36', '2021-03-17 14:06:36'),
(5, 1, 1, 1, 1, 5, 25.00, 'public/post_length/u78xyuYfPAWwa9q9RiO0EikaPtPNJs5bPxnfCTfg.jpg', 'yes', '2021-03-17 14:07:38', '2021-03-17 14:07:38'),
(6, 2, 1, 1, 1, 5, 25.00, 'public/post_length/cPAapt4vvWD6ZyV8D6AaatqRsUAArvzpmxF2ZTyF.jpg', 'yes', '2021-03-17 14:08:05', '2021-03-17 14:08:05'),
(7, 1, 1, 2, 1, 1, 25.00, 'public/post_length/4WoCN4WiXo0xepgg1HH4ycefLpzyNYF8TNLYVBTz.jpg', 'yes', '2021-03-17 14:16:15', '2021-03-17 14:16:15'),
(8, 2, 1, 2, 1, 1, 25.00, 'public/post_length/LTlxbVOt9GFffoVGPOwvUnEz41VQIwJ7fRGgAg8B.jpg', 'yes', '2021-03-17 14:19:29', '2021-03-17 14:19:29'),
(9, 1, 1, 2, 1, 5, 25.00, 'public/post_length/uzBUIVBaUYcgK1eFAmrVoTvk60tQRrzUOmIl22VA.jpg', 'yes', '2021-03-17 14:19:55', '2021-03-17 14:19:55'),
(10, 2, 1, 2, 1, 5, 25.00, 'public/post_length/olW1tLP8loTPfJfYScyi7z7RjIkNRdjEDKq4BWGR.jpg', 'yes', '2021-03-17 14:20:37', '2021-03-17 14:20:37'),
(11, 1, 1, 2, 1, 3, 25.00, 'public/post_length/uYESvOq5h50DdMJcjM7kUScxcaxi65rDygSzYdP2.jpg', 'yes', '2021-03-17 14:21:22', '2021-03-17 14:21:22'),
(12, 2, 1, 2, 1, 3, 25.00, 'public/post_length/umWVE41HbHCLsL1uvyOfm9YBIhdFX0dFe9Tlg5Ys.jpg', 'yes', '2021-03-17 14:21:47', '2021-03-17 14:21:47'),
(13, 2, 1, 4, 1, 1, 25.00, 'public/post_length/Qsda8tGPcfNphQJ7TelpF2dtzRqtC8iDEn8X92ff.jpg', 'yes', '2021-03-17 14:35:58', '2021-03-17 14:35:58'),
(14, 1, 1, 4, 1, 1, 25.00, 'public/post_length/LwihcZNbCfJnNjzn8Flyh1hjwF1UlRqEQqx5wW5J.jpg', 'yes', '2021-03-17 14:37:40', '2021-03-17 14:37:40'),
(15, 1, 1, 4, 1, 3, 25.00, 'public/post_length/mW1Mmjb769XJ6hLW636WXW4YQEvGNRpAptTdkkzA.jpg', 'yes', '2021-03-17 14:38:31', '2021-03-17 14:38:31'),
(16, 2, 1, 4, 1, 3, 25.00, 'public/post_length/MTQjo33TgQRrRW5ymh1IepMfRn9UON0EAyad2djZ.jpg', 'yes', '2021-03-17 14:39:18', '2021-03-17 14:39:18'),
(17, 1, 1, 4, 1, 5, 25.00, 'public/post_length/m0qlC8JhS3TTT0Xt7xKOtfMzCOKQHl2fM4cajUnG.jpg', 'yes', '2021-03-17 14:39:41', '2021-03-17 14:39:41'),
(18, 2, 1, 4, 1, 5, 25.00, 'public/post_length/AsOOAj9fOJI0Bqtes501Ob4fMbt7pEn4nEk3ZSKX.jpg', 'yes', '2021-03-17 14:40:09', '2021-03-17 14:40:09'),
(19, 1, 1, 3, 1, 1, 25.00, 'public/post_length/pLRBYf41MZyhVexEGGReovZl7yBvBL9t3ccS0DbX.jpg', 'yes', '2021-03-17 14:51:19', '2021-03-17 14:51:19'),
(20, 2, 1, 3, 1, 1, 25.00, 'public/post_length/aXJ0MBmCRKBtVpXPJMiwRjQbm4KOO7dknhNZIr7I.jpg', 'yes', '2021-03-17 14:51:52', '2021-03-17 14:51:52'),
(21, 1, 1, 3, 1, 3, 25.00, 'public/post_length/21jrt3aqCzf8NpWf9R52CThp9eRD3tHW9hBfvQkQ.jpg', 'yes', '2021-03-17 14:52:15', '2021-03-17 14:52:15'),
(22, 2, 1, 3, 1, 3, 25.00, 'public/post_length/KRLP5KHRcSXrkzA8kVIYoRHKl8aTJFNEwY08pnAu.jpg', 'yes', '2021-03-17 14:52:55', '2021-03-17 14:52:55'),
(23, 2, 1, 3, 1, 5, 25.00, 'public/post_length/hkrMegCZFMCgTv2Mvp7yevgHieQWqZAD1NzBgrN0.jpg', 'yes', '2021-03-17 14:53:38', '2021-03-17 14:53:38'),
(24, 1, 1, 3, 1, 5, 25.00, 'public/post_length/6oayNuOhH3VEbPRL930CwKR89BF7Qu5pDulSpTWJ.jpg', 'yes', '2021-03-17 14:58:20', '2021-03-17 14:58:20'),
(25, 1, 1, 5, 1, 1, 25.00, 'public/post_length/II5lMBNmHr5DjPHcWlxwZYz36RddbGC0NnuxBRYE.jpg', 'yes', '2021-03-17 15:52:55', '2021-03-17 15:52:55'),
(26, 2, 1, 5, 1, 1, 25.00, 'public/post_length/IP3TsUuDwQWJUSOaOO97vf4OC3ho1AAz5rlO7HMq.jpg', 'yes', '2021-03-17 15:53:25', '2021-03-17 15:53:25'),
(27, 1, 1, 5, 1, 5, 25.00, 'public/post_length/Ol9YKl0ztGf6LY1KxXy89kafy1KgVBvFIPTOU3Pl.jpg', 'yes', '2021-03-17 15:55:04', '2021-03-17 15:55:04'),
(28, 2, 1, 5, 1, 5, 25.00, 'public/post_length/mAH7T5iwVqgmP1DYiUMPeqYMVm7hArrw7bXfZjT4.jpg', 'yes', '2021-03-17 15:56:00', '2021-03-17 15:56:00'),
(29, 1, 1, 5, 1, 3, 25.00, 'public/post_length/zJb0gZTHYTW6HcdAA2uh66DzjRbcepLiaM2zLwLX.jpg', 'yes', '2021-03-17 15:57:32', '2021-03-17 15:57:32'),
(30, 2, 1, 5, 1, 3, 25.00, 'public/post_length/3oOj0DpENLcxTwPgiAy1TCTXkCGctiPGsJ5YlPR1.jpg', 'yes', '2021-03-17 15:57:57', '2021-03-17 15:57:57'),
(31, 1, 1, 6, 1, 1, 25.00, 'public/post_length/Lk7MSVPEIcgZVUWlRcesVWmE1gl5b33LVSW00LAc.jpg', 'yes', '2021-03-17 16:17:39', '2021-03-17 16:17:39'),
(32, 2, 1, 6, 1, 1, 25.00, 'public/post_length/nZi52mar9q3vfOC8cMa9CilsjSMzJvdw8VnbhYD7.jpg', 'yes', '2021-03-17 16:18:01', '2021-03-17 16:18:01'),
(33, 1, 1, 6, 1, 3, 25.00, 'public/post_length/12UCIlHuOvwhjPvYM7uTxRfkHW7oFUp2mzo1qDt2.jpg', 'yes', '2021-03-17 16:18:29', '2021-03-17 16:18:29'),
(34, 2, 1, 6, 1, 3, 25.00, 'public/post_length/r6RedVDy1yYC4sLMbG3toxGtnGrHORFgUagQ6qYa.jpg', 'yes', '2021-03-17 16:18:58', '2021-03-17 16:18:58'),
(35, 1, 1, 6, 1, 5, 25.00, 'public/post_length/6PK1gB4r6Fjj45H5hbpDCxyDlUNUvUyI6iyKohJu.jpg', 'yes', '2021-03-17 16:19:22', '2021-03-17 16:19:22'),
(36, 2, 1, 6, 1, 5, 25.00, 'public/post_length/PbUlljJvhFh2dS2GRuzfEdNIH6JrjWpk8r496goq.jpg', 'yes', '2021-03-17 16:19:45', '2021-03-17 16:19:45'),
(37, 1, 1, 7, 1, 1, 25.00, 'public/post_length/GJ69S3Cm4dNJqp8ZPp0eksssk12XS2ZBYleCwdGe.jpg', 'yes', '2021-03-17 16:48:59', '2021-03-17 16:48:59'),
(38, 2, 1, 7, 1, 1, 25.00, 'public/post_length/emTHzfbZ1JefkoJyFhNWuaFbDu4NaiuSwGGS0R59.jpg', 'yes', '2021-03-17 16:50:22', '2021-03-17 16:50:22'),
(39, 1, 1, 7, 1, 3, 25.00, 'public/post_length/uyrZEEoktEfoXHM4fdLkmft0WB03GzpvlME1yXRH.jpg', 'yes', '2021-03-17 16:50:48', '2021-03-17 16:50:48'),
(40, 2, 1, 7, 1, 3, 25.00, 'public/post_length/AJt6j9nzn5iyHGvJt0KDDO3bOtHBmWtf09J5b8Pu.jpg', 'yes', '2021-03-17 16:51:56', '2021-03-17 16:51:56'),
(41, 1, 1, 7, 1, 5, 25.00, 'public/post_length/2y3BZt4BsYhesHi5ZrbyejrSXr9ygsKYeEjQnBdX.jpg', 'yes', '2021-03-17 16:52:40', '2021-03-17 16:52:40'),
(42, 2, 1, 7, 1, 5, 25.00, 'public/post_length/SPpyV41VFftlb0qVi4qDbj8L3JEOVP3L6NY6ptHe.jpg', 'yes', '2021-03-17 16:53:54', '2021-03-17 16:53:54'),
(43, 1, 1, 8, 1, 1, 25.00, 'public/post_length/O8KjcPMzvJkcV5WnqPHCgZQLuKZA4RN4GuhnFxHC.jpg', 'yes', '2021-03-18 09:08:36', '2021-03-18 09:08:36'),
(44, 2, 1, 8, 1, 1, 25.00, 'public/post_length/7qlAnevDKDTmfO4QY1yGs5ukFgMicgYHONks8AgR.jpg', 'yes', '2021-03-18 09:09:53', '2021-03-18 09:09:53'),
(45, 1, 1, 8, 1, 3, 25.00, 'public/post_length/lcXiiamF7JRSjtAqUmkAZpag5vXbnH2QU2Bm2Z8r.jpg', 'yes', '2021-03-18 09:10:31', '2021-03-18 09:10:31'),
(46, 2, 1, 8, 1, 3, 25.00, 'public/post_length/ps8PAF8vsbQj4UBIi0ZgDd7EyVF7h4gfZ8KIkETE.jpg', 'yes', '2021-03-18 09:10:53', '2021-03-18 09:10:53'),
(47, 1, 1, 8, 1, 5, 25.00, 'public/post_length/GE8r1zeaRfvlTREiLPazof5f66KigXzXSfOQINyy.jpg', 'yes', '2021-03-18 09:11:17', '2021-03-18 09:11:17'),
(48, 2, 1, 8, 1, 5, 25.00, 'public/post_length/Fw7BV4RoNj8HwJVGuqZIjCt5gwWU6k20QP1jw4ag.jpg', 'yes', '2021-03-18 09:11:41', '2021-03-18 09:11:41'),
(49, 1, 1, 9, 1, 1, 25.00, 'public/post_length/tHiRdPn2ycoWnd0ISN0CxnwwZB5Fd7WcoZlacU69.jpg', 'yes', '2021-03-18 09:23:00', '2021-03-18 09:23:00'),
(50, 2, 1, 9, 1, 1, 25.00, 'public/post_length/MlrjEeSWQ8UH3huDsPeQjkNyxmFh28leQq0KGp0D.jpg', 'yes', '2021-03-18 09:23:30', '2021-03-18 09:23:30'),
(51, 1, 1, 9, 1, 5, 25.00, 'public/post_length/vDwtFTccXzt3SL2687JhXQd8evnKRRvm6ZrJZYql.jpg', 'yes', '2021-03-18 09:24:35', '2021-03-18 09:24:35'),
(52, 2, 1, 9, 1, 5, 25.00, 'public/post_length/exHt0TWlBB09398qokLEAO7PQj1JCkmMiufuGo7i.jpg', 'yes', '2021-03-18 09:26:39', '2021-03-18 09:26:39'),
(53, 1, 1, 9, 1, 3, 25.00, 'public/post_length/GDvAH9fkf5KKviYXuxcU1ic08f9DcJkRpBv0lkTT.jpg', 'yes', '2021-03-18 09:27:24', '2021-03-18 09:27:24'),
(54, 2, 1, 9, 1, 3, 25.00, 'public/post_length/0KYQuTYSwyXLtPYI4k2gJlbA0CGI94G14t42VIfu.jpg', 'yes', '2021-03-18 09:27:47', '2021-03-18 09:27:47'),
(55, 1, 1, 10, 1, 1, 25.00, 'public/post_length/L3Nj70vYPVVAeWWdPoNY33sxtHdDIfGY8tVvwNF4.jpg', 'yes', '2021-03-18 09:37:22', '2021-03-18 09:37:22'),
(56, 2, 1, 10, 1, 1, 25.00, 'public/post_length/gDMyQ1dcIpYybBqAlFn76RtG76rshOL5SSR8Qxop.jpg', 'yes', '2021-03-18 09:37:45', '2021-03-18 09:37:45'),
(57, 1, 1, 10, 1, 3, 25.00, 'public/post_length/Wit2NcX68mvNYllh0jvtFJH7dD7r2QXg4k7vmHIK.jpg', 'yes', '2021-03-18 09:38:59', '2021-03-18 09:38:59'),
(58, 2, 1, 10, 1, 3, 25.00, 'public/post_length/vlUG7gXf58naJZb1tqk3A51tZv8Qob1JODZyNBb3.jpg', 'yes', '2021-03-18 09:39:26', '2021-03-18 09:39:26'),
(59, 1, 1, 10, 1, 5, 25.00, 'public/post_length/t5LRxk6rgs9f35q2dDGeHc9TDTCkcyCSM55z6JiZ.jpg', 'yes', '2021-03-18 09:39:59', '2021-03-18 09:39:59'),
(60, 2, 1, 10, 1, 5, 25.00, 'public/post_length/HSLEuy8HU5lBbBJAA88iclHCZ7FQ58tNiVXQVHNE.jpg', 'yes', '2021-03-18 09:41:07', '2021-03-18 09:41:07'),
(61, 1, 1, 11, 1, 1, 25.00, 'public/post_length/FMAWxctfd0K8LI3fTT3ZQWMPvyEyijDTNJSoSdkI.jpg', 'yes', '2021-03-18 09:52:11', '2021-03-18 09:52:11'),
(62, 2, 1, 11, 1, 1, 25.00, 'public/post_length/8NVGfMs9rE82MamJ0XATcm9c0fTREi6XSOPxalQ8.jpg', 'yes', '2021-03-18 09:52:54', '2021-03-18 09:52:54'),
(63, 1, 1, 11, 1, 3, 25.00, 'public/post_length/YcrC5ZF7Hb54gwM3OGJRNQoxO6jvoyYL56glIYEH.jpg', 'yes', '2021-03-18 09:53:20', '2021-03-18 09:53:20'),
(64, 2, 1, 11, 1, 3, 25.00, 'public/post_length/1gYP9VUhofFSStKXH85j7zHzLUSsUY4faNWfjnZp.jpg', 'yes', '2021-03-18 09:53:43', '2021-03-18 09:53:43'),
(65, 1, 1, 11, 1, 5, 25.00, 'public/post_length/j92m7Ppl0Hix963JRwO2SovwlCtNh2UKd2VDbOtE.jpg', 'yes', '2021-03-18 09:54:07', '2021-03-18 09:54:07'),
(66, 2, 1, 11, 1, 5, 25.00, 'public/post_length/a5exynjfk3Qa952lq8nwu1RXI0vEdovIxHjIeD69.jpg', 'yes', '2021-03-18 09:54:41', '2021-03-18 09:54:41'),
(67, 1, 1, 12, 1, 1, 25.00, 'public/post_length/JJNQValqoRD7dyA3nVdEboB37XrBuv3VifxcmORE.jpg', 'yes', '2021-03-18 10:08:03', '2021-03-18 10:08:03'),
(68, 2, 1, 12, 1, 1, 25.00, 'public/post_length/EeRvX1ubNddhKSq8kwKDLR7XPvWMenAcHj44o1CE.jpg', 'yes', '2021-03-18 10:08:26', '2021-03-18 10:08:26'),
(69, 1, 1, 12, 1, 3, 25.00, 'public/post_length/MQq4hyq5G7YO5aEs2jHIn472XzcLgopcXx46WfiL.jpg', 'yes', '2021-03-18 10:08:49', '2021-03-18 10:08:49'),
(70, 2, 1, 12, 1, 3, 25.00, 'public/post_length/C4wnMsAnbgcloPeZ7w9tW9CkFu7Xh81asrwvfmSs.jpg', 'yes', '2021-03-18 10:09:10', '2021-03-18 10:09:10'),
(71, 1, 1, 12, 1, 5, 25.00, 'public/post_length/IR9rwpvITOtCRlhkNBEkTSyQ3IUcpv2skCKOVK55.jpg', 'yes', '2021-03-18 10:09:59', '2021-03-18 10:09:59'),
(72, 2, 1, 12, 1, 5, 25.00, 'public/post_length/hxalrSDWlNNDcRhMYN7gVzzErO7PJHiM9Z9snRDo.jpg', 'yes', '2021-03-18 10:10:22', '2021-03-18 10:10:22'),
(73, 1, 1, 13, 1, 1, 25.00, 'public/post_length/QqksV8hVtxCOE6NcUs4UWABioGRYg98H5pqdmPEJ.jpg', 'yes', '2021-03-18 10:29:03', '2021-03-18 10:29:03'),
(74, 2, 1, 13, 1, 1, 25.00, 'public/post_length/zubW9opFNIeuZm6QMugVEn3W33KhsAmfJc7PXPZt.jpg', 'yes', '2021-03-18 10:29:41', '2021-03-18 10:29:41'),
(75, 1, 1, 13, 1, 3, 25.00, 'public/post_length/KOs1pkQQmMc2sfJv8mI2TfwvzC7xcveNQDJ6kwoS.jpg', 'yes', '2021-03-18 10:30:03', '2021-03-18 10:30:03'),
(76, 2, 1, 13, 1, 3, 25.00, 'public/post_length/oZc1PoOKfRzKtZS0DW1QFjh0l1dMMnBnrtBmICuY.jpg', 'yes', '2021-03-18 10:30:26', '2021-03-18 10:30:26'),
(77, 1, 1, 13, 1, 5, 25.00, 'public/post_length/AT7xoh6sPnuXn0wuBnW9pXskPOqJ5CopCsz3VpoC.jpg', 'yes', '2021-03-18 10:31:04', '2021-03-18 10:31:04'),
(78, 2, 1, 13, 1, 5, 25.00, 'public/post_length/nzqxttQL5otipTHUKBpI0xuoaoUg0RIroOp4ifl6.jpg', 'yes', '2021-03-18 10:31:24', '2021-03-18 10:31:24'),
(79, 1, 1, 13, 2, 1, 25.00, 'public/post_length/sldZlU1bqGqCaHvv7Nivfo1CHSKytqMBGhDF6hRy.jpg', 'yes', '2021-03-18 11:01:39', '2021-03-18 11:01:39'),
(80, 2, 1, 13, 2, 1, 25.00, 'public/post_length/wzvvHre04cRsPU0leC87QJbzHNSQhMyL7vOtv5Xh.jpg', 'yes', '2021-03-18 11:02:03', '2021-03-18 11:02:03'),
(81, 1, 1, 13, 2, 3, 25.00, 'public/post_length/c8iCoQLWgGUbKtbFdcIGuWZJHLO4d7vQGNrYJrO1.jpg', 'yes', '2021-03-18 11:03:43', '2021-03-18 11:03:43'),
(82, 2, 1, 13, 2, 3, 25.00, 'public/post_length/8ClOdJ5qmt6sz7Dcoo2Mx5BOaM73dsoevGpi9Unx.jpg', 'yes', '2021-03-18 11:04:05', '2021-03-18 11:04:05'),
(83, 1, 1, 13, 2, 5, 25.00, 'public/post_length/mKcZovUrIkLdkE8201U2f3hsiiphLhWsBS8V3sea.jpg', 'yes', '2021-03-18 11:04:35', '2021-03-18 11:04:35'),
(84, 2, 1, 13, 2, 5, 25.00, 'public/post_length/V2VepIy12lderH30nl6hc7TChDrvsqy9AcXKcubh.jpg', 'yes', '2021-03-18 11:04:59', '2021-03-18 11:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `pick_slap_tbls`
--

CREATE TABLE `pick_slap_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pick_slap_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_details` double(8,2) DEFAULT NULL,
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `piller_post_tbls`
--

CREATE TABLE `piller_post_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_of_posts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `piller_post_tbls`
--

INSERT INTO `piller_post_tbls` (`id`, `no_of_posts`, `admin_action`, `created_at`, `updated_at`) VALUES
(1, '4', 'yes', '2021-03-17 04:00:00', '2021-03-17 04:00:00'),
(2, '4 double', 'yes', '2021-03-17 04:00:00', '2021-03-17 04:00:00'),
(3, '6', 'yes', '2021-03-17 04:00:00', '2021-03-17 04:00:00'),
(4, '8', 'yes', '2021-03-17 04:00:00', '2021-03-17 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_address_tbls`
--

CREATE TABLE `shipping_address_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `final_checkout_id` bigint(20) NOT NULL,
  `final_checkout_session_id` bigint(20) NOT NULL,
  `f_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street1_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `street2_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_3d_tbls`
--

CREATE TABLE `video_3d_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_width` bigint(20) NOT NULL,
  `master_height` bigint(20) NOT NULL,
  `master_posts` bigint(20) NOT NULL,
  `master_overhead` bigint(20) NOT NULL,
  `master_3D_video` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_action` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_3d_tbls`
--

INSERT INTO `video_3d_tbls` (`id`, `master_width`, `master_height`, `master_posts`, `master_overhead`, `master_3D_video`, `admin_action`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 13:14:20', '2021-03-17 13:14:20'),
(2, 1, 1, 1, 2, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 13:42:10', '2021-03-17 13:42:10'),
(3, 1, 1, 1, 3, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 13:42:31', '2021-03-17 13:42:31'),
(4, 1, 2, 1, 1, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 14:14:25', '2021-03-17 14:14:25'),
(5, 1, 2, 1, 2, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 14:14:42', '2021-03-17 14:14:42'),
(6, 1, 2, 1, 3, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 14:14:59', '2021-03-17 14:14:59'),
(7, 1, 4, 1, 1, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 14:32:48', '2021-03-17 14:32:48'),
(8, 1, 4, 1, 2, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 14:33:08', '2021-03-17 14:33:08'),
(9, 1, 4, 1, 3, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 14:33:28', '2021-03-17 14:33:28'),
(10, 1, 3, 1, 3, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 14:44:32', '2021-03-17 14:44:32'),
(11, 1, 3, 1, 1, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 14:45:04', '2021-03-17 14:45:04'),
(12, 1, 3, 1, 5, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 14:45:35', '2021-03-17 14:45:35'),
(13, 1, 5, 1, 1, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 15:17:15', '2021-03-17 15:17:15'),
(14, 1, 5, 1, 3, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 15:17:52', '2021-03-17 15:17:52'),
(15, 1, 5, 1, 5, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 15:18:25', '2021-03-17 15:18:25'),
(16, 1, 6, 1, 1, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 16:14:26', '2021-03-17 16:14:26'),
(17, 1, 6, 1, 3, 'https://www.3dvieweronline.com/members/Iddd82d58268453ca1c56996aa87e97fca/cwcXhHrdKFIn67v', 'yes', '2021-03-17 16:14:58', '2021-03-17 16:14:58');

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
-- Indexes for table `billing_address_tbls`
--
ALTER TABLE `billing_address_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combination_tbl`
--
ALTER TABLE `combination_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_before_checkout_product_tbl`
--
ALTER TABLE `final_before_checkout_product_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_product_tbls`
--
ALTER TABLE `final_product_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_height_tbls`
--
ALTER TABLE `master_height_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_post_length_tbl`
--
ALTER TABLE `master_post_length_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_width_tbls`
--
ALTER TABLE `master_width_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overhead_shades_tbl`
--
ALTER TABLE `overhead_shades_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pickup_footprint_tbls`
--
ALTER TABLE `pickup_footprint_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pick_canopy_tbls`
--
ALTER TABLE `pick_canopy_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pick_louvered_panel_tbls`
--
ALTER TABLE `pick_louvered_panel_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pick_overhead_shades_tbls`
--
ALTER TABLE `pick_overhead_shades_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pick_post_length_tbls`
--
ALTER TABLE `pick_post_length_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pick_slap_tbls`
--
ALTER TABLE `pick_slap_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `piller_post_tbls`
--
ALTER TABLE `piller_post_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_address_tbls`
--
ALTER TABLE `shipping_address_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_3d_tbls`
--
ALTER TABLE `video_3d_tbls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `billing_address_tbls`
--
ALTER TABLE `billing_address_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `combination_tbl`
--
ALTER TABLE `combination_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `final_before_checkout_product_tbl`
--
ALTER TABLE `final_before_checkout_product_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `final_product_tbls`
--
ALTER TABLE `final_product_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `master_height_tbls`
--
ALTER TABLE `master_height_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `master_post_length_tbl`
--
ALTER TABLE `master_post_length_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_width_tbls`
--
ALTER TABLE `master_width_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `overhead_shades_tbl`
--
ALTER TABLE `overhead_shades_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pickup_footprint_tbls`
--
ALTER TABLE `pickup_footprint_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pick_canopy_tbls`
--
ALTER TABLE `pick_canopy_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pick_louvered_panel_tbls`
--
ALTER TABLE `pick_louvered_panel_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pick_overhead_shades_tbls`
--
ALTER TABLE `pick_overhead_shades_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `pick_post_length_tbls`
--
ALTER TABLE `pick_post_length_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `pick_slap_tbls`
--
ALTER TABLE `pick_slap_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `piller_post_tbls`
--
ALTER TABLE `piller_post_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shipping_address_tbls`
--
ALTER TABLE `shipping_address_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_3d_tbls`
--
ALTER TABLE `video_3d_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
