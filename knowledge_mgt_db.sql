-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 31, 2019 at 05:45 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knowledge_mgt_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_category`
--

CREATE TABLE `access_category` (
  `ac_id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `k_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_category`
--

INSERT INTO `access_category` (`ac_id`, `c_id`, `k_id`) VALUES
(1, 13, 1),
(2, 219, 2),
(3, 214, 3),
(4, 213, 4),
(5, 212, 5),
(6, 212, 6),
(7, 215, 7),
(8, 212, 8),
(9, 212, 9),
(10, 212, 10),
(12, 200, 12),
(13, 200, 13),
(14, 213, 11),
(15, 213, 14),
(17, 213, 15),
(20, 213, 16),
(22, 213, 17),
(23, 213, 18),
(26, 213, 19),
(28, 212, 20),
(30, 212, 21),
(32, 212, 23),
(33, 251, 24),
(34, 254, 24),
(35, 229, 25),
(36, 251, 25),
(37, 222, 35),
(38, 222, 36),
(39, 222, 37),
(42, 222, 38),
(43, 222, 40),
(44, 222, 41),
(45, 222, 42),
(46, 222, 43),
(47, 222, 44);

-- --------------------------------------------------------

--
-- Table structure for table `access_directorate`
--

CREATE TABLE `access_directorate` (
  `ad_id` int(11) NOT NULL,
  `directorate_id` int(11) DEFAULT NULL,
  `k_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `access_group`
--

CREATE TABLE `access_group` (
  `access_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `k_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `access_tag`
--

CREATE TABLE `access_tag` (
  `at_id` int(11) NOT NULL,
  `tag_id` varchar(100) NOT NULL,
  `k_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_tag`
--

INSERT INTO `access_tag` (`at_id`, `tag_id`, `k_id`) VALUES
(1, 'keren', 1),
(2, 'Fita', 2),
(3, 'saja', 3),
(4, 'TelinJuara', 4),
(5, 'bagus', 5),
(7, 'Que', 12),
(8, 'Que', 13),
(9, 'private', 11),
(10, 'private', 14),
(12, 'Gogo', 15),
(14, 'ter', 17),
(15, 'ter', 18),
(18, 'Ok', 19),
(20, 'complex', 20),
(22, 'good', 21),
(24, 'bebas', 23),
(25, 'bagus', 24),
(26, 'test', 26),
(27, 'test', 27),
(28, 'test', 28),
(29, 'test', 30),
(30, 'TelkomselKeren', 32),
(31, 'TelinJuara', 35),
(32, 'test', 37),
(35, 'dlu', 39),
(36, 'Private', 38),
(37, 'point', 41),
(38, 'loading', 43),
(39, 'point', 44);

-- --------------------------------------------------------

--
-- Table structure for table `access_user`
--

CREATE TABLE `access_user` (
  `au_id` int(11) NOT NULL,
  `k_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_user`
--

INSERT INTO `access_user` (`au_id`, `k_id`, `user_id`) VALUES
(3, 11, 115),
(4, 11, 166),
(11, 38, 115),
(12, 38, 166),
(13, 38, 196),
(14, 40, 1),
(15, 40, 2),
(16, 40, 3),
(17, 40, 4),
(18, 40, 5),
(19, 40, 6),
(20, 40, 7),
(21, 40, 8),
(22, 42, 115),
(23, 42, 196),
(24, 43, 196);

-- --------------------------------------------------------

--
-- Table structure for table `access_user_group`
--

CREATE TABLE `access_user_group` (
  `aug_id` int(11) NOT NULL,
  `k_id` int(11) DEFAULT NULL,
  `user_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acl`
--

CREATE TABLE `acl` (
  `ID` int(11) NOT NULL,
  `USER_GROUP_ID` int(11) NOT NULL,
  `JOB_ID` int(11) NOT NULL,
  `ADD_PRIV` char(1) DEFAULT NULL,
  `EDIT_PRIV` char(1) DEFAULT NULL,
  `REMOVE_PRIV` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acl`
--

INSERT INTO `acl` (`ID`, `USER_GROUP_ID`, `JOB_ID`, `ADD_PRIV`, `EDIT_PRIV`, `REMOVE_PRIV`) VALUES
(1, 1, 11, NULL, NULL, NULL),
(48, 6, 5, NULL, NULL, NULL),
(7, 1, 3, NULL, NULL, NULL),
(6, 1, 2, NULL, NULL, NULL),
(31, 1, 1, NULL, NULL, NULL),
(4, 1, 7, NULL, NULL, NULL),
(8, 1, 8, NULL, NULL, NULL),
(9, 1, 9, NULL, NULL, NULL),
(10, 2, 5, NULL, NULL, NULL),
(19, 3, 5, NULL, NULL, NULL),
(12, 2, 11, NULL, NULL, NULL),
(46, 4, 19, NULL, NULL, NULL),
(45, 3, 19, NULL, NULL, NULL),
(15, 1, 13, NULL, NULL, NULL),
(16, 2, 13, NULL, NULL, NULL),
(17, 2, 14, NULL, NULL, NULL),
(29, 1, 16, NULL, NULL, NULL),
(20, 3, 11, NULL, NULL, NULL),
(44, 2, 19, NULL, NULL, NULL),
(22, 3, 13, NULL, NULL, NULL),
(23, 3, 14, NULL, NULL, NULL),
(24, 4, 5, NULL, NULL, NULL),
(25, 4, 11, NULL, NULL, NULL),
(43, 1, 19, NULL, NULL, NULL),
(27, 4, 13, NULL, NULL, NULL),
(28, 4, 14, NULL, NULL, NULL),
(30, 1, 14, NULL, NULL, NULL),
(32, 5, 5, NULL, NULL, NULL),
(33, 5, 11, NULL, NULL, NULL),
(42, 1, 18, NULL, NULL, NULL),
(35, 5, 13, NULL, NULL, NULL),
(36, 5, 14, NULL, NULL, NULL),
(37, 1, 17, NULL, NULL, NULL),
(38, 2, 17, NULL, NULL, NULL),
(39, 3, 17, NULL, NULL, NULL),
(40, 4, 17, NULL, NULL, NULL),
(41, 5, 17, NULL, NULL, NULL),
(47, 5, 19, NULL, NULL, NULL),
(49, 6, 11, NULL, NULL, NULL),
(50, 6, 13, NULL, NULL, NULL),
(51, 6, 14, NULL, NULL, NULL),
(52, 6, 17, NULL, NULL, NULL),
(53, 6, 19, NULL, NULL, NULL),
(69, 7, 5, NULL, NULL, NULL),
(70, 7, 11, NULL, NULL, NULL),
(71, 7, 13, NULL, NULL, NULL),
(72, 7, 14, NULL, NULL, NULL),
(73, 7, 17, NULL, NULL, NULL),
(74, 7, 19, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `approval`
--

CREATE TABLE `approval` (
  `approval_id` int(11) NOT NULL,
  `k_id` int(11) NOT NULL,
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `opponent_id` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `note` text,
  `start_dtm` datetime DEFAULT NULL,
  `end_dtm` datetime DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `take` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approval`
--

INSERT INTO `approval` (`approval_id`, `k_id`, `sender`, `receiver`, `user_id`, `opponent_id`, `status`, `note`, `start_dtm`, `end_dtm`, `level`, `take`) VALUES
(1, 1, 196, 196, 196, NULL, '-1', NULL, '2018-12-05 22:24:05', NULL, 1, '1'),
(2, 1, 196, 196, 196, 196, '1', 'OK', '2018-12-05 22:24:05', NULL, 2, '1'),
(3, 2, 115, 115, 115, NULL, '-1', NULL, '2018-12-11 16:20:44', NULL, 1, '1'),
(4, 2, 115, 196, 115, 196, '1', 'Ok Approve', '2018-12-11 16:20:44', NULL, 2, '1'),
(5, 3, 196, 196, 196, NULL, '-1', NULL, '2018-12-11 17:33:09', NULL, 1, '1'),
(6, 3, 196, 196, 196, 196, '1', 'OK', '2018-12-11 17:33:09', NULL, 2, '1'),
(7, 3, 196, 115, 196, 115, '1', 'OK', '2018-12-11 17:33:10', NULL, 3, '1'),
(8, 3, 196, 166, 196, 166, '-2', '', '2018-12-11 17:33:10', NULL, 3, '0'),
(9, 4, 115, 115, 115, NULL, '-1', NULL, '2018-12-14 06:17:21', NULL, 1, '1'),
(10, 4, 115, 115, 115, 115, '1', 'Ok Sipp', '2018-12-14 06:17:21', NULL, 2, '1'),
(11, 5, 115, 115, 115, NULL, '-1', NULL, '2018-12-14 07:45:45', NULL, 1, '1'),
(12, 5, 115, 115, 115, 115, '-2', NULL, '2018-12-14 07:45:45', NULL, 2, '0'),
(13, 6, 115, 115, 115, NULL, '-1', NULL, '2018-12-14 07:53:01', NULL, 1, '1'),
(14, 6, 115, 115, 115, 115, '1', 'OK', '2018-12-14 07:53:01', NULL, 2, '1'),
(15, 6, 115, 115, 115, 115, '1', 'OK', '2018-12-14 07:53:02', NULL, 3, '1'),
(16, 6, 115, 166, 115, 166, '-2', '', '2018-12-14 07:53:02', NULL, 3, '0'),
(17, 7, 115, 115, 115, NULL, '-1', NULL, '2018-12-14 07:55:55', NULL, 1, '1'),
(18, 7, 115, 115, 115, 115, '1', 'Ok Bro', '2018-12-14 07:55:55', NULL, 2, '1'),
(19, 8, 115, 115, 115, NULL, '-1', NULL, '2018-12-14 10:16:18', NULL, 1, '1'),
(20, 8, 115, 115, 115, 115, '1', 'OK', '2018-12-14 10:16:18', NULL, 2, '1'),
(21, 8, 115, 115, 115, 115, '-2', '', '2018-12-14 10:16:19', NULL, 3, '0'),
(22, 8, 115, 166, 115, 166, '-2', '', '2018-12-14 10:16:19', NULL, 3, '0'),
(23, 8, 115, 196, 115, 196, '1', 'OK', '2018-12-14 10:16:19', NULL, 3, '1'),
(24, 9, 115, 115, 115, NULL, '-1', NULL, '2018-12-14 10:26:46', NULL, 1, '1'),
(25, 9, 115, 115, 115, 115, '1', 'OK', '2018-12-14 10:26:46', NULL, 2, '1'),
(26, 9, 115, 115, 115, 115, '1', '', '2018-12-14 10:26:47', NULL, 3, '0'),
(27, 9, 115, 166, 115, 166, '1', '', '2018-12-14 10:26:47', NULL, 3, '0'),
(28, 9, 115, 196, 115, 196, '1', '', '2018-12-14 10:26:47', NULL, 3, '0'),
(29, 10, 196, 196, 196, NULL, '-1', NULL, '2018-12-14 10:31:32', NULL, 1, '1'),
(30, 10, 196, 196, 196, 196, '1', 'OK', '2018-12-14 10:31:32', NULL, 2, '1'),
(31, 10, 196, 115, 196, 115, '1', '', '2018-12-14 10:31:33', NULL, 3, '0'),
(32, 10, 196, 166, 196, 166, '1', '', '2018-12-14 10:31:33', NULL, 3, '0'),
(33, 10, 196, 196, 196, 196, '1', '', '2018-12-14 10:31:33', NULL, 3, '0'),
(34, 11, 196, 196, 196, 196, '-1', '', '2018-12-17 15:11:59', NULL, 1, '-1'),
(35, 11, 196, 196, 196, 196, '-2', '', '2018-12-17 15:11:59', NULL, 2, '0'),
(36, 12, 196, 196, 196, 196, '3', 'sya return', '2018-12-17 15:49:39', NULL, 1, '0'),
(37, 12, 196, 196, 196, 196, '0', '', '2018-12-17 15:49:39', NULL, 2, '0'),
(38, 13, 196, NULL, 196, NULL, 'DRAFT', NULL, '2018-12-17 15:53:53', NULL, 2, '0'),
(39, 14, 196, NULL, 196, NULL, 'DRAFT', NULL, '2018-12-17 16:47:44', NULL, 2, '0'),
(40, 15, 196, 196, 196, 196, '-1', '', '2018-12-17 16:50:46', NULL, 1, '-1'),
(41, 15, 196, 196, 196, 196, '-2', '', '2018-12-17 16:50:46', NULL, 2, '0'),
(42, 16, 196, 196, 196, 196, '3', 'return', '2018-12-17 16:57:39', NULL, 1, '0'),
(43, 16, 196, 196, 196, 196, '0', '', '2018-12-17 16:57:39', NULL, 2, '0'),
(46, 18, 196, 196, 196, NULL, '-1', NULL, '2018-12-17 17:12:55', NULL, 1, '1'),
(47, 18, 196, 196, 196, 196, '-2', NULL, '2018-12-17 17:12:55', NULL, 2, '0'),
(50, 19, 196, 196, 196, NULL, '-1', NULL, '2018-12-17 17:24:51', NULL, 1, '1'),
(51, 19, 196, 196, 196, 196, '-2', NULL, '2018-12-17 17:24:51', NULL, 2, '0'),
(52, 20, 196, 196, 196, 196, '-1', '', '2018-12-18 18:45:46', NULL, 1, '-1'),
(53, 20, 196, 196, 196, 196, '-2', '', '2018-12-18 18:45:46', NULL, 2, '0'),
(54, 20, 196, 115, 196, 115, '0', '', '2018-12-18 18:45:48', NULL, 3, '0'),
(55, 20, 196, 166, 196, 166, '0', '', '2018-12-18 18:45:48', NULL, 3, '0'),
(56, 20, 196, 196, 196, 196, '0', '', '2018-12-18 18:45:48', NULL, 3, '0'),
(57, 22, 196, NULL, 196, NULL, 'DRAFT', NULL, '2018-12-20 13:35:07', NULL, 2, '0'),
(58, 23, 196, 196, 196, 196, '1', '', '2018-12-20 13:41:29', NULL, 2, '0'),
(59, 23, 196, 196, 196, NULL, '-1', NULL, '2018-12-20 13:41:46', NULL, 1, '1'),
(60, 23, 196, 196, 196, 196, '1', '', '2018-12-20 13:41:46', NULL, 2, '0'),
(61, 24, 196, 196, 196, NULL, '-1', NULL, '2018-12-23 14:42:20', NULL, 1, '1'),
(62, 24, 196, 196, 196, 196, '1', 'Ok', '2018-12-23 14:42:20', NULL, 2, '1'),
(63, 24, 196, 115, 196, 115, '1', '', '2018-12-23 14:42:26', NULL, 3, '0'),
(64, 24, 196, 166, 196, 166, '1', '', '2018-12-23 14:42:26', NULL, 3, '0'),
(65, 24, 196, 196, 196, 196, '1', '', '2018-12-23 14:42:26', NULL, 3, '0'),
(66, 25, 196, 196, 196, NULL, '-1', NULL, '2018-12-27 11:26:15', NULL, 1, '1'),
(67, 25, 196, 196, 196, 196, '1', 'OK', '2018-12-27 11:26:15', NULL, 2, '1'),
(68, 25, 196, 115, 196, 115, '1', '', '2018-12-27 11:26:40', NULL, 3, '0'),
(69, 25, 196, 166, 196, 166, '1', '', '2018-12-27 11:26:40', NULL, 3, '0'),
(70, 25, 196, 196, 196, 196, '1', '', '2018-12-27 11:26:40', NULL, 3, '0'),
(71, 26, 196, NULL, 196, NULL, 'DRAFT', NULL, '2019-01-03 09:59:02', NULL, 2, '0'),
(72, 27, 196, NULL, 196, NULL, 'DRAFT', NULL, '2019-01-03 09:59:34', NULL, 2, '0'),
(73, 28, 196, NULL, 196, NULL, 'DRAFT', NULL, '2019-01-03 09:59:51', NULL, 2, '0'),
(74, 29, 196, NULL, 196, NULL, 'DRAFT', NULL, '2019-01-03 10:00:47', NULL, 2, '0'),
(75, 30, 1, NULL, 1, NULL, 'DRAFT', NULL, '2019-01-03 10:04:25', NULL, 2, '0'),
(76, 31, 1, NULL, 1, NULL, 'DRAFT', NULL, '2019-01-03 10:04:43', NULL, 2, '0'),
(77, 32, 270, NULL, 270, NULL, 'DRAFT', NULL, '2019-01-03 10:06:53', NULL, 2, '0'),
(78, 33, 270, NULL, 270, NULL, 'DRAFT', NULL, '2019-01-03 10:07:15', NULL, 2, '0'),
(79, 34, 270, NULL, 270, NULL, 'DRAFT', NULL, '2019-01-03 10:08:01', NULL, 2, '0'),
(80, 35, 196, 196, 196, NULL, '-1', NULL, '2019-01-03 14:41:07', NULL, 1, '1'),
(81, 35, 196, 196, 196, 196, '-2', NULL, '2019-01-03 14:41:07', NULL, 2, '0'),
(82, 35, 196, 115, 196, 115, '0', NULL, '2019-01-03 14:41:12', NULL, 3, '0'),
(83, 35, 196, 166, 196, 166, '0', NULL, '2019-01-03 14:41:12', NULL, 3, '0'),
(84, 35, 196, 196, 196, 196, '0', NULL, '2019-01-03 14:41:12', NULL, 3, '0'),
(85, 36, 196, 196, 196, NULL, '-1', NULL, '2019-01-03 15:02:53', NULL, 1, '1'),
(86, 36, 196, 196, 196, 196, '-2', NULL, '2019-01-03 15:02:53', NULL, 2, '0'),
(87, 36, 196, 115, 196, 115, '0', NULL, '2019-01-03 15:02:56', NULL, 3, '0'),
(88, 36, 196, 166, 196, 166, '0', NULL, '2019-01-03 15:02:56', NULL, 3, '0'),
(89, 36, 196, 196, 196, 196, '0', NULL, '2019-01-03 15:02:56', NULL, 3, '0'),
(90, 37, 196, 196, 196, NULL, '-1', NULL, '2019-01-04 08:55:16', NULL, 1, '1'),
(91, 37, 196, 196, 196, 196, '1', 'OK', '2019-01-04 08:55:16', NULL, 2, '1'),
(92, 37, 196, 115, 196, 115, '1', '', '2019-01-04 08:55:23', NULL, 3, '0'),
(93, 37, 196, 166, 196, 166, '1', '', '2019-01-04 08:55:23', NULL, 3, '0'),
(94, 38, 196, 196, 196, NULL, '-1', NULL, '2019-01-08 11:38:23', NULL, 1, '1'),
(95, 38, 196, 196, 196, 196, '1', '', '2019-01-08 11:38:23', NULL, 2, '0'),
(96, 39, 196, NULL, 196, NULL, 'DRAFT', NULL, '2019-01-08 16:02:50', NULL, 2, '0'),
(97, 40, 115, 115, 115, 196, '3', 'return yaaaa', '2019-01-08 16:19:32', NULL, 1, '0'),
(98, 40, 115, 196, 115, 196, '0', '', '2019-01-08 16:19:32', NULL, 2, '0'),
(99, 41, 196, 196, 196, NULL, '-1', NULL, '2019-01-10 12:31:41', NULL, 1, '1'),
(100, 41, 196, 196, 196, 196, '1', 'Ok', '2019-01-10 12:31:41', NULL, 2, '1'),
(101, 41, 196, 115, 196, 115, '-2', '', '2019-01-10 12:31:48', NULL, 3, '0'),
(102, 41, 196, 166, 196, 166, '-2', '', '2019-01-10 12:31:48', NULL, 3, '0'),
(103, 42, 115, 115, 115, NULL, '-1', NULL, '2019-01-10 12:45:23', NULL, 1, '1'),
(104, 42, 115, 196, 115, 196, '-2', NULL, '2019-01-10 12:45:23', NULL, 2, '0'),
(105, 43, 196, 196, 196, NULL, '-1', NULL, '2019-01-10 12:50:34', NULL, 1, '1'),
(106, 43, 196, 196, 196, 196, '1', '', '2019-01-10 12:50:34', NULL, 2, '0'),
(107, 44, 196, 196, 196, NULL, '-1', NULL, '2019-01-15 09:27:54', NULL, 1, '1'),
(108, 44, 196, 196, 196, 196, '1', 'Ok Approve', '2019-01-15 09:27:54', NULL, 2, '1'),
(109, 44, 196, 115, 196, 115, '1', '', '2019-01-15 09:27:54', NULL, 3, '0'),
(110, 44, 196, 166, 196, 166, '1', '', '2019-01-15 09:27:54', NULL, 3, '0');

--
-- Triggers `approval`
--
DELIMITER $$
CREATE TRIGGER `approval_insert` AFTER INSERT ON `approval` FOR EACH ROW BEGIN
IF NEW.take = '-1' THEN
INSERT INTO approval_operation
    (
    	approval_id,
        k_id,
        sender,
        receiver,
        user_id,
        opponent_id,
        status,
        note,
        start_dtm,
        end_dtm,
        level,
        take
    )
    VALUES
    (
        NEW.approval_id,
        NEW.k_id,
        NEW.sender,
        NEW.receiver,
        NEW.user_id,
        NEW.opponent_id,
        NEW.status,
        NEW.note,
        SYSDATE(),
        NEW.end_dtm,
        NEW.level,
        NEW.take
    );
    
    END IF;
    
  END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `approval_operation` AFTER UPDATE ON `approval` FOR EACH ROW BEGIN
IF NEW.take = 1 OR NEW.take = -1 THEN
	INSERT INTO approval_operation
    (
    	approval_id,
        k_id,
        sender,
        receiver,
        user_id,
        opponent_id,
        status,
        note,
        start_dtm,
        end_dtm,
        level,
        take
    )
    VALUES
    (
        NEW.approval_id,
        NEW.k_id,
        NEW.sender,
        NEW.receiver,
        NEW.user_id,
        NEW.opponent_id,
        NEW.status,
        NEW.note,
        SYSDATE(),
        NEW.end_dtm,
        NEW.level,
        NEW.take
    );
    ELSEIF NEW.take = "3" OR NEW.take = "2" THEN
    INSERT INTO approval_operation
    (
    	approval_id,
        k_id,
        sender,
        receiver,
        user_id,
        opponent_id,
        status,
        note,
        start_dtm,
        end_dtm,
        level,
        take
    )
    VALUES
    (
        NEW.approval_id,
        NEW.k_id,
        NEW.sender,
        NEW.receiver,
        NEW.user_id,
        NEW.opponent_id,
        NEW.take,
        NEW.note,
        SYSDATE(),
        NEW.end_dtm,
        NEW.level,
        NEW.take
    );
    
    END IF;
    
  END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `approval_operation`
--

CREATE TABLE `approval_operation` (
  `ao_id` int(11) NOT NULL,
  `approval_id` int(11) NOT NULL,
  `k_id` int(11) NOT NULL,
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `opponent_id` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `note` text,
  `start_dtm` datetime DEFAULT NULL,
  `end_dtm` datetime DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `take` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approval_operation`
--

INSERT INTO `approval_operation` (`ao_id`, `approval_id`, `k_id`, `sender`, `receiver`, `user_id`, `opponent_id`, `status`, `note`, `start_dtm`, `end_dtm`, `level`, `take`) VALUES
(1, 2, 1, 196, 196, 196, 196, '1', 'OK', '2018-12-05 22:24:35', NULL, 2, '1'),
(2, 4, 2, 115, 196, 115, 196, '1', 'Ok Approve', '2018-12-11 16:21:09', NULL, 2, '1'),
(3, 6, 3, 196, 196, 196, 196, '1', 'OK', '2018-12-11 17:33:23', NULL, 2, '1'),
(4, 7, 3, 196, 115, 196, 115, '1', 'OK', '2018-12-11 17:33:50', NULL, 3, '1'),
(5, 10, 4, 115, 115, 115, 115, '1', 'Ok Sipp', '2018-12-14 06:17:47', NULL, 2, '1'),
(6, 14, 6, 115, 115, 115, 115, '1', 'OK', '2018-12-14 07:53:28', NULL, 2, '1'),
(7, 15, 6, 115, 115, 115, 115, '1', 'OK', '2018-12-14 07:53:42', NULL, 3, '1'),
(8, 18, 7, 115, 115, 115, 115, '1', 'Ok Bro', '2018-12-14 07:56:12', NULL, 2, '1'),
(9, 20, 8, 115, 115, 115, 115, '1', 'OK', '2018-12-14 10:16:35', NULL, 2, '1'),
(10, 23, 8, 115, 196, 115, 196, '1', 'OK', '2018-12-14 10:17:04', NULL, 3, '1'),
(11, 25, 9, 115, 115, 115, 115, '1', 'OK', '2018-12-14 10:27:06', NULL, 2, '1'),
(12, 26, 9, 115, 115, 115, 115, '1', 'OK', '2018-12-14 10:27:58', NULL, 3, '1'),
(13, 30, 10, 196, 196, 196, 196, '1', 'OK', '2018-12-14 10:31:44', NULL, 2, '1'),
(14, 31, 10, 196, 115, 196, 115, '1', 'SIPP', '2018-12-14 10:33:10', NULL, 3, '1'),
(15, 37, 12, 196, 196, 196, 196, '3', 'sya return', '2018-12-17 15:53:09', NULL, 2, '3'),
(16, 35, 11, 196, 196, 196, 196, '3', 'return', '2018-12-17 16:15:57', NULL, 2, '3'),
(17, 34, 11, 196, 196, 196, 196, '-1', '', '2018-12-17 16:41:33', NULL, 1, '-1'),
(18, 41, 15, 196, 196, 196, 196, '3', 'Return', '2018-12-17 16:51:02', NULL, 2, '3'),
(19, 40, 15, 196, 196, 196, 196, '-1', '', '2018-12-17 16:56:01', NULL, 1, '-1'),
(20, 43, 16, 196, 196, 196, 196, '3', 'return', '2018-12-17 16:57:52', NULL, 2, '3'),
(21, 45, 17, 196, 196, 196, 196, '3', 'Return', '2018-12-17 17:09:43', NULL, 2, '3'),
(22, 49, 19, 196, 196, 196, 196, '3', 'Ok Bro', '2018-12-17 17:23:45', NULL, 2, '3'),
(23, 53, 20, 196, 196, 196, 196, '3', 'Return', '2018-12-18 18:46:05', NULL, 2, '3'),
(24, 52, 20, 196, 196, 196, 196, '-1', '', '2018-12-18 18:46:27', NULL, 1, '-1'),
(25, 58, 21, 196, 196, 196, 196, '3', 'return yaa', '2018-12-19 09:28:33', NULL, 2, '3'),
(26, 60, 23, 196, 196, 196, 196, '1', 'Ok', '2018-12-20 13:43:25', NULL, 2, '1'),
(27, 62, 24, 196, 196, 196, 196, '1', 'Ok', '2018-12-23 14:42:36', NULL, 2, '1'),
(28, 65, 24, 196, 196, 196, 196, '1', 'OK', '2018-12-23 14:43:05', NULL, 3, '1'),
(29, 67, 25, 196, 196, 196, 196, '1', 'OK', '2018-12-27 11:27:06', NULL, 2, '1'),
(30, 70, 25, 196, 196, 196, 196, '1', 'OK', '2018-12-27 11:28:26', NULL, 3, '1'),
(31, 91, 37, 196, 196, 196, 196, '1', 'OK', '2019-01-04 08:55:36', NULL, 2, '1'),
(32, 92, 37, 196, 115, 196, 115, '1', 'OK', '2019-01-04 08:56:16', NULL, 3, '1'),
(33, 95, 38, 196, 196, 196, 196, '1', 'Ok Approve', '2019-01-08 12:34:09', NULL, 2, '1'),
(34, 98, 40, 115, 196, 115, 196, '3', 'return yaaaa', '2019-01-08 16:20:26', NULL, 2, '3'),
(35, 100, 41, 196, 196, 196, 196, '1', 'Ok', '2019-01-10 12:32:23', NULL, 2, '1'),
(36, 106, 43, 196, 196, 196, 196, '1', 'Ok', '2019-01-10 12:52:09', NULL, 2, '1'),
(37, 108, 44, 196, 196, 196, 196, '1', 'Ok Approve', '2019-01-15 09:28:18', NULL, 2, '1'),
(38, 109, 44, 196, 115, 196, 115, '1', 'Ok Approve', '2019-01-15 09:28:58', NULL, 3, '1');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `bookmark_id` int(11) NOT NULL,
  `k_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `my_bookmark` int(11) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(11) NOT NULL,
  `sequence_to` int(11) NOT NULL DEFAULT '0',
  `ref_id` int(11) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `level` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `access_permission` varchar(45) DEFAULT NULL,
  `direct_approval` varchar(45) DEFAULT NULL,
  `attachment_request` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `sequence_to`, `ref_id`, `name`, `description`, `level`, `type`, `access_permission`, `direct_approval`, `attachment_request`) VALUES
(200, 3, NULL, 'Question', 'Question', 1, 'item', 'OPTION', 'YES', NULL),
(222, 0, NULL, 'Company Policy', '', 1, 'item', 'OPTION', 'NO', 'NO'),
(228, 0, NULL, 'Company Policy', '', 1, 'folder', 'OPTION', 'NO', 'NO'),
(229, 0, 228, 'Policy', '', 2, 'item', 'OPTION', 'NO', 'NO'),
(230, 0, NULL, 'Document Type', '', 1, 'folder', 'OPTION', 'NO', 'NO'),
(236, 0, 230, 'Tutorial', '', 2, 'item', 'OPTION', 'NO', 'NO'),
(237, 0, 230, 'Report', '', 2, 'item', 'OPTION', 'NO', 'NO'),
(238, 0, 230, 'Program & Plan', '', 2, 'item', 'OPTION', 'NO', 'NO'),
(239, 0, 230, 'Telin Orientation Program', '', 2, 'item', 'OPTION', 'NO', 'NO'),
(240, 0, 230, 'Innovation', '', 2, 'item', 'OPTION', 'NO', 'NO'),
(241, 0, 230, 'Publication & News Release', '', 2, 'item', 'OPTION', 'NO', 'NO'),
(242, 0, 230, 'Tips', '', 2, 'item', 'OPTION', 'NO', 'NO'),
(243, 0, 230, 'Best Practice', '', 2, 'item', 'OPTION', 'NO', 'NO'),
(244, 0, 230, 'Article', '', 2, 'item', 'OPTION', 'NO', 'NO'),
(245, 0, NULL, 'Directorate/Global Offices', '', 1, 'folder', 'OPTION', 'NO', 'NO'),
(246, 0, 245, 'Main Directorate', '', 2, 'folder', 'OPTION', 'NO', 'NO'),
(247, 0, 245, 'Commercial', '', 2, 'folder', 'OPTION', 'NO', 'NO'),
(248, 0, 245, 'Technology', '', 2, 'folder', 'OPTION', 'NO', 'NO'),
(249, 0, 245, 'Finance & Business Partner', '', 2, 'folder', 'OPTION', 'NO', 'NO'),
(250, 0, 245, 'Global Offices', '', 2, 'folder', 'OPTION', 'NO', 'NO'),
(251, 0, 245, 'Corporate Secretary', '', 2, 'item', 'OPTION', 'NO', 'NO'),
(252, 0, 246, 'Corporate Secretary', '', 3, 'item', 'OPTION', 'NO', 'NO'),
(253, 0, 246, 'Internal Audit', '', 3, 'item', 'OPTION', 'NO', 'NO'),
(254, 0, 245, 'Corporate Strategy', '', 2, 'item', 'OPTION', 'NO', 'NO'),
(255, 0, 246, 'Corporate Strategy', '', 3, 'item', 'OPTION', 'NO', 'NO'),
(256, 0, 246, 'Legal & Compliance', '', 3, 'item', 'OPTION', 'NO', 'NO'),
(257, 0, 246, 'Transformation Management Office', '', 3, 'item', 'OPTION', 'NO', 'NO'),
(258, 0, 246, 'Global Business Operation', '', 3, 'folder', 'OPTION', 'NO', 'NO'),
(259, 0, 246, 'Strategic Investment', '', 3, 'item', 'OPTION', 'NO', 'NO'),
(260, 0, 258, 'Strategic Investment', '', 4, 'item', 'OPTION', 'NO', 'NO'),
(261, 0, 258, 'International Business Operation Region', '', 4, 'item', 'OPTION', 'NO', 'NO'),
(262, 0, 258, 'Synergy & Project Management', '', 4, 'item', 'OPTION', 'NO', 'NO'),
(264, 0, 247, 'Voice & Mobility Sales', '', 3, 'folder', 'OPTION', 'NO', 'NO'),
(265, 0, 247, 'Carrier Enterprise Sales', '', 3, 'folder', 'OPTION', 'NO', 'NO'),
(266, 0, 247, 'Marketing & Business Intelligence', '', 3, 'item', 'OPTION', 'NO', 'NO'),
(267, 0, 247, 'Product Management', '', 3, 'item', 'OPTION', 'NO', 'NO'),
(268, 0, 247, 'Product/Service Innovation & Development', '', 3, 'item', 'OPTION', 'NO', 'NO'),
(269, 0, 247, 'Partnership & Sourcing', '', 3, 'item', 'OPTION', 'NO', 'NO'),
(270, 0, 248, 'Global Network Operation', '', 3, 'folder', 'OPTION', 'NO', 'NO'),
(271, 0, 270, 'Network Operation Readiness', '', 4, 'item', 'OPTION', 'NO', 'NO');

--
-- Triggers `category`
--
DELIMITER $$
CREATE TRIGGER `category_BEFORE_DELETE` BEFORE DELETE ON `category` FOR EACH ROW BEGIN

	INSERT INTO `knowledge_mgt_db`.`category_history`
	(
	`c_id`,
	`sequence_to`,
	`ref_id`,
	`name`,
	`description`,
	`level`,
	`type`,
	`access_permission`,
	`direct_approval`,
	`attachment_request`
    )
	VALUES
	(
	old.c_id,
	old.sequence_to,
	old.ref_id,
	old.name,
	old.description,
	old.level,
	old.type,
	old.access_permission,
	old.direct_approval,
	old.attachment_request
    );

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `category_detail`
--

CREATE TABLE `category_detail` (
  `cd_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_detail`
--

INSERT INTO `category_detail` (`cd_id`, `c_id`, `name`, `description`) VALUES
(1, 1, 'Siapa yang berhak Mengajukan APS ?', 'Version 1.1'),
(2, 2, 'Bagaimana cara penjualan saham ESOP 2013?', 'Version 2.1'),
(3, 1, 'Apakah karyawan dengan status menjalani hukuman disiplin berhak untuk promosi dan mutasi?', ''),
(4, 1, 'Saya mendapat SK Mutasi ke luar kota. Untuk biaya pemindahan sekolah anak apakah ditanggung oleh dinas? ', ''),
(5, 1, 'Bagaimana tata cara atau prosedur pengajuan mutasi atau kepindahan atas permintaan sendiri (APS)?', ''),
(6, 1, 'Apakah yang dimaksud Engine Team dan bagaimana karir serta remunerasinya, apakah berbeda dengan karyawan non Engine Team?', ''),
(7, 2, 'Apakah konsekuensi jika rekening gaji saya bukan dari bank afiliasi perusahaan?', '');

-- --------------------------------------------------------

--
-- Table structure for table `category_history`
--

CREATE TABLE `category_history` (
  `ch_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `sequence_to` int(11) NOT NULL DEFAULT '0',
  `ref_id` int(11) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `level` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `access_permission` varchar(45) DEFAULT NULL,
  `direct_approval` varchar(45) DEFAULT NULL,
  `attachment_request` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_history`
--

INSERT INTO `category_history` (`ch_id`, `c_id`, `sequence_to`, `ref_id`, `name`, `description`, `level`, `type`, `access_permission`, `direct_approval`, `attachment_request`) VALUES
(1, 206, 1, NULL, 'Coba 21', 'Coba 21', 1, 'folder', 'FITA', 'YES', NULL),
(2, 1, 2, NULL, 'Technology', 'Technology', 1, 'folder', 'OPTION', NULL, NULL),
(3, 2, 1, NULL, 'Business', 'Business', 1, 'folder', 'OPTION', NULL, NULL),
(4, 4, 0, 2, 'indiHome', 'indiHome', 2, 'folder', 'OPTION', NULL, NULL),
(5, 9, 0, 4, 'AP2', 'AP2', 3, 'folder', 'OPTION', 'NO', NULL),
(6, 10, 0, 4, 'AP2', 'AP2', 3, 'item', 'OPTION', 'NO', NULL),
(7, 12, 0, 4, 'FITA', 'test', 3, 'item', 'FITA', 'YES', NULL),
(8, 13, 0, 1, 'IT', 'IT', 2, 'item', 'OPTION', 'YES', NULL),
(9, 200, 3, NULL, 'Question', 'Question', 1, 'item', 'OPTION', 'YES', NULL),
(10, 201, 0, 4, 'MI', 'MI', 3, 'item', 'OPTION', 'YES', NULL),
(11, 202, 2, NULL, 'Managemen Informatika', 'Managemen Informatika', 1, 'folder', 'OPTION', 'NO', NULL),
(12, 203, 1, NULL, 'Coba 21', 'Coba 21', 1, 'folder', 'FITA', 'NO', NULL),
(13, 204, 0, NULL, 'Coba 21', 'Coba 21', 1, 'folder', 'FITA', 'NO', NULL),
(14, 205, 1, NULL, 'Coba 21', 'Coba 21', 1, 'folder', 'FITA', 'NO', NULL),
(15, 217, 0, 216, 'Fita Item', '', 2, 'item', 'FITA', 'NO', NULL),
(16, 216, 1, NULL, 'FITA Folder', 'Fita Folder', 1, 'folder', 'FITA', 'YES', NULL),
(17, 209, 0, NULL, 'FITA, NO, YES', '', 1, 'item', 'FITA', 'NO', 'YES'),
(18, 200, 3, NULL, 'Question', 'Question', 1, 'item', 'OPTION', 'YES', 'YES'),
(19, 210, 0, NULL, 'FITA, NO, YES', '', 1, 'item', 'FITA', 'NO', 'YES'),
(20, 212, 0, NULL, 'OPTION, NO, YES', '', 1, 'item', 'OPTION', 'NO', 'YES'),
(21, 213, 0, NULL, 'OPTION, YES, YES', '', 1, 'item', 'OPTION', 'YES', 'YES'),
(22, 214, 0, NULL, 'FITA, NO, NO', '', 1, 'item', 'FITA', 'NO', 'NO'),
(23, 215, 0, NULL, 'FITA, YES, NO', '', 1, 'item', 'FITA', 'YES', 'NO'),
(24, 218, 1, NULL, 'FITA, YES, NO', '', 1, 'folder', 'FITA', 'YES', 'NO'),
(25, 219, 1, 218, 'NON FITA, NO, NO', '', 2, 'item', 'OPTION', 'NO', 'NO'),
(26, 220, 0, 218, 'FITA, YES, YES', 'Coba Folder', 2, 'item', 'FITA', 'YES', 'YES'),
(27, 221, 0, NULL, '', '', NULL, NULL, NULL, NULL, 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cm_id` int(11) NOT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `content` text,
  `create_dtm` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `k_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cm_id`, `ref_id`, `content`, `create_dtm`, `user_id`, `k_id`) VALUES
(1, NULL, 'test donk', '2018-12-05 22:39:32', 196, 1),
(2, 1, 'yg bener aja ini doknya', '2018-12-05 22:39:42', 196, 1),
(3, 1, 'sya udah setting bener kooo', '2018-12-05 22:39:52', 196, 1),
(4, NULL, '<a href=\"www.google.com\">Google</a>', '2018-12-06 10:52:26', 115, 1),
(5, 4, 'asdfa ', '2018-12-06 10:53:31', 115, 1),
(6, 4, 'asd fasd fasdf as ', '2018-12-06 10:53:41', 115, 1),
(7, NULL, 'test', '2018-12-14 17:44:42', 196, 7),
(8, 7, 'test', '2018-12-14 17:44:51', 196, 7),
(9, NULL, 'test', '2018-12-17 14:06:36', 196, 7),
(10, NULL, 'tset', '2018-12-23 13:05:18', 196, 23),
(11, NULL, 'Ok', '2018-12-23 13:05:33', 196, 6),
(12, NULL, 'Oke', '2018-12-27 11:13:42', 196, 24),
(13, 12, 'Oke', '2018-12-27 11:15:26', 196, 24),
(14, NULL, 'test', '2018-12-27 15:11:31', 196, 25),
(15, 14, 'Oke', '2018-12-27 15:11:39', 196, 25),
(16, NULL, 'enam', '2018-12-27 18:39:24', 196, 25),
(17, NULL, 'asd', '2018-12-27 18:49:13', 196, 25);

--
-- Triggers `comments`
--
DELIMITER $$
CREATE TRIGGER `comment_point` AFTER INSERT ON `comments` FOR EACH ROW BEGIN

    UPDATE user_detail SET point = point + 1 WHERE user_id = 		NEW.user_id;
    
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `directorate_id` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `code` varchar(64) NOT NULL,
  `num_code` varchar(6) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(60) DEFAULT NULL,
  `course_model` varchar(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `directorate_id`, `parent`, `code`, `num_code`, `name`, `description`, `course_model`) VALUES
(15, 12, 0, '15', '', 'GLOBAL NETWORK OPERATION', NULL, NULL),
(16, 13, 0, '16', '', 'Voice & Mobility Sales', NULL, NULL),
(17, 13, 0, '17', '', 'CARRIER ENTERPRISE SALES', NULL, NULL),
(101, 10, 0, '101', '', 'LEGAL & COMPLIANCE', NULL, NULL),
(102, 10, 0, '102', '', 'CORPORATE SECRETARY', NULL, NULL),
(103, 10, 0, '103', '', 'INTERNAL AUDIT', NULL, NULL),
(104, 10, 0, '104', '', 'TRANSFORMATION MANAGEMENT OFFICE', NULL, NULL),
(105, 10, 0, '105', '', 'CORPORATE STRATEGY', NULL, NULL),
(111, 11, 0, '111', '', 'CORPORATE FINANCE', NULL, NULL),
(112, 11, 0, '112', '', 'BUSINESS CONTROLLER', NULL, NULL),
(113, 11, 0, '113', '', 'FINANCIAL ACCOUNTING & ASSET MANAGEMENT', NULL, NULL),
(114, 11, 0, '114', '', 'SETTLEMENT & BILLING COLLECTION', NULL, NULL),
(115, 11, 0, '115', '', 'HUMAN CAPITAL', NULL, NULL),
(116, 11, 0, '116', '', 'PROCUREMENT & GENERAL SERVICES', NULL, NULL),
(121, 12, 0, '121', '', 'INFRASTRUCTURE PLANNING & DEVELOPMENT', NULL, NULL),
(122, 12, 0, '122', '', 'NETWORK PERFORMANCE', NULL, NULL),
(123, 12, 0, '123', '', 'INFORMATION TECHNOLOGY', NULL, NULL),
(131, 13, 0, '131', '', 'MARKETING & BUSINESS INTELLINGENCE', NULL, NULL),
(132, 13, 0, '132', '', 'PRODUCT MANAGEMENT', NULL, NULL),
(133, 13, 0, '133', '', 'PRODUCT & SERVICE INNOVATION DEVELOPMENT', NULL, NULL),
(134, 13, 0, '134', '', 'PARTNERSHIP & SOURCING', NULL, NULL),
(141, 14, 0, '141', '', 'STRATEGIC INVESTMENT', NULL, NULL),
(142, 14, 0, '142', '', 'SYNERGY & PROJECT MANAGEMENT', NULL, NULL),
(143, 14, 0, '143', '', 'INTERNATIONAL BUSINESS OPERATION', NULL, NULL),
(151, 15, 0, '151', '', 'NETWORK OPERATION READINESS ', NULL, NULL),
(152, 15, 0, '152', '', 'VOICE & SIGNALLING OPERATION', NULL, NULL),
(153, 15, 0, '153', '', 'CONNECTIVITY OPERATION', NULL, NULL),
(154, 15, 0, '154', '', 'DIGITAL OPERATION', NULL, NULL),
(161, 16, 0, '161', '', 'VOICE SALES', NULL, NULL),
(162, 16, 0, '162', '', 'MOBILITY SALES', NULL, NULL),
(171, 17, 0, '171', '', 'CARRIER ENTERPRISE SALES 1', NULL, NULL),
(172, 17, 0, '172', '', 'CARRIER ENTERPRISE SALES 2', NULL, NULL),
(173, 17, 0, '173', '', 'CARRIER ENTERPRISE SALES 3', NULL, NULL),
(174, 17, 0, '174', '', 'SALES ENABLER', NULL, NULL),
(201, 20, 0, '201', '', 'MALAYSIA', NULL, NULL),
(202, 20, 0, '202', '', 'SINGAPORE', NULL, NULL),
(203, 20, 0, '203', '', 'AUSTRALIA', NULL, NULL),
(204, 20, 0, '204', '', 'TIMORLESTE', NULL, NULL),
(205, 20, 0, '205', '', 'ARABSAUDI', NULL, NULL),
(206, 20, 0, '206', '', 'MYANMAR', NULL, NULL),
(207, 20, 0, '207', '', 'USA', NULL, NULL),
(208, 20, 0, '208', '', 'HONGKONG', NULL, NULL),
(209, 20, 0, '209', '', 'MACAU', NULL, NULL),
(210, 20, 0, '210', '', 'TAIWAN', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directorate`
--

CREATE TABLE `directorate` (
  `directorate_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `update_dtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directorate`
--

INSERT INTO `directorate` (`directorate_id`, `name`, `create_dtm`, `update_dtm`) VALUES
(10, 'MAIN DIRECTORATE', NULL, NULL),
(11, 'FINANCE AND BUSINESS PARTNER', NULL, NULL),
(12, 'TECHNOLOGY', NULL, NULL),
(13, 'COMMERCIAL', NULL, NULL),
(14, 'GLOBAL BUSSINESS OPERATION', NULL, NULL),
(20, 'SUBSIDIARIES', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `nik_telin` varchar(45) DEFAULT NULL,
  `nik_tg` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `place_of_birth` varchar(45) DEFAULT NULL,
  `date_of_birth` varchar(45) DEFAULT NULL,
  `employee_status` varchar(45) DEFAULT NULL,
  `position_band` varchar(45) DEFAULT NULL,
  `work_location` varchar(45) DEFAULT NULL,
  `office_address` varchar(200) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `pos_code` varchar(45) DEFAULT NULL,
  `telepon` varchar(45) DEFAULT NULL,
  `my_address` varchar(200) DEFAULT NULL,
  `my_city` varchar(45) DEFAULT NULL,
  `my_province` varchar(45) DEFAULT NULL,
  `my_country` varchar(45) DEFAULT NULL,
  `my_pos_code` varchar(45) DEFAULT NULL,
  `my_tlp_no` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `email_asli` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `name`, `nik_telin`, `nik_tg`, `gender`, `religion`, `place_of_birth`, `date_of_birth`, `employee_status`, `position_band`, `work_location`, `office_address`, `city`, `province`, `pos_code`, `telepon`, `my_address`, `my_city`, `my_province`, `my_country`, `my_pos_code`, `my_tlp_no`, `email`, `email_asli`) VALUES
(1, 'A Ropianta Ginting M', '828164', '825801', 'MALE', 'ISLAM', 'MEDAN    ', '03/30/1982', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL  RAWA BUAYA RT  008 RW  001 RAWA BUAYA CENGKARENG JAKARTA', 'JAKARTA', 'DKI JAKARTA', 'INDONESIA', '', '81321886682', 'luthfan_ah@yahoo.co.id', 'aro.munthe@telin.co.id'),
(2, 'Aad Azhari', '720597', '720597', 'MALE', 'ISLAM', 'CIREBON    ', '11/18/1972', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JATINEGARA KAUM I NO  41A JATINEGARA KAUM  PULOGADUNG  JAKARTA TIMUR  JAKARTA 13250', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '811984949', 'luthfan_ah@yahoo.co.id', 'aad@telin.co.id'),
(3, 'Aan Helmy Ansori', '730446', '730446', 'MALE', 'ISLAM', 'PROBOLINGGO    ', '05/25/1973', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL TELEGRAM NO 14 KOMP TELKOMFLEXI 0542-7022904', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '811538853', 'luthfan_ah@yahoo.co.id', 'aan@telin.co.id'),
(4, 'Abdul Aziz Munawar', '631804', '631804', 'MALE', 'ISLAM', 'BANDUNG    ', '12/08/63', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'JL PALAPA BUKIT DANGAS SEKUPANG BATAM ', 'BATAM', 'KEPULAUAN RIAU', '0', '0', 'PERUM  MANGLAYANG SARI A11 NO  9 UBER', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81321133023', 'luthfan_ah@yahoo.co.id', 'Aziz_m@telin.co.id'),
(5, 'Abdul Rohim', '838012', '835540', 'MALE', 'ISLAM', 'LAMONGAN    ', '04/24/1983', 'KARYAWAN TETAP', 'SURABAYA', 'V', 'JL  KEBALEN TIMUR NO 2 SURABAYA', 'SURABAYA', 'JAWA TIMUR', '0', '', 'JL KAUMAN ASRI  I No  01 Rt 01/06 KEL  BENOWO KEC PAKAL', 'SURABAYA', 'JAWA TIMUR', 'INDONESIA', '', '085234348856/081234441983', 'luthfan_ah@yahoo.co.id', 'Rohim@telin.co.id'),
(6, 'Abraham Mangaraja Huring', '908093', '905215', 'MALE', 'PROTESTAN', 'BANDUNG    ', '11/03/90', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  GAMA NO 13 RT 02 RW 05 CIGADUNG  CIBEUNYING KALER  BANDUNG', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81220476727', 'luthfan_ah@yahoo.co.id', 'abraham.m.h@telin.co.id'),
(7, 'Adam Malik', '878040', '875405', 'MALE', 'ISLAM', 'JAKARTA    ', '10/14/1987', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'Jl  H  Abdul Majid No  5A RT 11/07 Cipete Utara  Kebayoan Baru', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81310965699', 'luthfan_ah@yahoo.co.id', 'adammalik@telin.co.id'),
(8, 'Adi Rindra', '898194', '896031', 'MALE', 'ISLAM', 'JAKARTA    ', '11/16/1989', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL LONTAR 3 NO 22 RT 013 RW 06  KEL TANJUNG DUREN UTARA  KEC GROGOL PETAMBURAN', 'JAKARTA', 'DKI JAKARTA', 'INDONESIA', '', '81382067250', 'luthfan_ah@yahoo.co.id', 'adirindra@telin.co.id'),
(9, 'Adi Selamet Rahmadi', '810075', '810075', 'MALE', 'ISLAM', 'BANDUNG    ', '12/19/1981', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL JEND A YANI NO 31 RT 008 KEL  GUNUNG SARI ULU  KEC  BALIKPAPAN TENGAH', 'BALIKPAPAN', 'KALIMANTAN TIMUR', 'INDONESIA', '', '811221866', 'luthfan_ah@yahoo.co.id', 'adisr@telin.co.id'),
(10, 'Aditya', '828027', '825578', 'MALE', 'ISLAM', 'MALANG    ', '12/24/1982', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL  CIKOKO TIMUR II  NO  37 A   JAKARTA SELATAN', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81286965959', 'luthfan_ah@yahoo.co.id', 'aditkudit@telin.co.id'),
(11, 'Aditya Herlambang', '878106', '875561', 'MALE', 'ISLAM', 'JAKARTA    ', '01/26/1987', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JALAN KELURAHAN 1 BV NO  14 RT 02  RW 04 - DUREN SAWIT  JAKARTA TIMUR', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '8111634204', 'luthfan_ah@yahoo.co.id', 'aditya.herlambang@telin.co.id'),
(12, 'Aditya Indrawan', '760035', '760035', 'MALE', 'ISLAM', 'BANDUNG    ', '02/20/1976', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  CEMPAKA LESTARI II/H-7  RT 013/RW 07  LEBAK BULUS CILANDAK  JAKARTA SELATAN', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81210148730', 'luthfan_ah@yahoo.co.id', 'aditya.indrawan@telin.co.id '),
(13, 'Aditya Nurahman Asno', '878086', '875403', 'MALE', 'ISLAM', 'BANJARMASIN    ', '12/19/1987', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  PURI BUNGA NO 2  JERUK PURUT', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81395199777', 'luthfan_ah@yahoo.co.id', 'adityanurahman@telin.co.id'),
(14, 'Adriansyah', '730612', '730612', 'MALE', 'ISLAM', 'TANJUNG KARANG    ', '12/16/1973', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'VILLA CENDANA BLOK F-26 RT  006/008 KEL  CEMPAKA PUTIH', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '811166761', 'luthfan_ah@yahoo.co.id', 'adriansyah@telin.co.id'),
(15, 'Agung Setiabudi', '916091', '916091', 'MALE', 'ISLAM', 'BANDUNG   ', ' 02/08/1991', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL SEMARANG NO 17 RT 002/011 ANTAPANI KIDUL ANTAPANI', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '85659012202', 'luthfan_ah@yahoo.co.id', 'agung.setiabudi@telin.co.id'),
(16, 'Agus Gunadi Wibisono', '678020', '675213', 'MALE', 'ISLAM', 'TASIKMALAYA    ', '08/31/1967', 'KARYAWAN TETAP', 'Jakarta', '', 'Menara Jamsostek, Menara Utara, Lt.24 Jl. Jend. Gatot Subroto Kav. 38', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', '', '', '', '', '', '8119108607', 'luthfan_ah@yahoo.co.id', 'agunadi@telin.co.id '),
(17, 'Agus Parningotan Nainggolan', '758014', '755444', 'MALE', 'PROTESTAN', 'JAKARTA   ', ' 08/18/1975', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL ADHI KARYA No 9A RT 02/05 KEDOYA SELATAN  KEBON JERUK ', 'JAKATA BARAT', 'DKI JAKARTA', 'INDONESIA', '', '\'08129740714', 'luthfan_ah@yahoo.co.id', 'aguspn@telin.co.id'),
(18, 'Agus Sri Budi Cahyono', '840147', '840147', 'MALE', 'ISLAM', 'BOYOLALI    ', '11/15/1984', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'PERUM KERONCONG PERMAI EP 33/26 RT 013 RW 002 KEL KERONCONG KEC JATIUWUNG', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '81297150903', 'luthfan_ah@yahoo.co.id', 'agus.sri@telin.co.id'),
(19, 'Ahmad Sopandi', '758015', '755445', 'MALE', 'ISLAM', '', '11/23/1975', 'KARYAWAN TETAP', 'BATAM', 'IV', 'JL  PALAPA BUKIT DANGAS SEKUPANG BATAM  ', 'BATAM', 'KEPULAUAN RIAU', '0', '', 'PERUM RINDANG GARDEN BLOK BI No 09 BATU AJI ', 'BATAM', 'KEPULAUAN RIAU', 'INDONESIA', '', '81372880377', 'luthfan_ah@yahoo.co.id', 'sopandi@telin.co.id'),
(20, 'Ahmad Subhan Fajri', '898122', '895652', 'MALE', 'ISLAM', 'JAKARTA    ', '02/16/1989', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL  NAROGONG JAYA VIII BLOK E 45 NO 4  RT 003/09 BEKASI TIMUR 17115', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '82111405600', 'luthfan_ah@yahoo.co.id', 'subhan@telin.co.id'),
(21, 'Aim Moelkan Fatoni', '768149', '765536', 'MALE', 'ISLAM', 'BOGOR    ', '08/14/1976', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'PERUMAHAN PERMATA BIRU BLOK E2 NO  49  KEL CINUNUK  KEC  CILEUNYI BANDUNG 40624', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '82310141523', 'luthfan_ah@yahoo.co.id', 'aim@telin.co.id'),
(22, 'AIRIN ALISSE', '855877', '855877', 'FEMALE', 'PROTESTAN', 'JAKARTA    ', '08/10/85', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '2129952300', 'luthfan_ah@yahoo.co.id', 'airin.alisse@telin.co.id'),
(23, 'Ajie Putra Pratama', '868072', '865402', 'MALE', 'ISLAM', 'BANDUNG    ', '10/05/86', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'BUKIT ELOK NO  62 GERLONG PERMAI RT 06 RW 06  PARONGPONG  KABUPATEN BANDUNG BARAT', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '\'081320333224', 'luthfan_ah@yahoo.co.id', 'ajie@telin.co.id'),
(24, 'Akhmad Deniar Perdana Kusuma', '850134', '850134', 'MALE', 'ISLAM', 'GRESIK    ', '09/12/85', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  ELANG RAYA BINTARO VIEW RESIDENCE II / B4 RT 4/1 SAWAH', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '81220147165', 'luthfan_ah@yahoo.co.id', 'deniar@telin.co.id'),
(25, 'Akhmad Zaimi', '800037', '800037', 'MALE', 'ISLAM', 'PASURUAN    ', '06/27/1980', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'GRIYA UTAMA II NO  2 JL  MOH  KAFI 1 GG  PANJANG CIGANJUR', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '8128133376', 'luthfan_ah@yahoo.co.id', 'djimie@telin.co.id'),
(26, 'AMANDA VANIA NUGROHO', '925893', '925893', 'FEMALE', 'PROTESTAN', 'JAKARTA    ', '01/31/1992', 'KARYAWAN KONTRAK', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '2129952300', 'luthfan_ah@yahoo.co.id', 'amanda.vania@telin.co.id'),
(27, 'Amin Fajri', '848116', '845660', 'MALE', 'ISLAM', 'JAMBI   ', ' 06/14/1984', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL  SADEWA RAYA C267 BEKASI', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '81380541935', 'luthfan_ah@yahoo.co.id', 'fajrims@telin.co.id'),
(28, 'Amiruddin Siregar', '808135', '805690', 'MALE', 'ISLAM', 'SIGAMBAL    ', '04/16/1980', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMP MUTIARA HIJAU RESIDENCE E-12 KEL  PAKANSARI KEC  CIBINONG BOGOR JAWA BARAT', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '', '81294924243', 'luthfan_ah@yahoo.co.id', 'amiruddin@telin.co.id'),
(29, 'Anas Fauzi', '880090', '880090', 'MALE', 'ISLAM', 'KARANGANYAR    ', '03/04/88', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL CISITU INDAH V NO 41  KEL  DAGO KEC  COBLONG', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '85319287637', 'luthfan_ah@yahoo.co.id', 'anas.fauzi@telin.co.id'),
(30, 'Andi Prijasdanto', '720403', '720403', 'MALE', 'ISLAM', 'MAGELANG    ', '08/14/1972', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  MERAK IV NO 23 KOMP INKOPPOL RT/RW 09/05 JAKA SAMPURNA', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '8119102339', 'luthfan_ah@yahoo.co.id', 'andi_pri@telin.co.id'),
(31, 'Andika Wahyu Firdaus', '858171', '855638', 'MALE', 'ISLAM', 'JAKARTA    ', '01/22/1985', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'LUMBU TENGAH VII BLOK 8 NO 138  BOJONG RAWALUMBU  RAWALUMBU  BEKASI  JAWA BARAT 17116', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '8111402110', 'luthfan_ah@yahoo.co.id', 'andika.wahyu@telin.co.id '),
(32, 'Andre Saut Fajar HH', '880084', '880084', 'MALE', 'PROTESTAN', 'PONTIANAK   ', ' 01/04/1988', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  DANAU MELINTANG NO  129 SEI AGUL', 'MEDAN', 'SUMATRA UTARA', 'INDONESIA', '', '85361013555', 'luthfan_ah@yahoo.co.id', 'andre.saut@telin.co.id'),
(33, 'ANDREA VINALDO', '925869', '925869', 'MALE', 'ISLAM', 'JAKARTA    ', '02/21/1992', 'KONTRAK', 'JAKARTA', 'V', 'WHOCC KALIBATA JL. RAYA PS. MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA, JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12740', '', 'JL. TAMAN MAKAM PAHLAWAN, APARTEMEN KALIBATA CITY, MENARA BORNEO LT. 2 UNIT AH', 'JAKARTA SELATAN', 'DKI JAKARTA', '', '', '81365917615', 'luthfan_ah@yahoo.co.id', 'andrea@telin.co.id'),
(34, 'Andri Leonard', '878017', '875408', 'MALE', 'PROTESTAN', 'MAKASSAR   ', ' 06/03/1987', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  MALEO BLOK A1 NO 7  JATICEMPAKA  PONDOK GEDE  BEKASI  17411', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '81210193093', 'luthfan_ah@yahoo.co.id', 'andri@telin.co.id'),
(35, 'Anis Fu\'adi', '720536', '720536', 'MALE', 'ISLAM', 'PATI   ', ' 11/24/1972', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'GRIYA CARAKA BLK G NO 8', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '82111888240', 'luthfan_ah@yahoo.co.id', 'fuadi@telin.co.id'),
(36, 'ANISA NARIMA KAUTSARI', '955241', '955241', 'FEMALE', 'ISLAM', 'JAKARTA    ', '12/31/1995', 'KARYAWAN KONTRAK', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '2129952300', 'luthfan_ah@yahoo.co.id', 'anisa.narima@telin.co.id'),
(37, 'Ardian Thresnantia Atmaja', '828140', '825786', 'MALE', 'ISLAM', 'KEDIRI    ', '02/12/82', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMPLEKS VILLA BINTARO INDAH BLOK B08/12  JOMBANG  CIPUTAT', 'TANGERANG SELATAN', 'BANTEN', 'INDONESIA', '', '8119692829', 'luthfan_ah@yahoo.co.id', 'ardian.atmaja@telin.co.id'),
(38, 'Arief Hidayat', '660331', '660331', 'MALE', 'ISLAM', 'MOJOKERTO   ', ' 06/03/1966', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'TAMAN BUMI PRIMA R-27 RT 01 RW 22 JL PESANTREN CIBABAT', 'CIMAHI', 'JAWA BARAT', 'INDONESIA', '', '811203320', 'luthfan_ah@yahoo.co.id', 'ahidayat@telin.co.id'),
(39, 'Arif Munandar', '798169', '795644', 'MALE', 'ISLAM', 'JAKARTA   ', ' 12/25/1979', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'PERUMAHAN TELAGA JAMBU A/18  SAWANGAN BARU  SAWANGAN  DEPOK  JAWA BARAT 16511', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '\'08111757981', 'luthfan_ah@yahoo.co.id', 'arif.munandar@telin.co.id'),
(40, 'Ario Agisna Prasetyo', '870077', '870077', 'MALE', 'ISLAM', 'BANDUNG   ', ' 09/01/1987', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  TEMBAGA NO  5 KOMPLEK LOGAM  MARGACINTA  BANDUNG', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '8119819965', 'luthfan_ah@yahoo.co.id', 'ario.agisna@telin.co.id'),
(41, 'Arista Erini Putri', '908153', '905728', 'FEMALE', 'ISLAM', 'SEMARANG    ', '12/14/1990', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  SARI ASRI I NO 7  PADASUKA  CIMENYAN BANDUNG  JAWA BARAT 40192', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '\'081215760514', 'luthfan_ah@yahoo.co.id', 'arista.ep@telin.co.id'),
(42, 'ARLIKA YUSTIARINI', '804258', '804258', 'FEMALE', 'ISLAM', 'JAKARTA    ', '06/16/1980', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', '', '', '', '', '', '', 'luthfan_ah@yahoo.co.id', 'arlika.yustiarini@telin.co.id'),
(43, 'Arpian Hariady', '858078', '855432', 'MALE', 'ISLAM', 'JAKARTA   ', ' 06/26/1985', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'Jl  MALABAR  3 NO 22 RT 004/020 CIBODASARI CIBODAS TANGERANG', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '82260818457', 'luthfan_ah@yahoo.co.id', 'arpianh@telin.co.id'),
(44, 'Arya Pranadipta Supelli', '878042', '875404', 'MALE', 'ISLAM', 'BANDUNG    ', '08/27/1987', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'Jl  Griya Selatan I No 7', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81214500490', 'luthfan_ah@yahoo.co.id', 'arya_supelli@telin.co.id'),
(45, 'Arya Verdi Ramadhani', '838162', '835709', 'MALE', 'ISLAM', 'JAKARTA    ', '06/26/1983', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'TMN ARIES BLOK B 2 NO  78 MERUYA UTARA KEMBANGAN', 'JAKARTA BARAT', 'DKI JAKARTA', 'INDONESIA', '', '81210616567', 'luthfan_ah@yahoo.co.id', 'verdi@telin.co.id'),
(46, 'Asep Heri', '768003', '765445', 'MALE', 'ISLAM', 'BANDUNG    ', '09/28/1976', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMPLEK SANGGAR MAS LESTARI BLOK A NO  30  BANJARAN', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81322622202', 'luthfan_ah@yahoo.co.id', 'heri@telin.co.id'),
(47, 'Astrid Alin Widowati', '908166', '905791', 'FEMALE', 'ISLAM', 'PADANG    ', '11/08/90', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'KAVLING DKI BLOK 6 NO 27 MERUYA UTARA  MERUYA UTARA  KEMBANGAN  JAKARTA BARAT', 'JAKARTA BARAT', 'DKI JAKARTA', 'INDONESIA', '', '\'081289470000', 'luthfan_ah@yahoo.co.id', 'astrid.widowati@telin.co.id'),
(48, 'Ata Septian Hesmono', '888168', '888064', 'MALE', 'KRISTEN', 'TEMANGGUNG    ', '09/08/88', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  PROF  DR  IR  H  YOHANNES 1083  TERBAN  GONDOKUSUMAN  D I YOGYAKARTA 55223', 'D I YOGYAKARTA', 'D I YOGYAKARTA', 'INDONESIA', '', '81282348143', 'luthfan_ah@yahoo.co.id', 'ata.septian@telin.co.id'),
(49, 'Augustriana Indriasary', '740311', '740311', 'FEMALE', 'ISLAM', 'JAKARTA    ', '01/08/74', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  MENDAWAI I NO  1 KEBAYORAN BARU', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81389088600', 'luthfan_ah@yahoo.co.id', 'sendy@telin.co.id'),
(50, 'Aulia Wahidah Chamdun', '878021', '875409', 'FEMALE', 'ISLAM', 'BANJAR BARU    ', '06/04/87', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  SMP 126 GG  MEDE NO  53 RT  005 RW 003 KEL  TENGAH KEC  KRAMAT JATI', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '8115412002', 'luthfan_ah@yahoo.co.id', 'aulia@telin.co.id'),
(51, 'AZMAL YAHYA', '735564', '735564', 'MALE', 'ISLAM', 'SELANGOR    ', '10/13/1973', 'KARYAWAN KONTRAK', 'MALAYSIA', 'I', 'SUITE 23 A-1, 23 A FLOOR, WISMA UOA II, NUMBER 21, JALAN PINANG', 'KUALA LUMPUR', 'KUALA LUMPUR', '', '', 'SUITE 23 A-1, 23 A FLOOR, WISMA UOA II, NUMBER 21, JALAN PINANG', 'KUALA LUMPUR', 'KUALA LUMPUR', 'MALAYSIA', '', '60323320680', 'luthfan_ah@yahoo.co.id', 'azmal.yahya@telin.co.id'),
(52, 'Bambang Totok Marjito', '720213', '720213', 'MALE', 'KATOLIK', 'BOYOLALI    ', '06/08/72', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'BUKIT CIMANGGU VILLA BLOK A8/22  KEDUNG BADAK  TANAH SAREAL', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '', '81314775544', 'luthfan_ah@yahoo.co.id', 'bambangtm@telin.co.id'),
(53, 'Bambang Utoyo', '651003', '651003', 'MALE', 'ISLAM', 'BOJONEGORO    ', '05/06/65', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMP TAMAN ASTER BLOK G 7 NO  9 RT12/RW07 TELAGA ASIHCIKARANG BARAT', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '811933007', 'luthfan_ah@yahoo.co.id', 'b_utoyo@telin.co.id'),
(54, 'Bames Saut Pardomuan Rumahorbo', '878199', '876841', 'MALE', 'ISLAM', 'JAKARTA    ', '10/17/1987', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL PENDOWO RAYA RT 13/06 NO 14 KEL  LIMO KEC  LIMO DEPOK', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '81381340359', 'luthfan_ah@yahoo.co.id', 'bames@telin.co.id'),
(55, 'Bayu Aria Dharma', '838037', '835539', 'MALE', 'ISLAM', 'GRESIK  INDONESIA    ', '07/24/1983', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', '0', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '+ 852 6899 4566', 'luthfan_ah@yahoo.co.id', 'bayuaria@telin.co.id'),
(56, 'Bayu Vidya Arta', '740264', '740264', 'MALE', 'ISLAM', 'YOGYAKARTA    ', '05/01/74', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMP  PASIR POGOR BLOK RL NO 13 RT 003/009 KEL  MEKARJAYA', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '8125995845', 'luthfan_ah@yahoo.co.id', 'bayu.arta@telin.co.id'),
(57, 'Bentarto Budisetiawan', '730344', '730344', 'MALE', 'ISLAM', 'YOGYAKARTA    ', '03/23/1973', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL TEBET BARAT DALAM VIII NO 11', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '8119108602', 'luthfan_ah@yahoo.co.id', 'bentarto@telin.co.id'),
(58, 'Berarso', '650994', '650994', 'MALE', 'ISLAM', 'TEMANGGUNG    ', '07/20/1965', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'TERATAI NO 7  SAWAH BARAT DUREN SAWIT', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '811104923', 'luthfan_ah@yahoo.co.id', 'berarso@telin.co.id'),
(59, 'Bharata Dwi Cahyanto', '870075', '870075', 'MALE', 'ISLAM', 'SEMARANG    ', '11/02/87', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'BATU INDAH XIV No 2   Buah Batu  Bandung 40266', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '8117229921', 'luthfan_ah@yahoo.co.id', 'bharata.dwi@telin.co.id'),
(60, 'Briantono Muhammad Raharjo', '890101', '890101', 'MALE', 'ISLAM', 'BANDUNG    ', '11/27/1989', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  BADAK SINGA NO 17 TAMANSARI COBLONG BANDUNG JAWA BARAT', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '82299162157', 'luthfan_ah@yahoo.co.id', 'briantono@telin.co.id'),
(61, 'Budi Satria Dharma Purba', '730421', '730421', 'MALE', 'ISLAM', 'SINAKSAK    ', '05/10/73', 'KARYAWAN TETAP', 'JAKARTA', 'I', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMP DEPKES 3 JL  KESEHATAN I NO  10 CAMAN RT 009 RW 001', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '811928007', 'luthfan_ah@yahoo.co.id', 'busat@telin.co.id'),
(62, 'Cecar Muhammad Drajat', '928193', '925653', 'MALE', 'ISLAM', 'BANDUNG    ', '12/18/1992', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL PONDOK JAYA 3 NO 18 B  KEL PELA MAMPANG KEC  MAMPANG PRAPATAN', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81214411188', 'luthfan_ah@yahoo.co.id', 'cecar.drajat@telin.co.id'),
(63, 'Dade Early', '740306', '740306', 'FEMALE', 'PROTESTAN', 'SURABAYA   ', ' 01/10/1974', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL SWASEMBADA TIMUR IX/12 RT  010/010 KEL  KEBON BAWANG', 'JAKARTA UTARA', 'DKI JAKARTA', 'INDONESIA', '', '\'081218001860', 'luthfan_ah@yahoo.co.id', 'dade.early@telin.co.id'),
(64, 'Danang Andika Saputro', '828071', '825577', 'MALE', 'ISLAM', 'KIDUL    ', '12/26/1982', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMPLEK CIHANJUANG INDAH BLOK B NO 8 RT 004 RW 020  CIBABAT  CIMAHI UTARA  KOTA CIMAHI', 'CIMAHI', 'JAWA BARAT', 'INDONESIA', '', '8122309534', 'luthfan_ah@yahoo.co.id', 'andika@telin.co.id'),
(65, 'Dananjaya', '800061', '800061', 'MALE', 'ISLAM', 'JAKARTA   ', ' 09/12/1980', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  MALIKI 2 NO  94 RT  008/002 KEL  ABADIJAYA', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '8118890282', 'luthfan_ah@yahoo.co.id', 'danzay@telin.co.id'),
(66, 'Danu Sindoro', '828082', '825574', 'MALE', 'ISLAM', 'JAKARTA    ', '11/23/1982', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  E RT 002/RW 003  KELAPA DUA  KEBON JERUK  JAKARTA BARAT', 'JAKARTA BARAT', 'DKI JAKARTA', 'INDONESIA', '', '811822893', 'luthfan_ah@yahoo.co.id', 'danu@telin.co.id'),
(67, 'David Iskandar Mulia Sidabutar', '758050', '755442', 'MALE', 'PROTESTAN', 'TANJUNG KARANG    ', '02/28/1975', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'CEMPAKA WARNA NO 19 RT 06/ RW 04 CEMPAKA PUTIH', 'JAKARTA PUSAT', 'DKI JAKARTA', 'INDONESIA', '', '8129401173', 'luthfan_ah@yahoo.co.id', 'davids@telin.co.id'),
(68, 'Dedi Sukma Sidik', '808023', '805544', 'MALE', 'ISLAM', 'KEBUMEN   ', ' 09/25/1980', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL MERAK V NO  13 RT  009 RW  005 KEL  JAKA SAMPURNA KEC  BEKASI BARAT', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '82112301411', 'luthfan_ah@yahoo.co.id', 'dedy@telin.co.id'),
(69, 'Dedy Ambarita', '850080', '850080', 'MALE', 'PROTESTAN', 'TANJUNG PINANG   ', ' 04/08/1985', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  ANDARA gg MASJID RT 01 RW 04 NO 10 JAKARTA SELATAN', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '82144436099', 'luthfan_ah@yahoo.co.id', 'dedy.ambarita@telin.co.id'),
(70, 'Delfi Gunardy', '908118', '905447', 'MALE', 'ISLAM', 'MEDAN    ', '10/08/90', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL  KL YOS SOEDARSO NO 24K', 'JAKARTA UTARA', 'DKI JAKARTA', 'INDONESIA', '', '85275988632', 'luthfan_ah@yahoo.co.id', 'delfi@telin.co.id'),
(71, 'Derry Fahrudin', '769016', '765447', 'MALE', 'ISLAM', 'BOGOR    ', '06/09/76', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMPLEK PERMATA REGENCY EMERALD B5/10 PANCORAN MAS  CIPAYUNG', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '811862111', 'luthfan_ah@yahoo.co.id', 'derry@telin.co.id'),
(72, 'Deshinta Aluh Wardani', '908094', '905451', 'FEMALE', 'ISLAM', 'SUKOHARJO    ', '12/21/1990', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'SUROBAYAN RT 1 RW 1 JETIS  BAKI  SUKOHARJO', 'SUKOHARJO', 'JAWA TENGAH', 'INDONESIA', '', '85711889050', 'luthfan_ah@yahoo.co.id', 'deshinta.aluh@telin.co.id'),
(73, 'Detriana Margita Sari', '840138', '840138', 'FEMALE', 'ISLAM', 'BANDUNG    ', '10/06/84', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL.H NOOR, NOOR RESIDENCE 1 KAV 19 RT.6/1 PEJATEN BARAT', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '82111587529', 'luthfan_ah@yahoo.co.id', 'detriana.margita@telin.co.id'),
(74, 'Devy Parlindungan Siregar', '730601', '', 'MALE', 'PROTESTAN', 'SURABAYA    ', '03/10/73', ' KARYAWAN TETAP ', 'Kuala Lumpur', '', 'SUITE 23 A-1, 23 A FLOOR, WISMA UOA II, NUMBER 21, JALAN PINANG', 'KUALA LUMPUR', 'MALAYSIA', '', '', '', '', '', '', '', '', 'luthfan_ah@yahoo.co.id', ' devyps@telin.co.id '),
(75, 'Dewantoro Bimo Laksono', '828087', '825572', 'MALE', 'ISLAM', 'SOLO    ', '05/03/82', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'ONTARIO OG.6/9 KOTA WISATA RT.003 RW.019, LIMUSNUNGGAL, CILEUNGSI, BOGOR', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '', '8111077733', 'luthfan_ah@yahoo.co.id', 'bimodew@telin.co.id'),
(76, 'Dhika Putra Prasetya', '848068', '845659', 'MALE', 'ISLAM', 'DEPOK    ', '11/21/1984', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL. RAYA SAWANGAN KOMP. PURI ANGGREK MAS. BLOK D1-14, RW:011/002, RANGKAPAN JAYA BARU DEPOK', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '81316868711', 'luthfan_ah@yahoo.co.id', 'dika@telin.co.id'),
(77, 'Dian Fauziah', '878048', '875571', 'FEMALE', 'ISLAM', 'JAKARTA    ', '11/08/87', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL. MAMPANG PRAPATAN XIV RT.012/001 NO.29 JAKARTA SELATAN 12790', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81311352382', 'luthfan_ah@yahoo.co.id', 'dian@telin.co.id'),
(78, 'Dian Rustandi', '710375', '710375', 'MALE', 'ISLAM', 'CIREBON    ', '05/04/71', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMPLEK GRIYA CARAKA F.106', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '81315958140', 'luthfan_ah@yahoo.co.id', 'rustandi@telin.co.id'),
(79, 'Dicky Hidayat', '890089', '890089', 'MALE', 'ISLAM', 'BUKIT TINGGI    ', '02/21/1989', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL BUNGO INDAH NO 16, AUR KUNING, AUR BIRUGO TIGO BALEH, BUKITTINGGI, SUMATRA BARAT 26131', 'SUMATERA BARAT', 'SUMATERA BARAT', 'INDONESIA', '', '81298077298', 'luthfan_ah@yahoo.co.id', 'dicky.hidayat@telin.co.id'),
(80, 'Dimas Purwo Pranata', '201111215', '906154', 'MALE', 'ISLAM', 'MALANG    ', '03/12/90', 'Karyawan Tetap', 'Jakarta', 'V', 'Jl. Jend. Gatot Subroto Kav. 52 ', 'Jakarta Selatan ', 'DKI JAKARTA', '12710', '', 'JL. JERUK XII/30 KAMAI - MADURA', 'MADURA', '', 'INDONESIA', '', '85722665060', 'luthfan_ah@yahoo.co.id', 'dimasp@telin.co.id'),
(81, 'Dina Artha Amalia', '788109', '785586', 'FEMALE', 'ISLAM', 'CIREBON    ', '05/25/1978', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL. WARU JAYA NO.6 DEPOK ', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '8121237337', 'luthfan_ah@yahoo.co.id', 'artha@telin.co.id'),
(82, 'Dini Andriani', '840124', '840124', 'FEMALE', 'ISLAM', 'JAKARTA    ', '08/24/1984', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KEBON BARU, JL.Y NO 29 RT. 005/010 KEL. SEMPER BARAT', 'JAKARTA UTARA', 'DKI JAKARTA', 'INDONESIA', '', '81382523001', 'luthfan_ah@yahoo.co.id', 'dini.andriani@telin.co.id'),
(83, 'Dion Kristadi Leksono', '848097', '845643', 'MALE', 'ISLAM', 'SURABAYA    ', '11/25/1984', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'REGENSI MELATI MAS BLOK. F-10 RT.001 RW. 11, JELUPANG, SERPONG, TANGERANG SELATAN', 'TANGERANG SELATAN', 'BANTEN', 'INDONESIA', '', '811335337', 'luthfan_ah@yahoo.co.id', 'dion.kristadi@telin.co.id'),
(84, 'Diza Fadilla', '888038', '885626', 'FEMALE', 'ISLAM', 'BEKASI    ', '05/24/1988', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMP. BI BLOK D NO. 5 , PD GEDE', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '\'082164000346', 'luthfan_ah@yahoo.co.id', 'diza@telin.co.id'),
(85, 'Dody Purwanto', '740259', '740259', 'MALE', 'PROTESTAN', 'BOJONEGORO    ', '10/24/1974', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'RUNGKUT ASRI BARAT 5/17 RT. 003/012 KEL. RUNGKUT KIDUL', 'JAWA TIMUR', 'JAWA TIMUR', 'INDONESIA', '', '81216457888', 'luthfan_ah@yahoo.co.id', 'Dody.purwanto@telin.co.id'),
(86, 'Doni Ismondo', '808130', '805687', 'MALE', 'ISLAM', 'LAHAT    ', '03/30/1980', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'PERMATA DEPOK REGENCY RUBY BLOK D 18/10 RT 006 RW 010 KEL RATU JAYA KEC CIPAYUNG', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '81287999783', 'luthfan_ah@yahoo.co.id', 'doni.ismondo@telin.co.id'),
(87, 'Dony Septyharsono', '868179', '865714', 'MALE', 'ISLAM', 'TEGAL    ', '09/06/86', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL. ANGGUR II BLOK C-5/12 SARANA INDAH PERMAI, KEDAUNG, PAMULANG, TANGERANG SELATAN, BANTEN 15415', 'TANGERANG SELATAN', 'BANTEN', 'INDONESIA', '', '81280502650', 'luthfan_ah@yahoo.co.id', 'dony@telin.co.id'),
(88, 'Dwi Adhi Setiono', '800066', '800066', 'MALE', 'ISLAM', 'JAKARTA    ', '07/07/80', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL LIMO RAYA 197 RT 02 RW 04 KEL  LIMO KEC  LIMO', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '82110735021', 'luthfan_ah@yahoo.co.id', 'dwi.adhi@telin.co.id'),
(89, 'Dwi Wulandari', '918138', '915521', 'FEMALE', 'ISLAM', 'JAKARTA    ', '05/15/1991', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOTA WISATA GEORGIA BLOK TA 2/35 KEL  CIANGSANA KEC  GUNUNG PUTRI BOGOR JAWA BARAT', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '', '\'081809300202', 'luthfan_ah@yahoo.co.id', 'dwi.wulandari@telin.co.id'),
(90, 'Edi Siswanto', '730418', '730418', 'MALE', 'ISLAM', 'KLATEN    ', '01/25/1973', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  GOLF DALAM NO  E-4   CISARANTEN BINA HARAPAN  ARCAMANIK', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81223688975', 'luthfan_ah@yahoo.co.id', 'edi.siswanto@telin.co.id'),
(91, 'Eka Saputra', '780053', '780053', 'MALE', 'ISLAM', 'MAJALENGKA    ', '09/14/1978', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  AGUNG BARAT 30 BLOK B9 NO 14 RT008/010SUNTER AGUNG PODOMORO', 'JAKARTA UTARA', 'DKI JAKARTA', 'INDONESIA', '', '81210334496', 'luthfan_ah@yahoo.co.id', 'eka@telin.co.id'),
(92, 'Eko Suhardianto', '800069', '800069', 'MALE', 'ISLAM', 'PEKALONGAN   ', ' 09/27/1980', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  BERDIKARI NO  14 RAWA BADAK KOJA JAKARTA UTARA 14230 ', 'JAKARTA UTARA', 'DKI JAKARTA', 'INDONESIA', '', '85112090909', 'luthfan_ah@yahoo.co.id', 'kokolato@telin.co.id'),
(93, 'Eko Sulistyo', '808126', '805683', 'MALE', 'ISLAM', 'JAKARTA    ', '05/26/1980', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'APT  MENTENG SQUARE TOWER B/8/50 JL  MATRAMAN NO  30 E JAKARTA', 'JAKARTA', 'DKI JAKARTA', 'INDONESIA', '', '81380750964', 'luthfan_ah@yahoo.co.id', 'eko.sulistyo@telin.co.id'),
(94, 'Eky S. Pratomo - Tedjo', '659013', '655177', 'MALE', 'ISLAM', 'AMBARAWA    ', '11/03/65', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'Jl  SERUNI IV NO  46 TAMAN YASMIN (SECTOR I)', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '', '811971766', 'luthfan_ah@yahoo.co.id', 'eky@telin.co.id'),
(95, 'Emmanuel Triadi Nugraha', '858077', '855430', 'MALE', 'ISLAM', 'BOGOR    ', '03/21/1985', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  SEROJA NO 25 NENGGAWER MEKAR RT 02 RW  04  CIBINONG  KABUPATEN BOGOR', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '81381387678', 'luthfan_ah@yahoo.co.id', 'dimas@telin.co.id'),
(96, 'Ericson Marulitua Silalahi', '818028', '815539', 'MALE', 'PROTESTAN', 'JAKARTA    ', '10/10/81', 'KARYAWAN TETAP', 'BATAM', 'III', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL  KEBON KACANG XI 3/3/8  RT 005/001 JAKPUS', 'JAKATA PUSAT', 'DKI JAKARTA', 'INDONESIA', '', '81383367719', 'luthfan_ah@yahoo.co.id', 'ericson@telin.co.id'),
(97, 'Ersalina Renatra', '938141', '935091', 'FEMALE', 'ISLAM', 'JAKARTA    ', '07/08/93', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  BAMBU APUS I NO  216 KEL  PONDOK BAMBU KEC  DUREN SAWIT JAKARTA TIMUR', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '82123554499', 'luthfan_ah@yahoo.co.id', 'ersalina@telin.co.id'),
(98, 'Erwinsyah Pulungan', '848076', '845516', 'MALE', 'ISLAM', 'JAKARTA    ', '02/04/84', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'Jl  P-2 NO 2 KEBON BARU  TEBET', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81395199777', 'luthfan_ah@yahoo.co.id', 'erwin@telin.co.id'),
(99, 'Ewaldo Zihan', '888180', '888260', 'MALE', 'ISLAM', 'JAKARTA    ', '09/28/1988', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL  KP  MELAYU KECIL 3 NO  28 RT 11/RW 09 BUKIT DURI  TEBET  JAKARTA SELATAN', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '\'08158050128', 'luthfan_ah@yahoo.co.id', 'ewaldo@telin.co.id'),
(100, 'Fadhly Radite Adryan', '878081', '875406', 'MALE', 'ISLAM', 'JAKARTA    ', '01/26/1987', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'VILLA MELATI MAS BLK  P2/23A   SERPONG  TANGERANG SELATAN', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '81394586858', 'luthfan_ah@yahoo.co.id', 'fadhly@telin.co.id'),
(101, 'Fahmi Tanugraha', '858065', '855431', 'MALE', 'ISLAM', 'JAKARTA    ', '12/11/85', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL  KEMIRI JAYA NO  44 RT  05 RW  01 KEL  BEJI KEC  BEJI', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '81294284166', 'luthfan_ah@yahoo.co.id', 'fahmi_tan@telin.co.id'),
(102, 'Faizal Rochmad Djoemadi', '670141', '670141', 'MALE', 'ISLAM', 'BLITAR    ', '12/12/67', 'KARYAWAN TETAP', 'JAKARTA', 'I', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  TERUSAN SUTAMI NO 60 BANDUNG', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '8123010005', 'luthfan_ah@yahoo.co.id', 'faizal.djoemadi@telin.co.id'),
(103, 'Fajar Ramadhan', '938191', '935389', 'MALE', 'ISLAM', 'JAKARTA    ', '03/16/1993', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'PERUM GRIYA SURADITA INDAH BLOK 016/10  CISAUK  TANGERANG SELATAN', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '\'081282225852', 'luthfan_ah@yahoo.co.id', 'fajar.ramadhan@telin.co.id'),
(104, 'Febrian Setiadi', '860063', '860063', 'MALE', 'ISLAM', 'JAKARTA    ', '03/07/86', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'GRAHA KARTIKA PRATAMA CLUSTER SRIKANDI DD3/19  BOJONGBARU  BOJONGGEDE  BOGOR 16922', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '', '0811177990/082110001986', 'luthfan_ah@yahoo.co.id', 'febrian.setiadi@telin.co.id'),
(105, 'FEISARINO ABITAMA', '906336', '906336', 'MALE', 'ISLAM', 'BANDAR LAMPUNG    ', '07/02/90', 'KONTRAK', 'JAKARTA', 'V', 'WHOCC KALIBATA JL. RAYA PS. MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA, JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12740', '', 'BOGOR RAYA PERMAI BLOK FK II NO. 25, CURUG, BOGOR BARAT', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '', '85669954523', 'luthfan_ah@yahoo.co.id', 'feisarino.abitama@telin.co.id'),
(106, 'Fellin Fidi Kinanti', '928184', '928564', 'FEMALE', 'ISLAM', 'BANDUNG    ', '01/25/1992', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  SEKAWAN WANGI IIF NO  12A  BULUSIDOKARE  SIDOARJO  JAWA TIMUR  61216', 'JAWA TIMUR', 'JAWA TIMUR', 'INDONESIA', '', '82226000905', 'luthfan_ah@yahoo.co.id', 'fellin@telin.co.id'),
(107, 'Fernando Sihombing', '768009', '765446', 'MALE', 'PROTESTAN', 'JAKARTA    ', '06/23/1976', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  DUA SEMBILAN NO 69  RAWA DOMBA DUREN SAWIT', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '81383309100', 'luthfan_ah@yahoo.co.id', 'fernando@telin.co.id'),
(108, 'Fitriawan', '808115', '805657', 'MALE', 'ISLAM', 'TELUK LATAK    ', '08/18/1980', 'KARYAWAN TETAP', 'DUMAI', 'V', 'JL  SULTAN SYARIEF KASIM NO  214-215 DUMAI', 'DUMAI', 'RIAU', '0', '', 'JL  S M AMIN GG  KARYA SARI NO 145RT/RW 013/   JAYA MUKTI DUMAI RIAU', 'DUMAI', 'RIAU', 'INDONESIA', '', '81268775795', 'luthfan_ah@yahoo.co.id', 'bobi@telin.co.id'),
(109, 'Galih Anaka Pitrawakista', '908182', '905450', 'MALE', 'ISLAM', 'MADIUN    ', '10/15/1990', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'MLATEN  RT  02  RW  02  DS  GLONGGONG  KEC  BALEREJO', 'MADIUN', 'JAWA TMUR', 'INDONESIA', '', '81310576911', 'luthfan_ah@yahoo.co.id', 'galih@telin.co.id'),
(110, 'Gandhi Dewantara', '908100', '905442', 'MALE', 'ISLAM', 'DEPANSAR    ', '03/14/1990', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  SUKANAGARA ASRI KAV 32 RT 005 RW 009 ANTAPANI BANDUNG', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81320090626', 'luthfan_ah@yahoo.co.id', 'gandhi.dewantara@telin.co.id');
INSERT INTO `employees` (`emp_id`, `name`, `nik_telin`, `nik_tg`, `gender`, `religion`, `place_of_birth`, `date_of_birth`, `employee_status`, `position_band`, `work_location`, `office_address`, `city`, `province`, `pos_code`, `telepon`, `my_address`, `my_city`, `my_province`, `my_country`, `my_pos_code`, `my_tlp_no`, `email`, `email_asli`) VALUES
(111, 'Gde Asbawa Putra', '720378', '720378', 'MALE', 'HINDU', 'JAKARTA    ', '06/26/1972', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL GUNUNG SALAK BLOK FA NO  21 PERUMAHAN JATINEGARA BARU', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '811989517', 'luthfan_ah@yahoo.co.id', 'gde@telin.co.id'),
(112, 'GERHAN RADITYA', '835905', '835905', 'MALE', 'ISLAM', 'JAKARTA    ', '04/22/1983', 'KONTRAK', 'JAKARTA', 'V', 'WHOCC KALIBATA JL. RAYA PS. MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA, JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12740', '', 'JL HAJI NUAR NO. 10 PONDOK KELAPA, DUREN SAWIT', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '6,28E+11', 'luthfan_ah@yahoo.co.id', 'gerhan@telin.co.id'),
(113, 'Gerhard Bonaparte Churchill', '868103', '865557', 'MALE', 'PROTESTAN', 'CIREBON    ', '07/11/86', 'KARYAWAN TETAP', 'MANADO', 'IV', 'TELIN CLS KAUDITAN (TELKOM) JL  RAYA KEMA  DESA KEMA I  KECAMATAN KEMA  KABUPATEN MINAHASA UTARA  SULAWESI UTARA', 'MANADO', 'SULAWESI UTARA', '0', '', 'PERMATA HARJAMUKTI TAHAP 6 BLOK S NO 20 RT  009 RW  016  HARJAMUKTI  CIREBON', 'CIREBON', 'JAWA BARAT', 'INDONESIA', '', '82129139996', 'luthfan_ah@yahoo.co.id', 'gerhardbc@telin.co.id'),
(114, 'Gerry Tambundo Mulia Damanik', '865429', '865429', 'MALE', 'PROTESTAN', 'Surabaya    ', '10/21/1986', 'Karyawan Tetap', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'DKI JAKARTA', 'JAKARTA SELATAN', '12710', '+6221 2995230', 'PERUMAHAN JATIBENING II JL. BERINGIN II NO. 42 PONDOK GEDE - BEKASI', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '82138055557', 'luthfan_ah@yahoo.co.id', 'gerry.damanik@telin.co.id'),
(115, 'Gideon Octora', '760050', '760050', 'MALE', 'PROTESTAN', 'BANDUNG    ', '10/05/76', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JALAN LEUWISARI RAYA NO 5  KEBONLEGA  BOJONGLOA KIDUL  BANDUNG  JAWABARAT 40235', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '\'08111335545', 'luthfan_ah@yahoo.co.id', 'gideon.octora@telin.co.id'),
(116, 'Gunadi Sumantri', '688001', '685271', 'MALE', 'ISLAM', 'BANDUNG    ', '05/29/1968', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'MELONG ASRI REGENCY NO 25 GEMPOLSARI RT 008 RW 028  MELONG CIMAHI SELATAN CIMAHI', 'CIMAHI', 'JAWA BARAT', 'INDONESIA', '', '8119440779', 'luthfan_ah@yahoo.co.id', 'gunadi@telin.co.id'),
(117, 'Hafiz Maulana', '908057', '905441', 'MALE', 'ISLAM', 'PALEMBANG    ', '05/31/1990', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'DUSUN PAHING  BANDORASAWETAN  CILIMUS', 'KUNINGAN', 'JAWA BARAT', 'INDONESIA', '', '\'082111054887', 'luthfan_ah@yahoo.co.id', 'hafiz.maulana@telin.co.id'),
(118, 'Hamdy Trisatriato Nur Pisaro', '918127', '915514', 'MALE', 'ISLAM', 'SIDOARJO    ', '11/21/1991', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  KUNINGAN BARAT 1 NO  28', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81218988783', 'luthfan_ah@yahoo.co.id', 'hamdy@telin.co.id'),
(119, 'Hari Gustaf', '641739', '641739', 'MALE', 'ISLAM', 'JAKARTA    ', '08/17/1964', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'GRIYA KENCANA 2 BLK GG NO  2 RT001/013  KEL SUDIMARA BARATKEC  CILEDUG', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '81310037087', 'luthfan_ah@yahoo.co.id', 'gustaf@telin.co.id'),
(120, 'Harry Susatyo', '880083', '880083', 'MALE', 'ISLAM', 'YOGYAKARTA    ', '06/02/88', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  PESANTREN PERUM TAMAN BUMIPRIMA B-2 RT/RW 001/005 CIMAHI', 'CIMAHI', 'JAWA BARAT', 'INDONESIA', '', '81322767819', 'luthfan_ah@yahoo.co.id', 'harry.susatyo@telin.co.id'),
(121, 'Harun Fatoni Heru', '718031', '715386', 'MALE', 'ISLAM', 'JAKARTA    ', '08/02/71', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'PERUM INDOGRIYA C23  KLANGENAN   CIREBON', 'CIREBON', 'JAWA BARAT', 'INDONESIA', '', '8129349193', 'luthfan_ah@yahoo.co.id', 'harun@telin.co.id'),
(122, 'Hayudya Witasari Darmawan', '890087', '890087', 'FEMALE', 'ISLAM', 'SURABAYA    ', '12/18/1989', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  CAKRAWAIJAYA 1  BLOK I/15  KAVLING DISKUM AD CIPINANG', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '8121045326', 'luthfan_ah@yahoo.co.id', 'hayudya.witasari@telin.co.id'),
(123, 'Hendra Winata', '888075', '885355', 'MALE', 'ISLAM', 'WAJO    ', '10/06/88', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL  MEKAR INDAH NO 35  BANDUNG KULON  CIJERAH', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81355267001', 'luthfan_ah@yahoo.co.id', 'hendrawinata@telin.co.id'),
(124, 'Herawati Listiani', '758008', '755443', 'FEMALE', 'ISLAM', 'JAKARTA    ', '03/25/1975', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', ' Jl  PESONA OTTAWA BLOK UD 3 NO  25 KOTA WISATA - CIBUBUR', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '81314485678', 'luthfan_ah@yahoo.co.id', 'ira@telin.co.id'),
(125, 'Herfanot', '632256', '632256', 'MALE', 'ISLAM', 'LUMAJANG    ', '12/04/63', 'KARYAWAN TETAP', 'SURABAYA', 'IV', 'JL  KEBALEN TIMUR NO 2 SURABAYA', 'SURABAYA', 'JAWA TIMUR', '0', '', 'JL SAMARINDA NO 55-57 GKB GRESIK RT 6/8 SUKOMULYO GRESIK', 'JAWA TIMUR', 'JAWA TIMUR', 'INDONESIA', '', '8123043678', 'luthfan_ah@yahoo.co.id', 'herfanot@telin.co.id'),
(126, 'Heti Ihas Hastuti', '738002', '735445', 'FEMALE', 'ISLAM', 'BANDUNG    ', '05/26/1973', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  MUTIARA NO 12 RT 004 RW 007 KEL  TURANGGA KEC  LENGKONG', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '82120030045', 'luthfan_ah@yahoo.co.id', 'heti@telin.co.id'),
(127, 'Hidayat', '720481', '720481', 'MALE', 'ISLAM', 'CIREBON    ', '08/10/72', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'PERUM VILLA PASIR MAS BLOK C 12 RT 007 RW 002 KEL PASIR KUDA KEC  BOGOR BARAT', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '', '81325853200', 'luthfan_ah@yahoo.co.id', 'hidayat@telin.co.id'),
(128, 'I Dewa Putu Putra Warsa', '640824', '640824', 'MALE', 'HINDU', 'TABANAN   ', ' 10/25/1964', 'KARYAWAN TETAP', 'MANADO', 'III', 'TELIN CLS KAUDITAN (TELKOM) JL  RAYA KEMA  DESA KEMA I  KECAMATAN KEMA  KABUPATEN MINAHASA UTARA  SULAWESI UTARA', 'MANADO', 'SULAWESI UTARA', '0', '', 'LINGKUNGAN IV KEL  TAAS MANADO SULAWESI UTARA', 'MANADO', 'SULAWESI UTARA', 'INDONESIA', '', '82226444075', 'luthfan_ah@yahoo.co.id', 'idewa.warsa@telin.co.id'),
(129, 'I KETUT ALIT ATMAJA', '820068', '820068', 'MALE', 'HINDU', 'GUMBRIH    ', '12/07/82', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '', 'luthfan_ah@yahoo.co.id', 'alit@telin.co.id'),
(130, 'I Made Surya Wirawan', '740174', '740174', 'MALE', 'HINDU', 'BADUNG    ', '05/13/1974', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL PINANG 2 NO 6 RT 03/RW15 KELURAHAN LIMO DEPOK', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '82165397363', 'luthfan_ah@yahoo.co.id', 'wirawan@telin.co.id'),
(131, 'I Made Tisna Jatmika', '790103', '790103', 'MALE', 'KRISTEN', 'MAGETAN    ', '09/07/79', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL VILLA ASRI SELATAN II NO  F5/10  SUKAPADA  CIBEUNYING KIDUL  BANDUNG  JAWA BARAT 40125', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81372478368', 'luthfan_ah@yahoo.co.id', 'madetisna@telin.co.id'),
(132, 'I Wayan Muliastika', '730379', '730379', 'MALE', 'HINDU', 'GIANYAR    ', '10/13/1973', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL PASIR INPUN PERUM BCV LAGUNA SECA III NO 247 RT 1/12', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '082126271359_', 'luthfan_ah@yahoo.co.id', 'wayan.muliastika@telin.co.id'),
(133, 'Ichsan Supriyanta', '641455', '641455', 'MALE', 'ISLAM', 'BANTUL   ', ' 12/15/1964', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'PRIMA HARAPAN REGENCY BLOK C7 N0 25HARAPAN BARU', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '8128190916', 'luthfan_ah@yahoo.co.id', 'ichsan@telin.co.id'),
(134, 'Ida Nurhaida', '650463', '650463', 'FEMALE', 'ISLAM', 'BANDUNG    ', '04/20/1965', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  CUMI-CUMI NO 17 RT 02 RW 07 JATI', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '811101003', 'luthfan_ah@yahoo.co.id', 'nurhaida@telin.co.id'),
(135, 'Ilham Muhammad', '928190', '925639', 'MALE', 'ISLAM', 'BANDUNG    ', '03/08/92', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMPLEK PN CIATEUL JLN PLN IVNO 7A BANDUNG', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '0', 'luthfan_ah@yahoo.co.id', 'ilham.m@telin.co.id'),
(136, 'Ilyasa Haqqani', '858112', '855572', 'MALE', 'ISLAM', 'BANDUNG   ', ' 11/04/1985', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  CENDANA II/24 JAKA PERMAI RT 007 RW 006  JAKA SAMPURNA  BEKASI BARAT  BEKASI', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '81388990801', 'luthfan_ah@yahoo.co.id', 'ilyasa.haqqani@telin.co.id'),
(137, 'Indira Andina Rusdy', '838111', '835576', 'FEMALE', 'ISLAM', 'JAKARTA    ', '03/10/83', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  DELMAN ASRI I NO 6 RT  005 RW 011 KEL KEBAYORAN LAMA UTARA KEC  KEBAYORAN LAMA', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81381474446', 'luthfan_ah@yahoo.co.id', 'indira.andina@telin.co.id '),
(138, 'Indra Fadila Arrasyid', '925715', '925715', 'MALE', 'ISLAM', 'SUMEDANG    ', '10/05/92', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'DUSUN KOJANGKANG RT002/010  DESA LICING  KEC  CIMALAKA  SUMEDANG JAWA BARAT', 'SUMEDANG', 'JAWA BARAT', 'INDONESIA', '', '82216668268', 'luthfan_ah@yahoo.co.id', 'indra.fadilah@telin.co.id'),
(139, 'Indriany Febri Marliana S', '798010', '795480', 'FEMALE', 'PROTESTAN', 'JAKARTA    ', '02/01/79', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'PURI DEPOK MAS BLOK P NO 19 RT 007 RW 020  PANCORAN MAS  KOTA DEPOK', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '81281074343', 'luthfan_ah@yahoo.co.id', 'indri@telin.co.id'),
(140, 'Irawan', '670344', '670344', 'MALE', 'ISLAM', 'JAKARTA    ', '06/26/1967', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'PINANG RANTI RT02/14 NO 28', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '85261226611', 'luthfan_ah@yahoo.co.id', 'Irawan@telin.co.id'),
(141, 'Irfan Nazir', '868039', '865401', 'MALE', 'ISLAM', 'PEKANBARU    ', '03/13/1986', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'Jl  H  GARI NO 37  PESANGGERAHAN', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '85262867106', 'luthfan_ah@yahoo.co.id', 'irfan@telin.co.id'),
(142, 'Irmia Diestyana Nilam Sari', '800009', '800009', 'FEMALE', 'ISLAM', 'MALANG    ', '03/03/80', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMPLEK BBD BLOK A2 NO 37-38 RT  003/003 KEL  CIGANJUR', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '8118022280', 'luthfan_ah@yahoo.co.id', 'irmia@telin.co.id'),
(143, 'Irvan Tambunan', '869019', '865403', 'MALE', 'PROTESTAN', 'JAKARTA    ', '06/04/86', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'MADANI RESIDEN NO 6  JLN DALANG 2 RT 02/ RW 04  KELURAHAN BOJONG RAWA LUMBU  KECAMATAN RAWA LUMBU BEKASI TIMUR 17116', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '81395044910', 'luthfan_ah@yahoo.co.id', 'irvan@telin.co.id'),
(144, 'Irwanda Wirasaputra', '918172', '915617', 'MALE', 'ISLAM', 'PARE PARE    ', '12/28/1991', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  KAKATUA 1 BLOK B NO 11 KEL GALUNG MALOANG  KEC  BACUKIKI PARE PARE', 'PARE PARE', 'SULAWESI SELATAN', 'INDONESIA', '', '85222150645', 'luthfan_ah@yahoo.co.id', 'irwanda.s@telin.co.id'),
(145, 'Isabella Nyssa Amelia', '938188', '935390', 'FEMALE', 'KATOLIK', 'JAKARTA    ', '03/23/1993', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  KEMURNIAN 7 NO  37  GLODOK  TAMAN SARI  JAKARTA BARAT 11120', 'JAKARTA BARAT', 'DKI JAKARTA', 'INDONESIA', '', '\'081294661078', 'luthfan_ah@yahoo.co.id', 'isabella@telin.co.id'),
(146, 'Iwan Budiman Saputra', '740061', '740061', 'MALE', 'PROTESTAN', 'CIREBON    ', '02/02/74', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'APT MEDITERANIA GARDEN RES C 25 FJ RT 003 RW  005 JL  TANJUNG DUREN RAYA  KEL  TANJUNG DUREN SELATAN  KEC  GROGOL PETAMBURAN', 'JAKARTA BARAT', 'DKI JAKARTA', 'INDONESIA', '', '811988120', 'luthfan_ah@yahoo.co.id', 'saputra@telin.co.id'),
(147, 'Jerrystama Abipradja', '925826', '925826', 'MALE', 'ISLAM', 'BOGOR    ', '05/31/1992', 'KARYAWAN DALAM MASA PERCOBAAN', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '', '', '', '', '', '', '', '', 'luthfan_ah@yahoo.co.id', 'jerrystama.abipradja@telin.co.id'),
(148, 'Johanes Soedarmoko', '632958', '632958', 'MALE', 'KATHOLIK', 'SOLO    ', '12/28/1963', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'KEMANG IFI GRAHA BLOK F10/4  JATIRASA  JATIASIH  BEKASI  JAWA BARAT 17424', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '\'081220444969', 'luthfan_ah@yahoo.co.id', 'johanes@telin.co.id'),
(149, 'Joko Eko Putro', '720555', '720555', 'MALE', 'ISLAM', 'SEMARANG    ', '04/21/1972', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'PERUM  BUKIT SEJAHTERA BLOK AG NO 9 RT 73/21 BUKIT LAMA', 'PALEMBANG', 'SUMATERA SELATAN', 'INDONESIA', '', '81222662906', 'luthfan_ah@yahoo.co.id', 'joko.putro@telin.co.id'),
(150, 'Joko Sapto A', '621434', '621434', 'MALE', 'ISLAM', 'BANYUMAS    ', '09/27/1962', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  LIGAR RESIK 46', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '82110899806', 'luthfan_ah@yahoo.co.id', 'joko_sa@telin.co.id'),
(151, 'Joko Sapto Armyantoro', '625234', '625234', 'MALE', 'ISLAM', 'BANYUMAS    ', '09/27/1962', 'KARYAWAN KONTRAK', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', 'JL  LIGAR RESIK 46', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '82110899806', 'luthfan_ah@yahoo.co.id', 'joko_sa@telin.co.id'),
(152, 'Joseph Sahat Raja', '740064', '', 'MALE', 'PROTESTAN', 'MEDAN    ', '02/22/1974', ' KARYAWAN TETAP ', 'Jakarta', '', ' THE BLOC EXECUTIVE SUITES 700 S. FLOWER STREET, 11TH FLOOR, NO.36, 37A-B, LOS ANGELES ', '', '', '', '', 'Jln Hang Lekir VIII / 3 ', 'Kebayoran Baru', 'Jakarta Selatan', 'Indonesia', '', '+628119108608 / +1 323 899 4134', 'luthfan_ah@yahoo.co.id', ' joss@telin.co.id '),
(153, 'Joseph Setiawan', '589003', '', 'MALE', 'KATOLIK', 'SURABAYA   ', ' 09/25/1958', 'KARYAWAN KONTRAK', 'Jakarta', '', 'Menara Jamsostek, Menara Utara, Lt.24 Jl. Jend. Gatot Subroto Kav. 38', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '2129952300', 'KAV. MARINIR BLOK AB 5/18 RT.08 RW.013, PONDOK KELAPA, DUREN SAWIT', 'JAKARTA', 'DKI JAKARTA', '', '', '', 'luthfan_ah@yahoo.co.id', 'jsetiawan@telin.co.id'),
(154, 'Joseph Tito Rusmurdiono', '938192', '935391', 'MALE', 'PROTESTAN', 'MAKASAR   ', ' 06/09/1993', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  MAWAR D1/1 BJI DANITA RT  016/RW  013 KEL  BEKASI JAYA KEC  BEKASI TIMUR', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '0', 'luthfan_ah@yahoo.co.id', 'joseph.tito@telin.co.id'),
(155, 'Kharisma', '730265', '730265', 'MALE', 'ISLAM', 'JAKARTA    ', '03/09/73', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOPO PERMAI BLK 5CD NO  41', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '811222850', 'luthfan_ah@yahoo.co.id', 'kharisma@telin.co.id'),
(156, 'Kristian Wahjuono Ari', '710373', '710373', 'MALE', 'KRISTEN', 'MAGELANG   ', ' 03/08/1971', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'BUMI ANGGREK BLOK S NO 183', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '81399993009', 'luthfan_ah@yahoo.co.id', 'kristian@telin.co.id'),
(157, 'KUKUH SETIAWAN', '855865', '855865', 'MALE', 'ISLAM', 'JAKARTA    ', '02/07/90', 'KONTRAK', 'JAKARTA', 'V', 'WHOCC KALIBATA JL. RAYA PS. MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA, JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12740', '', 'KOMP. MARINIR RANGKAPAN JAYA BARU BLOK R3 NO. 1 PANCORAN MAS - DEPOK', 'DEPOK', 'JAWA BARAT', 'JAKARTA', '', '6,28E+11', 'luthfan_ah@yahoo.co.id', 'kukuh@telin.co.id'),
(158, 'Laila Fitriana', '750074', '750074', 'FEMALE', 'ISLAM', 'SEMARANG    ', '06/10/75', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'ANGKASA DALAM II/44', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '8128316712', 'luthfan_ah@yahoo.co.id', 'laila@telin.co.id'),
(159, 'Laksmi Juwita', '790080', '790080', 'FEMALE', 'ISLAM', 'BOGOR    ', '07/24/1979', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL PINANG MERAH III NO 12 PERUM TAMAN YASMIN SEKTOR VI', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '', '8119696237', 'luthfan_ah@yahoo.co.id', 'laksmi@telin.co.id'),
(160, 'Lamanty Wira Daksina', '908073', '905216', 'MALE', 'ISLAM', 'BANJARMASIN   ', ' 11/20/1990', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'TAMAN BOUGENVILLE ESTATE BLOK E2 NO 2 RT 05 RW  06 KEL  JATIBENING KEC  PONDOKGEDE', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '81381896896', 'luthfan_ah@yahoo.co.id', 'wira@telin.co.id'),
(161, 'Lenny Gosal', '818029', '815541', 'FEMALE', 'KATOLIK', 'MAKASSAR    ', '11/09/81', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  YADO D NO  47 RT  007 RW  002 KEL  GANDARIA UTARA KEC  KEBAYORAN BARU 12140', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81315930995', 'luthfan_ah@yahoo.co.id', 'lenny@telin.co.id'),
(162, 'Leonardus Wahyu Wasono M', '734097', '734097', 'MALE', 'KATOLIK', 'PATI   ', ' 05/16/1973', 'KARYAWAN TETAP', 'JAKARTA', 'I', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL DALANG/SAIMAN NO 57 RT 004 RW 005  MUNJUL  CIPAYUNG', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '811987895', 'luthfan_ah@yahoo.co.id', 'leonardus_w_wasono@telin.co.id'),
(163, 'Lirico Budiman', '849017', '845518', 'MALE', 'ISLAM', 'BANDUNG    ', '08/15/1984', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'SUMMARECON BEKASI CLUSTER PALM 1B 16 BEKASI', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '8119103077', 'luthfan_ah@yahoo.co.id', 'rico@telin.co.id'),
(164, 'Lucky Fathma Trisnanti', '888032', '885352', 'FEMALE', 'ISLAM', 'JAKARTA    ', '02/28/1988', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'PERUM  JATIMULYA JL  CEMPEDAK 2 C/90  BEKASI', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '8121005007', 'luthfan_ah@yahoo.co.id', 'lucky@telin.co.id'),
(165, 'Luky Rahmawan Kusnaedi', '878026', '875407', 'MALE', 'ISLAM', 'PADANG    ', '10/25/1987', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'Jl  PARAHYANGAN NO  6  PANYILEUKAN  CIPADUNG KULON', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '8118300086', 'luthfan_ah@yahoo.co.id', 'luky.rahmawan@telin.co.id'),
(166, 'Lutfan Ramadhan', '908177', '905790', 'MALE', 'ISLAM', 'MALANG    ', '04/23/1990', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'TAMAN CIBADUYUT INDAH E-191  CANGKUANG KULON  DAYEUHKOLOT  KAB  BANDUNG 40239', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '\'082218893392', 'luthfan_ah@yahoo.co.id', 'lutfan@telin.co.id'),
(167, 'Made Teja Buana', '740045', '740045', 'MALE', 'HINDU', 'YOGYAKARTA    ', '04/13/1974', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'BSD TMN  CHRYSANT II BLOK N 2 / 09 RT  004/012 KEL  CIATER', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '81383564530', 'luthfan_ah@yahoo.co.id', 'madeteja@telin.co.id'),
(168, 'Mahfud Holis', '640764', '640764', 'MALE', 'ISLAM', 'BONDOWOSO    ', '09/05/64', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL NUSANTARA II NO 254 JATIMULYA', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '\'081213176644', 'luthfan_ah@yahoo.co.id', 'holis@telin.co.id'),
(169, 'Mayendra Leaz', '918146', '915547', 'MALE', 'ISLAM', 'JAKARTA    ', '11/17/1991', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMP  LESTARI BLOK E/17 KEL  PISANGAN KEC  CIPUTAT TIMUR TANGERANG SELATAN', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '81298124588', 'luthfan_ah@yahoo.co.id', 'endra@telin.co.id'),
(170, 'Melani Muchlis Moechtar', '828070', '825576', 'FEMALE', 'ISLAM', 'JAKARTA    ', '10/26/1982', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  DELMAN RAYA NO 12 RT 004 RW 11  KEBAYORAN LAMA UTARA  JAKARTA SELATAN', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '8121261082', 'luthfan_ah@yahoo.co.id', 'melani.moechtar@telin.co.id'),
(171, 'Miftahul Jannah', '898187', '865840', 'FEMALE', 'ISLAM', 'BANDUNG    ', '12/14/1986', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'GG KARYA NO 67 A  RT/RW 002/006  KEL CIPAYUNG  KEC  LUBANG BUAYA  JAKARTA TIMUR 13810', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '81296291404', 'luthfan_ah@yahoo.co.id', 'miftahul@telin.co.id'),
(172, 'Millati Nazhifa', '928117', '925107', 'FEMALE', 'ISLAM', 'BANDUNG    ', '09/25/1992', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JALAN MERKURI SELATAN 3 NO  3 BANDUNG', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '\'082317060005', 'luthfan_ah@yahoo.co.id', 'millati.nazhifa@telin.co.id'),
(173, 'Mira Permata', '848022', '845517', 'FEMALE', 'ISLAM', 'SUKABUMI    ', '03/31/1984', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  PELABUHAN II NO 312 RT 002 RW 014  DAYEUH LUHUR WARUDOYONG SUKABUMI', 'SUKABUMI', 'JAWA BARAT', 'INDONESIA', '', '81383564530', 'luthfan_ah@yahoo.co.id', 'mira@telin.co.id'),
(174, 'MIRANTI DJOKO', '935606', '935606', 'FEMALE', 'ISLAM', 'JAKARTA    ', '09/03/93', 'KARYAWAN KONTRAK', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', '', '', '', '', '', '', 'luthfan_ah@yahoo.co.id', 'miranti.djoko@telin.co.id'),
(175, 'Miranti Maria Muchamad', '858185', '855777', 'FEMALE', 'ISLAM', 'BANDUNG    ', '12/19/1985', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL MUARASARI IV NO  32 RT 05 RW 11  KEBONLEGA  BOJONGLOA KIDUL  BANDUNG', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '8122000850', 'luthfan_ah@yahoo.co.id', 'miranti@telin.co.id'),
(176, 'Moh Rizky Teguh Pribadi', '858045', '855433', 'MALE', 'ISLAM', 'JAKARTA    ', '11/15/1985', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JALAN RAYA TENGAH NO 3 RW 08 RT 01 KELURAHAN GEDONG KECAMATAN PASAR REBO 13760 JAKARTA TIMUR', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '81288481381', 'luthfan_ah@yahoo.co.id', 'rizky@telin.co.id'),
(177, 'Mohamad Alifikri', '770035', '770035', 'MALE', 'ISLAM', 'JAKARTA    ', '12/22/1977', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL MINA VI BLK I-3 NO 26 ISLAMIC-KARAWACI', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '81280877007', 'luthfan_ah@yahoo.co.id', 'alifikri@telin.co.id'),
(178, 'Mohamad Saefurahman', '730216', '730216', 'MALE', 'ISLAM', 'BANJARNEGARA    ', '10/02/73', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  SONOKELING B-6 BUDIAGUNG', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '', '81315344567', 'luthfan_ah@yahoo.co.id', 'ifurs@telin.co.id'),
(179, 'Mohammad Chuduri', '720509', '720509', 'MALE', 'ISLAM', 'MALANG    ', '01/16/1972', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'GG SUKAPADA 2 NO  66 /139C RT  004/016   KEL  PADASUKA  CIBEUNYING KIDUL  BANDUNG  JAWA BARAT', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '\'081220005667', 'luthfan_ah@yahoo.co.id', 'chuduri@telin.co.id'),
(180, 'Monica Desiree Bangun', '938198', '935450', 'FEMALE', 'PROTESTAN', 'BANDUNG    ', '10/12/93', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'AWILIGAR RAYA IV NO  26 ', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81312353669', 'luthfan_ah@yahoo.co.id', 'monica.desire@telin. co.id'),
(181, 'Monica Santy Sitanggang', '928173', '928211', 'FEMALE', 'KATOLIK', 'PEKANBARU    ', '04/11/92', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JALAN SIDOMUKTI  LABUH BARU BARAT  PAYUNG SEKAKI  PEKANBARU  RIAU  28292', 'RIAU', 'RIAU', 'INDONESIA', '', '81296303314', 'luthfan_ah@yahoo.co.id', 'monica@telin.co.id'),
(182, 'Muhammad Lutfi', '651213', '651213', 'MALE', 'ISLAM', 'PINRANG   ', ' 02/12/1965', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'PRATISTA-II/ E-6 ANTAPANI', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '811651213', 'luthfan_ah@yahoo.co.id', 'lutfi@telin.co.id'),
(183, 'Muhammad Raessal Danang Sukoraharjo', '928152', '928147', 'MALE', 'ISLAM', 'SUKABUMI    ', '09/19/1992', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  BENTENG TENGAH NO  58 A  BENTENG  WARUDOYONG  SUKABUMI  43132', 'SUKABUMI', 'JAWA BARAT', 'INDONESIA', '', '81298986944', 'luthfan_ah@yahoo.co.id', 'raessal.danang@telin.co.id'),
(184, 'Muhammad Raja Ihsan', '930163', '930163', 'MALE', 'ISLAM', 'JAKARTA    ', '07/15/1993', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  TANJUNG III BLK  K/4 RT 013 RT 02  TANJUNG BARAT  JAGAKARSA  JAKARTA SELATAN 12530', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '8121099556', 'luthfan_ah@yahoo.co.id', 'raja.ihsan@telin.co.id'),
(185, 'MUHAMMAD ROFIK', '720479', '720479', 'MALE', 'ISLAM', 'PONOROGO   ', ' 07/07/1972', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', '', 'JAKARTA SELATAN', 'DKI JAKARTA', '', '', '', 'luthfan_ah@yahoo.co.id', 'rofik@telin.co.id'),
(186, 'Muharman', '748150', '745485', 'MALE', 'ISLAM', 'BANDAR LAMPUNG    ', '01/25/1974', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'VILLA BINTARI INDAH BLOK A3/1   JOMBANG  CIPUTAT  TANGERANG SELATAN  BANTEN 15414', 'BANTEN', 'BANTEN', 'INDONESIA', '', '8122367983', 'luthfan_ah@yahoo.co.id', 'muharman@telin.co.id'),
(187, 'MUTIA WIKANINGRUM', '865938', '865938', 'FEMALE', 'ISLAM', 'JAKARTA    ', '06/03/86', 'KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', 'TAMAN SARI PESONA BALI BLOK A2 NO 10 TANGGERANG SELATAN', 'TANGERANG SELATAN', 'BANTEN', '', '', '89529929763', 'luthfan_ah@yahoo.co.id', 'mutia.wikaningrum@telin.co.id'),
(188, 'Nadilla Fedriany Soenardhi', '948147', '945017', 'FEMALE', 'ISLAM', 'BANDUNG    ', '02/21/1994', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'PENGADEGAN BARAT III NO  10 PENGADEGAN KEC  PANCORAN', 'JAKARTA', 'DKI JAKARTA', 'INDONESIA', '', '8129676333', 'luthfan_ah@yahoo.co.id', 'nadilla@telin.co.id'),
(189, 'Nanang Hendarno', '680058', '680058', 'MALE', 'ISLAM', 'SURABAYA    ', '02/21/1968', 'KARYAWAN TETAP', 'JAKARTA', 'I', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  KALIJATI INDAH NO  7 RT  005 RW 001  KEL  ANTAPANI KULON  BANDUNG  JAWA BARAT', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '8122045313', 'luthfan_ah@yahoo.co.id', 'hendarno@telin.co.id'),
(190, 'Ni Wayan Eka Agustina Rindavaldini Damayanti', '898156', '895695', 'FEMALE', 'HINDU', 'SAMARINDA    ', '08/13/1989', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'BUKIT CEMARA TIDAR  BLOK M2 NO 9  KARANG BESUKI  SUKUN  MALANG  JAWA TIMUR 65146', 'JAWA TIMUR', 'JAWA TIMUR', 'INDONESIA', '', '\'08121698521', 'luthfan_ah@yahoo.co.id', 'wayan.damayanti@telin.co.id'),
(191, 'Nicholas Soo', '718189', '715471', 'MALE', 'PROTESTAN', 'SELANGOR    ', '02/06/71', 'KARYAWAN KONTRAK', 'JAKARTA', 'I', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', '19E  LA VIE TOWNHOUSE  JL  KEMANG TIMUR 8  NO 19-20', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81394222888', 'luthfan_ah@yahoo.co.id', 'nichsoo@telin.co.id'),
(192, 'Nicky Satrio Sugiharto', '890088', '890088', 'MALE', 'ISLAM', 'NEW YORK    ', '11/05/89', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JALAN ALAM ASRI XII/12 SM7  PONDOK PINANG  KEBAYORAN LAMA', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81281277778', 'luthfan_ah@yahoo.co.id', 'nicky.satrio@telin.co.id'),
(193, 'Noprianto Narpiah Marbun', '730333', '730333', 'MALE', 'PROTESTAN', 'BANDUNG    ', '11/25/1973', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  SUTAN SYAHRIR NO  25 RT  005/001 KEL  GONDANGDIA', 'JAKARTA PUSAT', 'DKI JAKARTA', 'INDONESIA', '', '811875700', 'luthfan_ah@yahoo.co.id', 'noprianto.n@telin.co.id'),
(194, 'Novi Gunawan', '828066', '825573', 'MALE', 'ISLAM', 'YOGYAKARTA    ', '11/24/1982', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'DI JL  TROWULAN V BLOK U NO  40 PHARMINDO  CIMAHI SELATAN ', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '82127047700', 'luthfan_ah@yahoo.co.id', 'gunawan@telin.co.id'),
(195, 'Nugroho Adi Saputro', '910197', '910197', 'MALE', 'ISLAM', 'SUKOHARJO    ', '12/05/91', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'SEDAHROMO LOR RT 02 / RW 07  KARTASURA  SUKOHARJO  JAWA TENGAH 57167', 'JAWA TENGAH', 'JAWA TENGAH', 'INDONESIA', '', '\'081280804460', 'luthfan_ah@yahoo.co.id', 'nugroho.adi@telin.co.id'),
(196, 'Nurbaiti', '750037', '750037', 'FEMALE', 'ISLAM', 'JAKARTA    ', '11/21/1975', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'TAMAN ANYELIR 3 BLOK I-2 NO 1  KALIMULYA  CILODONG  DEPOK  JAWA BARAT 16413', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '\'081398900235', 'luthfan_ah@yahoo.co.id', 'nurbaiti@telin.co.id'),
(197, 'Nurul Aini', '908033', '905217', 'FEMALE', 'ISLAM', 'SIDOARJO   ', ' 01/02/1990', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'BEBEKAN MERGAYU NO  33 SEPANJANG TAMAN SIDOARJO', 'SURABAYA', 'JAWA TIMUR', 'INDONESIA', '', '85270000010', 'luthfan_ah@yahoo.co.id', 'aini@telin.co.id'),
(198, 'Nyayu Rodiah Utami', '790084', '790084', 'FEMALE', 'ISLAM', 'KUPANG    ', '10/04/79', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  H  LAMING NO  78 RT  008/008 KEL  JATICEMPAKA', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '811816556', 'luthfan_ah@yahoo.co.id', 'nyayu@telin.co.id'),
(199, 'Nyoto Priyono', '651153', '', 'MALE', 'ISLAM', 'NGAWI   ', ' 10/28/1965', 'KARYAWAN TETAP', 'Australia', '', '', '', '', '', '2129952300', 'TAMANSARI PESONA BALI BLOK A3/3- CIREUNDEU', 'TANGGERANG', 'BANTEN', '', '', '', 'luthfan_ah@yahoo.co.id', 'nyoto_p@telin.co.id'),
(200, 'Ofi Hendrasto', '868195', '865848', 'MALE', 'ISLAM', 'YOGYAKARTA   ', ' 01/07/1986', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL PRAMUKA GG GARUDA PANDEYEN UMBULHARJO YOGYAKARTA', 'JAKARTA', 'DKI JAKARTA', 'INDONESIA', '', '8111855758', 'luthfan_ah@yahoo.co.id', 'ofi.hendrasto@telin.co.id'),
(201, 'Oni Brotoseno', '730089', '730089', 'MALE', 'ISLAM', 'SEMARANG    ', '10/12/73', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL PINANG MERAH RAYA NO  15', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '', '8111000550', 'luthfan_ah@yahoo.co.id', 'oniseno@telin.co.id'),
(202, 'Ontoseno Raharjo Jachja', '848104', '845644', 'MALE', 'ISLAM', 'JAKARTA    ', '06/24/1984', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL  SINDORO NO 14 RT  004 RW  001 SETIABUDI  JAKARTA SELATAN', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '82122398675', 'luthfan_ah@yahoo.co.id', 'ontosenoraharjo@telin.co.id'),
(203, 'PACIOLO DAVID', '860158', '860158', 'MALE', 'PROTESTAN', '    ', '02/15/1986', 'KARYAWAN TETAP (BKO TELKOM)', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', '', '', '', '', '', '', 'luthfan_ah@yahoo.co.id', 'paciolo.david@telin.co.id'),
(204, 'Panca Agung Kusprastio', '650196', '650196', 'MALE', 'ISLAM', 'KEDIRI    ', '07/02/65', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'PADALARANG BANDUNG BARAT', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81219657007', 'luthfan_ah@yahoo.co.id', 'panca@telin.co.id'),
(205, 'Petrus Heru Suryo Hardiprabowo', '650605', '650605', 'MALE', 'KATOLIK', 'BIMA    ', '09/13/1965', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL NYIRUAN NO 100 KOMPLEK PERMANA INDAH CITEUREUP_', 'CIMAHI', 'JAWA BARAT', 'INDONESIA', '', '8122190741', 'luthfan_ah@yahoo.co.id', 'petrus.heru@telin.co.id'),
(206, 'PRADITHA SURAJA WAHANA', '875273', '875273', 'MALE', 'ISLAM', 'SEMARANG    ', '07/14/1987', 'KARYAWAN KONTRAK', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', '', '', '', '', '', '', 'luthfan_ah@yahoo.co.id', 'praditha.suraja@telin.co.id'),
(207, 'Pri Handoko', '720235', '720235', 'MALE', 'ISLAM', 'JAKARTA    ', '07/18/1972', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  ZAMRUD UTARA I BLOK T14 NO', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '81318773883', 'luthfan_ah@yahoo.co.id', 'prihand@telin.co.id'),
(208, 'Putri Nadia Handari', '868036', '865400', 'FEMALE', 'ISLAM', 'MEDAN    ', '09/20/1986', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'MITRA DAGO PARAHYANGAN I NO 1 RT 003 RW 001 KEL  ANTAPANI WETAN KEC  ANTAPANI', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81294045458', 'luthfan_ah@yahoo.co.id', 'putri.nadia@telin.co.id'),
(209, 'Putri Rianda', '839020', '835541', 'FEMALE', 'ISLAM', 'JAKARTA    ', '11/13/1983', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KRAMAT JAYA BARU IV NO 5 JAKPUS 10450', 'JAKATA PUSAT', 'DKI JAKARTA', 'INDONESIA', '', '811164210', 'luthfan_ah@yahoo.co.id', 'PutriRianda@telin.co.id'),
(210, 'Putriana Dyah Rahmatika', '918154', '915546', 'FEMALE', 'ISLAM', 'BANDUNG    ', '04/07/91', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL SENAM NO II NO 4  SUKAMISKIN  ARCAMANIK  BANDUNG 40293', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '\'082120003660', 'luthfan_ah@yahoo.co.id', 'putriana.rahmatika@telin.co.id'),
(211, 'RADEN BAGUS GERRY ARRAFIANTO', '925868', '925868', 'MALE', 'ISLAM', 'JAKARTA    ', '01/14/1992', 'KONTRAK', 'JAKARTA', 'V', 'WHOCC KALIBATA JL. RAYA PS. MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA, JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12740', '', 'JL. PAKIN 4 RT 010/001 CIPINANG CEMPEDAK JATINEGARA', 'JAKARTA TIMUR', 'DKI JAKARTA', '', '', '8989775555', 'luthfan_ah@yahoo.co.id', 'gerry.a@telin.co.id'),
(212, 'Rahmad Fitriyanto', '730219', '730219', 'MALE', 'ISLAM', 'SUMENEP    ', '10/30/1973', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'SETRA DAGO TIMUR IV/3 ANTAPANI', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '811209493', 'luthfan_ah@yahoo.co.id', 'fitry@telin.co.id'),
(213, 'Rahman Ramadan', '828132', '825711', 'MALE', 'ISLAM', 'PADANGSIDEMPUAN    ', '07/16/1982', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KAMPUNG BARU II NO 30 RT 003 RW 002 KEL ULUJAMI KEC PESANGGRAHAN', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '\'081213367560', 'luthfan_ah@yahoo.co.id', 'rahman.ramadan@telin.co.id'),
(214, 'Reinaldy CL. Sjamsuddin', '700648', '700648', 'MALE', 'ISLAM', 'UJUNGPANDANG    ', '07/21/1970', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL TELEGRAM NO 8 KOMP TELKOM', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81394733544', 'luthfan_ah@yahoo.co.id', 'reinaldy@telin.co.id'),
(215, 'RETNO AJENG ANISSA WIDIARTI', '955201', '955201', 'FEMALE', 'ISLAM', 'JAKARTA    ', '03/29/1995', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', '', '', '', '', '', '', 'luthfan_ah@yahoo.co.id', 'retno.ajeng@telin.co.id'),
(216, 'Ricky Setiadi', '828145', '825789', 'MALE', 'KATOLIK', 'JAKARTA    ', '06/22/1982', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  MANGGA 9 BLOK R 505 DURI KEPA KEBON JERUK JAKARTA BARAT', 'JAKARTA BARAT', 'DKI JAKARTA', 'INDONESIA', '', '81288795411', 'luthfan_ah@yahoo.co.id', 'ricky.setiadi@telin.co.id'),
(217, 'RIDHO DHARUL FADLI', '955244', '955244', 'MALE', 'ISLAM', 'BOGOR    ', '09/19/1995', 'KARYAWAN KONTRAK', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', '', '', '', '', '', '', 'luthfan_ah@yahoo.co.id', 'ridho.dharul@telin.co.id'),
(218, 'Rifany Meylasari', '898155', '895653', 'FEMALE', 'ISLAM', 'BANDUNG    ', '05/16/1989', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL TERUSAN PESANTREN NO 76  SUKAMISKIN  ARCAMANIK  BANDUNG  JAWA BARAT 40293', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '\'08119951649', 'luthfan_ah@yahoo.co.id', 'rifany@telin.co.id'),
(219, 'Rini Fitriani', '780037', '780037', 'FEMALE', 'ISLAM', 'BANDUNG    ', '02/08/78', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  BATA MERAH 60 RT  005/02 KEL  CARINGIN', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81321177771', 'luthfan_ah@yahoo.co.id', 'rinifitriani@telin.co.id'),
(220, 'Rininta Putri Nugroho', '878175', '876602', 'FEMALE', 'ISLAM', 'KITCHENER  ONTARIO    ', '09/21/1987', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JALAN CILANDAK 1 NO  15B  CILANDAK BARAT  CILANDAK  JAKARTA SELATAN  DKI JAKARTA 12430', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '818956259', 'luthfan_ah@yahoo.co.id', 'rininta@telin.co.id');
INSERT INTO `employees` (`emp_id`, `name`, `nik_telin`, `nik_tg`, `gender`, `religion`, `place_of_birth`, `date_of_birth`, `employee_status`, `position_band`, `work_location`, `office_address`, `city`, `province`, `pos_code`, `telepon`, `my_address`, `my_city`, `my_province`, `my_country`, `my_pos_code`, `my_tlp_no`, `email`, `email_asli`) VALUES
(221, 'Rismania Veradiza', '840129', '840129', 'FEMALE', 'ISLAM', 'JAKARTA    ', '10/09/84', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL DUKUH III NO 2 RT 09/02', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '81380845599', 'luthfan_ah@yahoo.co.id', 'rismania@telin.co.id'),
(222, 'Riyan Baharudin', '918170', '915616', 'MALE', 'ISLAM', 'BEKASI    ', '05/12/91', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL ALEXANDER BLOK D 264 MASNAGA   JAKASAMPURNA  BEKASI BARAT  BEKASI  JAWA BARAT 17145', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '82123172646', 'luthfan_ah@yahoo.co.id', 'riyan.baharudin@telin.co.id'),
(223, 'Riyan Sapoetra', '898134', '895630', 'MALE', 'ISLAM', 'BANDAR LAMPUNG    ', '11/12/89', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  SWASEMBADA BARAT III NO 33  RT13/09 KEL  KEBON BAWANG KEC  TANJUNG PRIOK JAKARTA UTARA', 'JAKARTA UTARA', 'DKI JAKARTA', 'INDONESIA', '', '81284543999', 'luthfan_ah@yahoo.co.id', 'riyan@telin.co.id'),
(224, 'Riza Agung Nugraha Rukmana', '730038', '730038', 'MALE', 'ISLAM', 'BANDUNG    ', '01/15/1973', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL LAMDA NO 5  RT 004 RW  004 KOMP CIGADUNG II  DS CIGADUNG  KEC CIBEUNYING KALER', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '8122275515', 'luthfan_ah@yahoo.co.id', 'riza@telin.co.id'),
(225, 'Rizky Gusman', '898084', '895432', 'MALE', 'ISLAM', 'TANGERANG    ', '08/20/1989', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'BUKIT INDAH BLOK L1 NO  16  SERUA  CIPUTAT  TANGERANG SELATAN', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '\'081316659519', 'luthfan_ah@yahoo.co.id', 'rizky.gusman@telin.co.id'),
(226, 'RR Siti Maesaroh Bayu Rini', '848113', '845661', 'FEMALE', 'ISLAM', 'TEMANGGUNG    ', '05/04/84', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'BUKIT NUSA INDAH KAV 743 SERUA CIPUTAT TANGERANG SELATAN', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '\'081284828970', 'luthfan_ah@yahoo.co.id', 'bayu.rini@telin.co.id'),
(227, 'Rudi Haerudiat', '720379', '720379', 'MALE', 'ISLAM', 'CIAMIS    ', '07/03/72', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMPLEK ANTAPANI REGENCY NO  C7  RT02/05 KEL  ANTAPANI KULON  KEC  ANTAPANI - BANDUNG', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '811205470', 'luthfan_ah@yahoo.co.id', 'haerudiat@telin.co.id'),
(228, 'Rudi Iskandar', '720401', '720401', 'MALE', 'ISLAM', 'JAKARTA   ', ' 08/11/1972', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMPLEK PONDOK CABE INDAH R-2 PAMULANG', 'TANGERANG SELATAN', 'BANTEN', 'INDONESIA', '', '8111872760', 'luthfan_ah@yahoo.co.id', 'rudi.iskandar@telin.co.id'),
(229, 'Rudy Tjandra', '808131', '805686', 'MALE', 'PROTESTAN', 'SURABAYA    ', '07/04/80', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'APT TAMAN RASUNA U 0914G RT 002 RW 010 KEL MENTENG ATAS KEC SETIA BUDI', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81218017641', 'luthfan_ah@yahoo.co.id', 'rudy.tjandra@telin.co.id'),
(230, 'Rumondang Agustina Nainggolan', '840121', '840121', 'FEMALE', 'KATOLIK', 'MEDAN    ', '08/16/1984', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  PANCI LORONG GEREJA NO 8 KEL  SEI PUTIH TENGAH', 'MEDAN', 'SUMATRA UTARA', 'INDONESIA', '', '8121491283', 'luthfan_ah@yahoo.co.id', 'rana@telin.co.id'),
(231, 'Ruslan Z. Hutapea', '642190', '642190', 'MALE', 'PROTESTAN', 'JAKARTA    ', '06/06/64', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'BSD BLOK C/43A SEKTOR 2-1  RT  03 RW  10 RAWABUNTU SERPONG ', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '8111007850', 'luthfan_ah@yahoo.co.id', 'Ruslan_h@telin.co.id'),
(232, 'Ryza Satria Pamenang', '898105', '895416', 'MALE', 'ISLAM', 'SALATIGA    ', '11/07/89', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'VILA VITRA ST JATI BLOK F3/4 RT  005 RW 004 BOGOR', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '', '81210299477', 'luthfan_ah@yahoo.co.id', 'ryza@telin.co.id'),
(233, 'Sadiman Eko Kriswanto', '720132', '720132', 'MALE', 'ISLAM', 'JUWANA   ', ' 06/21/1972', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'GRIYA BABATAN MUKTI VIII-10 BLOK G-29 RT 2/7 BABATAN', 'SURABAYA', 'JAWA TIMUR', 'INDONESIA', '', '81331104441', 'luthfan_ah@yahoo.co.id', 'eko_kris@telin.co.id'),
(234, 'Sahat Hasudungan', '818095', '815538', 'MALE', 'PROTESTAN', 'BELINYU    ', '12/09/81', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KP TIPAR RT  002 RW 009 KEL  MEKARSARI KEC CIMANGGIS', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '82145328489', 'luthfan_ah@yahoo.co.id', 'hanzjuntak@telin.co.id'),
(235, 'Sarahmatun Kusminarin', '828055', '825575', 'FEMALE', 'ISLAM', 'JAKARTA    ', '06/28/1982', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  LEUSER NO  5 KEBAYORAN BARU', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '82126666842', 'luthfan_ah@yahoo.co.id', 'sarah.k@telin.co.id'),
(236, 'Satrio Afif Widodo', '928133', '925273', 'MALE', 'ISLAM', 'BANDUNG    ', '08/18/1992', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL SALENDRO TIMUR II NO 26 RT 001 RW 010 KEL GUMURUH KEC BATUNUNGGAL', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81221516225', 'luthfan_ah@yahoo.co.id', 'satrio.afif@telin.co.id'),
(237, 'Scaesario Bertha Diangual S', '858098', '855559', 'MALE', 'ISLAM', 'YOGYAKARTA    ', '03/13/1985', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JETAK RT  02 KEL  RINGIN HARJO KEC  BANTUL', 'YOGYAKARTA', 'D I YOGYAKARTA', 'INDONESIA', '', '8113400083', 'luthfan_ah@yahoo.co.id', 'rio@telin.co.id'),
(238, 'Siti Fatimah Zahra', '888025', '885351', 'FEMALE', 'ISLAM', 'SURABAYA    ', '03/14/1988', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'PONDOK MITRA LESTARI BLOK A4 NO  8 RT  05 RW  2 KEL  JAKA SETIA KEC  BEKASI SELATAN', 'BEKASI SELATAN', 'JAWA BARAT', 'INDONESIA', '', '81298653555', 'luthfan_ah@yahoo.co.id', 'imazahra@telin.co.id'),
(239, 'Soni Susanto', '730320', '730320', 'MALE', 'ISLAM', 'TASIKMALAYA    ', '09/08/73', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'GRAHA MUTIARA BLOK J/6 RT 006/003', '0', '0', '0', '', '8129845500', 'luthfan_ah@yahoo.co.id', 'soni@telin.co.id'),
(240, 'Sotarduga Lamhot Sihombing', '788125', '785607', 'MALE', 'PROTESTAN', 'LINTONGNIHUTA   ', ' 04/23/1978', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'Jl  TOLE ISKANDAR 45 GEMA PESONA ESTATE BLOK V/3 RT 006/RW 011', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '\'08111123049', 'luthfan_ah@yahoo.co.id', 'sotarduga@telin.co.id'),
(241, 'Sri Wiyono Herlambang', '641931', '641931', 'MALE', 'ISLAM', 'KENDAL    ', '09/10/64', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  PURI AYU PRATAMA IV/7 RT  004 RW  014 KEL  SUKAMISKIN KEC  ARCAMANIK', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '811217591', 'luthfan_ah@yahoo.co.id', 'herlambang@telin.co.id'),
(242, 'Suharyoto', '720082', '720082', 'MALE', 'ISLAM', 'SURAKARTA    ', '05/10/72', 'KARYAWAN TETAP', 'JAKARTA', 'I', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'ANTAPANI REGENCY BLOK F-8 RT 002/005 KEL ANTAPANI KULON BANDUNG JAWA BARAT', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81347903443', 'luthfan_ah@yahoo.co.id', 'suharyoto@telin.co.id'),
(243, 'Susanti P', '730054', '730054', 'FEMALE', 'ISLAM', 'JAKARTA    ', '04/09/73', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL MAKMUR NO 44 RT 003 RW 003 KEL  KEBAYORAN LAMA UTARA KEC  KEBAYORAN LAMA', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81314636381', 'luthfan_ah@yahoo.co.id', 'santi_p@telin.co.id'),
(244, 'Syifa Herning Fadillah', '938158', '935116', 'FEMALE', 'ISLAM', 'JAKARTA    ', '07/24/1993', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'TEBET BARAT 5C NO 26  TEBET BARAT  TEBET  JAKARTA SELATAN 12810', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81295902345', 'luthfan_ah@yahoo.co.id', 'syifa@telin.co.id'),
(245, 'Teddy Muliawan', '758035', '755522', 'MALE', 'ISLAM', 'BOGOR    ', '10/24/1975', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'GG  MAKAM NO  11 RT 02/ RW 05 CILENDEK BARAT  KOTA BOGOR BARAT', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '', '081318220477 / 08122177609', 'luthfan_ah@yahoo.co.id', 'teddy@telin.co.id'),
(246, 'Teguh Indrayatno', '730466', '730466', 'MALE', 'ISLAM', 'BANDUNG   ', ' 09/14/1973', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'PERMATA BUMI RAYA KAV AC 16CISARANTEN KULON -ARCAMANIK', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81311047799', 'luthfan_ah@yahoo.co.id', 'teguh@telin.co.id'),
(247, 'Tionida Octora Marpaung', '848157', '848157', 'FEMALE', 'PROTESTAN', 'JAKARTA ', '10/10/84', 'KARYAWAN KONTRAK', 'Jakarta', 'V', 'Menara Jamsostek, Menara Utara, Lt.24 Jl. Jend. Gatot Subroto Kav. 38', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952301', 'JL. KAVLING I NO 63 , CIPAYUNG', 'JAKARTA TIMUR', 'DKI JAKARTA', '', '', '81319600101', 'luthfan_ah@yahoo.co.id', 'tionida@telin.co.id'),
(248, 'Tommy Adhyasa Suramardhana', '898159', '895696', 'MALE', 'ISLAM', 'SURABAYA    ', '07/29/1989', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'SELAT SUNDA 2 D2/43  LESANPURO  KEDUNGKANDANG  MALANG  JAWA TIMUR 65138', 'JAWA TIMUR', 'JAWA TIMUR', 'INDONESIA', '', '0812 9112 3290', 'luthfan_ah@yahoo.co.id', 'tommy@telin.co.id'),
(249, 'Torkis Narama', '879021', '875410', 'MALE', 'ISLAM', '', '02/13/1987', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'Jl  RAYA BAMBU APUS  KOMP  KARTIKA JAYA NO  27 KEL  CEGER  KEC  CIPAYUNG', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '82114004644', 'luthfan_ah@yahoo.co.id', 'amiruddin@telin.co.id'),
(250, 'Trisa Aditya', '928165', '928210', 'FEMALE', 'ISLAM', 'BOGOR    ', '02/14/1992', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL  RAYA JAKARTA-BOGOR KM 41 RT 001 RW  007 NO 45 PABUARAN CIBINONG', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '', '81213639398', 'luthfan_ah@yahoo.co.id', 'trisa@telin.co.id'),
(251, 'Wahyu Narendra Jati', '920197', '920197', 'MALE', 'ISLAM', 'TANGGERANG    ', '09/14/1992', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  A  YANI I BLOK C NO 18  PISANGAN TIMUR  PULOGADUNG  JAKARTA TIMUR', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '\'082114184335', 'luthfan_ah@yahoo.co.id', 'wahyu.narendra@telin.co.id'),
(252, 'Wahyu Wiyono', '650859', '650859', 'MALE', 'ISLAM', 'KEDIRI    ', '02/09/65', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL HORISON IV BLOK F 106/20 RT 06 RW  19 KEL PENGASINAN KEC  RAWALUMBU', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '81218109909', 'luthfan_ah@yahoo.co.id', 'w_wiyono@telin.co.id'),
(253, 'WAHYUDI HANDRIYANTO', '730372', '730372', 'MALE', 'ISLAM', 'POURWOREJO    ', '09/23/1973', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', '', '', '', '', '', '', 'luthfan_ah@yahoo.co.id', 'wahyudi@telin.co.id'),
(254, 'Wandha Benny Bintoro', '868090', '855434', 'MALE', 'ISLAM', 'PRINGSEWU    ', '03/26/1985', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'PAMULANG PERMAI I  JL  PERMAI IV BLOK AX 17/07  PAMULANG  TANGERANG SELATAN 15417  BANTEN', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '81315216194', 'luthfan_ah@yahoo.co.id', 'wandha.bintoro@telin.co.id'),
(255, 'Wandi Hardian', '800078', '800078', 'MALE', 'ISLAM', 'JAKARTA    ', '11/24/1980', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  PATUHA UTARA 4 BLOK 16 NO  17  KAYURINGIN JAYA  BEKASI SELATAN  BEKASI  JAWA BARAT 17144', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '', '811184737', 'luthfan_ah@yahoo.co.id', 'wandi@telin.co.id'),
(256, 'Widi Astrio', '858052', '855429', 'MALE', 'ISLAM', 'BELAKANG PADANG    ', '06/26/1985', 'KARYAWAN TETAP', 'BATAM', 'V', 'JL  PALAPA BUKIT DANGAS SEKUPANG BATAM  ', 'BATAM', 'KEPULAUAN RIAU', '0', '', 'PERUM MASYEBA GADING MAS B3/2 TIBAN BATAM', 'BATAM', 'KEPULAUAN RIAU', 'INDONESIA', '', '81270006652', 'luthfan_ah@yahoo.co.id', 'Widi.Astrio@telin.co.id'),
(257, 'Widjajanto Budi Sulistijo', '680066', '680066', 'MALE', 'ISLAM', 'TEMANGGUNG   ', ' 01/28/1968', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  AEROMODELING NO  101 RT 06/02 ARCAMANIK  CISARANTEM ENDAH  BANDUNG  JAWA BARAT', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '8121040123', 'luthfan_ah@yahoo.co.id', 'widjajanto_budi_s@telin.co.id'),
(258, 'Widya Rickarda', '790063', '790063', 'FEMALE', 'ISLAM', 'PALEMBANG    ', '05/12/79', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  MENES 119  KOMP TULIP PERMAI', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '8122049192', 'luthfan_ah@yahoo.co.id', 'widya_r@telin.co.id'),
(259, 'Willy Firdaus Tandililing', '798114', '795594', 'MALE', 'PROTESTAN', 'JAYAPURA   ', ' 05/14/1979', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'CLUSTER BRITAIN G10/3  KOMPLEKS TELAGA GOLF  SAWANGAN-DEPOK', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '81320621646', 'luthfan_ah@yahoo.co.id', 'willy.firdaus@telin.co.id'),
(260, 'Willy Koesprasetyo', '810048', '810048', 'MALE', 'ISLAM', 'SOROAKO    ', '03/04/81', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMP  PLN SENAYAN WISMA NO 2  GROGOL UTARA  KEBAYORAN LAMA  JAKARTA SELATAN  DKI JAKARTA 12210', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '\'0811982608', 'luthfan_ah@yahoo.co.id', 'willy@telin.co.id '),
(261, 'WISNU WIYANTORO', '855876', '855876', 'MALE', 'ISLAM', 'JAKARTA    ', '01/25/1985', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '2129952300', 'luthfan_ah@yahoo.co.id', 'wisnu.wiyantoro@telin.co.id'),
(262, 'Y Wahyu Sugiharto', '778013', '775491', 'MALE', 'KATOLIK', 'SOLO    ', '02/12/77', 'KARYAWAN TETAP', 'MANADO', 'V', 'TELIN CLS KAUDITAN (TELKOM) JL  RAYA KEMA  DESA KEMA I  KECAMATAN KEMA  KABUPATEN MINAHASA UTARA  SULAWESI UTARA', 'MANADO', 'SULAWESI UTARA', '0', '', 'JL TERATAI III / 13 LARANGAN INDAH  LARANGAN', 'TANGERANG', 'BANTEN', 'INDONESIA', '', '81218925588', 'luthfan_ah@yahoo.co.id', 'wahyusgh@telin.co.id'),
(263, 'Yessi Marlina', '770044', '770044', 'FEMALE', 'ISLAM', 'LUBUKLINGGAU    ', '03/08/77', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL P I NO 23 RT 4 RW 14  KEBON BARU  TEBET  JAKARTA 12830', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '85100809374', 'luthfan_ah@yahoo.co.id', 'yessi@telin.co.id'),
(264, 'Yonny Septian Izmantoko', '890086', '890086', 'MALE', 'ISLAM', 'SEMARANG    ', '09/17/1989', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JLN  KYAI SAHID V/5 SINGOPURAN  KARTASURA  SOLO', 'JAWA TENGAH', 'JAWA TENGAH', 'INDONESIA', '', '811284364', 'luthfan_ah@yahoo.co.id', 'yonny.septian@telin.co.id'),
(265, 'Yoseline', '898051', '895433', 'FEMALE', 'PROTESTAN', 'JAKARTA    ', '05/02/89', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'KALISARI RT 008 RW 001  PASAR REBO JAKARTA TIMUR', 'JAKARTA TIMUR', 'DKI JAKARTA', 'INDONESIA', '', '\'081310010317', 'luthfan_ah@yahoo.co.id', 'elin@telin.co.id'),
(266, 'Yudie Irawan', '838163', '835708', 'MALE', 'BUDHA', 'KARAWANG    ', '02/03/83', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL TAMBAK BAYA 1 NO 9  KARAWANG KULAN  KARAWANG BARAT', 'KARAWANG', 'JAWA BARAT', 'INDONESIA', '', '82199999977', 'luthfan_ah@yahoo.co.id', 'yudie@telin.co.id'),
(267, 'Yulhasril', '660212', '660212', 'MALE', 'ISLAM', 'BANDUNG    ', '06/06/66', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KOMPLEK GRIYA CARAKA BLOK G-73 CISARANTEN ENDAH ARCAMANIK', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '811224760', 'luthfan_ah@yahoo.co.id', 'yoelhaz@telin.co.id'),
(268, 'Yulia Ramadhanti', '829018', '825580', 'FEMALE', 'ISLAM', 'BENGKULU    ', '07/19/1982', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'BUMI ASRI I PADASUKA JL INDAH NO 24 RT 02/05 BANDUNG 40192', 'BANDUNG', 'JAWA BARAT', 'INDONESIA', '', '81320197197', 'luthfan_ah@yahoo.co.id', 'lia@telin.co.id'),
(269, 'Yuliawan', '708153', '705379', 'MALE', 'ISLAM', 'BANDUNG    ', '07/09/70', 'KARYAWAN TETAP', 'JAKARTA', 'III', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL  CARITA RAYA BSS  SURADITA  CISAUK  TANGERANG', 'BANTEN', 'BANTEN', 'INDONESIA', '', '\'081289017394', 'luthfan_ah@yahoo.co.id', 'yuliawan@telin.co.id'),
(270, 'Yusuf Zalaya', '828167', '825802', 'MALE', 'ISLAM', 'SEMARANG   ', ' 02/13/1982', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'GRAND DEPOK CITY SEKTOR ANGGREK 2 H2/18  TIRTA JAYA  SUKMA JAYA  DEPOK  JAWA BARAT 16412', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '', '\'081298741440', 'luthfan_ah@yahoo.co.id', 'yusuf@telin.co.id'),
(271, 'Zein Nofiandi', '908088', '905449', 'MALE', 'ISLAM', 'CILACAP   ', ' 11/13/1990', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JALAN SUREN 1 NO  21  RAWA BARAT  KEBAYORAN BARU  JAKARTA SELATAN 12180', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81297354547', 'luthfan_ah@yahoo.co.id', 'zein@telin.co.id'),
(272, 'Zuanastia', '868137', '865614', 'FEMALE', 'ISLAM', 'JAKARTA    ', '02/25/1986', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'JL H KAVLING NO 26 RT 06/14 KEL  KEBON BARU KEC  TEBET JAKARTA SELATAN', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '81289863335', 'luthfan_ah@yahoo.co.id', 'zuanastia@telin.co.id'),
(273, 'Zulfahmi Tanjung', '818030', '815540', 'MALE', 'ISLAM', 'JAKARTA    ', '11/16/1981', 'KARYAWAN TETAP', 'JAKARTA', 'IV', 'WHOCC KALIBATA JL  RAYA PS  MINGGU NO 10 RT 13 RW 01 PEJATEN TIMUR (PLASA TELKOM-STO KALIBATA  JAKARTA SELATAN)', 'JAKARTA SELATAN', 'DKI JAKARTA', '12510', '+6221 80667818', 'JL  TANJUNG GEDONG NO  16 RT 008/016  GROGOL PETAMBURAN  TOMANG', 'JAKARTA BARAT', 'DKI JAKARTA', 'INDONESIA', '', '8128037353', 'luthfan_ah@yahoo.co.id', 'falen_tanjung@telin.co.id'),
(274, 'Zulhami Rizki', '888142', '885752', 'MALE', 'ISLAM', 'JAKARTA    ', '06/14/1988', 'KARYAWAN TETAP', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER   TOWER 2   16th - 17th FLOOR   JL JEND GATOT SUBROTO KAV  52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '+6221 29952300', 'KP  KANDANG RT 06/006 JAGAKARSA ', 'JAKARTA SELATAN', 'DKI JAKARTA', 'INDONESIA', '', '85695477384', 'luthfan_ah@yahoo.co.id', 'zulhami.rizki@telin.co.id'),
(275, 'DEWI ROSLIANA', '107377', '107377', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(276, 'TAUFANI AYU  KURNIATI', '84550', '84550', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(277, 'ANDI HARI SETIAWAN', '106707', '106707', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(278, 'BIANCA TIFFANI SARKOWI', '61593', '61593', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(279, 'TRI MULYO', '79480', '79480', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(280, 'APRIYANTO', '57676', '57676', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(281, 'SUSY SUSANTY', '63511', '63511', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(282, 'RIVIA NUR ATMI OKTAVIA', '65350', '65350', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(283, 'WAWAN SOPYAN', '78471', '78471', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(284, 'INDRA IRAWANSYAH', '78472', '78472', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(285, 'CHAIRURISSA', '89945', '89945', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(286, 'ZAKIE FAUZAN', '91245', '91245', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(287, 'SYARIFAH HANANIA', '105511', '105511', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(288, 'CLIMENTINO EVANDER GUILLERMO', '99659', '99659', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(289, 'SANDY RIZKY RAMADHAN', '98551', '98551', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(290, 'MAULANA YUSUF', '97562', '97562', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(291, 'TIONIDA OCTORA MARPAUNG', '92042', '92042', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(292, 'IMELDA MANALU', '59151', '59151', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(293, 'ANGGOMAN LAMEDA', '57685', '57685', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(294, 'NANNY TRI HARYANI', '57686', '57686', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(295, 'TASHA VIERGINIA', '57705', '57705', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(296, 'NURMA RISKIANI PUTRI', '65482', '65482', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(297, 'DIESNATITI SYIFA ASHARI', '87122', '87122', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(298, 'HARIS SASONO', '57664', '57664', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(299, 'JUNAIDI', '57667', '57667', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(300, 'SHOLEH', '57669', '57669', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(301, 'MULYONO', '57670', '57670', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(302, 'JAEDI', '57671', '57671', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(303, 'IKA EFI KUSMAYANTI', '57674', '57674', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(304, 'AMI ADHIRAMA', '57679', '57679', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(305, 'WAHYUNI', '57687', '57687', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(306, 'EGA FIRMAN RAMADHAN', '57688', '57688', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(307, 'YUSMAR SOLIHIN', '57711', '57711', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(308, 'SUMARIYANTO', '62405', '62405', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(309, 'TITI ARDIYANI', '63778', '63778', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(310, 'HAIRUL BAHRI', '68256', '68256', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(311, 'WIDYANINGSIH', '68257', '68257', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(312, 'ANDRI WIBOWO SAPUTRO', '68460', '68460', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(313, 'AGIF WIDIYANTO', '78841', '78841', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(314, 'SAMUEL SLAMAT HARYANTO', '106316', '106316', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(315, 'SUTRISNO', '57666', '57666', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(316, 'VARICKA DADYT WARDANI', '67146', '67146', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(317, 'SALIYAH', '74452', '74452', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(318, 'OKKY WIDAYANTO', '75656', '75656', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(319, 'JUMENO', '76377', '76377', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(320, 'DELLA ARDELINA', '99112', '99112', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(321, 'DESY GAYATRI', '80555', '80555', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(322, 'RIZKY LYANDRA', '105153', '105153', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(323, 'DIAS BIMARCO RIZKY', '92900', '92900', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(324, 'RIEZKY FIRMAN ARIF', '110215', '110215', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(325, 'ANDHIKA BUDI PRATAMA', '57691', '57691', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(326, 'DEVY SISWYNA ARPY ELFANIKA', '109244', '109244', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(327, 'MOCHAMMAD PUTRANTO', '77512', '77512', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(328, 'NIDIA NORMANIA SARI', '62271', '62271', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(329, 'FADLY NOVIAN', '88451', '88451', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(330, 'ZAINUDIN KAMBALI', '201401016', '201401016', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(331, 'ABYAN ARINDRA', '201412150', '201412150', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(332, 'YOGIE OSADHANI', '201601014', '201601014', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(333, 'MOH. ABDUL MUJIB', '201206064', '201206064', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(334, 'RIZKI PERMANA', '201405090', '201405090', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(335, 'DWITEK RIZKIPUTRA', '201601002', '201601002', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(336, 'WAHYU QADHAR GULTOM', '201711084', '201711084', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(337, 'JANI SUJATMOKO', '201403068', '201403068', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(338, 'MOHD KHAMANDA SYAHPUTRA', '201509064', '201509064', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(339, 'BANGUN PUTRA', '201608065', '201608065', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(340, 'ABDUL HAPID', '201401015', '201401015', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(341, 'MUHAMMAD REZA', '201409124', '201409124', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(342, 'BIMA SATRIA', '201601004', '201601004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(343, 'DHARMANTO RAKSIKA', '201108145', '201108145', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(344, 'SUNAN MAGEFIRATULLAH', '201506052', '201506052', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(345, 'REXOKSA OKTAVIANUS PRINST', '201510068', '201510068', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(346, 'YURIDYO', '201512074', '201512074', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(347, 'HYATT ALDRIN LOURIANDONO', '201706058', '201706058', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(348, 'YUSUF ARDHIANTO', '201401009', '201401009', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(349, 'GALIH ERKI BASUKI', '201601005', '201601005', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(350, 'DIMAS AJIE FACHRUDIN', '201601007', '201601007', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(351, 'DICKY CANDRA TOBER', '201607047', '201607047', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(352, 'KEVIN BRASALI WIRYAATMAJA', '201702024', '201702024', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(353, 'APRIYANDO HAGANTA SINGARIMBUN', '201702025', '201702025', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(354, 'ANGGIT FASYAMTAMA', '201804089', '201804089', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(355, 'RANDY BETA FRISANDY', '201804100', '201804100', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(356, 'CHRIS ANTHONY', '201804101', '201804101', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(357, 'ARI GUNAWAN', '201303045', '201303045', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(358, 'NUR SAEPUDIN', '201401006', '201401006', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(359, 'ANDI QISWANTO', '201403075', '201403075', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(360, 'YUGO ARIANTO WIBOWO', '201401017', '201401017', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(361, 'BELLA SAFVIRA', '201707063', '201707063', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(362, 'CHANDRADITYA ARIDELA', '201707061', '201707061', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(363, 'HENDRO PRATOMO', '200711134', '200711134', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(364, 'M. SIRAJ AMRULLAH', '201206065', '201206065', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(365, 'IRVA AINI', '201504037', '201504037', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(366, 'EMERAL SAKINAH', '201708062', '201708062', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(367, 'DODY REAGEN FRANSSEDA', '201606043', '201606043', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(368, 'AMIRULLOH', '201607048', '201607048', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(369, 'IMRON ROSADI', '201608056', '201608056', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(370, 'BAMBANG FAJARYANTO', '201608055', '201608055', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(371, 'AZWAR ANAS', '201608066', '201608066', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(372, 'HENDRA RUMAMPUK', 'MINAHASA 1', 'MINAHASA 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(373, 'SUPRIYADI LUTEMADI', 'MINAHASA 2', 'MINAHASA 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(374, 'VALLLEN CHRISTIAN M', 'MINAHASA 3', 'MINAHASA 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(375, 'BRENLY SUNDIAH', 'MINAHASA 4', 'MINAHASA 4', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(376, 'YANUAR ARDI SETIAWAN', '201802006', '201802006', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(377, 'ARIE SUBIYANTO', '201401021', '201401021', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(378, 'RAJA DESTIAN', '201608062', '201608062', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(379, 'HERMANSYAH', '201608063', '201608063', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(380, 'SHENDIKO BASRI', '201608064', '201608064', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(381, 'VOLMAN FERRY PRANTO', '201706056', '201706056', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(382, 'DARWIN MANALU', '201706057', '201706057', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(383, 'M RIDHO KURNIAWAN', '201401007', '201401007', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(384, 'ABDULLAH AZIZ', '201502011', '201502011', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(385, 'M. ILHAM NURAMDAN', '201401004', '201401004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(386, 'SAKTI RONI MARULI SITINDAON', '201405088', '201405088', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(387, 'YOWIES LINTAR', '201505041', '201505041', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(388, 'MUHAMMAD RIFQI', '201804102', '201804102', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(389, 'NOVIALDY NUGROHO SANTOSO', '201809155', '201809155', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(390, 'RAFI AZIZ', '201809157', '201809157', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(391, 'HADIST ISRA', '201303054', '201303054', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(392, 'GILANG ADITYA', '201401008', '201401008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(393, 'MUHAMAD HAFIDZ RYANSYAH', '201504035', '201504035', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(394, 'MUHAMMAD AHSAN ', '700668', '700668', 'MALE', 'ISLAM', 'SALATIGA', '10/19/1970', 'KARYAWAN TETAP', 'JAKARTA', 'II', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '02129952300', 'CLUSTER FESTIVE GARDEN AG05/25, KOMPLEX GRAND WISATA ', 'BEKASI', 'JAWA BARAT', 'INDONESIA', '17510', '081210126674', 'ahsan@telin.co.id', ''),
(395, 'AMALIA CITRA LESTARI', '945426', '945426', 'FEMALE', 'ISLAM', 'TANGERANG', '4/15/1994', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '02129952300', 'KOMPLEK BAPPENAS KAV. A109 KEDAUNG SAWANGAN', 'DEPOK', 'JAWA BARAT', 'INDONESIA', '16516', '085885681351', 'amalia.citra@telin.co.id', ''),
(396, 'SOVI SAVIRA MIFTAH', '945427', '945427', 'FEMALE', 'ISLAM', 'BLITAR', '6/6/1994', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '02129952300', 'JL SUREN NO.49 PLOSOKEREP', 'BLITAR', 'JAWA TIMUR', 'INDONESIA', '66134', '085259846060', 'sovi.savira@telin.co.id', ''),
(397, 'RATIH MAULIDINA', '945428', '945428', 'FEMALE', 'ISLAM', 'MEDAN', '8/22/1994', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '02129952300', 'JL KAMPER BLOK M-2 BUDI AGUNG KECAMATAN TANAH SAREAL SUKADAMAI', 'BOGOR', 'JAWA BARAT', 'INDONESIA', '16161', '081286852122', 'ratih.ratih@telin.co.id', ''),
(398, 'NINDYA TISA GHASSANI', '965093', '965093', 'FEMALE', 'ISLAM', 'BATAM', '5/21/1996', 'KARYAWAN KONTRAK', 'JAKARTA', 'V', 'TELKOM LANDMARK TOWER , TOWER 2 , 16th - 17th FLOOR . JL JEND GATOT SUBROTO KAV. 52 JAKARTA', 'JAKARTA SELATAN', 'DKI JAKARTA', '12710', '02129952300', 'JL MARGONDA RAYA GG. H ATAN NO 115 RT 04/12 KEMIRI MUKA BEIJI', 'DEPOK', 'JAWAN BARAT', 'INDONESIA', '16423', '081315992708', 'nindya.tisa@telin.co.id', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_position`
--

CREATE TABLE `employee_position` (
  `ep_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `pos_id` int(11) DEFAULT NULL,
  `emp_id_atasan` int(11) DEFAULT NULL,
  `pos_id_atasan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_position`
--

INSERT INTO `employee_position` (`ep_id`, `emp_id`, `pos_id`, `emp_id_atasan`, `pos_id_atasan`) VALUES
(1, 1, 15311, 0, 15308),
(2, 2, 15101, 0, 15001),
(3, 3, 12301, 0, 121),
(4, 4, 15313, 0, 15301),
(5, 5, 15009, 0, 15006),
(6, 6, 13206, 0, 13205),
(7, 7, 17104, 0, 17101),
(8, 8, 17404, 0, 17402),
(9, 9, 16102, 0, 16101),
(10, 10, 15206, 0, 15205),
(11, 11, 10306, 0, 10305),
(12, 12, 14308, 0, 14301),
(13, 13, 11103, 0, 11102),
(14, 14, 11101, 0, 111),
(15, 14, 11201, 0, 111),
(16, 15, 17205, 0, 17201),
(17, 16, 17102, 0, 17101),
(18, 17, 15309, 0, 15308),
(19, 18, 17403, 0, 17402),
(20, 19, 15003, 0, 15002),
(21, 20, 15304, 0, 15302),
(22, 21, 1604, 0, 1602),
(23, 22, 17205, 0, 17201),
(24, 23, 11509, 0, 11506),
(25, 24, 13202, 0, 13201),
(26, 25, 12202, 0, 12201),
(27, 26, 17304, 0, 17301),
(28, 27, 15403, 0, 15402),
(29, 28, 15102, 0, 15101),
(30, 29, 10507, 0, 10506),
(31, 30, 11402, 0, 11401),
(32, 31, 13208, 0, 13201),
(33, 32, 10505, 0, 10502),
(34, 33, 15210, 0, 15208),
(35, 34, 17417, 0, 17416),
(36, 35, 15205, 0, 15201),
(37, 36, 17104, 0, 17101),
(38, 37, 1607, 0, 1601),
(39, 38, 1401, 0, 101),
(40, 38, 14301, 0, 1401),
(41, 39, 15209, 0, 15208),
(42, 40, 13209, 0, 13208),
(43, 41, 11411, 0, 11407),
(44, 42, 13106, 0, 13101),
(45, 43, 15303, 0, 15302),
(46, 44, 13108, 0, 13106),
(47, 45, 10404, 0, 10401),
(48, 46, 12209, 0, 12201),
(49, 47, 12207, 0, 12205),
(50, 48, 13116, 0, 13113),
(51, 49, 11401, 0, 111),
(52, 50, 11413, 0, 11412),
(53, 51, 1701, 0, 131),
(54, 52, 11518, 0, 11501),
(55, 53, 17102, 0, 17101),
(56, 54, 11517, 0, 11514),
(57, 55, 12307, 0, 12305),
(58, 56, 11202, 0, 11201),
(59, 57, 16101, 0, 131),
(60, 58, 10401, 0, 101),
(61, 59, 12109, 0, 12107),
(62, 60, 14313, 0, 14311),
(63, 61, 131, 0, 101),
(64, 62, 10209, 0, 10206),
(65, 63, 17202, 0, 17201),
(66, 64, 13303, 0, 13301),
(67, 65, 12102, 0, 12101),
(68, 66, 11208, 0, 11207),
(69, 67, 12203, 0, 12202),
(70, 68, 11403, 0, 11402),
(71, 69, 11305, 0, 11301),
(72, 70, 15406, 0, 15405),
(73, 71, 15402, 0, 15001),
(74, 72, 11203, 0, 11202),
(75, 73, 13102, 0, 13101),
(76, 75, 13113, 0, 13101),
(77, 76, 11315, 0, 11313),
(78, 77, 15410, 0, 15408),
(79, 78, 14202, 0, 14201),
(80, 79, 13114, 0, 13113),
(81, 81, 17302, 0, 17301),
(82, 82, 11313, 0, 11301),
(83, 83, 14205, 0, 14201),
(84, 83, 11412, 0, 11401),
(85, 84, 10204, 0, 10202),
(86, 85, 14101, 0, 1401),
(87, 86, 1608, 0, 1607),
(88, 87, 11110, 0, 11109),
(89, 88, 15308, 0, 15301),
(90, 89, 17106, 0, 17101),
(91, 90, 12101, 0, 121),
(92, 91, 11421, 0, 11401),
(93, 92, 13110, 0, 13101),
(94, 93, 14302, 0, 14301),
(95, 94, 10113, 0, 10101),
(96, 95, 11506, 0, 11501),
(97, 96, 15002, 0, 15001),
(98, 97, 12118, 0, 12116),
(99, 98, 1603, 0, 1602),
(100, 99, 15108, 0, 15106),
(101, 100, 15114, 0, 15113),
(102, 101, 15309, 0, 15308),
(103, 102, 101, 0, 0),
(104, 103, 1609, 0, 1607),
(105, 104, 12107, 0, 12101),
(106, 105, 15204, 0, 15202),
(107, 106, 11521, 0, 11518),
(108, 107, 12214, 0, 12213),
(109, 108, 15004, 0, 15002),
(110, 109, 15311, 0, 15308),
(111, 110, 17413, 0, 17412),
(112, 111, 17202, 0, 17201),
(113, 112, 12115, 0, 12112),
(114, 113, 15007, 0, 15006),
(115, 114, 17104, 0, 17101),
(116, 115, 10210, 0, 101),
(117, 116, 11112, 0, 11101),
(118, 117, 15112, 0, 15110),
(119, 118, 17105, 0, 17101),
(120, 119, 12211, 0, 12209),
(121, 120, 14103, 0, 14102),
(122, 121, 15318, 0, 15316),
(123, 122, 13107, 0, 13106),
(124, 123, 15106, 0, 15101),
(125, 124, 10202, 0, 10201),
(126, 125, 15007, 0, 15006),
(127, 126, 11612, 0, 11611),
(128, 127, 11510, 0, 11501),
(129, 128, 15006, 0, 15001),
(130, 129, 17101, 0, 1701),
(131, 130, 10305, 0, 10301),
(132, 131, 12116, 0, 12101),
(133, 132, 15401, 0, 15001),
(134, 133, 15317, 0, 15316),
(135, 134, 11611, 0, 11601),
(136, 135, 13105, 0, 13102),
(137, 136, 16104, 0, 16101),
(138, 137, 14305, 0, 14301),
(139, 138, 14207, 0, 14205),
(140, 139, 11606, 0, 11608),
(141, 140, 11407, 0, 11401),
(142, 141, 15115, 0, 15113),
(143, 142, 11514, 0, 11501),
(144, 143, 15314, 0, 15313),
(145, 144, 16205, 0, 16201),
(146, 145, 13109, 0, 13106),
(147, 146, 13301, 0, 131),
(148, 147, 13305, 0, 13302),
(149, 148, 15202, 0, 15201),
(150, 149, 15316, 0, 15301),
(151, 151, 11605, 0, 11601),
(152, 154, 17419, 0, 17416),
(153, 155, 17201, 0, 131),
(154, 155, 17301, 0, 131),
(155, 156, 17402, 0, 17401),
(156, 157, 15318, 0, 15316),
(157, 158, 10101, 0, 101),
(158, 159, 15110, 0, 15101),
(159, 160, 11408, 0, 11407),
(160, 161, 10502, 0, 10501),
(161, 162, 111, 0, 101),
(162, 163, 11422, 0, 11421),
(163, 164, 16104, 0, 16101),
(164, 165, 12112, 0, 12101),
(165, 166, 10212, 0, 10210),
(166, 167, 16201, 0, 131),
(167, 168, 15113, 0, 15101),
(168, 169, 13204, 0, 13202),
(169, 170, 10206, 0, 101),
(170, 171, 11108, 0, 11106),
(171, 172, 11315, 0, 11313),
(172, 173, 10204, 0, 10202),
(173, 174, 11310, 0, 11305),
(174, 175, 13111, 0, 13110),
(175, 176, 10103, 0, 10102),
(176, 177, 15408, 0, 15001),
(177, 178, 16202, 0, 16201),
(178, 179, 12302, 0, 12301),
(179, 180, 14207, 0, 14208),
(180, 181, 11310, 0, 11305),
(181, 182, 11601, 0, 111),
(182, 183, 10310, 0, 10308),
(183, 184, 10511, 0, 10509),
(184, 185, 10501, 0, 101),
(185, 186, 15410, 0, 15408),
(186, 187, 13404, 0, 13402),
(187, 188, 16106, 0, 16101),
(188, 189, 121, 0, 101),
(189, 190, 11505, 0, 11502),
(190, 191, 1601, 0, 131),
(191, 192, 13407, 0, 13405),
(192, 193, 17302, 0, 17301),
(193, 194, 12311, 0, 12309),
(194, 195, 15104, 0, 15102),
(195, 196, 12309, 0, 12301),
(196, 197, 13409, 0, 13408),
(197, 198, 11106, 0, 11101),
(198, 200, 1604, 0, 1602),
(199, 201, 13401, 0, 131),
(200, 202, 12106, 0, 12102),
(201, 204, 10403, 0, 10401),
(202, 205, 15208, 0, 15201),
(203, 206, 10109, 0, 10107),
(204, 207, 10201, 0, 101),
(205, 208, 11104, 0, 11102),
(206, 209, 10111, 0, 10110),
(207, 210, 10208, 0, 10206),
(208, 211, 17404, 0, 17402),
(209, 212, 12201, 0, 121),
(210, 213, 11603, 0, 11602),
(211, 214, 15301, 0, 15001),
(212, 215, 11111, 0, 11109),
(213, 216, 14102, 0, 14101),
(214, 217, 11310, 0, 11305),
(215, 218, 11513, 0, 11510),
(216, 219, 11301, 0, 111),
(217, 220, 14310, 0, 14308),
(218, 221, 11608, 0, 11601),
(219, 222, 17104, 0, 17101),
(220, 223, 11115, 0, 11112),
(221, 224, 13101, 0, 131),
(222, 225, 11204, 0, 11202),
(223, 226, 11113, 0, 11112),
(224, 227, 12205, 0, 12201),
(225, 228, 13405, 0, 13401),
(226, 229, 11109, 0, 11101),
(227, 230, 13402, 0, 13401),
(228, 231, 17401, 0, 131),
(229, 232, 11208, 0, 11207),
(230, 233, 15201, 0, 15001),
(231, 234, 11606, 0, 11605),
(232, 235, 11502, 0, 11501),
(233, 236, 11206, 0, 11202),
(234, 237, 11418, 0, 11417),
(235, 238, 11303, 0, 11302),
(236, 239, 11207, 0, 11201),
(237, 240, 1602, 0, 1601),
(238, 241, 10301, 0, 101),
(239, 242, 15001, 0, 121),
(240, 243, 10509, 0, 10501),
(241, 244, 1604, 0, 1602),
(242, 245, 11419, 0, 11417),
(243, 246, 14201, 0, 1401),
(244, 248, 13305, 0, 13302),
(245, 249, 15302, 0, 15301),
(246, 250, 12207, 0, 12205),
(247, 251, 15108, 0, 15105),
(248, 252, 11107, 0, 11106),
(249, 254, 10108, 0, 10107),
(250, 255, 15105, 0, 15101),
(251, 256, 15004, 0, 15002),
(252, 257, 13201, 0, 131),
(253, 258, 11602, 0, 11601),
(254, 259, 15203, 0, 15202),
(255, 260, 16202, 0, 16201),
(256, 261, 13302, 0, 13301),
(257, 262, 15009, 0, 15006),
(258, 263, 10110, 0, 10101),
(259, 264, 12306, 0, 12305),
(260, 265, 15207, 0, 15205),
(261, 267, 10302, 0, 10301),
(262, 268, 14203, 0, 14202),
(263, 269, 16102, 0, 16101),
(264, 270, 11613, 0, 11611),
(265, 271, 13104, 0, 13102),
(266, 272, 11516, 0, 11514),
(267, 273, 12113, 0, 12112),
(268, 274, 10106, 0, 10102),
(269, 0, 1402, 0, 1401),
(270, 0, 10402, 0, 10401),
(271, 0, 11501, 0, 111),
(272, 275, 17104, 0, 17102),
(273, 276, 17207, 0, 17301),
(274, 277, 17208, 0, 17301),
(275, 278, 11116, 0, 11106),
(276, 279, 11117, 0, 11109),
(277, 280, 10217, 0, 10202),
(278, 283, 10218, 0, 10202),
(279, 284, 10219, 0, 10202),
(280, 286, 10220, 0, 10202),
(281, 281, 10214, 0, 10202),
(282, 282, 10215, 0, 10202),
(283, 287, 10216, 0, 10202),
(284, 285, 10213, 0, 10202),
(285, 288, 15011, 0, 15006),
(286, 289, 11522, 0, 11514),
(287, 290, 12316, 0, 12309),
(288, 291, 10311, 0, 10305),
(289, 292, 10117, 0, 10101),
(290, 293, 16206, 0, 16201),
(291, 294, 16207, 0, 16201),
(292, 295, 15116, 0, 15113),
(293, 296, 13411, 0, 13402),
(294, 297, 13412, 0, 13405),
(295, 304, 11615, 0, 11611),
(296, 314, 11616, 0, 11611),
(297, 320, 11617, 0, 10110),
(298, 321, 11618, 0, 11608),
(299, 298, 11638, 0, 11611),
(300, 300, 11639, 0, 11611),
(301, 307, 11640, 0, 11611),
(302, 315, 11641, 0, 15113),
(303, 316, 11642, 0, 15113),
(304, 299, 11623, 0, 11611),
(305, 301, 11624, 0, 11611),
(306, 302, 11625, 0, 11611),
(307, 303, 11626, 0, 11611),
(308, 306, 11627, 0, 11611),
(309, 309, 11628, 0, 11611),
(310, 310, 11629, 0, 11611),
(311, 311, 11630, 0, 11611),
(312, 312, 11631, 0, 11611),
(313, 313, 11632, 0, 11611),
(314, 317, 11633, 0, 15113),
(315, 318, 11634, 0, 15113),
(316, 319, 11635, 0, 15113),
(317, 308, 11616, 0, 11611),
(318, 305, 11622, 0, 11611),
(319, 322, 13214, 0, 13201),
(320, 323, 17420, 0, 17402),
(321, 324, 17421, 0, 17402),
(322, 325, 17422, 0, 17401),
(323, 327, 11424, 0, 11421),
(324, 328, 11425, 0, 11401),
(325, 326, 11426, 0, 11412),
(326, 329, 10221, 0, 1601),
(327, 330, 15320, 0, 15313),
(328, 331, 15321, 0, 15313),
(329, 332, 15322, 0, 15313),
(330, 333, 15323, 0, 15308),
(331, 334, 15324, 0, 15308),
(332, 335, 15325, 0, 15308),
(333, 336, 15326, 0, 15308),
(334, 337, 15327, 0, 15316),
(335, 338, 15328, 0, 15316),
(336, 339, 15329, 0, 15316),
(337, 340, 15330, 0, 15302),
(338, 341, 15331, 0, 15302),
(339, 342, 15332, 0, 15302),
(340, 343, 15412, 0, 15402),
(341, 344, 15413, 0, 15402),
(342, 345, 15414, 0, 15402),
(343, 346, 15415, 0, 15402),
(344, 347, 15416, 0, 15402),
(345, 348, 15417, 0, 15408),
(346, 349, 15418, 0, 15408),
(347, 350, 15419, 0, 15408),
(348, 351, 15420, 0, 15408),
(349, 352, 15421, 0, 15408),
(350, 353, 15422, 0, 15408),
(351, 354, 15423, 0, 15408),
(352, 355, 15424, 0, 15408),
(353, 356, 15425, 0, 15408),
(354, 357, 12119, 0, 12102),
(355, 358, 12120, 0, 12112),
(356, 359, 12317, 0, 12301),
(357, 360, 12318, 0, 15113),
(358, 361, 15117, 0, 15113),
(359, 362, 15118, 0, 15113),
(360, 363, 15119, 0, 15105),
(361, 364, 12216, 0, 12202),
(362, 365, 12217, 0, 12209),
(363, 366, 12218, 0, 12209),
(364, 367, 12219, 0, 12201),
(365, 368, 11644, 0, 11611),
(366, 369, 11645, 0, 11611),
(367, 370, 11620, 0, 11611),
(368, 371, 11646, 0, 11611),
(369, 372, 11647, 0, 15006),
(370, 373, 11648, 0, 15006),
(371, 374, 11649, 0, 15006),
(372, 375, 11650, 0, 15006),
(373, 376, 15009, 0, 15006),
(374, 377, 15009, 0, 15002),
(375, 378, 15009, 0, 15002),
(376, 379, 15009, 0, 15002),
(377, 380, 15009, 0, 15002),
(378, 381, 15009, 0, 15002),
(379, 382, 15009, 0, 15002),
(380, 383, 15214, 0, 15205),
(381, 384, 15215, 0, 15205),
(382, 385, 15216, 0, 15202),
(383, 386, 15217, 0, 15202),
(384, 387, 15218, 0, 15202),
(385, 388, 15219, 0, 15202),
(386, 389, 15220, 0, 15202),
(387, 390, 15221, 0, 15202),
(388, 391, 15222, 0, 15208),
(389, 392, 15223, 0, 15208),
(390, 393, 15224, 0, 15208),
(391, 394, 10402, 0, 10401),
(392, 395, 14307, 0, 14305),
(393, 396, 14310, 0, 14308),
(394, 397, 14304, 0, 14302),
(395, 398, 10512, 0, 10502);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `menu_order` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `display_menu` char(1) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `code`, `parent`, `menu_order`, `created_at`, `updated_at`, `display_menu`, `process_id`, `icon`) VALUES
(16, 'knowledge/all?publish=active', NULL, 7, NULL, NULL, '1', 1, 'fa fa-book'),
(15, 'tag/index', NULL, 16, NULL, NULL, '1', 0, 'fa fa-tags'),
(4, 'knowledge/add', NULL, 11, NULL, NULL, '1', 0, 'fa fa-plus-circle'),
(11, 'knowledge/add', NULL, 12, NULL, NULL, '1', 0, 'fa fa-plus-circle'),
(13, 'monitoring/index?approval=active', NULL, 14, NULL, NULL, '1', 0, 'fa fa-desktop'),
(14, 'knowledge/index?publish=active', NULL, 15, NULL, NULL, '1', 0, 'fa fa-book'),
(12, 'draft', NULL, 13, NULL, NULL, '1', 0, 'fa fa-save'),
(5, 'dashboard', NULL, 10, NULL, NULL, '1', 0, 'fa fa-search'),
(6, 'category', NULL, 6, NULL, NULL, '1', 1, 'fa fa-search'),
(7, 'category/mgt', NULL, 5, NULL, NULL, '1', 1, 'fa fa-briefcase '),
(3, 'user', 1, 3, NULL, NULL, '0', 1, NULL),
(2, 'user/add', 1, 2, NULL, NULL, '0', 1, NULL),
(17, 'profile/profile', NULL, 19, NULL, NULL, '1', 0, 'fa fa-user'),
(1, 'user', NULL, 1, NULL, NULL, '1', 1, 'fa fa-users'),
(8, 'profile/index', NULL, 4, NULL, NULL, '1', 1, 'fa fa-user'),
(18, 'log/index', NULL, 8, NULL, NULL, '1', 1, 'fa fa-exchange '),
(19, 'knowledge/bookmark', NULL, 18, NULL, NULL, '1', 0, 'fa fa-bookmark ');

-- --------------------------------------------------------

--
-- Table structure for table `job_i18n`
--

CREATE TABLE `job_i18n` (
  `NAME` varchar(64) NOT NULL,
  `CULTURE` varchar(7) NOT NULL DEFAULT 'en',
  `ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_i18n`
--

INSERT INTO `job_i18n` (`NAME`, `CULTURE`, `ID`) VALUES
('Employee Data', 'en', 1),
('Preview', 'en', 10),
('Add User', 'en', 2),
('List user', 'en', 3),
('User Management', 'en', 8),
('Department', 'en', 9),
('Category', 'en', 7),
('Search By Kategori', 'en', 6),
('Search', 'en', 5),
('My Profile', 'en', 17),
('Input Knowledge', 'en', 11),
('Draft Knowledge', 'en', 12),
('Monitoring', 'en', 13),
('My Knowledge', 'en', 14),
('Tag', 'en', 15),
('Knowledges', 'en', 16),
('Log Access', 'en', 18),
('My Bookmark', 'en', 19);

-- --------------------------------------------------------

--
-- Table structure for table `knowledge`
--

CREATE TABLE `knowledge` (
  `k_id` int(11) NOT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(11) NOT NULL,
  `data_status` varchar(45) NOT NULL,
  `access_permission` varchar(45) NOT NULL,
  `hits` int(11) DEFAULT NULL,
  `hc_policy` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `pin` int(11) DEFAULT '0',
  `knowledge_status` varchar(45) DEFAULT NULL,
  `thumbnail` varchar(200) DEFAULT NULL,
  `slider` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `knowledge`
--

INSERT INTO `knowledge` (`k_id`, `ref_id`, `c_id`, `user_id`, `title`, `description`, `content`, `start_date`, `end_date`, `status`, `data_status`, `access_permission`, `hits`, `hc_policy`, `comment`, `pin`, `knowledge_status`, `thumbnail`, `slider`) VALUES
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05 22:24:36', '0000-00-00 00:00:00', '1', 'INBOX', 'PUBLIC', 29, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11 16:21:09', '0000-00-00 00:00:00', '1', 'INBOX', '3', 11, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(3, NULL, 0, 196, 'Contoh saja', 'OK', '<p>OK</p>\r\n', '2018-12-11 17:33:50', '0000-00-00 00:00:00', '1', 'INBOX', 'FITA', 12, 'NO', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(4, NULL, 0, 115, 'KM TYPE OPTION, DIRECT ACCESS YES, ATTACHMENT REQUEST YES', 'Test', '<p>Test</p>\r\n', '2018-12-14 06:17:47', '0000-00-00 00:00:00', '1', 'INBOX', 'PUBLIC', 6, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(5, NULL, 0, 115, 'Coba Approval All', 'Test Bro', '<p>Test Bro</p>\r\n', '2018-12-14 07:45:45', '0000-00-00 00:00:00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(6, NULL, 0, 115, 'asdf', 'a', '<p>a</p>\r\n', '2018-12-14 07:53:42', '0000-00-00 00:00:00', '1', 'INBOX', 'PUBLIC', 3, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(7, NULL, 0, 115, 'Bagus Pisan', 'OK', '<p>OK</p>\r\n', '2018-12-14 07:56:12', '0000-00-00 00:00:00', '1', 'INBOX', 'FITA', 10, 'NO', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(8, NULL, 0, 115, 'Approval ALL', 'OK', '<p>OK</p>\r\n', '2018-12-14 10:17:04', '0000-00-00 00:00:00', '1', 'INBOX', 'PUBLIC', 1, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(9, NULL, 0, 115, 'Test lgi yaaa', 'asd', '<p>asd</p>\r\n', '2018-12-14 10:27:58', '0000-00-00 00:00:00', '1', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14 10:33:10', '0000-00-00 00:00:00', '1', 'INBOX', 'PUBLIC', 15, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(13, NULL, 0, 196, 'coba input question', 'OK', '<p>OK</p>\r\n', '2018-12-17 15:53:53', '0000-00-00 00:00:00', 'DRAFT', 'INBOX', '36', 1, NULL, 'ON', 0, 'PUBLISH', NULL, NULL),
(14, NULL, 0, 196, 'Private', 'OK', '<p>OK</p>\r\n', '2018-12-17 16:47:44', '0000-00-00 00:00:00', 'DRAFT', 'INBOX', '', 0, NULL, 'ON', 0, 'PUBLISH', NULL, NULL),
(15, NULL, 0, 196, 'Test Return and Draft', 'OK', '<p>OK</p>\r\n', '2018-12-17 16:56:01', '0000-00-00 00:00:00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb3_Test_test_ttes_asdfa-sdf-as-dfa-sd-fa-sdf-as-dfasdfasdf-asdf.png', NULL),
(16, NULL, 0, 196, 'ASD', 'ok', '<p>ko</p>\r\n', '2018-12-17 17:04:00', '0000-00-00 00:00:00', 'DRAFT', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(17, NULL, 0, 196, 'Coba Lagi dikirim ke draft', 'Ok', '<p>OK</p>\r\n', '2018-12-17 17:10:16', '0000-00-00 00:00:00', 'DRAFT', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(18, NULL, 0, 196, 'Coba Lagi dikirim ke draft', 'Ok', '<p>OK</p>\r\n', '2018-12-17 17:12:55', '0000-00-00 00:00:00', '-2', 'INBOX', 'PUBLIC', 0, NULL, 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(19, NULL, 0, 196, 'Finish Draft Issue', 'Ok', '<p>Ok</p>\r\n', '2018-12-17 17:24:51', '0000-00-00 00:00:00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(20, NULL, 0, 196, 'Coba Complex monitoring', 'coba sya balikin lagi', '<p>aja yaaa</p>\r\n', '2018-12-18 18:46:27', '0000-00-00 00:00:00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(21, NULL, 0, 196, 'Draft bisa yaa', 'Bismillah', '<p>Bismillah</p>\r\n', '2018-12-19 09:28:51', '0000-00-00 00:00:00', 'DRAFT', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'Screen Shot 2018-12-18 at 15.57.46.png', NULL),
(23, NULL, 0, 196, 'test', 'Ok', '<p>Ok</p>\r\n', '2018-12-20 13:43:25', '0000-00-00 00:00:00', '1', 'INBOX', 'PUBLIC', 1, 'NO', 'ON', 0, 'PUBLISH', NULL, NULL),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23 14:43:05', '0000-00-00 00:00:00', '1', 'INBOX', 'PUBLIC', 6, 'NO', 'ON', 1, 'PUBLISH', '115-garuda.jpg', '196-retrieve-file-from-removable-drive-banner.jpeg'),
(25, NULL, 0, 196, 'Coba Gambar', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p>Oke</p>\r\n', '2018-12-27 11:28:26', '0000-00-00 00:00:00', '1', 'INBOX', 'PUBLIC', 35, 'NO', 'ON', 1, 'PUBLISH', '196-2018-12-20 11.00.07.jpg', '196-Screen Shot 2018-12-26 at 11.52.10.png'),
(28, NULL, 0, 196, 'Test', 'OK Bro Ok', '<p>Bla Bla</p>\r\n', '2019-01-03 09:59:51', '0000-00-00 00:00:00', 'DRAFT', 'INBOX', 'Choose Access ..', 0, NULL, 'ON', 0, 'PUBLISH', NULL, NULL),
(29, NULL, 0, 196, 'Yang kedua', 'yang kedua', '<p>test</p>\r\n', '2019-01-03 10:00:47', '0000-00-00 00:00:00', 'DRAFT', 'INBOX', '', 0, NULL, 'ON', 0, 'PUBLISH', NULL, NULL),
(30, NULL, 0, 1, 'Coba 1', 'Coba 1', '<p>Coba 1</p>\r\n', '2019-01-03 10:04:25', '0000-00-00 00:00:00', 'DRAFT', 'INBOX', '', 0, NULL, 'ON', 0, 'PUBLISH', NULL, NULL),
(31, NULL, 0, 1, 'Coba 2', 'Coba 2', '<p>Coba 2</p>\r\n', '2019-01-03 10:04:43', '0000-00-00 00:00:00', 'DRAFT', 'INBOX', '', 0, NULL, 'ON', 0, 'PUBLISH', NULL, NULL),
(32, NULL, 0, 270, 'Coba Draft 1', 'Coba Draft 1', '<p>Coba Draft 1</p>\r\n', '2019-01-03 10:06:53', '0000-00-00 00:00:00', 'DRAFT', 'INBOX', '', 0, NULL, 'ON', 0, 'PUBLISH', NULL, NULL),
(33, NULL, 0, 270, 'Coba Draft 2', 'Coba Draft 2', '<p>Coba Draft 2</p>\r\n', '2019-01-03 10:07:15', '0000-00-00 00:00:00', 'DRAFT', 'INBOX', '', 0, NULL, 'ON', 0, 'PUBLISH', NULL, NULL),
(34, NULL, 0, 270, 'Draft 3', 'Draft 3', '<p>Draft 3</p>\r\n', '2019-01-03 10:08:01', '0000-00-00 00:00:00', 'DRAFT', 'INBOX', '', 0, NULL, 'ON', 0, 'PUBLISH', NULL, NULL),
(35, NULL, 0, 196, 'Coba Upload File telin', 'OK', '<p>OK</p>\r\n', '2019-01-03 14:41:07', '0000-00-00 00:00:00', '-2', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 0, 'PUBLISH', '2018-11-28 10.20.01.jpg', NULL),
(36, NULL, 0, 196, 'a', 'ok', '<p>ok</p>\r\n', '2019-01-03 15:02:53', '0000-00-00 00:00:00', '-2', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 0, 'PUBLISH', 'fast-food.png', NULL),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04 08:56:16', '0000-00-00 00:00:00', '1', 'INBOX', '3', 12, 'NO', 'ON', 0, 'PUBLISH', '115-garuda.jpg', NULL),
(38, NULL, 0, 196, 'Coba Private Yaaaa', 'Ok Ok Saja yaa', '<p>Ok Test Lgi</p>\r\n', '2019-01-08 16:14:50', '0000-00-00 00:00:00', '1', 'INBOX', 'PRIVATE', 1, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(39, NULL, 0, 196, 'test saveaja', '', '', '2019-01-08 16:02:50', '0000-00-00 00:00:00', 'DRAFT', 'INBOX', '', 0, NULL, 'ON', 0, 'PUBLISH', NULL, NULL),
(40, NULL, 0, 115, 'Private terbanyak', 'Test', '<p>Test</p>\r\n', '2019-01-08 16:19:32', '0000-00-00 00:00:00', '3', 'INBOX', 'PRIVATE', 0, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(41, NULL, 0, 196, 'Test Point', 'Ok', '<p>OK</p>\r\n', '2019-01-10 12:31:40', '0000-00-00 00:00:00', '-2', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 0, 'PUBLISH', NULL, NULL),
(42, NULL, 0, 115, 'Contoh Private', 'Ok', '<p>Ok</p>\r\n', '2019-01-10 12:45:23', '0000-00-00 00:00:00', '-2', 'INBOX', 'PRIVATE', 0, 'NO', 'ON', 0, 'PUBLISH', NULL, NULL),
(43, NULL, 0, 196, 'Contoh Loading', 'Ok', '<p>Ok</p>\r\n', '2019-01-10 12:52:09', '0000-00-00 00:00:00', '1', 'INBOX', 'PRIVATE', 0, 'NO', 'ON', 1, 'PUBLISH', NULL, '115-illustration-tt-width-1200-height-300-crop-1.jpg'),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15 09:28:58', '0000-00-00 00:00:00', '1', 'INBOX', 'PUBLIC', 3, 'NO', 'ON', 1, 'PUBLISH', '115-illustration-tt-width-1200-height-300-crop-1.jpg', '115-information_green.png');

--
-- Triggers `knowledge`
--
DELIMITER $$
CREATE TRIGGER `knowledge_history` AFTER UPDATE ON `knowledge` FOR EACH ROW BEGIN
	if NEW.status != "DRAFT" THEN
  INSERT INTO knowledge_history
        (
            k_id,
            ref_id,
            c_id,
            user_id,
            title,
            description,
            content,
            start_date,
            end_date,
            status,
            data_status,
            access_permission,
            hits,
            hc_policy,
            comment,
            pin,
            knowledge_status,
            thumbnail,
            slider
        )
  VALUES
        (       
            OLD.k_id,
            OLD.ref_id,
            OLD.c_id,
            OLD.user_id,
            OLD.title,
            OLD.description,
            OLD.content,
            OLD.start_date,
            OLD.end_date,
            OLD.status,
            OLD.data_status,
            OLD.access_permission,
            OLD.hits,
            OLD.hc_policy,
            OLD.comment,
            OLD.pin,
            OLD.knowledge_status,
            OLD.thumbnail,
            OLD.slider
        );
     END IF;
     
     IF OLD.hits != NEW.hits THEN
	INSERT INTO log
    (
        user_id,
        create_dtm,
        activity,
        host_name
    )
    VALUES
    (
        NEW.user_id,
        SYSDATE(),
        "DETAIL KNOWLEDGE",
        CONCAT("http://knowledge.mgt/knowledge/knowledgedetail?id=",NEW.k_id)
    );
    
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_detail`
--

CREATE TABLE `knowledge_detail` (
  `kd_id` int(11) NOT NULL,
  `k_id` int(11) NOT NULL,
  `xs1` varchar(200) NOT NULL,
  `xs2` varchar(200) NOT NULL,
  `xs3` varchar(200) NOT NULL,
  `xd1` datetime NOT NULL,
  `xd2` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `knowledge_detail`
--

INSERT INTO `knowledge_detail` (`kd_id`, `k_id`, `xs1`, `xs2`, `xs3`, `xd1`, `xd2`) VALUES
(1, 1, 'document', 'thumb2.jpg', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'document', 'thumb3_Test_test_ttes_asdfa-sdf-as-dfa-sd-fa-sdf-as-dfasdfasdf-asdf.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'document', 'thumb3_Test_test_ttes_asdfa-sdf-as-dfa-sd-fa-sdf-as-dfasdfasdf-asdf.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'document', 'thumb2.jpg', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'document', 'thumb1.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 2, 'document', 'thumb1.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 3, 'document', 'thumb1.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 4, 'document', 'thumb1.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 5, 'document', 'thumb2.jpg', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 7, 'document', 'thumb1.png', 'PRIVATE_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 9, 'document', 'thumb1.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 12, 'document', 'thumb1.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 11, 'document', 'thumb1.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 15, 'document', 'thumb1.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 17, 'document', 'thumb1.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 18, 'document', 'thumb1.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 19, 'document', 'thumb1.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 19, 'document', 'thumb1.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 20, 'document', 'thumb1.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 21, 'document', 'art_verify_photo.jpg', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 35, 'document', '[PD.172:2018] Telin Good Corporate Governance Code.pdf', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 38, 'document', '[PD.172:2018] Telin Good Corporate Governance Code.pdf', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 42, 'document', 'circle-shape.png', 'PUBLIC_FILE', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_history`
--

CREATE TABLE `knowledge_history` (
  `k_id` int(11) NOT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(11) NOT NULL,
  `data_status` varchar(45) NOT NULL,
  `access_permission` varchar(45) NOT NULL,
  `hits` int(11) DEFAULT NULL,
  `hc_policy` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `knowledge_status` varchar(45) DEFAULT NULL,
  `thumbnail` varchar(45) DEFAULT NULL,
  `slider` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `knowledge_history`
--

INSERT INTO `knowledge_history` (`k_id`, `ref_id`, `c_id`, `user_id`, `title`, `description`, `content`, `start_date`, `end_date`, `status`, `data_status`, `access_permission`, `hits`, `hc_policy`, `comment`, `pin`, `knowledge_status`, `thumbnail`, `slider`) VALUES
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 1, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 2, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 3, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 4, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 5, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 6, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL);
INSERT INTO `knowledge_history` (`k_id`, `ref_id`, `c_id`, `user_id`, `title`, `description`, `content`, `start_date`, `end_date`, `status`, `data_status`, `access_permission`, `hits`, `hc_policy`, `comment`, `pin`, `knowledge_status`, `thumbnail`, `slider`) VALUES
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 7, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11', '0000-00-00', '-2', 'INBOX', 'FITA', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 8, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 1, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(3, NULL, 0, 196, 'Contoh saja', 'OK', '<p>OK</p>\r\n', '2018-12-11', '0000-00-00', '-2', 'INBOX', 'FITA', 0, 'NO', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 9, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(3, NULL, 0, 196, 'Contoh saja', 'OK', '<p>OK</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 0, 'NO', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(3, NULL, 0, 196, 'Contoh saja', 'OK', '<p>OK</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 1, 'NO', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(4, NULL, 0, 115, 'KM TYPE OPTION, DIRECT ACCESS YES, ATTACHMENT REQUEST YES', 'Test', '<p>Test</p>\r\n', '2018-12-14', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(4, NULL, 0, 115, 'KM TYPE OPTION, DIRECT ACCESS YES, ATTACHMENT REQUEST YES', 'Test', '<p>Test</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(6, NULL, 0, 115, 'asdf', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(6, NULL, 0, 115, 'asdf', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(7, NULL, 0, 115, 'Bagus Pisan', 'OK', '<p>OK</p>\r\n', '2018-12-14', '0000-00-00', '-2', 'INBOX', 'FITA', 0, 'NO', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(7, NULL, 0, 115, 'Bagus Pisan', 'OK', '<p>OK</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'FITA', 0, 'NO', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(7, NULL, 0, 115, 'Bagus Pisan', 'OK', '<p>OK</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'FITA', 1, 'NO', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(8, NULL, 0, 115, 'Approval ALL', 'OK', '<p>OK</p>\r\n', '2018-12-14', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(9, NULL, 0, 115, 'Test lgi yaaa', 'asd', '<p>asd</p>\r\n', '2018-12-14', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 1, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 2, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 3, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 4, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(8, NULL, 0, 115, 'Approval ALL', 'OK', '<p>OK</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 5, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 6, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 7, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 8, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 9, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 10, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 11, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 12, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(7, NULL, 0, 115, 'Bagus Pisan', 'OK', '<p>OK</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'FITA', 2, 'NO', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(7, NULL, 0, 115, 'Bagus Pisan', 'OK', '<p>OK</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'FITA', 3, 'NO', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(7, NULL, 0, 115, 'Bagus Pisan', 'OK', '<p>OK</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'FITA', 4, 'NO', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(12, NULL, 0, 196, 'coba input question', 'OK', '<p>OK</p>\r\n', '2018-12-17', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(11, NULL, 0, 196, 'Private', 'OK', '<p>OK</p>\r\n', '2018-12-17', '0000-00-00', '-2', 'INBOX', 'PRIVATE', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(11, NULL, 0, 196, 'Private', 'OK', '<p>OK</p>\r\n', '2018-12-17', '0000-00-00', '3', 'INBOX', 'PRIVATE', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(15, NULL, 0, 196, 'Test Return and Draft', 'OK', '<p>OK</p>\r\n', '2018-12-17', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb3_Test_test_ttes_asdfa-sdf-as-dfa-sd-fa-', NULL),
(15, NULL, 0, 196, 'Test Return and Draft', 'OK', '<p>OK</p>\r\n', '2018-12-17', '0000-00-00', '3', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb3_Test_test_ttes_asdfa-sdf-as-dfa-sd-fa-', NULL),
(16, NULL, 0, 196, 'ASD', 'ok', '<p>ko</p>\r\n', '2018-12-17', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(16, NULL, 0, 196, 'ASD', 'ok', '<p>ko</p>\r\n', '2018-12-17', '0000-00-00', '3', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(16, NULL, 0, 196, 'ASD', 'ok', '<p>ko</p>\r\n', '2018-12-17', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(17, NULL, 0, 196, 'Coba Lagi', 'Ok', '<p>OK</p>\r\n', '2018-12-17', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(19, NULL, 0, 196, 'Finish Draft Issue', 'Ok', '<p>Ok</p>\r\n', '2018-12-17', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(19, NULL, 0, 196, 'Finish Draft Issue', 'Ok', '<p>Ok</p>\r\n', '2018-12-17', '0000-00-00', 'DRAFT', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(20, NULL, 0, 196, 'Coba Complex monitoring', 'coba', '<p>aja</p>\r\n', '2018-12-18', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(20, NULL, 0, 196, 'Coba Complex monitoring', 'coba', '<p>aja</p>\r\n', '2018-12-18', '0000-00-00', '3', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(21, NULL, 0, 196, 'Draft bisa yaa', 'Bismillah', '<p>Bismillah</p>\r\n', '2018-12-19', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'YES', 'ON', 0, 'PUBLISH', 'Screen Shot 2018-12-18 at 15.57.46.png', NULL),
(23, NULL, 0, 196, 'test', 'Ok', '<p>Ok</p>\r\n', '2018-12-20', '0000-00-00', 'DRAFT', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 0, 'PUBLISH', NULL, NULL),
(23, NULL, 0, 196, 'test', 'Ok', '<p>Ok</p>\r\n', '2018-12-20', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 0, 'PUBLISH', NULL, NULL),
(23, NULL, 0, 196, 'test', 'Ok', '<p>Ok</p>\r\n', '2018-12-20', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 0, 'PUBLISH', NULL, NULL),
(6, NULL, 0, 115, 'asdf', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 1, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 0, 'PUBLISH', '196-garuda.jpg', NULL),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 0, 'PUBLISH', '196-my-computer-lags-banner.jpg', NULL),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23', '0000-00-00', '1', 'INBOX', 'PUBLIC', 1, 'NO', 'ON', 0, 'PUBLISH', '196-my-computer-lags-banner.jpg', NULL),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23', '0000-00-00', '1', 'INBOX', 'PUBLIC', 2, 'NO', 'ON', 0, 'PUBLISH', '196-my-computer-lags-banner.jpg', NULL),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23', '0000-00-00', '1', 'INBOX', 'PUBLIC', 3, 'NO', 'ON', 0, 'PUBLISH', '196-my-computer-lags-banner.jpg', NULL),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23', '0000-00-00', '1', 'INBOX', 'PUBLIC', 4, 'NO', 'ON', 0, 'PUBLISH', '196-my-computer-lags-banner.jpg', NULL),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23', '0000-00-00', '1', 'INBOX', 'PUBLIC', 5, 'NO', 'ON', 0, 'PUBLISH', '196-my-computer-lags-banner.jpg', NULL),
(6, NULL, 0, 115, 'asdf', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 2, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 0, 'PUBLISH', 'thumb1 copy.png', NULL),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 0, 'PUBLISH', 'thumb1 copy.png', NULL),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 1, 'NO', 'ON', 0, 'PUBLISH', 'thumb1 copy.png', NULL),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23', '0000-00-00', '1', 'INBOX', 'PUBLIC', 6, 'NO', 'ON', 0, 'PUBLISH', '196-my-computer-lags-banner.jpg', NULL),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 13, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 1, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 2, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 3, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 4, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(7, NULL, 0, 115, 'Bagus Pisan', 'OK', '<p>OK</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'FITA', 5, 'NO', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 5, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(7, NULL, 0, 115, 'Bagus Pisan', 'OK', '<p>OK</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'FITA', 6, 'NO', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 6, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 7, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 8, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 9, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 10, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 11, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 12, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 13, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 14, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 15, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 16, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 17, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 18, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 19, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 20, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 21, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 22, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 23, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 24, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 25, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 26, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 27, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 28, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 29, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(7, NULL, 0, 115, 'Bagus Pisan', 'OK', '<p>OK</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'FITA', 7, 'NO', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(7, NULL, 0, 115, 'Bagus Pisan', 'OK', '<p>OK</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'FITA', 8, 'NO', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23', '0000-00-00', '1', 'INBOX', 'PUBLIC', 6, 'NO', 'ON', 1, 'PUBLISH', '196-my-computer-lags-banner.jpg', '196-retrieve-file-from-removable-drive-banner'),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23', '0000-00-00', '1', 'INBOX', 'PUBLIC', 6, 'NO', 'ON', 1, 'PUBLISH', '196-my-computer-lags-banner.jpg', '196-retrieve-file-from-removable-drive-banner'),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23', '0000-00-00', '1', 'INBOX', 'PUBLIC', 6, 'NO', 'ON', 1, 'PUBLISH', '196-my-computer-lags-banner.jpg', '196-retrieve-file-from-removable-drive-banner'),
(3, NULL, 0, 196, 'Contoh saja', 'OK', '<p>OK</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 2, 'NO', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(7, NULL, 0, 115, 'Bagus Pisan', 'OK', '<p>OK</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'FITA', 9, 'NO', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 30, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 31, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 32, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 33, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 10, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 11, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL);
INSERT INTO `knowledge_history` (`k_id`, `ref_id`, `c_id`, `user_id`, `title`, `description`, `content`, `start_date`, `end_date`, `status`, `data_status`, `access_permission`, `hits`, `hc_policy`, `comment`, `pin`, `knowledge_status`, `thumbnail`, `slider`) VALUES
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 12, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 13, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 14, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 15, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 16, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 17, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 18, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 19, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL);
INSERT INTO `knowledge_history` (`k_id`, `ref_id`, `c_id`, `user_id`, `title`, `description`, `content`, `start_date`, `end_date`, `status`, `data_status`, `access_permission`, `hits`, `hc_policy`, `comment`, `pin`, `knowledge_status`, `thumbnail`, `slider`) VALUES
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 20, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 21, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 22, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 23, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 24, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 25, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 26, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 27, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL);
INSERT INTO `knowledge_history` (`k_id`, `ref_id`, `c_id`, `user_id`, `title`, `description`, `content`, `start_date`, `end_date`, `status`, `data_status`, `access_permission`, `hits`, `hc_policy`, `comment`, `pin`, `knowledge_status`, `thumbnail`, `slider`) VALUES
(1, NULL, 0, 196, 'Telin', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p><strong>PT Telekomunikasi Indonesia International</strong> or <strong>Telkom International</strong>, and commonly abbreviated as <strong>Telin</strong>, is an Indonesian <a href=\"https://en.wikipedia.org/wiki/Telecommunications\">carrier services</a> and <a href=\"https://en.wikipedia.org/wiki/Investment_company\">investment</a> company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom&#39;s business arms in managing and developing its business lines outside Indonesia.<sup><a href=\"https://en.wikipedia.org/wiki/Telin#cite_note-abouttelin-1\">[1]</a></sup></p>\r\n\r\n<h2>Operation</h2>\r\n\r\n<p>Telin manages several subsidiaries, Telekomunikasi Indonesia International Pte. Ltd. in Singapore (Telin Singapore), Telekomunikasi Indonesia International (HongKong) Limited (Telin Hong Kong), Telekomunikasi Indonesia International (TL) S.A. (Telin Timor-Leste), Telekomunikasi Indonesia International Australia Pty. Ltd. (Telin Australia), Telkom Macau Limited (Telin Macau), Telkom Taiwan Limited (Telin Taiwan), Telekomunikasi Indonesia International (Malaysia) Sdn. Bhd (Telin Malaysia), Telekomunikasi Indonesia International (USA), Inc. (Telin USA). In addition to those subsidiaries, Telin established a branch in Myanmar and a business unit in Kingdom of Saudi Arabia. Telin existence in several footprints worldwide will serve function as Telin main gateways to international telecommunication market.</p>\r\n\r\n<p>On September 9, 2013, Telin released the ownership of 29.71% shares of the Scicom (MSC) Berhad Malaysia, the largest contact center for outsourcing service providers in Malaysia.</p>\r\n\r\n<p>On September 25, 2014, Telin acquired 75% shares of Contact Centres Australia (CCA) makes it entitles as Telin Australia&#39;s subsidiary. CCA is a Sydney-based company who runs Business Process Outsourcing specifically Contact centre service for fundraising (not for profit organization) and commercial business.</p>\r\n\r\n<p>Telin provides network business, international information-telecommunication services, including the international telecommunication services for and on behalf of Telkom as well as comprehensive and reliable services through its own investment on international telecommunication services, such as connectivity services in the form of voice, data and internet services, manage services and business solution.</p>\r\n\r\n<p>Telin also owns licenses for the fixed and closed network establishment in Indonesia as well as the Facility Based Operator (FBO) license in Singapore and Unified Carrier License (UCL) in Hong Kong. These affirmed Telin as the official network and telecommunication provider. The availability of fully protected network enables Telin to provide reliable services that reaches all parts of the world.</p>\r\n\r\n<p>Aside from its footprints and products and services, Telin owns numbers of Infrastructures divided into Point of Presence (PoP), Submarine Cable Systems, and World Hub of Command Center (WHOCC).</p>\r\n\r\n<ul>\r\n	<li>Point of Presence (PoP) in 52 areas: PoP ASIA: Batam (2), Dumai, Jakarta (4), Manado, Surabaya, Dili, Hong Kong (3), Seoul, Kuala Lumpur, Naypyidaw, Singapore (4), Taipei, Tokyo. POP EUROPE &amp; MIDDLE EAST: Amsterdam, Berlin, Dubai, Frankfurt, Kiev, London, Luxemburg, Madrid, Manchester, Marseille, Milan, Moscow, Palermo, Paris, Sofia, Stockholm, Switzerland, Vienna, Warsaw. POP USA: Ashburn, Chicago, Guam, Hawaii, Los Angeles (2), New York, Palo Alto, San Jose, Seattle, Toronto.</li>\r\n	<li>Undersea Cable System namely</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Batam Singapore Cable System (BSCS), a submarine cable system connecting Batam Centre station (Batam) to Telin station in Singapore. The total system length is around 98&nbsp;km, connecting the landing sites through six fiber pair cables, with stub cable is provided for future extension of the system.</li>\r\n	<li>Dumai Malacca Cable System (DMCS), is a submarine telecommunications cable system linking Indonesia and Malaysia across the Strait of Malacca</li>\r\n	<li>Southeast &ndash;Asia Japan Cable (SJC), an 8,900-kilometer cable system, which could further extend to 9,700 kilometers.</li>\r\n	<li>America Asia Gateway (AAG), a 20,000-km, high-bandwidth fiber optic submarine cable system that will connect Southeast Asia to the United States.</li>\r\n	<li>Southeast Asia Middle East Western Europe 5 (SEA-ME-WE 5), an undersea cable system with an approximate length 20.000&nbsp;km passing Southeast Asia to Europe. Status: Construction to operate in 2016.</li>\r\n	<li>Southeast Asia &ndash; United States (SEA-US), an undersea cable system with an approximate length 15.000&nbsp;km directly connecting Manado, Indonesia to LA, USA. It has already operated since September 2017.</li>\r\n	<li>Indonesia Global Gateway (IGG), an undersea cable system connecting Manado and Dumai, a project collaboration between Telkom and Telin.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>World Hub of Command Center (WHOCC) is located in Kalibata, Jakarta, Indonesia to provide various services such as Help Desk and Assistance 24/7, Network Surveillance, and Real Time Fault Handling (RTFH), Seamless integrated within Telin Group (Jakarta, Singapore, Batam, Dumai, Surabaya), Close collaboration with Telkom &amp; Global Partner, and Legacy Services.</li>\r\n</ul>\r\n', '2018-12-05', '0000-00-00', '1', 'INBOX', 'PUBLIC', 28, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 34, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-thumb1 copy.png'),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 34, 'NO', 'ON', 1, 'PUBLISH', 'thumb1 copy.png', '196-Screen Shot 2018-12-26 at 11.52.10.png'),
(4, NULL, 0, 115, 'KM TYPE OPTION, DIRECT ACCESS YES, ATTACHMENT REQUEST YES', 'Test', '<p>Test</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 1, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(4, NULL, 0, 115, 'KM TYPE OPTION, DIRECT ACCESS YES, ATTACHMENT REQUEST YES', 'Test', '<p>Test</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 2, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(4, NULL, 0, 115, 'KM TYPE OPTION, DIRECT ACCESS YES, ATTACHMENT REQUEST YES', 'Test', '<p>Test</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 3, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(4, NULL, 0, 115, 'KM TYPE OPTION, DIRECT ACCESS YES, ATTACHMENT REQUEST YES', 'Test', '<p>Test</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 4, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(25, NULL, 0, 196, 'Coba Gambar', 'Oke', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 34, 'NO', 'ON', 1, 'PUBLISH', '196-2018-12-20 11.00.07.jpg', '196-Screen Shot 2018-12-26 at 11.52.10.png'),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 2, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', '4', 2, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04', '0000-00-00', '-2', 'INBOX', '3', 0, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04', '0000-00-00', '1', 'INBOX', '3', 0, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04', '0000-00-00', '1', 'INBOX', '3', 1, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04', '0000-00-00', '1', 'INBOX', '3', 2, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04', '0000-00-00', '1', 'INBOX', '3', 3, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04', '0000-00-00', '1', 'INBOX', '3', 4, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04', '0000-00-00', '1', 'INBOX', '3', 5, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04', '0000-00-00', '1', 'INBOX', '3', 6, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04', '0000-00-00', '1', 'INBOX', '3', 7, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04', '0000-00-00', '1', 'INBOX', '3', 8, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04', '0000-00-00', '1', 'INBOX', '3', 9, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04', '0000-00-00', '1', 'INBOX', '3', 10, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04', '0000-00-00', '1', 'INBOX', '3', 11, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(25, NULL, 0, 196, 'Coba Gambar', 'PT Telekomunikasi Indonesia International or Telkom International, and commonly abbreviated as Telin, is an Indonesian carrier services and investment company and is a wholly owned subsidiary of Telkom Indonesia. It is an international telecommunication business serves as Telkom\'s business arms in managing and developing its business lines outside Indonesia.[1] ', '<p>Oke</p>\r\n', '2018-12-27', '0000-00-00', '1', 'INBOX', 'PUBLIC', 34, 'NO', 'ON', 1, 'PUBLISH', '196-2018-12-20 11.00.07.jpg', '196-Screen Shot 2018-12-26 at 11.52.10.png'),
(10, NULL, 0, 196, 'nurbaiti', 'a', '<p>a</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 14, 'YES', 'ON', 0, 'PUBLISH', NULL, NULL),
(4, NULL, 0, 115, 'KM TYPE OPTION, DIRECT ACCESS YES, ATTACHMENT REQUEST YES', 'Test', '<p>Test</p>\r\n', '2018-12-14', '0000-00-00', '1', 'INBOX', 'PUBLIC', 5, 'YES', 'ON', 0, 'PUBLISH', 'thumb1.png', NULL),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', '3', 2, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', '3', 3, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(38, NULL, 0, 196, 'Coba Private', 'Ok', '<p>Ok</p>\r\n', '2019-01-08', '0000-00-00', '-2', 'INBOX', 'PRIVATE', 0, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(38, NULL, 0, 196, 'Coba Private', 'Ok', '<p>Ok</p>\r\n', '2019-01-08', '0000-00-00', '1', 'INBOX', 'PRIVATE', 0, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(38, NULL, 0, 196, 'Coba Private Yaaaa', 'Ok', '<p>Ok</p>\r\n', '2019-01-08', '0000-00-00', '1', 'INBOX', 'PRIVATE', 0, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(38, NULL, 0, 196, 'Coba Private Yaaaa', 'Ok', '<p>Ok</p>\r\n', '2019-01-08', '0000-00-00', '1', 'INBOX', 'PRIVATE', 1, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(40, NULL, 0, 115, 'Private terbanyak', 'Test', '<p>Test</p>\r\n', '2019-01-08', '0000-00-00', '-2', 'INBOX', 'PRIVATE', 0, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(43, NULL, 0, 196, 'Contoh Loading', 'Ok', '<p>Ok</p>\r\n', '2019-01-10', '0000-00-00', '-2', 'INBOX', 'PRIVATE', 0, 'NO', 'ON', 0, 'PUBLISH', NULL, NULL),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '-2', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 0, 'PUBLISH', 'cocktail.png', NULL),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 0, 'PUBLISH', 'cocktail.png', NULL),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 1, 'PUBLISH', 'cocktail.png', '115-banner-background-blobs.jpg'),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 1, 'PUBLISH', 'cocktail.png', '115-banner-background-blobs.jpg'),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 1, 'PUBLISH', 'cocktail.png', '115-my-computer-lags-banner.jpg'),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 1, 'PUBLISH', 'cocktail.png', '115-images.jpg'),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 1, 'PUBLISH', 'cocktail.png', '115-my-computer-lags-banner.jpg'),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 1, 'PUBLISH', 'cocktail.png', '115-my-computer-lags-banner.jpg'),
(24, NULL, 0, 196, 'Telkom International', 'OK', '<p>OK</p>\r\n', '2018-12-23', '0000-00-00', '1', 'INBOX', 'PUBLIC', 6, 'NO', 'ON', 1, 'PUBLISH', '196-my-computer-lags-banner.jpg', '196-retrieve-file-from-removable-drive-banner'),
(37, NULL, 0, 196, 'For All Manager', 'Ok', '<p>OK</p>\r\n', '2019-01-04', '0000-00-00', '1', 'INBOX', '3', 12, 'NO', 'ON', 0, 'PUBLISH', 'cereals.png', NULL),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 1, 'PUBLISH', '115-illustration-tt-width-1200-height-300-cro', '115-my-computer-lags-banner.jpg'),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 1, 'PUBLISH', '115-illustration-tt-width-1200-height-300-cro', '115-garuda.jpg'),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 1, 'PUBLISH', '115-illustration-tt-width-1200-height-300-cro', '115-images.jpg'),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 1, 'PUBLISH', '115-illustration-tt-width-1200-height-300-cro', '115-garuda.jpg'),
(43, NULL, 0, 196, 'Contoh Loading', 'Ok', '<p>Ok</p>\r\n', '2019-01-10', '0000-00-00', '1', 'INBOX', 'PRIVATE', 0, 'NO', 'ON', 0, 'PUBLISH', NULL, NULL),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', '3', 4, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', '3', 5, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', '3', 6, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', '3', 7, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', '3', 8, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '1', 'INBOX', 'PUBLIC', 0, 'NO', 'ON', 1, 'PUBLISH', '115-illustration-tt-width-1200-height-300-cro', '115-information_green.png'),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', '3', 9, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(2, NULL, 0, 115, 'Contoh Fita', 'Contoh Fita', '<p>Contoh FIta</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', '3', 10, 'YES', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(3, NULL, 0, 196, 'Contoh saja', 'OK', '<p>OK</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 3, 'NO', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(3, NULL, 0, 196, 'Contoh saja', 'OK', '<p>OK</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 4, 'NO', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(3, NULL, 0, 196, 'Contoh saja', 'OK', '<p>OK</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 5, 'NO', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(3, NULL, 0, 196, 'Contoh saja', 'OK', '<p>OK</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 6, 'NO', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(3, NULL, 0, 196, 'Contoh saja', 'OK', '<p>OK</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 7, 'NO', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '1', 'INBOX', 'PUBLIC', 1, 'NO', 'ON', 1, 'PUBLISH', '115-illustration-tt-width-1200-height-300-cro', '115-information_green.png'),
(44, NULL, 0, 196, 'Test Point', 'Test Point', '<p>Test Pont</p>\r\n', '2019-01-15', '0000-00-00', '1', 'INBOX', 'PUBLIC', 2, 'NO', 'ON', 1, 'PUBLISH', '115-illustration-tt-width-1200-height-300-cro', '115-information_green.png'),
(3, NULL, 0, 196, 'Contoh saja', 'OK', '<p>OK</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 8, 'NO', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(3, NULL, 0, 196, 'Contoh saja', 'OK', '<p>OK</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 9, 'NO', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(3, NULL, 0, 196, 'Contoh saja', 'OK', '<p>OK</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 10, 'NO', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL),
(3, NULL, 0, 196, 'Contoh saja', 'OK', '<p>OK</p>\r\n', '2018-12-11', '0000-00-00', '1', 'INBOX', 'FITA', 11, 'NO', 'ON', 0, 'PUBLISH', 'thumb2.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `k_id` int(11) DEFAULT NULL,
  `my_like` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`like_id`, `k_id`, `my_like`, `user_id`, `create_dtm`) VALUES
(1, 10, 1, 196, '2018-12-14 11:00:30'),
(2, 7, 1, 196, '2018-12-17 14:06:31'),
(3, 23, 1, 196, '2018-12-23 13:05:19'),
(4, 6, 1, 196, '2018-12-23 13:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `log_id` int(11) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `host_name` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `activity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`log_id`, `user_id`, `create_dtm`, `host_name`, `longitude`, `latitude`, `activity`) VALUES
(1, '196', '2018-12-05 22:24:46', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(2, '196', '2018-12-05 22:25:10', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(3, '196', '2018-12-05 22:26:05', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(4, '196', '2018-12-05 22:39:32', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'Comment'),
(5, '196', '2018-12-05 22:39:42', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'Comment'),
(6, '196', '2018-12-05 22:39:52', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'Comment'),
(7, '196', '2018-12-05 22:41:34', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(8, '196', '2018-12-05 22:57:20', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(9, '115', '2018-12-06 10:39:54', NULL, NULL, NULL, 'Login'),
(10, '196', '2018-12-06 10:50:11', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(11, '115', '2018-12-06 10:52:26', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'Comment'),
(12, '196', '2018-12-06 10:52:36', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(13, '115', '2018-12-06 10:53:31', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'Comment'),
(14, '115', '2018-12-06 10:53:41', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'Comment'),
(15, '196', '2018-12-07 10:25:33', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(16, '115', '2018-12-10 09:32:32', NULL, NULL, NULL, 'Login'),
(17, '196', '2018-12-11 10:03:54', NULL, NULL, NULL, 'Login'),
(18, '115', '2018-12-11 10:10:47', NULL, NULL, NULL, 'Login'),
(19, '196', '2018-12-11 14:35:22', NULL, NULL, NULL, 'Login'),
(20, '196', '2018-12-11 14:39:11', NULL, NULL, NULL, 'Login'),
(21, '115', '2018-12-11 14:47:38', NULL, NULL, NULL, 'Login'),
(22, '196', '2018-12-11 16:20:54', NULL, NULL, NULL, 'Login'),
(23, '115', '2018-12-11 17:31:03', 'http://knowledge.mgt/knowledge/knowledgedetail?id=2', NULL, NULL, 'DETAIL KNOWLEDGE'),
(24, '196', '2018-12-11 17:31:06', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(25, '115', '2018-12-11 17:31:40', 'http://knowledge.mgt/knowledge/knowledgedetail?id=2', NULL, NULL, 'DETAIL KNOWLEDGE'),
(26, '115', '2018-12-11 17:33:42', NULL, NULL, NULL, 'Login'),
(27, '196', '2018-12-11 17:34:06', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(28, '115', '2018-12-11 17:34:31', NULL, NULL, NULL, 'Login'),
(29, '196', '2018-12-11 17:34:40', NULL, NULL, NULL, 'Login'),
(30, '196', '2018-12-11 17:34:43', 'http://knowledge.mgt/knowledge/knowledgedetail?id=3', NULL, NULL, 'DETAIL KNOWLEDGE'),
(31, '196', '2018-12-11 17:34:45', 'http://knowledge.mgt/knowledge/download?id=3', NULL, NULL, 'Download as PDF'),
(32, '196', '2018-12-11 17:38:01', 'http://knowledge.mgt/knowledge/knowledgedetail?id=3', NULL, NULL, 'DETAIL KNOWLEDGE'),
(33, '115', '2018-12-12 14:52:35', NULL, NULL, NULL, 'Login'),
(34, '115', '2018-12-13 13:16:04', NULL, NULL, NULL, 'Login'),
(35, '196', '2018-12-13 14:59:51', NULL, NULL, NULL, 'Login'),
(36, '115', '2018-12-13 15:03:04', NULL, NULL, NULL, 'Login'),
(37, '115', '2018-12-14 06:18:03', 'http://knowledge.mgt/knowledge/knowledgedetail?id=4', NULL, NULL, 'DETAIL KNOWLEDGE'),
(38, '115', '2018-12-14 07:54:37', 'http://knowledge.mgt/knowledge/knowledgedetail?id=6', NULL, NULL, 'DETAIL KNOWLEDGE'),
(39, '115', '2018-12-14 07:57:17', NULL, NULL, NULL, 'Login'),
(40, '115', '2018-12-14 07:57:29', 'http://knowledge.mgt/knowledge/knowledgedetail?id=7', NULL, NULL, 'DETAIL KNOWLEDGE'),
(41, '115', '2018-12-14 07:57:32', 'http://knowledge.mgt/knowledge/download?id=7', NULL, NULL, 'Download as PDF'),
(42, '115', '2018-12-14 09:50:56', 'http://knowledge.mgt/knowledge/knowledgedetail?id=7', NULL, NULL, 'DETAIL KNOWLEDGE'),
(43, '196', '2018-12-14 10:16:48', NULL, NULL, NULL, 'Login'),
(44, '115', '2018-12-14 10:17:11', NULL, NULL, NULL, 'Login'),
(45, '196', '2018-12-14 10:28:34', NULL, NULL, NULL, 'Login'),
(46, '115', '2018-12-14 10:32:14', NULL, NULL, NULL, 'Login'),
(47, '196', '2018-12-14 10:33:18', NULL, NULL, NULL, 'Login'),
(48, '196', '2018-12-14 10:44:17', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(49, '196', '2018-12-14 10:44:29', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(50, '196', '2018-12-14 10:44:34', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(51, '196', '2018-12-14 10:44:50', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(52, '196', '2018-12-14 10:51:42', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(53, '115', '2018-12-14 10:51:45', 'http://knowledge.mgt/knowledge/knowledgedetail?id=8', NULL, NULL, 'DETAIL KNOWLEDGE'),
(54, '196', '2018-12-14 10:52:53', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(55, '196', '2018-12-14 10:57:29', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(56, '196', '2018-12-14 10:58:00', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(57, '196', '2018-12-14 10:58:04', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(58, '196', '2018-12-14 10:58:07', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(59, '196', '2018-12-14 10:58:11', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(60, '196', '2018-12-14 10:58:15', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(61, '196', '2018-12-14 11:00:26', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(62, '196', '2018-12-14 11:00:30', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'Like'),
(63, '115', '2018-12-14 17:44:33', 'http://knowledge.mgt/knowledge/knowledgedetail?id=7', NULL, NULL, 'DETAIL KNOWLEDGE'),
(64, '196', '2018-12-14 17:44:42', 'http://knowledge.mgt/knowledge/knowledgedetail?id=7', NULL, NULL, 'Comment'),
(65, '196', '2018-12-14 17:44:51', 'http://knowledge.mgt/knowledge/knowledgedetail?id=7', NULL, NULL, 'Comment'),
(66, '196', '2018-12-14 17:44:56', 'http://knowledge.mgt/knowledge/download?id=7', NULL, NULL, 'Download as PDF'),
(67, '115', '2018-12-14 17:44:59', 'http://knowledge.mgt/knowledge/knowledgedetail?id=7', NULL, NULL, 'DETAIL KNOWLEDGE'),
(68, '196', '2018-12-17 11:22:07', NULL, NULL, NULL, 'Login'),
(69, '115', '2018-12-17 14:06:26', 'http://knowledge.mgt/knowledge/knowledgedetail?id=7', NULL, NULL, 'DETAIL KNOWLEDGE'),
(70, '196', '2018-12-17 14:06:31', 'http://knowledge.mgt/knowledge/knowledgedetail?id=7', NULL, NULL, 'Like'),
(71, '196', '2018-12-17 14:06:36', 'http://knowledge.mgt/knowledge/knowledgedetail?id=7', NULL, NULL, 'Comment'),
(72, '196', '2018-12-18 11:35:45', NULL, NULL, NULL, 'Login'),
(73, '196', '2018-12-19 11:39:36', NULL, NULL, NULL, 'Login'),
(74, '196', '2018-12-20 11:52:53', NULL, NULL, NULL, 'Login'),
(75, '196', '2018-12-21 14:13:01', NULL, NULL, NULL, 'Login'),
(76, '196', '2018-12-21 14:15:30', NULL, NULL, NULL, 'Login'),
(77, '196', '2018-12-21 14:32:55', NULL, NULL, NULL, 'Login'),
(78, '196', '2018-12-23 13:04:07', NULL, NULL, NULL, 'Login'),
(79, '196', '2018-12-23 13:05:13', 'http://knowledge.mgt/knowledge/knowledgedetail?id=23', NULL, NULL, 'DETAIL KNOWLEDGE'),
(80, '196', '2018-12-23 13:05:18', 'http://knowledge.mgt/knowledge/knowledgedetail?id=23', NULL, NULL, 'Comment'),
(81, '196', '2018-12-23 13:05:19', 'http://knowledge.mgt/knowledge/knowledgedetail?id=23', NULL, NULL, 'Like'),
(82, '115', '2018-12-23 13:05:28', 'http://knowledge.mgt/knowledge/knowledgedetail?id=6', NULL, NULL, 'DETAIL KNOWLEDGE'),
(83, '196', '2018-12-23 13:05:32', 'http://knowledge.mgt/knowledge/knowledgedetail?id=6', NULL, NULL, 'Like'),
(84, '196', '2018-12-23 13:05:33', 'http://knowledge.mgt/knowledge/knowledgedetail?id=6', NULL, NULL, 'Comment'),
(85, '196', '2018-12-24 12:14:05', NULL, NULL, NULL, 'Login'),
(86, '196', '2018-12-26 09:26:50', NULL, NULL, NULL, 'Login'),
(87, '196', '2018-12-26 13:52:41', NULL, NULL, NULL, 'Login'),
(88, '196', '2018-12-26 19:21:07', NULL, NULL, NULL, 'Login'),
(89, '196', '2018-12-27 09:26:05', NULL, NULL, NULL, 'Login'),
(90, '196', '2018-12-27 10:16:24', NULL, NULL, NULL, 'Login'),
(91, '196', '2018-12-27 10:17:15', NULL, NULL, NULL, 'Login'),
(92, '196', '2018-12-27 10:20:08', NULL, NULL, NULL, 'Login'),
(93, '196', '2018-12-27 10:23:23', NULL, NULL, NULL, 'Login'),
(94, '196', '2018-12-27 10:24:36', NULL, NULL, NULL, 'Login'),
(95, '196', '2018-12-27 10:25:25', NULL, NULL, NULL, 'Login'),
(96, '196', '2018-12-27 10:27:26', NULL, NULL, NULL, 'Login'),
(97, '196', '2018-12-27 10:28:30', NULL, NULL, NULL, 'Login'),
(98, '196', '2018-12-27 10:31:18', NULL, NULL, NULL, 'Login'),
(99, '196', '2018-12-27 10:32:36', NULL, NULL, NULL, 'Login'),
(100, '196', '2018-12-27 10:33:03', NULL, NULL, NULL, 'Login'),
(101, '196', '2018-12-27 10:37:07', NULL, NULL, NULL, 'Login'),
(102, '196', '2018-12-27 10:38:28', NULL, NULL, NULL, 'Login'),
(103, '196', '2018-12-27 10:39:53', NULL, NULL, NULL, 'Login'),
(104, '196', '2018-12-27 10:42:43', NULL, NULL, NULL, 'Login'),
(105, '196', '2018-12-27 10:48:13', NULL, NULL, NULL, 'Login'),
(106, '196', '2018-12-27 10:48:18', NULL, NULL, NULL, 'Login'),
(107, '196', '2018-12-27 10:49:56', NULL, NULL, NULL, 'Login'),
(108, '196', '2018-12-27 10:52:30', NULL, NULL, NULL, 'Login'),
(109, '196', '2018-12-27 10:57:54', NULL, NULL, NULL, 'Login'),
(110, '196', '2018-12-27 10:58:48', NULL, NULL, NULL, 'Login'),
(111, '196', '2018-12-27 11:13:36', 'http://knowledge.mgt/knowledge/knowledgedetail?id=24', NULL, NULL, 'DETAIL KNOWLEDGE'),
(112, '196', '2018-12-27 11:13:42', 'http://knowledge.mgt/knowledge/knowledgedetail?id=24', NULL, NULL, 'Comment'),
(113, '196', '2018-12-27 11:15:18', 'http://knowledge.mgt/knowledge/knowledgedetail?id=24', NULL, NULL, 'DETAIL KNOWLEDGE'),
(114, '196', '2018-12-27 11:15:26', 'http://knowledge.mgt/knowledge/knowledgedetail?id=24', NULL, NULL, 'Comment'),
(115, '196', '2018-12-27 11:23:08', 'http://knowledge.mgt/knowledge/knowledgedetail?id=24', NULL, NULL, 'DETAIL KNOWLEDGE'),
(116, '196', '2018-12-27 11:23:11', 'http://knowledge.mgt/knowledge/knowledgedetail?id=24', NULL, NULL, 'DETAIL KNOWLEDGE'),
(117, '196', '2018-12-27 11:23:12', 'http://knowledge.mgt/knowledge/knowledgedetail?id=24', NULL, NULL, 'DETAIL KNOWLEDGE'),
(118, '196', '2018-12-27 11:23:37', 'http://knowledge.mgt/knowledge/knowledgedetail?id=24', NULL, NULL, 'DETAIL KNOWLEDGE'),
(119, '115', '2018-12-27 11:23:43', 'http://knowledge.mgt/knowledge/knowledgedetail?id=6', NULL, NULL, 'DETAIL KNOWLEDGE'),
(120, '196', '2018-12-27 11:28:51', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(121, '196', '2018-12-27 14:39:12', NULL, NULL, NULL, 'Login'),
(122, '196', '2018-12-27 14:42:10', NULL, NULL, NULL, 'Login'),
(123, '196', '2018-12-27 14:47:18', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(124, '196', '2018-12-27 14:47:33', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(125, '196', '2018-12-27 14:48:51', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(126, '196', '2018-12-27 14:49:49', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(127, '196', '2018-12-27 14:50:14', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(128, '115', '2018-12-27 14:54:24', 'http://knowledge.mgt/knowledge/knowledgedetail?id=7', NULL, NULL, 'DETAIL KNOWLEDGE'),
(129, '196', '2018-12-27 14:54:30', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(130, '115', '2018-12-27 14:56:01', 'http://knowledge.mgt/knowledge/knowledgedetail?id=7', NULL, NULL, 'DETAIL KNOWLEDGE'),
(131, '196', '2018-12-27 14:56:05', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(132, '196', '2018-12-27 14:56:18', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(133, '196', '2018-12-27 14:57:45', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(134, '196', '2018-12-27 14:57:46', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(135, '196', '2018-12-27 14:58:01', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(136, '196', '2018-12-27 14:59:03', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(137, '196', '2018-12-27 14:59:05', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(138, '196', '2018-12-27 14:59:22', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(139, '196', '2018-12-27 14:59:25', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(140, '196', '2018-12-27 15:00:01', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(141, '196', '2018-12-27 15:00:03', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(142, '196', '2018-12-27 15:00:04', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(143, '196', '2018-12-27 15:01:01', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(144, '196', '2018-12-27 15:01:35', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(145, '196', '2018-12-27 15:01:35', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(146, '196', '2018-12-27 15:07:53', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(147, '196', '2018-12-27 15:07:54', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(148, '196', '2018-12-27 15:07:55', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(149, '196', '2018-12-27 15:07:57', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(150, '196', '2018-12-27 15:07:58', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(151, '196', '2018-12-27 15:07:59', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(152, '196', '2018-12-27 15:11:15', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(153, '196', '2018-12-27 15:11:24', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(154, '196', '2018-12-27 15:11:31', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'Comment'),
(155, '196', '2018-12-27 15:11:39', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'Comment'),
(156, '196', '2018-12-27 15:53:36', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(157, '115', '2018-12-27 16:11:59', 'http://knowledge.mgt/knowledge/knowledgedetail?id=7', NULL, NULL, 'DETAIL KNOWLEDGE'),
(158, '196', '2018-12-27 16:12:28', 'http://knowledge.mgt/knowledge/download?id=7', NULL, NULL, 'Download as PDF'),
(159, '196', '2018-12-27 16:12:32', 'http://knowledge.mgt/knowledge/download?id=7', NULL, NULL, 'Download as PDF'),
(160, '115', '2018-12-27 16:12:35', 'http://knowledge.mgt/knowledge/knowledgedetail?id=7', NULL, NULL, 'DETAIL KNOWLEDGE'),
(161, '196', '2018-12-27 16:47:17', 'http://knowledge.mgt/knowledge/knowledgedetail?id=13', NULL, NULL, 'DETAIL KNOWLEDGE'),
(162, '196', '2018-12-27 16:47:26', 'http://knowledge.mgt/knowledge/knowledgedetail?id=3', NULL, NULL, 'DETAIL KNOWLEDGE'),
(163, '115', '2018-12-27 16:47:54', 'http://knowledge.mgt/knowledge/knowledgedetail?id=7', NULL, NULL, 'DETAIL KNOWLEDGE'),
(164, '196', '2018-12-27 16:48:17', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(165, '196', '2018-12-27 18:38:45', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(166, '196', '2018-12-27 18:39:16', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(167, '196', '2018-12-27 18:39:24', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'Comment'),
(168, '196', '2018-12-27 18:49:00', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(169, '196', '2018-12-27 18:49:13', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'Comment'),
(170, '196', '2018-12-28 11:14:21', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(171, '196', '2018-12-28 11:16:38', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(172, '196', '2018-12-28 11:16:39', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(173, '196', '2018-12-28 11:17:20', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(174, '196', '2018-12-28 11:17:22', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(175, '196', '2018-12-28 11:17:43', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(176, '196', '2018-12-28 11:18:06', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(177, '196', '2018-12-28 11:18:15', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(178, '196', '2018-12-28 11:18:21', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(179, '196', '2018-12-28 11:19:04', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(180, '196', '2018-12-28 11:19:11', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(181, '196', '2018-12-28 11:19:20', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(182, '196', '2018-12-28 11:19:45', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(183, '196', '2018-12-28 11:19:57', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(184, '196', '2018-12-28 11:20:06', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(185, '196', '2018-12-28 11:20:54', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(186, '196', '2018-12-28 11:21:00', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(187, '196', '2018-12-28 11:21:26', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(188, '196', '2018-12-28 11:21:32', 'http://knowledge.mgt/knowledge/knowledgedetail?id=1', NULL, NULL, 'DETAIL KNOWLEDGE'),
(189, '196', '2018-12-28 11:32:41', NULL, NULL, NULL, 'Login'),
(190, '196', '2018-12-28 14:50:27', NULL, NULL, NULL, 'Login'),
(191, '115', '2018-12-28 15:04:41', 'http://knowledge.mgt/knowledge/knowledgedetail?id=4', NULL, NULL, 'DETAIL KNOWLEDGE'),
(192, '115', '2018-12-28 15:04:48', 'http://knowledge.mgt/knowledge/knowledgedetail?id=4', NULL, NULL, 'DETAIL KNOWLEDGE'),
(193, '115', '2018-12-28 15:04:50', 'http://knowledge.mgt/knowledge/knowledgedetail?id=4', NULL, NULL, 'DETAIL KNOWLEDGE'),
(194, '115', '2018-12-28 15:04:53', 'http://knowledge.mgt/knowledge/knowledgedetail?id=4', NULL, NULL, 'DETAIL KNOWLEDGE'),
(195, '196', '2019-01-03 09:58:21', NULL, NULL, NULL, 'Login'),
(196, '1', '2019-01-03 10:03:55', NULL, NULL, NULL, 'Login'),
(197, '270', '2019-01-03 10:06:12', NULL, NULL, NULL, 'Login'),
(198, '196', '2019-01-03 14:40:12', NULL, NULL, NULL, 'Login'),
(199, '1', '2019-01-04 08:48:54', NULL, NULL, NULL, 'Login'),
(200, '196', '2019-01-04 08:53:00', NULL, NULL, NULL, 'Login'),
(201, '196', '2019-01-04 08:54:11', NULL, NULL, NULL, 'Login'),
(202, '115', '2019-01-04 08:56:08', NULL, NULL, NULL, 'Login'),
(203, '196', '2019-01-04 08:56:34', NULL, NULL, NULL, 'Login'),
(204, '196', '2019-01-04 09:01:54', 'http://knowledge.mgt/knowledge/knowledgedetail?id=37', NULL, NULL, 'DETAIL KNOWLEDGE'),
(205, '196', '2019-01-04 09:02:28', 'http://knowledge.mgt/knowledge/knowledgedetail?id=37', NULL, NULL, 'DETAIL KNOWLEDGE'),
(206, '196', '2019-01-04 09:05:07', 'http://knowledge.mgt/knowledge/knowledgedetail?id=37', NULL, NULL, 'DETAIL KNOWLEDGE'),
(207, '196', '2019-01-04 09:05:59', 'http://knowledge.mgt/knowledge/knowledgedetail?id=37', NULL, NULL, 'DETAIL KNOWLEDGE'),
(208, '196', '2019-01-04 09:06:00', 'http://knowledge.mgt/knowledge/knowledgedetail?id=37', NULL, NULL, 'DETAIL KNOWLEDGE'),
(209, '196', '2019-01-04 09:06:23', 'http://knowledge.mgt/knowledge/knowledgedetail?id=37', NULL, NULL, 'DETAIL KNOWLEDGE'),
(210, '196', '2019-01-04 09:14:18', 'http://knowledge.mgt/knowledge/knowledgedetail?id=37', NULL, NULL, 'DETAIL KNOWLEDGE'),
(211, '196', '2019-01-04 09:14:28', 'http://knowledge.mgt/knowledge/knowledgedetail?id=37', NULL, NULL, 'DETAIL KNOWLEDGE'),
(212, '196', '2019-01-04 09:17:23', 'http://knowledge.mgt/knowledge/knowledgedetail?id=37', NULL, NULL, 'DETAIL KNOWLEDGE'),
(213, '196', '2019-01-04 09:17:24', 'http://knowledge.mgt/knowledge/knowledgedetail?id=37', NULL, NULL, 'DETAIL KNOWLEDGE'),
(214, '196', '2019-01-04 09:17:33', 'http://knowledge.mgt/knowledge/knowledgedetail?id=37', NULL, NULL, 'DETAIL KNOWLEDGE'),
(215, '196', '2019-01-04 09:18:46', 'http://knowledge.mgt/knowledge/knowledgedetail?id=37', NULL, NULL, 'DETAIL KNOWLEDGE'),
(216, '196', '2019-01-04 09:23:14', 'http://knowledge.mgt/knowledge/knowledgedetail?id=25', NULL, NULL, 'DETAIL KNOWLEDGE'),
(217, '196', '2019-01-04 09:23:20', 'http://knowledge.mgt/knowledge/knowledgedetail?id=10', NULL, NULL, 'DETAIL KNOWLEDGE'),
(218, '115', '2019-01-04 09:23:24', 'http://knowledge.mgt/knowledge/knowledgedetail?id=4', NULL, NULL, 'DETAIL KNOWLEDGE'),
(219, '115', '2019-01-04 09:23:59', 'http://knowledge.mgt/knowledge/knowledgedetail?id=2', NULL, NULL, 'DETAIL KNOWLEDGE'),
(220, '115', '2019-01-04 09:26:52', 'http://knowledge.mgt/knowledge/knowledgedetail?id=2', NULL, NULL, 'DETAIL KNOWLEDGE'),
(221, '196', '2019-01-08 11:35:49', NULL, NULL, NULL, 'Login'),
(222, '115', '2019-01-08 12:34:48', NULL, NULL, NULL, 'Login'),
(223, '196', '2019-01-08 12:35:51', NULL, NULL, NULL, 'Login'),
(224, '196', '2019-01-08 12:37:29', 'http://knowledge.mgt/knowledge/knowledgedetail?id=38', NULL, NULL, 'DETAIL KNOWLEDGE'),
(225, '115', '2019-01-08 12:47:24', NULL, NULL, NULL, 'Login'),
(226, '1', '2019-01-08 12:49:23', NULL, NULL, NULL, 'Login'),
(227, '241', '2019-01-08 12:49:41', NULL, NULL, NULL, 'Login'),
(228, '196', '2019-01-08 12:49:56', NULL, NULL, NULL, 'Login'),
(229, '115', '2019-01-08 16:08:17', NULL, NULL, NULL, 'Login'),
(230, '196', '2019-01-08 16:20:14', NULL, NULL, NULL, 'Login'),
(231, '115', '2019-01-08 16:20:39', NULL, NULL, NULL, 'Login'),
(232, '196', '2019-01-10 11:58:57', NULL, NULL, NULL, 'Login'),
(233, '196', '2019-01-10 12:30:47', NULL, NULL, NULL, 'Login'),
(234, '115', '2019-01-10 12:33:19', NULL, NULL, NULL, 'Login'),
(235, '196', '2019-01-10 12:45:52', NULL, NULL, NULL, 'Login'),
(236, '196', '2019-01-10 15:01:49', NULL, NULL, NULL, 'Login'),
(237, '196', '2019-01-10 15:02:51', NULL, NULL, NULL, 'Login'),
(238, '196', '2019-01-10 15:05:25', NULL, NULL, NULL, 'Login'),
(239, '196', '2019-01-10 15:08:18', NULL, NULL, NULL, 'Login'),
(240, '196', '2019-01-10 15:09:08', NULL, NULL, NULL, 'Login'),
(241, '196', '2019-01-11 10:33:55', NULL, NULL, NULL, 'Login'),
(242, '196', '2019-01-11 10:38:41', NULL, NULL, NULL, 'Login'),
(243, '196', '2019-01-11 10:39:08', NULL, NULL, NULL, 'Login'),
(244, '196', '2019-01-11 10:39:48', NULL, NULL, NULL, 'Login'),
(245, '196', '2019-01-11 10:40:10', NULL, NULL, NULL, 'Login'),
(246, '196', '2019-01-11 10:58:16', NULL, NULL, NULL, 'Login'),
(247, '196', '2019-01-11 11:07:59', NULL, NULL, NULL, 'Login'),
(248, '196', '2019-01-15 09:25:39', NULL, NULL, NULL, 'Login'),
(249, '115', '2019-01-15 09:28:35', NULL, NULL, NULL, 'Login'),
(250, '196', '2019-01-15 09:29:06', NULL, NULL, NULL, 'Login'),
(251, '196', '2019-01-15 09:30:32', NULL, NULL, NULL, 'Login'),
(252, '115', '2019-01-15 09:30:39', NULL, NULL, NULL, 'Login'),
(253, '196', '2019-01-16 13:17:06', NULL, NULL, NULL, 'Login'),
(254, '196', '2019-01-23 16:31:26', NULL, NULL, NULL, 'Login'),
(255, '1', '2019-01-23 16:31:52', NULL, NULL, NULL, 'Login'),
(256, '115', '2019-01-23 16:35:53', 'http://knowledge.mgt/knowledge/knowledgedetail?id=2', NULL, NULL, 'DETAIL KNOWLEDGE'),
(257, '115', '2019-01-23 16:35:59', 'http://knowledge.mgt/knowledge/knowledgedetail?id=2', NULL, NULL, 'DETAIL KNOWLEDGE'),
(258, '1', '2019-01-23 16:36:08', NULL, NULL, NULL, 'Login'),
(259, '115', '2019-01-23 17:10:45', 'http://knowledge.mgt/knowledge/knowledgedetail?id=2', NULL, NULL, 'DETAIL KNOWLEDGE'),
(260, '1', '2019-01-23 17:10:47', NULL, NULL, NULL, 'Login'),
(261, '1', '2019-01-23 17:11:00', NULL, NULL, NULL, 'Login'),
(262, '1', '2019-01-23 17:11:39', NULL, NULL, NULL, 'Login'),
(263, '1', '2019-01-23 17:11:59', NULL, NULL, NULL, 'Login'),
(264, '1', '2019-01-23 17:12:43', NULL, NULL, NULL, 'Login'),
(265, '1', '2019-01-23 17:14:30', NULL, NULL, NULL, 'Login'),
(266, '1', '2019-01-23 17:14:44', NULL, NULL, NULL, 'Login'),
(267, '115', '2019-01-23 17:15:30', 'http://knowledge.mgt/knowledge/knowledgedetail?id=2', NULL, NULL, 'DETAIL KNOWLEDGE'),
(268, '115', '2019-01-23 17:15:37', 'http://knowledge.mgt/knowledge/knowledgedetail?id=2', NULL, NULL, 'DETAIL KNOWLEDGE'),
(269, '1', '2019-01-23 17:15:39', NULL, NULL, NULL, 'Login'),
(270, '1', '2019-01-23 17:16:15', NULL, NULL, NULL, 'Login'),
(271, '1', '2019-01-23 17:17:48', NULL, NULL, NULL, 'Login'),
(272, '196', '2019-01-23 17:18:03', 'http://knowledge.mgt/knowledge/knowledgedetail?id=44', NULL, NULL, 'DETAIL KNOWLEDGE'),
(273, '115', '2019-01-23 17:18:25', 'http://knowledge.mgt/knowledge/knowledgedetail?id=2', NULL, NULL, 'DETAIL KNOWLEDGE'),
(274, '115', '2019-01-23 17:18:25', 'http://knowledge.mgt/knowledge/knowledgedetail?id=2', NULL, NULL, 'DETAIL KNOWLEDGE'),
(275, '1', '2019-01-23 17:18:27', NULL, NULL, NULL, 'Login'),
(276, '196', '2019-01-23 17:18:57', 'http://knowledge.mgt/knowledge/knowledgedetail?id=3', NULL, NULL, 'DETAIL KNOWLEDGE'),
(277, '196', '2019-01-23 17:19:02', 'http://knowledge.mgt/knowledge/knowledgedetail?id=3', NULL, NULL, 'DETAIL KNOWLEDGE'),
(278, '196', '2019-01-23 18:53:06', 'http://knowledge.mgt/knowledge/knowledgedetail?id=3', NULL, NULL, 'DETAIL KNOWLEDGE'),
(279, '196', '2019-01-23 18:53:31', 'http://knowledge.mgt/knowledge/knowledgedetail?id=3', NULL, NULL, 'DETAIL KNOWLEDGE'),
(280, '1', '2019-01-23 18:53:33', NULL, NULL, NULL, 'Login'),
(281, '196', '2019-01-23 18:53:34', 'http://knowledge.mgt/knowledge/knowledgedetail?id=3', NULL, NULL, 'DETAIL KNOWLEDGE'),
(282, '196', '2019-01-23 18:54:03', 'http://knowledge.mgt/knowledge/knowledgedetail?id=44', NULL, NULL, 'DETAIL KNOWLEDGE'),
(283, '196', '2019-01-23 18:54:20', 'http://knowledge.mgt/knowledge/knowledgedetail?id=44', NULL, NULL, 'DETAIL KNOWLEDGE'),
(284, '196', '2019-01-23 18:54:30', 'http://knowledge.mgt/knowledge/knowledgedetail?id=3', NULL, NULL, 'DETAIL KNOWLEDGE'),
(285, '1', '2019-01-23 18:54:32', NULL, NULL, NULL, 'Login'),
(286, '196', '2019-01-23 18:54:33', 'http://knowledge.mgt/knowledge/knowledgedetail?id=3', NULL, NULL, 'DETAIL KNOWLEDGE'),
(287, '196', '2019-01-23 18:57:08', NULL, NULL, NULL, 'Login'),
(288, '196', '2019-01-23 18:57:16', 'http://knowledge.mgt/knowledge/knowledgedetail?id=3', NULL, NULL, 'DETAIL KNOWLEDGE'),
(289, '196', '2019-01-23 18:57:19', NULL, NULL, NULL, 'Login'),
(290, '196', '2019-01-23 18:57:20', 'http://knowledge.mgt/knowledge/knowledgedetail?id=3', NULL, NULL, 'DETAIL KNOWLEDGE'),
(291, '241', '2019-01-23 18:57:40', NULL, NULL, NULL, 'Login'),
(292, '196', '2019-01-31 11:41:07', NULL, NULL, NULL, 'Login'),
(293, '196', '2019-01-31 11:42:17', NULL, NULL, NULL, 'Login');

-- --------------------------------------------------------

--
-- Table structure for table `n_users`
--

CREATE TABLE `n_users` (
  `user_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `password` varchar(120) NOT NULL,
  `language` varchar(45) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `create_dtm` datetime NOT NULL,
  `active_dtm` datetime DEFAULT NULL,
  `terminate_dtm` datetime DEFAULT NULL,
  `user_status_id` int(4) NOT NULL,
  `auth_type_id` int(4) NOT NULL DEFAULT '0',
  `auth_dtm` datetime DEFAULT NULL,
  `nonce` varchar(32) DEFAULT NULL,
  `token` varchar(32) DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `user_group_id` int(3) DEFAULT NULL,
  `user_relation` varchar(45) DEFAULT NULL,
  `registration_id` varchar(200) DEFAULT NULL,
  `reg_id_ios` varchar(200) DEFAULT NULL,
  `privy_id` varchar(30) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'NON FITA'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `n_users`
--

INSERT INTO `n_users` (`user_id`, `code`, `password`, `language`, `entity_id`, `create_dtm`, `active_dtm`, `terminate_dtm`, `user_status_id`, `auth_type_id`, `auth_dtm`, `nonce`, `token`, `attempts`, `user_group_id`, `user_relation`, `registration_id`, `reg_id_ios`, `privy_id`, `emp_id`, `status`) VALUES
(1, '825801', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2019-01-23 18:54:32', '', '', 0, 2, 'Employee', '', '', '', 1, 'FITA'),
(2, '720597', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 2, 'NON FITA'),
(3, '730446', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 3, 'NON FITA'),
(4, '631804', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 4, 'NON FITA'),
(5, '835540', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 5, 'NON FITA'),
(6, '905215', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 6, 'NON FITA'),
(7, '875405', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 7, 'NON FITA'),
(8, '896031', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 8, 'NON FITA'),
(9, '810075', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 9, 'NON FITA'),
(10, '825578', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 10, 'NON FITA'),
(11, '875561', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 11, 'NON FITA'),
(12, '760035', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 12, 'NON FITA'),
(13, '875403', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 13, 'NON FITA'),
(14, '730612', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 14, 'NON FITA'),
(15, '916091', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 15, 'NON FITA'),
(16, '675213', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 16, 'NON FITA'),
(17, '755444', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 17, 'NON FITA'),
(18, '840147', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 18, 'NON FITA'),
(19, '755445', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 19, 'NON FITA'),
(20, '895652', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 20, 'NON FITA'),
(21, '765536', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 21, 'NON FITA'),
(22, '855877', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 22, 'NON FITA'),
(23, '865402', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 23, 'NON FITA'),
(24, '850134', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 24, 'NON FITA'),
(25, '800037', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 25, 'NON FITA'),
(26, '925893', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 26, 'NON FITA'),
(27, '845660', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 27, 'NON FITA'),
(28, '805690', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 28, 'NON FITA'),
(29, '880090', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 29, 'NON FITA'),
(30, '720403', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 30, 'NON FITA'),
(31, '855638', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 31, 'NON FITA'),
(32, '880084', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 32, 'NON FITA'),
(33, '925869', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 33, 'NON FITA'),
(34, '875408', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 34, 'NON FITA'),
(35, '720536', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 35, 'NON FITA'),
(36, '955241', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 36, 'NON FITA'),
(37, '825786', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 37, 'NON FITA'),
(38, '660331', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 38, 'NON FITA'),
(39, '795644', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 39, 'NON FITA'),
(40, '870077', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 40, 'NON FITA'),
(41, '905728', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 41, 'NON FITA'),
(42, '804258', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 42, 'NON FITA'),
(43, '855432', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 43, 'NON FITA'),
(44, '875404', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 44, 'NON FITA'),
(45, '835709', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 45, 'NON FITA'),
(46, '765445', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 46, 'NON FITA'),
(47, '905791', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 47, 'NON FITA'),
(48, '888064', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 48, 'NON FITA'),
(49, '740311', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 49, 'NON FITA'),
(50, '875409', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 50, 'NON FITA'),
(51, '735564', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 51, 'NON FITA'),
(52, '720213', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 52, 'NON FITA'),
(53, '651003', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 53, 'NON FITA'),
(54, '876841', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 54, 'NON FITA'),
(55, '835539', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 55, 'NON FITA'),
(56, '740264', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 56, 'NON FITA'),
(57, '730344', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 57, 'NON FITA'),
(58, '650994', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 58, 'NON FITA'),
(59, '870075', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 59, 'NON FITA'),
(60, '890101', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 60, 'NON FITA'),
(61, '730421', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 61, 'NON FITA'),
(62, '925653', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 62, 'NON FITA'),
(63, '740306', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 63, 'NON FITA'),
(64, '825577', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 64, 'NON FITA'),
(65, '800061', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 65, 'NON FITA'),
(66, '825574', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 66, 'NON FITA'),
(67, '755442', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 67, 'NON FITA'),
(68, '805544', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 68, 'NON FITA'),
(69, '850080', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 69, 'NON FITA'),
(70, '905447', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 70, 'NON FITA'),
(71, '765447', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 71, 'NON FITA'),
(72, '905451', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 72, 'NON FITA'),
(73, '840138', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 73, 'NON FITA'),
(74, '', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 74, 'NON FITA'),
(75, '825572', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 75, 'NON FITA'),
(76, '845659', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 76, 'NON FITA'),
(77, '875571', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 77, 'NON FITA'),
(78, '710375', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 78, 'NON FITA'),
(79, '890089', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 79, 'NON FITA'),
(80, '906154', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 80, 'NON FITA'),
(81, '785586', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 81, 'NON FITA'),
(82, '840124', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 82, 'NON FITA'),
(83, '845643', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 83, 'NON FITA'),
(84, '885626', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 84, 'NON FITA'),
(85, '740259', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 85, 'NON FITA'),
(86, '805687', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 86, 'NON FITA'),
(87, '865714', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 87, 'NON FITA'),
(88, '800066', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 88, 'NON FITA'),
(89, '915521', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 89, 'NON FITA'),
(90, '730418', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 90, 'NON FITA'),
(91, '780053', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 91, 'NON FITA'),
(92, '800069', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 92, 'NON FITA'),
(93, '805683', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 93, 'NON FITA'),
(94, '655177', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 94, 'NON FITA'),
(95, '855430', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 95, 'NON FITA'),
(96, '815539', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 96, 'NON FITA'),
(97, '935091', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 97, 'NON FITA'),
(98, '845516', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 98, 'NON FITA'),
(99, '888260', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 99, 'NON FITA'),
(100, '875406', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 100, 'NON FITA'),
(101, '855431', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 101, 'NON FITA'),
(102, '670141', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 102, 'NON FITA'),
(103, '935389', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 103, 'NON FITA'),
(104, '860063', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 104, 'NON FITA'),
(105, '906336', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 105, 'NON FITA'),
(106, '928564', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 106, 'NON FITA'),
(107, '765446', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 107, 'NON FITA'),
(108, '805657', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 108, 'NON FITA'),
(109, '905450', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 109, 'NON FITA'),
(110, '905442', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 110, 'NON FITA'),
(111, '720378', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 111, 'NON FITA'),
(112, '835905', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 112, 'NON FITA'),
(113, '865557', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 113, 'NON FITA'),
(114, '865429', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 114, 'NON FITA'),
(115, '760050', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2019-01-15 09:30:39', '', '', 0, 1, 'Employee', '', '', '', 115, 'FITA'),
(116, '685271', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 116, 'NON FITA'),
(117, '905441', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 117, 'NON FITA'),
(118, '915514', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 118, 'NON FITA'),
(119, '641739', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 119, 'NON FITA'),
(120, '880083', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 120, 'NON FITA'),
(121, '715386', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 121, 'NON FITA'),
(122, '890087', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 122, 'NON FITA'),
(123, '885355', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 123, 'NON FITA'),
(124, '755443', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 124, 'NON FITA'),
(125, '632256', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 125, 'NON FITA'),
(126, '735445', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 126, 'NON FITA'),
(127, '720481', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 127, 'NON FITA'),
(128, '640824', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 128, 'NON FITA'),
(129, '820068', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 129, 'NON FITA'),
(130, '740174', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 130, 'NON FITA'),
(131, '790103', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 131, 'NON FITA'),
(132, '730379', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 132, 'NON FITA'),
(133, '641455', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 133, 'NON FITA'),
(134, '650463', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 134, 'NON FITA'),
(135, '925639', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 135, 'NON FITA'),
(136, '855572', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 136, 'NON FITA'),
(137, '835576', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 137, 'NON FITA'),
(138, '925715', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 138, 'NON FITA'),
(139, '795480', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 139, 'NON FITA'),
(140, '670344', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 140, 'NON FITA'),
(141, '865401', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 141, 'NON FITA'),
(142, '800009', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 142, 'NON FITA'),
(143, '865403', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 143, 'NON FITA'),
(144, '915617', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 144, 'NON FITA'),
(145, '935390', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 145, 'NON FITA'),
(146, '740061', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 146, 'NON FITA'),
(147, '925826', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 147, 'NON FITA'),
(148, '632958', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 148, 'NON FITA'),
(149, '720555', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 149, 'NON FITA'),
(150, '621434', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 150, 'NON FITA'),
(151, '625234', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 151, 'NON FITA'),
(152, '', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 152, 'NON FITA'),
(153, '', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 153, 'NON FITA'),
(154, '935391', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 154, 'NON FITA'),
(155, '730265', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 155, 'NON FITA'),
(156, '710373', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 156, 'NON FITA'),
(157, '855865', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 157, 'NON FITA'),
(158, '750074', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 158, 'NON FITA'),
(159, '790080', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 159, 'NON FITA'),
(160, '905216', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 160, 'NON FITA'),
(161, '815541', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 161, 'NON FITA'),
(162, '734097', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 162, 'NON FITA'),
(163, '845518', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 163, 'NON FITA'),
(164, '885352', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 164, 'NON FITA'),
(165, '875407', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 165, 'NON FITA'),
(166, '905790', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 2, '2005-12-18 00:00:00', '', '', 0, 1, 'Employee', '', '', '', 166, 'NON FITA'),
(167, '740045', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 167, 'NON FITA'),
(168, '640764', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 168, 'NON FITA'),
(169, '915547', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 169, 'NON FITA'),
(170, '825576', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 170, 'NON FITA'),
(171, '865840', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 171, 'NON FITA'),
(172, '925107', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 172, 'NON FITA'),
(173, '845517', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 173, 'NON FITA'),
(174, '935606', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 174, 'NON FITA'),
(175, '855777', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 175, 'NON FITA'),
(176, '855433', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 176, 'NON FITA'),
(177, '770035', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 177, 'NON FITA'),
(178, '730216', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 178, 'NON FITA'),
(179, '720509', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 179, 'NON FITA'),
(180, '935450', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 180, 'NON FITA'),
(181, '928211', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 181, 'NON FITA'),
(182, '651213', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 182, 'NON FITA'),
(183, '928147', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 183, 'NON FITA'),
(184, '930163', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 184, 'NON FITA'),
(185, '720479', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 185, 'NON FITA'),
(186, '745485', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 186, 'NON FITA'),
(187, '865938', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 187, 'NON FITA'),
(188, '945017', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 188, 'NON FITA'),
(189, '680058', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2018-12-05 21:48:30', '', '', 0, 2, 'Employee', '', '', '', 189, 'NON FITA'),
(190, '895695', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 190, 'NON FITA'),
(191, '715471', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 191, 'NON FITA'),
(192, '890088', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 192, 'NON FITA'),
(193, '730333', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 193, 'NON FITA'),
(194, '825573', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 194, 'NON FITA'),
(195, '910197', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 195, 'NON FITA'),
(196, '750037', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 2, '2019-01-31 11:42:17', '', '', 0, 1, 'Employee', '', '', '', 196, 'FITA'),
(197, '905217', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 197, 'NON FITA'),
(198, '790084', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 198, 'NON FITA'),
(199, '', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 199, 'NON FITA'),
(200, '865848', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 200, 'NON FITA'),
(201, '730089', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 201, 'NON FITA'),
(202, '845644', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 202, 'NON FITA'),
(203, '860158', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 203, 'NON FITA'),
(204, '650196', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 204, 'NON FITA'),
(205, '650605', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 205, 'NON FITA'),
(206, '875273', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 206, 'NON FITA'),
(207, '720235', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 207, 'NON FITA');
INSERT INTO `n_users` (`user_id`, `code`, `password`, `language`, `entity_id`, `create_dtm`, `active_dtm`, `terminate_dtm`, `user_status_id`, `auth_type_id`, `auth_dtm`, `nonce`, `token`, `attempts`, `user_group_id`, `user_relation`, `registration_id`, `reg_id_ios`, `privy_id`, `emp_id`, `status`) VALUES
(208, '865400', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 208, 'NON FITA'),
(209, '835541', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 209, 'NON FITA'),
(210, '915546', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 210, 'NON FITA'),
(211, '925868', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 211, 'NON FITA'),
(212, '730219', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 212, 'NON FITA'),
(213, '825711', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 213, 'NON FITA'),
(214, '700648', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 214, 'NON FITA'),
(215, '955201', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 215, 'NON FITA'),
(216, '825789', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 216, 'NON FITA'),
(217, '955244', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 217, 'NON FITA'),
(218, '895653', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 218, 'NON FITA'),
(219, '780037', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 219, 'NON FITA'),
(220, '876602', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 220, 'NON FITA'),
(221, '840129', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 221, 'NON FITA'),
(222, '915616', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 222, 'NON FITA'),
(223, '895630', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 223, 'NON FITA'),
(224, '730038', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 224, 'NON FITA'),
(225, '895432', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 225, 'NON FITA'),
(226, '845661', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 226, 'NON FITA'),
(227, '720379', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 227, 'NON FITA'),
(228, '720401', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 228, 'NON FITA'),
(229, '805686', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 229, 'NON FITA'),
(230, '840121', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 230, 'NON FITA'),
(231, '642190', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 231, 'NON FITA'),
(232, '895416', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 232, 'NON FITA'),
(233, '720132', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 233, 'NON FITA'),
(234, '815538', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 234, 'NON FITA'),
(235, '825575', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 235, 'NON FITA'),
(236, '925273', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 236, 'NON FITA'),
(237, '855559', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 237, 'NON FITA'),
(238, '885351', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 238, 'NON FITA'),
(239, '730320', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 239, 'NON FITA'),
(240, '785607', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 240, 'NON FITA'),
(241, '641931', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2019-01-23 18:57:40', '', '', 0, 2, 'Employee', '', '', '', 241, 'NON FITA'),
(242, '720082', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 242, 'NON FITA'),
(243, '730054', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 243, 'NON FITA'),
(244, '935116', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 244, 'NON FITA'),
(245, '755522', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 245, 'NON FITA'),
(246, '730466', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 246, 'NON FITA'),
(247, '848157', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 247, 'NON FITA'),
(248, '895696', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 248, 'NON FITA'),
(249, '875410', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 249, 'NON FITA'),
(250, '928210', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 250, 'NON FITA'),
(251, '920197', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 251, 'NON FITA'),
(252, '650859', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 252, 'NON FITA'),
(253, '730372', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 253, 'NON FITA'),
(254, '855434', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 254, 'NON FITA'),
(255, '800078', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 255, 'NON FITA'),
(256, '855429', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 256, 'NON FITA'),
(257, '680066', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 257, 'NON FITA'),
(258, '790063', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 258, 'NON FITA'),
(259, '795594', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 259, 'NON FITA'),
(260, '810048', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 260, 'NON FITA'),
(261, '855876', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 261, 'NON FITA'),
(262, '775491', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 262, 'NON FITA'),
(263, '770044', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 263, 'NON FITA'),
(264, '890086', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 264, 'NON FITA'),
(265, '895433', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 265, 'NON FITA'),
(266, '835708', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 266, 'NON FITA'),
(267, '660212', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 267, 'NON FITA'),
(268, '825580', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 268, 'NON FITA'),
(269, '705379', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 269, 'NON FITA'),
(270, '825802', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2019-01-03 10:06:12', '', '', 0, 2, 'Employee', '', '', '', 270, 'NON FITA'),
(271, '905449', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 271, 'NON FITA'),
(272, '865614', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 272, 'NON FITA'),
(273, '815540', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 273, 'NON FITA'),
(274, '885752', '$2y$12$i9FgxsL5H8rgbV.N3zVcq.Go9bmwAGnQYALTPffB6QIayXvLKwS1W', 'id', 0, '2005-12-18 00:00:00', '2005-12-18 00:00:00', '2005-12-18 00:00:00', 3, 1, '2005-12-18 00:00:00', '', '', 0, 2, 'Employee', '', '', '', 274, 'NON FITA');

-- --------------------------------------------------------

--
-- Table structure for table `params`
--

CREATE TABLE `params` (
  `param_id` int(11) NOT NULL,
  `param_group` varchar(20) DEFAULT NULL,
  `param_code` varchar(20) DEFAULT NULL,
  `param_name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `params`
--

INSERT INTO `params` (`param_id`, `param_group`, `param_code`, `param_name`) VALUES
(5, 'ACCESS_PERMISSION', 'PRIVATE', 'Private'),
(4, 'APPROVAL_STATUS', '3', 'Returned'),
(2, 'APPROVAL_STATUS', '1', 'Approved'),
(3, 'APPROVAL_STATUS', '2', 'Rejected'),
(7, 'ACCESS_PERMISSION', 'DEPARTMENT', 'Unit'),
(6, 'ACCESS_PERMISSION', 'PUBLIC', 'Public'),
(1, 'APPROVAL_STATUS', '0', 'Waiting'),
(8, 'FILE_ACCESS', 'PRIVATE_FILE', 'Private'),
(9, 'FILE_ACCESS', 'PUBLIC_FILE', 'Public'),
(10, 'DATA_STATUS', 'DRAFT', 'Draft'),
(11, 'APPROVAL_TAKE', 'YES', 'Yes'),
(12, 'APPROVAL_TAKE', 'NO', 'No'),
(13, 'APPROVAL_STATUS', '-1', 'Submit'),
(14, 'DATA_STATUS', 'REMOVE', 'Remove'),
(15, 'DATA_STATUS', 'INBOX', 'Inbox'),
(16, 'KNOWLEDGE_STATUS', 'PUBLISH', 'Publish'),
(17, 'KNOWLEDGE_STATUS', 'UNPUBLISH', 'Unpublish'),
(18, 'ACCESS_PERMISSION', 'DIRECTORATE', 'Directorate'),
(19, 'ACCESS_PERMISSION', '3', 'ALL Manager'),
(20, 'ACCESS_PERMISSION', '4', 'ALL VP'),
(21, 'HC', 'YES', 'Yes'),
(22, 'HC', 'NO', 'No'),
(23, 'APPROVAL_STATUS', '-2', 'Open'),
(24, 'DATA_STATUS', 'RECORDED', 'Recorded'),
(25, 'ACCESS_PERMISSION', 'ALLMVP', 'ALL Superior'),
(26, 'ACCESS_PERMISSION', 'FITA', 'ALL FITA'),
(36, 'ACCESS_PERMISSION', '5', 'ALL EVP'),
(37, 'ACCESS_PERMISSION', '6', 'ALL EGM'),
(38, 'ACCESS_PERMISSION', '7', 'ALL Director');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `pos_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`pos_id`, `department_id`, `name`) VALUES
(101, 0, 'CHIEF EXECUTIVE OFFICER'),
(111, 0, 'CHIEF FINANCE & BUSINESS PARTNER OFFICER'),
(121, 0, 'CHIEF TECHNOLOGY OFFICER'),
(131, 0, 'CHIEF COMMERCIAL OFFICER'),
(1241, 124, 'TECHNOLOGY EXPERT/ADVISOR'),
(1401, 14, 'GLOBAL BUSINESS OPERATION EVP'),
(1402, 14, 'GLOBAL BUSINESS OPERATION EXPERT/ADVISOR'),
(1601, 16, 'VOICE & MOBILITY SALES EVP'),
(1602, 16, 'VOICE COMMERCIAL OPERATION MANAGER'),
(1603, 16, 'VOICE COMMERCIAL OPERATION SENIOR OFFICER'),
(1604, 16, 'VOICE COMMERCIAL OPERATION OFFICER'),
(1605, 16, 'VOICE COMMERCIAL OPERATION OFFICER'),
(1606, 16, 'VOICE COMMERCIAL OPERATION OFFICER'),
(1607, 16, 'MOBILITY COMMERCIAL OPERATION MANAGER'),
(1608, 16, 'MOBILITY COMMERCIAL OPERATION SENIOR OFFICER'),
(1609, 16, 'MOBILITY COMMERCIAL OPERATION OFFICER'),
(1701, 17, 'CARRIER ENTERPRISE SALES EVP'),
(10101, 101, '(PJ) LEGAL & COMPLIANCE VP'),
(10102, 101, 'CORPORATE & COMMERCIAL LEGAL MANAGER'),
(10103, 101, 'CORPORATE LEGAL SENIOR OFFICER'),
(10104, 101, 'COMMERCIAL LEGAL SENIOR OFFICER (Voice & Mobility)'),
(10105, 101, 'COMMERCIAL LEGAL SENIOR OFFICER (Carrier Enterprise)'),
(10106, 101, 'CORPORATE & COMMERCIAL LEGAL OFFICER'),
(10107, 101, 'SUBSIDIARY & INVESTMENT LEGAL MANAGER'),
(10108, 101, 'SUBSIDIARY & INVESTMENT LEGAL SENIOR OFFICER'),
(10109, 101, 'SUBSIDIARY & INVESTMENT LEGAL OFFICER'),
(10110, 101, 'PROCUREMENT LEGAL MANAGER'),
(10111, 101, 'PROCUREMENT LEGAL SENIOR OFFICER'),
(10112, 101, 'PROCUREMENT LEGAL OFFICER'),
(10113, 101, 'CORPORATE REGULATORY MANAGER'),
(10114, 101, 'GOVERNMENT & REGULATORY RELATION SENIOR OFFICER'),
(10115, 101, 'COMPLIANCE CONTROL OFFICER '),
(10116, 101, 'CORPORATE & REGULATORY PROGRAM SUPPORT OFFICER'),
(10201, 102, 'CORPORATE SECRETARY VP'),
(10202, 102, 'BOD SECRETARY MANAGER'),
(10203, 102, 'SECRETARY & ADMIN ASSISTANT SENIOR OFFICER'),
(10204, 102, 'SECRETARY OFFICER'),
(10205, 102, 'SECRETARY OFFICER'),
(10206, 102, 'CORPORATE COMMUNICATION & AFFAIRS MANAGER'),
(10207, 102, 'CORPORATE COMMUNICATION SENIOR OFFICER'),
(10208, 102, 'SHAREHOLDER RELATION & EVENT MANAGEMENT OFF'),
(10209, 102, 'MEDIA RELATION & NEWS MANAGEMENT OFFICER'),
(10210, 102, 'KNOWLEDGE MANAGEMENT & GOVERNANCE MANAGER'),
(10211, 102, 'KNOWLEDGE MANAGEMENT SENIOR OFFICER'),
(10212, 102, 'KNOWLEDGE MANAGEMENT OFFICER'),
(10301, 103, 'INTERNAL AUDIT VP'),
(10302, 103, 'FINANCIAL AUDIT MANAGER'),
(10303, 103, 'FINANCIAL AUDIT SENIOR OFFICER'),
(10304, 103, 'FINANCIAL AUDIT OFFICER'),
(10305, 103, 'OPERATIONAL AUDIT MANAGER'),
(10306, 103, 'OPERATIONAL AUDIT SENIOR OFFICER'),
(10307, 103, 'OPERATIONAL AUDIT OFFICER'),
(10308, 103, 'SUBSIDIARY AUDIT MANAGER'),
(10309, 103, 'SUBSIDIARY AUDIT SENIOR OFFICER'),
(10310, 103, 'SUBSIDIARY AUDIT OFFICER'),
(10401, 104, 'TRANSFORMATION MANAGEMENT OFFICE VP'),
(10402, 104, 'TRANSFORMATION MANAGEMENT OFFICE SENIOR EXPERT / ADVISOR'),
(10403, 104, 'EXPERT CHANGE MANAGEMENT'),
(10404, 104, ' TRANSFORMATION MANAGEMENT OFFICE EXPERT'),
(10501, 105, 'CORPORATE STRATEGY VP'),
(10502, 105, 'CORPORATE PLANNING MANAGER '),
(10503, 105, 'STRATEGIC PLANNING SENIOR OFFICER'),
(10504, 105, 'STRATEGY ANALYST SENIOR OFFICER'),
(10505, 105, 'CORPORATE PLANNING ALIGNMENT & DATA SUPPORT OFFICER'),
(10506, 105, 'GROUP PORTFOLIO MANAGER '),
(10507, 105, 'PORTFOLIO MANAGEMENT SENIOR OFFICER'),
(10508, 105, 'PORTFOLIO MANAGEMENT OFFICER'),
(10509, 105, 'BUSINESS EVALUATION & PERFORMANCE DESIGN MANAGER'),
(10510, 105, 'BUSINESS EVALUATION & PERFORMANCE DESIGN SENIOR OFFICER'),
(10511, 105, 'BUSINESS EVALUATION & PERFOMANCE DESIGN OFFICER'),
(11101, 111, 'CORPORATE FINANCE VP'),
(11102, 111, 'CAPITAL & DEBT MANAGEMENT MANAGER'),
(11103, 111, 'CAPITAL MANAGEMENT SENIOR OFFICER'),
(11104, 111, 'DEBT MANAGEMENT SENIOR OFFICER'),
(11105, 111, 'CAPITAL & DEBT DATA ANALYSIS OFFICER'),
(11106, 111, 'CASH MANAGEMENT MANAGER'),
(11107, 111, 'CASH MANAGEMENT SENIOR OFFICER'),
(11108, 111, 'CASH MANAGEMENT OFFICER'),
(11109, 111, 'TAX MANAGER'),
(11110, 111, 'TAX MANAGEMENT SENIOR OFFICER'),
(11111, 111, 'TAX MANAGEMENT OFFICER'),
(11112, 111, 'RISK MANAGEMENT MANAGER'),
(11113, 111, 'NON FINANCIAL RISK SENIOR OFFICER'),
(11114, 111, 'FINANCIAL RISK SENIOR OFFICER'),
(11115, 111, 'RISK ASSESSMENT & DATA SUPPORT OFFICER'),
(11201, 112, 'BUSINESS CONTROLLER VP'),
(11202, 112, 'MANAGEMENT ACCOUNTING MANAGER'),
(11203, 112, 'CAPEX MANAGEMENT SENIOR OFFICER'),
(11204, 112, 'OPEX MANAGEMENT SENIOR OFFICER'),
(11205, 112, 'COSTING & TRANSFER PRICING SENIOR OFFICER'),
(11206, 112, 'MANAGEMENT ACCOUNTING OFFICER'),
(11207, 112, 'BUSINESS PERFORMANCE REPORTING & ANALYSIS MANAGER'),
(11208, 112, 'BUSINESS PERFORMANCE ANALYSIS SENIOR OFFICER'),
(11209, 112, 'BUSINESS PERFORMANCE ANALYSIS SENIOR OFFICER'),
(11210, 112, 'BUSINESS PERFORMANCE CONSOLIDATION OFFICER'),
(11211, 112, 'PERFORMANCE REPORTING OFFICER'),
(11301, 113, 'FINANCIAL ACCOUNTING & ASSET MANAGEMENT VP'),
(11302, 113, 'FINANCIAL SYSTEM & POLICY MANAGER'),
(11303, 113, 'FINANCIAL SYSTEM & POLICY SENIOR OFFICER'),
(11304, 113, 'FINANCIAL SYSTEM & POLICY OFFICER'),
(11305, 113, 'FINANCIAL ACCOUNTING & CONSOLIDATION REPORTING MANAGER'),
(11306, 113, 'CONSOLIDATION PROCESS SENIOR OFFICER'),
(11307, 113, 'INTERCO TRANSACTION & RECONCILIATION SENIOR OFFICER'),
(11308, 113, 'FINANCIAL CONTROLLER SENIOR OFFICER'),
(11309, 113, 'CONSOLIDATION REPORTING OFFICER'),
(11310, 113, 'FINANCIAL CONTROLLER OFFICER'),
(11311, 113, 'FINANCIAL CONTROLLER OFFICER'),
(11312, 113, 'FINANCIAL CONTROLLER OFFICER'),
(11313, 113, 'ASSET MANAGEMENT MANAGER'),
(11314, 113, 'ASSET MANAGEMENT SENIOR OFFICER'),
(11315, 113, 'ASSET MANAGEMENT OFFICER'),
(11316, 113, 'ASSET MANAGEMENT OFFICER'),
(11401, 114, 'SETTLEMENT & BILLING COLLECTION VP'),
(11402, 114, 'BILLING OPERATION MANAGER'),
(11403, 114, 'CARRIER ENTERPRISE BILLING OPERATION SENIOR OFFICER'),
(11404, 114, 'VOICE & MOBILITY BILLING OPERATION SENIOR OFFICER'),
(11405, 114, 'CARRIER ENTERPRISE BILLING OPERATION OFFICER'),
(11406, 114, 'VOICE & MOBILITY BILLING OPERATION OFFICER'),
(11407, 114, 'MANAGER SETTLEMENT VOICE & MOBILITY'),
(11408, 114, 'VOICE & MOBILITY SETTLEMENT SENIOR OFFICER (REG.I)'),
(11409, 114, 'VOICE & MOBILITY SETTLEMENT SENIOR OFFICER (REG.II)'),
(11410, 114, 'VOICE & MOBILITY SETTLEMENT OFFICER (REG.I) '),
(11411, 114, 'VOICE & MOBILITY SETTLEMENT OFFICER (REG.II) '),
(11412, 114, 'MANAGER SETTLEMENT CARRIER & ENTERPRISE'),
(11413, 114, 'CARRIER ENTERPRISE SETTLEMENT SENIOR OFFICER (REG.I) '),
(11414, 114, 'CARRIER ENTERPRISE SETTLEMENT SENIOR OFFICER (REG.II)'),
(11415, 114, 'CARRIER ENTERPRISE SETTLEMENT OFFICER (REG.I)'),
(11416, 114, 'CARRIER ENTERPRISE SETTLEMENT OFFICER (REG.II)'),
(11417, 114, 'MANAGER BILLING ASSURANCE VOICE & MOBILITY'),
(11418, 114, 'VOICE & MOBILITY REVENUE ASSURANCE SENIOR OFFICER'),
(11419, 114, 'VOICE & MOBILITY REVENUE ASSURANCE OFFICER (REG.I)'),
(11420, 114, 'VOICE & MOBILITY REVENUE ASSURANCE OFFICER (REG.II)'),
(11421, 114, 'MANAGER BILLING ASSURANCE CARRIER ENTERPRISE'),
(11422, 114, 'CARRIER ENTERPRISE REVENUE ASSURANCE SENIOR OFFICER'),
(11423, 114, 'CARRIER ENTERPRISE REVENUE ASSURANCE OFFICER'),
(11501, 115, 'HUMAN CAPITAL VP'),
(11502, 115, 'HC STRATEGY MANAGER'),
(11503, 115, 'HUMAN CAPITAL ORGANIZATION DESIGN STRATEGY SENIOR OFFICER'),
(11504, 115, 'HUMAN CAPITAL PARENTING STRATEGY SENIOR OFFICER'),
(11505, 115, 'HUMAN CAPITAL STRATEGY OFFICER'),
(11506, 115, 'HC SYSTEM & POLICY MANAGER'),
(11507, 115, 'HC SYSTEM REMUNERATION & REWARD SENIOR OFFICER'),
(11508, 115, 'HC GENERAL HC POLICY SENIOR OFFICER'),
(11509, 115, 'HC SYSTEM & POLICIES OFFICER'),
(11510, 115, 'PEOPLE DEVELOPMENT MANAGER'),
(11511, 115, 'CAPABILITY DEVELOPMENT SENIOR OFFICER'),
(11512, 115, 'TALENT ACQUISITION & MANAGEMENT SENIOR OFFICER'),
(11513, 115, 'PEOPLE DEVELOPMENT OFFICER'),
(11514, 115, 'HC RELATION & ADMINISTRATION MANAGER'),
(11515, 115, 'HC RELATION & ADMINISTRATION SENIOR OFFICER'),
(11516, 115, 'PAYROLL OFFICER'),
(11517, 115, 'HC RELATION & ADMINISTRATION OFFICER'),
(11518, 115, 'BUSINESS EFFECTIVENESS MANAGER'),
(11519, 115, 'BUSINESS PROCESS MANAGEMENT SENIOR OFFICER'),
(11520, 115, 'QUALITY MANAGEMENT SENIOR OFFICER'),
(11521, 115, 'BUSINESS PROCESS MANAGEMENT OFFICER'),
(11601, 116, 'PROCUREMENT & GENERAL SERVICES VP'),
(11602, 116, 'SUPPLY PLANNING & CONTROL MANAGER'),
(11603, 116, 'SUPPLY MANAGEMENT SENIOR OFFICER'),
(11604, 116, 'SUPPLY CONTROL OFFICER'),
(11605, 116, 'PROCUREMENT MANAGER'),
(11606, 116, 'PROCUREMENT SENIOR OFFICER'),
(11607, 116, 'PROCUREMENT OFFICER'),
(11608, 116, 'PROCUREMENT ADMINISTRATION MANAGER'),
(11609, 116, 'PROCUREMENT SENIOR OFFICER'),
(11610, 116, 'PROCUREMENT OFFICER'),
(11611, 116, 'GENERAL SERVICE, HEALTH & SAFETY ENVIRONMENT MANAGER'),
(11612, 116, 'OFFICE MANAGEMENT & GENERAL AFFAIRS SENIOR OFFICER'),
(11613, 116, 'OCCUPATIONAL HEALTH, SAFETY & ENVIRONMENT SENIOR OFFICER'),
(11614, 116, 'OFFICE MANAGEMENT OFFICER'),
(12101, 121, 'INFRASTRUCTURE PLANNING & DEVELOPMENT VP'),
(12102, 121, 'PLATFORM & DATA CENTER DEVELOPMENT MANAGER'),
(12103, 121, 'DATA CENTER DEVELOPMENT SENIOR OFFICER'),
(12104, 121, 'PLATFORM DEVELOPMENT SENIOR OFFICER'),
(12105, 121, 'DATA CENTER DEVELOPMENT OFFICER'),
(12106, 121, 'PLATFORM DEVELOPMENT OFFICER'),
(12107, 121, 'CONNECTIVITY DEVELOPMENT MANAGER'),
(12108, 121, 'IP CONNECTIVITY DEVELOPMENT SENIOR OFFICER'),
(12109, 121, 'Cable CONNECTIVITY DEVELOPMENT SENIOR OFFICER'),
(12110, 121, 'IP CONNECTIVITY DEVELOPMENT OFFICER'),
(12111, 121, 'Cable CONNECTIVITY DEVELOPMENT OFFICER'),
(12112, 121, 'INFRASTRUCTURE PLANNING & CAPEX BUDGET MANAGER'),
(12113, 121, 'INFRASTRUCTURE PLANNING SENIOR OFFICER'),
(12114, 121, 'CAPEX BUDGET SENIOR OFFICER'),
(12115, 121, 'INFRASTRUCTURE PLANNING & CAPEX BUDGET OFFICER'),
(12116, 121, 'DEPLOYMENT & PROJECT MANAGER'),
(12117, 121, 'DEPLOYMENT & PROJECT SENIOR OFFICER'),
(12118, 121, 'DEPLOYMENT & PROJECT OFFICER'),
(12201, 122, 'NETWORK PERFORMANCE VP'),
(12202, 122, 'CONNECTIVITY PERFORMANCE MANAGER'),
(12203, 122, 'CONNECTIVITY PERFORMANCE SENIOR OFFICER'),
(12204, 122, 'CONNECTIVITY PERFORMANCE OFFICER'),
(12205, 122, 'PLATFORM & DATA CENTER PERFORMANCE MANAGER'),
(12206, 122, 'PLATFORM & DATA CENTER PERFORMANCE SENIOR OFFICER'),
(12207, 122, 'PLATFORM & DATA CENTER PERFORMANCE OFFICER'),
(12208, 122, 'PLATFORM & DATA CENTER PERFORMANCE OFFICER'),
(12209, 122, 'QUALITY & BUDGET MANAGEMENT MANAGER'),
(12210, 122, 'QUALITY MANAGEMENT SENIOR OFFICER'),
(12211, 122, 'BUDGET MANAGEMENT SENIOR OFFICER'),
(12212, 122, 'QUALITY & BUDGET OFFICER'),
(12213, 122, 'FRAUD MANAGEMENT OPERATION MANAGER'),
(12214, 122, 'FRAUD MANAGEMENT SENIOR OFFICER'),
(12215, 122, 'FRAUD MANAGEMENT OFFICER'),
(12301, 123, 'INFORMATION TECHNOLOGY VP'),
(12302, 123, 'IT PLANNING & DEVELOPMENT MANAGER'),
(12303, 123, 'IT PLANNING & DEVELOPMENT SENIOR OFFICER'),
(12304, 123, 'IT PLANNING & DEVELOPMENT OFFICER'),
(12305, 123, 'IT OSS & BSS MANAGER'),
(12306, 123, 'IT OSS SENIOR OFFICER'),
(12307, 123, 'IT BSS SENIOR OFFICER'),
(12308, 123, 'IT OSS& BSS OFFICER'),
(12309, 123, 'IT EMS MANAGER'),
(12310, 123, 'IT EMS SENIOR OFFICER'),
(12311, 123, 'IT EMS OFFICER'),
(12312, 123, 'NMS & DCN OPERATION MANAGER'),
(12313, 123, 'NMS OPERATION SENIOR OFFICER'),
(12314, 123, 'DCN OPERATION SENIOR OFFICER'),
(12315, 123, 'NMS & DCN OFFICER'),
(12316, 123, 'INFORMATION TECHNOLOGY STAFF 1'),
(12317, 123, 'INFORMATION TECHNOLOGY STAFF 2'),
(12318, 123, 'INFORMATION TECHNOLOGY STAFF 3'),
(12319, 123, 'INFORMATION TECHNOLOGY STAFF 4'),
(12320, 123, 'INFORMATION TECHNOLOGY STAFF 5'),
(13101, 131, 'MARKETING & BUSINESS INTELLIGENCE VP'),
(13102, 131, 'MARKETING RESEARCH & STRATEGY MANAGER'),
(13103, 131, 'MARKETING RESEARCH & INTELLIGENT SENIOR OFFICER'),
(13104, 131, 'MARKETING PLANNING & STRATEGY SENIOR OFFICER'),
(13105, 131, 'MARKETING RESEARCH OFFICER'),
(13106, 131, 'MARKETING COMMUNICATION MANAGER'),
(13107, 131, 'PROMOTION & EVENT SENIOR OFFICER'),
(13108, 131, 'MARKETING CONTENT & COMMUNICATION CHANNEL SENIOR OFFICER'),
(13109, 131, 'COMMUNITY & EVENT MANAGEMENT OFFICER'),
(13110, 131, 'ACCOUNT TEAM MANAGEMENT MANAGER'),
(13111, 131, 'ACCOUNT TEAM DEVELOPMENT SENIOR OFFICER'),
(13112, 131, 'ACCOUNT TEAM DEVELOPMENT OFFICER'),
(13113, 131, 'BUSINESS INTELLIGENCE & PRODUCT PERFORMANCE MANAGER'),
(13114, 131, 'PRODUCT PERFORMANCE SENIOR OFFICER'),
(13115, 131, 'BUSINESS INTELLIGENCE SENIOR OFFICER'),
(13116, 131, 'BUSINESS INTELLIGENCE & PRODUCT PERFORMANCE OFFICER'),
(13201, 132, 'PRODUCT MANAGEMENT VP'),
(13202, 132, 'INTERNET & CONTENT MANAGER'),
(13203, 132, 'INTERNET &  CONTENT SENIOR OFFICER'),
(13204, 132, 'INTERNET &  CONTENT  OFFICER '),
(13205, 132, 'SOLUTION SERVICES MANAGER'),
(13206, 132, 'SOLUTION SERVICES SENIOR OFFICER'),
(13207, 132, 'SOLUTION SERVICES OFFICER'),
(13208, 132, 'NETWORK & CONNECTIVITY MANAGER'),
(13209, 132, 'NETWORK & DATA SERVICES SENIOR OFFICER'),
(13210, 132, 'NETWORK & DATA SERVICES OFFICER'),
(13211, 132, 'DATA CENTER & CLOUD MANAGER'),
(13212, 132, 'DATA CENTER & CLOUD SENIOR OFFICER'),
(13213, 132, 'DATA CENTER SOFFICER'),
(13301, 133, 'PRODUCT/SERVICE INNOVATION AND DEVELOPMENT VP'),
(13302, 133, 'NEW P/S INNOVATION & DEVELOPMENT MANAGER I'),
(13303, 133, 'NEW P/S INNOVATION & DEVELOPMENT MANAGER II'),
(13304, 133, 'NEW P/S INNOVATION & DEVELOPMENT SENIOR OFFICER'),
(13305, 133, 'NEW P/S INNOVATION & DEVELOPMENT OFFICER'),
(13306, 133, 'NEW P/S INNOVATION & DEVELOPMENT OFFICER'),
(13307, 133, 'NEW P/S EVALUATION & COMMERCIALIZATION MANAGER'),
(13308, 133, 'NEW P/S EVALUATION & COMMERCIALIZATION SENIOR OFFICER'),
(13309, 133, 'NEW P/S EVALUATION & COMMERCIALIZATION OFFICER'),
(13401, 134, 'PARTNERSHIP & SOURCING VP'),
(13402, 134, 'PARTNERSHIP & SOURCING REGION I MANAGER'),
(13403, 134, 'PARTNERSHIP & SOURCING REGION I SENIOR OFFICER'),
(13404, 134, 'PARTNERSHIP & SOURCING REGION I OFFICER'),
(13405, 134, 'PARTNERSHIP & SOURCING REGION II MANAGER'),
(13406, 134, 'PARTNERSHIP & SOURCING REGION II SENIOR OFFICER'),
(13407, 134, 'PARTNERSHIP & SOURCING REGION II OFFICER'),
(13408, 134, 'PARTNERSHIP & SOURCING  REGION III MANAGER'),
(13409, 134, 'PARTNERSHIP & SOURCING REGION III SENIOR OFFICER'),
(13410, 134, 'PARTNERSHP & SOURCING REGION III OFFICER'),
(14101, 141, 'STRATEGIC INVESTMENT VP'),
(14102, 141, 'STRATEGIC INVESTMENT MANAGER'),
(14103, 141, 'STRATEGIC INVESTMENT SENIOR OFFICER'),
(14104, 141, 'STRATEGIC INVESTMENT OFFICER'),
(14201, 142, 'SYNERGY & PROJECT MANAGEMENT VP'),
(14202, 142, 'GROUP SYNERGY MANAGER'),
(14203, 142, 'SYNERGY SENIOR OFFICER'),
(14204, 142, 'SYNERGY OFFICER '),
(14205, 142, 'PROJECT MANAGEMENT MANAGER I'),
(14206, 142, 'PROJECT MANAGEMENT SENIOR OFFICER'),
(14207, 142, 'PROJECT MANAGEMENT OFFICER'),
(14208, 142, 'PROJECT MANAGEMENT MANAGER II'),
(14209, 142, 'PROJECT MANAGEMENT SENIOR OFFICER'),
(14210, 142, 'PROJECT MANAGEMENT OFFICER'),
(14301, 143, 'INTERNATIONAL BUSINESS OPERATION VP'),
(14302, 143, 'INTERNATIONAL BUSINESS OPERATION REGION I MANAGER'),
(14303, 143, 'INTERNATIONAL BUSINESS OPERATION REGION I SENIOR OFFICER'),
(14304, 143, 'INTERNATIONAL BUSINESS OPERATION REGION I OFFICER'),
(14305, 143, 'INTERNATIONAL BUSINESS OPERATION REGION II MANAGER'),
(14306, 143, 'INTERNATIONAL BUSINESS OPERATION REGION II SENIOR OFFICER'),
(14307, 143, 'INTERNATIONAL BUSINESS OPERATION REGION II OFFICER'),
(14308, 143, 'INTERNATIONAL BUSINESS OPERATION REGION III MANAGER'),
(14309, 143, 'INTERNATIONAL BUSINESS OPERATION REGION III SENIOR OFFICER'),
(14310, 143, 'INTERNATIONAL BUSINESS OPERATION REGION III OFFICER'),
(14311, 143, 'RESEARCH & BUSINESS DEVELOPMENT MANAGER'),
(14312, 143, 'RESEARCH & BUSINESS DEVELOPMENT SENIOR OFFICER'),
(14313, 143, 'RESEARCH & BUSINESS DEVELOPMENT OFFICER'),
(15001, 15, 'GLOBAL NETWORK OPERATION EVP'),
(15002, 15, 'WEST REGION REPRESENTATIVE OFFICE MANAGER'),
(15003, 15, 'WEST REGION REPRESENTATIVE SENIOR OFFICER'),
(15004, 15, 'WEST REGION REPRESENTATIVE OFFICER'),
(15005, 15, 'WEST REGION REPRESENTATIVE OFFICER'),
(15006, 15, 'EAST REGION REPRESENTATIVE OFFICE MANAGER'),
(15007, 15, 'EAST REGION REPRESENTATIVE SENIOR OFFICER'),
(15008, 15, 'EAST REGION REPRESENTATIVE SENIOR OFFICER'),
(15009, 15, 'EAST REGION REPRESENTATIVE OFFICER'),
(15010, 15, 'EAST REGION REPRESENTATIVE OFFICER'),
(15101, 151, 'NETWORK OPERATION READINESS VP'),
(15102, 151, 'VOICE & SIGNALLING READINESS MANAGER'),
(15103, 151, 'VOICE & SIGNALING READINESS SENIOR OFFICER'),
(15104, 151, 'VOICE & SIGNALING READINESS OFFICER'),
(15105, 151, 'CONNECTIVITY READINESS MANAGER'),
(15106, 151, 'CONNECTIVITY READINESS MANAGER II'),
(15107, 151, 'CONNECTIVITY READINESS SENIOR OFFICER'),
(15108, 151, 'CONNECTIVITY READINESS OFFICER'),
(15109, 151, 'CONNECTIVITY READINESS OFFICER'),
(15110, 151, 'DIGITAL READINESS MANAGER'),
(15111, 151, 'DIGITAL READINESS SENIOR OFFICER'),
(15112, 151, 'DIGITAL READINESS OFFICER'),
(15113, 151, 'OPERATION PARTNERSHIP MANAGEMENT MANAGER'),
(15114, 151, 'OPERATION PARTNERSHIP SENIOR OFFICER'),
(15115, 151, 'OPERATION PARTNERSHIP OFFICER'),
(15201, 152, 'VOICE & SIGNALLING OPERATION VP'),
(15202, 152, 'VOICE & SIGNALLING OPERATION MANAGER I'),
(15203, 152, 'VOICE & SIGNALING SENIOR OFFICER I'),
(15204, 152, 'VOICE & SIGNALLING OFFICER I'),
(15205, 152, 'VOICE & SIGNALLING OPERATION MANAGER II'),
(15206, 152, 'VOICE & SIGNALLING SENIOR OFFICER II'),
(15207, 152, 'VOICE & SIGNALLING OFFICER II'),
(15208, 152, 'VOICE & SIGNALLING OPERATION MANAGER III'),
(15209, 152, 'VOICE & SIGNALLING SENIOR OFFICER III'),
(15210, 152, 'VOICE & SIGNALLING OFFICER III'),
(15211, 152, 'VOICE & SIGNALLING OPERATION MANAGER IV'),
(15212, 152, 'VOICE & SIGNALLING SENIOR OFFICER IV'),
(15213, 152, 'VOICE & SIGNALLING OFFICER IV'),
(15301, 153, 'CONNECTIVITY OPERATION VP'),
(15302, 153, 'CONNECTIVITY OPERATION MANAGER I'),
(15303, 153, 'CONNECTIVITY OPERATION SENIOR OFFICER I'),
(15304, 153, 'CONNECTIVITY OPERATION OFFICER I'),
(15305, 153, 'CONNECTIVITY OPERATION MANAGER II'),
(15306, 153, 'CONNECTIVITY OPERATION SENIOR OFFICER II'),
(15307, 153, 'CONNECTIVITY OPERATION OFFICER II'),
(15308, 153, 'CONNECTIVITY OPERATION MANAGER III'),
(15309, 153, 'CONNECTIVITY OPERATION SENIOR OFFICER III'),
(15310, 153, 'CONNECTIVITY OPERATION SENIOR OFFICER III'),
(15311, 153, 'CONNECTIVITY OPERATION OFFICER III'),
(15312, 153, 'CONNECTIVITY OPERATION OFFICER III'),
(15313, 153, 'CONNECTIVITY OPERATION MANAGER IV'),
(15314, 153, 'CONNECTIVITY OPERATION SENIOR OFFICER IV'),
(15315, 153, 'CONNECTIVITY OPERATION OFFICER IV'),
(15316, 153, 'CONNECTIVITY OPERATION MANAGER V'),
(15317, 153, 'CONNECTIVITY OPERATION SENIOR OFFICER V'),
(15318, 153, 'CONNECTIVITY OPERATION OFFICER V'),
(15319, 153, 'CONNECTIVITY OPERATION OFFICER V'),
(15401, 154, 'DIGITAL OPERATION VP'),
(15402, 154, 'DIGITAL OPERATION MANAGER I'),
(15403, 154, 'DIGITAL OPERATION SENIOR OFFICER I'),
(15404, 154, 'DIGITAL OPERATION OFFICER I'),
(15405, 154, 'DIGITAL OPERATION MANAGER II'),
(15406, 154, 'DIGITAL OPERATION SENIOR OFFICER II'),
(15407, 154, 'DIGITAL OPERATION OFFICER II'),
(15408, 154, 'CUSTOMER INTERFACE MANAGEMENT MANAGER'),
(15409, 154, 'CUSTOMER INTERFACE SENIOR OFFICER'),
(15410, 154, 'CUSTOMER INTERFACE OFFICER'),
(15411, 154, 'CUSTOMER INTERFACE OFFICER'),
(16101, 161, 'VOICE SALES VP'),
(16102, 161, 'VOICE SENIOR ACCOUNT MANAGER'),
(16103, 161, 'VOICE SENIOR ACCOUNT MANAGER'),
(16104, 161, 'VOICE SALES ACCOUNT MANAGER '),
(16105, 161, 'VOICE SALES ACCOUNT MANAGER '),
(16106, 161, 'VOICE SALES ACCOUNT MANAGER'),
(16201, 162, 'MOBILITY SALES VP'),
(16202, 162, 'MOBILITY SALES SENIOR ACCOUNT MANAGER'),
(16203, 162, 'MOBILITY SALES SENIOR ACCOUNT MANAGER'),
(16204, 162, 'MOBILITY SALES ACCOUNT MANAGER'),
(16205, 162, 'MOBILITY SALES ACCOUNT MANAGER '),
(17101, 171, 'CARRIER ENTERPRISE SALES REGION I VP'),
(17102, 171, 'CARRIER ENTERPRISE SENIOR ACCOUNT MANAGER REGION I'),
(17103, 171, 'CARRIER ENTERPRISE SENIOR ACCOUNT MANAGER REGION I'),
(17104, 171, 'CARRIER ENTERPRISE ACCOUNT MANAGER REGION I'),
(17105, 171, 'CARRIER ENTERPRISE ACCOUNT MANAGER REGION I 1'),
(17106, 171, 'CARRIER ENTERPRISE ACCOUNT MANAGER REGION I 2'),
(17107, 171, 'CARRIER ENTERPRISE ACCOUNT MANAGER REGION I'),
(17108, 171, 'CARRIER ENTERPRISE ACCOUNT MANAGER REGION I'),
(17109, 171, 'CARRIER ENTERPRISE ACCOUNT MANAGER REGION I'),
(17201, 172, 'CARRIER ENTERPRISE SALES REGION II VP'),
(17202, 172, 'CARRIER ENTERPRISE SENIOR ACCOUNT MANAGER REGION II'),
(17203, 172, 'CARRIER ENTERPRISE SENIOR ACCOUNT MANAGER REGION II'),
(17204, 172, 'CARRIER ENTERPRISE SENIOR ACCOUNT MANAGER REGION II'),
(17205, 172, 'CARRIER ENTERPRISE ACCOUNT MANAGER REGION II'),
(17206, 172, 'CARRIER ENTERPRISE ACCOUNT MANAGER REGION II'),
(17301, 173, 'CARRIER ENTERPRISE SALES REGION III VP'),
(17302, 173, 'CARRIER ENTERPRISE SENIOR ACCOUNT MANAGER REGION III'),
(17303, 173, 'CARRIER ENTERPRISE SENIOR ACCOUNT MANAGER REGION III'),
(17304, 173, 'CARRIER ENTERPRISE ACCOUNT MANAGER REGION III'),
(17305, 173, 'CARRIER ENTERPRISE ACCOUNT MANAGER REGION III'),
(17401, 174, 'SALES ENABLER VP'),
(17402, 174, 'PRE-SALES SOLUTION MANAGER (REG.I)'),
(17403, 174, 'PRE-SALES SOLUTION SENIOR OFFICER'),
(17404, 174, 'PRE-SALES SOLUTION OFFICER'),
(17405, 174, 'PRE-SALES SOLUTION OFFICER'),
(17406, 174, 'PRE-SALES SOLUTION MANAGER (REG.II)'),
(17407, 174, 'PRE-SALES SOLUTION SENIOR OFFICER'),
(17408, 174, 'PRE-SALES SOLUTION OFFICER'),
(17409, 174, 'PRE-SALES SOLUTION MANAGER (REG.III)'),
(17410, 174, 'PRE-SALES SOLUTION SENIOR OFFICER'),
(17411, 174, 'PRE-SALES SOLUTION OFFICER'),
(17412, 174, 'CHANNEL MANAGEMENT MANAGER '),
(17413, 174, 'CHANNEL PARTNERSHIP SENIOR OFFICER'),
(17414, 174, 'CHANNEL PARTNERSHP OFFICER'),
(17415, 174, 'CHANNEL EVALUATION OFFICER'),
(17416, 174, 'CUSTOMER DATABASE & SERVICE DELIVERY MANAGEMENT MANAGER'),
(17417, 174, 'CUSTOMER DATABASE SENIOR OFFICER'),
(17418, 174, 'SERVICE DELIVERY SENIOR OFFICER'),
(17419, 174, 'CUSTOMER DATABASE & SERVICE DELIVERY OFFICER'),
(17420, 174, 'SALES ENABLER STAFF 1'),
(17421, 174, 'SALES ENABLER STAFF 2'),
(17422, 174, 'SALES ENABLER STAFF 3');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `user_detail_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `website` varchar(45) DEFAULT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `twitter` varchar(45) DEFAULT NULL,
  `about_me` text,
  `point` int(11) DEFAULT '0',
  `all_knowledge` int(11) DEFAULT NULL,
  `all_request` int(11) DEFAULT NULL,
  `profile_photo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`user_detail_id`, `user_id`, `website`, `facebook`, `twitter`, `about_me`, `point`, `all_knowledge`, `all_request`, `profile_photo`) VALUES
(18, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(19, 270, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(23, 115, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(29, 241, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(39, 196, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'http://photo.telkom.co.id/photopwb/750037/750037_20150629230822.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `j_username` varchar(100) DEFAULT NULL,
  `j_password` varchar(200) DEFAULT NULL,
  `create_dtm` datetime DEFAULT NULL,
  `update_dtm` varchar(20) DEFAULT NULL,
  `activity_name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `code`, `name`, `j_username`, `j_password`, `create_dtm`, `update_dtm`, `activity_name`) VALUES
(1, 'KM', 'Knowledge Management', '', '', '2018-02-21 00:00:00', NULL, ''),
(2, 'Employee', 'Employee', 'employee', 'employee123', '2018-02-21 00:00:00', NULL, 'Request Justifikasi'),
(3, 'Manager', 'Manager', NULL, NULL, NULL, NULL, NULL),
(4, 'VP', 'VP', NULL, NULL, NULL, NULL, NULL),
(5, 'EVP', 'EVP', NULL, NULL, NULL, NULL, NULL),
(6, 'EGM', 'EGM', NULL, NULL, NULL, NULL, NULL),
(7, 'DIR', 'Director', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_category`
--
ALTER TABLE `access_category`
  ADD PRIMARY KEY (`ac_id`);

--
-- Indexes for table `access_directorate`
--
ALTER TABLE `access_directorate`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `access_group`
--
ALTER TABLE `access_group`
  ADD PRIMARY KEY (`access_id`);

--
-- Indexes for table `access_tag`
--
ALTER TABLE `access_tag`
  ADD PRIMARY KEY (`at_id`,`tag_id`);

--
-- Indexes for table `access_user`
--
ALTER TABLE `access_user`
  ADD PRIMARY KEY (`au_id`);

--
-- Indexes for table `access_user_group`
--
ALTER TABLE `access_user_group`
  ADD PRIMARY KEY (`aug_id`);

--
-- Indexes for table `acl`
--
ALTER TABLE `acl`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `approval`
--
ALTER TABLE `approval`
  ADD PRIMARY KEY (`approval_id`);

--
-- Indexes for table `approval_operation`
--
ALTER TABLE `approval_operation`
  ADD PRIMARY KEY (`ao_id`);

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`bookmark_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `category_detail`
--
ALTER TABLE `category_detail`
  ADD PRIMARY KEY (`cd_id`);

--
-- Indexes for table `category_history`
--
ALTER TABLE `category_history`
  ADD PRIMARY KEY (`ch_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cm_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `directorate`
--
ALTER TABLE `directorate`
  ADD PRIMARY KEY (`directorate_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `employee_position`
--
ALTER TABLE `employee_position`
  ADD PRIMARY KEY (`ep_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_i18n`
--
ALTER TABLE `job_i18n`
  ADD PRIMARY KEY (`NAME`);

--
-- Indexes for table `knowledge`
--
ALTER TABLE `knowledge`
  ADD PRIMARY KEY (`k_id`);

--
-- Indexes for table `knowledge_detail`
--
ALTER TABLE `knowledge_detail`
  ADD PRIMARY KEY (`kd_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `n_users`
--
ALTER TABLE `n_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `params`
--
ALTER TABLE `params`
  ADD PRIMARY KEY (`param_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`user_detail_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_category`
--
ALTER TABLE `access_category`
  MODIFY `ac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `access_directorate`
--
ALTER TABLE `access_directorate`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `access_group`
--
ALTER TABLE `access_group`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `access_tag`
--
ALTER TABLE `access_tag`
  MODIFY `at_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `access_user`
--
ALTER TABLE `access_user`
  MODIFY `au_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `access_user_group`
--
ALTER TABLE `access_user_group`
  MODIFY `aug_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acl`
--
ALTER TABLE `acl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `approval`
--
ALTER TABLE `approval`
  MODIFY `approval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `approval_operation`
--
ALTER TABLE `approval_operation`
  MODIFY `ao_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `bookmark_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;
--
-- AUTO_INCREMENT for table `category_detail`
--
ALTER TABLE `category_detail`
  MODIFY `cd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `category_history`
--
ALTER TABLE `category_history`
  MODIFY `ch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `directorate`
--
ALTER TABLE `directorate`
  MODIFY `directorate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;
--
-- AUTO_INCREMENT for table `employee_position`
--
ALTER TABLE `employee_position`
  MODIFY `ep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `knowledge`
--
ALTER TABLE `knowledge`
  MODIFY `k_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `knowledge_detail`
--
ALTER TABLE `knowledge_detail`
  MODIFY `kd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;
--
-- AUTO_INCREMENT for table `n_users`
--
ALTER TABLE `n_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;
--
-- AUTO_INCREMENT for table `params`
--
ALTER TABLE `params`
  MODIFY `param_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17423;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `user_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
