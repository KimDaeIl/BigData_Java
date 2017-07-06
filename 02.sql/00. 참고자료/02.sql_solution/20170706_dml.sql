SQL> cl scr

SQL> -- ���̺� ����
SQL> drop table notices;


SQL> 
SQL> -- ���̺� ����
SQL> create table notices (
  2  	notice_no number(4),
  3  	title varchar2(50) not null,
  4  	writer varchar2(30) not null,
  5  	write_date date not null,
  6  	hit_count number(4) not null,
  7  	content varchar2(100)
  8  );

Table created.

SQL> 
SQL> -- ���� �߰�
SQL> alter table notices
  2  add constraint pk_notices_noticeno primary key (notice_no);

Table altered.

SQL> 
SQL> alter table notices
  2  add constraint fk_notices_writer foreign key(writer) references members(member_id);

Table altered.

SQL> 
SQL> 
SQL> 
SQL> desc members;
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 MEMBER_ID                                                                                                                                                                     NOT NULL VARCHAR2(30)
 MEMBER_PW                                                                                                                                                                     NOT NULL VARCHAR2(20)
 MEMBER_NAME                                                                                                                                                                   NOT NULL VARCHAR2(20)
 MOBILE                                                                                                                                                                        NOT NULL CHAR(13)
 EMAIL                                                                                                                                                                         NOT NULL VARCHAR2(30)
 ENTRY_DATE                                                                                                                                                                    NOT NULL CHAR(10)
 GRADE                                                                                                                                                                         NOT NULL CHAR(1)
 MILEAGE                                                                                                                                                                                NUMBER(6)
 MANAGER                                                                                                                                                                                VARCHAR2(30)

SQL> desc notices;
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 NOTICE_NO                                                                                                                                                                     NOT NULL NUMBER(4)
 TITLE                                                                                                                                                                         NOT NULL VARCHAR2(50)
 WRITER                                                                                                                                                                        NOT NULL VARCHAR2(30)
 WRITE_DATE                                                                                                                                                                    NOT NULL DATE
 HIT_COUNT                                                                                                                                                                     NOT NULL NUMBER(4)
 CONTENT                                                                                                                                                                                VARCHAR2(100)

SQL> drop table members;
drop table members
           *
ERROR at line 1:
ORA-02449: unique/primary keys in table referenced by foreign keys 
error �߻����� : 
=> notices(�ڽ�) ���̺�� �������踦 �ΰ��־ members(�θ�) ���̺� �����Ұ�
=> �θ����̺��� ���踦 �����鼭 �θ����̺� ����
=> drop table members cascade constraints;

SQL> cl scr

SQL> spool off
