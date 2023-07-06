-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2021 at 06:52 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `budget`
--
CREATE DATABASE IF NOT EXISTS `budget` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `budget`;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `sno` int(11) NOT NULL,
  `user` text NOT NULL,
  `planid` int(250) NOT NULL,
  `title` text NOT NULL,
  `amount` float NOT NULL,
  `date` date NOT NULL,
  `bill` varchar(300) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `sno` int(250) NOT NULL,
  `user` text NOT NULL,
  `budget` float(10,0) NOT NULL,
  `title` text NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(250) NOT NULL,
  `name` text NOT NULL,
  `mail` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `sno` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(250) NOT NULL AUTO_INCREMENT;
--
-- Database: `cinegraph`
--
CREATE DATABASE IF NOT EXISTS `cinegraph` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cinegraph`;

-- --------------------------------------------------------

--
-- Table structure for table `actives`
--

CREATE TABLE `actives` (
  `Screen_name` varchar(250) NOT NULL,
  `last_seen` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actives`
--

INSERT INTO `actives` (`Screen_name`, `last_seen`) VALUES
('Aatif Mohammad', 1611113932),
('nancy', 1617084111),
('selena gomez', 1610471846);

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `block` varchar(250) NOT NULL,
  `to_sname` varchar(250) NOT NULL,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `box_office`
--

CREATE TABLE `box_office` (
  `show_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL,
  `no_of_times` int(250) NOT NULL DEFAULT 1,
  `tstamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `box_office`
--

INSERT INTO `box_office` (`show_id`, `Screen_name`, `no_of_times`, `tstamp`) VALUES
(2, 'nancy', 1, '2020-12-31 11:07:22'),
(9, 'Aatif Mohammad', 23, '2021-01-01 22:45:04'),
(9, 'nancy', 1, '2021-01-07 09:45:58'),
(2, 'Aatif Mohammad', 149, '2021-01-07 09:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `club_id` int(250) NOT NULL,
  `club_name` text NOT NULL,
  `created_by` varchar(250) NOT NULL,
  `club_dp` varchar(350) DEFAULT NULL,
  `privacy` int(11) NOT NULL DEFAULT 0,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`club_id`, `club_name`, `created_by`, `club_dp`, `privacy`, `tstamp`) VALUES
(3, 'first club', 'Aatif Mohammad', 'clubdp/first clubAatif Mohammad20210108113621am.jpg', 0, '2021-01-08 10:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `club_members`
--

CREATE TABLE `club_members` (
  `club_id` int(250) NOT NULL,
  `members` varchar(250) NOT NULL,
  `added_by` varchar(250) NOT NULL,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club_members`
--

INSERT INTO `club_members` (`club_id`, `members`, `added_by`, `tstamp`) VALUES
(3, 'nancy', 'Aatif Mohammad', '2021-01-08 10:36:21'),
(3, 'selena gomez', 'Aatif Mohammad', '2021-01-08 10:36:21'),
(3, 'Kylie jenner', 'Aatif Mohammad', '2021-01-08 10:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `club_msgs`
--

CREATE TABLE `club_msgs` (
  `gsp_id` int(250) NOT NULL,
  `from_sname` varchar(250) NOT NULL,
  `club_id` int(250) NOT NULL,
  `msg` text NOT NULL,
  `sharing_type` text DEFAULT NULL,
  `sharing_file` varchar(350) DEFAULT NULL,
  `sharing_id` int(250) DEFAULT NULL,
  `file_type` text DEFAULT NULL,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club_msgs`
--

INSERT INTO `club_msgs` (`gsp_id`, `from_sname`, `club_id`, `msg`, `sharing_type`, `sharing_file`, `sharing_id`, `file_type`, `tstamp`) VALUES
(1, 'Aatif Mohammad', 3, 'Hello everyone', '', '', 0, '', '2021-01-09 09:55:24'),
(4, 'nancy', 3, 'Hii', NULL, NULL, NULL, NULL, '2021-01-09 12:31:49'),
(5, 'nancy', 3, 'hello everyone', NULL, NULL, NULL, NULL, '2021-01-09 12:56:07'),
(6, 'nancy', 3, 'Hii aatif', NULL, NULL, NULL, NULL, '2021-01-09 12:57:16'),
(7, 'Aatif Mohammad', 3, 'Hii nancy', NULL, NULL, NULL, NULL, '2021-01-09 12:57:40'),
(8, 'nancy', 3, 'Love you aatif', NULL, NULL, NULL, NULL, '2021-01-09 12:57:55'),
(9, 'Aatif Mohammad', 3, 'new club', NULL, NULL, NULL, NULL, '2021-01-09 12:59:55'),
(10, 'selena gomez', 3, 'this is selena', NULL, NULL, NULL, NULL, '2021-01-10 01:10:14'),
(11, 'nancy', 3, 'this is nancy', NULL, NULL, NULL, NULL, '2021-01-10 01:10:37'),
(12, 'selena gomez', 3, 'this is cool', NULL, NULL, NULL, NULL, '2021-01-10 01:52:18'),
(13, 'nancy', 3, 'yes its cool', NULL, NULL, NULL, NULL, '2021-01-10 01:52:46'),
(14, 'selena gomez', 3, 'Love You Aatif', NULL, NULL, NULL, NULL, '2021-01-10 01:56:50'),
(15, 'selena gomez', 3, 'Add more', NULL, NULL, NULL, NULL, '2021-01-10 01:58:28'),
(16, 'nancy', 3, 'Hello', NULL, NULL, NULL, NULL, '2021-01-12 06:19:40'),
(17, 'Aatif Mohammad', 3, 'Hello', NULL, NULL, NULL, NULL, '2021-01-12 06:22:15'),
(18, 'nancy', 3, 'so its working', NULL, NULL, NULL, NULL, '2021-01-17 13:56:55'),
(19, 'Aatif Mohammad', 3, 'haa now', NULL, NULL, NULL, NULL, '2021-01-17 14:12:52'),
(20, 'nancy', 3, 'good', NULL, NULL, NULL, NULL, '2021-01-17 14:13:00'),
(21, 'Aatif Mohammad', 3, 'Hello', NULL, NULL, NULL, NULL, '2021-01-18 06:32:39'),
(22, 'nancy', 3, 'Hello', NULL, NULL, NULL, NULL, '2021-01-18 06:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `club_msgs_status`
--

CREATE TABLE `club_msgs_status` (
  `gsp_id` int(250) NOT NULL,
  `club_id` int(250) NOT NULL,
  `subj_id` int(250) DEFAULT NULL,
  `member` varchar(250) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club_msgs_status`
--

INSERT INTO `club_msgs_status` (`gsp_id`, `club_id`, `subj_id`, `member`, `status`, `tstamp`) VALUES
(1, 3, NULL, 'Aatif Mohammad', 1, '2021-01-09 10:21:01'),
(1, 3, NULL, 'nancy', 1, '2021-01-09 10:31:42'),
(4, 3, NULL, 'nancy', 0, '2021-01-09 12:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `club_subject`
--

CREATE TABLE `club_subject` (
  `subj_id` int(250) NOT NULL,
  `created_by` varchar(250) NOT NULL,
  `club_id` int(250) NOT NULL,
  `subj_name` text NOT NULL,
  `pause` int(11) NOT NULL DEFAULT 0,
  `privacy` int(11) NOT NULL DEFAULT 0,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club_subject`
--

INSERT INTO `club_subject` (`subj_id`, `created_by`, `club_id`, `subj_name`, `pause`, `privacy`, `tstamp`) VALUES
(1, 'Aatif Mohammad', 3, 'project', 0, 0, '2021-01-11 06:15:08'),
(2, 'Aatif Mohammad', 3, 'links', 0, 0, '2021-01-20 02:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `club_subj_msgs`
--

CREATE TABLE `club_subj_msgs` (
  `gsp_id` int(250) NOT NULL,
  `from_sname` varchar(250) NOT NULL,
  `club_id` int(250) NOT NULL,
  `subj_id` int(250) NOT NULL,
  `msg` text NOT NULL,
  `sharing_type` text DEFAULT NULL,
  `sharing_file` varchar(350) DEFAULT NULL,
  `sharing_id` int(250) DEFAULT NULL,
  `file_type` text DEFAULT NULL,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club_subj_msgs`
--

INSERT INTO `club_subj_msgs` (`gsp_id`, `from_sname`, `club_id`, `subj_id`, `msg`, `sharing_type`, `sharing_file`, `sharing_id`, `file_type`, `tstamp`) VALUES
(1, 'Aatif Mohammad', 3, 1, 'Hii everyone', NULL, NULL, NULL, NULL, '2021-01-11 08:02:23'),
(2, 'nancy', 3, 1, 'Hii Aatif', NULL, NULL, NULL, NULL, '2021-01-11 09:22:02'),
(3, 'nancy', 3, 1, 'Hii', NULL, NULL, NULL, NULL, '2021-01-11 09:26:11'),
(4, 'nancy', 3, 1, 'Hii every one', NULL, NULL, NULL, NULL, '2021-01-11 09:37:43'),
(5, 'nancy', 3, 1, 'allo', NULL, NULL, NULL, NULL, '2021-01-11 09:43:02'),
(6, 'selena gomez', 3, 1, 'Hii evryone', NULL, NULL, NULL, NULL, '2021-01-11 09:50:56'),
(7, 'Aatif Mohammad', 3, 1, 'aaa', NULL, NULL, NULL, NULL, '2021-01-11 09:51:16'),
(8, 'nancy', 3, 1, 'na', NULL, NULL, NULL, NULL, '2021-01-11 09:51:23'),
(9, 'Aatif Mohammad', 3, 1, 'Hii', NULL, NULL, NULL, NULL, '2021-01-11 10:57:19'),
(10, 'Aatif Mohammad', 3, 1, 'again', NULL, NULL, NULL, NULL, '2021-01-11 10:57:40'),
(11, 'Aatif Mohammad', 3, 1, 'A', NULL, NULL, NULL, NULL, '2021-01-11 11:01:32'),
(12, 'Aatif Mohammad', 3, 1, 'subject is working', NULL, NULL, NULL, NULL, '2021-01-17 14:32:19'),
(13, 'Aatif Mohammad', 3, 1, 'q', NULL, NULL, NULL, NULL, '2021-01-17 14:37:29'),
(14, 'Aatif Mohammad', 3, 1, 'Hii', NULL, NULL, NULL, NULL, '2021-01-17 14:38:15'),
(15, 'nancy', 3, 1, 'M', NULL, NULL, NULL, NULL, '2021-01-17 14:38:23'),
(16, 'Aatif Mohammad', 3, 1, 'q', NULL, NULL, NULL, NULL, '2021-01-17 14:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `covering`
--

CREATE TABLE `covering` (
  `shot_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `favs`
--

CREATE TABLE `favs` (
  `id` int(250) NOT NULL,
  `type` text NOT NULL,
  `type_in_show` text DEFAULT NULL,
  `Screen_name` varchar(250) NOT NULL,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fav_scs`
--

CREATE TABLE `fav_scs` (
  `Screen_name` varchar(250) NOT NULL,
  `fav_sname` varchar(250) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fav_scs`
--

INSERT INTO `fav_scs` (`Screen_name`, `fav_sname`, `time`) VALUES
('Aatif Mohammad', 'nancy', '2020-12-10 12:57:36'),
('Aatif Mohammad', 'nancy', '2020-12-10 12:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `featuring`
--

CREATE TABLE `featuring` (
  `show_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `featuring`
--

INSERT INTO `featuring` (`show_id`, `Screen_name`) VALUES
(2, 'Aatif Mohammad'),
(9, 'nancy'),
(9, 'selena gomez');

-- --------------------------------------------------------

--
-- Table structure for table `gossips`
--

CREATE TABLE `gossips` (
  `gsp_id` int(250) NOT NULL,
  `from_sname` varchar(250) NOT NULL,
  `to_sname` varchar(250) NOT NULL,
  `msg` text NOT NULL,
  `sharing_type` text DEFAULT NULL,
  `sharing_id` int(250) DEFAULT NULL,
  `sharing_file` varchar(250) DEFAULT NULL,
  `file_type` text DEFAULT NULL,
  `status` int(250) NOT NULL DEFAULT 0,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gossips`
--

INSERT INTO `gossips` (`gsp_id`, `from_sname`, `to_sname`, `msg`, `sharing_type`, `sharing_id`, `sharing_file`, `file_type`, `status`, `tstamp`) VALUES
(1, 'Aatif Mohammad', 'nancy', '', 'show', 2, 'show/nancy20201231061937am.jpg', 'image', 0, '2021-01-20 01:57:25'),
(2, 'Aatif Mohammad', 'nancy', '', 'show', 2, 'show/nancy20201231061937am.jpg', 'image', 0, '2021-01-20 01:58:04'),
(3, 'Aatif Mohammad', 'nancy', 'all gsp', 'show', 2, 'show/nancy20201231061937am.jpg', 'image', 0, '2021-01-20 01:58:29'),
(4, 'Aatif Mohammad', 'selena gomez', 'all gsp', 'show', 2, 'show/nancy20201231061937am.jpg', 'image', 0, '2021-01-20 01:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `looks`
--

CREATE TABLE `looks` (
  `shot_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL,
  `no_of_times` int(250) NOT NULL DEFAULT 1,
  `tstamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE `notify` (
  `n_id` int(250) NOT NULL,
  `to_sname` varchar(250) NOT NULL,
  `type` text NOT NULL,
  `info` varchar(250) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `opinion`
--

CREATE TABLE `opinion` (
  `op_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL,
  `about` text NOT NULL,
  `text` text NOT NULL,
  `rights` int(250) NOT NULL DEFAULT 0,
  `wrongs` int(250) NOT NULL DEFAULT 0,
  `gossips` int(250) NOT NULL DEFAULT 0,
  `posters` int(250) NOT NULL DEFAULT 0,
  `visibilty` text NOT NULL DEFAULT 'all',
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `opinion`
--

INSERT INTO `opinion` (`op_id`, `Screen_name`, `about`, `text`, `rights`, `wrongs`, `gossips`, `posters`, `visibilty`, `tstamp`) VALUES
(1, 'Aatif Mohammad', 'Cinegraph', 'CInegraph', 2, 0, 2, 1, '0', '2020-12-31 05:00:47'),
(2, 'nancy', 'cinegraph social network', 'The cinegraph social network is completely cool and awesome!', 1, 0, 0, 0, '0', '2020-12-31 04:47:02'),
(3, 'selena gomez', 'this cinegraph', 'cinegraph is amazing!', 1, 0, 0, 0, '0', '2020-12-31 04:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `op_react`
--

CREATE TABLE `op_react` (
  `op_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL,
  `react` text NOT NULL,
  `tsamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `op_react`
--

INSERT INTO `op_react` (`op_id`, `Screen_name`, `react`, `tsamp`) VALUES
(1, 'Aatif Mohammad', 'Wow', '2020-12-17 10:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `op_rights`
--

CREATE TABLE `op_rights` (
  `op_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL,
  `tstamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `op_rights`
--

INSERT INTO `op_rights` (`op_id`, `Screen_name`, `tstamp`) VALUES
(1, 'Aatif Mohammad', '0000-00-00 00:00:00'),
(3, 'Aatif Mohammad', '2020-12-31 10:16:59'),
(2, 'Aatif Mohammad', '2020-12-31 10:17:02'),
(1, 'nancy', '2020-12-31 10:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `op_wrongs`
--

CREATE TABLE `op_wrongs` (
  `op_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL,
  `tstamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posters`
--

CREATE TABLE `posters` (
  `poster_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL,
  `type` text DEFAULT NULL,
  `file` varchar(350) NOT NULL,
  `media` text DEFAULT NULL,
  `media_id` int(250) DEFAULT NULL,
  `caption` text DEFAULT NULL,
  `visibilty` int(10) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posters`
--

INSERT INTO `posters` (`poster_id`, `Screen_name`, `type`, `file`, `media`, `media_id`, `caption`, `visibilty`, `time`) VALUES
(15, 'Aatif Mohammad', 'image', 'show/Aatif Mohammad20201208081309am.gif', 'show', 1, 'Welcome', 0, '2020-12-26 12:06:17'),
(16, 'Aatif Mohammad', 'image', 'shot/Aatif Mohammad20201208081103am.jpg', 'shot', 5, 'first shot poster', 0, '2020-12-27 13:28:05'),
(17, 'Aatif Mohammad', 'image', 'shot/Aatif Mohammad20201208081103am.jpg', 'shot', 5, 'first shot poster', 0, '2020-12-27 13:29:57'),
(18, 'Aatif Mohammad', 'image', 'shot/Aatif Mohammad20201208081103am.jpg', 'shot', 5, 'trail', 0, '2020-12-27 13:47:28'),
(19, 'Aatif Mohammad', 'image', 'shot/Aatif Mohammad20201208081103am.jpg', 'shot', 5, '', 0, '2020-12-27 13:49:21'),
(20, 'Aatif Mohammad', 'image', 'profile_pic/Aatif.jpg', 'shot', 17, 'getpkey', 0, '2020-12-30 01:25:08'),
(21, 'Aatif Mohammad', 'image', 'profie_pic/Aatif.jpg', 'shot', 18, 'cool', 0, '2020-12-30 01:44:53'),
(22, 'Aatif Mohammad', 'image', 'profie_pic/Aatif.jpg', 'shot', 18, 'cool', 0, '2020-12-30 01:48:16'),
(23, 'Aatif Mohammad', 'image', 'profie_pic/Aatif.jpg', 'shot', 18, 'cool', 0, '2020-12-30 01:55:45'),
(24, 'Aatif Mohammad', 'image', 'shot/Aatif Mohammad20201208081103am.jpg', 'shot', 5, 'trail', 0, '2020-12-30 01:59:56'),
(25, 'Aatif Mohammad', 'image', 'shot/Aatif Mohammad20201208081103am.jpg', 'shot', 5, 'trail', 0, '2020-12-30 02:01:39'),
(26, 'Aatif Mohammad', 'text', '', 'opinion', 1, 'trail', 0, '2020-12-30 05:05:47'),
(27, 'Aatif Mohammad', 'text', 'Cinegraph', 'opinion', 1, 'trail', 0, '2020-12-30 05:18:23'),
(28, 'Aatif Mohammad', 'Cinegraph', 'CInegraph', 'opinion', 1, 'Awesome', 0, '2020-12-30 06:08:03'),
(29, 'Aatif Mohammad', 'Cinegraph', 'CInegraph', 'opinion', 1, 'Awesome', 0, '2020-12-30 06:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `posters_seen`
--

CREATE TABLE `posters_seen` (
  `poster_id` int(250) NOT NULL,
  `seen_Screen_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `poster_ft`
--

CREATE TABLE `poster_ft` (
  `poster_id` int(250) NOT NULL,
  `ft_Screen_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poster_ft`
--

INSERT INTO `poster_ft` (`poster_id`, `ft_Screen_name`) VALUES
(1, 'nancy'),
(1, 'selena gomez'),
(1, 'nancy'),
(1, 'selena gomez'),
(1, 'nancy'),
(1, 'selena gomez'),
(5, 'nancy'),
(5, 'selena gomez'),
(5, 'nancy'),
(5, 'selena gomez'),
(5, 'nancy'),
(5, 'selena gomez'),
(0, 'nancy'),
(0, 'selena gomez'),
(25, 'nancy'),
(25, 'selena gomez'),
(0, 'nancy'),
(0, 'selena gomez'),
(27, 'nancy'),
(27, 'selena gomez'),
(0, 'nancy'),
(0, 'selena gomez'),
(29, 'nancy'),
(29, 'selena gomez');

-- --------------------------------------------------------

--
-- Table structure for table `privacy`
--

CREATE TABLE `privacy` (
  `Screen_name` varchar(250) NOT NULL,
  `Records` text NOT NULL DEFAULT 'all'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privacy`
--

INSERT INTO `privacy` (`Screen_name`, `Records`) VALUES
('Aatif Mohammad', 'ocos');

-- --------------------------------------------------------

--
-- Table structure for table `report_media`
--

CREATE TABLE `report_media` (
  `media_id` int(250) NOT NULL,
  `type` text NOT NULL,
  `by_sname` varchar(250) NOT NULL,
  `issue` text NOT NULL,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report_user`
--

CREATE TABLE `report_user` (
  `r_sname` int(250) NOT NULL,
  `issue` text NOT NULL,
  `by_sname` varchar(250) NOT NULL,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shot`
--

CREATE TABLE `shot` (
  `shot_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL,
  `file` varchar(350) NOT NULL,
  `line` text DEFAULT NULL,
  `pretties` int(250) NOT NULL DEFAULT 0,
  `gossips` int(250) NOT NULL DEFAULT 0,
  `looks` int(250) NOT NULL DEFAULT 0,
  `posters` int(250) NOT NULL DEFAULT 0,
  `visibilty` text NOT NULL DEFAULT 'all',
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shot_pts`
--

CREATE TABLE `shot_pts` (
  `shot_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `show`
--

CREATE TABLE `show` (
  `show_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL,
  `file` varchar(350) NOT NULL,
  `type` text NOT NULL,
  `hits` int(250) NOT NULL DEFAULT 0,
  `flops` int(250) NOT NULL DEFAULT 0,
  `gossips` int(250) NOT NULL DEFAULT 0,
  `posters` int(250) NOT NULL DEFAULT 0,
  `visibilty` text NOT NULL DEFAULT 'all',
  `title` text NOT NULL,
  `box_office` int(250) NOT NULL,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `show`
--

INSERT INTO `show` (`show_id`, `Screen_name`, `file`, `type`, `hits`, `flops`, `gossips`, `posters`, `visibilty`, `title`, `box_office`, `tstamp`) VALUES
(2, 'nancy', 'show/nancy20201231061937am.jpg', 'image', 0, 1, 2, 0, '0', 'nancy', 2, '2021-01-20 01:58:29'),
(9, 'Aatif Mohammad', 'show/Aatif Mohammad20210101054925am.jpg', 'image', 1, 0, 0, 0, '0', 'Aatif', 2, '2021-01-18 13:31:08');

-- --------------------------------------------------------

--
-- Table structure for table `show_flops`
--

CREATE TABLE `show_flops` (
  `show_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL,
  `tstamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `show_flops`
--

INSERT INTO `show_flops` (`show_id`, `Screen_name`, `tstamp`) VALUES
(2, 'nancy', '2020-12-31 11:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `show_hits`
--

CREATE TABLE `show_hits` (
  `show_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL,
  `tstamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `show_hits`
--

INSERT INTO `show_hits` (`show_id`, `Screen_name`, `tstamp`) VALUES
(9, 'Aatif Mohammad', '2021-01-01 22:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `show_review`
--

CREATE TABLE `show_review` (
  `show_id` int(250) NOT NULL,
  `Screen_name` varchar(250) NOT NULL,
  `review` text NOT NULL,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `silver_screen`
--

CREATE TABLE `silver_screen` (
  `media_id` int(250) NOT NULL,
  `type` text NOT NULL,
  `type_in_show` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `solo_gsp_subject`
--

CREATE TABLE `solo_gsp_subject` (
  `subj_id` int(250) NOT NULL,
  `subj_name` text NOT NULL,
  `created_by` varchar(250) NOT NULL,
  `to_sname` varchar(250) NOT NULL,
  `pause` int(10) NOT NULL DEFAULT 0,
  `privacy` int(10) NOT NULL DEFAULT 1,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solo_gsp_subject`
--

INSERT INTO `solo_gsp_subject` (`subj_id`, `subj_name`, `created_by`, `to_sname`, `pause`, `privacy`, `time`) VALUES
(3, 'project', 'Aatif Mohammad', 'nancy', 0, 0, '2021-01-06 06:27:32'),
(4, 'memes', 'Aatif Mohammad', 'nancy', 0, 0, '2021-01-06 06:27:32'),
(5, 'anime', 'Aatif Mohammad', 'nancy', 0, 0, '2021-01-06 06:27:32'),
(12, 'me', 'Aatif Mohammad', 'nancy', 0, 1, '2021-01-08 02:56:06'),
(13, 'fun', 'selena gomez', 'Aatif Mohammad', 0, 0, '2021-01-12 10:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `solo_subj_msgs`
--

CREATE TABLE `solo_subj_msgs` (
  `gsp_id` int(250) NOT NULL,
  `from_sname` varchar(250) NOT NULL,
  `to_sname` varchar(250) NOT NULL,
  `subj_id` int(250) NOT NULL,
  `msg` text DEFAULT NULL,
  `sharing_type` text DEFAULT NULL,
  `sharing_id` int(250) DEFAULT NULL,
  `sharing_file` varchar(600) DEFAULT NULL,
  `file_type` text DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `star_fan`
--

CREATE TABLE `star_fan` (
  `star` varchar(250) NOT NULL,
  `fan` varchar(250) NOT NULL,
  `tstamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `star_fan`
--

INSERT INTO `star_fan` (`star`, `fan`, `tstamp`) VALUES
('Aatif Mohammad', 'nancy', '0000-00-00 00:00:00'),
('nancy', 'Aatif Mohammad', '0000-00-00 00:00:00'),
('Aatif Mohammad', 'selena gomez', '0000-00-00 00:00:00'),
('nancy', 'selena gomez', '0000-00-00 00:00:00'),
('selena gomez', 'Aatif Mohammad', '0000-00-00 00:00:00'),
('Aatif Mohammad', 'Kylie jenner', '2021-01-04 11:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `users_dp_ag`
--

CREATE TABLE `users_dp_ag` (
  `Screen_name` varchar(250) NOT NULL,
  `dp` varchar(350) NOT NULL DEFAULT 'profile_pic/default.jpg',
  `autograph` text NOT NULL,
  `style` varchar(250) DEFAULT 'Brush Script MT, cursive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_dp_ag`
--

INSERT INTO `users_dp_ag` (`Screen_name`, `dp`, `autograph`, `style`) VALUES
('Aatif Mohammad', 'profile_pic/Aatif.jpg', '', ' Brush Script MT, cursive'),
('nancy', 'profile_pic/nancy2.jpg', '', NULL),
('selena gomez', '', '', NULL),
('Kylie jenner', 'profile_pic/', '', 'Brush Script MT, cursive');

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE `users_info` (
  `Screen_name` varchar(250) NOT NULL,
  `mail` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`Screen_name`, `mail`) VALUES
('Aatif Mohammad', 'aatifmohammad@gmail.com'),
('nancy', 'nancygru@gmail.com'),
('selena gomez', 'selena@gmail.com'),
('Kylie jenner', 'kylie143@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users_pass`
--

CREATE TABLE `users_pass` (
  `Screen_name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_pass`
--

INSERT INTO `users_pass` (`Screen_name`, `password`, `tstamp`) VALUES
('Aatif Mohammad', 'Aatif', '0000-00-00 00:00:00'),
('Kylie jenner', '5', '0000-00-00 00:00:00'),
('nancy', 'aatif', '0000-00-00 00:00:00'),
('selena gomez', 'aatif', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actives`
--
ALTER TABLE `actives`
  ADD UNIQUE KEY `Screen_name` (`Screen_name`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD KEY `block` (`block`),
  ADD KEY `to_sname` (`to_sname`);

--
-- Indexes for table `box_office`
--
ALTER TABLE `box_office`
  ADD KEY `show_id` (`show_id`),
  ADD KEY `Screen_name` (`Screen_name`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`club_id`);

--
-- Indexes for table `club_msgs`
--
ALTER TABLE `club_msgs`
  ADD PRIMARY KEY (`gsp_id`);

--
-- Indexes for table `club_subject`
--
ALTER TABLE `club_subject`
  ADD PRIMARY KEY (`subj_id`);

--
-- Indexes for table `club_subj_msgs`
--
ALTER TABLE `club_subj_msgs`
  ADD PRIMARY KEY (`gsp_id`);

--
-- Indexes for table `covering`
--
ALTER TABLE `covering`
  ADD KEY `shot_id` (`shot_id`),
  ADD KEY `Screen_name` (`Screen_name`);

--
-- Indexes for table `featuring`
--
ALTER TABLE `featuring`
  ADD KEY `show_id` (`show_id`),
  ADD KEY `Screen_name` (`Screen_name`);

--
-- Indexes for table `gossips`
--
ALTER TABLE `gossips`
  ADD PRIMARY KEY (`gsp_id`);

--
-- Indexes for table `looks`
--
ALTER TABLE `looks`
  ADD KEY `Screen_name` (`Screen_name`),
  ADD KEY `shot_id` (`shot_id`);

--
-- Indexes for table `notify`
--
ALTER TABLE `notify`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `opinion`
--
ALTER TABLE `opinion`
  ADD PRIMARY KEY (`op_id`),
  ADD KEY `Screen_name` (`Screen_name`);

--
-- Indexes for table `op_react`
--
ALTER TABLE `op_react`
  ADD KEY `op_id` (`op_id`),
  ADD KEY `Screen_name` (`Screen_name`);

--
-- Indexes for table `op_rights`
--
ALTER TABLE `op_rights`
  ADD KEY `op_id` (`op_id`),
  ADD KEY `Screen_name` (`Screen_name`);

--
-- Indexes for table `op_wrongs`
--
ALTER TABLE `op_wrongs`
  ADD KEY `op_id` (`op_id`),
  ADD KEY `Screen_name` (`Screen_name`);

--
-- Indexes for table `posters`
--
ALTER TABLE `posters`
  ADD PRIMARY KEY (`poster_id`);

--
-- Indexes for table `posters_seen`
--
ALTER TABLE `posters_seen`
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `seen_Screen_name` (`seen_Screen_name`);

--
-- Indexes for table `privacy`
--
ALTER TABLE `privacy`
  ADD KEY `Screen_name` (`Screen_name`);

--
-- Indexes for table `report_user`
--
ALTER TABLE `report_user`
  ADD KEY `by_sname` (`by_sname`);

--
-- Indexes for table `shot`
--
ALTER TABLE `shot`
  ADD PRIMARY KEY (`shot_id`),
  ADD KEY `Screen_name` (`Screen_name`);

--
-- Indexes for table `shot_pts`
--
ALTER TABLE `shot_pts`
  ADD KEY `Screen_name` (`Screen_name`),
  ADD KEY `shot_id` (`shot_id`);

--
-- Indexes for table `show`
--
ALTER TABLE `show`
  ADD PRIMARY KEY (`show_id`),
  ADD KEY `Screen_name` (`Screen_name`);

--
-- Indexes for table `solo_gsp_subject`
--
ALTER TABLE `solo_gsp_subject`
  ADD PRIMARY KEY (`subj_id`);

--
-- Indexes for table `solo_subj_msgs`
--
ALTER TABLE `solo_subj_msgs`
  ADD PRIMARY KEY (`gsp_id`);

--
-- Indexes for table `star_fan`
--
ALTER TABLE `star_fan`
  ADD KEY `fan` (`fan`),
  ADD KEY `star` (`star`);

--
-- Indexes for table `users_dp_ag`
--
ALTER TABLE `users_dp_ag`
  ADD KEY `Screen_name` (`Screen_name`);

--
-- Indexes for table `users_info`
--
ALTER TABLE `users_info`
  ADD KEY `Screen_name` (`Screen_name`);

--
-- Indexes for table `users_pass`
--
ALTER TABLE `users_pass`
  ADD PRIMARY KEY (`Screen_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `club_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `club_msgs`
--
ALTER TABLE `club_msgs`
  MODIFY `gsp_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `club_subject`
--
ALTER TABLE `club_subject`
  MODIFY `subj_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `club_subj_msgs`
--
ALTER TABLE `club_subj_msgs`
  MODIFY `gsp_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `gossips`
--
ALTER TABLE `gossips`
  MODIFY `gsp_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notify`
--
ALTER TABLE `notify`
  MODIFY `n_id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opinion`
--
ALTER TABLE `opinion`
  MODIFY `op_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posters`
--
ALTER TABLE `posters`
  MODIFY `poster_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `shot`
--
ALTER TABLE `shot`
  MODIFY `shot_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `show`
--
ALTER TABLE `show`
  MODIFY `show_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `solo_gsp_subject`
--
ALTER TABLE `solo_gsp_subject`
  MODIFY `subj_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `solo_subj_msgs`
--
ALTER TABLE `solo_subj_msgs`
  MODIFY `gsp_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actives`
--
ALTER TABLE `actives`
  ADD CONSTRAINT `actives_ibfk_1` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `blocks`
--
ALTER TABLE `blocks`
  ADD CONSTRAINT `blocks_ibfk_1` FOREIGN KEY (`block`) REFERENCES `users_pass` (`Screen_name`),
  ADD CONSTRAINT `blocks_ibfk_2` FOREIGN KEY (`block`) REFERENCES `users_pass` (`Screen_name`),
  ADD CONSTRAINT `blocks_ibfk_3` FOREIGN KEY (`block`) REFERENCES `users_pass` (`Screen_name`),
  ADD CONSTRAINT `blocks_ibfk_4` FOREIGN KEY (`to_sname`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `box_office`
--
ALTER TABLE `box_office`
  ADD CONSTRAINT `box_office_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `show` (`show_id`),
  ADD CONSTRAINT `box_office_ibfk_2` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `covering`
--
ALTER TABLE `covering`
  ADD CONSTRAINT `covering_ibfk_1` FOREIGN KEY (`shot_id`) REFERENCES `shot` (`shot_id`),
  ADD CONSTRAINT `covering_ibfk_2` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `featuring`
--
ALTER TABLE `featuring`
  ADD CONSTRAINT `featuring_ibfk_1` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`),
  ADD CONSTRAINT `featuring_ibfk_2` FOREIGN KEY (`show_id`) REFERENCES `show` (`show_id`),
  ADD CONSTRAINT `featuring_ibfk_3` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `looks`
--
ALTER TABLE `looks`
  ADD CONSTRAINT `looks_ibfk_1` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`),
  ADD CONSTRAINT `looks_ibfk_2` FOREIGN KEY (`shot_id`) REFERENCES `shot` (`shot_id`);

--
-- Constraints for table `opinion`
--
ALTER TABLE `opinion`
  ADD CONSTRAINT `opinion_ibfk_1` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `op_react`
--
ALTER TABLE `op_react`
  ADD CONSTRAINT `op_react_ibfk_1` FOREIGN KEY (`op_id`) REFERENCES `opinion` (`op_id`),
  ADD CONSTRAINT `op_react_ibfk_2` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `op_rights`
--
ALTER TABLE `op_rights`
  ADD CONSTRAINT `op_rights_ibfk_1` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`),
  ADD CONSTRAINT `op_rights_ibfk_2` FOREIGN KEY (`op_id`) REFERENCES `opinion` (`op_id`),
  ADD CONSTRAINT `op_rights_ibfk_3` FOREIGN KEY (`op_id`) REFERENCES `opinion` (`op_id`),
  ADD CONSTRAINT `op_rights_ibfk_4` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `op_wrongs`
--
ALTER TABLE `op_wrongs`
  ADD CONSTRAINT `op_wrongs_ibfk_1` FOREIGN KEY (`op_id`) REFERENCES `opinion` (`op_id`),
  ADD CONSTRAINT `op_wrongs_ibfk_2` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `posters_seen`
--
ALTER TABLE `posters_seen`
  ADD CONSTRAINT `posters_seen_ibfk_1` FOREIGN KEY (`poster_id`) REFERENCES `posters` (`poster_id`),
  ADD CONSTRAINT `posters_seen_ibfk_2` FOREIGN KEY (`seen_Screen_name`) REFERENCES `users_info` (`Screen_name`);

--
-- Constraints for table `privacy`
--
ALTER TABLE `privacy`
  ADD CONSTRAINT `privacy_ibfk_1` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `report_user`
--
ALTER TABLE `report_user`
  ADD CONSTRAINT `report_user_ibfk_1` FOREIGN KEY (`by_sname`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `shot`
--
ALTER TABLE `shot`
  ADD CONSTRAINT `shot_ibfk_1` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `shot_pts`
--
ALTER TABLE `shot_pts`
  ADD CONSTRAINT `shot_pts_ibfk_1` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`),
  ADD CONSTRAINT `shot_pts_ibfk_2` FOREIGN KEY (`shot_id`) REFERENCES `shot` (`shot_id`);

--
-- Constraints for table `show`
--
ALTER TABLE `show`
  ADD CONSTRAINT `show_ibfk_1` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `star_fan`
--
ALTER TABLE `star_fan`
  ADD CONSTRAINT `star_fan_ibfk_1` FOREIGN KEY (`fan`) REFERENCES `users_pass` (`Screen_name`),
  ADD CONSTRAINT `star_fan_ibfk_2` FOREIGN KEY (`star`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `users_dp_ag`
--
ALTER TABLE `users_dp_ag`
  ADD CONSTRAINT `users_dp_ag_ibfk_1` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`);

--
-- Constraints for table `users_info`
--
ALTER TABLE `users_info`
  ADD CONSTRAINT `users_info_ibfk_1` FOREIGN KEY (`Screen_name`) REFERENCES `users_pass` (`Screen_name`);
--
-- Database: `gamble65`
--
CREATE DATABASE IF NOT EXISTS `gamble65` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gamble65`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `us_id` int(250) NOT NULL,
  `name` text NOT NULL,
  `mail` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`us_id`, `name`, `mail`, `pass`, `time`) VALUES
(1, 'Aatif', '', '12345', '2021-04-19 08:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `us_keys`
--

CREATE TABLE `us_keys` (
  `us_id` int(250) NOT NULL,
  `us_key` varchar(250) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`us_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `us_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cinegraph\",\"table\":\"gossips\"},{\"db\":\"cinegraph\",\"table\":\"op_react\"},{\"db\":\"cinegraph\",\"table\":\"fav_scs\"},{\"db\":\"cinegraph\",\"table\":\"favs\"},{\"db\":\"cinegraph\",\"table\":\"actives\"},{\"db\":\"cinegraph\",\"table\":\"users_pass\"},{\"db\":\"cinegraph\",\"table\":\"privacy\"},{\"db\":\"cinegraph\",\"table\":\"users_dp_ag\"},{\"db\":\"cinegraph\",\"table\":\"star_fan\"},{\"db\":\"cinegraph\",\"table\":\"users_info\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-12-18 13:37:45', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":194}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `prank`
--
CREATE DATABASE IF NOT EXISTS `prank` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prank`;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `S_no` int(250) NOT NULL,
  `Roll_no` varchar(250) NOT NULL,
  `year` int(250) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`S_no`, `Roll_no`, `year`, `time`) VALUES
(1, '12323', 1, '2021-02-06 11:19:47'),
(2, '5', 1, '2021-02-07 06:32:31'),
(3, '12323', 1, '2021-02-07 08:58:39'),
(4, '12323', 1, '2021-02-07 08:58:41'),
(5, '12323', 1, '2021-02-07 09:34:40'),
(6, '23', 1, '2021-02-07 09:35:54'),
(7, '&lt;hhb&gt;', 1, '2021-02-07 09:36:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`S_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `S_no` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `try`
--
CREATE DATABASE IF NOT EXISTS `try` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `try`;
--
-- Database: `valent`
--
CREATE DATABASE IF NOT EXISTS `valent` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `valent`;

-- --------------------------------------------------------

--
-- Table structure for table `pairs`
--

CREATE TABLE `pairs` (
  `S_no` int(250) NOT NULL,
  `p1` text NOT NULL,
  `p2` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pairs`
--

INSERT INTO `pairs` (`S_no`, `p1`, `p2`, `time`) VALUES
(1, 'Aatif', 'Selena', '2021-02-14 08:59:31'),
(2, 'a', 'z', '2021-02-14 09:02:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pairs`
--
ALTER TABLE `pairs`
  ADD PRIMARY KEY (`S_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pairs`
--
ALTER TABLE `pairs`
  MODIFY `S_no` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
