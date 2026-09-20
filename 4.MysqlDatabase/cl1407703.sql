-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl1407703
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cl1407703`
--

/*!40000 DROP DATABASE IF EXISTS `cl1407703`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl1407703` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl1407703`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `touxiang` longtext COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (131,'2024-03-17 06:54:52','教师工号1','123456','教师姓名1','file/jiaoshiTouxiang1.jpg','19819881111','男'),(132,'2024-03-17 06:54:52','教师工号2','123456','教师姓名2','file/jiaoshiTouxiang2.jpg','19819881112','男'),(133,'2024-03-17 06:54:52','教师工号3','123456','教师姓名3','file/jiaoshiTouxiang3.jpg','19819881113','男'),(134,'2024-03-17 06:54:52','教师工号4','123456','教师姓名4','file/jiaoshiTouxiang4.jpg','19819881114','男'),(135,'2024-03-17 06:54:52','教师工号5','123456','教师姓名5','file/jiaoshiTouxiang5.jpg','19819881115','男'),(136,'2024-03-17 06:54:52','教师工号6','123456','教师姓名6','file/jiaoshiTouxiang6.jpg','19819881116','男');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-17 06:54:52','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"日程安排\",\"menuJump\":\"列表\",\"tableName\":\"richenganpai\"},{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"查看评论\",\"新增\"],\"menu\":\"实训项目\",\"menuJump\":\"列表\",\"tableName\":\"shixunxiangmu\"},{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"报告率\"],\"menu\":\"实训报告\",\"menuJump\":\"列表\",\"tableName\":\"shixunbaogao\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"实训成绩\",\"menuJump\":\"列表\",\"tableName\":\"shixunchengji\"},{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\"],\"menu\":\"学生评价\",\"menuJump\":\"列表\",\"tableName\":\"xueshengpingjia\"}],\"fontClass\":\"icon-common34\",\"menu\":\"校内实训\",\"unicode\":\"&#xee85;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"审核\"],\"menu\":\"自主申请\",\"menuJump\":\"列表\",\"tableName\":\"zizhushenqing\"},{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"实训单位\",\"menuJump\":\"列表\",\"tableName\":\"shixundanwei\"},{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"审核\",\"查看\"],\"menu\":\"实训鉴定\",\"menuJump\":\"列表\",\"tableName\":\"shixunjianding\"},{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"校外实训成绩\",\"menuJump\":\"列表\",\"tableName\":\"xiaowaishixunchengji\"}],\"fontClass\":\"icon-common31\",\"menu\":\"校外实训\",\"unicode\":\"&#xee48;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"参与情况统计\"],\"menu\":\"校内实训\",\"menuJump\":\"列表\",\"tableName\":\"xiaoneishixun\"},{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\",\"打卡情况统计\",\"已打卡情况统计\",\"未打卡统计\",\"已打卡统计\"],\"menu\":\"校外实训\",\"menuJump\":\"列表\",\"tableName\":\"xiaowaishixun\"}],\"fontClass\":\"icon-common18\",\"menu\":\"基础数据\",\"unicode\":\"&#xedff;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"},{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"学生\",\"menuJump\":\"列表\",\"tableName\":\"xuesheng\"},{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"教师\",\"menuJump\":\"列表\",\"tableName\":\"jiaoshi\"}],\"fontClass\":\"icon-common31\",\"menu\":\"系统设置\",\"unicode\":\"&#xee48;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"日程安排\",\"menuJump\":\"列表\",\"tableName\":\"richenganpai\"},{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"实训项目\",\"menuJump\":\"列表\",\"tableName\":\"shixunxiangmu\"},{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\"],\"menu\":\"实训报告\",\"menuJump\":\"列表\",\"tableName\":\"shixunbaogao\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"实训成绩\",\"menuJump\":\"列表\",\"tableName\":\"shixunchengji\"},{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\"],\"menu\":\"学生评价\",\"menuJump\":\"列表\",\"tableName\":\"xueshengpingjia\"}],\"fontClass\":\"icon-common34\",\"menu\":\"校内实训\",\"unicode\":\"&#xee85;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"审核\"],\"menu\":\"自主申请\",\"menuJump\":\"列表\",\"tableName\":\"zizhushenqing\"},{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"实训单位\",\"menuJump\":\"列表\",\"tableName\":\"shixundanwei\"},{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"实训鉴定\",\"menuJump\":\"列表\",\"tableName\":\"shixunjianding\"},{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"校外实训成绩\",\"menuJump\":\"列表\",\"tableName\":\"xiaowaishixunchengji\"}],\"fontClass\":\"icon-common31\",\"menu\":\"校外实训\",\"unicode\":\"&#xee48;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"教师\",\"tableName\":\"jiaoshi\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\"],\"menu\":\"日程安排\",\"menuJump\":\"列表\",\"tableName\":\"richenganpai\"},{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"上传报告\",\"评价\"],\"menu\":\"实训项目\",\"menuJump\":\"列表\",\"tableName\":\"shixunxiangmu\"},{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"实训报告\",\"menuJump\":\"列表\",\"tableName\":\"shixunbaogao\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\"],\"menu\":\"实训成绩\",\"menuJump\":\"列表\",\"tableName\":\"shixunchengji\"}],\"fontClass\":\"icon-common34\",\"menu\":\"校内实训\",\"unicode\":\"&#xee85;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"新增\"],\"menu\":\"自主申请\",\"menuJump\":\"列表\",\"tableName\":\"zizhushenqing\"},{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\"],\"menu\":\"实训单位\",\"menuJump\":\"列表\",\"tableName\":\"shixundanwei\"},{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"新增\"],\"menu\":\"实训鉴定\",\"menuJump\":\"列表\",\"tableName\":\"shixunjianding\"},{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\"],\"menu\":\"校外实训成绩\",\"menuJump\":\"列表\",\"tableName\":\"xiaowaishixunchengji\"}],\"fontClass\":\"icon-common31\",\"menu\":\"校外实训\",\"unicode\":\"&#xee48;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"学生\",\"tableName\":\"xuesheng\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `richenganpai`
--

DROP TABLE IF EXISTS `richenganpai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `richenganpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) NOT NULL COMMENT '活动名称',
  `shijian` datetime NOT NULL COMMENT '时间',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `neirong` longtext COMMENT '内容',
  `zhuyishixiang` longtext COMMENT '注意事项',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='日程安排';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `richenganpai`
--

LOCK TABLES `richenganpai` WRITE;
/*!40000 ALTER TABLE `richenganpai` DISABLE KEYS */;
INSERT INTO `richenganpai` VALUES (11,'2024-03-17 06:54:52','活动名称1','2024-03-17 14:54:52','地址1','内容1','注意事项1'),(12,'2024-03-17 06:54:52','活动名称2','2024-03-17 14:54:52','地址2','内容2','注意事项2'),(13,'2024-03-17 06:54:52','活动名称3','2024-03-17 14:54:52','地址3','内容3','注意事项3'),(14,'2024-03-17 06:54:52','活动名称4','2024-03-17 14:54:52','地址4','内容4','注意事项4'),(15,'2024-03-17 06:54:52','活动名称5','2024-03-17 14:54:52','地址5','内容5','注意事项5'),(16,'2024-03-17 06:54:52','活动名称6','2024-03-17 14:54:52','地址6','内容6','注意事项6');
/*!40000 ALTER TABLE `richenganpai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shixunbaogao`
--

DROP TABLE IF EXISTS `shixunbaogao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shixunbaogao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shixunmingcheng` varchar(200) NOT NULL COMMENT '实训名称',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shixunriqi` datetime NOT NULL COMMENT '实训日期',
  `shixunmude` varchar(200) DEFAULT NULL COMMENT '实训目的',
  `shixunbaogao` longtext COMMENT '实训报告',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='实训报告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shixunbaogao`
--

LOCK TABLES `shixunbaogao` WRITE;
/*!40000 ALTER TABLE `shixunbaogao` DISABLE KEYS */;
INSERT INTO `shixunbaogao` VALUES (31,'2024-03-17 06:54:52','实训名称1','学号1','学生姓名1','2024-03-17 14:54:52','实训目的1',''),(32,'2024-03-17 06:54:52','实训名称2','学号2','学生姓名2','2024-03-17 14:54:52','实训目的2',''),(33,'2024-03-17 06:54:52','实训名称3','学号3','学生姓名3','2024-03-17 14:54:52','实训目的3',''),(34,'2024-03-17 06:54:52','实训名称4','学号4','学生姓名4','2024-03-17 14:54:52','实训目的4',''),(35,'2024-03-17 06:54:52','实训名称5','学号5','学生姓名5','2024-03-17 14:54:52','实训目的5',''),(36,'2024-03-17 06:54:52','实训名称6','学号6','学生姓名6','2024-03-17 14:54:52','实训目的6','');
/*!40000 ALTER TABLE `shixunbaogao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shixunchengji`
--

DROP TABLE IF EXISTS `shixunchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shixunchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shixunmingcheng` varchar(200) NOT NULL COMMENT '实训名称',
  `shixunneirong` longtext NOT NULL COMMENT '实训内容',
  `shixunriqi` datetime NOT NULL COMMENT '实训日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `chengji` int(11) DEFAULT NULL COMMENT '成绩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='实训成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shixunchengji`
--

LOCK TABLES `shixunchengji` WRITE;
/*!40000 ALTER TABLE `shixunchengji` DISABLE KEYS */;
INSERT INTO `shixunchengji` VALUES (41,'2024-03-17 06:54:52','实训名称1','实训内容1','2024-03-17 14:54:52','学号1','学生姓名1',1),(42,'2024-03-17 06:54:52','实训名称2','实训内容2','2024-03-17 14:54:52','学号2','学生姓名2',2),(43,'2024-03-17 06:54:52','实训名称3','实训内容3','2024-03-17 14:54:52','学号3','学生姓名3',3),(44,'2024-03-17 06:54:52','实训名称4','实训内容4','2024-03-17 14:54:52','学号4','学生姓名4',4),(45,'2024-03-17 06:54:52','实训名称5','实训内容5','2024-03-17 14:54:52','学号5','学生姓名5',5),(46,'2024-03-17 06:54:52','实训名称6','实训内容6','2024-03-17 14:54:52','学号6','学生姓名6',6);
/*!40000 ALTER TABLE `shixunchengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shixundanwei`
--

DROP TABLE IF EXISTS `shixundanwei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shixundanwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danweimingcheng` varchar(200) NOT NULL COMMENT '单位名称',
  `danweijieshao` longtext NOT NULL COMMENT '单位介绍',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shixungangwei` varchar(200) DEFAULT NULL COMMENT '实训岗位',
  `shixunneirong` varchar(200) DEFAULT NULL COMMENT '实训内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='实训单位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shixundanwei`
--

LOCK TABLES `shixundanwei` WRITE;
/*!40000 ALTER TABLE `shixundanwei` DISABLE KEYS */;
INSERT INTO `shixundanwei` VALUES (71,'2024-03-17 06:54:52','单位名称1','单位介绍1','地址1','联系方式1','实训岗位1','实训内容1'),(72,'2024-03-17 06:54:52','单位名称2','单位介绍2','地址2','联系方式2','实训岗位2','实训内容2'),(73,'2024-03-17 06:54:52','单位名称3','单位介绍3','地址3','联系方式3','实训岗位3','实训内容3'),(74,'2024-03-17 06:54:52','单位名称4','单位介绍4','地址4','联系方式4','实训岗位4','实训内容4'),(75,'2024-03-17 06:54:52','单位名称5','单位介绍5','地址5','联系方式5','实训岗位5','实训内容5'),(76,'2024-03-17 06:54:52','单位名称6','单位介绍6','地址6','联系方式6','实训岗位6','实训内容6');
/*!40000 ALTER TABLE `shixundanwei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shixunjianding`
--

DROP TABLE IF EXISTS `shixunjianding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shixunjianding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shixunmingcheng` varchar(200) DEFAULT NULL COMMENT '实训名称',
  `shixunshijian` date DEFAULT NULL COMMENT '实训时间',
  `shixundanwei` varchar(200) DEFAULT NULL COMMENT '实训单位',
  `jiandingneirong` varchar(200) DEFAULT NULL COMMENT '鉴定内容',
  `jiandingshijian` datetime DEFAULT NULL COMMENT '鉴定时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jiandingren` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='实训鉴定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shixunjianding`
--

LOCK TABLES `shixunjianding` WRITE;
/*!40000 ALTER TABLE `shixunjianding` DISABLE KEYS */;
INSERT INTO `shixunjianding` VALUES (81,'2024-03-17 06:54:52','实训名称1','2024-03-17','实训单位1','鉴定内容1','2024-03-17 14:54:52','学号1','学生姓名1','教师姓名1','是',''),(82,'2024-03-17 06:54:52','实训名称2','2024-03-17','实训单位2','鉴定内容2','2024-03-17 14:54:52','学号2','学生姓名2','教师姓名2','是',''),(83,'2024-03-17 06:54:52','实训名称3','2024-03-17','实训单位3','鉴定内容3','2024-03-17 14:54:52','学号3','学生姓名3','教师姓名3','是',''),(84,'2024-03-17 06:54:52','实训名称4','2024-03-17','实训单位4','鉴定内容4','2024-03-17 14:54:52','学号4','学生姓名4','教师姓名4','是',''),(85,'2024-03-17 06:54:52','实训名称5','2024-03-17','实训单位5','鉴定内容5','2024-03-17 14:54:52','学号5','学生姓名5','教师姓名5','是',''),(86,'2024-03-17 06:54:52','实训名称6','2024-03-17','实训单位6','鉴定内容6','2024-03-17 14:54:52','学号6','学生姓名6','教师姓名6','是','');
/*!40000 ALTER TABLE `shixunjianding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shixunxiangmu`
--

DROP TABLE IF EXISTS `shixunxiangmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shixunxiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoneimingcheng` varchar(200) NOT NULL COMMENT '校内名称',
  `shixunmingcheng` varchar(200) NOT NULL COMMENT '实训名称',
  `shixunmubiao` varchar(200) DEFAULT NULL COMMENT '实训目标',
  `shixunneirong` longtext COMMENT '实训内容',
  `miaoshu` varchar(200) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='实训项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shixunxiangmu`
--

LOCK TABLES `shixunxiangmu` WRITE;
/*!40000 ALTER TABLE `shixunxiangmu` DISABLE KEYS */;
INSERT INTO `shixunxiangmu` VALUES (21,'2024-03-17 06:54:52','校内名称1','实训名称1','实训目标1','实训内容1','描述1'),(22,'2024-03-17 06:54:52','校内名称2','实训名称2','实训目标2','实训内容2','描述2'),(23,'2024-03-17 06:54:52','校内名称3','实训名称3','实训目标3','实训内容3','描述3'),(24,'2024-03-17 06:54:52','校内名称4','实训名称4','实训目标4','实训内容4','描述4'),(25,'2024-03-17 06:54:52','校内名称5','实训名称5','实训目标5','实训内容5','描述5'),(26,'2024-03-17 06:54:52','校内名称6','实训名称6','实训目标6','实训内容6','描述6');
/*!40000 ALTER TABLE `shixunxiangmu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1710658585337,'1','xuesheng','学生','oehesz6l8r221vmhdrh940zc9j92pzkq','2024-03-17 06:56:30','2024-03-17 07:56:30');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-17 06:54:52','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoneishixun`
--

DROP TABLE IF EXISTS `xiaoneishixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoneishixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shixunqingkuang` varchar(200) DEFAULT NULL COMMENT '实训情况',
  `canyuqingkuang` int(11) DEFAULT NULL COMMENT '参与情况',
  `jinzhan` varchar(200) DEFAULT NULL COMMENT '进展',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='校内实训';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoneishixun`
--

LOCK TABLES `xiaoneishixun` WRITE;
/*!40000 ALTER TABLE `xiaoneishixun` DISABLE KEYS */;
INSERT INTO `xiaoneishixun` VALUES (101,'2024-03-17 06:54:52','学号1','学生姓名1','实训情况1',1,'进展1'),(102,'2024-03-17 06:54:52','学号2','学生姓名2','实训情况2',2,'进展2'),(103,'2024-03-17 06:54:52','学号3','学生姓名3','实训情况3',3,'进展3'),(104,'2024-03-17 06:54:52','学号4','学生姓名4','实训情况4',4,'进展4'),(105,'2024-03-17 06:54:52','学号5','学生姓名5','实训情况5',5,'进展5'),(106,'2024-03-17 06:54:52','学号6','学生姓名6','实训情况6',6,'进展6');
/*!40000 ALTER TABLE `xiaoneishixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaowaishixun`
--

DROP TABLE IF EXISTS `xiaowaishixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaowaishixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `yidaka` int(11) DEFAULT NULL COMMENT '已打卡',
  `weidaka` int(11) DEFAULT NULL COMMENT '未打卡',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='校外实训';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaowaishixun`
--

LOCK TABLES `xiaowaishixun` WRITE;
/*!40000 ALTER TABLE `xiaowaishixun` DISABLE KEYS */;
INSERT INTO `xiaowaishixun` VALUES (111,'2024-03-17 06:54:52','学号1','学生姓名1',1,1),(112,'2024-03-17 06:54:52','学号2','学生姓名2',2,2),(113,'2024-03-17 06:54:52','学号3','学生姓名3',3,3),(114,'2024-03-17 06:54:52','学号4','学生姓名4',4,4),(115,'2024-03-17 06:54:52','学号5','学生姓名5',5,5),(116,'2024-03-17 06:54:52','学号6','学生姓名6',6,6);
/*!40000 ALTER TABLE `xiaowaishixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaowaishixunchengji`
--

DROP TABLE IF EXISTS `xiaowaishixunchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaowaishixunchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shixunmingcheng` varchar(200) NOT NULL COMMENT '实训名称',
  `shixunneirong` varchar(200) NOT NULL COMMENT '实训内容',
  `shixunriqi` datetime NOT NULL COMMENT '实训日期',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `chengji` int(11) DEFAULT NULL COMMENT '成绩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='校外实训成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaowaishixunchengji`
--

LOCK TABLES `xiaowaishixunchengji` WRITE;
/*!40000 ALTER TABLE `xiaowaishixunchengji` DISABLE KEYS */;
INSERT INTO `xiaowaishixunchengji` VALUES (91,'2024-03-17 06:54:52','实训名称1','实训内容1','2024-03-17 14:54:52','学号1','学生姓名1',1),(92,'2024-03-17 06:54:52','实训名称2','实训内容2','2024-03-17 14:54:52','学号2','学生姓名2',2),(93,'2024-03-17 06:54:52','实训名称3','实训内容3','2024-03-17 14:54:52','学号3','学生姓名3',3),(94,'2024-03-17 06:54:52','实训名称4','实训内容4','2024-03-17 14:54:52','学号4','学生姓名4',4),(95,'2024-03-17 06:54:52','实训名称5','实训内容5','2024-03-17 14:54:52','学号5','学生姓名5',5),(96,'2024-03-17 06:54:52','实训名称6','实训内容6','2024-03-17 14:54:52','学号6','学生姓名6',6);
/*!40000 ALTER TABLE `xiaowaishixunchengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1710658585338 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (141,'2024-03-17 06:54:52','学号1','123456','学生姓名1','file/xueshengTouxiang1.jpg','男','19819881111','441622200101010001'),(142,'2024-03-17 06:54:52','学号2','123456','学生姓名2','file/xueshengTouxiang2.jpg','男','19819881112','441622200202020002'),(143,'2024-03-17 06:54:52','学号3','123456','学生姓名3','file/xueshengTouxiang3.jpg','男','19819881113','441622200303030003'),(144,'2024-03-17 06:54:52','学号4','123456','学生姓名4','file/xueshengTouxiang4.jpg','男','19819881114','441622200404040004'),(145,'2024-03-17 06:54:52','学号5','123456','学生姓名5','file/xueshengTouxiang5.jpg','男','19819881115','441622200505050005'),(146,'2024-03-17 06:54:52','学号6','123456','学生姓名6','file/xueshengTouxiang6.jpg','男','19819881116','441622200606060006'),(1710658585337,'2024-03-17 06:56:25','1','1','1','file/1710658576489.jpg','男','13201010101','441210100101014001');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengpingjia`
--

DROP TABLE IF EXISTS `xueshengpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `neirong` longtext COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='学生评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengpingjia`
--

LOCK TABLES `xueshengpingjia` WRITE;
/*!40000 ALTER TABLE `xueshengpingjia` DISABLE KEYS */;
INSERT INTO `xueshengpingjia` VALUES (51,'2024-03-17 06:54:52','学号1','学生姓名1','项目名称1','内容1'),(52,'2024-03-17 06:54:52','学号2','学生姓名2','项目名称2','内容2'),(53,'2024-03-17 06:54:52','学号3','学生姓名3','项目名称3','内容3'),(54,'2024-03-17 06:54:52','学号4','学生姓名4','项目名称4','内容4'),(55,'2024-03-17 06:54:52','学号5','学生姓名5','项目名称5','内容5'),(56,'2024-03-17 06:54:52','学号6','学生姓名6','项目名称6','内容6');
/*!40000 ALTER TABLE `xueshengpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zizhushenqing`
--

DROP TABLE IF EXISTS `zizhushenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zizhushenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `shixunmingcheng` varchar(200) NOT NULL COMMENT '实训名称',
  `shixunneirong` longtext COMMENT '实训内容',
  `miaoshu` varchar(200) DEFAULT NULL COMMENT '描述',
  `shixundanwei` varchar(200) DEFAULT NULL COMMENT '实训单位',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='自主申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zizhushenqing`
--

LOCK TABLES `zizhushenqing` WRITE;
/*!40000 ALTER TABLE `zizhushenqing` DISABLE KEYS */;
INSERT INTO `zizhushenqing` VALUES (61,'2024-03-17 06:54:52','学号1','学生姓名1','实训名称1','实训内容1','描述1','实训单位1','是',''),(62,'2024-03-17 06:54:52','学号2','学生姓名2','实训名称2','实训内容2','描述2','实训单位2','是',''),(63,'2024-03-17 06:54:52','学号3','学生姓名3','实训名称3','实训内容3','描述3','实训单位3','是',''),(64,'2024-03-17 06:54:52','学号4','学生姓名4','实训名称4','实训内容4','描述4','实训单位4','是',''),(65,'2024-03-17 06:54:52','学号5','学生姓名5','实训名称5','实训内容5','描述5','实训单位5','是',''),(66,'2024-03-17 06:54:52','学号6','学生姓名6','实训名称6','实训内容6','描述6','实训单位6','是','');
/*!40000 ALTER TABLE `zizhushenqing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24 10:51:41
