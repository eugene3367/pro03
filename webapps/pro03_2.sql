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
	picname varchar(150),
	pos int default 1 --position
);
desc pic;

select * from pic;

CREATE TABLE tour(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),	-- 카테고리 타입 - 마지막 레코드의 no+1
	cate VARCHAR(20),
	place VARCHAR(100),
	comment1 VARCHAR(1000),
	comment2 VARCHAR(1000)  
);
ALTER TABLE tour ADD COLUMN addr VARCHAR(200);

desc tour;

select * from tour;

commit;

create table qna(
    no int primary key auto_increment,
    title varchar(100) not null,
    content varchar(1000) not null,
    author varchar(20) not null,
    regdate datetime default now(),
    visited int default 0
    lev int default 0,            
    parno int DEFAULT 0,           
    sec char(1),                  
    visited int default 0
);

select * from qna;
drop table qna;

create table impress(
	no int primary key auto_increment,
	cate varchar(20),
	tourno varchar(20),
	id varchar(30),
	content varchar(1000),
	star double,
	imgSrc varchar(150),
	regDate datetime default now()
);

select * from impress;














