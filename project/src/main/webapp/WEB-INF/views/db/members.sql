DROP SEQUENCE MEMBERS_SEQ;
CREATE SEQUENCE MEMBERS_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 9999999
NOCYCLE
NOCACHE;

DROP TABLE MEMBERS;
CREATE TABLE MEMBERS (                         -- 회원 테이블
    M_NO NUMBER PRIMARY KEY,                 --  회원번호
    M_ID VARCHAR2(50) NOT NULL UNIQUE,         -- 회원 ID
    M_PW VARCHAR2(50) NOT NULL,                -- 회원 PW
    M_NAME VARCHAR2(50) NOT NULL,             -- 회원이름
    M_CELLPHONE VARCHAR2(20) NOT NULL,         -- 회원 전화번호
    M_EMAIL VARCHAR2(100) NOT NULL UNIQUE, -- 회원 이메일
    M_COUPON NUMBER,                         --회원 쿠폰
    M_POINT NUMBER,                         -- 구매포인트
    M_GRADE VARCHAR2(20),                     -- 회원등급
    M_REGDATE DATE                            -- 가입일
);
--    MPNO NUMBER(5) NOT NULL, -- 회원 우편번호
--    MADDR VARCHAR2(1000) NOT NULL, -- 회원 주소
--    MPAYMENT NUMBER, -- 회원 결제방법코드
--    MSNO VARCHAR2(14) NOT NULL UNIQUE, -- 회원주민등록번호

-- ADMIN
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'ADMIN1','1001', '관리자1','010-1111-1234','ADMIN1@NAVER.COM',0,0,'관리자등급', SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'ADMIN2','1002', '관리자2','010-1111-5251','ADMIN2@NAVER.COM',0,0,'관리자등급', SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'ADMIN3','1003', '관리자3','010-1111-9960','ADMIN3@NAVER.COM',0,0,'관리자등급', SYSDATE);

-- USER
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER1','1111','홍길동','010-1111-1142','USER1@NAVER.COM',0,2000,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER2','1112','임꺽정','010-1241-1234','USER2@NAVER.COM',0,1400,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER3','1113','김광현','010-1511-1242','USER3@NAVER.COM',0,500,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER4','1114','장원준','010-1962-1534','USER4@NAVER.COM',0,900,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER5','1115','류현진','010-1585-1214','USER5@NAVER.COM',0,2000,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER6','1116','이승엽','010-1151-1254','USER6@NAVER.COM',0,1000,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER7','1117','한국영','010-1521-1514','USER7@NAVER.COM',0,1500,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER8','1118','손흥민','010-2611-1234','USER8@NAVER.COM',0,300,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER9','1119','황의조','010-1551-1234','USER9@NAVER.COM',0,400,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER10','1110','김민재','010-1991-1234','USER10@NAVER.COM',0,600,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER11','1111','고종수','010-1441-1234','USER11@NAVER.COM',0,1000,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER12','1112','박세리','010-1131-1234','USER12@NAVER.COM',0,2000,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER13','1113','김현아','010-1161-1234','USER13@NAVER.COM',0,100,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER14','1114','김수지','010-1113-1234','USER14@NAVER.COM',0,200,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER15','1115','박수진','010-1114-1234','USER15@NAVER.COM',0,300,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER16','1116','고정재','010-1115-1234','USER16@NAVER.COM',0,500,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER17','1117','오승택','010-1116-1234','USER17@NAVER.COM',0,1200,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER18','1118','김수현','010-1117-1234','USER18@NAVER.COM',0,1600,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER19','1119','금잔디','010-1118-1234','USER19@NAVER.COM',0,1300,'일반등급',SYSDATE);
INSERT INTO MEMBERS VALUES(MEMBERS_SEQ.NEXTVAL,'USER20','1120','구준표','010-1119-1234','USER20@NAVER.COM',0,1700,'일반등급',SYSDATE);