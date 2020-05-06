-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 04:39 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `seatnumber`
--

CREATE TABLE `seatnumber` (
  `SeatNumber_Id` int(11) NOT NULL,
  `SeatRow_id` int(11) NOT NULL,
  `Seat_number_1` int(11) NOT NULL,
  `Seat_number_2` int(11) NOT NULL,
  `Seat_number_3` int(11) NOT NULL,
  `Seat_number_4` int(11) NOT NULL,
  `Seat_number_5` int(11) NOT NULL,
  `Seat_number_6` int(11) NOT NULL,
  `Seat_number_7` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `seatnumber`:
--   `SeatRow_id`
--       `seat_row` -> `SeatRow_Id`
--

--
-- Dumping data for table `seatnumber`
--

INSERT INTO `seatnumber` (`SeatNumber_Id`, `SeatRow_id`, `Seat_number_1`, `Seat_number_2`, `Seat_number_3`, `Seat_number_4`, `Seat_number_5`, `Seat_number_6`, `Seat_number_7`) VALUES
(1, 1, 1, 2, 3, 4, 5, 6, 7),
(2, 2, 8, 9, 10, 11, 12, 13, 14),
(3, 3, 15, 16, 17, 18, 19, 20, 21),
(4, 4, 22, 23, 24, 25, 26, 27, 28),
(5, 5, 29, 30, 31, 32, 33, 34, 35),
(6, 6, 36, 37, 38, 39, 40, 41, 42),
(7, 7, 43, 44, 45, 46, 47, 48, 49),
(8, 8, 50, 51, 52, 53, 54, 55, 56),
(9, 9, 57, 58, 59, 60, 61, 62, 63),
(10, 10, 64, 65, 66, 67, 68, 69, 70),
(11, 11, 71, 72, 73, 75, 76, 77, 78),
(12, 12, 78, 79, 80, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `seatstatus`
--

CREATE TABLE `seatstatus` (
  `ID` int(11) NOT NULL,
  `SeatRow_id` int(11) NOT NULL,
  `SeatNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `seatstatus`:
--

--
-- Dumping data for table `seatstatus`
--

INSERT INTO `seatstatus` (`ID`, `SeatRow_id`, `SeatNumber`, `status`) VALUES
(1, 1, 1, 'No'),
(2, 1, 2, 'No'),
(3, 1, 3, 'No'),
(4, 1, 4, 'No'),
(5, 1, 5, 'No'),
(6, 1, 6, 'No'),
(7, 1, 7, 'No'),
(8, 2, 8, 'Yes'),
(9, 2, 9, 'Yes'),
(10, 2, 10, 'Yes'),
(11, 2, 11, 'Yes'),
(12, 2, 12, 'Yes'),
(13, 2, 13, 'Yes'),
(14, 2, 14, 'Yes'),
(15, 3, 15, 'Yes'),
(16, 3, 16, 'Yes'),
(17, 3, 17, 'Yes'),
(18, 3, 18, 'Yes'),
(19, 3, 19, 'Yes'),
(20, 3, 20, 'Yes'),
(21, 3, 21, 'Yes'),
(22, 4, 22, 'Yes'),
(23, 4, 23, 'Yes'),
(24, 4, 24, 'Yes'),
(25, 4, 25, 'Yes'),
(26, 4, 26, 'Yes'),
(27, 4, 27, 'Yes'),
(28, 4, 28, 'Yes'),
(29, 5, 29, 'Yes'),
(30, 5, 30, 'Yes'),
(31, 5, 31, 'Yes'),
(32, 5, 32, 'Yes'),
(33, 5, 33, 'Yes'),
(34, 5, 34, 'Yes'),
(35, 5, 35, 'Yes'),
(36, 6, 36, 'Yes'),
(37, 6, 37, 'Yes'),
(38, 6, 38, 'Yes'),
(39, 6, 39, 'Yes'),
(40, 6, 40, 'Yes'),
(41, 6, 41, 'Yes'),
(42, 6, 42, 'Yes'),
(43, 7, 43, 'Yes'),
(44, 7, 44, 'Yes'),
(45, 7, 45, 'Yes'),
(46, 7, 46, 'Yes'),
(47, 7, 47, 'Yes'),
(48, 7, 48, 'Yes'),
(49, 7, 49, 'Yes'),
(50, 8, 50, 'Yes'),
(51, 8, 51, 'Yes'),
(52, 8, 52, 'Yes'),
(53, 8, 53, 'Yes'),
(54, 8, 54, 'Yes'),
(55, 8, 55, 'Yes'),
(56, 8, 56, 'Yes'),
(57, 9, 57, 'Yes'),
(58, 9, 58, 'Yes'),
(59, 9, 59, 'Yes'),
(60, 9, 60, 'Yes'),
(61, 9, 61, 'Yes'),
(62, 9, 62, 'Yes'),
(63, 9, 63, 'Yes'),
(64, 10, 64, 'Yes'),
(65, 10, 65, 'Yes'),
(66, 10, 66, 'Yes'),
(67, 10, 67, 'Yes'),
(68, 10, 68, 'Yes'),
(69, 10, 69, 'Yes'),
(70, 10, 70, 'Yes'),
(71, 11, 71, 'Yes'),
(72, 11, 72, 'Yes'),
(73, 11, 73, 'Yes'),
(74, 11, 74, 'Yes'),
(75, 11, 75, 'Yes'),
(76, 11, 76, 'Yes'),
(77, 11, 77, 'Yes'),
(78, 12, 78, 'Yes'),
(79, 12, 79, 'Yes'),
(80, 12, 80, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `seat_row`
--

CREATE TABLE `seat_row` (
  `SeatRow_Id` int(11) NOT NULL,
  `SeatRow_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `seat_row`:
--

--
-- Dumping data for table `seat_row`
--

INSERT INTO `seat_row` (`SeatRow_Id`, `SeatRow_1`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `seatnumber`
--
ALTER TABLE `seatnumber`
  ADD PRIMARY KEY (`SeatNumber_Id`),
  ADD KEY `SeatRow_id` (`SeatRow_id`);

--
-- Indexes for table `seatstatus`
--
ALTER TABLE `seatstatus`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `seat_row`
--
ALTER TABLE `seat_row`
  ADD PRIMARY KEY (`SeatRow_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `seatnumber`
--
ALTER TABLE `seatnumber`
  MODIFY `SeatNumber_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `seatstatus`
--
ALTER TABLE `seatstatus`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `seat_row`
--
ALTER TABLE `seat_row`
  MODIFY `SeatRow_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `seatnumber`
--
ALTER TABLE `seatnumber`
  ADD CONSTRAINT `seatnumber_ibfk_1` FOREIGN KEY (`SeatRow_id`) REFERENCES `seat_row` (`SeatRow_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
