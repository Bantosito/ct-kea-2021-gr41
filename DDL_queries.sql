CREATE DATABASE codersTrustProjectDatabase; --  Here you change the name of the desired database you want to create


USE codersTrustProjectDatabase;

--
-- Table structure for table `knowledgeLibrary`
--

CREATE TABLE `knowledgeLibrary` (
  `ID` int NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `isActive` int DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`) 
);

--
-- Table structure for table `quizMaster`
--

CREATE TABLE `quizMaster` (
  `ID` int NOT NULL,
  `DateTime` datetime DEFAULT NULL,
  `customerID` int DEFAULT NULL,
   PRIMARY KEY (`ID`)
   );

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `ID` int NOT NULL,
  `countryName` varchar(50) DEFAULT NULL,
  `countryAcronym` varchar(5) DEFAULT NULL,
  `phonePrefix` varchar(7) DEFAULT NULL,
   PRIMARY KEY (`ID`)
   );
   
--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `ID` int NOT NULL,
  `gender` varchar(15) DEFAULT NULL,
   PRIMARY KEY (`ID`)
);

--
-- Table structure for table `questionsLibrary`
--

CREATE TABLE `questionsLibrary` (
  `ID` int NOT NULL,
  `IDknowledgeLibrary` int DEFAULT NULL,
  `question` varchar(250) DEFAULT NULL,
  `secondaryQuestion` varchar(250) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `typeOfAnswer` int DEFAULT NULL,
  `isActive` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`IDknowledgeLibrary`) REFERENCES `knowledgeLibrary` (`ID`)
);

--
-- Table structure for table `courseLibrary`
--

CREATE TABLE `courseLibrary` (
  `ID` int NOT NULL,
  `IDknowledgeLibrary` int DEFAULT NULL,
  `cousrseName` varchar(100) NOT NULL,
  `desciption` varchar(250) DEFAULT NULL,
  `isActive` int DEFAULT NULL,
   PRIMARY KEY (`ID`),
   FOREIGN KEY (`IDknowledgeLibrary`) REFERENCES `knowledgeLibrary` (`ID`)
   );

--
-- Table structure for table `quizDetail`
--

CREATE TABLE `quizDetail` (
  `ID` int NOT NULL,
  `IDquiz` int DEFAULT NULL,
  `IDquestionsLib` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`IDquiz`) REFERENCES `quizMaster` (`ID`),
  FOREIGN KEY (`IDquestionsLib`) REFERENCES `questionsLibrary` (`ID`)
  );
  
--
-- Table structure for table `customer`
--
CREATE TABLE `customer` (
  `ID` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `IDgender` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `creationTime` datetime DEFAULT NULL,
  `IDcountry` int NOT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `isActive` int DEFAULT NULL,
   PRIMARY KEY (`ID`),
   FOREIGN KEY (`IDcountry`) REFERENCES `country` (`ID`)
);

--
-- Table structure for table `activeCourse` which is there to
--

CREATE TABLE `activeCourse` (
  `ID` int NOT NULL,
  `IDcustomer` int DEFAULT NULL,
  `IDcourseLibrary` int DEFAULT NULL,
  `beginTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `isActive` int DEFAULT NULL,
  `progress` int  DEFAULT NULL,
   PRIMARY KEY (`ID`),
   FOREIGN KEY (`IDcustomer`) REFERENCES `customer` (`ID`),
   FOREIGN KEY (`IDcourseLibrary`) REFERENCES `courseLibrary` (`ID`)
   );
-- --------------------------------------------------------


SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
