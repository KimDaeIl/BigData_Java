
SQL> -- ��ü ȸ�� ���ڵ� ����
SQL> delete members;

1 row deleted.

SQL> -- ȸ�� �ʱ�ȭ ���ڵ� �߰�
SQL> insert into members
  2  values('user01', 'password01', 'ȫ�浿', '010-1234-1111', 'user01@work.com', '2017/05/10', 'G', 1000, null);

1 row created.

SQL> 
SQL> insert into members
  2  values('user02', 'password02', '������', '010-1234-1112', 'user02@work.com', '2017/05/11', 'G', 2000, null);

1 row created.

SQL> 
SQL> insert into members
  2  values('user03', 'password03', '�̼���', '010-1234-1113', 'user03@work.com', '2017/05/12', 'G', 3000, null);

1 row created.

SQL> 
SQL> insert into members
  2  values('suser01', 'password01', '������', '010-1111-1111', 'suser01@work.com', '2017/03/01', 'S', null, '���߱�');

1 row created.

SQL> 
SQL> insert into members
  2  values('suser02', 'password02', '������', '010-1111-1112', 'suser02@work.com', '2017/03/02', 'S', null, '������');

1 row created.

SQL> 
SQL> insert into members
  2  values('auser01', 'password01', '������', '010-1234-1111', 'Auser01@work.com', '2017/04/21', 'A', null, null);

1 row created.

SQL> 
SQL> -- ��ü �ʱ�ȭ ȸ�� ��ȸ
SQL> select * from members;

MEMBER_ID                                                    MEMBER_PW                                MEMBER_NAME                              MOBILE                     EMAIL                                                        ENTRY_DATE           GR    MILEAGE                                   
------------------------------------------------------------ ---------------------------------------- ---------------------------------------- -------------------------- ------------------------------------------------------------ -------------------- -- ----------                                   
MANAGER                                                                                                                                                                                                                                                                                                     
------------------------------------------------------------                                                                                                                                                                                                                                                
user01                                                       password01                               ȫ�浿                                   010-1234-1111              user01@work.com                                              2017/05/10           G        1000                                   
                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                            
user02                                                       password02                               ������                                   010-1234-1112              user02@work.com                                              2017/05/11           G        2000                                   
                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                            
user03                                                       password03                               �̼���                                   010-1234-1113              user03@work.com                                              2017/05/12           G        3000                                   
                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                            
suser01                                                      password01                               ������                                   010-1111-1111              suser01@work.com                                             2017/03/01           S                                               
���߱�                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                            
suser02                                                      password02                               ������                                   010-1111-1112              suser02@work.com                                             2017/03/02           S                                               
������                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                            
auser01                                                      password01                               ������                                   010-1234-1111              Auser01@work.com                                             2017/04/21           A                                               
                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                            

6 rows selected.

SQL> spool off
SQL> -- ��üȸ�� ���̵�, �̸�, ����ó ��ȸ
SQL> select member_id, member_name, mobile from members;

MEMBER_ID                                                    MEMBER_NAME                              MOBILE                                                                                                                                                                                                
------------------------------------------------------------ ---------------------------------------- --------------------------                                                                                                                                                                            
user01                                                       ȫ�浿                                   010-1234-1111                                                                                                                                                                                         
user02                                                       ������                                   010-1234-1112                                                                                                                                                                                         
user03                                                       �̼���                                   010-1234-1113                                                                                                                                                                                         
suser01                                                      ������                                   010-1111-1111                                                                                                                                                                                         
suser02                                                      ������                                   010-1111-1112                                                                                                                                                                                         
auser01                                                      ������                                   010-1234-1111                                                                                                                                                                                         

6 rows selected.

SQL> -- �÷� ���� ��� ��ȸ
SQL> select member_id "ȸ�� ���̵�", member_name "ȸ�� �̸�", mobile ����ó from members;

ȸ�� ���̵�                                                  ȸ�� �̸�                                ����ó                                                                                                                                                                                                
------------------------------------------------------------ ---------------------------------------- --------------------------                                                                                                                                                                            
user01                                                       ȫ�浿                                   010-1234-1111                                                                                                                                                                                         
user02                                                       ������                                   010-1234-1112                                                                                                                                                                                         
user03                                                       �̼���                                   010-1234-1113                                                                                                                                                                                         
suser01                                                      ������                                   010-1111-1111                                                                                                                                                                                         
suser02                                                      ������                                   010-1111-1112                                                                                                                                                                                         
auser01                                                      ������                                   010-1234-1111                                                                                                                                                                                         

6 rows selected.

SQL> spool off
