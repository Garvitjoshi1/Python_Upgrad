-- create database name of databae
create database demostration;

-- to bring database in use
use demostration;

-- create table inside database
create table customer(
ID int not null ,
NAME varchar(32) not null,
salary int,
age int
 );
 
 -- Describe the complete table
desc customer;

-- Modification in table, by making ID as primary key
Alter table customer add constraint primary key (ID);

-- Add new column
alter table customer add column employer varchar(32);

-- Drop Command
alter table customer drop column employer;
desc customer;

-- Drop table
drop table customer;

-- Drop Database
drop database demostration;
