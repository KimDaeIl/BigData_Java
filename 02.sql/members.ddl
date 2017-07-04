
rem CREATE TABLE table_name(
rem 	column_name type(length) [제약조건],
rem );
rem ## 제약조건 지정
rem  1. 컬럼 레벨: 테이블 생성 DDL 내부에 제약조건 설정(컬럼, 별도)
rem  2. 테이블 레벨: 테이블 생성 후 별도로 제약조건 설정
rem  3. 테이블 변경 시 제약 추가
rem
rem ## 제약 지정 시 제약명 생략, 제약명 별도 지정
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
