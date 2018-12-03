-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2016 at 01:46 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cheapomail`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `ID` int(10) UNSIGNED NOT NULL,
  `recipient_ids` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `date_sent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`ID`, `recipient_ids`, `user_id`, `subject`, `body`, `date_sent`) VALUES
(1, 2, 1, 'COMP2190: Project 3', 'The project has been posted', '2016-11-24 22:16:00'),
(2, 1, 3, 'Yute yuh laptop old', 'Need a new laptop', '2016-11-20 14:30:00'),
(3, 4, 2, 'SMITE New characters', 'Dawg you see the new update?', '2016-11-18 15:47:00'),
(4, 2, 1, 'INFO2180: Project 3 SQL Code Draft', 'Yow Hilton pree this', '2016-11-24 11:54:00'),
(5, 1, 4, 'Bwoy Barnes whe yah deal wid', 'Wah gwan yute?', '2016-11-21 16:13:00'),
(6, 3, 1, 'RE: Yute yuh laptop old', 'Priest, yuh laptop keyboard a work? Mind me haffi loud yuh up and done yuh career.', '2016-11-22 17:45:00'),
(7, 4, 1, 'RE: Bwoy Barnes whe yah deal wid', 'Deh yah enuh Smite God. Everything good tho me G?', '2016-11-22 17:49:00'),
(8, 2, 1, 'See attached.', 'Hello please see attached files for my resume. thank you.', '2016-11-25 06:33:01'),
(9, 2, 3, 'Long time no see', 'Yo bro its been a while since we last spoke. gimmie a call sometime.', '2016-05-13 11:52:00'),
(10, 2, 4, 'Html', 'I did my part on the front end of the website.', '2016-02-01 23:40:00'),
(11, 2, 4, '1738', 'Yo did you hear fetty waps new song.', '2016-01-23 15:46:00'),
(12, 2, 1, 'mass effect', 'fam mass effect 4 is very disappointing :/.', '2016-08-16 01:32:00'),
(13, 2, 3, 'HELLO GAMES', 'no mans sky is garbage', '2016-09-20 05:52:00'),
(14, 2, 4, 'I GOT COD', 'fam guess who got Bo3', '2016-05-16 12:48:00'),
(15, 2, 1, 'need a CPU', 'yo dawg mi pentium give up the ghost, have a spear processor?', '2016-04-22 08:59:00'),
(16, 2, 3, 'half way there', 'Dawg wi almost one project 3', '2016-03-30 10:31:00'),
(17, 3, 2, 'pokemon go', 'Major time waster, but i like it', '2016-05-05 10:05:00'),
(18, 3, 4, 'The black hokage', 'Watch this', '2016-03-22 06:00:00'),
(19, 3, 1, 'WE GOT DDOSed', 'Yo emergency meeting ourservers are being ddosed', '2016-12-25 05:01:00'),
(20, 3, 4, 'Client info', 'I received a bug report from one of my clients. can you help me debug', '2016-03-09 22:35:00'),
(21, 3, 2, 'GTX1080', 'I bought a 1080', '2016-05-11 06:10:00'),
(22, 3, 2, 'my files', 'I uploaded my files to the g drive', '2016-09-13 07:15:00'),
(23, 3, 1, 'Notepad', 'Yo notepad++ is fire!', '2016-06-22 10:22:00'),
(24, 3, 4, 'Dell squad', 'i just took order of my 7559', '2016-08-22 11:33:00'),
(25, 3, 2, 'acer is garbage', 'bruv its fallling apart at the seams', '2016-07-20 09:40:00'),
(26, 3, 2, 'WHAT IS APPLE DOING?', 'WHERE ARE THE PORTS FAM?!', '2016-12-16 08:54:00'),
(27, 4, 2, 'pokemon go', 'Major time waster, but i like it', '2016-04-04 03:05:00'),
(28, 4, 1, 'Overwatch', 'it looks cool', '2016-05-28 23:22:00'),
(29, 4, 2, 'Paladins', 'Its like overwatch but better', '2016-05-17 04:01:00'),
(30, 4, 2, 'Mechanical keyboard', 'Its life changing', '2016-07-31 19:22:00'),
(31, 4, 3, 'Lenovo y700', 'looks dope a bit faster than the dell', '2016-05-30 00:40:00'),
(32, 4, 1, 'Can you come in today?', 'we need help at the studio', '2016-01-23 03:00:00'),
(39, 1, 2, 'Attack on titan', 'Not an anime fan but its lit.', '2016-04-19 14:45:00'),
(40, 1, 3, 'samsung', 'Lol they messing up with the new note', '2016-01-01 05:01:00'),
(41, 1, 4, 'Planetside 2', 'This game is very confusing', '2016-11-16 05:12:00'),
(42, 1, 2, ' Bad Javascript', 'Your Js has redundancies...', '2016-05-29 15:22:00'),
(43, 1, 3, 'Windows', '', '2016-05-29 15:24:00'),
(44, 1, 4, 'Linux', 'Struggling to use this thing bruv', '2016-09-22 20:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `message_read`
--

CREATE TABLE `message_read` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_ids` int(10) UNSIGNED NOT NULL,
  `reader_id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(200) NOT NULL,
  `Password_digest` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--
--to markers
--password for odane barnes=password1
--password for andrew hylton=password2
--password for krystan hunter=password3
--password for kherone hudson=password4
--
--

INSERT INTO `users` (`ID`, `firstname`, `lastname`, `username`, `Password_digest`, `salt`) VALUES
(1, 'Odane', 'Barnes', 'gazabarnes876@cheapomail.com', '498c01e3746add255c55c978bf3c3749', '500670543'),
(2, 'Andrew', 'Hylton', 'zamonth@cheapomail.com', '187f1b0c67968e620df3b8563313b2e0', '1562199594'),
(3, 'Krystan', 'Hunter', 'ancientlaptop@cheapomail.com', '160cffeb071855fc71d18b2b5263417a', '1877903583'),
(4, 'Kherone', 'Hudson', 'kheronehudson@cheapomail.com', 'acdeb6bd56c6731fc8ed7f7a6e9fe58b', '1421823913');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `message_read`
--
ALTER TABLE `message_read`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `message_read`
--
ALTER TABLE `message_read`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
