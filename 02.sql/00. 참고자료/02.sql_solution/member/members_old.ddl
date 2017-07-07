/*
	## 회원테이블 스키마 : members.ddl

	## 테이블 객체 생성방법
	create table 테이블명 (
		컬럼명 타입(길이) [제약지정],
		컬럼명 타입(길이) [제약지정],
		[constraint 제약지정]
	);

	## 제약 지정방법 : 선언위치 분류
	-- 컬럼레벨
	-- 테이블 레벨
	-- 테이블 변경 : 제약 추가

	## 제약 지정시에 제약이름 생략, 제약이름 별도지정

	## 스크립트 파일 실행

	## 테이블 삭제 방법
*/

-- -- 테이블 삭제
-- drop table members;

-- -- 테이블 생성
-- create table members (
-- 	member_id varchar2(30) primary key,
-- 	member_pw varchar2(20) not null,
-- 	member_name varchar2(20) not null,
-- 	mobile char(13) not null,
-- 	email varchar2(30) not null,
-- 	entry_date char(10) not null,
-- 	grade char(1) not null,
-- 	mileage number(6),
-- 	manager varchar2(30)
-- );
-- 
-- 
-- -- 테이블생성 : 제약이름 지정 부여
-- create table members (
-- 	member_id varchar2(30) constraint PK_members_memberid primary key,
-- 	member_pw varchar2(20) constraint NN_MEMBERPW not null,
-- 	member_name varchar2(20) not null,
-- 	mobile char(13) constraint UK_MOBILE unique,
-- 	email varchar2(30) not null,
-- 	entry_date char(10) not null,
-- 	grade char(1) not null,
-- 	mileage number(6),
-- 	manager varchar2(30)
-- );
-- 
-- 
-- -- 테이블 생성 : 식별키 다중컬럼 (아이디, 모바일) => 컬럼레벨 식별키는 다중컬럼 불가
-- create table members (
-- 	member_id varchar2(30) primary key,
-- 	member_pw varchar2(20) not null,
-- 	member_name varchar2(20) not null,
-- 	mobile char(13) primary key,
-- 	email varchar2(30) not null,
-- 	entry_date char(10) not null,
-- 	grade char(1) not null,
-- 	mileage number(6),
-- 	manager varchar2(30)
-- );
-- 
-- 
-- -- 테이블 생성 : 식별키 다중컬럼 지정
-- create table members (
-- 	member_id varchar2(30),
-- 	member_pw varchar2(20) not null,
-- 	member_name varchar2(20) not null,
-- 	mobile char(13) not null,
-- 	email varchar2(30) not null,
-- 	entry_date char(10) not null,
-- 	grade char(1) not null,
-- 	mileage number(6),
-- 	manager varchar2(30),
-- 	constraint pk_members_memberid_mobile primary key (member_id, mobile) 
-- );
-- 

-- 테이블 생성 : 테이블 생성후 테이블변경을 통해서 제약추가
create table members (
	member_id varchar2(30),
	member_pw varchar2(20) not null,
	member_name varchar2(20) not null,
	mobile char(13) not null,
	email varchar2(30) not null,
	entry_date char(10) not null,
	grade char(1) not null,
	mileage number(6),
	manager varchar2(30)
);

-- 제약추가 테이블변경
alter table members
add (constraint pk_members_memberid primary key (member_id));

alter table members
add (constraint uk_mobile unique (mobile));

alter table members
add (constraint uk_email unique (email));

-- 제약조회
select table_name, constraint_type, constraint_name
from user_constraints
where table_name in ('MEMBERS')
;
