select sysdate from dual;

select sysdate,sysdate+1,add_months(sysdate,1) from dual;

--�� ���� ������ ���ڸ� �˷���.
select last_day(sysdate) from dual;

-- ��¥���� �⵵, ��, �ϸ� ���
select last_day('2022-01-01') from dual;

select extract(year from sysdate) from dual;

select extract(month from sysdate) from dual;

select extract(day from sysdate) from dual;

--��¥���� ��¥�� ���� �Ⱓ�� ���� �� �� ����.
select bdate, trunc(sysdate - bdate)||'��' from board;

-- ���� ���� ���� ���
select bdate,trunc(month_between(sysdate,bdate))||'����' from board;

--��¥->���ڷ� ����ȯ, ��¥ ���� ����
select sysdate from dual;
select to_char(sysdate,'YYYY-MM-DD AM HH:MI:SS') from dual;

select to_char (sysdate,'YYYY"��" MM"��" DD"��" DAY') from dual;

-- ����->���ڷ� ����ȯ, õ����ǥ��, ��ȭǥ��
--9�� �ڸ��� ǥ�ø� �ϸ�, �������� �����, 0���� �ڸ��� ǥ�ø� �ϸ�, ������ 0���� ��µ�.
select 1234500000 from dual;
select to_char(1234500000,'999,999,999,999') from dual; --�����
select trim(to_char(1234500000,'999,999,999,999')) from dual; --trim ���������
select to_char(1234500000,'000,999,999,999') from dual; -- 0���� ǥ��
select to_char(1234500000,'L999,999,999,999') from dual; --��ȭǥ�� L(���� ��ȭǥ�� ex)�Ϻ�os��� �� ��ȭ���), $

--����->��¥ ����ȯ, ������ ��¥����ŭ �������� Ȯ��
select '2023-10-01' from dual;
select add_months('2023-10-01',1) from dual;
select sysdate-to_date('2023-10-01','YYYY-MM-DD') from dual;


--nvl(commission_pct,0)
--manaher_id null���� 'ceo'
select manager_id from employees;
--manager_id Ÿ�� : number
select nvl(manager_id,0) from employees;
--����->��������ȯ 'ceo; ���ڸ� �Է�
select nvl(to_char(manager_id),'ceo') from employees;

--���� �ѱݾ� - õ����, $
select sum(salary) from employees;
select to_char(sum(salary),'$999,999') from employees;

--ȯ�� 1342.32 ���ؼ� õ����, \ ǥ��
select avg(salary) from employees; 



select max(salary),min(salary) from employees;











