CREATE TABLE test(NAME VARCHAR(50), POINT INT);

INSERT INTO test VALUES ("고유진",100);
INSERT INTO test VALUES ("김대훈",80);

SELECT * FROM test;

CREATE TABLE notice(
	no INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200) NOT NULL,
	content VARCHAR(1000),
	regdate DATETIME DEFAULT NOW(),
	visited INT DEFAULT 0
);

DESC notice;

INSERT INTO notice(title, content) VALUES("공지테스트제목1","공지테스트내용1");

SELECT * FROM notice;

CREATE TABLE USER(
	id VARCHAR(30) PRIMARY KEY,
	pw VARCHAR(300) NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	POINT INT DEFAULT 0,
	grade VARCHAR(4) DEFAULT "F",
	visted INT DEFAULT 1,
	tel VARCHAR(11),
	addr VARCHAR(150),
	email VARCHAR(100),
	birth DATE,
	regdate DATETIME DEFAULT NOW()
);

drop table user;

SELECT * FROM user;
delete from user where id="admin";
UPDATE user SET grade="A" WHERE id="admin";


insert into user(id, pw, name, grade, tel) values("admin","1234","고유진","A","01011111111");

create table pic(
	no int primary key auto_increment,
	tourno varchar(20),
	picname varchar(150)
	pos int default 1 --position
);
desc pic;

create table tour(
	no int primary key auto_increment,
	tourno varchar(20),
	cate varchar(20),
	place varchar(100),
	comment1 varchar(1000);
	comment2 varchar(1000)
);
desc tour;














