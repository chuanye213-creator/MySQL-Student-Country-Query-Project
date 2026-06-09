/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.62 : Database - test
*********************************************************************
*/
/*SET NAMES utf8 */;

/*SET SQL_MODE=''*/;

/*SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /* IF NOT EXISTS*/`test` /* DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `student` */
DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(4) DEFAULT NULL,
  `name` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `age` int(6) DEFAULT NULL,
  `sex` int(2) DEFAULT NULL,
  `address` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `chinese` decimal(3,0) DEFAULT NULL,
  `english` decimal(3,0) DEFAULT NULL,
  `math` decimal(3,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `student` */
insert  into `student`(`id`,`name`,`age`,`sex`,`address`,`chinese`,`english`,`math`) values (1001,'小明',20,1,'北京','90','91','92'),(1005,'小朱莉',21,0,'深圳','91','92','93'),(1012,'艾琳',23,0,'北京','88','89','90'),(1002,'雅典娜',21,0,'广州','97','96','95'),(1014,'Jim',22,1,'纽约','86','86','86'),(1004,'Ralf',20,1,'伦敦','82','92','72'),(1015,'安娜',24,0,'上海','85','94','87'),(1007,'Robert',23,1,'巴黎','85','94','88'),(1011,'Terry',20,1,'伦敦','82','92','88'),(1013,'克拉克',25,1,'纽约','94','93','94'),(1010,'朵拉',22,0,'北京','83','85','87'),(1006,'布兰妮',19,0,'深圳','94','92','90'),(1003,'Alice',18,0,'巴黎','92','94','96'),(1009,'小强',19,1,'上海','87','95','75'),(1008,'苏菲亚',21,0,'北京','81','91','85'),(1016,'苏菲亚',20,0,'巴黎','80','92','84');

/*SET SQL_MODE=@OLD_SQL_MODE */;
/*SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*SET SQL_NOTES=@OLD_SQL_NOTES */;
