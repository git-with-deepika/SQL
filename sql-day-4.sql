select 'abhishek';
-- trim (select value)	 only for testing purpose


select char_length('abhi ');
select char_length(trim('abhi   '));

select trim('  abhi ');
-- do not remove spaces from middle
select char_length(trim('ab  hi')); 

-- naman 
select trim(both 'a' from 'aaaanaman');


-- l/rtrim only removes spaces
-- trim remove spaces as well as character also

use sakila;
select first_name , trim( both 'E' from first_name) from actor;

-- number function 
-- 1. round 
select 14.68 , round(14.68);
-- for decimal round
select 14.68 , round(14.68,1);
select 14.68 , round(14.48,1);
select 14.68 , round(23.654,2);
select 14.68 , round(2.68,-1);
select 14.68 , round(6.68,-1);
select 14.68 , round(2.68,-1);
select 14.68 , round(23.68,-1);
select 14.68 , round(46.68,-1);

select 14.68 , round(46.68,-2);
select 14.68 , round(56.68,-2);
select 14.68 , round(127.68,-2);
select 14.68 , round(167.68,-2);
select 14.68 , round(14.68,2) ,  truncate(14.685,2);

-- floor : niche wali value
select floor(5.9999999);
--  ceil :- upper value
select ceil(6.000001);

-- distinct function gives all unique values from column 
select distinct (amount) from payment;
-- function count(row)
select count(first_name ) from actor;
select count( distinct (first_name)) from actor;


