-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2025 at 06:28 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse_travels`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus_routes`
--

CREATE TABLE `bus_routes` (
  `route_id` int(11) NOT NULL,
  `bus_name` varchar(255) NOT NULL,
  `source_station` varchar(255) NOT NULL,
  `destination_station` varchar(255) NOT NULL,
  `departure_time` time NOT NULL,
  `arrival_time` time NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_routes`
--

INSERT INTO `bus_routes` (`route_id`, `bus_name`, `source_station`, `destination_station`, `departure_time`, `arrival_time`, `price`) VALUES
(1, 'Express 1', 'Delhi', 'Mumbai', '06:00:00', '15:00:00', '1200.00'),
(2, 'Express 2', 'Mumbai', 'Kolkata', '08:30:00', '20:30:00', '1500.00'),
(3, 'Express 3', 'Kolkata', 'Chennai', '07:00:00', '19:00:00', '1800.00'),
(4, 'Express 4', 'Chennai', 'Bangalore', '09:00:00', '12:00:00', '500.00'),
(5, 'Express 5', 'Bangalore', 'Hyderabad', '06:30:00', '10:30:00', '600.00'),
(6, 'Express 6', 'Hyderabad', 'Ahmedabad', '11:00:00', '21:00:00', '1600.00'),
(7, 'Express 7', 'Ahmedabad', 'Pune', '14:00:00', '22:00:00', '900.00'),
(8, 'Express 8', 'Pune', 'Jaipur', '10:00:00', '19:00:00', '1200.00'),
(9, 'Express 9', 'Jaipur', 'Lucknow', '08:00:00', '14:00:00', '1000.00'),
(10, 'Express 10', 'Lucknow', 'Delhi', '05:30:00', '12:00:00', '800.00'),
(11, 'Express 11', 'Delhi', 'Kolkata', '07:30:00', '18:30:00', '1400.00'),
(12, 'Express 12', 'Mumbai', 'Jaipur', '09:00:00', '18:00:00', '1100.00'),
(13, 'Express 13', 'Chennai', 'Delhi', '11:30:00', '21:30:00', '2000.00'),
(14, 'Express 14', 'Bangalore', 'Ahmedabad', '13:00:00', '01:00:00', '1700.00'),
(15, 'Express 15', 'Hyderabad', 'Jaipur', '16:30:00', '04:30:00', '1600.00'),
(16, 'Express 16', 'Ahmedabad', 'Kolkata', '06:00:00', '20:00:00', '2200.00'),
(17, 'Express 17', 'Pune', 'Lucknow', '10:00:00', '20:00:00', '1500.00'),
(18, 'Express 18', 'Jaipur', 'Chennai', '07:00:00', '19:00:00', '2000.00'),
(19, 'Express 19', 'Lucknow', 'Mumbai', '06:00:00', '18:00:00', '1300.00'),
(20, 'Express 20', 'Delhi', 'Pune', '05:30:00', '15:30:00', '1800.00'),
(21, 'Express 21', 'Mumbai', 'Hyderabad', '06:00:00', '14:00:00', '1000.00'),
(22, 'Express 22', 'Kolkata', 'Ahmedabad', '08:00:00', '20:00:00', '2100.00'),
(23, 'Express 23', 'Chennai', 'Jaipur', '07:30:00', '20:30:00', '1900.00'),
(24, 'Express 24', 'Bangalore', 'Lucknow', '09:00:00', '21:00:00', '1700.00'),
(25, 'Express 25', 'Hyderabad', 'Delhi', '06:00:00', '16:00:00', '1400.00'),
(26, 'Express 26', 'Ahmedabad', 'Mumbai', '05:30:00', '11:30:00', '700.00'),
(27, 'Express 27', 'Pune', 'Kolkata', '09:00:00', '21:00:00', '1600.00'),
(28, 'Express 28', 'Jaipur', 'Bangalore', '06:30:00', '19:30:00', '2000.00'),
(29, 'Express 29', 'Lucknow', 'Chennai', '10:00:00', '23:00:00', '2200.00'),
(30, 'Express 30', 'Delhi', 'Ahmedabad', '07:00:00', '17:00:00', '1200.00'),
(31, 'Express 31', 'Mumbai', 'Pune', '06:00:00', '09:00:00', '400.00'),
(32, 'Express 32', 'Kolkata', 'Hyderabad', '08:00:00', '18:00:00', '1800.00'),
(33, 'Express 33', 'Chennai', 'Ahmedabad', '07:30:00', '19:30:00', '2000.00'),
(34, 'Express 34', 'Bangalore', 'Delhi', '09:00:00', '21:00:00', '1900.00'),
(35, 'Express 35', 'Hyderabad', 'Pune', '10:00:00', '15:00:00', '700.00'),
(36, 'Express 36', 'Ahmedabad', 'Jaipur', '05:30:00', '12:30:00', '800.00'),
(37, 'Express 37', 'Pune', 'Chennai', '09:00:00', '18:00:00', '1500.00'),
(38, 'Express 38', 'Jaipur', 'Mumbai', '06:30:00', '15:30:00', '1200.00'),
(39, 'Express 39', 'Lucknow', 'Bangalore', '08:00:00', '20:00:00', '1700.00'),
(40, 'Express 40', 'Delhi', 'Hyderabad', '05:30:00', '15:30:00', '1500.00');

-- --------------------------------------------------------

--
-- Table structure for table `flight_routes`
--

CREATE TABLE `flight_routes` (
  `id` int(11) NOT NULL,
  `airline_name` varchar(100) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_routes`
--

INSERT INTO `flight_routes` (`id`, `airline_name`, `source`, `destination`, `departure_time`, `arrival_time`, `price`) VALUES
(133, 'Air India', 'Delhi', 'Mumbai', '06:00:00', '08:00:00', '5000.00'),
(134, 'Jet Airways', 'Delhi', 'Chennai', '07:00:00', '09:00:00', '5500.00'),
(135, 'Indigo', 'Mumbai', 'Hyderabad', '08:00:00', '10:00:00', '4500.00'),
(136, 'SpiceJet', 'Bangalore', 'Kolkata', '09:00:00', '11:30:00', '4000.00'),
(137, 'GoAir', 'Jaipur', 'Pune', '10:00:00', '12:00:00', '3500.00'),
(138, 'Vistara', 'Ahmedabad', 'Lucknow', '11:00:00', '13:00:00', '4800.00'),
(139, 'Air India', 'Mumbai', 'Kolkata', '12:00:00', '14:30:00', '6000.00'),
(140, 'Jet Airways', 'Hyderabad', 'Bangalore', '13:00:00', '15:00:00', '5300.00'),
(141, 'Indigo', 'Chennai', 'Delhi', '14:00:00', '16:30:00', '4700.00'),
(142, 'SpiceJet', 'Kolkata', 'Pune', '15:00:00', '17:00:00', '3900.00'),
(143, 'GoAir', 'Ahmedabad', 'Mumbai', '16:00:00', '18:00:00', '4600.00'),
(144, 'Vistara', 'Bangalore', 'Hyderabad', '17:00:00', '19:00:00', '5000.00'),
(145, 'Air India', 'Pune', 'Jaipur', '18:00:00', '20:00:00', '3800.00'),
(146, 'Jet Airways', 'Lucknow', 'Mumbai', '19:00:00', '21:30:00', '6200.00'),
(147, 'Indigo', 'Delhi', 'Pune', '20:00:00', '22:00:00', '5200.00'),
(148, 'SpiceJet', 'Chennai', 'Hyderabad', '21:00:00', '23:00:00', '4600.00'),
(149, 'GoAir', 'Bangalore', 'Mumbai', '22:00:00', '00:00:00', '5500.00'),
(150, 'Vistara', 'Pune', 'Kolkata', '06:00:00', '08:00:00', '4800.00'),
(151, 'Air India', 'Lucknow', 'Chennai', '07:00:00', '09:30:00', '4900.00'),
(152, 'Jet Airways', 'Mumbai', 'Delhi', '08:00:00', '10:00:00', '5300.00'),
(153, 'Indigo', 'Kolkata', 'Bangalore', '09:00:00', '11:30:00', '5100.00'),
(154, 'SpiceJet', 'Jaipur', 'Lucknow', '10:00:00', '12:00:00', '3600.00'),
(155, 'GoAir', 'Hyderabad', 'Mumbai', '11:00:00', '13:00:00', '4800.00'),
(156, 'Vistara', 'Delhi', 'Kolkata', '12:00:00', '14:30:00', '5700.00'),
(157, 'Air India', 'Ahmedabad', 'Pune', '13:00:00', '15:00:00', '4500.00'),
(158, 'Jet Airways', 'Bangalore', 'Lucknow', '14:00:00', '16:00:00', '5400.00'),
(159, 'Indigo', 'Mumbai', 'Hyderabad', '15:00:00', '17:30:00', '5000.00'),
(160, 'SpiceJet', 'Delhi', 'Bangalore', '16:00:00', '18:00:00', '4700.00'),
(161, 'GoAir', 'Kolkata', 'Chennai', '17:00:00', '19:00:00', '5300.00'),
(162, 'Vistara', 'Lucknow', 'Jaipur', '18:00:00', '20:00:00', '4600.00'),
(163, 'Air India', 'Hyderabad', 'Mumbai', '19:00:00', '21:30:00', '4900.00'),
(164, 'Jet Airways', 'Pune', 'Delhi', '20:00:00', '22:00:00', '5500.00'),
(165, 'Indigo', 'Chennai', 'Pune', '21:00:00', '23:00:00', '4800.00'),
(166, 'SpiceJet', 'Bangalore', 'Chennai', '22:00:00', '00:00:00', '5000.00'),
(167, 'GoAir', 'Jaipur', 'Hyderabad', '06:00:00', '08:00:00', '5300.00'),
(168, 'Vistara', 'Delhi', 'Lucknow', '07:00:00', '09:00:00', '4700.00'),
(169, 'Air India', 'Kolkata', 'Pune', '08:00:00', '10:00:00', '4200.00'),
(170, 'Jet Airways', 'Bangalore', 'Delhi', '09:00:00', '11:00:00', '5400.00'),
(171, 'Indigo', 'Chennai', 'Mumbai', '10:00:00', '12:30:00', '4600.00'),
(172, 'GoAir', 'Mumbai', 'Chennai', '18:00:00', '20:30:00', '4700.00'),
(173, 'Vistara', 'Hyderabad', 'Delhi', '19:00:00', '21:30:00', '5200.00'),
(174, 'Air India', 'Bangalore', 'Chennai', '20:00:00', '22:00:00', '5300.00'),
(175, 'Jet Airways', 'Delhi', 'Bangalore', '21:00:00', '23:30:00', '4900.00'),
(176, 'Indigo', 'Hyderabad', 'Delhi', '22:00:00', '00:30:00', '5100.00'),
(177, 'SpiceJet', 'Chennai', 'Pune', '06:00:00', '08:30:00', '4900.00'),
(178, 'GoAir', 'Kolkata', 'Mumbai', '07:00:00', '09:00:00', '5300.00'),
(179, 'Vistara', 'Pune', 'Hyderabad', '08:00:00', '10:30:00', '4800.00'),
(180, 'Air India', 'Delhi', 'Hyderabad', '09:00:00', '11:30:00', '5000.00'),
(181, 'Jet Airways', 'Chennai', 'Mumbai', '10:00:00', '12:30:00', '5200.00'),
(182, 'Indigo', 'Bangalore', 'Kolkata', '11:00:00', '13:30:00', '5100.00'),
(183, 'SpiceJet', 'Delhi', 'Pune', '12:00:00', '14:00:00', '5400.00'),
(184, 'GoAir', 'Hyderabad', 'Chennai', '13:00:00', '15:30:00', '4700.00'),
(185, 'Vistara', 'Mumbai', 'Bangalore', '14:00:00', '16:30:00', '5300.00'),
(186, 'Air India', 'Chennai', 'Hyderabad', '15:00:00', '17:30:00', '5400.00'),
(187, 'Jet Airways', 'Delhi', 'Kolkata', '16:00:00', '18:30:00', '4900.00'),
(188, 'Indigo', 'Hyderabad', 'Pune', '17:00:00', '19:30:00', '4800.00'),
(189, 'SpiceJet', 'Mumbai', 'Bangalore', '18:00:00', '20:00:00', '5200.00'),
(190, 'GoAir', 'Delhi', 'Chennai', '19:00:00', '21:30:00', '4900.00'),
(191, 'Vistara', 'Kolkata', 'Hyderabad', '20:00:00', '22:30:00', '5100.00'),
(192, 'Air India', 'Mumbai', 'Delhi', '21:00:00', '23:30:00', '5300.00'),
(193, 'Jet Airways', 'Pune', 'Kolkata', '22:00:00', '00:30:00', '5400.00'),
(194, 'Indigo', 'Chennai', 'Hyderabad', '06:00:00', '08:30:00', '4800.00'),
(195, 'SpiceJet', 'Bangalore', 'Delhi', '07:00:00', '09:00:00', '5200.00'),
(196, 'GoAir', 'Kolkata', 'Delhi', '08:00:00', '10:30:00', '4900.00'),
(197, 'Vistara', 'Chennai', 'Pune', '09:00:00', '11:30:00', '5100.00'),
(198, 'Air India', 'Hyderabad', 'Chennai', '10:00:00', '12:30:00', '5400.00'),
(199, 'Jet Airways', 'Mumbai', 'Hyderabad', '11:00:00', '13:30:00', '5000.00'),
(200, 'Indigo', 'Bangalore', 'Pune', '12:00:00', '14:30:00', '4900.00'),
(201, 'SpiceJet', 'Delhi', 'Hyderabad', '13:00:00', '15:00:00', '5400.00'),
(202, 'GoAir', 'Kolkata', 'Mumbai', '14:00:00', '16:30:00', '4700.00'),
(203, 'Vistara', 'Hyderabad', 'Chennai', '15:00:00', '17:30:00', '5200.00'),
(204, 'Air India', 'Delhi', 'Bangalore', '16:00:00', '18:30:00', '5300.00'),
(205, 'Jet Airways', 'Mumbai', 'Kolkata', '17:00:00', '19:30:00', '5100.00'),
(206, 'Indigo', 'Delhi', 'Hyderabad', '18:00:00', '20:30:00', '4900.00'),
(207, 'SpiceJet', 'Bangalore', 'Hyderabad', '19:00:00', '21:30:00', '4800.00'),
(208, 'GoAir', 'Pune', 'Delhi', '20:00:00', '22:30:00', '5300.00'),
(209, 'Vistara', 'Chennai', 'Mumbai', '21:00:00', '23:30:00', '5200.00'),
(210, 'Air India', 'Hyderabad', 'Pune', '22:00:00', '00:30:00', '4700.00'),
(211, 'Jet Airways', 'Bangalore', 'Chennai', '06:00:00', '08:30:00', '5100.00'),
(212, 'Indigo', 'Kolkata', 'Chennai', '07:00:00', '09:00:00', '4800.00'),
(213, 'SpiceJet', 'Delhi', 'Mumbai', '08:00:00', '10:00:00', '5400.00'),
(214, 'GoAir', 'Hyderabad', 'Delhi', '09:00:00', '11:30:00', '5100.00'),
(215, 'Vistara', 'Pune', 'Delhi', '10:00:00', '12:30:00', '5000.00');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('john', '4001'),
('john', 'john'),
('john', 'john'),
('john', 'john');

-- --------------------------------------------------------

--
-- Table structure for table `ship_routes`
--

CREATE TABLE `ship_routes` (
  `id` int(11) NOT NULL,
  `ship_name` varchar(255) NOT NULL,
  `source_port` varchar(255) NOT NULL,
  `destination_port` varchar(255) NOT NULL,
  `departure_time` time NOT NULL,
  `arrival_time` time NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ship_routes`
--

INSERT INTO `ship_routes` (`id`, `ship_name`, `source_port`, `destination_port`, `departure_time`, `arrival_time`, `price`) VALUES
(146, 'Sea Voyager', 'Mumbai', 'Chennai', '08:00:00', '18:00:00', '1500.00'),
(147, 'Ocean Breeze', 'Chennai', 'Mumbai', '09:00:00', '19:00:00', '1700.00'),
(148, 'Lighthouse Express', 'Kolkata', 'Visakhapatnam', '06:30:00', '15:30:00', '1200.00'),
(149, 'Coastal Runner', 'Visakhapatnam', 'Kochi', '10:00:00', '20:00:00', '1800.00'),
(150, 'Blue Wave', 'Kochi', 'Goa', '12:00:00', '22:00:00', '1100.00'),
(151, 'Wind Rider', 'Goa', 'Dubai', '14:00:00', '02:00:00', '5000.00'),
(152, 'Sea Monarch', 'Dubai', 'Abu Dhabi', '16:00:00', '17:30:00', '800.00'),
(153, 'Harbour Queen', 'Abu Dhabi', 'Singapore', '17:00:00', '08:00:00', '4000.00'),
(154, 'Sunset Dream', 'Singapore', 'Colombo', '20:00:00', '07:00:00', '3500.00'),
(155, 'Sea Prince', 'Colombo', 'Mumbai', '21:00:00', '08:00:00', '3200.00'),
(156, 'Ocean Spirit', 'Chennai', 'Kochi', '07:30:00', '15:00:00', '1600.00'),
(157, 'Cargo Ship', 'Mumbai', 'Goa', '05:30:00', '14:00:00', '1200.00'),
(158, 'Harbour Explorer', 'Dubai', 'Kolkata', '10:00:00', '23:00:00', '4500.00'),
(159, 'Wave Rider', 'Singapore', 'Mumbai', '16:30:00', '04:30:00', '3700.00'),
(160, 'Dreamliner', 'Visakhapatnam', 'Dubai', '13:00:00', '02:30:00', '4800.00'),
(161, 'Sunshine Sailor', 'Colombo', 'Kochi', '06:00:00', '16:00:00', '2200.00'),
(162, 'Harbour Dawn', 'Kochi', 'Singapore', '11:00:00', '21:00:00', '3000.00'),
(163, 'Ocean Quest', 'Goa', 'Kolkata', '08:30:00', '19:30:00', '1900.00'),
(164, 'Star Voyager', 'Abu Dhabi', 'Mumbai', '13:00:00', '23:00:00', '3500.00'),
(165, 'Nautical Explorer', 'Chennai', 'Colombo', '09:00:00', '18:00:00', '2300.00'),
(166, 'Harbour Express', 'Mumbai', 'Chennai', '06:00:00', '16:00:00', '1800.00'),
(167, 'Ocean Explorer', 'Chennai', 'Mumbai', '10:00:00', '20:00:00', '1600.00'),
(168, 'Blue Star', 'Kolkata', 'Mumbai', '07:00:00', '17:00:00', '2200.00'),
(169, 'Cargo Vessel', 'Visakhapatnam', 'Chennai', '11:30:00', '21:30:00', '1700.00'),
(170, 'Wind Chaser', 'Kochi', 'Dubai', '13:30:00', '01:00:00', '5400.00'),
(171, 'Harbour Breeze', 'Dubai', 'Singapore', '09:00:00', '20:00:00', '4300.00'),
(172, 'Ocean Breeze', 'Singapore', 'Colombo', '22:00:00', '09:00:00', '3700.00'),
(173, 'Sunrise Captain', 'Colombo', 'Kochi', '18:00:00', '05:00:00', '2100.00'),
(174, 'Sea Explorer', 'Kochi', 'Goa', '12:30:00', '22:30:00', '1250.00'),
(175, 'Ocean Wave', 'Goa', 'Visakhapatnam', '11:00:00', '21:00:00', '1500.00'),
(176, 'Coastal Star', 'Goa', 'Kolkata', '14:00:00', '03:30:00', '2900.00'),
(177, 'Port Runner', 'Mumbai', 'Visakhapatnam', '16:00:00', '01:30:00', '2800.00'),
(178, 'Sea Pioneer', 'Dubai', 'Abu Dhabi', '10:30:00', '12:00:00', '900.00'),
(179, 'Sunset Sailor', 'Abu Dhabi', 'Kochi', '12:30:00', '23:30:00', '4000.00'),
(180, 'Harbour Queen', 'Singapore', 'Dubai', '19:30:00', '06:00:00', '3200.00'),
(181, 'Blue Horizon', 'Singapore', 'Chennai', '21:00:00', '09:00:00', '3500.00'),
(182, 'Cargo Hauler', 'Mumbai', 'Goa', '09:30:00', '20:30:00', '3900.00'),
(183, 'Wave Rusher', 'Visakhapatnam', 'Chennai', '08:00:00', '18:30:00', '1600.00'),
(184, 'Ocean Drifter', 'Chennai', 'Goa', '07:30:00', '18:00:00', '1300.00'),
(185, 'Sea Monarch', 'Colombo', 'Goa', '11:00:00', '21:00:00', '2400.00'),
(186, 'Tide Runner', 'Singapore', 'Mumbai', '16:00:00', '04:00:00', '3800.00'),
(187, 'Sea Voyager', 'Mumbai', 'Chennai', '08:00:00', '18:00:00', '1500.00'),
(188, 'Ocean Breeze', 'Chennai', 'Mumbai', '09:00:00', '19:00:00', '1700.00'),
(189, 'Lighthouse Express', 'Kolkata', 'Visakhapatnam', '06:30:00', '15:30:00', '1200.00'),
(190, 'Coastal Runner', 'Visakhapatnam', 'Kochi', '10:00:00', '20:00:00', '1800.00'),
(191, 'Blue Wave', 'Kochi', 'Goa', '12:00:00', '22:00:00', '1100.00'),
(192, 'Wind Rider', 'Goa', 'Dubai', '14:00:00', '02:00:00', '5000.00'),
(193, 'Sea Monarch', 'Dubai', 'Abu Dhabi', '16:00:00', '17:30:00', '800.00'),
(194, 'Harbour Queen', 'Abu Dhabi', 'Singapore', '17:00:00', '08:00:00', '4000.00'),
(195, 'Sunset Dream', 'Singapore', 'Colombo', '20:00:00', '07:00:00', '3500.00'),
(196, 'Sea Prince', 'Colombo', 'Mumbai', '21:00:00', '08:00:00', '3200.00'),
(197, 'Ocean Spirit', 'Chennai', 'Kochi', '07:30:00', '15:00:00', '1600.00'),
(198, 'Cargo Ship', 'Mumbai', 'Goa', '05:30:00', '14:00:00', '1200.00'),
(199, 'Harbour Explorer', 'Dubai', 'Kolkata', '10:00:00', '23:00:00', '4500.00'),
(200, 'Wave Rider', 'Singapore', 'Mumbai', '16:30:00', '04:30:00', '3700.00'),
(201, 'Dreamliner', 'Visakhapatnam', 'Dubai', '13:00:00', '02:30:00', '4800.00'),
(202, 'Sunshine Sailor', 'Colombo', 'Kochi', '06:00:00', '16:00:00', '2200.00'),
(203, 'Harbour Dawn', 'Kochi', 'Singapore', '11:00:00', '21:00:00', '3000.00'),
(204, 'Ocean Quest', 'Goa', 'Kolkata', '08:30:00', '19:30:00', '1900.00'),
(205, 'Star Voyager', 'Abu Dhabi', 'Mumbai', '13:00:00', '23:00:00', '3500.00'),
(206, 'Nautical Explorer', 'Chennai', 'Colombo', '09:00:00', '18:00:00', '2300.00'),
(207, 'Harbour Express', 'Mumbai', 'Chennai', '06:00:00', '16:00:00', '1800.00'),
(208, 'Ocean Explorer', 'Chennai', 'Mumbai', '10:00:00', '20:00:00', '1600.00'),
(209, 'Blue Star', 'Kolkata', 'Mumbai', '07:00:00', '17:00:00', '2200.00'),
(210, 'Cargo Vessel', 'Visakhapatnam', 'Chennai', '11:30:00', '21:30:00', '1700.00'),
(211, 'Wind Chaser', 'Kochi', 'Dubai', '13:30:00', '01:00:00', '5400.00'),
(212, 'Harbour Breeze', 'Dubai', 'Singapore', '09:00:00', '20:00:00', '4300.00'),
(213, 'Ocean Breeze', 'Singapore', 'Colombo', '22:00:00', '09:00:00', '3700.00'),
(214, 'Sunrise Captain', 'Colombo', 'Kochi', '18:00:00', '05:00:00', '2100.00'),
(215, 'Sea Explorer', 'Kochi', 'Goa', '12:30:00', '22:30:00', '1250.00'),
(216, 'Ocean Wave', 'Goa', 'Visakhapatnam', '11:00:00', '21:00:00', '1500.00'),
(217, 'Coastal Star', 'Goa', 'Kolkata', '14:00:00', '03:30:00', '2900.00'),
(218, 'Port Runner', 'Mumbai', 'Visakhapatnam', '16:00:00', '01:30:00', '2800.00'),
(219, 'Sea Pioneer', 'Dubai', 'Abu Dhabi', '10:30:00', '12:00:00', '900.00'),
(220, 'Sunset Sailor', 'Abu Dhabi', 'Kochi', '12:30:00', '23:30:00', '4000.00'),
(221, 'Harbour Queen', 'Singapore', 'Dubai', '19:30:00', '06:00:00', '3200.00'),
(222, 'Blue Horizon', 'Singapore', 'Chennai', '21:00:00', '09:00:00', '3500.00'),
(223, 'Cargo Hauler', 'Mumbai', 'Goa', '09:30:00', '20:30:00', '3900.00'),
(224, 'Wave Rusher', 'Visakhapatnam', 'Chennai', '08:00:00', '18:30:00', '1600.00'),
(225, 'Ocean Drifter', 'Chennai', 'Goa', '07:30:00', '18:00:00', '1300.00'),
(226, 'Sea Monarch', 'Colombo', 'Goa', '11:00:00', '21:00:00', '2400.00'),
(227, 'Tide Runner', 'Singapore', 'Mumbai', '16:00:00', '04:00:00', '3800.00');

-- --------------------------------------------------------

--
-- Table structure for table `train_routes`
--

CREATE TABLE `train_routes` (
  `train_id` int(11) NOT NULL,
  `train_name` varchar(255) NOT NULL,
  `source_station` varchar(255) NOT NULL,
  `destination_station` varchar(255) NOT NULL,
  `departure_time` time NOT NULL,
  `arrival_time` time NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train_routes`
--

INSERT INTO `train_routes` (`train_id`, `train_name`, `source_station`, `destination_station`, `departure_time`, `arrival_time`, `price`) VALUES
(121, 'Rajdhani Express', 'Delhi', 'Mumbai', '06:00:00', '16:00:00', '2500.00'),
(122, 'Shatabdi Express', 'Delhi', 'Kolkata', '08:30:00', '22:30:00', '3200.00'),
(123, 'Duronto Express', 'Mumbai', 'Chennai', '07:00:00', '20:00:00', '2700.00'),
(124, 'Garib Rath', 'Mumbai', 'Ahmedabad', '09:00:00', '14:00:00', '800.00'),
(125, 'Howrah Mail', 'Kolkata', 'Chennai', '18:00:00', '10:00:00', '1600.00'),
(126, 'Ganga Sutlej Express', 'Lucknow', 'Jaipur', '10:00:00', '17:00:00', '850.00'),
(127, 'Mandovi Express', 'Mumbai', 'Goa', '06:30:00', '14:00:00', '800.00'),
(128, 'Deccan Queen', 'Pune', 'Mumbai', '07:15:00', '10:15:00', '500.00'),
(129, 'Ahmedabad Express', 'Ahmedabad', 'Delhi', '05:00:00', '15:00:00', '1200.00'),
(130, 'Chennai Express', 'Chennai', 'Bengaluru', '06:00:00', '12:00:00', '700.00'),
(131, 'Jaipur Superfast', 'Jaipur', 'Ahmedabad', '08:00:00', '13:00:00', '600.00'),
(132, 'Bengaluru Express', 'Bengaluru', 'Hyderabad', '07:30:00', '12:30:00', '1500.00'),
(133, 'Rajdhani Express', 'Kolkata', 'Delhi', '06:00:00', '18:00:00', '2500.00'),
(134, 'Lucknow Mail', 'Lucknow', 'Delhi', '10:00:00', '15:00:00', '1200.00'),
(135, 'Chennai Superfast', 'Chennai', 'Hyderabad', '12:00:00', '18:00:00', '1700.00'),
(136, 'Jaipur Express', 'Delhi', 'Jaipur', '08:00:00', '12:00:00', '900.00'),
(137, 'Bengaluru Rajdhani', 'Bengaluru', 'Mumbai', '05:00:00', '13:00:00', '1800.00'),
(138, 'Mumbai Double Decker', 'Mumbai', 'Pune', '10:00:00', '13:00:00', '600.00'),
(139, 'Ahmedabad Duronto', 'Ahmedabad', 'Mumbai', '06:30:00', '11:30:00', '900.00'),
(140, 'Jaipur Mail', 'Jaipur', 'Lucknow', '18:00:00', '06:00:00', '1300.00'),
(141, 'Mumbai Superfast', 'Mumbai', 'Lucknow', '06:00:00', '18:30:00', '2500.00'),
(142, 'Pune Shatabdi', 'Pune', 'Ahmedabad', '07:00:00', '13:30:00', '1400.00'),
(143, 'Delhi Duronto', 'Delhi', 'Jaipur', '06:00:00', '10:00:00', '900.00'),
(144, 'Kolkata Express', 'Kolkata', 'Bengaluru', '07:00:00', '22:00:00', '2200.00'),
(145, 'Hyderabad Rajdhani', 'Hyderabad', 'Ahmedabad', '05:30:00', '18:30:00', '2800.00'),
(146, 'Chennai Garib Rath', 'Chennai', 'Pune', '10:00:00', '20:30:00', '1900.00'),
(147, 'Bengaluru Express', 'Bengaluru', 'Mumbai', '06:30:00', '14:30:00', '1500.00'),
(148, 'Lucknow Superfast', 'Lucknow', 'Kolkata', '08:00:00', '20:00:00', '2200.00'),
(149, 'Jaipur Duronto', 'Jaipur', 'Delhi', '07:00:00', '11:00:00', '800.00'),
(150, 'Ahmedabad Shatabdi', 'Ahmedabad', 'Hyderabad', '09:00:00', '21:30:00', '2500.00'),
(151, 'Mumbai Express', 'Mumbai', 'Chennai', '11:00:00', '23:00:00', '2400.00'),
(152, 'Delhi Rajdhani', 'Delhi', 'Bengaluru', '08:00:00', '20:30:00', '3200.00'),
(153, 'Kolkata Mail', 'Kolkata', 'Lucknow', '06:00:00', '18:00:00', '2100.00'),
(154, 'Bengaluru Duronto', 'Bengaluru', 'Chennai', '08:30:00', '12:30:00', '700.00'),
(155, 'Jaipur Mail', 'Jaipur', 'Mumbai', '06:00:00', '18:00:00', '1900.00'),
(156, 'Hyderabad Express', 'Hyderabad', 'Kolkata', '10:00:00', '23:00:00', '2700.00'),
(157, 'Ahmedabad Superfast', 'Ahmedabad', 'Lucknow', '07:00:00', '20:00:00', '2300.00'),
(158, 'Pune Express', 'Pune', 'Delhi', '09:00:00', '21:00:00', '2400.00'),
(159, 'Mumbai Rajdhani', 'Mumbai', 'Jaipur', '08:00:00', '20:00:00', '2100.00'),
(160, 'Delhi Shatabdi', 'Delhi', 'Hyderabad', '07:00:00', '21:00:00', '2800.00'),
(161, 'Bengaluru Shatabdi', 'Bengaluru', 'Pune', '06:30:00', '12:30:00', '1300.00'),
(162, 'Chennai Express', 'Chennai', 'Ahmedabad', '11:00:00', '01:00:00', '2600.00'),
(163, 'Kolkata Superfast', 'Kolkata', 'Mumbai', '09:00:00', '23:30:00', '3200.00'),
(164, 'Hyderabad Shatabdi', 'Hyderabad', 'Delhi', '06:30:00', '20:30:00', '2900.00'),
(165, 'Jaipur Rajdhani', 'Jaipur', 'Chennai', '10:00:00', '23:30:00', '2600.00'),
(166, 'Ahmedabad Mail', 'Ahmedabad', 'Jaipur', '06:30:00', '12:30:00', '1500.00'),
(167, 'Mumbai Duronto', 'Mumbai', 'Bengaluru', '07:30:00', '14:30:00', '1900.00'),
(168, 'Pune Shatabdi', 'Pune', 'Lucknow', '09:30:00', '22:30:00', '2500.00'),
(169, 'Delhi Superfast', 'Delhi', 'Pune', '08:00:00', '22:00:00', '2600.00'),
(170, 'Kolkata Rajdhani', 'Kolkata', 'Hyderabad', '06:00:00', '20:00:00', '2700.00'),
(171, 'Bengaluru Express', 'Bengaluru', 'Jaipur', '10:00:00', '22:00:00', '2400.00'),
(172, 'Lucknow Shatabdi', 'Lucknow', 'Ahmedabad', '07:00:00', '19:30:00', '2300.00'),
(173, 'Jaipur Superfast', 'Jaipur', 'Hyderabad', '08:30:00', '20:30:00', '2500.00'),
(174, 'Ahmedabad Express', 'Ahmedabad', 'Chennai', '07:00:00', '19:30:00', '2700.00'),
(175, 'Mumbai Mail', 'Mumbai', 'Lucknow', '10:00:00', '22:00:00', '2400.00'),
(176, 'Delhi Duronto', 'Delhi', 'Bengaluru', '05:30:00', '18:00:00', '3100.00'),
(177, 'Kolkata Express', 'Kolkata', 'Delhi', '07:00:00', '19:00:00', '2800.00'),
(178, 'Hyderabad Mail', 'Hyderabad', 'Pune', '11:00:00', '17:00:00', '1300.00'),
(179, 'Chennai Rajdhani', 'Chennai', 'Mumbai', '09:00:00', '22:00:00', '2700.00'),
(180, 'Bengaluru Shatabdi', 'Bengaluru', 'Ahmedabad', '07:00:00', '18:30:00', '2900.00'),
(181, 'Jaipur Duronto', 'Jaipur', 'Lucknow', '08:00:00', '16:00:00', '1600.00'),
(182, 'Ahmedabad Mail', 'Ahmedabad', 'Kolkata', '06:00:00', '20:00:00', '2800.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus_routes`
--
ALTER TABLE `bus_routes`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `flight_routes`
--
ALTER TABLE `flight_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_routes`
--
ALTER TABLE `ship_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `train_routes`
--
ALTER TABLE `train_routes`
  ADD PRIMARY KEY (`train_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus_routes`
--
ALTER TABLE `bus_routes`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `flight_routes`
--
ALTER TABLE `flight_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `ship_routes`
--
ALTER TABLE `ship_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `train_routes`
--
ALTER TABLE `train_routes`
  MODIFY `train_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
