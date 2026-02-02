use sakila;
show databases;
-- betwwen operator range values 
select * from actor  where actor_id  between 2 and 7;
select * from actor  where actor_id not between 2 and 7;

-- in operator -> specific value ko check krta h
-- like or operator -> select * from actor where actor_id=2 or actor_id-5 or actor_id=7;
select * from  actor where actor_id in(2,5,7);

select * from actor where first_name in ('NICK','ED');
select * from  actor where actor_id not  in(2,5,7);


-- like operator -> partten ko search krta h
-- keyword -> % (zero or more character)  ex-> A%= A 1,2,3,4... (first character is A )
select* from actor where first_name like 'A%';
select* from actor where first_name like 'B%';
select* from actor where first_name like 'ED%';
 
-- (%A) -> A last character  
select* from actor where first_name like '%A';
select* from actor where first_name like '%ED';

select* from actor where first_name like 'A%A';
select* from actor where first_name like 'S%R';

-- at any place A 
select* from actor where first_name like '%A%';

-- R R 2 at any place
select * from actor where first_name like '%R%R%';

-- RR  ek sath
select* from actor where first_name like '%RR%';

-- _ (unserscore) -> only 1 character (single underscore is for single character)
select* from actor where first_name like '_';
-- for two character 
select* from actor where first_name like '__';

select* from actor where first_name like 'A_%';
select* from actor where first_name like '_A%';

-- second last character is R
select* from actor where first_name like '%R_';

select* from actor where first_name like '_A%R_';

-- 1 first character is C and 2nd last character is N
select* from actor where first_name like 'C%N_';
-- 2 name has 2 Any place
select* from actor where first_name like '%A%A%A%';
-- 3 third character is D
select* from actor where first_name like '%D__';
-- 4 continue 2A
select* from actor where first_name like '%AA%';
-- at least 5 character 
select* from actor where first_name like '_____%';
