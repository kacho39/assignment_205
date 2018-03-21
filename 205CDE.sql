-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2018 at 06:42 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `205CDE`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment_arabic`
--

CREATE TABLE `comment_arabic` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment_chinese`
--

CREATE TABLE `comment_chinese` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment_dutch`
--

CREATE TABLE `comment_dutch` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment_french`
--

CREATE TABLE `comment_french` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment_german`
--

CREATE TABLE `comment_german` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment_italian`
--

CREATE TABLE `comment_italian` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment_japanese`
--

CREATE TABLE `comment_japanese` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment_korean`
--

CREATE TABLE `comment_korean` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment_portuguese`
--

CREATE TABLE `comment_portuguese` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment_russian`
--

CREATE TABLE `comment_russian` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment_spanish`
--

CREATE TABLE `comment_spanish` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment_spanish`
--

INSERT INTO `comment_spanish` (`comment_id`, `post_id`, `username`, `comment`) VALUES
(2, 4, 'kenny', 'hola Chun!');

-- --------------------------------------------------------

--
-- Table structure for table `post_arabic`
--

CREATE TABLE `post_arabic` (
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_arabic`
--

INSERT INTO `post_arabic` (`post_id`, `username`, `detail`) VALUES
(1, 'kenny', 'demo!\r\n'),
(2, 'kenny', 'gmngv'),
(3, 'kenny', 'mkm'),
(4, 'kenny', 'dsfaf');

-- --------------------------------------------------------

--
-- Table structure for table `post_chinese`
--

CREATE TABLE `post_chinese` (
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_dutch`
--

CREATE TABLE `post_dutch` (
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_french`
--

CREATE TABLE `post_french` (
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_german`
--

CREATE TABLE `post_german` (
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_italian`
--

CREATE TABLE `post_italian` (
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_japanese`
--

CREATE TABLE `post_japanese` (
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_korean`
--

CREATE TABLE `post_korean` (
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_portuguese`
--

CREATE TABLE `post_portuguese` (
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_russian`
--

CREATE TABLE `post_russian` (
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_spanish`
--

CREATE TABLE `post_spanish` (
  `post_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_spanish`
--

INSERT INTO `post_spanish` (`post_id`, `username`, `detail`) VALUES
(4, 'kachunho', 'Mi nombre es Chun'),
(13, 'kenny', '¡Vamos a ello!');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `country`) VALUES
(81, 'kachunho', 'alvin1995', 'spanish'),
(95, 'kenny', 'alvin1995', 'italian');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment_arabic`
--
ALTER TABLE `comment_arabic`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_chinese`
--
ALTER TABLE `comment_chinese`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_dutch`
--
ALTER TABLE `comment_dutch`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_french`
--
ALTER TABLE `comment_french`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_german`
--
ALTER TABLE `comment_german`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_italian`
--
ALTER TABLE `comment_italian`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_japanese`
--
ALTER TABLE `comment_japanese`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_korean`
--
ALTER TABLE `comment_korean`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_portuguese`
--
ALTER TABLE `comment_portuguese`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_russian`
--
ALTER TABLE `comment_russian`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_spanish`
--
ALTER TABLE `comment_spanish`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `post_arabic`
--
ALTER TABLE `post_arabic`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_chinese`
--
ALTER TABLE `post_chinese`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_dutch`
--
ALTER TABLE `post_dutch`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_french`
--
ALTER TABLE `post_french`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_german`
--
ALTER TABLE `post_german`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_italian`
--
ALTER TABLE `post_italian`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_japanese`
--
ALTER TABLE `post_japanese`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_korean`
--
ALTER TABLE `post_korean`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_portuguese`
--
ALTER TABLE `post_portuguese`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_russian`
--
ALTER TABLE `post_russian`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_spanish`
--
ALTER TABLE `post_spanish`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment_arabic`
--
ALTER TABLE `comment_arabic`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_chinese`
--
ALTER TABLE `comment_chinese`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_dutch`
--
ALTER TABLE `comment_dutch`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_french`
--
ALTER TABLE `comment_french`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_german`
--
ALTER TABLE `comment_german`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_italian`
--
ALTER TABLE `comment_italian`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_japanese`
--
ALTER TABLE `comment_japanese`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_korean`
--
ALTER TABLE `comment_korean`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_portuguese`
--
ALTER TABLE `comment_portuguese`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_russian`
--
ALTER TABLE `comment_russian`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_spanish`
--
ALTER TABLE `comment_spanish`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `post_arabic`
--
ALTER TABLE `post_arabic`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `post_chinese`
--
ALTER TABLE `post_chinese`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_dutch`
--
ALTER TABLE `post_dutch`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_french`
--
ALTER TABLE `post_french`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_german`
--
ALTER TABLE `post_german`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_italian`
--
ALTER TABLE `post_italian`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_japanese`
--
ALTER TABLE `post_japanese`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_korean`
--
ALTER TABLE `post_korean`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_portuguese`
--
ALTER TABLE `post_portuguese`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_russian`
--
ALTER TABLE `post_russian`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_spanish`
--
ALTER TABLE `post_spanish`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
