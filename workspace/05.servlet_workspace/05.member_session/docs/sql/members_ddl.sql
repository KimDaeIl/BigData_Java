/*
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
*/
DROP TABLE MEMBERS;

CREATE TABLE members(
	MEMBER_ID VARCHAR2(30) /*CONSTRAINT PK_{{table_name_}_{col_name}} CONSTRAINT PK_MEMBERID */ NOT NULL ,
	MEMBER_PW VARCHAR2(20) CONSTRAINT NN_MEMBERPW NOT NULL,
	MEMBER_NAME VARCHAR2(20) NOT NULL,
	MOBILE CHAR(13) NOT NULL,
	EMAIL VARCHAR2(30) NOT NULL,
	ENTRY_DATE VARCHAR2(10) NOT NULL,
	GRADE CHAR(1),
	MILEAGE NUMBER(6),
	MANAGER VARCHAR2(20)
	/* CONSTRAINT PK_MEMBERID_MOBIL PRIMARY KEY(MEMBER_ID, MOBILE) */
);

/*
REM ALTER TABLE MEMBERS ADD (CONSTRAINT PRIMARY KEY)
*/

-- NOT WORKING >> 
ALTER TABLE MEMBERS ADD 
 (CONSTRAINT PK_MEMBERID PRIMARY KEY(MEMBER_ID));

ALTER TABLE MEMBERS ADD
 (CONSTRAINT UK_MOBILE UNIQUE (MOBILE));
 
ALTER TABLE MEMBERS ADD
 (CONSTRAINT UK_EMAIL UNIQUE (EMAIL));

 /*
rem SELECT TABLE_NAME, CONSTRAINT_TYPE, CONSTRAINT_NAME FROM USER_CONSTRAINTS WHERE TABLE_NAME='MEMBERS';
 */
 
 /*
rem ## 제약 지정시 제약이름 지정 또는 제약이름 생략
	-- 제약이름 지정방법: constraint 제약이름 제약사항 expr
*/