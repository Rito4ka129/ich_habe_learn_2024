-- 1.Подключиться к базе данных hr
use hr;

-- 2.Вывести список region_id, total_countries, где total_countries - количество стран в таблице. Подсказка: работаем 
-- с таблицей countries, использовать оконную функцию over() и суммировать count(country_id).
select region_id, 
count(country_id)
from countries
group by region_id;


-- 3.Изменить запрос 2 таким образом, чтобы для каждого region_id выводилось количество стран в этом регионе. Подсказка: 
-- добавить partition by region_id в over().
select
DISTINCT region_id,
count(country_id) over(partition by region_id) as count_countries
from countries;

-- 4.Работа с таблицей departments. Написать запрос, который выводит location_id, department_name, dept_total, где 
-- dept_total - количество департаментов в location_id.
select
location_id,
department_name,
count(*) over(partition by location_id) as dept_total
from departments;

-- 5.Изменить запрос 3 таким образом, чтобы выводились названия городов соответствующих location_id. 
-- select
-- location_id,
-- department_name,
-- count(*) over(partition by location_id) as dept_total
-- from departments;

-- 6.Работа с таблицей employees. Вывести manager_id, last_name, total_manager_salary, где total_manager_salary - 
-- общая зарплата подчиненных каждого менеджера (manager_id). 
select * from employees;

select
	manager_id,
	last_name,
	sum(salary) over (partition by manager_id) as total_manager_salary
from employees;