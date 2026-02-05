-- date function()
select curdate() ,current_time(), current_timestamp(), now();

select now(),adddate(now(),2);  -- current time ke sath
use sakila;
select payment_date ,adddate(payment_date,2) from payment; -- already date uspe apply


select now(),adddate(now(),interval 2 month);

select now(),adddate(now(),interval 2 quarter);
select now(),adddate(now(),interval 4 quarter);

select now(), subdate( now(),2);
select now(), month(now());

select now(), extract(month from now());
select now(), extract(quarter from now());
select now(), extract(day from now());
select now(), extract(week from now());

select payment_date ,month( payment_date) ,  date_format(payment_date,'%m')  from payment;

select *, month(payment_date) from payment where  month(payment_date)=5;
select * from payment where year(payment_date)=2006;


-- multi row function ( aggregate function :- which will be used for calculate)
-- sum() :  only for numbers not even on date 
select sum(amount) from payment;
-- count()
select count(amount) from payment;
-- max()
select max(amount) from payment;
-- min ()
select min(amount) from payment;
select avg(amount) from payment;

select count(amount) , count(payment_id), count(*) from payment;

select  * from payment where month(payment_date) in (5,6);
select  count(*) from payment where month(payment_date) in (5,6);

select sum(amount) , count(amount) from payment  where  amount>5 and month(payment_date)>3 ;

 -- select sum(amount) , count(payment_id) from payment where amount > 5 and month(payment_date) >3 ;
-- SELECT  COUNT(*) AS number_of_transactions, SUM(amount) AS total_amount FROM payment WHERE amount > 5 AND MONTH(payment_date) > 3;
select amount from payment where amount > 0.5;
-- 1st part
select payment_id ,amount, date(payment_date) , last_day(payment_date)from payment;
-- 2nd part
select payment_id ,amount, date(payment_date) , last_day(payment_date)from payment where date(payment_date)= last_day(payment_date) 
and amount > 0.5;
-- 3rd part
select count(customer_id),count(distinct(customer_id)) from payment where date(payment_date)= last_day(payment_date) 
and amount > 0.5;


select distinct customer_id from payment;

select distinct (customer_id) , amount from payment;
select distinct customer_id , amount from payment; -- alwayes follow this approach

-- combination of amount and staff_id should be unique
select distinct  amount, staff_id from payment;
-- we can choose any column before distinct 
-- example select  customer_id distinct  amount from payment;  
-- combination of 2 column is possible in distict after distinct keyword ex: distinct col1 , col2
-- but it is not possible col1 distinct col2 

select distinct  amount, staff_id , customer_id from payment;

	