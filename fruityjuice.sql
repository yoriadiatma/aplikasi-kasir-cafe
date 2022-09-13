-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2019 at 12:11 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fruityjuice`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_agent`
--

CREATE TABLE `tabel_agent` (
  `id_agent` int(200) NOT NULL,
  `user` varchar(64) NOT NULL,
  `tgl` varchar(64) NOT NULL,
  `browser` varchar(128) NOT NULL,
  `os` varchar(64) NOT NULL,
  `ip` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `kd_barang` varchar(15) NOT NULL,
  `nm_barang` varchar(64) NOT NULL,
  `kd_satuan` varchar(10) NOT NULL,
  `kd_kategori` varchar(10) NOT NULL,
  `kd_supplier` varchar(16) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `hrg_beli` int(11) NOT NULL,
  `kode_virtual` varchar(16) NOT NULL,
  `estimasi_stok` int(4) NOT NULL,
  `modal_per_porsi` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_barang`
--

INSERT INTO `tabel_barang` (`kd_barang`, `nm_barang`, `kd_satuan`, `kd_kategori`, `kd_supplier`, `hrg_jual`, `hrg_beli`, `kode_virtual`, `estimasi_stok`, `modal_per_porsi`) VALUES
('T001', 'Susu', 'S003', 'K002', '', 0, 11000, '', 10, 1100),
('T002', 'Keju Cheddar', 'S004', 'K002', '', 0, 22000, '', 12, 1833),
('U001', 'Jeruk', 'S001', 'K001', '', 0, 18000, '', 5, 3600),
('U002', 'Jambu Biji', 'S001', 'K001', '', 0, 22000, '', 6, 3667),
('U003', 'Sirsak', 'S001', 'K001', '', 0, 16000, '', 4, 4000),
('U004', 'Buah Naga', 'S001', 'K001', '', 0, 35000, '', 4, 8750),
('U005', 'Alpukat', 'S001', 'K001', '', 0, 24000, '', 6, 4000),
('U006', 'Buah Apel', 'S001', 'K001', '', 0, 24000, '', 6, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_biaya`
--

CREATE TABLE `tabel_biaya` (
  `id` int(10) NOT NULL,
  `tgl` date NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `biaya` int(11) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kartu_stok`
--

CREATE TABLE `tabel_kartu_stok` (
  `idkartu` int(11) NOT NULL,
  `kode_toko` varchar(15) NOT NULL,
  `kode_barang` varchar(15) NOT NULL,
  `waktu` varchar(32) NOT NULL,
  `jam` varchar(32) NOT NULL,
  `sebelumnya` int(6) NOT NULL,
  `masuk` int(6) NOT NULL,
  `keluar` int(6) NOT NULL,
  `saldo` int(6) NOT NULL,
  `keterangan` text NOT NULL,
  `user` varchar(10) NOT NULL,
  `publish` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_kartu_stok`
--

INSERT INTO `tabel_kartu_stok` (`idkartu`, `kode_toko`, `kode_barang`, `waktu`, `jam`, `sebelumnya`, `masuk`, `keluar`, `saldo`, `keterangan`, `user`, `publish`) VALUES
(1, 'SS001', 'U001', '2019-07-13', '16:12:05', 0, 10, 0, 10, 'Pembelian SS00119071300001', 'manager', 1),
(2, 'SS001', 'U002', '2019-07-13', '16:12:05', 0, 12, 0, 12, 'Pembelian SS00119071300001', 'manager', 1),
(3, 'SS001', 'U003', '2019-07-13', '16:12:05', 0, 12, 0, 12, 'Pembelian SS00119071300001', 'manager', 1),
(4, 'SS001', 'U004', '2019-07-13', '16:12:05', 0, 20, 0, 20, 'Pembelian SS00119071300001', 'manager', 1),
(5, 'SS001', 'U005', '2019-07-13', '16:12:05', 0, 24, 0, 24, 'Pembelian SS00119071300001', 'manager', 1),
(6, 'SS001', 'T001', '2019-07-13', '16:12:05', 0, 20, 0, 20, 'Pembelian SS00119071300001', 'manager', 1),
(7, 'SS001', 'T002', '2019-07-13', '16:12:05', 0, 24, 0, 24, 'Pembelian SS00119071300001', 'manager', 1),
(8, 'SS001', 'U004', '2019-07-13', '17:29:10', 20, 0, 1, 19, 'Penjualan SS001190713001', 'manager', 0),
(9, 'SS001', 'T001', '2019-07-13', '17:29:10', 20, 0, 1, 19, 'Penjualan SS001190713001', 'manager', 0),
(10, 'SS001', 'U005', '2019-07-13', '17:29:10', 24, 0, 1, 23, 'Penjualan SS001190713001', 'manager', 0),
(11, 'SS001', 'U005', '2019-07-13', '17:32:27', 23, 12, 0, 35, 'Pembelian SS00119071300003', 'manager', 1),
(12, 'SS001', 'T001', '2019-07-13', '18:22:48', 19, 0, 2, 17, 'Penjualan SS001190713002', 'manager', 0),
(13, 'SS001', 'U005', '2019-07-13', '18:22:48', 35, 0, 2, 33, 'Penjualan SS001190713002', 'manager', 0),
(14, 'SS001', 'u001', '2019-07-13', '21:12:11', 8, 0, 2, 8, 'Busuk', 'manager', 0),
(15, 'SS001', 'U004', '2019-09-14', '13:18:25', 19, 0, 1, 18, 'Penjualan SS001190914001', 'admin', 0),
(16, 'SS001', 'U005', '2019-09-14', '13:22:39', 33, 0, 1, 32, 'Penjualan SS001190914002', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kategori_barang`
--

CREATE TABLE `tabel_kategori_barang` (
  `kd_kategori` varchar(10) NOT NULL,
  `nm_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_kategori_barang`
--

INSERT INTO `tabel_kategori_barang` (`kd_kategori`, `nm_kategori`) VALUES
('K001', 'Bahan Utama'),
('K002', 'Bahan Tambahan');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_menu`
--

CREATE TABLE `tabel_menu` (
  `id_menu` int(64) NOT NULL,
  `kode_menu` varchar(16) NOT NULL,
  `nama_menu` varchar(32) NOT NULL,
  `harga_jual` int(16) NOT NULL,
  `harga_modal` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_menu`
--

INSERT INTO `tabel_menu` (`id_menu`, `kode_menu`, `nama_menu`, `harga_jual`, `harga_modal`) VALUES
(1, 'M001', 'Jus Naga', 12000, 8750),
(2, 'M002', 'Jus Alpukat', 10000, 4000),
(3, 'M003', 'Jus Alpukat Susu', 14000, 5100),
(4, 'M004', 'Jus Jeruk', 8000, 3600),
(5, 'M005', 'Jus Pelangi', 22000, 18583);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_mutasi`
--

CREATE TABLE `tabel_mutasi` (
  `id` int(10) NOT NULL,
  `mutasi` varchar(6) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `ket` mediumtext NOT NULL,
  `tgl` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pembelian`
--

CREATE TABLE `tabel_pembelian` (
  `no_faktur_pembelian` varchar(32) NOT NULL,
  `kd_supplier` varchar(15) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `selesai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_pembelian`
--

INSERT INTO `tabel_pembelian` (`no_faktur_pembelian`, `kd_supplier`, `tgl_pembelian`, `id_user`, `total_pembelian`, `selesai`) VALUES
('SS00119071300001', 'SUPP', '2019-07-13', 'manager', 473000, 1),
('SS00119071300002', '', '2019-07-13', 'manager', 0, 0),
('SS00119071300003', 'SUPP', '2019-07-13', 'manager', 52000, 1),
('SS00119091400001', '', '2019-09-14', 'admin', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_penjualan`
--

CREATE TABLE `tabel_penjualan` (
  `no_faktur_penjualan` varchar(16) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `waktu` time NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `total_penjualan` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `total_penjualan_sdiskon` int(11) NOT NULL,
  `ket_diskon` varchar(30) NOT NULL,
  `cash` int(11) NOT NULL,
  `debet` int(11) NOT NULL,
  `ket` mediumtext NOT NULL,
  `selesai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_penjualan`
--

INSERT INTO `tabel_penjualan` (`no_faktur_penjualan`, `tgl_penjualan`, `waktu`, `id_user`, `total_penjualan`, `diskon`, `total_penjualan_sdiskon`, `ket_diskon`, `cash`, `debet`, `ket`, `selesai`) VALUES
('SS001190713001', '2019-07-13', '16:15:23', 'manager', 26000, 0, 26000, '', 26000, 0, '', 1),
('SS001190713002', '2019-07-13', '18:20:54', 'manager', 28000, 0, 28000, '', 28000, 0, '', 1),
('SS001190914001', '2019-09-14', '13:18:25', 'admin', 12000, 0, 12000, '', 12000, 0, '', 1),
('SS001190914002', '2019-09-14', '13:22:39', 'admin', 10000, 0, 10000, '', 10000, 0, '', 1),
('SS001190917001', '2019-09-17', '12:36:49', 'admin', 0, 0, 0, '', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_retur`
--

CREATE TABLE `tabel_retur` (
  `id` int(10) NOT NULL,
  `no_faktur_penjualan` varchar(16) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_retur` varchar(11) NOT NULL,
  `ket` varchar(128) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_rinci_menu`
--

CREATE TABLE `tabel_rinci_menu` (
  `id_rinci_menu` int(16) NOT NULL,
  `kode_menu` varchar(16) NOT NULL,
  `kode_bahan` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_rinci_menu`
--

INSERT INTO `tabel_rinci_menu` (`id_rinci_menu`, `kode_menu`, `kode_bahan`) VALUES
(1, 'M001', 'U004'),
(2, 'M002', 'U005'),
(3, 'M003', 'U005'),
(4, 'M003', 'T001'),
(5, 'M004', 'U001'),
(6, 'M005', 'U004'),
(7, 'M005', 'U005'),
(8, 'M005', 'U006'),
(9, 'M005', 'T002');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_rinci_pembelian`
--

CREATE TABLE `tabel_rinci_pembelian` (
  `id` int(10) NOT NULL,
  `no_faktur_pembelian` varchar(16) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `satuan` varchar(25) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `sub_total_beli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_rinci_pembelian`
--

INSERT INTO `tabel_rinci_pembelian` (`id`, `no_faktur_pembelian`, `kd_barang`, `nm_barang`, `satuan`, `jumlah`, `harga`, `sub_total_beli`) VALUES
(1, 'SS00119071300001', 'U001', 'Jeruk', 'KG', 2, 18000, 36000),
(2, 'SS00119071300001', 'U002', 'Jambu Biji', 'KG', 2, 22000, 44000),
(3, 'SS00119071300001', 'U003', 'Sirsak', 'KG', 3, 16000, 48000),
(4, 'SS00119071300001', 'U004', 'Buah Naga', 'KG', 5, 35000, 175000),
(5, 'SS00119071300001', 'U005', 'Alpukat', 'KG', 4, 26000, 104000),
(6, 'SS00119071300001', 'T001', 'Susu', 'Kaleng', 2, 11000, 22000),
(7, 'SS00119071300001', 'T002', 'Keju Cheddar', 'BOX', 2, 22000, 44000),
(8, 'SS00119071300003', 'U005', 'Alpukat', 'KG', 2, 26000, 52000);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_rinci_penjualan`
--

CREATE TABLE `tabel_rinci_penjualan` (
  `id` int(10) NOT NULL,
  `no_faktur_penjualan` varchar(16) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `diskonpersen` int(6) NOT NULL,
  `diskonrp` int(11) NOT NULL,
  `sub_total_jual` int(11) NOT NULL,
  `retur` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_rinci_penjualan`
--

INSERT INTO `tabel_rinci_penjualan` (`id`, `no_faktur_penjualan`, `kd_barang`, `nm_barang`, `jumlah`, `harga_modal`, `harga`, `diskonpersen`, `diskonrp`, `sub_total_jual`, `retur`) VALUES
(2, 'SS001190713001', 'M001', 'Jus Naga', 1, 8750, 12000, 0, 0, 12000, 0),
(3, 'SS001190713001', 'M003', 'Jus Alpukat Susu', 1, 5433, 14000, 0, 0, 14000, 0),
(4, 'SS001190713002', 'M003', 'Jus Alpukat Susu', 2, 5433, 14000, 0, 0, 28000, 0),
(5, 'SS001190914001', 'M001', 'Jus Naga', 1, 8750, 12000, 0, 0, 12000, 0),
(6, 'SS001190914002', 'M002', 'Jus Alpukat', 1, 4000, 10000, 0, 0, 10000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_satuan_barang`
--

CREATE TABLE `tabel_satuan_barang` (
  `kd_satuan` varchar(10) NOT NULL,
  `nm_satuan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_satuan_barang`
--

INSERT INTO `tabel_satuan_barang` (`kd_satuan`, `nm_satuan`) VALUES
('S001', 'KG'),
('S002', 'Kotak'),
('S003', 'Kaleng'),
('S004', 'BOX'),
('S005', 'PCS');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_stok_toko`
--

CREATE TABLE `tabel_stok_toko` (
  `id` int(10) NOT NULL,
  `kd_toko` varchar(15) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `stok` int(11) NOT NULL,
  `stok_min` int(11) NOT NULL,
  `tgl_perubahan` varchar(64) NOT NULL,
  `publish` int(1) NOT NULL,
  `ket` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_stok_toko`
--

INSERT INTO `tabel_stok_toko` (`id`, `kd_toko`, `kd_barang`, `stok`, `stok_min`, `tgl_perubahan`, `publish`, `ket`) VALUES
(1, 'SS001', 'U001', 8, 5, '13-07-2019 16:00:11', 0, 'Bahan Baru'),
(2, 'SS001', 'U002', 12, 5, '13-07-2019 16:00:56', 0, 'Bahan Baru'),
(3, 'SS001', 'U003', 12, 5, '13-07-2019 16:01:51', 0, 'Bahan Baru'),
(4, 'SS001', 'U004', 18, 5, '13-07-2019 16:02:14', 0, 'Bahan Baru'),
(5, 'SS001', 'T001', 17, 5, '13-07-2019 16:02:37', 0, 'Bahan Baru'),
(6, 'SS001', 'T002', 24, 5, '13-07-2019 16:03:31', 0, 'Bahan Baru'),
(7, 'SS001', 'U005', 32, 5, '13-07-2019 16:05:27', 0, 'Bahan Baru'),
(8, 'SS001', 'U006', 0, 5, '14-09-2019 13:20:56', 0, 'Bahan Baru');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_supplier`
--

CREATE TABLE `tabel_supplier` (
  `kd_supplier` varchar(15) NOT NULL,
  `nm_supplier` varchar(25) NOT NULL,
  `almt_supplier` varchar(150) NOT NULL,
  `tlp_supplier` varchar(15) NOT NULL,
  `fax_supplier` varchar(15) NOT NULL,
  `atas_nama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_toko`
--

CREATE TABLE `tabel_toko` (
  `kd_toko` varchar(15) NOT NULL,
  `nm_toko` varchar(30) NOT NULL,
  `almt_toko` varchar(150) NOT NULL,
  `tlp_toko` varchar(15) NOT NULL,
  `fax_toko` varchar(15) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `password` varchar(35) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_toko`
--

INSERT INTO `tabel_toko` (`kd_toko`, `nm_toko`, `almt_toko`, `tlp_toko`, `fax_toko`, `logo`, `password`, `status`) VALUES
('SS001', 'Fruity Juice', 'Padang', '', '', 'mini.png', 'e10adc3949ba59abbe56e057f20f883e', 'pusat');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id_user` varchar(10) NOT NULL,
  `nm_user` varchar(25) NOT NULL,
  `password` varchar(35) NOT NULL,
  `akses` varchar(15) NOT NULL,
  `kd_toko` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`id_user`, `nm_user`, `password`, `akses`, `kd_toko`) VALUES
('admin', 'Administrator', '21232f297a57a5a743894a0e4a801fc3', 'manager', 'SS001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_agent`
--
ALTER TABLE `tabel_agent`
  ADD PRIMARY KEY (`id_agent`);

--
-- Indexes for table `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`kd_barang`),
  ADD KEY `kd_barang` (`kd_barang`),
  ADD KEY `kd_satuan` (`kd_satuan`,`kd_kategori`,`kd_supplier`);

--
-- Indexes for table `tabel_biaya`
--
ALTER TABLE `tabel_biaya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_kartu_stok`
--
ALTER TABLE `tabel_kartu_stok`
  ADD PRIMARY KEY (`idkartu`);

--
-- Indexes for table `tabel_kategori_barang`
--
ALTER TABLE `tabel_kategori_barang`
  ADD PRIMARY KEY (`kd_kategori`);

--
-- Indexes for table `tabel_menu`
--
ALTER TABLE `tabel_menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `kode_menu` (`kode_menu`);

--
-- Indexes for table `tabel_mutasi`
--
ALTER TABLE `tabel_mutasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_pembelian`
--
ALTER TABLE `tabel_pembelian`
  ADD PRIMARY KEY (`no_faktur_pembelian`);

--
-- Indexes for table `tabel_penjualan`
--
ALTER TABLE `tabel_penjualan`
  ADD PRIMARY KEY (`no_faktur_penjualan`),
  ADD KEY `no_faktur_penjualan` (`no_faktur_penjualan`);

--
-- Indexes for table `tabel_retur`
--
ALTER TABLE `tabel_retur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_rinci_menu`
--
ALTER TABLE `tabel_rinci_menu`
  ADD PRIMARY KEY (`id_rinci_menu`);

--
-- Indexes for table `tabel_rinci_pembelian`
--
ALTER TABLE `tabel_rinci_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_rinci_penjualan`
--
ALTER TABLE `tabel_rinci_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `no_faktur_penjualan` (`no_faktur_penjualan`),
  ADD KEY `kd_barang` (`kd_barang`);

--
-- Indexes for table `tabel_satuan_barang`
--
ALTER TABLE `tabel_satuan_barang`
  ADD PRIMARY KEY (`kd_satuan`);

--
-- Indexes for table `tabel_stok_toko`
--
ALTER TABLE `tabel_stok_toko`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kd_barang` (`kd_barang`);

--
-- Indexes for table `tabel_supplier`
--
ALTER TABLE `tabel_supplier`
  ADD PRIMARY KEY (`kd_supplier`);

--
-- Indexes for table `tabel_toko`
--
ALTER TABLE `tabel_toko`
  ADD PRIMARY KEY (`kd_toko`);

--
-- Indexes for table `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_agent`
--
ALTER TABLE `tabel_agent`
  MODIFY `id_agent` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_biaya`
--
ALTER TABLE `tabel_biaya`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_kartu_stok`
--
ALTER TABLE `tabel_kartu_stok`
  MODIFY `idkartu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tabel_menu`
--
ALTER TABLE `tabel_menu`
  MODIFY `id_menu` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tabel_mutasi`
--
ALTER TABLE `tabel_mutasi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_retur`
--
ALTER TABLE `tabel_retur`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_rinci_menu`
--
ALTER TABLE `tabel_rinci_menu`
  MODIFY `id_rinci_menu` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tabel_rinci_pembelian`
--
ALTER TABLE `tabel_rinci_pembelian`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tabel_rinci_penjualan`
--
ALTER TABLE `tabel_rinci_penjualan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tabel_stok_toko`
--
ALTER TABLE `tabel_stok_toko`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tabel_rinci_penjualan`
--
ALTER TABLE `tabel_rinci_penjualan`
  ADD CONSTRAINT `fk_kd_barang` FOREIGN KEY (`kd_barang`) REFERENCES `tabel_menu` (`kode_menu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
