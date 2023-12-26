-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2023 at 07:28 AM
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
-- Database: `lab3`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `ACT_ID` int(11) NOT NULL,
  `ACT_NAME` varchar(20) DEFAULT NULL,
  `ACT_GENDER` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`ACT_ID`, `ACT_NAME`, `ACT_GENDER`) VALUES
(101, 'RAHUL', 'M'),
(102, 'ANKITHA', 'F'),
(103, 'RADHIKA', 'F'),
(104, 'CHETHAN', 'M'),
(105, 'VIVAN', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `DIR_ID` int(11) NOT NULL,
  `DIR_NAME` varchar(20) DEFAULT NULL,
  `DIR_PHONE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`DIR_ID`, `DIR_NAME`, `DIR_PHONE`) VALUES
(201, 'ANUP', 918181818),
(202, 'HITCHCOCK', 918181812),
(203, 'SHASHANK', 918181813),
(204, 'STEVEN SPIELBERG', 918181814),
(205, 'ANAND', 918181815);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `MOV_ID` int(11) NOT NULL,
  `MOV_TITLE` varchar(25) DEFAULT NULL,
  `MOV_YEAR` int(11) DEFAULT NULL,
  `MOV_LANG` varchar(15) DEFAULT NULL,
  `DIR_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`MOV_ID`, `MOV_TITLE`, `MOV_YEAR`, `MOV_LANG`, `DIR_ID`) VALUES
(1001, 'MANASU', 2017, 'KANNADA', 201),
(1002, 'AAKASHAM', 2015, 'TELUGU', 202),
(1003, 'KALIYONA', 2008, 'KANNADA', 201),
(1004, 'WAR HORSE', 2011, 'ENGLISH', 204),
(1005, 'HOME', 2012, 'ENGLISH', 205);

-- --------------------------------------------------------

--
-- Table structure for table `movie_cast`
--

CREATE TABLE `movie_cast` (
  `ACT_ID` int(11) NOT NULL,
  `MOV_ID` int(11) NOT NULL,
  `ROLE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_cast`
--

INSERT INTO `movie_cast` (`ACT_ID`, `MOV_ID`, `ROLE`) VALUES
(101, 1001, 'HERO'),
(101, 1002, 'HERO'),
(103, 1002, 'GUEST'),
(103, 1003, 'HEROINE'),
(104, 1004, 'HERO');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `MOV_ID` int(11) NOT NULL,
  `REV_STARS` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`MOV_ID`, `REV_STARS`) VALUES
(1001, '4'),
(1002, '2'),
(1003, '5'),
(1004, '4'),
(1005, '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`ACT_ID`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`DIR_ID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`MOV_ID`),
  ADD KEY `DIR_ID` (`DIR_ID`);

--
-- Indexes for table `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD PRIMARY KEY (`ACT_ID`,`MOV_ID`),
  ADD KEY `MOV_ID` (`MOV_ID`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`MOV_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`DIR_ID`) REFERENCES `director` (`DIR_ID`);

--
-- Constraints for table `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD CONSTRAINT `movie_cast_ibfk_1` FOREIGN KEY (`ACT_ID`) REFERENCES `actor` (`ACT_ID`),
  ADD CONSTRAINT `movie_cast_ibfk_2` FOREIGN KEY (`MOV_ID`) REFERENCES `movies` (`MOV_ID`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`MOV_ID`) REFERENCES `movies` (`MOV_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
