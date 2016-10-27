/*
MySQL Data Transfer
Source Host: localhost
Source Database: test
Target Host: localhost
Target Database: test
Date: 2013/12/22 20:46:24
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for menu
-- ----------------------------
CREATE TABLE `menu` (
  `id` char(255) NOT NULL DEFAULT '',
  `content` char(255) DEFAULT NULL,
  `path` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
CREATE TABLE `orders` (
  `number` char(20) NOT NULL,
  `name` char(20) DEFAULT NULL,
  `address` char(30) DEFAULT NULL,
  `mail` char(20) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for productdetails
-- ----------------------------
CREATE TABLE `productdetails` (
  `number` char(20) NOT NULL,
  `name` char(20) DEFAULT '',
  `quantity` int(11) DEFAULT NULL,
  `manufacturer` char(20) DEFAULT NULL,
  `style` char(20) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `categories` char(20) DEFAULT '',
  PRIMARY KEY (`number`,`style`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for products
-- ----------------------------
CREATE TABLE `products` (
  `number` char(20) NOT NULL,
  `name` char(20) DEFAULT NULL,
  `price` char(20) DEFAULT NULL,
  `comment` char(255) DEFAULT NULL,
  `imgpath` char(255) DEFAULT NULL,
  `categories` char(20) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for sell
-- ----------------------------
CREATE TABLE `sell` (
  `number` char(20) NOT NULL,
  `sale` int(11) DEFAULT NULL,
  PRIMARY KEY (`number`),
  CONSTRAINT `FK_sell` FOREIGN KEY (`number`) REFERENCES `products` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `user` (
  `username` char(15) NOT NULL,
  `password` char(15) DEFAULT NULL,
  `mail` char(30) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '图书、音像、数字商品', null);
INSERT INTO `menu` VALUES ('10', '家用电器', null);
INSERT INTO `menu` VALUES ('11', '手机、数码', null);
INSERT INTO `menu` VALUES ('12', '家居、家具、家装、厨具', null);
INSERT INTO `menu` VALUES ('13', '服饰内衣', null);
INSERT INTO `menu` VALUES ('2', '个护化妆', null);
INSERT INTO `menu` VALUES ('3', '鞋靴、箱包、钟表、珠宝', null);
INSERT INTO `menu` VALUES ('4', '运动健康', null);
INSERT INTO `menu` VALUES ('5', '汽车用品', null);
INSERT INTO `menu` VALUES ('6', '母婴、玩具乐器', null);
INSERT INTO `menu` VALUES ('7', '食品饮料、保健食品', null);
INSERT INTO `menu` VALUES ('8', '彩票、旅行、充值、票务', null);
INSERT INTO `menu` VALUES ('9', '电脑、办公', null);
INSERT INTO `orders` VALUES ('2013111923321663', 'sdf', 'dsf', 'sdf', 'sdf', '30');
INSERT INTO `orders` VALUES ('201311192334328', 'dfsd', 'sdf', 'sdf', 'sdf', '30');
INSERT INTO `productdetails` VALUES ('1', 'Integer eleifend sed', '1', 'Sun1', 'Style-12', '0001-02-05 00:00:00', '123');
INSERT INTO `productdetails` VALUES ('10', 'hllotest', '10', 'Sun10', 'Style-12', '0001-02-05 00:00:00', '');
INSERT INTO `productdetails` VALUES ('12345', 'new1', '123', 'saf', 'dsgfsdf', '0001-02-05 00:00:00', '123');
INSERT INTO `productdetails` VALUES ('2', 'Nam cursus facilisis', '2', 'Sun2', 'Style-12', '0001-02-05 00:00:00', '');
INSERT INTO `productdetails` VALUES ('3', 'Mauris consectetur', '3', 'Sun3', 'Style-12', '0001-02-05 00:00:00', '');
INSERT INTO `productdetails` VALUES ('4', 'Proin volutpat', '4', 'Sun4', 'Style-12', '0001-02-05 00:00:00', '');
INSERT INTO `productdetails` VALUES ('5', 'Aenean tempus', '5', 'Sun5', 'Style-12', '0001-02-05 00:00:00', '');
INSERT INTO `productdetails` VALUES ('6', 'Nulla luctus urna', '6', 'Sun6', 'Style-12', '0001-02-05 00:00:00', '');
INSERT INTO `productdetails` VALUES ('7', 'Pellentesque', '7', 'Sun7', 'Style-12', '0001-02-05 00:00:00', '');
INSERT INTO `productdetails` VALUES ('8', 'Suspendisse fermentu', '8', 'Sun8', 'Style-12', '0001-02-05 00:00:00', '');
INSERT INTO `productdetails` VALUES ('9', 'Donec laoreet velit', '9', 'Sun9', 'Style-12', '0001-02-05 00:00:00', '');
INSERT INTO `products` VALUES ('1', 'abcdef', '30', 'null', '01.jpg', null);
INSERT INTO `products` VALUES ('10', 'hllotest', '56', null, '02.jpg', null);
INSERT INTO `products` VALUES ('2', 'Nam cursus facilisis', '15', '123', '02.jpg', '123');
INSERT INTO `products` VALUES ('3', 'Mauris consectetur', '120', null, '03.jpg', null);
INSERT INTO `products` VALUES ('4', 'Proin volutpat', '70', null, '04.jpg', null);
INSERT INTO `products` VALUES ('5', 'Aenean tempus', '150', null, '05.jpg', null);
INSERT INTO `products` VALUES ('6', 'Nulla luctus urna', '700', null, '06.jpg', null);
INSERT INTO `products` VALUES ('7', 'Pellentesque', '2', null, '07.jpg', null);
INSERT INTO `products` VALUES ('8', 'Suspendisse fermentu', '33', null, '08.jpg', null);
INSERT INTO `products` VALUES ('9', 'Donec laoreet velit', '65', null, '09.jpg', null);
INSERT INTO `user` VALUES ('123', '123', '123');
INSERT INTO `user` VALUES ('abc', '123', '123');
INSERT INTO `user` VALUES ('admin', 'admin', null);
INSERT INTO `user` VALUES ('asdf', '123', '123');
