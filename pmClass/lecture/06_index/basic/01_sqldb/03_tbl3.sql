use sqldb;

create table tbl3 (
    a int unique, -- a 유니크 키 -> UNIQUE 인덱스 생성 (중복불가, null 허용)
    b int unique, -- b 유니크 키 -> UNIQUE 인덱스 생성 (중복불가, null 허용)
    c int unique, -- c 유니크 키 -> UNIQUE 인덱스 생성 (중복불가, null 허용)
    d int
);

-- tbl3가 가지고 있는 인덱스 조회
show index from tbl3;