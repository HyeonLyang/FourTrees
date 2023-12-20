--------------------------------------------------------
--  파일이 생성됨 - 화요일-12월-19-2023   
--------------------------------------------------------
DROP SEQUENCE "ACCOUNT_SEQ";
DROP SEQUENCE "AREA_SEQ";
DROP SEQUENCE "BOOKMARK_SEQ";
DROP SEQUENCE "CATEGORY_SEQ";
DROP SEQUENCE "IMG_SEQ";
DROP SEQUENCE "NOTICE_IDX";
DROP SEQUENCE "RES_SEQ";
DROP SEQUENCE "REVIEW_SEQ";
DROP TABLE "BOOKMARK";
DROP TABLE "IMG";
DROP TABLE "NOTICE";
DROP TABLE "REVIEW";
DROP TABLE "RESTAURANT";
DROP TABLE "AREA";
DROP TABLE "CATEGORY";
DROP TABLE "ACCOUNT";
--------------------------------------------------------
--  DDL for Sequence ACCOUNT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ACCOUNT_SEQ"  MINVALUE 1001 MAXVALUE 9999 INCREMENT BY 1 START WITH 1013 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence AREA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "AREA_SEQ"  MINVALUE 101 MAXVALUE 999 INCREMENT BY 1 START WITH 122 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence BOOKMARK_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BOOKMARK_SEQ"  MINVALUE 1001 MAXVALUE 9999 INCREMENT BY 1 START WITH 1001 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CATEGORY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CATEGORY_SEQ"  MINVALUE 101 MAXVALUE 999 INCREMENT BY 1 START WITH 140 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence IMG_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "IMG_SEQ"  MINVALUE 1001 MAXVALUE 9999 INCREMENT BY 1 START WITH 1002 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_IDX
--------------------------------------------------------

   CREATE SEQUENCE  "NOTICE_IDX"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 2 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence RES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "RES_SEQ"  MINVALUE 1001 MAXVALUE 9999 INCREMENT BY 1 START WITH 1511 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "REVIEW_SEQ"  MINVALUE 1001 MAXVALUE 9999 INCREMENT BY 1 START WITH 1011 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table ACCOUNT
--------------------------------------------------------

  CREATE TABLE "ACCOUNT" 
   (	"IDX" NUMBER DEFAULT "ACCOUNT_SEQ"."NEXTVAL", 
	"USERID" VARCHAR2(100 BYTE), 
	"USERPW" VARCHAR2(200 BYTE), 
	"NICK" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"STATUS" VARCHAR2(100 BYTE) DEFAULT '게스트', 
	"BIRTH" DATE, 
	"PHONE" VARCHAR2(100 BYTE), 
	"FOREIGNER" VARCHAR2(100 BYTE), 
	"GENDER" VARCHAR2(10 BYTE), 
	"JOIN_DATE" DATE DEFAULT sysdate, 
	"IMG" VARCHAR2(100 BYTE) DEFAULT '기본 이미지.jpg'
   ) ;
--------------------------------------------------------
--  DDL for Table AREA
--------------------------------------------------------

  CREATE TABLE "AREA" 
   (	"IDX" NUMBER DEFAULT "AREA_SEQ"."NEXTVAL", 
	"NAME" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table BOOKMARK
--------------------------------------------------------

  CREATE TABLE "BOOKMARK" 
   (	"IDX" NUMBER DEFAULT "BOOKMARK_SEQ"."NEXTVAL", 
	"ACC_IDX" NUMBER, 
	"RES_IDX" NUMBER, 
	"MARK_DATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "CATEGORY" 
   (	"IDX" NUMBER DEFAULT "CATEGORY_SEQ"."NEXTVAL", 
	"NAME" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table IMG
--------------------------------------------------------

  CREATE TABLE "IMG" 
   (	"IDX" NUMBER DEFAULT "IMG_SEQ"."NEXTVAL", 
	"REV_IDX" NUMBER, 
	"IMG_PATH" VARCHAR2(200 BYTE) DEFAULT 'no_image.jpg'
   ) ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "NOTICE" 
   (	"IDX" NUMBER DEFAULT "NOTICE_IDX"."NEXTVAL", 
	"TITLE" VARCHAR2(50 BYTE), 
	"CONTENTS" VARCHAR2(200 BYTE), 
	"WRITE_DATE" DATE DEFAULT sysdate, 
	"FACE" VARCHAR2(200 BYTE) DEFAULT null
   ) ;
--------------------------------------------------------
--  DDL for Table RESTAURANT
--------------------------------------------------------

  CREATE TABLE "RESTAURANT" 
   (	"IDX" NUMBER DEFAULT "RES_SEQ"."NEXTVAL", 
	"NAME" VARCHAR2(100 BYTE), 
	"ADDRESS" VARCHAR2(200 BYTE), 
	"RES_PHONE" VARCHAR2(30 BYTE) DEFAULT '정보없음', 
	"CATEGORY" NUMBER, 
	"SCORE" NUMBER DEFAULT 0, 
	"PHOTO" VARCHAR2(200 BYTE), 
	"HOLIDAY" VARCHAR2(30 BYTE) DEFAULT '연중무휴', 
	"OP_HOUR" VARCHAR2(30 BYTE), 
	"PARK_AREA" NUMBER, 
	"VIEW_COUNT" NUMBER DEFAULT 0, 
	"PRICE" VARCHAR2(100 BYTE) DEFAULT 0, 
	"LINK" VARCHAR2(200 BYTE), 
	"AREA_IDX" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "REVIEW" 
   (	"IDX" NUMBER DEFAULT "REVIEW_SEQ"."NEXTVAL", 
	"WRITER" VARCHAR2(30 BYTE), 
	"CONTENT" VARCHAR2(300 BYTE), 
	"VISIT_DATE" DATE, 
	"WRITE_DATE" DATE DEFAULT sysdate, 
	"SCORE" NUMBER, 
	"GOOD" NUMBER, 
	"RES_IDX" NUMBER, 
	"IMG" VARCHAR2(100 BYTE) DEFAULT 'no_image.jpg'
   ) ;
REM INSERTING into ACCOUNT
SET DEFINE OFF;
Insert into ACCOUNT (IDX,USERID,USERPW,NICK,EMAIL,STATUS,BIRTH,PHONE,FOREIGNER,GENDER,JOIN_DATE,IMG) values (1001,'test1','9527d65c7535a83a95f24355d85e5fed46e8cfc7a0c340ae89474c7a961339b1cfc053cba2121eea715c088a17172e4019703fc28ddec2c1e161009235445994','JohnD','test4@itbank.com','관리자',to_date('90/01/15','RR/MM/DD'),'010-7854-2134','내국인','남',to_date('23/11/24','RR/MM/DD'),'클래식.jpeg');
Insert into ACCOUNT (IDX,USERID,USERPW,NICK,EMAIL,STATUS,BIRTH,PHONE,FOREIGNER,GENDER,JOIN_DATE,IMG) values (1012,'test2','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','kyun','kyun@bb.bb','게스트',to_date('95/03/15','RR/MM/DD'),'010-4587-2563','내국인','남',to_date('23/12/18','RR/MM/DD'),'기본 이미지.jpg');
REM INSERTING into AREA
SET DEFINE OFF;
Insert into AREA (IDX,NAME) values (120,'서울 영등포구');
Insert into AREA (IDX,NAME) values (103,'강원 삼척시');
Insert into AREA (IDX,NAME) values (104,'강원 속초시');
Insert into AREA (IDX,NAME) values (105,'강원 원주시');
Insert into AREA (IDX,NAME) values (106,'강원 춘천시');
Insert into AREA (IDX,NAME) values (109,'부산 수영구');
Insert into AREA (IDX,NAME) values (110,'부산 영도구');
Insert into AREA (IDX,NAME) values (111,'부산 중구');
Insert into AREA (IDX,NAME) values (101,'강원 강릉시');
Insert into AREA (IDX,NAME) values (112,'부산 해운대구');
Insert into AREA (IDX,NAME) values (113,'서울 강서구');
Insert into AREA (IDX,NAME) values (114,'서울 동대문구');
Insert into AREA (IDX,NAME) values (115,'서울 마포구');
Insert into AREA (IDX,NAME) values (116,'서울 서대문구');
Insert into AREA (IDX,NAME) values (117,'서울 종로구');
Insert into AREA (IDX,NAME) values (118,'제주 서귀포시');
Insert into AREA (IDX,NAME) values (119,'제주 제주시');
Insert into AREA (IDX,NAME) values (107,'강원 태백시');
Insert into AREA (IDX,NAME) values (108,'부산 부산진구');
Insert into AREA (IDX,NAME) values (102,'강원 동해시');
Insert into AREA (IDX,NAME) values (121,'서울 강남구');
REM INSERTING into BOOKMARK
SET DEFINE OFF;
REM INSERTING into CATEGORY
SET DEFINE OFF;
Insert into CATEGORY (IDX,NAME) values (102,'돈까스·회·일식');
Insert into CATEGORY (IDX,NAME) values (103,'백반·죽·국수');
Insert into CATEGORY (IDX,NAME) values (104,'분식');
Insert into CATEGORY (IDX,NAME) values (105,'야식');
Insert into CATEGORY (IDX,NAME) values (106,'양식');
Insert into CATEGORY (IDX,NAME) values (107,'족발·보쌈');
Insert into CATEGORY (IDX,NAME) values (108,'중식');
Insert into CATEGORY (IDX,NAME) values (109,'찜·탕·찌개');
Insert into CATEGORY (IDX,NAME) values (110,'치킨');
Insert into CATEGORY (IDX,NAME) values (111,'카페·디저트');
Insert into CATEGORY (IDX,NAME) values (112,'피자');
Insert into CATEGORY (IDX,NAME) values (113,'한식');
Insert into CATEGORY (IDX,NAME) values (101,'고기·구이');
Insert into CATEGORY (IDX,NAME) values (114,'페스트푸드');
REM INSERTING into IMG
SET DEFINE OFF;
Insert into IMG (IDX,REV_IDX,IMG_PATH) values (1001,1001,'image.jpg');
REM INSERTING into NOTICE
SET DEFINE OFF;
Insert into NOTICE (IDX,TITLE,CONTENTS,WRITE_DATE,FACE) values (1,'공지사항 테스트',null,to_date('23/11/23','RR/MM/DD'),null);
Insert into NOTICE (IDX,TITLE,CONTENTS,WRITE_DATE,FACE) values (1,'공지사항 테스트',null,to_date('23/11/16','RR/MM/DD'),null);
Insert into NOTICE (IDX,TITLE,CONTENTS,WRITE_DATE,FACE) values (1,'공지사항 테스트',null,to_date('23/11/23','RR/MM/DD'),null);
Insert into NOTICE (IDX,TITLE,CONTENTS,WRITE_DATE,FACE) values (1,'공지사항 테스트',null,to_date('23/11/16','RR/MM/DD'),null);
REM INSERTING into RESTAURANT
SET DEFINE OFF;
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1434,'중문 돌담흑돼지','제주 서귀포시 일주서로 909 1층','0507-1391-4619',101,0,'제주 서귀포시_중문 돌담흑돼지_공식.jpg','연중무휴','11:00-24:00',1,0,'9800','https://www.instagram.com/doldamblackpork_jungmun/',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1435,'자매국수','제주 제주시 항골남길 46 자매국수','064-746-2222',103,0,'제주 제주시_자매국수_공식.jpg','수요일','9:00-18:00',1,0,'9000','https://m.smartstore.naver.com/jamae_jeju',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1436,'도민상회본점','제주 제주시 한림읍 한림로3길 8 도민상회본점 제주한림협재흑돼지','0507-1334-0795',101,0,'제주 제주시_도민상회본점_공식.jpg','연중무휴','11:00-23:00',1,0,'42000-66000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1437,'고집돌우럭 중문점','제주 서귀포시 일주서로 879','0507-1408-1540',103,0,'제주 서귀포시_고집돌우럭 중문점_공식.jpg','연중무휴','10:00-21:30',1,0,'24000-33000','https://blog.naver.com/gozipjeju_',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1438,'갈치요리 전문점 뜰에','제주 제주시 애월읍 애월로11길 23-1','064-799-1479',109,0,'제주 제주시_갈치요리 전문점 뜰에_공식.jpg','연중무휴','10:30-21:10',1,0,'69000','https://www.instagram.com/jeju_hairtail/',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1439,'늘봄흑돼지','제주 제주시 한라대학로 12','064-744-9001',101,0,'제주 제주시_늘봄흑돼지_공식.jpg','연중무휴','11:00-23:00',1,0,'22000','https://blog.naver.com/lulumerry',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1440,'제주 도도리고기국수','제주 제주시 다호북길 109 1층','0507-1407-5153',103,0,'제주 제주시_제주 도도리고기국수_공식.jpg','연중무휴','10:00-20:00',1,0,'10000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1441,'연동 돌담흑돼지','제주 제주시 연동7길 35 2층 돌담흑돼지','0507-1389-6090',101,0,'제주 제주시_연동 돌담흑돼지_공식.jpg','연중무휴','11:30-23:50',2,0,'11000','https://www.instagram.com/doldamblackpork_jeju',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1442,'양대감 노형','제주 제주시 원노형로 36 101호,102호','0507-1427-9593',101,0,'제주 제주시_양대감 노형_공식.jpg','연중무휴','12:00-24:00',2,0,'11000','https://www.instagram.com/yangdaegam_jeju',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1443,'동문시장고기국수 금복식당','제주 제주시 동문로 16','064-757-6055',103,0,'제주 제주시_동문시장고기국수 금복식당_공식.jpg','연중무휴','8:00-18:30',2,0,'8000','https://www.instagram.com/jeju_geumbok_1968/?igshid=MzNlNGNkZWQ4Mg%3D%3D',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1444,'제주도 해녀세자매','제주 제주시 한림읍 한림해안로 275 1층 제주도 해녀세자매','0507-1488-0083',109,0,'제주 제주시_제주도 해녀세자매_공식.jpg','연중무휴','11:00-20:30',1,0,'55000-170000','https://www.instagram.com/jang_hi/',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1445,'성산일출봉 아시횟집','제주 서귀포시 성산읍 성산등용로 19','0507-1343-3987',102,0,'제주 서귀포시_성산일출봉 아시횟집_공식.jpg','연중무휴','7:00-23:00',1,0,'65000','https://www.instagram.com/jeju._.asi/',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1446,'랜디스도넛 제주애월점','제주 제주시 애월읍 애월로 27-1','0507-1458-0610',111,0,'제주 제주시_랜디스도넛 제주애월점_공식.jpg','연중무휴','10:00-19:00',2,0,'2700',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1447,'새빌','제주 제주시 애월읍 평화로 1529','0507-1315-0080',111,0,'제주 제주시_새빌_공식.jpg','연중무휴','9:00-19:00',1,0,'5500','http://www.instagram.com/saebilcafe',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1448,'제주오성 갈치조림','제주 서귀포시 중문관광로 27 제주오성 갈치조림 제주도 중문 본점','0507-1315-3120',102,0,'제주 서귀포시_제주오성 갈치조림_공식.jpg','연중무휴','9:00-21:00',1,0,'50000-200000','https://blog.naver.com/learning2021',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1449,'용두암 엄마 해장국','제주 제주시 용마로 24','0507-1411-5017',109,0,'제주 제주시_용두암 엄마 해장국_공식.jpg','수요일','7:00-16:00',1,0,'10000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1451,'제주부엌','제주 제주시 원노형로 37 2층 제주부엌','0507-1365-5645',103,0,'제주 제주시_제주부엌_공식.jpg','연중무휴','10:00-21:00',1,0,'10000','https://www.instagram.com/@noodle_jeju',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1452,'해오반 함덕점','제주 제주시 조천읍 조함해안로 514 2층 해오반 함덕점','064-784-4544',103,0,'제주 제주시_해오반 함덕점_공식.jpg','연중무휴','9:00-21:00',2,0,'15000-59000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1453,'우무','제주 제주시 한림읍 한림로 542-1','0507-1327-0064',111,0,'제주 제주시_우무_공식.jpg','연중무휴','9:00-20:00',1,0,'6800','https://www.instagram.com/jeju.umu',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1454,'해송수산물회센타','제주 제주시 애월읍 애월로11길 23-1','0507-1376-1662',102,0,'제주 제주시_해송수산물회센타_공식.jpg','1,3번째 수요일','11:00-22:30',1,0,'48000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1456,'노을리','제주 제주시 애월읍 애월해안로 654 가동 1층','0507-1491-5032',111,0,'제주 제주시_노을리_공식.jpg','연중무휴','9:00-21:00',1,0,'6900','https://blog.naver.com/jejuuni33',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1457,'고집돌우럭 제주공항점','제주 제주시 임항로 30','0507-1436-1008',103,0,'제주 제주시_고집돌우럭 제주공항점_공식.jpg','연중무휴','10:00-21:30',1,0,'24000-33000','https://blog.naver.com/gozipjeju_',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1458,'숙성도 중문점','제주 서귀포시 일주서로 966','064-739-5213',101,0,'제주 서귀포시_숙성도 중문점_공식.jpg','연중무휴','12:00-22:00',2,0,'22000','http://app.catchtable.co.kr/ct/shop/suksungdo_jm',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1459,'더클리프','제주 서귀포시 중문관광로 154-17','0507-1312-8866',111,0,'제주 서귀포시_더클리프_공식.jpg','연중무휴','10:00-22:00',1,0,'22000','http://www.instagram.com/thecliffjeju',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1461,'가람돌솥밥','제주 서귀포시 중문관광로 332 가람돌솥밥','0507-1432-1200',103,0,'제주 서귀포시_가람돌솥밥_공식.jpg','연중무휴','8:00-21:00',1,0,'18000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1462,'고은물식당','제주 서귀포시 안덕면 화순해안로 110 고은물식당','0507-1428-5656',103,0,'제주 서귀포시_고은물식당_공식.jpg','수요일','8:00-22:00',1,0,'10000-55000','http://naver.me/5jAn8Ixm',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1463,'부두식당','제주 서귀포시 대정읍 하모항구로 62 부두식당','064-794-1223',103,0,'제주 서귀포시_부두식당_공식.jpg','연중무휴','10:00-21:30',1,0,'55000','https://www.instagram.com/jeju_boodoo',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1464,'함덕 연옥','제주 제주시 조천읍 조함해안로 528 2층 연옥','010-7151-1527',103,0,'제주 제주시_함덕 연옥_공식.jpg','연중무휴','8:00-20:20',1,0,'15000','https://catchtable.co.kr/yeonok',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1466,'제주미향 중문본점','제주 서귀포시 천제연로 99 제주미향 중문본점','064-738-8588',102,0,'제주 서귀포시_제주미향 중문본점_공식.jpg','연중무휴','9:30-21:30',1,0,'45000','http://jejumihyang.com',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1467,'오는정김밥','제주 서귀포시 동문동로 2','064-762-8927',104,0,'제주 서귀포시_오는정김밥_공식.jpg','일요일','10:00-20:00',2,0,'3500',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1469,'안녕협재씨 제주협재점','제주 제주시 한림읍 금능길 12 1층','0507-1347-0624',103,0,'제주 제주시_안녕협재씨 제주협재점_공식.jpg','연중무휴','9:00-16:10',1,0,'17000','https://www.instagram.com/hihyeopjae',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1470,'흑돼지해물삼합','제주 서귀포시 태평로482번길 50','0507-1469-3833',101,0,'제주 서귀포시_흑돼지해물삼합_공식.jpg','연중무휴','12:00-22:00',1,0,'18000','https://www.instagram.com/blackpighi',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1471,'함덕흑돼지우돈향 함덕점','제주 제주시 조천읍 조함해안로 530 2층 우돈향','064-782-6969',101,0,'제주 제주시_함덕흑돼지우돈향 함덕점_공식.jpg','연중무휴','12:00-23:00',1,0,'68000-98000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1473,'돈이랑 본점','제주 서귀포시 일주서로 953','0507-1415-9277',101,0,'제주 서귀포시_돈이랑 본점_공식.jpg','연중무휴','11:30-24:00',1,0,'10800',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1474,'롱플레이','제주 제주시 구좌읍 동복로 44','070-4489-4004',111,0,'제주 제주시_롱플레이_공식.jpg','연중무휴','9:00-17:00',1,0,'10000','https://smartstore.naver.com/longplay',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1475,'우동카덴','제주 제주시 조천읍 교래3길 23','0507-1346-6263',102,0,'제주 제주시_우동카덴_공식.jpg','화,수요일','10:00-19:00',1,0,'9500-34000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1242,'충북식당','서울 강서구 강서로45가길 9','02-2697-1475',101,0,'서울 강서구_충북식당_공식.jpg','연중무휴','13:00~22:00',2,0,'7000','https://www.siksinhot.com/P/449853',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1243,'오백년장어','서울 강서구 공항대로 367','02-2668-8778',102,0,'서울 강서구_오백년장어_공식.jpg','토/일','11:30~22:00',2,0,'34900','https://www.siksinhot.com/P/421823',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1244,'왕세숫대야 행복을파는집','서울 강서구 공항대로 423','02-2668-3608',102,0,'서울 강서구_왕세숫대야 행복을파는집_공식.jpg','토/일','09:00~23:00',2,0,'7000~10000','https://www.siksinhot.com/P/436918',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1245,'베이징','서울 강서구 화곡로 118','02-2699-7275',108,0,'서울 강서구_베이징_공식.jpg','토/일','11:00~22:00',2,0,'6000~8000','https://www.siksinhot.com/P/439598',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1246,'천사곱창 화곡점','서울 강서구 우장산로 124','02-2699-3713',101,0,'서울 강서구_천사곱창 화곡점_공식.jpg','연중무휴','15:00~06:00',2,0,'10900~11900','https://www.siksinhot.com/P/379219',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1247,'고양이똥','서울 강서구 공항대로59가길 13','02-6013-1281',106,0,'서울 강서구_고양이똥_공식.jpg','토/일','10:00~00:00',2,0,'10500~13000','https://www.siksinhot.com/P/324137',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1248,'키노시타','서울 강서구 등촌동 638-3 103호','02-6961-5896',102,0,'서울 강서구_키노시타_공식.jpg','토/일','11:00~23:00',2,0,'31000','https://www.siksinhot.com/P/369755',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1249,'봄담아 등촌점','서울 강서구 공항대로 202,203,204호','02-2630-4200',101,0,'서울 강서구_봄담아 등촌점_공식.jpg','연중무휴','11:00~22:00',2,0,'13900~16900','https://www.siksinhot.com/P/1547196',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1250,'상미반상','서울 강서구 강서로16길 32 화창빌딩 1층','02-2603-0555',113,0,'서울 강서구_상미반상_공식.jpg','연중무휴','09:30~22:30',2,0,'8000','https://www.siksinhot.com/P/1139115',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1251,'헬로비에트','서울 강서구 화곡로25길 25','070-4175-0121',103,0,'서울 강서구_헬로비에트_공식.jpg','연중무휴','13:00~21:00',2,0,'6500','https://www.siksinhot.com/P/1067952',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1252,'감사한양','서울 강서구 마곡동 로4길 23','02-3662-9294',101,0,'서울 강서구_감사한양_공식.jpg','연중무휴','18:00~23:30',2,0,'25000','https://www.siksinhot.com/P/998245',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1253,'말죽거리 닭발 본점','서울 강서구 까치산로27길 17','0507-1401-8070',101,0,'서울 강서구_말죽거리 닭발 본점_공식.jpg','연중무휴','18:00~23:50',1,0,'19000','https://www.siksinhot.com/P/998107',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1254,'감성9091돼지','서울 강서구 공항대로 345','02-3665-9091',101,0,'서울 강서구_감성9091돼지_공식.jpg','연중무휴','13:00~23:00',2,0,'15000','https://www.siksinhot.com/P/997959',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1255,'강릉엄지네꼬막집','서울 강서구 공항대로 291','02-3663-6053',113,0,'서울 강서구_강릉엄지네꼬막집_공식.jpg','토/일','11:00~22:00',2,0,'35000','https://www.siksinhot.com/P/977643',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1256,'pixxa','서울 강서구 화곡로56길 33','02-2607-9966',112,0,'서울 강서구_pixxa_공식.jpg','연중무휴','18:00~03:00',2,0,'24500','https://www.siksinhot.com/P/871773',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1257,'정인호 완벽한 족발','서울 강서구 화곡로58길 30','02-2606-4114',107,0,'서울 강서구_정인호 완벽한 족발_공식.jpg','토/일','16:00~03:00',2,0,'29000~35000','https://www.siksinhot.com/P/851927',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1258,'개성집','서울 강서구 화곡로58길 30','02-2602-5327',101,0,'서울 강서구_개성집_공식.jpg','연중무휴','15:00~07:00',2,0,'12000~13000','https://www.siksinhot.com/P/642255',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1259,'띠아낭','서울 강서구 화곡로64길 72','070-4300-0707',103,0,'서울 강서구_띠아낭_공식.jpg','토/일','11:00~21:00',2,0,'8500','https://www.siksinhot.com/P/857347',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1261,'장안동 먹깨비 간장게장 해물아구찜','서울 동대문구 장한로 92 1층','0507-1393-2158',109,0,'서울 동대문구_장안동 먹깨비 간장게장 해물아구찜_공식.jpg','연중무휴','00:00-24:00',1,0,'50000','https://smartstore.naver.com/meokkkae_b',114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1262,'독립밀방 청량리','서울 동대문구 왕산로 214 청량리역사 3층 308호','0507-1361-3418',106,0,'서울 동대문구_독립밀방 청량리_공식.jpg','연중무휴','11:00-22:00',2,0,'21000','http://www.instagram.com/dongnip_millbang',114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1264,'서울뼈구이매운족발','서울 동대문구 왕산로 274-1','02-965-5838',107,0,'서울 동대문구_서울뼈구이매운족발_공식.jpg','연중무휴','12:00-22:00',2,0,'26000',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1265,'남원통닭','서울 동대문구 홍릉로1길 39','02-968-9841',110,0,'서울 동대문구_남원통닭_공식.jpg','연중무휴','10:00-22:00',2,0,'16000',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1266,'서파넓적갈비 용두점','서울 동대문구 천호대로31길 16 탑빌딩 1층','0507-1466-0726',101,0,'서울 동대문구_서파넓적갈비 용두점_공식.jpg','연중무휴','11:00-21:00',1,0,'18000','https://www.instagram.com/seopa_galbi',114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1268,'경양카츠 경희대점','서울 동대문구 회기로 146-1 1층','0507-1368-0932',102,0,'서울 동대문구_경양카츠 경희대점_공식.jpg','연중무휴','11:30-21:00',2,0,'14900',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1269,'안동집 손칼국시','서울 동대문구 고산자로36길 3 신관 지하1층','02-965-3948',103,0,'서울 동대문구_안동집 손칼국시_공식.jpg','연중무휴','10:00-20:00',2,0,'8000',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1270,'어머니대성집','서울 동대문구 왕산로11길 4','02-923-1718',103,0,'서울 동대문구_어머니대성집_공식.jpg','연중무휴','6:00-04:00',1,0,'12000',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1271,'봄의정원 회기점','서울 동대문구 경희대로1길 35 봄의정원 회기점','0507-1363-7382',106,0,'서울 동대문구_봄의정원 회기점_공식.jpg','연중무휴','11:30-21:30',2,0,'13000','https://www.instagram.com/spring__garden_',114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1273,'영화장','서울 동대문구 휘경로 3-8','02-967-9595',108,0,'서울 동대문구_영화장_공식.jpg','연중무휴','11:30-21:00',2,0,'12000',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1274,'장수식당','서울 동대문구 망우로20길 16 1층 장수보리밥','0507-1322-0649',103,0,'서울 동대문구_장수식당_공식.jpg','연중무휴','11:00-20:30',1,0,'11000',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1275,'READSTREET COFFEE','서울 동대문구 회기로 166 KB빌딩 리드스트리트 커피','02-959-1988',111,0,'서울 동대문구_READSTREET COFFEE_공식.jpg','연중무휴','10:00-23:00',2,0,'4500',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1277,'은하곱창','서울 동대문구 전농로15길 22 은하곱창','0507-1403-0262',101,0,'서울 동대문구_은하곱창_공식.jpg','연중무휴','11:00-20:00',2,0,'30000',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1278,'스타벅스 경동1960점','서울 동대문구 고산자로36길 3 신관 지하1층','없음',111,0,'서울 동대문구_스타벅스 경동1960점_공식.jpg','연중무휴','9:00-22:00',2,0,'6300','http://www.starbucks.co.kr/',114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1280,'혜성칼국수','서울 동대문구 왕산로 247-1','02-967-6918',103,0,'서울 동대문구_혜성칼국수_공식.jpg','월','10:30-20:00',2,0,'9000',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1281,'한옥정','서울 동대문구 답십리로 146-4','02-2249-1082',101,0,'서울 동대문구_한옥정_공식.jpg','일','11:00-22:00',2,0,'12000','http://blog.naver.com/film1945',114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1282,'BK볏집 우대갈비 장안동본점','서울 동대문구 장한로26가길 29 1층 BK볏짚 우대갈비 장안동본점','02-2244-0092',101,0,'서울 동대문구_BK볏집 우대갈비 장안동본점_공식.jpg','연중무휴','11:30-24:00',2,0,'32000',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1284,'도원','서울 동대문구 왕산로3길 12-1 1층','0507-1345-7866',101,0,'서울 동대문구_도원_공식.jpg','일','16:00-23:00',1,0,'16000','https://dowonfood1.modoo.at',114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1285,'영동교집 장안직영점','서울 동대문구 천호대로83길 32','02-3394-5882',101,0,'서울 동대문구_영동교집 장안직영점_공식.jpg','연중무휴','11:00-24:00',1,0,'16000',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1286,'성천 막국수','서울 동대문구 답십리로48나길 2','0507-1329-5529',103,0,'서울 동대문구_성천 막국수_공식.jpg','일','11:30-17:00',2,0,'13000',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1288,'섬마을횟집','서울 동대문구 홍릉로5길 8','02-962-3766',102,0,'서울 동대문구_섬마을횟집_공식.jpg','수','11:00-21:30',2,0,'30000',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1289,'전농곱창싱','서울 동대문구 전농로14길 14','02-2248-6191',101,0,'서울 동대문구_전농곱창싱_공식.jpg','일','11:00-22:00',2,0,'30000','http://www.foodsidae.com/junnong',114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1290,'여기가좋겠네','서울 동대문구 회기로21길 25 1층','02-968-9112',110,0,'서울 동대문구_여기가좋겠네_공식.jpg','연중무휴','10:00-24:00',2,0,'13000','https://youtu.be/1nFKr8h0sxs',114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1291,'스파카 나폴리','서울 마포구 합정동 413-2','02-326-2323',112,0,'서울 마포구_스파카 나폴리_공식.jpg','연중무휴','월, 화 11:30-21:30',2,0,'15000-29500',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1292,'웨스트빌 112','서울 마포구 합정동 438-4','0507-1343-2370',112,0,'서울 마포구_웨스트빌 112_공식.jpg','연중무휴','월 11:30-22:00',2,0,'21800-24800',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1293,'더112보이즈 합정본점','서울 마포구 서교동 402-5 2층','02-322-9896',112,0,'서울 마포구_더112보이즈 합정본점_공식.jpg','연중무휴','12:00-21:30',2,0,'22000-28000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1294,'맛이차이나','서울 마포구 상수동 321-1 2층','010-9822-2653',108,0,'서울 마포구_맛이차이나_공식.jpg','연중무휴','11:30-22:00',1,0,'8000-60000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1295,'연교','서울 마포구 연남동 383-95 1층','010-5882-5112',108,0,'서울 마포구_연교_공식.jpg','연중무휴','수 11:30-21:30',2,0,'7000-12000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1296,'복성각','서울 마포구 도화동 173','02-703-3700',108,0,'서울 마포구_복성각_공식.jpg','연중무휴','11:00-22:00',1,0,'7000-30000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1297,'윤씨밀방','서울 마포구 서교동 411-6','02-3143-4116',106,0,'서울 마포구_윤씨밀방_공식.jpg','연중무휴','월, 화 11:30-21:00',2,0,'10000-12500',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1298,'프리모 바치오바치','서울 마포구 서교동 346-47 2층','02-323-0098',106,0,'서울 마포구_프리모 바치오바치_공식.jpg','연중무휴','11:00-23:00',2,0,'6000-20000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1299,'문','서울 마포구 연남동 385-12','0507-1333-5097',106,0,'서울 마포구_문_공식.jpg','연중무휴','12:00-22:00',2,0,'12000-22000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1300,'토마 연남점','서울 마포구 연남동 568-26','0507-1329-8064',106,0,'서울 마포구_토마 연남점_공식.jpg','연중무휴','11:30-21:30',2,0,'5000-18000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1301,'파스치노팬스테이크','서울 마포구 서교동 358-8','02-322-8575',106,0,'서울 마포구_파스치노팬스테이크_공식.jpg','연중무휴','11:00-22:00',1,0,'8500-16000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1302,'광야','서울 마포구 동교동 198-5','0507-1318-1486',106,0,'서울 마포구_광야_공식.jpg','연중무휴','11:30-22:00',2,0,'17000-75000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1303,'테일러커피 연남1호점','서울 마포구 연남동 224-41','02-326-0355',111,0,'서울 마포구_테일러커피 연남1호점_공식.jpg','연중무휴','10:00-22:00',2,0,'5000-7500',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1304,'콜린','서울 마포구 서교동 403-13','0507-1335-1119',111,0,'서울 마포구_콜린_공식.jpg','연중무휴','10:30-23:00',2,0,'6200-6200',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1305,'그레고리','서울 마포구 합정동 410-11','02-322-9579',111,0,'서울 마포구_그레고리_공식.jpg','연중무휴','13:30-23:30',2,0,'5500-11200',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1306,'작당모의','서울 마포구 연남동 381-15','070-8838-3815',111,0,'서울 마포구_작당모의_공식.jpg','연중무휴','12:00-21:00',2,0,'5800-12000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1307,'딥블루레이크','서울 마포구 망원동 411-12','02-333-8532',111,0,'서울 마포구_딥블루레이크_공식.jpg','연중무휴','10:00-21:30',2,0,'5000-7000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1308,'앤트러사이트 서교점','서울 마포구 서교동 475-22','0507-1384-7650',111,0,'서울 마포구_앤트러사이트 서교점_공식.jpg','연중무휴','09:00-22:00',2,0,'7000-9000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1310,'최강금돈까스','서울 마포구 합정동 388-15','0507-1328-3646',102,0,'서울 마포구_최강금돈까스_공식.jpg','연중무휴','11:00-21:00',2,0,'5000-22000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1311,'한강껍데기','서울 마포구 망원동 416-33','02-6083-3733',101,0,'서울 마포구_한강껍데기_공식.jpg','연중무휴','16:00-02:00',2,0,'5000-20000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1312,'행진','서울 마포구 합정동 427-5','010-8907-9216',101,0,'서울 마포구_행진_공식.jpg','연중무휴','12:00-00:00',2,0,'7000-29000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1314,'미도인 홍대','서울 마포구 서교동 366-24','02-336-5097',102,0,'서울 마포구_미도인 홍대_공식.jpg','연중무휴','11:30-21:00',2,0,'4800-24800',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1315,'마코토','서울 마포구 서교동 358-89','0507-1329-8310',102,0,'서울 마포구_마코토_공식.jpg','연중무휴','11:00-20:30',2,0,'9500-21000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1317,'웰빙김치찜','서울 마포구 공덕동 256-5','02-711-1430',103,0,'서울 마포구_웰빙김치찜_공식.jpg','연중무휴','11:00-22:00',2,0,'9000-11000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1318,'곤밥','서울 마포구 상수동 339-9','02-336-5157',103,0,'서울 마포구_곤밥_공식.jpg','연중무휴','16:00-24:00',2,0,'6000-50000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1319,'녹원쌈밥','서울 마포구 연남동 504-39','02-332-9483',103,0,'서울 마포구_녹원쌈밥_공식.jpg','연중무휴','11:30-20:40',1,0,'12000-16000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1321,'본가서대문족발','서울 서대문구 충정로6안길 54','02-312-5580',107,0,'서울 서대문구_본가서대문족발_공식.jpg','연중무휴','11:30~23:30',1,0,'39000','https://www.siksinhot.com/P/255249',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1322,'서대문골목 서대포집','서울 서대문구 충정로 67-4','02-777-7007',101,0,'서울 서대문구_서대문골목 서대포집_공식.jpg','토/일','17:00~22:00',2,0,'13000~19000','https://www.siksinhot.com/P/769927',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1323,'서대문꼼잠어','서울 서대문구 충정로5길 4','02-393-3391',101,0,'서울 서대문구_서대문꼼잠어_공식.jpg','토/일','11:30~23:00',2,0,'10000','https://www.siksinhot.com/P/365273',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1325,'아빠곰탕 서대문구역점','서울 서대문구 충정로 47','02-393-6633',109,0,'서울 서대문구_아빠곰탕 서대문구역점_공식.jpg','토/일','10:00~22:00',2,0,'7500~8000','https://www.siksinhot.com/P/787129',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1326,'해구','서울 서대문구 서소문로 37','02-312-2030',102,0,'서울 서대문구_해구_공식.jpg','연중무휴','연중무휴',2,0,'18000','https://www.siksinhot.com/P/365317',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1327,'하남돼지집 서대문역점','서울 서대문구 충정로 71-1','0507-1443-8007',101,0,'서울 서대문구_하남돼지집 서대문역점_공식.jpg','연중무휴','11:00~23:40',1,0,'16000~18000','https://booking.naver.com/?area=bmp',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1329,'한옥집김치찜 본점','서울 서대문구 통일로9길 12 1층 한옥집김치찜','02-362-8653',109,0,'서울 서대문구_한옥집김치찜 본점_공식.jpg','연중무휴','10:30~21:30',1,0,'9500~23000','http://hanokjib.co.kr/community/media/',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1330,'하늘초밥','서울 서대문구 이화여대2길 14 1층 하늘초밥','0507-1366-4573',102,0,'서울 서대문구_하늘초밥_공식.jpg','일/월','11:30~22:00',2,0,'26000','http://instagram.com/sorasky0616',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1331,'현명식탁','서울 서대문구 명물길 32 준성빌딩 5층','0507-1361-1229',106,0,'서울 서대문구_현명식탁_공식.jpg','연중무휴','11:30~22:00',2,0,'15000~20000','http://www.instagram.com/2018_yhm',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1333,'댄싱홍콩 신촌점','서울 서대문구 연세로12길 37-4 1층 댄싱홍콩','0507-1459-0438',108,0,'서울 서대문구_댄싱홍콩 신촌점_공식.jpg','연중무휴','11:00~22:00',2,0,'11000~13000','https://www.instagram.com/dancing_hongkong.official',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1334,'카츠업','서울 서대문구 연세로5길 32 1층 카츠업','0507-1345-5778',102,0,'서울 서대문구_카츠업_공식.jpg','연중무휴','11:00~21:50',2,0,'9500~13900','https://blog.naver.com/katsup',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1335,'라구식당','서울 서대문구 연세로 42-24 1층','0507-1479-2224',106,0,'서울 서대문구_라구식당_공식.jpg','연중무휴','11:30~21:00',2,0,'16000~17000','http://instagram.com/ragu_pasta',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1337,'부탄츄 신촌점','서울 서대문구 연세로5길 26-9','02-3144-6604',102,0,'서울 서대문구_부탄츄 신촌점_공식.jpg','연중무휴','11:30~22:00',2,0,'9000',null,116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1338,'목란','서울 서대문구 연희로15길 21','02-732-0054',108,0,'서울 서대문구_목란_공식.jpg','월','11:30~21:20',1,0,'25000~30000',null,116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1339,'연희동칼국수 본점','서울 서대문구 연희맛로 37','02-333-3955',103,0,'서울 서대문구_연희동칼국수 본점_공식.jpg','월','11:00~21:00',2,0,'11000~14000',null,116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1340,'월순철판동태찜','서울 서대문구 연희맛로 17-14 1층','02-325-1567',109,0,'서울 서대문구_월순철판동태찜_공식.jpg','일','11:40~21:00',2,0,'38000',null,116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1341,'카란지린기네스낵바 신촌점','서울 서대문구 연세로5길 2 1층','070-8823-8486',102,0,'서울 서대문구_카란지린기네스낵바 신촌점_공식.jpg','연중무휴','11:30~23:00',2,0,'12900~15900','https://www.instagram.com/karinji_ringane/',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1342,'담산 신촌본점','서울 서대문구 연세로5다길 5 1층 담산 신촌본점','0507-1357-8469',113,0,'서울 서대문구_담산 신촌본점_공식.jpg','월','11:00~22:00',2,0,'15000','https://www.instagram.com/damsan_shinchon',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1343,'대성이네','서울 서대문구 연세로5나길 33 1층 대성이네','0507-1343-9658',109,0,'서울 서대문구_대성이네_공식.jpg','월','12:00~23:00',2,0,'30000','https://www.instagram.com/',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1344,'에뚜왈 신촌점','서울 서대문구 연세로 3-3 1층 105호','0507-1310-5348',111,0,'서울 서대문구_에뚜왈 신촌점_공식.jpg','연중무휴','12:30~22:50',2,0,'2700~9000','https://www.instagram.com/patisserie___etoile/?igshid=OGQ5ZDc2ODk2ZA%3D%3D',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1345,'헤이진','서울 서대문구 연세로5나길 37 1층','0507-1466-5574',111,0,'서울 서대문구_헤이진_공식.jpg','화','11:30~22:00',1,0,'7900~8900','http://www.instagram.com/heyjindessert_official',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1346,'풍년닭도리탕 신촌점','서울 서대문구 연세로5다길 5 2층','0507-1355-5278',109,0,'서울 서대문구_풍년닭도리탕 신촌점_공식.jpg','목','10:00~22:00',1,0,'30000',null,116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1347,'베베베 신촌점','서울 서대문구 연세로5나길 24 지상1층~4층','0507-1461-9021',111,0,'서울 서대문구_베베베 신촌점_공식.jpg','연중무휴','10:00~21:00',2,0,'4000~10000','https://www.instagram.com/_bbb.official/',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1348,'양꽃 신촌점','서울 서대문구 명물길 37 SD타워2 6층','0507-1399-4545',101,0,'서울 서대문구_양꽃 신촌점_공식.jpg','연중무휴','16:00~22:00',1,0,'20000~39000','https://catchtable.co.kr/lamlflower_sc',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1349,'시오','서울 서대문구 연희로11가길 23 1층','02-3144-6919',102,0,'서울 서대문구_시오_공식.jpg','연중무휴','11:40~21:30',2,0,'15000~18000',null,116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1350,'리히트','서울 서대문구 연희로4길 10 리히트','0507-1426-0263',111,0,'서울 서대문구_리히트_공식.jpg','월','10:30~20:30',2,0,'17000~33000','https://www.instagram.com/rihit_seoultofu',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1351,'3일 한우국밥','서울 영등포구 영등포동4가 68-5','02-2678-0117',103,0,'서울 영등포구_3일 한우국밥_공식.jpg','연중무휴','00:00 ~ 24:00',1,0,'11000~18000','https://www.siksinhot.com/P/372915',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1352,'원조호수삼계탕','서울 영등포구 도림로 276','02-848-2440',109,0,'서울 영등포구_원조호수삼계탕_공식.jpg','연중무휴','11:00 ~ 21:30',1,0,'18000','https://www.siksinhot.com/P/3033',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1353,'송죽장','서울 영등포구 문래로 203','033-651-9245',108,0,'서울 영등포구_송죽장_공식.jpg','연중무휴','11:00 ~ 20:00',2,0,'15000 ~ 40000','https://www.siksinhot.com/P/252939',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1354,'여로집','서울 영등포구 영중로10길 26','02-2678-8934',113,0,'서울 영등포구_여로집_공식.jpg','연중무휴','11:30 ~ 01:00',2,0,'22000 ~ 43000','https://www.siksinhot.com/P/336785',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1355,'함흥냉면','서울 영등포구 영등포로42길 6','02-2678-2722',103,0,'서울 영등포구_함흥냉면_공식.jpg','연중무휴','11:00 ~ 22:00',1,0,'12000','https://www.siksinhot.com/P/29951',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1356,'원조나주곰탕','서울 영등포구 버드나루로7길 7 카보드동우빌딩','02-2677-5066',109,0,'서울 영등포구_원조나주곰탕_공식.jpg','연중무휴','토/일 08:00 ~ 15:00',2,0,'9000 ~ 12000','https://www.siksinhot.com/P/1172696',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1357,'막내회센타','서울 영등포구 도신로53길 7','02-844-6150',102,0,'서울 영등포구_막내회센타 대문점_공식.jpg','연중무휴','10:30 ~ 22:00',2,0,'10000 ~ 40000','https://www.siksinhot.com/P/254921',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1359,'대한옥','서울 영등포구 영등포로51길 6','02-2633-5052',109,0,'서울 영등포구_덕원_공식.jpg','연중무휴','11:00 ~ 20:50',2,0,'9000 ~ 21000','https://www.siksinhot.com/P/359818',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1360,'덕원','서울 영등포구 버드나루로길 6','02-2634-8663',109,0,'서울 영등포구_대한옥_공식.jpg','연중무휴','09:00 ~ 21:00',2,0,'19000 ~ 39000','https://www.siksinhot.com/P/252949',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1361,'호박집','서울 영등포구 영등포로 237-1 성일빌딩','02-2634-9703',109,0,'서울 영등포구_호박집_공식.jpg','연중무휴','07:00 ~ 22:30',2,0,'7000 ~ 20000','https://www.siksinhot.com/P/809936',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1363,'고에몽시즈카','서울 영등포구 국회대로50길 20 포레나 영등포 센트럴 112호 112호','0503-5798-3843',102,0,'서울 영등포구_고에몽시즈카_공식.jpg','연중무휴','18:30 ~ 22:00',2,0,'179000','https://www.siksinhot.com/P/1541437',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1364,'중앙참치','서울 영등포구 영등포로43길 14 1층','02-2634-3681',102,0,'서울 영등포구_중앙참치_공식.jpg','연중무휴','일 16:30 ~ 23:00',2,0,'30000 ~ 50000','https://www.siksinhot.com/P/383726',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1365,'신길동매운짬뽕','서울 영등포구 영등포로62길 10-1','0503-5798-0019',108,0,'서울 영등포구_신길동매운짬뽕_공식.jpg','연중무휴','13:00 ~ 23:00',1,0,'3000 ~ 9000','https://www.siksinhot.com/P/254857',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1366,'즉석우동짜장','서울 영등포구 대방천로 260','02-833-3284',108,0,'서울 영등포구_즉석우동짜장_공식.jpg','연중무휴','11:00 ~ 20:00',2,0,'4000 ~ 4500','https://www.siksinhot.com/P/368424',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1368,'파전닭갈비','서울 영등포구 신풍로10길 2-16','02-832-5989',101,0,'서울 영등포구_파전닭갈비_공식.jpg','연중무휴','11:00 ~ 23:00',2,0,'12000 ~ 22000','https://www.siksinhot.com/P/412253',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1369,'나카지마 고에몽','서울 영등포구 국회대로54길 10 아크로타워스퀘어 상가동 지하1층 39호','0503-5798-4166',102,0,'서울 영등포구_나카지마 고에몽_공식.jpg','연중무휴','13:00 ~ 21:00',2,0,'110000 ~ 150000','https://www.siksinhot.com/P/1193850',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1371,'청도양꼬치 영등포점','서울 영등포구 영중로6길 23-4','02-703-7200',108,0,'서울 영등포구_청도양꼬치 영등포점_공식.jpg','연중무휴','15:00 ~ 03:00',1,0,'11000 ~ 13000','https://www.siksinhot.com/P/253071',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1372,'뽕씨네 얼큰 수제비','서울 영등포구 영중로10길 16','02-2678-0142',113,0,'서울 영등포구_뽕씨네 얼큰 수제비_공식.jpg','연중무휴','토/일 10:00 ~ 22:00',2,0,'6000','https://www.siksinhot.com/P/253034',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1373,'에베레스트 레스토랑','서울 영등포구 경인로 838-1','02-3667-8848',106,0,'서울 영등포구_에베레스트 레스토랑_공식.jpg','연중무휴','토/일 11:00 ~ 22:30',2,0,'7000 ~ 13000','https://www.siksinhot.com/P/253001',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1374,'구공탄곱창 영등포점','서울 영등포구 영중로10길 28-1','02-2068-8789',101,0,'서울 영등포구_구공탄곱창 영등포점_공식.jpg','연중무휴','15:00 ~ 20:00',2,0,'10000','https://www.siksinhot.com/P/359281',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1376,'호우양꼬치 본점','서울 영등포구 영중로10길 6 델리타운','070-7747-9488',108,0,'서울 영등포구_호우양꼬치 본점_공식.jpg','연중무휴','토/일 15:00 ~ 03:00',2,0,'11000 ~ 15000','https://www.siksinhot.com/P/314732',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1377,'한신포차 영등포점','서울 영등포구 영등포동3가 3-7번지, 1층','02-2679-0410',113,0,'서울 영등포구_한신포차 영등포점_공식.jpg','연중무휴','토/일 17:30 ~ 06:00',2,0,'10000 ~ 18000','https://www.siksinhot.com/P/315194',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1378,'비둘기집','서울 영등포구 신길동 4336','02-842-8817',101,0,'서울 영등포구_비둘기집_공식.jpg','연중무휴','토/일 11:00 ~ 00:00',2,0,'6000 ~ 28000','https://www.siksinhot.com/P/254915',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1380,'초밥오타루','서울 영등포구 영등포동4가 148-1 1층','02-2677-5460',102,0,'서울 영등포구_초밥오타루_공식.jpg','연중무휴','11:30 ~ 22:00',2,0,'15000 ~ 25000','https://www.siksinhot.com/P/315330',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1381,'두오모','서울 종로구 효자동 40-2','02-730-0902',106,0,'서울 종로구_두오모_공식.jpg','연중무휴','일, 월 12:00-21:00',1,0,'10000-35000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1382,'갈리나데이지','서울 종로구 통인동 118-15','010-8314-1248',106,0,'서울 종로구_갈리나데이지_공식.jpg','연중무휴','일 12:00-21:00',1,0,'18000-88000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1383,'서촌김씨 뜨라또리아','서울 종로구 통인동 138-1 2층','02-737-7786',106,0,'서울 종로구_서촌김씨 뜨라또리아_공식.jpg','연중무휴','월 11:30-21:00',2,0,'19000-25000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1384,'한옥 달','서울 종로구 체부동 68','0507-1354-3394',106,0,'서울 종로구_한옥 달_공식.jpg','연중무휴','일 11:30-21:30',2,0,'19000-57000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1385,'아지오','서울 종로구 견지동 68-1','02-722-0211',106,0,'서울 종로구_아지오_공식.jpg','연중무휴','일 11:30-22:00',2,0,'12900-36500',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1386,'맛의정원','서울 종로구 명륜1가 31-3 1층','070-7622-6607',102,0,'서울 종로구_맛의정원_공식.jpg','연중무휴','월 11:00-20:00',2,0,'12000-12000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1387,'정돈','서울 종로구 명륜4가 107 지하1층','02-987-0924',102,0,'서울 종로구_정돈_공식.jpg','연중무휴','11:30-21:30',2,0,'9000-25000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1388,'우리집','서울 종로구 옥인동 102-7','02-734-9870',102,0,'서울 종로구_우리집_공식.jpg','연중무휴','월 11:00-20:30',2,0,'7000-13500',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1389,'후와후와','서울 종로구 연지동 255','02-744-8513',102,0,'서울 종로구_후와후와_공식.jpg','연중무휴','토, 일 11:00-14:00',1,0,'7500-11500',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1390,'창경궁 150','서울 종로구 원남동 96-9','02-747-0150',102,0,'서울 종로구_창경궁 150_공식.jpg','연중무휴','일 11:00-14:30',2,0,'9000-10000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1391,'청수당','서울 종로구 익선동 144','0507-1318-8215',111,0,'서울 종로구_청수당_공식.jpg','연중무휴','10:30-21:00',2,0,'6800-15800',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1392,'차 마시는 뜰','서울 종로구 삼청동 35-169','02-722-7006',111,0,'서울 종로구_차 마시는 뜰_공식.jpg','연중무휴','월 11:00-21:00',1,0,'7000-13000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1393,'로우루프','서울 종로구 가회동 175-2','02-747-0709',111,0,'서울 종로구_로우루프_공식.jpg','연중무휴','월 10:00-20:00',2,0,'5000-7000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1394,'호아드','서울 종로구 사간동 7','02-725-1204',111,0,'서울 종로구_호아드_공식.jpg','연중무휴','월 11:00-21:00',2,0,'5500-7500',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1395,'더 마틴','서울 종로구 청운동 59-5','02-738-2299',111,0,'서울 종로구_더 마틴_공식.jpg','연중무휴','12:30-21:00',2,0,'5000-29000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1396,'반짝반짝 빛나는','서울 종로구 관훈동 6 2층','02-738-4525',111,0,'서울 종로구_반짝반짝 빛나는_공식.jpg','연중무휴','12:00-23:00',2,0,'6000-9000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1397,'우육면관','서울 종로구 청진동 39','0507-1313-4830',103,0,'서울 종로구_우육면관_공식.jpg','연중무휴','11:00-22:00',2,0,'11000-24000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1398,'몽중헌 안국점','서울 종로구 화동 117','02-730-2051',108,0,'서울 종로구_몽중헌 안국점_공식.jpg','연중무휴','11:30-21:30',1,0,'12000-40000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1399,'유유안','서울 종로구 당주동 29 포시즌호텔 11층','02-6388-5500',108,0,'서울 종로구_유유안_공식.jpg','연중무휴','11:30-21:30',1,0,'98000-340000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1400,'덕후선생 광화문디타워점','서울 종로구 청진동 246','02-2251-8422',108,0,'서울 종로구_덕후선생 광화문디타워점_공식.jpg','연중무휴','11:30-21:30',1,0,'10000-100000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1402,'도마','서울 종로구 관훈동 15-1','02-733-9376',103,0,'서울 종로구_도마_공식.jpg','연중무휴','월 11:30-20:50',2,0,'8000-53000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1403,'다담정식','서울 종로구 서린동 88','02-739-6897',103,0,'서울 종로구_다담정식_공식.jpg','연중무휴','토, 일 11:00-20:00',2,0,'9000-9000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1404,'애호락','서울 종로구 계동 107-1','0507-1418-8010',103,0,'서울 종로구_애호락_공식.jpg','연중무휴','11:00-21:30',1,0,'10000-33000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1406,'칸다소바 경복궁점','서울 종로구 체부동 28-2','02-6405-1662',102,0,'서울 종로구_칸다소바 경복궁점_공식.jpg','연중무휴','11:30-21:30',2,0,'11000-13000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1407,'멘야산다이메','서울 종로구 명륜4가 147-1','02-743-4129',102,0,'서울 종로구_멘야산다이메_공식.jpg','연중무휴','10:30-22:00',2,0,'9500-13000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1408,'도마 유즈라멘','서울 종로구 재동 84-6','070-8838-0365',102,0,'서울 종로구_도마 유즈라멘_공식.jpg','연중무휴','월 11:00-21:30',2,0,'12000-39000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1410,'종로수제비','서울 종로구 청진동 146 르메이에르종로타운1','02-2075-5586',103,0,'서울 종로구_종로수제비_공식.jpg','연중무휴','10:00-22:00',1,0,'8000-9000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1411,'제갈양','제주 제주시 한림읍 한림로 155','064-796-9933',101,0,'제주 제주시_제갈양_공식.jpg','연중무휴','10:00-21:00',1,0,'15000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1412,'제주내리막','제주 제주시 우정로 18 1층 제주내리막','0507-1412-3293',101,0,'제주 제주시_제주내리막_공식.jpg','연중무휴','12:00-23:30',1,0,'25000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1414,'우진해장국','제주 제주시 서사로 11','064-757-3393',103,0,'제주 제주시_우진해장국_공식.jpg','연중무휴','6:00-22:00',2,0,'10000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1415,'이춘옥원조고등어쌈밥 제주애월본점','제주 제주시 애월읍 일주서로 7213','0507-1402-9914',103,0,'제주 제주시_이춘옥원조고등어쌈밥 제주애월본점_공식.jpg','연중무휴','10:00-20:30',1,0,'15000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1417,'아베베베이커리','제주 제주시 동문로6길 4 동문시장 12번 게이트 옆','0507-1414-0750',111,0,'제주 제주시_아베베베이커리_공식.jpg','연중무휴','10:00-21:00',2,0,'3300',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1418,'런던베이글뮤지엄 제주점','제주 제주시 구좌읍 동복로 85 제2동 1층','없음',111,0,'제주 제주시_런던베이글뮤지엄 제주점_공식.jpg','연중무휴','8:00-18:00',1,0,'5500',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1419,'형제도식당','제주 서귀포시 일주서로 915','064-738-3407',109,0,'제주 서귀포시_형제도식당_공식.jpg','연중무휴','10:00-21:00',1,0,'70000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1421,'레이지펌프','제주 제주시 애월읍 애월북서길 32 lazypump','0507-1325-8732',111,0,'제주 제주시_레이지펌프_공식.jpg','연중무휴','9:00-20:00',1,0,'6000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1422,'색달식당중문갈치조림구이 본점','제주 서귀포시 예래로 255-18 1층','0507-1321-1741',109,0,'제주 서귀포시_색달식당중문갈치조림구이 본점_공식.jpg','연중무휴','10:00-21:00',1,0,'70000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1424,'미영이네','제주 서귀포시 대정읍 하모항구로 42','064-792-0077',102,0,'제주 서귀포시_미영이네_공식.jpg','수요일','11:30-22:00',1,0,'60000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1425,'원앤온리','제주 서귀포시 안덕면 산방로 141','0507-1323-6186',111,0,'제주 서귀포시_원앤온리_공식.jpg','연중무휴','9:00-20:00',1,0,'14000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1427,'먹돌 제주본점','제주 제주시 월성로 26','0507-1405-9777',103,0,'제주 제주시_먹돌 제주본점_공식.jpg','연중무휴','9:00-20:40',1,0,'10000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1428,'뚱딴지 애월본점','제주 제주시 애월읍 부룡수길 17','0507-1370-2085',109,0,'제주 제주시_뚱딴지 애월본점_공식.jpg','연중무휴','11:00-22:00',1,0,'15000-120000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1429,'숙성도 노형본관','제주 제주시 원노형로 41 1층','0507-1335-5211',101,0,'제주 제주시_숙성도 노형본관_공식.jpg','연중무휴','11:30-21:30',2,0,'21000','https://blog.naver.com/songmeat3555',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1431,'성산 고등어쌈밥 김치찜','제주 서귀포시 성산읍 섭지코지로25번길 122-5 고등어쌈밥','0507-1427-4944',103,0,'제주 서귀포시_성산 고등어쌈밥 김치찜_공식.jpg','연중무휴','8:00-22:00',1,0,'18000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1432,'금돈가 제주 애월해안도로 본점','제주 제주시 애월읍 가문동남길 63 1층','0507-1396-6466',101,0,'제주 제주시_금돈가 제주 애월해안도로 본점_공식.jpg','연중무휴','11:00-22:00',1,0,'66000','https://www.instagram.com/jeju_kumdonga',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1241,'코끼리한상 강서직영점','서울 강서구 화곡로64길 50','02-3661-2014',107,0,'서울 강서구_코끼리한상 강서직영점_공식.jpg','연중무휴','11:00~22:00',2,0,'35000','https://www.siksinhot.com/P/979441',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1260,'양송곱창','서울 강서구 공항대로46길 56','02-2695-3393',101,0,'서울 강서구_양송곱창_공식.jpg','토/일','16:00~04:00',2,0,'11000','https://www.siksinhot.com/P/416935',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1263,'오마카세 오사이초밥 고려대역점','서울 동대문구 회기로2길 2 2층','0507-1397-3755',102,0,'서울 동대문구_오마카세 오사이초밥 고려대역점_공식.jpg','연중무휴','10:30-21:30',2,0,'19000','https://www.instagram.com/omakase542_ku',114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1267,'최원석의 돼지한판 서해쭈꾸미','서울 동대문구 전농로 222','0507-1365-5592',101,0,'서울 동대문구_최원석의 돼지한판 서해쭈꾸미_공식.jpg','연중무휴','11:30-01:00',1,0,'15000','http://www.instagram.com/pig_k.o',114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1272,'나정순할매쭈꾸미','서울 동대문구 무학로 144','02-928-0231',103,0,'서울 동대문구_나정순할매쭈꾸미_공식.jpg','연중무휴','11:30-21:30',2,0,'15000',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1276,'경통연탄돼지갈비','서울 동대문구 약령서1길 34','0507-1347-3373',101,0,'서울 동대문구_경통연탄돼지갈비_공식.jpg','연중무휴','11:00-21:30',2,0,'15000',null,114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1279,'일미간장게장','서울 동대문구 장한로24길 7','02-2242-4338',109,0,'서울 동대문구_일미간장게장_공식.jpg','연중무휴','00:00-24:00',1,0,'75000','http://www.ilmicrab.co.kr/',114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1283,'레알라면','서울 동대문구 회기로25길 23-5 1층 레알라면','0507-1311-4208',104,0,'서울 동대문구_레알라면_공식.jpg','수','11:00-21:00',2,0,'6000','https://youtu.be/nZWEEiSfkpQ',114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1287,'거복이식당','서울 동대문구 경희대로3길 6','0507-1373-1559',101,0,'서울 동대문구_거복이식당_공식.jpg','연중무휴','12:40-23:00',1,0,'35000','http://www.instagram.com/geobokye_sikdang',114);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1309,'야키토리 묵','서울 마포구 연남동 223-102','0507-1405-2840',102,0,'서울 마포구_야키토리 묵_공식.jpg','연중무휴','17:00-23:00',2,0,'4000-25000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1313,'부산갈매기','서울 마포구 도화동 194-18','02-718-5462',101,0,'서울 마포구_부산갈매기_공식.jpg','연중무휴','12:00-22:50',2,0,'10000-17000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1316,'바다회사랑 연남본점','서울 마포구 연남동 566-8','02-338-0872',102,0,'서울 마포구_바다회사랑 연남본점_공식.jpg','연중무휴','14:00-00:00',2,0,'20000-70000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1320,'감나무집 기사식당','서울 마포구 연남동 515-19','02-325-8727',103,0,'서울 마포구_감나무집 기사식당_공식.jpg','연중무휴','00:00-24:00',1,0,'10000-13000',null,115);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1324,'막내네횟집 서대문점','서울 서대문구 충정로6안길 6-2 1층','02-364-0977',102,0,'서울 서대문구_막내네횟집 서대문점_공식.jpg','연중무휴','11:30~23:00',2,0,'12000','https://www.siksinhot.com/P/318427',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1328,'원조부안집 서대문점','서울 서대문구 통일로9안길 22 1층','0507-1482-0217',101,0,'서울 서대문구_원조부안집 서대문점_공식.jpg','연중무휴','11:00~22:00',2,0,'9500~15000',null,116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1332,'천궁전마라탕','서울 서대문구 연세로5가길 3 2층','02-322-9880',108,0,'서울 서대문구_천궁전마라탕_공식.jpg','연중무휴','11:00~23:00',2,0,'15000~20000','http://instagram.com/pheby888',116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1336,'야바이','서울 서대문구 연세로7안길 37','0507-1408-1024',102,0,'서울 서대문구_야바이_공식.jpg','연중무휴','16:00~24:00',2,0,'11000~15000',null,116);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1358,'대문점','서울 영등포구 영중로10길 30','02-2678-3256',101,0,'서울 영등포구_대한옥_공식.jpg','연중무휴','11:30 ~ 22:00',2,0,'21000 ~ 24000','https://www.siksinhot.com/P/253165',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1362,'부일갈비','서울 영등포구 영중로6길 23-8','02-2636-9462',101,0,'서울 영등포구_부일갈비_공식.jpg','연중무휴','11:00 ~ 22:30',2,0,'14000 ~ 26000','https://www.siksinhot.com/P/402731',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1367,'전봇대곱창','서울 영등포구 영등포로 369','02-841-0131',101,0,'서울 영등포구_전봇대곱창_공식.jpg','연중무휴','16:00 ~ 02:00',2,0,'9000 ~ 22000','https://www.siksinhot.com/P/402927',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1370,'코트야드 서울타임스퀘어 인룸다이닝','서울 영등포구 영중로 15 5층','02-2638-3081',106,0,'서울 영등포구_코트야드 서울타임스퀘어 인룸다이닝_공식.jpg','연중무휴','토/일 07:00 ~ 22:30',2,0,'23000','https://www.siksinhot.com/P/253092',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1375,'느린날의오후','서울 영등포구 신길동 98-14 1층','02-845-1829',111,0,'서울 영등포구_느린날의오후_공식.jpg','연중무휴','토/일 11:00 ~ 23:00',2,0,'3000 ~ 5500','https://www.siksinhot.com/P/357754',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1379,'순흥골 신길점','서울 영등포구 신길동 3741-53','02-848-1888',101,0,'서울 영등포구_순흥골 신길점_공식.jpg','연중무휴','토/일 11:30 ~ 22:00',2,0,'7000 ~ 13000','https://www.siksinhot.com/P/346774',120);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1401,'한양108 종로점','서울 종로구 종로2가 6 B2','070-4647-0230',108,0,'서울 종로구_한양108 종로점_공식.jpg','연중무휴','11:00-21:30',1,0,'8500-72000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1405,'깡장집 본점','서울 종로구 당주동 5 지하 1층 57, 58호','02-720-8688',103,0,'서울 종로구_깡장집 본점_공식.jpg','연중무휴','일 09:00-22:00',2,0,'7000-38000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1409,'히타토제면소','서울 종로구 누상동 55-3 1층 102호','010-4141-0092',102,0,'서울 종로구_히타토제면소_공식.jpg','연중무휴','일 12:00-19:00',2,0,'11000-16000',null,117);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1413,'올래국수','제주 제주시 귀아랑길 24 올래국수','064-742-7355',103,0,'제주 제주시_올래국수_공식.jpg','연중무휴','8:20-15:00',1,0,'10000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1416,'제주광해 애월','제주 제주시 애월읍 애월해안로 867 2층','0507-1312-4789',103,0,'제주 제주시_제주광해 애월_공식.jpg','연중무휴','10:00-20:00',1,0,'43000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1420,'제주순풍해장국 본점','제주 제주시 진군남4길 7-8 1층','0507-1426-9944',103,0,'제주 제주시_제주순풍해장국 본점_공식.jpg','화요일','6:00-22:00',1,0,'9000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1423,'제주마음','제주 제주시 원노형3길 15 1층','0507-1329-8332',109,0,'제주 제주시_제주마음_공식.jpg','연중무휴','9:30-21:30',1,0,'75000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1426,'연돈','제주 서귀포시 색달로 10 2층 연돈','0507-1386-7060',102,0,'제주 서귀포시_연돈_공식.jpg','연중무휴','12:00-21:00',1,0,'11000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1477,'원담','제주 제주시 동광로1길 13 1층','0507-1351-0211',102,0,'제주 제주시_원담_공식.jpg','화요일','16:00-24:00',1,0,'60000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1478,'제주돔베','제주 제주시 연북로 840','0507-1439-3303',103,0,'제주 제주시_제주돔베_공식.jpg','화요일','10:00-16:00',1,0,'28000','https://www.instagram.com/jeju_dombe',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1479,'장인의집 본점','제주 제주시 애월읍 애월로19길 31 장인의집 애월 본점','0507-1313-1610',103,0,'제주 제주시_장인의집 본점_공식.jpg','연중무휴','9:00-22:00',1,0,'38000','https://blog.naver.com/dlscjf1019',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1480,'해녀김밥 본점','제주 제주시 조천읍 함덕로 40 3층, 302호','0507-1342-3005',104,0,'제주 제주시_해녀김밥 본점_공식.jpg','일요일','9:00-17:00',1,0,'9500','http://www.instagram.com/haenyeogimbap',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1481,'바다를본돼지 서귀포올레시장점','제주 서귀포시 칠십리로 123 2층','0507-1413-1058',101,0,'제주 서귀포시_바다를본돼지 서귀포올레시장점_공식.jpg','연중무휴','12:00-22:00',1,0,'18000-60000','https://blog.naver.com/ljh6992936',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1482,'담다 제주협재점','제주 제주시 한림읍 협재4길 8 1층','0507-1356-0054',103,0,'제주 제주시_담다 제주협재점_공식.jpg','일요일','9:00-15:30',1,0,'11000','https://blog.naver.com/hite9787',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1483,'제주 김만복김밥 본점','제주 제주시 오라로 41','064-759-8582',104,0,'제주 제주시_제주 김만복김밥 본점_공식.jpg','연중무휴','8:00-22:00',1,0,'8500','http://kimmanbok.com/sub/caution.htm',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1484,'아줄레주','제주 서귀포시 성산읍 신풍하동로19번길 59 _____마을진입시 차량 서행부탁드립니다','0507-1411-4052',111,0,'제주 서귀포시_아줄레주_공식.jpg','화요일','11:00-19:00',1,0,'6000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1486,'흑돈쭐 제주성산일출봉점','제주 서귀포시 성산읍 성산중앙로 72','010-4657-0525',101,0,'제주 서귀포시_흑돈쭐 제주성산일출봉점_공식.jpg','연중무휴','11:00-23:00',1,0,'60000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1487,'오드랑베이커리','제주 제주시 조천읍 조함해안로 552-3','064-784-5404',111,0,'제주 제주시_오드랑베이커리_공식.jpg','연중무휴','7:00-22:00',1,0,'4500',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1489,'중문수두리보말칼국수','제주 서귀포시 천제연로 192 1층','064-739-1070',103,0,'제주 서귀포시_중문수두리보말칼국수_공식.jpg','화요일','8:00-16:30',2,0,'11000','http://instagram.com/suduribomal_noodle',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1490,'돌밭 애월고내 본점','제주 제주시 애월읍 애월해안로 249 1F 돝밭','0507-1375-1255',101,0,'제주 제주시_돌밭 애월고내 본점_공식.jpg','연중무휴','11:30-22:00',1,0,'38000','https://www.instagram.com/dottbat',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1491,'가시아방국수','제주 서귀포시 성산읍 섭지코지로 10','064-783-0987',103,0,'제주 서귀포시_가시아방국수_공식.jpg','연중무휴','10:00-20:30',1,0,'35000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1493,'우도해녀식당','제주 제주시 우도면 우도해안길 440 우도해녀식당','010-9090-3509',102,0,'제주 제주시_우도해녀식당_공식.jpg','연중무휴','8:30-17:00',1,0,'17000','http://woododining.modoo.at/',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1494,'충남식당','제주 서귀포시 솔동산로 26','0507-1470-7034',103,0,'제주 서귀포시_충남식당_공식.jpg','일요일','9:00-21:00',1,0,'10000-60000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1496,'바다속고등어쌈밥 제주애월본점','제주 제주시 애월읍 일주서로 7089 1층','0507-1479-6466',103,0,'제주 제주시_바다속고등어쌈밥 제주애월본점_공식.jpg','연중무휴','8:00-21:00',1,0,'34000','https://www.instagram.com/jeju__bada',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1497,'거멍국수 제주산방산점','제주 서귀포시 안덕면 사계로114번길 53-14','0507-1403-8787',103,0,'제주 서귀포시_거멍국수 제주산방산점_공식.jpg','화요일','8:30-19:00',1,0,'12000','http://www.instagram.com/gmnoodles',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1498,'바다를본돼지 제주공항점','제주 제주시 정존15길 42 1층 바다를본돼지 제주공항점','0507-1409-9242',101,0,'제주 제주시_바다를본돼지 제주공항점_공식.jpg','연중무휴','12:00-22:00',1,0,'8000-60000','https://badabon.modoo.at',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1499,'모루쿠다 서귀포올레시장점','제주 서귀포시 태평로431번길 32 1층 모루쿠다 서귀포올레시장점','0507-1364-1477',102,0,'제주 서귀포시_모루쿠다 서귀포올레시장점_공식.jpg','연중무휴','11:20-23:00',1,0,'16000-47000','https://www.instagram.com/jejusujeyori/',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1501,'둘레길 서귀포중문본점','제주 서귀포시 천제연로 209-1 2층 둘레길','0507-1379-3255',106,0,'제주 서귀포시_둘레길 서귀포중문본점_공식.jpg','연중무휴','10:00-21:30',1,0,'12900','http://jejudullegil.modoo.at',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1502,'대기정','제주 서귀포시 이어도로 41','0507-1403-1041',109,0,'제주 서귀포시_대기정_공식.jpg','연중무휴','10:30-20:30',1,0,'33000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1503,'착한집','제주 제주시 서광로 98','064-713-7136',103,0,'제주 제주시_착한집_공식.jpg','수요일','11:00-21:00',1,0,'69000-210000','https://jejugoodfish.modoo.at',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1505,'애월항포구횟집','제주 제주시 애월읍 애월로11길 22 2층 애월항포구횟집','0507-1332-4741',102,0,'제주 제주시_애월항포구횟집_공식.jpg','연중무휴','11:00-22:00',1,0,'28000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1506,'함덕고등어쌈밥','제주 제주시 조천읍 조함해안로 530 3층','0507-1324-2736',109,0,'제주 제주시_함덕고등어쌈밥_공식.jpg','연중무휴','9:00-21:00',1,0,'36000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1507,'맛나식당','제주 서귀포시 성산읍 동류암로 41','064-782-4771',109,0,'제주 서귀포시_맛나식당_공식.jpg','수,일','8:30-14:00',2,0,'11000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1508,'해녀잠수촌','제주 제주시 서해안로 498 1층 해녀잠수촌','0507-1398-0733',103,0,'제주 제주시_해녀잠수촌_공식.jpg','연중무휴','8:00-15:30',1,0,'15000','http://www.instagram.com/jamsuchon',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1510,'한옥집 서귀포서홍점','제주 서귀포시 서홍로 41','064-767-2949',109,0,'제주 서귀포시_한옥집 서귀포서홍점_공식.jpg','연중무휴','11:00-21:30',1,0,'-54000','https://www.siksinhot.com/P/367315',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1001,'강릉감자옹심 강릉본점','강원 강릉시 토성로 171','033-648-0340',103,0,'강원 강릉시_강릉감자옹심 강릉본점_공식.jpg','연중무휴','10:30 ~ 16:00',2,0,'4000-9000','https://www.siksinhot.com/P/253867',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1002,'강릉 짬뽕 순두부 동화가든','강원 강릉시 초당순두부길77번길 15','033-652-9885',103,0,'강원 강릉시_강릉 짬뽕 순두부 동화가든_공식.jpg','수','07:00 ~ 19:00',1,0,'9000~10000','https://www.siksinhot.com/P/253961',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1003,'강릉풍년갈비','강원 강릉시 강릉대로587번길 10-5','033-651-9245',103,0,'강원 강릉시_강릉풍년갈비_공식.jpg','연중무휴','11:00 ~ 21:50',1,0,'18000~20000','https://www.siksinhot.com/P/392145',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1004,'원조강릉교동반점','강원 강릉시 강릉대로 205','033-646-3833',108,0,'강원 강릉시_원조강릉교동반점_공식.jpg','월','10:00~18:00',1,0,'8000~9000','https://www.siksinhot.com/P/33685',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1005,'강릉 수제 어묵 고로케','강원 강릉시 금성로13번길 8','010-9630-9799',111,0,'강원 강릉시_강릉 수제 어묵 고로케_공식.jpg','연중무휴','상시',2,0,'2500','https://www.siksinhot.com/P/873006#',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1006,'강릉 빵다방','강원 강릉시 남강초교1길 24','033-642-8807',111,0,'강원 강릉시_강릉 빵다방_공식.jpg','월요일','12:00~20:00',2,0,'3000~4500','https://www.siksinhot.com/P/605481',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1007,'강릉 전복 뚝배기','강원 강릉시 창해로350번길 5','033-651-2888',109,0,'강원 강릉시_강릉 전복 뚝배기_공식.jpg','연중무휴','08:00~21:00',2,0,'13000~19000','https://www.siksinhot.com/P/479584',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1008,'강릉 교동짬뽕','강원 강릉시 하슬라로232번길 26-12','033-655-3939',108,0,'강원 강릉시_강릉 교동짬뽕_공식.jpg','연중무휴','10:00~20:30',2,0,'7000~12000','https://www.siksinhot.com/P/324448',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1009,'강릉 부성불고기 찜닭','강원 강릉시 옥가로 50','033-641-3601',109,0,'강원 강릉시_강릉 부성불고기 찜닭_공식.jpg','토/일','09:00~21:00',1,0,'20000','https://www.siksinhot.com/P/442546',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1010,'지호한방삼계탕 강릉점','강원 강릉시 정원로 83-9','033-643-9255',101,0,'강원 강릉시_지호한방삼계탕 강릉점_공식.jpg','토/일','10:00~22:00',2,0,'13000','https://www.siksinhot.com/P/324761',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1011,'강문어화횟집','강원 강릉시 창해로 348','033-653-0025',102,0,'강원 강릉시_강문어화횟집_공식.jpg','토/일','10:30~23:00',1,0,'10000 ~ 80000','https://www.siksinhot.com/P/254069',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1012,'강릉 말미','강원 강릉시 구정면 말미길 122-20','033-644-7793',106,0,'강원 강릉시_강릉 말미_공식.jpg','연중무휴','11:00~21:00',2,0,'16000 ~ 19000','https://www.siksinhot.com/P/480037',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1013,'강릉불고기','강원 강릉시 강동면 풍호길 270','033-646-6033',101,0,'강원 강릉시_강릉불고기_공식.jpg','연중무휴','10:00 ~ 20:00',1,0,'2000~8000','https://www.siksinhot.com/P/481973',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1014,'강릉염전조개구이','강원 강릉시 성덕포남로153번길 28','0503-5798-2328',103,0,'강원 강릉시_강릉염전조개구이_공식.jpg','연중무휴','12:00~00:00',2,0,'15000','https://www.siksinhot.com/P/1080626',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1015,'강릉갈비찜','강원 강릉시 위촌길 55 강릉갈비찜','033-642-3000',101,0,'강원 강릉시_강릉갈비찜_공식.jpg','연중무휴','11:00~21:00',2,0,'9000','https://www.siksinhot.com/P/1179485',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1016,'강릉숨은고깃집','강원 강릉시 위촌길 55','033-648-5592',101,0,'강원 강릉시_강릉숨은고깃집_공식.jpg','연중무휴','12:00~22:00',2,0,'4000~13000','https://www.siksinhot.com/P/1171584',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1017,'강문가','강원 강릉시 초당원길 17 강문가','033-653-2622',102,0,'강원 강릉시_강문가_공식.jpg','연중무휴','10:00~22:30',2,0,'15000','https://www.siksinhot.com/P/1160445',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1018,'와플대학 강릉중앙캠퍼스','강원 강릉시 금성로 32-5','033-645-4589',111,0,'강원 강릉시_와플대학 강릉중앙캠퍼스_공식.jpg','연중무휴','10:00 ~ 21:00',2,0,'4000~7000','https://www.siksinhot.com/P/1116834',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1019,'강릉성남시장','강원 강릉시 중앙시장1길 16','033-647-0006',104,0,'강원 강릉시_강릉성남시장_공식.jpg','연중무휴','10:00~20:00',2,0,'3500~6000','https://www.siksinhot.com/P/1101424',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1020,'강릉양꼬치','강원 강릉시 옥천로19번길 32','033-655-1357',101,0,'강원 강릉시_강릉양꼬치_공식.jpg','연중무휴','13:00~01:00',2,0,'5000~20000','https://www.siksinhot.com/P/970676',101);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1021,'동그라미해물집','강원 동해시 효자로 686-4','033-522-4449',103,0,'강원 동해시_동그라미해물집_공식.jpg','연중무휴','11:30~20:30',2,0,'14000','https://www.siksinhot.com/P/367088',102);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1022,'동해바다곰치곡','강원 동해시 일출로 177','033-532-0265',102,0,'강원 동해시_동해바다곰치곡_공식.jpg','연중무휴','06:00~19:00',2,0,'12000~30000','https://www.siksinhot.com/P/481990',102);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1023,'동북횟집','강원 동해시 일출로 95','033-532-7156',102,0,'강원 동해시_동북횟집_공식.jpg','연중무휴','08:00~21:00',1,0,'12000','https://www.siksinhot.com/P/873945',102);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1024,'동해돌짜장','강원 동해시 청운2길 64 동해돌짜장','033-521-4555',108,0,'강원 동해시_동해돌짜장_공식.jpg','연중무휴','11:00~20:30',2,0,'20000~30000','https://www.siksinhot.com/P/1311890',102);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1025,'모노끼동해점','강원 동해시 한섬로 113-3','033-534-8872',102,0,'강원 동해시_모노끼동해점_공식.jpg','연중무휴','12:00~20:00',2,0,'8000~10000','https://www.siksinhot.com/P/626174',102);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1026,'삼거리식당','강원 삼척시 새천년도로 15','033-574-2424',103,0,'강원 삼척시_삼거리식당_공식.jpg','연중무휴','11:00~21:00',2,0,'8000~25000','https://www.siksinhot.com/P/266620',103);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1027,'삼정식당','강원 삼척시 새천년도로 30 삼정식당','033-573-3233',102,0,'강원 삼척시_삼정식당_공식.jpg','연중무휴','08:00~21:00',1,0,'10000~50000','https://www.siksinhot.com/P/367375',103);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1028,'삼척횟집','강원 삼척시 정하동 41-273','033-574-5240',102,0,'강원 삼척시_삼척횟집_공식.jpg','토/일','10:00~22:30',2,0,'12000','https://www.siksinhot.com/P/266618',103);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1030,'삼척전복해물뚝배기','강원 삼척시 테마타운길 59','033-572-9999',103,0,'강원 삼척시_삼척전복해물뚝배기_공식.jpg','토/일','08:00~21:00',2,0,'19000','https://www.siksinhot.com/P/625980',103);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1031,'만석닭강정 시장주차장점','강원 속초시 수복로 194','1577-9042',110,0,'강원 속초시_만석닭강정시장주차장점_공식.jpg','토/일','09:00~22:00',1,0,'17000~19000','https://www.siksinhot.com/P/25409',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1033,'88생선구이','강원 속초시 중앙부두길 71','033-633-8892',101,0,'강원 속초시_88생선구이_공식.jpg','연중무휴','08:30~20:30',2,0,'17000','https://www.siksinhot.com/P/254164',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1034,'함흥막국수','강원 속초시 중앙로54번길 3','033-632-6707',103,0,'강원 속초시_함흥막국수_공식.jpg','연중무휴','10:00~20:00',2,0,'8000','https://www.siksinhot.com/P/359235',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1035,'단천식당','강원 속초시 아바이마을길 17','033-632-7828',104,0,'강원 속초시_단천식당_공식.jpg','연중무휴','08:00~20:30',1,0,'8000','https://www.siksinhot.com/P/254140',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1037,'이조면옥','강원 속초시 조양동 1490-261','033-632-3181',103,0,'강원 속초시_이조면옥_공식.jpg','연중무휴','10:30~20:00',1,0,'9000~23000','https://www.siksinhot.com/P/254173',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1038,'이모네식당','강원 속초시 영랑해안6길 16','033-637-6900',101,0,'강원 속초시_이모네식당_공식.jpg','수','10:00~19:30',1,0,'35000','https://www.siksinhot.com/P/254167',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1039,'신다신','강원 속초시 아바이마을길 22','033-633-3871',104,0,'강원 속초시_신다신_공식.jpg','화','10:00~20:00',1,0,'9000~16000','https://www.siksinhot.com/P/71167',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1040,'감나무집 감자옹심이','강원 속초시 중앙시장로 110-8','033-633-2306',103,0,'강원 속초시_감나무집감자옹심이_공식.jpg','화','10:00~20:00',1,0,'12000','https://www.siksinhot.com/P/254088',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1042,'속초생대구','강원 속초시 영랑해안3길 14','033-636-9774',103,0,'강원 속초시_속초생대구_공식.jpg','연중무휴','10:00~20:00',1,0,'20000~30000','https://www.siksinhot.com/P/359548',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1043,'동명항 생선숯불구이','강원 속초시 동명동 513-98','033-632-3376',101,0,'강원 속초시_동명항생선숯불구이_공식.jpg','화','11:00~21:00',1,0,'19000','https://www.siksinhot.com/P/99807',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1044,'함흥냉면옥','강원 속초시 청초호반로 299','033-633-2256',103,0,'강원 속초시_함흥냉면옥_공식.jpg','목','10:30~20:30',1,0,'9000','https://www.siksinhot.com/P/254193',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1046,'후포식당','강원 속초시 중앙로108번길 22','033-632-6738',109,0,'강원 속초시_후포식당_공식.jpg','연중무휴','08:30~21:00',1,0,'10000~30000','https://www.siksinhot.com/P/367045',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1047,'구구집','강원 속초시 중앙로 341','033-636-1888',102,0,'강원 속초시_구구집_공식.jpg','수','09:30~22:00',1,0,'15000~20000','https://www.siksinhot.com/P/427984',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1048,'청초수물회','강원 속초시 엑스포로 12-36','033-635-5050',102,0,'강원 속초시_청초수물회_공식.jpg','연중무휴','10:00~20:50',1,0,'16000','https://www.siksinhot.com/P/254162',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1050,'양반댁함흥냉면','강원 속초시 청초호반로 302','033-636-9999',103,0,'강원 속초시_양반댁함흥냉면_공식.jpg','화','10:00~20:00',1,0,'9000~10000','https://www.siksinhot.com/P/254224',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1051,'2대송림순대집','강원 속초시 아바이마을길 12','033-633-0340',104,0,'강원 속초시_2대송림순대집_공식.jpg','연중무휴','09:00~23:00',2,0,'8000','https://www.siksinhot.com/P/312732',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1052,'중앙닭강정본범','강원 속초시 중앙로147번길 16','033-632-3511',110,0,'강원 속초시_중앙닭강정본점_공식.jpg','토/일','09:00~21:00',1,0,'16000','https://www.siksinhot.com/P/274077',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1053,'송도횟집','강원 속초시 중앙부두길 63','033-633-4727',102,0,'강원 속초시_송도횟집_공식.jpg','연중무휴','08:00~21:00',1,0,'20000~30000','https://www.siksinhot.com/P/20545',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1055,'초당순두부','강원 속초시 원암학사평길 104','033-635-6612',103,0,'강원 속초시_초당순두부_공식.jpg','연중무휴','07:00~19:00',1,0,'9000~20000','https://www.siksinhot.com/P/367042',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1056,'미가','강원 속초시 신흥2길 41','033-635-7999',103,0,'강원 속초시_미가_공식.jpg','연중무휴','08:00~20:00',1,0,'7000~17000','https://www.siksinhot.com/P/482053',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1057,'속초항아리물회','강원 속초시 해오름로 137','033-635-4488',102,0,'강원 속초시_속초항아리물회_공식.jpg','연중무휴','09:30~21:00',1,0,'16000~22000','https://www.siksinhot.com/P/369461',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1058,'왕박골식당','강원 속초시 중앙로 431-1','033-632-5524',103,0,'강원 속초시_왕박골식당_공식.jpg','화','09:30~19:00',1,0,'8000~9000','https://www.siksinhot.com/P/254212',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1059,'대포항소라엄마 튀김순대','강원 속초시 대포항길 9','0507-5798-0017',104,0,'강원 속초시_대포항소라엄마튀김순대_공식.jpg','연중무휴','09:00~22:00',2,0,'3000~10000','https://www.siksinhot.com/P/254117',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1060,'봉브레드','강원 속초시 동해대로 4344-1','033-633-4826',111,0,'강원 속초시_봉브레드_공식.jpg','목','08:30~20:00',1,0,'5700','https://www.siksinhot.com/P/369394',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1061,'진미막국수','강원 속초시 설악금강대교로 46-1','033-638-8294',103,0,'강원 속초시_진미막국수_공식.jpg','연중무휴','11:00~19:00',1,0,'8000','https://www.siksinhot.com/P/370627',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1062,'일출봉횟집','강원 속초시 대포동 940-6','033-635-2222',102,0,'강원 속초시_일출봉횟집_공식.jpg','연중무휴','10:30~22:00',1,0,'15000~20000','https://www.siksinhot.com/P/367040',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1063,'최옥락 할머니 순두부','강원 속초시 관광로 415','033-635-0322',103,0,'강원 속초시_최옥란할머니순두부_공식.jpg','연중무휴','07:00~22:00',1,0,'10000~11000','https://www.siksinhot.com/P/367043',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1064,'조롱박','강원 속초시 수복로 107-2','033-632-4549',104,0,'강원 속초시_조롱박_공식.jpg','일','10:00~20:00',1,0,'1200~4000','https://www.siksinhot.com/P/370631',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1065,'원조털보네토종닭','강원 속초시 청대마을길 100','033-636-3500',101,0,'강원 속초시_원조털보네토종닭_공식.jpg','월/목','10:00~21:30',1,0,'75000','https://www.siksinhot.com/P/367044',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1066,'영철네 생선구이 맛집','강원 속초시 청초호반로 330','033-637-3392',101,0,'강원 속초시_영철네생선구이맛집_공식.jpg','연중무휴','09:00~20:00',1,0,'11000~20000','https://www.siksinhot.com/P/603261',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1067,'바람꽃해녀마을','강원 속초시 바람꽃마을길 37','033-638-5157',103,0,'강원 속초시_바람꽃해녀마을_공식.jpg','수','08:30~20:00',1,0,'15000~20000','https://www.siksinhot.com/P/575398',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1068,'예스닭강정','강원 속초시 동해대로 4018-1','033-633-3525',104,0,'강원 속초시_예스닭강정_공식.jpg','월','11:00~21:00',2,0,'15000~20000','https://www.siksinhot.com/P/368960',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1069,'타코이찌','강원 속초시 수복로201번길 1-6','033-635-0913',102,0,'강원 속초시_타코이찌_공식.jpg','연중무휴','11:00~22:00',1,0,'6500~13500','https://www.siksinhot.com/P/1172284',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1070,'금이야옥이야','강원 속초시 새마을길 53 금이야옥이야','033-632-5549',103,0,'강원 속초시_금이야옥이야_공식.jpg','월','08:00~18:00',2,0,'7000','https://www.siksinhot.com/P/1222648',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1071,'유진게찜','강원 속초시 영랑해안길 81','033-636-0410',102,0,'강원 속초시_유진게찜_공식.jpg','토/일','11:00~22:30',2,0,'16000','https://www.siksinhot.com/P/254150',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1072,'화반','강원 속초시 관광로 439','033-638-4001',103,0,'강원 속초시_화반_공식.jpg','연중무휴','11:00~20:00',2,0,'15000~18000','https://www.siksinhot.com/P/344138',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1073,'시골이모순두부','강원 속초시 노학동 1015-1','033-635-0232',103,0,'강원 속초시_시골이모순두부_공식.jpg','토/일','07:00~19:30',2,0,'8000','https://www.siksinhot.com/P/254236',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1074,'원산면옥','강원 속초시 청학동 483-11','033-633-8838',103,0,'강원 속초시_원산면옥_공식.jpg','토/일','09:00~21:00',2,0,'7000','https://www.siksinhot.com/P/254240',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1076,'소야동치미막국수','강원 속초시 조양동 1548-7','033-633-1228',103,0,'강원 속초시_소야동치미막국수_공식.jpg','토/일','10:30~21:00',2,0,'6000','https://www.siksinhot.com/P/254231',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1077,'두메산골','강원 속초시 노학동 1006-125','033-635-2323',103,0,'강원 속초시_두메산골_공식.jpg','주중','07:00~21:00',2,0,'8000~10000','https://www.siksinhot.com/P/254182',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1078,'속초진짜순대','강원 속초시 중앙로129번길 35-22','033-636-6012',103,0,'강원 속초시_속초진짜순대_공식.jpg','연중무휴','09:00~21:00',2,0,'17000~21000','https://www.siksinhot.com/P/254099',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1080,'진양횟집','강원 속초시 청초호반로 318','033-635-9999',102,0,'강원 속초시_진양횟집_공식.jpg','토/일','09:00~22:00',2,0,'15000','https://www.siksinhot.com/P/116002',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1081,'원조동해순대국','강원 속초시 중앙로129번길 35-17','033-633-1012',109,0,'강원 속초시_원조동해순대국_공식.jpg','연중무휴','07:00~21:00',1,0,'8000~10000','https://www.siksinhot.com/P/254220',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1082,'원주복추어탕','강원 원주시 치악로 1748','033-762-7989',109,0,'강원 원주시_원주복추어탕_공식.jpg','연중무휴','09:00~21:00',1,0,'10000~12000','https://www.siksinhot.com/P/273599',105);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1084,'원주장진우식당','강원 원주시 감영길 28','0503-5798-2394',106,0,'강원 원주시_원주장진우식당_공식.jpg','토/일','12:00~22:00',2,0,'19000','https://www.siksinhot.com/P/1095968',105);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1085,'홍익돈까스 원주점','강원 원주시 행구로 305','033-734-4300',102,0,'강원 원주시_홍익돈까스 원주점_공식.jpg','연중무휴','11:30~21:30',1,0,'9500~11900','https://www.siksinhot.com/P/921294',105);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1086,'원주김치만두','강원 원주시 중앙시장길 31-2','033-745-3848',108,0,'강원 원주시_원주김치만두_공식.jpg','토/일','07:00~20:00',2,0,'5000','https://www.siksinhot.com/P/498287',105);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1088,'원주뚝배기짬뽕','강원 원주시 봉바위길 41','033-744-3214',108,0,'강원 원주시_원주뚝배기짬뽕_공식.jpg','연중무휴','11:00~21:00',2,0,'7000~9000','https://www.siksinhot.com/P/574135',105);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1089,'원주뼈대있는짬뽕','강원 원주시 봉산로 96-15','033-734-8252',108,0,'강원 원주시_원주뼈대있는짬뽕_공식.jpg','연중무휴','11:30~21:00',2,0,'9000','https://www.siksinhot.com/P/566168',105);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1090,'갈비토대왕 원주단구점','강원 원주시 남원로534번길 52','033-762-3636',109,0,'강원 원주시_갈비토대왕 원주단구점_공식.jpg','연중무휴','10:30~22:00',2,0,'13000','https://www.siksinhot.com/P/566265',105);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1092,'탑골가든','강원 춘천시 남산면 김유정로 427-12','033-263-5291',101,0,'강원 춘천시_탑골가든_공식.jpg','연중무휴','10:30~21:00',1,0,'13000','https://www.siksinhot.com/P/481113',106);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1093,'삼교리동치미막국수','강원 춘천시 동면 춘천순환로 822','033-242-9988',103,0,'강원 춘천시_삼교리동치미막국수_공식.jpg','토/일','11:00~20:00',1,0,'8000','https://www.siksinhot.com/P/324782',106);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1094,'남춘천호반닭갈비','강원 춘천시 충혼길5번길 5','033-255-9245',101,0,'강원 춘천시_남춘천호반닭갈비_공식.jpg','토/일','10:00~22:00',2,0,'10000','https://www.siksinhot.com/P/360049',106);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1096,'화산해물찜','강원 춘천시 스포츠타운길 506','033-252-6464',103,0,'강원 춘천시_화산해물찜_공식.jpg','연중무휴','11:00~22:00',2,0,'34000','https://www.siksinhot.com/P/254610',106);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1097,'초막고갈두','강원 태백시 황지동 317','033-553-7388',101,0,'강원 태백시_초막고갈두_공식.jpg','연중무휴','10:00~16:00',1,0,'7000~10000','https://www.siksinhot.com/P/266628',107);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1098,'태백한우골','강원 태백시 대학길 35','033-554-4599',101,0,'강원 태백시_태백한우골_공식.jpg','연중무휴','10:00~22:00',1,0,'32000','https://www.siksinhot.com/P/266661',107);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1099,'너와집','강원 태백시 고원로 35','033-553-4669',103,0,'강원 태백시_너와집_공식.jpg','연중무휴','11:00~20:30',1,0,'15000~20000','https://www.siksinhot.com/P/266631',107);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1100,'산골닭집','강원 태백시 문곡소도동 122','033-581-8988',101,0,'강원 태백시_산골닭집_공식.jpg','연중무휴','11:00~21:00',2,0,'45000','https://www.siksinhot.com/P/266635',107);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1101,'해운대암소갈비집','부산 해운대구 중동2로10번길 32-10','051-746-0033',101,0,'부산 해운대구_해운대암소갈비집_공식.jpg','연중무휴','11:30-22:00',1,0,'50000-100000','www.해운대암소갈비.com',112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1102,'속시원한대구탕','부산 해운대구 달맞이길 229 2층','051-747-1666',109,0,'부산 해운대구_속시원한대구탕_공식.jpg','연중무휴','08:00-19:30',1,0,'11000-',null,112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1103,'옵스 해운대점','부산 해운대구 중동1로 31','051-747-6886',111,0,'부산 해운대구_옵스해운대점_공식.jpg','연중무휴','08:00-22:00',2,0,'2000-20000','http://ops.co.kr/',112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1104,'금수복국 해운대점','부산 해운대구 중동1로43번길 23','051-742-3600',109,0,'부산 해운대구_금수복국해운대점_공식.jpg','연중무휴','00:00-00:00',1,0,'12000-45000','http://ksbog.fordining.kr/',112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1105,'해성막창집','부산 해운대구 중동1로19번길 29','051-731-3113',101,0,'부산 해운대구_해성막창집_공식.jpg','연중무휴','16:30-02:00',2,0,'10000-50000',null,112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1106,'밀양순대돼지국밥 부산본점','부산 해운대구 구남로 28','051-731-7005',109,0,'부산 해운대구_밀양순대돼지국밥부산본점_공식.jpg','연중무휴','00:00-00:00',1,0,'8500-35000',null,112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1107,'이름난기장산곰장어','부산 해운대구 구남로41번길 42','051-742-8201',101,0,'부산 해운대구_이름난기장산곰장어_공식.jpg','연중무휴','격주 화 15:00-02:00',2,0,'22000-55000',null,112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1108,'미포할매복국','부산 해운대구 달맞이길62번길 27-1','051-741-4114',109,0,'부산 해운대구_미포할매복국_공식.jpg','연중무휴','00:00-00:00',1,0,'11000-35000',null,112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1109,'거대갈비','부산 해운대구 달맞이길 22','051-746-0037',101,0,'부산 해운대구_거대갈비_공식.jpg','연중무휴','11:30-21:00',1,0,'55000-70000',null,112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1110,'동백섬횟집','부산 해운대구 해운대해변로209번나길 17','051-741-3888',102,0,'부산 해운대구_동백섬횟집_공식.jpg','연중무휴','12:00-22:00',1,0,'15000-50000',null,112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1111,'아웃트로바이비토','부산 해운대구 우동1로38번가길 25-8','051-758-7123',106,0,'부산 해운대구_아웃트로바이비토_공식.jpg','연중무휴','월, 화 12:00-21:30',2,0,'20000-20000','https://linktr.ee/vito2011',112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1112,'형제전통돼지국밥','부산 해운대구 구남로 39','051-746-9071',109,0,'부산 해운대구_형제전통돼지국밥_공식.jpg','연중무휴','06:00-20:00',2,0,'7000-7500',null,112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1113,'사까에 파라다이스 부산','부산 해운대구 해운대해변로 296 파라다이스호텔부산 본관 3층','051-749-2248',102,0,'부산 해운대구_사까에파라다이스부산_공식.jpg','연중무휴','12:00-21:30',1,0,'20000-190000','https://www.busanparadisehotel.co.kr/front',112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1114,'아오모리','부산 해운대구 센텀3로 20 벡스코비지니스호텔','051-720-8200',102,0,'부산 해운대구_아오모리_공식.jpg','연중무휴','월 12:00-22:00',1,0,'35000-130000',null,112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1115,'예이제','부산 해운대구 해운대해변로298번길 29 푸르지오시티 2층','051-731-1100',101,0,'부산 해운대구_예이제_공식.jpg','연중무휴','12:00-21:20',1,0,'16000-150000','https://yeije.modoo.at',112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1116,'젠스시','부산 해운대구 대천로42번길 28-5','051-746-7456',102,0,'부산 해운대구_젠스시_공식.jpg','연중무휴','화 18:00-22:00',1,0,'150000-150000',null,112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1117,'부다면옥','부산 해운대구 중동1로 36 2층','051-746-8872',103,0,'부산 해운대구_부다면옥_공식.jpg','연중무휴','월 11:00-19:30',1,0,'10000-45000',null,112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1119,'키친동백','부산 해운대구 달맞이길117번가길 85','051-731-0022',106,0,'부산 해운대구_키친동백_공식.jpg','연중무휴','월 11:00-22:00',1,0,'42000-89000','http://www.instagram.com/kitchendongbaek',112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1120,'라꽁띠','부산 해운대구 청사포로 85','051-701-7890',106,0,'부산 해운대구_라꽁띠_공식.jpg','연중무휴','화 12:00-22:00',1,0,'18000-100000','http://blog.naver.com/la_conti',112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1122,'까사 부사노 해운대점','부산 해운대구 구남로 17-1 1층','0507-1321-6349',111,0,'부산 해운대구_까사부사노해운대점_공식.jpg','연중무휴','08:30-03:00',2,0,'3000-14500','http://www.casabusano.com/',112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1123,'로우앤스윗','부산 해운대구 우동1로38번가길 1','010-6717-2988',111,0,'부산 해운대구_로우앤스윗_공식.jpg','연중무휴','09:00-20:00',2,0,'5000-4800','http://instagram.com/raw.and.sweet',112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1124,'듀플릿','부산 해운대구 우동1로20번길 27-13 1층','051-746-2876',111,0,'부산 해운대구_듀플릿_공식.jpg','연중무휴','09:00-22:00',1,0,'5000-17000','https://duplit.kr/',112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1126,'개금밀면','부산 부산진구 가야공원로14번길 88-8 원조개금밀면','051-892-3466',103,0,'부산 부산진구_개금밀면_공식.jpg','연중무휴','11:00-19:40',2,0,'7500-10500',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1127,'오스테리아 라치베타','부산 부산진구 가야대로784번길 46-6','051-819-6190',106,0,'부산 부산진구_오스테리아라치베타_공식.jpg','연중무휴','11:30-22:00',2,0,'13000-18000',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1128,'샬롯','부산 부산진구 서전로37번길 20','051-806-0806',111,0,'부산 부산진구_샬롯_공식.jpg','연중무휴','12:00-22:00',2,0,'4500-8000',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1130,'훈혁','부산 부산진구 서전로10번길 39 구도로통닭 2,3층','070-4001-2016',105,0,'부산 부산진구_훈혁_공식.jpg','연중무휴','18:00-04:00',2,0,'16000-28000',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1131,'칸다소바','부산 부산진구 동천로 105 1층 칸다소바','0507-1366-1662',102,0,'부산 부산진구_칸다소바_공식.jpg','연중무휴','11:30-21:30',2,0,'10000-12000',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1132,'두툼연어','부산 부산진구 동천로85번길 11 1층','051-802-4197',102,0,'부산 부산진구_두툼연어_공식.jpg','연중무휴','월 17:00-02:00',2,0,'18000-20000','https://www.facebook.com/dutumsalmon/',108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1133,'한끼맛있다 서면점','부산 부산진구 중앙대로692번길 49','051-802-6094',106,0,'부산 부산진구_한끼맛있다서면점_공식.jpg','연중무휴','11:30-22:30',2,0,'8000-28000','http://www.hankikor.com',108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1135,'노르웨이식당','부산 부산진구 동천로 117 2층','0507-1431-2023',106,0,'부산 부산진구_노르웨이식당_공식.jpg','연중무휴','일 11:30-20:30',2,0,'5000-12000','https://www.instagram.com/norway_sikdang',108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1136,'치히로식당','부산 부산진구 전포동 664-10','0507-1344-1409',102,0,'부산 부산진구_치히로식당_공식.jpg','연중무휴','11:30-20:30',2,0,'17500-22900',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1137,'옥천사세탁','부산 부산진구 전포동 207-5','070 7514 1216',106,0,'부산 부산진구_옥천사세탁_공식.jpg','연중무휴','11:30-22:00',2,0,'15000-40000',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1139,'모던테이블','부산 부산진구 부전동 220-1','051-809-0301',111,0,'부산 부산진구_모던테이블_공식.jpg','연중무휴','12:00-23:00',2,0,'4000-8500',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1141,'오프커스','부산 부산진구 전포동 685-2','0507-1495-8871',111,0,'부산 부산진구_오프커스_공식.jpg','연중무휴','11:00-22:30',2,0,'4500-6500',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1142,'구석','부산 부산진구 부전동 168-382','051-802-9495',109,0,'부산 부산진구_구석_공식.jpg','연중무휴','17:00-03:00',2,0,'19000-32000',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1143,'육짚','부산 부산진구 전포동 683-15','051-808-1095',101,0,'부산 부산진구_육짚_공식.jpg','연중무휴','12:00-23:00',2,0,'8000-36000',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1145,'곱다','부산 부산진구 부전동 168-96','051-555-7744',101,0,'부산 부산진구_곱다_공식.jpg','연중무휴','12:00-23:00',2,0,'7000-38000',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1146,'지구상사','부산 부산진구 부전동 172-3 2층','051-806-8517',101,0,'부산 부산진구_지구상사_공식.jpg','연중무휴','16:00-05:00',2,0,'7900-16900',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1147,'사월그날','부산 부산진구 부전동 168-391','051-818-8807',106,0,'부산 부산진구_사월그날_공식.jpg','연중무휴','17:30-03:00',2,0,'26000',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1149,'유동커피','부산 부산진구 전포동 688-2','070-7798-4848',111,0,'부산 부산진구_유동커피_공식.jpg','연중무휴','09:30-23:00',2,0,'4800-5500',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1150,'오월생','부산 부산진구 전포동 312-12','0507-1338-8515',111,0,'부산 부산진구_오월생_공식.jpg','연중무휴','12:00-22:00',2,0,'4000-6500',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1151,'삼삼횟집','부산 수영구 민락동 181-138','051-753-7333',102,0,'부산 수영구_삼삼횟집_공식.jpg','연중무휴','12:00-22:00',1,0,'8000-30000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1152,'광안다찌','부산 수영구 민락동 110-50','051-751-0388',102,0,'부산 수영구_광안다찌_공식.jpg','연중무휴','화 12:00-23:00',1,0,'15000-49000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1153,'하모횟집','부산 수영구 민락동 153-7','051-757-0205',102,0,'부산 수영구_하모횟집_공식.jpg','연중무휴','일 12:00-21:00',1,0,'45000-80000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1154,'민락회타운','부산 수영구 민락동 181-84','051-757-3000',102,0,'부산 수영구_민락회타운_공식.jpg','연중무휴','09:00-02:00',1,0,'30000-35000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1155,'대영횟집','부산 수영구 민락동 110-50','051-759-9002',102,0,'부산 수영구_대영횟집_공식.jpg','연중무휴','11:30-24:00',1,0,'55000-130000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1156,'첨벙','부산 수영구 민락동 165-12','0507-1333-9154',102,0,'부산 수영구_첨벙_공식.jpg','연중무휴','17:00-01:00',2,0,'9000-40000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1157,'다이도코로','부산 수영구 남천동 3-57','070-8631-8402',102,0,'부산 수영구_다이도코로_공식.jpg','연중무휴','11:00-21:00',2,0,'8500-20000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1158,'난파센','부산 수영구 남천동 3-60','051-622-0527',102,0,'부산 수영구_난파센_공식.jpg','연중무휴','수 11:30-21:00',2,0,'10000-15000','https://www.instagram.com/i_no_nanpasen',109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1159,'다케다야','부산 수영구 남천동 3-58','051-611-5711',102,0,'부산 수영구_다케다야_공식.jpg','연중무휴','월 11:30-20:00',2,0,'8000-11000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1160,'고향카츠','부산 수영구 광안동 182-16','051-757-1202',102,0,'부산 수영구_고향카츠_공식.jpg','연중무휴','11:30-21:00',2,0,'13000-15000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1161,'초필살돼지구이','부산 수영구 광안동 198-5','051-757-5515',101,0,'부산 수영구_초필살돼지구이_공식.jpg','연중무휴','12:00-01:00',1,0,'7000-20000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1162,'서래갈매기','부산 수영구 광안동 192-1','051-755-2692',101,0,'부산 수영구_서래갈매기_공식.jpg','연중무휴','16:30-04:00',1,0,'9000-37000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1163,'미식육','부산 수영구 민락동 110-40','051-758-8892',101,0,'부산 수영구_미식육_공식.jpg','연중무휴','12:00-02:00',2,0,'69000-109000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1164,'냉삼집','부산 수영구 광안동 689-9','051-752-9295',101,0,'부산 수영구_냉삼집_공식.jpg','연중무휴','17:00-24:00',2,0,'5500-6500',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1165,'왕표고기','부산 수영구 민락동 194-1','0507-1395-3330',101,0,'부산 수영구_왕표고기_공식.jpg','연중무휴','17:00-24:00',2,0,'18000-35000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1166,'참숯돈뱅크','부산 수영구 광안동 189-9','051-754-4664',101,0,'부산 수영구_참숯돈뱅크_공식.jpg','연중무휴','17:00-01:00',2,0,'5000-9000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1167,'AMA','부산 수영구 민락동 158-14','051-910-9557',106,0,'부산 수영구_AMA_공식.jpg','연중무휴','일 12:00-21:00',2,0,'8000-25000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1168,'로옹','부산 수영구 남천동 3-5','070-8848-3774',106,0,'부산 수영구_로옹_공식.jpg','연중무휴','08:30-16:00',2,0,'10000-60000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1169,'수변최고돼지국밥','부산 수영구 민락동 110-54','051-754-9222',109,0,'부산 수영구_수변최고돼지국밥_공식.jpg','연중무휴','00:00-24:00',2,0,'10000-14000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1170,'꽃돼지국밥','부산 수영구 민락동 165-1','051-752-1489',109,0,'부산 수영구_꽃돼지국밥_공식.jpg','연중무휴','일 09:00-21:00',2,0,'8500-11500',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1172,'뚜벅스 광안리점','부산 수영구 민락동 179-1','051-752-3944',111,0,'부산 수영구_뚜벅스 광안리점_공식.jpg','연중무휴','10:00-22:00',2,0,'5500-8300',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1173,'아일드블루','부산 수영구 남천동 5-13','051-611-5543',106,0,'부산 수영구_아일드블루_공식.jpg','연중무휴','11:00-23:00',1,0,'11000-26000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1175,'랑데자뷰 광안리점','부산 수영구 광안동 201-5 205호','051-753-0550',111,0,'부산 수영구_랑데자뷰 광안리점_공식.jpg','연중무휴','10:00-22:30',1,0,'5500-7000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1176,'컵앤컵','부산 수영구 광안동 200-20 4층','051-978-5200',111,0,'부산 수영구_컵앤컵_공식.jpg','연중무휴','10:30-22:00',2,0,'5800-7500',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1177,'차선책','부산 수영구 민락동 179-11','0507-1356-0286',111,0,'부산 수영구_차선책_공식.jpg','연중무휴','11:00-22:00',2,0,'5500-7500',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1179,'코코플라토','부산 수영구 광안동 192-5 1층','051-757-0368',106,0,'부산 수영구_코코플라토_공식.jpg','연중무휴','화 10:00-22:00',1,0,'10000-20000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1180,'뜨라또리아 단테','부산 수영구 민락동 184-5','051-923-8879',106,0,'부산 수영구_뜨라또리아 단테_공식.jpg','연중무휴','월 12:00-22:00',2,0,'15000-30000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1181,'게스후','부산 수영구 광안동 200-1','051-757-1213',106,0,'부산 수영구_게스후_공식.jpg','연중무휴','11:00-06:00',2,0,'19800-80000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1183,'디에이블 광안점','부산 수영구 민락동 181-223 3층','051-754-5759',106,0,'부산 수영구_디에이블 광안점_공식.jpg','연중무휴','11:00-22:00',1,0,'7900-34900',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1184,'선인장식당','부산 영도구 와치로 15 1층 선인장식당','0507-1351-6267',106,0,'부산 영도구_선인장식당_공식.jpg','연중무휴','월 11:00-21:00',1,0,'8500-12000','https://www.instagram.com/cactus___restaurant',110);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1186,'피아크','부산 영도구 동삼동 201-6','051-404-9200',111,0,'부산 영도구_피아크_공식.jpg','연중무휴','10:00-23:00',1,0,'6000-12000',null,110);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1187,'커피미미','부산 영도구 남항동2가 249-14','070-8908-9002',111,0,'부산 영도구_커피미미_공식.jpg','연중무휴','12:00-15:00',2,0,'4000-8000',null,110);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1188,'컵넛','부산 영도구 영선동4가 1055','051-927-1541',111,0,'부산 영도구_컵넛_공식.jpg','연중무휴','12:00-20:00',2,0,'3900-5800',null,110);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1190,'물망초','부산 영도구 동삼동 산19-1','0507-1305-1097',101,0,'부산 영도구_물망초_공식.jpg','연중무휴','12:00-24:00',1,0,'50000-70000',null,110);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1191,'닥치라누나','부산 영도구 동삼동 산19-1','0507-1390-7294',101,0,'부산 영도구_닥치라누나_공식.jpg','연중무휴','13:00-01:00',1,0,'40000-50000',null,110);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1192,'왔다식당','부산 영도구 청학동 386-197','051-412-2676',103,0,'부산 영도구_왔다식당_공식.jpg','연중무휴','일 08:30-15:00',1,0,'12000-20000',null,110);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1194,'토로','부산 영도구 동삼동 712-4','051-403-8939',106,0,'부산 영도구_토로_공식.jpg','연중무휴','11:30-22:00',1,0,'10000-150000',null,110);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1195,'청해수산','부산 영도구 봉래동3가 17-2','051-412-6888',102,0,'부산 영도구_청해수산_공식.jpg','연중무휴','화 12:30-22:00',1,0,'35000-65000',null,110);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1214,'화주요정 압구정본점','서울 강남구 압구정로54길 4 1, 2층','0507-1362-2189',105,0,'서울 강남구_화주요정 압구정본점_공식.jpg','연중무휴','19:00 - 04:00',2,0,'32000',null,121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1216,'쿠히치 압구정점','서울 강남구 도산대로51길 16 1층','010-5762-2558',102,0,'서울 강남구_쿠히치 압구정점_공식.jpg','연중무휴','18:00 - 08:00',2,0,'26000',null,121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1217,'도산뚝배기','서울 강남구 도산대로54길 18 1층','0507-1358-0950',101,0,'서울 강남구_도산뚝배기_공식.jpg','연중무휴','11:30 - 22:00',1,0,'51000',null,121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1218,'레뽀드라라 강남점','서울 강남구 테헤란로7길 22 2관 101호','0507-1352-3177',111,0,'서울 강남구_레뽀드라라 강남점_공식.jpg','연중무휴','11:00 - 21:00',1,0,'23000','https://www.instagram.com/repos_de_lala/',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1220,'감성타코 강남역점','서울 강남구 강남대로 406 지하1층 감성타코','02-565-8830',106,0,'서울 강남구_감성타코 강남역점_공식.jpg','연중무휴','11:30 - 22:00',2,0,'10000','https://www.instagram.com/gamsungtaco/',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1221,'아베크 청담','서울 강남구 선릉로 823 1층','0507-1368-5129',106,0,'서울 강남구_아베크 청담_공식.jpg','연중무휴','11:30 - 02:00',1,0,'27000','https://blog.naver.com/avecque_cheongdam',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1222,'도톤보리 서울','서울 강남구 강남대로152길 14 지하1층','0507-1371-1018',105,0,'서울 강남구_도톤보리 서울_공식.jpg','연중무휴','17:00 - 05:00',2,0,'20000','https://app.catchtable.co.kr/ct/shop/dotonbori',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1223,'천향 도곡점','서울 강남구 논현로 166 1층','02-574-6464',108,0,'서울 강남구_천향 도곡점_공식.jpg','연중무휴','11:10 - 21:30',1,0,'8000 ~ 85000',null,121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1225,'진대감 선릉점','서울 강남구 테헤란로70길 25 백합힐 1층','0507-1312-1253',101,0,'서울 강남구_진대감 선릉점_공식.jpg','연중무휴','11:30 - 22:00',2,0,'29000','https://gorillafnd.co.kr/',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1226,'낙월식당','서울 강남구 선릉로86길 38 지상2층','0507-1427-2298',109,0,'서울 강남구_낙월식당_공식.jpg','연중무휴','11:00 - 22:30',2,0,'13000',null,121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1227,'위트앤미트 가로수길점','서울 강남구 강남대로162길 27-16 1층','0507-1306-2396',111,0,'서울 강남구_위트앤미트 가로수길점_공식.jpg','월','11:00 - 21:00',1,0,'13000','https://www.instagram.com/wheat.n.meat/',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1228,'루위','서울 강남구 도산대로 211 동현빌딩 1F','0507-1436-0018',108,0,'서울 강남구_루위_공식.jpg','연중무휴','11:30 - 22:00',1,0,'50000 ~ 120000','https://blog.naver.com/ruyi2017',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1230,'을밀대 강남점','서울 강남구 테헤란로4길 46 쌍용플래티넘밸류','02-552-1922',103,0,'서울 강남구_을밀대 강남점_공식.jpg','연중무휴','11:00 - 22:00',1,0,'130000','https://www.siksinhot.com/P/131945',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1231,'징기스 강서구청점','서울 강서구 화곡로58길 22-14','02-6408-5888',101,0,'서울 강서구_징기스 강서구청점_공식.jpg','토/일','17:00~22:00',2,0,'13000~14000','https://www.siksinhot.com/P/974856',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1232,'돌배기집 강서구청점','서울 강서구 공항대로46길 47','02-6398-0306',101,0,'서울 강서구_돌배기집 강서구청점_공식.jpg','토/일','11:00~07:00',2,0,'9000~11000','https://www.siksinhot.com/P/829222',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1234,'한신포차 강서구청점','서울 강서구 화곡6동 1115-26번지, 1층','02-2690-1356',105,0,'서울 강서구_한신포차 강서구청점_공식.jpg','토/일','17:00~07:00',2,0,'10000~18000','https://www.siksinhot.com/P/315163',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1235,'강서풍천민물장어','서울 강서구 양천로18길 9','02-2661-1033',102,0,'서울 강서구_강서풍천민물장어_공식.jpg','토/일','10:00~23:00',2,0,'6000~7000','https://www.siksinhot.com/P/776346',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1236,'강서복집','서울 강서구 공항대로59길 8 우현빌딩','02-3661-6672',102,0,'서울 강서구_강서복집_공식.jpg','연중무휴','11:00~22:00',1,0,'90000~130000','https://www.siksinhot.com/P/254464',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1238,'닥터로빈 강서점','서울 강서구 공항대로 396','02-2693-3110',106,0,'서울 강서구_닥터로빈 강서점_공식.jpg','주중','10:00~22:00',2,0,'12000','https://www.siksinhot.com/P/254250',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1239,'접시고기 강서점','서울 강서구 공항대로46길 25-8','02-6403-5959',101,0,'서울 강서구_접시고기 강서점_공식.jpg','연중무휴','16:30~00:00',2,0,'24000','https://www.siksinhot.com/P/997915',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1240,'현대옥 서울강서점','서울 강서구 화곡로 346 귀뚜라미보일러오피스텔 101호','02-2602-0069',103,0,'서울 강서구_현대옥 서울강서점_공식.jpg','연중무휴','00:00~24:00',2,0,'9000','https://www.siksinhot.com/P/433724',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1196,'거북이회초밥','부산 영도구 남항동1가 194-4','051-418-7705',102,0,'부산 영도구_거북이회초밥_공식.jpg','연중무휴','월 12:00-22:00',2,0,'13000-30000',null,110);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1197,'커피네루다','부산 중구 남포동2가 39-6','051-253-1477',111,0,'부산 중구_커피네루다_공식.jpg','연중무휴','11:00-21:30',2,0,'5000-7000',null,111);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1198,'김해식당','부산 중구 남포동5가 75-3','051-255-8242',109,0,'부산 중구_김해식당_공식.jpg','연중무휴','09:30-21:00',2,0,'12000-30000',null,111);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1199,'일광양곱창','부산 중구 남포동6가 3','051-243-4909',101,0,'부산 중구_일광양곱창_공식.jpg','연중무휴','12:00-23:00',2,0,'60000-80000',null,111);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1200,'백호상회','부산 중구 남포동5가 105-1','010-5138-2555',102,0,'부산 중구_백호상회_공식.jpg','연중무휴','11:00-23:00',1,0,'7500-120000',null,111);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1201,'스미카츠','서울 강남구 선릉로157길 23-3 지상 1층 101호','0507-1456-1384',102,0,'서울 강남구_스미카츠_공식.jpg','연중무휴','11:00 - 21:00',2,0,'13900',null,121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1202,'압뚜껑 성곽길점','서울 강남구 압구정로 338 1층 13호','070-8845-7542',101,0,'서울 강남구_압뚜껑 성곽길점_공식.jpg','일','17:00 - 02:00',1,0,'16000',null,121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1203,'솔티서울','서울 강남구 선릉로157길 13-3 2층','0507-1381-0354',105,0,'서울 강남구_솔티서울_공식.jpg','일','18:00 - 01:00',2,0,'16000 ~ 82000','https://app.catchtable.co.kr/ct/shop/saltyseoul',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1204,'자연도소금빵in 도산','서울 강남구 도산대로49길 41 1층','02-512-2245',111,0,'서울 강남구_자연도소금빵in 도산_공식.jpg','연중무휴','09:00 - 22:00',2,0,'12000',null,121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1205,'봉우이층집','서울 강남구 봉은사로18길 76 스타 팰리스','0507-1395-8454',101,0,'서울 강남구_봉우이층집_공식.jpg','연중무휴','11:00 - 23:00',2,0,'16000',null,121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1206,'스시마이우 선릉역점','서울 강남구 선릉로93길 22','0507-1418-8881',102,0,'서울 강남구_스시마이우 선릉역점_공식.jpg','연중무휴','10:00 - 22:00',1,0,'2100 ~ 13000',null,121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1207,'어로선목로집 선릉점','서울 강남구 선릉로86길 10 2층','0507-1363-5536',105,0,'서울 강남구_어로선목로집 선릉점_공식.jpg','연중무휴','17:00 - 01:00',2,0,'15900','https://www.instagram.com/urosun_seolleung/',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1208,'자매수산','서울 강남구 봉은사로18길 90','0507-1309-5534',102,0,'서울 강남구_자매수산_공식.jpg','연중무휴','14:00 - 24:00',2,0,'59000','https://www.instagram.com/kangnam_jamae/',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1209,'은행골 신사점','서울 강남구 강남대로152길 42 2층','0507-1389-4992',102,0,'서울 강남구_은행골 신사점_공식.jpg','일','11:00 - 22:30',1,0,'22000','https://app.catchtable.co.kr/ct/shop/eunhanggol_sinsa',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1210,'성씨네 삼장집','서울 강남구 압구정로50길 28 지상1층 111호','0507-1397-6067',101,0,'서울 강남구_성씨네 삼장집_공식.jpg',null,'11:30 - 05:00',1,0,'16000',null,121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1211,'세광양대창 논현점','서울 강남구 강남대로118길 12','02-558-8484',101,0,'서울 강남구_세광양대창 논현점_공식.jpg','연중무휴','16:30 - 02:00',1,0,'19000',null,121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1212,'스시이안앤 강남역점','서울 강남구 테헤란로1길 25 2층','0507-1443-0999',102,0,'서울 강남구_스시이안앤 강남역점_공식.jpg','연중무휴','11:30 - 22:00',2,0,'1990',null,121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1138,'버거샵','부산 부산진구 전포동 662-6','051-911-4960',114,0,'부산 부산진구_버거샵_공식.jpg','연중무휴','11:00-20:30',2,0,'10900-11900',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1029,'삼척해물','강원 삼척시 남양동 7-6','033-574-6611',109,0,'강원 삼척시_삼척해물_공식.jpg','토/일','11:00~21:00',2,0,'23000','https://www.siksinhot.com/P/266584',103);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1032,'봉포머구리집','강원 속초시 영랑해안길 223','033-631-2021',102,0,'강원 속초시_봉포머구리집_공식.jpg','공휴일','10:00~21:00',1,0,'22000','https://www.siksinhot.com/P/254083',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1036,'김영애할머니 순두부','강원 속초시 원암학사평길 183','033-635-9520',103,0,'강원 속초시_김영애할머니순두부_공식.jpg','연중무휴','07:00~15:00',1,0,'10000','https://www.siksinhot.com/P/254146',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1041,'춘선내','강원 속초시 청초호반로 230','033-635-8052',103,0,'강원 속초시_춘선내_공식.jpg','연중무휴','07:00~22:00',1,0,'3000~35000','https://www.siksinhot.com/P/368441',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1045,'사돈집','강원 속초시 영랑해안1길 8','033-633-0915',109,0,'강원 속초시_사돈집_공식.jpg','목','08:00~15:30',1,0,'20000','https://www.siksinhot.com/P/254205',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1049,'속초어장물회','강원 속초시 엑스포로 31','033-637-8833',102,0,'강원 속초시_속초어장물회_공식.jpg','연중무휴','10:00~21:30',1,0,'13000~17000','https://www.siksinhot.com/P/359190',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1054,'최대섭대박김밥','강원 속초시 중앙시장로 50 영보국민주택 105호','033-633-8093',104,0,'강원 속초시_최대섭대박김밥_공식.jpg','수','11:00~19:00',2,0,'5500','https://www.siksinhot.com/P/480778',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1075,'명태네 황태와 코다리강정','강원 속초시 중앙로147번길 16','033-635-0999',103,0,'강원 속초시_명태네황태와코다리강정_공식.jpg','토/일','09:00~19:00',2,0,'17000','https://www.siksinhot.com/P/342002',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1079,'대선횟집','강원 속초시 동명동 1-194','033-635-3364',102,0,'강원 속초시_대선횟집_공식.jpg','주중','09:30~23:00',2,0,'40000','https://www.siksinhot.com/P/254132',104);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1083,'원주칼국수','강원 원주시 중앙로 32','033-764-0941',103,0,'강원 원주시_원주칼국수_공식.jpg','토/일','11:00~20:00',2,0,'6000','https://www.siksinhot.com/P/498405',105);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1087,'스시노백쉐프 원주혁신점','강원 원주시 혁신로 37-1','033-733-5802',102,0,'강원 원주시_스시노백쉐프 원주혁신점_공식.jpg','토/일','11:30~22:00',2,0,'10000','https://www.siksinhot.com/P/581747',105);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1091,'춘천통나무집 닭갈비','강원 춘천시 신북읍 신샘밭로 763','033-241-5999',101,0,'강원 춘천시_춘천통나무집 닭갈비_공식.jpg','연중무휴','10:30~21:30',1,0,'7000~12000','https://www.siksinhot.com/P/253603',106);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1095,'북경관','강원 춘천시 근화동710-37','033-243-3001',108,0,'강원 춘천시_북경관_공식.jpg','연중무휴','11:00~20:30',2,0,'6000~15000','https://www.siksinhot.com/P/327025',106);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1118,'88간바지','부산 해운대구 해운대로3번길 14','051-781-9641',101,0,'부산 해운대구_88간바지_공식.jpg','연중무휴','10:00-22:00',2,0,'21000-30000',null,112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1121,'해운대 기와집대구탕','부산 해운대구 달맞이길104번길 46','051-731-5020',109,0,'부산 해운대구_해운대기와집대구탕_공식.jpg','연중무휴','08:00-21:00',1,0,'14000-14000',null,112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1125,'카페CCD 해리단길점','부산 해운대구 우동1로38번가길 7-1 1층','051-910-9707',111,0,'부산 해운대구_카페CCD해리단길점_공식.jpg','연중무휴','11:00-21:00',2,0,'4800-5800',null,112);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1129,'친치쿠린','부산 부산진구 중앙대로691번가길 18','0507-1402-2434',102,0,'부산 부산진구_친치쿠린_공식.jpg','연중무휴','11:30-24:00',2,0,'7000-8500','www.instagram.com/chinchikurin_ramen/',108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1134,'동백아가씨1961','부산 부산진구 서전로37번길 18 동백아가씨1961','070-7612-1961',104,0,'부산 부산진구_동백아가씨1961_공식.jpg','연중무휴','월 11:30-21:00',2,0,'14500-16500','https://www.instagram.com/dongbaek_1961',108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1140,'코지','부산 부산진구 전포동 671-10 2F','0507-1437-0951',106,0,'부산 부산진구_코지_공식.jpg','연중무휴','11:30-22:00',2,0,'16000-18000',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1144,'고메','부산 부산진구 전포동 694-6','0507-1393-1809',111,0,'부산 부산진구_고메_공식.jpg','연중무휴','10:00-22:30',2,0,'5000-7000',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1148,'스페이스앤무드','부산 부산진구 부전동 396-14','051-915-1155',111,0,'부산 부산진구_스페이스앤무드_공식.jpg','연중무휴','10:00-22:00',1,0,'5000-17000',null,108);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1171,'광안국밥','부산 수영구 광안동 193-4','051-757-0720',109,0,'부산 수영구_광안국밥_공식.jpg','연중무휴','00:00-24:00',1,0,'8000-10000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1174,'일리카페 광안리점','부산 수영구 광안동 197-2','051-757-3089',111,0,'부산 수영구_일리카페 광안리점_공식.jpg','연중무휴','10:00-22:00',2,0,'4500-7500',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1178,'별침대','부산 수영구 광안동 196-3','070-8892-5800',111,0,'부산 수영구_별침대_공식.jpg','연중무휴','10:00-22:00',1,0,'5500-11800',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1182,'안쵸비','부산 수영구 민락동 24-31','0507-1309-7303',106,0,'부산 수영구_안쵸비_공식.jpg','연중무휴','일, 월 12:00-21:00',2,0,'17000-18000',null,109);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1185,'에테르','부산 영도구 영선동4가 1102','051-263-5055',111,0,'부산 영도구_에테르_공식.jpg','연중무휴','10:00-21:00',1,0,'6200-25000',null,110);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1189,'암튼 커피스탠드','부산 영도구 남항동3가 141-33','010-5050-3459',111,0,'부산 영도구_암튼 커피스탠드_공식.jpg','연중무휴','11:30-21:30',1,0,'3500-5500',null,110);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1193,'그라치에','부산 영도구 청학동 148-160','070-4150-9999',106,0,'부산 영도구_그라치에_공식.jpg','연중무휴','11:30-21:30',1,0,'12000-34000',null,110);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1213,'슬로우커피','서울 강남구 역삼로 136 신명빌딩 1층','0507-1339-0364',111,0,'서울 강남구_슬로우커피_공식.jpg','연중무휴','10:00 - 22:00',2,0,'6000',null,121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1215,'순정한우정육식당 역삼점','서울 강남구 강남대로94길 69 1층','0507-1440-9296',101,0,'서울 강남구_순정한우정육식당 역삼점_공식.jpg',null,'11:30 - 22:00',1,0,'79000','https://gorillafnd.co.kr/72',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1219,'메리고라운드 스테이크','서울 강남구 논현로175길 69 원영빌딩 1층','0507-1384-9141',106,0,'서울 강남구_메리고라운드 스테이크_공식.jpg','연중무휴','11:00 - 22:00',1,0,'17000','https://app.catchtable.co.kr/ct/shop/merry_go_round',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1224,'신사만장어','서울 강남구 도산대로1길 10','0507-1355-9302',101,0,'서울 강남구_신사만장어_공식.jpg','연중무휴','11:30 - 22:00',2,0,'54000','https://blog.naver.com/kung000455',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1229,'어썸로즈','서울 강남구 압구정로10길 40 지하1층','0507-1341-0619',106,0,'서울 강남구_어썸로즈_공식.jpg','연중무휴','11:00 - 22:00',1,0,'14900','https://www.instagram.com/AwesomeRose_garosu/',121);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1233,'110이즈백 강서구청점','서울 강서구 까치산로 172','02-2695-9294',110,0,'서울 강서구_110이즈백 강서구청점_공식.jpg','연중무휴','14:00~03:00',2,0,'15900~26500','https://www.siksinhot.com/P/1259259',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1237,'샤브미 강서점','서울 강서구 화곡로 398','02-3664-8383',101,0,'서울 강서구_샤브미 강서점_공식.jpg','토/일','11:30~22:00',2,0,'21800~26800','https://www.siksinhot.com/P/254499',113);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1430,'해지개','제주 제주시 애월읍 애월북서길 52 . 1~2층','0507-1358-8586',111,0,'제주 제주시_해지개_공식.jpg','연중무휴','9:00-21:00',1,0,'7500','https://www.instagram.com/jeju_17',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1433,'장승포식당 성산 서귀포점','제주 서귀포시 성산읍 동류암로 32 장승포식당','064-784-5354',109,0,'제주 서귀포시_장승포식당 성산 서귀포점_공식.jpg','2,4번째화요일','9:00-21:00',1,0,'16000-55000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1450,'한림칼국수','제주 제주시 한림읍 한림해안로 139','070-8900-3339',103,0,'제주 제주시_한림칼국수_공식.jpg','일요일','7:00-15:00',1,0,'10000','http://flourfood.co.kr/hallim',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1455,'까망돼지 중문점','제주 서귀포시 색달중앙로 21 여미지하우스1층 까망돼지본점','0507-1316-6543',101,0,'제주 서귀포시_까망돼지 중문점_공식.jpg','연중무휴','11:00-23:00',1,0,'66000','http://gmrehowl6543.modoo.at/',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1460,'바다어멍 서귀포올레시장본점','제주 서귀포시 명동로 45 바다어멍','0507-1369-4542',102,0,'제주 서귀포시_바다어멍 서귀포올레시장본점_공식.jpg','연중무휴','7:00-22:00',1,0,'45000-220000','https://seemama.modoo.at/',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1465,'수선화식당','제주 제주시 한림읍 협재1길 24 (협재리)','070-8864-5564',106,0,'제주 제주시_수선화식당_공식.jpg','연중무휴','11:00-20:00',2,0,'19000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1468,'리보스코 화덕112','제주 제주시 수목원길 27 리보스코화덕112 연동점','0507-1448-0906',112,0,'제주 제주시_리보스코 화덕112_공식.jpg','수요일','11:00-21:00',1,0,'27000','https://blog.naver.com/bosco1315',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1472,'은희네 해장국','제주 제주시 고마로13길 8','064-726-5622',109,0,'제주 제주시_은희네 해장국_공식.jpg','목요일','6:00-15:00',1,0,'8000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1476,'미향해장국 성산점','제주 서귀포시 성산읍 일출로 9 1층','064-784-9994',109,0,'제주 서귀포시_미향해장국 성산점_공식.jpg','화요일','6:30-20:00',1,0,'10000',null,118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1485,'협재수우동 협재점','제주 제주시 한림읍 협재1길 11','064-796-5830',102,0,'제주 제주시_협재수우동 협재점_공식.jpg','연중무휴','10:30-17:00',1,0,'10000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1488,'델문도 비치웨이브','제주 제주시 조천읍 조함해안로 519-10','064-702-0007',111,0,'제주 제주시_델문도 비치웨이브_공식.jpg','연중무휴','7:00-24:00',1,0,'7000','http://www.delmoondo.com/',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1492,'계절식탁 함덕점','제주 제주시 조천읍 조함해안로 510 2층','0507-1432-6577',103,0,'제주 제주시_계절식탁 함덕점_공식.jpg','연중무휴','11:30-22:00',1,0,'68000',null,119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1495,'제주로운청해원 성산일출봉점','제주 서귀포시 성산읍 신양로 101 1층 제주로운 청해원','0507-1342-7026',102,0,'제주 서귀포시_제주로운청해원 성산일출봉점_공식.jpg','연중무휴','8:00-21:00',1,0,'24000','http://www.instagram.com/cheong_haewon',118);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1500,'삼미횟집 제주공항점','제주 제주시 도두항서5길 1','0507-1469-6403',102,0,'제주 제주시_삼미횟집 제주공항점_공식.jpg','연중무휴','11:00-22:30',1,0,'100000-250000','https://www.instagram.com/jeju_sammi',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1504,'곱들락 함덕흑돼지','제주 제주시 함덕리 951-1','064-783-0992',101,0,'제주 제주시_곱들락 함덕흑돼지_공식.jpg','연중무휴','12:00-22:00',1,0,'36000','https://blog.naver.com/gobdeulrak_',119);
Insert into RESTAURANT (IDX,NAME,ADDRESS,RES_PHONE,CATEGORY,SCORE,PHOTO,HOLIDAY,OP_HOUR,PARK_AREA,VIEW_COUNT,PRICE,LINK,AREA_IDX) values (1509,'뽈살집 본점','제주 서귀포시 중정로91번길 41 1층','064-763-6860',101,0,'제주 서귀포시_뽈살집 본점_공식.jpg','연중무휴','15:00-24:00',1,0,'-54000',null,118);
REM INSERTING into REVIEW
SET DEFINE OFF;
Insert into REVIEW (IDX,WRITER,CONTENT,VISIT_DATE,WRITE_DATE,SCORE,GOOD,RES_IDX,IMG) values (1007,'JohnD','<p>ekljwled</p>',to_date('02/03/03','RR/MM/DD'),to_date('23/12/19','RR/MM/DD'),4.5,null,1002,'강원 강릉시_강릉 짬뽕 순두부 동화가든_리뷰 2.jpg');
Insert into REVIEW (IDX,WRITER,CONTENT,VISIT_DATE,WRITE_DATE,SCORE,GOOD,RES_IDX,IMG) values (1010,'kyun','<p>테스트용~~~</p>',to_date('23/03/15','RR/MM/DD'),to_date('23/12/19','RR/MM/DD'),2.5,null,1002,'강원 강릉시_강릉 짬뽕 순두부 동화가든_리뷰 1.jpg');
Insert into REVIEW (IDX,WRITER,CONTENT,VISIT_DATE,WRITE_DATE,SCORE,GOOD,RES_IDX,IMG) values (1001,'JohnD','<p>첫 테스트용~~</p>',to_date('22/03/01','RR/MM/DD'),to_date('23/12/18','RR/MM/DD'),3.5,null,1001,'Seoul_SeoDae_025.jpg');
Insert into REVIEW (IDX,WRITER,CONTENT,VISIT_DATE,WRITE_DATE,SCORE,GOOD,RES_IDX,IMG) values (1003,'kyun','<p>test</p>',to_date('23/03/02','RR/MM/DD'),to_date('23/12/18','RR/MM/DD'),3,null,1001,'강원 강릉시_강릉감자옹심 강릉본점_리뷰 1.jpg');
--------------------------------------------------------
--  DDL for Index CATEGORY_IDX_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CATEGORY_IDX_PK" ON "CATEGORY" ("IDX") 
  ;
--------------------------------------------------------
--  DDL for Index ACC_IDX_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ACC_IDX_PK" ON "ACCOUNT" ("IDX") 
  ;
--------------------------------------------------------
--  DDL for Index AREA_IDX_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AREA_IDX_PK" ON "AREA" ("IDX") 
  ;
--------------------------------------------------------
--  DDL for Index IMG_IDX_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IMG_IDX_PK" ON "IMG" ("IDX") 
  ;
--------------------------------------------------------
--  DDL for Index ACC_PHONE_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ACC_PHONE_UK" ON "ACCOUNT" ("PHONE") 
  ;
--------------------------------------------------------
--  DDL for Index RES_IDX_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RES_IDX_PK" ON "RESTAURANT" ("IDX") 
  ;
--------------------------------------------------------
--  DDL for Index ACC_NICK_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ACC_NICK_UK" ON "ACCOUNT" ("NICK") 
  ;
--------------------------------------------------------
--  DDL for Index ACC_USERID_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ACC_USERID_UK" ON "ACCOUNT" ("USERID") 
  ;
--------------------------------------------------------
--  DDL for Index ACC_EMAIL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ACC_EMAIL_UK" ON "ACCOUNT" ("EMAIL") 
  ;
--------------------------------------------------------
--  DDL for Index REVIEW_IDX_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REVIEW_IDX_PK" ON "REVIEW" ("IDX") 
  ;
--------------------------------------------------------
--  DDL for Index BOOKMARK_IDX_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKMARK_IDX_PK" ON "BOOKMARK" ("IDX") 
  ;
--------------------------------------------------------
--  Constraints for Table IMG
--------------------------------------------------------

  ALTER TABLE "IMG" MODIFY ("REV_IDX" NOT NULL ENABLE);
  ALTER TABLE "IMG" ADD CONSTRAINT "IMG_IDX_PK" PRIMARY KEY ("IDX")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" ADD CONSTRAINT "REVIEW_GOOD_CK" CHECK (good in (1,2)) ENABLE;
  ALTER TABLE "REVIEW" ADD CONSTRAINT "REVIEW_IDX_PK" PRIMARY KEY ("IDX")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "CATEGORY" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "CATEGORY" ADD CONSTRAINT "CATEGORY_IDX_PK" PRIMARY KEY ("IDX")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table AREA
--------------------------------------------------------

  ALTER TABLE "AREA" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "AREA" ADD CONSTRAINT "AREA_IDX_PK" PRIMARY KEY ("IDX")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table ACCOUNT
--------------------------------------------------------

  ALTER TABLE "ACCOUNT" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" MODIFY ("USERPW" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" MODIFY ("NICK" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" MODIFY ("FOREIGNER" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" ADD CONSTRAINT "ACC_STATUS_CK" CHECK (status in ('관리자', '게스트')) ENABLE;
  ALTER TABLE "ACCOUNT" ADD CONSTRAINT "ACC_FORE_CK" CHECK (foreigner in ('내국인', '외국인')) ENABLE;
  ALTER TABLE "ACCOUNT" ADD CONSTRAINT "ACC_GENDER_CK" CHECK (gender in ('남', '여')) ENABLE;
  ALTER TABLE "ACCOUNT" ADD CONSTRAINT "ACC_IDX_PK" PRIMARY KEY ("IDX")
  USING INDEX  ENABLE;
  ALTER TABLE "ACCOUNT" ADD CONSTRAINT "ACC_USERID_UK" UNIQUE ("USERID")
  USING INDEX  ENABLE;
  ALTER TABLE "ACCOUNT" ADD CONSTRAINT "ACC_NICK_UK" UNIQUE ("NICK")
  USING INDEX  ENABLE;
  ALTER TABLE "ACCOUNT" ADD CONSTRAINT "ACC_EMAIL_UK" UNIQUE ("EMAIL")
  USING INDEX  ENABLE;
  ALTER TABLE "ACCOUNT" ADD CONSTRAINT "ACC_PHONE_UK" UNIQUE ("PHONE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESTAURANT
--------------------------------------------------------

  ALTER TABLE "RESTAURANT" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "RESTAURANT" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "RESTAURANT" MODIFY ("CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "RESTAURANT" MODIFY ("OP_HOUR" NOT NULL ENABLE);
  ALTER TABLE "RESTAURANT" ADD CONSTRAINT "RES_PARK_CK" CHECK (park_area >=1 and  park_area <=2) ENABLE;
  ALTER TABLE "RESTAURANT" ADD CONSTRAINT "RES_IDX_PK" PRIMARY KEY ("IDX")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOOKMARK
--------------------------------------------------------

  ALTER TABLE "BOOKMARK" MODIFY ("ACC_IDX" NOT NULL ENABLE);
  ALTER TABLE "BOOKMARK" MODIFY ("RES_IDX" NOT NULL ENABLE);
  ALTER TABLE "BOOKMARK" ADD CONSTRAINT "BOOKMARK_IDX_PK" PRIMARY KEY ("IDX")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOOKMARK
--------------------------------------------------------

  ALTER TABLE "BOOKMARK" ADD CONSTRAINT "BOOKMARK_ACC_IDX_FK" FOREIGN KEY ("ACC_IDX")
	  REFERENCES "ACCOUNT" ("IDX") ENABLE;
  ALTER TABLE "BOOKMARK" ADD CONSTRAINT "BOOKMARK_RES_IDX_FK" FOREIGN KEY ("RES_IDX")
	  REFERENCES "RESTAURANT" ("IDX") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table IMG
--------------------------------------------------------

  ALTER TABLE "IMG" ADD CONSTRAINT "IMG_REV_IDX_FK" FOREIGN KEY ("IDX")
	  REFERENCES "REVIEW" ("IDX") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESTAURANT
--------------------------------------------------------

  ALTER TABLE "RESTAURANT" ADD CONSTRAINT "RES_AREA_IDX_FK" FOREIGN KEY ("AREA_IDX")
	  REFERENCES "AREA" ("IDX") ENABLE;
  ALTER TABLE "RESTAURANT" ADD CONSTRAINT "CATEGORY_FK" FOREIGN KEY ("CATEGORY")
	  REFERENCES "CATEGORY" ("IDX") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" ADD CONSTRAINT "REVIEW_WRITER_FK" FOREIGN KEY ("WRITER")
	  REFERENCES "ACCOUNT" ("NICK") ENABLE;
  ALTER TABLE "REVIEW" ADD CONSTRAINT "REVIEW_RES_IDX_FK" FOREIGN KEY ("RES_IDX")
	  REFERENCES "RESTAURANT" ("IDX") ENABLE;
