# ************************************************************
# Sequel Ace SQL dump
# 版本号： 20033
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# 主机: localhost (MySQL 8.0.28)
# 数据库: barracuda
# 生成时间: 2024-09-13 21:59:04 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# 转储表 a_base_table
# ------------------------------------------------------------

DROP TABLE IF EXISTS `a_base_table`;

CREATE TABLE `a_base_table` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint DEFAULT NULL COMMENT '删除标识 0=未删除,1=已删除',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基础表';



# 转储表 gd_note
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gd_note`;

CREATE TABLE `gd_note` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `wx_user_id` int unsigned DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  `note_type` int DEFAULT NULL COMMENT '笔记类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='笔记表';



# 转储表 gd_period
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gd_period`;

CREATE TABLE `gd_period` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint DEFAULT NULL COMMENT '删除标识 0=未删除,1=已删除',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `table_id` int DEFAULT NULL COMMENT '课程表id',
  `name` varchar(16) DEFAULT NULL COMMENT '名称',
  `sort` int DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='课节表';



# 转储表 gd_subject
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gd_subject`;

CREATE TABLE `gd_subject` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '名称',
  `is_system` tinyint DEFAULT NULL COMMENT '是否为系统内置(1:是，0:否)',
  `wx_user_id` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='学科表';

LOCK TABLES `gd_subject` WRITE;
/*!40000 ALTER TABLE `gd_subject` DISABLE KEYS */;

INSERT INTO `gd_subject` (`id`, `name`, `is_system`, `wx_user_id`, `create_time`, `del_flag`)
VALUES
	(1,'语文',1,NULL,'2024-08-28 21:50:59','0'),
	(2,'数学',1,NULL,'2024-08-28 21:51:51','0'),
	(3,'数综',1,NULL,'2024-08-28 21:51:56','0'),
	(4,'英语',1,NULL,'2024-08-28 21:52:23','0'),
	(5,'科学',1,NULL,'2024-08-28 21:52:32','0'),
	(6,'音乐',1,NULL,'2024-08-28 21:52:38','0'),
	(7,'英校',1,NULL,'2024-08-28 21:52:45','0'),
	(8,'美术',1,NULL,'2024-08-28 21:52:50','0'),
	(9,'体育',1,NULL,'2024-08-28 21:52:56','0'),
	(10,'地方',1,NULL,'2024-08-28 21:53:01','0'),
	(11,'道法',1,NULL,'2024-08-28 21:53:08','0'),
	(12,'劳动',1,NULL,'2024-08-28 21:53:16','0'),
	(13,'信息',1,NULL,'2024-08-28 21:53:21','0');

/*!40000 ALTER TABLE `gd_subject` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 gd_table
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gd_table`;

CREATE TABLE `gd_table` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint DEFAULT NULL COMMENT '删除标识 0=未删除,1=已删除',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '课程表表名',
  `week_num` tinyint DEFAULT NULL COMMENT '星期数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='课程表表';

LOCK TABLES `gd_table` WRITE;
/*!40000 ALTER TABLE `gd_table` DISABLE KEYS */;

INSERT INTO `gd_table` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`, `name`, `week_num`)
VALUES
	(1,'1',NULL,'',NULL,0,NULL,'5年16班',5);

/*!40000 ALTER TABLE `gd_table` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 gd_table_arrangement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gd_table_arrangement`;

CREATE TABLE `gd_table_arrangement` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_id` int DEFAULT NULL COMMENT '课程表id',
  `subject_id` int DEFAULT NULL,
  `week_index` int DEFAULT NULL,
  `lesson_index` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='课程表布置表';

LOCK TABLES `gd_table_arrangement` WRITE;
/*!40000 ALTER TABLE `gd_table_arrangement` DISABLE KEYS */;

INSERT INTO `gd_table_arrangement` (`id`, `table_id`, `subject_id`, `week_index`, `lesson_index`)
VALUES
	(1,1,1,1,0),
	(2,1,1,4,0),
	(3,1,2,0,1),
	(4,1,1,1,1),
	(5,1,1,2,1),
	(6,1,2,3,1),
	(7,1,1,4,1),
	(8,1,1,0,2),
	(9,1,2,1,2),
	(10,1,2,2,2),
	(11,1,5,3,2),
	(12,1,4,4,2),
	(13,1,6,0,3),
	(14,1,5,1,3),
	(15,1,4,2,3),
	(16,1,1,3,3),
	(17,1,8,4,3),
	(18,1,7,0,4),
	(19,1,13,1,4),
	(20,1,11,2,4),
	(21,1,6,3,4),
	(22,1,2,4,4),
	(23,1,1,0,5),
	(24,1,1,3,5),
	(25,1,8,0,6),
	(26,1,9,1,6),
	(27,1,10,2,6),
	(28,1,1,3,6),
	(29,1,11,4,6),
	(30,1,1,0,7),
	(31,1,3,1,7),
	(32,1,9,2,7),
	(33,1,9,3,7),
	(34,1,12,4,7);

/*!40000 ALTER TABLE `gd_table_arrangement` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 gen_table
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `form_col_num` int DEFAULT '1' COMMENT '表单布局（单列 双列 三列）',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;

INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `form_col_num`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`)
VALUES
	(2,'wx_user','微信用户表','',NULL,'WxUser','crud','com.barracuda.barracudaweixin.user','barracudaweixin','user','微信用户','hm',1,'0','/','{\"parentMenuId\":\"2041\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"微信\",\"treeCode\":\"\"}','admin','2024-08-27 22:56:45','','2024-08-27 23:00:43',''),
	(3,'gd_table','课程表表','',NULL,'Table','crud','com.barracuda.barracudaweixin.garden','barracudaweixin','table','课程','hm',1,'0','/','{\"parentMenuId\":\"2041\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"微信\",\"treeCode\":\"\"}','admin','2024-09-06 20:40:11','','2024-09-06 20:43:44',''),
	(4,'gd_period','课节表','',NULL,'Period','crud','com.barracuda.barracudaweixin.garden.period','barracudaweixin','period','课节','hm',1,'0','/','{\"parentMenuId\":\"2041\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"微信\",\"treeCode\":\"\"}','admin','2024-09-06 21:08:57','','2024-09-06 21:09:51',''),
	(5,'gd_subject','学科表','',NULL,'Subject','crud','com.barracuda.barracudaweixin.garden.subject','barracudaweixin','subject','学科','hm',1,'0','/','{\"parentMenuId\":\"2041\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"微信\",\"treeCode\":\"\"}','admin','2024-09-06 21:08:57','','2024-09-06 21:10:16',''),
	(6,'gd_table_arrangement','课程表布置表','',NULL,'TableArrangement','crud','com.barracuda.barracudaweixin.garden.table_arrangement','barracudaweixin','arrangement','课程布置','hm',1,'0','/','{\"parentMenuId\":\"2041\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"微信\",\"treeCode\":\"\"}','admin','2024-09-06 21:08:57','','2024-09-06 21:10:47','');

/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 gen_table_column
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;

INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`)
VALUES
	(4,2,'id','','int unsigned','String','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-08-27 22:56:45',NULL,'2024-08-27 23:00:43'),
	(5,2,'open_id','','varchar(32)','String','openId','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2024-08-27 22:56:45',NULL,'2024-08-27 23:00:43'),
	(6,2,'create_time','','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',3,'admin','2024-08-27 22:56:45',NULL,'2024-08-27 23:00:43'),
	(7,3,'id','主键','int','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-09-06 20:40:11',NULL,'2024-09-06 20:43:44'),
	(8,3,'create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2024-09-06 20:40:11',NULL,'2024-09-06 20:43:44'),
	(9,3,'create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',3,'admin','2024-09-06 20:40:11',NULL,'2024-09-06 20:43:44'),
	(10,3,'update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',4,'admin','2024-09-06 20:40:11',NULL,'2024-09-06 20:43:44'),
	(11,3,'update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',5,'admin','2024-09-06 20:40:11',NULL,'2024-09-06 20:43:44'),
	(12,3,'del_flag','删除标识 0=未删除,1=已删除','tinyint','Long','delFlag','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',6,'admin','2024-09-06 20:40:11',NULL,'2024-09-06 20:43:44'),
	(13,3,'remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',7,'admin','2024-09-06 20:40:11',NULL,'2024-09-06 20:43:44'),
	(14,3,'name','课程表表名','varchar(64)','String','name','0','0',NULL,'1','1','1','1','LIKE','input','',8,'admin','2024-09-06 20:40:11',NULL,'2024-09-06 20:43:44'),
	(15,3,'week_num','星期数','tinyint','Long','weekNum','0','0',NULL,'1','1','1','1','EQ','input','',9,'admin','2024-09-06 20:40:11',NULL,'2024-09-06 20:43:44'),
	(16,4,'id','主键','int','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:09:51'),
	(17,4,'create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:09:51'),
	(18,4,'create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',3,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:09:51'),
	(19,4,'update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',4,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:09:51'),
	(20,4,'update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',5,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:09:51'),
	(21,4,'del_flag','删除标识 0=未删除,1=已删除','tinyint','Long','delFlag','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',6,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:09:51'),
	(22,4,'remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',7,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:09:51'),
	(23,4,'table_id','课程表id','int','Long','tableId','0','0',NULL,'1','1','1','1','EQ','input','',8,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:09:51'),
	(24,4,'name','名称','varchar(16)','String','name','0','0',NULL,'1','1','1','1','LIKE','input','',9,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:09:51'),
	(25,4,'sort','排序','int','Long','sort','0','0',NULL,'1','1','1','1','EQ','input','',10,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:09:51'),
	(26,5,'id','','int unsigned','String','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:10:16'),
	(27,5,'name','名称','varchar(32)','String','name','0','0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:10:16'),
	(28,5,'is_system','是否为系统内置(1:是，0:否)','tinyint','Long','isSystem','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:10:16'),
	(29,5,'wx_user_id','','int','Long','wxUserId','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:10:16'),
	(30,5,'create_time','','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',5,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:10:16'),
	(31,5,'del_flag','删除标志（0代表存在 2代表删除）','char(1)','String','delFlag','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',6,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:10:16'),
	(32,6,'id','','int unsigned','String','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:10:47'),
	(33,6,'table_id','课程表id','int','Long','tableId','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:10:47'),
	(34,6,'subject_id','','int','Long','subjectId','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:10:47'),
	(35,6,'week_index','','int','Long','weekIndex','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:10:47'),
	(36,6,'lesson_index','','int','Long','lessonIndex','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2024-09-06 21:08:57',NULL,'2024-09-06 21:10:48');

/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 QRTZ_BLOB_TRIGGERS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;

CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Blob类型的触发器表';



# 转储表 QRTZ_CALENDARS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;

CREATE TABLE `QRTZ_CALENDARS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日历信息表';



# 转储表 QRTZ_CRON_TRIGGERS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;

CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cron类型的触发器表';



# 转储表 QRTZ_FIRED_TRIGGERS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;

CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='已触发的触发器表';



# 转储表 QRTZ_JOB_DETAILS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;

CREATE TABLE `QRTZ_JOB_DETAILS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务详细信息表';



# 转储表 QRTZ_LOCKS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `QRTZ_LOCKS`;

CREATE TABLE `QRTZ_LOCKS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储的悲观锁信息表';



# 转储表 QRTZ_PAUSED_TRIGGER_GRPS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;

CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='暂停的触发器表';



# 转储表 QRTZ_SCHEDULER_STATE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;

CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='调度器状态表';



# 转储表 QRTZ_SIMPLE_TRIGGERS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;

CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='简单触发器的信息表';



# 转储表 QRTZ_SIMPROP_TRIGGERS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;

CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='同步机制的行锁表';



# 转储表 QRTZ_TRIGGERS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;

CREATE TABLE `QRTZ_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='触发器详细信息表';



# 转储表 ref_document
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ref_document`;

CREATE TABLE `ref_document` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint DEFAULT NULL COMMENT '删除标识 0=未删除,1=已删除',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `document_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '文档类型',
  `document_size` bigint DEFAULT NULL COMMENT '文档大小（K）',
  `document_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '文档地址',
  `document_name` varchar(255) DEFAULT NULL COMMENT '文档名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文档表';

LOCK TABLES `ref_document` WRITE;
/*!40000 ALTER TABLE `ref_document` DISABLE KEYS */;

INSERT INTO `ref_document` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`, `document_type`, `document_size`, `document_address`, `document_name`)
VALUES
	(1,'','2024-03-16 20:19:43','',NULL,NULL,NULL,'image/png',4903,'/profile/upload/2024/03/16/teacherHelper_20240316201943A001.png','teacherHelper.png'),
	(2,'','2024-03-16 20:19:43','',NULL,NULL,NULL,'text/plain',3355,'/profile/upload/2024/03/16/1683807456949342_20240316201943A002.txt','1683807456949342.txt'),
	(3,'','2024-03-16 20:27:00','',NULL,NULL,NULL,'image/vnd.microsoft.icon',1156,NULL,'favicon.ico'),
	(4,'','2024-03-16 20:27:00','',NULL,NULL,NULL,'image/png',2255,'/profile/upload/2024/03/16/stock_20240316202659A001.png','stock.png'),
	(5,'','2024-03-16 20:27:00','',NULL,NULL,NULL,'text/plain',3355,'/profile/upload/2024/03/16/1683807456949342_20240316202659A002.txt','1683807456949342.txt'),
	(6,'','2024-03-16 20:34:08','',NULL,NULL,NULL,'image/png',2261,'/profile/upload/2024/03/16/stock_active_20240316203407A004.png','stock_active.png'),
	(7,'','2024-03-20 21:46:13','',NULL,NULL,NULL,'image/jpeg',744705,'/profile/upload/2024/03/20/WechatIMG41074_20240320214613A001.jpg','WechatIMG41074.jpg'),
	(8,'','2024-03-20 21:46:13','',NULL,NULL,NULL,'image/jpeg',936420,'/profile/upload/2024/03/20/WechatIMG41075_20240320214613A002.jpg','WechatIMG41075.jpg'),
	(9,'','2024-04-20 17:09:46','',NULL,NULL,NULL,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',5124,'/profile/upload/2024/04/20/1694607377775四年级上学期语文第一单元灰卷考试_20240420170946A005.xlsx','1694607377775四年级上学期语文第一单元灰卷考试.xlsx'),
	(10,'','2024-04-20 17:09:46','',NULL,NULL,NULL,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',5124,'/profile/upload/2024/04/20/1694607436796四年级上学期语文第一单元灰卷考试_20240420170946A006.xlsx','1694607436796四年级上学期语文第一单元灰卷考试.xlsx'),
	(11,'','2024-04-20 17:09:46','',NULL,NULL,NULL,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',5125,'/profile/upload/2024/04/20/1694531388589四年级上学期语文第一单元灰卷考试_20240420170946A007.xlsx','1694531388589四年级上学期语文第一单元灰卷考试.xlsx'),
	(12,'','2024-05-22 19:46:41','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522194636A003.pdf','2023年采暖费.pdf'),
	(13,'','2024-05-22 19:58:56','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522195855A004.pdf','2023年采暖费.pdf'),
	(14,'','2024-05-22 19:59:12','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本_20240522195912A005.pdf','2023年采暖费_副本.pdf'),
	(15,'','2024-05-22 19:59:12','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本2_20240522195912A006.pdf','2023年采暖费_副本2.pdf'),
	(16,'','2024-05-22 19:59:12','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本3_20240522195912A007.pdf','2023年采暖费_副本3.pdf'),
	(17,'','2024-05-22 19:59:12','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522195912A008.pdf','2023年采暖费.pdf'),
	(18,'','2024-05-22 20:04:12','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本_20240522200411A009.pdf','2023年采暖费_副本.pdf'),
	(19,'','2024-05-22 20:04:12','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本2_20240522200411A010.pdf','2023年采暖费_副本2.pdf'),
	(20,'','2024-05-22 20:04:12','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本3_20240522200411A011.pdf','2023年采暖费_副本3.pdf'),
	(21,'','2024-05-22 20:04:12','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522200411A012.pdf','2023年采暖费.pdf'),
	(22,'','2024-05-22 20:10:19','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本_20240522201018A014.pdf','2023年采暖费_副本.pdf'),
	(23,'','2024-05-22 20:10:19','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本2_20240522201018A015.pdf','2023年采暖费_副本2.pdf'),
	(24,'','2024-05-22 20:10:19','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本3_20240522201018A016.pdf','2023年采暖费_副本3.pdf'),
	(25,'','2024-05-22 20:10:19','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522201018A017.pdf','2023年采暖费.pdf'),
	(26,'','2024-05-22 20:10:51','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本_20240522201051A018.pdf','2023年采暖费_副本.pdf'),
	(27,'','2024-05-22 20:10:51','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本2_20240522201051A019.pdf','2023年采暖费_副本2.pdf'),
	(28,'','2024-05-22 20:10:51','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本3_20240522201051A020.pdf','2023年采暖费_副本3.pdf'),
	(29,'','2024-05-22 20:10:51','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522201051A021.pdf','2023年采暖费.pdf'),
	(30,'','2024-05-22 20:12:35','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本_20240522201234A022.pdf','2023年采暖费_副本.pdf'),
	(31,'','2024-05-22 20:12:35','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本2_20240522201234A023.pdf','2023年采暖费_副本2.pdf'),
	(32,'','2024-05-22 20:12:35','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本3_20240522201234A024.pdf','2023年采暖费_副本3.pdf'),
	(33,'','2024-05-22 20:12:35','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522201234A025.pdf','2023年采暖费.pdf'),
	(34,'','2024-05-22 20:14:17','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本3_20240522201416A026.pdf','2023年采暖费_副本3.pdf'),
	(35,'','2024-05-22 20:20:22','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本_20240522202022A027.pdf','2023年采暖费_副本.pdf'),
	(36,'','2024-05-22 20:20:22','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本2_20240522202022A028.pdf','2023年采暖费_副本2.pdf'),
	(37,'','2024-05-22 20:20:22','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本3_20240522202022A029.pdf','2023年采暖费_副本3.pdf'),
	(38,'','2024-05-22 20:20:22','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522202022A030.pdf','2023年采暖费.pdf'),
	(39,'','2024-05-22 20:22:32','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本_20240522202231A031.pdf','2023年采暖费_副本.pdf'),
	(40,'','2024-05-22 20:22:32','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本2_20240522202231A032.pdf','2023年采暖费_副本2.pdf'),
	(41,'','2024-05-22 20:22:32','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本3_20240522202231A033.pdf','2023年采暖费_副本3.pdf'),
	(42,'','2024-05-22 20:22:32','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522202231A034.pdf','2023年采暖费.pdf'),
	(43,'','2024-05-22 21:06:56','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本_20240522210655A035.pdf','2023年采暖费_副本.pdf'),
	(44,'','2024-05-22 21:06:56','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本2_20240522210655A036.pdf','2023年采暖费_副本2.pdf'),
	(45,'','2024-05-22 21:06:56','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本3_20240522210655A037.pdf','2023年采暖费_副本3.pdf'),
	(46,'','2024-05-22 21:06:56','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522210655A038.pdf','2023年采暖费.pdf'),
	(47,'','2024-05-22 21:12:36','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本_20240522211235A039.pdf','2023年采暖费_副本.pdf'),
	(48,'','2024-05-22 21:12:36','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本2_20240522211235A040.pdf','2023年采暖费_副本2.pdf'),
	(49,'','2024-05-22 21:12:36','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本3_20240522211235A041.pdf','2023年采暖费_副本3.pdf'),
	(50,'','2024-05-22 21:12:36','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522211235A042.pdf','2023年采暖费.pdf'),
	(51,'','2024-05-22 21:13:26','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本_20240522211325A043.pdf','2023年采暖费_副本.pdf'),
	(52,'','2024-05-22 21:13:26','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本2_20240522211325A044.pdf','2023年采暖费_副本2.pdf'),
	(53,'','2024-05-22 21:13:26','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本3_20240522211325A045.pdf','2023年采暖费_副本3.pdf'),
	(54,'','2024-05-22 21:13:26','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522211325A046.pdf','2023年采暖费.pdf'),
	(55,'','2024-05-22 21:16:51','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本_20240522211650A047.pdf','2023年采暖费_副本.pdf'),
	(56,'','2024-05-22 21:16:51','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本2_20240522211651A048.pdf','2023年采暖费_副本2.pdf'),
	(57,'','2024-05-22 21:16:51','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本3_20240522211651A049.pdf','2023年采暖费_副本3.pdf'),
	(58,'','2024-05-22 21:16:51','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522211651A050.pdf','2023年采暖费.pdf'),
	(59,'','2024-05-22 21:17:29','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本_20240522211728A051.pdf','2023年采暖费_副本.pdf'),
	(60,'','2024-05-22 21:17:29','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本2_20240522211728A052.pdf','2023年采暖费_副本2.pdf'),
	(61,'','2024-05-22 21:17:29','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本3_20240522211728A053.pdf','2023年采暖费_副本3.pdf'),
	(62,'','2024-05-22 21:17:29','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522211728A054.pdf','2023年采暖费.pdf'),
	(63,'','2024-05-22 21:17:56','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本_20240522211755A055.pdf','2023年采暖费_副本.pdf'),
	(64,'','2024-05-22 21:17:56','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本2_20240522211755A056.pdf','2023年采暖费_副本2.pdf'),
	(65,'','2024-05-22 21:17:56','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_副本3_20240522211755A057.pdf','2023年采暖费_副本3.pdf'),
	(66,'','2024-05-22 21:17:56','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/22/2023年采暖费_20240522211755A058.pdf','2023年采暖费.pdf'),
	(67,'','2024-05-23 21:15:54','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523211553A001.pdf','2023年采暖费_副本3.pdf'),
	(68,'','2024-05-23 21:15:54','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_20240523211553A002.pdf','2023年采暖费.pdf'),
	(69,'','2024-05-23 21:16:37','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523211636A003.pdf','2023年采暖费_副本3.pdf'),
	(70,'','2024-05-23 21:16:37','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_20240523211636A004.pdf','2023年采暖费.pdf'),
	(71,'','2024-05-23 21:17:25','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523211724A005.pdf','2023年采暖费_副本3.pdf'),
	(72,'','2024-05-23 21:17:25','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_20240523211724A006.pdf','2023年采暖费.pdf'),
	(73,'','2024-05-23 21:18:10','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523211810A007.pdf','2023年采暖费_副本3.pdf'),
	(74,'','2024-05-23 21:18:10','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_20240523211810A008.pdf','2023年采暖费.pdf'),
	(75,'','2024-05-23 21:22:07','',NULL,NULL,NULL,'image/jpeg',1000921,'/profile/upload/2024/05/23/Xnip2023-10-15_08-33-10_20240523212206A009.jpg','Xnip2023-10-15_08-33-10.jpg'),
	(76,'','2024-05-23 21:22:07','',NULL,NULL,NULL,'image/jpeg',1804708,'/profile/upload/2024/05/23/Xnip2023-10-15_08-50-49_20240523212206A010.jpg','Xnip2023-10-15_08-50-49.jpg'),
	(77,'','2024-05-23 21:22:07','',NULL,NULL,NULL,'image/jpeg',1073124,'/profile/upload/2024/05/23/Xnip2023-10-15_09-04-06_20240523212206A011.jpg','Xnip2023-10-15_09-04-06.jpg'),
	(78,'','2024-05-23 21:27:52','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523212752A012.pdf','2023年采暖费_副本3.pdf'),
	(79,'','2024-05-23 21:27:52','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_20240523212752A013.pdf','2023年采暖费.pdf'),
	(80,'','2024-05-23 21:37:33','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523213733A014.pdf','2023年采暖费_副本3.pdf'),
	(81,'','2024-05-23 21:37:33','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_20240523213733A015.pdf','2023年采暖费.pdf'),
	(82,'','2024-05-23 21:42:01','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523214201A016.pdf','2023年采暖费_副本3.pdf'),
	(83,'','2024-05-23 21:42:01','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_20240523214201A017.pdf','2023年采暖费.pdf'),
	(84,'','2024-05-23 21:45:51','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523214550A018.pdf','2023年采暖费_副本3.pdf'),
	(85,'','2024-05-23 21:45:51','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_20240523214550A019.pdf','2023年采暖费.pdf'),
	(86,'','2024-05-23 21:48:21','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523214821A020.pdf','2023年采暖费_副本3.pdf'),
	(87,'','2024-05-23 21:48:21','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_20240523214821A021.pdf','2023年采暖费.pdf'),
	(88,'','2024-05-23 21:49:07','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523214906A022.pdf','2023年采暖费_副本3.pdf'),
	(89,'','2024-05-23 21:49:07','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_20240523214906A023.pdf','2023年采暖费.pdf'),
	(90,'','2024-05-23 21:55:16','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523215516A001.pdf','2023年采暖费_副本3.pdf'),
	(91,'','2024-05-23 21:55:16','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_20240523215516A002.pdf','2023年采暖费.pdf'),
	(92,'','2024-05-23 21:57:24','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523215723A005.pdf','2023年采暖费_副本3.pdf'),
	(93,'','2024-05-23 22:00:11','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523220010A006.pdf','2023年采暖费_副本3.pdf'),
	(94,'','2024-05-23 22:00:24','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523220023A007.pdf','2023年采暖费_副本3.pdf'),
	(95,'','2024-05-23 22:45:44','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本_20240523224543A002.pdf','2023年采暖费_副本.pdf'),
	(96,'','2024-05-23 22:45:44','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本2_20240523224543A003.pdf','2023年采暖费_副本2.pdf'),
	(97,'','2024-05-23 22:45:44','',NULL,NULL,NULL,'application/pdf',43760,'/profile/upload/2024/05/23/2023年采暖费_副本3_20240523224543A004.pdf','2023年采暖费_副本3.pdf'),
	(98,'','2024-05-27 21:30:48','',NULL,NULL,NULL,'text/plain',494,'/profile/upload/2024/05/27/my aliyun_20240527213048A002.txt','my aliyun.txt'),
	(99,'','2024-05-27 22:28:32','',NULL,NULL,NULL,'',43760,'/Users/zhanghaoming/Downloads/票据/2023年采暖费_副本2.pdf','2023年采暖费_副本2.pdf'),
	(100,'','2024-05-27 22:28:32','',NULL,NULL,NULL,'',43760,'/Users/zhanghaoming/Downloads/票据/2023年采暖费_副本3.pdf','2023年采暖费_副本3.pdf'),
	(101,'','2024-05-27 22:28:32','',NULL,NULL,NULL,'',43760,'/Users/zhanghaoming/Downloads/票据/2023年采暖费_副本.pdf','2023年采暖费_副本.pdf'),
	(102,'','2024-05-27 22:28:32','',NULL,NULL,NULL,'',43760,'/Users/zhanghaoming/Downloads/票据/2023年采暖费.pdf','2023年采暖费.pdf'),
	(103,'','2024-05-27 22:30:00','',NULL,NULL,NULL,'',43760,'/Users/zhanghaoming/Downloads/票据/2023年采暖费_副本2.pdf','2023年采暖费_副本2.pdf'),
	(104,'','2024-05-27 22:30:10','',NULL,NULL,NULL,'',43760,'/Users/zhanghaoming/Downloads/票据/2023年采暖费_副本3.pdf','2023年采暖费_副本3.pdf'),
	(105,'','2024-05-27 22:30:10','',NULL,NULL,NULL,'',43760,'/Users/zhanghaoming/Downloads/票据/2023年采暖费_副本.pdf','2023年采暖费_副本.pdf'),
	(106,'','2024-05-27 22:30:10','',NULL,NULL,NULL,'',43760,'/Users/zhanghaoming/Downloads/票据/2023年采暖费.pdf','2023年采暖费.pdf'),
	(107,'','2024-05-27 22:34:31','',NULL,NULL,NULL,'',43760,'/Users/zhanghaoming/Downloads/票据/2023年采暖费_副本2.pdf','2023年采暖费_副本2.pdf'),
	(108,'','2024-05-27 22:34:31','',NULL,NULL,NULL,'',43760,'/Users/zhanghaoming/Downloads/票据/2023年采暖费_副本3.pdf','2023年采暖费_副本3.pdf'),
	(109,'','2024-05-27 22:34:31','',NULL,NULL,NULL,'',43760,'/Users/zhanghaoming/Downloads/票据/2023年采暖费_副本.pdf','2023年采暖费_副本.pdf'),
	(110,'','2024-05-27 22:34:31','',NULL,NULL,NULL,'',43760,'/Users/zhanghaoming/Downloads/票据/2023年采暖费.pdf','2023年采暖费.pdf'),
	(111,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',103425,'/Users/zhanghaoming/Downloads/macjihuo.zip','macjihuo.zip'),
	(112,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',147353,'/Users/zhanghaoming/Downloads/419131714054140_.pic.jpg','419131714054140_.pic.jpg'),
	(113,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',3508,'/Users/zhanghaoming/Downloads/team.png','team.png'),
	(114,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',35170781,'/Users/zhanghaoming/Downloads/团结1.mp4','团结1.mp4'),
	(115,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',123327,'/Users/zhanghaoming/Downloads/WechatIMG41905.jpg','WechatIMG41905.jpg'),
	(116,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',3226698,'/Users/zhanghaoming/Downloads/苗馨予.png','苗馨予.png'),
	(117,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1263409,'/Users/zhanghaoming/Downloads/鞠滢媛.png','鞠滢媛.png'),
	(118,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',4088198,'/Users/zhanghaoming/Downloads/RuoYi-master.zip','RuoYi-master.zip'),
	(119,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',4150,'/Users/zhanghaoming/Downloads/class.png','class.png'),
	(120,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',126053,'/Users/zhanghaoming/Downloads/419111714054138_.pic.jpg','419111714054138_.pic.jpg'),
	(121,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',206521,'/Users/zhanghaoming/Downloads/419091714054069_.pic.jpg','419091714054069_.pic.jpg'),
	(122,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',145330,'/Users/zhanghaoming/Downloads/10ui8ve_64f47c8e7743b7.87166193.jpg','10ui8ve_64f47c8e7743b7.87166193.jpg'),
	(123,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',113335,'/Users/zhanghaoming/Downloads/419121714054139_.pic.jpg','419121714054139_.pic.jpg'),
	(124,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',6253,'/Users/zhanghaoming/Downloads/0bc3beacmaaakiacmbnwwrqvacodeyeqajqa.f10002.txt','0bc3beacmaaakiacmbnwwrqvacodeyeqajqa.f10002.txt'),
	(125,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1056567,'/Users/zhanghaoming/Downloads/王瑞涵.png','王瑞涵.png'),
	(126,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',2088232,'/Users/zhanghaoming/Downloads/付韵竹.png','付韵竹.png'),
	(127,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',4222,'/Users/zhanghaoming/Downloads/class_active.png','class_active.png'),
	(128,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',30416,'/Users/zhanghaoming/Downloads/语文作业免做券.docx','语文作业免做券.docx'),
	(129,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',5124,'/Users/zhanghaoming/Downloads/1694607377775四年级上学期语文第一单元灰卷考试.xlsx','1694607377775四年级上学期语文第一单元灰卷考试.xlsx'),
	(130,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',221041,'/Users/zhanghaoming/Downloads/i3ikcm_65e3d86214eb95.41146566.jpg','i3ikcm_65e3d86214eb95.41146566.jpg'),
	(131,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',836258,'/Users/zhanghaoming/Downloads/W020230419336779992203.pdf','W020230419336779992203.pdf'),
	(132,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',5124,'/Users/zhanghaoming/Downloads/1694607436796四年级上学期语文第一单元灰卷考试.xlsx','1694607436796四年级上学期语文第一单元灰卷考试.xlsx'),
	(133,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',86556502,'/Users/zhanghaoming/Downloads/小兔子家进贼了_副本.mp4','小兔子家进贼了_副本.mp4'),
	(134,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1708885,'/Users/zhanghaoming/Downloads/WechatIMG42038.png','WechatIMG42038.png'),
	(135,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',51782,'/Users/zhanghaoming/Downloads/banner.jpg','banner.jpg'),
	(136,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',3514,'/Users/zhanghaoming/Downloads/team_active.png','team_active.png'),
	(137,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',13365,'/Users/zhanghaoming/Downloads/111的副本.docx','111的副本.docx'),
	(138,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',111875,'/Users/zhanghaoming/Downloads/这段文字.pdf','这段文字.pdf'),
	(139,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',5125,'/Users/zhanghaoming/Downloads/1694531388589四年级上学期语文第一单元灰卷考试.xlsx','1694531388589四年级上学期语文第一单元灰卷考试.xlsx'),
	(140,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1268195,'/Users/zhanghaoming/Downloads/康一辰.png','康一辰.png'),
	(141,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',5123,'/Users/zhanghaoming/Downloads/1694607240971四年级上学期语文第一单元灰卷考试.xlsx','1694607240971四年级上学期语文第一单元灰卷考试.xlsx'),
	(142,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1467069,'/Users/zhanghaoming/Downloads/WX20240421-125830.png','WX20240421-125830.png'),
	(143,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',13365,'/Users/zhanghaoming/Downloads/直述句改转述句.docx','直述句改转述句.docx'),
	(144,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',2255,'/Users/zhanghaoming/Downloads/stock.png','stock.png'),
	(145,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',52051115,'/Users/zhanghaoming/Downloads/道法.zip','道法.zip'),
	(146,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',5148,'/Users/zhanghaoming/Downloads/1694531183630四年级上学期语文第一单元灰卷考试.xlsx','1694531183630四年级上学期语文第一单元灰卷考试.xlsx'),
	(147,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',5092693,'/Users/zhanghaoming/Downloads/重构改善既有代码的设计第2版.pdf','重构改善既有代码的设计第2版.pdf'),
	(148,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',3012,'/Users/zhanghaoming/Downloads/user_active.png','user_active.png'),
	(149,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',5127,'/Users/zhanghaoming/Downloads/1694608029198四年级上学期语文第一单元灰卷考试.xlsx','1694608029198四年级上学期语文第一单元灰卷考试.xlsx'),
	(150,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',2582,'/Users/zhanghaoming/Downloads/home.png','home.png'),
	(151,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1395556,'/Users/zhanghaoming/Downloads/苗雨晨.png','苗雨晨.png'),
	(152,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',3006,'/Users/zhanghaoming/Downloads/user.png','user.png'),
	(153,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',24850,'/Users/zhanghaoming/Downloads/课堂实录.txt','课堂实录.txt'),
	(154,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',58540,'/Users/zhanghaoming/Downloads/语文作业免做券.pdf','语文作业免做券.pdf'),
	(155,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',2059418,'/Users/zhanghaoming/Downloads/齐韦辰.png','齐韦辰.png'),
	(156,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',5140,'/Users/zhanghaoming/Downloads/1694531276981四年级上学期语文第一单元灰卷考试.xlsx','1694531276981四年级上学期语文第一单元灰卷考试.xlsx'),
	(157,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',82851834,'/Users/zhanghaoming/Downloads/逃出大英博物馆.mp4','逃出大英博物馆.mp4'),
	(158,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',4994,'/Users/zhanghaoming/Downloads/1716475817860参考资料数据.xlsx','1716475817860参考资料数据.xlsx'),
	(159,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',30380,'/Users/zhanghaoming/Downloads/第三次观课.txt','第三次观课.txt'),
	(160,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',39663934,'/Users/zhanghaoming/Downloads/环保1.mp4','环保1.mp4'),
	(161,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',4903,'/Users/zhanghaoming/Downloads/teacherHelper.png','teacherHelper.png'),
	(162,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1365648,'/Users/zhanghaoming/Downloads/崔嘉钰.png','崔嘉钰.png'),
	(163,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',0,'/Users/zhanghaoming/Downloads/暑假语文作业超市pdf.pdf','暑假语文作业超市pdf.pdf'),
	(164,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',195052,'/Users/zhanghaoming/Downloads/419071714054029_.pic.jpg','419071714054029_.pic.jpg'),
	(165,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',10667,'/Users/zhanghaoming/Downloads/齐韦辰.docx','齐韦辰.docx'),
	(166,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',21738,'/Users/zhanghaoming/Downloads/社团教学进度课时计划.docx','社团教学进度课时计划.docx'),
	(167,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',8676320,'/Users/zhanghaoming/Downloads/apache-maven-3.8.6-bin.tar.gz','apache-maven-3.8.6-bin.tar.gz'),
	(168,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',20183968,'/Users/zhanghaoming/Downloads/CSS权威指南.pdf','CSS权威指南.pdf'),
	(169,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1934277,'/Users/zhanghaoming/Downloads/WechatIMG42041.png','WechatIMG42041.png'),
	(170,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',25599300,'/Users/zhanghaoming/Downloads/mda-peq45j7py2q9q7su.mp4','mda-peq45j7py2q9q7su.mp4'),
	(171,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',29046105,'/Users/zhanghaoming/Downloads/归档.zip','归档.zip'),
	(172,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',3451456,'/Users/zhanghaoming/Downloads/小学生安全教育动画城市篇2乘坐汽车注意事项.mp4','小学生安全教育动画城市篇2乘坐汽车注意事项.mp4'),
	(173,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',3355,'/Users/zhanghaoming/Downloads/1683807456949342.txt','1683807456949342.txt'),
	(174,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',153038,'/Users/zhanghaoming/Downloads/419101714054101_.pic.jpg','419101714054101_.pic.jpg'),
	(175,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',45081257,'/Users/zhanghaoming/Downloads/道法4月22日.zip','道法4月22日.zip'),
	(176,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1836019,'/Users/zhanghaoming/Downloads/李则阳.png','李则阳.png'),
	(177,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',35084389,'/Users/zhanghaoming/Downloads/团结1.mp4.zip','团结1.mp4.zip'),
	(178,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',59346574,'/Users/zhanghaoming/Downloads/01e52d04af0dc0a3010370038b37dde42c_258.mp4','01e52d04af0dc0a3010370038b37dde42c_258.mp4'),
	(179,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',2797705,'/Users/zhanghaoming/Downloads/editor.md-master.zip','editor.md-master.zip'),
	(180,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',2583622,'/Users/zhanghaoming/Downloads/1633614839166.mp4','1633614839166.mp4'),
	(181,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1502298,'/Users/zhanghaoming/Downloads/张芸溪.png','张芸溪.png'),
	(182,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',92045312,'/Users/zhanghaoming/Downloads/神奇飞书.mp4','神奇飞书.mp4'),
	(183,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',12691,'/Users/zhanghaoming/Downloads/1695647447805四年级上学期语文第二单元灰卷考试.xlsx','1695647447805四年级上学期语文第二单元灰卷考试.xlsx'),
	(184,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',18287,'/Users/zhanghaoming/Downloads/副本三下语文家长会.docx','副本三下语文家长会.docx'),
	(185,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',728661,'/Users/zhanghaoming/Downloads/新建项目.jpg','新建项目.jpg'),
	(186,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',32916596,'/Users/zhanghaoming/Downloads/乐比悠悠吃饭洗手不让细菌有机会.mp4','乐比悠悠吃饭洗手不让细菌有机会.mp4'),
	(187,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',192571,'/Users/zhanghaoming/Downloads/419081714054030_.pic.jpg','419081714054030_.pic.jpg'),
	(188,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',29769787,'/Users/zhanghaoming/Downloads/暴力云与送子鹳.mp4','暴力云与送子鹳.mp4'),
	(189,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',9041,'/Users/zhanghaoming/Downloads/未命名的Markdown文件.txt','未命名的Markdown文件.txt'),
	(190,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',86556502,'/Users/zhanghaoming/Downloads/小兔子家进贼了.mp4','小兔子家进贼了.mp4'),
	(191,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',27914777,'/Users/zhanghaoming/Downloads/道法谁是英雄.mp4','道法谁是英雄.mp4'),
	(192,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1968872,'/Users/zhanghaoming/Downloads/武明李.png','武明李.png'),
	(193,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1761741,'/Users/zhanghaoming/Downloads/WechatIMG42035.png','WechatIMG42035.png'),
	(194,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',79748,'/Users/zhanghaoming/Downloads/户型图1.jpg','户型图1.jpg'),
	(195,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1322817,'/Users/zhanghaoming/Downloads/于淑涵.png','于淑涵.png'),
	(196,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1705980,'/Users/zhanghaoming/Downloads/熊子玉.png','熊子玉.png'),
	(197,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',2945979,'/Users/zhanghaoming/Downloads/未命名的Markdown文件.html','未命名的Markdown文件.html'),
	(198,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',2261,'/Users/zhanghaoming/Downloads/stock_active.png','stock_active.png'),
	(199,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',3687,'/Users/zhanghaoming/Downloads/1680707584750学生信息数据.xlsx','1680707584750学生信息数据.xlsx'),
	(200,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',392864,'/Users/zhanghaoming/Downloads/2.png','2.png'),
	(201,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',28027,'/Users/zhanghaoming/Downloads/ruoyi.zip','ruoyi.zip'),
	(202,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1016983,'/Users/zhanghaoming/Downloads/戢润辰.png','戢润辰.png'),
	(203,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',91675039,'/Users/zhanghaoming/Downloads/神奇飞书.mp4.zip','神奇飞书.mp4.zip'),
	(204,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',14332812,'/Users/zhanghaoming/Downloads/1.pdf','1.pdf'),
	(205,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',422701,'/Users/zhanghaoming/Downloads/3.png','3.png'),
	(206,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',463996,'/Users/zhanghaoming/Downloads/1.png','1.png'),
	(207,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',9563469,'/Users/zhanghaoming/Downloads/aspose-words.zip','aspose-words.zip'),
	(208,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1080139,'/Users/zhanghaoming/Downloads/刘高泽.png','刘高泽.png'),
	(209,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1631145,'/Users/zhanghaoming/Downloads/7dd7921f905a8329f598ad0830fa0cd4.png','7dd7921f905a8329f598ad0830fa0cd4.png'),
	(210,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',14150,'/Users/zhanghaoming/Downloads/语文园地6逐字稿.docx','语文园地6逐字稿.docx'),
	(211,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',16257,'/Users/zhanghaoming/Downloads/作业登记表.docx','作业登记表.docx'),
	(212,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',1128720,'/Users/zhanghaoming/Downloads/eddc30bf8a37f0d8072964f2dd3fb7a6.png','eddc30bf8a37f0d8072964f2dd3fb7a6.png'),
	(213,'','2024-05-27 22:39:45','',NULL,NULL,NULL,'',981876,'/Users/zhanghaoming/Downloads/sbia_examples.zip','sbia_examples.zip'),
	(214,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',103425,'/Users/zhanghaoming/Downloads/macjihuo.zip','macjihuo.zip'),
	(215,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',147353,'/Users/zhanghaoming/Downloads/419131714054140_.pic.jpg','419131714054140_.pic.jpg'),
	(216,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',3508,'/Users/zhanghaoming/Downloads/team.png','team.png'),
	(217,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',35170781,'/Users/zhanghaoming/Downloads/团结1.mp4','团结1.mp4'),
	(218,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',123327,'/Users/zhanghaoming/Downloads/WechatIMG41905.jpg','WechatIMG41905.jpg'),
	(219,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',3226698,'/Users/zhanghaoming/Downloads/苗馨予.png','苗馨予.png'),
	(220,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1263409,'/Users/zhanghaoming/Downloads/鞠滢媛.png','鞠滢媛.png'),
	(221,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',4088198,'/Users/zhanghaoming/Downloads/RuoYi-master.zip','RuoYi-master.zip'),
	(222,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',4150,'/Users/zhanghaoming/Downloads/class.png','class.png'),
	(223,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',126053,'/Users/zhanghaoming/Downloads/419111714054138_.pic.jpg','419111714054138_.pic.jpg'),
	(224,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',206521,'/Users/zhanghaoming/Downloads/419091714054069_.pic.jpg','419091714054069_.pic.jpg'),
	(225,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',145330,'/Users/zhanghaoming/Downloads/10ui8ve_64f47c8e7743b7.87166193.jpg','10ui8ve_64f47c8e7743b7.87166193.jpg'),
	(226,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',113335,'/Users/zhanghaoming/Downloads/419121714054139_.pic.jpg','419121714054139_.pic.jpg'),
	(227,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',6253,'/Users/zhanghaoming/Downloads/0bc3beacmaaakiacmbnwwrqvacodeyeqajqa.f10002.txt','0bc3beacmaaakiacmbnwwrqvacodeyeqajqa.f10002.txt'),
	(228,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1056567,'/Users/zhanghaoming/Downloads/王瑞涵.png','王瑞涵.png'),
	(229,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',2088232,'/Users/zhanghaoming/Downloads/付韵竹.png','付韵竹.png'),
	(230,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',4222,'/Users/zhanghaoming/Downloads/class_active.png','class_active.png'),
	(231,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',30416,'/Users/zhanghaoming/Downloads/语文作业免做券.docx','语文作业免做券.docx'),
	(232,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',5124,'/Users/zhanghaoming/Downloads/1694607377775四年级上学期语文第一单元灰卷考试.xlsx','1694607377775四年级上学期语文第一单元灰卷考试.xlsx'),
	(233,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',221041,'/Users/zhanghaoming/Downloads/i3ikcm_65e3d86214eb95.41146566.jpg','i3ikcm_65e3d86214eb95.41146566.jpg'),
	(234,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',836258,'/Users/zhanghaoming/Downloads/W020230419336779992203.pdf','W020230419336779992203.pdf'),
	(235,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',5124,'/Users/zhanghaoming/Downloads/1694607436796四年级上学期语文第一单元灰卷考试.xlsx','1694607436796四年级上学期语文第一单元灰卷考试.xlsx'),
	(236,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',86556502,'/Users/zhanghaoming/Downloads/小兔子家进贼了_副本.mp4','小兔子家进贼了_副本.mp4'),
	(237,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1708885,'/Users/zhanghaoming/Downloads/WechatIMG42038.png','WechatIMG42038.png'),
	(238,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',51782,'/Users/zhanghaoming/Downloads/banner.jpg','banner.jpg'),
	(239,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',3514,'/Users/zhanghaoming/Downloads/team_active.png','team_active.png'),
	(240,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',13365,'/Users/zhanghaoming/Downloads/111的副本.docx','111的副本.docx'),
	(241,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',111875,'/Users/zhanghaoming/Downloads/这段文字.pdf','这段文字.pdf'),
	(242,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',5125,'/Users/zhanghaoming/Downloads/1694531388589四年级上学期语文第一单元灰卷考试.xlsx','1694531388589四年级上学期语文第一单元灰卷考试.xlsx'),
	(243,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1268195,'/Users/zhanghaoming/Downloads/康一辰.png','康一辰.png'),
	(244,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',5123,'/Users/zhanghaoming/Downloads/1694607240971四年级上学期语文第一单元灰卷考试.xlsx','1694607240971四年级上学期语文第一单元灰卷考试.xlsx'),
	(245,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1467069,'/Users/zhanghaoming/Downloads/WX20240421-125830.png','WX20240421-125830.png'),
	(246,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',13365,'/Users/zhanghaoming/Downloads/直述句改转述句.docx','直述句改转述句.docx'),
	(247,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',2255,'/Users/zhanghaoming/Downloads/stock.png','stock.png'),
	(248,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',52051115,'/Users/zhanghaoming/Downloads/道法.zip','道法.zip'),
	(249,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',5148,'/Users/zhanghaoming/Downloads/1694531183630四年级上学期语文第一单元灰卷考试.xlsx','1694531183630四年级上学期语文第一单元灰卷考试.xlsx'),
	(250,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',5092693,'/Users/zhanghaoming/Downloads/重构改善既有代码的设计第2版.pdf','重构改善既有代码的设计第2版.pdf'),
	(251,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',3012,'/Users/zhanghaoming/Downloads/user_active.png','user_active.png'),
	(252,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',5127,'/Users/zhanghaoming/Downloads/1694608029198四年级上学期语文第一单元灰卷考试.xlsx','1694608029198四年级上学期语文第一单元灰卷考试.xlsx'),
	(253,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',2582,'/Users/zhanghaoming/Downloads/home.png','home.png'),
	(254,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1395556,'/Users/zhanghaoming/Downloads/苗雨晨.png','苗雨晨.png'),
	(255,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',3006,'/Users/zhanghaoming/Downloads/user.png','user.png'),
	(256,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',24850,'/Users/zhanghaoming/Downloads/课堂实录.txt','课堂实录.txt'),
	(257,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',58540,'/Users/zhanghaoming/Downloads/语文作业免做券.pdf','语文作业免做券.pdf'),
	(258,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',2059418,'/Users/zhanghaoming/Downloads/齐韦辰.png','齐韦辰.png'),
	(259,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',5140,'/Users/zhanghaoming/Downloads/1694531276981四年级上学期语文第一单元灰卷考试.xlsx','1694531276981四年级上学期语文第一单元灰卷考试.xlsx'),
	(260,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',82851834,'/Users/zhanghaoming/Downloads/逃出大英博物馆.mp4','逃出大英博物馆.mp4'),
	(261,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',4994,'/Users/zhanghaoming/Downloads/1716475817860参考资料数据.xlsx','1716475817860参考资料数据.xlsx'),
	(262,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',30380,'/Users/zhanghaoming/Downloads/第三次观课.txt','第三次观课.txt'),
	(263,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',39663934,'/Users/zhanghaoming/Downloads/环保1.mp4','环保1.mp4'),
	(264,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',4903,'/Users/zhanghaoming/Downloads/teacherHelper.png','teacherHelper.png'),
	(265,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1365648,'/Users/zhanghaoming/Downloads/崔嘉钰.png','崔嘉钰.png'),
	(266,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',0,'/Users/zhanghaoming/Downloads/暑假语文作业超市pdf.pdf','暑假语文作业超市pdf.pdf'),
	(267,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',195052,'/Users/zhanghaoming/Downloads/419071714054029_.pic.jpg','419071714054029_.pic.jpg'),
	(268,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',10667,'/Users/zhanghaoming/Downloads/齐韦辰.docx','齐韦辰.docx'),
	(269,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',21738,'/Users/zhanghaoming/Downloads/社团教学进度课时计划.docx','社团教学进度课时计划.docx'),
	(270,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',8676320,'/Users/zhanghaoming/Downloads/apache-maven-3.8.6-bin.tar.gz','apache-maven-3.8.6-bin.tar.gz'),
	(271,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',20183968,'/Users/zhanghaoming/Downloads/CSS权威指南.pdf','CSS权威指南.pdf'),
	(272,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1934277,'/Users/zhanghaoming/Downloads/WechatIMG42041.png','WechatIMG42041.png'),
	(273,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',25599300,'/Users/zhanghaoming/Downloads/mda-peq45j7py2q9q7su.mp4','mda-peq45j7py2q9q7su.mp4'),
	(274,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',29046105,'/Users/zhanghaoming/Downloads/归档.zip','归档.zip'),
	(275,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',3451456,'/Users/zhanghaoming/Downloads/小学生安全教育动画城市篇2乘坐汽车注意事项.mp4','小学生安全教育动画城市篇2乘坐汽车注意事项.mp4'),
	(276,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',3355,'/Users/zhanghaoming/Downloads/1683807456949342.txt','1683807456949342.txt'),
	(277,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',153038,'/Users/zhanghaoming/Downloads/419101714054101_.pic.jpg','419101714054101_.pic.jpg'),
	(278,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',45081257,'/Users/zhanghaoming/Downloads/道法4月22日.zip','道法4月22日.zip'),
	(279,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1836019,'/Users/zhanghaoming/Downloads/李则阳.png','李则阳.png'),
	(280,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',35084389,'/Users/zhanghaoming/Downloads/团结1.mp4.zip','团结1.mp4.zip'),
	(281,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',59346574,'/Users/zhanghaoming/Downloads/01e52d04af0dc0a3010370038b37dde42c_258.mp4','01e52d04af0dc0a3010370038b37dde42c_258.mp4'),
	(282,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',2797705,'/Users/zhanghaoming/Downloads/editor.md-master.zip','editor.md-master.zip'),
	(283,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',2583622,'/Users/zhanghaoming/Downloads/1633614839166.mp4','1633614839166.mp4'),
	(284,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1502298,'/Users/zhanghaoming/Downloads/张芸溪.png','张芸溪.png'),
	(285,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',92045312,'/Users/zhanghaoming/Downloads/神奇飞书.mp4','神奇飞书.mp4'),
	(286,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',12691,'/Users/zhanghaoming/Downloads/1695647447805四年级上学期语文第二单元灰卷考试.xlsx','1695647447805四年级上学期语文第二单元灰卷考试.xlsx'),
	(287,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',18287,'/Users/zhanghaoming/Downloads/副本三下语文家长会.docx','副本三下语文家长会.docx'),
	(288,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',728661,'/Users/zhanghaoming/Downloads/新建项目.jpg','新建项目.jpg'),
	(289,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',32916596,'/Users/zhanghaoming/Downloads/乐比悠悠吃饭洗手不让细菌有机会.mp4','乐比悠悠吃饭洗手不让细菌有机会.mp4'),
	(290,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',192571,'/Users/zhanghaoming/Downloads/419081714054030_.pic.jpg','419081714054030_.pic.jpg'),
	(291,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',29769787,'/Users/zhanghaoming/Downloads/暴力云与送子鹳.mp4','暴力云与送子鹳.mp4'),
	(292,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',9041,'/Users/zhanghaoming/Downloads/未命名的Markdown文件.txt','未命名的Markdown文件.txt'),
	(293,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',86556502,'/Users/zhanghaoming/Downloads/小兔子家进贼了.mp4','小兔子家进贼了.mp4'),
	(294,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',27914777,'/Users/zhanghaoming/Downloads/道法谁是英雄.mp4','道法谁是英雄.mp4'),
	(295,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1968872,'/Users/zhanghaoming/Downloads/武明李.png','武明李.png'),
	(296,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1761741,'/Users/zhanghaoming/Downloads/WechatIMG42035.png','WechatIMG42035.png'),
	(297,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',79748,'/Users/zhanghaoming/Downloads/户型图1.jpg','户型图1.jpg'),
	(298,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1322817,'/Users/zhanghaoming/Downloads/于淑涵.png','于淑涵.png'),
	(299,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1705980,'/Users/zhanghaoming/Downloads/熊子玉.png','熊子玉.png'),
	(300,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',2945979,'/Users/zhanghaoming/Downloads/未命名的Markdown文件.html','未命名的Markdown文件.html'),
	(301,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',2261,'/Users/zhanghaoming/Downloads/stock_active.png','stock_active.png'),
	(302,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',3687,'/Users/zhanghaoming/Downloads/1680707584750学生信息数据.xlsx','1680707584750学生信息数据.xlsx'),
	(303,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',392864,'/Users/zhanghaoming/Downloads/2.png','2.png'),
	(304,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',28027,'/Users/zhanghaoming/Downloads/ruoyi.zip','ruoyi.zip'),
	(305,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1016983,'/Users/zhanghaoming/Downloads/戢润辰.png','戢润辰.png'),
	(306,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',91675039,'/Users/zhanghaoming/Downloads/神奇飞书.mp4.zip','神奇飞书.mp4.zip'),
	(307,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',14332812,'/Users/zhanghaoming/Downloads/1.pdf','1.pdf'),
	(308,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',422701,'/Users/zhanghaoming/Downloads/3.png','3.png'),
	(309,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',463996,'/Users/zhanghaoming/Downloads/1.png','1.png'),
	(310,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',9563469,'/Users/zhanghaoming/Downloads/aspose-words.zip','aspose-words.zip'),
	(311,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1080139,'/Users/zhanghaoming/Downloads/刘高泽.png','刘高泽.png'),
	(312,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1631145,'/Users/zhanghaoming/Downloads/7dd7921f905a8329f598ad0830fa0cd4.png','7dd7921f905a8329f598ad0830fa0cd4.png'),
	(313,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',14150,'/Users/zhanghaoming/Downloads/语文园地6逐字稿.docx','语文园地6逐字稿.docx'),
	(314,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',16257,'/Users/zhanghaoming/Downloads/作业登记表.docx','作业登记表.docx'),
	(315,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',1128720,'/Users/zhanghaoming/Downloads/eddc30bf8a37f0d8072964f2dd3fb7a6.png','eddc30bf8a37f0d8072964f2dd3fb7a6.png'),
	(316,'','2024-06-10 16:07:48','',NULL,NULL,NULL,'',981876,'/Users/zhanghaoming/Downloads/sbia_examples.zip','sbia_examples.zip'),
	(317,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',103425,'/Users/zhanghaoming/Downloads/macjihuo.zip','macjihuo.zip'),
	(318,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',147353,'/Users/zhanghaoming/Downloads/419131714054140_.pic.jpg','419131714054140_.pic.jpg'),
	(319,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',3508,'/Users/zhanghaoming/Downloads/team.png','team.png'),
	(320,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',35170781,'/Users/zhanghaoming/Downloads/团结1.mp4','团结1.mp4'),
	(321,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',123327,'/Users/zhanghaoming/Downloads/WechatIMG41905.jpg','WechatIMG41905.jpg'),
	(322,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',3226698,'/Users/zhanghaoming/Downloads/苗馨予.png','苗馨予.png'),
	(323,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',1263409,'/Users/zhanghaoming/Downloads/鞠滢媛.png','鞠滢媛.png'),
	(324,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',4088198,'/Users/zhanghaoming/Downloads/RuoYi-master.zip','RuoYi-master.zip'),
	(325,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',4150,'/Users/zhanghaoming/Downloads/class.png','class.png'),
	(326,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',126053,'/Users/zhanghaoming/Downloads/419111714054138_.pic.jpg','419111714054138_.pic.jpg'),
	(327,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',206521,'/Users/zhanghaoming/Downloads/419091714054069_.pic.jpg','419091714054069_.pic.jpg'),
	(328,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',145330,'/Users/zhanghaoming/Downloads/10ui8ve_64f47c8e7743b7.87166193.jpg','10ui8ve_64f47c8e7743b7.87166193.jpg'),
	(329,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',113335,'/Users/zhanghaoming/Downloads/419121714054139_.pic.jpg','419121714054139_.pic.jpg'),
	(330,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',6253,'/Users/zhanghaoming/Downloads/0bc3beacmaaakiacmbnwwrqvacodeyeqajqa.f10002.txt','0bc3beacmaaakiacmbnwwrqvacodeyeqajqa.f10002.txt'),
	(331,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',1056567,'/Users/zhanghaoming/Downloads/王瑞涵.png','王瑞涵.png'),
	(332,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',2088232,'/Users/zhanghaoming/Downloads/付韵竹.png','付韵竹.png'),
	(333,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',4222,'/Users/zhanghaoming/Downloads/class_active.png','class_active.png'),
	(334,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',30416,'/Users/zhanghaoming/Downloads/语文作业免做券.docx','语文作业免做券.docx'),
	(335,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',5124,'/Users/zhanghaoming/Downloads/1694607377775四年级上学期语文第一单元灰卷考试.xlsx','1694607377775四年级上学期语文第一单元灰卷考试.xlsx'),
	(336,'','2024-06-10 16:10:08','',NULL,NULL,NULL,'',221041,'/Users/zhanghaoming/Downloads/i3ikcm_65e3d86214eb95.41146566.jpg','i3ikcm_65e3d86214eb95.41146566.jpg'),
	(337,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',836258,'/Users/zhanghaoming/Downloads/W020230419336779992203.pdf','W020230419336779992203.pdf'),
	(338,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',5124,'/Users/zhanghaoming/Downloads/1694607436796四年级上学期语文第一单元灰卷考试.xlsx','1694607436796四年级上学期语文第一单元灰卷考试.xlsx'),
	(339,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',86556502,'/Users/zhanghaoming/Downloads/小兔子家进贼了_副本.mp4','小兔子家进贼了_副本.mp4'),
	(340,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1708885,'/Users/zhanghaoming/Downloads/WechatIMG42038.png','WechatIMG42038.png'),
	(341,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',51782,'/Users/zhanghaoming/Downloads/banner.jpg','banner.jpg'),
	(342,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',3514,'/Users/zhanghaoming/Downloads/team_active.png','team_active.png'),
	(343,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',13365,'/Users/zhanghaoming/Downloads/111的副本.docx','111的副本.docx'),
	(344,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',111875,'/Users/zhanghaoming/Downloads/这段文字.pdf','这段文字.pdf'),
	(345,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',5125,'/Users/zhanghaoming/Downloads/1694531388589四年级上学期语文第一单元灰卷考试.xlsx','1694531388589四年级上学期语文第一单元灰卷考试.xlsx'),
	(346,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1268195,'/Users/zhanghaoming/Downloads/康一辰.png','康一辰.png'),
	(347,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',5123,'/Users/zhanghaoming/Downloads/1694607240971四年级上学期语文第一单元灰卷考试.xlsx','1694607240971四年级上学期语文第一单元灰卷考试.xlsx'),
	(348,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1467069,'/Users/zhanghaoming/Downloads/WX20240421-125830.png','WX20240421-125830.png'),
	(349,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',13365,'/Users/zhanghaoming/Downloads/直述句改转述句.docx','直述句改转述句.docx'),
	(350,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',2255,'/Users/zhanghaoming/Downloads/stock.png','stock.png'),
	(351,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',52051115,'/Users/zhanghaoming/Downloads/道法.zip','道法.zip'),
	(352,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',5148,'/Users/zhanghaoming/Downloads/1694531183630四年级上学期语文第一单元灰卷考试.xlsx','1694531183630四年级上学期语文第一单元灰卷考试.xlsx'),
	(353,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',5092693,'/Users/zhanghaoming/Downloads/重构改善既有代码的设计第2版.pdf','重构改善既有代码的设计第2版.pdf'),
	(354,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',3012,'/Users/zhanghaoming/Downloads/user_active.png','user_active.png'),
	(355,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',5127,'/Users/zhanghaoming/Downloads/1694608029198四年级上学期语文第一单元灰卷考试.xlsx','1694608029198四年级上学期语文第一单元灰卷考试.xlsx'),
	(356,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',2582,'/Users/zhanghaoming/Downloads/home.png','home.png'),
	(357,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1395556,'/Users/zhanghaoming/Downloads/苗雨晨.png','苗雨晨.png'),
	(358,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',3006,'/Users/zhanghaoming/Downloads/user.png','user.png'),
	(359,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',24850,'/Users/zhanghaoming/Downloads/课堂实录.txt','课堂实录.txt'),
	(360,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',58540,'/Users/zhanghaoming/Downloads/语文作业免做券.pdf','语文作业免做券.pdf'),
	(361,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',2059418,'/Users/zhanghaoming/Downloads/齐韦辰.png','齐韦辰.png'),
	(362,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',5140,'/Users/zhanghaoming/Downloads/1694531276981四年级上学期语文第一单元灰卷考试.xlsx','1694531276981四年级上学期语文第一单元灰卷考试.xlsx'),
	(363,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',82851834,'/Users/zhanghaoming/Downloads/逃出大英博物馆.mp4','逃出大英博物馆.mp4'),
	(364,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',4994,'/Users/zhanghaoming/Downloads/1716475817860参考资料数据.xlsx','1716475817860参考资料数据.xlsx'),
	(365,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',30380,'/Users/zhanghaoming/Downloads/第三次观课.txt','第三次观课.txt'),
	(366,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',39663934,'/Users/zhanghaoming/Downloads/环保1.mp4','环保1.mp4'),
	(367,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',4903,'/Users/zhanghaoming/Downloads/teacherHelper.png','teacherHelper.png'),
	(368,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1365648,'/Users/zhanghaoming/Downloads/崔嘉钰.png','崔嘉钰.png'),
	(369,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',0,'/Users/zhanghaoming/Downloads/暑假语文作业超市pdf.pdf','暑假语文作业超市pdf.pdf'),
	(370,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',195052,'/Users/zhanghaoming/Downloads/419071714054029_.pic.jpg','419071714054029_.pic.jpg'),
	(371,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',10667,'/Users/zhanghaoming/Downloads/齐韦辰.docx','齐韦辰.docx'),
	(372,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',21738,'/Users/zhanghaoming/Downloads/社团教学进度课时计划.docx','社团教学进度课时计划.docx'),
	(373,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',8676320,'/Users/zhanghaoming/Downloads/apache-maven-3.8.6-bin.tar.gz','apache-maven-3.8.6-bin.tar.gz'),
	(374,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',20183968,'/Users/zhanghaoming/Downloads/CSS权威指南.pdf','CSS权威指南.pdf'),
	(375,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1934277,'/Users/zhanghaoming/Downloads/WechatIMG42041.png','WechatIMG42041.png'),
	(376,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',25599300,'/Users/zhanghaoming/Downloads/mda-peq45j7py2q9q7su.mp4','mda-peq45j7py2q9q7su.mp4'),
	(377,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',29046105,'/Users/zhanghaoming/Downloads/归档.zip','归档.zip'),
	(378,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',3451456,'/Users/zhanghaoming/Downloads/小学生安全教育动画城市篇2乘坐汽车注意事项.mp4','小学生安全教育动画城市篇2乘坐汽车注意事项.mp4'),
	(379,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',3355,'/Users/zhanghaoming/Downloads/1683807456949342.txt','1683807456949342.txt'),
	(380,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',153038,'/Users/zhanghaoming/Downloads/419101714054101_.pic.jpg','419101714054101_.pic.jpg'),
	(381,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',45081257,'/Users/zhanghaoming/Downloads/道法4月22日.zip','道法4月22日.zip'),
	(382,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1836019,'/Users/zhanghaoming/Downloads/李则阳.png','李则阳.png'),
	(383,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',35084389,'/Users/zhanghaoming/Downloads/团结1.mp4.zip','团结1.mp4.zip'),
	(384,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',59346574,'/Users/zhanghaoming/Downloads/01e52d04af0dc0a3010370038b37dde42c_258.mp4','01e52d04af0dc0a3010370038b37dde42c_258.mp4'),
	(385,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',2797705,'/Users/zhanghaoming/Downloads/editor.md-master.zip','editor.md-master.zip'),
	(386,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',2583622,'/Users/zhanghaoming/Downloads/1633614839166.mp4','1633614839166.mp4'),
	(387,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1502298,'/Users/zhanghaoming/Downloads/张芸溪.png','张芸溪.png'),
	(388,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',92045312,'/Users/zhanghaoming/Downloads/神奇飞书.mp4','神奇飞书.mp4'),
	(389,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',12691,'/Users/zhanghaoming/Downloads/1695647447805四年级上学期语文第二单元灰卷考试.xlsx','1695647447805四年级上学期语文第二单元灰卷考试.xlsx'),
	(390,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',18287,'/Users/zhanghaoming/Downloads/副本三下语文家长会.docx','副本三下语文家长会.docx'),
	(391,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',728661,'/Users/zhanghaoming/Downloads/新建项目.jpg','新建项目.jpg'),
	(392,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',32916596,'/Users/zhanghaoming/Downloads/乐比悠悠吃饭洗手不让细菌有机会.mp4','乐比悠悠吃饭洗手不让细菌有机会.mp4'),
	(393,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',192571,'/Users/zhanghaoming/Downloads/419081714054030_.pic.jpg','419081714054030_.pic.jpg'),
	(394,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',29769787,'/Users/zhanghaoming/Downloads/暴力云与送子鹳.mp4','暴力云与送子鹳.mp4'),
	(395,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',9041,'/Users/zhanghaoming/Downloads/未命名的Markdown文件.txt','未命名的Markdown文件.txt'),
	(396,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',86556502,'/Users/zhanghaoming/Downloads/小兔子家进贼了.mp4','小兔子家进贼了.mp4'),
	(397,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',27914777,'/Users/zhanghaoming/Downloads/道法谁是英雄.mp4','道法谁是英雄.mp4'),
	(398,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1968872,'/Users/zhanghaoming/Downloads/武明李.png','武明李.png'),
	(399,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1761741,'/Users/zhanghaoming/Downloads/WechatIMG42035.png','WechatIMG42035.png'),
	(400,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',79748,'/Users/zhanghaoming/Downloads/户型图1.jpg','户型图1.jpg'),
	(401,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1322817,'/Users/zhanghaoming/Downloads/于淑涵.png','于淑涵.png'),
	(402,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1705980,'/Users/zhanghaoming/Downloads/熊子玉.png','熊子玉.png'),
	(403,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',2945979,'/Users/zhanghaoming/Downloads/未命名的Markdown文件.html','未命名的Markdown文件.html'),
	(404,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',2261,'/Users/zhanghaoming/Downloads/stock_active.png','stock_active.png'),
	(405,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',3687,'/Users/zhanghaoming/Downloads/1680707584750学生信息数据.xlsx','1680707584750学生信息数据.xlsx'),
	(406,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',392864,'/Users/zhanghaoming/Downloads/2.png','2.png'),
	(407,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',28027,'/Users/zhanghaoming/Downloads/ruoyi.zip','ruoyi.zip'),
	(408,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1016983,'/Users/zhanghaoming/Downloads/戢润辰.png','戢润辰.png'),
	(409,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',91675039,'/Users/zhanghaoming/Downloads/神奇飞书.mp4.zip','神奇飞书.mp4.zip'),
	(410,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',14332812,'/Users/zhanghaoming/Downloads/1.pdf','1.pdf'),
	(411,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',422701,'/Users/zhanghaoming/Downloads/3.png','3.png'),
	(412,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',463996,'/Users/zhanghaoming/Downloads/1.png','1.png'),
	(413,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',9563469,'/Users/zhanghaoming/Downloads/aspose-words.zip','aspose-words.zip'),
	(414,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1080139,'/Users/zhanghaoming/Downloads/刘高泽.png','刘高泽.png'),
	(415,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1631145,'/Users/zhanghaoming/Downloads/7dd7921f905a8329f598ad0830fa0cd4.png','7dd7921f905a8329f598ad0830fa0cd4.png'),
	(416,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',14150,'/Users/zhanghaoming/Downloads/语文园地6逐字稿.docx','语文园地6逐字稿.docx'),
	(417,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',16257,'/Users/zhanghaoming/Downloads/作业登记表.docx','作业登记表.docx'),
	(418,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',1128720,'/Users/zhanghaoming/Downloads/eddc30bf8a37f0d8072964f2dd3fb7a6.png','eddc30bf8a37f0d8072964f2dd3fb7a6.png'),
	(419,'','2024-06-10 16:10:09','',NULL,NULL,NULL,'',981876,'/Users/zhanghaoming/Downloads/sbia_examples.zip','sbia_examples.zip');

/*!40000 ALTER TABLE `ref_document` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 ref_reference
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ref_reference`;

CREATE TABLE `ref_reference` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint DEFAULT NULL COMMENT '删除标识 0=未删除,1=已删除',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `reference_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '资料类型',
  `reference_content` blob COMMENT '资料文字内容',
  `reference_title` varchar(128) DEFAULT NULL COMMENT '资料标题',
  `reference_tag` varchar(128) DEFAULT NULL COMMENT '资料标签',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参考资料表';

LOCK TABLES `ref_reference` WRITE;
/*!40000 ALTER TABLE `ref_reference` DISABLE KEYS */;

INSERT INTO `ref_reference` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`, `reference_type`, `reference_content`, `reference_title`, `reference_tag`)
VALUES
	(3,'','2024-03-11 21:35:34','',NULL,NULL,'ff',NULL,X'3C626C6F636B71756F74653E3C703EE9A5AEE794A83C2F703E3C2F626C6F636B71756F74653E3C64697620636C6173733D226F70656E2D736F757263652D736F6674776172652D636172642D627265616B2D616C6C5F5F366251594D22207374796C653D22776F72642D627265616B3A20627265616B2D616C6C3B20666F6E742D66616D696C793A20417269616C2C2073616E732D73657269663B223E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE59FBAE4BA8E537072696E67426F6F74E79A843C2F7370616E3E3C666F6E7420636F6C6F723D222330303030303022207374796C653D226261636B67726F756E642D636F6C6F723A20726762283235352C203235352C2030293B223E3C7370616E207374796C653D22666F6E742D66616D696C793A202671756F743B417269616C20426C61636B2671756F743B3B223EE69D83E99990E7AEA1E79086E7B3BBE7BB9F20E69893E8AFBBE698933C2F7370616E3E3C2F666F6E743E3C666F6E7420636F6C6F723D2223333333333333223EE68782E38081E7958CE99DA2E7AE803C7370616E207374796C653D22666F6E742D73697A653A20323470783B223EE6B481E7BE8EE8A782E3808220E6A0B8E5BF83E68A80E69CAFE98787E794A8537072693C2F7370616E3E6E67E380814D794261746973E38081536869726FE6B2A1E69C89E4BBBBE4BD95E585B6E5AE83E9878DE5BAA6E4BE9DE8B596E38082E79BB4E68EA5E8BF90E8A18CE58DB3E58FAFE794A820E5B9B3E58FB0E7AE80E4BB8B20E4B880E79BB4E683B3E5819AE4B880E6ACBEE5908EE58FB0E7AEA1E79086E7B3BB2E2E2E3C2F666F6E743E3C2F6469763E3C646976207374796C653D22636F6C6F723A207267622835312C2035312C203531293B20666F6E742D66616D696C793A20417269616C2C2073616E732D73657269663B223E4769746565E68C87E695B0E4B8BA3931EFBC8CE8B685E8BF87393925E79A84E5BC80E6BA90E9A1B9E79BAE3C2F6469763E3C7461626C6520636C6173733D227461626C65207461626C652D626F726465726564223E3C74626F64793E3C74723E3C74643E313C2F74643E3C74643E353C2F74643E3C74643E3C62723E3C2F74643E3C2F74723E3C74723E3C74643E323C2F74643E3C74643E343C2F74643E3C74643E32323C2F74643E3C2F74723E3C74723E3C74643E333C2F74643E3C74643E3C62723E3C2F74643E3C74643E3C62723E3C2F74643E3C2F74723E3C74723E3C74643E3C62723E3C2F74643E3C74643E343C2F74643E3C74643E3C703E3C62723E3C2F703E3C703E3C62723E3C2F703E3C2F74643E3C2F74723E3C2F74626F64793E3C2F7461626C653E3C646976207374796C653D22636F6C6F723A207267622835312C2035312C203531293B20666F6E742D66616D696C793A20417269616C2C2073616E732D73657269663B223E3C696D67207372633D22687474703A2F2F6C6F63616C686F73743A383038312F746561636865722F70726F66696C652F75706C6F61642F323032342F30332F31312F65646463333062663861333766306438303732393634663264643366623761365F3230323430333131323133353037413030322E706E6722207374796C653D2277696474683A203235253B223E3C2F6469763E3C646976207374796C653D22636F6C6F723A207267622835312C2035312C203531293B20666F6E742D66616D696C793A20417269616C2C2073616E732D73657269663B223E313131313131313C2F6469763E','bt','bq'),
	(4,'','2024-03-16 19:23:23','',NULL,NULL,NULL,NULL,X'3C703EE6A087E9A298313C62723E3C2F703E','标题1',NULL),
	(5,'','2024-03-16 19:25:30','',NULL,NULL,NULL,NULL,X'3C703EE6A087E9A298323C62723E3C2F703E','标题2',NULL),
	(6,'','2024-03-16 19:32:40','',NULL,NULL,NULL,NULL,X'3C703EE6A087E9A298333C62723E3C2F703E','标题3',NULL),
	(7,'','2024-03-16 19:50:29','',NULL,NULL,NULL,NULL,X'3C703EE6A087E9A298343C62723E3C2F703E','标题4',NULL),
	(8,'','2024-03-16 20:19:43','',NULL,NULL,NULL,NULL,X'3C703EE6A087E9A298353C62723E3C2F703E','标题5',NULL),
	(9,'','2024-03-16 20:27:00','',NULL,NULL,NULL,NULL,X'3C703EE6A087E9A298363C62723E3C2F703E','标题6',NULL),
	(10,'','2024-03-16 20:30:36','',NULL,NULL,NULL,NULL,X'3C703EE6A087E9A298363C62723E3C2F703E','标题6',NULL),
	(11,'','2024-03-16 20:34:08','',NULL,NULL,NULL,NULL,X'3C703EE6A087E9A298373C62723E3C2F703E','标题7',NULL),
	(17,'','2024-04-20 16:41:34','',NULL,NULL,NULL,NULL,X'3C703E3131313C696D67207372633D22687474703A2F2F6C6F63616C686F73743A383038312F746561636865722F70726F66696C652F75706C6F61642F323032342F30342F32302F7465616D5F3230323430343230313634313236413030332E706E6722207374796C653D2277696474683A2032303070783B223E3C2F703E','1',NULL),
	(18,'','2024-04-20 16:42:47','',NULL,NULL,NULL,NULL,X'3C703E323C696D67207372633D22687474703A2F2F6C6F63616C686F73743A383038312F746561636865722F70726F66696C652F75706C6F61642F323032342F30342F32302F7465616D5F6163746976655F3230323430343230313634323338413030342E706E6722207374796C653D2277696474683A2032303070783B223E3C2F703E','2',NULL),
	(19,'','2024-04-20 17:08:20','',NULL,NULL,NULL,NULL,X'3C703E333C2F703E','3',NULL),
	(20,'','2024-04-20 17:09:46','',NULL,NULL,NULL,NULL,X'3C703E343C2F703E','4',NULL),
	(21,'','2024-05-23 21:55:31','',NULL,NULL,NULL,NULL,X'74696D650D0A2020202020202020202020202020202020202020','time',NULL),
	(22,'','2024-05-23 22:00:37','','2024-05-23 22:37:45',NULL,NULL,NULL,X'313131313131','time1211',NULL),
	(23,'admin','2024-05-23 22:45:46','admin','2024-05-24 21:16:29',NULL,NULL,NULL,X'3C703EE99D9EE6B395E9A1BAE4B8B0E595A5E59CB0E696B9E5958A20E5AE89E68A9AE5AFB9E696B9662066E88AB3E88AB3E5888631313131313C2F703E','12芳芳大的',NULL),
	(24,'admin','2024-05-27 21:30:50','',NULL,NULL,NULL,NULL,X'3C703E3132333132333C696D67207372633D22687474703A2F2F6C6F63616C686F73743A383038312F746561636865722F70726F66696C652F75706C6F61642F323032342F30352F32372F586E6970323032332D31302D31355F30382D32362D31375F3230323430353237323133303331413030312E6A706722207374796C653D2277696474683A203130363970783B223E66666666663C2F703E','12芳芳大的11',NULL),
	(25,'admin','2024-05-27 22:28:32','',NULL,NULL,NULL,NULL,NULL,'2023年采暖费_副本2.pdf',NULL),
	(26,'admin','2024-05-27 22:28:32','',NULL,NULL,NULL,NULL,NULL,'2023年采暖费_副本3.pdf',NULL),
	(27,'admin','2024-05-27 22:28:32','',NULL,NULL,NULL,NULL,NULL,'2023年采暖费_副本.pdf',NULL),
	(28,'admin','2024-05-27 22:28:32','',NULL,NULL,NULL,NULL,NULL,'2023年采暖费.pdf',NULL),
	(29,'admin','2024-05-27 22:30:10','',NULL,NULL,NULL,NULL,NULL,'2023年采暖费_副本2.pdf',NULL),
	(30,'admin','2024-05-27 22:30:10','',NULL,NULL,NULL,NULL,NULL,'2023年采暖费_副本3.pdf',NULL),
	(31,'admin','2024-05-27 22:30:10','',NULL,NULL,NULL,NULL,NULL,'2023年采暖费_副本.pdf',NULL),
	(32,'admin','2024-05-27 22:30:10','',NULL,NULL,NULL,NULL,NULL,'2023年采暖费.pdf',NULL),
	(33,'admin','2024-05-27 22:34:31','',NULL,NULL,NULL,NULL,NULL,'2023年采暖费_副本2',NULL),
	(34,'admin','2024-05-27 22:34:31','',NULL,NULL,NULL,NULL,NULL,'2023年采暖费_副本3',NULL),
	(35,'admin','2024-05-27 22:34:31','',NULL,NULL,NULL,NULL,NULL,'2023年采暖费_副本',NULL),
	(36,'admin','2024-05-27 22:34:31','',NULL,NULL,NULL,NULL,NULL,'2023年采暖费',NULL),
	(37,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'macjihuo',NULL),
	(38,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'419131714054140_',NULL),
	(39,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'team',NULL),
	(40,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'团结1',NULL),
	(41,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'WechatIMG41905',NULL),
	(42,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'苗馨予',NULL),
	(43,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'鞠滢媛',NULL),
	(44,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'RuoYi-master',NULL),
	(45,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'class',NULL),
	(46,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'419111714054138_',NULL),
	(47,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'419091714054069_',NULL),
	(48,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'10ui8ve_64f47c8e7743b7',NULL),
	(49,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'419121714054139_',NULL),
	(50,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'0bc3beacmaaakiacmbnwwrqvacodeyeqajqa',NULL),
	(51,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'王瑞涵',NULL),
	(52,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'付韵竹',NULL),
	(53,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'class_active',NULL),
	(54,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'语文作业免做券',NULL),
	(55,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'1694607377775四年级上学期语文第一单元灰卷考试',NULL),
	(56,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'i3ikcm_65e3d86214eb95',NULL),
	(57,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'W020230419336779992203',NULL),
	(58,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'1694607436796四年级上学期语文第一单元灰卷考试',NULL),
	(59,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'小兔子家进贼了_副本',NULL),
	(60,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'WechatIMG42038',NULL),
	(61,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'banner',NULL),
	(62,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'team_active',NULL),
	(63,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'111的副本',NULL),
	(64,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'这段文字',NULL),
	(65,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'1694531388589四年级上学期语文第一单元灰卷考试',NULL),
	(66,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'康一辰',NULL),
	(67,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'1694607240971四年级上学期语文第一单元灰卷考试',NULL),
	(68,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'WX20240421-125830',NULL),
	(69,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'直述句改转述句',NULL),
	(70,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'stock',NULL),
	(71,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'道法',NULL),
	(72,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'1694531183630四年级上学期语文第一单元灰卷考试',NULL),
	(73,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'重构改善既有代码的设计第2版',NULL),
	(74,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'user_active',NULL),
	(75,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'1694608029198四年级上学期语文第一单元灰卷考试',NULL),
	(76,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'home',NULL),
	(77,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'苗雨晨',NULL),
	(78,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'user',NULL),
	(79,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'课堂实录',NULL),
	(80,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'语文作业免做券',NULL),
	(81,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'齐韦辰',NULL),
	(82,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'1694531276981四年级上学期语文第一单元灰卷考试',NULL),
	(83,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'逃出大英博物馆',NULL),
	(84,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'1716475817860参考资料数据',NULL),
	(85,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'第三次观课',NULL),
	(86,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'环保1',NULL),
	(87,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'teacherHelper',NULL),
	(88,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'崔嘉钰',NULL),
	(89,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'暑假语文作业超市pdf',NULL),
	(90,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'419071714054029_',NULL),
	(91,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'齐韦辰',NULL),
	(92,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'社团教学进度课时计划',NULL),
	(93,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'apache-maven-3',NULL),
	(94,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'CSS权威指南',NULL),
	(95,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'WechatIMG42041',NULL),
	(96,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'mda-peq45j7py2q9q7su',NULL),
	(97,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'归档',NULL),
	(98,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'小学生安全教育动画城市篇2乘坐汽车注意事项',NULL),
	(99,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'1683807456949342',NULL),
	(100,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'419101714054101_',NULL),
	(101,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'道法4月22日',NULL),
	(102,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'李则阳',NULL),
	(103,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'团结1',NULL),
	(104,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'01e52d04af0dc0a3010370038b37dde42c_258',NULL),
	(105,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'editor',NULL),
	(106,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'1633614839166',NULL),
	(107,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'张芸溪',NULL),
	(108,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'神奇飞书',NULL),
	(109,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'1695647447805四年级上学期语文第二单元灰卷考试',NULL),
	(110,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'副本三下语文家长会',NULL),
	(111,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'新建项目',NULL),
	(112,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'乐比悠悠吃饭洗手不让细菌有机会',NULL),
	(113,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'419081714054030_',NULL),
	(114,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'暴力云与送子鹳',NULL),
	(115,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'未命名的Markdown文件',NULL),
	(116,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'小兔子家进贼了',NULL),
	(117,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'道法谁是英雄',NULL),
	(118,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'武明李',NULL),
	(119,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'WechatIMG42035',NULL),
	(120,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'户型图1',NULL),
	(121,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'于淑涵',NULL),
	(122,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'熊子玉',NULL),
	(123,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'未命名的Markdown文件',NULL),
	(124,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'stock_active',NULL),
	(125,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'1680707584750学生信息数据',NULL),
	(126,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'2',NULL),
	(127,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'ruoyi',NULL),
	(128,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'戢润辰',NULL),
	(129,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'神奇飞书',NULL),
	(130,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'1',NULL),
	(131,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'3',NULL),
	(132,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'1',NULL),
	(133,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'aspose-words',NULL),
	(134,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'刘高泽',NULL),
	(135,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'7dd7921f905a8329f598ad0830fa0cd4',NULL),
	(136,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'语文园地6逐字稿',NULL),
	(137,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'作业登记表',NULL),
	(138,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'eddc30bf8a37f0d8072964f2dd3fb7a6',NULL),
	(139,'admin','2024-05-27 22:39:45','',NULL,NULL,NULL,NULL,NULL,'sbia_examples',NULL),
	(140,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'macjihuo',NULL),
	(141,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'419131714054140_',NULL),
	(142,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'team',NULL),
	(143,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'团结1',NULL),
	(144,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'WechatIMG41905',NULL),
	(145,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'苗馨予',NULL),
	(146,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'鞠滢媛',NULL),
	(147,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'RuoYi-master',NULL),
	(148,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'class',NULL),
	(149,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'419111714054138_',NULL),
	(150,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'419091714054069_',NULL),
	(151,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'10ui8ve_64f47c8e7743b7',NULL),
	(152,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'419121714054139_',NULL),
	(153,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'0bc3beacmaaakiacmbnwwrqvacodeyeqajqa',NULL),
	(154,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'王瑞涵',NULL),
	(155,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'付韵竹',NULL),
	(156,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'class_active',NULL),
	(157,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'语文作业免做券',NULL),
	(158,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'1694607377775四年级上学期语文第一单元灰卷考试',NULL),
	(159,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'i3ikcm_65e3d86214eb95',NULL),
	(160,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'W020230419336779992203',NULL),
	(161,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'1694607436796四年级上学期语文第一单元灰卷考试',NULL),
	(162,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'小兔子家进贼了_副本',NULL),
	(163,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'WechatIMG42038',NULL),
	(164,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'banner',NULL),
	(165,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'team_active',NULL),
	(166,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'111的副本',NULL),
	(167,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'这段文字',NULL),
	(168,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'1694531388589四年级上学期语文第一单元灰卷考试',NULL),
	(169,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'康一辰',NULL),
	(170,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'1694607240971四年级上学期语文第一单元灰卷考试',NULL),
	(171,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'WX20240421-125830',NULL),
	(172,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'直述句改转述句',NULL),
	(173,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'stock',NULL),
	(174,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'道法',NULL),
	(175,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'1694531183630四年级上学期语文第一单元灰卷考试',NULL),
	(176,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'重构改善既有代码的设计第2版',NULL),
	(177,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'user_active',NULL),
	(178,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'1694608029198四年级上学期语文第一单元灰卷考试',NULL),
	(179,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'home',NULL),
	(180,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'苗雨晨',NULL),
	(181,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'user',NULL),
	(182,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'课堂实录',NULL),
	(183,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'语文作业免做券',NULL),
	(184,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'齐韦辰',NULL),
	(185,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'1694531276981四年级上学期语文第一单元灰卷考试',NULL),
	(186,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'逃出大英博物馆',NULL),
	(187,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'1716475817860参考资料数据',NULL),
	(188,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'第三次观课',NULL),
	(189,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'环保1',NULL),
	(190,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'teacherHelper',NULL),
	(191,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'崔嘉钰',NULL),
	(192,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'暑假语文作业超市pdf',NULL),
	(193,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'419071714054029_',NULL),
	(194,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'齐韦辰',NULL),
	(195,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'社团教学进度课时计划',NULL),
	(196,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'apache-maven-3',NULL),
	(197,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'CSS权威指南',NULL),
	(198,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'WechatIMG42041',NULL),
	(199,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'mda-peq45j7py2q9q7su',NULL),
	(200,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'归档',NULL),
	(201,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'小学生安全教育动画城市篇2乘坐汽车注意事项',NULL),
	(202,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'1683807456949342',NULL),
	(203,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'419101714054101_',NULL),
	(204,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'道法4月22日',NULL),
	(205,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'李则阳',NULL),
	(206,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'团结1',NULL),
	(207,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'01e52d04af0dc0a3010370038b37dde42c_258',NULL),
	(208,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'editor',NULL),
	(209,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'1633614839166',NULL),
	(210,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'张芸溪',NULL),
	(211,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'神奇飞书',NULL),
	(212,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'1695647447805四年级上学期语文第二单元灰卷考试',NULL),
	(213,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'副本三下语文家长会',NULL),
	(214,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'新建项目',NULL),
	(215,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'乐比悠悠吃饭洗手不让细菌有机会',NULL),
	(216,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'419081714054030_',NULL),
	(217,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'暴力云与送子鹳',NULL),
	(218,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'未命名的Markdown文件',NULL),
	(219,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'小兔子家进贼了',NULL),
	(220,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'道法谁是英雄',NULL),
	(221,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'武明李',NULL),
	(222,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'WechatIMG42035',NULL),
	(223,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'户型图1',NULL),
	(224,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'于淑涵',NULL),
	(225,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'熊子玉',NULL),
	(226,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'未命名的Markdown文件',NULL),
	(227,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'stock_active',NULL),
	(228,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'1680707584750学生信息数据',NULL),
	(229,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'2',NULL),
	(230,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'ruoyi',NULL),
	(231,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'戢润辰',NULL),
	(232,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'神奇飞书',NULL),
	(233,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'1',NULL),
	(234,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'3',NULL),
	(235,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'1',NULL),
	(236,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'aspose-words',NULL),
	(237,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'刘高泽',NULL),
	(238,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'7dd7921f905a8329f598ad0830fa0cd4',NULL),
	(239,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'语文园地6逐字稿',NULL),
	(240,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'作业登记表',NULL),
	(241,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'eddc30bf8a37f0d8072964f2dd3fb7a6',NULL),
	(242,'admin','2024-06-10 16:07:48','',NULL,NULL,NULL,NULL,NULL,'sbia_examples',NULL),
	(243,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'macjihuo',NULL),
	(244,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'419131714054140_',NULL),
	(245,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'team',NULL),
	(246,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'团结1',NULL),
	(247,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'WechatIMG41905',NULL),
	(248,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'苗馨予',NULL),
	(249,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'鞠滢媛',NULL),
	(250,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'RuoYi-master',NULL),
	(251,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'class',NULL),
	(252,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'419111714054138_',NULL),
	(253,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'419091714054069_',NULL),
	(254,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'10ui8ve_64f47c8e7743b7',NULL),
	(255,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'419121714054139_',NULL),
	(256,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'0bc3beacmaaakiacmbnwwrqvacodeyeqajqa',NULL),
	(257,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'王瑞涵',NULL),
	(258,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'付韵竹',NULL),
	(259,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'class_active',NULL),
	(260,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'语文作业免做券',NULL),
	(261,'admin','2024-06-10 16:10:08','',NULL,NULL,NULL,NULL,NULL,'1694607377775四年级上学期语文第一单元灰卷考试',NULL),
	(262,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'i3ikcm_65e3d86214eb95',NULL),
	(263,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'W020230419336779992203',NULL),
	(264,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'1694607436796四年级上学期语文第一单元灰卷考试',NULL),
	(265,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'小兔子家进贼了_副本',NULL),
	(266,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'WechatIMG42038',NULL),
	(267,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'banner',NULL),
	(268,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'team_active',NULL),
	(269,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'111的副本',NULL),
	(270,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'这段文字',NULL),
	(271,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'1694531388589四年级上学期语文第一单元灰卷考试',NULL),
	(272,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'康一辰',NULL),
	(273,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'1694607240971四年级上学期语文第一单元灰卷考试',NULL),
	(274,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'WX20240421-125830',NULL),
	(275,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'直述句改转述句',NULL),
	(276,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'stock',NULL),
	(277,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'道法',NULL),
	(278,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'1694531183630四年级上学期语文第一单元灰卷考试',NULL),
	(279,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'重构改善既有代码的设计第2版',NULL),
	(280,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'user_active',NULL),
	(281,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'1694608029198四年级上学期语文第一单元灰卷考试',NULL),
	(282,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'home',NULL),
	(283,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'苗雨晨',NULL),
	(284,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'user',NULL),
	(285,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'课堂实录',NULL),
	(286,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'语文作业免做券',NULL),
	(287,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'齐韦辰',NULL),
	(288,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'1694531276981四年级上学期语文第一单元灰卷考试',NULL),
	(289,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'逃出大英博物馆',NULL),
	(290,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'1716475817860参考资料数据',NULL),
	(291,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'第三次观课',NULL),
	(292,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'环保1',NULL),
	(293,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'teacherHelper',NULL),
	(294,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'崔嘉钰',NULL),
	(295,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'暑假语文作业超市pdf',NULL),
	(296,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'419071714054029_',NULL),
	(297,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'齐韦辰',NULL),
	(298,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'社团教学进度课时计划',NULL),
	(299,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'apache-maven-3',NULL),
	(300,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'CSS权威指南',NULL),
	(301,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'WechatIMG42041',NULL),
	(302,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'mda-peq45j7py2q9q7su',NULL),
	(303,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'归档',NULL),
	(304,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'小学生安全教育动画城市篇2乘坐汽车注意事项',NULL),
	(305,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'1683807456949342',NULL),
	(306,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'419101714054101_',NULL),
	(307,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'道法4月22日',NULL),
	(308,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'李则阳',NULL),
	(309,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'团结1',NULL),
	(310,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'01e52d04af0dc0a3010370038b37dde42c_258',NULL),
	(311,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'editor',NULL),
	(312,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'1633614839166',NULL),
	(313,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'张芸溪',NULL),
	(314,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'神奇飞书',NULL),
	(315,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'1695647447805四年级上学期语文第二单元灰卷考试',NULL),
	(316,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'副本三下语文家长会',NULL),
	(317,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'新建项目',NULL),
	(318,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'乐比悠悠吃饭洗手不让细菌有机会',NULL),
	(319,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'419081714054030_',NULL),
	(320,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'暴力云与送子鹳',NULL),
	(321,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'未命名的Markdown文件',NULL),
	(322,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'小兔子家进贼了',NULL),
	(323,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'道法谁是英雄',NULL),
	(324,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'武明李',NULL),
	(325,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'WechatIMG42035',NULL),
	(326,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'户型图1',NULL),
	(327,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'于淑涵',NULL),
	(328,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'熊子玉',NULL),
	(329,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'未命名的Markdown文件',NULL),
	(330,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'stock_active',NULL),
	(331,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'1680707584750学生信息数据',NULL),
	(332,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'2',NULL),
	(333,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'ruoyi',NULL),
	(334,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'戢润辰',NULL),
	(335,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'神奇飞书',NULL),
	(336,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'1',NULL),
	(337,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'3',NULL),
	(338,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'1',NULL),
	(339,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'aspose-words',NULL),
	(340,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'刘高泽',NULL),
	(341,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'7dd7921f905a8329f598ad0830fa0cd4',NULL),
	(342,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'语文园地6逐字稿',NULL),
	(343,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'作业登记表',NULL),
	(344,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'eddc30bf8a37f0d8072964f2dd3fb7a6',NULL),
	(345,'admin','2024-06-10 16:10:09','',NULL,NULL,NULL,NULL,NULL,'sbia_examples',NULL);

/*!40000 ALTER TABLE `ref_reference` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 rt_class_student
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rt_class_student`;

CREATE TABLE `rt_class_student` (
  `tb_student_info_id` bigint NOT NULL COMMENT '学生信息表ID',
  `tb_class_info_id` bigint NOT NULL COMMENT '班级信息表ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='班级和学生关系表';

LOCK TABLES `rt_class_student` WRITE;
/*!40000 ALTER TABLE `rt_class_student` DISABLE KEYS */;

INSERT INTO `rt_class_student` (`tb_student_info_id`, `tb_class_info_id`)
VALUES
	(1,2),
	(2,4),
	(3,4),
	(4,4),
	(5,4),
	(6,4),
	(7,4),
	(8,4),
	(9,4),
	(10,4),
	(11,4),
	(12,4),
	(13,4),
	(14,4),
	(15,4),
	(16,4),
	(17,4),
	(18,4),
	(19,4),
	(20,4),
	(21,4),
	(22,4),
	(23,4),
	(24,4),
	(25,4),
	(26,4),
	(27,4),
	(28,4),
	(29,4),
	(30,4),
	(31,4),
	(32,4),
	(33,4),
	(34,4),
	(35,4),
	(36,4),
	(37,4),
	(38,4),
	(39,4),
	(40,4),
	(41,4),
	(42,4),
	(43,4),
	(44,4),
	(45,4),
	(46,4),
	(47,4);

/*!40000 ALTER TABLE `rt_class_student` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 rt_reference_document
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rt_reference_document`;

CREATE TABLE `rt_reference_document` (
  `ref_reference_id` bigint NOT NULL COMMENT '参考资料表ID',
  `ref_document_id` bigint NOT NULL COMMENT '文档表ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参考资料和文档关系表';

LOCK TABLES `rt_reference_document` WRITE;
/*!40000 ALTER TABLE `rt_reference_document` DISABLE KEYS */;

INSERT INTO `rt_reference_document` (`ref_reference_id`, `ref_document_id`)
VALUES
	(11,6),
	(14,7),
	(14,8),
	(20,9),
	(20,10),
	(20,11),
	(21,90),
	(21,91),
	(23,95),
	(23,96),
	(23,97),
	(24,98),
	(25,99),
	(26,100),
	(27,101),
	(28,102),
	(29,103),
	(30,104),
	(31,105),
	(32,106),
	(33,107),
	(34,108),
	(35,109),
	(36,110),
	(37,111),
	(38,112),
	(39,113),
	(40,114),
	(41,115),
	(42,116),
	(43,117),
	(44,118),
	(45,119),
	(46,120),
	(47,121),
	(48,122),
	(49,123),
	(50,124),
	(51,125),
	(52,126),
	(53,127),
	(54,128),
	(55,129),
	(56,130),
	(57,131),
	(58,132),
	(59,133),
	(60,134),
	(61,135),
	(62,136),
	(63,137),
	(64,138),
	(65,139),
	(66,140),
	(67,141),
	(68,142),
	(69,143),
	(70,144),
	(71,145),
	(72,146),
	(73,147),
	(74,148),
	(75,149),
	(76,150),
	(77,151),
	(78,152),
	(79,153),
	(80,154),
	(81,155),
	(82,156),
	(83,157),
	(84,158),
	(85,159),
	(86,160),
	(87,161),
	(88,162),
	(89,163),
	(90,164),
	(91,165),
	(92,166),
	(93,167),
	(94,168),
	(95,169),
	(96,170),
	(97,171),
	(98,172),
	(99,173),
	(100,174),
	(101,175),
	(102,176),
	(103,177),
	(104,178),
	(105,179),
	(106,180),
	(107,181),
	(108,182),
	(109,183),
	(110,184),
	(111,185),
	(112,186),
	(113,187),
	(114,188),
	(115,189),
	(116,190),
	(117,191),
	(118,192),
	(119,193),
	(120,194),
	(121,195),
	(122,196),
	(123,197),
	(124,198),
	(125,199),
	(126,200),
	(127,201),
	(128,202),
	(129,203),
	(130,204),
	(131,205),
	(132,206),
	(133,207),
	(134,208),
	(135,209),
	(136,210),
	(137,211),
	(138,212),
	(139,213),
	(140,214),
	(141,215),
	(142,216),
	(143,217),
	(144,218),
	(145,219),
	(146,220),
	(147,221),
	(148,222),
	(149,223),
	(150,224),
	(151,225),
	(152,226),
	(153,227),
	(154,228),
	(155,229),
	(156,230),
	(157,231),
	(158,232),
	(159,233),
	(160,234),
	(161,235),
	(162,236),
	(163,237),
	(164,238),
	(165,239),
	(166,240),
	(167,241),
	(168,242),
	(169,243),
	(170,244),
	(171,245),
	(172,246),
	(173,247),
	(174,248),
	(175,249),
	(176,250),
	(177,251),
	(178,252),
	(179,253),
	(180,254),
	(181,255),
	(182,256),
	(183,257),
	(184,258),
	(185,259),
	(186,260),
	(187,261),
	(188,262),
	(189,263),
	(190,264),
	(191,265),
	(192,266),
	(193,267),
	(194,268),
	(195,269),
	(196,270),
	(197,271),
	(198,272),
	(199,273),
	(200,274),
	(201,275),
	(202,276),
	(203,277),
	(204,278),
	(205,279),
	(206,280),
	(207,281),
	(208,282),
	(209,283),
	(210,284),
	(211,285),
	(212,286),
	(213,287),
	(214,288),
	(215,289),
	(216,290),
	(217,291),
	(218,292),
	(219,293),
	(220,294),
	(221,295),
	(222,296),
	(223,297),
	(224,298),
	(225,299),
	(226,300),
	(227,301),
	(228,302),
	(229,303),
	(230,304),
	(231,305),
	(232,306),
	(233,307),
	(234,308),
	(235,309),
	(236,310),
	(237,311),
	(238,312),
	(239,313),
	(240,314),
	(241,315),
	(242,316),
	(243,317),
	(244,318),
	(245,319),
	(246,320),
	(247,321),
	(248,322),
	(249,323),
	(250,324),
	(251,325),
	(252,326),
	(253,327),
	(254,328),
	(255,329),
	(256,330),
	(257,331),
	(258,332),
	(259,333),
	(260,334),
	(261,335),
	(262,336),
	(263,337),
	(264,338),
	(265,339),
	(266,340),
	(267,341),
	(268,342),
	(269,343),
	(270,344),
	(271,345),
	(272,346),
	(273,347),
	(274,348),
	(275,349),
	(276,350),
	(277,351),
	(278,352),
	(279,353),
	(280,354),
	(281,355),
	(282,356),
	(283,357),
	(284,358),
	(285,359),
	(286,360),
	(287,361),
	(288,362),
	(289,363),
	(290,364),
	(291,365),
	(292,366),
	(293,367),
	(294,368),
	(295,369),
	(296,370),
	(297,371),
	(298,372),
	(299,373),
	(300,374),
	(301,375),
	(302,376),
	(303,377),
	(304,378),
	(305,379),
	(306,380),
	(307,381),
	(308,382),
	(309,383),
	(310,384),
	(311,385),
	(312,386),
	(313,387),
	(314,388),
	(315,389),
	(316,390),
	(317,391),
	(318,392),
	(319,393),
	(320,394),
	(321,395),
	(322,396),
	(323,397),
	(324,398),
	(325,399),
	(326,400),
	(327,401),
	(328,402),
	(329,403),
	(330,404),
	(331,405),
	(332,406),
	(333,407),
	(334,408),
	(335,409),
	(336,410),
	(337,411),
	(338,412),
	(339,413),
	(340,414),
	(341,415),
	(342,416),
	(343,417),
	(344,418),
	(345,419);

/*!40000 ALTER TABLE `rt_reference_document` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 rt_reference_grade
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rt_reference_grade`;

CREATE TABLE `rt_reference_grade` (
  `reference_id` int NOT NULL COMMENT '参考资料表ID',
  `grade_id` int NOT NULL COMMENT '年级信息表ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参考资料和年级信息关联表';

LOCK TABLES `rt_reference_grade` WRITE;
/*!40000 ALTER TABLE `rt_reference_grade` DISABLE KEYS */;

INSERT INTO `rt_reference_grade` (`reference_id`, `grade_id`)
VALUES
	(23,3),
	(24,4),
	(25,4),
	(26,4),
	(27,4),
	(28,4),
	(29,4),
	(30,4),
	(31,4),
	(32,4),
	(33,2),
	(34,2),
	(35,2),
	(36,2),
	(37,1),
	(38,1),
	(39,1),
	(40,1),
	(41,1),
	(42,1),
	(43,1),
	(44,1),
	(45,1),
	(46,1),
	(47,1),
	(48,1),
	(49,1),
	(50,1),
	(51,1),
	(52,1),
	(53,1),
	(54,1),
	(55,1),
	(56,1),
	(57,1),
	(58,1),
	(59,1),
	(60,1),
	(61,1),
	(62,1),
	(63,1),
	(64,1),
	(65,1),
	(66,1),
	(67,1),
	(68,1),
	(69,1),
	(70,1),
	(71,1),
	(72,1),
	(73,1),
	(74,1),
	(75,1),
	(76,1),
	(77,1),
	(78,1),
	(79,1),
	(80,1),
	(81,1),
	(82,1),
	(83,1),
	(84,1),
	(85,1),
	(86,1),
	(87,1),
	(88,1),
	(89,1),
	(90,1),
	(91,1),
	(92,1),
	(93,1),
	(94,1),
	(95,1),
	(96,1),
	(97,1),
	(98,1),
	(99,1),
	(100,1),
	(101,1),
	(102,1),
	(103,1),
	(104,1),
	(105,1),
	(106,1),
	(107,1),
	(108,1),
	(109,1),
	(110,1),
	(111,1),
	(112,1),
	(113,1),
	(114,1),
	(115,1),
	(116,1),
	(117,1),
	(118,1),
	(119,1),
	(120,1),
	(121,1),
	(122,1),
	(123,1),
	(124,1),
	(125,1),
	(126,1),
	(127,1),
	(128,1),
	(129,1),
	(130,1),
	(131,1),
	(132,1),
	(133,1),
	(134,1),
	(135,1),
	(136,1),
	(137,1),
	(138,1),
	(139,1),
	(140,3),
	(141,3),
	(142,3),
	(143,3),
	(144,3),
	(145,3),
	(146,3),
	(147,3),
	(148,3),
	(149,3),
	(150,3),
	(151,3),
	(152,3),
	(153,3),
	(154,3),
	(155,3),
	(156,3),
	(157,3),
	(158,3),
	(159,3),
	(160,3),
	(161,3),
	(162,3),
	(163,3),
	(164,3),
	(165,3),
	(166,3),
	(167,3),
	(168,3),
	(169,3),
	(170,3),
	(171,3),
	(172,3),
	(173,3),
	(174,3),
	(175,3),
	(176,3),
	(177,3),
	(178,3),
	(179,3),
	(180,3),
	(181,3),
	(182,3),
	(183,3),
	(184,3),
	(185,3),
	(186,3),
	(187,3),
	(188,3),
	(189,3),
	(190,3),
	(191,3),
	(192,3),
	(193,3),
	(194,3),
	(195,3),
	(196,3),
	(197,3),
	(198,3),
	(199,3),
	(200,3),
	(201,3),
	(202,3),
	(203,3),
	(204,3),
	(205,3),
	(206,3),
	(207,3),
	(208,3),
	(209,3),
	(210,3),
	(211,3),
	(212,3),
	(213,3),
	(214,3),
	(215,3),
	(216,3),
	(217,3),
	(218,3),
	(219,3),
	(220,3),
	(221,3),
	(222,3),
	(223,3),
	(224,3),
	(225,3),
	(226,3),
	(227,3),
	(228,3),
	(229,3),
	(230,3),
	(231,3),
	(232,3),
	(233,3),
	(234,3),
	(235,3),
	(236,3),
	(237,3),
	(238,3),
	(239,3),
	(240,3),
	(241,3),
	(242,3),
	(243,1),
	(244,1),
	(245,1),
	(246,1),
	(247,1),
	(248,1),
	(249,1),
	(250,1),
	(251,1),
	(252,1),
	(253,1),
	(254,1),
	(255,1),
	(256,1),
	(257,1),
	(258,1),
	(259,1),
	(260,1),
	(261,1),
	(262,1),
	(263,1),
	(264,1),
	(265,1),
	(266,1),
	(267,1),
	(268,1),
	(269,1),
	(270,1),
	(271,1),
	(272,1),
	(273,1),
	(274,1),
	(275,1),
	(276,1),
	(277,1),
	(278,1),
	(279,1),
	(280,1),
	(281,1),
	(282,1),
	(283,1),
	(284,1),
	(285,1),
	(286,1),
	(287,1),
	(288,1),
	(289,1),
	(290,1),
	(291,1),
	(292,1),
	(293,1),
	(294,1),
	(295,1),
	(296,1),
	(297,1),
	(298,1),
	(299,1),
	(300,1),
	(301,1),
	(302,1),
	(303,1),
	(304,1),
	(305,1),
	(306,1),
	(307,1),
	(308,1),
	(309,1),
	(310,1),
	(311,1),
	(312,1),
	(313,1),
	(314,1),
	(315,1),
	(316,1),
	(317,1),
	(318,1),
	(319,1),
	(320,1),
	(321,1),
	(322,1),
	(323,1),
	(324,1),
	(325,1),
	(326,1),
	(327,1),
	(328,1),
	(329,1),
	(330,1),
	(331,1),
	(332,1),
	(333,1),
	(334,1),
	(335,1),
	(336,1),
	(337,1),
	(338,1),
	(339,1),
	(340,1),
	(341,1),
	(342,1),
	(343,1),
	(344,1),
	(345,1);

/*!40000 ALTER TABLE `rt_reference_grade` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 rt_reference_subject
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rt_reference_subject`;

CREATE TABLE `rt_reference_subject` (
  `reference_id` int NOT NULL COMMENT '参考资料表ID',
  `subject_id` int NOT NULL COMMENT '学科信息表ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参考资料和学科信息关联表';

LOCK TABLES `rt_reference_subject` WRITE;
/*!40000 ALTER TABLE `rt_reference_subject` DISABLE KEYS */;

INSERT INTO `rt_reference_subject` (`reference_id`, `subject_id`)
VALUES
	(23,3),
	(24,1),
	(25,1),
	(26,1),
	(27,1),
	(28,1),
	(29,1),
	(30,1),
	(31,1),
	(32,1),
	(33,1),
	(34,1),
	(35,1),
	(36,1),
	(37,1),
	(38,1),
	(39,1),
	(40,1),
	(41,1),
	(42,1),
	(43,1),
	(44,1),
	(45,1),
	(46,1),
	(47,1),
	(48,1),
	(49,1),
	(50,1),
	(51,1),
	(52,1),
	(53,1),
	(54,1),
	(55,1),
	(56,1),
	(57,1),
	(58,1),
	(59,1),
	(60,1),
	(61,1),
	(62,1),
	(63,1),
	(64,1),
	(65,1),
	(66,1),
	(67,1),
	(68,1),
	(69,1),
	(70,1),
	(71,1),
	(72,1),
	(73,1),
	(74,1),
	(75,1),
	(76,1),
	(77,1),
	(78,1),
	(79,1),
	(80,1),
	(81,1),
	(82,1),
	(83,1),
	(84,1),
	(85,1),
	(86,1),
	(87,1),
	(88,1),
	(89,1),
	(90,1),
	(91,1),
	(92,1),
	(93,1),
	(94,1),
	(95,1),
	(96,1),
	(97,1),
	(98,1),
	(99,1),
	(100,1),
	(101,1),
	(102,1),
	(103,1),
	(104,1),
	(105,1),
	(106,1),
	(107,1),
	(108,1),
	(109,1),
	(110,1),
	(111,1),
	(112,1),
	(113,1),
	(114,1),
	(115,1),
	(116,1),
	(117,1),
	(118,1),
	(119,1),
	(120,1),
	(121,1),
	(122,1),
	(123,1),
	(124,1),
	(125,1),
	(126,1),
	(127,1),
	(128,1),
	(129,1),
	(130,1),
	(131,1),
	(132,1),
	(133,1),
	(134,1),
	(135,1),
	(136,1),
	(137,1),
	(138,1),
	(139,1),
	(140,1),
	(141,1),
	(142,1),
	(143,1),
	(144,1),
	(145,1),
	(146,1),
	(147,1),
	(148,1),
	(149,1),
	(150,1),
	(151,1),
	(152,1),
	(153,1),
	(154,1),
	(155,1),
	(156,1),
	(157,1),
	(158,1),
	(159,1),
	(160,1),
	(161,1),
	(162,1),
	(163,1),
	(164,1),
	(165,1),
	(166,1),
	(167,1),
	(168,1),
	(169,1),
	(170,1),
	(171,1),
	(172,1),
	(173,1),
	(174,1),
	(175,1),
	(176,1),
	(177,1),
	(178,1),
	(179,1),
	(180,1),
	(181,1),
	(182,1),
	(183,1),
	(184,1),
	(185,1),
	(186,1),
	(187,1),
	(188,1),
	(189,1),
	(190,1),
	(191,1),
	(192,1),
	(193,1),
	(194,1),
	(195,1),
	(196,1),
	(197,1),
	(198,1),
	(199,1),
	(200,1),
	(201,1),
	(202,1),
	(203,1),
	(204,1),
	(205,1),
	(206,1),
	(207,1),
	(208,1),
	(209,1),
	(210,1),
	(211,1),
	(212,1),
	(213,1),
	(214,1),
	(215,1),
	(216,1),
	(217,1),
	(218,1),
	(219,1),
	(220,1),
	(221,1),
	(222,1),
	(223,1),
	(224,1),
	(225,1),
	(226,1),
	(227,1),
	(228,1),
	(229,1),
	(230,1),
	(231,1),
	(232,1),
	(233,1),
	(234,1),
	(235,1),
	(236,1),
	(237,1),
	(238,1),
	(239,1),
	(240,1),
	(241,1),
	(242,1),
	(243,3),
	(244,3),
	(245,3),
	(246,3),
	(247,3),
	(248,3),
	(249,3),
	(250,3),
	(251,3),
	(252,3),
	(253,3),
	(254,3),
	(255,3),
	(256,3),
	(257,3),
	(258,3),
	(259,3),
	(260,3),
	(261,3),
	(262,3),
	(263,3),
	(264,3),
	(265,3),
	(266,3),
	(267,3),
	(268,3),
	(269,3),
	(270,3),
	(271,3),
	(272,3),
	(273,3),
	(274,3),
	(275,3),
	(276,3),
	(277,3),
	(278,3),
	(279,3),
	(280,3),
	(281,3),
	(282,3),
	(283,3),
	(284,3),
	(285,3),
	(286,3),
	(287,3),
	(288,3),
	(289,3),
	(290,3),
	(291,3),
	(292,3),
	(293,3),
	(294,3),
	(295,3),
	(296,3),
	(297,3),
	(298,3),
	(299,3),
	(300,3),
	(301,3),
	(302,3),
	(303,3),
	(304,3),
	(305,3),
	(306,3),
	(307,3),
	(308,3),
	(309,3),
	(310,3),
	(311,3),
	(312,3),
	(313,3),
	(314,3),
	(315,3),
	(316,3),
	(317,3),
	(318,3),
	(319,3),
	(320,3),
	(321,3),
	(322,3),
	(323,3),
	(324,3),
	(325,3),
	(326,3),
	(327,3),
	(328,3),
	(329,3),
	(330,3),
	(331,3),
	(332,3),
	(333,3),
	(334,3),
	(335,3),
	(336,3),
	(337,3),
	(338,3),
	(339,3),
	(340,3),
	(341,3),
	(342,3),
	(343,3),
	(344,3),
	(345,3);

/*!40000 ALTER TABLE `rt_reference_subject` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 rt_user_class
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rt_user_class`;

CREATE TABLE `rt_user_class` (
  `sys_user_id` bigint NOT NULL COMMENT '教师信息表ID',
  `tb_class_info_id` bigint NOT NULL COMMENT '班级信息表ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='教师和班级关系表';

LOCK TABLES `rt_user_class` WRITE;
/*!40000 ALTER TABLE `rt_user_class` DISABLE KEYS */;

INSERT INTO `rt_user_class` (`sys_user_id`, `tb_class_info_id`)
VALUES
	(1,2),
	(1,3),
	(100,4);

/*!40000 ALTER TABLE `rt_user_class` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;

INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`)
VALUES
	(1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2024-03-01 00:05:46','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),
	(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2024-03-01 00:05:46','',NULL,'初始化密码 123456'),
	(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2024-03-01 00:05:46','',NULL,'深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue'),
	(4,'账号自助-是否开启用户注册功能','sys.account.registerUser','true','Y','admin','2024-03-01 00:05:46','admin','2024-03-05 19:38:46','是否开启注册用户功能（true开启，false关闭）'),
	(5,'用户管理-密码字符范围','sys.account.chrtype','0','Y','admin','2024-03-01 00:05:46','',NULL,'默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）'),
	(6,'用户管理-初始密码修改策略','sys.account.initPasswordModify','0','Y','admin','2024-03-01 00:05:46','',NULL,'0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框'),
	(7,'用户管理-账号密码更新周期','sys.account.passwordValidateDays','0','Y','admin','2024-03-01 00:05:46','',NULL,'密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框'),
	(8,'主框架页-菜单导航显示风格','sys.index.menuStyle','default','Y','admin','2024-03-01 00:05:46','',NULL,'菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）'),
	(9,'主框架页-是否开启页脚','sys.index.footer','true','Y','admin','2024-03-01 00:05:46','',NULL,'是否开启底部页脚显示（true显示，false隐藏）'),
	(10,'主框架页-是否开启页签','sys.index.tagsView','true','Y','admin','2024-03-01 00:05:46','',NULL,'是否开启菜单多页签显示（true显示，false隐藏）'),
	(11,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2024-03-01 00:05:46','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_dept
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;

INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`)
VALUES
	(100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2024-03-01 00:05:45','',NULL),
	(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-03-01 00:05:45','',NULL),
	(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-03-01 00:05:45','',NULL),
	(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-03-01 00:05:45','',NULL),
	(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-03-01 00:05:45','',NULL),
	(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2024-03-01 00:05:45','',NULL),
	(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2024-03-01 00:05:45','',NULL),
	(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2024-03-01 00:05:45','',NULL),
	(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-03-01 00:05:45','',NULL),
	(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-03-01 00:05:45','',NULL);

/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_dict_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;

INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`)
VALUES
	(1,1,'男','0','sys_user_sex','','','Y','0','admin','2024-03-01 00:05:46','',NULL,'性别男'),
	(2,2,'女','1','sys_user_sex','','','N','0','admin','2024-03-01 00:05:46','',NULL,'性别女'),
	(3,3,'未知','2','sys_user_sex','','','N','0','admin','2024-03-01 00:05:46','',NULL,'性别未知'),
	(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2024-03-01 00:05:46','',NULL,'显示菜单'),
	(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2024-03-01 00:05:46','',NULL,'隐藏菜单'),
	(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2024-03-01 00:05:46','',NULL,'正常状态'),
	(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2024-03-01 00:05:46','',NULL,'停用状态'),
	(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2024-03-01 00:05:46','',NULL,'正常状态'),
	(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2024-03-01 00:05:46','',NULL,'停用状态'),
	(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2024-03-01 00:05:46','',NULL,'默认分组'),
	(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2024-03-01 00:05:46','',NULL,'系统分组'),
	(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2024-03-01 00:05:46','',NULL,'系统默认是'),
	(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2024-03-01 00:05:46','',NULL,'系统默认否'),
	(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2024-03-01 00:05:46','',NULL,'通知'),
	(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2024-03-01 00:05:46','',NULL,'公告'),
	(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2024-03-01 00:05:46','',NULL,'正常状态'),
	(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2024-03-01 00:05:46','',NULL,'关闭状态'),
	(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2024-03-01 00:05:46','',NULL,'其他操作'),
	(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2024-03-01 00:05:46','',NULL,'新增操作'),
	(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2024-03-01 00:05:46','',NULL,'修改操作'),
	(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2024-03-01 00:05:46','',NULL,'删除操作'),
	(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2024-03-01 00:05:46','',NULL,'授权操作'),
	(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2024-03-01 00:05:46','',NULL,'导出操作'),
	(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2024-03-01 00:05:46','',NULL,'导入操作'),
	(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2024-03-01 00:05:46','',NULL,'强退操作'),
	(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2024-03-01 00:05:46','',NULL,'生成操作'),
	(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2024-03-01 00:05:46','',NULL,'清空操作'),
	(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2024-03-01 00:05:46','',NULL,'正常状态'),
	(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2024-03-01 00:05:46','',NULL,'停用状态');

/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_dict_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;

INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`)
VALUES
	(1,'用户性别','sys_user_sex','0','admin','2024-03-01 00:05:46','',NULL,'用户性别列表'),
	(2,'菜单状态','sys_show_hide','0','admin','2024-03-01 00:05:46','',NULL,'菜单状态列表'),
	(3,'系统开关','sys_normal_disable','0','admin','2024-03-01 00:05:46','',NULL,'系统开关列表'),
	(4,'任务状态','sys_job_status','0','admin','2024-03-01 00:05:46','',NULL,'任务状态列表'),
	(5,'任务分组','sys_job_group','0','admin','2024-03-01 00:05:46','',NULL,'任务分组列表'),
	(6,'系统是否','sys_yes_no','0','admin','2024-03-01 00:05:46','',NULL,'系统是否列表'),
	(7,'通知类型','sys_notice_type','0','admin','2024-03-01 00:05:46','',NULL,'通知类型列表'),
	(8,'通知状态','sys_notice_status','0','admin','2024-03-01 00:05:46','',NULL,'通知状态列表'),
	(9,'操作类型','sys_oper_type','0','admin','2024-03-01 00:05:46','',NULL,'操作类型列表'),
	(10,'系统状态','sys_common_status','0','admin','2024-03-01 00:05:46','',NULL,'登录状态列表');

/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_job
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;

INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`)
VALUES
	(1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2024-03-01 00:05:46','',NULL,''),
	(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2024-03-01 00:05:46','',NULL,''),
	(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2024-03-01 00:05:46','',NULL,'');

/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_job_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';



# 转储表 sys_logininfor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;

INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`)
VALUES
	(100,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-01 00:06:35'),
	(101,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-03 21:53:11'),
	(102,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-03 22:01:41'),
	(103,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-04 20:29:04'),
	(104,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-04 20:39:57'),
	(105,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-04 21:19:07'),
	(106,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-04 21:39:59'),
	(107,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-04 21:42:53'),
	(108,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-04 21:53:53'),
	(109,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-05 19:37:12'),
	(110,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','退出成功','2024-03-05 19:37:22'),
	(111,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-05 19:38:30'),
	(112,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','退出成功','2024-03-05 19:38:48'),
	(113,'user1','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','注册成功','2024-03-05 19:39:22'),
	(114,'user1','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-05 19:39:28'),
	(115,'admin','127.0.0.1','内网IP','Safari','Mac OS X','0','登录成功','2024-03-05 19:39:48'),
	(116,'admin','127.0.0.1','内网IP','Safari','Mac OS X','0','登录成功','2024-03-05 19:42:52'),
	(117,'user1','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-05 19:43:07'),
	(118,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-05 20:21:37'),
	(119,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-05 20:34:30'),
	(120,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-05 21:39:15'),
	(121,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-05 21:51:12'),
	(122,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-05 21:53:13'),
	(123,'admin','127.0.0.1','内网IP','Safari','Mac OS X','0','登录成功','2024-03-05 21:56:23'),
	(124,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-05 22:18:06'),
	(125,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-05 22:24:49'),
	(126,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-05 22:29:01'),
	(127,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-06 19:05:36'),
	(128,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-06 19:07:07'),
	(129,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-06 19:12:56'),
	(130,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-06 19:27:45'),
	(131,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-06 19:44:19'),
	(132,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-06 20:15:39'),
	(133,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-06 21:01:21'),
	(134,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-06 21:05:32'),
	(135,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-07 19:18:38'),
	(136,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','退出成功','2024-03-07 19:19:00'),
	(137,'user1','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-07 19:19:04'),
	(138,'user1','127.0.0.1','内网IP','Safari','Mac OS X','0','登录成功','2024-03-07 19:19:34'),
	(139,'user1','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','退出成功','2024-03-07 19:19:40'),
	(140,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-07 19:19:40'),
	(141,'admin','127.0.0.1','内网IP','Safari','Mac OS X','0','登录成功','2024-03-07 19:23:36'),
	(142,'admin','127.0.0.1','内网IP','Safari','Mac OS X','0','退出成功','2024-03-07 19:25:00'),
	(143,'user1','127.0.0.1','内网IP','Safari','Mac OS X','0','登录成功','2024-03-07 19:25:08'),
	(144,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-07 19:36:40'),
	(145,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-07 19:44:27'),
	(146,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-07 20:50:39'),
	(147,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-07 20:54:26'),
	(148,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-07 21:29:55'),
	(149,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','退出成功','2024-03-07 21:30:00'),
	(150,'user1','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-07 21:30:10'),
	(151,'user1','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','退出成功','2024-03-07 21:30:19'),
	(152,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-07 21:30:35'),
	(153,'user1','127.0.0.1','内网IP','Safari','Mac OS X','0','登录成功','2024-03-07 21:32:20'),
	(154,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-07 21:45:26'),
	(155,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-08 21:42:02'),
	(156,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-11 20:06:24'),
	(157,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-11 21:11:21'),
	(158,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-14 19:22:08'),
	(159,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-14 21:44:16'),
	(160,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-16 19:06:43'),
	(161,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-16 19:22:37'),
	(162,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-16 19:32:10'),
	(163,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-16 19:49:53'),
	(164,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-16 20:19:20'),
	(165,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-16 20:26:19'),
	(166,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-16 20:47:00'),
	(167,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-20 21:33:52'),
	(168,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-20 21:37:36'),
	(169,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-20 21:49:50'),
	(170,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-20 21:52:34'),
	(171,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-27 22:17:59'),
	(172,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-03-27 22:19:57'),
	(173,'admin','127.0.0.1','内网IP','Safari','Mac OS X','0','登录成功','2024-04-19 21:12:33'),
	(174,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-04-19 21:14:07'),
	(175,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-04-19 21:24:42'),
	(176,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-04-19 22:04:56'),
	(177,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-04-20 13:41:30'),
	(178,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-04-20 13:49:26'),
	(179,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-04-20 14:07:55'),
	(180,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-04-20 14:09:51'),
	(181,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-04-20 14:10:42'),
	(182,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-04-20 16:34:22'),
	(183,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-04-20 17:54:04'),
	(184,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-18 12:31:21'),
	(185,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-18 13:35:53'),
	(186,'admin','127.0.0.1','内网IP','Safari','Mac OS X','0','登录成功','2024-05-18 15:09:58'),
	(187,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-18 19:43:44'),
	(188,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-19 08:38:01'),
	(189,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-20 18:20:05'),
	(190,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-20 18:26:57'),
	(191,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-20 18:28:16'),
	(192,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-20 18:28:39'),
	(193,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-20 18:32:09'),
	(194,'admin','127.0.0.1','内网IP','Safari','Mac OS X','0','登录成功','2024-05-20 18:33:11'),
	(195,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-20 18:42:25'),
	(196,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-20 18:42:58'),
	(197,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-21 18:04:06'),
	(198,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-21 18:27:14'),
	(199,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-21 18:47:38'),
	(200,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-22 19:18:29'),
	(201,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-22 19:22:28'),
	(202,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-22 20:10:41'),
	(203,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-22 21:06:20'),
	(204,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-23 21:12:06'),
	(205,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-23 21:16:14'),
	(206,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-23 21:54:46'),
	(207,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-23 22:36:58'),
	(208,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-23 22:49:59'),
	(209,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-24 18:25:48'),
	(210,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-24 18:42:15'),
	(211,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-24 18:52:32'),
	(212,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-24 19:08:53'),
	(213,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-24 19:24:20'),
	(214,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-24 19:34:01'),
	(215,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-24 19:48:16'),
	(216,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-24 19:51:39'),
	(217,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-24 20:00:01'),
	(218,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-24 20:23:39'),
	(219,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-24 20:34:22'),
	(220,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-24 20:52:31'),
	(221,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-24 21:21:03'),
	(222,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-26 14:40:25'),
	(223,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-26 20:55:46'),
	(224,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-27 21:05:17'),
	(225,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-27 21:13:12'),
	(226,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-27 21:13:38'),
	(227,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-27 21:14:07'),
	(228,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-27 21:30:13'),
	(229,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-27 21:46:57'),
	(230,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-27 22:28:23'),
	(231,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-27 22:34:17'),
	(232,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-05-27 22:39:17'),
	(233,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-06-10 16:07:04'),
	(234,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-06-10 16:36:14'),
	(235,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-06-10 16:54:25'),
	(236,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-08-25 22:29:06'),
	(237,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-08-27 22:50:57'),
	(238,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-08-27 22:53:28'),
	(239,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-08-27 22:56:33'),
	(240,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-09-06 20:39:48'),
	(241,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-09-06 20:55:40'),
	(242,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-09-06 20:56:50'),
	(243,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-09-06 21:08:26'),
	(244,'admin','127.0.0.1','内网IP','Chrome 12','Mac OS X','0','登录成功','2024-09-06 21:41:26');

/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2066 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;

INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`)
VALUES
	(1,'系统管理',0,1,'#','','M','0','1','','fa fa-gear','admin','2024-03-01 00:05:45','',NULL,'系统管理目录'),
	(2,'系统监控',0,2,'#','','M','0','1','','fa fa-video-camera','admin','2024-03-01 00:05:45','',NULL,'系统监控目录'),
	(3,'系统工具',0,3,'#','','M','0','1','','fa fa-bars','admin','2024-03-01 00:05:45','',NULL,'系统工具目录'),
	(4,'若依官网',0,4,'http://ruoyi.vip','menuBlank','C','0','1','','fa fa-location-arrow','admin','2024-03-01 00:05:45','',NULL,'若依官网地址'),
	(100,'用户管理',1,1,'/system/user','','C','0','1','system:user:view','fa fa-user-o','admin','2024-03-01 00:05:45','',NULL,'用户管理菜单'),
	(101,'角色管理',1,2,'/system/role','','C','0','1','system:role:view','fa fa-user-secret','admin','2024-03-01 00:05:45','',NULL,'角色管理菜单'),
	(102,'菜单管理',1,3,'/system/menu','','C','0','1','system:menu:view','fa fa-th-list','admin','2024-03-01 00:05:45','',NULL,'菜单管理菜单'),
	(103,'部门管理',1,4,'/system/dept','','C','0','1','system:dept:view','fa fa-outdent','admin','2024-03-01 00:05:45','',NULL,'部门管理菜单'),
	(104,'岗位管理',1,5,'/system/post','','C','0','1','system:post:view','fa fa-address-card-o','admin','2024-03-01 00:05:45','',NULL,'岗位管理菜单'),
	(105,'字典管理',1,6,'/system/dict','','C','0','1','system:dict:view','fa fa-bookmark-o','admin','2024-03-01 00:05:45','',NULL,'字典管理菜单'),
	(106,'参数设置',1,7,'/system/config','','C','0','1','system:config:view','fa fa-sun-o','admin','2024-03-01 00:05:45','',NULL,'参数设置菜单'),
	(107,'通知公告',1,8,'/system/notice','','C','0','1','system:notice:view','fa fa-bullhorn','admin','2024-03-01 00:05:45','',NULL,'通知公告菜单'),
	(108,'日志管理',1,9,'#','','M','0','1','','fa fa-pencil-square-o','admin','2024-03-01 00:05:45','',NULL,'日志管理菜单'),
	(109,'在线用户',2,1,'/monitor/online','','C','0','1','monitor:online:view','fa fa-user-circle','admin','2024-03-01 00:05:45','',NULL,'在线用户菜单'),
	(110,'定时任务',2,2,'/monitor/job','','C','0','1','monitor:job:view','fa fa-tasks','admin','2024-03-01 00:05:45','',NULL,'定时任务菜单'),
	(111,'数据监控',2,3,'/monitor/data','','C','0','1','monitor:data:view','fa fa-bug','admin','2024-03-01 00:05:45','',NULL,'数据监控菜单'),
	(112,'服务监控',2,4,'/monitor/server','','C','0','1','monitor:server:view','fa fa-server','admin','2024-03-01 00:05:45','',NULL,'服务监控菜单'),
	(113,'缓存监控',2,5,'/monitor/cache','','C','0','1','monitor:cache:view','fa fa-cube','admin','2024-03-01 00:05:45','',NULL,'缓存监控菜单'),
	(114,'表单构建',3,1,'/tool/build','','C','0','1','tool:build:view','fa fa-wpforms','admin','2024-03-01 00:05:45','',NULL,'表单构建菜单'),
	(115,'代码生成',3,2,'/tool/gen','','C','0','1','tool:gen:view','fa fa-code','admin','2024-03-01 00:05:45','',NULL,'代码生成菜单'),
	(116,'系统接口',3,3,'/tool/swagger','','C','0','1','tool:swagger:view','fa fa-gg','admin','2024-03-01 00:05:45','',NULL,'系统接口菜单'),
	(500,'操作日志',108,1,'/monitor/operlog','','C','0','1','monitor:operlog:view','fa fa-address-book','admin','2024-03-01 00:05:45','',NULL,'操作日志菜单'),
	(501,'登录日志',108,2,'/monitor/logininfor','','C','0','1','monitor:logininfor:view','fa fa-file-image-o','admin','2024-03-01 00:05:45','',NULL,'登录日志菜单'),
	(1000,'用户查询',100,1,'#','','F','0','1','system:user:list','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1001,'用户新增',100,2,'#','','F','0','1','system:user:add','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1002,'用户修改',100,3,'#','','F','0','1','system:user:edit','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1003,'用户删除',100,4,'#','','F','0','1','system:user:remove','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1004,'用户导出',100,5,'#','','F','0','1','system:user:export','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1005,'用户导入',100,6,'#','','F','0','1','system:user:import','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1006,'重置密码',100,7,'#','','F','0','1','system:user:resetPwd','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1007,'角色查询',101,1,'#','','F','0','1','system:role:list','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1008,'角色新增',101,2,'#','','F','0','1','system:role:add','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1009,'角色修改',101,3,'#','','F','0','1','system:role:edit','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1010,'角色删除',101,4,'#','','F','0','1','system:role:remove','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1011,'角色导出',101,5,'#','','F','0','1','system:role:export','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1012,'菜单查询',102,1,'#','','F','0','1','system:menu:list','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1013,'菜单新增',102,2,'#','','F','0','1','system:menu:add','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1014,'菜单修改',102,3,'#','','F','0','1','system:menu:edit','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1015,'菜单删除',102,4,'#','','F','0','1','system:menu:remove','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1016,'部门查询',103,1,'#','','F','0','1','system:dept:list','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1017,'部门新增',103,2,'#','','F','0','1','system:dept:add','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1018,'部门修改',103,3,'#','','F','0','1','system:dept:edit','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1019,'部门删除',103,4,'#','','F','0','1','system:dept:remove','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1020,'岗位查询',104,1,'#','','F','0','1','system:post:list','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1021,'岗位新增',104,2,'#','','F','0','1','system:post:add','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1022,'岗位修改',104,3,'#','','F','0','1','system:post:edit','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1023,'岗位删除',104,4,'#','','F','0','1','system:post:remove','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1024,'岗位导出',104,5,'#','','F','0','1','system:post:export','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1025,'字典查询',105,1,'#','','F','0','1','system:dict:list','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1026,'字典新增',105,2,'#','','F','0','1','system:dict:add','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1027,'字典修改',105,3,'#','','F','0','1','system:dict:edit','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1028,'字典删除',105,4,'#','','F','0','1','system:dict:remove','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1029,'字典导出',105,5,'#','','F','0','1','system:dict:export','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1030,'参数查询',106,1,'#','','F','0','1','system:config:list','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1031,'参数新增',106,2,'#','','F','0','1','system:config:add','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1032,'参数修改',106,3,'#','','F','0','1','system:config:edit','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1033,'参数删除',106,4,'#','','F','0','1','system:config:remove','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1034,'参数导出',106,5,'#','','F','0','1','system:config:export','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1035,'公告查询',107,1,'#','','F','0','1','system:notice:list','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1036,'公告新增',107,2,'#','','F','0','1','system:notice:add','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1037,'公告修改',107,3,'#','','F','0','1','system:notice:edit','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1038,'公告删除',107,4,'#','','F','0','1','system:notice:remove','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1039,'操作查询',500,1,'#','','F','0','1','monitor:operlog:list','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1040,'操作删除',500,2,'#','','F','0','1','monitor:operlog:remove','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1041,'详细信息',500,3,'#','','F','0','1','monitor:operlog:detail','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1042,'日志导出',500,4,'#','','F','0','1','monitor:operlog:export','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1043,'登录查询',501,1,'#','','F','0','1','monitor:logininfor:list','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1044,'登录删除',501,2,'#','','F','0','1','monitor:logininfor:remove','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1045,'日志导出',501,3,'#','','F','0','1','monitor:logininfor:export','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1046,'账户解锁',501,4,'#','','F','0','1','monitor:logininfor:unlock','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1047,'在线查询',109,1,'#','','F','0','1','monitor:online:list','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1048,'批量强退',109,2,'#','','F','0','1','monitor:online:batchForceLogout','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1049,'单条强退',109,3,'#','','F','0','1','monitor:online:forceLogout','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1050,'任务查询',110,1,'#','','F','0','1','monitor:job:list','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1051,'任务新增',110,2,'#','','F','0','1','monitor:job:add','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1052,'任务修改',110,3,'#','','F','0','1','monitor:job:edit','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1053,'任务删除',110,4,'#','','F','0','1','monitor:job:remove','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1054,'状态修改',110,5,'#','','F','0','1','monitor:job:changeStatus','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1055,'任务详细',110,6,'#','','F','0','1','monitor:job:detail','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1056,'任务导出',110,7,'#','','F','0','1','monitor:job:export','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1057,'生成查询',115,1,'#','','F','0','1','tool:gen:list','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1058,'生成修改',115,2,'#','','F','0','1','tool:gen:edit','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1059,'生成删除',115,3,'#','','F','0','1','tool:gen:remove','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1060,'预览代码',115,4,'#','','F','0','1','tool:gen:preview','#','admin','2024-03-01 00:05:45','',NULL,''),
	(1061,'生成代码',115,5,'#','','F','0','1','tool:gen:code','#','admin','2024-03-01 00:05:45','',NULL,''),
	(2000,'我的',0,5,'#','menuItem','M','0','1',NULL,'fa fa-user','admin','2024-03-04 21:09:59','',NULL,''),
	(2013,'班级信息',2000,1,'/classinfo/classinfo','','C','0','1','classinfo:classinfo:view','#','admin','2024-03-04 21:21:12','',NULL,'班级信息菜单'),
	(2014,'班级信息查询',2013,1,'#','','F','0','1','classinfo:classinfo:list','#','admin','2024-03-04 21:21:12','',NULL,''),
	(2015,'班级信息新增',2013,2,'#','','F','0','1','classinfo:classinfo:add','#','admin','2024-03-04 21:21:12','',NULL,''),
	(2016,'班级信息修改',2013,3,'#','','F','0','1','classinfo:classinfo:edit','#','admin','2024-03-04 21:21:12','',NULL,''),
	(2017,'班级信息删除',2013,4,'#','','F','0','1','classinfo:classinfo:remove','#','admin','2024-03-04 21:21:12','',NULL,''),
	(2018,'班级信息导出',2013,5,'#','','F','0','1','classinfo:classinfo:export','#','admin','2024-03-04 21:21:12','',NULL,''),
	(2020,'学生信息',2000,2,'/studentinfo/studentinfo','menuItem','C','0','1','studentinfo:studentinfo:view','#','admin','2024-03-05 20:28:44','admin','2024-03-05 20:34:46','学生信息菜单'),
	(2021,'学生信息查询',2020,1,'#','','F','0','1','studentinfo:studentinfo:list','#','admin','2024-03-05 20:28:44','',NULL,''),
	(2022,'学生信息新增',2020,2,'#','','F','0','1','studentinfo:studentinfo:add','#','admin','2024-03-05 20:28:44','',NULL,''),
	(2023,'学生信息修改',2020,3,'#','','F','0','1','studentinfo:studentinfo:edit','#','admin','2024-03-05 20:28:44','',NULL,''),
	(2024,'学生信息删除',2020,4,'#','','F','0','1','studentinfo:studentinfo:remove','#','admin','2024-03-05 20:28:44','',NULL,''),
	(2025,'学生信息导出',2020,5,'#','','F','0','1','studentinfo:studentinfo:export','#','admin','2024-03-05 20:28:44','',NULL,''),
	(2026,'学生信息导入',2020,6,'#','menuItem','F','0','1','studentinfo:studentinfo:import','#','admin','2024-03-07 21:32:05','',NULL,''),
	(2027,'资料管理',0,6,'/reference/reference','menuItem','C','0','1','reference:reference:view','fa fa-folder-open','admin','2024-03-11 21:12:44','admin','2024-05-26 14:42:32',''),
	(2028,'学科管理',2040,1,'/subject/subject_info','menuItem','C','0','1','subject:subject_info:view','#','admin','2024-05-24 18:39:35','admin','2024-05-26 14:42:46','学科信息菜单'),
	(2029,'学科信息查询',2028,1,'#','','F','0','1','subject:subject_info:list','#','admin','2024-05-24 18:39:35','',NULL,''),
	(2030,'学科信息新增',2028,2,'#','','F','0','1','subject:subject_info:add','#','admin','2024-05-24 18:39:35','',NULL,''),
	(2031,'学科信息修改',2028,3,'#','','F','0','1','subject:subject_info:edit','#','admin','2024-05-24 18:39:35','',NULL,''),
	(2032,'学科信息删除',2028,4,'#','','F','0','1','subject:subject_info:remove','#','admin','2024-05-24 18:39:35','',NULL,''),
	(2033,'学科信息导出',2028,5,'#','','F','0','1','subject:subject_info:export','#','admin','2024-05-24 18:39:35','',NULL,''),
	(2034,'年级管理',2040,1,'/grade/grade_info','menuItem','C','0','1','grade:grade_info:view','#','admin','2024-05-24 18:40:22','admin','2024-05-26 14:42:55','年级信息菜单'),
	(2035,'年级信息查询',2034,1,'#','','F','0','1','grade:grade_info:list','#','admin','2024-05-24 18:40:22','',NULL,''),
	(2036,'年级信息新增',2034,2,'#','','F','0','1','grade:grade_info:add','#','admin','2024-05-24 18:40:22','',NULL,''),
	(2037,'年级信息修改',2034,3,'#','','F','0','1','grade:grade_info:edit','#','admin','2024-05-24 18:40:22','',NULL,''),
	(2038,'年级信息删除',2034,4,'#','','F','0','1','grade:grade_info:remove','#','admin','2024-05-24 18:40:22','',NULL,''),
	(2039,'年级信息导出',2034,5,'#','','F','0','1','grade:grade_info:export','#','admin','2024-05-24 18:40:22','',NULL,''),
	(2040,'教师助手',0,6,'#','menuItem','M','0','1',NULL,'fa fa-thumbs-o-up','admin','2024-05-24 18:43:19','',NULL,''),
	(2041,'微信',0,7,'#','menuItem','M','0','1',NULL,'fa fa-user-o','admin','2024-08-27 22:58:03','',NULL,''),
	(2042,'课程',2041,1,'/barracudaweixin/table','','C','0','1','barracudaweixin:table:view','#','admin','2024-09-06 20:50:08','',NULL,'课程菜单'),
	(2043,'课程查询',2042,1,'#','','F','0','1','barracudaweixin:table:list','#','admin','2024-09-06 20:50:08','',NULL,''),
	(2044,'课程新增',2042,2,'#','','F','0','1','barracudaweixin:table:add','#','admin','2024-09-06 20:50:08','',NULL,''),
	(2045,'课程修改',2042,3,'#','','F','0','1','barracudaweixin:table:edit','#','admin','2024-09-06 20:50:08','',NULL,''),
	(2046,'课程删除',2042,4,'#','','F','0','1','barracudaweixin:table:remove','#','admin','2024-09-06 20:50:08','',NULL,''),
	(2047,'课程导出',2042,5,'#','','F','0','1','barracudaweixin:table:export','#','admin','2024-09-06 20:50:08','',NULL,''),
	(2048,'课程布置',2041,1,'/barracudaweixin/arrangement','','C','0','1','barracudaweixin:arrangement:view','#','admin','2024-09-06 21:42:01','',NULL,'课程布置菜单'),
	(2049,'课程布置查询',2048,1,'#','','F','0','1','barracudaweixin:arrangement:list','#','admin','2024-09-06 21:42:01','',NULL,''),
	(2050,'课程布置新增',2048,2,'#','','F','0','1','barracudaweixin:arrangement:add','#','admin','2024-09-06 21:42:01','',NULL,''),
	(2051,'课程布置修改',2048,3,'#','','F','0','1','barracudaweixin:arrangement:edit','#','admin','2024-09-06 21:42:01','',NULL,''),
	(2052,'课程布置删除',2048,4,'#','','F','0','1','barracudaweixin:arrangement:remove','#','admin','2024-09-06 21:42:01','',NULL,''),
	(2053,'课程布置导出',2048,5,'#','','F','0','1','barracudaweixin:arrangement:export','#','admin','2024-09-06 21:42:01','',NULL,''),
	(2054,'课节',2041,1,'/barracudaweixin/period','','C','0','1','barracudaweixin:period:view','#','admin','2024-09-06 21:42:12','',NULL,'课节菜单'),
	(2055,'课节查询',2054,1,'#','','F','0','1','barracudaweixin:period:list','#','admin','2024-09-06 21:42:12','',NULL,''),
	(2056,'课节新增',2054,2,'#','','F','0','1','barracudaweixin:period:add','#','admin','2024-09-06 21:42:12','',NULL,''),
	(2057,'课节修改',2054,3,'#','','F','0','1','barracudaweixin:period:edit','#','admin','2024-09-06 21:42:12','',NULL,''),
	(2058,'课节删除',2054,4,'#','','F','0','1','barracudaweixin:period:remove','#','admin','2024-09-06 21:42:12','',NULL,''),
	(2059,'课节导出',2054,5,'#','','F','0','1','barracudaweixin:period:export','#','admin','2024-09-06 21:42:12','',NULL,''),
	(2060,'学科',2041,1,'/barracudaweixin/subject','','C','0','1','barracudaweixin:subject:view','#','admin','2024-09-06 21:42:20','',NULL,'学科菜单'),
	(2061,'学科查询',2060,1,'#','','F','0','1','barracudaweixin:subject:list','#','admin','2024-09-06 21:42:20','',NULL,''),
	(2062,'学科新增',2060,2,'#','','F','0','1','barracudaweixin:subject:add','#','admin','2024-09-06 21:42:20','',NULL,''),
	(2063,'学科修改',2060,3,'#','','F','0','1','barracudaweixin:subject:edit','#','admin','2024-09-06 21:42:20','',NULL,''),
	(2064,'学科删除',2060,4,'#','','F','0','1','barracudaweixin:subject:remove','#','admin','2024-09-06 21:42:20','',NULL,''),
	(2065,'学科导出',2060,5,'#','','F','0','1','barracudaweixin:subject:export','#','admin','2024-09-06 21:42:20','',NULL,'');

/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_notice
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;

INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`)
VALUES
	(1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2024-03-01 00:05:46','',NULL,'管理员'),
	(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2024-03-01 00:05:46','',NULL,'管理员');

/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_oper_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;

INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`)
VALUES
	(100,'个人信息',2,'com.barracuda.web.controller.system.SysProfileController.update()','POST',1,'admin','研发部门','/system/user/profile/update','127.0.0.1','内网IP','{\"id\":[\"\"],\"userName\":[\"Barracuda\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"Barracuda@163.com\"],\"sex\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-01 00:10:05',67),
	(101,'代码生成',6,'com.barracuda.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/teacher/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"tb_class_info,rt_user_class\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-04 21:06:46',139),
	(102,'代码生成',2,'com.barracuda.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/teacher/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"1\"],\"tableName\":[\"rt_user_class\"],\"tableComment\":[\"教师和班级关系表\"],\"className\":[\"UserClassRelation\"],\"functionAuthor\":[\"barracuda\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"教师信息表ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"sysUserId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"班级信息表ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"tbClassInfoId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.barracuda.barracudateacher.class_info\"],\"moduleName\":[\"class_info\"],\"businessName\":[\"class\"],\"functionName\":[\"教师和班级关系\"],\"params[parentMenuId]\":[\"2\"],\"params[parentMenuName]\":[\"系统监控\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-04 21:08:50',7),
	(103,'菜单管理',1,'com.barracuda.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/teacher/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"我的\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-user\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-04 21:09:59',16),
	(104,'代码生成',2,'com.barracuda.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/teacher/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"1\"],\"tableName\":[\"rt_user_class\"],\"tableComment\":[\"教师和班级关系表\"],\"className\":[\"UserClassRelation\"],\"functionAuthor\":[\"barracuda\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"教师信息表ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"sysUserId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"班级信息表ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"tbClassInfoId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.barracuda.barracudateacher.class_info\"],\"moduleName\":[\"userclass\"],\"businessName\":[\"userclass\"],\"functionName\":[\"教师和班级关系\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"我的\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-04 21:10:59',29),
	(105,'代码生成',2,'com.barracuda.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/teacher/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"2\"],\"tableName\":[\"tb_class_info\"],\"tableComment\":[\"班级信息表\"],\"className\":[\"ClassInfo\"],\"functionAuthor\":[\"barracuda\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"3\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"4\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建者\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"5\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"6\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"7\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"8\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"删除标识 0=未删除,1=已删除\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"delFlag\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"9\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"备注\"],\"columns[6].javaType\":[\"String\"],\"columns[6].javaField\":[\"remark\"],\"colu','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-04 21:11:44',39),
	(106,'代码生成',8,'com.barracuda.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/teacher/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":[\"rt_user_class,tb_class_info\"]}',NULL,0,NULL,'2024-03-04 21:11:49',158),
	(107,'代码生成',8,'com.barracuda.generator.controller.GenController.download()','GET',1,'admin','研发部门','/teacher/tool/gen/download/rt_user_class','127.0.0.1','内网IP','\"rt_user_class\"',NULL,0,NULL,'2024-03-04 21:13:05',77),
	(108,'代码生成',8,'com.barracuda.generator.controller.GenController.download()','GET',1,'admin','研发部门','/teacher/tool/gen/download/tb_class_info','127.0.0.1','内网IP','\"tb_class_info\"',NULL,0,NULL,'2024-03-04 21:13:08',67),
	(109,'班级信息',1,'com.barracuda.barracudateacher.class_info.controller.ClassInfoController.addSave()','POST',1,'admin','研发部门','/teacher/classinfo/classinfo/add','127.0.0.1','内网IP','{\"delFlag\":[\"1\"],\"className\":[\"1年1班\"],\"remark\":[\"备注\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-04 21:26:59',65),
	(110,'班级信息',2,'com.barracuda.barracudateacher.class_info.controller.ClassInfoController.editSave()','POST',1,'admin','研发部门','/teacher/classinfo/classinfo/edit','127.0.0.1','内网IP','{\"id\":[\"1\"],\"className\":[\"1年1班2\"],\"remark\":[\"备注1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-04 21:27:06',6),
	(111,'班级信息',2,'com.barracuda.barracudateacher.class_info.controller.ClassInfoController.editSave()','POST',1,'admin','研发部门','/teacher/classinfo/classinfo/edit','127.0.0.1','内网IP','{\"id\":[\"1\"],\"className\":[\"1年1班\"],\"remark\":[\"备注\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-04 21:27:10',6),
	(112,'班级信息',3,'com.barracuda.barracudateacher.class_info.controller.ClassInfoController.remove()','POST',1,'admin','研发部门','/teacher/classinfo/classinfo/remove','127.0.0.1','内网IP','{\"ids\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-04 21:43:00',65),
	(113,'班级信息',1,'com.barracuda.barracudateacher.class_info.controller.ClassInfoController.addSave()','POST',1,'admin','研发部门','/teacher/classinfo/classinfo/add','127.0.0.1','内网IP','{\"delFlag\":[\"1\"],\"className\":[\"1年1班\"],\"remark\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-04 21:43:06',18),
	(114,'班级信息',1,'com.barracuda.barracudateacher.class_info.controller.ClassInfoController.addSave()','POST',1,'admin','研发部门','/teacher/classinfo/classinfo/add','127.0.0.1','内网IP','{\"delFlag\":[\"1\"],\"className\":[\"1年2班\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-04 21:54:05',74),
	(115,'参数管理',2,'com.barracuda.web.controller.system.SysConfigController.editSave()','POST',1,'admin','研发部门','/teacher/system/config/edit','127.0.0.1','内网IP','{\"configId\":[\"4\"],\"configName\":[\"账号自助-是否开启用户注册功能\"],\"configKey\":[\"sys.account.registerUser\"],\"configValue\":[\"true\"],\"configType\":[\"Y\"],\"remark\":[\"是否开启注册用户功能（true开启，false关闭）\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-05 19:38:46',33),
	(116,'角色管理',2,'com.barracuda.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/teacher/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,113,3,114,115,1057,1058,1059,1060,1061,116,4,2000,2013,2014,2015,2016,2017,2018\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-05 19:40:08',46),
	(117,'用户管理',4,'com.barracuda.web.controller.system.SysUserController.insertAuthRole()','POST',1,'admin','研发部门','/teacher/system/user/authRole/insertAuthRole','127.0.0.1','内网IP','{\"userId\":[\"100\"],\"roleIds\":[\"2\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-05 19:40:33',9),
	(118,'角色管理',2,'com.barracuda.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/teacher/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2000,2013,2014,2015,2016,2017,2018\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-05 19:40:55',21),
	(119,'班级信息',1,'com.barracuda.barracudateacher.class_info.controller.ClassInfoController.addSave()','POST',1,'user1',NULL,'/teacher/classinfo/classinfo/add','127.0.0.1','内网IP','{\"delFlag\":[\"1\"],\"className\":[\"1年16班\"],\"remark\":[\"我爱我班级\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-05 19:43:31',68),
	(120,'代码生成',6,'com.barracuda.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/teacher/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"tb_student_info,rt_class_student\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-05 20:22:12',107),
	(121,'代码生成',2,'com.barracuda.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/teacher/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"3\"],\"tableName\":[\"rt_class_student\"],\"tableComment\":[\"班级和学生关系表\"],\"className\":[\"ClassStudentRelation\"],\"functionAuthor\":[\"barracuda\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"学生信息表ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"tbStudentInfoId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"班级信息表ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"tbClassInfoId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.barracuda.barracudateacher.student_info\"],\"moduleName\":[\"studentclassrelation\"],\"businessName\":[\"studentclassrelation\"],\"functionName\":[\"班级和学生关系\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"我的\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-05 20:24:06',6),
	(122,'代码生成',2,'com.barracuda.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/teacher/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"4\"],\"tableName\":[\"tb_student_info\"],\"tableComment\":[\"学生信息表\"],\"className\":[\"StudentInfo\"],\"functionAuthor\":[\"barracuda\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"13\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"14\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建者\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"15\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"16\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"17\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"18\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"删除标识 0=未删除,1=已删除\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"delFlag\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"19\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"备注\"],\"columns[6].javaType\":[\"String\"],\"columns[6].javaField\":[\"rem','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-05 20:25:13',27),
	(123,'代码生成',8,'com.barracuda.generator.controller.GenController.download()','GET',1,'admin','研发部门','/teacher/tool/gen/download/rt_class_student','127.0.0.1','内网IP','\"rt_class_student\"',NULL,0,NULL,'2024-03-05 20:25:20',101),
	(124,'代码生成',8,'com.barracuda.generator.controller.GenController.download()','GET',1,'admin','研发部门','/teacher/tool/gen/download/tb_student_info','127.0.0.1','内网IP','\"tb_student_info\"',NULL,0,NULL,'2024-03-05 20:25:23',78),
	(125,'菜单管理',2,'com.barracuda.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/teacher/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2020\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"学生信息\"],\"url\":[\"/studentinfo/studentinfo\"],\"target\":[\"menuItem\"],\"perms\":[\"studentinfo:studentinfo:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-05 20:34:46',33),
	(126,'学生信息',1,'com.barracuda.barracudateacher.student_info.controller.StudentInfoController.addSave()','POST',1,'admin','研发部门','/teacher/studentinfo/studentinfo/add','127.0.0.1','内网IP','{\"classId\":[\"2\"],\"studentName\":[\"王力宏\"],\"studentNum\":[\"1\"],\"studentGender\":[\"0\"],\"studentTag\":[\"1\"],\"remark\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-06 21:06:24',36481),
	(127,'角色管理',2,'com.barracuda.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/teacher/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2000,2013,2014,2015,2016,2017,2018,2020,2021,2022,2023,2024,2025\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-07 19:19:58',39),
	(128,'学生信息',1,'com.barracuda.barracudateacher.student_info.controller.StudentInfoController.addSave()','POST',1,'user1',NULL,'/teacher/studentinfo/studentinfo/add','127.0.0.1','内网IP','{\"classId\":[\"4\"],\"studentName\":[\"赵晓明\"],\"studentNum\":[\"1\"],\"studentGender\":[\"0\"],\"studentTag\":[\"zxm\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-07 19:37:35',69),
	(129,'学生信息',5,'com.barracuda.barracudateacher.student_info.controller.StudentInfoController.export()','POST',1,'admin','研发部门','/teacher/studentinfo/studentinfo/export','127.0.0.1','内网IP','{\"classId\":[\"4\"],\"studentName\":[\"\"],\"studentNum\":[\"\"],\"studentTag\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}',NULL,1,'导出Excel失败，请联系网站管理员！','2024-03-07 19:39:33',1241),
	(130,'学生信息',5,'com.barracuda.barracudateacher.student_info.controller.StudentInfoController.export()','POST',1,'admin','研发部门','/teacher/studentinfo/studentinfo/export','127.0.0.1','内网IP','{\"classId\":[\"2\"],\"studentName\":[\"\"],\"studentNum\":[\"\"],\"studentTag\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}',NULL,1,'导出Excel失败，请联系网站管理员！','2024-03-07 19:39:55',217),
	(131,'学生信息',5,'com.barracuda.barracudateacher.student_info.controller.StudentInfoController.export()','POST',1,'admin','研发部门','/teacher/studentinfo/studentinfo/export','127.0.0.1','内网IP','{\"classId\":[\"2\"],\"studentName\":[\"\"],\"studentNum\":[\"\"],\"studentTag\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}','{\"msg\":\"a879dadf-a356-48f0-bac2-02e554e91959_学生信息数据.xlsx\",\"code\":0}',0,NULL,'2024-03-07 19:44:35',704),
	(132,'菜单管理',1,'com.barracuda.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/teacher/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"2020\"],\"menuType\":[\"F\"],\"menuName\":[\"学生信息导入\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"studentinfo:studentinfo:import\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-07 21:32:05',33),
	(133,'角色管理',2,'com.barracuda.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/teacher/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2000,2013,2014,2015,2016,2017,2018,2020,2021,2022,2023,2024,2025,2026\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-07 21:32:17',34),
	(134,'学生信息',3,'com.barracuda.barracudateacher.student_info.controller.StudentInfoController.remove()','POST',1,'admin','研发部门','/teacher/studentinfo/studentinfo/remove','127.0.0.1','内网IP','{\"ids\":[\"2\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-07 21:41:43',5),
	(135,'学生信息',5,'com.barracuda.barracudateacher.student_info.controller.StudentInfoController.export()','POST',1,'admin','研发部门','/teacher/studentinfo/studentinfo/export','127.0.0.1','内网IP','{\"classId\":[\"4\"],\"studentName\":[\"\"],\"studentNum\":[\"\"],\"studentGender\":[\"\"],\"studentTag\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}','{\"msg\":\"bcba7d90-cea8-449d-a92f-70b9bbca9e46_学生信息数据.xlsx\",\"code\":0}',0,NULL,'2024-03-07 21:42:11',553),
	(136,'学生信息',5,'com.barracuda.barracudateacher.student_info.controller.StudentInfoController.export()','POST',1,'admin','研发部门','/teacher/studentinfo/studentinfo/export','127.0.0.1','内网IP','{\"classId\":[\"2\"],\"studentName\":[\"\"],\"studentNum\":[\"\"],\"studentGender\":[\"\"],\"studentTag\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}','{\"msg\":\"9cdc64a8-acde-4395-b9fe-75f1cad47f51_学生信息数据.xlsx\",\"code\":0}',0,NULL,'2024-03-07 21:45:37',718),
	(137,'学生信息',5,'com.barracuda.barracudateacher.student_info.controller.StudentInfoController.export()','POST',1,'admin','研发部门','/teacher/studentinfo/studentinfo/export','127.0.0.1','内网IP','{\"classId\":[\"4\"],\"studentName\":[\"\"],\"studentNum\":[\"\"],\"studentGender\":[\"\"],\"studentTag\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}','{\"msg\":\"15a4429b-d915-4868-b87a-7dcbaf1844a4_学生信息数据.xlsx\",\"code\":0}',0,NULL,'2024-03-07 21:45:50',61),
	(138,'学生信息',2,'com.barracuda.barracudateacher.student_info.controller.StudentInfoController.editSave()','POST',1,'admin','研发部门','/teacher/studentinfo/studentinfo/edit','127.0.0.1','内网IP','{\"id\":[\"3\"],\"studentName\":[\"迟明宇\"],\"studentNum\":[\"1\"],\"studentGender\":[\"0\"],\"studentTag\":[\"cmy\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-07 21:52:33',9),
	(139,'学生信息',2,'com.barracuda.barracudateacher.student_info.controller.StudentInfoController.editSave()','POST',1,'admin','研发部门','/teacher/studentinfo/studentinfo/edit','127.0.0.1','内网IP','{\"id\":[\"7\"],\"studentName\":[\"崔嘉钰\"],\"studentNum\":[\"5\"],\"studentGender\":[\"1\"],\"studentTag\":[\"cjy\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-07 21:52:46',14),
	(140,'代码生成',6,'com.barracuda.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/teacher/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"ref_document,ref_reference\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-11 21:01:22',154),
	(141,'代码生成',2,'com.barracuda.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/teacher/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"5\"],\"tableName\":[\"ref_document\"],\"tableComment\":[\"文档表\"],\"className\":[\"Document\"],\"functionAuthor\":[\"barracuda\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"23\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"24\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建者\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"25\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"26\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"27\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"28\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"删除标识 0=未删除,1=已删除\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"delFlag\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"29\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"备注\"],\"columns[6].javaType\":[\"String\"],\"columns[6].javaField\":[\"remark\"],\"c','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-11 21:02:29',15),
	(142,'代码生成',2,'com.barracuda.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/teacher/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"6\"],\"tableName\":[\"ref_reference\"],\"tableComment\":[\"参考资料表\"],\"className\":[\"Reference\"],\"functionAuthor\":[\"barracuda\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"33\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"34\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建者\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"35\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"36\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"37\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"38\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"删除标识 0=未删除,1=已删除\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"delFlag\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"39\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"备注\"],\"columns[6].javaType\":[\"String\"],\"columns[6].javaField\":[\"remark\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-11 21:02:57',24),
	(143,'代码生成',8,'com.barracuda.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/teacher/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":[\"ref_document,ref_reference\"]}',NULL,0,NULL,'2024-03-11 21:03:14',180),
	(144,'代码生成',6,'com.barracuda.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/teacher/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"rt_reference_document\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-11 21:03:31',22),
	(145,'代码生成',2,'com.barracuda.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/teacher/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"7\"],\"tableName\":[\"rt_reference_document\"],\"tableComment\":[\"参考资料和文档关系表\"],\"className\":[\"ReferenceDocumentRelation\"],\"functionAuthor\":[\"barracuda\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"44\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"参考资料表ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"refReferenceId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"45\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"文档表ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"refDocumentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.barracuda.barracudateacher.reference\"],\"moduleName\":[\"reference\"],\"businessName\":[\"referencedocumentrelation\"],\"functionName\":[\"参考资料和文档关系\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"我的\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-11 21:04:41',11),
	(146,'代码生成',8,'com.barracuda.generator.controller.GenController.download()','GET',1,'admin','研发部门','/teacher/tool/gen/download/rt_reference_document','127.0.0.1','内网IP','\"rt_reference_document\"',NULL,0,NULL,'2024-03-11 21:04:44',92),
	(147,'菜单管理',1,'com.barracuda.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/teacher/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"参考资料\"],\"url\":[\"/reference/reference\"],\"target\":[\"menuItem\"],\"perms\":[\"reference:reference:view\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-folder-open\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-11 21:12:44',32),
	(148,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"bt\"],\"referenceTag\":[\"bq\"],\"referenceContent\":[\"\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-11 21:32:36',11),
	(149,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"bt\"],\"referenceTag\":[\"bq\"],\"referenceContent\":[\"\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-11 21:32:37',6),
	(150,'参考资料',3,'com.barracuda.barracudateacher.reference.controller.ReferenceController.remove()','POST',1,'admin','研发部门','/teacher/reference/reference/remove','127.0.0.1','内网IP','{\"ids\":[\"1,2\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-11 21:32:49',19),
	(151,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"bt\"],\"referenceTag\":[\"bq\"],\"referenceContent\":[\"<blockquote><p>饮用</p></blockquote><div class=\\\"open-source-software-card-break-all__6bQYM\\\" style=\\\"word-break: break-all; font-family: Arial, sans-serif;\\\"><span style=\\\"color: rgb(51, 51, 51);\\\">基于SpringBoot的</span><font color=\\\"#000000\\\" style=\\\"background-color: rgb(255, 255, 0);\\\"><span style=\\\"font-family: &quot;Arial Black&quot;;\\\">权限管理系统 易读易</span></font><font color=\\\"#333333\\\">懂、界面简<span style=\\\"font-size: 24px;\\\">洁美观。 核心技术采用Spri</span>ng、MyBatis、Shiro没有任何其它重度依赖。直接运行即可用 平台简介 一直想做一款后台管理系...</font></div><div style=\\\"color: rgb(51, 51, 51); font-family: Arial, sans-serif;\\\">Gitee指数为91，超过99%的开源项目</div><table class=\\\"table table-bordered\\\"><tbody><tr><td>1</td><td>5</td><td><br></td></tr><tr><td>2</td><td>4</td><td>22</td></tr><tr><td>3</td><td><br></td><td><br></td></tr><tr><td><br></td><td>4</td><td><p><br></p><p><br></p></td></tr></tbody></table><div style=\\\"color: rgb(51, 51, 51); font-family: Arial, sans-serif;\\\"><img src=\\\"http://localhost:8081/teacher/profile/upload/2024/03/11/eddc30bf8a37f0d8072964f2dd3fb7a6_20240311213507A002.png\\\" style=\\\"width: 25%;\\\"></div><div style=\\\"color: rgb(51, 51, 51); font-family: Arial, sans-serif;\\\">1111111</div>\"],\"remark\":[\"ff\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-11 21:35:34',7),
	(152,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"标题1\"],\"referenceContent\":[\"<p>标题1<br></p>\"],\"files\":[\"[object FileList]\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-16 19:23:23',52),
	(153,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"标题2\"],\"referenceContent\":[\"<p>标题2<br></p>\"],\"files\":[\"[object FileList]\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-16 19:25:29',9196),
	(154,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"标题3\"],\"referenceContent\":[\"<p>标题3<br></p>\"],\"files\":[\"[object FileList]\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-16 19:35:33',180382),
	(155,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"标题4\"],\"referenceContent\":[\"<p>标题4<br></p>\"],\"files\":[\"[object FileList]\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-16 20:09:11',1137159),
	(156,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"标题5\"],\"referenceContent\":[\"<p>标题5<br></p>\"],\"files\":[\"[object FileList]\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-16 20:20:11',28177),
	(157,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"标题6\"],\"referenceContent\":[\"<p>标题6<br></p>\"],\"files\":[\"[object FileList]\"]}',NULL,1,'\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'document_type\' at row 1\n### The error may exist in file [/Users/zhanghaoming/workspace/barracuda/teacherHelper/target/classes/mapper/document/DocumentMapper.xml]\n### The error may involve com.barracuda.barracudateacher.reference.mapper.DocumentMapper.insertDocument-Inline\n### The error occurred while setting parameters\n### SQL: insert into ref_document          ( create_time,                                                                 document_type,             document_size,             document_address,             document_name )           values ( ?,                                                                 ?,             ?,             ?,             ? )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'document_type\' at row 1\n; Data truncation: Data too long for column \'document_type\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'document_type\' at row 1','2024-03-16 20:26:59',109),
	(158,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"标题6\"],\"referenceContent\":[\"<p>标题6<br></p>\"],\"files\":[\"[object FileList]\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-16 20:30:43',7585),
	(159,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"标题7\"],\"referenceContent\":[\"<p>标题7<br></p>\"],\"files\":[\"[object FileList]\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-16 20:34:38',30620),
	(160,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"1\"],\"referenceContent\":[\"<p>1</p>\"],\"files\":[\"[object FileList]\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-16 20:58:27',6031),
	(161,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"bt\"],\"referenceContent\":[\"<p>111</p>\"],\"files\":[\"[object FileList]\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-16 20:59:35',8),
	(162,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"111\"],\"referenceContent\":[\"<p>111</p>\"],\"files\":[\"[object FileList]\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-20 21:46:13',72),
	(163,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"12\"],\"referenceContent\":[\"<p>12<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/03/20/WechatIMG41074_20240320215730A001.jpg\\\" style=\\\"width: 25%;\\\"></p><table class=\\\"table table-bordered\\\"><tbody><tr><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td></tr></tbody></table><p><br></p>\"],\"files\":[\"[object FileList]\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-20 21:57:43',74),
	(164,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"13\"],\"referenceContent\":[\"<p>13<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/03/20/WechatIMG41074_20240320220431A004.jpg\\\" style=\\\"width: 25%;\\\"></p>\"],\"files\":[\"[object FileList]\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-03-20 22:04:36',9),
	(165,'参考资料',3,'com.barracuda.barracudateacher.reference.controller.ReferenceController.remove()','POST',1,'admin','研发部门','/teacher/reference/reference/remove','127.0.0.1','内网IP','{\"ids\":[\"16,15,14,13,12\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-04-19 22:11:02',103),
	(166,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"1\"],\"referenceContent\":[\"<p>111<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/04/20/team_20240420164126A003.png\\\" style=\\\"width: 200px;\\\"></p>\"],\"files\":[\"[object File],[object File]\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-04-20 16:41:34',59),
	(167,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"2\"],\"referenceContent\":[\"<p>2<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/04/20/team_active_20240420164238A004.png\\\" style=\\\"width: 200px;\\\"></p>\"],\"files\":[\"[object File],[object File]\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-04-20 16:42:46',4880),
	(168,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"3\"],\"referenceContent\":[\"<p>3</p>\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-04-20 17:08:20',5919),
	(169,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"4\"],\"referenceContent\":[\"<p>4</p>\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-04-20 17:09:46',11880),
	(170,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"time\"],\"referenceContent\":[\"time\\r\\n                    \"],\"documentIds\":[\"90,91\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-23 21:55:46',23006),
	(171,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"time1\"],\"referenceContent\":[\"111111\"],\"documentIds\":[\"94\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-23 22:00:36',2849),
	(172,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"22\"],\"referenceTitle\":[\"time12\"],\"referenceContent\":[\"111111\"],\"documentIds\":[\"94\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-23 22:37:09',63),
	(173,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"22\"],\"referenceTitle\":[\"time1211\"],\"referenceContent\":[\"111111\"],\"documentIds\":[\"94\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-23 22:37:16',15),
	(174,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"22\"],\"referenceTitle\":[\"time1211\"],\"referenceContent\":[\"111111\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-23 22:37:45',9),
	(175,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"12芳芳大的\"],\"referenceContent\":[\"<p>非法顺丰啥地方啊 安抚对方<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/05/23/Xnip2023-10-15_08-33-10_20240523224532A001.jpg\\\" style=\\\"width: 1068px;\\\">f f芳芳分</p>\"],\"documentIds\":[\"95,96,97\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-23 22:45:45',22),
	(176,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"23\"],\"referenceTitle\":[\"12芳芳大的\"],\"referenceContent\":[\"<p>非法顺丰啥地方啊 安抚对方<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/05/23/Xnip2023-10-15_08-33-10_20240523224532A001.jpg\\\" style=\\\"width: 1068px;\\\">f f芳芳分11111</p>\"],\"documentIds\":[\"95,96,97\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-23 22:45:55',17),
	(177,'参考资料',5,'com.barracuda.barracudateacher.reference.controller.ReferenceController.export()','POST',1,'admin','研发部门','/teacher/reference/reference/export','127.0.0.1','内网IP','{\"referenceTitle\":[\"\"],\"orderByColumn\":[\"id\"],\"isAsc\":[\"desc\"]}','{\"msg\":\"b8927808-6eab-4d79-a35f-5910735b538a_参考资料数据.xlsx\",\"code\":0}',0,NULL,'2024-05-23 22:50:17',1179),
	(178,'代码生成',6,'com.barracuda.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/teacher/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"tb_subject_info,tb_grade_info\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 18:33:21',127),
	(179,'代码生成',2,'com.barracuda.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/teacher/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"8\"],\"tableName\":[\"tb_grade_info\"],\"tableComment\":[\"年级信息表\"],\"className\":[\"GradeInfo\"],\"functionAuthor\":[\"barracuda\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"46\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"47\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建者\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"48\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"49\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"50\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"51\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"删除标识 0=未删除,1=已删除\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"delFlag\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"52\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"备注\"],\"columns[6].javaType\":[\"String\"],\"columns[6].javaField\":[\"remark\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 18:35:31',13),
	(180,'代码生成',2,'com.barracuda.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/teacher/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"9\"],\"tableName\":[\"tb_subject_info\"],\"tableComment\":[\"学科信息表\"],\"className\":[\"SubjectInfo\"],\"functionAuthor\":[\"barracuda\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"54\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"55\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建者\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"56\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"57\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"58\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"59\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"删除标识 0=未删除,1=已删除\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"delFlag\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"60\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"备注\"],\"columns[6].javaType\":[\"String\"],\"columns[6].javaField\":[\"rem','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 18:36:28',22),
	(181,'代码生成',2,'com.barracuda.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/teacher/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"8\"],\"tableName\":[\"tb_grade_info\"],\"tableComment\":[\"年级信息表\"],\"className\":[\"GradeInfo\"],\"functionAuthor\":[\"barracuda\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"46\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"47\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建者\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"48\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"49\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"50\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"51\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"删除标识 0=未删除,1=已删除\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"delFlag\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"52\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"备注\"],\"columns[6].javaType\":[\"String\"],\"columns[6].javaField\":[\"remark\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 18:36:39',30),
	(182,'代码生成',2,'com.barracuda.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/teacher/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"8\"],\"tableName\":[\"tb_grade_info\"],\"tableComment\":[\"年级信息表\"],\"className\":[\"GradeInfo\"],\"functionAuthor\":[\"barracuda\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"46\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"47\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建者\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"48\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"49\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"50\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"51\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"删除标识 0=未删除,1=已删除\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"delFlag\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"52\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"备注\"],\"columns[6].javaType\":[\"String\"],\"columns[6].javaField\":[\"remark\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 18:36:46',29),
	(183,'代码生成',8,'com.barracuda.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/teacher/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":[\"tb_grade_info,tb_subject_info\"]}',NULL,0,NULL,'2024-05-24 18:37:02',181),
	(184,'菜单管理',1,'com.barracuda.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/teacher/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"教师助手\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-thumbs-o-up\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 18:43:19',31),
	(185,'菜单管理',2,'com.barracuda.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/teacher/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2028\"],\"parentId\":[\"2040\"],\"menuType\":[\"C\"],\"menuName\":[\"学科信息\"],\"url\":[\"/subject/subject_info\"],\"target\":[\"menuItem\"],\"perms\":[\"subject:subject_info:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 18:44:18',12),
	(186,'菜单管理',2,'com.barracuda.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/teacher/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2034\"],\"parentId\":[\"2040\"],\"menuType\":[\"C\"],\"menuName\":[\"年级信息\"],\"url\":[\"/grade/grade_info\"],\"target\":[\"menuItem\"],\"perms\":[\"grade:grade_info:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 18:44:29',20),
	(187,'学科信息',1,'com.barracuda.barracudateacher.subject.controller.SubjectInfoController.addSave()','POST',1,'admin','研发部门','/teacher/subject/subject_info/add','127.0.0.1','内网IP','{\"subjectName\":[\"语文\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 18:56:00',23),
	(188,'学科信息',1,'com.barracuda.barracudateacher.subject.controller.SubjectInfoController.addSave()','POST',1,'admin','研发部门','/teacher/subject/subject_info/add','127.0.0.1','内网IP','{\"subjectName\":[\"数学\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 18:59:41',4),
	(189,'学科信息',1,'com.barracuda.barracudateacher.subject.controller.SubjectInfoController.addSave()','POST',1,'admin','研发部门','/teacher/subject/subject_info/add','127.0.0.1','内网IP','{\"subjectName\":[\"英语\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 18:59:46',6),
	(190,'学科信息',1,'com.barracuda.barracudateacher.subject.controller.SubjectInfoController.addSave()','POST',1,'admin','研发部门','/teacher/subject/subject_info/add','127.0.0.1','内网IP','{\"subjectName\":[\"体育\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 18:59:55',5),
	(191,'年级信息',1,'com.barracuda.barracudateacher.grade.controller.GradeInfoController.addSave()','POST',1,'admin','研发部门','/teacher/grade/grade_info/add','127.0.0.1','内网IP','{\"gradeName\":[\"一年级\"],\"sort\":[\"1.111\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 19:09:08',60),
	(192,'年级信息',2,'com.barracuda.barracudateacher.grade.controller.GradeInfoController.editSave()','POST',1,'admin','研发部门','/teacher/grade/grade_info/edit','127.0.0.1','内网IP','{\"id\":[\"1\"],\"gradeName\":[\"一年级\"],\"sort\":[\"1.12\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 19:09:33',5),
	(193,'学科信息',1,'com.barracuda.barracudateacher.subject.controller.SubjectInfoController.addSave()','POST',1,'admin','研发部门','/teacher/subject/subject_info/add','127.0.0.1','内网IP','{\"subjectName\":[\"音乐\"],\"sort\":[\"1\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 19:12:37',7),
	(194,'学科信息',2,'com.barracuda.barracudateacher.subject.controller.SubjectInfoController.editSave()','POST',1,'admin','研发部门','/teacher/subject/subject_info/edit','127.0.0.1','内网IP','{\"id\":[\"1\"],\"subjectName\":[\"语文\"],\"sort\":[\"1\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 19:12:48',5),
	(195,'年级信息',1,'com.barracuda.barracudateacher.grade.controller.GradeInfoController.addSave()','POST',1,'admin','研发部门','/teacher/grade/grade_info/add','127.0.0.1','内网IP','{\"gradeName\":[\"二年级\"],\"sort\":[\"2\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 19:13:00',6),
	(196,'年级信息',1,'com.barracuda.barracudateacher.grade.controller.GradeInfoController.addSave()','POST',1,'admin','研发部门','/teacher/grade/grade_info/add','127.0.0.1','内网IP','{\"gradeName\":[\"三年级\"],\"sort\":[\"3\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 19:13:07',6),
	(197,'年级信息',1,'com.barracuda.barracudateacher.grade.controller.GradeInfoController.addSave()','POST',1,'admin','研发部门','/teacher/grade/grade_info/add','127.0.0.1','内网IP','{\"gradeName\":[\"四年级\"],\"sort\":[\"4\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 19:13:13',5),
	(198,'年级信息',1,'com.barracuda.barracudateacher.grade.controller.GradeInfoController.addSave()','POST',1,'admin','研发部门','/teacher/grade/grade_info/add','127.0.0.1','内网IP','{\"gradeName\":[\"五年级\"],\"sort\":[\"5\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 19:13:21',6),
	(199,'年级信息',1,'com.barracuda.barracudateacher.grade.controller.GradeInfoController.addSave()','POST',1,'admin','研发部门','/teacher/grade/grade_info/add','127.0.0.1','内网IP','{\"gradeName\":[\"六年级\"],\"sort\":[\"6\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 19:13:29',5),
	(200,'代码生成',6,'com.barracuda.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/teacher/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"rt_reference_grade,rt_reference_subject\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 19:24:27',128),
	(201,'代码生成',2,'com.barracuda.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/teacher/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"10\"],\"tableName\":[\"rt_reference_grade\"],\"tableComment\":[\"参考资料和年级信息关联表\"],\"className\":[\"ReferenceGradeRelation\"],\"functionAuthor\":[\"barracuda\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"62\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"参考资料表ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"referenceId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"63\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"年级信息表ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"gradeId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.barracuda.barracudateacher.reference\"],\"moduleName\":[\"ReferenceGradeRelation\"],\"businessName\":[\"ReferenceGradeRelation\"],\"functionName\":[\"参考资料和年级信息关联\"],\"params[parentMenuId]\":[\"1\"],\"params[parentMenuName]\":[\"系统管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 19:26:31',7),
	(202,'代码生成',2,'com.barracuda.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/teacher/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"11\"],\"tableName\":[\"rt_reference_subject\"],\"tableComment\":[\"参考资料和学科信息关联表\"],\"className\":[\"ReferenceSubjectRelation\"],\"functionAuthor\":[\"barracuda\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"64\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"参考资料表ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"referenceId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].isRequired\":[\"1\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"65\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学科信息表ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"subjectId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.barracuda.system\"],\"moduleName\":[\"ReferenceSubjectRelation\"],\"businessName\":[\"ReferenceSubjectRelation\"],\"functionName\":[\"参考资料和学科信息关联\"],\"params[parentMenuId]\":[\"1\"],\"params[parentMenuName]\":[\"系统管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 19:26:59',14),
	(203,'代码生成',8,'com.barracuda.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/teacher/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":[\"rt_reference_grade,rt_reference_subject\"]}',NULL,0,NULL,'2024-05-24 19:27:06',151),
	(204,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"23\"],\"referenceTitle\":[\"12芳芳大的\"],\"referenceContent\":[\"<p>非法顺丰啥地方啊 安抚对方<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/05/23/Xnip2023-10-15_08-33-10_20240523224532A001.jpg\\\" style=\\\"width: 1068px;\\\">f f芳芳分11111</p>\"],\"subjectId\":[\"2\"],\"documentIds\":[\"95,96,97\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 19:51:58',9794),
	(205,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"23\"],\"referenceTitle\":[\"12芳芳大的\"],\"referenceContent\":[\"<p>非法顺丰啥地方啊 安抚对方<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/05/23/Xnip2023-10-15_08-33-10_20240523224532A001.jpg\\\" style=\\\"width: 1068px;\\\">f f芳芳分11111</p>\"],\"subjectId\":[\"1\"],\"documentIds\":[\"95,96,97\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 20:00:13',66),
	(206,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"23\"],\"referenceTitle\":[\"12芳芳大的\"],\"referenceContent\":[\"<p>非法顺丰啥地方啊 安抚对方<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/05/23/Xnip2023-10-15_08-33-10_20240523224532A001.jpg\\\" style=\\\"width: 1068px;\\\">f f芳芳分11111</p>\"],\"subjectId\":[\"2\"],\"gradeId\":[\"2\"],\"documentIds\":[\"95,96,97\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 20:23:49',69),
	(207,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"23\"],\"referenceTitle\":[\"12芳芳大的\"],\"referenceContent\":[\"<p>非法顺丰啥地方啊 安抚对方<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/05/23/Xnip2023-10-15_08-33-10_20240523224532A001.jpg\\\" style=\\\"width: 1068px;\\\">f f芳芳分11111</p>\"],\"subjectId\":[\"4\",\"1\"],\"documentIds\":[\"95,96,97\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 20:34:35',69),
	(208,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"23\"],\"referenceTitle\":[\"12芳芳大的\"],\"referenceContent\":[\"<p>非法顺丰啥地方啊 安抚对方<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/05/23/Xnip2023-10-15_08-33-10_20240523224532A001.jpg\\\" style=\\\"width: 1068px;\\\">f f芳芳分11111</p>\"],\"subjectId\":[\"5\",\"1\"],\"documentIds\":[\"95,96,97\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 20:34:48',27),
	(209,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"23\"],\"referenceTitle\":[\"12芳芳大的\"],\"referenceContent\":[\"<p>非法顺丰啥地方啊 安抚对方<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/05/23/Xnip2023-10-15_08-33-10_20240523224532A001.jpg\\\" style=\\\"width: 1068px;\\\">f f芳芳分11111</p>\"],\"subjectId\":[\"5\",\"3\"],\"documentIds\":[\"95,96,97\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 20:36:35',5877),
	(210,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"23\"],\"referenceTitle\":[\"12芳芳大的\"],\"referenceContent\":[\"<p>非法顺丰啥地方啊 安抚对方<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/05/23/Xnip2023-10-15_08-33-10_20240523224532A001.jpg\\\" style=\\\"width: 1068px;\\\">f f芳芳分11111</p>\"],\"subjectId\":[\"4\",\"1\"],\"documentIds\":[\"95,96,97\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 20:38:37',54233),
	(211,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"23\"],\"referenceTitle\":[\"12芳芳大的\"],\"referenceContent\":[\"<p>非法顺丰啥地方啊 安抚对方<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/05/23/Xnip2023-10-15_08-33-10_20240523224532A001.jpg\\\" style=\\\"width: 1068px;\\\">f f芳芳分11111</p>\"],\"subjectId\":[\"2\"],\"gradeId\":[\"2\"],\"documentIds\":[\"95,96,97\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 20:41:03',6179),
	(212,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"23\"],\"referenceTitle\":[\"12芳芳大的\"],\"referenceContent\":[\"<p>非法顺丰啥地方啊 安抚对方<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/05/23/Xnip2023-10-15_08-33-10_20240523224532A001.jpg\\\" style=\\\"width: 1068px;\\\">f f芳芳分11111</p>\"],\"subjectId\":[\"\"],\"gradeId\":[\"3\"],\"documentIds\":[\"95,96,97\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 20:41:12',25),
	(213,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"23\"],\"referenceTitle\":[\"12芳芳大的\"],\"referenceContent\":[\"<p>非法顺丰啥地方啊 安抚对方<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/05/23/Xnip2023-10-15_08-33-10_20240523224532A001.jpg\\\" style=\\\"width: 1068px;\\\">f f芳芳分11111</p>\"],\"subjectId\":[\"3\"],\"gradeId\":[\"3\"],\"documentIds\":[\"95,96,97\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 20:45:52',26),
	(214,'参考资料',2,'com.barracuda.barracudateacher.reference.controller.ReferenceController.editSave()','POST',1,'admin','研发部门','/teacher/reference/reference/edit','127.0.0.1','内网IP','{\"id\":[\"23\"],\"referenceTitle\":[\"12芳芳大的\"],\"referenceContent\":[\"<p>非法顺丰啥地方啊 安抚对方f f芳芳分11111</p>\"],\"subjectId\":[\"3\"],\"gradeId\":[\"3\"],\"documentIds\":[\"95,96,97\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-24 21:16:28',72),
	(215,'菜单管理',2,'com.barracuda.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/teacher/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2027\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"资料管理\"],\"url\":[\"/reference/reference\"],\"target\":[\"menuItem\"],\"perms\":[\"reference:reference:view\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-folder-open\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-26 14:42:32',37),
	(216,'菜单管理',2,'com.barracuda.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/teacher/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2028\"],\"parentId\":[\"2040\"],\"menuType\":[\"C\"],\"menuName\":[\"学科管理\"],\"url\":[\"/subject/subject_info\"],\"target\":[\"menuItem\"],\"perms\":[\"subject:subject_info:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-26 14:42:46',9),
	(217,'菜单管理',2,'com.barracuda.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/teacher/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2034\"],\"parentId\":[\"2040\"],\"menuType\":[\"C\"],\"menuName\":[\"年级管理\"],\"url\":[\"/grade/grade_info\"],\"target\":[\"menuItem\"],\"perms\":[\"grade:grade_info:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-26 14:42:55',14),
	(218,'参考资料',1,'com.barracuda.barracudateacher.reference.controller.ReferenceController.addSave()','POST',1,'admin','研发部门','/teacher/reference/reference/add','127.0.0.1','内网IP','{\"referenceTitle\":[\"12芳芳大的11\"],\"referenceContent\":[\"<p>123123<img src=\\\"http://localhost:8081/teacher/profile/upload/2024/05/27/Xnip2023-10-15_08-26-17_20240527213031A001.jpg\\\" style=\\\"width: 1069px;\\\">fffff</p>\"],\"subjectId\":[\"1\"],\"gradeId\":[\"4\"],\"documentIds\":[\"98\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-05-27 21:30:50',73),
	(219,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"wx_user\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-08-27 22:54:22',104),
	(220,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','POST',1,'admin','研发部门','/tool/gen/remove','127.0.0.1','内网IP','{\"ids\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-08-27 22:56:42',81),
	(221,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"wx_user\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-08-27 22:56:45',70),
	(222,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"微信\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-user-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-08-27 22:58:03',9),
	(223,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"2\"],\"tableName\":[\"wx_user\"],\"tableComment\":[\"微信用户表\"],\"className\":[\"WxUser\"],\"functionAuthor\":[\"hm\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"4\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"5\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"openId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"6\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.barracuda.barracudaweixin\"],\"moduleName\":[\"barracudaweixin\"],\"businessName\":[\"user\"],\"functionName\":[\"微信用户\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2041\"],\"params[parentMenuName]\":[\"微信\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-08-27 22:58:50',18),
	(224,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/wx_user','127.0.0.1','内网IP','\"wx_user\"',NULL,0,NULL,'2024-08-27 22:58:54',139),
	(225,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"2\"],\"tableName\":[\"wx_user\"],\"tableComment\":[\"微信用户表\"],\"className\":[\"WxUser\"],\"functionAuthor\":[\"hm\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"4\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"5\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"openId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"6\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.barracuda.barracudaweixin.user\"],\"moduleName\":[\"barracudaweixin\"],\"businessName\":[\"user\"],\"functionName\":[\"微信用户\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2041\"],\"params[parentMenuName]\":[\"微信\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-08-27 23:00:43',24),
	(226,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/wx_user','127.0.0.1','内网IP','\"wx_user\"',NULL,0,NULL,'2024-08-27 23:00:58',56),
	(227,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"gd_table\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-09-06 20:40:11',144),
	(228,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"3\"],\"tableName\":[\"gd_table\"],\"tableComment\":[\"课程表表\"],\"className\":[\"Table\"],\"functionAuthor\":[\"hm\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"7\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"8\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建者\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"9\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"10\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"11\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"12\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"删除标识 0=未删除,1=已删除\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"delFlag\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"13\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"备注\"],\"columns[6].javaType\":[\"String\"],\"columns[6].javaField\":[\"remark\"],\"columns[6].isInse','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-09-06 20:43:12',23),
	(229,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"3\"],\"tableName\":[\"gd_table\"],\"tableComment\":[\"课程表表\"],\"className\":[\"Table\"],\"functionAuthor\":[\"hm\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"7\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"8\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建者\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"9\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"10\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"11\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"12\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"删除标识 0=未删除,1=已删除\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"delFlag\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"13\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"备注\"],\"columns[6].javaType\":[\"String\"],\"columns[6].javaField\":[\"remark\"],\"columns[6].isInse','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-09-06 20:43:44',29),
	(230,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":[\"gd_table\"]}',NULL,0,NULL,'2024-09-06 20:43:52',123),
	(231,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"gd_table_arrangement,gd_period,gd_subject\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-09-06 21:08:58',185),
	(232,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"4\"],\"tableName\":[\"gd_period\"],\"tableComment\":[\"课节表\"],\"className\":[\"Period\"],\"functionAuthor\":[\"hm\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"16\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"17\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"创建者\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"createBy\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"18\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"19\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"更新者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"updateBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"20\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"更新时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"updateTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"21\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"删除标识 0=未删除,1=已删除\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"delFlag\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"22\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"备注\"],\"columns[6].javaType\":[\"String\"],\"columns[6].javaField\":[\"remark\"],\"columns[6].is','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-09-06 21:09:51',20),
	(233,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"5\"],\"tableName\":[\"gd_subject\"],\"tableComment\":[\"学科表\"],\"className\":[\"Subject\"],\"functionAuthor\":[\"hm\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"26\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"27\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"28\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"是否为系统内置(1:是，0:否)\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"isSystem\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"29\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"wxUserId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"30\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"31\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"删除标志（0代表存在 2代表删除）\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"delFlag\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-09-06 21:10:16',24),
	(234,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"6\"],\"tableName\":[\"gd_table_arrangement\"],\"tableComment\":[\"课程表布置表\"],\"className\":[\"TableArrangement\"],\"functionAuthor\":[\"hm\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"32\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"33\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"课程表id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"tableId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"34\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"subjectId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"35\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"weekIndex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"36\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"lessonIndex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.barracuda.barracudaweixin.garden.table_arrangement\"],\"moduleName\":[\"barracudaweixin\"],\"businessName\":[\"arrangement\"],\"functionName\":[\"课程布置\"]','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2024-09-06 21:10:48',31),
	(235,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":[\"gd_period,gd_subject,gd_table_arrangement\"]}',NULL,0,NULL,'2024-09-06 21:11:03',240);

/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;

INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`)
VALUES
	(1,'ceo','董事长',1,'0','admin','2024-03-01 00:05:45','',NULL,''),
	(2,'se','项目经理',2,'0','admin','2024-03-01 00:05:45','',NULL,''),
	(3,'hr','人力资源',3,'0','admin','2024-03-01 00:05:45','',NULL,''),
	(4,'user','普通员工',4,'0','admin','2024-03-01 00:05:45','',NULL,'');

/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;

INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`)
VALUES
	(1,'超级管理员','admin',1,'1','0','0','admin','2024-03-01 00:05:45','',NULL,'超级管理员'),
	(2,'普通角色','common',2,'2','0','0','admin','2024-03-01 00:05:45','admin','2024-03-07 21:32:17','普通角色');

/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_role_dept
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;

INSERT INTO `sys_role_dept` (`role_id`, `dept_id`)
VALUES
	(2,100),
	(2,101),
	(2,105);

/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_role_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`)
VALUES
	(2,2000),
	(2,2013),
	(2,2014),
	(2,2015),
	(2,2016),
	(2,2017),
	(2,2018),
	(2,2020),
	(2,2021),
	(2,2022),
	(2,2023),
	(2,2024),
	(2,2025),
	(2,2026);

/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;

INSERT INTO `sys_user` (`user_id`, `dept_id`, `login_name`, `user_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `salt`, `status`, `del_flag`, `login_ip`, `login_date`, `pwd_update_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`)
VALUES
	(1,103,'admin','Barracuda','00','Barracuda@163.com','15888888888','1','','29c67a30398638269fe600f73a054934','111111','0','0','127.0.0.1','2024-09-06 21:41:27','2024-03-01 00:05:45','admin','2024-03-01 00:05:45','','2024-09-06 21:41:26','管理员'),
	(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','8e6d98b90472783cc73c17047ddccf36','222222','0','0','127.0.0.1','2024-03-01 00:05:45','2024-03-01 00:05:45','admin','2024-03-01 00:05:45','',NULL,'测试员'),
	(100,NULL,'user1','user1','01','','','0','','bf6df66ab1f9bb6dc2c3e5c5c88526b1','ef11fa','0','0','127.0.0.1','2024-03-07 21:32:20','2024-03-05 19:39:23','','2024-03-05 19:39:22','','2024-03-07 21:32:20',NULL);

/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_user_online
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_user_online`;

CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='在线用户记录';



# 转储表 sys_user_post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;

INSERT INTO `sys_user_post` (`user_id`, `post_id`)
VALUES
	(1,1),
	(2,2);

/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 sys_user_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;

INSERT INTO `sys_user_role` (`user_id`, `role_id`)
VALUES
	(1,1),
	(2,2),
	(100,2);

/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 tb_class_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_class_info`;

CREATE TABLE `tb_class_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint DEFAULT NULL COMMENT '删除标识 0=未删除,1=已删除',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `class_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '班级名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='班级信息表';

LOCK TABLES `tb_class_info` WRITE;
/*!40000 ALTER TABLE `tb_class_info` DISABLE KEYS */;

INSERT INTO `tb_class_info` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`, `class_name`)
VALUES
	(2,'','2024-03-04 21:43:07','',NULL,1,'1','1年1班'),
	(3,'','2024-03-04 21:54:06','',NULL,1,'','1年2班'),
	(4,'','2024-03-05 19:43:31','',NULL,1,'我爱我班级','1年16班');

/*!40000 ALTER TABLE `tb_class_info` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 tb_grade_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_grade_info`;

CREATE TABLE `tb_grade_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint DEFAULT NULL COMMENT '删除标识 0=未删除,1=已删除',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `grade_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '年级名称',
  `sort` double DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='年级信息表';

LOCK TABLES `tb_grade_info` WRITE;
/*!40000 ALTER TABLE `tb_grade_info` DISABLE KEYS */;

INSERT INTO `tb_grade_info` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`, `grade_name`, `sort`)
VALUES
	(1,'','2024-05-24 19:09:08','','2024-05-24 19:09:34',NULL,'','一年级',1.12),
	(2,'','2024-05-24 19:13:01','',NULL,NULL,'','二年级',2),
	(3,'','2024-05-24 19:13:08','',NULL,NULL,'','三年级',3),
	(4,'','2024-05-24 19:13:14','',NULL,NULL,'','四年级',4),
	(5,'','2024-05-24 19:13:22','',NULL,NULL,'','五年级',5),
	(6,'','2024-05-24 19:13:30','',NULL,NULL,'','六年级',6);

/*!40000 ALTER TABLE `tb_grade_info` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 tb_student_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_student_info`;

CREATE TABLE `tb_student_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint DEFAULT NULL COMMENT '删除标识 0=未删除,1=已删除',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `student_name` varchar(64) DEFAULT NULL COMMENT '学生姓名',
  `student_num` varchar(128) DEFAULT NULL COMMENT '学号',
  `student_tag` varchar(255) DEFAULT NULL COMMENT '标签',
  `student_gender` tinyint DEFAULT NULL COMMENT '学生性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='学生信息表';

LOCK TABLES `tb_student_info` WRITE;
/*!40000 ALTER TABLE `tb_student_info` DISABLE KEYS */;

INSERT INTO `tb_student_info` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`, `student_name`, `student_num`, `student_tag`, `student_gender`)
VALUES
	(1,'admin','2024-03-06 21:05:48','',NULL,NULL,'1','王力宏','1','1',0),
	(3,'user1','2024-03-07 21:33:20','admin','2024-03-07 21:52:34',NULL,'','迟明宇','1','cmy',0),
	(4,'user1','2024-03-07 21:33:24','',NULL,NULL,'','邸子轩','2','',NULL),
	(5,'user1','2024-03-07 21:33:24','',NULL,NULL,'','付韵竹','3','',NULL),
	(6,'user1','2024-03-07 21:33:24','',NULL,NULL,'','拱兴北','4','',NULL),
	(7,'user1','2024-03-07 21:33:24','admin','2024-03-07 21:52:46',NULL,'','崔嘉钰','5','cjy',1),
	(8,'user1','2024-03-07 21:33:24','',NULL,NULL,'','胡辰熙','6','',NULL),
	(9,'user1','2024-03-07 21:33:24','',NULL,NULL,'','郝新平','7','',NULL),
	(10,'user1','2024-03-07 21:33:24','',NULL,NULL,'','鞠滢湲','8','',NULL),
	(11,'user1','2024-03-07 21:33:24','',NULL,NULL,'','戢润良','9','',NULL),
	(12,'user1','2024-03-07 21:33:24','',NULL,NULL,'','贾岩锋','10','',NULL),
	(13,'user1','2024-03-07 21:33:24','',NULL,NULL,'','姜泓盛','11','',NULL),
	(14,'user1','2024-03-07 21:33:24','',NULL,NULL,'','姜天一','12','',NULL),
	(15,'user1','2024-03-07 21:33:24','',NULL,NULL,'','齐韦辰','13','',NULL),
	(16,'user1','2024-03-07 21:33:24','',NULL,NULL,'','康祎宸','14','',NULL),
	(17,'user1','2024-03-07 21:33:24','',NULL,NULL,'','明子涵','15','',NULL),
	(18,'user1','2024-03-07 21:33:24','',NULL,NULL,'','李明轩','16','',NULL),
	(19,'user1','2024-03-07 21:33:24','',NULL,NULL,'','戢润辰','17','',NULL),
	(20,'user1','2024-03-07 21:33:24','',NULL,NULL,'','姜勃宇','18','',NULL),
	(21,'user1','2024-03-07 21:33:24','',NULL,NULL,'','李鸿涛','19','',NULL),
	(22,'user1','2024-03-07 21:33:24','',NULL,NULL,'','李婉宁','20','',NULL),
	(23,'user1','2024-03-07 21:33:24','',NULL,NULL,'','李欣瞳','21','',NULL),
	(24,'user1','2024-03-07 21:33:24','',NULL,NULL,'','李则阳','22','',NULL),
	(25,'user1','2024-03-07 21:33:24','',NULL,NULL,'','李子夏','23','',NULL),
	(26,'user1','2024-03-07 21:33:24','',NULL,NULL,'','李梓毓','24','',NULL),
	(27,'user1','2024-03-07 21:33:24','',NULL,NULL,'','林佳惠','25','',NULL),
	(28,'user1','2024-03-07 21:33:24','',NULL,NULL,'','刘芙佑','26','',NULL),
	(29,'user1','2024-03-07 21:33:24','',NULL,NULL,'','刘高泽','27','',NULL),
	(30,'user1','2024-03-07 21:33:24','',NULL,NULL,'','刘思含','28','',NULL),
	(31,'user1','2024-03-07 21:33:24','',NULL,NULL,'','苗馨予','29','',NULL),
	(32,'user1','2024-03-07 21:33:24','',NULL,NULL,'','刘一霖','30','',NULL),
	(33,'user1','2024-03-07 21:33:24','',NULL,NULL,'','万韵格','31','',NULL),
	(34,'user1','2024-03-07 21:33:24','',NULL,NULL,'','赵悦然','32','',NULL),
	(35,'user1','2024-03-07 21:33:24','',NULL,NULL,'','苗雨晨','33','',NULL),
	(36,'user1','2024-03-07 21:33:24','',NULL,NULL,'','肖泓如','34','',NULL),
	(37,'user1','2024-03-07 21:33:24','',NULL,NULL,'','于淑涵','35','',NULL),
	(38,'user1','2024-03-07 21:33:24','',NULL,NULL,'','熊子玉','36','',NULL),
	(39,'user1','2024-03-07 21:33:24','',NULL,NULL,'','许赵赫','37','',NULL),
	(40,'user1','2024-03-07 21:33:24','',NULL,NULL,'','孙嘉聪','38','',NULL),
	(41,'user1','2024-03-07 21:33:24','',NULL,NULL,'','于艺洋','39','',NULL),
	(42,'user1','2024-03-07 21:33:24','',NULL,NULL,'','张芸溪','40','',NULL),
	(43,'user1','2024-03-07 21:33:24','',NULL,NULL,'','王瑞涵','41','',NULL),
	(44,'user1','2024-03-07 21:33:24','',NULL,NULL,'','朱同','42','',NULL),
	(45,'user1','2024-03-07 21:33:24','',NULL,NULL,'','潘俊如','43','',NULL),
	(46,'user1','2024-03-07 21:33:24','',NULL,NULL,'','吴俊易','44','',NULL),
	(47,'user1','2024-03-07 21:33:24','',NULL,NULL,'','武明李','45','',NULL);

/*!40000 ALTER TABLE `tb_student_info` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 tb_subject_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_subject_info`;

CREATE TABLE `tb_subject_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint DEFAULT NULL COMMENT '删除标识 0=未删除,1=已删除',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `subject_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '学科名称',
  `sort` double DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='学科信息表';

LOCK TABLES `tb_subject_info` WRITE;
/*!40000 ALTER TABLE `tb_subject_info` DISABLE KEYS */;

INSERT INTO `tb_subject_info` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`, `subject_name`, `sort`)
VALUES
	(1,'','2024-05-24 18:56:01','','2024-05-24 19:12:48',NULL,'','语文',1),
	(2,'','2024-05-24 18:59:41','',NULL,NULL,'','数学',NULL),
	(3,'','2024-05-24 18:59:47','',NULL,NULL,'','英语',NULL),
	(4,'','2024-05-24 18:59:56','',NULL,NULL,'','体育',NULL),
	(5,'','2024-05-24 19:12:37','',NULL,NULL,'','音乐',1);

/*!40000 ALTER TABLE `tb_subject_info` ENABLE KEYS */;
UNLOCK TABLES;


# 转储表 wx_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wx_user`;

CREATE TABLE `wx_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `open_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='微信用户表';

LOCK TABLES `wx_user` WRITE;
/*!40000 ALTER TABLE `wx_user` DISABLE KEYS */;

INSERT INTO `wx_user` (`id`, `open_id`, `create_time`)
VALUES
	(1,'ob2GQ6yM3n6PB_zHximkX7yi-nX0','2024-08-27 23:22:14');

/*!40000 ALTER TABLE `wx_user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
