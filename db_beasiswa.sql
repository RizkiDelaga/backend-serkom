-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 05:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_beasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `beasiswas`
--

CREATE TABLE `beasiswas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `noTelp` int(11) DEFAULT NULL,
  `currentSemester` int(11) DEFAULT NULL,
  `lastIPK` int(11) DEFAULT NULL,
  `beasiswaType` varchar(255) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beasiswas`
--

INSERT INTO `beasiswas` (`id`, `name`, `email`, `noTelp`, `currentSemester`, `lastIPK`, `beasiswaType`, `files`, `status`, `createdAt`, `updatedAt`) VALUES
(79, 'Ujang', 'ujang@gmail.com', 2147483647, 2, 3, 'Akademik', 'TDD Rizki Delaga Prasetya.png', 'Belum di Verifikasi', '2023-05-17 02:46:56', '2023-05-17 02:46:56'),
(81, 'Mamang', 'mamang.gmail.com', 2147483647, 7, 4, 'Non Akademik', 'file.png', 'Terverifikasi', '2023-05-17 03:01:15', '2023-05-17 03:01:15'),
(82, 'Yayan', 'yayan@gmail.com', 2147483647, 8, 3, 'Akademik', 'My Potah.png', 'Belum di Verifikasi', '2023-05-17 03:02:21', '2023-05-17 03:02:21'),
(83, 'Babang', 'babang@gmail.com', 832152171, 4, 4, 'Akademik', 'README.md', 'Belum di Verifikasi', '2023-05-17 03:08:15', '2023-05-17 03:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230516065131-create-beasiswa.js');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beasiswas`
--
ALTER TABLE `beasiswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beasiswas`
--
ALTER TABLE `beasiswas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
