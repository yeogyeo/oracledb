--id : �ַ�Ű - ��� �����̸Ӹ� Ű -> �ߺ��ȵ� �� ���µ����� �Է� �� ����

insert into nboard values (
nboard_seq.nextval,'aaa','����8','����8',sysdate
);

select * from nboard;

commit;

select * from nboard;
select * from member;

delete member
where id = 'ddd';

select * from member;

select * from nboard;

--�ܷ�Ű�� ���, primary key ���̺��� �����Ͱ� �����Ǹ� �ܷ�Ű�� �ִ� �����͵� ��� ����ó��
alter table nboard
add constraint fk_nboard foreign key(id) references member(id)
on delete cascade --�ϴ� �����
;

--primary key ���̺��� �����Ͱ� �����Ǹ� �ܷ�Ű�� �ִ� �������� id�� null������ ����
alter table nboard
add constraint fk_nboard_id foreign key(id) references member(id)
on delete set null; --id�� null������ ����


alter table nboard
drop constraint fk_nboard;

--select * from board
--order by bno; -- ������� ����

delete member
where id='aaa'
;

select * from nboard;

--null���� ������ row�� �˻��� �� �׷��Լ��� �����ؼ� ���
select department_id, count(commission_pct) 
from employees 
where commission_pct is not null
group by department_id
;

--�׷��Լ����� �׷��Լ��� ���� ������ ó���Ϸ��� having ��ɾ ����ؾ���.
select department_id, count(commission_pct) 
from employees 
group by department_id
having count(commission_pct) !=0
;

--�μ����� ����� ��ü��� �̻��� �μ��� ����Ͻÿ�.
--1. �μ��� ����� ����Ͻÿ�
select department_id,avg(salary)
from employees
group by department_id
;

--2. ��ü����� ����Ͻÿ�
select avg(salary) from employees; -- 6461

select a.department_id,b.department_name,avg(salary) as aaa
from employees a, departments b
where a.department_id = b.department_id
group by a.department_id,b.department_name
having avg(salary)>(select avg(salary) from employees )
;

commit;














