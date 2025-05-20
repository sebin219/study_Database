drop table if exists usertbl;

create table usertbl
(
    userID    CHAR(8)     NOT NULL PRIMARY KEY,
    name      VARCHAR(10) NOT NULL,
    birthYear INT         NOT NULL,
    addr      NCHAR(2)    NOT NULL
);

-- 아래 데이터를 추가하고, 클러스터형 인덱스의 테이블 내용을 확인하세요.
INSERT INTO usertbl
VALUES ('LSG', '이승기', 1987, '서울'),
       ('KBS', '김범수', 1979, '경남'),
       ('KKH', '김경호', 1971, '전남'),
       ('JYP', '조용필', 1950, '경기'),
       ('SH', '성시경', 1979, '서울');

select * from usertbl;

-- usertbl에서 primary key 제약조건 삭제
alter table usertbl drop primary key;
alter table usertbl
    add constraint pk_name primary key (name);

-- 클러스터형 인덱스가 userID에서 name으로 바뀌어
-- 데이터 정렬 순서가 바뀜
select * from usertbl;