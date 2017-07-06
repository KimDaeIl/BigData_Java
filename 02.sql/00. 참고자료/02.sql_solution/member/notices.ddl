/*
	## 공지 DB 모델링 : notices.ddl
	1. 공지번호		숫자(4)		PK  시퀀스 자동부여
	2. 제목			문자(50)	NN	사용자 입력
	3. 작성자		문자(30)	NN	자동부여(로그인 아이디)
	4. 작성일		날짜		NN	자동부여(현재날짜)
	5. 조회수		숫자(4)		NN	자동부여(조회시 증가)
	6. 내용			문자(100)	

	## 관계 (Relathionship)
	-- 회원테이블 : 부모테이블(PK : member_id)
	-- 공지테이블 : 자식테이블(FK : writer)

	## 제약관련 데이터 사전(data dictionary)
	-- user_constraints
	-- user_cons_columns

*/

-- 테이블 삭제
drop table notices;

-- 테이블 생성
create table notices (
	notice_no number(4),
	title varchar2(50) not null,
	writer varchar2(30) not null,
	write_date date not null,
	hit_count number(4) not null,
	content varchar2(100)
);

-- 제약 추가
alter table notices
add constraint pk_notices_noticeno primary key (notice_no);

alter table notices
add constraint fk_notices_writer foreign key(writer) references members(member_id);


-- 시퀀스 객체 삭제
drop sequence seq_no;

-- 시퀀스 객체 생성
-- 시작 1...5 / 6시작
create sequence seq_no
start with 6
maxvalue 1000
nocycle
;

