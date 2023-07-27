-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2023 at 08:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoice`
--

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `tax_amount` int(11) NOT NULL,
  `net_amount` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `file` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `qty`, `amount`, `total_amount`, `tax`, `tax_amount`, `net_amount`, `customer_name`, `date`, `file`, `email`, `created_at`, `updated_at`) VALUES
(2, 10, 20, 200, 5, 10, 210, 'midhun', '2023-07-30', '1690384478.jpg', 'thomas.midhun1@gmail.com', '2023-07-26 09:44:38', '2023-07-26 09:44:38'),
(3, 30, 10, 300, 28, 84, 384, 'thomas', '2023-07-30', '1690384717.jpg', 'thomas.midhun1@gmail.com', '2023-07-26 09:48:37', '2023-07-26 09:48:37'),
(4, 23, 36, 828, 18, 149, 977, 'Chacko vk', '2023-07-30', '1690428542.jpg', 'thomas.midhun1@gmail.com', '2023-07-26 21:59:03', '2023-07-26 21:59:03'),
(5, 22, 21, 462, 12, 55, 517, 'thomas chacko', '2023-07-30', '1690428654.jpg', 'thomas.midhun1@gmail.com', '2023-07-26 22:00:55', '2023-07-26 22:00:55'),
(6, 20, 30, 600, 12, 72, 672, 'thomas mathue', '2023-07-30', '1690434302.jpg', 'thomas.midhun1@gmail.com', '2023-07-26 23:35:02', '2023-07-26 23:35:02'),
(7, 10, 12, 120, 12, 14, 134, 'thomas mathue', '2023-07-30', '1690434361.jpg', 'thomas.midhun1@gmail.com', '2023-07-26 23:36:01', '2023-07-26 23:36:01'),
(8, 30, 62, 1860, 18, 335, 2195, 'Jecob mathew', '2023-07-27', '1690435180.jpg', 'thomas.midhun1@gmail.com', '2023-07-26 23:49:40', '2023-07-26 23:49:40'),
(9, 20, 22, 440, 18, 79, 519, 'Jecob mathew', '2023-07-27', '1690435259.jpg', 'thomas.midhun1@gmail.com', '2023-07-26 23:50:59', '2023-07-26 23:50:59'),
(10, 10, 23, 230, 18, 41, 271, 'Jecob mathew', '2023-07-27', '1690435369.jpg', 'thomas.midhun1@gmail.com', '2023-07-26 23:52:49', '2023-07-26 23:52:49'),
(11, 10, 11, 110, 12, 13, 123, 'Jecob mathew', '2023-07-27', '1690435434.jpg', 'thomas.midhun1@gmail.com', '2023-07-26 23:53:54', '2023-07-26 23:53:54'),
(12, 22, 32, 704, 18, 127, 831, 'thomas mathue', '2023-07-27', '1690435811.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:00:11', '2023-07-27 00:00:11'),
(13, 22, 31, 682, 12, 82, 764, 'thomas mathue', '2023-07-27', '1690435853.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:00:53', '2023-07-27 00:00:53'),
(14, 12, 30, 360, 18, 65, 425, 'thomas mathue', '2023-07-27', '1690435882.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:01:22', '2023-07-27 00:01:22'),
(15, 12, 31, 372, 12, 45, 417, 'thomas mathue', '2023-07-27', '1690435953.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:02:33', '2023-07-27 00:02:33'),
(16, 12, 30, 360, 18, 65, 425, 'thomas mathue', '2023-07-27', '1690436075.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:04:35', '2023-07-27 00:04:35'),
(17, 13, 32, 416, 12, 50, 466, 'thomas mathue', '2023-07-27', '1690436112.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:05:12', '2023-07-27 00:05:12'),
(18, 13, 32, 416, 12, 50, 466, 'thomas mathue', '2023-07-27', '1690436147.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:05:47', '2023-07-27 00:05:47'),
(19, 13, 31, 403, 5, 20, 423, 'thomas mathue', '2023-07-27', '1690436187.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:06:27', '2023-07-27 00:06:27'),
(20, 13, 32, 416, 12, 50, 466, 'thomas mathue', '2023-07-27', '1690436337.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:08:57', '2023-07-27 00:08:57'),
(21, 30, 30, 900, 28, 252, 1152, 'thomas chacko', '2023-07-16', '1690436422.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:10:22', '2023-07-27 00:10:22'),
(22, 25, 52, 1300, 18, 234, 1534, 'Jecob mathew', '2023-07-27', '1690436504.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:11:44', '2023-07-27 00:11:44'),
(23, 20, 41, 820, 18, 148, 968, 'Chacko vk', '2023-07-27', '1690436620.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:13:40', '2023-07-27 00:13:40'),
(24, 10, 32, 320, 18, 58, 378, 'thomas mathue', '2023-07-30', '1690436725.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:15:25', '2023-07-27 00:15:25'),
(25, 10, 20, 200, 18, 36, 236, 'Jecob mathew', '2023-07-27', '1690437163.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:22:43', '2023-07-27 00:22:43'),
(26, 10, 20, 200, 18, 36, 236, 'Jecob mathew', '2023-07-27', '1690437195.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:23:16', '2023-07-27 00:23:16'),
(27, 10, 11, 110, 12, 13, 123, 'thomas mathue', '2023-07-30', '1690437224.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:23:44', '2023-07-27 00:23:44'),
(28, 14, 51, 714, 18, 129, 843, 'Chacko vk', '2023-07-24', '1690437537.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:28:57', '2023-07-27 00:28:57'),
(29, 85, 41, 3485, 5, 174, 3659, 'midhun', '2023-07-25', '1690437759.jpg', 'thomas123@gmail.com', '2023-07-27 00:32:39', '2023-07-27 00:32:39'),
(30, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437870.jpg', 'thomas123@gmail.com', '2023-07-27 00:34:30', '2023-07-27 00:34:30'),
(31, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437889.jpg', 'thomas123@gmail.com', '2023-07-27 00:34:49', '2023-07-27 00:34:49'),
(32, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437893.jpg', 'thomas123@gmail.com', '2023-07-27 00:34:53', '2023-07-27 00:34:53'),
(33, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437894.jpg', 'thomas123@gmail.com', '2023-07-27 00:34:54', '2023-07-27 00:34:54'),
(34, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437903.jpg', 'thomas123@gmail.com', '2023-07-27 00:35:03', '2023-07-27 00:35:03'),
(35, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437910.jpg', 'thomas123@gmail.com', '2023-07-27 00:35:10', '2023-07-27 00:35:10'),
(36, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437926.jpg', 'thomas123@gmail.com', '2023-07-27 00:35:26', '2023-07-27 00:35:26'),
(37, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437931.jpg', 'thomas123@gmail.com', '2023-07-27 00:35:31', '2023-07-27 00:35:31'),
(38, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437934.jpg', 'thomas123@gmail.com', '2023-07-27 00:35:34', '2023-07-27 00:35:34'),
(39, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437935.jpg', 'thomas123@gmail.com', '2023-07-27 00:35:35', '2023-07-27 00:35:35'),
(40, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437936.jpg', 'thomas123@gmail.com', '2023-07-27 00:35:36', '2023-07-27 00:35:36'),
(41, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437941.jpg', 'thomas123@gmail.com', '2023-07-27 00:35:41', '2023-07-27 00:35:41'),
(42, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437949.jpg', 'thomas123@gmail.com', '2023-07-27 00:35:49', '2023-07-27 00:35:49'),
(43, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437950.jpg', 'thomas123@gmail.com', '2023-07-27 00:35:50', '2023-07-27 00:35:50'),
(44, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437955.jpg', 'thomas123@gmail.com', '2023-07-27 00:35:55', '2023-07-27 00:35:55'),
(45, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437963.jpg', 'thomas123@gmail.com', '2023-07-27 00:36:03', '2023-07-27 00:36:03'),
(46, 85, 47, 3995, 12, 479, 4474, 'midhun', '2023-07-25', '1690437968.jpg', 'thomas123@gmail.com', '2023-07-27 00:36:08', '2023-07-27 00:36:08'),
(47, 52, 56, 2912, 18, 524, 3436, 'Jecob mathew', '2023-07-02', '1690438003.jpg', 'thomas.midhun1@gmail.com', '2023-07-27 00:36:43', '2023-07-27 00:36:43'),
(48, 14, 25, 350, 28, 98, 448, 'Chacko vk', '2023-07-31', '1690438223.jpg', 'thomas006@gmail.com', '2023-07-27 00:40:23', '2023-07-27 00:40:23'),
(49, 12, 21, 252, 12, 30, 282, 'thomas mathue', '2023-07-31', '1690438485.jpg', 's@g.com', '2023-07-27 00:44:46', '2023-07-27 00:44:46');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_26_122417_create_invoices_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('thomas.midhun1@gmail.com', '$2y$10$sMkiJkzuvf5cEkn7iA90ruIlfElRCXaryhIoiKfv6qXqj3.OiMfYW', '2023-07-26 22:03:51');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Midhun chacko', 'thomas.midhun1@gmail.com', NULL, '$2y$10$/EOtmjq.wU1KoqXe4R9Hp.IVGbjQBcENTStOwcJMwuUohwG8xUlsa', NULL, '2023-07-26 09:12:05', '2023-07-26 09:12:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
