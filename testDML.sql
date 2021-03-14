--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `username`, `name`, `surname`, `IDgender`, `email`, `password`, `creationTime`, `IDcountry`, `phoneNumber`, `isActive`) VALUES
(1, 'John.S', 'John', 'Stones', 1, 'John@stones.com', 'MeTheFutureOfGigEconomy123', '2021-03-13 00:40:23', 20, '44529183904', 1),
(2, 'bobby2000', 'Robert', 'Cross', 2, 'rob.cross@gmail.com', 'BOBBYtheGEEK2000', '2021-03-11 08:46:09', 239, '28917829182371892', 1),
(3, 'MOMO777', 'Emma', 'Andersen', 3, 'Emen@outlook.com', 'ANKSsdjak-163232@', '2021-03-14 15:54:26', 61, '529801353', 1);

-- --------------------------------------------------------

--
-- Dumping data for table `quizMaster`
--

INSERT INTO `quizMaster` (`ID`, `DateTime`, `customerID`) VALUES
(1, '2021-03-12 18:19:52', NULL),
(2, '2021-03-13 09:15:08', 3;

-- ---------------------------------------------------------
--
-- Dumping data for table `quizDetail`
--
-- --------------------------------------------------------

INSERT INTO `quizDetail` (`ID`, `IDquiz`, `IDquestionsLib`, `score`) VALUES
(1, 1, 1, 5),
(2, 1, 2, 5),
(3, 1, 3, 0),
(4, 1, 4, 5),
(5, 1, 5, 0),
(6, 1, 6, 0),
(7, 1, 7, 5),
(8, 1, 8, 0),
(9, 1, 9, 5),
(10, 1, 10, 0),
(11, 1, 11, 5),
(12, 1, 12, 0),
(13, 2, 1, 0),
(14, 2, 2, 0),
(15, 2, 3, 5),
(16, 2, 4, 5),
(17, 2, 5, 5),
(18, 2, 6, 5),
(19, 2, 7, 5),
(20, 2, 8, 0),
(21, 2, 9, 5),
(22, 2, 10, 0),
(23, 2, 11, 0),
(24, 2, 12, 5);

-- --------------------------------------------------------
