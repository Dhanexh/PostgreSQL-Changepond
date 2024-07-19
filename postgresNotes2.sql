17/07/2024

Select cust.customer_id, cust.first_name, cust.last_name, p.amount, p.payment_date
from customer cust
inner join payment p on p.customer_id = cust.customer_id
order by p.payment_date;



Select cust.customer_id, cust.first_name || ' ' || cust.last_name "Customer",
s.first_name || ' ' || s.last_name "Staff", p.amount, p.payment_date
from customer cust 
inner join payment p using(customer_id)
inner join staff s using(staff_id)
order by p.payment_date;


select f.film_id, f.title, i.inventory_id
from film f 
left join inventory i 
using(film_id)
order by i.inventory_id desc


Select f.film_id, f.title, i.inventory_id
from inventory i 
right join film f on i.film_id = f.film_id
order by i.inventory_id desc;




Select e.first_name || ' ' || e.last_name Employee,
m.first_name || ' ' || m.last_name Manager
from employee e
inner join employee m on m.employee_id = e.manager_id
order by Manager;



Select c.*, p.* from customer c
full outer join payment p on c.customer_id = p.customer_id;


Select * from language
cross join category;



















