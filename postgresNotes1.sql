16/07/2024

DROP DATABASE dvdrental;
CREATE DATABASE dvdrental;


pg_restore -U postgres -d dvdrental C:\Users\dhanesh.a\Downloads\dvdrental\dvdrental.tar

psql -U postgres

\c dvdrental >> connect to the database dvdrental

\dt >> list down the tables in dvdrental

\! cls >> to clear screen

\d tablename

select now()


SELECT * FROM CUSTOMER;
SELECT FIRST_NAME FROM CUSTOMER;
SELECT FIRST_NAME, LAST_NAME, EMAIL FROM CUSTOMER;

select first_name || ' ' || last_name "full name", email from Customer;

select first_name || ' ' || last_name "full name", email from Customer
order by first_name asc, last_name desc;

select email, length(email) from Customer;






create table sort_demo(num int);

insert into sort_demo(num)
values (1), (2), (3), (null);

select * from sort_demo order by num;
select * from sort_demo order by num desc;
select * from sort_demo order by num desc nulls first;



----------------------------------------------------------------------------------------------------------------------------------------------------------
select distinct district from address;
select * from address where district ='Lima';

Operators used with where clause
= Equal
> Greater than
< Less than
<> or 
!= not equal
IN - returns true if a value matches any value in the list
BETWEEN - returns true if a value is between a range of values
Like - returns true if value matches a pattern
is null - returns true if value is null
not - negate the result of other operators



-----------------------------------------------------------------------------------------------------------------------------------------------------------
Select last_name,first_name from customer where first_name = 'Jamie';
Select last_name,first_name from customer where first_name = 'Jamie' and last_name = 'Rice';
Select last_name,first_name from customer where first_name = 'Adam' or last_name = 'Rodriguez';
Select last_name,first_name from customer where first_name in ('Ann','Anne','Annie');
Select last_name,first_name from customer where first_name like 'Ann%';
Select last_name,first_name from customer where first_name like 'A%' and length(first_name) between 3 and 5;
Select first_name,last_name from customer where first_name like 'Bra%' and last_name <> 'Motley';



Select address,district from address where district = 'Alberta';
Select address,district from address where district = 'Alberta' and address = '23 Workhaven Lane';
Select address,district from address where district = 'Alberta' or address = '23 Workhaven Lane';
Select address,district from address where district in ('A','Al','Alb');
Select address,district from address where district like 'A%';
Select address,district from address where district like 'A%' and length(district) between 3 and 8;
Select district,address from address where district like 'Cal%' and address <> '770 Bydgoszcz Avenue';



Select title,length,rental_rate from film where length > 180 and rental_rate < 1;
Select title,length,rental_rate from film where length > 3 or rental_rate < 0.99;
Select title,length,rental_rate from film where length > 3 or rental_rate = 0.99;
Select film_id,title,release_year from film order by film_id limit 5;
Select film_id,title,release_year from film order by film_id limit 5 offset 3;
Select film_id,title,release_year from film order by film_id limit 1 offset 3;
Select film_id,title,release_year from film order by film_id desc limit 5;
Select distinct rating from film;



Create table t(message text);
Select * from t;
Insert into t(message) values('the rents are now 10% higher than last month'),('the new films will have _ in the title');
Select * from t where message like '%10$%%' escape '$';
Select address, address2 from address where address2 is not null;



Select customer_id, sum(amount) from payment group by customer_id order by sum(amount) desc;
Select staff_id, count(payment_id) from payment group by customer_id order by sum(amount) desc;
Select customer_id, sum(amount) from payment group by customer_id having sum(amount) > 200 order by sum(amount) desc;
Select brand, segment, sum(quantity) from sales;



Select rating, special_features, count(release_year) from film group by cube(rating,special_features);





