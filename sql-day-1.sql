
show databases;

use sakila;


create database deepika;

show databases;
use deepika;
use deepika;
show tables;

create table students( sid int , name char(10));

-- to use database 
use sakila;

show tables;

-- explain table structre
describe actor;

-- select column   from  table_name
select * from actor;

select actor_id , first_name from actor;

select first_name , actor_id from actor; 
select first_name , actor_id, first_name from actor; 
select first_name , actor_id, first_name ,actor_id*10 from actor;

select * from actor;

-- to filter rows
-- select * from table where condition
-- > < = >= <= != ( not equal: <>)

select * from actor where  actor_id=3;
select * from actor where  actor_id>3;
select * from actor where  actor_id!=3;

select * from actor where first_name='NICK';
select * from actor where first_name>'A';

-- logical operator 
-- and which is a logical operator condition ( col> value)
select * from actor where  actor_id>3 and actor_id<7;
-- select * from actor where  actor_id=3 and actor_id=5; can not give output 
select * from actor where  actor_id>3 and actor_id=5;
-- or operator 
select * from actor where  actor_id=3 or actor_id=5;
select * from actor where  actor_id>3 or actor_id=5;
select * from actor where  actor_id>3 or actor_id=1;

-- select * from actor where  actor_id =2 or actor_id>3 or actor_id=1;
select * from actor where actor_id>2 and actor_id>4 or actor_id=7;
select * from actor where actor_id>2 and actor_id>4 or actor_id>5;



