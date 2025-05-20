-- 데이터베이스 및 사용자를 생성하고 해당 db에 대해 모든 권한을 부여하세요.
-- 데이터베이스 명 : scoula_db
-- 사용자 명 : scoula
-- 비밀번호 : 1234
-- 접속 호스트 : 제한 없음

create database scoula_db;

create user 'scoula'@'%' identified by '1234';

grant all privileges on scoula_db.* to 'scoula'@'%';

flush privileges;