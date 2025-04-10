-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2025 at 09:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schooldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `year_group` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `teacher_id`, `year_group`) VALUES
(1, 24, 'Reception Year'),
(2, 23, 'Year 1'),
(3, 20, 'Year 2'),
(4, 19, 'Year 3'),
(5, 17, 'Year 4'),
(6, 18, 'Year 5'),
(7, 16, 'Year 6');

-- --------------------------------------------------------

--
-- Table structure for table `guardian`
--

CREATE TABLE `guardian` (
  `guardian_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `relationship_to_student` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guardian`
--

INSERT INTO `guardian` (`guardian_id`, `student_id`, `first_name`, `last_name`, `relationship_to_student`, `address`, `phone_no`, `email`) VALUES
(1, 1, 'Sarah', 'Williams', 'Mother', '963 Birch Road, Leeds, LS22 11AA', '+44 123 4567891', 'sarah.williams@email.com'),
(2, 1, 'James', 'Williams', 'Father', '963 Birch Road, Leeds, LS22 11AA', '+44 123 4567891', 'james.williams@email.com'),
(3, 2, 'Emma', 'Johnson', 'Aunt', '246 Oak Crescent, Cambridge, CB14 22BB', '+44 234 5678901', 'emma.johnson@email.com'),
(4, 2, 'Mark', 'Johnson', 'Uncle', '246 Oak Crescent, Cambridge, CB14 22BB', '+44 234 5678902', 'mark.johnson@email.com'),
(5, 3, 'Rachel', 'Davis', 'Mother', '321 Pine Crescent, Oxford, OX21 33CC', '+44 345 6789012', 'rachel.davis@email.com'),
(6, 3, 'David', 'Davis', 'Father', '321 Pine Crescent, Oxford, OX21 33CC', '+44 345 6789013', 'david.davis@email.com'),
(7, 4, 'Linda', 'Smith', 'Mother', '963 Oak Crescent, Manchester, M13 44DD', '+44 456 7890123', 'linda.smith@email.com'),
(8, 4, 'John', 'Smith', 'Father', '963 Oak Crescent, Manchester, M13 44DD', '+44 456 7890124', 'john.smith@email.com'),
(9, 5, 'Olivia', 'Taylor', 'Grandmother', '246 Cedar Crescent, Glasgow, G12 55EE', '+44 567 8901234', 'olivia.taylor@email.com'),
(10, 5, 'Samuel', 'Taylor', 'Grandfather', '246 Cedar Crescent, Glasgow, G12 55EE', '+44 567 8901235', 'samuel.taylor@email.com'),
(11, 6, 'Nina', 'Walker', 'Mother', '159 Birch Road, Cambridge, CB17 66FF', '+44 678 9012345', 'nina.walker@email.com'),
(12, 6, 'Elliot', 'Walker', 'Father', '159 Birch Road, Cambridge, CB17 66FF', '+44 678 9012346', 'elliot.walker@email.com'),
(13, 7, 'Debbie', 'Morris', 'Aunt', '963 Pine Crescent, Oxford, OX18 77GG', '+44 789 0123456', 'debbie.morris@email.com'),
(14, 7, 'Patrick', 'Morris', 'Uncle', '963 Pine Crescent, Oxford, OX18 77GG', '+44 789 0123457', 'patrick.morris@email.com'),
(15, 8, 'Laura', 'Evans', 'Mother', '321 Cedar Lane, Cambridge, CB20 88HH', '+44 890 1234567', 'laura.evans@email.com'),
(16, 8, 'Richard', 'Evans', 'Father', '321 Cedar Lane, Cambridge, CB20 88HH', '+44 890 1234568', 'richard.evans@email.com'),
(17, 9, 'Sophie', 'Roberts', 'Mother', '246 Oak Crescent, Oxford, OX19 99II', '+44 901 2345678', 'sophie.roberts@email.com'),
(18, 9, 'Martin', 'Roberts', 'Father', '246 Oak Crescent, Oxford, OX19 99II', '+44 901 2345679', 'martin.roberts@email.com'),
(19, 10, 'Kimberly', 'Johnson', 'Aunt', '963 Cedar Crescent, Leeds, LS30 10JJ', '+44 012 3456789', 'kimberly.johnson@email.com'),
(20, 10, 'Aaron', 'Johnson', 'Uncle', '963 Cedar Crescent, Leeds, LS30 10JJ', '+44 012 3456790', 'aaron.johnson@email.com'),
(21, 11, 'Julie', 'Harrison', 'Mother', '246 Pine Crescent, Manchester, M21 11KK', '+44 123 4567892', 'julie.harrison@email.com'),
(22, 11, 'Bradley', 'Harrison', 'Father', '246 Pine Crescent, Manchester, M21 11KK', '+44 123 4567893', 'bradley.harrison@email.com'),
(23, 12, 'Nancy', 'Carter', 'Mother', '963 Oak Crescent, Glasgow, G13 12LL', '+44 234 5678903', 'nancy.carter@email.com'),
(24, 12, 'Edward', 'Carter', 'Father', '963 Oak Crescent, Glasgow, G13 12LL', '+44 234 5678904', 'edward.carter@email.com'),
(25, 13, 'Fiona', 'King', 'Aunt', '246 Birch Crescent, Oxford, OX20 13MM', '+44 345 6789014', 'fiona.king@email.com'),
(26, 13, 'Gary', 'King', 'Uncle', '246 Birch Crescent, Oxford, OX20 13MM', '+44 345 6789015', 'gary.king@email.com'),
(27, 14, 'Denise', 'Owen', 'Mother', '963 Pine Crescent, Cambridge, CB21 14NN', '+44 456 7890125', 'denise.owen@email.com'),
(28, 14, 'Simon', 'Owen', 'Father', '963 Pine Crescent, Cambridge, CB21 14NN', '+44 456 7890126', 'simon.owen@email.com'),
(29, 15, 'Heather', 'Martin', 'Grandmother', '321 Cedar Crescent, Oxford, OX22 15OO', '+44 567 8901236', 'heather.martin@email.com'),
(30, 15, 'Albert', 'Martin', 'Grandfather', '321 Cedar Crescent, Oxford, OX22 15OO', '+44 567 8901237', 'albert.martin@email.com'),
(31, 16, 'Angela', 'Wood', 'Mother', '246 Oak Crescent, Leeds, LS31 16PP', '+44 678 9012347', 'angela.wood@email.com'),
(32, 16, 'William', 'Wood', 'Father', '246 Oak Crescent, Leeds, LS31 16PP', '+44 678 9012348', 'william.wood@email.com'),
(33, 17, 'Leanne', 'Taylor', 'Aunt', '963 Birch Crescent, Cambridge, CB23 17QQ', '+44 789 0123458', 'leanne.taylor@email.com'),
(34, 17, 'Darren', 'Taylor', 'Uncle', '963 Birch Crescent, Cambridge, CB23 17QQ', '+44 789 0123459', 'darren.taylor@email.com'),
(35, 18, 'Cheryl', 'Hughes', 'Mother', '246 Cedar Crescent, Oxford, OX25 18RR', '+44 890 1234569', 'cheryl.hughes@email.com'),
(36, 18, 'Paul', 'Hughes', 'Father', '246 Cedar Crescent, Oxford, OX25 18RR', '+44 890 1234570', 'paul.hughes@email.com'),
(37, 19, 'Janet', 'Adams', 'Aunt', '963 Oak Crescent, Oxford, OX27 19SS', '+44 901 2345670', 'janet.adams@email.com'),
(38, 19, 'Graham', 'Adams', 'Uncle', '963 Oak Crescent, Oxford, OX27 19SS', '+44 901 2345671', 'graham.adams@email.com'),
(39, 20, 'Diana', 'Harrison', 'Mother', '321 Pine Crescent, Oxford, OX28 20TT', '+44 012 3456780', 'diana.harrison@email.com'),
(40, 20, 'Edward', 'Harrison', 'Father', '321 Pine Crescent, Oxford, OX28 20TT', '+44 012 3456781', 'edward.harrison@email.com'),
(41, 21, 'Amanda', 'Lewis', 'Mother', '246 Birch Road, Cambridge, CB29 21UU', '+44 123 4567894', 'amanda.lewis@email.com'),
(42, 21, 'Kevin', 'Lewis', 'Father', '246 Birch Road, Cambridge, CB29 21UU', '+44 123 4567895', 'kevin.lewis@email.com'),
(43, 22, 'Sally', 'Morgan', 'Aunt', '963 Cedar Crescent, Oxford, OX30 22VV', '+44 234 5678905', 'sally.morgan@email.com'),
(44, 22, 'Liam', 'Morgan', 'Uncle', '963 Cedar Crescent, Oxford, OX30 22VV', '+44 234 5678906', 'liam.morgan@email.com'),
(45, 23, 'Patricia', 'Clark', 'Mother', '321 Oak Crescent, Cambridge, CB31 23WW', '+44 345 6789016', 'patricia.clark@email.com'),
(46, 23, 'Simon', 'Clark', 'Father', '321 Oak Crescent, Cambridge, CB31 23WW', '+44 345 6789017', 'simon.clark@email.com'),
(47, 24, 'Frances', 'Wright', 'Mother', '246 Pine Crescent, Oxford, OX32 24XX', '+44 456 7890127', 'frances.wright@email.com'),
(48, 24, 'Matthew', 'Wright', 'Father', '246 Pine Crescent, Oxford, OX32 24XX', '+44 456 7890128', 'matthew.wright@email.com'),
(49, 25, 'Sophia', 'King', 'Aunt', '963 Birch Crescent, Leeds, LS34 25YY', '+44 567 8901238', 'sophia.king@email.com'),
(50, 25, 'Charlie', 'King', 'Uncle', '963 Birch Crescent, Leeds, LS34 25YY', '+44 567 8901239', 'charlie.king@email.com'),
(51, 26, 'Hannah', 'Green', 'Mother', '321 Cedar Crescent, Oxford, OX33 26ZZ', '+44 678 9012349', 'hannah.green@email.com'),
(52, 26, 'William', 'Green', 'Father', '321 Cedar Crescent, Oxford, OX33 26ZZ', '+44 678 9012350', 'william.green@email.com'),
(53, 27, 'Samantha', 'Scott', 'Aunt', '963 Pine Crescent, Cambridge, CB34 27AA', '+44 789 0123460', 'samantha.scott@email.com'),
(54, 27, 'Jordan', 'Scott', 'Uncle', '963 Pine Crescent, Cambridge, CB34 27AA', '+44 789 0123461', 'jordan.scott@email.com'),
(55, 28, 'Georgia', 'Mitchell', 'Mother', '246 Oak Crescent, Oxford, OX35 28BB', '+44 890 1234571', 'georgia.mitchell@email.com'),
(56, 28, 'Arthur', 'Mitchell', 'Father', '246 Oak Crescent, Oxford, OX35 28BB', '+44 890 1234572', 'arthur.mitchell@email.com'),
(57, 29, 'Eva', 'Davis', 'Mother', '963 Cedar Crescent, Leeds, LS36 29CC', '+44 901 2345672', 'eva.davis@email.com'),
(58, 29, 'Jack', 'Davis', 'Father', '963 Cedar Crescent, Leeds, LS36 29CC', '+44 901 2345673', 'jack.davis@email.com'),
(59, 30, 'Marie', 'Adams', 'Grandmother', '321 Birch Crescent, Oxford, OX37 30DD', '+44 012 3456782', 'marie.adams@email.com'),
(60, 30, 'George', 'Adams', 'Grandfather', '321 Birch Crescent, Oxford, OX37 30DD', '+44 012 3456783', 'george.adams@email.com'),
(61, 31, 'Isabel', 'Jackson', 'Mother', '246 Oak Crescent, Cambridge, CB38 31EE', '+44 123 4567896', 'isabel.jackson@email.com'),
(62, 31, 'Sebastian', 'Jackson', 'Father', '246 Oak Crescent, Cambridge, CB38 31EE', '+44 123 4567897', 'sebastian.jackson@email.com'),
(63, 32, 'Charlotte', 'Nelson', 'Aunt', '963 Pine Crescent, Oxford, OX39 32FF', '+44 234 5678907', 'charlotte.nelson@email.com'),
(64, 32, 'Thomas', 'Nelson', 'Uncle', '963 Pine Crescent, Oxford, OX39 32FF', '+44 234 5678908', 'thomas.nelson@email.com'),
(65, 33, 'Victoria', 'Evans', 'Mother', '321 Cedar Crescent, Cambridge, CB40 33GG', '+44 345 6789018', 'victoria.evans@email.com'),
(66, 33, 'Edgar', 'Evans', 'Father', '321 Cedar Crescent, Cambridge, CB40 33GG', '+44 345 6789019', 'edgar.evans@email.com'),
(67, 34, 'Benjamin', 'Roberts', 'Aunt', '963 Birch Crescent, Oxford, OX41 34HH', '+44 456 7890129', 'benjamin.roberts@email.com'),
(68, 34, 'Natalie', 'Roberts', 'Uncle', '963 Birch Crescent, Oxford, OX41 34HH', '+44 456 7890130', 'natalie.roberts@email.com'),
(69, 35, 'Christine', 'Phillips', 'Mother', '246 Pine Crescent, Oxford, OX42 35II', '+44 567 8901230', 'christine.phillips@email.com'),
(70, 35, 'Albert', 'Phillips', 'Father', '246 Pine Crescent, Oxford, OX42 35II', '+44 567 8901231', 'albert.phillips@email.com'),
(71, 36, 'Megan', 'Clark', 'Aunt', '963 Oak Crescent, Cambridge, CB43 36JJ', '+44 678 9012351', 'megan.clark@email.com'),
(72, 36, 'Richard', 'Clark', 'Uncle', '963 Oak Crescent, Cambridge, CB43 36JJ', '+44 678 9012352', 'richard.clark@email.com'),
(73, 37, 'Stephanie', 'Reed', 'Mother', '246 Cedar Crescent, Oxford, OX44 37KK', '+44 789 0123462', 'stephanie.reed@email.com'),
(74, 37, 'Jason', 'Reed', 'Father', '246 Cedar Crescent, Oxford, OX44 37KK', '+44 789 0123463', 'jason.reed@email.com'),
(75, 38, 'Sandra', 'Morris', 'Grandmother', '321 Birch Crescent, Leeds, LS47 38LL', '+44 890 1234573', 'sandra.morris@email.com'),
(76, 38, 'Victor', 'Morris', 'Grandfather', '321 Birch Crescent, Leeds, LS47 38LL', '+44 890 1234574', 'victor.morris@email.com'),
(77, 39, 'Emma', 'Harris', 'Mother', '963 Oak Crescent, Leeds, LS48 39MM', '+44 901 2345674', 'emma.harris@email.com'),
(78, 39, 'John', 'Harris', 'Father', '963 Oak Crescent, Leeds, LS48 39MM', '+44 901 2345675', 'john.harris@email.com'),
(79, 40, 'Olivia', 'Young', 'Aunt', '246 Birch Crescent, Oxford, OX49 40NN', '+44 012 3456784', 'olivia.young@email.com'),
(80, 40, 'Daniel', 'Young', 'Uncle', '246 Birch Crescent, Oxford, OX49 40NN', '+44 012 3456785', 'daniel.young@email.com'),
(81, 41, 'Lucas', 'King', 'Father', '321 Pine Crescent, Cambridge, CB50 41OO', '+44 123 4567898', 'lucas.king@email.com'),
(82, 41, 'Sophia', 'King', 'Mother', '321 Pine Crescent, Cambridge, CB50 41OO', '+44 123 4567899', 'sophia.king@email.com'),
(83, 42, 'Henry', 'Miller', 'Father', '963 Cedar Crescent, Oxford, OX51 42PP', '+44 234 5678910', 'henry.miller@email.com'),
(84, 42, 'Isabel', 'Miller', 'Mother', '963 Cedar Crescent, Oxford, OX51 42PP', '+44 234 5678911', 'isabel.miller@email.com'),
(85, 43, 'Ella', 'Dunn', 'Mother', '321 Birch Crescent, Cambridge, CB52 43QQ', '+44 345 6789020', 'ella.dunn@email.com'),
(86, 43, 'Patrick', 'Dunn', 'Father', '321 Birch Crescent, Cambridge, CB52 43QQ', '+44 345 6789021', 'patrick.dunn@email.com'),
(87, 44, 'Amelia', 'Scott', 'Mother', '246 Pine Crescent, Oxford, OX53 44RR', '+44 456 7890131', 'amelia.scott@email.com'),
(88, 44, 'David', 'Scott', 'Father', '246 Pine Crescent, Oxford, OX53 44RR', '+44 456 7890132', 'david.scott@email.com'),
(89, 45, 'Nathan', 'Anderson', 'Grandfather', '963 Oak Crescent, Cambridge, CB54 45SS', '+44 567 8901233', 'nathan.anderson@email.com'),
(90, 45, 'Helen', 'Anderson', 'Grandmother', '963 Oak Crescent, Cambridge, CB54 45SS', '+44 567 8901234', 'helen.anderson@email.com'),
(91, 46, 'Charlie', 'Hughes', 'Father', '321 Pine Crescent, Oxford, OX55 46TT', '+44 678 9012353', 'charlie.hughes@email.com'),
(92, 46, 'Clara', 'Hughes', 'Mother', '321 Pine Crescent, Oxford, OX55 46TT', '+44 678 9012354', 'clara.hughes@email.com'),
(93, 47, 'Alice', 'Jackson', 'Aunt', '246 Oak Crescent, Cambridge, CB56 47UU', '+44 789 0123464', 'alice.jackson@email.com'),
(94, 47, 'Joshua', 'Jackson', 'Uncle', '246 Oak Crescent, Cambridge, CB56 47UU', '+44 789 0123465', 'joshua.jackson@email.com'),
(95, 48, 'Zoe', 'Graham', 'Mother', '963 Birch Crescent, Oxford, OX57 48VV', '+44 890 1234575', 'zoe.graham@email.com'),
(96, 48, 'David', 'Graham', 'Father', '963 Birch Crescent, Oxford, OX57 48VV', '+44 890 1234576', 'david.graham@email.com'),
(97, 49, 'Grace', 'Harris', 'Mother', '321 Cedar Crescent, Cambridge, CB58 49WW', '+44 901 2345676', 'grace.harris@email.com'),
(98, 49, 'Oscar', 'Harris', 'Father', '321 Cedar Crescent, Cambridge, CB58 49WW', '+44 901 2345677', 'oscar.harris@email.com'),
(99, 50, 'Henry', 'Baker', 'Father', '963 Pine Crescent, Oxford, OX59 50XX', '+44 012 3456786', 'henry.baker@email.com'),
(100, 50, 'Lillian', 'Baker', 'Mother', '963 Pine Crescent, Oxford, OX59 50XX', '+44 012 3456787', 'lillian.baker@email.com'),
(101, 51, 'Samuel', 'Nelson', 'Grandfather', '246 Birch Crescent, Leeds, LS60 51YY', '+44 123 4567900', 'samuel.nelson@email.com'),
(102, 51, 'Emma', 'Nelson', 'Grandmother', '246 Birch Crescent, Leeds, LS60 51YY', '+44 123 4567901', 'emma.nelson@email.com'),
(103, 52, 'Logan', 'Green', 'Father', '963 Cedar Crescent, Oxford, OX61 52ZZ', '+44 234 5678912', 'logan.green@email.com'),
(104, 52, 'Maya', 'Green', 'Mother', '963 Cedar Crescent, Oxford, OX61 52ZZ', '+44 234 5678913', 'maya.green@email.com'),
(105, 53, 'Freddie', 'Adams', 'Uncle', '321 Pine Crescent, Cambridge, CB62 53AA', '+44 345 6789022', 'freddie.adams@email.com'),
(106, 53, 'Jenna', 'Adams', 'Aunt', '321 Pine Crescent, Cambridge, CB62 53AA', '+44 345 6789023', 'jenna.adams@email.com'),
(107, 54, 'Oscar', 'Graham', 'Father', '963 Birch Crescent, Oxford, OX63 54BB', '+44 456 7890133', 'oscar.graham@email.com'),
(108, 54, 'Eva', 'Graham', 'Mother', '963 Birch Crescent, Oxford, OX63 54BB', '+44 456 7890134', 'eva.graham@email.com'),
(109, 55, 'Harry', 'Hughes', 'Father', '246 Oak Crescent, Cambridge, CB64 55CC', '+44 567 8901235', 'harry.hughes@email.com'),
(110, 55, 'Margaret', 'Hughes', 'Mother', '246 Oak Crescent, Cambridge, CB64 55CC', '+44 567 8901236', 'margaret.hughes@email.com'),
(111, 56, 'George', 'Miller', 'Father', '321 Cedar Crescent, Cambridge, CB65 56DD', '+44 678 9012345', 'george.miller@email.com'),
(112, 56, 'Hannah', 'Miller', 'Mother', '321 Cedar Crescent, Cambridge, CB65 56DD', '+44 678 9012346', 'hannah.miller@email.com'),
(113, 57, 'Lucas', 'Scott', 'Father', '963 Oak Crescent, Oxford, OX66 57EE', '+44 789 0123467', 'lucas.scott@email.com'),
(114, 57, 'Emily', 'Scott', 'Mother', '963 Oak Crescent, Oxford, OX66 57EE', '+44 789 0123468', 'emily.scott@email.com'),
(115, 58, 'Ethan', 'Jackson', 'Uncle', '246 Pine Crescent, Leeds, LS67 58FF', '+44 890 1234577', 'ethan.jackson@email.com'),
(116, 58, 'Megan', 'Jackson', 'Aunt', '246 Pine Crescent, Leeds, LS67 58FF', '+44 890 1234578', 'megan.jackson@email.com'),
(117, 59, 'Olivia', 'Baker', 'Mother', '963 Cedar Crescent, Oxford, OX69 59GG', '+44 901 2345678', 'olivia.baker@email.com'),
(118, 59, 'Adam', 'Baker', 'Father', '963 Cedar Crescent, Oxford, OX69 59GG', '+44 901 2345679', 'adam.baker@email.com'),
(119, 60, 'Ava', 'Hughes', 'Mother', '321 Pine Crescent, Cambridge, CB70 60HH', '+44 123 4567902', 'ava.hughes@email.com'),
(120, 60, 'Daniel', 'Hughes', 'Father', '321 Pine Crescent, Cambridge, CB70 60HH', '+44 123 4567903', 'daniel.hughes@email.com'),
(121, 61, 'Charlotte', 'Green', 'Mother', '963 Oak Crescent, Cambridge, CB71 61II', '+44 234 5678914', 'charlotte.green@email.com'),
(122, 61, 'James', 'Green', 'Father', '963 Oak Crescent, Cambridge, CB71 61II', '+44 234 5678915', 'james.green@email.com'),
(123, 62, 'Henry', 'Evans', 'Father', '246 Birch Crescent, Leeds, LS72 62JJ', '+44 345 6789024', 'henry.evans@email.com'),
(124, 62, 'Sarah', 'Evans', 'Mother', '246 Birch Crescent, Leeds, LS72 62JJ', '+44 345 6789025', 'sarah.evans@email.com'),
(125, 63, 'Lily', 'Wright', 'Mother', '321 Cedar Crescent, Cambridge, CB73 63KK', '+44 456 7890135', 'lily.wright@email.com'),
(126, 63, 'Michael', 'Wright', 'Father', '321 Cedar Crescent, Cambridge, CB73 63KK', '+44 456 7890136', 'michael.wright@email.com'),
(127, 64, 'Jack', 'Taylor', 'Father', '963 Oak Crescent, Oxford, OX74 64LL', '+44 567 8901237', 'jack.taylor@email.com'),
(128, 64, 'Emma', 'Taylor', 'Mother', '963 Oak Crescent, Oxford, OX74 64LL', '+44 567 8901238', 'emma.taylor@email.com'),
(129, 65, 'Benjamin', 'Moore', 'Father', '246 Pine Crescent, Cambridge, CB75 65MM', '+44 678 9012347', 'benjamin.moore@email.com'),
(130, 65, 'Charlotte', 'Moore', 'Mother', '246 Pine Crescent, Cambridge, CB75 65MM', '+44 678 9012348', 'charlotte.moore@email.com'),
(131, 66, 'Matthew', 'White', 'Father', '963 Birch Crescent, Oxford, OX76 66NN', '+44 789 0123469', 'matthew.white@email.com'),
(132, 66, 'Sophia', 'White', 'Mother', '963 Birch Crescent, Oxford, OX76 66NN', '+44 789 0123470', 'sophia.white@email.com'),
(133, 67, 'Noah', 'Davis', 'Father', '321 Cedar Crescent, Cambridge, CB77 67OO', '+44 890 1234579', 'noah.davis@email.com'),
(134, 67, 'Olivia', 'Davis', 'Mother', '321 Cedar Crescent, Cambridge, CB77 67OO', '+44 890 1234580', 'olivia.davis@email.com'),
(135, 68, 'Isabella', 'Harris', 'Mother', '246 Birch Crescent, Leeds, LS78 68PP', '+44 901 2345680', 'isabella.harris@email.com'),
(136, 68, 'Elijah', 'Harris', 'Father', '246 Birch Crescent, Leeds, LS78 68PP', '+44 901 2345681', 'elijah.harris@email.com'),
(137, 69, 'Ethan', 'Thompson', 'Father', '963 Oak Crescent, Oxford, OX79 69QQ', '+44 012 3456788', 'ethan.thompson@email.com'),
(138, 69, 'Grace', 'Thompson', 'Mother', '963 Oak Crescent, Oxford, OX79 69QQ', '+44 012 3456789', 'grace.thompson@email.com'),
(139, 70, 'Aiden', 'Martin', 'Father', '321 Pine Crescent, Cambridge, CB80 70RR', '+44 123 4567904', 'aiden.martin@email.com'),
(140, 70, 'Emma', 'Martin', 'Mother', '321 Pine Crescent, Cambridge, CB80 70RR', '+44 123 4567905', 'emma.martin@email.com'),
(141, 71, 'Oliver', 'King', 'Father', '963 Birch Crescent, Oxford, OX81 71SS', '+44 234 5678919', 'oliver.king@email.com'),
(142, 71, 'Amelia', 'King', 'Mother', '963 Birch Crescent, Oxford, OX81 71SS', '+44 234 5678920', 'amelia.king@email.com'),
(143, 72, 'William', 'Lopez', 'Father', '246 Cedar Crescent, Cambridge, CB82 72TT', '+44 345 6789026', 'william.lopez@email.com'),
(144, 72, 'Sophia', 'Lopez', 'Mother', '246 Cedar Crescent, Cambridge, CB82 72TT', '+44 345 6789027', 'sophia.lopez@email.com'),
(145, 73, 'Liam', 'Allen', 'Father', '963 Pine Crescent, Leeds, LS83 73UU', '+44 456 7890137', 'liam.allen@email.com'),
(146, 73, 'Isla', 'Allen', 'Mother', '963 Pine Crescent, Leeds, LS83 73UU', '+44 456 7890138', 'isla.allen@email.com'),
(147, 74, 'Charlotte', 'Evans', 'Mother', '246 Oak Crescent, Oxford, OX84 74VV', '+44 567 8901239', 'charlotte.evans@email.com'),
(148, 74, 'Jack', 'Evans', 'Father', '246 Oak Crescent, Oxford, OX84 74VV', '+44 567 8901240', 'jack.evans@email.com'),
(149, 75, 'Harrison', 'Dunn', 'Father', '963 Cedar Crescent, Cambridge, CB85 75WW', '+44 678 9012349', 'harrison.dunn@email.com'),
(150, 75, 'Madison', 'Dunn', 'Mother', '963 Cedar Crescent, Cambridge, CB85 75WW', '+44 678 9012350', 'madison.dunn@email.com'),
(151, 76, 'Harper', 'Mitchell', 'Mother', '246 Birch Crescent, Oxford, OX86 76XX', '+44 789 0123471', 'harper.mitchell@email.com'),
(152, 76, 'Daniel', 'Mitchell', 'Father', '246 Birch Crescent, Oxford, OX86 76XX', '+44 789 0123472', 'daniel.mitchell@email.com'),
(153, 77, 'Zachary', 'Roberts', 'Father', '321 Pine Crescent, Cambridge, CB87 77YY', '+44 890 1234581', 'zachary.roberts@email.com'),
(154, 77, 'Eva', 'Roberts', 'Mother', '321 Pine Crescent, Cambridge, CB87 77YY', '+44 890 1234582', 'eva.roberts@email.com'),
(155, 78, 'Nina', 'Wilson', 'Mother', '963 Oak Crescent, Leeds, LS88 78ZZ', '+44 901 2345682', 'nina.wilson@email.com'),
(156, 78, 'Joshua', 'Wilson', 'Father', '963 Oak Crescent, Leeds, LS88 78ZZ', '+44 901 2345683', 'joshua.wilson@email.com'),
(157, 79, 'Emily', 'Brown', 'Mother', '246 Cedar Crescent, Oxford, OX89 79AA', '+44 012 3456790', 'emily.brown@email.com'),
(158, 79, 'Michael', 'Brown', 'Father', '246 Cedar Crescent, Oxford, OX89 79AA', '+44 012 3456791', 'michael.brown@email.com'),
(159, 80, 'Jack', 'Smith', 'Father', '321 Oak Crescent, Cambridge, CB90 80BB', '+44 123 4567906', 'jack.smith@email.com'),
(160, 80, 'Olivia', 'Smith', 'Mother', '321 Oak Crescent, Cambridge, CB90 80BB', '+44 123 4567907', 'olivia.smith@email.com'),
(161, 81, 'Riley', 'Taylor', 'Father', '963 Birch Crescent, Oxford, OX91 81CC', '+44 234 5678921', 'riley.taylor@email.com'),
(162, 81, 'Sophia', 'Taylor', 'Mother', '963 Birch Crescent, Oxford, OX91 81CC', '+44 234 5678922', 'sophia.taylor@email.com'),
(163, 82, 'Holly', 'White', 'Mother', '246 Cedar Crescent, Cambridge, CB92 82DD', '+44 345 6789028', 'holly.white@email.com'),
(164, 82, 'Jacob', 'White', 'Father', '246 Cedar Crescent, Cambridge, CB92 82DD', '+44 345 6789029', 'jacob.white@email.com'),
(165, 83, 'Mason', 'King', 'Father', '963 Oak Crescent, Oxford, OX93 83EE', '+44 456 7890139', 'mason.king@email.com'),
(166, 83, 'Ava', 'King', 'Mother', '963 Oak Crescent, Oxford, OX93 83EE', '+44 456 7890140', 'ava.king@email.com'),
(167, 84, 'James', 'Hughes', 'Father', '246 Pine Crescent, Cambridge, CB94 84FF', '+44 567 8901241', 'james.hughes@email.com'),
(168, 84, 'Charlotte', 'Hughes', 'Mother', '246 Pine Crescent, Cambridge, CB94 84FF', '+44 567 8901242', 'charlotte.hughes@email.com'),
(169, 85, 'Nina', 'Evans', 'Mother', '963 Pine Crescent, Oxford, OX94 85GG', '+44 678 9012351', 'nina.evans@email.com'),
(170, 85, 'Zachary', 'Evans', 'Father', '963 Pine Crescent, Oxford, OX94 85GG', '+44 678 9012352', 'zachary.evans@email.com'),
(171, 86, 'Lily', 'Robinson', 'Mother', '246 Birch Crescent, Cambridge, CB95 86HH', '+44 789 0123473', 'lily.robinson@email.com'),
(172, 86, 'Ethan', 'Robinson', 'Father', '246 Birch Crescent, Cambridge, CB95 86HH', '+44 789 0123474', 'ethan.robinson@email.com'),
(173, 87, 'George', 'Martinez', 'Father', '963 Oak Crescent, Oxford, OX95 87II', '+44 890 1234583', 'george.martinez@email.com'),
(174, 87, 'Ava', 'Martinez', 'Mother', '963 Oak Crescent, Oxford, OX95 87II', '+44 890 1234584', 'ava.martinez@email.com'),
(175, 88, 'Henry', 'Parker', 'Father', '321 Cedar Crescent, Cambridge, CB96 88JJ', '+44 901 2345684', 'henry.parker@email.com'),
(176, 88, 'Grace', 'Parker', 'Mother', '321 Cedar Crescent, Cambridge, CB96 88JJ', '+44 901 2345685', 'grace.parker@email.com'),
(177, 89, 'Leo', 'Garcia', 'Father', '963 Cedar Crescent, Oxford, OX96 89KK', '+44 012 3456792', 'leo.garcia@email.com'),
(178, 89, 'Isabella', 'Garcia', 'Mother', '963 Cedar Crescent, Oxford, OX96 89KK', '+44 012 3456793', 'isabella.garcia@email.com'),
(179, 90, 'Lucas', 'Wilson', 'Father', '246 Pine Crescent, Cambridge, CB97 90LL', '+44 123 4567910', 'lucas.wilson@email.com'),
(180, 90, 'Ella', 'Wilson', 'Mother', '246 Pine Crescent, Cambridge, CB97 90LL', '+44 123 4567911', 'ella.wilson@email.com'),
(181, 91, 'Sebastian', 'Taylor', 'Father', '963 Birch Crescent, Oxford, OX97 91MM', '+44 234 5678923', 'sebastian.taylor@email.com'),
(182, 91, 'Charlotte', 'Taylor', 'Mother', '963 Birch Crescent, Oxford, OX97 91MM', '+44 234 5678924', 'charlotte.taylor@email.com'),
(183, 92, 'Mia', 'Harris', 'Mother', '246 Oak Crescent, Cambridge, CB98 92NN', '+44 345 6789030', 'mia.harris@email.com'),
(184, 92, 'Jack', 'Harris', 'Father', '246 Oak Crescent, Cambridge, CB98 92NN', '+44 345 6789031', 'jack.harris@email.com'),
(185, 93, 'Olivia', 'Nelson', 'Father', '963 Pine Crescent, Oxford, OX98 93OO', '+44 456 7890141', 'olivia.nelson@email.com'),
(186, 93, 'Sophia', 'Nelson', 'Mother', '963 Pine Crescent, Oxford, OX98 93OO', '+44 456 7890142', 'sophia.nelson@email.com'),
(187, 94, 'Benjamin', 'Scott', 'Father', '321 Birch Crescent, Cambridge, CB99 94PP', '+44 567 8901243', 'benjamin.scott@email.com'),
(188, 94, 'Amelia', 'Scott', 'Mother', '321 Birch Crescent, Cambridge, CB99 94PP', '+44 567 8901244', 'amelia.scott@email.com'),
(189, 95, 'James', 'Adams', 'Father', '963 Cedar Crescent, Oxford, OX99 95QQ', '+44 678 9012353', 'james.adams@email.com'),
(190, 95, 'Isla', 'Adams', 'Mother', '963 Cedar Crescent, Oxford, OX99 95QQ', '+44 678 9012354', 'isla.adams@email.com'),
(191, 96, 'Leo', 'Lee', 'Father', '246 Pine Crescent, Cambridge, CB100 96RR', '+44 789 0123475', 'leo.lee@email.com'),
(192, 96, 'Grace', 'Lee', 'Mother', '246 Pine Crescent, Cambridge, CB100 96RR', '+44 789 0123476', 'grace.lee@email.com'),
(193, 97, 'Oscar', 'Moore', 'Father', '963 Oak Crescent, Oxford, OX100 97SS', '+44 890 1234585', 'oscar.moore@email.com'),
(194, 97, 'Lily', 'Moore', 'Mother', '963 Oak Crescent, Oxford, OX100 97SS', '+44 890 1234586', 'lily.moore@email.com'),
(195, 98, 'Mason', 'Walker', 'Father', '321 Birch Crescent, Cambridge, CB101 98TT', '+44 901 2345686', 'mason.walker@email.com'),
(196, 98, 'Chloe', 'Walker', 'Mother', '321 Birch Crescent, Cambridge, CB101 98TT', '+44 901 2345687', 'chloe.walker@email.com'),
(197, 99, 'Elijah', 'Clark', 'Father', '963 Cedar Crescent, Oxford, OX101 99UU', '+44 012 3456794', 'elijah.clark@email.com'),
(198, 99, 'Ava', 'Clark', 'Mother', '963 Cedar Crescent, Oxford, OX101 99UU', '+44 012 3456795', 'ava.clark@email.com'),
(199, 100, 'Maya', 'Lee', 'Mother', '246 Oak Crescent, Cambridge, CB102 00VV', '+44 123 4567912', 'maya.lee@email.com'),
(200, 100, 'William', 'Lee', 'Father', '246 Oak Crescent, Cambridge, CB102 00VV', '+44 123 4567913', 'william.lee@email.com'),
(201, 101, 'Ethan', 'Young', 'Father', '963 Pine Crescent, Oxford, OX102 01WW', '+44 234 5678925', 'ethan.young@email.com'),
(202, 101, 'Megan', 'Young', 'Mother', '963 Pine Crescent, Oxford, OX102 01WW', '+44 234 5678926', 'megan.young@email.com'),
(203, 102, 'Mason', 'Roberts', 'Father', '321 Oak Crescent, Cambridge, CB103 02XX', '+44 345 6789032', 'mason.roberts@email.com'),
(204, 102, 'Sophia', 'Roberts', 'Mother', '321 Oak Crescent, Cambridge, CB103 02XX', '+44 345 6789033', 'sophia.roberts@email.com'),
(205, 103, 'Oliver', 'Green', 'Father', '246 Birch Crescent, Cambridge, CB104 03YY', '+44 456 7890143', 'oliver.green@email.com'),
(206, 103, 'Isla', 'Green', 'Mother', '246 Birch Crescent, Cambridge, CB104 03YY', '+44 456 7890144', 'isla.green@email.com'),
(207, 104, 'Samuel', 'Walker', 'Father', '963 Cedar Crescent, Oxford, OX104 04ZZ', '+44 567 8901245', 'samuel.walker@email.com'),
(208, 104, 'Charlotte', 'Walker', 'Mother', '963 Cedar Crescent, Oxford, OX104 04ZZ', '+44 567 8901246', 'charlotte.walker@email.com'),
(209, 105, 'James', 'Parker', 'Father', '321 Pine Crescent, Cambridge, CB105 05AA', '+44 678 9012355', 'james.parker@email.com'),
(210, 105, 'Emily', 'Parker', 'Mother', '321 Pine Crescent, Cambridge, CB105 05AA', '+44 678 9012356', 'emily.parker@email.com'),
(211, 106, 'Jack', 'Davis', 'Father', '246 Cedar Crescent, Oxford, OX105 06BB', '+44 789 0123477', 'jack.davis@email.com'),
(212, 106, 'Lily', 'Davis', 'Mother', '246 Cedar Crescent, Oxford, OX105 06BB', '+44 789 0123478', 'lily.davis@email.com'),
(213, 107, 'Daniel', 'Wilson', 'Father', '963 Birch Crescent, Cambridge, CB106 07CC', '+44 890 1234587', 'daniel.wilson@email.com'),
(214, 107, 'Grace', 'Wilson', 'Mother', '963 Birch Crescent, Cambridge, CB106 07CC', '+44 890 1234588', 'grace.wilson@email.com'),
(215, 108, 'Alexander', 'Martin', 'Father', '321 Oak Crescent, Oxford, OX106 08DD', '+44 901 2345688', 'alexander.martin@email.com'),
(216, 108, 'Charlotte', 'Martin', 'Mother', '321 Oak Crescent, Oxford, OX106 08DD', '+44 901 2345689', 'charlotte.martin@email.com'),
(217, 109, 'Oscar', 'Robinson', 'Father', '246 Pine Crescent, Cambridge, CB107 09EE', '+44 012 3456796', 'oscar.robinson@email.com'),
(218, 109, 'Sophia', 'Robinson', 'Mother', '246 Pine Crescent, Cambridge, CB107 09EE', '+44 012 3456797', 'sophia.robinson@email.com'),
(219, 110, 'William', 'Lee', 'Father', '963 Oak Crescent, Oxford, OX107 10FF', '+44 123 4567914', 'william.lee@email.com'),
(220, 110, 'Megan', 'Lee', 'Mother', '963 Oak Crescent, Oxford, OX107 10FF', '+44 123 4567915', 'megan.lee@email.com'),
(221, 111, 'Ethan', 'King', 'Father', '321 Cedar Crescent, Cambridge, CB108 11GG', '+44 234 5678927', 'ethan.king@email.com'),
(222, 111, 'Olivia', 'King', 'Mother', '321 Cedar Crescent, Cambridge, CB108 11GG', '+44 234 5678928', 'olivia.king@email.com'),
(223, 112, 'Sebastian', 'Moore', 'Father', '246 Birch Crescent, Oxford, OX108 12HH', '+44 345 6789034', 'sebastian.moore@email.com'),
(224, 112, 'Chloe', 'Moore', 'Mother', '246 Birch Crescent, Oxford, OX108 12HH', '+44 345 6789035', 'chloe.moore@email.com'),
(225, 113, 'Lucas', 'Green', 'Father', '963 Cedar Crescent, Cambridge, CB109 13II', '+44 456 7890145', 'lucas.green@email.com'),
(226, 113, 'Grace', 'Green', 'Mother', '963 Cedar Crescent, Cambridge, CB109 13II', '+44 456 7890146', 'grace.green@email.com'),
(227, 114, 'Max', 'Patterson', 'Father', '321 Oak Crescent, Oxford, OX109 14JJ', '+44 567 8901247', 'max.patterson@email.com'),
(228, 114, 'Amelia', 'Patterson', 'Mother', '321 Oak Crescent, Oxford, OX109 14JJ', '+44 567 8901248', 'amelia.patterson@email.com'),
(229, 115, 'Lucas', 'Johnson', 'Father', '246 Birch Crescent, Cambridge, CB110 15KK', '+44 678 9012357', 'lucas.johnson@email.com'),
(230, 115, 'Isla', 'Johnson', 'Mother', '246 Birch Crescent, Cambridge, CB110 15KK', '+44 678 9012358', 'isla.johnson@email.com'),
(231, 116, 'George', 'Taylor', 'Father', '963 Pine Crescent, Oxford, OX110 16LL', '+44 789 0123479', 'george.taylor@email.com'),
(232, 116, 'Olivia', 'Taylor', 'Mother', '963 Pine Crescent, Oxford, OX110 16LL', '+44 789 0123480', 'olivia.taylor@email.com'),
(233, 117, 'Henry', 'Harris', 'Father', '321 Cedar Crescent, Cambridge, CB111 17MM', '+44 890 1234589', 'henry.harris@email.com'),
(234, 117, 'Charlotte', 'Harris', 'Mother', '321 Cedar Crescent, Cambridge, CB111 17MM', '+44 890 1234590', 'charlotte.harris@email.com'),
(235, 118, 'Jacob', 'Lee', 'Father', '246 Pine Crescent, Oxford, OX111 18NN', '+44 901 2345690', 'jacob.lee@email.com'),
(236, 118, 'Ella', 'Lee', 'Mother', '246 Pine Crescent, Oxford, OX111 18NN', '+44 901 2345691', 'ella.lee@email.com'),
(237, 119, 'Matthew', 'Clark', 'Father', '963 Oak Crescent, Cambridge, CB112 19OO', '+44 012 3456804', 'matthew.clark@email.com'),
(238, 119, 'Sophia', 'Clark', 'Mother', '963 Oak Crescent, Cambridge, CB112 19OO', '+44 012 3456805', 'sophia.clark@email.com'),
(239, 120, 'Oliver', 'Scott', 'Father', '321 Birch Crescent, Oxford, OX112 20PP', '+44 123 4567916', 'oliver.scott@email.com'),
(240, 120, 'Amelia', 'Scott', 'Mother', '321 Birch Crescent, Oxford, OX112 20PP', '+44 123 4567917', 'amelia.scott@email.com'),
(241, 121, 'Benjamin', 'Adams', 'Father', '246 Cedar Crescent, Cambridge, CB113 21QQ', '+44 234 5678930', 'benjamin.adams@email.com'),
(242, 121, 'Isla', 'Adams', 'Mother', '246 Cedar Crescent, Cambridge, CB113 21QQ', '+44 234 5678931', 'isla.adams@email.com'),
(243, 122, 'William', 'Evans', 'Father', '963 Cedar Crescent, Oxford, OX113 22RR', '+44 345 6789036', 'william.evans@email.com'),
(244, 122, 'Sophia', 'Evans', 'Mother', '963 Cedar Crescent, Oxford, OX113 22RR', '+44 345 6789037', 'sophia.evans@email.com'),
(245, 123, 'Aiden', 'Wilson', 'Father', '321 Pine Crescent, Cambridge, CB114 23SS', '+44 456 7890147', 'aiden.wilson@email.com'),
(246, 123, 'Megan', 'Wilson', 'Mother', '321 Pine Crescent, Cambridge, CB114 23SS', '+44 456 7890148', 'megan.wilson@email.com'),
(247, 124, 'Matthew', 'Garcia', 'Father', '246 Oak Crescent, Oxford, OX114 24TT', '+44 567 8901249', 'matthew.garcia@email.com'),
(248, 124, 'Grace', 'Garcia', 'Mother', '246 Oak Crescent, Oxford, OX114 24TT', '+44 567 8901250', 'grace.garcia@email.com'),
(249, 125, 'Lucas', 'Martinez', 'Father', '963 Birch Crescent, Cambridge, CB115 25UU', '+44 678 9012359', 'lucas.martinez@email.com'),
(250, 125, 'Isla', 'Martinez', 'Mother', '963 Birch Crescent, Cambridge, CB115 25UU', '+44 678 9012360', 'isla.martinez@email.com'),
(251, 126, 'Oliver', 'Robinson', 'Father', '321 Oak Crescent, Oxford, OX115 26VV', '+44 789 0123481', 'oliver.robinson@email.com'),
(252, 126, 'Amelia', 'Robinson', 'Mother', '321 Oak Crescent, Oxford, OX115 26VV', '+44 789 0123482', 'amelia.robinson@email.com'),
(253, 127, 'Sebastian', 'Miller', 'Father', '246 Cedar Crescent, Cambridge, CB116 27WW', '+44 890 1234591', 'sebastian.miller@email.com'),
(254, 127, 'Chloe', 'Miller', 'Mother', '246 Cedar Crescent, Cambridge, CB116 27WW', '+44 890 1234592', 'chloe.miller@email.com'),
(255, 128, 'Ethan', 'Jackson', 'Father', '963 Pine Crescent, Oxford, OX116 28XX', '+44 901 2345692', 'ethan.jackson@email.com'),
(256, 128, 'Olivia', 'Jackson', 'Mother', '963 Pine Crescent, Oxford, OX116 28XX', '+44 901 2345693', 'olivia.jackson@email.com'),
(257, 129, 'James', 'Taylor', 'Father', '123 Oak Street, London, E1 2AB', '+44 712 3456789', 'james.taylor@email.com'),
(258, 129, 'Emily', 'Taylor', 'Mother', '123 Oak Street, London, E1 2AB', '+44 712 3456790', 'emily.taylor@email.com'),
(259, 130, 'John', 'White', 'Father', '456 Maple Avenue, London, W3 4CD', '+44 123 4567890', 'john.white@email.com'),
(260, 130, 'Sarah', 'White', 'Mother', '456 Maple Avenue, London, W3 4CD', '+44 123 4567891', 'sarah.white@email.com'),
(261, 131, 'Mark', 'Harris', 'Father', '789 Elm Street, London, N5 6EF', '+44 345 6789012', 'mark.harris@email.com'),
(262, 131, 'Olivia', 'Harris', 'Mother', '789 Elm Street, London, N5 6EF', '+44 345 6789013', 'olivia.harris@email.com'),
(263, 132, 'Matthew', 'Clark', 'Father', '321 Birch Street, London, SW7 8GH', '+44 456 7890123', 'matthew.clark@email.com'),
(264, 132, 'Sophia', 'Clark', 'Mother', '321 Birch Street, London, SW7 8GH', '+44 456 7890124', 'sophia.clark@email.com'),
(265, 133, 'William', 'Young', 'Father', '654 Pine Avenue, London, SW3 9HJ', '+44 567 8901234', 'william.young@email.com'),
(266, 133, 'Isla', 'Young', 'Mother', '654 Pine Avenue, London, SW3 9HJ', '+44 567 8901235', 'isla.young@email.com'),
(267, 134, 'Ethan', 'Lopez', 'Father', '987 Oak Drive, London, EC1 1KL', '+44 678 9012345', 'ethan.lopez@email.com'),
(268, 134, 'Mia', 'Lopez', 'Mother', '987 Oak Drive, London, EC1 1KL', '+44 678 9012346', 'mia.lopez@email.com'),
(269, 135, 'David', 'Miller', 'Father', '432 Cedar Lane, London, W2 3MN', '+44 789 0123456', 'david.miller@email.com'),
(270, 135, 'Emily', 'Miller', 'Mother', '432 Cedar Lane, London, W2 3MN', '+44 789 0123457', 'emily.miller@email.com'),
(271, 136, 'Liam', 'Jackson', 'Father', '246 Birch Road, London, SE4 5OP', '+44 890 1234567', 'liam.jackson@email.com'),
(272, 136, 'Sophia', 'Jackson', 'Mother', '246 Birch Road, London, SE4 5OP', '+44 890 1234568', 'sophia.jackson@email.com'),
(273, 137, 'Alexander', 'Rodriguez', 'Father', '135 Pine Road, London, E2 3RQ', '+44 901 2345678', 'alexander.rodriguez@email.com'),
(274, 137, 'Charlotte', 'Rodriguez', 'Mother', '135 Pine Road, London, E2 3RQ', '+44 901 2345679', 'charlotte.rodriguez@email.com'),
(275, 138, 'Benjamin', 'Martinez', 'Father', '678 Maple Lane, London, N8 7RS', '+44 123 4567892', 'benjamin.martinez@email.com'),
(276, 138, 'Isla', 'Martinez', 'Mother', '678 Maple Lane, London, N8 7RS', '+44 123 4567893', 'isla.martinez@email.com'),
(277, 139, 'Henry', 'Williams', 'Father', '987 Oak Avenue, London, SW5 9ST', '+44 234 5678901', 'henry.williams@email.com'),
(278, 139, 'Amelia', 'Williams', 'Mother', '987 Oak Avenue, London, SW5 9ST', '+44 234 5678902', 'amelia.williams@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `guardian_student_relationship`
--

CREATE TABLE `guardian_student_relationship` (
  `relationship_id` int(11) NOT NULL,
  `guardian_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `medical_information` text DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `class_id`, `first_name`, `last_name`, `age`, `address`, `medical_information`, `gender`) VALUES
(1, 1, 'Ava', 'Taylor', 5, '123 Oak Street, London, SW1A 1AA', 'Nut Allergy', 'Female'),
(2, 1, 'Oliver', 'Jones', 5, '456 Maple Road, Manchester, M1 2AA', 'Asthma', 'Male'),
(3, 2, 'Isla', 'Brown', 6, '789 Birch Lane, Birmingham, B1 2BB', 'None', 'Female'),
(4, 2, 'Jack', 'Miller', 6, '321 Pine Crescent, Leeds, LS1 1AA', 'None', 'Male'),
(5, 3, 'Sophia', 'Clark', 7, '654 Cedar Street, Edinburgh, EH1 2AB', 'None', 'Female'),
(6, 3, 'Jacob', 'Walker', 7, '987 Elm Drive, Glasgow, G1 2BC', 'None', 'Male'),
(7, 4, 'Olivia', 'Young', 8, '135 Willow Avenue, Bristol, BS1 1CC', 'None', 'Female'),
(8, 4, 'Ethan', 'Lewis', 8, '246 Ash Road, Liverpool, L1 3DD', 'None', 'Male'),
(9, 5, 'Charlotte', 'Evans', 9, '963 Oak Lane, Cambridge, CB1 2FF', 'None', 'Female'),
(10, 5, 'Leo', 'Martin', 9, '159 Cherry Street, Oxford, OX1 1EE', 'None', 'Male'),
(11, 6, 'George', 'Perez', 10, '321 Pine Crescent, Oxford, OX2 3BC', 'None', 'Male'),
(12, 6, 'Zoe', 'Walker', 10, '654 Cedar Drive, Cambridge, CB2 4DD', 'None', 'Female'),
(13, 7, 'Megan', 'Lee', 11, '963 Rose Avenue, Manchester, M3 4BB', 'None', 'Female'),
(14, 7, 'William', 'Scott', 10, '135 Willow Crescent, Oxford, OX3 6GG', 'None', 'Male'),
(15, 1, 'Ethan', 'Moore', 5, '963 Rose Crescent, Birmingham, B3 8KK', 'Gluten intolerance', 'Male'),
(16, 1, 'Maya', 'King', 5, '159 Cedar Road, Cambridge, CB2 4DD', 'None', 'Female'),
(17, 2, 'James', 'Adams', 6, '963 Pine Road, Glasgow, G4 1FF', 'None', 'Male'),
(18, 2, 'Amelia', 'Green', 6, '159 Oak Crescent, Leeds, LS6 2GG', 'None', 'Female'),
(19, 3, 'Oscar', 'Harris', 7, '321 Willow Road, London, SW7 3JJ', 'None', 'Male'),
(20, 3, 'Ruby', 'Jackson', 7, '246 Pine Crescent, Leeds, LS7 4JJ', 'Asthma', 'Female'),
(21, 4, 'Liam', 'Martin', 8, '654 Birch Avenue, Oxford, OX4 5KK', 'None', 'Male'),
(22, 4, 'Ella', 'Thompson', 8, '963 Maple Road, Manchester, M5 6LL', 'None', 'Female'),
(23, 5, 'Archer', 'Brown', 9, '159 Birch Crescent, Glasgow, G2 7MM', 'None', 'Male'),
(24, 5, 'Eloise', 'Taylor', 9, '246 Willow Road, Oxford, OX5 8NN', 'Allergy to nuts', 'Female'),
(25, 6, 'Mason', 'King', 10, '654 Oak Crescent, Cambridge, CB6 9OO', 'None', 'Male'),
(26, 6, 'Ella', 'Evans', 10, '963 Willow Crescent, Leeds, LS9 10PP', 'None', 'Female'),
(27, 7, 'Cameron', 'Hill', 11, '135 Pine Street, Birmingham, B7 11QQ', 'None', 'Male'),
(28, 7, 'Scarlett', 'Simmons', 11, '963 Oak Road, Manchester, M8 12RR', 'None', 'Female'),
(29, 1, 'Chloe', 'Davis', 5, '246 Rose Street, Leeds, LS8 13SS', 'None', 'Female'),
(30, 1, 'Luca', 'Jackson', 5, '321 Willow Avenue, Oxford, OX6 14TT', 'None', 'Male'),
(31, 2, 'Charlotte', 'Wilson', 6, '963 Pine Crescent, Cambridge, CB7 15UU', 'None', 'Female'),
(32, 2, 'Joshua', 'Harris', 6, '159 Birch Crescent, Oxford, OX8 16VV', 'None', 'Male'),
(33, 3, 'Isaac', 'Brown', 7, '321 Cedar Road, Glasgow, G9 17WW', 'None', 'Male'),
(34, 3, 'Lily', 'Martin', 7, '654 Maple Crescent, London, SW10 18XX', 'None', 'Female'),
(35, 4, 'Freya', 'Wright', 8, '963 Pine Road, Cambridge, CB10 19YY', 'None', 'Female'),
(36, 4, 'Daniel', 'Adams', 8, '246 Willow Road, Birmingham, B9 20ZZ', 'None', 'Male'),
(37, 5, 'Jacob', 'Walker', 9, '654 Pine Crescent, Oxford, OX9 21AA', 'None', 'Male'),
(38, 5, 'Poppy', 'Simmons', 9, '963 Cedar Drive, Cambridge, CB11 22BB', 'None', 'Female'),
(39, 6, 'Rory', 'Evans', 10, '135 Pine Crescent, Oxford, OX10 23CC', 'None', 'Male'),
(40, 6, 'Lena', 'Parker', 10, '654 Maple Crescent, Leeds, LS11 24DD', 'None', 'Female'),
(41, 7, 'Ella', 'Thompson', 11, '963 Birch Road, Glasgow, G10 25EE', 'None', 'Female'),
(42, 7, 'Max', 'Morris', 11, '321 Cedar Avenue, Oxford, OX12 26FF', 'None', 'Male'),
(43, 1, 'George', 'Graham', 4, '159 Cedar Lane, Oxford, OX13 27GG', 'None', 'Male'),
(44, 1, 'Amelia', 'Morris', 5, '963 Maple Road, Glasgow, G11 28HH', 'None', 'Female'),
(45, 2, 'Matthew', 'Walker', 6, '246 Oak Crescent, London, SW11 29II', 'None', 'Male'),
(46, 2, 'Emily', 'Moore', 6, '159 Birch Crescent, Oxford, OX14 30JJ', 'None', 'Female'),
(47, 3, 'Luke', 'Taylor', 7, '321 Maple Road, Birmingham, B12 31KK', 'None', 'Male'),
(48, 3, 'Sophia', 'Lee', 7, '654 Pine Crescent, Leeds, LS12 32LL', 'None', 'Female'),
(49, 4, 'Benjamin', 'Scott', 8, '246 Birch Crescent, Oxford, OX15 33MM', 'None', 'Male'),
(50, 4, 'Amos', 'Wright', 8, '963 Oak Crescent, Manchester, M9 34NN', 'None', 'Male'),
(51, 5, 'Aria', 'Miller', 9, '159 Maple Crescent, London, SW12 35OO', 'None', 'Female'),
(52, 5, 'Isaac', 'Smith', 9, '246 Cedar Avenue, Leeds, LS13 36PP', 'None', 'Male'),
(53, 6, 'Nina', 'Green', 10, '963 Willow Road, Glasgow, G13 37QQ', 'None', 'Female'),
(54, 6, 'William', 'Walker', 10, '135 Birch Road, Manchester, M10 38RR', 'None', 'Male'),
(55, 7, 'Scarlett', 'Baker', 11, '246 Maple Crescent, Leeds, LS14 39SS', 'None', 'Female'),
(56, 7, 'Liam', 'Parker', 11, '963 Pine Crescent, Oxford, OX16 40TT', 'None', 'Male'),
(57, 1, 'Mia', 'Lewis', 5, '321 Rose Crescent, Manchester, M11 41UU', 'None', 'Female'),
(58, 1, 'Ryan', 'Walker', 4, '654 Birch Lane, Leeds, LS15 42VV', 'None', 'Male'),
(59, 2, 'Zoe', 'Roberts', 6, '963 Willow Road, Cambridge, CB12 43WW', 'None', 'Female'),
(60, 2, 'Luca', 'Martin', 6, '135 Oak Road, Oxford, OX17 44XX', 'None', 'Male'),
(61, 3, 'Freya', 'Walker', 7, '963 Cedar Avenue, Oxford, OX18 45YY', 'None', 'Female'),
(62, 3, 'Tom', 'Brown', 7, '246 Pine Crescent, Leeds, LS16 46ZZ', 'None', 'Male'),
(63, 4, 'Sophie', 'Davis', 8, '159 Maple Road, Glasgow, G14 47AA', 'None', 'Female'),
(64, 4, 'Harvey', 'Green', 8, '321 Oak Crescent, Manchester, M12 48BB', 'None', 'Male'),
(65, 5, 'Leo', 'Williams', 9, '654 Cedar Lane, Cambridge, CB13 49CC', 'None', 'Male'),
(66, 5, 'Evelyn', 'Roberts', 9, '963 Willow Crescent, Oxford, OX19 50DD', 'None', 'Female'),
(67, 6, 'Henry', 'Smith', 10, '135 Pine Road, Manchester, M13 51EE', 'None', 'Male'),
(68, 6, 'Molly', 'Wright', 10, '321 Cedar Avenue, Glasgow, G15 52FF', 'None', 'Female'),
(69, 7, 'Eli', 'Taylor', 11, '963 Oak Crescent, Leeds, LS17 53GG', 'None', 'Male'),
(70, 7, 'Isabella', 'Jones', 11, '159 Birch Road, Oxford, OX20 54HH', 'None', 'Female'),
(71, 1, 'Zara', 'Morris', 5, '963 Rose Avenue, Birmingham, B14 55II', 'None', 'Female'),
(72, 1, 'Aidan', 'Scott', 5, '246 Maple Crescent, Cambridge, CB14 56JJ', 'None', 'Male'),
(73, 2, 'Amos', 'Adams', 6, '321 Oak Crescent, Glasgow, G16 57KK', 'None', 'Male'),
(74, 2, 'Ruby', 'Wilson', 6, '963 Willow Lane, Oxford, OX21 58LL', 'None', 'Female'),
(75, 3, 'Jacob', 'Lee', 7, '159 Birch Road, Cambridge, CB15 59MM', 'None', 'Male'),
(76, 3, 'Harriet', 'Moore', 7, '246 Pine Crescent, Manchester, M14 60NN', 'None', 'Female'),
(77, 4, 'Ella', 'Miller', 8, '963 Rose Avenue, Oxford, OX22 61OO', 'None', 'Female'),
(78, 4, 'Oscar', 'Adams', 8, '654 Maple Crescent, Leeds, LS18 62PP', 'None', 'Male'),
(79, 5, 'Logan', 'Taylor', 9, '321 Oak Crescent, Manchester, M15 63QQ', 'None', 'Male'),
(80, 5, 'Georgia', 'Roberts', 9, '963 Pine Crescent, Oxford, OX23 64RR', 'None', 'Female'),
(81, 6, 'Amos', 'Walker', 10, '135 Maple Crescent, Leeds, LS19 65SS', 'None', 'Male'),
(82, 6, 'Ava', 'Green', 10, '246 Cedar Lane, Oxford, OX24 66TT', 'None', 'Female'),
(83, 7, 'Ben', 'Smith', 11, '963 Pine Crescent, Cambridge, CB16 67UU', 'None', 'Male'),
(84, 7, 'Lilly', 'Thompson', 11, '159 Birch Road, Oxford, OX25 68VV', 'None', 'Female'),
(85, 1, 'Charlie', 'Jones', 5, '963 Oak Crescent, Leeds, LS20 69WW', 'None', 'Male'),
(86, 1, 'Amelia', 'Scott', 4, '246 Birch Road, Glasgow, G17 70XX', 'None', 'Female'),
(87, 2, 'Theo', 'Jackson', 6, '159 Pine Crescent, Cambridge, CB17 71YY', 'None', 'Male'),
(88, 2, 'Sophia', 'Green', 6, '963 Cedar Road, Oxford, OX26 72ZZ', 'None', 'Female'),
(89, 3, 'Ivy', 'Davis', 7, '246 Maple Crescent, Manchester, M16 73AA', 'None', 'Female'),
(90, 3, 'Ethan', 'Thompson', 7, '321 Pine Crescent, Leeds, LS21 74BB', 'None', 'Male'),
(91, 4, 'James', 'Martin', 8, '963 Birch Crescent, Oxford, OX27 75CC', 'None', 'Male'),
(92, 4, 'Chloe', 'Evans', 8, '159 Willow Crescent, Cambridge, CB18 76DD', 'None', 'Female'),
(93, 5, 'Jackson', 'Smith', 9, '321 Birch Road, Oxford, OX28 77EE', 'None', 'Male'),
(94, 5, 'Zoe', 'Martin', 9, '963 Oak Crescent, Leeds, LS22 78FF', 'None', 'Female'),
(95, 6, 'Lara', 'Johnson', 10, '246 Pine Crescent, Oxford, OX29 79GG', 'None', 'Female'),
(96, 6, 'Freddie', 'Harris', 10, '963 Willow Crescent, Cambridge, CB19 80HH', 'None', 'Male'),
(97, 7, 'Isabella', 'Green', 11, '135 Birch Crescent, Glasgow, G20 81II', 'None', 'Female'),
(98, 7, 'Oliver', 'Roberts', 11, '321 Pine Crescent, Manchester, M17 82JJ', 'None', 'Male'),
(99, 1, 'Ava', 'Williams', 4, '963 Rose Crescent, Oxford, OX30 83KK', 'None', 'Female'),
(100, 1, 'Theo', 'King', 5, '246 Willow Crescent, Leeds, LS23 84LL', 'None', 'Male'),
(101, 2, 'Maya', 'Evans', 6, '963 Cedar Lane, Oxford, OX31 85MM', 'None', 'Female'),
(102, 2, 'Oliver', 'Brown', 6, '321 Oak Crescent, Manchester, M18 86NN', 'None', 'Male'),
(103, 3, 'Ethan', 'Parker', 7, '246 Pine Crescent, Cambridge, CB20 87OO', 'None', 'Male'),
(104, 3, 'Charlotte', 'Moore', 7, '963 Maple Road, Oxford, OX32 88PP', 'None', 'Female'),
(105, 4, 'Henry', 'Evans', 8, '321 Willow Crescent, Manchester, M19 89QQ', 'None', 'Male'),
(106, 4, 'Madison', 'Adams', 8, '963 Cedar Road, Leeds, LS24 90RR', 'None', 'Female'),
(107, 5, 'Mason', 'Scott', 9, '246 Birch Crescent, Oxford, OX33 91SS', 'None', 'Male'),
(108, 5, 'Ellie', 'Taylor', 9, '963 Willow Crescent, Cambridge, CB21 92TT', 'None', 'Female'),
(109, 6, 'Daniel', 'Lee', 10, '321 Pine Crescent, Leeds, LS25 93UU', 'None', 'Male'),
(110, 6, 'Evelyn', 'Jones', 10, '963 Birch Road, Oxford, OX34 94VV', 'None', 'Female'),
(111, 7, 'Lily', 'Clark', 11, '246 Cedar Avenue, Cambridge, CB22 95WW', 'None', 'Female'),
(112, 7, 'Riley', 'Thompson', 11, '963 Pine Crescent, Manchester, M20 96XX', 'None', 'Male'),
(113, 1, 'Mason', 'Evans', 5, '246 Oak Crescent, Oxford, OX35 97YY', 'None', 'Male'),
(114, 1, 'Sophia', 'Harris', 5, '963 Birch Crescent, Glasgow, G21 98ZZ', 'None', 'Female'),
(115, 2, 'Harper', 'Johnson', 6, '321 Cedar Lane, Oxford, OX36 99AA', 'Asthma', 'Female'),
(116, 2, 'George', 'Harris', 6, '963 Willow Crescent, Manchester, M22 100BB', 'None', 'Male'),
(117, 3, 'Ella', 'Taylor', 7, '246 Oak Crescent, Oxford, OX37 101CC', 'None', 'Female'),
(118, 3, 'Evan', 'Davis', 7, '963 Cedar Crescent, Cambridge, CB23 102DD', 'None', 'Male'),
(119, 4, 'Megan', 'Evans', 8, '321 Willow Crescent, Oxford, OX38 103EE', 'None', 'Female'),
(120, 4, 'Joshua', 'Parker', 8, '963 Oak Crescent, Leeds, LS27 104FF', 'None', 'Male'),
(121, 5, 'Gracie', 'Johnson', 9, '246 Pine Crescent, Manchester, M23 105GG', 'None', 'Female'),
(122, 5, 'Alfie', 'Parker', 9, '963 Maple Crescent, Cambridge, CB24 106HH', 'None', 'Male'),
(123, 6, 'Charlie', 'Smith', 10, '321 Birch Crescent, Oxford, OX39 107II', 'None', 'Male'),
(124, 6, 'Olivia', 'Lee', 10, '963 Cedar Avenue, Leeds, LS28 108JJ', 'None', 'Female'),
(125, 7, 'Grace', 'Adams', 11, '246 Maple Crescent, Oxford, OX40 109KK', 'None', 'Female'),
(126, 7, 'Daniel', 'Harris', 11, '963 Willow Crescent, Cambridge, CB25 110LL', 'None', 'Male'),
(127, 1, 'Olivia', 'Clark', 5, '321 Oak Crescent, Oxford, OX41 111MM', 'None', 'Female'),
(128, 1, 'Noah', 'Brown', 4, '963 Birch Road, Leeds, LS29 112NN', 'Lactose', 'Male'),
(129, 2, 'Amelia', 'Green', 6, '246 Maple Crescent, Oxford, OX42 113OO', 'None', 'Female'),
(130, 2, 'Freya', 'Lewis', 6, '963 Cedar Lane, Cambridge, CB26 114PP', 'None', 'Female'),
(131, 3, 'Harry', 'Evans', 7, '246 Pine Crescent, Oxford, OX43 115QQ', 'None', 'Male'),
(132, 3, 'Poppy', 'Scott', 7, '963 Willow Crescent, Leeds, LS30 116RR', 'None', 'Female'),
(133, 4, 'Isaac', 'Moore', 8, '321 Cedar Crescent, Cambridge, CB27 117SS', 'None', 'Male'),
(134, 4, 'Lily', 'Morris', 8, '963 Birch Crescent, Oxford, OX44 118TT', 'None', 'Female'),
(135, 5, 'Liam', 'Taylor', 9, '246 Pine Crescent, Oxford, OX45 119UU', 'None', 'Male'),
(136, 5, 'Mia', 'Davis', 9, '963 Maple Road, Cambridge, CB28 120VV', 'None', 'Female'),
(137, 6, 'Luke', 'Roberts', 10, '321 Willow Crescent, Oxford, OX46 121WW', 'None', 'Male'),
(138, 6, 'Eden', 'Clark', 10, '963 Cedar Crescent, Leeds, LS32 122XX', 'None', 'Female'),
(139, 7, 'Alice', 'Williams', 11, '246 Oak Crescent, Cambridge, CB29 123YY', 'None', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `annual_salary` decimal(10,2) DEFAULT NULL,
  `phone_number` varchar(15) NOT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `first_name`, `last_name`, `address`, `email`, `annual_salary`, `phone_number`, `class_id`) VALUES
(16, 'Saqib', 'Imran', '42 Maple Street, Bristol, BS1 3XY', 'saqibimran@rocketmail.com', 45000.00, '0789876564', NULL),
(17, 'Sarah', 'Smith', '123 Oak Street, London, SW1A 1AA', 'sarah.smith@gmail.com', 30000.00, '07123 456789', NULL),
(18, 'James', 'Johnson', '456 Maple Road, Manchester, M1 2AA', 'james.johnson@outlook.com', 35250.00, '07345 678901', NULL),
(19, 'Emma', 'Williams', '789 Birch Lane, Birmingham, B1 2BB', 'emma.williams@icloud.com', 28500.00, '07456 789012', NULL),
(20, 'Olivia', 'Taylor', '654 Cedar Street, Edinburgh, EH1 2AB', 'olivia.taylor@outlook.com', 29500.00, '07234 567890', NULL),
(23, 'Abdul', 'Rehman', '4 High Road Close, Rochdale. OL11 3TQ', 'abdul.rehman@rocketmail.com', 31500.00, '07835 716524', NULL),
(24, 'Sam ', 'Smith', '963 Oak Lane, Cambridge, CB1 2FF', 'sam.smith@icloud.com', 35000.00, '07567 890123', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `fk_teacher` (`teacher_id`);

--
-- Indexes for table `guardian`
--
ALTER TABLE `guardian`
  ADD PRIMARY KEY (`guardian_id`),
  ADD KEY `fk_student_id` (`student_id`);

--
-- Indexes for table `guardian_student_relationship`
--
ALTER TABLE `guardian_student_relationship`
  ADD PRIMARY KEY (`relationship_id`),
  ADD KEY `guardian_id` (`guardian_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `fk_class_id` (`class_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `guardian`
--
ALTER TABLE `guardian`
  MODIFY `guardian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `guardian_student_relationship`
--
ALTER TABLE `guardian_student_relationship`
  MODIFY `relationship_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `fk_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL;

--
-- Constraints for table `guardian`
--
ALTER TABLE `guardian`
  ADD CONSTRAINT `fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `guardian_student_relationship`
--
ALTER TABLE `guardian_student_relationship`
  ADD CONSTRAINT `guardian_student_relationship_ibfk_1` FOREIGN KEY (`guardian_id`) REFERENCES `guardian` (`guardian_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guardian_student_relationship_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE SET NULL;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `fk_class_id` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
