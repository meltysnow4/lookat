DROP SEQUENCE REVIEWS_SEQ;
CREATE SEQUENCE REVIEWS_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 9999999
NOCYCLE
NOCACHE;


DROP TABLE REVIEWS;
CREATE TABLE REVIEWS(
	R_NO NUMBER PRIMARY KEY, 		--리뷰번호
	R_TITLE VARCHAR2(100) NOT NULL,  		--리뷰제목
	R_CONTENT VARCHAR2(500) NOT NULL,	--리뷰내용
	R_REGDATE DATE NOT NULL,		--리뷰등록일
	R_HIT NUMBER NOT NULL,			--조회수
	R_FILENAME VARCHAR2(300),	 --첨부파일
	R_GROUPORD NUMBER NOT NULL, --정렬순서
	R_DEPTH NUMBER NOT NULL, --글의 순번
	R_GROUP NUMBER NOT NULL, --게시글 구분
	R_M_ID VARCHAR2(50) NOT NULL,  -- 작성자아이디
	R_P_NO NUMBER NOT NULL,   -- 제품번호
	FOREIGN KEY (R_M_ID) REFERENCES MEMBERS (M_ID), --작성자아이디
	FOREIGN KEY (R_P_NO) REFERENCES PRODUCTS (P_NO)	--제품번호
);

INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'정말좋네요','옷입어봤는데너무좋아요',REVIEWS_SEQ.NETXVAL,'USER1','2021/01/22',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'이뻐요요','잘입고있어요',REVIEWS_SEQ.NETXVAL,'USER2','2020/12/22',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'생각보다별로에요','후회합니다',REVIEWS_SEQ.NETXVAL,'USER3','2020/01/22',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'괜찮아요','매우괜찮아요',REVIEWS_SEQ.NETXVAL,'USER4','2021/01/21',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'상당합니다','상당히 좋아요우',REVIEWS_SEQ.NETXVAL,'USER5','2021/01/20',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'정말좋아요','네 정말입니다'REVIEWS_SEQ.NETXVAL,'USER6','2021/01/19',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'매우좋아요','매우입니다',REVIEWS_SEQ.NETXVAL,'USER7','2021/01/18',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'잘쓰고잇어요','잘쓰는중입니다.',REVIEWS_SEQ.NETXVAL,'USER8','2021/01/17',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'와우','와우 입니다.',REVIEWS_SEQ.NETXVAL,'USER9','2021/01/16',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'바로사세요','옷 입었는데 너무 좋아요',REVIEWS_SEQ.NETXVAL,'USER10','2021/01/15',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'입어보니알겠어요','입어보세요',REVIEWS_SEQ.NETXVAL,'USER11','2021/01/14',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'맘에들어요','맘에드는거 같아요',REVIEWS_SEQ.NETXVAL,'USER12','2021/01/13',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'잘쓰고있어요','매일입습니다 정말 감사합니다',REVIEWS_SEQ.NETXVAL,'USER13','2021/01/12',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'정말매력적입니다.','정말 매력이 좋아요',REVIEWS_SEQ.NETXVAL,'USER14','2021/01/11',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'매일입네요','데일리로 사용하고 있습니다.',REVIEWS_SEQ.NETXVAL,'USER15','2021/01/10',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'매우좋네요','좋구만요!! 최고입니다.',REVIEWS_SEQ.NETXVAL,'USER16','2021/01/09',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'잘쓰고있지요','옷입어봤는데너무좋습니다',REVIEWS_SEQ.NETXVAL,'USER17','2021/01/08',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'강추','매우매우 강추입니다 와우',REVIEWS_SEQ.NETXVAL,'USER18','2021/01/07',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'강추합니다','진짜 좋아요 너무 만족하고 닳도록 입고 있어요',REVIEWS_SEQ.NETXVAL,'USER19','2021/01/07',3,'첨부사진',1,1,1);
INSERT INTO RIVEWS VALUES(REVIEWS_SEQ.NETXVAL,'우와우','이 옷은 정말 엄청난것 같아요',REVIEWS_SEQ.NETXVAL,'USER20','2021/01/07',3,'첨부사진',1,1,1);
