-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2022 at 02:42 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `socialnetwork`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `msg`, `user`, `photo`, `date_time`) VALUES
(1, 'helllo', '0', 'uploads/', '2022-05-04 20:09:33'),
(2, 'hii', '0', 'uploads/abb.jpg', '2022-05-04 20:09:48');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `msg`, `user`, `photo`, `date_time`, `date`) VALUES
(1, 'helllo', '0', 'uploads/', '2022-05-04 20:09:33', '0000-00-00'),
(2, 'hii', '0', 'uploads/abb.jpg', '2022-05-04 20:09:48', '0000-00-00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `frd`
--

INSERT INTO `frd` (`id`, `frd_id`, `frd2_id`, `date`, `status`) VALUES
(1, 6, 1, '2018-03-18 23:36:47', 'Confirm'),
(2, 6, 4, '2018-03-18 15:02:54', 'Process'),
(3, 1, 4, '2022-05-04 22:35:53', 'Process'),
(4, 1, 3, '2022-05-04 22:38:49', 'Process'),
(5, 2, 1, '2022-05-04 22:39:55', 'Confirm');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `group_creation`
--

INSERT INTO `group_creation` (`id`, `group_name`, `description`, `organization`, `place`, `user`) VALUES
(1, 'test', 'test', 'college', 'pathanamthitta', 'anilapowathil@gmail.com'),
(2, 'test1', 'test1', 'college', 'pathanamthitta', 'merry123@gmail.com'),
(3, 'test2', 'test2', 'college', 'pathanamthitta', 'anilapowathil@gmail.com'),
(4, 'allievo group', 'test', 'allievo', 'Ernakulam', 'gokulvishnu@gmail.com');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `group_list`
--

INSERT INTO `group_list` (`id`, `user_id`, `group_id`, `status`) VALUES
(1, 'anilapowathil@gmail.com', 'test', 'owner'),
(2, 'merry123@gmail.com', 'test1', 'owner'),
(3, 'anilapowathil@gmail.com', 'test1', 'member'),
(4, 'anilapowathil@gmail.com', 'test2', 'owner'),
(5, 'gokulvishnu@gmail.com', 'allievo group', 'owner'),
(7, 'gokulvishnu@gmail.com', 'test2', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `group_posts`
--

CREATE TABLE IF NOT EXISTS `group_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `post` varchar(220) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `spam_status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `group_posts`
--

INSERT INTO `group_posts` (`id`, `group_id`, `user_id`, `post`, `date`, `spam_status`) VALUES
(1, 'test2', 'gokulvishnu@gmail.com', 'test', '2018-03-19 18:43:37', ''),
(2, 'test2', 'gokulvishnu@gmail.com', 'you will get free access', '2018-03-19 18:44:24', 'Spam Content Detectd ....'),
(3, 'test2', 'anilapowathil@gmail.com', 'you will get free access', '2018-03-19 18:44:40', 'Spam Content Detectd ....'),
(4, 'test', 'anilapowathil@gmail.com', 'hello', '2018-04-03 05:22:14', '');

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE IF NOT EXISTS `lists` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `group_name` int(10) NOT NULL,
  `c1` varchar(10) NOT NULL,
  `c2` varchar(10) NOT NULL,
  `wt1` varchar(10) NOT NULL,
  `wt2` varchar(10) NOT NULL,
  `group_data` text NOT NULL,
  `frd` text NOT NULL,
  `ugd` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`id`, `name`, `group_name`, `c1`, `c2`, `wt1`, `wt2`, `group_data`, `frd`, `ugd`) VALUES
(0, 'Myriel', 1, '', '9', '4.5', '2', '1g 1g 1g 1g 1g 1g 1g 1g 2g ', ',2,3,4,5,6,7,8,9,11', '1g  2g '),
(1, 'Napoleon', 1, '1', '', '1', '1', '1g ', ',2', ' 1g '),
(2, 'Mlle.Baptistine', 1, '1', '3', '2', '2', '1g 1g 2g 1g ', ',0,3,11,1', '1g  2g '),
(3, 'Mme.Magloire', 1, '2', '1', '1.5', '2', '1g 1g 2g ', ',0,2,11', '1g  2g '),
(4, 'CountessdeLo', 1, '1', '', '1', '1', '1g ', ',0', ' 1g '),
(5, 'Geborand', 1, '1', '', '1', '1', '1g ', ',0', ' 1g '),
(6, 'Champtercier', 1, '1', '', '1', '1', '1g ', ',0', ' 1g '),
(7, 'Cravatte', 1, '1', '', '1', '1', '1g ', ',0', ' 1g '),
(8, 'Count', 1, '1', '', '1', '1', '1g ', ',0', ' 1g '),
(9, 'OldMan', 1, '1', '', '1', '1', '1g ', ',0', ' 1g '),
(10, 'Labarre', 2, '', '1', '1', '1', '2g ', ',11', ' 2g '),
(11, 'Valjean', 2, '4', '32', '5.14285714', '7', '2g 1g 1g 1g 3g 2g 2g 2g 3g 4g 4g 5g 4g 0g 2g 2g 2g 2g 2g 2g 2g 2g 2g 5g 0g 8g 5g 5g 8g 8g 8g 4g 4g 4g 4g 5g ', ',10,3,2,0,12,13,14,15,23,24,25,26,27,28,29,31,32,33,34,35,36,37,38,43,44,48,49,51,55,58,64,68,69,70,71,72', '2g 4g 5g 8g 1g 0g 3g  '),
(12, 'Marguerite', 3, '1', '1', '1', '2', '2g 3g ', ',11,23', ' 3g 2g '),
(13, 'Mme.deR', 2, '1', '', '1', '1', '2g ', ',11', ' 2g '),
(14, 'Isabeau', 2, '1', '', '1', '1', '2g ', ',11', ' 2g '),
(15, 'Gervais', 2, '1', '', '1', '1', '2g ', ',11', ' 2g '),
(16, 'Tholomyes', 3, '', '9', '3', '3', '3g 3g 3g 3g 3g 3g 3g 5g 8g ', ',17,18,19,20,21,22,23,26,55', '3g  5g 8g '),
(17, 'Listolier', 3, '1', '6', '7', '1', '3g 3g 3g 3g 3g 3g 3g ', ',16,18,19,20,21,22,23', '3g  '),
(18, 'Fameuil', 3, '2', '5', '7', '1', '3g 3g 3g 3g 3g 3g 3g ', ',16,17,19,20,21,22,23', '3g  '),
(19, 'Blacheville', 3, '3', '4', '7', '1', '3g 3g 3g 3g 3g 3g 3g ', ',16,17,18,20,21,22,23', '3g  '),
(20, 'Favourite', 3, '4', '3', '7', '1', '3g 3g 3g 3g 3g 3g 3g ', ',16,17,18,19,21,22,23', '3g  '),
(21, 'Dahlia', 3, '5', '2', '7', '1', '3g 3g 3g 3g 3g 3g 3g ', ',16,17,18,19,20,22,23', '3g  '),
(22, 'Zephine', 3, '6', '1', '7', '1', '3g 3g 3g 3g 3g 3g 3g ', ',16,17,18,19,20,21,23', '3g  '),
(23, 'Fantine', 3, '9', '6', '5', '3', '3g 3g 3g 3g 3g 3g 3g 3g 2g 4g 4g 4g 2g 3g 2g ', ',16,17,18,19,20,21,22,12,11,24,25,27,29,30,31', '3g 4g 2g  '),
(24, 'Mme.Thenardier', 4, '2', '9', '2.75', '4', '3g 2g 4g 5g 4g 4g 4g 5g 4g 4g 4g ', ',23,11,25,26,27,41,42,50,68,69,70', '4g 5g  3g 2g '),
(25, 'Thenardier', 4, '3', '13', '2.66666666', '6', '4g 3g 2g 5g 4g 4g 6g 4g 4g 8g 8g 4g 4g 4g 4g 4g ', ',24,23,11,26,27,39,40,41,42,48,55,68,69,70,71,75', '4g 8g  6g 5g 3g 2g '),
(26, 'Cosette', 5, '4', '7', '2.2', '5', '4g 2g 3g 4g 4g 5g 5g 5g 5g 8g 5g ', ',24,11,16,25,27,43,49,51,54,55,72', '5g 4g  8g 3g 2g '),
(27, 'Javert', 4, '5', '12', '2.83333333', '6', '2g 3g 4g 4g 5g 0g 2g 2g 2g 5g 8g 8g 4g 4g 4g 4g 5g ', ',11,23,25,24,26,28,29,31,33,43,48,58,68,69,70,71,72', '4g 2g 5g 8g  0g 3g '),
(28, 'Fauchelevent', 0, '2', '2', '1.33333333', '3', '2g 4g 0g 0g ', ',11,27,44,45', '0g  4g 2g '),
(29, 'Bamatabois', 2, '3', '5', '2.66666666', '3', '3g 4g 2g 2g 2g 2g 2g 2g ', ',23,27,11,34,35,36,37,38', '2g  4g 3g '),
(30, 'Perpetue', 3, '1', '1', '1', '2', '3g 2g ', ',23,31', ' 2g 3g '),
(31, 'Simplice', 2, '4', '', '1.33333333', '3', '3g 2g 3g 4g ', ',30,11,23,27', '3g  2g 4g '),
(32, 'Scaufflaire', 2, '1', '', '1', '1', '2g ', ',11', ' 2g '),
(33, 'Woman1', 2, '2', '', '1', '2', '2g 4g ', ',11,27', ' 4g 2g '),
(34, 'Judge', 2, '2', '4', '6', '1', '2g 2g 2g 2g 2g 2g ', ',11,29,35,36,37,38', '2g  '),
(35, 'Champmathieu', 2, '3', '3', '6', '1', '2g 2g 2g 2g 2g 2g ', ',11,34,29,36,37,38', '2g  '),
(36, 'Brevet', 2, '4', '2', '6', '1', '2g 2g 2g 2g 2g 2g ', ',34,35,11,29,37,38', '2g  '),
(37, 'Chenildieu', 2, '5', '1', '6', '1', '2g 2g 2g 2g 2g 2g ', ',34,35,36,11,29,38', '2g  '),
(38, 'Cochepaille', 2, '6', '', '6', '1', '2g 2g 2g 2g 2g 2g ', ',34,35,36,37,11,29', '2g  '),
(39, 'Pontmercy', 4, '1', '2', '1', '3', '4g 5g 8g ', ',25,52,55', ' 8g 5g 4g '),
(40, 'Boulatruelle', 6, '1', '', '1', '1', '4g ', ',25', ' 4g '),
(41, 'Eponine', 4, '2', '9', '5.5', '2', '4g 4g 4g 8g 8g 8g 4g 4g 4g 4g 4g ', ',24,25,42,55,57,62,68,69,70,71,75', '4g 8g  '),
(42, 'Anzelma', 4, '3', '', '3', '1', '4g 4g 4g ', ',41,25,24', '4g  '),
(43, 'Woman2', 5, '3', '', '1', '3', '2g 5g 4g ', ',11,26,27', ' 4g 5g 2g '),
(44, 'MotherInnocent', 0, '2', '', '1', '2', '0g 2g ', ',28,11', ' 2g 0g '),
(45, 'Gribier', 0, '1', '', '1', '1', '0g ', ',28', ' 0g '),
(46, 'Jondrette', 7, '', '1', '1', '1', '7g ', ',47', ' 7g '),
(47, 'Mme.Burgon', 7, '1', '1', '1', '2', '7g 8g ', ',46,48', ' 8g 7g '),
(48, 'Gavroche', 8, '4', '18', '4.4', '5', '7g 4g 4g 2g 8g 8g 8g 8g 8g 8g 8g 8g 8g 8g 8g 4g 4g 4g 10g 10g 4g 8g ', ',47,25,27,11,55,57,58,59,60,61,62,63,64,65,66,68,69,71,73,74,75,76', '8g 4g 10g  2g 7g '),
(49, 'Gillenormand', 5, '2', '5', '2.33333333', '3', '5g 2g 5g 5g 5g 8g 5g ', ',26,11,50,51,54,55,56', '5g  2g 8g '),
(50, 'Magnon', 5, '2', '', '1', '2', '5g 4g ', ',49,24', ' 4g 5g '),
(51, 'Mlle.Gillenormand', 5, '3', '4', '2.33333333', '3', '5g 5g 2g 5g 5g 5g 8g ', ',49,26,11,52,53,54,55', '5g  2g 8g '),
(52, 'Mme.Pontmercy', 5, '2', '', '1', '2', '5g 4g ', ',51,39', ' 4g 5g '),
(53, 'Mlle.Vaubois', 5, '1', '', '1', '1', '5g ', ',51', ' 5g '),
(54, 'Lt.Gillenormand', 5, '3', '1', '2', '2', '5g 5g 5g 8g ', ',51,49,26,55', '5g  8g '),
(55, 'Marius', 8, '10', '9', '3.8', '5', '5g 5g 4g 5g 5g 2g 3g 4g 4g 8g 5g 8g 8g 8g 8g 8g 8g 8g 8g ', ',51,49,39,54,26,11,16,25,41,48,56,57,58,59,61,62,63,64,65', '8g 5g 4g  2g 3g '),
(56, 'BaronessT', 5, '2', '', '1', '2', '5g 8g ', ',49,55', ' 8g 5g '),
(57, 'Mabeuf', 8, '3', '8', '3.66666666', '3', '8g 4g 8g 8g 8g 8g 8g 8g 8g 8g 9g ', ',55,41,48,58,59,61,62,63,64,65,67', '8g  4g 9g '),
(58, 'Enjolras', 8, '5', '10', '5', '3', '8g 8g 4g 8g 2g 8g 8g 8g 8g 8g 8g 8g 8g 4g 8g ', ',55,48,27,57,11,59,60,61,62,63,64,65,66,70,76', '8g 4g  2g '),
(59, 'Combeferre', 8, '4', '7', '11', '1', '8g 8g 8g 8g 8g 8g 8g 8g 8g 8g 8g ', ',58,55,48,57,60,61,62,63,64,65,66', '8g  '),
(60, 'Prouvaire', 8, '3', '6', '9', '1', '8g 8g 8g 8g 8g 8g 8g 8g 8g ', ',48,58,59,61,62,63,64,65,66', '8g  '),
(61, 'Feuilly', 8, '6', '5', '11', '1', '8g 8g 8g 8g 8g 8g 8g 8g 8g 8g 8g ', ',48,58,60,59,57,55,62,63,64,65,66', '8g  '),
(62, 'Courfeyrac', 8, '8', '5', '6.5', '2', '8g 8g 8g 8g 8g 4g 8g 8g 8g 8g 8g 8g 8g ', ',55,58,59,48,57,41,61,60,63,64,65,66,76', '8g  4g '),
(63, 'Bahorel', 8, '8', '4', '12', '1', '8g 8g 8g 8g 8g 8g 8g 8g 8g 8g 8g 8g ', ',59,48,62,57,58,61,60,55,64,65,66,76', '8g  '),
(64, 'Bossuet', 8, '10', '3', '6.5', '2', '8g 8g 8g 8g 8g 8g 8g 8g 8g 2g 8g 8g 8g ', ',55,62,48,63,58,61,60,59,57,11,65,66,76', '8g  2g '),
(65, 'Joly', 8, '10', '2', '12', '1', '8g 8g 8g 8g 8g 8g 8g 8g 8g 8g 8g 8g ', ',63,64,48,62,58,61,60,59,57,55,66,76', '8g  '),
(66, 'Grantaire', 8, '9', '1', '10', '1', '8g 8g 8g 8g 8g 8g 8g 8g 8g 8g ', ',64,58,59,62,65,48,63,61,60,76', '8g  '),
(67, 'MotherPlutarch', 9, '1', '', '1', '1', '8g ', ',57', ' 8g '),
(68, 'Gueulemer', 4, '6', '4', '3.33333333', '3', '4g 2g 4g 4g 8g 4g 4g 4g 4g 4g ', ',25,11,24,27,48,41,69,70,71,75', '4g  2g 8g '),
(69, 'Babet', 4, '7', '3', '3.33333333', '3', '4g 4g 2g 4g 4g 8g 4g 4g 4g 4g ', ',25,68,11,24,27,48,41,70,71,75', '4g  2g 8g '),
(70, 'Claquesous', 4, '8', '2', '3.33333333', '3', '4g 4g 4g 2g 4g 4g 4g 8g 4g 4g ', ',25,69,68,11,24,27,41,58,71,75', '4g  2g 8g '),
(71, 'Montparnasse', 4, '8', '1', '3', '3', '4g 4g 4g 4g 2g 8g 4g 4g 4g ', ',27,69,68,70,11,48,41,25,75', '4g  2g 8g '),
(72, 'Toussaint', 5, '3', '', '1', '3', '5g 4g 2g ', ',26,27,11', ' 2g 4g 5g '),
(73, 'Child1', 10, '1', '1', '1', '2', '8g 10g ', ',48,74', ' 10g 8g '),
(74, 'Child2', 10, '2', '', '1', '2', '8g 10g ', ',48,73', ' 10g 8g '),
(75, 'Brujon', 4, '7', '', '3.5', '2', '4g 4g 4g 8g 4g 4g 4g ', ',69,68,25,48,41,70,71', '4g  8g '),
(76, 'Mme.Hucheloup', 8, '7', '', '7', '1', '8g 8g 8g 8g 8g 8g 8g ', ',64,65,66,63,62,48,58', '8g  ');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `message_unknown`
--

INSERT INTO `message_unknown` (`id`, `sender_id`, `receiver_id`, `sender`, `receiver`, `sender_name`, `receiver_name`, `msg`, `date`, `status`, `accept_status`, `spam_status`) VALUES
(5, 6, 3, 'gokulvishnu@gmail.com', 'annamariam@gmail.com', 'Gokul', 'Anna', 'test', '2018-03-19 22:20:37', 'send', 'decline', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `profile_tb`
--

INSERT INTO `profile_tb` (`id`, `fname`, `lname`, `email`, `contact`, `dob`, `gender`, `organization`, `place`, `username`, `password`, `profile_pic`, `status`) VALUES
(1, 'Anila', 'Ninan', 'anilapowathil@gmail.com', 8767768989, '1995-04-16', 'female', 'Student', 'pathanamthitta', 'anila', '123456', 'Profile Pics/18-03-2018 02-23-54-1.png', 1),
(2, 'Merry', 'Mariam', 'merry123@gmail.com', 9886756677, '1995-04-16', 'female', 'Student', 'pathanamthitta', 'merry', '123456', 'Profile Pics/18-03-2018 02-23-54-2.png', 1),
(3, 'Anna', 'Mariam', 'annamariam@gmail.com', 8790676745, '1995-04-16', 'female', 'Student', 'pathanamthitta', 'anna', '123456', 'Profile Pics/18-03-2018 02-23-54-3.png', 1),
(4, 'Anish', 'Mathew', 'anishmathew@gmail.com', 9887687878, '1995-04-16', 'male', 'Student', 'pathanamthitta', 'anish', '123456', 'Profile Pics/18-03-2018 02-23-54-4.png', 1),
(5, 'Sam', 'Koshy', 'samkoshy@gmail.com', 9876543426, '1995-04-16', 'male', 'Student', 'Ernakulam', 'sam', '123456', 'Profile Pics/18-03-2018 02-23-54-5.png', 0),
(6, 'Gokul', 'Vishnu', 'gokulvishnu@gmail.com', 9897687867, '1995-04-16', 'male', 'Staff', 'Ernakulam', 'admin', '1234', 'Profile Pics/18-03-2018 02-23-54-test.png', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `user`, `skills`, `rate`) VALUES
(4, 'anilapowathil@gmail.com', 'c++', 2),
(6, 'anilapowathil@gmail.com', 'ccna', 4);

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
