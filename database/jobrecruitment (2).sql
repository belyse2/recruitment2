-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2021 at 11:03 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobrecruitment`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `application_test_id` int(11) NOT NULL,
  `recruiter_id` int(11) NOT NULL,
  `total_grade` varchar(200) NOT NULL,
  `pass` bit(20) NOT NULL,
  `answer_details` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `surmmary` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_evaluaton`
--

CREATE TABLE `applicant_evaluaton` (
  `id` int(11) NOT NULL,
  `notes` varchar(500) NOT NULL,
  `recruiter_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `hired` bit(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `date_of_application` datetime NOT NULL,
  `education` varchar(500) NOT NULL,
  `experience` varchar(500) NOT NULL,
  `other_info` varchar(500) NOT NULL,
  `job_id` int(10) NOT NULL,
  `applicant_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `application_status`
--

CREATE TABLE `application_status` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `application_test`
--

CREATE TABLE `application_test` (
  `id` int(11) NOT NULL,
  `start-time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `application_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `applicaton_status_change`
--

CREATE TABLE `applicaton_status_change` (
  `id` int(11) NOT NULL,
  `date_changed` datetime NOT NULL,
  `application_status_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `ttttle` varchar(200) NOT NULL,
  `message` varchar(400) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`firstname`, `lastname`, `email`, `ttttle`, `message`, `id`) VALUES
('belyse', 'ishimwe', 'belyse@gmail.com', 'miss', 'how are you', 1),
('pari', 'labo', 'niyigenasandrine11@gmail.com', 'boss', 'looooo', 2),
('pappy', 'ishimwe', 'belyse@gmail.com', 'fffd', 'ffghhjjk', 4),
('pappy', 'ishimwe', 'belyse@gmail.com', 'fffd', 'ffghhjjk', 5),
('mnbb', 'oluuu', 'nunu@gmail', 'mkuuy', 'vgtttttff', 6),
('numn', 'olku', 'poll@gmail.com', 'gtyueue', 'dgfddfghf', 7);

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `document` blob NOT NULL,
  `url` varchar(200) NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `currentaddress` varchar(300) NOT NULL,
  `permanantaddress` varchar(300) NOT NULL,
  `phone` int(20) NOT NULL,
  `emal` varchar(100) NOT NULL,
  `cv` blob NOT NULL,
  `position` enum('manager','secretary','security','cleaner') NOT NULL,
  `currentimployed` enum('y','n') NOT NULL,
  `startdate` datetime NOT NULL,
  `availability` enum('Monday','Tuesday','Wednesday','Thursday','Friday') NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`firstname`, `lastname`, `middlename`, `currentaddress`, `permanantaddress`, `phone`, `emal`, `cv`, `position`, `currentimployed`, `startdate`, `availability`, `id`) VALUES
('belyse', 'ishimwe', 'frttyy', 'huye', 'kigali', 788, 'ineza@gmail.com', 0x456c65637472696320666f72636520616e6420656c656374726963206669656c64732e706466, 'secretary', 'y', '2021-08-18 00:00:00', 'Tuesday', 1),
('mnbb', 'labo', 'loiu', 'muhanga', 'ruhango', 3455, 'labo@gmail.com', 0x456c65637472696320666f72636520616e6420656c656374726963206669656c64732e706466, 'secretary', 'y', '2021-08-04 00:00:00', 'Tuesday', 2);

-- --------------------------------------------------------

--
-- Table structure for table `interview`
--

CREATE TABLE `interview` (
  `id` int(11) NOT NULL,
  `start-time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `application_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `interview_notes`
--

CREATE TABLE `interview_notes` (
  `id` int(11) NOT NULL,
  `notes` varchar(200) NOT NULL,
  `interview_id` int(11) NOT NULL,
  `recruiter_id` int(11) NOT NULL,
  `pass` bit(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `date_published` datetime NOT NULL,
  `job_start_date` datetime NOT NULL,
  `job_category_id` int(10) NOT NULL,
  `job_position_id` int(10) NOT NULL,
  `job_platform_id` int(10) NOT NULL,
  `organisation_id` int(10) NOT NULL,
  `process_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `code`, `name`, `description`, `date_published`, `job_start_date`, `job_category_id`, `job_position_id`, `job_platform_id`, `organisation_id`, `process_id`) VALUES
(1, '12', 'MANAGER', 'manager position is available for you ', '2021-08-22 09:31:23', '2021-08-22 09:31:23', 1, 1, 1, 1, 1),
(2, '23', 'SECRETARY', 'SECRETARY position is available for you ', '2021-08-22 09:31:23', '2021-08-22 09:31:23', 2, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `jobc_category`
--

CREATE TABLE `jobc_category` (
  `id` int(10) NOT NULL,
  `jobcode` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job_platform`
--

CREATE TABLE `job_platform` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `decription` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job_position`
--

CREATE TABLE `job_position` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `code` varchar(10) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loginform`
--

CREATE TABLE `loginform` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginform`
--

INSERT INTO `loginform` (`id`, `email`, `password`) VALUES
(0, 'belyse@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE `organisation` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `code` varchar(10) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `process`
--

CREATE TABLE `process` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `decription` varchar(500) NOT NULL,
  `recruiter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `process_step`
--

CREATE TABLE `process_step` (
  `id` int(11) NOT NULL,
  `step_id` int(11) NOT NULL,
  `process_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recruiter`
--

CREATE TABLE `recruiter` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recruiter`
--

INSERT INTO `recruiter` (`id`, `firstname`, `lastname`, `email`) VALUES
(1, 'Sndrine', 'NIYIGENA', 'niyigena@gmail.com'),
(2, 'Banu', 'KANEZA', 'kaneza@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `sign`
--

CREATE TABLE `sign` (
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` int(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirmpassword` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sign`
--

INSERT INTO `sign` (`firstname`, `lastname`, `email`, `phone`, `password`, `confirmpassword`, `id`) VALUES
('pari', 'lsando', 'niyigenasandrine11@gmail.com', 8999, '1234', '1234', 1),
('pappy', 'ineza', 'ineza@gmail.com', 788999099, '345', '345', 3),
('pappy', 'kami', 'kami@gmail.com', 87654, 'df6d2338b2b8fce1ec2f6dda0a630eb0', 'df6d2338b2b8fce1ec2f6dda0a630eb0', 6),
('pari', 'ishimwe', 'loly@gmail.com', 788999099, '234', '234', 8),
('pappy', 'labo', 'popu@gmail.com', 87654, '234', '234', 9);

-- --------------------------------------------------------

--
-- Table structure for table `step`
--

CREATE TABLE `step` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `duration` int(11) NOT NULL,
  `max_score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant_evaluaton`
--
ALTER TABLE `applicant_evaluaton`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_status`
--
ALTER TABLE `application_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_test`
--
ALTER TABLE `application_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicaton_status_change`
--
ALTER TABLE `applicaton_status_change`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview`
--
ALTER TABLE `interview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_notes`
--
ALTER TABLE `interview_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobc_category`
--
ALTER TABLE `jobc_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_platform`
--
ALTER TABLE `job_platform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_position`
--
ALTER TABLE `job_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loginform`
--
ALTER TABLE `loginform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisation`
--
ALTER TABLE `organisation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `process`
--
ALTER TABLE `process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `process_step`
--
ALTER TABLE `process_step`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruiter`
--
ALTER TABLE `recruiter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign`
--
ALTER TABLE `sign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `step`
--
ALTER TABLE `step`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_status`
--
ALTER TABLE `application_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_test`
--
ALTER TABLE `application_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applicaton_status_change`
--
ALTER TABLE `applicaton_status_change`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `interview`
--
ALTER TABLE `interview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_notes`
--
ALTER TABLE `interview_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobc_category`
--
ALTER TABLE `jobc_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_platform`
--
ALTER TABLE `job_platform`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_position`
--
ALTER TABLE `job_position`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organisation`
--
ALTER TABLE `organisation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `process`
--
ALTER TABLE `process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `process_step`
--
ALTER TABLE `process_step`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recruiter`
--
ALTER TABLE `recruiter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sign`
--
ALTER TABLE `sign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `step`
--
ALTER TABLE `step`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
