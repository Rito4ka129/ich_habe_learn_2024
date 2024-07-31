-- 1.Подключитесь к базе данных hr (которая находится на удаленном сервере). 
USE hr;

-- 2.Выведите количество сотрудников в базе
select count(*) as Count_of_employees
from employees;

-- 3.Выведите количество департаментов (отделов) в базе
select count(*) as Conunt_of_departments
from departments;

-- 4.Подключитесь к базе данных World (которая находится на удаленном сервере). 
use world;

-- 5.Выведите среднее население в городах Индии (таблица City, код Индии - IND)
select avg(population) 
from city
where CountryCode = 'IND';

-- 6.Выведите минимальное население в индийском городе и максимальное.
select min(population) 
from city
where CountryCode = 'IND';

select max(population) 
from city
where CountryCode = 'IND';

-- 7.Выведите самую большую площадь территории. 
select max(SurfaceArea)
from country;

-- 8.Выведите среднюю продолжительность жизни по странам. 
select population, avg(LifeExpectancy) 
from country
group by population;


-- 9.Найдите самый населенный город (подсказка: использовать подзапросы)
SELECT * from city;

select 
name, population
FROM city
where population = 
(
select 
  max(population)
    from city
    )
;

select 
  name, 
    population
from 
  city
order by population DESC
limit 1
;