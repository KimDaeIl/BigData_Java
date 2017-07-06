/*
	## ȸ�����̺� ��Ű�� : members.ddl

	## ���̺� ��ü �������
	create table ���̺�� (
		�÷��� Ÿ��(����) [��������],
		�÷��� Ÿ��(����) [��������],
		[constraint ��������]
	);

	## ���� ������� : ������ġ �з�
	-- �÷�����
	-- ���̺� ����
	-- ���̺� ���� : ���� �߰�

	## ���� �����ÿ� �����̸� ����, �����̸� ��������

	## ��ũ��Ʈ ���� ����

	## ���̺� ���� ���
*/

-- -- ���̺� ����
-- drop table members;

-- -- ���̺� ����
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
-- -- ���̺���� : �����̸� ���� �ο�
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
-- -- ���̺� ���� : �ĺ�Ű �����÷� (���̵�, �����) => �÷����� �ĺ�Ű�� �����÷� �Ұ�
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
-- -- ���̺� ���� : �ĺ�Ű �����÷� ����
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

-- ���̺� ���� : ���̺� ������ ���̺����� ���ؼ� �����߰�
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

-- �����߰� ���̺���
alter table members
add (constraint pk_members_memberid primary key (member_id));

alter table members
add (constraint uk_mobile unique (mobile));

alter table members
add (constraint uk_email unique (email));

-- ������ȸ
select table_name, constraint_type, constraint_name
from user_constraints
where table_name in ('MEMBERS')
;
