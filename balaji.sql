-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2015 at 02:54 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `balaji`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `author` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`name`, `title`, `author`, `publisher`, `description`) VALUES
('null', 'Football', '10.00am', 'Erode', 'ujkf'),
('vinoth@gmail.com', 'Hockey', '3.00pm', 'Salem', 'dydkflg'),
('sethu@gmail.com', 'Python', '3.00pm', 'Tirunelveli', 'qshxhfcgvhbj'),
('vinoth@gmail.com', 'Tennis', '2.00pm', 'salem', 'jdyk');

-- --------------------------------------------------------

--
-- Table structure for table `buk`
--

CREATE TABLE IF NOT EXISTS `buk` (
  `buyer` varchar(30) NOT NULL,
  `seller` varchar(30) NOT NULL,
  `product` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jsports`
--

CREATE TABLE IF NOT EXISTS `jsports` (
  `buyer` varchar(20) NOT NULL,
  `seller` varchar(20) NOT NULL,
  `product` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jtechnical`
--

CREATE TABLE IF NOT EXISTS `jtechnical` (
  `buyer` varchar(20) NOT NULL,
  `seller` varchar(20) NOT NULL,
  `product` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `phone`, `email`, `password`) VALUES
('balaji', '1231231231', 'kjsakb@ngskjd.com', ''),
('balaji', '1231231231', 'kjskb@ngskjd.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `name` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`name`, `phone`, `email`, `password`) VALUES
('Aravind', '1231231231', 'aravind@gmail.com', 'aravind'),
('Balaji', '1234567890', 'balaji@gmail.com', 'balaji'),
('Callum Ferguson', '7689543011', 'cferg@gmail.com', 'callum'),
('kv', '9897456369', 'kv@gmail.com', 'kvkvkv'),
('MuthuKumar', '1112223334', 'muthu@gmail.com', 'muthu123'),
('navaneeth', '9790748169', 'rnk1995@yahoo.co.in', 'nava'),
('Sethu', '1234567890', 'sethu@gmail.com', 'sethu123'),
('Varun', '4567765432', 'varun@gmail.com', 'varun123'),
('Vengatesh', '1231231234', 'vengatesh@gmail.com', 'vengatesh'),
('vignesh', '5826931470', 'vig@gmail.com', 'password'),
('Vinoth', '1234567890', 'vinoth@gmail.com', 'vinoth');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE IF NOT EXISTS `sports` (
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `author` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`name`, `title`, `author`, `publisher`, `description`) VALUES
('aravind@gmail.com', 'sports', '5.00pm', 'Uganda', 'Kabaddi'),
('aravind@gmail.com', 'sports', '6.00pm', 'India', 'Volleyball');

-- --------------------------------------------------------

--
-- Table structure for table `sps`
--

CREATE TABLE IF NOT EXISTS `sps` (
  `joiner` varchar(20) NOT NULL,
  `organiser` varchar(20) NOT NULL,
  `event` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbuk`
--

CREATE TABLE IF NOT EXISTS `tbuk` (
  `buyer` varchar(30) NOT NULL,
  `seller` varchar(30) NOT NULL,
  `product` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbuk`
--

INSERT INTO `tbuk` (`buyer`, `seller`, `product`) VALUES
('aravind@gmail.com', 'vengatesh@gmail.com', 'JSP');

-- --------------------------------------------------------

--
-- Table structure for table `technical`
--

CREATE TABLE IF NOT EXISTS `technical` (
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `author` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technical`
--

INSERT INTO `technical` (`name`, `title`, `author`, `publisher`, `description`) VALUES
('aravind@gmail.com', 'technical', '3.00pm', 'Africa', 'C  '),
('aravind@gmail.com', 'technical', '4.00pm', 'Australia', 'Java'),
('vengatesh@gmail.com', 'technical', '2.00pm', 'Adyar', 'JSP'),
('aravind@gmail.com', 'technical', '1.00pm', 'Cairo', 'Ruby');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
 ADD PRIMARY KEY (`title`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
 ADD PRIMARY KEY (`email`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
 ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sps`
--
ALTER TABLE `sps`
 ADD PRIMARY KEY (`joiner`,`organiser`,`event`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
