-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2022 at 03:11 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `talksta`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` text NOT NULL,
  `user` varchar(100) NOT NULL,
  `photo` tinytext NOT NULL,
  `date_time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `msg`, `user`, `photo`, `date_time`) VALUES
(1, 'helllo', '0', 'uploads/', '2022-05-04 20:09:33'),
(2, 'hii', '0', 'uploads/abb.jpg', '2022-05-04 20:09:48'),
(4, '', 'annamariam@gmail.com', 'uploads/9528hZ7heAQ0YJuiCu9D.jpg', '2022-05-09 11:29:06'),
(6, 'test', 'anilapowathil@gmail.com', 'uploads/09-05-2022 09-53-35-bf798784-1c81-4235-b29f-6561b5522128.png', '2022-05-18 17:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `activity_comments`
--

CREATE TABLE IF NOT EXISTS `activity_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `msg` text NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `activity_comments`
--

INSERT INTO `activity_comments` (`id`, `user`, `msg`, `post_id`) VALUES
(6, '7', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `activity_data`
--

CREATE TABLE IF NOT EXISTS `activity_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `activity_data`
--

INSERT INTO `activity_data` (`id`, `activity_id`, `status`, `user`) VALUES
(1, 7, 'like', 1),
(2, 5, 'like', 2),
(3, 4, 'unlike', 1),
(4, 4, 'unlike', 7),
(5, 6, 'like', 14);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE IF NOT EXISTS `education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `mark` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `name`, `time`, `course`, `mark`, `user`) VALUES
(1, 'caarmel', '2017', 'Information technology', '70%', 'anilapowathil@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` text NOT NULL,
  `user` varchar(100) NOT NULL,
  `photo` tinytext NOT NULL,
  `date_time` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `msg`, `user`, `photo`, `date_time`, `date`) VALUES
(1, 'helllo', '0', 'uploads/', '2022-05-04 20:09:33', '0000-00-00'),
(2, 'hii', '0', 'uploads/abb.jpg', '2022-05-04 20:09:48', '0000-00-00'),
(3, 'azure', 'merry123@gmail.com', 'uploads/', '2022-05-05 06:54:56', '2022-05-24'),
(4, 'azure', 'merry123@gmail.com', 'uploads/', '2022-05-05 07:49:26', '2022-05-19'),
(5, 'azure', 'merry123@gmail.com', 'uploads/', '2022-05-05 09:06:06', '2022-05-19'),
(6, 'azure', 'merry123@gmail.com', 'uploads/', '2022-05-05 09:18:52', '2022-05-19');

-- --------------------------------------------------------

--
-- Table structure for table `experiance`
--

CREATE TABLE IF NOT EXISTS `experiance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `orgnization` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `exp` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `experiance`
--

INSERT INTO `experiance` (`id`, `user`, `orgnization`, `title`, `exp`) VALUES
(2, 'anilapowathil@gmail.com', 'alliveo', 'hr', 'Above 2 Ye'),
(3, 'anilapowathil@gmail.com', 'aumento', 'admin', 'Above 1 Year');

-- --------------------------------------------------------

--
-- Table structure for table `facebook`
--

CREATE TABLE IF NOT EXISTS `facebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `facebook`
--

INSERT INTO `facebook` (`id`, `fname`, `lname`, `email`, `contact`, `dob`, `gender`, `organization`, `username`, `password`) VALUES
(1, 'Anila', 'Ninan', 'anilapowathil@gmail.com', 8767768989, '1995-04-16', 'female', 'college', 'anila', '123456'),
(2, 'Merry', 'Mariam', 'merry123@gmail.com', 9886756677, '1995-04-16', 'female', 'college', 'merry', '123456'),
(3, 'Anna', 'Mariam', 'annamariam@gmail.com', 8790676745, '1995-04-16', 'female', 'college', 'anna', '123456'),
(4, 'Anish', 'Mathew', 'anishmathew@gmail.com', 9887687878, '1995-04-16', 'male', 'allievo', 'anish', '123456'),
(5, 'Sam', 'Koshy', 'samkoshy@gmail.com', 9876543426, '1995-05-15', 'male', 'allievo', 'sam', '123456'),
(6, 'Gokul', 'Vishnu', 'gokulvishnu@gmail.com', 9897687867, '1995-04-16', 'male', 'allievo', 'gokul ', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `frd`
--

CREATE TABLE IF NOT EXISTS `frd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frd_id` int(10) NOT NULL,
  `frd2_id` int(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `frd`
--

INSERT INTO `frd` (`id`, `frd_id`, `frd2_id`, `date`, `status`) VALUES
(1, 6, 1, '2018-03-18 23:36:47', 'Confirm'),
(2, 6, 4, '2018-03-18 15:02:54', 'Process'),
(3, 1, 4, '2022-05-04 22:35:53', 'Process'),
(4, 1, 3, '2022-05-04 22:38:49', 'Process'),
(5, 2, 1, '2022-05-04 22:39:55', 'Confirm'),
(6, 2, 7, '2022-05-05 09:33:04', 'Cancel'),
(7, 2, 4, '2022-05-05 09:37:22', 'Confirm'),
(8, 2, 3, '2022-05-05 14:07:48', 'Confirm'),
(9, 8, 7, '2022-05-05 14:18:14', 'Confirm'),
(10, 2, 8, '2022-05-06 15:35:59', 'Process'),
(11, 7, 1, '2022-05-10 12:59:47', 'Process'),
(12, 1, 11, '2022-05-10 15:07:32', 'Process'),
(13, 1, 8, '2022-05-10 15:14:10', 'Process'),
(14, 1, 14, '2022-05-18 19:57:04', 'Confirm'),
(15, 1, 15, '2022-05-10 15:15:43', 'Process');

-- --------------------------------------------------------

--
-- Table structure for table `group_creation`
--

CREATE TABLE IF NOT EXISTS `group_creation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `organization` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `group_creation`
--

INSERT INTO `group_creation` (`id`, `group_name`, `description`, `organization`, `place`, `user`) VALUES
(1, 'test', 'test', 'college', 'pathanamthitta', 'anilapowathil@gmail.com'),
(2, 'test1', 'test1', 'college', 'pathanamthitta', 'merry123@gmail.com'),
(3, 'test2', 'test2', 'college', 'pathanamthitta', 'anilapowathil@gmail.com'),
(4, 'allievo group', 'test', 'allievo', 'Ernakulam', 'gokulvishnu@gmail.com'),
(5, 'gretta', 'hai', 'Student', 'pathanamthitta', 'merry123@gmail.com'),
(6, 'azure', 'azure day', 'Staff', 'koovappally', 'swedha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `group_list`
--

CREATE TABLE IF NOT EXISTS `group_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `group_id` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `group_list`
--

INSERT INTO `group_list` (`id`, `user_id`, `group_id`, `status`) VALUES
(1, 'anilapowathil@gmail.com', 'test', 'owner'),
(2, 'merry123@gmail.com', 'test1', 'owner'),
(3, 'anilapowathil@gmail.com', 'test1', 'member'),
(4, 'anilapowathil@gmail.com', 'test2', 'owner'),
(5, 'gokulvishnu@gmail.com', 'allievo group', 'owner'),
(7, 'gokulvishnu@gmail.com', 'test2', 'member'),
(8, 'merry123@gmail.com', 'gretta', 'owner'),
(10, 'manas@gmail.com', 'test', 'member'),
(11, 'anilapowathil@gmail.com', 'allievo group', 'member'),
(12, 'grettaabraham72@gmail.com', 'test', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `group_posts`
--

CREATE TABLE IF NOT EXISTS `group_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `post` varchar(220) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `spam_status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `group_posts`
--

INSERT INTO `group_posts` (`id`, `group_id`, `user_id`, `post`, `date`, `spam_status`) VALUES
(3, 'test', 'grettaabraham72@gmail.com', '', '2022-05-27 06:01:16', 'uploads/09-05-2022 09-53-35-bf798784-1c81-4235-b29f-6561b5522128.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  `receiver_name` varchar(100) NOT NULL,
  `msg` text NOT NULL,
  `pdf_file` varchar(220) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(100) NOT NULL,
  `read_status` varchar(50) NOT NULL DEFAULT 'new',
  `spam_status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `sender`, `receiver`, `sender_name`, `receiver_name`, `msg`, `pdf_file`, `date`, `status`, `read_status`, `spam_status`) VALUES
(1, 6, 1, 'gokulvishnu@gmail.com', 'anilapowathil@gmail.com', 'Gokul', 'Anila', 'test', 'Pdf File/19-03-2018 02-49-32-test1.pdf', '2018-03-19 03:23:00', 'send', 'new', ''),
(2, 6, 1, 'gokulvishnu@gmail.com', 'anilapowathil@gmail.com', 'Gokul', 'Anila', 'test', 'Pdf File/19-03-2018 09-19-35-', '2018-03-19 03:49:35', 'send', 'new', ''),
(3, 1, 6, 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com', 'Anila', 'Gokul', 'hiii', 'Pdf File/19-03-2018 09-19-47-', '2018-03-19 03:49:47', 'send', 'new', ''),
(4, 1, 6, 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com', 'Anila', 'Gokul', 'you will get free access', 'Pdf File/19-03-2018 18-37-58-', '2018-03-19 13:44:17', 'send', 'new', 'Spam Content Detectd ....'),
(5, 1, 6, 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com', 'Anila', 'Gokul', 'hi', 'Pdf File/03-04-2018 10-53-31-', '2018-04-03 05:23:31', 'send', 'new', ''),
(6, 1, 6, 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com', 'Anila', 'Gokul', 'hello', 'Pdf File/03-04-2018 10-57-07-', '2018-04-03 05:27:07', 'send', 'new', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_unknown`
--

CREATE TABLE IF NOT EXISTS `message_unknown` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  `receiver_name` varchar(100) NOT NULL,
  `msg` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(100) NOT NULL,
  `accept_status` varchar(50) NOT NULL,
  `spam_status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `message_unknown`
--

INSERT INTO `message_unknown` (`id`, `sender_id`, `receiver_id`, `sender`, `receiver`, `sender_name`, `receiver_name`, `msg`, `date`, `status`, `accept_status`, `spam_status`) VALUES
(5, 6, 3, 'gokulvishnu@gmail.com', 'annamariam@gmail.com', 'Gokul', 'Anna', 'test', '2018-03-19 22:20:37', 'send', 'decline', ''),
(6, 7, 1, 'swedha@gmail.com', 'anilapowathil@gmail.com', 'swedha', 'Anila', '', '2022-05-05 02:01:48', 'send', '', ''),
(7, 7, 1, 'swedha@gmail.com', 'anilapowathil@gmail.com', 'swedha', 'Anila', 'halo', '2022-05-05 02:02:03', 'send', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE IF NOT EXISTS `msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reply` varchar(300) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `msg`, `datetime`, `reply`, `sender`, `receiver`) VALUES
(1, 'oqDxeUAy5umSVshZq1oPXA==', '2019-05-09 04:58:09', '', 'gokulvishnu@gmail.com', 'anilapowathil@gmail.com'),
(2, 'Kpm+XXY3CyFduBpTtkM7Xw==', '2019-05-09 04:58:13', '', 'gokulvishnu@gmail.com', 'anilapowathil@gmail.com'),
(3, 'PBxKUIAs9Y5ptGz+JvDh7M44AxHJtgrv', '2019-05-09 04:58:23', '', 'gokulvishnu@gmail.com', 'anilapowathil@gmail.com'),
(4, 'IdpDqMniM9qulXEAZ0Hy0w==', '2019-05-09 05:54:21', '', 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com'),
(5, 'yGxNltK5dkZpkgl1NW4g3g==', '2019-05-09 05:54:26', '', 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com'),
(6, 'XRKBqrofBkAUJ5EOgNVZ1A==', '2019-05-09 05:54:29', '', 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com'),
(7, 'UnGMBX4ph44cM16VPZAbzQ==', '2019-05-09 05:54:31', '', 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com'),
(8, 'EdDkc3Q7freBGybuflYJtQ==', '2019-05-09 05:54:35', '', 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com'),
(9, '94JjY/z82JlTTkEMMWPVSg==', '2020-06-06 00:51:48', '', '', 'anilapowathil@gmail.com'),
(10, 'u76/4NKZqLyvhryj5bgIQQ==', '2021-04-14 21:56:06', '', 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com'),
(11, 'L7PJ97DMRwmD0wT6V282/w==', '2021-04-14 21:56:14', '', 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com'),
(12, 'lTMA1UpruC759gTUVCHPBw==', '2021-04-14 21:58:39', '', 'anilapowathil@gmail.com', 'merry123@gmail.com'),
(13, '8rL6rqN19pQsQhKjZggaIQ==', '2021-04-16 00:30:34', '', 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com'),
(14, 'ekSg50zlDXKLXWdtZeLCNA==', '2021-04-16 00:33:54', '', 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com'),
(15, 'cHRAEz/nIcYgqnSPj/Rtlg==', '2021-04-16 00:34:12', '', 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com'),
(16, 'Jm/KWRgeErfqo1ReSoNX0w==', '2022-05-18 14:49:55', '', 'manas@gmail.com', 'anilapowathil@gmail.com'),
(17, '3WNxvt+uXB7iYK6X5uEQwSpsSSaqvVPl', '2022-05-18 14:51:47', '', 'manas@gmail.com', 'anilapowathil@gmail.com'),
(18, 'IxT62sKWLB5vA97HaMS79XcY74c1H0+I', '2022-05-18 16:43:18', '', 'swedha@gmail.com', 'mrudul@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `profile_tb`
--

CREATE TABLE IF NOT EXISTS `profile_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `profile_pic` varchar(220) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `profile_tb`
--

INSERT INTO `profile_tb` (`id`, `fname`, `lname`, `email`, `contact`, `dob`, `gender`, `organization`, `place`, `username`, `password`, `profile_pic`, `status`) VALUES
(1, 'Anila', 'Ninan', 'anilapowathil@gmail.com', 8767768989, '1995-04-16', 'female', 'Student', 'pathanamthitta', 'anila', '123456', 'Profile Pics/18-03-2018 02-23-54-1.png', 1),
(2, 'Merry', 'Mariam', 'merry123@gmail.com', 9886756677, '1995-04-16', 'female', 'Student', 'pathanamthitta', 'merry', '123456', 'Profile Pics/18-03-2018 02-23-54-2.png', 1),
(3, 'Anna', 'Mariam', 'annamariam@gmail.com', 8790676745, '1995-04-16', 'female', 'Student', 'pathanamthitta', 'anna', '123456', 'Profile Pics/18-03-2018 02-23-54-3.png', 1),
(4, 'Anish', 'Mathew', 'anishmathew@gmail.com', 9887687878, '1995-04-16', 'male', 'Student', 'pathanamthitta', 'anish', '123456', 'Profile Pics/18-03-2018 02-23-54-4.png', 1),
(5, 'Sam', 'Koshy', 'samkoshy@gmail.com', 9876543426, '1995-04-16', 'male', 'Student', 'Ernakulam', 'sam', '123456', 'Profile Pics/18-03-2018 02-23-54-5.png', 0),
(6, 'Gokul', 'Vishnu', 'gokulvishnu@gmail.com', 9897687867, '1995-04-16', 'male', 'Staff', 'Ernakulam', 'admin', '1234', 'Profile Pics/18-03-2018 02-23-54-test.png', 0),
(7, 'swedha', 'shaji', 'swedha@gmail.com', 9446665320, '1999-06-05', 'female', 'Staff', 'koovappally', 'swedhd@123', 'Swedha@123', 'Profile Pics/05-05-2022 07-07-36-9528hZ7heAQ0YJuiCu9D.jpg', 1),
(8, 'mrudul', 'juju', 'mrudul@gmail.com', 9446665320, '2022-04-28', 'male', 'Student', 'koovappally', 'mrudul123', '123456', 'Profile Pics/05-05-2022 14-16-52-08.jpg', 1),
(14, 'manas', 'p', 'manas@gmail.com', 9446665320, '2022-04-25', 'male', 'Student', 'koovappally', 'manas@123', 'manas123', 'Profile Pics/09-05-2022 12-33-42-9528hZ7heAQ0YJuiCu9D.jpg', 1),
(16, 'Gretta', 'Abraham', 'grettaabraham72@gmail.com', 9446665320, '2022-04-27', 'female', 'Student', 'koovappally', 'gretta@123', 'Gretta@123', 'Profile Pics/18-05-2022 14-05-48-image.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `username`, `password`, `address`) VALUES
(0, 'Myriel', '', '', ''),
(1, 'Napoleon', '', '', ''),
(2, 'Mlle.Baptistine', '', '', ''),
(3, 'Mme.Magloire', '', '', ''),
(4, 'CountessdeLo', '', '', ''),
(5, 'Geborand', '', '', ''),
(6, 'Champtercier', '', '', ''),
(7, 'Cravatte', '', '', ''),
(8, 'Count', '', '', ''),
(9, 'OldMan', '', '', ''),
(10, 'Labarre', '', '', ''),
(11, 'Valjean', '', '', ''),
(12, 'Marguerite', '', '', ''),
(13, 'Mme.deR', '', '', ''),
(14, 'Isabeau', '', '', ''),
(15, 'Gervais', '', '', ''),
(16, 'Tholomyes', '', '', ''),
(17, 'Listolier', '', '', ''),
(18, 'Fameuil', '', '', ''),
(19, 'Blacheville', '', '', ''),
(20, 'Favourite', '', '', ''),
(21, 'Dahlia', '', '', ''),
(22, 'Zephine', '', '', ''),
(23, 'Fantine', '', '', ''),
(24, 'Mme.Thenardier', '', '', ''),
(25, 'Thenardier', '', '', ''),
(26, 'Cosette', '', '', ''),
(27, 'Javert', '', '', ''),
(28, 'Fauchelevent', '', '', ''),
(29, 'Bamatabois', '', '', ''),
(30, 'Perpetue', '', '', ''),
(31, 'Simplice', '', '', ''),
(32, 'Scaufflaire', '', '', ''),
(33, 'Woman1', '', '', ''),
(34, 'Judge', '', '', ''),
(35, 'Champmathieu', '', '', ''),
(36, 'Brevet', '', '', ''),
(37, 'Chenildieu', '', '', ''),
(38, 'Cochepaille', '', '', ''),
(39, 'Pontmercy', '', '', ''),
(40, 'Boulatruelle', '', '', ''),
(41, 'Eponine', '', '', ''),
(42, 'Anzelma', '', '', ''),
(43, 'Woman2', '', '', ''),
(44, 'MotherInnocent', '', '', ''),
(45, 'Gribier', '', '', ''),
(46, 'Jondrette', '', '', ''),
(47, 'Mme.Burgon', '', '', ''),
(48, 'Gavroche', '', '', ''),
(49, 'Gillenormand', '', '', ''),
(50, 'Magnon', '', '', ''),
(51, 'Mlle.Gillenormand', '', '', ''),
(52, 'Mme.Pontmercy', '', '', ''),
(53, 'Mlle.Vaubois', '', '', ''),
(54, 'Lt.Gillenormand', '', '', ''),
(55, 'Marius', '', '', ''),
(56, 'BaronessT', '', '', ''),
(57, 'Mabeuf', '', '', ''),
(58, 'Enjolras', '', '', ''),
(59, 'Combeferre', '', '', ''),
(60, 'Prouvaire', '', '', ''),
(61, 'Feuilly', '', '', ''),
(62, 'Courfeyrac', '', '', ''),
(63, 'Bahorel', '', '', ''),
(64, 'Bossuet', '', '', ''),
(65, 'Joly', '', '', ''),
(66, 'Grantaire', '', '', ''),
(67, 'MotherPlutarch', '', '', ''),
(68, 'Gueulemer', '', '', ''),
(69, 'Babet', '', '', ''),
(70, 'Claquesous', '', '', ''),
(71, 'Montparnasse', '', '', ''),
(72, 'Toussaint', '', '', ''),
(73, 'Child1', '', '', ''),
(74, 'Child2', '', '', ''),
(75, 'Brujon', '', '', ''),
(76, 'Mme.Hucheloup', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `skills` varchar(100) NOT NULL,
  `rate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `user`, `skills`, `rate`) VALUES
(4, 'anilapowathil@gmail.com', 'c++', 2),
(6, 'anilapowathil@gmail.com', 'ccna', 4),
(7, 'swedha@gmail.com', 'sleeping', 1),
(8, 'anilapowathil@gmail.com', 'cooking', 1);

-- --------------------------------------------------------

--
-- Table structure for table `spam`
--

CREATE TABLE IF NOT EXISTS `spam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `spam`
--

INSERT INTO `spam` (`id`, `msg`) VALUES
(1, 'claims you are winner'),
(2, 'free access'),
(3, 'additional income');

-- --------------------------------------------------------

--
-- Table structure for table `wall`
--

CREATE TABLE IF NOT EXISTS `wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` varchar(200) NOT NULL,
  `friend` varchar(100) NOT NULL,
  `photo` tinytext NOT NULL,
  `lat` int(11) NOT NULL,
  `log` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `wall`
--

INSERT INTO `wall` (`id`, `msg`, `status`, `date`, `user`, `friend`, `photo`, `lat`, `log`) VALUES
(1, 'anish', '', '2018-03-06 00:47:11', 'anilapowathil@gmail.com', '', '', 0, 0),
(2, 'you will get free access', 'Spam Content Detectd ....', '2018-03-06 00:47:59', 'anilapowathil@gmail.com', '', '', 0, 0),
(3, 'you will get free access', 'Spam Content Detectd ....', '2018-03-06 00:49:37', 'anilapowathil@gmail.com', '', '', 0, 0),
(4, 'you will get free access', 'Spam Content Detectd ....', '2018-03-06 00:50:19', 'anilapowathil@gmail.com', '', '', 0, 0),
(5, 'you will get free access', 'Spam Content Detectd ....', '2018-03-06 00:50:37', 'anilapowathil@gmail.com', '', '', 0, 0),
(6, 'you will get free access', 'Spam Content Detectd ....', '2018-03-06 00:51:00', 'anilapowathil@gmail.com', '', '', 0, 0),
(7, 'you will get free access', 'Spam Content Detectd ....', '2018-03-06 00:51:19', 'anilapowathil@gmail.com', '', '', 0, 0),
(8, 'you will get free access', 'Spam Content Detectd ....', '2018-03-06 00:52:33', 'anilapowathil@gmail.com', '', '', 0, 0),
(9, 'you will get free access', 'Spam Content Detectd ....', '2018-03-06 00:52:51', 'anilapowathil@gmail.com', '', '', 0, 0),
(10, 'you will get free access', 'Spam Content Detectd ....', '2018-03-06 05:26:04', 'anilapowathil@gmail.com', '', '', 0, 0),
(11, 'hi msg', '', '2018-03-06 05:26:19', 'anilapowathil@gmail.com', '', '', 0, 0),
(12, 'hi msg', '', '2018-03-18 06:10:02', 'anilapowathil@gmail.com', 'gokulvishnu@gmail.com', '', 0, 0),
(13, 'test', '', '2018-03-18 06:07:59', 'gokulvishnu@gmail.com', '', '', 0, 0),
(14, 'test', '', '2018-03-18 06:08:17', 'gokulvishnu@gmail.com', '', '', 0, 0),
(15, 'test', '', '2018-03-18 06:16:40', 'gokulvishnu@gmail.com', '', '', 0, 0),
(16, '', '', '2018-03-19 04:12:53', 'anilapowathil@gmail.com', '', '', 0, 0),
(17, 'test1', '', '2018-03-19 04:24:58', 'gokulvishnu@gmail.com', 'anilapowathil@gmail.com', '', 0, 0),
(19, 'you will get free access', 'Spam Content Detectd ....', '2018-03-19 15:53:48', 'gokulvishnu@gmail.com', 'anilapowathil@gmail.com', '', 0, 0),
(20, 'test image', '', '2018-03-29 15:35:20', 'anilapowathil@gmail.com', '', 'uploads/pic1.png', 0, 0),
(21, 'test image', '', '2018-03-29 15:33:41', 'anilapowathil@gmail.com', '', 'uploads/pic2.jpg', 0, 0),
(25, 'it fest ', '', '2018-03-29 16:30:46', 'anilapowathil@gmail.com', '', 'uploads/pic4.jpg', 0, 0),
(26, 'ieee event', '', '2018-03-29 16:30:38', 'anilapowathil@gmail.com', '', 'uploads/pic3.jpg', 0, 0),
(27, 'ieee events', '', '2018-04-03 05:22:56', 'anilapowathil@gmail.com', '', 'uploads/', 8, 77);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
