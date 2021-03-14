CREATE DATABASE databasename;
--
-- Table structure for table `activeCourse` which is there to
--

CREATE TABLE `activeCourse` (
  `ID` int(11) NOT NULL,
  `IDcustomer` int(11) DEFAULT NULL,
  `IDcourseLibrary` int(11) DEFAULT NULL,
  `beginTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  `progress` int(11) DEFAULT NULL,
   PRIMARY KEY (`ID`),
   FOREIGN KEY (`IDcustomer`) REFERENCES `customer` (`ID`)
   FOREIGN KEY (`IDcourseLibrary`) REFERENCES `courseLibrary` (`ID`)
   );
-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `ID` int(11) NOT NULL,
  `countryName` varchar(50) DEFAULT NULL,
  `countryAcronym` varchar(5) DEFAULT NULL,
  `phonePrefix` varchar(7) DEFAULT NULL,
   PRIMARY KEY (`ID`)
   );

--
-- Table structure for table `courseLibrary`
--

CREATE TABLE `courseLibrary` (
  `ID` int(11) NOT NULL,
  `IDknowledgeLibrary` int(11) DEFAULT NULL,
  `cousrseName` varchar(100) NOT NULL,
  `desciption` varchar(250) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL
   PRIMARY KEY (`ID`),
   FOREIGN KEY (`IDknowledgeLibrary`) REFERENCES `knowledgeLibrary` (`ID`)
   );
--
-- Table structure for table `customer`
--
CREATE TABLE `customer` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `IDgender` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `creationTime` datetime DEFAULT NULL,
  `IDcountry` int(11) NOT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
   PRIMARY KEY (`ID`),
   FOREIGN KEY (`IDcountry`) REFERENCES `country` (`ID`)
);
--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `ID` int(11) NOT NULL,
  `gender` varchar(15) DEFAULT NULL,
   PRIMARY KEY (`ID`);
);
--
-- Table structure for table `knowledgeLibrary`
--

CREATE TABLE `knowledgeLibrary` (
  `ID` int(11) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`);
);
--
-- Table structure for table `questionsLibrary`
--

CREATE TABLE `questionsLibrary` (
  `ID` int(11) NOT NULL,
  `IDknowledgeLibrary` int(11) DEFAULT NULL,
  `question` varchar(250) DEFAULT NULL,
  `secondaryQuestion` varchar(250) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `typeOfAnswer` int(11) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
);
--
-- Table structure for table `quizDetail`
--

CREATE TABLE `quizDetail` (
  `ID` int(11) NOT NULL,
  `IDquiz` int(11) DEFAULT NULL,
  `IDquestionsLib` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`IDquiz`) REFERENCES `quizMaster` (`ID`),
  FOREIGN KEY (`IDquestionsLib`) REFERENCES `questionsLibrary` (`ID`)
  );
--
-- Table structure for table `quizMaster`
--

CREATE TABLE `quizMaster` (
  `ID` int(11) NOT NULL,
  `DateTime` datetime DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
   PRIMARY KEY (`ID`);
   );
commit;
