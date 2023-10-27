select to_char(avg(salary)*1342.32,'L999,999,999') from employees;

select department_id from employees;

select emp_name, max(salary) from employees
where department_id = 50
group by emp_name
;

select emp_name,salary from employees
where salary = (select max(salary) from employees)
;

select department_id,max(salary),min(salary) from employees
group by department_id
;

select emp_name,max(salary) from employees
group by emp_name
;

select emp_name,salary from employees;

-- count(*)
select count(*) from employees;

--null ���� count ���� ����.
select count(manager_id) from employees;

select id from board;

select emp_name from employees;

select emp_name from employees
where emp_name like('%D') or emp_name like('%d%');

--�ҹ��ڷ� ���� �� d�� �˻� 
select emp_name from employees
where lower(emp_name) like('%d%');

--������� 0���� ǥ��
select to_char(12,'000,000') from dual;

select lpad(12,6,'0') from dual;

select id from board;
select subsrt(id,3,3) from board;
select bdate from board;
-- 20230816

select to_char(bdate,'YYYYMMDD') from board;
select substr(to_char(bdate,'YYYYMMDD'),1,6) from board;

select id,instr(id,'ff') i_id from board
where instr(id,'ff') !=0;

select length(id) from board;

--hire_date employees
--substr ���� ����Ͻÿ�
select hire_date from employees;
select substr(hire_date,4,2) from employees;

--�̸����� 3��°���� 3���� ���� �Բ� ����Ͻÿ�
-- aaa06
select substr(emp_name,3,3)||substr(hire_date,4,2) from employees;

-- ������ ��¥ last_day( �ش���� ������ ��
select hire_date,last_day(hire_date) from employees;

creat table fboard as select * from board;

select bhit,bhit+100 from board;

update board
set bhit = bhit+100;

select bno,bhit from board;

rollback;

update board
set bhit = bhit+1
where bno = 31;

update fboard
set bhit = 1;

select a.bno,a.bhit, b.bno,b.bhit from fboard a, board b;
--commit;

select bno,bhit from board;

update fboard a
set bhit = (select bhit from board b where a.bno=b.bno)
;

desc fboard;

alter table fboard
add userid varchar2(30)
;

select userid from fboard;

-- id 1��°���� 3��, bdate ���� ��ģ ����   userid�� �Է��Ͻÿ�.
select substr(id,1,3)substr(bdate,4,2) from fboard;



update fboard
set userid = (
select substr(id,1,3)||substr(bdate,4,2) from fboard b where a.bno = b.bno
)
;

select userid from fboard;


--���̺� �÷����� ����
alter table fboard
rename column userid to uuid
;
--���̺� �÷� �߰�
alter table fboard
add u_id varchar2(30);

--���̺� �÷�Ÿ���� ����
alter table fboard
modify uuid varchar(40);

--�÷� ����
alter table fboard
drop column uuid;

desc fboard;

--drop table emp01;

drop table emp2;

wdwdw


