
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

CREATE TABLE members(
	member_id VARCHAR2(30) NOT NULL primary key,
	member_pw VARCHAR2(20) NOT NULL,
	member_name VARCHAR2(20) NOT NULL,
	mobile CHAR(13)	NOT NULL,
	email VARCHAR(30) NOT NULL,
	entry_date VARCHAR2(10) NOT NULL,
	grade CHAR(1) NOT NULL,
	mileage NUMBER(6) NOT NULL,
	manager VARCHAR2(20) NOT NULL
);
