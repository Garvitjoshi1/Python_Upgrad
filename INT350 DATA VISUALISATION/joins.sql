create database class4;
use class4;

create table employee(
employee_ID int, 
Name varchar(20), 
salary decimal(8, 2)
);

insert into employee(employee_ID, Name, salary) values(100, 'Jeniffer', 4400);

# can we insert duplicate entry in this data ? Ans. Yes, because of no primary key

select * from employee;

# Change table name from employee to hello
Alter Table employee rename hello ;
insert into hello(employee_ID, Name, salary) values(100, 'Jeniffer', 4400);

select * from hello;

# Add a  new column
ALTER TABLE hello ADD hi int; 

select * from hello;

# Modify existing column
alter table hello modify salary int;

# rename a column
alter table hello rename column Name to Naam;

# Delete a column
alter table hello drop column hi;

# Add primary key
alter table hello add primary key(employee_ID);

# delete 
SET SQL_SAFE_UPDATES = 0;
DELETE FROM hello WHERE employee_ID = 100;

# Add a primary key:
ALTER TABLE hello ADD PRIMARY KEY (employee_ID); 

select * from hello;
insert into hello(employee_ID, Naam, salary) values(101, 'Aman', 4500);
insert into hello(employee_ID, Naam, salary) values(102, 'Jay', 3000);
insert into hello(employee_ID, Naam, salary) values(103, 'Kapil', 5000);

select * from hello;

select count(employee_ID) from hello;

select max(salary) from hello;

select min(salary) from hello;

select avg(salary) from hello;

select count(employee_ID) from hello;

#SELECT * FROM tablename WHERE condition;

SELECT * FROM hello WHERE `employee_ID` = 101;

SELECT * FROM hello WHERE `employee_ID` = 101
AND `Naam` = 'Aman';

SELECT * FROM hello WHERE `employee_ID` = 101
OR `Naam` = 'Aman';

SELECT * FROM hello WHERE employee_ID
IN (101,102);

SELECT * FROM hello WHERE employee_ID
NOT IN (101,102);

select * from hello where employee_ID <> 101;

select * from hello where salary > 5000;
# =======================================================================================================
----------------------------- Functions in SQL--------------------------------------------------

select upper('upgrad');

select lower('UPGRAD');

select substring('upgradeability',1, 6);  # OUTPUT: upgrad

select substring('upgradeability', 6); # OUTPUT: deability
 
select substring_index('www.upgrad.com', '.', '1');

select length('upgrad');
 
select reverse('upgrad');
 
# DATE - TIME FUNCTION
select curtime();

select month('2023-10-20');

select monthname('2023-10-20');

select str_to_date('10-03-2020', '%d-%m-%y'); #daye and format should have same separators

select year('2023-10-12');

select dayname('2023-08-21');

select dayofmonth('2023-08-21');

select dayofweek('2023-08-21');

select * from hello order by employee_ID asc;

show tables;
select * from hello;

describe employee;

-- VARCHAR2 data type is only present in oracle not in MYSQL.

CREATE TABLE customer (
custname VARCHAR(20) PRIMARY KEY
,custstreet VARCHAR(20) NOT NULL
,custcity VARCHAR(20) NOT NULL
,custprovince VARCHAR(2) DEFAULT 'IN' NOT NULL
,custpostal CHAR(7)
,custhphone CHAR(13)
,custbphone CHAR(13)
);

-- we cant direclty apply a primary key in oracle

select * from customer;

insert into customer(Custname,custstreet,custcity,custpostal,custhphone,custbphone) values('Jaffa','Duffa','Thuffa','189+Nas','+092158025827','+095426215245');
insert into customer values('Hari','LPU','Phagwara','IN','144423','+919875123645','+917825411534');

select * from customer;
select * from customer where custcity like 'P%';

CREATE TABLE customer2 (
custname VARCHAR(20) PRIMARY KEY
,custstreet VARCHAR(20) NOT NULL
,custcity VARCHAR(20) NOT NULL
,custprovince VARCHAR(2) DEFAULT 'IN' NOT NULL
,custpostal CHAR(7)
,custhphone CHAR(13)
,custbphone CHAR(13)
);

-- we cant direclty apply a primary key in oracle

select * from customer2;

insert into customer2(Custname,custstreet,custcity,custpostal,custhphone,custbphone) values('Jaffa','Duffa','Thuffa','189+Nas','+092158025827','+095426215245');
insert into customer2 values('Hari','LPU','Phagwara','IN','144423','+919875123645','+917825411534');
select * from customer union select * from customer2;

select * from customer union all select * from customer2;

create table student(student_id int primary key, name varchar(30) not null,
email varchar(30));

alter table student rename column name to sname;

describe student;
insert into student(student_id,sname,email)
values(1,'abc','a@a.com'),(2,'def','b@b.com');

select * from student;
describe student;

create table enrollment(enrollment_id int primary key, student_id int,
course_name varchar(30),grade varchar(30),
foreign key(student_id) references student(student_id));

insert into enrollment(enrollment_id,student_id,
course_name,grade)
values(101,1,'SQL','A+'),(102,2,'Python','A'),
(103,1,'Python','B');

select enrollment.enrollment_id, student.sname, student.email, enrollment.course_name, enrollment.grade from enrollment
INNER JOIN student on enrollment.student_id=student.student_id;

-- Left join

select student.student_id, student.sname,student.email,enrollment.course_name, enrollment.grade from student left join 
enrollment on student.student_id = enrollment.student_id;

insert into student values (3,'ghi','G@I.com');

create table colors(color_name varchar(32)
primary key not null, hex_code varchar(7));
create table sizes(size_name varchar(32),
abbreviation varchar(32));

insert into colors values("black", "#000000");
insert into colors values("white", "#ffffff");
insert into colors values("red", "#ff0000");

insert into sizes values("Medium", "M");
insert into sizes values("Small", "S");
insert into sizes values("Large", "L");

select colors.color_name, colors.hex_code,
sizes.size_name, sizes.abbreviation
from colors cross join sizes;