-- scott user init

-- dba system user conn
conn system/oracle;

-- scott user drop & cascade drop table
drop user scott cascade;

-- user create
create user scott identified by tiger;

-- user ���Ѻο�
grant connect, resource to scott;

-- scott ����
discon
conn scott/tiger;

-- init table script ����
-- @demo_table.sql


