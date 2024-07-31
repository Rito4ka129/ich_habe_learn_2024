use 310524ptm_Margarita;

-- Вывести все заказы, отсортированные по убыванию по стоимости
SELECT * 
FROM 310524ptm_Margarita.orders
order by price DESC;

-- Вывести всех заказчиков, у которых почта зарегистриварована на gmail.com
SELECT customer_id, first_name,last_name 
FROM customers
WHERE email LIKE '%@gmail.com';

-- Вывести заказы, добавив дополнительный вычисляемый столбец status, который вычисляется по стоимости заказа и имеет три значения: low, middle, high. 
SELECT * FROM orders;

select *, 
case when price < 60 then 'Low'
when price between 60 and 90 then 'Mid'
else 'High'
end as Status
from orders;

-- Вывести заказчиков по убыванию рейтинга.
SELECT * from customers; 

select first_name, last_name, rating
from customers
order by rating DESC;

-- Вывести всех заказчиков из города на ваш выбор. 
SELECT * 
from customers 
where city like "Herson";
SELECT * FROM orders;

-- Написать запрос, который вернет самый часто продаваемый товар. 
SELECT item_id, count(item_id) as count
FROM orders
group by item_id 
order by count desc
limit 1;

-- Вывести список заказов с максимальной скидкой. 
select *, 
((price - discounter_price)) as discounter_abs
from orders
WHERE discounter_price = (SELECT MAX(discounter_price) FROM orders);
 
 select * 
from orders 
where (price - discounter_price) = (
    select max(price - discounter_price) 
    from orders
);

-- Ответьте в 1 предложении: как вы определите скидку? 
-- Скидка определяется как разница между нормальной ценой и скидочной ценой.

-- Ответьте в 1 предложении: может ли это быть разница между нормальной ценой и скидочной ценой? 
-- Да, скидка может быть разницей между нормальной ценой и скидочной ценой.

-- Написать запрос, который выведет все заказы с дополнительным столбцом процент_скидки, который содержит разницу в процентах между нормальной и скидочной ценой?
select *, 
((price - discounter_price) / price * 100) 
as discounter_percentage
from orders;


