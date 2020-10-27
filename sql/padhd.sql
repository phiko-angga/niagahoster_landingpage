-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 09:38 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `padhd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(75) CHARACTER SET latin1 NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`, `group_id`) VALUES
(1, 'admin', 'admin', '$2a$08$1ReKzxWGAi9l.sAVnn1EXenmVexHNpOPIGRrh0XUjuKPF8bktixZy', 2);

-- --------------------------------------------------------

--
-- Table structure for table `gangguan`
--

CREATE TABLE `gangguan` (
  `id` int(11) NOT NULL,
  `id_gangguan` varchar(10) NOT NULL,
  `jenis_gangguan` text NOT NULL,
  `definisi` varchar(500) NOT NULL,
  `solusi` text,
  `admin_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gangguan`
--

INSERT INTO `gangguan` (`id`, `id_gangguan`, `jenis_gangguan`, `definisi`, `solusi`, `admin_id`, `created_at`, `updated_at`) VALUES
(4, 'P01', 'Anak-anak dengan masalah utama adalah rendahnya konsentrasi dan kurangnya kemampuan untuk memusatkan perhatian.', 'Anak-anak dengan masalah utama adalah rendahnya konsentrasi dan kurangnya kemampuan untuk memusatkan perhatian.', '1. Mengurangi Ditraksi (sesuatu yang dapat mengganggu konsentrasi. misalnya seperti game, televisi ataupun radio.)\r\n2. Gradasi (memecah aktivitas yang dilakukan agar menjadi lebih ringan dan sedikit, misal mengurangi tugas rumah yang harus dikerjakan)\r\n3. Mengindari sesuatu apapun itu yang kemungkinan dapat memecah konsentrasi pada anak.\r\n4. Bermain Balok. Dengan bermain balok, anak dapat melatih konsentrasinya sedikit demi sedikit.\r\n5. Memberikan Petunjuk Pada Setiap Kegiatan Anak Secara Ringkas dan Jelas\r\n6. Belajar Berhitung. Belajar berhitung dapat membantu meningkatkan konsentrasi pada anak karna saat melakukan hitungan anak-anak cenderung fokus.\r\n7. Berjalan-Jalan atau aktivitas di luar ruangan seperti bersepeda agar anak-anak menjadi lebih rileks dan santai.', NULL, '2019-04-14 05:56:42', '2019-04-15 00:25:33'),
(5, 'P02', 'Implusivility', 'Anak-anak yang mengalami kesulitan untuk menunda respon (dorongan untuk mengatakan sesuatu/melakukan sesuatu dengan tidak sabar) dan selalu terburu-buru.', '1. Mendengarkan Musik sebagai Relaksasi (menurut beberapa penelitian, musik berpengaruh langsung ke otak sehingga mendengarkan musik dapat membuat anak menjadi rileks dan tenang.)\r\n2. Memberikan banyak atensi Positif. Dengan memberikan atensi yang positif, anak akan cenderung merasa senang sehingga emosionalnya dapat terkendali.\r\n3. Menyimak apapun yang dikatakan oleh anak (menjadi pendengar dan menyimak apapun yang dikatakan oleh anak dapat membuat perasaan anak menjadi tenang)\r\n4. Lakukan terapi bicara dan hindari anak dari Tantrum (mengoceh tanpa henti atau menjerit) dengan cara sederhana seperti memberikan instrupsi atau mengingatkan anak saat mereka mulai mengoceh.', NULL, '2019-04-14 05:58:14', '2019-04-13 23:19:32'),
(6, 'P03', 'Hyperactivity', 'Anak-anak yang masalah utamanya diakibatkan oleh perilaku yang tidak bisa diam.', '1. Jauhkan dari Gangguan, misalnya dengan menempatkan mereka jauh dari area pintu, jendela dan segala hal yang menjadi sumber kebisingan.\r\n2. Atur pola hidup yang terstruktur dengan memberi perintah yang jelas dan sebuah pola tersturktur untuk diikuti karna mereka cenderung lebih cepat cemas saat mereka tidak tahu apa yang harus mereka lalukan selanjutnya. Misalnya menentukan kapan waktu untuk makan, sikat gigi, belajar, bermain dan tidur. Dengan rutinitas terencana, otak anak akan belajar menerima sesuatu yang lebih terstruktur.\r\n3. Membuat peraturan yang jelas dan konsisten dengan memberlakukan sistem hukuman dan hadiah.\r\n4. Bersikap sabar. anak hiperaktif memang sering kali membuat kesal karna ledakan kegembiraan atau\r\n26\r\nkemarahan secara tiba-tiba saat suasana hatinya memburuk. Untuk mendinginkan kepalanya, ajarkan anak-anak teknik pernafasan sederhana: mengambil napas dalam-dalam lalu menghembuskannya secara perlahan selama beberapa kali sampai tenang.\r\n5. Memperhatikan makanan yang dikonsumsi. penuhi asupan nutrisinya dengan gizi yang seimbang empat sehat lima sempurna.\r\n6. Yoga atau Meditasi. Kegiatan ini disinyalir dapat membantu anak-anak untuk merasa rileks dan disiplin.\r\n7. Olahraga, kegiatan ini dapat memberikan efek positif pada perilaku anak-anak yang hiperaktif.', NULL, '2019-04-14 06:18:52', '2019-04-14 06:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `id_gejala` varchar(10) NOT NULL,
  `nama_gejala` varchar(500) DEFAULT NULL,
  `nilai_cf` float DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `id_gejala`, `nama_gejala`, `nilai_cf`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'G32', 'Kurang fokus', 15, NULL, '2019-03-29 07:24:47', '2019-04-15 00:13:24'),
(3, 'G2', 'Ceroboh mengerjakan tugas di rumah atau kegiatan lain', NULL, NULL, '2019-04-14 05:53:22', '2019-04-13 23:11:34'),
(4, 'G3', 'Kesulitan mempertahankan perhatian saat bermain', NULL, NULL, '2019-04-14 05:53:45', '2019-04-13 23:11:25'),
(5, 'G4', 'Tampak tidak mendengarkan saat diajak bicara', NULL, NULL, '2019-04-14 06:11:16', '2019-04-14 06:11:16'),
(6, 'G5', 'Tidak bisa mengikuti instruksi dengan baik', NULL, NULL, '2019-04-14 06:11:59', '2019-04-14 06:11:59'),
(7, 'G6', 'Kesulitan dalam mengorganisasikan / menyelesaikan tugas dan kegiatan (contoh: menaruh sepatu lalu menaruh barang lalu membereskan tempat tidur)', NULL, NULL, '2019-04-14 06:15:09', '2019-04-14 06:15:09'),
(8, 'G7', 'Tidak menyukai / menghindari permainan yang membutuhkan usaha mental seperti membuat PR atau tugas sekolah (contoh: puzzle, lego, balok).', NULL, NULL, '2019-04-14 06:15:44', '2019-04-14 06:15:44'),
(9, 'G8', 'Kehilangan barang-barang', NULL, NULL, '2019-04-14 06:20:53', '2019-04-14 06:20:53'),
(10, 'G9', 'Mudah terdistraksi (mengalihkan perhatian) oleh stimulus-stimulus eksternal pada saat mengerjakan tugas atau kegiatan di rumah', NULL, NULL, '2019-04-14 06:21:09', '2019-04-14 06:21:09'),
(11, 'G10', 'Pelupa dalam kegiatan sehari-hari', NULL, NULL, '2019-04-14 06:21:29', '2019-04-14 06:21:29'),
(12, 'G11', 'Menggerakkan jari tangan dan kaki saat duduk di meja makan', NULL, NULL, '2019-04-14 06:21:45', '2019-04-14 06:21:45'),
(13, 'G12', 'Berlari-lari pada situasi yang tidak tepat (contoh: pada saat makan, menjelang tidur siang, mandi)', NULL, NULL, '2019-04-14 06:22:07', '2019-04-14 06:22:07'),
(14, 'G13', 'Memanjat pada situasi yang tidak tepat (contoh: pada saat makan, menjelang tidur siang, mandi)', NULL, NULL, '2019-04-14 06:22:24', '2019-04-14 06:22:24'),
(15, 'G14', 'Sering meminta mainan teman secara paksa', NULL, NULL, '2019-04-14 06:22:39', '2019-04-14 06:22:39'),
(16, 'G15', 'Kesulitan untuk bermain atau melakukan aktivitas luang dengan tenang', NULL, NULL, '2019-04-14 06:22:54', '2019-04-14 06:22:54'),
(17, 'G16', 'Bergerak tidak kenal lelah', NULL, NULL, '2019-04-14 06:23:12', '2019-04-14 06:23:12'),
(18, 'G17', 'Banyak berbicara', NULL, NULL, '2019-04-14 06:23:30', '2019-04-14 06:23:30'),
(19, 'G18', 'Menjawab pertanyaan sebelum pertanyaan selesai diajukan.', NULL, NULL, '2019-04-14 06:23:53', '2019-04-14 06:23:53'),
(20, 'G19', 'Sulit menunggu giliran (contoh: menonton tayangan televisi, merebut remote)', NULL, NULL, '2019-04-14 06:24:10', '2019-04-14 06:24:10'),
(21, 'G20', 'Menginterupsi / mengganggu kegiatan orang lain (contoh: menginterupsi ibu ketika memasak, atau anggota keluarga lain.)', NULL, NULL, '2019-04-14 06:24:26', '2019-04-14 06:24:26'),
(22, 'G21', 'Jika keinginannya tidak terpenuhi maka emosi akan meledak-ledak', NULL, NULL, '2019-04-14 06:24:45', '2019-04-14 06:24:45'),
(23, 'G22', 'Suasana hati yang berubah-ubah (tiba-tiba marah, dan tiba-tiba senang)', NULL, NULL, '2019-04-14 06:25:00', '2019-04-14 06:25:00'),
(24, 'G23', 'Agresifitas (suka memukul teman atau mengganggu kegiatan teman)', NULL, NULL, '2019-04-14 06:25:17', '2019-04-14 06:25:17'),
(25, 'G24', 'Distruktif (suka merusak barang)', NULL, NULL, '2019-04-14 06:25:35', '2019-04-14 06:25:35'),
(26, 'G25', 'Tidak bisa disiplin dan menaati peraturan, bahkan peraturan yang sederhana', NULL, NULL, '2019-04-14 06:25:53', '2019-04-14 06:25:53'),
(27, 'G26', 'Selalau khawatir dan takut', NULL, NULL, '2019-04-14 06:26:07', '2019-04-14 06:26:07'),
(28, 'G27', 'Terlihat tidak percaya diri dan menarik diri', NULL, NULL, '2019-04-14 06:26:24', '2019-04-14 06:26:24'),
(29, 'G28', 'Sangat peka atau sensitive pada kritikan', NULL, NULL, '2019-04-14 06:26:39', '2019-04-14 06:26:39'),
(30, 'G29', 'Sering menggeliat', NULL, NULL, '2019-04-14 06:26:53', '2019-04-14 06:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `deskripsi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Free User', 'User tanpa perlu login'),
(2, 'Admin', 'user yang memiliki sebagian akses, marter data');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` int(11) NOT NULL,
  `riwayat_id` int(11) DEFAULT NULL,
  `gangguan_id` varchar(10) DEFAULT NULL,
  `nilai_gangguan` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kontak_psikolog`
--

CREATE TABLE `kontak_psikolog` (
  `id_kontak` int(11) DEFAULT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `tempat_praktik` varchar(500) DEFAULT NULL,
  `jam_praktik_awal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jam_praktik_selesai` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak_psikolog`
--

INSERT INTO `kontak_psikolog` (`id_kontak`, `nama`, `no_telp`, `tempat_praktik`, `jam_praktik_awal`, `jam_praktik_selesai`) VALUES
(NULL, 'viko', '234242', 'banyuwangi', '2019-03-01 13:30:00', '2019-03-01 14:30:00'),
(NULL, 'angga', '222', 'gambiran', '2019-03-01 13:30:00', '2019-03-01 14:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_active` int(1) NOT NULL,
  `is_parent` int(1) NOT NULL,
  `order` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `icon`, `is_active`, `is_parent`, `order`) VALUES
(1, 'Beranda', 'dashboard', 'fa fa-list-alt', 1, 0, 1),
(2, 'menu management', 'menu', 'fa fa-list-alt', 0, 0, 2),
(3, 'Data Gejala', 'master_gejala', 'fa fa-list-alt', 1, 0, 3),
(4, 'Data Kontak', 'master_kontak', 'fa fa-list-alt', 1, 0, 4),
(5, 'Data Riwayat Konsultasi', 'master_riwayat', 'fa fa-list-alt', 1, 0, 6),
(6, 'Ubah Password', 'ubah_Password', 'fa fa-list-alt', 1, 0, 8),
(7, 'Data Gangguan', 'master_gangguan', 'fa fa-list-alt', 1, 0, 9),
(8, 'Data User', 'master_user', 'fa fa-list-alt', 1, 0, 10),
(9, 'Data Rule', 'master_rule', 'fa fa-list-alt', 1, 0, 11),
(10, 'Data Tentang', 'master_tentang', 'fa fa-list-alt', 1, 0, 12),
(11, 'Logout', 'logout', 'fa fa-list-alt', 1, 0, 13),
(12, 'Login', 'login', '', 1, 0, 14),
(13, 'Beranda', 'beranda', '', 1, 0, 1),
(14, 'Konsultasi', 'konsultasi', '', 1, 0, 2),
(15, 'Riwayat Konsultasi', 'riwayat', '', 1, 0, 3),
(16, 'Tentang', 'tentang', '', 1, 0, 4),
(17, 'Kontak', 'kontak', '', 1, 0, 5),
(18, 'ADHD Panduan', 'panduan', '', 1, 16, 6);

-- --------------------------------------------------------

--
-- Table structure for table `menu_filter`
--

CREATE TABLE `menu_filter` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` enum('n','y') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_filter`
--

INSERT INTO `menu_filter` (`id`, `menu_id`, `group_id`, `status`) VALUES
(1, 1, 2, 'y'),
(2, 2, 2, 'y'),
(3, 3, 2, 'y'),
(4, 4, 2, 'y'),
(5, 5, 2, 'y'),
(6, 6, 2, 'y'),
(7, 7, 2, 'y'),
(8, 8, 2, 'y'),
(9, 9, 2, 'y'),
(10, 10, 2, 'y'),
(11, 11, 2, 'y'),
(12, 12, 2, 'y'),
(13, 13, 1, 'y'),
(14, 14, 1, 'y'),
(15, 15, 1, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_konsultasi`
--

CREATE TABLE `riwayat_konsultasi` (
  `id_riwayat` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id` int(11) NOT NULL,
  `id_rule` varchar(10) NOT NULL,
  `gejala_id` varchar(10) DEFAULT NULL,
  `gangguan_id` varchar(10) DEFAULT NULL,
  `nilai_cf` float DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id`, `id_rule`, `gejala_id`, `gangguan_id`, `nilai_cf`, `created_at`, `updated_at`) VALUES
(1, 'G01', 'P02', 'P03', 0, '2019-04-14 02:38:49', '2019-04-13 19:39:17'),
(3, '003', '1', '2', 10, '2019-04-14 05:42:13', '2019-04-13 22:54:40'),
(4, '002', '3', '2', 10, '2019-04-14 05:54:19', '2019-04-13 22:54:52'),
(5, 'A01', '8', '4', 7, '2019-04-14 06:29:59', '2019-04-13 23:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `tentang`
--

CREATE TABLE `tentang` (
  `id` int(11) NOT NULL,
  `pengertian_adhd` varchar(250) NOT NULL,
  `panduan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `nama` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_orangtua` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `gangguan`
--
ALTER TABLE `gangguan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gejala_admin_id` (`admin_id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_filter`
--
ALTER TABLE `menu_filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_konsultasi`
--
ALTER TABLE `riwayat_konsultasi`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_rule` (`id_rule`);

--
-- Indexes for table `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_konsultasi_daftar_konsultasi` (`pengertian_adhd`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gangguan`
--
ALTER TABLE `gangguan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `menu_filter`
--
ALTER TABLE `menu_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
