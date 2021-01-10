-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2020 at 06:09 AM
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
CREATE DATABASE IF NOT EXISTS `projec` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projec`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `pin` varchar(45) NOT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `jan` varchar(45) DEFAULT '0',
  `feb` varchar(45) DEFAULT '0',
  `mar` varchar(45) DEFAULT '0',
  `aprl` varchar(45) DEFAULT '0',
  `may` varchar(45) DEFAULT '0',
  `june` varchar(45) DEFAULT '0',
  `july` varchar(45) DEFAULT '0',
  `aug` varchar(45) DEFAULT '0',
  `sep` varchar(45) DEFAULT '0',
  `oct` varchar(45) DEFAULT '0',
  `nov` varchar(45) DEFAULT '0',
  `dec` varchar(45) DEFAULT '0',
  `year` varchar(45) NOT NULL DEFAULT '2020',
  `study_year` varchar(45) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `pin`, `branch`, `jan`, `feb`, `mar`, `aprl`, `may`, `june`, `july`, `aug`, `sep`, `oct`, `nov`, `dec`, `year`, `study_year`) VALUES
(1, '16551A0560', 'cse', '45', '45', '75', '75', '80', '65', '45', '50', '75', '67', '85', '78', '2020', '1'),
(2, '16551A0501', 'cse', '30', '75', '75', '55', '65', '76', '87', '66', '57', '45', '70', '70', '2020', '1'),
(3, '16551A0526', 'cse', '70', '98', '80', '75', '90', '75', '70', '65', '70', '75', '95', '60', '2020', '1'),
(4, '18551A0525', 'cse', '33', '80', '67', '65', '50', '75', '70', '85', '85', '89', '90', '75', '2020', '3'),
(5, '18551A0526', 'cse', '50', '85', '76', '75', '65', '67', '79', '80', '99', '90', '85', '70', '2020', '3'),
(6, '19551A0501', 'cse', '60', '75', '70', '65', '60', '75', '70', '80', '90', '85', '75', '70', '2020', '4'),
(7, '19551A0502', 'cse', '50', '70', '75', '60', '65', '70', '60', '60', '75', '70', '70', '75', '2020', '4'),
(8, '19551A0503', 'cse', '40', '60', '55', '50', '50', '65', '50', '55', '65', '60', '70', '45', '2020', '4'),
(9, '16551A0505', 'cse', '54', '75', '65', '60', '70', '75', '75', '65', '60', '75', '80', '70', '2020', '1'),
(10, '16551A0402', 'ece', '50', '55', '60', '55', '65', '60', '54', '60', '55', '70', '65', '60', '2020', '1'),
(10, '16551A0403', 'ece', '50', '55', '60', '55', '65', '60', '54', '60', '55', '70', '65', '60', '2020', '1'),
(10, '16551A0520', 'cse', '45', '55', '60', '55', '65', '60', '54', '60', '55', '70', '65', '60', '2020', '1'),
(11, '16551A0401', 'ece', '60', '65', '70', '65', '70', '60', '60', '65', '50', '55', '65', '70', '2020', '1'),
(12, '17551A0505', 'cse', '70', '50', '70', '90', '80', '67', '65', '75', '85', '80', '87', '90', '2020', '2'),
(13, '19551A0506', 'cse', '50', '60', '40', '43', '43', '0', '0', '45', '60', '30', '35', '50', '2020', '4'),
(14, '19551A0504', 'cse', '45', '60', '75', '80', '70', '60', '40', '30', '25', '40', '50', '70', '2020', '1'),
(15, '19551A0505', 'cse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020', '4'),
(16, '19551A0506', 'cse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020', '4'),
(17, '19551A0507', 'cse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020', '4'),
(18, '19551A0508', 'cse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020', '4'),
(19, '19551A0509', 'cse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020', '4'),
(20, '19551A0510', 'cse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020', '4'),
(21, '19551A0601', 'ece', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020', '4'),
(22, '19551A0602', 'ece', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020', '4'),
(23, '19551A0603', 'ece', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020', '4'),
(24, '19551A0604', 'ece', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020', '4'),
(25, '19551A0605', 'ece', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020', '4');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_civil`
--

CREATE TABLE `first_year_civil` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'first_year_civil',
  `year` varchar(45) DEFAULT 'first_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first_year_civil`
--

INSERT INTO `first_year_civil` (`ID`, `PIN`, `Name`, `attendance`, `Marks`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `branch`, `year`) VALUES
(1, '16551A0526', 'as', '85', 70, 50, 70, 90, 70, 100, 'first_year_civil', 'first_year_'),
(2, '16551A0505', 'ad', '80', 75, 70, 80, 75, 80, 90, 'first_year_civil', 'first_year_'),
(3, '16551A0501', 'asd', '50', 34, 80, 55, 75, 67, 67, 'first_year_civil', 'first_year_'),
(4, '16551A0502', 'xyz', '80', 90, 60, 65, 85, 87, 88, 'first_year_civil', 'first_year_'),
(5, '16551A0503', 'abc', '90', 90, 75, 89, 90, 56, 55, 'first_year_civil', 'first_year_'),
(6, '16551A0504', 'ab', '20', 30, 90, 70, 80, 74, 77, 'first_year_civil', 'first_year_');

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
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'first_year_cse',
  `year` varchar(45) DEFAULT 'first_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first_year_cse`
--

INSERT INTO `first_year_cse` (`ID`, `PIN`, `Name`, `attendance`, `Marks`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `branch`, `year`) VALUES
(1, '16551A0526', 'Geddada Yaswanth', '85', 70, 50, 70, 90, 70, 100, 'first_year_cse', 'first_year_'),
(2, '16551A0505', 'Animireddy Murali', '80', 75, 70, 80, 75, 80, 90, 'first_year_cse', 'first_year_'),
(3, '16551A0520', 'mun', '50', 75, 50, 20, 30, 40, 45, 'first_year_cse', 'first_year_');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_ece`
--

CREATE TABLE `first_year_ece` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'first_year_ece',
  `year` varchar(45) DEFAULT 'first_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first_year_ece`
--

INSERT INTO `first_year_ece` (`ID`, `PIN`, `Name`, `attendance`, `Marks`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `branch`, `year`) VALUES
(1, '16551A0401', 'akshay', '100', 100, 50, 70, 90, 70, 100, 'first_year_ece', 'first_year_'),
(2, '16551A0402', 'varun', '50', 34, 80, 55, 75, 67, 60, 'first_year_ece', 'first_year_'),
(3, '16551A0403', 'ranbir', '60', 70, 50, 60, 70, 60, 50, 'first_year_ece', 'first_year_');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_eee`
--

CREATE TABLE `first_year_eee` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'first_year_eee',
  `year` varchar(45) DEFAULT 'first_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first_year_eee`
--

INSERT INTO `first_year_eee` (`ID`, `PIN`, `Name`, `attendance`, `Marks`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `branch`, `year`) VALUES
(1, '16551A0526', 'as', '85', 70, 50, 70, 90, 70, 100, 'first_year_eee', 'first_year_'),
(2, '16551A0505', 'ad', '80', 75, 70, 80, 75, 80, 90, 'first_year_eee', 'first_year_'),
(3, '16551A0501', 'asd', '50', 34, 80, 55, 75, 67, 67, 'first_year_eee', 'first_year_'),
(4, '16551A0502', 'xyz', '80', 90, 60, 65, 85, 87, 88, 'first_year_eee', 'first_year_'),
(5, '16551A0503', 'abc', '90', 90, 75, 89, 90, 56, 55, 'first_year_eee', 'first_year_'),
(6, '16551A0504', 'ab', '20', 30, 90, 70, 80, 74, 77, 'first_year_eee', 'first_year_');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_mech`
--

CREATE TABLE `first_year_mech` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'first_year_mech',
  `year` varchar(45) DEFAULT 'first_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first_year_mech`
--

INSERT INTO `first_year_mech` (`ID`, `PIN`, `Name`, `attendance`, `Marks`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `branch`, `year`) VALUES
(1, '16551A0526', 'as', '85', 70, 50, 70, 90, 70, 100, 'first_year_MECH', 'first_year_'),
(2, '16551A0505', 'ad', '80', 75, 70, 80, 75, 80, 90, 'first_year_MECH', 'first_year_'),
(3, '16551A0501', 'asd', '50', 34, 80, 55, 75, 67, 67, 'first_year_MECH', 'first_year_'),
(4, '16551A0502', 'xyz', '80', 90, 60, 65, 85, 87, 88, 'first_year_MECH', 'first_year_'),
(5, '16551A0503', 'abc', '90', 90, 75, 89, 90, 56, 55, 'first_year_MECH', 'first_year_'),
(6, '16551A0504', 'ab', '20', 30, 90, 70, 80, 74, 77, 'first_year_MECH', 'first_year_');

-- --------------------------------------------------------

--
-- Table structure for table `fourth_year_civil`
--

CREATE TABLE `fourth_year_civil` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'fourth_year_civil',
  `year` varchar(45) DEFAULT 'fourth_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fourth_year_cse`
--

CREATE TABLE `fourth_year_cse` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'fourth_year_cse',
  `year` varchar(45) DEFAULT 'fourth_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fourth_year_cse`
--

INSERT INTO `fourth_year_cse` (`ID`, `PIN`, `Name`, `attendance`, `Marks`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `branch`, `year`) VALUES
(1, '19551A0501', 'prathyusha', '90', 75, 80, 90, 75, 70, 80, 'fourth_year_cse', 'fourth_year_'),
(2, '19551A0502', 'karishma', '85', 70, 75, 70, 89, 75, 65, 'fourth_year_cse', 'fourth_year_'),
(3, '19551A0503', 'raju', '50', 60, 65, 60, 56, 68, 50, 'fourth_year_cse', 'fourth_year_'),
(4, '19551A0504', 'surya', '40', 55, 20, 30, 25, 30, 20, 'fourth_year_cse', 'fourth_year_'),
(5, '19551A0505', 'A Murali', '50', 50, 60, 40, 50, 60, 65, 'fourth_year_cse', 'fourth_year_'),
(6, '19551A0506', 'R Ajay', '85', 75, 80, 75, 80, 70, 75, 'fourth_year_cse', 'fourth_year_'),
(7, '19551A0507', 'Santhi', '50', 50, 40, 54, 40, 30, 40, 'fourth_year_cse', 'fourth_year_'),
(8, '19551A0508', 'K BalaKrishna', '80', 75, 70, 85, 80, 75, 70, 'fourth_year_cse', 'fourth_year_'),
(9, '19551A0509', 'K Pavan ', '40', 40, 45, 50, 40, 45, 60, 'fourth_year_cse', 'fourth_year_'),
(10, '19551A0510', 'Satya', '90', 70, 60, 75, 70, 80, 85, 'fourth_year_cse', 'fourth_year_');

-- --------------------------------------------------------

--
-- Table structure for table `fourth_year_ece`
--

CREATE TABLE `fourth_year_ece` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'fourth_year_ece',
  `year` varchar(45) DEFAULT 'fourth_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fourth_year_ece`
--

INSERT INTO `fourth_year_ece` (`ID`, `PIN`, `Name`, `attendance`, `Marks`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `branch`, `year`) VALUES
(1, '19551A0601', 'G Yaswanth', '75', 70, 70, 65, 60, 55, 60, 'fourth_year_ece', 'fourth_year_'),
(2, '19551A0602', 'B Kiran', '40', 50, 50, 40, 35, 40, 40, 'fourth_year_ece', 'fourth_year_'),
(3, '19551A0603', 'R Ganesh', '60', 70, 60, 65, 70, 50, 60, 'fourth_year_ece', 'fourth_year_'),
(4, '19551A0604', 'G Bala Teja', '40', 45, 40, 35, 39, 60, 50, 'fourth_year_ece', 'fourth_year_'),
(5, '19551A0605', 'K Ajay', '80', 75, 70, 80, 75, 75, 70, 'fourth_year_ece', 'fourth_year_');

-- --------------------------------------------------------

--
-- Table structure for table `fourth_year_eee`
--

CREATE TABLE `fourth_year_eee` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'fourth_year_eee',
  `year` varchar(45) DEFAULT 'fourth_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fourth_year_mech`
--

CREATE TABLE `fourth_year_mech` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'fourth_year_mech',
  `year` varchar(45) DEFAULT 'fourth_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `placement_test`
--

CREATE TABLE `placement_test` (
  `id` int(11) NOT NULL,
  `pin` varchar(45) NOT NULL,
  `coding` int(11) DEFAULT NULL,
  `softskills` int(11) DEFAULT NULL,
  `course_knowledge` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placement_test`
--

INSERT INTO `placement_test` (`id`, `pin`, `coding`, `softskills`, `course_knowledge`) VALUES
(1, '18551A0525', 60, 55, 75),
(2, '18551A0526', 75, 75, 80),
(3, '19551A0501', 80, 80, 85),
(4, '19551A0502', 75, 70, 76),
(5, '19551A0503', 40, 45, 40),
(6, '19551A0504', 80, 80, 75),
(7, '19551A0505', 50, 40, 35),
(8, '19551A0506', 90, 80, 80),
(9, '19551A0507', 50, 40, 30),
(10, '19551A0508', 70, 60, 85),
(11, '19551A0509', 40, 40, 40),
(12, '19551A0510', 80, 70, 85),
(13, '19551A0601', 80, 80, 70),
(14, '19551A0602', 70, 90, 60),
(15, '19551A0603', 70, 75, 70),
(16, '19551A0604', 40, 40, 40),
(17, '19551A0605', 80, 80, 80);

-- --------------------------------------------------------

--
-- Table structure for table `second_year_civil`
--

CREATE TABLE `second_year_civil` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'second_year_civil',
  `year` varchar(45) DEFAULT 'second_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `second_year_cse`
--

CREATE TABLE `second_year_cse` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'second_year_cse',
  `year` varchar(45) DEFAULT 'second_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `second_year_cse`
--

INSERT INTO `second_year_cse` (`ID`, `PIN`, `Name`, `attendance`, `Marks`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `branch`, `year`) VALUES
(1, '17551A0505', 'raghava', '90', 90, 75, 70, 80, 90, 90, 'second_year_cse', 'second_year_');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_ece`
--

CREATE TABLE `second_year_ece` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'second_year_ece',
  `year` varchar(45) DEFAULT 'second_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `second_year_eee`
--

CREATE TABLE `second_year_eee` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'second_year_eee',
  `year` varchar(45) DEFAULT 'second_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `second_year_eee`
--

INSERT INTO `second_year_eee` (`ID`, `PIN`, `Name`, `attendance`, `Marks`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `branch`, `year`) VALUES
(1, '16551A0526', 'as', '85', 70, 50, 70, 90, 70, 100, 'second_year_eee', 'second_year_'),
(2, '16551A0505', 'ad', '80', 75, 70, 80, 75, 80, 90, 'second_year_eee', 'second_year_'),
(3, '16551A0501', 'asd', '50', 34, 80, 55, 75, 67, 67, 'second_year_eee', 'second_year_'),
(4, '16551A0502', 'xyz', '80', 90, 60, 65, 85, 87, 88, 'second_year_eee', 'second_year_'),
(5, '16551A0503', 'abc', '90', 90, 75, 89, 90, 56, 55, 'second_year_eee', 'second_year_'),
(6, '16551A0504', 'ab', '20', 30, 90, 70, 80, 74, 77, 'second_year_eee', 'second_year_');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_mech`
--

CREATE TABLE `second_year_mech` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'second_year_mech',
  `year` varchar(45) DEFAULT 'second_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Sid` int(11) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `SName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Sid`, `user_id`, `password`, `role`, `SName`) VALUES
(1, '1234', '1234', 'teach', 'Ravi Kumar'),
(2, '1000', '1000', 'admin', 'yashu');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_civil`
--

CREATE TABLE `third_year_civil` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'third_year_civil',
  `year` varchar(45) DEFAULT 'third_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `third_year_civil`
--

INSERT INTO `third_year_civil` (`ID`, `PIN`, `Name`, `attendance`, `Marks`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `branch`, `year`) VALUES
(1, '16551A0526', 'as', '85', 70, 50, 70, 90, 70, 100, 'third_year_civil', 'third_year_'),
(2, '16551A0505', 'ad', '80', 75, 70, 80, 75, 80, 90, 'third_year_civil', 'third_year_'),
(3, '16551A0501', 'asd', '50', 34, 80, 55, 75, 67, 67, 'third_year_civil', 'third_year_'),
(4, '16551A0502', 'xyz', '80', 90, 60, 65, 85, 87, 88, 'third_year_civil', 'third_year_'),
(5, '16551A0503', 'abc', '90', 90, 75, 89, 90, 56, 55, 'third_year_civil', 'third_year_'),
(6, '16551A0504', 'ab', '20', 30, 90, 70, 80, 74, 77, 'third_year_civil', 'third_year_');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_cse`
--

CREATE TABLE `third_year_cse` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'third_year_cse',
  `year` varchar(45) DEFAULT 'third_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `third_year_cse`
--

INSERT INTO `third_year_cse` (`ID`, `PIN`, `Name`, `attendance`, `Marks`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `branch`, `year`) VALUES
(1, '18551A0525', 'amir', '75', 80, 75, 80, 85, 70, 75, 'third_year_cse', 'third_year_'),
(2, '18551A0526', 'salman', '80', 75, 70, 80, 90, 70, 76, 'third_year_cse', 'third_year_');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_ece`
--

CREATE TABLE `third_year_ece` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'third_year_ece',
  `year` varchar(45) DEFAULT 'third_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `third_year_eee`
--

CREATE TABLE `third_year_eee` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'third_year_eee',
  `year` varchar(45) DEFAULT 'third_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `third_year_mech`
--

CREATE TABLE `third_year_mech` (
  `ID` int(11) NOT NULL,
  `PIN` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT '0',
  `Marks` int(11) DEFAULT 0,
  `sub1` int(11) DEFAULT 0,
  `sub2` int(11) DEFAULT 0,
  `sub3` int(11) DEFAULT 0,
  `sub4` int(11) DEFAULT 0,
  `sub5` int(11) DEFAULT 0,
  `branch` varchar(45) DEFAULT 'third_year_mech',
  `year` varchar(45) DEFAULT 'third_year_'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`,`pin`);

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
-- Indexes for table `fourth_year_civil`
--
ALTER TABLE `fourth_year_civil`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `fourth_year_cse`
--
ALTER TABLE `fourth_year_cse`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `fourth_year_ece`
--
ALTER TABLE `fourth_year_ece`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `fourth_year_eee`
--
ALTER TABLE `fourth_year_eee`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `fourth_year_mech`
--
ALTER TABLE `fourth_year_mech`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `placement_test`
--
ALTER TABLE `placement_test`
  ADD PRIMARY KEY (`id`,`pin`);

--
-- Indexes for table `second_year_civil`
--
ALTER TABLE `second_year_civil`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `second_year_cse`
--
ALTER TABLE `second_year_cse`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `second_year_ece`
--
ALTER TABLE `second_year_ece`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `second_year_eee`
--
ALTER TABLE `second_year_eee`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `second_year_mech`
--
ALTER TABLE `second_year_mech`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Sid`,`user_id`);

--
-- Indexes for table `third_year_civil`
--
ALTER TABLE `third_year_civil`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `third_year_cse`
--
ALTER TABLE `third_year_cse`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `third_year_ece`
--
ALTER TABLE `third_year_ece`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `third_year_eee`
--
ALTER TABLE `third_year_eee`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- Indexes for table `third_year_mech`
--
ALTER TABLE `third_year_mech`
  ADD PRIMARY KEY (`ID`,`PIN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `first_year_civil`
--
ALTER TABLE `first_year_civil`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `first_year_cse`
--
ALTER TABLE `first_year_cse`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `first_year_ece`
--
ALTER TABLE `first_year_ece`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `first_year_eee`
--
ALTER TABLE `first_year_eee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `first_year_mech`
--
ALTER TABLE `first_year_mech`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fourth_year_civil`
--
ALTER TABLE `fourth_year_civil`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fourth_year_cse`
--
ALTER TABLE `fourth_year_cse`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `fourth_year_ece`
--
ALTER TABLE `fourth_year_ece`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fourth_year_eee`
--
ALTER TABLE `fourth_year_eee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fourth_year_mech`
--
ALTER TABLE `fourth_year_mech`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placement_test`
--
ALTER TABLE `placement_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `second_year_civil`
--
ALTER TABLE `second_year_civil`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `second_year_cse`
--
ALTER TABLE `second_year_cse`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `second_year_ece`
--
ALTER TABLE `second_year_ece`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `second_year_eee`
--
ALTER TABLE `second_year_eee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `second_year_mech`
--
ALTER TABLE `second_year_mech`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `third_year_civil`
--
ALTER TABLE `third_year_civil`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `third_year_cse`
--
ALTER TABLE `third_year_cse`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `third_year_ece`
--
ALTER TABLE `third_year_ece`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `third_year_eee`
--
ALTER TABLE `third_year_eee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `third_year_mech`
--
ALTER TABLE `third_year_mech`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
