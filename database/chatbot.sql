-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2020 at 09:59 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `user` longtext NOT NULL,
  `chatbot` longtext NOT NULL,
  `action` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `user`, `chatbot`, `action`, `date`) VALUES
(112, 'hii', 'hi,wellcome sir, how can i help you?', 'text', '2020-04-01 11:56:56'),
(113, 'who are you?', 'I am LDCE chatbot , I am here to help you.!', 'text', '2020-04-01 11:57:26'),
(114, 'how are you', 'I am Fine! Howz you?', 'text', '2020-04-01 11:57:45'),
(115, 'good', 'How can I help You!!', 'text', '2020-04-01 11:58:41'),
(116, 'do something', 'Commands \r\n/help\r\n/faculty\r\n/assignment\r\n/student\r\n/jokes', 'text', '2020-04-01 11:59:16'),
(117, 'jokes', '\r\nMy girlfriend is always yelling at me because I get my directions mixed up.\r\n\r\nSo I packed my bags and right left away!\r\n\r\n', '', '2020-04-01 11:59:25'),
(118, 'tell me about syllabus', 'Enter the subject code or name???', 'text', '2020-04-01 12:00:17'),
(119, 'ajava', '<a href=\"syllabus/2160707.pdf\" download\">Click here</a> ', '', '2020-04-01 12:00:28'),
(120, 'jokes', '\r\nWhat’s grey and can’t swim?\r\n\r\nA castle.', '', '2020-04-01 12:01:31'),
(121, 'jokes', '\r\nWhat did Zero say to number Eight?\r\n\r\nsigh\r\n\r\n“Nice belt.”', '', '2020-04-01 12:01:40'),
(122, 'onemore', 'I am Sorry but I am not exactly clear how to help you', 'text', '2020-04-01 12:01:47'),
(123, 'do you know what is nuclea?', 'I am Sorry but I am not exactly clear how to help you', 'text', '2020-04-01 12:02:03'),
(124, 'open google', '<a href=\"https://www.google.com\" target=\"_blank\">Click here</a> ', 'query', '2020-04-01 12:02:16'),
(125, 'syllbus?', 'Enter the subject code or name???', 'text', '2020-04-01 12:03:56'),
(126, '2161603', '<a href=\"syllabus/2161603.pdf\" download\">Click here</a> ', 'query', '2020-04-01 12:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `jokes`
--

CREATE TABLE `jokes` (
  `id` int(11) NOT NULL,
  `joke` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jokes`
--

INSERT INTO `jokes` (`id`, `joke`) VALUES
(1, 'Two blind dudes are fighting really viciously. How do you stop them?\r\n\r\nYou shout, “I’m betting on the dude with the knife!”\r\n'),
(2, 'What’s yellow and hurts when it gets in your eye?\r\n\r\nA bulldozer.'),
(3, 'Why do scuba divers fall backwards off of the boat?\r\n\r\nBecause if they fell forward, they’d still be on the boat.\r\n'),
(4, '\r\nWhat’s grey and can’t swim?\r\n\r\nA castle.'),
(5, 'What’s worse than finding a worm in your apple?\r\n\r\nThe Holocaust.'),
(6, 'My wife walked in on me masturbating to an optical illusion.\r\n\r\nI said, “Honey, it’s not what it looks like!”\r\n'),
(7, 'What’s the difference between a bird and a fly? A bird can fly but a fly can’t bird.'),
(8, 'Whats orange and sounds like a parrot?\r\n\r\nA carrot.'),
(9, '\r\nWhat did Zero say to number Eight?\r\n\r\nsigh\r\n\r\n“Nice belt.”'),
(10, '\r\n\r\nDo you know why when geese fly in a V one end is longer than the other?\r\n\r\nThere are more geese on that end.\r\n'),
(11, 'How do you get 100 Canadians out of a pool?\r\n\r\nSay, “Would everyone please get out of the pool”\r\n'),
(12, '\r\nWhat’s brown and sticky?\r\n\r\nA stick.'),
(13, '\r\nWhy can’t the T-Rex clap?\r\n\r\nBecause it’s dead.'),
(14, '\r\nWhat’s red a smells like blue paint?\r\n\r\nRed paint'),
(15, '\r\nMy friend asked me to help him round up his 37 sheep.\r\n\r\nI said “40”'),
(16, '\r\nMy girlfriend is always yelling at me because I get my directions mixed up.\r\n\r\nSo I packed my bags and right left away!\r\n\r\n'),
(17, 'Two blind dudes are fighting really viciously. How do you stop them?\r\n\r\nYou shout, “I’m betting on the dude with the knife!”'),
(18, 'What’s yellow and hurts when it gets in your eye?\r\n\r\nA bulldozer.\r\n'),
(19, 'Parallel lines have so much in common.\r\n\r\nIt’s a shame they will never meet.'),
(20, 'My wife accused me of being immature. \r\n\r\nI told her to get out of my fort.'),
(21, 'Women only call me ugly until they find out how much money I make. \r\n\r\nThen they call me ugly and poor.'),
(22, 'What do you call a dog with no legs?\r\n\r\nIt doesn’t matter, it will never come'),
(23, 'What’s green, fuzzy and if it fell out of a tree it would kill you?\r\n\r\nA pool table.'),
(24, 'I went to a very emotional wedding last weekend. \r\n\r\nEven the wedding cake was in tiers'),
(25, 'Our family has a serious issue with diarrhea. \r\n\r\nI guess you could say it runs in our jeans. '),
(26, 'Someone stole my mood ring. \r\n\r\nI’m not sure how I feel about that.'),
(27, 'The first rule of Alzheimer’s club…\r\n\r\nIs don’t talk about chess club. '),
(28, 'I told my wife she was drawing on her eyebrows too high. \r\n\r\nShe looked surprised.'),
(29, 'I threw a boomerang a few years ago. \r\n\r\nNow I live in constant fear.'),
(30, '\r\n\r\nYou don’t need a parachute to go skydiving. \r\n\r\nYou need a parachute to go skydiving twice'),
(31, 'Remember…you are not completely useless. \r\n\r\nYou can always serve as a bad example.'),
(32, 'I broke my finger last week. \r\n\r\nOn the other hand, I’m okay.'),
(33, 'Why do cows wear bells?\r\n\r\nBecause their horns don’t work'),
(34, 'What’s the difference between a well dressed man on a bike and a poorly dressed man on a unicycle?\r\n\r\nAttire.');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `action` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `answer`, `action`) VALUES
(2, 'hi,hiii,hii,hiii,hi!,hi?', 'hi,wellcome sir, how can i help you?', 'text'),
(3, 'helo,hello,helloo,hello?,hello!', 'hello, welocome sir, how can i help you?', 'text'),
(4, 'who are you?,about you?,about,about?,details,tell me about you?,tell me about you,who you', 'I am LDCE chatbot , I am here to help you.!', 'text'),
(5, 'help me?,do something,do something?,help me,what you can do,what you can do?', 'Commands \r\n/help\r\n/faculty\r\n/assignment\r\n/student\r\n/jokes', 'text'),
(6, 'help', 'what kind of help you want?', 'text'),
(7, 'how are you?,how are you,about you,about you?', 'I am Fine! Howz you?', 'text'),
(8, 'good,and,or,tell,tell me,??m?,???', 'How can I help You!!', 'text'),
(9, 'what is time?,time,time pls?,time pls ,timepls,what is time', 'echo $child2;', 'query'),
(10, 'what is date?,date,date?,what is date today,today,today?', 'echo $child1;', 'query'),
(11, 'open google,google,google?,gogle,gogle?,open gogle', '<a href=\"https://www.google.com\" target=\"_blank\">Click here</a> ', 'query'),
(12, 'syllabus,syllbus?,tell me about syllabus,slbus,sylabus,study material,material,about subject,subject', 'Enter the subject code or name???', 'text'),
(13, 'ajava,advancejava,advance java,java,2160707', '<a href=\"syllabus/2160707.pdf\" download\">Click here</a> ', ''),
(14, 'WT,webtechnology,Web Technology,wt,W T,w t,web technology,2160708', '<a href=\"syllabus/2160708.pdf\" download\">Click here</a> ', 'query'),
(15, 'net,dotnet,Dotnet,DOTNET,DotNet,2160711,.net', '<a href=\"syllabus/2160711.pdf\" download\">Click here</a> ', 'query'),
(16, '2161603,DCDR,dcdr,DATACOMPRESSION,datacompressiondataretrival,data compression data retrival', '<a href=\"syllabus/2161603.pdf\" download\">Click here</a> ', 'query');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jokes`
--
ALTER TABLE `jokes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `jokes`
--
ALTER TABLE `jokes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
