SQL> -- sql 한줄 주석
SQL> /* sql 여러줄 주석 */
SQL> 
SQL> -- sql*plus 화면지우기
SQL> cl scr

SQL> -- sql*plus 환경설정 조회
SQL> show all
appinfo is OFF and set to "SQL*Plus"
arraysize 15
autocommit OFF
autoprint OFF
autorecovery OFF
autotrace OFF
blockterminator "." (hex 2e)
btitle OFF and is the first few characters of the next SELECT statement
cmdsep OFF
colsep " "
compatibility version NATIVE
concat "." (hex 2e)
copycommit 0
COPYTYPECHECK is ON
define "&" (hex 26)
describe DEPTH 1 LINENUM OFF INDENT ON
echo OFF
editfile "afiedt.buf"
embedded OFF
escape OFF
escchar OFF
exitcommit ON
FEEDBACK ON for 6 or more rows
flagger OFF
flush ON
heading ON
headsep "|" (hex 7c)
instance "local"
linesize 80
lno 14
loboffset 1
logsource ""
long 80
longchunksize 80
markup HTML OFF HEAD "<style type='text/css'> body {font:10pt Arial,Helvetica,sans-serif; color:black; background:White;} p {font:10pt Arial,Helvetica,sans-serif; color:black; background:White;} table,tr,td {font:10pt Arial,Helvetica,sans-serif; color:Black; background:#f7f7e7; padding:0px 0px 0px 0px; margin:0px 0px 0px 0px;} th {font:bold 10pt Arial,Helvetica,sans-serif; color:#336699; background:#cccc99; padding:0px 0px 0px 0px;} h1 {font:16pt Arial,Helvetica,Geneva,sans-serif; color:#336699; background-color:White; border-bottom:1px solid #cccc99; margin-top:0pt; margin-bottom:0pt; padding:0px 0px 0px 0px;-
} h2 {font:bold 10pt Arial,Helvetica,Geneva,sans-serif; color:#336699; background-color:White; margin-top:4pt; margin-bottom:0pt;} a {font:9pt Arial,Helvetica,sans-serif; color:#663300; background:#ffffff; margin-top:0pt; margin-bottom:0pt; vertical-align:top;}</style><title>SQL*Plus Report</title>" BODY "" TABLE "border='1' width='90%' align='center' summary='Script output'" SPOOL OFF ENTMAP ON PREFORMAT OFF
newpage 1
null ""
numformat ""
numwidth 10
pagesize 14
PAUSE is OFF
pno 0
recsep WRAP
recsepchar " " (hex 20)
release 1102000200
repfooter OFF and is NULL
repheader OFF and is NULL
securedcol is OFF
serveroutput OFF
shiftinout INVISIBLE
showmode OFF
spool ON
sqlblanklines OFF
sqlcase MIXED
sqlcode 0
sqlcontinue "> "
sqlnumber ON
sqlpluscompatibility 11.2.0
sqlprefix "#" (hex 23)
sqlprompt "SQL> "
sqlterminator ";" (hex 3b)
suffix "sql"
tab ON
termout ON
timing OFF
trimout ON
trimspool OFF
ttitle OFF and is the first few characters of the next SELECT statement
underline "-" (hex 2d)
USER is "SYSTEM"
verify ON
wrap : lines will be wrapped
xmloptimizationcheck OFF
errorlogging is OFF
SQL> -- sql*plus 라인사이즈 조회
SQL> show linesize
linesize 80
SQL> -- 페이지사이즈 조회
SQL> show pagesize
pagesize 14
SQL> -- 라인사이즈 변경
SQL> set linesize 300
SQL> set pagesize 300
SQL> 
SQL> -- 전체 테이블 조회
SQL> select * from tab
  2  ;

TNAME                                                        TABTYPE         CLUSTERID                                                                                                                                                                                                                      
------------------------------------------------------------ -------------- ----------                                                                                                                                                                                                                      
AQ$DEF$_AQCALL                                               VIEW                                                                                                                                                                                                                                           
AQ$DEF$_AQERROR                                              VIEW                                                                                                                                                                                                                                           
AQ$_DEF$_AQCALL_F                                            VIEW                                                                                                                                                                                                                                           
AQ$_DEF$_AQERROR_F                                           VIEW                                                                                                                                                                                                                                           
AQ$_INTERNET_AGENTS                                          TABLE                                                                                                                                                                                                                                          
AQ$_INTERNET_AGENT_PRIVS                                     TABLE                                                                                                                                                                                                                                          
AQ$_QUEUES                                                   TABLE                                                                                                                                                                                                                                          
AQ$_QUEUE_TABLES                                             TABLE                                                                                                                                                                                                                                          
AQ$_SCHEDULES                                                TABLE                                                                                                                                                                                                                                          
CATALOG                                                      SYNONYM                                                                                                                                                                                                                                        
COL                                                          SYNONYM                                                                                                                                                                                                                                        
DEF$_AQCALL                                                  TABLE                                                                                                                                                                                                                                          
DEF$_AQERROR                                                 TABLE                                                                                                                                                                                                                                          
DEF$_CALLDEST                                                TABLE                                                                                                                                                                                                                                          
DEF$_DEFAULTDEST                                             TABLE                                                                                                                                                                                                                                          
DEF$_DESTINATION                                             TABLE                                                                                                                                                                                                                                          
DEF$_ERROR                                                   TABLE                                                                                                                                                                                                                                          
DEF$_LOB                                                     TABLE                                                                                                                                                                                                                                          
DEF$_ORIGIN                                                  TABLE                                                                                                                                                                                                                                          
DEF$_PROPAGATOR                                              TABLE                                                                                                                                                                                                                                          
DEF$_PUSHED_TRANSACTIONS                                     TABLE                                                                                                                                                                                                                                          
HELP                                                         TABLE                                                                                                                                                                                                                                          
LOGMNRC_DBNAME_UID_MAP                                       TABLE                                                                                                                                                                                                                                          
LOGMNRC_GSBA                                                 TABLE                                                                                                                                                                                                                                          
LOGMNRC_GSII                                                 TABLE                                                                                                                                                                                                                                          
LOGMNRC_GTCS                                                 TABLE                                                                                                                                                                                                                                          
LOGMNRC_GTLO                                                 TABLE                                                                                                                                                                                                                                          
LOGMNRP_CTAS_PART_MAP                                        TABLE                                                                                                                                                                                                                                          
LOGMNRT_MDDL$                                                TABLE                                                                                                                                                                                                                                          
LOGMNR_AGE_SPILL$                                            TABLE                                                                                                                                                                                                                                          
LOGMNR_ATTRCOL$                                              TABLE                                                                                                                                                                                                                                          
LOGMNR_ATTRIBUTE$                                            TABLE                                                                                                                                                                                                                                          
LOGMNR_CCOL$                                                 TABLE                                                                                                                                                                                                                                          
LOGMNR_CDEF$                                                 TABLE                                                                                                                                                                                                                                          
LOGMNR_COL$                                                  TABLE                                                                                                                                                                                                                                          
LOGMNR_COLTYPE$                                              TABLE                                                                                                                                                                                                                                          
LOGMNR_DICTIONARY$                                           TABLE                                                                                                                                                                                                                                          
LOGMNR_DICTSTATE$                                            TABLE                                                                                                                                                                                                                                          
LOGMNR_ENC$                                                  TABLE                                                                                                                                                                                                                                          
LOGMNR_ERROR$                                                TABLE                                                                                                                                                                                                                                          
LOGMNR_FILTER$                                               TABLE                                                                                                                                                                                                                                          
LOGMNR_GLOBAL$                                               TABLE                                                                                                                                                                                                                                          
LOGMNR_GT_TAB_INCLUDE$                                       TABLE                                                                                                                                                                                                                                          
LOGMNR_GT_USER_INCLUDE$                                      TABLE                                                                                                                                                                                                                                          
LOGMNR_GT_XID_INCLUDE$                                       TABLE                                                                                                                                                                                                                                          
LOGMNR_ICOL$                                                 TABLE                                                                                                                                                                                                                                          
LOGMNR_IND$                                                  TABLE                                                                                                                                                                                                                                          
LOGMNR_INDCOMPART$                                           TABLE                                                                                                                                                                                                                                          
LOGMNR_INDPART$                                              TABLE                                                                                                                                                                                                                                          
LOGMNR_INDSUBPART$                                           TABLE                                                                                                                                                                                                                                          
LOGMNR_INTEGRATED_SPILL$                                     TABLE                                                                                                                                                                                                                                          
LOGMNR_KOPM$                                                 TABLE                                                                                                                                                                                                                                          
LOGMNR_LOB$                                                  TABLE                                                                                                                                                                                                                                          
LOGMNR_LOBFRAG$                                              TABLE                                                                                                                                                                                                                                          
LOGMNR_LOG$                                                  TABLE                                                                                                                                                                                                                                          
LOGMNR_LOGMNR_BUILDLOG                                       TABLE                                                                                                                                                                                                                                          
LOGMNR_NTAB$                                                 TABLE                                                                                                                                                                                                                                          
LOGMNR_OBJ$                                                  TABLE                                                                                                                                                                                                                                          
LOGMNR_OPQTYPE$                                              TABLE                                                                                                                                                                                                                                          
LOGMNR_PARAMETER$                                            TABLE                                                                                                                                                                                                                                          
LOGMNR_PARTOBJ$                                              TABLE                                                                                                                                                                                                                                          
LOGMNR_PROCESSED_LOG$                                        TABLE                                                                                                                                                                                                                                          
LOGMNR_PROPS$                                                TABLE                                                                                                                                                                                                                                          
LOGMNR_REFCON$                                               TABLE                                                                                                                                                                                                                                          
LOGMNR_RESTART_CKPT$                                         TABLE                                                                                                                                                                                                                                          
LOGMNR_RESTART_CKPT_TXINFO$                                  TABLE                                                                                                                                                                                                                                          
LOGMNR_SEED$                                                 TABLE                                                                                                                                                                                                                                          
LOGMNR_SESSION$                                              TABLE                                                                                                                                                                                                                                          
LOGMNR_SESSION_ACTIONS$                                      TABLE                                                                                                                                                                                                                                          
LOGMNR_SESSION_EVOLVE$                                       TABLE                                                                                                                                                                                                                                          
LOGMNR_SPILL$                                                TABLE                                                                                                                                                                                                                                          
LOGMNR_SUBCOLTYPE$                                           TABLE                                                                                                                                                                                                                                          
LOGMNR_TAB$                                                  TABLE                                                                                                                                                                                                                                          
LOGMNR_TABCOMPART$                                           TABLE                                                                                                                                                                                                                                          
LOGMNR_TABPART$                                              TABLE                                                                                                                                                                                                                                          
LOGMNR_TABSUBPART$                                           TABLE                                                                                                                                                                                                                                          
LOGMNR_TS$                                                   TABLE                                                                                                                                                                                                                                          
LOGMNR_TYPE$                                                 TABLE                                                                                                                                                                                                                                          
LOGMNR_UID$                                                  TABLE                                                                                                                                                                                                                                          
LOGMNR_USER$                                                 TABLE                                                                                                                                                                                                                                          
LOGSTDBY$APPLY_MILESTONE                                     TABLE                                                                                                                                                                                                                                          
LOGSTDBY$APPLY_PROGRESS                                      TABLE                                                                                                                                                                                                                                          
LOGSTDBY$EDS_TABLES                                          TABLE                                                                                                                                                                                                                                          
LOGSTDBY$EVENTS                                              TABLE                                                                                                                                                                                                                                          
LOGSTDBY$FLASHBACK_SCN                                       TABLE                                                                                                                                                                                                                                          
LOGSTDBY$HISTORY                                             TABLE                                                                                                                                                                                                                                          
LOGSTDBY$PARAMETERS                                          TABLE                                                                                                                                                                                                                                          
LOGSTDBY$PLSQL                                               TABLE                                                                                                                                                                                                                                          
LOGSTDBY$SCN                                                 TABLE                                                                                                                                                                                                                                          
LOGSTDBY$SKIP                                                TABLE                                                                                                                                                                                                                                          
LOGSTDBY$SKIP_SUPPORT                                        TABLE                                                                                                                                                                                                                                          
LOGSTDBY$SKIP_TRANSACTION                                    TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_AJG                                               TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_BASETABLE                                         TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_CLIQUE                                            TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_ELIGIBLE                                          TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_EXCEPTIONS                                        TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_FILTER                                            TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_FILTERINSTANCE                                    TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_FJG                                               TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_GC                                                TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_INFO                                              TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_JOURNAL                                           TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_LEVEL                                             TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_LOG                                               TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_OUTPUT                                            TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_PARAMETERS                                        TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_PLAN                                              TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_PRETTY                                            TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_ROLLUP                                            TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_SQLDEPEND                                         TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_TEMP                                              TABLE                                                                                                                                                                                                                                          
MVIEW$_ADV_WORKLOAD                                          TABLE                                                                                                                                                                                                                                          
MVIEW_EVALUATIONS                                            VIEW                                                                                                                                                                                                                                           
MVIEW_EXCEPTIONS                                             VIEW                                                                                                                                                                                                                                           
MVIEW_FILTER                                                 VIEW                                                                                                                                                                                                                                           
MVIEW_FILTERINSTANCE                                         VIEW                                                                                                                                                                                                                                           
MVIEW_LOG                                                    VIEW                                                                                                                                                                                                                                           
MVIEW_RECOMMENDATIONS                                        VIEW                                                                                                                                                                                                                                           
MVIEW_WORKLOAD                                               VIEW                                                                                                                                                                                                                                           
OL$                                                          TABLE                                                                                                                                                                                                                                          
OL$HINTS                                                     TABLE                                                                                                                                                                                                                                          
OL$NODES                                                     TABLE                                                                                                                                                                                                                                          
PRODUCT_PRIVS                                                VIEW                                                                                                                                                                                                                                           
PRODUCT_USER_PROFILE                                         SYNONYM                                                                                                                                                                                                                                        
PUBLICSYN                                                    SYNONYM                                                                                                                                                                                                                                        
REPCAT$_AUDIT_ATTRIBUTE                                      TABLE                                                                                                                                                                                                                                          
REPCAT$_AUDIT_COLUMN                                         TABLE                                                                                                                                                                                                                                          
REPCAT$_COLUMN_GROUP                                         TABLE                                                                                                                                                                                                                                          
REPCAT$_CONFLICT                                             TABLE                                                                                                                                                                                                                                          
REPCAT$_DDL                                                  TABLE                                                                                                                                                                                                                                          
REPCAT$_EXCEPTIONS                                           TABLE                                                                                                                                                                                                                                          
REPCAT$_EXTENSION                                            TABLE                                                                                                                                                                                                                                          
REPCAT$_FLAVORS                                              TABLE                                                                                                                                                                                                                                          
REPCAT$_FLAVOR_OBJECTS                                       TABLE                                                                                                                                                                                                                                          
REPCAT$_GENERATED                                            TABLE                                                                                                                                                                                                                                          
REPCAT$_GROUPED_COLUMN                                       TABLE                                                                                                                                                                                                                                          
REPCAT$_INSTANTIATION_DDL                                    TABLE                                                                                                                                                                                                                                          
REPCAT$_KEY_COLUMNS                                          TABLE                                                                                                                                                                                                                                          
REPCAT$_OBJECT_PARMS                                         TABLE                                                                                                                                                                                                                                          
REPCAT$_OBJECT_TYPES                                         TABLE                                                                                                                                                                                                                                          
REPCAT$_PARAMETER_COLUMN                                     TABLE                                                                                                                                                                                                                                          
REPCAT$_PRIORITY                                             TABLE                                                                                                                                                                                                                                          
REPCAT$_PRIORITY_GROUP                                       TABLE                                                                                                                                                                                                                                          
REPCAT$_REFRESH_TEMPLATES                                    TABLE                                                                                                                                                                                                                                          
REPCAT$_REPCAT                                               TABLE                                                                                                                                                                                                                                          
REPCAT$_REPCATLOG                                            TABLE                                                                                                                                                                                                                                          
REPCAT$_REPCOLUMN                                            TABLE                                                                                                                                                                                                                                          
REPCAT$_REPGROUP_PRIVS                                       TABLE                                                                                                                                                                                                                                          
REPCAT$_REPOBJECT                                            TABLE                                                                                                                                                                                                                                          
REPCAT$_REPPROP                                              TABLE                                                                                                                                                                                                                                          
REPCAT$_REPSCHEMA                                            TABLE                                                                                                                                                                                                                                          
REPCAT$_RESOLUTION                                           TABLE                                                                                                                                                                                                                                          
REPCAT$_RESOLUTION_METHOD                                    TABLE                                                                                                                                                                                                                                          
REPCAT$_RESOLUTION_STATISTICS                                TABLE                                                                                                                                                                                                                                          
REPCAT$_RESOL_STATS_CONTROL                                  TABLE                                                                                                                                                                                                                                          
REPCAT$_RUNTIME_PARMS                                        TABLE                                                                                                                                                                                                                                          
REPCAT$_SITES_NEW                                            TABLE                                                                                                                                                                                                                                          
REPCAT$_SITE_OBJECTS                                         TABLE                                                                                                                                                                                                                                          
REPCAT$_SNAPGROUP                                            TABLE                                                                                                                                                                                                                                          
REPCAT$_TEMPLATE_OBJECTS                                     TABLE                                                                                                                                                                                                                                          
REPCAT$_TEMPLATE_PARMS                                       TABLE                                                                                                                                                                                                                                          
REPCAT$_TEMPLATE_REFGROUPS                                   TABLE                                                                                                                                                                                                                                          
REPCAT$_TEMPLATE_SITES                                       TABLE                                                                                                                                                                                                                                          
REPCAT$_TEMPLATE_STATUS                                      TABLE                                                                                                                                                                                                                                          
REPCAT$_TEMPLATE_TARGETS                                     TABLE                                                                                                                                                                                                                                          
REPCAT$_TEMPLATE_TYPES                                       TABLE                                                                                                                                                                                                                                          
REPCAT$_USER_AUTHORIZATIONS                                  TABLE                                                                                                                                                                                                                                          
REPCAT$_USER_PARM_VALUES                                     TABLE                                                                                                                                                                                                                                          
SQLPLUS_PRODUCT_PROFILE                                      TABLE                                                                                                                                                                                                                                          
SYSCATALOG                                                   SYNONYM                                                                                                                                                                                                                                        
SYSFILES                                                     SYNONYM                                                                                                                                                                                                                                        
TAB                                                          SYNONYM                                                                                                                                                                                                                                        
TABQUOTAS                                                    SYNONYM                                                                                                                                                                                                                                        

174 rows selected.

SQL> -- system 관리자 계정에서 사용자 계정 : scott/tiger
SQL> -- create user 아이디 identified by 암호;
SQL> create user scott identified by tiger;

User created.

SQL> -- scott 사용자 계정에 권한 부여
SQL> grant connect, resource, create view to scott;

Grant succeeded.

SQL> discon
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - Production
SQL> show user
USER is ""
SQL> cl scr

SQL> -- scott 계정으로 연결
SQL> conn scott/tiger
Connected.
SQL> show user
USER is "SCOTT"
SQL> 
SQL> -- scott 계정의 모든 테이블 목록 조회
SQL> select * from tab;

no rows selected

SQL> -- sql 스크립트 파일 수행
SQL> -- @스크립트파일명.sql
SQL> -- start 스크립트파일명.sql
SQL> 

SQL> 
SQL> 
SQL> CREATE TABLE DEPT(
  2  		     DEPTNO NUMBER(2),
  3  	     DNAME VARCHAR2(14),
  4  	     LOC VARCHAR2(13)
  5  );

Table created.

SQL> 
SQL> ALTER TABLE DEPT
  2  ADD (CONSTRAINT PK_DEPT PRIMARY KEY (DEPTNO));

Table altered.

SQL> 
SQL> INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');

1 row created.

SQL> INSERT INTO DEPT VALUES (20, 'RESEARCH',	'DALLAS');

1 row created.

SQL> INSERT INTO DEPT VALUES (30, 'SALES',	'CHICAGO');

1 row created.

SQL> INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');

1 row created.

SQL> 
SQL> 
SQL> CREATE TABLE EMP
  2  	    (EMPNO NUMBER(4) NOT NULL,
  3  	     ENAME VARCHAR2(10),
  4  	     JOB VARCHAR2(9),
  5  	     MGR NUMBER(4),
  6  	     HIREDATE DATE,
  7  	     SAL NUMBER(7, 2),
  8  	     COMM NUMBER(7, 2),
  9  	     DEPTNO NUMBER(2));

Table created.

SQL> 
SQL> ALTER TABLE EMP
  2  ADD (CONSTRAINT PK_EMP PRIMARY KEY (EMPNO));

Table altered.

SQL> 
SQL> ALTER TABLE EMP
  2  ADD (CONSTRAINT FK_DEPTNO FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO));

Table altered.

SQL> 
SQL> INSERT INTO EMP VALUES
  2  	     (7369, 'SMITH',  'CLERK',	   7902,
  3  	     TO_DATE('17-12-1980', 'DD-MM-YYYY'),  800, NULL, 20);

1 row created.

SQL> INSERT INTO EMP VALUES
  2  	     (7499, 'ALLEN',  'SALESMAN',  7698,
  3  	     TO_DATE('20-02-1981', 'DD-MM-YYYY'), 1600,  300, 30);

1 row created.

SQL> INSERT INTO EMP VALUES
  2  	     (7521, 'WARD',   'SALESMAN',  7698,
  3  	     TO_DATE('22-02-1981', 'DD-MM-YYYY'), 1250,  500, 30);

1 row created.

SQL> INSERT INTO EMP VALUES
  2  	     (7566, 'JONES',  'MANAGER',   7839,
  3  	     TO_DATE('2-04-1981', 'DD-MM-YYYY'),  2975, NULL, 20);

1 row created.

SQL> INSERT INTO EMP VALUES
  2  	     (7654, 'MARTIN', 'SALESMAN',  7698,
  3  	     TO_DATE('28-09-1981', 'DD-MM-YYYY'), 1250, 1400, 30);

1 row created.

SQL> INSERT INTO EMP VALUES
  2  	     (7698, 'BLAKE',  'MANAGER',   7839,
  3  	     TO_DATE('1-05-1981', 'DD-MM-YYYY'),  2850, NULL, 30);

1 row created.

SQL> INSERT INTO EMP VALUES
  2  	     (7782, 'CLARK',  'MANAGER',   7839,
  3  	     TO_DATE('9-06-1981', 'DD-MM-YYYY'),  2450, NULL, 10);

1 row created.

SQL> INSERT INTO EMP VALUES
  2  	     (7788, 'SCOTT',  'ANALYST',   7566,
  3  	     TO_DATE('09-12-1982', 'DD-MM-YYYY'), 3000, NULL, 20);

1 row created.

SQL> INSERT INTO EMP VALUES
  2  	     (7839, 'KING',   'PRESIDENT', NULL,
  3  	     TO_DATE('17-11-1981', 'DD-MM-YYYY'), 5000, NULL, 10);

1 row created.

SQL> INSERT INTO EMP VALUES
  2  	     (7844, 'TURNER', 'SALESMAN',  7698,
  3  	     TO_DATE('8-09-1981', 'DD-MM-YYYY'),  1500,    0, 30);

1 row created.

SQL> INSERT INTO EMP VALUES
  2  	     (7876, 'ADAMS',  'CLERK',	   7788,
  3  	     TO_DATE('12-01-1983', 'DD-MM-YYYY'), 1100, NULL, 20);

1 row created.

SQL> INSERT INTO EMP VALUES
  2  	     (7900, 'JAMES',  'CLERK',	   7698,
  3  	     TO_DATE('3-12-1981', 'DD-MM-YYYY'),   950, NULL, 30);

1 row created.

SQL> INSERT INTO EMP VALUES
  2  	     (7902, 'FORD',   'ANALYST',   7566,
  3  	     TO_DATE('3-12-1981', 'DD-MM-YYYY'),  3000, NULL, 20);

1 row created.

SQL> INSERT INTO EMP VALUES
  2  	     (7934, 'MILLER', 'CLERK',	   7782,
  3  	     TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300, NULL, 10);

1 row created.

SQL> 
SQL> CREATE TABLE BONUS
  2  	     (ENAME VARCHAR2(10),
  3  	      JOB   VARCHAR2(9),
  4  	      SAL   NUMBER,
  5  	      COMM  NUMBER);

Table created.

SQL> 
SQL> CREATE TABLE SALGRADE
  2  	     (GRADE NUMBER,
  3  	      LOSAL NUMBER,
  4  	      HISAL NUMBER);

Table created.

SQL> 
SQL> INSERT INTO SALGRADE VALUES (1,  700, 1200);

1 row created.

SQL> INSERT INTO SALGRADE VALUES (2, 1201, 1400);

1 row created.

SQL> INSERT INTO SALGRADE VALUES (3, 1401, 2000);

1 row created.

SQL> INSERT INTO SALGRADE VALUES (4, 2001, 3000);

1 row created.

SQL> INSERT INTO SALGRADE VALUES (5, 3001, 9999);

1 row created.

SQL> 
SQL> CREATE TABLE DUMMY
  2  	     (DUMMY NUMBER);

Table created.

SQL> 
SQL> INSERT INTO DUMMY VALUES (0);

1 row created.

SQL> 
SQL> COMMIT;

Commit complete.

SQL> 
SQL> SET TERMOUT ON
SQL> PROMPT Demonstration table build is complete.
Demonstration table build is complete.
SQL> 
SQL> -- EXIT
SQL> select * from tab;

TNAME                                                        TABTYPE         CLUSTERID                                                                                                                                                                                                                      
------------------------------------------------------------ -------------- ----------                                                                                                                                                                                                                      
BONUS                                                        TABLE                                                                                                                                                                                                                                          
DEPT                                                         TABLE                                                                                                                                                                                                                                          
DUMMY                                                        TABLE                                                                                                                                                                                                                                          
EMP                                                          TABLE                                                                                                                                                                                                                                          
SALGRADE                                                     TABLE                                                                                                                                                                                                                                          

SQL> -- scott 전체테이블 조회
SQL> select * from tab;

TNAME                                                        TABTYPE         CLUSTERID                                                                                                                                                                                                                      
------------------------------------------------------------ -------------- ----------                                                                                                                                                                                                                      
BONUS                                                        TABLE                                                                                                                                                                                                                                          
DEPT                                                         TABLE                                                                                                                                                                                                                                          
DUMMY                                                        TABLE                                                                                                                                                                                                                                          
EMP                                                          TABLE                                                                                                                                                                                                                                          
SALGRADE                                                     TABLE                                                                                                                                                                                                                                          

SQL> -- 특정테이블 전체 레코드 조회
SQL> select * from emp;

     EMPNO ENAME                JOB                       MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                                                                                                     
---------- -------------------- ------------------ ---------- -------- ---------- ---------- ----------                                                                                                                                                                                                     
      7369 SMITH                CLERK                    7902 80/12/17        800                    20                                                                                                                                                                                                     
      7499 ALLEN                SALESMAN                 7698 81/02/20       1600        300         30                                                                                                                                                                                                     
      7521 WARD                 SALESMAN                 7698 81/02/22       1250        500         30                                                                                                                                                                                                     
      7566 JONES                MANAGER                  7839 81/04/02       2975                    20                                                                                                                                                                                                     
      7654 MARTIN               SALESMAN                 7698 81/09/28       1250       1400         30                                                                                                                                                                                                     
      7698 BLAKE                MANAGER                  7839 81/05/01       2850                    30                                                                                                                                                                                                     
      7782 CLARK                MANAGER                  7839 81/06/09       2450                    10                                                                                                                                                                                                     
      7788 SCOTT                ANALYST                  7566 82/12/09       3000                    20                                                                                                                                                                                                     
      7839 KING                 PRESIDENT                     81/11/17       5000                    10                                                                                                                                                                                                     
      7844 TURNER               SALESMAN                 7698 81/09/08       1500          0         30                                                                                                                                                                                                     
      7876 ADAMS                CLERK                    7788 83/01/12       1100                    20                                                                                                                                                                                                     
      7900 JAMES                CLERK                    7698 81/12/03        950                    30                                                                                                                                                                                                     
      7902 FORD                 ANALYST                  7566 81/12/03       3000                    20                                                                                                                                                                                                     
      7934 MILLER               CLERK                    7782 82/01/23       1300                    10                                                                                                                                                                                                     

14 rows selected.

SQL> -- 부서정보 테이블 dept
SQL> -- 전체부서 레코드 조회
SQL> select * from dept;

    DEPTNO DNAME                        LOC                                                                                                                                                                                                                                                                 
---------- ---------------------------- --------------------------                                                                                                                                                                                                                                          
        10 ACCOUNTING                   NEW YORK                                                                                                                                                                                                                                                            
        20 RESEARCH                     DALLAS                                                                                                                                                                                                                                                              
        30 SALES                        CHICAGO                                                                                                                                                                                                                                                             
        40 OPERATIONS                   BOSTON                                                                                                                                                                                                                                                              

SQL> discon
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - Production
SQL> conn system/admin1004
Connected.
SQL> 
SQL> -- 사용자계정잠금해제 : hr 계정
SQL> -- alter user 아이디 account unlock
SQL> alter user hr account unlock;

User altered.

SQL> -- 계정암호 변경
SQL> alter user hr identified by tiger;

User altered.

SQL> discon;
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - Production
SQL> conn hr/tiger
Connected.
SQL> select * from tab;

TNAME                                                        TABTYPE         CLUSTERID                                                                                                                                                                                                                      
------------------------------------------------------------ -------------- ----------                                                                                                                                                                                                                      
COUNTRIES                                                    TABLE                                                                                                                                                                                                                                          
DEPARTMENTS                                                  TABLE                                                                                                                                                                                                                                          
EMPLOYEES                                                    TABLE                                                                                                                                                                                                                                          
EMP_DETAILS_VIEW                                             VIEW                                                                                                                                                                                                                                           
JOBS                                                         TABLE                                                                                                                                                                                                                                          
JOB_HISTORY                                                  TABLE                                                                                                                                                                                                                                          
LOCATIONS                                                    TABLE                                                                                                                                                                                                                                          
REGIONS                                                      TABLE                                                                                                                                                                                                                                          

8 rows selected.

SQL> -- hr 계정의 전체 직원정보 테이블 : employees
SQL> select * from employees;

EMPLOYEE_ID FIRST_NAME                               LAST_NAME                                          EMAIL                                              PHONE_NUMBER                             HIRE_DAT JOB_ID                   SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                        
----------- ---------------------------------------- -------------------------------------------------- -------------------------------------------------- ---------------------------------------- -------- -------------------- ---------- -------------- ---------- -------------                        
        100 Steven                                   King                                               SKING                                              515.123.4567                             03/06/17 AD_PRES                   24000                                      90                        
        101 Neena                                    Kochhar                                            NKOCHHAR                                           515.123.4568                             05/09/21 AD_VP                     17000                       100            90                        
        102 Lex                                      De Haan                                            LDEHAAN                                            515.123.4569                             01/01/13 AD_VP                     17000                       100            90                        
        103 Alexander                                Hunold                                             AHUNOLD                                            590.423.4567                             06/01/03 IT_PROG                    9000                       102            60                        
        104 Bruce                                    Ernst                                              BERNST                                             590.423.4568                             07/05/21 IT_PROG                    6000                       103            60                        
        105 David                                    Austin                                             DAUSTIN                                            590.423.4569                             05/06/25 IT_PROG                    4800                       103            60                        
        106 Valli                                    Pataballa                                          VPATABAL                                           590.423.4560                             06/02/05 IT_PROG                    4800                       103            60                        
        107 Diana                                    Lorentz                                            DLORENTZ                                           590.423.5567                             07/02/07 IT_PROG                    4200                       103            60                        
        108 Nancy                                    Greenberg                                          NGREENBE                                           515.124.4569                             02/08/17 FI_MGR                    12008                       101           100                        
        109 Daniel                                   Faviet                                             DFAVIET                                            515.124.4169                             02/08/16 FI_ACCOUNT                 9000                       108           100                        
        110 John                                     Chen                                               JCHEN                                              515.124.4269                             05/09/28 FI_ACCOUNT                 8200                       108           100                        
        111 Ismael                                   Sciarra                                            ISCIARRA                                           515.124.4369                             05/09/30 FI_ACCOUNT                 7700                       108           100                        
        112 Jose Manuel                              Urman                                              JMURMAN                                            515.124.4469                             06/03/07 FI_ACCOUNT                 7800                       108           100                        
        113 Luis                                     Popp                                               LPOPP                                              515.124.4567                             07/12/07 FI_ACCOUNT                 6900                       108           100                        
        114 Den                                      Raphaely                                           DRAPHEAL                                           515.127.4561                             02/12/07 PU_MAN                    11000                       100            30                        
        115 Alexander                                Khoo                                               AKHOO                                              515.127.4562                             03/05/18 PU_CLERK                   3100                       114            30                        
        116 Shelli                                   Baida                                              SBAIDA                                             515.127.4563                             05/12/24 PU_CLERK                   2900                       114            30                        
        117 Sigal                                    Tobias                                             STOBIAS                                            515.127.4564                             05/07/24 PU_CLERK                   2800                       114            30                        
        118 Guy                                      Himuro                                             GHIMURO                                            515.127.4565                             06/11/15 PU_CLERK                   2600                       114            30                        
        119 Karen                                    Colmenares                                         KCOLMENA                                           515.127.4566                             07/08/10 PU_CLERK                   2500                       114            30                        
        120 Matthew                                  Weiss                                              MWEISS                                             650.123.1234                             04/07/18 ST_MAN                     8000                       100            50                        
        121 Adam                                     Fripp                                              AFRIPP                                             650.123.2234                             05/04/10 ST_MAN                     8200                       100            50                        
        122 Payam                                    Kaufling                                           PKAUFLIN                                           650.123.3234                             03/05/01 ST_MAN                     7900                       100            50                        
        123 Shanta                                   Vollman                                            SVOLLMAN                                           650.123.4234                             05/10/10 ST_MAN                     6500                       100            50                        
        124 Kevin                                    Mourgos                                            KMOURGOS                                           650.123.5234                             07/11/16 ST_MAN                     5800                       100            50                        
        125 Julia                                    Nayer                                              JNAYER                                             650.124.1214                             05/07/16 ST_CLERK                   3200                       120            50                        
        126 Irene                                    Mikkilineni                                        IMIKKILI                                           650.124.1224                             06/09/28 ST_CLERK                   2700                       120            50                        
        127 James                                    Landry                                             JLANDRY                                            650.124.1334                             07/01/14 ST_CLERK                   2400                       120            50                        
        128 Steven                                   Markle                                             SMARKLE                                            650.124.1434                             08/03/08 ST_CLERK                   2200                       120            50                        
        129 Laura                                    Bissot                                             LBISSOT                                            650.124.5234                             05/08/20 ST_CLERK                   3300                       121            50                        
        130 Mozhe                                    Atkinson                                           MATKINSO                                           650.124.6234                             05/10/30 ST_CLERK                   2800                       121            50                        
        131 James                                    Marlow                                             JAMRLOW                                            650.124.7234                             05/02/16 ST_CLERK                   2500                       121            50                        
        132 TJ                                       Olson                                              TJOLSON                                            650.124.8234                             07/04/10 ST_CLERK                   2100                       121            50                        
        133 Jason                                    Mallin                                             JMALLIN                                            650.127.1934                             04/06/14 ST_CLERK                   3300                       122            50                        
        134 Michael                                  Rogers                                             MROGERS                                            650.127.1834                             06/08/26 ST_CLERK                   2900                       122            50                        
        135 Ki                                       Gee                                                KGEE                                               650.127.1734                             07/12/12 ST_CLERK                   2400                       122            50                        
        136 Hazel                                    Philtanker                                         HPHILTAN                                           650.127.1634                             08/02/06 ST_CLERK                   2200                       122            50                        
        137 Renske                                   Ladwig                                             RLADWIG                                            650.121.1234                             03/07/14 ST_CLERK                   3600                       123            50                        
        138 Stephen                                  Stiles                                             SSTILES                                            650.121.2034                             05/10/26 ST_CLERK                   3200                       123            50                        
        139 John                                     Seo                                                JSEO                                               650.121.2019                             06/02/12 ST_CLERK                   2700                       123            50                        
        140 Joshua                                   Patel                                              JPATEL                                             650.121.1834                             06/04/06 ST_CLERK                   2500                       123            50                        
        141 Trenna                                   Rajs                                               TRAJS                                              650.121.8009                             03/10/17 ST_CLERK                   3500                       124            50                        
        142 Curtis                                   Davies                                             CDAVIES                                            650.121.2994                             05/01/29 ST_CLERK                   3100                       124            50                        
        143 Randall                                  Matos                                              RMATOS                                             650.121.2874                             06/03/15 ST_CLERK                   2600                       124            50                        
        144 Peter                                    Vargas                                             PVARGAS                                            650.121.2004                             06/07/09 ST_CLERK                   2500                       124            50                        
        145 John                                     Russell                                            JRUSSEL                                            011.44.1344.429268                       04/10/01 SA_MAN                    14000             .4        100            80                        
        146 Karen                                    Partners                                           KPARTNER                                           011.44.1344.467268                       05/01/05 SA_MAN                    13500             .3        100            80                        
        147 Alberto                                  Errazuriz                                          AERRAZUR                                           011.44.1344.429278                       05/03/10 SA_MAN                    12000             .3        100            80                        
        148 Gerald                                   Cambrault                                          GCAMBRAU                                           011.44.1344.619268                       07/10/15 SA_MAN                    11000             .3        100            80                        
        149 Eleni                                    Zlotkey                                            EZLOTKEY                                           011.44.1344.429018                       08/01/29 SA_MAN                    10500             .2        100            80                        
        150 Peter                                    Tucker                                             PTUCKER                                            011.44.1344.129268                       05/01/30 SA_REP                    10000             .3        145            80                        
        151 David                                    Bernstein                                          DBERNSTE                                           011.44.1344.345268                       05/03/24 SA_REP                     9500            .25        145            80                        
        152 Peter                                    Hall                                               PHALL                                              011.44.1344.478968                       05/08/20 SA_REP                     9000            .25        145            80                        
        153 Christopher                              Olsen                                              COLSEN                                             011.44.1344.498718                       06/03/30 SA_REP                     8000             .2        145            80                        
        154 Nanette                                  Cambrault                                          NCAMBRAU                                           011.44.1344.987668                       06/12/09 SA_REP                     7500             .2        145            80                        
        155 Oliver                                   Tuvault                                            OTUVAULT                                           011.44.1344.486508                       07/11/23 SA_REP                     7000            .15        145            80                        
        156 Janette                                  King                                               JKING                                              011.44.1345.429268                       04/01/30 SA_REP                    10000            .35        146            80                        
        157 Patrick                                  Sully                                              PSULLY                                             011.44.1345.929268                       04/03/04 SA_REP                     9500            .35        146            80                        
        158 Allan                                    McEwen                                             AMCEWEN                                            011.44.1345.829268                       04/08/01 SA_REP                     9000            .35        146            80                        
        159 Lindsey                                  Smith                                              LSMITH                                             011.44.1345.729268                       05/03/10 SA_REP                     8000             .3        146            80                        
        160 Louise                                   Doran                                              LDORAN                                             011.44.1345.629268                       05/12/15 SA_REP                     7500             .3        146            80                        
        161 Sarath                                   Sewall                                             SSEWALL                                            011.44.1345.529268                       06/11/03 SA_REP                     7000            .25        146            80                        
        162 Clara                                    Vishney                                            CVISHNEY                                           011.44.1346.129268                       05/11/11 SA_REP                    10500            .25        147            80                        
        163 Danielle                                 Greene                                             DGREENE                                            011.44.1346.229268                       07/03/19 SA_REP                     9500            .15        147            80                        
        164 Mattea                                   Marvins                                            MMARVINS                                           011.44.1346.329268                       08/01/24 SA_REP                     7200             .1        147            80                        
        165 David                                    Lee                                                DLEE                                               011.44.1346.529268                       08/02/23 SA_REP                     6800             .1        147            80                        
        166 Sundar                                   Ande                                               SANDE                                              011.44.1346.629268                       08/03/24 SA_REP                     6400             .1        147            80                        
        167 Amit                                     Banda                                              ABANDA                                             011.44.1346.729268                       08/04/21 SA_REP                     6200             .1        147            80                        
        168 Lisa                                     Ozer                                               LOZER                                              011.44.1343.929268                       05/03/11 SA_REP                    11500            .25        148            80                        
        169 Harrison                                 Bloom                                              HBLOOM                                             011.44.1343.829268                       06/03/23 SA_REP                    10000             .2        148            80                        
        170 Tayler                                   Fox                                                TFOX                                               011.44.1343.729268                       06/01/24 SA_REP                     9600             .2        148            80                        
        171 William                                  Smith                                              WSMITH                                             011.44.1343.629268                       07/02/23 SA_REP                     7400            .15        148            80                        
        172 Elizabeth                                Bates                                              EBATES                                             011.44.1343.529268                       07/03/24 SA_REP                     7300            .15        148            80                        
        173 Sundita                                  Kumar                                              SKUMAR                                             011.44.1343.329268                       08/04/21 SA_REP                     6100             .1        148            80                        
        174 Ellen                                    Abel                                               EABEL                                              011.44.1644.429267                       04/05/11 SA_REP                    11000             .3        149            80                        
        175 Alyssa                                   Hutton                                             AHUTTON                                            011.44.1644.429266                       05/03/19 SA_REP                     8800            .25        149            80                        
        176 Jonathon                                 Taylor                                             JTAYLOR                                            011.44.1644.429265                       06/03/24 SA_REP                     8600             .2        149            80                        
        177 Jack                                     Livingston                                         JLIVINGS                                           011.44.1644.429264                       06/04/23 SA_REP                     8400             .2        149            80                        
        178 Kimberely                                Grant                                              KGRANT                                             011.44.1644.429263                       07/05/24 SA_REP                     7000            .15        149                                      
        179 Charles                                  Johnson                                            CJOHNSON                                           011.44.1644.429262                       08/01/04 SA_REP                     6200             .1        149            80                        
        180 Winston                                  Taylor                                             WTAYLOR                                            650.507.9876                             06/01/24 SH_CLERK                   3200                       120            50                        
        181 Jean                                     Fleaur                                             JFLEAUR                                            650.507.9877                             06/02/23 SH_CLERK                   3100                       120            50                        
        182 Martha                                   Sullivan                                           MSULLIVA                                           650.507.9878                             07/06/21 SH_CLERK                   2500                       120            50                        
        183 Girard                                   Geoni                                              GGEONI                                             650.507.9879                             08/02/03 SH_CLERK                   2800                       120            50                        
        184 Nandita                                  Sarchand                                           NSARCHAN                                           650.509.1876                             04/01/27 SH_CLERK                   4200                       121            50                        
        185 Alexis                                   Bull                                               ABULL                                              650.509.2876                             05/02/20 SH_CLERK                   4100                       121            50                        
        186 Julia                                    Dellinger                                          JDELLING                                           650.509.3876                             06/06/24 SH_CLERK                   3400                       121            50                        
        187 Anthony                                  Cabrio                                             ACABRIO                                            650.509.4876                             07/02/07 SH_CLERK                   3000                       121            50                        
        188 Kelly                                    Chung                                              KCHUNG                                             650.505.1876                             05/06/14 SH_CLERK                   3800                       122            50                        
        189 Jennifer                                 Dilly                                              JDILLY                                             650.505.2876                             05/08/13 SH_CLERK                   3600                       122            50                        
        190 Timothy                                  Gates                                              TGATES                                             650.505.3876                             06/07/11 SH_CLERK                   2900                       122            50                        
        191 Randall                                  Perkins                                            RPERKINS                                           650.505.4876                             07/12/19 SH_CLERK                   2500                       122            50                        
        192 Sarah                                    Bell                                               SBELL                                              650.501.1876                             04/02/04 SH_CLERK                   4000                       123            50                        
        193 Britney                                  Everett                                            BEVERETT                                           650.501.2876                             05/03/03 SH_CLERK                   3900                       123            50                        
        194 Samuel                                   McCain                                             SMCCAIN                                            650.501.3876                             06/07/01 SH_CLERK                   3200                       123            50                        
        195 Vance                                    Jones                                              VJONES                                             650.501.4876                             07/03/17 SH_CLERK                   2800                       123            50                        
        196 Alana                                    Walsh                                              AWALSH                                             650.507.9811                             06/04/24 SH_CLERK                   3100                       124            50                        
        197 Kevin                                    Feeney                                             KFEENEY                                            650.507.9822                             06/05/23 SH_CLERK                   3000                       124            50                        
        198 Donald                                   OConnell                                           DOCONNEL                                           650.507.9833                             07/06/21 SH_CLERK                   2600                       124            50                        
        199 Douglas                                  Grant                                              DGRANT                                             650.507.9844                             08/01/13 SH_CLERK                   2600                       124            50                        
        200 Jennifer                                 Whalen                                             JWHALEN                                            515.123.4444                             03/09/17 AD_ASST                    4400                       101            10                        
        201 Michael                                  Hartstein                                          MHARTSTE                                           515.123.5555                             04/02/17 MK_MAN                    13000                       100            20                        
        202 Pat                                      Fay                                                PFAY                                               603.123.6666                             05/08/17 MK_REP                     6000                       201            20                        
        203 Susan                                    Mavris                                             SMAVRIS                                            515.123.7777                             02/06/07 HR_REP                     6500                       101            40                        
        204 Hermann                                  Baer                                               HBAER                                              515.123.8888                             02/06/07 PR_REP                    10000                       101            70                        
        205 Shelley                                  Higgins                                            SHIGGINS                                           515.123.8080                             02/06/07 AC_MGR                    12008                       101           110                        
        206 William                                  Gietz                                              WGIETZ                                             515.123.8181                             02/06/07 AC_ACCOUNT                 8300                       205           110                        

107 rows selected.

SQL> cl scr

SQL> -- hr 계정의 전체 부서정보 테이블 : departments
SQL> select * from departments;

DEPARTMENT_ID DEPARTMENT_NAME                                              MANAGER_ID LOCATION_ID                                                                                                                                                                                                           
------------- ------------------------------------------------------------ ---------- -----------                                                                                                                                                                                                           
           10 Administration                                                      200        1700                                                                                                                                                                                                           
           20 Marketing                                                           201        1800                                                                                                                                                                                                           
           30 Purchasing                                                          114        1700                                                                                                                                                                                                           
           40 Human Resources                                                     203        2400                                                                                                                                                                                                           
           50 Shipping                                                            121        1500                                                                                                                                                                                                           
           60 IT                                                                  103        1400                                                                                                                                                                                                           
           70 Public Relations                                                    204        2700                                                                                                                                                                                                           
           80 Sales                                                               145        2500                                                                                                                                                                                                           
           90 Executive                                                           100        1700                                                                                                                                                                                                           
          100 Finance                                                             108        1700                                                                                                                                                                                                           
          110 Accounting                                                          205        1700                                                                                                                                                                                                           
          120 Treasury                                                                       1700                                                                                                                                                                                                           
          130 Corporate Tax                                                                  1700                                                                                                                                                                                                           
          140 Control And Credit                                                             1700                                                                                                                                                                                                           
          150 Shareholder Services                                                           1700                                                                                                                                                                                                           
          160 Benefits                                                                       1700                                                                                                                                                                                                           
          170 Manufacturing                                                                  1700                                                                                                                                                                                                           
          180 Construction                                                                   1700                                                                                                                                                                                                           
          190 Contracting                                                                    1700                                                                                                                                                                                                           
          200 Operations                                                                     1700                                                                                                                                                                                                           
          210 IT Support                                                                     1700                                                                                                                                                                                                           
          220 NOC                                                                            1700                                                                                                                                                                                                           
          230 IT Helpdesk                                                                    1700                                                                                                                                                                                                           
          240 Government Sales                                                               1700                                                                                                                                                                                                           
          250 Retail Sales                                                                   1700                                                                                                                                                                                                           
          260 Recruiting                                                                     1700                                                                                                                                                                                                           
          270 Payroll                                                                        1700                                                                                                                                                                                                           

27 rows selected.

SQL> exit;
