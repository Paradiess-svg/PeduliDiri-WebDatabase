-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2023 at 07:39 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pedulidiri`
--

-- --------------------------------------------------------

--
-- Table structure for table `catatan`
--

CREATE TABLE `catatan` (
  `id_catatan` int(11) NOT NULL,
  `nik` int(20) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `suhu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catatan`
--

INSERT INTO `catatan` (`id_catatan`, `nik`, `tanggal`, `waktu`, `lokasi`, `suhu`) VALUES
(4, 3434, '2023-10-12', '04:04:00', 'Baru', 55),
(5, 3541, '2023-10-12', '20:05:00', 'Malaka', 37),
(8, 3541, '2023-10-13', '16:05:00', 'Malaka', 37),
(9, 3549, '2023-10-13', '01:00:00', 'Jakarta', 36),
(12, 3541, '2023-10-08', '02:00:00', 'Kuburan', 90),
(13, 3541, '2023-10-05', '00:03:00', 'sekolah', 40),
(14, 3434, '2023-11-03', '01:00:00', 'PP', 56),
(15, 3434, '2023-11-02', '01:00:00', 'Andara', 21),
(16, 1234, '2023-11-03', '02:00:00', 'Sudirman', 30),
(17, 1234, '2023-11-04', '02:00:00', 'Bandung', 40),
(18, 1136, '2023-11-05', '06:00:00', 'Sekul', 36),
(19, 1136, '2023-11-04', '06:00:00', 'Fantek', 40),
(20, 1136, '2023-11-16', '06:00:00', 'Rumah', 35),
(21, 1136, '2023-11-18', '09:08:00', 'Jatiwaringin', 34),
(22, 9904, '2023-11-25', '15:05:00', 'Jatim Park', 35),
(23, 1136, '2023-11-29', '21:06:00', 'Albel jelek', 36),
(24, 1136, '2023-11-08', '00:00:00', 'sekolah', 30),
(25, 1215, '2023-11-17', '05:00:00', 'Prestasi Prima', 36),
(26, 1215, '2023-11-03', '22:00:00', 'Rumah', 40),
(27, 1215, '2023-11-18', '19:31:00', 'Kuburan', 37);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `nik` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`nik`, `nama`) VALUES
(1136, 'Dhuha'),
(1200, 'Rian'),
(1215, 'Naufal'),
(1234, 'Nayla'),
(3240, 'Rian'),
(3434, 'test'),
(3541, 'donny'),
(3549, 'albel'),
(9904, 'Fana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`id_catatan`),
  ADD KEY `catatan_ibfk_1` (`nik`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catatan`
--
ALTER TABLE `catatan`
  MODIFY `id_catatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `nik` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9905;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catatan`
--
ALTER TABLE `catatan`
  ADD CONSTRAINT `catatan_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `users` (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
