-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2023 at 12:40 AM
-- Server version: 5.7.42
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpan_websimpan`
--

-- --------------------------------------------------------

--
-- Table structure for table `berkas`
--

CREATE TABLE `berkas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berkas`
--

INSERT INTO `berkas` (`id`, `nama`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Peraturan Bupati Muara Enim Nomor 52 Tahun 2022 tentang Penyelenggaraan Sistem Pemerintahan Berbasis Elektronik', 'MzESc93HYcHCH4y2ZxKFce2ApvznSD-metaQS5wZGY=-.pdf', '2023-07-10 05:50:38', '2023-07-10 05:56:25'),
(2, 'Peraturan Bupati Muara Enim Nomor 53 Tahun 2022 tentang Rencana Induk Sistem Pemerintahan Berbasis Elektronik', 'lWp018L4g1ovdANP01EB92i5wG2Euk-metaQi5wZGY=-.pdf', '2023-07-10 05:54:09', '2023-07-10 05:56:38'),
(3, 'Surat Keputusan Bupati Muara Enim Nomor 65 Tahun 2023 tentang Tim Koordinasi SPBE Pemerintah Kabupaten Muara Enim Tahun 2023', 'dmWEfO7xihtVFICSsUfaCh8Wrz29TT-metaU0sgVElNIEtPT1JESU5BU0kgU1BCRSAyMDIzLnBkZg==-.pdf', '2023-07-10 05:56:12', '2023-07-10 05:57:12'),
(4, 'Surat Keputusan Bupati Muara Enim Nomor 66 Tahun 2023 tentang Tim Asesor Internal SPBE Lingkup Kabupaten Muara Enim Tahun 2023', 'jYCSW6ckNjvZlJ6Lt335u9UJljXgWf-metaU0sgVElNIEFTRVNPUiBJTlRFUk5BTCBTUEJFIDIwMjMucGRm-.pdf', '2023-07-10 05:59:17', '2023-07-10 05:59:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berkas`
--
ALTER TABLE `berkas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
