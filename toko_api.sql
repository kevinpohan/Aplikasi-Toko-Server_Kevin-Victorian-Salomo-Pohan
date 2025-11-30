-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2025 at 02:13 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int NOT NULL,
  `nama_kategori` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama`, `email`, `password`, `created_at`) VALUES
(2, 'Budi Santoso', 'budi@santoso.com', '$2y$10$wpStRfsszIDxcjUgibIV2eE6uuzgKRalY7I7NaY50SZI17x54Rg0m', '2025-11-14 15:30:41'),
(3, 'Kevin Victorian ', 'kevin@gmail.com', '$2y$10$Qdl0pnFOK.cXZBXNTPZzz.XuDRBIGoMonOAe3FrVnY3CimBCkRDGe', '2025-11-22 14:53:33'),
(6, 'Naufal Syafiq', 'naufal@gmail.com', '$2y$10$.VU0lfjKjgH2vX4bCJk7auwtAehGIMgjGUrZOCQqcTFFQz0tKgypS', '2025-11-27 02:38:48'),
(7, 'Iqbal Erfansyah', 'iqbal@gmail.com', '$2y$10$fGOaBKktFMPjMVlCwW35ge8wkeQZir9sM3ey5u1xjS5UMJqqFjjdC', '2025-11-27 02:39:18'),
(8, 'Salina Putri', 'salina@gmail.com', '$2y$10$a4rX.yKkeVnEKih7ygPpu.CaCrbdYdDMB78qW.AF44ASeYp/r53vi', '2025-11-27 02:45:06'),
(14, 'pohan', 'pohan@gmail.com', '$2y$10$f7j2zpfi313YrpWxbjuw4eBCSH3ENqzWBHRwiq/btr5wgn9mC3AzK', '2025-11-30 13:59:48'),
(15, 'king', 'king@gmail.com', '$2y$10$N.rZouqmNFpQvt8642x6b.uXAN2Ut4bHNQHLSozgN4j.mWhtlHLM.', '2025-11-30 14:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `member_token`
--

CREATE TABLE `member_token` (
  `id` int NOT NULL,
  `member_id` int NOT NULL,
  `auth_key` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_token`
--

INSERT INTO `member_token` (`id`, `member_id`, `auth_key`) VALUES
(9, 2, '0a9dd6639569681c469ba688b5faf7706f6e2bdc71c06645727cf3ba07913fb5'),
(12, 3, 'a71ea07ebb598e03e9b559bcbacceb25df32f933e0c0f890ec7a2414af173891'),
(13, 3, 'b68f3d56cd543e855642273b94df3a4143f363913674e7b44371b7c4a1d6ac81'),
(14, 3, '9fc1b8dc96394be128ed91919f1ead3de39682f2bc5a7a824f654220dfb69655'),
(15, 3, 'd6de1838319a35c5f749ae6837ebf417b9d748216a74baf92bd1652b4377249a'),
(16, 3, 'b5096130cceaff52c660f571e13dcfb579d12627987b7d905aad55bc7b56677e'),
(17, 3, '5f655cc918736ed1eb1492444a8f8fb795f3a85bd6bcd8a75f9b1ad7e049aae1'),
(18, 3, '1455d6e456e3d90c7699cf6e9c3c8aa8ef17465059cc24f0faf808daa7817ed7'),
(19, 3, '128f8fa56409a73f57774e0a9d5b04ea74a5bea6d1ca3cd60d630830b74b9b5a'),
(20, 3, '183798e0a7881e4af74f4b749d8e2ff1b93a6a6224d641045829be048b969b58'),
(21, 3, '9ae9a1bdfc17cdbbaa7173c1f6c76e680c3e590af0e398d5a1b2a06b193e8ee3'),
(22, 3, 'eb403df6902485df3d5b0d2fed2c3687407b2cecedb5a669c7716f9f097af596'),
(23, 3, '50aa03a5e54c087b1e8878b8de0b061312181d844df4dd9e067a8e109f047a7b'),
(24, 3, '58d6185295f157096a0f8029e1e191b37815c820e729616cfbb3a14e948d1f70'),
(25, 3, '6fdc90e9f76ac9532196c51002a097fca0c45154fc419e0c028396628a6ddd4d'),
(26, 3, 'c6b2a2ca61d77c3393ff48bb5feed5c669f9644f5186732c9f2a8c3a642cf494'),
(27, 3, '50a3423eb13a69c487dcf4c258d84d303f3dc3b67ce0315cb22d2c47a88fa1a8'),
(28, 3, 'ae02f2a1767ba87cc6559ce3b6c7c7d5bfbdf0915669d705345279475174e046'),
(29, 3, '5175c5e26dce2f9dbc6600455ec438aca147a156d1dbd2a18e6c9226e8fc66be'),
(30, 3, '639b11f0d2e3388c974d9db74fd4101465db0def384289ddc79ae5273802a449'),
(31, 3, '3fff80409b941cba1c983e8e19ed3b5b769c1d19f111975cd74a17b25facd91e'),
(32, 3, '8f0b1b1126e08c797e621dcabc8143339a947548075d3908f54a17865a7e0406'),
(33, 3, '17cc545b42ff58083e8bd77e867ea53065a7999680504a4aac2d17c4eef2a50a'),
(34, 3, '6e34ce23bfe9ac9fba7dc94787aafefdf1419d753cb426c51c8207a250d2946d'),
(35, 3, '9e5efa97a2a041583110bab3f258e18ee39bcc4cef12a020e22fd226b39ef70a'),
(36, 3, '35a120cb799cc9c6187146efee17391917bb440b35f43978151a7095c83772e7'),
(37, 3, '37ef0b458b3672762abf6d34325fc088854edacc1eb51dbf7b1673241c036aba'),
(38, 3, '563aea8980ec44e3addd1eb5d9e2dab759a7ef02b40dc6cb77415dd413d26112'),
(39, 3, 'a6c48a4601e4cb3624e9a439a8aa80f05807968fe691c277cac3687f74951cc4'),
(40, 3, '695770380a57586097365bb12928e9a301bcafb0949fef96d836265722da12dc'),
(41, 3, 'cde47e888b04fca90909e1126de109a3006b468ae6d2b29810af6db2aed9086a'),
(42, 3, '9bdb87074a13cf901eef539a55bd5be6a4f4abccb7adb7c07a31e3d237814f15'),
(43, 3, '02fac851473aa9b53da885da6b20038baf00a41c74dd4207f6719b4f0f2b496a'),
(44, 3, '4b94d9ec878d5043924aaf6e08b383b60be6f140effa1718549cf68955b588d6'),
(45, 3, 'a8026c86795e7985bdba7fddd013ed5ed82da87e52cd52bb28d0748f16b9b0b1'),
(46, 3, '6925ae13a656a8c917dd3811f4a94fc357cf75fe3e59c3a1a22ad37616c6d2b2'),
(47, 3, 'ad013857c8c395593e62f8a31d9195bcce74f97930804a50b1c7dbf6d15ad130'),
(48, 3, '61874e89cdb97e91b43834a4b098c0362b37c527ea1fec194b2bce87b6c72899'),
(49, 3, '9cc599b84db982561af88fa058812645e3116f415d36af8c2f2cb931729ebebc'),
(50, 3, '33f29ecac40c0291b8e4e5f8bd006d5dd680066c23e2c30d6cc05ce0b27f6876');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int NOT NULL,
  `kode_produk` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `harga` int NOT NULL,
  `stok` int NOT NULL DEFAULT '0',
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `image_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kategori_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode_produk`, `nama_produk`, `harga`, `stok`, `deskripsi`, `image_url`, `kategori_id`) VALUES
(3, '01', 'Buku', 100000, 0, NULL, NULL, NULL),
(4, '09', 'Pensil', 5000, 0, NULL, NULL, NULL),
(5, '03', 'Pulpen', 10000, 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_unique` (`email`);

--
-- Indexes for table `member_token`
--
ALTER TABLE `member_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_produk_unique` (`kode_produk`),
  ADD KEY `fk_produk_kategori` (`kategori_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `member_token`
--
ALTER TABLE `member_token`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member_token`
--
ALTER TABLE `member_token`
  ADD CONSTRAINT `member_token_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_produk_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
