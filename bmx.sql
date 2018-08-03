-- phpMyAdmin SQL Dump
-- version 4.6.6deb1+deb.cihar.com~xenial.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 03, 2018 at 12:08 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 5.6.36-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bmx`
--

-- --------------------------------------------------------

--
-- Table structure for table `bmx_coaching_criteria`
--

CREATE TABLE `bmx_coaching_criteria` (
  `id` int(11) NOT NULL,
  `workout_type_id` int(11) NOT NULL,
  `session_avg` int(11) DEFAULT NULL COMMENT '( % of previous session avg. )  1 :- Greater than 100% ,  2 :- 100 - 98% ,  3 :- 95 - 97.9% ,  4 :- 94.9% or less',
  `sprint_1_to_6_msg` text NOT NULL COMMENT 'Message (sprint 1-6)',
  `sprint_7_or_more_msg` text NOT NULL COMMENT 'Message (sprint 7 or 7+)',
  `post_workout_msg` text NOT NULL COMMENT 'Post Workout Message based on avg %',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bmx_coaching_criteria`
--

INSERT INTO `bmx_coaching_criteria` (`id`, `workout_type_id`, `session_avg`, `sprint_1_to_6_msg`, `sprint_7_or_more_msg`, `post_workout_msg`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, NULL, '', '', '', '2017-08-23 18:09:09', '0000-00-00 00:00:00', NULL),
(2, 2, 1, 'Great job you are going faster than your previous session average! Be sure to rest fully before your next gate start to maintain quality.', 'Great Job, you are improving your speed! Be sure to rest fully before your next start.', 'Fantastic progress! You just smashed your previous best average gate start times! Your training seems to be working well!', '2017-11-10 06:18:18', '0000-00-00 00:00:00', NULL),
(3, 2, 2, 'Stay consistent and focus on moving forward and a smooth first 3 pedals.', 'You are so close to your personal best time. Rest and focus on your technique.', 'Good session, you are close to setting a new record. Focus on recovery from this session to come back even faster!', '2017-08-23 18:09:09', '0000-00-00 00:00:00', NULL),
(4, 2, 3, 'A new record is just within reach! Remember that smooth is fast!', 'Try to improve on the next effort. You are going too slow to improve your max power. Rest fully and review your technique.', 'You were too slow today to build maximum speed. You were possibly tired or maybe wind was slowing you down. Look to improve technique and reaction time next session.', '2017-08-23 18:09:09', '0000-00-00 00:00:00', NULL),
(5, 2, 4, 'Continue warming up to reach your optimal performance. Practice good technique and visualize success!', 'It appears you made a mistake or are experiencing fatigue. Improve your next effort or consider ending your session.', 'You had a big drop in speed with this session. Focus on recovery and visualize perfect gate start technique.', '2017-08-23 18:09:09', '0000-00-00 00:00:00', NULL),
(6, 3, 1, 'Great Job you are improving over your previous sprint session! Be sure to rest fully before your next sprint.', 'Great Job you just your new personal best sprint! Be sure to rest fully before your next sprint.', 'Fantastic progress! You just smashed your previous best average sprint times! Your training seems to be working well!', '2017-08-23 18:09:09', '0000-00-00 00:00:00', NULL),
(7, 3, 2, 'You are so close to your personal best time. Rest and focus on your technique.', 'You are so close to your personal best time. Rest and focus on your technique.', 'Good session, you are close to setting a new record. Focus on recovery from this session to come back even faster!', '2017-08-23 18:09:09', '0000-00-00 00:00:00', NULL),
(8, 3, 3, 'A new record is just within reach! Remember that smooth is fast!', 'Try to improve on the next effort. You are going too slow to improve your max power. Rest fully and review your technique.', 'You were too slow today to build maximum speed. You were possibly tired or maybe wind was slowing you down.', '2017-08-23 18:09:09', '0000-00-00 00:00:00', NULL),
(9, 3, 4, 'Continue warming up to reach your optimal performance. Practice good technique and visualize success!', 'It appears you made a mistake or are experiencing fatigue. Improve your next effort or consider ending your session.', 'You had a big drop in speed with this session. Focus on recovery and visualize perfect gate start technique.', '2017-08-23 18:09:09', '0000-00-00 00:00:00', NULL),
(10, 4, 1, 'Great Job you just your new personal best sprint! Be sure to rest fully before your next sprint.', 'Great Job you just your are still improving your sprint times! Be sure to rest fully before your next sprint.', 'Fantastic progress! You just smashed your previous best average sprint times! Your training seems to be working well! Next goal is to maintain this power for even more efforts.', '2017-08-23 18:09:09', '0000-00-00 00:00:00', NULL),
(11, 4, 2, 'You are close to your personal best time. Give yourself a short rest and try to repeat this again!', 'You are close to your personal best time. Give yourself a short rest and try to repeat this again!', 'Good session, you are close to setting a new record. Focus on recovery from this session to come back even faster!', '2017-08-23 18:09:09', '0000-00-00 00:00:00', NULL),
(12, 4, 3, 'You are getting close to the optimal speed but not quite there yet.', 'You are not moving quite fast enough.Try to pick up the speed and maintain technique!', 'You pushed hard but didn\'t quite have the speed today. You were possibly tired or maybe wind was slowing you down. Recover and see if you can improve next session.', '2017-08-23 18:09:09', '0000-00-00 00:00:00', NULL),
(13, 4, 4, 'Continue warming up to reach your optimal performance. Practice good technique and visualize success!', 'It appears you made a mistake or are experiencing fatigue. Improve your next effort or consider ending your session.', 'You had a big drop in speed with this session. Rest several days and try again!', '2017-08-23 18:09:09', '0000-00-00 00:00:00', NULL),
(14, 5, 1, 'Great effort! You are breaking new records! See how long you can maintain this speed with these short rests.', 'Great effort! You are breaking new records! See how long you can maintain this speed with these short rests.', 'You must be gaining endurance to improve your sprint times!', '2017-12-12 09:33:53', '2017-12-12 09:33:53', NULL),
(15, 5, 2, 'You are where you want to be! Keep pushing for a new record by working hard and focusing on recovery between sprints.', 'You are where you want to be! Keep pushing for a new record by working hard and focusing on recovery between sprints.', 'Great session!', '2017-12-12 09:34:56', '2017-12-12 09:34:56', NULL),
(16, 5, 3, 'Just a little too slow. Pick up the pace and keep pushing hard!', 'You are going to slow. Be mentally tough and push hard! When you are tired, practice maintaining good pedaling technique.', 'Way to push hard!', '2017-08-23 18:09:09', '0000-00-00 00:00:00', NULL),
(17, 5, 4, 'Keep pushing hard!', 'I suggest ending the session if you are getting tired.', 'Be sure to give your body several days rest after this workout.', '2017-08-23 18:09:09', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bmx_riders`
--

CREATE TABLE `bmx_riders` (
  `rider_id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `age` smallint(3) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inactive , 1 = active',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bmx_riders`
--

INSERT INTO `bmx_riders` (`rider_id`, `trainer_id`, `firstname`, `lastname`, `email`, `profile_image`, `mobile_no`, `height`, `weight`, `age`, `active`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 3, 'Jason', 'Barron', 'mittal@gmail.com', '', '1111333344', 5.2, 45, 24, 1, '2018-07-30 11:23:27', '2017-12-13 08:27:04', NULL),
(2, 13, 'Jason', 'Sparrow', 'jason@bmx.com', '', '11112222333', 5.3, 56, 24, 1, '2017-12-13 11:44:47', '2017-12-13 11:44:47', NULL),
(3, 14, 'n', 'p', 'nirav.patel@softwebsolutions.com', '1513250067225.jpg', '9712238466', 6.2, 1, 2, 1, '2017-12-14 11:13:58', '2017-12-14 11:13:58', NULL),
(4, 15, 't', 'k', 'asd@test.com', '', '9898412555', 5.1, 6, 8, 1, '2017-12-14 11:18:22', '2017-12-14 11:18:22', NULL),
(5, 15, 'h', 'i', 'asd@testj.com', '', '9898745466', 5.2, 3, 9, 1, '2017-12-14 11:22:38', '2017-12-14 11:22:38', NULL),
(6, 16, 'Jake', 'Sparrow', 'jake@bqmx.com', '', NULL, NULL, NULL, NULL, 1, '2017-12-14 11:33:18', '2017-12-14 11:33:18', NULL),
(7, 16, 'John', 'Smith', 'john@bmxc.com', '', NULL, NULL, NULL, NULL, 1, '2017-12-18 12:05:49', '2017-12-18 12:05:49', NULL),
(8, 17, 'Jake', 'Stephenitch ', 'jakestephenitch@gmail.com', '1514339900326.jpg', NULL, 5.9, 195, 36, 1, '2017-12-27 01:57:20', '2017-12-27 01:57:20', NULL),
(9, 18, 'Zed', 'Koch', 'sales@neverforgetyou.com', '', '8154997746', 5.2, 101, 13, 1, '2017-12-26 02:31:03', '2017-12-26 02:31:03', NULL),
(10, 19, 'Wayne ', 'Roon', 'ridefasterwtr@hotmail.com', '1514257312816.jpg', NULL, 6.2, 195, 41, 1, '2017-12-26 03:00:43', '2017-12-26 03:00:43', NULL),
(11, 20, 'Cole', 'Frederick', 'brfrederick97@gmail.com', '', NULL, 5, 98, 10, 1, '2017-12-26 03:15:12', '2017-12-26 03:15:12', NULL),
(12, 21, 'Connor', 'Clifford', 'connorclifford09@gmail.com', '1514260850162.jpg', NULL, 4.7, 77, 8, 1, '2017-12-26 03:59:51', '2017-12-26 03:59:51', NULL),
(13, 21, 'Callie', 'Clifford', 'callieclifford11@gmail.com', '', '4355747100', 4.2, 48, 6, 1, '2017-12-26 03:43:50', '2017-12-26 03:43:50', NULL),
(14, 22, 'Jackson', 'Tatham', 'joandsteve15@bigpond.com', '', '0448791323', 5.8, 148, 15, 1, '2017-12-26 04:51:39', '2017-12-26 04:51:39', NULL),
(15, 23, 'Ken', 'Feist', 'kbfeist@gmail.com', '', '64021830021', 5.4, 130, 42, 1, '2017-12-26 05:11:08', '2017-12-26 05:11:08', NULL),
(16, 24, 'Graham', 'Stanley', 'geestanley@hotmail.co.uk', '', '07583053813', 5.9, NULL, 39, 1, '2017-12-26 08:17:11', '2017-12-26 08:17:11', NULL),
(17, 25, 'Nicolas', 'Leyendencker ', 'sebastienleyendecker@free.fr', '', NULL, 4.9, 38, 11, 1, '2017-12-26 10:15:22', '2017-12-26 10:15:22', NULL),
(18, 26, 'David', 'Vernon', 'david@teamtkd.com.au', '', NULL, 6, 185, 50, 1, '2017-12-26 10:45:35', '2017-12-26 10:45:35', NULL),
(19, 27, 'Tyler ', 'Smith', 'smith16_bmxer@yahoo.com', '1514298109596.jpg', '6787684134', 5.8, 162, 23, 1, '2017-12-26 14:20:48', '2017-12-26 14:20:48', NULL),
(20, 29, 'Chris ', 'Gombos ', 'cgombos1@me.com', '', '2032574988', 6.2, 240, 49, 1, '2017-12-26 16:56:51', '2017-12-26 16:56:51', NULL),
(21, 28, 'Marcelo ', 'Alvarez-Garcia', 'marcelo_tampa@yahoo.com', '', '7272524681', 5.11, 170, 42, 1, '2017-12-26 16:59:39', '2017-12-26 16:59:39', NULL),
(22, 30, 'Letitia ', 'Weatherhead ', 'letitia2717@hotmail.com', '', '0402813362', 5.5, 132, 44, 1, '2017-12-26 20:02:16', '2017-12-26 20:02:16', NULL),
(23, 30, 'Zoe', 'Weatherhead ', 'letitia2717@gmail.com', '', '0417265493', 4, 46, 7, 1, '2017-12-26 20:05:43', '2017-12-26 20:05:43', NULL),
(24, 31, 'Nathan ', 'Kitchen ', 'dekitchen69@gmail.com', '', '6619781423', 5.2, 98, 12, 1, '2017-12-26 20:19:26', '2017-12-26 20:19:26', NULL),
(25, 33, 'Tucker', 'Harwell', 'dougaharwell@att.net', '', NULL, 4, 50, 4, 1, '2017-12-26 21:58:17', '2017-12-26 21:58:17', NULL),
(26, 33, 'Doug', 'Harwell', 'dougaharwell@gmail.com', '', NULL, 6.2, 202, 43, 1, '2017-12-26 22:10:43', '2017-12-26 22:10:43', NULL),
(27, 35, 'Beck', 'Taylor', 'dominic.taylor@bigpond.com', '1514332576611.jpg', NULL, NULL, NULL, NULL, 1, '2017-12-26 23:55:12', '2017-12-26 23:55:12', NULL),
(28, 35, 'Poppy ', 'Taylor', 'poppyelizabethtaylor2006@gmail.com', '', NULL, NULL, NULL, NULL, 1, '2017-12-26 23:53:46', '2017-12-26 23:53:46', NULL),
(29, 36, 'Vincent', 'DeCastro', 'vincentdecastro1@yahoo.com', '', '6785925398', 5.1, 170, 50, 1, '2017-12-27 01:09:25', '2017-12-27 01:09:25', NULL),
(30, 37, 'Jimmy', 'Higgins', 'jimmyhiggins4@gmail.com', '', NULL, 6.1, 245, 45, 1, '2017-12-27 01:25:46', '2017-12-27 01:25:46', NULL),
(31, 38, 'Jared', 'Pitstock', 'jared.pitstock2@gmail.com', '', '0468637600', 5.9, 165, 14, 1, '2017-12-27 03:40:09', '2017-12-27 03:40:09', NULL),
(32, 39, 'Savanna', 'Stokes', 'lowerthenazphalt@gmail.com', '', NULL, NULL, NULL, NULL, 1, '2017-12-27 04:39:52', '2017-12-27 04:39:52', NULL),
(33, 39, 'Chase ', 'Antill', 'bcclothinglv@yahoo.com', '', NULL, NULL, NULL, NULL, 1, '2017-12-27 04:41:52', '2017-12-27 04:41:52', NULL),
(34, 38, 'Tahlia', 'Pitstock', 'pitstockt21@gmail.com', '', NULL, 5.4, 89, 11, 1, '2017-12-27 05:37:58', '2017-12-27 05:37:58', NULL),
(35, 41, 'Kevin', 'Cameron', 'kgcam10@gmail.com', '', NULL, 5.11, 234, 36, 1, '2017-12-28 04:52:36', '2017-12-28 04:52:36', NULL),
(36, 40, 'Zane ', 'Bourke ', 'jasonb25@outllok.com', '1514452942507.jpg', '0425311131', 4.7, 77, 9, 1, '2017-12-28 09:22:01', '2017-12-28 09:22:01', NULL),
(37, 40, 'Seth', 'Bourke ', 'jasonb25@outlook.com', '1514453286975.jpg', NULL, 4.5, 62, 10, 1, '2017-12-28 09:26:52', '2017-12-28 09:26:52', NULL),
(38, 42, 'Gil', 'Sanchez', 'raven2ridebmx@yahoo.com', '', NULL, 5.1, 217, 49, 1, '2017-12-30 00:33:05', '2017-12-30 00:33:05', NULL),
(39, 43, 'Mike', 'Johnson ', '805bmxllc@gmail.com', '', NULL, NULL, NULL, NULL, 1, '2017-12-28 21:20:01', '2017-12-28 21:20:01', NULL),
(40, 44, 'Levi', 'Folkrod', 'levifolkrod@gmail.com', '', '8052353393', 5.9, 125, 14, 1, '2018-01-03 12:17:17', '2017-12-28 16:27:36', NULL),
(41, 46, 'Josh', 'White', 'azkevin82@ail.com', '', NULL, 4.11, 87, 10, 1, '2017-12-28 18:16:38', '2017-12-28 18:16:38', NULL),
(42, 47, 'Solomon', 'Goodwin ', 'studiog03@centurylink.net', '', '2607502943', 5.4, 110, 14, 1, '2017-12-29 01:26:54', '2017-12-29 01:26:54', NULL),
(43, 47, 'Barney ', 'Goodwin ', 'studiog02@centurylink.net', '', '2603859075', 5.11, 210, 46, 1, '2017-12-29 01:27:58', '2017-12-29 01:27:58', NULL),
(44, 48, 'Nathan', 'Tabatt', 'ndtabatt@yahoo.com', '', NULL, 5.1, 180, 37, 1, '2017-12-30 01:44:46', '2017-12-30 01:44:46', NULL),
(45, 51, 'Axel', 'Campbell', 'mattyandalic@yahoo.com', '', '7025738337', 4, 45, 6, 1, '2017-12-29 17:05:54', '2017-12-29 17:05:54', NULL),
(46, 49, 'Tahukiterangi', 'Harman', 'arona.harman@gmail.com', '', NULL, 4.5, 59, 9, 1, '2017-12-29 20:36:57', '2017-12-29 20:36:57', NULL),
(47, 52, 'Terrance', 'Williams', 'jwilli92174@aol.com', '', '9785126055', 6.2, 170, 18, 1, '2017-12-29 21:15:51', '2017-12-29 21:15:51', NULL),
(48, 52, 'David', 'Courtney', 'blkpwrelect@msn.com', '', NULL, 6.2, 220, 51, 1, '2017-12-29 21:18:38', '2017-12-29 21:18:38', NULL),
(49, 53, 'Dave', 'Mott', 'davidmott@gmail.com', '', NULL, 6.1, 182, 40, 1, '2017-12-29 22:37:27', '2017-12-29 22:37:27', NULL),
(50, 55, 'Josh', 'Abbott ', 'jasonjabbott@btinternet.com', '', NULL, 5.2, NULL, 12, 1, '2017-12-30 20:49:44', '2017-12-30 20:49:44', NULL),
(51, 56, 'Darren', 'Williams', 'dwbmxer@gmail.com', '', NULL, 5.8, 168, 51, 1, '2017-12-30 22:40:46', '2017-12-30 22:40:46', NULL),
(52, 56, 'Deborah', 'Williams', 'she.w.bmxer@gmail.com', '', NULL, 5.2, 135, 46, 1, '2017-12-30 22:58:30', '2017-12-30 22:58:30', NULL),
(53, 57, 'Cody', 'Calabrese', 'chris@ucsmd.com', '', '4437904031', 4.5, 112, 11, 1, '2017-12-31 00:16:26', '2017-12-31 00:16:26', NULL),
(54, 58, 'Riley', 'Lawrence', 'xtm2@icloud.com', '', '+61402084919', 4.4, 69, 8, 1, '2017-12-31 01:53:18', '2017-12-31 01:53:18', NULL),
(55, 50, 'Axel ', 'Webster ', 'axel@websterbmx.com', '', NULL, 5.8, 170, NULL, 1, '2017-12-31 15:04:34', '2017-12-31 15:04:34', NULL),
(56, 54, 'Eric', 'Filley', 'ericfilley@gmail.com', '', NULL, 6, 240, 45, 1, '2017-12-31 18:08:22', '2017-12-31 18:08:22', NULL),
(57, 60, 'Summer ', 'MacMullen ', 'cmacmullen@shaw.ca', '', '6047274685', 5.2, 95, 12, 1, '2018-01-02 03:37:03', '2018-01-02 03:37:03', NULL),
(58, 61, 'Joshua', 'Seeley', 'joshua_seeley@icloud.com', '', '9092685344', 5.1, 305, 38, 1, '2018-01-02 04:08:15', '2018-01-02 04:08:15', NULL),
(59, 59, 'Tim', 'Drew', 'tim.drew654@btinternet.com', '1514892403653.jpg', '07813675314', 6.1, NULL, 46, 1, '2018-01-02 11:25:57', '2018-01-02 11:25:57', NULL),
(60, 62, 'KJ', 'Romero', 'romerokj92@yahoo.com', '', NULL, 5.8, 165, 25, 1, '2018-01-02 13:38:39', '2018-01-02 13:38:39', NULL),
(61, 64, 'Marcus', 'Orr', 'Orrbmx44@outlook.com', '1514924834421.jpg', '07449178417', 6.2, 200, 49, 1, '2018-01-02 20:26:24', '2018-01-02 20:26:24', NULL),
(62, 65, 'Carson', 'Allen', 'cjbeast17@outlook.com', '1514931286733.jpg', NULL, 4.8, 70, 11, 1, '2018-01-02 22:13:34', '2018-01-02 22:13:34', NULL),
(63, 64, 'Sam', 'Orr', 'sammyorr08@gmail.com', '', NULL, 4.11, 80, 9, 1, '2018-01-02 21:50:04', '2018-01-02 21:50:04', NULL),
(64, 64, 'Ollie', 'Orr', 'ollieorr10@gmail.com', '', NULL, 6.6, NULL, 7, 1, '2018-01-02 21:52:43', '2018-01-02 21:52:43', NULL),
(65, 64, 'Helena', 'Orr', 'helena.orr@hotmail.com', '', NULL, 5.6, NULL, 42, 1, '2018-01-02 21:52:03', '2018-01-02 21:52:03', NULL),
(66, 66, 'Nick', 'Ehrke', 'nicholas_ehrke@eku.edu', '', '4406105607', 5.11, 190, 31, 1, '2018-01-02 22:40:14', '2018-01-02 22:40:14', NULL),
(67, 68, 'Zoe', 'Dannenberg ', 'rory@rorydannenberg.com', '1514941934718.jpg', '8593963343', 4.6, 64, 8, 1, '2018-01-03 01:10:58', '2018-01-03 01:10:58', NULL),
(68, 68, 'Zakk', 'Dannenberg ', 'nikki@captivaluxuryhomes.com', '1514942065385.jpg', '8593963343', 4.8, 68, 9, 1, '2018-01-03 01:13:55', '2018-01-03 01:13:55', NULL),
(69, 48, 'Andrew', 'Tabatt', 'ntabatt@gmail.com', '', '6613326769', 4.9, 85, 11, 1, '2018-01-03 01:41:02', '2018-01-03 01:41:02', NULL),
(70, 70, 'Isabel', 'Spooner', 'casrick@internode.on.net', '', NULL, 5.4, NULL, 13, 1, '2018-01-03 09:28:04', '2018-01-03 09:28:04', NULL),
(71, 13, 'Jacob,-;:\"\'()$&@\"~_\\[]{#%^*', 'white', 'jacob@bmxsprint.softweb.com', '', NULL, 5.9, 125, 25, 1, '2018-01-03 11:43:28', '2018-01-03 11:43:28', NULL),
(72, 13, '\'\"John\"\'\'<', 'Green>', 'John@bmxsprintsoftweb.com', '1514980189053.jpg', '1234568907', 5.2, 125, 24, 0, '2018-07-30 11:20:51', '2018-07-30 11:20:51', NULL),
(73, 43, 'Levi', 'Folkrod', 'levifolkrod@gmail.com', '', '8052353393', 5.9, 125, 14, 1, '2018-01-03 12:19:17', '2018-01-03 12:19:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bmx_sessions`
--

CREATE TABLE `bmx_sessions` (
  `session_id` int(11) NOT NULL,
  `session_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `session_end_date` datetime DEFAULT NULL,
  `workout_type` int(11) NOT NULL,
  `max_distance` varchar(4) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `measurement_unit` enum('feet') NOT NULL DEFAULT 'feet',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inactive , 1 = active',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bmx_sessions`
--

INSERT INTO `bmx_sessions` (`session_id`, `session_start_date`, `session_end_date`, `workout_type`, `max_distance`, `trainer_id`, `rider_id`, `measurement_unit`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '2017-12-14 11:14:21', '2017-12-14 11:15:46', 3, '50', 14, 3, 'feet', 1, '2017-12-14 11:15:46', '2017-12-14 11:15:46', NULL),
(2, '2017-12-14 11:18:35', NULL, 1, '30', 15, 4, 'feet', 1, '2017-12-14 11:18:36', '2017-12-14 11:18:36', NULL),
(3, '2017-12-14 11:22:49', NULL, 1, '30', 15, 5, 'feet', 1, '2017-12-14 11:22:50', '2017-12-14 11:22:50', NULL),
(4, '2017-12-14 11:35:15', '2017-12-14 11:35:38', 1, '50', 16, 7, 'feet', 1, '2017-12-14 11:35:38', '2017-12-14 11:35:38', NULL),
(5, '2017-12-14 11:35:55', '2017-12-14 11:36:18', 1, '30', 16, 6, 'feet', 1, '2017-12-14 11:36:18', '2017-12-14 11:36:18', NULL),
(6, '2017-12-15 09:55:22', '2017-12-15 10:04:27', 3, '100', 16, 7, 'feet', 1, '2017-12-15 10:04:28', '2017-12-15 10:04:28', NULL),
(7, '2017-12-15 10:10:09', '2017-12-18 07:46:36', 1, '100', 16, 7, 'feet', 1, '2017-12-18 07:46:37', '2017-12-18 07:46:37', NULL),
(8, '2017-12-15 12:12:23', '2017-12-21 12:05:15', 3, '100', 16, 6, 'feet', 1, '2017-12-21 12:05:16', '2017-12-21 12:05:16', NULL),
(9, '2017-12-18 07:48:07', '2017-12-18 07:48:36', 1, '30', 16, 7, 'feet', 1, '2017-12-18 07:48:36', '2017-12-18 07:48:36', NULL),
(10, '2017-12-18 07:48:57', NULL, 1, '100', 16, 7, 'feet', 1, '2017-12-18 07:48:57', '2017-12-18 07:48:57', NULL),
(11, '2017-12-18 07:50:06', '2017-12-18 08:05:47', 1, '100', 16, 7, 'feet', 1, '2017-12-18 08:05:51', '2017-12-18 08:05:51', NULL),
(12, '2017-12-18 10:54:52', '2017-12-18 10:57:38', 2, '100', 13, 2, 'feet', 1, '2017-12-18 10:57:39', '2017-12-18 10:57:39', NULL),
(13, '2017-12-18 13:24:33', '2017-12-18 13:35:26', 1, '30', 17, 8, 'feet', 1, '2017-12-18 13:35:26', '2017-12-18 13:35:26', NULL),
(14, '2017-12-18 13:50:09', '2017-12-18 13:53:23', 1, '30', 17, 8, 'feet', 1, '2017-12-18 13:53:23', '2017-12-18 13:53:23', NULL),
(15, '2017-12-21 15:19:15', '2017-12-21 15:21:00', 2, '30', 17, 8, 'feet', 1, '2017-12-21 15:21:00', '2017-12-21 15:21:00', NULL),
(16, '2017-12-21 15:23:56', '2017-12-21 17:53:29', 2, '50', 17, 8, 'feet', 1, '2017-12-21 17:53:29', '2017-12-21 17:53:29', NULL),
(17, '2017-12-21 17:53:37', '2017-12-25 17:02:59', 2, '30', 17, 8, 'feet', 1, '2017-12-25 17:03:00', '2017-12-25 17:03:00', NULL),
(18, '2017-12-25 17:05:27', '2017-12-27 00:22:32', 3, '50', 17, 8, 'feet', 1, '2017-12-27 00:22:32', '2017-12-27 00:22:32', NULL),
(19, '2017-12-26 03:20:44', NULL, 2, '30', 20, 11, 'feet', 1, '2017-12-26 03:20:44', '2017-12-26 03:20:44', NULL),
(20, '2017-12-26 03:58:39', NULL, 2, '30', 21, 12, 'feet', 1, '2017-12-26 03:58:39', '2017-12-26 03:58:39', NULL),
(21, '2017-12-26 04:53:32', '2017-12-26 04:54:24', 1, '100', 22, 14, 'feet', 1, '2017-12-26 04:54:24', '2017-12-26 04:54:24', NULL),
(22, '2017-12-26 05:11:40', '2017-12-26 05:12:48', 1, '30', 23, 15, 'feet', 1, '2017-12-26 05:12:49', '2017-12-26 05:12:49', NULL),
(23, '2017-12-26 05:13:38', '2017-12-26 05:14:19', 2, '30', 23, 15, 'feet', 1, '2017-12-26 05:14:20', '2017-12-26 05:14:20', NULL),
(24, '2017-12-26 05:14:48', '2017-12-26 05:32:43', 1, '30', 23, 15, 'feet', 1, '2017-12-26 05:32:44', '2017-12-26 05:32:44', NULL),
(25, '2017-12-26 08:18:09', NULL, 2, '50', 24, 16, 'feet', 1, '2017-12-26 08:18:09', '2017-12-26 08:18:09', NULL),
(26, '2017-12-26 10:48:30', NULL, 1, '100', 26, 18, 'feet', 1, '2017-12-26 10:48:31', '2017-12-26 10:48:31', NULL),
(27, '2017-12-26 17:01:07', NULL, 1, '30', 28, 21, 'feet', 1, '2017-12-26 17:01:08', '2017-12-26 17:01:08', NULL),
(28, '2017-12-26 17:26:37', '2017-12-26 17:33:57', 4, '30', 25, 17, 'feet', 1, '2017-12-26 17:33:57', '2017-12-26 17:33:57', NULL),
(29, '2017-12-26 17:37:07', '2017-12-26 17:38:13', 1, '30', 25, 17, 'feet', 1, '2017-12-26 17:38:13', '2017-12-26 17:38:13', NULL),
(30, '2017-12-26 17:39:27', '2017-12-26 17:40:14', 1, '30', 25, 17, 'feet', 1, '2017-12-26 17:40:15', '2017-12-26 17:40:15', NULL),
(31, '2017-12-26 17:41:35', '2017-12-26 17:43:08', 1, '30', 25, 17, 'feet', 1, '2017-12-26 17:43:08', '2017-12-26 17:43:08', NULL),
(32, '2017-12-26 17:48:49', '2017-12-26 17:50:43', 1, '30', 25, 17, 'feet', 1, '2017-12-26 17:50:43', '2017-12-26 17:50:43', NULL),
(33, '2017-12-26 17:51:55', '2017-12-26 17:53:49', 3, '100', 25, 17, 'feet', 1, '2017-12-26 17:53:49', '2017-12-26 17:53:49', NULL),
(34, '2017-12-26 18:40:09', '2017-12-26 18:41:01', 2, '100', 27, 19, 'feet', 1, '2017-12-26 18:41:01', '2017-12-26 18:41:01', NULL),
(35, '2017-12-26 18:41:36', '2017-12-26 18:44:20', 2, '100', 27, 19, 'feet', 1, '2017-12-26 18:44:20', '2017-12-26 18:44:20', NULL),
(36, '2017-12-26 19:29:40', '2017-12-26 19:59:50', 1, '30', 27, 19, 'feet', 1, '2017-12-26 19:59:50', '2017-12-26 19:59:50', NULL),
(37, '2017-12-26 20:00:52', '2017-12-26 20:05:03', 1, '30', 27, 19, 'feet', 1, '2017-12-26 20:05:03', '2017-12-26 20:05:03', NULL),
(38, '2017-12-26 20:06:10', '2017-12-26 23:23:33', 3, '30', 27, 19, 'feet', 1, '2017-12-26 23:23:33', '2017-12-26 23:23:33', NULL),
(39, '2017-12-26 20:20:09', NULL, 1, '30', 31, 24, 'feet', 1, '2017-12-26 20:20:10', '2017-12-26 20:20:10', NULL),
(40, '2017-12-26 23:24:22', '2017-12-26 23:31:03', 2, '50', 27, 19, 'feet', 1, '2017-12-26 23:31:03', '2017-12-26 23:31:03', NULL),
(41, '2017-12-27 00:22:40', '2017-12-27 00:23:09', 2, '30', 17, 8, 'feet', 1, '2017-12-27 00:23:09', '2017-12-27 00:23:09', NULL),
(42, '2017-12-27 00:23:24', '2017-12-27 00:23:53', 2, '30', 17, 8, 'feet', 1, '2017-12-27 00:23:53', '2017-12-27 00:23:53', NULL),
(43, '2017-12-27 00:24:11', '2017-12-27 00:24:37', 2, '30', 17, 8, 'feet', 1, '2017-12-27 00:24:37', '2017-12-27 00:24:37', NULL),
(44, '2017-12-27 00:24:49', '2017-12-27 00:25:11', 2, '30', 17, 8, 'feet', 1, '2017-12-27 00:25:11', '2017-12-27 00:25:11', NULL),
(45, '2017-12-27 00:25:19', '2017-12-27 00:25:39', 2, '30', 17, 8, 'feet', 1, '2017-12-27 00:25:39', '2017-12-27 00:25:39', NULL),
(46, '2017-12-27 01:10:35', NULL, 3, '30', 36, 29, 'feet', 1, '2017-12-27 01:10:35', '2017-12-27 01:10:35', NULL),
(47, '2017-12-27 01:27:29', '2017-12-28 01:40:59', 2, '30', 37, 30, 'feet', 1, '2017-12-28 01:41:00', '2017-12-28 01:41:00', NULL),
(48, '2017-12-27 01:54:36', '2017-12-27 01:54:56', 2, '30', 17, 8, 'feet', 1, '2017-12-27 01:54:56', '2017-12-27 01:54:56', NULL),
(49, '2017-12-27 01:55:08', '2017-12-27 01:55:36', 2, '30', 17, 8, 'feet', 1, '2017-12-27 01:55:36', '2017-12-27 01:55:36', NULL),
(50, '2017-12-27 01:55:51', '2017-12-27 01:56:14', 2, '30', 17, 8, 'feet', 1, '2017-12-27 01:56:14', '2017-12-27 01:56:14', NULL),
(51, '2017-12-27 01:56:24', '2017-12-27 01:56:46', 2, '30', 17, 8, 'feet', 1, '2017-12-27 01:56:46', '2017-12-27 01:56:46', NULL),
(52, '2017-12-27 03:41:36', NULL, 1, '50', 38, 31, 'feet', 1, '2017-12-27 03:41:37', '2017-12-27 03:41:37', NULL),
(53, '2017-12-27 04:42:26', '2017-12-27 05:14:43', 2, '30', 39, 32, 'feet', 1, '2017-12-27 05:14:44', '2017-12-27 05:14:44', NULL),
(54, '2017-12-27 04:46:47', '2017-12-27 05:00:43', 2, '30', 39, 33, 'feet', 1, '2017-12-27 05:00:44', '2017-12-27 05:00:44', NULL),
(55, '2017-12-27 05:01:32', '2017-12-27 05:02:16', 2, '30', 39, 33, 'feet', 1, '2017-12-27 05:02:16', '2017-12-27 05:02:16', NULL),
(56, '2017-12-27 05:38:13', NULL, 1, '50', 38, 34, 'feet', 1, '2017-12-27 05:38:14', '2017-12-27 05:38:14', NULL),
(57, '2017-12-27 06:12:59', '2017-12-27 06:25:06', 1, '50', 23, 15, 'feet', 1, '2017-12-27 06:25:06', '2017-12-27 06:25:06', NULL),
(58, '2017-12-27 09:46:36', '2017-12-27 09:54:05', 1, '100', 22, 14, 'feet', 1, '2017-12-27 09:54:06', '2017-12-27 09:54:06', NULL),
(59, '2017-12-27 09:54:56', '2017-12-27 09:55:43', 3, '100', 22, 14, 'feet', 1, '2017-12-27 09:55:43', '2017-12-27 09:55:43', NULL),
(60, '2017-12-27 09:58:47', '2017-12-27 10:01:19', 1, '100', 22, 14, 'feet', 1, '2017-12-27 10:01:19', '2017-12-27 10:01:19', NULL),
(61, '2017-12-27 10:01:34', '2017-12-27 10:21:56', 3, '100', 22, 14, 'feet', 1, '2017-12-27 10:21:57', '2017-12-27 10:21:57', NULL),
(62, '2017-12-27 10:23:45', '2017-12-27 10:45:37', 1, '100', 22, 14, 'feet', 1, '2017-12-27 10:45:37', '2017-12-27 10:45:37', NULL),
(63, '2017-12-28 01:41:14', '2017-12-28 01:43:48', 2, '30', 37, 30, 'feet', 1, '2017-12-28 01:43:48', '2017-12-28 01:43:48', NULL),
(64, '2017-12-28 04:03:03', '2017-12-28 04:08:49', 2, '30', 27, 19, 'feet', 1, '2017-12-28 04:08:49', '2017-12-28 04:08:49', NULL),
(65, '2017-12-28 04:55:28', '2017-12-28 04:58:10', 1, '50', 41, 35, 'feet', 1, '2017-12-28 04:58:10', '2017-12-28 04:58:10', NULL),
(66, '2017-12-28 09:23:24', '2017-12-28 09:24:09', 2, '30', 40, 36, 'feet', 1, '2017-12-28 09:24:09', '2017-12-28 09:24:09', NULL),
(67, '2017-12-28 14:27:06', '2017-12-28 14:28:25', 2, '30', 42, 38, 'feet', 1, '2017-12-28 14:28:25', '2017-12-28 14:28:25', NULL),
(68, '2017-12-28 18:22:44', '2017-12-28 18:33:46', 2, '30', 46, 41, 'feet', 1, '2017-12-28 18:33:46', '2017-12-28 18:33:46', NULL),
(69, '2017-12-28 18:36:03', '2017-12-28 18:50:56', 1, '30', 46, 41, 'feet', 1, '2017-12-28 18:50:56', '2017-12-28 18:50:56', NULL),
(70, '2017-12-28 21:11:45', '2017-12-28 21:15:01', 2, '30', 43, 39, 'feet', 1, '2017-12-28 21:15:01', '2017-12-28 21:15:01', NULL),
(71, '2017-12-28 23:07:09', '2017-12-28 23:40:41', 2, '30', 46, 41, 'feet', 1, '2017-12-28 23:40:42', '2017-12-28 23:40:42', NULL),
(72, '2017-12-29 01:28:53', '2017-12-29 01:30:17', 1, '30', 47, 43, 'feet', 1, '2017-12-29 01:30:17', '2017-12-29 01:30:17', NULL),
(73, '2017-12-29 01:31:35', NULL, 2, '30', 47, 43, 'feet', 1, '2017-12-29 01:31:35', '2017-12-29 01:31:35', NULL),
(74, '2017-12-29 08:24:08', '2017-12-29 08:26:48', 2, '30', 23, 15, 'feet', 1, '2017-12-29 08:26:49', '2017-12-29 08:26:49', NULL),
(75, '2017-12-29 08:27:38', '2017-12-29 08:28:38', 2, '30', 23, 15, 'feet', 1, '2017-12-29 08:28:38', '2017-12-29 08:28:38', NULL),
(76, '2017-12-29 08:29:05', '2017-12-29 08:30:06', 2, '30', 23, 15, 'feet', 1, '2017-12-29 08:30:07', '2017-12-29 08:30:07', NULL),
(77, '2017-12-29 08:30:20', '2017-12-29 08:31:44', 2, '30', 23, 15, 'feet', 1, '2017-12-29 08:31:45', '2017-12-29 08:31:45', NULL),
(78, '2017-12-29 08:33:08', '2017-12-29 08:35:34', 1, '30', 23, 15, 'feet', 1, '2017-12-29 08:35:34', '2017-12-29 08:35:34', NULL),
(79, '2017-12-29 18:18:42', '2017-12-30 02:07:04', 1, '30', 48, 44, 'feet', 1, '2017-12-30 02:07:05', '2017-12-30 02:07:05', NULL),
(80, '2017-12-29 20:37:43', '2017-12-29 20:59:36', 1, '30', 49, 46, 'feet', 1, '2017-12-29 20:59:36', '2017-12-29 20:59:36', NULL),
(81, '2017-12-29 22:39:20', '2017-12-29 22:40:15', 3, '30', 53, 49, 'feet', 1, '2017-12-29 22:40:15', '2017-12-29 22:40:15', NULL),
(82, '2017-12-30 01:17:27', NULL, 2, '30', 23, 15, 'feet', 1, '2017-12-30 01:17:28', '2017-12-30 01:17:28', NULL),
(83, '2017-12-30 18:16:06', '2017-12-30 19:04:32', 2, '30', 46, 41, 'feet', 1, '2017-12-30 19:04:33', '2017-12-30 19:04:33', NULL),
(84, '2017-12-30 18:22:21', '2017-12-31 14:13:36', 1, '30', 55, 50, 'feet', 1, '2017-12-31 14:13:36', '2017-12-31 14:13:36', NULL),
(85, '2017-12-30 21:17:12', NULL, 2, '30', 46, 41, 'feet', 1, '2017-12-30 21:17:13', '2017-12-30 21:17:13', NULL),
(86, '2017-12-30 22:08:55', NULL, 2, '30', 43, 39, 'feet', 1, '2017-12-30 22:08:55', '2017-12-30 22:08:55', NULL),
(87, '2017-12-30 22:41:13', '2017-12-30 22:42:08', 1, '30', 56, 51, 'feet', 1, '2017-12-30 22:42:08', '2017-12-30 22:42:08', NULL),
(88, '2017-12-31 00:18:13', NULL, 1, '30', 57, 53, 'feet', 1, '2017-12-31 00:18:13', '2017-12-31 00:18:13', NULL),
(89, '2017-12-31 02:01:43', NULL, 4, '30', 58, 54, 'feet', 1, '2017-12-31 02:01:44', '2017-12-31 02:01:44', NULL),
(90, '2017-12-31 14:13:49', '2017-12-31 14:14:36', 1, '30', 55, 50, 'feet', 1, '2017-12-31 14:14:36', '2017-12-31 14:14:36', NULL),
(91, '2017-12-31 14:15:10', '2017-12-31 14:20:23', 1, '30', 55, 50, 'feet', 1, '2017-12-31 14:20:23', '2017-12-31 14:20:23', NULL),
(92, '2017-12-31 15:04:59', '2017-12-31 15:07:29', 1, '50', 50, 55, 'feet', 1, '2017-12-31 15:07:30', '2017-12-31 15:07:30', NULL),
(93, '2017-12-31 15:07:39', '2017-12-31 15:25:14', 1, '50', 50, 55, 'feet', 1, '2017-12-31 15:25:14', '2017-12-31 15:25:14', NULL),
(94, '2018-01-02 03:30:51', '2018-01-02 03:36:52', 2, '30', 27, 19, 'feet', 1, '2018-01-02 03:36:52', '2018-01-02 03:36:52', NULL),
(95, '2018-01-02 04:10:57', NULL, 1, '50', 61, 58, 'feet', 1, '2018-01-02 04:10:57', '2018-01-02 04:10:57', NULL),
(96, '2018-01-02 13:40:01', '2018-01-02 13:40:28', 3, '50', 62, 60, 'feet', 1, '2018-01-02 13:40:28', '2018-01-02 13:40:28', NULL),
(97, '2018-01-02 13:40:56', '2018-01-02 13:42:22', 3, '50', 62, 60, 'feet', 1, '2018-01-02 13:42:22', '2018-01-02 13:42:22', NULL),
(98, '2018-01-02 13:43:02', '2018-01-02 13:44:16', 3, '50', 62, 60, 'feet', 1, '2018-01-02 13:44:16', '2018-01-02 13:44:16', NULL),
(99, '2018-01-02 21:40:40', '2018-01-02 22:09:16', 1, '100', 62, 60, 'feet', 1, '2018-01-02 22:09:17', '2018-01-02 22:09:17', NULL),
(100, '2018-01-02 23:04:38', '2018-01-02 23:32:35', 4, '50', 53, 49, 'feet', 1, '2018-01-02 23:32:35', '2018-01-02 23:32:35', NULL),
(101, '2018-01-02 23:41:03', '2018-01-02 23:46:01', 2, '50', 53, 49, 'feet', 1, '2018-01-02 23:46:01', '2018-01-02 23:46:01', NULL),
(102, '2018-01-03 00:00:18', '2018-01-03 00:29:32', 1, '30', 65, 62, 'feet', 1, '2018-01-03 00:29:33', '2018-01-03 00:29:33', NULL),
(103, '2018-01-03 00:34:25', '2018-01-03 00:35:25', 1, '30', 65, 62, 'feet', 1, '2018-01-03 00:35:25', '2018-01-03 00:35:25', NULL),
(104, '2018-01-03 03:31:10', NULL, 2, '30', 39, 33, 'feet', 1, '2018-01-03 03:31:11', '2018-01-03 03:31:11', NULL),
(105, '2018-01-03 03:39:48', NULL, 2, '30', 39, 32, 'feet', 1, '2018-01-03 03:39:49', '2018-01-03 03:39:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bmx_sprints`
--

CREATE TABLE `bmx_sprints` (
  `sprint_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `sprint_start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sprint_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ST` decimal(10,3) DEFAULT NULL,
  `RT` decimal(10,3) DEFAULT NULL,
  `distance_30` decimal(10,3) DEFAULT NULL,
  `distance_50` decimal(10,3) DEFAULT NULL,
  `distance_100` decimal(10,3) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inactive , 1 = active',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bmx_sprints`
--

INSERT INTO `bmx_sprints` (`sprint_id`, `session_id`, `sprint_start_time`, `sprint_end_time`, `ST`, `RT`, `distance_30`, `distance_50`, `distance_100`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 1, '2017-12-14 11:15:24', '2017-12-14 11:15:24', '0.000', NULL, '4.155', '11.209', NULL, 1, '2017-12-14 11:15:24', '2017-12-14 11:15:24', NULL),
(2, 2, '2017-12-14 11:19:36', '2017-12-14 11:19:36', '0.000', NULL, '21.677', NULL, NULL, 1, '2017-12-14 11:19:37', '2017-12-14 11:19:37', NULL),
(3, 2, '2017-12-14 11:20:00', '2017-12-14 11:20:00', '0.000', NULL, '2.621', NULL, NULL, 1, '2017-12-14 11:20:00', '2017-12-14 11:20:00', NULL),
(4, 2, '2017-12-14 11:20:29', '2017-12-14 11:20:29', '0.000', NULL, '2.792', NULL, NULL, 1, '2017-12-14 11:20:29', '2017-12-14 11:20:29', NULL),
(5, 2, '2017-12-14 11:21:28', '2017-12-14 11:21:28', '0.000', NULL, '1.155', NULL, NULL, 1, '2017-12-14 11:21:29', '2017-12-14 11:21:29', NULL),
(6, 3, '2017-12-14 11:23:05', '2017-12-14 11:23:05', '0.000', NULL, '1.709', NULL, NULL, 1, '2017-12-14 11:23:05', '2017-12-14 11:23:05', NULL),
(7, 4, '2017-12-14 11:35:31', '2017-12-14 11:35:31', '0.000', NULL, '1.916', '3.574', NULL, 1, '2017-12-14 11:35:32', '2017-12-14 11:35:32', NULL),
(8, 5, '2017-12-14 11:36:14', '2017-12-14 11:36:14', '0.000', NULL, '4.176', NULL, NULL, 1, '2017-12-14 11:36:15', '2017-12-14 11:36:15', NULL),
(9, 6, '2017-12-15 10:00:07', '2017-12-15 10:00:07', '0.000', NULL, '1.648', '4.400', '7.736', 1, '2017-12-15 10:00:07', '2017-12-15 10:00:07', NULL),
(10, 6, '2017-12-15 10:04:23', '2017-12-15 10:04:23', '0.000', NULL, '1.692', '5.254', '7.645', 1, '2017-12-15 10:04:24', '2017-12-15 10:04:24', NULL),
(11, 7, '2017-12-15 10:14:30', '2017-12-15 10:14:30', '0.000', NULL, '1.866', '4.037', '6.465', 1, '2017-12-15 10:20:15', '2017-12-15 10:20:15', '2017-12-15 10:20:15'),
(12, 7, '2017-12-15 13:45:29', '2017-12-15 13:45:29', '0.000', NULL, '0.921', '2.099', '3.374', 1, '2017-12-15 13:45:30', '2017-12-15 13:45:30', NULL),
(13, 7, '2017-12-15 14:05:27', '2017-12-15 14:05:27', '0.000', NULL, '2.252', '4.028', '5.648', 1, '2017-12-15 14:05:28', '2017-12-15 14:05:28', NULL),
(14, 7, '2017-12-15 14:12:57', '2017-12-15 14:12:57', '0.000', NULL, '1.175', '2.414', '3.269', 1, '2017-12-15 14:16:43', '2017-12-15 14:16:43', '2017-12-15 14:16:43'),
(15, 7, '2017-12-15 14:24:43', '2017-12-15 14:24:43', '0.000', NULL, '0.831', '1.511', '2.411', 1, '2017-12-15 14:27:10', '2017-12-15 14:27:10', '2017-12-15 14:27:10'),
(16, 7, '2017-12-15 14:33:02', '2017-12-15 14:33:02', '0.000', NULL, '1.769', '3.826', '7.827', 1, '2017-12-15 14:33:03', '2017-12-15 14:33:03', NULL),
(17, 7, '2017-12-15 14:41:00', '2017-12-15 14:41:00', '0.000', NULL, '1.657', '3.196', '4.927', 1, '2017-12-15 14:41:04', '2017-12-15 14:41:04', NULL),
(18, 7, '2017-12-15 14:49:47', '2017-12-15 14:49:47', '0.000', NULL, '0.609', '1.816', '2.555', 1, '2017-12-15 14:49:51', '2017-12-15 14:49:51', NULL),
(19, 7, '2017-12-18 06:42:46', '2017-12-18 06:42:46', '0.000', NULL, '0.230', '0.497', '0.745', 1, '2017-12-18 06:42:46', '2017-12-18 06:42:46', NULL),
(20, 7, '2017-12-18 06:52:43', '2017-12-18 06:52:43', '0.000', NULL, '0.376', '0.679', '0.964', 1, '2017-12-18 06:52:43', '2017-12-18 06:52:43', NULL),
(21, 8, '2017-12-18 07:00:22', '2017-12-18 07:00:22', '0.000', NULL, '0.329', '0.596', '0.927', 1, '2017-12-18 07:00:22', '2017-12-18 07:00:22', NULL),
(22, 8, '2017-12-18 07:01:15', '2017-12-18 07:01:15', '0.000', NULL, '0.927', '1.377', '2.980', 1, '2017-12-18 07:01:16', '2017-12-18 07:01:16', NULL),
(23, 7, '2017-12-18 07:06:27', '2017-12-18 07:06:27', '0.000', NULL, '0.292', '0.510', '0.779', 1, '2017-12-18 07:06:28', '2017-12-18 07:06:28', NULL),
(24, 7, '2017-12-18 07:18:54', '2017-12-18 07:18:54', '0.000', NULL, '0.261', '0.495', '0.753', 1, '2017-12-18 07:18:58', '2017-12-18 07:18:58', NULL),
(25, 7, '2017-12-18 07:32:57', '2017-12-18 07:32:57', '0.000', NULL, '0.581', '0.965', '1.283', 1, '2017-12-18 07:32:57', '2017-12-18 07:32:57', NULL),
(26, 7, '2017-12-18 07:36:05', '2017-12-18 07:36:05', '0.000', NULL, '0.239', '0.506', '0.773', 1, '2017-12-18 07:36:06', '2017-12-18 07:36:06', NULL),
(27, 7, '2017-12-18 07:46:13', '2017-12-18 07:46:13', '0.000', NULL, '0.232', '0.555', '0.832', 1, '2017-12-18 07:46:14', '2017-12-18 07:46:14', NULL),
(28, 9, '2017-12-18 07:48:24', '2017-12-18 07:48:24', '0.000', NULL, '4.160', NULL, NULL, 1, '2017-12-18 07:48:24', '2017-12-18 07:48:24', NULL),
(29, 10, '2017-12-18 07:49:19', '2017-12-18 07:49:19', '0.000', NULL, '1.884', '2.318', '4.650', 1, '2017-12-18 07:49:19', '2017-12-18 07:49:19', NULL),
(30, 11, '2017-12-18 08:01:12', '2017-12-18 08:01:12', '0.000', NULL, '0.334', '0.749', '1.097', 1, '2017-12-18 08:01:13', '2017-12-18 08:01:13', NULL),
(31, 11, '2017-12-18 08:02:28', '2017-12-18 08:02:28', '0.000', NULL, '1.906', '5.517', '8.683', 1, '2017-12-18 08:02:29', '2017-12-18 08:02:29', NULL),
(32, 12, '2017-12-18 10:55:19', '2017-12-18 10:55:19', '0.000', NULL, '0.650', '3.298', '6.015', 1, '2017-12-18 10:55:19', '2017-12-18 10:55:19', NULL),
(33, 12, '2017-12-18 10:56:44', '2017-12-18 10:56:44', '0.000', NULL, '1.102', '2.601', '4.752', 1, '2017-12-18 10:56:45', '2017-12-18 10:56:45', NULL),
(34, 12, '2017-12-18 10:57:26', '2017-12-18 10:57:26', '0.000', NULL, '1.161', '3.227', '6.095', 1, '2017-12-18 10:57:26', '2017-12-18 10:57:26', NULL),
(35, 13, '2017-12-18 13:25:46', '2017-12-18 13:25:46', '0.000', NULL, '1.499', NULL, NULL, 1, '2017-12-18 13:25:46', '2017-12-18 13:25:46', NULL),
(36, 13, '2017-12-18 13:30:35', '2017-12-18 13:30:35', '0.000', NULL, '1.453', NULL, NULL, 1, '2017-12-18 13:30:35', '2017-12-18 13:30:35', NULL),
(37, 13, '2017-12-18 13:32:55', '2017-12-18 13:32:55', '0.000', NULL, '1.694', NULL, NULL, 1, '2017-12-18 13:32:56', '2017-12-18 13:32:56', NULL),
(38, 13, '2017-12-18 13:33:36', '2017-12-18 13:33:36', '0.000', NULL, '1.426', NULL, NULL, 1, '2017-12-18 13:33:36', '2017-12-18 13:33:36', NULL),
(39, 13, '2017-12-18 13:35:21', '2017-12-18 13:35:21', '0.000', NULL, '1.325', NULL, NULL, 1, '2017-12-18 13:35:21', '2017-12-18 13:35:21', NULL),
(40, 14, '2017-12-18 13:50:53', '2017-12-18 13:50:53', '0.000', NULL, '1.567', NULL, NULL, 1, '2017-12-18 13:50:53', '2017-12-18 13:50:53', NULL),
(41, 14, '2017-12-18 13:53:13', '2017-12-18 13:53:13', '0.000', NULL, '1.500', NULL, NULL, 1, '2017-12-18 13:53:13', '2017-12-18 13:53:13', NULL),
(42, 8, '2017-12-21 12:04:53', '2017-12-21 12:04:53', '0.000', NULL, '0.867', '2.182', '3.467', 1, '2017-12-21 12:04:54', '2017-12-21 12:04:54', NULL),
(43, 15, '2017-12-21 15:20:44', '2017-12-21 15:20:44', '0.000', NULL, '1.480', NULL, NULL, 1, '2017-12-21 15:20:44', '2017-12-21 15:20:44', NULL),
(44, 16, '2017-12-21 15:25:11', '2017-12-21 15:25:11', '0.000', NULL, '1.588', '2.847', NULL, 1, '2017-12-21 15:25:32', '2017-12-21 15:25:32', '2017-12-21 15:25:32'),
(45, 16, '2017-12-21 17:53:05', '2017-12-21 17:53:05', '0.000', NULL, '1.700', '3.733', NULL, 1, '2017-12-21 17:53:05', '2017-12-21 17:53:05', NULL),
(46, 17, '2017-12-21 17:54:26', '2017-12-21 17:54:26', '0.000', NULL, '1.633', NULL, NULL, 1, '2017-12-21 17:54:26', '2017-12-21 17:54:26', NULL),
(47, 18, '2017-12-25 17:06:34', '2017-12-25 17:06:34', '0.000', NULL, '1.941', '2.715', NULL, 1, '2017-12-25 17:06:54', '2017-12-25 17:06:54', '2017-12-25 17:06:54'),
(48, 24, '2017-12-26 05:32:09', '2017-12-26 05:32:09', '0.000', NULL, '2.369', NULL, NULL, 1, '2017-12-26 05:32:10', '2017-12-26 05:32:10', NULL),
(49, 28, '2017-12-26 17:30:16', '2017-12-26 17:30:16', '0.000', NULL, '2.166', NULL, NULL, 1, '2017-12-26 17:30:16', '2017-12-26 17:30:16', NULL),
(50, 28, '2017-12-26 17:33:40', '2017-12-26 17:33:40', '0.000', NULL, '2.000', NULL, NULL, 1, '2017-12-26 17:33:40', '2017-12-26 17:33:40', NULL),
(51, 29, '2017-12-26 17:38:07', '2017-12-26 17:38:07', '0.000', NULL, '2.067', NULL, NULL, 1, '2017-12-26 17:38:07', '2017-12-26 17:38:07', NULL),
(52, 30, '2017-12-26 17:40:04', '2017-12-26 17:40:04', '0.000', NULL, '2.033', NULL, NULL, 1, '2017-12-26 17:40:05', '2017-12-26 17:40:05', NULL),
(53, 31, '2017-12-26 17:42:48', '2017-12-26 17:42:48', '0.000', NULL, '2.100', NULL, NULL, 1, '2017-12-26 17:42:48', '2017-12-26 17:42:48', NULL),
(54, 32, '2017-12-26 17:49:56', '2017-12-26 17:49:56', '0.000', NULL, '2.135', NULL, NULL, 1, '2017-12-26 17:49:56', '2017-12-26 17:49:56', NULL),
(55, 36, '2017-12-26 19:56:59', '2017-12-26 19:56:59', '0.000', NULL, '1.834', NULL, NULL, 1, '2017-12-26 19:56:59', '2017-12-26 19:56:59', NULL),
(56, 36, '2017-12-26 19:58:29', '2017-12-26 19:58:29', '0.000', NULL, '1.800', NULL, NULL, 1, '2017-12-26 19:58:29', '2017-12-26 19:58:29', NULL),
(57, 36, '2017-12-26 19:59:33', '2017-12-26 19:59:33', '0.000', NULL, '1.800', NULL, NULL, 1, '2017-12-26 19:59:33', '2017-12-26 19:59:33', NULL),
(58, 37, '2017-12-26 20:01:37', '2017-12-26 20:01:37', '0.000', NULL, '1.833', NULL, NULL, 1, '2017-12-26 20:01:37', '2017-12-26 20:01:37', NULL),
(59, 37, '2017-12-26 20:02:43', '2017-12-26 20:02:43', '0.000', NULL, '1.734', NULL, NULL, 1, '2017-12-26 20:02:43', '2017-12-26 20:02:43', NULL),
(60, 37, '2017-12-26 20:03:52', '2017-12-26 20:03:52', '0.000', NULL, '1.834', NULL, NULL, 1, '2017-12-26 20:03:52', '2017-12-26 20:03:52', NULL),
(61, 37, '2017-12-26 20:04:52', '2017-12-26 20:04:52', '0.000', NULL, '1.765', NULL, NULL, 1, '2017-12-26 20:04:52', '2017-12-26 20:04:52', NULL),
(62, 38, '2017-12-26 20:06:29', '2017-12-26 20:06:29', '0.000', NULL, '1.734', NULL, NULL, 1, '2017-12-26 20:06:30', '2017-12-26 20:06:30', NULL),
(63, 40, '2017-12-26 23:25:18', '2017-12-26 23:25:18', '0.000', NULL, '1.567', '2.633', NULL, 1, '2017-12-26 23:25:18', '2017-12-26 23:25:18', NULL),
(64, 40, '2017-12-26 23:26:38', '2017-12-26 23:26:38', '0.000', NULL, '1.567', '2.634', NULL, 1, '2017-12-26 23:26:38', '2017-12-26 23:26:38', NULL),
(65, 40, '2017-12-26 23:28:04', '2017-12-26 23:28:04', '0.000', NULL, '1.567', '2.634', NULL, 1, '2017-12-26 23:28:04', '2017-12-26 23:28:04', NULL),
(66, 40, '2017-12-26 23:30:17', '2017-12-26 23:30:17', '0.000', NULL, '13.000', '20.667', NULL, 1, '2017-12-26 23:30:46', '2017-12-26 23:30:46', '2017-12-26 23:30:46'),
(67, 41, '2017-12-27 00:23:05', '2017-12-27 00:23:05', '0.000', NULL, '1.618', NULL, NULL, 1, '2017-12-27 00:23:05', '2017-12-27 00:23:05', NULL),
(68, 42, '2017-12-27 00:23:49', '2017-12-27 00:23:49', '0.000', NULL, '1.522', NULL, NULL, 1, '2017-12-27 00:23:49', '2017-12-27 00:23:49', NULL),
(69, 43, '2017-12-27 00:24:34', '2017-12-27 00:24:34', '0.000', NULL, '1.547', NULL, NULL, 1, '2017-12-27 00:24:34', '2017-12-27 00:24:34', NULL),
(70, 44, '2017-12-27 00:25:07', '2017-12-27 00:25:07', '0.000', NULL, '1.497', NULL, NULL, 1, '2017-12-27 00:25:07', '2017-12-27 00:25:07', NULL),
(71, 45, '2017-12-27 00:25:37', '2017-12-27 00:25:37', '0.000', NULL, '1.480', NULL, NULL, 1, '2017-12-27 00:25:37', '2017-12-27 00:25:37', NULL),
(72, 47, '2017-12-27 01:29:31', '2017-12-27 01:29:31', '0.000', NULL, '2.738', NULL, NULL, 1, '2017-12-27 01:29:32', '2017-12-27 01:29:32', NULL),
(73, 48, '2017-12-27 01:54:51', '2017-12-27 01:54:51', '0.000', NULL, '1.417', NULL, NULL, 1, '2017-12-27 01:54:51', '2017-12-27 01:54:51', NULL),
(74, 49, '2017-12-27 01:55:31', '2017-12-27 01:55:31', '0.000', NULL, '1.522', NULL, NULL, 1, '2017-12-27 01:55:31', '2017-12-27 01:55:31', NULL),
(75, 50, '2017-12-27 01:56:09', '2017-12-27 01:56:09', '0.000', NULL, '1.501', NULL, NULL, 1, '2017-12-27 01:56:09', '2017-12-27 01:56:09', NULL),
(76, 51, '2017-12-27 01:56:42', '2017-12-27 01:56:42', '0.000', NULL, '1.409', NULL, NULL, 1, '2017-12-27 01:56:43', '2017-12-27 01:56:43', NULL),
(77, 53, '2017-12-27 04:46:09', '2017-12-27 04:46:09', '0.000', NULL, '2.740', NULL, NULL, 1, '2017-12-27 04:46:10', '2017-12-27 04:46:10', NULL),
(78, 54, '2017-12-27 04:50:00', '2017-12-27 04:50:00', '0.000', NULL, '2.897', NULL, NULL, 1, '2017-12-27 04:50:00', '2017-12-27 04:50:00', NULL),
(79, 53, '2017-12-27 04:59:34', '2017-12-27 04:59:34', '0.000', NULL, '2.786', NULL, NULL, 1, '2017-12-27 04:59:35', '2017-12-27 04:59:35', NULL),
(80, 54, '2017-12-27 05:00:38', '2017-12-27 05:00:38', '0.000', NULL, '2.822', NULL, NULL, 1, '2017-12-27 05:00:39', '2017-12-27 05:00:39', NULL),
(81, 55, '2017-12-27 05:02:10', '2017-12-27 05:02:10', '0.000', NULL, '2.875', NULL, NULL, 1, '2017-12-27 05:02:10', '2017-12-27 05:02:10', NULL),
(82, 53, '2017-12-27 05:14:13', '2017-12-27 05:14:13', '0.000', NULL, '2.750', NULL, NULL, 1, '2017-12-27 05:14:13', '2017-12-27 05:14:13', NULL),
(83, 52, '2017-12-27 05:53:46', '2017-12-27 05:53:46', '0.000', NULL, '2.487', '3.337', NULL, 1, '2017-12-27 05:53:47', '2017-12-27 05:53:47', NULL),
(84, 57, '2017-12-27 06:16:59', '2017-12-27 06:16:59', '0.000', NULL, '2.470', '3.605', NULL, 1, '2017-12-27 06:17:36', '2017-12-27 06:17:36', '2017-12-27 06:17:36'),
(85, 57, '2017-12-27 06:19:24', '2017-12-27 06:19:24', '0.000', NULL, '2.348', '2.723', NULL, 1, '2017-12-27 06:19:35', '2017-12-27 06:19:35', '2017-12-27 06:19:35'),
(86, 57, '2017-12-27 06:20:57', '2017-12-27 06:20:57', '0.000', NULL, '2.323', '3.173', NULL, 1, '2017-12-27 06:21:19', '2017-12-27 06:21:19', '2017-12-27 06:21:19'),
(87, 57, '2017-12-27 06:22:25', '2017-12-27 06:22:25', '0.000', NULL, '2.630', '3.399', NULL, 1, '2017-12-27 06:22:39', '2017-12-27 06:22:39', '2017-12-27 06:22:39'),
(88, 57, '2017-12-27 06:23:38', '2017-12-27 06:23:38', '0.000', NULL, '2.677', '3.312', NULL, 1, '2017-12-27 06:23:51', '2017-12-27 06:23:51', '2017-12-27 06:23:51'),
(89, 61, '2017-12-27 10:03:39', '2017-12-27 10:03:39', '0.000', NULL, '2.081', '3.231', '4.201', 1, '2017-12-27 10:03:40', '2017-12-27 10:03:40', NULL),
(90, 61, '2017-12-27 10:07:11', '2017-12-27 10:07:11', '0.000', NULL, '1.986', '3.166', '4.143', 1, '2017-12-27 10:07:12', '2017-12-27 10:07:12', NULL),
(91, 61, '2017-12-27 10:21:18', '2017-12-27 10:21:18', '0.000', NULL, '7.637', '12.343', '14.412', 1, '2017-12-27 10:21:34', '2017-12-27 10:21:34', '2017-12-27 10:21:34'),
(92, 62, '2017-12-27 10:44:26', '2017-12-27 10:44:26', '0.000', NULL, '5.266', '10.533', '12.293', 1, '2017-12-27 10:44:26', '2017-12-27 10:44:26', NULL),
(93, 62, '2017-12-27 10:45:18', '2017-12-27 10:45:18', '0.000', NULL, '1.559', '2.722', '3.814', 1, '2017-12-27 10:45:18', '2017-12-27 10:45:18', NULL),
(94, 63, '2017-12-28 01:43:11', '2017-12-28 01:43:11', '0.000', NULL, '2.967', NULL, NULL, 1, '2017-12-28 01:43:11', '2017-12-28 01:43:11', NULL),
(95, 64, '2017-12-28 04:03:48', '2017-12-28 04:03:48', '0.000', NULL, '1.567', NULL, NULL, 1, '2017-12-28 04:03:48', '2017-12-28 04:03:48', NULL),
(96, 64, '2017-12-28 04:04:39', '2017-12-28 04:04:39', '0.000', NULL, '1.600', NULL, NULL, 1, '2017-12-28 04:04:39', '2017-12-28 04:04:39', NULL),
(97, 64, '2017-12-28 04:05:51', '2017-12-28 04:05:51', '0.000', NULL, '1.567', NULL, NULL, 1, '2017-12-28 04:05:52', '2017-12-28 04:05:52', NULL),
(98, 64, '2017-12-28 04:07:46', '2017-12-28 04:07:46', '0.000', NULL, '1.600', NULL, NULL, 1, '2017-12-28 04:07:46', '2017-12-28 04:07:46', NULL),
(99, 64, '2017-12-28 04:08:42', '2017-12-28 04:08:42', '0.000', NULL, '1.566', NULL, NULL, 1, '2017-12-28 04:08:42', '2017-12-28 04:08:42', NULL),
(100, 68, '2017-12-28 18:24:02', '2017-12-28 18:24:02', '0.000', NULL, '1.766', NULL, NULL, 1, '2017-12-28 18:24:03', '2017-12-28 18:24:03', NULL),
(101, 68, '2017-12-28 18:33:29', '2017-12-28 18:33:29', '0.000', NULL, '1.540', NULL, NULL, 1, '2017-12-28 18:33:30', '2017-12-28 18:33:30', NULL),
(102, 69, '2017-12-28 18:50:41', '2017-12-28 18:50:42', '0.000', NULL, '1.535', NULL, NULL, 1, '2017-12-28 18:50:42', '2017-12-28 18:50:42', NULL),
(103, 70, '2017-12-28 21:14:35', '2017-12-28 21:14:35', '0.000', NULL, '1.974', NULL, NULL, 1, '2017-12-28 21:14:35', '2017-12-28 21:14:35', NULL),
(104, 71, '2017-12-28 23:08:57', '2017-12-28 23:08:57', '0.000', NULL, '1.785', NULL, NULL, 1, '2017-12-28 23:08:58', '2017-12-28 23:08:58', NULL),
(105, 71, '2017-12-28 23:11:30', '2017-12-28 23:11:30', '0.000', NULL, '1.735', NULL, NULL, 1, '2017-12-28 23:11:30', '2017-12-28 23:11:30', NULL),
(106, 71, '2017-12-28 23:13:20', '2017-12-28 23:13:20', '0.000', NULL, '1.702', NULL, NULL, 1, '2017-12-28 23:13:21', '2017-12-28 23:13:21', NULL),
(107, 71, '2017-12-28 23:21:26', '2017-12-28 23:21:26', '0.000', NULL, '1.750', NULL, NULL, 1, '2017-12-28 23:21:30', '2017-12-28 23:21:30', NULL),
(108, 71, '2017-12-28 23:23:55', '2017-12-28 23:23:55', '0.000', NULL, '1.667', NULL, NULL, 1, '2017-12-28 23:23:55', '2017-12-28 23:23:55', NULL),
(109, 71, '2017-12-28 23:26:22', '2017-12-28 23:26:22', '0.000', NULL, '1.700', NULL, NULL, 1, '2017-12-28 23:26:22', '2017-12-28 23:26:22', NULL),
(110, 71, '2017-12-28 23:27:52', '2017-12-28 23:27:52', '0.000', NULL, '1.718', NULL, NULL, 1, '2017-12-28 23:27:53', '2017-12-28 23:27:53', NULL),
(111, 71, '2017-12-28 23:40:02', '2017-12-28 23:40:02', '0.000', NULL, '1.735', NULL, NULL, 1, '2017-12-28 23:40:03', '2017-12-28 23:40:03', NULL),
(112, 74, '2017-12-29 08:26:16', '2017-12-29 08:26:16', '0.000', NULL, '0.200', NULL, NULL, 1, '2017-12-29 08:26:18', '2017-12-29 08:26:18', NULL),
(113, 75, '2017-12-29 08:28:30', '2017-12-29 08:28:30', '0.000', NULL, '0.200', NULL, NULL, 1, '2017-12-29 08:28:32', '2017-12-29 08:28:32', NULL),
(114, 76, '2017-12-29 08:29:47', '2017-12-29 08:29:47', '0.000', NULL, '0.166', NULL, NULL, 1, '2017-12-29 08:29:49', '2017-12-29 08:29:49', NULL),
(115, 77, '2017-12-29 08:31:36', '2017-12-29 08:31:36', '0.000', NULL, '0.234', NULL, NULL, 1, '2017-12-29 08:31:38', '2017-12-29 08:31:38', NULL),
(116, 78, '2017-12-29 08:33:51', '2017-12-29 08:33:51', '0.000', NULL, '2.869', NULL, NULL, 1, '2017-12-29 08:33:59', '2017-12-29 08:33:59', '2017-12-29 08:33:59'),
(117, 80, '2017-12-29 20:48:43', '2017-12-29 20:48:43', '0.000', NULL, '2.506', NULL, NULL, 1, '2017-12-29 20:48:44', '2017-12-29 20:48:44', NULL),
(118, 80, '2017-12-29 20:49:41', '2017-12-29 20:49:41', '0.000', NULL, '4.241', NULL, NULL, 1, '2017-12-29 20:49:41', '2017-12-29 20:49:41', NULL),
(119, 80, '2017-12-29 20:51:34', '2017-12-29 20:51:34', '0.000', NULL, '4.732', NULL, NULL, 1, '2017-12-29 20:51:34', '2017-12-29 20:51:34', NULL),
(120, 80, '2017-12-29 20:52:58', '2017-12-29 20:52:58', '0.000', NULL, '3.612', NULL, NULL, 1, '2017-12-29 20:52:58', '2017-12-29 20:52:58', NULL),
(121, 80, '2017-12-29 20:54:44', '2017-12-29 20:54:44', '0.000', NULL, '3.664', NULL, NULL, 1, '2017-12-29 20:54:44', '2017-12-29 20:54:44', NULL),
(122, 80, '2017-12-29 20:56:30', '2017-12-29 20:56:30', '0.000', NULL, '3.820', NULL, NULL, 1, '2017-12-29 20:56:30', '2017-12-29 20:56:30', NULL),
(123, 81, '2017-12-29 22:40:00', '2017-12-29 22:40:00', '0.000', NULL, '1.491', NULL, NULL, 1, '2017-12-29 22:40:00', '2017-12-29 22:40:00', NULL),
(124, 82, '2017-12-30 01:19:11', '2017-12-30 01:19:11', '0.000', NULL, '0.233', NULL, NULL, 1, '2017-12-30 01:19:14', '2017-12-30 01:19:14', NULL),
(125, 82, '2017-12-30 07:17:42', '2017-12-30 07:17:42', '0.000', NULL, '0.200', NULL, NULL, 1, '2017-12-30 07:17:55', '2017-12-30 07:17:55', '2017-12-30 07:17:55'),
(126, 82, '2017-12-30 07:19:12', '2017-12-30 07:19:12', '0.000', NULL, '0.233', NULL, NULL, 1, '2017-12-30 07:19:21', '2017-12-30 07:19:21', '2017-12-30 07:19:21'),
(127, 82, '2017-12-30 07:20:20', '2017-12-30 07:20:20', '0.000', NULL, '0.233', NULL, NULL, 1, '2017-12-30 07:20:27', '2017-12-30 07:20:27', '2017-12-30 07:20:27'),
(128, 82, '2017-12-30 07:21:21', '2017-12-30 07:21:21', '0.000', NULL, '0.166', NULL, NULL, 1, '2017-12-30 07:21:30', '2017-12-30 07:21:30', '2017-12-30 07:21:30'),
(129, 82, '2017-12-30 07:22:14', '2017-12-30 07:22:14', '0.000', NULL, '0.200', NULL, NULL, 1, '2017-12-30 07:22:20', '2017-12-30 07:22:20', '2017-12-30 07:22:20'),
(130, 82, '2017-12-30 07:23:12', '2017-12-30 07:23:12', '0.000', NULL, '0.233', NULL, NULL, 1, '2017-12-30 07:23:20', '2017-12-30 07:23:20', '2017-12-30 07:23:20'),
(131, 82, '2017-12-30 07:24:25', '2017-12-30 07:24:25', '0.000', NULL, '0.233', NULL, NULL, 1, '2017-12-30 07:24:30', '2017-12-30 07:24:30', '2017-12-30 07:24:30'),
(132, 82, '2017-12-30 07:25:25', '2017-12-30 07:25:25', '0.000', NULL, '0.200', NULL, NULL, 1, '2017-12-30 07:25:31', '2017-12-30 07:25:31', '2017-12-30 07:25:31'),
(133, 83, '2017-12-30 18:19:03', '2017-12-30 18:19:03', '0.000', NULL, '1.601', NULL, NULL, 1, '2017-12-30 18:19:04', '2017-12-30 18:19:04', NULL),
(134, 83, '2017-12-30 18:27:56', '2017-12-30 18:27:56', '0.000', NULL, '1.767', NULL, NULL, 1, '2017-12-30 18:27:57', '2017-12-30 18:27:57', NULL),
(135, 83, '2017-12-30 18:37:18', '2017-12-30 18:37:18', '0.000', NULL, '1.602', NULL, NULL, 1, '2017-12-30 18:37:19', '2017-12-30 18:37:19', NULL),
(136, 83, '2017-12-30 18:45:19', '2017-12-30 18:45:19', '0.000', NULL, '1.568', NULL, NULL, 1, '2017-12-30 18:45:20', '2017-12-30 18:45:20', NULL),
(137, 83, '2017-12-30 18:53:11', '2017-12-30 18:53:11', '0.000', NULL, '1.617', NULL, NULL, 1, '2017-12-30 18:53:12', '2017-12-30 18:53:12', NULL),
(138, 83, '2017-12-30 19:03:06', '2017-12-30 19:03:06', '0.000', NULL, '1.552', NULL, NULL, 1, '2017-12-30 19:03:06', '2017-12-30 19:03:06', NULL),
(139, 85, '2017-12-30 21:29:22', '2017-12-30 21:29:22', '0.000', NULL, '1.680', NULL, NULL, 1, '2017-12-30 21:29:24', '2017-12-30 21:29:24', NULL),
(140, 85, '2017-12-30 21:41:41', '2017-12-30 21:41:41', '0.000', NULL, '1.617', NULL, NULL, 1, '2017-12-30 21:41:43', '2017-12-30 21:41:43', NULL),
(141, 82, '2017-12-30 21:57:08', '2017-12-30 21:57:08', '0.000', NULL, '0.166', NULL, NULL, 1, '2017-12-30 21:57:30', '2017-12-30 21:57:30', '2017-12-30 21:57:30'),
(142, 82, '2017-12-30 21:58:20', '2017-12-30 21:58:20', '0.000', NULL, '0.233', NULL, NULL, 1, '2017-12-30 21:58:32', '2017-12-30 21:58:32', '2017-12-30 21:58:32'),
(143, 82, '2017-12-30 21:59:21', '2017-12-30 21:59:21', '0.000', NULL, '0.167', NULL, NULL, 1, '2017-12-30 21:59:41', '2017-12-30 21:59:41', '2017-12-30 21:59:41'),
(144, 82, '2017-12-30 22:00:37', '2017-12-30 22:00:37', '0.000', NULL, '0.200', NULL, NULL, 1, '2017-12-30 22:00:56', '2017-12-30 22:00:56', '2017-12-30 22:00:56'),
(145, 86, '2017-12-30 22:10:16', '2017-12-30 22:10:16', '0.000', NULL, '2.435', NULL, NULL, 1, '2017-12-30 22:10:16', '2017-12-30 22:10:16', NULL),
(146, 84, '2017-12-31 14:08:35', '2017-12-31 14:08:35', '0.000', NULL, '2.666', NULL, NULL, 1, '2017-12-31 14:08:35', '2017-12-31 14:08:35', NULL),
(147, 84, '2017-12-31 14:11:26', '2017-12-31 14:11:26', '0.000', NULL, '7.094', NULL, NULL, 1, '2017-12-31 14:11:27', '2017-12-31 14:11:27', NULL),
(148, 84, '2017-12-31 14:13:10', '2017-12-31 14:13:10', '0.000', NULL, '2.916', NULL, NULL, 1, '2017-12-31 14:13:10', '2017-12-31 14:13:10', NULL),
(149, 90, '2017-12-31 14:14:32', '2017-12-31 14:14:32', '0.000', NULL, '3.016', NULL, NULL, 1, '2017-12-31 14:14:33', '2017-12-31 14:14:33', NULL),
(150, 91, '2017-12-31 14:20:18', '2017-12-31 14:20:18', '0.000', NULL, '2.882', NULL, NULL, 1, '2017-12-31 14:20:18', '2017-12-31 14:20:18', NULL),
(151, 93, '2017-12-31 15:09:39', '2017-12-31 15:09:39', '0.000', NULL, '2.179', '2.807', NULL, 1, '2017-12-31 15:09:39', '2017-12-31 15:09:39', NULL),
(152, 93, '2017-12-31 15:11:55', '2017-12-31 15:11:55', '0.000', NULL, '2.074', '2.589', NULL, 1, '2017-12-31 15:11:56', '2017-12-31 15:11:56', NULL),
(153, 93, '2017-12-31 15:13:26', '2017-12-31 15:13:26', '0.000', NULL, '2.179', '2.715', NULL, 1, '2017-12-31 15:13:26', '2017-12-31 15:13:26', NULL),
(154, 93, '2017-12-31 15:16:08', '2017-12-31 15:16:08', '0.000', NULL, '1.960', '2.507', NULL, 1, '2017-12-31 15:16:08', '2017-12-31 15:16:08', NULL),
(155, 82, '2018-01-01 22:30:08', '2018-01-01 22:30:08', '0.000', NULL, '39.495', NULL, NULL, 1, '2018-01-01 22:30:50', '2018-01-01 22:30:50', '2018-01-01 22:30:50'),
(156, 94, '2018-01-02 03:31:43', '2018-01-02 03:31:43', '0.000', NULL, '1.600', NULL, NULL, 1, '2018-01-02 03:31:43', '2018-01-02 03:31:43', NULL),
(157, 94, '2018-01-02 03:33:19', '2018-01-02 03:33:19', '0.000', NULL, '1.567', NULL, NULL, 1, '2018-01-02 03:33:20', '2018-01-02 03:33:20', NULL),
(158, 94, '2018-01-02 03:34:09', '2018-01-02 03:34:09', '0.000', NULL, '1.567', NULL, NULL, 1, '2018-01-02 03:34:09', '2018-01-02 03:34:09', NULL),
(159, 94, '2018-01-02 03:35:52', '2018-01-02 03:35:52', '0.000', NULL, '1.567', NULL, NULL, 1, '2018-01-02 03:35:52', '2018-01-02 03:35:52', NULL),
(160, 94, '2018-01-02 03:36:44', '2018-01-02 03:36:44', '0.000', NULL, '1.600', NULL, NULL, 1, '2018-01-02 03:36:44', '2018-01-02 03:36:44', NULL),
(161, 97, '2018-01-02 13:41:48', '2018-01-02 13:41:48', '0.000', NULL, '13.418', '19.166', NULL, 1, '2018-01-02 13:41:48', '2018-01-02 13:41:48', NULL),
(162, 98, '2018-01-02 13:43:41', '2018-01-02 13:43:41', '0.000', NULL, '1.633', '2.333', NULL, 1, '2018-01-02 13:43:41', '2018-01-02 13:43:41', NULL),
(163, 99, '2018-01-02 21:48:05', '2018-01-02 21:48:05', '0.000', NULL, '1.201', '1.903', '3.336', 1, '2018-01-02 21:48:06', '2018-01-02 21:48:06', NULL),
(164, 99, '2018-01-02 21:53:14', '2018-01-02 21:53:14', '0.000', NULL, '1.300', '1.969', '3.435', 1, '2018-01-02 21:53:15', '2018-01-02 21:53:15', NULL),
(165, 99, '2018-01-02 21:57:50', '2018-01-02 21:57:50', '0.000', NULL, '1.335', '2.035', '3.470', 1, '2018-01-02 21:57:51', '2018-01-02 21:57:51', NULL),
(166, 99, '2018-01-02 22:03:33', '2018-01-02 22:03:33', '0.000', NULL, '1.335', '2.035', '3.503', 1, '2018-01-02 22:03:34', '2018-01-02 22:03:34', NULL),
(167, 99, '2018-01-02 22:09:04', '2018-01-02 22:09:04', '0.000', NULL, '1.369', '2.069', '3.504', 1, '2018-01-02 22:09:05', '2018-01-02 22:09:05', NULL),
(168, 100, '2018-01-02 23:09:40', '2018-01-02 23:09:40', '0.000', NULL, '2.250', '3.068', NULL, 1, '2018-01-02 23:09:40', '2018-01-02 23:09:40', NULL),
(169, 100, '2018-01-02 23:14:41', '2018-01-02 23:14:41', '0.000', NULL, '2.183', '3.050', NULL, 1, '2018-01-02 23:14:43', '2018-01-02 23:14:43', NULL),
(170, 100, '2018-01-02 23:23:44', '2018-01-02 23:23:44', '0.000', NULL, '2.552', '3.535', NULL, 1, '2018-01-02 23:23:45', '2018-01-02 23:23:45', NULL),
(171, 100, '2018-01-02 23:26:27', '2018-01-02 23:26:27', '0.000', NULL, '2.550', '3.519', NULL, 1, '2018-01-02 23:26:27', '2018-01-02 23:26:27', NULL),
(172, 100, '2018-01-02 23:28:55', '2018-01-02 23:28:55', '0.000', NULL, '2.384', '3.385', NULL, 1, '2018-01-02 23:28:55', '2018-01-02 23:28:55', NULL),
(173, 100, '2018-01-02 23:32:25', '2018-01-02 23:32:25', '0.000', NULL, '2.466', '3.433', NULL, 1, '2018-01-02 23:32:25', '2018-01-02 23:32:25', NULL),
(174, 101, '2018-01-02 23:42:59', '2018-01-02 23:42:59', '0.000', NULL, '2.250', '3.117', NULL, 1, '2018-01-02 23:42:59', '2018-01-02 23:42:59', NULL),
(175, 101, '2018-01-02 23:45:52', '2018-01-02 23:45:52', '0.000', NULL, '2.233', '3.085', NULL, 1, '2018-01-02 23:45:52', '2018-01-02 23:45:52', NULL),
(176, 102, '2018-01-03 00:05:40', '2018-01-03 00:05:40', '0.000', NULL, '2.455', NULL, NULL, 1, '2018-01-03 00:05:41', '2018-01-03 00:05:41', NULL),
(177, 102, '2018-01-03 00:08:39', '2018-01-03 00:08:39', '0.000', NULL, '2.449', NULL, NULL, 1, '2018-01-03 00:08:39', '2018-01-03 00:08:39', NULL),
(178, 102, '2018-01-03 00:10:25', '2018-01-03 00:10:25', '0.000', NULL, '2.355', NULL, NULL, 1, '2018-01-03 00:10:25', '2018-01-03 00:10:25', NULL),
(179, 102, '2018-01-03 00:14:09', '2018-01-03 00:14:09', '0.000', NULL, '2.425', NULL, NULL, 1, '2018-01-03 00:14:09', '2018-01-03 00:14:09', NULL),
(180, 102, '2018-01-03 00:18:18', '2018-01-03 00:18:18', '0.000', NULL, '2.345', NULL, NULL, 1, '2018-01-03 00:18:19', '2018-01-03 00:18:19', NULL),
(181, 102, '2018-01-03 00:19:59', '2018-01-03 00:19:59', '0.000', NULL, '2.352', NULL, NULL, 1, '2018-01-03 00:20:00', '2018-01-03 00:20:00', NULL),
(182, 102, '2018-01-03 00:23:22', '2018-01-03 00:23:22', '0.000', NULL, '2.225', NULL, NULL, 1, '2018-01-03 00:23:22', '2018-01-03 00:23:22', NULL),
(183, 102, '2018-01-03 00:24:23', '2018-01-03 00:24:23', '0.000', NULL, '2.493', NULL, NULL, 1, '2018-01-03 00:24:24', '2018-01-03 00:24:24', NULL),
(184, 102, '2018-01-03 00:25:41', '2018-01-03 00:25:41', '0.000', NULL, '2.302', NULL, NULL, 1, '2018-01-03 00:25:41', '2018-01-03 00:25:41', NULL),
(185, 102, '2018-01-03 00:27:32', '2018-01-03 00:27:32', '0.000', NULL, '2.269', NULL, NULL, 1, '2018-01-03 00:27:32', '2018-01-03 00:27:32', NULL),
(186, 103, '2018-01-03 00:35:07', '2018-01-03 00:35:07', '0.000', NULL, '2.283', NULL, NULL, 1, '2018-01-03 00:35:07', '2018-01-03 00:35:07', NULL),
(187, 104, '2018-01-03 03:39:32', '2018-01-03 03:39:32', '0.000', NULL, '2.831', NULL, NULL, 1, '2018-01-03 03:39:33', '2018-01-03 03:39:33', NULL),
(188, 105, '2018-01-03 03:40:37', '2018-01-03 03:40:37', '0.000', NULL, '2.792', NULL, NULL, 1, '2018-01-03 03:40:38', '2018-01-03 03:40:38', NULL),
(189, 104, '2018-01-03 03:41:48', '2018-01-03 03:41:48', '0.000', NULL, '2.832', NULL, NULL, 1, '2018-01-03 03:41:49', '2018-01-03 03:41:49', NULL),
(190, 105, '2018-01-03 03:43:04', '2018-01-03 03:43:04', '0.000', NULL, '2.708', NULL, NULL, 1, '2018-01-03 03:43:14', '2018-01-03 03:43:14', NULL),
(191, 104, '2018-01-03 03:44:55', '2018-01-03 03:44:55', '0.000', NULL, '2.834', NULL, NULL, 1, '2018-01-03 03:44:55', '2018-01-03 03:44:55', NULL),
(192, 105, '2018-01-03 03:45:33', '2018-01-03 03:45:33', '0.000', NULL, '2.707', NULL, NULL, 1, '2018-01-03 03:45:34', '2018-01-03 03:45:34', NULL),
(193, 104, '2018-01-03 03:46:52', '2018-01-03 03:46:52', '0.000', NULL, '2.831', NULL, NULL, 1, '2018-01-03 03:46:52', '2018-01-03 03:46:52', NULL),
(194, 104, '2018-01-03 03:49:58', '2018-01-03 03:49:58', '0.000', NULL, '2.830', NULL, NULL, 1, '2018-01-03 03:49:58', '2018-01-03 03:49:58', NULL),
(195, 105, '2018-01-03 03:51:43', '2018-01-03 03:51:43', '0.000', NULL, '2.666', NULL, NULL, 1, '2018-01-03 03:51:44', '2018-01-03 03:51:44', NULL),
(196, 104, '2018-01-03 03:53:25', '2018-01-03 03:53:25', '0.000', NULL, '2.708', NULL, NULL, 1, '2018-01-03 03:53:25', '2018-01-03 03:53:25', NULL),
(197, 105, '2018-01-03 03:54:54', '2018-01-03 03:54:54', '0.000', NULL, '2.540', NULL, NULL, 1, '2018-01-03 03:54:54', '2018-01-03 03:54:54', NULL),
(198, 104, '2018-01-03 03:56:17', '2018-01-03 03:56:17', '0.000', NULL, '2.750', NULL, NULL, 1, '2018-01-03 03:56:18', '2018-01-03 03:56:18', NULL),
(199, 105, '2018-01-03 03:57:23', '2018-01-03 03:57:23', '0.000', NULL, '2.582', NULL, NULL, 1, '2018-01-03 03:57:25', '2018-01-03 03:57:25', NULL),
(200, 104, '2018-01-03 03:58:04', '2018-01-03 03:58:04', '0.000', NULL, '2.750', NULL, NULL, 1, '2018-01-03 03:58:05', '2018-01-03 03:58:05', NULL),
(201, 105, '2018-01-03 04:01:03', '2018-01-03 04:01:03', '0.000', NULL, '2.540', NULL, NULL, 1, '2018-01-03 04:01:03', '2018-01-03 04:01:03', NULL),
(202, 104, '2018-01-03 04:02:19', '2018-01-03 04:02:19', '0.000', NULL, '2.750', NULL, NULL, 1, '2018-01-03 04:02:20', '2018-01-03 04:02:20', NULL),
(203, 105, '2018-01-03 04:03:16', '2018-01-03 04:03:16', '0.000', NULL, '2.583', NULL, NULL, 1, '2018-01-03 04:03:16', '2018-01-03 04:03:16', NULL),
(204, 104, '2018-01-03 04:04:44', '2018-01-03 04:04:44', '0.000', NULL, '2.750', NULL, NULL, 1, '2018-01-03 04:04:45', '2018-01-03 04:04:45', NULL),
(205, 104, '2018-01-03 04:07:19', '2018-01-03 04:07:19', '0.000', NULL, '2.654', NULL, NULL, 1, '2018-01-03 04:07:21', '2018-01-03 04:07:21', NULL),
(206, 104, '2018-01-03 04:09:53', '2018-01-03 04:09:53', '0.000', NULL, '2.667', NULL, NULL, 1, '2018-01-03 04:09:53', '2018-01-03 04:09:53', NULL),
(207, 104, '2018-01-03 04:13:02', '2018-01-03 04:13:02', '0.000', NULL, '2.706', NULL, NULL, 1, '2018-01-03 04:13:03', '2018-01-03 04:13:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bmx_users`
--

CREATE TABLE `bmx_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `password` varchar(256) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'is_admin = 1 (admin) ,is_admin = 0 (trainer) ',
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inactive , 1 = active',
  `is_fb_user` tinyint(1) NOT NULL DEFAULT '0',
  `fb_id` varchar(50) DEFAULT NULL,
  `emailverificationtoken` varchar(100) DEFAULT NULL,
  `usertoken` varchar(100) DEFAULT NULL COMMENT 'For forgot password',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bmx_users`
--

INSERT INTO `bmx_users` (`id`, `email`, `firstname`, `lastname`, `password`, `profile_image`, `mobile_no`, `is_admin`, `active`, `is_fb_user`, `fb_id`, `emailverificationtoken`, `usertoken`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'mittal.bhatt@softwebsolutions.com', 'Jake', 'Stephenitch', '2a7f6f748be41587790c50f4ac12908083499df0b20b500523ba17b52bc941378c47aefb30ca5e22bc19ad47c56ad494c0b6c14db2a2fa4103472402b0426554', '1-1513071053769.jpg', '', 1, 1, 0, NULL, NULL, '', '2018-07-30 10:36:21', '2017-12-12 11:56:26', NULL),
(3, 'amitkumar.softweb@gmail.com', 'Amit', 'Softweb', NULL, '1513153538807.jpg', '', 0, 1, 1, '1939809296231609', NULL, 'f17c8c67d70072fdaa4a6223af3b9353', '2017-12-13 10:03:46', '2017-12-13 10:03:46', NULL),
(13, 'milan.gohil@softwebsolutions.com', 'Milan', 'Soft we', '7f2c6b8e06f1ae1702913fe7a056f0742e55b0a659899a21e383211e2c6243d3b5e15560fbecb2b50a37239a3c6effaba4334f32b50da70f0dc534b8e5763daa', '', '1111222233', 0, 1, 0, '', NULL, 'e100ca658c9140add88c3c1ee99666c0', '2017-12-13 11:03:55', '2017-12-13 11:03:55', NULL),
(14, 'nirav.patel@softwebsolutions.com', 'nirav', 'patel', '7f2c6b8e06f1ae1702913fe7a056f0742e55b0a659899a21e383211e2c6243d3b5e15560fbecb2b50a37239a3c6effaba4334f32b50da70f0dc534b8e5763daa', '', '9712238464', 0, 1, 0, '', NULL, '601de91510de4455d9dee7ac847cc6dd', '2017-12-14 11:12:15', '2017-12-14 11:12:15', NULL),
(15, 'riddhi.dave@softwebsolutions.com', 'Tom', 'Cruze', NULL, '1513250335144.jpg', '', 0, 1, 1, '1889196664727820', NULL, NULL, '2017-12-14 11:17:48', '2017-12-14 11:17:48', NULL),
(16, 'test.bmxsprint@gmail.com', 'John', 'Doe', '7f2c6b8e06f1ae1702913fe7a056f0742e55b0a659899a21e383211e2c6243d3b5e15560fbecb2b50a37239a3c6effaba4334f32b50da70f0dc534b8e5763daa', '', '1112223334', 0, 1, 0, '', NULL, NULL, '2017-12-14 11:31:11', '2017-12-14 11:27:05', NULL),
(17, 'jakestephenitch@yahoo.com', 'Jake', 'Stephenitch', NULL, '1513603384732.jpg', '', 0, 1, 1, '10211157062824191', NULL, NULL, '2017-12-18 13:21:42', '2017-12-18 13:21:42', NULL),
(18, 'mr.brightside68@yahoo.com', 'Rich', 'Koch', NULL, '1514255458977.jpg', '', 0, 1, 1, '10211040774036847', NULL, NULL, '2017-12-26 02:29:59', '2017-12-26 02:29:59', NULL),
(19, 'ridefasterwtr@hotmail.com', 'W', 'Roon', '0bca70b945fd7cf6f6f8416ecb4597dda82349e88feab910cff52c3eb97008d9c723bd4ab024f1c55b087bc37faab7a37cfc54b7538a6bdf551e30cad5ed05c9', '', '6304046164', 0, 1, 0, '', NULL, NULL, '2017-12-26 02:58:35', '2017-12-26 02:58:35', NULL),
(20, 'brfrederick97@gmail.com', 'Brent', 'Frederick', NULL, '1514258121322.jpg', '', 0, 1, 1, '1577574985663407', NULL, NULL, '2017-12-26 03:14:13', '2017-12-26 03:14:13', NULL),
(21, 'lanceclifford@gmail.com', 'Lance', 'Clifford', 'c584960d68971590ec2517dcfa0e58a25bbf6961941612214ef7f7d5c8942e37a664fad4fb1bee2997e7e98b1d52233a6b0b2970eb567ab6527f49d242932995', '', '4355747100', 0, 1, 0, '', NULL, NULL, '2017-12-26 03:41:02', '2017-12-26 03:41:02', NULL),
(22, 'joandsteve15@bigpond.com', 'Steve', 'Tatham', 'bf06f90815da87b9744d42da9b8fbb05a6acff93f48da6658730a1922a098befe7be4fb2e804badacbbd96ef3d63260444b6a806968fe457a780d73b6d8281b1', '', '0448791323', 0, 1, 0, '', NULL, NULL, '2017-12-26 04:48:40', '2017-12-26 04:48:40', NULL),
(23, 'kbfeist@gmail.com', 'Ken', 'Feist', '617be14fd62268a8dbba475981ecb9a764f9c2c34c85b45013b61d360ae2bfe46805fa06ba602684a7bc288f4943d189656108e5da37f002ac895d81b24f208b', '', '64021830021', 0, 1, 0, '', NULL, NULL, '2017-12-26 05:08:56', '2017-12-26 05:08:56', NULL),
(24, 'geestanley@hotmail.co.uk', 'Graham', 'Stanley', '92869d27f97239ce2f093902b59fe37e716bdf18ea0296014b3d76e60c93198ff9c1c1aa3c7757a7f24352cd27747d0b7532b9cf1330e2583a07d81aa0ef9720', '', '07583053813', 0, 1, 0, '', NULL, NULL, '2017-12-26 08:15:06', '2017-12-26 08:15:06', NULL),
(25, 'sebastienleyendecker@free.fr', 'Sebastien ', 'Leyendencker ', 'abed04e6cd623b32e49c6cb109acd6510e5c252b8657614788dbd4e80ec91ba1387e7c5d23ce9c4ccccb1be5a3a7afd5ffa0db6c3d0a1fff6a6e39a0960c0e63', '', '+33685366110', 0, 1, 0, '', NULL, NULL, '2017-12-26 09:58:06', '2017-12-26 09:58:05', NULL),
(26, 'david@teamtkd.com.au', 'David', 'Vernon', '219eb596b11d0a988b1bc4f5c0f94881a844af3c972cf286982df3479bb5d6a2e7802e6d7ea71fb167f98035c9ba1c78e01570d1c7f431df3f72754acebb414d', '', '0418318833', 0, 1, 0, '', NULL, NULL, '2017-12-26 10:42:36', '2017-12-26 10:42:36', NULL),
(27, 'smith16_bmxer@yahoo.com', 'Tyler', 'Smith', NULL, '1514297957759.jpg', '', 0, 1, 1, '10212935519081060', NULL, NULL, '2017-12-26 14:17:48', '2017-12-26 14:17:48', NULL),
(28, 'marcelo_tampa@yahoo.com', 'Marcelo', 'Alvarez-Garcia', NULL, '1514301763267.jpg', '', 0, 1, 1, '10215154809610630', NULL, NULL, '2017-12-26 15:21:21', '2017-12-26 15:21:21', NULL),
(29, 'cgombos1@me.com', 'Chris ', 'Gombos ', '2a98d0928fd6ae1d67228b2022bca88665e4378d959c4a0ee59fafaeeeb42d9a86cc88c99774e639b522781f5cc98bcd298bfe14293f12b510939e4d0a28ac42', '', '2062574988', 0, 1, 0, '', NULL, NULL, '2017-12-26 16:55:37', '2017-12-26 16:55:37', NULL),
(30, 'letitia2717@hotmail.com', 'Letitia', 'Weatherhead ', '1f7cf304f4ac1b3b5178c6542b8ffe2ee7acc1ea5bd20914b9a46417a3d009c9246f45fe080ee301b8fbeff06de76f34976647a5a85b56afa145cb3a18cb466e', '', '0402813362', 0, 1, 0, '', NULL, NULL, '2017-12-26 19:58:32', '2017-12-26 19:58:32', NULL),
(31, 'dekitchen69@gmail.com', 'Dwayne ', 'Kitchen ', 'd6df065fc2b4de0af29083b797835d1eb9efebaefe254d5ae801d5ad4ae7bd5f026222429f12903c338e443fb11080ee12ce8048c218604e9af56a9de7caf8be', '', '6619781423', 0, 1, 0, '', NULL, NULL, '2017-12-26 20:17:58', '2017-12-26 20:17:58', NULL),
(32, 'mmichaelsmith619@aol.com', 'Mike', 'Smith', NULL, '1514324858402.jpg', '', 0, 1, 1, '10213146746881629', NULL, NULL, '2017-12-26 21:47:02', '2017-12-26 21:47:02', NULL),
(33, 'dougaharwell@att.net', 'Doug ', 'Harwell', 'da2d4e906f7a13f8c95057d61f74350f0de765464630259d61102f7346fe72973f4c359d24f20f5d50c8faa2035491a9dfc130b7ad115c86523080ed617028a4', '', '5129245095', 0, 1, 0, '', NULL, NULL, '2017-12-26 21:56:59', '2017-12-26 21:56:59', NULL),
(34, 'BigDaddyZaine@gmail.com', 'Zaine', 'Stenson', '3111d52f0b86eb4d47a66f3acce8e3beccca2abc4b999142d7b8d3a5419de2dff629ed167572c6c38f7f4db666be92c49925e462960b00dbd6d0101a999d6324', '', '2532046841', 0, 1, 0, '', NULL, NULL, '2017-12-26 23:31:26', '2017-12-26 23:31:26', NULL),
(35, 'dominic.taylor@bigpond.com', 'Dominic', 'Taylor', NULL, '1514331613948.jpg', '', 0, 1, 1, '1487123124719521', NULL, NULL, '2017-12-26 23:39:37', '2017-12-26 23:39:37', NULL),
(36, 'vincentdecastro1@yahoo.com', 'Vincent', 'DeCastro', NULL, '1514336978529.jpg', '', 0, 1, 1, '10215631555808286', NULL, NULL, '2017-12-27 01:08:27', '2017-12-27 01:08:27', NULL),
(37, 'jimmyhiggins4@gmail.com', 'James', 'Higgins', 'e69f805a9ffa8b3ba8562dea70ac30f485121c52b5f841ee59d82a5a368242ef857b46567d28c2811c213eb485d770b8078e515caf93ef9d4f561b81d2d5554e', '', '8052665825', 0, 1, 0, '', NULL, NULL, '2017-12-27 01:14:21', '2017-12-27 01:14:21', NULL),
(38, 'jared.pitstock1@gmail.com', 'Jared', 'Pitstock', '314277700944582d6d7966c9016671c7cccb075f4a5c15de463775e1fc74ad56194936ea47068e7e0679465edecc951765ae7f2b38b1f7ea095776762be177cf', '', '0468637600', 0, 1, 0, '', NULL, NULL, '2017-12-27 03:36:33', '2017-12-27 03:36:33', NULL),
(39, 'lowerthenazphalt@gmail.com', 'Jesse', 'Stokes', 'bb35b5e2dc4cf2359ddc063c66ebc8043964784416c16687f38735f218ce0ba97790772e8f5b23463bfce8173fbfbbfef354e150227e365951144782a2272519', '', '7023485733', 0, 1, 0, '', NULL, NULL, '2017-12-27 04:38:34', '2017-12-27 04:38:34', NULL),
(40, 'jasonb25@outlook.com', 'Jason ', 'Bourke ', '456de94d9db2b3f137225871a1c2025a736139ba3f7705c20bbde77274277c4c66049bf68c21d5f6b75e5a48899e1ad9e48b63c0a1029f61497ef85dc8093577', '', '0425311131', 0, 1, 0, '', NULL, NULL, '2017-12-28 02:35:29', '2017-12-28 02:35:29', NULL),
(41, 'kgcam10@gmail.com', 'Kevin', 'Cameron', NULL, '1514436734527.jpg', '', 0, 1, 1, '196938277525299', NULL, NULL, '2017-12-28 04:51:35', '2017-12-28 04:51:35', NULL),
(42, 'raven2ridebmx@yahoo.com', 'Gil', 'Sanchez', 'bfa1642da2a02e75b9cab7e15fa1ba61e975ea22c196188a8311c28f58c458e65ff2bcf47bea4884d17ad290a456daa8d2a0eec187a39e296084909d4a73e421', '', '7198590055', 0, 1, 0, '', NULL, NULL, '2017-12-28 13:57:30', '2017-12-28 13:57:30', NULL),
(43, 'lhsauto@hotmail.com', 'Mike', 'Johnson', NULL, '1514476722586.jpg', '', 0, 1, 1, '10208495834953323', NULL, NULL, '2017-12-28 15:57:37', '2017-12-28 15:57:37', NULL),
(44, 'jfolkrod@me.com', 'Jim', 'Folkrod', '43186f74520c72be239e0aa3ea75b7efc1a679b5b831f0a67edaeab787f9ff56d86cc8e39f53285c88727015fd08f7b166744541929eccc95e1618ba08450deb', '', '8052353393', 0, 1, 0, '', NULL, NULL, '2017-12-28 16:24:04', '2017-12-28 16:24:04', NULL),
(45, 'azkevin82@aol.con', 'Kevin', 'White', '6a8bc5c44ebdac91c0709c3159fcdbbd76494be06df283e74b0644bf983c06b139a4883af012e40d31bab01d89ad8890611889502bfd5585be41585b5900c8cd', '', '9282793131', 0, 1, 0, '', '33e82409b2145817d6d1391029e846be', NULL, '2017-12-28 18:10:00', '2017-12-28 18:10:00', NULL),
(46, 'azkevin82@aol.com', 'Kevin', 'White', '6a8bc5c44ebdac91c0709c3159fcdbbd76494be06df283e74b0644bf983c06b139a4883af012e40d31bab01d89ad8890611889502bfd5585be41585b5900c8cd', '', '9282793131', 0, 1, 0, '', NULL, NULL, '2017-12-28 18:14:48', '2017-12-28 18:14:48', NULL),
(47, 'studiog02@centurylink.net', 'Barney ', 'Goodwin ', '0cb963b6a27101f494bcd7ed2742047e10c28ef1bdd99f85cf17f9c54a2f836cfd4a02bc8d7cfae3cd83c10eadeabcf0f8942340b97c37c43e0d9eb85e89ca00', '', '2603859075', 0, 1, 0, '', NULL, NULL, '2017-12-29 01:24:59', '2017-12-29 01:24:59', NULL),
(48, 'ndtabatt@yahoo.com', 'Nathan', 'Tabatt', NULL, '1514519981953.jpg', '', 0, 1, 1, '1481088248656949', NULL, NULL, '2017-12-29 03:59:05', '2017-12-29 03:59:05', NULL),
(49, 'karenb@waikato.ac.nz', 'Karen', 'Barbour', 'a0dd42ee031d9490484ebce9afa18ffaf7cf9d24c3342ad9fcdc42154b266e56a566bf34e17ed3c158cd62f308b61c55d48f582edb66390a850c734336e6e4b7', '', '+6421855479', 0, 1, 0, '', NULL, NULL, '2017-12-29 05:10:47', '2017-12-29 05:10:47', NULL),
(50, 'sydneybmx@gmail.com', 'Sydney', 'Webster', NULL, '1514542727810.jpg', '', 0, 1, 1, '10156067535633308', NULL, NULL, '2017-12-29 10:18:33', '2017-12-29 10:18:33', NULL),
(51, 'mattyandalic@yahoo.com', 'Matt', 'Campbell', 'a27304ad8f07c6ec061bf0670d92d1582d3ef416565d412d7b2e8eb1e0a06d5670037e0a8ba7b13e98d9e12c790b1cf554c81473fb67aec74f31214bf7f5b4e3', '', '7025738337', 0, 1, 0, '', NULL, NULL, '2017-12-29 17:03:38', '2017-12-29 17:03:38', NULL),
(52, 'jwilli92174@aol.com', 'Joanna', 'Williams', 'a978e328ad2859faf1a6e8aee8409780d4c90c6e79454ee51ee7ea19d07b97449b599f41802cc9e1885496a525729aad0f795ccd7dd7c5e6a7c1c2aa168c706b', '', '9785126042', 0, 1, 0, '', NULL, NULL, '2017-12-29 21:10:33', '2017-12-29 21:10:33', NULL),
(53, 'davidmott@gmail.com', 'David', 'Mott', 'b92459a9d40b0a9290c826a484a30aa33c24d55541c079b8ba1dd910e319b42c3e1322d149b6632ab879b9566c26467f17924ed8dd44c3fddcc0631ac465e110', '', '7013403159', 0, 1, 0, '', NULL, NULL, '2017-12-29 22:36:28', '2017-12-29 22:36:28', NULL),
(54, 'ericfilley@gmail.com', 'Eric', 'Filley', 'fc816ea4ed3401fedece1fb63b0d833cf0e5efd3a4e335242d4b21529df6c760189730879fce5bfb84c0191ea8f491165711f53dd532c8b7e8ae6a20c8bbeedb', '', '5037393662', 0, 1, 0, '', NULL, NULL, '2017-12-29 23:20:58', '2017-12-29 23:20:58', NULL),
(55, 'jasonjabbott@btinternet.com', 'Jason', 'Abbott ', '5081316e9904036fbfe849881c8a21467eb6524e332a321ef7b81db310bdde1ab39076542d1d17965acbeb955216c33ebd4ce415b3f3deb96c4f754e218c2d56', '', '07803210424', 0, 1, 0, '', NULL, NULL, '2017-12-30 18:18:39', '2017-12-30 18:18:39', NULL),
(56, 'dwbmxer@gmail.com', 'Darren', 'Williams', 'bbf6033f60d7c633f87d6899c5db06882d9d21987a478e0402a62ec0a4fdaee72e11cadb0c2e45da41754e44c80c8b758a7c5a7e2fc1f8738dd18bcf67a660d5', '', '4038941892', 0, 1, 0, '', NULL, NULL, '2017-12-30 22:37:27', '2017-12-30 22:37:27', NULL),
(57, 'chris@ucsmd.com', 'Chris', 'Calabrese', 'b317a5a82b9ddf8eab8efa106b644abaa845cf3fe38ee9d87e4368c8c37147f781ba0a3e31d4a00793fec7268a46001905893b8f657afc116e165e4ff79118d4', '', '4437904031', 0, 1, 0, '', NULL, NULL, '2017-12-31 00:15:09', '2017-12-31 00:15:09', NULL),
(58, 'expresstyres@internode.on.net', 'Malcolm', 'Lawrence', NULL, '1514684984792.jpg', '', 0, 1, 1, '10214609558451107', NULL, NULL, '2017-12-31 01:49:08', '2017-12-31 01:49:08', NULL),
(59, 'tim.drew654@btinternet.com', 'Tim', 'Drew', '3edae1a446e854a2f1281d1c25c83f4d36f53ccde287908ec32a8ddd416befb2de3130bc37f8df1e9176c3b56873330b8cce15683c615dcf99f9143a5718b1bd', '', '07813675314', 0, 1, 0, '', NULL, NULL, '2018-01-02 11:12:08', '2018-01-02 11:12:08', NULL),
(60, 'cmacmullen@shaw.ca', 'Chris', 'MacMullen', NULL, '1514864186511.jpg', '', 0, 1, 1, '10155007692147522', NULL, NULL, '2018-01-02 03:35:09', '2018-01-02 03:35:09', NULL),
(61, 'joshua_seeley@icloud.com', 'Joshua', 'Seeley', 'fd929d8db7adafb2d193089ac017c5db23726b1868e1c185594d4f3c35e5d474b060bbbffda78065df2dd5e85c289f500c08a490e6b7687c57105ab97e7f30dc', '', '9092685344', 0, 1, 0, '', NULL, NULL, '2018-01-02 04:05:19', '2018-01-02 04:05:19', NULL),
(62, 'romerokj92@yahoo.com', 'KJ', 'Romero', NULL, '1514900314011.jpg', '', 0, 1, 1, '1405518492909704', NULL, NULL, '2018-01-02 13:38:11', '2018-01-02 13:38:11', NULL),
(63, 'tom.bruney@spray.com', 'Tom', 'Bruney ', 'b48884e7298a3b3e7445249dcc4414124506784c5f87056cc0d7e10e56c6f756673454349739cfba27d9d0f464f8ad798eba8ff3dd9a1d967e0d9d9c60f3a2b7', '', '4124185912', 0, 1, 0, '', NULL, NULL, '2018-01-02 19:14:24', '2018-01-02 19:14:24', NULL),
(64, 'cheaters5@hotmail.com', 'Marcus', 'Orr', NULL, '1514924620222.jpg', '', 0, 1, 1, '10159872631980296', NULL, NULL, '2018-01-02 20:22:02', '2018-01-02 20:22:02', NULL),
(65, 'jallen7071@icloud.com', 'Jason', 'Allen', '4bdb32130e25e5bcdcb39455d0ba1087867f06b290ed662b0a9fc511e87a6ecb29ea7bada16b19e7562152c8a954a4972d9ed57f319bdf23f9a545f6e4aceb6d', '', '7024157231', 0, 1, 0, '', NULL, NULL, '2018-01-02 21:26:43', '2018-01-02 21:26:43', NULL),
(66, 'nicholas_ehrke@eku.edu', 'Nicholas ', 'Ehrke ', 'ff8a8f229a96cf8499b7219b9cad4f8be7861db8798e6a518c2a4b65951febe5684d05d333f0270f3286cf6feb2dd4e0844ad94f0d4ec70e694474304b57922c', '', '4406105607', 0, 1, 0, '', NULL, NULL, '2018-01-02 22:39:08', '2018-01-02 22:39:08', NULL),
(67, 'rory@rorydannenberg.com', 'Rory', 'Dannenberg', '7359ab33a74905ece1ff14446e56e22122796c03cd09a7bdaea1dd524814fb49d2d9eee004e8b47bdd2db40720e4bbeee3d7d4508b8caf3243053c775c2b4aa1', '', '8593963343', 0, 1, 0, '', 'b596d229a8ac0cf12c199843ac556c0e', 'ba4d96b3e6269a386810eb88b91eaa3f', '2018-01-03 01:02:29', '2018-01-03 01:02:29', NULL),
(68, 'rory@captivaluxuryhomes.com', 'Rory', 'Dannenberg ', '58cba7b1d592021d3be7f6f5d9f2f816c158768c6a9fe6eb44b1abcfe99e87954af3fc6c9d72eb30a5378fc48c9cd8c35ad003c7a2a3a9cd8dcced49ca3023a4', '', '8593964075', 0, 1, 0, '', NULL, NULL, '2018-01-03 01:06:23', '2018-01-03 01:06:23', NULL),
(69, 'ricky.spooner@nt.gov.au', 'Ricky', 'Spooner', '07106fbdc16b4b2ec4eb26192ff9d143b8f35d4888d4e9418a8cfb09110503098aa55e3af0e3c1b4932613a00776f882db645409149f7232d9795d65df81a3e8', '', '0400769916', 0, 1, 0, '', 'af20d57068f1d52101b7618530905103', NULL, '2018-01-03 01:14:39', '2018-01-03 01:14:39', NULL),
(70, 'casrick@internode.on.net', 'Ricky', 'Spooner', NULL, '1514971641283.jpg', '', 0, 1, 1, '10212912182053786', NULL, NULL, '2018-01-03 09:26:47', '2018-01-03 09:26:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bmx_workout_type`
--

CREATE TABLE `bmx_workout_type` (
  `id` int(11) NOT NULL,
  `workout_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inactive , 1 = active',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bmx_workout_type`
--

INSERT INTO `bmx_workout_type` (`id`, `workout_name`, `description`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Manual Timer', 'The Manual mode allows you to track your sprint times but offers no coaching tips.', 1, '2017-11-22 11:56:31', '2017-07-31 17:48:13', NULL),
(2, 'Gate Start', 'The Gate Start mode is perfect for tracking progress at the track or practice gate. You will want to rest 3 - 5 minutes between efforts to maintain high quality efforts.', 1, '2017-11-22 11:57:01', '2017-07-31 17:48:45', NULL),
(3, 'Maximum Power', 'To develop Maximum Power, you will rest 3-5 minutes between efforts. You will be expected to maintain a very high percentage of speed based on your previous session.', 1, '2017-11-22 11:57:17', '2017-07-31 17:49:05', NULL),
(4, 'Power Repeatability', 'Use the Power Repeatability mode to improve your ability to maintain high levels of power throughout a race day. Suggested rest will be 1.5 - 2 minutes and quality is expected to remain high throughout the session.', 1, '2017-11-22 11:57:55', '2017-07-31 17:49:44', NULL),
(5, 'Endurance Power', 'Use the Endurance training mode if you are looking for endurance training rather than speed. Your rest will be short so you will have little time between sprint efforts. You should be doing a sprint every 60 - 90 seconds.', 1, '2017-11-22 11:58:35', '2017-07-31 17:50:08', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bmx_coaching_criteria`
--
ALTER TABLE `bmx_coaching_criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workout_type_id` (`workout_type_id`);

--
-- Indexes for table `bmx_riders`
--
ALTER TABLE `bmx_riders`
  ADD PRIMARY KEY (`rider_id`),
  ADD UNIQUE KEY `trainer_id_email_active` (`trainer_id`,`email`,`active`);

--
-- Indexes for table `bmx_sessions`
--
ALTER TABLE `bmx_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `workout_type` (`workout_type`),
  ADD KEY `rider_id` (`rider_id`),
  ADD KEY `trainer_id` (`trainer_id`);

--
-- Indexes for table `bmx_sprints`
--
ALTER TABLE `bmx_sprints`
  ADD PRIMARY KEY (`sprint_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `bmx_users`
--
ALTER TABLE `bmx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_active` (`email`,`active`);

--
-- Indexes for table `bmx_workout_type`
--
ALTER TABLE `bmx_workout_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bmx_coaching_criteria`
--
ALTER TABLE `bmx_coaching_criteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `bmx_riders`
--
ALTER TABLE `bmx_riders`
  MODIFY `rider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `bmx_sessions`
--
ALTER TABLE `bmx_sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `bmx_sprints`
--
ALTER TABLE `bmx_sprints`
  MODIFY `sprint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;
--
-- AUTO_INCREMENT for table `bmx_users`
--
ALTER TABLE `bmx_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `bmx_workout_type`
--
ALTER TABLE `bmx_workout_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bmx_coaching_criteria`
--
ALTER TABLE `bmx_coaching_criteria`
  ADD CONSTRAINT `bmx_coaching_criteria_ibfk_1` FOREIGN KEY (`workout_type_id`) REFERENCES `bmx_workout_type` (`id`);

--
-- Constraints for table `bmx_sessions`
--
ALTER TABLE `bmx_sessions`
  ADD CONSTRAINT `bmx_sessions_ibfk_1` FOREIGN KEY (`workout_type`) REFERENCES `bmx_workout_type` (`id`),
  ADD CONSTRAINT `bmx_sessions_ibfk_2` FOREIGN KEY (`rider_id`) REFERENCES `bmx_riders` (`rider_id`),
  ADD CONSTRAINT `bmx_sessions_ibfk_3` FOREIGN KEY (`trainer_id`) REFERENCES `bmx_users` (`id`);

--
-- Constraints for table `bmx_sprints`
--
ALTER TABLE `bmx_sprints`
  ADD CONSTRAINT `bmx_sprints_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `bmx_sessions` (`session_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
