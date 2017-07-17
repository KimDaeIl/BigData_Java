DROP SEQUENCE seq_notice_replay;
CREATE SEQUENCE seq_notice_replay
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 4294967295
NOCYCLE;

DROP TABLE notice_replies;
CREATE TABLE notice_replies(
    notice_id NUMBER(4) NOT NULL,
    reply_id NUMBER(30) NOT NULL PRIMARY KEY,
    writer VARCHAR2(30) NOT NULL,
    content VARCHAR2(255) NOT NULL,
    reg_date DATE DEFAULT SYSDATE NOT NULL
);
ALTER TABLE notice_replies ADD CONSTRAINT FK_MEMBER_WRITER FOREIGN KEY (writer) REFERENCES MEMBERS(member_id);
ALTER TABLE notice_replies ADD CONSTRAINT FK_MEMBER_NOTICE FOREIGN KEY (notice_id) REFERENCES notices(notice_no);
CREATE INDEX idx_notice_rep_noticeno ON notice_replies (notice_id);
