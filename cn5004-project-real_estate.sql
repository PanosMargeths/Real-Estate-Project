-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 09:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cn5004-project-real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `employies`
--

CREATE TABLE `employies` (
  `ID` int(55) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `Salary` int(55) NOT NULL,
  `Taxes` int(55) NOT NULL,
  `Keeps` int(55) NOT NULL DEFAULT 15,
  `Status` varchar(55) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employies`
--

INSERT INTO `employies` (`ID`, `Name`, `Salary`, `Taxes`, `Keeps`, `Status`) VALUES
(1, 'Nikolas', 35000, 15, 15, 'Received'),
(2, 'James', 75000, 25, 15, 'Pending'),
(3, 'kwstas', 35000, 15, 15, 'Pending'),
(4, 'Kois', 15000, 10, 15, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `keeps`
--

CREATE TABLE `keeps` (
  `ID` int(11) NOT NULL,
  `Additional_Keeps_Presentage` int(11) NOT NULL DEFAULT 0,
  `Keeps_Presentage` int(11) NOT NULL DEFAULT 15,
  `AdditionKeeps_Information` varchar(55) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keeps`
--

INSERT INTO `keeps` (`ID`, `Additional_Keeps_Presentage`, `Keeps_Presentage`, `AdditionKeeps_Information`) VALUES
(1, 0, 15, 'None'),
(2, 7, 15, 'Broke Equipement'),
(3, 5, 15, 'Borrow money');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `ID` int(11) NOT NULL,
  `Salary` int(11) NOT NULL,
  `Taxes_Presentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`ID`, `Salary`, `Taxes_Presentage`) VALUES
(1, 20000, 10),
(2, 35000, 15),
(3, 50000, 20),
(4, 65000, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employies`
--
ALTER TABLE `employies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `keeps`
--
ALTER TABLE `keeps`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employies`
--
ALTER TABLE `employies`
  MODIFY `ID` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `keeps`
--
ALTER TABLE `keeps`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
