-- 학생 테이블, 동아리 테이블, 학생 동아리 테이블
-- 학생을 기준으로 학생 이름, 지역, 동아리, 동아리 방 출력
/*세 개 이상 테이블 조인
 각 테이블은 관계가 있어야 함, 조인 조건을 명확히 설정해야 함.
 작동순서
 1. 첫번째 테이블과 두번째 테이블 먼저 조인
 2. 1번의 결과 테이블과 세번째 테이블이 조인
 -- 각 조인마다 on으로 조건을 지정해야함.
 */

select s.stdName, s.addr, c.clubName, c.roomNo
from stdtbl s
         join stdclubtbl sc
              on s.stdName = sc.stdName
         join clubtbl c
              on sc.clubName = c.clubName;

-- 동아리를 기준으로 가입한 학생의 목록 출력
-- 출력정보: clubName, roomNo, stdName, addr
select c.clubName, c.roomNo, s.stdName, s.addr
from clubtbl c
    join stdclubtbl sc on c.clubName = sc.clubName
    join stdtbl s on sc.stdName = s.stdName;

CREATE TABLE empTbl (
                        emp CHAR(3),
                        manager CHAR(3),
                        empTel VARCHAR(8)
);

INSERT INTO empTbl VALUES('나사장', NULL, '0000');
INSERT INTO empTbl VALUES('김재우', '나사장', '2222');
INSERT INTO empTbl VALUES('김부장', '김재우', '2222-1');
INSERT INTO empTbl VALUES('이부장', '김재우', '2222-2');
INSERT INTO empTbl VALUES('우대리', '이부장', '2222-2-1');
INSERT INTO empTbl VALUES('지사원', '이부장', '2222-2-2');
INSERT INTO empTbl VALUES('이영엽', '나사장', '1111');
INSERT INTO empTbl VALUES('한진수', '이영엽', '1111-1');
INSERT INTO empTbl VALUES('최정보', '나사장', '3333');
INSERT INTO empTbl VALUES('윤차장', '최정보', '3333-1');
INSERT INTO empTbl VALUES('이주영', '윤차장', '3333-1-1');

-- 앞에서 추가한 테이블에서 '우대리'의 상관 연락처 정보를 확인하세요.
-- 출력할 정보 : 부하직원, 직속상관, 직속상관 연락처
select e.emp as 부하직원, m.emp as 직속상관, m.empTel as 직속상관연락처
from empTbl e
    join empTbl m on e.manager = m.emp
where e.emp = '우대리';