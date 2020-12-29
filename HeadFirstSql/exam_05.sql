/* Head First SQL 05장 */

-- 237
USE gregs_list;
DESC my_contacts;
-- ALTER TABLE my_contacts ADD COLUMN phone VARCHAR(20);
-- ALTER TABLE my_contacts MODIFY phone VARCHAR(20) AFTER first_name;
ALTER TABLE my_contacts ADD COLUMN phone VARCHAR(20) AFTER first_name;
-- ALTER TABLE my_contacts MODIFY phone VARCHAR(20) AFTER first_name;

-- p242
drop table projeckts;
CREATE TABLE projeckts(	
	number				int,
	descriptionfproj	VARCHAR(30),
    contractoronjob		VARCHAR(10)
);
INSERT INTO projeckts values
(1, 'outside house paining','Murphy'),
(2, 'kitchen remodel','Valdez'),
(3, 'wood floor installation','Keller'),
(4, 'roofing','Jackson');
SELECT * FROM projeckts;

-- 테이블 이름 바꾸기.
ALTER TABLE projeckts RENAME TO project_list;
SELECT * FROM project_list ;
DESC project_list;

-- 테이블 컬럼 변경 
ALTER TABLE project_list
CHANGE COLUMN number proj_id INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY(proj_id);
ALTER TABLE project_list
CHANGE COLUMN descriptionfproj proj_desc VARCHAR(100), CHANGE COLUMN contractoronjob con_name VARCHAR(30);
ALTER TABLE project_list MODIFY COLUMN proj_desc VARCHAR(120);

-- 컬럼 추가.
ALTER TABLE project_list
ADD COLUMN con_phone VARCHAR(20), ADD COLUMN start_date DATE, ADD COLUMN est_cost int;
ALTER TABLE project_list MODIFY con_phone VARCHAR(10), MODIFY est_cost DECIMAL(7,2);

-- 컬럼 삭제 
ALTER TABLE project_list DROP COLUMN start_date;

-- P255
CREATE TABLE hooptie( 
	color	VARCHAR(10),
    year	VARCHAR(5),
    make	VARCHAR(20),
    mo		VARCHAR(20),
    howmuch DECIMAL(10,3)
);
INSERT INTO hooptie values
('silver','1998','Porsche','Boxter', 17992.540),
(null,'2000','Jaguar','XJ', 15995),
('red','2002','Cadillac','Escalade', 40215.9);
SELECT * FROM hooptie;

ALTER TABLE hooptie 
RENAME car_table,
ADD COLUMN car_id INT AUTO_INCREMENT FIRST,
ADD COLUMN VIN VARCHAR(50) AFTER car_id,
CHANGE COLUMN mo model VARCHAR(20),
MODIFY COLUMN color VARCHAR(10) AFTER model,
MODIFY COLUMN year VARCHAR(5) AFTER color,
CHANGE COLUMN howmuch price  DECIMAL(10,3),
ADD PRIMARY KEY(car_id);
DESC car_table;
SELECT * FROM car_table;
