-- create database
create database demonstration;

-- use database
use demonstration;

-- create table
create table transportation (
-- Varchar(32) indicates that the maximum number of characters that can be 
-- stored under its corresponding variable is 32.
 ship_mode varchar(32),
 vehicle_company varchar(32),
 toll_required boolean
 );
 
 -- INSERTING data
insert into transportation value ('DELIVERY TRUCK', 'Ashok LeyLand', false);
insert into transportation value ('REGULAR AIR', 'Air Asia', false);

select * from transportation;

-- update record on some condition
update transportation set toll_required = true where ship_mode = "DELIVERY TRUCK";
-- if update fail turn the safemode in prefrences --> off and restart the workbench.

-- delete particular record
delete from transportation where vehicle_company = "Air Asia";

select * from transportation;

-- DDL command to add new column
alter table transportation add column vehicle_number varchar(32);

update transportation set vehicle_number = "MH-05-81234";
select * from transportation;
