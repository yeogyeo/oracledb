--id : 왜래키 - 멤버 프라이머리 키 -> 중복안됨 널 없는데이터 입력 시 에러

insert into nboard values (
nboard_seq.nextval,'aaa','제목8','내용8',sysdate
);

select * from nboard;

commit;

select * from nboard;
select * from member;

delete member
where id = 'ddd';

select * from member;

select * from nboard;

--외래키로 등록, primary key 테이블의 데이터가 삭제되면 외래키에 있는 데이터도 모두 삭제처리
alter table nboard
add constraint fk_nboard foreign key(id) references member(id)
on delete cascade --싹다 지우기
;

--primary key 테이블의 데이터가 삭제되면 외래키에 있는 데이터의 id만 null값으로 변경
alter table nboard
add constraint fk_nboard_id foreign key(id) references member(id)
on delete set null; --id만 null값으로 삭제


alter table nboard
drop constraint fk_nboard;

--select * from board
--order by bno; -- 순서대로 정렬

delete member
where id='aaa'
;

select * from nboard;

--null값을 제외한 row를 검색한 후 그룹함수를 적용해서 출력
select department_id, count(commission_pct) 
from employees 
where commission_pct is not null
group by department_id
;

--그룹함수에서 그룹함수의 값의 조건을 처리하려면 having 명령어를 사용해야함.
select department_id, count(commission_pct) 
from employees 
group by department_id
having count(commission_pct) !=0
;

--부서별로 평균이 전체평균 이상인 부서만 출력하시오.
--1. 부서별 평균을 출력하시오
select department_id,avg(salary)
from employees
group by department_id
;

--2. 전체평균을 출력하시오
select avg(salary) from employees; -- 6461

select a.department_id,b.department_name,avg(salary) as aaa
from employees a, departments b
where a.department_id = b.department_id
group by a.department_id,b.department_name
having avg(salary)>(select avg(salary) from employees )
;

commit;














