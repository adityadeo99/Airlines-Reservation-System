-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2019 at 03:06 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swingapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `type`) VALUES
(88, 'akshay', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admindetail`
--

CREATE TABLE `admindetail` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobileno` bigint(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admindetail`
--

INSERT INTO `admindetail` (`id`, `firstname`, `lastname`, `email`, `mobileno`, `gender`, `dob`) VALUES
(88, 'Akshay', 'Karale', 'akshaykarale9999@gmail.com', 9834592286, 'Male', '1998-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `bookingdetails`
--

CREATE TABLE `bookingdetails` (
  `userid` int(11) NOT NULL,
  `flightid` int(11) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `arrivaltime` time NOT NULL,
  `class` varchar(50) NOT NULL,
  `departuretime` time NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `customername` varchar(50) NOT NULL,
  `seatno` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `passportno` varchar(50) NOT NULL,
  `paymentdetail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingdetails`
--

INSERT INTO `bookingdetails` (`userid`, `flightid`, `source`, `destination`, `arrivaltime`, `class`, `departuretime`, `amount`, `date`, `customername`, `seatno`, `gender`, `passportno`, `paymentdetail`) VALUES
(56, 22, 'Mumbai', 'Chennai', '12:46:00', 'Economy Class', '13:46:00', 1000, '2019-11-01', 'mayur karale', 'F10', 'Male', '4fe8wf87', '45456');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Query` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`FName`, `LName`, `Email`, `Query`) VALUES
('Nitin', 'Kumar', 'nitin233@gmail.com', 'best UI,increase security for login .'),
('Roshan', 'patil', 'roshan245@gmail.com', '-');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `password`, `type`) VALUES
(56, 'akshayk', '1234', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customerdetail`
--

CREATE TABLE `customerdetail` (
  `id` int(200) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobileno` bigint(22) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerdetail`
--

INSERT INTO `customerdetail` (`id`, `firstname`, `lastname`, `email`, `mobileno`, `gender`, `dob`) VALUES
(56, 'Akshay', 'Karale', 'akshaykarale9999@gmail.com', 9834592286, 'Male', '1998-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `userid` varchar(30) NOT NULL,
  `ques1` varchar(15) NOT NULL,
  `ques2` varchar(15) NOT NULL,
  `ques3` varchar(15) NOT NULL,
  `ques4` varchar(15) NOT NULL,
  `ques5` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`userid`, `ques1`, `ques2`, `ques3`, `ques4`, `ques5`) VALUES
('56', 'Execellent', 'Execellent', 'Execellent', 'Execellent', 'Execellent'),
('56', 'Execellent', 'Good', 'Neutral', 'Poor', 'Execellent');

-- --------------------------------------------------------

--
-- Table structure for table `fligtdetail`
--

CREATE TABLE `fligtdetail` (
  `flightid` int(11) NOT NULL,
  `nameflight` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `takeuptime` time NOT NULL,
  `landingtime` time NOT NULL,
  `type` varchar(50) NOT NULL,
  `charges` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fligtdetail`
--

INSERT INTO `fligtdetail` (`flightid`, `nameflight`, `source`, `destination`, `takeuptime`, `landingtime`, `type`, `charges`) VALUES
(19, 'IndiGo', 'Mumbai', 'Bangalore', '22:44:00', '12:44:00', 'Economy Class', 1500),
(20, 'IndiGo', 'Mumbai', 'Bangalore', '22:45:00', '12:45:00', 'First Class', 2500),
(21, 'JetLite', 'Mumbai', 'Chennai', '23:45:00', '12:45:00', 'Economy Class', 1500),
(22, 'IndiGo', 'Mumbai', 'Chennai', '12:46:00', '13:46:00', 'Economy Class', 1000),
(23, 'SpiceJet', 'Mumbai', 'Pune', '01:21:00', '02:21:00', 'First Class', 2322),
(24, 'GoAir', 'Mumbai', 'Hyderabad', '02:22:00', '04:22:00', 'First Class', 3521),
(25, 'SpiceJet', 'Mumbai', 'New Delhi', '05:23:00', '07:23:00', 'First Class', 3321),
(26, 'Air india', 'Bangalore', 'New Delhi', '09:24:00', '11:24:00', 'First Class', 2312),
(27, 'GoAir', 'Bangalore', 'Hyderabad', '00:24:00', '02:25:00', 'First Class', 2311);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admindetail`
--
ALTER TABLE `admindetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerdetail`
--
ALTER TABLE `customerdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fligtdetail`
--
ALTER TABLE `fligtdetail`
  ADD PRIMARY KEY (`flightid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `admindetail`
--
ALTER TABLE `admindetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `fligtdetail`
--
ALTER TABLE `fligtdetail`
  MODIFY `flightid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
