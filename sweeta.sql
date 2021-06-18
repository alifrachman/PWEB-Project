-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2021 pada 06.04
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sweeta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', '123', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kd_barang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `foto` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `foto_besar` varchar(20) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `deskripsi_barang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `jumlah_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kd_barang`, `foto`, `foto_besar`, `nama_barang`, `harga_barang`, `deskripsi_barang`, `jumlah_barang`) VALUES
('D001', 'gendawa.JPG', 'gendawa.JPG', 'Kostum Tari Gendewo', 70000, 'Kostum Tari Gendewo wo', 10),
('D002', 'Angsa.JPG', 'Angsa.JPG', 'Kostum Tari Angsa', 60000, 'Tari Angsa merupakan tari yang berasal dari Jawa Tengah, dimana tarian ini sendiri merupakan tarian yang menggambarkan keagungan dari seorang dewi yang diiringi oleh sekelompok burung angsa sendiri. Tarian ini juga adalah tarian antara perpaduan kebudayaan orang timur maupun barat yang ada di Indonesia sendiri.', 30),
('D003', 'Saman.JPG', 'Saman.JPG', 'Kostum Tari Saman', 50000, 'Kostum Tari Saman', 25),
('D004', 'SukarSumekar.JPG', 'SukarSumekar.JPG', 'Kostum Tari Sekar Sumekar', 50000, 'Kostum Tari Sekar Sumekar', 30),
('D005', 'Bandung.JPG', 'Bandung.JPG', 'Kostum Tari Terbang Bandung', 60000, 'Kostum Tari Terbang Bandung', 10),
('D006', 'NyambiPelteng.JPG', 'NyambiPelteng.JPG', 'Kostum Tari Nyambi Pelteng', 50000, 'Kostum Tari Nyambi Pelteng', 10),
('D007', 'Kasomber.JPG', 'Kasomber.JPG', 'Kostum Tari Kasomber', 50000, 'Kostum Tari Kasomber', 10),
('D008', 'bajul.JPG', 'bajul.JPG', 'Kostum Tari Bajul Ijo', 50000, 'Kostum Tari Bajul Ijo', 40),
('D009', 'kelinci.JPG', 'kelinci.jpg', 'Kostum Tari Kelinci ', 50000, 'Kostum Tari Kelinci ', 10),
('D010', 'Merak.JPG', 'Merak.JPG', 'Kostum Tari Merak', 50000, 'Kostum Tari Merak', 10),
('D011', 'kbali.JPG', 'kbali.JPG', 'Kostum Tari Bali', 60000, 'Kostum Tari Bali', 12),
('D012', 'Gambyong.JPG', 'Gambyong.JPG', 'Kostum Tari Gambyong', 70000, 'Kostum Tari Gambyong', 6),
('D013', 'Labako.JPG', 'Labako.JPG', 'Kostum Tari Labako', 50000, 'Kostum Tari Labako', 15),
('D014', 'SamperSarong.JPG', 'SamperSarong.JPG', 'Kostum Tari Samper Sarong', 60000, 'Kostum Tari Samper Sarong', 20),
('D015', 'legong.JPG', 'legong.JPG', 'Kostum Tari Legong', 50000, 'Kostum Tari Legong', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `checkout`
--

CREATE TABLE `checkout` (
  `kd_checkout` varchar(15) NOT NULL,
  `id_customer` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_pesanan` int(10) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `checkout`
--

INSERT INTO `checkout` (`kd_checkout`, `id_customer`, `tanggal`, `jumlah_pesanan`, `total_harga`, `payment`, `status`) VALUES
('CO001', 'CUS001', '2021-06-17', 1, 50000, 'Cash', 2),
('CO002', 'CUS002', '2021-06-17', 2, 130000, 'Cash', 1),
('CO003', 'CUS003', '2021-06-17', 1, 50000, 'Cash', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` varchar(15) NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `nama` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `provinsi` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `kota/kabupaten` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `kecamatan/kelurahan` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `kode_pos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `no_ktp`, `nama`, `email`, `no_telp`, `alamat`, `provinsi`, `kota/kabupaten`, `kecamatan/kelurahan`, `kode_pos`) VALUES
('CUS001', '1234567890123456', 'Muhammad Alif Rachman', 'rachman59@gmail.com', '09876543124', 'JL MT Haryono no 29', 'AAA', 'AAA', 'AAA', 123456),
('CUS002', '1234567890666668', 'RIZKY', 'alief.rachmand@yahoo.co.id', '0987654888', 'JL MT Haryono no 30', 'JAWA TIMUR', 'JEMBER', 'PATRANG', 632119),
('CUS003', '1234567890123456', 'Muhammad Alif Rachman', 'alief.rachmand@yahoo.co.id', '09876543124', 'JL MT Haryono no 29', 'JAWA TIMUR', 'JEMBER', 'PATRANG', 612322);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_checkout`
--

CREATE TABLE `detail_checkout` (
  `kd_detail` int(20) NOT NULL,
  `kd_checkout` varchar(15) CHARACTER SET latin1 NOT NULL,
  `kd_barang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_checkout`
--

INSERT INTO `detail_checkout` (`kd_detail`, `kd_checkout`, `kd_barang`, `jumlah`) VALUES
(192, 'CO001', 'D008', 1),
(193, 'CO002', 'D002', 1),
(194, 'CO002', 'D001', 1),
(195, 'CO003', 'D008', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indeks untuk tabel `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`kd_checkout`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `detail_checkout`
--
ALTER TABLE `detail_checkout`
  ADD PRIMARY KEY (`kd_detail`),
  ADD KEY `kd_checkout` (`kd_checkout`),
  ADD KEY `kd_barang` (`kd_barang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_checkout`
--
ALTER TABLE `detail_checkout`
  MODIFY `kd_detail` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `checkout`
--
ALTER TABLE `checkout`
  ADD CONSTRAINT `checkout_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `detail_checkout`
--
ALTER TABLE `detail_checkout`
  ADD CONSTRAINT `detail_checkout_ibfk_2` FOREIGN KEY (`kd_barang`) REFERENCES `barang` (`kd_barang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `detail_checkout_ibfk_3` FOREIGN KEY (`kd_checkout`) REFERENCES `checkout` (`kd_checkout`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
