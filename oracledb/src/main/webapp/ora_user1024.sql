select * from departments;

select * from departments order by manager_id asc;

--employees 테이블에서 employee_id로 순차정렬

select * from employees order by employee_id desc;

select * from employees where employee_id>=200;

select * from employees
where employee_id>=190 and employee_id<=205;


-- salary 5000이상인 사원을 salary 순차정렬 검색하시오

select * from employees 
where salary>=5000 order by salary asc;

--사번, 이름, 직급, 부서, 월급순으로 출력하시오

select employee_id,emp_name,job_id,department_id,salary from employees;

--테이블의 데이터 복사
create table emp2 as select * from employees;

select email from emp2;

--컬럼 타입
desc emp2;

--컬럼이름 변경
alter table emp2 rename column emp_name to e_name;

--컬럼 데이터 타입, 길이변경
-- email 안에 데이터가 숫자가 아니면 변경이 안됨.
alter table emp2 modify email varchar2(50);

--컬럼 삭제
alter table emp2 drop column create_date;

-- 컬럼추가
alter table emp2 add create_date date;

--컬럼순서 변경
alter table emp2 modify update_date invisible;
alter table emp2 modify update_date visible;
select * from emp2;

--컬럼의 데이터만 복사
insert into emp2 select * from employees
;

--이름, 급여, 입사일을 이름순서로 출력
select emp_name,salary,hire_date from emp2 
order by emp_name asc;

alter table emp2 modify salary invisible;
alter table emp2 modify manager_id invisible;
alter table emp2 modify commission_pct invisible;
alter table emp2 modify retire_date invisible;
alter table emp2 modify department_id invisible;
alter table emlp2 modify job_id invisible;






