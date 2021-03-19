-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2021 at 02:57 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `final_before_checkout_product_tbl`
--
ALTER TABLE `final_before_checkout_product_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `final_before_checkout_product_tbl`
--
ALTER TABLE `final_before_checkout_product_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
