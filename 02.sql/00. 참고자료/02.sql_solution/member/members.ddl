/*
	## ȸ�� DB �𵨸� : members.ddl

	1. ���̵�		����(30)	PK  ����� �Է�
	2. ��й�ȣ		����(20)	NN	����� �Է�
	3. �̸�			����(20)	NN	����� �Է�
	4. �޴���		����(13)	UNIQUE	����� �Է�	(010-1234-1234)
	5. �̸���		����(30)	UNIQUE	����� �Է�
	6. ������		����(10)	NN	�ڵ��ο� (���糯¥ : �⵵4/��2/��2)
	7. ���			����(1)		NN	�ڵ��ο� ([G] / S / A)
	8. ���ϸ���		����(6)		
	9. �����		����(30)	
	
	## ���� (Relathionship)
	-- ȸ�����̺� : �θ����̺�(PK : member_id)
	-- �������̺� : �ڽ����̺�(FK : writer)
*/

-- ���̺� ����
-- drop table members;
drop table members cascade constraints;

-- ���̺� ����
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

