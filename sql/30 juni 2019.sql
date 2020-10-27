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

/*Table structure for table `konsultasi_user_pakar` */

DROP TABLE IF EXISTS `konsultasi_user_pakar`;

CREATE TABLE `konsultasi_user_pakar` (
  `riwayat_id` int(11) DEFAULT NULL,
  `gejala_id` varchar(10) DEFAULT NULL,
  `user_pakar` float DEFAULT '0',
  KEY `userpakar_riwayat` (`riwayat_id`),
  CONSTRAINT `userpakar_riwayat` FOREIGN KEY (`riwayat_id`) REFERENCES `riwayat_konsultasi` (`id_riwayat`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `konsultasi_user_pakar` */

insert  into `konsultasi_user_pakar`(`riwayat_id`,`gejala_id`,`user_pakar`) values (1,'G32',0.25),(1,'G2',0.25),(1,'G3',0.25),(1,'G4',0.5),(1,'G5',0.25),(1,'G6',0.25),(1,'G7',0.25),(1,'G8',0.25),(1,'G9',0.25),(1,'G10',0.25),(1,'G11',0.25),(1,'G12',0.25),(1,'G13',0.25),(1,'G14',0.25),(1,'G15',0.25),(1,'G16',0.25),(1,'G17',NULL),(1,'G18',0.25),(1,'G19',0.25),(1,'G20',0.25),(1,'G21',0.25),(1,'G22',0.25),(1,'G23',0.25),(1,'G24',0.25),(1,'G25',0.25),(1,'G26',0.5),(1,'G27',0.25),(1,'G28',0.25),(1,'G29',0.25),(1,'G01',0.25),(2,'G32',0.25),(2,'G2',0.25),(2,'G3',0.25),(2,'G4',0.5),(2,'G5',0.25),(2,'G6',0.25),(2,'G7',0.25),(2,'G8',0.25),(2,'G9',0.25),(2,'G10',0.25),(2,'G11',0.25),(2,'G12',0.25),(2,'G13',0.25),(2,'G14',0.25),(2,'G15',0.25),(2,'G16',0.25),(2,'G17',NULL),(2,'G18',0.25),(2,'G19',0.25),(2,'G20',0.25),(2,'G21',0.25),(2,'G22',0.25),(2,'G23',0.25),(2,'G24',0.25),(2,'G25',0.25),(2,'G26',0.5),(2,'G27',0.25),(2,'G28',0.25),(2,'G29',0.25),(2,'G01',0.25);


DROP TABLE IF EXISTS `slider`;

CREATE TABLE `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(150) DEFAULT NULL,
  `deskripsi` varchar(500) DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `slider` */

insert  into `slider`(`id`,`judul`,`deskripsi`,`gambar`) values (1,'Beranda','Selamat Datang',NULL),(2,'Konsultasi','Silahkan pilih menu konsultasi untuk melakukan konsultasi',NULL),(3,'Riwayat Konsultasi','Cek riwayat konsultasi anda',NULL),(4,'Tentang','Silahkan pelajari tentang website ini',NULL),(5,'Kontak','Cek Kontak Dokter',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
