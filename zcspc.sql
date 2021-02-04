-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2021 at 11:23 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zcspc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(100) NOT NULL,
  `courseDscrptn` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `courseCode`, `courseDscrptn`) VALUES
(1, 'BSIT', 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY'),
(2, 'BSCE', 'BACHELOR OF SCIENCE IN CIVIL ENGINEERING');

-- --------------------------------------------------------

--
-- Table structure for table `course_applying`
--

CREATE TABLE `course_applying` (
  `id` int(11) NOT NULL,
  `firstChoice` varchar(100) NOT NULL,
  `secondChoice` varchar(100) NOT NULL,
  `thirdChoice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_applying`
--

INSERT INTO `course_applying` (`id`, `firstChoice`, `secondChoice`, `thirdChoice`) VALUES
(1, 'Bachelor of Science in Information Technology', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `educational_background`
--

CREATE TABLE `educational_background` (
  `id` int(11) NOT NULL,
  `NMSchllLastattended` varchar(100) NOT NULL,
  `address_school` varchar(100) NOT NULL,
  `courseTrackStrand` varchar(100) NOT NULL,
  `typeofSchool` varchar(100) NOT NULL,
  `dateGraduated` varchar(100) NOT NULL,
  `LRN` varchar(100) NOT NULL,
  `yrlastAttndnc` varchar(100) NOT NULL,
  `honors` varchar(100) NOT NULL,
  `ncQualification` varchar(100) NOT NULL,
  `sport` varchar(100) NOT NULL,
  `specialTalentSkll` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educational_background`
--

INSERT INTO `educational_background` (`id`, `NMSchllLastattended`, `address_school`, `courseTrackStrand`, `typeofSchool`, `dateGraduated`, `LRN`, `yrlastAttndnc`, `honors`, `ncQualification`, `sport`, `specialTalentSkll`) VALUES
(1, 'zcspc', 'zamboanga city', 'college', 'public', '2014', '', '2016', '', '', 'basketball', 'singing'),
(2, 'scc', '', 'college', '', '', '', '', '', '', '', ''),
(3, '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_info`
--

CREATE TABLE `examinee_info` (
  `id` int(11) NOT NULL,
  `typeofStdnt` varchar(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `middleName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `civilStatus` varchar(50) NOT NULL,
  `dateofBirth` varchar(50) NOT NULL,
  `age` varchar(11) NOT NULL,
  `placeofBirth` varchar(100) NOT NULL,
  `emailAddress` varchar(100) NOT NULL,
  `contactNumber` varchar(100) NOT NULL,
  `houseNumber` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `cityMunicipal` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examinee_info`
--

INSERT INTO `examinee_info` (`id`, `typeofStdnt`, `firstName`, `middleName`, `lastName`, `gender`, `civilStatus`, `dateofBirth`, `age`, `placeofBirth`, `emailAddress`, `contactNumber`, `houseNumber`, `street`, `barangay`, `cityMunicipal`, `province`) VALUES
(1, 'Freshman', 'Ahmad', 'Ladjul', 'Jaalam', 'male', 'single', 'june 07, 1999', '21', 'jatian sibuco z.d', 'jaalamahmad@gmail.com', '09972976465', '21', 'street 2 ', 'upper calarian', 'zamboanga city', 'southcom'),
(22, 'Freshman', 'asmah ', 'ladjul', 'jairi', '1', 'Single', '', '16', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `family_background`
--

CREATE TABLE `family_background` (
  `id` int(11) NOT NULL,
  `fathersName` varchar(100) NOT NULL,
  `occupationF` varchar(100) NOT NULL,
  `educationalLevelF` varchar(100) NOT NULL,
  `mothersName` varchar(100) NOT NULL,
  `occupationM` varchar(100) NOT NULL,
  `educationalLevelM` varchar(100) NOT NULL,
  `guardianName` varchar(100) NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `occupationG` varchar(100) NOT NULL,
  `addressG` varchar(100) NOT NULL,
  `nameEmrgncy` varchar(100) NOT NULL,
  `relationshipEmrgncy` varchar(100) NOT NULL,
  `contactNumber` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family_background`
--

INSERT INTO `family_background` (`id`, `fathersName`, `occupationF`, `educationalLevelF`, `mothersName`, `occupationM`, `educationalLevelM`, `guardianName`, `relationship`, `occupationG`, `addressG`, `nameEmrgncy`, `relationshipEmrgncy`, `contactNumber`, `address`) VALUES
(1, 'tiyuh', 'farmer', 'na', 'patma', 'college', 'none', 'none', 'none', 'none', 'noen', 'noe', 'cousin', '09972976465', 'southcom'),
(8, 'pedro', '', '', 'rahma', '', '', ' ', ' ', ' ', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `date_sched` date NOT NULL,
  `time_sched` time NOT NULL,
  `activity_sched` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `date_sched`, `time_sched`, `activity_sched`) VALUES
(110, '2021-01-01', '01:00:00', 'activity');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_applying`
--
ALTER TABLE `course_applying`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educational_background`
--
ALTER TABLE `educational_background`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examinee_info`
--
ALTER TABLE `examinee_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_background`
--
ALTER TABLE `family_background`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_applying`
--
ALTER TABLE `course_applying`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `educational_background`
--
ALTER TABLE `educational_background`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `examinee_info`
--
ALTER TABLE `examinee_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `family_background`
--
ALTER TABLE `family_background`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
