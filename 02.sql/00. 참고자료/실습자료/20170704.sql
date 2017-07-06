SQL> --한줄주석
SQL> /* 여러줄 주석*/
SQL> --sql> cl scr 화면 지우기
SQL> cl scr

SQL> --sqlplus 환경 설정
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
SQL> --sqlplus 라인사이즈 조회
SQL> show linesize
linesize 80
SQL> --sqlplus 페이지사이즈
SQL> show pagesize
pagesize 14
SQL> --라인사이즈 변경
SQL> set linesize 300
SQL> --페이지 사이즈 변경
SQL> set pagesize 300
SQL> show pagesize, linesize
pagesize 300
SP2-0158: unknown SHOW option ","
linesize 300
SQL> show pagesize linesize
pagesize 300
linesize 300
SQL> --페이지, 라인 사이즈 동시 조회
SQL> show pagesize linesize
pagesize 300
linesize 300
SQL> -- select All table
SQL> select * from tab;

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

SQL> --sql 끝은 ;으로 끝남
SQL> select
  2  	*
  3  	from
  4  	tab;

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

SQL> -- system 관리자 계정에서 사용자 계정 생성
SQL> -- id: scott/ password: tiger
SQL> -- CREATE [USER_ID] IDENTIFIED BY [USER_PASSWORD];
SQL> create user scott identified by tiger;
create scott identified by tiger
       *
ERROR at line 1:
ORA-00901: invalid CREATE command


SQL> create user scott identified by tiger;

User created.

SQL> spool
currently spooling to 20170704.sql
SQL> -- scott 사용자 권한
SQL> grant connect, resource, create view to scott;

Grant succeeded.

SQL> discon
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - Production
SQL> who user
SP2-0042: unknown command "who user" - rest of line ignored.
SQL> show user
USER is ""
SQL> connect scott/tiger
Connected.
SQL> show user
USER is "SCOTT"
SQL> discon
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - Production
SQL> conn scott/tiger
Connected.
SQL> show user
USER is "SCOTT"
SQL> show spool
spool ON
SQL> -- scott 계정의 모든 테이블 목록 조회
SQL> select * from tab;

no rows selected

SQL> -- sql 스크립트 파일 수행
SQL> -- @스크립트파일.sql
SQL> -- start 스크립트파일.sql
SQL>
SQL>
SQL> -- scott 파일 스크립트 실행
SQL> @C:\practice\02.sql\demo_scott\scott.sql
GRANT CONNECT,RESOURCE,UNLIMITED TABLESPACE TO SCOTT IDENTIFIED BY TIGER
                                               *
ERROR at line 1:
ORA-01749: you may not GRANT/REVOKE privileges to/from yourself


ALTER USER SCOTT DEFAULT TABLESPACE USERS
*
ERROR at line 1:
ORA-01031: insufficient privileges


ALTER USER SCOTT TEMPORARY TABLESPACE TEMP
*
ERROR at line 1:
ORA-01031: insufficient privileges


ERROR:
ORA-01017: invalid username/password; logon denied


Warning: You are no longer connected to ORACLE.
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SQL> select * from tab;
SP2-0640: Not connected
SQL> show user
USER is ""
SQL> conn scott/tiger
Connected.
SQL> @C:\practice\02.sql\demo_scott\scott.sql
SQL> Rem Copyright (c) 1990 by Oracle Corporation
SQL> Rem NAME
SQL> REM    UTLSAMPL.SQL
SQL> Rem  FUNCTION
SQL> Rem  NOTES
SQL> Rem  MODIFIED
SQL> Rem     gdudey	06/28/95 -  Modified for desktop seed database
SQL> Rem     glumpkin	10/21/92 -  Renamed from SQLBLD.SQL
SQL> Rem     blinden   07/27/92 -  Added primary and foreign keys to EMP and DEPT
SQL> Rem     rlim	04/29/91 -	   change char to varchar2
SQL> Rem     mmoore	04/08/91 -	   use unlimited tablespace priv
SQL> Rem     pritto	04/04/91 -	   change SYSDATE to 13-JUL-87
SQL> Rem   Mendels    12/07/90 - bug 30123;add to_date calls so language independent
SQL> Rem
SQL> rem
SQL> rem $Header: utlsampl.sql 7020100.1 94/09/23 22:14:24 cli Generic<base> $ sqlbld.sql
SQL> rem
SQL> SET TERMOUT OFF
SQL> SET ECHO OFF
GRANT CONNECT,RESOURCE,UNLIMITED TABLESPACE TO SCOTT IDENTIFIED BY TIGER
                                               *
ERROR at line 1:
ORA-01749: you may not GRANT/REVOKE privileges to/from yourself


ALTER USER SCOTT DEFAULT TABLESPACE USERS
*
ERROR at line 1:
ORA-01031: insufficient privileges


ALTER USER SCOTT TEMPORARY TABLESPACE TEMP
*
ERROR at line 1:
ORA-01031: insufficient privileges


ERROR:
ORA-01017: invalid username/password; logon denied


Warning: You are no longer connected to ORACLE.
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SP2-0640: Not connected
SQL> select * from tab;
SP2-0640: Not connected
SQL> show user
USER is ""
SQL> conn scott/tiger
Connected.
SQL> show user
USER is "SCOTT"
SQL> select * from tab;

no rows selected

SQL> @C:\practice\02.sql\demo_scott\scott.sql
SQL> Rem Copyright (c) 1990 by Oracle Corporation
SQL> Rem NAME
SQL> REM    UTLSAMPL.SQL
SQL> Rem  FUNCTION
SQL> Rem  NOTES
SQL> Rem  MODIFIED
SQL> Rem     gdudey	06/28/95 -  Modified for desktop seed database
SQL> Rem     glumpkin	10/21/92 -  Renamed from SQLBLD.SQL
SQL> Rem     blinden   07/27/92 -  Added primary and foreign keys to EMP and DEPT
SQL> Rem     rlim	04/29/91 -	   change char to varchar2
SQL> Rem     mmoore	04/08/91 -	   use unlimited tablespace priv
SQL> Rem     pritto	04/04/91 -	   change SYSDATE to 13-JUL-87
SQL> Rem   Mendels    12/07/90 - bug 30123;add to_date calls so language independent
SQL> Rem
SQL> rem
SQL> rem $Header: utlsampl.sql 7020100.1 94/09/23 22:14:24 cli Generic<base> $ sqlbld.sql
SQL> rem
SQL> SET TERMOUT OFF
SQL> SET ECHO OFF

Table created.

DROP TABLE EMP
           *
ERROR at line 1:
ORA-00942: table or view does not exist



Table created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.

(7788,'SCOTT','ANALYST',7566,to_date('13-JUL-87')-85,3000,NULL,20)
                                     *
ERROR at line 2:
ORA-01858: a non-numeric character was found where a numeric was expected



1 row created.


1 row created.

(7876,'ADAMS','CLERK',7788,to_date('13-JUL-87')-51,1100,NULL,20)
                                   *
ERROR at line 2:
ORA-01858: a non-numeric character was found where a numeric was expected



1 row created.


1 row created.


1 row created.

DROP TABLE BONUS
           *
ERROR at line 1:
ORA-00942: table or view does not exist



Table created.

DROP TABLE SALGRADE
           *
ERROR at line 1:
ORA-00942: table or view does not exist



Table created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


Commit complete.

SQL> show user
USER is "SCOTT"
SQL> select * from tab;

TNAME                                                        TABTYPE         CLUSTERID
------------------------------------------------------------ -------------- ----------                                                                                                                                                                                                                   BONUS                                                        TABLE
DEPT                                                         TABLE
EMP                                                          TABLE
SALGRADE                                                     TABLE

SQL> @C:\practice\02.sql\demo_scott\scott.sql
SQL> Rem Copyright (c) 1990 by Oracle Corporation
SQL> Rem NAME
SQL> REM    UTLSAMPL.SQL
SQL> Rem  FUNCTION
SQL> Rem  NOTES
SQL> Rem  MODIFIED
SQL> Rem     gdudey	06/28/95 -  Modified for desktop seed database
SQL> Rem     glumpkin	10/21/92 -  Renamed from SQLBLD.SQL
SQL> Rem     blinden   07/27/92 -  Added primary and foreign keys to EMP and DEPT
SQL> Rem     rlim	04/29/91 -	   change char to varchar2
SQL> Rem     mmoore	04/08/91 -	   use unlimited tablespace priv
SQL> Rem     pritto	04/04/91 -	   change SYSDATE to 13-JUL-87
SQL> Rem   Mendels    12/07/90 - bug 30123;add to_date calls so language independent
SQL> Rem
SQL> rem
SQL> rem $Header: utlsampl.sql 7020100.1 94/09/23 22:14:24 cli Generic<base> $ sqlbld.sql
SQL> rem
SQL> SET TERMOUT OFF
SQL> SET ECHO OFF
CREATE TABLE DEPT
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object



Table dropped.


Table created.

INSERT INTO DEPT VALUES
*
ERROR at line 1:
ORA-00001: unique constraint (SCOTT.PK_DEPT) violated


INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS')
*
ERROR at line 1:
ORA-00001: unique constraint (SCOTT.PK_DEPT) violated


INSERT INTO DEPT VALUES
*
ERROR at line 1:
ORA-00001: unique constraint (SCOTT.PK_DEPT) violated


INSERT INTO DEPT VALUES
*
ERROR at line 1:
ORA-00001: unique constraint (SCOTT.PK_DEPT) violated



1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.

(7788,'SCOTT','ANALYST',7566,to_date('13-JUL-87')-85,3000,NULL,20)
                                     *
ERROR at line 2:
ORA-01858: a non-numeric character was found where a numeric was expected



1 row created.


1 row created.

(7876,'ADAMS','CLERK',7788,to_date('13-JUL-87')-51,1100,NULL,20)
                                   *
ERROR at line 2:
ORA-01858: a non-numeric character was found where a numeric was expected



1 row created.


1 row created.


1 row created.


Table dropped.


Table created.


Table dropped.


Table created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


Commit complete.

SQL> select * from tabl;
select * from tabl
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select * from tab;

TNAME                                                        TABTYPE         CLUSTERID
------------------------------------------------------------ -------------- ----------
BONUS                                                        TABLE
DEPT                                                         TABLE
EMP                                                          TABLE
SALGRADE                                                     TABLE

SQL> conn scott/tiger
Connected.
SQL> show user
USER is "SCOTT"
SQL> select * from tabl;
select * from tabl
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select * from tabl;s
  2  ;
select * from tabl;s
                  *
ERROR at line 1:
ORA-00911: invalid character


SQL> select * from tab;

TNAME                                                        TABTYPE         CLUSTERID
------------------------------------------------------------ -------------- ----------
BONUS                                                        TABLE
DEPT                                                         TABLE
EMP                                                          TABLE
SALGRADE                                                     TABLE

SQL> select * from bonus
  2  ;

no rows selected

SQL> select * from dept;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON

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
      7839 KING                 PRESIDENT                     81/11/17       5000                    10
      7844 TURNER               SALESMAN                 7698 81/09/08       1500          0         30
      7900 JAMES                CLERK                    7698 81/12/03        950                    30
      7902 FORD                 ANALYST                  7566 81/12/03       3000                    20
      7934 MILLER               CLERK                    7782 82/01/23       1300                    10

12 rows selected.

SQL> select * from salary;
select * from salary
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select * from salgrade;

     GRADE      LOSAL      HISAL
---------- ---------- ----------
         1        700       1200
         2       1201       1400
         3       1401       2000
         4       2001       3000
         5       3001       9999

SQL> show user
USER is "SCOTT"
SQL> @C:\practice\90.down_apps\demo_scott\scott_10g_11g.sql
SQL> --
SQL> -- Copyright (c) Oracle Corporation 1988, 2000.  All Rights Reserved.
SQL> --
SQL> -- NAME
SQL> --   demo_table.sql
SQL> --
SQL> -- DESCRIPTION
SQL> --   This script creates the SQL*Plus demonstration tables in the
SQL> --   current schema.  It should be STARTed by each user wishing to
SQL> --   access the tables.  To remove the tables use the demodrop.sql
SQL> --   script.
SQL> --
SQL> --  USAGE
SQL> --    From within SQL*Plus, enter:
SQL> --        START demo_table.sql
SQL>
SQL> SET TERMOUT ON
SQL> PROMPT Building demonstration tables.  Please wait.
Building demonstration tables.  Please wait.
SQL> SET TERMOUT OFF
SQL>
SQL> DROP TABLE EMP;

Table dropped.

SQL> DROP TABLE DEPT;

Table dropped.

SQL> DROP TABLE BONUS;

Table dropped.

SQL> DROP TABLE SALGRADE;

Table dropped.

SQL> DROP TABLE DUMMY;
DROP TABLE DUMMY
           *
ERROR at line 1:
ORA-00942: table or view does not exist


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
SQL> select * from tabl;
select * from tabl
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select * from tab;

TNAME                                                        TABTYPE         CLUSTERID
------------------------------------------------------------ -------------- ----------
BONUS                                                        TABLE
DEPT                                                         TABLE
DUMMY                                                        TABLE
EMP                                                          TABLE
SALGRADE                                                     TABLE

SQL> select * from (select * from tab);

TNAME                                                        TABTYPE         CLUSTERID
------------------------------------------------------------ -------------- ----------
BONUS                                                        TABLE
DEPT                                                         TABLE
DUMMY                                                        TABLE
EMP                                                          TABLE
SALGRADE                                                     TABLE

SQL> select * from (select * from tab);

TNAME                                                        TABTYPE         CLUSTERID
------------------------------------------------------------ -------------- ----------
BONUS                                                        TABLE
DEPT                                                         TABLE
DUMMY                                                        TABLE
EMP                                                          TABLE
SALGRADE                                                     TABLE

SQL> desc bonus;
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 ENAME                                                                                                                                                                                  VARCHAR2(10)
 JOB                                                                                                                                                                                    VARCHAR2(9)
 SAL                                                                                                                                                                                    NUMBER
 COMM                                                                                                                                                                                   NUMBER

SQL> select count(*) bonus;
select count(*) bonus
                    *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> select count(*) from bonus;

  COUNT(*)
----------
         0

SQL> select count(*) from emp;

  COUNT(*)
----------
        14

SQL> select count(*) from salgrade;

  COUNT(*)
----------
         5

SQL> select count(*) from dummy;

  COUNT(*)
----------
         1

SQL> select * from bonus;

no rows selected

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

SQL> select * from salgrade;

     GRADE      LOSAL      HISAL
---------- ---------- ----------
         1        700       1200
         2       1201       1400
         3       1401       2000
         4       2001       3000
         5       3001       9999

SQL> select * from dummy;

     DUMMY
----------
         0

SQL> select * from dept;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON

SQL> -- 부서 정보 테이블 dept
SQL> -- 부서 정보 전체 조회
SQL> select * from dept;

    DEPTNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON

SQL> disconn
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - Production
SQL> conn system/admin1004
Connected.
SQL> show user;
USER is "SYSTEM"
SQL> -- 사용자 계정 잠금 해제: hr 계정 해제
SQL> -- ALTER USER [user_id] account (un)lock;
SQL> alter user hr
  2  	account unlock;

User altered.

SQL> -- 계정 암호 변경
SQL> -- ALTER USER [user_id] IDENTIFIED BY [user_password];
SQL> alter user hr identified by tiger;

User altered.

SQL> conn hr/tiger;
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

SQL> -- hr 계정의 전체 직원 정보 조회: employees
SQL> select count(*) from employees;

  COUNT(*)
----------
       107

SQL> select count(*) from departments;

  COUNT(*)
----------
        27

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

SQL> desc employees;
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 EMPLOYEE_ID                                                                                                                                                                   NOT NULL NUMBER(6)
 FIRST_NAME                                                                                                                                                                             VARCHAR2(20)
 LAST_NAME                                                                                                                                                                     NOT NULL VARCHAR2(25)
 EMAIL                                                                                                                                                                         NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                                                                                                                                                           VARCHAR2(20)
 HIRE_DATE                                                                                                                                                                     NOT NULL DATE
 JOB_ID                                                                                                                                                                        NOT NULL VARCHAR2(10)
 SALARY                                                                                                                                                                                 NUMBER(8,2)
 COMMISSION_PCT                                                                                                                                                                         NUMBER(2,2)
 MANAGER_ID                                                                                                                                                                             NUMBER(6)
 DEPARTMENT_ID                                                                                                                                                                          NUMBER(4)

SQL> desc departments;
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 DEPARTMENT_ID                                                                                                                                                                 NOT NULL NUMBER(4)
 DEPARTMENT_NAME                                                                                                                                                               NOT NULL VARCHAR2(30)
 MANAGER_ID                                                                                                                                                                             NUMBER(6)
 LOCATION_ID                                                                                                                                                                            NUMBER(4)

SQL> select first_name, last_name department_name from employees, departments where departments.manager_id = employees.employees_id
  2  ;
select first_name, last_name department_name from employees, departments where departments.manager_id = employees.employees_id
                                                                                                        *
ERROR at line 1:
ORA-00904: "EMPLOYEES"."EMPLOYEES_ID": invalid identifier


SQL> desc employees;
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 EMPLOYEE_ID                                                                                                                                                                   NOT NULL NUMBER(6)
 FIRST_NAME                                                                                                                                                                             VARCHAR2(20)
 LAST_NAME                                                                                                                                                                     NOT NULL VARCHAR2(25)
 EMAIL                                                                                                                                                                         NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                                                                                                                                                           VARCHAR2(20)
 HIRE_DATE                                                                                                                                                                     NOT NULL DATE
 JOB_ID                                                                                                                                                                        NOT NULL VARCHAR2(10)
 SALARY                                                                                                                                                                                 NUMBER(8,2)
 COMMISSION_PCT                                                                                                                                                                         NUMBER(2,2)
 MANAGER_ID                                                                                                                                                                             NUMBER(6)
 DEPARTMENT_ID                                                                                                                                                                          NUMBER(4)

SQL> desc employees;
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 EMPLOYEE_ID                                                                                                                                                                   NOT NULL NUMBER(6)
 FIRST_NAME                                                                                                                                                                             VARCHAR2(20)
 LAST_NAME                                                                                                                                                                     NOT NULL VARCHAR2(25)
 EMAIL                                                                                                                                                                         NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                                                                                                                                                           VARCHAR2(20)
 HIRE_DATE                                                                                                                                                                     NOT NULL DATE
 JOB_ID                                                                                                                                                                        NOT NULL VARCHAR2(10)
 SALARY                                                                                                                                                                                 NUMBER(8,2)
 COMMISSION_PCT                                                                                                                                                                         NUMBER(2,2)
 MANAGER_ID                                                                                                                                                                             NUMBER(6)
 DEPARTMENT_ID                                                                                                                                                                          NUMBER(4)

SQL> desc departments;
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 DEPARTMENT_ID                                                                                                                                                                 NOT NULL NUMBER(4)
 DEPARTMENT_NAME                                                                                                                                                               NOT NULL VARCHAR2(30)
 MANAGER_ID                                                                                                                                                                             NUMBER(6)
 LOCATION_ID                                                                                                                                                                            NUMBER(4)

SQL> exit
