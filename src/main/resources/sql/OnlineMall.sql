/*
 Navicat MySQL Data Transfer

 Source Server         : zengjunda
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : OnlineMall

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 18/12/2019 08:33:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL COMMENT '类别名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of classification
-- ----------------------------
BEGIN;
INSERT INTO `classification` VALUES (1, '图书、音像、电子书刊');
INSERT INTO `classification` VALUES (2, '家用电器');
INSERT INTO `classification` VALUES (3, '电脑、办公');
INSERT INTO `classification` VALUES (4, '个护化妆');
INSERT INTO `classification` VALUES (5, '钟表');
INSERT INTO `classification` VALUES (6, '母婴');
INSERT INTO `classification` VALUES (7, '食品饮料、保健食品');
INSERT INTO `classification` VALUES (8, '汽车用品');
COMMIT;

-- ----------------------------
-- Table structure for dynamic
-- ----------------------------
DROP TABLE IF EXISTS `dynamic`;
CREATE TABLE `dynamic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dynamic
-- ----------------------------
BEGIN;
INSERT INTO `dynamic` VALUES (1, '7天学会EUI电商设计', NULL);
INSERT INTO `dynamic` VALUES (2, '5天入门软件测试', NULL);
INSERT INTO `dynamic` VALUES (3, '大数据hadoop入门精讲', NULL);
INSERT INTO `dynamic` VALUES (4, '视觉设计路线图上线了', NULL);
INSERT INTO `dynamic` VALUES (5, '20小时入门学会go语言', NULL);
INSERT INTO `dynamic` VALUES (6, '学习java就这么简单', NULL);
INSERT INTO `dynamic` VALUES (7, '新媒体营销策划系列课程', NULL);
INSERT INTO `dynamic` VALUES (8, '初始前端与移动开发', NULL);
COMMIT;

-- ----------------------------
-- Table structure for figure
-- ----------------------------
DROP TABLE IF EXISTS `figure`;
CREATE TABLE `figure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgPath` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of figure
-- ----------------------------
BEGIN;
INSERT INTO `figure` VALUES (1, 'hot_134ae0668c34a0699b58257caf26ea07.jpg', NULL);
INSERT INTO `figure` VALUES (2, 'hot_28573ae21b810e6e7ba202886b7a47ac.jpg', NULL);
INSERT INTO `figure` VALUES (3, 'hot_69a474b2938ba3b5b6a4592c08cd3632.jpg', NULL);
INSERT INTO `figure` VALUES (4, 'hot_e750cff8fb63e3c1b764b106f0591c5a.jpg', NULL);
COMMIT;

-- ----------------------------
-- Table structure for goodsList
-- ----------------------------
DROP TABLE IF EXISTS `goodsList`;
CREATE TABLE `goodsList` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `imgPath` varchar(255) DEFAULT NULL,
  `money` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goodsList
-- ----------------------------
BEGIN;
INSERT INTO `goodsList` VALUES (1, '新媒体营销教程', 'album_big_ecaf19ccea2e421d9c985fb34e02a827.jpg', 40);
INSERT INTO `goodsList` VALUES (2, '响应式Web开发项目教程', 'album_mid_6fe214f3186237f86108f4e68b7823d2.png', 41);
INSERT INTO `goodsList` VALUES (3, 'Python快速编程入门', 'album_mid_7f18b1efac778244f30d34fec88024fb.jpg', 42);
INSERT INTO `goodsList` VALUES (4, 'JavaScript前端开发案例教程', 'album_mid_d44cb64a12436a8eee7d25b651fad2ff.jpg', 43);
INSERT INTO `goodsList` VALUES (5, 'JavaWeb程序设计任务教程', 'album_big_0ee464165d0ead6a2b06eada2b0be5df.png', 40);
INSERT INTO `goodsList` VALUES (6, 'JavaEE企业级应用开发教程', 'album_big_5d4d8074a4b3ff38f6f9d7903f87ecf0.jpg', 43);
INSERT INTO `goodsList` VALUES (7, 'PHP基础案例教程', 'album_big_ec7607fe05bb7201430a3d36dd32af51.jpg', 43);
INSERT INTO `goodsList` VALUES (8, '微服务架构基础', 'album_mid_6a43a201f2791e1b718471119bd9dc69.jpg', 45);
COMMIT;

-- ----------------------------
-- Table structure for goodsType
-- ----------------------------
DROP TABLE IF EXISTS `goodsType`;
CREATE TABLE `goodsType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid_gcid` (`cid`),
  CONSTRAINT `cid_gcid` FOREIGN KEY (`cid`) REFERENCES `classification` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goodsType
-- ----------------------------
BEGIN;
INSERT INTO `goodsType` VALUES (1, 1, '电子书刊');
INSERT INTO `goodsType` VALUES (2, 1, '音像');
INSERT INTO `goodsType` VALUES (3, 1, '英文原版');
INSERT INTO `goodsType` VALUES (4, 1, '文艺');
INSERT INTO `goodsType` VALUES (5, 1, '少儿');
INSERT INTO `goodsType` VALUES (6, 1, '人文社科');
INSERT INTO `goodsType` VALUES (7, 1, '经管励志');
INSERT INTO `goodsType` VALUES (8, 1, '生活');
INSERT INTO `goodsType` VALUES (9, 1, '科技');
INSERT INTO `goodsType` VALUES (10, 1, '教育');
INSERT INTO `goodsType` VALUES (11, 1, '港台图书');
INSERT INTO `goodsType` VALUES (12, 1, '其他');
INSERT INTO `goodsType` VALUES (14, 2, '大家电');
INSERT INTO `goodsType` VALUES (15, 2, '生活电器');
INSERT INTO `goodsType` VALUES (16, 2, '厨房电器');
INSERT INTO `goodsType` VALUES (17, 2, '个护健康');
INSERT INTO `goodsType` VALUES (18, 2, '五金家装');
INSERT INTO `goodsType` VALUES (19, 3, '电脑整机');
INSERT INTO `goodsType` VALUES (20, 3, '电脑配件');
INSERT INTO `goodsType` VALUES (21, 3, '外设产品');
INSERT INTO `goodsType` VALUES (22, 3, '网络产品');
INSERT INTO `goodsType` VALUES (23, 3, '办公设备');
INSERT INTO `goodsType` VALUES (24, 3, '文具/耗材');
INSERT INTO `goodsType` VALUES (25, 3, '服务产品');
INSERT INTO `goodsType` VALUES (26, 4, '面部护肤');
INSERT INTO `goodsType` VALUES (27, 4, '身体护肤');
INSERT INTO `goodsType` VALUES (28, 4, '口腔护理');
INSERT INTO `goodsType` VALUES (29, 4, '女性护理');
INSERT INTO `goodsType` VALUES (30, 4, '洗发护发');
INSERT INTO `goodsType` VALUES (31, 4, '香水彩妆');
INSERT INTO `goodsType` VALUES (32, 5, '钟表');
INSERT INTO `goodsType` VALUES (33, 6, '奶粉');
INSERT INTO `goodsType` VALUES (34, 6, '营养辅食');
INSERT INTO `goodsType` VALUES (35, 6, '尿裤湿巾');
INSERT INTO `goodsType` VALUES (36, 6, '喂养用品');
INSERT INTO `goodsType` VALUES (37, 6, '洗护用品');
INSERT INTO `goodsType` VALUES (38, 6, '童车童床');
INSERT INTO `goodsType` VALUES (39, 6, '寝具服饰');
INSERT INTO `goodsType` VALUES (40, 6, '妈妈专区');
INSERT INTO `goodsType` VALUES (41, 6, '童装童鞋');
INSERT INTO `goodsType` VALUES (42, 6, '安全座椅');
INSERT INTO `goodsType` VALUES (43, 7, '进口食品');
INSERT INTO `goodsType` VALUES (44, 7, '地方特产');
INSERT INTO `goodsType` VALUES (45, 7, '休闲食品');
INSERT INTO `goodsType` VALUES (46, 7, '料油调味');
INSERT INTO `goodsType` VALUES (47, 7, '饮料冲调');
INSERT INTO `goodsType` VALUES (48, 7, '食品礼卷');
INSERT INTO `goodsType` VALUES (49, 7, '茗茶');
INSERT INTO `goodsType` VALUES (50, 8, '维修保养');
INSERT INTO `goodsType` VALUES (51, 8, '车载电器');
INSERT INTO `goodsType` VALUES (52, 8, '美容清洗');
INSERT INTO `goodsType` VALUES (53, 8, '汽车装饰');
INSERT INTO `goodsType` VALUES (54, 8, '安全自驾');
COMMIT;

-- ----------------------------
-- Table structure for recommended
-- ----------------------------
DROP TABLE IF EXISTS `recommended`;
CREATE TABLE `recommended` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rid_gid` (`gid`),
  CONSTRAINT `rid_gid` FOREIGN KEY (`gid`) REFERENCES `goodsList` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of recommended
-- ----------------------------
BEGIN;
INSERT INTO `recommended` VALUES (3, 2);
INSERT INTO `recommended` VALUES (4, 3);
INSERT INTO `recommended` VALUES (1, 5);
INSERT INTO `recommended` VALUES (2, 6);
INSERT INTO `recommended` VALUES (5, 7);
INSERT INTO `recommended` VALUES (6, 8);
COMMIT;

-- ----------------------------
-- Table structure for typeType
-- ----------------------------
DROP TABLE IF EXISTS `typeType`;
CREATE TABLE `typeType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gid_tid` (`gid`),
  CONSTRAINT `gid_tid` FOREIGN KEY (`gid`) REFERENCES `goodsType` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=495 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of typeType
-- ----------------------------
BEGIN;
INSERT INTO `typeType` VALUES (1, 1, '电子书');
INSERT INTO `typeType` VALUES (2, 1, '网络原创');
INSERT INTO `typeType` VALUES (3, 1, '数字杂志');
INSERT INTO `typeType` VALUES (4, 1, '多媒体图书');
INSERT INTO `typeType` VALUES (5, 2, '音乐');
INSERT INTO `typeType` VALUES (6, 2, '影视');
INSERT INTO `typeType` VALUES (7, 2, '教育音像');
INSERT INTO `typeType` VALUES (8, 3, '少儿');
INSERT INTO `typeType` VALUES (9, 3, '商务投资');
INSERT INTO `typeType` VALUES (10, 3, '英语学习与考试');
INSERT INTO `typeType` VALUES (11, 3, '小说');
INSERT INTO `typeType` VALUES (12, 3, '传记');
INSERT INTO `typeType` VALUES (13, 3, '励志');
INSERT INTO `typeType` VALUES (14, 4, '小说');
INSERT INTO `typeType` VALUES (15, 4, '文学');
INSERT INTO `typeType` VALUES (16, 4, '青春文学');
INSERT INTO `typeType` VALUES (17, 4, '传记');
INSERT INTO `typeType` VALUES (18, 4, '艺术');
INSERT INTO `typeType` VALUES (25, 5, '少儿');
INSERT INTO `typeType` VALUES (26, 5, '0-2岁');
INSERT INTO `typeType` VALUES (27, 5, '3-6岁');
INSERT INTO `typeType` VALUES (28, 5, '7-10岁');
INSERT INTO `typeType` VALUES (29, 5, '11-14岁');
INSERT INTO `typeType` VALUES (31, 6, '历史');
INSERT INTO `typeType` VALUES (32, 6, '哲学');
INSERT INTO `typeType` VALUES (33, 6, '国学');
INSERT INTO `typeType` VALUES (34, 6, '政治/军事');
INSERT INTO `typeType` VALUES (35, 6, '法律');
INSERT INTO `typeType` VALUES (36, 6, '宗教');
INSERT INTO `typeType` VALUES (37, 6, '心理学');
INSERT INTO `typeType` VALUES (38, 6, '文化');
INSERT INTO `typeType` VALUES (39, 6, '社会科学');
INSERT INTO `typeType` VALUES (41, 7, '经济');
INSERT INTO `typeType` VALUES (42, 7, '金融与投资');
INSERT INTO `typeType` VALUES (43, 7, '管理');
INSERT INTO `typeType` VALUES (44, 7, '励志与成功');
INSERT INTO `typeType` VALUES (46, 8, '生活');
INSERT INTO `typeType` VALUES (47, 8, '健身与保健');
INSERT INTO `typeType` VALUES (48, 8, '家庭与育儿');
INSERT INTO `typeType` VALUES (49, 8, '旅游');
INSERT INTO `typeType` VALUES (50, 8, '动漫/幽默');
INSERT INTO `typeType` VALUES (52, 9, '科技');
INSERT INTO `typeType` VALUES (53, 9, '工程');
INSERT INTO `typeType` VALUES (54, 9, '建筑');
INSERT INTO `typeType` VALUES (55, 9, '医学');
INSERT INTO `typeType` VALUES (56, 9, '科学与自然');
INSERT INTO `typeType` VALUES (57, 9, '计算机与互联网');
INSERT INTO `typeType` VALUES (58, 9, '体育/运动');
INSERT INTO `typeType` VALUES (60, 10, '教材教辅');
INSERT INTO `typeType` VALUES (61, 10, '教育与考试');
INSERT INTO `typeType` VALUES (62, 10, '外语学习');
INSERT INTO `typeType` VALUES (63, 10, '新闻出版');
INSERT INTO `typeType` VALUES (64, 10, '语言文字');
INSERT INTO `typeType` VALUES (66, 11, '艺术/设计/收藏');
INSERT INTO `typeType` VALUES (67, 11, '经济管理');
INSERT INTO `typeType` VALUES (68, 11, '文化/学术');
INSERT INTO `typeType` VALUES (69, 11, '少儿文学/国学');
INSERT INTO `typeType` VALUES (71, 12, '工具书');
INSERT INTO `typeType` VALUES (72, 12, '影印版');
INSERT INTO `typeType` VALUES (73, 12, '套装书');
INSERT INTO `typeType` VALUES (76, 14, '平板电视');
INSERT INTO `typeType` VALUES (77, 14, '空调');
INSERT INTO `typeType` VALUES (78, 14, '冰箱');
INSERT INTO `typeType` VALUES (79, 14, '洗衣机');
INSERT INTO `typeType` VALUES (80, 14, '家庭影院');
INSERT INTO `typeType` VALUES (81, 14, 'DVD播放机');
INSERT INTO `typeType` VALUES (82, 14, '迷你音响');
INSERT INTO `typeType` VALUES (83, 14, '烟机/灶具');
INSERT INTO `typeType` VALUES (84, 14, '热水器');
INSERT INTO `typeType` VALUES (85, 14, '消毒柜/洗碗机');
INSERT INTO `typeType` VALUES (86, 14, '酒柜/冰吧/冷柜');
INSERT INTO `typeType` VALUES (87, 14, '家电配件');
INSERT INTO `typeType` VALUES (88, 14, '家电下乡');
INSERT INTO `typeType` VALUES (89, 15, '电风扇');
INSERT INTO `typeType` VALUES (91, 15, '冷风扇');
INSERT INTO `typeType` VALUES (92, 15, '净化器');
INSERT INTO `typeType` VALUES (93, 15, '饮水机');
INSERT INTO `typeType` VALUES (94, 15, '净水设备');
INSERT INTO `typeType` VALUES (95, 15, '挂烫机/熨斗');
INSERT INTO `typeType` VALUES (96, 15, '吸尘器');
INSERT INTO `typeType` VALUES (97, 15, '电话机');
INSERT INTO `typeType` VALUES (98, 15, '插座');
INSERT INTO `typeType` VALUES (99, 15, '收录/音机');
INSERT INTO `typeType` VALUES (100, 15, '清洁机');
INSERT INTO `typeType` VALUES (101, 15, '加湿器');
INSERT INTO `typeType` VALUES (102, 15, '除湿机');
INSERT INTO `typeType` VALUES (103, 15, '取暖电器');
INSERT INTO `typeType` VALUES (104, 15, '其它生活电器');
INSERT INTO `typeType` VALUES (105, 15, '扫地机器人');
INSERT INTO `typeType` VALUES (106, 15, '干衣机');
INSERT INTO `typeType` VALUES (107, 15, '生活电器配件');
INSERT INTO `typeType` VALUES (109, 16, '料理/榨汁机');
INSERT INTO `typeType` VALUES (110, 16, '豆浆机');
INSERT INTO `typeType` VALUES (111, 16, '电饭煲');
INSERT INTO `typeType` VALUES (112, 16, '电压力锅');
INSERT INTO `typeType` VALUES (113, 16, '面包机');
INSERT INTO `typeType` VALUES (114, 16, '咖啡机');
INSERT INTO `typeType` VALUES (115, 16, '微波炉');
INSERT INTO `typeType` VALUES (116, 16, '电烤箱');
INSERT INTO `typeType` VALUES (117, 16, '电磁炉');
INSERT INTO `typeType` VALUES (118, 16, '电饼铛/烧烤盘');
INSERT INTO `typeType` VALUES (119, 16, '煮蛋器');
INSERT INTO `typeType` VALUES (120, 16, '酸奶机');
INSERT INTO `typeType` VALUES (121, 16, '电炖锅');
INSERT INTO `typeType` VALUES (122, 16, '电水壶/热水瓶');
INSERT INTO `typeType` VALUES (123, 16, '多用途锅');
INSERT INTO `typeType` VALUES (124, 16, '果蔬解毒机');
INSERT INTO `typeType` VALUES (125, 16, '其它厨房电器');
INSERT INTO `typeType` VALUES (127, 17, '剃须刀');
INSERT INTO `typeType` VALUES (128, 17, '剃/脱毛器');
INSERT INTO `typeType` VALUES (129, 17, '口腔护理');
INSERT INTO `typeType` VALUES (130, 17, '电吹风');
INSERT INTO `typeType` VALUES (131, 17, '美容器');
INSERT INTO `typeType` VALUES (132, 17, '美发器');
INSERT INTO `typeType` VALUES (133, 17, '按摩椅');
INSERT INTO `typeType` VALUES (134, 17, '按摩器');
INSERT INTO `typeType` VALUES (135, 17, '足浴盆');
INSERT INTO `typeType` VALUES (136, 17, '血压计');
INSERT INTO `typeType` VALUES (137, 17, '健康秤/厨房秤');
INSERT INTO `typeType` VALUES (138, 17, '血糖仪');
INSERT INTO `typeType` VALUES (139, 17, '体温计');
INSERT INTO `typeType` VALUES (140, 17, '计步器/脂肪检测仪');
INSERT INTO `typeType` VALUES (141, 17, '其它健康电器');
INSERT INTO `typeType` VALUES (143, 18, '电动工具');
INSERT INTO `typeType` VALUES (144, 18, '手动工具');
INSERT INTO `typeType` VALUES (145, 18, '仪器仪表');
INSERT INTO `typeType` VALUES (146, 18, '浴霸/排气扇');
INSERT INTO `typeType` VALUES (147, 18, '灯具');
INSERT INTO `typeType` VALUES (148, 18, 'LED灯');
INSERT INTO `typeType` VALUES (149, 18, '洁身器');
INSERT INTO `typeType` VALUES (150, 18, '水槽');
INSERT INTO `typeType` VALUES (151, 18, '龙头');
INSERT INTO `typeType` VALUES (152, 18, '淋浴花洒');
INSERT INTO `typeType` VALUES (153, 18, '厨卫五金');
INSERT INTO `typeType` VALUES (154, 18, '家具五金');
INSERT INTO `typeType` VALUES (155, 18, '门铃');
INSERT INTO `typeType` VALUES (156, 18, '电气开关');
INSERT INTO `typeType` VALUES (157, 18, '插座');
INSERT INTO `typeType` VALUES (158, 18, '电工电料');
INSERT INTO `typeType` VALUES (159, 18, '监控安防');
INSERT INTO `typeType` VALUES (160, 18, '电线/线缆');
INSERT INTO `typeType` VALUES (163, 19, '笔记本');
INSERT INTO `typeType` VALUES (164, 19, '超极本');
INSERT INTO `typeType` VALUES (165, 19, '游戏本');
INSERT INTO `typeType` VALUES (166, 19, '平板电脑');
INSERT INTO `typeType` VALUES (167, 19, '平板电脑配件');
INSERT INTO `typeType` VALUES (168, 19, '台式机');
INSERT INTO `typeType` VALUES (169, 19, '服务器/工作站');
INSERT INTO `typeType` VALUES (170, 19, '笔记本配件');
INSERT INTO `typeType` VALUES (172, 20, 'CPU');
INSERT INTO `typeType` VALUES (173, 20, '主板');
INSERT INTO `typeType` VALUES (174, 20, '显卡');
INSERT INTO `typeType` VALUES (175, 20, '硬盘');
INSERT INTO `typeType` VALUES (176, 20, 'SSD固态硬盘');
INSERT INTO `typeType` VALUES (177, 20, '内存');
INSERT INTO `typeType` VALUES (178, 20, '机箱');
INSERT INTO `typeType` VALUES (179, 20, '电源');
INSERT INTO `typeType` VALUES (180, 20, '显示器');
INSERT INTO `typeType` VALUES (181, 20, '刻录机/光驱');
INSERT INTO `typeType` VALUES (182, 20, '散热器');
INSERT INTO `typeType` VALUES (183, 20, '声卡/扩展卡');
INSERT INTO `typeType` VALUES (184, 20, '装机配件');
INSERT INTO `typeType` VALUES (185, 20, '组装电脑');
INSERT INTO `typeType` VALUES (187, 21, '移动硬盘');
INSERT INTO `typeType` VALUES (188, 21, 'U盘');
INSERT INTO `typeType` VALUES (189, 21, '鼠标');
INSERT INTO `typeType` VALUES (190, 21, '键盘');
INSERT INTO `typeType` VALUES (191, 21, '鼠标垫');
INSERT INTO `typeType` VALUES (192, 21, '摄像头');
INSERT INTO `typeType` VALUES (193, 21, '手写板');
INSERT INTO `typeType` VALUES (194, 21, '外置盒');
INSERT INTO `typeType` VALUES (195, 21, '插座');
INSERT INTO `typeType` VALUES (196, 21, '线缆');
INSERT INTO `typeType` VALUES (197, 21, 'UPS电源');
INSERT INTO `typeType` VALUES (198, 21, '电脑工具');
INSERT INTO `typeType` VALUES (199, 21, '游戏设备');
INSERT INTO `typeType` VALUES (200, 21, '电玩');
INSERT INTO `typeType` VALUES (201, 21, '电脑清洁');
INSERT INTO `typeType` VALUES (203, 22, '路由器');
INSERT INTO `typeType` VALUES (204, 22, '网卡');
INSERT INTO `typeType` VALUES (205, 22, '交换机');
INSERT INTO `typeType` VALUES (206, 22, '网络存储');
INSERT INTO `typeType` VALUES (207, 22, '4G/3G上网');
INSERT INTO `typeType` VALUES (208, 22, '网络盒子');
INSERT INTO `typeType` VALUES (209, 22, '网络配件');
INSERT INTO `typeType` VALUES (211, 23, '投影机');
INSERT INTO `typeType` VALUES (212, 23, '投影配件');
INSERT INTO `typeType` VALUES (213, 23, '多功能一体机');
INSERT INTO `typeType` VALUES (214, 23, '打印机');
INSERT INTO `typeType` VALUES (215, 23, '传真设备');
INSERT INTO `typeType` VALUES (216, 23, '验钞/点钞机');
INSERT INTO `typeType` VALUES (217, 23, '扫描设备');
INSERT INTO `typeType` VALUES (218, 23, '复合机');
INSERT INTO `typeType` VALUES (219, 23, '碎纸机');
INSERT INTO `typeType` VALUES (220, 23, '考勤机');
INSERT INTO `typeType` VALUES (221, 23, '墨粉');
INSERT INTO `typeType` VALUES (222, 23, '收款/POS机');
INSERT INTO `typeType` VALUES (223, 23, '会议音频视频');
INSERT INTO `typeType` VALUES (224, 23, '保险柜');
INSERT INTO `typeType` VALUES (225, 23, '装订/封装机');
INSERT INTO `typeType` VALUES (226, 23, '安防监控');
INSERT INTO `typeType` VALUES (227, 23, '办公家具');
INSERT INTO `typeType` VALUES (228, 23, '白板');
INSERT INTO `typeType` VALUES (230, 24, '硒鼓/墨粉');
INSERT INTO `typeType` VALUES (231, 24, '墨盒');
INSERT INTO `typeType` VALUES (232, 24, '色带');
INSERT INTO `typeType` VALUES (233, 24, '纸类');
INSERT INTO `typeType` VALUES (234, 24, '办公文具');
INSERT INTO `typeType` VALUES (235, 24, '学生文具');
INSERT INTO `typeType` VALUES (236, 24, '文件管理');
INSERT INTO `typeType` VALUES (237, 24, '财会用品');
INSERT INTO `typeType` VALUES (238, 24, '本册/便签');
INSERT INTO `typeType` VALUES (239, 24, '计算器');
INSERT INTO `typeType` VALUES (240, 24, '激光笔');
INSERT INTO `typeType` VALUES (241, 24, '笔类');
INSERT INTO `typeType` VALUES (242, 24, '画具画材');
INSERT INTO `typeType` VALUES (243, 24, '刻录碟片/附件');
INSERT INTO `typeType` VALUES (245, 25, '上门服务');
INSERT INTO `typeType` VALUES (246, 25, '远程服务');
INSERT INTO `typeType` VALUES (247, 25, '电脑软件');
INSERT INTO `typeType` VALUES (248, 25, '京东服务');
INSERT INTO `typeType` VALUES (251, 26, '清洁');
INSERT INTO `typeType` VALUES (252, 26, '护肤');
INSERT INTO `typeType` VALUES (253, 26, '面膜');
INSERT INTO `typeType` VALUES (254, 26, '剃须');
INSERT INTO `typeType` VALUES (255, 26, '套装');
INSERT INTO `typeType` VALUES (257, 27, '沐浴');
INSERT INTO `typeType` VALUES (258, 27, '润肤');
INSERT INTO `typeType` VALUES (259, 27, '颈部');
INSERT INTO `typeType` VALUES (260, 27, '手足');
INSERT INTO `typeType` VALUES (261, 27, '纤体塑形');
INSERT INTO `typeType` VALUES (262, 27, '美胸');
INSERT INTO `typeType` VALUES (263, 27, '套装');
INSERT INTO `typeType` VALUES (265, 28, '牙膏/牙粉');
INSERT INTO `typeType` VALUES (266, 28, '牙刷/牙线');
INSERT INTO `typeType` VALUES (267, 28, '漱口水');
INSERT INTO `typeType` VALUES (268, 28, '套装');
INSERT INTO `typeType` VALUES (270, 29, '卫生巾');
INSERT INTO `typeType` VALUES (271, 29, '卫生护垫');
INSERT INTO `typeType` VALUES (272, 29, '私密护理');
INSERT INTO `typeType` VALUES (273, 29, '脱毛膏');
INSERT INTO `typeType` VALUES (275, 30, '洗发');
INSERT INTO `typeType` VALUES (276, 30, '护发');
INSERT INTO `typeType` VALUES (277, 30, '染发');
INSERT INTO `typeType` VALUES (278, 30, '造型');
INSERT INTO `typeType` VALUES (279, 30, '假发');
INSERT INTO `typeType` VALUES (280, 30, '套装');
INSERT INTO `typeType` VALUES (282, 31, '香水');
INSERT INTO `typeType` VALUES (283, 31, '底妆');
INSERT INTO `typeType` VALUES (284, 31, '腮红');
INSERT INTO `typeType` VALUES (285, 31, '眼部');
INSERT INTO `typeType` VALUES (286, 31, '唇部');
INSERT INTO `typeType` VALUES (287, 31, '美甲');
INSERT INTO `typeType` VALUES (288, 31, '美容工具');
INSERT INTO `typeType` VALUES (289, 31, '套装');
INSERT INTO `typeType` VALUES (291, 32, '钟表');
INSERT INTO `typeType` VALUES (292, 32, '男表');
INSERT INTO `typeType` VALUES (293, 32, '女表');
INSERT INTO `typeType` VALUES (294, 32, '儿童手表');
INSERT INTO `typeType` VALUES (295, 32, '座钟挂钟');
INSERT INTO `typeType` VALUES (298, 33, '婴幼奶粉');
INSERT INTO `typeType` VALUES (299, 33, '成人奶粉');
INSERT INTO `typeType` VALUES (301, 34, '益生菌/初乳');
INSERT INTO `typeType` VALUES (302, 34, '米粉/菜粉');
INSERT INTO `typeType` VALUES (303, 34, '果泥/果汁');
INSERT INTO `typeType` VALUES (304, 34, 'DHA');
INSERT INTO `typeType` VALUES (305, 34, '宝宝零食');
INSERT INTO `typeType` VALUES (306, 34, '钙铁锌/维生素');
INSERT INTO `typeType` VALUES (307, 34, '清火/开胃');
INSERT INTO `typeType` VALUES (308, 34, '面条/粥');
INSERT INTO `typeType` VALUES (310, 35, '婴儿尿裤');
INSERT INTO `typeType` VALUES (311, 35, '拉拉裤');
INSERT INTO `typeType` VALUES (312, 35, '湿巾');
INSERT INTO `typeType` VALUES (313, 35, '成人尿裤');
INSERT INTO `typeType` VALUES (315, 36, '奶瓶奶嘴');
INSERT INTO `typeType` VALUES (316, 36, '吸奶器');
INSERT INTO `typeType` VALUES (317, 36, '暖奶消毒');
INSERT INTO `typeType` VALUES (318, 36, '碗盘叉勺');
INSERT INTO `typeType` VALUES (319, 36, '水壶/水杯');
INSERT INTO `typeType` VALUES (320, 36, '牙胶安抚');
INSERT INTO `typeType` VALUES (321, 36, '辅食料理机');
INSERT INTO `typeType` VALUES (323, 37, '宝宝护肤');
INSERT INTO `typeType` VALUES (324, 37, '宝宝洗浴');
INSERT INTO `typeType` VALUES (325, 37, '奶瓶清洗');
INSERT INTO `typeType` VALUES (326, 37, '驱蚊防蚊');
INSERT INTO `typeType` VALUES (327, 37, '理发器');
INSERT INTO `typeType` VALUES (328, 37, '洗衣液/皂');
INSERT INTO `typeType` VALUES (329, 37, '日常护理');
INSERT INTO `typeType` VALUES (330, 37, '座便器');
INSERT INTO `typeType` VALUES (332, 38, '婴儿推车');
INSERT INTO `typeType` VALUES (333, 38, '餐椅摇椅');
INSERT INTO `typeType` VALUES (334, 38, '婴儿床');
INSERT INTO `typeType` VALUES (335, 38, '学步车');
INSERT INTO `typeType` VALUES (336, 38, '三轮车');
INSERT INTO `typeType` VALUES (337, 38, '自行车');
INSERT INTO `typeType` VALUES (338, 38, '电动车');
INSERT INTO `typeType` VALUES (339, 38, '扭扭车');
INSERT INTO `typeType` VALUES (340, 38, '滑板车');
INSERT INTO `typeType` VALUES (342, 39, '婴儿外出服');
INSERT INTO `typeType` VALUES (343, 39, '婴儿内衣');
INSERT INTO `typeType` VALUES (344, 39, '婴儿礼盒');
INSERT INTO `typeType` VALUES (345, 39, '婴儿鞋帽袜');
INSERT INTO `typeType` VALUES (346, 39, '安全防护');
INSERT INTO `typeType` VALUES (347, 39, '家居床品');
INSERT INTO `typeType` VALUES (349, 40, '妈咪包/背婴带');
INSERT INTO `typeType` VALUES (350, 40, '产后塑身');
INSERT INTO `typeType` VALUES (351, 40, '文胸/内裤');
INSERT INTO `typeType` VALUES (352, 40, '防辐射服');
INSERT INTO `typeType` VALUES (353, 40, '孕妇装');
INSERT INTO `typeType` VALUES (354, 40, '孕期营养');
INSERT INTO `typeType` VALUES (355, 40, '孕妈美容');
INSERT INTO `typeType` VALUES (356, 40, '待产/新生');
INSERT INTO `typeType` VALUES (357, 40, '月子装');
INSERT INTO `typeType` VALUES (359, 41, '套装');
INSERT INTO `typeType` VALUES (360, 41, '上衣');
INSERT INTO `typeType` VALUES (361, 41, '裤子');
INSERT INTO `typeType` VALUES (362, 41, '裙子');
INSERT INTO `typeType` VALUES (363, 41, '内衣/家居服');
INSERT INTO `typeType` VALUES (364, 41, '羽绒服/棉服');
INSERT INTO `typeType` VALUES (365, 41, '亲子装');
INSERT INTO `typeType` VALUES (366, 41, '儿童配饰');
INSERT INTO `typeType` VALUES (367, 41, '礼服/演出服');
INSERT INTO `typeType` VALUES (368, 41, '运动鞋');
INSERT INTO `typeType` VALUES (369, 41, '皮鞋/帆布鞋');
INSERT INTO `typeType` VALUES (370, 41, '靴子');
INSERT INTO `typeType` VALUES (371, 41, '凉鞋');
INSERT INTO `typeType` VALUES (372, 41, '功能鞋');
INSERT INTO `typeType` VALUES (373, 41, '户外/运动服');
INSERT INTO `typeType` VALUES (375, 42, '提篮式');
INSERT INTO `typeType` VALUES (376, 42, '安全座椅');
INSERT INTO `typeType` VALUES (377, 42, '增高垫');
INSERT INTO `typeType` VALUES (380, 43, '饼干蛋糕');
INSERT INTO `typeType` VALUES (381, 43, '糖果/巧克力');
INSERT INTO `typeType` VALUES (382, 43, '休闲零食');
INSERT INTO `typeType` VALUES (383, 43, '冲调饮品');
INSERT INTO `typeType` VALUES (384, 43, '粮油调味');
INSERT INTO `typeType` VALUES (385, 43, '牛奶');
INSERT INTO `typeType` VALUES (387, 44, '其他特产');
INSERT INTO `typeType` VALUES (388, 44, '新疆');
INSERT INTO `typeType` VALUES (389, 44, '北京');
INSERT INTO `typeType` VALUES (390, 44, '山西');
INSERT INTO `typeType` VALUES (391, 44, '内蒙古');
INSERT INTO `typeType` VALUES (392, 44, '福建');
INSERT INTO `typeType` VALUES (393, 44, '湖南');
INSERT INTO `typeType` VALUES (394, 44, '四川');
INSERT INTO `typeType` VALUES (395, 44, '云南');
INSERT INTO `typeType` VALUES (396, 44, '东北');
INSERT INTO `typeType` VALUES (398, 45, '休闲零食');
INSERT INTO `typeType` VALUES (399, 45, '坚果炒货');
INSERT INTO `typeType` VALUES (400, 45, '肉干肉脯');
INSERT INTO `typeType` VALUES (401, 45, '蜜饯果干');
INSERT INTO `typeType` VALUES (402, 45, '糖果/巧克力');
INSERT INTO `typeType` VALUES (403, 45, '饼干蛋糕');
INSERT INTO `typeType` VALUES (404, 45, '无糖食品');
INSERT INTO `typeType` VALUES (406, 46, '米面杂粮');
INSERT INTO `typeType` VALUES (407, 46, '食用油');
INSERT INTO `typeType` VALUES (408, 46, '调味品');
INSERT INTO `typeType` VALUES (409, 46, '南北干货');
INSERT INTO `typeType` VALUES (410, 46, '方便食品');
INSERT INTO `typeType` VALUES (411, 46, '有机食品');
INSERT INTO `typeType` VALUES (413, 47, '饮用水');
INSERT INTO `typeType` VALUES (414, 47, '饮料');
INSERT INTO `typeType` VALUES (415, 47, '牛奶乳品');
INSERT INTO `typeType` VALUES (416, 47, '咖啡/奶茶');
INSERT INTO `typeType` VALUES (417, 47, '冲饮谷物');
INSERT INTO `typeType` VALUES (418, 47, '蜂蜜/柚子茶');
INSERT INTO `typeType` VALUES (419, 47, '成人奶粉');
INSERT INTO `typeType` VALUES (421, 48, '月饼');
INSERT INTO `typeType` VALUES (422, 48, '大闸蟹');
INSERT INTO `typeType` VALUES (423, 48, '粽子');
INSERT INTO `typeType` VALUES (424, 48, '卡券');
INSERT INTO `typeType` VALUES (426, 49, '铁观音');
INSERT INTO `typeType` VALUES (427, 49, '普洱');
INSERT INTO `typeType` VALUES (428, 49, '龙井');
INSERT INTO `typeType` VALUES (429, 49, '绿茶');
INSERT INTO `typeType` VALUES (430, 49, '红茶');
INSERT INTO `typeType` VALUES (431, 49, '乌龙茶');
INSERT INTO `typeType` VALUES (432, 49, '花草茶');
INSERT INTO `typeType` VALUES (433, 49, '花果茶');
INSERT INTO `typeType` VALUES (434, 49, '养生茶');
INSERT INTO `typeType` VALUES (435, 49, '黑茶');
INSERT INTO `typeType` VALUES (436, 49, '白茶');
INSERT INTO `typeType` VALUES (437, 49, '其它茶');
INSERT INTO `typeType` VALUES (440, 50, '润滑油');
INSERT INTO `typeType` VALUES (441, 50, '添加剂');
INSERT INTO `typeType` VALUES (442, 50, '防冻液');
INSERT INTO `typeType` VALUES (443, 50, '滤清器');
INSERT INTO `typeType` VALUES (444, 50, '火花塞');
INSERT INTO `typeType` VALUES (445, 50, '雨刷');
INSERT INTO `typeType` VALUES (446, 50, '车灯');
INSERT INTO `typeType` VALUES (447, 50, '后视镜');
INSERT INTO `typeType` VALUES (448, 50, '轮胎');
INSERT INTO `typeType` VALUES (449, 50, '轮毂');
INSERT INTO `typeType` VALUES (450, 50, '刹车片/盘');
INSERT INTO `typeType` VALUES (451, 50, '喇叭/皮带');
INSERT INTO `typeType` VALUES (452, 50, '蓄电池');
INSERT INTO `typeType` VALUES (453, 50, '底盘装甲/护板');
INSERT INTO `typeType` VALUES (454, 50, '贴膜');
INSERT INTO `typeType` VALUES (455, 50, '汽修工具');
INSERT INTO `typeType` VALUES (457, 51, '导航仪');
INSERT INTO `typeType` VALUES (458, 51, '安全预警仪');
INSERT INTO `typeType` VALUES (459, 51, '行车记录仪');
INSERT INTO `typeType` VALUES (460, 51, '倒车雷达');
INSERT INTO `typeType` VALUES (461, 51, '蓝牙设备');
INSERT INTO `typeType` VALUES (462, 51, '时尚影音');
INSERT INTO `typeType` VALUES (463, 51, '净化器');
INSERT INTO `typeType` VALUES (464, 51, '电源');
INSERT INTO `typeType` VALUES (465, 51, '冰箱');
INSERT INTO `typeType` VALUES (466, 51, '吸尘器');
INSERT INTO `typeType` VALUES (468, 52, '车蜡');
INSERT INTO `typeType` VALUES (469, 52, '补漆笔');
INSERT INTO `typeType` VALUES (470, 52, '玻璃水');
INSERT INTO `typeType` VALUES (471, 52, '清洁剂');
INSERT INTO `typeType` VALUES (472, 52, '洗车工具');
INSERT INTO `typeType` VALUES (473, 52, '洗车配件');
INSERT INTO `typeType` VALUES (475, 53, '脚垫');
INSERT INTO `typeType` VALUES (476, 53, '座垫');
INSERT INTO `typeType` VALUES (477, 53, '座套');
INSERT INTO `typeType` VALUES (478, 53, '后备箱垫');
INSERT INTO `typeType` VALUES (479, 53, '头枕腰靠');
INSERT INTO `typeType` VALUES (480, 53, '香水');
INSERT INTO `typeType` VALUES (481, 53, '空气净化');
INSERT INTO `typeType` VALUES (482, 53, '车内饰品');
INSERT INTO `typeType` VALUES (483, 53, '功能小件');
INSERT INTO `typeType` VALUES (484, 53, '车身装饰件');
INSERT INTO `typeType` VALUES (485, 53, '车衣');
INSERT INTO `typeType` VALUES (487, 54, '安全座椅');
INSERT INTO `typeType` VALUES (488, 54, '胎压充气');
INSERT INTO `typeType` VALUES (489, 54, '防盗设备');
INSERT INTO `typeType` VALUES (490, 54, '应急救援');
INSERT INTO `typeType` VALUES (491, 54, '保温箱');
INSERT INTO `typeType` VALUES (492, 54, '储物箱');
INSERT INTO `typeType` VALUES (493, 54, '自驾野营');
INSERT INTO `typeType` VALUES (494, 54, '摩托车装备');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, '曾俊达');
COMMIT;

-- ----------------------------
-- Table structure for userShopping
-- ----------------------------
DROP TABLE IF EXISTS `userShopping`;
CREATE TABLE `userShopping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `gnumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_uid` (`uid`),
  KEY `ugid_gid` (`gid`),
  CONSTRAINT `ugid_gid` FOREIGN KEY (`gid`) REFERENCES `goodsList` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `uid_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of userShopping
-- ----------------------------
BEGIN;
INSERT INTO `userShopping` VALUES (1, 1, 1, 1);
INSERT INTO `userShopping` VALUES (2, 1, 5, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
