-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 07:31 AM
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
-- Database: `labo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUSTOMER_ID` int(11) NOT NULL,
  `CUST_NAME` varchar(20) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `GRADE` int(11) DEFAULT NULL,
  `SALESMAN_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUSTOMER_ID`, `CUST_NAME`, `CITY`, `GRADE`, `SALESMAN_ID`) VALUES
(1, 'ADYA', 'BANGALORE', 100, 1000),
(2, 'BANU', 'MANGALORE', 300, 1000),
(3, 'CHETHAN', 'CHENNAI', 400, 2000),
(4, 'DANISH', 'BANGALORE', 200, 2000),
(5, 'ESHA', 'BANGALORE', 400, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ORDER_NO` int(11) NOT NULL,
  `PURCHASE_AMOUNT` decimal(10,2) DEFAULT NULL,
  `ORDER_DATE` date DEFAULT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  `SALESMAN_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ORDER_NO`, `PURCHASE_AMOUNT`, `ORDER_DATE`, `CUSTOMER_ID`, `SALESMAN_ID`) VALUES
(201, 5000.00, '2020-06-02', 1, 1000),
(202, 450.00, '2020-04-09', 1, 2000),
(203, 1000.00, '2020-03-15', 3, 2000),
(204, 3500.00, '2020-07-09', 4, 3000),
(205, 550.00, '2020-05-05', 2, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `salesman`
--

CREATE TABLE `salesman` (
  `SALESMAN_ID` int(11) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `COMMISSION` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesman`
--

INSERT INTO `salesman` (`SALESMAN_ID`, `NAME`, `CITY`, `COMMISSION`) VALUES
(1000, 'RAHUL', 'BANGALORE', '20%'),
(2000, 'ANKITA', 'BANGALORE', '25%'),
(3000, 'SHARMA', 'MYSORE', '30%'),
(4000, 'ANJALI', 'DELHI', '15%'),
(5000, 'RAJ', 'HYDERABAD', '15%');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUSTOMER_ID`),
  ADD KEY `SALESMAN_ID` (`SALESMAN_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ORDER_NO`),
  ADD KEY `CUSTOMER_ID` (`CUSTOMER_ID`),
  ADD KEY `SALESMAN_ID` (`SALESMAN_ID`);

--
-- Indexes for table `salesman`
--
ALTER TABLE `salesman`
  ADD PRIMARY KEY (`SALESMAN_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`SALESMAN_ID`) REFERENCES `salesman` (`SALESMAN_ID`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`SALESMAN_ID`) REFERENCES `salesman` (`SALESMAN_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
