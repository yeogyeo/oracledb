select * from departments;

select * from departments order by manager_id asc;

--employees ���̺��� employee_id�� ��������

select * from employees order by employee_id desc;

select * from employees where employee_id>=200;

select * from employees
where employee_id>=190 and employee_id<=205;


-- salary 5000�̻��� ����� salary �������� �˻��Ͻÿ�

select * from employees 
where salary>=5000 order by salary asc;

--���, �̸�, ����, �μ�, ���޼����� ����Ͻÿ�

select employee_id,emp_name,job_id,department_id,salary from employees;

--���̺��� ������ ����
create table emp2 as select * from employees;

select email from emp2;

--�÷� Ÿ��
desc emp2;

--�÷��̸� ����
alter table emp2 rename column emp_name to e_name;

--�÷� ������ Ÿ��, ���̺���
-- email �ȿ� �����Ͱ� ���ڰ� �ƴϸ� ������ �ȵ�.
alter table emp2 modify email varchar2(50);

--�÷� ����
alter table emp2 drop column create_date;

-- �÷��߰�
alter table emp2 add create_date date;

--�÷����� ����
alter table emp2 modify update_date invisible;
alter table emp2 modify update_date visible;
select * from emp2;

--�÷��� �����͸� ����
insert into emp2 select * from employees
;

--�̸�, �޿�, �Ի����� �̸������� ���
select emp_name,salary,hire_date from emp2 
order by emp_name asc;

alter table emp2 modify salary invisible;
alter table emp2 modify manager_id invisible;
alter table emp2 modify commission_pct invisible;
alter table emp2 modify retire_date invisible;
alter table emp2 modify department_id invisible;
alter table emlp2 modify job_id invisible;






