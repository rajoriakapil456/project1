-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2018 at 08:02 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'rajoria.kapil456@gmail.com', 'drfoies123');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('q1a', 'a1a'),
('q2a', 'a2a'),
('q3a', 'a3a'),
('q4a', 'a4a'),
('q5a', 'a5a'),
('q6a', 'a6a'),
('q7a', 'a7a'),
('q8a', 'a8a'),
('q9a', 'a9a'),
('q10a', 'a10a'),
('q1b', 'a1b'),
('q2b', 'a2b'),
('q3b', 'a3b'),
('q4b', 'a4b'),
('q5b', 'a5b'),
('q6b', 'a6b'),
('q7b', 'a7b'),
('q8b', 'a8b'),
('q9b', 'a9b'),
('q10b', 'a10b');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('kapil@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2021-01-03 16:56:00'),
('bose@gmail.com', '5b141b8009cf0', 30, 10, 10, 0, '2021-01-04 16:57:45'),
('muskan@gmail.com', '5b141b8009cf0', 15, 10, 7, 3, '2021-01-05 16:59:06'),
('nidhi@gmail.com', '5b141f1e8399e', 26, 10, 9, 1, '2021-01-06 17:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('q1a', 'One teacher can have many classes', 'a1a'),
('q1a', 'One class may have many teachers', '5b141d71485dc'),
('q1a', 'Many classes may have many teachers', '5b141d71485e0'),
('q1a', 'Many teachers may have many classes', '5b141d71485e4'),
('q2a', 'All Of Below', 'a2a'),
('q2a', 'Datasheet View', '5b141d71978cc'),
('q2a', 'Design View', '5b141d71978d1'),
('q2a', 'Pivote TableView', '5b141d71978d4'),
('q3a', 'Parent', '5b141d71e5f2b'),
('q3a', 'Sister', '5b141d71e5f3c'),
('q3a', 'Child', 'a3a'),
('q3a', 'Master', '5b141d71e5f48'),
('q4a', 'Data Refinement', '5b141d7222820'),
('q4a', 'Establishing Relationship', '5b141d722282f'),
('q4a', 'None of these', '5b141d7222880'),
('q4a', 'Data Definition', 'a4a'),
('q5a', 'Form', '5b141d7268b8a'),
('q5a', 'Macro', '5b141d7268b95'),
('q5a', 'Report', '5b141d7268b98'),
('q5a', 'Query', 'a5a'),
('q6a', 'Query', 'a6a'),
('q6a', 'Table', '5b141d72aefd8'),
('q6a', 'Form', '5b141d72aefdc'),
('q6a', 'Report', '5b141d72aefe0'),
('q7a', 'Parent', 'a7a'),
('q7a', 'Child', '5b141d72dfa85'),
('q7a', 'Owner', '5b141d72dfa88'),
('q7a', 'Sister', '5b141d72dfa8b'),
('q8a', 'Text', 'a8a'),
('q8a', 'Memo', '5b141d731c242'),
('q8a', 'Auto Number', '5b141d731c248'),
('q8a', 'Mixed', '5b141d731c24b'),
('q9a', 'Line', '5b141d734cd10'),
('q9a', 'Relationship', 'a9a'),
('q9a', 'Primary Key', '5b141d734cd1d'),
('q9a', 'Record', '5b141d734cd20'),
('q10a', 'Unique Key', '5b141d73858d0'),
('q10a', 'Primary Key', 'a10a'),
('q10a', 'Key Record', '5b141d73858e3'),
('q10a', 'Field Name', '5b141d73858e8'),
('q1b', 'Sparrow', '5b1422654ab3a'),
('q1b', 'parrot', '5b1422654ab48'),
('q1b', 'Pegion', '5b1422654ab4d'),
('q1b', 'Peacock', 'a1b'),
('q2b', 'Aditi pant', '5b1422657d052'),
('q2b', 'Indira nath', '5b1422657d05f'),
('q2b', 'Mother teresa', 'a2b'),
('q2b', 'Kalpana chawla', '5b1422657d069'),
('q3b', 'Ganga', '5b142265c09e3'),
('q3b', 'Narmada', 'a3b'),
('q3b', 'Sabarmati', '5b142265c09fa'),
('q3b', 'Mahi', '5b142265c09ff'),
('q4b', 'Mizoram', '5b14226635df5'),
('q4b', 'Meghalaya', '5b14226635e04'),
('q4b', 'Sikkim', '5b14226635e09'),
('q4b', 'Assam', 'a4b'),
('q5b', 'Kathmandu', 'a5b'),
('q5b', 'Palpa', '5b1422666bf39'),
('q5b', 'Dhaka', '5b1422666bf3e'),
('q5b', 'Etanagar', '5b1422666bf42'),
('q6b', 'Bhikaji kama', '5b1422669c8dc'),
('q6b', 'Pingali venkayya', 'a6b'),
('q6b', 'Komaram bheem', '5b1422669c8ef'),
('q6b', 'Bhagat singh', '5b1422669c8f3'),
('q7b', 'Vishal sikka', '5b142266cd353'),
('q7b', 'Rajesh gopinathan', '5b142266cd361'),
('q7b', 'N.R.Narayana murthy', '5b142266cd365'),
('q7b', 'Salil parekh', 'a7b'),
('q8b', 'James gosling', '5b14226719fa0'),
('q8b', 'Guido van rossum', 'a8b'),
('q8b', 'Dennis ritchie', '5b14226719fb7'),
('q8b', 'Larry page', '5b14226719fbb'),
('q9b', '14 feb 2019', 'a9b'),
('q9b', '14 feb 2018', '5b1422674aa01'),
('q9b', '24 feb 2019', '5b1422674aa06'),
('q9b', '26 feb 2018', '5b1422674aa0b'),
('q10b', 'Hirakund dam', '5b1422677b3e9'),
('q10b', 'Sardar sarovar dam', '5b1422677b3f7'),
('q10b', 'Bhakra  dam', 'a10b'),
('q10b', 'Mettur dam', '5b1422677b400');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('5b141b8009cf0', 'q1a', 'What do you mean by one to many relationship between Teacher and Class table?', 4, 1),
('5b141b8009cf0', 'q2a', 'What are the different view to present a Table ?', 4, 2),
('5b141b8009cf0', 'q3a', 'In one-to-many relationship the table on "many" side is called _______', 4, 3),
('5b141b8009cf0', 'q4a', 'In which state one gathers and list all the necessary fields for the database design project.', 4, 4),
('5b141b8009cf0', 'q5a', 'Which of the following enables us to view data from a table based on a specific criterion', 4, 5),
('5b141b8009cf0', 'q6a', 'Which database object is ideal to view, change, andanalyze datain different ways ?', 4, 6),
('5b141b8009cf0', 'q7a', 'In one-to-many relationship the table in "one" side is called _______', 4, 7),
('5b141b8009cf0', 'q8a', 'Which data type allows alphanumeric characters and special symbols to be entered?', 4, 8),
('5b141b8009cf0', 'q9a', 'It is used to establish an association between related tables.', 4, 9),
('5b141b8009cf0', 'q10a', 'This key that uniquely identifies each record is called', 4, 10),
('5b141f1e8399e', 'q1b', 'Which is the national bird of our country?', 4, 1),
('5b141f1e8399e', 'q2b', 'who is the first indian woman to get Nobel prize?', 4, 2),
('5b141f1e8399e', 'q3b', 'On which river statue of unity is situated.', 4, 3),
('5b141f1e8399e', 'q4b', 'where is kaziranga national park?', 4, 4),
('5b141f1e8399e', 'q5b', 'what is the capital of nepal?', 4, 5),
('5b141f1e8399e', 'q6b', 'who designed indian national flag?', 4, 6),
('5b141f1e8399e', 'q7b', 'who is the C.E.O of Infosys?', 4, 7),
('5b141f1e8399e', 'q8b', 'who is the developer of python?', 4, 8),
('5b141f1e8399e', 'q9b', 'when did pulwama attack happen?', 4, 9),
('5b141f1e8399e', 'q10b', 'which is the most biggest dam in india?', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('5b141b8009cf0', 'DBMS Quiz', 3, 1, 10, '2021-01-01 16:46:56'),
('5b141f1e8399e', 'General Knowledge Quiz', 3, 1, 10, '2021-01-01 17:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('bose@gmail.com', 30, '2021-01-03 16:57:45'),
('kapil@gmail.com', 22, '2021-01-04 16:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('kapil', 'bcet', 'kapil@gmail.com', 'kapil'),
('bose', 'bcet', 'bose@gmail.com', 'bose');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
