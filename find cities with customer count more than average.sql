-- count total average customers per city
-- statistically, how to calculate average amount of customers per city?
-- below, two way to calculate..


-- first solution to find average customers count per city:
select 
  (select count(*) from city) 'cities'
, (select count(*) from customers) 'total customers'
, ((select count(*) from customers) / (select count(*) from city)) 'average_per_city'

-- second solution:
select avg(tbl_a.counts) 'average_per_city' from
(select g.city_name, count(p.customer_id) 'counts'
from 
	city g 
	join customers p on g.city_id = p.city_id
group by g.city_name) tbl_a

-- let's assign to variable
declare @AvgCustomersPerCity int = 
	((select count(*) from customers) / (select count(*) from city))
select @AvgCustomersPerCity '@AvgCustomersPerCity'


-- Write a query that will return all cities with more customers
-- than average number of customers of all cities.
select 
c.country_name
, g.city_name
, count(p.customer_id) 'customer count'
from 
	city g 
	join customers p on g.city_id = p.city_id
	join country c on c.country_id = g.country_id
group by g.city_name, c.country_name
having count(p.customer_id) > @AvgCustomersPerCity