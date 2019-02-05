/*
SQLyog Community v11.31 (32 bit)
MySQL - 5.1.54-community : Database - hms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hms`;

/*Table structure for table `admitpatient_room` */

DROP TABLE IF EXISTS `admitpatient_room`;

CREATE TABLE `admitpatient_room` (
  `admitID` int(11) NOT NULL AUTO_INCREMENT,
  `PatientID` int(20) DEFAULT NULL,
  `Disease` varchar(50) DEFAULT NULL,
  `AdmitDate` date DEFAULT NULL,
  `RoomNo` int(150) DEFAULT NULL,
  `DoctorID` int(20) DEFAULT NULL,
  `AP_Remarks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admitID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `bill_room` */

DROP TABLE IF EXISTS `bill_room`;

CREATE TABLE `bill_room` (
  `BillNo` int(11) NOT NULL AUTO_INCREMENT,
  `DischargeID` int(5) DEFAULT NULL,
  `BillingDate` date DEFAULT NULL,
  `RoomCharges` int(10) DEFAULT NULL,
  `ServiceCharges` int(10) DEFAULT NULL,
  `PaymentMode` varchar(50) DEFAULT NULL,
  `PaymentModeDetails` varchar(25) DEFAULT NULL,
  `ChargesPaid` int(10) DEFAULT NULL,
  `DueCharges` int(10) DEFAULT NULL,
  `TotalCharges` int(10) DEFAULT NULL,
  `NoOfDays` int(5) DEFAULT NULL,
  `TotalRoomCharges` int(10) DEFAULT NULL,
  KEY `BillNo` (`BillNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `dischargepatient_room` */

DROP TABLE IF EXISTS `dischargepatient_room`;

CREATE TABLE `dischargepatient_room` (
  `AdmitID` int(20) DEFAULT NULL,
  `DischargeDate` date DEFAULT NULL,
  `DP_Remarks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `DoctorID` int(10) DEFAULT NULL,
  `DoctorName` varchar(20) DEFAULT NULL,
  `FatherName` varchar(20) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `ContacNo` int(10) DEFAULT NULL,
  `Qualifications` varchar(50) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `BloodGroup` varchar(5) DEFAULT NULL,
  `DateOfJoining` date DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patientregistration` */

DROP TABLE IF EXISTS `patientregistration`;

CREATE TABLE `patientregistration` (
  `PatientID` int(10) DEFAULT NULL,
  `PatientName` varchar(20) DEFAULT NULL,
  `FatherName` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `ContactNo` int(10) DEFAULT NULL,
  `Age` int(2) DEFAULT NULL,
  `Remarks` varchar(50) DEFAULT NULL,
  `Gen` varchar(1) DEFAULT NULL,
  `BG` varchar(3) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `rec` */

DROP TABLE IF EXISTS `rec`;

CREATE TABLE `rec` (
  `empno` int(10) NOT NULL DEFAULT '0',
  `ename` varchar(10) DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `name` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `contact_no` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `RoomNo` int(5) DEFAULT NULL,
  `RoomType` varchar(10) DEFAULT NULL,
  `RoomCharges` int(10) DEFAULT NULL,
  `RoomStatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `room_copy` */

DROP TABLE IF EXISTS `room_copy`;

CREATE TABLE `room_copy` (
  `RoomNo` int(5) DEFAULT NULL,
  `RoomType` varchar(10) DEFAULT NULL,
  `RoomCharges` int(10) DEFAULT NULL,
  `RoomStatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `services` */

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `ServiceName` varchar(20) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `ServiceCharges` int(10) DEFAULT NULL,
  `ServiceID` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ServiceID`),
  KEY `ServiceID` (`ServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Trigger structure for table `room` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `Room_Charges_Check` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `Room_Charges_Check` BEFORE INSERT ON `room` FOR EACH ROW BEGIN
           IF NEW.ROOMCHARGES < 0 THEN
               SET NEW.ROOMCHARGES = 0;
           ELSEIF NEW.ROOMCHARGES > 0 THEN
               SET NEW.ROOMCHARGES = NEW.ROOMCHARGES + (NEW.ROOMCHARGES*0.18);
           END IF;
       END */$$


DELIMITER ;

/* Trigger structure for table `room` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `ROOM_UPDATE` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `ROOM_UPDATE` BEFORE UPDATE ON `room` FOR EACH ROW BEGIN
           IF NEW.ROOMCHARGES < 0 THEN
               SET NEW.ROOMCHARGES = 0;
           ELSEIF NEW.ROOMCHARGES > 0 THEN
               SET NEW.ROOMCHARGES = NEW.ROOMCHARGES + (NEW.ROOMCHARGES*0.18);
           END IF;
    END */$$


DELIMITER ;

/* Procedure structure for procedure `Doctor_Patient_Relationship` */

/*!50003 DROP PROCEDURE IF EXISTS  `Doctor_Patient_Relationship` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Doctor_Patient_Relationship`()
SELECT P.PATIENTID,P.PATIENTNAME,D.DOCTORID,D.DOCTORNAME
FROM PATIENTREGISTRATION P,DOCTOR D,ADMITPATIENT_ROOM APR
WHERE P.PATIENTID = APR.PATIENTID 
AND APR.DOCTORID = D.DOCTORID
GROUP BY P.PATIENTID */$$
DELIMITER ;

/* Procedure structure for procedure `sample` */

/*!50003 DROP PROCEDURE IF EXISTS  `sample` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sample`()
SELECT PR.PATIENTID,PR.PATIENTNAME,D.DOCTORID,D.DOCTORNAME FROM
PATIENTREGISTRATION PR,DOCTOR D,ADMITPATIENT_ROOM APR 
WHERE PR.PATIENTID = APR.PATIENTID AND APR.DOCTORID = D.DOCTORID 
GROUP BY P.PATIENTID */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
