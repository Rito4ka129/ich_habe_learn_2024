-- 1.Написать запрос, возвращающий всех сотрудников, c job_id = IT_PROG.
select * from employees where job_id = "IT_PROG";

-- 2.Изменить запрос так, чтобы вывести всех сотрудников с job_id равной AD_VP
select * from employees where job_id = "AD_VP";

-- 3.SELECT * from HR.EMPLOYEES where job_id = 'IT_PROG' и SELECT * from HR.EMPLOYEES where job_id = 'AD_VP'
SELECT * from hr.employees where job_id = 'IT_PROG';
SELECT * from hr.employees where job_id = 'AD_VP';

-- 4.Воспроизвести самостоятельно следующие запросы: 

-- Найдите сотрудников, с зп от 10 000 до 20 000 (включая концы)
select * from employees where salary between 10000 and 20000;

-- Найдите сотрудников не из 60, 30 и 100 департамента
select * from employees where department_id not in (30, 60, 90);

-- Найдите сотрудников у которых есть две буквы ll подряд в середине имени
select * from employees where first_name like "%_ll_%";

-- Найдите сотрудников, у которых фамилия кончается на a
select * from employees where last_name like "%a";

-- 5.Найти всех сотрудников с зарплатой выше 10000
select * from employees where salary > 10000;

-- 6.Найти всех сотрудников, с зарплатой выше 10000 и чья фамилия начинается на букву L
select * from employees where salary > 10000 and last_name like "L%";

-- 7.Не выполняя запрос к базе данных, предсказать его результат:
select *  from employees where salary > 10000 or salary <= 10000;
-- зарплата больше 10000 тысяч, меньше 10000 или равна 10000.

-- 8.Ответить в 1 предложении: чем он будет отличаться от результата этого запроса?
select * from employees where salary > 10000 or salary < 10000;
-- зарплата больше 10000 или меньше 10000, не равна 10000.

-- 9.Не выполняя запрос к базе, предсказать результат. 
select * from employees where salary > 10000 and salary < 5000;
-- Результата не будет, значение Null