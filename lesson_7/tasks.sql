use shop;

-- Первое задание
select * from users where id in(
	SELECT distinct user_id FROM orders
);


-- Второе задание
select * from products join catalogs on products.catalog_id = catalogs.id;


-- Третье задание
use task_3;
select * from flights;
select * from cities;

select from_flights.name as 'Откуда', to_flights.name as 'Куда' from (
	select f.id, f.from_flights, c.name from flights as f join cities as c on f.from_flights = c.label order by f.id
) as from_flights join (
	select f.id, f.to_flights, c.name from flights as f join cities as c on f.to_flights = c.label order by f.id
) as to_flights on to_flights.id = from_flights.id;