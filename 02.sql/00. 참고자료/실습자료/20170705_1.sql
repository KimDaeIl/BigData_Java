SQL>  SELECT * FROM members;

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user01
password01
홍길동                                   010-1234-1111

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user01@work.com
2017/05/10           G        1000


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user02
password01
강감찬                                   010-1234-1112

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user02@work.com
2017/05/11           G        1000


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user03
password01
이순신                                   010-1234-1113

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user03@work.com
2017/05/12           G        1000


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
suser01
password01
유관순                                   010-1111-1111

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
suser01@work.com
2017/03/01           S           0 송중기


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
suser02
password02
김유신                                   010-1111-1112

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
suser02@work.com
2017/03/02           S           0 송혜교


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
auser01
password01
박재형                                   010-1234-1111

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
auser01@work.com
2017/04/21           A           0


6 rows selected.

SQL>  -- members 테이블의 모든 튜플 조회
SQL>  select * from members;

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user01
password01
홍길동                                   010-1234-1111

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user01@work.com
2017/05/10           G        1000


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user02
password01
강감찬                                   010-1234-1112

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user02@work.com
2017/05/11           G        1000


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user03
password01
이순신                                   010-1234-1113

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user03@work.com
2017/05/12           G        1000


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
suser01
password01
유관순                                   010-1111-1111

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
suser01@work.com
2017/03/01           S           0 송중기


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
suser02
password02
김유신                                   010-1111-1112

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
suser02@work.com
2017/03/02           S           0 송혜교


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
auser01
password01
박재형                                   010-1234-1111

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
auser01@work.com
2017/04/21           A           0


6 rows selected.

SQL>  select member_id, mobile, member_name from members;

MEMBER_ID
------------------------------------------------------------
MOBILE                     MEMBER_NAME
-------------------------- ----------------------------------------
user01
010-1234-1111              홍길동

user02
010-1234-1112              강감찬

user03
010-1234-1113              이순신


MEMBER_ID
------------------------------------------------------------
MOBILE                     MEMBER_NAME
-------------------------- ----------------------------------------
suser01
010-1111-1111              유관순

suser02
010-1111-1112              김유신

auser01
010-1234-1111              박재형


6 rows selected.

SQL>
SQL>
SQL>   -- select 시 컬럼에 별명(alias) {컬럼명 ["컬럼 alias"]
SQL>  select member_id "회원 아이디", mobile "연락처" from members;

회원 아이디
------------------------------------------------------------
연락처
--------------------------
user01
010-1234-1111

user02
010-1234-1112

user03
010-1234-1113


회원 아이디
------------------------------------------------------------
연락처
--------------------------
suser01
010-1111-1111

suser02
010-1111-1112

auser01
010-1234-1111


6 rows selected.

SQL>  select member_id as "회원 아이디", mobile "연락처" from members;

회원 아이디
------------------------------------------------------------
연락처
--------------------------
user01
010-1234-1111

user02
010-1234-1112

user03
010-1234-1113


회원 아이디
------------------------------------------------------------
연락처
--------------------------
suser01
010-1111-1111

suser02
010-1111-1112

auser01
010-1234-1111


6 rows selected.

SQL>  select * from members;

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user01
password01
홍길동                                   010-1234-1111

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user01@work.com
2017/05/10           G        1000


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user02
password01
강감찬                                   010-1234-1112

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user02@work.com
2017/05/11           G        1000


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user03
password01
이순신                                   010-1234-1113

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
user03@work.com
2017/05/12           G        1000


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
suser01
password01
유관순                                   010-1111-1111

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
suser01@work.com
2017/03/01           S           0 송중기


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
suser02
password02
김유신                                   010-1111-1112

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
suser02@work.com
2017/03/02           S           0 송혜교


MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
auser01
password01
박재형                                   010-1234-1111

MEMBER_ID
------------------------------------------------------------
MEMBER_PW
----------------------------------------
MEMBER_NAME                              MOBILE
---------------------------------------- --------------------------
EMAIL
------------------------------------------------------------
ENTRY_DATE           GR    MILEAGE MANAGER
-------------------- -- ---------- ----------------------------------------
auser01@work.com
2017/04/21           A           0


6 rows selected.

SQL>  select * from emp
  2  ;

     EMPNO ENAME                JOB                       MGR HIREDATE
---------- -------------------- ------------------ ---------- --------
       SAL       COMM     DEPTNO
---------- ---------- ----------
      7369 SMITH                CLERK                    7902 80/12/17
       800                    20

      7499 ALLEN                SALESMAN                 7698 81/02/20
      1600        300         30

      7521 WARD                 SALESMAN                 7698 81/02/22
      1250        500         30


     EMPNO ENAME                JOB                       MGR HIREDATE
---------- -------------------- ------------------ ---------- --------
       SAL       COMM     DEPTNO
---------- ---------- ----------
      7566 JONES                MANAGER                  7839 81/04/02
      2975                    20

      7654 MARTIN               SALESMAN                 7698 81/09/28
      1250       1400         30

      7698 BLAKE                MANAGER                  7839 81/05/01
      2850                    30


     EMPNO ENAME                JOB                       MGR HIREDATE
---------- -------------------- ------------------ ---------- --------
       SAL       COMM     DEPTNO
---------- ---------- ----------
      7782 CLARK                MANAGER                  7839 81/06/09
      2450                    10

      7788 SCOTT                ANALYST                  7566 82/12/09
      3000                    20

      7839 KING                 PRESIDENT                     81/11/17
      5000                    10


     EMPNO ENAME                JOB                       MGR HIREDATE
---------- -------------------- ------------------ ---------- --------
       SAL       COMM     DEPTNO
---------- ---------- ----------
      7844 TURNER               SALESMAN                 7698 81/09/08
      1500          0         30

      7876 ADAMS                CLERK                    7788 83/01/12
      1100                    20

      7900 JAMES                CLERK                    7698 81/12/03
       950                    30


     EMPNO ENAME                JOB                       MGR HIREDATE
---------- -------------------- ------------------ ---------- --------
       SAL       COMM     DEPTNO
---------- ---------- ----------
      7902 FORD                 ANALYST                  7566 81/12/03
      3000                    20

      7934 MILLER               CLERK                    7782 82/01/23
      1300                    10


14 rows selected.

SQL>  desc emp;
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

SQL>  select comm from emp;

      COMM
----------

       300
       500

      1400




         0


      COMM
----------




14 rows selected.

SQL>  desc dept;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTNO                                    NOT NULL NUMBER(2)
 DNAME                                              VARCHAR2(14)
 LOC                                                VARCHAR2(13)

SQL>  selec e.ename,d.dname from emp e, dept d where e.deptno = d.deptno;
SP2-0734: unknown command beginning "selec e.en..." - rest of line ignored.
SQL>  select e.ename,d.dname from emp e, dept d where e.deptno = d.deptno;

ENAME                DNAME
-------------------- ----------------------------
SMITH                RESEARCH
ALLEN                SALES
WARD                 SALES
JONES                RESEARCH
MARTIN               SALES
BLAKE                SALES
CLARK                ACCOUNTING
SCOTT                RESEARCH
KING                 ACCOUNTING
TURNER               SALES
ADAMS                RESEARCH

ENAME                DNAME
-------------------- ----------------------------
JAMES                SALES
FORD                 RESEARCH
MILLER               ACCOUNTING

14 rows selected.

SQL>  select e.ename "직원명", d.dname as "부서명" from emp e, dept d where e.deptno = d.deptno;

직원명               부서명
-------------------- ----------------------------
SMITH                RESEARCH
ALLEN                SALES
WARD                 SALES
JONES                RESEARCH
MARTIN               SALES
BLAKE                SALES
CLARK                ACCOUNTING
SCOTT                RESEARCH
KING                 ACCOUNTING
TURNER               SALES
ADAMS                RESEARCH

직원명               부서명
-------------------- ----------------------------
JAMES                SALES
FORD                 RESEARCH
MILLER               ACCOUNTING

14 rows selected.

SQL>  select * from emp;

     EMPNO ENAME                JOB                       MGR HIREDATE
---------- -------------------- ------------------ ---------- --------
       SAL       COMM     DEPTNO
---------- ---------- ----------
      7369 SMITH                CLERK                    7902 80/12/17
       800                    20

      7499 ALLEN                SALESMAN                 7698 81/02/20
      1600        300         30

      7521 WARD                 SALESMAN                 7698 81/02/22
      1250        500         30


     EMPNO ENAME                JOB                       MGR HIREDATE
---------- -------------------- ------------------ ---------- --------
       SAL       COMM     DEPTNO
---------- ---------- ----------
      7566 JONES                MANAGER                  7839 81/04/02
      2975                    20

      7654 MARTIN               SALESMAN                 7698 81/09/28
      1250       1400         30

      7698 BLAKE                MANAGER                  7839 81/05/01
      2850                    30


     EMPNO ENAME                JOB                       MGR HIREDATE
---------- -------------------- ------------------ ---------- --------
       SAL       COMM     DEPTNO
---------- ---------- ----------
      7782 CLARK                MANAGER                  7839 81/06/09
      2450                    10

      7788 SCOTT                ANALYST                  7566 82/12/09
      3000                    20

      7839 KING                 PRESIDENT                     81/11/17
      5000                    10


     EMPNO ENAME                JOB                       MGR HIREDATE
---------- -------------------- ------------------ ---------- --------
       SAL       COMM     DEPTNO
---------- ---------- ----------
      7844 TURNER               SALESMAN                 7698 81/09/08
      1500          0         30

      7876 ADAMS                CLERK                    7788 83/01/12
      1100                    20

      7900 JAMES                CLERK                    7698 81/12/03
       950                    30


     EMPNO ENAME                JOB                       MGR HIREDATE
---------- -------------------- ------------------ ---------- --------
       SAL       COMM     DEPTNO
---------- ---------- ----------
      7902 FORD                 ANALYST                  7566 81/12/03
      3000                    20

      7934 MILLER               CLERK                    7782 82/01/23
      1300                    10


14 rows selected.

SQL>  select empno from emp;

     EMPNO
----------
      7369
      7499
      7521
      7566
      7654
      7698
      7782
      7788
      7839
      7844
      7876

     EMPNO
----------
      7900
      7902
      7934

14 rows selected.

SQL>  select empno, member_name, deptno from emp;
select empno, member_name, deptno from emp
              *
ERROR at line 1:
ORA-00904: "MEMBER_NAME": invalid identifier


SQL>  select empno, ename, deptno from emp;

     EMPNO ENAME                    DEPTNO
---------- -------------------- ----------
      7369 SMITH                        20
      7499 ALLEN                        30
      7521 WARD                         30
      7566 JONES                        20
      7654 MARTIN                       30
      7698 BLAKE                        30
      7782 CLARK                        10
      7788 SCOTT                        20
      7839 KING                         10
      7844 TURNER                       30
      7876 ADAMS                        20

     EMPNO ENAME                    DEPTNO
---------- -------------------- ----------
      7900 JAMES                        30
      7902 FORD                         20
      7934 MILLER                       10

14 rows selected.

SQL>  select empno, ename, deptno, job from emp;

     EMPNO ENAME                    DEPTNO JOB
---------- -------------------- ---------- ------------------
      7369 SMITH                        20 CLERK
      7499 ALLEN                        30 SALESMAN
      7521 WARD                         30 SALESMAN
      7566 JONES                        20 MANAGER
      7654 MARTIN                       30 SALESMAN
      7698 BLAKE                        30 MANAGER
      7782 CLARK                        10 MANAGER
      7788 SCOTT                        20 ANALYST
      7839 KING                         10 PRESIDENT
      7844 TURNER                       30 SALESMAN
      7876 ADAMS                        20 CLERK

     EMPNO ENAME                    DEPTNO JOB
---------- -------------------- ---------- ------------------
      7900 JAMES                        30 CLERK
      7902 FORD                         20 ANALYST
      7934 MILLER                       10 CLERK

14 rows selected.

SQL>  select empno, ename, deptno, job from emp order by job;

     EMPNO ENAME                    DEPTNO JOB
---------- -------------------- ---------- ------------------
      7788 SCOTT                        20 ANALYST
      7902 FORD                         20 ANALYST
      7934 MILLER                       10 CLERK
      7900 JAMES                        30 CLERK
      7369 SMITH                        20 CLERK
      7876 ADAMS                        20 CLERK
      7698 BLAKE                        30 MANAGER
      7566 JONES                        20 MANAGER
      7782 CLARK                        10 MANAGER
      7839 KING                         10 PRESIDENT
      7844 TURNER                       30 SALESMAN

     EMPNO ENAME                    DEPTNO JOB
---------- -------------------- ---------- ------------------
      7654 MARTIN                       30 SALESMAN
      7521 WARD                         30 SALESMAN
      7499 ALLEN                        30 SALESMAN

14 rows selected.

SQL>  desc dept;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTNO                                    NOT NULL NUMBER(2)
 DNAME                                              VARCHAR2(14)
 LOC                                                VARCHAR2(13)

SQL>  select ename from emp where depno is not null;
select ename from emp where depno is not null
                            *
ERROR at line 1:
ORA-00904: "DEPNO": invalid identifier


SQL>  select ename from emp where deptno is not null;

ENAME
--------------------
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
--------------------
JAMES
FORD
MILLER

14 rows selected.

SQL>  select ename,deptno from emp where deptno is not null order by deptno;

ENAME                    DEPTNO
-------------------- ----------
CLARK                        10
KING                         10
MILLER                       10
JONES                        20
FORD                         20
ADAMS                        20
SMITH                        20
SCOTT                        20
WARD                         30
TURNER                       30
ALLEN                        30

ENAME                    DEPTNO
-------------------- ----------
JAMES                        30
BLAKE                        30
MARTIN                       30

14 rows selected.

SQL>  select ename,deptno from emp where deptno is null order by deptno;

no rows selected

SQL>  select distnct deptno from emp;
select distnct deptno from emp
       *
ERROR at line 1:
ORA-00904: "DISTNCT": invalid identifier


SQL>  select distinct deptno from emp;

    DEPTNO
----------
        30
        20
        10

SQL>  select distinct deptno from emp order by eptno;
select distinct deptno from emp order by eptno
                                         *
ERROR at line 1:
ORA-00904: "EPTNO": invalid identifier


SQL>  select distinct deptno from emp order by deptno;

    DEPTNO
----------
        10
        20
        30

SQL>  select deptno, job from emp;

    DEPTNO JOB
---------- ------------------
        20 CLERK
        30 SALESMAN
        30 SALESMAN
        20 MANAGER
        30 SALESMAN
        30 MANAGER
        10 MANAGER
        20 ANALYST
        10 PRESIDENT
        30 SALESMAN
        20 CLERK

    DEPTNO JOB
---------- ------------------
        30 CLERK
        20 ANALYST
        10 CLERK

14 rows selected.

SQL>  select didtnct deptno, job from emp;
select didtnct deptno, job from emp
       *
ERROR at line 1:
ORA-00904: "DIDTNCT": invalid identifier


SQL>  select distinct deptno, job from emp;

    DEPTNO JOB
---------- ------------------
        20 CLERK
        30 SALESMAN
        20 MANAGER
        30 CLERK
        10 PRESIDENT
        30 MANAGER
        10 CLERK
        10 MANAGER
        20 ANALYST

9 rows selected.

SQL>  select distinct deptno, job from emp order by dempno;
select distinct deptno, job from emp order by dempno
                                              *
ERROR at line 1:
ORA-00904: "DEMPNO": invalid identifier


SQL>  select distinct deptno, job from emp order by deptno;

    DEPTNO JOB
---------- ------------------
        10 CLERK
        10 MANAGER
        10 PRESIDENT
        20 ANALYST
        20 CLERK
        20 MANAGER
        30 CLERK
        30 MANAGER
        30 SALESMAN

9 rows selected.

SQL>  desc emp;
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

SQL>  select hiredate, empno, ename from emp order by hiredate;

HIREDATE      EMPNO ENAME
-------- ---------- --------------------
80/12/17       7369 SMITH
81/02/20       7499 ALLEN
81/02/22       7521 WARD
81/04/02       7566 JONES
81/05/01       7698 BLAKE
81/06/09       7782 CLARK
81/09/08       7844 TURNER
81/09/28       7654 MARTIN
81/11/17       7839 KING
81/12/03       7900 JAMES
81/12/03       7902 FORD

HIREDATE      EMPNO ENAME
-------- ---------- --------------------
82/01/23       7934 MILLER
82/12/09       7788 SCOTT
83/01/12       7876 ADAMS

14 rows selected.

SQL>  select hiredate, empno, ename from emp order by hiredate desc;

HIREDATE      EMPNO ENAME
-------- ---------- --------------------
83/01/12       7876 ADAMS
82/12/09       7788 SCOTT
82/01/23       7934 MILLER
81/12/03       7902 FORD
81/12/03       7900 JAMES
81/11/17       7839 KING
81/09/28       7654 MARTIN
81/09/08       7844 TURNER
81/06/09       7782 CLARK
81/05/01       7698 BLAKE
81/04/02       7566 JONES

HIREDATE      EMPNO ENAME
-------- ---------- --------------------
81/02/22       7521 WARD
81/02/20       7499 ALLEN
80/12/17       7369 SMITH

14 rows selected.

SQL>  select hiredate, empno, ename from emp order by hiredate desc;

HIREDATE      EMPNO ENAME
-------- ---------- --------------------
83/01/12       7876 ADAMS
82/12/09       7788 SCOTT
82/01/23       7934 MILLER
81/12/03       7902 FORD
81/12/03       7900 JAMES
81/11/17       7839 KING
81/09/28       7654 MARTIN
81/09/08       7844 TURNER
81/06/09       7782 CLARK
81/05/01       7698 BLAKE
81/04/02       7566 JONES

HIREDATE      EMPNO ENAME
-------- ---------- --------------------
81/02/22       7521 WARD
81/02/20       7499 ALLEN
80/12/17       7369 SMITH

14 rows selected.

SQL>
SQL>
SQL>  select distinct deptno from emp order by deptno;

    DEPTNO
----------
        10
        20
        30

SQL>  select distinct deptno from emp order by deptno desc;

    DEPTNO
----------
        30
        20
        10

SQL>  select count(deptno) from emp group by demptno order by deptno desc;
select count(deptno) from emp group by demptno order by deptno desc
                                       *
ERROR at line 1:
ORA-00904: "DEMPTNO": invalid identifier


SQL>  select count(deptno) from emp group by deptno order by deptno desc;

COUNT(DEPTNO)
-------------
            6
            5
            3

SQL>  select sal from emp;

       SAL
----------
       800
      1600
      1250
      2975
      1250
      2850
      2450
      3000
      5000
      1500
      1100

       SAL
----------
       950
      3000
      1300

14 rows selected.

SQL>  select ename, sal from emp;

ENAME                       SAL
-------------------- ----------
SMITH                       800
ALLEN                      1600
WARD                       1250
JONES                      2975
MARTIN                     1250
BLAKE                      2850
CLARK                      2450
SCOTT                      3000
KING                       5000
TURNER                     1500
ADAMS                      1100

ENAME                       SAL
-------------------- ----------
JAMES                       950
FORD                       3000
MILLER                     1300

14 rows selected.

SQL>  select ename, sal+1 from emp;

ENAME                     SAL+1
-------------------- ----------
SMITH                       801
ALLEN                      1601
WARD                       1251
JONES                      2976
MARTIN                     1251
BLAKE                      2851
CLARK                      2451
SCOTT                      3001
KING                       5001
TURNER                     1501
ADAMS                      1101

ENAME                     SAL+1
-------------------- ----------
JAMES                       951
FORD                       3001
MILLER                     1301

14 rows selected.

SQL>  select ename, sal+(comm*2) as  from emp;

ENAME                SAL+(COMM*2)AS
-------------------- --------------
SMITH
ALLEN                          2200
WARD                           2250
JONES
MARTIN                         4050
BLAKE
CLARK
SCOTT
KING
TURNER                         1500
ADAMS

ENAME                SAL+(COMM*2)AS
-------------------- --------------
JAMES
FORD
MILLER

14 rows selected.

SQL>  select ename, sal, comm as  from emp;

ENAME                       SAL       COMM
-------------------- ---------- ----------
SMITH                       800
ALLEN                      1600        300
WARD                       1250        500
JONES                      2975
MARTIN                     1250       1400
BLAKE                      2850
CLARK                      2450
SCOTT                      3000
KING                       5000
TURNER                     1500          0
ADAMS                      1100

ENAME                       SAL       COMM
-------------------- ---------- ----------
JAMES                       950
FORD                       3000
MILLER                     1300

14 rows selected.

SQL>  select ename, sal, comm as  from emp order by comm;

ENAME                       SAL       COMM
-------------------- ---------- ----------
TURNER                     1500          0
ALLEN                      1600        300
WARD                       1250        500
MARTIN                     1250       1400
SCOTT                      3000
KING                       5000
ADAMS                      1100
JAMES                       950
FORD                       3000
MILLER                     1300
BLAKE                      2850

ENAME                       SAL       COMM
-------------------- ---------- ----------
JONES                      2975
SMITH                       800
CLARK                      2450

14 rows selected.

SQL>  select ename, sal, comm as  from emp order by comm desc;

ENAME                       SAL       COMM
-------------------- ---------- ----------
SMITH                       800
CLARK                      2450
FORD                       3000
JAMES                       950
ADAMS                      1100
JONES                      2975
BLAKE                      2850
MILLER                     1300
SCOTT                      3000
KING                       5000
MARTIN                     1250       1400

ENAME                       SAL       COMM
-------------------- ---------- ----------
WARD                       1250        500
ALLEN                      1600        300
TURNER                     1500          0

14 rows selected.

SQL>  select ename, sal, comm as  from emp where comm is not null order by comm desc;

ENAME                       SAL       COMM
-------------------- ---------- ----------
MARTIN                     1250       1400
WARD                       1250        500
ALLEN                      1600        300
TURNER                     1500          0

SQL>  select empno, ename cal, comm, (sal+comm)*.3 from emp;

     EMPNO CAL                        COMM (SAL+COMM)*.3
---------- -------------------- ---------- -------------
      7369 SMITH
      7499 ALLEN                       300           570
      7521 WARD                        500           525
      7566 JONES
      7654 MARTIN                     1400           795
      7698 BLAKE
      7782 CLARK
      7788 SCOTT
      7839 KING
      7844 TURNER                        0           450
      7876 ADAMS

     EMPNO CAL                        COMM (SAL+COMM)*.3
---------- -------------------- ---------- -------------
      7900 JAMES
      7902 FORD
      7934 MILLER

14 rows selected.

SQL>  select empno, ename cal, comm, (sal+comm)*.3 as "특별상여금" from emp;

     EMPNO CAL                        COMM 특별상여금
---------- -------------------- ---------- ----------
      7369 SMITH
      7499 ALLEN                       300        570
      7521 WARD                        500        525
      7566 JONES
      7654 MARTIN                     1400        795
      7698 BLAKE
      7782 CLARK
      7788 SCOTT
      7839 KING
      7844 TURNER                        0        450
      7876 ADAMS

     EMPNO CAL                        COMM 특별상여금
---------- -------------------- ---------- ----------
      7900 JAMES
      7902 FORD
      7934 MILLER

14 rows selected.

SQL>
SQL>  select empno, ename cal, comm, (sal+comm)*.3 as "특별상여금" from emp order by "특별상여금";

     EMPNO CAL                        COMM 특별상여금
---------- -------------------- ---------- ----------
      7844 TURNER                        0        450
      7521 WARD                        500        525
      7499 ALLEN                       300        570
      7654 MARTIN                     1400        795
      7788 SCOTT
      7839 KING
      7876 ADAMS
      7900 JAMES
      7902 FORD
      7934 MILLER
      7698 BLAKE

     EMPNO CAL                        COMM 특별상여금
---------- -------------------- ---------- ----------
      7566 JONES
      7369 SMITH
      7782 CLARK

14 rows selected.

SQL>  select empno, ename cal, comm, (sal+comm)*.3 as "특별상여금" from emp order by "특별상여금" desc;

     EMPNO CAL                        COMM 특별상여금
---------- -------------------- ---------- ----------
      7369 SMITH
      7782 CLARK
      7902 FORD
      7900 JAMES
      7876 ADAMS
      7566 JONES
      7698 BLAKE
      7934 MILLER
      7788 SCOTT
      7839 KING
      7654 MARTIN                     1400        795

     EMPNO CAL                        COMM 특별상여금
---------- -------------------- ---------- ----------
      7499 ALLEN                       300        570
      7521 WARD                        500        525
      7844 TURNER                        0        450

14 rows selected.

SQL>  select empno, ename cal, comm, (sal+comm)*.3 as "특별상여금" from emp where "특별상여금" is not null order by "특별상여금" desc;
select empno, ename cal, comm, (sal+comm)*.3 as "특별상여금" from emp where "특별상여금" is not null order by "특별상여금" desc
                                                                                 *
ERROR at line 1:
ORA-00904: "특별상여금": invalid identifier


SQL>  select empno, ename, sal, comm, (sal+comm)*.3 as "특별상여금" from emp where 5 is not null order by "특별상여금" desc;

     EMPNO ENAME                       SAL       COMM 특별상여금
---------- -------------------- ---------- ---------- ----------
      7369 SMITH                       800
      7782 CLARK                      2450
      7902 FORD                       3000
      7900 JAMES                       950
      7876 ADAMS                      1100
      7566 JONES                      2975
      7698 BLAKE                      2850
      7934 MILLER                     1300
      7788 SCOTT                      3000
      7839 KING                       5000
      7654 MARTIN                     1250       1400        795

     EMPNO ENAME                       SAL       COMM 특별상여금
---------- -------------------- ---------- ---------- ----------
      7499 ALLEN                      1600        300        570
      7521 WARD                       1250        500        525
      7844 TURNER                     1500          0        450

14 rows selected.

SQL>  select empno, ename, sal, comm, (sal+comm)*.3 as "특별상여금" from emp where "특별상여금" is not null order by "특별상여금" desc;
select empno, ename, sal, comm, (sal+comm)*.3 as "특별상여금" from emp where "특별상여금" is not null order by "특별상여금" desc
                                                                                  *
ERROR at line 1:
ORA-00904: "특별상여금": invalid identifier


SQL>  select empno, ename, sal, comm, (sal+comm)*.3 as "특별상여금" from emp where 4 is not null order by "특별상여금" desc;

     EMPNO ENAME                       SAL       COMM 특별상여금
---------- -------------------- ---------- ---------- ----------
      7369 SMITH                       800
      7782 CLARK                      2450
      7902 FORD                       3000
      7900 JAMES                       950
      7876 ADAMS                      1100
      7566 JONES                      2975
      7698 BLAKE                      2850
      7934 MILLER                     1300
      7788 SCOTT                      3000
      7839 KING                       5000
      7654 MARTIN                     1250       1400        795

     EMPNO ENAME                       SAL       COMM 특별상여금
---------- -------------------- ---------- ---------- ----------
      7499 ALLEN                      1600        300        570
      7521 WARD                       1250        500        525
      7844 TURNER                     1500          0        450

14 rows selected.

SQL>  select empno, ename, sal, comm, (sal+comm)*.3 as "특별상여금" from emp where (sal+comm)*.3 is not null order by "특별상여금" desc;

     EMPNO ENAME                       SAL       COMM 특별상여금
---------- -------------------- ---------- ---------- ----------
      7654 MARTIN                     1250       1400        795
      7499 ALLEN                      1600        300        570
      7521 WARD                       1250        500        525
      7844 TURNER                     1500          0        450

SQL>
SQL>  -- db는 one-base
SQL>  select empno, ename, sal, comm, (sal+comm)*.3 as "특별상여금" from emp where 5 is not null order by "특별상여금" desc;

     EMPNO ENAME                       SAL       COMM 특별상여금
---------- -------------------- ---------- ---------- ----------
      7369 SMITH                       800
      7782 CLARK                      2450
      7902 FORD                       3000
      7900 JAMES                       950
      7876 ADAMS                      1100
      7566 JONES                      2975
      7698 BLAKE                      2850
      7934 MILLER                     1300
      7788 SCOTT                      3000
      7839 KING                       5000
      7654 MARTIN                     1250       1400        795

     EMPNO ENAME                       SAL       COMM 특별상여금
---------- -------------------- ---------- ---------- ----------
      7499 ALLEN                      1600        300        570
      7521 WARD                       1250        500        525
      7844 TURNER                     1500          0        450

14 rows selected.

SQL>  select empno, ename, sal, comm, (sal+comm)*.3 as "특별상여금" from emp where (sal+comm)*.3 is not null order by "특별상여금" desc;

     EMPNO ENAME                       SAL       COMM 특별상여금
---------- -------------------- ---------- ---------- ----------
      7654 MARTIN                     1250       1400        795
      7499 ALLEN                      1600        300        570
      7521 WARD                       1250        500        525
      7844 TURNER                     1500          0        450

SQL>  select empno, ename, sal, comm, (sal+comm)*.3 as "특별상여금" from emp where 5 is not null order by "특별상여금" desc;

     EMPNO ENAME                       SAL       COMM 특별상여금
---------- -------------------- ---------- ---------- ----------
      7369 SMITH                       800
      7782 CLARK                      2450
      7902 FORD                       3000
      7900 JAMES                       950
      7876 ADAMS                      1100
      7566 JONES                      2975
      7698 BLAKE                      2850
      7934 MILLER                     1300
      7788 SCOTT                      3000
      7839 KING                       5000
      7654 MARTIN                     1250       1400        795

     EMPNO ENAME                       SAL       COMM 특별상여금
---------- -------------------- ---------- ---------- ----------
      7499 ALLEN                      1600        300        570
      7521 WARD                       1250        500        525
      7844 TURNER                     1500          0        450

14 rows selected.

SQL>  select empno, ename, sal, comm, (sal+comm)*.3  "특별상여금" from emp where 5 is not null order by "특별상여금" desc;

     EMPNO ENAME                       SAL       COMM 특별상여금
---------- -------------------- ---------- ---------- ----------
      7369 SMITH                       800
      7782 CLARK                      2450
      7902 FORD                       3000
      7900 JAMES                       950
      7876 ADAMS                      1100
      7566 JONES                      2975
      7698 BLAKE                      2850
      7934 MILLER                     1300
      7788 SCOTT                      3000
      7839 KING                       5000
      7654 MARTIN                     1250       1400        795

     EMPNO ENAME                       SAL       COMM 특별상여금
---------- -------------------- ---------- ---------- ----------
      7499 ALLEN                      1600        300        570
      7521 WARD                       1250        500        525
      7844 TURNER                     1500          0        450

14 rows selected.

SQL>  select empno, ename, sal, comm, (sal+comm)*.3 as "특별상여금" from emp where (sal+comm)*.3 is not null order by "특별상여금" desc;

     EMPNO ENAME                       SAL       COMM 특별상여금
---------- -------------------- ---------- ---------- ----------
      7654 MARTIN                     1250       1400        795
      7499 ALLEN                      1600        300        570
      7521 WARD                       1250        500        525
      7844 TURNER                     1500          0        450

SQL>
SQL>  -- 바이트 단위 길이
SQL>  select lengthb("abc def") "바이트 단위 길이", length('abc def') 길이 from dummy;
select lengthb("abc def") "바이트 단위 길이", length('abc def') 길이 from dummy
               *
ERROR at line 1:
ORA-00904: "abc def": invalid identifier


SQL>  select lengthb('abc def') "바이트 단위 길이", length('abc def') 길이 from dual;

바이트 단위 길이       길이
---------------- ----------
               7          7

SQL>  -- dual 테이블은 오라클 필수구문 호출을 위한 가상테이블
SQL>  select lengthb('abc def') "바이트 단위 길이", length('abc def') 길이 from dual;

바이트 단위 길이       길이
---------------- ----------
               7          7

SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>
SQL>  select lengthb("ㄱㄴㄷ") "바이트 단위 길이", length('ㄱㄴㄷ') 길이 from dummy;
select lengthb("ㄱㄴㄷ") "바이트 단위 길이", length('ㄱㄴㄷ') 길이 from dummy
               *
ERROR at line 1:
ORA-00904: "ㄱㄴㄷ": invalid identifier


SQL>  select lengthb('ㄱㄴㄷ') "바이트 단위 길이", length('ㄱㄴㄷ') 길이 from dummy;

바이트 단위 길이       길이
---------------- ----------
               9          3

SQL>  show all
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
lno 5
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
pno 1
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
sqlprompt "SQL>  "
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
SQL>  SELECT name, value$
  2  FROM sys.props$
  3  WHERE name = 'NLS_CHARACTERSET';
FROM sys.props$
         *
ERROR at line 2:
ORA-00942: table or view does not exist


SQL>  SELECT name, value$
  2  FROM sys.props$
  3  WHERE name = 'NLS_LANGUAGE';
FROM sys.props$
         *
ERROR at line 2:
ORA-00942: table or view does not exist


SQL>  cl scr

SQL>  cl scr

SQL>  show all
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
lno 5
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
pno 1
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
sqlcode 942
sqlcontinue "> "
sqlnumber ON
sqlpluscompatibility 11.2.0
sqlprefix "#" (hex 23)
sqlprompt "SQL>  "
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
SQL>  wpage 1
SP2-0042: unknown command "wpage 1" - rest of line ignored.
SQL>  ll ""
SP2-0042: unknown command "ll """ - rest of line ignored.
SQL>  mformat ""
SP2-0042: unknown command "mformat """ - rest of line ignored.
SQL>  mwidth 10
SP2-0042: unknown command "mwidth 10" - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL>  gesize 14
SP2-0042: unknown command "gesize 14" - rest of line ignored.
SQL>  USE is OFF
SP2-0042: unknown command "USE is OFF" - rest of line ignored.
SQL>  o 1
SP2-0042: unknown command "o 1" - rest of line ignored.
SQL>  csep WRAP
SP2-0042: unknown command "csep WRAP" - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL>  csepchar " " (hex 20)
SP2-0734: unknown command beginning "csepchar "..." - rest of line ignored.
SQL>  lease 1102000200
SP2-0734: unknown command beginning "lease 1102..." - rest of line ignored.
SQL>  pfooter OFF and is NULL
SP2-0734: unknown command beginning "pfooter OF..." - rest of line ignored.
SQL>  pheader OFF and is NULL
SP2-0734: unknown command beginning "pheader OF..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL>  curedcol is OFF
SP2-0734: unknown command beginning "curedcol i..." - rest of line ignored.
SQL>  rveroutput OFF
SP2-0734: unknown command beginning "rveroutput..." - rest of line ignored.
SQL>  iftinout INVISIBLE
SP2-0734: unknown command beginning "iftinout I..." - rest of line ignored.
SQL>  owmode OFF
SP2-0042: unknown command "owmode OFF" - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL>  ool ON
SP2-0042: unknown command "ool ON" - rest of line ignored.
SQL>  lblanklines OFF
SP2-0734: unknown command beginning "lblankline..." - rest of line ignored.
SQL>  lcase MIXED
SP2-0734: unknown command beginning "lcase MIXE..." - rest of line ignored.
SQL>  lcode 942
SP2-0042: unknown command "lcode 942" - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL>  lcontinue "> "
SP2-0734: unknown command beginning "lcontinue ..." - rest of line ignored.
SQL>  lnumber ON
SP2-0042: unknown command "lnumber ON" - rest of line ignored.
SQL>  lpluscompatibility 11.2.0
SP2-0734: unknown command beginning "lpluscompa..." - rest of line ignored.
SQL>  lprefix "#" (hex 23)
SP2-0734: unknown command beginning "lprefix "#..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL>
SQL>
SQL>  select * from nls_database_parameters where parameter like '%CHARACTERSET%';

PARAMETER
------------------------------------------------------------
VALUE
--------------------------------------------------------------------------------
NLS_CHARACTERSET
AL32UTF8

NLS_NCHAR_CHARACTERSET
AL16UTF16


SQL>
SQL>  exit
