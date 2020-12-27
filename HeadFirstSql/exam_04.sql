/* Head First SQL 04장 */

-- p199
SELECT * FROM fish_info WHERE location like '%NJ';
SELECT * FROM fish_records WHERE state = 'NJ';

-- p 209
USE gregs_list;
select * from my_contacts;
USE drinks;
SELECT * FROM easy_drinks;

-- p214, p233
USE gregs_list;
SELECT * FROM clown_info;
DROP TABLE clown_info;
CREATE TABLE clown_info(
	name		VARCHAR(30) NOT NULL,
    last_seen	VARCHAR(50),
    gender		CHAR(1),
    hair		VARCHAR(10),
    cloth		VARCHAR(100),
    feet		VARCHAR(10),
    face		VARCHAR(10),
    point		VARCHAR(100),
    activities	VARCHAR(100)
);

-- p222
SHOW CREATE TABLE my_contacts;
CREATE TABLE my_contacts (
	contact_id		INT NOT NULL AUTO_INCREMENT,
	`last_name` varchar(30) default NULL,
	`first_name` varchar(20) default NULL,
	`email` varchar(50) default NULL,
	`gender` char(1) default NULL,
	`birthday` date default NULL,
	`profession` varchar(50) default NULL,
	`location` varchar(50) default NULL,
	`status` varchar(20) default NULL,
	`interests` varchar(100) default NULL,
	`seeking` varchar(100) default NULL,
    PRIMARY KEY (contact_id)
) ;

-- p227
CREATE TABLE name_info(
	id			INT NOT NULL AUTO_INCREMENT,
    first_name	VARCHAR(100),
    last_name	VARCHAR(100),
    PRIMARY KEY (id)
);

INSERT INTO name_info (id, first_name, last_name) VALUES(NULL, 'Marcia', 'Brady');
INSERT INTO name_info (id, first_name, last_name) VALUES(1, 'Jan', 'Brady'); -- error 1062
INSERT INTO name_info VALUES(2, 'Bobby', 'Brady');
INSERT INTO name_info (first_name, last_name) VALUES('Cindy', 'Brady');
INSERT INTO name_info (id, first_name, last_name) VALUES(99, 'Peter', 'Brady');

SELECT * FROM name_info;
INSERT INTO name_info (first_name, last_name) VALUES('Cindy2', 'Brady');

-- p 230
SELECT * from my_contacts;
ALTER TABLE my_contacts
ADD COLUMN contact_id INT NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (contact_id);