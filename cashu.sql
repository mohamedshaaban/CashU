-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2018 at 02:13 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cashu`
--

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
(3, '2018_03_16_013249_create_user_uploads_table', 1),
(4, '2018_03_16_034123_alter_user_uploads_table', 1),
(5, '2018_03_18_124807_alter_table_user_uploads', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_uploads`
--

CREATE TABLE `user_uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mimetype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_uploads`
--

INSERT INTO `user_uploads` (`id`, `file`, `type`, `created_at`, `updated_at`, `file_size`, `download_url`, `mimetype`, `user_email`) VALUES
(6, '553639cb8698ce52cfd4b9b66701a043.jpg', 'file', '2018-03-18 10:38:47', '2018-03-18 10:38:47', '11402', 'https://www.googleapis.com/drive/v2/files/1-VF41qMAm8eAQaZ2j9TuBYBmkYmBQjno\"', 'image/jpeg', NULL),
(7, '8edbe0111e60db6eef2ccc4c690aaf54.jpg', 'file', '2018-03-18 10:38:47', '2018-03-18 10:38:47', '11402', 'https://www.googleapis.com/drive/v2/files/15bJp8IZN7dw48ogY_SMC8nWmqtGAfbiq\"', 'image/jpeg', NULL),
(8, '35be07a0838a0c64b1630d2fa180d32f.jpg', 'file', '2018-03-18 10:38:48', '2018-03-18 10:38:48', '11402', 'https://www.googleapis.com/drive/v2/files/1_z-IesLI6T-g6lLaHg7YJWe-ectLk2Ju\"', 'image/jpeg', NULL),
(9, '88b9450d630535d5ad674848ca8b64d9.jpg', 'file', '2018-03-18 10:38:49', '2018-03-18 10:38:49', '11402', 'https://www.googleapis.com/drive/v2/files/1dtytdXf1Lc2TTCHXjnrLvQnOFskQhkdj\"', 'image/jpeg', NULL),
(10, '455ef76350e6fd3339bd1fb13785b75d.jpg', 'file', '2018-03-18 10:38:50', '2018-03-18 10:38:50', '11402', 'https://www.googleapis.com/drive/v2/files/1HgxrXWwR_6vGKO0nTRuwzCs9Qdrtb9NH\"', 'image/jpeg', NULL),
(11, '553639cb8698ce52cfd4b9b66701a043.jpg', 'file', '2018-03-18 10:40:16', '2018-03-18 10:40:16', '11402', 'https://www.googleapis.com/drive/v2/files/1-VF41qMAm8eAQaZ2j9TuBYBmkYmBQjno\"', 'image/jpeg', NULL),
(12, '8edbe0111e60db6eef2ccc4c690aaf54.jpg', 'file', '2018-03-18 10:40:17', '2018-03-18 10:40:17', '11402', 'https://www.googleapis.com/drive/v2/files/15bJp8IZN7dw48ogY_SMC8nWmqtGAfbiq\"', 'image/jpeg', NULL),
(13, '35be07a0838a0c64b1630d2fa180d32f.jpg', 'file', '2018-03-18 10:40:18', '2018-03-18 10:40:18', '11402', 'https://www.googleapis.com/drive/v2/files/1_z-IesLI6T-g6lLaHg7YJWe-ectLk2Ju\"', 'image/jpeg', NULL),
(14, '88b9450d630535d5ad674848ca8b64d9.jpg', 'file', '2018-03-18 10:40:18', '2018-03-18 10:40:18', '11402', 'https://www.googleapis.com/drive/v2/files/1dtytdXf1Lc2TTCHXjnrLvQnOFskQhkdj\"', 'image/jpeg', NULL),
(15, '506_13227res2.jpg', 'file', '2018-03-18 10:40:19', '2018-03-18 10:40:19', '10881', 'https://www.googleapis.com/drive/v2/files/1Gvh2pD9-iCqyyAUHanv7PvZPCLGuJ-oM\"', 'image/jpeg', NULL),
(16, '455ef76350e6fd3339bd1fb13785b75d.jpg', 'file', '2018-03-18 10:40:20', '2018-03-18 10:40:20', '11402', 'https://www.googleapis.com/drive/v2/files/1HgxrXWwR_6vGKO0nTRuwzCs9Qdrtb9NH\"', 'image/jpeg', NULL),
(17, '13082_24139dishes6.jpg', 'file', '2018-03-18 10:40:24', '2018-03-18 10:40:24', '10259', 'https://www.googleapis.com/drive/v2/files/1O0QZ6-yIQKmELsx8JHDeClMgagvLwB4C\"', 'image/jpeg', NULL),
(18, '1078_28471Pizza_Hut_logo.svg.png', 'file', '2018-03-18 10:40:26', '2018-03-18 10:40:26', '117762', 'https://www.googleapis.com/drive/v2/files/1PgLmGE0cMFAi3ebThkU7YD0771S_rlk5\"', 'image/png', NULL),
(19, '11714_18387img_order1.jpg', 'file', '2018-03-18 10:40:27', '2018-03-18 10:40:27', '6629', 'https://www.googleapis.com/drive/v2/files/1ptG7eT8qvZaDn_XlIYXnyyzVw8T9wvu4\"', 'image/jpeg', NULL),
(20, '12328_24897dishes5.jpg', 'file', '2018-03-18 10:40:28', '2018-03-18 10:40:28', '14222', 'https://www.googleapis.com/drive/v2/files/1RlN0gztgOFYSxFXqNQ4HAdkkelwdFPot\"', 'image/jpeg', NULL),
(21, '3132_11717dishes2.jpg', 'file', '2018-03-18 10:40:29', '2018-03-18 10:40:29', '12900', 'https://www.googleapis.com/drive/v2/files/1v_DSz79caUD-xMRR1SjxCyXmY-Xk0-Rn\"', 'image/jpeg', NULL),
(22, '12050_14051logo.png', 'file', '2018-03-18 10:40:30', '2018-03-18 10:40:30', '7680', 'https://www.googleapis.com/drive/v2/files/1X_ClzlZ82LT5ZBf-Dk1ZGcFeBQc_PFvA\"', 'image/png', NULL),
(23, '10846_24127logo.png', 'file', '2018-03-18 10:40:31', '2018-03-18 10:40:31', '7680', 'https://www.googleapis.com/drive/v2/files/1XtUGqcntLQ-U3yzT2lAvIwo8SO6GSjQj\"', 'image/png', NULL),
(24, '3856_31241dishes3.jpg', 'file', '2018-03-18 10:40:32', '2018-03-18 10:40:32', '11321', 'https://www.googleapis.com/drive/v2/files/1zIjDx1ZRAUG2mb-CjpmyrKCr5j77kDzU\"', 'image/jpeg', NULL),
(25, '553639cb8698ce52cfd4b9b66701a043.jpg', 'file', '2018-03-18 10:59:36', '2018-03-18 10:59:36', '11402', 'https://www.googleapis.com/drive/v2/files/1-VF41qMAm8eAQaZ2j9TuBYBmkYmBQjno\"', 'image/jpeg', 'm.laravelshaban@gmail.com'),
(26, '8edbe0111e60db6eef2ccc4c690aaf54.jpg', 'file', '2018-03-18 10:59:37', '2018-03-18 10:59:37', '11402', 'https://www.googleapis.com/drive/v2/files/15bJp8IZN7dw48ogY_SMC8nWmqtGAfbiq\"', 'image/jpeg', 'm.laravelshaban@gmail.com'),
(27, '35be07a0838a0c64b1630d2fa180d32f.jpg', 'file', '2018-03-18 10:59:38', '2018-03-18 10:59:38', '11402', 'https://www.googleapis.com/drive/v2/files/1_z-IesLI6T-g6lLaHg7YJWe-ectLk2Ju\"', 'image/jpeg', 'm.laravelshaban@gmail.com'),
(28, '88b9450d630535d5ad674848ca8b64d9.jpg', 'file', '2018-03-18 10:59:39', '2018-03-18 10:59:39', '11402', 'https://www.googleapis.com/drive/v2/files/1dtytdXf1Lc2TTCHXjnrLvQnOFskQhkdj\"', 'image/jpeg', 'm.laravelshaban@gmail.com'),
(29, '506_13227res2.jpg', 'file', '2018-03-18 10:59:40', '2018-03-18 10:59:40', '10881', 'https://www.googleapis.com/drive/v2/files/1Gvh2pD9-iCqyyAUHanv7PvZPCLGuJ-oM\"', 'image/jpeg', 'm.laravelshaban@gmail.com'),
(30, '455ef76350e6fd3339bd1fb13785b75d.jpg', 'file', '2018-03-18 10:59:41', '2018-03-18 10:59:41', '11402', 'https://www.googleapis.com/drive/v2/files/1HgxrXWwR_6vGKO0nTRuwzCs9Qdrtb9NH\"', 'image/jpeg', 'm.laravelshaban@gmail.com'),
(31, '13082_24139dishes6.jpg', 'file', '2018-03-18 10:59:42', '2018-03-18 10:59:42', '10259', 'https://www.googleapis.com/drive/v2/files/1O0QZ6-yIQKmELsx8JHDeClMgagvLwB4C\"', 'image/jpeg', 'm.laravelshaban@gmail.com'),
(32, '1078_28471Pizza_Hut_logo.svg.png', 'file', '2018-03-18 10:59:44', '2018-03-18 10:59:44', '117762', 'https://www.googleapis.com/drive/v2/files/1PgLmGE0cMFAi3ebThkU7YD0771S_rlk5\"', 'image/png', 'm.laravelshaban@gmail.com'),
(33, '11714_18387img_order1.jpg', 'file', '2018-03-18 10:59:44', '2018-03-18 10:59:44', '6629', 'https://www.googleapis.com/drive/v2/files/1ptG7eT8qvZaDn_XlIYXnyyzVw8T9wvu4\"', 'image/jpeg', 'm.laravelshaban@gmail.com'),
(34, '12328_24897dishes5.jpg', 'file', '2018-03-18 10:59:45', '2018-03-18 10:59:45', '14222', 'https://www.googleapis.com/drive/v2/files/1RlN0gztgOFYSxFXqNQ4HAdkkelwdFPot\"', 'image/jpeg', 'm.laravelshaban@gmail.com'),
(35, '3132_11717dishes2.jpg', 'file', '2018-03-18 10:59:46', '2018-03-18 10:59:46', '12900', 'https://www.googleapis.com/drive/v2/files/1v_DSz79caUD-xMRR1SjxCyXmY-Xk0-Rn\"', 'image/jpeg', 'm.laravelshaban@gmail.com'),
(36, '12050_14051logo.png', 'file', '2018-03-18 10:59:47', '2018-03-18 10:59:47', '7680', 'https://www.googleapis.com/drive/v2/files/1X_ClzlZ82LT5ZBf-Dk1ZGcFeBQc_PFvA\"', 'image/png', 'm.laravelshaban@gmail.com'),
(37, '10846_24127logo.png', 'file', '2018-03-18 10:59:48', '2018-03-18 10:59:48', '7680', 'https://www.googleapis.com/drive/v2/files/1XtUGqcntLQ-U3yzT2lAvIwo8SO6GSjQj\"', 'image/png', 'm.laravelshaban@gmail.com'),
(38, '3856_31241dishes3.jpg', 'file', '2018-03-18 10:59:49', '2018-03-18 10:59:49', '11321', 'https://www.googleapis.com/drive/v2/files/1zIjDx1ZRAUG2mb-CjpmyrKCr5j77kDzU\"', 'image/jpeg', 'm.laravelshaban@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_uploads`
--
ALTER TABLE `user_uploads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_uploads`
--
ALTER TABLE `user_uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
