-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2018 at 06:40 AM
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
-- Database: `asdp_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tasks`
--

CREATE TABLE `admin_tasks` (
  `id` int(11) NOT NULL,
  `institutes_id` int(5) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `worknature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worktitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workdescription` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatinitforme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usercredits` decimal(8,2) DEFAULT NULL,
  `guidecredits` decimal(8,2) DEFAULT NULL,
  `reviewercredits` decimal(8,2) DEFAULT NULL,
  `uploads` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_tasks`
--

INSERT INTO `admin_tasks` (`id`, `institutes_id`, `user_id`, `worknature`, `subject`, `worktitle`, `workdescription`, `whatinitforme`, `usercredits`, `guidecredits`, `reviewercredits`, `uploads`, `updated_at`, `created_at`) VALUES
(1, 1, 1, 'task', 'general', 'Profile and skill set filling', 'You need to fill all possible details. The skills part is starting point and it will be the guiding factor which skills you are interested in and where you will be concentrating and which tasks and assignments are suitable to you. For proficiency in skills you need to be giving the rate from 0 to 10. zero being the \'not heard\' and 10 being the master in that perticular skill. Association you can chose and the teaching assistant is mix of learner and teacher. So chose wisely.', 'It will be the guiding factor for future endeavours. It makes instructors to set the path for you.', '5.00', '0.00', '1.00', NULL, '2017-03-29 06:41:49', '2017-03-29 06:41:49'),
(2, 1, 7, 'assignment and ppt', 'Java', 'File input & Output functions', NULL, ' This is an important aspect in developing mainstream software', '8.00', '2.00', '1.00', NULL, '2017-04-11 21:46:27', '2017-04-11 21:46:27'),
(3, 1, 7, 'task', 'General', 'Get quotation and details for pamphlet', NULL, ' Good for company and yourself', '5.00', '2.00', '1.00', NULL, '2017-04-12 00:05:31', '2017-04-12 00:05:31'),
(4, 1, 1, 'task', 'HTML', 'Introductory HTML', NULL, ' You will be introduced to web world.', '5.00', '2.00', '1.00', '../activity/workfiles/task-htm-4/arun/Intro to html.rar', '2017-04-13 00:53:20', '2017-04-13 00:53:20'),
(5, 1, 1, 'task', 'General', 'Develop look and feel of Ameyem pages', NULL, ' For the growth of company', '5.00', '1.00', '0.00', '../activity/workfiles/task-gen-5/arun/look&feel.rar', '2017-04-13 04:24:59', '2017-04-13 04:24:59'),
(6, 1, 1, 'task', 'java', 'Assignment on overriding', NULL, ' Development of highend pc and mobile apps will be made easy', '5.00', '2.00', '1.00', NULL, '2017-04-13 04:35:07', '2017-04-13 04:35:07'),
(7, 1, 1, 'task', 'Java', 'Dealing with more than one java class.', NULL, ' You will know how to handle various classes and various source files', '5.00', '2.00', '1.00', '../activity/workfiles/task-jav-7/arun/file data and java io files.zip', '2017-04-13 22:30:30', '2017-04-13 22:30:30'),
(8, 1, 1, 'task', 'Java', 'Reading data from text file and keeping them in array variables', NULL, ' You will know how to handle various classes and various source files', '3.00', '1.00', '0.00', '../activity/workfiles/task-jav-7/arun/file data and java io files.zip', '2017-04-13 22:35:31', '2017-04-13 22:35:31'),
(9, 1, 1, 'task', 'General', 'Facebook account', NULL, ' For the growth of company', '3.00', '1.00', '0.00', NULL, '2017-04-14 02:37:41', '2017-04-14 02:37:41'),
(10, 1, 1, 'assignment and ppt', 'Python', 'Introduction to python', NULL, ' It will help guide to understand your level of understanding of python and to decide how it can further be sharpened.', '10.00', '2.00', '1.00', NULL, '2017-04-17 03:03:07', '2017-04-17 03:03:07'),
(11, 1, 1, 'task', 'Java', 'Upgradation of text data read program- for unknown number of coulumns and rows', NULL, ' With this you will become semi skilled person dealing with input and output files. This project can be upgraded to read image files, excel sheets, csv files and so on.', '4.00', '3.00', '1.00', '../activity/workfiles/task-jav-11/arun/floatmul_ab.zip', '2017-04-18 03:31:53', '2017-04-18 03:31:53'),
(12, 1, 1, 'assignment and ppt', 'Java_script', 'Static and dynamic pages- Javascript introduction', NULL, ' You will get a flavor of Javascript scripting language. And entry point to the \"Future of the web-development\"', '4.00', '2.00', '1.00', '../activity/workfiles/assi-jav-12/arun/form_eg.zip', '2017-04-18 20:48:12', '2017-04-18 20:48:12'),
(13, 1, 1, 'task', 'Java', 'Write a class with matrix methods', NULL, ' You will get the flavor of Arithmetics and power of java in scientific calculations ', '10.00', '4.00', '3.00', NULL, '2017-04-21 07:08:48', '2017-04-21 07:08:48'),
(14, 1, 1, 'task', 'Python', 'Write a python program for text processing and plot statistics', NULL, ' You will get the flavor of Arithmetics and power of java in scientific calculations ', '4.00', '2.00', '1.00', '../activity/workfiles/task-pyt-14/arun/text.txt', '2017-04-21 07:14:56', '2017-04-21 07:14:56'),
(15, 1, 1, 'task', 'General', 'Visiting card for Arun Babu, Ameyem Geosolutions Pvt. Ltd.', NULL, ' For company and you know how to design something on microsoft word.', '4.00', '1.00', '1.00', NULL, '2017-04-23 23:10:19', '2017-04-23 23:10:19'),
(16, 1, 1, 'task', 'Java_script', 'Temperature converter', NULL, 'You can create dynamic web pages', '5.00', '2.00', '1.00', '../activity/workfiles/task-jav-16/arun/Temperature converter excersize.7z', '2017-04-25 19:54:02', '2017-04-25 19:54:02'),
(17, 1, 1, 'task', 'Java', 'Program to plot', NULL, ' A step closer to building the serious desktop applications.', '3.00', '2.00', '1.00', NULL, '2017-04-26 14:15:39', '2017-04-26 14:15:39'),
(18, 1, 1, 'task', 'General', 'Revamp the skills.ameyem.com (Ameyem Skill Labs) main page', NULL, 'Team work, self motivated thinking, thinking the corporate way. You will learn how to meet the requirements of the client.', '10.00', '3.00', '2.00', '../activity/workfiles/task-gen-18/arun/htdocs.rar', '2017-04-26 14:28:12', '2017-04-26 14:28:12'),
(19, 1, 1, 'task', 'Java', 'Java FX implementation for plotxy task', NULL, ' You will be like a professional developer in his early days.', '7.00', '4.00', '3.00', '../activity/workfiles/task-jav-19/arun/MyFxApp.zip', '2017-04-27 14:07:31', '2017-04-27 14:07:31'),
(20, 1, 1, 'task', 'Java_script', 'Json data & plot', NULL, 'In this task, you will know what is json file and how to get contents of it from server with the help of server based php file and how to access the json data with js.', '5.00', '2.00', '1.00', '../activity/workfiles/task-jav-20/arun/json_js_advanced.7z', '2017-05-01 13:14:27', '2017-05-01 13:14:27'),
(21, 1, 1, 'task', 'Java_script', 'Calculator', NULL, ' You will know to use the buttons, how to access their values and how to display results.', '3.00', '1.00', '1.00', NULL, '2017-05-01 13:33:17', '2017-05-01 13:33:17'),
(22, 1, 1, 'assignment and ppt', 'Java_script', 'Note Json format, jquery, ajax & php- how to access data and how twitter uses json data', NULL, ' Overall idea of how are the present day web trends', '4.00', '2.00', '1.00', NULL, '2017-05-08 23:08:01', '2017-05-08 23:08:01'),
(23, 1, 1, 'task', 'Java', 'JavaFX editable & Responisve tables', NULL, 'Mastering JavaFX tables...', '5.00', '2.00', '1.00', '../activity/workfiles/task-jav-23/arun/Selectable table excersize.rar', '2017-05-10 23:26:48', '2017-05-10 23:26:48'),
(24, 1, 1, 'Project', 'PHP', 'Build candidate page ', NULL, ' You not only get mastery in php but javascript and webdevelopment.', '8.00', '2.00', '1.00', '../activity/workfiles/Proj-php-24/arun/candidate_page.7z', '2017-05-11 20:06:50', '2017-05-11 20:06:50'),
(25, 1, 1, 'task', 'Java', 'Read las file in tableplot java', NULL, ' In the process of building software you are one step closer', '3.00', '1.00', '1.00', '../activity/workfiles/task-jav-25/arun/well.7z', '2017-05-16 23:04:45', '2017-05-16 23:04:45'),
(26, 1, 1, 'task', 'PHP', 'Uploading user info from contact page', NULL, ' Will be knowing various details of php, javascript and json.', '4.00', '2.00', '1.00', '../activity/workfiles/task-php-26/arun/activity.7z', '2017-05-17 01:05:46', '2017-05-17 01:05:46'),
(27, 1, 1, 'task', 'General', 'Pamphlets distribution- Oral orientation to 10 people', NULL, ' You gain credits and how to handle people', '10.00', '1.00', '3.00', NULL, '2017-05-24 01:02:25', '2017-05-24 01:02:25'),
(28, 1, 1, 'presentation', 'General', 'Presentation about ASDP for Colleges', NULL, ' For company growth', '5.00', '2.00', '1.00', NULL, '2017-05-30 00:09:48', '2017-05-30 00:09:48'),
(29, 1, 1, 'task', 'Embedded', 'Install and run basic programs on Arduino uno-nano', NULL, ' You will be introduced to the work of Arduino and IOT', '5.00', '2.00', '1.00', '../activity/workfiles/task-emb-29/arun/myprogs_arduino.rar', '2017-05-31 02:05:29', '2017-05-31 02:05:29'),
(30, 1, 1, 'Project', 'Embedded', 'RaspVideo', NULL, ' You will be good at IoT as well as in python.', '20.00', '5.00', '2.00', NULL, '2017-05-31 03:01:01', '2017-05-31 03:01:01'),
(31, 1, 1, 'task', 'Concept', 'Ameyem Skill page design flaws', NULL, ' It is part of testing tools and analysis', '3.00', '2.00', '1.00', NULL, '2017-06-08 23:33:45', '2017-06-08 23:33:45'),
(32, 1, 1, 'task', 'General', 'Build a questionare page- Urgent', NULL, ' To see whether ASDP can go in big way....', '3.00', '1.00', '1.00', '../activity/workfiles/task-gen-32/arun/Questionare page.rar', '2017-06-18 23:39:50', '2017-06-18 23:39:50'),
(33, 1, 1, 'task', 'General', 'Build a questionare page- Urgent', NULL, ' To see whether ASDP can go in big way....', '3.00', '1.00', '1.00', '../activity/workfiles/task-gen-33/arun/Questionare page.rar', '2017-06-18 23:39:56', '2017-06-18 23:39:56'),
(34, 1, 1, 'assignment and ppt', 'Python', 'List of tenders from website', NULL, ' For your python capabilities and company growth', '5.00', '2.00', '1.00', '../activity/workfiles/assi-pyt-34/arun/links for sites - Copy.rar', '2017-07-17 23:13:23', '2017-07-17 23:13:23'),
(35, 1, 1, 'assignment and ppt', 'Python', 'List of tenders from website', NULL, ' For your python capabilities and company growth', '5.00', '2.00', '1.00', '../activity/workfiles/assi-pyt-35/arun/links for sites - Copy.rar', '2017-07-17 23:13:29', '2017-07-17 23:13:29'),
(36, 1, 1, 'assignment and ppt', 'Concept', 'Accelerated learning', NULL, ' for company', '5.00', '2.00', '1.00', '../activity/workfiles/assi-con-36/arun/Programming_ppts.7z', '2017-08-02 22:24:05', '2017-08-02 22:24:05'),
(37, 1, 1, 'task', 'HTML', 'Building bio along with learning table & forms', NULL, ' You will be one step closer to html mastering', '5.00', '2.00', '1.00', '../activity/workfiles/task-htm-37/arun/Third day.rar', '2017-11-11 01:48:38', '2017-11-11 01:48:38'),
(38, 1, 1, 'task', 'HTML', 'Build simple website', NULL, ' You will learn how combination of div elements and the css will make your website beautiful.', '5.00', '2.00', '1.00', '../activity/workfiles/task-htm-38/arun/04. Fouth day.rar', '2017-11-14 06:34:44', '2017-11-14 06:34:44'),
(39, 1, 1, 'task', 'CSS', 'Read various css contents and get telugu font working in a webpage', NULL, ' Great learning for you', '8.00', '2.00', '1.00', '../activity/workfiles/task-css-39/arun/book_2.rar', '2017-11-15 06:40:16', '2017-11-15 06:40:16'),
(40, 1, 1, 'presentation', 'HTML', 'Introduction to HTML', NULL, ' ', '10.00', '2.00', '1.00', NULL, '2017-11-18 00:26:52', '2017-11-18 00:26:52'),
(41, 1, 1, 'assignment and ppt', 'CSS', 'Presentation on Entire CSS', NULL, ' ', '5.00', '2.00', '1.00', NULL, '2017-11-28 01:00:36', '2017-11-28 01:00:36'),
(42, 1, 1, 'assignment and ppt', 'General', 'Presentation on Creative thinking', NULL, ' ', '10.00', '2.00', '1.00', NULL, '2017-11-28 01:01:50', '2017-11-28 01:01:50'),
(43, 1, 1, 'assignment and ppt', 'General', 'Preparation for Jobs', NULL, ' ', '10.00', '2.00', '1.00', NULL, '2017-11-28 01:03:39', '2017-11-28 01:03:39'),
(44, 1, 1, 'task', 'Java_script', 'Build JS page to display distance between cities', NULL, ' Most of JS you learn', '10.00', '2.00', '1.00', NULL, '2017-12-01 04:35:16', '2017-12-01 04:35:16'),
(45, 1, 1, 'task', 'Python', 'Write a program find the factorial of a number', NULL, ' Basics of python', '5.00', '2.00', '1.00', NULL, '2017-12-15 23:24:55', '2017-12-15 23:24:55'),
(46, 1, 1, 'presentation', 'Java_script', 'Presentation on arrays', NULL, ' Good exercise to build your programming skills', '7.00', '2.00', '1.00', NULL, '2017-12-15 23:37:38', '2017-12-15 23:37:38'),
(47, 1, 1, 'task', 'Python', 'Guessing game', NULL, ' Great fun learning', '10.00', '2.00', '1.00', NULL, '2017-12-22 20:23:33', '2017-12-22 20:23:33'),
(48, 1, 1, 'presentation', 'Python', 'Presentation on python introduction', NULL, '', '10.00', '2.00', '1.00', NULL, '2017-12-22 20:27:54', '2017-12-22 20:27:54'),
(49, 1, 1, 'Project', 'Java_script', 'Fast type words- Game with JavaScript-DOM', NULL, 'Great achievement in JavaScript', '20.00', '2.00', '1.00', NULL, '2017-12-22 20:35:03', '2017-12-22 20:35:03'),
(50, 1, 1, 'presentation', 'HTML', 'Presentation on HTML', NULL, ' Good for you', '5.00', '2.00', '1.00', NULL, '2018-01-09 02:12:04', '2018-01-09 02:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `assign_tasks`
--

CREATE TABLE `assign_tasks` (
  `id` int(11) NOT NULL,
  `assigned_by_userid` int(11) DEFAULT NULL,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `guide_id` int(11) NOT NULL,
  `reviewer_id` int(11) NOT NULL,
  `status` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_credits` float DEFAULT NULL,
  `guide_credits` float DEFAULT NULL,
  `reviewer_credits` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `target_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_tasks`
--

INSERT INTO `assign_tasks` (`id`, `assigned_by_userid`, `task_id`, `user_id`, `guide_id`, `reviewer_id`, `status`, `user_credits`, `guide_credits`, `reviewer_credits`, `created_at`, `target_at`, `completed_at`, `updated_at`) VALUES
(1, 1, 1, 7, 1, 1, 'approved', 4, 0, 1, '2017-04-11 20:35:40', '2017-04-13 20:35:40', '2017-06-21 17:53:50', '2017-06-21 17:53:50'),
(2, 7, 2, 7, 1, 1, 'approved', 0.8, 0.2, 1, '2017-04-12 04:34:27', '2017-04-19 04:34:27', '2017-04-18 16:48:44', '2017-04-18 16:48:44'),
(3, 7, 2, 10, 1, 1, 'approved', 5, 2, 1, '2017-04-12 04:34:27', '2017-04-19 04:34:27', '2017-04-13 18:19:16', '2017-04-13 18:19:16'),
(4, 1, 1, 10, 1, 1, 'approved', 5, 0, 1, '2017-04-12 04:47:29', '2017-04-14 04:47:29', '2017-04-27 16:45:24', '2017-04-27 16:45:24'),
(5, 7, 3, 11, 1, 1, 'approved', 4, 1.8, 1, '2017-04-12 09:10:41', '2017-04-14 09:10:41', '2017-06-12 18:26:58', '2017-06-12 18:26:58'),
(6, 1, 1, 1, 1, 1, 'drop', NULL, NULL, NULL, '2017-04-12 13:43:50', '2017-04-14 13:43:50', NULL, NULL),
(7, 1, 1, 11, 1, 1, 'approved', 5, 0, 1, '2017-04-12 17:17:32', '2017-04-14 17:17:32', '2017-04-18 16:50:07', '2017-04-18 16:50:07'),
(8, 1, 4, 9, 1, 1, 'NA', NULL, NULL, NULL, '2017-04-13 06:24:25', '2017-04-15 06:24:25', NULL, NULL),
(9, 1, 4, 8, 1, 1, 'NA', NULL, NULL, NULL, '2017-04-13 06:24:25', '2017-04-15 06:24:25', NULL, NULL),
(10, 1, 5, 11, 1, 1, 'approved', 3, 0.9, 0, '2017-04-13 10:06:13', NULL, '2017-04-18 16:47:25', '2017-04-18 16:47:25'),
(11, 1, 7, 7, 1, 1, 'approved', 1, 0.4, 1, '2017-04-14 04:06:23', '2017-04-16 04:06:23', '2017-04-18 16:53:59', '2017-04-18 16:53:59'),
(12, 1, 7, 10, 1, 1, 'approved', 3, 1.8, 1, '2017-04-14 04:06:23', '2017-04-16 04:06:23', '2017-04-15 11:16:50', '2017-04-15 11:16:50'),
(13, 1, 1, 4, 1, 1, 'NA', NULL, NULL, NULL, '2017-04-14 07:44:25', '2017-04-16 07:44:25', NULL, NULL),
(14, 1, 9, 11, 1, 1, 'approved', 2.4, 1, 0, '2017-04-14 08:08:20', '2017-04-16 08:08:20', '2017-04-17 18:31:17', '2017-04-17 18:31:17'),
(15, 1, 1, 3, 1, 1, 'NA', NULL, NULL, NULL, '2017-04-14 16:11:08', '2017-04-16 16:11:08', NULL, NULL),
(16, 1, 11, 10, 1, 1, 'approved', 4, 3, 1, '2017-04-18 09:02:14', '2017-04-20 09:02:14', '2017-04-21 12:10:13', '2017-04-21 12:10:13'),
(17, 1, 12, 10, 1, 1, 'approved', 4, 2, 1, '2017-04-19 02:18:48', '2017-04-26 02:18:48', '2017-04-25 04:37:38', '2017-04-25 04:37:38'),
(18, 1, 12, 11, 1, 1, 'approved', 3.2, 1.8, 1, '2017-04-19 02:18:48', '2017-04-26 02:18:48', '2017-04-26 19:33:04', '2017-04-26 19:33:04'),
(19, 1, 13, 10, 1, 1, 'approved', 8, 3.6, 3, '2017-04-21 12:39:14', '2017-04-23 12:39:14', '2017-04-27 16:44:12', '2017-04-27 16:44:12'),
(20, 1, 14, 11, 1, 1, 'approved', 1.6, 1.8, 1, '2017-04-21 12:45:18', '2017-04-23 12:45:18', '2017-06-19 05:14:46', '2017-06-19 05:14:46'),
(21, 8, 6, 8, 1, 1, 'approved', 3.5, 1, 1, '2017-04-22 13:47:16', '2017-04-24 13:47:16', '2017-04-24 04:26:45', '2017-04-24 04:26:45'),
(22, 1, 15, 11, 1, 1, 'review', 0, 0, 1, '2017-04-24 04:51:21', '2017-04-26 04:51:21', '2017-04-25 08:35:02', '2017-04-25 08:35:02'),
(23, 1, 16, 10, 1, 1, 'approved', 5, 1.8, 1, '2017-04-26 01:24:38', '2017-04-28 01:24:38', '2017-04-27 18:20:39', '2017-04-27 18:20:39'),
(24, 1, 16, 11, 1, 1, 'approved', 2.5, 1.8, 1, '2017-04-26 01:24:38', '2017-04-28 01:24:38', '2017-05-01 17:32:42', '2017-05-01 17:32:42'),
(25, 1, 4, 4, 1, 1, 'redo', NULL, NULL, NULL, '2017-04-26 01:26:22', '2017-04-28 01:26:22', NULL, NULL),
(26, 1, 17, 10, 1, 1, 'approved', 3, 2, 1, '2017-04-26 19:45:59', '2017-04-28 19:45:59', '2017-04-27 17:36:08', '2017-04-27 17:36:08'),
(27, 1, 18, 11, 1, 1, 'approved', 7, 2.7, 2, '2017-04-26 19:58:44', '2017-04-28 19:58:44', '2017-05-24 06:27:38', '2017-05-24 06:27:38'),
(28, 1, 18, 10, 1, 1, 'approved', 7, 1.5, 2, '2017-04-26 19:58:44', '2017-04-28 19:58:44', '2017-05-24 06:27:04', '2017-05-24 06:27:04'),
(29, 1, 19, 10, 1, 1, 'approved', 5.6, 4, 3, '2017-04-27 19:37:51', '2017-04-29 19:37:51', '2017-05-10 12:26:35', '2017-05-10 12:26:35'),
(30, 1, 21, 10, 1, 1, 'approved', 3, 1, 1, '2017-05-01 19:03:32', '2017-05-03 19:03:32', '2017-05-07 13:41:22', '2017-05-07 13:41:22'),
(31, 1, 20, 10, 1, 1, 'approved', 5, 2, 1, '2017-05-04 05:59:12', '2017-05-06 05:59:12', '2017-05-09 16:30:30', '2017-05-09 16:30:30'),
(32, 1, 23, 10, 1, 1, 'redo', NULL, NULL, NULL, '2017-05-11 04:57:18', '2017-05-13 04:57:18', NULL, NULL),
(33, 1, 24, 11, 1, 1, 'approved', 0, 0.2, 1, '2017-05-12 01:37:15', '2017-06-11 01:37:15', '2017-06-19 05:13:13', '2017-06-19 05:13:13'),
(34, 1, 24, 10, 1, 1, 'approved', 8, 1.8, 1, '2017-05-12 01:37:15', '2017-06-11 01:37:15', '2017-06-21 17:50:28', '2017-06-21 17:50:28'),
(35, 1, 25, 10, 1, 1, 'approved', 3, 0.9, 1, '2017-05-17 04:35:02', '2017-05-19 04:35:02', '2017-05-24 06:19:11', '2017-05-24 06:19:11'),
(36, 1, 26, 11, 1, 1, 'approved', 0, 0.2, 1, '2017-05-17 06:36:11', '2017-05-19 06:36:11', '2017-06-19 05:12:15', '2017-06-19 05:12:15'),
(37, 1, 27, 10, 1, 1, 'NA', NULL, NULL, NULL, '2017-05-24 06:33:28', '2017-05-26 06:33:28', NULL, NULL),
(38, 1, 27, 11, 1, 1, 'review', NULL, NULL, NULL, '2017-05-24 06:33:28', '2017-05-26 06:33:28', NULL, NULL),
(39, 1, 28, 11, 1, 1, 'approved', 4, 1.8, 1, '2017-05-30 05:41:38', '2017-06-14 05:41:38', '2017-06-08 04:33:56', '2017-06-08 04:33:56'),
(40, 1, 29, 11, 1, 1, 'approved', 2.5, 1.8, 1, '2017-05-31 07:35:52', '2017-06-02 07:35:52', '2017-11-28 06:01:28', '2017-11-28 06:01:28'),
(41, 1, 30, 11, 1, 1, 'approved', 16, 4.5, 2, '2017-05-31 08:53:16', '2017-06-30 08:53:16', '2017-07-19 17:05:17', '2017-07-19 17:05:17'),
(42, 1, 31, 11, 1, 1, 'approved', 1.2, 1.8, 1, '2017-06-09 05:04:10', '2017-06-11 05:04:10', '2017-11-28 06:02:09', '2017-11-28 06:02:09'),
(43, 1, 31, 10, 1, 1, 'NA', NULL, NULL, NULL, '2017-06-09 05:04:10', '2017-06-11 05:04:10', NULL, NULL),
(44, 1, 32, 11, 1, 1, 'approved', 3, 0.9, 1, '2017-06-19 05:10:53', '2017-06-21 05:10:53', '2017-06-21 17:52:46', '2017-06-21 17:52:46'),
(45, 1, 4, 16, 1, 1, 'NA', NULL, NULL, NULL, '2017-07-13 18:44:23', '2017-07-15 18:44:23', NULL, NULL),
(46, 1, 4, 13, 1, 1, 'NA', NULL, NULL, NULL, '2017-07-13 18:44:23', '2017-07-15 18:44:23', NULL, NULL),
(47, 1, 34, 11, 1, 1, 'approved', 4, 1.8, 1, '2017-07-18 04:43:59', '2017-07-25 04:43:59', '2017-11-14 12:34:24', '2017-11-14 12:34:24'),
(48, 1, 36, 11, 1, 1, 'redo', NULL, NULL, NULL, '2017-08-03 03:54:22', '2017-08-10 03:54:22', NULL, NULL),
(49, 1, 4, 18, 1, 1, 'approved', 5, 1.8, 1, '2017-11-09 05:07:03', '2017-11-11 05:07:03', '2017-11-14 12:33:48', '2017-11-14 12:33:48'),
(50, 11, 22, 11, 1, 1, 'droped', NULL, NULL, NULL, '2017-11-09 09:25:09', '2017-11-16 09:25:09', NULL, NULL),
(51, 1, 37, 18, 1, 1, 'approved', 4, 1.8, 1, '2017-11-11 07:18:59', '2017-11-13 07:18:59', '2017-11-14 12:00:06', '2017-11-14 12:00:06'),
(52, 19, 1, 19, 1, 1, 'NA', NULL, NULL, NULL, '2017-11-14 10:56:52', '2017-11-16 10:56:52', NULL, NULL),
(53, 1, 38, 18, 1, 1, 'approved', 4, 1.8, 1, '2017-11-14 12:04:59', '2017-11-16 12:04:59', '2017-11-28 06:00:49', '2017-11-28 06:00:49'),
(54, 1, 39, 18, 1, 1, 'approved', 8, 1.8, 1, '2017-11-15 12:10:33', '2017-11-17 12:10:33', '2017-12-05 05:01:14', '2017-12-05 05:01:14'),
(55, 1, 41, 18, 1, 1, 'approved', 4, 1.8, 1, '2017-11-28 06:30:57', '2017-12-05 06:30:57', '2017-12-04 04:49:47', '2017-12-04 04:49:47'),
(56, 1, 42, 18, 1, 1, 'approved', 8, 1.8, 1, '2017-11-28 06:32:06', '2017-12-05 06:32:06', '2017-12-04 04:49:18', '2017-12-04 04:49:18'),
(57, 1, 43, 18, 1, 1, 'NA', NULL, NULL, NULL, '2017-11-28 06:33:54', '2017-12-05 06:33:54', NULL, NULL),
(58, 1, 44, 18, 1, 1, 'approved', 10, 1.8, 1, '2017-12-01 10:05:44', '2017-12-03 10:05:44', '2017-12-23 01:28:06', '2017-12-23 01:28:06'),
(59, 1, 45, 18, 1, 1, 'approved', 4, 1.8, 1, '2017-12-16 04:55:17', '2017-12-18 04:55:17', '2017-12-23 01:29:39', '2017-12-23 01:29:39'),
(60, 1, 10, 18, 1, 1, 'approved', 10, 1.8, 1, '2017-12-16 04:56:22', '2017-12-23 04:56:22', '2017-12-23 01:43:01', '2017-12-23 01:43:01'),
(61, 1, 47, 18, 1, 1, 'approved', 8, 1.8, 1, '2017-12-23 01:54:57', '2017-12-25 01:54:57', '2018-01-11 11:47:55', '2018-01-11 11:47:55'),
(62, 1, 48, 18, 1, 1, 'NA', NULL, NULL, NULL, '2017-12-23 01:59:10', '2018-01-07 01:59:10', NULL, NULL),
(63, 1, 49, 18, 1, 1, 'NA', NULL, NULL, NULL, '2017-12-23 02:06:23', '2018-01-22 02:06:23', NULL, NULL),
(64, 1, 40, 22, 1, 1, 'NA', NULL, NULL, NULL, '2018-01-09 07:40:00', '2018-01-24 07:40:00', NULL, NULL),
(65, 1, 50, 22, 1, 1, 'review', NULL, NULL, NULL, '2018-01-09 07:42:17', '2018-01-24 07:42:17', NULL, NULL);

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
(1, 'arun', 'ARUN NALAMARA', 'ab@ameyem.com', 'd2930f9ff140ed33aa018ac0233d7c61', NULL, NULL, NULL, NULL, NULL, '8800197778', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-16 18:30:00', '2017-03-16 18:30:00'),
(2, 'adi', 'Adilakshmi', 'adi@ameyem.com', '5715', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-16 18:30:00', '2017-03-16 18:30:00'),
(3, 'narayana8055', 'Narayana Sukhamanchi', 's.chinna111@gmail.com', '688e19d1c212598fed57f9c18b5676e3', NULL, NULL, NULL, NULL, NULL, '9000181041', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-13 18:30:00', '2017-04-13 18:30:00'),
(4, 'Madhuvar', 'MadhuSushanarao N', 'madhuvarit@gmail.com', '6b47004525b8ac79d8464ea42ca3111a', NULL, NULL, NULL, NULL, NULL, '9866019854', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-13 18:30:00', '2017-04-13 18:30:00'),
(5, 'ramesh', 'SADARLA RAMESH BABU', 'rameshbabusadarla@gmail.com', 'a661a8935bafcf626a3b459de8324b1d', NULL, NULL, NULL, NULL, NULL, '9440723033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-04 18:30:00', '2017-04-04 18:30:00'),
(6, 'shiva', 'sadarla siva kumari', 'kumaribhupathi@gmail.com', '505be8441554c7d2dfae5470b98225ee', NULL, NULL, NULL, NULL, NULL, '9391218322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-04 18:30:00', '2017-04-04 18:30:00'),
(7, 'arun2', 'ARUN NALAMARA', 'info@ameyem.com', '2f3e139088c8e93529e7b106e740ec3e', NULL, NULL, NULL, NULL, NULL, '8900197778', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-07 18:30:00', '2017-04-07 18:30:00'),
(8, 'suresh', 'SADARLA SURESH BABU', 'sadarla.suresh9@gmail.com', '505be8441554c7d2dfae5470b98225ee', NULL, NULL, NULL, NULL, NULL, '9666222864', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-04 18:30:00', '2017-04-04 18:30:00'),
(9, 'saiganesh', 'Raja sai ganesh', 'saiganesh0321@gmail.com', '7036d22aec28157e994972bda0c5ff78', NULL, NULL, NULL, NULL, NULL, '8125697294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-03 18:30:00', '2017-04-03 18:30:00'),
(10, 'prasad', 'chintapalli veera prasad', 'prasad@ameyem.com', 'fd6edbb9873b3c72fd8452b8b9181165', NULL, NULL, NULL, NULL, NULL, '9581740376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-29 18:30:00', '2017-03-29 18:30:00'),
(11, 'venkat508', 'venkateswarlu', 'venkateswarlu@ameyem.com', 'a5ff21a44d8b96dfdcb3fc60e312f107', NULL, NULL, NULL, NULL, NULL, '9603721749', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-25 18:30:00', '2017-03-25 18:30:00'),
(12, 'venkatesh', 'Dande Venkateswarlu', 'venkatesh.cse.tec@gmail.com', 'a5ff21a44d8b96dfdcb3fc60e312f107', NULL, NULL, NULL, NULL, NULL, '9848041175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-21 18:30:00', '2017-03-21 18:30:00'),
(13, 'Vijayraju', 'Dupati Vijaykumar Raju', 'dupativijaykumar@gmail.com', '170153cc817b3615c6152f0cc18e2df0', NULL, NULL, NULL, NULL, NULL, '9010988178', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-16 18:30:00', '2017-04-16 18:30:00'),
(14, 'ymalleswar', 'Malleswar Yenugu', 'malleswar.yenugu@gmail.com', 'a26b34da5d197c4f5f29ae647a87c3f3', NULL, NULL, NULL, NULL, NULL, '+1-281-687-8984', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-16 18:30:00', '2017-04-16 18:30:00'),
(15, 'Adiarun', 'Chupuri v Adilakshmi ', 'Adiarun.n@gmail.com', 'c33cb1229981269d756f2bb7235b8512', NULL, NULL, NULL, NULL, NULL, '9650667495', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-28 18:30:00', '2017-04-28 18:30:00'),
(16, 'ray.ajaykumar204', 'ajaykumar', 'ray.ajaykumar2044@gmail.com', 'dee9a9e509bbf5b823d7b0c149ad8e8f', NULL, NULL, NULL, NULL, NULL, '8801910603', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-23 18:30:00', '2017-05-23 18:30:00'),
(17, 'venky508', 'venkateshDande', 'venkateshdande6@gmail.com', 'a5ff21a44d8b96dfdcb3fc60e312f107', NULL, NULL, NULL, NULL, NULL, '8074781758', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 18:30:00', '2017-06-12 18:30:00'),
(18, 'naveen14', 'naveen kumaar', 'navinkumaar014@gmail.com', '44779c95a064f90344fce3fbad6091b1', NULL, NULL, NULL, NULL, NULL, '9951717714', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-29 18:30:00', '2017-10-29 18:30:00'),
(19, 'karthik', 'karthik', 'karthik@live.no', '194bb6dec2e551a5d337482bf0c52601', NULL, NULL, NULL, NULL, NULL, '8333045355', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-13 18:30:00', '2017-11-13 18:30:00'),
(20, 'ramkethi', 'Ramanjaneyulu', 'ram.kethi@gmail.com', '5ad327178ffe0a648adf73f722a65419', NULL, NULL, NULL, NULL, NULL, '9542428206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-14 18:30:00', '2017-12-14 18:30:00'),
(21, 'Yamini', 'Katta yamini lakshmi prasanna', 'Yaminikatta0604@gmail.com', '53d8e4af0d00c03403bcf68a89be03de', NULL, NULL, NULL, NULL, NULL, '8309459611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-23 18:30:00', '2017-12-23 18:30:00'),
(22, 'T.N.K', 'naresh kumar', 'nareshtulva@gmail.com', 'a9e696982c66b67c7f574f4f0f854de0', NULL, NULL, NULL, NULL, NULL, '7288049063', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-07 18:30:00', '2018-01-07 18:30:00'),
(23, NULL, 'Admin', 'admin@admin.com', '$2y$10$alzGFCT/G0Jl9NQ0F6IHQOyXWJl.z4wFBZuNBxo/YyYghgnZNgS0O', 'AC2ZFzRlzgRI7bohRQZrjKJkB1Sbz8oqClZ39svEI9Ah7fcD0G1gK7BpxbjX', '1', '5', NULL, NULL, '8800197778', '1992-07-10', 'BE', 'CSE', 70.07, '2013-04-20', 'Tirumala Engineering College', 'RangareddyPalem,Jonnalagadda,Narasaraopet', 'D:\\LARAVEL\\ASDP LARAVEL\\asdp\\public\\uploads\\venky.jpg', '2017-12-28 00:34:01', '2018-02-06 05:19:34'),
(24, NULL, 'sreedhar', 'sreedhar628@gmail.com', '$2y$10$uiIcF3Rr0eLaydhfvs15B.JjNsugePB1cdeB4j/2.W85EzTFnpngC', NULL, '3', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-19 11:12:24', '2018-02-19 11:12:24'),
(25, NULL, 'Nara sivaji', 'narasivaji@gmail.com', '$2y$10$Wucq2lpqJu4OrLvnOdKtPuywTgUZcE3wSePEdcULjRiFZF6pIB9py', NULL, '1', '6', NULL, NULL, '9666162342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-19 12:13:24', '2018-02-19 12:13:24'),
(26, NULL, 'Vs Chowdary', 'vschowdary402@gmail.com', '$2y$10$lo/dcaXCF6U3N5Numsk.2OC1WKQeg6I02P3dlSngDvvfTs/pM9lWK', NULL, '1', '6', NULL, NULL, '8297096510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-19 15:42:13', '2018-02-19 15:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_tasks`
--

CREATE TABLE `user_tasks` (
  `id` int(11) NOT NULL,
  `assigntask_id` int(11) DEFAULT NULL,
  `request_for` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_by` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `uploads` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_tasks`
--

INSERT INTO `user_tasks` (`id`, `assigntask_id`, `request_for`, `request_by`, `message`, `uploads`, `created_at`) VALUES
(1, 3, 'redo', 1, ' You have taken entire new approach. You have not built it on earlier which I\'ve sent with modifications. Please check it and improve upon it.', '', '2017-04-13 03:19:48'),
(2, 3, 'redo', 1, ' Have the floatread program which we developed earlier', '../activity/workfiles/assi-jav-2/arun/floatread.rar', '2017-04-13 05:17:09'),
(3, 3, 'review', 10, ' This is the attachment of reading file data with header and java i/o functions document ', '../activity/workfiles/assi-jav-2/prasad/file data and java io files.rar', '2017-04-13 14:34:14'),
(4, 11, 'redo', 1, ' hi23', '', '2017-04-15 08:35:28'),
(5, 11, 'redo', 1, ' hello', '', '2017-04-15 08:37:56'),
(6, 12, 'review', 10, 'sir,\nThis is the file of float multiplication using array list.\n', '../activity/workfiles/task-jav-7/prasad/floatmul.rar', '2017-04-15 08:45:01'),
(7, 12, 'approved', 1, ' I don\'t understand why you face so much problem in doing simple program. Why are you using high fundaa.. such as list? It is simple. Just see my program. I also divided main java file in two.\nFor now go to basics. What are variables, methods, classes and how to define and use them. And your for loop too is not that great. For this you get very few credits.', '../activity/workfiles/task-jav-7/arun/floatmul_ab.zip', '2017-04-15 11:16:50'),
(8, 2, 'review', 7, ' please review', '', '2017-04-17 02:28:20'),
(9, 14, 'review', 11, ' I just Created Ameyem Skill Labs Facebook webpage.\nwww.facebook.com/Ameyem\nIt got 17 likes,56 shares', '', '2017-04-17 21:20:36'),
(10, 3, 'review', 10, ' please find the attachment for simple line graph inputs are taken from the text file', '../activity/workfiles/assi-jav-2/prasad/studentgraph.rar', '2017-04-17 21:22:37'),
(11, 14, 'approved', 1, 'Great stuff. Try to keep asdp details either in profile or through posts in some vijayawada groups. And remove pages with my details for now. I just don\'t wish my friends knowing about this company being mine.', '', '2017-04-17 21:22:37'),
(12, 10, 'review', 11, ' i made some changes in user login and registration pages at ameyem skills.\nIt seems good.', '', '2017-04-17 21:23:17'),
(13, 7, 'review', 11, ' I already submitted my profile and my skills in webpage.Have a look on it.', '', '2017-04-17 21:27:30'),
(14, 16, 'review', 10, 'Respected sir,\nHere is the attachment of displaying two dimensional array.', '../activity/workfiles/task-jav-11/prasad/matrix.rar', '2017-04-18 16:02:41'),
(15, 16, 'redo', 1, ' Prasad can you upload the file again. Your file was not uploaded...', '', '2017-04-18 16:43:40'),
(16, 10, 'redo', 1, ' It\'s ok. Not great.', '', '2017-04-18 16:47:08'),
(17, 10, 'approved', 1, ' ', '', '2017-04-18 16:47:25'),
(18, 2, 'approved', 1, ' ', '', '2017-04-18 16:48:44'),
(19, 7, 'approved', 1, ' Good. I haven\'t checked but for now I\'m okaying it.', '', '2017-04-18 16:50:07'),
(20, 11, 'approved', 1, ' Written and gave it to Prasad', '', '2017-04-18 16:53:59'),
(21, 3, 'approved', 1, ' Great attempt and good improvement. But I expected more. Here I modified little bit using methods in your old calculator program. Study it before I set a new task.', '../activity/workfiles/assi-jav-2/arun/file data and java io files.zip', '2017-04-18 21:22:37'),
(22, 16, 'review', 10, ' Respected sir, Here is the attachment of displaying two dimensional array.\n', '../activity/workfiles/task-jav-11/prasad/matrix.rar', '2017-04-19 02:32:52'),
(23, 16, 'redo', 1, ' This is only when you know number of rows and number of columns. But when you don\'t know, how you will read? Hint: you can use list, or define your array size to 1000 rows and 1000 columns. Use array.length() method wherever required. Use the attached data for test.', '../activity/workfiles/task-jav-11/arun/big_data.txt', '2017-04-19 02:54:18'),
(24, 16, 'review', 10, ' sir,\nHere is the attachment of modified matrix program.here matrix rows and columns cannot defined by developer.it automatically taken.', '../activity/workfiles/task-jav-11/prasad/matrix.rar', '2017-04-19 15:02:55'),
(25, 16, 'redo', 1, ' It\'s not working with the big_data.txt file which I attached in morning redo request. Please check and and read what I have written carefully.', '', '2017-04-19 18:19:41'),
(26, 16, 'review', 10, ' sir,\n\nThis is the modified program please check it once.', '../activity/workfiles/task-jav-11/prasad/matrix.rar', '2017-04-20 11:09:10'),
(27, 16, 'redo', 1, ' on 16th and 17th lines you have initiated two arrays like following.\n float[][] a=new float [12][12];\n float f[]=new float[100];\nthis a and f are what for? and why 12x12 and why f is 100 length?', '', '2017-04-20 11:26:35'),
(28, 16, 'review', 10, ' sir,\nthis modified program.changed folder name to matrix_modified.', '../activity/workfiles/task-jav-11/prasad/matrix_modified.rar', '2017-04-20 11:45:03'),
(29, 16, 'redo', 1, ' upload again', '', '2017-04-20 11:50:57'),
(30, 16, 'review', 10, ' ', '../activity/workfiles/task-jav-11/prasad/matrix_modified.rar', '2017-04-20 11:51:40'),
(31, 16, 'redo', 1, 'Good so far. Answer the following and modify your program before closing this task\nfloat[][] a=new float [1000][1000]; \n By initializing a variable this big what are the implications on programme performance? \nHow much memory this 1000x1000 matrix occupies? how can we avoid this ineficiency? Is there anyway to guess approximately to guess the size of array to be taken by knowing the size of text file?\n float f[]=new float[10000]; // Is there a possibility to avoid this variable?\n rows++;\n if(rows==1) // For every line it checks whether rows equal to 1 or not. This is not efficient way.. How to avoid this test?\n {\n System.out.println(line);\n continue; // What is the need of this statement?\n }', '', '2017-04-20 13:32:32'),
(32, 16, 'redo', 1, ' I have included comments in java file itself. See that before answering earlier comment.', '../activity/workfiles/task-jav-11/arun/matrix_modified.zip', '2017-04-20 13:36:04'),
(33, 17, 'review', 10, ' sir, \nI am prepared some notes on JavaScript and differences between static and Dynamic Webpages.\n', '../activity/workfiles/assi-jav-12/prasad/javascript.docx', '2017-04-20 14:07:05'),
(34, 17, 'redo', 1, 'File seams to be not uploaded. Please load it again.', '', '2017-04-21 04:39:47'),
(35, 17, 'review', 10, 'Notes on JavaScript.', '../activity/workfiles/assi-jav-12/prasad/javascript.docx', '2017-04-21 05:51:59'),
(36, 16, 'review', 10, ' sir,\nHere i have attached the matrix file and eliminates the all the unnecessary codes based on your guide lines.Please check it once. ', '../activity/workfiles/task-jav-11/prasad/matrix_rectified.rar', '2017-04-21 07:29:00'),
(37, 17, 'redo', 1, 'File hasn\'t uploaded yet. I have changed the upload program. Now give it a try.', '', '2017-04-21 10:46:33'),
(38, 17, 'review', 10, '', '../activity/workfiles/assi-jav-12/prasad/javascript.rar', '2017-04-21 11:15:43'),
(39, 16, 'approved', 1, 'Great efforts and very good improvement. You proved you can push your boundaries further. But this is not sufficient. You have to work hard and without me saying you have to make your work perfectly in every task. \nI have modified your program to make it perfect. See the attachment.', '../activity/workfiles/task-jav-11/arun/Matrix_rectified.rar', '2017-04-21 12:10:13'),
(40, 20, 'redo', 1, 'My mistake. txt extensions will not be loaded. It has to be zip, rar or 7z file.', '../activity/workfiles/task-pyt-14/arun/text.zip', '2017-04-21 17:57:17'),
(41, 19, 'review', 10, 'sir,Here i am attached two files.\none is matrix operation is for calculating sum of rows and columns and average of rows and average of columns.\n another one in matrix operations like addition, subtraction,multiplication for this read two two text files and displayed in two matrices,and then arithmetic operation were performed.i take example foe 3*3 matrices.Please check these two files.', '../activity/workfiles/task-jav-13/prasad/matrix_arithopera.rar', '2017-04-22 05:28:44'),
(42, 19, 'redo', 1, 'If you want upload more do now', '', '2017-04-22 06:53:33'),
(43, 17, 'redo', 1, 'Want to upload here?', '', '2017-04-22 06:54:40'),
(44, 19, 'redo', 1, 'Not 3x3 matrices. There should be no limit', '', '2017-04-22 06:57:44'),
(45, 19, 'review', 10, ' one is matrix operation is for calculating sum of rows and columns and average of rows and average of columns', '../activity/workfiles/task-jav-13/prasad/matrixoperations.rar', '2017-04-22 07:12:27'),
(46, 19, 'redo', 1, 'Define a class like MatOps, if one instance of it will have all the methods. For eg: MatOps M = new MatOps. Then, M.rowsum, should give one array(column array) of sums, M.rowav will get me average of each row and same with columns. Then M.matsum(MatA,MatB) shall return MatC(two dim array) =MatA+MatB. Same with subtraction and multiplication. Think and make it clean and clear.', '', '2017-04-22 10:44:12'),
(47, 21, 'review', 8, 'Hai sir.,\nI completed my assignment on overriding.\nPlease find below attachment.', '../activity/workfiles/task-jav-6/suresh/OVERRIDING - Copy.rar', '2017-04-22 13:51:28'),
(48, 21, 'approved', 1, 'IT\'s OK...', '', '2017-04-24 04:26:45'),
(49, 17, 'redo', 1, 'Discussion on important elements on attachment is missing. Explain the keywords used in attachment.', '', '2017-04-24 04:32:36'),
(50, 19, 'redo', 1, 'Example project', '../activity/workfiles/task-jav-13/arun/SimpleArith.rar', '2017-04-24 10:24:25'),
(51, 20, 'redo', 1, 'It is not calcualating properly. Eg. Python. is taken as different from python or Python. Program should get all the words despite of their tail entities and case difference. Means Python, python, PYthon: - all these should be considered under \"python\". Try this.', '', '2017-04-24 10:55:23'),
(52, 19, 'review', 10, 'sir, i have developed a program matrix addition,subtraction and multiplication if it ok i will develop the remaining column avg row avg..', '../activity/workfiles/task-jav-13/prasad/matrix_arithopera.rar', '2017-04-24 13:44:18'),
(53, 17, 'review', 10, 'important elements in attachment and their description..', '../activity/workfiles/assi-jav-12/prasad/javascript.rar', '2017-04-24 16:34:29'),
(54, 19, 'redo', 1, 'Purpose of this exercise is not to see whether you can do calculations. This is to see how can you apply your programming skills to solve day to day repeated problems. You should built upon what you have built yesterday. I asked you to develop methods and you are writing without any objective. You first learn what are methods, instances, classes, functions. Give a two page note, mostly stressing upon methods. Don\'t attempt anything before that. Once I okay it you again try this task.', '', '2017-04-24 16:52:19'),
(55, 20, 'review', 11, 'Dear Sir\nI can count the word in a text file but i\'m unable to print the graph with words and its count.i need some more preparation on python.', '../activity/workfiles/task-pyt-14/venkat508/PYTHON.rar', '2017-04-24 18:28:03'),
(56, 17, 'approved', 1, 'Good starting point...', '', '2017-04-25 04:37:38'),
(57, 22, 'redo', 1, 'Where is it. Kindly attach here...', '', '2017-04-25 07:02:43'),
(58, 22, 'approved', 1, 'No efforts were went in...', '', '2017-04-25 08:35:02'),
(59, 4, 'review', 10, 'I have already registered in ASDP and filled all the details..', '', '2017-04-25 12:14:48'),
(60, 19, 'review', 10, 'sir,\nPlease find the attachment for methods in java.prepared some document about it.wrote a simple program using methods..', '../activity/workfiles/task-jav-13/prasad/methods in java.rar', '2017-04-25 16:25:12'),
(61, 22, 'review', 11, 'Please find the attached rar file', '../activity/workfiles/task-gen-15/venkat508/Visiting cards.rar', '2017-04-25 20:19:50'),
(62, 18, 'review', 11, 'Dear Sir please find the document which contains task regarding JavaScript.\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', '../activity/workfiles/assi-jav-12/venkat508/javascript.rar', '2017-04-25 23:32:34'),
(63, 19, 'redo', 1, 'Good improvement. You can add other classes. You also write a method to read and return matrix from a text file. And size of matrix, to return 2 element array of row and col size. As many methods as you can construct. All will be re-used. Attaching good note on methods. Read it.', '../activity/workfiles/task-jav-13/arun/java methods.7z', '2017-04-26 01:07:17'),
(64, 18, 'redo', 1, 'Write description of js key words in attached html file.', '', '2017-04-26 01:11:58'),
(65, 25, 'redo', 1, 'Madhu,\nThis is just to show you how a task will be assigned to a candidate. See if you can build some simple task... With the link\nhttp://skills.ameyem.com/activity/index.php', '', '2017-04-26 01:28:16'),
(66, 19, 'review', 10, 'sir,this is the file of matrix operations in java.inputs are taken from text file..the location of text files provided at run time only..output of the program also attached here..', '../activity/workfiles/task-jav-13/prasad/matrix_arithopera111.rar', '2017-04-26 14:24:55'),
(67, 18, 'review', 11, 'here is the attachment contains keywords description in JS ', '../activity/workfiles/assi-jav-12/venkat508/form_eg.rar', '2017-04-26 16:39:58'),
(68, 23, 'review', 10, 'sir..written program for converting Centigrade to Fahrenheit to Kelvin and vice-versa.', '../activity/workfiles/task-jav-16/prasad/Temperature converter.rar', '2017-04-26 17:03:14'),
(69, 19, 'redo', 1, 'Good finally you have made what I wanted. Before I give rating... Share your experience on this project. With this any lesson learnt? If so, what is that? What problems you have faced and how you rectified at each stage. What was your most difficult situation in this.', '', '2017-04-26 19:08:27'),
(70, 23, 'redo', 1, 'Good. Now attachment contain asdp pages. On which you create the \'People\', and \'Tools\' in between login and contact. Under tools, you keep your temperature converter and under people you keep your name with your pages, bio and cv, you created earlier. Attach whole thing here.', '../activity/workfiles/task-jav-16/arun/asdp_pages.7z', '2017-04-26 19:23:25'),
(71, 18, 'approved', 1, 'Ok Good. Start looking into how can you read from a file on server. And how to create graphs.', '', '2017-04-26 19:33:04'),
(72, 19, 'redo', 1, 'Read below comment and look at the modified project by me.', '../activity/workfiles/task-jav-13/arun/matrix_arithopera.7z', '2017-04-26 20:06:25'),
(73, 20, 'review', 11, 'i made changes in program as you mentioned ', '../activity/workfiles/task-pyt-14/venkat508/wordcounter_ab.rar', '2017-04-26 20:27:48'),
(74, 19, 'review', 10, 'yes sir, i have got a lot of experience by doing this project..how to reduced the code in the project.how to imported methods from other classes.really its a good experience for me.    ', '', '2017-04-27 13:58:39'),
(75, 23, 'review', 10, 'sir,created  the \'People\', and \'Tools\' in between login and contact in ASDP website.', '../activity/workfiles/task-jav-16/prasad/asdp pages.rar', '2017-04-27 14:02:26'),
(76, 26, 'review', 10, 'sir, drawn a graph in javafx. Read the two columns from text file by imported read method from other class and taken two columns in two arrays and finally drawn the graph..', '../activity/workfiles/task-jav-17/prasad/plotmatrix.rar', '2017-04-27 14:07:56'),
(77, 19, 'approved', 1, 'Improve your writing skills, analyzing and story telling skills. In future if I ask to tell you experience you should be able to write at least ten lines. ', '', '2017-04-27 16:44:12'),
(78, 4, 'approved', 1, '', '', '2017-04-27 16:45:24'),
(79, 26, 'approved', 1, 'Implement it for more than two columns. And give some warnings when user selects wrong file. And get ready for bigger projects. Read about java fx and fxml', '', '2017-04-27 17:36:08'),
(80, 24, 'review', 11, 'Dear Sir here is the attachment for temperature converter.', '../activity/workfiles/task-jav-16/venkat508/temperature_converter.rar', '2017-04-27 17:58:41'),
(81, 23, 'approved', 1, 'Good there are still few problems. Keep work on your resume. Highlight where you are mastered- in achievements, you can tell about your projects, text file reading and matrix methods implementation.', '', '2017-04-27 18:20:39'),
(82, 24, 'redo', 1, 'Think differently. Keep it different from your colleague.', '', '2017-04-27 19:14:00'),
(83, 29, 'review', 10, 'sir,this is the program of plot a graph  plot first column vs rest of the columns. please check it once.', '../activity/workfiles/task-jav-19/prasad/plotmatrix_fx.rar', '2017-04-28 15:39:53'),
(84, 24, 'review', 11, 'Here is the new program.', '../activity/workfiles/task-jav-16/venkat508/temperature.rar', '2017-04-28 18:07:04'),
(85, 29, 'redo', 1, 'Why do you make things so complicated? After constructing and using readMatrix() method, why you retract again by putting all nonsense code inside main? And there is no consistency from earlier program. You are writing entirely new code. In earlier program why have you used lot of for loop? In 2nd one you rectified. Why can\'t you write a method to get required column? And the mistake you did mainly is putting everything in one chart series. I have modified it for you. Modify upon it. Keep minimum code.', '../activity/workfiles/task-jav-19/arun/plotmatrix.zip', '2017-04-28 18:53:23'),
(86, 24, 'redo', 1, 'Have you seen the image I have attached in main of task? Why can\'t you create with that idea? What if people wants to convert kelvin Celsius?', '', '2017-04-28 18:58:14'),
(87, 20, 'redo', 1, 'Now concentrate on plot. Use plotly module.  with pip install', '', '2017-04-28 19:13:41'),
(88, 29, 'review', 10, 'sir,I have modified this program.drawn plot between one columns versus required columns.it asks the user enter column number by using this.plot graph between first column versus required columns.here i am plotted first columns versus  3 remaining columns.', '../activity/workfiles/task-jav-19/prasad/plotcolumns.rar', '2017-04-29 09:44:05'),
(89, 24, 'review', 11, 'Writing a program as you mentioned in picture little bit complicated. I\'m using switch case in this program.i\'ll get you mentioned out put with in two days.', '../activity/workfiles/task-jav-16/venkat508/converter.rar', '2017-04-29 22:20:53'),
(90, 29, 'redo', 1, 'Now, include the file selector button in your gui. You can take help from attached java file...', '../activity/workfiles/task-jav-19/arun/FileOpener.7z', '2017-05-01 16:08:02'),
(91, 24, 'approved', 1, 'Not impressive...', '', '2017-05-01 17:32:42'),
(92, 29, 'review', 10, 'sir,\nthis is the file of reading text file using file chooser in javafx and drawn plot drawn graph between first column versus required columns.first of all you have to enter the required column number after that load the required file and after successful of loading you have to click the graph button.then finally graph will be appeared', '../activity/workfiles/task-jav-19/prasad/filechooser.rar', '2017-05-02 15:39:28'),
(93, 30, 'review', 10, 'sir,\nplease find attachment for simple calculator in javascript. modified the people page in ASDP.', '../activity/workfiles/task-jav-21/prasad/calculator.rar', '2017-05-02 15:43:17'),
(94, 30, 'redo', 1, 'Good. But make the calculator bigger(4 times). And buttons nicely stacked. Use some more css to make buttons look beautiful.', '', '2017-05-03 01:19:58'),
(95, 29, 'redo', 1, 'Good but, where have you used readfile.java class? and the readMatrix method?\nAnd if I don\'t chose column number it\'s giving error... Have you tried with @overriding at these cases? Or you can plot first column as default and keep the option to select column numbers to the user (block beyond max #columns)', '', '2017-05-03 01:38:37'),
(96, 20, 'review', 11, 'I\'m trying to send first column i.e word into one array and number of repetition into another column but its not write properly.i was trying another program i.e x-axis takes words directly and y-axis takes the numbers but while running the program it gives an error.it shows only two axis\'s have numbers only its possible to print the graph. i was trying another program to print words and numbers in graph like following program.i\'m keep on learning in those concept.\nDo you have any idea or program to plot repeated words into graph in a text file.', '../activity/workfiles/task-pyt-14/venkat508/wordcount.rar', '2017-05-03 05:08:49'),
(97, 30, 'review', 10, 'sir,this is the modified file.added some css styles to previous file.', '../activity/workfiles/task-jav-21/prasad/calculator.rar', '2017-05-03 14:07:29'),
(98, 29, 'review', 10, 'sir, modified the previous program.read file taken from another class.if user selects out of array size it plots graph first column versus second column otherwise plots the graph between first column versus required column.', '../activity/workfiles/task-jav-19/prasad/filechooser.rar', '2017-05-03 14:13:22'),
(99, 30, 'redo', 1, 'Calculator styles means not the simple ones. Look at what I have done. Now on you need to be careful. Simple copy & paste from online won\'t work. You need to put efforts. Still there is bug in calculator. I have kept the hit to modify. Try it.\n', '../activity/workfiles/task-jav-21/arun/calculator.7z', '2017-05-03 20:26:09'),
(100, 29, 'redo', 1, 'Not working and you haven\'t understood. Talk to you tomorrow.', '', '2017-05-03 20:50:15'),
(101, 20, 'redo', 1, 'For now leave it and send the result of another task. You are very lazy in sending results.', '', '2017-05-03 20:51:22'),
(102, 29, 'review', 10, 'sir,modified previous file.when the user load text file it immediately drawn graph first column versus second column and after the required column it plot graph between first column versus required column.and it also displayed number of columns present in the file.', '../activity/workfiles/task-jav-19/prasad/filechooser_04May17_11h.rar', '2017-05-04 06:06:14'),
(103, 29, 'redo', 1, 'It is taking same data even if I changed the column number after choosing first time. Also you haven\'t replaced the readfile.java with original file.', '', '2017-05-04 06:57:28'),
(104, 29, 'review', 10, 'sir,finally modified this project.i have verified with different text files.', '../activity/workfiles/task-jav-19/prasad/filechooser graph.rar', '2017-05-04 11:06:36'),
(105, 29, 'redo', 1, 'Final Touch. I have done 90% work for you with the following and kept a little bit for you. Made a nice javafx scene with table and kept one column inside it. Now you understand everything and keep all the columns inside table soon after you read text file. This completes the exercise.', '../activity/workfiles/task-jav-19/arun/TablePlot.7z', '2017-05-04 23:02:25'),
(106, 31, 'review', 10, 'sir,\nthis is the file of json graph.data taken from php file. program of line chat is in getjson.html', '../activity/workfiles/task-jav-20/prasad/01-line-chart.rar', '2017-05-06 06:01:22'),
(107, 31, 'redo', 1, 'Not plot the score and display sum of the values from the attached json file', '../activity/workfiles/task-jav-20/arun/myvaluesjson.7z', '2017-05-06 06:33:37'),
(108, 30, 'review', 10, 'sir,modified calculator program in asdp website.added back button to it.', '../activity/workfiles/task-jav-21/prasad/calculator_06May17_12h.rar', '2017-05-06 07:14:01'),
(109, 31, 'review', 10, 'sir,\nthis is the file displaying score value and addition of it from json file in php file.', '../activity/workfiles/task-jav-20/prasad/programs.rar', '2017-05-06 16:39:55'),
(110, 31, 'redo', 1, 'Now have one more json. I want here- addition of all the prasad credits for the month of April added and plotted. You need to use for loop and if test for assigned_to_userid variable and date variable. Implement and send.', '../activity/workfiles/task-jav-20/arun/workvaljson.7z', '2017-05-07 05:42:25'),
(111, 30, 'redo', 1, 'Still gaps between buttons are there....', '', '2017-05-07 07:54:33'),
(112, 30, 'review', 10, 'sir,modified calculator program.', '../activity/workfiles/task-jav-21/prasad/calculator_07May17_16h.rar', '2017-05-07 10:38:47'),
(113, 30, 'approved', 1, 'Good work. Keep it up.', '', '2017-05-07 13:41:22'),
(114, 31, 'review', 10, 'calculated  addition of all the prasad credits in php file.', '../activity/workfiles/task-jav-20/prasad/prasadcredits.rar', '2017-05-07 14:12:16'),
(115, 31, 'redo', 1, 'Look at the dates too... You need to only keep credits of April month. And finally, echo an array with Dates array and Prasad credits array to html and plot the data over there.', '', '2017-05-08 02:17:08'),
(116, 31, 'review', 10, 'this is the file sir..', '../activity/workfiles/task-jav-20/prasad/credits.rar', '2017-05-08 06:18:53'),
(117, 31, 'redo', 1, 'You haven\'t test yet for date... All the data should be of signle month, which should be of april. Whether you do it in php or json is upto you but you should do. Read about date formats in php and js.', '../activity/workfiles/task-jav-20/arun/json_js_advanced.rar', '2017-05-08 06:34:46'),
(118, 31, 'review', 10, 'this is the file of plot graph  credits.checking with month and name..', '../activity/workfiles/task-jav-20/prasad/credits chart.rar', '2017-05-08 08:10:12'),
(119, 31, 'redo', 1, 'The javascript should deal with any length of array with date and data points. Have you forgot everything learned with all previous java programming tasks?', '', '2017-05-08 08:37:00'),
(120, 31, 'redo', 1, 'I have modified your program. Have a look. If you want, go through the help link given at line 28 in getjson1.html and see how to update data point... \nNow gave actual works.json. Get all your credits score- sum and plot your data.\n', '../activity/workfiles/task-jav-20/arun/getjson1.rar', '2017-05-08 09:17:46'),
(121, 27, 'review', 11, 'Dear Sir ,Modified some data in skills.ameyem.com .  if we are updating regularly and modified regularly.', '../activity/workfiles/task-gen-18/venkat508/skills_08May17_13h.rar', '2017-05-08 20:39:03'),
(122, 31, 'review', 10, 'php file', '../activity/workfiles/task-jav-20/prasad/demo_file1.rar', '2017-05-09 06:35:43'),
(123, 31, 'redo', 1, 'Have the finalized demo file. Get this plotted and summed and send all files except works.json.', '../activity/workfiles/task-jav-20/arun/demo_file_final.rar', '2017-05-09 09:29:22'),
(124, 31, 'review', 10, 'final line chart.calulated the total credits and plotted credits', '../activity/workfiles/task-jav-20/prasad/01-line-chart_final.rar', '2017-05-09 10:40:52'),
(125, 31, 'approved', 1, 'You have made a good attempt in dealing with new subject which is not easy for a new bee. You can increase your efforts. Good luck for future tasks', '', '2017-05-09 16:30:30'),
(126, 29, 'review', 10, 'sir,this is table plot project.', '../activity/workfiles/task-jav-19/prasad/TablePlot.rar', '2017-05-10 05:14:52'),
(127, 28, 'review', 10, 'sir,modified website.added some key points and activities.this was done by with the help of venkatesh..', '../activity/workfiles/task-gen-18/prasad/skills_10May17_13h.rar', '2017-05-10 07:45:21'),
(128, 29, 'approved', 1, 'See and understand... I have changed read.java too for future compatibility...', '../activity/workfiles/task-jav-19/arun/tableplot.rar', '2017-05-10 12:26:35'),
(129, 28, 'redo', 1, 'Photos appear smaller when opened. Update them on latest version.', '', '2017-05-12 00:47:25'),
(130, 27, 'redo', 1, 'Photos appear smaller. Update them on latest version.', '', '2017-05-12 00:48:11'),
(131, 28, 'redo', 1, 'Ignore last comment. Links on photos to work. And check continue reading, whether it is working properly.', '', '2017-05-12 00:56:43'),
(132, 35, 'review', 10, 'sir,please find the attachment for read log file with headers in javaFx.', '../activity/workfiles/task-jav-25/prasad/read_log_file.rar', '2017-05-17 13:13:45'),
(133, 27, 'review', 11, 'Here is the new updates of skills.ameyem.com', '../activity/workfiles/task-gen-18/venkat508/skills_17May17_19h.rar', '2017-05-18 02:20:19'),
(134, 28, 'review', 10, 'modification file sent by venkatesh', '', '2017-05-23 07:49:06'),
(135, 35, 'approved', 1, 'Good', '', '2017-05-24 06:19:11'),
(136, 28, 'redo', 1, 'It can be further improved...', '', '2017-05-24 06:26:24'),
(137, 28, 'approved', 1, 'It can be further improved...', '', '2017-05-24 06:27:04'),
(138, 27, 'approved', 1, 'More eeforts can be put...', '', '2017-05-24 06:27:38'),
(139, 32, 'review', 10, 'sir, i am facing problem with added drop list.attached file here.', '../activity/workfiles/task-jav-23/prasad/tableplot.rar', '2017-05-26 17:47:02'),
(140, 39, 'redo', 1, 'ASDP developed to install Computer skills in students. Presentation should concentrate on how ASDP program can improve student skills in programming, web devt., and software developement. How a task assigned, how student interact with guide and how he completes task, hence improve skills.', '', '2017-05-31 07:08:12'),
(141, 39, 'review', 11, 'Dear Sir,This is the ASDP presentation ppt.see and send me the corrections.  ', '../activity/workfiles/pres-gen-28/venkat508/asdp ppt.rar', '2017-05-31 18:54:09'),
(142, 39, 'review', 11, 'In this PPT i made some modifications.send me the corrections if any.', '../activity/workfiles/pres-gen-28/venkat508/asdp ppt_31May17_17h.rar', '2017-06-01 00:23:56'),
(143, 32, 'redo', 1, 'Program progressed a lot. But kept few things you to learn and complete. Find attachment with source file and dependency jars. Work on the chart part, where you need to upside down the y axis and increase the vertical length of chart with increasing data size.', '../activity/workfiles/task-jav-23/arun/logplot.rar', '2017-06-07 06:49:34'),
(144, 39, 'approved', 1, 'Looks ok. Can be better.', '', '2017-06-08 04:33:56'),
(145, 34, 'review', 10, 'sir,this is attachment of bar graph using json file. it shows the completed tasks and credit points for the particular task.and skill level (at the time registration skill levels)is shown in bar chart.', '../activity/workfiles/Proj-php-24/prasad/01-bar-chart.rar', '2017-06-08 11:34:02'),
(146, 34, 'redo', 1, 'First make html fields showing all the details of candidate. Then his skill graph.', '', '2017-06-09 06:38:10'),
(147, 34, 'redo', 1, 'Study attached files how to utilize the json data, [key,val] duo to display data in nicely formatted environment...', '../activity/workfiles/Proj-php-24/arun/login-home.rar', '2017-06-09 09:17:01'),
(148, 5, 'review', 11, 'Task Completed....', '', '2017-06-09 11:19:09'),
(149, 34, 'review', 10, 'This is file file sir.. ', '../activity/workfiles/Proj-php-24/prasad/01-BAR-chart.rar', '2017-06-10 09:06:13'),
(150, 41, 'review', 11, 'here is upload a file project in raspberry pi.', '../activity/workfiles/Proj-emb-30/venkat508/upload.rar', '2017-06-10 10:14:20'),
(151, 34, 'redo', 1, 'That\'s good but you can use jquery methods when are you dealing with small json file. Attached is having the application. In this few powerful statements alone can access most of the keys and values of json file. I have changed chart application as previous one was not free. Now on use google charts. And in excersize folder itself I kept the login-home.php. It shows you haven\'t properly study what was the excersize. Don\'t repeat it in future.', '../activity/workfiles/Proj-php-24/arun/getjson-cg.7z', '2017-06-10 19:59:40'),
(152, 5, 'approved', 1, 'Good', '', '2017-06-12 18:26:58'),
(153, 34, 'review', 10, 'This is the file sir..i facing problem with retrieving json data. ', '../activity/workfiles/Proj-php-24/prasad/getjson-cg.rar', '2017-06-13 04:33:59'),
(154, 34, 'redo', 1, 'Can you upload whatever you have done so far?', '', '2017-06-14 08:58:01'),
(155, 34, 'review', 10, 'sir..here i have attached getson.html file.and array of elements is not accessed in html body.', '../activity/workfiles/Proj-php-24/prasad/getjson-cg2.rar', '2017-06-14 11:23:40'),
(156, 34, 'redo', 1, 'Then what is the point of sending this, when you are not using the data in html? Is there any new thing here? Why cant you apply same if logic for the inner loop too? \nWhy can\'t ', '', '2017-06-15 02:02:35'),
(157, 41, 'redo', 1, 'it\'s not working....', '', '2017-06-15 03:00:54'),
(158, 41, 'redo', 1, 'Try this on raspberry pi after installing ftplib', '../activity/workfiles/Proj-emb-30/arun/ftp_upload3.rar', '2017-06-15 07:42:37'),
(159, 41, 'review', 11, 'Upload a image into website', '../activity/workfiles/Proj-emb-30/venkat508/file_send.rar', '2017-06-15 13:24:01'),
(160, 34, 'review', 10, 'sir,\ni have attached a getjson file.it build a candidate page from json file.', '../activity/workfiles/Proj-php-24/prasad/getjson-cg2_15Jun17_20h.rar', '2017-06-15 14:33:44'),
(161, 41, 'redo', 1, 'I have modified your program, Do two things. 1. Merge capture1 and ftp_upload_single in one. 2. Keep Date & time stamp on each image', '../activity/workfiles/Proj-emb-30/arun/ftp_upload_single.7z', '2017-06-16 02:39:31'),
(162, 41, 'review', 11, 'Raspberry pi video streaming project submission ', '../activity/workfiles/Proj-emb-30/venkat508/Raspberry Pi video streaming project.rar', '2017-06-16 09:47:20'),
(163, 20, 'review', 11, 'Please Drop this task', '', '2017-06-16 09:51:00'),
(164, 36, 'review', 11, 'Drop this task', '', '2017-06-16 09:51:57'),
(165, 33, 'review', 11, 'Drop this task', '', '2017-06-16 09:52:27'),
(166, 40, 'review', 11, 'Arduino  blink led project', '../activity/workfiles/task-emb-29/venkat508/Arduino.rar', '2017-06-16 09:59:30'),
(167, 41, 'redo', 1, 'find attached file and implement. It took me just 10 minutes. You tried it whole day....', '../activity/workfiles/Proj-emb-30/arun/text_on_img.7z', '2017-06-16 14:46:10'),
(168, 36, 'approved', 1, 'Dropped', '', '2017-06-19 05:12:15'),
(169, 33, 'approved', 1, 'Dropped', '', '2017-06-19 05:13:13'),
(170, 20, 'redo', 1, 'For the work you have done', '', '2017-06-19 05:14:12'),
(171, 20, 'approved', 1, 'Dropped rest', '', '2017-06-19 05:14:46'),
(172, 44, 'review', 11, 'here is one form', '../activity/workfiles/task-gen-32/venkat508/form1.rar', '2017-06-19 07:07:35'),
(173, 44, 'redo', 1, 'Dots not rquired in front of each radio button. Remove 1, 2,... numbering from the options. Keep each question in a nice box and adjust in a beutiful manner as depicted in scan copy using some css stuff.', '', '2017-06-19 07:21:07'),
(174, 44, 'review', 11, 'here is two new edited forms', '../activity/workfiles/task-gen-32/venkat508/forms.rar', '2017-06-19 09:45:12'),
(175, 44, 'redo', 1, 'Take help of attachement in developing individual cards for each question in form', '../activity/workfiles/task-gen-32/arun/card.rar', '2017-06-19 10:46:42'),
(176, 44, 'review', 11, 'new cards', '../activity/workfiles/task-gen-32/venkat508/forms_19Jun17_18h.rar', '2017-06-19 13:14:06'),
(177, 44, 'redo', 1, 'do as described', '../activity/workfiles/task-gen-32/arun/card1.7z', '2017-06-19 16:02:53'),
(178, 44, 'review', 11, 'edited new cards', '../activity/workfiles/task-gen-32/venkat508/cards.rar', '2017-06-20 07:03:55'),
(179, 41, 'review', 11, 'Raspberry pi video streaming project submission.', '../activity/workfiles/Proj-emb-30/venkat508/Raspberry Pi video streaming project_21Jun17_10h.rar', '2017-06-21 04:58:56'),
(180, 41, 'redo', 1, 'Good and great work. You also include description of Camera, its specifications, how and where you connect etc. Also include real raspberry pi pic along with its camera... dont forget to keep .py files in zip folder.', '', '2017-06-21 17:35:10'),
(181, 34, 'approved', 1, 'good. ', '', '2017-06-21 17:50:28'),
(182, 40, 'redo', 1, 'Give a note on Arduino and the pins.', '', '2017-06-21 17:51:08'),
(183, 44, 'redo', 1, 'Great', '', '2017-06-21 17:52:35'),
(184, 44, 'approved', 1, '', '', '2017-06-21 17:52:46'),
(185, 6, 'review', 1, '', '', '2017-06-21 17:53:32'),
(186, 1, 'approved', 1, '', '', '2017-06-21 17:53:50'),
(187, 41, 'review', 11, 'Project', '../activity/workfiles/Proj-emb-30/venkat508/Raspberry_Video_Streaming_Project.rar', '2017-06-22 05:36:19'),
(188, 40, 'review', 11, 'Introduction to Arduino', '../activity/workfiles/task-emb-29/venkat508/Arduino_23Jun17_16h.rar', '2017-06-23 10:55:50'),
(189, 41, 'approved', 1, 'Good', '', '2017-07-19 17:05:17'),
(190, 47, 'review', 11, 'its the program about extract data from website.', '../activity/workfiles/assi-pyt-34/venkat508/reddif.rar', '2017-07-21 05:16:51'),
(191, 47, 'redo', 1, 'Upload latest program', '', '2017-07-22 08:33:51'),
(192, 47, 'review', 11, 'new program\n', '../activity/workfiles/assi-pyt-34/venkat508/main_project.rar', '2017-07-22 08:43:35'),
(193, 48, 'review', 11, 'I couldn\'t find the valid points in the pdf. You already started the creation of ppt, it is the good thing you should finish it. I\'ll concentrate on python.', '', '2017-08-04 03:33:31'),
(194, 42, 'review', 11, '1.in asdp chat sign out is not working.\n2.For review the task only pdf files ware uploded.\n3.more than 4mb files not uploded.\n4.at a time one review is possible to send in the asdp, its good to allow more than one.\n5.most important thing is not get the replies quickly. ', '', '2017-08-04 06:56:13'),
(195, 48, 'redo', 1, 'It is for you to make. I have lot of other works to do. I made your work easy.', '', '2017-08-04 06:57:54'),
(196, 49, 'review', 18, 'dear sir,\nreview on my work,\nregards', '../activity/workfiles/task-htm-4/naveen14/naveenkumaar.rar', '2017-11-11 07:37:47'),
(197, 51, 'review', 18, 'dear sir\ni have complete these tasks\nplease review on my tasks\n\nregards \nnaveen', '../activity/workfiles/task-htm-37/naveen14/Day3.rar', '2017-11-14 06:19:17'),
(198, 51, 'approved', 1, 'Good keep it up.', '', '2017-11-14 12:00:06'),
(199, 49, 'approved', 1, 'Good', '', '2017-11-14 12:33:48'),
(200, 47, 'approved', 1, 'Good', '', '2017-11-14 12:34:24'),
(201, 54, 'review', 18, 'Dear sir,\n\ni have completed these tasks\n\nplease review on my tasks\n\nregards \nnaveen', '../activity/workfiles/task-css-39/naveen14/Day5.rar', '2017-11-17 08:17:17'),
(202, 53, 'review', 18, 'Dear sir,\n i have completed these tasks\n please review on my tasks\nregards \nnaveen', '../activity/workfiles/task-htm-38/naveen14/Day4.2.rar', '2017-11-17 09:25:45'),
(203, 50, 'review', 11, '', '', '2017-11-22 05:24:45'),
(204, 53, 'approved', 1, 'Good', '', '2017-11-28 06:00:49'),
(205, 40, 'approved', 1, '', '', '2017-11-28 06:01:28'),
(206, 42, 'approved', 1, '', '', '2017-11-28 06:02:09'),
(207, 6, 'drop', 1, '', '', '2017-11-28 06:02:28'),
(208, 50, 'droped', 1, '', '', '2017-11-28 06:03:13'),
(209, 58, 'review', 18, 'Sir,\nPlease review on my task\nRegards\nNaveen', '../activity/workfiles/task-jav-44/naveen14/distance.rar', '2017-12-01 10:09:21'),
(210, 58, 'redo', 1, 'See the changes made and implement drop down feature for from and to objects as discussed.', '../activity/workfiles/task-jav-44/arun/distance.rar', '2017-12-01 10:12:19'),
(211, 55, 'review', 18, 'Dear Sir,\nPlease review on my task\nRegards\nNaveen', '../activity/workfiles/assi-css-41/naveen14/html&css ppt.rar', '2017-12-01 10:17:45'),
(212, 56, 'review', 18, 'Dear Sir,\nPlease review on my presentation\nRegards\nNaveen', '../activity/workfiles/assi-gen-42/naveen14/creative thinking.rar', '2017-12-01 11:55:32'),
(213, 58, 'review', 18, 'Dear Sir,\nPlease Review on my task\nRegards\nNaveen', '../activity/workfiles/task-jav-44/naveen14/distance2.rar', '2017-12-02 10:02:06'),
(214, 56, 'approved', 1, 'weldone', '', '2017-12-04 04:49:18'),
(215, 55, 'approved', 1, 'Great presentation', '', '2017-12-04 04:49:47'),
(216, 54, 'redo', 1, 'do it', '', '2017-12-04 04:50:25'),
(217, 54, 'review', 18, 'Dear Sir,\nI have completed Telugu font style please review on my task\nRegards\nNaveen ', '../activity/workfiles/task-css-39/naveen14/telugu font.rar', '2017-12-04 11:50:30'),
(218, 54, 'approved', 1, 'Great', '', '2017-12-05 05:01:14'),
(219, 38, 'review', 11, 'Completed', '', '2017-12-15 09:29:44'),
(220, 59, 'review', 18, 'Dear sir,\nPlease review on my task\nRegards\nNaveen', '../activity/workfiles/task-pyt-45/naveen14/factorial.rar', '2017-12-20 09:23:29'),
(221, 60, 'review', 18, 'Dear Sir,\nI have completed these tasks..\nPlease review on my tasks\nRegards,\nNaveen', '../activity/workfiles/assi-pyt-10/naveen14/20-12-17.rar', '2017-12-21 04:05:34'),
(222, 58, 'approved', 1, 'Good', '', '2017-12-23 01:28:06'),
(223, 59, 'redo', 1, '', '', '2017-12-23 01:29:16'),
(224, 59, 'approved', 1, '', '', '2017-12-23 01:29:39'),
(225, 60, 'approved', 1, '', '', '2017-12-23 01:43:01'),
(226, 61, 'review', 18, 'Dear Sir,\nPlease review on my task,\nRegards\nNaveen', '../activity/workfiles/task-pyt-47/naveen14/5-1-18.rar', '2018-01-05 09:46:40'),
(227, 61, 'approved', 1, 'Good attempt....', '', '2018-01-11 11:47:55'),
(228, 65, 'review', 22, 'Respected sir,\nplease view my presentation', '../activity/workfiles/pres-htm-50/T.N .K/nareshkumar presentation.rar', '2018-01-11 12:11:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tasks`
--
ALTER TABLE `admin_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_tasks`
--
ALTER TABLE `assign_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_tasks`
--
ALTER TABLE `user_tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tasks`
--
ALTER TABLE `admin_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `assign_tasks`
--
ALTER TABLE `assign_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_tasks`
--
ALTER TABLE `user_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
