-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 23, 2021 at 10:43 PM
-- Server version: 5.7.35-log
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farzainx_ai`
--

-- --------------------------------------------------------

--
-- Table structure for table `apotek`
--

CREATE TABLE `apotek` (
  `id` int(11) NOT NULL,
  `nama` text,
  `provinsi` varchar(50) DEFAULT NULL,
  `alamat` text,
  `telepon` varchar(50) DEFAULT NULL,
  `keterangan` text,
  `latitude` decimal(15,8) DEFAULT NULL,
  `longitude` decimal(15,8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apotek`
--

INSERT INTO `apotek` (`id`, `nama`, `provinsi`, `alamat`, `telepon`, `keterangan`, `latitude`, `longitude`) VALUES
(1, 'Apotek Fakultas Kedokteran Universitas Airlangga', 'Jawa Timur', 'Jl. Mayjen Prof. Dr. Moestopo No.47, Pacar Kembang, Kec. Tambaksari, Kota SBY, Jawa Timur 60132', '(031) 5020251, 5030252, 5030253', 'Laboratorium Pemeriksaan', -7.26515400, 112.75859300),
(2, 'Apotek RSPAD Gatot Subroto', 'DKI Jakarta', 'Jl. Dr.A. Rahman Saleh No. 24, Jakpus', '(021) 3440693', 'RS Rujukan TNI', -6.17657500, 106.83715100),
(3, 'Apotek TK III Palangkaraya', 'Kalimantan Tengah', 'Jl. Ahmad Yani No.22, Langkai, Kec. Pahandut, Kota Palangka Raya, Kalimantan Tengah 73111', '', 'RS Rujukan Polri', -2.20934300, 113.93124700),
(4, 'Apotek Tk III Trijatra Denpasar', 'Bali', 'Jl. Trijata No. 32, Sumerta Kelod 2F, Kelod, Dangin Puri Kangin, Denpasar Timur, Dangin Puri Kangin, Kec. Denpasar Utara, Kota Denpasar, Bali 80233', '(0361) 234670', 'RS Rujukan Polri', -8.64606600, 115.22430800),
(5, 'Apotek RSUD Dr. H. Marsidi Judono', 'Bangka Belitung', 'Jl. Jend. Sudirman Aik Rayak Km.5,5 Tanjungpandan Kab. Belitung', '(0719) 22190', 'RS Rujukan Kemenkes', -2.73878500, 107.62948100),
(6, 'Apotek RS Paru Dr. M. Goenawan Partowidigdo', 'Jawa Barat', 'Jl. Raya Puncak KM.83, Po Box 28 Cisarua Bogor', '(0251) 8253630 Fax (0251) 8257662', 'RS Rujukan Kemenkes', -6.68781000, 106.93884100),
(7, 'Apotek RSU Dr. Soebandi', 'Jawa Timur', 'Jl. Dr. Soebandi No. 124 Kel.Patrang, Jember 68111', '(0331) 487441', 'RS Rujukan Kemenkes', -8.15190000, 113.71502300),
(8, 'Apotek RSUD Dr. Agoesdjam Ketapang', 'Kalimantan Barat', 'Jl. D.I Panjaitan No.51 Kel.Sampit, Kec.Delta Pawan Ketapang', '(0534) 3037239', 'RS Rujukan Kemenkes', -1.83250800, 109.96743200),
(9, 'Apotek Rumkit Tk. III/Brawijaya/Surabaya', 'Jawa Timur', 'Jl. Kesatriyan No.17, Sawunggaling, Kec. Wonokromo, Kota SBY, Jawa Timur 60242', '(031) 5670650', 'RS Rujukan TNI', -7.29697500, 112.72298300),
(10, 'Apotek Tk II Surabaya', 'Jawa Timur', 'Jl. Ahmad Yani No.116, Ketintang, Kec. Gayungan, Kota SBY, Jawa Timur 60231', '(031) 8292227', 'RS Rujukan Polri', -7.32465100, 112.73143000),
(11, 'Apotek RSU Sultan Agung Semarang', 'Jawa Tengah', 'Jl. Kaligawe Raya No.KM. 4, Terboyo Kulon, Kec. Genuk, Kota Semarang, Jawa Tengah 50112 ', '(024) 6580019', 'RS Rujukan Provinsi Jawa Tengah', -6.95547900, 110.46132700),
(12, 'Apotek RSAU-2 DR. ESNAWAN A.', 'DKI Jakarta', 'Jl. Merpati No.2, RW.11, Halim Perdana Kusumah, Kec. Makasar, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13610', '(021) 8019046', 'RS Rujukan TNI', -6.25679400, 106.89173700),
(13, 'Apotek Tk III Brimob Kelapa Dua', 'Jawa Barat', 'Jl. Komjen.Pol.M.Jasin Jl. Klp. Dua Raya, Pasir Gn. Sel., Kec. Cimanggis, Kota Depok, Jawa Barat 16451', '(021) 87704691', 'RS Rujukan Polri', -6.35473900, 106.84931300),
(14, 'Apotek RSUD dr. Soediran MS Wonogiri', 'Jawa Tengah', 'Wonogiri, Joho Lor, Giriwono, Kec. Wonogiri, Kabupaten Wonogiri, Jawa Tengah 57613 ', '(0273) 321008', 'RS Rujukan Provinsi Jawa Tengah', -7.80476500, 110.91590900),
(15, 'Apotek RSUD Kardinah Tegal', 'Jawa Tengah', 'Jl. AIP KS Tubun No 2, Kota Tegal 52124 ', '(0283) 350377 , 350477', 'RS Rujukan Provinsi Jawa Tengah', -6.88476900, 109.13542700),
(16, 'Apotek Rumkit Tk. IV/Wira Sakti Kupang', 'Nusa Tenggara Timur', 'JL. Dr Moh Hatta, No. 9-11, Oebobo, Fontein, Fontein, Kec. Kota Raja, Kota Kupang, Nusa Tenggara Timur 85112', '(0380) 821131', 'RS Rujukan TNI', -10.16637700, 123.58342700),
(17, 'Apotek RSI Jakarta Cempaka Putih', 'DKI Jakarta', '', '(021) 42801567', 'RS Rujukan Muhammadiyah & Aisyiyah', -6.17050400, 106.87108100),
(18, 'Apotek Tk III Pusdik Gasum', 'Jawa Timur', 'Jl. Raya Porong No.1, Porong, Kec. Porong, Kabupaten Sidoarjo, Jawa Timur 61274', '(0343) 856444', 'RS Rujukan Polri', -7.54332500, 112.69852900),
(19, 'Apotek RSU Dr. Moewardi', 'Jawa Tengah', 'Jl. Kol. Sutarto 132, Surakarta', '(0271) 637415', 'RS Rujukan Kemenkes', -7.55696300, 110.84297000),
(20, 'Apotek Rumkit Tk. III/Wijaya Kusuma Purwokerto', 'Jawa Tengah', 'Jl. Prof Dr. HR Bunyamin, Glempang, Bancarkembar, Kec. Purwokerto Utara, Kabupaten Banyumas, Jawa Tengah 53121', '(0281) 633062', 'RS Rujukan TNI', -7.41508200, 109.24557700),
(21, 'Apotek RSU Prof. Dr. WZ Johanes', 'Nusa Tenggara Timur', 'Jl. Dr. Moch. Hatta No. 19, Kupang', '(0380) 833614', 'RS Rujukan Kemenkes', -10.16825400, 123.58574400),
(22, 'Apotek Rumkit Tk. II/dr. Hardjanto Balikpapan', 'Kalimantan Timur', 'Jl. Tj. Pura No.1, Klandasan Ulu, Balikpapan Kota, Kota Balikpapan, Kalimantan Timur 76111', '', 'RS Rujukan TNI', -1.27366800, 116.82892300),
(23, 'Apotek RSUD Wates', 'DI Yogyakarta', 'Jl Tentara Pelajar Km.1 No.5 Wates Kulon Progo', '(0274) 773169', 'RS Rujukan Kemenkes', -7.85882700, 110.14794200),
(24, 'Apotek RS Univ Muhammadiyah Malang', 'Jawa Timur', '', '(0341) 561666 , 087859923678 , 081216207426', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.92578400, 112.59916500),
(25, 'Apotek Tk III Ambon', 'Maluku', 'Jalan Sultan Hasanudin, Pandan Kasturi, Sirimau, Pandan Kasturi, Sirimau, Kota Ambon, Maluku 97128', '(0911) 349450', 'RS Rujukan Polri', -3.67175600, 128.19652900),
(26, 'Apotek Rumkit Tk. IV/Solok', 'Sumatera Barat', 'JL. Proklamasi, No. 3, VI Suku, Lubuk Sikarah, Kp. Jawa, Tj. Harapan, Kota Solok, Sumatera Barat 27317', '(0755) 325457', 'RS Rujukan TNI', -0.78867200, 100.65288500),
(27, 'Apotek RSUD Brebes', 'Jawa Tengah', 'Jl. Jenderal Sudirman No.181, Pangembon, Brebes, Kec. Brebes, Kabupaten Brebes, Jawa Tengah 52212 ', '(0283) 671431', 'RS Rujukan Provinsi Jawa Tengah', -6.87477300, 109.04936300),
(28, 'Apotek RSUD Kab.Sinjai', 'Sulawesi Selatan', 'Jl. Jend. Sudirman No. 47, Sinjai', '0482 21132', 'RS Rujukan Kemenkes', -5.12845500, 120.24917000),
(29, 'Apotek Balai Besar Laboratorium Kesehatan Palembang', 'Sumatera Selatan', 'Jl. Inspektur Yazid No.2, Sekip Jaya, Kec. Kemuning, Kota Palembang, Sumatera Selatan 30126', '(0711) 352683', 'Laboratorium Pemeriksaan', -2.96950600, 104.75100200),
(30, 'Apotek RSAU-3 DR. EFRAM HARSANA IWJ', 'Jawa Timur', 'Unnamed Road, Bakung, Maospati, Kec. Maospati, Kabupaten Magetan, Jawa Timur 63392', '0812-8333-9424', 'RS Rujukan TNI', -7.60362100, 111.44286400),
(31, 'Apotek RSUD dr. R. Soetijono Blora', 'Jawa Tengah', 'Jl. Dr. Sutomo No.42, Blora, Tempelan, Kec. Blora, Kabupaten Blora, Jawa Tengah 58219 ', '(0296) 531118', 'RS Rujukan Provinsi Jawa Tengah', -6.96711200, 111.42042400),
(32, 'Apotek RSUD Dr. H. Bob Bazar,SKM', 'Lampung', 'Jl. Lettu Rohani No. 14B, Kalianda, Kab.Lampung Selatan', '(0727) 322159', 'RS Rujukan Kemenkes', -5.72754200, 105.59645800),
(33, 'Apotek RSUD Kab. Kediri', 'Jawa Timur', 'Jl. Pahlawan Kusuma Bangsa No.1, Pare, Kediri', '(0354) 391718', 'RS Rujukan Kemenkes', -7.75980000, 112.17622300),
(34, 'Apotek RSU Kab Tangerang', 'Banten', 'Jl. Ahmad Yani No.9, Tangerang', '(021) 5512946 , 5513709 , 5523507', 'RS Rujukan Kemenkes', -6.20077400, 106.63508400),
(35, 'Apotek Rumkit Tk. IV/dr. R. Ismoyo Kendari', 'Sulawesi Tenggara', 'Jl. H. Abdul Silondae No.125, Korumba, Kec. Mandonga, Kota Kendari, Sulawesi Tenggara 93111', '(0401) 321253', 'RS Rujukan TNI', -3.96941700, 122.51577000),
(36, 'Apotek RSUD Sultan Imanuddin Pangkalan Bun', 'Kalimantan Tengah', 'Jl. Sutan Syahrir 17 Pangkalan Bun', '(0532) 21404', 'RS Rujukan Kemenkes', -2.69159600, 111.63219600),
(37, 'Apotek RS Aisyiyah Muntilan', 'Jawa Tengah', '', '(0293) 5891234', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.58486700, 110.28521500),
(38, 'Apotek RSUP dr J. Leimena', 'Maluku', 'Desa Rumah 3, Kec. Teluk Ambon', '', 'RS Rujukan Kemenkes', -3.66137400, 128.18653500),
(39, 'Apotek RSUD Manokwari', 'Papua Barat', 'Jl. Bhayangkara No. 1 Manokwari', '(0986) 211440', 'RS Rujukan Kemenkes', -0.87085700, 134.07872100),
(40, 'Apotek RSUD Ambarawa', 'Jawa Tengah', 'Jalan R.A. Kartini No. 101 Tambakboyo Lodoyong, Losari, Kec. Ambarawa, Semarang, Jawa Tengah 50611 ', '(0298) 591020', 'RS Rujukan Provinsi Jawa Tengah', -7.26777000, 110.40826100),
(41, 'Apotek Tk II Kediri', 'Jawa Timur', 'Jl. Kombes Pol Duryat No.17, Dandangan, Kec. Kota Kediri, Kota Kediri, Jawa Timur 64129', '(0354) 671100', 'RS Rujukan Polri', -7.81307400, 112.01773200),
(42, 'Apotek Rumkit Tk. IV/Cijantung', 'DKI Jakarta', 'Mahoni No.2, RT.4/RW.6, Gedong, Kec. Ps. Rebo, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13760', '(021) 8400535', 'RS Rujukan TNI', -6.30698200, 106.85887400),
(43, 'Apotek Tk III Kendari', 'Sulawesi Tenggara', 'Jl. Gunung Maluhu No. 7, Kec, Kec. Mandonga, Kota Kendari, Sulawesi Tenggara 93117', '(0401) 3121253', 'RS Rujukan Polri', -3.97263900, 122.50811100),
(44, 'Apotek RSTP Dr. H.A. Rotinsulu Bandung', 'Jawa Barat', 'Jl. Bukit Jarian No. 40, Bandung', '(022) 3034446', 'RS Rujukan Kemenkes', -6.87879400, 107.60604400),
(45, 'Apotek RSU Dr. H. RM Soeselo W', 'Jawa Tengah', 'Jl. Dr. Sutromo No. 63, Slawi', '0283 491016', 'RS Rujukan Kemenkes', -6.99349500, 109.13771300),
(46, 'Apotek Tk III Indramayu', 'Jawa Barat', 'JL. Losarang Raya, KM. 73-75, Losarang, Krimun, Indramayu, Krimun, Kec. Losarang, Kabupaten Indramayu, Jawa Barat 45253', '(0234) 507877', 'RS Rujukan Polri', -6.39555000, 108.15634300),
(47, 'Apotek RS PKU Muhammadiyah Bantul', 'Yogyakarta', '', '(0274) 367437, 368238, 368587, 6462935 (Hunting)', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.88680800, 110.33023100),
(48, 'Apotek Rumkit Tk. III/Ciremai Cirebon', 'Jawa Barat', 'Jl. Kesambi No.237, Drajat, Kec. Kesambi, Kota Cirebon, Jawa Barat 45133', '(0231) 238335', 'RS Rujukan TNI', -6.73812900, 108.54982300),
(49, 'Apotek RSU Dr. Achmad Mochtar', 'Sumatera Barat', 'Jl. Dr. A. Rivai, Bukittinggi', '0752 21720', 'RS Rujukan Kemenkes', -0.29965700, 100.36612500),
(50, 'Apotek RSU Dr Suraji Tirtonegoro', 'Jawa Tengah', 'Jl. Dr. Soeradji T. No. 1, Klaten ', '(0272) 321104', 'RS Rujukan Provinsi Jawa Tengah', -7.71434400, 110.58871900),
(51, 'Apotek RS Kasih Ibu Surakarta', 'Jawa Tengah', 'Jl. Slamet Riyadi No.404, Purwosari, Laweyan, Surakarta, Central Java 57142 ', '(0271) 714422', 'RS Rujukan Provinsi Jawa Tengah', -7.56296800, 110.80175500),
(52, 'Apotek RSUD Kraton Kab. Pekalongan', 'Jawa Tengah', 'Jl. Veteran 31, Pekalongan ', '(0285) 423225 , 423523', 'RS Rujukan Provinsi Jawa Tengah', -6.88138600, 109.66749700),
(53, 'Apotek RSUD Djoyonegoro Temanggung', 'Jawa Tengah', 'Jl. Gajah Mada No.1A, Sendang, Walitelon Sel., Kec. Temanggung, Kab. Temanggung, Jawa Tengah 56229 ', '(0293) 491119', 'RS Rujukan Provinsi Jawa Tengah', -7.30956900, 110.17927300),
(54, 'Apotek RSAU-4 DR. HOEDIONO LANUD SDM', 'Jawa Barat', 'Jl. Pangkalan TNI AU, Suryadarma, Kalijati, Kalijati Barat, Kalijati, Kalijati Bar., Kec. Kalijati, Kabupaten Subang, Jawa Barat 41271', '', 'RS Rujukan TNI', -6.52322000, 107.66262600),
(55, 'Apotek Rumkit Tk. IV/Aryoko Sorong', 'Papua Barat', 'Jl. Pramuka, Klagete, Sorong Utara, Kota Sorong, Papua Barat. 98412', '(0951) 333708', 'RS Rujukan TNI', -0.87575500, 131.28630100),
(56, 'Apotek RSUD Dr R Sudjono Selong', 'Nusa Tenggara Barat', 'Jl. Prof M. Yamin SH No. 55, Selong', '01 123 223 4567', 'RS Rujukan Kemenkes', -8.65053800, 116.52836000),
(57, 'Apotek Rumkit Tk. III/dr. Soeharso Banjarmasin', 'Kalimantan Selatan', 'Jl. Mayjen Sutoyo S, Pelambuan, Kec. Banjarmasin Bar., Kota Banjarmasin, Kalimantan Selatan 70129', '(0511) 4368422', 'RS Rujukan TNI', -3.32249700, 114.56436700),
(58, 'Apotek RSU Dr. Sardjito', 'DI Yogyakarta', 'Jl. Kesehatan 1 Sekip Sinduadi Mlati, Selman, Yogjakarta', '(0274) 631190 , 587333', 'RS Rujukan Kemenkes', -7.76859400, 110.37344800),
(59, 'Apotek RSAU-3 DR. SISWANTO LANUD SMO', 'Jawa Tengah', 'Jl. Tentara Pelajar, Jetak, Malangjiwan, Kec. Colomadu, Kabupaten Karanganyar, Jawa Tengah 57177', '', 'RS Rujukan TNI', -7.53177400, 110.73836200),
(60, 'Apotek RSU Hasan Sadikin Bandung', 'Jawa Barat', 'Jl. Pasteur No. 38, Bandung', '(022) 2034953-55', 'RS Rujukan Kemenkes', -6.89806500, 107.59814300),
(61, 'Apotek RSUD Dr. Sudarso', 'Kalimantan Barat', 'Jl. dr.Soedarso No.1 Pontianak', '(0561) 737701', 'RS Rujukan Kemenkes', -0.06153300, 109.36468700),
(62, 'Apotek RSAU-2 DR. M. SALAMUN', 'Jawa Barat', 'Jl. Ciumbuleuit No.203, Ciumbuleuit, Kec. Cidadap, Kota Bandung, Jawa Barat 40142', '(022) 2032090', 'RS Rujukan TNI', -6.86395200, 107.60479900),
(63, 'Apotek RS Dr. Tadjuddin Chalid, MPH', 'Sulawesi Selatan', 'Jl. Paccerakkang No.67 / Pajjaiang Daya Makassar', '(0411) 512902', 'RS Rujukan Kemenkes', -5.11112500, 119.51658400),
(64, 'Apotek RSUD RAA Soewondo Pati', 'Jawa Tengah', 'Jl. Dr. Susanto No.114, Ngipik, Kutoharjo, Kec. Pati, Kabupaten Pati, Jawa Tengah 59111 ', '(0295) 381102', 'RS Rujukan Provinsi Jawa Tengah', -6.73868200, 111.04319800),
(65, 'Apotek RSUD Hj. Anna Lasmanah Banjarnegara', 'Jawa Tengah', 'Kutabanjarnegara, Kec. Banjarnegara, Banjarnegara, Jawa Tengah ', '(0286) 591464', 'RS Rujukan Provinsi Jawa Tengah', -7.39265800, 109.69284900),
(66, 'Apotek RSPI Dr. Sulianti Saroso', 'DKI Jakarta', 'Jl. Baru Sunter Permai Raya, Jakarta 14340', '021 6506559, Fax: 021 6401411', 'RS Rujukan Kemenkes', -6.12959200, 106.86231800),
(67, 'Apotek RSUD Kab. Lahat', 'Sumatera Selatan', 'Jl. Mayjen Harun Sohar II No.28 Lahat', '(0731) 323080', 'RS Rujukan Kemenkes', -3.79284600, 103.53459500),
(68, 'Apotek TK III Padang', 'Sumatera Barat', 'Jl. Jati No.1, Jati Baru, Kec. Padang Tim., Kota Padang, Sumatera Barat 25129', '(0751) 22270', 'RS Rujukan Polri', -0.93298600, 100.36539100),
(69, 'Apotek RSUD Dr. Iskak Tulungagung', 'Jawa Timur', 'Jl. Dr. Wahidin Sudiro Husodo Tulungagung', '(0355) 322609', 'RS Rujukan Kemenkes', -8.05494100, 111.91811800),
(70, 'Apotek RSI PKU Muhammadiyah Palangkaraya', 'Kalimantan Tengah', '', '(0536) 3244802, 3244801 , 3244803', 'RS Rujukan Muhammadiyah & Aisyiyah', -2.22737200, 113.91962400),
(71, 'Apotek RSUD Kajen Kab. Pekalongan', 'Jawa Tengah', 'Jl. Raya Karanganyar No.36, Mlatensatu, Karangsari, Kec. Karanganyar, Pekalongan, Jawa Tengah 51182 ', '(0285) 385231', 'RS Rujukan Provinsi Jawa Tengah', -7.03103100, 109.61736900),
(72, 'Apotek RSU Arga Makmur', 'Bengkulu', 'Jl. Siti Khadijah No.08 Arga Makmur Kab.Bengkulu Utara', '(0737) 521118', 'RS Rujukan Kemenkes', -3.44230700, 102.19115000),
(73, 'Apotek Rumkit Tk. IV/Lahat', 'Sumatera Selatan', 'Jalan Lintas Pagar Alam-Lahat, Pasar Baru, Kecamatan Lahat, Ps. Baru, Kec. Lahat, Kabupaten Lahat, Sumatera Selatan 31461', '(0731) 326195', 'RS Rujukan TNI', -3.79237200, 103.53511100),
(74, 'Apotek RSAU-4 LANUD SAMSUDIN NOOR', 'Kalimanan Selatan', 'Landasan Ulin Tengah, Liang Anggang, Banjarbaru City, South Kalimantan 70724', '(0511) 4705118', 'RS Rujukan TNI', -3.44464200, 114.74441200),
(75, 'Apotek Tk III Palembang', 'Sumater Selatan', 'Jl. Jend. Sudirman No.km 4, RW.5, Ario Kemuning, Kec. Kemuning, Kota Palembang, Sumatera Selatan', '(0711) 410023', 'RS Rujukan Polri', -2.95902500, 104.73751700),
(76, 'Apotek RSAL-3 OEPOMO', 'Jawa Timur', 'Jl. Laksda Moh. Nazir No.56, Perak Utara, Kec. Pabean Cantian, Kota SBY, Jawa Timur 60177', '', 'RS Rujukan TNI', -7.21230400, 112.72489700),
(77, 'Apotek Rumkit Tk. III/Yogyakarta', 'DI Yogyakarta', 'Jl. Juadi No.19, Kotabaru, Kec. Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55224', '(0274) 2920000', 'RS Rujukan TNI', -7.78555600, 110.37682500),
(78, 'Apotek RSAL-2 dr MINTOHARDJO', 'DKI Jakarta', 'Jl. Bendungan Hilir 17 Jakpus', '(021) 5703081', 'RS Rujukan TNI', -6.21094500, 106.81093700),
(79, 'Apotek RS PKU Muhammadiyah Surakarta', 'Jawa Tengah', '', '(0271) 714 578', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.56545900, 110.81656800),
(80, 'Apotek RS Muhammadiyah Lamongan', 'Jawa Timur', '', '(0322) 322834 , 08123082211 , 082257622453', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.10921100, 112.40408100),
(81, 'Apotek RSUD dr. Soedirman Kab. Kebumen', 'Jawa Tengah', 'Kenteng, Muktisari, Kec. Kebumen, Kabupaten Kebumen, Jawa Tengah 54317 ', '(0287) 381101', 'RS Rujukan Provinsi Jawa Tengah', -7.70055700, 109.66476400),
(82, 'Apotek Tk III Bojonegoro', 'Jawa Timur', 'Jl. Panglima Sudirman No.160, Klangon, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62113', '(0353) 888780', 'RS Rujukan Polri', -7.15177400, 111.87366500),
(83, 'Apotek RSUD Dr. P. P. Magretti Saumlaki', 'Maluku', 'Jl. Ir. Soekarno - Poros Utama, Saumlaki, Tanimbar Sel', '(0918) 21113', 'RS Rujukan Kemenkes', -7.97443000, 131.30803700),
(84, 'Apotek RSU Dr. H. Soewondo', 'Jawa Tengah', 'Jl. Laut 21, Kendal ', '0294 381433', 'RS Rujukan Provinsi Jawa Tengah', -6.91781900, 110.20620400),
(85, 'Apotek Rumkit Tk. IV/dr. M. Yasin Bone', 'Sulawesi Selatan', 'Jalan Jendral Sudirman, Biru, Tanete Riattang, Masumpu, Tanete Riattang, Kabupaten Bone, Sulawesi Selatan 92716', '(0481) 21082', 'RS Rujukan TNI', -4.54939300, 120.33120600),
(86, 'Apotek RSUD Soehadi Prijonegoro Sragen', 'Jawa Tengah', 'Sragen, Ngrandu, Nglorog, Kec. Sragen, Kabupaten Sragen, Jawa Tengah 57215 ', '(0271) 891068', 'RS Rujukan Provinsi Jawa Tengah', -7.41869500, 111.03839500),
(87, 'Apotek RSU Indramayu', 'Jawa Barat', 'Jl. Murah Nara No.7 Sindang, Indramayu', '0234 272655', 'RS Rujukan Kemenkes', -6.32946500, 108.32162400),
(88, 'Apotek Tk III Jambi', 'Jambi', 'Jl. Raden Mattaher No.3, Rajawali, Jambi, Kota Jambi, Jambi 36361', '(0741) 23246', 'RS Rujukan Polri', -1.58934000, 103.61850000),
(89, 'Apotek RS Paru Dr. Ario Wirawan', 'Jawa Tengah', 'Jl. Hasanudin No.806,Salatiga ', '(0298) 326130 , (0298) 322703', 'RS Rujukan Provinsi Jawa Tengah', -7.34898000, 110.48947100),
(90, 'Apotek Lembaga Biologi Molekuler Eijkman', 'DKI Jakarta', 'Jl. Pangeran Diponegoro No.69, RW.5, Kenari, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10430', '(021) 3917131', 'Laboratorium Pemeriksaan', -6.19796300, 106.84625200),
(91, 'Apotek RSU Dr. Kanujoso Djatiwibowo', 'Kalimantan Timur', 'Jl. MT Haryono Ring Road, Balikpapan No.656', '(0542) 873901 , 887955 , 887966', 'RS Rujukan Kemenkes', -1.22547600, 116.86816900),
(92, 'Apotek RSUD dr. Tjitrowardojo Purworejo', 'Jawa Tengah', 'Doplang, Kec. Purworejo, Kabupaten Purworejo, Jawa Tengah 54114 ', '(0275) 321118', 'RS Rujukan Provinsi Jawa Tengah', -7.72014100, 109.99575500),
(93, 'Apotek RS dr. Oen Surakarta', 'Jawa Tengah', 'Jl. Brigjen Katamso No.55, Tegalharjo, Kec. Jebres, Kota Surakarta, Jawa Tengah 57128 ', '(0271) 643139', 'RS Rujukan Provinsi Jawa Tengah', -7.55553000, 110.83833600),
(94, 'Apotek RSAL-4 AZHAR ZAHIR', 'Papua', 'Jl. Serma Swandi No.204 Maanokwari, Sanggeng, Manokwari Bar., Kabupaten Manokwari, Papua Barat 98312', '', 'RS Rujukan TNI', -0.87287400, 134.06339100),
(95, 'Apotek RS H. L. Manambai Abdulkadir', 'Nusa Tenggara Barat', 'Jl. Lintas Sumbawa - Bima Km.5 Sumbawa Besar', '(0371) 2628078', 'RS Rujukan Kemenkes', -8.53152200, 117.44768400),
(96, 'Apotek RSUD Tidar Kota', 'Jawa Tengah', 'Jl. Tidar No. 30A, Kota Magelang ', '(0293) 362260 , 362463', 'RS Rujukan Provinsi Jawa Tengah', -7.48550100, 110.21824000),
(97, 'Apotek RSU Andi Makkasau', 'Sulawesi Selatan', 'Jl. Nurussamawati No.9, Kota Pare Pare', '(0421) 21823', 'RS Rujukan Kemenkes', -4.03519800, 119.63390400),
(98, 'Apotek RSUP Fatmawati', 'DKI Jakarta', 'Jl. RS Fatmawati Cilandak,Jaksel', '(021) 7501524', 'RS Rujukan Kemenkes', -6.29512000, 106.79612700),
(99, 'Apotek Rumkit Tk. IV/Guntung Payung', 'Kalimantan Selatan', 'Jalan A. Yani, Guntungmanggis, Landasan Ulin, Guntungmanggis, Kec. Landasan Ulin, Kota Banjar Baru, Kalimantan Selatan 70721', '(0511) 4785310', 'RS Rujukan TNI', -3.44909600, 114.79962000),
(100, 'Apotek RSU Prof. Dr. Margono Soekarjo', 'Jawa Tengah', 'Jl. Dr. Gumbreg No. 1, Purwokerto', '0281 632708', 'RS Rujukan Kemenkes', -7.43663700, 109.26743500),
(101, 'Apotek RSU Dr. Slamet Garut', 'Jawa Barat', 'Jl. Rumah Sakit No.12 Kec.Tarogong Kidul, Kab.Garut 44151', '0262 232720', 'RS Rujukan Kemenkes', -7.21998800, 107.89701700),
(102, 'Apotek RSU Panembahan Senopati Bantul', 'DI Yogyakarta', 'Jl. Dr. Wahidin SH Bantul', '(0274) 367381 , 367386 , 367508', 'RS Rujukan Kemenkes', -7.89280500, 110.33810500),
(103, 'Apotek RSUP Sanglah Denpasar', 'Bali', 'Jl. Diponegoro Denpasar, Bali', '(0361) 227911 - 15', 'RS Rujukan Kemenkes', -8.67574200, 115.21317100),
(104, 'Apotek Rumkit Tk. IV/Kencana Serang', 'Banten', 'Jalan Jendral Ahmad Yani No. 21-23, Sumurpecung, Serang, Cimuncang, Kec. Serang, Kota Serang, Banten 42117', '(0254) 211554', 'RS Rujukan TNI', -6.11814500, 106.15921300),
(105, 'Apotek RSU Kendari (Bahtera Mas)', 'Sulawesi Tenggara', 'Jl. Kapten Piere Tendean No.50 Kec. Baruga', '(0421) 3195611', 'RS Rujukan Kemenkes', -3.99000100, 122.53365200),
(106, 'Apotek Balai Besar Laboratorium Kesehatan Surabaya', 'Jawa Timur', 'Jl. Karang Menjangan No.18, Airlangga, Kec. Gubeng, Kota SBY, Jawa Timur 60286', '(031) 5020306', 'Laboratorium Pemeriksaan', -7.26831700, 112.76028900),
(107, 'Apotek RSUD Siti Fatimah Provinsi Sumatera Selatan', 'Sumatera Selatan', 'Jl. Kol. H. Burlian Km 6 Kel. Sukabangun, Kec. Sukarami, Palembang 30151', '(0711) 5718883 , 5718889', 'RS Rujukan Kemenkes', -2.94824300, 104.73448500),
(108, 'Apotek Rumkit Tk. III/dr.Reksodiwiryo Padang', 'Sumatera Barat', 'Jl. Dr. Wahidin No.1, Ganting Parak Gadang, Kec. Padang Tim., Kota Padang, Sumatera Barat 25132', '(0751) 31003', 'RS Rujukan TNI', -0.95079500, 100.37199800),
(109, 'Apotek RSUD RA Kartini Jepara', 'Jawa Tengah', 'Jl. Wahid Hasyim No.175, Rw. V, Bapangan, Kec. Jepara, Kabupaten Jepara, Jawa Tengah 59413 ', '(0291) 591175', 'RS Rujukan Provinsi Jawa Tengah', -6.60611700, 110.68177200),
(110, 'Apotek RSUD Batang', 'Jawa Tengah', 'Jl. Dr.Sutomo No.42, Kauman, Kec. Batang, Kabupaten Batang, Jawa Tengah 51215 ', '(0285) 4493034', 'RS Rujukan Provinsi Jawa Tengah', -6.91470900, 109.71884800),
(111, 'Apotek RS Muhammadiyah Metro - Lampung', 'Lampung', '', '(0725) 49490', 'RS Rujukan Muhammadiyah & Aisyiyah', -5.13524600, 105.28980800),
(112, 'Apotek Rumkit Tk. II/Kartika Husada Pontianak', 'Kalimantan Barat', 'Jl. Adi Sucipto KM.6,5, Sungai Raya, Kubu Raya, Kabupaten Kubu Raya, Kalimantan Barat 78117', '(0561) 721391', 'RS Rujukan TNI', -0.07066800, 109.37678300),
(113, 'Apotek Balai Besar Laboratorium Kesehatan Jakarta', 'DKI Jakarta', 'Jl. Percetakan Negara No.23 B, Johar Baru, Kec. Johar Baru, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10560', '(021) 4212524', 'Laboratorium Pemeriksaan', -6.18992100, 106.85836900),
(114, 'Apotek RSUD Hasanuddin Damrah Manna', 'Bengkulu', 'Jl. Raya Padang Panjang Manna, Kab.Bengkulu Utara', '85381637684', 'RS Rujukan Kemenkes', -4.44197800, 102.89655300),
(115, 'Apotek Rumkit Tk. II/M Ridwan Meuraksa', 'DKI Jakarta', 'Jalan Taman Mini I, RT.4/RW.2, Pinang Ranti, Makasar, RT.4/RW.2, Pinang Ranti, Kec. Makasar, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13560', '(021) 22819465', 'RS Rujukan TNI', -6.29426100, 106.88278300),
(116, 'Apotek RSUD Depati Hamzah', 'Bangka Belitung', 'Jl. Soekarno Hatta, Kel.Bukit Besar, Ke.Girimaya Kota Pangkalpinang', '(0717) 438660', 'RS Rujukan Kemenkes', -2.14395800, 106.12430400),
(117, 'Apotek Tk.III Yogyakarta', 'DI Yogyakarta', 'Jalan Raya Yogya - Solo KM 14, Glondong, Tirtomartani, Kec. Kalasan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55571', '(0274) 498278', 'RS Rujukan Polri', -7.76618300, 110.47177000),
(118, 'Apotek Rumkit Tk. IV/Kediri', 'Jawa Timur', 'Jl. Mayjend Sungkono No.44, Semampir, Kec. Kota Kediri, Kota Kediri, Jawa Timur 64129', '(0354) 687801', 'RS Rujukan TNI', -7.80880100, 112.00936500),
(119, 'Apotek RSU Tk II 03.05.01 Dustira', 'Jawa Barat', 'Jl. dr. Dustira No.1 Kel. Baros Kec. Cimahi Tengah', '(022) 665 2207, 663 3967 , (022) 663 0932', 'RS Rujukan Kemenkes', -6.88527400, 107.53464000),
(120, 'Apotek RS Dr R Koesma Tuban', 'Jawa Timur', 'Jl. Dr. WS Husodo, Tuban', '(0356) 321010 , 325696 , 323266', 'RS Rujukan Kemenkes', -6.89871500, 112.04651900),
(121, 'Apotek Tk III Tjtra Bengkulu', 'Bengkulu', 'Jl. Veteran No.2, Ps. Jitra, Kec. Tlk. Segara, Kota Bengkulu, Bengkulu 38113', '(0736) 21553', 'RS Rujukan Polri', -3.79270600, 102.25514400),
(122, 'Apotek Rumkit Tk. IV/dr. Yanto Poso', 'Sulawesi Tengah', 'Kasintuwu, Poso Kota Utara, Kabupaten Poso, Sulawesi Tengah 94611', '', 'RS Rujukan TNI', -1.38665700, 120.75600600),
(123, 'Apotek RSU Colombia Asia Semarang', 'Jawa Tengah', 'Jl. Siliwangi No.143, Kalibanteng Kulon, Kec. Semarang Bar., Kota Semarang, Jawa Tengah 50145 ', '(024) 7629999', 'RS Rujukan Provinsi Jawa Tengah', -6.98427900, 110.38289600),
(124, 'Apotek Rumkit Tk. IV/Bandar Lampung', 'Lampung', 'Jl. Dr. Rivai No.7, Penengahan, Kec. Tj. Karang Pusat, Kota Bandar Lampung, Lampung 35121', '(0721) 703574', 'RS Rujukan TNI', -5.40152500, 105.25836100),
(125, 'Apotek RSUD Ir. Soekarno Sukoharjo', 'Jawa Tengah', 'Sukoharjo, Bulusari, Gayam, Kec. Sukoharjo, Kabupaten Sukoharjo, Jawa Tengah 57514 ', '(0271) 335966', 'RS Rujukan Provinsi Jawa Tengah', -7.68398000, 110.84970100),
(126, 'Apotek RS PKU Muhammadiyah Gombong', 'Jawa Tengah', '', '(0287) 471780', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.60869600, 109.50234500),
(127, 'Apotek Tk II Makassar', 'Sulawesi Selatan', 'Jl. Letnan Jenderal Jl. Andi Mappaodang No.63, Jongaya, Kec. Tamalate, Kota Makassar, Sulawesi Selatan 90223', '(0411) 8054330', 'RS Rujukan Polri', -5.17465200, 119.41581400),
(128, 'Apotek RSUD Tugurejo Semarang', 'Jawa Tengah', 'Jl. Walisongo No. 137 KM 8.5, Jawa Tengah 50185 ', '(024) 7605297', 'RS Rujukan Provinsi Jawa Tengah', -6.98453700, 110.35593400),
(129, 'Apotek Rumkit Tk. III/Slamet Riyadi Surakarta', 'Jawa Tengah', 'Jl. Slamet Riyadi No No.321Kvi, Purwosari, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57148', '(0271) 714656', 'RS Rujukan TNI', -7.56583600, 110.80524000),
(130, 'Apotek Rumkit Tk. IV/Bratanata Jambi', 'Jambi', 'Jl. Raden Mattaher No.33, Sulanjana, Kec. Jambi Tim., Kota Jambi, Jambi 36123', '(0741) 34212', 'RS Rujukan TNI', -1.59313600, 103.61865600),
(131, 'Apotek RSU PKU Muh. Surakarta', 'Jawa Tengah', 'Surakarta, Timuran, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57131 ', '(0271) 714578', 'RS Rujukan Provinsi Jawa Tengah', -7.56563700, 110.81654100),
(132, 'Apotek RSUD Dr. Loekmonohadi Kudus', 'Jawa Tengah', 'Jl. Dr. Lukmonohadi No. 19, Kudus ', '(0291) 444001', 'RS Rujukan Provinsi Jawa Tengah', -6.81881000, 110.83655700),
(133, 'Apotek RSAL-3 SAMUEL J. MOEDA', 'Nusa Tenggara Timur', 'Jl. Yos Sudarso No. 5 Osmok Kupang 85232, Nusa Tenggara Timur Indonesia, Namosain, Alak, Kota Kupang, Nusa Tenggara Tim.', '(0380) 890670', 'RS Rujukan TNI', -10.17598000, 123.55549600),
(134, 'Apotek TK.III Tulungagung', 'Jawa Timur', 'Jl. I Gusti Ngurah Rai No.29, Bago, Kec. Tulungagung, Kabupaten Tulungagung, Jawa Timur 66218', '', 'RS Rujukan Polri', -8.06746400, 111.90752600),
(135, 'Apotek RSUD K.R.M.T Wongsonegoro Kota Semarang', 'Jawa Tengah', 'Jl. Fatmawati No.1 Semarang 50272', '(024) 6711500', 'RS Rujukan Kemenkes', -7.03331700, 110.46690300),
(136, 'Apotek RSAU-4 LANUD ELTARI', 'Nusa Tenggara Timur', 'Jl. Taebenu, Penfui, Maulafa, Kota Kupang, Nusa Tenggara Timur', '', 'RS Rujukan TNI', -10.17869800, 123.66186300),
(137, 'Apotek Tk III Mataram', 'Nusa Tenggara Barat', 'Jl. Langko No.64, Pejeruk, Kec. Ampenan, Kota Mataram, Nusa Tenggara Bar. 83112', '(0370) 629149', 'RS Rujukan Polri', -8.57745000, 116.08435000),
(138, 'Apotek RSU Dr TC Hillers', 'Nusa Tenggara Timur', 'Jl. Wairklau, Maumere, Kab.Sikka', '81261153944', 'RS Rujukan Kemenkes', -8.62231400, 122.20423200),
(139, 'Apotek RSAU-4 DR. N. LUBIS LANUD SULAIMAN', 'Jawa Barat', 'Jl. Terusan Kopo-Soreang No.461, Sulaiman, Kec. Margahayu, Bandung, Jawa Barat 40229', '', 'RS Rujukan TNI', -6.98353300, 107.56400600),
(140, 'Apotek RSUD Provinsi Sulawesi Barat', 'Sulawesi Barat', 'Jl. RE. Marthadinata, Simboro, Kec.Simboro dan Kepulauan, Kab.Mamuju', '(0426) 2703260 / 04', 'RS Rujukan Kemenkes', -2.68996600, 118.86274900),
(141, 'Apotek RS Umum Bhayangkara Tk. I R. Said Sukanto', 'DKI Jakarta', 'Jl. Raya Bogor Kramat Jati, Jakarta Timur', '(021) 8093288', 'RS Rujukan Kemenkes', -6.26951200, 106.87070500),
(142, 'Apotek Rumkit Tk. II/dr.A K Gani', 'Sumatera Selatan', 'Jl. Dr. Ak. Gani No.1, 19 Ilir, Kec. Bukit Kecil, Kota Palembang, Sumatera Selatan 30113', '', 'RS Rujukan TNI', -2.98995100, 104.76058500),
(143, 'Apotek RSU Dr. Soetomo', 'Jawa Timur', 'Jl. Prof. Dr. Moestop No. 6-8, Surabaya', '(031) 5501001 , 5501239', 'RS Rujukan Kemenkes', -7.26798700, 112.75850400),
(144, 'Apotek RSU Dr. M. Hoesin Palembang', 'Sumatera Selatan', 'Jl. Jend. Soedirman Km. 3.5 , Palembang 30126', '(0711) 354088', 'RS Rujukan Kemenkes', -2.96608300, 104.75022100),
(145, 'Apotek RSU dr. Asmir Salatiga', 'Jawa Tengah', 'Jl. DR. Muwardi No.50, Kutowinangun Kidul, Kec. Tingkir, Kota Salatiga, Jawa Tengah 50711 ', '(0293) 363061', 'RS Rujukan Provinsi Jawa Tengah', -7.33116400, 110.51054600),
(146, 'Apotek RS Siti Khotijah Sepanjang - Sidoarjo', 'Jawa Timur', '', '(031) 7882123 , 7881130 , 08113336767', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.34484000, 112.69905600),
(147, 'Apotek RSUD Labuang Baji', 'Sulawesi Selatan', 'Jl. Dr. Ratulangi No.81 Makassar', '(0411) 872120', 'RS Rujukan Kemenkes', -5.16254400, 119.41824900),
(148, 'Apotek RSUD Kab. Buleleng', 'Bali', 'Jl. Ngurah Rai 30 Singaraja', '(0362) 22046 , 3307744', 'RS Rujukan Kemenkes', -8.11980900, 115.09247500),
(149, 'Apotek Rumkit Tk. IV/Guntur Garut', 'Jawa Barat', 'Jl. Bratayuda No.101, Kota Kulon, Kec. Garut Kota, Kabupaten Garut, Jawa Barat 44112', '(0262) 232325', 'RS Rujukan TNI', -7.22490900, 107.91142000),
(150, 'Apotek RSAU-3 DR. M. MUNIR LANUD ABD', 'Jawa Timur', 'Komplek TNI AU, Jl. Dr. Munir No. 18, Saptorenggo, Pakis, Krajan, Saptorenggo, Kec. Pakis, Malang, Jawa Timur 65154', '(0341) 792273', 'RS Rujukan TNI', -7.93425900, 112.70288000),
(151, 'Apotek RSU Mardi Rahayu Kudus', 'Jawa Tengah', 'Jl. AKBP Agil Kusumadya No.110, Jatirejo, Jati Wetan, Kec. Jati, Kabupaten Kudus, Jawa Tengah 59346 ', '(0291) 438234', 'RS Rujukan Provinsi Jawa Tengah', -6.83009900, 110.83127300),
(152, 'Apotek RSU Kolonedale', 'Sulawesi Tengah', 'Jl. W. Monginsidi 2, Kolonedale', '0465 21010', 'RS Rujukan Kemenkes', -1.97236700, 121.33685600),
(153, 'Apotek RSUD Ulin Banjarmasin', 'Kalimantan Selatan', 'Jl. Jend. A.Yani Km 2.5 Banjarmasin', '(0511) 3252180', 'RS Rujukan Kemenkes', -3.32282300, 114.60117800),
(154, 'Apotek RSUD Blambangan', 'Jawa Timur', 'Jl. Letkol Istiqlah No.49, Singonegaran, Kec. Banyuwangi, Kabupaten Banyuwangi, Jawa Timur 68415', '(0333) 421118 , 421071', 'RS Rujukan Kemenkes', -8.20834800, 114.36599300),
(155, 'Apotek Rumkit Tk. II/Ambon', 'Maluku', 'Jalan Dr. Tamaela No.2, Kel Silale, Nusaniwe, Kota Ambon, Maluku', '(0911) 353555', 'RS Rujukan TNI', -3.70128200, 128.17767500),
(156, 'Apotek RUMKITBAN SURABAYA', 'Jawa Timur', 'Jl. Gubeng Pojok No.21, Ketabang, Kec. Genteng, Kota SBY, Jawa Timur 60272', '(031) 5310069', 'RS Rujukan TNI', -7.26516700, 112.75137500),
(157, 'Apotek RSUD Sunan Kalijaga Demak', 'Jawa Tengah', 'Jl. Sultan Fatah 669/50, Bintoro, Kecamatan Demak, Bogorame, Bintoro, Kec. Demak, Kabupaten Demak, Jawa Tengah 59511 ', '(0291) 685018', 'RS Rujukan Provinsi Jawa Tengah', -6.89892400, 110.63390000),
(158, 'Apotek RSU Bhakti Wira Salatiga', 'Jawa Tengah', 'Jl. DR. Sutomo No.17, Barusari, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50245 ', '(024) 3555944', 'RS Rujukan Provinsi Jawa Tengah', -6.98663800, 110.40819000),
(159, 'Apotek Tk II Semarang', 'Jawa Tengah', 'Jl. Majapahit No.140, Gayamsari, Kec. Gayamsari, Kota Semarang, Jawa Tengah 50248', '(024) 6720675', 'RS Rujukan Polri', -7.00016900, 110.44623500),
(160, 'Apotek RSUD dr. R. G. Taroenadibrata Purbalingga', 'Jawa Tengah', 'Purbalingga, Kembaran Kulon, Kec. Purbalingga, Kabupaten Purbalingga, Jawa Tengah 53319 ', '(0281) 891016', 'RS Rujukan Provinsi Jawa Tengah', -7.37840200, 109.36154700),
(161, 'Apotek RSUD Pandan Arang Boyolali', 'Jawa Tengah', 'Jl. Magelang - Boyolali No.136, Dusun 2, Winong, Kec. Boyolali, Kabupaten Boyolali, Jawa Tengah 57315 ', '(0276) 321065', 'RS Rujukan Provinsi Jawa Tengah', -7.53358500, 110.59066000),
(162, 'Apotek Rumkit Tk. IV/Palu', 'Sulawesi Tengah', 'Jl. Sisingamangaraja No.4, Lolu Utara, Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94118', '(0451) 421575', 'RS Rujukan TNI', -0.89716400, 119.88608200),
(163, 'Apotek RS PKU Muhammadiyah Roemani Semarang', 'Jawa Tengah', '', '(024) 8444623', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.00108500, 110.42790500),
(164, 'Apotek Rumkit Dik Puskdikkes', 'DKI Jakarta', 'Jalan Raya Bogor No.KM. 24, RT.2/RW.9, Kramat Jati, Kec. Kramat jati, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13510', '(021) 8092358', 'RS Rujukan TNI', -6.27683600, 106.86921700),
(165, 'Apotek Tk III Palu', 'Sulawesi Tengah', 'JL. DR. Suharso Lrg III, No.02, Besusu Barat, Palu Timur, Besusu Bar., Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94118', '(0451) 429714', 'RS Rujukan Polri', -0.88956600, 119.86782200),
(166, 'Apotek RSUD Aji Muhammad Parikesit', 'Kalimantan Timur', 'Jl. Ratu Agung No. 1 Tenggarong Seberang, Kutai Kartanegraa', '(0541) 661013 , 661015', 'RS Rujukan Kemenkes', -0.43896100, 117.01293100),
(167, 'Apotek Tk III Kupang', 'Nusa Tenggara Timur', 'Jl. Nangka No.84, Oetete, Kec. Oebobo, Kota Kupang, Nusa Tenggara Tim.', '(0380) 821999', 'RS Rujukan Polri', -10.16397100, 123.59213100),
(168, 'Apotek RSU Gunung Jati', 'Jawa Barat', 'JL. Kosamabi No. 56, Kota Cirebon', '0231 206330', 'RS Rujukan Kemenkes', -6.72952200, 108.55474100),
(169, 'Apotek RS PKU Muhammadiyah Gemping', 'Yogyakarta', '', '(0274) 6499704 , 6499704', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.80045400, 110.31768500),
(170, 'Apotek RSUD Kraton Kab. Pekalongan', 'Jawa Tengah', 'Jl. Veteran 31, Pekalongan', '(0285) 423225 , 423523', 'RS Rujukan Kemenkes', -6.88138600, 109.66749700),
(171, 'Apotek Laboraturium Kesehatan DKI Jakarta', 'DKI Jakarta', 'Jl. Rawasari Timur V, RT.16/RW.2, Cemp. Putih Tim., Kec. Cemp. Putih, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10510', '(021) 4247404, 408, 432, (021) 4247364', 'Laboratorium Pemeriksaan', -6.18461900, 106.87201900),
(172, 'Apotek RSUD Kab. Sorong', 'Papua Barat', 'Jl. Kesehatan No. 36 Sorong', '(0951) 321850', 'RS Rujukan Kemenkes', -0.86955300, 131.24682100),
(173, 'Apotek Rumkit Tk. IV/Salak Bogor', 'Jawa Barat', 'Jl. Jend. Sudirman No.8, Sempur, Kecamatan Bogor Tengah, Kota Bogor, Jawa Barat 16121', '(0251) 8345222', 'RS Rujukan TNI', -6.59121700, 106.79739100),
(174, 'Apotek RSU Islam Klaten', 'Jawa Tengah', 'Jl. Klaten - Solo No.KM.4, Sidorejo, Belang Wetan, Kec. Klaten Utara, Kabupaten Klaten, Jawa Tengah ', '(0272) 322252', 'RS Rujukan Provinsi Jawa Tengah', -7.68572200, 110.63435700),
(175, 'Apotek RSU Dr. Kariadi Semarang', 'Jawa Tengah', 'Jl. Dr.Sutomo No. 16, Semarang', '(024) 8413476', 'RS Rujukan Kemenkes', -6.99418100, 110.40748800),
(176, 'Apotek RSU Dr. H. RM Soeselo W', 'Jawa Tengah', 'Jl. Dr. Sutromo No. 63, Slawi ', '0283 491016', 'RS Rujukan Provinsi Jawa Tengah', -6.99349500, 109.13771300),
(177, 'Apotek RSU Raba/ RSUD BIMA', 'Nusa Tenggara Barat', 'Jl. Langsat No. 1, Rabangodu, Raba, Kab. Bima', '0374 43142', 'RS Rujukan Kemenkes', -8.47347000, 118.76184200),
(178, 'Apotek RSAL-3 OETOJO', 'Papua Barat', 'Jl. Ahmad Yani, Klademak, Sorong Manoi, Kota Sorong, Papua Bar. 98412', '(0951) 3173103', 'RS Rujukan TNI', -0.88306800, 131.27489500),
(179, 'Apotek RSUD Kardinah Tegal', 'Jawa Tengah', 'Jl. AIP KS Tubun No 2, Kota Tegal 52124', '(0283) 350377 , 350477', 'RS Rujukan Kemenkes', -6.88476900, 109.13542700),
(180, 'Apotek Balai Teknik Kesehatan Lingkungan dan Pengendalian Penyakit Surabaya', 'Jawa Timur', 'Jl. Sidoluhur No.12, Kemayoran, Kec. Krembangan, Kota SBY, Jawa Timur 60175', '(031) 3540189', 'Laboratorium Pemeriksaan', -7.24150000, 112.73031600),
(181, 'Apotek RSPAL-1 dr RAMELAN', 'Jawa Timur', 'Jl. Gadung No.1, Jagir, Kec. Wonokromo, Kota SBY, Jawa Timur 60244', '(031) 8438153', 'RS Rujukan TNI', -7.30936500, 112.73865300),
(182, 'Apotek RSAL Mintoharjo', 'DKI Jakarta', 'Jl. Bendungan Hilir 17 Jakpus', '(021) 5703081', 'RS Rujukan Kemenkes', -6.21094500, 106.81093700),
(183, 'Apotek RSU dr. Soedjono Magelang', 'Jawa Tengah', 'Jl. Jend. Urip Sumoharjo No.48, Wates, Kec. Magelang Utara, Kota Magelang, Jawa Tengah 56113 ', '(0293) 363061', 'RS Rujukan Provinsi Jawa Tengah', -7.46778300, 110.22607800),
(184, 'Apotek RSU Kayu Agung', 'Sumatera Selatan', 'Jl. Letjen Yusuf Singadekane Kel. Jua-jua Kec.Kayuagung, Kab.Ogan Komering Ilir', '(0712) 323889', 'RS Rujukan Kemenkes', -3.40791500, 104.82497600),
(185, 'Apotek Tk III Batu Malang', 'Jawa Timur', 'Ngaglik, Kec. Batu, Kota Batu, Jawa Timur 65311', '(0341) 591067', 'RS Rujukan Polri', -7.87175400, 112.52405600),
(186, 'Apotek RS Tk.II Pelamonia', 'Sulawesi Selatan', 'Jl. Jend Sudirman No.27,Makassar', '(0411) 7402332', 'RS Rujukan Kemenkes', -5.13815500, 119.41486500),
(187, 'Apotek Balai Besar Laboratorium Kesehatan Makassar', 'Sulawesi Selatan', 'Jl. Perintis Kemerdekaan KM.11, Tamalanrea, Kec. Tamalanrea, Kota Makassar, Sulawesi Selatan 90245', '(0411) 586458', 'Laboratorium Pemeriksaan', -5.13146000, 119.49564300),
(188, 'Apotek RSU Persahabatan', 'DKI Jakarta', 'Jl. Persahabatan Raya', '021 489 1708', 'RS Rujukan Kemenkes', -6.20275000, 106.88486200),
(189, 'Apotek Rumkit Tk. IV/dr. Noesmir Baturaja', 'Sumatera Selatan', 'Jl. Dr. M. Hatta No.16, Baturaja Lama, Kec. Baturaja Timur, Kabupaten Ogan Komering Ulu, Sumatera Selatan 32125', '(0735) 320123', 'RS Rujukan TNI', -4.12246300, 104.16771000),
(190, 'Apotek Rumkit Tk. II/Udayana Denpasar', 'Bali', 'Jl. Jend. Sudirman No.1, Dangin Puri Klod, Kec. Denpasar Tim., Kota Denpasar, Bali 80232', '(0361) 228068', 'RS Rujukan TNI', -8.66321300, 115.21896600),
(191, 'Apotek RSU Anutapura Palu', 'Sulawesi Tengah', 'Jl. Kangkung No. 1 Palu', '(0451) 460570', 'RS Rujukan Kemenkes', -0.89987800, 119.84945600),
(192, 'Apotek RSAU-4 DR. SOEMITRO LANUD MUL SBY', 'Jawa Timur', 'Jl. Serayu No.17, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241, Indonesia', '(031) 5669514', 'RS Rujukan TNI', -7.29134100, 112.74100900),
(193, 'Apotek RSUD Sidoarjo', 'Jawa Timur', 'Jl. Mojopahit No.667, Sidowayah, Celep, Kec. Sdioarjo, Kab.Sidoarjo', '(031) 8961649', 'RS Rujukan Kemenkes', -7.46543300, 112.71635500),
(194, 'Apotek RSU St. Elizabeth Semarang', 'Jawa Tengah', 'Jl. Kawi 1, Wonotingal, Kec. Candisari, Kota Semarang, Jawa Tengah 50252 ', '(024) 8310035', 'RS Rujukan Provinsi Jawa Tengah', -7.00787200, 110.41873500),
(195, 'Apotek Rumkit Tk. IV/Wira Bhakti Mataram', 'Nusa Tenggara Barat', 'Jl. Hos Cokroaminoto No.7, Mataram Bar., Kec. Selaparang, Kota Mataram, Nusa Tenggara Barat. 83123', '(0370) 640149', 'RS Rujukan TNI', -8.58085300, 116.10894000),
(196, 'Apotek RSU Dr. Doris Sylvanus', 'Kalimantan Tengah', 'Jl. Tambun Bungai No. 4, Palangkaraya', '(0536) 3224695 , 3229194', 'RS Rujukan Kemenkes', -2.21051700, 113.92248400),
(197, 'Apotek RSPAU-1 Dr. S. HARDJOLUKITO', 'DI Yogyakarta', 'JL. Janti Yogyakarta, Lanud Adisutjipto, Jl. Ringroad Timur, Karang Janbe, Banguntapan, Kec. Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198', '(0274) 444702', 'RS Rujukan TNI', -7.79737600, 110.41019300),
(198, 'Apotek Rumkit Tk. III/Baladika Husada/Jember', 'Jawa Timur', 'Jl. PB Sudirman No.45, Pagah, Jemberlor, Kec. Patrang, Kabupaten Jember, Jawa Timur 68118', '(0331) 482541', 'RS Rujukan TNI', -8.16380600, 113.70627500),
(199, 'Apotek RSI Muhammadiyah Kendal', 'Jawa Tengah', '', '(0294) 641870 , 643756', 'RS Rujukan Muhammadiyah & Aisyiyah', -6.96839100, 110.09123500),
(200, 'Apotek RST Wijayakusumah Purwokerto', 'Jawa Tengah', 'Jl. Prof Dr. HR Bunyamin, Glempang, Bancarkembar, Kec. Purwokerto Utara, Kabupaten Banyumas, Jawa Tengah 53121 ', '(0281) 633062', 'RS Rujukan Provinsi Jawa Tengah', -7.41508200, 109.24557700),
(201, 'Apotek RSAL-3 JALA AMMARI', 'Sulawesi Selatan', 'Jl. Satando No.27, Tamalabba, Kec. Ujung Tanah, Kota Makassar, Sulawesi Selatan 90163', '(0411) 3617625', 'RS Rujukan TNI', -5.11555300, 119.41563700),
(202, 'Apotek RSU Dr. Moewardi', 'Jawa Tengah', 'Jl. Kol. Sutarto 132, Surakarta ', '(0271) 637415', 'RS Rujukan Provinsi Jawa Tengah', -7.55696300, 110.84297000),
(203, 'Apotek Tk III Balikpapan', 'Kalimantan Timur', 'Jl. Jenderal Sudirman No.14, Klandasan Ilir, Balikpapan Sel., Kota Balikpapan, Kalimantan Timur', '(0542) 421261', 'RS Rujukan Polri', -1.27934300, 116.81967700),
(204, 'Apotek RSI Jakarta Pondok Kopi', 'DKI Jakarta', '', '(021) 29809000 , 8630654', 'RS Rujukan Muhammadiyah & Aisyiyah', -6.22005800, 106.93992400),
(205, 'Apotek RSUD Karanganyar', 'Jawa Tengah', 'Karanganyar, Jengglong, Bejen, Kec. Karanganyar, Kabupaten Karanganyar, Jawa Tengah 57716 ', '(0271) 495673', 'RS Rujukan Provinsi Jawa Tengah', -7.59105600, 110.94945200),
(206, 'Apotek RSU H A Wahab Sjahranie', 'Kalimantan Timur', 'Jl. Palang Merah Indonesia No.1 Samarinda, Kaltim', '0541 738118', 'RS Rujukan Kemenkes', -0.47899200, 117.14426800),
(207, 'Apotek Fakultas Kedokteran Universitas Indonesia', 'DKI Jakarta', 'Jl. Salemba Raya No.6, RW.5, Kenari, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10430', '(021) 3160493', 'Laboratorium Pemeriksaan', -6.19501100, 106.84875500),
(208, 'Apotek RSU Banyumas', 'Jawa Tengah', 'Jl. Rumah Sakit No. 1, Banyumas', '0281 796031', 'RS Rujukan Kemenkes', -7.52910800, 109.29268700),
(209, 'Apotek Tk III Nganjuk', 'Jawa Timur', 'Jl. Abdurahman Saleh VI No.56, Kauman, Kec. Nganjuk, Kabupaten Nganjuk, Jawa Timur 64411', '(0358) 321896', 'RS Rujukan Polri', -7.60004800, 111.89477100),
(210, 'Apotek RSUD NTB', 'Nusa Tenggara Barat', 'Jl. Prabu Rangkasari Dasan Cermen', '(0370) 7502424 , 7504288', 'RS Rujukan Kemenkes', -8.60725900, 116.13104700),
(211, 'Apotek RSU Prof. Dr. Margono Soekarjo', 'Jawa Tengah', 'Jl. Dr. Gumbreg No. 1, Purwokerto ', '0281 632708', 'RS Rujukan Provinsi Jawa Tengah', -7.43663700, 109.26743500),
(212, 'Apotek RSUD Cengkareng', 'DKI Jakarta', 'Jl. Kamal Raya Bumi Cengkareng Indah, Cengkareng Timur', '(021) 54372874', 'RS Rujukan Kemenkes', -6.14262700, 106.73509700),
(213, 'Apotek Tk III Pontianak', 'Kalimantan Barat', 'Jalan K. S. Tubun No.14, RT.03/RW.01, Akcaya, Kec. Pontianak Sel., Kota Pontianak, Kalimantan Barat 78121', '(0561) 736610', 'RS Rujukan Polri', -0.04102100, 109.33390100),
(214, 'Apotek RSU Dr Suraji Tirtonegoro', 'Jawa Tengah', 'Jl. Dr. Soeradji T. No. 1, Klaten', '(0272) 321104', 'RS Rujukan Kemenkes', -7.71434400, 110.58871900),
(215, 'Apotek RSU Lakipadada Tana Toraja', 'Sulawesi Selatan', 'Jl. Pongtiku Mandetek, Tana Toraja', '0432 22264', 'RS Rujukan Kemenkes', -3.07338200, 119.86771300),
(216, 'Apotek Rumkit Tk. III/Bhakti Wira Tamtama Semarang', 'Jawa Tengah', 'Jl. DR. Sutomo No.17, Barusari, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50245', '(024) 3555944', 'RS Rujukan TNI', -6.98704700, 110.40768200),
(217, 'Apotek Rumkit Tk. II/Pelamonia Makasar', 'Sulawesi Selatan', 'Jl. Jend. Sudirman No.27, Pisang Utara, Kec. Ujung Pandang, Kota Makassar, Sulawesi Selatan 90157', '0811-1782-399', 'RS Rujukan TNI', -5.13815400, 119.41486400),
(218, 'Apotek RSUD Kota Yogyakarta', 'DI Yogyakarta', 'Jl. Wirosaban No.1 Yogyakarta, DIY 55162', '(0274) 371195 , 386691 , 386692', 'RS Rujukan Kemenkes', -7.82580700, 110.37800500),
(219, 'Apotek Rumkit Tk. IV/Samarinda', 'Kalimantan Timur', 'Jl. Jend. Sudirman No.52, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', '(0541) 4113679', 'RS Rujukan TNI', -0.50114800, 117.14288500),
(220, 'Apotek Tk II Bandung', 'Jawa Barat', 'Jl. Moh. Toha No.369, Ciseureuh, Kec. Regol, Kota Bandung, Jawa Barat 40256', '0811-2232-056', 'RS Rujukan Polri', -6.95647900, 107.61229400),
(221, 'Apotek BRSU Tabanan Bali', 'Bali', 'Jl. Pahlawan No.14 Tabanan Bali', '(0361) 811027 , 819810 , 811202', 'RS Rujukan Kemenkes', -8.53891500, 115.13196600),
(222, 'Apotek RSU Mayjend HM Ryacudu', 'Lampung', 'Jl. Jend. Sudirman No. 2, Kotabumi, Lampung Utara 34511', '(0724) 22095', 'RS Rujukan Kemenkes', -4.83276900, 104.89144700),
(223, 'Apotek RS Fatimah Banyuwangi', 'Jawa Timur', '', '(0333) 421451', 'RS Rujukan Muhammadiyah & Aisyiyah', -8.24750500, 114.34879400),
(224, 'Apotek RSU Islam Harapan Anda Kota Tegal', 'Jawa Tengah', 'Jl. Ababil No.42, Randugunting, Kec. Tegal Sel., Kota Tegal, Jawa Tengah 52131 ', '(0283) 358244', 'RS Rujukan Provinsi Jawa Tengah', -6.87626600, 109.12844000),
(225, 'Apotek Rumkit Tk. IV Daan Mogot Tangerang', 'Banten', 'Jalan Daan Mogot No.59, Sukarasa, Kecamatan Tangerang, RT.003/RW.004, Sukarasa, Kec. Tangerang, Kota Tangerang, Banten 15111', '(021) 5523551', 'RS Rujukan TNI', -6.17217900, 106.63168100),
(226, 'Apotek RSUD dr. R. Soetrasno Rembang', 'Jawa Tengah', 'Jl. Pahlawan No.16, Kabongan Kidul, Kec. Rembang, Kabupaten Rembang, Jawa Tengah 59218 ', '(0295) 691444', 'RS Rujukan Provinsi Jawa Tengah', -6.70892500, 111.35819100),
(227, 'Apotek RS Dr. Rivai Abdullah', 'Sumatera Selatan', 'Jl. Sungai Kundur Kelurahan Mariana Kec. Banyuasin I', '(0711) 7537201', 'RS Rujukan Kemenkes', -2.97968400, 104.86338600),
(228, 'Apotek RSAL-3 EWA PANGALILA (RS Marinir)', 'Jawa Timur', 'Gn. Sari, Kec. Dukuhpakis, Kota SBY, Jawa Timur 60224', '(031) 5682405', 'RS Rujukan TNI', -7.30417000, 112.70836000),
(229, 'Apotek Rumkit Tk. IV/Sariningsih Bandung', 'Jawa Barat', 'Jl. L. L. R.E. Martadinata No.9, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115', '(022) 4211650', 'RS Rujukan TNI', -6.90683400, 107.61126300),
(230, 'Apotek RSU Kab. Banggai Luwuk', 'Sulawesi Tengah', 'Jl. Imam Bonjol Km 3 No. 14, Luwuk', '0461 21820', 'RS Rujukan Kemenkes', -0.93405700, 122.82219700),
(231, 'Apotek RSUD Kota Surakarta', 'Jawa Tengah', 'Kedungupit, Sawahan, Kec. Ngemplak, Kabupaten Boyolali, Jawa Tengah 57375 ', '(0271) 715300', 'RS Rujukan Provinsi Jawa Tengah', -7.52573000, 110.81310800),
(232, 'Apotek RSU Dr. M. Yunus Bengkulu', 'Bengkulu', 'Jl. Bhayangkara Sidomulyo, Bengkulu', '(0736) 52004 , 5111', 'RS Rujukan Kemenkes', -3.83425100, 102.31397000),
(233, 'Apotek RSU Telogorejo Semarang', 'Jawa Tengah', 'Jl. Kh Ahmad Dahlan, Pekunden, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50134 ', '(024)86466000', 'RS Rujukan Provinsi Jawa Tengah', -6.98798300, 110.42646000),
(234, 'Apotek RSUD Dr. Drajat Prawiranegara', 'Banten', 'Jl. Rumah Sakit No. 1, Serang', '0254 200528', 'RS Rujukan Kemenkes', -6.11986800, 106.15261600),
(235, 'Apotek RS Dr S Djatikoesoemo', 'Jawa Timur', 'Jl. Dr. Wahidin 36, Bojonegoro', '(0353) 3412133', 'RS Rujukan Kemenkes', -7.15951100, 111.89963000),
(236, 'Apotek Tk III Lemdiklat Polri', 'DKI Jakarta', 'Jl. Ciputat Raya No.40, RT.1/RW.9, Pd. Pinang, Kec. Kby. Lama, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12310', '(021) 7650384', 'RS Rujukan Polri', -6.28675300, 106.77057300),
(237, 'Apotek RSU Dr Murjani Sampit', 'Kalimantan Tengah', 'Jl. H M Arsyad No. 65, Sampit', '(0531) 21010', 'RS Rujukan Kemenkes', -2.54274200, 112.94904900),
(238, 'Apotek Rumkit Tk. IV/Madiun', 'Jawa Timur', 'Jl. Pahlawan No.79, Kartoharjo, Kec. Kartoharjo, Kota Madiun, Jawa Timur 63121', '(0351) 454787', 'RS Rujukan TNI', -7.62944300, 111.51975300),
(239, 'Apotek RSAU-3 DR. DODDY SARDJOTO HND', 'Sulawesi Selatan', 'Jalan Poros Bandara Baru Hasanuddin, Baji Mangngai, Kec. Mandai, Kabupaten Maros, Sulawesi Selatan 90552', '(0411) 8954384', 'RS Rujukan TNI', -5.07183300, 119.53510700),
(240, 'Apotek RSU Dr. M Haulussy Ambon', 'Maluku', 'Jl. Dr. Kayadoe, Ambon 97116', '(0911) 353595', 'RS Rujukan Kemenkes', -3.70821400, 128.16547300),
(241, 'Apotek RS PKU Muhammadiyah Wonosobo', 'Jawa Tengah', '', '(0286) 329185 , 085794700150', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.37278000, 109.94052600),
(242, 'Apotek RSUD Dr. Loekmonohadi Kudus', 'Jawa Tengah', 'Jl. Dr. Lukmonohadi No. 19, Kudus', '(0291) 444001', 'RS Rujukan Kemenkes', -6.81881000, 110.83655700),
(243, 'Apotek RSUD Salatiga', 'Jawa Tengah', 'Jl. Osamaliki, Sidorejo Lor, Kec. Sidorejo, Kota Salatiga, Jawa Tengah 50721 ', '(0298) 324074', 'RS Rujukan Provinsi Jawa Tengah', -7.32771400, 110.49537000),
(244, 'Apotek Balai Teknik Kesehatan Lingkungan dan Pengendalian Penyakit DIY', 'DI Yogyakarta', 'Jl. Imogiri Tim. No.Km. 7,5, Grojogan, Wirokerten, Kec. Banguntapan, Bantul, Daerah Istimewa Yogyakarta', '(0274) 371588', 'Laboratorium Pemeriksaan', -7.82098700, 110.41504600),
(245, 'Apotek RS PKU Muhammadiyah Yogyakarta', 'Yogyakarta', '', '0274 512 653', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.80113200, 110.36225300),
(246, 'Apotek Rumkit Tk. II/Dustira Cimahi', 'Jawa Barat', 'Cimahi, Baros, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40521', '', 'RS Rujukan TNI', -6.88571800, 107.53492000),
(247, 'Apotek RSU Dr. M. Jamil Padang', 'Sumatera Barat', 'Jl. Perintis Kemerdekaan. Padang', '0751 32371', 'RS Rujukan Kemenkes', -0.94371400, 100.36750800),
(248, 'Apotek Tk III Lumajang', 'Jawa Timur', 'Jl. Kapten Kyai Ilyas No.7, Tompokersan, Kec. Lumajang, Kabupaten Lumajang, Jawa Timur 67316', '(0334) 881646', 'RS Rujukan Polri', -8.13317000, 113.22175400),
(249, 'Apotek Tk III Banjarmasin', 'Kalimantan Selatan', 'Jl. Ahmad Yani Kebun Bunga, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70237', '0813-5022-0436', 'RS Rujukan Polri', -3.32909500, 114.61112400),
(250, 'Apotek RSU Banyumas', 'Jawa Tengah', 'Jl. Rumah Sakit No. 1, Banyumas ', '0281 796031', 'RS Rujukan Provinsi Jawa Tengah', -7.52910800, 109.29268700),
(251, 'Apotek RSU Panglima Sebaya', 'Kalimantan Timur', 'Jl. Kusuma Bangsa Km.5 Tanah Grogot, Kab.Paser', '(0543) 24563', 'RS Rujukan Kemenkes', -1.87345500, 116.17867400),
(252, 'Apotek Tk III Bondowoso', 'Jawa Timur', 'Jalan Jend. Pol. S. Judhodiharjo No.12, Purbosari, Blindungan, Bondowoso, Bondowoso Regency, East Java 68219', '(0332) 433431', 'RS Rujukan Polri', -7.91082500, 113.82215700),
(253, 'Apotek RSUD Bendan Kota Pekalongan', 'Jawa Tengah', 'Jl. Sriwijaya No.2, Bendan, Kec. Pekalongan Bar., Kota Pekalongan, Jawa Tengah 51119 ', '(0285) 437222', 'RS Rujukan Provinsi Jawa Tengah', -6.89153100, 109.66146600),
(254, 'Apotek RSUD Pasar Minggu', 'DKI Jakarta', 'Jl. TB. Simatupang No.1 Kel.Ragunan, Pasar Minggu, Jakarta Selatan', '(021) 29059999', 'RS Rujukan Kemenkes', -6.29383500, 106.82018600),
(255, 'Apotek RS Paru Dr. Ario Wirawan', 'Jawa Tengah', 'Jl. Hasanudin No.806,Salatiga', '(0298) 326130 , (0298) 322703', 'RS Rujukan Kemenkes', -7.34898000, 110.48947100);
INSERT INTO `apotek` (`id`, `nama`, `provinsi`, `alamat`, `telepon`, `keterangan`, `latitude`, `longitude`) VALUES
(256, 'Apotek Rumkit Tk. IV/JA Dimara Manokwari', 'Papua Barat', 'Jl. Brawijaya, Manokwari Timur, Manokwari Barat, Manokwari Tim., Manokwari Bar., Kabupaten Manokwari, Papua Barat. 98312', '', 'RS Rujukan TNI', -0.86320300, 134.07683800),
(257, 'Apotek RSAU-3 DR. M. SUTOMO LANUD SPO', 'Kalimantan Barat', 'Limbung, Sungai Raya, Limbung, Kec. Sungai Raya, Kabupaten Kubu Raya, Kalimantan Barat 78391', '', 'RS Rujukan TNI', -0.14434800, 109.41094600),
(258, 'Apotek Rumkit Tk. IV/Salatiga', 'Jawa Tengah', 'Jl. DR. Muwardi No.50, Kutowinangun Kidul, Kec. Tingkir, Kota Salatiga, Jawa Tengah 50711', '(0298) 326045', 'RS Rujukan TNI', -7.33119500, 110.51055900),
(259, 'Apotek RSU Raden Mattaher Jambi', 'Jambi', 'Jl. Letjen. Soeprapto No. 31, Telanaipura, Jambi', '(0741) 61692 , 61694 , 63394 , 62364', 'RS Rujukan Kemenkes', -1.60346200, 103.58003500),
(260, 'Apotek RSU Puri Husada', 'Riau', 'Jl. Veteran No. 52, Hilir Tembilahan', '(0768) 24563', 'RS Rujukan Kemenkes', -0.32295400, 103.16315400),
(261, 'Apotek Balai Teknik Kesehatan Lingkungan dan Pengendalian Jakarta', 'DKI Jakarta', 'Jl. Balai Rakyat No.2, RT.12/RW.1, Cakung Tim., Kec. Cakung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13910', '(021) 46824247', 'Laboratorium Pemeriksaan', -6.18306000, 106.95887400),
(262, 'Apotek Rumkit Tk. IV/dr. Soemantri Pare-Pare', 'Sulawesi Selatan', 'Jl. Karaeng Burane No.24, Ujung Bulu, Kec. Ujung, Kota Pare-Pare, Sulawesi Selatan 91113', '(0421) 21240', 'RS Rujukan TNI', -4.01287800, 119.62472100),
(263, 'Apotek RSUD Komodo Labuan Bajo', 'Nusa Tenggara Timur', 'Jl. Raya Labuan Banjo, Desa Golo Bilas, Kec.Komodo', '81337055250', 'RS Rujukan Kemenkes', -8.54126200, 119.89626600),
(264, 'Apotek RSAU-4 LANUD DHOMBER BALIKPAPAN', 'Kalimantan Timur', 'Jl. Marsma Iswahyudi RT. 41, Sepinggan, Balikpapan Selatan, Sepinggan, Kecamatan Balikpapan Selatan, Kota Balikpapan, Kalimantan Timur 76116', '(0542) 765554', 'RS Rujukan TNI', -1.26013100, 116.91491800),
(265, 'Apotek RSUD Cilacap', 'Jawa Tengah', 'Cilacap, Tambaksari, Sidanegara, Kec. Cilacap Tengah, Kabupaten Cilacap, Jawa Tengah 53212 ', '(0282) 533010', 'RS Rujukan Provinsi Jawa Tengah', -7.71704200, 109.01533700),
(266, 'Apotek RSUD Jend. Ahmad Yani Metro', 'Lampung', 'Jl. Jend. A.Yani No.13 Kota Metro Lampung', '(0725) 41820', 'RS Rujukan Kemenkes', -5.11572400, 105.31013000),
(267, 'Apotek RS Aisyiyah Ponorogo', 'Jawa Timur', '', '(0352) 461560', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.86843000, 111.47163100),
(268, 'Apotek RSU Dr. Saiful Anwar', 'Jawa Timur', 'Jl. Jaksa Agung Suprapto No. 2, Malang', '0341 362101', 'RS Rujukan Kemenkes', -7.97252300, 112.63155900),
(269, 'Apotek RSU Sanjiwani Gianyar', 'Bali', 'Jl. Ciung Wenara No. 2, Gianyar', '(0361) 943049', 'RS Rujukan Kemenkes', -8.53724700, 115.32254000),
(270, 'Apotek Rumkit Tk. IV /Bengkulu', 'Bengkulu', 'Jl. Zainul Arifin No.27, Tim. Indah, Kec. Singaran Pati, Kota Bengkulu, Bengkulu 38225', '', 'RS Rujukan TNI', -3.81751700, 102.30937900),
(271, 'Apotek RSU Bhayangkara Semarang', 'Jawa Tengah', 'Jl. Majapahit No.140, Gayamsari, Kec. Gayamsari, Kota Semarang, Jawa Tengah 50248 ', '(0298) 326045', 'RS Rujukan Provinsi Jawa Tengah', -7.00022900, 110.44624700),
(272, 'Apotek RS Dr Soedono', 'Jawa Timur', 'Jl. Dr. Sutomo No.59, Kartoharjo, Kec. Kartoharjo, Kota Madiun, Jawa Timur 63117', '(0351) 464325 , 464326 , 454567', 'RS Rujukan Kemenkes', -7.62640500, 111.52402600),
(273, 'Apotek RSU Undata Palu', 'Sulawesi Tengah', 'Jl. R.E. Martadinata, Tondo, Kec. Mantikulore', '0451 490 8020', 'RS Rujukan Kemenkes', -0.85781300, 119.88404600),
(274, 'Apotek Tk III Setukpa', 'Jawa Barat', 'Jl Aminta Azmali Trip No.59A, Sriwidari, Kec. Gunungpuyuh, Kota Sukabumi, Jawa Barat 43121', '(0266) 226262', 'RS Rujukan Polri', -6.91232600, 106.92246700),
(275, 'Apotek RUMKITBAN SIDOARJO', 'Jawa Timur', 'Jl. Dr. Soetomo No.2, Gajah Timur, Magersari, Kec. Sidoarjo, Kabupaten Sidoarjo, Jawa Timur 61212', '(031) 8964610', 'RS Rujukan TNI', -7.44458900, 112.71656400),
(276, 'Apotek Tk. III Pusdik Brimob Watukosek', 'Jawa Timur', 'Jl. Raya Watukosek, Watukosek, Gempol, Wates, Watukosek, Kec. Gempol, Pasuruan, Jawa Timur 67155', '(0343) 856965', 'RS Rujukan Polri', -7.56832800, 112.65966400),
(277, 'Apotek RSUD H. Boejasin Pelaihari', 'Kalimantan Selatan', 'Jl. Hadji Boejasin No.68A, Angsau, Kab. Tanah Laut', '(0512) 21083 , 22009', 'RS Rujukan Kemenkes', -3.46120200, 114.80087800),
(278, 'Apotek RSAL-3 FX. SOEHARDJO', 'Maluku', 'Halong, Baguala, Kota Ambon, Maluku', '', 'RS Rujukan TNI', -3.65597200, 128.22343000),
(279, 'Apotek RSUD Bagas Waras Klaten', 'Jawa Tengah', 'RT.04/RW.09, Buntalan, Kec. Klaten Tengah, Kabupaten Klaten, Jawa Tengah ', '(0272) 3359666', 'RS Rujukan Provinsi Jawa Tengah', -7.72823500, 110.60552100),
(280, 'Apotek RSUD Setjonegoro Wonosobo', 'Jawa Tengah', 'RSUD Jl. Rumah Sakit No. 1, Wonosobo Wonosobo Bar. Kec. Wonosobo, Stasiun, Wonosobo Bar., Kec. Wonosobo, Kabupaten Wonosobo, Jawa Tengah 56311 ', '(0286) 321091', 'RS Rujukan Provinsi Jawa Tengah', -7.36326700, 109.89847200),
(281, 'Apotek RS Fastabiq Sehat PKU Muhammadiyah Pati', 'Jawa Tengah', '', '4199008', 'RS Rujukan Muhammadiyah & Aisyiyah', -6.72904200, 111.05156200),
(282, 'Apotek RSAL-2. MARINIR CILANDAK', 'DKI Jakarta', 'Jl. Raya Cilandak Kko, RT.3/RW.5, Cilandak Tim., Kec. Ps. Minggu, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12560', '(021) 7805296', 'RS Rujukan TNI', -6.30474900, 106.81042900),
(283, 'Apotek RSUD dr. R. Soedjati Grobogan', 'Jawa Tengah', 'Jl. D. I. Panjaitan No.36, Ngabean, Purwodadi, Kec. Purwodadi, Kabupaten Grobogan, Jawa Tengah 58111 ', '(0292) 421004', 'RS Rujukan Provinsi Jawa Tengah', -7.08469100, 110.92015200),
(284, 'Apotek RSU Dr. Kariadi Semarang', 'Jawa Tengah', 'Jl. Dr.Sutomo No. 16, Semarang ', '(024) 8413476', 'RS Rujukan Provinsi Jawa Tengah', -6.99418100, 110.40748800),
(285, 'Apotek Rumkit Tk. IV/Tegal', 'Jawa Tengah', 'Jl. Raya Pagongan Jl. RS DKT Pagongan, Jetis, Lemahduwur, Kec. Adiwerna, Tegal, Jawa Tengah 52125', '(0283) 351420', 'RS Rujukan TNI', -6.90470400, 109.13239500),
(286, 'Apotek RSUD R. Syamsudin, SH Kota Sukabumi', 'Jawa Barat', 'Jl. Rumah Sakit No.1 Kota Sukabumi', '(0266) 225180 , 225181', 'RS Rujukan Kemenkes', -6.91542600, 106.93514600),
(287, 'Apotek RSUD K.R.M.T Wongsonegoro Kota Semarang', 'Jawa Tengah', 'Jl. Fatmawati No.1 Semarang 50272 ', '(024) 6711500', 'RS Rujukan Provinsi Jawa Tengah', -7.03331700, 110.46690300),
(288, 'Apotek RSUD Tidar Kota', 'Jawa Tengah', 'Jl. Tidar No. 30A, Kota Magelang', '(0293) 362260 , 362463', 'RS Rujukan Kemenkes', -7.48550100, 110.21824000),
(289, 'Apotek RSUD Muntilan Kab. Magelang', 'Jawa Tengah', 'Kartini No.13, Balemulyo, Muntilan, Kec. Muntilan, Magelang, Jawa Tengah 56411 ', '(0293) 587004', 'RS Rujukan Provinsi Jawa Tengah', -7.58298500, 110.29105300),
(290, 'Apotek RSU Dr. H. Soewondo', 'Jawa Tengah', 'Jl. Laut 21, Kendal', '0294 381433', 'RS Rujukan Kemenkes', -6.91781900, 110.20620400),
(291, 'Apotek RST Slamet Riyadi Surakarta', 'Jawa Tengah', 'Jl. Slamet Riyadi No No.321Kvi, Purwosari, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57148 ', '(0271) 714656', 'RS Rujukan Provinsi Jawa Tengah', -7.56583600, 110.80524000),
(292, 'Apotek RSU Dr. Wahidin Sudirohusodo', 'Sulawesi Selatan', 'Jl. Perintis Kemerdekaan KM 11, Makassar 90245', '(0411) 584677', 'RS Rujukan Kemenkes', -5.13499000, 119.49360300),
(293, 'Apotek RSPAD Gatot Subroto', 'DKI Jakarta', 'Jl. Dr.A. Rahman Saleh No. 24, Jakpus', '(021) 3440693', 'RS Rujukan Kemenkes', -6.17657500, 106.83715100),
(294, 'Apotek Rumkit Tk. IV/Palangkaraya', 'Kalimantan Tengah', 'Jl. Ahmad Yani No.22, Langkai, Kec. Pahandut, Kota Palangka Raya, Kalimantan Tengah 73111', '', 'RS Rujukan TNI', -2.20934900, 113.93130700),
(295, 'Apotek Rumkit Tk. II/dr.Soedjono Magelang', 'Jawa Tengah', 'Jl. Jend. Urip Sumoharjo No.48, Wates, Kec. Magelang Utara, Kota Magelang, Jawa Tengah 56113', '(0293) 363061', 'RS Rujukan TNI', -7.46779800, 110.22608400),
(296, 'Apotek Rumkit Tk. II/Soepraoen Malang', 'Jawa Timur', 'Jl. S. Supriadi No.22, Sukun, Kec. Sukun, Kota Malang, Jawa Timur 65112', '(0341) 325112', 'RS Rujukan TNI', -7.98984700, 112.62048100),
(297, 'Apotek Tk.III Lampung', 'Lampung', 'Jl. Pramuka No.88, Rajabasa, Kec. Rajabasa, Kota Bandar Lampung, Lampung', '(0721) 706402', 'RS Rujukan Polri', -5.37431000, 105.22423800),
(298, 'Apotek Rumkit Tk. IV/Singaraja', 'Bali', 'Jl. Ngurah Rai No.70, Banjar Jawa, Kec. Buleleng, Kabupaten Buleleng, Bali 81113', '', 'RS Rujukan TNI', -8.11377100, 115.09193600),
(299, 'Apotek RSAU-3 DR. HASAN TOTO ATS', 'Jawa Barat', 'Jalan Sarjio No. 1, Atang Senjaya, Kemang, Atang Senjaya, Kec. Kemang, Bogor, Jawa Barat 16310', '(0251) 7535976', 'RS Rujukan TNI', -6.54418200, 106.76269300),
(300, 'Apotek RSUD dr. M Ashari Pemalang', 'Jawa Tengah', 'Jl. Gatot Subroto No.41, Bojongbata, Kec. Pemalang, Kabupaten Pemalang, Jawa Tengah 52319 ', '(0284) 321614', 'RS Rujukan Provinsi Jawa Tengah', -6.91064800, 109.38232700),
(301, 'Apotek RSU Abdul Moeloek', 'Lampung', 'Jl. Dr. Rivai No. 6, Tj. Karang, Lampung 35112', '(0721) 703312 , 702455', 'RS Rujukan Kemenkes', -5.40276400, 105.25866400),
(302, 'Apotek Rumkit Tk.IV/Bukit Tinggi', 'Sumatera Barat', 'Jl. Sudirman, Birugo, Kec. Aur Birugo Tigo Baleh, Kota Bukittinggi, Sumatera Barat 26181', '(0752) 8100746', 'RS Rujukan TNI', -0.31098300, 100.37361500),
(303, 'Apotek RS Universitas Airlangga', 'Jawa Timur', 'Kampus C Universitas Airlangga, Mulyorejo, Surabaya', '(031) 5916290 , 5916287 , 58208290', 'RS Rujukan Kemenkes', -7.27020800, 112.78611400),
(304, 'Apotek RS Muhammadiyah Palembang', 'Sumatera Selatan', '', '(0711) 511446', 'RS Rujukan Muhammadiyah & Aisyiyah', -2.99614500, 104.77657400),
(305, 'Apotek RSAU-4 LANUD SAMRATULANGI (SRI)', 'Sulawesi Utara', 'Jl. A.A Maramis Paniki Bawah, Mapanget, Manado City, North Sulawesi', '', 'RS Rujukan TNI', 1.53558400, 124.92200400),
(306, 'Apotek RSAL-3 ILYAS', 'Kalimantan Utara', 'Jl. RE Martadinata No.29, Pamusian, Tarakan Tengah, Kota Tarakan, Kalimantan Utara', '', 'RS Rujukan TNI', 3.30836600, 117.60076300),
(307, 'Apotek RSU Tarutung', 'Sumatera Utara', 'Jl. Agus Salim No.1 Tarutung, Kab. Tapanuli Utara', '(0633) 21303 , 20450', 'RS Rujukan Kemenkes', 2.02688400, 98.96071200),
(308, 'Apotek Rumkit Tk II Banda Aceh', 'Aceh', 'Jl. T. Angkasa Bendahara, Kuta Alam, Kec. Kuta Alam, Kota Banda Aceh, Aceh 24415', '(0651) 24712', 'RS Rujukan TNI', 5.55479200, 95.32454400),
(309, 'Apotek Rumkit Tk. IV/Pematang Siantar', 'Sumatera Utara', 'Jl. Gunung Simanuk Manuk No.6, Timbang Galung, Kec. Siantar Bar., Kota Pematang Siantar, Sumatera Utara 21143', '', 'RS Rujukan TNI', 2.95139200, 99.05716300),
(310, 'Apotek RSU Prof. Dr. H. Aloei Saboe', 'Gorontalo', 'Jl. Prof. Dr. Aloe Saboe, Wongkaditi, Kota Utara, Kota Gorontalo, Gorontalo 96115', '', 'RS Rujukan Kemenkes', 0.55544700, 123.08401900),
(311, 'Apotek RSAU-3 DR. SUKIRMAN LANUD RSN', 'Riau', 'Jl. Adi Sucipto, Sidomulyo Tim., Kec. Marpoyan Damai, Kota Pekanbaru, Riau 28289', '', 'RS Rujukan TNI', 0.46352300, 101.43012200),
(312, 'Apotek Rumkit Tk. IV/Sintang', 'Kalimantan Barat', 'Jalan MT. Haryono KM. 03, Kapuas Kanan Hulu, Kecamatan Sintang, Kapuas Kanan Hulu, Kec. Sintang, Kabupaten Sintang, Kalimantan Barat 78613', '0823-5207-8510', 'RS Rujukan TNI', 0.06332300, 111.47733900),
(313, 'Apotek Tk III Pekanbaru', 'Riau', 'Jalan RA Kartini No.14, Simpang Empat, Pekanbaru Kota, Simpang Empat, Kec. Pekanbaru Kota, Kota Pekanbaru, Riau 28156', '(0761) 47691', 'RS Rujukan Polri', 0.52050200, 101.44899400),
(314, 'Apotek RSU Tanjung Selor', 'Kalimantan Utara', 'Jl. Cendrawasih, Tanjung Selor Hilir, Kec.Tanjung Selor, Kab.Bulungan', '(0552) 21118', 'RS Rujukan Kemenkes', 2.83032600, 117.38090000),
(315, 'Apotek RSU H. Adam Malik Medan', 'Sumatera Utara', 'Jl. Bunga Lau No. 17', '(061) 8360051', 'RS Rujukan Kemenkes', 3.51845300, 98.60862400),
(316, 'Apotek RSU Dumai', 'Riau', 'Jl. Tanjung Jati No.4, Dumai', '(0765) 440992', 'RS Rujukan Kemenkes', 1.67843900, 101.45948700),
(317, 'Apotek RSU Dr Sam Ratulangi', 'Sulawesi Utara', 'Jl. Suprapto No.123, Luaan, Tondano Tim., Kabupaten Minahasa, Sulawesi Utara', '(0431) 321171', 'RS Rujukan Kemenkes', 1.30959200, 124.91656300),
(318, 'Apotek RSAL-4 LILIPORY', 'Aceh', 'Jl. Teuku Cik Ditiro, Kuta Ateueh, Sukakarya, Kota Sabang, Aceh 24411', '', 'RS Rujukan TNI', 5.89430800, 95.32552600),
(319, 'Apotek Rumkit Tk. II/RW. Mongisidi/Manado', 'Sulawesi Utara', 'Kota Manado, Teling Bawah, Kec. Wenang, Kota Manado, Sulawesi Utara', '', 'RS Rujukan TNI', 1.47488200, 124.84230900),
(320, 'Apotek Rumkit Tk. IV/Ternate', 'Maluku Utara', 'Jl. A.I.S Nasution, Santiong, Ternate Tengah, Kota Ternate, Maluku Utara', '(0921) 3128434', 'RS Rujukan TNI', 0.78849600, 127.38723100),
(321, 'Apotek RSU Dr Abdul Azis Singkawang', 'Kalimantan Barat', 'Jl. Dr. Soetomo No. 28, Pasiran - Singkawang', '(0562) 631798', 'RS Rujukan Kemenkes', 0.89543500, 108.97270700),
(322, 'Apotek RSU Kabanjahe', 'Sumatera Utara', 'Jl. Selamat Ketaren, Lau Cimba, Kabanjahe, Kabupaten Karo, Sumatera Utara 22111', '(0628) 20012', 'RS Rujukan Kemenkes', 3.09792200, 98.49146900),
(323, 'Apotek RSU Kota Tarakan', 'Kalimantan Utara', 'Jl. Pulau Irian No.1, Kp. Satu Skip, Tarakan Tengah, Kota Tarakan', '(0551)21166 , Tim Satgas Pengaduan (0812 5409 118)', 'RS Rujukan Kemenkes', 3.31821900, 117.60506400),
(324, 'Apotek RSU Ratatotok - Buyat', 'Sulawesi Utara', 'JL. J.W. Lasut Ratatotok II Kecamatan Ratatotok', '(0431) 321171', 'RS Rujukan Kemenkes', 0.87007000, 124.69978000),
(325, 'Apotek RSUD Provinsi Kep. Riau Tanjungpinang', 'Kepulauan Riau', 'Jl. WR Supratman No. 100, KM 8 Tanjungpinang', '(0771) 7335203', 'RS Rujukan Kemenkes', 0.92357100, 104.50028100),
(326, 'Apotek Tk II Medan', 'Sumatera Utara', 'Jl. K.H. Wahid Hasyim No.1, Merdeka, Kec. Medan Baru, Kota Medan, Sumatera Utara 20222', '(061) 8215990', 'RS Rujukan Polri', 3.57325500, 98.65847500),
(327, 'Apotek RSU Dr. Zainoel Abidin Banda Aceh', 'Aceh', 'Jl. Tgk. Daud Beureuh No. 108, Banda Aceh', '(0651) 34562', 'RS Rujukan Kemenkes', 5.56378300, 95.33760000),
(328, 'Apotek Tk.III Manado', 'Sulawesi Utara', 'Jln Samrat no depan Rumah Sakit Bhayangkara, Karombasan Utara, Kec. Wanea, Kota Manado, Sulawesi Utara', '(0431) 840455', 'RS Rujukan Polri', 1.45538000, 124.83706100),
(329, 'Apotek RSU Padang Sidempuan', 'Sumatera Utara', 'Jl. Dr. FL Tobing, Padang Sidempuan', '0634 21780 Fax: 0634 21251', 'RS Rujukan Kemenkes', 1.37195600, 99.27165700),
(330, 'Apotek RSU Taman Husada Bontang', 'Kalimantan Timur', 'Jl. S. Parman No. 01, Kel.Belimbing, Bontang 75331', '(0548) 22111 , (IGD 0548) 23000', 'RS Rujukan Kemenkes', 0.14261900, 117.44780600),
(331, 'Apotek RSAL-3 KOMANG MAKES', 'Sumatera Utara', 'Jl. Bengkalis No.1, Belawan I, Medan Kota Belawan, Kota Medan, Sumatera Utara 20411', '(061) 6941741', 'RS Rujukan TNI', 3.78459900, 98.68593900),
(332, 'Apotek RSU Cut Meutia Lhokseumawe', 'Aceh', 'Jl. Banda Aceh Medan KM 5 Buket Rata, Lhokseumawe', '(0645) 46334', 'RS Rujukan Kemenkes', 4.46904400, 97.96984500),
(333, 'Apotek RSBP Batam', 'Kepulauan Riau', 'Jl. Dr. Ciptomangunkusumo, Sekupang Batam', '(0778) 322046 , 322121', 'RS Rujukan Kemenkes', 1.12991400, 103.93171000),
(334, 'Apotek Tk III Tebing Tinggi', 'Sumatera Utara', 'Jl. Pahlawan No.17, Rambung, Kec. Tebing Tinggi Kota, Kota Tebing Tinggi, Sumatera Utara 20631', '(0621) 326701', 'RS Rujukan Polri', 3.32367200, 99.16154000),
(335, 'Apotek RSAU-4 DR. ABDUL MALIK LANUD SWO', 'Sumatera Utara', 'Jl. Imam Bonjol No.50, Suka Damai, Kec. Medan Polonia, Kota Medan, Sumatera Utara 20157', '(061) 4572323', 'RS Rujukan TNI', 3.57195300, 98.67765500),
(336, 'Apotek RSAL-3 WAHYU SLAMET', 'Sulawesi Utara', 'Jalan Yos Sudarso No.26, Bitung Tengah, Maesa, Kota Bitung, Sulawesi Utara', '', 'RS Rujukan TNI', 1.44530500, 125.18595000),
(337, 'Apotek RSAU-3 DR. YUNIATI WISMA RANAI', 'Kep. Riau', 'Kawasan Bandara AU, Ranai Kota, Bunguran Tim., Kabupaten Natuna, Kepulauan Riau 29783', '', 'RS Rujukan TNI', 3.91498700, 108.37937000),
(338, 'Apotek RSU Prof. DR. RD Kandou', 'Sulawesi Utara', 'Jl. Raya Tanawangko No.56, Malalayang Satu Barat, Kec. Malalayang, Kota Manado, Sulawesi Utara', '(0431) 8383058', 'RS Rujukan Kemenkes', 1.45354200, 124.80817700),
(339, 'Apotek Rumkit Tk. IV/Padang Sidempuan', 'Sumatera Utara', 'Jl. Padang Sidempuan, Losung Batu, Padangsidimpuan Utara, Kota Padang Sidempuan, Sumatera Utara 22733', '', 'RS Rujukan TNI', 1.39654800, 99.24996900),
(340, 'Apotek RSU Arifin Ahmad Pekan Baru', 'Riau', 'Jl. Diponegoro No. 2, Pekanbaru', '(0761) 23418 , 21618 , 21657', 'RS Rujukan Kemenkes', 0.52338900, 101.45217800),
(341, 'Apotek RSUD Muhammad Sani (Kab. Karimun)', 'Kepulauan Riau', 'Jl. Soekarno - Hatta No. 1 Tanjung Balai Karimun', '(0777) 327808', 'RS Rujukan Kemenkes', 1.01359400, 103.41372900),
(342, 'Apotek Rumkit Tk. IV LHokseumawe', 'Aceh', 'JL. Samudera, Hagu Sel., Banda Sakti, Kota Lhokseumawe, Aceh', '(0645) 40300', 'RS Rujukan TNI', 5.18252400, 97.14972900),
(343, 'Apotek RSAL-2 MIDIATO SURYATANI', 'Kepulauan Riau', 'Jl. Ciptadi No.1, Tanjungpinang Kota, Kota Tanjung Pinang, Kepulauan Riau', '(0771) 21428', 'RS Rujukan TNI', 0.92611600, 104.44097100),
(344, 'Apotek Rumkit Tk.IV/Binjai', 'Sumatera Utara', 'Jl. Bandung, Rambung Barat no 4 Binjai Selatan, Kota Binjai, Sumatera Utara 20735', '(061) 8827705', 'RS Rujukan TNI', 3.59814400, 98.48746600),
(345, 'Apotek Rumkit TK IV Meulaboh', 'Aceh', 'Suwak Indrapuri, Johan Pahlawan, Kabupaten Aceh Barat, Aceh 23681', '', 'RS Rujukan TNI', 4.13210300, 96.13182000),
(346, 'Apotek RS Mokopido Toli-Toli', 'Sulawesi Tengah', 'Jl. Lanoni No.37 Kel Baru Kec.Baolan, kab.Toli-Toli', '(0453) 21301', 'RS Rujukan Kemenkes', 1.03591100, 120.82277500),
(347, 'Apotek RSU Chasan Basoeri Ternate', 'Maluku Utara', 'Jl. Cempaka Kel. Tanah Tinggi Kota Ternate', '(0921) 3121281', 'RS Rujukan Kemenkes', 0.78209500, 127.37577700),
(348, 'Apotek RSUD Ade Mohammad Djoen Sintang', 'Kalimantan Barat', 'Jl. YC Oevang Oeray No.1 Sintang Kota', '(0565) 21002', 'RS Rujukan Kemenkes', 0.07850300, 111.49601900),
(349, 'Apotek RSUD Dr. Djasamen Saragih', 'Sumatera Utara', 'Jl. Sutomo No. 230, Pematang Siantar', '(0622) 22959', 'RS Rujukan Kemenkes', 2.95820600, 99.06974500),
(350, 'Apotek RSUD Kota Kotamobagu', 'Sulawesi Utara', 'Kelurahan Pobundayan Kecamatan Kotamobagu Selatan', '(0435) 822816', 'RS Rujukan Kemenkes', 0.70820500, 124.30727200),
(351, 'Apotek Rumkit Tk. IV/Pekan Baru', 'Riau', 'Jl. Kesehatan No.2, Kp. Bandar, Kec. Senapelan, Kota Pekanbaru, Riau 28155', '(0761) 22426', 'RS Rujukan TNI', 0.53646200, 101.44108500),
(352, 'Apotek RSUD Embung Fatimah', 'Kepulauan Riau', 'Jl. R. Soeprapto. Blok D 1 - 9 Batu Aji Kota Batam', '(0778) 364446', 'RS Rujukan Kemenkes', 1.05062800, 103.96781100),
(353, 'Apotek Rumkit Tk. IV/Singkawang', 'Kalimantan Barat', 'Jl. R.A. Kartini No.47, Sekip Lama, Singkawang Tengah, Kota Singkawang, Kalimantan Barat 79113', '0812-8589-6364', 'RS Rujukan TNI', 0.91547200, 108.99250100),
(354, 'Apotek Rumkit Tk. II/ Putri Hijau Medan', 'Sumatera Utara', 'Jl. Putri Hijau No.17, Kesawan, Kec. Medan Bar., Kota Medan, Sumatera Utara 20111', '(061) 4553900', 'RS Rujukan TNI', 3.59972200, 98.67269700);

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `nama` varchar(75) NOT NULL,
  `spesialis` int(11) NOT NULL,
  `status` enum('on','off','inc') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `userid`, `nama`, `spesialis`, `status`) VALUES
(1, 'Ucad0c3763203e342246a4d39023b4b31', 'Faraaz', 10, 'on'),
(2, 'U311bb2bd63a82e38f2c7ef03de238b8b', 'Felix', 8, 'on'),
(3, 'Uf0b55595ab4e72a046840d3684ad6bfc', 'Yunardo', 11, 'on'),
(4, 'U2fd377c8f20bca424eebbc39390eac60', 'Maulana', 6, 'on'),
(5, 'U927b6d39577c1921a504c2577c08843f', 'Hani', 2, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `nama`) VALUES
(1, 'alergi'),
(2, 'Badan terasa lelah'),
(3, 'Batuk'),
(4, 'Batuk Berdahak'),
(5, 'Batuk Darah'),
(6, 'batuk kering'),
(7, 'Batuk selama 3 minggu atau lebih'),
(8, 'Berat Badan Turun'),
(9, 'berkurangnya massa otot'),
(10, 'bersendawa'),
(11, 'Bersin'),
(12, 'Bibir Membengkak'),
(13, 'Biduran'),
(14, 'buang air kecil tersendat'),
(15, 'Cepat lelah'),
(16, 'Dehidrasi'),
(17, 'demam'),
(18, 'Demam Ringan'),
(19, 'Demam Tinggi'),
(20, 'Detak Jantung tidak teratur'),
(21, 'diabetes'),
(22, 'Diare'),
(23, 'Diare berbau ikan'),
(24, 'Diare Cair'),
(25, 'Diare secara tiba tiba'),
(26, 'Dingin di kaki'),
(27, 'Dingin di tangan'),
(28, 'gagal jantung'),
(29, 'Gangguan Pada Kesadaran'),
(30, 'Gangguan Pencernaan'),
(31, 'Hidung Berair'),
(32, 'Hidung Meler'),
(33, 'Hidung Tersumbat'),
(34, 'hilang indra perasa'),
(36, 'Hilang pendengaran'),
(37, 'Hiportemia'),
(38, 'jantung berdebar'),
(39, 'Jumlah Urine Berkurang'),
(40, 'Jumlah urine sedikit'),
(41, 'karam Perut'),
(43, 'kepala terasa berat'),
(44, 'keram perut'),
(45, 'Keringat Malam'),
(46, 'kesulitan bernapas'),
(47, 'kliyengan'),
(48, 'kolesterol'),
(50, 'Kulit Gatal'),
(51, 'Kulit Kering'),
(52, 'Kulit Pucat'),
(53, 'leher kaku'),
(54, 'leher terasa kaku'),
(55, 'lelah'),
(56, 'lemah jantung'),
(57, 'Lemas'),
(58, 'Lesu'),
(59, 'letih'),
(60, 'Lingkaran Hitam Mata'),
(61, 'Linglung'),
(62, 'luka sulit sembuh'),
(63, 'maag'),
(64, 'Mata Berair'),
(65, 'Mata Gatal'),
(66, 'mata merah'),
(67, 'Mengalami Dehidrasi'),
(68, 'Menggigil'),
(69, 'Mual'),
(70, 'muntah'),
(71, 'Mudah Lelah'),
(72, 'Muncul Benjolan Di leher'),
(73, 'Muncul Ruam'),
(74, 'Muncul Ruam Bentol Gatal'),
(75, 'Munculnya Lapisan abu yang menutupi amandel'),
(76, 'Muntah'),
(77, 'Nafas Pendek'),
(80, 'nyeri dada'),
(81, 'Nyeri Dada saat batuk'),
(82, 'Nyeri Dada saat bernafas'),
(83, 'Nyeri Kepala Berat'),
(84, 'Nyeri Otot'),
(85, 'Nyeri Pada Bagian Belakang Mata'),
(86, 'Nyeri Perut Kanan Atas'),
(87, 'Nyeri Sendi'),
(88, 'Nyeri Sendi'),
(89, 'nyeri tenggorokan'),
(90, 'Nyeri tulang'),
(91, 'panas'),
(92, 'pandangan kabur'),
(93, 'pegal leher'),
(94, 'Pegal Linu'),
(95, 'Pegal pegal'),
(96, 'Pembengkakan kelenjar getah bening'),
(97, 'Pendarahan Hidung'),
(98, 'penglihatan tidak jelas'),
(99, 'Pening'),
(100, 'Penurunan kesadaran'),
(102, 'Perut bagian bawah nyeri'),
(103, 'Perut kembung'),
(104, 'Perut Mulas'),
(105, 'Pilek'),
(106, 'Pusing'),
(107, 'Putih Mata Menguning'),
(108, 'Radang di saluran pencernaan'),
(109, 'Rasa panas di perut'),
(110, 'Ruam Bintik Merah Muda'),
(111, 'Ruam kemerahan setelah demam'),
(112, 'Ruam pada Kulit'),
(113, 'sakit di bagian penis untuk pria'),
(114, 'Sakit kepala'),
(116, 'Sakit Perut'),
(117, 'sakit saat buang air kecil'),
(118, 'Sakit tenggorokan'),
(119, 'Sembelit'),
(120, 'serangan jantung'),
(121, 'Sering buang air kecil'),
(122, 'sering kentut'),
(123, 'sering mengalami infeksi (gusi,kulit,vagina,salura'),
(124, 'Sering Mengantuk'),
(125, 'Sering merasa haus'),
(126, 'sering merasa lapar'),
(127, 'Sesak Nafas'),
(128, 'stroke'),
(129, 'Suara Serak'),
(130, 'Suhu Badan Tinggi'),
(131, 'Sulit buang air kecil'),
(132, 'tekanan pada telinga'),
(133, 'telinga berdenging'),
(134, 'Telinga Gatal'),
(135, 'telinga terasa bergema'),
(136, 'Tenggorokan Gatal'),
(137, 'terdapat keton pada urine'),
(138, 'terus menerus ingin buang air kecil pada malam har'),
(140, 'tidak enak perut'),
(141, 'Tidak Nafsu Makan'),
(142, 'Tinja Berdarah'),
(143, 'Tinja Encer'),
(144, 'tinnitus'),
(145, 'Tubuh tidak Segar'),
(146, 'Turunnya berat badan tanpa sebab jelas'),
(147, 'Urine Berdarah'),
(148, 'Urine Gelap'),
(149, 'Urine Pekat'),
(150, 'vertigo'),
(151, 'Wajah Bengkak');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `img` text,
  `keterangan` varchar(500) DEFAULT NULL,
  `sakit1` int(11) DEFAULT NULL,
  `sakit2` int(11) DEFAULT NULL,
  `sakit3` int(11) DEFAULT NULL,
  `sakit4` int(11) DEFAULT NULL,
  `sakit5` int(11) DEFAULT NULL,
  `sakit6` int(11) DEFAULT NULL,
  `sakit7` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama`, `harga`, `img`, `keterangan`, `sakit1`, `sakit2`, `sakit3`, `sakit4`, `sakit5`, `sakit6`, `sakit7`) VALUES
(3, 'Oskadon', 2000, 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//103/MTA-1869780/oskadon_oskadon-tablet-obat-sakit-kepala--10-strip-_full02.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Panadol', 2000, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2017/9/21/0/0_5b3af0ae-fb87-4610-a936-98b9ac695fae_531_567.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Konidin', 2000, 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//112/MTA-7989574/konidin_konidin_obat_batuk_-1_strip-4_tablet-_full02_e0lw42rx.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Chlorpheniramine', 15000, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2018/7/26/0/0_e4337af8-e24d-4e07-9e45-b1b2f14b4680_960_960.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 17, 18, NULL, NULL, NULL, NULL, NULL),
(7, 'Antihistamin', 43000, 'https://www.gooddoctor.co.id/wp-content/uploads/2020/05/antihistamin.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 19, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Sangobion Femine', 12000, 'https://d2qjkwm11akmwu.cloudfront.net/products/images/9948.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 20, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Ferofort', 18000, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2016/3/10/7540678/7540678_216f6614-d153-47b9-b9e2-f92eef2b1ff0.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 20, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Nutrimax Teen Mix', 10000, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2020/5/5/43572811/43572811_33e48dfa-f939-4b78-b0be-4b5349d60e5a_1000_1000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Allopurinol', 5500, 'https://doktersehat.com/wp-content/uploads/2016/05/allopurinol.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 21, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Hydrochlorothiazide', 2500, 'https://d2qjkwm11akmwu.cloudfront.net/products/329104_15-7-2019_9-32-33.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 21, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Natrium Bikarbonat', 20000, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2018/9/8/2823761/2823761_afe362e2-5053-44f0-82bf-f8b70e9584f2_1746_1746.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 21, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Ibuprofen ', 4500, 'https://images.k24klik.com/product/large/apotek_online_k24klik_201812190449334677_ibuprofen-400.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Ketorolac', 25000, 'https://s4.bukalapak.com/img/432980759/large/KETOROLAC_TABLET_10MG__NYERI__LINU.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Guaifenesin', 10500, 'https://s1.bukalapak.com/img/15203655851/s-330-330/data.png.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Bromhexine ', 3000, 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/bisolvon_bisolvon-elixir-bromhexine-hcl-obat-batuk--60-ml-_full02.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Insulin Suntik', 3500, 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/medium//102/MTA-2909369/novorapid_novorapid-flexpen-100-u-ml-terapi-insulin_full04.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 24, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Imunosupresan ', 5000, 'https://hdmall.id/system/image_attachments/images/000/012/097/small/methylprednisolon-dexa-16mg-tab-1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 24, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Metformin', 18300, 'https://s2.bukalapak.com/img/2739745641/large/metformin500mgharga1box_1_scaledjpg_scaled.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 24, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Norit', 16200, 'https://s1.bukalapak.com/img/6348982711/large/Norit_Tablet___obat_diare___kembung___gangguan_lambung.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 25, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Oralit ', 15000, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2019/2/13/22418439/22418439_7934f6cc-9b9a-47fa-88c7-773a75663b66_710_473.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 25, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Loperamide ', 3500, 'https://images.k24klik.com/product/0101d0017.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 25, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Bismuth subsalicylate', 17000, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2017/1/21/732721/732721_db21dcf1-2873-497b-b88e-343d174cc24c', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 25, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Penisilin ', 1100, 'https://e-katalog.lkpp.go.id/public/files/image/produk_gambar/2018/04/11/15234395091002.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 26, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Erythromycin', 17500, 'https://s0.bukalapak.com/img/000653722/large/erythromicin_500_yarindo_13750.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 26, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Rifampicin', 17500, 'https://ecs7.tokopedia.net/img/cache/200-square/VqbcmM/2020/10/7/7005e889-2ba7-452b-8194-d24834787b31.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Isoniazid', 3000, 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2020/10/30/6786886/6786886_51922615-e662-47f2-b3db-c5617f091e9e.jpg.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Pyrazinamide', 4000, 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2020/12/13/8613188/8613188_2c388267-f284-4fba-a626-47402b4ffba7.jpg.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Ethambutol', 6000, 'https://ecs7.tokopedia.net/img/cache/200-square/VqbcmM/2020/11/23/1ceb78bf-f03c-47ec-bc06-e515baaae2ef.jpg.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Paracetamol', 2000, 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2020/4/28/606429897/606429897_d814ee90-bd7c-426e-9659-7c9a7edc5240_1746_1746.jpg.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Adem Sari', 1950, 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/15/1226001/1226001_2bec97af-7e77-4644-87d7-1d24ad48384a.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Diapet', 12000, 'https://d2qjkwm11akmwu.cloudfront.net/products/638089_30-6-2019_22-35-32.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 25, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Incidal-OD', 35200, 'https://d2qjkwm11akmwu.cloudfront.net/products/667605_1-4-2019_17-42-3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Insto', 16200, 'https://d2qjkwm11akmwu.cloudfront.net/products/images/1622.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Bodrex', 6500, 'https://d2qjkwm11akmwu.cloudfront.net/products/604191_16-6-2019_23-15-59.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Bisolvon', 19200, 'https://d2qjkwm11akmwu.cloudfront.net/products/855591_16-6-2020_9-59-58.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Antangin', 1700, 'https://d2qjkwm11akmwu.cloudfront.net/products/images/15066.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Betadine', 5200, 'https://ecs7.tokopedia.net/img/cache/200-square/VqbcmM/2020/8/17/72515992-b8a7-4f72-ab12-94d0a5cdb515.jpg.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Degirol', 12500, 'https://ecs7.tokopedia.net/img/cache/200-square/attachment/2020/4/4/158597219190114/158597219190114_e4480de3-879c-4654-8619-ec1a9999daf6.png.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Decolgen', 2000, 'https://d2qjkwm11akmwu.cloudfront.net/products/467867_7-2-2020_16-22-18.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Paramex', 2500, 'https://d2qjkwm11akmwu.cloudfront.net/products/images/9490.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Promag', 7000, 'https://d2qjkwm11akmwu.cloudfront.net/products/630231_1-4-2019_18-19-5.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'glyceryl guaiacolate', 7400, 'https://d2qjkwm11akmwu.cloudfront.net/products/images/14618.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 8, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Nellco O.B.H Special', 28000, 'https://ecs7.tokopedia.net/img/cache/200-square/VqbcmM/2020/11/21/f9e0f354-76a5-45e5-9249-8b330a869c42.jpg.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Tolak angin', 3000, 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2020/7/25/9209546/9209546_521f4f43-5b9b-45d5-a9b4-631a44e3890e_1728_1728.jpg.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Polysilane', 6200, 'https://d2qjkwm11akmwu.cloudfront.net/products/images/90.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Sanmol', 1700, 'https://d2qjkwm11akmwu.cloudfront.net/products/782475_23-3-2020_14-28-1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Chlorpheniramini', 3000, 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2018/6/8/1593816/1593816_7a262e7a-5fd5-4bb3-a061-74afc3c93e93_640_854.jpg.webp', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 17, 18, 19, NULL, NULL, NULL, NULL),
(50, 'Amoxicillin', 3000, 'https://d2qjkwm11akmwu.cloudfront.net/products/481665_31-3-2020_18-21-37.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 15, 23, NULL, NULL, NULL, NULL, NULL),
(51, 'Dextamine', 18700, 'https://d2qjkwm11akmwu.cloudfront.net/products/images/2270.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 18, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `gejala1` int(11) DEFAULT NULL,
  `gejala2` int(11) DEFAULT NULL,
  `gejala3` int(11) DEFAULT NULL,
  `gejala4` int(11) DEFAULT NULL,
  `gejala5` int(11) DEFAULT NULL,
  `gejala6` int(11) DEFAULT NULL,
  `gejala7` int(11) DEFAULT NULL,
  `gejala8` int(11) DEFAULT NULL,
  `gejala9` int(11) DEFAULT NULL,
  `gejala10` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `nama`, `keterangan`, `gejala1`, `gejala2`, `gejala3`, `gejala4`, `gejala5`, `gejala6`, `gejala7`, `gejala8`, `gejala9`, `gejala10`) VALUES
(1, 'sakit kepala', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 99, 93, 43, 114, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Maag', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 103, 70, 69, 109, 10, 122, 141, NULL, NULL, NULL),
(4, 'jantung koroner', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 80, 128, 84, 120, 21, 28, 56, 48, 127, NULL),
(5, 'Sakit meniere', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 150, 144, 133, 132, 36, 135, 1, 114, 53, NULL),
(6, 'Sakit covid-19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 17, 6, 55, 46, 80, 34, 114, 89, 112, 66),
(7, 'Influenza', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 17, 114, 57, 11, 64, 136, 3, 32, 129, 127),
(8, 'Tuberkulosis ( TBC )', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 7, 5, 80, 8, 55, 17, 45, 68, 147, 141),
(9, 'Cacar air', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 17, 69, 141, 114, 55, 84, 145, 74, NULL, NULL),
(10, 'Campak', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 17, 57, 94, 105, 33, 6, 22, 76, 141, 66),
(11, 'Tifus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 130, 114, 84, 116, 141, 119, 22, 58, 110, 55),
(12, 'DBD ( Demam Berdarah Dengue )', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 19, 83, 69, 76, 141, 84, 85, 97, 111, 96),
(13, 'Hepatitis A', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 71, 22, 69, 76, 141, 148, 86, 17, 87, 107),
(14, 'Kolera', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 24, 23, 25, 44, 69, 76, 124, 55, 16, 60),
(15, 'Pneumonia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 80, 4, 71, 17, 68, 69, 76, 127, 29, 37),
(16, 'Muntaber', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 103, 44, 22, 114, 18, 95, 59, 141, 16, 39),
(17, 'Alergi kacang', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 114, 11, 31, 50, 73, 12, 41, 69, 76, 22),
(18, 'Alergi obat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 112, 65, 64, 50, 31, 12, 33, 127, 17, 151),
(19, 'Alergi telur', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 13, 65, 64, 136, 33, 12, 11, 3, 127, 30),
(20, 'Anemia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 57, 114, 124, 52, 20, 77, 80, 27, 26, 15),
(21, 'Batu ginjal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 121, 117, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Batu kandung kemih', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 117, 147, 149, 131, 102, 14, 113, 138, 148, NULL),
(23, 'Bronkitis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 81, 82, 2, 61, 100, 69, 76, 22, 118, 3),
(24, 'Diabetes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 125, 121, 126, 9, 137, 57, 92, 62, 146, 123),
(25, 'Diare', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 104, 143, 142, 67, 106, 57, 51, 108, NULL, NULL),
(26, 'Difteri', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 118, 129, 3, 105, 17, 68, 57, 72, 75, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `percakapan`
--

CREATE TABLE `percakapan` (
  `id` int(11) NOT NULL,
  `userid_dokter` varchar(50) NOT NULL,
  `userid_pasien` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proses`
--

CREATE TABLE `proses` (
  `userid` varchar(50) NOT NULL,
  `status` varchar(25) NOT NULL,
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `data3` text NOT NULL,
  `data4` text NOT NULL,
  `data5` text NOT NULL,
  `data6` text NOT NULL,
  `data7` text NOT NULL,
  `data8` text NOT NULL,
  `data9` text NOT NULL,
  `data10` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rumahsakit`
--

CREATE TABLE `rumahsakit` (
  `id` int(11) NOT NULL,
  `nama` text,
  `provinsi` varchar(50) DEFAULT NULL,
  `alamat` text,
  `telepon` varchar(50) DEFAULT NULL,
  `keterangan` text,
  `latitude` decimal(15,8) DEFAULT NULL,
  `longitude` decimal(15,8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rumahsakit`
--

INSERT INTO `rumahsakit` (`id`, `nama`, `provinsi`, `alamat`, `telepon`, `keterangan`, `latitude`, `longitude`) VALUES
(1, 'Fakultas Kedokteran Universitas Airlangga', 'Jawa Timur', 'Jl. Mayjen Prof. Dr. Moestopo No.47, Pacar Kembang, Kec. Tambaksari, Kota SBY, Jawa Timur 60132', '(031) 5020251, 5030252, 5030253', 'Laboratorium Pemeriksaan', -7.26515400, 112.75859300),
(2, 'RSPAD Gatot Subroto', 'DKI Jakarta', 'Jl. Dr.A. Rahman Saleh No. 24, Jakpus', '(021) 3440693', 'RS Rujukan TNI', -6.17657500, 106.83715100),
(3, 'TK III Palangkaraya', 'Kalimantan Tengah', 'Jl. Ahmad Yani No.22, Langkai, Kec. Pahandut, Kota Palangka Raya, Kalimantan Tengah 73111', '', 'RS Rujukan Polri', -2.20934300, 113.93124700),
(4, 'Tk III Trijatra Denpasar', 'Bali', 'Jl. Trijata No. 32, Sumerta Kelod 2F, Kelod, Dangin Puri Kangin, Denpasar Timur, Dangin Puri Kangin, Kec. Denpasar Utara, Kota Denpasar, Bali 80233', '(0361) 234670', 'RS Rujukan Polri', -8.64606600, 115.22430800),
(5, 'RSUD Dr. H. Marsidi Judono', 'Bangka Belitung', 'Jl. Jend. Sudirman Aik Rayak Km.5,5 Tanjungpandan Kab. Belitung', '(0719) 22190', 'RS Rujukan Kemenkes', -2.73878500, 107.62948100),
(6, 'RS Paru Dr. M. Goenawan Partowidigdo', 'Jawa Barat', 'Jl. Raya Puncak KM.83, Po Box 28 Cisarua Bogor', '(0251) 8253630 Fax (0251) 8257662', 'RS Rujukan Kemenkes', -6.68781000, 106.93884100),
(7, 'RSU Dr. Soebandi', 'Jawa Timur', 'Jl. Dr. Soebandi No. 124 Kel.Patrang, Jember 68111', '(0331) 487441', 'RS Rujukan Kemenkes', -8.15190000, 113.71502300),
(8, 'RSUD Dr. Agoesdjam Ketapang', 'Kalimantan Barat', 'Jl. D.I Panjaitan No.51 Kel.Sampit, Kec.Delta Pawan Ketapang', '(0534) 3037239', 'RS Rujukan Kemenkes', -1.83250800, 109.96743200),
(9, 'Rumkit Tk. III/Brawijaya/Surabaya', 'Jawa Timur', 'Jl. Kesatriyan No.17, Sawunggaling, Kec. Wonokromo, Kota SBY, Jawa Timur 60242', '(031) 5670650', 'RS Rujukan TNI', -7.29697500, 112.72298300),
(10, 'Tk II Surabaya', 'Jawa Timur', 'Jl. Ahmad Yani No.116, Ketintang, Kec. Gayungan, Kota SBY, Jawa Timur 60231', '(031) 8292227', 'RS Rujukan Polri', -7.32465100, 112.73143000),
(11, 'RSU Sultan Agung Semarang', 'Jawa Tengah', 'Jl. Kaligawe Raya No.KM. 4, Terboyo Kulon, Kec. Genuk, Kota Semarang, Jawa Tengah 50112 ', '(024) 6580019', 'RS Rujukan Provinsi Jawa Tengah', -6.95547900, 110.46132700),
(12, 'RSAU-2 DR. ESNAWAN A.', 'DKI Jakarta', 'Jl. Merpati No.2, RW.11, Halim Perdana Kusumah, Kec. Makasar, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13610', '(021) 8019046', 'RS Rujukan TNI', -6.25679400, 106.89173700),
(13, 'Tk III Brimob Kelapa Dua', 'Jawa Barat', 'Jl. Komjen.Pol.M.Jasin Jl. Klp. Dua Raya, Pasir Gn. Sel., Kec. Cimanggis, Kota Depok, Jawa Barat 16451', '(021) 87704691', 'RS Rujukan Polri', -6.35473900, 106.84931300),
(14, 'RSUD dr. Soediran MS Wonogiri', 'Jawa Tengah', 'Wonogiri, Joho Lor, Giriwono, Kec. Wonogiri, Kabupaten Wonogiri, Jawa Tengah 57613 ', '(0273) 321008', 'RS Rujukan Provinsi Jawa Tengah', -7.80476500, 110.91590900),
(15, 'RSUD Kardinah Tegal', 'Jawa Tengah', 'Jl. AIP KS Tubun No 2, Kota Tegal 52124 ', '(0283) 350377 , 350477', 'RS Rujukan Provinsi Jawa Tengah', -6.88476900, 109.13542700),
(16, 'Rumkit Tk. IV/Wira Sakti Kupang', 'Nusa Tenggara Timur', 'JL. Dr Moh Hatta, No. 9-11, Oebobo, Fontein, Fontein, Kec. Kota Raja, Kota Kupang, Nusa Tenggara Timur 85112', '(0380) 821131', 'RS Rujukan TNI', -10.16637700, 123.58342700),
(17, 'RSI Jakarta Cempaka Putih', 'DKI Jakarta', '', '(021) 42801567', 'RS Rujukan Muhammadiyah & Aisyiyah', -6.17050400, 106.87108100),
(18, 'Tk III Pusdik Gasum', 'Jawa Timur', 'Jl. Raya Porong No.1, Porong, Kec. Porong, Kabupaten Sidoarjo, Jawa Timur 61274', '(0343) 856444', 'RS Rujukan Polri', -7.54332500, 112.69852900),
(19, 'RSU Dr. Moewardi', 'Jawa Tengah', 'Jl. Kol. Sutarto 132, Surakarta', '(0271) 637415', 'RS Rujukan Kemenkes', -7.55696300, 110.84297000),
(20, 'Rumkit Tk. III/Wijaya Kusuma Purwokerto', 'Jawa Tengah', 'Jl. Prof Dr. HR Bunyamin, Glempang, Bancarkembar, Kec. Purwokerto Utara, Kabupaten Banyumas, Jawa Tengah 53121', '(0281) 633062', 'RS Rujukan TNI', -7.41508200, 109.24557700),
(21, 'RSU Prof. Dr. WZ Johanes', 'Nusa Tenggara Timur', 'Jl. Dr. Moch. Hatta No. 19, Kupang', '(0380) 833614', 'RS Rujukan Kemenkes', -10.16825400, 123.58574400),
(22, 'Rumkit Tk. II/dr. Hardjanto Balikpapan', 'Kalimantan Timur', 'Jl. Tj. Pura No.1, Klandasan Ulu, Balikpapan Kota, Kota Balikpapan, Kalimantan Timur 76111', '', 'RS Rujukan TNI', -1.27366800, 116.82892300),
(23, 'RSUD Wates', 'DI Yogyakarta', 'Jl Tentara Pelajar Km.1 No.5 Wates Kulon Progo', '(0274) 773169', 'RS Rujukan Kemenkes', -7.85882700, 110.14794200),
(24, 'RS Univ Muhammadiyah Malang', 'Jawa Timur', '', '(0341) 561666 , 087859923678 , 081216207426', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.92578400, 112.59916500),
(25, 'Tk III Ambon', 'Maluku', 'Jalan Sultan Hasanudin, Pandan Kasturi, Sirimau, Pandan Kasturi, Sirimau, Kota Ambon, Maluku 97128', '(0911) 349450', 'RS Rujukan Polri', -3.67175600, 128.19652900),
(26, 'Rumkit Tk. IV/Solok', 'Sumatera Barat', 'JL. Proklamasi, No. 3, VI Suku, Lubuk Sikarah, Kp. Jawa, Tj. Harapan, Kota Solok, Sumatera Barat 27317', '(0755) 325457', 'RS Rujukan TNI', -0.78867200, 100.65288500),
(27, 'RSUD Brebes', 'Jawa Tengah', 'Jl. Jenderal Sudirman No.181, Pangembon, Brebes, Kec. Brebes, Kabupaten Brebes, Jawa Tengah 52212 ', '(0283) 671431', 'RS Rujukan Provinsi Jawa Tengah', -6.87477300, 109.04936300),
(28, 'RSUD Kab.Sinjai', 'Sulawesi Selatan', 'Jl. Jend. Sudirman No. 47, Sinjai', '0482 21132', 'RS Rujukan Kemenkes', -5.12845500, 120.24917000),
(29, 'Balai Besar Laboratorium Kesehatan Palembang', 'Sumatera Selatan', 'Jl. Inspektur Yazid No.2, Sekip Jaya, Kec. Kemuning, Kota Palembang, Sumatera Selatan 30126', '(0711) 352683', 'Laboratorium Pemeriksaan', -2.96950600, 104.75100200),
(30, 'RSAU-3 DR. EFRAM HARSANA IWJ', 'Jawa Timur', 'Unnamed Road, Bakung, Maospati, Kec. Maospati, Kabupaten Magetan, Jawa Timur 63392', '0812-8333-9424', 'RS Rujukan TNI', -7.60362100, 111.44286400),
(31, 'RSUD dr. R. Soetijono Blora', 'Jawa Tengah', 'Jl. Dr. Sutomo No.42, Blora, Tempelan, Kec. Blora, Kabupaten Blora, Jawa Tengah 58219 ', '(0296) 531118', 'RS Rujukan Provinsi Jawa Tengah', -6.96711200, 111.42042400),
(32, 'RSUD Dr. H. Bob Bazar,SKM', 'Lampung', 'Jl. Lettu Rohani No. 14B, Kalianda, Kab.Lampung Selatan', '(0727) 322159', 'RS Rujukan Kemenkes', -5.72754200, 105.59645800),
(33, 'RSUD Kab. Kediri', 'Jawa Timur', 'Jl. Pahlawan Kusuma Bangsa No.1, Pare, Kediri', '(0354) 391718', 'RS Rujukan Kemenkes', -7.75980000, 112.17622300),
(34, 'RSU Kab Tangerang', 'Banten', 'Jl. Ahmad Yani No.9, Tangerang', '(021) 5512946 , 5513709 , 5523507', 'RS Rujukan Kemenkes', -6.20077400, 106.63508400),
(35, 'Rumkit Tk. IV/dr. R. Ismoyo Kendari', 'Sulawesi Tenggara', 'Jl. H. Abdul Silondae No.125, Korumba, Kec. Mandonga, Kota Kendari, Sulawesi Tenggara 93111', '(0401) 321253', 'RS Rujukan TNI', -3.96941700, 122.51577000),
(36, 'RSUD Sultan Imanuddin Pangkalan Bun', 'Kalimantan Tengah', 'Jl. Sutan Syahrir 17 Pangkalan Bun', '(0532) 21404', 'RS Rujukan Kemenkes', -2.69159600, 111.63219600),
(37, 'RS Aisyiyah Muntilan', 'Jawa Tengah', '', '(0293) 5891234', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.58486700, 110.28521500),
(38, 'RSUP dr J. Leimena', 'Maluku', 'Desa Rumah 3, Kec. Teluk Ambon', '', 'RS Rujukan Kemenkes', -3.66137400, 128.18653500),
(39, 'RSUD Manokwari', 'Papua Barat', 'Jl. Bhayangkara No. 1 Manokwari', '(0986) 211440', 'RS Rujukan Kemenkes', -0.87085700, 134.07872100),
(40, 'RSUD Ambarawa', 'Jawa Tengah', 'Jalan R.A. Kartini No. 101 Tambakboyo Lodoyong, Losari, Kec. Ambarawa, Semarang, Jawa Tengah 50611 ', '(0298) 591020', 'RS Rujukan Provinsi Jawa Tengah', -7.26777000, 110.40826100),
(41, 'Tk II Kediri', 'Jawa Timur', 'Jl. Kombes Pol Duryat No.17, Dandangan, Kec. Kota Kediri, Kota Kediri, Jawa Timur 64129', '(0354) 671100', 'RS Rujukan Polri', -7.81307400, 112.01773200),
(42, 'Rumkit Tk. IV/Cijantung', 'DKI Jakarta', 'Mahoni No.2, RT.4/RW.6, Gedong, Kec. Ps. Rebo, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13760', '(021) 8400535', 'RS Rujukan TNI', -6.30698200, 106.85887400),
(43, 'Tk III Kendari', 'Sulawesi Tenggara', 'Jl. Gunung Maluhu No. 7, Kec, Kec. Mandonga, Kota Kendari, Sulawesi Tenggara 93117', '(0401) 3121253', 'RS Rujukan Polri', -3.97263900, 122.50811100),
(44, 'RSTP Dr. H.A. Rotinsulu Bandung', 'Jawa Barat', 'Jl. Bukit Jarian No. 40, Bandung', '(022) 3034446', 'RS Rujukan Kemenkes', -6.87879400, 107.60604400),
(45, 'RSU Dr. H. RM Soeselo W', 'Jawa Tengah', 'Jl. Dr. Sutromo No. 63, Slawi', '0283 491016', 'RS Rujukan Kemenkes', -6.99349500, 109.13771300),
(46, 'Tk III Indramayu', 'Jawa Barat', 'JL. Losarang Raya, KM. 73-75, Losarang, Krimun, Indramayu, Krimun, Kec. Losarang, Kabupaten Indramayu, Jawa Barat 45253', '(0234) 507877', 'RS Rujukan Polri', -6.39555000, 108.15634300),
(47, 'RS PKU Muhammadiyah Bantul', 'Yogyakarta', '', '(0274) 367437, 368238, 368587, 6462935 (Hunting)', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.88680800, 110.33023100),
(48, 'Rumkit Tk. III/Ciremai Cirebon', 'Jawa Barat', 'Jl. Kesambi No.237, Drajat, Kec. Kesambi, Kota Cirebon, Jawa Barat 45133', '(0231) 238335', 'RS Rujukan TNI', -6.73812900, 108.54982300),
(49, 'RSU Dr. Achmad Mochtar', 'Sumatera Barat', 'Jl. Dr. A. Rivai, Bukittinggi', '0752 21720', 'RS Rujukan Kemenkes', -0.29965700, 100.36612500),
(50, 'RSU Dr Suraji Tirtonegoro', 'Jawa Tengah', 'Jl. Dr. Soeradji T. No. 1, Klaten ', '(0272) 321104', 'RS Rujukan Provinsi Jawa Tengah', -7.71434400, 110.58871900),
(51, 'RS Kasih Ibu Surakarta', 'Jawa Tengah', 'Jl. Slamet Riyadi No.404, Purwosari, Laweyan, Surakarta, Central Java 57142 ', '(0271) 714422', 'RS Rujukan Provinsi Jawa Tengah', -7.56296800, 110.80175500),
(52, 'RSUD Kraton Kab. Pekalongan', 'Jawa Tengah', 'Jl. Veteran 31, Pekalongan ', '(0285) 423225 , 423523', 'RS Rujukan Provinsi Jawa Tengah', -6.88138600, 109.66749700),
(53, 'RSUD Djoyonegoro Temanggung', 'Jawa Tengah', 'Jl. Gajah Mada No.1A, Sendang, Walitelon Sel., Kec. Temanggung, Kab. Temanggung, Jawa Tengah 56229 ', '(0293) 491119', 'RS Rujukan Provinsi Jawa Tengah', -7.30956900, 110.17927300),
(54, 'RSAU-4 DR. HOEDIONO LANUD SDM', 'Jawa Barat', 'Jl. Pangkalan TNI AU, Suryadarma, Kalijati, Kalijati Barat, Kalijati, Kalijati Bar., Kec. Kalijati, Kabupaten Subang, Jawa Barat 41271', '', 'RS Rujukan TNI', -6.52322000, 107.66262600),
(55, 'Rumkit Tk. IV/Aryoko Sorong', 'Papua Barat', 'Jl. Pramuka, Klagete, Sorong Utara, Kota Sorong, Papua Barat. 98412', '(0951) 333708', 'RS Rujukan TNI', -0.87575500, 131.28630100),
(56, 'RSUD Dr R Sudjono Selong', 'Nusa Tenggara Barat', 'Jl. Prof M. Yamin SH No. 55, Selong', '01 123 223 4567', 'RS Rujukan Kemenkes', -8.65053800, 116.52836000),
(57, 'Rumkit Tk. III/dr. Soeharso Banjarmasin', 'Kalimantan Selatan', 'Jl. Mayjen Sutoyo S, Pelambuan, Kec. Banjarmasin Bar., Kota Banjarmasin, Kalimantan Selatan 70129', '(0511) 4368422', 'RS Rujukan TNI', -3.32249700, 114.56436700),
(58, 'RSU Dr. Sardjito', 'DI Yogyakarta', 'Jl. Kesehatan 1 Sekip Sinduadi Mlati, Selman, Yogjakarta', '(0274) 631190 , 587333', 'RS Rujukan Kemenkes', -7.76859400, 110.37344800),
(59, 'RSAU-3 DR. SISWANTO LANUD SMO', 'Jawa Tengah', 'Jl. Tentara Pelajar, Jetak, Malangjiwan, Kec. Colomadu, Kabupaten Karanganyar, Jawa Tengah 57177', '', 'RS Rujukan TNI', -7.53177400, 110.73836200),
(60, 'RSU Hasan Sadikin Bandung', 'Jawa Barat', 'Jl. Pasteur No. 38, Bandung', '(022) 2034953-55', 'RS Rujukan Kemenkes', -6.89806500, 107.59814300),
(61, 'RSUD Dr. Sudarso', 'Kalimantan Barat', 'Jl. dr.Soedarso No.1 Pontianak', '(0561) 737701', 'RS Rujukan Kemenkes', -0.06153300, 109.36468700),
(62, 'RSAU-2 DR. M. SALAMUN', 'Jawa Barat', 'Jl. Ciumbuleuit No.203, Ciumbuleuit, Kec. Cidadap, Kota Bandung, Jawa Barat 40142', '(022) 2032090', 'RS Rujukan TNI', -6.86395200, 107.60479900),
(63, 'RS Dr. Tadjuddin Chalid, MPH', 'Sulawesi Selatan', 'Jl. Paccerakkang No.67 / Pajjaiang Daya Makassar', '(0411) 512902', 'RS Rujukan Kemenkes', -5.11112500, 119.51658400),
(64, 'RSUD RAA Soewondo Pati', 'Jawa Tengah', 'Jl. Dr. Susanto No.114, Ngipik, Kutoharjo, Kec. Pati, Kabupaten Pati, Jawa Tengah 59111 ', '(0295) 381102', 'RS Rujukan Provinsi Jawa Tengah', -6.73868200, 111.04319800),
(65, 'RSUD Hj. Anna Lasmanah Banjarnegara', 'Jawa Tengah', 'Kutabanjarnegara, Kec. Banjarnegara, Banjarnegara, Jawa Tengah ', '(0286) 591464', 'RS Rujukan Provinsi Jawa Tengah', -7.39265800, 109.69284900),
(66, 'RSPI Dr. Sulianti Saroso', 'DKI Jakarta', 'Jl. Baru Sunter Permai Raya, Jakarta 14340', '021 6506559, Fax: 021 6401411', 'RS Rujukan Kemenkes', -6.12959200, 106.86231800),
(67, 'RSUD Kab. Lahat', 'Sumatera Selatan', 'Jl. Mayjen Harun Sohar II No.28 Lahat', '(0731) 323080', 'RS Rujukan Kemenkes', -3.79284600, 103.53459500),
(68, 'TK III Padang', 'Sumatera Barat', 'Jl. Jati No.1, Jati Baru, Kec. Padang Tim., Kota Padang, Sumatera Barat 25129', '(0751) 22270', 'RS Rujukan Polri', -0.93298600, 100.36539100),
(69, 'RSUD Dr. Iskak Tulungagung', 'Jawa Timur', 'Jl. Dr. Wahidin Sudiro Husodo Tulungagung', '(0355) 322609', 'RS Rujukan Kemenkes', -8.05494100, 111.91811800),
(70, 'RSI PKU Muhammadiyah Palangkaraya', 'Kalimantan Tengah', '', '(0536) 3244802, 3244801 , 3244803', 'RS Rujukan Muhammadiyah & Aisyiyah', -2.22737200, 113.91962400),
(71, 'RSUD Kajen Kab. Pekalongan', 'Jawa Tengah', 'Jl. Raya Karanganyar No.36, Mlatensatu, Karangsari, Kec. Karanganyar, Pekalongan, Jawa Tengah 51182 ', '(0285) 385231', 'RS Rujukan Provinsi Jawa Tengah', -7.03103100, 109.61736900),
(72, 'RSU Arga Makmur', 'Bengkulu', 'Jl. Siti Khadijah No.08 Arga Makmur Kab.Bengkulu Utara', '(0737) 521118', 'RS Rujukan Kemenkes', -3.44230700, 102.19115000),
(73, 'Rumkit Tk. IV/Lahat', 'Sumatera Selatan', 'Jalan Lintas Pagar Alam-Lahat, Pasar Baru, Kecamatan Lahat, Ps. Baru, Kec. Lahat, Kabupaten Lahat, Sumatera Selatan 31461', '(0731) 326195', 'RS Rujukan TNI', -3.79237200, 103.53511100),
(74, 'RSAU-4 LANUD SAMSUDIN NOOR', 'Kalimanan Selatan', 'Landasan Ulin Tengah, Liang Anggang, Banjarbaru City, South Kalimantan 70724', '(0511) 4705118', 'RS Rujukan TNI', -3.44464200, 114.74441200),
(75, 'Tk III Palembang', 'Sumater Selatan', 'Jl. Jend. Sudirman No.km 4, RW.5, Ario Kemuning, Kec. Kemuning, Kota Palembang, Sumatera Selatan', '(0711) 410023', 'RS Rujukan Polri', -2.95902500, 104.73751700),
(76, 'RSAL-3 OEPOMO', 'Jawa Timur', 'Jl. Laksda Moh. Nazir No.56, Perak Utara, Kec. Pabean Cantian, Kota SBY, Jawa Timur 60177', '', 'RS Rujukan TNI', -7.21230400, 112.72489700),
(77, 'Rumkit Tk. III/Yogyakarta', 'DI Yogyakarta', 'Jl. Juadi No.19, Kotabaru, Kec. Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55224', '(0274) 2920000', 'RS Rujukan TNI', -7.78555600, 110.37682500),
(78, 'RSAL-2 dr MINTOHARDJO', 'DKI Jakarta', 'Jl. Bendungan Hilir 17 Jakpus', '(021) 5703081', 'RS Rujukan TNI', -6.21094500, 106.81093700),
(79, 'RS PKU Muhammadiyah Surakarta', 'Jawa Tengah', '', '(0271) 714 578', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.56545900, 110.81656800),
(80, 'RS Muhammadiyah Lamongan', 'Jawa Timur', '', '(0322) 322834 , 08123082211 , 082257622453', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.10921100, 112.40408100),
(81, 'RSUD dr. Soedirman Kab. Kebumen', 'Jawa Tengah', 'Kenteng, Muktisari, Kec. Kebumen, Kabupaten Kebumen, Jawa Tengah 54317 ', '(0287) 381101', 'RS Rujukan Provinsi Jawa Tengah', -7.70055700, 109.66476400),
(82, 'Tk III Bojonegoro', 'Jawa Timur', 'Jl. Panglima Sudirman No.160, Klangon, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62113', '(0353) 888780', 'RS Rujukan Polri', -7.15177400, 111.87366500),
(83, 'RSUD Dr. P. P. Magretti Saumlaki', 'Maluku', 'Jl. Ir. Soekarno - Poros Utama, Saumlaki, Tanimbar Sel', '(0918) 21113', 'RS Rujukan Kemenkes', -7.97443000, 131.30803700),
(84, 'RSU Dr. H. Soewondo', 'Jawa Tengah', 'Jl. Laut 21, Kendal ', '0294 381433', 'RS Rujukan Provinsi Jawa Tengah', -6.91781900, 110.20620400),
(85, 'Rumkit Tk. IV/dr. M. Yasin Bone', 'Sulawesi Selatan', 'Jalan Jendral Sudirman, Biru, Tanete Riattang, Masumpu, Tanete Riattang, Kabupaten Bone, Sulawesi Selatan 92716', '(0481) 21082', 'RS Rujukan TNI', -4.54939300, 120.33120600),
(86, 'RSUD Soehadi Prijonegoro Sragen', 'Jawa Tengah', 'Sragen, Ngrandu, Nglorog, Kec. Sragen, Kabupaten Sragen, Jawa Tengah 57215 ', '(0271) 891068', 'RS Rujukan Provinsi Jawa Tengah', -7.41869500, 111.03839500),
(87, 'RSU Indramayu', 'Jawa Barat', 'Jl. Murah Nara No.7 Sindang, Indramayu', '0234 272655', 'RS Rujukan Kemenkes', -6.32946500, 108.32162400),
(88, 'Tk III Jambi', 'Jambi', 'Jl. Raden Mattaher No.3, Rajawali, Jambi, Kota Jambi, Jambi 36361', '(0741) 23246', 'RS Rujukan Polri', -1.58934000, 103.61850000),
(89, 'RS Paru Dr. Ario Wirawan', 'Jawa Tengah', 'Jl. Hasanudin No.806,Salatiga ', '(0298) 326130 , (0298) 322703', 'RS Rujukan Provinsi Jawa Tengah', -7.34898000, 110.48947100),
(90, 'Lembaga Biologi Molekuler Eijkman', 'DKI Jakarta', 'Jl. Pangeran Diponegoro No.69, RW.5, Kenari, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10430', '(021) 3917131', 'Laboratorium Pemeriksaan', -6.19796300, 106.84625200),
(91, 'RSU Dr. Kanujoso Djatiwibowo', 'Kalimantan Timur', 'Jl. MT Haryono Ring Road, Balikpapan No.656', '(0542) 873901 , 887955 , 887966', 'RS Rujukan Kemenkes', -1.22547600, 116.86816900),
(92, 'RSUD dr. Tjitrowardojo Purworejo', 'Jawa Tengah', 'Doplang, Kec. Purworejo, Kabupaten Purworejo, Jawa Tengah 54114 ', '(0275) 321118', 'RS Rujukan Provinsi Jawa Tengah', -7.72014100, 109.99575500),
(93, 'RS dr. Oen Surakarta', 'Jawa Tengah', 'Jl. Brigjen Katamso No.55, Tegalharjo, Kec. Jebres, Kota Surakarta, Jawa Tengah 57128 ', '(0271) 643139', 'RS Rujukan Provinsi Jawa Tengah', -7.55553000, 110.83833600),
(94, 'RSAL-4 AZHAR ZAHIR', 'Papua', 'Jl. Serma Swandi No.204 Maanokwari, Sanggeng, Manokwari Bar., Kabupaten Manokwari, Papua Barat 98312', '', 'RS Rujukan TNI', -0.87287400, 134.06339100),
(95, 'RS H. L. Manambai Abdulkadir', 'Nusa Tenggara Barat', 'Jl. Lintas Sumbawa - Bima Km.5 Sumbawa Besar', '(0371) 2628078', 'RS Rujukan Kemenkes', -8.53152200, 117.44768400),
(96, 'RSUD Tidar Kota', 'Jawa Tengah', 'Jl. Tidar No. 30A, Kota Magelang ', '(0293) 362260 , 362463', 'RS Rujukan Provinsi Jawa Tengah', -7.48550100, 110.21824000),
(97, 'RSU Andi Makkasau', 'Sulawesi Selatan', 'Jl. Nurussamawati No.9, Kota Pare Pare', '(0421) 21823', 'RS Rujukan Kemenkes', -4.03519800, 119.63390400),
(98, 'RSUP Fatmawati', 'DKI Jakarta', 'Jl. RS Fatmawati Cilandak,Jaksel', '(021) 7501524', 'RS Rujukan Kemenkes', -6.29512000, 106.79612700),
(99, 'Rumkit Tk. IV/Guntung Payung', 'Kalimantan Selatan', 'Jalan A. Yani, Guntungmanggis, Landasan Ulin, Guntungmanggis, Kec. Landasan Ulin, Kota Banjar Baru, Kalimantan Selatan 70721', '(0511) 4785310', 'RS Rujukan TNI', -3.44909600, 114.79962000),
(100, 'RSU Prof. Dr. Margono Soekarjo', 'Jawa Tengah', 'Jl. Dr. Gumbreg No. 1, Purwokerto', '0281 632708', 'RS Rujukan Kemenkes', -7.43663700, 109.26743500),
(101, 'RSU Dr. Slamet Garut', 'Jawa Barat', 'Jl. Rumah Sakit No.12 Kec.Tarogong Kidul, Kab.Garut 44151', '0262 232720', 'RS Rujukan Kemenkes', -7.21998800, 107.89701700),
(102, 'RSU Panembahan Senopati Bantul', 'DI Yogyakarta', 'Jl. Dr. Wahidin SH Bantul', '(0274) 367381 , 367386 , 367508', 'RS Rujukan Kemenkes', -7.89280500, 110.33810500),
(103, 'RSUP Sanglah Denpasar', 'Bali', 'Jl. Diponegoro Denpasar, Bali', '(0361) 227911 - 15', 'RS Rujukan Kemenkes', -8.67574200, 115.21317100),
(104, 'Rumkit Tk. IV/Kencana Serang', 'Banten', 'Jalan Jendral Ahmad Yani No. 21-23, Sumurpecung, Serang, Cimuncang, Kec. Serang, Kota Serang, Banten 42117', '(0254) 211554', 'RS Rujukan TNI', -6.11814500, 106.15921300),
(105, 'RSU Kendari (Bahtera Mas)', 'Sulawesi Tenggara', 'Jl. Kapten Piere Tendean No.50 Kec. Baruga', '(0421) 3195611', 'RS Rujukan Kemenkes', -3.99000100, 122.53365200),
(106, 'Balai Besar Laboratorium Kesehatan Surabaya', 'Jawa Timur', 'Jl. Karang Menjangan No.18, Airlangga, Kec. Gubeng, Kota SBY, Jawa Timur 60286', '(031) 5020306', 'Laboratorium Pemeriksaan', -7.26831700, 112.76028900),
(107, 'RSUD Siti Fatimah Provinsi Sumatera Selatan', 'Sumatera Selatan', 'Jl. Kol. H. Burlian Km 6 Kel. Sukabangun, Kec. Sukarami, Palembang 30151', '(0711) 5718883 , 5718889', 'RS Rujukan Kemenkes', -2.94824300, 104.73448500),
(108, 'Rumkit Tk. III/dr.Reksodiwiryo Padang', 'Sumatera Barat', 'Jl. Dr. Wahidin No.1, Ganting Parak Gadang, Kec. Padang Tim., Kota Padang, Sumatera Barat 25132', '(0751) 31003', 'RS Rujukan TNI', -0.95079500, 100.37199800),
(109, 'RSUD RA Kartini Jepara', 'Jawa Tengah', 'Jl. Wahid Hasyim No.175, Rw. V, Bapangan, Kec. Jepara, Kabupaten Jepara, Jawa Tengah 59413 ', '(0291) 591175', 'RS Rujukan Provinsi Jawa Tengah', -6.60611700, 110.68177200),
(110, 'RSUD Batang', 'Jawa Tengah', 'Jl. Dr.Sutomo No.42, Kauman, Kec. Batang, Kabupaten Batang, Jawa Tengah 51215 ', '(0285) 4493034', 'RS Rujukan Provinsi Jawa Tengah', -6.91470900, 109.71884800),
(111, 'RS Muhammadiyah Metro - Lampung', 'Lampung', '', '(0725) 49490', 'RS Rujukan Muhammadiyah & Aisyiyah', -5.13524600, 105.28980800),
(112, 'Rumkit Tk. II/Kartika Husada Pontianak', 'Kalimantan Barat', 'Jl. Adi Sucipto KM.6,5, Sungai Raya, Kubu Raya, Kabupaten Kubu Raya, Kalimantan Barat 78117', '(0561) 721391', 'RS Rujukan TNI', -0.07066800, 109.37678300),
(113, 'Balai Besar Laboratorium Kesehatan Jakarta', 'DKI Jakarta', 'Jl. Percetakan Negara No.23 B, Johar Baru, Kec. Johar Baru, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10560', '(021) 4212524', 'Laboratorium Pemeriksaan', -6.18992100, 106.85836900),
(114, 'RSUD Hasanuddin Damrah Manna', 'Bengkulu', 'Jl. Raya Padang Panjang Manna, Kab.Bengkulu Utara', '85381637684', 'RS Rujukan Kemenkes', -4.44197800, 102.89655300),
(115, 'Rumkit Tk. II/M Ridwan Meuraksa', 'DKI Jakarta', 'Jalan Taman Mini I, RT.4/RW.2, Pinang Ranti, Makasar, RT.4/RW.2, Pinang Ranti, Kec. Makasar, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13560', '(021) 22819465', 'RS Rujukan TNI', -6.29426100, 106.88278300),
(116, 'RSUD Depati Hamzah', 'Bangka Belitung', 'Jl. Soekarno Hatta, Kel.Bukit Besar, Ke.Girimaya Kota Pangkalpinang', '(0717) 438660', 'RS Rujukan Kemenkes', -2.14395800, 106.12430400),
(117, 'Tk.III Yogyakarta', 'DI Yogyakarta', 'Jalan Raya Yogya - Solo KM 14, Glondong, Tirtomartani, Kec. Kalasan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55571', '(0274) 498278', 'RS Rujukan Polri', -7.76618300, 110.47177000),
(118, 'Rumkit Tk. IV/Kediri', 'Jawa Timur', 'Jl. Mayjend Sungkono No.44, Semampir, Kec. Kota Kediri, Kota Kediri, Jawa Timur 64129', '(0354) 687801', 'RS Rujukan TNI', -7.80880100, 112.00936500),
(119, 'RSU Tk II 03.05.01 Dustira', 'Jawa Barat', 'Jl. dr. Dustira No.1 Kel. Baros Kec. Cimahi Tengah', '(022) 665 2207, 663 3967 , (022) 663 0932', 'RS Rujukan Kemenkes', -6.88527400, 107.53464000),
(120, 'RS Dr R Koesma Tuban', 'Jawa Timur', 'Jl. Dr. WS Husodo, Tuban', '(0356) 321010 , 325696 , 323266', 'RS Rujukan Kemenkes', -6.89871500, 112.04651900),
(121, 'Tk III Tjtra Bengkulu', 'Bengkulu', 'Jl. Veteran No.2, Ps. Jitra, Kec. Tlk. Segara, Kota Bengkulu, Bengkulu 38113', '(0736) 21553', 'RS Rujukan Polri', -3.79270600, 102.25514400),
(122, 'Rumkit Tk. IV/dr. Yanto Poso', 'Sulawesi Tengah', 'Kasintuwu, Poso Kota Utara, Kabupaten Poso, Sulawesi Tengah 94611', '', 'RS Rujukan TNI', -1.38665700, 120.75600600),
(123, 'RSU Colombia Asia Semarang', 'Jawa Tengah', 'Jl. Siliwangi No.143, Kalibanteng Kulon, Kec. Semarang Bar., Kota Semarang, Jawa Tengah 50145 ', '(024) 7629999', 'RS Rujukan Provinsi Jawa Tengah', -6.98427900, 110.38289600),
(124, 'Rumkit Tk. IV/Bandar Lampung', 'Lampung', 'Jl. Dr. Rivai No.7, Penengahan, Kec. Tj. Karang Pusat, Kota Bandar Lampung, Lampung 35121', '(0721) 703574', 'RS Rujukan TNI', -5.40152500, 105.25836100),
(125, 'RSUD Ir. Soekarno Sukoharjo', 'Jawa Tengah', 'Sukoharjo, Bulusari, Gayam, Kec. Sukoharjo, Kabupaten Sukoharjo, Jawa Tengah 57514 ', '(0271) 335966', 'RS Rujukan Provinsi Jawa Tengah', -7.68398000, 110.84970100),
(126, 'RS PKU Muhammadiyah Gombong', 'Jawa Tengah', '', '(0287) 471780', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.60869600, 109.50234500),
(127, 'Tk II Makassar', 'Sulawesi Selatan', 'Jl. Letnan Jenderal Jl. Andi Mappaodang No.63, Jongaya, Kec. Tamalate, Kota Makassar, Sulawesi Selatan 90223', '(0411) 8054330', 'RS Rujukan Polri', -5.17465200, 119.41581400),
(128, 'RSUD Tugurejo Semarang', 'Jawa Tengah', 'Jl. Walisongo No. 137 KM 8.5, Jawa Tengah 50185 ', '(024) 7605297', 'RS Rujukan Provinsi Jawa Tengah', -6.98453700, 110.35593400),
(129, 'Rumkit Tk. III/Slamet Riyadi Surakarta', 'Jawa Tengah', 'Jl. Slamet Riyadi No No.321Kvi, Purwosari, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57148', '(0271) 714656', 'RS Rujukan TNI', -7.56583600, 110.80524000),
(130, 'Rumkit Tk. IV/Bratanata Jambi', 'Jambi', 'Jl. Raden Mattaher No.33, Sulanjana, Kec. Jambi Tim., Kota Jambi, Jambi 36123', '(0741) 34212', 'RS Rujukan TNI', -1.59313600, 103.61865600),
(131, 'RSU PKU Muh. Surakarta', 'Jawa Tengah', 'Surakarta, Timuran, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57131 ', '(0271) 714578', 'RS Rujukan Provinsi Jawa Tengah', -7.56563700, 110.81654100),
(132, 'RSUD Dr. Loekmonohadi Kudus', 'Jawa Tengah', 'Jl. Dr. Lukmonohadi No. 19, Kudus ', '(0291) 444001', 'RS Rujukan Provinsi Jawa Tengah', -6.81881000, 110.83655700),
(133, 'RSAL-3 SAMUEL J. MOEDA', 'Nusa Tenggara Timur', 'Jl. Yos Sudarso No. 5 Osmok Kupang 85232, Nusa Tenggara Timur Indonesia, Namosain, Alak, Kota Kupang, Nusa Tenggara Tim.', '(0380) 890670', 'RS Rujukan TNI', -10.17598000, 123.55549600),
(134, 'TK.III Tulungagung', 'Jawa Timur', 'Jl. I Gusti Ngurah Rai No.29, Bago, Kec. Tulungagung, Kabupaten Tulungagung, Jawa Timur 66218', '', 'RS Rujukan Polri', -8.06746400, 111.90752600),
(135, 'RSUD K.R.M.T Wongsonegoro Kota Semarang', 'Jawa Tengah', 'Jl. Fatmawati No.1 Semarang 50272', '(024) 6711500', 'RS Rujukan Kemenkes', -7.03331700, 110.46690300),
(136, 'RSAU-4 LANUD ELTARI', 'Nusa Tenggara Timur', 'Jl. Taebenu, Penfui, Maulafa, Kota Kupang, Nusa Tenggara Timur', '', 'RS Rujukan TNI', -10.17869800, 123.66186300),
(137, 'Tk III Mataram', 'Nusa Tenggara Barat', 'Jl. Langko No.64, Pejeruk, Kec. Ampenan, Kota Mataram, Nusa Tenggara Bar. 83112', '(0370) 629149', 'RS Rujukan Polri', -8.57745000, 116.08435000),
(138, 'RSU Dr TC Hillers', 'Nusa Tenggara Timur', 'Jl. Wairklau, Maumere, Kab.Sikka', '81261153944', 'RS Rujukan Kemenkes', -8.62231400, 122.20423200),
(139, 'RSAU-4 DR. N. LUBIS LANUD SULAIMAN', 'Jawa Barat', 'Jl. Terusan Kopo-Soreang No.461, Sulaiman, Kec. Margahayu, Bandung, Jawa Barat 40229', '', 'RS Rujukan TNI', -6.98353300, 107.56400600),
(140, 'RSUD Provinsi Sulawesi Barat', 'Sulawesi Barat', 'Jl. RE. Marthadinata, Simboro, Kec.Simboro dan Kepulauan, Kab.Mamuju', '(0426) 2703260 / 04', 'RS Rujukan Kemenkes', -2.68996600, 118.86274900),
(141, 'RS Umum Bhayangkara Tk. I R. Said Sukanto', 'DKI Jakarta', 'Jl. Raya Bogor Kramat Jati, Jakarta Timur', '(021) 8093288', 'RS Rujukan Kemenkes', -6.26951200, 106.87070500),
(142, 'Rumkit Tk. II/dr.A K Gani', 'Sumatera Selatan', 'Jl. Dr. Ak. Gani No.1, 19 Ilir, Kec. Bukit Kecil, Kota Palembang, Sumatera Selatan 30113', '', 'RS Rujukan TNI', -2.98995100, 104.76058500),
(143, 'RSU Dr. Soetomo', 'Jawa Timur', 'Jl. Prof. Dr. Moestop No. 6-8, Surabaya', '(031) 5501001 , 5501239', 'RS Rujukan Kemenkes', -7.26798700, 112.75850400),
(144, 'RSU Dr. M. Hoesin Palembang', 'Sumatera Selatan', 'Jl. Jend. Soedirman Km. 3.5 , Palembang 30126', '(0711) 354088', 'RS Rujukan Kemenkes', -2.96608300, 104.75022100),
(145, 'RSU dr. Asmir Salatiga', 'Jawa Tengah', 'Jl. DR. Muwardi No.50, Kutowinangun Kidul, Kec. Tingkir, Kota Salatiga, Jawa Tengah 50711 ', '(0293) 363061', 'RS Rujukan Provinsi Jawa Tengah', -7.33116400, 110.51054600),
(146, 'RS Siti Khotijah Sepanjang - Sidoarjo', 'Jawa Timur', '', '(031) 7882123 , 7881130 , 08113336767', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.34484000, 112.69905600),
(147, 'RSUD Labuang Baji', 'Sulawesi Selatan', 'Jl. Dr. Ratulangi No.81 Makassar', '(0411) 872120', 'RS Rujukan Kemenkes', -5.16254400, 119.41824900),
(148, 'RSUD Kab. Buleleng', 'Bali', 'Jl. Ngurah Rai 30 Singaraja', '(0362) 22046 , 3307744', 'RS Rujukan Kemenkes', -8.11980900, 115.09247500),
(149, 'Rumkit Tk. IV/Guntur Garut', 'Jawa Barat', 'Jl. Bratayuda No.101, Kota Kulon, Kec. Garut Kota, Kabupaten Garut, Jawa Barat 44112', '(0262) 232325', 'RS Rujukan TNI', -7.22490900, 107.91142000),
(150, 'RSAU-3 DR. M. MUNIR LANUD ABD', 'Jawa Timur', 'Komplek TNI AU, Jl. Dr. Munir No. 18, Saptorenggo, Pakis, Krajan, Saptorenggo, Kec. Pakis, Malang, Jawa Timur 65154', '(0341) 792273', 'RS Rujukan TNI', -7.93425900, 112.70288000),
(151, 'RSU Mardi Rahayu Kudus', 'Jawa Tengah', 'Jl. AKBP Agil Kusumadya No.110, Jatirejo, Jati Wetan, Kec. Jati, Kabupaten Kudus, Jawa Tengah 59346 ', '(0291) 438234', 'RS Rujukan Provinsi Jawa Tengah', -6.83009900, 110.83127300),
(152, 'RSU Kolonedale', 'Sulawesi Tengah', 'Jl. W. Monginsidi 2, Kolonedale', '0465 21010', 'RS Rujukan Kemenkes', -1.97236700, 121.33685600),
(153, 'RSUD Ulin Banjarmasin', 'Kalimantan Selatan', 'Jl. Jend. A.Yani Km 2.5 Banjarmasin', '(0511) 3252180', 'RS Rujukan Kemenkes', -3.32282300, 114.60117800),
(154, 'RSUD Blambangan', 'Jawa Timur', 'Jl. Letkol Istiqlah No.49, Singonegaran, Kec. Banyuwangi, Kabupaten Banyuwangi, Jawa Timur 68415', '(0333) 421118 , 421071', 'RS Rujukan Kemenkes', -8.20834800, 114.36599300),
(155, 'Rumkit Tk. II/Ambon', 'Maluku', 'Jalan Dr. Tamaela No.2, Kel Silale, Nusaniwe, Kota Ambon, Maluku', '(0911) 353555', 'RS Rujukan TNI', -3.70128200, 128.17767500),
(156, 'RUMKITBAN SURABAYA', 'Jawa Timur', 'Jl. Gubeng Pojok No.21, Ketabang, Kec. Genteng, Kota SBY, Jawa Timur 60272', '(031) 5310069', 'RS Rujukan TNI', -7.26516700, 112.75137500),
(157, 'RSUD Sunan Kalijaga Demak', 'Jawa Tengah', 'Jl. Sultan Fatah 669/50, Bintoro, Kecamatan Demak, Bogorame, Bintoro, Kec. Demak, Kabupaten Demak, Jawa Tengah 59511 ', '(0291) 685018', 'RS Rujukan Provinsi Jawa Tengah', -6.89892400, 110.63390000),
(158, 'RSU Bhakti Wira Salatiga', 'Jawa Tengah', 'Jl. DR. Sutomo No.17, Barusari, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50245 ', '(024) 3555944', 'RS Rujukan Provinsi Jawa Tengah', -6.98663800, 110.40819000),
(159, 'Tk II Semarang', 'Jawa Tengah', 'Jl. Majapahit No.140, Gayamsari, Kec. Gayamsari, Kota Semarang, Jawa Tengah 50248', '(024) 6720675', 'RS Rujukan Polri', -7.00016900, 110.44623500),
(160, 'RSUD dr. R. G. Taroenadibrata Purbalingga', 'Jawa Tengah', 'Purbalingga, Kembaran Kulon, Kec. Purbalingga, Kabupaten Purbalingga, Jawa Tengah 53319 ', '(0281) 891016', 'RS Rujukan Provinsi Jawa Tengah', -7.37840200, 109.36154700),
(161, 'RSUD Pandan Arang Boyolali', 'Jawa Tengah', 'Jl. Magelang - Boyolali No.136, Dusun 2, Winong, Kec. Boyolali, Kabupaten Boyolali, Jawa Tengah 57315 ', '(0276) 321065', 'RS Rujukan Provinsi Jawa Tengah', -7.53358500, 110.59066000),
(162, 'Rumkit Tk. IV/Palu', 'Sulawesi Tengah', 'Jl. Sisingamangaraja No.4, Lolu Utara, Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94118', '(0451) 421575', 'RS Rujukan TNI', -0.89716400, 119.88608200),
(163, 'RS PKU Muhammadiyah Roemani Semarang', 'Jawa Tengah', '', '(024) 8444623', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.00108500, 110.42790500),
(164, 'Rumkit Dik Puskdikkes', 'DKI Jakarta', 'Jalan Raya Bogor No.KM. 24, RT.2/RW.9, Kramat Jati, Kec. Kramat jati, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13510', '(021) 8092358', 'RS Rujukan TNI', -6.27683600, 106.86921700),
(165, 'Tk III Palu', 'Sulawesi Tengah', 'JL. DR. Suharso Lrg III, No.02, Besusu Barat, Palu Timur, Besusu Bar., Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94118', '(0451) 429714', 'RS Rujukan Polri', -0.88956600, 119.86782200),
(166, 'RSUD Aji Muhammad Parikesit', 'Kalimantan Timur', 'Jl. Ratu Agung No. 1 Tenggarong Seberang, Kutai Kartanegraa', '(0541) 661013 , 661015', 'RS Rujukan Kemenkes', -0.43896100, 117.01293100),
(167, 'Tk III Kupang', 'Nusa Tenggara Timur', 'Jl. Nangka No.84, Oetete, Kec. Oebobo, Kota Kupang, Nusa Tenggara Tim.', '(0380) 821999', 'RS Rujukan Polri', -10.16397100, 123.59213100),
(168, 'RSU Gunung Jati', 'Jawa Barat', 'JL. Kosamabi No. 56, Kota Cirebon', '0231 206330', 'RS Rujukan Kemenkes', -6.72952200, 108.55474100),
(169, 'RS PKU Muhammadiyah Gemping', 'Yogyakarta', '', '(0274) 6499704 , 6499704', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.80045400, 110.31768500),
(170, 'RSUD Kraton Kab. Pekalongan', 'Jawa Tengah', 'Jl. Veteran 31, Pekalongan', '(0285) 423225 , 423523', 'RS Rujukan Kemenkes', -6.88138600, 109.66749700),
(171, 'Laboraturium Kesehatan DKI Jakarta', 'DKI Jakarta', 'Jl. Rawasari Timur V, RT.16/RW.2, Cemp. Putih Tim., Kec. Cemp. Putih, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10510', '(021) 4247404, 408, 432, (021) 4247364', 'Laboratorium Pemeriksaan', -6.18461900, 106.87201900),
(172, 'RSUD Kab. Sorong', 'Papua Barat', 'Jl. Kesehatan No. 36 Sorong', '(0951) 321850', 'RS Rujukan Kemenkes', -0.86955300, 131.24682100),
(173, 'Rumkit Tk. IV/Salak Bogor', 'Jawa Barat', 'Jl. Jend. Sudirman No.8, Sempur, Kecamatan Bogor Tengah, Kota Bogor, Jawa Barat 16121', '(0251) 8345222', 'RS Rujukan TNI', -6.59121700, 106.79739100),
(174, 'RSU Islam Klaten', 'Jawa Tengah', 'Jl. Klaten - Solo No.KM.4, Sidorejo, Belang Wetan, Kec. Klaten Utara, Kabupaten Klaten, Jawa Tengah ', '(0272) 322252', 'RS Rujukan Provinsi Jawa Tengah', -7.68572200, 110.63435700),
(175, 'RSU Dr. Kariadi Semarang', 'Jawa Tengah', 'Jl. Dr.Sutomo No. 16, Semarang', '(024) 8413476', 'RS Rujukan Kemenkes', -6.99418100, 110.40748800),
(176, 'RSU Dr. H. RM Soeselo W', 'Jawa Tengah', 'Jl. Dr. Sutromo No. 63, Slawi ', '0283 491016', 'RS Rujukan Provinsi Jawa Tengah', -6.99349500, 109.13771300),
(177, 'RSU Raba/ RSUD BIMA', 'Nusa Tenggara Barat', 'Jl. Langsat No. 1, Rabangodu, Raba, Kab. Bima', '0374 43142', 'RS Rujukan Kemenkes', -8.47347000, 118.76184200),
(178, 'RSAL-3 OETOJO', 'Papua Barat', 'Jl. Ahmad Yani, Klademak, Sorong Manoi, Kota Sorong, Papua Bar. 98412', '(0951) 3173103', 'RS Rujukan TNI', -0.88306800, 131.27489500),
(179, 'RSUD Kardinah Tegal', 'Jawa Tengah', 'Jl. AIP KS Tubun No 2, Kota Tegal 52124', '(0283) 350377 , 350477', 'RS Rujukan Kemenkes', -6.88476900, 109.13542700),
(180, 'Balai Teknik Kesehatan Lingkungan dan Pengendalian Penyakit Surabaya', 'Jawa Timur', 'Jl. Sidoluhur No.12, Kemayoran, Kec. Krembangan, Kota SBY, Jawa Timur 60175', '(031) 3540189', 'Laboratorium Pemeriksaan', -7.24150000, 112.73031600),
(181, 'RSPAL-1 dr RAMELAN', 'Jawa Timur', 'Jl. Gadung No.1, Jagir, Kec. Wonokromo, Kota SBY, Jawa Timur 60244', '(031) 8438153', 'RS Rujukan TNI', -7.30936500, 112.73865300),
(182, 'RSAL Mintoharjo', 'DKI Jakarta', 'Jl. Bendungan Hilir 17 Jakpus', '(021) 5703081', 'RS Rujukan Kemenkes', -6.21094500, 106.81093700),
(183, 'RSU dr. Soedjono Magelang', 'Jawa Tengah', 'Jl. Jend. Urip Sumoharjo No.48, Wates, Kec. Magelang Utara, Kota Magelang, Jawa Tengah 56113 ', '(0293) 363061', 'RS Rujukan Provinsi Jawa Tengah', -7.46778300, 110.22607800),
(184, 'RSU Kayu Agung', 'Sumatera Selatan', 'Jl. Letjen Yusuf Singadekane Kel. Jua-jua Kec.Kayuagung, Kab.Ogan Komering Ilir', '(0712) 323889', 'RS Rujukan Kemenkes', -3.40791500, 104.82497600),
(185, 'Tk III Batu Malang', 'Jawa Timur', 'Ngaglik, Kec. Batu, Kota Batu, Jawa Timur 65311', '(0341) 591067', 'RS Rujukan Polri', -7.87175400, 112.52405600),
(186, 'RS Tk.II Pelamonia', 'Sulawesi Selatan', 'Jl. Jend Sudirman No.27,Makassar', '(0411) 7402332', 'RS Rujukan Kemenkes', -5.13815500, 119.41486500),
(187, 'Balai Besar Laboratorium Kesehatan Makassar', 'Sulawesi Selatan', 'Jl. Perintis Kemerdekaan KM.11, Tamalanrea, Kec. Tamalanrea, Kota Makassar, Sulawesi Selatan 90245', '(0411) 586458', 'Laboratorium Pemeriksaan', -5.13146000, 119.49564300),
(188, 'RSU Persahabatan', 'DKI Jakarta', 'Jl. Persahabatan Raya', '021 489 1708', 'RS Rujukan Kemenkes', -6.20275000, 106.88486200),
(189, 'Rumkit Tk. IV/dr. Noesmir Baturaja', 'Sumatera Selatan', 'Jl. Dr. M. Hatta No.16, Baturaja Lama, Kec. Baturaja Timur, Kabupaten Ogan Komering Ulu, Sumatera Selatan 32125', '(0735) 320123', 'RS Rujukan TNI', -4.12246300, 104.16771000),
(190, 'Rumkit Tk. II/Udayana Denpasar', 'Bali', 'Jl. Jend. Sudirman No.1, Dangin Puri Klod, Kec. Denpasar Tim., Kota Denpasar, Bali 80232', '(0361) 228068', 'RS Rujukan TNI', -8.66321300, 115.21896600),
(191, 'RSU Anutapura Palu', 'Sulawesi Tengah', 'Jl. Kangkung No. 1 Palu', '(0451) 460570', 'RS Rujukan Kemenkes', -0.89987800, 119.84945600),
(192, 'RSAU-4 DR. SOEMITRO LANUD MUL SBY', 'Jawa Timur', 'Jl. Serayu No.17, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241, Indonesia', '(031) 5669514', 'RS Rujukan TNI', -7.29134100, 112.74100900),
(193, 'RSUD Sidoarjo', 'Jawa Timur', 'Jl. Mojopahit No.667, Sidowayah, Celep, Kec. Sdioarjo, Kab.Sidoarjo', '(031) 8961649', 'RS Rujukan Kemenkes', -7.46543300, 112.71635500),
(194, 'RSU St. Elizabeth Semarang', 'Jawa Tengah', 'Jl. Kawi 1, Wonotingal, Kec. Candisari, Kota Semarang, Jawa Tengah 50252 ', '(024) 8310035', 'RS Rujukan Provinsi Jawa Tengah', -7.00787200, 110.41873500),
(195, 'Rumkit Tk. IV/Wira Bhakti Mataram', 'Nusa Tenggara Barat', 'Jl. Hos Cokroaminoto No.7, Mataram Bar., Kec. Selaparang, Kota Mataram, Nusa Tenggara Barat. 83123', '(0370) 640149', 'RS Rujukan TNI', -8.58085300, 116.10894000),
(196, 'RSU Dr. Doris Sylvanus', 'Kalimantan Tengah', 'Jl. Tambun Bungai No. 4, Palangkaraya', '(0536) 3224695 , 3229194', 'RS Rujukan Kemenkes', -2.21051700, 113.92248400),
(197, 'RSPAU-1 Dr. S. HARDJOLUKITO', 'DI Yogyakarta', 'JL. Janti Yogyakarta, Lanud Adisutjipto, Jl. Ringroad Timur, Karang Janbe, Banguntapan, Kec. Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198', '(0274) 444702', 'RS Rujukan TNI', -7.79737600, 110.41019300),
(198, 'Rumkit Tk. III/Baladika Husada/Jember', 'Jawa Timur', 'Jl. PB Sudirman No.45, Pagah, Jemberlor, Kec. Patrang, Kabupaten Jember, Jawa Timur 68118', '(0331) 482541', 'RS Rujukan TNI', -8.16380600, 113.70627500),
(199, 'RSI Muhammadiyah Kendal', 'Jawa Tengah', '', '(0294) 641870 , 643756', 'RS Rujukan Muhammadiyah & Aisyiyah', -6.96839100, 110.09123500),
(200, 'RST Wijayakusumah Purwokerto', 'Jawa Tengah', 'Jl. Prof Dr. HR Bunyamin, Glempang, Bancarkembar, Kec. Purwokerto Utara, Kabupaten Banyumas, Jawa Tengah 53121 ', '(0281) 633062', 'RS Rujukan Provinsi Jawa Tengah', -7.41508200, 109.24557700),
(201, 'RSAL-3 JALA AMMARI', 'Sulawesi Selatan', 'Jl. Satando No.27, Tamalabba, Kec. Ujung Tanah, Kota Makassar, Sulawesi Selatan 90163', '(0411) 3617625', 'RS Rujukan TNI', -5.11555300, 119.41563700),
(202, 'RSU Dr. Moewardi', 'Jawa Tengah', 'Jl. Kol. Sutarto 132, Surakarta ', '(0271) 637415', 'RS Rujukan Provinsi Jawa Tengah', -7.55696300, 110.84297000),
(203, 'Tk III Balikpapan', 'Kalimantan Timur', 'Jl. Jenderal Sudirman No.14, Klandasan Ilir, Balikpapan Sel., Kota Balikpapan, Kalimantan Timur', '(0542) 421261', 'RS Rujukan Polri', -1.27934300, 116.81967700),
(204, 'RSI Jakarta Pondok Kopi', 'DKI Jakarta', '', '(021) 29809000 , 8630654', 'RS Rujukan Muhammadiyah & Aisyiyah', -6.22005800, 106.93992400),
(205, 'RSUD Karanganyar', 'Jawa Tengah', 'Karanganyar, Jengglong, Bejen, Kec. Karanganyar, Kabupaten Karanganyar, Jawa Tengah 57716 ', '(0271) 495673', 'RS Rujukan Provinsi Jawa Tengah', -7.59105600, 110.94945200),
(206, 'RSU H A Wahab Sjahranie', 'Kalimantan Timur', 'Jl. Palang Merah Indonesia No.1 Samarinda, Kaltim', '0541 738118', 'RS Rujukan Kemenkes', -0.47899200, 117.14426800),
(207, 'Fakultas Kedokteran Universitas Indonesia', 'DKI Jakarta', 'Jl. Salemba Raya No.6, RW.5, Kenari, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10430', '(021) 3160493', 'Laboratorium Pemeriksaan', -6.19501100, 106.84875500),
(208, 'RSU Banyumas', 'Jawa Tengah', 'Jl. Rumah Sakit No. 1, Banyumas', '0281 796031', 'RS Rujukan Kemenkes', -7.52910800, 109.29268700),
(209, 'Tk III Nganjuk', 'Jawa Timur', 'Jl. Abdurahman Saleh VI No.56, Kauman, Kec. Nganjuk, Kabupaten Nganjuk, Jawa Timur 64411', '(0358) 321896', 'RS Rujukan Polri', -7.60004800, 111.89477100),
(210, 'RSUD NTB', 'Nusa Tenggara Barat', 'Jl. Prabu Rangkasari Dasan Cermen', '(0370) 7502424 , 7504288', 'RS Rujukan Kemenkes', -8.60725900, 116.13104700),
(211, 'RSU Prof. Dr. Margono Soekarjo', 'Jawa Tengah', 'Jl. Dr. Gumbreg No. 1, Purwokerto ', '0281 632708', 'RS Rujukan Provinsi Jawa Tengah', -7.43663700, 109.26743500),
(212, 'RSUD Cengkareng', 'DKI Jakarta', 'Jl. Kamal Raya Bumi Cengkareng Indah, Cengkareng Timur', '(021) 54372874', 'RS Rujukan Kemenkes', -6.14262700, 106.73509700),
(213, 'Tk III Pontianak', 'Kalimantan Barat', 'Jalan K. S. Tubun No.14, RT.03/RW.01, Akcaya, Kec. Pontianak Sel., Kota Pontianak, Kalimantan Barat 78121', '(0561) 736610', 'RS Rujukan Polri', -0.04102100, 109.33390100),
(214, 'RSU Dr Suraji Tirtonegoro', 'Jawa Tengah', 'Jl. Dr. Soeradji T. No. 1, Klaten', '(0272) 321104', 'RS Rujukan Kemenkes', -7.71434400, 110.58871900),
(215, 'RSU Lakipadada Tana Toraja', 'Sulawesi Selatan', 'Jl. Pongtiku Mandetek, Tana Toraja', '0432 22264', 'RS Rujukan Kemenkes', -3.07338200, 119.86771300),
(216, 'Rumkit Tk. III/Bhakti Wira Tamtama Semarang', 'Jawa Tengah', 'Jl. DR. Sutomo No.17, Barusari, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50245', '(024) 3555944', 'RS Rujukan TNI', -6.98704700, 110.40768200),
(217, 'Rumkit Tk. II/Pelamonia Makasar', 'Sulawesi Selatan', 'Jl. Jend. Sudirman No.27, Pisang Utara, Kec. Ujung Pandang, Kota Makassar, Sulawesi Selatan 90157', '0811-1782-399', 'RS Rujukan TNI', -5.13815400, 119.41486400),
(218, 'RSUD Kota Yogyakarta', 'DI Yogyakarta', 'Jl. Wirosaban No.1 Yogyakarta, DIY 55162', '(0274) 371195 , 386691 , 386692', 'RS Rujukan Kemenkes', -7.82580700, 110.37800500),
(219, 'Rumkit Tk. IV/Samarinda', 'Kalimantan Timur', 'Jl. Jend. Sudirman No.52, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', '(0541) 4113679', 'RS Rujukan TNI', -0.50114800, 117.14288500),
(220, 'Tk II Bandung', 'Jawa Barat', 'Jl. Moh. Toha No.369, Ciseureuh, Kec. Regol, Kota Bandung, Jawa Barat 40256', '0811-2232-056', 'RS Rujukan Polri', -6.95647900, 107.61229400),
(221, 'BRSU Tabanan Bali', 'Bali', 'Jl. Pahlawan No.14 Tabanan Bali', '(0361) 811027 , 819810 , 811202', 'RS Rujukan Kemenkes', -8.53891500, 115.13196600),
(222, 'RSU Mayjend HM Ryacudu', 'Lampung', 'Jl. Jend. Sudirman No. 2, Kotabumi, Lampung Utara 34511', '(0724) 22095', 'RS Rujukan Kemenkes', -4.83276900, 104.89144700),
(223, 'RS Fatimah Banyuwangi', 'Jawa Timur', '', '(0333) 421451', 'RS Rujukan Muhammadiyah & Aisyiyah', -8.24750500, 114.34879400),
(224, 'RSU Islam Harapan Anda Kota Tegal', 'Jawa Tengah', 'Jl. Ababil No.42, Randugunting, Kec. Tegal Sel., Kota Tegal, Jawa Tengah 52131 ', '(0283) 358244', 'RS Rujukan Provinsi Jawa Tengah', -6.87626600, 109.12844000),
(225, 'Rumkit Tk. IV Daan Mogot Tangerang', 'Banten', 'Jalan Daan Mogot No.59, Sukarasa, Kecamatan Tangerang, RT.003/RW.004, Sukarasa, Kec. Tangerang, Kota Tangerang, Banten 15111', '(021) 5523551', 'RS Rujukan TNI', -6.17217900, 106.63168100),
(226, 'RSUD dr. R. Soetrasno Rembang', 'Jawa Tengah', 'Jl. Pahlawan No.16, Kabongan Kidul, Kec. Rembang, Kabupaten Rembang, Jawa Tengah 59218 ', '(0295) 691444', 'RS Rujukan Provinsi Jawa Tengah', -6.70892500, 111.35819100),
(227, 'RS Dr. Rivai Abdullah', 'Sumatera Selatan', 'Jl. Sungai Kundur Kelurahan Mariana Kec. Banyuasin I', '(0711) 7537201', 'RS Rujukan Kemenkes', -2.97968400, 104.86338600),
(228, 'RSAL-3 EWA PANGALILA (RS Marinir)', 'Jawa Timur', 'Gn. Sari, Kec. Dukuhpakis, Kota SBY, Jawa Timur 60224', '(031) 5682405', 'RS Rujukan TNI', -7.30417000, 112.70836000),
(229, 'Rumkit Tk. IV/Sariningsih Bandung', 'Jawa Barat', 'Jl. L. L. R.E. Martadinata No.9, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115', '(022) 4211650', 'RS Rujukan TNI', -6.90683400, 107.61126300),
(230, 'RSU Kab. Banggai Luwuk', 'Sulawesi Tengah', 'Jl. Imam Bonjol Km 3 No. 14, Luwuk', '0461 21820', 'RS Rujukan Kemenkes', -0.93405700, 122.82219700),
(231, 'RSUD Kota Surakarta', 'Jawa Tengah', 'Kedungupit, Sawahan, Kec. Ngemplak, Kabupaten Boyolali, Jawa Tengah 57375 ', '(0271) 715300', 'RS Rujukan Provinsi Jawa Tengah', -7.52573000, 110.81310800),
(232, 'RSU Dr. M. Yunus Bengkulu', 'Bengkulu', 'Jl. Bhayangkara Sidomulyo, Bengkulu', '(0736) 52004 , 5111', 'RS Rujukan Kemenkes', -3.83425100, 102.31397000),
(233, 'RSU Telogorejo Semarang', 'Jawa Tengah', 'Jl. Kh Ahmad Dahlan, Pekunden, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50134 ', '(024)86466000', 'RS Rujukan Provinsi Jawa Tengah', -6.98798300, 110.42646000),
(234, 'RSUD Dr. Drajat Prawiranegara', 'Banten', 'Jl. Rumah Sakit No. 1, Serang', '0254 200528', 'RS Rujukan Kemenkes', -6.11986800, 106.15261600),
(235, 'RS Dr S Djatikoesoemo', 'Jawa Timur', 'Jl. Dr. Wahidin 36, Bojonegoro', '(0353) 3412133', 'RS Rujukan Kemenkes', -7.15951100, 111.89963000),
(236, 'Tk III Lemdiklat Polri', 'DKI Jakarta', 'Jl. Ciputat Raya No.40, RT.1/RW.9, Pd. Pinang, Kec. Kby. Lama, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12310', '(021) 7650384', 'RS Rujukan Polri', -6.28675300, 106.77057300),
(237, 'RSU Dr Murjani Sampit', 'Kalimantan Tengah', 'Jl. H M Arsyad No. 65, Sampit', '(0531) 21010', 'RS Rujukan Kemenkes', -2.54274200, 112.94904900),
(238, 'Rumkit Tk. IV/Madiun', 'Jawa Timur', 'Jl. Pahlawan No.79, Kartoharjo, Kec. Kartoharjo, Kota Madiun, Jawa Timur 63121', '(0351) 454787', 'RS Rujukan TNI', -7.62944300, 111.51975300),
(239, 'RSAU-3 DR. DODDY SARDJOTO HND', 'Sulawesi Selatan', 'Jalan Poros Bandara Baru Hasanuddin, Baji Mangngai, Kec. Mandai, Kabupaten Maros, Sulawesi Selatan 90552', '(0411) 8954384', 'RS Rujukan TNI', -5.07183300, 119.53510700),
(240, 'RSU Dr. M Haulussy Ambon', 'Maluku', 'Jl. Dr. Kayadoe, Ambon 97116', '(0911) 353595', 'RS Rujukan Kemenkes', -3.70821400, 128.16547300),
(241, 'RS PKU Muhammadiyah Wonosobo', 'Jawa Tengah', '', '(0286) 329185 , 085794700150', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.37278000, 109.94052600),
(242, 'RSUD Dr. Loekmonohadi Kudus', 'Jawa Tengah', 'Jl. Dr. Lukmonohadi No. 19, Kudus', '(0291) 444001', 'RS Rujukan Kemenkes', -6.81881000, 110.83655700),
(243, 'RSUD Salatiga', 'Jawa Tengah', 'Jl. Osamaliki, Sidorejo Lor, Kec. Sidorejo, Kota Salatiga, Jawa Tengah 50721 ', '(0298) 324074', 'RS Rujukan Provinsi Jawa Tengah', -7.32771400, 110.49537000),
(244, 'Balai Teknik Kesehatan Lingkungan dan Pengendalian Penyakit DIY', 'DI Yogyakarta', 'Jl. Imogiri Tim. No.Km. 7,5, Grojogan, Wirokerten, Kec. Banguntapan, Bantul, Daerah Istimewa Yogyakarta', '(0274) 371588', 'Laboratorium Pemeriksaan', -7.82098700, 110.41504600),
(245, 'RS PKU Muhammadiyah Yogyakarta', 'Yogyakarta', '', '0274 512 653', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.80113200, 110.36225300),
(246, 'Rumkit Tk. II/Dustira Cimahi', 'Jawa Barat', 'Cimahi, Baros, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40521', '', 'RS Rujukan TNI', -6.88571800, 107.53492000),
(247, 'RSU Dr. M. Jamil Padang', 'Sumatera Barat', 'Jl. Perintis Kemerdekaan. Padang', '0751 32371', 'RS Rujukan Kemenkes', -0.94371400, 100.36750800),
(248, 'Tk III Lumajang', 'Jawa Timur', 'Jl. Kapten Kyai Ilyas No.7, Tompokersan, Kec. Lumajang, Kabupaten Lumajang, Jawa Timur 67316', '(0334) 881646', 'RS Rujukan Polri', -8.13317000, 113.22175400),
(249, 'Tk III Banjarmasin', 'Kalimantan Selatan', 'Jl. Ahmad Yani Kebun Bunga, Kec. Banjarmasin Tim., Kota Banjarmasin, Kalimantan Selatan 70237', '0813-5022-0436', 'RS Rujukan Polri', -3.32909500, 114.61112400),
(250, 'RSU Banyumas', 'Jawa Tengah', 'Jl. Rumah Sakit No. 1, Banyumas ', '0281 796031', 'RS Rujukan Provinsi Jawa Tengah', -7.52910800, 109.29268700),
(251, 'RSU Panglima Sebaya', 'Kalimantan Timur', 'Jl. Kusuma Bangsa Km.5 Tanah Grogot, Kab.Paser', '(0543) 24563', 'RS Rujukan Kemenkes', -1.87345500, 116.17867400),
(252, 'Tk III Bondowoso', 'Jawa Timur', 'Jalan Jend. Pol. S. Judhodiharjo No.12, Purbosari, Blindungan, Bondowoso, Bondowoso Regency, East Java 68219', '(0332) 433431', 'RS Rujukan Polri', -7.91082500, 113.82215700),
(253, 'RSUD Bendan Kota Pekalongan', 'Jawa Tengah', 'Jl. Sriwijaya No.2, Bendan, Kec. Pekalongan Bar., Kota Pekalongan, Jawa Tengah 51119 ', '(0285) 437222', 'RS Rujukan Provinsi Jawa Tengah', -6.89153100, 109.66146600),
(254, 'RSUD Pasar Minggu', 'DKI Jakarta', 'Jl. TB. Simatupang No.1 Kel.Ragunan, Pasar Minggu, Jakarta Selatan', '(021) 29059999', 'RS Rujukan Kemenkes', -6.29383500, 106.82018600),
(255, 'RS Paru Dr. Ario Wirawan', 'Jawa Tengah', 'Jl. Hasanudin No.806,Salatiga', '(0298) 326130 , (0298) 322703', 'RS Rujukan Kemenkes', -7.34898000, 110.48947100),
(256, 'Rumkit Tk. IV/JA Dimara Manokwari', 'Papua Barat', 'Jl. Brawijaya, Manokwari Timur, Manokwari Barat, Manokwari Tim., Manokwari Bar., Kabupaten Manokwari, Papua Barat. 98312', '', 'RS Rujukan TNI', -0.86320300, 134.07683800),
(257, 'RSAU-3 DR. M. SUTOMO LANUD SPO', 'Kalimantan Barat', 'Limbung, Sungai Raya, Limbung, Kec. Sungai Raya, Kabupaten Kubu Raya, Kalimantan Barat 78391', '', 'RS Rujukan TNI', -0.14434800, 109.41094600),
(258, 'Rumkit Tk. IV/Salatiga', 'Jawa Tengah', 'Jl. DR. Muwardi No.50, Kutowinangun Kidul, Kec. Tingkir, Kota Salatiga, Jawa Tengah 50711', '(0298) 326045', 'RS Rujukan TNI', -7.33119500, 110.51055900),
(259, 'RSU Raden Mattaher Jambi', 'Jambi', 'Jl. Letjen. Soeprapto No. 31, Telanaipura, Jambi', '(0741) 61692 , 61694 , 63394 , 62364', 'RS Rujukan Kemenkes', -1.60346200, 103.58003500),
(260, 'RSU Puri Husada', 'Riau', 'Jl. Veteran No. 52, Hilir Tembilahan', '(0768) 24563', 'RS Rujukan Kemenkes', -0.32295400, 103.16315400),
(261, 'Balai Teknik Kesehatan Lingkungan dan Pengendalian Jakarta', 'DKI Jakarta', 'Jl. Balai Rakyat No.2, RT.12/RW.1, Cakung Tim., Kec. Cakung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13910', '(021) 46824247', 'Laboratorium Pemeriksaan', -6.18306000, 106.95887400),
(262, 'Rumkit Tk. IV/dr. Soemantri Pare-Pare', 'Sulawesi Selatan', 'Jl. Karaeng Burane No.24, Ujung Bulu, Kec. Ujung, Kota Pare-Pare, Sulawesi Selatan 91113', '(0421) 21240', 'RS Rujukan TNI', -4.01287800, 119.62472100),
(263, 'RSUD Komodo Labuan Bajo', 'Nusa Tenggara Timur', 'Jl. Raya Labuan Banjo, Desa Golo Bilas, Kec.Komodo', '81337055250', 'RS Rujukan Kemenkes', -8.54126200, 119.89626600),
(264, 'RSAU-4 LANUD DHOMBER BALIKPAPAN', 'Kalimantan Timur', 'Jl. Marsma Iswahyudi RT. 41, Sepinggan, Balikpapan Selatan, Sepinggan, Kecamatan Balikpapan Selatan, Kota Balikpapan, Kalimantan Timur 76116', '(0542) 765554', 'RS Rujukan TNI', -1.26013100, 116.91491800);
INSERT INTO `rumahsakit` (`id`, `nama`, `provinsi`, `alamat`, `telepon`, `keterangan`, `latitude`, `longitude`) VALUES
(265, 'RSUD Cilacap', 'Jawa Tengah', 'Cilacap, Tambaksari, Sidanegara, Kec. Cilacap Tengah, Kabupaten Cilacap, Jawa Tengah 53212 ', '(0282) 533010', 'RS Rujukan Provinsi Jawa Tengah', -7.71704200, 109.01533700),
(266, 'RSUD Jend. Ahmad Yani Metro', 'Lampung', 'Jl. Jend. A.Yani No.13 Kota Metro Lampung', '(0725) 41820', 'RS Rujukan Kemenkes', -5.11572400, 105.31013000),
(267, 'RS Aisyiyah Ponorogo', 'Jawa Timur', '', '(0352) 461560', 'RS Rujukan Muhammadiyah & Aisyiyah', -7.86843000, 111.47163100),
(268, 'RSU Dr. Saiful Anwar', 'Jawa Timur', 'Jl. Jaksa Agung Suprapto No. 2, Malang', '0341 362101', 'RS Rujukan Kemenkes', -7.97252300, 112.63155900),
(269, 'RSU Sanjiwani Gianyar', 'Bali', 'Jl. Ciung Wenara No. 2, Gianyar', '(0361) 943049', 'RS Rujukan Kemenkes', -8.53724700, 115.32254000),
(270, 'Rumkit Tk. IV /Bengkulu', 'Bengkulu', 'Jl. Zainul Arifin No.27, Tim. Indah, Kec. Singaran Pati, Kota Bengkulu, Bengkulu 38225', '', 'RS Rujukan TNI', -3.81751700, 102.30937900),
(271, 'RSU Bhayangkara Semarang', 'Jawa Tengah', 'Jl. Majapahit No.140, Gayamsari, Kec. Gayamsari, Kota Semarang, Jawa Tengah 50248 ', '(0298) 326045', 'RS Rujukan Provinsi Jawa Tengah', -7.00022900, 110.44624700),
(272, 'RS Dr Soedono', 'Jawa Timur', 'Jl. Dr. Sutomo No.59, Kartoharjo, Kec. Kartoharjo, Kota Madiun, Jawa Timur 63117', '(0351) 464325 , 464326 , 454567', 'RS Rujukan Kemenkes', -7.62640500, 111.52402600),
(273, 'RSU Undata Palu', 'Sulawesi Tengah', 'Jl. R.E. Martadinata, Tondo, Kec. Mantikulore', '0451 490 8020', 'RS Rujukan Kemenkes', -0.85781300, 119.88404600),
(274, 'Tk III Setukpa', 'Jawa Barat', 'Jl Aminta Azmali Trip No.59A, Sriwidari, Kec. Gunungpuyuh, Kota Sukabumi, Jawa Barat 43121', '(0266) 226262', 'RS Rujukan Polri', -6.91232600, 106.92246700),
(275, 'RUMKITBAN SIDOARJO', 'Jawa Timur', 'Jl. Dr. Soetomo No.2, Gajah Timur, Magersari, Kec. Sidoarjo, Kabupaten Sidoarjo, Jawa Timur 61212', '(031) 8964610', 'RS Rujukan TNI', -7.44458900, 112.71656400),
(276, 'Tk. III Pusdik Brimob Watukosek', 'Jawa Timur', 'Jl. Raya Watukosek, Watukosek, Gempol, Wates, Watukosek, Kec. Gempol, Pasuruan, Jawa Timur 67155', '(0343) 856965', 'RS Rujukan Polri', -7.56832800, 112.65966400),
(277, 'RSUD H. Boejasin Pelaihari', 'Kalimantan Selatan', 'Jl. Hadji Boejasin No.68A, Angsau, Kab. Tanah Laut', '(0512) 21083 , 22009', 'RS Rujukan Kemenkes', -3.46120200, 114.80087800),
(278, 'RSAL-3 FX. SOEHARDJO', 'Maluku', 'Halong, Baguala, Kota Ambon, Maluku', '', 'RS Rujukan TNI', -3.65597200, 128.22343000),
(279, 'RSUD Bagas Waras Klaten', 'Jawa Tengah', 'RT.04/RW.09, Buntalan, Kec. Klaten Tengah, Kabupaten Klaten, Jawa Tengah ', '(0272) 3359666', 'RS Rujukan Provinsi Jawa Tengah', -7.72823500, 110.60552100),
(280, 'RSUD Setjonegoro Wonosobo', 'Jawa Tengah', 'RSUD Jl. Rumah Sakit No. 1, Wonosobo Wonosobo Bar. Kec. Wonosobo, Stasiun, Wonosobo Bar., Kec. Wonosobo, Kabupaten Wonosobo, Jawa Tengah 56311 ', '(0286) 321091', 'RS Rujukan Provinsi Jawa Tengah', -7.36326700, 109.89847200),
(281, 'RS Fastabiq Sehat PKU Muhammadiyah Pati', 'Jawa Tengah', '', '4199008', 'RS Rujukan Muhammadiyah & Aisyiyah', -6.72904200, 111.05156200),
(282, 'RSAL-2. MARINIR CILANDAK', 'DKI Jakarta', 'Jl. Raya Cilandak Kko, RT.3/RW.5, Cilandak Tim., Kec. Ps. Minggu, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12560', '(021) 7805296', 'RS Rujukan TNI', -6.30474900, 106.81042900),
(283, 'RSUD dr. R. Soedjati Grobogan', 'Jawa Tengah', 'Jl. D. I. Panjaitan No.36, Ngabean, Purwodadi, Kec. Purwodadi, Kabupaten Grobogan, Jawa Tengah 58111 ', '(0292) 421004', 'RS Rujukan Provinsi Jawa Tengah', -7.08469100, 110.92015200),
(284, 'RSU Dr. Kariadi Semarang', 'Jawa Tengah', 'Jl. Dr.Sutomo No. 16, Semarang ', '(024) 8413476', 'RS Rujukan Provinsi Jawa Tengah', -6.99418100, 110.40748800),
(285, 'Rumkit Tk. IV/Tegal', 'Jawa Tengah', 'Jl. Raya Pagongan Jl. RS DKT Pagongan, Jetis, Lemahduwur, Kec. Adiwerna, Tegal, Jawa Tengah 52125', '(0283) 351420', 'RS Rujukan TNI', -6.90470400, 109.13239500),
(286, 'RSUD R. Syamsudin, SH Kota Sukabumi', 'Jawa Barat', 'Jl. Rumah Sakit No.1 Kota Sukabumi', '(0266) 225180 , 225181', 'RS Rujukan Kemenkes', -6.91542600, 106.93514600),
(287, 'RSUD K.R.M.T Wongsonegoro Kota Semarang', 'Jawa Tengah', 'Jl. Fatmawati No.1 Semarang 50272 ', '(024) 6711500', 'RS Rujukan Provinsi Jawa Tengah', -7.03331700, 110.46690300),
(288, 'RSUD Tidar Kota', 'Jawa Tengah', 'Jl. Tidar No. 30A, Kota Magelang', '(0293) 362260 , 362463', 'RS Rujukan Kemenkes', -7.48550100, 110.21824000),
(289, 'RSUD Muntilan Kab. Magelang', 'Jawa Tengah', 'Kartini No.13, Balemulyo, Muntilan, Kec. Muntilan, Magelang, Jawa Tengah 56411 ', '(0293) 587004', 'RS Rujukan Provinsi Jawa Tengah', -7.58298500, 110.29105300),
(290, 'RSU Dr. H. Soewondo', 'Jawa Tengah', 'Jl. Laut 21, Kendal', '0294 381433', 'RS Rujukan Kemenkes', -6.91781900, 110.20620400),
(291, 'RST Slamet Riyadi Surakarta', 'Jawa Tengah', 'Jl. Slamet Riyadi No No.321Kvi, Purwosari, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57148 ', '(0271) 714656', 'RS Rujukan Provinsi Jawa Tengah', -7.56583600, 110.80524000),
(292, 'RSU Dr. Wahidin Sudirohusodo', 'Sulawesi Selatan', 'Jl. Perintis Kemerdekaan KM 11, Makassar 90245', '(0411) 584677', 'RS Rujukan Kemenkes', -5.13499000, 119.49360300),
(293, 'RSPAD Gatot Subroto', 'DKI Jakarta', 'Jl. Dr.A. Rahman Saleh No. 24, Jakpus', '(021) 3440693', 'RS Rujukan Kemenkes', -6.17657500, 106.83715100),
(294, 'Rumkit Tk. IV/Palangkaraya', 'Kalimantan Tengah', 'Jl. Ahmad Yani No.22, Langkai, Kec. Pahandut, Kota Palangka Raya, Kalimantan Tengah 73111', '', 'RS Rujukan TNI', -2.20934900, 113.93130700),
(295, 'Rumkit Tk. II/dr.Soedjono Magelang', 'Jawa Tengah', 'Jl. Jend. Urip Sumoharjo No.48, Wates, Kec. Magelang Utara, Kota Magelang, Jawa Tengah 56113', '(0293) 363061', 'RS Rujukan TNI', -7.46779800, 110.22608400),
(296, 'Rumkit Tk. II/Soepraoen Malang', 'Jawa Timur', 'Jl. S. Supriadi No.22, Sukun, Kec. Sukun, Kota Malang, Jawa Timur 65112', '(0341) 325112', 'RS Rujukan TNI', -7.98984700, 112.62048100),
(297, 'Tk.III Lampung', 'Lampung', 'Jl. Pramuka No.88, Rajabasa, Kec. Rajabasa, Kota Bandar Lampung, Lampung', '(0721) 706402', 'RS Rujukan Polri', -5.37431000, 105.22423800),
(298, 'Rumkit Tk. IV/Singaraja', 'Bali', 'Jl. Ngurah Rai No.70, Banjar Jawa, Kec. Buleleng, Kabupaten Buleleng, Bali 81113', '', 'RS Rujukan TNI', -8.11377100, 115.09193600),
(299, 'RSAU-3 DR. HASAN TOTO ATS', 'Jawa Barat', 'Jalan Sarjio No. 1, Atang Senjaya, Kemang, Atang Senjaya, Kec. Kemang, Bogor, Jawa Barat 16310', '(0251) 7535976', 'RS Rujukan TNI', -6.54418200, 106.76269300),
(300, 'RSUD dr. M Ashari Pemalang', 'Jawa Tengah', 'Jl. Gatot Subroto No.41, Bojongbata, Kec. Pemalang, Kabupaten Pemalang, Jawa Tengah 52319 ', '(0284) 321614', 'RS Rujukan Provinsi Jawa Tengah', -6.91064800, 109.38232700),
(301, 'RSU Abdul Moeloek', 'Lampung', 'Jl. Dr. Rivai No. 6, Tj. Karang, Lampung 35112', '(0721) 703312 , 702455', 'RS Rujukan Kemenkes', -5.40276400, 105.25866400),
(302, 'Rumkit Tk.IV/Bukit Tinggi', 'Sumatera Barat', 'Jl. Sudirman, Birugo, Kec. Aur Birugo Tigo Baleh, Kota Bukittinggi, Sumatera Barat 26181', '(0752) 8100746', 'RS Rujukan TNI', -0.31098300, 100.37361500),
(303, 'RS Universitas Airlangga', 'Jawa Timur', 'Kampus C Universitas Airlangga, Mulyorejo, Surabaya', '(031) 5916290 , 5916287 , 58208290', 'RS Rujukan Kemenkes', -7.27020800, 112.78611400),
(304, 'RS Muhammadiyah Palembang', 'Sumatera Selatan', '', '(0711) 511446', 'RS Rujukan Muhammadiyah & Aisyiyah', -2.99614500, 104.77657400),
(305, 'RSAU-4 LANUD SAMRATULANGI (SRI)', 'Sulawesi Utara', 'Jl. A.A Maramis Paniki Bawah, Mapanget, Manado City, North Sulawesi', '', 'RS Rujukan TNI', 1.53558400, 124.92200400),
(306, 'RSAL-3 ILYAS', 'Kalimantan Utara', 'Jl. RE Martadinata No.29, Pamusian, Tarakan Tengah, Kota Tarakan, Kalimantan Utara', '', 'RS Rujukan TNI', 3.30836600, 117.60076300),
(307, 'RSU Tarutung', 'Sumatera Utara', 'Jl. Agus Salim No.1 Tarutung, Kab. Tapanuli Utara', '(0633) 21303 , 20450', 'RS Rujukan Kemenkes', 2.02688400, 98.96071200),
(308, 'Rumkit Tk II Banda Aceh', 'Aceh', 'Jl. T. Angkasa Bendahara, Kuta Alam, Kec. Kuta Alam, Kota Banda Aceh, Aceh 24415', '(0651) 24712', 'RS Rujukan TNI', 5.55479200, 95.32454400),
(309, 'Rumkit Tk. IV/Pematang Siantar', 'Sumatera Utara', 'Jl. Gunung Simanuk Manuk No.6, Timbang Galung, Kec. Siantar Bar., Kota Pematang Siantar, Sumatera Utara 21143', '', 'RS Rujukan TNI', 2.95139200, 99.05716300),
(310, 'RSU Prof. Dr. H. Aloei Saboe', 'Gorontalo', 'Jl. Prof. Dr. Aloe Saboe, Wongkaditi, Kota Utara, Kota Gorontalo, Gorontalo 96115', '', 'RS Rujukan Kemenkes', 0.55544700, 123.08401900),
(311, 'RSAU-3 DR. SUKIRMAN LANUD RSN', 'Riau', 'Jl. Adi Sucipto, Sidomulyo Tim., Kec. Marpoyan Damai, Kota Pekanbaru, Riau 28289', '', 'RS Rujukan TNI', 0.46352300, 101.43012200),
(312, 'Rumkit Tk. IV/Sintang', 'Kalimantan Barat', 'Jalan MT. Haryono KM. 03, Kapuas Kanan Hulu, Kecamatan Sintang, Kapuas Kanan Hulu, Kec. Sintang, Kabupaten Sintang, Kalimantan Barat 78613', '0823-5207-8510', 'RS Rujukan TNI', 0.06332300, 111.47733900),
(313, 'Tk III Pekanbaru', 'Riau', 'Jalan RA Kartini No.14, Simpang Empat, Pekanbaru Kota, Simpang Empat, Kec. Pekanbaru Kota, Kota Pekanbaru, Riau 28156', '(0761) 47691', 'RS Rujukan Polri', 0.52050200, 101.44899400),
(314, 'RSU Tanjung Selor', 'Kalimantan Utara', 'Jl. Cendrawasih, Tanjung Selor Hilir, Kec.Tanjung Selor, Kab.Bulungan', '(0552) 21118', 'RS Rujukan Kemenkes', 2.83032600, 117.38090000),
(315, 'RSU H. Adam Malik Medan', 'Sumatera Utara', 'Jl. Bunga Lau No. 17', '(061) 8360051', 'RS Rujukan Kemenkes', 3.51845300, 98.60862400),
(316, 'RSU Dumai', 'Riau', 'Jl. Tanjung Jati No.4, Dumai', '(0765) 440992', 'RS Rujukan Kemenkes', 1.67843900, 101.45948700),
(317, 'RSU Dr Sam Ratulangi', 'Sulawesi Utara', 'Jl. Suprapto No.123, Luaan, Tondano Tim., Kabupaten Minahasa, Sulawesi Utara', '(0431) 321171', 'RS Rujukan Kemenkes', 1.30959200, 124.91656300),
(318, 'RSAL-4 LILIPORY', 'Aceh', 'Jl. Teuku Cik Ditiro, Kuta Ateueh, Sukakarya, Kota Sabang, Aceh 24411', '', 'RS Rujukan TNI', 5.89430800, 95.32552600),
(319, 'Rumkit Tk. II/RW. Mongisidi/Manado', 'Sulawesi Utara', 'Kota Manado, Teling Bawah, Kec. Wenang, Kota Manado, Sulawesi Utara', '', 'RS Rujukan TNI', 1.47488200, 124.84230900),
(320, 'Rumkit Tk. IV/Ternate', 'Maluku Utara', 'Jl. A.I.S Nasution, Santiong, Ternate Tengah, Kota Ternate, Maluku Utara', '(0921) 3128434', 'RS Rujukan TNI', 0.78849600, 127.38723100),
(321, 'RSU Dr Abdul Azis Singkawang', 'Kalimantan Barat', 'Jl. Dr. Soetomo No. 28, Pasiran - Singkawang', '(0562) 631798', 'RS Rujukan Kemenkes', 0.89543500, 108.97270700),
(322, 'RSU Kabanjahe', 'Sumatera Utara', 'Jl. Selamat Ketaren, Lau Cimba, Kabanjahe, Kabupaten Karo, Sumatera Utara 22111', '(0628) 20012', 'RS Rujukan Kemenkes', 3.09792200, 98.49146900),
(323, 'RSU Kota Tarakan', 'Kalimantan Utara', 'Jl. Pulau Irian No.1, Kp. Satu Skip, Tarakan Tengah, Kota Tarakan', '(0551)21166 , Tim Satgas Pengaduan (0812 5409 118)', 'RS Rujukan Kemenkes', 3.31821900, 117.60506400),
(324, 'RSU Ratatotok - Buyat', 'Sulawesi Utara', 'JL. J.W. Lasut Ratatotok II Kecamatan Ratatotok', '(0431) 321171', 'RS Rujukan Kemenkes', 0.87007000, 124.69978000),
(325, 'RSUD Provinsi Kep. Riau Tanjungpinang', 'Kepulauan Riau', 'Jl. WR Supratman No. 100, KM 8 Tanjungpinang', '(0771) 7335203', 'RS Rujukan Kemenkes', 0.92357100, 104.50028100),
(326, 'Tk II Medan', 'Sumatera Utara', 'Jl. K.H. Wahid Hasyim No.1, Merdeka, Kec. Medan Baru, Kota Medan, Sumatera Utara 20222', '(061) 8215990', 'RS Rujukan Polri', 3.57325500, 98.65847500),
(327, 'RSU Dr. Zainoel Abidin Banda Aceh', 'Aceh', 'Jl. Tgk. Daud Beureuh No. 108, Banda Aceh', '(0651) 34562', 'RS Rujukan Kemenkes', 5.56378300, 95.33760000),
(328, 'Tk.III Manado', 'Sulawesi Utara', 'Jln Samrat no depan Rumah Sakit Bhayangkara, Karombasan Utara, Kec. Wanea, Kota Manado, Sulawesi Utara', '(0431) 840455', 'RS Rujukan Polri', 1.45538000, 124.83706100),
(329, 'RSU Padang Sidempuan', 'Sumatera Utara', 'Jl. Dr. FL Tobing, Padang Sidempuan', '0634 21780 Fax: 0634 21251', 'RS Rujukan Kemenkes', 1.37195600, 99.27165700),
(330, 'RSU Taman Husada Bontang', 'Kalimantan Timur', 'Jl. S. Parman No. 01, Kel.Belimbing, Bontang 75331', '(0548) 22111 , (IGD 0548) 23000', 'RS Rujukan Kemenkes', 0.14261900, 117.44780600),
(331, 'RSAL-3 KOMANG MAKES', 'Sumatera Utara', 'Jl. Bengkalis No.1, Belawan I, Medan Kota Belawan, Kota Medan, Sumatera Utara 20411', '(061) 6941741', 'RS Rujukan TNI', 3.78459900, 98.68593900),
(332, 'RSU Cut Meutia Lhokseumawe', 'Aceh', 'Jl. Banda Aceh Medan KM 5 Buket Rata, Lhokseumawe', '(0645) 46334', 'RS Rujukan Kemenkes', 4.46904400, 97.96984500),
(333, 'RSBP Batam', 'Kepulauan Riau', 'Jl. Dr. Ciptomangunkusumo, Sekupang Batam', '(0778) 322046 , 322121', 'RS Rujukan Kemenkes', 1.12991400, 103.93171000),
(334, 'Tk III Tebing Tinggi', 'Sumatera Utara', 'Jl. Pahlawan No.17, Rambung, Kec. Tebing Tinggi Kota, Kota Tebing Tinggi, Sumatera Utara 20631', '(0621) 326701', 'RS Rujukan Polri', 3.32367200, 99.16154000),
(335, 'RSAU-4 DR. ABDUL MALIK LANUD SWO', 'Sumatera Utara', 'Jl. Imam Bonjol No.50, Suka Damai, Kec. Medan Polonia, Kota Medan, Sumatera Utara 20157', '(061) 4572323', 'RS Rujukan TNI', 3.57195300, 98.67765500),
(336, 'RSAL-3 WAHYU SLAMET', 'Sulawesi Utara', 'Jalan Yos Sudarso No.26, Bitung Tengah, Maesa, Kota Bitung, Sulawesi Utara', '', 'RS Rujukan TNI', 1.44530500, 125.18595000),
(337, 'RSAU-3 DR. YUNIATI WISMA RANAI', 'Kep. Riau', 'Kawasan Bandara AU, Ranai Kota, Bunguran Tim., Kabupaten Natuna, Kepulauan Riau 29783', '', 'RS Rujukan TNI', 3.91498700, 108.37937000),
(338, 'RSU Prof. DR. RD Kandou', 'Sulawesi Utara', 'Jl. Raya Tanawangko No.56, Malalayang Satu Barat, Kec. Malalayang, Kota Manado, Sulawesi Utara', '(0431) 8383058', 'RS Rujukan Kemenkes', 1.45354200, 124.80817700),
(339, 'Rumkit Tk. IV/Padang Sidempuan', 'Sumatera Utara', 'Jl. Padang Sidempuan, Losung Batu, Padangsidimpuan Utara, Kota Padang Sidempuan, Sumatera Utara 22733', '', 'RS Rujukan TNI', 1.39654800, 99.24996900),
(340, 'RSU Arifin Ahmad Pekan Baru', 'Riau', 'Jl. Diponegoro No. 2, Pekanbaru', '(0761) 23418 , 21618 , 21657', 'RS Rujukan Kemenkes', 0.52338900, 101.45217800),
(341, 'RSUD Muhammad Sani (Kab. Karimun)', 'Kepulauan Riau', 'Jl. Soekarno - Hatta No. 1 Tanjung Balai Karimun', '(0777) 327808', 'RS Rujukan Kemenkes', 1.01359400, 103.41372900),
(342, 'Rumkit Tk. IV LHokseumawe', 'Aceh', 'JL. Samudera, Hagu Sel., Banda Sakti, Kota Lhokseumawe, Aceh', '(0645) 40300', 'RS Rujukan TNI', 5.18252400, 97.14972900),
(343, 'RSAL-2 MIDIATO SURYATANI', 'Kepulauan Riau', 'Jl. Ciptadi No.1, Tanjungpinang Kota, Kota Tanjung Pinang, Kepulauan Riau', '(0771) 21428', 'RS Rujukan TNI', 0.92611600, 104.44097100),
(344, 'Rumkit Tk.IV/Binjai', 'Sumatera Utara', 'Jl. Bandung, Rambung Barat no 4 Binjai Selatan, Kota Binjai, Sumatera Utara 20735', '(061) 8827705', 'RS Rujukan TNI', 3.59814400, 98.48746600),
(345, 'Rumkit TK IV Meulaboh', 'Aceh', 'Suwak Indrapuri, Johan Pahlawan, Kabupaten Aceh Barat, Aceh 23681', '', 'RS Rujukan TNI', 4.13210300, 96.13182000),
(346, 'RS Mokopido Toli-Toli', 'Sulawesi Tengah', 'Jl. Lanoni No.37 Kel Baru Kec.Baolan, kab.Toli-Toli', '(0453) 21301', 'RS Rujukan Kemenkes', 1.03591100, 120.82277500),
(347, 'RSU Chasan Basoeri Ternate', 'Maluku Utara', 'Jl. Cempaka Kel. Tanah Tinggi Kota Ternate', '(0921) 3121281', 'RS Rujukan Kemenkes', 0.78209500, 127.37577700),
(348, 'RSUD Ade Mohammad Djoen Sintang', 'Kalimantan Barat', 'Jl. YC Oevang Oeray No.1 Sintang Kota', '(0565) 21002', 'RS Rujukan Kemenkes', 0.07850300, 111.49601900),
(349, 'RSUD Dr. Djasamen Saragih', 'Sumatera Utara', 'Jl. Sutomo No. 230, Pematang Siantar', '(0622) 22959', 'RS Rujukan Kemenkes', 2.95820600, 99.06974500),
(350, 'RSUD Kota Kotamobagu', 'Sulawesi Utara', 'Kelurahan Pobundayan Kecamatan Kotamobagu Selatan', '(0435) 822816', 'RS Rujukan Kemenkes', 0.70820500, 124.30727200),
(351, 'Rumkit Tk. IV/Pekan Baru', 'Riau', 'Jl. Kesehatan No.2, Kp. Bandar, Kec. Senapelan, Kota Pekanbaru, Riau 28155', '(0761) 22426', 'RS Rujukan TNI', 0.53646200, 101.44108500),
(352, 'RSUD Embung Fatimah', 'Kepulauan Riau', 'Jl. R. Soeprapto. Blok D 1 - 9 Batu Aji Kota Batam', '(0778) 364446', 'RS Rujukan Kemenkes', 1.05062800, 103.96781100),
(353, 'Rumkit Tk. IV/Singkawang', 'Kalimantan Barat', 'Jl. R.A. Kartini No.47, Sekip Lama, Singkawang Tengah, Kota Singkawang, Kalimantan Barat 79113', '0812-8589-6364', 'RS Rujukan TNI', 0.91547200, 108.99250100),
(354, 'Rumkit Tk. II/ Putri Hijau Medan', 'Sumatera Utara', 'Jl. Putri Hijau No.17, Kesawan, Kec. Medan Bar., Kota Medan, Sumatera Utara 20111', '(061) 4553900', 'RS Rujukan TNI', 3.59972200, 98.67269700);

-- --------------------------------------------------------

--
-- Table structure for table `spesialis`
--

CREATE TABLE `spesialis` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spesialis`
--

INSERT INTO `spesialis` (`id`, `nama`) VALUES
(1, 'penyakit dalam'),
(2, 'anak'),
(3, 'saraf'),
(4, 'kandungan dan ginekologi'),
(5, 'bedah'),
(6, 'kulit dan kelamin'),
(7, 'tht'),
(8, 'mata'),
(9, 'psikiater'),
(10, 'gigi'),
(11, 'umum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apotek`
--
ALTER TABLE `apotek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokter_ibfk_1` (`spesialis`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sakit1` (`sakit1`),
  ADD KEY `sakit2` (`sakit2`),
  ADD KEY `sakit3` (`sakit3`),
  ADD KEY `sakit4` (`sakit4`),
  ADD KEY `sakit5` (`sakit5`),
  ADD KEY `sakit6` (`sakit6`),
  ADD KEY `sakit7` (`sakit7`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penyakit_ibfk_1` (`gejala1`),
  ADD KEY `penyakit_ibfk_2` (`gejala2`),
  ADD KEY `gejala3` (`gejala3`),
  ADD KEY `gejala4` (`gejala4`),
  ADD KEY `gejala5` (`gejala5`),
  ADD KEY `gejala7` (`gejala7`),
  ADD KEY `gejala8` (`gejala8`),
  ADD KEY `penyakit_ibfk_10` (`gejala10`),
  ADD KEY `penyakit_ibfk_9` (`gejala9`),
  ADD KEY `penyakit_ibfk_6` (`gejala6`);

--
-- Indexes for table `percakapan`
--
ALTER TABLE `percakapan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proses`
--
ALTER TABLE `proses`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `rumahsakit`
--
ALTER TABLE `rumahsakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spesialis`
--
ALTER TABLE `spesialis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apotek`
--
ALTER TABLE `apotek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `percakapan`
--
ALTER TABLE `percakapan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rumahsakit`
--
ALTER TABLE `rumahsakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `spesialis`
--
ALTER TABLE `spesialis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dokter`
--
ALTER TABLE `dokter`
  ADD CONSTRAINT `dokter_ibfk_1` FOREIGN KEY (`spesialis`) REFERENCES `spesialis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `obat_ibfk_1` FOREIGN KEY (`sakit1`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obat_ibfk_2` FOREIGN KEY (`sakit2`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obat_ibfk_3` FOREIGN KEY (`sakit3`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obat_ibfk_4` FOREIGN KEY (`sakit4`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obat_ibfk_5` FOREIGN KEY (`sakit5`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obat_ibfk_6` FOREIGN KEY (`sakit6`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obat_ibfk_7` FOREIGN KEY (`sakit7`) REFERENCES `penyakit` (`id`);

--
-- Constraints for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD CONSTRAINT `penyakit_ibfk_1` FOREIGN KEY (`gejala1`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penyakit_ibfk_10` FOREIGN KEY (`gejala10`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penyakit_ibfk_2` FOREIGN KEY (`gejala2`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penyakit_ibfk_3` FOREIGN KEY (`gejala3`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penyakit_ibfk_4` FOREIGN KEY (`gejala4`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penyakit_ibfk_5` FOREIGN KEY (`gejala5`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penyakit_ibfk_6` FOREIGN KEY (`gejala6`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penyakit_ibfk_7` FOREIGN KEY (`gejala7`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penyakit_ibfk_8` FOREIGN KEY (`gejala8`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penyakit_ibfk_9` FOREIGN KEY (`gejala9`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
