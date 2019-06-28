/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : tomcatgo

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2019-06-28 15:40:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Name` varchar(20) NOT NULL COMMENT '姓名',
  `State` int(10) NOT NULL DEFAULT '0' COMMENT '状态',
  `Createtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '0', '2019-06-10 15:16:04');
INSERT INTO `admin` VALUES ('2', 'systemadmin', '0', '2019-06-10 15:16:57');
INSERT INTO `admin` VALUES ('3', 'useradmin', '0', '2019-06-10 15:17:21');
INSERT INTO `admin` VALUES ('4', 'empadmin', '0', '2019-06-10 15:17:36');
INSERT INTO `admin` VALUES ('5', 'inforadmin', '0', '2019-06-10 15:20:02');

-- ----------------------------
-- Table structure for animal
-- ----------------------------
DROP TABLE IF EXISTS `animal`;
CREATE TABLE `animal` (
  `Id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Type` varchar(20) NOT NULL COMMENT '动物种类',
  `Photo` varchar(255) NOT NULL COMMENT '照片',
  `Gender` varchar(20) NOT NULL DEFAULT '男' COMMENT '性别',
  `RegionID` int(20) DEFAULT NULL COMMENT '所属区域',
  `Remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `State` int(10) NOT NULL DEFAULT '0' COMMENT '收养状态：0为未被收养，1为已被收养',
  `Entrytime` datetime NOT NULL COMMENT '收容时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of animal
-- ----------------------------
INSERT INTO `animal` VALUES ('1', '中华田园猫', 'photo1', '男', '1', '', '0', '2019-06-11 15:00:47');
INSERT INTO `animal` VALUES ('2', '布偶猫', 'photo2', '女', '2', null, '0', '2019-06-11 20:01:53');
INSERT INTO `animal` VALUES ('3', '兔子', 'photo3', '男', '3', null, '0', '2019-06-13 15:03:18');
INSERT INTO `animal` VALUES ('4', '暹罗', 'photo4', '男', '2', null, '0', '2019-06-14 15:03:40');
INSERT INTO `animal` VALUES ('5', '中华田园犬', 'photo5', '男', '4', null, '0', '2019-06-14 15:05:59');
INSERT INTO `animal` VALUES ('6', '哈士奇', 'photo6', '女', '4', null, '0', '2019-06-21 15:07:08');
INSERT INTO `animal` VALUES ('7', '蝴蝶犬', 'photo7', '女', '4', null, '0', '2019-06-15 15:08:26');
INSERT INTO `animal` VALUES ('8', '缅甸猫', 'photo8', '男', '1', null, '0', '2019-06-17 18:55:21');
INSERT INTO `animal` VALUES ('9', '美短猫', 'photo9', '男', '1', null, '0', '2019-06-18 15:10:45');
INSERT INTO `animal` VALUES ('10', '蓝猫', 'photo10', '女', '2', null, '0', '2019-06-19 15:11:42');
INSERT INTO `animal` VALUES ('11', '玄风', 'photo11', '男', '5', null, '0', '2019-06-21 15:13:12');
INSERT INTO `animal` VALUES ('12', '虎皮鹦鹉', 'photo12', '男', '5', null, '0', '2019-06-21 15:13:34');
INSERT INTO `animal` VALUES ('13', '牡丹鹦鹉', 'photo13', '女', '5', null, '0', '2019-06-20 15:14:00');
INSERT INTO `animal` VALUES ('14', '荷兰兔', 'photo14', '男', '3', null, '0', '2019-06-24 15:14:28');
INSERT INTO `animal` VALUES ('15', '大白兔', 'photo15', '女', '3', null, '0', '2019-06-23 15:15:20');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `Id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Title` varchar(50) NOT NULL COMMENT '标题',
  `Content` varchar(255) NOT NULL COMMENT '内容',
  `updatetime` datetime NOT NULL COMMENT 'updatetime',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', 'T1', 'A1', '2019-06-10 15:29:43');
INSERT INTO `article` VALUES ('2', 'T2', 'A2', '2019-06-11 15:30:00');
INSERT INTO `article` VALUES ('3', 'T3', 'A3', '2019-06-12 15:30:10');
INSERT INTO `article` VALUES ('4', 'T4', 'A4', '2019-06-13 15:30:21');
INSERT INTO `article` VALUES ('5', 'T5', 'A5', '2019-06-14 15:30:33');
INSERT INTO `article` VALUES ('6', 'T6', 'A6', '2019-06-15 15:30:42');
INSERT INTO `article` VALUES ('7', 'T7', 'A7', '2019-06-16 15:30:52');
INSERT INTO `article` VALUES ('8', 'T8', 'A8', '2019-06-17 15:31:02');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `Id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Name` varchar(20) NOT NULL COMMENT '姓名',
  `Password` varchar(20) NOT NULL COMMENT '密码',
  `Gender` varchar(20) NOT NULL DEFAULT '男' COMMENT '性别',
  `Age` int(20) NOT NULL COMMENT '年龄',
  `Tel` varchar(20) NOT NULL COMMENT '电话号码',
  `Email` varchar(20) NOT NULL COMMENT '邮箱',
  `RegionID` int(20) DEFAULT NULL COMMENT '负责区域',
  `State` int(10) NOT NULL COMMENT '状态：0为在职，1为离职，2为试用',
  `Entrytime` datetime NOT NULL COMMENT '入职时间',
  `Departure` datetime DEFAULT NULL COMMENT '离职时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '王安顺', '1111111', '男', '25', '15726367936', 'was@126.com', '1', '0', '2019-05-01 14:19:58', null);
INSERT INTO `employee` VALUES ('2', '彭万里', 'password', '男', '30', '18739028368', 'wanli@126.com', '1', '0', '2019-05-27 14:22:55', null);
INSERT INTO `employee` VALUES ('3', '孙璐', 'sunlu123', '女', '22', '13000282837', 'lulu@126.com', '1', '0', '2019-06-26 14:26:56', null);
INSERT INTO `employee` VALUES ('4', '孙娇怡', 'sunjy123', '女', '26', '15689456231', 'sjy@126.com', '2', '0', '2019-06-10 15:22:09', null);
INSERT INTO `employee` VALUES ('5', '周聪', 'zczczczc', '男', '35', '18849865421', 'zc@qq.com', '4', '0', '2019-06-10 15:23:04', null);

-- ----------------------------
-- Table structure for photograph
-- ----------------------------
DROP TABLE IF EXISTS `photograph`;
CREATE TABLE `photograph` (
  `Id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Photo` varchar(255) NOT NULL COMMENT '照片',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photograph
-- ----------------------------
INSERT INTO `photograph` VALUES ('1', 'ph1', '2019-06-12 15:27:05');
INSERT INTO `photograph` VALUES ('2', 'ph2', '2019-06-13 15:27:16');
INSERT INTO `photograph` VALUES ('3', 'ph3', '2019-06-14 15:27:25');
INSERT INTO `photograph` VALUES ('4', 'ph4', '2019-06-15 15:27:33');
INSERT INTO `photograph` VALUES ('5', 'ph5', '2019-06-16 15:27:43');
INSERT INTO `photograph` VALUES ('6', 'ph6', '2019-06-17 15:27:51');
INSERT INTO `photograph` VALUES ('7', 'ph7', '2019-06-18 15:28:16');
INSERT INTO `photograph` VALUES ('8', 'ph8', '2019-06-19 15:28:28');
INSERT INTO `photograph` VALUES ('9', 'ph9', '2019-06-20 15:28:43');
INSERT INTO `photograph` VALUES ('10', 'ph10', '2019-06-21 15:28:54');

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `RegionID` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Name` varchar(20) NOT NULL COMMENT '区域名',
  `State` int(10) NOT NULL DEFAULT '0' COMMENT '状态:0为正常，1为撤销',
  `Createtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`RegionID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES ('1', '第一区域', '0', '2019-06-26 14:12:10');
INSERT INTO `region` VALUES ('2', '第二区域', '0', '2019-06-04 23:14:54');
INSERT INTO `region` VALUES ('3', '第三区域', '0', '2019-05-16 14:15:19');
INSERT INTO `region` VALUES ('4', '第四区域', '0', '2019-06-10 18:15:49');
INSERT INTO `region` VALUES ('5', '第五区域', '0', '2019-02-19 21:16:26');
INSERT INTO `region` VALUES ('6', '第六区域', '1', '2018-12-18 12:17:06');

-- ----------------------------
-- Table structure for relation
-- ----------------------------
DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation` (
  `Id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Aid` int(20) NOT NULL COMMENT '动物编号',
  `Uid` int(20) NOT NULL COMMENT '用户编号',
  `Adopttime` datetime NOT NULL COMMENT '收养时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation
-- ----------------------------
INSERT INTO `relation` VALUES ('1', '5', '4', '2019-06-19 15:24:28');
INSERT INTO `relation` VALUES ('2', '8', '6', '2019-06-20 15:24:51');
INSERT INTO `relation` VALUES ('3', '7', '1', '2019-06-13 15:25:07');
INSERT INTO `relation` VALUES ('4', '2', '5', '2019-06-18 15:25:37');
INSERT INTO `relation` VALUES ('5', '6', '12', '2019-06-15 15:25:50');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Nickname` varchar(20) NOT NULL COMMENT '昵称',
  `Name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `Password` varchar(20) NOT NULL DEFAULT '' COMMENT '密码',
  `Gender` varchar(20) DEFAULT '男' COMMENT '性别',
  `Age` int(20) DEFAULT NULL COMMENT '年龄',
  `Tel` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `Email` varchar(20) NOT NULL COMMENT '电话号码',
  `Address` varchar(50) DEFAULT NULL COMMENT '家庭地址',
  `Adoptstate` int(10) NOT NULL DEFAULT '1' COMMENT '领养状态:0为已领养，1为未领养',
  `State` int(10) NOT NULL DEFAULT '0' COMMENT '状态:0为注册，1为注销',
  `Entrytime` datetime NOT NULL COMMENT '注册时间',
  `Departure` datetime DEFAULT NULL COMMENT '注销时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '空间阻断人', '韩一方', '123456', '男', '20', '13852462515', 'hyf@126.com', null, '1', '0', '2019-06-10 14:25:15', null);
INSERT INTO `user` VALUES ('2', 'cat', '李世俊', '123456', '男', '18', '15648952169', 'lsj@126.com', null, '1', '0', '2019-06-11 14:25:45', null);
INSERT INTO `user` VALUES ('3', 'nav', '周岚清', 'zxcvbnm', '女', '24', '15786248633', 'zlq@126.com', null, '1', '0', '2019-06-11 16:28:08', null);
INSERT INTO `user` VALUES ('4', '南山藤', '闫子阳', 'xdcfdsf', '男', '16', '15814578465', 'yzy@126.com', null, '1', '0', '2019-06-12 14:29:31', null);
INSERT INTO `user` VALUES ('5', '一刀999', '刘旭俊', 'tfgyuih', '男', '19', '13516856457', 'lxj@126.com', null, '1', '0', '2019-06-12 19:31:38', null);
INSERT INTO `user` VALUES ('6', '线性代数半价出售', '陈菲', 'uvygiuh', '女', '20', '18615649844', 'cf@qq.com', null, '1', '0', '2019-06-12 11:33:41', null);
INSERT INTO `user` VALUES ('7', '灵光一现黑魁A', '姚下雪', '666666', '女', '21', '15468453265', 'yxx@qq.com', null, '1', '1', '2019-06-15 18:36:16', '2019-06-28 14:36:26');
INSERT INTO `user` VALUES ('8', '到我梦里来', '吕武雯', 'ghuhvjd', '女', '18', '15684651648', 'lww@qq.com', null, '1', '0', '2019-06-14 14:39:42', null);
INSERT INTO `user` VALUES ('9', '代码使人秃头', '张裕摩', 'guhsoah', '男', '25', '18986454132', 'zym@qq.com', null, '1', '0', '2019-06-16 17:44:50', null);
INSERT INTO `user` VALUES ('10', '我的头发呢', '张晨冉', 'ifsuholaf', '男', '14', '15786543221', 'zcr@qq.com', null, '1', '0', '2019-06-18 14:47:26', null);
INSERT INTO `user` VALUES ('11', '泡椒竹笋鸡', '任新菲', 'lbdsiafu', '女', '23', '15678563213', 'rxf@163.com', null, '1', '0', '2019-06-19 14:49:32', null);
INSERT INTO `user` VALUES ('12', '爆破拆迁', '曹晓明', 'dgiuesd', '男', '35', '13286537967', 'cxm@163.com', null, '1', '0', '2019-06-20 14:54:07', null);
INSERT INTO `user` VALUES ('13', '脑门见秃终不悔', '赵俊彦', 'fghjsigc', '男', '30', '13549851654', 'zjy@126.com', null, '1', '0', '2019-06-20 21:56:17', null);
INSERT INTO `user` VALUES ('14', '像极了爱情', '陈泊媛', 'fscsrfsd', '女', '32', '13398652186', 'cpy@qq.com', null, '1', '0', '2019-06-21 14:56:37', null);
INSERT INTO `user` VALUES ('15', '长歌', '苏哲', '88888888', '男', '18', '13588888888', 'sz@vip.com', null, '1', '0', '2019-06-28 08:08:08', null);
