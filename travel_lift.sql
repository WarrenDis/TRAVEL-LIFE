SET names utf8;
DROP DATABASE IF EXISTS travel_lift;
CREATE DATABASE travel_lift charset=utf8;
USE travel_lift;
-- 用户列表
CREATE TABLE user_travel(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(20),
    upwd VARCHAR(16),
    phone VARCHAR(11)
);
-- 全球地区及国家
CREATE TABLE global_country(
    gid INT PRIMARY KEY AUTO_INCREMENT,
    global_container VARCHAR(10),
    country_name VARCHAR(300)
);
INSERT INTO global_country VALUES
(null,"亚洲","中国 朝鲜 韩国 蒙古 日本 越南 老挝 柬埔寨 缅甸 泰国 马来西亚 新加坡 印度尼西亚 菲律宾 文莱 东帝汶 斯里兰卡 马尔代夫 巴基斯坦 印度 孟加拉国 尼泊尔 不丹 伊朗 土耳其 塞浦路斯 叙利亚 黎巴嫩 巴勒斯坦 以色列 约旦 伊拉克 科威特 沙特阿拉伯 也门 阿曼 阿拉伯联合酋长国 卡塔尔 巴林 格鲁吉亚 亚美尼亚 阿塞拜疆"),
(null,"欧洲","芬兰 瑞典 挪威 冰岛 丹麦 法罗群岛 爱沙尼亚 拉脱维亚 立陶宛 白俄罗斯 俄罗斯 乌克兰 摩尔多瓦 波兰 捷克 斯洛伐克 匈牙利 德国 奥地利 瑞士 列支敦士登 英国 爱尔兰 荷兰 比利时 卢森堡 法国 摩纳哥 罗马尼亚 保加利亚 塞尔维亚 马其顿 阿尔巴尼亚 希腊 斯洛文尼亚 克罗地亚 波斯尼亚 墨塞哥维那 意大利 梵蒂冈 圣马力诺 马耳他 西班牙 葡萄牙 安道尔"),
(null,"非洲","埃及 苏丹 南非共和国 利比亚 突尼斯 阿尔及利亚 摩洛哥 马德拉群岛 西属摩洛哥 休达 梅利利亚 加那利群岛 埃及 苏丹 利比亚 埃塞俄比亚 厄立特里亚 索马里 吉布提 肯尼亚 坦桑尼亚 乌干达 塞舌尔 卢旺达 布隆迪 毛里塔尼亚 塞内加尔 冈比亚 马里 布基纳法索 几内亚 几内亚比绍 佛得角 塞拉利昂 利比里亚 科特迪瓦 加纳 多哥 贝宁 尼日尔 西撒哈拉 尼日利亚 圣赫勒拿岛 乍得 中非共和国 喀麦隆 赤道几内亚 加蓬 刚果(布) 刚果(金) 圣多美 普林西比 博茨瓦纳 纳米比亚 安哥拉 南苏丹 斯威士兰 莱索托 马达加斯加 马拉维 科摩罗 毛里求斯 莫桑比克 赞比亚 津巴布韦 马约特岛 留尼汪岛"),
(null,"美洲","美国 加拿大 巴西 阿根廷 巴哈马 伯利兹 玻利维亚 巴巴多斯 哥伦比亚 智利 哥斯达黎加 古巴 委内瑞拉 萨尔瓦多 厄瓜多尔 格林纳达 危地马拉 圭亚那 洪都拉斯 海地 牙买加 圣卢西亚 墨西哥 尼加拉瓜 巴拿马 秘鲁 乌拉圭 巴拉圭 苏里南 多米尼加 多米尼克 圣文森特和格林纳丁斯 特立尼达和多巴哥 安提瓜和巴布达 圣基茨 尼维斯"),
(null,"大洋洲","澳大利亚 新西兰 所罗门群岛 巴布亚新几内亚 瓦努阿图 帕劳 瑙鲁 图瓦卢 基里巴斯 萨摩亚 汤加 密克罗尼西亚联邦 斐济群岛 密克罗尼亚联邦 马绍尔群岛");
-- 国家及省市
CREATE TABLE country_city(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    countryname VARCHAR(10),
    imgname VARCHAR(300),
    countrycity VARCHAR(10),
    imgcity VARCHAR(100)
);
INSERT INTO country_city VALUES
    -- 亚洲
    -- 中国
    (null,"中国","./china.jpg","黑龙江省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","吉林省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","辽宁省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","上海市","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","江苏省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","浙江省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","安徽省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","福建省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","江西省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","山东省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","台湾省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","北京市","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","天津市","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","山西省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","河北省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","内蒙古自治区","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","河南省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","湖北省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","湖南省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","广东省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","广西壮族自治区","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","海南省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","香港特别行政区","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","澳门特别行政区","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","四川省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","贵州省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","云南省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","重庆市","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","西藏自治区","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","陕西省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","甘肃省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","青海省","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","宁夏回族自治区","./img/logo-1.jpg"),
    (null,"中国","./china.jpg","新疆维吾尔自治区","./img/logo-1.jpg"),
    -- 朝鲜
    (null,"朝鲜","./nkorea.jpg","平壤市","./img/logo-1.jpg"),
    (null,"朝鲜","./nkorea.jpg","开城","./img/logo-1.jpg"),
    (null,"朝鲜","./nkorea.jpg","罗先市","./img/logo-1.jpg"),
    (null,"朝鲜","./nkorea.jpg","平安南道","./img/logo-1.jpg"),
    (null,"朝鲜","./nkorea.jpg","平安北道","./img/logo-1.jpg"),
    (null,"朝鲜","./nkorea.jpg","慈江道","./img/logo-1.jpg"),
    (null,"朝鲜","./nkorea.jpg","两江道","./img/logo-1.jpg"),
    (null,"朝鲜","./nkorea.jpg","咸镜南道","./img/logo-1.jpg"),
    (null,"朝鲜","./nkorea.jpg","咸镜北道","./img/logo-1.jpg"),
    (null,"朝鲜","./nkorea.jpg","江原道","./img/logo-1.jpg"),
    (null,"朝鲜","./nkorea.jpg","黄海南道","./img/logo-1.jpg"),
    (null,"朝鲜","./nkorea.jpg","黄海北道","./img/logo-1.jpg"),
    -- 韩国
    (null,"韩国","./skorea.jpg","首尔","./img/logo-1.jpg"),
    (null,"韩国","./skorea.jpg","京畿道","./img/logo-1.jpg"),
    (null,"韩国","./skorea.jpg","江原道","./img/logo-1.jpg"),
    (null,"韩国","./skorea.jpg","忠清北道","./img/logo-1.jpg"),
    (null,"韩国","./skorea.jpg","忠清南道","./img/logo-1.jpg"),
    (null,"韩国","./skorea.jpg","全罗北道","./img/logo-1.jpg"),
    (null,"韩国","./skorea.jpg","全罗南道","./img/logo-1.jpg"),
    (null,"韩国","./skorea.jpg","庆尚北道","./img/logo-1.jpg"),
    (null,"韩国","./skorea.jpg","庆尚南道","./img/logo-1.jpg"),
    (null,"韩国","./skorea.jpg","济州道","./img/logo-1.jpg"),
    -- 欧洲
    -- 芬兰
    (null,"芬兰","./finland.jpg","南芬兰省","./img/logo-1.jpg"),
    (null,"芬兰","./finland.jpg","东芬兰省","./img/logo-1.jpg"),
    (null,"芬兰","./finland.jpg","西芬兰省","./img/logo-1.jpg"),
    (null,"芬兰","./finland.jpg","奥鲁省","./img/logo-1.jpg"),
    (null,"芬兰","./finland.jpg","拉普省","./img/logo-1.jpg"),
    (null,"芬兰","./finland.jpg","奥兰省","./img/logo-1.jpg"),
    -- 瑞典
    (null,"瑞典","./sweden.jpg","布莱金厄省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","达拉纳省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","耶夫勒堡省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","哥得兰省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","哈兰省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","耶姆特兰省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","延雪平省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","卡尔马省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","克鲁努贝里省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","北博滕省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","厄勒布鲁省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","东约特兰省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","斯科耐省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","南曼兰省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","斯德哥尔摩省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","乌普萨拉省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","韦姆兰省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","西博滕省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","西诺尔兰省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","西曼兰省","./img/logo-1.jpg"),
    (null,"瑞典","./sweden.jpg","西约特兰省","./img/logo-1.jpg"),
    -- 挪威
    (null,"挪威","./norway.jpg","奥斯陆市","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","阿克什胡斯","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","东福尔","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","海德马克","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","奥普兰","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","布斯克吕","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","西福尔","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","泰勒马克","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","东阿格德尔","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","西阿格德尔","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","罗加兰","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","霍达兰","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","松恩－菲尤拉讷","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","默勒－鲁姆斯达尔","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","南特伦德拉格","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","北特伦德拉格","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","诺尔兰","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","特罗姆斯","./img/logo-1.jpg"),
    (null,"挪威","./norway.jpg","芬马克","./img/logo-1.jpg"),
    -- 非洲
    -- 埃及
    (null,"埃及","./egypt.jpg","沙卡拉","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","亚比多斯","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","亚历山大","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","宰加济格","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","伊迪芙","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","赫尔格达","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","门库纳","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","塞得港","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","卢克索","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","阿里什","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","科昂波","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","图尔","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","阿布辛贝","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","达哈布","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","达曼胡尔","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","希宾库姆","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","开罗","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","贝尼苏韦夫","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","达舒","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","吉萨","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","马特鲁","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","尚姆","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","圣凯萨琳","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","塔巴","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","谢赫村","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","辛努里斯","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","阿布茹德斯","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","法尤姆","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","曼菲斯","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","明亚","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","艾斯纳","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","艾斯尤特","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","巴威提村","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","登达拉","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","杜姆亚特","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","索哈杰","./img/logo-1.jpg"),
    (null,"埃及","./egypt.jpg","苏伊士","./img/logo-1.jpg"),
    -- 苏丹
    (null,"苏丹","./sudan.jpg","喀土穆州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","北方州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","尼罗河州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","红海州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","卡萨拉州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","加达里夫州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","杰济拉州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","森纳尔州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","白尼罗河州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","青尼罗河州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","北科尔多凡州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","南科尔多凡州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","西科尔多凡州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","北达尔富尔州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","西达尔富尔州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","南达尔富尔州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","中达尔富尔州","./img/logo-1.jpg"),
    (null,"苏丹","./sudan.jpg","东达尔富尔州","./img/logo-1.jpg"),
    -- 南非
    (null,"南非共和国","./south_africa .jpg","北开普省","./img/logo-1.jpg"),
    (null,"南非共和国","./south_africa .jpg","西开普省","./img/logo-1.jpg"),
    (null,"南非共和国","./south_africa .jpg","东开普省","./img/logo-1.jpg"),
    (null,"南非共和国","./south_africa .jpg","西北省","./img/logo-1.jpg"),
    (null,"南非共和国","./south_africa .jpg","自由省","./img/logo-1.jpg"),
    (null,"南非共和国","./south_africa .jpg","豪登省","./img/logo-1.jpg"),
    (null,"南非共和国","./south_africa .jpg","夸祖鲁－纳塔尔省","./img/logo-1.jpg"),
    (null,"南非共和国","./south_africa .jpg","东德兰士瓦省","./img/logo-1.jpg"),
    (null,"南非共和国","./south_africa .jpg","北德兰士瓦省","./img/logo-1.jpg"),
    -- 美洲
    -- 美国
    (null,"美国","./USA.jpg","宾夕法尼亚州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","特拉华州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","新泽西州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","乔治亚州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","康乃狄克州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","马萨诸塞州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","马里兰州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","南卡罗莱纳州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","新罕布夏州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","维吉尼亚州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","纽约州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","北卡罗莱纳州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","罗德岛州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","佛蒙特州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","肯塔基州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","田纳西州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","俄亥俄州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","路易西安那州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","印第安那州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","密西西比州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","伊利诺州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","阿拉巴马州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","缅因州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","密苏里州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","阿肯色州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","密西根州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","佛罗里达州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","德克萨斯州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","爱荷华州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","威斯康辛州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","加利福尼亚州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","明尼苏达州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","俄勒冈州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","堪萨斯州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","西维吉尼亚州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","内华达州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","内布拉斯加州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","科罗拉多州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","南达科他州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","北达科他州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","蒙大拿州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","华盛顿州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","爱德荷州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","怀俄明州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","犹他州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","奥克拉荷马州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","新墨西哥州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","亚利桑纳州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg","阿拉斯加州","./img/logo-1.jpg"),
    (null,"美国","./USA.jpg"," 夏威夷州","./img/logo-1.jpg"),
    -- 加拿大
    (null,"加拿大","./canada.jpg","不列颠哥伦比亚","./img/logo-1.jpg"),
    (null,"加拿大","./canada.jpg","艾伯塔","./img/logo-1.jpg"),
    (null,"加拿大","./canada.jpg","萨斯喀彻温","./img/logo-1.jpg"),
    (null,"加拿大","./canada.jpg","马尼托巴","./img/logo-1.jpg"),
    (null,"加拿大","./canada.jpg","安大略","./img/logo-1.jpg"),
    (null,"加拿大","./canada.jpg","魁北克","./img/logo-1.jpg"),
    (null,"加拿大","./canada.jpg","新不伦瑞克","./img/logo-1.jpg"),
    (null,"加拿大","./canada.jpg","新斯科舍","./img/logo-1.jpg"),
    (null,"加拿大","./canada.jpg","爱德华王子岛","./img/logo-1.jpg"),
    (null,"加拿大","./canada.jpg","纽芬兰","./img/logo-1.jpg"),
    (null,"加拿大","./canada.jpg","拉布拉多","./img/logo-1.jpg"),
    (null,"加拿大","./canada.jpg","育空","./img/logo-1.jpg"),
    (null,"加拿大","./canada.jpg","西北地区","./img/logo-1.jpg"),
    (null,"加拿大","./canada.jpg","努纳武特","./img/logo-1.jpg"),
    -- 巴西
    (null,"巴西","./brazil.jpg","阿克里","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","阿拉戈斯","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","亚马孙","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","阿马帕","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","巴伊亚","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","塞阿拉","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","圣埃斯皮里图","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","戈亚斯","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","马拉尼昂","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","马托格罗索","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","南马托格罗索","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","米纳斯吉拉斯","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","帕拉","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","帕拉伊巴","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","巴拉那","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","伯南布哥","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","皮奥伊","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","北里奥格兰德","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","南里奥格兰德","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","里约热内卢","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","朗多尼亚","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","罗赖马","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","圣卡塔琳","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","圣保罗","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","塞尔希培","./img/logo-1.jpg"),
    (null,"巴西","./brazil.jpg","托坎廷斯","./img/logo-1.jpg"),
    -- 大洋洲
    -- 澳大利亚
    (null,"澳大利亚","./australia.jpg","澳大利亚首都","./img/logo-1.jpg"),
    (null,"澳大利亚","./australia.jpg","昆士兰","./img/logo-1.jpg"),
    (null,"澳大利亚","./australia.jpg","新南威尔士","./img/logo-1.jpg"),
    (null,"澳大利亚","./australia.jpg","维多利亚","./img/logo-1.jpg"),
    (null,"澳大利亚","./australia.jpg","南澳大利亚","./img/logo-1.jpg"),
    (null,"澳大利亚","./australia.jpg","西澳大利亚","./img/logo-1.jpg"),
    (null,"澳大利亚","./australia.jpg","塔斯马尼亚","./img/logo-1.jpg"),
    (null,"澳大利亚","./australia.jpg","北领地","./img/logo-1.jpg"),
    -- 新西兰
    (null,"新西兰","./Nz.jpg","北地","./img/logo-1.jpg"),
    (null,"新西兰","./Nz.jpg","奥克兰","./img/logo-1.jpg"),
    (null,"新西兰","./Nz.jpg","怀卡托","./img/logo-1.jpg"),
    (null,"新西兰","./Nz.jpg","富足湾","./img/logo-1.jpg"),
    (null,"新西兰","./Nz.jpg","霍克湾","./img/logo-1.jpg"),
    (null,"新西兰","./Nz.jpg","塔拉纳基","./img/logo-1.jpg"),
    (null,"新西兰","./Nz.jpg","马纳瓦图－旺加努伊","./img/logo-1.jpg"),
    (null,"新西兰","./Nz.jpg","惠灵顿","./img/logo-1.jpg"),
    (null,"新西兰","./Nz.jpg","西岸","./img/logo-1.jpg"),
    (null,"新西兰","./Nz.jpg","坎特伯雷","./img/logo-1.jpg"),
    (null,"新西兰","./Nz.jpg","奥塔哥","./img/logo-1.jpg"),
    (null,"新西兰","./Nz.jpg","南地","./img/logo-1.jpg"),
    -- 所罗门群岛
    (null,"所罗门群岛","./solomon.jpg","中部群岛","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","图拉吉","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","乔伊索","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","塔罗","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","瓜达尔卡纳尔","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","霍尼亚拉","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","伊萨贝尔","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","布阿拉","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","马基拉","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","基拉基拉","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","马莱塔","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","奥基","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","拉纳尔和贝罗纳","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","提加阿","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","泰莫图","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","拉塔","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","西部","./img/logo-1.jpg"),
    (null,"所罗门群岛","./solomon.jpg","吉佐","./img/logo-1.jpg");
-- 地区的旅游资源
CREATE TABLE travel_list(
    lid INT PRIMARY KEY AUTO_INCREMENT,
    countryName VARCHAR(15),
    lpolis VARCHAR(10),
    scenic_name VARCHAR(100),
    title VARCHAR(50),
    img VARCHAR(30),
    link_address VARCHAR(50)
);

-- 景点介绍
CREATE TABLE travel_details(
    did INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30),
    content VARCHAR(500),
    img VARCHAR(30)
)
