-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jan 2023 pada 11.53
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectpbo_pesawat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bandara`
--

CREATE TABLE `tbl_bandara` (
  `id` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `negara` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_bandara`
--

INSERT INTO `tbl_bandara` (`id`, `nama`, `kota`, `negara`) VALUES
('B001', 'I Gusti Ngurah Rai', 'Denpasar', 'Indonesia'),
('B002', 'King Fahd International Airport', 'Dammam', 'Arab Saudi'),
('B003', 'Bandara Internasional Syamsudin Noor', 'Banjarmasin', 'Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pesawat`
--

CREATE TABLE `tbl_pesawat` (
  `id` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_pesawat`
--

INSERT INTO `tbl_pesawat` (`id`, `nama`, `jenis`) VALUES
('P001', 'Garuda Indonesia', 'Boeing 737'),
('P002', 'Lion Air', 'Airbus A320'),
('P003', 'Citilink', 'ATR 72');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tiket`
--

CREATE TABLE `tbl_tiket` (
  `id` varchar(10) NOT NULL,
  `id_pesawat` varchar(10) NOT NULL,
  `id_bandaraasal` varchar(10) NOT NULL,
  `id_bandaratujuan` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `harga` int(100) NOT NULL,
  `total_harga` int(100) NOT NULL,
  `jumlah` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_tiket`
--

INSERT INTO `tbl_tiket` (`id`, `id_pesawat`, `id_bandaraasal`, `id_bandaratujuan`, `tanggal`, `harga`, `total_harga`, `jumlah`) VALUES
('T001', 'P001', 'B003', 'B003', '2021-06-04', 200000, 2400000, 12),
('T002', 'P002', 'B001', 'B003', '2024-02-06', 400000, 1200000, 3),
('T003', 'P002', 'B002', 'B003', '2021-10-01', 1000000, 7000000, 7);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_bandara`
--
ALTER TABLE `tbl_bandara`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_pesawat`
--
ALTER TABLE `tbl_pesawat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_tiket`
--
ALTER TABLE `tbl_tiket`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
