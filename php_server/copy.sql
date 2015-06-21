/*
Navicat MySQL Data Transfer

Source Server         : localhost_3307
Source Server Version : 50619
Source Host           : localhost:3307
Source Database       : kedan

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2015-03-02 00:56:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `black_copy`
-- ----------------------------
DROP TABLE IF EXISTS `black_copy`;
CREATE TABLE `black_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `umd5` varchar(255) DEFAULT NULL,
  `deviceid` varchar(255) DEFAULT NULL,
  `isdel` int(11) DEFAULT NULL COMMENT '查看是否删除该用户',
  `f_user` varchar(255) DEFAULT NULL,
  `f_deviceid` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of black_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `db_error_copy`
-- ----------------------------
DROP TABLE IF EXISTS `db_error_copy`;
CREATE TABLE `db_error_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pagename` varchar(255) DEFAULT NULL,
  `errstr` varchar(255) DEFAULT NULL,
  `timer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_error_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `db_qunfa_copy`
-- ----------------------------
DROP TABLE IF EXISTS `db_qunfa_copy`;
CREATE TABLE `db_qunfa_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `umd5` varchar(255) DEFAULT NULL,
  `issend` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1733 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_qunfa_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `gushi_copy`
-- ----------------------------
DROP TABLE IF EXISTS `gushi_copy`;
CREATE TABLE `gushi_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL COMMENT '发表内容',
  `jwd` varchar(255) DEFAULT NULL COMMENT '经纬度',
  `pic` varchar(255) DEFAULT NULL COMMENT '三张图片',
  `umd5` varchar(255) NOT NULL COMMENT '用户唯一id',
  `time` varchar(255) DEFAULT NULL,
  `is_del` int(11) DEFAULT '0' COMMENT '0是在个人页显示,1是在广场显示,2是删除',
  `zan` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=881 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gushi_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `login_log_copy`
-- ----------------------------
DROP TABLE IF EXISTS `login_log_copy`;
CREATE TABLE `login_log_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `umd5` varchar(255) DEFAULT NULL,
  `deviceid` varchar(255) DEFAULT NULL,
  `otherid` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10651 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_log_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `message_copy`
-- ----------------------------
DROP TABLE IF EXISTS `message_copy`;
CREATE TABLE `message_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92980 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `relasion_copy`
-- ----------------------------
DROP TABLE IF EXISTS `relasion_copy`;
CREATE TABLE `relasion_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `umd5` varchar(255) DEFAULT NULL,
  `umd5_fans` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relasion_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `user_attr_copy`
-- ----------------------------
DROP TABLE IF EXISTS `user_attr_copy`;
CREATE TABLE `user_attr_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `umd5` varchar(255) DEFAULT NULL,
  `deviceid` varchar(255) DEFAULT NULL,
  `otherid` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5330 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_attr_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `user_copy`
-- ----------------------------
DROP TABLE IF EXISTS `user_copy`;
CREATE TABLE `user_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL COMMENT '性别：1 =》 男，2=》女， 0=》未知。',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日',
  `headurl` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `age` int(2) DEFAULT '20' COMMENT '年龄',
  `province` varchar(255) DEFAULT '' COMMENT '省',
  `city` varchar(255) DEFAULT '' COMMENT '城市',
  `media_type` varchar(255) DEFAULT NULL COMMENT '第三方平台的标识。',
  `media_uid` varchar(255) DEFAULT NULL COMMENT '第三方平台用户uid。',
  `access_token` varchar(255) DEFAULT NULL COMMENT '第三方token',
  `umd5` varchar(255) NOT NULL COMMENT '唯一id md5后结果',
  `uid` varchar(14) NOT NULL,
  `zaina` varchar(255) DEFAULT NULL,
  `zhiye` varchar(255) DEFAULT NULL COMMENT '职业',
  `qianming` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_id` (`id`) USING BTREE,
  UNIQUE KEY `index_umd5` (`umd5`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5995 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `zaina_copy`
-- ----------------------------
DROP TABLE IF EXISTS `zaina_copy`;
CREATE TABLE `zaina_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `geohash` varchar(255) DEFAULT NULL,
  `geo` varchar(255) DEFAULT NULL,
  `umd5` varchar(255) NOT NULL,
  `jiedao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zaina_id` (`id`) USING BTREE,
  KEY `zaina_umd5` (`umd5`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=22676 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zaina_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `zan_copy`
-- ----------------------------
DROP TABLE IF EXISTS `zan_copy`;
CREATE TABLE `zan_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `zan` varchar(255) DEFAULT NULL,
  `iscount` int(11) DEFAULT '0' COMMENT '是否已经计数 0是为计数 1是已经计数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=808 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zan_copy
-- ----------------------------
