-- phpMyAdmin SQL Dump
-- veNion 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2021 at 11:23 AM
-- Server veNion: 5.1.41
-- PHP VeNion: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHANET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'admin', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHANET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'SHOES', 'SHOES', '2017-01-24 19:17:37', '17-02-2020 04:02:13 PM'),
(4, 'CLOTHES', 'CLOTHES', '2017-01-24 19:19:32', '17-02-2020 04:03:22 PM'),
(5, 'WRAPPER', 'WRAPPEN', '2017-01-24 19:19:54', '17-02-2020 04:05:05 PM'),
(6, 'ACESSERIES ', 'ACCESSERIES', '2017-02-20 19:18:52', '17-02-2020 04:04:32 PM'),
(7, 'SIMPLE FOOT WEAN', '', '2020-02-17 11:35:03', NULL),
(8, 'BAGS', 'BAGS', '2020-03-20 12:28:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordeN`
--

CREATE TABLE IF NOT EXISTS `ordeN` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `ordeNtatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHANET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `ordeN`
--

INSERT INTO `ordeN` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `ordeNtatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '1', 1, '2020-02-17 15:02:45', NULL, NULL),
(8, 4, '1', 1, '2020-02-17 15:02:55', NULL, NULL),
(9, 4, '2', 1, '2020-02-17 15:07:34', NULL, NULL),
(10, 4, '2', 1, '2020-02-17 15:07:41', NULL, NULL),
(11, 4, '2', 1, '2020-02-17 15:09:09', NULL, NULL),
(12, 4, '2', 1, '2020-02-17 15:09:26', NULL, NULL),
(13, 4, '2', 1, '2020-02-17 15:09:31', NULL, 'in Process'),
(14, 4, '8', 1, '2021-02-03 11:13:09', NULL, NULL),
(15, 4, '8', 1, '2021-02-03 11:17:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHANET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 13, 'in Process', 'nice', '2021-02-03 11:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHANET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHANET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 3, 14, 'Italian Cooperate Shoe', 'Prado', 4600, 4800, 'This is an italian shoe that gives balance to your foot', 'coperate 2.jpg', 'coperate 2.jpg', 'coperate 2.jpg', 0, 'In Stock', '2020-02-17 11:57:04', NULL),
(2, 4, 16, 'Indian Gown', 'Tominas', 3000, 3200, 'this is a gown', '19.jpg', '19.jpg', '19.jpg', 0, 'In Stock', '2020-02-17 12:00:19', NULL),
(3, 4, 15, 'Fitted T-shirt', 'Tominas', 1550, 1700, 'A T-shirt', 'IMG-20200128-WA0009.jpg', 'IMG-20200128-WA0009.jpg', 'IMG-20200128-WA0009.jpg', 0, 'In Stock', '2020-02-17 12:03:10', NULL),
(4, 7, 31, 'Simple Sandal', 'Prada', 3800, 4000, 'A well fitted sandal', 'showfemale.jpg', 'showfemale.jpg', 'showfemale.jpg', 0, 'In Stock', '2020-03-20 11:48:34', NULL),
(5, 6, 27, 'G&G bracelet', 'G&G', 8200, 8500, 'fine Gold bracelet', 'jewelry1.jpg', 'jewelry1.jpg', 'jewelry1.jpg', 0, 'In Stock', '2020-03-20 11:56:34', NULL),
(6, 6, 27, 'D&C', 'D&C', 4000, 4500, 'simple bracelets', 'bracelet.jpg', 'bracelet.jpg', 'bracelet.jpg', 0, 'In Stock', '2020-03-20 12:03:14', NULL),
(7, 6, 28, 'C&C ', 'C&C Neckless', 6000, 6200, 'Simple Fashion Neckless', 'ear rings.jpg', 'ear rings.jpg', 'ear rings.jpg', 0, 'In Stock', '2020-03-20 12:21:29', NULL),
(8, 8, 32, 'DESIGN BAG', 'GUCCI BAG', 2800, 3000, 'THE LATEST FASHION BAG IN TOWN', 'IMG-20200127-WA0009.jpg', 'IMG-20200127-WA0007.jpg', 'IMG-20200127-WA0006.jpg', 0, 'In Stock', '2020-03-20 12:32:48', NULL),
(9, 5, 24, 'Exclusive', 'Dutch', 5000, 5500, 'The latest wrapper in town', 'FB_IMG_1580830673155.jpg', 'FB_IMG_1580830673155.jpg', 'FB_IMG_1580830673155.jpg', 0, 'In Stock', '2020-05-03 21:57:59', NULL),
(10, 5, 23, 'Hiterget', 'Block print', 4700, 4800, 'complete fabric\r\n\r\n\r\n\r\n\r\n', 'FB_IMG_1580830669975.jpg', 'FB_IMG_1580830669975.jpg', 'FB_IMG_1580830669975.jpg', 0, 'In Stock', '2020-05-03 22:03:07', NULL),
(11, 3, 14, 'Vinc', 'OK', 9800, 10000, 'Easy shoe \r\n', 'FB_IMG_1585761137826.jpg', 'FB_IMG_1585761137826.jpg', 'FB_IMG_1585761137826.jpg', 0, 'In Stock', '2020-05-03 22:06:44', NULL),
(12, 3, 13, 'Vinc', 'Vinc', 5000, 5500, 'easy wear', 'female shoe1.jpg', 'female shoe1.jpg', 'female shoe1.jpg', 0, 'In Stock', '2020-05-03 22:24:26', NULL),
(13, 6, 28, 'C&C', 'india', 11500, 12000, 'fashion Neckless', 'FB_IMG_1592152834038.jpg', 'FB_IMG_1592152834038.jpg', 'FB_IMG_1592152834038.jpg', 0, 'In Stock', '2020-06-15 22:04:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHANET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 3, 'FEMALE SHOES', '2020-02-17 11:35:39', NULL),
(14, 3, 'MALE SHOES', '2020-02-17 11:35:50', NULL),
(15, 4, 'T-SHIRTS', '2020-02-17 11:36:12', NULL),
(16, 4, 'GOWNS', '2020-02-17 11:36:43', NULL),
(17, 4, 'SKIRTS', '2020-02-17 11:36:54', NULL),
(19, 4, 'CAFTAN', '2020-02-17 11:37:21', NULL),
(20, 4, 'INDIAN GOWN', '2020-02-17 11:37:35', NULL),
(21, 4, 'FEMALE TROUSEN', '2020-02-17 11:38:05', NULL),
(22, 4, 'MALE TROUSEN', '2020-02-17 11:38:15', NULL),
(23, 5, 'NIGERIA WAX', '2020-02-17 11:40:10', NULL),
(24, 5, 'SUPER WAX', '2020-02-17 11:40:21', NULL),
(25, 5, 'DIAMOND', '2020-02-17 11:40:37', NULL),
(26, 6, 'WRIST WATCH', '2020-02-17 11:41:08', NULL),
(27, 6, 'BRACELETS', '2020-02-17 11:41:21', NULL),
(28, 6, 'NECKLESS', '2020-02-17 11:41:35', NULL),
(29, 6, 'RINGS', '2020-02-17 11:41:43', NULL),
(30, 6, 'EAR RINGS', '2020-02-17 11:42:03', NULL),
(31, 7, 'Sandals', '2020-03-20 11:46:42', NULL),
(32, 8, 'FEMALE BAGS', '2020-03-20 12:29:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHANET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-04-29 09:30:40', '', 1),
(24, 'bright@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-02-17 12:17:23', '17-02-2020 05:55:33 PM', 1),
(25, 'bright@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-02-17 14:52:23', NULL, 1),
(26, 'bright@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-02-17 14:57:04', NULL, 1),
(27, 'bright@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-02-17 14:57:49', NULL, 1),
(28, 'bright@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-02-17 14:58:42', NULL, 1),
(29, 'bright@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-02-17 19:00:27', NULL, 1),
(30, 'brightauduochoyoda@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 11:32:33', NULL, 0),
(31, 'bright@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 11:32:54', NULL, 1),
(32, 'bright@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 11:42:59', '20-03-2020 04:23:43 PM', 1),
(33, 'bright@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-03-20 12:49:51', '20-03-2020 05:37:50 PM', 1),
(34, 'brightauduochoyoda@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2021-02-03 11:06:11', NULL, 0),
(35, 'bright@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2021-02-03 11:07:30', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `useN`
--

CREATE TABLE IF NOT EXISTS `useN` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHANET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `useN`
--

INSERT INTO `useN` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'Audu Ochoyoda Bright', 'bright@gmail.com', 813325594, '9389c2043f5e48d5ed9d97f53e7d40a6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-17 12:09:31', NULL),
(5, 'Audu Ochoyoda Bright', 'bright@gmail.com', 813325594, 'brightest21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-17 12:13:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHANET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 4, '2020-03-20 11:50:59');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
