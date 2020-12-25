/* Head First SQL 02장 */

USE gregs_list;

SELECT * FROM my_contacts;
-- 특정 조건으로만 조회.
SELECT * FROM my_contacts WHERE first_name='Jillian';

-- 연습문제 P97
create database drinks;
use drinks;
create table easy_drinks( 
	drink_name		varchar(30),
    main			varchar(30),
    amount1			DEC(3,1),
    second			varchar(30),
    amount2			DEC(4,2),
    directions		varchar(250)
);
insert into easy_drinks values
('Blackthorn','tonic water', 1.5,'pineapple juice', 1, 
'stir with ice, strain into cocktail glass with lemon twist');
insert into easy_drinks values
('Blue Moon','soda', 1.5,'blueberry juice', .75, 'stir with ice, strain into cocktail glass with lemon twist'),
('Oh My Gosh','peach nectar', 1,'pineapple juice', 1, 'stir with ice, strain into short glass'),
('Lime Fizz','Sprite', 1.5,'lime juice', .75, 'stir with ice, strain into cocktail glass'),
('Liss on the Lips','cherry juice', 2,'apricot nectar', 7, 'serve over ice with straw'),
('Hot Gold','peach nectar', 3,'orange juice', 6, 'pour hot orange juice in mug and add peach nectar'),
('Lone Tree','soda', 1.5,'cherry juice', .75, 'stir with ice, strain into cocktail glass'),
('Greyhound','soda', 1.5,'grapefruit juice', 5, 'serve over ice, stir well'),
('Indian Summer','apple juice', 2,'hot tea', 6, 'add juice to mug and top off with hot tea'),
('Bull Frog','ice tea', 1.5,'leomonade', 5, 'serve over ice with lime slice'),
('Soda and It','soda', 2,'grape juice', 1, 'shake in cocktail glass, no ice');

SELECT * FROM easy_drinks;

SELECT * FROM easy_drinks WHERE main = 'Sprite';
-- SELECT * FROM easy_drinks WHERE main = soda; --  Error 1054
SELECT * FROM easy_drinks WHERE amount2 = 6;
SELECT * FROM easy_drinks WHERE second = "orange juice";
SELECT * FROM easy_drinks WHERE amount1 < 1.5;
SELECT * FROM easy_drinks WHERE amount2 < '1'; -- 원래 오류지만 무시하고 동작함
SELECT * FROM easy_drinks WHERE main > 'soda';
SELECT * FROM easy_drinks WHERE amount1 = '1.5'; -- 원래 오류지만 무시하고 동작함

-- 작은따옴표 백슬러시 사용. .
USE gregs_list;
DESC my_contacts;
INSERT INTO my_contacts 
values
('Funyon', 'Steve', 'steve@onionflavoredrings.com', 'M', '1970-04-01', 'Punk' ,
'Grover\'s Mill, NJ', 'Single', 'smashing the state', 'compatriots, guitar players'); 
/* 또는 작은 따옴표 하나 더 넣기
INSERT INTO my_contacts 
values
('Funyon', 'Steve', 'steve@onionflavoredrings.com', 'M', '1970-04-01', 'Punk' ,
'Grover''s Mill, NJ', 'Single', 'smashing the state', 'compatriots, guitar players'); 
*/

-- 연습문제 p107
SELECT * FROM my_contacts WHERE location = 'Grover\'s Mill, NJ';
SELECT * FROM my_contacts WHERE location = 'Grover''s Mill, NJ';

-- 특정 데이터 select
use drinks;
SELECT drink_name, main, second FROM easy_drinks WHERE main='soda';

SELECT * FROM easy_drinks;
SELECT * FROM easy_drinks WHERE drink_name ='Liss on the Lips';
SELECT * FROM easy_drinks WHERE second ='apricot nectar';
SELECT * FROM easy_drinks WHERE amount2 = 7;
SELECT * FROM easy_drinks WHERE directions = 'serve over ice with straw';
SELECT * FROM easy_drinks WHERE drink_name ='Bull Frog';
SELECT * FROM easy_drinks WHERE main = 'ice tea';
SELECT * FROM easy_drinks WHERE second = 'leomonade';
SELECT * FROM easy_drinks WHERE directions = 'serve over ice with lime slice';

-- 연습문제 P119
USE gregs_list;
SELECT * FROM my_contacts;
SELECT email FROM my_contacts WHERE profession ='programmer';
SELECT last_name, location FROM my_contacts WHERE birthday = '1982-08-13';
SELECT last_name, email FROM my_contacts WHERE location='Seoul, Korea' AND status='Single' AND gender='M';
SELECT * FROM my_contacts WHERE last_name='Anne' AND location='San Francisco, CA';

-- 숫자형 값 찾기
use drinks;
SELECT drink_name FROM easy_drinks WHERE main='soda' AND amount1 = 1.5;
SELECT drink_name FROM easy_drinks WHERE main='soda' AND amount1 = 2;
SELECT drink_name FROM easy_drinks WHERE main='soda' AND amount1 > 1;

SELECT * FROM easy_drinks WHERE main='soda' AND amount1 <> 2;

SELECT * FROM easy_drinks;

create table drink_info(
	drink_name		varchar(30),
    cost			DEC(3,1),
    carbs			DEC(3,1),
    color			varchar(10),
    ice				char(1),
    calories		int
);

INSERT INTO drink_info
values
('Blackthorn', 3, 8.4, 'yellow', 'Y', 33),
('Blue Moon', 2.5, 3.2, 'blue', 'Y', 12),
('Oh My Gosh', 3.5, 8.6, 'orange', 'Y', 35),
('Lime Fizz', 2.5, 5.4, 'green', 'Y', 24),
('Kiss on the Lips', 42.5, 8.4, 'purple', 'Y', 171),
('Hot Gold', 3.2, 32.1, 'orange', 'N', 135),
('Lone Tree', 3.6, 4.2, 'red', 'Y', 17),
('Greyhound', 4, 14, 'yellow', 'Y', 50),
('Indian Summer', 7.2, 8.4, 'brown', 'N', 30),
('Bull Frog', 2.6, 21.5, 'tan', 'Y', 80),
('Soda and It', 3.8, 4.7, 'red', 'N', 19);

SELECT drink_name FROM drink_info WHERE cost >= 3.5 and calories < 50;

SELECt * FROM drink_info;
SELECT cost FROM drink_info WHERE ice = 'Y' AND color = 'yellow' AND calories >= 33;
SELECT drink_name, color FROM drink_info WHERE carbs < 4 AND ice = 'Y';
SELECT cost FROM drink_info WHERE calories >= 80;
SELECT drink_name, color, ice FROM drink_info WHERE cost >= 4 and ice='Y';

-- 비교 연산자를 이용한 문자열 처리.
SELECT drink_name FROM drink_info WHERE drink_name >='L' AND drink_name < 'M';

SELECT * FROM easy_drinks;
SELECT drink_name FROM easy_drinks WHERE main = 'cherry Juice';
SELECT drink_name FROM easy_drinks WHERE second = 'cherry Juice';
SELECT drink_name FROM easy_drinks WHERE main = 'cherry Juice' or second = 'cherry Juice';
SELECT drink_name FROM easy_drinks WHERE main = 'orange Juice' or main = 'apple Juice';

-- like 사용
SELECT * FROM easy_drinks;
SELECT * FROM easy_drinks WHERE main like '%juice';
SELECT * FROM easy_drinks WHERE main like '__da';

-- 비교 연산자 범위정하기.
SELECT * FROM drink_info;
SELECT drink_name FROM drink_info WHERE calories >=30 AND calories <= 60;
SELECT drink_name FROM drink_info WHERE calories between 30 and 60;

SELECT drink_name FROM drink_info WHERE calories < 30;
SELECT drink_name FROM drink_info WHERE drink_name between 'G' AND 'O';

-- in
SELECT * FROM drink_info WHERE color in ('red', 'orange');
SELECT * FROM drink_info WHERE color not in ('red', 'orange');

-- not 
SELECT drink_name FROM drink_info WHERE not calories >=30 AND calories <= 60;
SELECT * FROM easy_drinks WHERE not main like '__da';

-- 연습문제 P 150
SELECT drink_name FROM easy_drinks WHERE amount >= 1.50;
SELECT drink_name FROM drink_info WHERE ice ='N';
SELECT drink_name FROM drink_info WHERE calories >= 20;
SELECT drink_name FROM easy_drinks WHERE main between 'p' and 't';
SELECT drink_name FROM drink_info WHERE calories > 0;
SELECT drink_name FROM drink_info WHERE  carbs <3 or carbs > 5;






