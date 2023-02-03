-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2023 at 01:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot-sub-zero`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `adminid` varchar(16) NOT NULL COMMENT 'Admin Id',
  `cname` varchar(100) NOT NULL COMMENT 'Company Name',
  `pass` varchar(100) NOT NULL COMMENT 'Admin Password',
  `email` varchar(100) NOT NULL COMMENT 'Admin EMail',
  `phone` varchar(13) NOT NULL,
  `clogo` varchar(100) DEFAULT NULL COMMENT 'Company Logo',
  `tuser` int(11) DEFAULT NULL COMMENT 'Total User',
  `tdevices` int(10) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`adminid`, `cname`, `pass`, `email`, `phone`, `clogo`, `tuser`, `tdevices`, `address`, `city`, `state`, `zip`) VALUES
('gdbd6dj35suwk267', 'Thinkfinity Labs', '123', 'thinkfinitylabs@gmial.com', '', '', 1, 1, '', '', '', ''),
('LHbd6dj35suwk269', 'Test', '123', 'test@gmail.com', '', '', 0, 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `device_info`
--

CREATE TABLE `device_info` (
  `adminid` varchar(16) NOT NULL,
  `uid` varchar(16) DEFAULT NULL COMMENT 'User Id',
  `deviceid` varchar(16) NOT NULL COMMENT 'Device Id',
  `dname` varchar(100) NOT NULL COMMENT 'Device Name',
  `dstate` int(11) DEFAULT NULL COMMENT 'Device State',
  `temp` int(11) DEFAULT NULL COMMENT 'Temperature',
  `dt` int(11) DEFAULT NULL COMMENT 'Delta t',
  `mstate` varchar(11) DEFAULT NULL COMMENT 'Master State',
  `delay_timer` int(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL COMMENT 'Device Installation Address',
  `city` varchar(100) DEFAULT NULL COMMENT 'Device Installation City',
  `state` varchar(100) DEFAULT NULL COMMENT 'Device Installation State',
  `pincode` varchar(100) DEFAULT NULL COMMENT 'Device Installation Pincode'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device_info`
--

INSERT INTO `device_info` (`adminid`, `uid`, `deviceid`, `dname`, `dstate`, `temp`, `dt`, `mstate`, `delay_timer`, `address`, `city`, `state`, `pincode`) VALUES
('gdbd6dj35suwk267', '3NPVK65VRI4NONLH', 'Geiw3kdjedhr32', 'hello', 1, 50, 9, 'off', 0, 'Near - Central Bank of India, Raja Bazar, Medhawal Road, Purani Basti, Basti, U.P.', 'Basti', 'Choose...', '272002'),
('gdbd6dj35suwk267', '3NPVK65VRI4NONLH', 'Heiw3kdjedhr36', 'IotPlc', 1, 0, 0, 'on', 0, '4, Opt BSF Bus Stop, Baglur Main Rd, Niranthara Layout, Santhur Village, Bengaluru', 'Bengaluru', 'Karnataka', '56063'),
('gdbd6dj35suwk267', '3NPVK65VRI4NONLH', 'Leiw3kd86dhr36', 'Aurduino', 0, 0, 0, '0', 0, 'xyz', 'Bengaluru', 'Karnataka', '56063'),
('LHbd6dj35suwk269', 'XNF65U110FJ8A9XG', 'Ljiw3kdjedhr32', 'new device test', 0, 0, 0, '0', 0, 'xyz', 'Bengaluru', 'Karnataka', '56063'),
('gdbd6dj35suwk267', '8G9L919TTYFPPA39', 'TEiw3kdjedhr36', 'Test', 0, 0, 0, 'off', 0, '4, Opt BSF Bus Stop, Baglur Main Rd, Niranthara Layout, Santhur Village, Bengaluru', 'Bengaluru', 'Karnataka', '56063');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `uid` varchar(16) NOT NULL COMMENT 'User Id',
  `uname` varchar(100) NOT NULL COMMENT 'User Name',
  `adminid` varchar(16) NOT NULL COMMENT 'Admin Id',
  `totaldev` int(11) NOT NULL COMMENT 'Total Devices',
  `uemail` varchar(100) NOT NULL COMMENT 'User Email',
  `upass` varchar(10) DEFAULT NULL COMMENT 'User Password',
  `uphone` varchar(100) NOT NULL COMMENT 'User Phone',
  `otp` varchar(6) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL COMMENT 'User Address',
  `city` varchar(100) DEFAULT NULL COMMENT 'User City',
  `state` varchar(100) DEFAULT NULL COMMENT 'User State',
  `pincode` varchar(100) DEFAULT NULL COMMENT 'User Pincode'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`uid`, `uname`, `adminid`, `totaldev`, `uemail`, `upass`, `uphone`, `otp`, `address`, `city`, `state`, `pincode`) VALUES
('1NSWRLVK85LHE7PE', 'abhay', 'gdbd6dj35suwk267', 4, 'abhaykasaudhan005@gmail.com', '0', '7317416788', '0', '4, Opt BSF Bus Stop, Baglur Main Rd, Niranthara Layout, Santhur Village, Bengaluru', 'Bangalore', 'Karnataka', '560063'),
('3NPVK65VRI4NONLH', 'katyayini Gupta', 'gdbd6dj35suwk267', 0, 'guptakatyayini@gmail.com', '0', '7068184133', '113289', 'Dharamshala Bazar', 'Gorakhpur', 'Uttar Pradesh', '273001'),
('7ZWC5EYR51N2D88P', 'vinay', 'gdbd6dj35suwk267', 7, 'vinaysv2452@gmail.com', '0', '5486578942', '361292', 'Ronda House, 1st Cross, Opp To Reva University,', 'Bengaluru', 'Karnataka', '560063'),
('8G9L919TTYFPPA39', 'prem', 'gdbd6dj35suwk267', 0, 'premkishore450@gmail.com', '0', '9611321258', '137067', '4, Opt BSF Bus Stop, Baglur Main Rd, Niranthara Layout, Santhur Village, Bengaluru', 'Bengaluru', 'Karnataka', '56063'),
('adks83h5grb38dk1', 'Churanta Mandal', 'gdbd6dj35suwk267', 2, 'mandal@gmail.com', '12345', '7652149856', NULL, '', '', '', ''),
('hdks83h5grb38dk2', 'Tushar', 'gdbd6dj35suwk267', 3, 'tusharkasaudhan6@gmail.com', 'abhay234', '8601434788', '123456', '', '', '', ''),
('MR3QPOX6GHMOVLTP', 'shivam', 'gdbd6dj35suwk267', 6, 'abhaykasaudhan5@gmail.com', '0', '+918601434788', '210142', '#2, 1St Cross Road, Opp To Reva University, Kattigenahalli,', 'Bangalore', 'Karnataka', '560064'),
('XNF65U110FJ8A9XG', 'Rahul', 'LHbd6dj35suwk269', 1, 'rahul@gmail.com', '0', '8961434458', '307827', 'xyz', 'xyz', 'Himachal Pradesh', '248651'),
('XPVREWYJ4AKSL36O', 'Mandal', 'gdbd6dj35suwk267', 0, 'churantamondal@gmail.com', '0', '6291731887', '865089', '', '', 'Choose...', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `device_info`
--
ALTER TABLE `device_info`
  ADD PRIMARY KEY (`deviceid`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
