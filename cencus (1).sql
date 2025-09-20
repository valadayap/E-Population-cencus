-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2025 at 01:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cencus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `passw` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `passw`) VALUES
(1, 'emily.davis@example.com', 'Emily2025'),
(2, 'emily.davis@example.com', 'Emily2025'),
(3, 'emily.davis@example.com', 'Emily2025'),
(4, 'emily.davis@example.com', 'Emily2025'),
(5, 'emily.davis@example.com', 'Emily2025'),
(6, 'nandani@gamil.com', '1234'),
(7, 'daya@gmail.com', '12345'),
(8, 'daya@gmail.com', '12345'),
(9, 'daya@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `children_final`
--

CREATE TABLE `children_final` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `child_alive` tinyint(1) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `children_final`
--

INSERT INTO `children_final` (`id`, `city_id`, `child_alive`, `name`, `age`) VALUES
(1, 1, 0, 'dddd', 2),
(2, 1, 0, 'dddd', 2),
(3, 1, 0, 'virat', 3),
(4, 101, 1, 'Alice', 5),
(5, 102, 1, 'Bob', 7),
(6, 103, 0, 'Charlie', 3),
(7, 101, 1, 'Daisy', 6),
(8, 102, 0, 'Ethan', 4),
(9, 103, 1, 'Fiona', 2),
(10, 101, 1, 'George', 8),
(11, 102, 1, 'Hannah', 5),
(12, 103, 1, 'Ian', 7),
(13, 101, 0, 'Jane', 3),
(14, 102, 1, 'Kyle', 4),
(15, 103, 0, 'Lily', 6),
(16, 101, 1, 'Mason', 5),
(17, 102, 1, 'Nina', 7),
(18, 103, 1, 'Oscar', 2),
(19, 101, 0, 'Paula', 3),
(20, 102, 1, 'Quinn', 4),
(21, 103, 0, 'Ruby', 5),
(22, 101, 1, 'Sam', 6),
(23, 102, 1, 'Tina', 3),
(24, 103, 1, 'Uma', 5),
(25, 101, 1, 'Victor', 7),
(26, 102, 0, 'Wendy', 2),
(27, 103, 1, 'Xander', 6),
(28, 101, 1, 'Yara', 4),
(29, 102, 0, 'Zane', 3),
(30, 103, 1, 'Ava', 5),
(31, 101, 1, 'Ben', 6),
(32, 102, 1, 'Cara', 7),
(33, 103, 0, 'Dan', 4),
(34, 101, 1, 'Ella', 5),
(35, 102, 1, 'Finn', 2),
(36, 103, 1, 'Gina', 3),
(37, 101, 0, 'Hugo', 6),
(38, 102, 1, 'Ivy', 7),
(39, 103, 1, 'Jack', 5),
(40, 101, 1, 'Kira', 4),
(41, 102, 0, 'Leo', 2),
(42, 103, 1, 'Mila', 6),
(43, 101, 1, 'Nico', 3),
(44, 102, 1, 'Olive', 5),
(45, 103, 0, 'Pete', 7),
(46, 101, 1, 'Queenie', 4),
(47, 102, 1, 'Ray', 3),
(48, 103, 1, 'Sophie', 6),
(49, 101, 0, 'Tom', 5),
(50, 102, 1, 'Ursula', 2),
(51, 103, 1, 'Violet', 7),
(52, 101, 1, 'Will', 3),
(53, 102, 1, 'Zoe', 4),
(54, 1, 0, 'kohli', 2),
(55, 1, 0, 'mira', 3);

-- --------------------------------------------------------

--
-- Table structure for table `city_town`
--

CREATE TABLE `city_town` (
  `id` int(11) NOT NULL,
  `sub_district_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deceased_elderly`
--

CREATE TABLE `deceased_elderly` (
  `id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `death_confirmed` enum('Yes','No') NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deceased_elderly`
--

INSERT INTO `deceased_elderly` (`id`, `city_id`, `death_confirmed`, `name`, `age`) VALUES
(1, 1, 'Yes', 'sss', 24),
(2, 1, 'Yes', 'sss', 24),
(3, 1, 'Yes', 'ramanbahai', 50),
(4, 1, 'Yes', 'sureshbhai', 50);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `no` int(11) NOT NULL,
  `District` varchar(100) DEFAULT NULL,
  `d_code` varchar(4) NOT NULL,
  `sub_District` varchar(100) DEFAULT NULL,
  `Pin` varchar(10) DEFAULT NULL,
  `Household_Status` varchar(100) DEFAULT NULL,
  `City_Town` varchar(100) DEFAULT NULL,
  `Rationcard_No` varchar(50) DEFAULT NULL,
  `Name_of_person` varchar(100) DEFAULT NULL,
  `Relationship_with_main_landlord` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `age` int(11) NOT NULL,
  `Birth_Place` varchar(100) DEFAULT NULL,
  `Current_marital_status` varchar(50) DEFAULT NULL,
  `Religion` varchar(50) DEFAULT NULL,
  `Caste_Category` varchar(20) DEFAULT NULL,
  `Disability` varchar(100) DEFAULT NULL,
  `Mother_tongue` varchar(50) DEFAULT NULL,
  `Education` varchar(100) DEFAULT NULL,
  `Economic_Activity_Category` varchar(100) DEFAULT NULL,
  `Working_class` varchar(100) DEFAULT NULL,
  `Non_Economic_Activity` varchar(100) DEFAULT NULL,
  `Annual_income` decimal(15,2) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `sub_district_id` int(11) DEFAULT NULL,
  `city_town_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`no`, `District`, `d_code`, `sub_District`, `Pin`, `Household_Status`, `City_Town`, `Rationcard_No`, `Name_of_person`, `Relationship_with_main_landlord`, `Gender`, `Date_Of_Birth`, `age`, `Birth_Place`, `Current_marital_status`, `Religion`, `Caste_Category`, `Disability`, `Mother_tongue`, `Education`, `Economic_Activity_Category`, `Working_class`, `Non_Economic_Activity`, `Annual_income`, `district_id`, `sub_district_id`, `city_town_id`) VALUES
(1, 'Kutch', 'D007', 'Bhuj', '370001', 'Owned', 'Bhuj', '0', 'Sahil Raval', 'Brother', 'Male', '1995-05-20', 30, 'Bhuj', 'Single', 'Hindu', 'OBC', 'None', 'Gujarati', 'Postgraduate', 'Business', 'Self-Employed', 'No', '900000.00', NULL, NULL, NULL),
(2, 'Kutch', 'D007', 'Mandvi', '370465', 'Rented', 'Mandvi', '0', 'Kajal Desai', 'Sister', 'Female', '1992-10-12', 33, 'Mandvi', 'Married', 'Muslim', 'General', 'None', 'Gujarati', 'Undergraduate', 'Service', 'Employee', 'No', '600000.00', NULL, NULL, NULL),
(3, 'Kutch', 'D007', 'Anjar', '370110', 'Owned', 'Anjar', '0', 'Krishna Patel', 'Father', 'Male', '1980-09-28', 45, 'Anjar', 'Widowed', 'Hindu', 'General', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '400000.00', NULL, NULL, NULL),
(4, 'Kutch', 'D007', 'Bhuj', '370001', 'Rented', 'Bhuj', '0', 'Neelam Singh', 'Mother', 'Female', '1990-03-18', 35, 'Bhuj', 'Married', 'Christian', 'OBC', 'None', 'Gujarati', 'Graduate', 'Business', 'Self-Employed', 'No', '550000.00', NULL, NULL, NULL),
(5, 'Gandhinagar', 'D008', 'Kalol', '382721', 'Owned', 'Gandhinagar', '0', 'Vipul Joshi', 'Father', 'Male', '1980-02-05', 45, 'Gandhinagar', 'Married', 'Hindu', 'General', 'None', 'Gujarati', 'Graduate', 'Service', 'Employee', 'No', '800000.00', NULL, NULL, NULL),
(6, 'Gandhinagar', 'D008', 'Mansa', '382845', 'Rented', 'Gandhinagar', '0', 'Swati Shah', 'Mother', 'Female', '1985-08-20', 40, 'Gandhinagar', 'Divorced', 'Christian', 'OBC', 'Hearing Impaired', 'Gujarati', 'Undergraduate', 'Business', 'Self-Employed', 'No', '700000.00', NULL, NULL, NULL),
(7, 'Gandhinagar', 'D008', 'Pethapur', '382421', 'Owned', 'Gandhinagar', '0', 'Rajesh Bedi', 'Self', 'Male', '1982-07-15', 43, 'Gandhinagar', 'Married', 'Muslim', 'General', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '400000.00', NULL, NULL, NULL),
(8, 'Gandhinagar', 'D008', 'Kalol', '382721', 'Rented', 'Gandhinagar', '0', 'Priya Thakur', 'Wife', 'Female', '1992-01-25', 33, 'Gandhinagar', 'Married', 'Hindu', 'OBC', 'None', 'Gujarati', 'Postgraduate', 'Service', 'Employee', 'No', '650000.00', NULL, NULL, NULL),
(9, 'Bharuch', 'D009', 'Jambusar', '392150', 'Owned', 'Bharuch', '0', 'Mehul Chauhan', 'Brother', 'Male', '1990-07-10', 35, 'Bharuch', 'Single', 'Hindu', 'SC', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '250000.00', NULL, NULL, NULL),
(10, 'Bharuch', 'D009', 'Vagra', '392165', 'Rented', 'Bharuch', '0', 'Kiran Ramesh', 'Father', 'Male', '1982-11-05', 43, 'Bharuch', 'Widowed', 'Christian', 'OBC', 'Visually Impaired', 'Gujarati', 'Undergraduate', 'Business', 'Self-Employed', 'No', '600000.00', NULL, NULL, NULL),
(11, 'Bharuch', 'D009', 'Bharuch', '392001', 'Owned', 'Bharuch', '0', 'Harshita Patel', 'Daughter', 'Female', '2000-01-20', 25, 'Bharuch', 'Married', 'Hindu', 'General', 'None', 'Gujarati', 'Postgraduate', 'Service', 'Employee', 'No', '500000.00', NULL, NULL, NULL),
(12, 'Bharuch', 'D009', 'Zadeshwar', '392011', 'Rented', 'Bharuch', '0', 'Ravi Shah', 'Father', 'Male', '1975-03-10', 50, 'Bharuch', 'Divorced', 'Muslim', 'OBC', 'None', 'Gujarati', 'Graduate', 'Business', 'Self-Employed', 'No', '800000.00', NULL, NULL, NULL),
(13, 'Narmada', 'D010', 'Rajpipla', '393145', 'Owned', 'Rajpipla', '0', 'Ranjan Parmar', 'Self', 'Male', '1993-07-05', 32, 'Rajpipla', 'Married', 'Hindu', 'General', 'None', 'Gujarati', 'Graduate', 'Service', 'Employee', 'No', '700000.00', NULL, NULL, NULL),
(14, 'Narmada', 'D010', 'Kevadia', '393155', 'Rented', 'Kevadia', '0', 'Maya Chavda', 'Mother', 'Female', '1980-04-12', 45, 'Kevadia', 'Widowed', 'Christian', 'OBC', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '300000.00', NULL, NULL, NULL),
(15, 'Narmada', 'D010', 'Simalia', '393120', 'Owned', 'Simalia', '0', 'Jayesh Patel', 'Father', 'Male', '1987-12-30', 38, 'Simalia', 'Married', 'Muslim', 'SC', 'None', 'Gujarati', 'Postgraduate', 'Business', 'Self-Employed', 'No', '900000.00', NULL, NULL, NULL),
(16, 'Narmada', 'D010', 'Rajpipla', '393145', 'Rented', 'Rajpipla', '0', 'Sonali Jadhav', 'Wife', 'Female', '1992-05-16', 33, 'Rajpipla', 'Married', 'Hindu', 'OBC', 'None', 'Gujarati', 'Undergraduate', 'Service', 'Employee', 'No', '600000.00', NULL, NULL, NULL),
(17, 'Mehsana', 'D011', 'Visnagar', '384315', 'Owned', 'Mehsana', '0', 'Manish Trivedi', 'Brother', 'Male', '1991-09-02', 34, 'Mehsana', 'Single', 'Hindu', 'General', 'None', 'Gujarati', 'Graduate', 'Business', 'Self-Employed', 'No', '750000.00', NULL, NULL, NULL),
(18, 'Mehsana', 'D011', 'Unjha', '384170', 'Rented', 'Unjha', '0', 'Neha Chauhan', 'Sister', 'Female', '1994-04-11', 31, 'Unjha', 'Married', 'Muslim', 'OBC', 'None', 'Gujarati', 'Undergraduate', 'Service', 'Employee', 'No', '500000.00', NULL, NULL, NULL),
(19, 'Mehsana', 'D011', 'Kadi', '382715', 'Owned', 'Kadi', '0', 'Vijay Yadav', 'Father', 'Male', '1982-07-10', 43, 'Kadi', 'Widowed', 'Christian', 'OBC', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '350000.00', NULL, NULL, NULL),
(20, 'Mehsana', 'D011', 'Mehsana', '384001', 'Rented', 'Mehsana', '0', 'Sejal Modi', 'Daughter', 'Female', '2000-11-05', 25, 'Mehsana', 'Single', 'Hindu', 'SC', 'None', 'Gujarati', 'Postgraduate', 'Service', 'Employee', 'No', '650000.00', NULL, NULL, NULL),
(21, 'Kutch', 'D007', 'Bhuj', '370001', 'Owned', 'Bhuj', 'RC70001', 'Sahil Raval', 'Brother', 'Male', '1995-05-20', 30, 'Bhuj', 'Single', 'Hindu', 'OBC', 'None', 'Gujarati', 'Postgraduate', 'Business', 'Self-Employed', 'No', '900000.00', NULL, NULL, NULL),
(22, 'Kutch', 'D007', 'Mandvi', '370465', 'Rented', 'Mandvi', 'RC70002', 'Kajal Desai', 'Sister', 'Female', '1992-10-12', 33, 'Mandvi', 'Married', 'Muslim', 'General', 'None', 'Gujarati', 'Undergraduate', 'Service', 'Employee', 'No', '600000.00', NULL, NULL, NULL),
(23, 'Kutch', 'D007', 'Anjar', '370110', 'Owned', 'Anjar', 'RC70003', 'Krishna Patel', 'Father', 'Male', '1980-09-28', 45, 'Anjar', 'Widowed', 'Hindu', 'General', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '400000.00', NULL, NULL, NULL),
(24, 'Kutch', 'D007', 'Bhuj', '370001', 'Rented', 'Bhuj', 'RC70004', 'Neelam Singh', 'Mother', 'Female', '1990-03-18', 35, 'Bhuj', 'Married', 'Christian', 'OBC', 'None', 'Gujarati', 'Graduate', 'Business', 'Self-Employed', 'No', '550000.00', NULL, NULL, NULL),
(25, 'Gandhinagar', 'D008', 'Kalol', '382721', 'Owned', 'Gandhinagar', 'RC80001', 'Vipul Joshi', 'Father', 'Male', '1980-02-05', 45, 'Gandhinagar', 'Married', 'Hindu', 'General', 'None', 'Gujarati', 'Graduate', 'Service', 'Employee', 'No', '800000.00', NULL, NULL, NULL),
(26, 'Gandhinagar', 'D008', 'Mansa', '382845', 'Rented', 'Gandhinagar', 'RC80002', 'Swati Shah', 'Mother', 'Female', '1985-08-20', 40, 'Gandhinagar', 'Divorced', 'Christian', 'OBC', 'Hearing Impaired', 'Gujarati', 'Undergraduate', 'Business', 'Self-Employed', 'No', '700000.00', NULL, NULL, NULL),
(27, 'Gandhinagar', 'D008', 'Pethapur', '382421', 'Owned', 'Gandhinagar', 'RC80003', 'Rajesh Bedi', 'Self', 'Male', '1982-07-15', 43, 'Gandhinagar', 'Married', 'Muslim', 'General', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '400000.00', NULL, NULL, NULL),
(28, 'Gandhinagar', 'D008', 'Kalol', '382721', 'Rented', 'Gandhinagar', 'RC80004', 'Priya Thakur', 'Wife', 'Female', '1992-01-25', 33, 'Gandhinagar', 'Married', 'Hindu', 'OBC', 'None', 'Gujarati', 'Postgraduate', 'Service', 'Employee', 'No', '650000.00', NULL, NULL, NULL),
(29, 'Bharuch', 'D009', 'Jambusar', '392150', 'Owned', 'Bharuch', 'RC90001', 'Mehul Chauhan', 'Brother', 'Male', '1990-07-10', 35, 'Bharuch', 'Single', 'Hindu', 'SC', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '250000.00', NULL, NULL, NULL),
(30, 'Bharuch', 'D009', 'Vagra', '392165', 'Rented', 'Bharuch', 'RC90002', 'Kiran Ramesh', 'Father', 'Male', '1982-11-05', 43, 'Bharuch', 'Widowed', 'Christian', 'OBC', 'Visually Impaired', 'Gujarati', 'Undergraduate', 'Business', 'Self-Employed', 'No', '600000.00', NULL, NULL, NULL),
(31, 'Bharuch', 'D009', 'Bharuch', '392001', 'Owned', 'Bharuch', 'RC90003', 'Harshita Patel', 'Daughter', 'Female', '2000-01-20', 25, 'Bharuch', 'Married', 'Hindu', 'General', 'None', 'Gujarati', 'Postgraduate', 'Service', 'Employee', 'No', '500000.00', NULL, NULL, NULL),
(32, 'Bharuch', 'D009', 'Zadeshwar', '392011', 'Rented', 'Bharuch', 'RC90004', 'Ravi Shah', 'Father', 'Male', '1975-03-10', 50, 'Bharuch', 'Divorced', 'Muslim', 'OBC', 'None', 'Gujarati', 'Graduate', 'Business', 'Self-Employed', 'No', '800000.00', NULL, NULL, NULL),
(33, 'Narmada', 'D010', 'Rajpipla', '393145', 'Owned', 'Rajpipla', 'RC10001', 'Ranjan Parmar', 'Self', 'Male', '1993-07-05', 32, 'Rajpipla', 'Married', 'Hindu', 'General', 'None', 'Gujarati', 'Graduate', 'Service', 'Employee', 'No', '700000.00', NULL, NULL, NULL),
(34, 'Narmada', 'D010', 'Kevadia', '393155', 'Rented', 'Kevadia', 'RC10002', 'Maya Chavda', 'Mother', 'Female', '1980-04-12', 45, 'Kevadia', 'Widowed', 'Christian', 'OBC', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '300000.00', NULL, NULL, NULL),
(35, 'Narmada', 'D010', 'Simalia', '393120', 'Owned', 'Simalia', 'RC10003', 'Jayesh Patel', 'Father', 'Male', '1987-12-30', 38, 'Simalia', 'Married', 'Muslim', 'SC', 'None', 'Gujarati', 'Postgraduate', 'Business', 'Self-Employed', 'No', '900000.00', NULL, NULL, NULL),
(36, 'Narmada', 'D010', 'Rajpipla', '393145', 'Rented', 'Rajpipla', 'RC10004', 'Sonali Jadhav', 'Wife', 'Female', '1992-05-16', 33, 'Rajpipla', 'Married', 'Hindu', 'OBC', 'None', 'Gujarati', 'Undergraduate', 'Service', 'Employee', 'No', '600000.00', NULL, NULL, NULL),
(37, 'Mehsana', 'D011', 'Visnagar', '384315', 'Owned', 'Mehsana', 'RC11001', 'Manish Trivedi', 'Brother', 'Male', '1991-09-02', 34, 'Mehsana', 'Single', 'Hindu', 'General', 'None', 'Gujarati', 'Graduate', 'Business', 'Self-Employed', 'No', '750000.00', NULL, NULL, NULL),
(38, 'Mehsana', 'D011', 'Unjha', '384170', 'Rented', 'Unjha', 'RC11002', 'Neha Chauhan', 'Sister', 'Female', '1994-04-11', 31, 'Unjha', 'Married', 'Muslim', 'OBC', 'None', 'Gujarati', 'Undergraduate', 'Service', 'Employee', 'No', '500000.00', NULL, NULL, NULL),
(39, 'Mehsana', 'D011', 'Kadi', '382715', 'Owned', 'Kadi', 'RC11003', 'Vijay Yadav', 'Father', 'Male', '1982-07-10', 43, 'Kadi', 'Widowed', 'Christian', 'OBC', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '350000.00', NULL, NULL, NULL),
(40, 'Mehsana', 'D011', 'Mehsana', '384001', 'Rented', 'Mehsana', 'RC11004', 'Sejal Modi', 'Daughter', 'Female', '2000-11-05', 25, 'Mehsana', 'Single', 'Hindu', 'SC', 'None', 'Gujarati', 'Postgraduate', 'Service', 'Employee', 'No', '650000.00', NULL, NULL, NULL),
(41, 'Kutch', 'D007', 'Bhuj', '370001', 'Owned', 'Bhuj', 'RC70001', 'Sahil Raval', 'Brother', 'Male', '1995-05-20', 30, 'Bhuj', 'Single', 'Hindu', 'OBC', 'None', 'Gujarati', 'Postgraduate', 'Business', 'Self-Employed', 'No', '900000.00', NULL, NULL, NULL),
(42, 'Kutch', 'D007', 'Mandvi', '370465', 'Rented', 'Mandvi', 'RC70002', 'Kajal Desai', 'Sister', 'Female', '1992-10-12', 33, 'Mandvi', 'Married', 'Muslim', 'General', 'None', 'Gujarati', 'Undergraduate', 'Service', 'Employee', 'No', '600000.00', NULL, NULL, NULL),
(43, 'Kutch', 'D007', 'Anjar', '370110', 'Owned', 'Anjar', 'RC70003', 'Krishna Patel', 'Father', 'Male', '1980-09-28', 45, 'Anjar', 'Widowed', 'Hindu', 'General', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '400000.00', NULL, NULL, NULL),
(44, 'Kutch', 'D007', 'Bhuj', '370001', 'Rented', 'Bhuj', 'RC70004', 'Neelam Singh', 'Mother', 'Female', '1990-03-18', 35, 'Bhuj', 'Married', 'Christian', 'OBC', 'None', 'Gujarati', 'Graduate', 'Business', 'Self-Employed', 'No', '550000.00', NULL, NULL, NULL),
(45, 'Gandhinagar', 'D008', 'Kalol', '382721', 'Owned', 'Gandhinagar', 'RC80001', 'Vipul Joshi', 'Father', 'Male', '1980-02-05', 45, 'Gandhinagar', 'Married', 'Hindu', 'General', 'None', 'Gujarati', 'Graduate', 'Service', 'Employee', 'No', '800000.00', NULL, NULL, NULL),
(46, 'Gandhinagar', 'D008', 'Mansa', '382845', 'Rented', 'Gandhinagar', 'RC80002', 'Swati Shah', 'Mother', 'Female', '1985-08-20', 40, 'Gandhinagar', 'Divorced', 'Christian', 'OBC', 'Hearing Impaired', 'Gujarati', 'Undergraduate', 'Business', 'Self-Employed', 'No', '700000.00', NULL, NULL, NULL),
(47, 'Gandhinagar', 'D008', 'Pethapur', '382421', 'Owned', 'Gandhinagar', 'RC80003', 'Rajesh Bedi', 'Self', 'Male', '1982-07-15', 43, 'Gandhinagar', 'Married', 'Muslim', 'General', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '400000.00', NULL, NULL, NULL),
(48, 'Gandhinagar', 'D008', 'Kalol', '382721', 'Rented', 'Gandhinagar', 'RC80004', 'Priya Thakur', 'Wife', 'Female', '1992-01-25', 33, 'Gandhinagar', 'Married', 'Hindu', 'OBC', 'None', 'Gujarati', 'Postgraduate', 'Service', 'Employee', 'No', '650000.00', NULL, NULL, NULL),
(49, 'Bharuch', 'D009', 'Jambusar', '392150', 'Owned', 'Bharuch', 'RC90001', 'Mehul Chauhan', 'Brother', 'Male', '1990-07-10', 35, 'Bharuch', 'Single', 'Hindu', 'SC', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '250000.00', NULL, NULL, NULL),
(50, 'Bharuch', 'D009', 'Vagra', '392165', 'Rented', 'Bharuch', 'RC90002', 'Kiran Ramesh', 'Father', 'Male', '1982-11-05', 43, 'Bharuch', 'Widowed', 'Christian', 'OBC', 'Visually Impaired', 'Gujarati', 'Undergraduate', 'Business', 'Self-Employed', 'No', '600000.00', NULL, NULL, NULL),
(51, 'Bharuch', 'D009', 'Bharuch', '392001', 'Owned', 'Bharuch', 'RC90003', 'Harshita Patel', 'Daughter', 'Female', '2000-01-20', 25, 'Bharuch', 'Married', 'Hindu', 'General', 'None', 'Gujarati', 'Postgraduate', 'Service', 'Employee', 'No', '500000.00', NULL, NULL, NULL),
(52, 'Bharuch', 'D009', 'Zadeshwar', '392011', 'Rented', 'Bharuch', 'RC90004', 'Ravi Shah', 'Father', 'Male', '1975-03-10', 50, 'Bharuch', 'Divorced', 'Muslim', 'OBC', 'None', 'Gujarati', 'Graduate', 'Business', 'Self-Employed', 'No', '800000.00', NULL, NULL, NULL),
(53, 'Narmada', 'D010', 'Rajpipla', '393145', 'Owned', 'Rajpipla', 'RC10001', 'Ranjan Parmar', 'Self', 'Male', '1993-07-05', 32, 'Rajpipla', 'Married', 'Hindu', 'General', 'None', 'Gujarati', 'Graduate', 'Service', 'Employee', 'No', '700000.00', NULL, NULL, NULL),
(54, 'Narmada', 'D010', 'Kevadia', '393155', 'Rented', 'Kevadia', 'RC10002', 'Maya Chavda', 'Mother', 'Female', '1980-04-12', 45, 'Kevadia', 'Widowed', 'Christian', 'OBC', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '300000.00', NULL, NULL, NULL),
(55, 'Narmada', 'D010', 'Simalia', '393120', 'Owned', 'Simalia', 'RC10003', 'Jayesh Patel', 'Father', 'Male', '1987-12-30', 38, 'Simalia', 'Married', 'Muslim', 'SC', 'None', 'Gujarati', 'Postgraduate', 'Business', 'Self-Employed', 'No', '900000.00', NULL, NULL, NULL),
(56, 'Narmada', 'D010', 'Rajpipla', '393145', 'Rented', 'Rajpipla', 'RC10004', 'Sonali Jadhav', 'Wife', 'Female', '1992-05-16', 33, 'Rajpipla', 'Married', 'Hindu', 'OBC', 'None', 'Gujarati', 'Undergraduate', 'Service', 'Employee', 'No', '600000.00', NULL, NULL, NULL),
(57, 'Mehsana', 'D011', 'Visnagar', '384315', 'Owned', 'Mehsana', 'RC11001', 'Manish Trivedi', 'Brother', 'Male', '1991-09-02', 34, 'Mehsana', 'Single', 'Hindu', 'General', 'None', 'Gujarati', 'Graduate', 'Business', 'Self-Employed', 'No', '750000.00', NULL, NULL, NULL),
(58, 'Mehsana', 'D011', 'Unjha', '384170', 'Rented', 'Unjha', 'RC11002', 'Neha Chauhan', 'Sister', 'Female', '1994-04-11', 31, 'Unjha', 'Married', 'Muslim', 'OBC', 'None', 'Gujarati', 'Undergraduate', 'Service', 'Employee', 'No', '500000.00', NULL, NULL, NULL),
(59, 'Mehsana', 'D011', 'Kadi', '382715', 'Owned', 'Kadi', 'RC11003', 'Vijay Yadav', 'Father', 'Male', '1982-07-10', 43, 'Kadi', 'Widowed', 'Christian', 'OBC', 'None', 'Gujarati', 'School', 'Labor', 'Unemployed', 'Yes', '350000.00', NULL, NULL, NULL),
(60, 'Mehsana', 'D011', 'Mehsana', '384001', 'Rented', 'Mehsana', 'RC11004', 'Sejal Modi', 'Daughter', 'Female', '2000-11-05', 25, 'Mehsana', 'Single', 'Hindu', 'SC', 'None', 'Gujarati', 'Postgraduate', 'Service', 'Employee', 'No', '650000.00', NULL, NULL, NULL),
(61, 'Anand', 'D012', 'Petlad', '388450', 'Owned', 'Anand', 'RC12001', 'Amit Bhagat', 'Father', 'Male', '1978-03-10', 47, 'Anand', 'Married', 'Hindu', 'General', 'None', 'Gujarati', 'Graduate', 'Business', 'Self-Employed', 'No', '800000.00', NULL, NULL, NULL),
(62, 'Anand', 'D012', 'Borsad', '388540', 'Rented', 'Anand', 'RC12002', 'Rupal Joshi', 'Wife', 'Female', '1985-12-15', 40, 'Anand', 'Married', 'Muslim', 'OBC', 'None', 'Gujarati', 'Undergraduate', 'Service', 'Employee', 'No', '600000.00', NULL, NULL, NULL),
(63, 'Anand', 'D012', 'Anand', '388001', 'Owned', 'Anand', 'RC12003', 'Harsh Patel', 'Son', 'Male', '2005-01-22', 20, 'Anand', 'Single', 'Hindu', 'SC', 'None', 'Gujarati', 'Postgraduate', 'Business', 'Self-Employed', 'No', '500000.00', NULL, NULL, NULL),
(64, 'Anand', 'D012', 'Sojitra', '388110', 'Rented', 'Anand', 'RC12004', 'Sonal Thakkar', 'Daughter', 'Female', '2003-07-09', 22, 'Anand', 'Single', 'Muslim', 'OBC', 'None', 'Gujarati', 'School', 'Service', 'Employee', 'No', '450000.00', NULL, NULL, NULL),
(65, 'Anand', 'gj33', 'Borsad', '365433', 'normal', 'amdavad', '1234567890', 'test', 'father', 'Female', '2025-09-16', 22, 'awesd', 'single', 'sikhism', 'dalit', 'chronic_illness', 'gujarati', 'professional_degree', 'Farmer', '', 'gardening_hobby', '12220.00', NULL, NULL, NULL),
(66, 'Anand', 'gj33', 'Borsad', '365433', 'normal', 'amdavad', '1234567890', 'test', 'father', 'Female', '2025-09-16', 22, 'awesd', 'single', 'sikhism', 'dalit', 'chronic_illness', 'gujarati', 'professional_degree', 'Farmer', 'gardener', 'gardening_hobby', '12220.00', NULL, NULL, NULL),
(67, 'Bharuch', 'gj33', 'Hansot', '365433', 'normal', 'amdavad', '1234567890', 'test1', 'father', 'Female', '2025-09-18', 11, 'sss', 'separated', 'sikhism', 'muslim', 'learning_disability', 'vasavi', 'professional_degree', 'Farmer', 'delivery_driver', 'helping_others', '0.00', NULL, NULL, NULL),
(68, 'Junagadh', 'gj05', 'Mangrol', '365455', 'normal', 'visavader', '1234567844', 'test1222', 'father', 'Female', '2025-09-25', 22, 'lilia', 'domestic_partnership', 'judaism', 'jain', 'chronic_illness', 'garasia', 'middle_school', 'Farmer', 'gardener', 'studying', '64546.00', NULL, NULL, NULL),
(102, 'Ahmedabad', 'D001', 'Sub1', '380001', 'Owned', 'Ahmedabad City', 'RC001', 'Person A', 'Self', 'Male', '1990-01-01', 35, 'Ahmedabad', 'Married', 'Hindu', 'General', 'No', 'Gujarati', 'Graduate', 'Employed', 'Engineer', NULL, '500000.00', NULL, NULL, NULL),
(103, 'Amreli', 'D002', 'Sub2', '380002', 'Rented', 'Amreli City', 'RC002', 'Person B', 'Wife', 'Female', '1991-02-02', 34, 'Amreli', 'Single', 'Hindu', 'OBC', 'No', 'Gujarati', 'Post Graduate', 'Employed', 'Teacher', NULL, '505000.00', NULL, NULL, NULL),
(104, 'Anand', 'D003', 'Sub3', '380003', 'Owned', 'Anand City', 'RC003', 'Person C', 'Son', 'Male', '1992-03-03', 33, 'Anand', 'Married', 'Hindu', 'SC', 'No', 'Gujarati', '12th Pass', 'Employed', 'Clerk', NULL, '510000.00', NULL, NULL, NULL),
(105, 'Aravalli', 'D004', 'Sub4', '380004', 'Rented', 'Aravalli City', 'RC004', 'Person D', 'Daughter', 'Female', '1993-04-04', 32, 'Aravalli', 'Single', 'Hindu', 'ST', 'No', 'Gujarati', '10th Pass', 'Employed', 'Farmer', NULL, '515000.00', NULL, NULL, NULL),
(106, 'Banaskantha', 'D005', 'Sub5', '380005', 'Owned', 'Banaskantha City', 'RC005', 'Person E', 'Father', 'Male', '1994-05-05', 31, 'Banaskantha', 'Married', 'Hindu', 'General', 'No', 'Gujarati', 'Graduate', 'Employed', 'Engineer', NULL, '520000.00', NULL, NULL, NULL),
(107, 'Bharuch', 'D006', 'Sub6', '380006', 'Rented', 'Bharuch City', 'RC006', 'Person F', 'Mother', 'Female', '1995-06-06', 30, 'Bharuch', 'Single', 'Hindu', 'OBC', 'No', 'Gujarati', 'Post Graduate', 'Employed', 'Teacher', NULL, '525000.00', NULL, NULL, NULL),
(108, 'Bhavnagar', 'D007', 'Sub7', '380007', 'Owned', 'Bhavnagar City', 'RC007', 'Person G', 'Self', 'Male', '1996-07-07', 29, 'Bhavnagar', 'Married', 'Hindu', 'SC', 'No', 'Gujarati', '12th Pass', 'Employed', 'Clerk', NULL, '530000.00', NULL, NULL, NULL),
(109, 'Botad', 'D008', 'Sub8', '380008', 'Rented', 'Botad City', 'RC008', 'Person H', 'Wife', 'Female', '1997-08-08', 28, 'Botad', 'Single', 'Hindu', 'ST', 'No', 'Gujarati', '10th Pass', 'Employed', 'Farmer', NULL, '535000.00', NULL, NULL, NULL),
(110, 'Chhota Udaipur', 'D009', 'Sub9', '380009', 'Owned', 'Chhota Udaipur City', 'RC009', 'Person I', 'Son', 'Male', '1998-09-09', 27, 'Chhota Udaipur', 'Married', 'Hindu', 'General', 'No', 'Gujarati', 'Graduate', 'Employed', 'Engineer', NULL, '54000.00', NULL, NULL, NULL),
(111, 'Dahod', 'D010', 'Sub10', '380010', 'Rented', 'Dahod City', 'RC010', 'Person J', 'Daughter', 'Female', '1999-10-10', 26, 'Dahod', 'Single', 'Hindu', 'OBC', 'No', 'Gujarati', 'Post Graduate', 'Employed', 'Teacher', NULL, '545000.00', NULL, NULL, NULL),
(112, 'Dangs', 'D011', 'Sub11', '380011', 'Owned', 'Dangs City', 'RC011', 'Person K', 'Self', 'Male', '1990-11-11', 35, 'Dangs', 'Married', 'Hindu', 'ST', 'No', 'Gujarati', 'Graduate', 'Employed', 'Engineer', NULL, '550000.00', NULL, NULL, NULL),
(113, 'Devbhumi Dwarka', 'D012', 'Sub12', '380012', 'Rented', 'Devbhumi Dwarka City', 'RC012', 'Person L', 'Wife', 'Female', '1991-12-12', 34, 'Devbhumi Dwarka', 'Single', 'Hindu', 'General', 'No', 'Gujarati', 'Post Graduate', 'Employed', 'Teacher', NULL, '555000.00', NULL, NULL, NULL),
(114, 'Gandhinagar', 'D013', 'Sub13', '380013', 'Owned', 'Gandhinagar City', 'RC013', 'Person M', 'Son', 'Male', '1992-01-13', 33, 'Gandhinagar', 'Married', 'Hindu', 'OBC', 'No', 'Gujarati', '12th Pass', 'Employed', 'Clerk', NULL, '560000.00', NULL, NULL, NULL),
(115, 'Gir Somnath', 'D014', 'Sub14', '380014', 'Rented', 'Gir Somnath City', 'RC014', 'Person N', 'Daughter', 'Female', '1993-02-14', 32, 'Gir Somnath', 'Single', 'Hindu', 'SC', 'No', 'Gujarati', '10th Pass', 'Employed', 'Farmer', NULL, '565000.00', NULL, NULL, NULL),
(116, 'Jamnagar', 'D015', 'Sub15', '380015', 'Owned', 'Jamnagar City', 'RC015', 'Person O', 'Father', 'Male', '1994-03-15', 31, 'Jamnagar', 'Married', 'Hindu', 'ST', 'No', 'Gujarati', 'Graduate', 'Employed', 'Engineer', NULL, '57000.00', NULL, NULL, NULL),
(117, 'Junagadh', 'D016', 'Sub16', '380016', 'Rented', 'Junagadh City', 'RC016', 'Person P', 'Mother', 'Female', '1995-04-16', 30, 'Junagadh', 'Single', 'Hindu', 'General', 'No', 'Gujarati', 'Post Graduate', 'Employed', 'Teacher', NULL, '575000.00', NULL, NULL, NULL),
(118, 'Kachchh', 'D017', 'Sub17', '380017', 'Owned', 'Kachchh City', 'RC017', 'Person Q', 'Son', 'Male', '1996-05-17', 29, 'Kachchh', 'Married', 'Hindu', 'OBC', 'No', 'Gujarati', '12th Pass', 'Employed', 'Clerk', NULL, '580000.00', NULL, NULL, NULL),
(119, 'Kheda', 'D018', 'Sub18', '380018', 'Rented', 'Kheda City', 'RC018', 'Person R', 'Daughter', 'Female', '1997-06-18', 28, 'Kheda', 'Single', 'Hindu', 'SC', 'No', 'Gujarati', '10th Pass', 'Employed', 'Farmer', NULL, '585000.00', NULL, NULL, NULL),
(120, 'Mahesana', 'D019', 'Sub19', '380019', 'Owned', 'Mahesana City', 'RC019', 'Person S', 'Self', 'Male', '1998-07-19', 27, 'Mahesana', 'Married', 'Hindu', 'ST', 'No', 'Gujarati', 'Graduate', 'Employed', 'Engineer', NULL, '590000.00', NULL, NULL, NULL),
(121, 'Mahisagar', 'D020', 'Sub20', '380020', 'Rented', 'Mahisagar City', 'RC020', 'Person T', 'Wife', 'Female', '1990-08-20', 35, 'Mahisagar', 'Single', 'Hindu', 'General', 'No', 'Gujarati', 'Post Graduate', 'Employed', 'Teacher', NULL, '595000.00', NULL, NULL, NULL),
(122, 'Morbi', 'D021', 'Sub21', '380021', 'Owned', 'Morbi City', 'RC021', 'Person U', 'Son', 'Male', '1991-09-21', 34, 'Morbi', 'Married', 'Hindu', 'OBC', 'No', 'Gujarati', '12th Pass', 'Employed', 'Clerk', NULL, '600000.00', NULL, NULL, NULL),
(123, 'Narmada', 'D022', 'Sub22', '380022', 'Rented', 'Narmada City', 'RC022', 'Person V', 'Daughter', 'Female', '1992-10-22', 33, 'Narmada', 'Single', 'Hindu', 'SC', 'No', 'Gujarati', '10th Pass', 'Employed', 'Farmer', NULL, '60500.00', NULL, NULL, NULL),
(124, 'Navsari', 'D023', 'Sub23', '380023', 'Owned', 'Navsari City', 'RC023', 'Person W', 'Father', 'Male', '1993-11-23', 32, 'Navsari', 'Married', 'Hindu', 'ST', 'No', 'Gujarati', 'Graduate', 'Employed', 'Engineer', NULL, '610000.00', NULL, NULL, NULL),
(125, 'Panch Mahals', 'D024', 'Sub24', '380024', 'Rented', 'Panch Mahals City', 'RC024', 'Person X', 'Mother', 'Female', '1994-12-24', 31, 'Panch Mahals', 'Single', 'Hindu', 'General', 'No', 'Gujarati', 'Post Graduate', 'Employed', 'Teacher', NULL, '615000.00', NULL, NULL, NULL),
(126, 'Patan', 'D025', 'Sub25', '380025', 'Owned', 'Patan City', 'RC025', 'Person Y', 'Self', 'Male', '1995-01-25', 30, 'Patan', 'Married', 'Hindu', 'OBC', 'No', 'Gujarati', '12th Pass', 'Employed', 'Clerk', NULL, '620000.00', NULL, NULL, NULL),
(127, 'Porbandar', 'D026', 'Sub26', '380026', 'Rented', 'Porbandar City', 'RC026', 'Person Z', 'Daughter', 'Female', '1996-02-26', 29, 'Porbandar', 'Single', 'Hindu', 'SC', 'No', 'Gujarati', '10th Pass', 'Employed', 'Farmer', NULL, '625000.00', NULL, NULL, NULL),
(128, 'Rajkot', 'D027', 'Sub27', '380027', 'Owned', 'Rajkot City', 'RC027', 'Person AA', 'Son', 'Male', '1997-03-27', 28, 'Rajkot', 'Married', 'Hindu', 'ST', 'No', 'Gujarati', 'Graduate', 'Employed', 'Engineer', NULL, '630000.00', NULL, NULL, NULL),
(129, 'Sabarkantha', 'D028', 'Sub28', '380028', 'Rented', 'Sabarkantha City', 'RC028', 'Person BB', 'Wife', 'Female', '1998-04-28', 27, 'Sabarkantha', 'Single', 'Hindu', 'General', 'No', 'Gujarati', 'Post Graduate', 'Employed', 'Teacher', NULL, '635000.00', NULL, NULL, NULL),
(130, 'Surat', 'D029', 'Sub29', '380029', 'Owned', 'Surat City', 'RC029', 'Person CC', 'Father', 'Male', '1990-05-29', 35, 'Surat', 'Married', 'Hindu', 'OBC', 'No', 'Gujarati', '12th Pass', 'Employed', 'Clerk', NULL, '64000.00', NULL, NULL, NULL),
(131, 'Surendranagar', 'D030', 'Sub30', '380030', 'Rented', 'Surendranagar City', 'RC030', 'Person DD', 'Mother', 'Female', '1991-06-30', 34, 'Surendranagar', 'Single', 'Hindu', 'SC', 'No', 'Gujarati', '10th Pass', 'Employed', 'Farmer', NULL, '645000.00', NULL, NULL, NULL),
(132, 'Tapi', 'D031', 'Sub31', '380031', 'Owned', 'Tapi City', 'RC031', 'Person EE', 'Son', 'Male', '1992-07-31', 33, 'Tapi', 'Married', 'Hindu', 'ST', 'No', 'Gujarati', 'Graduate', 'Employed', 'Engineer', NULL, '65000.00', NULL, NULL, NULL),
(133, 'Vadodara', 'D032', 'Sub32', '380032', 'Rented', 'Vadodara City', 'RC032', 'Person FF', 'Daughter', 'Female', '1993-08-01', 32, 'Vadodara', 'Single', 'Hindu', 'General', 'No', 'Gujarati', 'Post Graduate', 'Employed', 'Teacher', NULL, '65500.00', NULL, NULL, NULL),
(134, 'Valsad', 'D033', 'Sub33', '380033', 'Owned', 'Valsad City', 'RC033', 'Person GG', 'Wife', 'Female', '1994-09-02', 31, 'Valsad', 'Married', 'Hindu', 'OBC', 'No', 'Gujarati', '12th Pass', 'Employed', 'Clerk', NULL, '66000.00', NULL, NULL, NULL),
(135, 'Gandhinagar', 'D034', 'Sub34', '382010', 'Owned', 'Gandhinagar City', 'RC034', 'Person HH', 'Self', 'Male', '1990-09-16', 35, 'Gandhinagar', 'Married', 'Hindu', 'General', 'No', 'Gujarati', 'Graduate', 'Employed', 'Software Engineer', NULL, '700000.00', NULL, NULL, NULL),
(136, 'Amreli', 'gj14', 'Lilia', '365440', 'locked', 'mithapur', '1234567844', 'test3', 'father', 'Female', '2025-09-24', 34, 'aasm', 'married', 'hinduism', 'rajput', 'mental_retardation', 'dangi', 'doctorate', 'Farmer', 'welder', 'religious_practices', '5433.00', NULL, NULL, NULL),
(137, 'Amreli', 'gj14', 'Khambha', '365433', 'non_residential', 'chalala', '1234567844', 'surbdi', 'father', 'Female', '2025-09-19', 23, 'aasm', 'separated', 'buddhism', 'muslim', 'learning_disability', 'garasia', 'doctorate', 'other', 'truck_driver', 'household_work', '0.00', NULL, NULL, NULL),
(138, 'Girsomnath', 'gj33', 'Una', '365626', 'non_residential', 'dhokadva', '1234567890', 'surbdi vyas', 'father', 'Female', '2025-09-27', 34, 'dhokdva', 'single', 'islam', 'maratha', 'chronic_illness', 'gujarati', 'diploma', 'Farmer', 'welder', 'studying', '12345.00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regestion`
--

CREATE TABLE `regestion` (
  `regid` int(11) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `config-pass` varchar(255) DEFAULT NULL,
  `language` varchar(11) NOT NULL,
  `admin` int(11) NOT NULL,
  `reset_token` varchar(64) DEFAULT NULL,
  `reset_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regestion`
--

INSERT INTO `regestion` (`regid`, `firstname`, `lastname`, `gender`, `email`, `password`, `config-pass`, `language`, `admin`, `reset_token`, `reset_expiry`) VALUES
(1, 'John', 'Doe', 'Male', 'john.doe@example.com', 'Pass1234', 'Pass1234', 'English', 0, '2c9ec3ac71b48030f4acb073d549dc68', '2025-09-15 20:28:49'),
(2, 'Jane', 'Smith', 'Female', 'jane.smith@example.com', 'Hello@123', 'Hello@123', 'Spanish', 0, NULL, NULL),
(3, 'Alice', 'Brown', 'Female', 'nandani@gamil.com', '1234', '1234', 'French', 1, NULL, NULL),
(4, 'Robert', 'Miller', 'Male', 'robert.m@example.com', 'Robert@789', 'Robert@789', 'German', 0, NULL, NULL),
(5, 'Emily', 'Davis', 'Female', 'daya@gmail.com', '12345', '12345', 'English', 1, NULL, NULL),
(6, 'test1', 'test2', 'Male', 'test@gmail.com', '123456', '123456', '1234', 0, 'edae66cfadb5172cdbd570bca9763875', '2025-09-15 20:29:13'),
(7, '', '', 'Male', '', '', '', '', 0, NULL, NULL),
(8, 'maheta', 'nandani', 'Female', 'mmaheta@gmail.com', 'qwe', 'qwe', 'qwe', 0, NULL, NULL),
(9, 'vipul', 'baldha', 'Male', 'vipul@gmail.com', '123', '123', '123', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_district`
--

CREATE TABLE `sub_district` (
  `id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pin_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `children_final`
--
ALTER TABLE `children_final`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_town`
--
ALTER TABLE `city_town`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_district_id` (`sub_district_id`);

--
-- Indexes for table `deceased_elderly`
--
ALTER TABLE `deceased_elderly`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `d_code` (`district`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`no`),
  ADD KEY `fk_district` (`district_id`),
  ADD KEY `fk_sub_district` (`sub_district_id`),
  ADD KEY `fk_city_town` (`city_town_id`);

--
-- Indexes for table `regestion`
--
ALTER TABLE `regestion`
  ADD PRIMARY KEY (`regid`);

--
-- Indexes for table `sub_district`
--
ALTER TABLE `sub_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `children_final`
--
ALTER TABLE `children_final`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `city_town`
--
ALTER TABLE `city_town`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deceased_elderly`
--
ALTER TABLE `deceased_elderly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `regestion`
--
ALTER TABLE `regestion`
  MODIFY `regid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_district`
--
ALTER TABLE `sub_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city_town`
--
ALTER TABLE `city_town`
  ADD CONSTRAINT `city_town_ibfk_1` FOREIGN KEY (`sub_district_id`) REFERENCES `sub_district` (`id`);

--
-- Constraints for table `information`
--
ALTER TABLE `information`
  ADD CONSTRAINT `fk_city_town` FOREIGN KEY (`city_town_id`) REFERENCES `city_town` (`id`),
  ADD CONSTRAINT `fk_district` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`),
  ADD CONSTRAINT `fk_sub_district` FOREIGN KEY (`sub_district_id`) REFERENCES `sub_district` (`id`);

--
-- Constraints for table `sub_district`
--
ALTER TABLE `sub_district`
  ADD CONSTRAINT `sub_district_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
