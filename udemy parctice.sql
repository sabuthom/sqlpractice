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
