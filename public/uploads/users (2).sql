-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2018 at 07:43 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asdp`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institutes_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` int(10) DEFAULT NULL,
  `batch_id` int(10) DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `qualification` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialization` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks` float DEFAULT NULL,
  `passout` date DEFAULT NULL,
  `collegeaddress` text COLLATE utf8mb4_unicode_ci,
  `homeaddress` text COLLATE utf8mb4_unicode_ci,
  `profilepic` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `password`, `remember_token`, `institutes_id`, `role_id`, `branch_id`, `batch_id`, `phone_number`, `dob`, `qualification`, `specialization`, `marks`, `passout`, `collegeaddress`, `homeaddress`, `profilepic`, `created_at`, `updated_at`) VALUES
(1, 'arun', 'ARUN NALAMARA', 'ab@ameyem.com', '$2y$10$MGFx4Eukees8MOkrwN0h2Oq6sowNUyBBk/PESfMe2L8e0Vs6fG2hG', 'Tw9S6ZgjlqL4oXm63qSYqFG0afkNeajzEaZD0HCvlwyuRLKnGOiDllykn0dF', '1', '1', NULL, NULL, '8800197778', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-16 18:30:00', '2017-03-16 18:30:00'),
(2, 'adi', 'Adilakshmi', 'adi@ameyem.com', '$2y$10$MGFx4Eukees8MOkrwN0h2Oq6sowNUyBBk/PESfMe2L8e0Vs6fG2hG', NULL, '1', '6', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-16 18:30:00', '2017-03-16 18:30:00'),
(3, 'narayana8055', 'ARUN NALAMARA', 'ab@test.com', '$2y$10$zxibVai9q6/eA42tgT5wUu0Rg.ZcxlvCqZMDYSfl4HYz.lOUccT5a', NULL, '1', '6', NULL, NULL, '9000181041', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-13 18:30:00', '2018-03-01 05:14:34'),
(4, 'Madhuvar', 'MadhuSushanarao N', 'madhuvarit@gmail.com', '6b47004525b8ac79d8464ea42ca3111a', NULL, '1', '6', NULL, NULL, '9866019854', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-13 18:30:00', '2017-04-13 18:30:00'),
(5, 'ramesh', 'SADARLA RAMESH BABU', 'rameshbabusadarla@gmail.com', 'a661a8935bafcf626a3b459de8324b1d', NULL, '1', '6', NULL, NULL, '9440723033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-04 18:30:00', '2017-04-04 18:30:00'),
(6, 'shiva', 'sadarla siva kumari', 'kumaribhupathi@gmail.com', '505be8441554c7d2dfae5470b98225ee', NULL, '1', '6', NULL, NULL, '9391218322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-04 18:30:00', '2017-04-04 18:30:00'),
(7, 'arun2', 'ARUN NALAMARA', 'info@ameyem.com', '2f3e139088c8e93529e7b106e740ec3e', NULL, '1', '6', NULL, NULL, '8900197778', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-07 18:30:00', '2017-04-07 18:30:00'),
(8, 'suresh', 'SADARLA SURESH BABU', 'sadarla.suresh9@gmail.com', '505be8441554c7d2dfae5470b98225ee', NULL, '1', '6', NULL, NULL, '9666222864', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-04 18:30:00', '2017-04-04 18:30:00'),
(9, 'saiganesh', 'Raja sai ganesh', 'saiganesh0321@gmail.com', '7036d22aec28157e994972bda0c5ff78', NULL, '1', '6', NULL, NULL, '8125697294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-03 18:30:00', '2017-04-03 18:30:00'),
(10, 'prasad', 'chintapalli veera prasad', 'prasad@ameyem.com', 'fd6edbb9873b3c72fd8452b8b9181165', NULL, '1', '6', NULL, NULL, '9581740376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-29 18:30:00', '2017-03-29 18:30:00'),
(11, 'venkat508', 'venkateswarlu', 'venkateswarlu@ameyem.com', '$2y$10$mUFLF/r4ohRNbIhwQUfJSOuYV834yCeXPMVPyqQil3mFv3L6OdF7S', 'ZxoO2ixWHCHMtzDQ8bSP9UCaGxgGEEcbt0suRuZfsCSaxSKTdDJvqE7Opr3T', '1', '5', NULL, NULL, '9603721749', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-25 18:30:00', '2017-03-25 18:30:00'),
(12, 'venkatesh', 'Dande Venkateswarlu', 'venkatesh.cse.tec@gmail.com', 'a5ff21a44d8b96dfdcb3fc60e312f107', NULL, '1', '6', NULL, NULL, '9848041175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-21 18:30:00', '2017-03-21 18:30:00'),
(13, 'Vijayraju', 'Dupati Vijaykumar Raju', 'dupativijaykumar@gmail.com', '170153cc817b3615c6152f0cc18e2df0', NULL, '1', '6', NULL, NULL, '9010988178', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-16 18:30:00', '2017-04-16 18:30:00'),
(14, 'ymalleswar', 'Malleswar Yenugu', 'malleswar.yenugu@gmail.com', 'a26b34da5d197c4f5f29ae647a87c3f3', NULL, '1', '6', NULL, NULL, '+1-281-687-8984', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-16 18:30:00', '2017-04-16 18:30:00'),
(15, 'Adiarun', 'Chupuri v Adilakshmi ', 'Adiarun.n@gmail.com', 'c33cb1229981269d756f2bb7235b8512', NULL, '1', '6', NULL, NULL, '9650667495', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-28 18:30:00', '2017-04-28 18:30:00'),
(16, 'ray.ajaykumar204', 'ajaykumar', 'ray.ajaykumar2044@gmail.com', 'dee9a9e509bbf5b823d7b0c149ad8e8f', NULL, '1', '6', NULL, NULL, '8801910603', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-23 18:30:00', '2017-05-23 18:30:00'),
(17, 'venky508', 'venkateshDande', 'venkateshdande6@gmail.com', 'a5ff21a44d8b96dfdcb3fc60e312f107', NULL, '1', '6', NULL, NULL, '8074781758', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 18:30:00', '2017-06-12 18:30:00'),
(18, 'naveen14', 'naveen kumaar', 'navinkumaar014@gmail.com', '$2y$10$pXtcoFvfd32NYTrne0jQC.k6kIUW61efWxftboKP.5lqExgCkfdcu', NULL, '1', '6', NULL, NULL, '9951717714', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-29 18:30:00', '2017-10-29 18:30:00'),
(19, 'karthik', 'karthik', 'karthik@live.no', '194bb6dec2e551a5d337482bf0c52601', NULL, '1', '6', NULL, NULL, '8333045355', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-13 18:30:00', '2017-11-13 18:30:00'),
(20, 'ramkethi', 'Ramanjaneyulu', 'ram.kethi@gmail.com', '5ad327178ffe0a648adf73f722a65419', NULL, '1', '6', NULL, NULL, '9542428206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-14 18:30:00', '2017-12-14 18:30:00'),
(21, 'Yamini', 'Katta yamini lakshmi prasanna', 'Yaminikatta0604@gmail.com', '53d8e4af0d00c03403bcf68a89be03de', NULL, '1', '6', NULL, NULL, '8309459611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-23 18:30:00', '2017-12-23 18:30:00'),
(22, 'T.N .K', 'naresh kumar', 'nareshtulva@gmail.com', 'a9e696982c66b67c7f574f4f0f854de0', NULL, '1', '6', NULL, NULL, '7288049063', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-07 18:30:00', '2018-01-07 18:30:00'),
(23, NULL, 'Admin', 'admin@admin.com', '$2y$10$alzGFCT/G0Jl9NQ0F6IHQOyXWJl.z4wFBZuNBxo/YyYghgnZNgS0O', 'pxKaTb4ENYv6KnI1VWHpfyXRWJAM7j9Of5An2hvMpxH76BvuWrX5M92DfP4G', '1', '5', NULL, NULL, '8800197778', '1992-07-10', 'BE', 'CSE', 70.07, '2013-04-20', 'Tirumala Engineering College', 'RangareddyPalem,Jonnalagadda,Narasaraopet', 'D:\\LARAVEL\\ASDP LARAVEL\\asdp\\public\\uploads\\venky.jpg', '2017-12-28 00:34:01', '2018-02-06 05:19:34'),
(24, NULL, 'sreedhar', 'sreedhar628@gmail.com', '$2y$10$uiIcF3Rr0eLaydhfvs15B.JjNsugePB1cdeB4j/2.W85EzTFnpngC', NULL, '3', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-19 11:12:24', '2018-02-19 11:12:24'),
(25, NULL, 'Nara sivaji', 'narasivaji@gmail.com', '$2y$10$Wucq2lpqJu4OrLvnOdKtPuywTgUZcE3wSePEdcULjRiFZF6pIB9py', NULL, '1', '6', NULL, NULL, '9666162342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-19 12:13:24', '2018-02-19 12:13:24'),
(26, NULL, 'Vs Chowdary', 'vschowdary402@gmail.com', '$2y$10$lo/dcaXCF6U3N5Numsk.2OC1WKQeg6I02P3dlSngDvvfTs/pM9lWK', NULL, '1', '6', NULL, NULL, '8297096510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-19 15:42:13', '2018-02-19 15:42:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
