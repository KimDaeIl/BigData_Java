
rem CREATE TABLE table_name(
rem 	column_name type(length) [��������],
rem );
rem ## �������� ����
rem  1. �÷� ����: ���̺� ���� DDL ���ο� �������� ����(�÷�, ����)
rem  2. ���̺� ����: ���̺� ���� �� ������ �������� ����
rem  3. ���̺� ���� �� ���� �߰�
rem
rem ## ���� ���� �� ����� ����, ����� ���� ����
rem CREATE TABLE table_name(
rem 	column_name type(length) not null,
rem .
rem .
rem );

rem CREATE SEQUENCE member_sequence
rem  	START WITH 1
rem 	INCREMENT BY 1
rem 	MAXVALUE 2000000000;
rem member_sequence.nextval

DROP TABLE MEMBERS;

CREATE TABLE members(
	MEMBER_ID VARCHAR2(30) /*CONSTRAINT PK_{{table_name_}_{col_name}} CONSTRAINT PK_MEMBERID */ NOT NULL ,
	MEMBER_PW VARCHAR2(20) CONSTRAINT NN_MEMBERPW NOT NULL,
	MEMBER_NAME VARCHAR2(20) NOT NULL,
	MOBILE CHAR(13) NOT NULL,
	EMAIL VARCHAR(30) NOT NULL,
	ENTRY_DATE VARCHAR2(10) NOT NULL,
	GRADE CHAR(1),
	MILEAGE NUMBER(6),
	MANAGER VARCHAR2(20)
	/* CONSTRAINT PK_MEMBERID_MOBIL PRIMARY KEY(MEMBER_ID, MOBILE) */
);
REM ALTER TABLE MEMBERS ADD (CONSTRAINT PRIMARY KEY)

-- NOT WORKING >> 
ALTER TABLE MEMBERS ADD 
 (CONSTRAINT PK_MEMBERID_MOBILE PRIMARY KEY(MEMBER_ID,MOBILE));

ALTER TABLE MEMBERS ADD
 (CONSTRAINT UK_MOBILE UNIQUE (MOBILE));
 
ALTER TABLE MEMBERS ADD
 (CONSTRAINT UK_EMAIL UNIQUE (EMAIL));

SELECT TABLE_NAME, CONSTRAINT_TYPE, CONSTRAINT_NAME FROM USER_CONSTRAINTS WHERE TABLE_NAME='MEMBERS';
 
 
 
rem ## ���� ������ �����̸� ���� �Ǵ� �����̸� ����
	-- �����̸� �������: constraint �����̸� ������� expr
