use tabledb;

drop table if exists buytbl;
drop table if exists usertbl;
drop table if exists prodtbl;

create table usertbl
(
    userID    char(8)     not null,
    name      varchar(10) not null,
    birthyear int         not null,

    -- constraint : 제약 조건을 명시적으로 이름붙여 정의
    -- primary key [기본키 제약조건 이름](기본키로 지정할 컬럼)
    constraint primary key PK_userTBL_userID (userID)
);

create table prodTbl (
    prodCode char(3) not null,
    prodID char(4) not null,
    prodDate DATETIME not null,
    prodCur char(10),

    -- pk를 복합키로 설정
    constraint primary key PK_prodTbl_prodCode_prodID(prodCode, prodID)
);