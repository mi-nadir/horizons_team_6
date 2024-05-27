-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2024 at 05:59 AM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `horizons_soc_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `reg_queue`
--

CREATE TABLE `reg_queue` (
  `id` bigint NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `pass_salt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL,
  `create_time` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reg_queue`
--

INSERT INTO `reg_queue` (`id`, `firstname`, `lastname`, `birthday`, `sex`, `email`, `password`, `pass_salt`, `code`, `attempts`, `create_time`) VALUES
(41, 'Hhdhdh', '', '1989-10-15', 1, 'noreply@faqel.com', '9cf65411cb6209ec8147294b6645663306b645c95a1b41e4f11a2ded220a317a', '=$e7(,@[fufU0Rh>6X5rS\\_m;D|?j%!d', '33327646', 0, 1697370357);

-- --------------------------------------------------------

--
-- Table structure for table `restore`
--

CREATE TABLE `restore` (
  `id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_group` int NOT NULL,
  `password` varchar(64) NOT NULL,
  `pass_salt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tokens` text NOT NULL,
  `banned` tinyint(1) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `birthday`, `sex`, `photo`, `email`, `user_group`, `password`, `pass_salt`, `tokens`, `banned`, `reg_date`) VALUES
(1, 'Admin', '', '1998-03-01', 1, '', 'vipok72@yandex.ru', 1, '', 'N*.#(E&{,\'_[^T-\\7),EQkPgU>XUsp?U', '[{\"token\": \"7dd8b0f1dc2bb9bfe8555bda2f999945725d02002cbe27be0ba1c9a5d1f22e55\", \"last_use_date\": \"2024-05-20\"}, {\"token\": \"722c6d9004083325b2e9cf60a794086e73fe058a67a4db108cf3e8bb3185a03f\", \"last_use_date\": \"2024-05-20\"}, {\"token\": \"de5c412af1943959db99bb658c5b57d796e3f4388fcf785638e3acd25df243a6\", \"last_use_date\": \"2024-05-20\"}, {\"token\": \"335217759880134bfe08fdfb8c7bcc5aacc6dbd75e40ad284e4f520cebba8a72\", \"last_use_date\": \"2024-05-20\"}, {\"token\": \"264f31eb3b85fd1f34a7d3e4894f18d32f920e487d6975cd31216c0498162bca\", \"last_use_date\": \"2024-05-20\"}, {\"token\": \"6274b3e72eb5771eeaa9ca3666ac77276fcc935f776eeb02ea5044235cde8d31\", \"last_use_date\": \"2024-05-20\"}]', 0, '2023-10-09'),
(2, 'Жюрьи Мирович', 'Лучших', '1999-12-14', 1, '', 'test@tmk-group.com', 1, 'e3e5806c5e1108973a34fa055104e7f582f5ee3927a1a92f70dc0a553cb80a8d', '', '[{\"token\": \"f52adf706d48ff14a06fb864d7a2d3b7eb0cff426f7a20147fd5f021c9c590b1\", \"last_use_date\": \"2024-05-22\"}, {\"token\": \"1c91a0f067bb629dd75fc10836f62c957fc536f2b50aeb8281dc4696db62fc81\", \"last_use_date\": \"2024-05-22\"}, {\"token\": \"57011cd3db23fa2cd5a7f21fdb5f6aa91f91e2f01b1c2ce5fe271cb8598d8358\", \"last_use_date\": \"2024-05-21\"}, {\"token\": \"0f14d773f7a96902f3cdb1a4fc7ab921c1772b394af71ffef37c734891733579\", \"last_use_date\": \"2024-05-21\"}, {\"token\": \"aad672d185c338d877b319c889b1b547f1cc1fffa57e5e1d5e344911f720cb32\", \"last_use_date\": \"2024-05-21\"}, {\"token\": \"18634203f03fa7b5c73ab9c58f80f05471e9bf7c73c61c8bbd44d3e7ce277d6a\", \"last_use_date\": \"2024-05-21\"}, {\"token\": \"464a5013ea57b9ae2af597733eb24c976c112a11cf3a73da7ab186a9c11d016a\", \"last_use_date\": \"2024-05-21\"}, {\"token\": \"65aca2e81bfe8066186044f6766b25139e0dadb51bf35085bb8ecf598f10dce1\", \"last_use_date\": \"2024-05-21\"}, {\"token\": \"57d065ba56db4fc29828074e904498e9152e0b6ba39235213f5c74a3ad22596d\", \"last_use_date\": \"2024-05-21\"}, {\"token\": \"52b35364b99adbdd1c50a23ebd288b3df1300e543b84a150b702964165f3fab2\", \"last_use_date\": \"2024-05-21\"}]', 0, '2023-10-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reg_queue`
--
ALTER TABLE `reg_queue`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `restore`
--
ALTER TABLE `restore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reg_queue`
--
ALTER TABLE `reg_queue`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `restore`
--
ALTER TABLE `restore`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
