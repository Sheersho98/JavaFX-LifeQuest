-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2019 at 06:35 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lifequest`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `act_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `activity_name` varchar(40) NOT NULL,
  `hours_Spent` double(4,2) NOT NULL DEFAULT 0.00,
  `xp_Gained` double(6,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`act_id`, `username`, `activity_name`, `hours_Spent`, `xp_Gained`) VALUES
(29, 'iceQueen44', 'time tester 3', 7.48, 37.32);

-- --------------------------------------------------------

--
-- Table structure for table `group_activity`
--

CREATE TABLE `group_activity` (
  `group_act_id` int(11) NOT NULL,
  `act_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_activity`
--

INSERT INTO `group_activity` (`group_act_id`, `act_name`) VALUES
(3, 'bowling'),
(4, ''),
(5, 'work'),
(6, 'conquer the highlands'),
(7, 'concert'),
(8, 'skating'),
(9, 'something spicy'),
(10, 'asfasd'),
(11, 'dungeons and dragons'),
(12, 'secret hitler'),
(13, 'swimming');

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `username` varchar(50) NOT NULL,
  `group_act_id` int(11) NOT NULL,
  `grp_xp_gained` double(6,2) NOT NULL,
  `grp_hours_spent` double(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`username`, `group_act_id`, `grp_xp_gained`, `grp_hours_spent`) VALUES
('latticelettuce', 6, 0.67, 0.08),
('hihello', 7, 0.67, 0.08),
('test', 7, 0.67, 0.08),
('hihello', 8, 1.33, 0.17),
('tester', 8, 1.33, 0.17),
('latticelettuce', 9, 0.67, 0.08),
('test', 10, 0.67, 0.08),
('hihello', 11, 0.13, 0.02),
('latticelettuce', 11, 0.13, 0.02),
('hihello', 12, 0.13, 0.02),
('latticelettuce', 12, 0.13, 0.02),
('hihello', 13, 0.13, 0.02),
('latticelettuce', 13, 0.13, 0.02);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `pass`) VALUES
(3, 'iceQueen44', '1234'),
(4, 'latticelettuce', '1234'),
(6, 'iceQueen44', 'asdf'),
(9, 'latticelettuce', 'cabbage'),
(14, 'test', 'test'),
(15, 'tester', 'tester'),
(16, 'iceQueen44', 'cool'),
(17, 'latticelettuce', 'green'),
(18, 'hihello', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `users` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `region` varchar(40) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` int(100) NOT NULL DEFAULT 0,
  `total_XP` double(5,2) NOT NULL DEFAULT 0.00,
  `bonus_xp` double(6,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`users`, `password`, `region`, `dob`, `sex`, `email`, `level`, `total_XP`, `bonus_xp`) VALUES
('hihello', '49f68a5c8493ec2c0bf489821c21fc3b', 'tunisia', '1988-02-10', 'M', 'hi@gmail.com', 0, 32.39, 30.00),
('iceQueen44', 'b1f4f9a523e36fd969f4573e25af4540', 'UK', '1998-01-01', 'F', 'iceQ@gmail.com', 0, 210.88, 210.00),
('latticelettuce', '9f27410725ab8cc8854a2769c7a516b8', 'USA', '1999-01-01', 'M', 'latlet@gmail.com', 0, 31.73, 30.00),
('test', '098f6bcd4621d373cade4e832627b4f6', 'test', '1990-01-01', 'F', 'test@test.com', 0, 1.34, 0.00),
('tester', 'f5d1278e8109edd94e1e4197e04873b9', 'test', '1990-01-01', 'F', '5@gmail.com', 0, 1.33, 0.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`act_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `group_activity`
--
ALTER TABLE `group_activity`
  ADD PRIMARY KEY (`group_act_id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`group_act_id`,`username`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`users`),
  ADD KEY `password` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `act_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `group_activity`
--
ALTER TABLE `group_activity`
  MODIFY `group_act_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`users`);

--
-- Constraints for table `group_members`
--
ALTER TABLE `group_members`
  ADD CONSTRAINT `group_members_ibfk_1` FOREIGN KEY (`group_act_id`) REFERENCES `group_activity` (`group_act_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
