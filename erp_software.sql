-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2025 at 03:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp_software`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_roles`
--

CREATE TABLE `add_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_roles`
--

INSERT INTO `add_roles` (`id`, `employee_id`, `role_id`, `salary`, `created_at`, `updated_at`) VALUES
(2, 5, 2, 14000, '2025-02-06 03:02:02', '2025-02-06 03:02:02'),
(3, 2, 1, 16000, '2025-02-06 03:07:04', '2025-02-06 03:07:04'),
(4, 6, 6, 50000, '2025-02-16 07:48:35', '2025-02-16 07:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` char(10) NOT NULL,
  `educational_qualification` varchar(255) NOT NULL,
  `how_to_know_about_me` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `client_name`, `age`, `email`, `mobile`, `educational_qualification`, `how_to_know_about_me`, `created_at`, `updated_at`) VALUES
(1, 'sandhiya', 30, 'sandhiya@gmail.com', '9564564564', 'mcom', 'facebook', '2025-02-06 06:24:40', '2025-02-06 06:24:40'),
(3, 'kalai', 22, 'kalaiarasi@gmail.com', '9686786785', 'bca', 'instagram', '2025-01-07 06:26:03', '2025-02-07 06:47:49'),
(5, 'manin', 24, 'nemoho2576@btcours.com', '9134234234', 'asf', 'facebook', '2025-02-16 07:40:03', '2025-02-16 07:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `client_projects`
--

CREATE TABLE `client_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_description` text NOT NULL,
  `project_cost` int(11) NOT NULL,
  `programming_language` varchar(255) NOT NULL,
  `project_timeline` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_projects`
--

INSERT INTO `client_projects` (`id`, `client_id`, `project_name`, `project_description`, `project_cost`, `programming_language`, `project_timeline`, `created_at`, `updated_at`) VALUES
(1, 1, 'Customer relationship management system', 'i need a simple crm for college', 15000, 'PHP', '2025-03-20', '2025-02-12 03:02:24', '2025-02-12 23:22:18'),
(2, 3, 'erp software', 'simple erp for college', 5000, 'Python', '2025-02-04', '2025-02-12 23:20:03', '2025-02-27 11:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` char(10) NOT NULL,
  `educational_qualification` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '$2y$10$e4YhOsmIcqH2XhjzD9gNNuzWV0w4N2EzD0hwgLf4oVwWLJ3g5N23G',
  `profile_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `employee_name`, `age`, `email`, `mobile`, `educational_qualification`, `password`, `profile_image`, `created_at`, `updated_at`) VALUES
(2, '18NMJK1002', 'ramani', 20, 'ramani@gmail.com', '9745834532', 'msc', '$2y$10$uLHfX.cucj6AS/oLHiAP9uAMM51seSTtc8.1jFFAmvDR2a5Ou0xb.', '2481466_employee_profile.jpg', '2025-01-30 05:34:36', '2025-01-30 05:34:36'),
(5, '18NMJK1004', 'soundaryas', 26, 'sound@gmail.com', '9567567657', 'www', '$2y$10$IooyL7EWvIZbZY7LAceTfOy73fD8a2LDnp/hc1DsD9yFnMzI/u0Ui', '6773449_employee_profile.jpg', '2025-02-05 01:34:06', '2025-02-06 03:03:41'),
(6, '18NMJK1003', 'santhosh', 28, 'santhosh@gmail.com', '9434234333', 'mca', '$2y$10$VYFHAm.BKpPCyRpyP86bcerO9/fQ30HGLxDAU2C8VeX8DJYGu.T.y', '4320571_employee_profile.PNG', '2025-02-16 07:47:51', '2025-02-16 07:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `expense_reports`
--

CREATE TABLE `expense_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_amount` int(11) NOT NULL,
  `description` text NOT NULL,
  `expense_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_reports`
--

INSERT INTO `expense_reports` (`id`, `expense_amount`, `description`, `expense_date`, `created_at`, `updated_at`) VALUES
(1, 200, 'lunch for client', '2025-03-03', '2025-03-03 20:00:25', '2025-03-03 20:00:25'),
(2, 100, 'family', '2025-05-01', '2025-03-03 20:00:59', '2025-03-03 20:00:59'),
(3, 300, 'Website Renewal', '2025-03-05', '2025-03-05 19:29:26', '2025-03-05 19:29:26'),
(4, 5000, 'Service and Repairs', '2025-03-13', '2025-03-05 19:30:46', '2025-03-05 19:30:46'),
(5, 2000, 'Website Renewal', '2025-01-01', '2025-03-06 19:43:27', '2025-03-06 19:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password_models`
--

CREATE TABLE `forgot_password_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `otp` int(11) NOT NULL,
  `verified_status` char(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forgot_password_models`
--

INSERT INTO `forgot_password_models` (`id`, `email`, `otp`, `verified_status`, `created_at`, `updated_at`) VALUES
(7, 'ganesh7@gmail.com', 3737, 'Y', '2025-03-15 20:20:28', '2025-03-15 20:21:10'),
(9, 'tikayig251@doishy.com', 1853, 'Y', '2025-03-15 20:29:38', '2025-03-15 20:30:05');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `invoice_date` date NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `pay_period_from` date NOT NULL,
  `pay_period_to` date NOT NULL,
  `total_working_days` int(11) NOT NULL,
  `present_days` int(11) NOT NULL,
  `gross_pay` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `health_insurance` int(11) NOT NULL,
  `retirement` int(11) NOT NULL,
  `total_deduction` int(11) NOT NULL,
  `net_pay` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_no`, `invoice_date`, `employee_name`, `employee_id`, `department`, `position`, `pay_period_from`, `pay_period_to`, `total_working_days`, `present_days`, `gross_pay`, `tax`, `health_insurance`, `retirement`, `total_deduction`, `net_pay`, `created_at`, `updated_at`) VALUES
(1, 189001, '2025-02-25', '5', '18NMJK1004', 'software', 'Assistant Manager', '2025-02-25', '2025-02-28', 30, 29, 14000, 2000, 800, 200, 3000, 11000, '2025-02-24 19:53:35', '2025-02-24 19:53:35'),
(2, 189002, '2025-02-25', '2', '18NMJK1002', 'software', 'PHP Developer', '2025-02-01', '2025-02-28', 30, 29, 16000, 1000, 500, 800, 1800, 14200, '2025-02-24 19:54:18', '2025-02-24 19:54:18');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2025_01_08_125938_create_purchase_erps_table', 1),
(4, '2025_01_10_094359_create_users_table', 2),
(9, '2025_01_27_122400_create_employees_table', 3),
(10, '2025_02_05_071757_create_roles_table', 4),
(12, '2025_02_05_072424_create_add_roles_table', 5),
(13, '2025_02_06_083932_create_clients_table', 6),
(14, '2025_02_07_121953_create_client_projects_table', 7),
(15, '2025_02_17_011106_create_tasks_table', 8),
(17, '2025_02_19_012110_create_time_trackings_table', 9),
(18, '2025_02_22_010623_create_invoices_table', 10),
(19, '2025_03_01_001936_create_revenue_reports_table', 11),
(20, '2025_03_04_011641_create_expense_reports_table', 12),
(21, '2025_03_05_012112_create_profit_and_losses_table', 13),
(22, '2025_03_14_164138_create_forgot_password_models_table', 14);

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
-- Table structure for table `profit_and_losses`
--

CREATE TABLE `profit_and_losses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_erps`
--

CREATE TABLE `purchase_erps` (
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_user_id` varchar(100) NOT NULL,
  `purchase_key` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_erps`
--

INSERT INTO `purchase_erps` (`purchase_id`, `purchase_user_id`, `purchase_key`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '7admin@gmail.com', '897812@#cdf', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `revenue_reports`
--

CREATE TABLE `revenue_reports` (
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `remark` text NOT NULL,
  `sale_date` date NOT NULL,
  `sale_amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `discount` int(11) NOT NULL,
  `final_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revenue_reports`
--

INSERT INTO `revenue_reports` (`sale_id`, `customer_id`, `remark`, `sale_date`, `sale_amount`, `payment_method`, `discount`, `final_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 'sd', '2025-02-04', 20000.00, 'Net Banking', 5, 19000.00, '2025-03-02 19:53:04', '2025-03-02 19:53:04'),
(2, 3, 'kfgd', '2025-03-02', 25000.00, 'UPI', 3, 24250.00, '2025-03-02 19:53:32', '2025-03-02 19:53:32'),
(3, 5, 'fdg', '2025-03-01', 18000.00, 'Cash', 5, 17100.00, '2025-03-02 19:53:52', '2025-03-02 19:53:52'),
(4, 1, 'g', '2025-07-17', 200.00, 'UPI', 1, 198.00, '2025-03-02 19:54:07', '2025-03-02 19:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'HR', NULL, NULL),
(2, 'PHP Developer', NULL, NULL),
(3, 'Java Developer', NULL, NULL),
(4, 'Python Developer', NULL, NULL),
(5, 'Assistant Manager', NULL, NULL),
(6, 'Senior PHP developer', NULL, NULL),
(7, 'Senior Java developer', NULL, NULL),
(8, 'Senior Python developer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `task_name` varchar(150) NOT NULL,
  `task_description` text NOT NULL,
  `assign_date` date NOT NULL,
  `deadline_date` date NOT NULL,
  `status` varchar(100) DEFAULT 'started',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `employee_id`, `task_name`, `task_description`, `assign_date`, `deadline_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'php', 'this is php', '2025-02-11', '2025-02-12', 'excel only pending', '2025-02-17 19:54:17', '2025-02-18 19:47:50'),
(3, 6, 'czxc', 'cxz', '2025-02-19', '2025-02-20', 'not started', '2025-02-18 19:20:09', '2025-02-18 19:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `time_trackings`
--

CREATE TABLE `time_trackings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `today_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_trackings`
--

INSERT INTO `time_trackings` (`id`, `employee_id`, `in_time`, `out_time`, `today_date`, `created_at`, `updated_at`) VALUES
(1, 2, '07:41:00', NULL, '2025-02-21', '2025-02-20 19:42:00', '2025-02-20 19:48:28'),
(2, 5, '07:52:00', '22:51:00', '2025-02-21', '2025-02-20 19:48:45', '2025-02-20 19:51:56'),
(3, 6, '08:52:00', '08:52:00', '2025-02-21', '2025-02-20 19:52:04', '2025-02-20 19:52:10'),
(4, 2, NULL, NULL, '2025-02-05', NULL, NULL),
(5, 2, '22:14:00', NULL, '2025-02-27', '2025-02-27 11:14:09', '2025-02-27 11:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT 'erp user',
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `profile_image`, `created_at`, `updated_at`) VALUES
(1, 'rajas', 'ganesh7@gmail.com', '$2y$10$RPx2SXbUgUFdetWM4uvzP.jA6faR46ywwGWrUdRQNruwST00aYxE.', '5158013_profile.jpg', '2025-01-10 04:29:47', '2025-03-15 20:21:20'),
(2, 'erp user', 'tikayig251@doishy.com', '$2y$10$8TUVn3PIHPV9TWkYFnT2LerxMVxs4a.35pNWK7UJpQiNFuOQ2V4mO', NULL, '2025-01-10 04:46:08', '2025-03-15 20:30:12'),
(3, 'erp user', 'sanjay@gmail.com', '$2y$10$ivxDQOk/GDEQdpUsZZ28veeoZacFrZyddu93OBxihZ6ZLO/sHkmzW', NULL, '2025-02-21 20:08:04', '2025-02-21 20:08:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_roles`
--
ALTER TABLE `add_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_projects`
--
ALTER TABLE `client_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `expense_reports`
--
ALTER TABLE `expense_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgot_password_models`
--
ALTER TABLE `forgot_password_models`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profit_and_losses`
--
ALTER TABLE `profit_and_losses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_erps`
--
ALTER TABLE `purchase_erps`
  ADD PRIMARY KEY (`purchase_id`),
  ADD UNIQUE KEY `purchase_erps_purchase_user_id_unique` (`purchase_user_id`),
  ADD UNIQUE KEY `purchase_erps_purchase_key_unique` (`purchase_key`);

--
-- Indexes for table `revenue_reports`
--
ALTER TABLE `revenue_reports`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_role_name_unique` (`role_name`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_trackings`
--
ALTER TABLE `time_trackings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_roles`
--
ALTER TABLE `add_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client_projects`
--
ALTER TABLE `client_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expense_reports`
--
ALTER TABLE `expense_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forgot_password_models`
--
ALTER TABLE `forgot_password_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profit_and_losses`
--
ALTER TABLE `profit_and_losses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_erps`
--
ALTER TABLE `purchase_erps`
  MODIFY `purchase_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `revenue_reports`
--
ALTER TABLE `revenue_reports`
  MODIFY `sale_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `time_trackings`
--
ALTER TABLE `time_trackings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
