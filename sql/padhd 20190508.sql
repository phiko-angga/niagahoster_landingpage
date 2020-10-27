/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.35-MariaDB : Database - ponpes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ponpes` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ponpes`;

/*Table structure for table `tb_absensi` */

DROP TABLE IF EXISTS `tb_absensi`;

CREATE TABLE `tb_absensi` (
  `id_absensi` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `keterangan` varchar(100) DEFAULT NULL,
  `tb_santri_id` int(11) DEFAULT NULL,
  `tb_jadwal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_absensi`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tb_absensi` */

/*Table structure for table `tb_asrama` */

DROP TABLE IF EXISTS `tb_asrama`;

CREATE TABLE `tb_asrama` (
  `id_asrama` int(11) NOT NULL AUTO_INCREMENT,
  `nama_asrama` varchar(45) DEFAULT NULL,
  `tb_santri_id` int(11) DEFAULT NULL,
  `tb_pengurus_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_asrama`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_asrama` */

insert  into `tb_asrama`(`id_asrama`,`nama_asrama`,`tb_santri_id`,`tb_pengurus_id`) values (1,'efwefw',1,8);

/*Table structure for table `tb_bimbingan_konseling` */

DROP TABLE IF EXISTS `tb_bimbingan_konseling`;

CREATE TABLE `tb_bimbingan_konseling` (
  `id_bimbingan_konseling` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `konseling` varchar(250) DEFAULT NULL,
  `solusi` varchar(250) DEFAULT NULL,
  `tanggapan_wali` varchar(250) DEFAULT NULL,
  `tb_pelanggaran_id` int(11) DEFAULT NULL,
  `tb_santri_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_bimbingan_konseling`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_bimbingan_konseling` */

/*Table structure for table `tb_jadwal` */

DROP TABLE IF EXISTS `tb_jadwal`;

CREATE TABLE `tb_jadwal` (
  `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `hari` varchar(15) DEFAULT NULL,
  `waktu` enum('pagi','malam') DEFAULT NULL,
  `tb_pengurus_id` int(11) DEFAULT NULL,
  `tb_kategori_pengembangan_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_jadwal` */

insert  into `tb_jadwal`(`id_jadwal`,`hari`,`waktu`,`tb_pengurus_id`,`tb_kategori_pengembangan_id`) values (1,'Senin','malam',8,3);

/*Table structure for table `tb_kategori_pelanggaran` */

DROP TABLE IF EXISTS `tb_kategori_pelanggaran`;

CREATE TABLE `tb_kategori_pelanggaran` (
  `id_kat_pelanggaran` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_pelanggaran` varchar(45) DEFAULT NULL,
  `skor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kat_pelanggaran`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_kategori_pelanggaran` */

insert  into `tb_kategori_pelanggaran`(`id_kat_pelanggaran`,`jenis_pelanggaran`,`skor`) values (1,'Berat',12),(2,'Ringan',10),(3,'Sedang',15);

/*Table structure for table `tb_kategori_pengembangan` */

DROP TABLE IF EXISTS `tb_kategori_pengembangan`;

CREATE TABLE `tb_kategori_pengembangan` (
  `id_kat_pengembangan` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_pengembangan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_kat_pengembangan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tb_kategori_pengembangan` */

insert  into `tb_kategori_pengembangan`(`id_kat_pengembangan`,`jenis_pengembangan`) values (1,'Bahasa Arab'),(2,'Qira\'atul Kutub'),(3,'Tahfidz'),(4,'Tafsir Kitab');

/*Table structure for table `tb_menu` */

DROP TABLE IF EXISTS `tb_menu`;

CREATE TABLE `tb_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `group_menu` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `icon` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `keterangan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_parent` int(11) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `status` enum('public','internal') COLLATE latin1_general_ci DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tb_menu` */

insert  into `tb_menu`(`id`,`name`,`group_menu`,`link`,`icon`,`keterangan`,`is_active`,`is_parent`,`order`,`content_id`,`status`,`hidden`) values (1,'Daftar Pelanggaran Santri',NULL,'santri/lihat_pelanggaran','fa fa-fw fa-user-circle','',1,3,1,NULL,NULL,0),(2,'Daftar Perijinan Santri',NULL,'santri/lihat_perijinan','fa fa-fw fa-user-circle','',1,3,2,NULL,NULL,0),(3,'Santri','master','santri','fa fa-fw fa-user-circle','',1,0,3,NULL,NULL,0),(4,'Kategori Pengembangan','master','kategori_pengembangan','fa fa-fw fa-user-circle','',1,0,4,NULL,NULL,0),(5,'Kategori Pelanggaran','master','kategori_pelanggaran','fa fa-fw fa-user-circle','',1,0,5,NULL,NULL,0),(6,'Pelanggaran Santri','aktifitas','pelanggaran','fa fa-fw fa-user-circle','',1,0,6,NULL,NULL,0),(7,'Perijinan Santri','aktifitas','perijinan','fa fa-fw fa-user-circle','',1,0,7,NULL,NULL,0),(8,'Pengembangan Santri','aktifitas','pengembangan','fa fa-fw fa-user-circle','',1,0,8,NULL,NULL,0),(9,'Absensi Santri','aktifitas','absensi','fa fa-fw fa-user-circle','',1,0,9,NULL,NULL,0),(10,'Asrama','master','asrama','fa fa-fw fa-user-circle','',1,0,10,NULL,NULL,0),(11,'Jadwal','master','jadwal','fa fa-fw fa-user-circle','',1,0,11,NULL,NULL,0),(12,'Laporan','laporan','laporan','fa fa-fw fa-user-circle','',0,0,12,NULL,NULL,0),(13,'Pengurus & Asatidz','master','pengurus','fa fa-fw fa-user-circle','',1,0,13,NULL,NULL,0),(14,'Bimbingan Konseling','aktifitas','konseling','fa fa-fw fa-user-circle','',1,0,14,NULL,NULL,0),(15,'Beranda','','beranda','fa fa-fw fa-user-circle','',1,0,1,NULL,NULL,0),(16,'Perijinan Santri','laporan','',NULL,'',1,0,NULL,NULL,NULL,0),(17,'Pelangggaran Santri','laporan','',NULL,'',1,0,NULL,NULL,NULL,0),(18,'Absesnsi Santri','laporan','',NULL,'',1,0,NULL,NULL,NULL,0),(19,'Daftar Santri','laporan','',NULL,'',1,0,NULL,NULL,NULL,0),(20,'Nilai Pengembangan','laporan','',NULL,'',1,0,NULL,NULL,NULL,0),(21,'Perkembangan Santri','laporan','',NULL,'',1,0,NULL,NULL,NULL,0);

/*Table structure for table `tb_menu_rules` */

DROP TABLE IF EXISTS `tb_menu_rules`;

CREATE TABLE `tb_menu_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` enum('n','y') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_menu` (`menu_id`),
  KEY `fk_user_group` (`group_id`),
  CONSTRAINT `fk_menu` FOREIGN KEY (`menu_id`) REFERENCES `tb_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_group` FOREIGN KEY (`group_id`) REFERENCES `tb_user_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `tb_menu_rules` */

insert  into `tb_menu_rules`(`id`,`menu_id`,`group_id`,`status`) values (1,1,4,NULL),(2,2,4,NULL),(3,3,2,NULL),(4,4,2,NULL),(5,5,2,NULL),(6,6,2,NULL),(7,7,2,NULL),(8,8,2,NULL),(9,9,2,NULL),(10,10,2,NULL),(11,11,2,NULL),(12,12,2,NULL),(13,13,2,NULL),(14,14,2,NULL),(15,15,2,NULL),(16,16,2,NULL),(17,17,2,NULL),(18,18,2,NULL),(19,19,2,NULL),(20,20,2,NULL),(21,21,2,NULL);

/*Table structure for table `tb_pelanggaran` */

DROP TABLE IF EXISTS `tb_pelanggaran`;

CREATE TABLE `tb_pelanggaran` (
  `id_pelanggaran` int(11) NOT NULL AUTO_INCREMENT,
  `sanksi` varchar(500) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kategori_pelanggaran_id` int(11) DEFAULT NULL,
  `tb_santri_id` int(11) DEFAULT NULL,
  `tb_pengurus_id` int(11) DEFAULT NULL,
  `skor` int(11) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_pelanggaran`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tb_pelanggaran` */

insert  into `tb_pelanggaran`(`id_pelanggaran`,`sanksi`,`tanggal`,`kategori_pelanggaran_id`,`tb_santri_id`,`tb_pengurus_id`,`skor`,`keterangan`) values (2,'dew','2019-04-09 17:00:00',1,1,1,23,NULL),(4,'susah se','2019-04-23 17:00:00',1,1,1,22,NULL),(5,'dew','2019-04-17 17:00:00',1,1,1,22,NULL),(6,'Gundul','2019-04-01 17:00:00',1,1,1,10,NULL),(7,'Di Gundul','2019-04-12 17:00:00',2,2,10,NULL,NULL),(8,'Bersih bersih Lingkungan Asrama Putra','2019-04-02 17:00:00',1,3,8,NULL,NULL);

/*Table structure for table `tb_pengembangan` */

DROP TABLE IF EXISTS `tb_pengembangan`;

CREATE TABLE `tb_pengembangan` (
  `id_pengembangan` int(11) NOT NULL AUTO_INCREMENT,
  `nilai` int(11) DEFAULT NULL,
  `tb_santri_id` int(11) DEFAULT NULL,
  `tb_kat_pengembangan_id` int(11) DEFAULT NULL,
  `tahun` smallint(4) DEFAULT NULL,
  `bulan` tinyint(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pengembangan`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tb_pengembangan` */

insert  into `tb_pengembangan`(`id_pengembangan`,`nilai`,`tb_santri_id`,`tb_kat_pengembangan_id`,`tahun`,`bulan`,`created_at`) values (2,80,2,2,2019,4,'2019-04-06 06:31:53'),(3,90,1,1,2019,4,'2019-04-18 06:28:05'),(6,75,1,4,2019,4,'2019-04-18 06:28:05'),(7,21,2,1,2019,4,'2019-04-26 09:34:03'),(8,66,3,1,2019,4,'2019-04-26 09:35:14'),(9,88,3,2,2019,4,'2019-04-26 09:36:13'),(11,20,2,4,2019,5,'2019-05-07 04:00:23'),(12,30,3,4,2019,5,'2019-05-07 04:00:28');

/*Table structure for table `tb_pengurus` */

DROP TABLE IF EXISTS `tb_pengurus`;

CREATE TABLE `tb_pengurus` (
  `id_pengurus` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(45) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `jabatan` enum('pengurus','pengasuh') DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('l','p') DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `pendidikan` varchar(15) DEFAULT NULL,
  `asatidz` tinyint(4) DEFAULT '0',
  `username` varchar(40) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id_pengurus`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tb_pengurus` */

insert  into `tb_pengurus`(`id_pengurus`,`nip`,`nama`,`jabatan`,`foto`,`jenis_kelamin`,`alamat`,`no_telp`,`pendidikan`,`asatidz`,`username`,`password`) values (8,'1201910199','Dini Yusro','pengurus','pengurus977194c8.JPG','p','Muncar','0828188181928','Universitas Isl',NULL,'farhan','$2y$12$xVsNVQf7XzX0wClL2/ZOfO7.r1LvAoDUsNecuJTDUH6PnXW66pwua'),(9,'10029101999','Abdul Basid','pengasuh','pengurusd915a6dd.jpg','l','Muncar','082112338261','Al Azhar Mesir',NULL,'farhani','$2a$08$ceAfJ.XQILxS3jC87xbXuOORGNlKQjwFa6PH8JPaqoC29o1mAyER2'),(10,'144241345','Fatih Muhammad','pengurus','penguruseb4365a7.jpg','l','Muncar','082112338221','Universitas Isl',NULL,'farly','$2a$08$rm7FwUxcKsU.Xt0OWRksKeeOAWrmbNdxFzHBv71EjVrXJnOoNnmiq');

/*Table structure for table `tb_perijinan` */

DROP TABLE IF EXISTS `tb_perijinan`;

CREATE TABLE `tb_perijinan` (
  `id_perijinan` int(11) NOT NULL AUTO_INCREMENT,
  `penjemput` varchar(45) DEFAULT NULL,
  `no_telp` varchar(45) DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL,
  `kembali` tinyint(4) DEFAULT '0',
  `santri_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `waktu_kembali` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_perijinan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tb_perijinan` */

/*Table structure for table `tb_santri` */

DROP TABLE IF EXISTS `tb_santri`;

CREATE TABLE `tb_santri` (
  `id_santri` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(45) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `tempat_lahir` varchar(45) DEFAULT NULL,
  `tanggal_lahir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `wali` varchar(45) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `tahun_masuk` varchar(15) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_santri`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_santri` */

insert  into `tb_santri`(`id_santri`,`nis`,`nama`,`foto`,`jenis_kelamin`,`tempat_lahir`,`tanggal_lahir`,`wali`,`no_telp`,`tahun_masuk`,`username`,`password`) values (1,'131235100028180175','Alfiatul Khoiroh Faisal','santri599779f3.jpg','p','Banyuwangi','1999-03-01 00:00:00','Rofiq Faisol','087123345615','2017',NULL,'$2a$08$uwdzQJZpGteiOVU/3/eNheALHrEk8gyAnsFGf3'),(2,'131235100028180174','Adam Pramono','santricfef62ef.jpg','l','Denpasar','2002-11-03 00:00:00','Imam Muhdor','082112338261','2016',NULL,'$2a$08$t16c69LlnAi6jEjgAZsnb.fHz9u.mDBcN1U9TD'),(3,'131235100028180176','Ayu Maulidia','santricb58178e.jpg','p','Banyuwangi','2002-11-21 00:00:00','Syamsul','083721228119','2017',NULL,'$2a$08$moBN25.bn76uoT2jLvzA2ORkjIST3QqSlZoge.');

/*Table structure for table `tb_user_group` */

DROP TABLE IF EXISTS `tb_user_group`;

CREATE TABLE `tb_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tb_user_group` */

insert  into `tb_user_group`(`id`,`nama`,`deskripsi`) values (1,'Ketua Pengurus',NULL),(2,'Pengurus',NULL),(3,'Admin',NULL),(4,'Wali',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
