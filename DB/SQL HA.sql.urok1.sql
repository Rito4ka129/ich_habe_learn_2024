-- IT employees
Use hr;
select * from employees where job_id = 'IT_PROG';
select * from employees where salary > 10000;
select * from employees where salary between 10000 AND 20000;
select * from employees where department_id not in ( 30, 60, 100 );
select * from employees where first_name like "%ll%";
select * from employees where first_name like "%_ll_%";
select * from employees where last_name like "%a";
select * from departments where department_id = 120;
select * from employees where department_id = 90;
select * from employees where salary > 5000;
select * from employees where last_name like "L%";
select * from departments where location_id = "1700";
select  city from locations where country_id = "US";
select salary from employees where first_name = "Lex" and last_name = "De Haan";
select department_name from departments where location_id is null;
select department_name from departments where manager_id is null;
select first_name, last_name from hr.employees where manager_id is null;

-- Используя https://github.com/it-career-hub/MySQL_databases/blob/main/hr_data.sql, вывести список всех сотрудников. SELECT * from hr.employees;

