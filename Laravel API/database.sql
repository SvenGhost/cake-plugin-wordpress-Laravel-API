-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2022 at 11:30 AM
-- Server version: 10.6.11-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoproject_cakeapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cakes`
--

CREATE TABLE `cakes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `cake_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `recipe` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cakes`
--

INSERT INTO `cakes` (`id`, `user_id`, `cake_name`, `type`, `price`, `recipe`, `created_at`, `updated_at`) VALUES
(7, 3, 'Choco Fuzz', 'Wedding Cake', 500, 'How to make Choco Fuzz Cake', '2022-11-09 21:22:19', '2022-11-09 21:22:19'),
(8, 3, 'Cake 2', 'Sugar Free', 500, 'Cake Recipe', '2022-11-09 21:27:40', '2022-11-09 21:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cake_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `recipe` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `cake_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `cake_id`, `created_at`, `updated_at`) VALUES
(11, '636bd3bb12701_rails.png', 7, '2022-11-09 21:22:19', '2022-11-09 21:22:19'),
(12, '636bd3bb12ba6_python.png', 7, '2022-11-09 21:22:19', '2022-11-09 21:22:19'),
(13, '636bd3bb12f81_php.png', 7, '2022-11-09 21:22:19', '2022-11-09 21:22:19'),
(14, '636bd4fc7fa05_Pizza-Hut-Logo.png', 8, '2022-11-09 21:27:40', '2022-11-09 21:27:40');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_11_07_094928_create_employees_table', 2),
(13, '2022_11_08_045216_create_cakes_table', 3),
(14, '2022_11_08_103646_create_images_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('06f11d14e31232e53303568905d5424ca057076dbe9b21a699e9bea69bb4af78f77ae313b4fdb375', 5, 1, 'token', '[]', 0, '2022-11-08 01:14:08', '2022-11-08 01:14:08', '2023-11-08 06:44:08'),
('09ebacbc485d2caf0f0430ff96fb94311892421915bf2e21e0647fa6afd9929ec439d0f6ed281639', 3, 1, 'token', '[]', 0, '2022-11-08 18:34:37', '2022-11-08 18:34:37', '2023-11-08 13:34:37'),
('0b56c88618ca0e205d3a28e02d6372c8cb5ff3a704990b0ea1ee4ee7d064c0f141e753e7e42871ea', 1, 1, 'token', '[]', 0, '2022-11-07 20:37:37', '2022-11-07 20:37:37', '2023-11-07 12:37:37'),
('0b6515eb3e7139b21c4dab3c3ff6b9ac83df282b61ce948ea470044243a57d6dfd22ad89c3bdcb46', 5, 1, 'token', '[]', 0, '2022-11-07 19:48:54', '2022-11-07 19:48:54', '2023-11-07 11:48:54'),
('0cffdffb8724f003378dd06c6a1c6a1a112e9a7347e3f260151cc11cf6c1039279338a89f1381b35', 1, 1, 'token', '[]', 0, '2022-11-08 03:45:09', '2022-11-08 03:45:09', '2023-11-08 09:15:09'),
('2f7cbcfdab6d7391561762cfad6f6fd34cfc0d382ab93fc41bfabffddaa032df57f5760d600430cc', 3, 1, 'token', '[]', 0, '2022-11-08 01:25:38', '2022-11-08 01:25:38', '2023-11-08 06:55:38'),
('3baf8255b7e761afb53f29f419b7766bd4f7cce800573de0e4d345886cf9243af504bb84f5de3244', 5, 1, 'token', '[]', 0, '2022-11-07 20:42:31', '2022-11-07 20:42:31', '2023-11-07 12:42:31'),
('43239f17380ef144dea5322fd373517b0a44846042221bd1ae0f01fa319a7698f8440eef17033968', 3, 1, 'token', '[]', 0, '2022-11-08 06:18:15', '2022-11-08 06:18:15', '2023-11-08 11:48:15'),
('4a699afb53348cf47c4e54b8803b1a31dbb8502f915642f7a1bbda08e6cac4245ec531249bde951b', 3, 1, 'token', '[]', 0, '2022-11-07 17:42:03', '2022-11-07 17:42:03', '2023-11-07 09:42:03'),
('4b3f8a1b7f9f0b7312276265f9c716950382677b4da673fac530ccb2c895848b4418928e22d42965', 1, 1, 'token', '[]', 1, '2022-11-08 01:06:34', '2022-11-08 01:07:23', '2023-11-08 06:36:34'),
('4ee9d17fcff2387587cf3a745af5e0900cdf07c6061e44be9e416cee2f355a5c05814f2ddcd52faf', 1, 1, 'token', '[]', 0, '2022-11-08 01:33:51', '2022-11-08 01:33:52', '2023-11-08 07:03:51'),
('4f74ed90d290c496fbf531e98f5170ffb07f0ddbe006c6dc7772e89ce15f145aa8a23bea72a4cc84', 5, 1, 'token', '[]', 0, '2022-11-08 00:20:35', '2022-11-08 00:20:35', '2023-11-08 05:50:35'),
('5859d8b8a02e875f1a46beebb644f83f155c1ea3baa94f12427ae260365dc556fc1ba6972e7e5f3a', 3, 1, 'token', '[]', 0, '2022-11-08 20:13:50', '2022-11-08 20:13:50', '2023-11-08 15:13:50'),
('636cadb3b60d15afa743af96996ab0afca676462c91a6d1e79c8ad78297c1a1a7ae3b7eca5b03e84', 6, 1, 'token', '[]', 0, '2022-11-08 00:40:57', '2022-11-08 00:40:57', '2023-11-08 06:10:57'),
('73e14871dad1523bfe41a112c0e2ad082161fa11c65513ebbb38a485b8516cb21ddc3660eb458b6a', 1, 1, 'token', '[]', 0, '2022-11-07 18:19:29', '2022-11-07 18:19:29', '2023-11-07 10:19:29'),
('7c0151ed87120735b311d7a817fdab861a5c8887f7e1589af75aabf5eb0158008322af3a23cf5287', 1, 1, 'token', '[]', 0, '2022-11-08 00:20:50', '2022-11-08 00:20:50', '2023-11-08 05:50:50'),
('7d767a2cba06c09207df784bb52bda129ca0cfcc555d0d1da64b6b1cf4d1e805782f6dba58f9df76', 1, 1, 'token', '[]', 0, '2022-11-07 17:48:34', '2022-11-07 17:48:34', '2023-11-07 09:48:34'),
('7ff7c4aba6b1051fcb43518e785144c302121d70d02ba36e95261b46fec75a897670a4a44ec523ad', 5, 1, 'token', '[]', 0, '2022-11-07 19:49:25', '2022-11-07 19:49:25', '2023-11-07 11:49:25'),
('82661bf13892dfd35cf3dc3b546a1a9ec3a231ff9cd72f2860752d09d344c4f723eb8ab2e0c0f662', 3, 1, 'token', '[]', 0, '2022-11-08 01:15:57', '2022-11-08 01:15:57', '2023-11-08 06:45:57'),
('84e6f3644e682425b3063f6e019ef16d9ffb4634641b73352310891c9cf00c6e6317290ce3465b65', 1, 1, 'token', '[]', 1, '2022-11-08 00:52:52', '2022-11-08 00:58:21', '2023-11-08 06:22:52'),
('8a31d4ffa581b16883dba9dbb53f5f2bbd3b3ace8f76dfa75966aa6af349e7e8f62aebe242a0f057', 3, 1, 'token', '[]', 0, '2022-11-09 21:05:34', '2022-11-09 21:05:34', '2023-11-09 16:05:34'),
('8ae1a72df84ab1b37a10ac65f45faa9bb3ea1e9a3f906c5c978e6e4f9c80c4a38711fb594241f74e', 3, 1, 'token', '[]', 0, '2022-11-08 01:34:35', '2022-11-08 01:34:35', '2023-11-08 07:04:35'),
('9dfc130b7c339f37835627c01dc8dd14c64dbe867883a1bbea9b66da8aff1dcaa172aadd20bf21a8', 1, 1, 'token', '[]', 1, '2022-11-08 00:59:02', '2022-11-08 00:59:10', '2023-11-08 06:29:02'),
('aa51c98935148b0131526fad7fd6b7fb9ca6d0ce700f9f455d3ff29d9d0e9230e7ad2f1668690818', 1, 1, 'token', '[]', 0, '2022-11-08 03:35:15', '2022-11-08 03:35:15', '2023-11-08 09:05:15'),
('b4de5ae933674a0c6c98b3a52748a6891168f64f7c1dab692c729868b0e9a639e4c83ae215f730ab', 5, 1, 'token', '[]', 0, '2022-11-08 01:33:33', '2022-11-08 01:33:33', '2023-11-08 07:03:33'),
('c864ce4c235a42d18f1c02574d5bd24ba807b867c59bd3ba715e4396960ea38784e305640585090a', 5, 1, 'token', '[]', 1, '2022-11-07 23:57:48', '2022-11-08 00:06:17', '2023-11-08 05:27:48'),
('d1504c784481192070336f2e82805b56e80228c76c343be1a136ca829ced915f9c89d0dc162f3987', 5, 1, 'token', '[]', 0, '2022-11-08 01:07:36', '2022-11-08 01:07:36', '2023-11-08 06:37:36'),
('daa30f0f7483e57fc89d245b18138810ae31e8691283992bb7bda48cbc0f9a1a2af03d7b1e4522f1', 3, 1, 'token', '[]', 0, '2022-11-08 01:14:57', '2022-11-08 01:14:57', '2023-11-08 06:44:57'),
('e050686fc6f85d086ab666754a4228f1feedefaccb64ec481904ff5478dec86634d89799b7c71ddc', 1, 1, 'token', '[]', 1, '2022-11-08 01:10:49', '2022-11-08 01:14:00', '2023-11-08 06:40:49'),
('e9732d1ad0a8b706b72b0fb52148300f58eeb6589b6dfdb02fb47e1d1ee89a218b7f99d0fa88d941', 3, 1, 'token', '[]', 0, '2022-11-07 23:43:01', '2022-11-07 23:43:01', '2023-11-08 05:13:01'),
('ea8e7eae6b159d3c7b96ba337edb6209c8b445a507d426b8d3ad783ddf0ed629ae0aa4da01441e68', 3, 1, 'token', '[]', 1, '2022-11-07 20:43:37', '2022-11-07 23:57:16', '2023-11-07 12:43:37'),
('f3634ea3fbddc4242010d1941a13f84a4d79d4bf7ba5f6899e8fc42b66ac4530f001f1f5fa2898df', 1, 1, 'token', '[]', 0, '2022-11-08 01:01:36', '2022-11-08 01:01:36', '2023-11-08 06:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'xfBXR9aU08dlb1W6vx5F2r0fr37jrANN8ScSDz3K', NULL, 'http://localhost', 1, 0, 0, '2022-11-07 17:06:01', '2022-11-07 17:06:01'),
(2, NULL, 'Laravel Password Grant Client', 'T1RAASW4gBwluwNFqMl0QebNKhSFZJg2CjbFKZoY', 'users', 'http://localhost', 0, 1, 0, '2022-11-07 17:06:01', '2022-11-07 17:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-11-07 17:06:01', '2022-11-07 17:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'shivani', 'shivani@gmail.com', NULL, '$2y$10$rc7URZpKDrGTW0FikSPQs.yqHjEg2fKDLYdK0t4IBLq/C3Qrv3zdi', NULL, '2022-11-07 17:41:20', '2022-11-07 17:41:20'),
(3, 'shivani', 'abc@gmail.com', NULL, '$2y$10$PzxcaOR9VPxLVr4DTIblt.UUi95jSor0eCtgovnMovXvsSjyV/lbq', NULL, '2022-11-07 17:42:03', '2022-11-07 17:42:03'),
(5, 'shivani123', 'abc123@gmail.com', NULL, '$2y$10$1EgweJuEfYgK1Tzg5PYEbOVBdwFKpLFh7eGEENYjZx5T9QVudptcy', NULL, '2022-11-07 19:48:54', '2022-11-07 19:48:54'),
(6, 'admin', 'admin@gmail.com', NULL, '$2y$10$lbv.PRfB9GtPSKdIxCHtx.0zldKWk4J58wbCJGuD1.AxRaAj5ujQG', NULL, '2022-11-08 00:40:57', '2022-11-08 00:40:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cakes`
--
ALTER TABLE `cakes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cakes`
--
ALTER TABLE `cakes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
