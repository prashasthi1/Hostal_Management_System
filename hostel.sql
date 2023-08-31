-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 18, 2022 at 05:11 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `IDNo` varchar(10) NOT NULL,
  `mobileNo` varchar(10) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDNo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`IDNo`, `mobileNo`, `name`, `email`, `age`, `address`, `gender`, `designation`, `status`) VALUES
('ST001', '0781236547', 'Staff1', 'staff1@gmail.com', '25', 'matara', 'Female', 'Maintenance', 'Working'),
('ST002', '0721236547', 'Staff2', 'staff2@gmail.com', '30', 'collombo', 'Male', 'Housekeeping', 'Working'),
('ST003', '0743698512', 'Staff3', 'staff3@gmail.com', '30', 'Thihagoda', 'Female', 'Accounting', 'Not Working');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
CREATE TABLE IF NOT EXISTS `fees` (
  `IDNo` varchar(10) DEFAULT NULL,
  `mobileNo` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`IDNo`, `mobileNo`, `name`, `month`, `amount`) VALUES
('S002', '0776498214', 'student2', '09-2022', '10000'),
('', '', '', '', ''),
('S003', '0741236547', 'Student3', '09-2022', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `IDNo` varchar(10) DEFAULT NULL,
  `mobileNo` varchar(10) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`IDNo`, `mobileNo`, `name`, `designation`, `month`, `amount`) VALUES
('ST001', '0781236547', 'Staff1', 'Maintenance', '09-2022', '250000'),
('ST001', '0781236547', 'Staff1', 'Maintenance', '09-2022', '250000');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `number` varchar(10) NOT NULL,
  `activate` varchar(50) DEFAULT NULL,
  `roomStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`number`, `activate`, `roomStatus`) VALUES
('R005', 'No', 'Not Booked'),
('R004', 'Yes', 'Booked'),
('R003', 'Yes', 'Not Booked'),
('R002', 'Yes', 'Booked'),
('R001', 'Yes', 'Not Booked');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `IDNo` varchar(10) NOT NULL,
  `mobileNo` varchar(10) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `guardian` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `college` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `roomNo` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IDNo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`IDNo`, `mobileNo`, `name`, `guardian`, `email`, `age`, `address`, `college`, `gender`, `roomNo`, `status`) VALUES
('S003', '0741236547', 'Student3', 'Parent3', 'student3@gmail.come', '19', 'Welligama', 'SLIT', 'Male', 'R004', 'living'),
('S001', '0714422753', 'student1', 'parent1', 'student1@gmail.com', '22', 'Matara', 'NIBM', 'Female', 'R001', 'leaved'),
('S002', '0776498214', 'student2', 'parent2', 'student2@gmail.com', '20', 'Galle', 'NSBM', 'Male', 'R002', 'living');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
