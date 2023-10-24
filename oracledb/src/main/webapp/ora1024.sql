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

--별칭선언, as 생략이 가능함 
select salary, salary*12 y_salary,salary*12*1342 as k_salary from employees;

select * from employees;

--년봉 nvl(변수,0) null경우 0으로 표시 
select salary, salary*12,commission_pct from employees;
select 
salary,
salary*12 as "년봉",
(salary*12)*nvl(commission_pct,0) as "인센티브",
(salary*12)+(salary*12)*nvl(commission_pct,0) as "실제년봉"  from employees;

select nvl(manager_id,0) from employees;

-- 사번, 월급, 직급, 커미션, 년봉, 년봉+커미션을 출력하시오.

select employee_id,salary,nvl(commission_pct,0) "인센티브",salary*12 y_salalry,
(salary*12)+(salary*12)*nvl(commission_pct,0)c_salary from employees;

--월급이 6000인 사원 검색
select salary as "em p" from employees where salary=6000;

-- 커미션이 null 사람만 출력하시오. null비교 is null
--select * from employees where commission_pct=null;
select * from employees where commission_pct is null;
select * from employees where commission_pct is not null;

select * from departments;

--부서번호, 부서명을 출력하시오
select department_id "부서번호",
department_name "부서명" from departments where department_id>=10 and department_id<=40;

--문자타입을 붙여서 출력
select emp_name||'is a'||job_Id from employees;
select concat(concat(emp_name,'is a'),job_id) con_name from employees;

select * from stuscore;

select kor,eng,math,kor+eng+math,(kor+eng+math)/3 from stuscore;

--부서번호 중복제거 출력
select distinct department_id from employees order by department_id asc
;
--job_id 중복제거 출력하시오.
select distinct job_id from employees;

-- 월급 3000,6000,7000출력
select * from employees where salary=3000 or salary=6000 or salary=7000;

select * from employees where salary>=3000 and salary<=10000 order by salary desc;

--월급이 5000이하 인 사람에게 +1000 월급을 인상해서 출력하시오
select salary,salary+1000,(salary+1000)*1342 "원화" from employees where salary<=5000 order by salary desc; 

--부서번호가 10,30,50인 사원번호, 사원이름, 부서번호,직급,월급,입사일을 출력하시오
select employee_id,emp_name,department_id,job_id,salary,hire_date 
from employees 
where department_id=10 or department_id=30 or department_id=50 
order by department_id asc, employee_id desc
;

select * from employees;

--입사일이 2003/09/01 이후 사원이면서 4000 dltkd 8000이하 사원번호, 사원이름,급여,입사일,부서번호 출력하시오

select employee_id,emp_name,salary,hire_date+100,department_id
from employees
where hire_date>='03/09/01' and
salary >=4000 and salary <=8000 
;

commit;








