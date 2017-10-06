-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 06, 2017 at 01:38 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `defet`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust_reg`
--

CREATE TABLE IF NOT EXISTS `cust_reg` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `mobile_no` int(11) NOT NULL DEFAULT '0',
  `email_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mobile_no`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cust_reg`
--

INSERT INTO `cust_reg` (`ID`, `Name`, `mobile_no`, `email_id`) VALUES
(1, 'Rahul', 898952, 'Rahul2opncn@gmail.co');

-- --------------------------------------------------------

--
-- Table structure for table `vegitable`
--

CREATE TABLE IF NOT EXISTS `vegitable` (
  `mobile_no` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `VEG` varchar(20) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `CUST_RATE` decimal(10,3) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  KEY `mobile_no` (`mobile_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vegitable`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `vegitable`
--
ALTER TABLE `vegitable`
  ADD CONSTRAINT `vegitable_ibfk_1` FOREIGN KEY (`mobile_no`) REFERENCES `cust_reg` (`mobile_no`);
