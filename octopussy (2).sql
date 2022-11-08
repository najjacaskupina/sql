-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2022 at 10:07 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `octopussy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `username`, `password`, `token`) VALUES
(1, 'admin', '$2y$10$tDbqTwoMks0TReq4kGZGG.ypp2kevy8mvVkBcHXUww7z8SKeoZyoi', 'yli8c0dUMk1sSSHJjBH2Zs6Q6zE556scWcNoWSzDtT8=');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `gradeId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `grade` int(1) NOT NULL,
  `dateOfGrade` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentId` int(11) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentId`, `firstName`, `lastName`, `username`, `password`, `token`) VALUES
(1, 'Anže', 'Kolar', 'KolarA', '$2y$10$Xef.KUsSDaKbcfMpQP/XIu3TqGgCbCiLWDNQERcEu1wkJclQs3XsW', 'fBHOunbv8F/vIdPZ8+ctrA=='),
(2, 'David', 'Kolar', 'KolarD', '$2y$10$KLhuk7QqBbN7puL96fWhaev.YyoEL4wnqo4TybTQOwI6/QBwcbb76', 'yrf+VipPIjATMTB+Np668Q=='),
(3, 'Nik', 'Colnarič', 'ColnaricN', '$2y$10$.RDPS5Q9LSdseWMbA35o.ewwa7vJJcv5eUqDvYcL9xYLeuwicdvq.', 'TlH7IVPu3KaBOoIn8dvDhw=='),
(5, 'Marko', 'Vošner', 'VosnerM', '$2y$10$0yhXlHnrGnOjXMhCC6vOYus0Ygg922YoP/6ml0kznMgWuZBr/.9ry', 'ObY0kfmTfRTkdFKbS99k6Q=='),
(6, 'Amadej', 'Lupše', 'LupseA', '$2y$10$H9eydvtZwtJWiXSZ7C40g.iQwWGusL73z.JRhLHK4uoW4k4r7E4/O', 'J+UOhU33j/Nt4x4Xnpom2Q=='),
(9, 'Maj', 'Kramperšek', 'KrampersekM', '$2y$10$5W2GMKfaRfVf4p2/2udxp.X3UkB4PgWl.t7hy3c7reLU8r3cecW1C', 'oE8wDh+TeJYuXNo89N6Lig=='),
(10, 'Marko', 'Bušnja', 'BusnjaM', '$2y$10$b7waNJpKBxRiIcfUI9StWu/Qlyl2C1Exdvh9dLqMz8NWs33Swqq8W', 'SkSomF41XINJhz3lZhZ+cQ=='),
(11, 'Tilen', 'Černelič', 'CernelicT', '$2y$10$rlPhrJW02r.pzI5soER15uaTHPY/JdzElG1THpg7BHtSvDm02fFn.', 'XVQEVpXbggdzjWa+Z0PSuQ=='),
(12, 'Tilen', 'Goršek', 'GorsekT', '$2y$10$4m84ruT7Jb/.18J4pWLgy.9Q3TslmhPgN/AI/.JM2hf3xydG.58WO', 'DCZItTJTT7o954QHrQOmjA=='),
(13, 'Jan', 'Vipotnik', 'VipotnikJ', '$2y$10$atEJlFpcHKWKd0ae6yTIyObNFJWkvMhHeJ/i6vz6tKRlyx67r0Cgu', '6y6QgInNCIOcdvKgkRy1gw=='),
(14, 'Tjan', 'Korošec', 'KorosecT', '$2y$10$AFU0vbxVaUkUdYRaR6/BT.DPOBoHKnhix5th/fAfvKZArremKrxlO', 'PyqfAxb0OqJYmNsZFo9Y6A=='),
(15, 'Jon', 'Gorenak', 'GorenakJ', '$2y$10$8nRUuv4cDhHMU0efjaksI.Nil7JUmiZeOof1U/6I1zlQgrH9kBhWS', 'rG0J/qt6EpAMhsPhckXTQA=='),
(16, 'Urban', 'Pučnik', 'PucnikU', '$2y$10$8Ytm9RMOcSpz6uk7cChRCeLt/AAMA2RDoosvDxRj/oNEuo0e0iJLO', '1TZS/HrKTLj8zf2I4pxq/w=='),
(17, 'Gašper', 'Požek', 'PozekG', '$2y$10$7rDnrbRxPqjf1dJppPE2COxAhsNV45kwSJ16/0aL6I5.b4MLsHaaO', '50lPDHmI273w3/xE+HbL+A=='),
(18, 'Patrik', 'Mastnak', 'MastnakP', '$2y$10$K0qCc/U5GF6WSZoMy5ewauU8aC.djivgyfeuNttPHx5Pv0KP5eM1i', 'YJYb/2R3FCDQZfRo/VQtJg=='),
(19, 'Patrick', 'Košir', 'KosirP', '$2y$10$2y5LSuKKpXEg0GUVjnXO.uFbUaWt7mJsFpQ9krEBLwr1y6ZlAh0hG', 'LPjlJA+sjL96Nk8XkRKLrw=='),
(20, 'Tilen', 'Muhić', 'MuhicT', '$2y$10$h.KD0KwR.URY2GaRQTZU3Olk92wxG7TkAoHSt3GUhe5rMXuuooPj.', 'voeXcG271rLO84EhsOIybg=='),
(21, 'Patricija', 'Svetelšek', 'SvetelsekP', '$2y$10$nGNHoCXIWM1GT8mgChzluuna7jKmjEQ0491v2PRVGdHhT/g9sSXQ2', 'n41brIPUIEceiuwWVWUrEw=='),
(22, 'Maksim', 'Loknar', 'LoknarM', '$2y$10$NJk.daCv8gPAK/RY1GlcPO/klcz/jxYxt5uEPgce2Zf3dFoFHDksG', 'lw5r5DtXIeUdxdZa4g7w0w=='),
(23, 'Ana', 'Šmerc', 'SmercA', '$2y$10$1d8svDOqT4LJfXcHWaNKyOFJ75bUxKpImNlnXfdQZ7JWwPp1GdunK', 'WJM/zWN9cQ7TxbPcncD8mg=='),
(24, 'Ana Kristina', 'Obreza', 'ObrezaA', '$2y$10$0sLwhuwyGZWzdcrCWk.rv.I9tjpI82Rd0NNGwp24N7yACebkXiDE.', 'fCDRD23ICo92lUKw+g/Ftg=='),
(25, 'Alja', 'Novak', 'NovakA', '$2y$10$aH/f0QeIJej4XjaLdvsL8.AIuZDB2iJHSk5JBBofdYhQ.y8MXLjE.', 'ZOgvp4oLtJDnG+mM6hN62Q=='),
(26, 'Tanja', 'Kobale', 'KobaleT', '$2y$10$jqecUthzELjBzsmg5AtMjOuamyPulWxEwxdLbKMdJq6pGDcBdUl3m', 'e1KDcn7A4TNECUoLSBOy5Q=='),
(27, 'Mojca', 'Bizjak', 'BizjakM', '$2y$10$x/cu.OMq4wr7f7e2fF9bX.Z6eiqugkQi4HoQxHm6DSSQtU4QxDLOm', 'zfVBY0s8sNy+6o5m0zYACQ=='),
(28, 'Teja', 'Strašek', 'StrasekT', '$2y$10$SWSaP.xIo/XH5UjULv/cjurYawtcYLqtWDasWz8M30QMHNWJTsDP.', 'iof2wzgNucr9e7jWXc1hOg=='),
(29, 'Nina', 'Kovač', 'KovacN', '$2y$10$HOE71VnBt85.GyW7zPhDwuc9FwKwiFpdVf.gPP/OfD6885c8KWiuG', 'KMTlrVjITPsa++A8460hCA=='),
(30, 'Klara', 'Rosar', 'RosarK', '$2y$10$dnKIsUPWiEvu.hbgGbYITOON8Y6/od1D/KBFHqGnsdculQX9Xjyne', 'VBmM+dhz9zUr6w5y85dBqg=='),
(31, 'Pia', 'Skok', 'SkokP', '$2y$10$ZfnKf/tM/f2d45j8ugtNX.D6mWaXOoFpMxWumNYGDnC6wXlOdM9XO', '8IRQ3xlTh/eMAVCv6GC2IQ==');

-- --------------------------------------------------------

--
-- Table structure for table `students_subjects`
--

CREATE TABLE `students_subjects` (
  `connectionId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_subjects`
--

INSERT INTO `students_subjects` (`connectionId`, `studentId`, `subjectId`) VALUES
(2, 1, 2),
(14, 1, 7),
(16, 1, 14),
(17, 1, 18),
(18, 1, 20),
(19, 1, 22),
(20, 2, 2),
(21, 2, 7),
(22, 2, 14),
(23, 2, 18),
(24, 2, 20),
(25, 2, 22),
(26, 29, 2),
(27, 29, 7),
(28, 29, 14),
(29, 29, 18),
(30, 29, 20),
(31, 29, 22),
(32, 30, 2),
(33, 30, 7),
(34, 30, 14),
(35, 30, 18),
(36, 30, 20),
(37, 30, 22),
(40, 3, 10),
(41, 3, 13),
(42, 3, 17),
(43, 3, 28),
(44, 3, 29),
(45, 3, 26),
(46, 31, 2),
(47, 31, 7),
(48, 31, 14),
(49, 31, 18),
(50, 31, 20),
(51, 31, 22),
(52, 10, 2),
(53, 10, 7),
(54, 10, 14),
(55, 10, 18),
(56, 10, 20),
(57, 10, 22),
(58, 11, 2),
(59, 11, 7),
(60, 11, 14),
(61, 11, 18),
(62, 11, 20),
(63, 11, 22),
(64, 12, 8),
(65, 12, 11),
(66, 12, 15),
(67, 12, 19),
(68, 12, 21),
(69, 12, 23),
(70, 13, 8),
(71, 13, 11),
(72, 13, 15),
(73, 13, 19),
(74, 13, 21),
(75, 13, 23),
(76, 14, 8),
(77, 14, 11),
(78, 14, 15),
(79, 14, 19),
(80, 14, 21),
(81, 14, 23),
(82, 15, 8),
(83, 15, 11),
(84, 15, 15),
(85, 15, 19),
(86, 15, 21),
(87, 15, 23),
(88, 28, 8),
(89, 28, 11),
(90, 28, 15),
(91, 28, 19),
(92, 28, 21),
(93, 28, 23),
(94, 27, 8),
(95, 27, 11),
(96, 27, 15),
(97, 27, 19),
(98, 27, 21),
(99, 27, 23),
(100, 26, 8),
(101, 26, 11),
(102, 26, 15),
(103, 26, 19),
(104, 26, 21),
(105, 26, 23),
(106, 16, 9),
(107, 16, 12),
(108, 16, 16),
(109, 16, 24),
(110, 16, 27),
(111, 16, 25),
(112, 17, 9),
(113, 17, 12),
(114, 17, 16),
(115, 17, 24),
(116, 17, 25),
(117, 17, 27),
(118, 18, 9),
(119, 18, 12),
(120, 18, 16),
(121, 18, 24),
(122, 18, 25),
(123, 18, 27),
(124, 19, 9),
(125, 19, 12),
(126, 19, 16),
(127, 19, 24),
(128, 19, 25),
(129, 19, 27),
(130, 25, 9),
(131, 25, 12),
(132, 25, 16),
(133, 25, 24),
(134, 25, 25),
(135, 25, 27),
(136, 24, 9),
(137, 24, 12),
(138, 24, 16),
(139, 24, 24),
(140, 24, 25),
(141, 24, 27),
(142, 5, 10),
(143, 5, 13),
(144, 5, 17),
(145, 5, 26),
(146, 5, 28),
(147, 5, 29),
(148, 6, 10),
(149, 6, 13),
(150, 6, 17),
(151, 6, 26),
(152, 6, 28),
(154, 9, 10),
(155, 9, 13),
(156, 9, 17),
(157, 9, 26),
(158, 9, 28),
(159, 9, 29),
(160, 23, 10),
(161, 23, 13),
(162, 23, 17),
(163, 23, 26),
(164, 23, 28),
(165, 23, 29),
(166, 22, 10),
(167, 22, 13),
(168, 22, 17),
(169, 22, 29),
(170, 22, 28),
(171, 22, 26),
(172, 21, 10),
(173, 21, 13),
(174, 21, 17),
(175, 21, 26),
(176, 21, 28),
(177, 21, 29),
(178, 20, 10),
(179, 20, 13),
(180, 20, 17),
(181, 20, 26),
(182, 20, 28),
(183, 20, 29),
(184, 3, 0),
(185, 3, 0),
(186, 3, 0),
(187, 6, 29);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subjectId` int(11) NOT NULL,
  `subjectName` varchar(20) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `year` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subjectId`, `subjectName`, `abbr`, `year`) VALUES
(2, 'Slovenščina', 'slo', 1),
(7, 'Matematika', 'mat', 1),
(8, 'Matematika', 'mat', 2),
(9, 'Matematika', 'mat', 3),
(10, 'Matematika', 'mat', 4),
(11, 'Slovenščina', 'slo', 2),
(12, 'Slovenščina', 'slo', 3),
(13, 'Slovenščina', 'slo', 4),
(14, 'Angleščina', 'ang', 1),
(15, 'Angleščina', 'ang', 2),
(16, 'Angleščina', 'ang', 3),
(17, 'Angleščina', 'ang', 4),
(18, 'Fizika', 'fiz', 1),
(19, 'Fizika', 'fiz', 2),
(20, 'Računalništvo', 'rac', 1),
(21, 'Računalništvo', 'rac', 2),
(22, 'Športna', 'špo', 1),
(23, 'Športna', 'špo', 2),
(24, 'Programiranje', 'pro', 3),
(25, 'Podatkovne baze', 'upn', 3),
(26, 'Podatkovne baze', 'upn', 4),
(27, 'Računalniško oblikov', 'rob', 3),
(28, 'Razvoj spletnih apli', 'nrs', 4),
(29, 'Računalniški praktik', 'rpr', 4),
(30, 'Nemščina', 'nem', 1),
(31, 'Dodatna Matematika', 'dmat', 1),
(32, 'Dodatna Matematika', 'dmat', 2),
(33, 'Dodatna Matematika', 'dmat', 3),
(34, 'Dodatna Matematika', 'dmat', 4),
(35, 'Nemščina', 'nem', 2),
(36, 'Španščina', 'špa', 3),
(37, 'Španščina', 'špa', 4),
(38, 'Robotika', 'rbt', 1),
(39, 'Robotika', 'rbt', 2),
(40, 'Spoznavanje linuxa', 'spl', 3),
(41, 'Android studio', 'ast', 4);

-- --------------------------------------------------------

--
-- Table structure for table `submitedtasks`
--

CREATE TABLE `submitedtasks` (
  `submitedTaskId` int(11) NOT NULL,
  `taskId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `submitionDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `taskId` int(11) NOT NULL,
  `taskName` varchar(50) NOT NULL,
  `pathToFile` varchar(100) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `taskStartDate` date NOT NULL,
  `taskEndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacherId` int(11) NOT NULL,
  `teacherFirstName` varchar(30) NOT NULL,
  `teacherLastName` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacherId`, `teacherFirstName`, `teacherLastName`, `username`, `password`, `token`) VALUES
(2, 'Andreja', 'Tkalec', 'TkalecA', '$2y$10$50sblyaRSo/1baidFywf.Ofh.TVBq1iZUaXYU0jiBrFRFdfMDRGcW', 'xtG4hwZwnQXFV9c+nhWiqw=='),
(3, 'Martina', 'Omerzel', 'OmerzelM', '$2y$10$FP2LR5ougYIC/406fNoVLebMNycXVd4JvH7VP.l2QX39NB1MX6T0G', 'a0Lj3NA+Ad/WCSZERh+rBA=='),
(4, 'Eva', 'Boh', 'BohE', '$2y$10$Yalfi/80hVDXB.P1BlSJ4eys02gXtYLlnRi0/UjL.HE2o36VuRqli', ''),
(5, 'Bojan', 'Herman', 'HermanB', '$2y$10$6HDI8owte2uC.5wrFI1CYOjkhdeaBTkwhOh4D.dar52GzDr4w9nCG', ''),
(6, 'Jaka', 'Koren', 'KorenJ', '$2y$10$y0ig3LniUpW0vKydvvPvuONu5Ea2DnepzLTnaq.kdSGDenc4ORjGi', ''),
(7, 'Mitja', 'Lukner', 'LuknerM', '$2y$10$iLdFhcvML7zF8Hpm/Uc2deWvYbCDtxw7gehN76VbEJiqg51l/bi2e', ''),
(8, 'Boštjan', 'Lubej', 'LubejB', '$2y$10$J.uxfNgfErvXbJXtUhR46.2PNeXdxjgo4GrAb7qxqOYx72DUqnbNa', ''),
(9, 'Andraž', 'Pušnik', 'PušnikA', '$2y$10$OxhbjGe7l.HWSW2fVPQVeO43GX/csGr0tSLfTkJfBK11uXffh6V6a', ''),
(10, 'Boštjan', 'Resinovič', 'ResinovičB', '$2y$10$u4xIfEzprhMZkQPJkmT3P.FvGnYW5CItXzTTW6B63VQAkkZYHBBpS', 'MI7EjtxLttFP9gnXDfPUqQ=='),
(11, 'Tilen', 'Sirk', 'SirkT', '$2y$10$hquHF1.X4pcjANXVG0fi3O7S4j.9SM78mm3fkanRWBpHTKY.MPu5m', ''),
(12, 'Borut', 'Slemenšek', 'SlemenšekB', '$2y$10$pPWYgAPWtdaPjp/fCJTXFueGAbxxUMuLbZhXuBqUgAKhYZCksYgIW', ''),
(13, 'Irena', 'Sojč', 'SojcI', '$2y$10$jynv6dMqn6Q5OAzvNcizcOef08mhVLJ2MH6KcCx4YEVUO9WKB6Mk.', ''),
(14, 'Matej', 'Kalisek', 'KalisekM', '$2y$10$wAHLpi4s39CziDaqYfT/quh5nmozexxBTtbscdULnq2rQW20BoKEu', '');

-- --------------------------------------------------------

--
-- Table structure for table `teachers_subjects`
--

CREATE TABLE `teachers_subjects` (
  `connectionTSId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `teacherId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers_subjects`
--

INSERT INTO `teachers_subjects` (`connectionTSId`, `subjectId`, `teacherId`) VALUES
(10, 2, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 7, 3),
(15, 10, 3),
(16, 9, 3),
(17, 8, 3),
(18, 14, 4),
(19, 16, 4),
(20, 17, 4),
(21, 15, 4),
(22, 18, 5),
(23, 19, 5),
(24, 22, 7),
(25, 23, 7),
(26, 20, 6),
(28, 27, 9),
(29, 21, 10),
(30, 25, 8),
(31, 26, 11),
(32, 29, 12),
(33, 24, 8),
(34, 28, 6),
(35, 41, 10),
(36, 31, 3),
(37, 32, 3),
(38, 33, 3),
(39, 34, 3),
(40, 40, 11),
(41, 36, 13),
(42, 37, 13),
(43, 35, 13),
(44, 30, 13),
(45, 38, 14),
(46, 39, 14);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewalltasksfromstudent`
-- (See below for the actual view)
--
CREATE TABLE `viewalltasksfromstudent` (
`studentId` int(11)
,`firstName` varchar(30)
,`lastName` varchar(30)
,`username` varchar(30)
,`password` varchar(100)
,`token` varchar(50)
,`subjectId` int(11)
,`subjectName` varchar(20)
,`abbr` varchar(5)
,`year` int(1)
,`taskId` int(11)
,`taskName` varchar(50)
,`pathToFile` varchar(100)
,`taskStartDate` date
,`taskEndDate` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewstudentsinsubjects`
-- (See below for the actual view)
--
CREATE TABLE `viewstudentsinsubjects` (
`studentId` int(11)
,`firstName` varchar(30)
,`lastName` varchar(30)
,`username` varchar(30)
,`password` varchar(100)
,`token` varchar(50)
,`subjectId` int(11)
,`subjectName` varchar(20)
,`abbr` varchar(5)
,`year` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewteachersinsubjects`
-- (See below for the actual view)
--
CREATE TABLE `viewteachersinsubjects` (
`teacherId` int(11)
,`teacherFirstName` varchar(30)
,`teacherLastName` varchar(30)
,`username` varchar(30)
,`password` varchar(100)
,`token` varchar(100)
,`subjectId` int(11)
,`subjectName` varchar(20)
,`abbr` varchar(5)
,`year` int(1)
);

-- --------------------------------------------------------

--
-- Structure for view `viewalltasksfromstudent`
--
DROP TABLE IF EXISTS `viewalltasksfromstudent`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewalltasksfromstudent`  AS SELECT `viewstudentsinsubjects`.`studentId` AS `studentId`, `viewstudentsinsubjects`.`firstName` AS `firstName`, `viewstudentsinsubjects`.`lastName` AS `lastName`, `viewstudentsinsubjects`.`username` AS `username`, `viewstudentsinsubjects`.`password` AS `password`, `viewstudentsinsubjects`.`token` AS `token`, `viewstudentsinsubjects`.`subjectId` AS `subjectId`, `viewstudentsinsubjects`.`subjectName` AS `subjectName`, `viewstudentsinsubjects`.`abbr` AS `abbr`, `viewstudentsinsubjects`.`year` AS `year`, `tasks`.`taskId` AS `taskId`, `tasks`.`taskName` AS `taskName`, `tasks`.`pathToFile` AS `pathToFile`, `tasks`.`taskStartDate` AS `taskStartDate`, `tasks`.`taskEndDate` AS `taskEndDate` FROM (`viewstudentsinsubjects` join `tasks` on(`viewstudentsinsubjects`.`subjectId` = `tasks`.`subjectId`))  ;

-- --------------------------------------------------------

--
-- Structure for view `viewstudentsinsubjects`
--
DROP TABLE IF EXISTS `viewstudentsinsubjects`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewstudentsinsubjects`  AS SELECT `students`.`studentId` AS `studentId`, `students`.`firstName` AS `firstName`, `students`.`lastName` AS `lastName`, `students`.`username` AS `username`, `students`.`password` AS `password`, `students`.`token` AS `token`, `subjects`.`subjectId` AS `subjectId`, `subjects`.`subjectName` AS `subjectName`, `subjects`.`abbr` AS `abbr`, `subjects`.`year` AS `year` FROM ((`students` join `students_subjects` on(`students`.`studentId` = `students_subjects`.`studentId`)) join `subjects` on(`students_subjects`.`subjectId` = `subjects`.`subjectId`))  ;

-- --------------------------------------------------------

--
-- Structure for view `viewteachersinsubjects`
--
DROP TABLE IF EXISTS `viewteachersinsubjects`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewteachersinsubjects`  AS SELECT `teachers`.`teacherId` AS `teacherId`, `teachers`.`teacherFirstName` AS `teacherFirstName`, `teachers`.`teacherLastName` AS `teacherLastName`, `teachers`.`username` AS `username`, `teachers`.`password` AS `password`, `teachers`.`token` AS `token`, `subjects`.`subjectId` AS `subjectId`, `subjects`.`subjectName` AS `subjectName`, `subjects`.`abbr` AS `abbr`, `subjects`.`year` AS `year` FROM ((`teachers` join `teachers_subjects` on(`teachers`.`teacherId` = `teachers_subjects`.`teacherId`)) join `subjects` on(`teachers_subjects`.`subjectId` = `subjects`.`subjectId`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`gradeId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentId`);

--
-- Indexes for table `students_subjects`
--
ALTER TABLE `students_subjects`
  ADD PRIMARY KEY (`connectionId`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subjectId`);

--
-- Indexes for table `submitedtasks`
--
ALTER TABLE `submitedtasks`
  ADD PRIMARY KEY (`submitedTaskId`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`taskId`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacherId`);

--
-- Indexes for table `teachers_subjects`
--
ALTER TABLE `teachers_subjects`
  ADD PRIMARY KEY (`connectionTSId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `gradeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `studentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `students_subjects`
--
ALTER TABLE `students_subjects`
  MODIFY `connectionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subjectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `submitedtasks`
--
ALTER TABLE `submitedtasks`
  MODIFY `submitedTaskId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `taskId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacherId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `teachers_subjects`
--
ALTER TABLE `teachers_subjects`
  MODIFY `connectionTSId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
