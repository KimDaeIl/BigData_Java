/*
	## ���� DB �𵨸� : notices.ddl
	1. ������ȣ		����(4)		PK  ������ �ڵ��ο�
	2. ����			����(50)	NN	����� �Է�
	3. �ۼ���		����(30)	NN	�ڵ��ο�(�α��� ���̵�)
	4. �ۼ���		��¥		NN	�ڵ��ο�(���糯¥)
	5. ��ȸ��		����(4)		NN	�ڵ��ο�(��ȸ�� ����)
	6. ����			����(100)	

	## ���� (Relathionship)
	-- ȸ�����̺� : �θ����̺�(PK : member_id)
	-- �������̺� : �ڽ����̺�(FK : writer)

	## ������� ������ ����(data dictionary)
	-- user_constraints
	-- user_cons_columns

*/

-- ���̺� ����
drop table notices;

-- ���̺� ����
create table notices (
	notice_no number(4),
	title varchar2(50) not null,
	writer varchar2(30) not null,
	write_date date not null,
	hit_count number(4) not null,
	content varchar2(100)
);

-- ���� �߰�
alter table notices
add constraint pk_notices_noticeno primary key (notice_no);

alter table notices
add constraint fk_notices_writer foreign key(writer) references members(member_id);


-- ������ ��ü ����
drop sequence seq_no;

-- ������ ��ü ����
-- ���� 1...5 / 6����
create sequence seq_no
start with 6
maxvalue 1000
nocycle
;

