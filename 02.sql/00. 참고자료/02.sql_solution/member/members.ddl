/*
	## 회원 DB 모델링 : members.ddl

	1. 아이디		문자(30)	PK  사용자 입력
	2. 비밀번호		문자(20)	NN	사용자 입력
	3. 이름			문자(20)	NN	사용자 입력
	4. 휴대폰		문자(13)	UNIQUE	사용자 입력	(010-1234-1234)
	5. 이메일		문자(30)	UNIQUE	사용자 입력
	6. 가입일		문자(10)	NN	자동부여 (현재날짜 : 년도4/월2/일2)
	7. 등급			문자(1)		NN	자동부여 ([G] / S / A)
	8. 마일리지		숫자(6)		
	9. 담당자		문자(30)	
	
	## 관계 (Relathionship)
	-- 회원테이블 : 부모테이블(PK : member_id)
	-- 공지테이블 : 자식테이블(FK : writer)
*/

-- 테이블 삭제
-- drop table members;
drop table members cascade constraints;

-- 테이블 생성
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

