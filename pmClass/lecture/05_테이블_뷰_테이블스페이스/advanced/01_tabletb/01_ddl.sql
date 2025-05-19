-- 기존 테이블 삭제
drop table if exists buytbl;
drop table if exists usertbl;

-- userTBL 정의
create table userTBL
(
    userID    char(8)     not null primary key,
    name      varchar(10) not null,
    birthyear int         not null
);

-- buyTBL 정의
create table buyTBL
(
    num      int auto_increment not null primary key,
    userID   char(8)            not null,
    prodName char(6)            not null
);

-- ALTER로 userID를 외래키로 수정
alter table buytbl
    add constraint fk_userID foreign key (userID) references userTBL (userID);

-- 기존 buyTBL, userTBL 삭제 및 정의
drop table if exists buyTBL;
drop table if exists userTBL;

create table userTBL
(
    userID    char(8)     not null primary key,
    name      varchar(10) not null,
    birthyear int         not null,
    email     char(30) unique
);


-- 기존 userTBL 삭제 및 정의
drop table if exists userTBL;

create table userTBL
(
    userID    char(8)     not null primary key,
    name      varchar(10) not null,
    birthyear int         not null check(birthyear between 1900 and 2023),
    mobile     char(3)    not null
);

-- 기존 userTBL 삭제 및 정의
drop table if exists userTBL;

create table userTBL(
    userID char(8) not null primary key,
    name varchar(10) not null,
    birthYear int not null default -1,
    addr char(2) not null default '서울',
    mobile1 char(3),
    mobile2 char(8),
    height smallint default 170,
    mDate DATE
);

-- 기본값 추가를 확인할 수 있는 데이터 추가
insert into userTBL(userID, name)
values ('sebin219', '임세빈');

-- 앞에서 만든 userTBL에 대해서 다음 조건을 처리하도록 수정
-- mobile1 컬럼 삭제
alter table userTBL drop column mobile1;

-- name 컬럼명을 uName으로 변경
alter table userTBL rename column name to uName;

-- 기본키 제거
alter table userTBL drop primary key;
