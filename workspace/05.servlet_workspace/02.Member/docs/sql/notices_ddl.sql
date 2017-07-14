DROP SEQUENCE notice_sequence;
CREATE SEQUENCE notice_sequence
START WITH 1
INCREMENT BY 1
MAXVALUE 9999
MINVALUE 1;

/*
rem CREATE OR REPLACE TRIGGER notices_no_trigger
rem BEFORE INSERT ON notices
rem FOR EACH ROW
rem BEGIN
rem   SELECT notice_sequence.NEXTVAL
rem   INTO   :new.id
rem   FROM   dual;
rem END;
*/
DROP TABLE NOTICES;
CREATE TABLE NOTICES(
	TITLE VARCHAR2(50) NOT NULL,
	CONTENTS VARCHAR2(100) NOT NULL,
	NOTICE_NO NUMBER(4) /*DEFAULT ON NULL notice_sequence.NEXTVAL*/ NOT NULL ,
	HIT_COUNT NUMBER(4) DEFAULT 0 NOT NULL,
	WRITER VARCHAR2(30) NOT NULL,
	REG_DATE DATE DEFAULT SYSDATE NOT NULL
);


	-- USER_CONSTRAINTS
	-- USER_CONS_COLUMNS
ALTER TABLE notices ADD (CONSTRAINT PK_NOTICES_NO PRIMARY KEY(NOTICE_NO));
ALTER TABLE notices ADD (CONSTRAINT FK_WRRITER FOREIGN KEY(WRITER) REFERENCES MEMBERS(MEMBER_ID) on delete no action);


INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE1','CONTENTS1', notice_sequence.nextval, 'user01');
INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE2','CONTENTS2', notice_sequence.nextval, 'user02');
INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE3','CONTENTS3', notice_sequence.nextval, 'user03');
INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE4','CONTENTS4', notice_sequence.nextval, 'suser01');
INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE5','CONTENTS5', notice_sequence.nextval, 'suser02');


SELECT * FROM notices;
