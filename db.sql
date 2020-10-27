/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.35-MariaDB : Database - niagahoster
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`niagahoster` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `niagahoster`;

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `normal_price` double DEFAULT NULL,
  `afterdisc_price` double DEFAULT NULL,
  `total_user` int(11) DEFAULT NULL,
  `best_seller` enum('n','y') DEFAULT 'n',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`id`,`name`,`description`,`normal_price`,`afterdisc_price`,`total_user`,`best_seller`) values (1,'Bayi','<p><strong>0.5X RESOURCE POWER</strong></p>\r\n              <p><strong>500 MB</strong> Disk Space</p>\r\n              <p><strong>Unlimited</strong> Bandwidth</p>\r\n              <p><strong>Unlimited</strong> Databases</p>\r\n              <p><strong>1</strong> Domain</p>\r\n              <p><strong>Instant</strong> Backup</p>\r\n              <p><strong>Unlimited SSL</strong> Gratis Selamanya</p>',19900,14900,938,'n'),(2,'Pelajar','<p><strong>1X RESOURCE POWER</strong></p>\r\n              <p><strong>500 MB</strong> Disk Space</p>\r\n              <p><strong>Unlimited</strong> Bandwidth</p>\r\n              <p><strong>Unlimited</strong> POP3 Email</p>\r\n              <p><strong>Unlimited</strong> Databases</p>\r\n              <p><strong>10</strong> Addon Domain</p>\r\n              <p><strong>Instant</strong> Backup</p>\r\n              <p><strong>Domain Gratis</strong> Selamanya</p>\r\n              <p><strong>Unlimited SSL</strong> Gratis Selamanya</p>',46900,23450,4168,'n'),(3,'Personal','<p><strong>2X RESOURCE POWER</strong></p>\r\n<p><strong>500 MB</strong> Disk Space</p>\r\n<p><strong>Unlimited</strong> Bandwidth</p>\r\n<p><strong>Unlimited</strong> POP3 Email</p>\r\n<p><strong>Unlimited</strong> Databases</p>\r\n<p><strong>Unlimited</strong> Addon Domain</p>\r\n<p><strong>Instant</strong> Backup</p>\r\n<p><strong>Domain Gratis</strong> Selamanya</p>\r\n<p><strong>Unlimited SSL</strong> Gratis Selamanya</p>\r\n<p><strong>Private</strong> Name Server</p>\r\n<p><strong>SpamAssasin</strong> Mail Protection</p>',58900,38900,10017,'y'),(4,'Bisnis','<p><strong>3X RESOURCE POWER</strong></p>\r\n              <p><strong>Unlimited</strong> Disk Space</p>\r\n              <p><strong>Unlimited</strong> Bandwidth</p>\r\n              <p><strong>Unlimited</strong> POP3 Email</p>\r\n              <p><strong>Unlimited</strong> Databases</p>\r\n              <p><strong>Unlimited</strong> Addon Domains</p>\r\n              <p><strong>Magic Auto</strong> Backup & Restore</p>\r\n              <p><strong>Instant</strong> Backup</p>\r\n              <p><strong>Domain Gratis</strong> Selamanya</p>\r\n              <p><strong>Unlimited SSL</strong> Gratis Selamanya</p>\r\n              <p><strong>Private</strong> Name Server</p>\r\n              <p><strong>Prioritas</strong> Layanan Support</p>\r\n		<p>\r\n		<i class=\"material-icons dp48 text-info\">star</i><i class=\"material-icons dp48 text-info\">star</i><i class=\"material-icons dp48 text-info\">star</i><i class=\"material-icons dp48 text-info\">star</i><i class=\"material-icons dp48 text-info\">star</i>\r\n</p>\r\n              <p><strong>SpamExpert</strong> Pro Mail Protection</p>',109900,65900,3552,'n');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
