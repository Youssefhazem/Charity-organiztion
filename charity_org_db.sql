-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 07:51 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `charity_org_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `city_address`
--

CREATE TABLE `city_address` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city_address`
--

INSERT INTO `city_address` (`id`, `name`, `pr_id`) VALUES
(1, 'el Maadi', 0),
(2, 'El Mohandseen', 0),
(3, '6 October ', 0),
(4, 'Giza', 0),
(5, 'el Haram', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customized_reports`


CREATE TABLE `customized_reports` (
  `id` int(11) NOT NULL,
  `report_name` varchar(222) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sql_statment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customized_reports`
--

INSERT INTO `customized_reports` (`id`, `report_name`, `user_id`, `sql_statment`) VALUES
(1, 'user', 1, '$db=new connect();\r\n		    $con= $db->connectToDB();\r\n			$sql =\"select * from user where id=$id\";\r\n			\r\n			$userDataSet =mysqli_query($con,$sql);'),
(2, 'user_type', 2, '$db=new connect();\r\n		$con= $db->connectToDB();\r\n		$sql =\"select * from user_type where id=$id\";\r\n		$userDataSet =mysqli_query($con,$sql);'),
(3, 'QuantityType', 3, '$db=new connect();\r\n		    $con= $db->connectToDB();\r\n			$sql =\"select * from quantity_type where id=$id\";\r\n			$userDataSet =mysqli_query($con,$sql) or die(mysqli_error($con));'),
(4, 'ProgramDetails', 4, '$db=new connect();\r\n		    $con= $db->connectToDB();\r\n			$sql =\"select * from program_details where id=$id\";\r\n			$userDataSet =mysqli_query($con,$sql) or die(mysqli_error($con));'),
(5, 'ProgramType', 5, '$db=new connect();\r\n		$con= $db->connectToDB();\r\n		$sql =\"select * from program_type where id=$id\";\r\n		$userDataSet =mysqli_query($con,$sql) or die(mysqli_error($con));');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `date_time_don` datetime NOT NULL,
  `reciver_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`id`, `date_time_don`, `reciver_id`, `manager_id`, `user_id`) VALUES
(1001, '2022-01-02 09:22:40', 15050, 1, 4),
(1002, '2022-01-10 09:22:40', 2, 4, 100),
(1004, '2022-01-15 09:25:52', 100, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `donation_details`
--

CREATE TABLE `donation_details` (
  `id` int(11) NOT NULL,
  `Don_id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Qun_type_id` int(11) NOT NULL,
  `Don_type_id` int(11) NOT NULL,
  `py_type_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation_details`
--

INSERT INTO `donation_details` (`id`, `Don_id`, `date_time`, `user_id`, `Quantity`, `Qun_type_id`, `Don_type_id`, `py_type_id`, `status`) VALUES
(6, 1001, '2022-01-10 08:26:06', 1, 20, 2, 2, 6, 1),
(7, 1002, '2022-01-17 08:26:06', 4, 500, 3, 1, 6, 0),
(8, 1004, '2022-01-25 08:27:31', 4, 200, 1, 6, 6, 1),
(9, 1001, '2022-01-18 08:27:31', 15050, 800, 5, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `donation_options`
--

CREATE TABLE `donation_options` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `type` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation_options`
--

INSERT INTO `donation_options` (`id`, `name`, `type`) VALUES
(1, 'tomato', 'food'),
(2, 'meat', 'food'),
(3, 'jackets', 'clothes'),
(4, 'rooms', 'houses');

-- --------------------------------------------------------

--
-- Table structure for table `donation_type`
--

CREATE TABLE `donation_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `pr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation_type`
--

INSERT INTO `donation_type` (`id`, `type`, `pr_id`) VALUES
(1, 'Food', 0),
(2, 'Blood', 0),
(3, 'Money', 0),
(4, 'Blankets', 0),
(5, 'Housing', 0),
(6, 'Eid outfit', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donation_type_options`
--

CREATE TABLE `donation_type_options` (
  `id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `donation_type_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation_type_options`
--

INSERT INTO `donation_type_options` (`id`, `option_id`, `donation_type_id`, `pr_id`) VALUES
(1, 1, 3, 0),
(2, 3, 2, 0),
(3, 2, 2, 0),
(4, 3, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_frindly` varchar(222) NOT NULL,
  `file_path` varchar(222) NOT NULL,
  `file_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `file_frindly`, `file_path`, `file_type_id`, `user_id`) VALUES
(0, 'user', 'D:\\user\\os\\Desktop', 1, 1),
(2, 'QuantityType', 'D:\\user\\os\\php', 1, 3),
(3, 'DonationDetails', 'C:\\Users\\kkl\\decktop', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `file_type`
--

CREATE TABLE `file_type` (
  `id` int(11) NOT NULL,
  `type` varchar(222) NOT NULL,
  `pr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_type`
--

INSERT INTO `file_type` (`id`, `type`, `pr_id`) VALUES
(1, 'php', 0),
(2, 'csv', 0),
(3, 'html', 0),
(4, 'css', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`) VALUES
(1, 'عربي'),
(2, 'English'),
(3, ' Spanish'),
(4, 'French');

-- --------------------------------------------------------

--
-- Table structure for table `massenger`
--

CREATE TABLE `massenger` (
  `id` int(11) NOT NULL,
  `messag_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `massenger`
--

INSERT INTO `massenger` (`id`, `messag_id`, `user_id`, `date_time`) VALUES
(1, 2, 3, '2021-12-01 15:27:58'),
(2, 3, 8, '2022-01-20 15:27:58'),
(3, 4, 9, '2021-11-08 15:28:42'),
(4, 3, 1, '2021-02-01 15:28:42'),
(5, 6, 6, '2023-05-17 15:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message` varchar(222) NOT NULL,
  `messag_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `messag_type_id`) VALUES
(1, 'A database stores real-time information about one particular part of your business: its main job is to process the daily transactions that your company makes, e.g., recording which items have sold. Databases handle a massi', 2),
(2, 'A Data Warehouse is a system that pulls together data from many different sources within an organization for reporting and analysis. The reports created from complex queries within a data warehouse are used to make busines', 3),
(3, 'Big Data refers to the technologies that process huge volumes of data Its storage the NoSQL databases are used to support Partitioning and Availability with eventual consistency of data instead of immediate consistency of ', 4),
(4, 'The database is the organized collection of data. These raw data are stored in very large databases.\r\nContain of different levels of abstraction in its architecture.\r\nIt is three levels: external, conceptual, and internal ', 7);

-- --------------------------------------------------------

--
-- Table structure for table `message_type`
--

CREATE TABLE `message_type` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `pr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message_type`
--

INSERT INTO `message_type` (`id`, `name`, `pr_id`) VALUES
(1, 'sms', 0),
(2, 'tweter', 0),
(3, 'WhatsApp', 0),
(4, 'Email', 0),
(5, 'LinkedIn', 0);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `frindly_name` varchar(222) NOT NULL,
  `link_address` varchar(222) NOT NULL,
  `html` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `frindly_name`, `link_address`, `html`) VALUES
(1, 'hr.html', 'https://codepen.io/yuhomyan/pen', '<header>\r\n  <link href=\"https://fonts.googleapis.com/css2?family=Lato&display=swap\" rel=\"stylesheet\">\r\n</header>\r\n\r\n<h1>Animation Buttons</h1>\r\n<p>Hover us and enjoy the satisfying neumorphic animation designs!</p>\r\n<div class=\"frame\">\r\n  <button class=\"custom-btn btn-1\">Read More</button>\r\n  <button class=\"custom-btn btn-2\">Read More</button>\r\n  <button class=\"custom-btn btn-3\"><span>Read More</span></button>\r\n  <button class=\"custom-btn btn-4\"><span>Read More</span></button>\r\n  <button class=\"custom-btn btn-5\"><span>Read More</span></button>\r\n  <button class=\"custom-btn btn-6\"><span>Read More</span></button>\r\n  <button class=\"custom-btn btn-7\"><span>Read More</span></button>\r\n  <button class=\"custom-btn btn-8\"><span>Read More</span></button>\r\n  <button class=\"custom-btn btn-9\">Read More</button>\r\n  <button class=\"custom-btn btn-10\">Read More</button>\r\n  <button class=\"custom-btn btn-11\">Read More<div class=\"dot\"></div></button>\r\n  <button class=\"custom-btn btn-12\"><span>Click!</span><span>Read More</span></button>\r\n  <button class=\"custom-btn btn-13\">Read More</button>\r\n  <button class=\"custom-btn btn-14\">Read More</button>\r\n  <button class=\"custom-btn btn-15\">Read More</button>\r\n  <button class=\"custom-btn btn-16\">Read More</button>\r\n  <p style=\"font-family: Andale Mono, monospace;\">\r\n    DEERBUCKS.DESIGNING</p>\r\n</div>'),
(2, 'hr', 'https://codepen.io/yuhomyan/pen', 'body {\r\n  background: #e0e5ec;\r\n}\r\nh1 {\r\n  position: relative;\r\n  text-align: center;\r\n  color: #353535;\r\n  font-size: 50px;\r\n  font-family: \"Cormorant Garamond\", serif;\r\n}\r\n\r\np {\r\n  font-family: \'Lato\', sans-serif;\r\n  font-weight: 300;\r\n  text-align: center;\r\n  font-size: 18px;\r\n  color: #676767;\r\n}\r\n.frame {\r\n  width: 90%;\r\n  margin: 40px auto;\r\n  text-align: center;\r\n}\r\nbutton {\r\n  margin: 20px;\r\n}\r\n.custom-btn {\r\n  width: 130px;\r\n  height: 40px;\r\n  color: #fff;\r\n  border-radius: 5px;\r\n  padding: 10px 25px;\r\n  font-family: \'Lato\', sans-serif;\r\n  font-weight: 500;\r\n  background: transparent;\r\n  cursor: pointer;\r\n  transition: all 0.3s ease;\r\n  position: relative;\r\n  display: inline-block;\r\n   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),\r\n   7px 7px 20px 0px rgba(0,0,0,.1),\r\n   4px 4px 5px 0px rgba(0,0,0,.1);\r\n  outline: none;\r\n}\r\n\r\n/* 1 */\r\n.btn-1 {\r\n  background: rgb(6,14,131);\r\n  background: linear-gradient(0deg, rgba(6,14,131,1) 0%, rgba(12,25,180,1) 100%);\r\n  border: none;\r\n}\r\n.btn-1:hover {\r\n   background: rgb(0,3,255);\r\nbackground: linear-gradient(0deg, rgba(0,3,255,1) 0%, rgba(2,126,251,1) 100%);\r\n}\r\n\r\n/* 2 */\r\n.btn-2 {\r\n  background: rgb(96,9,240);\r\n  background: linear-gradient(0deg, rgba(96,9,240,1) 0%, rgba(129,5,240,1) 100%);\r\n  border: none;\r\n  \r\n}\r\n.btn-2:before {\r\n  height: 0%;\r\n  width: 2px;\r\n}\r\n.btn-2:hover {\r\n  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),\r\n              -4px -4px 6px 0 rgba(116, 125, 136, .5), \r\n    inset -4px -4px 6px 0 rgba(255,255,255,.2),\r\n    inset 4px 4px 6px 0 rgba(0, 0, 0, .4);\r\n}\r\n\r\n\r\n/* 3 */\r\n.btn-3 {\r\n  background: rgb(0,172,238);\r\nbackground: linear-gradient(0deg, rgba(0,172,238,1) 0%, rgba(2,126,251,1) 100%);\r\n  width: 130px;\r\n  height: 40px;\r\n  line-height: 42px;\r\n  padding: 0;\r\n  border: none;\r\n  \r\n}\r\n.btn-3 span {\r\n  position: relative;\r\n  display: block;\r\n  width: 100%;\r\n  height: 100%;\r\n}\r\n.btn-3:before,\r\n.btn-3:after {\r\n  position: absolute;\r\n  content: \"\";\r\n  right: 0;\r\n  top: 0;\r\n   background: rgba(2,126,251,1);\r\n  transition: all 0.3s ease;\r\n}\r\n.btn-3:before {\r\n  height: 0%;\r\n  width: 2px;\r\n}\r\n.btn-3:after {\r\n  width: 0%;\r\n  height: 2px;\r\n}\r\n.btn-3:hover{\r\n   background: transparent;\r\n  box-shadow: none;\r\n}\r\n.btn-3:hover:before {\r\n  height: 100%;\r\n}\r\n.btn-3:hover:after {\r\n  width: 100%;\r\n}\r\n.btn-3 span:hover{\r\n   color: rgba(2,126,251,1);\r\n}\r\n.btn-3 span:before,\r\n.btn-3 span:after {\r\n  position: absolute;\r\n  content: \"\";\r\n  left: 0;\r\n  bottom: 0;\r\n   background: rgba(2,126,251,1);\r\n  transition: all 0.3s ease;\r\n}\r\n.btn-3 span:before {\r\n  width: 2px;\r\n  height: 0%;\r\n}\r\n.btn-3 span:after {\r\n  width: 0%;\r\n  height: 2px;\r\n}\r\n.btn-3 span:hover:before {\r\n  height: 100%;\r\n}\r\n.btn-3 span:hover:after {\r\n  width: 100%;\r\n}\r\n\r\n/* 4 */\r\n.btn-4 {\r\n  background-color: #4dccc6;\r\nbackground-image: linear-gradient(315deg, #4dccc6 0%, #96e4df 74%);\r\n  line-height: 42px;\r\n  padding: 0;\r\n  border: none;\r\n}\r\n.btn-4:hover{\r\n  background-color: #89d8d3;\r\nbackground-image: linear-gradient(315deg, #89d8d3 0%, #03c8a8 74%);\r\n}\r\n.btn-4 span {\r\n  position: relative;\r\n  display: block;\r\n  width: 100%;\r\n  height: 100%;\r\n}\r\n.btn-4:before,\r\n.btn-4:after {\r\n  position: absolute;\r\n  content: \"\";\r\n  right: 0;\r\n  top: 0;\r\n   box-shadow:  4px 4px 6px 0 rgba(255,255,255,.9),\r\n              -4px -4px 6px 0 rgba(116, 125, 136, .2), \r\n    inset -4px -4px 6px 0 rgba(255,255,255,.9),\r\n    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);\r\n  transition: all 0.3s ease;\r\n}\r\n.btn-4:before {\r\n  height: 0%;\r\n  width: .1px;\r\n}\r\n.btn-4:after {\r\n  width: 0%;\r\n  height: .1px;\r\n}\r\n.btn-4:hover:before {\r\n  height: 100%;\r\n}\r\n.btn-4:hover:after {\r\n  width: 100%;\r\n}\r\n.btn-4 span:before,\r\n.btn-4 span:after {\r\n  position: absolute;\r\n  content: \"\";\r\n  left: 0;\r\n  bottom: 0;\r\n  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.9),\r\n              -4px -4px 6px 0 rgba(116, 125, 136, .2), \r\n    inset -4px -4px 6px 0 rgba(255,255,255,.9),\r\n    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);\r\n  transition: all 0.3s ease;\r\n}\r\n.btn-4 span:before {\r\n  width: .1px;\r\n  height: 0%;\r\n}\r\n.btn-4 span:after {\r\n  width: 0%;\r\n  height: .1px;\r\n}\r\n.btn-4 span:hover:before {\r\n  height: 100%;\r\n}\r\n.btn-4 span:hover:after {\r\n  width: 100%;\r\n}\r\n\r\n/* 5 */\r\n.btn-5 {\r\n  width: 130px;\r\n  height: 40px;\r\n  line-height: 42px;\r\n  padding: 0;\r\n  border: none;\r\n  background: rgb(255,27,0);\r\nbackground: linear-gradient(0deg, rgba(255,27,0,1) 0%, rgba(251,75,2,1) 100%);\r\n}\r\n.btn-5:hover {\r\n  color: #f0094a;\r\n  background: transparent;\r\n   box-shadow:none;\r\n}\r\n.btn-5:before,\r\n.btn-5:after{\r\n  content:\'\';\r\n  position:absolute;\r\n  top:0;\r\n  right:0;\r\n  height:2px;\r\n  width:0;\r\n  background: #f0094a;\r\n  box-shadow:\r\n   -1px -1px 5px 0px #fff,\r\n   7px 7px 20px 0px #0003,\r\n   4px 4px 5px 0px #0002;\r\n  transition:400ms ease all;\r\n}\r\n.btn-5:after{\r\n  right:inherit;\r\n  top:inherit;\r\n  left:0;\r\n  bottom:0;\r\n}\r\n.btn-5:hover:before,\r\n.btn-5:hover:after{\r\n  width:100%;\r\n  transition:800ms ease all;\r\n}\r\n\r\n\r\n/* 6 */\r\n.btn-6 {\r\n  background: rgb(247,150,192);\r\nbackground: radial-gradient(circle, rgba(247,150,192,1) 0%, rgba(118,174,241,1) 100%);\r\n  line-height: 42px;\r\n  padding: 0;\r\n  border: none;\r\n}\r\n.btn-6 span {\r\n  position: relative;\r\n  display: block;\r\n  width: 100%;\r\n  height: 100%;\r\n}\r\n.btn-6:before,\r\n.btn-6:after {\r\n  position: absolute;\r\n  content: \"\";\r\n  height: 0%;\r\n  width: 1px;\r\n box-shadow:\r\n   -1px -1px 20px 0px rgba(255,255,255,1),\r\n   -4px -4px 5px 0px rgba(255,255,255,1),\r\n   7px 7px 20px 0px rgba(0,0,0,.4),\r\n   4px 4px 5px 0px rgba(0,0,0,.3);\r\n}\r\n.btn-6:before {\r\n  right: 0;\r\n  top: 0;\r\n  transition: all 500ms ease;\r\n}\r\n.btn-6:after {\r\n  left: 0;\r\n  bottom: 0;\r\n  transition: all 500ms ease;\r\n}\r\n.btn-6:hover{\r\n  background: transparent;\r\n  color: #76aef1;\r\n  box-shadow: none;\r\n}\r\n.btn-6:hover:before {\r\n  transition: all 500ms ease;\r\n  height: 100%;\r\n}\r\n.btn-6:hover:after {\r\n  transition: all 500ms ease;\r\n  height: 100%;\r\n}\r\n.btn-6 span:before,\r\n.btn-6 span:after {\r\n  position: absolute;\r\n  content: \"\";\r\n  box-shadow:\r\n   -1px -1px 20px 0px rgba(255,255,255,1),\r\n   -4px -4px 5px 0px rgba(255,255,255,1),\r\n   7px 7px 20px 0px rgba(0,0,0,.4),\r\n   4px 4px 5px 0px rgba(0,0,0,.3);\r\n}\r\n.btn-6 span:before {\r\n  left: 0;\r\n  top: 0;\r\n  width: 0%;\r\n  height: .5px;\r\n  transition: all 500ms ease;\r\n}\r\n.btn-6 span:after {\r\n  right: 0;\r\n  bottom: 0;\r\n  width: 0%;\r\n  height: .5px;\r\n  transition: all 500ms ease;\r\n}\r\n.btn-6 span:hover:before {\r\n  width: 100%;\r\n}\r\n.btn-6 span:hover:after {\r\n  width: 100%;\r\n}\r\n\r\n/* 7 */\r\n.btn-7 {\r\nbackground: linear-gradient(0deg, rgba(255,151,0,1) 0%, rgba(251,75,2,1) 100%);\r\n  line-height: 42px;\r\n  padding: 0;\r\n  border: none;\r\n}\r\n.btn-7 span {\r\n  position: relative;\r\n  display: block;\r\n  width: 100%;\r\n  height: 100%;\r\n}\r\n.btn-7:before,\r\n.btn-7:after {\r\n  position: absolute;\r\n  content: \"\";\r\n  right: 0;\r\n  bottom: 0;\r\n  background: rgba(251,75,2,1);\r\n  box-shadow:\r\n   -7px -7px 20px 0px rgba(255,255,255,.9),\r\n   -4px -4px 5px 0px rgba(255,255,255,.9),\r\n   7px 7px 20px 0px rgba(0,0,0,.2),\r\n   4px 4px 5px 0px rgba(0,0,0,.3);\r\n  transition: all 0.3s ease;\r\n}\r\n.btn-7:before{\r\n   height: 0%;\r\n   width: 2px;\r\n}\r\n.btn-7:after {\r\n  width: 0%;\r\n  height: 2px;\r\n}\r\n.btn-7:hover{\r\n  color: rgba(251,75,2,1);\r\n  background: transparent;\r\n}\r\n.btn-7:hover:before {\r\n  height: 100%;\r\n}\r\n.btn-7:hover:after {\r\n  width: 100%;\r\n}\r\n.btn-7 span:before,\r\n.btn-7 span:after {\r\n  position: absolute;\r\n  content: \"\";\r\n  left: 0;\r\n  top: 0;\r\n  background: rgba(251,75,2,1);\r\n  box-shadow:\r\n   -7px -7px 20px 0px rgba(255,255,255,.9),\r\n   -4px -4px 5px 0px rgba(255,255,255,.9),\r\n   7px 7px 20px 0px rgba(0,0,0,.2),\r\n   4px 4px 5px 0px rgba(0,0,0,.3);\r\n  transition: all 0.3s ease;\r\n}\r\n.btn-7 span:before {\r\n  width: 2px;\r\n  height: 0%;\r\n}\r\n.btn-7 span:after {\r\n  height: 2px;\r\n  width: 0%;\r\n}\r\n.btn-7 span:hover:before {\r\n  height: 100%;\r\n}\r\n.btn-7 span:hover:after {\r\n  width: 100%;\r\n}\r\n\r\n/* 8 */\r\n.btn-8 {\r\n  background-color: #f0ecfc;\r\nbackground-image: linear-gradient(315deg, #f0ecfc 0%, #c797eb 74%);\r\n  line-height: 42px;\r\n  padding: 0;\r\n  border: none;\r\n}\r\n.btn-8 span {\r\n  position: relative;\r\n  display: block;\r\n  width: 100%;\r\n  height: 100%;\r\n}\r\n.btn-8:before,\r\n.btn-8:after {\r\n  position: absolute;\r\n  content: \"\";\r\n  right: 0;\r\n  bottom: 0;\r\n  background: #c797eb;\r\n  /*box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),\r\n              -4px -4px 6px 0 rgba(116, 125, 136, .2), \r\n    inset -4px -4px 6px 0 rgba(255,255,255,.5),\r\n    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);*/\r\n  transition: all 0.3s ease;\r\n}\r\n.btn-8:before{\r\n   height: 0%;\r\n   width: 2px;\r\n}\r\n.btn-8:after {\r\n  width: 0%;\r\n  height: 2px;\r\n}\r\n.btn-8:hover:before {\r\n  height: 100%;\r\n}\r\n.btn-8:hover:after {\r\n  width: 100%;\r\n}\r\n.btn-8:hover{\r\n  background: transparent;\r\n}\r\n.btn-8 span:hover{\r\n  color: #c797eb;\r\n}\r\n.btn-8 span:before,\r\n.btn-8 span:after {\r\n  position: absolute;\r\n  content: \"\";\r\n  left: 0;\r\n  top: 0;\r\n  background: #c797eb;\r\n  /*box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),\r\n              -4px -4px 6px 0 rgba(116, 125, 136, .2), \r\n    inset -4px -4px 6px 0 rgba(255,255,255,.5),\r\n    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);*/\r\n  transition: all 0.3s ease;\r\n}\r\n.btn-8 span:before {\r\n  width: 2px;\r\n  height: 0%;\r\n}\r\n.btn-8 span:after {\r\n  height: 2px;\r\n  width: 0%;\r\n}\r\n.btn-8 span:hover:before {\r\n  height: 100%;\r\n}\r\n.btn-8 span:hover:after {\r\n  width: 100%;\r\n}\r\n  \r\n\r\n/* 9 */\r\n.btn-9 {\r\n  border: none;\r\n  transition: all 0.3s ease;\r\n  overflow: hidden;\r\n}\r\n.btn-9:after {\r\n  position: absolute;\r\n  content: \" \";\r\n  z-index: -1;\r\n  top: 0;\r\n  left: 0;\r\n  width: 100%;\r\n  height: 100%;\r\n   background-color: #1fd1f9;\r\nbackground-image: linear-gradient(315deg, #1fd1f9 0%, #b621fe 74%);\r\n  transition: all 0.3s ease;\r\n}\r\n.btn-9:hover {\r\n  background: transparent;\r\n  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),\r\n              -4px -4px 6px 0 rgba(116, 125, 136, .2), \r\n    inset -4px -4px 6px 0 rgba(255,255,255,.5),\r\n    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);\r\n  color: #fff;\r\n}\r\n.btn-9:hover:after {\r\n  -webkit-transform: scale(2) rotate(180deg);\r\n  transform: scale(2) rotate(180deg);\r\n  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),\r\n              -4px -4px 6px 0 rgba(116, 125, 136, .2), \r\n    inset -4px -4px 6px 0 rgba(255,255,255,.5),\r\n    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);\r\n}\r\n\r\n/* 10 */\r\n.btn-10 {\r\n  background: rgb(22,9,240);\r\nbackground: linear-gradient(0deg, rgba(22,9,240,1) 0%, rgba(49,110,244,1) 100%);\r\n  color: #fff;\r\n  border: none;\r\n  transition: all 0.3s ease;\r\n  overflow: hidden;\r\n}\r\n.btn-10:after {\r\n  position: absolute;\r\n  content: \" \";\r\n  top: 0;\r\n  left: 0;\r\n  z-index: -1;\r\n  width: 100%;\r\n  height: 100%;\r\n  transition: all 0.3s ease;\r\n  -webkit-transform: scale(.1);\r\n  transform: scale(.1);\r\n}\r\n.btn-10:hover {\r\n  color: #fff;\r\n  border: none;\r\n  background: transparent;\r\n}\r\n.btn-10:hover:after {\r\n  background: rgb(0,3,255);\r\nbackground: linear-gradient(0deg, rgba(2,126,251,1) 0%,  rgba(0,3,255,1)100%);\r\n  -webkit-transform: scale(1);\r\n  transform: scale(1);\r\n}\r\n\r\n/* 11 */\r\n.btn-11 {\r\n  border: none;\r\n  background: rgb(251,33,117);\r\n    background: linear-gradient(0deg, rgba(251,33,117,1) 0%, rgba(234,76,137,1) 100%);\r\n    color: #fff;\r\n    overflow: hidden;\r\n}\r\n.btn-11:hover {\r\n    text-decoration: none;\r\n    color: #fff;\r\n}\r\n.btn-11:before {\r\n    position: absolute;\r\n    content: \'\';\r\n    display: inline-block;\r\n    top: -180px;\r\n    left: 0;\r\n    width: 30px;\r\n    height: 100%;\r\n    background-color: #fff;\r\n    animation: shiny-btn1 3s ease-in-out infinite;\r\n}\r\n.btn-11:hover{\r\n  opacity: .7;\r\n}\r\n.btn-11:active{\r\n  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.3),\r\n              -4px -4px 6px 0 rgba(116, 125, 136, .2), \r\n    inset -4px -4px 6px 0 rgba(255,255,255,.2),\r\n    inset 4px 4px 6px 0 rgba(0, 0, 0, .2);\r\n}\r\n\r\n\r\n@-webkit-keyframes shiny-btn1 {\r\n    0% { -webkit-transform: scale(0) rotate(45deg); opacity: 0; }\r\n    80% { -webkit-transform: scale(0) rotate(45deg); opacity: 0.5; }\r\n    81% { -webkit-transform: scale(4) rotate(45deg); opacity: 1; }\r\n    100% { -webkit-transform: scale(50) rotate(45deg); opacity: 0; }\r\n}\r\n\r\n\r\n/* 12 */\r\n.btn-12{\r\n  position: relative;\r\n  right: 20px;\r\n  bottom: 20px;\r\n  border:none;\r\n  box-shadow: none;\r\n  width: 130px;\r\n  height: 40px;\r\n  line-height: 42px;\r\n  -webkit-perspective: 230px;\r\n  perspective: 230px;\r\n}\r\n.btn-12 span {\r\n  background: rgb(0,172,238);\r\nbackground: linear-gradient(0deg, rgba(0,172,238,1) 0%, rgba(2,126,251,1) 100%);\r\n  display: block;\r\n  position: absolute;\r\n  width: 130px;\r\n  height: 40px;\r\n  box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),\r\n   7px 7px 20px 0px rgba(0,0,0,.1),\r\n   4px 4px 5px 0px rgba(0,0,0,.1);\r\n  border-radius: 5px;\r\n  margin:0;\r\n  text-align: center;\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  -webkit-transition: all .3s;\r\n  transition: all .3s;\r\n}\r\n.btn-12 span:nth-child(1) {\r\n  box-shadow:\r\n   -7px -7px 20px 0px #fff9,\r\n   -4px -4px 5px 0px #fff9,\r\n   7px 7px 20px 0px #0002,\r\n   4px 4px 5px 0px #0001;\r\n  -webkit-transform: rotateX(90deg);\r\n  -moz-transform: rotateX(90deg);\r\n  transform: rotateX(90deg);\r\n  -webkit-transform-origin: 50% 50% -20px;\r\n  -moz-transform-origin: 50% 50% -20px;\r\n  transform-origin: 50% 50% -20px;\r\n}\r\n.btn-12 span:nth-child(2) {\r\n  -webkit-transform: rotateX(0deg);\r\n  -moz-transform: rotateX(0deg);\r\n  transform: rotateX(0deg);\r\n  -webkit-transform-origin: 50% 50% -20px;\r\n  -moz-transform-origin: 50% 50% -20px;\r\n  transform-origin: 50% 50% -20px;\r\n}\r\n.btn-12:hover span:nth-child(1) {\r\n  box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),\r\n   7px 7px 20px 0px rgba(0,0,0,.1),\r\n   4px 4px 5px 0px rgba(0,0,0,.1);\r\n  -webkit-transform: rotateX(0deg);\r\n  -moz-transform: rotateX(0deg);\r\n  transform: rotateX(0deg);\r\n}\r\n.btn-12:hover span:nth-child(2) {\r\n  box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),\r\n   7px 7px 20px 0px rgba(0,0,0,.1),\r\n   4px 4px 5px 0px rgba(0,0,0,.1);\r\n color: transparent;\r\n  -webkit-transform: rotateX(-90deg);\r\n  -moz-transform: rotateX(-90deg);\r\n  transform: rotateX(-90deg);\r\n}\r\n\r\n\r\n/* 13 */\r\n.btn-13 {\r\n  background-color: #89d8d3;\r\nbackground-image: linear-gradient(315deg, #89d8d3 0%, #03c8a8 74%);\r\n  border: none;\r\n  z-index: 1;\r\n}\r\n.btn-13:after {\r\n  position: absolute;\r\n  content: \"\";\r\n  width: 100%;\r\n  height: 0;\r\n  bottom: 0;\r\n  left: 0;\r\n  z-index: -1;\r\n  border-radius: 5px;\r\n   background-color: #4dccc6;\r\nbackground-image: linear-gradient(315deg, #4dccc6 0%, #96e4df 74%);\r\n  box-shadow:\r\n   -7px -7px 20px 0px #fff9,\r\n   -4px -4px 5px 0px #fff9,\r\n   7px 7px 20px 0px #0002,\r\n   4px 4px 5px 0px #0001;\r\n  transition: all 0.3s ease;\r\n}\r\n.btn-13:hover {\r\n  color: #fff;\r\n}\r\n.btn-13:hover:after {\r\n  top: 0;\r\n  height: 100%;\r\n}\r\n.btn-13:active {\r\n  top: 2px;\r\n}\r\n\r\n\r\n/* 14 */\r\n.btn-14 {\r\n  background: rgb(255,151,0);\r\n  border: none;\r\n  z-index: 1;\r\n}\r\n.btn-14:after {\r\n  position: absolute;\r\n  content: \"\";\r\n  width: 100%;\r\n  height: 0;\r\n  top: 0;\r\n  left: 0;\r\n  z-index: -1;\r\n  border-radius: 5px;\r\n  background-color: #eaf818;\r\n  background-image: linear-gradient(315deg, #eaf818 0%, #f6fc9c 74%);\r\n   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5);\r\n   7px 7px 20px 0px rgba(0,0,0,.1),\r\n   4px 4px 5px 0px rgba(0,0,0,.1);\r\n  transition: all 0.3s ease;\r\n}\r\n.btn-14:hover {\r\n  color: #000;\r\n}\r\n.btn-14:hover:after {\r\n  top: auto;\r\n  bottom: 0;\r\n  height: 100%;\r\n}\r\n.btn-14:active {\r\n  top: 2px;\r\n}\r\n\r\n/* 15 */\r\n.btn-15 {\r\n  background: #b621fe;\r\n  border: none;\r\n  z-index: 1;\r\n}\r\n.btn-15:after {\r\n  position: absolute;\r\n  content: \"\";\r\n  width: 0;\r\n  height: 100%;\r\n  top: 0;\r\n  right: 0;\r\n  z-index: -1;\r\n  background-color: #663dff;\r\n  border-radius: 5px;\r\n   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),\r\n   7px 7px 20px 0px rgba(0,0,0,.1),\r\n   4px 4px 5px 0px rgba(0,0,0,.1);\r\n  transition: all 0.3s ease;\r\n}\r\n.btn-15:hover {\r\n  color: #fff;\r\n}\r\n.btn-15:hover:after {\r\n  left: 0;\r\n  width: 100%;\r\n}\r\n.btn-15:active {\r\n  top: 2px;\r\n}\r\n\r\n\r\n/* 16 */\r\n.btn-16 {\r\n  border: none;\r\n  color: #000;\r\n}\r\n.btn-16:after {\r\n  position: absolute;\r\n  content: \"\";\r\n  width: 0;\r\n  height: 100%;\r\n  top: 0;\r\n  left: 0;\r\n  direction: rtl;\r\n  z-index: -1;\r\n  box-shadow:\r\n   -7px -7px 20px 0px #fff9,\r\n   -4px -4px 5px 0px #fff9,\r\n   7px 7px 20px 0px #0002,\r\n   4px 4px 5px 0px #0001;\r\n  transition: all 0.3s ease;\r\n}\r\n.btn-16:hover {\r\n  color: #000;\r\n}\r\n.btn-16:hover:after {\r\n  left: auto;\r\n  right: 0;\r\n  width: 100%;\r\n}\r\n.btn-16:active {\r\n  top: 2px;\r\n}'),
(3, 'user.html', 'https://codepen.io/alvaromontoro/pen', '<div class=\"king melchor\">\r\n  <div class=\"cape\"></div>\r\n  <div class=\"body\">\r\n    <div class=\"gift\"></div>\r\n    <div class=\"hands\"></div>\r\n  </div>\r\n  <div class=\"head\">\r\n    <div class=\"beard\"></div>\r\n    <div class=\"crown\"></div>\r\n  </div>\r\n</div>\r\n\r\n<div class=\"king gaspar\">\r\n  <div class=\"cape\"></div>\r\n  <div class=\"body\">\r\n    <div class=\"gift\"></div>\r\n    <div class=\"hands\"></div>\r\n  </div>\r\n  <div class=\"head\">\r\n    <div class=\"beard\"></div>\r\n    <div class=\"crown\"></div>\r\n  </div>\r\n</div>\r\n\r\n<div class=\"king baltasar\">\r\n  <div class=\"cape\"></div>\r\n  <div class=\"body\">\r\n    <div class=\"gift\"></div>\r\n    <div class=\"hands\"></div>\r\n  </div>\r\n  <div class=\"head\">\r\n    <div class=\"beard\"></div>\r\n    <div class=\"crown\"></div>\r\n  </div>\r\n</div>\r\n\r\n<a id=\"youtube\" href=\"https://www.youtube.com/watch?v=abvmapNUZzs\" target=\"_blank\">\r\n  <span>See how this demo was coded</span>\r\n</a>'),
(4, 'user.css', 'https://codepen.io/alvaromontoro/pen', 'body {\r\n  background: #cde;\r\n}\r\n\r\n.king {\r\n  --gift: gold;\r\n  --gift-contrast: orange;\r\n  --eye: brown;\r\n  --mouth: pink;\r\n  --skin: #fca;\r\n  --hair: #fff;\r\n  --robe: #5c7;\r\n  --robe-contrast: #294;\r\n  --cape: #073;\r\n  --cheek: #f003;\r\n  width: 45vmin;\r\n  height: 70vmin;\r\n  position: absolute;\r\n}\r\n\r\n.king * {\r\n  position: absolute;\r\n  box-sizing: border-box;\r\n}\r\n\r\n.body {\r\n  width: 65%;\r\n  height: 70%;\r\n  background:\r\n    /* wrists */ linear-gradient(\r\n        20deg,\r\n        #0000 10%,\r\n        var(--cape) 0 90%,\r\n        #0000 0\r\n      )\r\n      no-repeat 32% 48% / 10% 18%,\r\n    linear-gradient(-20deg, #0000 10%, var(--cape) 0 90%, #0000 0) no-repeat 68%\r\n      48% / 10% 18%,\r\n    /* buttons and middle decoration */\r\n      radial-gradient(circle, var(--cape) 5%, #0000 0) repeat-y 50% 0% / 100%\r\n      10%,\r\n    conic-gradient(\r\n      at 50% -100%,\r\n      #0000 176deg,\r\n      var(--robe) 0 178deg,\r\n      var(--robe-contrast) 178.125deg 181.875deg,\r\n      var(--robe) 182deg 184deg,\r\n      #0000 0\r\n    ),\r\n    /* arms */\r\n      radial-gradient(\r\n        90% 90% at 50% 0%,\r\n        #0000 50%,\r\n        var(--robe-contrast) 0 65%,\r\n        #0000 0\r\n      );\r\n  background-color: var(--robe);\r\n  position: absolute;\r\n  bottom: 0;\r\n  left: 50%;\r\n  transform: translate(-50%, 0);\r\n  border-radius: 100% / 200% 200% 10% 10%;\r\n}\r\n\r\n.cape {\r\n  width: 85%;\r\n  height: 65%;\r\n  background-color: var(--cape);\r\n  position: absolute;\r\n  bottom: 5%;\r\n  left: 50%;\r\n  transform: translate(-50%, 0);\r\n  border-radius: 100% / 200% 200% 5% 5%;\r\n}\r\n\r\n.hands {\r\n  width: 26%;\r\n  height: 18%;\r\n  background: radial-gradient(\r\n      farthest-side at 0% 20%,\r\n      var(--skin) 50%,\r\n      #0000 51%\r\n    ),\r\n    radial-gradient(farthest-side at 100% 20%, var(--skin) 50%, #0000 51%);\r\n  top: 38%;\r\n  left: 50%;\r\n  transform: translate(-50%, 0);\r\n  border-radius: 50%;\r\n}\r\n\r\n.gift {\r\n  width: 20%;\r\n  height: 15%;\r\n  background: linear-gradient(var(--gift-contrast) 0 0) 50% 100% / 100% 65%,\r\n    radial-gradient(var(--gift) 50%, #0000 0);\r\n  background-repeat: no-repeat;\r\n  top: 28%;\r\n  left: 50%;\r\n  transform: translateX(-50%);\r\n}\r\n\r\n.head {\r\n  width: 35%;\r\n  height: 25%;\r\n  border-radius: 50%;\r\n  background:\r\n    /* eyes */ radial-gradient(\r\n      circle at 31.5% 45%,\r\n      #fff 1.5%,\r\n      #0000 2%\r\n    ),\r\n    radial-gradient(circle at 65.5% 45%, #fff 1.5%, #0000 2%),\r\n    radial-gradient(circle at 33% 47%, var(--eye) 5%, #0000 6%),\r\n    radial-gradient(circle at 67% 47%, var(--eye) 5%, #0000 6%),\r\n    radial-gradient(circle at 50% 110%, #0000 25%, var(--hair) 0 38%, #0000 0)\r\n      25% 18% / 28% 25%,\r\n    radial-gradient(circle at 50% 110%, #0000 25%, var(--hair) 0 38%, #0000 0)\r\n      75% 18% / 28% 25%,\r\n    /* cheeks */\r\n      radial-gradient(190% 100% at 22% 55.5%, var(--cheek) 4%, #0000 4.5%),\r\n    radial-gradient(190% 100% at 78% 55.5%, var(--cheek) 4%, #0000 4.5%),\r\n    /* hair */ radial-gradient(circle at 50% 10%, var(--hair) 15%, #0000 16%),\r\n    radial-gradient(circle at 18% 8%, var(--hair) 13%, #0000 13.5%),\r\n    radial-gradient(circle at 82% 12%, var(--hair) 10%, #0000 10.5%),\r\n    radial-gradient(circle at 70% 15%, var(--hair) 5%, #0000 5.5%),\r\n    radial-gradient(circle at 70% 0%, var(--hair) 15%, #0000 5.5%),\r\n    radial-gradient(100% 50% at 50% 100%, var(--hair) 66%, #0000 16%),\r\n    radial-gradient(circle at 0% 51%, var(--hair) 8%, #0000 0),\r\n    radial-gradient(circle at 3% 43%, var(--hair) 6%, #0000 0),\r\n    radial-gradient(100% 100% at 5% 29%, var(--hair) 10%, #0000 0),\r\n    radial-gradient(circle at 100% 51%, var(--hair) 6%, #0000 0),\r\n    radial-gradient(circle at 98% 43%, var(--hair) 8%, #0000 0),\r\n    radial-gradient(100% 100% at 95% 29%, var(--hair) 10%, #0000 0);\r\n  background-repeat: no-repeat;\r\n  background-color: var(--skin);\r\n  top: 10%;\r\n  left: 50%;\r\n  transform: translateX(-50%);\r\n  box-shadow: -7vmin -2vmin 0 -5vmin var(--hair),\r\n    7.5vmin -1vmin 0 -6vmin var(--hair), 7vmin -4vmin 0 -6.5vmin var(--hair);\r\n}\r\n\r\n.beard {\r\n  width: 120%;\r\n  height: 60%;\r\n  bottom: -20%;\r\n  left: -10%;\r\n  background:\r\n    /* mouth */ radial-gradient(\r\n        circle at 50% 0%,\r\n        var(--mouth) 20%,\r\n        #0000 22%\r\n      )\r\n      50% 35% / 60% 30%,\r\n    /* mustache */\r\n      radial-gradient(circle at 38.5% 22%, var(--hair) 16%, #0000 17%),\r\n    radial-gradient(circle at 20% 0%, var(--skin) 10%, #0000 11%),\r\n    radial-gradient(circle at 15% 20%, var(--hair) 13%, #0000 14%),\r\n    radial-gradient(circle at 61.5% 22%, var(--hair) 16%, #0000 17%),\r\n    radial-gradient(circle at 80% 0%, var(--skin) 10%, #0000 11%),\r\n    radial-gradient(circle at 85% 20%, var(--hair) 13%, #0000 14%),\r\n    /* beard */ radial-gradient(circle at 50% 80%, var(--hair) 15%, #0000 16%),\r\n    radial-gradient(circle at 35% 70%, var(--hair) 15%, #0000 16%),\r\n    radial-gradient(circle at 63% 70%, var(--hair) 14%, #0000 15%),\r\n    radial-gradient(circle at 20% 50%, var(--hair) 13%, #0000 14%),\r\n    radial-gradient(circle at 75% 60%, var(--hair) 8%, #0000 9%),\r\n    radial-gradient(circle at 80% 45%, var(--hair) 11%, #0000 12%);\r\n  background-repeat: no-repeat;\r\n}\r\n\r\n.crown {\r\n  width: 100%;\r\n  height: 60%;\r\n  top: -39%;\r\n  left: 0;\r\n  background: radial-gradient(\r\n    200% 100% at 50% 110%,\r\n    gold 35%,\r\n    orange 36% 95%,\r\n    #f83 96%\r\n  );\r\n  clip-path: polygon(\r\n    0 10%,\r\n    20% 45%,\r\n    23% 5%,\r\n    40% 40%,\r\n    50% 0%,\r\n    60% 40%,\r\n    77% 5%,\r\n    80% 45%,\r\n    100% 10%,\r\n    90% 100%,\r\n    10% 100%\r\n  );\r\n  -webkit-mask: radial-gradient(200% 50% at 50% 110%, #0000 35%, #000 36%);\r\n  mask: radial-gradient(200% 50% at 50% 110%, #0000 35%, #000 36%);\r\n}\r\n\r\n.melchor {\r\n  z-index: 3;\r\n  bottom: 10%;\r\n  left: 50%;\r\n  transform: translateX(-50%);\r\n}\r\n\r\n.gaspar {\r\n  --gift: indianred;\r\n  --gift-contrast: maroon;\r\n  --cape: #8e806a;\r\n  --robe: #c3b091;\r\n  --robe-contrast: #e4cda7;\r\n  --eye: #321;\r\n  --skin: #e96;\r\n  --hair: brown;\r\n  z-index: 2;\r\n  bottom: 15%;\r\n  left: 50%;\r\n  transform: scale(0.9) translateX(-120%);\r\n}\r\n\r\n.gaspar .body {\r\n  --cape: #9e907a;\r\n}\r\n\r\n.gaspar .head {\r\n  box-shadow: -0.5vmin 0.75vmin 0 0.25vmin var(--hair),\r\n    0.5vmin 0.5vmin 0 0.25vmin var(--hair);\r\n}\r\n\r\n.gaspar .crown {\r\n  clip-path: polygon(\r\n    0% 10%,\r\n    30% 40%,\r\n    50% 0%,\r\n    70% 40%,\r\n    100% 10%,\r\n    90% 100%,\r\n    10% 100%\r\n  );\r\n}\r\n\r\n.gaspar .crown::before {\r\n  content: \"\";\r\n  position: absolute;\r\n  top: 20%;\r\n  left: 0;\r\n  width: 100%;\r\n  height: 50%;\r\n  background: radial-gradient(circle, green 10%, #0000 11%),\r\n    radial-gradient(circle at 15% 60%, #d00 5%, #0000 6%),\r\n    radial-gradient(circle at 85% 60%, #d00 5%, #0000 6%);\r\n}\r\n\r\n.baltasar {\r\n  --gift: orange;\r\n  --gift-contrast: gold;\r\n  --cape: #6e3cbc;\r\n  --robe: #7267cb;\r\n  --robe-contrast: #a89ad7;\r\n  --eye: #321;\r\n  --skin: #963;\r\n  --hair: #321;\r\n  --cheek: #8308;\r\n  --mouth: #faaa;\r\n  z-index: 2;\r\n  bottom: 15%;\r\n  left: 50%;\r\n  transform: scale(0.9) translateX(10%);\r\n}\r\n\r\n.baltasar .head {\r\n  width: 34%;\r\n  box-shadow: -8vmin 0.5vmin 0 -6.5vmin var(--hair),\r\n    8vmin 0.5vmin 0 -6.5vmin var(--hair), -6.5vmin -4vmin 0 -7vmin var(--hair),\r\n    6.5vmin -4vmin 0 -7vmin var(--hair), 6vmin -1.5vmin 0 -5vmin var(--hair),\r\n    -0.75vmin 0.75vmin 0 0.25vmin var(--hair),\r\n    0.5vmin 0.5vmin 0 0.25vmin var(--hair);\r\n}\r\n\r\n.baltasar .crown::before {\r\n  content: \"\";\r\n  position: absolute;\r\n  top: 20%;\r\n  left: 0;\r\n  width: 100%;\r\n  height: 50%;\r\n  background: radial-gradient(circle at 50% 60%, gold 10%, #0000 11%),\r\n    radial-gradient(circle at 30% 65%, darkorange 4%, #0000 5%),\r\n    radial-gradient(circle at 70% 65%, darkorange 4%, #0000 5%),\r\n    radial-gradient(circle at 12% 75%, gold 3%, #0000 4%),\r\n    radial-gradient(circle at 88% 75%, gold 3%, #0000 4%);\r\n}\r\n\r\n/***/\r\n\r\n#youtube {\r\n  z-index: 2;\r\n  display: block;\r\n  width: 100px;\r\n  height: 70px;\r\n  position: absolute;\r\n  top: 20px;\r\n  right: 20px;\r\n  background: red;\r\n  border-radius: 50% / 11%;\r\n  transition: transform 0.5s;\r\n}\r\n\r\n#youtube:hover,\r\n#youtube:focus {\r\n  transform: scale(1.1);\r\n}\r\n\r\n#youtube::before {\r\n  content: \"\";\r\n  display: block;\r\n  position: absolute;\r\n  top: 7.5%;\r\n  left: -6%;\r\n  width: 112%;\r\n  height: 85%;\r\n  background: red;\r\n  border-radius: 9% / 50%;\r\n}\r\n\r\n#youtube::after {\r\n  content: \"\";\r\n  display: block;\r\n  position: absolute;\r\n  top: 20px;\r\n  left: 40px;\r\n  width: 45px;\r\n  height: 30px;\r\n  border: 15px solid transparent;\r\n  box-sizing: border-box;\r\n  border-left: 30px solid white;\r\n}\r\n\r\n#youtube span {\r\n  font-size: 0;\r\n  position: absolute;\r\n  width: 0;\r\n  height: 0;\r\n  overflow: hidden;\r\n}\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `Reciver_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `date_time`, `Reciver_id`, `manager_id`) VALUES
(3, 1, '2021-11-17 23:44:13', 2, 2),
(6, 1, '2022-01-18 11:43:16', 100, 2),
(7, 1, '2022-01-17 11:46:58', 4, 4),
(8, 100, '2022-01-07 11:54:44', 4, 4),
(5050, 100, '2022-01-19 13:50:00', 4, 4),
(10000, 100, '2022-01-03 13:54:00', 4, 4),
(20000, 1, '2022-01-11 13:56:00', 4, 4),
(20001, 1, '2022-01-11 13:56:00', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `payment_detaild`
--

CREATE TABLE `payment_detaild` (
  `id` int(11) NOT NULL,
  `pay_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_type_id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Qun_type_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `payment_type_options_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_detaild`
--

INSERT INTO `payment_detaild` (`id`, `pay_id`, `user_id`, `pay_type_id`, `Quantity`, `Qun_type_id`, `status`, `payment_type_options_id`) VALUES
(1, 3, 4, 5, 2000, 5, 1, 0),
(5, 3, 4, 2, 100, 5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_options`
--

CREATE TABLE `payment_options` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `type` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_options`
--

INSERT INTO `payment_options` (`id`, `name`, `type`) VALUES
(1, 'payoption1', 'money'),
(2, 'payoption2', 'card'),
(3, 'payoption3', 'fawrey'),
(4, 'payoption4', 'visa');

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `pr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`id`, `type`, `pr_id`) VALUES
(1, 'Fawry', 0),
(2, 'Vodafone Cash', 0),
(3, 'Visa', 0),
(4, 'Cash', 0),
(5, 'cheque', 0),
(6, 'Other', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_type_options`
--

CREATE TABLE `payment_type_options` (
  `id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_type_options`
--

INSERT INTO `payment_type_options` (`id`, `option_id`, `payment_type_id`, `pr_id`) VALUES
(1, 1, 3, 0),
(2, 3, 3, 0),
(3, 2, 2, 0),
(4, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `voln_manager_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_create` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `manager_id`, `voln_manager_id`, `user_id`, `is_create`, `is_delete`) VALUES
(6, 4, 100, 2, 1, 0),
(7, 4, 100, 4, 1, 0),
(8, 1, 100, 1, 1, 0),
(9, 100, 1, 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `program_details`
--

CREATE TABLE `program_details` (
  `id` int(11) NOT NULL,
  `pro_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Num_pationt` int(11) NOT NULL,
  `Num_volenteer` int(11) NOT NULL,
  `startdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `enddate` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_create` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program_details`
--

INSERT INTO `program_details` (`id`, `pro_type_id`, `user_id`, `Num_pationt`, `Num_volenteer`, `startdate`, `enddate`, `is_create`, `is_delete`) VALUES
(2, 5, 2, 66, 30, '2017-11-30 21:32:29', '2018-11-25 21:32:29', 0, 0),
(5, 1, 4, 663, 150, '2021-11-03 21:36:51', '2027-11-18 21:36:51', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `program_options`
--

CREATE TABLE `program_options` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `type` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program_options`
--

INSERT INTO `program_options` (`id`, `name`, `type`) VALUES
(1, 'program1', 'food'),
(2, 'program2', 'money'),
(3, 'program3', 'clothes'),
(4, 'program4', 'blood');

-- --------------------------------------------------------

--
-- Table structure for table `program_type`
--

CREATE TABLE `program_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `pr_id` int(11) NOT NULL,
  `is_create` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program_type`
--

INSERT INTO `program_type` (`id`, `type`, `pr_id`, `is_create`, `is_delete`) VALUES
(1, 'Food', 0, 0, 0),
(2, 'Blood', 0, 0, 0),
(3, 'Eid outfit', 0, 0, 0),
(4, 'Blankets', 0, 0, 0),
(5, 'Housing', 0, 0, 0),
(6, 'Mony', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `program_type_options`
--

CREATE TABLE `program_type_options` (
  `id` int(11) NOT NULL,
  `program_type_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program_type_options`
--

INSERT INTO `program_type_options` (`id`, `program_type_id`, `option_id`, `pr_id`) VALUES
(1, 2, 1, 0),
(2, 3, 2, 0),
(3, 3, 3, 0),
(4, 1, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quantity_type`
--

CREATE TABLE `quantity_type` (
  `type` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL,
  `is_create` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quantity_type`
--

INSERT INTO `quantity_type` (`type`, `id`, `pr_id`, `is_create`, `is_delete`) VALUES
('Kg', 1, 0, 0, 0),
('Liter', 2, 0, 0, 0),
('Ton', 3, 0, 0, 0),
('M/L', 4, 0, 0, 0),
('$', 5, 0, 0, 0),
('eg', 6, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thems`
--

CREATE TABLE `thems` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `html_thems` varchar(222) NOT NULL,
  `pr_id` int(11) NOT NULL,
  `posation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thems`
--

INSERT INTO `thems` (`id`, `name`, `html_thems`, `pr_id`, `posation_id`) VALUES
(1, 'HR', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\r\n<head>\r\n<meta content=\"text/html; charset=utf-8\" htt', 2, 3),
(2, 'Admin', '<div class=\"cards\">\r\n\r\n	<article class=\"information [ card ]\">\r\n		<span class=\"tag\">Feature</span>\r\n		<h2 class=\"title\">Never miss your important meetings</h2>\r\n		<p class=\"info\">Elemenatary tracks all the events for the d', 0, 2),
(3, 'fnantial_manager', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\r\n<head>\r\n<meta content=\"text/html; charset=utf-8\" htt', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `translation`
--

CREATE TABLE `translation` (
  `id` int(11) NOT NULL,
  `trans_name` varchar(222) NOT NULL,
  `frist_code` int(222) NOT NULL,
  `scound_code` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translation`
--

INSERT INTO `translation` (`id`, `trans_name`, `frist_code`, `scound_code`) VALUES
(1, 'to Arabic', 2, 1),
(2, 'to English', 3, 2),
(3, 'to Spanish', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `translation_detaild`
--

CREATE TABLE `translation_detaild` (
  `id` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `word_id` int(11) NOT NULL,
  `trans_word_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translation_detaild`
--

INSERT INTO `translation_detaild` (`id`, `trans_id`, `word_id`, `trans_word_id`) VALUES
(1, 1, 2, 2),
(2, 3, 1, 2),
(3, 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_address_id` int(11) NOT NULL,
  `passwoerd` varchar(20) NOT NULL,
  `Dateofbarht` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Fname`, `Lname`, `email`, `user_type_id`, `user_address_id`, `passwoerd`, `Dateofbarht`) VALUES
(1, 'abdullah ', 'amin', 'abdullah.amin@gmail.com', 1, 3, '1234', '2014-09-09 23:04:28'),
(2, 'mmmmmmmm', 'el badawi', 'zeyad.el badawi@gmail.com', 4, 4, '455', '2012-05-17 23:04:28'),
(4, 'ahmad', 'tareq', 'ahmad.tareq@hotmail.com', 5, 4, '771', '2009-11-01 23:11:28'),
(100, 'abdullah ', 'amin', 'abdullah.amin@gmail.com', 5, 1, '123', '2021-11-02 21:26:20'),
(15050, 'Abdullah', 'Madi', 'abdullah.amin@msa.edu.eg', 2, 2, '000', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `Pr_id` int(11) NOT NULL,
  `is_create` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `type`, `Pr_id`, `is_create`, `is_delete`) VALUES
(1, 'Admin', 0, 0, 0),
(2, 'Donor', 0, 0, 0),
(3, 'Volunteer', 0, 0, 0),
(4, 'Employee', 0, 0, 0),
(5, 'HR', 0, 0, 0),
(6, 'Manager of volunteer', 0, 0, 0),
(7, 'warehouse Manager', 0, 0, 0),
(8, 'Patient', 0, 0, 0),
(9, 'Financial Manager\r\n', 0, 0, 0),
(1000, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_type_page`
--

CREATE TABLE `user_type_page` (
  `id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `order_value` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `word`
--

CREATE TABLE `word` (
  `id` int(11) NOT NULL,
  `word` varchar(222) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `word`
--

INSERT INTO `word` (`id`, `word`, `language_id`) VALUES
(1, 'مرحبا', 1),
(2, 'welcome', 2),
(3, 'Hola', 3),
(4, 'Bonjour', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city_address`
--
ALTER TABLE `city_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customized_reports`
--
ALTER TABLE `customized_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reciver_id` (`reciver_id`,`manager_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `donation_details`
--
ALTER TABLE `donation_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Don_id` (`Don_id`,`user_id`,`Qun_type_id`,`Don_type_id`,`py_type_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `Qun_type_id` (`Qun_type_id`),
  ADD KEY `Don_type_id` (`Don_type_id`),
  ADD KEY `py_type_id` (`py_type_id`),
  ADD KEY `Don_id_2` (`Don_id`);

--
-- Indexes for table `donation_options`
--
ALTER TABLE `donation_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation_type`
--
ALTER TABLE `donation_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation_type_options`
--
ALTER TABLE `donation_type_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_type`
--
ALTER TABLE `file_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `massenger`
--
ALTER TABLE `massenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_type`
--
ALTER TABLE `message_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_Type_id` (`user_id`,`Reciver_id`),
  ADD KEY `Don_type_id` (`manager_id`),
  ADD KEY `Reciver_id` (`Reciver_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `Reciver_id_2` (`Reciver_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `payment_detaild`
--
ALTER TABLE `payment_detaild`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_id` (`pay_id`,`user_id`,`pay_type_id`,`Qun_type_id`),
  ADD KEY `pay_id_2` (`pay_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pay_type_id` (`pay_type_id`),
  ADD KEY `Qun_type_id` (`Qun_type_id`);

--
-- Indexes for table `payment_options`
--
ALTER TABLE `payment_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_type_options`
--
ALTER TABLE `payment_type_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manager_id` (`manager_id`,`voln_manager_id`),
  ADD KEY `manager_id_2` (`manager_id`),
  ADD KEY `voln_manager_id` (`voln_manager_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `program_details`
--
ALTER TABLE `program_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_type_id` (`pro_type_id`,`user_id`),
  ADD KEY `pro_type_id_2` (`pro_type_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `program_options`
--
ALTER TABLE `program_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_type`
--
ALTER TABLE `program_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_type_options`
--
ALTER TABLE `program_type_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quantity_type`
--
ALTER TABLE `quantity_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thems`
--
ALTER TABLE `thems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translation`
--
ALTER TABLE `translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translation_detaild`
--
ALTER TABLE `translation_detaild`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_Type_id` (`user_type_id`),
  ADD KEY `user_address_id` (`user_address_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_type_page`
--
ALTER TABLE `user_type_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city_address`
--
ALTER TABLE `city_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customized_reports`
--
ALTER TABLE `customized_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;

--
-- AUTO_INCREMENT for table `donation_details`
--
ALTER TABLE `donation_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `donation_options`
--
ALTER TABLE `donation_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donation_type`
--
ALTER TABLE `donation_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `donation_type_options`
--
ALTER TABLE `donation_type_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `file_type`
--
ALTER TABLE `file_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `massenger`
--
ALTER TABLE `massenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message_type`
--
ALTER TABLE `message_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20002;

--
-- AUTO_INCREMENT for table `payment_detaild`
--
ALTER TABLE `payment_detaild`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_options`
--
ALTER TABLE `payment_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_type_options`
--
ALTER TABLE `payment_type_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `program_details`
--
ALTER TABLE `program_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `program_options`
--
ALTER TABLE `program_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `program_type`
--
ALTER TABLE `program_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `program_type_options`
--
ALTER TABLE `program_type_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quantity_type`
--
ALTER TABLE `quantity_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `thems`
--
ALTER TABLE `thems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translation`
--
ALTER TABLE `translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translation_detaild`
--
ALTER TABLE `translation_detaild`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15052;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `user_type_page`
--
ALTER TABLE `user_type_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `word`
--
ALTER TABLE `word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_ibfk_3` FOREIGN KEY (`reciver_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donation_details`
--
ALTER TABLE `donation_details`
  ADD CONSTRAINT `donation_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_details_ibfk_2` FOREIGN KEY (`Qun_type_id`) REFERENCES `quantity_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_details_ibfk_3` FOREIGN KEY (`Don_id`) REFERENCES `donation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_details_ibfk_4` FOREIGN KEY (`Don_type_id`) REFERENCES `donation_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_details_ibfk_5` FOREIGN KEY (`py_type_id`) REFERENCES `payment_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`Reciver_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`manager_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_detaild`
--
ALTER TABLE `payment_detaild`
  ADD CONSTRAINT `payment_detaild_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_detaild_ibfk_2` FOREIGN KEY (`pay_id`) REFERENCES `payment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_detaild_ibfk_3` FOREIGN KEY (`pay_type_id`) REFERENCES `payment_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_detaild_ibfk_4` FOREIGN KEY (`Qun_type_id`) REFERENCES `quantity_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `program_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `program_ibfk_3` FOREIGN KEY (`voln_manager_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `program_details`
--
ALTER TABLE `program_details`
  ADD CONSTRAINT `program_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `program_details_ibfk_2` FOREIGN KEY (`pro_type_id`) REFERENCES `program_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`user_address_id`) REFERENCES `city_address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
