/*
 Navicat MySQL Data Transfer

 Source Server         : Captain
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost
 Source Database       : paqiang

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : utf-8

 Date: 05/27/2018 18:32:09 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `CPU`
-- ----------------------------
DROP TABLE IF EXISTS `CPU`;
CREATE TABLE `CPU` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `zp` varchar(255) DEFAULT NULL,
  `dtjspl` varchar(255) DEFAULT NULL,
  `sjhc` varchar(255) DEFAULT NULL,
  `hxsl` varchar(255) DEFAULT NULL,
  `fs` int(11) DEFAULT NULL,
  `ms` varchar(255) DEFAULT NULL,
  `more` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `CPU`
-- ----------------------------
BEGIN;
INSERT INTO `CPU` VALUES ('1', 'Intel 酷睿i7 8700K', '2599', 'LGA 1151', '3.7GHz', '4.7GHz', '12MB', '六核心', '0', '无', '无'), ('2', 'Intel 酷睿i5 8400', '1399', 'LGA 1151', '2.8GHz', '4GHz', '9MB', '六核心', '0', '无', '无'), ('3', 'Intel 酷睿i5 7500', '1349', 'LGA 1151', '3.4GHz', '3.8GHz', '6MB', '四核心', '0', '无', '无'), ('4', 'Intel 酷睿i7 7700K', '2399', 'LGA 1151', '4.2GHz', '4.5GHz', '8MB', '四核心', '0', '无', '无'), ('5', 'Intel 酷睿i3 8100', '999', 'LGA 1151', '3.6GHz', '无', '6MB', '四核心', '0', '无', '无'), ('6', 'Intel 酷睿i9 7980XE', '15000', 'LGA 2066', '2.6GHz', '4.2GHz', '18MB', '十八核心', '0', '无', '无'), ('7', 'Intel 酷睿i7 8700', '2399', 'LGA 1151', '3.2GHz', '4.6GHz', '12MB', '六核心', '0', '无', '无'), ('8', 'Intel 奔腾 G4560', '499', 'LGA 1151', '3.5GHz', '无', '3MB', '双核心', '0', '无', '无'), ('9', 'Intel 酷睿i5 8600K', '1799', 'LGA 1151', '3.6GHz', '4.3GHz', '9MB', '六核心', '0', '无', '无'), ('10', 'Intel 酷睿i7 7700', '2199', 'LGA 1151', '3.6GHz', '4.2GHz', '8MB', '四核心', '0', '无', '无'), ('11', 'AMD Ryzen 5 1600X', '1449', 'Socket AM4', '3.6GHz', '4GHz', '16MB', '六核心', '0', '无', '无'), ('12', 'AMD Ryzen 5 1500X', '1099', 'Socket AM4', '3.5GHz', '3.7GHz', '16MB', '四核心', '0', '无', '无'), ('13', 'AMD Ryzen 5 2400G', '1249', 'Socket AM4', '3.6GHz', '3.9GHz', '4MB', '四核心', '0', '无', '无'), ('14', 'AMD Ryzen 3 2200G', '759', 'Socket AM4', '3.5GHz', '3.7GHz', '4MB', '四核心', '0', '无', '无'), ('15', 'AMD Ryzen 5 1600', '1299', 'Socket AM4', '3.2GHz', '3.6GHz', '16MB', '六核心', '0', '无', '无'), ('16', 'AMD Ryzen 7 1800X', '2599', 'Socket AM4', '3.6GHz', '4GHz', '16MB', '八核心', '0', '无', '无'), ('17', 'AMD Ryzen 5 1400', '999', 'Socket AM4', '3.2GHz', '3.4GHz', '8MB', '四核心', '0', '无', '无'), ('18', 'AMD Ryzen 7 1700X', '2299', 'Socket AM4', '3.4GHz', '3.8GHz', '16MB', '八核心', '0', '无', '无'), ('19', 'AMD Ryzen 7 2700X', '2699', 'Socket AM4', '3.7GHz', '4.3GHz', '16MB', '八核心', '0', '无', '无'), ('20', 'AMD Ryzen Threadripper 1950X', '6699', 'Socket TR4', '3.4GHz', '4GHz', '32MB', '十六核心', '0', '无', '无');
COMMIT;

-- ----------------------------
--  Table structure for `computer`
-- ----------------------------
DROP TABLE IF EXISTS `computer`;
CREATE TABLE `computer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpuid` int(11) DEFAULT NULL,
  `dyid` int(11) DEFAULT NULL,
  `ncid` int(11) DEFAULT NULL,
  `xkid` int(11) DEFAULT NULL,
  `xsqid` int(11) DEFAULT NULL,
  `ypid` int(11) DEFAULT NULL,
  `zbid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `fs` int(11) DEFAULT NULL,
  `ms` varchar(255) DEFAULT NULL,
  `more` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `computer`
-- ----------------------------
BEGIN;
INSERT INTO `computer` VALUES ('1', '8', '13', '8', '100', '11', '11', '13', '1', '2900', null, null), ('2', '2', '12', '13', '12', '11', '6', '12', '1', '6343', null, null), ('3', '10', '13', '12', '100', '10', '4', '11', '1', '4675', null, null), ('4', '1', '11', '11', '11', '6', '13', '4', '1', '24389', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `dy`
-- ----------------------------
DROP TABLE IF EXISTS `dy`;
CREATE TABLE `dy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `edgl` varchar(255) DEFAULT NULL,
  `pfclx` varchar(255) DEFAULT NULL,
  `dylx` varchar(255) DEFAULT NULL,
  `fsms` varchar(255) DEFAULT NULL,
  `qttd` varchar(255) DEFAULT NULL,
  `fs` varchar(255) DEFAULT NULL,
  `ms` varchar(255) DEFAULT NULL,
  `more` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `dy`
-- ----------------------------
BEGIN;
INSERT INTO `dy` VALUES ('1', '爱国者电竞500', '279', '500W', '主动式', '台式机电源', '12cm静音风扇', '节能静音，智能温控，电源线1.5M', '0', '无', '无'), ('2', '先马金牌500W', '299', '500W', '主动式', '台式机电源', '12cm静音风扇', '长线材设计', '0', '无', '无'), ('3', '金河田ZP600P-GF', '459', '600W', '主动式', '台式机电源', '14cm静音风扇', '过压保护OVP，低电压保护UVP，过电流保护OCP，过功率保护OPP，过温保护OTP，短路保护SCP', '0', '无', '无'), ('4', '振华LEADEX P2000', '3599', '2000W', '主动式', '台式机电源', '14cm静音风扇', '过载保护OLP，过压保护OVP，过电流保护OCP，短路保护SCP', '0', '无', '无'), ('5', '海盗船VS550', '299', '550W', '主动式', '台式机电源', '12cm静音风扇', '过压保护OVP，低电压保护UVP，过电流保护OCP，短路保护SCP', '0', '无', '无'), ('6', '先马金牌750W', '499', '750W', '主动式', '台式机电源，游戏电源', '12cm静音风扇', '采用长线材设计', '0', '无', '无'), ('7', '航嘉MVP P850', '1099', '850W', '主动式', '台式机电源', '12cm静音风扇', '节能静音，智能温控，电源线1.5M', '0', '无', '无'), ('8', '酷冷至尊GX-400W', '99', '400W', '主动式', '台式机电源', '12cm智能温控风扇', '过压保护OVP，低电压保护UVP，过功率保护OPP，过温保护OTP，短路保护SCP', '0', '无', '无'), ('9', '航嘉MVP500', '359', '500W', '主动式', '台式机电源', '14cm静音风扇', '支持新一代Haswell处理器的C6/C7休眠模式，深度节能', '0', '无', '无'), ('10', '海盗船RM650x', '869', '650W', '主动式', '台式机电源', '13.5cm静音风扇', '过压保护，欠电压保护，短路保护，过高功率保护，过高温度保护', '0', '无', '无'), ('11', '海韵G-650', '695', '650W', '主动式', '台式机电源', '12cm静音风扇', '节能静音，智能温控，电源线1.5M', '0', '无', '无'), ('12', 'ANTEC VP450P', '249', '450W', '主动式', '台式机电源', '12cm静音风扇', '过压保护OVP，过电流保护OCP，短路保护SCP', '0', '无', '无'), ('13', '先马破坏神550', '159', '400W', '主动式', '台式机电源', '12cm静音风扇', '节能静音，智能温控，电源线1.5M', '0', '无', '无');
COMMIT;

-- ----------------------------
--  Table structure for `nc`
-- ----------------------------
DROP TABLE IF EXISTS `nc`;
CREATE TABLE `nc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `rl` varchar(255) DEFAULT NULL,
  `rlms` varchar(255) DEFAULT NULL,
  `lx` varchar(255) DEFAULT NULL,
  `zp` varchar(255) DEFAULT NULL,
  `gzdy` varchar(255) DEFAULT NULL,
  `fs` int(11) DEFAULT NULL,
  `ms` varchar(255) DEFAULT NULL,
  `more` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `nc`
-- ----------------------------
BEGIN;
INSERT INTO `nc` VALUES ('1', '金士顿HyperX Savage 8GB DDR4 2400', '699', '8GB', '单条（8GB）', 'DDR4', '2400MHz', '1.2V', '0', '无', '无'), ('2', '金士顿骇客神条FURY 8GB DDR4 2400', '699', '8GB', '单条（8GB）', 'DDR4', '2400MHz', '1.2V', '0', '无', '无'), ('3', '影驰GAMER 8GB DDR4 2400', '659', '8GB', '单条（8GB）', 'DDR4', '2400MHz', '1.2V', '0', '无', '无'), ('4', '金士顿HyperX Savage 16GB DDR3 2400', '649', '16GB', '套装（2×8GB）', 'DDR3', '2400MHz', '1.2V', '0', '无', '无'), ('5', '海盗船16GB DDR4 2133', '799', '16GB', '单条（16GB）', 'DDR4', '2133MHz', '1.2V', '0', '无', '无'), ('6', '芝奇Trident Z RGB 16GB DDR4 3000', '1025', '16GB', '套装（2×8GB）', 'DDR4', '3000MHz', '1.35V', '0', '无', '无'), ('7', '金士顿HyperX Savage 8GB DDR4 3000', '499', '8GB', '单条（8GB）', 'DDR4', '3000MHz', '1.2V', '0', '无', '无'), ('8', '芝奇Value 8GB DDR4 2400', '395', '8GB', '单条（8GB）', 'DDR4', '2400MHz', '1.2V', '0', '无', '无'), ('9', '芝奇Ripjaws4 128GB DDR4 2400', '7999', '128GB', '套装（8×16GB）', 'DDR4', '2400MHz', '1.2V', '0', '无', '无'), ('10', '金士顿4GB DDR3 1600', '199', '4GB', '单条（4GB）', 'DDR3', '1600MHz', '1.2V', '0', '无', '无'), ('11', '影驰HOF 16GB DDR4 3200', '1099', '16GB', '套装（2×8GB）', 'DDR4', '3200MHz', '1.35V', '0', '无', '无'), ('12', '芝奇Ripjaws V 16GB DDR4 2400', '799', '16GB', '套装（2×8GB）', 'DDR4', '2400MHz', '1.2V', '0', '无', '无'), ('13', '金士顿8GB DDR4 2666', '899', '8GB', '单条（8GB）', 'DDR4', '2666MHz', '1.2V', '0', '无', '无');
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', 'admin@123', '123', '管理员'), ('2', 'admin@1234', '123', '普通用户');
COMMIT;

-- ----------------------------
--  Table structure for `xk`
-- ----------------------------
DROP TABLE IF EXISTS `xk`;
CREATE TABLE `xk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `xpcs` varchar(255) DEFAULT NULL,
  `xkxp` varchar(255) DEFAULT NULL,
  `xcrl` varchar(255) DEFAULT NULL,
  `xcwk` varchar(255) DEFAULT NULL,
  `jk` varchar(255) DEFAULT NULL,
  `fs` int(11) DEFAULT NULL,
  `ms` varchar(255) DEFAULT NULL,
  `more` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `xk`
-- ----------------------------
BEGIN;
INSERT INTO `xk` VALUES ('1', '七彩虹iGame1050Ti 烈焰战神U-4GD5', '1499', 'NVIDIA', 'GeForce GTX 1050Ti', '4GB', '128bit', '1×HDMI接口，1×DVI接口，1×DisplayPort接口', '0', '无', '无'), ('2', '华硕GTX 1060-5G-SI', '1699', 'NVIDIA', 'GeForce GTX 1060', '5GB', '160bit', '1×HDMI接口，1×DVI接口，1×DisplayPort接口', '0', '无', '无'), ('3', '华硕ROG-STRIX-GTX 1080Ti-O11G-GAMING', '9299', 'NVIDIA', 'GeForce GTX 1080Ti', '11GB', '352bit', '2×HDMI接口，1×DVI接口，2×DisplayPort接口', '0', '无', '无'), ('4', '华硕DUAL-GTX 1050Ti-4G', '1199', 'NVIDIA', 'GeForce GTX 1050Ti', '4GB', '128bit', '1×HDMI接口，1×DVI接口，1×DisplayPort接口', '0', '无', '无'), ('5', '影驰GeForce GTX 1050Ti大将', '1399', 'NVIDIA', 'GeForce GTX 1050Ti', '4GB', '128bit', '1×HDMI接口，2×DVI接口，1×DisplayPort接口', '0', '无', '无'), ('6', '铭瑄 GTX 1060 终结者6G', '2299', 'NVIDIA', 'GeForce GTX 1060', '6GB', '192bit', '1×HDMI接口，1×DVI接口，3×DisplayPort接口', '0', '无', '无'), ('7', '微星GeForce GTX 1060 GAMING X 6G', '2899', 'NVIDIA', 'GeForce GTX 1060', '6GB', '192bit', '1×HDMI接口，1×DVI接口，3×DisplayPort接口', '0', '无', '无'), ('8', '华硕ROG STRIX-GTX 1070-O8G-GAMING', '4299', 'NVIDIA', 'GeForce GTX 1070', '8GB', '256bit', '2×HDMI接口，1×DVI接口，2×DisplayPort接口', '0', '无', '无'), ('9', '影驰GeForce GTX 1060 GAMER 6GB', '2299', 'NVIDIA', 'GeForce GTX 1060', '6GB', '192bit', '1×HDMI接口，1×DVI接口，3×DisplayPort接口', '0', '无', '无'), ('10', '七彩虹iGame1060 烈焰战神X-6GD5', '2499', 'NVIDIA', 'GeForce GTX 1060', '6GB', '192bit', '1×HDMI接口，1×DVI接口，3×DisplayPort接口', '0', '无', '无'), ('11', '华硕ROG-STRIX-GTX 1080-O8G-11GBPS', '4899', 'NVIDIA', 'GeForce GTX 1080', '8GB', '256bit', '2×HDMI接口，1×DVI接口，2×DisplayPort接口', '0', '无', '无'), ('12', '华硕EX-GTX 1050Ti-4G', '1499', 'NVIDIA', 'GeForce GTX 1050Ti', '4GB', '128bit', '1×HDMI接口，1×DVI接口，1×DisplayPort接口', '0', '无', '无'), ('100', '无', '0', null, null, null, null, '', null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `xsq`
-- ----------------------------
DROP TABLE IF EXISTS `xsq`;
CREATE TABLE `xsq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pmcc` varchar(255) DEFAULT NULL,
  `cplx` varchar(255) DEFAULT NULL,
  `spjk` varchar(255) DEFAULT NULL,
  `mblx` varchar(255) DEFAULT NULL,
  `zjfbl` varchar(255) DEFAULT NULL,
  `fs` varchar(255) DEFAULT NULL,
  `ms` varchar(255) DEFAULT NULL,
  `more` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `xsq`
-- ----------------------------
BEGIN;
INSERT INTO `xsq` VALUES ('1', 'HKC GF40', '1149', '23.6英寸', 'LED显示器，广视角显示器，曲面显示器', 'DVI-D，HDMI，Displayport', 'VA', '1920x1080', '0', '无', '无'), ('2', '三星C24F390FH', '899', '23.5英寸', 'LED显示器，广视角显示器，曲面显示器', 'D-Sub（VGA），HDMI', 'VA', '1920x1080', '0', '无', '无'), ('3', '三星S24D360HL', '888', '23.6英寸', 'LED显示器，广视角显示器', 'D-Sub（VGA），HDMI', 'PLS', '1920x1080', '0', '无', '无'), ('4', '三星C27H711QE', '2359', '27英寸', 'LED显示器，广视角显示器，曲面显示器', 'HDMI，Mini Displayport', 'VA', '2560x1440', '0', '无', '无'), ('5', '戴尔UP3218K', '50000', '32英寸', '8K显示器，LED显示器', 'Displayport×2', 'IPS', '7680x4320', '0', '无', '无'), ('6', '三星C49HG90', '12999', '49英寸', 'LED显示器，广视角显示器，曲面显示器', 'HDMI×2，Displayport，Mini Displayport', 'VA', '3840x1080', '0', '无', '无'), ('7', 'AOC AG272QCX', '3599', '27英寸', 'LED显示器，广视角显示器，曲面显示器', 'D-Sub（VGA），HDMI×2，Displayport×2', 'VA', '2560x1440', '0', '无', '无'), ('8', 'AOC I2379V/WS', '849', '23英寸', 'LED显示器，广视角显示器，护眼显示器', 'D-Sub（VGA），DVI-D', 'AH-IPS', '1920x1080', '0', '无', '无'), ('9', 'Eizo ColorEdge CG318-4K', '43000', '31.1英寸', '4K显示器，LED显示器，广视角显示器', 'HDMI，Displayport', 'IPS', '4096x2160', '0', '无', '无'), ('10', '华硕VN248NA', '750', '23.8英寸', 'LED显示器，广视角显示器，护眼显示器', 'D-Sub（VGA），DVI-D', 'IPS', '1920x1080', '0', '无', '无'), ('11', '华硕VC239H', '899', '23英寸', 'LED显示器，广视角显示器，护眼显示器', 'D-Sub（VGA），DVI，HDMI', 'AH-IPS', '1920x1080', '0', '无', '无'), ('12', '三星C27F591F', '1699', '27英寸', 'LED显示器，广视角显示器，曲面显示器', 'D-Sub（VGA），HDMI，Displayport', 'VA', '1920x1080', '0', '无', '无');
COMMIT;

-- ----------------------------
--  Table structure for `yp`
-- ----------------------------
DROP TABLE IF EXISTS `yp`;
CREATE TABLE `yp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `rl` varchar(255) DEFAULT NULL,
  `jklx` varchar(255) DEFAULT NULL,
  `zs` varchar(255) DEFAULT NULL,
  `hc` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `fs` int(11) DEFAULT NULL,
  `ms` varchar(255) DEFAULT NULL,
  `more` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `yp`
-- ----------------------------
BEGIN;
INSERT INTO `yp` VALUES ('1', '希捷Barracuda 1TB 7200转 64MB 单碟', '299', '1000GB', 'SATA3.0', '7200rpm', '64MB', '3.5英寸', '0', '无', '无'), ('2', '西部数据1TB 7200转 64MB SATA3 蓝盘', '299', '1000GB', 'SATA3.0', '7200rpm', '64MB', '3.5英寸', '0', '无', '无'), ('3', '希捷Barracuda 2TB 7200转 64MB SATA3', '449', '2000GB', 'SATA3.0', '7200rpm', '64MB', '3.5英寸', '0', '无', '无'), ('4', '希捷Barracuda 1TB 7200转 64MB SATA3', '269', '1000GB', 'SATA3.0', '7200rpm', '64MB', '3.5英寸', '0', '无', '无'), ('5', '希捷BarraCuda Pro 12TB 7200转 256MB', '4299', '12000GB', 'SATA3.0', '7200rpm', '256MB', '3.5英寸', '0', '无', '无'), ('6', '希捷Barracuda 2TB 7200转 64MB SATA3', '399', '2000GB', 'SATA3.0', '7200rpm', '64MB', '3.5英寸', '0', '无', '无'), ('7', '希捷Barracuda 3TB 7200转 64MB SATA3', '549', '3000GB', 'SATA3.0', '7200rpm', '64MB', '3.5英寸', '0', '无', '无'), ('8', '西部数据蓝盘2TB SATA6Gb/s 64M', '349', '2000GB', 'SATA3.0', '5400rpm', '64MB', '3.5英寸', '0', '无', '无'), ('9', '西部数据500GB 7200转 16MB SATA3 蓝盘', '270', '500GB', 'SATA3.0', '7200rpm', '16MB', '3.5英寸', '0', '无', '无'), ('10', '希捷Desktop 2TB 7200转 8GB混合硬盘', '499', '2000GB', 'SATA3.0', '7200rpm', '64MB', '3.5英寸', '0', '无', '无'), ('11', '饥饿鲨ARC 100（240GB）', '449', '240GB', 'SATA3.0', '无', '512MB', '2.5英寸', '0', '无', '无'), ('12', '浦科特M8VC（256GB）', '569', '256GB', 'SATA3.0', '无', '512MB', '2.5英寸', '0', '无', '无'), ('13', ' Intel 760P M.2 2280（256GB）', '799', '256GB', 'SATA3.0', '无', '512MB', '2.5英寸', '0', '无', '无');
COMMIT;

-- ----------------------------
--  Table structure for `zb`
-- ----------------------------
DROP TABLE IF EXISTS `zb`;
CREATE TABLE `zb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `zxpz` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bx` varchar(255) DEFAULT NULL,
  `jcxp` varchar(255) DEFAULT NULL,
  `nclx` varchar(255) DEFAULT NULL,
  `fs` int(11) DEFAULT NULL,
  `ms` varchar(255) DEFAULT NULL,
  `more` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `zb`
-- ----------------------------
BEGIN;
INSERT INTO `zb` VALUES ('1', '华硕PRIME B250M-PLUS', '699', 'Intel B250', 'LGA 1151', 'ATX板型', '声卡/网卡', '4×DDR4 DIMM', '64', '2400MHz/2133MHz', '2×M.2接口，6×SATA3.0接口'), ('2', '华硕TUF Z370-PLUS GAMING', '1499', 'Intel Z370', 'LGA 1151', 'ATX板型', '声卡/网卡', '4×DDR4 DIMM', '64', '3200MHz/3000MHz/2800MHz/2666MHz/2400MHz/2133MHz', '2×M.2接口，6×SATA3.0接口'), ('3', '华硕ROG Rampage VI Extreme', '9999', 'Intel X299', 'LGA 2066', 'E-ATX板型', '声卡/网卡', '8×DDR4 DIMM', '128', '3200MHz/3000MHz/2800MHz/2666MHz/2400MHz/2133MHz', '1×U.2接口，3×M.2接口，6×SATA3.0接口'), ('4', '技嘉Z370 HD3', '1299', 'Intel Z370', 'LGA 1151', 'ATX板型', '显卡/声卡/网卡', '4×DDR4 DIMM', '64', '3200MHz/3000MHz/2800MHz/2666MHz/2400MHz/2133MHz', '1×M.2接口，6×SATA3.0接口'), ('5', '七彩虹Battle Axe C.B360M-HD DELUXE V20', '699', 'Intel B360', 'LGA 1151', 'ATX板型', '声卡/网卡', '2×DDR4 DIMM', '32', '2600MHz/2400MHz/2133MHz', '1×M.2接口，4×SATA3.0接口'), ('6', '华硕ROG MAXIMUS X FORMULA', '3999', 'Intel Z370', 'LGA 1151', 'ATX板型', '声卡/网卡', '4×DDR4 DIMM', '64', '3200MHz/3000MHz/2800MHz/2666MHz/2400MHz/2133MHz', '2×M.2接口，6×SATA3.0接口'), ('7', '华硕ROG STRIX B360-F GAMING', '1199', 'Intel B360', 'LGA 1151', 'ATX板型', '声卡/网卡', '4×DDR4 DIMM', '64', '2666MHz/2400MHz/2133MHz', '2×M.2接口，6×SATA3.0接口'), ('8', '华擎Z370 Pro4', '849', 'Intel Z370', 'LGA 1151', 'ATX板型', '声卡/网卡', '4×DDR4 DIMM', '64', '3200MHz/3000MHz/2800MHz/2666MHz/2400MHz/2133MHz', '2×M.2接口，6×SATA3.0接口'), ('9', '技嘉Z370 AORUS Ultra Gaming', '1799', 'Intel Z370', 'LGA 1151', 'ATX板型', '声卡/网卡', '4×DDR4 DIMM', '64', '3200MHz/3000MHz/2800MHz/2666MHz/2400MHz/2133MHz', '2×M.2接口，6×SATA3.0接口'), ('10', '华硕B85-PRO GAMER', '799', 'Intel B85', 'LGA 1150', 'ATX板型', '声卡/网卡', '4×DDR3 DIMM', '32', '1600MHz/1333MHz/1066MHz', '2×SATA2.0接口，4×SATA3.0接口'), ('11', '华硕EX-B250M-V3', '499', 'Intel B250', 'LGA 1151', 'ATX板型', '声卡/网卡', '2×DDR4 DIMM', '32', '2400MHz', '4×SATA3.0接口'), ('12', '华硕PRIME B360-PLUS', '999', 'Intel B360', 'LGA 1151', 'ATX板型', '声卡/网卡', '4×DDR4 DIMM', '64', '2666MHz/2400MHz/2133MHz', '2×M.2接口，6×SATA3.0接口'), ('13', '华硕PRIME B250M-J', '499', 'Intel B250', 'LGA 1151', 'ATX板型', '声卡/网卡', '2×DDR4 DIMM', '32', '2400MHz/2133MHz', '1×M.2接口，4×SATA3.0接口');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
