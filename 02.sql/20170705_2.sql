SQL> /*
SQL> 오후 수업
SQL> */
SQL> 
SQL> -- nvl 변환 함수등을 사용해서 조회
SQL> -- 직원 사번, 급여, 수당, 특별상여금(급여+수당)*.32
SQL> -- 기본 통화단위 표기, 천단위마다 컴마표기, 소수이하 반올림처리
SQL> -- 특별 상여금이 높은 순서대로 조회
SQL> 
SQL> select empno, sal, comm, to_char(round((sal+comm)*.32,2),'L999,999,999') 특별상여금 from emp;

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- ----------------------                         
      7369        800                                                           
      7499       1600        300                  ￦608                         
      7521       1250        500                  ￦560                         
      7566       2975                                                           
      7654       1250       1400                  ￦848                         
      7698       2850                                                           
      7782       2450                                                           
      7788       3000                                                           
      7839       5000                                                           
      7844       1500          0                  ￦480                         
      7876       1100                                                           

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- ----------------------                         
      7900        950                                                           
      7902       3000                                                           
      7934       1300                                                           

14 rows selected.

SQL> select empno, sal, comm, to_char(round((sal+comm)*.32,2),'L999,999,999') 특별상여금 from emp order by 특별상여금;

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- ----------------------                         
      7844       1500          0                  ￦480                         
      7521       1250        500                  ￦560                         
      7499       1600        300                  ￦608                         
      7654       1250       1400                  ￦848                         
      7788       3000                                                           
      7839       5000                                                           
      7876       1100                                                           
      7900        950                                                           
      7902       3000                                                           
      7934       1300                                                           
      7698       2850                                                           

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- ----------------------                         
      7566       2975                                                           
      7369        800                                                           
      7782       2450                                                           

14 rows selected.

SQL> 
SQL> select empno, sal, comm, to_char(round((sal+comm)*.32,2),'L999,999,999') 특별상여금 from emp order by 특별상여금 desc;

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- ----------------------                         
      7369        800                                                           
      7782       2450                                                           
      7902       3000                                                           
      7900        950                                                           
      7876       1100                                                           
      7566       2975                                                           
      7698       2850                                                           
      7934       1300                                                           
      7788       3000                                                           
      7839       5000                                                           
      7654       1250       1400                  ￦848                         

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- ----------------------                         
      7499       1600        300                  ￦608                         
      7521       1250        500                  ￦560                         
      7844       1500          0                  ￦480                         

14 rows selected.

SQL> select empno, sal, comm, to_char(round((sal+comm)*.32,2),'L999,999,999') 특별상여금 from order by 특별상여금 desc;
select empno, sal, comm, to_char(round((sal+comm)*.32,2),'L999,999,999') 특별상여금 from order by 특별상여금 desc
                                                                                         *
ERROR at line 1:
ORA-00903: invalid table name 


SQL> select empno, sal, comm, to_char(round((sal+comm)*.32,2),'L999,999,999') 특별상여금 from emp order by 특별상여금 desc;

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- ----------------------                         
      7369        800                                                           
      7782       2450                                                           
      7902       3000                                                           
      7900        950                                                           
      7876       1100                                                           
      7566       2975                                                           
      7698       2850                                                           
      7934       1300                                                           
      7788       3000                                                           
      7839       5000                                                           
      7654       1250       1400                  ￦848                         

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- ----------------------                         
      7499       1600        300                  ￦608                         
      7521       1250        500                  ￦560                         
      7844       1500          0                  ￦480                         

14 rows selected.

SQL> select empno, sal, comm, to_char(round((sal+comm)*.32,0),'L999,999,999') 특별상여금 from emp order by 특별상여금 desc;

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- ----------------------                         
      7369        800                                                           
      7782       2450                                                           
      7902       3000                                                           
      7900        950                                                           
      7876       1100                                                           
      7566       2975                                                           
      7698       2850                                                           
      7934       1300                                                           
      7788       3000                                                           
      7839       5000                                                           
      7654       1250       1400                  ￦848                         

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- ----------------------                         
      7499       1600        300                  ￦608                         
      7521       1250        500                  ￦560                         
      7844       1500          0                  ￦480                         

14 rows selected.

SQL> select empno, sal, comm, to_char(round((sal+comm)*.32,2),'L999,999,999.99') 특별상여금 from emp order by 특별상여금 desc;

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- -------------------------                      
      7369        800                                                           
      7782       2450                                                           
      7902       3000                                                           
      7900        950                                                           
      7876       1100                                                           
      7566       2975                                                           
      7698       2850                                                           
      7934       1300                                                           
      7788       3000                                                           
      7839       5000                                                           
      7654       1250       1400                  ￦848.00                      

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- -------------------------                      
      7499       1600        300                  ￦608.00                      
      7521       1250        500                  ￦560.00                      
      7844       1500          0                  ￦480.00                      

14 rows selected.

SQL> select empno, sal, comm, to_char(round((sal+comm)*.32,2),'L999,999,999.99') 특별상여금 from emp order by 특별상여금 desc;

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- -------------------------                      
      7369        800                                                           
      7782       2450                                                           
      7902       3000                                                           
      7900        950                                                           
      7876       1100                                                           
      7566       2975                                                           
      7698       2850                                                           
      7934       1300                                                           
      7788       3000                                                           
      7839       5000                                                           
      7654       1250       1400                  ￦848.00                      

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- -------------------------                      
      7499       1600        300                  ￦608.00                      
      7521       1250        500                  ￦560.00                      
      7844       1500          0                  ￦480.00                      

14 rows selected.

SQL> select empno, sal, comm, to_char(round((sal+comm)*.32,2),'L999,999,999') 특별상여금 from order by 특별상여금 desc;
select empno, sal, comm, to_char(round((sal+comm)*.32,2),'L999,999,999') 특별상여금 from order by 특별상여금 desc
                                                                                         *
ERROR at line 1:
ORA-00903: invalid table name 


SQL> select round(sal+comm)*.32 from emp;

ROUND(SAL+COMM)*.32                                                             
-------------------                                                             
                                                                                
                608                                                             
                560                                                             
                                                                                
                848                                                             
                                                                                
                                                                                
                                                                                
                                                                                
                480                                                             
                                                                                

ROUND(SAL+COMM)*.32                                                             
-------------------                                                             
                                                                                
                                                                                
                                                                                

14 rows selected.

SQL> select round(sal+comm)*0.32 from emp;

ROUND(SAL+COMM)*0.32                                                            
--------------------                                                            
                                                                                
                 608                                                            
                 560                                                            
                                                                                
                 848                                                            
                                                                                
                                                                                
                                                                                
                                                                                
                 480                                                            
                                                                                

ROUND(SAL+COMM)*0.32                                                            
--------------------                                                            
                                                                                
                                                                                
                                                                                

14 rows selected.

SQL> select empno, sal, comm, to_char(round((sal+comm)*.32,2),'L999,999,999.99') 특별상여금 from emp order by 특별상여금 desc;

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- -------------------------                      
      7369        800                                                           
      7782       2450                                                           
      7902       3000                                                           
      7900        950                                                           
      7876       1100                                                           
      7566       2975                                                           
      7698       2850                                                           
      7934       1300                                                           
      7788       3000                                                           
      7839       5000                                                           
      7654       1250       1400                  ￦848.00                      

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- -------------------------                      
      7499       1600        300                  ￦608.00                      
      7521       1250        500                  ￦560.00                      
      7844       1500          0                  ￦480.00                      

14 rows selected.

SQL> select empno, sal, comm, to_char(round((sal+comm) * .32, 2), 'L999,999,999.99') 특별상여금 from emp order by 특별상여금 desc;

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- -------------------------                      
      7369        800                                                           
      7782       2450                                                           
      7902       3000                                                           
      7900        950                                                           
      7876       1100                                                           
      7566       2975                                                           
      7698       2850                                                           
      7934       1300                                                           
      7788       3000                                                           
      7839       5000                                                           
      7654       1250       1400                  ￦848.00                      

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- -------------------------                      
      7499       1600        300                  ￦608.00                      
      7521       1250        500                  ￦560.00                      
      7844       1500          0                  ￦480.00                      

14 rows selected.

SQL> select empno, sal, comm, to_char(round((sal+nvl(comm, 0)) * .32, 2), 'L999,999,999.99') 특별상여금 from emp order by 특별상여금 desc;

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- -------------------------                      
      7839       5000                           ￦1,600.00                      
      7902       3000                             ￦960.00                      
      7788       3000                             ￦960.00                      
      7566       2975                             ￦952.00                      
      7698       2850                             ￦912.00                      
      7654       1250       1400                  ￦848.00                      
      7782       2450                             ￦784.00                      
      7499       1600        300                  ￦608.00                      
      7521       1250        500                  ￦560.00                      
      7844       1500          0                  ￦480.00                      
      7934       1300                             ￦416.00                      

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- -------------------------                      
      7876       1100                             ￦352.00                      
      7900        950                             ￦304.00                      
      7369        800                             ￦256.00                      

14 rows selected.

SQL> select round((sal+nvl(comm, 0)  from emp;
select round((sal+nvl(comm, 0)  from emp
                                *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> select round((sal+nvl(comm, 0),2)  from emp;
select round((sal+nvl(comm, 0),2)  from emp
                              *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> select round((sal+nvl(comm, 0))*.32,2)  from emp;

ROUND((SAL+NVL(COMM,0))*.32,2)                                                  
------------------------------                                                  
                           256                                                  
                           608                                                  
                           560                                                  
                           952                                                  
                           848                                                  
                           912                                                  
                           784                                                  
                           960                                                  
                          1600                                                  
                           480                                                  
                           352                                                  

ROUND((SAL+NVL(COMM,0))*.32,2)                                                  
------------------------------                                                  
                           304                                                  
                           960                                                  
                           416                                                  

14 rows selected.

SQL> select round((sal+nvl(comm, 0))*.32,2)  from emp;

ROUND((SAL+NVL(COMM,0))*.32,2)                                                  
------------------------------                                                  
                           256                                                  
                           608                                                  
                           560                                                  
                           952                                                  
                           848                                                  
                           912                                                  
                           784                                                  
                           960                                                  
                          1600                                                  
                           480                                                  
                           352                                                  

ROUND((SAL+NVL(COMM,0))*.32,2)                                                  
------------------------------                                                  
                           304                                                  
                           960                                                  
                           416                                                  

14 rows selected.

SQL> select empno, sal, comm, to_char(round((sal+nvl(comm, 0)) * 0.32, 2), 'L999,999,999.99') 특별상여금 from emp order by 특별상여금 desc;

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- -------------------------                      
      7839       5000                           ￦1,600.00                      
      7902       3000                             ￦960.00                      
      7788       3000                             ￦960.00                      
      7566       2975                             ￦952.00                      
      7698       2850                             ￦912.00                      
      7654       1250       1400                  ￦848.00                      
      7782       2450                             ￦784.00                      
      7499       1600        300                  ￦608.00                      
      7521       1250        500                  ￦560.00                      
      7844       1500          0                  ￦480.00                      
      7934       1300                             ￦416.00                      

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- -------------------------                      
      7876       1100                             ￦352.00                      
      7900        950                             ￦304.00                      
      7369        800                             ￦256.00                      

14 rows selected.

SQL> select empno, sal, comm, to_char(round((sal+nvl(comm, 0)) * 0.32, 2), 'L9,999.99') 특별상여금 from emp order by 특별상여금 desc;

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- -------------------                            
      7839       5000                     ￦1,600.00                            
      7902       3000                       ￦960.00                            
      7788       3000                       ￦960.00                            
      7566       2975                       ￦952.00                            
      7698       2850                       ￦912.00                            
      7654       1250       1400            ￦848.00                            
      7782       2450                       ￦784.00                            
      7499       1600        300            ￦608.00                            
      7521       1250        500            ￦560.00                            
      7844       1500          0            ￦480.00                            
      7934       1300                       ￦416.00                            

     EMPNO        SAL       COMM 특별상여금                                     
---------- ---------- ---------- -------------------                            
      7876       1100                       ￦352.00                            
      7900        950                       ￦304.00                            
      7369        800                       ￦256.00                            

14 rows selected.

SQL> desc emp;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                     NOT NULL NUMBER(4)
 ENAME                                              VARCHAR2(10)
 JOB                                                VARCHAR2(9)
 MGR                                                NUMBER(4)
 HIREDATE                                           DATE
 SAL                                                NUMBER(7,2)
 COMM                                               NUMBER(7,2)
 DEPTNO                                             NUMBER(2)

SQL> select ename, sal, max(sal) from emp group by job;
select ename, sal, max(sal) from emp group by job
       *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select  sal, max(sal) from emp group by job;
select  sal, max(sal) from emp group by job
        *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select  max(sal) from emp group by job;

  MAX(SAL)                                                                      
----------                                                                      
      1300                                                                      
      1600                                                                      
      5000                                                                      
      2975                                                                      
      3000                                                                      

SQL> select  max(sal) from emp group by dept;
select  max(sal) from emp group by dept
                                   *
ERROR at line 1:
ORA-00904: "DEPT": invalid identifier 


SQL> select  max(sal) from emp group by deptno;

  MAX(SAL)                                                                      
----------                                                                      
      2850                                                                      
      3000                                                                      
      5000                                                                      

SQL> select  deptno,max(sal) from emp group by deptno;

    DEPTNO   MAX(SAL)                                                           
---------- ----------                                                           
        30       2850                                                           
        20       3000                                                           
        10       5000                                                           

SQL> select ename, deptno,max(sal) from emp group by deptno;
select ename, deptno,max(sal) from emp group by deptno
       *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> desc emp;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                     NOT NULL NUMBER(4)
 ENAME                                              VARCHAR2(10)
 JOB                                                VARCHAR2(9)
 MGR                                                NUMBER(4)
 HIREDATE                                           DATE
 SAL                                                NUMBER(7,2)
 COMM                                               NUMBER(7,2)
 DEPTNO                                             NUMBER(2)

SQL> select deptno,max(sal) from emp group by deptno;

    DEPTNO   MAX(SAL)                                                           
---------- ----------                                                           
        30       2850                                                           
        20       3000                                                           
        10       5000                                                           

SQL> select job, deptno,max(sal) from emp group by deptno;
select job, deptno,max(sal) from emp group by deptno
       *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select  deptno,max(sal) from emp group by deptno;

    DEPTNO   MAX(SAL)                                                           
---------- ----------                                                           
        30       2850                                                           
        20       3000                                                           
        10       5000                                                           

SQL> select sal from emp group by deptno;
select sal from emp group by deptno
       *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select sum(sal) from emp group by deptno;

  SUM(SAL)                                                                      
----------                                                                      
      9400                                                                      
     10875                                                                      
      8750                                                                      

SQL> select deptno, sum(sal) from emp group by deptno;

    DEPTNO   SUM(SAL)                                                           
---------- ----------                                                           
        30       9400                                                           
        20      10875                                                           
        10       8750                                                           

SQL> desc dept;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTNO                                    NOT NULL NUMBER(2)
 DNAME                                              VARCHAR2(14)
 LOC                                                VARCHAR2(13)

SQL> select * from dept;

    DEPTNO DNAME          LOC                                                   
---------- -------------- -------------                                         
        10 ACCOUNTING     NEW YORK                                              
        20 RESEARCH       DALLAS                                                
        30 SALES          CHICAGO                                               
        40 OPERATIONS     BOSTON                                                

SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
BONUS                          TABLE                                            
DEPT                           TABLE                                            
DUMMY                          TABLE                                            
EMP                            TABLE                                            
MEMBERS                        TABLE                                            
SALGRADE                       TABLE                                            

6 rows selected.

SQL> select * from salgrade;

     GRADE      LOSAL      HISAL                                                
---------- ---------- ----------                                                
         1        700       1200                                                
         2       1201       1400                                                
         3       1401       2000                                                
         4       2001       3000                                                
         5       3001       9999                                                

SQL> select * from emp where sal>=3000;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

SQL> select * from emp where sal >= 3000;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

SQL> select *
  2   from emp
  3   where sal >= 3000;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

SQL> select *
  2   from emp
  3   where sal between 2000 and 3000;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 81/04/02       2975                  
        20                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 81/05/01       2850                  
        30                                                                      
                                                                                
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

SQL> select *
  2   from emp
  3   where sal >= 2000 and 3000 >= sal;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 81/04/02       2975                  
        20                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 81/05/01       2850                  
        30                                                                      
                                                                                
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

SQL> select *
  2   from emp
  3   where between 3000 and 2000;
 where between 3000 and 2000
       *
ERROR at line 3:
ORA-00936: missing expression 


SQL> ~
SP2-0042: unknown command "~" - rest of line ignored.
SQL> /
 where between 3000 and 2000
       *
ERROR at line 3:
ORA-00936: missing expression 


SQL> select *
  2   from emp
  3   where job="manager";
 where job="manager"
           *
ERROR at line 3:
ORA-00904: "manager": invalid identifier 


SQL>  where job='manager';
SP2-0734: unknown command beginning "where job=..." - rest of line ignored.
SQL> desc emp;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                     NOT NULL NUMBER(4)
 ENAME                                              VARCHAR2(10)
 JOB                                                VARCHAR2(9)
 MGR                                                NUMBER(4)
 HIREDATE                                           DATE
 SAL                                                NUMBER(7,2)
 COMM                                               NUMBER(7,2)
 DEPTNO                                             NUMBER(2)

SQL> select * from emp where job =manager;
select * from emp where job =manager
                             *
ERROR at line 1:
ORA-00904: "MANAGER": invalid identifier 


SQL> select * from emp where job ="manager";
select * from emp where job ="manager"
                             *
ERROR at line 1:
ORA-00904: "manager": invalid identifier 


SQL> 
SQL> /
select * from emp where job ="manager"
                             *
ERROR at line 1:
ORA-00904: "manager": invalid identifier 


SQL> /
select * from emp where job ="manager"
                             *
ERROR at line 1:
ORA-00904: "manager": invalid identifier 


SQL> l
  1* select * from emp where job ="manager"
SQL> select * from emp where job='manager';

no rows selected

SQL> /

no rows selected

SQL> /

no rows selected

SQL> /

no rows selected

SQL> /

no rows selected

SQL> /

no rows selected

SQL> /////

no rows selected

SQL> edit
Wrote file afiedt.buf

  1* select * from emp where job='manager'
SQL> edit.

SQL> ;/dd
SP2-0042: unknown command ";/dd" - rest of line ignored.
SQL> ;d
SP2-0042: unknown command ";d" - rest of line ignored.
SQL> ;d
SP2-0042: unknown command ";d" - rest of line ignored.
SQL> ;d
SP2-0042: unknown command ";d" - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL> select * from emp where ename like a@;
select * from emp where ename like a@
                                    *
ERROR at line 1:
ORA-01729: database link name expected 


SQL> select * from emp where ename like 'a@';

no rows selected

SQL> select * from emp where ename like 'a'@;
select * from emp where ename like 'a'@
                                      *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select * from emp where ename like 'a'%;
select * from emp where ename like 'a'%
                                      *
ERROR at line 1:
ORA-00911: invalid character 


SQL> select * from emp where ename like 'a%';

no rows selected

SQL> select * from emp where ename like '%r';

no rows selected

SQL> select * from emp where ename like '%R';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0       
        30                                                                      
                                                                                
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                

SQL> select * from emp where ename like '%R%';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400       
        30                                                                      
                                                                                
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0       
        30                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                

6 rows selected.

SQL> select enam from emp;
select enam from emp
       *
ERROR at line 1:
ORA-00904: "ENAM": invalid identifier 


SQL> select ename from emp;

ENAME                                                                           
----------                                                                      
SMITH                                                                           
ALLEN                                                                           
WARD                                                                            
JONES                                                                           
MARTIN                                                                          
BLAKE                                                                           
CLARK                                                                           
SCOTT                                                                           
KING                                                                            
TURNER                                                                          
ADAMS                                                                           

ENAME                                                                           
----------                                                                      
JAMES                                                                           
FORD                                                                            
MILLER                                                                          

14 rows selected.

SQL> select * from emp where ename like '____';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

SQL> select * from emp where length(ename)=4;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

SQL> select * from emp where ename like '__t%';

no rows selected

SQL> select * from emp where ename like '__T%';

no rows selected

SQL> select * from emp where ename like '%';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 80/12/17        800                  
        20                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300       
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 81/04/02       2975                  
        20                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400       
        30                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 81/05/01       2850                  
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0       
        30                                                                      
                                                                                
      7876 ADAMS      CLERK           7788 83/01/12       1100                  
        20                                                                      
                                                                                
      7900 JAMES      CLERK           7698 81/12/03        950                  
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                

14 rows selected.

SQL> select * from emp where ename like 'I%';

no rows selected

SQL> select * from emp where ename like 'A%';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300       
        30                                                                      
                                                                                
      7876 ADAMS      CLERK           7788 83/01/12       1100                  
        20                                                                      
                                                                                

SQL> select * from emp where ename like 'B%';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7698 BLAKE      MANAGER         7839 81/05/01       2850                  
        30                                                                      
                                                                                

SQL> select * from emp where ename like 'C%';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                

SQL> select * from emp where ename like 'D%';

no rows selected

SQL> select * from emp where ename like 'E%';

no rows selected

SQL> select * from emp where ename like 'F%';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

SQL> select * from emp where ename like 'G%';

no rows selected

SQL> select * from emp where ename like 'H%';

no rows selected

SQL> select * from emp where ename like 'I%';

no rows selected

SQL> select * from emp where ename like 'J%';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 81/04/02       2975                  
        20                                                                      
                                                                                
      7900 JAMES      CLERK           7698 81/12/03        950                  
        30                                                                      
                                                                                

SQL> select * from emp where ename like 'K%';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                

SQL> select * from emp where ename like 'L%';

no rows selected

SQL> select * from emp where ename like 'N%';

no rows selected

SQL> select * from emp where ename like 'M%';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400       
        30                                                                      
                                                                                
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                

SQL> select * from emp where ename like 'O%';

no rows selected

SQL> select * from emp where ename like 'P%';

no rows selected

SQL> select * from emp where ename like 'Q%';

no rows selected

SQL> select * from emp where ename like 'R%';

no rows selected

SQL> select * from emp where ename like 'S%';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 80/12/17        800                  
        20                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                

SQL> select * from emp where ename like 'T%';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0       
        30                                                                      
                                                                                

SQL> select * from emp where ename like 'U%';

no rows selected

SQL> select * from emp where ename like 'V%';

no rows selected

SQL> select * from emp where ename like 'W%';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                

SQL> select * from emp where ename like 'X%';

no rows selected

SQL> select * from emp where ename like 'Y%';

no rows selected

SQL> select * from emp where ename like 'Z%';

no rows selected

SQL> select *
  2   from emp
  3   where deptno=10 or deptno=30;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300       
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400       
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7698 BLAKE      MANAGER         7839 81/05/01       2850                  
        30                                                                      
                                                                                
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0       
        30                                                                      
                                                                                
      7900 JAMES      CLERK           7698 81/12/03        950                  
        30                                                                      
                                                                                
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                

9 rows selected.

SQL>  where deptno=10 or deptno=30 order by dept;
SP2-0734: unknown command beginning "where dept..." - rest of line ignored.
SQL>  where deptno=10 or deptno=30 order by deptno;
SP2-0734: unknown command beginning "where dept..." - rest of line ignored.
SQL> l
  1  select *
  2   from emp
  3*  where deptno=10 or deptno=30
SQL> select * from emp where deptno=10 or deptno=30 order by deptno;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7698 BLAKE      MANAGER         7839 81/05/01       2850                  
        30                                                                      
                                                                                
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0       
        30                                                                      
                                                                                
      7900 JAMES      CLERK           7698 81/12/03        950                  
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400       
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300       
        30                                                                      
                                                                                

9 rows selected.

SQL> select * from emp where deptno=10 or deptno=30 order by deptno and empno;
select * from emp where deptno=10 or deptno=30 order by deptno and empno
                                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select * from emp where deptno=10 or deptno=30 order by deptno ,empno;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300       
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400       
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7698 BLAKE      MANAGER         7839 81/05/01       2850                  
        30                                                                      
                                                                                
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0       
        30                                                                      
                                                                                
      7900 JAMES      CLERK           7698 81/12/03        950                  
        30                                                                      
                                                                                

9 rows selected.

SQL> select * from emp where deptno=10 or deptno=30 order by deptno ,empno desc;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7900 JAMES      CLERK           7698 81/12/03        950                  
        30                                                                      
                                                                                
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0       
        30                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 81/05/01       2850                  
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400       
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300       
        30                                                                      
                                                                                

9 rows selected.

SQL> select * from emp where deptno in(10, 30) order by deptno ,empno desc;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7900 JAMES      CLERK           7698 81/12/03        950                  
        30                                                                      
                                                                                
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0       
        30                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 81/05/01       2850                  
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400       
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300       
        30                                                                      
                                                                                

9 rows selected.

SQL> select * from emp where deptno not in(10, 30) order by deptno ,empno desc;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                
      7876 ADAMS      CLERK           7788 83/01/12       1100                  
        20                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 81/04/02       2975                  
        20                                                                      
                                                                                
      7369 SMITH      CLERK           7902 80/12/17        800                  
        20                                                                      
                                                                                

SQL> select * from emp where deptno not in(10, 30) order by deptno desc ,empno desc;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                
      7876 ADAMS      CLERK           7788 83/01/12       1100                  
        20                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 81/04/02       2975                  
        20                                                                      
                                                                                
      7369 SMITH      CLERK           7902 80/12/17        800                  
        20                                                                      
                                                                                

SQL> edit
Wrote file afiedt.buf

  1* select * from emp where deptno not in(10, 30) order by deptno desc ,empno desc
SQL> select * from emp where comm is null;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 80/12/17        800                  
        20                                                                      
                                                                                
      7566 JONES      MANAGER         7839 81/04/02       2975                  
        20                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 81/05/01       2850                  
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7876 ADAMS      CLERK           7788 83/01/12       1100                  
        20                                                                      
                                                                                
      7900 JAMES      CLERK           7698 81/12/03        950                  
        30                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                

10 rows selected.

SQL> 
SQL> select * from emp where comm is null order by empno;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 80/12/17        800                  
        20                                                                      
                                                                                
      7566 JONES      MANAGER         7839 81/04/02       2975                  
        20                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 81/05/01       2850                  
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7876 ADAMS      CLERK           7788 83/01/12       1100                  
        20                                                                      
                                                                                
      7900 JAMES      CLERK           7698 81/12/03        950                  
        30                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                

10 rows selected.

SQL> select * from emp where comm is null order by empno desc;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                
      7900 JAMES      CLERK           7698 81/12/03        950                  
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7876 ADAMS      CLERK           7788 83/01/12       1100                  
        20                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 81/05/01       2850                  
        30                                                                      
                                                                                
      7566 JONES      MANAGER         7839 81/04/02       2975                  
        20                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 80/12/17        800                  
        20                                                                      
                                                                                

10 rows selected.

SQL> select * from emp where comm is null order by deptno desc, empno desc;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7900 JAMES      CLERK           7698 81/12/03        950                  
        30                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 81/05/01       2850                  
        30                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7876 ADAMS      CLERK           7788 83/01/12       1100                  
        20                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7566 JONES      MANAGER         7839 81/04/02       2975                  
        20                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 80/12/17        800                  
        20                                                                      
                                                                                
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                

10 rows selected.

SQL> select * from emp where comm is not null order by deptno desc, empno desc;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0       
        30                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400       
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300       
        30                                                                      
                                                                                

SQL> select * from emp where comm is not null and comm > 0 order by deptno desc, empno desc;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400       
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300       
        30                                                                      
                                                                                

SQL> select * from emp where comm > 0 order by deptno desc, empno desc;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400       
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300       
        30                                                                      
                                                                                

SQL> is notn ull
SP2-0734: unknown command beginning "is notn ul..." - rest of line ignored.
SQL> is not null
SP2-0734: unknown command beginning "is not nul..." - rest of line ignored.
SQL> is not null
SP2-0734: unknown command beginning "is not nul..." - rest of line ignored.
SQL> is notn null
SP2-0734: unknown command beginning "is notn nu..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL> is notnull
SP2-0042: unknown command "is notnull" - rest of line ignored.
SQL> is not null
SP2-0734: unknown command beginning "is not nul..." - rest of line ignored.
SQL>  is not null
SP2-0734: unknown command beginning "is not nul..." - rest of line ignored.
SQL> is not null
SP2-0734: unknown command beginning "is not nul..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL> isnotnull
SP2-0042: unknown command "isnotnull" - rest of line ignored.
SQL> isnot null
SP2-0042: unknown command "isnot null" - rest of line ignored.
SQL> isn otnu ll
SP2-0734: unknown command beginning "isn otnu l..." - rest of line ignored.
SQL> 
SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 80/12/17        800                  
        20                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300       
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 81/04/02       2975                  
        20                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400       
        30                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 81/05/01       2850                  
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0       
        30                                                                      
                                                                                
      7876 ADAMS      CLERK           7788 83/01/12       1100                  
        20                                                                      
                                                                                
      7900 JAMES      CLERK           7698 81/12/03        950                  
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                

14 rows selected.

SQL> select count(*) from emp;

  COUNT(*)                                                                      
----------                                                                      
        14                                                                      

SQL> select count(sal) from emp;

COUNT(SAL)                                                                      
----------                                                                      
        14                                                                      

SQL> select count(comm) from emp;

COUNT(COMM)                                                                     
-----------                                                                     
          4                                                                     

SQL> select count(empno) from emp;

COUNT(EMPNO)                                                                    
------------                                                                    
          14                                                                    

SQL> select count(*), max(sal), avg(sal), sum(sal) from emp;

  COUNT(*)   MAX(SAL)   AVG(SAL)   SUM(SAL)                                     
---------- ---------- ---------- ----------                                     
        14       5000 2073.21429      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", avg(sal), sum(sal) from emp;

  인원 수        최대   AVG(SAL)   SUM(SAL)                                     
---------- ---------- ---------- ----------                                     
        14       5000 2073.21429      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", avg(sal) "평균", sum(sal) "청" from emp;

  인원 수        최대       평균         청                                     
---------- ---------- ---------- ----------                                     
        14       5000 2073.21429      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", avg(sal) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000 2073.21429      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> 
SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> 
SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
        14       5000    2073.21      29025                                     

SQL> select count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno;

  인원 수        최대       평균         총                                     
---------- ---------- ---------- ----------                                     
         6       2850    1566.67       9400                                     
         5       3000       2175      10875                                     
         3       5000    2916.67       8750                                     

SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno;

    DEPTNO   인원 수        최대       평균         총                          
---------- ---------- ---------- ---------- ----------                          
        30          6       2850    1566.67       9400                          
        20          5       3000       2175      10875                          
        10          3       5000    2916.67       8750                          

SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno order by deptno desc;

    DEPTNO   인원 수        최대       평균         총                          
---------- ---------- ---------- ---------- ----------                          
        30          6       2850    1566.67       9400                          
        20          5       3000       2175      10875                          
        10          3       5000    2916.67       8750                          

SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno order by deptno adc;
select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno order by deptno adc
                                                                                                                                      *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno order by deptno asc
  2  select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno order by deptno asc
  3  ;
select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno order by deptno asc
*
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno order by deptno asc ;

    DEPTNO   인원 수        최대       평균         총                          
---------- ---------- ---------- ---------- ----------                          
        10          3       5000    2916.67       8750                          
        20          5       3000       2175      10875                          
        30          6       2850    1566.67       9400                          

SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno order by deptno asc ;

    DEPTNO   인원 수        최대       평균         총                          
---------- ---------- ---------- ---------- ----------                          
        10          3       5000    2916.67       8750                          
        20          5       3000       2175      10875                          
        30          6       2850    1566.67       9400                          

SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno having "평균" >=2000 order by deptno asc ;
select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno having "평균" >=2000 order by deptno asc 
                                                                                                                             *
ERROR at line 1:
ORA-00904: "평균": invalid identifier 


SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno having 4 >=2000 order by deptno asc ;

no rows selected

SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno having  round(avg(sal),2) >=2000 order by deptno asc ;

    DEPTNO   인원 수        최대       평균         총                          
---------- ---------- ---------- ---------- ----------                          
        10          3       5000    2916.67       8750                          
        20          5       3000       2175      10875                          

SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno having  round(avg(sal),2) >=2000 order by deptno asc ;

    DEPTNO   인원 수        최대       평균         총                          
---------- ---------- ---------- ---------- ----------                          
        10          3       5000    2916.67       8750                          
        20          5       3000       2175      10875                          

SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno having  round(avg(sal),2) >=2000 order by deptno asc ;

    DEPTNO   인원 수        최대       평균         총                          
---------- ---------- ---------- ---------- ----------                          
        10          3       5000    2916.67       8750                          
        20          5       3000       2175      10875                          

SQL> edit
Wrote file afiedt.buf

  1* select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) as "평균", sum(sal) "총" from emp group by deptno having  round(avg(sal),2) >=2000 order by deptno asc 
SQL> /

    DEPTNO   인원 수        최대       평균         총                          
---------- ---------- ---------- ---------- ----------                          
        10          3       5000    2916.67       8750                          
        20          5       3000       2175      10875                          

SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno having  평균  >=2000 order by deptno asc ;
select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno having  평균  >=2000 order by deptno asc 
                                                                                                                              *
ERROR at line 1:
ORA-00904: "평균": invalid identifier 


SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno having  "평균"  >=2000 order by deptno asc ;
select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) "평균", sum(sal) "총" from emp group by deptno having  "평균"  >=2000 order by deptno asc 
                                                                                                                              *
ERROR at line 1:
ORA-00904: "평균": invalid identifier 


SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) as "평균", sum(sal) "총" from emp group by deptno having round(avg(sal),2) >= 2000 order by deptno asc ;

    DEPTNO   인원 수        최대       평균         총                          
---------- ---------- ---------- ---------- ----------                          
        10          3       5000    2916.67       8750                          
        20          5       3000       2175      10875                          

SQL> select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) as "평균", sum(sal) "총" from emp group by deptno having "평균" >= 2000 order by deptno asc ;
select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) as "평균", sum(sal) "총" from emp group by deptno having "평균" >= 2000 order by deptno asc 
                                                                                                                                *
ERROR at line 1:
ORA-00904: "평균": invalid identifier 


SQL> /
select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) as "평균", sum(sal) "총" from emp group by deptno having "평균" >= 2000 order by deptno asc 
                                                                                                                                *
ERROR at line 1:
ORA-00904: "평균": invalid identifier 


SQL> /
select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) as "평균", sum(sal) "총" from emp group by deptno having "평균" >= 2000 order by deptno asc 
                                                                                                                                *
ERROR at line 1:
ORA-00904: "평균": invalid identifier 


SQL> ㅣ
SP2-0042: unknown command "ㅣ" - rest of line ignored.
SQL> l
  1* select deptno, count(*) "인원 수 ", max(sal) "최대", round(avg(sal),2) as "평균", sum(sal) "총" from emp group by deptno having "평균" >= 2000 order by deptno asc 
SQL> 
SQL> 
SQL> 
SQL> select job, count(*) from emp group by job ;

JOB         COUNT(*)                                                            
--------- ----------                                                            
CLERK              4                                                            
SALESMAN           4                                                            
PRESIDENT          1                                                            
MANAGER            3                                                            
ANALYST            2                                                            

SQL> select job, count(job) from emp group by job ;

JOB       COUNT(JOB)                                                            
--------- ----------                                                            
CLERK              4                                                            
SALESMAN           4                                                            
PRESIDENT          1                                                            
MANAGER            3                                                            
ANALYST            2                                                            

SQL> select job "직무", count(job) "인원수" from emp group by job ;

직무          인원수                                                            
--------- ----------                                                            
CLERK              4                                                            
SALESMAN           4                                                            
PRESIDENT          1                                                            
MANAGER            3                                                            
ANALYST            2                                                            

SQL> select job "직무", count(job) "인원수" from emp group by job order by deptno;
select job "직무", count(job) "인원수" from emp group by job order by deptno
                                                                      *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select job "직무", count(job) "인원수" from emp group by job order by "인원수";

직무          인원수                                                            
--------- ----------                                                            
PRESIDENT          1                                                            
ANALYST            2                                                            
MANAGER            3                                                            
SALESMAN           4                                                            
CLERK              4                                                            

SQL> select job "직무", count(job) "인원수" from emp group by job having job in (10,20) order by "인원수";
select job "직무", count(job) "인원수" from emp group by job having job in (10,20) order by "인원수"
                                                                    *
ERROR at line 1:
ORA-01722: invalid number 


SQL> select job "직무", count(job) "인원수" from emp group by job having job=10 and job=20 order by "인원수";
select job "직무", count(job) "인원수" from emp group by job having job=10 and job=20 order by "인원수"
                                                                    *
ERROR at line 1:
ORA-01722: invalid number 


SQL> select job "직무", count(job) "인원수" from emp where deptno in (10,20) group by job order by "인원수";

직무          인원수                                                            
--------- ----------                                                            
PRESIDENT          1                                                            
ANALYST            2                                                            
MANAGER            2                                                            
CLERK              3                                                            

SQL> 
SQL> 
SQL> select avg(sal) from emp;

  AVG(SAL)                                                                      
----------                                                                      
2073.21429                                                                      

SQL> select rount(avg(sal),2)  from emp;
select rount(avg(sal),2)  from emp
       *
ERROR at line 1:
ORA-00904: "ROUNT": invalid identifier 


SQL> select round(avg(sal),2)  from emp;

ROUND(AVG(SAL),2)                                                               
-----------------                                                               
          2073.21                                                               

SQL> select round(avg(sal),2) "평균급여"  from emp;

  평균급여                                                                      
----------                                                                      
   2073.21                                                                      

SQL> select round(avg(sal),2) "평균급여"  from emp where "평균급여">= sal;
select round(avg(sal),2) "평균급여"  from emp where "평균급여">= sal
                                                    *
ERROR at line 1:
ORA-00904: "평균급여": invalid identifier 


SQL> select round(avg(sal),2) "평균급여"  from emp where round(avg(sal),2) >= sal;
select round(avg(sal),2) "평균급여"  from emp where round(avg(sal),2) >= sal
                                                          *
ERROR at line 1:
ORA-00934: group function is not allowed here 


SQL> select round(avg(sal),2) "평균급여"  from emp;

  평균급여                                                                      
----------                                                                      
   2073.21                                                                      

SQL> select * from emp where sal<=round(avg(sal),2);
select * from emp where sal<=round(avg(sal),2)
                                   *
ERROR at line 1:
ORA-00934: group function is not allowed here 


SQL> select avg(sal) from emp;

  AVG(SAL)                                                                      
----------                                                                      
2073.21429                                                                      

SQL> select round(avg(sal),-2) from emp;

ROUND(AVG(SAL),-2)                                                              
------------------                                                              
              2100                                                              

SQL> select round(avg(sal),2) from emp;

ROUND(AVG(SAL),2)                                                               
-----------------                                                               
          2073.21                                                               

SQL> select round(avg(sal),-1) from emp;

ROUND(AVG(SAL),-1)                                                              
------------------                                                              
              2070                                                              

SQL> select floor(avg(sal),-1) from emp;
select floor(avg(sal),-1) from emp
       *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> select trunc(avg(sal),-1) from emp;

TRUNC(AVG(SAL),-1)                                                              
------------------                                                              
              2070                                                              

SQL> select * from emp where sal<=(select trunc(avg(sal), -1) from emp);

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 80/12/17        800                  
        20                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300       
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400       
        30                                                                      
                                                                                
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0       
        30                                                                      
                                                                                
      7876 ADAMS      CLERK           7788 83/01/12       1100                  
        20                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7900 JAMES      CLERK           7698 81/12/03        950                  
        30                                                                      
                                                                                
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                

8 rows selected.

SQL> select ename, sal from emp where sal<=(select trunc(avg(sal), -1) from emp);

ENAME             SAL                                                           
---------- ----------                                                           
SMITH             800                                                           
ALLEN            1600                                                           
WARD             1250                                                           
MARTIN           1250                                                           
TURNER           1500                                                           
ADAMS            1100                                                           
JAMES             950                                                           
MILLER           1300                                                           

8 rows selected.

SQL> select ename, sal from emp where sal <= (select trunc(avg(sal), -1) from emp);

ENAME             SAL                                                           
---------- ----------                                                           
SMITH             800                                                           
ALLEN            1600                                                           
WARD             1250                                                           
MARTIN           1250                                                           
TURNER           1500                                                           
ADAMS            1100                                                           
JAMES             950                                                           
MILLER           1300                                                           

8 rows selected.

SQL> 
SQL> select ename, sal from emp where sal <= (select trunc(avg(sal), -1) from emp);

ENAME             SAL                                                           
---------- ----------                                                           
SMITH             800                                                           
ALLEN            1600                                                           
WARD             1250                                                           
MARTIN           1250                                                           
TURNER           1500                                                           
ADAMS            1100                                                           
JAMES             950                                                           
MILLER           1300                                                           

8 rows selected.

SQL> select ename, sal from emp where sal <= (select trunc(avg(sal), -1) from emp) order by sal;

ENAME             SAL                                                           
---------- ----------                                                           
SMITH             800                                                           
JAMES             950                                                           
ADAMS            1100                                                           
WARD             1250                                                           
MARTIN           1250                                                           
MILLER           1300                                                           
TURNER           1500                                                           
ALLEN            1600                                                           

8 rows selected.

SQL> 
SQL> 
SQL> select ename, sal from emp where sal <= (select trunc(avg(sal), -1) from emp) order by sal;

ENAME             SAL                                                           
---------- ----------                                                           
SMITH             800                                                           
JAMES             950                                                           
ADAMS            1100                                                           
WARD             1250                                                           
MARTIN           1250                                                           
MILLER           1300                                                           
TURNER           1500                                                           
ALLEN            1600                                                           

8 rows selected.

SQL> select ename, sal from emp where sal <= (select avg(sal) from emp) order by sal;

ENAME             SAL                                                           
---------- ----------                                                           
SMITH             800                                                           
JAMES             950                                                           
ADAMS            1100                                                           
WARD             1250                                                           
MARTIN           1250                                                           
MILLER           1300                                                           
TURNER           1500                                                           
ALLEN            1600                                                           

8 rows selected.

SQL> select deptno, job from emp order by job;

    DEPTNO JOB                                                                  
---------- ---------                                                            
        20 ANALYST                                                              
        20 ANALYST                                                              
        10 CLERK                                                                
        30 CLERK                                                                
        20 CLERK                                                                
        20 CLERK                                                                
        30 MANAGER                                                              
        20 MANAGER                                                              
        10 MANAGER                                                              
        10 PRESIDENT                                                            
        30 SALESMAN                                                             

    DEPTNO JOB                                                                  
---------- ---------                                                            
        30 SALESMAN                                                             
        30 SALESMAN                                                             
        30 SALESMAN                                                             

14 rows selected.

SQL> select deptno, job from emp order by job order by job, deptno;
select deptno, job from emp order by job order by job, deptno
                                         *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select deptno, job from emp order by job job, deptno;
select deptno, job from emp order by job job, deptno
                                         *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select deptno, job from emp order by job, deptno;

    DEPTNO JOB                                                                  
---------- ---------                                                            
        20 ANALYST                                                              
        20 ANALYST                                                              
        10 CLERK                                                                
        20 CLERK                                                                
        20 CLERK                                                                
        30 CLERK                                                                
        10 MANAGER                                                              
        20 MANAGER                                                              
        30 MANAGER                                                              
        10 PRESIDENT                                                            
        30 SALESMAN                                                             

    DEPTNO JOB                                                                  
---------- ---------                                                            
        30 SALESMAN                                                             
        30 SALESMAN                                                             
        30 SALESMAN                                                             

14 rows selected.

SQL> select deptno, job from (select * from emp where job in('analust','manager') order by job, deptno;
select deptno, job from (select * from emp where job in('analust','manager') order by job, deptno
                                                                                                *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> select deptno, job from (select * from emp where job in('analust','manager')) order by job, deptno;

no rows selected

SQL> select * from emp where job in('analust','manager');

no rows selected

SQL> select deptno, job from (select * from emp where job in('analyst','manager')) order by job, deptno;

no rows selected

SQL> select * from emp where job in('analyst');

no rows selected

SQL> select * from emp where job in('ANALYST');

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

SQL> select * from emp where job in('ANALYST','SALSEMAN');

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

SQL> select * from emp where job in('ANALYST','SALSEMAN');

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> SELECT * FROM EMP WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE JOB IN ('ANALYST','SALSEMAN')) SAL <= (SELECT AVG(SAL) FROM EMP)
  2  L
  3  ;
SELECT * FROM EMP WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE JOB IN ('ANALYST','SALSEMAN')) SAL <= (SELECT AVG(SAL) FROM EMP)
                                                                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT * FROM EMP WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE JOB IN ('ANALYST','SALSEMAN')) SAL <= (SELECT AVG(SAL) FROM EMP);
SELECT * FROM EMP WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE JOB IN ('ANALYST','SALSEMAN')) SAL <= (SELECT AVG(SAL) FROM EMP)
                                                                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT * FROM EMP WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE JOB IN ('ANALYST','SALSEMAN')) AND SAL <= (SELECT AVG(SAL) FROM EMP);

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7876 ADAMS      CLERK           7788 83/01/12       1100                  
        20                                                                      
                                                                                
      7369 SMITH      CLERK           7902 80/12/17        800                  
        20                                                                      
                                                                                

SQL> SELECT * FROM EMP WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE JOB IN ('ANALYST','SALSEMAN')) AND SAL <= (SELECT AVG(SAL) FROM EMP);

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7876 ADAMS      CLERK           7788 83/01/12       1100                  
        20                                                                      
                                                                                
      7369 SMITH      CLERK           7902 80/12/17        800                  
        20                                                                      
                                                                                

SQL> 
SQL> 
SQL> SELECT * FROM (SELECT * FROM EMP WHERE JOB IN ('ANALYST','SALSEMAN'))
  2  WHERE SAL <= (SELECT AVG(SAL) FROM EMP);

no rows selected

SQL> SELECT * FROM EMP WHERE JOB IN ('ANALYST','SALSEMAN');

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

SQL> 
SQL> 
SQL> EDIT
Wrote file afiedt.buf

  1  SELECT * FROM EMP WHERE DEPTNO IN ('ANALYST','SALSEMAN')
  2* AND SAL <= (SELECT AVG(SAL) FROM EMP);
SQL> /
AND SAL <= (SELECT AVG(SAL) FROM EMP);
                                     *
ERROR at line 2:
ORA-00911: invalid character 


SQL> /
AND SAL <= (SELECT AVG(SAL) FROM EMP);
                                     *
ERROR at line 2:
ORA-00911: invalid character 


SQL> EDIT
Wrote file afiedt.buf

  1  SELECT * FROM EMP WHERE DEPTNO IN ('ANALYST','SALSEMAN')
  2* AND SAL <= (SELECT AVG(SAL) FROM EMP);
SQL> /
AND SAL <= (SELECT AVG(SAL) FROM EMP);
                                     *
ERROR at line 2:
ORA-00911: invalid character 


SQL> EDIT
Wrote file afiedt.buf

  1  SELECT * FROM EMP WHERE DEPTNO IN ('ANALYST','SALSEMAN')
  2* AND SAL <= (SELECT AVG(SAL) FROM EMP)
SQL> /
SELECT * FROM EMP WHERE DEPTNO IN ('ANALYST','SALSEMAN')
                                   *
ERROR at line 1:
ORA-01722: invalid number 


SQL> EDIT
Wrote file afiedt.buf

  1  SELECT * FROM EMP WHERE JOB IN ('ANALYST','SALSEMAN')
  2* AND SAL <= (SELECT AVG(SAL) FROM EMP)
SQL> /

no rows selected

SQL> SELECT * FROM EMP WHERE JOB IN ('ANALYST','SALSEMAN');

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

SQL> SELECT * FROM EMP WHERE JOB IN ('ANALYST','SALSEMAN');

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7788 SCOTT      ANALYST         7566 82/12/09       3000                  
        20                                                                      
                                                                                
      7902 FORD       ANALYST         7566 81/12/03       3000                  
        20                                                                      
                                                                                

SQL> SELEC JOB FROM EMP;
SP2-0734: unknown command beginning "SELEC JOB ..." - rest of line ignored.
SQL> SELECT JOB FROM EMP;

JOB                                                                             
---------                                                                       
CLERK                                                                           
SALESMAN                                                                        
SALESMAN                                                                        
MANAGER                                                                         
SALESMAN                                                                        
MANAGER                                                                         
MANAGER                                                                         
ANALYST                                                                         
PRESIDENT                                                                       
SALESMAN                                                                        
CLERK                                                                           

JOB                                                                             
---------                                                                       
CLERK                                                                           
ANALYST                                                                         
CLERK                                                                           

14 rows selected.

SQL> EDIT
Wrote file afiedt.buf

  1* SELECT JOB FROM EMP
SQL> SELECT * FROM EMP WHERE JOB IN ('ANALYST','SALESMAN') AND SAL <= (SELECT AVG(SAL) FROM EMP);

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300       
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 81/02/22       1250        500       
        30                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400       
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0       
        30                                                                      
                                                                                

SQL> SHOW ALL
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
lno 9
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
pno 2
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
USER is "SCOTT"
verify ON
wrap : lines will be wrapped
xmloptimizationcheck OFF
errorlogging is OFF
SQL> SHOW BUFFERSIZE
SP2-0158: unknown SHOW option "BUFFERSIZE"
SQL> SELECT ROWNUM FROM EMP;

    ROWNUM                                                                      
----------                                                                      
         1                                                                      
         2                                                                      
         3                                                                      
         4                                                                      
         5                                                                      
         6                                                                      
         7                                                                      
         8                                                                      
         9                                                                      
        10                                                                      
        11                                                                      

    ROWNUM                                                                      
----------                                                                      
        12                                                                      
        13                                                                      
        14                                                                      

14 rows selected.

SQL> SELECT ROWNUM,* FROM EMP;
SELECT ROWNUM,* FROM EMP
              *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT *,ROWNUM FROM EMP;
SELECT *,ROWNUM FROM EMP
        *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT ENAME, ROWNUM, ROWID FROM EMP;

ENAME          ROWNUM ROWID                                                     
---------- ---------- ------------------                                        
SMITH               1 AAAE5cAABAAAK+hAAA                                        
ALLEN               2 AAAE5cAABAAAK+hAAB                                        
WARD                3 AAAE5cAABAAAK+hAAC                                        
JONES               4 AAAE5cAABAAAK+hAAD                                        
MARTIN              5 AAAE5cAABAAAK+hAAE                                        
BLAKE               6 AAAE5cAABAAAK+hAAF                                        
CLARK               7 AAAE5cAABAAAK+hAAG                                        
SCOTT               8 AAAE5cAABAAAK+hAAH                                        
KING                9 AAAE5cAABAAAK+hAAI                                        
TURNER             10 AAAE5cAABAAAK+hAAJ                                        
ADAMS              11 AAAE5cAABAAAK+hAAK                                        

ENAME          ROWNUM ROWID                                                     
---------- ---------- ------------------                                        
JAMES              12 AAAE5cAABAAAK+hAAL                                        
FORD               13 AAAE5cAABAAAK+hAAM                                        
MILLER             14 AAAE5cAABAAAK+hAAN                                        

14 rows selected.

SQL> SELECT ROWNUM, EMPNO, ENAME, ROWID FROM EMP;

    ROWNUM      EMPNO ENAME      ROWID                                          
---------- ---------- ---------- ------------------                             
         1       7369 SMITH      AAAE5cAABAAAK+hAAA                             
         2       7499 ALLEN      AAAE5cAABAAAK+hAAB                             
         3       7521 WARD       AAAE5cAABAAAK+hAAC                             
         4       7566 JONES      AAAE5cAABAAAK+hAAD                             
         5       7654 MARTIN     AAAE5cAABAAAK+hAAE                             
         6       7698 BLAKE      AAAE5cAABAAAK+hAAF                             
         7       7782 CLARK      AAAE5cAABAAAK+hAAG                             
         8       7788 SCOTT      AAAE5cAABAAAK+hAAH                             
         9       7839 KING       AAAE5cAABAAAK+hAAI                             
        10       7844 TURNER     AAAE5cAABAAAK+hAAJ                             
        11       7876 ADAMS      AAAE5cAABAAAK+hAAK                             

    ROWNUM      EMPNO ENAME      ROWID                                          
---------- ---------- ---------- ------------------                             
        12       7900 JAMES      AAAE5cAABAAAK+hAAL                             
        13       7902 FORD       AAAE5cAABAAAK+hAAM                             
        14       7934 MILLER     AAAE5cAABAAAK+hAAN                             

14 rows selected.

SQL> SELECT ROWNUM, EMPNO, ENAME, ROWID FROM EMP WHERE EMPNO=10;

no rows selected

SQL> SELECT ROWNUM, EMPNO, ENAME, ROWID FROM EMP WHERE DEPTNO=10;

    ROWNUM      EMPNO ENAME      ROWID                                          
---------- ---------- ---------- ------------------                             
         1       7782 CLARK      AAAE5cAABAAAK+hAAG                             
         2       7839 KING       AAAE5cAABAAAK+hAAI                             
         3       7934 MILLER     AAAE5cAABAAAK+hAAN                             

SQL> SELECT ROWNUM, EMPMO, ENAME, SAL FROM (SELECT * FROM EMP ORDER BY SAL DESC);
SELECT ROWNUM, EMPMO, ENAME, SAL FROM (SELECT * FROM EMP ORDER BY SAL DESC)
               *
ERROR at line 1:
ORA-00904: "EMPMO": invalid identifier 


SQL> SELECT ROWNUM, EMPNO, ENAME, SAL FROM (SELECT * FROM EMP ORDER BY SAL DESC);

    ROWNUM      EMPNO ENAME             SAL                                     
---------- ---------- ---------- ----------                                     
         1       7839 KING             5000                                     
         2       7902 FORD             3000                                     
         3       7788 SCOTT            3000                                     
         4       7566 JONES            2975                                     
         5       7698 BLAKE            2850                                     
         6       7782 CLARK            2450                                     
         7       7499 ALLEN            1600                                     
         8       7844 TURNER           1500                                     
         9       7934 MILLER           1300                                     
        10       7521 WARD             1250                                     
        11       7654 MARTIN           1250                                     

    ROWNUM      EMPNO ENAME             SAL                                     
---------- ---------- ---------- ----------                                     
        12       7876 ADAMS            1100                                     
        13       7900 JAMES             950                                     
        14       7369 SMITH             800                                     

14 rows selected.

SQL> SELECT ROWNUM, EMPNO, ENAME, SAL FROM EMP ORDER BY SAL DESC;

    ROWNUM      EMPNO ENAME             SAL                                     
---------- ---------- ---------- ----------                                     
         9       7839 KING             5000                                     
        13       7902 FORD             3000                                     
         8       7788 SCOTT            3000                                     
         4       7566 JONES            2975                                     
         6       7698 BLAKE            2850                                     
         7       7782 CLARK            2450                                     
         2       7499 ALLEN            1600                                     
        10       7844 TURNER           1500                                     
        14       7934 MILLER           1300                                     
         3       7521 WARD             1250                                     
         5       7654 MARTIN           1250                                     

    ROWNUM      EMPNO ENAME             SAL                                     
---------- ---------- ---------- ----------                                     
        11       7876 ADAMS            1100                                     
        12       7900 JAMES             950                                     
         1       7369 SMITH             800                                     

14 rows selected.

SQL> SELECT ROWNUM, EMPNO, ENAME, SAL FROM (SELECT * FROM EMP ORDER BY SAL DESC);

    ROWNUM      EMPNO ENAME             SAL                                     
---------- ---------- ---------- ----------                                     
         1       7839 KING             5000                                     
         2       7902 FORD             3000                                     
         3       7788 SCOTT            3000                                     
         4       7566 JONES            2975                                     
         5       7698 BLAKE            2850                                     
         6       7782 CLARK            2450                                     
         7       7499 ALLEN            1600                                     
         8       7844 TURNER           1500                                     
         9       7934 MILLER           1300                                     
        10       7521 WARD             1250                                     
        11       7654 MARTIN           1250                                     

    ROWNUM      EMPNO ENAME             SAL                                     
---------- ---------- ---------- ----------                                     
        12       7876 ADAMS            1100                                     
        13       7900 JAMES             950                                     
        14       7369 SMITH             800                                     

14 rows selected.

SQL> ASF;DLKJASL;DKFJASD;LKFJASDDLKFJALS;DDKFJASL;DKFJASL;DKFJAS;LDKFJFJDKLAFJDKLAFJDKLSAFJDAKLAS;LDKFJASD;LFKJASLKDFJASL;DKFJASLKDFJASDLKF
SP2-0734: unknown command beginning "ASF;DLKJAS..." - rest of line ignored.
SQL> ;
  1* SELECT ROWNUM, EMPNO, ENAME, SAL FROM (SELECT * FROM EMP ORDER BY SAL DESC)
SQL> 
SQL> 
SQL> 
SQL> 
SQL> CL SCR

SQL> SELECT * FROM TAB;

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
BONUS                          TABLE                                            
DEPT                           TABLE                                            
DUMMY                          TABLE                                            
EMP                            TABLE                                            
MEMBERS                        TABLE                                            
SALGRADE                       TABLE                                            

6 rows selected.

SQL> SELECT * FROM BONUS;

no rows selected

SQL> SELECT * FROM DEPT;

    DEPTNO DNAME          LOC                                                   
---------- -------------- -------------                                         
        10 ACCOUNTING     NEW YORK                                              
        20 RESEARCH       DALLAS                                                
        30 SALES          CHICAGO                                               
        40 OPERATIONS     BOSTON                                                

SQL> SELECT * FROM DUMMY;

     DUMMY                                                                      
----------                                                                      
         0                                                                      

SQL> SELECT * FROM DALGRADE;
SELECT * FROM DALGRADE
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SELECT * FROM SALGRADE;

     GRADE      LOSAL      HISAL                                                
---------- ---------- ----------                                                
         1        700       1200                                                
         2       1201       1400                                                
         3       1401       2000                                                
         4       2001       3000                                                
         5       3001       9999                                                

SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SB.HISAL) FROM EMP E
  2  ;
SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SB.HISAL) FROM EMP E
                                                                           *
ERROR at line 1:
ORA-00904: "SB"."HISAL": invalid identifier 


SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) FROM EMP ;E
  2  ;
SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) FROM EMP ;E
                                                                                              *
ERROR at line 1:
ORA-00911: invalid character 


SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) FROM EMP;
SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) FROM EMP
                                               *
ERROR at line 1:
ORA-00904: "E"."SAL": invalid identifier 


SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) FROM EMP E;

(SELECTSG.GRADEFROMSALGRADESGWHEREE.SALBETWEENSG.LOSALANDSG.HISAL)              
------------------------------------------------------------------              
                                                                 1              
                                                                 3              
                                                                 2              
                                                                 4              
                                                                 2              
                                                                 4              
                                                                 4              
                                                                 4              
                                                                 5              
                                                                 3              
                                                                 1              

(SELECTSG.GRADEFROMSALGRADESGWHEREE.SALBETWEENSG.LOSALANDSG.HISAL)              
------------------------------------------------------------------              
                                                                 1              
                                                                 4              
                                                                 2              

14 rows selected.

SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) ENAME, JOB FROM EMP E;

     ENAME JOB                                                                  
---------- ---------                                                            
         1 CLERK                                                                
         3 SALESMAN                                                             
         2 SALESMAN                                                             
         4 MANAGER                                                              
         2 SALESMAN                                                             
         4 MANAGER                                                              
         4 MANAGER                                                              
         4 ANALYST                                                              
         5 PRESIDENT                                                            
         3 SALESMAN                                                             
         1 CLERK                                                                

     ENAME JOB                                                                  
---------- ---------                                                            
         1 CLERK                                                                
         4 ANALYST                                                              
         2 CLERK                                                                

14 rows selected.

SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) ENAME, ENAME, JOB FROM EMP E;

     ENAME ENAME      JOB                                                       
---------- ---------- ---------                                                 
         1 SMITH      CLERK                                                     
         3 ALLEN      SALESMAN                                                  
         2 WARD       SALESMAN                                                  
         4 JONES      MANAGER                                                   
         2 MARTIN     SALESMAN                                                  
         4 BLAKE      MANAGER                                                   
         4 CLARK      MANAGER                                                   
         4 SCOTT      ANALYST                                                   
         5 KING       PRESIDENT                                                 
         3 TURNER     SALESMAN                                                  
         1 ADAMS      CLERK                                                     

     ENAME ENAME      JOB                                                       
---------- ---------- ---------                                                 
         1 JAMES      CLERK                                                     
         4 FORD       ANALYST                                                   
         2 MILLER     CLERK                                                     

14 rows selected.

SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) ENAME, ENAME, JOB, SAL FROM EMP E;

     ENAME ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         1 SMITH      CLERK            800                                      
         3 ALLEN      SALESMAN        1600                                      
         2 WARD       SALESMAN        1250                                      
         4 JONES      MANAGER         2975                                      
         2 MARTIN     SALESMAN        1250                                      
         4 BLAKE      MANAGER         2850                                      
         4 CLARK      MANAGER         2450                                      
         4 SCOTT      ANALYST         3000                                      
         5 KING       PRESIDENT       5000                                      
         3 TURNER     SALESMAN        1500                                      
         1 ADAMS      CLERK           1100                                      

     ENAME ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         1 JAMES      CLERK            950                                      
         4 FORD       ANALYST         3000                                      
         2 MILLER     CLERK           1300                                      

14 rows selected.

SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) "SAL_GRADE", ENAME, ENAME, JOB, SAL FROM EMP E;

 SAL_GRADE ENAME      ENAME      JOB              SAL                           
---------- ---------- ---------- --------- ----------                           
         1 SMITH      SMITH      CLERK            800                           
         3 ALLEN      ALLEN      SALESMAN        1600                           
         2 WARD       WARD       SALESMAN        1250                           
         4 JONES      JONES      MANAGER         2975                           
         2 MARTIN     MARTIN     SALESMAN        1250                           
         4 BLAKE      BLAKE      MANAGER         2850                           
         4 CLARK      CLARK      MANAGER         2450                           
         4 SCOTT      SCOTT      ANALYST         3000                           
         5 KING       KING       PRESIDENT       5000                           
         3 TURNER     TURNER     SALESMAN        1500                           
         1 ADAMS      ADAMS      CLERK           1100                           

 SAL_GRADE ENAME      ENAME      JOB              SAL                           
---------- ---------- ---------- --------- ----------                           
         1 JAMES      JAMES      CLERK            950                           
         4 FORD       FORD       ANALYST         3000                           
         2 MILLER     MILLER     CLERK           1300                           

14 rows selected.

SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) "SAL_GRADE", ENAME, JOB, SAL FROM EMP E;

 SAL_GRADE ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         1 SMITH      CLERK            800                                      
         3 ALLEN      SALESMAN        1600                                      
         2 WARD       SALESMAN        1250                                      
         4 JONES      MANAGER         2975                                      
         2 MARTIN     SALESMAN        1250                                      
         4 BLAKE      MANAGER         2850                                      
         4 CLARK      MANAGER         2450                                      
         4 SCOTT      ANALYST         3000                                      
         5 KING       PRESIDENT       5000                                      
         3 TURNER     SALESMAN        1500                                      
         1 ADAMS      CLERK           1100                                      

 SAL_GRADE ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         1 JAMES      CLERK            950                                      
         4 FORD       ANALYST         3000                                      
         2 MILLER     CLERK           1300                                      

14 rows selected.

SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) "SAL_GRADE", ENAME, JOB, SAL FROM EMP E ORDER BY "SAL_GRADE";

 SAL_GRADE ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         1 ADAMS      CLERK           1100                                      
         1 JAMES      CLERK            950                                      
         1 SMITH      CLERK            800                                      
         2 MARTIN     SALESMAN        1250                                      
         2 MILLER     CLERK           1300                                      
         2 WARD       SALESMAN        1250                                      
         3 TURNER     SALESMAN        1500                                      
         3 ALLEN      SALESMAN        1600                                      
         4 SCOTT      ANALYST         3000                                      
         4 BLAKE      MANAGER         2850                                      
         4 JONES      MANAGER         2975                                      

 SAL_GRADE ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         4 CLARK      MANAGER         2450                                      
         4 FORD       ANALYST         3000                                      
         5 KING       PRESIDENT       5000                                      

14 rows selected.

SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) "SAL_GRADE", ENAME, JOB, SAL FROM EMP E ORDER BY "SAL_GRADE";

 SAL_GRADE ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         1 ADAMS      CLERK           1100                                      
         1 JAMES      CLERK            950                                      
         1 SMITH      CLERK            800                                      
         2 MARTIN     SALESMAN        1250                                      
         2 MILLER     CLERK           1300                                      
         2 WARD       SALESMAN        1250                                      
         3 TURNER     SALESMAN        1500                                      
         3 ALLEN      SALESMAN        1600                                      
         4 SCOTT      ANALYST         3000                                      
         4 BLAKE      MANAGER         2850                                      
         4 JONES      MANAGER         2975                                      

 SAL_GRADE ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         4 CLARK      MANAGER         2450                                      
         4 FORD       ANALYST         3000                                      
         5 KING       PRESIDENT       5000                                      

14 rows selected.

SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) "SAL_GRADE", ENAME, JOB, SAL FROM EMP E ORDER BY "SAL_GRADE" DESC;

 SAL_GRADE ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         5 KING       PRESIDENT       5000                                      
         4 CLARK      MANAGER         2450                                      
         4 FORD       ANALYST         3000                                      
         4 SCOTT      ANALYST         3000                                      
         4 BLAKE      MANAGER         2850                                      
         4 JONES      MANAGER         2975                                      
         3 TURNER     SALESMAN        1500                                      
         3 ALLEN      SALESMAN        1600                                      
         2 MILLER     CLERK           1300                                      
         2 MARTIN     SALESMAN        1250                                      
         2 WARD       SALESMAN        1250                                      

 SAL_GRADE ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         1 JAMES      CLERK            950                                      
         1 SMITH      CLERK            800                                      
         1 ADAMS      CLERK           1100                                      

14 rows selected.

SQL> SELECT * FROM SALGRADE;

     GRADE      LOSAL      HISAL                                                
---------- ---------- ----------                                                
         1        700       1200                                                
         2       1201       1400                                                
         3       1401       2000                                                
         4       2001       3000                                                
         5       3001       9999                                                

SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) "SAL_GRADE", ENAME, JOB, SAL FROM EMP E ORDER BY "SAL_GRADE" DESC;

 SAL_GRADE ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         5 KING       PRESIDENT       5000                                      
         4 CLARK      MANAGER         2450                                      
         4 FORD       ANALYST         3000                                      
         4 SCOTT      ANALYST         3000                                      
         4 BLAKE      MANAGER         2850                                      
         4 JONES      MANAGER         2975                                      
         3 TURNER     SALESMAN        1500                                      
         3 ALLEN      SALESMAN        1600                                      
         2 MILLER     CLERK           1300                                      
         2 MARTIN     SALESMAN        1250                                      
         2 WARD       SALESMAN        1250                                      

 SAL_GRADE ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         1 JAMES      CLERK            950                                      
         1 SMITH      CLERK            800                                      
         1 ADAMS      CLERK           1100                                      

14 rows selected.

SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) "SAL_GRADE", ENAME, JOB, SAL FROM EMP E ORDER BY "SAL_GRADE" DESC;

 SAL_GRADE ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         5 KING       PRESIDENT       5000                                      
         4 CLARK      MANAGER         2450                                      
         4 FORD       ANALYST         3000                                      
         4 SCOTT      ANALYST         3000                                      
         4 BLAKE      MANAGER         2850                                      
         4 JONES      MANAGER         2975                                      
         3 TURNER     SALESMAN        1500                                      
         3 ALLEN      SALESMAN        1600                                      
         2 MILLER     CLERK           1300                                      
         2 MARTIN     SALESMAN        1250                                      
         2 WARD       SALESMAN        1250                                      

 SAL_GRADE ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         1 JAMES      CLERK            950                                      
         1 SMITH      CLERK            800                                      
         1 ADAMS      CLERK           1100                                      

14 rows selected.

SQL> SELECT * FROM TAB;

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
BONUS                          TABLE                                            
DEPT                           TABLE                                            
DUMMY                          TABLE                                            
EMP                            TABLE                                            
MEMBERS                        TABLE                                            
SALGRADE                       TABLE                                            

6 rows selected.

SQL> EDIT
Wrote file afiedt.buf

  1* SELECT ROWNUM, EMPNO, ENAME, SAL FROM (SELECT * FROM EMP ORDER BY SAL DESC) LIMIT 5
  2  /
SELECT ROWNUM, EMPNO, ENAME, SAL FROM (SELECT * FROM EMP ORDER BY SAL DESC) LIMIT 5
                                                                                  *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> EDIT
Wrote file afiedt.buf

  1* SELECT ROWNUM, EMPNO, ENAME, SAL FROM (SELECT * FROM EMP ORDER BY SAL DESC) LIMIT 5;
SQL> /
SELECT ROWNUM, EMPNO, ENAME, SAL FROM (SELECT * FROM EMP ORDER BY SAL DESC) LIMIT 5;
                                                                                  *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> EDIT
Wrote file afiedt.buf

  1* SELECT ROWNUM, EMPNO, ENAME, SAL FROM (SELECT * FROM EMP ORDER BY SAL DESC) WHERE ROWNUM<=5
SQL> /

    ROWNUM      EMPNO ENAME             SAL                                     
---------- ---------- ---------- ----------                                     
         1       7839 KING             5000                                     
         2       7788 SCOTT            3000                                     
         3       7902 FORD             3000                                     
         4       7566 JONES            2975                                     
         5       7698 BLAKE            2850                                     

SQL> SELECT (SELECT GRADE FROM SALGRADE WHERE E.SAL BETWEEN  LOSAL AND HISAL) "SAL_GRADE
  2  ", ENAME, JOB, SAL FROM EMP E ORDER BY "SAL_GRADE" DESC;
", ENAME, JOB, SAL FROM EMP E ORDER BY "SAL_GRADE" DESC
                                       *
ERROR at line 2:
ORA-00904: "SAL_GRADE": invalid identifier 


SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) "SAL_GRADE
  2  ", ENAME, JOB, SAL FROM EMP E ORDER BY "SAL_GRADE" DESC;
", ENAME, JOB, SAL FROM EMP E ORDER BY "SAL_GRADE" DESC
                                       *
ERROR at line 2:
ORA-00904: "SAL_GRADE": invalid identifier 


SQL> SELECT (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) "SAL_GRADE", ENAME, JOB, SAL FROM EMP E ORDER BY "SAL_GRADE" DESC;

 SAL_GRADE ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         5 KING       PRESIDENT       5000                                      
         4 CLARK      MANAGER         2450                                      
         4 FORD       ANALYST         3000                                      
         4 SCOTT      ANALYST         3000                                      
         4 BLAKE      MANAGER         2850                                      
         4 JONES      MANAGER         2975                                      
         3 TURNER     SALESMAN        1500                                      
         3 ALLEN      SALESMAN        1600                                      
         2 MILLER     CLERK           1300                                      
         2 MARTIN     SALESMAN        1250                                      
         2 WARD       SALESMAN        1250                                      

 SAL_GRADE ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         1 JAMES      CLERK            950                                      
         1 SMITH      CLERK            800                                      
         1 ADAMS      CLERK           1100                                      

14 rows selected.

SQL> SELECT COUNT((SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL)) "SAL_GRADE", ENAME, JOB, SAL FROM EMP E
  2   GROUP BY (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) ORDER BY "SAL_GRADE" DESC;
 GROUP BY (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL) ORDER BY "SAL_GRADE" DESC
           *
ERROR at line 2:
ORA-22818: subquery expressions not allowed here 


SQL> SELECT COUNT((SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL)) "SAL_GRADE", ENAME, JOB, SAL FROM EMP E
  2   GROUP BY (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL);
 GROUP BY (SELECT SG.GRADE FROM SALGRADE SG WHERE E.SAL BETWEEN  SG.LOSAL AND SG.HISAL)
           *
ERROR at line 2:
ORA-22818: subquery expressions not allowed here 


SQL> SELECT COUNT(*), MIN(SAL), MAX(SAL), AVG(SAL) FROM EMP GROUP BY JOB;

  COUNT(*)   MIN(SAL)   MAX(SAL)   AVG(SAL)                                     
---------- ---------- ---------- ----------                                     
         4        800       1300     1037.5                                     
         4       1250       1600       1400                                     
         1       5000       5000       5000                                     
         3       2450       2975 2758.33333                                     
         2       3000       3000       3000                                     

SQL> SELECT COUNT(*), MIN(SAL), MAX(SAL), ROUND(AVG(SAL), 2) FROM EMP GROUP BY JOB;

  COUNT(*)   MIN(SAL)   MAX(SAL) ROUND(AVG(SAL),2)                              
---------- ---------- ---------- -----------------                              
         4        800       1300            1037.5                              
         4       1250       1600              1400                              
         1       5000       5000              5000                              
         3       2450       2975           2758.33                              
         2       3000       3000              3000                              

SQL> SELECT JOB, COUNT(*), MIN(SAL), MAX(SAL), ROUND(AVG(SAL), 2) FROM EMP GROUP BY JOB;

JOB         COUNT(*)   MIN(SAL)   MAX(SAL) ROUND(AVG(SAL),2)                    
--------- ---------- ---------- ---------- -----------------                    
CLERK              4        800       1300            1037.5                    
SALESMAN           4       1250       1600              1400                    
PRESIDENT          1       5000       5000              5000                    
MANAGER            3       2450       2975           2758.33                    
ANALYST            2       3000       3000              3000                    

SQL> AAAAAASDASASDASDFASDDFASDDFASDFASDFASDFASDF
SP2-0734: unknown command beginning "AAAAAASDAS..." - rest of line ignored.
SQL> ASDFASDFASD;
SP2-0734: unknown command beginning "ASDFASDFAS..." - rest of line ignored.
SQL> SELECT JOB, COUNT(*), MIN(SAL), MAX(SAL), ROUND(AVG(SAL), 2) FROM EMP GROUP BY JOB;

JOB         COUNT(*)   MIN(SAL)   MAX(SAL) ROUND(AVG(SAL),2)                    
--------- ---------- ---------- ---------- -----------------                    
CLERK              4        800       1300            1037.5                    
SALESMAN           4       1250       1600              1400                    
PRESIDENT          1       5000       5000              5000                    
MANAGER            3       2450       2975           2758.33                    
ANALYST            2       3000       3000              3000                    

SQL> EDIT
Wrote file afiedt.buf

  1* SELECT JOB "직책", COUNT(*) "인원수", MIN(SAL) "최소", MAX(SAL) "최대", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB
SQL> /

직책          인원수       최소       최대       평균                           
--------- ---------- ---------- ---------- ----------                           
CLERK              4        800       1300     1037.5                           
SALESMAN           4       1250       1600       1400                           
PRESIDENT          1       5000       5000       5000                           
MANAGER            3       2450       2975    2758.33                           
ANALYST            2       3000       3000       3000                           

SQL> EDIT
Wrote file afiedt.buf

  1* SELECT JOB "직책", COUNT(*) "인원수", MIN(SAL) "최소", MAX(SAL) "최대", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB
SQL> 
SQL> 
SQL> 
SQL> 
SQL> SELECT "최소" FROM (SELECT JOB "직책", COUNT(*) "인원수", MIN(SAL) "최소", MAX(SAL) "최대", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB;);
SELECT "최소" FROM (SELECT JOB "직책", COUNT(*) "인원수", MIN(SAL) "최소", MAX(SAL) "최대", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB;)
                                                                                                                                           *
ERROR at line 1:
ORA-00911: invalid character 


SQL> SELECT "최소" FROM (SELECT JOB "직책", COUNT(*) "인원수", MIN(SAL) "최소", MAX(SAL) "최대", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB);

      최소                                                                      
----------                                                                      
       800                                                                      
      1250                                                                      
      5000                                                                      
      2450                                                                      
      3000                                                                      

SQL> SELECT "최소", "직책" FROM (SELECT JOB "직책", COUNT(*) "인원수", MIN(SAL) "최소", MAX(SAL) "최대", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB);

      최소 직책                                                                 
---------- ---------                                                            
       800 CLERK                                                                
      1250 SALESMAN                                                             
      5000 PRESIDENT                                                            
      2450 MANAGER                                                              
      3000 ANALYST                                                              

SQL> SELECT E.ENAME, S."최소", S."직책" FROM EMP E, (SELECT JOB "직책", COUNT(*) "인원수", MIN(SAL) "최소", MAX(SAL) "최대", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB) S WHERE E.SAL <= S."최소";

ENAME            최소 직책                                                      
---------- ---------- ---------                                                 
SMITH             800 CLERK                                                     
SMITH            1250 SALESMAN                                                  
SMITH            2450 MANAGER                                                   
SMITH            3000 ANALYST                                                   
SMITH            5000 PRESIDENT                                                 
JAMES            1250 SALESMAN                                                  
JAMES            2450 MANAGER                                                   
JAMES            3000 ANALYST                                                   
JAMES            5000 PRESIDENT                                                 
ADAMS            1250 SALESMAN                                                  
ADAMS            2450 MANAGER                                                   

ENAME            최소 직책                                                      
---------- ---------- ---------                                                 
ADAMS            3000 ANALYST                                                   
ADAMS            5000 PRESIDENT                                                 
WARD             1250 SALESMAN                                                  
WARD             2450 MANAGER                                                   
WARD             3000 ANALYST                                                   
WARD             5000 PRESIDENT                                                 
MARTIN           1250 SALESMAN                                                  
MARTIN           2450 MANAGER                                                   
MARTIN           3000 ANALYST                                                   
MARTIN           5000 PRESIDENT                                                 
MILLER           2450 MANAGER                                                   

ENAME            최소 직책                                                      
---------- ---------- ---------                                                 
MILLER           3000 ANALYST                                                   
MILLER           5000 PRESIDENT                                                 
TURNER           2450 MANAGER                                                   
TURNER           3000 ANALYST                                                   
TURNER           5000 PRESIDENT                                                 
ALLEN            2450 MANAGER                                                   
ALLEN            3000 ANALYST                                                   
ALLEN            5000 PRESIDENT                                                 
CLARK            2450 MANAGER                                                   
CLARK            3000 ANALYST                                                   
CLARK            5000 PRESIDENT                                                 

ENAME            최소 직책                                                      
---------- ---------- ---------                                                 
BLAKE            3000 ANALYST                                                   
BLAKE            5000 PRESIDENT                                                 
JONES            3000 ANALYST                                                   
JONES            5000 PRESIDENT                                                 
SCOTT            3000 ANALYST                                                   
SCOTT            5000 PRESIDENT                                                 
FORD             3000 ANALYST                                                   
FORD             5000 PRESIDENT                                                 
KING             5000 PRESIDENT                                                 

42 rows selected.

SQL> SELECT E.ENAME, S."최소", S."직책" FROM EMP E, (SELECT JOB "직책", COUNT(*) "인원수", MIN(SAL) "최소", MAX(SAL) "최대", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB) S WHERE E.JOB =S."직책" AND E.SAL <= S."최소";

ENAME            최소 직책                                                      
---------- ---------- ---------                                                 
SMITH             800 CLERK                                                     
MARTIN           1250 SALESMAN                                                  
WARD             1250 SALESMAN                                                  
KING             5000 PRESIDENT                                                 
CLARK            2450 MANAGER                                                   
FORD             3000 ANALYST                                                   
SCOTT            3000 ANALYST                                                   

7 rows selected.

SQL> SELECT E.ENAME, S."직책",E.SAL, S."최소", FROM EMP E, (SELECT JOB "직책", COUNT(*) "인원수", MIN(SAL) "최소", MAX(SAL) "최대", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB) S WHERE E.JOB =S."직책" AND E.SAL <= S."최소";
SELECT E.ENAME, S."직책",E.SAL, S."최소", FROM EMP E, (SELECT JOB "직책", COUNT(*) "인원수", MIN(SAL) "최소", MAX(SAL) "최대", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB) S WHERE E.JOB =S."직책" AND E.SAL <= S."최소"
                                          *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT E.ENAME, S."직책",E.SAL, S."최소" FROM EMP E, (SELECT JOB "직책", COUNT(*) "인원수", MIN(SAL) "최소", MAX(SAL) "최대", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB) S WHERE E.JOB =S."직책" AND E.SAL <= S."최소";

ENAME      직책             SAL       최소                                      
---------- --------- ---------- ----------                                      
SMITH      CLERK            800        800                                      
MARTIN     SALESMAN        1250       1250                                      
WARD       SALESMAN        1250       1250                                      
KING       PRESIDENT       5000       5000                                      
CLARK      MANAGER         2450       2450                                      
FORD       ANALYST         3000       3000                                      
SCOTT      ANALYST         3000       3000                                      

7 rows selected.

SQL> SELECT E.ENAME, S."직책",E.SAL, S."최소" FROM EMP E, (SELECT JOB "직책", COUNT(*) "인원수", MIN(SAL) "최소", MAX(SAL) "최대", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB) S WHERE E.JOB =S."직책" AND E.SAL < S."최소";

no rows selected

SQL> SELECT JOB "직책", COUNT(*) "인원수", MIN(SAL) "최소", MAX(SAL) "최대", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB;

직책          인원수       최소       최대       평균                           
--------- ---------- ---------- ---------- ----------                           
CLERK              4        800       1300     1037.5                           
SALESMAN           4       1250       1600       1400                           
PRESIDENT          1       5000       5000       5000                           
MANAGER            3       2450       2975    2758.33                           
ANALYST            2       3000       3000       3000                           

SQL> SELECT ENAME, SAL FROM EMP;

ENAME             SAL                                                           
---------- ----------                                                           
SMITH             800                                                           
ALLEN            1600                                                           
WARD             1250                                                           
JONES            2975                                                           
MARTIN           1250                                                           
BLAKE            2850                                                           
CLARK            2450                                                           
SCOTT            3000                                                           
KING             5000                                                           
TURNER           1500                                                           
ADAMS            1100                                                           

ENAME             SAL                                                           
---------- ----------                                                           
JAMES             950                                                           
FORD             3000                                                           
MILLER           1300                                                           

14 rows selected.

SQL> SELECT ENAME, SAL FROM EMP WHERE JOB='CLERK';

ENAME             SAL                                                           
---------- ----------                                                           
SMITH             800                                                           
ADAMS            1100                                                           
JAMES             950                                                           
MILLER           1300                                                           

SQL> SELECT E.ENAME, S."직책",E.SAL, S."평균" FROM EMP E, (SELECT JOB "직책", COUNT(*) "인원수", MIN(SAL) "최소", MAX(SAL) "최대", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB) S WHERE E.JOB =S."직책" AND E.SAL < S."평균";

ENAME      직책             SAL       평균                                      
---------- --------- ---------- ----------                                      
JAMES      CLERK            950     1037.5                                      
SMITH      CLERK            800     1037.5                                      
MARTIN     SALESMAN        1250       1400                                      
WARD       SALESMAN        1250       1400                                      
CLARK      MANAGER         2450    2758.33                                      

SQL> SELECT E.ENAME, S."직책",E.SAL, S."평균" FROM EMP E, (SELECT JOB "직책", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB) S WHERE E.JOB =S."직책" AND E.SAL < S."평균";

ENAME      직책             SAL       평균                                      
---------- --------- ---------- ----------                                      
JAMES      CLERK            950     1037.5                                      
SMITH      CLERK            800     1037.5                                      
MARTIN     SALESMAN        1250       1400                                      
WARD       SALESMAN        1250       1400                                      
CLARK      MANAGER         2450    2758.33                                      

SQL>  SELECT E.ENAME "사원명", S."직책",E.SAL "연봉", S."평균" FROM EMP E, (SELECT JOB "직책", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB) S WHERE E.JOB =S."직책" AND E.SAL < S."평균";

사원명     직책            연봉       평균                                      
---------- --------- ---------- ----------                                      
JAMES      CLERK            950     1037.5                                      
SMITH      CLERK            800     1037.5                                      
MARTIN     SALESMAN        1250       1400                                      
WARD       SALESMAN        1250       1400                                      
CLARK      MANAGER         2450    2758.33                                      

SQL> SELECT ROWNUM, E.ENAME "사원명", S."직책",E.SAL "연봉", S."평균" FROM EMP E, (SELECT JOB "직책", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB) S WHERE E.JOB =S."직책" AND E.SAL < S."평균";

    ROWNUM 사원명     직책            연봉       평균                           
---------- ---------- --------- ---------- ----------                           
         1 JAMES      CLERK            950     1037.5                           
         2 SMITH      CLERK            800     1037.5                           
         3 MARTIN     SALESMAN        1250       1400                           
         4 WARD       SALESMAN        1250       1400                           
         5 CLARK      MANAGER         2450    2758.33                           

SQL> SELECT ROWNUM, E.ENAME "사원명", S."직책",E.SAL "연봉", S."평균" FROM EMP E, (SELECT JOB "직책", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB) S WHERE E.JOB =S."직책" AND E.SAL < S."평균";

    ROWNUM 사원명     직책            연봉       평균                           
---------- ---------- --------- ---------- ----------                           
         1 JAMES      CLERK            950     1037.5                           
         2 SMITH      CLERK            800     1037.5                           
         3 MARTIN     SALESMAN        1250       1400                           
         4 WARD       SALESMAN        1250       1400                           
         5 CLARK      MANAGER         2450    2758.33                           

SQL> SELECT ROWNUM "순번", E.ENAME "사원명", S."직책",E.SAL "연봉", S."평균" FROM EMP E, (SELECT JOB "직책", ROUND(AVG(SAL), 2) "평균" FROM EMP GROUP BY JOB) S WHERE E.JOB =S."직책" AND E.SAL < S."평균";

      순번 사원명     직책            연봉       평균                           
---------- ---------- --------- ---------- ----------                           
         1 JAMES      CLERK            950     1037.5                           
         2 SMITH      CLERK            800     1037.5                           
         3 MARTIN     SALESMAN        1250       1400                           
         4 WARD       SALESMAN        1250       1400                           
         5 CLARK      MANAGER         2450    2758.33                           

SQL> SELECT * FROM EMP WHERE DEPT=10;
SELECT * FROM EMP WHERE DEPT=10
                        *
ERROR at line 1:
ORA-00904: "DEPT": invalid identifier 


SQL> SELECT * FROM EMP WHERE DEPTNO=10;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                

SQL> -- 기존 테이블 구조 + 10번 부서원의 정보도 함께 참조 테이블 생성
SQL> -- 테이블 명 EMP_10
SQL> CREATE TABLE EMP_10
  2  AS
  3  	SELECT *
  4  	FROM EMP
  5  	WHERE DEPTNO=10;

Table created.

SQL> SELECT * FROM EMP_10;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM       
---------- ---------- --------- ---------- -------- ---------- ----------       
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 81/06/09       2450                  
        10                                                                      
                                                                                
      7839 KING       PRESIDENT            81/11/17       5000                  
        10                                                                      
                                                                                
      7934 MILLER     CLERK           7782 82/01/23       1300                  
        10                                                                      
                                                                                

SQL> SELECT ROWNUM ENAME, JOB, SAL FROM (SELECT * FROM EMP ORDER BY SAL DESC) WHERE ROWNUM <= 5;

     ENAME JOB              SAL                                                 
---------- --------- ----------                                                 
         1 PRESIDENT       5000                                                 
         2 ANALYST         3000                                                 
         3 ANALYST         3000                                                 
         4 MANAGER         2975                                                 
         5 MANAGER         2850                                                 

SQL> SELECT ROWNUM, ENAME, JOB, SAL FROM (SELECT * FROM EMP ORDER BY SAL DESC) WHERE ROWNUM <= 5;

    ROWNUM ENAME      JOB              SAL                                      
---------- ---------- --------- ----------                                      
         1 KING       PRESIDENT       5000                                      
         2 SCOTT      ANALYST         3000                                      
         3 FORD       ANALYST         3000                                      
         4 JONES      MANAGER         2975                                      
         5 BLAKE      MANAGER         2850                                      

SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> -- 직원 테이블 일부 구조만 참조해서 테이블 생성
SQL> -- 부서번호, 사번, 이름, 급여 구조만을 갖는 테이블 생성
SQL> -- 테이블명: EMP_SIMPLE
SQL> CREATE TABLE EMP)SIMPLE
  2   AS
  3    SELECT *
  4    FROM EMP';
CREATE TABLE EMP)SIMPLE
                *
ERROR at line 1:
ORA-00922: missing or invalid option 


SQL> CREATE TABLE EMP_SIMPLE
  2   AS
  3    SELECT DEPTNO, EMPNO, ENAME, SAL
  4    FROM EMP;

Table created.

SQL> SELECT * FROM EMP_SIMPLE;

    DEPTNO      EMPNO ENAME             SAL                                     
---------- ---------- ---------- ----------                                     
        20       7369 SMITH             800                                     
        30       7499 ALLEN            1600                                     
        30       7521 WARD             1250                                     
        20       7566 JONES            2975                                     
        30       7654 MARTIN           1250                                     
        30       7698 BLAKE            2850                                     
        10       7782 CLARK            2450                                     
        20       7788 SCOTT            3000                                     
        10       7839 KING             5000                                     
        30       7844 TURNER           1500                                     
        20       7876 ADAMS            1100                                     

    DEPTNO      EMPNO ENAME             SAL                                     
---------- ---------- ---------- ----------                                     
        30       7900 JAMES             950                                     
        20       7902 FORD             3000                                     
        10       7934 MILLER           1300                                     

14 rows selected.

SQL> SELECT DEPTNO, EMPNO, ENAM, SAL FROM EMP
  2   WHERE NOT EXSITS(DEPNO, EMPNO, ENAME, SAL);
 WHERE NOT EXSITS(DEPNO, EMPNO, ENAME, SAL)
                                          *
ERROR at line 2:
ORA-00920: invalid relational operator 


SQL> EDIT
Wrote file afiedt.buf

  1  SELECT DEPTNO, EMPNO, ENAM, SAL FROM EMP
  2*  WHERE NOT EXSITS IN (DEPNO, EMPNO, ENAME, SAL)
SQL> /
 WHERE NOT EXSITS IN (DEPNO, EMPNO, ENAME, SAL)
                      *
ERROR at line 2:
ORA-00904: "DEPNO": invalid identifier 


SQL> EDIT
Wrote file afiedt.buf

  1  SELECT DEPTNO, EMPNO, ENAM, SAL FROM EMP
  2*  WHERE NOT EXSITS IN (DEPNO, EMPTNO, ENAME, SAL)
SQL> /
 WHERE NOT EXSITS IN (DEPNO, EMPTNO, ENAME, SAL)
                             *
ERROR at line 2:
ORA-00904: "EMPTNO": invalid identifier 


SQL> EDIT
Wrote file afiedt.buf

  1  SELECT DEPTNO, EMPNO, ENAM, SAL FROM EMP
  2*  WHERE NOT EXSITS IN (DEPNO, EMPNO, ENAME, SAL)
SQL> .
SQL> /
 WHERE NOT EXSITS IN (DEPNO, EMPNO, ENAME, SAL)
                      *
ERROR at line 2:
ORA-00904: "DEPNO": invalid identifier 


SQL> /
 WHERE NOT EXSITS IN (DEPNO, EMPNO, ENAME, SAL)
                      *
ERROR at line 2:
ORA-00904: "DEPNO": invalid identifier 


SQL> EDIT
Wrote file afiedt.buf

  1  SELECT DEPTNO, EMPNO, ENAME, SAL FROM EMP
  2* WHERE 1=2
SQL> SE
SP2-0042: unknown command "SE" - rest of line ignored.
SQL> 
SQL> 
SQL> /

no rows selected

SQL> LIST
  1  SELECT DEPTNO, EMPNO, ENAME, SAL FROM EMP
  2* WHERE 1=2
SQL> L
  1  SELECT DEPTNO, EMPNO, ENAME, SAL FROM EMP
  2* WHERE 1=2
SQL> DROP TABLE EMP_SAMPLE;
DROP TABLE EMP_SAMPLE
           *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SELECT * FROM TAB;

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
BONUS                          TABLE                                            
DEPT                           TABLE                                            
DUMMY                          TABLE                                            
EMP                            TABLE                                            
EMP_10                         TABLE                                            
EMP_SIMPLE                     TABLE                                            
MEMBERS                        TABLE                                            
SALGRADE                       TABLE                                            

8 rows selected.

SQL> DROP TABLE EMP_SIMPLE;

Table dropped.

SQL> CREATE TABLE EMP_SIMPLE
  2   AS
  3    SELECT DEMPTNO, EMPNO,ENAME, SAL
  4    FROM EMP;
  SELECT DEMPTNO, EMPNO,ENAME, SAL
         *
ERROR at line 3:
ORA-00904: "DEMPTNO": invalid identifier 


SQL> EDIT
Wrote file afiedt.buf

  1  CREATE TABLE EMP_SIMPLE
  2   AS
  3    SELECT DEPTNO, EMPNO,ENAME, SAL
  4*   FROM EMP
SQL> /

Table created.

SQL> SELECT * FROM EMP_SIMPLE;

    DEPTNO      EMPNO ENAME             SAL                                     
---------- ---------- ---------- ----------                                     
        20       7369 SMITH             800                                     
        30       7499 ALLEN            1600                                     
        30       7521 WARD             1250                                     
        20       7566 JONES            2975                                     
        30       7654 MARTIN           1250                                     
        30       7698 BLAKE            2850                                     
        10       7782 CLARK            2450                                     
        20       7788 SCOTT            3000                                     
        10       7839 KING             5000                                     
        30       7844 TURNER           1500                                     
        20       7876 ADAMS            1100                                     

    DEPTNO      EMPNO ENAME             SAL                                     
---------- ---------- ---------- ----------                                     
        30       7900 JAMES             950                                     
        20       7902 FORD             3000                                     
        10       7934 MILLER           1300                                     

14 rows selected.

SQL> -- 현 계정의 전체 테이블 목록 조회
SQL> SELECT * FROM TAB;

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
BONUS                          TABLE                                            
DEPT                           TABLE                                            
DUMMY                          TABLE                                            
EMP                            TABLE                                            
EMP_10                         TABLE                                            
EMP_SIMPLE                     TABLE                                            
MEMBERS                        TABLE                                            
SALGRADE                       TABLE                                            

8 rows selected.

SQL> DROP TABLE EMP_10'
  2  '
  3  ;
DROP TABLE EMP_10'
                 *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> DROP TABLE EMP_10;

Table dropped.

SQL> DROP TABLE EMP_SIMPLE;

Table dropped.

SQL> DESC MEMBERS;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 MEMBER_ID                                 NOT NULL VARCHAR2(30)
 MEMBER_PW                                 NOT NULL VARCHAR2(20)
 MEMBER_NAME                               NOT NULL VARCHAR2(20)
 MOBILE                                    NOT NULL CHAR(13)
 EMAIL                                     NOT NULL VARCHAR2(30)
 ENTRY_DATE                                NOT NULL VARCHAR2(10)
 GRADE                                              CHAR(1)
 MILEAGE                                            NUMBER(6)
 MANAGER                                            VARCHAR2(20)

SQL> -- 회원 테이블 구조 조회
SQL> DESC MEMBERS;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 MEMBER_ID                                 NOT NULL VARCHAR2(30)
 MEMBER_PW                                 NOT NULL VARCHAR2(20)
 MEMBER_NAME                               NOT NULL VARCHAR2(20)
 MOBILE                                    NOT NULL CHAR(13)
 EMAIL                                     NOT NULL VARCHAR2(30)
 ENTRY_DATE                                NOT NULL VARCHAR2(10)
 GRADE                                              CHAR(1)
 MILEAGE                                            NUMBER(6)
 MANAGER                                            VARCHAR2(20)

SQL> ALTER TABLE MEMBERS ADD COLUMN NICKNAME VARCHAR2(20) NOT NULL UNIQUE DEFAULT "노닉";
ALTER TABLE MEMBERS ADD COLUMN NICKNAME VARCHAR2(20) NOT NULL UNIQUE DEFAULT "노닉"
                        *
ERROR at line 1:
ORA-00904: : invalid identifier 


SQL> ALTER TABLE MEMBERS ADD COLUMN NICKNAME VARCHAR2(20) NOT NULL UNIQUE DEFAULT "노닉";
ALTER TABLE MEMBERS ADD COLUMN NICKNAME VARCHAR2(20) NOT NULL UNIQUE DEFAULT "노닉"
                        *
ERROR at line 1:
ORA-00904: : invalid identifier 


SQL> ALTER TABLE MEMBERS ADD COLUMN NICKNAME VARCHAR2(20) NOT NULL UNIQUE_KEY DEFAULT "노닉";
ALTER TABLE MEMBERS ADD COLUMN NICKNAME VARCHAR2(20) NOT NULL UNIQUE_KEY DEFAULT "노닉"
                        *
ERROR at line 1:
ORA-00904: : invalid identifier 


SQL> ALTER TABLE MEMBERS ADD COLUMN NICKNAME VARCHAR2(20) NOT NULL UNIQUE KEY DEFAULT "노닉";
ALTER TABLE MEMBERS ADD COLUMN NICKNAME VARCHAR2(20) NOT NULL UNIQUE KEY DEFAULT "노닉"
                        *
ERROR at line 1:
ORA-00904: : invalid identifier 


SQL> ALTER TABLE MEMBERS ADD COLUMN (NICKNAME VARCHAR2(20) NOT NULL UNIQUE KEY DEFAULT "노닉");
ALTER TABLE MEMBERS ADD COLUMN (NICKNAME VARCHAR2(20) NOT NULL UNIQUE KEY DEFAULT "노닉")
                        *
ERROR at line 1:
ORA-00904: : invalid identifier 


SQL> ALTER TABLE MEMBERS ADD (COLUMN NICKNAME VARCHAR2(20) NOT NULL UNIQUE KEY DEFAULT "노닉");
ALTER TABLE MEMBERS ADD (COLUMN NICKNAME VARCHAR2(20) NOT NULL UNIQUE KEY DEFAULT "노닉")
                         *
ERROR at line 1:
ORA-00904: : invalid identifier 


SQL> ALTER TABLE MEMBERS ADD (NICKNAME VARCHAR2(20) NOT NULL UNIQUE KEY DEFAULT "노닉");
ALTER TABLE MEMBERS ADD (NICKNAME VARCHAR2(20) NOT NULL UNIQUE KEY DEFAULT "노닉")
                                                               *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> ALTER TABLE MEMBERS ADD (NICKNAME VARCHAR2(20) NOT NULL UNIQUE DEFAULT "노닉");
ALTER TABLE MEMBERS ADD (NICKNAME VARCHAR2(20) NOT NULL UNIQUE DEFAULT "노닉")
                                                               *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> ALTER TABLE MEMBERS ADD (NICKNAME VARCHAR2(20) NOT NULL UNIQUE DEFAULT '노닉');
ALTER TABLE MEMBERS ADD (NICKNAME VARCHAR2(20) NOT NULL UNIQUE DEFAULT '노닉')
                                                               *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> ALTER TABLE MEMBERS ADD (NICKNAME VARCHAR2(20) NOT NULL UNIQUE default '노닉');
ALTER TABLE MEMBERS ADD (NICKNAME VARCHAR2(20) NOT NULL UNIQUE default '노닉')
                                                               *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> ALTER TABLE MEMBERS ADD (NICKNAME VARCHAR2(20) NOT NULL UNIQUE default '노닉');
ALTER TABLE MEMBERS ADD (NICKNAME VARCHAR2(20) NOT NULL UNIQUE default '노닉')
                                                               *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> ALTER TABLE MEMBERS ADD (NICKNAME VARCHAR2(20) NOT NULL UNIQUE);
ALTER TABLE MEMBERS ADD (NICKNAME VARCHAR2(20) NOT NULL UNIQUE)
            *
ERROR at line 1:
ORA-01758: table must be empty to add mandatory (NOT NULL) column 


SQL> ALTER TABLE MEMBERS ADD (NICKNAME VARCHAR2(20) UNIQUE);

Table altered.

SQL> desc members;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 MEMBER_ID                                 NOT NULL VARCHAR2(30)
 MEMBER_PW                                 NOT NULL VARCHAR2(20)
 MEMBER_NAME                               NOT NULL VARCHAR2(20)
 MOBILE                                    NOT NULL CHAR(13)
 EMAIL                                     NOT NULL VARCHAR2(30)
 ENTRY_DATE                                NOT NULL VARCHAR2(10)
 GRADE                                              CHAR(1)
 MILEAGE                                            NUMBER(6)
 MANAGER                                            VARCHAR2(20)
 NICKNAME                                           VARCHAR2(20)

SQL> select nickname from members;

NICKNAME                                                                        
--------------------                                                            
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                

6 rows selected.

SQL> alter table modify (nickname varchar2(10));
alter table modify (nickname varchar2(10))
            *
ERROR at line 1:
ORA-00903: invalid table name 


SQL> alter table members modify (nickname varchar2(10));

Table altered.

SQL> desc members;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 MEMBER_ID                                 NOT NULL VARCHAR2(30)
 MEMBER_PW                                 NOT NULL VARCHAR2(20)
 MEMBER_NAME                               NOT NULL VARCHAR2(20)
 MOBILE                                    NOT NULL CHAR(13)
 EMAIL                                     NOT NULL VARCHAR2(30)
 ENTRY_DATE                                NOT NULL VARCHAR2(10)
 GRADE                                              CHAR(1)
 MILEAGE                                            NUMBER(6)
 MANAGER                                            VARCHAR2(20)
 NICKNAME                                           VARCHAR2(10)

SQL> -- 연락처 정보를 5자리로 병경
SQL> alter table members modify (mobile char(5) not null);
alter table members modify (mobile char(5) not null)
                            *
ERROR at line 1:
ORA-01442: column to be modified to NOT NULL is already NOT NULL 


SQL> alter table members modify (mobile char(5));
alter table members modify (mobile char(5))
                            *
ERROR at line 1:
ORA-01441: cannot decrease column length because some value is too big 


SQL> alter table members modify (mobile char(length(members.manager));
alter table members modify (mobile char(length(members.manager))
                                        *
ERROR at line 1:
ORA-00910: specified length too long for its datatype 


SQL> alter table members modify (mobile varchar2(length(members.member_id));
alter table members modify (mobile varchar2(length(members.member_id))
                                            *
ERROR at line 1:
ORA-00910: specified length too long for its datatype 


SQL> alter table members modify (mobile varchar2(20));

Table altered.

SQL> alter table members drop (nickname);

Table altered.

SQL> alter table members modify (mobile char(13));

Table altered.

SQL> desc members;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 MEMBER_ID                                 NOT NULL VARCHAR2(30)
 MEMBER_PW                                 NOT NULL VARCHAR2(20)
 MEMBER_NAME                               NOT NULL VARCHAR2(20)
 MOBILE                                    NOT NULL CHAR(13)
 EMAIL                                     NOT NULL VARCHAR2(30)
 ENTRY_DATE                                NOT NULL VARCHAR2(10)
 GRADE                                              CHAR(1)
 MILEAGE                                            NUMBER(6)
 MANAGER                                            VARCHAR2(20)

SQL> commit;

Commit complete.

SQL> user_constraints members;
SP2-0734: unknown command beginning "user_const..." - rest of line ignored.
SQL> user_constraints members;
SP2-0734: unknown command beginning "user_const..." - rest of line ignored.
SQL> -- 현재 계정으 ㅣ모든 테이블에 대한 제약 조회
SQL> -- 데이블 이름, 제약타입, 제약이름 조회
SQL> constraints members;
SP2-0734: unknown command beginning "constraint..." - rest of line ignored.
SQL> desc user_constraints
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 OWNER                                              VARCHAR2(120)
 CONSTRAINT_NAME                           NOT NULL VARCHAR2(30)
 CONSTRAINT_TYPE                                    VARCHAR2(1)
 TABLE_NAME                                NOT NULL VARCHAR2(30)
 SEARCH_CONDITION                                   LONG
 R_OWNER                                            VARCHAR2(120)
 R_CONSTRAINT_NAME                                  VARCHAR2(30)
 DELETE_RULE                                        VARCHAR2(9)
 STATUS                                             VARCHAR2(8)
 DEFERRABLE                                         VARCHAR2(14)
 DEFERRED                                           VARCHAR2(9)
 VALIDATED                                          VARCHAR2(13)
 GENERATED                                          VARCHAR2(14)
 BAD                                                VARCHAR2(3)
 RELY                                               VARCHAR2(4)
 LAST_CHANGE                                        DATE
 INDEX_OWNER                                        VARCHAR2(30)
 INDEX_NAME                                         VARCHAR2(30)
 INVALID                                            VARCHAR2(7)
 VIEW_RELATED                                       VARCHAR2(14)

SQL> select table_name,constraint_name, constraint_type from user_constraints;

TABLE_NAME                     CONSTRAINT_NAME                C                 
------------------------------ ------------------------------ -                 
DEPT                           PK_DEPT                        P                 
EMP                            SYS_C006993                    C                 
EMP                            PK_EMP                         P                 
EMP                            FK_DEPTNO                      R                 
MEMBERS                        SYS_C007036                    C                 
MEMBERS                        SYS_C007037                    C                 
MEMBERS                        SYS_C007038                    C                 
MEMBERS                        SYS_C007039                    C                 
MEMBERS                        SYS_C007040                    C                 
MEMBERS                        SYS_C007041                    C                 
MEMBERS                        SYS_C007042                    P                 

11 rows selected.

SQL> desc constraints_type;
ERROR:
ORA-04043: object constraints_type does not exist 


SQL> SHOW TABLES;
SP2-0158: unknown SHOW option "TABLES"
SQL> SHOW TABLE;
SP2-0158: unknown SHOW option "TABLE"
SQL> SHWO DATABASE;
SP2-0734: unknown command beginning "SHWO DATAB..." - rest of line ignored.
SQL> SHWO DATABASES;
SP2-0734: unknown command beginning "SHWO DATAB..." - rest of line ignored.
SQL> CL SCR

SQL> DESC USER_CONSTRAINTS
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 OWNER                                              VARCHAR2(120)
 CONSTRAINT_NAME                           NOT NULL VARCHAR2(30)
 CONSTRAINT_TYPE                                    VARCHAR2(1)
 TABLE_NAME                                NOT NULL VARCHAR2(30)
 SEARCH_CONDITION                                   LONG
 R_OWNER                                            VARCHAR2(120)
 R_CONSTRAINT_NAME                                  VARCHAR2(30)
 DELETE_RULE                                        VARCHAR2(9)
 STATUS                                             VARCHAR2(8)
 DEFERRABLE                                         VARCHAR2(14)
 DEFERRED                                           VARCHAR2(9)
 VALIDATED                                          VARCHAR2(13)
 GENERATED                                          VARCHAR2(14)
 BAD                                                VARCHAR2(3)
 RELY                                               VARCHAR2(4)
 LAST_CHANGE                                        DATE
 INDEX_OWNER                                        VARCHAR2(30)
 INDEX_NAME                                         VARCHAR2(30)
 INVALID                                            VARCHAR2(7)
 VIEW_RELATED                                       VARCHAR2(14)

SQL> -- 회원 테이블 삭제
SQL> DROP TABLE MEMBERS IF EXISTS;
DROP TABLE MEMBERS IF EXISTS
                   *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> DROP TABLE MEMBERS;

Table dropped.

SQL> SELEC * TAB;
SP2-0734: unknown command beginning "SELEC * TA..." - rest of line ignored.
SQL> SELECT * TAB;
SELECT * TAB
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT * FROM TAB;

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
BONUS                          TABLE                                            
DEPT                           TABLE                                            
DUMMY                          TABLE                                            
EMP                            TABLE                                            
SALGRADE                       TABLE                                            

SQL> DROP TABLE MEMBERS;
DROP TABLE MEMBERS
           *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> DROP TABLE IF EXISTS MEMBERS;
DROP TABLE IF EXISTS MEMBERS
              *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> @members.ddl
DROP TABLE MEMBERS
           *
ERROR at line 1:
ORA-00942: table or view does not exist 



Table created.

SP2-0734: unknown command beginning "# 제약 지..." - rest of line ignored.
SQL> @members.ddl

Table dropped.


Table created.

SQL> 
SQL> 
SQL> desc members;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 MEMBER_ID                                 NOT NULL VARCHAR2(30)
 MEMBER_PW                                 NOT NULL VARCHAR2(20)
 MEMBER_NAME                               NOT NULL VARCHAR2(20)
 MOBILE                                    NOT NULL CHAR(13)
 EMAIL                                     NOT NULL VARCHAR2(30)
 ENTRY_DATE                                NOT NULL VARCHAR2(10)
 GRADE                                              CHAR(1)
 MILEAGE                                            NUMBER(6)
 MANAGER                                            VARCHAR2(20)

SQL> -- 회원테이블에 대한 제약조히
SQL> -- 데이블명, 제약타입, 제약 이름
SQL> desc user_constraints;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 OWNER                                              VARCHAR2(120)
 CONSTRAINT_NAME                           NOT NULL VARCHAR2(30)
 CONSTRAINT_TYPE                                    VARCHAR2(1)
 TABLE_NAME                                NOT NULL VARCHAR2(30)
 SEARCH_CONDITION                                   LONG
 R_OWNER                                            VARCHAR2(120)
 R_CONSTRAINT_NAME                                  VARCHAR2(30)
 DELETE_RULE                                        VARCHAR2(9)
 STATUS                                             VARCHAR2(8)
 DEFERRABLE                                         VARCHAR2(14)
 DEFERRED                                           VARCHAR2(9)
 VALIDATED                                          VARCHAR2(13)
 GENERATED                                          VARCHAR2(14)
 BAD                                                VARCHAR2(3)
 RELY                                               VARCHAR2(4)
 LAST_CHANGE                                        DATE
 INDEX_OWNER                                        VARCHAR2(30)
 INDEX_NAME                                         VARCHAR2(30)
 INVALID                                            VARCHAR2(7)
 VIEW_RELATED                                       VARCHAR2(14)

SQL> select table_name, constraint_name, constraint_type from user_constraint;
select table_name, constraint_name, constraint_type from user_constraint
                                                         *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select table_name, constraint_name, constraint_type from user_constraints;

TABLE_NAME                     CONSTRAINT_NAME                C                 
------------------------------ ------------------------------ -                 
DEPT                           PK_DEPT                        P                 
EMP                            SYS_C006993                    C                 
EMP                            PK_EMP                         P                 
EMP                            FK_DEPTNO                      R                 
MEMBERS                        PK_MEMBERID                    C                 
MEMBERS                        NN_MEMBERPW                    C                 
MEMBERS                        SYS_C007056                    C                 
MEMBERS                        UK_MOBILE                      C                 
MEMBERS                        SYS_C007058                    C                 
MEMBERS                        SYS_C007059                    C                 
MEMBERS                        SYS_C007060                    P                 

11 rows selected.

SQL> select table_name, constraint_name, constraint_type from user_constraints oder by 3;
select table_name, constraint_name, constraint_type from user_constraints oder by 3
                                                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select table_name, constraint_name, constraint_type from user_constraints order by 3;

TABLE_NAME                     CONSTRAINT_NAME                C                 
------------------------------ ------------------------------ -                 
MEMBERS                        NN_MEMBERPW                    C                 
MEMBERS                        SYS_C007059                    C                 
MEMBERS                        SYS_C007058                    C                 
MEMBERS                        UK_MOBILE                      C                 
EMP                            SYS_C006993                    C                 
MEMBERS                        PK_MEMBERID                    C                 
MEMBERS                        SYS_C007056                    C                 
EMP                            PK_EMP                         P                 
MEMBERS                        SYS_C007060                    P                 
DEPT                           PK_DEPT                        P                 
EMP                            FK_DEPTNO                      R                 

11 rows selected.

SQL> select table_name, constraint_name, constraint_type from user_constraints order by 2;

TABLE_NAME                     CONSTRAINT_NAME                C                 
------------------------------ ------------------------------ -                 
EMP                            FK_DEPTNO                      R                 
MEMBERS                        NN_MEMBERPW                    C                 
DEPT                           PK_DEPT                        P                 
EMP                            PK_EMP                         P                 
MEMBERS                        PK_MEMBERID                    C                 
EMP                            SYS_C006993                    C                 
MEMBERS                        SYS_C007056                    C                 
MEMBERS                        SYS_C007058                    C                 
MEMBERS                        SYS_C007059                    C                 
MEMBERS                        SYS_C007060                    P                 
MEMBERS                        UK_MOBILE                      C                 

11 rows selected.

SQL> select table_name, constraint_name, constraint_type from user_constraints order by 1;

TABLE_NAME                     CONSTRAINT_NAME                C                 
------------------------------ ------------------------------ -                 
DEPT                           PK_DEPT                        P                 
EMP                            SYS_C006993                    C                 
EMP                            FK_DEPTNO                      R                 
EMP                            PK_EMP                         P                 
MEMBERS                        SYS_C007058                    C                 
MEMBERS                        SYS_C007059                    C                 
MEMBERS                        UK_MOBILE                      C                 
MEMBERS                        SYS_C007056                    C                 
MEMBERS                        SYS_C007060                    P                 
MEMBERS                        PK_MEMBERID                    C                 
MEMBERS                        NN_MEMBERPW                    C                 

11 rows selected.

SQL> select table_name, constraint_name, constraint_type from user_constraint table_name='MEMBERS';
select table_name, constraint_name, constraint_type from user_constraint table_name='MEMBERS'
                                                                                   *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select table_name, constraint_name, constraint_type from user_constraint WHERE table_name='MEMBERS';
select table_name, constraint_name, constraint_type from user_constraint WHERE table_name='MEMBERS'
                                                         *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select table_name, constraint_name, constraint_type from user_constraintS WHERE table_name='MEMBERS';

TABLE_NAME                     CONSTRAINT_NAME                C                 
------------------------------ ------------------------------ -                 
MEMBERS                        PK_MEMBERID                    C                 
MEMBERS                        NN_MEMBERPW                    C                 
MEMBERS                        SYS_C007056                    C                 
MEMBERS                        UK_MOBILE                      C                 
MEMBERS                        SYS_C007058                    C                 
MEMBERS                        SYS_C007059                    C                 
MEMBERS                        SYS_C007060                    P                 

7 rows selected.

SQL> @members.ddl

Table dropped.


Table created.

SQL> select table_name, constraint_name, constraint_type from user_constraintS WHERE table_name='MEMBERS';

TABLE_NAME                     CONSTRAINT_NAME                C                 
------------------------------ ------------------------------ -                 
MEMBERS                        PK_MEMBERID                    C                 
MEMBERS                        NN_MEMBERPW                    C                 
MEMBERS                        SYS_C007063                    C                 
MEMBERS                        SYS_C007064                    C                 
MEMBERS                        SYS_C007065                    C                 
MEMBERS                        SYS_C007066                    C                 
MEMBERS                        SYS_C007067                    P                 
MEMBERS                        UK_MOBILE                      U                 

8 rows selected.

SQL> drop table members;

Table dropped.

SQL> @members.ddl
DROP TABLE MEMBERS
           *
ERROR at line 1:
ORA-00942: table or view does not exist 



Table created.

ALTER TABLE MEMBERS ADD( CONSTRAINT PRIMARY KEY(ID,MOBILE))
                                               *
ERROR at line 1:
ORA-00902: invalid datatype 


SQL> @members.ddl

Table dropped.


Table created.

ALTER TABLE MEMBERS ADD( CONSTRAINT PRIMARY KEY(MEMBER_ID,MOBILE))
                                               *
ERROR at line 1:
ORA-00902: invalid datatype 


SQL> @members.ddl

Table dropped.


Table created.

ALTER TABLE MEMBERS ADD( CONSTRAINT PRIMARY KEY ON(MEMBER_ID,MOBILE))
                                                *
ERROR at line 1:
ORA-00902: invalid datatype 


SQL> @members.ddl

Table dropped.


Table created.

ALTER TABLE MEMBERS ADD( CONSTRAINT PRIMARY KEY ON (MEMBER_ID,MOBILE))
                                                *
ERROR at line 1:
ORA-00902: invalid datatype 


SQL> @members.ddl

Table dropped.


Table created.

ALTER TABLE MEMBERS ADD( CONSTRAINT PK_MEMBER_ID_MOBILE PRIMARY KEY (MEMBER_ID,MOBILE))
                                                        *
ERROR at line 1:
ORA-02260: table can have only one primary key 


SQL> @members.ddl

Table dropped.


Table created.

ALTER TABLE MEMBERS ADD( CONSTRAINT PK_MEMBER_ID_MOBILE PRIMARY KEY(MEMBER_ID,MOBILE))
                                                        *
ERROR at line 1:
ORA-02260: table can have only one primary key 


SQL> @members.ddl

Table dropped.

	CONSTRAINT PK_MEMBERID_MOBIL PRIMARY KEY(MEMBER_ID, MOBILE)
	                             *
ERROR at line 11:
ORA-02260: table can have only one primary key 


SP2-0042: unknown command ")" - rest of line ignored.
SQL> @members.ddl
DROP TABLE MEMBERS
           *
ERROR at line 1:
ORA-00942: table or view does not exist 


	CONSTRAINT PK_MEMBERID_MOBIL PRIMARY KEY(MEMBER_ID, MOBILE)
	                             *
ERROR at line 11:
ORA-02260: table can have only one primary key 


SQL> @members.ddl
DROP TABLE MEMBERS
           *
ERROR at line 1:
ORA-00942: table or view does not exist 



Table created.

SQL> @members.ddl

Table dropped.

	REM , CONSTRAINT PK_MEMBERID_MOBIL PRIMARY KEY(MEMBER_ID, MOBILE)
	*
ERROR at line 11:
ORA-00907: missing right parenthesis 


ALTER TABLE MEMBERS ADD (CONSTRAINT PK_MEMBER_ID_MOBILE PRIMARY KEY(MEMBER_ID,MOBILE))
*
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> @members.ddl
DROP TABLE MEMBERS
           *
ERROR at line 1:
ORA-00942: table or view does not exist 



Table created.


Table altered.

SQL> DESC MEMBERS;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 MEMBER_ID                                 NOT NULL VARCHAR2(30)
 MEMBER_PW                                 NOT NULL VARCHAR2(20)
 MEMBER_NAME                               NOT NULL VARCHAR2(20)
 MOBILE                                    NOT NULL CHAR(13)
 EMAIL                                     NOT NULL VARCHAR2(30)
 ENTRY_DATE                                NOT NULL VARCHAR2(10)
 GRADE                                              CHAR(1)
 MILEAGE                                            NUMBER(6)
 MANAGER                                            VARCHAR2(20)

SQL> SELECT TALBE_NAME, CONSTRAINT_TYPE, CONSTRAINT_NAME FROM USER_CONSTRAINTS WHERE TABLE_NAME='MEMBERS';
SELECT TALBE_NAME, CONSTRAINT_TYPE, CONSTRAINT_NAME FROM USER_CONSTRAINTS WHERE TABLE_NAME='MEMBERS'
       *
ERROR at line 1:
ORA-00904: "TALBE_NAME": invalid identifier 


SQL> SELECT TABLE_NAME, CONSTRAINT_TYPE, CONSTRAINT_NAME FROM USER_CONSTRAINTS WHERE TABLE_NAME='MEMBERS';

TABLE_NAME                     C CONSTRAINT_NAME                                
------------------------------ - ------------------------------                 
MEMBERS                        C SYS_C007124                                    
MEMBERS                        C NN_MEMBERPW                                    
MEMBERS                        C SYS_C007126                                    
MEMBERS                        C SYS_C007127                                    
MEMBERS                        C SYS_C007128                                    
MEMBERS                        C SYS_C007129                                    
MEMBERS                        P PK_MEMBER_ID_MOBILE                            

7 rows selected.

SQL> @members.ddl

Table dropped.


Table created.


Table altered.


Table altered.


Table altered.


no rows selected

SQL> @members.ddl

Table dropped.


Table created.


Table altered.


Table altered.


Table altered.


TABLE_NAME                     C CONSTRAINT_NAME                                
------------------------------ - ------------------------------                 
MEMBERS                        C SYS_C007140                                    
MEMBERS                        C NN_MEMBERPW                                    
MEMBERS                        C SYS_C007142                                    
MEMBERS                        C SYS_C007143                                    
MEMBERS                        C SYS_C007144                                    
MEMBERS                        C SYS_C007145                                    
MEMBERS                        P PK_MEMBERID_MOBILE                             
MEMBERS                        U UK_MOBILE                                      
MEMBERS                        U UK_EMAIL                                       

9 rows selected.

SQL> DESC MEMBERS
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 MEMBER_ID                                 NOT NULL VARCHAR2(30)
 MEMBER_PW                                 NOT NULL VARCHAR2(20)
 MEMBER_NAME                               NOT NULL VARCHAR2(20)
 MOBILE                                    NOT NULL CHAR(13)
 EMAIL                                     NOT NULL VARCHAR2(30)
 ENTRY_DATE                                NOT NULL VARCHAR2(10)
 GRADE                                              CHAR(1)
 MILEAGE                                            NUMBER(6)
 MANAGER                                            VARCHAR2(20)

SQL> DESC MEMBERS A
Usage: DESCRIBE [schema.]object[@db_link]
SQL> DESC MEMBERS -A;
Usage: DESCRIBE [schema.]object[@db_link]
SQL> DESC MEMBERS;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 MEMBER_ID                                 NOT NULL VARCHAR2(30)
 MEMBER_PW                                 NOT NULL VARCHAR2(20)
 MEMBER_NAME                               NOT NULL VARCHAR2(20)
 MOBILE                                    NOT NULL CHAR(13)
 EMAIL                                     NOT NULL VARCHAR2(30)
 ENTRY_DATE                                NOT NULL VARCHAR2(10)
 GRADE                                              CHAR(1)
 MILEAGE                                            NUMBER(6)
 MANAGER                                            VARCHAR2(20)

SQL> commit;

Commit complete.

SQL> exitexitexitexit
SP2-0734: unknown command beginning "exitexitex..." - rest of line ignored.
SQL> exit
