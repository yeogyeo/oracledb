--drop table member; --���̺� ����

--drop table customer;

create table member ( --���̺� �߰�
id varchar2(20),
pw varchar2(20),
name varchar2(30),
gender varchar2(1),
age number,
birth varchar2(13),
phone varchar2(13),
rdate date
);

--drop table member;

create table stuscore (
stuNum number(4), -- 9999
name varchar2(30),
kor number(3), --999
eng number(3),
math number(3),
total number(3),
avg number(5,2), -- ��5�ڸ�, �Ҽ��� 2�ڸ����
rank number(10)
);

insert into stuscore values( -- �߰� : insert
1,'ȫ�浿',100,100,100,100+100+100,(100+100+100)/3,0
);

insert into stuscore values(
2,'������',100,100,99,100+100+99,(100+100+99)/3,0
);

insert into stuscore (stunum,name,rank) values(
3,'�̼���',0
);


select * from stuscore;

--����update

--update stuscore set kor=100,eng=100,math=100,total=100+100+100,avg=(100+100+100)/3
where stunum=3;

-- delete stuscore where stunum=2; ���� : delete

select * from stuscore;
rollback;


select * from stuscore;



commit;

--select * from employees;

select * from tab; --���� �����Ǿ� �ִ� ��� ���̺��� ������.

desc stuscore; -- �������̺��� �÷��� �÷�Ÿ���� ������.

select * from member;

insert into member values (
'aaa','1111','ȫ�浿','M',20,'1990-01-01','010-1111-1111',sysdate
);

select * from member;

commit;


