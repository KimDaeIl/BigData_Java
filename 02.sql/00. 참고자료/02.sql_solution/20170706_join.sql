SQL> 
SQL> -- ## cross join
SQL> -- ���������� ���� ���� : �׽�Ʈ, �������� ����
SQL> -- ��� ���� ���� ����� �� ��ȸ : ���ڵ���� * ���ڵ���� ���
SQL> 
SQL> select *
  2  from dept, emp;

    DEPTNO DNAME          LOC                EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                                                                                
---------- -------------- ------------- ---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            7369 SMITH      CLERK           7902 80/12/17        800                    20                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            7521 WARD       SALESMAN        7698 81/02/22       1250        500         30                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            7566 JONES      MANAGER         7839 81/04/02       2975                    20                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            7698 BLAKE      MANAGER         7839 81/05/01       2850                    30                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            7782 CLARK      MANAGER         7839 81/06/09       2450                    10                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            7788 SCOTT      ANALYST         7566 82/12/09       3000                    20                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            7839 KING       PRESIDENT            81/11/17       5000                    10                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            7876 ADAMS      CLERK           7788 83/01/12       1100                    20                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            7900 JAMES      CLERK           7698 81/12/03        950                    30                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            7902 FORD       ANALYST         7566 81/12/03       3000                    20                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            7934 MILLER     CLERK           7782 82/01/23       1300                    10                                                                                                                                                                                
        10 ACCOUNTING     NEW YORK            9000 ȫ�浿                          17/07/06       4000                                                                                                                                                                                                      
        20 RESEARCH       DALLAS              7369 SMITH      CLERK           7902 80/12/17        800                    20                                                                                                                                                                                
        20 RESEARCH       DALLAS              7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30                                                                                                                                                                                
        20 RESEARCH       DALLAS              7521 WARD       SALESMAN        7698 81/02/22       1250        500         30                                                                                                                                                                                
        20 RESEARCH       DALLAS              7566 JONES      MANAGER         7839 81/04/02       2975                    20                                                                                                                                                                                
        20 RESEARCH       DALLAS              7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30                                                                                                                                                                                
        20 RESEARCH       DALLAS              7698 BLAKE      MANAGER         7839 81/05/01       2850                    30                                                                                                                                                                                
        20 RESEARCH       DALLAS              7782 CLARK      MANAGER         7839 81/06/09       2450                    10                                                                                                                                                                                
        20 RESEARCH       DALLAS              7788 SCOTT      ANALYST         7566 82/12/09       3000                    20                                                                                                                                                                                
        20 RESEARCH       DALLAS              7839 KING       PRESIDENT            81/11/17       5000                    10                                                                                                                                                                                
        20 RESEARCH       DALLAS              7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30                                                                                                                                                                                
        20 RESEARCH       DALLAS              7876 ADAMS      CLERK           7788 83/01/12       1100                    20                                                                                                                                                                                
        20 RESEARCH       DALLAS              7900 JAMES      CLERK           7698 81/12/03        950                    30                                                                                                                                                                                
        20 RESEARCH       DALLAS              7902 FORD       ANALYST         7566 81/12/03       3000                    20                                                                                                                                                                                
        20 RESEARCH       DALLAS              7934 MILLER     CLERK           7782 82/01/23       1300                    10                                                                                                                                                                                
        20 RESEARCH       DALLAS              9000 ȫ�浿                          17/07/06       4000                                                                                                                                                                                                      
        30 SALES          CHICAGO             7369 SMITH      CLERK           7902 80/12/17        800                    20                                                                                                                                                                                
        30 SALES          CHICAGO             7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30                                                                                                                                                                                
        30 SALES          CHICAGO             7521 WARD       SALESMAN        7698 81/02/22       1250        500         30                                                                                                                                                                                
        30 SALES          CHICAGO             7566 JONES      MANAGER         7839 81/04/02       2975                    20                                                                                                                                                                                
        30 SALES          CHICAGO             7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30                                                                                                                                                                                
        30 SALES          CHICAGO             7698 BLAKE      MANAGER         7839 81/05/01       2850                    30                                                                                                                                                                                
        30 SALES          CHICAGO             7782 CLARK      MANAGER         7839 81/06/09       2450                    10                                                                                                                                                                                
        30 SALES          CHICAGO             7788 SCOTT      ANALYST         7566 82/12/09       3000                    20                                                                                                                                                                                
        30 SALES          CHICAGO             7839 KING       PRESIDENT            81/11/17       5000                    10                                                                                                                                                                                
        30 SALES          CHICAGO             7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30                                                                                                                                                                                
        30 SALES          CHICAGO             7876 ADAMS      CLERK           7788 83/01/12       1100                    20                                                                                                                                                                                
        30 SALES          CHICAGO             7900 JAMES      CLERK           7698 81/12/03        950                    30                                                                                                                                                                                
        30 SALES          CHICAGO             7902 FORD       ANALYST         7566 81/12/03       3000                    20                                                                                                                                                                                
        30 SALES          CHICAGO             7934 MILLER     CLERK           7782 82/01/23       1300                    10                                                                                                                                                                                
        30 SALES          CHICAGO             9000 ȫ�浿                          17/07/06       4000                                                                                                                                                                                                      
        40 OPERATIONS     BOSTON              7369 SMITH      CLERK           7902 80/12/17        800                    20                                                                                                                                                                                
        40 OPERATIONS     BOSTON              7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30                                                                                                                                                                                
        40 OPERATIONS     BOSTON              7521 WARD       SALESMAN        7698 81/02/22       1250        500         30                                                                                                                                                                                
        40 OPERATIONS     BOSTON              7566 JONES      MANAGER         7839 81/04/02       2975                    20                                                                                                                                                                                
        40 OPERATIONS     BOSTON              7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30                                                                                                                                                                                
        40 OPERATIONS     BOSTON              7698 BLAKE      MANAGER         7839 81/05/01       2850                    30                                                                                                                                                                                
        40 OPERATIONS     BOSTON              7782 CLARK      MANAGER         7839 81/06/09       2450                    10                                                                                                                                                                                
        40 OPERATIONS     BOSTON              7788 SCOTT      ANALYST         7566 82/12/09       3000                    20                                                                                                                                                                                
        40 OPERATIONS     BOSTON              7839 KING       PRESIDENT            81/11/17       5000                    10                                                                                                                                                                                
        40 OPERATIONS     BOSTON              7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30                                                                                                                                                                                
        40 OPERATIONS     BOSTON              7876 ADAMS      CLERK           7788 83/01/12       1100                    20                                                                                                                                                                                
        40 OPERATIONS     BOSTON              7900 JAMES      CLERK           7698 81/12/03        950                    30                                                                                                                                                                                
        40 OPERATIONS     BOSTON              7902 FORD       ANALYST         7566 81/12/03       3000                    20                                                                                                                                                                                
        40 OPERATIONS     BOSTON              7934 MILLER     CLERK           7782 82/01/23       1300                    10                                                                                                                                                                                
        40 OPERATIONS     BOSTON              9000 ȫ�浿                          17/07/06       4000                                                                                                                                                                                                      

60 rows selected.

SQL> 
SQL> 
SQL> -- ## equi join
SQL> -- ���������� = ������ ��� ����
SQL> -- ���̺� ���� ���� ���� ���
SQL> -- �������ǿ� ���յ� ���ڵ常 ��ȸ
SQL> 
SQL> select d.deptno, d.dname, d.loc, e.empno, e.ename
  2  from dept d, emp e
  3  where d.deptno = e.deptno
  4  ;

    DEPTNO DNAME          LOC                EMPNO ENAME                                                                                                                                                                                                                                                    
---------- -------------- ------------- ---------- ----------                                                                                                                                                                                                                                               
        20 RESEARCH       DALLAS              7369 SMITH                                                                                                                                                                                                                                                    
        30 SALES          CHICAGO             7499 ALLEN                                                                                                                                                                                                                                                    
        30 SALES          CHICAGO             7521 WARD                                                                                                                                                                                                                                                     
        20 RESEARCH       DALLAS              7566 JONES                                                                                                                                                                                                                                                    
        30 SALES          CHICAGO             7654 MARTIN                                                                                                                                                                                                                                                   
        30 SALES          CHICAGO             7698 BLAKE                                                                                                                                                                                                                                                    
        10 ACCOUNTING     NEW YORK            7782 CLARK                                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS              7788 SCOTT                                                                                                                                                                                                                                                    
        10 ACCOUNTING     NEW YORK            7839 KING                                                                                                                                                                                                                                                     
        30 SALES          CHICAGO             7844 TURNER                                                                                                                                                                                                                                                   
        20 RESEARCH       DALLAS              7876 ADAMS                                                                                                                                                                                                                                                    
        30 SALES          CHICAGO             7900 JAMES                                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS              7902 FORD                                                                                                                                                                                                                                                     
        10 ACCOUNTING     NEW YORK            7934 MILLER                                                                                                                                                                                                                                                   

14 rows selected.

SQL> 
SQL> 
SQL> -- ## outer join
SQL> -- �������ǿ� ������ ���ڵ嵵 �Բ� ��ȸ
SQL> -- �������ǿ� ���յ� ���ڵ尡 ���� ������������ (+) ��ȣ ǥ��
SQL> 
SQL> -- [�ǽ�] �μ��� �������� ���� ������ ������ �Բ� ��ȸ
SQL> -- �μ��� �������� ���� ������ �μ��������� null
SQL> -- �μ���ȣ ������ null�� ���� ���� �μ����̺��̹Ƿ� �μ����̺� �������� (+) ǥ��
SQL> 
SQL> select d.deptno, d.dname, d.loc, e.empno, e.ename
  2  from dept d, emp e
  3  where d.deptno(+) = e.deptno
  4  ;

    DEPTNO DNAME          LOC                EMPNO ENAME                                                                                                                                                                                                                                                    
---------- -------------- ------------- ---------- ----------                                                                                                                                                                                                                                               
        20 RESEARCH       DALLAS              7369 SMITH                                                                                                                                                                                                                                                    
        30 SALES          CHICAGO             7499 ALLEN                                                                                                                                                                                                                                                    
        30 SALES          CHICAGO             7521 WARD                                                                                                                                                                                                                                                     
        20 RESEARCH       DALLAS              7566 JONES                                                                                                                                                                                                                                                    
        30 SALES          CHICAGO             7654 MARTIN                                                                                                                                                                                                                                                   
        30 SALES          CHICAGO             7698 BLAKE                                                                                                                                                                                                                                                    
        10 ACCOUNTING     NEW YORK            7782 CLARK                                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS              7788 SCOTT                                                                                                                                                                                                                                                    
        10 ACCOUNTING     NEW YORK            7839 KING                                                                                                                                                                                                                                                     
        30 SALES          CHICAGO             7844 TURNER                                                                                                                                                                                                                                                   
        20 RESEARCH       DALLAS              7876 ADAMS                                                                                                                                                                                                                                                    
        30 SALES          CHICAGO             7900 JAMES                                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS              7902 FORD                                                                                                                                                                                                                                                     
        10 ACCOUNTING     NEW YORK            7934 MILLER                                                                                                                                                                                                                                                   
                                              9000 ȫ�浿                                                                                                                                                                                                                                                   

15 rows selected.

SQL> 
SQL> -- [�ǽ�] �μ����� ���� �μ��� ������ �Բ� ��ȸ
SQL> -- �μ����� ���� �μ��� �μ��������� 40
SQL> -- �μ���ȣ ������ 40 �� ���� ���� �������̺��̹Ƿ� �������̺� �������� (+) ǥ��
SQL> 
SQL> select d.deptno, d.dname, d.loc, e.empno, e.ename
  2  from dept d, emp e
  3  where d.deptno = e.deptno(+)
  4  ;

    DEPTNO DNAME          LOC                EMPNO ENAME                                                                                                                                                                                                                                                    
---------- -------------- ------------- ---------- ----------                                                                                                                                                                                                                                               
        10 ACCOUNTING     NEW YORK            7782 CLARK                                                                                                                                                                                                                                                    
        10 ACCOUNTING     NEW YORK            7934 MILLER                                                                                                                                                                                                                                                   
        10 ACCOUNTING     NEW YORK            7839 KING                                                                                                                                                                                                                                                     
        20 RESEARCH       DALLAS              7566 JONES                                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS              7369 SMITH                                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS              7788 SCOTT                                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS              7902 FORD                                                                                                                                                                                                                                                     
        20 RESEARCH       DALLAS              7876 ADAMS                                                                                                                                                                                                                                                    
        30 SALES          CHICAGO             7521 WARD                                                                                                                                                                                                                                                     
        30 SALES          CHICAGO             7844 TURNER                                                                                                                                                                                                                                                   
        30 SALES          CHICAGO             7499 ALLEN                                                                                                                                                                                                                                                    
        30 SALES          CHICAGO             7900 JAMES                                                                                                                                                                                                                                                    
        30 SALES          CHICAGO             7654 MARTIN                                                                                                                                                                                                                                                   
        30 SALES          CHICAGO             7698 BLAKE                                                                                                                                                                                                                                                    
        40 OPERATIONS     BOSTON                                                                                                                                                                                                                                                                            

15 rows selected.

SQL> 
SQL> -- [�ǽ�]
SQL> -- �μ��� �������� ���� ���� �� �μ����� ���� �μ��� ������ �Բ� ��ȸ
SQL> 
SQL> select d.deptno, d.dname, d.loc, e.empno, e.ename
  2  from dept d, emp e
  3  where d.deptno(+) = e.deptno(+)
  4  ;
where d.deptno(+) = e.deptno(+)
                  *
ERROR at line 3:
ORA-01468: a predicate may reference only one outer-joined table 


SQL> 
SQL> -- �����߻�: (+) ��ȣ�� �������� ���� ��ο� ���Ұ�
SQL> -- �ذ���: ���տ����� ���
SQL> 
SQL> -- ## ���տ����� : select ����� ���� ���� ��ȸ
SQL> -- union all, union, intersect, minus
SQL> -- ���� select ����� ���� ��ȣ ���εǾ�� ��
SQL> 
SQL> -- [�ǽ�]
SQL> -- �μ��� �������� ���� ���� �� �μ����� ���� �μ��� ������ �Բ� ��ȸ
SQL> 
SQL> select d.deptno, d.dname, d.loc, e.empno, e.ename
  2  from dept d, emp e
  3  where d.deptno(+) = e.deptno
  4  UNION
  5  select d.deptno, d.dname, d.loc, e.empno, e.ename
  6  from dept d, emp e
  7  where d.deptno = e.deptno(+)
  8  ;

    DEPTNO DNAME          LOC                EMPNO ENAME                                                                                                                                                                                                                                                    
---------- -------------- ------------- ---------- ----------                                                                                                                                                                                                                                               
        10 ACCOUNTING     NEW YORK            7782 CLARK                                                                                                                                                                                                                                                    
        10 ACCOUNTING     NEW YORK            7839 KING                                                                                                                                                                                                                                                     
        10 ACCOUNTING     NEW YORK            7934 MILLER                                                                                                                                                                                                                                                   
        20 RESEARCH       DALLAS              7369 SMITH                                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS              7566 JONES                                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS              7788 SCOTT                                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS              7876 ADAMS                                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS              7902 FORD                                                                                                                                                                                                                                                     
        30 SALES          CHICAGO             7499 ALLEN                                                                                                                                                                                                                                                    
        30 SALES          CHICAGO             7521 WARD                                                                                                                                                                                                                                                     
        30 SALES          CHICAGO             7654 MARTIN                                                                                                                                                                                                                                                   
        30 SALES          CHICAGO             7698 BLAKE                                                                                                                                                                                                                                                    
        30 SALES          CHICAGO             7844 TURNER                                                                                                                                                                                                                                                   
        30 SALES          CHICAGO             7900 JAMES                                                                                                                                                                                                                                                    
        40 OPERATIONS     BOSTON                                                                                                                                                                                                                                                                            
                                              9000 ȫ�浿                                                                                                                                                                                                                                                   

16 rows selected.

SQL> 
SQL> -- ## self join
SQL> -- �ڱ� �ڽ� ���̺� ���� ����
SQL> -- �μ����̺� : mgr ��� ���
SQL> 
SQL> -- [�ǽ�] ���, �̸�, �����, ����̸� ���� ��ȸ
SQL> 
SQL> select e1.empno, e1.ename, e1.mgr, e2.ename
  2  from emp e1, emp e2
  3  where e1.mgr = e2.empno
  4  order by e1.empno
  5  ;

     EMPNO ENAME             MGR ENAME                                                                                                                                                                                                                                                                      
---------- ---------- ---------- ----------                                                                                                                                                                                                                                                                 
      7369 SMITH            7902 FORD                                                                                                                                                                                                                                                                       
      7499 ALLEN            7698 BLAKE                                                                                                                                                                                                                                                                      
      7521 WARD             7698 BLAKE                                                                                                                                                                                                                                                                      
      7566 JONES            7839 KING                                                                                                                                                                                                                                                                       
      7654 MARTIN           7698 BLAKE                                                                                                                                                                                                                                                                      
      7698 BLAKE            7839 KING                                                                                                                                                                                                                                                                       
      7782 CLARK            7839 KING                                                                                                                                                                                                                                                                       
      7788 SCOTT            7566 JONES                                                                                                                                                                                                                                                                      
      7844 TURNER           7698 BLAKE                                                                                                                                                                                                                                                                      
      7876 ADAMS            7788 SCOTT                                                                                                                                                                                                                                                                      
      7900 JAMES            7698 BLAKE                                                                                                                                                                                                                                                                      
      7902 FORD             7566 JONES                                                                                                                                                                                                                                                                      
      7934 MILLER           7782 CLARK                                                                                                                                                                                                                                                                      

13 rows selected.

SQL> spool off
