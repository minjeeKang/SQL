/* Head First SQL 03장 */

USE gregs_list;

CREATE TABLE clown_info(
	name		varchar(30) NOT NULL,
    last_seen	varchar(50),
    appearance	varchar(250),
    activities	varchar(100)
);

insert into clown_info values
('Elsie','Cherry Hill Senior Center','F, red hair, green dress, huge feet','balloons, little car'),
('Pickles','Jack Green\'s party','M, orange hair, blue suit, huge feet','mime'),
('Snuggles','Ball-Mart','F, yellow shirt, baggy red pants','horn, umbrella'),
('Mr.Hobo','BG Circus','M, cigar, black, hair, tiny hat','violin'),
('Clarabelle','Belmont Senior Center','F, pink hair, huge flower, blue dress','yelling, dancing'),
('Scooter','Oakland Hospital','M, blue hair, red suit, huge nose','balloons'),
('Zippo','Millstone Mall','F, orange suit, baggy pants','dancing'),
('Babe','Earl\'s Autos','F, all pink and sparkly','balancing, little car');

insert into clown_info (name, appearance,activities )
values ('Banzo','M, in drag, polka dotted dress','singing, dancing');

insert into clown_info (name, last_seen, appearance )
values ('Sniffles','Tracy\'s','M, green and purple suit, pointy nose');

SELECT * FROM clown_info ;

INSERT into clown_info values
	('Zippo','Millstone Mall','F, orange suit, baggy pants','dancing, singing'),
    ('Snuggles','Ball-Mart','F, yellow shirt, baggy blue pants','horn, umbrella'),
    ('Banzo','Dickson Park','M, in drag, polka dotted dress','singing, dancing'),
    ('Sniffles','Tracy\'s','M, green and purple suit, pointy nose', 'climbing into tiny car'),
    ('Mr.Hobo','Party for Eric Gray','M, cigar, black, hair, tiny hat','violin');

SELECT * FROM clown_info;
SELECT * FROM clown_info WHERE name ='Zippo';

-- 데이터 삭제
DELETE FROM clown_info WHERE activities = 'dancing';

-- DELETE FROM clown_info; -- 테이블 모든 행 삭제.

SELECT * FROM clown_info WHERE name = 'Clarabelle';

INSERT INTO clown_info values 
( 'Clarabelle', 'Belmont Senior Center', 'F, pink hair, huge flower, blue dress', 'dancing');

delete from clown_info WHERE activities = 'yelling, dancing' and name='Clarabelle';

-- 문제 p174
Use drinks;
SELECT * FROM drink_info;

INSERT INTO drink_info values
('Kiss on the Lips', 5.5, 42.5, 'purple', 'Y', 170 );
DELETE FROM drink_info WHERE drink_name='Kiss on the Lips' AND calories = 171;

SELECT * FROM drink_info where color='yellow';
INSERT INTO drink_info values
('Blackthorn', '3.0', '8.4', 'gold', 'Y', '33'),
('Greyhound', '4.0', '14.0', 'gold', 'Y', '50');
DELETE FROM drink_info where color='yellow';

SELECT * FROM drink_info where cost=3.5;
INSERT INTO drink_info values
('Oh My Gosh', '4.5', '8.6', 'orange', 'Y', '35');
DELETE FROM drink_info where  cost = 3.5;

SELECT * FROM drink_info where cost=2.5;
INSERT INTO drink_info values
('Blue Moon', '3.5', '3.2', 'blue', 'Y', '12'),
('Lime Fizz', '3.5', '5.4', 'green', 'Y', '24');
DELETE FROM drink_info where cost = 2.5;

-- delete 전 select 하기 >> 같은 where절 사용.
USE gregs_list;
SELECT * FROM clown_info;
-- SELECT * FROM clown_info WHERE activities = 'dancing';
-- DELETE FROM clown_info WHERE activities = 'dancing';

-- update
SELECT * FROM clown_info where name='Mr.hobo';
UPDATE clown_info 
set last_seen ='Tracy\'s' where name='Mr.Hobo' and last_seen = 'Party for Eric Gray';

-- p188
SELECT * FROM clown_info; 
SELECT * FROM clown_info where name='zippo';
update clown_info set activities='singing' where name ='zippo';
SELECT * FROM clown_info where name='Snuggles'  ;
update clown_info set appearance='F, yellow shirt, baggy blue pants' 
where name ='Snuggles' and appearance='F, yellow shirt, baggy red pants';
SELECT * FROM clown_info where name='banzo';
update clown_info set last_seen='Dickson Park' where name ='banzo';
SELECT * FROM clown_info where name='sniffles';
update clown_info set activities='climbing into tiny car' where name ='sniffles';
SELECT * FROM clown_info where name='mr.hobo';
update clown_info set last_seen='Party for Eric Gray' where name ='mr.hobo';
