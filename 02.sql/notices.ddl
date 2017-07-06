<<<<<<< HEAD
rem DROP SEQUENCE notice_sequence;
rem CREATE SEQUENCE notice_sequence
rem START WITH 1
rem INCREMENT BY 1
rem MAXVALUE 9999
rem MINVALUE 1;

rem nextval >> 현재 값을 리턴 후 ++1 >> notice_sequence++ 과 같음.
=======
DROP SEQUENCE notice_sequence;
CREATE SEQUENCE notice_sequence
START WITH 1
INCREMENT BY 1
MAXVALUE 9999
MINVALUE 1;

rem nextval >> 현재 ++ 후 값을 리턴 >> ++notice_sequence 과 같음.
>>>>>>> d45b50


rem CREATE OR REPLACE TRIGGER notices_no_trigger
rem BEFORE INSERT ON notices
rem FOR EACH ROW
rem BEGIN
rem   SELECT notice_sequence.NEXTVAL
rem   INTO   :new.id
rem   FROM   dual;
rem END;

DROP TABLE NOTICES;
CREATE TABLE NOTICES(
	TITLE VARCHAR2(50) NOT NULL,
	CONTENTS VARCHAR2(100) NOT NULL, 
	NOTICE_NO NUMBER(4) /*DEFAULT ON NULL notice_sequence.NEXTVAL*/ NOT NULL , 
	HIT_COUNT NUMBER(4) DEFAULT 0 NOT NULL, 
	writer VARCHAR2(30) NOT NULL, 
	REG_DATE DATE DEFAULT SYSDATE NOT NULL 
);
REM 제약관련 데이터 사전
	-- USER_CONSTRAINTS
	-- USER_CONS_COLUMNS
ALTER TABLE notices ADD (CONSTRAINT PK_NOTICES_NO PRIMARY KEY(NOTICE_NO));
ALTER TABLE notices ADD (CONSTRAINT FK_WRRITER FOREIGN KEY(writer) REFERENCES MEMBERS(MEMBER_ID)  ON DELETE SET null);
<<<<<<< HEAD

INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE1','CONTENTS1', 1, 'user01');
INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE2','CONTENTS2', 2, 'user02');
INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE3','CONTENTS3', 3, 'user03');
INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE4','CONTENTS4', 4, 'suser01');
INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE5','CONTENTS5', 5, 'suser02');


SELECT * FROM notices;
=======
>>>>>>> d45b50
