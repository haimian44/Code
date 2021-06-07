/*
 Navicat MySQL Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : road

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 01/06/2021 06:13:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for count
-- ----------------------------
DROP TABLE IF EXISTS `count`;
CREATE TABLE `count`  (
  `cid` int NOT NULL,
  `cclass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `czhou` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cmember` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ctid` int NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of count
-- ----------------------------
INSERT INTO `count` VALUES (1, '清单中间计量表', 'CQJX_SG-06_201912', '田栋梁,谢红伟,汤本祥,汪洋,凤良培,吕韶全,徐宏林,李占甫', 1);
INSERT INTO `count` VALUES (2, '变更中间计量表	', 'CQJX_SG-06_201912', '田栋梁,谢红伟,汤本祥,汪洋,凤良培,吕韶全,徐宏林,李占甫', 2);
INSERT INTO `count` VALUES (3, '工程变更一览表', 'CQJX_SG-06_201912', '谢红伟,汪洋,凤良培,汪国庆', 3);
INSERT INTO `count` VALUES (4, '价格调整申请表', 'CQJX_SG-06_201912', '谢红伟,汪洋,凤良培,汪国庆,吕韶全,徐宏林,李占甫', 4);
INSERT INTO `count` VALUES (5, '中期支付审核表', 'CQJX_SG-06_201912', '吕韶全,徐宏林,李占甫,王亮,孙狂飙', 4);

-- ----------------------------
-- Table structure for ctable
-- ----------------------------
DROP TABLE IF EXISTS `ctable`;
CREATE TABLE `ctable`  (
  `cid` int NOT NULL,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ccount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cnumber` int NULL DEFAULT NULL,
  `cprice` int NULL DEFAULT NULL,
  `call` int NULL DEFAULT NULL,
  `ctid` int NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ctable
-- ----------------------------
INSERT INTO `ctable` VALUES (1, '竣工文件', 'CQJX_SG-06_201912_001', 1, 159559, 79779, 1);
INSERT INTO `ctable` VALUES (2, '施工环保费', 'CQJX_SG-06_201912_002', 3, 212745, 212745, 1);
INSERT INTO `ctable` VALUES (3, '安全生产经费	', 'CQJX_SG-06_201912_003', 5, 3145950, 150111, 1);
INSERT INTO `ctable` VALUES (4, '培土路肩', 'CQJX_SG-06_201912_002', 3, 212745, 212745, 1);
INSERT INTO `ctable` VALUES (5, 'M7.5级浆砌片石', 'CQJX_SG-06_201912_001', 1, 159559, 79779, 2);
INSERT INTO `ctable` VALUES (6, '封层', 'CQJX_SG-06_201912_002', 3, 212745, 212745, 2);
INSERT INTO `ctable` VALUES (7, 'C25现浇砼', 'CQJX_SG-06_201912_001', 1, 159559, 79779, 2);
INSERT INTO `ctable` VALUES (8, 'CFG桩（Φ=40cm）', 'CQJX_SG-06_201912_002', 3, 212745, 212745, 3);
INSERT INTO `ctable` VALUES (9, '安全设施及预埋管线', 'CQJX_SG-06_201912_001', 1, 159559, 79779, 3);
INSERT INTO `ctable` VALUES (10, '开工预付款', 'CQJX_SG-06_201912_002', 3, 212745, 212745, 3);
INSERT INTO `ctable` VALUES (11, '扣回主材款', 'CQJX_SG-06_201912_001', 1, 159559, 79779, 4);
INSERT INTO `ctable` VALUES (12, '绿化及环境保护', 'CQJX_SG-06_201912_002', 3, 212745, 212745, 4);
INSERT INTO `ctable` VALUES (13, '桥梁、涵洞', 'CQJX_SG-06_201912_001', 1, 159559, 79779, 4);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `mid` int NOT NULL AUTO_INCREMENT,
  `mname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mclass` int NULL DEFAULT NULL,
  `mpart` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mauthor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mdate` date NULL DEFAULT NULL,
  `mcontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '党支部赴渡江战役中线指挥部开展革命教育', 1, '项目办', '王光柱', '2021-04-08', '  6月26日下午，池州桥接线项目办党支部全体党员至枞阳县渡江战役中线指挥部旧址纪念馆，瞻仰革命遗址，缅怀革命先烈，重温入党誓词，接受革命传统教育，开展党日活动。\r\n\r\n    大家回顾了一遍渡江战役的历史，通过近距离接触文物感动于艰苦条件下，先辈们的高超智慧和大无畏精神，感受到我们党带领中国人民走过波澜壮阔的历史进程，心潮澎湃，思想得到了升华。在纪念馆内，全体党员庄严举起右拳，重温入党誓词。\r\n\r\n    通过重温历史，深刻教育每名党员都要以共产党员的标准严格要求自己，时刻铭记历史，发挥革命传统，进一步加强党性修养。广大党员纷纷表示，唯有“不忘初心、牢记使命”方能传承、发展好老一辈无产阶级革命家开创的伟大业绩，认真学习贯彻习近平新时代中国特色社会主义思想，为跨江大桥建设贡献力量。\r\n\r\n    革命传统教育后，支部组织全体党员开展了“以案示警、以案为戒、以案促改”警示教育和廉洁教育，集中学习了省委和集团党委、纪委有关文件精神。');
INSERT INTO `news` VALUES (2, '王宏祥副总经理慰问池州桥接线项目办', 2, '办公室', '李占府', '2021-04-07', '面对高温“烤验”，带着集团党委的关怀，7月24日，集团公司副总经理王宏祥至池州桥接线项目办慰问并与一线职工进行座谈，建管部副部长李晓勇陪同。\r\n\r\n王宏祥对坚守在一线的项目办同志表示亲切慰问，对大家的辛勤劳动表示感谢，叮嘱大家做好防暑降温工作，科学合理安排好生产生活和饮食，注意身体，加强自我保护。\r\n\r\n座谈中，王总详细询问了接线项目收尾工程进展情况，要求加快推进环保设施、工程变更、资料整理等收尾工作，全面做好项目总结。强调项目办领导班子和党支部要从增强“四个意识”、坚定“四个自信”、做到“两个维护”的政治高度，结合“不忘初心，牢记使命”主题教育，确定目标任务，明确责任主体、进度时限和工作措施，逐条逐项推进落实，认真开展好集中学习研讨交流和专项整治，实现自我净化、自我完善、自我革新、自我提高。');
INSERT INTO `news` VALUES (3, '安徽省企业民主管理条例', 3, '管理处', '刘浩', '2021-03-12', '高速公路可视化项目建设管理系统信息化平台（简称：公路可视化管理平台）主要是将建设过程中的各类基础数据以工程划分、工程单元为主线，通过清单管理、试验检测、图文资料、计划进度、计量支付、工程变更、合同管理等子项目管理系统有机集成，结合GIS技术及网络技术创建一个功能齐备的可视化电子信息管理平台。该平台实时实态的展示了公路建设过程中各项数据实际，实现了各项施工数据处理、待办业务流程审批、业务数据信息汇总统计、工程施工质量监控、投资控制、参建单位间的协调及信息共享等。为技术人员和管理人员提供不同层次的功能需求。本平台所有的信息查询均以图形操作为界面，简化了各业务系统操作的复杂性。\r\n\r\n本平台产生包括工程招投标、造价控制（批复概算 合同费用 工程量清单 计量支付、监理结算、甲供材料结算、台账查询）、质量控制（试验 评定）、进度控制（计划进度）、变更设计、安全环保、现场管理（信息专网、人员设备、工作日志、、视频监控、项目快报、绩效考评）、图文资料（程序文件、设计图纸、往来文件）等业务管理功能。\r\n\r\n根据业务归类划分依次产生《招投标管理系统》、《概算管理系统》、《合同管理系统》、《清单编制管理系统》、《计量支付管理系统》、《试验检测与质量评定管理系统》、《计划进度管理系统》、《监理计量》、《材料管理》、《变更管理系统》、《图文管理系统》等项目业务基础数据管理模块系统与《人员设备》、《工作日志》、《项目快报》、《绩效考评》等现场辅助管理模块系统，并根据不同的用户提供《基于MAPINFO的可视化查询平台》《基本ArcGIS可视化查询平台》《基于WEB网络的查询系统》《基于3G网络的安卓手机版及PAD平板电脑版》等四种查询方式以及一种智能控制方式从而促进高速公路项目建设生命期的信息化管理的全面运行。');
INSERT INTO `news` VALUES (4, '触电事故应急演练暨医疗知识讲座', 4, '安全处', '韩鑫', '2021-04-21', '​	6月22日，池州桥接线05标在项目部驻地开展“触电事故应急演练暨医疗知识讲座”活动，与会代表观看了现场应急演练，听取了急救专家的剖析和点评，随后，与会代表听取了池州桥接线项目安全生产总体概况，池州市贵池区区委督查员吴双盈、池州市安监局副局长曹晓燕出席会议并讲话。\r\n\r\n​	为深入宣传贯彻实施党和国家安全生产方针政策、法律法规，扎实搞好以“全面落实企业安全生产主体责任”为主题的安全生产月系列活动，营造全社会“关爱生命、关注安全”的浓厚氛围，池州桥接线05标项目部开展了此次活动。\r\n\r\n​	出席此次活动的有池州市贵池区区委督查员吴双盈、池州市安监局副局长曹晓燕、池州市第二人民医院急救专家姚力、池州桥接线项目办、总监办、监测中心、第一驻地办、第四驻地办、01、02、05、06、08标段等代表。\r\n\r\n​	本次触电应急处置演练观摩会由池州桥接线项目办主办，安徽省巢湖路桥建设集团和池州桥接线05标项目部承办。按照施工单位触电事故发生、施工单位触电事故报告、启动触电事故应急救援响应、现场安全员初期应急处置、现场警戒、现场急救处理、输送伤者至医院救治，事故得到控制，警报解除，应急响应终止、演练点评和演练结束十个环节，依次有序进行。通过组织开展触电应急处置演练活动，进一步提高了池州桥接线项目05标等标段事故应急处理能力，为我省道路交通建设安全生产形势持续稳定向好做出了积极贡献。');
INSERT INTO `news` VALUES (16, '池州长江公路大桥项目顺利通过设站收费考察', 2, '池州桥接线项目办', '王光柱', '2021-05-18', '<p style=\"text-align: left;\">&nbsp;&nbsp;&nbsp;7月17日，由省交通运输厅综合运输处副处长盛光霞带队，省交通运输厅、省财政厅、省发改委、省公路管理中心和集团联网公司相关专家组成的联合考察组，就池州长江公路大桥项目设站收费情况进行现场考察，集团营运部、池州大桥和接线项目办负责人陪同考察。</p>\n<p>&nbsp;&nbsp;&nbsp;考察组一行对本项目全线，特别是枞阳东、池州西收费站、白荡湖服务区和跨江主桥以及秋浦河特大桥进行了重点察看，并召开设站收费考察会。会议在听取接线项目办负责人对有关情况汇报后，考察组一行结合现场察看情况，一致认为该项目具备设站收费条件，同意办理相关申报手续。同时考察组对通车前进一步完善部分功能和细节，为司乘人员和社会各界提供出行更安全、行车更舒适、功能更完善的通行条件提出建议要求。</p>\n<p>&nbsp;&nbsp;&nbsp;池州长江公路大桥路线全长41.026公里，其中跨江主桥长5.825公里，秋浦河特大桥长1.215公里，接线工程长33.986公里，全线设枞阳东、池州西、殷家汇3处互通立交，枞阳东、池州西2处匝道收费站，白荡湖服务区1处，特大桥3座，工程概算总投资60.195亿元。</p>');
INSERT INTO `news` VALUES (18, '2017年度施工企业信用评价结果公示', 1, '池州桥接线项目办', '李占甫', '2021-05-18', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;各路基施工、监理、检测单位：</p>\n<p>&nbsp; &nbsp; &nbsp; 根据我安徽省交通运输厅发布的《关于发布《安徽省公路水运工程施工企业信用评价管理暂行办法》的通知》(皖交基〔2007〕37号)的文件精神，项目办对2017年度企业信用评价工作已经完成，现将结果予以公告，请遵照执行。</p>\n<p>&nbsp;</p>\n<p>附件： 1.池州桥接线项目2017年施工企业信用评价表-1</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.池州桥接线项目2017年施工企业信用评价表-2</p>');
INSERT INTO `news` VALUES (19, '2018年第二季度信用评价结果的公示', 1, '池州桥接线项目办', '李占甫', '2021-05-18', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;各施工监理单位：</p>\n<p>&nbsp;</p>\n<p>　　根据《关于印发公路施工企业信用评价规则的通知》（交公路发【2009】733号）、《交通运输部关于印发《公路水运工程监理信用评价办法》的通知》(交质监发〔2012〕774号)的要求，池州桥接线2017年第二季度综合评价评定工作已经完成，现将结果予以公告，请遵照执行。</p>\n<p>&nbsp;</p>\n<p>附件：1、2018年度第二季度企业信用评价动态管理台账</p>');
INSERT INTO `news` VALUES (20, '第四季度企业信用评价结果公示', 1, '池州桥接线项目办', '李占甫', '2021-05-18', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;各路基施工、监理、检测单位：</p>\n<p>&nbsp; &nbsp; &nbsp;&nbsp;根据我安徽省交通运输厅发布的《关于发布《安徽省公路水运工程施工企业信用评价管理暂行办法》的通知》(皖交基〔2007〕37号)的文件精神，项目办对2017年度第四季度信用动态评价工作已经完成，现将结果予以公告，请遵照执行。</p>\n<p>&nbsp;</p>\n<p>附件：1.2017年度第四季度企业信用评价动态管理台账</p>\n<p>&nbsp;</p>');
INSERT INTO `news` VALUES (21, '池州长江公路大桥工程通过交工验收', 2, '池州桥接线项目办', '王光柱', '2021-05-18', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;7月12日，集团公司组织召开池州长江公路大桥工程交工验收会议。集团公司副总经理王宏祥参加会议。<br />　　会议成立了由省交通质监局、池州市交通运输局、铜陵市交通质监局、设计、施工、监理、管养等单位代表组成的工程交工验收委员会。交工验收委员会在听取项目办、设计、施工、监理等单位的报告及质监单位质量检查情况通报后，经充分讨论，一致同意通过验收。<br />　　池州长江公路大桥起于铜陵市枞阳县会宫，接在建的济祁高速合肥至枞阳段，在左家墩跨越长江，止于殷家汇，接已通车的南沿江高速公路（沪渝高速G50)，全长41.026公里，概算投资60.2亿元。该项目将进一步完善我省高速公路路网，强化我省及池州市交通过江能力，对于加强沿江两岸协调发展，加快皖江城市带承接产业转移示范区的建设等均具有重大意义。</p>');
INSERT INTO `news` VALUES (22, '不忘初心，牢记使命 主题教育', 2, '池州桥接线项目办', '王光柱', '2021-05-18', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;7月3日，集团公司第六巡回指导组至池州桥接线项目办对&ldquo;不忘初心、牢记使命&rdquo;主题教育进行专项指导。<br />　　指导组重点介绍了此次巡回指导的工作内容、工作要求及具体安排，并查阅了内业资料。项目办党支部书记孙狂飙汇报了主题教育进展情况。在组织集中学习的基础上，项目办部分中层以上管理人员以&ldquo;力戒形式主义、官僚主义&rdquo;为主题进行了研讨发言。<br />　　巡回指导组对项目办党支部主题教育的开展情况给予积极评价，并强调指出：一是结合生产建设实际加强主题教育。结合池州长江大桥即将通车以及各项验收工作任务繁重的实际，正确处理好主题教育与项目建设的关系，做到两手抓两手都要硬，确保两不误两促进，以干事创业的实际行动体现初心与使命。二是要认真落实集中学习、四个教育、调查研究、检视问题、找准差距、抓好落实等各个环节，确保教育实效。项目办表示，将在集团巡回指导组的具体指导下，严格落实&ldquo;守初心、担使命、找差距、抓落实&rdquo;总要求，不折不扣推进主题教育高质量开展。</p>');
INSERT INTO `news` VALUES (23, '建设管理系统信息化平台介绍', 3, '桥接线项目办', '王磊', '2021-05-18', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;高速公路可视化项目建设管理系统信息化平台（简称：公路可视化管理平台）主要是将建设过程中的各类基础数据以工程划分、工程单元为主线，通过清单管理、试验检测、图文资料、计划进度、计量支付、工程变更、合同管理等子项目管理系统有机集成，结合GIS技术及网络技术创建一个功能齐备的可视化电子信息管理平台。该平台实时实态的展示了公路建设过程中各项数据实际，实现了各项施工数据处理、待办业务流程审批、业务数据信息汇总统计、工程施工质量监控、投资控制、参建单位间的协调及信息共享等。为技术人员和管理人员提供不同层次的功能需求。本平台所有的信息查询均以图形操作为界面，简化了各业务系统操作的复杂性。</p>\n<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;本平台产生包括工程招投标、造价控制（批复概算 合同费用 工程量清单 计量支付、监理结算、甲供材料结算、台账查询）、质量控制（试验 评定）、进度控制（计划进度）、变更设计、安全环保、现场管理（信息专网、人员设备、工作日志、、视频监控、项目快报、绩效考评）、图文资料（程序文件、设计图纸、往来文件）等业务管理功能。</p>\n<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;根据业务归类划分依次产生《招投标管理系统》、《概算管理系统》、《合同管理系统》、《清单编制管理系统》、《计量支付管理系统》、《试验检测与质量评定管理系统》、《计划进度管理系统》、《监理计量》、《材料管理》、《变更管理系统》、《图文管理系统》等项目业务基础数据管理模块系统与《人员设备》、《工作日志》、《项目快报》、《绩效考评》等现场辅助管理模块系统，并根据不同的用户提供《基于MAPINFO的可视化查询平台》《基于WEB网络的查询系统》《基于3G网络的安卓手机版及PAD平板电脑版》等四种查询方式以及一种智能控制方式从而促进高速公路项目建设生命期的信息化管理的全面运行。</p>');
INSERT INTO `news` VALUES (24, '信息平台常用模块操作说明书', 3, '池州桥接线项目办', '马浩', '2021-05-18', '<p>如有问题请联系：&nbsp;QQ:3293329325&nbsp;&nbsp; TEL:18949807322</p>');
INSERT INTO `news` VALUES (25, '池州桥接线08标机械伤害事故应急演练', 0, '路基八标', '何森', '2021-05-18', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;为提高全体员工安全意识，使各级员工熟悉掌握应急救援启动程序和实施施救方法，提高应急救援小组协调配合的实战能力，增强员工在紧急情况下的应变能力，自我防护能力，使每个员工遇到紧急情况时都知道应急救援的程序,通知报警、自救、疏散现场人员、及时抢救伤员与物资，针对项目安全生产现状，池州桥接线08标于2017年6月30日上午7:00组织开展了机械事故的应急演练活动。</p>\n<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;在项目领导的统一指挥及各小组成员的默契配合下，演练活动圆满完成。</p>');
INSERT INTO `news` VALUES (26, '池州02标进行高边坡坍塌事故应急演练', 4, '路基二标', '杨隽雍', '2021-05-18', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;2017年6月25日下午15时，池州02标项目部进行了高边坡坍塌应急演练。</p>\n<p>此次应急演练要点：</p>\n<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;1、根据塌方方量，受伤、失踪人员数量，项目部应决定马上开展救援，或立即向项目办、安监部门报告并请求支援运用生命探测仪搜救。</p>\n<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;2、进行搜救前，必须确保救援人员的安全，无再次坍塌的危险方可进行搜救。</p>\n<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;3、接到事故报告，立即拨打120，搜救出的被埋人员，呼吸停止应转移至安全地点就地抢救，马上进行心肺复苏，有条件者配合进行心室除颤</p>');
INSERT INTO `news` VALUES (27, '规范安全管理程序，强化安全管理意识', 4, '路基八标', '何森', '2021-05-18', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;7月11日晚7:45，项目办质安部长徐宏林、第四驻地办高级驻地汪洋一行莅临我部开展安全专项教育工作。徐部长首先对我部安全形势进行分析，就抗滑桩、现浇桥、高墩柱施工等内容一一展开论述，强调安全工作要见微知著、举一反三，不能抱有侥幸心理；工程技术人员要主动承担起现场安全管理工作，班组长是安全管理的主体；标准化建设不是工程施工的负担，是为施工现场提供安全可靠环境的保障；手勤、脚勤、脑勤是安全管理人员应有的素质&hellip;&hellip;同时徐部长还指出我部下阶段控制重点，抗滑桩、现浇梁、金星村大桥、高墩柱等施工点应重点监控，防暑降温措施要落到实处，重难点部位要早做计划，精心施工。</p>\n<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;随后第四驻地办汪组长就我部安全管理工作提出几点要求：1、要端正态度，树立安全工作只有起点，没有终点的观念；2、安全工作要自觉，而不能全赖他人督促；3、班组长要高度重视安全；4、安全管理要更加标准化；5、报验程序要坚决执行，做好过程中的控制；6、事故防范于未然，安全工作要谨慎小心；7、八标安全管控重点多，难度大，应加强巡查、检查力度，合理安排施工计划，尽快完工；8、加强机械设备及车辆管理，确保安全等。</p>\n<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;我部项目部领导班组、各部门成员以及各施工班组主要负责人均出席本次会议。</p>');
INSERT INTO `news` VALUES (31, '公程信息', 1, '管理处', '张三', '2021-05-23', '<p>&nbsp;&nbsp;&nbsp;近日，交通运输部印发《农村公路中长期发展纲要》，提出到2035年，形成&ldquo;规模结构合理、设施品质优良、治理规范有效、运输服务优质&rdquo;的农村公路交通运输体系，&ldquo;四好农村路&rdquo;高质量发展格局基本形成。</p>\n<p>&nbsp;&nbsp;&nbsp;网络化水平显著提高，总里程稳定在500万公里左右，基本实现乡镇通三级路、建制村通等级路、较大人口规模自然村(组)通硬化路。城镇化和工业化的发展已经带走了不少农村人，现在的农村也正在发生重大变化。仔细观察的话，如今的农村，建设发展整体变好了，人口不断流失的同时，我国也没有放弃农村的建设和发展。每年都会根据村庄的发展</p>\n<p style=\"text-align: center;\"><img src=\"https://i.loli.net/2021/05/23/BxfnSEF5qV9ylaR.jpg\" alt=\"\" /></p>');

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `rid` int NOT NULL AUTO_INCREMENT,
  `rtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rbody` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rstart` date NULL DEFAULT NULL,
  `rend` date NULL DEFAULT NULL,
  `progress` int NULL DEFAULT NULL,
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES (7, '地基施工', '完成2km路基工作', '2021-05-03', '2021-05-10', 45);
INSERT INTO `schedule` VALUES (8, '路面', '路面施工', '2021-04-03', '2021-05-09', 75);
INSERT INTO `schedule` VALUES (9, '测试', '测试内容', '2021-04-05', '2021-04-07', 80);
INSERT INTO `schedule` VALUES (10, '道路施工', '进行路面铺设工作', '2021-04-07', '2021-04-29', 60);

-- ----------------------------
-- Table structure for stable
-- ----------------------------
DROP TABLE IF EXISTS `stable`;
CREATE TABLE `stable`  (
  `stid` int NULL DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sfact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sclass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sdan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `snum` int NULL DEFAULT NULL,
  `scar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stime` date NULL DEFAULT NULL,
  `sload` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sid` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stable
-- ----------------------------
INSERT INTO `stable` VALUES (1, '水泥', '江西亚东水泥', 'P.O 42.5散装水泥', '吨', 45, '皖AA9291', '2020-02-13', '路基六标', 1);
INSERT INTO `stable` VALUES (2, '水泥', '江西亚东水泥', 'P.O 42.5散装水泥', '吨', 35, '皖AC3214', '2020-11-06', '路基六标', 2);
INSERT INTO `stable` VALUES (3, '黄沙', '江西亚东黄沙', 'C.F 42.5散装黄沙', 'KG', 24, '皖AC3214', '2021-05-04', '路基六标', 3);
INSERT INTO `stable` VALUES (1, '水泥', '江西亚东水泥', 'P.O 42.5散装水泥', '吨', 45, '皖AA9291', '2020-02-13', '路基六标', 4);
INSERT INTO `stable` VALUES (2, '水泥', '江西亚东水泥', 'P.O 42.5散装水泥', '吨', 35, '皖AC3214', '2020-11-06', '路基六标', 5);
INSERT INTO `stable` VALUES (3, '黄沙', '江西亚东黄沙', 'C.F 42.5散装黄沙', 'KG', 24, '皖AC3214', '2021-05-04', '路基六标', 6);
INSERT INTO `stable` VALUES (3, '黄沙', '江西亚东黄沙', 'C.F 42.5散装黄沙', 'KG', 24, '皖AC3214', '2019-05-04', '路基六标', 7);
INSERT INTO `stable` VALUES (3, '黄沙', '江西亚东黄沙', 'C.F 42.5散装黄沙', 'KG', 24, '皖AC3214', '2018-05-04', '路基六标', 8);
INSERT INTO `stable` VALUES (2, '水泥', '江西亚东水泥', 'P.O 42.5散装水泥', '吨', 35, '皖AC3214', '2019-11-06', '路基六标', 9);
INSERT INTO `stable` VALUES (2, '水泥', '江西亚东水泥', 'P.O 42.5散装水泥', '吨', 35, '皖AC3214', '2021-11-06', '路基六标', 10);
INSERT INTO `stable` VALUES (1, '水泥', '江西亚东水泥', 'P.O 42.5散装水泥', '吨', 45, '皖AA9291', '2021-02-13', '路基六标', 11);
INSERT INTO `stable` VALUES (1, '水泥', '江西亚东水泥', 'P.O 42.5散装水泥', '吨', 45, '皖AA9291', '2019-02-13', '路基六标', 12);
INSERT INTO `stable` VALUES (4, '水泥', '江西亚东水泥', 'P.O 42.5散装水泥', '吨', 50, '皖AA9232', '2020-02-13', '路基六标', 13);
INSERT INTO `stable` VALUES (4, '水泥', '江西亚东水泥', 'P.O 42.5散装水泥', '吨', 25, '皖AC3225', '2020-11-06', '路基六标', 14);
INSERT INTO `stable` VALUES (4, '水泥', '江西亚东水泥', 'P.O 42.5散装水泥', '吨', 50, '皖AA9232', '2020-02-13', '路基六标', 15);
INSERT INTO `stable` VALUES (4, '水泥', '江西亚东水泥', 'P.O 42.5散装水泥', '吨', 25, '皖AC3225', '2020-11-06', '路基六标', 16);

-- ----------------------------
-- Table structure for stuff
-- ----------------------------
DROP TABLE IF EXISTS `stuff`;
CREATE TABLE `stuff`  (
  `sid` int NOT NULL AUTO_INCREMENT,
  `sclass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sdetail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `smember` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stid` int NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE,
  INDEX `stid`(`stid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stuff
-- ----------------------------
INSERT INTO `stuff` VALUES (1, '材料签字', 'CQJX_GJX-01_SG-01_201801-1', 'GJX-01', 1);
INSERT INTO `stuff` VALUES (2, '材料签字', 'CQJX_GJX-01_SG-02_201801-1', 'GJX-01', 2);
INSERT INTO `stuff` VALUES (3, '材料签字', 'CQJX_GJX-01_201801-1', 'SN-01', 3);
INSERT INTO `stuff` VALUES (4, '材料签字', '\r\nCQJX_SN-01_SG-08_202011', 'SN-01', 4);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123', NULL);
INSERT INTO `user` VALUES (2, '234', NULL);
INSERT INTO `user` VALUES (123, '456', NULL);

SET FOREIGN_KEY_CHECKS = 1;
