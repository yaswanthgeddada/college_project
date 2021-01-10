-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2020 at 09:08 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projec`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `pin` varchar(45) NOT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `attend` int(11) DEFAULT NULL,
  `col_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `pin`, `branch`, `attend`, `col_date`) VALUES
(1, '16551A0560', 'CSE', 0, '2020-01-29');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_civil`
--

CREATE TABLE `first_year_civil` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT NULL,
  `Marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `first_year_cse`
--

CREATE TABLE `first_year_cse` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT NULL,
  `sub2` int(11) DEFAULT NULL,
  `sub3` int(11) DEFAULT NULL,
  `sub4` int(11) DEFAULT NULL,
  `sub5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first_year_cse`
--

INSERT INTO `first_year_cse` (`ID`, `PIN`, `Name`, `attendance`, `Marks`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`) VALUES
(1, '16551A0526', 'Geddada Yaswanth', '85', 70, 50, 70, 90, 70, 100),
(2, '16551A0505', 'Animireddy Murali', '80', 75, 70, 80, 75, 80, 90),
(3, '16551A0501', 'asd', '50', 34, 80, 55, 75, 67, 67),
(4, '16551A0502', 'xyz', '80', 90, 60, 65, 85, 87, 88),
(5, '16551A0503', 'abc', '90', 90, 75, 89, 90, 56, 55),
(6, '16551A0504', 'ab', '20', 30, 90, 70, 80, 74, 77);

-- --------------------------------------------------------

--
-- Table structure for table `first_year_ece`
--

CREATE TABLE `first_year_ece` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT NULL,
  `Marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `first_year_eee`
--

CREATE TABLE `first_year_eee` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT NULL,
  `Marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `first_year_mech`
--

CREATE TABLE `first_year_mech` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT NULL,
  `Marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`,`pin`,`col_date`);

--
-- Indexes for table `first_year_civil`
--
ALTER TABLE `first_year_civil`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `first_year_cse`
--
ALTER TABLE `first_year_cse`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `first_year_ece`
--
ALTER TABLE `first_year_ece`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `first_year_eee`
--
ALTER TABLE `first_year_eee`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `first_year_mech`
--
ALTER TABLE `first_year_mech`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `first_year_civil`
--
ALTER TABLE `first_year_civil`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `first_year_cse`
--
ALTER TABLE `first_year_cse`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `first_year_ece`
--
ALTER TABLE `first_year_ece`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `first_year_eee`
--
ALTER TABLE `first_year_eee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `first_year_mech`
--
ALTER TABLE `first_year_mech`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
