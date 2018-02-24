-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2018 at 10:25 AM
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
-- Database: `laravel-asdp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tasks`
--

-- CREATE TABLE `admin_tasks` (
--   `id` int(11) NOT NULL,
--   `institutes_id` int(5) DEFAULT NULL,
--   `user_id` int(10) DEFAULT NULL,
--   `worknature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `worktitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `workdescription` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `whatinitforme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `usercredits` decimal(8,2) DEFAULT NULL,
--   `guidecredits` decimal(8,2) DEFAULT NULL,
--   `reviewercredits` decimal(8,2) DEFAULT NULL,
--   `uploads` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_tasks`
--

INSERT INTO `admin_tasks` (`id`, `institutes_id`, `user_id`, `worknature`, `subject`, `worktitle`, `workdescription`, `whatinitforme`, `usercredits`, `guidecredits`, `reviewercredits`, `uploads`, `updated_at`, `created_at`) VALUES
(1, 1, 1, 'task', 'general', 'Profile and skill set filling', 'You need to fill all possible details. The skills part is starting point and it will be the guiding factor which skills you are interested in and where you will be concentrating and which tas', 'It will be the guiding factor for future endeavours. It makes instructors to set the path for you.', '5.00', '0.00', '1.00', NULL, '2018-02-16 14:29:23', '0000-00-00 00:00:00'),
(2, 1, 1, 'assignment and ppt', 'Java', 'File input & Output functions', 'Make two page assignment on file input output functions in java. Write a program to read and display two column float or integer data in console.', ' This is an important aspect in developing mainstream software', '8.00', '2.00', '1.00', NULL, '2018-02-16 14:29:25', '0000-00-00 00:00:00'),
(3, 1, 1, 'task', 'General', 'Get quotation and details for pamphlet', 'Ask 3 vendors quotation for printing of 5000 pamphlets for different papers and keep the details in excel sheet and upload during review submission.', ' Good for company and yourself', '5.00', '2.00', '1.00', NULL, '2018-02-16 14:29:21', '0000-00-00 00:00:00'),
(4, 1, 1, 'task', 'HTML', 'Introductory HTML', ' Read the attached html and explain essentials of html file as asked in attached html file. Look at by opening once in web browser and once in notepad editor', ' You will be introduced to web world.', '5.00', '2.00', '1.00', '../activity/workfiles/task-htm-4/arun/Intro to html.rar', '2018-02-16 14:29:18', '0000-00-00 00:00:00'),
(5, 1, 1, 'task', 'General', 'Develop look and feel of Ameyem pages', 'long with skills.ameyem.com main page develop look and feel of login and registration pages which are attached here.', ' For the growth of company', '5.00', '1.00', '0.00', '../activity/workfiles/task-gen-5/arun/look&feel.rar', '2018-02-16 14:29:15', '0000-00-00 00:00:00'),
(6, 1, 1, 'task', 'java', 'Assignment on overriding', 'How the overriding works. How many languages support. How this method has been developed. What are advantages and disadvantages.', ' Development of highend pc and mobile apps will be made easy', '5.00', '2.00', '1.00', NULL, '2018-02-16 14:29:13', '0000-00-00 00:00:00'),
(7, 1, 1, 'task', 'Java', 'Dealing with more than one java class.', 'Create two java classes one with main other without main method. Call a method of other class file from the main method of main class and display same thing. Use here the earlier developed cl', ' You will know how to handle various classes and various source files', '5.00', '2.00', '1.00', '../activity/workfiles/task-jav-7/arun/file data and java io files.zip', '2018-02-16 14:29:11', '0000-00-00 00:00:00'),
(8, 1, 1, 'task', 'Java', 'Reading data from text file and keeping them in array variables', 'Modify the attached program to store three column data into three array variable, one is integer array, other two are floating arrays. Perform multiplication of floating arrays using for loop and display the multiplication in console.', ' You will know how to handle various classes and various source files', '3.00', '1.00', '0.00', '../activity/workfiles/task-jav-7/arun/file data and java io files.zip', '2018-02-16 14:29:09', '0000-00-00 00:00:00'),
(9, 1, 1, 'task', 'General', 'Facebook account', 'With Ameyem Skill Labs, you create Facebook account with ASDP details and Vijayawada address. Use info@ameyem.com in registration.', ' For the growth of company', '3.00', '1.00', '0.00', NULL, '2018-02-16 14:29:06', '0000-00-00 00:00:00'),
(10, 1, 1, 'assignment and ppt', 'Python', 'Introduction to python', 'Write introduction to Python. How are the variables, and statements structure. How to write for and do-while loops if any. How python is different from other programming languages. What are the top three applications (field of python application). Provide an example program.', ' It will help guide to understand your level of understanding of python and to decide how it can further be sharpened.', '10.00', '2.00', '1.00', NULL, '2018-02-16 14:29:05', '0000-00-00 00:00:00'),
(11, 1, 1, 'task', 'Java', 'Upgradation of text data read program- for unknown number of coulumns and rows', 'Modify the floatread project to read any text data file with any number of rows and columns and store them in two dimentional array eg. Float data[][]=new Float[][]. Hint: convert to float in while loop itself, keep the Sno too in float array. No need to keep it outside.', ' With this you will become semi skilled person dealing with input and output files. This project can be upgraded to read image files, excel sheets, csv files and so on.', '4.00', '3.00', '1.00', '../activity/workfiles/task-jav-11/arun/floatmul_ab.zip', '2018-02-16 14:29:04', '0000-00-00 00:00:00'),
(12, 1, 1, 'assignment and ppt', 'Java_script', 'Static and dynamic pages- Javascript introduction', 'Difference between static and dynamic pages. How the Javascript has been developed. Is Javascript is different from Java programming language and how? Javascript is for front end web-development or not? How the variables are defined in Javascript. Observe attachment with example java script file and discuss important elements of javascript here.', ' You will get a flavor of Javascript scripting language. And entry point to the \"Future of the web-development\"', '4.00', '2.00', '1.00', '../activity/workfiles/assi-jav-12/arun/form_eg.zip', '2018-02-16 14:29:00', '0000-00-00 00:00:00'),
(13, 1, 1, 'task', 'Java', 'Write a class with matrix methods', 'Matrix methods should do the following..\\nNumber of row columns, array to matrix, matrix to array, sum of rows, sum of columns, average of rows average of columns. Given two matrices, summation, subtraction, multiplication of the matrices.', ' You will get the flavor of Arithmetics and power of java in scientific calculations ', '10.00', '4.00', '3.00', NULL, '2018-02-16 14:28:57', '0000-00-00 00:00:00'),
(14, 1, 1, 'task', 'Python', 'Write a python program for text processing and plot statistics', 'Write a python program to read the attached text file and count the words, and how many times each word repeated (Top 20). And plot them on a graph... On words on X-axis and number of times it repeated on Y-axis.', ' You will get the flavor of Arithmetics and power of java in scientific calculations ', '4.00', '2.00', '1.00', '../activity/workfiles/task-pyt-14/arun/text.txt', '2018-02-16 14:29:01', '0000-00-00 00:00:00'),
(15, 1, 1, 'task', 'General', 'Visiting card for Arun Babu, Ameyem Geosolutions Pvt. Ltd.', 'Look at various visiting card designs online and design one word file (you can get templates online) and you need to see the size of card on online and how to set it.\\nFinally create one for me for Geosciences as Chief Geoscientist position. Another card for Ameyem Skills as Director.', ' For company and you know how to design something on microsoft word.', '4.00', '1.00', '1.00', NULL, '2018-02-16 14:28:56', '0000-00-00 00:00:00'),
(16, 1, 1, 'task', 'Java_script', 'Temperature converter', 'Write java script code for converting Centigrade to Fahrenheit to Kelvin and vice-versa. Use good styles to prove your css capabilities. See the attachment for description and example structure.', 'You can create dynamic web pages', '5.00', '2.00', '1.00', '../activity/workfiles/task-jav-16/arun/Temperature converter excersize.7z', '2018-02-16 14:28:55', '0000-00-00 00:00:00'),
(17, 1, 1, 'task', 'Java', 'Program to plot', 'Read txt file with two columns and plot the data on a graph developed with java FX. Here you use by import- the matrix method package for reading data.', ' A step closer to building the serious desktop applications.', '3.00', '2.00', '1.00', NULL, '2018-02-16 14:28:52', '0000-00-00 00:00:00'),
(18, 1, 1, 'task', 'General', 'Revamp the skills.ameyem.com (Ameyem Skill Labs) main page', 'Collaboratively you work with your colleague and come-up with excellent ideas on how you both can revamp the page by keeping the useful items to the audience and removing unnecessary items. How you can link twitter and fb pages. Distribute work among yourself and make a plan and execute send the modified page. You ma change it entirely. That is up to you.', 'Team work, self motivated thinking, thinking the corporate way. You will learn how to meet the requirements of the client.', '10.00', '3.00', '2.00', '../activity/workfiles/task-gen-18/arun/htdocs.rar', '2018-02-16 14:28:51', '0000-00-00 00:00:00'),
(19, 1, 1, 'task', 'Java', 'Java FX implementation for plotxy task', 'Modify your plot project to select the local txt file, read all columns(no limit) and plot first column vs rest of the columns.\\nSecond stage you will get Table interface in GUI, where user can select specific columns to be plotted. Use a project of mine if it is of any help.', ' You will be like a professional developer in his early days.', '7.00', '4.00', '3.00', '../activity/workfiles/task-jav-19/arun/MyFxApp.zip', '2018-02-16 14:28:48', '0000-00-00 00:00:00'),
(20, 1, 1, 'task', 'Java_script', 'Json data & plot', 'Write nice assignment on JSON format and how access data in both js and php. Then, in js how to access JSON data with JSON.parse and once you parse how to access the object where you have parsed entire json variable.\\nYou also need to know how to get data from server with get, post etc. requests.\\nIn this task, you will get the x, y arrays from the json file and plot them on a chart. Example chart is also given here. \\nYou provide one html file which gets the x,y data and plots nicely that data.', 'In this task, you will know what is json file and how to get contents of it from server with the help of server based php file and how to access the json data with js.', '5.00', '2.00', '1.00', '../activity/workfiles/task-jav-20/arun/json_js_advanced.7z', '2018-02-16 14:28:47', '0000-00-00 00:00:00'),
(21, 1, 1, 'task', 'Java_script', 'Calculator', 'Write a nice simple calculator with elementary operations in javascript.', ' You will know to use the buttons, how to access their values and how to display results.', '3.00', '1.00', '1.00', NULL, '2018-02-16 14:28:45', '0000-00-00 00:00:00'),
(22, 1, 1, 'assignment and ppt', 'Java_script', 'Note Json format, jquery, ajax & php- how to access data and how twitter uses json data', 'Repetition of what you have worked so far along with learning few things about ajax.', ' Overall idea of how are the present day web trends', '4.00', '2.00', '1.00', NULL, '2018-02-16 14:28:43', '0000-00-00 00:00:00'),
(23, 1, 1, 'task', 'Java', 'JavaFX editable & Responisve tables', 'Read and learn about responsive JavaFX tables and try and study examples at following link. Finally modify the table plot project to enable us to select few rows of a column and same rows on other target column - and a plot between the sected data. http:\\\\/\\\\/www.java2s.com\\\\/Tutorials\\\\/Java\\\\/JavaFX\\\\/0650__JavaFX_TableView.htm', 'Mastering JavaFX tables...', '5.00', '2.00', '1.00', '../activity/workfiles/task-jav-23/arun/Selectable table excersize.rar', '2018-02-16 14:28:41', '0000-00-00 00:00:00'),
(24, 1, 1, 'Project', 'PHP', 'Build candidate page ', 'The page shall give all details, ranging from, what he studied, where and how many marks--- And his skills in various fields, which are available in candidate\'s json file (basically all information provided in candidate\'s json file). Basically you are building a resume page from json file. You can use attached- login-home.php for some of features to be used in candidate page. Modify bar chart with proficiency, using information candidate\'s json file and bar-chart-XXX.html file.', ' You not only get mastery in php but javascript and webdevelopment.', '8.00', '2.00', '1.00', '../activity/workfiles/Proj-php-24/arun/candidate_page.7z', '2018-02-16 14:28:40', '0000-00-00 00:00:00'),
(25, 1, 1, 'task', 'Java', 'Read las file in tableplot java', 'Modify the program to keep log names as column names along with loading data', ' In the process of building software you are one step closer', '3.00', '1.00', '1.00', '../activity/workfiles/task-jav-25/arun/well.7z', '2018-02-16 14:28:38', '0000-00-00 00:00:00'),
(26, 1, 1, 'task', 'PHP', 'Uploading user info from contact page', 'Have the comment data in json file (comments.json), which should be kept in asdp folder. Take the help of attacted 7z file.', ' Will be knowing various details of php, javascript and json.', '4.00', '2.00', '1.00', '../activity/workfiles/task-php-26/arun/activity.7z', '2018-02-16 14:28:35', '0000-00-00 00:00:00'),
(27, 1, 1, 'task', 'General', 'Pamphlets distribution- Oral orientation to 10 people', 'You need to present ASDP structure and benefits to atleast to 10 people to get these credits', ' You gain credits and how to handle people', '10.00', '1.00', '3.00', NULL, '2018-02-16 14:28:32', '0000-00-00 00:00:00'),
(28, 1, 1, 'presentation', 'General', 'Presentation about ASDP for Colleges', 'Make a nice 10 slide presentation depicting how we can help colleges to improve the skills of its students', ' For company growth', '5.00', '2.00', '1.00', NULL, '2018-02-16 14:28:29', '0000-00-00 00:00:00'),
(29, 1, 1, 'task', 'Embedded', 'Install and run basic programs on Arduino uno-nano', 'Run simple program(blink led) on Arduino uno or nano. Then take the already written programs attached and run on arduino. robo_car_us&servo for Robo car, bluetooth for Homeautomation and YMFC for Multicoptor. You can also try the servo for servo attached to robocar.', ' You will be introduced to the work of Arduino and IOT', '5.00', '2.00', '1.00', '../activity/workfiles/task-emb-29/arun/myprogs_arduino.rar', '2018-02-16 14:28:28', '0000-00-00 00:00:00'),
(30, 1, 1, 'Project', 'Embedded', 'RaspVideo', 'Learn how working principles of Raspberry pi, use the camera and write code to live stream the vedio first on youtube and next on ameyem website sothat anyone who is having prermission can access video or fast changing image frames. Write a project note not less than 10 word pages and all programs developed submit.', ' You will be good at IoT as well as in python.', '20.00', '5.00', '2.00', NULL, '2018-02-16 14:28:26', '0000-00-00 00:00:00'),
(31, 1, 1, 'task', 'Concept', 'Ameyem Skill page design flaws', 'Find out the inefficiency factors and flaws of ameyem page... List out and elaborate atleast 5 flaws and suggest how to improve it.', ' It is part of testing tools and analysis', '3.00', '2.00', '1.00', NULL, '2018-02-16 14:28:24', '0000-00-00 00:00:00'),
(32, 1, 1, 'task', 'General', 'Build a questionare page- Urgent', 'Build forms with questions shown in attachment. Two forms, one in main page and second to be kept on ASDP page. ', ' To see whether ASDP can go in big way....', '3.00', '1.00', '1.00', '../activity/workfiles/task-gen-32/arun/Questionare page.rar', '2018-02-16 14:28:23', '0000-00-00 00:00:00'),
(33, 1, 1, 'task', 'General', 'Build a questionare page- Urgent', 'Build forms with questions shown in attachment. Two forms, one in main page and second to be kept on ASDP page.', ' To see whether ASDP can go in big way....', '3.00', '1.00', '1.00', '../activity/workfiles/task-gen-33/arun/Questionare page.rar', '2018-02-16 14:28:22', '0000-00-00 00:00:00'),
(34, 1, 1, 'assignment and ppt', 'Python', 'List of tenders from website', 'Use your coding capabilites to extract the list of tenders from the sites listed in attachment', ' For your python capabilities and company growth', '5.00', '2.00', '1.00', '../activity/workfiles/assi-pyt-34/arun/links for sites - Copy.rar', '2018-02-16 14:28:20', '0000-00-00 00:00:00'),
(35, 1, 1, 'assignment and ppt', 'Python', 'List of tenders from website', 'Use your coding capabilites to extract the list of tenders from the sites listed in attachment.', ' For your python capabilities and company growth', '5.00', '2.00', '1.00', '../activity/workfiles/assi-pyt-35/arun/links for sites - Copy.rar', '2018-02-16 14:28:19', '0000-00-00 00:00:00'),
(36, 1, 1, 'assignment and ppt', 'Concept', 'Accelerated learning', 'Modify the presentation I have sent with your insights. Keep the figures and flow charts to make it attractive', ' for company', '5.00', '2.00', '1.00', '../activity/workfiles/assi-con-36/arun/Programming_ppts.7z', '2018-02-16 14:28:15', '0000-00-00 00:00:00'),
(37, 1, 1, 'task', 'HTML', 'Building bio along with learning table & forms', 'Building bio along with learning table & forms', ' You will be one step closer to html mastering', '5.00', '2.00', '1.00', '../activity/workfiles/task-htm-37/arun/Third day.rar', '2018-02-16 14:28:13', '0000-00-00 00:00:00'),
(38, 1, 1, 'task', 'HTML', 'Build simple website', 'Build and modify the website beautifully. Observe and build your own bio data page.', ' You will learn how combination of div elements and the css will make your website beautiful.', '5.00', '2.00', '1.00', '../activity/workfiles/task-htm-38/arun/04. Fouth day.rar', '2018-02-16 14:28:12', '0000-00-00 00:00:00'),
(39, 1, 1, 'task', 'CSS', 'Read various css contents and get telugu font working in a webpage', 'Get telugu font working in a webpage, with downloading otf or ttf and write some useful sentences in telugu.', ' Great learning for you', '8.00', '2.00', '1.00', '../activity/workfiles/task-css-39/arun/book_2.rar', '2018-02-16 14:28:11', '0000-00-00 00:00:00'),
(40, 1, 1, 'presentation', 'HTML', 'Introduction to HTML', 'Please make a presentation and present on HTML', ' ', '10.00', '2.00', '1.00', NULL, '2018-02-16 14:28:10', '0000-00-00 00:00:00'),
(41, 1, 1, 'assignment and ppt', 'CSS', 'Presentation on Entire CSS', 'Make an informative preentation on CSS', ' ', '5.00', '2.00', '1.00', NULL, '2018-02-16 14:28:08', '0000-00-00 00:00:00'),
(42, 1, 1, 'assignment and ppt', 'General', 'Presentation on Creative thinking', 'Nice presentation to be made on Creative thinking', ' ', '10.00', '2.00', '1.00', NULL, '2018-02-16 14:28:06', '0000-00-00 00:00:00'),
(43, 1, 1, 'assignment and ppt', 'General', 'Preparation for Jobs', 'Jobs, Companies and effective resume generation and communication -topics', ' ', '10.00', '2.00', '1.00', NULL, '2018-02-16 14:28:05', '0000-00-00 00:00:00'),
(44, 1, 1, 'task', 'Java_script', 'Build JS page to display distance between cities', 'Get the distance values between cties in AP & TL and write code to display user when he provide information of two cities.', ' Most of JS you learn', '10.00', '2.00', '1.00', NULL, '2018-02-16 14:28:02', '0000-00-00 00:00:00'),
(45, 1, 1, 'task', 'Python', 'Write a program find the factorial of a number', 'Program asks user to input a number... upon input program calculates the factorial of number and outputs.', ' Basics of python', '5.00', '2.00', '1.00', NULL, '2018-02-16 14:28:01', '0000-00-00 00:00:00'),
(46, 1, 1, 'presentation', 'Java_script', 'Presentation on arrays', 'Work out and make presentation on array object and its methods in JavaScript.', ' Good exercise to build your programming skills', '7.00', '2.00', '1.00', NULL, '2018-02-16 14:27:59', '0000-00-00 00:00:00'),
(47, 1, 1, 'task', 'Python', 'Guessing game', 'You python to code guessing game. Get a random four digit number and ask user to guess the number. You read input number and intimate user how many digits are correct and let user to keep guess. Once user guess is right give a summary of how many attempts took it to guess.', ' Great fun learning', '10.00', '2.00', '1.00', NULL, '2018-02-16 14:27:58', '0000-00-00 00:00:00'),
(48, 1, 1, 'presentation', 'Python', 'Presentation on python introduction', 'Make nice presentation and present on introduction to python', NULL, '10.00', '2.00', '1.00', NULL, '2018-02-16 14:27:57', '0000-00-00 00:00:00'),
(49, 1, 1, 'Project', 'Java_script', 'Fast type words- Game with JavaScript-DOM', 'Have a random 100 word sentence on user page, which not responsive. And start counting time when user start typing letters. Upon completion give a summary of how many mistakes, how much time it took- total and fast letters, slow letters etc. And rank the user from previous users.', 'Great achievement in JavaScript', '20.00', '2.00', '1.00', NULL, '2018-02-16 14:27:55', '0000-00-00 00:00:00'),
(50, 1, 1, 'presentation', 'HTML', 'Presentation on HTML', 'Present a ppt on HTML', ' Good for you', '5.00', '2.00', '1.00', NULL, '2018-02-16 14:27:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `assign_tasks`
--

-- CREATE TABLE `assign_tasks` (
--   `id` int(11) NOT NULL,
--   `assign_user_id` int(10) DEFAULT NULL,
--   `task_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
--   `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
--   `guide_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
--   `reviewer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
--   `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `obtained_marks` int(100) DEFAULT NULL,
--   `created_at` timestamp NULL DEFAULT NULL,
--   `updated_at` timestamp NULL DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_tasks`
--

INSERT INTO `assign_tasks` (`id`, `assign_user_id`, `task_id`, `user_id`, `guide_id`, `reviewer_id`, `status`, `obtained_marks`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'karthik', 'arun', 'arun', 'drop', 0, '2017-04-24 19:44:48', '2017-04-24 19:44:48'),
(2, 1, '1', '3', 'arun', 'arun', 'approved', 5, '2017-04-24 19:44:48', '2017-04-24 19:44:48'),
(3, 1, '1', '5', 'arun', 'arun', 'approved', 5, '2017-04-24 19:44:48', '2017-04-24 19:44:48'),
(4, 1, '1', '4', 'arun', 'arun', 'approved', 5, '2017-04-24 19:44:48', '2017-04-27 00:15:24'),
(5, 1, '1', '2', 'arun', 'arun', 'approved', 5, '2017-04-17 04:53:17', '2017-04-17 04:53:17'),
(6, 1, '1', 'Madhuvar', 'arun', 'arun', 'drop', 0, '2017-04-17 04:57:30', '2017-04-17 04:57:30'),
(7, 1, '1', 'venkat', 'arun', 'arun', 'approved', 4, '2017-04-17 04:53:17', '2017-04-17 04:53:17'),
(8, 1, '2', '3', 'arun', 'arun', 'approved', 1, '2017-04-16 09:58:20', '2017-04-16 09:58:20'),
(9, 1, '2', '5', 'arun', 'arun', 'approved', 5, '2017-04-17 04:53:17', '2017-04-17 04:53:17'),
(10, 1, '3', '4', 'arun', 'arun', 'approved', 4, '2017-04-17 04:53:17', '2017-04-17 04:53:17'),
(11, 1, '4', '5', 'arun', 'arun', 'approved', 0, '2017-04-17 04:53:17', '2017-04-17 04:53:17'),
(12, 1, '4', 'saiganesh', 'arun', 'arun', 'drop', NULL, '2017-04-17 04:53:17', '2017-04-17 04:53:17'),
(13, 1, '4', 'shiva', 'arun', 'arun', 'drop', NULL, '2017-04-17 04:53:17', '2017-04-17 04:53:17'),
(14, 1, '4', 'suresh', 'arun', 'arun', 'drop', NULL, '2017-04-17 04:53:17', '2017-04-17 04:53:17'),
(15, 1, '4', 'Madhuvar', 'arun', 'arun', 'drop', NULL, '2017-04-17 04:53:17', '2017-04-17 04:53:17'),
(16, 1, '4', 'ray.ajaykumar204', 'arun', 'arun', 'drop', NULL, '2017-04-17 04:53:17', '2017-04-17 04:53:17'),
(17, 1, '4', 'shiva2', 'arun', 'arun', 'drop', NULL, '2017-04-17 04:53:17', '2017-04-17 04:53:17'),
(18, 1, '4', 'Vijayraju', '', 'arun', 'drop', NULL, '2017-04-17 04:53:17', '2017-04-17 04:53:17'),
(19, 1, '5', '4', 'arun', 'arun', 'approved', 3, '2017-04-17 04:53:17', '2017-04-18 00:17:25'),
(20, 1, '6', 'suresh', 'arun', 'arun', 'drop', NULL, '2017-04-21 21:21:28', '2017-06-07 12:15:12'),
(21, 1, '7', '3', 'arun', 'arun', 'approved', 1, '2017-04-14 16:05:28', '2017-04-18 00:23:59'),
(22, 1, '7', '5', 'arun', 'arun', 'approved', 3, '2017-04-14 16:15:01', '2017-04-14 18:46:50'),
(24, 1, '9', '4', 'arun', 'arun', 'approved', 2, '2017-04-17 02:01:17', '2017-04-17 02:01:17'),
(25, 1, '10', '6', 'arun', 'arun', 'approved', 10, '2017-12-20 11:35:34', '2017-12-22 09:13:01'),
(26, 1, '11', '5', 'arun', 'arun', 'approved', 4, '2017-04-18 00:13:40', '2017-04-20 19:40:13'),
(27, 1, '12', '4', 'arun', 'arun', 'approved', 4, '2017-04-25 07:02:34', '2017-04-26 03:03:04'),
(28, 1, '12', '5', 'arun', 'arun', 'approved', 4, '2017-04-19 21:37:05', '2017-04-24 12:07:38'),
(29, 1, '13', '5', 'arun', 'arun', 'approved', 8, '2017-04-21 12:58:44', '2017-04-27 00:14:12'),
(30, 1, '14', '4', 'arun', 'arun', 'approved', 2, '2017-04-21 01:27:17', '2017-06-18 12:44:46'),
(31, 1, '15', '4', 'arun', 'arun', 'approved', 0, '2017-04-24 14:32:43', '2017-04-24 16:05:02'),
(32, 1, '16', '4', 'arun', 'arun', 'approved', 3, '2017-04-27 01:28:41', '2017-05-01 01:02:42'),
(33, 1, '16', '5', 'arun', 'arun', 'approved', 5, '2017-04-26 00:33:14', '2017-04-27 01:50:39'),
(34, 1, '17', '5', 'arun', 'arun', 'approved', 3, '2017-04-26 21:37:56', '2017-04-27 01:06:08'),
(35, 1, '18', '4', 'arun', 'arun', 'approved', 7, '2017-05-08 04:09:03', '2017-05-23 13:57:38'),
(36, 1, '18', '5', 'arun', 'arun', 'approved', 7, '2017-05-09 15:15:21', '2017-05-23 13:57:04'),
(37, 1, '19', '5', 'arun', 'arun', 'approved', 6, '2017-04-27 23:09:53', '2017-05-09 19:56:35'),
(38, 1, '20', '5', 'arun', 'arun', 'approved', 5, '2017-05-05 13:31:22', '2017-05-09 00:00:30'),
(39, 1, '21', '5', 'arun', 'arun', 'approved', 3, '2017-05-01 23:13:17', '2017-05-06 21:11:22'),
(40, 1, '22', '4', 'arun', 'arun', 'drop', 0, '2017-11-21 12:54:45', '2017-11-27 13:33:13'),
(41, 1, '23', '5', 'arun', 'arun', 'approved', 0, '2017-05-26 01:17:02', '2017-06-06 14:19:34'),
(42, 1, '24', '4', 'arun', 'arun', 'approved', 8, '2017-06-15 17:22:27', '2017-06-18 12:43:13'),
(43, 1, '24', '5', 'arun', 'arun', 'approved', 8, '2017-06-07 19:04:02', '2017-06-21 01:20:28'),
(44, 1, '26', '4', 'arun', 'arun', 'approved', 0, '2017-06-15 17:21:57', '2017-06-15 17:21:57'),
(45, 1, '27', '4', 'arun', 'arun', 'approved', 0, '2017-12-14 16:59:44', '2017-12-14 16:59:44'),
(46, 1, '27', '5', 'arun', 'arun', 'drop', 0, '2017-12-14 16:59:44', '2017-12-14 16:59:44'),
(47, 1, '28', '4', 'arun', 'arun', 'approved', 4, '2017-05-31 02:24:09', '2017-06-07 12:03:56'),
(48, 1, '29', '4', 'arun', 'arun', 'approved', 3, '2017-06-15 17:29:30', '2017-06-20 17:29:30'),
(49, 1, '30', '4', 'arun', 'arun', 'approved', 16, '2017-06-14 20:54:01', '2017-07-19 00:35:17'),
(50, 1, '31', '4', 'arun', 'arun', 'drop', 2, '2017-08-03 14:26:13', '2017-08-03 14:26:13'),
(51, 1, '31', '5', 'arun', 'arun', 'approved', 0, '2017-08-03 14:26:13', '2017-08-03 14:26:13'),
(52, 1, '32', '4', 'arun', 'arun', 'approved', 3, '2017-06-18 14:37:35', '2017-06-21 01:22:46'),
(54, 1, '34', '4', 'arun', 'arun', 'approved', 4, '2017-07-20 12:46:51', '2017-07-20 12:46:51'),
(56, 1, '36', '4', 'arun', 'arun', 'approved', 0, '2017-08-03 11:03:31', '2017-08-03 11:03:31'),
(57, 1, '37', '6', 'arun', 'arun', 'approved', 4, '2017-11-13 13:49:17', '2017-11-13 13:49:17'),
(58, 1, '39', '6', 'arun', 'arun', 'approved', 8, '2017-12-04 12:31:14', '2017-12-04 12:31:14'),
(59, 1, '40', '7', 'arun', 'arun', 'approved', 0, '2017-11-30 17:47:45', '2017-11-30 17:47:45'),
(60, 1, '41', '6', 'arun', 'arun', 'approved', 4, '2017-11-30 17:47:45', '2017-11-30 17:47:45'),
(61, 1, '42', '6', 'arun', 'arun', 'approved', 8, '2017-11-30 19:25:32', '2017-11-30 19:25:32'),
(62, 1, '43', '6', 'arun', 'arun', 'approved', NULL, '2017-11-30 17:39:21', '2017-11-30 19:25:32'),
(63, 1, '44', '6', 'arun', 'arun', 'approved', 10, '2017-11-30 17:39:21', '2017-11-30 19:25:32'),
(64, 1, '45', '6', 'arun', 'arun', 'approved', 4, '2017-12-19 16:53:29', '2017-12-19 16:53:29'),
(66, 1, '47', '6', 'arun', 'arun', 'approved', 8, '2018-01-04 17:16:40', '2018-01-04 17:16:40'),
(67, 1, '48', '6', 'arun', 'arun', 'approved', NULL, '2017-12-19 16:53:29', '2017-12-19 16:53:29'),
(69, 1, '50', '7', 'arun', 'arun', 'redo', NULL, '2018-01-10 19:41:58', '2018-01-10 19:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

-- CREATE TABLE `batches` (
--   `id` int(11) NOT NULL,
--   `name` varchar(30) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `name`) VALUES
(1, '2014'),
(2, '2015'),
(3, '2016'),
(4, '2017'),
(5, '2018'),
(6, '2019');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

-- CREATE TABLE `branches` (
--   `id` int(11) NOT NULL,
--   `name` varchar(30) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`) VALUES
(1, 'CSE'),
(2, 'IT'),
(3, 'ECE'),
(4, 'EEE'),
(5, 'CIVIL'),
(6, 'MECHANICAL');

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

-- CREATE TABLE `institutes` (
--   `id` int(11) NOT NULL,
--   `name` varchar(50) NOT NULL,
--   `city` varchar(20) NOT NULL,
--   `address` varchar(200) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `name`, `city`, `address`) VALUES
(1, 'Ameyem Skills Lab', 'Vijayawada', '#40-6-9,Revenue Colony,Labbipet,Vijayawada.pin-520010'),
(2, 'Andhra University Geophysics', 'Vizag', 'Vizag'),
(3, 'Sri Chundi Ranganayakulu Polytechnic College', 'Chilakaluripet', 'Chilakaluripet');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

-- CREATE TABLE `migrations` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
--   `batch` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2017_07_12_145959_create_permission_tables', 1),
(34, '2017_12_26_065741_create_new_task_table', 1),
(35, '2017_12_28_055141_create_assign_task_table', 1),
(36, '2017_12_28_121114_create_admin_tasks_table', 2),
(38, '2017_12_29_060055_create_admin_task_table', 3),
(39, '2017_12_29_100328_create_assign_tasks_table', 4),
(41, '2018_01_02_062014_create_profiles_table', 5),
(42, '2018_01_05_043749_create_user_tasks_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

-- CREATE TABLE `model_has_permissions` (
--   `permission_id` int(10) UNSIGNED NOT NULL,
--   `model_id` int(10) UNSIGNED NOT NULL,
--   `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

-- CREATE TABLE `model_has_roles` (
--   `role_id` int(10) UNSIGNED NOT NULL,
--   `model_id` int(10) UNSIGNED NOT NULL,
--   `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_id`, `model_type`) VALUES
(1, 1, 'App\\User'),
(1, 2, 'App\\User'),
(1, 3, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

-- CREATE TABLE `password_resets` (
--   `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
--   `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
--   `created_at` timestamp NULL DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('venkateswarlu@ameyem.com', '$2y$10$0/x0aA6qC/G.xHWlxblPfu3V0VwSi.M5iTUMw54r28K76TATcwgCW', '2018-02-09 12:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

-- CREATE TABLE `permissions` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
--   `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
--   `created_at` timestamp NULL DEFAULT NULL,
--   `updated_at` timestamp NULL DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'users_manage', 'web', '2017-12-28 06:04:01', '2017-12-28 06:04:01'),
(2, 'admin', 'web', '2017-12-28 06:09:01', '2017-12-28 06:09:01'),
(3, 'student', 'web', '2017-12-28 06:10:06', '2017-12-28 06:10:06'),
(4, 'Guide', 'web', '2017-12-29 05:29:51', '2017-12-29 05:29:51'),
(5, 'Reviewer', 'web', '2017-12-29 05:30:03', '2017-12-29 05:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

--
-- Table structure for table `roles`
--

-- CREATE TABLE `roles` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
--   `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
--   `created_at` timestamp NULL DEFAULT NULL,
--   `updated_at` timestamp NULL DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'web', '2017-12-28 06:04:01', '2017-12-28 06:04:01'),
(5, 'Teacher', 'web', '2018-02-14 11:46:34', '2018-02-14 11:46:34'),
(6, 'Student', 'web', '2018-02-14 11:46:42', '2018-02-14 11:46:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

-- CREATE TABLE `role_has_permissions` (
--   `permission_id` int(10) UNSIGNED NOT NULL,
--   `role_id` int(10) UNSIGNED NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 5),
(3, 6),
(4, 5),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

-- CREATE TABLE `subjects` (
--   `id` int(11) NOT NULL,
--   `user_id` int(10) DEFAULT NULL,
--   `institutes_id` int(5) NOT NULL,
--   `subject` varchar(50) NOT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `user_id`, `subject`, `created_at`, `updated_at`) VALUES
(1,1, 'General', '2018-02-20 11:14:14', '0000-00-00 00:00:00'),
(2,1, 'HTML', '2018-02-20 11:15:22', '0000-00-00 00:00:00'),
(3,1, 'CSS', '2018-02-20 11:15:26', '0000-00-00 00:00:00'),
(4,1, 'JAVASCRIPT', '2018-02-20 11:15:42', '0000-00-00 00:00:00'),
(5,1, 'PHP', '2018-02-20 11:15:38', '0000-00-00 00:00:00'),
(6,1, 'JAVA', '2018-02-20 11:15:36', '0000-00-00 00:00:00'),
(7,1, 'C', '2018-02-20 11:15:32', '0000-00-00 00:00:00'),
(8,1, 'C++', '2018-02-20 11:15:30', '0000-00-00 00:00:00'),
(9,1, 'PYTHON', '2018-02-20 11:15:52', '0000-00-00 00:00:00'),
(10,1, 'Android', '2018-02-20 11:15:49', '0000-00-00 00:00:00'),
(11,1, 'Embedded', '2018-02-20 11:15:47', '0000-00-00 00:00:00'),
(12,1, 'Concept', '2018-02-20 11:15:45', '0000-00-00 00:00:00'),
(13,8, 'Earth and Planetary Systems', '2018-02-20 11:16:03', '0000-00-00 00:00:00'),
(14,8, 'Earthquake Seismology', '2018-02-20 11:16:10', '0000-00-00 00:00:00'),
(15,8, 'Seismic Methods of Prospecting', '2018-02-20 11:15:58', '0000-00-00 00:00:00'),
(16,8, 'Stationary Field And Electrical Methods', '2018-02-20 11:16:17', '0000-00-00 00:00:00'),
(17,8, 'Geophysical Signal Processing', '2018-02-20 11:15:55', '0000-00-00 00:00:00'),
(18,8, 'Time Varying Field and Electromagnetic Methods', '2018-02-20 11:16:06', '0000-00-00 00:00:00'),
(19,8, 'Environmental Hazards and Mitigation', '2018-02-20 11:16:14', '0000-00-00 00:00:00'),
(20,8, 'Remote Sensing and GIS', '2018-02-20 11:16:23', '0000-00-00 00:00:00'),
(21,8, 'Gravity & Magnetic Methods of Prospecting', '2018-02-20 11:16:33', '0000-00-00 00:00:00'),
(22,8, 'Field Geophysics : Seismic Methods', '2018-02-20 11:16:30', '0000-00-00 00:00:00'),
(23,8, 'Field Geophysics : Electrical & Electromagnetic Me', '2018-02-20 11:16:39', '0000-00-00 00:00:00'),
(24,8, 'Borehole Geophysics', '2018-02-20 11:16:27', '0000-00-00 00:00:00'),
(25,8, 'Advanced Seismology and Geothermic', '2018-02-20 11:16:36', '0000-00-00 00:00:00'),
(26,8, 'Radiometric Methods', '2018-02-19 08:22:31', '0000-00-00 00:00:00'),
(27,8, 'Groundwater Systems and Management', '2018-02-19 08:22:31', '0000-00-00 00:00:00');


-- --------------------------------------------------------

--
-- Table structure for table `users`
--
ALTER TABLE `users` ADD `branch_id` INT DEFAULT NULL AFTER `role_id`, ADD  `batch_id` INT DEFAULT NULL AFTER `branch_id`;
-- CREATE TABLE `users` (
--   `id` int(11) NOT NULL,
--   `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
--   `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
--   `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `institutes_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `role_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `branch_id` int(10) DEFAULT NULL,
--   `batch_id` int(10) DEFAULT NULL,
--   `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `dob` date DEFAULT NULL,
--   `qualification` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `specialization` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `marks` float DEFAULT NULL,
--   `passout` date DEFAULT NULL,
--   `collegeaddress` text COLLATE utf8mb4_unicode_ci,
--   `homeaddress` text COLLATE utf8mb4_unicode_ci,
--   `profilepic` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `created_at` timestamp NULL DEFAULT NULL,
--   `updated_at` timestamp NULL DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --
-- -- Dumping data for table `users`
-- --

-- INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `institutes_id`, `role_id`, `branch_id`, `batch_id`, `phone_number`, `dob`, `qualification`, `specialization`, `marks`, `passout`, `collegeaddress`, `homeaddress`, `profilepic`, `created_at`, `updated_at`) VALUES
-- (1, 'Admin', 'admin@admin.com', '$2y$10$alzGFCT/G0Jl9NQ0F6IHQOyXWJl.z4wFBZuNBxo/YyYghgnZNgS0O', '4fOQJ4JsEomFtJE9jz7sLgEbH3hdGQWyKlSCLRCcaRNRX1ABTjWtHKvMrDVi', '1', '5', 0, 0, '8800197778', '1992-07-10', 'BE', 'CSE', 70.07, '2013-04-20', 'Tirumala Engineering College', 'RangareddyPalem,Jonnalagadda,Narasaraopet,Guntur.', 'venkat.jpg', '2017-03-30 06:04:01', '2018-02-14 06:26:15'),
-- (2, 'arun', 'arun@ameyem.com', '$2y$10$qqklkXJmBNjaaZdSRuJkd.Zy2pqFJwkbVXzucpK2zRIRBtu4eIE2.', 'hPnznzTntyEjlndNjlfbgkgYCvq3PCWDbPqG7NJ6tU0MyoMmWan4FJFQPW3L', '1', '6', 0, 0, NULL, '2000-01-02', NULL, NULL, NULL, NULL, NULL, 'Hyderabad', NULL, '2018-01-22 07:07:51', '2018-02-06 10:41:19'),
-- (3, 'arun2', 'arun2@ameyem.com', '$2y$10$t4r313yfG8fVUzk8d2Tx9O.eQoFSSacI9aaJ0gdjfQWwvC7BvwiW.', NULL, '1', '6', 0, 0, '9848041175', '1986-06-06', 'M-tech', 'GeoPhysics', 100, '2006-04-20', 'IIT,Bombay', 'Hyderabad', NULL, '2018-01-22 07:09:11', '2018-02-06 10:50:41'),
-- (4, 'Venkateswarlu Dande', 'venkateswarlu@ameyem.com', '$2y$10$2eqvafKjHqhoXdGSzpR.VODqZFJNwSmQzB.ifpUnXTsluwiaK6WyO', 'MjLvxcc65ygOfgdAhekZ8YB4NczDhKKPRxFNtiNUbZDREHF57oLN9MtU8zGf', '1', '6', 0, 0, '9848041175', '1992-07-10', 'B-tech', 'CSE', 70.07, '2013-04-20', 'Tirumala Engineering College', 'RangareddyPalem,Jonnalagadda,Narasaraopet,Guntur.', '1.jpg', '2017-04-15 07:09:56', '2018-02-10 07:16:12'),
-- (5, 'prasad', 'prasad@ameyem.com', '$2y$10$2ZVABMYwj.B4SseYpVS1GeWJFPMRWuOzY/hBFfNBmpiDb31uaqsLa', 'RiFP5hpRArauZ7KblP2ybTvDo0CbJeT0qnmghDcO3nvrMSgPk6Qg34dhEelG', '1', '6', 0, 0, '9581740376', '1993-10-10', 'B-tech', 'ECE', 70.07, '1992-08-27', 'hei', 'hei', NULL, '2018-01-22 07:10:34', '2018-02-14 11:44:21'),
-- (6, 'Naveen Kumar Dande', 'naveen@ameyem.com', '$2y$10$G0uFe1s6YkPJ7bIQPBZmY.3U3a8mnMxw04eu3QOLdVnuIxlYv8lvm', 'zmOXpoqG5IjCC5A56cJ4dLD4DCf2gchATrQ9Of39k4RDElq6BlgKsf3Zz0r1', '1', '6', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-09 07:11:19', '2018-02-14 11:44:15'),
-- (7, 'Naresh Kumar', 'naresh@ameyem.com', '$2y$10$KWvB9FSZ2YUH7bVgcgdx4OeCgUY.q62yhutPDJFtmxmIT9CGlekbC', 'PexicCBGNQvExEroT5rWnVnBruTrgtUozCT0jDMZd1eSGS324NG8Yij93A3L', '1', '6', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-22 07:11:54', '2018-02-14 11:44:31'),
-- (8, 'RammohanRao', 'rammohanrao.dande@gmail.com', '$2y$10$3SUWm3V2CbM8xs.E.0zEa.RDrYufTAccvJ8jLmih0nhO0iEj2RUpO', 'jwCTQ8Jhg1f4LS65RLF6RSPKFux90JW3ZJ4sLzY36Wi44NhwtHYI8Vg5bi1b', '2', '5', 0, 0, '9848041175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-15 05:17:05', '2018-02-15 05:17:05'),
-- (9, 'student', 'student@ameyem.com', '$2y$10$3ed3yfNrI28ch590PQag2OBZa8/i1QikYPFyf37zPZMHzaqtyeXpS', 'm2sth0YCy3qnOZkR0O3yD4ZMl8ICAu6tdrSLFSXkAMDcHggL35Go5nUhrajz', '2', '6', 1, 1, '9848041175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-21 04:58:36', '2018-02-21 04:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_tasks`
--

-- CREATE TABLE `user_tasks` (
--   `id` int(11) NOT NULL,
--   `assigntask_id` int(5) DEFAULT NULL,
--   `request_for` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `message` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `uploads` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
--   `obtained_marks` int(100) DEFAULT NULL,
--   `created_at` timestamp NULL DEFAULT NULL,
--   `updated_at` timestamp NULL DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_tasks`
--

INSERT INTO `user_tasks` (`id`, `assigntask_id`, `request_for`, `message`, `uploads`, `obtained_marks`, `created_at`, `updated_at`) VALUES
(1, 2, 'approved', NULL, NULL, NULL, '2017-06-21 06:53:50', NULL),
(2, 4, 'review', 'I have already registered in ASDP and filled all the details..', NULL, NULL, '2017-04-25 01:14:48', NULL),
(3, 4, 'approved', NULL, NULL, NULL, '2017-04-27 05:45:24', NULL),
(4, 6, 'review', ' I already submitted my profile and my skills in webpage.Have a look on it.', NULL, NULL, '2017-04-17 10:27:30', NULL),
(5, 6, 'approved', ' Good. I haven\'t checked but for now I\'m okaying it.', NULL, NULL, '2017-04-18 05:50:07', NULL),
(6, 5, 'review', 'I have already registered in ASDP and filled all the details..', NULL, NULL, '2017-04-25 01:15:31', NULL),
(7, 5, 'approved', NULL, NULL, NULL, '2017-04-27 05:44:58', NULL),
(10, 8, 'review', ' please review', NULL, NULL, '2017-04-16 15:28:20', NULL),
(11, 8, 'approved', ' ', NULL, NULL, '2017-04-18 05:48:44', NULL),
(12, 9, NULL, ' please find the attachment for simple line graph inputs are taken from the text file', '../activity/workfiles/assi-jav-2/prasad/studentgraph.rar', NULL, '2017-04-12 02:50:59', NULL),
(13, 8, 'review', ' please find the attachment for simple line graph inputs are taken from the text file', '../activity/workfiles/assi-jav-2/prasad/studentgraph.rar', NULL, '2017-04-12 02:50:59', NULL),
(14, 8, NULL, ' You have taken entire new approach. You have not built it on earlier which I\'ve sent with modifications. Please check it and improve upon it.', NULL, NULL, '2017-04-12 16:19:48', NULL),
(15, 8, 'redo', ' You have taken entire new approach. You have not built it on earlier which I\'ve sent with modifications. Please check it and improve upon it.', NULL, NULL, '2017-04-12 16:19:48', NULL),
(16, 8, NULL, ' Have the floatread program which we developed earlier', '../activity/workfiles/assi-jav-2/arun/floatread.rar', NULL, '2017-04-12 18:17:09', NULL),
(17, 2, 'redo', ' Have the floatread program which we developed earlier', '../activity/workfiles/assi-jav-2/arun/floatread.rar', NULL, '2017-04-12 18:17:09', NULL),
(18, 9, NULL, ' This is the attachment of reading file data with header and java i/o functions document ', '../activity/workfiles/assi-jav-2/prasad/file data and java io files.rar', NULL, '2017-04-13 03:34:14', NULL),
(19, 9, 'review', ' This is the attachment of reading file data with header and java i/o functions document ', '../activity/workfiles/assi-jav-2/prasad/file data and java io files.rar', NULL, '2017-04-13 03:34:14', NULL),
(20, 9, NULL, ' Great attempt and good improvement. But I expected more. Here I modified little bit using methods in your old calculator program. Study it before I set a new task.', '../activity/workfiles/assi-jav-2/arun/file data and java io files.zip', NULL, '2017-04-13 07:19:16', NULL),
(21, 2, 'approved', ' Great attempt and good improvement. But I expected more. Here I modified little bit using methods in your old calculator program. Study it before I set a new task.', '../activity/workfiles/assi-jav-2/arun/file data and java io files.zip', NULL, '2017-04-13 07:19:16', NULL),
(22, 10, 'review', 'Task Completed....', NULL, NULL, '2017-06-09 00:19:09', NULL),
(23, 10, 'approved', 'Good', NULL, NULL, '2017-06-12 07:26:58', NULL),
(24, 7, 'review', 'dear sir,\r\nreview on my work,\r\nregards', '../activity/workfiles/task-htm-4/naveen14/naveenkumaar.rar', NULL, '2017-11-10 20:37:47', NULL),
(25, 7, 'approved', 'Good', NULL, NULL, '2017-11-14 01:33:48', NULL),
(26, 0, 'redo', 'Madhu,\r\nThis is just to show you how a task will be assigned to a candidate. See if you can build some simple task... With the link\r\nhttp://skills.ameyem.com/activity/index.php', NULL, NULL, '2017-04-25 14:28:16', NULL),
(27, 19, 'review', ' i made some changes in user login and registration pages at ameyem skills.\r\nIt seems good.', NULL, NULL, '2017-04-17 10:23:17', NULL),
(28, 19, 'redo', ' It\'s ok. Not great.', NULL, NULL, '2017-04-18 05:47:08', NULL),
(29, 19, 'approved', ' ', NULL, NULL, '2017-04-18 05:47:25', NULL),
(30, 20, 'review', 'Hai sir.,\r\nI completed my assignment on overriding.\r\nPlease find below attachment.', '../activity/workfiles/task-jav-6/suresh/OVERRIDING - Copy.rar', NULL, '2017-04-22 02:51:28', NULL),
(31, 20, 'redo', 'IT\'s OK...', NULL, NULL, '2017-04-23 17:26:45', NULL),
(32, 20, 'review', ' Submit your work here...', NULL, NULL, '2017-04-18 05:51:31', NULL),
(33, 20, 'drop', 'He is not around he got placed...', NULL, NULL, '2017-06-07 17:45:12', NULL),
(36, 21, 'redo', ' hi23', NULL, NULL, '2017-04-14 21:35:28', NULL),
(38, 21, 'redo', ' hello', NULL, NULL, '2017-04-14 21:37:56', NULL),
(40, 21, 'approved', ' Written and gave it to Prasad', NULL, NULL, '2017-04-18 05:53:59', NULL),
(41, 22, NULL, 'sir,\r\nThis is the file of float multiplication using array list.\r\n', '../activity/workfiles/task-jav-7/prasad/floatmul.rar', NULL, '2017-04-14 21:45:01', NULL),
(42, 22, 'review', 'sir,\r\nThis is the file of float multiplication using array list.\r\n', '../activity/workfiles/task-jav-7/prasad/floatmul.rar', NULL, '2017-04-14 21:45:01', NULL),
(43, 22, NULL, ' I don\'t understand why you face so much problem in doing simple program. Why are you using high fundaa.. such as list? It is simple. Just see my program. I also divided main java file in two.\r\nFor now go to basics. What are variables, methods, classes and how to define and use them. And your for loop too is not that great. For this you get very few credits.', '../activity/workfiles/task-jav-7/arun/floatmul_ab.zip', NULL, '2017-04-15 00:16:50', NULL),
(44, 22, 'approved', ' I don\'t understand why you face so much problem in doing simple program. Why are you using high fundaa.. such as list? It is simple. Just see my program. I also divided main java file in two.\r\nFor now go to basics. What are variables, methods, classes and how to define and use them. And your for loop too is not that great. For this you get very few credits.', '../activity/workfiles/task-jav-7/arun/floatmul_ab.zip', NULL, '2017-04-15 00:16:50', NULL),
(45, 24, 'review', ' I just Created Ameyem Skill Labs Facebook webpage.\r\nwww.facebook.com/Ameyem\r\nIt got 17 likes,56 shares', NULL, NULL, '2017-04-17 10:20:36', NULL),
(46, 24, 'approved', 'Great stuff. Try to keep asdp details either in profile or through posts in some vijayawada groups. And remove pages with my details for now. I just don\'t wish my friends knowing about this company being mine.', NULL, NULL, '2017-04-17 07:31:17', NULL),
(47, 25, 'review', 'Dear Sir,\r\nI have completed these tasks..\r\nPlease review on my tasks\r\nRegards,\r\nNaveen', '../activity/workfiles/assi-pyt-10/naveen14/20-12-17.rar', NULL, '2017-12-20 17:05:34', NULL),
(48, 25, 'approved', NULL, NULL, NULL, '2017-12-22 14:43:01', NULL),
(49, 26, 'review', 'Respected sir,\r\nHere is the attachment of displaying two dimensional array.', '../activity/workfiles/task-jav-11/prasad/matrix.rar', NULL, '2017-04-18 05:02:41', NULL),
(50, 26, 'redo', ' Prasad can you upload the file again. Your file was not uploaded...', NULL, NULL, '2017-04-18 05:43:40', NULL),
(51, 26, 'review', ' Respected sir, Here is the attachment of displaying two dimensional array.\r\n', '../activity/workfiles/task-jav-11/prasad/matrix.rar', NULL, '2017-04-18 15:32:52', NULL),
(52, 26, 'redo', ' This is only when you know number of rows and number of columns. But when you don\'t know, how you will read? Hint: you can use list, or define your array size to 1000 rows and 1000 columns. Use array.length() method wherever required. Use the attached data for test.', '../activity/workfiles/task-jav-11/arun/big_data.txt', NULL, '2017-04-18 15:54:18', NULL),
(53, 26, 'review', ' sir,\r\nHere is the attachment of modified matrix program.here matrix rows and columns cannot defined by developer.it automatically taken.', '../activity/workfiles/task-jav-11/prasad/matrix.rar', NULL, '2017-04-19 04:02:55', NULL),
(54, 26, 'redo', ' It\'s not working with the big_data.txt file which I attached in morning redo request. Please check and and read what I have written carefully.', NULL, NULL, '2017-04-19 07:19:41', NULL),
(55, 26, 'review', ' sir,\r\n\r\nThis is the modified program please check it once.', '../activity/workfiles/task-jav-11/prasad/matrix.rar', NULL, '2017-04-20 00:09:10', NULL),
(56, 26, 'redo', ' on 16th and 17th lines you have initiated two arrays like following.\r\n float[][] a=new float [12][12];\r\n float f[]=new float[100];\r\nthis a and f are what for? and why 12x12 and why f is 100 length?', NULL, NULL, '2017-04-20 00:26:35', NULL),
(57, 26, 'review', ' sir,\r\nthis modified program.changed folder name to matrix_modified.', '../activity/workfiles/task-jav-11/prasad/matrix_modified.rar', NULL, '2017-04-20 00:45:03', NULL),
(58, 26, 'redo', ' upload again', NULL, NULL, '2017-04-20 00:50:57', NULL),
(59, 26, 'review', ' ', '../activity/workfiles/task-jav-11/prasad/matrix_modified.rar', NULL, '2017-04-20 00:51:40', NULL),
(60, 26, 'redo', 'Good so far. Answer the following and modify your program before closing this task\r\nfloat[][] a=new float [1000][1000]; \r\n By initializing a variable this big what are the implications on programme performance? \r\nHow much memory this 1000x1000 matrix occupies? how can we avoid this ineficiency? Is there anyway to guess approximately to guess the size of array to be taken by knowing the size of text file?\r\n float f[]=new float[10000]; // Is there a possibility to avoid this variable?\r\n rows++;\r\n ', NULL, NULL, '2017-04-20 02:32:32', NULL),
(61, 26, 'redo', ' I have included comments in java file itself. See that before answering earlier comment.', '../activity/workfiles/task-jav-11/arun/matrix_modified.zip', NULL, '2017-04-20 02:36:04', NULL),
(62, 26, 'review', ' sir,\r\nHere i have attached the matrix file and eliminates the all the unnecessary codes based on your guide lines.Please check it once. ', '../activity/workfiles/task-jav-11/prasad/matrix_rectified.rar', NULL, '2017-04-20 20:29:00', NULL),
(63, 26, 'approved', 'Great efforts and very good improvement. You proved you can push your boundaries further. But this is not sufficient. You have to work hard and without me saying you have to make your work perfectly in every task. \r\nI have modified your program to make it perfect. See the attachment.', '../activity/workfiles/task-jav-11/arun/Matrix_rectified.rar', NULL, '2017-04-21 01:10:13', NULL),
(64, 27, 'review', 'Dear Sir please find the document which contains task regarding JavaScript.\r\n\r\n', '../activity/workfiles/assi-jav-12/venkat508/javascript.rar', NULL, '2017-04-25 12:32:34', NULL),
(65, 27, 'redo', 'Write description of js key words in attached html file.', NULL, NULL, '2017-04-25 14:11:58', NULL),
(66, 27, 'review', 'here is the attachment contains keywords description in JS ', '../activity/workfiles/assi-jav-12/venkat508/form_eg.rar', NULL, '2017-04-26 05:39:58', NULL),
(67, 27, 'approved', 'Ok Good. Start looking into how can you read from a file on server. And how to create graphs.', NULL, NULL, '2017-04-26 08:33:04', NULL),
(68, 28, 'review', ' sir, \r\nI am prepared some notes on JavaScript and differences between static and Dynamic Webpages.\r\n', '../activity/workfiles/assi-jav-12/prasad/javascript.docx', NULL, '2017-04-20 03:07:05', NULL),
(69, 28, 'redo', 'File seams to be not uploaded. Please load it again.', NULL, NULL, '2017-04-20 17:39:47', NULL),
(70, 28, 'review', 'Notes on JavaScript.', '../activity/workfiles/assi-jav-12/prasad/javascript.docx', NULL, '2017-04-20 18:51:59', NULL),
(71, 28, 'redo', 'File hasn\'t uploaded yet. I have changed the upload program. Now give it a try.', NULL, NULL, '2017-04-20 23:46:33', NULL),
(72, 28, 'review', NULL, '../activity/workfiles/assi-jav-12/prasad/javascript.rar', NULL, '2017-04-21 00:15:43', NULL),
(73, 28, 'redo', 'Want to upload here?', NULL, NULL, '2017-04-21 19:54:40', NULL),
(74, 28, 'redo', 'Discussion on important elements on attachment is missing. Explain the keywords used in attachment.', NULL, NULL, '2017-04-23 17:32:36', NULL),
(75, 28, 'review', 'important elements in attachment and their description..', '../activity/workfiles/assi-jav-12/prasad/javascript.rar', NULL, '2017-04-24 05:34:29', NULL),
(76, 28, 'approved', 'Good starting point...', NULL, NULL, '2017-04-24 17:37:38', NULL),
(77, 29, 'review', 'sir,Here i am attached two files.\r\none is matrix operation is for calculating sum of rows and columns and average of rows and average of columns.\r\n another one in matrix operations like addition, subtraction,multiplication for this read two two text files and displayed in two matrices,and then arithmetic operation were performed.i take example foe 3*3 matrices.Please check these two files.', '../activity/workfiles/task-jav-13/prasad/matrix_arithopera.rar', NULL, '2017-04-21 18:28:44', NULL),
(78, 29, 'redo', 'If you want upload more do now', NULL, NULL, '2017-04-21 19:53:33', NULL),
(79, 29, 'redo', 'Not 3x3 matrices. There should be no limit', NULL, NULL, '2017-04-21 19:57:44', NULL),
(80, 29, 'review', ' one is matrix operation is for calculating sum of rows and columns and average of rows and average of columns', '../activity/workfiles/task-jav-13/prasad/matrixoperations.rar', NULL, '2017-04-21 20:12:27', NULL),
(81, 29, 'redo', 'Define a class like MatOps, if one instance of it will have all the methods. For eg: MatOps M = new MatOps. Then, M.rowsum, should give one array(column array) of sums, M.rowav will get me average of each row and same with columns. Then M.matsum(MatA,MatB) shall return MatC(two dim array) =MatA+MatB. Same with subtraction and multiplication. Think and make it clean and clear.', NULL, NULL, '2017-04-21 23:44:12', NULL),
(82, 29, 'redo', 'Example project', '../activity/workfiles/task-jav-13/arun/SimpleArith.rar', NULL, '2017-04-23 23:24:25', NULL),
(83, 29, 'review', 'sir, i have developed a program matrix addition,subtraction and multiplication if it ok i will develop the remaining column avg row avg..', '../activity/workfiles/task-jav-13/prasad/matrix_arithopera.rar', NULL, '2017-04-24 02:44:18', NULL),
(84, 29, 'redo', 'Purpose of this exercise is not to see whether you can do calculations. This is to see how can you apply your programming skills to solve day to day repeated problems. You should built upon what you have built yesterday. I asked you to develop methods and you are writing without any objective. You first learn what are methods, instances, classes, functions. Give a two page note, mostly stressing upon methods. Don\'t attempt anything before that. Once I okay it you again try this task.', NULL, NULL, '2017-04-24 05:52:19', NULL),
(85, 29, 'review', 'sir,\r\nPlease find the attachment for methods in java.prepared some document about it.wrote a simple program using methods..', '../activity/workfiles/task-jav-13/prasad/methods in java.rar', NULL, '2017-04-25 05:25:12', NULL),
(86, 29, 'redo', 'Good improvement. You can add other classes. You also write a method to read and return matrix from a text file. And size of matrix, to return 2 element array of row and col size. As many methods as you can construct. All will be re-used. Attaching good note on methods. Read it.', '../activity/workfiles/task-jav-13/arun/java methods.7z', NULL, '2017-04-25 14:07:17', NULL),
(87, 29, 'review', 'sir,this is the file of matrix operations in java.inputs are taken from text file..the location of text files provided at run time only..output of the program also attached here..', '../activity/workfiles/task-jav-13/prasad/matrix_arithopera111.rar', NULL, '2017-04-26 03:24:55', NULL),
(88, 29, 'redo', 'Good finally you have made what I wanted. Before I give rating... Share your experience on this project. With this any lesson learnt? If so, what is that? What problems you have faced and how you rectified at each stage. What was your most difficult situation in this.', NULL, NULL, '2017-04-26 08:08:27', NULL),
(89, 29, 'redo', 'Read below comment and look at the modified project by me.', '../activity/workfiles/task-jav-13/arun/matrix_arithopera.7z', NULL, '2017-04-26 09:06:25', NULL),
(90, 29, 'review', 'yes sir, i have got a lot of experience by doing this project..how to reduced the code in the project.how to imported methods from other classes.really its a good experience for me.    ', NULL, NULL, '2017-04-27 02:58:39', NULL),
(91, 29, 'approved', 'Improve your writing skills, analyzing and story telling skills. In future if I ask to tell you experience you should be able to write at least ten lines. ', NULL, NULL, '2017-04-27 05:44:12', NULL),
(92, 30, 'redo', 'My mistake. txt extensions will not be loaded. It has to be zip, rar or 7z file.', '../activity/workfiles/task-pyt-14/arun/text.zip', NULL, '2017-04-21 06:57:17', NULL),
(93, 30, 'review', 'Dear Sir\r\nI can count the word in a text file but i\'m unable to print the graph with words and its count.i need some more preparation on python.', '../activity/workfiles/task-pyt-14/venkat508/PYTHON.rar', NULL, '2017-04-24 07:28:03', NULL),
(94, 30, 'redo', 'It is not calcualating properly. Eg. Python. is taken as different from python or Python. Program should get all the words despite of their tail entities and case difference. Means Python, python, PYthon: - all these should be considered under \"python\". Try this.', NULL, NULL, '2017-04-23 23:55:23', NULL),
(95, 30, 'review', 'i made changes in program as you mentioned ', '../activity/workfiles/task-pyt-14/venkat508/wordcounter_ab.rar', NULL, '2017-04-26 09:27:48', NULL),
(96, 30, 'redo', 'Now concentrate on plot. Use plotly module.  with pip install', NULL, NULL, '2017-04-28 08:13:41', NULL),
(97, 30, 'review', 'I\'m trying to send first column i.e word into one array and number of repetition into another column but its not write properly.i was trying another program i.e x-axis takes words directly and y-axis takes the numbers but while running the program it gives an error.it shows only two axis\'s have numbers only its possible to print the graph. i was trying another program to print words and numbers in graph like following program.i\'m keep on learning in those concept.\r\nDo you have any idea or progra', '../activity/workfiles/task-pyt-14/venkat508/wordcount.rar', NULL, '2017-05-02 18:08:49', NULL),
(98, 30, 'redo', 'For now leave it and send the result of another task. You are very lazy in sending results.', NULL, NULL, '2017-05-03 09:51:22', NULL),
(99, 30, 'review', 'Please Drop this task', NULL, NULL, '2017-06-15 22:51:00', NULL),
(100, 30, 'redo', 'For the work you have done', NULL, NULL, '2017-06-18 18:14:12', NULL),
(101, 30, 'approved', 'Dropped rest', NULL, NULL, '2017-06-18 18:14:46', NULL),
(102, 31, 'redo', 'Where is it. Kindly attach here...', NULL, NULL, '2017-04-24 20:02:43', NULL),
(103, 31, 'review', 'Please find the attached rar file', '../activity/workfiles/task-gen-15/venkat508/Visiting cards.rar', NULL, '2017-04-25 09:19:50', NULL),
(104, 31, 'approved', 'No efforts were went in...', NULL, NULL, '2017-04-24 21:35:02', NULL),
(105, 32, 'review', 'Dear Sir here is the attachment for temperature converter.', '../activity/workfiles/task-jav-16/venkat508/temperature_converter.rar', NULL, '2017-04-27 06:58:41', NULL),
(106, 32, 'redo', 'Think differently. Keep it different from your colleague.', NULL, NULL, '2017-04-27 08:14:00', NULL),
(107, 32, 'review', 'Here is the new program.', '../activity/workfiles/task-jav-16/venkat508/temperature.rar', NULL, '2017-04-28 07:07:04', NULL),
(108, 32, 'redo', 'Have you seen the image I have attached in main of task? Why can\'t you create with that idea? What if people wants to convert kelvin Celsius?', NULL, NULL, '2017-04-28 07:58:14', NULL),
(109, 32, 'review', 'Writing a program as you mentioned in picture little bit complicated. I\'m using switch case in this program.i\'ll get you mentioned out put with in two days.', '../activity/workfiles/task-jav-16/venkat508/converter.rar', NULL, '2017-04-29 11:20:53', NULL),
(110, 32, 'approved', 'Not impressive...', NULL, NULL, '2017-05-01 06:32:42', NULL),
(111, 33, 'review', 'sir..written program for converting Centigrade to Fahrenheit to Kelvin and vice-versa.', '../activity/workfiles/task-jav-16/prasad/Temperature converter.rar', NULL, '2017-04-26 06:03:14', NULL),
(112, 33, 'redo', 'Good. Now attachment contain asdp pages. On which you create the \'People\', and \'Tools\' in between login and contact. Under tools, you keep your temperature converter and under people you keep your name with your pages, bio and cv, you created earlier. Attach whole thing here.', '../activity/workfiles/task-jav-16/arun/asdp_pages.7z', NULL, '2017-04-26 08:23:25', NULL),
(113, 33, 'review', 'sir,created  the \'People\', and \'Tools\' in between login and contact in ASDP website.', '../activity/workfiles/task-jav-16/prasad/asdp pages.rar', NULL, '2017-04-27 03:02:26', NULL),
(114, 33, 'approved', 'Good there are still few problems. Keep work on your resume. Highlight where you are mastered- in achievements, you can tell about your projects, text file reading and matrix methods implementation.', NULL, NULL, '2017-04-27 07:20:39', NULL),
(115, 34, 'review', 'sir, drawn a graph in javafx. Read the two columns from text file by imported read method from other class and taken two columns in two arrays and finally drawn the graph..', '../activity/workfiles/task-jav-17/prasad/plotmatrix.rar', NULL, '2017-04-27 03:07:56', NULL),
(116, 34, 'approved', 'Implement it for more than two columns. And give some warnings when user selects wrong file. And get ready for bigger projects. Read about java fx and fxml', NULL, NULL, '2017-04-27 06:36:08', NULL),
(117, 35, 'review', 'Dear Sir ,Modified some data in skills.ameyem.com .  if we are updating regularly and modified regularly.', '../activity/workfiles/task-gen-18/venkat508/skills_08May17_13h.rar', NULL, '2017-05-08 09:39:03', NULL),
(118, 35, 'redo', 'Photos appear smaller. Update them on latest version.', NULL, NULL, '2017-05-11 13:48:11', NULL),
(119, 35, 'review', 'Here is the new updates of skills.ameyem.com', '../activity/workfiles/task-gen-18/venkat508/skills_17May17_19h.rar', NULL, '2017-05-17 15:20:19', NULL),
(120, 35, 'approved', 'More eeforts can be put...', NULL, NULL, '2017-05-23 19:27:38', NULL),
(121, 36, 'review', 'sir,modified website.added some key points and activities.this was done by with the help of venkatesh..', '../activity/workfiles/task-gen-18/prasad/skills_10May17_13h.rar', NULL, '2017-05-09 20:45:21', NULL),
(122, 36, 'redo', 'Photos appear smaller when opened. Update them on latest version.', NULL, NULL, '2017-05-11 13:47:25', NULL),
(123, 36, 'redo', 'Ignore last comment. Links on photos to work. And check continue reading, whether it is working properly.', NULL, NULL, '2017-05-11 13:56:43', NULL),
(124, 36, 'review', 'modification file sent by venkatesh', NULL, NULL, '2017-05-22 20:49:06', NULL),
(125, 36, 'redo', 'It can be further improved...', NULL, NULL, '2017-05-23 19:26:24', NULL),
(126, 36, 'approved', 'It can be further improved...', NULL, NULL, '2017-05-23 19:27:04', NULL),
(127, 37, 'review', 'sir,this is the program of plot a graph  plot first column vs rest of the columns. please check it once.', '../activity/workfiles/task-jav-19/prasad/plotmatrix_fx.rar', NULL, '2017-04-28 04:39:53', NULL),
(128, 37, 'redo', 'Why do you make things so complicated? After constructing and using readMatrix() method, why you retract again by putting all nonsense code inside main? And there is no consistency from earlier program. You are writing entirely new code. In earlier program why have you used lot of for loop? In 2nd one you rectified. Why can\'t you write a method to get required column? And the mistake you did mainly is putting everything in one chart series. I have modified it for you. Modify upon it. Keep minimu', '../activity/workfiles/task-jav-19/arun/plotmatrix.zip', NULL, '2017-04-28 07:53:23', NULL),
(129, 37, 'review', 'sir,I have modified this program.drawn plot between one columns versus required columns.it asks the user enter column number by using this.plot graph between first column versus required columns.here i am plotted first columns versus  3 remaining columns.', '../activity/workfiles/task-jav-19/prasad/plotcolumns.rar', NULL, '2017-04-28 22:44:05', NULL),
(130, 37, 'redo', 'Now, include the file selector button in your gui. You can take help from attached java file...', '../activity/workfiles/task-jav-19/arun/FileOpener.7z', NULL, '2017-05-01 05:08:02', NULL),
(131, 37, 'review', 'sir,\r\nthis is the file of reading text file using file chooser in javafx and drawn plot drawn graph between first column versus required columns.first of all you have to enter the required column number after that load the required file and after successful of loading you have to click the graph button.then finally graph will be appeared', '../activity/workfiles/task-jav-19/prasad/filechooser.rar', NULL, '2017-05-02 04:39:28', NULL),
(132, 37, 'redo', 'Good but, where have you used readfile.java class? and the readMatrix method?\r\nAnd if I don\'t chose column number it\'s giving error... Have you tried with @overriding at these cases? Or you can plot first column as default and keep the option to select column numbers to the user (block beyond max #columns)', NULL, NULL, '2017-05-02 14:38:37', NULL),
(133, 37, 'review', 'sir, modified the previous program.read file taken from another class.if user selects out of array size it plots graph first column versus second column otherwise plots the graph between first column versus required column.', '../activity/workfiles/task-jav-19/prasad/filechooser.rar', NULL, '2017-05-03 03:13:22', NULL),
(134, 37, 'redo', 'Not working and you haven\'t understood. Talk to you tomorrow.', NULL, NULL, '2017-05-03 09:50:15', NULL),
(135, 37, 'review', 'sir,modified previous file.when the user load text file it immediately drawn graph first column versus second column and after the required column it plot graph between first column versus required column.and it also displayed number of columns present in the file.', '../activity/workfiles/task-jav-19/prasad/filechooser_04May17_11h.rar', NULL, '2017-05-03 19:06:14', NULL),
(136, 37, 'redo', 'It is taking same data even if I changed the column number after choosing first time. Also you haven\'t replaced the readfile.java with original file.', NULL, NULL, '2017-05-03 19:57:28', NULL),
(137, 37, 'review', 'sir,finally modified this project.i have verified with different text files.', '../activity/workfiles/task-jav-19/prasad/filechooser graph.rar', NULL, '2017-05-04 00:06:36', NULL),
(138, 37, 'redo', 'Final Touch. I have done 90% work for you with the following and kept a little bit for you. Made a nice javafx scene with table and kept one column inside it. Now you understand everything and keep all the columns inside table soon after you read text file. This completes the exercise.', '../activity/workfiles/task-jav-19/arun/TablePlot.7z', NULL, '2017-05-04 12:02:25', NULL),
(139, 37, 'review', 'sir,this is table plot project.', '../activity/workfiles/task-jav-19/prasad/TablePlot.rar', NULL, '2017-05-09 18:14:52', NULL),
(140, 37, 'approved', 'See and understand... I have changed read.java too for future compatibility...', '../activity/workfiles/task-jav-19/arun/tableplot.rar', NULL, '2017-05-10 01:26:35', NULL),
(141, 38, 'review', 'sir,\r\nthis is the file of json graph.data taken from php file. program of line chat is in getjson.html', '../activity/workfiles/task-jav-20/prasad/01-line-chart.rar', NULL, '2017-05-05 19:01:22', NULL),
(142, 38, 'redo', 'Not plot the score and display sum of the values from the attached json file', '../activity/workfiles/task-jav-20/arun/myvaluesjson.7z', NULL, '2017-05-05 19:33:37', NULL),
(143, 38, 'review', 'sir,\r\nthis is the file displaying score value and addition of it from json file in php file.', '../activity/workfiles/task-jav-20/prasad/programs.rar', NULL, '2017-05-06 05:39:55', NULL),
(144, 38, 'redo', 'Now have one more json. I want here- addition of all the prasad credits for the month of April added and plotted. You need to use for loop and if test for assigned_to_userid variable and date variable. Implement and send.', '../activity/workfiles/task-jav-20/arun/workvaljson.7z', NULL, '2017-05-06 18:42:25', NULL),
(145, 38, 'review', 'calculated  addition of all the prasad credits in php file.', '../activity/workfiles/task-jav-20/prasad/prasadcredits.rar', NULL, '2017-05-07 03:12:16', NULL),
(146, 38, 'redo', 'Look at the dates too... You need to only keep credits of April month. And finally, echo an array with Dates array and Prasad credits array to html and plot the data over there.', NULL, NULL, '2017-05-07 15:17:08', NULL),
(147, 38, 'review', 'this is the file sir..', '../activity/workfiles/task-jav-20/prasad/credits.rar', NULL, '2017-05-07 19:18:53', NULL),
(148, 38, 'redo', 'You haven\'t test yet for date... All the data should be of signle month, which should be of april. Whether you do it in php or json is upto you but you should do. Read about date formats in php and js.', '../activity/workfiles/task-jav-20/arun/json_js_advanced.rar', NULL, '2017-05-07 19:34:46', NULL),
(149, 38, 'review', 'this is the file of plot graph  credits.checking with month and name..', '../activity/workfiles/task-jav-20/prasad/credits chart.rar', NULL, '2017-05-07 21:10:12', NULL),
(150, 38, 'redo', 'The javascript should deal with any length of array with date and data points. Have you forgot everything learned with all previous java programming tasks?', NULL, NULL, '2017-05-07 21:37:00', NULL),
(151, 38, 'redo', 'I have modified your program. Have a look. If you want, go through the help link given at line 28 in getjson1.html and see how to update data point... \r\nNow gave actual chat_latest.json. Get all your credits score- sum and plot your data.\r\n', '../activity/workfiles/task-jav-20/arun/getjson1.rar', NULL, '2017-05-07 22:17:46', NULL),
(152, 38, 'review', 'php file', '../activity/workfiles/task-jav-20/prasad/demo_file1.rar', NULL, '2017-05-08 19:35:43', NULL),
(153, 38, 'redo', 'Have the finalized demo file. Get this plotted and summed and send all files except chat_latest.json.', '../activity/workfiles/task-jav-20/arun/demo_file_final.rar', NULL, '2017-05-08 22:29:22', NULL),
(154, 38, 'review', 'final line chart.calulated the total credits and plotted credits', '../activity/workfiles/task-jav-20/prasad/01-line-chart_final.rar', NULL, '2017-05-08 23:40:52', NULL),
(155, 38, 'approved', 'You have made a good attempt in dealing with new subject which is not easy for a new bee. You can increase your efforts. Good luck for future tasks', NULL, NULL, '2017-05-09 05:30:30', NULL),
(156, 39, 'review', 'sir,\r\nplease find attachment for simple calculator in javascript. modified the people page in ASDP.', '../activity/workfiles/task-jav-21/prasad/calculator.rar', NULL, '2017-05-02 04:43:17', NULL),
(157, 39, 'redo', 'Good. But make the calculator bigger(4 times). And buttons nicely stacked. Use some more css to make buttons look beautiful.', NULL, NULL, '2017-05-02 14:19:58', NULL),
(158, 39, 'review', 'sir,this is the modified file.added some css styles to previous file.', '../activity/workfiles/task-jav-21/prasad/calculator.rar', NULL, '2017-05-03 03:07:29', NULL),
(159, 39, 'redo', 'Calculator styles means not the simple ones. Look at what I have done. Now on you need to be careful. Simple copy & paste from online won\'t work. You need to put efforts. Still there is bug in calculator. I have kept the hit to modify. Try it.\r\n', '../activity/workfiles/task-jav-21/arun/calculator.7z', NULL, '2017-05-03 09:26:09', NULL),
(160, 39, 'review', 'sir,modified calculator program in asdp website.added back button to it.', '../activity/workfiles/task-jav-21/prasad/calculator_06May17_12h.rar', NULL, '2017-05-05 20:14:01', NULL),
(161, 39, 'redo', 'Still gaps between buttons are there....', NULL, NULL, '2017-05-06 20:54:33', NULL),
(162, 39, 'review', 'sir,modified calculator program.', '../activity/workfiles/task-jav-21/prasad/calculator_07May17_16h.rar', NULL, '2017-05-06 23:38:47', NULL),
(163, 39, 'approved', 'Good work. Keep it up.', NULL, NULL, '2017-05-07 02:41:22', NULL),
(164, 40, 'review', NULL, NULL, NULL, '2017-11-21 18:24:45', NULL),
(165, 40, 'drop', NULL, NULL, NULL, '2017-11-27 19:03:13', NULL),
(166, 41, 'review', 'sir, i am facing problem with added drop list.attached file here.', '../activity/workfiles/task-jav-23/prasad/tableplot.rar', NULL, '2017-05-26 06:47:02', NULL),
(167, 41, 'redo', 'Program progressed a lot. But kept few things you to learn and complete. Find attachment with source file and dependency jars. Work on the chart part, where you need to upside down the y axis and increase the vertical length of chart with increasing data size.', '../activity/workfiles/task-jav-23/arun/logplot.rar', NULL, '2017-06-06 19:49:34', NULL),
(168, 42, 'review', 'Drop this task', NULL, NULL, '2017-06-15 22:52:27', NULL),
(169, 42, 'approved', 'Dropped', NULL, NULL, '2017-06-18 18:13:13', NULL),
(170, 43, 'review', 'sir,this is attachment of bar graph using json file. it shows the completed tasks and credit points for the particular task.and skill level (at the time registration skill levels)is shown in bar chart.', '../activity/workfiles/Proj-php-24/prasad/01-bar-chart.rar', NULL, '2017-06-08 00:34:02', NULL),
(171, 43, 'redo', 'First make html fields showing all the details of candidate. Then his skill graph.', NULL, NULL, '2017-06-08 19:38:10', NULL),
(172, 43, 'redo', 'Study attached files how to utilize the json data, [key,val] duo to display data in nicely formatted environment...', '../activity/workfiles/Proj-php-24/arun/login-home.rar', NULL, '2017-06-08 22:17:01', NULL),
(173, 43, 'review', 'This is file file sir.. ', '../activity/workfiles/Proj-php-24/prasad/01-BAR-chart.rar', NULL, '2017-06-09 22:06:13', NULL),
(174, 43, 'redo', 'That\'s good but you can use jquery methods when are you dealing with small json file. Attached is having the application. In this few powerful statements alone can access most of the keys and values of json file. I have changed chart application as previous one was not free. Now on use google charts. And in excersize folder itself I kept the login-home.php. It shows you haven\'t properly study what was the excersize. Don\'t repeat it in future.', '../activity/workfiles/Proj-php-24/arun/getjson-cg.7z', NULL, '2017-06-10 08:59:40', NULL),
(175, 43, 'review', 'This is the file sir..i facing problem with retrieving json data. ', '../activity/workfiles/Proj-php-24/prasad/getjson-cg.rar', NULL, '2017-06-12 17:33:59', NULL),
(176, 43, 'redo', 'Can you upload whatever you have done so far?', NULL, NULL, '2017-06-13 21:58:01', NULL),
(177, 43, 'review', 'sir..here i have attached getson.html file.and array of elements is not accessed in html body.', '../activity/workfiles/Proj-php-24/prasad/getjson-cg2.rar', NULL, '2017-06-14 00:23:40', NULL),
(178, 43, 'redo', 'Then what is the point of sending this, when you are not using the data in html? Is there any new thing here? Why cant you apply same if logic for the inner loop too? \r\nWhy can\'t ', NULL, NULL, '2017-06-14 15:02:35', NULL),
(179, 43, 'review', 'sir,\r\ni have attached a getjson file.it build a candidate page from json file.', '../activity/workfiles/Proj-php-24/prasad/getjson-cg2_15Jun17_20h.rar', NULL, '2017-06-15 03:33:44', NULL),
(180, 43, 'approved', 'good. ', NULL, NULL, '2017-06-21 06:50:28', NULL),
(181, 53, 'review', 'sir,please find the attachment for read log file with headers in javaFx.', '../activity/workfiles/task-jav-25/prasad/read_log_file.rar', NULL, '2017-05-17 02:13:45', NULL),
(182, 53, 'approved', 'Good', NULL, NULL, '2017-05-23 19:19:11', NULL),
(183, 44, 'review', 'Drop this task', NULL, NULL, '2017-06-15 22:51:57', NULL),
(184, 44, 'approved', 'Dropped', NULL, NULL, '2017-06-18 18:12:15', NULL),
(185, 46, 'review', 'Completed', NULL, NULL, '2017-12-14 22:29:44', NULL),
(186, 47, 'review', 'Dear Sir,This is the ASDP presentation ppt.see and send me the corrections.  ', '../activity/workfiles/pres-gen-28/venkat508/asdp ppt.rar', NULL, '2017-05-31 07:54:09', NULL),
(187, 47, 'redo', 'ASDP developed to install Computer skills in students. Presentation should concentrate on how ASDP program can improve student skills in programming, web devt., and software developement. How a task assigned, how student interact with guide and how he completes task, hence improve skills.', NULL, NULL, '2017-05-30 20:08:12', NULL),
(188, 47, 'review', 'In this PPT i made some modifications.send me the corrections if any.', '../activity/workfiles/pres-gen-28/venkat508/asdp ppt_31May17_17h.rar', NULL, '2017-05-31 13:23:56', NULL),
(189, 47, 'approved', 'Looks ok. Can be better.', NULL, NULL, '2017-06-07 17:33:56', NULL),
(190, 48, 'review', 'Arduino  blink led project', '../activity/workfiles/task-emb-29/venkat508/Arduino.rar', NULL, '2017-06-15 22:59:30', NULL),
(191, 48, 'redo', 'Give a note on Arduino and the pins.', NULL, NULL, '2017-06-21 06:51:08', NULL),
(192, 48, 'review', 'Introduction to Arduino', '../activity/workfiles/task-emb-29/venkat508/Arduino_23Jun17_16h.rar', NULL, '2017-06-22 23:55:50', NULL),
(193, 48, 'approved', NULL, NULL, NULL, '2017-11-27 19:01:28', NULL),
(194, 49, 'review', 'here is upload a file project in raspberry pi.', '../activity/workfiles/Proj-emb-30/venkat508/upload.rar', NULL, '2017-06-09 23:14:20', NULL),
(195, 49, 'redo', 'it\'s not working....', NULL, NULL, '2017-06-14 16:00:54', NULL),
(196, 49, 'redo', 'Try this on raspberry pi after installing ftplib', '../activity/workfiles/Proj-emb-30/arun/ftp_upload3.rar', NULL, '2017-06-14 20:42:37', NULL),
(197, 49, 'review', 'Upload a image into website', '../activity/workfiles/Proj-emb-30/venkat508/file_send.rar', NULL, '2017-06-15 02:24:01', NULL),
(198, 49, 'redo', 'I have modified your program, Do two things. 1. Merge capture1 and ftp_upload_single in one. 2. Keep Date & time stamp on each image', '../activity/workfiles/Proj-emb-30/arun/ftp_upload_single.7z', NULL, '2017-06-15 15:39:31', NULL),
(199, 49, 'review', 'Raspberry pi video streaming project submission ', '../activity/workfiles/Proj-emb-30/venkat508/Raspberry Pi video streaming project.rar', NULL, '2017-06-15 22:47:20', NULL),
(200, 49, 'redo', 'find attached file and implement. It took me just 10 minutes. You tried it whole day....', '../activity/workfiles/Proj-emb-30/arun/text_on_img.7z', NULL, '2017-06-16 03:46:10', NULL),
(201, 49, 'review', 'Raspberry pi video streaming project submission.', '../activity/workfiles/Proj-emb-30/venkat508/Raspberry Pi video streaming project_21Jun17_10h.rar', NULL, '2017-06-20 17:58:56', NULL),
(202, 49, 'redo', 'Good and great work. You also include description of Camera, its specifications, how and where you connect etc. Also include real raspberry pi pic along with its camera... dont forget to keep .py files in zip folder.', NULL, NULL, '2017-06-21 06:35:10', NULL),
(203, 49, 'review', 'Project', '../activity/workfiles/Proj-emb-30/venkat508/Raspberry_Video_Streaming_Project.rar', NULL, '2017-06-21 18:36:19', NULL),
(204, 49, 'approved', 'Good', NULL, NULL, '2017-07-19 06:05:17', NULL),
(205, 51, 'review', '1.in asdp chat sign out is not working.\r\n2.For review the task only pdf files ware uploded.3.more than 4mb files not uploded.4.at a time one review is possible to send in the asdp, its good to allow more than one.5.most important thing is not get the replies quickly. ', NULL, NULL, '2017-08-03 19:56:13', NULL),
(206, 51, 'approved', NULL, NULL, NULL, '2017-11-27 19:02:09', NULL),
(207, 51, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL),
(208, 52, 'review', 'here is one form', '../activity/workfiles/task-gen-32/venkat508/form1.rar', NULL, '2017-06-18 20:07:35', NULL),
(209, 52, 'redo', 'Dots not rquired in front of each radio button. Remove 1, 2,... numbering from the options. Keep each question in a nice box and adjust in a beutiful manner as depicted in scan copy using some css stuff.', NULL, NULL, '2017-06-18 20:21:07', NULL),
(210, 52, 'review', 'here is two new edited forms', '../activity/workfiles/task-gen-32/venkat508/forms.rar', NULL, '2017-06-18 22:45:12', NULL),
(211, 52, 'redo', 'Take help of attachement in developing individual cards for each question in form', '../activity/workfiles/task-gen-32/arun/card.rar', NULL, '2017-06-18 23:46:42', NULL),
(212, 52, 'review', 'new cards', '../activity/workfiles/task-gen-32/venkat508/forms_19Jun17_18h.rar', NULL, '2017-06-19 02:14:06', NULL),
(213, 52, 'redo', 'do as described', '../activity/workfiles/task-gen-32/arun/card1.7z', NULL, '2017-06-19 05:02:53', NULL),
(214, 52, 'review', 'edited new cards', '../activity/workfiles/task-gen-32/venkat508/cards.rar', NULL, '2017-06-19 20:03:55', NULL),
(215, 52, 'redo', 'Great', NULL, NULL, '2017-06-21 06:52:35', NULL),
(216, 52, 'approved', NULL, NULL, NULL, '2017-06-21 06:52:46', NULL),
(217, 33, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL),
(218, 54, 'review', 'its the program about extract data from website.', '../activity/workfiles/assi-pyt-34/venkat508/reddif.rar', NULL, '2017-07-20 18:16:51', NULL),
(219, 54, 'redo', 'Upload latest program', NULL, NULL, '2017-07-21 21:33:51', NULL),
(220, 54, 'review', 'new program\r\n', '../activity/workfiles/assi-pyt-34/venkat508/main_project.rar', NULL, '2017-07-21 21:43:35', NULL),
(221, 54, 'approved', 'Good', NULL, NULL, '2017-11-14 01:34:24', NULL),
(222, 56, 'review', 'I couldn\'t find the valid points in the pdf. You already started the creation of ppt, it is the good thing you should finish it. I\'ll concentrate on python.', NULL, NULL, '2017-08-03 16:33:31', NULL),
(223, 56, 'redo', 'It is for you to make. I have lot of other works to do. I made your work easy.', NULL, NULL, '2017-08-03 19:57:54', NULL),
(224, 57, 'review', 'dear sir\r\ni have complete these tasks please review on my tasks regards naveen', '../activity/workfiles/task-htm-37/naveen14/Day3.rar', NULL, '2017-11-13 19:19:17', NULL),
(225, 57, 'approved', 'Good keep it up.', NULL, NULL, '2017-11-14 01:00:06', NULL),
(226, 55, 'review', 'Dear sir,\r\n i have completed these tasks please review on my tasks regards naveen', '../activity/workfiles/task-htm-38/naveen14/Day4.2.rar', NULL, '2017-11-16 22:25:45', NULL),
(227, 55, 'approved', 'Good', NULL, NULL, '2017-11-27 19:00:49', NULL),
(228, 58, 'review', 'Dear sir,\r\ni have completed these tasks please review on my tasks regards naveen', '../activity/workfiles/task-css-39/naveen14/Day5.rar', NULL, '2017-11-16 21:17:17', NULL),
(229, 58, 'redo', 'do it', NULL, NULL, '2017-12-03 17:50:25', NULL),
(230, 58, 'review', 'Dear Sir,\r\nI have completed Telugu font style please review on my task Regards Naveen ', '../activity/workfiles/task-css-39/naveen14/telugu font.rar', NULL, '2017-12-04 00:50:30', NULL),
(231, 58, 'approved', 'Great', NULL, NULL, '2017-12-04 18:01:14', NULL),
(232, 59, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL),
(233, 60, 'review', 'Dear Sir,\r\nPlease review on my task Regards Naveen', '../activity/workfiles/assi-css-41/naveen14/html&css ppt.rar', NULL, '2017-11-30 23:17:45', NULL),
(234, 60, 'approved', 'Great presentation', NULL, NULL, '2017-12-03 17:49:47', NULL),
(235, 61, 'review', 'Dear Sir,\r\nPlease review on my presentation Regards Naveen', '../activity/workfiles/assi-gen-42/naveen14/creative thinking.rar', NULL, '2017-12-01 00:55:32', NULL),
(236, 61, 'approved', 'weldone', NULL, NULL, '2017-12-03 17:49:18', NULL),
(237, 63, 'review', 'Sir,\r\nPlease review on my task Regards Naveen', '../activity/workfiles/task-jav-44/naveen14/distance.rar', NULL, '2017-11-30 23:09:21', NULL),
(238, 63, 'redo', 'See the changes made and implement drop down feature for from and to objects as discussed.', '../activity/workfiles/task-jav-44/arun/distance.rar', NULL, '2017-11-30 23:12:19', NULL),
(239, 63, 'review', 'Dear Sir,\r\nPlease Review on my task Regards Naveen', '../activity/workfiles/task-jav-44/naveen14/distance2.rar', NULL, '2017-12-01 23:02:06', NULL),
(240, 63, 'approved', 'Good', NULL, NULL, '2017-12-22 14:28:06', NULL),
(241, 64, 'review', 'Dear sir,\r\nPlease review on my task Regards Naveen', '../activity/workfiles/task-pyt-45/naveen14/factorial.rar', NULL, '2017-12-19 22:23:29', NULL),
(242, 64, 'redo', NULL, NULL, NULL, '2017-12-22 14:29:16', NULL),
(243, 64, 'approved', NULL, NULL, NULL, '2017-12-22 14:29:39', NULL),
(244, 66, 'review', 'Dear Sir,\r\nPlease review on my task,Regards Naveen', '../activity/workfiles/task-pyt-47/naveen14/5-1-18.rar', NULL, '2018-01-04 22:46:40', NULL),
(245, 66, 'approved', 'Good attempt....', NULL, NULL, '2018-01-11 00:47:55', NULL),
(246, 69, 'review', 'Respected sir,\r\nplease view my presentation', '../activity/workfiles/pres-htm-50/T.N .K/nareshkumar presentation.rar', NULL, '2018-01-11 01:11:58', NULL),
(247, 45, 'review', 'completed', NULL, NULL, '2018-01-26 03:12:29', '2018-01-26 03:12:29'),
(248, 45, 'approved', 'well done', NULL, NULL, '2018-01-26 04:07:48', '2018-01-26 04:07:48'),
(249, 18, 'review', 'please drop my task', NULL, NULL, '2018-01-26 04:44:20', '2018-01-26 04:44:20'),
(250, 17, 'review', 'please drop my task', NULL, NULL, '2018-01-26 04:49:59', '2018-01-26 04:49:59'),
(251, 16, 'Review', 'please drop my task', NULL, NULL, '2018-01-26 04:52:13', '2018-01-26 04:52:13'),
(252, 16, 'Drop', 'Ok.', NULL, NULL, '2018-01-26 04:52:52', '2018-01-26 04:52:52'),
(253, 18, 'drop', 'ok', NULL, NULL, '2018-01-26 04:59:13', '2018-01-26 04:59:13'),
(254, 17, 'drop', 'ok', NULL, NULL, '2018-01-26 04:59:31', '2018-01-26 04:59:31'),
(255, 56, 'review', 'please drop my task', NULL, NULL, '2018-01-26 05:06:54', '2018-01-26 05:06:54'),
(256, 56, 'approved', 'ok', NULL, NULL, '2018-01-26 05:09:15', '2018-01-26 05:09:15'),
(259, 50, 'review', 'testing', NULL, NULL, '2018-01-29 02:26:45', '2018-01-29 02:26:45'),
(260, 50, 'redo', 'testing 2', NULL, NULL, '2018-01-29 02:27:41', '2018-01-29 02:27:41'),
(261, 50, 'review', 'testing 3', NULL, NULL, '2018-01-29 03:23:16', '2018-01-29 03:23:16'),
(262, 50, 'drop', NULL, NULL, NULL, '2018-01-29 03:42:15', '2018-01-29 03:42:15'),
(267, 15, 'drop', NULL, NULL, NULL, '2018-01-30 11:31:23', '2018-01-30 11:31:23'),
(268, 14, 'drop', NULL, NULL, NULL, '2018-01-30 11:31:30', '2018-01-30 11:31:30'),
(269, 13, 'drop', NULL, NULL, NULL, '2018-01-30 11:31:36', '2018-01-30 11:31:36'),
(270, 12, 'drop', NULL, NULL, NULL, '2018-01-30 11:31:43', '2018-01-30 11:31:43'),
(271, 1, 'drop', NULL, NULL, NULL, '2018-01-30 11:31:49', '2018-01-30 11:31:49'),
(273, 68, 'drop', NULL, NULL, NULL, '2018-01-30 12:18:04', '2018-01-30 12:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `work_nature`
--
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `institutes_id`, `role_id`, `branch_id`, `batch_id`, `phone_number`, `dob`, `qualification`, `specialization`, `marks`, `passout`, `collegeaddress`, `homeaddress`, `profilepic`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$alzGFCT/G0Jl9NQ0F6IHQOyXWJl.z4wFBZuNBxo/YyYghgnZNgS0O', 'EMJwAmTDQRuEWkPsSCUMNBZcrw5LZD7HAGjlqRmJLhOoJMtu0Zg9VW3Jqlhm', '1', '1', NULL, NULL, '8800197778', '1992-07-10', 'BE', 'CSE', 70.07, '2013-04-20', 'Tirumala Engineering College', 'RangareddyPalem,Jonnalagadda,Narasaraopet,Guntur.', 'venkat.jpg', '2017-03-30 06:04:01', '2018-02-14 06:26:15'),
(2, 'arun', 'arun@ameyem.com', '$2y$10$qqklkXJmBNjaaZdSRuJkd.Zy2pqFJwkbVXzucpK2zRIRBtu4eIE2.', 'X8NeYDhF8eyqiZ71PzDcPxfyUXW08BHN2qqYtxWg6lmszranU72SwUsmXrJ1', '1', '6', NULL, NULL, NULL, '2000-01-02', NULL, NULL, NULL, NULL, NULL, 'Hyderabad', NULL, '2018-01-22 07:07:51', '2018-02-06 10:41:19'),
(3, 'arun2', 'arun2@ameyem.com', '$2y$10$t4r313yfG8fVUzk8d2Tx9O.eQoFSSacI9aaJ0gdjfQWwvC7BvwiW.', NULL, '1', '6', NULL, NULL, '9848041175', '1986-06-06', 'M-tech', 'GeoPhysics', 100, '2006-04-20', 'IIT,Bombay', 'Hyderabad', NULL, '2018-01-22 07:09:11', '2018-02-06 10:50:41'),
(4, 'Venkateswarlu Dande', 'venkateswarlu@ameyem.com', '$2y$10$2eqvafKjHqhoXdGSzpR.VODqZFJNwSmQzB.ifpUnXTsluwiaK6WyO', 'q6g6nxvjb6fiRsYm0UOy5bHEthq2QlKFE0qFeXZz7WFHIXvIm8N8pKUrpPZX', '1', '6', NULL, NULL, '9848041175', '1992-07-10', 'B-tech', 'CSE', 70.07, '2013-04-20', 'Tirumala Engineering College', 'RangareddyPalem,Jonnalagadda,Narasaraopet,Guntur.', '1.jpg', '2017-04-15 07:09:56', '2018-02-10 07:16:12'),
(5, 'prasad', 'prasad@ameyem.com', '$2y$10$2ZVABMYwj.B4SseYpVS1GeWJFPMRWuOzY/hBFfNBmpiDb31uaqsLa', 'RiFP5hpRArauZ7KblP2ybTvDo0CbJeT0qnmghDcO3nvrMSgPk6Qg34dhEelG', '1', '6', NULL, NULL, '9581740376', '1993-10-10', 'B-tech', 'ECE', 70.07, '1992-08-27', 'hei', 'hei', NULL, '2018-01-22 07:10:34', '2018-02-14 11:44:21'),
(6, 'Naveen Kumar Dande', 'naveen@ameyem.com', '$2y$10$G0uFe1s6YkPJ7bIQPBZmY.3U3a8mnMxw04eu3QOLdVnuIxlYv8lvm', 'zmOXpoqG5IjCC5A56cJ4dLD4DCf2gchATrQ9Of39k4RDElq6BlgKsf3Zz0r1', '1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-09 07:11:19', '2018-02-14 11:44:15'),
(7, 'Naresh Kumar', 'naresh@ameyem.com', '$2y$10$KWvB9FSZ2YUH7bVgcgdx4OeCgUY.q62yhutPDJFtmxmIT9CGlekbC', 'PexicCBGNQvExEroT5rWnVnBruTrgtUozCT0jDMZd1eSGS324NG8Yij93A3L', '1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-22 07:11:54', '2018-02-14 11:44:31'),
(8, 'RammohanRao', 'rammohanrao.dande@gmail.com', '$2y$10$3SUWm3V2CbM8xs.E.0zEa.RDrYufTAccvJ8jLmih0nhO0iEj2RUpO', 'vmLKdZKghpjl5YfRf1TzucBVoupemE2vUsv340fOLUxzDJCW5RmtYTe2IhvI', '2', '5', NULL, NULL, '9848041175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-15 05:17:05', '2018-02-15 05:17:05'),
(9, 'temp1', 'temp1@gmail.com', '$2y$10$fD5pHhAVllJc889d3ZT.mO2Y3DciSTI6NjVx9xPp9O.sfVRUVOGPG', 'r4TO78hbxZNy2IzL9QctgHm1VLuuD4f9i6BtBqTDgYhjTHEZhwAC0mdM3kgF', '2', '6', NULL, NULL, '9848041175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-15 07:08:45', '2018-02-15 07:08:45'),
(10, 'teacher1', 'teacher1@ameyem.com', '$2y$10$IoYeOfkCkUM1kxmIsE9FWOFJy7XVnqZzj4INMbaa3v4f6IStOtw/W', 'M5D4d9O8DQ4egsyErlTw1SJ8G3OvdBmx7xRQLljvmNRY9kYoJ1vJK9YkfC44', '2', '5', NULL, NULL, '9848041175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-16 13:23:01', '2018-02-16 13:23:01');

-- CREATE TABLE `work_nature` (
--   `id` int(11) NOT NULL,
--   `work_nature` varchar(20) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_nature`
--

INSERT INTO `work_natures` (`id`, `work_nature`) VALUES
(1, 'TASK'),
(2, 'ASSIGNMENT'),
(3, 'PRESENTATION'),
(4, 'WORKSHOP'),
(5, 'PROJECT');

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_id` (`task_id`,`user_id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
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
-- Indexes for table `work_nature`
--
ALTER TABLE `work_nature`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_tasks`
--
ALTER TABLE `user_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `work_nature`
--
ALTER TABLE `work_nature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
