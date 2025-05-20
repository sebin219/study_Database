-- type (접근 방식):
--   ALL     : 전체 테이블을 다 읽음 (Full Table Scan) → 느림
--   index   : 인덱스를 전부 읽음 (데이터는 안 읽음)
--   range   : 범위 조건 (ex. WHERE age > 30) → 인덱스 일부 탐색
--   ref     : 인덱스를 통해 특정 값 탐색 (ex. WHERE name = '홍길동') → 빠름
--   const   : 기본키나 유일값으로 딱 한 줄만 찾는 경우 → 매우 빠름

-- key (사용된 인덱스):
--   이 쿼리에서 실제로 사용된 인덱스의 이름
--   NULL이면 인덱스를 사용하지 않았다는 뜻

-- rows (예상 읽을 행 수):
--   MySQL이 이 쿼리를 처리할 때 몇 개의 행을 읽을지 예측한 값
--   이 값이 작을수록 성능이 좋음

use employees;

-- employees안에 있는 인덱스 조회
show index from employees;

select * from employees where last_name = '석';

-- 인덱스 생성
create index index_lastname on employees(last_name);

-- explain -> 실행계획확인
-- select 쿼리를 실행하기 전에, mysql이 내부적으로 어떤 방법으로 데이터를 가져올 지 보여줌
explain select * from employees where last_name = '석';

-- 데이터베이스 통계정보 갱신
analyze table employees;

select * from employees where last_name = '석';

-- 인덱스 삭제
drop index index_lastname on employees;