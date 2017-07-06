-- scott user init

-- dba system user conn
conn system/oracle;

-- scott user drop & cascade drop table
drop user scott cascade;

-- user create
create user scott identified by tiger;

-- user 권한부여
grant connect, resource to scott;

-- scott 연결
discon
conn scott/tiger;

-- init table script 수행
-- @demo_table.sql


