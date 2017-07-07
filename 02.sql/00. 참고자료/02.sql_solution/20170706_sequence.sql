SQL> -- 현재 부서테이블의 부서번호에 사용하기 위한 시퀀스 객체 생성
SQL> -- 시작 50
SQL> -- 증감 10
SQL> -- 최대 90
SQL> 
SQL> create sequence seq_dept_deptno
  2  start with 50
  3  increment by 10
  4  maxvalue 90
  5  nocycle
  6  ;

Sequence created.

SQL> -- 시퀀스 발급 조회 : 시퀀스명.nextval
SQL> -- 현재 발급 시퀀스 번호 조회 : 시퀀스명.currval (발급후 조회)
SQL> 
SQL> select seq_dept_deptno.nextval from dual;

   NEXTVAL                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
        50                                                                                                                                                                                                                                                                                                  

SQL> select seq_dept_deptno.nextval from dual;

   NEXTVAL                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
        60                                                                                                                                                                                                                                                                                                  

SQL> -- 시퀀스 이용해서 부서 3개 추가 등록
SQL> insert into dept(deptno, dname) values(seq_dept_deptno.nextval, '개발팀');

1 row created.

SQL> insert into dept(deptno, dname) values(seq_dept_deptno.nextval, '개발팀2');

1 row created.

SQL> insert into dept values(seq_dept_deptno.nextval, '연구실', '제주도');

1 row created.

SQL> -- 부서 전체 조회
SQL> select * from dept;

    DEPTNO DNAME          LOC                                                                                                                                                                                                                                                                               
---------- -------------- -------------                                                                                                                                                                                                                                                                     
        10 ACCOUNTING     NEW YORK                                                                                                                                                                                                                                                                          
        20 RESEARCH       DALLAS                                                                                                                                                                                                                                                                            
        30 SALES          CHICAGO                                                                                                                                                                                                                                                                           
        40 OPERATIONS     BOSTON                                                                                                                                                                                                                                                                            
        70 개발팀                                                                                                                                                                                                                                                                                           
        80 개발팀2                                                                                                                                                                                                                                                                                          
        90 연구실         제주도                                                                                                                                                                                                                                                                            

7 rows selected.

SQL> 
SQL> -- 현재 부서중에서 부서번호가 가장큰 부서정보 조회
SQL> -- 최대값 : max()
SQL> select max(deptno) from dept;

MAX(DEPTNO)                                                                                                                                                                                                                                                                                                 
-----------                                                                                                                                                                                                                                                                                                 
         90                                                                                                                                                                                                                                                                                                 

SQL> select * from dept where deptno = (select max(deptno) from dept);

    DEPTNO DNAME          LOC                                                                                                                                                                                                                                                                               
---------- -------------- -------------                                                                                                                                                                                                                                                                     
        90 연구실         제주도                                                                                                                                                                                                                                                                            

SQL> -- 부서번호의 연속성을 보장하면서 레코드 추가 : max() 사용해서 부서 추가

SQL> insert into dept values(max(deptno) + 1, '경리팀', '부산광역시');
insert into dept values(max(deptno) + 1, '경리팀', '부산광역시')
                        *
ERROR at line 1:
ORA-00934: group function is not allowed here 
=>	그룹함수 사용불가
=>	sub-query 활용 해결

SQL> insert into dept
  2  values((select max(deptno) from dept) + 1, '경리팀', '부산광역시');

1 row created.

SQL> insert into dept
  2  values((select max(deptno) from dept) + 1, '경리팀', '부산광역시');

1 row created.

SQL> insert into dept
  2  values((select max(deptno) from dept) + 1, '경리팀', '부산광역시');

1 row created.

SQL> select * from dept;

    DEPTNO DNAME          LOC                                                                                                                                                                                                                                                                               
---------- -------------- -------------                                                                                                                                                                                                                                                                     
        10 ACCOUNTING     NEW YORK                                                                                                                                                                                                                                                                          
        20 RESEARCH       DALLAS                                                                                                                                                                                                                                                                            
        30 SALES          CHICAGO                                                                                                                                                                                                                                                                           
        40 OPERATIONS     BOSTON                                                                                                                                                                                                                                                                            
        70 개발팀                                                                                                                                                                                                                                                                                           
        80 개발팀2                                                                                                                                                                                                                                                                                          
        90 연구실         제주도                                                                                                                                                                                                                                                                            
        91 경리팀         부산광역시                                                                                                                                                                                                                                                                        
        92 경리팀         부산광역시                                                                                                                                                                                                                                                                        
        93 경리팀         부산광역시                                                                                                                                                                                                                                                                        

10 rows selected.

SQL> rollback;

Rollback complete.


SQL> select * from dept;

    DEPTNO DNAME          LOC                                                                                                                                                                                                                                                                               
---------- -------------- -------------                                                                                                                                                                                                                                                                     
        10 ACCOUNTING     NEW YORK                                                                                                                                                                                                                                                                          
        20 RESEARCH       DALLAS                                                                                                                                                                                                                                                                            
        30 SALES          CHICAGO                                                                                                                                                                                                                                                                           
        40 OPERATIONS     BOSTON                                                                                                                                                                                                                                                                            

SQL> -- 현재 시퀀스 발급번호 조회
SQL> select seq_dept_deptno.currval from dual;

   CURRVAL                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
        90                                                                                                                                                                                                                                                                                                  

SQL> select seq_dept_deptno.nextval from dual;
select seq_dept_deptno.nextval from dual
*
ERROR at line 1:
ORA-08004: sequence SEQ_DEPT_DEPTNO.NEXTVAL exceeds MAXVALUE and cannot be instantiated 
=> 에러 : 최대값 번호 발급 종료됨


SQL> -- 시퀀스 객체 변경 : 최대값 1000, 증감값 1
SQL> alter sequence seq_dept_deptno maxvalue 1000 increment by 1;

Sequence altered.

SQL> -- 시퀀스 데이터사전
SQL> -- user_sequences

SQL> desc user_sequences;
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 SEQUENCE_NAME                                                                                                                                                                 NOT NULL VARCHAR2(30)
 MIN_VALUE                                                                                                                                                                              NUMBER
 MAX_VALUE                                                                                                                                                                              NUMBER
 INCREMENT_BY                                                                                                                                                                  NOT NULL NUMBER
 CYCLE_FLAG                                                                                                                                                                             VARCHAR2(1)
 ORDER_FLAG                                                                                                                                                                             VARCHAR2(1)
 CACHE_SIZE                                                                                                                                                                    NOT NULL NUMBER
 LAST_NUMBER                                                                                                                                                                   NOT NULL NUMBER

SQL> select * from user_sequences
  2  order by sequence_name;

SEQUENCE_NAME                   MIN_VALUE  MAX_VALUE INCREMENT_BY C O CACHE_SIZE LAST_NUMBER                                                                                                                                                                                                                
------------------------------ ---------- ---------- ------------ - - ---------- -----------                                                                                                                                                                                                                
SEQ_DEPT_DEPTNO                         1       1000            1 N N         20          91                                                                                                                                                                                                                

SQL> spool off
