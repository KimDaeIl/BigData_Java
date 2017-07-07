
SQL> -- 전체 회원 레코드 삭제
SQL> delete members;

1 row deleted.

SQL> -- 회원 초기화 레코드 추가
SQL> insert into members
  2  values('user01', 'password01', '홍길동', '010-1234-1111', 'user01@work.com', '2017/05/10', 'G', 1000, null);

1 row created.

SQL> 
SQL> insert into members
  2  values('user02', 'password02', '강감찬', '010-1234-1112', 'user02@work.com', '2017/05/11', 'G', 2000, null);

1 row created.

SQL> 
SQL> insert into members
  2  values('user03', 'password03', '이순신', '010-1234-1113', 'user03@work.com', '2017/05/12', 'G', 3000, null);

1 row created.

SQL> 
SQL> insert into members
  2  values('suser01', 'password01', '유관순', '010-1111-1111', 'suser01@work.com', '2017/03/01', 'S', null, '송중기');

1 row created.

SQL> 
SQL> insert into members
  2  values('suser02', 'password02', '김유신', '010-1111-1112', 'suser02@work.com', '2017/03/02', 'S', null, '송혜교');

1 row created.

SQL> 
SQL> insert into members
  2  values('auser01', 'password01', '박재형', '010-1234-1111', 'Auser01@work.com', '2017/04/21', 'A', null, null);

1 row created.

SQL> 
SQL> -- 전체 초기화 회원 조회
SQL> select * from members;

MEMBER_ID                                                    MEMBER_PW                                MEMBER_NAME                              MOBILE                     EMAIL                                                        ENTRY_DATE           GR    MILEAGE                                   
------------------------------------------------------------ ---------------------------------------- ---------------------------------------- -------------------------- ------------------------------------------------------------ -------------------- -- ----------                                   
MANAGER                                                                                                                                                                                                                                                                                                     
------------------------------------------------------------                                                                                                                                                                                                                                                
user01                                                       password01                               홍길동                                   010-1234-1111              user01@work.com                                              2017/05/10           G        1000                                   
                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                            
user02                                                       password02                               강감찬                                   010-1234-1112              user02@work.com                                              2017/05/11           G        2000                                   
                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                            
user03                                                       password03                               이순신                                   010-1234-1113              user03@work.com                                              2017/05/12           G        3000                                   
                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                            
suser01                                                      password01                               유관순                                   010-1111-1111              suser01@work.com                                             2017/03/01           S                                               
송중기                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                            
suser02                                                      password02                               김유신                                   010-1111-1112              suser02@work.com                                             2017/03/02           S                                               
송혜교                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                            
auser01                                                      password01                               박재형                                   010-1234-1111              Auser01@work.com                                             2017/04/21           A                                               
                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                            

6 rows selected.

SQL> spool off
SQL> -- 전체회원 아이디, 이름, 연락처 조회
SQL> select member_id, member_name, mobile from members;

MEMBER_ID                                                    MEMBER_NAME                              MOBILE                                                                                                                                                                                                
------------------------------------------------------------ ---------------------------------------- --------------------------                                                                                                                                                                            
user01                                                       홍길동                                   010-1234-1111                                                                                                                                                                                         
user02                                                       강감찬                                   010-1234-1112                                                                                                                                                                                         
user03                                                       이순신                                   010-1234-1113                                                                                                                                                                                         
suser01                                                      유관순                                   010-1111-1111                                                                                                                                                                                         
suser02                                                      김유신                                   010-1111-1112                                                                                                                                                                                         
auser01                                                      박재형                                   010-1234-1111                                                                                                                                                                                         

6 rows selected.

SQL> -- 컬럼 별명 사용 조회
SQL> select member_id "회원 아이디", member_name "회원 이름", mobile 연락처 from members;

회원 아이디                                                  회원 이름                                연락처                                                                                                                                                                                                
------------------------------------------------------------ ---------------------------------------- --------------------------                                                                                                                                                                            
user01                                                       홍길동                                   010-1234-1111                                                                                                                                                                                         
user02                                                       강감찬                                   010-1234-1112                                                                                                                                                                                         
user03                                                       이순신                                   010-1234-1113                                                                                                                                                                                         
suser01                                                      유관순                                   010-1111-1111                                                                                                                                                                                         
suser02                                                      김유신                                   010-1111-1112                                                                                                                                                                                         
auser01                                                      박재형                                   010-1234-1111                                                                                                                                                                                         

6 rows selected.

SQL> spool off
