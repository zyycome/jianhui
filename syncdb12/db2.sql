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
-- Create schema db2
--

CREATE DATABASE IF NOT EXISTS db2;
USE db2;

--
-- Temporary table structure for view `vomnibusforcate_user`
--
DROP TABLE IF EXISTS `vomnibusforcate_user`;
DROP VIEW IF EXISTS `vomnibusforcate_user`;
CREATE TABLE `vomnibusforcate_user` (
  `NODE` varchar(64),
  `IP` varchar(64),
  `FIRSTOCCURRENCE` datetime,
  `LASTOCCURRENCE` datetime,
  `SEVERITY` int(11),
  `TYPE` int(11),
  `SUMMARY` varchar(255),
  `SERVERNAME` varchar(64),
  `SERVERSERIAL` int(11),
  `CONTACTVALUE` varchar(75),
  `smsflag` int(11)
);

--
-- Definition of table `bank_portfolio`
--

DROP TABLE IF EXISTS `bank_portfolio`;
CREATE TABLE `bank_portfolio` (
  `interno` varchar(75) NOT NULL,
  `classtype` varchar(75) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`interno`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_portfolio`
--

/*!40000 ALTER TABLE `bank_portfolio` DISABLE KEYS */;
INSERT INTO `bank_portfolio` (`interno`,`classtype`,`count`,`createdate`) VALUES 
 ('2924a378-66f6-419c-af07-19eae31ffd12','a',30,'2014-09-09 15:38:46'),
 ('3ae60204-971a-4cb4-a242-9df025ac10ff','c',50,'2014-09-09 17:38:46'),
 ('4292aebb-ade9-452f-b7d1-039584de4688','d',60,'2014-09-09 18:38:46'),
 ('49408a5d-3a04-41c1-9bf9-7e92336af406','c',50,'2014-09-09 17:38:46'),
 ('4d3d2702-af21-4aa9-96a0-f8efc2486e0c','b',40,'2014-09-09 16:38:46'),
 ('4d584081-53a6-40a2-983b-79fab12cff9b','a',30,'2014-09-09 15:38:46'),
 ('51592d9d-9637-4aad-8f02-4697914ad0d6','a',30,'2014-09-09 15:38:46'),
 ('518ce15c-df8f-4aaf-b0f5-716dc4e4ab68','d',60,'2014-09-09 18:38:46'),
 ('5b47c0c2-ab2c-4d24-953d-825c2ccd4f3d','c',50,'2014-09-09 17:38:46'),
 ('66c88bfd-2b8c-409b-81e9-3b08aff04370','b',40,'2014-09-09 16:38:46'),
 ('772907c8-ea7f-48e4-b046-e89a6cbefbed','d',60,'2014-09-09 18:38:46'),
 ('7c5fb3fb-8818-41ab-9342-d2870ac0d69b','a',30,'2014-09-09 15:38:46'),
 ('9e70c270-820f-4369-9c9f-c2a56eea8137','d',60,'2014-09-09 18:38:46'),
 ('a76ee17f-4f34-468d-b3a0-62f257a8e7c4','c',50,'2014-09-09 17:38:46'),
 ('d2b2290c-955e-4ce2-9131-f4a8c4240f14','d',60,'2014-09-09 18:38:46'),
 ('d48a0eeb-c80f-4ef0-9240-1c93ebc5ea18','b',40,'2014-09-09 16:38:46'),
 ('dcfd8049-976b-4bba-a3b5-29f4441a7b6c','b',40,'2014-09-09 16:38:46'),
 ('e1abf232-26f0-4ceb-af9f-2f45f8d3147e','b',40,'2014-09-09 16:38:46'),
 ('e1e44472-bd58-4c46-b9d5-986817130a1e','a',30,'2014-09-09 15:38:46'),
 ('fa3c3a2e-2a7f-4be8-a4eb-e1400e4ae7ab','c',50,'2014-09-09 17:38:46');
/*!40000 ALTER TABLE `bank_portfolio` ENABLE KEYS */;


--
-- Definition of table `reporter_status_new`
--

DROP TABLE IF EXISTS `reporter_status_new`;
CREATE TABLE `reporter_status_new` (
  `lastoccurrence` datetime DEFAULT NULL,
  `servername` varchar(64) DEFAULT NULL,
  `serverserial` int(11) DEFAULT NULL,
  `smsflag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reporter_status_new`
--

/*!40000 ALTER TABLE `reporter_status_new` DISABLE KEYS */;
INSERT INTO `reporter_status_new` (`lastoccurrence`,`servername`,`serverserial`,`smsflag`) VALUES 
 ('2014-09-26 13:00:00','s1',123456,2);
/*!40000 ALTER TABLE `reporter_status_new` ENABLE KEYS */;


--
-- Definition of table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `Identifier` varchar(100) NOT NULL DEFAULT '',
  `Node` varchar(500) DEFAULT NULL,
  `NodeAlias` varchar(500) DEFAULT NULL,
  `AlertKey` varchar(500) DEFAULT NULL,
  `Severity` int(11) DEFAULT NULL,
  `CGB_CNSummary` varchar(500) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `CN_Servername` varchar(500) DEFAULT NULL,
  `ApplId` varchar(500) DEFAULT NULL,
  `CGB_BranchName` varchar(500) DEFAULT NULL,
  `CGB_Center` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` (`Identifier`,`Node`,`NodeAlias`,`AlertKey`,`Severity`,`CGB_CNSummary`,`Type`,`CN_Servername`,`ApplId`,`CGB_BranchName`,`CGB_Center`) VALUES 
 ('21.13.1.99NHEVENT1','21.13.1.99','21.13.1.99','E5PR1_WSD1',1,'湿度（RH％）过高报警，当前值为：61.8',1,'南海机房环控监控系统','南海机房环控监控系统','广发银行总行','机房五层服务器'),
 ('21.13.1.99NHEVENT2','21.13.1.99','21.13.1.99','E5PR1_WSD1',1,'湿度（RH％）恢复正常，当前值为：61.5',2,'南海机房环控监控系统','南海机房环控监控系统','广发银行总行','机房五层服务器');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;


--
-- Definition of table `t_config`
--

DROP TABLE IF EXISTS `t_config`;
CREATE TABLE `t_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `curid` int(11) DEFAULT '0' COMMENT '当前同步ID',
  `sourcetable` varchar(500) DEFAULT NULL COMMENT '数据源表',
  `fields` varchar(2000) DEFAULT NULL COMMENT '同步字段',
  `keyfield` varchar(45) DEFAULT NULL COMMENT '主键字段',
  `taskname` varchar(500) DEFAULT NULL COMMENT '任务实例',
  `enableflag` int(11) DEFAULT '0' COMMENT '是否可用',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置表';

--
-- Dumping data for table `t_config`
--

/*!40000 ALTER TABLE `t_config` DISABLE KEYS */;
INSERT INTO `t_config` (`id`,`curid`,`sourcetable`,`fields`,`keyfield`,`taskname`,`enableflag`,`remark`) VALUES 
 (1,54,'t_user','id,mobile,pwd,imei,inserttime','id','task121',1,'mysql'),
 (2,7,'t_abc','id,mobile,pwd,inserttime','id','task122',0,'mysql'),
 (3,7,'t_xyz','id,mobile,inserttime','id','task123',0,'mysql'),
 (4,12,'t_ppp','id,mobile,pwd','id','task224',0,'mysql'),
 (5,3,'t_wmb','id,a,b,c,d','id','task41',0,'mysql'),
 (6,3,'t_ggg','id,name,pwd,inserttime','id','tasksql',0,'sql server'),
 (7,11,'11','11','11','11',11,'11');
/*!40000 ALTER TABLE `t_config` ENABLE KEYS */;


--
-- Definition of table `t_data`
--

DROP TABLE IF EXISTS `t_data`;
CREATE TABLE `t_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `data` longtext NOT NULL COMMENT '手机号码',
  `inserttime` datetime DEFAULT NULL COMMENT '注册时间',
  `syncflag` int(11) DEFAULT '0' COMMENT '同步标志',
  `echoflag` int(11) DEFAULT '0' COMMENT '回应标志',
  `synctime` datetime DEFAULT NULL COMMENT '同步时间',
  `echotime` datetime DEFAULT NULL COMMENT '回应时间',
  `sourcetable` varchar(500) DEFAULT NULL COMMENT '数据源表',
  `synctype` varchar(45) DEFAULT NULL COMMENT '同步方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='数据同步表';

--
-- Dumping data for table `t_data`
--

/*!40000 ALTER TABLE `t_data` DISABLE KEYS */;
INSERT INTO `t_data` (`id`,`data`,`inserttime`,`syncflag`,`echoflag`,`synctime`,`echotime`,`sourcetable`,`synctype`) VALUES 
 (1,'Node=\"21.13.1.99\"|AlertKey=\"E5PR1_WSD1\"|Severity=\"1\"|CN_Summary=\"湿度（RH％）过高报警，当前值为：61.8\"|Type=\"1\"|CN_Servername=\"南海机房环控监控系统\"|CGB_ApplId=\"南海机房环控监控系统\"|CGB_BranchName=\"广发银行总行\"|CGB_Center=\"机房五层服务器\"','2014-12-28 12:26:14',1,0,'2014-12-28 17:14:06',NULL,'','socket'),
 (2,'Node=\"21.13.1.99\"|AlertKey=\"E5PR1_WSD1\"|Severity=\"1\"|CN_Summary=\"湿度（RH％）恢复正常，当前值为：61.5\"|Type=\"2\"|CN_Servername=\"南海机房环控监控系统\"|CGB_ApplId=\"南海机房环控监控系统\"|CGB_BranchName=\"广发银行总行\"|CGB_Center=\"机房五层服务器\"','2014-12-28 12:43:18',1,0,'2014-12-28 17:14:06',NULL,'','socket');
/*!40000 ALTER TABLE `t_data` ENABLE KEYS */;


--
-- Definition of table `t_sms`
--

DROP TABLE IF EXISTS `t_sms`;
CREATE TABLE `t_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(500) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `sendtime` datetime DEFAULT NULL,
  `inserttime` datetime DEFAULT NULL,
  `LASTOCCURRENCE` datetime DEFAULT NULL,
  `SERVERNAME` varchar(64) DEFAULT NULL,
  `SERVERSERIAL` int(11) DEFAULT NULL,
  `NODE` varchar(64) DEFAULT NULL,
  `IP` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_sms`
--

/*!40000 ALTER TABLE `t_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sms` ENABLE KEYS */;


--
-- Definition of table `t_sms_log`
--

DROP TABLE IF EXISTS `t_sms_log`;
CREATE TABLE `t_sms_log` (
  `id` int(10) unsigned DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `sendtime` datetime DEFAULT NULL,
  `inserttime` datetime DEFAULT NULL,
  `processtime` datetime DEFAULT NULL,
  `LASTOCCURRENCE` datetime DEFAULT NULL,
  `SERVERNAME` varchar(64) DEFAULT NULL,
  `SERVERSERIAL` int(10) unsigned DEFAULT NULL,
  `NODE` varchar(64) DEFAULT NULL,
  `IP` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_sms_log`
--

/*!40000 ALTER TABLE `t_sms_log` DISABLE KEYS */;
INSERT INTO `t_sms_log` (`id`,`message`,`telephone`,`sendtime`,`inserttime`,`processtime`,`LASTOCCURRENCE`,`SERVERNAME`,`SERVERSERIAL`,`NODE`,`IP`) VALUES 
 (1,'[故障]节点1E告警，内容是内存损坏，告警等级为严重告警，最后告警时间在Fri Sep 26 13:00:00 CST 2014，请尽快处理！','13800138000','2014-09-26 13:58:20','2014-09-26 13:58:20','2014-09-26 13:58:21','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1'),
 (2,'[故障]节点1E告警，内容是内存损坏，告警等级为严重告警，最后告警时间在Fri Sep 26 13:00:00 CST 2014，请尽快处理！','13800138000','2014-09-26 13:58:50','2014-09-26 13:58:20','2014-09-26 13:58:50','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1'),
 (3,'[故障]节点1E告警，内容是内存损坏，告警等级为严重告警，最后告警时间在Fri Sep 26 13:00:00 CST 2014，请尽快处理！','13800138000','2014-09-26 13:59:20','2014-09-26 13:58:20','2014-09-26 13:59:20','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1'),
 (4,'[故障]节点1E告警，内容是内存损坏，告警等级为严重告警，最后告警时间在Fri Sep 26 13:00:00 CST 2014，请尽快处理！','13800138000','2014-09-26 13:59:50','2014-09-26 13:58:20','2014-09-26 13:59:50','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1'),
 (5,'[故障]节点1E告警，内容是内存损坏，告警等级为严重告警，最后告警时间在Fri Sep 26 13:00:00 CST 2014，请尽快处理！','13800138000','2014-09-26 15:11:33','2014-09-26 15:11:33','2014-09-26 15:11:34','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1'),
 (6,'[故障]节点1E告警，内容是内存损坏，告警等级为严重告警，最后告警时间在Fri Sep 26 13:00:00 CST 2014，请尽快处理！','13800138000','2014-09-26 15:12:03','2014-09-26 15:11:33','2014-09-26 15:12:03','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1'),
 (7,'[故障]节点1E告警，内容是内存损坏，告警等级为严重告警，最后告警时间在Fri Sep 26 13:00:00 CST 2014，请尽快处理！','13800138000','2014-09-26 15:12:33','2014-09-26 15:11:33','2014-09-26 15:12:33','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1'),
 (8,'[故障]节点1E告警，内容是内存损坏，告警等级为严重告警，最后告警时间在Fri Sep 26 13:00:00 CST 2014，请尽快处理！','13800138000','2014-09-26 15:13:03','2014-09-26 15:11:33','2014-09-26 15:13:03','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1'),
 (9,'[故障]节点1E告警，内容是内存损坏，告警等级为严重告警，最后告警时间在Fri Sep 26 13:00:00 CST 2014，请尽快处理！','13800138000','2014-09-26 15:13:31','2014-09-26 15:13:31','2014-09-26 15:13:31','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1'),
 (10,'[故障]节点1E告警，内容是内存损坏，告警等级为严重告警，最后告警时间在Fri Sep 26 13:00:00 CST 2014，请尽快处理！','13800138000','2014-09-26 15:14:01','2014-09-26 15:13:31','2014-10-15 11:41:38','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1'),
 (11,'[故障]节点1E告警，内容是内存损坏，告警等级为严重告警，最后告警时间在Fri Sep 26 13:00:00 CST 2014，请尽快处理！','13800138000','2014-09-26 15:14:31','2014-09-26 15:13:31','2014-10-15 11:41:40','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1'),
 (12,'[故障]节点1E告警，内容是内存损坏，告警等级为严重告警，最后告警时间在Fri Sep 26 13:00:00 CST 2014，请尽快处理！','13800138000','2014-09-26 15:15:01','2014-09-26 15:13:31','2014-10-15 11:41:41','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1'),
 (4,'[故障]x告警，内容是m，告警等级为严重，最后告警时间在09-26 13:00:00，请尽快处理！','13800138000','2014-10-24 09:38:53','2014-10-24 09:38:53','2014-10-24 09:41:01','2014-09-26 13:00:00','s1',123456,'x','127.0.0.1'),
 (5,'[故障]x告警，内容是m，告警等级为严重，最后告警时间在09-26 13:00:00，请尽快处理！','13800138000','2014-10-24 09:39:23','2014-10-24 09:38:53','2014-10-24 09:41:01','2014-09-26 13:00:00','s1',123456,'x','127.0.0.1'),
 (6,'[故障]x告警，内容是m，告警等级为严重，最后告警时间在09-26 13:00:00，请尽快处理！','13800138000','2014-10-24 09:39:53','2014-10-24 09:38:53','2014-10-24 09:41:01','2014-09-26 13:00:00','s1',123456,'x','127.0.0.1'),
 (1,'[故障]节点1告警，内容是内存损坏，告警等级为严重，最后告警时间在09-26 13:00:00，请尽快处理！','13800138000','2014-10-24 09:37:26','2014-10-24 09:37:26','2014-10-24 09:41:03','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1'),
 (2,'[故障]节点1告警，内容是内存损坏，告警等级为严重，最后告警时间在09-26 13:00:00，请尽快处理！','13800138000','2014-10-24 09:37:56','2014-10-24 09:37:26','2014-10-24 09:41:03','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1'),
 (3,'[故障]节点1告警，内容是内存损坏，告警等级为严重，最后告警时间在09-26 13:00:00，请尽快处理！','13800138000','2014-10-24 09:38:26','2014-10-24 09:37:26','2014-10-24 09:41:03','2014-09-26 13:00:00','s1',123456,'节点1','127.0.0.1');
/*!40000 ALTER TABLE `t_sms_log` ENABLE KEYS */;


--
-- Definition of table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `name` varchar(45) DEFAULT NULL COMMENT '登录账号',
  `pwd` varchar(45) DEFAULT NULL COMMENT '密码',
  `inserttime` datetime DEFAULT NULL COMMENT '注册时间',
  `lastloginip` varchar(45) DEFAULT NULL COMMENT '最后登录IP',
  `lastlogintime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `logincount` int(11) DEFAULT NULL COMMENT '登录次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='注册用户表';

--
-- Dumping data for table `t_user`
--

/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`id`,`name`,`pwd`,`inserttime`,`lastloginip`,`lastlogintime`,`logincount`) VALUES 
 (1,'admin','e10adc3949ba59abbe56e057f20f883e','2014-09-02 14:25:03','0:0:0:0:0:0:0:1','2015-05-05 19:28:57',37),
 (2,'abc','c81e728d9d4c2f636f067f89cc14862c','2014-09-02 16:41:27','0:0:0:0:0:0:0:1','2014-09-02 16:46:57',1),
 (4,'xxx','f561aaf6ef0bf14d4208bb46a4ccb3ad','2015-04-22 17:22:52',NULL,NULL,0);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;


--
-- Definition of table `tomnibusforcate_user`
--

DROP TABLE IF EXISTS `tomnibusforcate_user`;
CREATE TABLE `tomnibusforcate_user` (
  `NODE` varchar(64) DEFAULT NULL,
  `IP` varchar(64) DEFAULT NULL,
  `FIRSTOCCURRENCE` datetime DEFAULT NULL,
  `LASTOCCURRENCE` datetime DEFAULT NULL,
  `SEVERITY` int(11) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `SUMMARY` varchar(255) DEFAULT NULL,
  `SERVERNAME` varchar(64) DEFAULT NULL,
  `SERVERSERIAL` int(11) DEFAULT NULL,
  `CONTACTVALUE` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tomnibusforcate_user`
--

/*!40000 ALTER TABLE `tomnibusforcate_user` DISABLE KEYS */;
INSERT INTO `tomnibusforcate_user` (`NODE`,`IP`,`FIRSTOCCURRENCE`,`LASTOCCURRENCE`,`SEVERITY`,`TYPE`,`SUMMARY`,`SERVERNAME`,`SERVERSERIAL`,`CONTACTVALUE`) VALUES 
 ('节点1','127.0.0.1','2014-09-26 12:00:00','2014-09-26 13:00:00',5,0,'内存损坏','s1',123456,'13800138000'),
 ('x','127.0.0.1','2014-09-26 12:00:00','2014-09-26 13:00:00',5,0,'m','s1',123456,'13800138000');
/*!40000 ALTER TABLE `tomnibusforcate_user` ENABLE KEYS */;


--
-- Definition of table `tt`
--

DROP TABLE IF EXISTS `tt`;
CREATE TABLE `tt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a` varchar(45) NOT NULL,
  `b` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tt`
--

/*!40000 ALTER TABLE `tt` DISABLE KEYS */;
INSERT INTO `tt` (`id`,`a`,`b`) VALUES 
 (1,'AAABB','BB'),
 (2,'AAABB','CC'),
 (3,'AAADD','DD');
/*!40000 ALTER TABLE `tt` ENABLE KEYS */;


--
-- Definition of view `vomnibusforcate_user`
--

DROP TABLE IF EXISTS `vomnibusforcate_user`;
DROP VIEW IF EXISTS `vomnibusforcate_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vomnibusforcate_user` AS select `a`.`NODE` AS `NODE`,`a`.`IP` AS `IP`,`a`.`FIRSTOCCURRENCE` AS `FIRSTOCCURRENCE`,`a`.`LASTOCCURRENCE` AS `LASTOCCURRENCE`,`a`.`SEVERITY` AS `SEVERITY`,`a`.`TYPE` AS `TYPE`,`a`.`SUMMARY` AS `SUMMARY`,`a`.`SERVERNAME` AS `SERVERNAME`,`a`.`SERVERSERIAL` AS `SERVERSERIAL`,`a`.`CONTACTVALUE` AS `CONTACTVALUE`,`b`.`smsflag` AS `smsflag` from (`tomnibusforcate_user` `a` join `reporter_status_new` `b` on(((`a`.`LASTOCCURRENCE` = `b`.`lastoccurrence`) and (`a`.`SERVERNAME` = `b`.`servername`) and (`a`.`SERVERSERIAL` = `b`.`serverserial`))));



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
