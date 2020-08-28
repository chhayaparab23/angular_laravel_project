-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 28, 2020 at 06:37 AM
-- Server version: 8.0.20-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angular_laravel_hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hms_contact_queries`
--

CREATE TABLE `hms_contact_queries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hms_contact_queries`
--

INSERT INTO `hms_contact_queries` (`id`, `name`, `email`, `mobile_no`, `message`, `created_at`, `updated_at`) VALUES
(1, 'chhaya', 'chhaya@gmail.com', '7658765844', 'Testing chhaya', '2020-08-07 07:55:02', '2020-08-07 07:55:02'),
(2, 'vinayak', 'vinu@gmail.com', '7658765844', 'Testing vinu', '2020-08-07 07:55:53', '2020-08-07 07:55:53'),
(3, 'Anu', 'anu@gmail.com', '7658768544', 'Anu testing form', '2020-08-07 08:00:29', '2020-08-07 08:00:29'),
(4, 'Sandhya', 'sandhya@gmail.com', '7657443321', 'Testing Sandhya form', '2020-08-07 08:02:49', '2020-08-07 08:02:49'),
(5, 'Vihansh', 'vihansh@gmail.com', '8765496785', 'vihansh contact query', '2020-08-07 08:17:54', '2020-08-07 08:17:54'),
(6, 'Vishnu', 'vishnu@gmail.com', '78678567451', 'Vishnu Contact Query', '2020-08-07 08:21:00', '2020-08-07 08:21:00'),
(7, 'Aniket', 'aniket@gmail.com', '645645654654', 'Aniket Contact Form', '2020-08-07 18:41:52', '2020-08-07 18:41:52');

-- --------------------------------------------------------

--
-- Table structure for table `hms_feedback_requests`
--

CREATE TABLE `hms_feedback_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hms_feedback_requests`
--

INSERT INTO `hms_feedback_requests` (`id`, `name`, `email`, `mobile_no`, `feedback_type`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Sudha', 'sudha@gmail.com', '7658675843', '1', 'sudha feedback', '2020-08-10 00:46:09', '2020-08-10 00:46:09'),
(2, 'Apurva', 'apurva@gmail.com', '7658675843', '2', 'Apurva feedback', '2020-08-10 00:57:06', '2020-08-10 00:57:06'),
(3, 'Aniket', 'aniket@gmail.com', '564564321', '2', 'Aniket Feedback', '2020-08-10 01:08:07', '2020-08-10 01:08:07'),
(4, 'Nirali', 'nirali@gmail.com', '2131232451', '1', 'Nirali Feedback', '2020-08-10 01:10:39', '2020-08-10 01:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `hms_feedback_types`
--

CREATE TABLE `hms_feedback_types` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hms_feedback_types`
--

INSERT INTO `hms_feedback_types` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Service', '1', NULL, NULL),
(2, 'Hotel Environment', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hms_room_booking_requests`
--

CREATE TABLE `hms_room_booking_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_member` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_rooms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hms_room_booking_requests`
--

INSERT INTO `hms_room_booking_requests` (`id`, `name`, `email`, `mobile_no`, `address`, `from_date`, `to_date`, `no_of_member`, `no_of_rooms`, `room_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chhaya', 'chhaya@gmail.com', '6756754533', 'Charlotte, NC', '10/08/2020', '15/08/2020', '5', '2', '1', '0', '2020-08-08 15:13:53', '2020-08-08 15:13:53'),
(2, 'Vinayak', 'vinu@gmail.com', '4564564564', 'Charlotte, NC', '2020-08-01', '2020-08-15', '5', '2', '1', '0', '2020-08-08 16:04:06', '2020-08-08 16:04:06'),
(3, 'Aniket', 'aniket@gmail.com', '7686786786', 'SEZ, Blue Ridge, hinjewadi, phase - 1', '2020-08-11', '2020-08-15', '5', '2', '1', '0', '2020-08-08 16:09:59', '2020-08-08 16:09:59'),
(4, 'Neha', 'neha@gmail.com', '5454356436', 'Pune , India', '2020-08-07', '2020-08-15', '5', '2', '1', '0', '2020-08-08 16:14:01', '2020-08-08 16:14:01'),
(5, 'Sandhya', 'sandhya@gmail.com', '23424234324', 'Pune , Maharashtra', '2020-08-09', '2020-08-15', '5', '2', '1', '0', '2020-08-08 16:17:04', '2020-08-08 16:17:04'),
(6, 'Anu', 'anu@gmail.com', '8765876543', 'Sangvi, Pune, India', '2020-08-11', '2020-08-14', '4', '2', '1', '0', '2020-08-09 16:32:58', '2020-08-09 16:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `hms_room_types`
--

CREATE TABLE `hms_room_types` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hms_room_types`
--

INSERT INTO `hms_room_types` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AC', '1', NULL, NULL),
(2, 'Non AC', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hms_services`
--

CREATE TABLE `hms_services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hms_services`
--

INSERT INTO `hms_services` (`id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Breakfast', 'breakfast3.jpg', 'For the connoisseurs of the culinary art heres the enticement – Invitation Today. A world cuisine restaurant serving you with a list of dishes from across the world. ', NULL, NULL),
(2, 'Bar', 'bar.png', 'A Bar that cheers you on with the choicest of Liquors, Liqueurs & Wines from across the Globe.\r\nCome relish the tastes and go on a world trip ticket-less.', NULL, NULL),
(3, 'Fitness', 'fitness.jpg', 'Hours: 24 Hours, 7 days a week\r\nStay fit and work out at our state-of-the-art fitness center even as you travel!', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hms_subscribe_users`
--

CREATE TABLE `hms_subscribe_users` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hms_subscribe_users`
--

INSERT INTO `hms_subscribe_users` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'chhaya@gmail.com', '2020-08-07 16:40:48', '2020-08-07 16:40:48'),
(2, 'vinu@gmail.com', '2020-08-07 16:43:50', '2020-08-07 16:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `hms_users`
--

CREATE TABLE `hms_users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hms_users`
--

INSERT INTO `hms_users` (`id`, `name`, `email`, `mobile_no`, `password`, `address`, `city`, `state`, `country`, `pin_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chhaya', 'chhaya@gmail.com', '5464564565', 'chhaya123', 'Pune', '', '', '', '2411012', NULL, '2020-08-10 14:10:37', '2020-08-10 14:10:37'),
(2, 'Vinayak', 'vinayak@gmail.com', '5675675654', 'vinayak123', NULL, '', '', '', NULL, NULL, '2020-08-10 14:32:47', '2020-08-10 14:32:47'),
(3, 'Sandhya', 'sandhya@gmail.com', '6787686632', 'sandhya123', NULL, '', '', '', NULL, NULL, '2020-08-10 14:36:47', '2020-08-10 14:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_08_06_141432_create_hms_contact_queries_table', 1),
(4, '2020_08_07_043258_create_hms_subscribe_users_table', 2),
(5, '2020_08_07_125202_create_hms_services_table', 3),
(6, '2020_08_08_102409_create_hms_room_booking_requests_table', 4),
(7, '2020_08_09_123726_create_hms_room_types_table', 5),
(8, '2020_08_09_184854_create_hms_feedback_types_table', 6),
(9, '2020_08_09_203637_create_hms_feedback_requests_table', 7),
(10, '2020_08_10_092246_create_hms_users_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hms_contact_queries`
--
ALTER TABLE `hms_contact_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hms_feedback_requests`
--
ALTER TABLE `hms_feedback_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hms_feedback_types`
--
ALTER TABLE `hms_feedback_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hms_room_booking_requests`
--
ALTER TABLE `hms_room_booking_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hms_room_types`
--
ALTER TABLE `hms_room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hms_services`
--
ALTER TABLE `hms_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hms_subscribe_users`
--
ALTER TABLE `hms_subscribe_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hms_users`
--
ALTER TABLE `hms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hms_contact_queries`
--
ALTER TABLE `hms_contact_queries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hms_feedback_requests`
--
ALTER TABLE `hms_feedback_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hms_feedback_types`
--
ALTER TABLE `hms_feedback_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hms_room_booking_requests`
--
ALTER TABLE `hms_room_booking_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hms_room_types`
--
ALTER TABLE `hms_room_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hms_services`
--
ALTER TABLE `hms_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hms_subscribe_users`
--
ALTER TABLE `hms_subscribe_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hms_users`
--
ALTER TABLE `hms_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
