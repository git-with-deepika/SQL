use sakila;
show databases;


-- concat to combine 
select first_name, last_name , concat('Mr', first_name, last_name) from actor;

select first_name, last_name , concat('Mr', first_name,' ', last_name) from actor;

-- extracrt all data first_name,last_name='EDCHASE" 	
select * from actor where concat(first_name,last_name)='EDCHASE';

select *,concat(first_name ,last_name) from actor
where concat(first_name,last_name) like '%A';

select *,concat(first_name ,last_name) from actor
where concat(first_name,last_name) like '%A%A%';


-- cocat_ws :- conact with sapater
select first_name , last_name ,concat_ws('-','Mr',first_name , last_name) from actor;

-- substr :- extract kuch portion ko ( extract data basis of position)
select first_name ,last_name,substr(last_name,2) from actor;
select first_name ,last_name,substr(last_name,5) from actor;
select first_name ,last_name,substr(last_name,-2) from actor;
select first_name ,last_name,substr(last_name,-3) from actor;
select first_name ,last_name,substr(last_name,1,4) from actor;
select first_name ,last_name,substr(last_name,-3,2) from actor;

-- replace
select first_name ,replace(first_name ,'A', '#') from actor;
select first_name ,replace(first_name ,'A', ' ') from actor;