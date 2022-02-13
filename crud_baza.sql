-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2022 at 01:42 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `crud_baza`
--

CREATE TABLE `crud_baza` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password_hash` varchar(128) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `adress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud_baza`
--

INSERT INTO `crud_baza` (`id`, `name`, `email`, `password_hash`, `phone`, `adress`) VALUES
(1, 'Nikola Tesla', 'nikolatesla@gmail.com', '123', '0600000000', 'Sestara Marijanovic 17'),
(2, 'Djordje Vajfert', 'djordjevajfert@gmail.com', '1234', '0611111111', 'Dragoljuba Savica BB'),
(3, 'Milutin Milankovic', 'milutinmilankovic@gmail.com', '12345', '0622222222', 'BB'),
(4, 'Nadezda Petrovic', 'nadezdapetrovic@gmail.com', '123456', '0633333333', 'Pesterska 12'),
(5, 'Vuk Karadzic', 'vukkaradzic', '1234567', '0644444444', 'Zmaj Jovina 12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crud_baza`
--
ALTER TABLE `crud_baza`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crud_baza`
--
ALTER TABLE `crud_baza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
