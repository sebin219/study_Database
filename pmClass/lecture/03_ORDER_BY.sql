-- ORDER BY
-- SELECT 문과 함게 사용하며 결과 집합을 특정 열이나 값들에 따라 정렬하는데 사용됨

select emp_no, first_name, last_name from employees order by emp_no desc;

-- 컬럼에 따라 정렬을 여러번 할 수 있다.
-- first_name 기준으로 정렬, 만약 같은 순위의 데이터가 있다면 last_name에 따라 정렬
select emp_no, first_name, last_name from employees order by first_name desc, last_name asc;