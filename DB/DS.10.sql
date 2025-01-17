-- 1.Подключиться к базе данных world
use world;

-- 2.Вывести население в каждой стране. Результат содержит два поля: CountryCode, sum(Population). Запрос по таблице city.
select  CountryCode, sum(Population) 
from  city 
group by CountryCode;

-- 3.Изменить запрос выше так, чтобы выводились только страны с населением более 3 млн человек.
select  CountryCode, COUNT(*) as CityCount 
from  city
group by CountryCode
HAVING sum(Population) > 3000000;

-- 4.Сколько всего записей в результате?         -- 59 записей

-- 5.Поменять запрос выше так, чтобы в результате вместо кода страны выводилось ее название. 
-- (Подсказка: нужен join таблиц city и country по полю CountryCode)
SELECT co.Name as CountryName, SUM(ci.Population) 
FROM city ci
JOIN country co ON ci.CountryCode = co.Code
GROUP BY co.Name
HAVING SUM(ci.Population) > 3000000;

-- 6.Вывести количество городов в каждой стране (CountryCode, amount of cities). 
-- (Подсказка: запрос по таблице city и группировка по CountryCode)
SELECT CountryCode, COUNT(*) AS AmountOfCities 
FROM city 
GROUP BY CountryCode;

-- 7.Поменять запрос так, чтобы вместо кодов стран, было названия стран. 
SELECT c.Name as CountryName, COUNT(ci.ID) as CityCount
FROM city ci
JOIN country c ON ci.CountryCode = c.Code
GROUP BY c.Name;

-- 8.Поменять запрос так, чтобы выводилось среднее количество городов в стране. Подсказка: разделите задачу на несколько подзадач. 
-- Например, сначала вывести код страны и количество городов в каждой стране.  Затем сделать join получившегося результата 
-- с запросом, где высчитывается среднее от количества городов. Потом добавить join, который добавит имена стран, вместо кода. 
select * from city;

select floor(avg(cc.city_count)) as average_cities
from (
select CountryCode, count(Name) as city_count
from city 
group by CountryCode
)as cc;



