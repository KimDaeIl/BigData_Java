
INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE1','CONTENTS1', notice_sequence.nextval, 'user01');
INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE2','CONTENTS2', notice_sequence.nextval, 'user02');
INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE3','CONTENTS3', notice_sequence.nextval, 'user03');
INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE4','CONTENTS4', notice_sequence.nextval, 'suser01');
INSERT INTO NOTICES(title, contents, notice_no, writer) VALUES('TITLE5','CONTENTS5', notice_sequence.nextval, 'suser02');

commit;

SELECT * FROM notices;
