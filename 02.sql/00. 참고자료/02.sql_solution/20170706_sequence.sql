SQL> -- ���� �μ����̺��� �μ���ȣ�� ����ϱ� ���� ������ ��ü ����
SQL> -- ���� 50
SQL> -- ���� 10
SQL> -- �ִ� 90
SQL> 
SQL> create sequence seq_dept_deptno
  2  start with 50
  3  increment by 10
  4  maxvalue 90
  5  nocycle
  6  ;

Sequence created.

SQL> -- ������ �߱� ��ȸ : ��������.nextval
SQL> -- ���� �߱� ������ ��ȣ ��ȸ : ��������.currval (�߱��� ��ȸ)
SQL> 
SQL> select seq_dept_deptno.nextval from dual;

   NEXTVAL                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
        50                                                                                                                                                                                                                                                                                                  

SQL> select seq_dept_deptno.nextval from dual;

   NEXTVAL                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
        60                                                                                                                                                                                                                                                                                                  

SQL> -- ������ �̿��ؼ� �μ� 3�� �߰� ���
SQL> insert into dept(deptno, dname) values(seq_dept_deptno.nextval, '������');

1 row created.

SQL> insert into dept(deptno, dname) values(seq_dept_deptno.nextval, '������2');

1 row created.

SQL> insert into dept values(seq_dept_deptno.nextval, '������', '���ֵ�');

1 row created.

SQL> -- �μ� ��ü ��ȸ
SQL> select * from dept;

    DEPTNO DNAME          LOC                                                                                                                                                                                                                                                                               
---------- -------------- -------------                                                                                                                                                                                                                                                                     
        10 ACCOUNTING     NEW YORK                                                                                                                                                                                                                                                                          
        20 RESEARCH       DALLAS                                                                                                                                                                                                                                                                            
        30 SALES          CHICAGO                                                                                                                                                                                                                                                                           
        40 OPERATIONS     BOSTON                                                                                                                                                                                                                                                                            
        70 ������                                                                                                                                                                                                                                                                                           
        80 ������2                                                                                                                                                                                                                                                                                          
        90 ������         ���ֵ�                                                                                                                                                                                                                                                                            

7 rows selected.

SQL> 
SQL> -- ���� �μ��߿��� �μ���ȣ�� ����ū �μ����� ��ȸ
SQL> -- �ִ밪 : max()
SQL> select max(deptno) from dept;

MAX(DEPTNO)                                                                                                                                                                                                                                                                                                 
-----------                                                                                                                                                                                                                                                                                                 
         90                                                                                                                                                                                                                                                                                                 

SQL> select * from dept where deptno = (select max(deptno) from dept);

    DEPTNO DNAME          LOC                                                                                                                                                                                                                                                                               
---------- -------------- -------------                                                                                                                                                                                                                                                                     
        90 ������         ���ֵ�                                                                                                                                                                                                                                                                            

SQL> -- �μ���ȣ�� ���Ӽ��� �����ϸ鼭 ���ڵ� �߰� : max() ����ؼ� �μ� �߰�

SQL> insert into dept values(max(deptno) + 1, '�渮��', '�λ걤����');
insert into dept values(max(deptno) + 1, '�渮��', '�λ걤����')
                        *
ERROR at line 1:
ORA-00934: group function is not allowed here 
=>	�׷��Լ� ���Ұ�
=>	sub-query Ȱ�� �ذ�

SQL> insert into dept
  2  values((select max(deptno) from dept) + 1, '�渮��', '�λ걤����');

1 row created.

SQL> insert into dept
  2  values((select max(deptno) from dept) + 1, '�渮��', '�λ걤����');

1 row created.

SQL> insert into dept
  2  values((select max(deptno) from dept) + 1, '�渮��', '�λ걤����');

1 row created.

SQL> select * from dept;

    DEPTNO DNAME          LOC                                                                                                                                                                                                                                                                               
---------- -------------- -------------                                                                                                                                                                                                                                                                     
        10 ACCOUNTING     NEW YORK                                                                                                                                                                                                                                                                          
        20 RESEARCH       DALLAS                                                                                                                                                                                                                                                                            
        30 SALES          CHICAGO                                                                                                                                                                                                                                                                           
        40 OPERATIONS     BOSTON                                                                                                                                                                                                                                                                            
        70 ������                                                                                                                                                                                                                                                                                           
        80 ������2                                                                                                                                                                                                                                                                                          
        90 ������         ���ֵ�                                                                                                                                                                                                                                                                            
        91 �渮��         �λ걤����                                                                                                                                                                                                                                                                        
        92 �渮��         �λ걤����                                                                                                                                                                                                                                                                        
        93 �渮��         �λ걤����                                                                                                                                                                                                                                                                        

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

SQL> -- ���� ������ �߱޹�ȣ ��ȸ
SQL> select seq_dept_deptno.currval from dual;

   CURRVAL                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
        90                                                                                                                                                                                                                                                                                                  

SQL> select seq_dept_deptno.nextval from dual;
select seq_dept_deptno.nextval from dual
*
ERROR at line 1:
ORA-08004: sequence SEQ_DEPT_DEPTNO.NEXTVAL exceeds MAXVALUE and cannot be instantiated 
=> ���� : �ִ밪 ��ȣ �߱� �����


SQL> -- ������ ��ü ���� : �ִ밪 1000, ������ 1
SQL> alter sequence seq_dept_deptno maxvalue 1000 increment by 1;

Sequence altered.

SQL> -- ������ �����ͻ���
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
