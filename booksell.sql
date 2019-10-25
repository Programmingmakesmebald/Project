/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : booksell

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2019-10-20 19:04:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admininfo
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo` (
  `AdminId` bigint(20) DEFAULT NULL,
  `AdminName` longtext,
  `AdminNum` varchar(60) DEFAULT NULL,
  `APassword` varchar(144) DEFAULT NULL,
  `School` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admininfo
-- ----------------------------
INSERT INTO `admininfo` VALUES ('1', '小xun', '15032132565', '123', '1');
INSERT INTO `admininfo` VALUES ('2', 'sssd', '15532175718', '123', '12');

-- ----------------------------
-- Table structure for bookinfo
-- ----------------------------
DROP TABLE IF EXISTS `bookinfo`;
CREATE TABLE `bookinfo` (
  `bookid` int(11) NOT NULL AUTO_INCREMENT,
  `seller` int(8) NOT NULL,
  `typeid` int(10) NOT NULL,
  `price` double(10,0) NOT NULL,
  `booktext` text,
  `frequency` int(8) DEFAULT NULL,
  `bookname` text NOT NULL,
  `path` longtext,
  `bookstate` int(2) DEFAULT NULL,
  `booktime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookinfo
-- ----------------------------
INSERT INTO `bookinfo` VALUES ('50', '1', '402', '24', '计算机等级考试二级', '1', '计算机等级考试二级', '/image/IMG_20191008_085303.jpg,', '0', '2019-10-20 16:08:10');
INSERT INTO `bookinfo` VALUES ('51', '1', '402', '30', '2019高教版计算机等级考试二级', '0', '高教版计算机等级考试二级', '/image/IMG_20191008_085424.jpg,', '3', '2019-10-20 16:09:34');
INSERT INTO `bookinfo` VALUES ('52', '1', '402', '10', '计算机等级考试二级中的办公软件2019新版图书高效办公一本通。。。', '0', '高效办公一本通', '/image/IMG_20191008_085443.jpg,', '1', '2019-10-20 16:11:15');
INSERT INTO `bookinfo` VALUES ('53', '1', '402', '37', '七合一超级无敌版本的计算机等级考试二级！！！！', '0', '计算机二级', '/image/IMG_20191008_085508.jpg,', '0', '2019-10-20 16:12:06');
INSERT INTO `bookinfo` VALUES ('54', '1', '500', '34', '新手学电脑从入门到精通，电脑小白轻松秒变电脑专家。。。。', '0', '新手学电脑从入门到精通', '/image/IMG_20191008_085526.jpg,', '0', '2019-10-20 16:13:14');
INSERT INTO `bookinfo` VALUES ('55', '1', '401', '33', '05-19年英语--真题厚度\r\n讲义合集\r\n9%\r\n电动风隧育度有\r\n赠\r\n历年考研英语\r\n历年考研英语\r\n考研英语大纲同汇\r\n真题解折及复习思路真题解析及湖习思路\r\n考研英持高分宝典\r\n超级背埔宝典\r\n(配Q版)\r\n其章村点中规度邮让\r\n! 2015 2019\r\n205-3014-服高\r\n名行无神点\r\n世纪高教编锅体\r\n世配高我回辑售\r\n可鸡您时对家雪场量\r\n世纪高教骗精起\r\n赠25-201\r\n世纪高鞋编辑都\r\n进车包有6限公司\r\nGo时EHEVE\r\n10套真题专\r\nSofEreve\r\n真题分册装订-精编版/试卷版\r\n赠送两本英语宝典\r\n', '0', '05-19英语真题', '/image/IMG_20191008_085547.jpg,', '0', '2019-10-20 16:14:48');
INSERT INTO `bookinfo` VALUES ('56', '1', '401', '20', 'Spark星火\"英语\r\n专业，让学习简单\r\n备考2020\r\n含2019年真题+详解\r\n星火英语\r\nSpark\r\n刷题8年\r\nKeep\r\n1997-2004年真题试卷\r\nSimple\r\nStupid\r\nKISS考研英语(一)\r\n基础8年\r\n2005- 2012真题+详解\r\n艾考学习包\r\nTet改变学习方式 倡导智慧学习\r\n回+回回\r\n强化7年\r\nK2S让电位值办交活单\r\n2013-2019真题+详解\r\n专项4册\r\n高频词长难句规划写作\r\n要详细解析，还要节约时间\r\n官方直营\r\n', '0', '星火英语', '/image/IMG_20191008_085605.jpg,', '0', '2019-10-20 16:15:49');
INSERT INTO `bookinfo` VALUES ('57', '1', '401', '50', '2020.易禾文化\r\n菜\r\n研究生入学统一考试辅导用书\r\n必\r\n扫试题右侧二维码听外教读真题\r\n爱0089的哈05号心幻0行\r\n易禾文化\r\n考研英语历年真题详解\r\n真题百练\r\n易禾文化考研英语试题研究中心\r\n试题科目:英语(-)\r\n科目代码201\r\n主编:张艳红\r\n试题年份:二十年 _\r\n考生编号:\r\n副主编:王燕辉刘安军\r\n报考单位:\r\n挖掘题源，掌握真题出处\r\n详解真题，总结出题规律\r\n剖析语篇，洞恶行文逻辑\r\n东北大学出版社\r\n[20年真题详解]\r\n', '0', '考研英语历年真题详解', '/image/IMG_20191008_085641.jpg,', '0', '2019-10-20 16:16:35');
INSERT INTO `bookinfo` VALUES ('58', '1', '401', '67', '2020版\r\n最新版\r\n红\r\n宝\r\n红宝书\r\n红宝书\r\n书\r\n[红宝书是学义出督公\r\n考研英语词汇\r\n必考词+基础词+超纲词\r\n考\r\n考研英语词汇\r\n配套练习题及答案解析\r\n研\r\n*本满和出情。\r\n英\r\n必考词+基础词+超纲词\r\n天地图书助考系列之日\r\n语\r\n赠二\r\n词\r\n红宝书\r\n1高效记忆首选料\r\n。\r\n考研英语\r\n.紧扣大纲考点安\r\n长难句破解秘籍\r\n汇\r\n”\r\nF\r\n甄选真题长难句\r\n红宝韦\r\n红宝书\r\n红宝书\r\n考研英语\r\n考研英语词\r\n考研英语词\r\n必考调+基础闲+啡\r\n出\r\n连线自测\r\n精缩版\r\n串记手册\r\nH\r\n调\r\n钢\r\n词\r\n实物赠品\r\n配套APP \r\n羁口\r\n送长难句秘籍配套APP\r\n', '0', '红宝书', '/image/IMG_20191008_085716.jpg,', '0', '2019-10-20 16:17:41');
INSERT INTO `bookinfo` VALUES ('59', '1', '401', '22', '考\r\n研\r\n阅\r\n读\r\n考研究\r\n考\r\n研\r\n阅\r\n读\r\n考研\r\n考\r\n2020\r\n华研外语\r\n研\r\n答题正\r\n1类\r\n100篇标准员\r\n上读\r\n考研英语阅读\r\n解析详尽，附图\r\n看懂文这\r\n, 150篇\r\n30篇阅读分段讲1\r\n上海交通大学\r\nDo\r\n7大题型剖析.1\r\n看不懂文章?一\r\n20篇真题句句分析,逐词讲解,积累词汇\r\n句法知识16讲.零基础也能读懂长难句\r\n领券再减\r\n正版\r\n满198减30满338减50\r\n授权专卖\r\n', '0', '考研英语阅读', '/image/IMG_20191008_085732.jpg,', '0', '2019-10-20 16:18:24');
INSERT INTO `bookinfo` VALUES ('60', '1', '401', '33', '数学一真题\r\n音遠國書\r\n2005-2019年\r\n全国硕士研究生招生考试\r\n晉遠国書\r\n真题真练\r\n1.真题是最好的练习题，\r\n试题科目:\r\n数学(一)\r\n使\r\n建议考生:平时调练使用时\r\n重过程。多机累:后期冲刺\r\n科目代码:\r\n301\r\n用\r\n使用时时间选择在上午的\r\n试题年份:\r\n2005 2019\r\n说\r\n8:30-11:30\r\n考生编号:\r\n明\r\n3. 冲刺使用时，控制好时间，\r\n在规定的时间内完成。热后\r\n再对照答案。\r\n报考单位:\r\na\r\n东北师范大学出版社\r\nHRE ASTIOMA UIVERSITYNES\r\n1995\r\n送\r\n2004\r\nPDF\r\n赠电子版答题卡\r\n联系客服赠1995-2004真题及答案电子版\r\n', '0', '真题真练', '/image/IMG_20191008_085748.jpg,', '0', '2019-10-20 16:19:07');
INSERT INTO `bookinfo` VALUES ('61', '1', '401', '455', '2020汤家凤历年真题\r\n文都教育\r\n文都教育\r\n数学号\r\n历年\r\n历年真题全解析\r\nMATHE\r\nMATHEMATICS\r\n策划O文都考研数学\r\n策划O文都考研数学命题研究组\r\n编著汤家凤\r\n编著口汤家凤\r\n数学三\r\n数学归\r\nPDF电子版实物\r\n随机赠1本\r\nZUZU\r\n考研数学\r\n文都考研\r\n\"下期\r\n考研c.\r\n实用复习指\r\n数学精选108题\r\n2020\r\n合工大五套卷\r\n额斗笔记\r\n考研数学视频\r\n含答案及解析\r\n', '0', '历年真题全解析', '/image/IMG_20191008_085811.jpg,', '0', '2019-10-20 16:19:46');
INSERT INTO `bookinfo` VALUES ('62', '1', '401', '36', '2020李永乐真题全精解析\r\n金榜图书\r\n全国各大考研辅导机构通用教材\r\n2020\r\n李永乐，王式安考研数学系列\r\n数学历年真题\r\n试卷版\r\n07-19真题\r\n试\r\n全精解析\r\n数学一\r\n真题真练.试卷版\r\n” 口大判\r\n全排1研究生人学院址\r\n赠\r\n析\r\n数学真题\r\n本套试题!\r\n13张答题卡\r\n精讲视频\r\n', '0', '数学历年真题全精解析', '/image/IMG_20191008_085828.jpg,', '0', '2019-10-20 16:20:36');
INSERT INTO `bookinfo` VALUES ('63', '1', '401', '28', '历年考研数学\r\n真题解析及复习思路\r\n33年真题\r\nOr烂考研数学真顾复习系列\r\n: 2020\r\n历\r\n富教现\r\n数学三\r\n1987-2009\r\n历年考研数学\r\n23年真题及答案\r\n真题解析及复习思路\r\n数学三\r\n2010-2019\r\n(2010- -2019)\r\n考研数学命题研究组 情\r\n真题汇编及答案\r\n世纪高托编拌部\r\n备\r\n第(9)题\r\n命贮专家权威批写\r\n解析详尽妞致入微\r\n历年真题一同打尽\r\n试卷分册易测使携\r\n真题精讲视频\r\nI\r\n赠\r\n塔不用FE以公司\r\n世纪高教版考研数学命题研究组编\r\n', '0', '历年考研数学 真题解析及复习思路', '/image/IMG_20191008_085843.jpg,', '0', '2019-10-20 16:21:19');
INSERT INTO `bookinfo` VALUES ('64', '1', '401', '46', '商秀荣考研书系由国开出版社和家出版\r\n2020\r\n肖秀荣考研政治\r\n命题人\r\n| 终极预测4套卷\r\n重调肖秀荣\r\n正版书赠送配套音频及选择题详细解析\r\nCOlPPEAN\r\n微博固信金程等疑\r\nAPP者出值课\r\n防信公众号\r\nAPP二维码\r\n国家开放大学出版社\r\n', '0', '考研政治预测', '/image/IMG_20191008_085858.jpg,', '0', '2019-10-20 16:22:10');
INSERT INTO `bookinfo` VALUES ('65', '1', '401', '999', '只要999\r\n考研\r\n2020\r\n2020.考矸\r\n2020.考研政治\r\n通关\r\n通关\r\n优是优题库\r\n习题版解\r\n习题版\r\n试题册\r\n发\r\n主编:徐涛\r\n主编:徐涛\r\n副主编即航张舟检亮\r\n副主编:尊店保舟翰肉\r\ni\r\n考研政治\r\n◆中国政法大学出版社\r\n.中国政法大学出版社\r\n黄皮书\r\n涂涛通关优题库习题版\r\n', '0', '考研政治全集', '/image/IMG_20191008_085914.jpg,/image/IMG_20191008_085929.jpg,/image/IMG_20191008_085945.jpg,', '0', '2019-10-20 16:23:38');
INSERT INTO `bookinfo` VALUES ('66', '1', '401', '998', '只要998\r\n王道计算机考研系列\r\n王道销系列\r\n2020\r\n订商号王道在线\r\n新版\r\n年年年年\r\n数\r\n据\r\n组\r\n研\r\n原研\r\n理\r\n数据结构\r\n研\r\n操作系统\r\n2020年”\r\n操作系统\r\n组成原理\r\n考研复习指导\r\n计算机网络\r\n2020考研\r\n厂\r\n7\r\n版计算机历年真题\r\n电子版\r\nL\r\n买就送\r\n洗格题进解视频全色费\r\n', '0', '计算机考研全集', '/image/IMG_20191008_0fghg590013.jpg,', '0', '2019-10-20 16:26:07');
INSERT INTO `bookinfo` VALUES ('67', '1', '500', '22', '时尚RW R\r\nH\r\n胡歌\r\n认容世界\r\n新年时装\r\n一年轻菜一半胎\r\n喜妆\r\n温暖又性滤\r\n艺术家辛迪舍曼\r\n用自拍石世界\r\n', '0', '时尚杂志', '/image/IMG_20191008_085526.jpg,/image/IMG_20191008_090033.jpg,/image/IMG_20191008_090050.jpg,/image/IMG_20191008_090105.jpg,', '0', '2019-10-20 16:26:55');
INSERT INTO `bookinfo` VALUES ('68', '1', '500', '77', '出\r\n你\r\n若\r\n不\r\n你若不勇敢。\r\n勇\r\n敢\r\n谁替你坚强\r\n，\r\n微阳/编著\r\n谁\r\n替\r\n让未来的你，感谢现在不放弃的自己\r\n你\r\n坚\r\n强\r\n阳\r\n你的坚持，终将美好\r\n不怕千万人阻挡只怕自己投降\r\n愿你在输得起的年纪，遇见不放弃的自己\r\n如果你还有机会做梦，就别做弃创梦的机会。你要4万\r\n尽管黑夜漫长但是禁明总会到来，这福你可以便，但不能铺，\r\n中国草冶出双社\r\n', '0', '你若不勇敢。 勇 敢 谁替你坚强', '/image/IMG_20191008_090119.jpg,', '0', '2019-10-20 16:27:55');
INSERT INTO `bookinfo` VALUES ('69', '1', '500', '88', '最感动人的心灵读本\r\n解读人生困感的心灵启示\r\n最启发人的智慧锦囊:\r\n心\r\n指引人生情感的心灵航團\r\n灵\r\n心灵鸡汤\r\n鸡\r\n汤\r\n大全集\r\nG\r\n全\r\n集\r\n-部成就事业、提升智慧的心灵圣经\r\n南\r\n-都相伴一生、按摩情感的动志轻典\r\n海\r\n本书在手，人生从此无忧\r\n公\r\n南海出版公司\r\n司\r\n', '0', '心灵鸡汤大全集', '/image/IMG_20191008_090158.jpg,', '0', '2019-10-20 16:28:24');
INSERT INTO `bookinfo` VALUES ('70', '1', '500', '1', '放\r\n下\r\n放\r\n下\r\n笑\r\n莫\r\n学会放下，人生才精彩:坦然面对世事，提起来千斤原，放得下二\r\n两轻。知从容:潇活驰辆人生，事从容有余味，人从容有余年，学\r\n会放下，人生才精彩。\r\n亚\r\nC煤炭工业出版社\r\n', '0', '放心', '/image/IMG_20191008_090211.jpg,', '0', '2019-10-20 16:29:00');
INSERT INTO `bookinfo` VALUES ('71', '1', '500', '56', '看得远，忍得住吃得苦，才能着见更好的未来\r\n所\r\n为的\r\n有\r\n所有的努力\r\n努\r\n只为遇见更好的自己\r\n见\r\n更力\r\n好\r\n木槿著\r\n的\r\n己\r\n务所\r\n资有\r\n更好的自己，意味着足够强大和淡定，\r\n的\r\n森\r\n足以掌控生活、工作和幸福\r\n著\r\nTake A EHont, Oily 1o me。beter wot\r\n/\r\n力\r\n内在的强大力量禁通存自\r\n/\r\n张德芬、罗振宇、\r\n俞敏洪、章子怡、冯沦\r\n根类的人生成功法\r\n树\r\n台薄出从社\r\n', '0', '所有的努力只为遇见最好的自己', '/image/IMG_20191008_090251.jpg,', '0', '2019-10-20 16:30:52');
INSERT INTO `bookinfo` VALUES ('72', '1', '500', '98', '科技生活', '0', '科技生活全集', '/image/IMG_20191008_085303.jpg,/image/IMG_20191008_090323.jpg,/image/IMG_20191008_090339.jpg,/image/IMG_20191008_090351.jpg,/image/IMG_20191008_090403.jpg,', '0', '2019-10-20 16:31:45');
INSERT INTO `bookinfo` VALUES ('73', '1', '500', '45', '国学文汇意林', '1', '意林', '/image/IMG_20191008_090417.jpg,', '0', '2019-10-20 16:32:12');
INSERT INTO `bookinfo` VALUES ('74', '1', '500', '345', '合订本\r\n作字文摘\r\n豪情周恩来周旋与暗战\r\n两岸和谈幕后的特殊密使\r\n金庸武侠一甲子\r\n我所认识的胡底与钱壮飞\r\n2\r\n', '0', '作家文摘', '/image/IMG_20191008_090433.jpg,', '0', '2019-10-20 16:33:01');
INSERT INTO `bookinfo` VALUES ('75', '1', '500', '23', '公\r\n环球人物\r\n2098518\r\nGLOBAL PEOPLE\r\n陈独秀李大钊\r\n百年前的青年偶像\r\n“带路”峰会上的新面孔\r\n亲历斯里兰卡爆炸\r\n郭台铭，搜动台湾政坛的“台风”\r\n巴黎圣母院，法兰西民族的微缩史\r\n蒋委丽，心度住着一个男人\r\n', '0', '环球人物', '/image/IMG_20191008_090458.jpg,', '0', '2019-10-20 16:33:38');
INSERT INTO `bookinfo` VALUES ('76', '1', '500', '34', '巨限-3与中国海基核力量1孙小果为何篇\"死里逃生”/核武人刘书鹣的“九院”青春\r\n★\r\n中国新闻周刊\r\n5G商用元年\r\n', '0', '中国新闻周刊', '/image/IMG_20191008_090510.jpg,', '0', '2019-10-20 16:34:14');
INSERT INTO `bookinfo` VALUES ('77', '1', '500', '234', 'CHINtHL\r\nRMB3UR/HKS45元\r\nGIOG APHY\r\n口\r\nwww. JN60.4m\r\n中国国家地理\r\n风云气象卫星50年纪念增刊\r\n1969-2019\r\n风云五十年\r\n50年17颗卫星和风云人\r\n主打文章\r\n总云视野下的美丽中国\r\n中国气候区划故事\r\n飞至穹顶处，俯瞰风起时\r\n155 1009-6357\r\n观云:干形万象不复重\r\n', '0', '中国国家地理', '/image/IMG_20191008_090524.jpg,', '0', '2019-10-20 16:34:46');
INSERT INTO `bookinfo` VALUES ('78', '1', '500', '31', '英文摘\r\nENGL ISH\r\nDIGEST\r\nVww ishirhi c \r\n2019\r\n。7\r\nAmitssoclhoegegrberySeandaln\r\nHighightDiviaeOverCasslnAmerca\r\n过美国大学招生行帕江时凸品集阶层制裂，\r\nHumans Are Speeding Extinction And Atering The Natural World\'At An\r\nUnprecedented Pace\r\n人类正在加述物种灭绝并以“确所术有的”速度改变自然好\r\nWhat Are The Pros And Cons of The \"Gig Economy?\r\nESSN 1009-96111\r\n“嘴C\"经济有问利兜I\r\nFrom No Recycling To Zero Waste: How Lubljana Rethought\r\nIts Rubbish\r\n零优价1元总第22期\r\n从零国收到零废介:内布东瘫郡知何可漏思着其战圾\r\n邮发代号2-716\r\n', '0', '英语文摘', '/image/IMG_20191008_090544.jpg,', '0', '2019-10-20 16:35:23');
INSERT INTO `bookinfo` VALUES ('79', '1', '400', '998', '只要998\r\n普通话水平测试教林全新版\r\n严格保据教育色国家语言文字工作委员会\r\n事\r\n印发的《普涛话水平制试大湖保会\r\n扫码音频视频\r\n全新版\r\n普通话水平测试\r\n在线模拟考试\r\n专用教材\r\n平\r\n角PSC青通话水平湖试\r\n赠\r\n试\r\n普通话水平测试研究组馆\r\n普通话培训研究中心清\r\n专\r\n用\r\nPUTONGHUA SHUIPING CESHI ZHUANYONG JIAOCAI\r\n命题说话测试攻略\r\n教\r\nam\r\n范文1 00篇\r\n易甲普酒话水平测试会数研究中心心编\r\nD\r\n命题说话应试指号\r\n命题说话应试技巧\r\n听配套音频\r\n话题奥型关联分析\r\n看配套视频\r\n命期说话范文示制\r\n下考试APP\r\n听读教材+同步视频+在线考试\r\n', '1', '普通话全集', '/image/IMG_20191008_085526.jpg,/image/IMG_20191008_090602.jpg,/image/IMG_20191008_090619.jpg,/image/IMG_20191008_090632.jpg,/image/IMG_20191008_090645.jpg,', '0', '2019-10-20 16:36:29');
INSERT INTO `bookinfo` VALUES ('80', '1', '406', '999', '2020新版初级会计职称\r\n备考2020全钢会计专业技术资格 试辅导教材\r\n2019年全国会计专业技术\r\n容\r\n初级会计辅导教材\r\n初级会计实务\r\nCHUJIKUAIJI SHIWU\r\n初级会计实\r\n初级会计考试辅导研究组编\r\n新税率13明6月\r\n福\r\n初级会计职称考试辅导研\r\n新版\r\n考前押题\r\n活动价\r\n考前押题\r\n2019年初\r\n32.8，\r\n元送: 新版名师精讲课程+题库\r\n', '0', '会计一步到位', '/image/IMG_20191008_085508.jpg,/image/IMG_20191008_090658.jpg,/image/IMG_20191008_090714.jpg,/image/IMG_20191008_090729.jpg,/image/IMG_20191008_090741.jpg,/image/IMG_20191008_090755.jpg,', '0', '2019-10-20 16:37:31');
INSERT INTO `bookinfo` VALUES ('81', '1', '405', '777', '2019年11月考试综合素质教材\r\no中公楼师尸格依据国家数师资格考诚大绢编筹\r\n\' , 2019\r\n一-中公版一\r\nPDF\r\n试\r\n国家教师资格考试\r\n专用\r\n国家教师资格考试\r\n教材\r\n知识导围与高频考点速学速记\r\n(中学)\r\nPDF\r\n综合素质\r\n国家教师资格考试\r\n质\r\n教育写作范文20篇\r\n学\r\n中公教育校师资格考试研究院0编著\r\n中学\r\nPDF内\r\n教师资格证\r\nA适用于全国统考省(自治区、直\r\n和\r\n立足考纲考情紧扣考试真题讲解\r\n教烤资格笔试\r\n[普通话大礼包]\r\n确认收货联系客服领取\r\n疯狂刷题\r\n[内部面试资料]\r\n2019下教师资格笔试\r\n1000题\r\n长\r\n电子版\r\n考点提炼直播班\r\n覆盖幼小中，备考高分技巧，6天快速提升\r\n非实物\r\n。限时特惠直播+回放 买书就送\r\n网盘资料.长期更新\r\n. 。5月27日开班\r\n湖中心医局\r\n同华国机专管店\r\n', '0', '国家教师资格考试专用教材', '/image/IMG_20191008_090816.jpg,/image/IMG_20191008_090827.jpg,/image/IMG_20191008_090902.jpg,/image/IMG_20191008_090918.jpg,', '0', '2019-10-20 16:38:52');
INSERT INTO `bookinfo` VALUES ('82', '1', '404', '556', '华研外语\r\nTOPWAYENGL ISH\r\n6书合一\r\n华研外楼\r\n从基础到高分\r\nACADEMIC\r\n华研外语\r\n剑桥雅思学术类考试指南\r\noddTorO\r\n雅\r\n思\r\n管\r\n基\r\n雅思\r\n础\r\n训\r\n基础训练\r\nACADEMIC\r\nACADEMIC\r\n练\r\n《雅思基础训练》编写组编\r\n雅思基础训练\r\n雅思基础训练\r\n听力\r\n阅读\r\n6书合一\r\n雅男/痛果/驾瞿/送试栏\r\nIo\r\n输\r\n基础技能强化+分题型提分训练\r\nACADEMIC\r\nACADEMIC\r\n视频学习)\r\n雅思基础训练\r\n雅思基础训练\r\n口语\r\n写作\r\n', '0', '雅思基础训练', '/image/IMG_20191008_085303.jpg,/image/IMG_20191008_090931.jpg,/image/IMG_20191008_090944.jpg,/image/IMG_20191008_090956.jpg,', '0', '2019-10-20 16:39:46');
INSERT INTO `bookinfo` VALUES ('83', '1', '403', '34', '大学英语黄皮书\r\n21912\r\nO烂\r\n英语六级\r\nOX\r\n高款版\r\n全国大学英语六级试题洲\r\n六级黄皮书\r\n12套真题试卷\r\n六级英语真题试卷\r\n( 12套超详解)\r\n0号大学英语四六设考试\r\n▲微作\r\n六级黄皮书\r\n2017.12-2019.06★试卷\r\n六级真题\r\n套\r\n限\r\n超\r\n资深命题人\r\nE全国大学美道人认\r\n学霸狂练\r\n详\r\n篇章逐句析\r\n六眼青皮有\r\n1B套真题\r\n时\r\n解\r\n狂\r\n真題超详解\r\n2016.12-2019.06\r\n赠\r\n技巧精总结\r\n六级英语大纲词汇\r\n⑥套模拟\r\n超级背诵宝典\r\n金真排版★涂卡答题\r\n送\r\n学霸红练★轻检过级\r\n大烟词汇★完全呈现\r\n! 附赠管题卡)\r\n世纪\r\n词叉归的★准确到位\r\n调频分要★直击重点\r\n世纪高教编辑部\r\n曾鸣张金\r\n山塔\r\n世纪高教编精都\r\n买一本送一本\r\n买真题超详解送学霸\r\n备考2019.12\r\n收录19.6月试卷\r\n24张答题卡\r\n', '0', '英语六级它来了', '/image/IMG_20191008_085508.jpg,/image/IMG_20191008_091019.jpg,/image/IMG_20191008_091032.jpg,', '0', '2019-10-20 16:40:38');
INSERT INTO `bookinfo` VALUES ('84', '1', '403', '34', '四级英语学霸狂练\r\n备考19.12\r\no大学英语四六级考试\r\n▲微2\r\n四级黄皮书\r\n2019.6月\r\n巴\r\n包含|真题\r\n话\r\n四级真题\r\n学霸狂练\r\n物\r\n四级英语真题试卷\r\n四级黄皮书\r\n狂\r\n1B套真题\r\n2016.12-2019.06 I\r\n书\r\n( 12套超详解)\r\n6套模拟\r\n黄皮书国\r\n全具接级★涂卡答题\r\n赠\r\n2012.12-2019.6 u品\r\n学霸狂练★轻松过级\r\n送\r\n量汉中凡人\r\n附赠药题卡\r\n真期网详解*\r\n四级英语大2汇\r\n执巧精总鮭★8.\r\n世纪高教编辑部\r\n世纪高教城\r\n曾鸣张剑王继辉编萧\r\n加送12套超详解\r\n2017.12-2019.6\r\n意赠客题卡\r\n真题解析分册装订\r\n', '0', '四级基础突破', '/image/IMG_20191008_085508.jpg,/image/IMG_20191008_091008.jpg,/image/IMG_20191008_091043.jpg,/image/IMG_20191008_091109.jpg,', '0', '2019-10-20 16:41:23');
INSERT INTO `bookinfo` VALUES ('85', '1', '401', '23', '贺银成\r\n2020考研西医综合\r\n2020窗\r\n银成教育全国辅导机构脂定用书\r\n全\r\n美店\r\n贺银成\r\n考研西医临床医学综合能力\r\n辅导讲义意\r\n册\r\n编著。武汉大学中南医院贺银成\r\n[正版\r\n请者专享理值服务，料些精学印\r\n送\r\n视频课程、\r\n直播、题库\r\n', '0', '考研西医综合', '/image/IMG_20191008_091122.jpg,', '0', '2019-10-20 16:41:59');
INSERT INTO `bookinfo` VALUES ('86', '2', '102', '22', '', '0', '新视野大学英语视听说1', '/image/yyst1.png,', '0', '2019-10-20 16:51:29');
INSERT INTO `bookinfo` VALUES ('87', '2', '102', '22', '', '0', '新视野大学英语视听说2', '/image/yyst2.png,', '0', '2019-10-20 16:52:58');
INSERT INTO `bookinfo` VALUES ('88', '2', '102', '22', '', '0', '新视野大学英语读写教程1', '/image/yydx1.png,', '0', '2019-10-20 16:53:29');
INSERT INTO `bookinfo` VALUES ('89', '2', '102', '22', '', '0', '新视野大学英语读写教程2', '/image/yydx2.png,', '0', '2019-10-20 16:53:44');
INSERT INTO `bookinfo` VALUES ('90', '2', '204', '34', '“十二五”酸酒高等教育科国家级规划教材\r\n中国高等学校计算机料学与技术专位(应用型规划和材\r\n品书主场幕明\r\nC++ STL基础及应用\r\n(第2版)\r\n刘德山全百东编著\r\n清体大学出版社\r\n', '0', 'C++', '/image/c++.png,', '1', '2019-10-20 16:54:37');
INSERT INTO `bookinfo` VALUES ('91', '2', '301', '53', '东宫', '0', '东宫', '/image/dg.png,', '0', '2019-10-20 16:54:55');
INSERT INTO `bookinfo` VALUES ('92', '2', '204', '23', '全国高等职业教育:十三五”规制教材\r\n电工电子技术应用\r\n主青理琴赵显平\r\n科主面朝重地马电号补建中■场\r\n', '0', '电工电子技术应用', '/image/dgdzjsyy.png,', '1', '2019-10-20 16:55:24');
INSERT INTO `bookinfo` VALUES ('93', '2', '204', '523', '日外电子与电气工技术节\r\n电子电路原理\r\n(原1507板)\r\n李冬陶华国美字国馆\r\nElectronic\r\nPrinciples\r\nElectronic Principles\r\nSeventh Eaton\r\n。騏高杰店\r\n', '0', '电子电路原理', '/image/dzdlyl.png,', '0', '2019-10-20 16:55:51');
INSERT INTO `bookinfo` VALUES ('94', '2', '106', '23', '概\r\n论\r\n与\r\n数\r\n理\r\n统\r\n计\r\n概率论与数理统计\r\n第四成\r\n口着江大学店理糖式千酒承临单\r\n', '0', '概率论与数理统计', '/image/gll.png,', '0', '2019-10-20 16:56:17');
INSERT INTO `bookinfo` VALUES ('95', '2', '105', '42', '学\r\n高等数学\r\n第七版上册\r\n同济大学政学器端\r\n酒\r\n', '0', '高等数学 第七版上册', '/image/gs1.png,', '0', '2019-10-20 16:56:47');
INSERT INTO `bookinfo` VALUES ('96', '2', '105', '43', '高等数学\r\n第七版下册\r\n周开大学数学系园\r\n', '0', '高等数学 第七版下册', '/image/gs2.png,', '0', '2019-10-20 16:57:19');
INSERT INTO `bookinfo` VALUES ('97', '2', '204', '432', '6\r\n4<\r\nJava\r\n语言程序设计\r\n- (第3版)一\r\n', '0', 'JAVA', '/image/java.png,', '0', '2019-10-20 16:57:44');
INSERT INTO `bookinfo` VALUES ('98', '2', '100', '24', '马克思主义理论研究和建设工程重点教材。\r\n中国近现代史纲要\r\n(2018年版)\r\n本名前写帽\r\n', '0', '中国近现代史纲要', '/image/jds.png,', '0', '2019-10-20 16:58:21');
INSERT INTO `bookinfo` VALUES ('99', '2', '204', '51', '“十二五”职业教育国家规划教材\r\n轻全国职业教育教材审定委员会事定\r\n全国高等职业教育规划数材\r\n计算机专业英语\r\n第4版\r\n王小刚主端\r\n', '0', '计算机专业英语', '/image/jsjzyyy.png,', '0', '2019-10-20 16:58:47');
INSERT INTO `bookinfo` VALUES ('100', '2', '202', '52', 'Accounting\r\n(据墨)\r\n伙大州引抵兜\r\nProtes mal\r\nEnglith for Accounting\r\n', '0', '会计专业英语', '/image/kjzyyy.png,', '0', '2019-10-20 16:59:29');
INSERT INTO `bookinfo` VALUES ('101', '2', '303', '22', '龙DRAGO\r\n蛋\r\n串\r\n。\r\n', '0', '龙蛋', '/image/ld.png,', '0', '2019-10-20 16:59:58');
INSERT INTO `bookinfo` VALUES ('102', '2', '303', '62', '滚浪\r\n地话\r\nWANDERNGE | 刘悠欣\r\n县小国精店\r\n', '0', '流浪地球', '/image/lldq.png,', '0', '2019-10-20 17:00:25');
INSERT INTO `bookinfo` VALUES ('103', '2', '104', '21', '*马克要文量论研究和建设工程重点相材\r\n毛泽东思想和中国特色\r\n社会主义理论体系概论\r\n( 2018年版)\r\n本书编写场\r\n', '0', '毛泽东思想和中国特色 社会主义理论体系概论', '/image/mg.png,', '0', '2019-10-20 17:01:00');
INSERT INTO `bookinfo` VALUES ('104', '2', '103', '12', '.马克思主定理设研党和建设工程重点和材。\r\n马克思主义\r\n基本原理概论\r\n( 2018年版)\r\n', '0', '', '/image/my.png,', '0', '2019-10-20 17:01:20');
INSERT INTO `bookinfo` VALUES ('105', '2', '100', '12', '*马克思主文理论研究和建设工程重点教材。\r\n思想道德修养\r\n与法律基础\r\n(2018年版)\r\n本书编写组\r\n', '0', '思想道德修养 与法律基础', '/image/sx.png,', '0', '2019-10-20 17:01:49');
INSERT INTO `bookinfo` VALUES ('106', '2', '201', '33', '数学物理方法\r\n第固版)\r\n', '0', '数学物理方法', '/image/sxwlff.png,', '0', '2019-10-20 17:02:23');
INSERT INTO `bookinfo` VALUES ('107', '2', '205', '21', '土木工程教值新与工程软件总用州租\r\n土木工程\r\nFL AC/FLAC 3D\r\n实用教程\r\nO工中\r\n', '0', '土木工程', '/image/tmgc.png,', '0', '2019-10-20 17:02:52');
INSERT INTO `bookinfo` VALUES ('108', '2', '205', '24', '面向2世纪保程数材\r\n“十二”通尚等教育本科国家经规耗教村\r\n高校土木工程专业指导委员会规划推得教材\r\n经典精品系列教材\r\n土木工程材料\r\n(第二版)\r\n湖南大学天津大学\r\n合物\r\n同济大学东南大学\r\n中国建筑工业出监业\r\n', '0', '土木工程材料', '/image/tmgccl.png,', '0', '2019-10-20 17:03:19');
INSERT INTO `bookinfo` VALUES ('109', '2', '301', '67', '我曾\r\n在时光里\r\n听过你\r\n东\r\n听在曾\r\n过时第\r\n品\r\n你光车\r\n里\r\n纵钱一身点线加瓷，\r\n都不及你一年一笑\r\n请热\r\n输或省品\r\n我都防音你。\r\n', '0', '我曾在时光里听过你', '/image/wczsgltgn.png,', '0', '2019-10-20 17:04:01');
INSERT INTO `bookinfo` VALUES ('110', '2', '300', '42', '为了你我愿意热爱整个世界=Rn始\r\n蒯<判昨\r\n话\r\n道\r\n', '0', '为了你我愿意热爱整个世界', '/image/wln.png,', '0', '2019-10-20 17:04:53');
INSERT INTO `bookinfo` VALUES ('111', '2', '300', '21', '锦半国N明\r\n护兰\r\n郫样回翠明地单\r\n', '0', '我在回忆里等你', '/image/wzhydn.png,', '0', '2019-10-20 17:05:31');
INSERT INTO `bookinfo` VALUES ('112', '2', '107', '24', '工程数学\r\n线性代数\r\n第六版\r\n同洛大学教学系编\r\n', '0', '工程数学 线性代数', '/image/xd.png,', '0', '2019-10-20 17:06:05');
INSERT INTO `bookinfo` VALUES ('113', '2', '102', '22', 'NEWHQRIZON\r\nCOLLEGE ENGLISH\r\n新视野大学英语\r\n视听说教程\r\nPEARSON\r\n', '0', '新视野大学英语视听说教程3', '/image/yyst3.png,', '0', '2019-10-20 17:06:52');
INSERT INTO `bookinfo` VALUES ('114', '2', '102', '22', 'NEWHORIZON\r\n新视野大学英语\r\n读写教程\r\nRADNG sNDwiinG\r\n中国电大业\r\n', '0', '新视野大学英语读写教程3', '/image/yydx3.png,', '0', '2019-10-20 17:07:32');
INSERT INTO `bookinfo` VALUES ('115', '2', '102', '22', 'NE\r\nJORIZON\r\n新视野大学英语\r\n视听说教程 :\r\n', '0', '新视野大学英语视听说教程4', '/image/yxst4.png,', '0', '2019-10-20 17:08:12');
INSERT INTO `bookinfo` VALUES ('116', '2', '102', '22', 'NEWHGRIZON\r\nENGLISH\r\n新视野大学英语\r\n4\r\n读写教程\r\n', '0', '新视野大学英语读写教程4', '/image/yydx4.png,', '0', '2019-10-20 17:08:50');
INSERT INTO `bookinfo` VALUES ('117', '2', '203', '25', '胜青部高等学校工商管理类学科专业数学国导委员公州界软材口\r\n❾❾◎◎◎➊❽0\r\n运\r\nOperations Management\r\n(12th Edrio)\r\n理\r\n(原书第12版)\r\n手运营管理\r\n', '0', '运营管理', '/image/yygl.png,', '0', '2019-10-20 17:09:36');
INSERT INTO `bookinfo` VALUES ('118', '2', '203', '43', 'Political Economy\r\n政治经济学...\r\n4TA1tA声\r\n', '0', '政治经济学', '/image/zzjjx.png,/image/zzxgl.png,', '0', '2019-10-20 17:11:12');
INSERT INTO `bookinfo` VALUES ('119', '2', '301', '45', '能知\r\n克谷\r\n瘦合\r\n正心\r\n', '0', '知否知否', '/image/zfzf.png,', '0', '2019-10-20 17:12:01');
INSERT INTO `bookinfo` VALUES ('120', '2', '302', '998', '诛仙', '2', '诛仙', '/image/zx2.png,/image/zx3.png,/image/zx4.png,/image/zxdcb.png,', '0', '2019-10-20 17:12:32');

-- ----------------------------
-- Table structure for massage
-- ----------------------------
DROP TABLE IF EXISTS `massage`;
CREATE TABLE `massage` (
  `inforid` bigint(20) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `sendtime` bigint(20) NOT NULL,
  `content` text,
  `msgstate` int(11) DEFAULT NULL,
  PRIMARY KEY (`inforid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of massage
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `OrderId` bigint(18) NOT NULL,
  `Buyer` int(8) NOT NULL,
  `Seller` int(8) NOT NULL,
  `BookId` int(10) NOT NULL,
  `OrderState` int(3) NOT NULL,
  `Price` double(10,0) NOT NULL,
  `OrderTime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`OrderId`,`BookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('15715672503231', '5', '1', '51', '3', '30', '2019-10-20 18:20:28');
INSERT INTO `orders` VALUES ('15715672503231', '5', '1', '52', '1', '10', '2019-10-20 18:20:28');
INSERT INTO `orders` VALUES ('15715673711281', '5', '2', '90', '1', '34', '2019-10-20 18:24:46');
INSERT INTO `orders` VALUES ('15715673711281', '5', '2', '92', '1', '23', '2019-10-20 18:24:46');

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `BookId` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  PRIMARY KEY (`BookId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `UserId` int(8) NOT NULL AUTO_INCREMENT,
  `UserName` text,
  `PhoneNum` varchar(11) NOT NULL,
  `LPassword` varchar(16) NOT NULL,
  `School` int(6) NOT NULL,
  `Credit` int(3) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '小爱1.0', '18031836031', '123', '100004', '100');
INSERT INTO `userinfo` VALUES ('2', '小爱2.0', '18031836032', '123', '100001', '100');
INSERT INTO `userinfo` VALUES ('3', '小爱3.12', '18031836033', '123', '100002', '100');
