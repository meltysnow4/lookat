DROP SEQUENCE CART_SEQ;
CREATE SEQUENCE CART_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 9999999
NOCYCLE
NOCACHE;

DROP TABLE CART;
CREATE TABLE CART
(
	CRT_NO NUMBER PRIMARY KEY,    -- 장바구니번호
	CRT_M_NO NUMBER,              -- 회원번호
	CRT_P_NO NUMBER,              -- 제품번호
	CRT_AMOUNT NUMBER,            -- 제품수량
	FOREIGN KEY (CRT_M_NO) REFERENCES MEMBERS (M_NO),
	FOREIGN KEY (CRT_P_NO) REFERENCES PRODUCTS (P_NO)
);

INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,1,1,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,1,2,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,1,3,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,1,4,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,1,5,1);

INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,2,11,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,2,12,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,2,13,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,2,14,2);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,2,15,1);

INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,3,21,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,3,22,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,3,23,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,3,24,2);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,3,25,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,3,33,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,3,34,2);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,3,35,1);

INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,4,1,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,4,2,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,4,3,1);

INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,5,4,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,5,5,1);

INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,6,11,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,6,12,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,6,13,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,6,14,2);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,6,15,1);

INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,7,21,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,7,22,1);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,7,23,1);

INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,8,24,2);
INSERT INTO CART VALUES(CART_SEQ.NEXTVAL,8,25,1);

INSERT INTO CART VALUES (CART_SEQ.NEXTVAL,9,33,1);
INSERT INTO CART VALUES (CART_SEQ.NEXTVAL,9,34,2);
INSERT INTO CART VALUES (CART_SEQ.NEXTVAL,9,35,1);