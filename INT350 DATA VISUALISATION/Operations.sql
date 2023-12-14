Create database class;

use class;

create table students(
S_ID int primary key,
S_Name varchar(30),
Marks int,
S_Status boolean not null
);

create table teacher(
t_ID int primary key,
t_Name varchar(30),
Contact int,
t_Status boolean not null
);

create table TeachTo(ttid int Primary key auto_increment, S_ID int not Null, t_ID int not null, foreign key(S_ID) 
references students(S_ID), Foreign key(t_ID) references teacher(t_ID));

insert into students(S_ID, S_Name, Marks, S_Status) values ('1', 'Garvit', '90', True);
insert into students(S_ID, S_Name, Marks, S_Status) values ('2', 'Anshuman', '85', True);
insert into students(S_ID, S_Name, Marks, S_Status) values ('3', 'Rahul', '95', False);
insert into students(S_ID, S_Name, Marks, S_Status) values ('4', 'Kapil', '65', False);
insert into students(S_ID, S_Name, Marks, S_Status) values ('5', 'Jyotiraditya', '75', True);

insert into teacher(t_ID, t_Name, Contact, t_Status) values ('1', 'Aman', 1234, True);
insert into teacher(t_ID, t_Name, Contact, t_Status) values ('2', 'Harpreet', 2345, False);
insert into teacher(t_ID, t_Name, Contact, t_Status) values ('3', 'Nandini', 3456, False);
insert into teacher(t_ID, t_Name, Contact, t_Status) values ('4', 'Subhodeep', 4567, True);
insert into teacher(t_ID, t_Name, Contact, t_Status) values ('5', 'Avtar', 5678, True);

select * from teacher;
select * from students;

insert into TeachTo(S_ID,T_ID) values(1,101);

select * from TeachTo;

select 2+3;

select 2+3 as Add_Num;

select 5 div 2;

select 2 MUL 3; -- MUL is for foreign key representation

select 2 ADD 3; -- ADD key work as reserved

describe TeachTo;

select 2+3 from dual;
-- Div is not reserved so used as operator
-- SUB is reserved for joints

SELECT 18014398509481984*18014398509481984;

-- = Equal to
-- < greater than
-- > less than
-- <> not equal to
-- <= greater than equal to
-- >= less than equal to
