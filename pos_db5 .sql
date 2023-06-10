-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 03:35 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_db5`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kadaluwarsa` date DEFAULT NULL,
  `harga` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode`, `nama`, `kadaluwarsa`, `harga`) VALUES
(1, 'Chitato', '2023-12-20', 10000),
(2, 'Oreo', NULL, 15000),
(3, 'Coca Cola', NULL, 15000),
(4, 'QTela', NULL, 8000),
(5, 'Fanta', NULL, 5000),
(6, 'Sprite', NULL, 15000),
(7, 'Fruit Tea', NULL, 6000),
(8, 'Indomie', NULL, 25000),
(9, 'Taro', NULL, 8000),
(10, 'Tango', NULL, 10000),
(11, 'Pop Mie', NULL, 7000),
(12, 'Chocolatos', NULL, 5000),
(13, 'Pocky', NULL, 6000),
(14, 'Pepsi', NULL, 15000),
(15, 'Pocari Sweat', NULL, 8000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `id_transaksi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_barang`, `id_transaksi`) VALUES
(1, 1, 57969),
(2, 2, 57969),
(3, 3, 57969),
(4, 1, 45634),
(5, 1, 45634),
(6, 1, 45634),
(7, 1, 57955),
(8, 2, 57955),
(9, 3, 57955),
(10, 4, 57955),
(11, 1, 34944);

-- --------------------------------------------------------

--
-- Table structure for table `pulsa`
--

CREATE TABLE `pulsa` (
  `kode` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nominal` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pulsa`
--

INSERT INTO `pulsa` (`kode`, `nama`, `nominal`, `harga`) VALUES
(1, 'Pulsa 5000', 5000, 7000),
(2, 'Pulsa 10000', 10000, 12000),
(3, 'Pulsa 20000', 20000, 22000),
(4, 'Pulsa 50000', 50000, 52000),
(5, 'Pulsa 100000', 100000, 102000);

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `kode` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`kode`, `nama`, `nominal`, `harga`) VALUES
(1, 'Token 100.000', 100, 105),
(2, 'token 50000', 50000, 55000),
(0, 'token 100000', 100000, 105000),
(0, 'token 200000', 200000, 205000),
(0, 'token 500000', 500000, 505000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(255) NOT NULL,
  `total_belanja` varchar(255) DEFAULT NULL,
  `total_bayar` varchar(255) DEFAULT NULL,
  `kembalian` varchar(255) DEFAULT NULL,
  `waktu_transaksi` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `total_belanja`, `total_bayar`, `kembalian`, `waktu_transaksi`) VALUES
(34944, '10,000', '20,000', '10,000', '2023-06-07 12:31:18'),
(45634, '30,000', '50,000', '20,000', '2023-04-24 23:04:57'),
(57955, '131,000', '150,000', '19,000', '2023-04-25 13:24:33'),
(57969, '55,000', '100,000', '45,000', '2023-04-24 23:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`) VALUES
(1, 'admin', '-969161597', 'admin'),
(2, 'pandora', '110251487', 'user'),
(3, 'abcd', '46792755', 'user'),
(4, 'felix', '46792755', 'user'),
(5, 'luter', '46792755', 'user'),
(6, 'sohmono', '-1861353340', 'user'),
(7, 'christo', '46792755', 'user'),
(8, 'christo1', '46792755', 'user'),
(9, 'andromeda', '46792755', 'user'),
(10, 'nicholas', '46792755', 'user'),
(11, 'sandra', '1450575459', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `pulsa`
--
ALTER TABLE `pulsa`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pulsa`
--
ALTER TABLE `pulsa`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57970;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`kode`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
