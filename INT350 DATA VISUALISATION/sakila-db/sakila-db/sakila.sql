use sakila;
show tables;

select * from customer;
select * from customer where first_name = "Mary";

create view customer_count
as
select count(*) from customer;
