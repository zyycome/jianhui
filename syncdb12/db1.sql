-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.17


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema db1
--

CREATE DATABASE IF NOT EXISTS db1;
USE db1;

--
-- Definition of table `t_abc`
--

DROP TABLE IF EXISTS `t_abc`;
CREATE TABLE `t_abc` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `mobile` varchar(45) DEFAULT NULL COMMENT '手机号码',
  `imei` varchar(45) DEFAULT NULL COMMENT '手机串号',
  `pwd` varchar(45) DEFAULT NULL COMMENT '密码',
  `inserttime` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='注册用户表';

--
-- Dumping data for table `t_abc`
--

/*!40000 ALTER TABLE `t_abc` DISABLE KEYS */;
INSERT INTO `t_abc` (`id`,`mobile`,`imei`,`pwd`,`inserttime`) VALUES 
 (1,'13012345678','99999-8888-666','123456','2014-09-01 18:01:31'),
 (2,'13012345678','99999-8888-666','123456','2014-09-01 18:01:31'),
 (3,'13012345678','99999-8888-666','123456','2014-09-01 18:01:31'),
 (4,'13012345731','99999-8888-666','123456','2014-09-01 21:01:01'),
 (5,'13012345735','99999-8888-666','123456','2014-09-01 21:01:02'),
 (6,'13012345707','99999-8888-666','123456','2014-09-01 21:01:02'),
 (7,'13012345703','99999-8888-666','123456','2014-09-02 11:40:44');
/*!40000 ALTER TABLE `t_abc` ENABLE KEYS */;


--
-- Definition of table `t_ppp`
--

DROP TABLE IF EXISTS `t_ppp`;
CREATE TABLE `t_ppp` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `mobile` varchar(45) DEFAULT NULL COMMENT '手机号码',
  `imei` varchar(45) DEFAULT NULL COMMENT '手机串号',
  `pwd` varchar(45) DEFAULT NULL COMMENT '密码',
  `inserttime` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='注册用户表';

--
-- Dumping data for table `t_ppp`
--

/*!40000 ALTER TABLE `t_ppp` DISABLE KEYS */;
INSERT INTO `t_ppp` (`id`,`mobile`,`imei`,`pwd`,`inserttime`) VALUES 
 (8,'13012345685','99999-8888-666','123456','2014-09-02 16:57:28'),
 (9,'13012345757','99999-8888-666','123456','2014-09-02 16:57:29'),
 (10,'13012345749','99999-8888-666','123456','2014-09-02 16:57:29'),
 (11,'13012345698','99999-8888-666','123456','2014-09-02 16:57:29'),
 (12,'13012345766','99999-8888-666','123456','2014-09-02 16:58:19');
/*!40000 ALTER TABLE `t_ppp` ENABLE KEYS */;


--
-- Definition of table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `mobile` varchar(45) DEFAULT NULL COMMENT '手机号码',
  `imei` varchar(45) DEFAULT NULL COMMENT '手机串号',
  `pwd` varchar(45) DEFAULT NULL COMMENT '密码',
  `inserttime` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='注册用户表';

--
-- Dumping data for table `t_user`
--

/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`id`,`mobile`,`imei`,`pwd`,`inserttime`) VALUES 
 (1,'13012345678','99999-8888-666','123456','2014-09-01 14:53:52'),
 (2,'13012345678','99999-8888-666','123456','2014-09-01 14:55:07'),
 (3,'13012345678','99999-8888-666','123456','2014-09-01 14:57:37'),
 (4,'13012345678','99999-8888-666','123456','2014-09-01 14:58:37'),
 (5,'13012345678','99999-8888-666','123456','2014-09-01 15:02:23'),
 (6,'13012345678','99999-8888-666','123456','2014-09-01 16:55:32'),
 (7,'13012345678','99999-8888-666','123456','2014-09-01 16:55:32'),
 (8,'13012345678','99999-8888-666','123456','2014-09-01 16:55:32'),
 (9,'13012345678','99999-8888-666','123456','2014-09-01 16:55:32'),
 (10,'13012345678','99999-8888-666','123456','2014-09-01 16:55:33'),
 (11,'13012345678','99999-8888-666','123456','2014-09-01 16:55:33'),
 (12,'13012345678','99999-8888-666','123456','2014-09-01 16:55:33'),
 (13,'13012345678','99999-8888-666','123456','2014-09-01 16:55:33'),
 (14,'13012345678','99999-8888-666','123456','2014-09-01 16:56:29'),
 (15,'13012345678','99999-8888-666','123456','2014-09-01 16:56:29'),
 (16,'13012345678','99999-8888-666','123456','2014-09-01 16:56:29'),
 (17,'13012345678','99999-8888-666','123456','2014-09-01 16:57:06'),
 (18,'13012345678','99999-8888-666','123456','2014-09-01 16:57:06'),
 (19,'13012345678','99999-8888-666','123456','2014-09-01 16:57:06'),
 (20,'13012345678','99999-8888-666','123456','2014-09-01 17:36:10'),
 (21,'13012345678','99999-8888-666','123456','2014-09-01 17:36:11'),
 (22,'13012345678','99999-8888-666','123456','2014-09-01 18:00:59'),
 (23,'13012345678','99999-8888-666','123456','2014-09-01 18:00:59'),
 (24,'13012345678','99999-8888-666','123456','2014-09-01 18:00:59'),
 (25,'13012345678','99999-8888-666','123456','2014-09-01 18:02:30'),
 (26,'13012345678','99999-8888-666','123456','2014-09-01 18:02:30'),
 (27,'13012345715.4187','99999-8888-666','123456','2014-09-01 20:59:51'),
 (28,'13012345691.4462','99999-8888-666','123456','2014-09-01 20:59:52'),
 (29,'13012345732.975','99999-8888-666','123456','2014-09-01 20:59:52'),
 (30,'13012345712.5361','99999-8888-666','123456','2014-09-01 20:59:53'),
 (31,'13012345686','99999-8888-666','123456','2014-09-01 21:00:25'),
 (32,'13012345713','99999-8888-666','123456','2014-09-01 21:00:26'),
 (33,'13012345704','99999-8888-666','123456','2014-09-02 11:12:47'),
 (34,'13012345718','99999-8888-666','123456','2014-09-02 11:40:26'),
 (35,'13012345706','99999-8888-666','123456','2014-09-02 23:04:44'),
 (36,'13012345759','99999-8888-666','123456','2014-09-02 23:04:44'),
 (37,'13012345700','99999-8888-666','123456','2014-09-02 23:04:45'),
 (38,'13012345743','99999-8888-666','123456','2014-09-02 23:18:26'),
 (39,'13012345736','99999-8888-666','123456','2014-09-02 23:18:26'),
 (40,'13012345776','99999-8888-666','123456','2014-09-03 01:31:21'),
 (41,'13012345743','99999-8888-666','123456','2014-09-11 10:09:13'),
 (42,'13012345741','99999-8888-666','123456','2014-09-11 10:14:46'),
 (43,'13012345700','99999-8888-666','123456','2014-09-11 10:16:49'),
 (44,'13012345696','99999-8888-666','123456','2014-09-11 10:18:39'),
 (45,'13012345705',NULL,NULL,'2014-09-11 10:28:23'),
 (46,'13012345756','中文',NULL,'2014-09-11 10:34:02'),
 (47,'13012345687','中文<',NULL,'2014-09-11 10:34:43'),
 (48,'13012345691','中文<',NULL,'2014-09-11 10:41:45'),
 (49,'13012345715','中文<',NULL,'2014-09-11 10:42:45'),
 (50,'13012345726','中文<',NULL,'2014-09-11 10:49:10'),
 (51,'13012345707','中文<',NULL,'2014-09-11 11:08:12'),
 (52,'13012345687','99999-8888-666','123456','2014-09-12 11:35:14'),
 (53,'13012345777','99999-8888-666','123456','2014-09-12 11:36:48'),
 (54,'13012345746','99999-8888-666','中文123456','2014-09-12 12:33:39');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;


--
-- Definition of table `t_wmb`
--

DROP TABLE IF EXISTS `t_wmb`;
CREATE TABLE `t_wmb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `a` varchar(45) DEFAULT NULL COMMENT '手机号码',
  `b` varchar(45) DEFAULT NULL COMMENT '手机串号',
  `c` varchar(45) DEFAULT NULL COMMENT '密码',
  `d` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='注册用户表';

--
-- Dumping data for table `t_wmb`
--

/*!40000 ALTER TABLE `t_wmb` DISABLE KEYS */;
INSERT INTO `t_wmb` (`id`,`a`,`b`,`c`,`d`) VALUES 
 (1,'13012345730','xx','yy','2014-09-02 23:04:05'),
 (2,'13012345768','xx','yy','2014-09-02 23:04:06'),
 (3,'13012345770','xx','yy','2014-09-02 23:04:06');
/*!40000 ALTER TABLE `t_wmb` ENABLE KEYS */;


--
-- Definition of table `t_xyz`
--

DROP TABLE IF EXISTS `t_xyz`;
CREATE TABLE `t_xyz` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `mobile` varchar(45) DEFAULT NULL COMMENT '手机号码',
  `imei` varchar(45) DEFAULT NULL COMMENT '手机串号',
  `pwd` varchar(45) DEFAULT NULL COMMENT '密码',
  `inserttime` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='注册用户表';

--
-- Dumping data for table `t_xyz`
--

/*!40000 ALTER TABLE `t_xyz` DISABLE KEYS */;
INSERT INTO `t_xyz` (`id`,`mobile`,`imei`,`pwd`,`inserttime`) VALUES 
 (1,'13012345752','99999-8888-666','123456','2014-09-01 21:01:21'),
 (2,'13012345760','99999-8888-666','123456','2014-09-01 21:01:21'),
 (3,'13012345767','99999-8888-666','123456','2014-09-01 21:01:21'),
 (4,'13012345681','99999-8888-666','123456','2014-09-02 11:40:57'),
 (5,'13012345716','99999-8888-666','123456','2014-09-02 14:13:08'),
 (6,'13012345762','99999-8888-666','123456','2014-09-02 14:13:28'),
 (7,'13012345683','99999-8888-666','123456','2014-09-02 14:13:28');
/*!40000 ALTER TABLE `t_xyz` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
