SQL> -- 회원테이블 스키마 구조 : 부모테이블
SQL> desc members;
 Name              Null?    Type
 ----------------- -------- ------------
 MEMBER_ID         NOT NULL VARCHAR2(30)
 MEMBER_PW         NOT NULL VARCHAR2(20)
 MEMBER_NAME       NOT NULL VARCHAR2(20)
 MOBILE            NOT NULL CHAR(13)
 EMAIL             NOT NULL VARCHAR2(30)
 ENTRY_DATE        NOT NULL CHAR(10)
 GRADE             NOT NULL CHAR(1)
 MILEAGE                    NUMBER(6)
 MANAGER                    VARCHAR2(30)

SQL> -- 공지테이블 스키마 구조 : 자식테이블
SQL> desc notices;
 Name              Null?    Type
 ----------------- -------- ------------
 NOTICE_NO         NOT NULL NUMBER(4)
 TITLE             NOT NULL VARCHAR2(50)
 WRITER            NOT NULL VARCHAR2(30)
 WRITE_DATE        NOT NULL DATE
 HIT_COUNT         NOT NULL NUMBER(4)
 CONTENT                    VARCHAR2(100
                            )

SQL> spool off
SQL> -- 제약 조회
SQL> -- user_constraints
SQL> -- user_cons_columns
SQL> 
SQL> desc user_cons_columns
 Name                                                                                                                                                                          Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------------------------------------------------------
 OWNER                                                                                                                                                                         NOT NULL VARCHAR2(30)
 CONSTRAINT_NAME                                                                                                                                                               NOT NULL VARCHAR2(30)
 TABLE_NAME                                                                                                                                                                    NOT NULL VARCHAR2(30)
 COLUMN_NAME                                                                                                                                                                            VARCHAR2(4000)
 POSITION                                                                                                                                                                               NUMBER

SQL> -- 회원, 공지테이블 제약이름, 제약컬럼 조회
SQL> select table_name, constraint_name, column_name
  2  from user_cons_columns
  3  where table_name in ('MEMBERS', 'NOTICES')
  4  order by table_name;

TABLE_NAME                     CONSTRAINT_NAME                                                                                                                                                                                                                                                              
------------------------------ ------------------------------                                                                                                                                                                                                                                               
COLUMN_NAME                                                                                                                                                                                                                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
MEMBERS                        SYS_C007042                                                                                                                                                                                                                                                                  
MEMBER_NAME                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                            
MEMBERS                        SYS_C007043                                                                                                                                                                                                                                                                  
MOBILE                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                            
MEMBERS                        SYS_C007041                                                                                                                                                                                                                                                                  
MEMBER_PW                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                            
MEMBERS                        UK_EMAIL                                                                                                                                                                                                                                                                     
EMAIL                                                                                                                                                                                                                                                                                                       
                                                                                                                                                                                                                                                                                                            
MEMBERS                        UK_MOBILE                                                                                                                                                                                                                                                                    
MOBILE                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                            
MEMBERS                        PK_MEMBERS_MEMBERID                                                                                                                                                                                                                                                          
MEMBER_ID                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                            
MEMBERS                        SYS_C007046                                                                                                                                                                                                                                                                  
GRADE                                                                                                                                                                                                                                                                                                       
                                                                                                                                                                                                                                                                                                            
MEMBERS                        SYS_C007044                                                                                                                                                                                                                                                                  
EMAIL                                                                                                                                                                                                                                                                                                       
                                                                                                                                                                                                                                                                                                            
MEMBERS                        SYS_C007045                                                                                                                                                                                                                                                                  
ENTRY_DATE                                                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                                                            
NOTICES                        SYS_C007052                                                                                                                                                                                                                                                                  
WRITE_DATE                                                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                                                            
NOTICES                        SYS_C007051                                                                                                                                                                                                                                                                  
WRITER                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                            
NOTICES                        PK_NOTICES_NOTICENO                                                                                                                                                                                                                                                          
NOTICE_NO                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                            
NOTICES                        SYS_C007050                                                                                                                                                                                                                                                                  
TITLE                                                                                                                                                                                                                                                                                                       
                                                                                                                                                                                                                                                                                                            
NOTICES                        SYS_C007053                                                                                                                                                                                                                                                                  
HIT_COUNT                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                            
NOTICES                        FK_NOTICES_WRITER                                                                                                                                                                                                                                                            
WRITER                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                            
SQL> spool off
