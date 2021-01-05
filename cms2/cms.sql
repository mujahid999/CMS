/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 10.4.11-MariaDB : Database - cms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cms` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cms`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` text DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `category` */

insert  into `category`(`category_id`,`category`) values 
(1,'Teacher'),
(2,'Faculty'),
(3,'Department');

/*Table structure for table `complan` */

DROP TABLE IF EXISTS `complan`;

CREATE TABLE `complan` (
  `category_id` int(11) DEFAULT NULL,
  `std_id` int(11) DEFAULT NULL,
  `complan_id` int(11) NOT NULL AUTO_INCREMENT,
  `complan_textarea` text DEFAULT NULL,
  `file_location` text DEFAULT NULL,
  PRIMARY KEY (`complan_id`),
  KEY `category_id` (`category_id`),
  KEY `std_id` (`std_id`),
  CONSTRAINT `complan_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `complan_ibfk_2` FOREIGN KEY (`std_id`) REFERENCES `registration` (`std_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `complan` */

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `std_id` int(11) NOT NULL AUTO_INCREMENT,
  `std_name` text DEFAULT NULL,
  `std_surname` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `cnic` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  PRIMARY KEY (`std_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `registration` */

insert  into `registration`(`std_id`,`std_name`,`std_surname`,`password`,`phone`,`address`,`cnic`,`gender`) values 
(1,'mujahid','jatoi','jatoi','03002721979','Bhittai','41306-70808313','male'),
(3,'Awais','Shah','Shah','03002721979','Bhittai Town','41222','male'),
(4,'shahzor','jatoi','12345','0300','Bhittai Town','41306-70808313','male'),
(5,'majid','jatoi','1234','030000','Bhittai ','41306-80','male'),
(6,'majid','jatoi','12345','030000','Bhittai ','41306-80','male'),
(7,'majid','jatoi','12345','0300272','Bhittai','41306-70','male'),
(8,'majid','jatoi','12345','0300272','Bhittai','41306-70','male');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
