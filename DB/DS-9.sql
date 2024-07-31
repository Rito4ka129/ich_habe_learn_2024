-- 1. Вывести текущую дату и время.
SELECT NOW();

-- 2.Вывести текущий год и месяц
SELECT DATE_FORMAT(NOW(), '%Y-%m');

-- 3.Вывести текущее время
SELECT DATE_FORMAT(NOW(),'%H - %i - %s');

-- 4.Вывести название текущего дня недели
SELECT weekday(NOW());

SELECT DATE_FORMAT(NOW(),'%W') as current_day_of_week;

-- 5.Вывести номер текущего месяца
SELECT DATE_FORMAT(NOW(),'%m') as current_monts_of_week;

-- 6.Вывести номер дня в дате “2020-03-18”
SELECT DAY('2020-03-18');

-- 7.Подключиться к базе данных shop (которая находится на удаленном сервере).
use shop;

-- 8.Определить какие из покупок были совершены в апреле (4-й месяц)
SELECT * 
FROM ORDERS
WHERE EXTRACT(MONTH FROM ODATE)=4;

-- 9.Определить количество покупок в 2022-м году
SELECT * 
FROM ORDERS
WHERE EXTRACT(YEAR FROM ODATE)=2022;

-- 10.Определить, сколько покупок было совершено в каждый день. Отсортировать строки в порядке 
-- возрастания количества покупок. Вывести два поля - дату и количество покупок
SELECT odate, COUNT(odate)
FROM ORDERS
GROUP BY odate order by COUNT(odate);

-- 11.Определить среднюю стоимость покупок в апреле
SELECT avg(AMT) 
FROM ORDERS
WHERE EXTRACT(MONTH FROM ODATE)=4;