-- 존재하면 삭제
DROP database if exists tabledb;

-- 생성
create database tabledb;

use tabledb;

create table usertbl
(
    -- 컬럼 타입 제약조건 작성
    userID    char(8)     not null primary key,
    name      varchar(10) not null,
    birthyear int         not null,
    addr      char(2)     not null,
    mobile1   char(3),
    mobile2   char(8),
    height    smallint,
    mDate     date
);

drop table if exists buytbl;

create table buytbl
(
    num       int auto_increment not null primary key,
    userID    char(8)            not null,
    prodName  char(6)            not null,
    groupName char(4),
    price     int                not null,
    amount    smallint           not null,

    -- foreign key (현재테이블컬럼명)
    -- references [참조할 테이블명] (참조할 컬럼)
    foreign key (userID) references usertbl (userID)
);

