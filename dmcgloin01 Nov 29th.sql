-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 29, 2020 at 06:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dmcgloin01`
--

-- --------------------------------------------------------

--
-- Table structure for table `AdditionalBenefits`
--

CREATE TABLE `AdditionalBenefits` (
  `AdditionalBenefitsID` int(11) NOT NULL,
  `AdditionalBenefits` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AdditionalBenefits`
--

INSERT INTO `AdditionalBenefits` (`AdditionalBenefitsID`, `AdditionalBenefits`) VALUES
(1, '2 cabin bags, dedicated bag drop, speedy boarding'),
(2, 'Choose where you want to sit, window, middle or aisle');

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE `Address` (
  `AddressID` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City/Town` varchar(255) NOT NULL,
  `Postcode` varchar(255) NOT NULL,
  `CountryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`AddressID`, `Address`, `City/Town`, `Postcode`, `CountryID`) VALUES
(1, 'Horley, Gatwick', 'London', 'RH6 0NP', 8),
(2, 'Melli-Beese-Ring 1', 'Schönefeld', '12529', 2),
(3, 'Route de l\'Aéroport 21', 'Le Grand-Saconnex', '1216', 1),
(4, 'Bristol', 'Bristol', 'BS48 3DY', 8),
(5, 'Airport Way', 'Luton', 'LU2 9LY', 8),
(6, 'Manchester', 'Manchester', 'M90 1QX', 1),
(7, 'El Altet', 'Alicante', '03195', 6),
(8, 'Evert van de Beekstraat 202', 'Schiphol', '1118', 4),
(9, 'El Prat de Llobregat', 'Barcelona', '08820', 6),
(10, 'Sant Antoni de Portmany', 'Balearic Islands', '07820', 6),
(11, 'Lanzarote', 'Las Palmas', '35550', 6),
(12, 'Palma', 'Balearic Islands', '07611', 6),
(13, 'Av. del Comandante García Morato', 'Málaga', '29004', 6),
(14, 'Santa Cruz de Tenerife', 'Tenerife', '38610', 6),
(15, 'Cesta Dr. Franje Tudmana 1270', 'Kastel Stafilic', '21217', 13),
(16, 'Bordeaux', 'Merignac', '33700', 1),
(17, 'Rue Costes et Bellonte', 'Nice', '06206', 1),
(18, 'Roissy-en-France', 'Paris', '95700', 1),
(19, 'Kapitana Mieczyslawa Medweckiego 1', 'Balice', '32-083', 11),
(20, 'Faro', 'Faro', '8006-901', 5),
(21, 'Ege', 'Dalaman', '48770', 12),
(22, 'Birmingham', 'Birmingham', 'B26 3QJ', 8),
(23, 'Edinburgh', 'Edinburgh', 'EH12 9DN', 8),
(24, 'Glasgow', 'Paisley', 'PA3 2ST', 8),
(25, 'Airport Rd', 'Belfast', 'BT29 4AB', 8),
(26, 'Liverpool Airport, Speke Hall Ave', 'Liverpool', 'L24 1YD', 8),
(27, '511 Ilene Lane', 'Belfast', 'BT9 5JS', 8),
(28, '2892 New Castle Street', 'London', 'E1 6AN', 8),
(29, '33 Bellgrove Plaza', 'London', 'E1 7AA', 8),
(30, '21992 Hanover Drive', 'Belfast', 'BT9 6AG', 8),
(31, '18385 Center Street', 'Belfast', 'BT9 6HJ', 8),
(32, '6335 Mcbride Point', 'Glasgow', 'G1 1BX', 8),
(33, '8284 Riverside Lane', 'Paris', '75005', 1),
(34, '21572 Columbus Pass', 'Berlin', '10178', 2),
(35, '75 Bellgrove Drive', 'Amsterdam', '1008 DG', 4),
(36, '4276 Lighthouse Bay Alley', 'Istanbul', '34045', 12),
(37, '9 Mockingbird Park', 'Belfast', 'BT7 5GH', 8),
(38, '5 Everett Crossing', 'London', 'E2 7AE', 8),
(39, '10451 Crescent Oaks Point', 'Krakow', '30-021', 11),
(40, '7965 Moulton Trail', 'Rome', '00154', 3),
(41, '63339 Messerschmidt Avenue', 'Berlin', '10707', 2),
(42, '07 Lotheville Lane', 'Bristol', 'BS1 1DZ', 8),
(43, '2459 Annamark Alley', 'Birmingham', 'B1 1BN', 8),
(44, '8 Sullivan Terrace', 'Manchester', 'M1 1AN', 8),
(45, '236 Farmco Road', 'Nice', '06300', 1),
(46, '97 Northfield Center', 'Belfast', 'BT7 1GH', 8),
(47, '6 Morning Park', 'Liverpool', 'L1 0AF', 8),
(48, '05 Ryan Point', 'Gdansk', '80-012', 11),
(49, '6903 Hoard Center', 'Manchester', 'M1 1DZ', 8),
(50, '74 Autumn Leaf Court', 'Liverpool', 'L1 0AU', 8),
(51, '870 Menomonie Road', 'Birmingham', 'B1 1HL', 8);

-- --------------------------------------------------------

--
-- Table structure for table `Aircraft`
--

CREATE TABLE `Aircraft` (
  `AircraftID` int(11) NOT NULL,
  `AircraftModel` varchar(255) NOT NULL,
  `SeatingPlanID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Aircraft`
--

INSERT INTO `Aircraft` (`AircraftID`, `AircraftModel`, `SeatingPlanID`) VALUES
(3, 'Airbus A319', 1),
(4, 'Airbus A320NEO', 2),
(5, 'Airbus A320a', 3),
(6, 'Airbus A321', 4);

-- --------------------------------------------------------

--
-- Table structure for table `Airport`
--

CREATE TABLE `Airport` (
  `AirportID` int(11) NOT NULL,
  `AirportCode` varchar(255) NOT NULL,
  `AirportName` varchar(255) NOT NULL,
  `AddressID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Airport`
--

INSERT INTO `Airport` (`AirportID`, `AirportCode`, `AirportName`, `AddressID`) VALUES
(1, 'ALC', 'Alicante Airport', 7),
(2, 'AMS', 'Amsterdam Airport Schiphol', 8),
(3, 'BCN', 'Barcelona Airport', 9),
(4, 'BFS', 'Belfast International', 25),
(5, 'BER', 'Berlin Brandenburg', 2),
(6, 'BHX', 'Birmingham', 22),
(7, 'BOD', 'Bordeaux', 16),
(8, 'BRS', 'Bristol', 4),
(9, 'CDG', 'Charles De Gaulle', 18),
(10, 'DLM', 'Dalaman', 21),
(11, 'EDI', 'Edinburgh', 23),
(12, 'FAO', 'Faro', 20),
(13, 'GVA', 'Geneva', 3),
(14, 'GLA', 'Glasgow', 24),
(15, 'IBZ', 'Ibiza', 10),
(16, 'KRK', 'Krakow', 19),
(17, 'ACE', 'Lanzarote', 11),
(18, 'LPL', 'Liverpool', 26),
(19, 'LGW', 'London-Gatwick', 1),
(20, 'LTN', 'London-Luton', 5),
(21, 'AGP', 'Malaga', 13),
(22, 'MAN', 'Manchester', 6),
(23, 'NCE', 'Nice', 17),
(24, 'PMI', 'Palma Majorca', 12),
(25, 'SPU', 'Split', 15),
(26, 'TFS', 'Tenerife South', 14);

-- --------------------------------------------------------

--
-- Table structure for table `Baggage`
--

CREATE TABLE `Baggage` (
  `BaggageID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL,
  `PassengerDetailsID` int(11) NOT NULL,
  `BaggageTypePriceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Baggage`
--

INSERT INTO `Baggage` (`BaggageID`, `FlightID`, `PassengerDetailsID`, `BaggageTypePriceID`) VALUES
(1, 1, 1, 5),
(2, 1, 2, 11),
(3, 1, 3, 5),
(4, 1, 4, 8),
(5, 1, 5, 11),
(6, 1, 6, 5),
(7, 1, 7, 2),
(8, 1, 8, 2),
(9, 1, 9, 11),
(10, 1, 10, 8),
(11, 1, 11, 14),
(12, 1, 12, 14),
(13, 1, 13, 8),
(14, 1, 14, 11),
(15, 1, 15, 5),
(16, 1, 16, 8),
(17, 1, 17, 11),
(18, 1, 18, 5),
(19, 1, 19, 8),
(20, 1, 20, 11),
(21, 19, 21, 14),
(22, 19, 22, 8),
(23, 19, 23, 2),
(24, 19, 24, 5),
(25, 19, 25, 11),
(26, 19, 26, 5),
(27, 19, 27, 11),
(28, 19, 28, 14),
(29, 19, 29, 8),
(30, 19, 30, 5),
(31, 19, 31, 8),
(32, 19, 32, 2),
(33, 19, 33, 5),
(34, 19, 34, 11),
(35, 19, 35, 14),
(36, 25, 36, 10),
(37, 25, 37, 1),
(38, 25, 38, 4),
(39, 25, 39, 7),
(40, 25, 40, 7),
(41, 25, 41, 4),
(42, 25, 42, 7),
(43, 25, 43, 13),
(44, 25, 44, 7),
(45, 25, 45, 1),
(46, 25, 46, 4),
(47, 25, 47, 10),
(48, 25, 48, 7),
(49, 25, 49, 10),
(50, 25, 50, 13),
(51, 25, 51, 13),
(52, 25, 52, 13);

-- --------------------------------------------------------

--
-- Table structure for table `BaggageTypeName`
--

CREATE TABLE `BaggageTypeName` (
  `BaggageTypeNameID` int(11) NOT NULL,
  `BaggageTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BaggageTypeName`
--

INSERT INTO `BaggageTypeName` (`BaggageTypeNameID`, `BaggageTypeName`) VALUES
(1, '15kg hold bag'),
(2, '23kg hold bag'),
(3, '26kg hold bag'),
(4, '29 kg hold bag'),
(5, '32kg hold bag');

-- --------------------------------------------------------

--
-- Table structure for table `BaggageTypePrice`
--

CREATE TABLE `BaggageTypePrice` (
  `BaggagePriceID` int(11) NOT NULL,
  `BaggageTypeNameID` int(11) NOT NULL,
  `FlightRangeID` int(11) NOT NULL,
  `BaggagePrice` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BaggageTypePrice`
--

INSERT INTO `BaggageTypePrice` (`BaggagePriceID`, `BaggageTypeNameID`, `FlightRangeID`, `BaggagePrice`) VALUES
(1, 1, 1, '7.99'),
(2, 1, 2, '9.99'),
(3, 1, 3, '10.99'),
(4, 2, 1, '12.99'),
(5, 2, 2, '14.99'),
(6, 2, 3, '15.99'),
(7, 2, 1, '24.99'),
(8, 3, 2, '26.99'),
(9, 3, 3, '27.99'),
(10, 4, 1, '36.99'),
(11, 4, 2, '38.99'),
(12, 4, 3, '39.99'),
(13, 5, 1, '48.99'),
(14, 5, 2, '50.99'),
(15, 5, 3, '51.99');

-- --------------------------------------------------------

--
-- Table structure for table `BookerDetails`
--

CREATE TABLE `BookerDetails` (
  `BookerDetailsID` int(11) NOT NULL,
  `TitleID` int(11) NOT NULL,
  `BookerFirstName` varchar(255) NOT NULL,
  `BookerSurname` varchar(255) NOT NULL,
  `EmailAddress` varchar(255) NOT NULL,
  `UserPassword` varbinary(512) NOT NULL,
  `InternationalDialingCodeID` int(11) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `AddressID` int(11) NOT NULL,
  `CountryID` int(11) NOT NULL,
  `PaymentID` int(11) NOT NULL,
  `EasyJetPlusMembershipID` int(11) NOT NULL,
  `EasyJetOffersAndUpdates` tinyint(11) NOT NULL,
  `EasyJetPartnerOffersAndUpdatesID` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BookerDetails`
--

INSERT INTO `BookerDetails` (`BookerDetailsID`, `TitleID`, `BookerFirstName`, `BookerSurname`, `EmailAddress`, `UserPassword`, `InternationalDialingCodeID`, `PhoneNumber`, `AddressID`, `CountryID`, `PaymentID`, `EasyJetPlusMembershipID`, `EasyJetOffersAndUpdates`, `EasyJetPartnerOffersAndUpdatesID`) VALUES
(1, 1, 'Neil', 'Anderson', 'n.anderson@qub.ac.uk', 0x68f9b333af01bfb1b55060afed0f779e30883ad8d8f370949105dfe87facc389, 8, '(0)28 9097 4892', 28, 8, 1, 1, 0, 0),
(2, 2, 'Moira', 'Watson', 'm.watson@qub.ac.uk', 0x84df3967102670b92ff4326243ba79bb1820e59224e2a78f262e8abdf8bd0c83, 8, '234-233-2401', 27, 8, 2, 2, 0, 0),
(3, 1, 'Aidan', 'McGowan', 'aidan.mcgowan@qub.ac.uk', 0xa432a20f5b12029e7662c51407fd2ec530883ad8d8f370949105dfe87facc389, 8, '(0)28 9097 4935', 29, 8, 3, 3, 0, 0),
(4, 1, 'John', 'Busch', 'j.a.busch@qub.ac.uk', 0xa3c0742e3a99edc722d3c5d0fad63850d49d0bdf8ddc9eb9423af2dd9e1999db, 8, '(0)28 9097 4956', 30, 8, 4, 4, 0, 0),
(5, 1, 'Matthew', 'Collins', 'm.collins@qub.ac.uk', 0xa4df4437a2bfcc93b402e5662c7e5556, 8, '(0)28 9097 4929', 31, 8, 5, 5, 0, 0),
(6, 1, 'Michael', 'Cregan', 'm.cregan@qub.ac.uk', 0x39126771071bfab97dcdb520fef1e3e2, 8, '(0)28 9097 4056', 32, 8, 6, 6, 0, 0),
(7, 1, 'Andrew', 'McDowell', 'andrew.mcdowell@qub.ac.uk', 0x7fb3c6d936f8753949645fc3717e0387, 8, '(0)28 9097 5503', 33, 1, 7, 7, 0, 0),
(8, 1, 'Ian', 'O\'Neill', 'i.oneill@qub.ac.uk', 0x24f0f5c1443cb36572f7bb5b08fc44b8, 8, '(0)28 9097 4636', 34, 2, 8, 8, 0, 0),
(9, 1, 'Darryl', 'Stewart', 'Dw.Stewart@qub.ac.uk', 0xe58dd2f519cb4f07a5fd98da665d3ae2, 8, '(0)28 9097 4733', 35, 4, 9, 9, 0, 0),
(10, 1, 'Paul', 'Sage', 'P.Sage@qub.ac.uk', 0xf3568f97f4eb9782a028b9af9cbefbe4, 8, '(0)28 9097 4625', 36, 12, 10, 10, 0, 0),
(11, 2, 'Maire', 'O\'Neill', 'm.oneill@ecit.qub.ac.uk', 0x50beda5ff0b6a6db27824f057d404e56, 8, '(0)28 9097 1800', 37, 8, 11, 11, 0, 0),
(12, 1, 'David', 'Cutting', 'd.cutting@qub.ac.uk', 0x254078069ab2cc22f07bd7b2e3dbf6b9, 8, '(0)28 9097 4998', 38, 8, 12, 12, 0, 0),
(13, 1, 'Russell', 'Kane', 'r.kane@qub.ac.uk', 0xb2e576515ffb8f4486aa5b403bce9ba8, 8, '(0)28 9097 4631', 39, 11, 13, 13, 0, 0),
(14, 1, 'David', 'Morales', 'D.Morales@qub.ac.uk', 0xa99b75a0ad21f2db902ca478c256f479, 8, '(0)28 9097 1736', 40, 3, 14, 14, 0, 0),
(15, 1, 'Barry', 'McCollum', 'B.McCollum@qub.ac.uk', 0x05000ba0cdec485db8e43a8b9950fa0d, 8, '(0)28 9097 4622', 41, 2, 15, 15, 0, 0),
(16, 1, 'Gareth', 'Conway', 'g.conway@qub.ac.uk', 0x50beda5ff0b6a6db27824f057d404e56, 8, '(0)28 9097 1729', 42, 8, 16, 16, 0, 0),
(17, 1, 'Emi', 'Garcia-Palacios', 'e.garcia@ee.qub.ac.uk', 0xf3568f97f4eb9782a028b9af9cbefbe4, 8, '(0)28 9097 4775', 43, 8, 17, 17, 0, 0),
(18, 1, 'Desmond', 'Greer', 'des.greer@qub.ac.uk', 0x2d846ff7b0ffd61118995fdd71b276f9, 8, '(0)28 9097 4656', 44, 8, 18, 18, 0, 0),
(19, 1, 'David', 'Laverty', 'david.laverty@qub.ac.uk', 0x60f3b7a8374076fa095da6c447234fdb, 8, '(0)28 9097 4651', 45, 1, 19, 19, 0, 0),
(20, 2, 'Angela', 'Allen', 'angela.allen@qub.ac.uk', 0x18021e4c9617e5067ca55885bf39079c, 8, '(0)28 9097 4934', 47, 8, 20, 20, 0, 0),
(21, 1, 'Simon', 'Cotton', 'simon.cotton@qub.ac.uk', 0xf3568f97f4eb9782a028b9af9cbefbe4, 8, '(0)28 9097 1877', 46, 8, 21, 21, 0, 0),
(22, 1, 'John', 'Morrow', 'Dj.Morrow@qub.ac.uk', 0xfc7417a432a031c279f59240552fec91, 8, '(0)28 9097 4060', 48, 11, 22, 21, 0, 0),
(23, 1, 'Stan', 'Scott', 'ns.scott@qub.ac.uk', 0x58d3db9f1957a2e52257c86148527c8d, 8, '(0)28 9097 4058', 49, 8, 23, 21, 0, 0),
(24, 1, 'Okan', 'Yurduseven', 'okan.yurduseven@qub.ac.uk', 0x00a58126815153b6ddb4ff5bddfd580c, 8, '(0)28 9097 1847', 50, 8, 24, 21, 0, 0),
(25, 1, 'Paul', 'McMullan', 'P.P.McMullan@qub.ac.uk', 0x3312cefcfe874a9f5405a87d6d2082dc, 8, '(0)28 9097 4653', 51, 8, 25, 21, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `BookingID` int(11) NOT NULL,
  `BookingRefCode` varchar(255) NOT NULL,
  `BookingMadeDate` date NOT NULL,
  `BookerDetailsID` int(11) NOT NULL,
  `T&CAccept` tinyint(11) NOT NULL,
  `PaymentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Booking`
--

INSERT INTO `Booking` (`BookingID`, `BookingRefCode`, `BookingMadeDate`, `BookerDetailsID`, `T&CAccept`, `PaymentID`) VALUES
(1, 'EL5C20G', '2020-11-19', 1, 1, 1),
(2, 'EK8A02M', '2020-11-20', 2, 1, 2),
(3, 'ED5X25G', '2020-11-19', 3, 1, 3),
(4, 'EA5V30H', '2020-11-19', 4, 1, 4),
(5, 'ES5W19S', '2020-11-19', 5, 1, 5),
(6, 'EQ5B27S', '2020-11-19', 6, 1, 6),
(7, 'EL7D51L', '2020-11-19', 7, 1, 7),
(8, 'EQ2F50K', '2020-11-19', 8, 1, 8),
(9, 'EF9A12J', '2020-11-19', 9, 1, 9),
(10, 'EQ9B67N', '2020-11-20', 10, 1, 10),
(11, 'EN1J71L', '2020-11-20', 11, 1, 11),
(12, 'EH6V19M', '2020-11-20', 12, 1, 12),
(13, 'EB2S281A', '2020-11-19', 13, 1, 13),
(14, 'ED1J47Q', '2020-11-20', 14, 1, 14),
(15, 'EF7E05K', '2020-11-19', 15, 1, 15),
(16, 'EP8E11F', '2020-11-19', 16, 1, 16),
(17, 'EP2B09F', '2020-11-19', 17, 1, 17),
(18, 'ET1J98H', '2020-11-20', 18, 1, 18),
(19, 'EY1D93G', '2020-11-20', 19, 1, 19),
(20, 'ES2K44F', '2020-11-20', 20, 1, 20),
(21, 'EJ1K33H', '2020-11-19', 21, 1, 21),
(22, 'EP7F11R', '2020-11-19', 22, 1, 22),
(23, 'ES8N48T', '2020-11-20', 23, 1, 23),
(24, 'EF2K46Y', '2020-11-19', 24, 1, 24),
(25, 'EJ8B29P', '2020-11-19', 25, 1, 25);

-- --------------------------------------------------------

--
-- Table structure for table `Catalogue`
--

CREATE TABLE `Catalogue` (
  `CatalogueID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL,
  `CatalogueTypeID` int(11) NOT NULL,
  `BookingID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Catalogue`
--

INSERT INTO `Catalogue` (`CatalogueID`, `FlightID`, `CatalogueTypeID`, `BookingID`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 2),
(6, 1, 1, 2),
(7, 1, 1, 2),
(8, 1, 1, 2),
(9, 1, 1, 2),
(10, 1, 1, 2),
(11, 1, 1, 3),
(12, 1, 1, 3),
(13, 1, 1, 3),
(14, 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `CatalogueType`
--

CREATE TABLE `CatalogueType` (
  `CatalogueTypeID` int(11) NOT NULL,
  `CatalogueItem` varchar(255) NOT NULL,
  `Price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CatalogueType`
--

INSERT INTO `CatalogueType` (`CatalogueTypeID`, `CatalogueItem`, `Price`) VALUES
(1, 'Food and Drink Voucher', '4.00'),
(2, 'Hands Free', '7.00'),
(3, 'Hands Free Group', '16.00'),
(4, 'Infant Ticket', '25.00');

-- --------------------------------------------------------

--
-- Table structure for table `CostLineItems`
--

CREATE TABLE `CostLineItems` (
  `CostLineItemID` int(11) NOT NULL,
  `LineItemName` varchar(255) NOT NULL,
  `LineItemDesc` text NOT NULL,
  `CurrencyID` int(11) NOT NULL,
  `LineItemCost` decimal(12,2) NOT NULL,
  `CostLineItemDateTime` datetime NOT NULL,
  `BookingID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CostLineItems`
--

INSERT INTO `CostLineItems` (`CostLineItemID`, `LineItemName`, `LineItemDesc`, `CurrencyID`, `LineItemCost`, `CostLineItemDateTime`, `BookingID`) VALUES
(1, 'Adult Ticket', 'Belfast International to Alicante Dec 19th', 9, '228.99', '2020-11-25 17:23:00', 1),
(2, 'Adult Ticket', 'Belfast International to Alicante Dec 19th', 9, '228.99', '2020-11-25 17:23:00', 1),
(3, 'Adult Ticket', 'Belfast International to Alicante Dec 19th', 9, '228.99', '2020-11-25 17:23:00', 1),
(4, 'Adult Ticket', 'Belfast International to Alicante Dec 19th', 9, '228.99', '2020-11-25 17:23:00', 1),
(5, '23kg bag', 'Mid range flight', 9, '14.99', '2020-11-25 17:23:00', 1),
(6, '23kg bag', 'Mid range flight', 9, '14.99', '2020-11-25 17:23:00', 1),
(7, '29kg bag', 'Mid range flight', 9, '38.99', '2020-11-25 17:23:00', 1),
(8, '26kg bag', 'Mid range flight', 9, '26.99', '2020-11-25 17:23:00', 1),
(9, 'Meal Voucher', '', 9, '4.00', '2020-11-25 17:23:00', 1),
(10, 'Meal Voucher', '', 9, '4.00', '2020-11-25 17:23:00', 1),
(11, 'Meal Voucher', '', 9, '4.00', '2020-11-25 17:23:00', 1),
(12, 'Meal Voucher', '', 9, '4.00', '2020-11-25 17:23:00', 1),
(13, 'Extra legroom seat', 'Mid range flight', 9, '24.99', '2020-11-25 17:23:00', 1),
(14, 'Up front seat', 'Mid range flight', 9, '15.99', '2020-11-25 17:23:00', 1),
(15, 'Up front seat', 'Mid range flight', 9, '15.99', '2020-11-25 17:23:00', 1),
(16, 'Up front seat', 'Mid range flight', 9, '15.99', '2020-11-25 17:23:00', 1),
(17, 'Adult Ticket', 'Belfast International to Alicante Dec 19th', 9, '228.99', '2020-11-25 17:41:00', 2),
(18, 'Adult Ticket', 'Belfast International to Alicante Dec 19th', 9, '228.99', '2020-11-25 17:41:00', 2),
(19, 'Adult Ticket', 'Belfast International to Alicante Dec 19th', 9, '228.99', '2020-11-25 17:41:00', 2),
(20, 'Adult Ticket', 'Belfast International to Alicante Dec 19th', 9, '228.99', '2020-11-25 17:41:00', 2),
(21, 'Adult Ticket', 'Belfast International to Alicante Dec 19th', 9, '228.99', '2020-11-25 17:41:00', 2),
(22, 'Adult Ticket', 'Belfast International to Alicante Dec 19th', 9, '228.99', '2020-11-25 17:41:00', 2),
(23, 'Up front seat', 'Mid range flight', 9, '15.99', '2020-11-25 17:41:00', 2),
(24, 'Up front seat', 'Mid range flight', 9, '15.99', '2020-11-25 17:41:00', 2),
(25, 'Up front seat', 'Mid range flight', 9, '15.99', '2020-11-25 17:41:00', 2),
(26, 'Up front seat', 'Mid range flight', 9, '15.99', '2020-11-25 17:41:00', 2),
(27, 'Standard seat', 'Mid range flight', 9, '5.99', '2020-11-25 17:41:00', 2),
(28, 'Standard seat', 'Mid range flight', 9, '5.99', '2020-11-25 17:41:00', 2),
(29, 'Meal Voucher', '', 9, '4.00', '2020-11-25 17:41:00', 2),
(30, 'Meal Voucher', '', 9, '4.00', '2020-11-25 17:41:00', 2),
(31, 'Meal Voucher', '', 9, '4.00', '2020-11-25 17:41:00', 2),
(32, 'Meal Voucher', '', 9, '4.00', '2020-11-25 17:41:00', 2),
(33, 'Meal Voucher', '', 9, '4.00', '2020-11-25 17:41:00', 2),
(34, 'Meal Voucher', '', 9, '4.00', '2020-11-25 17:41:00', 2),
(35, '29kg bag', 'Mid range flight', 9, '38.99', '2020-11-25 17:41:00', 2),
(36, '29kg bag', 'Mid range flight', 9, '38.99', '2020-11-25 17:41:00', 2),
(37, '15kg bag', 'Mid range flight', 9, '9.99', '2020-11-25 17:41:00', 2),
(38, '15kg bag', 'Mid range flight', 9, '9.99', '2020-11-25 17:41:00', 2),
(39, '23kg bag', 'Mid range flight', 9, '14.99', '2020-11-25 17:41:00', 2),
(40, '26kg bag', 'Mid range flight', 9, '26.99', '2020-11-25 17:41:00', 2),
(41, 'Adult Ticket', 'Belfast International to Alicante Dec 19th', 9, '228.99', '2020-11-25 18:01:00', 3),
(42, 'Adult Ticket', 'Belfast International to Alicante Dec 19th', 9, '228.99', '2020-11-25 18:01:00', 3),
(43, 'Adult Ticket', 'Belfast International to Alicante Dec 19th', 9, '228.99', '2020-11-25 18:01:00', 3),
(44, 'Adult Ticket', 'Belfast International to Alicante Dec 19th', 9, '228.99', '2020-11-25 18:01:00', 3),
(45, 'Standard seat', 'Mid range flight', 9, '5.99', '2020-11-25 18:01:00', 3),
(46, 'Standard seat', 'Mid range flight', 9, '5.99', '2020-11-25 18:01:00', 3),
(47, 'Standard seat', 'Mid range flight', 9, '5.99', '2020-11-25 18:01:00', 3),
(48, 'Standard seat', 'Mid range flight', 9, '5.99', '2020-11-25 18:01:00', 3),
(49, 'Meal Voucher', '', 9, '4.00', '2020-11-25 18:01:00', 3),
(50, 'Meal Voucher', '', 9, '4.00', '2020-11-25 18:01:00', 3),
(51, 'Meal Voucher', '', 9, '4.00', '2020-11-25 18:01:00', 3),
(52, 'Meal Voucher', '', 9, '4.00', '2020-11-25 18:01:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Country`
--

CREATE TABLE `Country` (
  `CountryID` int(11) NOT NULL,
  `CountryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Country`
--

INSERT INTO `Country` (`CountryID`, `CountryName`) VALUES
(1, 'France'),
(2, 'Germany'),
(3, 'Italy'),
(4, 'Netherlands'),
(5, 'Portugal'),
(6, 'Spain'),
(7, 'Switzerland'),
(8, 'United Kingdom'),
(9, 'Ireland'),
(10, 'Korea, Republic Of'),
(11, 'Poland'),
(12, 'Turkey'),
(13, 'Croatia');

-- --------------------------------------------------------

--
-- Table structure for table `Currency`
--

CREATE TABLE `Currency` (
  `CurrencyID` int(11) NOT NULL,
  `CurrencyType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Currency`
--

INSERT INTO `Currency` (`CurrencyID`, `CurrencyType`) VALUES
(1, 'CSK Czech Koruna'),
(2, 'DKK Danish Krone'),
(3, 'EUR Euros'),
(4, 'HUF Hungarian Forints'),
(5, 'MAD Moroccan Dirhams'),
(6, 'PLN Polish Zloty'),
(7, 'SEK Swedish Krona'),
(8, 'CHF Swiss Francs'),
(9, 'GBP British Pounds'),
(10, 'USD US Dollars');

-- --------------------------------------------------------

--
-- Table structure for table `CurrentFlightPrices`
--

CREATE TABLE `CurrentFlightPrices` (
  `FlightPriceID` int(11) NOT NULL,
  `FlightDesc` varchar(255) NOT NULL,
  `DateOfFlight` date NOT NULL,
  `DateOfPricing` date NOT NULL,
  `FlightPrice` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CurrentFlightPrices`
--

INSERT INTO `CurrentFlightPrices` (`FlightPriceID`, `FlightDesc`, `DateOfFlight`, `DateOfPricing`, `FlightPrice`) VALUES
(1, 'BFS to ALC', '2020-12-19', '2020-11-19', '228.99'),
(2, 'ALC to BFS', '2020-12-26', '2020-11-19', '23.99'),
(3, 'BFS to KRK', '2020-12-24', '2020-11-19', '94.99'),
(4, 'KRK to BFS', '2020-12-31', '2020-11-19', '28.99'),
(5, 'EDI to BER', '2020-12-18', '2020-11-19', '49.99'),
(6, 'BER to EDI', '2020-12-24', '2020-11-19', '27.51'),
(7, 'EDI to TFS', '2020-12-09', '2020-11-20', '52.99'),
(8, 'TFS to EDI', '2020-12-16', '2020-11-20', '34.99'),
(9, 'MAN to CDG', '2020-12-11', '2020-11-20', '70.99'),
(10, 'CDG to FAO', '2020-12-23', '2020-11-20', '82.44'),
(11, 'FAO to BFS', '2020-12-29', '2020-11-20', '16.40'),
(12, 'BFS to FAO', '2020-12-31', '2020-11-20', '107.42'),
(13, 'LGW to BOD', '2020-12-24', '2020-11-20', '64.99'),
(14, 'BOD to LGW', '2020-12-31', '2020-11-20', '36.68'),
(15, 'LGW to SPU', '2021-04-01', '2020-11-20', '50.99'),
(16, 'SPU to LGW', '2021-04-08', '2020-11-20', '23.21'),
(17, 'LTN to NCE', '2021-02-11', '2020-11-20', '30.99'),
(18, 'NCE to LTN', '2021-02-18', '2020-11-20', '25.44'),
(19, 'LTN to PMI', '2020-12-15', '2020-11-20', '111.99'),
(20, 'PMI to LTN', '2020-12-22', '2020-11-20', '21.99'),
(21, 'LPL to GVA', '2020-12-26', '2020-11-20', '288.99'),
(22, 'GVA to LPL', '2020-12-28', '2020-11-20', '26.99'),
(23, 'BRS to ACE', '2020-12-10', '2020-11-20', '56.99'),
(24, 'ACE to BRS', '2020-12-24', '2020-11-20', '28.99'),
(25, 'GLA to AMS', '2021-02-05', '2020-11-20', '34.99'),
(26, 'AMS to GLA', '2021-02-12', '2020-11-20', '21.99'),
(27, 'MAN to DLM', '2021-03-28', '2020-11-20', '224.99'),
(28, 'DLM to MAN', '2021-03-31', '2020-11-20', '21.99');

-- --------------------------------------------------------

--
-- Table structure for table `EasyPlusMembership`
--

CREATE TABLE `EasyPlusMembership` (
  `EasyJetPlusMemberID` int(11) NOT NULL,
  `MembershipNumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EasyPlusMembership`
--

INSERT INTO `EasyPlusMembership` (`EasyJetPlusMemberID`, `MembershipNumber`) VALUES
(1, '1152173618841848'),
(2, '5468484175531828'),
(3, '1444371328725726'),
(4, '7418388123586324'),
(5, '3312375061185321'),
(6, '8070412285513406'),
(7, '6422774178020353'),
(8, '7550118828516180'),
(9, '5084522210715505'),
(10, '7130534426554447'),
(11, '4253588522504153'),
(12, '1382551750266665'),
(13, '6630373175486378'),
(14, '1780236626121307'),
(15, '7836623021550006'),
(16, '7330306671633446'),
(17, '6156356277662465'),
(18, '7122110784070282'),
(19, '0721707842314873'),
(20, '7426263365123236'),
(21, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `Flight`
--

CREATE TABLE `Flight` (
  `FlightID` int(11) NOT NULL,
  `FlightNumber` varchar(255) NOT NULL,
  `FlightDeptDate` date NOT NULL,
  `FlightDeptTime` time NOT NULL,
  `FlightArrDate` date NOT NULL,
  `FlightArrTime` time NOT NULL,
  `FlightStatusID` int(11) NOT NULL,
  `RouteID` int(11) NOT NULL,
  `AircraftID` int(11) NOT NULL,
  `FlightPriceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Flight`
--

INSERT INTO `Flight` (`FlightID`, `FlightNumber`, `FlightDeptDate`, `FlightDeptTime`, `FlightArrDate`, `FlightArrTime`, `FlightStatusID`, `RouteID`, `AircraftID`, `FlightPriceID`) VALUES
(1, 'EZY6703', '2020-12-19', '15:15:00', '2020-12-19', '19:15:00', 1, 1, 4, 1),
(2, 'EZY6704', '2020-12-26', '17:55:00', '2020-12-26', '20:05:00', 1, 2, 4, 2),
(3, 'EZY6783', '2020-12-24', '07:00:00', '2020-12-24', '10:45:00', 1, 3, 4, 3),
(4, 'EZY6784', '2020-12-31', '11:15:00', '2020-12-31', '13:15:00', 1, 4, 4, 4),
(5, 'EZY5548', '2020-12-18', '12:45:00', '2020-12-18', '15:50:00', 1, 5, 4, 5),
(6, 'EJU5547', '2020-12-24', '17:15:00', '2020-12-24', '18:30:00', 1, 6, 4, 6),
(7, 'EZY6949', '2020-12-09', '09:55:00', '2020-12-09', '14:40:00', 1, 7, 4, 7),
(8, 'EZY6950', '2020-12-16', '15:20:00', '2020-12-16', '20:15:00', 1, 8, 4, 8),
(9, 'EZY1931', '2020-12-11', '15:25:00', '2020-12-11', '17:55:00', 1, 9, 4, 9),
(10, 'EJU3951', '2020-12-23', '11:15:00', '2020-12-23', '13:00:00', 1, 10, 4, 10),
(11, 'EZY6794', '2020-12-29', '20:00:00', '2020-12-29', '23:00:00', 1, 11, 4, 11),
(12, 'EZY6793', '2020-12-31', '16:25:00', '2020-12-31', '19:30:00', 1, 12, 4, 12),
(13, 'EJU8019', '2020-12-24', '08:10:00', '2020-12-24', '10:50:00', 1, 13, 4, 13),
(14, 'EJU8020', '2020-12-31', '06:45:00', '2020-12-31', '07:25:00', 1, 14, 4, 14),
(15, 'EZY8393', '2021-04-01', '12:50:00', '2021-04-01', '16:25:00', 1, 15, 4, 15),
(16, 'EZY8396', '2021-04-08', '17:00:00', '2021-04-08', '18:35:00', 1, 16, 4, 16),
(17, 'EZY2121', '2021-02-11', '17:00:00', '2021-02-11', '20:05:00', 1, 17, 3, 17),
(18, 'EZT2122', '2021-02-18', '20:35:00', '2021-02-18', '21:45:00', 1, 18, 3, 18),
(19, 'EJU2277', '2020-12-15', '12:00:00', '2020-12-15', '15:20:00', 1, 19, 3, 19),
(20, 'EZY2274', '2020-12-22', '16:00:00', '2020-12-22', '17:35:00', 1, 20, 3, 20),
(21, 'EZY7281', '2020-12-26', '13:45:00', '2020-12-26', '16:40:00', 1, 21, 3, 21),
(22, 'EZY7284', '2020-12-28', '10:30:00', '2020-12-28', '11:30:00', 1, 22, 3, 22),
(23, 'EZY6193', '2020-12-10', '08:00:00', '2020-12-10', '11:55:00', 1, 23, 3, 23),
(24, 'EZY6194', '2020-12-24', '12:50:00', '2020-12-24', '16:50:00', 1, 24, 3, 24),
(25, 'EJU6853', '2021-02-05', '11:05:00', '2021-02-05', '13:40:00', 1, 25, 3, 25),
(26, 'EJU6854', '2021-02-12', '14:15:00', '2021-02-12', '14:50:00', 1, 26, 3, 26),
(27, 'EZY1943', '2021-03-28', '06:45:00', '2021-03-28', '13:05:00', 1, 27, 3, 27),
(28, 'EZY1944', '2021-03-31', '13:55:00', '2021-03-31', '16:30:00', 1, 28, 3, 28);

-- --------------------------------------------------------

--
-- Table structure for table `FlightRange`
--

CREATE TABLE `FlightRange` (
  `FlightRangeID` int(11) NOT NULL,
  `FlightDesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FlightRange`
--

INSERT INTO `FlightRange` (`FlightRangeID`, `FlightDesc`) VALUES
(1, 'Short Range'),
(2, 'Mid Range'),
(3, 'Long Range');

-- --------------------------------------------------------

--
-- Table structure for table `FlightStatus`
--

CREATE TABLE `FlightStatus` (
  `FlightStatusID` int(11) NOT NULL,
  `FlightStatusDesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FlightStatus`
--

INSERT INTO `FlightStatus` (`FlightStatusID`, `FlightStatusDesc`) VALUES
(1, 'Confirmed'),
(2, 'Delayed'),
(3, 'Cancelled'),
(4, 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `InternationalDialingCode`
--

CREATE TABLE `InternationalDialingCode` (
  `InternationalDialingCodeID` int(11) NOT NULL,
  `InternationalDialingCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `InternationalDialingCode`
--

INSERT INTO `InternationalDialingCode` (`InternationalDialingCodeID`, `InternationalDialingCode`) VALUES
(1, 'France +33'),
(2, 'Germany +49'),
(3, 'Italy +39'),
(4, 'Netherlands +31'),
(5, 'Portugal +351'),
(6, 'Spain +34'),
(7, 'Switzerland +41'),
(8, 'United Kingdom +44');

-- --------------------------------------------------------

--
-- Table structure for table `Passenger`
--

CREATE TABLE `Passenger` (
  `PassengerID` int(11) NOT NULL,
  `PassengerDetailsID` int(11) NOT NULL,
  `BookingID` int(11) NOT NULL,
  `SeatID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Passenger`
--

INSERT INTO `Passenger` (`PassengerID`, `PassengerDetailsID`, `BookingID`, `SeatID`, `FlightID`) VALUES
(3, 1, 1, 1, 1),
(4, 2, 1, 2, 1),
(5, 3, 1, 3, 1),
(6, 4, 1, 4, 1),
(7, 5, 2, 5, 1),
(8, 6, 2, 6, 1),
(9, 7, 2, 7, 1),
(10, 8, 2, 8, 1),
(11, 9, 2, 9, 1),
(12, 10, 2, 10, 1),
(13, 11, 3, 11, 1),
(14, 12, 3, 12, 1),
(15, 13, 3, 13, 1),
(16, 14, 3, 14, 1),
(17, 15, 4, 15, 1),
(18, 16, 4, 16, 1),
(19, 17, 4, 17, 1),
(20, 18, 4, 18, 1),
(21, 19, 4, 19, 1),
(22, 20, 4, 20, 1),
(23, 21, 5, 27, 19),
(24, 22, 5, 28, 19),
(25, 23, 6, 29, 19),
(26, 24, 6, 30, 19),
(27, 25, 7, 31, 19),
(28, 26, 8, 32, 19),
(29, 27, 9, 33, 19),
(30, 28, 9, 34, 19),
(31, 29, 10, 35, 19),
(32, 30, 10, 36, 19),
(33, 31, 11, 37, 19),
(34, 32, 12, 38, 19),
(35, 33, 13, 39, 19),
(36, 34, 14, 40, 19),
(37, 35, 14, 41, 19),
(38, 36, 15, 53, 25),
(39, 37, 15, 54, 25),
(40, 38, 16, 55, 25),
(41, 39, 16, 56, 25),
(42, 40, 17, 57, 25),
(43, 41, 17, 58, 25),
(44, 42, 18, 59, 25),
(45, 43, 18, 60, 25),
(46, 44, 19, 61, 25),
(47, 45, 19, 62, 25),
(48, 46, 19, 63, 25),
(49, 47, 19, 64, 25),
(50, 48, 20, 65, 25),
(51, 49, 21, 66, 25),
(52, 50, 22, 67, 25),
(53, 51, 23, 68, 25),
(54, 52, 24, 69, 25),
(55, 53, 24, 70, 25);

-- --------------------------------------------------------

--
-- Table structure for table `PassengerAge`
--

CREATE TABLE `PassengerAge` (
  `PassengerAgeID` int(11) NOT NULL,
  `Age` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PassengerAge`
--

INSERT INTO `PassengerAge` (`PassengerAgeID`, `Age`) VALUES
(1, '18+'),
(2, '17'),
(3, '16'),
(4, '15'),
(5, '14'),
(6, '13'),
(7, '12'),
(8, '11'),
(9, '10'),
(10, '9'),
(11, '8'),
(12, '7'),
(13, '6'),
(14, '5'),
(15, '4'),
(16, '3'),
(17, '2');

-- --------------------------------------------------------

--
-- Table structure for table `PassengerDetails`
--

CREATE TABLE `PassengerDetails` (
  `PassengerDetailsID` int(11) NOT NULL,
  `PassengerFirstName` varchar(255) NOT NULL,
  `PassengerSurname` varchar(255) NOT NULL,
  `PassengerTypeID` int(11) NOT NULL,
  `TitleID` int(11) NOT NULL,
  `PassengerAgeID` int(11) NOT NULL,
  `TravelReasonID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PassengerDetails`
--

INSERT INTO `PassengerDetails` (`PassengerDetailsID`, `PassengerFirstName`, `PassengerSurname`, `PassengerTypeID`, `TitleID`, `PassengerAgeID`, `TravelReasonID`) VALUES
(1, 'Adam', 'Gavigan', 1, 1, 1, 1),
(2, 'Alexander', 'O\'Neill', 1, 1, 1, 2),
(3, 'Amy-Lee', 'Connon', 2, 3, 4, 2),
(4, 'Aravinth', 'Ravichandiran', 1, 1, 1, 1),
(5, 'Caitlin', 'O\'Hara', 1, 3, 2, 2),
(6, 'Carla', 'Rush', 1, 3, 1, 2),
(7, 'Chris', 'Forsythe', 1, 1, 2, 1),
(8, 'Connor', 'Lennon', 2, 1, 5, 2),
(9, 'Conor', 'Loughran', 1, 1, 1, 2),
(10, 'Damien', 'McGloin', 1, 1, 1, 2),
(11, 'Daniel', 'McAuley', 1, 1, 1, 2),
(12, 'Danielle', 'Neill', 1, 4, 1, 2),
(13, 'David', 'Houston', 1, 1, 1, 2),
(14, 'David', 'Whithorn', 1, 1, 1, 2),
(15, 'David', 'Finlay', 1, 1, 1, 2),
(16, 'Desmond', 'Shearer', 1, 1, 1, 2),
(17, 'Emma', 'Deane', 1, 2, 1, 2),
(18, 'Gabriel', 'McKeon', 1, 1, 1, 2),
(19, 'Gareth', 'Alexander', 1, 1, 1, 2),
(20, 'Hannah', 'Gallagher', 1, 3, 1, 2),
(21, 'Helder', 'Santos', 1, 1, 1, 2),
(22, 'Jaswanth Kasivi', 'Ramesh', 1, 1, 1, 2),
(23, 'Joseph', 'Collins', 1, 1, 1, 2),
(24, 'Kieran', 'Lambe', 1, 1, 1, 2),
(25, 'Kirsty', 'McQuoid', 1, 2, 1, 2),
(26, 'Laura', 'Gaffey', 1, 2, 1, 2),
(27, 'Lee', 'Service', 1, 1, 1, 2),
(28, 'Lia', 'Grogan', 1, 4, 1, 2),
(29, 'Mark', 'Montgomery', 1, 1, 1, 2),
(30, 'Matthew', 'Armstrong', 1, 1, 1, 2),
(31, 'Michael', 'Westerman', 1, 1, 1, 2),
(32, 'Michael', 'Wong', 1, 1, 1, 2),
(33, 'Naomi', 'McCreedy', 1, 3, 1, 2),
(34, 'Mollie', 'Hegarty', 1, 3, 1, 2),
(35, 'Natasha', 'McCabe', 1, 3, 1, 2),
(36, 'Nikolay', 'Nikolov', 1, 1, 1, 2),
(37, 'Orla', 'McMahon', 1, 2, 1, 2),
(38, 'Patrick', 'Moran', 1, 1, 1, 2),
(39, 'Rebecca', 'Sexton', 1, 4, 1, 2),
(40, 'Rebekkah', 'O\'Hare', 1, 3, 1, 2),
(41, 'Sancha', 'O\'Neill', 1, 3, 1, 2),
(42, 'Sean', 'McBride', 1, 1, 1, 2),
(43, 'Shannon', 'Duffy', 1, 3, 1, 2),
(44, 'Shaw', 'O\'Donnell', 1, 1, 1, 2),
(45, 'Simon', 'Harte', 1, 1, 1, 2),
(46, 'Thomas', 'Scott', 1, 1, 1, 2),
(47, 'Veronica', 'Tate', 1, 2, 1, 2),
(48, 'William', 'Dupont', 1, 1, 1, 2),
(49, 'Yifan', 'Shi', 1, 1, 1, 2),
(50, 'Aidan', 'McGowan', 1, 1, 1, 2),
(51, 'Neil', 'Anderson', 1, 1, 1, 2),
(52, 'Moira', 'Watson', 1, 2, 1, 2),
(53, 'SEAT', 'CELLO', 1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PassengerType`
--

CREATE TABLE `PassengerType` (
  `PassengerTypeID` int(11) NOT NULL,
  `PassengerType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PassengerType`
--

INSERT INTO `PassengerType` (`PassengerTypeID`, `PassengerType`) VALUES
(1, 'Adult'),
(2, 'Child'),
(3, 'Infant');

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `PaymentID` int(11) NOT NULL,
  `PaymentMadeDate` date NOT NULL,
  `CurrencyID` int(11) NOT NULL,
  `Amount` decimal(12,2) NOT NULL,
  `CardholderName` varbinary(512) NOT NULL,
  `CardNumber` varbinary(512) NOT NULL,
  `ExpiryDate` varbinary(512) NOT NULL,
  `CVV` varbinary(512) NOT NULL,
  `SaveDetails` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Payment`
--

INSERT INTO `Payment` (`PaymentID`, `PaymentMadeDate`, `CurrencyID`, `Amount`, `CardholderName`, `CardNumber`, `ExpiryDate`, `CVV`, `SaveDetails`) VALUES
(1, '2020-11-25', 9, '1100.88', 0xe2a0ff2771e42d74a8946b4bd3e678fc, 0xce3d1c54513bdc9af7352e953466650a30883ad8d8f370949105dfe87facc389, 0x834cd4da2a452f18930828fd52b14b35, 0x5168c5dfc07ef3db9a08dd102d63bfce, 1),
(2, '2020-07-23', 9, '1613.82', 0x9884099116610f1b39195866beef0b42, 0xa994a6c06fd8f72d45f1cef3b3687e7764f892786a2a005c0b3f57d080939c25, 0x4ab3c88d2f3179b0ab5e3af1e1756d7e, 0x89b30958492ad9a284f1e3d9c3f944f3, 1),
(3, '2020-09-26', 9, '955.92', 0xb1f2966a6d7c62ce76e0724f6087f593, 0x8a2801ca385742e6c5492e99325cd42930883ad8d8f370949105dfe87facc389, 0x520674b36b329bc4b9b8d15b3bfdf9a1, 0x2c1ce0798793e5f67d47f52bea99dc78, 1),
(4, '2020-11-14', 9, '1109.50', 0x60f19e500cc8f955b50dc4813d5e9877, 0x957fcc5a385d661caaf97c83fca40c2e30883ad8d8f370949105dfe87facc389, 0x34cf294c7a06ebea22defca138e4e3af, 0xa4d14c14a268a916691a4aa9045f1580, 1),
(5, '2020-04-01', 9, '382.93', 0xb11fde2e0730c82d8aa698389ba7c357, 0x07db1db334a800bb94ee05caa79a3cde30883ad8d8f370949105dfe87facc389, 0xc40578a3732a5b2ea1d12391d99c916d, 0x6669888659e4384116388aebc32b4eb8, 1),
(6, '2020-08-07', 9, '875.33', 0xd23d9d59762748eaee9a6a11cb3cb372, 0x58e77d930ffcf0e1cef773032476933f30883ad8d8f370949105dfe87facc389, 0xa8adb82c3a0a9f76ed3e42b82dfb959d, 0xcb8218745271797a7ef321b13ce90522, 1),
(7, '2020-03-15', 9, '789.37', 0xd10864d9021ccc1c411e406e1f68091e, 0xf640b629bbd835f9200c3d777fe56e9830883ad8d8f370949105dfe87facc389, 0x5ca5695d4847161dda49f6bec6057d79, 0x5b04d5acc1c7077b9cb382336c801e06, 1),
(8, '2020-09-23', 9, '908.84', 0x6193f9a16daca11ee5b1804b6cd110c5, 0x46d793f644d7d85d9edc642b3ebe745f30883ad8d8f370949105dfe87facc389, 0x8bcf991606fdb2f93d450a3d7b2ea1de, 0xbbef26e94329ef8908012fec35e2d6dc, 1),
(9, '2020-03-14', 9, '825.60', 0x542076a82740b02baee59cf4cbdf346f, 0x023ba8615d4a51a1760d5dfba3557ab330883ad8d8f370949105dfe87facc389, 0x99f409912764d8f2a659d4f033ee7cde, 0x428db0aec39b8c474f635809c6479e41, 1),
(10, '2020-10-25', 9, '276.71', 0xfd9c1e8a58116e80bab29f82c1833e0e, 0xb0ad6311189e9d8c47519be5b42a5fd030883ad8d8f370949105dfe87facc389, 0x9df4774ba093ee5d50df06ea73640694, 0x47402bddce0dc9ea7b691979bd30db56, 1),
(11, '2020-01-20', 9, '1191.49', 0xb689967fd1afe14e44dfb4ff33e01fa3, 0xb3e9c5feb740a28a0573f5b1dcaa611130883ad8d8f370949105dfe87facc389, 0x6c50b5a738c0dbae6567b80796476482, 0x86315d212fbb45296a24e2c09ffe371a, 1),
(12, '2020-09-24', 9, '842.39', 0xff2bf202d554e0ed58277e690f83d0da, 0x327d0f69cb9cf3019ed3e2b0a5f1211430883ad8d8f370949105dfe87facc389, 0x267d0800df3a8fb344797169d2e209f6, 0xff8afdb061b5f2330a6d69254f9d79de, 1),
(13, '2020-03-29', 9, '933.62', 0x7ebff73a22173d1b2f564a25f40d0558, 0xa82ffa8f09f56a8b1e3cd7ab571bceee30883ad8d8f370949105dfe87facc389, 0xd06cc665ff587adc024b0ac17a44b2db, 0x0d0f30b2fe73be5258d1f99759c5c754, 1),
(14, '2020-05-07', 9, '833.98', 0xa8a1a89ac27f2d5af8a269a0554fa02b, 0x4796d712f9158820abea095ce9e37dd330883ad8d8f370949105dfe87facc389, 0xa8adb82c3a0a9f76ed3e42b82dfb959d, 0xf5e1fc591f24d00d2585b72442ab7ff3, 1),
(15, '2020-07-27', 9, '957.47', 0xfad517d926946c175c291e4a6c89adf0, 0x885a0a03386afdfb88c8f11798452c8d30883ad8d8f370949105dfe87facc389, 0xb607d9f1e27fb5a6c3acaff68c5027ef, 0x8b59f10426379b6f622a8ffc40188dc0, 1),
(16, '2020-11-07', 9, '834.08', 0xa63741a0d253fdbb35941394a01cd078, 0x5aeba847a8a6ebce43f3b9ba9f1ee8e130883ad8d8f370949105dfe87facc389, 0xb868b0f05fda4ba98a37d91067d2c32b, 0xd4486d4aef0be66b6deb8ffbbb029eb4, 1),
(17, '2020-06-14', 9, '738.24', 0xdb1c65108db373ff29119cb6b301bbc6ff7eddae83bafc7cba84d1dc4d4d43cc, 0xe3cf7e3e7046a2deb3a64f83a955c54030883ad8d8f370949105dfe87facc389, 0x449cc37783da26dba77dae7e381d2746, 0xeb40777d6abf8ccad2aaf7d55a57f17e, 1),
(18, '2020-01-31', 9, '898.51', 0xf3ef7abcb72c61b20b95b12764a24612, 0xfa16240f9c592b26534b3b9f5d08f0b330883ad8d8f370949105dfe87facc389, 0x33b2c497189f999e7abad8cd2786c082, 0x2704c3491d3d21b76e17b07ddc39c03d, 1),
(19, '2020-09-13', 9, '847.69', 0x20e19002191bc8a7f4b8d5344a0d33b7, 0xb369f7235ea638f1b06aa117f8fb102f30883ad8d8f370949105dfe87facc389, 0x081887e65352eec3fb72005a16a708dc, 0x4e39b9f58cd0d4e4fca1b9c0fd5da308, 1),
(20, '2020-11-13', 9, '567.63', 0xce2798f99222e3a6b05910692a07ee10, 0x76a58cbd666e97fa563887e97550085830883ad8d8f370949105dfe87facc389, 0x36ba2a90a2d9ce184f50516629002d2d, 0xeade3faa6dcd8a9a70fdccbe94368179, 1),
(21, '2020-07-15', 9, '297.93', 0x5d9f6a6cc93b9700d4045aa110aa6e0a, 0x0dc881467549bd9237b5526bdb2d28ca30883ad8d8f370949105dfe87facc389, 0xb506468a254750ccbde6a825bd0709f3, 0x4856953c772b6ed10f576e7ab7c05a12, 1),
(22, '2020-04-15', 9, '342.73', 0x86fc2d744524d200b1ec3b40c6c1a3a7, 0xe90371f486a6fce9706f4ce4215b8f4030883ad8d8f370949105dfe87facc389, 0x3d69ea985d8ca4c3202661d93c92a6f7, 0xe8c4d77fb1341c00abc240f51c88d564, 1),
(23, '2020-01-27', 9, '343.58', 0xd1f8ff21fd7f1e977eb5c29e133f97e6, 0xd222c76fb673a33351d2269a1183aacf30883ad8d8f370949105dfe87facc389, 0xf303b5dd5e579e24d16d827ff4b269b6, 0xbf6dd4a3e34ffd454b185f4fec33829c, 1),
(24, '2020-05-30', 9, '899.83', 0x70bb06517e6abc1140240905575776c5, 0x271b319836f2445402f0bfb5f72688b630883ad8d8f370949105dfe87facc389, 0xb46c09da47e00bcbfb9d827e50bf0354, 0x5125aa1f1f032389522f50e285143468, 1),
(25, '2020-10-28', 9, '265.00', 0xef1d8cf4e37a8dd1e6f20661074476e1, 0x5ebd7bba1c2010e09b465635fc36b82430883ad8d8f370949105dfe87facc389, 0x2865a06ed7caf3b78f77404b1878f856, 0x68181a550c3ee44302f84511e1a9fd7c, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Route`
--

CREATE TABLE `Route` (
  `RouteID` int(11) NOT NULL,
  `DepartureAirport` varchar(255) NOT NULL,
  `ArrivalAirport` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Route`
--

INSERT INTO `Route` (`RouteID`, `DepartureAirport`, `ArrivalAirport`) VALUES
(1, 'Belfast International', 'Alicante'),
(2, 'Alicante', 'Belfast International'),
(3, 'Belfast International', 'Krakow'),
(4, 'Krakow', 'Belfast International'),
(5, 'Edinburgh', 'Berlin Brandenburg'),
(6, 'Berlin Brandenburg', 'Edinburgh'),
(7, 'Edinburgh', 'Tenerife South'),
(8, 'Tenerife South', 'Edinburgh'),
(9, 'Manchester', 'Charles De Gaulle'),
(10, 'Charles De Gaulle', 'Faro'),
(11, 'Faro', 'Belfast International'),
(12, 'Belfast International', 'Faro'),
(13, 'London Gatwick', 'Bordeaux'),
(14, 'Bordeaux', 'London Gatwick'),
(15, 'London Gatwick', 'Split'),
(16, 'Split', 'London Gatwick'),
(17, 'London Luton', 'Nice'),
(18, 'Nice', 'London Luton'),
(19, 'London Luton', 'Majorca Palma'),
(20, 'Majorca Palma', 'London Luton'),
(21, 'Liverpool', 'Geneva'),
(22, 'Geneva', 'Liverpool'),
(23, 'Bristol', 'Lanzarote'),
(24, 'Lanzarote', 'Bristol'),
(25, 'Glasgow', 'Amsterdam'),
(26, 'Amsterdam', 'Glasgow'),
(27, 'Manchester', 'Dalaman'),
(28, 'Dalaman', 'Manchester');

-- --------------------------------------------------------

--
-- Table structure for table `Seating`
--

CREATE TABLE `Seating` (
  `SeatID` int(11) NOT NULL,
  `RowNumber` int(11) NOT NULL,
  `SeatLetter` varchar(255) NOT NULL,
  `SeatingTypeID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL,
  `RouteID` int(11) NOT NULL,
  `FlightPriceID` int(11) NOT NULL,
  `PassengerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Seating`
--

INSERT INTO `Seating` (`SeatID`, `RowNumber`, `SeatLetter`, `SeatingTypeID`, `FlightID`, `RouteID`, `FlightPriceID`, `PassengerID`) VALUES
(1, 1, 'A', 1, 1, 1, 1, 3),
(2, 2, 'A', 2, 1, 1, 1, 4),
(3, 3, 'B', 2, 1, 1, 1, 5),
(4, 3, 'C', 2, 1, 1, 1, 6),
(5, 4, 'D', 2, 1, 1, 1, 7),
(6, 4, 'E', 2, 1, 1, 1, 8),
(7, 5, 'E', 2, 1, 1, 1, 9),
(8, 5, 'F', 2, 1, 1, 1, 10),
(9, 7, 'F', 4, 1, 1, 1, 11),
(10, 7, 'A', 4, 1, 1, 1, 12),
(11, 8, 'B', 4, 1, 1, 1, 13),
(12, 8, 'C', 4, 1, 1, 1, 14),
(13, 8, 'D', 4, 1, 1, 1, 15),
(14, 8, 'E', 4, 1, 1, 1, 16),
(15, 9, 'E', 4, 1, 1, 1, 17),
(16, 9, 'F', 4, 1, 1, 1, 18),
(17, 9, 'A', 4, 1, 1, 1, 19),
(18, 9, 'B', 4, 1, 1, 1, 20),
(19, 12, 'A', 1, 1, 1, 1, 21),
(20, 12, 'B', 1, 1, 1, 1, 22),
(21, 13, 'C', 1, 1, 1, 1, NULL),
(22, 13, 'D', 1, 1, 1, 1, NULL),
(23, 30, 'A', 4, 1, 1, 1, NULL),
(24, 30, 'B', 4, 1, 1, 1, NULL),
(25, 31, 'C', 4, 1, 1, 1, NULL),
(26, 31, 'D', 4, 1, 1, 1, NULL),
(27, 1, 'A', 1, 19, 19, 19, 23),
(28, 1, 'B', 1, 19, 19, 19, 24),
(29, 2, 'C', 2, 19, 19, 19, 25),
(30, 2, 'D', 2, 19, 19, 19, 26),
(31, 3, 'E', 2, 19, 19, 19, 27),
(32, 3, 'F', 2, 19, 19, 19, 28),
(33, 4, 'A', 2, 19, 19, 19, 29),
(34, 4, 'B', 2, 19, 19, 19, 30),
(35, 5, 'C', 2, 19, 19, 19, 31),
(36, 5, 'D', 2, 19, 19, 19, 32),
(37, 6, 'E', 4, 19, 19, 19, 33),
(38, 6, 'F', 4, 19, 19, 19, 34),
(39, 7, 'A', 4, 19, 19, 19, 35),
(40, 7, 'B', 4, 19, 19, 19, 36),
(41, 8, 'C', 4, 19, 19, 19, 37),
(42, 8, 'D', 4, 19, 19, 19, NULL),
(43, 9, 'E', 4, 19, 19, 19, NULL),
(44, 9, 'F', 4, 19, 19, 19, NULL),
(45, 10, 'A', 1, 19, 19, 19, NULL),
(46, 10, 'B', 1, 19, 19, 19, NULL),
(47, 11, 'C', 1, 19, 19, 19, NULL),
(48, 11, 'D', 1, 19, 19, 19, NULL),
(49, 25, 'A', 4, 19, 19, 19, NULL),
(50, 25, 'B', 4, 19, 19, 19, NULL),
(51, 26, 'C', 4, 19, 19, 19, NULL),
(52, 26, 'D', 4, 19, 19, 19, NULL),
(53, 1, 'A', 1, 25, 25, 25, 38),
(54, 1, 'B', 1, 25, 25, 25, 39),
(55, 2, 'C', 2, 25, 25, 25, 40),
(56, 2, 'D', 2, 25, 25, 25, 41),
(57, 3, 'E', 2, 25, 25, 25, 42),
(58, 3, 'F', 2, 25, 25, 25, 43),
(59, 4, 'A', 2, 25, 25, 25, 44),
(60, 4, 'B', 2, 25, 25, 25, 45),
(61, 5, 'C', 2, 25, 25, 25, 46),
(62, 5, 'D', 2, 25, 25, 25, 47),
(63, 6, 'E', 4, 25, 25, 25, 48),
(64, 6, 'F', 4, 25, 25, 25, 49),
(65, 7, 'A', 4, 25, 25, 25, 50),
(66, 7, 'B', 4, 25, 25, 25, 51),
(67, 8, 'C', 4, 25, 25, 25, 52),
(68, 8, 'D', 4, 25, 25, 25, 53),
(69, 9, 'E', 4, 25, 25, 25, 54),
(70, 9, 'F', 4, 25, 25, 25, 55),
(71, 10, 'A', 1, 25, 25, 25, NULL),
(72, 10, 'B', 1, 25, 25, 25, NULL),
(73, 11, 'C', 1, 25, 25, 25, NULL),
(74, 11, 'D', 1, 25, 25, 25, NULL),
(75, 25, 'A', 4, 25, 25, 25, NULL),
(76, 25, 'B', 4, 25, 25, 25, NULL),
(77, 26, 'C', 4, 25, 25, 25, NULL),
(78, 26, 'D', 4, 25, 25, 25, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SeatingPlan`
--

CREATE TABLE `SeatingPlan` (
  `SeatingPlanID` int(11) NOT NULL,
  `SeatingPlan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SeatingPlan`
--

INSERT INTO `SeatingPlan` (`SeatingPlanID`, `SeatingPlan`) VALUES
(1, '156 seats, 26 rows'),
(2, '186 seats, 31 rows'),
(3, '180 seats, 31 rows'),
(4, '235 seats, 40 rows');

-- --------------------------------------------------------

--
-- Table structure for table `SeatingType`
--

CREATE TABLE `SeatingType` (
  `SeatingTypeID` int(11) NOT NULL,
  `SeatingTypeNameID` int(11) NOT NULL,
  `AdditionalBenefitsID` int(11) NOT NULL,
  `FlightRangeID` int(11) NOT NULL,
  `SeatPrice` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SeatingType`
--

INSERT INTO `SeatingType` (`SeatingTypeID`, `SeatingTypeNameID`, `AdditionalBenefitsID`, `FlightRangeID`, `SeatPrice`) VALUES
(1, 1, 1, 1, '15.99'),
(2, 2, 1, 1, '8.99'),
(4, 3, 2, 1, '2.99'),
(5, 1, 1, 2, '24.99'),
(6, 2, 1, 2, '15.99'),
(7, 3, 2, 2, '5.99'),
(8, 1, 1, 3, '39.99'),
(9, 2, 1, 3, '28.99'),
(10, 3, 2, 3, '8.99');

-- --------------------------------------------------------

--
-- Table structure for table `SeatingTypeName`
--

CREATE TABLE `SeatingTypeName` (
  `SeatingTypeNameID` int(11) NOT NULL,
  `SeatingTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SeatingTypeName`
--

INSERT INTO `SeatingTypeName` (`SeatingTypeNameID`, `SeatingTypeName`) VALUES
(1, 'Extra Legroom'),
(2, 'Up front'),
(3, 'Standard');

-- --------------------------------------------------------

--
-- Table structure for table `SpecialAssistance`
--

CREATE TABLE `SpecialAssistance` (
  `SpecialAssistanceID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL,
  `SpecialAssistanceTypeID` int(11) NOT NULL,
  `PassengerDetailsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SpecialAssistance`
--

INSERT INTO `SpecialAssistance` (`SpecialAssistanceID`, `FlightID`, `SpecialAssistanceTypeID`, `PassengerDetailsID`) VALUES
(1, 1, 6, 5),
(2, 25, 4, 40),
(3, 1, 6, 9);

-- --------------------------------------------------------

--
-- Table structure for table `SpecialAssistanceType`
--

CREATE TABLE `SpecialAssistanceType` (
  `SpecialAssistanceTypeID` int(11) NOT NULL,
  `SpecialAssistanceType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SpecialAssistanceType`
--

INSERT INTO `SpecialAssistanceType` (`SpecialAssistanceTypeID`, `SpecialAssistanceType`) VALUES
(1, 'Blind or significantly sight impaired'),
(2, 'Wheelchair user, require wheelchair assistance or unable to walk long distances'),
(3, 'Travelling with recognised guide/special assistance dog'),
(4, 'Deaf or significantly hearing impaired'),
(5, 'Intellectual or developmental disability'),
(6, 'Nut allergy');

-- --------------------------------------------------------

--
-- Table structure for table `SportsEquipment`
--

CREATE TABLE `SportsEquipment` (
  `SportsEquipmentID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL,
  `PassengerDetailsID` int(11) NOT NULL,
  `SportsEquipmentTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SportsEquipment`
--

INSERT INTO `SportsEquipment` (`SportsEquipmentID`, `FlightID`, `PassengerDetailsID`, `SportsEquipmentTypeID`) VALUES
(1, 25, 51, 5),
(2, 25, 51, 1),
(3, 19, 35, 8),
(4, 19, 35, 3);

-- --------------------------------------------------------

--
-- Table structure for table `SportsEquipmentType`
--

CREATE TABLE `SportsEquipmentType` (
  `SportsEquipmentTypeID` int(11) NOT NULL,
  `SportsEquipmentType` varchar(255) NOT NULL,
  `Price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SportsEquipmentType`
--

INSERT INTO `SportsEquipmentType` (`SportsEquipmentTypeID`, `SportsEquipmentType`, `Price`) VALUES
(1, 'Bicycle', '45.00'),
(2, 'Canoe', '45.00'),
(3, 'Sporting firearm', '37.00'),
(4, 'Golf bag', '37.00'),
(5, 'Hang glider', '45.00'),
(6, 'other small sports equipment', '37.00'),
(7, 'Skis and/or boots', '37.00'),
(8, 'Snowboard', '37.00'),
(9, 'Windsurfing board', '45.00');

-- --------------------------------------------------------

--
-- Table structure for table `Title`
--

CREATE TABLE `Title` (
  `TitleID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Title`
--

INSERT INTO `Title` (`TitleID`, `Title`) VALUES
(1, 'Mr'),
(2, 'Mrs'),
(3, 'Miss'),
(4, 'Ms');

-- --------------------------------------------------------

--
-- Table structure for table `TravelReason`
--

CREATE TABLE `TravelReason` (
  `TravelReasonID` int(11) NOT NULL,
  `TravelReason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TravelReason`
--

INSERT INTO `TravelReason` (`TravelReasonID`, `TravelReason`) VALUES
(1, 'Business'),
(2, 'Leisure');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AdditionalBenefits`
--
ALTER TABLE `AdditionalBenefits`
  ADD PRIMARY KEY (`AdditionalBenefitsID`);

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
  ADD PRIMARY KEY (`AddressID`),
  ADD KEY `FK_CountryID1` (`CountryID`);

--
-- Indexes for table `Aircraft`
--
ALTER TABLE `Aircraft`
  ADD PRIMARY KEY (`AircraftID`),
  ADD KEY `FK_SeatingPlanID` (`SeatingPlanID`);

--
-- Indexes for table `Airport`
--
ALTER TABLE `Airport`
  ADD PRIMARY KEY (`AirportID`),
  ADD KEY `FK_AddressID` (`AddressID`);

--
-- Indexes for table `Baggage`
--
ALTER TABLE `Baggage`
  ADD PRIMARY KEY (`BaggageID`),
  ADD KEY `FK_PassengerDetailsID3` (`PassengerDetailsID`),
  ADD KEY `FK_BaggageTypePriceID` (`BaggageTypePriceID`),
  ADD KEY `FK_FlightID2` (`FlightID`);

--
-- Indexes for table `BaggageTypeName`
--
ALTER TABLE `BaggageTypeName`
  ADD PRIMARY KEY (`BaggageTypeNameID`);

--
-- Indexes for table `BaggageTypePrice`
--
ALTER TABLE `BaggageTypePrice`
  ADD PRIMARY KEY (`BaggagePriceID`),
  ADD KEY `FK_RangeID` (`FlightRangeID`),
  ADD KEY `FK_BaggageTypeNameID` (`BaggageTypeNameID`);

--
-- Indexes for table `BookerDetails`
--
ALTER TABLE `BookerDetails`
  ADD PRIMARY KEY (`BookerDetailsID`),
  ADD KEY `FK_EasyJetPlusMembershipID` (`EasyJetPlusMembershipID`),
  ADD KEY `FK_CountryID` (`CountryID`),
  ADD KEY `FK_PaymentID` (`PaymentID`),
  ADD KEY `FK_TitleID1` (`TitleID`),
  ADD KEY `FK_AddressID1` (`AddressID`),
  ADD KEY `FK_InternationalDialingCodeID` (`InternationalDialingCodeID`);

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `FK_BookerDetailsID` (`BookerDetailsID`),
  ADD KEY `FK_PaymentID1` (`PaymentID`);

--
-- Indexes for table `Catalogue`
--
ALTER TABLE `Catalogue`
  ADD PRIMARY KEY (`CatalogueID`),
  ADD KEY `FK_CatalogueTypeID` (`CatalogueTypeID`),
  ADD KEY `FK_BookingID3` (`BookingID`),
  ADD KEY `FK_FlightID5` (`FlightID`);

--
-- Indexes for table `CatalogueType`
--
ALTER TABLE `CatalogueType`
  ADD PRIMARY KEY (`CatalogueTypeID`);

--
-- Indexes for table `CostLineItems`
--
ALTER TABLE `CostLineItems`
  ADD PRIMARY KEY (`CostLineItemID`),
  ADD KEY `FK_BookingID` (`BookingID`),
  ADD KEY `FK_CurrencyID1` (`CurrencyID`);

--
-- Indexes for table `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `Currency`
--
ALTER TABLE `Currency`
  ADD PRIMARY KEY (`CurrencyID`);

--
-- Indexes for table `CurrentFlightPrices`
--
ALTER TABLE `CurrentFlightPrices`
  ADD PRIMARY KEY (`FlightPriceID`);

--
-- Indexes for table `EasyPlusMembership`
--
ALTER TABLE `EasyPlusMembership`
  ADD PRIMARY KEY (`EasyJetPlusMemberID`);

--
-- Indexes for table `Flight`
--
ALTER TABLE `Flight`
  ADD PRIMARY KEY (`FlightID`),
  ADD KEY `FK_RouteID` (`RouteID`),
  ADD KEY `FK_AircraftID` (`AircraftID`),
  ADD KEY `FK_FlightPriceID` (`FlightPriceID`),
  ADD KEY `FK_FlightStatusID` (`FlightStatusID`);

--
-- Indexes for table `FlightRange`
--
ALTER TABLE `FlightRange`
  ADD PRIMARY KEY (`FlightRangeID`);

--
-- Indexes for table `FlightStatus`
--
ALTER TABLE `FlightStatus`
  ADD PRIMARY KEY (`FlightStatusID`);

--
-- Indexes for table `InternationalDialingCode`
--
ALTER TABLE `InternationalDialingCode`
  ADD PRIMARY KEY (`InternationalDialingCodeID`);

--
-- Indexes for table `Passenger`
--
ALTER TABLE `Passenger`
  ADD PRIMARY KEY (`PassengerID`),
  ADD KEY `FK_SeatID` (`SeatID`),
  ADD KEY `FK_PassengerDetailsID1` (`PassengerDetailsID`),
  ADD KEY `FK_FlightID1` (`FlightID`),
  ADD KEY `FK_BookingID1` (`BookingID`);

--
-- Indexes for table `PassengerAge`
--
ALTER TABLE `PassengerAge`
  ADD PRIMARY KEY (`PassengerAgeID`);

--
-- Indexes for table `PassengerDetails`
--
ALTER TABLE `PassengerDetails`
  ADD PRIMARY KEY (`PassengerDetailsID`),
  ADD KEY `FK_TitleID` (`TitleID`),
  ADD KEY `FK_PassengerTypeID` (`PassengerTypeID`),
  ADD KEY `FK_PassengerAgeID` (`PassengerAgeID`),
  ADD KEY `FK_TravelReasonID` (`TravelReasonID`);

--
-- Indexes for table `PassengerType`
--
ALTER TABLE `PassengerType`
  ADD PRIMARY KEY (`PassengerTypeID`);

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `FK_CurrencyID` (`CurrencyID`);

--
-- Indexes for table `Route`
--
ALTER TABLE `Route`
  ADD PRIMARY KEY (`RouteID`);

--
-- Indexes for table `Seating`
--
ALTER TABLE `Seating`
  ADD PRIMARY KEY (`SeatID`),
  ADD KEY `FK_SeatingTypeID` (`SeatingTypeID`),
  ADD KEY `FK_FlightID` (`FlightID`),
  ADD KEY `FK_RouteID2` (`RouteID`),
  ADD KEY `FK_FlightPriceID1` (`FlightPriceID`),
  ADD KEY `FK_PassengerID2` (`PassengerID`);

--
-- Indexes for table `SeatingPlan`
--
ALTER TABLE `SeatingPlan`
  ADD PRIMARY KEY (`SeatingPlanID`);

--
-- Indexes for table `SeatingType`
--
ALTER TABLE `SeatingType`
  ADD PRIMARY KEY (`SeatingTypeID`),
  ADD KEY `FK_FlightRangeID` (`FlightRangeID`),
  ADD KEY `FK_SeatingTypeNameID` (`SeatingTypeNameID`),
  ADD KEY `FK_AdditionalBenefitsID` (`AdditionalBenefitsID`);

--
-- Indexes for table `SeatingTypeName`
--
ALTER TABLE `SeatingTypeName`
  ADD PRIMARY KEY (`SeatingTypeNameID`);

--
-- Indexes for table `SpecialAssistance`
--
ALTER TABLE `SpecialAssistance`
  ADD PRIMARY KEY (`SpecialAssistanceID`),
  ADD KEY `FK_SpecialAssistanceTypeID` (`SpecialAssistanceTypeID`),
  ADD KEY `FK_PassengerDetailsID` (`PassengerDetailsID`),
  ADD KEY `FK_FlightID3` (`FlightID`);

--
-- Indexes for table `SpecialAssistanceType`
--
ALTER TABLE `SpecialAssistanceType`
  ADD PRIMARY KEY (`SpecialAssistanceTypeID`);

--
-- Indexes for table `SportsEquipment`
--
ALTER TABLE `SportsEquipment`
  ADD PRIMARY KEY (`SportsEquipmentID`),
  ADD KEY `FK_SportsEquipmentTypeID` (`SportsEquipmentTypeID`),
  ADD KEY `FK_PassengerDetailsID2` (`PassengerDetailsID`),
  ADD KEY `FK_FlightID4` (`FlightID`);

--
-- Indexes for table `SportsEquipmentType`
--
ALTER TABLE `SportsEquipmentType`
  ADD PRIMARY KEY (`SportsEquipmentTypeID`);

--
-- Indexes for table `Title`
--
ALTER TABLE `Title`
  ADD PRIMARY KEY (`TitleID`);

--
-- Indexes for table `TravelReason`
--
ALTER TABLE `TravelReason`
  ADD PRIMARY KEY (`TravelReasonID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AdditionalBenefits`
--
ALTER TABLE `AdditionalBenefits`
  MODIFY `AdditionalBenefitsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Address`
--
ALTER TABLE `Address`
  MODIFY `AddressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `Aircraft`
--
ALTER TABLE `Aircraft`
  MODIFY `AircraftID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Airport`
--
ALTER TABLE `Airport`
  MODIFY `AirportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `Baggage`
--
ALTER TABLE `Baggage`
  MODIFY `BaggageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `BaggageTypeName`
--
ALTER TABLE `BaggageTypeName`
  MODIFY `BaggageTypeNameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `BaggageTypePrice`
--
ALTER TABLE `BaggageTypePrice`
  MODIFY `BaggagePriceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `BookerDetails`
--
ALTER TABLE `BookerDetails`
  MODIFY `BookerDetailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `BookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `Catalogue`
--
ALTER TABLE `Catalogue`
  MODIFY `CatalogueID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `CatalogueType`
--
ALTER TABLE `CatalogueType`
  MODIFY `CatalogueTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `CostLineItems`
--
ALTER TABLE `CostLineItems`
  MODIFY `CostLineItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `Country`
--
ALTER TABLE `Country`
  MODIFY `CountryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `Currency`
--
ALTER TABLE `Currency`
  MODIFY `CurrencyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `CurrentFlightPrices`
--
ALTER TABLE `CurrentFlightPrices`
  MODIFY `FlightPriceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `EasyPlusMembership`
--
ALTER TABLE `EasyPlusMembership`
  MODIFY `EasyJetPlusMemberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `Flight`
--
ALTER TABLE `Flight`
  MODIFY `FlightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `FlightRange`
--
ALTER TABLE `FlightRange`
  MODIFY `FlightRangeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `FlightStatus`
--
ALTER TABLE `FlightStatus`
  MODIFY `FlightStatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `InternationalDialingCode`
--
ALTER TABLE `InternationalDialingCode`
  MODIFY `InternationalDialingCodeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Passenger`
--
ALTER TABLE `Passenger`
  MODIFY `PassengerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `PassengerAge`
--
ALTER TABLE `PassengerAge`
  MODIFY `PassengerAgeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `PassengerDetails`
--
ALTER TABLE `PassengerDetails`
  MODIFY `PassengerDetailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `PassengerType`
--
ALTER TABLE `PassengerType`
  MODIFY `PassengerTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Payment`
--
ALTER TABLE `Payment`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `Route`
--
ALTER TABLE `Route`
  MODIFY `RouteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `Seating`
--
ALTER TABLE `Seating`
  MODIFY `SeatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `SeatingPlan`
--
ALTER TABLE `SeatingPlan`
  MODIFY `SeatingPlanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `SeatingType`
--
ALTER TABLE `SeatingType`
  MODIFY `SeatingTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `SeatingTypeName`
--
ALTER TABLE `SeatingTypeName`
  MODIFY `SeatingTypeNameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `SpecialAssistance`
--
ALTER TABLE `SpecialAssistance`
  MODIFY `SpecialAssistanceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `SpecialAssistanceType`
--
ALTER TABLE `SpecialAssistanceType`
  MODIFY `SpecialAssistanceTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `SportsEquipment`
--
ALTER TABLE `SportsEquipment`
  MODIFY `SportsEquipmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `SportsEquipmentType`
--
ALTER TABLE `SportsEquipmentType`
  MODIFY `SportsEquipmentTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Title`
--
ALTER TABLE `Title`
  MODIFY `TitleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `TravelReason`
--
ALTER TABLE `TravelReason`
  MODIFY `TravelReasonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Address`
--
ALTER TABLE `Address`
  ADD CONSTRAINT `FK_CountryID1` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`CountryID`);

--
-- Constraints for table `Aircraft`
--
ALTER TABLE `Aircraft`
  ADD CONSTRAINT `FK_SeatingPlanID` FOREIGN KEY (`SeatingPlanID`) REFERENCES `SeatingPlan` (`SeatingPlanID`);

--
-- Constraints for table `Airport`
--
ALTER TABLE `Airport`
  ADD CONSTRAINT `FK_AddressID` FOREIGN KEY (`AddressID`) REFERENCES `Address` (`AddressID`);

--
-- Constraints for table `Baggage`
--
ALTER TABLE `Baggage`
  ADD CONSTRAINT `FK_BaggageTypePriceID` FOREIGN KEY (`BaggageTypePriceID`) REFERENCES `BaggageTypePrice` (`BaggagePriceID`),
  ADD CONSTRAINT `FK_FlightID2` FOREIGN KEY (`FlightID`) REFERENCES `Flight` (`FlightID`),
  ADD CONSTRAINT `FK_PassengerDetailsID3` FOREIGN KEY (`PassengerDetailsID`) REFERENCES `PassengerDetails` (`PassengerDetailsID`);

--
-- Constraints for table `BaggageTypePrice`
--
ALTER TABLE `BaggageTypePrice`
  ADD CONSTRAINT `FK_BaggageTypeNameID` FOREIGN KEY (`BaggageTypeNameID`) REFERENCES `BaggageTypeName` (`BaggageTypeNameID`),
  ADD CONSTRAINT `FK_RangeID` FOREIGN KEY (`FlightRangeID`) REFERENCES `FlightRange` (`FlightRangeID`);

--
-- Constraints for table `BookerDetails`
--
ALTER TABLE `BookerDetails`
  ADD CONSTRAINT `FK_AddressID1` FOREIGN KEY (`AddressID`) REFERENCES `Address` (`AddressID`),
  ADD CONSTRAINT `FK_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`CountryID`),
  ADD CONSTRAINT `FK_EasyJetPlusMembershipID` FOREIGN KEY (`EasyJetPlusMembershipID`) REFERENCES `EasyPlusMembership` (`EasyJetPlusMemberID`),
  ADD CONSTRAINT `FK_InternationalDialingCodeID` FOREIGN KEY (`InternationalDialingCodeID`) REFERENCES `InternationalDialingCode` (`InternationalDialingCodeID`),
  ADD CONSTRAINT `FK_PaymentID` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`PaymentID`),
  ADD CONSTRAINT `FK_TitleID1` FOREIGN KEY (`TitleID`) REFERENCES `Title` (`TitleID`);

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `FK_BookerDetailsID` FOREIGN KEY (`BookerDetailsID`) REFERENCES `BookerDetails` (`BookerDetailsID`),
  ADD CONSTRAINT `FK_PaymentID1` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`PaymentID`);

--
-- Constraints for table `Catalogue`
--
ALTER TABLE `Catalogue`
  ADD CONSTRAINT `FK_BookingID3` FOREIGN KEY (`BookingID`) REFERENCES `Booking` (`BookingID`),
  ADD CONSTRAINT `FK_CatalogueTypeID` FOREIGN KEY (`CatalogueTypeID`) REFERENCES `CatalogueType` (`CatalogueTypeID`),
  ADD CONSTRAINT `FK_FlightID5` FOREIGN KEY (`FlightID`) REFERENCES `Flight` (`FlightID`);

--
-- Constraints for table `CostLineItems`
--
ALTER TABLE `CostLineItems`
  ADD CONSTRAINT `FK_BookingID` FOREIGN KEY (`BookingID`) REFERENCES `Booking` (`BookingID`),
  ADD CONSTRAINT `FK_CurrencyID1` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`CurrencyID`);

--
-- Constraints for table `Flight`
--
ALTER TABLE `Flight`
  ADD CONSTRAINT `FK_AircraftID` FOREIGN KEY (`AircraftID`) REFERENCES `Aircraft` (`AircraftID`),
  ADD CONSTRAINT `FK_FlightPriceID` FOREIGN KEY (`FlightPriceID`) REFERENCES `CurrentFlightPrices` (`FlightPriceID`),
  ADD CONSTRAINT `FK_FlightStatusID` FOREIGN KEY (`FlightStatusID`) REFERENCES `FlightStatus` (`FlightStatusID`),
  ADD CONSTRAINT `FK_RouteID` FOREIGN KEY (`RouteID`) REFERENCES `Route` (`RouteID`);

--
-- Constraints for table `Passenger`
--
ALTER TABLE `Passenger`
  ADD CONSTRAINT `FK_BookingID1` FOREIGN KEY (`BookingID`) REFERENCES `Booking` (`BookingID`),
  ADD CONSTRAINT `FK_FlightID1` FOREIGN KEY (`FlightID`) REFERENCES `Flight` (`FlightID`),
  ADD CONSTRAINT `FK_PassengerDetailsID1` FOREIGN KEY (`PassengerDetailsID`) REFERENCES `PassengerDetails` (`PassengerDetailsID`),
  ADD CONSTRAINT `FK_SeatID` FOREIGN KEY (`SeatID`) REFERENCES `Seating` (`SeatID`);

--
-- Constraints for table `PassengerDetails`
--
ALTER TABLE `PassengerDetails`
  ADD CONSTRAINT `FK_PassengerAgeID` FOREIGN KEY (`PassengerAgeID`) REFERENCES `PassengerAge` (`PassengerAgeID`),
  ADD CONSTRAINT `FK_PassengerTypeID` FOREIGN KEY (`PassengerTypeID`) REFERENCES `PassengerType` (`PassengerTypeID`),
  ADD CONSTRAINT `FK_TitleID` FOREIGN KEY (`TitleID`) REFERENCES `Title` (`TitleID`),
  ADD CONSTRAINT `FK_TravelReasonID` FOREIGN KEY (`TravelReasonID`) REFERENCES `TravelReason` (`TravelReasonID`);

--
-- Constraints for table `Payment`
--
ALTER TABLE `Payment`
  ADD CONSTRAINT `FK_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`CurrencyID`);

--
-- Constraints for table `Seating`
--
ALTER TABLE `Seating`
  ADD CONSTRAINT `FK_FlightID` FOREIGN KEY (`FlightID`) REFERENCES `Flight` (`FlightID`),
  ADD CONSTRAINT `FK_FlightPriceID1` FOREIGN KEY (`FlightPriceID`) REFERENCES `CurrentFlightPrices` (`FlightPriceID`),
  ADD CONSTRAINT `FK_PassengerID2` FOREIGN KEY (`PassengerID`) REFERENCES `Passenger` (`PassengerID`),
  ADD CONSTRAINT `FK_RouteID2` FOREIGN KEY (`RouteID`) REFERENCES `Route` (`RouteID`),
  ADD CONSTRAINT `FK_SeatingTypeID` FOREIGN KEY (`SeatingTypeID`) REFERENCES `SeatingType` (`SeatingTypeID`);

--
-- Constraints for table `SeatingType`
--
ALTER TABLE `SeatingType`
  ADD CONSTRAINT `FK_AdditionalBenefitsID` FOREIGN KEY (`AdditionalBenefitsID`) REFERENCES `AdditionalBenefits` (`AdditionalBenefitsID`),
  ADD CONSTRAINT `FK_FlightRangeID` FOREIGN KEY (`FlightRangeID`) REFERENCES `FlightRange` (`FlightRangeID`),
  ADD CONSTRAINT `FK_SeatingTypeNameID` FOREIGN KEY (`SeatingTypeNameID`) REFERENCES `SeatingTypeName` (`SeatingTypeNameID`);

--
-- Constraints for table `SpecialAssistance`
--
ALTER TABLE `SpecialAssistance`
  ADD CONSTRAINT `FK_FlightID3` FOREIGN KEY (`FlightID`) REFERENCES `Flight` (`FlightID`),
  ADD CONSTRAINT `FK_PassengerDetailsID` FOREIGN KEY (`PassengerDetailsID`) REFERENCES `PassengerDetails` (`PassengerDetailsID`),
  ADD CONSTRAINT `FK_SpecialAssistanceTypeID` FOREIGN KEY (`SpecialAssistanceTypeID`) REFERENCES `SpecialAssistanceType` (`SpecialAssistanceTypeID`);

--
-- Constraints for table `SportsEquipment`
--
ALTER TABLE `SportsEquipment`
  ADD CONSTRAINT `FK_FlightID4` FOREIGN KEY (`FlightID`) REFERENCES `Flight` (`FlightID`),
  ADD CONSTRAINT `FK_PassengerDetailsID2` FOREIGN KEY (`PassengerDetailsID`) REFERENCES `PassengerDetails` (`PassengerDetailsID`),
  ADD CONSTRAINT `FK_SportsEquipmentTypeID` FOREIGN KEY (`SportsEquipmentTypeID`) REFERENCES `SportsEquipmentType` (`SportsEquipmentTypeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
