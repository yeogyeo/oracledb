select * from emp2;

alter table emp2 modify salary invisible;
alter table emp2 modify manager_id invisible;
alter table emp2 modify commission_pct invisible;
alter table emp2 modify retire_date invisible;
alter table emp2 modify department_id invisible;
alter table emp2 modify job_id invisible;

alter table emp2 modify salary visible;
alter table emp2 modify manager_id visible;
alter table emp2 modify commission_pct visible;
alter table emp2 modify retire_date visible;
alter table emp2 modify department_id visible;
alter table emp2 modify job_id visible;

insert into emp2 (employee_id,emp_name) select employee_id,emp_name from employees;

--��Ī����, as ������ ������ 
select salary, salary*12 y_salary,salary*12*1342 as k_salary from employees;

select * from employees;

--��� nvl(����,0) null��� 0���� ǥ�� 
select salary, salary*12,commission_pct from employees;
select 
salary,
salary*12 as "���",
(salary*12)*nvl(commission_pct,0) as "�μ�Ƽ��",
(salary*12)+(salary*12)*nvl(commission_pct,0) as "�������"  from employees;

select nvl(manager_id,0) from employees;

-- ���, ����, ����, Ŀ�̼�, ���, ���+Ŀ�̼��� ����Ͻÿ�.

select employee_id,salary,nvl(commission_pct,0) "�μ�Ƽ��",salary*12 y_salalry,
(salary*12)+(salary*12)*nvl(commission_pct,0)c_salary from employees;

--������ 6000�� ��� �˻�
select salary as "em p" from employees where salary=6000;

-- Ŀ�̼��� null ����� ����Ͻÿ�. null�� is null
--select * from employees where commission_pct=null;
select * from employees where commission_pct is null;
select * from employees where commission_pct is not null;

select * from departments;

--�μ���ȣ, �μ����� ����Ͻÿ�
select department_id "�μ���ȣ",
department_name "�μ���" from departments where department_id>=10 and department_id<=40;

--����Ÿ���� �ٿ��� ���
select emp_name||'is a'||job_Id from employees;
select concat(concat(emp_name,'is a'),job_id) con_name from employees;

select * from stuscore;

select kor,eng,math,kor+eng+math,(kor+eng+math)/3 from stuscore;

--�μ���ȣ �ߺ����� ���
select distinct department_id from employees order by department_id asc
;
--job_id �ߺ����� ����Ͻÿ�.
select distinct job_id from employees;

-- ���� 3000,6000,7000���
select * from employees where salary=3000 or salary=6000 or salary=7000;

select * from employees where salary>=3000 and salary<=10000 order by salary desc;

--������ 5000���� �� ������� +1000 ������ �λ��ؼ� ����Ͻÿ�
select salary,salary+1000,(salary+1000)*1342 "��ȭ" from employees where salary<=5000 order by salary desc; 

--�μ���ȣ�� 10,30,50�� �����ȣ, ����̸�, �μ���ȣ,����,����,�Ի����� ����Ͻÿ�
select employee_id,emp_name,department_id,job_id,salary,hire_date 
from employees 
where department_id=10 or department_id=30 or department_id=50 
order by department_id asc, employee_id desc
;

select * from employees;

--�Ի����� 2003/09/01 ���� ����̸鼭 4000 dltkd 8000���� �����ȣ, ����̸�,�޿�,�Ի���,�μ���ȣ ����Ͻÿ�

select employee_id,emp_name,salary,hire_date+100,department_id
from employees
where hire_date>='03/09/01' and
salary >=4000 and salary <=8000 
;

commit;








