-- Работаем с базой world:
use world;
-- 1. Вывести количество городов для каждой страны. Результат должен содержать CountryCode, CityCount (количество городов в стране). 
select
CountryCode, 
count(*) as CityCount
from city
group by CountryCode;

-- Поменяйте запрос с использованием джойнов так, чтобы выводилось название страны вместо CountryCode. 
SELECT c.Name as CountryName, COUNT(DISTINCT ci.City) as CityCount
FROM countries c
JOIN (SELECT DISTINCT City, CountryCode FROM cities) ci ON c.CountryCode = ci.CountryCode
GROUP BY c.CountryCode;


-- 2. Используя оконные функции, вывести список стран с продолжительностью жизнью и средней продолжительностью жизни. 
select
-- 3. Используя ранжирующие функции, вывести страны по убыванию продолжительности жизни.
select
-- 4. Используя ранжирующие функции, вывести третью страну с самой высокой продолжительностью жизни.
select
