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
  `id_gangguan` varchar(10) NOT NULL,
  `jenis_gangguan` varchar(100) NOT NULL,
  `definisi` varchar(500) NOT NULL,
  `solusi` varchar(500) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_gangguan`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id_admin`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gangguan` */

insert  into `gangguan`(`id_gangguan`,`jenis_gangguan`,`definisi`,`solusi`,`admin_id`,`created_at`,`updated_at`) values ('P01','Sering mengamuk','...','...',NULL,'2019-03-29 13:50:58','2019-03-29 13:50:58');

/*Table structure for table `gejala` */

DROP TABLE IF EXISTS `gejala`;

CREATE TABLE `gejala` (
  `id_gejala` varchar(10) NOT NULL,
  `nama_gejala` varchar(55) DEFAULT NULL,
  `nilai_cf` float DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_gejala`),
  KEY `gejala_admin_id` (`admin_id`),
  CONSTRAINT `gejala_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id_admin`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gejala` */

insert  into `gejala`(`id_gejala`,`nama_gejala`,`nilai_cf`,`admin_id`,`created_at`,`updated_at`) values ('G01','Gejala 1',20,NULL,'2019-03-29 13:50:08','2019-03-29 13:50:08'),('G02','Gejala 2',12,NULL,'2019-03-29 14:24:47','2019-03-29 14:24:47');

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
  CONSTRAINT `gangguan_id` FOREIGN KEY (`gangguan_id`) REFERENCES `gangguan` (`id_gangguan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `riwayat_id` FOREIGN KEY (`riwayat_id`) REFERENCES `riwayat_konsultasi` (`id_riwayat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `konsultasi` */

/*Table structure for table `kontak_psikolog` */

DROP TABLE IF EXISTS `kontak_psikolog`;

CREATE TABLE `kontak_psikolog` (
  `id_kontak` int(11) DEFAULT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `tempat_praktik` varchar(500) DEFAULT NULL,
  `jam_praktik_awal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jam_praktik_selesai` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kontak_psikolog` */

insert  into `kontak_psikolog`(`id_kontak`,`nama`,`no_telp`,`tempat_praktik`,`jam_praktik_awal`,`jam_praktik_selesai`) values (NULL,'viko','234242','banyuwangi','2019-03-01 20:30:00','2019-03-01 21:30:00'),(NULL,'angga','222','gambiran','2019-03-01 20:30:00','2019-03-01 21:30:00');

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

insert  into `menu`(`id`,`name`,`link`,`icon`,`is_active`,`is_parent`,`order`) values (1,'Beranda','dashboard','fa fa-list-alt',1,0,1),(2,'menu management','menu','fa fa-list-alt',0,0,2),(3,'Data Gejala','master_gejala','fa fa-list-alt',1,0,3),(4,'Data Kontak','master_kontak','fa fa-list-alt',1,0,4),(5,'Data Riwayat Konsultasi','master_riwayat','fa fa-list-alt',1,0,6),(6,'Ubah Password','ubah_Password','fa fa-list-alt',1,0,8),(7,'Data Gangguan','master_gangguan','fa fa-list-alt',1,0,9),(8,'Data User','master_user','fa fa-list-alt',1,0,10),(9,'Data Rule','master_rule','fa fa-list-alt',1,0,11),(10,'Data Tentang','master_tentang','fa fa-list-alt',1,0,12),(11,'Logout','logout','fa fa-list-alt',1,0,13),(12,'Login','login','',1,0,14),(13,'Beranda','beranda','',1,0,1),(14,'Konsultasi','konsultasi','',1,0,2),(15,'Riwayat Konsultasi','riwayat','',1,0,3),(16,'Tentang','tentang','',1,0,4),(17,'Kontak','kontak','',1,0,5),(18,'ADHD Panduan','panduan','',1,16,6);

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
  `id_rule` varchar(10) NOT NULL,
  `gejala_id` varchar(10) DEFAULT NULL,
  `gangguan_id` varchar(10) DEFAULT NULL,
  `nilai_cf` float DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_rule`),
  KEY `rule_gejala_id` (`gejala_id`),
  KEY `rule_gangguan_id` (`gangguan_id`),
  CONSTRAINT `rule_gangguan_id` FOREIGN KEY (`gangguan_id`) REFERENCES `gangguan` (`id_gangguan`) ON UPDATE CASCADE,
  CONSTRAINT `rule_gejala_id` FOREIGN KEY (`gejala_id`) REFERENCES `gejala` (`id_gejala`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rule` */

insert  into `rule`(`id_rule`,`gejala_id`,`gangguan_id`,`nilai_cf`,`created_at`,`updated_at`) values ('GG01','G02','P01',0,'2019-03-29 14:09:55','2019-03-29 07:25:50');

/*Table structure for table `tentang` */

DROP TABLE IF EXISTS `tentang`;

CREATE TABLE `tentang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pengertian_adhd` varchar(250) NOT NULL,
  `panduan` text,
  PRIMARY KEY (`id`),
  KEY `nilai_konsultasi_daftar_konsultasi` (`pengertian_adhd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tentang` */

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
