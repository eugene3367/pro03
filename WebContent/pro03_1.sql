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