/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.35-MariaDB : Database - padhd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`padhd` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `padhd`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(75) CHARACTER SET latin1 NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `admin` */

insert  into `admin`(`id_admin`,`nama`,`username`,`password`,`group_id`) values (1,'admin','admin','$2a$08$1ReKzxWGAi9l.sAVnn1EXenmVexHNpOPIGRrh0XUjuKPF8bktixZy',2);

/*Table structure for table `gangguan` */

DROP TABLE IF EXISTS `gangguan`;

CREATE TABLE `gangguan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_gangguan` varchar(10) NOT NULL,
  `jenis_gangguan` varchar(100) NOT NULL,
  `definisi` varchar(500) NOT NULL,
  `solusi` varchar(500) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id_admin`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `gangguan` */

insert  into `gangguan`(`id`,`id_gangguan`,`jenis_gangguan`,`definisi`,`solusi`,`admin_id`,`created_at`,`updated_at`) values (4,'P01','Anak-anak dengan masalah utama adalah rendahnya konsentrasi dan kurangnya kemampuan untuk memusatkan','Anak-anak dengan masalah utama adalah rendahnya konsentrasi dan kurangnya kemampuan untuk memusatkan perhatian.','1. Mengurangi Ditraksi (sesuatu yang dapat mengganggu konsentrasi. misalnya seperti game, televisi ataupun radio.)\r\n2. Gradasi (memecah aktivitas yang dilakukan agar menjadi lebih ringan dan sedikit, misal mengurangi tugas rumah yang harus dikerjakan)\r\n3. Mengindari sesuatu apapun itu yang kemungkinan dapat memecah konsentrasi pada anak.\r\n4. Bermain Balok. Dengan bermain balok, anak dapat melatih konsentrasinya sedikit demi sedikit.\r\n5. Memberikan Petunjuk Pada Setiap Kegiatan Anak Secara Ringka',NULL,'2019-04-14 05:56:42','2019-04-15 00:25:33'),(5,'P02','Implusivility','Anak-anak yang mengalami kesulitan untuk menunda respon (dorongan untuk mengatakan sesuatu/melakukan sesuatu dengan tidak sabar) dan selalu terburu-buru.','1. Mendengarkan Musik sebagai Relaksasi (menurut beberapa penelitian, musik berpengaruh langsung ke otak sehingga mendengarkan musik dapat membuat anak menjadi rileks dan tenang.)\r\n2. Memberikan banyak atensi Positif. Dengan memberikan atensi yang positif, anak akan cenderung merasa senang sehingga emosionalnya dapat terkendali.\r\n3. Menyimak apapun yang dikatakan oleh anak (menjadi pendengar dan menyimak apapun yang dikatakan oleh anak dapat membuat perasaan anak menjadi tenang)\r\n4. Lakukan tera',NULL,'2019-04-14 05:58:14','2019-04-13 23:19:32'),(6,'P03','Hyperactivity','Anak-anak yang masalah utamanya diakibatkan oleh perilaku yang tidak bisa diam.','1. Jauhkan dari Gangguan, misalnya dengan menempatkan mereka jauh dari area pintu, jendela dan segala hal yang menjadi sumber kebisingan.\r\n2. Atur pola hidup yang terstruktur dengan memberi perintah yang jelas dan sebuah pola tersturktur untuk diikuti karna mereka cenderung lebih cepat cemas saat mereka tidak tahu apa yang harus mereka lalukan selanjutnya. Misalnya menentukan kapan waktu untuk makan, sikat gigi, belajar, bermain dan tidur. Dengan rutinitas terencana, otak anak akan belajar mener',NULL,'2019-04-14 06:18:52','2019-04-14 06:18:52');

/*Table structure for table `gejala` */

DROP TABLE IF EXISTS `gejala`;

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_gejala` varchar(10) NOT NULL,
  `nama_gejala` varchar(55) DEFAULT NULL,
  `deskripsi` varchar(250) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `gejala_admin_id` (`admin_id`),
  CONSTRAINT `gejala_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id_admin`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `gejala` */

insert  into `gejala`(`id`,`id_gejala`,`nama_gejala`,`deskripsi`,`admin_id`,`created_at`,`updated_at`) values (1,'G32','Kurang fokus',NULL,NULL,'2019-03-29 07:24:47','2019-04-15 00:13:24'),(3,'G2','Ceroboh mengerjakan tugas di rumah atau kegiatan lain',NULL,NULL,'2019-04-14 05:53:22','2019-04-13 23:11:34'),(4,'G3','Kesulitan mempertahankan perhatian saat bermain',NULL,NULL,'2019-04-14 05:53:45','2019-04-13 23:11:25'),(5,'G4','Tampak tidak mendengarkan saat diajak bicara',NULL,NULL,'2019-04-14 06:11:16','2019-04-14 06:11:16'),(6,'G5','Tidak bisa mengikuti instruksi dengan baik',NULL,NULL,'2019-04-14 06:11:59','2019-04-14 06:11:59'),(7,'G6','Kesulitan dalam mengorganisasikan / menyelesaikan tugas',NULL,NULL,'2019-04-14 06:15:09','2019-04-14 06:15:09'),(8,'G7','Tidak menyukai / menghindari permainan yang membutuhkan',NULL,NULL,'2019-04-14 06:15:44','2019-04-14 06:15:44'),(9,'G8','Kehilangan barang-barang',NULL,NULL,'2019-04-14 06:20:53','2019-04-14 06:20:53'),(10,'G9','Mudah terdistraksi (mengalihkan perhatian) oleh stimulu',NULL,NULL,'2019-04-14 06:21:09','2019-04-14 06:21:09'),(11,'G10','Pelupa dalam kegiatan sehari-hari',NULL,NULL,'2019-04-14 06:21:29','2019-04-14 06:21:29'),(12,'G11','Menggerakkan jari tangan dan kaki saat duduk di meja ma',NULL,NULL,'2019-04-14 06:21:45','2019-04-14 06:21:45'),(13,'G12','Berlari-lari pada situasi yang tidak tepat (contoh: pad',NULL,NULL,'2019-04-14 06:22:07','2019-04-14 06:22:07'),(14,'G13','Memanjat pada situasi yang tidak tepat (contoh: pada sa',NULL,NULL,'2019-04-14 06:22:24','2019-04-14 06:22:24'),(15,'G14','Sering meminta mainan teman secara paksa',NULL,NULL,'2019-04-14 06:22:39','2019-04-14 06:22:39'),(16,'G15','Kesulitan untuk bermain atau melakukan aktivitas luang ',NULL,NULL,'2019-04-14 06:22:54','2019-04-14 06:22:54'),(17,'G16','Bergerak tidak kenal lelah',NULL,NULL,'2019-04-14 06:23:12','2019-04-14 06:23:12'),(18,'G17','Banyak berbicara',NULL,NULL,'2019-04-14 06:23:30','2019-04-14 06:23:30'),(19,'G18','Menjawab pertanyaan sebelum pertanyaan selesai diajukan',NULL,NULL,'2019-04-14 06:23:53','2019-04-14 06:23:53'),(20,'G19','Sulit menunggu giliran (contoh: menonton tayangan telev',NULL,NULL,'2019-04-14 06:24:10','2019-04-14 06:24:10'),(21,'G20','Menginterupsi / mengganggu kegiatan orang lain (contoh:',NULL,NULL,'2019-04-14 06:24:26','2019-04-14 06:24:26'),(22,'G21','Jika keinginannya tidak terpenuhi maka emosi akan meled',NULL,NULL,'2019-04-14 06:24:45','2019-04-14 06:24:45'),(23,'G22','Suasana hati yang berubah-ubah (tiba-tiba marah, dan ti',NULL,NULL,'2019-04-14 06:25:00','2019-04-14 06:25:00'),(24,'G23','Agresifitas (suka memukul teman atau mengganggu kegiata',NULL,NULL,'2019-04-14 06:25:17','2019-04-14 06:25:17'),(25,'G24','Distruktif (suka merusak barang)',NULL,NULL,'2019-04-14 06:25:35','2019-04-14 06:25:35'),(26,'G25','Tidak bisa disiplin dan menaati peraturan, bahkan perat',NULL,NULL,'2019-04-14 06:25:53','2019-04-14 06:25:53'),(27,'G26','Selalau khawatir dan takut',NULL,NULL,'2019-04-14 06:26:07','2019-04-14 06:26:07'),(28,'G27','Terlihat tidak percaya diri dan menarik diri',NULL,NULL,'2019-04-14 06:26:24','2019-04-14 06:26:24'),(29,'G28','Sangat peka atau sensitive pada kritikan',NULL,NULL,'2019-04-14 06:26:39','2019-04-14 06:26:39'),(30,'G29','Sering menggeliat',NULL,NULL,'2019-04-14 06:26:53','2019-04-14 06:26:53');

/*Table structure for table `group` */

DROP TABLE IF EXISTS `group`;

CREATE TABLE `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `group` */

insert  into `group`(`id`,`nama`,`deskripsi`) values (1,'Free User','User tanpa perlu login'),(2,'Admin','user yang memiliki sebagian akses, marter data');

/*Table structure for table `konsultasi` */

DROP TABLE IF EXISTS `konsultasi`;

CREATE TABLE `konsultasi` (
  `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT,
  `riwayat_id` int(11) DEFAULT NULL,
  `gangguan_id` varchar(10) DEFAULT NULL,
  `nilai_gangguan` float DEFAULT NULL,
  PRIMARY KEY (`id_konsultasi`),
  KEY `riwayat_id` (`riwayat_id`),
  KEY `gangguan_id` (`gangguan_id`),
  CONSTRAINT `riwayat_id` FOREIGN KEY (`riwayat_id`) REFERENCES `riwayat_konsultasi` (`id_riwayat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `konsultasi` */

/*Table structure for table `kontak_psikolog` */

DROP TABLE IF EXISTS `kontak_psikolog`;

CREATE TABLE `kontak_psikolog` (
  `id_kontak` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(40) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `tempat_praktik` varchar(500) DEFAULT NULL,
  `jam_praktik_awal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jam_praktik_selesai` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_kontak`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `kontak_psikolog` */

insert  into `kontak_psikolog`(`id_kontak`,`nama`,`no_telp`,`tempat_praktik`,`jam_praktik_awal`,`jam_praktik_selesai`) values (1,'viko','234242','banyuwangi','2019-04-07 10:13:31','2019-03-01 21:30:00'),(2,'angga','222','gambiran','2019-04-07 10:13:32','2019-03-01 21:30:00');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_active` int(1) NOT NULL,
  `is_parent` int(1) NOT NULL,
  `order` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

insert  into `menu`(`id`,`name`,`link`,`icon`,`is_active`,`is_parent`,`order`) values (1,'Beranda','beranda','fa fa-list-alt',1,0,1),(2,'menu management','menu','fa fa-list-alt',0,0,2),(3,'Data Gejala','master_gejala','fa fa-list-alt',1,0,3),(4,'Data Kontak Psikolog','master_kontak_psikolog','fa fa-list-alt',1,0,4),(5,'Data Riwayat Konsultasi','master_riwayat','fa fa-list-alt',1,0,6),(6,'Ubah Password','ubah_Password','fa fa-list-alt',1,0,8),(7,'Data Gangguan','master_gangguan','fa fa-list-alt',1,0,9),(8,'Data User','master_user','fa fa-list-alt',1,0,10),(9,'Data Rule','master_rule','fa fa-list-alt',1,0,11),(10,'Data Tentang','master_tentang','fa fa-list-alt',1,0,12),(11,'Logout','logout','fa fa-list-alt',1,0,13),(12,'Login','login','',1,0,14),(13,'Beranda','beranda','',1,0,1),(14,'Konsultasi','konsultasi','',1,0,2),(15,'Riwayat Konsultasi','riwayat','',1,0,3),(16,'Tentang','tentang','',1,0,4),(17,'Kontak','kontak','',1,0,5),(18,'ADHD Panduan','panduan','',1,16,6);

/*Table structure for table `menu_filter` */

DROP TABLE IF EXISTS `menu_filter`;

CREATE TABLE `menu_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` enum('n','y') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `menu_filter` */

insert  into `menu_filter`(`id`,`menu_id`,`group_id`,`status`) values (1,1,2,'y'),(2,2,2,'y'),(3,3,2,'y'),(4,4,2,'y'),(5,5,2,'y'),(6,6,2,'y'),(7,7,2,'y'),(8,8,2,'y'),(9,9,2,'y'),(10,10,2,'y'),(11,11,2,'y'),(12,12,2,'y'),(13,13,1,'y'),(14,14,1,'y'),(15,15,1,'y');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `riwayat_konsultasi` */

DROP TABLE IF EXISTS `riwayat_konsultasi`;

CREATE TABLE `riwayat_konsultasi` (
  `id_riwayat` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_riwayat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `riwayat_konsultasi` */

/*Table structure for table `rule` */

DROP TABLE IF EXISTS `rule`;

CREATE TABLE `rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_rule` varchar(10) NOT NULL,
  `gejala_id` int(11) DEFAULT NULL,
  `gangguan_id` int(11) DEFAULT NULL,
  `nilai_cf` float DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_rule`),
  KEY `rule_gejala_id` (`gejala_id`),
  KEY `rule_gangguan_id` (`gangguan_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `rule` */

insert  into `rule`(`id`,`id_rule`,`gejala_id`,`gangguan_id`,`nilai_cf`,`created_at`,`updated_at`) values (4,'002',3,2,10,'2019-04-14 05:54:19','2019-04-13 22:54:52'),(3,'003',1,2,10,'2019-04-14 05:42:13','2019-04-13 22:54:40'),(5,'A01',8,4,7,'2019-04-14 06:29:59','2019-04-13 23:47:43'),(1,'G01',0,0,0,'2019-04-14 02:38:49','2019-04-13 19:39:17');

/*Table structure for table `tentang` */

DROP TABLE IF EXISTS `tentang`;

CREATE TABLE `tentang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pengertian_adhd` varchar(250) NOT NULL,
  `panduan` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `nilai_konsultasi_daftar_konsultasi` (`pengertian_adhd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tentang` */

insert  into `tentang`(`id`,`pengertian_adhd`,`panduan`,`created_at`,`updated_at`) values (1,'Selamat Datang di Aplikasi Sistem Pakar Penyakit ADHD ttty','Panduan untuk menggunakan Aplikasi iniyt','2019-04-07 11:02:54','2019-04-07 10:58:31');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_orangtua` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
