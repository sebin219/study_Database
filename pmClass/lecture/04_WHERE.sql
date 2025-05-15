-- WHERE
-- 특정 조건에 맞는 레코드(데이터)만을 선택하는데 사용됨

-- [=] 같음 연산자를 사용한 where 절
select *
from employees
where gender = 'M';

-- select에 담지 않더라도 다른 컬럼의 속성으로 조건을 걸 수 있음
select first_name, last_name
from employees
where gender != 'M';
-- != 과 <> 는 동일한 의미를 갖는 기호

-- AND 연산자 : 둘 다 true여야 true/ 하나라도 false면 false
-- OR 연산자 : 둘 중 하나라도 true면 true
-- AND가 OR보다 우선순위가 높다
select 1 or 0 and 0;
select (1 or 0) and 0;


select emp_no, first_name, last_name, gender
from employees
where gender <> 'M'
  AND emp_no < '10050';

-- BETWEEN
select * from employees where emp_no >= 10050 AND emp_no <= 10060;

select * from employees where emp_no BETWEEN 10050 AND 10060;

/*
BETWEEN 연산자
- 경계값을 포함한, 사이값을 포함
*/
select * from employees where emp_no NOT BETWEEN 10050 AND 499995; -- 부정표현(경계값 및 사이값 포함안하고)

/*
LIKE
- 특정 패턴과 일치하는 행을 검색
패턴
- % : 0개 이상의 ㅜㄴ문자를 나타냄
ex) '%apple%* -> applㄷ이 퐈함된 모둔 문자열
- _ : 1개의 문자를 나타냄
ex) 'a_k'는 a로 시작하고 k로 끝나는 세글자 문자열임을 /
 */
select first_name from employees where first_name LIKE 'Aa%';

select first_name from employees where first_name LIKE 'Aa__d';

/*
IN 연산자
- 특정 열의 값이 지정된 목록 중 하나와 일치하는지 확인하는데 사용
*/

select * from employees where emp_no in (1, 2, 3,4, 5);

