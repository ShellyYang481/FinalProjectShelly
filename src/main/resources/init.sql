use AutomobileShopProject;
/* 企業員工資料表 */
CREATE TABLE EMP (
	ID VARCHAR(20) PRIMARY KEY NOT NULL,
	FULL_NAME NVARCHAR(30) NOT NULL,
	EMP_EMAIL VARCHAR(50) NOT NULL UNIQUE,
	PHONE VARCHAR(50) NOT NULL,
	PASSWD VARCHAR(140) NOT NULL,
	TITLE VARCHAR(50) NOT NULL,
	MANAGER VARCHAR(30),
	DEPARTMENT VARCHAR(50) NOT NULL,
	LOC VARCHAR(50) NOT NULL,
	SAL INT NOT NULL,
);

/* 客戶資料表 */
CREATE TABLE CLIENT (
	ID VARCHAR(20) PRIMARY KEY NOT NULL,
	FULL_NAME NVARCHAR(30) NOT NULL,
	CLIENT_EMAIL VARCHAR(50) UNIQUE NOT NULL,
	PHONE VARCHAR(50) UNIQUE NOT NULL,
	CITY NVARCHAR(20),
	ZIP_CODE VARCHAR(10),
	TOWN NVARCHAR(20),
	FULL_ADDRESS NVARCHAR(150),
	SALE_STAGE VARCHAR(30) NOT NULL,
	PASSWD VARCHAR(140) NOT NULL,
	emp_id varchar(20) foreign key references emp(id)
);

/* 客戶資料表(內部) */
/*
CREATE TABLE CLIENT_INNER (
	ID VARCHAR(20) PRIMARY KEY NOT NULL,
	FULL_NAME NVARCHAR(30) NOT NULL,
	CLIENT_EMAIL VARCHAR(50) UNIQUE NOT NULL,
	PHONE VARCHAR(50) UNIQUE NOT NULL,
	CITY NVARCHAR(20),
	ZIP_CODE VARCHAR(10),
	TOWN NVARCHAR(20),
	FULL_ADDRESS NVARCHAR(150),
	SALE_STAGE VARCHAR(30) NOT NULL,
	emp_id varchar(20) foreign key references emp(id)
);*/

/* 預設資料 - 顧客 */
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('LtxnkKvc','李珮君','lourdes27@schaefer.com','0954925147','台北市','111','士林區','臨溪路70號','New','378285218506906');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('UJCJVppI','藍佳欣','macy53@gmail.com','0992056459','台北市','111','士林區','忠誠路2段101號','New','341300395224241');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('8kamOtH0','萬淑玲','marcelino89@cole.biz','0972611672','台北市','111','士林區','忠誠路二段207巷1號','Engaged','375888512097499');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('KlPki5xx','彭晴華','alex.fadel@yahoo.com','0977416254','台北市','111','士林區','士東路190號之3','Attemping to Engaged','345606479394668');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('VZxuasBa','吳政翰','auer.anya@ward.info','0958691715','台北市','111','士林區','士商路189號','Follow Up','344452903764528');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('qBuTbTlt','許宇翔','brady.jast@thompson.com','0979462118','台北市','111','士林區','臺北市士林區文林路162號','Closed','376363889606321');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('l49plLKz','柯冠宏','bernardo73@weber.org','0926168681','台北市','111','士林區','臺北市士林區延平北路五段150號','Long Term','346816598850214');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('EjB7Pnvv','丁翔蓉','lindgren.vernice@hotmail.com','0964015141','台北市','111','士林區','臺北市士林區中山北路七段130號','Test Drive','373251293231369');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('z9AiioXm','馮雅娟','alexandrine.tromp@hotmail.com','0947704078','台北市','111','士林區','臺北市士林區至善路二段221號(故宮博物院內)','New','379386439295607');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('MYpOenUp','潘哲維','kristoffer85@funk.org','0996217211','台北市','111','士林區','臺北市士林區中正路420號','Engaged','348162458365458');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('m5t8EOXj','柯語坤','patsy.altenwerth@effertz.com','0947525140','台北市','111','士林區','臺北市士林區福港街149巷2號','New','347776672826655');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('iQIxYQAN','郭建輝','lenny.wiegand@koepp.com','0947872831','台北市','111','士林區','臺北市士林區忠誠路一段52號','New','372269358122811');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('nGW4n8wR','黃秀凌','deja10@king.info','0975661282','台北市','111','士林區','臺北市士林區臨溪路70號(東吳大學內)','Engaged','343339165862846');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('qYzRozTC','張雅玲','elangosh@ohara.com','0928761220','台北市','111','士林區','臺北市士林區士東路286巷36號','Attemping to Engaged','345547959948138');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('CIVjT1JM','陳舒婷','aurore.bode@gmail.com','0952222122','台北市','111','士林區','臺北市士林區士東路190號(士林法院內)','Follow Up','344506462807505');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('zEttJj4g','吳一友','madonna62@price.com','0923296625','台北市','111','士林區','臺北市士林區明溪街15號','Closed','343635065562216');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('R3FyhoKH','張淑善','torrey12@ankunding.com','0963739501','台北市','111','士林區','臺北市士林區基河路14號','Long Term','375503833628134');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('iZNKxrAz','段于婷','jmurray@gleichner.org','0914900228','台北市','111','士林區','臺北市士林區華岡路55號(文化大學內)','Test Drive','340347473283582');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('K3mdcaMK','黃智雲','prohaska.joannie@douglas.com','0957450650','台北市','111','士林區','臺北市士林區延平北路六段197號','New','378832505025874');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('7FA35Esl','吳妙冰','adolfo.walsh@hotmail.com','0991704363','台北市','111','士林區','臺北市士林區至誠路二段70號','Engaged','372230975046627');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('HEkQNHtj','韓和財','tara.reilly@hotmail.com','0988365037','台北市','104','大同區','臺北市大同區迪化街一段38號','New','344364833499937');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('9aoD0879','許思穎','oberbrunner.sarina@yahoo.com','0928186752','台北市','104','大同區','臺北市大同區重慶北路二段15號','New','348095383404317');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('FdXcdLbW','陳慧婷','stehr.frederic@deckow.biz','0920367374','台北市','104','大同區','臺北市大同區民權西路246號','Engaged','375512634225453');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('7GtRX3hH','林芳康','xsteuber@yahoo.com','0930788494','台北市','104','大同區','臺北市大同區承德路三段83號','Attemping to Engaged','377398205977609');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('gEXSSEBw','支家銘','wweimann@hotmail.com','0953409737','新北市','247','蘆洲區','新北市蘆洲區中山一路37號','Follow Up','376159753148683');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('OFB2HOig','郭致堅','rogahn.julia@bechtelar.com','0956391207','新北市','247','蘆洲區','新北市蘆洲區光華路108號','Closed','379633684739676');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('ZVEQ115M','馮雅玲','bjakubowski@hotmail.com','0997171279','新北市','247','蘆洲區','新北市蘆洲區長安街225號','Long Term','344435924944278');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('i4bGKONp','林思冰','edooley@gottlieb.com','0936548304','新北市','247','蘆洲區','新北市蘆洲區民族路271號1樓','Test Drive','349544855797335');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('q4On91Mb','陳冠隆','king.luettgen@medhurst.com','0973051186','新北市','239','鶯歌區','八德路99號','New','378369648550880');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('U031sixP','李祖岑','barrows.antonette@hotmail.com','0972909825','新北市','239','鶯歌區','福安街1號','Engaged','378234769015354');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('IpxsVKEI','林建勳','kianna47@hotmail.com','0941134733','新北市','239','鶯歌區','中正三路154號','New','375335748054282');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('8yaDLz5L','張雅慧','domingo65@hotmail.com','0973085177','新北市','239','鶯歌區','新北市鶯歌區中正一路47號','New','343126082224873');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('rIRSKGUo','黃彥翔','dominique.welch@yahoo.com','0923108610','新北市','239','鶯歌區','新北市鶯歌區鶯桃路2段60號','Engaged','378283184542278');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('b4VDir82','林柏志','abby53@yahoo.com','0917521655','新北市','239','鶯歌區','新北市鶯歌區中正3路208之4號','Attemping to Engaged','374500267756341');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('80zOxONU','姜孟姍','mwiza@rowe.com','0995769812','新北市','239','鶯歌區','新北市鶯歌區鶯桃路135巷1號','Follow Up','375719546195472');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('1lFugBJt','林嘉云','monahan.blanche@eichmann.com','0948048378','桃園市','334','八德區','和平路59號','Closed','346693913589896');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('U04DeKKF','鄭雅宇','collins.lloyd@yahoo.com','0934873287','桃園市','334','八德區','榮興路1100號','Long Term','346364860986762');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('DDKh0zqp','林佩芬','jaydon16@prosacco.org','0942293139','桃園市','334','八德區','興豊路1217號','Test Drive','342226664514922');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('WgnzSQsu','紀惠娟','zulauf.nat@botsford.com','0904569225','桃園市','334','八德區','興豐路1000號','New','373713550210733');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('NYISjOfd','陳貞君','schumm.neal@mante.info','0921565262','桃園市','334','八德區','介壽路2段','Engaged','379028317028151');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('HovO5AmC','蔡鈺婷','dejah96@hotmail.com','0973049385','桃園市','334','八德區','桃園市八德區介壽路一段842號','New','349973873707812');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('INo44Z9y','袁志胤','hertha75@gmail.com','0991570588','桃園市','334','八德區','桃園市八德區建國路18號','New','371719276395577');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('4KC4QRUJ','溫真霞','serenity26@reinger.org','0996094868','桃園市','334','八德區','桃園市八德區介壽路2段1030號','Engaged','379892428046778');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('OeAh8pcY','韓天名','lindgren.nash@gmail.com','0921381158','桃園市','334','八德區','桃園市八德區永豐路581號','Attemping to Engaged','379969993983880');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('AHdWfpHy','任思賢','jack.volkman@marquardt.com','0936595411','桃園市','334','八德區','桃園市八德區介壽路2段298號','Follow Up','344291592172001');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('LUvT1QFJ','陳慧卿','cummerata.elise@zemlak.com','0962042290','桃園市','337','大園區','民生路101號','Closed','344488630004218');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('5vPa00To','陳婉忠','oberbrunner.burnice@watsica.com','0982969979','桃園市','337','大園區','航勤北路20號','Long Term','376074097229653');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('Pek5vKBi','謝依宇','rodriguez.leila@gmail.com','0979891707','桃園市','337','大園區','園航路62號','Test Drive','377759806226029');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('RNR5c3FC','蔡順憲','adams.cecile@yahoo.com','0975235922','桃園市','337','大園區','桃園市大園區中山北路85號','New','347541005217216');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('i1Av6Z73','許嘉廷','gdenesik@gmail.com','0942152412','桃園市','337','大園區','桃園市大園區埔心街50號','Engaged','340685115989318');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('2pJvUPbf','吳孟伶','chester01@homenick.com','0933128710','台中市','439','大甲區','臺中市大甲區中山路二段233號','New','348440016615402');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('mnccrX63','連峻豪','durgan.kianna@gmail.com','0982012247','台中市','439','大甲區','臺中市大甲區幼獅路45號','New','348157462914259');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('tGWMRxFy','謝怡婷','kwitting@gmail.com','0967417089','台中市','439','大甲區','臺中市大甲區經國路768號','Engaged','378645128200777');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('wOiYDuGj','陳慶佩','pleffler@hotmail.com','0956654246','台中市','439','大安區','臺中市大安區中山南路343號','Attemping to Engaged','378539856598660');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('irWQZ0hM','蘇奕翔','cmaggio@schaefer.com','0977000471','台中市','432','大肚區','遊園路1段2號','Follow Up','345758520729242');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('0qaVIfpf','黃鴻娥','kenya74@yahoo.com','0938653113','台中市','432','大肚區','中山路111號','Closed','346741760254963');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('Q2OJwQTv','王惠珠','carole92@gmail.com','0936873714','台中市','432','大肚區','臺中市大肚區沙田路二段666號','Long Term','376213005522631');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('7eziDENC','林欣法','gleichner.alexandrine@hotmail.com','0985804771','台中市','432','大肚區','臺中市大肚區沙田路一段564-5號','Test Drive','348078402946161');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('TwqlF9yE','杜潔堅','darien.beahan@jacobs.com','0934837762','台中市','432','大肚區','臺中市大肚區遊園路二段65、67號','New','349385164432986');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('W88hd6b7','嵇靜怡','dorothy41@ferry.net','0992288484','台中市','412','大里區','健民路86號','Engaged','371124473325495');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('bgJwhx99','劉怡君','vhermann@lebsack.com','0972791064','台中市','412','大里區','臺中市大里區至善路30號','New','377025480223744');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('E117G47U','張家航','kayli04@kutch.org','0911105232','台中市','412','大里區','臺中市大里區中興路二段212號','New','344393205942653');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('mDf2Gwv2','陳冠誠','mae93@torp.com','0964599848','台中市','412','大里區','臺中市大里區中興路二段520號','Engaged','348974153123119');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('8OJphOkD','鄭姿婷','larson.elizabeth@wunsch.org','0966276589','台中市','412','大里區','臺中市大里區中興路一段298-3號','Attemping to Engaged','376890617210372');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('vB7JInZb','陳力銘','trinity.hane@sauer.org','0970338359','台中市','412','大里區','臺中市大里區永隆一街82號','Follow Up','376254474126330');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('XlpsMmbx','吳佩怡','garry75@will.com','0902710138','台中市','428','大雅區','神林路1段266號','Closed','376571476405101');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('d4afT7sn','張育霖','corwin.kara@yahoo.com','0990891029','台中市','428','大雅區','科雅西路7號','Long Term','374713308922331');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('n2WWf3b1','陳姿婷','qjenkins@williamson.com','0943531289','台中市','428','大雅區','臺中市大雅區忠義里仁愛路100號','Test Drive','349851701037976');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('1vdsjnHb','李威雪','qbahringer@yahoo.com','0960478168','台中市','428','大雅區','臺中市大雅區中清東路177號','New','348494710120128');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('lC2O2unN','程瑋君','jettie.deckow@yahoo.com','0951922237','台中市','428','大雅區','臺中市大雅區西寶里昌平路四段82號','Engaged','342719823560893');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('0zohq6AO','郭函菁','reymundo30@boehm.org','0901727455','台中市','428','大雅區','臺中市大雅區中科路6號','New','376369491590043');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('jkGJjKem','杜世毓','wherzog@bernhard.com','0976468881','台中市','400','中區','民權路86號','New','347799672723557');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('ME6d7WXS','林可南','ycruickshank@hotmail.com','0929109141','台中市','400','中區','建國路141號','Engaged','341121595230261');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('aAWr2c1z','楊美惠','felicity80@bergnaum.com','0912230804','台中市','400','中區','三民路3段129號','Attemping to Engaged','341993696931926');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('CqO17zCJ','溥怡如','gaylord.anastasia@stracke.org','0946514784','台中市','400','中區','臺中市中區民權路86號','Follow Up','344203987838948');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('gUo0mYwS','楊必東','jaylon70@west.com','0965065879','台中市','400','中區','臺中市中區公園路4號','Closed','374944260979510');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('ajMICq5R','陳珮瑜','gladys.price@frami.org','0908457212','台中市','411','太平區','長億六街1號','Long Term','377098256921627');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('wTXDo21L','李筱涵','eldon59@grant.com','0949686499','台中市','411','太平區','臺中市太平區長億一街53、55號','Test Drive','375724886671306');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('W80bZ516','林克屏','mertz.humberto@monahan.com','0921712455','台中市','411','太平區','臺中市太平區中山路一段325、327號','New','349995827329088');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('JwMbeC4t','吳偉銘','mcglynn.santa@heathcote.com','0997289482','台中市','411','太平區','臺中市太平區光興路517、519號','Engaged','345297635738756');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('Rm6Iw5CA','李依華','emmanuel77@gottlieb.biz','0955419913','台中市','411','太平區','臺中市太平區中興東路25號','New','349301221753165');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('U9NOAqOL','張佳慧','rau.sabryna@hotmail.com','0943074900','台中市','411','太平區','臺中市太平區中山路四段27號','New','372610291256648');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('kfMlPrmF','李惠婷','dmckenzie@gmail.com','0936286178','台中市','411','太平區','臺中市太平區永豐路338號','Engaged','376334758824550');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('j0Gzx0Sq','胡江真','wherzog@gmail.com','0950437230','台中市','406','北屯區','臺中市北屯區四平路1號','Attemping to Engaged','377409947992366');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('Fnfa7l25','師凱元','schulist.westley@yahoo.com','0972579710','台中市','406','北屯區','臺中市北屯區進化北路37-1號','Follow Up','376444683096255');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('mAuP7KoV','翁宜欣','hill.margaret@hessel.com','0976095577','台中市','406','北屯區','臺中市北屯區豐樂路二段162號','Closed','372590282724699');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('MiRRYWPd','楊萬芷','sedrick.wolff@little.biz','0953911765','台中市','406','北屯區','臺中市北屯區東山路一段38-1號','Long Term','342719841405295');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('OK7nwsw7','黃正修','granville.hahn@cartwright.org','0976706574','台中市','406','北屯區','臺中市北屯區敦化路1段627號','Test Drive','374590201580501');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('NGqTW546','杜玉玲','zemlak.jerrod@hotmail.com','0972002577','台中市','406','北屯區','臺中市北屯區環中東路二段253號，255號','New','377881898245186');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('taYWmcc6','瞿家銘','bria.abernathy@hotmail.com','0908759597','台中市','406','北屯區','臺中市北屯區文心路四段752號','Engaged','377452421906890');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('bb1Ms8a1','賴明倫','upton.bret@gmail.com','0936256435','台中市','406','北屯區','臺中市北屯區松竹北路110號','New','342252945262123');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('hnYxgk5O','鄭國利','reilly.maryjane@johnston.com','0968806044','台中市','404','北區','學士路91號','New','372493675023607');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('e34pyOGi','陳政芳','bert.ullrich@hotmail.com','0961378205','台中市','404','北區','英士路109號','Engaged','372789569700758');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('h9dn4IUI','蔡孟修','uswaniawski@quigley.com','0916650690','台中市','404','北區','臺中市北區三民路三段140號','Attemping to Engaged','371684266538984');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('TgmywxrG','施克廷','rboyle@oberbrunner.info','0925829757','台中市','404','北區','臺中市北區雙十路二段119號','Follow Up','379481821246977');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('WMjUJgC0','張郁雯','tweimann@hotmail.com','0963627170','台中市','404','北區','臺中市北區五權路311、313號','Closed','378356255201055');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('C1aD875x','唐林凡','elisa94@stanton.com','0922684430','台中市','404','北區','臺中市北區漢口路三段189號','Long Term','346024386760360');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('q1kZLv9O','梁俊德','bartoletti.zachery@murazik.com','0989130569','台中市','404','北區','臺中市北區民權路365號','Test Drive','375516487654339');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('mHuzAg3o','林育侑','jessie71@oberbrunner.com','0914064690','台中市','404','北區','臺中市北區健行路190號','New','377703103104125');
insert into client (id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, passwd) values ('sp3799lb','劉至岑','hgottlieb@bartoletti.org','0963627970','台中市','438','外埔區','臺中市外埔區甲后路三段923號','Engaged','375973032692050');

/* 預設資料 - 內部員工 */
INSERT INTO EMP VALUES (
	'ADMIN',
	'Joe Admin',
	'demoAdmin@demo.com',
	'0983923233',
	'$2a$11$TyQUoTVGEF.dBG1aYk9R1elHuj03pnOzkpEKdSlOdkDbfBAw40Y7.',
	'Boss',
	'',
	'admin',
	'Taipei Neihu',
	'1000000'
);

INSERT INTO EMP VALUES (
	'salesDemo',
	'Joe Sales',
	'demoSales@demo.com',
	'0983923233',
	'$2a$11$TyQUoTVGEF.dBG1aYk9R1elHuj03pnOzkpEKdSlOdkDbfBAw40Y7.',
	'CES',
	'ADMIN',
	'Sales',
	'Taipei',
	'100000'
);


/* 預設資料 - 內部顧客資料 */
select id, full_name, client_email, phone, city, zip_code, town, full_address, sale_stage, emp_id into client_inner from client;

update client_inner set emp_id = 'salesDemo';
ALTER TABLE client_inner
   ADD CONSTRAINT PK_client_inner_ID PRIMARY KEY CLUSTERED (ID);

/* 客戶活動資料表 */
CREATE TABLE client_inner_activity (
  id int identity(1,1) primary key not null,
  title varchar(150) not null,
  act_type varchar(20) not null,
  comment varchar(max) not null,
  emp_id VARCHAR(20) foreign key REFERENCES emp(Id),
  cli_id VARCHAR(20) foreign key REFERENCES CLIENT_INNER(ID) not null,
  create_date datetime not null DEFAULT CURRENT_TIMESTAMP,
);


/* 最新消息資料表 */
CREATE TABLE Carnews(
	news_id int IDENTITY(1,1) NOT NULL,
	content varchar(max) NOT NULL,
	remarks varchar(255) NULL,
	subtitle varchar(255) NULL,
	title varchar(255) NULL,
	upload_date varchar(255) NULL,
	image varbinary(max) NULL
) 

 /* 試駕資料表 */
create table TestDrive (
formId nvarchar(24) primary key, --表單編號
driveDate date not null, --試駕日期
carMod nvarchar(10) not null, --試駕車種
driveLoc nvarchar(10) not null, --試駕地區
driveLocSit nvarchar(10) not null, --試駕據點
sales nvarchar(10) not null, --業務人員
formTime nvarchar(30) not null, --送表時間
nameCli nvarchar(10) not null, --顧客姓名
gendCli nvarchar(10) not null, --顧客性別
timCli nvarchar(10) not null, --聯絡時間
mailCli nvarchar(40) not null, --聯絡mail
telCli nvarchar(20) not null, --聯絡電話
remark nvarchar(200), --備註
);

/* 預設資料 - 試駕資料 */

insert into TestDrive
values('Xx111111','2021-10-07','A6','台北','內湖','alex','2021/07/22 13:57:53','王大大','先生','早','aaa@mail.com','0912345678',null)
insert into TestDrive
values('Xx222222','2021-10-12','A7','台北','大安','beth','2021/07/21 10:22:53','陳美美','小姐','早午','bbbb@mail.com','0923456789','詢價其他車種')
insert into TestDrive
values('Xx333333','2021-10-12','Q2','台中','大里','cara','2021/06/20 05:02:53','王小小','先生','午晚','ccccc@mail.com','0934567890',null)
insert into TestDrive
values('Xx444444','2021-10-13','Q2','高雄','左營','dylan','2021/04/28 14:00:03','許花花','小姐','早午晚','dd@mail.com','0945678901',null)
insert into TestDrive
values('Xx5555555','2021-10-05','A8','桃園','中壢','eric','2021/03/22 13:57:53','李大大','其他','晚','ee@mail.com','0956789012',null)


/* 預設資料 - 最新消息 */
insert into Carnews (Title, Subtitle, upload_date, Content, Remarks)
Values('絕美電駒 Audi e-tron GT 車系開始預售180kW Audi 極速充電站同步擴點',
'四環品牌持續推動台灣電動車發展，繼純電休旅車後，再度引進絕美電駒 Audi e-tron GT 完整車系陣容來台，以全新純電力作演繹新世代設計精髓，更將純電駕馭樂趣發展至新高度。',
'2021-06-30',
'Audi 首席設計師 Marc Lichte 提到：「創新就是要跳出框架，挑戰不同以往的形式，設計一款全新純電動車正是如此，需以嶄新思考角度出發，而 Audi e-tron GT 更是我設計生涯中截至目前為止最迷人的作品，沒有之一。」Audi e-tron GT 開啟四環品牌性能純電發展新紀元，Audi 設計團隊將品牌造車精髓如細節工藝、精準操控、設計等面向發揮至新高度，亦刻劃出未來純電車設計發展的走向。好的設計基礎關鍵在於比例，透過和諧的比例設計，Audi e-tron GT 低重心寬扁的蜂巢式盾形護罩設計，讓車頭更顯霸氣張力，俐落的車身線條延伸至車尾，融合優雅與肌力之美的斜背曲線，完美均衡的黃金比例成就 Audi e-tron GT 迷人的魅力。空氣力學是電動車造車的關鍵因素之一，Audi 設計團隊在研發過程中更緊密與空氣力學工程團隊合作，Audi e-tron GT 不僅展現新純電美學巔峰，更創造出 0.24Cd 風阻係數，進一步增進車輛動能輸出與續航力表現。',
'續航里程為參考 Audi 德國原廠送測之 WLTP 測試數據。實際道路行駛里程會隨天候、路況、載重、所使用的輪胎 / 輪圈組及駕駛方式和其他非技術性因素影響。')

insert into Carnews (Title, Subtitle, upload_date, Content, Remarks)
Values('Audi 安心措施 雙重把關
專人到府取送車與線上安心賞車服務 守護您與愛車的安全',
'台灣奧迪針對展示中心及服務廠全面實施嚴謹防疫措施，守護車主消費者與前線服務人員安全。',
'2021-06-28',
'共同防疫時期為提供安心無虞的購車及保養維修環境，台灣奧迪針對展示中心及服務廠全面實施嚴謹防疫措施，守護車主消費者與前線服務人員安全，除購車推出「Audi 線上安心賞車服務」，提供專屬線上遠距賞車，讓車主與消費者能安心賞車；針對維修保養部分，亦提供「專人到府取送車服務」，並進行維修時間分流安排，雙重把關，守護您與愛車的健康安全。即日起至 8 月 31 日，凡 Audi 車主預約回廠即可獲得 Audi 乾洗手乙瓶，零件、精品夏季優惠中，消費滿額享好禮亦有機會再抽萬元電動滑板車。面對國內疫情快速變化，台灣奧迪針對購車及保養維修環境，皆實施全面嚴謹防疫措施，全台 Audi 展示中心、服務廠環境與展示及試乘車輛內外之皆進行消毒清潔之外，各經銷商夥伴均配合政府實聯制，前線服務人員每日執行量測額溫、酒精消毒、注意手部清潔等個人防疫工作，並全程配戴口罩為車主與消費者服務。
防疫期間亦提供貼心服務，購車方面已推出「Audi 線上安心賞車服務」，車主及消費者不必出門即可預約使用專屬線上遠距賞車功能；伴隨夏季來臨，針對車主定期保養部分，亦提供「專人到府取送車服務」，並將車輛維修時間進行分流安排，雙重把關，守護您與愛車的健康安全。',
'本優惠不得與其他優惠同時使用。保固案件恕不適用於本活動。')

insert into Carnews (Title, Subtitle, upload_date, Content, Remarks)
Values('美背蹤影現身 Audi Q5 Sportback 預售開跑',
'四環美背新勢力 Audi Q5 Sportback 首次引進台灣市場，台灣奧迪推出 45 TFSI quattro advanced 與限量 Edition One 兩款預售車型，優美外型偕同多項智慧科技，給予全方位的駕馭體驗。',
'2021-06-21','Audi 持續拓展多元休旅陣容，正式推出品牌第三款 Sportback 斜背休旅車款 - Audi Q5 Sportback，Audi 設計團隊賦予其更具前衛、侵略性的動感造型，從車頭視覺望去整體將頭燈位置上移至極限，單體式八角型水箱護罩不只變得更寬幅更將其視覺位置下移，融合銳利的肌肉摺線，打造更外放、更運動感的面貌；從頭燈線條延伸貫穿整體車側流線身形，收尾至 C 柱斜背優美曲線，力與美的結合成就 Audi Q5 Sportback 剛柔兼具的魅力。
至於四環品牌的靈魂元素「燈光設計」，不僅換上新型照明設計風格，更是對外的溝通媒介，其中 Audi Q5 Sportback 亦可選配新世代 Digital OLED 照明科技，其設有三款個性化燈光造型，車主可依個人喜好於購車時選定屬意的燈光造型，同時 OLED 燈組更具有車輛警示功能，如當車輛於靜止時，系統偵測到後方來車距離低於二公尺，所有 OLED 燈組光源會全數亮起以警示後方人車注意，提升後方辨識度與道路安全性外，並進一步保障周圍用路人的安全。',
'注意事項：本媒體新聞資料所提供之原廠車圖僅供介紹參考，實際配備資訊請以 Audi Taiwan 官網說明為準。'
)

insert into Carnews (Title, Subtitle, upload_date, Content, Remarks)
Values('Audi 領先業界提前施行修正版「汽車買賣定型化契約」
偕同台灣福斯集團全品牌自 6 月 1 日起同步實施',
'Audi 作為國內豪華車市場的指標性品牌，向來高度重視車主服務體驗與消費者權益，將領先同級並偕同集團旗下全品牌提前自 6 月 1 日起正式實施修正版定型化契約，展現對消費者負責任的態度並提供完善的購車保障。',
'2021-06-01',
'作為國內前三大的進口車業者，台灣福斯集團 (VOLKSWAGEN GROUP TAIWAN) 確定將於法律明文規定之生效日的前一個月，自 2021 年 6 月 1 日起領先國內汽車同業，率先實施這項攸關消費者購車權益的重要法案，Audi 將偕同集團旗下包括 Volkswagen、ŠKODA 及福斯商旅全品牌同步施行，進一步保障車主與消費者權益。
台灣福斯集團暨台灣奧迪總裁 Matthias Schepers 表示：「這項法案通過施行後，意味著政府對於保障消費者權益的努力向前邁進一大步，而消費者購車權益更是我們十分重視的，因此我們率先響應政府新政策，並提前施行法律所規範的相關權利義務，致力為台灣消費者提供完善、安心的購車環境。」經濟部於年初修正「汽車買賣定型化契約應記載及不得記載事項」，並訂於 110 年 7 月 1 日生效。新修正版契約規範新車在交付至少 180 日內或行駛至少 1.2 萬公里（兩條件以先到者為準）如果發生重大瑕疵，消費者得請求更換同型（或等值）新車或解除契約。',
'相關詳細「汽車買賣定型化契約應記載及不得記載事項」請詳見經濟部公告'
)

insert into Carnews (Title, Subtitle, upload_date, Content, Remarks)
Values('Audi e-tron 橫跨中橫公路｜台中花蓮越嶺壯遊不充電',
'台灣奧迪特地邀請了 20 家不同分線的媒體，涵蓋汽車線、科技線及生活線的記者朋友，一同駕駛 Audi e-tron 從台中出發前往花蓮路程總長約 225 公里，並路途中完全不充電的狀況下橫跨中部橫貫公路。',
'2021-05-31',
'如果您還覺得電動車還遙不可及，或者對於行駛里程還不具信心，這問題就交由四環品牌全能電旅 Audi e-tron 替你解答！為了協助消費者更了解電動車的特性，台灣奧迪特地邀請了 20 家不同分線的媒體，涵蓋汽車線、科技線及生活線的記者朋友，一同駕駛 Audi e-tron 從台中出發前往花蓮路程總長約 225 公里，並路途中完全不充電的狀況下橫跨中部橫貫公路，體驗電動車在長途旅行過程中電力耗損的情況以及不同燃油車的駕駛特性。
Audi e-tron 的設計理念即是簡單上手，不因為電動車的機械本質而犧牲汽車該有駕馭樂趣、乘座舒適度和整體的造車品質，此次旅途就是讓媒體朋友體驗無縫接軌純電車的全新感受，並享受電動車在長旅途壯遊旅途的駕馭樂趣！在中橫公路壯遊的旅途中，Audi e-tron 即使車重將近三噸，但透過前後雙馬達所提供的 408PS / 664Nm 最大馬力 / 扭力輸出，並搭配 quattro 智慧型恆時四輪傳動系統，無論面對長途陡坡或是蜿蜒路段都能提供絕佳的牽引力及動力，提供充沛動力的駕馭樂趣。',
'Audi e-tron 55 quattro 橫跨中橫公路 台中花蓮越嶺壯遊不充電')

insert into Carnews (Title, Subtitle, upload_date, Content, Remarks)
Values('四環品牌領先業界 防疫安心措施再升級
Audi 全台經銷據點 全面啟動「服務團隊快篩行動」',
'Audi 齊心防疫守護你我健康安全，共創安心生活，面對疫情快速變化，台灣奧迪執行全面防疫準備，領先業界安心措施再升級，率先於全台 Audi 授權經銷據點，啟動「服務團隊快篩行動」。',
'2021-07-08',
'面對國內疫情變化，齊心共同防疫已是常態性的重要環節，台灣奧迪領先業界，防疫安心措施再升級，自 7 月 12 日起率先於全台 Audi 授權經銷據點，啟動「服務團隊快篩行動」，將使用經由衛福部食品藥物管理署所核可的「羅氏家用新冠病毒抗原自我檢測套組 (鼻腔) SARS-CoV-2 Antigen Self Test Nasal 」，於每週一及週四定期為全體服務同仁進行快篩檢測。
快篩行動將依循中央流行疫情指揮中心制定的相關規範流程，受測人員名單與測試結果進行系統性回報存查；如遇發生人員的快篩結果呈陽性反應，則將立即通報各縣市衛生主管機關，並前往指定醫療院所做更進一步的檢測，同時執行相關場域的全面清潔消毒工作，確保所有團隊同仁與車主消費者的健康安全。
藉由強化全體服務同仁的自主健康，結合 Audi 展示中心、服務廠等服務環境、展示及試乘車輛內外消毒清潔作業，實施完整個人與服務環境防疫措施，以利提供更安心的服務。未來疫情變化多端，台灣奧迪將持續配合政府相關政策，執行完整的防疫準備，除實體購車環境進行全面防疫把關，亦提供如「專人到府取送車」與「線上安心賞車」多元防疫賞車服務，給予更彈性、更安心的服務，用心守護車主與消費者的健康安全，齊心共創安心生活。',
'台灣奧迪領先業界 啟動經銷服務團隊自主快篩檢測')

insert into Carnews (Title, Subtitle, upload_date, Content, Remarks)
Values('四環科技｜人車溝通一手掌握 – 尖端方向盤演進',
'Audi 原廠技術工程團隊不斷進行創新演進，對應每款車型不同個性搭配合適的轉向輔助系統，完美融入動態操控性與舒適性，打造獨特的操控感受。',
'2021-07-02',
'120 年前即存在，方向盤可謂幾乎和汽車本身一樣古老的零件，其實隱藏許多不為人知的奧秘，Audi 於 1980 年代推出液壓動力轉向系統，讓方向盤開始變得更小巧、更易操控，1991 年引入了第一個操作按鈕，讓方向盤開始能執行更多功能，近幾十年來有了革命性的改變。
方向盤看似簡單的圓形設計，從直徑的大小乃至對應駕駛人坐姿的角度，皆由設計工程團隊對應不同車型尺碼進行精密的計算，Audi 對於方向盤設計宗旨，其需具有運動型的設計，盤幅直徑約介於 30 ~ 36mm，並採用雙層泡棉包覆，提供良好的標線均衡性和防滑感，同時方向盤上每個控制按鍵所設置的位置，皆須讓駕駛可以任一拇指進行滑動操作，不影響駕駛行駛為最高準則，隨著車載功能日新月異，現今駕駛者於方向盤上即可直接操作 10 多種智慧功能，更能啟動語音聲控，資訊娛樂輕鬆一手掌握。',
'頂尖轉向結合 _ Dynamic all-wheel steering 動態全輪轉向系統')


insert into Carnews (Title, Subtitle, upload_date, Content, Remarks)
Values('開啟電創未來的四環純電科技核心
Audi e-tron 智能充電與熱能管理系統','全能電旅 Audi e-tron 於 12 月初正式在台上市，為四環實現純電生活圈的品牌願景跨出關鍵第一步...','2020-12-05','全能電旅 Audi e-tron 於 12 月初正式在台上市，為四環實現純電生活圈的品牌願景跨出關鍵第一步。如同 Audi 於 2019 年舉辦的科技電動日 (TechDay Insight e-mobility) 中所揭示的品牌發展願景：「未來將是純電移動的時代。Audi 將以頂尖科技引領車壇，持續推動能滿足日常實用性的純電車款。」對於電動車款來說，穩定且可靠的充電系統更是不可或缺的神經中樞，全能電旅 Audi e-tron 如何透過完美運作的先進智能充電與熱能管理系統，提供車輛足夠電能以滿足不同的行駛需求，更是開啟電創未來新時代最重要的基礎。
對於電動汽車而言，充電過程在日常用車時可說是至關重要，充電所需的時間越短不僅越能滿足客戶的用車需求，也是提升消費者購買意願的關鍵因素。正因如此，當消費者在購買電動車前評估日常的使用便利性時，除了單純考慮最大充電容量之外，充電效率才是另一項關鍵要素。受益於高效的充電速度，Audi e-tron 車主使用最高達 150 kW的 DC 直流充電方式，享受 30 分鐘內即充滿 80% 的高效充電功率，其先進充電系統更可同步對鋰電池模組進行複雜的熱能管理，這正是 Audi e-tron 最引以為傲之處！
','Audi e-tron 50 quattro 和 55 quattro 配置的水冷式高容量鋰電池組，可分別儲存 71 kWh (50 quattro) 與 95 kWh (55 quattro) 總電量。')


insert into Carnews (Title, Subtitle, upload_date, Content)
Values('單攻台灣公路之巔
Audi e-tron 50 quattro 武嶺挑戰 – 上集','四環品牌旗下首款全能電旅 Audi e-tron 正式登台，更在上市前夕進行台灣在地實測...','2020-12-30
','四環品牌旗下首款全能電旅 Audi e-tron 正式登台，更在上市前夕進行台灣在地實測，讓消費者更深入了解其續航表現實力，採用入門車型「Audi e-tron Sportback 50 quattro 」實測挑戰單次充飽電，直攻台灣公路最高點 – 海拔高度達 3,275 公尺的合歡山武嶺！此趟測試路線，以三位成人乘坐狀態，首站於 Audi 台中展間設置的極速充電站進行 DC 直流高效充電，蓄滿電力後整備出發，一路從市區平地上坡行駛，行經埔里、清境、昆陽，最終抵達武嶺停車場，究竟 Audi e-tron 如何成功爬升直攻武嶺目的地，純電旅征各站續航力、電量表現又是如何？'
)

insert into Carnews (Title, Subtitle, upload_date, Content)
Values('2021 Audi Roadshow 全台巡迴活動
Audi e-tron Sportback | RS Q3 Sportback 驚豔登場','台灣奧迪繼 12 月初發表全能電旅 Audi e-tron 之後，將於歲末迎新之際接續舉辦「2021 Audi Roadshow」全台巡迴活動。','2020-12-22','台灣奧迪繼 12 月初發表全能電旅 Audi e-tron 之後，將於歲末迎新之際接續舉辦「2021 Audi Roadshow」全台巡迴活動。全新高性能運動跑旅 Audi RS Q3 Sportback 將首次驚豔亮相，攜手 Audi e-tron Sportback 強力放送四環純電與性能魅力！此次全台巡迴活動的展示車款，另包含兩部讓消費者期待許久的新車，四環旗下最具設計感的全新 Audi TT Coupé 雙門跑車和 A5 Sportback 絕美轎跑也將連袂登場，為這場精彩的巡迴展示活動，挹注更多讓人熱血、動感與科技氛圍等元素的展演氣勢！身為四環旗下最具代表性的跑車力作，Audi TT Coupé 自初代車型發表以來始終都是設計美學工藝的代名詞，除了完整呈現概念車的原創性，在歷經三代車型的進化後更將家族設計語彙詮釋得淋漓盡致。而全新 A5 Sportback 絕美轎跑除了擁有出色的操控性與絕佳動態表現，絕美的車身外觀造型與紋理層次，搭配優雅俐落的車頂線條，內斂的美學設計品味使全新 A5 Sportback 無論動靜皆是眾人目光焦點，完美詮釋四環絕美轎跑的自信魅力！'
)

insert into Carnews (Title, Subtitle, upload_date, Content, Remarks)
Values('四環 5 林高手攀上性能巔峰 新一代 Audi TT RS 正式上市','最受國內性能車迷期待的 Audi RS 車系成員之一終於報到， Audi TT RS 強勢在台登場！','2021-07-09',
'面對國內疫情變化，齊心共同防疫已是常態性的重要環節，台灣奧迪領先業界，防疫安心措施再升級，自 7 月 12 日起率先於全台 Audi 授權經銷據點，啟動「服務團隊快篩行動」，將使用經由衛福部食品藥物管理署所核可的「羅氏家用新冠病毒抗原自我檢測套組 (鼻腔) SARS-CoV-2 Antigen Self Test Nasal 」，於每週一及週四定期為全體服務同仁進行快篩檢測。 快篩行動將依循中央流行疫情指揮中心制定的相關規範流程，受測人員名單與測試結果進行系統性回報存查；如遇發生人員的快篩結果呈陽性反應，則將立即通報各縣市衛生主管機關，並前往指定醫療院所做更進一步的檢測，同時執行相關場域的全面清潔消毒工作，確保所有團隊同仁與車主消費者的健康安全。 藉由強化全體服務同仁的自主健康，結合 Audi 展示中心、服務廠等服務環境、展示及試乘車輛內外消毒清潔作業，實施完整個人與服務環境防疫措施，以利提供更安心的服務。未來疫情變化多端，台灣奧迪將持續配合政府相關政策，執行完整的防疫準備，除實體購車環境進行全面防疫把關，亦提供如「專人到府取送車」與「線上安心賞車」多元防疫賞車服務，給予更彈性、更安心的服務，用心守護車主與消費者的健康安全，齊心共創安心生活。',
'台灣奧迪領先業界 啟動經銷服務團隊自主快篩檢測'
);

insert into Carnews (Title, Subtitle, upload_date, Content, Remarks)
Values('四環全新純電概念車 Audi skysphere concept 
開啟未來移動時代的無限可能','日前 Audi 總部預告將發表三款以 sphere 為名的純電系列概念車，預演未來純電自動駕駛的發展走向，首部曲 Audi skysphere concept 全球亮相。','2021-08-12',
'Audi skysphere concept 是鎖定 Level 4 自動駕駛設定下研發而成，亦即未來行駛於特定道路或交通情況下，駕駛功能可交由汽車自動駕駛。以此條件下，概念車以 Sphere 球體作為主題，理念是未來駕駛座不再是唯一的焦點，將乘客圍繞於車艙空間作為中心，互動式體驗車艙更是未來設計發展的核心重點。
Audi skysphere concept 搭載創新的可變軸距科技，讓車身軸距及車內配備元件具備伸縮滑動功能，受惠於此技術，設計團隊開發出「Sports」與「Grand Touring」兩種不同駕駛模式，駕駛者只需透過輕觸按鈕，即可從豪華敞篷跑車搖身轉變為自動駕駛豪華座艙，當切換至 Grand Touring 體驗模式，車身軸距將延伸至 5.19 公尺，車內方向盤與踏板將進行隱藏收折，車內儀表資訊系統亦同步自動往後移至最適合乘員使用的位置，結合以設計家居所開發的人體工學座艙設計，不僅讓車內所有乘員擁有更彈性靈活的駕乘空間，享受前所未見的豪華車艙體驗，也為未來運動敞篷車款在空間運用上開創更多的無限可能 。',
'台灣奧迪領先業界 啟動經銷服務團隊自主快篩檢測'
);

insert into Carnews (Title, Subtitle, upload_date, Content, Remarks)
Values('能型敢行 絕藝跑旅｜Audi Q5 Sportback 耀眼上市',
'Audi Q 系列全員到齊！The new Audi Q5 Sportback 正式抵台，偕同四環旗下超過 10 款新世代休旅車款，提供最完整的休旅產品陣容。','2021-07-23',
'Audi 設計團隊再度推出 Sportback 車款最新力作，The new Audi Q5 Sportback 以更具侵略性、運動化的動感造型之姿，加入四環休旅陣容。望眼車頭造型，銳利頭燈搭配更寬幅的八角型水箱護罩，結合兩側肌肉摺線，彰顯更外放的視覺設計；由燈型尾端線條延伸貫穿流線車側身形，與 C 柱優雅的美背曲線於車尾端完美收合，勾勒出力與美的跑旅身形比例，成就 Audi Q5 Sportback 剛柔兼具的閃耀魅力。
而四環團隊為賦予 Audi Q5 Sportback 更多變的外型風貌，全車系三款車型於車頭造型設計皆有獨特的識別風格，首先 advanced 車型採用鍍鉻直柵式水箱護罩設計；而上市新增的 S line 車型則換上蜂巢式水箱護罩設計搭配鍍鉻元件點綴，結合兩側鍍鉻幾何圖形保桿設計，流露更運動化面貌；至於限量 Edition One 車型同樣採用蜂巢式水箱護罩設計，但改搭黑色外觀風格套件，黑化視覺另搭配紅色卡鉗的 20 吋鋁圈，讓整體車型更增添陽剛氣息，透過設計細節上的巧思，讓消費者可選擇最合乎自我的個性面貌。',
'註：本媒體新聞資料所提供之原廠車圖僅供介紹參考，實際配備資訊請以全台 Audi 授權展示中心說明為準。'
);

insert into Carnews (Title, Subtitle, upload_date, Content, Remarks)
Values('今年平安夜也想來電 就由 Audi 實現聖誕老人心願',
'當純電未來前來敲門，聖誕老人也需要與時俱進。今年平安夜前夕，聖誕老人惦記著的心願終於實現！在動盪 2020 年的平安夜','2020-12-18',
'當純電未來前來敲門，聖誕老人也需要與時俱進。今年平安夜前夕，聖誕老人惦記著的心願終於實現！在動盪 2020 年的平安夜，聖誕老人風度翩翩地踩下 Audi e-tron GT 的電門，悄悄劃過寂靜深夜的已不是隆隆的引擎聲浪，而是銳利炫目的頭燈，讓聖誕老人能以優雅之姿奔馳世界各地，努力為全球的孩子們實現聖誕願望！',
'Audi 祝您聖誕節快樂！ Merry Christmas!'
);
