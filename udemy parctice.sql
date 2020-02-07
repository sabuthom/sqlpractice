create database cats;
use cats;

CREATE TABLE unique_cats2 (
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);

INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);

select * from unique_cats2;

create database UdemyPracticeDatabase;

use UdemyPracticeDatabase;

create table Employees(
	id INT NOT NULL auto_increment,
    last_name varchar(200) NOT NULL,
    first_name varchar(200) NOT NULL,
    middle_name varchar(200),
    age int not null,
    current_status varchar(200) not null default 'employed',
    primary key (id)
);

INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);
 select * from employees;
 
 
 DROP TABLE cats;
 
 CREATE TABLE cats 
  ( 
     cat_id INT NOT NULL AUTO_INCREMENT, 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 
  
  DESC cats;
  
  
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
select * from cats;
select * from cats where breed = "Tabby";
select cat_id from cats;
select name,breed from cats  where breed = "Tabby";
select name,breed from cats  where cat_id = age;
SELECT cat_id AS id, name FROM cats;

SELECT name AS 'cat name', breed as 'cat breed' FROM cats;

SET SQL_SAFE_UPDATES = 0;
update cats set age=14 where name = 'Misty';
update cats set breed='Shorthair' Where breed='Tabby';

select * from cats where name ="Jackson";
update cats set name = 'jack' where name ="Jackson";
update cats set breed = 'British Shorthair' where name = 'Ringo';
select * from cats where name ="Ringo";
SELECT * FROM cats WHERE breed='Maine Coon';
update cats set age = 12 WHERE breed='Maine Coon';
SELECT * FROM cats WHERE age=12;
select * from cats WHERE breed='Maine Coon';

create database shirts_db;
use shirts_db;

drop table shirts;

create table shirts (shirt_id INT auto_increment not null,
article varchar (50) not null,
color varchar(50) not null,
shirt_size VARCHAR(2) not null,
last_worn int not null,
primary key(shirt_id));

insert into shirts (article,color,shirt_size,last_worn) values ('t-shirt','white','S',10),
('t-shirt','green','S',200),
('polo shirt','black','M',10),
('tank top','blue','S',50),
('t-shirt','pink','S',0),
('polo shirt','red','M',5),
('tank top','white','S',200),
('tank top','blue','M',15);

select * from shirts;
INSERT INTO shirts(color, article, shirt_size, last_worn) 
VALUES('purple', 'polo shirt', 'M', 50);

SELECT article, color FROM shirts;
 
SELECT * FROM shirts WHERE shirt_size='M';
 
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size='M';

SET SQL_SAFE_UPDATES = 0;

update shirts set color='off white',shirt_size = 'XS' where color = 'white';


SELECT * FROM shirts WHERE article='polo shirt';
 
UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';
 
SELECT * FROM shirts WHERE article='polo shirt';
 
SELECT * FROM shirts;
 
SELECT * FROM shirts WHERE last_worn=15;
 
UPDATE shirts SET last_worn=0 WHERE last_worn=15;
 
SELECT * FROM shirts WHERE last_worn=15;
 
SELECT * FROM shirts WHERE last_worn=0;
 
SELECT * FROM shirts WHERE color='white';
 
UPDATE shirts SET color='off white', shirt_size='XS' WHERE color='white';
 
SELECT * FROM shirts WHERE color='white';
 
SELECT * FROM shirts WHERE color='off white';
 
SELECT * FROM shirts;

SELECT * FROM shirts;



 
SELECT * FROM shirts WHERE last_worn=200;
 
DELETE FROM shirts WHERE last_worn=200;
 
SELECT * FROM shirts WHERE article='tank top';
 
DELETE FROM shirts WHERE article='tank top';
 
SELECT * FROM shirts WHERE article='tank top';
 
SELECT * FROM shirts;
 
DELETE FROM shirts;