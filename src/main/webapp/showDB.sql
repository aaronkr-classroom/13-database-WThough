SHOW DATABASES;

CREATE TABLE member (
	id int NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	passwd VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

TABLE member; -- SELECT * FROM member;
DESC member; -- 테이블 설명 (구조확인)

--열 추가
ALTER TABLE member ADD phone VARCHAR(20);
ALTER TABLE member ADD nickname VARCHAR(50); --별명이 왜 필요함?

-- 열 삭제
ALTER TABLE member DROP COLUMN nickname;

-- 열의 이름 수정
ALTER TABLE member CHANGE COLUMN passwd password VARCHAR(60);

-- 테이블의 이름 수정
RENAME TABLE member TO student;
TABLE student;

-- 테이블에서 데이터 삽임
INSERT INTO student VALUES('1', '홍길동', '1235', '01055555555');
INSERT INTO student VALUES('2', '수여인', '1236', '01066666666');
INSERT INTO student VALUES('3', '수여남', '1237', '01077777777');
INSERT INTO student VALUES('4', '홍길순', '1238', '01088888888');

--조회 할 때
SELECT id, name, phone FROM student;
SELECT * FROM student ORDER BY id DESC LIMIT 2;
SELECT * FROM student WHERE id=2;

INSERT INTO student VALUES('99', 'Aaron', '0000', 'null');

-- 열의 값을 수정할 때
UPDATE student SET phone="01055554444" WHERE name='Aaron';
SELECT * FROM student;

INSERT INTO student VALUES('15', 'Tracy', 'abcd', 'null');
TABLE student;

-- 행 삭제
DELETE FROM student WHERE id='15';

-- CURD 기능
-- 기능      / 의미  /  행에서    /   테이블에서
-- C(Create) 생성: INSERT... / CREATE...
-- R(Read) 조회/열기: SELECT... / SHOW...
-- U(Update) 수정/변경: UPDATE.../ ALTER...
-- D(Delete) 삭제: Delete... / DROP... 

