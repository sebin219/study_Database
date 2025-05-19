-- 다음 정보를 가지는 직원 정보를 추력하는 employees_info 뷰를 작성하세요.
create view EMPLOYEES_INFO as
select e.emp_no,
       e.birth_date,
       e.first_name,
       e.last_name,
       e.gender,
       e.hire_date,
       t.title,
       t.from_date AS t_from,
       t.to_date   AS t_to,
       s.salary,
       s.from_date AS s_from,
       s.to_date   AS s_to
from employees e
         join titles t on e.emp_no = t.emp_no
         join salaries s on e.emp_no = s.emp_no;

-- EMPLOYEES_INFO 뷰에서 재직자의 현재 정보만 출력하세요.
select *
from EMPLOYEES_INFO
where t_to = '9999-01-01'
  AND s_to = '9999-01-01';

-- emp_no, dept_no, dept_name, from_date, to_date 정보를 가지는 부서 정보를 출력하는 EMP_DEPT_INFO 뷰를 작성하세요.
create view EMP_DEPT_INFO as
select de.emp_no,
       de.dept_no,
       d.dept_name,
       de.from_date,
       de.to_date
from dept_emp de
         join departments d on de.dept_no = d.dept_no;

-- EMP_DEPT_INFO로 현재 재직자의 부서 정보를 출력하세요.
select * from emp_dept_info
where to_date = '9999-01-01';
