-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 08:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `register_approvals`
--

CREATE TABLE `register_approvals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `super_admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_approvals`
--

INSERT INTO `register_approvals` (`id`, `admin_id`, `super_admin_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 0, '2023-06-03 10:59:41', '2023-06-03 10:59:41'),
(2, 4, NULL, 0, '2023-06-03 11:03:32', '2023-06-03 11:03:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register_approvals`
--
ALTER TABLE `register_approvals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `super_admin_id` (`super_admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register_approvals`
--
ALTER TABLE `register_approvals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `register_approvals`
--
ALTER TABLE `register_approvals`
  ADD CONSTRAINT `register_approvals_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `register_approvals_ibfk_2` FOREIGN KEY (`super_admin_id`) REFERENCES `actors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
