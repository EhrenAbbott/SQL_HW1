--1. How many actors are there with the last name ‘Wahlberg’?

select * 
from actor 
where last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99? 
select *
from payment 
where amount between 3.99 and 5.99;

--3. What film does the store have the most of? (search in inventory)
select  count(film_id)
from inventory
group by film_id
order by count(film_id) desc;


--4. How many customers have the last name ‘William’?
select * 
from customers
where last_name = 'William';

--5. What store employee (get the id) sold the most rentals?
select count(staff_id), staff_id
from rental
group by staff_id
order by count(staff_id);


--6. How many different district names are there?
select count(distinct store_id)
from store;

--7. What film has the most actors in it? (use film_actor table and get film_id)
select count(actor_id), film_id
from film_actor 
group by film_id
order by count(actor_id) desc; 

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
select  count(customer_id)
from customer 
where last_name like '%es';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
select count(payment_id)
from payment 
where customer_id > 380 and customer_id < 430
group by amount
having count(rental_id) > 250;

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
select count(distinct rating)
from film; 

select rating
from film 
group by rating
order by count(rating) desc;



