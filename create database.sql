-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2020 at 09:05 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_information`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `Department_id` int(11) NOT NULL,
  `Department_name` varchar(30) NOT NULL,
  `Manager_id` int(11) DEFAULT NULL,
  `Location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`Department_id`, `Department_name`, `Manager_id`, `Location_id`) VALUES
(10, 'Administration', 200, 1700),
(20, 'Marketing', 201, 1800),
(50, 'Shipping', 124, 1500),
(60, 'IT', 103, 1400),
(80, 'Sales', 149, 2500),
(90, 'Executive', 100, 1700),
(110, 'Accounting', 205, 1700),
(190, 'Contracting', NULL, 1700);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Employee_id` int(11) NOT NULL,
  `First_name` varchar(20) DEFAULT NULL,
  `Last_name` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Hire_Date` date NOT NULL,
  `Job_id` varchar(10) DEFAULT NULL,
  `Salary` double DEFAULT NULL,
  `Commission_pct` double DEFAULT NULL,
  `Manager_id` int(11) DEFAULT NULL,
  `Department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Employee_id`, `First_name`, `Last_name`, `Email`, `Phone_Number`, `Hire_Date`, `Job_id`, `Salary`, `Commission_pct`, `Manager_id`, `Department_id`) VALUES
(100, 'Steven', 'king', 'SKING', '215.123.4568', '2008-09-21', 'AD_VP', 24000, NULL, NULL, 90),
(101, 'Neena', 'Kochar', 'NKOCHAR', '515.123.4568', '2008-09-21', 'AD_VP', 17000, NULL, 100, 90),
(102, 'Lex', 'De Haan', 'DEHAAN', '515.123.4569', '2009-01-13', 'AD_VP', 17000, NULL, 100, 90),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '2008-01-03', 'IT_PROG', 9000, NULL, 102, 60),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '2009-05-21', 'IT_PROG', 6000, NULL, 103, 60),
(107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '2008-02-07', 'IT_PROG', 4200, NULL, 103, 60),
(124, 'Kevin', 'Mourgos', 'KMORGOS', '650.123.5234', '2012-11-16', 'ST_MAN', 5800, NULL, 100, 50),
(141, 'Treena', 'Rajs', 'RRAJS', '650.121.5234', '2004-10-17', 'ST_CLERK', 3500, NULL, 124, 50),
(142, 'Curtis', 'Davies', 'CDAVIES', '121.123.5234', '2007-01-29', 'ST_CLERK', 3100, NULL, 124, 50),
(143, 'Randall', 'Matos', 'RMATOS', '121.123.5234', '2008-05-15', 'ST_CLERK', 2600, NULL, 124, 50),
(144, 'Peter', 'Vargas', 'PVARGAS', '121.123.5234', '2008-07-09', 'ST_CLERK', 2500, NULL, 124, 50),
(149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '44.1344.429018', '2014-01-29', 'SA_MAN', 10500, 0.2, 100, 80),
(174, 'Ellen', 'Abel', 'EABEL', '44.1644.429017', '2004-05-11', 'SA_REP', 11000, 0.3, 149, 80),
(176, 'Jnathon', 'Taylor', 'JTAILOR', '44.1644.429021', '2008-03-24', 'SA_MAN', 8600, 0.2, 149, 80),
(178, 'Kimberely', 'Grant', 'KGRANT', '44.1644.429023', '2009-05-24', 'SA_MAN', 7000, 0.15, 149, NULL),
(200, 'Jennifer', 'Whalem', 'JWHALEN', '515.123.4444', '2003-09-05', 'AD_ASST', 4400, NULL, 101, 10),
(201, 'Michael', 'Hartstein', 'MHARSTEIN', '515.123.5555', '2008-02-17', 'MK_MAN', 13000, NULL, 100, 20),
(202, 'Pat', 'Fay', 'PFAY', '603.123.6666', '2010-08-07', 'MK_REP', 6000, NULL, 201, 20),
(205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8050', '2007-06-17', 'AC_MGR', 12000, NULL, 101, 110),
(206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', '2007-06-07', 'AC_ACCOUNT', 8300, NULL, 205, 110);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` varchar(10) NOT NULL,
  `job_title` varchar(35) DEFAULT NULL,
  `min_salary` int(11) DEFAULT NULL,
  `max_salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `job_title`, `min_salary`, `max_salary`) VALUES
('AC_ACCOUNT', 'Public Accountant', 4200, 9000),
('AC_MGR', 'Account Manager', 8200, 16000),
('AD_ASST', 'Administration Assistant', 3000, 6000),
('AD_PRES', 'President', 20000, 40000),
('AD_VP', 'Administration Vice President', 15000, 30000),
('IT_PROG', 'Programmer', 4000, 10000),
('MK_MAN', 'Marketing Manager', 9000, 15000),
('MK_REP', 'Marketing Representative', 4000, 9000),
('SA_MAN', 'Sales Manager', 10000, 20000),
('SA_REP', 'Sales Representative', 6000, 12000),
('ST_CLERK', 'Stock Clerk', 2000, 5000),
('ST_MAN', 'Stock Manager', 5500, 8500);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `Location_id` int(11) NOT NULL,
  `Street_Address` varchar(40) DEFAULT NULL,
  `Postal_Code` varchar(12) DEFAULT NULL,
  `City` varchar(30) NOT NULL,
  `State_Province` varchar(25) DEFAULT NULL,
  `Country_ID` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`Location_id`, `Street_Address`, `Postal_Code`, `City`, `State_Province`, `Country_ID`) VALUES
(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
(1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'),
(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
(1800, '460 Bloor St. W.', 'ON M5S 1X8', 'Toronto', 'Ontario', 'CA'),
(2500, 'Magdalen Centre- The Oxford Sc. Park', 'OX9 9ZB', 'OXford', 'Oxford', 'UK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`Department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Employee_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`Location_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
