-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2024 pada 12.51
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websig`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `kode_kabupaten` varchar(100) NOT NULL,
  `nama_kabupaten` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `kode_kabupaten`, `nama_kabupaten`, `koordinat`, `jumlah_penduduk`, `luas_wilayah`) VALUES
(1, '3301', 'Cilacap', '-7.7425, 109.0069', 2007829, 2249.28);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kode_kecamatan` varchar(100) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`kode_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `jumlah_penduduk`, `luas_wilayah`) VALUES
('3301010', 1, 'Dayeuhluhur', 49618, 191.73),
('3301020', 1, 'Wanareja', 107479, 195.92),
('3301030', 1, 'Majenang', 143101, 167.60),
('3301040', 1, 'Cimanggu', 104785, 163.35),
('3301050', 1, 'Karangpucung', 80927, 124.74),
('3301060', 1, 'Cipari', 68843, 107.53),
('3301070', 1, 'Sidareja', 63829, 49.31),
('3301080', 1, 'Kedungreja', 91489, 82.01),
('3301090', 1, 'Patimuan', 50658, 78.68),
('3301100', 1, 'Gandrungmangu', 113366, 11926.00),
('3301110', 1, 'Bantarsari', 77597, 9949.00),
('3301120', 1, 'Kawunganten', 87423, 13809.00),
('3301121', 1, 'Kampung Laut', 16153, 13407.00),
('3301130', 1, 'Jeruklegi', 81075, 9941.00),
('3301140', 1, 'Kesugihan', 139176, 8910.00),
('3301150', 1, 'Adipala', 98327, 7465.00),
('3301160', 1, 'Maos', 47100, 3430.00),
('3301170', 1, 'Sampang', 44754, 2889.00),
('3301180', 1, 'Kroya', 118370, 6168.00),
('3301190', 1, 'Binangun', 72026, 5373.00),
('3301200', 1, 'Nusawungu', 89988, 6698.00),
('3301720', 1, 'Cilacap Tengah', 91572, 5100.00),
('3301730', 1, 'Cilacap Utara', 85315, 2972.00),
('3301710', 1, 'Cilacap Selatan', 84858, 804.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolah`
--

CREATE TABLE `sekolah` (
  `npsn` int(11) NOT NULL,
  `kode_kecamatan` varchar(100) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat_sekolah` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `jenjang_pendidikan` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sekolah`
--

INSERT INTO `sekolah` (`npsn`, `kode_kecamatan`, `nama_sekolah`, `alamat_sekolah`, `status`, `jenjang_pendidikan`, `koordinat`) VALUES
(20300585, '3301030', 'SMP Negeri 1 Majenang', 'Jl. Bhayangkara Kp. 4 No.4, Mulyasari, Mulyadadi, Kec. Majenang, Kabupaten Cilacap, Jawa Tengah 5325', 'NEGERI', 'SMP', '-7.29983567147345, 108.74793659294252'),
(20300593, '3301010', 'SMP Negeri 1 Dayeuhluhur', 'Jl. Sindanglangu, Puteurreumis, Hanum, Kec. Dayeuhluhur, Kabupaten Cilacap, Jawa Tengah 53266', 'NEGERI', 'SMP', '-7.2328523066479, 108.60251674650145'),
(20300781, '3301020', 'SDN Adimulya 01', 'Jl. Kapten Idris, Cihandiwung Lor, Adimulya, Kec. Wanareja, Kabupaten Cilacap, Jawa Tengah 63265', 'NEGERI', 'SD', '-7.325472953404444, 108.69067193850098'),
(20339066, '3301040', 'SMK Muhammadiyah Cimanggu', 'Jl. Raya Cimanggu, Cimanggu, Kec. Cimanggu, Kabupaten Cilacap, Jawa Tengah 53256', 'SWASTA', 'SMK', '-7.352635367038618, 108.84002926971597'),
(20341174, '3301060', 'SMK Fatahillah Cipari', 'JL. KH. Ahmad Dahlan NO. 1, Pagergunung, Cipari, Kec. Cipari, Kabupaten Cilacap, Jawa Tengah 53262', 'SWASTA', 'SMK', '-7.435846521241611, 108.76882985055273'),
(20300734, '3301130', 'SMA Negeri 1 Jeruklegi', 'Jl. Raya No.23, Jeruklegi, Jeruklegi Wetan, Jeruklegi, Cilacap Regency, Central Java 53252', 'NEGERI', 'SMA', '-7.6267527425778185, 109.01944456596492'),
(20301328, '3301050', 'SD Negeri karangpucung 03', 'JL. Inpres Suryan Karangpucung, Surian, Karangpucung, Kec. Karangpucung, Kabupaten Cilacap', 'NEGERI', 'SD', '-7.406773186886579, 108.89151689734398'),
(20331759, '3301070', 'SMA Kristen Sidareja', 'Jalan, Cibenon, Sidareja, Cilacap Regency, Central Java 53261', 'SWASTA', 'SMA', '-7.484025560961762, 108.79582575713145'),
(20300588, '3301080', 'SMP Negeri 1 Kedungreja', 'Jl. Raya Panisihan No.5, Bumireja, Tambakreja, Kec. Kedungreja, Kabupaten Cilacap, Jawa Tengah 53263', 'NEGERI', 'SMA', '-7.543950095235231, 108.78159382976641'),
(20300515, '3301100', 'SMP Negeri 3 Gandrungmangu', 'Ciloning, Karanganyar, Kec. Gandrungmangu, Kabupaten Cilacap, Jawa Tengah 53254', 'NEGERI', 'SMP', '-7.465956884227185, 108.85334727733006'),
(20300850, '3301110', 'SD Negeri Bantarsari 01', 'Jl. Raya Bantarsari, Gandrungmanis Lor, Bantarsari, Kec. Bantarsari, Kabupaten Cilacap, Jawa Tengah ', 'NEGERI', 'SD', '-7.52383837646698, 108.86296065081774'),
(20300739, '3301120', 'SMK Yos Sudarso Kawunganten', 'Jl. Gereja No.3, Karang Bawang, Kawunganten, Kec. Kawunganten, Kabupaten Cilacap, Jawa Tengah 53253', 'SWASTA', 'SMK', '-7.584509566466449, 108.9148265604425'),
(20301384, '3301090', 'SDN Cimrutu 01', 'Jl. Salam No.01, Sawah, Cimrutu, Kec. Patimuan, Kabupaten Cilacap, Jawa Tengah 53264', 'NEGERI', 'SD', '-7.606145098957142, 108.79522837017011'),
(20339047, '3301121', 'SD Negeri Panikel 03 Kampung Laut', 'Bugel, Panikel, Kec. Kp. Laut, Kabupaten Cilacap, Jawa Tengah', 'NEGERI', 'SD', '-7.623463367892597, 108.85487313619922'),
(20300738, '3301140', 'SMK Al Munawwarah Cilacap', 'Jl. Kutilang No.1, Slarang, Kec. Kesugihan, Kabupaten Cilacap, Jawa Tengah 53271', 'SWASTA', 'SMK', '-7.6605125307124515, 109.11453282363789'),
(20301471, '3301150', 'SD Negeri Gombolharjo 01', 'JL. Masjid Gombolharjo, RT. 3. RW. 2, Gombolharjo, Gombolharjo, Adipala, Gombol, Gombolharjo, Kec. A', 'NEGERI', 'SD', '-7.6684741574264805, 109.11299460005067'),
(20300731, '3301160', 'SMA Negeri 1 Maos', 'Jl. Raya Maos No.484, Gumbril, Klapagada, Kec. Maos, Kabupaten Cilacap, Jawa Tengah 53272', 'NEGERI', 'SMA', '-7.605344824605005, 109.14504698911846'),
(20300719, '3301180', 'SMA Negeri 1 Kroya', 'Jalan Candradimuka No.23, Banjar, Kroya, Kec. Kroya, Kabupaten Cilacap, Jawa Tengah 53282', 'NEGERI', 'SMA', '-7.63142424036592, 109.23938744148788'),
(20341224, '3301190', 'SMKN 1 Binangun', 'Jl. Lap. No.Desa, Jati Tengah, Jati, Kec. Binangun, Kabupaten Cilacap, Jawa Tengah 53281', 'NEGERI', 'SMK', '-7.664729982913203, 109.20423035636937'),
(20300690, '3301200', 'SMK Negeri Nusawungu', 'Jl. Perintis, Klumprit Kulon, Klumprit, Kec. Nusawungu, Kabupaten Cilacap, Jawa Tengah 53283', 'NEGERI', 'SMK', '-7.6639914004798975, 109.36227146781874'),
(20300553, '3301720', 'SMP Negeri 2 Cilacap', 'Jl. DI Panjaitan No.37, Gobok, Donan, Kec. Cilacap Tengah, Kabupaten Cilacap, Jawa Tengah 53213', 'NEGERI', 'SMP', '-7.719971747367111, 109.00451703253756'),
(20300546, '3301730', 'SMP Negeri 05 Cilacap', 'Jl. Ketapang No.73, Rejanegara, Gumilir, Kec. Cilacap Utara, Kabupaten Cilacap, Jawa Tengah 53231', 'NEGERI', 'SMP', '-7.682032567966967, 109.03661762638461'),
(20300486, '3301170', 'SMP Diponegoro Sampang', 'Jl. Gerilya No.70, Sampang Selatan, Sampang, Kec. Sampang, Kabupaten Cilacap, Jawa Tengah 53273', 'SWASTA', 'SMP', '-7.564766366944351, 109.20032770829157'),
(20300744, '3301710', 'SMK Negeri 1 Cilacap', 'Jl. Budi Utomo No.10, Sidakaya Dua, Sidakaya, Kec. Cilacap Sel., Kabupaten Cilacap, Jawa Tengah 5321', 'NEGERI', 'SMK', '-7.727822523149431, 109.01815918219616');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
