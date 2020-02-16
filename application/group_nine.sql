-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2020 at 10:35 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group_nine`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_type_id` int(11) NOT NULL,
  `item_descr` varchar(255) NOT NULL,
  `item_create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_type_id`, `item_descr`, `item_create_date`) VALUES
(1, 1, 'PINEAPPLES', '2020-01-10 06:44:09'),
(2, 1, 'GRAPES', '2020-01-10 06:44:09'),
(3, 1, 'BLUEBERRY', '2020-01-10 06:44:41'),
(4, 1, 'AVOCADO', '2020-01-10 06:44:41'),
(5, 1, 'ORANGES', '2020-01-10 06:44:41'),
(6, 1, 'PEAR', '2020-01-10 06:45:07'),
(7, 1, 'LIME', '2020-01-10 06:45:07'),
(8, 1, 'APRICOT', '2020-01-10 06:45:39'),
(9, 2, 'BARLEY', '2020-01-10 06:45:39'),
(10, 2, 'MILLET', '2020-01-10 06:45:39'),
(11, 2, 'BROWN RICE', '2020-01-10 06:45:39'),
(12, 2, 'OATMEAL', '2020-01-10 06:45:39'),
(13, 2, 'BUCKWHEAT', '2020-01-10 06:45:39'),
(14, 2, 'CORN', '2020-01-10 06:45:39'),
(15, 2, 'RYE', '2020-01-10 06:45:39'),
(16, 2, 'WHEAT', '2020-01-10 06:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE `item_type` (
  `item_type_id` int(11) NOT NULL,
  `item_descr` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`item_type_id`, `item_descr`, `create_date`) VALUES
(1, 'Fruits', '2020-01-10 06:43:38'),
(2, 'Grains', '2020-01-10 06:43:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_type_id` (`item_type_id`);

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`item_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `item_type`
--
ALTER TABLE `item_type`
  MODIFY `item_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`item_type_id`) REFERENCES `item_type` (`item_type_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
