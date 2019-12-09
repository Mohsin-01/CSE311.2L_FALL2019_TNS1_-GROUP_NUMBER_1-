-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2019 at 09:02 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsu robotics society`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogstore`
--

CREATE TABLE `blogstore` (
  `article_key` varchar(150) NOT NULL,
  `NSU_ID` decimal(10,0) NOT NULL,
  `title` varchar(150) NOT NULL,
  `Article` longtext NOT NULL,
  `times` varchar(150) NOT NULL,
  `dates` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogstore`
--

--
-- Table structure for table `chatbox`
--

CREATE TABLE `chatbox` (
  `msg_key` decimal(50,0) NOT NULL,
  `msg` varchar(1000) DEFAULT NULL,
  `nsu_id` varchar(1000) NOT NULL,
  `dates` varchar(100) NOT NULL,
  `times` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbox`
--


--
-- Table structure for table `eventsbox`
--

CREATE TABLE `eventsbox` (
  `events_key` varchar(150) NOT NULL,
  `NSU_ID` decimal(10,0) NOT NULL,
  `etitle` varchar(150) NOT NULL,
  `elink` varchar(1500) NOT NULL,
  `edates` date NOT NULL,
  `times` varchar(150) NOT NULL,
  `dates` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `NSU_ID` decimal(10,0) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `EMAIL` varchar(150) NOT NULL,
  `DEPARTMENT` varchar(150) DEFAULT NULL,
  `SUBJECT` varchar(150) NOT NULL,
  `BIRTH_DATE` date NOT NULL,
  `BIO` varchar(500) DEFAULT NULL,
  `M_PASSWORD` varchar(20) NOT NULL,
  `M_STATUS` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

-- --------------------------------------------------------

--
-- Table structure for table `qaanswer`
--

CREATE TABLE `qaanswer` (
  `ans_key` varchar(150) NOT NULL,
  `qu_key` varchar(150) NOT NULL,
  `NSU_ID` decimal(10,0) NOT NULL,
  `anss` varchar(15000) NOT NULL,
  `times` varchar(150) NOT NULL,
  `dates` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qaanswer`
--

--
-- Table structure for table `qaquestion`
--

CREATE TABLE `qaquestion` (
  `q_key` varchar(150) NOT NULL,
  `NSU_ID` decimal(10,0) NOT NULL,
  `ques` varchar(15000) NOT NULL,
  `times` varchar(150) NOT NULL,
  `dates` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qaquestion`
--

-- Indexes for dumped tables
--

--
-- Indexes for table `blogstore`
--
ALTER TABLE `blogstore`
  ADD PRIMARY KEY (`article_key`);

--
-- Indexes for table `chatbox`
--
ALTER TABLE `chatbox`
  ADD PRIMARY KEY (`msg_key`);

--
-- Indexes for table `eventsbox`
--
ALTER TABLE `eventsbox`
  ADD PRIMARY KEY (`events_key`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`NSU_ID`);

--
-- Indexes for table `qaanswer`
--
ALTER TABLE `qaanswer`
  ADD PRIMARY KEY (`ans_key`);

--
-- Indexes for table `qaquestion`
--
ALTER TABLE `qaquestion`
  ADD PRIMARY KEY (`q_key`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
