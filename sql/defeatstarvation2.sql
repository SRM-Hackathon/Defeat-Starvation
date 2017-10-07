-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2017 at 01:32 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `defeatstarvation2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust_reg`
--

CREATE TABLE `cust_reg` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `mobile_no` bigint(20) NOT NULL DEFAULT '0',
  `email_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cust_reg`
--

INSERT INTO `cust_reg` (`ID`, `Name`, `mobile_no`, `email_id`) VALUES
(5, 'rajat', 8526251, 'rajat@gmail.com'),
(3, 'Taresh', 89526249, 'taresh@gmail.com'),
(4, 'Palash', 89526250, 'palash@gmail.com'),
(6, 'ayush', 123456789, 'asdf@gmail.com'),
(1, 'Rahul', 8982528297, 'rahul@gmail.com'),
(2, 'Vibhor', 8989526247, 'vibhor@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `price_tag`
--

CREATE TABLE `price_tag` (
  `id` int(11) NOT NULL,
  `product` varchar(12) NOT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price_tag`
--

INSERT INTO `price_tag` (`id`, `product`, `rate`) VALUES
(8, 'carrot', 40),
(4, 'CauliFlower', 100),
(5, 'Ginger', 400),
(2, 'LadyFinger', 30),
(1, 'Potato', 20),
(3, 'Tomato', 90);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `email`, `password`) VALUES
(1, 'taresh@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `total_stock`
--

CREATE TABLE `total_stock` (
  `product` varchar(12) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_stock`
--

INSERT INTO `total_stock` (`product`, `quantity`, `rate`) VALUES
('LadyFinger', 0, 0),
('Potato', 0, 0),
('Ginger', 0, 0),
('CauliFlower', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vegitable`
--

CREATE TABLE `vegitable` (
  `mobile_no` bigint(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `product` varchar(12) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `CUST_RATE` decimal(10,3) DEFAULT NULL,
  `total_rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vegitable`
--

INSERT INTO `vegitable` (`mobile_no`, `name`, `product`, `Quantity`, `Date`, `Time`, `CUST_RATE`, `total_rate`) VALUES
(8989526247, 'Vibhor', 'Potato', 10, '2017-10-07', '02:01:21', '20.000', 50),
(89526249, 'taresh', 'CauliFlower', 10, '2017-10-07', '02:05:45', '25.000', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust_reg`
--
ALTER TABLE `cust_reg`
  ADD PRIMARY KEY (`mobile_no`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `price_tag`
--
ALTER TABLE `price_tag`
  ADD PRIMARY KEY (`product`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_stock`
--
ALTER TABLE `total_stock`
  ADD UNIQUE KEY `product` (`product`);

--
-- Indexes for table `vegitable`
--
ALTER TABLE `vegitable`
  ADD KEY `mobile_no` (`mobile_no`),
  ADD KEY `product` (`product`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cust_reg`
--
ALTER TABLE `cust_reg`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `price_tag`
--
ALTER TABLE `price_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `total_stock`
--
ALTER TABLE `total_stock`
  ADD CONSTRAINT `total_stock_ibfk_1` FOREIGN KEY (`product`) REFERENCES `price_tag` (`product`);

--
-- Constraints for table `vegitable`
--
ALTER TABLE `vegitable`
  ADD CONSTRAINT `vegitable_ibfk_1` FOREIGN KEY (`mobile_no`) REFERENCES `cust_reg` (`mobile_no`),
  ADD CONSTRAINT `vegitable_ibfk_2` FOREIGN KEY (`product`) REFERENCES `price_tag` (`product`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
