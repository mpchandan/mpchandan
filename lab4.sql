-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 07:12 AM
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
-- Database: `lab4`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `USN` varchar(10) NOT NULL,
  `SSID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`USN`, `SSID`) VALUES
('1BI16CS045', 'CSE3A'),
('1BI16CS088', 'CSE3B'),
('1BI16CS122', 'CSE3C'),
('1BI15CS011', 'CSE4A'),
('1BI15CS029', 'CSE4A'),
('1BI15CS045', 'CSE4B'),
('1BI15CS091', 'CSE4C'),
('1BI14CS010', 'CSE7A'),
('1BI14CS025', 'CSE7A'),
('1BI14CS032', 'CSE7A'),
('1BI13CS020', 'CSE8A'),
('1BI13CS062', 'CSE8A'),
('1BI13CS066', 'CSE8B'),
('1BI15CS101', 'CSE8C');

-- --------------------------------------------------------

--
-- Table structure for table `iamarks`
--

CREATE TABLE `iamarks` (
  `USN` varchar(10) NOT NULL,
  `SUBCODE` varchar(8) NOT NULL,
  `SSID` varchar(5) NOT NULL,
  `TEST1` int(11) DEFAULT NULL,
  `TEST2` int(11) DEFAULT NULL,
  `TEST3` int(11) DEFAULT NULL,
  `FINALIA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `iamarks`
--

INSERT INTO `iamarks` (`USN`, `SUBCODE`, `SSID`, `TEST1`, `TEST2`, `TEST3`, `FINALIA`) VALUES
('1BI15CS101', '10CS81', 'CSE8C', 15, 16, 18, NULL),
('1BI15CS101', '10CS82', 'CSE8C', 12, 19, 14, NULL),
('1BI15CS101', '10CS83', 'CSE8C', 19, 15, 20, NULL),
('1BI15CS101', '10CS84', 'CSE8C', 20, 16, 19, NULL),
('1BI15CS101', '10CS85', 'CSE8C', 15, 15, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `semsec`
--

CREATE TABLE `semsec` (
  `SSID` varchar(5) NOT NULL,
  `SEM` int(11) DEFAULT NULL,
  `SEC` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semsec`
--

INSERT INTO `semsec` (`SSID`, `SEM`, `SEC`) VALUES
('CSE1A', 1, 'A'),
('CSE1B', 1, 'B'),
('CSE1C', 1, 'C'),
('CSE2A', 2, 'A'),
('CSE2B', 2, 'B'),
('CSE2C', 2, 'C'),
('CSE3A', 3, 'A'),
('CSE3B', 3, 'B'),
('CSE3C', 3, 'C'),
('CSE4A', 4, 'A'),
('CSE4B', 4, 'B'),
('CSE4C', 4, 'C'),
('CSE5A', 5, 'A'),
('CSE5B', 5, 'B'),
('CSE5C', 5, 'C'),
('CSE6A', 6, 'A'),
('CSE6B', 6, 'B'),
('CSE6C', 6, 'C'),
('CSE7A', 7, 'A'),
('CSE7B', 7, 'B'),
('CSE7C', 7, 'C'),
('CSE8A', 8, 'A'),
('CSE8B', 8, 'B'),
('CSE8C', 8, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `USN` varchar(10) NOT NULL,
  `SNAME` varchar(25) DEFAULT NULL,
  `ADDRESS` varchar(25) DEFAULT NULL,
  `PHONE` int(11) DEFAULT NULL,
  `GENDER` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`USN`, `SNAME`, `ADDRESS`, `PHONE`, `GENDER`) VALUES
('1BI13CS020', 'ANAND', 'BELAGAVI', 1233423, 'M'),
('1BI13CS062', 'BABIITHA', 'BENGALURU', 43123, 'F'),
('1BI13CS066', 'DIVYA', 'MANGALURU', 534432, 'F'),
('1BI14CS010', 'EESHA', 'BENGALURU', 345456, 'F'),
('1BI14CS025', 'HARISH', 'BENGALURU', 235464, 'M'),
('1BI14CS032', 'GANESH', 'BENGALURU', 574532, 'M'),
('1BI15CS011', 'ISHA', 'TUMKUR', 764343, 'F'),
('1BI15CS029', 'JOEY', 'DAVANGERE', 235653, 'M'),
('1BI15CS045', 'KAVYA', 'BELLARY', 865434, 'F'),
('1BI15CS091', 'MALINI', 'MANGALURU', 235464, 'F'),
('1BI15CS101', 'CHETHAN', 'BENGALURU', 534234, 'M'),
('1BI16CS045', 'NEEL', 'KALBURGI', 856453, 'M'),
('1BI16CS088', 'PARTHA', 'SHIMOGA', 234546, 'M'),
('1BI16CS122', 'REEMA', 'CHIKAMAGALUR', 853333, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SUBCODE` varchar(8) NOT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  `SEM` int(11) DEFAULT NULL,
  `CREDITS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBCODE`, `TITLE`, `SEM`, `CREDITS`) VALUES
('10CS71', 'OOAD', 7, 4),
('10CS72', 'ECS', 7, 4),
('10CS73', 'PTW', 7, 4),
('10CS74', 'DWDM', 7, 4),
('10CS75', 'JAVA', 7, 4),
('10CS76', 'SAN', 7, 4),
('10CS81', 'ACA', 8, 4),
('10CS82', 'SSM', 8, 4),
('10CS83', 'NM', 8, 4),
('10CS84', 'CC', 8, 4),
('10CS85', 'PW', 8, 4),
('15CS31', 'M3', 3, 4),
('15CS32', 'ADE', 3, 4),
('15CS33', 'DSA', 3, 4),
('15CS34', 'CO', 3, 4),
('15CS35', 'USP', 3, 3),
('15CS36', 'DMS', 3, 3),
('15CS41', 'M4', 4, 4),
('15CS42', 'SE', 4, 4),
('15CS43', 'DAA', 4, 4),
('15CS44', 'MPMC', 4, 4),
('15CS45', 'OOC', 4, 3),
('15CS46', 'DC', 4, 3),
('15CS51', 'ME', 5, 4),
('15CS52', 'CN', 5, 4),
('15CS53', 'DBMS', 5, 4),
('15CS54', 'ATC', 5, 4),
('15CS55', 'JAVA', 5, 3),
('15CS56', 'AI', 5, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`USN`),
  ADD KEY `SSID` (`SSID`);

--
-- Indexes for table `iamarks`
--
ALTER TABLE `iamarks`
  ADD PRIMARY KEY (`SUBCODE`,`USN`,`SSID`),
  ADD KEY `USN` (`USN`),
  ADD KEY `SSID` (`SSID`);

--
-- Indexes for table `semsec`
--
ALTER TABLE `semsec`
  ADD PRIMARY KEY (`SSID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`USN`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SUBCODE`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`USN`) REFERENCES `student` (`USN`),
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`SSID`) REFERENCES `semsec` (`SSID`);

--
-- Constraints for table `iamarks`
--
ALTER TABLE `iamarks`
  ADD CONSTRAINT `iamarks_ibfk_1` FOREIGN KEY (`USN`) REFERENCES `student` (`USN`),
  ADD CONSTRAINT `iamarks_ibfk_2` FOREIGN KEY (`SUBCODE`) REFERENCES `subject` (`SUBCODE`),
  ADD CONSTRAINT `iamarks_ibfk_3` FOREIGN KEY (`SSID`) REFERENCES `semsec` (`SSID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
