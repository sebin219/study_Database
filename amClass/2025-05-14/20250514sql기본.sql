CREATE TABLE testTbl1(
	id INT,
	username CHAR(3),
	age INT
 );
 
 insert into testtbl1 values (1, '홍길동', 25);
 
 select * from testtbl1;
 
 update testtbl1 set age = 100 where id = 1;
 
 delete from testtbl1 where id = 30;
 
 select * from sqldb.testtbl1;
