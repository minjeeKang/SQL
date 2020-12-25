/* Head First SQL 01장 */
-- 데이터베이스 생성 
CREATE DATABASE gregs_list;

-- 데이터베이스 사용 
USE gregs_list;

-- 테이블 생성 
CREATE TABLE doughnut_list
(
	doughnut_name VARCHAR(10),
	doughnut_type VARCHAR(6)
);

CREATE TABLE my_contacts
(
	last_name	varchar(30),
    first_name	varchar(20),
    email		varchar(50),
    birthday	date,
    profession	varchar(50),
    location	varchar(50),
    status		varchar(20),
    interests	varchar(100),
    seeking		varchar(100)
);

-- 테이블 정보 보기 desc - describe  줄임말 
DESC my_contacts;

-- 테이블 삭제
DROP TABLE my_contacts;
DROP TABLE doughnut_list;

-- 테이블 생성
CREATE TABLE my_contacts
(
	last_name	varchar(30),
    first_name	varchar(20),
    email		varchar(50),
    gender		CHAR(1),
    birthday	date,
    profession	varchar(50),
    location	varchar(50),
    status		varchar(20),
    interests	varchar(100),
    seeking		varchar(100)
);

-- 데이터 삽입
INSERT INTO my_contacts
(last_name, first_name, email, gender, birthday, profession, location, status, interests, seeking)
values
('Anderson', 'Jillian','jill_anderson@breakneckpizza.com','F','1980-09-05','Technical Writer','Palo Alto, CA',
'Single','Kayaking, Reptiles','Relationshil, Friends');


INSERT INTO my_contacts
values
('Anderson', 'Jillian','jill_anderson@breakneckpizza.com','F','1980-09-05','Technical Writer','Palo Alto, CA',
'Single','Kayaking, Reptiles','Relationshil, Friends');

INSERT INTO my_contacts
(last_name, first_name, email)
values
('Anderson', 'Jillian','jill_anderson@breakneckpizza.com');

-- 테이블 조회
SELECT * FROM my_contacts;

-- 테이블 생성, null / default 설정
CREATE TABLE my_contacts
(
	last_name	varchar(30) NOT NULL,
    first_name	varchar(20) NOT NULL,
    email		varchar(50) NOT NULL,
    gender		CHAR(1),
    birthday	date NOT NULL,
    profession	varchar(50) NOT NULL,
    location	varchar(50) NOT NULL,
    status		varchar(20) NOT NULL,
    interests	varchar(100) NOT NULL,
    seeking		varchar(100) NOT NULL
);
DESC  my_contacts;

CREATE TABLE doughnut_list
(
	doughnut_name VARCHAR(10) NOT NULL,
	doughnut_type VARCHAR(6) NOT NULL,
    doughnut_cost DEC(3,2) NOT NULL default 1.00
);
DESC  doughnut_list;