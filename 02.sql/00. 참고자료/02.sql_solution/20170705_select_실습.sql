SQL> 
SQL> -- nvl, 변환 함수 등을 사용해서 조회
SQL> -- 직원 사번, 급여, 수당, 특별상여금 = (급여 + 수당) * 0.32
SQL> -- 기본 통화단위 표기, 천단위마다 컴마표기, 소수이하 반올림처리
SQL> -- 특별상여금이 높은 순서대로 조회
SQL> select empno, sal, comm, (sal + nvl(comm, 0)) * 0.32 from emp;

     EMPNO        SAL       COMM (SAL+NVL(COMM,0))*0.32                                                                                                                                                                                                                                                     
---------- ---------- ---------- ----------------------                                                                                                                                                                                                                                                     
      7369        800                               256                                                                                                                                                                                                                                                     
      7499       1600        300                    608                                                                                                                                                                                                                                                     
      7521       1250        500                    560                                                                                                                                                                                                                                                     
      7566       2975                               952                                                                                                                                                                                                                                                     
      7654       1250       1400                    848                                                                                                                                                                                                                                                     
      7698       2850                               912                                                                                                                                                                                                                                                     
      7782       2450                               784                                                                                                                                                                                                                                                     
      7788       3000                               960                                                                                                                                                                                                                                                     
      7839       5000                              1600                                                                                                                                                                                                                                                     
      7844       1500          0                    480                                                                                                                                                                                                                                                     
      7876       1100                               352                                                                                                                                                                                                                                                     
      7900        950                               304                                                                                                                                                                                                                                                     
      7902       3000                               960                                                                                                                                                                                                                                                     
      7934       1300                               416                                                                                                                                                                                                                                                     

14 rows selected.

SQL> select empno, sal, comm, to_char((sal + nvl(comm, 0)) * 0.32, 'L999,999') from emp;

     EMPNO        SAL       COMM TO_CHAR((SAL+NVL(C                                                                                                                                                                                                                                                         
---------- ---------- ---------- ------------------                                                                                                                                                                                                                                                         
      7369        800                         ￦256                                                                                                                                                                                                                                                         
      7499       1600        300              ￦608                                                                                                                                                                                                                                                         
      7521       1250        500              ￦560                                                                                                                                                                                                                                                         
      7566       2975                         ￦952                                                                                                                                                                                                                                                         
      7654       1250       1400              ￦848                                                                                                                                                                                                                                                         
      7698       2850                         ￦912                                                                                                                                                                                                                                                         
      7782       2450                         ￦784                                                                                                                                                                                                                                                         
      7788       3000                         ￦960                                                                                                                                                                                                                                                         
      7839       5000                       ￦1,600                                                                                                                                                                                                                                                         
      7844       1500          0              ￦480                                                                                                                                                                                                                                                         
      7876       1100                         ￦352                                                                                                                                                                                                                                                         
      7900        950                         ￦304                                                                                                                                                                                                                                                         
      7902       3000                         ￦960                                                                                                                                                                                                                                                         
      7934       1300                         ￦416                                                                                                                                                                                                                                                         

14 rows selected.

SQL> 
SQL> 
SQL> 
SQL> cl scr

SQL> select deptno, avg(sal)
  2  from emp
  3  group by deptno
  4  having avg(sal) >= 2000
  5  order by 2 desc;

    DEPTNO   AVG(SAL)                                                                                                                                                                                                                                                                                       
---------- ----------                                                                                                                                                                                                                                                                                       
        10 2916.66667                                                                                                                                                                                                                                                                                       
        20       2175                                                                                                                                                                                                                                                                                       

SQL> select deptno, avg(sal) 평균급여
  2  from emp
  3  group by deptno
  4  having 평균급여 >= 2000
  5  order by 평균급여 desc;
having 평균급여 >= 2000
       *
ERROR at line 4:
ORA-00904: "평균급여": invalid identifier 


SQL> cl scr

SQL> select job 직무, count(job) 인원수
  2  from emp
  3  where deptno in (10, 20)
  4  group by job
  5  order by job
  6  ;

직무          인원수                                                                                                                                                                                                                                                                                        
--------- ----------                                                                                                                                                                                                                                                                                        
ANALYST            2                                                                                                                                                                                                                                                                                        
CLERK              3                                                                                                                                                                                                                                                                                        
MANAGER            2                                                                                                                                                                                                                                                                                        
PRESIDENT          1                                                                                                                                                                                                                                                                                        

SQL> select job 직무, count(job) 인원수
  2  from emp
  3  group by job
  4  order by job;

직무          인원수                                                                                                                                                                                                                                                                                        
--------- ----------                                                                                                                                                                                                                                                                                        
ANALYST            2                                                                                                                                                                                                                                                                                        
CLERK              4                                                                                                                                                                                                                                                                                        
MANAGER            3                                                                                                                                                                                                                                                                                        
PRESIDENT          1                                                                                                                                                                                                                                                                                        
SALESMAN           4                                                                                                                                                                                                                                                                                        

SQL> -- 회사가 조금씩 사정이 좋아지고 있다.
SQL> -- 사장님께서 전직원의 급여를 올려주지 못하지만
SQL> -- 평균급여 이하의 직원들의 급여를 올려주라고하신다
SQL> -- 명단을 출력해보자
SQL> 
SQL> -- 1. 평균급여 조회
SQL> -- 2. 평균급여 이하인 직원의 정보 조회
SQL> 
SQL> -- 1. avg()
SQL> select avg(sal) from emp;

  AVG(SAL)                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
2073.21429                                                                                                                                                                                                                                                                                                  

SQL> -- 평균급여 결과를 보니 소수이..지저분하다. 사장님께 보고하려니 별로다
SQL> -- 담당자 임의데로 10미만 버림 처리해서 평균급여를 하려고한다.
SQL> select trunc(avg(sal), -1) from emp;

TRUNC(AVG(SAL),-1)                                                                                                                                                                                                                                                                                          
------------------                                                                                                                                                                                                                                                                                          
              2070                                                                                                                                                                                                                                                                                          

SQL> select * from emp
  2  where sal <= 2070;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                                                                                                                        
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                                                                                                                        
      7369 SMITH      CLERK           7902 80/12/17        800                    20                                                                                                                                                                                                                        
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30                                                                                                                                                                                                                        
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30                                                                                                                                                                                                                        
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30                                                                                                                                                                                                                        
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30                                                                                                                                                                                                                        
      7876 ADAMS      CLERK           7788 83/01/12       1100                    20                                                                                                                                                                                                                        
      7900 JAMES      CLERK           7698 81/12/03        950                    30                                                                                                                                                                                                                        
      7934 MILLER     CLERK           7782 82/01/23       1300                    10                                                                                                                                                                                                                        

8 rows selected.

SQL> select * from emp
  2  where sal <= (select avg(sal) from emp)
  3  ;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                                                                                                                        
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                                                                                                                        
      7369 SMITH      CLERK           7902 80/12/17        800                    20                                                                                                                                                                                                                        
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30                                                                                                                                                                                                                        
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30                                                                                                                                                                                                                        
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30                                                                                                                                                                                                                        
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30                                                                                                                                                                                                                        
      7876 ADAMS      CLERK           7788 83/01/12       1100                    20                                                                                                                                                                                                                        
      7900 JAMES      CLERK           7698 81/12/03        950                    30                                                                                                                                                                                                                        
      7934 MILLER     CLERK           7782 82/01/23       1300                    10                                                                                                                                                                                                                        

8 rows selected.

SQL> select deptno from emp where job in ('SALESMAN', 'ANALYST');

    DEPTNO                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
        30                                                                                                                                                                                                                                                                                                  
        30                                                                                                                                                                                                                                                                                                  
        30                                                                                                                                                                                                                                                                                                  
        20                                                                                                                                                                                                                                                                                                  
        30                                                                                                                                                                                                                                                                                                  
        20                                                                                                                                                                                                                                                                                                  

6 rows selected.

SQL> select DISTINCT deptno from emp where job in ('SALESMAN', 'ANALYST');

    DEPTNO                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
        30                                                                                                                                                                                                                                                                                                  
        20                                                                                                                                                                                                                                                                                                  

SQL> -- 1. 직무가 'SALESMAN', 'ANALYST' 인 직원중에서 평균급여 이하의 급여를 받는
SQL> -- 직원의 정보 조회
SQL> 
SQL> -- 1. 평균급여
SQL> select avg(sal) from emp;

  AVG(SAL)                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
2073.21429                                                                                                                                                                                                                                                                                                  

SQL> select * from emp where sal <= (select avg(sal) from emp);

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                                                                                                                        
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                                                                                                                        
      7369 SMITH      CLERK           7902 80/12/17        800                    20                                                                                                                                                                                                                        
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30                                                                                                                                                                                                                        
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30                                                                                                                                                                                                                        
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30                                                                                                                                                                                                                        
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30                                                                                                                                                                                                                        
      7876 ADAMS      CLERK           7788 83/01/12       1100                    20                                                                                                                                                                                                                        
      7900 JAMES      CLERK           7698 81/12/03        950                    30                                                                                                                                                                                                                        
      7934 MILLER     CLERK           7782 82/01/23       1300                    10                                                                                                                                                                                                                        

8 rows selected.

SQL> select * from emp where sal <= (select avg(sal) from emp)
  2  and job in ('SALESMAN', 'ANALYST');

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                                                                                                                        
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                                                                                                                        
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30                                                                                                                                                                                                                        
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30                                                                                                                                                                                                                        
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30                                                                                                                                                                                                                        
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30                                                                                                                                                                                                                        

SQL> select * from emp where sal <= (select avg(sal) from emp)
  2  and deptno in (select DISTINCT deptno from emp where job in ('SALESMAN', 'ANALYST'))
  3  ;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                                                                                                                        
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                                                                                                                        
      7900 JAMES      CLERK           7698 81/12/03        950                    30                                                                                                                                                                                                                        
      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30                                                                                                                                                                                                                        
      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30                                                                                                                                                                                                                        
      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30                                                                                                                                                                                                                        
      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30                                                                                                                                                                                                                        
      7876 ADAMS      CLERK           7788 83/01/12       1100                    20                                                                                                                                                                                                                        
      7369 SMITH      CLERK           7902 80/12/17        800                    20                                                                                                                                                                                                                        

7 rows selected.

SQL> select * from emp where sal <= (select avg(sal) from emp)
  2  and deptno = (select DISTINCT deptno from emp where job in ('SALESMAN', 'ANALYST'))
  3  ;
and deptno = (select DISTINCT deptno from emp where job in ('SALESMAN', 'ANALYST'))
              *
ERROR at line 2:
ORA-01427: single-row subquery returns more than one row 


SQL> -- 실습: 회사가 어려워졌다
SQL> -- 급여 상위 5명의 명단을 조회
SQL> -- 출력 형식 : 순번 사번 이름 급여
SQL> -- 힌트
SQL> -- select 구분 처리 순서
SQL> -- rownum
SQL> -- sub-query : where, select, from => 임시가상테이블(inline-view)
SQL> 
SQL> -- 1.
SQL> select empno, ename, sal from emp order by sal desc;

     EMPNO ENAME             SAL                                                                                                                                                                                                                                                                            
---------- ---------- ----------                                                                                                                                                                                                                                                                            
      7839 KING             5000                                                                                                                                                                                                                                                                            
      7902 FORD             3000                                                                                                                                                                                                                                                                            
      7788 SCOTT            3000                                                                                                                                                                                                                                                                            
      7566 JONES            2975                                                                                                                                                                                                                                                                            
      7698 BLAKE            2850                                                                                                                                                                                                                                                                            
      7782 CLARK            2450                                                                                                                                                                                                                                                                            
      7499 ALLEN            1600                                                                                                                                                                                                                                                                            
      7844 TURNER           1500                                                                                                                                                                                                                                                                            
      7934 MILLER           1300                                                                                                                                                                                                                                                                            
      7521 WARD             1250                                                                                                                                                                                                                                                                            
      7654 MARTIN           1250                                                                                                                                                                                                                                                                            
      7876 ADAMS            1100                                                                                                                                                                                                                                                                            
      7900 JAMES             950                                                                                                                                                                                                                                                                            
      7369 SMITH             800                                                                                                                                                                                                                                                                            

14 rows selected.

SQL> select rownum, empno, ename, sal from emp order by sal desc;

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
        11       7876 ADAMS            1100                                                                                                                                                                                                                                                                 
        12       7900 JAMES             950                                                                                                                                                                                                                                                                 
         1       7369 SMITH             800                                                                                                                                                                                                                                                                 

14 rows selected.

SQL> select rownum, empno, ename, sal
  2  from emp
  3  where rownum <= 5
  4  order by sal desc
  5  ;

    ROWNUM      EMPNO ENAME             SAL                                                                                                                                                                                                                                                                 
---------- ---------- ---------- ----------                                                                                                                                                                                                                                                                 
         4       7566 JONES            2975                                                                                                                                                                                                                                                                 
         2       7499 ALLEN            1600                                                                                                                                                                                                                                                                 
         5       7654 MARTIN           1250                                                                                                                                                                                                                                                                 
         3       7521 WARD             1250                                                                                                                                                                                                                                                                 
         1       7369 SMITH             800                                                                                                                                                                                                                                                                 

SQL> select rownum, empno, ename, sal
  2  from (select * from emp order by sal desc)
  3  where rownum <= 5
  4  ;

    ROWNUM      EMPNO ENAME             SAL                                                                                                                                                                                                                                                                 
---------- ---------- ---------- ----------                                                                                                                                                                                                                                                                 
         1       7839 KING             5000                                                                                                                                                                                                                                                                 
         2       7788 SCOTT            3000                                                                                                                                                                                                                                                                 
         3       7902 FORD             3000                                                                                                                                                                                                                                                                 
         4       7566 JONES            2975                                                                                                                                                                                                                                                                 
         5       7698 BLAKE            2850                                                                                                                                                                                                                                                                 

SQL> select rownum, empno, ename, sal
  2  from (select rownum from emp order by sal desc)
  3  where rownum <= 5;
select rownum, empno, ename, sal
                             *
ERROR at line 1:
ORA-00904: "SAL": invalid identifier 


SQL> select rownum from emp order by sal desc;

    ROWNUM                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
         9                                                                                                                                                                                                                                                                                                  
        13                                                                                                                                                                                                                                                                                                  
         8                                                                                                                                                                                                                                                                                                  
         4                                                                                                                                                                                                                                                                                                  
         6                                                                                                                                                                                                                                                                                                  
         7                                                                                                                                                                                                                                                                                                  
         2                                                                                                                                                                                                                                                                                                  
        10                                                                                                                                                                                                                                                                                                  
        14                                                                                                                                                                                                                                                                                                  
         3                                                                                                                                                                                                                                                                                                  
         5                                                                                                                                                                                                                                                                                                  
        11                                                                                                                                                                                                                                                                                                  
        12                                                                                                                                                                                                                                                                                                  
         1                                                                                                                                                                                                                                                                                                  

14 rows selected.

SQL> 
SQL> -- 10번부서원의 정보를 조회
SQL> select * from emp where deptno=10;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                                                                                                                        
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                                                                                                                        
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10                                                                                                                                                                                                                        
      7839 KING       PRESIDENT            81/11/17       5000                    10                                                                                                                                                                                                                        
      7934 MILLER     CLERK           7782 82/01/23       1300                    10                                                                                                                                                                                                                        

SQL> -- 기존테이블 구조 + 10번 부서원들의 정보도 함께 참조 테이블 생성
SQL> -- 테이블명 emp_10
SQL> 
SQL> create table emp_10
  2  as
  3  select * from emp where deptno=10
  4  ;

Table created.

SQL> -- emp_10 테이블 구조 조회
SQL> desc emp_10;
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 EMPNO                                                                                                                                                                         NOT NULL NUMBER(4)
 ENAME                                                                                                                                                                                  VARCHAR2(10)
 JOB                                                                                                                                                                                    VARCHAR2(9)
 MGR                                                                                                                                                                                    NUMBER(4)
 HIREDATE                                                                                                                                                                               DATE
 SAL                                                                                                                                                                                    NUMBER(7,2)
 COMM                                                                                                                                                                                   NUMBER(7,2)
 DEPTNO                                                                                                                                                                                 NUMBER(2)

SQL> -- emp_10 레코드 조회
SQL> select * from emp_10;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                                                                                                                        
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                                                                                                                        
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10                                                                                                                                                                                                                        
      7839 KING       PRESIDENT            81/11/17       5000                    10                                                                                                                                                                                                                        
      7934 MILLER     CLERK           7782 82/01/23       1300                    10                                                                                                                                                                                                                        

SQL> cl scr

SQL> select * from emp_10;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                                                                                                                        
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                                                                                                                        
      7782 CLARK      MANAGER         7839 81/06/09       2450                    10                                                                                                                                                                                                                        
      7839 KING       PRESIDENT            81/11/17       5000                    10                                                                                                                                                                                                                        
      7934 MILLER     CLERK           7782 82/01/23       1300                    10                                                                                                                                                                                                                        

SQL> -- 직원테이블 일부 구조만 참조해서 테이블생성
SQL> -- 부서번호, 사번, 이름, 급여 구조만을 갖는 테이블 생성
SQL> -- 테이블명 : emp_simple
SQL> 
SQL> select deptno, empno, ename, sal from emp;

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
        30       7900 JAMES             950                                                                                                                                                                                                                                                                 
        20       7902 FORD             3000                                                                                                                                                                                                                                                                 
        10       7934 MILLER           1300                                                                                                                                                                                                                                                                 

14 rows selected.

SQL> select deptno, empno, ename, sal from emp
  2  where 1=2
  3  ;

no rows selected


SQL> create table emp_simple
  2  as
  3  select deptno, empno, ename, sal from emp
  4  where 1=2
  5  ;

Table created.

SQL> select * from emp_simple;

no rows selected

SQL> desc emp_simple;
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 DEPTNO                                                                                                                                                                                 NUMBER(2)
 EMPNO                                                                                                                                                                         NOT NULL NUMBER(4)
 ENAME                                                                                                                                                                                  VARCHAR2(10)
 SAL                                                                                                                                                                                    NUMBER(7,2)

SQL> -- 전체테이블 목록조회
SQL> select * from tab;

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

SQL> drop table emp_10;

Table dropped.

SQL> drop table emp_simple;

Table dropped.

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

SQL> -- 회원테이블 구조조회
SQL> desc members;
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 MEMBER_ID                                                                                                                                                                     NOT NULL VARCHAR2(30)
 MEMBER_PW                                                                                                                                                                     NOT NULL VARCHAR2(20)
 MEMBER_NAME                                                                                                                                                                   NOT NULL VARCHAR2(20)
 MOBILE                                                                                                                                                                        NOT NULL CHAR(13)
 EMAIL                                                                                                                                                                         NOT NULL VARCHAR2(30)
 ENTRY_DATE                                                                                                                                                                    NOT NULL CHAR(10)
 GRADE                                                                                                                                                                         NOT NULL CHAR(1)
 MILEAGE                                                                                                                                                                                NUMBER(6)
 MANAGER                                                                                                                                                                                VARCHAR2(30)

SQL> -- nickname 컬럼 추가 : 가변길이 20 중복불가
SQL> -- 회원테이블
SQL> 
SQL> alter table members
  2  add (nickname varchar2(2) unique);

Table altered.

SQL> desc members;
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 MEMBER_ID                                                                                                                                                                     NOT NULL VARCHAR2(30)
 MEMBER_PW                                                                                                                                                                     NOT NULL VARCHAR2(20)
 MEMBER_NAME                                                                                                                                                                   NOT NULL VARCHAR2(20)
 MOBILE                                                                                                                                                                        NOT NULL CHAR(13)
 EMAIL                                                                                                                                                                         NOT NULL VARCHAR2(30)
 ENTRY_DATE                                                                                                                                                                    NOT NULL CHAR(10)
 GRADE                                                                                                                                                                         NOT NULL CHAR(1)
 MILEAGE                                                                                                                                                                                NUMBER(6)
 MANAGER                                                                                                                                                                                VARCHAR2(30)
 NICKNAME                                                                                                                                                                               VARCHAR2(2)

SQL> -- nickname 컬럼의 길이를 10자리 변경
SQL> 
SQL> alter table members
  2  modify (nickname varchar2(10));

Table altered.

SQL> -- 연락처 정보를 길이 5자리로 변경
SQL> alter table members
  2  modify (mobile varchar2(5));
modify (mobile varchar2(5))
        *
ERROR at line 2:
ORA-01441: cannot decrease column length because some value is too big 


SQL> alter table members
  2  modify (mobile varchar2(20));

Table altered.

SQL> -- nickname 컬럼 삭제
SQL> alter table members
  2  drop column nickname;

Table altered.

SQL> -- 제약 관련 사용자 딕셔너리 구조 조회
SQL> -- user_constraints
SQL> desc user_constraints;
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 OWNER                                                                                                                                                                                  VARCHAR2(120)
 CONSTRAINT_NAME                                                                                                                                                               NOT NULL VARCHAR2(30)
 CONSTRAINT_TYPE                                                                                                                                                                        VARCHAR2(1)
 TABLE_NAME                                                                                                                                                                    NOT NULL VARCHAR2(30)
 SEARCH_CONDITION                                                                                                                                                                       LONG
 R_OWNER                                                                                                                                                                                VARCHAR2(120)
 R_CONSTRAINT_NAME                                                                                                                                                                      VARCHAR2(30)
 DELETE_RULE                                                                                                                                                                            VARCHAR2(9)
 STATUS                                                                                                                                                                                 VARCHAR2(8)
 DEFERRABLE                                                                                                                                                                             VARCHAR2(14)
 DEFERRED                                                                                                                                                                               VARCHAR2(9)
 VALIDATED                                                                                                                                                                              VARCHAR2(13)
 GENERATED                                                                                                                                                                              VARCHAR2(14)
 BAD                                                                                                                                                                                    VARCHAR2(3)
 RELY                                                                                                                                                                                   VARCHAR2(4)
 LAST_CHANGE                                                                                                                                                                            DATE
 INDEX_OWNER                                                                                                                                                                            VARCHAR2(30)
 INDEX_NAME                                                                                                                                                                             VARCHAR2(30)
 INVALID                                                                                                                                                                                VARCHAR2(7)
 VIEW_RELATED                                                                                                                                                                           VARCHAR2(14)

SQL> -- 현재계정의 모든테이블에 대한 제약조회
SQL> -- 테이블이름, 제약타입, 제약이름 조회
SQL> -- 테이블명 정렬 조회
SQL> 
SQL> select table_name, constraint_type, constraint_name
  2  from user_constraints
  3  order by table_name;

TABLE_NAME                     C CONSTRAINT_NAME                                                                                                                                                                                                                                                            
------------------------------ - ------------------------------                                                                                                                                                                                                                                             
DEPT                           P PK_DEPT                                                                                                                                                                                                                                                                    
EMP                            C SYS_C006992                                                                                                                                                                                                                                                                
EMP                            R FK_DEPTNO                                                                                                                                                                                                                                                                  
EMP                            P PK_EMP                                                                                                                                                                                                                                                                     
MEMBERS                        C SYS_C007006                                                                                                                                                                                                                                                                
MEMBERS                        C SYS_C007007                                                                                                                                                                                                                                                                
MEMBERS                        C SYS_C007005                                                                                                                                                                                                                                                                
MEMBERS                        C SYS_C007004                                                                                                                                                                                                                                                                
MEMBERS                        P SYS_C007008                                                                                                                                                                                                                                                                
MEMBERS                        C SYS_C007002                                                                                                                                                                                                                                                                
MEMBERS                        C SYS_C007003                                                                                                                                                                                                                                                                

11 rows selected.

SQL> 
SQL> -- 회원테이블 삭제
SQL> drop table members;

Table dropped.

SQL> create table members (
  2  	member_id varchar2(30) constraint PK_members_memberid primary key,
  3  	member_pw varchar2(20) constraint NN_MEMBERPW not null,
  4  	member_name varchar2(20) not null,
  5  	mobile char(13) constraint UK_MOBILE unique,
  6  	email varchar2(30) not null,
  7  	entry_date char(10) not null,
  8  	grade char(1) not null,
  9  	mileage number(6),
 10  	manager varchar2(30)
 11  );

Table created.

SQL> cl scr

SQL> -- 회원테이블에 대한 제약조회
SQL> -- 테이블명, 제약타입, 제약이름
SQL> select table_name, constraint_type, constraint_name
  2  from user_constraints
  3  where table_name = 'members'
  4  ;

no rows selected

SQL> select table_name, constraint_type, constraint_name
  2  from user_constraints
  3  where table_name = 'MEMBERS';

TABLE_NAME                     C CONSTRAINT_NAME                                                                                                                                                                                                                                                            
------------------------------ - ------------------------------                                                                                                                                                                                                                                             
MEMBERS                        C NN_MEMBERPW                                                                                                                                                                                                                                                                
MEMBERS                        C SYS_C007013                                                                                                                                                                                                                                                                
MEMBERS                        C SYS_C007014                                                                                                                                                                                                                                                                
MEMBERS                        C SYS_C007015                                                                                                                                                                                                                                                                
MEMBERS                        C SYS_C007016                                                                                                                                                                                                                                                                
MEMBERS                        P PK_MEMBERS_MEMBERID                                                                                                                                                                                                                                                        
MEMBERS                        U UK_MOBILE                                                                                                                                                                                                                                                                  

7 rows selected.

SQL> 
SQL> 
SQL> drop table members;

Table dropped.

SQL> create table members (
  2  	member_id varchar2(30) primary key,
  3  	member_pw varchar2(20) not null,
  4  	member_name varchar2(20) not null,
  5  	mobile char(13) primary key,
  6  	email varchar2(30) not null,
  7  	entry_date char(10) not null,
  8  	grade char(1) not null,
  9  	mileage number(6),
 10  	manager varchar2(30)
 11  );
	mobile char(13) primary key,
	                *
ERROR at line 5:
ORA-02260: table can have only one primary key 
=> 에러이유 : 다중컬럼의 식별키 지정은 컬럼레벨 지정 불가
=> 해결 : 테이블 레벨로 제약 지정해야함

SQL> create table members (
  2  	member_id varchar2(30),
  3  	member_pw varchar2(20) not null,
  4  	member_name varchar2(20) not null,
  5  	mobile char(13) not null,
  6  	email varchar2(30) not null,
  7  	entry_date char(10) not null,
  8  	grade char(1) not null,
  9  	mileage number(6),
 10  	manager varchar2(30),
 11  	constraint pk_members_memberid_mobile primary key (member_id, mobile)
 12  );

Table created.

SQL> drop table members;

Table dropped.

SQL> cl scr

SQL> create table members (
  2  	member_id varchar2(30),
  3  	member_pw varchar2(20) not null,
  4  	member_name varchar2(20) not null,
  5  	mobile char(13) not null,
  6  	email varchar2(30) not null,
  7  	entry_date char(10) not null,
  8  	grade char(1) not null,
  9  	mileage number(6),
 10  	manager varchar2(30)
 11  );

Table created.

SQL> 
SQL> -- 제약추가 테이블변경
SQL> alter table members
  2  add (constraint pk_members_memberid primary key (member_id));

Table altered.

SQL> 
SQL> alter table members
  2  add (constraint uk_mobile unique (mobile));

Table altered.

SQL> 
SQL> alter table members
  2  add (constraint uk_email unique (email));

Table altered.

SQL> select table_name, constraint_type, constraint_name
  2  from user_constraints
  3  where table_name in ('MEMBERS')
  4  ;

TABLE_NAME                     C CONSTRAINT_NAME                                                                                                                                                                                                                                                            
------------------------------ - ------------------------------                                                                                                                                                                                                                                             
MEMBERS                        C SYS_C007026                                                                                                                                                                                                                                                                
MEMBERS                        C SYS_C007027                                                                                                                                                                                                                                                                
MEMBERS                        C SYS_C007028                                                                                                                                                                                                                                                                
MEMBERS                        C SYS_C007029                                                                                                                                                                                                                                                                
MEMBERS                        C SYS_C007030                                                                                                                                                                                                                                                                
MEMBERS                        C SYS_C007031                                                                                                                                                                                                                                                                
MEMBERS                        P PK_MEMBERS_MEMBERID                                                                                                                                                                                                                                                        
MEMBERS                        U UK_MOBILE                                                                                                                                                                                                                                                                  
MEMBERS                        U UK_EMAIL                                                                                                                                                                                                                                                                   

9 rows selected.

SQL> EXIT;
