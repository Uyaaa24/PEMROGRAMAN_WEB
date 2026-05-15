-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Bulan Mei 2026 pada 03.18
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portofolio`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id`, `nama`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMK'),
(4, 'Kuliah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `studies`
--

CREATE TABLE `studies` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `idlevel` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `tahun_lulus` year(4) DEFAULT NULL,
  `foto_sekolah` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `studies`
--

INSERT INTO `studies` (`id`, `nama`, `idlevel`, `keterangan`, `tahun_lulus`, `foto_sekolah`) VALUES
(1, 'SDN Baktijaya 1', 1, 'Menempuh pendidikan dasar dengan aktif mengikuti kegiatan sekolah dan membangun dasar kemampuan belajar, disiplin, serta kerja sama.', '2019', 'SD.jpg'),
(2, 'SMPN 22 Depok', 2, 'Mengembangkan kemampuan akademik, kerja sama tim, dan kedisiplinan melalui kegiatan belajar serta aktivitas sekolah.\r\n', '2022', 'SMP.jpg'),
(3, 'SMK Harapan Bangsa', 3, 'Mempelajari jaringan komputer, perangkat keras, dan dasar administrasi sistem serta aktif dalam praktik troubleshooting dan konfigurasi jaringan.', '2025', 'SMK.jpg'),
(4, 'STT Terpadu Nurul Fikri', 4, 'Sedang mendalami bidang informatika, pengembangan website, jaringan komputer, dan teknologi digital untuk meningkatkan kemampuan teknis dan problem solving.', '0000', 'Kuliah.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama`, `role`) VALUES
(1, 'admin', 'admin', 'Admin', 'Administrator'),
(2, 'surya', 'surya123', 'Surya Pradita', 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `studies`
--
ALTER TABLE `studies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idlevel` (`idlevel`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `studies`
--
ALTER TABLE `studies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `studies`
--
ALTER TABLE `studies`
  ADD CONSTRAINT `studies_ibfk_1` FOREIGN KEY (`idlevel`) REFERENCES `level` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
