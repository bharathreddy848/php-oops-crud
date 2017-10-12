-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2017 at 11:40 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpcrud`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Fashion', '2014-06-01 00:35:07', '2014-05-30 12:04:33'),
(2, 'Electronics', '2014-06-01 00:35:07', '2014-05-30 12:04:33'),
(3, 'Motors', '2014-06-01 00:35:07', '2014-05-30 12:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `category_id`, `created`, `modified`) VALUES
(1, 'LG P880 4X HD', 'My first awesome phone!', 336, '0', 3, '2014-06-01 01:12:26', '2014-05-31 11:42:26'),
(2, 'Google Nexus 4', 'The most awesome phone of 2013!', 299, '0', 2, '2014-06-01 01:12:26', '2014-05-31 11:42:26'),
(3, 'Samsung Galaxy S4', 'How about no?', 600, '0', 3, '2014-06-01 01:12:26', '2014-05-31 11:42:26'),
(6, 'Bench Shirt', 'The best shirt!', 29, '0', 1, '2014-06-01 01:12:26', '2014-05-30 20:42:21'),
(7, 'Lenovo Laptop', 'My business partner.', 399, '0', 2, '2014-06-01 01:13:45', '2014-05-30 20:43:39'),
(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', 259, '0', 2, '2014-06-01 01:14:13', '2014-05-30 20:44:08'),
(9, 'Spalding Watch', 'My sports watch.', 199, '0', 1, '2014-06-01 01:18:36', '2014-05-30 20:48:31'),
(10, 'Sony Smart Watch', 'The coolest smart watch!', 300, '0', 2, '2014-06-06 17:10:01', '2014-06-05 12:39:51'),
(11, 'Huawei Y300', 'For testing purposes.', 100, '0', 2, '2014-06-06 17:11:04', '2014-06-05 12:40:54'),
(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', 60, '0', 1, '2014-06-06 17:12:21', '2014-06-05 12:42:11'),
(13, 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', 70, '0', 1, '2014-06-06 17:12:59', '2014-06-05 12:42:49'),
(25, 'Abercrombie Allen Anew Shirt', 'Awesome new shirt!', 9999, '0', 1, '2014-11-22 18:42:13', '2014-11-21 14:12:13'),
(26, 'Another product', 'Awesome product!', 555, '0', 2, '2014-11-22 19:07:34', '2014-11-21 14:37:34'),
(27, 'Bag', 'Awesome bag for you!', 999, '0', 1, '2014-12-04 21:11:36', '2014-12-03 16:41:36'),
(28, 'Wallet', 'You can absolutely use this one!', 799, '0', 1, '2014-12-04 21:12:03', '2014-12-03 16:42:03'),
(30, 'Wal-mart Shirt', '', 555, '0', 2, '2014-12-13 00:52:29', '2014-12-11 20:22:29'),
(31, 'Amanda Waller Shirt', 'New awesome shirt!', 333, '0', 1, '2014-12-13 00:52:54', '2014-12-11 20:22:54'),
(32, 'Washing Machine Model PTRR', 'Some new product.', 999, '0', 1, '2015-01-08 22:44:15', '2015-01-07 18:14:15'),
(38, 'Moto g5s plus', 'Motorola Hello Moto!!', 500, '0', 2, '2017-10-12 09:16:42', '2017-10-12 07:16:42'),
(39, 'MI A1', 'qqqqqqqqqqqqqqqq', 499, 'f2320eaa3b724694728eb31d12df2dace7a711e3-Xiaomi-Mi-A1-Android-One-2-1024x901.jpg', 2, '2017-10-12 10:05:31', '2017-10-12 08:05:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
