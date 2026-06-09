/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.62 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `cid` int(3) NOT NULL AUTO_INCREMENT,
  `country` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `population` int(8) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=gb2312;

/*Data for the table `country` */

insert  into `country`(`cid`,`country`,`population`) values (1,'中国',1400),(2,'美国',320),(3,'印度',1300),(4,'印度尼西亚',250),(5,'巴西',210),(6,'巴基斯坦',200),(7,'俄罗斯',150),(8,'日本',130),(9,'德国',85),(10,'英国',66),(11,'法国',65),(12,'阿根廷',45),(13,'加拿大',35),(14,'南非',60),(15,'埃及',100),(16,'澳大利亚',25),(17,'新西兰',5),(18,'韩国',50);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
