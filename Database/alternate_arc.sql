-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 08:45 AM
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
-- Database: `alternate_arc`
--

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `title`, `author`, `description`, `user_id`, `image_path`) VALUES
(1, 'Revenant', 'Kim Eun Hee', 'Revenant tells the story of Ku San Young who is possessed by a demon after a door from another world opens. Ku San Young will team up with Yeom Hae Sang who can see the demon inside her body. They will find out behind mysterious deaths related to sacred objects.', NULL, NULL),
(2, 'Twilight', 'Melissa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', NULL, NULL),
(3, 'Ultraman', 'Nopal', 'Giant of light', NULL, NULL),
(4, 'Ultraman', 'Nopal', 'Giant of light', NULL, NULL),
(5, 'Godzilla', 'Gopal', 'Giant lizard', NULL, NULL),
(6, 'tes', 'Fawwazalamsyahnaufal', '123', NULL, NULL),
(7, 'tes', 'Fawwazalamsyahnaufal', '123', NULL, NULL),
(8, 'tes123', 'Gopal', '123', NULL, NULL),
(9, 'tesssssssssssss', 'Gopal', 'wewe', NULL, NULL),
(10, 'tes', 'Fawwazalamsyahnaufal', '123', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, '', '', '$2y$10$k8GG.04NmVbEDWqfYuf6weuwmBsZwh7yqolVJDiYuR3R6fBPISZm2', '2024-04-02 08:01:23', '2024-04-02 08:01:23'),
(2, 'nopal', 'testbench@gmail.com', '$2y$10$4CypywF5xGFHJFLvnuMmPeyo.NQ48iND6qjX18mSFDHril6EJIPiC', '2024-04-02 08:05:13', '2024-04-02 08:05:13'),
(3, 'nopal45', 'blabla@gmail.com', '$2y$10$T5BqY5eK6U9F5jcJSgcMieRpF8Gd0g8QSkgBmEeiHngnntmlnWy4y', '2024-04-02 08:16:41', '2024-04-02 08:16:41'),
(5, 'nopal56757', 'black@gmail.com', '$2y$10$OU4Q6IXxWjWq1zKrHlR./.859IbngQj/oREKc/o92cwjxhMjhMLzO', '2024-04-02 08:17:55', '2024-04-02 08:17:55'),
(7, 'blabla', 'blabla453@gmail.com', '$2y$10$ZLOx.AThUwaWLtpBs68vgOotlArcVYs7R.7XatrVYicuCbV4i9eFe', '2024-04-02 08:18:45', '2024-04-02 08:18:45'),
(9, 'nopaltetet', 'tetetet@gmail.com', '$2y$10$EL1dbqq0bBkmfYfK0tZwNOI.xCzvV3dUcERGMMvcslhj.eNfwyKc6', '2024-04-02 08:19:43', '2024-04-02 08:19:43'),
(14, 'nopal999', 'blackspot444@gmail.com', '$2y$10$nl/tB.VojDOdmJT7Re1MHuIGNraFudF5QfE9cSB8PHduCfvm066Vu', '2024-04-03 18:45:24', '2024-04-03 18:45:24'),
(16, 'nopal7777', 'fafafa@gmail.com', '$2y$10$njuDH7UMKAtCZB5izZyq3eQcD5phVGwD52fqWGxR371OhBo6z3bEe', '2024-04-03 19:32:55', '2024-04-03 19:32:55'),
(17, 'nopal45434', 'Naufal@gmail.com', '$2y$10$5O6Ab3Xx0XGkgegOfMmJMuS47AMCeo3BOesQXIsIPd/wxQrbA3xYC', '2024-04-03 19:33:54', '2024-04-03 19:33:54'),
(18, 'test', 'testtest@gmail.com', '$2y$10$eijOqDwPVeDpvYrfY7vSFOQlHsGTEzdyqDKJaPFOcjpig4q1wzU4K', '2024-04-03 19:34:46', '2024-04-03 19:34:46'),
(19, 'nopal4542424', '42424@gmail.com', '$2y$10$BpuWln5qqVD1ciWpSYxV7Ot0Rn6SXL/xawXzif.5nwOlfQqlR6OJG', '2024-04-03 19:35:04', '2024-04-03 19:35:04'),
(20, 'GOPAAAAAAALLLL', 'gopallll@gmail.com', '$2y$10$YOu2FYII1fqXd4nRn.Llsez5AMk7.MtK/YAstgSMVNADPSB8Q6VGy', '2024-04-04 03:36:21', '2024-04-04 03:36:21'),
(21, 'Fawwazalamsyahnaufal', 'alamsyahnaufal453@gmail.com', '$2y$10$M8XKuy0t6QlVnlJbgZTJOeCf.NNw1DkptD9/ZDwfNc6aYaAZTzXqy', '2024-04-08 08:04:14', '2024-04-08 08:04:14'),
(22, 'Gopal', 'insideme35@gmail.com', '$2y$10$FdMxaWcfdYsNJhODTz3AfOK/hrpuHqSm4eDcnGG4b3KEGzADIIPAS', '2024-04-09 13:37:12', '2024-04-09 13:37:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
