-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2026 at 06:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deguzman`
--
CREATE DATABASE IF NOT EXISTS `deguzman` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `deguzman`;
-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ordernumber` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `email`, `ordernumber`, `message`, `created_at`) VALUES
(1, 'Angel De Guzman', 'angel.deguzman.0617@gmail.com', 2147483647, 'Annyeonghaseyo!', '2026-02-27 07:11:36'),
(2, 'Park Jimin', 'parkjimin1013@gmail.com', 2147483647, 'Bangtan Sonyeondan, Park Jimin imnida!', '2026-02-27 07:13:19'),
(4, 'Sandy Lee', 'deguzmansandylee@gmail.com', 2147483647, 'ok', '2026-03-01 07:55:13'),
(5, 'Kim Ji Won', 'kimjiwon@gmail.com', 2147483647, 'annyeonghaseyo yeoreobun!', '2026-03-02 11:13:13'),
(7, 'kupal', 'kupal@gmail.com', 0, 'Test TEst', '2026-05-27 08:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2026_05_27_000001_create_store_tables', 1),
(6, '2026_05_27_000002_add_user_id_to_orders_table', 1),
(7, '2026_05_27_000003_create_newsletter_subscriptions_table', 1),
(8, '2026_05_28_000001_add_product_name_to_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriptions`
--

CREATE TABLE `newsletter_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT 'Philippines',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL DEFAULT 'Manual order',
  `total` int(11) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `fulfillment_status` varchar(255) NOT NULL,
  `delivery_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order id`, `user_id`, `product_name`, `total`, `customer`, `payment_status`, `fulfillment_status`, `delivery_status`) VALUES
(1, NULL, 'Manual order', 88, 'Sample Customer', 'Pending', 'Unfulfilled', 'Standard shipping'),
(2, NULL, 'Manual order', 16, 'Daisuki cortez', 'Pending', 'Unfulfilled', 'Standard shipping'),
(3, NULL, 'Manual order', 26, 'Daisuki cortez', 'Pending', 'Unfulfilled', 'Standard shipping'),
(4, NULL, 'Manual order', 26, 'Daisuki cortez', 'Pending', 'Unfulfilled', 'Standard shipping'),
(5, 12, 'Manual order', 26, 'Daisuki cortez', 'Pending', 'Unfulfilled', 'Standard shipping'),
(6, 15, 'Manual order', 26, 'Test Order', 'Pending', 'Unfulfilled', 'Standard shipping'),
(9, 12, 'Living Legend Ver.', 34, 'Daisuki cortez', 'Pending', 'Unfulfilled', 'Standard shipping'),
(10, 18, 'Rooted in Music Ver.', 28, 'user user', 'Pending', 'Unfulfilled', 'Standard shipping'),
(11, 18, 'BTS The 5th Album \'ARIRANG\' Digital Album', 16, 'user user', 'Pending', 'Unfulfilled', 'Standard shipping'),
(14, 26, 'BTS The 5th Album \'ARIRANG\' Group Red Vinyl', 26, 'sample sample', 'Cancelled', 'Cancelled', 'Cancelled by customer'),
(15, 26, 'RM Silver Vinyl', 26, 'sample sample', 'Complete', 'Unfulfilled', 'Standard shipping');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `profile_image`, `password`, `created_at`, `role`, `status`, `phone`, `address`, `bio`) VALUES
(2, 'Angel', 'De Guzman', 'angeldeguzman@gmail.com', 'uploads1773059647_c87aa9cb2db39f39c66a82a7827c7574.jpg', '$2y$10$0.y0LJtl8jXWjQsXOQzBf.G4CV4.IfmHuhmlCZ1AG9VLo9af2drsm', '2026-03-16 01:02:29', 'admin', 'Active', '09123456789', 'Laguna, Philippines', 'College Student, BSIT 3A'),
(3, 'Jimin', 'Park', 'pjm@gmail.com', 'uploads1773472287_jimin_photo.jpg', '$2y$10$gTLioCFZnexbCxHnDahLfue.JquxLKJ1VdvL3PxbZgI/IU7hg/H4O', '2026-03-14 07:58:04', 'user', 'Active', '', '', ''),
(4, 'Sandy', ' Lee', 'sandylee@gmail.com', 'uploads/1773624305_Screenshot 2025-06-28 133852.png', '$2y$10$Z5dButzAvHk.i.Q/JAK2eeNxN.n4L43kVElCNsIKxtyPpRMsKGSO6', '2026-03-16 01:25:26', 'user', 'Active', '09123456789', 'Laguna, Philippines', 'ABM Student'),
(6, 'Angelo', 'Fernandez', 'angelo@gmail.com', 'uploads/1773623140_cat.jpg', '$2y$10$UspEs44Fo9frI8CeUUh74O0lNkel1slw7DqVUDj/B/gS/k3Pt3GaG', '2026-03-16 01:05:40', 'user', 'Inactive', '', '', ''),
(8, 'Giyu', 'Tomioka', 'giyu@gmail.com', 'default.png', '$2y$10$SAqPU687QUxldpcVEFdyOeKaSd5BLu83VcVFyGytcHg8WsLnAKZYe', '2026-03-16 00:45:18', 'user', 'Inactive', '', '', ''),
(9, 'Muichiro', 'Tokito', 'muichiro@gmail.com', NULL, '$2y$10$7Uc/W6borGQ0J0EB6AYe2e.F1DiH/EPCb4M3ZEiKISEFqh7F5u/fG', '2026-03-16 00:46:15', 'user', 'Active', '', '', ''),
(11, 'Inosuke', 'Hashibira', 'inosukehashibira@gmail.com', NULL, '$2y$10$LHXCIP7Y0h4oCpR5KyFE/OZfuyyvhZBdQ5tMeOIst5MCFPTXnyNk.', '2026-04-26 14:56:48', 'user', 'active', '', '', ''),
(12, 'Daisuki', 'cortez', 'Daisukicortez@gmail.com', 'uploads/1779892518_31d65b7f-85ca-4b02-92b4-fac09b948744.jpg', '$2y$10$OIsyKGhL19Xy45YAUae62.ySPehw.SSYMM3UNn4SClphmBOzekj3G', '2026-05-27 14:35:18', 'admin', 'active', '', '', ''),
(13, 'Store', 'Admin', 'admin@arirang.test', NULL, '$2y$10$P0eoLq4sbUKL8ofq0U.qeu0z6RBTAoQmMHENdyNRuosTkq3yCo1xa', '2026-05-27 14:31:51', 'admin', 'Active', '', '', 'Default Laravel admin account.'),
(18, 'user', 'user', 'user@gmail.com', NULL, '$2y$10$lrKgVufFeWknugVJoxQKcOQ2CQzsV4mkfekrUaErWt0buZlhb559S', '2026-05-27 16:30:56', 'user', 'Active', '', '', ''),
(19, 'Delete', 'Admin', 'deleteadmin602969212@example.test', NULL, '$2y$10$yzuXTqtRHVIYBHIdJg4NXOTUhMb80dVlx9azmes83E7ukwq/lFHmS', '2026-05-27 16:36:44', 'admin', 'Active', '', '', ''),
(21, 'Delete', 'User', 'deleteuser688604587@example.test', NULL, '$2y$10$rVhvHUBVsVGx10tlRPdYj.MBasLo5G8oIV6NCYnvyQOZ2y1hPCtEO', '2026-05-27 16:38:34', 'user', 'Active', '', '', ''),
(26, 'sample', 'sample', 'sample@gmail.com', NULL, '$2y$10$hOjABnl15L06z5BfYsPgP.BKtcwQknJ8XI2q/YN6ltG.verfCBMIy', '2026-05-27 16:45:16', 'user', 'Active', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscriptions`
--
ALTER TABLE `newsletter_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletter_subscriptions_email_unique` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `newsletter_subscriptions`
--
ALTER TABLE `newsletter_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
