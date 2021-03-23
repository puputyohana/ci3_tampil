-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Mar 2021 pada 14.02
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE `divisi` (
  `iddivisi` int(20) NOT NULL,
  `nama_divisi` varchar(50) NOT NULL,
  `ketua_divisi` varchar(100) NOT NULL,
  `info_divisi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`iddivisi`, `nama_divisi`, `ketua_divisi`, `info_divisi`) VALUES
(1, 'produksi', 'Hermanto', 'Brand new components and templates to help folks quickly get started with Bootstrap and demonstrate best practices for adding onto the '),
(2, 'pemasaran', 'Ayu', 'Quickly get a project started with any of our examples ranging from using parts of the framework to custom components and layouts.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `idtransaksi` int(20) NOT NULL,
  `iduser` int(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(100) NOT NULL,
  `jml_kehadiran` int(20) NOT NULL,
  `bonus` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`idtransaksi`, `iduser`, `tanggal`, `jumlah`, `jml_kehadiran`, `bonus`) VALUES
(2, 2, '2021-01-01', 1200000, 31, 100000),
(4, 6, '2021-02-01', 200000, 21, 30000),
(5, 6, '2021-03-01', 200000, 20, 300000),
(6, 7, '2021-02-01', 200000, 26, 60000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `iduser` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `divisi` int(30) NOT NULL,
  `no_rek` varchar(30) NOT NULL,
  `level` enum('pegawai','admin','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `nama_lengkap`, `divisi`, `no_rek`, `level`) VALUES
(1, 'admin', 'admin', 'Puput Yohana', 0, '0', 'admin'),
(2, 'pegawai', 'pegawai', 'Puput Yohana Ayu', 1, 'BRI - 97654545', 'pegawai'),
(6, 'bunga', 'bunga1234', 'Bunga Indah', 1, 'BCA - 371379191', 'pegawai'),
(7, 'Dara', 'dara123', 'Dara Yanti', 2, 'Mandiri - 531371817', 'pegawai'),
(13, 'Kakak', 'kakak12345', 'kakakkukuk', 2, 'BRI-251373271', 'pegawai'),
(14, 'Aya', 'aya12345', 'Ayanahamidah', 1, 'BCA-1276181', 'pegawai');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`iddivisi`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `divisi`
--
ALTER TABLE `divisi`
  MODIFY `iddivisi` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `idtransaksi` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
