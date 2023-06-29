-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 01:36 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineclinicallab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(25) NOT NULL,
  `password` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `phoneno` varchar(15) NOT NULL,
  `type` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `email`, `fullname`, `phoneno`, `type`, `status`) VALUES
('puriparas', '123456789', 'puri@gmail.com', 'paras puri', '8658689890', 'admin', 'active'),
('Ratandon', 'qwertyuiop', 'rtandon2001@gmail.com', 'Rahul Tandon', '9876757574', 'co-admin', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(30) NOT NULL,
  `lt_id` int(20) NOT NULL,
  `user_email` varchar(35) NOT NULL,
  `user_mobile` varchar(15) NOT NULL,
  `test_name` varchar(30) NOT NULL,
  `test_category` varchar(30) NOT NULL,
  `test_price` varchar(30) NOT NULL,
  `payment_method` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `lt_id`, `user_email`, `user_mobile`, `test_name`, `test_category`, `test_price`, `payment_method`, `status`) VALUES
(9, 2, 'puri@gmail.com', '7717442429', 'kedney test', 'Human', '10000', 'cod', 'Payment Pending'),
(10, 2, 'puri@gmail.com', '7717442429', 'kedney test', 'Human', '10000', 'cod', 'Payment Pending'),
(11, 17, 'puri@gmail.com', '7717442429', 'lungs test', 'Human', '2500', 'cod', 'Payment Pending');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `test_name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `category` varchar(30) NOT NULL,
  `price` float(8,2) NOT NULL,
  `cart_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`test_name`, `description`, `category`, `price`, `cart_id`) VALUES
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 1),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 2),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 3),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 4),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 5),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 6),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 7),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 8),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 9),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 10),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 11),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 12),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 13),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 14),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 15),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 16),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 17),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 18),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 19),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 20),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 21),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 22),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 23),
('Any Problem', 'Dada ji ko mile', 'Human', 45000.00, 24),
('Any Problem', 'Dada ji ko mile', 'Human', 45000.00, 25),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 26),
('Any Problem', 'Dada ji ko mile', 'Human', 45000.00, 27),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 28),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 29),
('Any Problem', 'Dada ji ko mile', 'Human', 45000.00, 30),
('Any Problem', 'Dada ji ko mile', 'Human', 45000.00, 31),
('Any Problem', 'Dada ji ko mile', 'Human', 45000.00, 32),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 33),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 34),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 35),
('lungs test', 'problem of asthma', 'Human', 2500.00, 36),
('lungs test', 'problem of asthma', 'Human', 2500.00, 37),
('lungs test', 'problem of asthma', 'Human', 2500.00, 38),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 39),
('kedney test', 'cancer diagnostic', 'Human', 10000.00, 40);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_name`) VALUES
('Human');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subject` varchar(40) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` varchar(60) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `phone`, `message`, `status`) VALUES
(2, 'Paras Puri', 'puri@gmail.com', 'Query regarding lungs test', '9876757574', 'Asthma problem', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `l_id` int(15) NOT NULL,
  `lab_name` varchar(150) NOT NULL,
  `lab_address` text NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `contact_email` varchar(90) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`l_id`, `lab_name`, `lab_address`, `contact_no`, `contact_email`, `status`, `password`) VALUES
(1, 'ramlal lab ', 'crystal chowk , Amritsar', '+919789655423', 'ppp@gmail.com', 'activated', '123456789'),
(2, 'sham lal lab', 'lawrence road , Amritsar', '8968404314', 'ppt@gmail.com', 'activated', '00000000');

-- --------------------------------------------------------

--
-- Table structure for table `labtests`
--

CREATE TABLE `labtests` (
  `lt_id` int(11) NOT NULL,
  `test_name` varchar(100) NOT NULL,
  `description` varchar(150) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` float(8,2) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'pending',
  `lab` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `labtests`
--

INSERT INTO `labtests` (`lt_id`, `test_name`, `description`, `category`, `price`, `status`, `lab`) VALUES
(1, 'Any Problem', 'Dada ji ko mile', 'Human', 45000.00, 'blocked', 1),
(2, 'kedney test', 'cancer diagnostic', 'Human', 10000.00, 'activated', 1),
(17, 'lungs test', 'problem of asthma', 'Human', 2500.00, 'activated', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `p_id` int(15) NOT NULL,
  `p_name` varchar(150) NOT NULL,
  `p_address` text NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `contact_email` varchar(90) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`p_id`, `p_name`, `p_address`, `contact_no`, `contact_email`, `password`, `gender`) VALUES
(6, 'Raj  Bam', 'Kanchanpur,Nepal', '9868944066', 'rajbam13@gmail.com', 'wertyuiop', 'female'),
(7, 'Nikhil Bam', 'Anywhere', '9988776655', 'rabc13@gmail.com', '123456789', 'male'),
(8, 'paras puri', 'bjkgjgkjkjfgkvkghil', '7717442429', 'puri@gmail.com', '123456789', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_name`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `labtests`
--
ALTER TABLE `labtests`
  ADD PRIMARY KEY (`lt_id`),
  ADD KEY `category` (`category`),
  ADD KEY `lab` (`lab`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`p_id`) USING BTREE,
  ADD UNIQUE KEY `contact_email` (`contact_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `l_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `labtests`
--
ALTER TABLE `labtests`
  MODIFY `lt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `p_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `labtests`
--
ALTER TABLE `labtests`
  ADD CONSTRAINT `labtests_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`category_name`),
  ADD CONSTRAINT `labtests_ibfk_2` FOREIGN KEY (`lab`) REFERENCES `labs` (`l_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
