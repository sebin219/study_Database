-- usertbl의 내용 확인
select * from usertbl;

-- usertbl의 인덱스 목록 확인
show index from usertbl;

-- usertbl의 데이터 크기와 인덱스의 크기 확인
show table status like 'usertbl';

-- usertbl의 addr 컬럼에 대해 idx_usertbl_addr이름으로 인덱스를 만들고 인덱스 목록 확인
create index idx_usertbl_addr on usertbl (addr);
show index from usertbl;

-- usertbl의 상태를 출력하여 인덱스의 내용이 만들어졌는지 확인하고, 내용이 없다면 실제 적용되도록 한 후
-- 인덱스의 크기 확인
show table status like 'usertbl';

-- birthYear 컬럼에 대해 idx_usertbl_birthYear 이름의 인덱스를 만드세요
create index idx_usertbl_birthYear on usertbl(birthYear);

-- name 컬럼에 대해 idx_usertbl_name 이름의 인덱스를 만드세요
create index idx_usertbl_name on usertbl(name);

-- 생성된 인덱스의 목록을 확인하세요.
show index from usertbl;

-- name 컬럼에 대한 보조 인덱스를 삭제하세요.
drop index idx_usertbl_name on usertbl;

-- name과 birthYear 컬럼 조합으로 idx_usertbl_name_birthYear 이름의 인덱스 생성
create index idx_usertbl_name_birthYear on usertbl(name, birthYear);

-- 인덱스의 목록을 확인하세요
show index from usertbl;

-- usertbl에서 앞에서 만든 인덱스를 삭제하세요.
drop index idx_usertbl_addr on usertbl;
drop index idx_usertbl_birthYear on usertbl;
drop index idx_usertbl_name_birthYear on usertbl;
