-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2020 at 04:02 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campanydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE `tbldepartment` (
  `DEPT_ID` int(11) NOT NULL,
  `DEPT_NAME` varchar(255) DEFAULT NULL,
  `MANGR_ID` int(11) DEFAULT NULL,
  `LOC_ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`DEPT_ID`, `DEPT_NAME`, `MANGR_ID`, `LOC_ID`) VALUES
(10, 'ADMINISTRATION', 200, 1700),
(20, 'MARKETING', 201, 1800),
(50, 'SHIPPING', 124, 1500),
(60, 'IT', 103, 1400),
(70, 'PUBLIC RELATIONS', 100, 1700),
(80, 'SALES', 149, 2500),
(90, 'EXECUTIVE', 100, 1700),
(110, 'ACCOUNTING', 205, 1700),
(190, 'CONTRACTING', NULL, 1700),
(400, 'ARCHITECT', 207, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `EMP_ID` int(11) NOT NULL,
  `FNAME` varchar(255) DEFAULT NULL,
  `LNAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `CONTACT` varchar(255) DEFAULT NULL,
  `HIRE_DATE` datetime DEFAULT NULL,
  `JOB_ID` varchar(255) DEFAULT NULL,
  `SALARY` int(11) DEFAULT NULL,
  `COMM_ID` int(11) DEFAULT NULL,
  `MANGR_ID` int(11) DEFAULT NULL,
  `DEPT_ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`EMP_ID`, `FNAME`, `LNAME`, `EMAIL`, `CONTACT`, `HIRE_DATE`, `JOB_ID`, `SALARY`, `COMM_ID`, `MANGR_ID`, `DEPT_ID`) VALUES
(100, 'Kobe', 'Bryant', 'kbryant', '213-231-2313', '1987-06-17 00:00:00', 'AD_PRESS', 24000, NULL, 100, 90),
(101, 'Jordan', 'Michael', 'Mjordan', '123-1231-212', '1989-09-21 00:00:00', 'AD_VP', 17000, NULL, 100, 90),
(102, 'Benji', 'Hann', 'BHann', '113-2122-2121', '1990-01-13 00:00:00', 'AD_VP', 17000, NULL, 100, 90),
(103, 'Raymund', 'Hunold', 'RHunld', '211-4515-1515', '1991-05-21 00:00:00', 'IT_PROG', 9000, NULL, 102, 60),
(104, 'Diana', 'Belle', 'dBele', '515-541-151', '1999-07-02 00:00:00', 'IT_PROG', 6000, NULL, 103, 60),
(107, 'Diana', 'Sorento', 'dSorento', '515-515-5156', '1999-11-16 00:00:00', 'IT_PROG', 4200, NULL, 103, 60),
(124, 'James', 'BOnd', 'jBond', '559-887-333', '1995-10-17 00:00:00', 'IT_PROG', 5800, NULL, 100, 50),
(141, 'Trenne', 'Rajs', 'tRajs', '212-548-989', '1997-01-29 00:00:00', 'ST_MAN', 3500, NULL, 124, 50),
(142, 'Anne', 'Curtis', 'aCurtis', '333-999-777', '1998-03-15 00:00:00', 'ST_CLERK', 3100, NULL, 124, 50),
(143, 'Randal', 'Matos', 'rMatos', '4444-5654-54', '1998-09-07 00:00:00', 'ST_CLERK', 2600, NULL, 124, 50),
(144, 'Lemon', 'Bernard', 'lenard', '6565-5641-87', '2000-01-10 00:00:00', 'ST_CLERK', 2600, NULL, 124, 50),
(149, 'Ellen', 'Gran', 'eGran', '656-4847-45', '1996-11-05 00:00:00', 'ST_CLERK', 10500, NULL, 100, 50),
(174, 'John', 'Wick', 'jwick', '5988-4556-564', '1999-05-24 00:00:00', 'SA_MAN', 11000, 0, 100, 80),
(176, 'Taylor', 'swift', 'Tswift', '687-695-8754', '1987-09-17 00:00:00', 'SA_REP', 8600, 0, 149, 80),
(178, 'Jinnefer', 'Grant', 'jGrant', '552-6541-897', '1996-02-17 00:00:00', 'SA_REP', 7000, 0, 149, 80),
(200, 'Michael', 'James', 'mWhalen', '2121-5465-541', '1997-08-17 00:00:00', 'SA_REP', 4400, 0, 149, NULL),
(201, 'Gina', 'Harold', 'gHarold', '14564-541-45', '1994-07-07 00:00:00', 'AD_ASST', 13000, NULL, 101, 10),
(205, 'Shelley', 'Fay', 'sFay', '515-215-1156', '1994-07-07 00:00:00', 'MK_MAN', 6000, NULL, 100, 20),
(206, 'William', 'Higgins', 'wHiggins', '566-112-5156', '1995-09-26 00:00:00', 'AC_MGR', 12000, NULL, 201, 20),
(207, 'hatch', 'Glets', 'hGlets', '556-5465-515', '1989-03-07 00:00:00', 'AC_ACCOUNT', 8300, NULL, 101, 110),
(301, 'MELINDA', 'NARDO', 'MEL@YAHO.CP', '3456', '2000-01-10 00:00:00', 'ST_CLERK', 2500, 0, 101, 90);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`DEPT_ID`),
  ADD KEY `LOCATION_ID` (`LOC_ID`),
  ADD KEY `MANAGER_ID` (`MANGR_ID`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD KEY `COMMISSION_ID` (`COMM_ID`),
  ADD KEY `DEPARTMENT_ID` (`DEPT_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`),
  ADD KEY `MANAGER_ID` (`MANGR_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
