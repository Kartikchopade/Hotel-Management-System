-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 06:32 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projecthms`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(20) NOT NULL,
  `number` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `country` varchar(30) NOT NULL,
  `room` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `deposite` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `number`, `name`, `gender`, `country`, `room`, `status`, `deposite`) VALUES
('Driving License', '9822203432', 'vishnu chopade', 'Male', 'india', '101', 'yes', '3000');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept` varchar(40) NOT NULL,
  `budget` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept`, `budget`) VALUES
('marketing', '1100000');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `name` varchar(30) NOT NULL,
  `age` varchar(10) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `company` varchar(20) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `available` varchar(20) NOT NULL,
  `location` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`name`, `age`, `gender`, `company`, `brand`, `available`, `location`) VALUES
('roshan kale', '32', 'Male', 'Toyota', 'Fortuner', 'Available', 'shantacruz Airport');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `name` varchar(30) NOT NULL,
  `age` varchar(10) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `job` varchar(30) NOT NULL,
  `salary` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `aadhar` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`name`, `age`, `gender`, `job`, `salary`, `phone`, `aadhar`, `email`) VALUES
('harsha ashok chopade', '30', 'Female', 'Kitchen Staff', '45000', '1234567891', '123456789123', 'harshachopade@gmail.com'),
('yash bhole', '35', 'Male', 'Manager', '60000', '1234567891', '12345678901', 'yashbhole@gmail.com'),
('sager jawalkar', '40', 'Male', 'Manager', '65000', '1234567890', '123456789012', 'sagerjawalkar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room` varchar(10) NOT NULL,
  `available` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `bed_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room`, `available`, `status`, `price`, `bed_type`) VALUES
('101', 'Occupied', 'Cleaned', '5000', 'Single Bed'),
('102', 'Available', 'Cleaned', '5000', 'Single Bed'),
('103', 'Available', 'Cleaned', '10000', 'Double Bed'),
('104', 'Available', 'Cleaned', '5000', 'Single Bed'),
('105', 'Available', 'Cleaned', '10000', 'Double Bed');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
