/*
SQLyog Enterprise - MySQL GUI v8.02 RC
MySQL - 5.5.24-log : Database - tpcell
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`tpcell` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tpcell`;

/*Table structure for table `activitylog` */

DROP TABLE IF EXISTS `activitylog`;

CREATE TABLE `activitylog` (
  `activityid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `typeofuser` varchar(10) DEFAULT NULL,
  `datetimeofactivity` datetime DEFAULT NULL,
  `activityperformed` varchar(500) DEFAULT NULL,
  `performedonIP` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`activityid`),
  KEY `FK_activitylog` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `activitylog` */

insert  into `activitylog`(`activityid`,`email`,`typeofuser`,`datetimeofactivity`,`activityperformed`,`performedonIP`) values (1,'puneetk1998@gmail.com','student','2031-03-18 19:25:21','loggedin','127.0.0.1'),(2,'puneetk1998@gmail.com','student','2031-03-18 19:25:42','loggedout','127.0.0.1'),(3,'admin@xmail.com','admin','2031-03-18 19:25:59','loggedin','127.0.0.1'),(4,'admin@xmail.com','admin','2031-03-18 19:26:08','loggedout','127.0.0.1'),(5,'admin@xmail.com','admin','2017-04-18 15:48:56','loggedin','127.0.0.1'),(6,'admin@xmail.com','admin','2017-04-18 17:43:00','loggedin','127.0.0.1');

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `aname` varchar(20) NOT NULL,
  `addedby` varchar(20) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`adminid`,`email`,`password`,`aname`,`addedby`) values (1,'admin@xmail.com','adminrj','CELL','');

/*Table structure for table `infosys` */

DROP TABLE IF EXISTS `infosys`;

CREATE TABLE `infosys` (
  `studentid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `rollno` decimal(10,0) NOT NULL,
  `class` varchar(50) NOT NULL,
  `cgpa` decimal(10,3) NOT NULL,
  `sem` varchar(10) NOT NULL,
  PRIMARY KEY (`studentid`),
  CONSTRAINT `FK_infosys` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `infosys` */

/*Table structure for table `maxver` */

DROP TABLE IF EXISTS `maxver`;

CREATE TABLE `maxver` (
  `studentid` int(10) NOT NULL,
  `ver` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `maxver` */

/*Table structure for table `notices` */

DROP TABLE IF EXISTS `notices`;

CREATE TABLE `notices` (
  `noticeid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`noticeid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `notices` */

insert  into `notices`(`noticeid`,`title`,`description`,`active`,`dateadded`,`addedby`) values (1,'Submit your Scholastic data until 4/09/2017  10:00 AM','No further submissions will be entertained after 04/09/2017 10:00 AM',1,'2028-03-17 14:43:26','admin@xmail.com');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `studentid` int(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sname` varchar(40) NOT NULL,
  `rollno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`studentid`),
  UNIQUE KEY `NewIndex2` (`email`),
  UNIQUE KEY `NewIndex1` (`rollno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`studentid`,`email`,`password`,`sname`,`rollno`) values (12,'puneetk1998@gmail.com','live','Puneet','11501095');

/*Table structure for table `studentfields` */

DROP TABLE IF EXISTS `studentfields`;

CREATE TABLE `studentfields` (
  `Department` varchar(50) DEFAULT NULL,
  `Stream` varchar(35) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `studentfields` */

insert  into `studentfields`(`Department`,`Stream`,`State`) values ('[Engineering Wing] Computer Engg. Dept','B.Tech','West Bengal'),('[Engineering Wing]Electronics Engg. Dept','M.Tech','Bihar'),('[Enginnering Wing]Mechanichal Engg. Dept','B.Sc','Punjab'),('[Engineering Wing]Civil Engg. Dept',NULL,'Delhi'),(NULL,NULL,'Haryana'),(NULL,NULL,'Chandigarh');

/*Table structure for table `studentscholasticdata` */

DROP TABLE IF EXISTS `studentscholasticdata`;

CREATE TABLE `studentscholasticdata` (
  `studentid` int(10) NOT NULL,
  `Version` decimal(1,0) NOT NULL DEFAULT '0',
  `Department` varchar(100) NOT NULL COMMENT 'Enter your respective department in PUP',
  `Stream` varchar(30) NOT NULL,
  `Roll No.` varchar(20) DEFAULT NULL,
  `Univ.Reg No.` varchar(30) DEFAULT NULL,
  `Participating` varchar(1) NOT NULL,
  `Gender` varchar(6) NOT NULL COMMENT 'M-male,F-female',
  `Residence` varchar(30) NOT NULL,
  `First Name` varchar(30) DEFAULT NULL,
  `Middle Name` varchar(30) DEFAULT NULL,
  `Surname` varchar(20) DEFAULT NULL,
  `Course Status` varchar(20) NOT NULL,
  `NAME` varchar(80) DEFAULT NULL,
  `Fathers Name` varchar(25) NOT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `10Core Max Marks` decimal(8,3) NOT NULL COMMENT '10th class core marks without optional subjects',
  `10Core Marks` decimal(8,3) NOT NULL COMMENT 'marks obtained',
  `10All Max Marks` decimal(8,3) NOT NULL COMMENT 'Including optional objects',
  `10All Marks` decimal(8,3) NOT NULL,
  `10%age` decimal(6,3) NOT NULL,
  `10YOP` decimal(4,0) NOT NULL COMMENT '10th year of passing',
  `10Board` varchar(100) DEFAULT NULL,
  `12Max Marks` decimal(8,3) DEFAULT NULL COMMENT '12th marks',
  `12Marks` decimal(8,3) DEFAULT NULL,
  `12%age` decimal(6,3) DEFAULT NULL,
  `12YOP` decimal(4,0) DEFAULT NULL COMMENT '12 year of passing',
  `12Board` varchar(100) DEFAULT NULL,
  `DiplomaMax Marks` decimal(8,3) DEFAULT NULL,
  `DiplomaMarks` decimal(8,3) DEFAULT NULL,
  `Diploma%age` decimal(8,3) DEFAULT NULL,
  `DiplomaYOP` decimal(4,0) DEFAULT NULL,
  `Grad.Degree` varchar(500) DEFAULT NULL,
  `Grad.Subject Combo` varchar(500) DEFAULT NULL,
  `Evaluation System` varchar(10) DEFAULT NULL COMMENT 'type of evaluation system ,cgpa or %',
  `Grad.Max Marks` decimal(8,3) DEFAULT NULL,
  `Grad.Marks` decimal(8,3) DEFAULT NULL,
  `Grad.%age` decimal(6,3) DEFAULT NULL,
  `Grad YOP` decimal(4,0) DEFAULT NULL,
  `Sem1MM` decimal(8,3) NOT NULL,
  `Sem1M` decimal(8,3) NOT NULL,
  `Sem1%age` decimal(6,3) NOT NULL,
  `Sem1 BackLogs` decimal(1,0) NOT NULL,
  `Sem1 Pending` decimal(1,0) NOT NULL,
  `Sem2MM` decimal(8,3) NOT NULL,
  `Sem2M` decimal(8,3) NOT NULL,
  `Sem2%age` decimal(6,3) NOT NULL,
  `Sem2 BackLogs` decimal(1,0) NOT NULL,
  `Sem2 Pending` decimal(1,0) NOT NULL,
  `Sem3MM` decimal(8,3) NOT NULL,
  `Sem3M` decimal(8,3) NOT NULL,
  `Sem3%age` decimal(6,3) NOT NULL,
  `Sem3 BackLogs` decimal(1,0) NOT NULL,
  `Sem3 Pending` decimal(1,0) NOT NULL,
  `Sem4MM` decimal(8,3) NOT NULL,
  `Sem4M` decimal(8,3) NOT NULL,
  `Sem4%age` decimal(6,3) NOT NULL,
  `Sem4 BackLogs` decimal(1,0) NOT NULL,
  `Sem4 Pending` decimal(1,0) NOT NULL,
  `Sem5MM` decimal(8,3) NOT NULL,
  `Sem5M` decimal(8,3) NOT NULL,
  `Sem5%age` decimal(6,3) NOT NULL,
  `Sem5 BackLogs` decimal(1,0) NOT NULL,
  `Sem5 Pending` decimal(1,0) NOT NULL,
  `Sem6MM` decimal(8,3) DEFAULT NULL,
  `Sem6M` decimal(8,3) DEFAULT NULL,
  `Sem6%age` decimal(6,3) DEFAULT NULL,
  `Sem6 BackLogs` decimal(1,0) DEFAULT NULL,
  `Sem6 Pending` decimal(1,0) DEFAULT NULL,
  `Sem7MM` decimal(8,3) DEFAULT NULL,
  `Sem7M` decimal(8,3) DEFAULT NULL,
  `Sem7%age` decimal(6,3) DEFAULT NULL,
  `Sem7 BackLogs` decimal(1,0) DEFAULT NULL,
  `Sem7 Pending` decimal(1,0) DEFAULT NULL,
  `Sem8MM` decimal(8,3) DEFAULT NULL,
  `Sem8M` decimal(8,3) DEFAULT NULL,
  `Sem8%age` decimal(6,3) DEFAULT NULL,
  `Sem8 BackLogs` decimal(1,0) DEFAULT NULL,
  `Sem8 Pending` decimal(1,0) DEFAULT NULL,
  `Total Denominator` decimal(10,3) DEFAULT NULL,
  `Total Numerator` decimal(10,3) DEFAULT NULL,
  `Total BackLogs` decimal(2,0) DEFAULT NULL,
  `Pending Sems` decimal(2,0) DEFAULT NULL,
  `Current %age` decimal(6,3) DEFAULT NULL,
  `DescriptionGap` varchar(200) DEFAULT NULL,
  `ADDRESS` varchar(500) DEFAULT NULL,
  `STATE` varchar(100) DEFAULT NULL,
  `Contact Student` decimal(15,0) DEFAULT NULL,
  `Contact Parent` decimal(15,0) DEFAULT NULL,
  `Email` varchar(35) NOT NULL,
  `Category` varchar(7) NOT NULL,
  PRIMARY KEY (`studentid`,`Version`),
  CONSTRAINT `FK_studentscholasticdata` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `studentscholasticdata` */

/*Table structure for table `subavail` */

DROP TABLE IF EXISTS `subavail`;

CREATE TABLE `subavail` (
  `cname` varchar(20) DEFAULT NULL,
  `formid` decimal(10,0) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `addedby` varchar(100) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subavail` */

insert  into `subavail`(`cname`,`formid`,`description`,`addedby`,`time`,`date`,`active`) values ('infosys',NULL,NULL,NULL,NULL,NULL,NULL),('tcs',NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
