CREATE TABLE test(NAME VARCHAR(50), POINT INT);



INSERT INTO test(name, point) VALUES ("고유진",100);
INSERT INTO test(name, point) VALUES ("김대훈",80);

select * from test where name="고유진";
select * from test;

commit;
SELECT * FROM test;