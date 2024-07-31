-- 1.Используя https://github.com/it-career-hub/MySQL_databases/blob/main/hr_data.sql, вывести список всех сотрудников. SELECT * from hr.employees;
select * from hr.employees;

-- 2.Найти поле с зарплатой сотрудника. 
select salary from hr.employees;

-- 3.Используя операторы case/when/end, изменить запрос так, чтобы результатом был только один столбец, 
-- назовите его SALARY_GROUP и оно будет принимать значение 1 если зп сотрудника больше 10000 и значение 0, 
-- если меньше
SELECT
    CASE WHEN salary > 10000 THEN 1 ELSE 0 END as SALARY_GROUP
FROM hr.employees;

-- 4. Ответить одним предложением: почему выводится только один столбец?:
-- используем оператор CASE/WHEN/END -результатом может быть только один вычисляемый столбец.

-- 5. Изменить запрос, так, чтобы вывелось два столбца: имя сотрудника и новое поле SALARY_GROUP.
select 
first_name, 
last_name, 
CASE WHEN salary > 10000 THEN 1 ELSE 0 END as SALARY_GROUP
FROM hr.employees;

-- 6.Вывести среднюю зарплату для департаментов с номерами 60, 90 и 100 используя составное условие.
SELECT 
    department_id,
    AVG(CASE WHEN department_id IN (60, 90, 100) THEN salary END) AS avg_salary
FROM hr.employees
GROUP BY department_id;
SELECT 
    first_name, last_name,

-- 7.Разделить уровни (level) сотрудников на junior < 10000, 10000<mid<15000, senior>15000 в зависимости от их 
-- зарплаты. Вывести список сотрудников (first_name, last_name, level).    
CASE 
        WHEN salary < 10000 THEN 'junior'
        WHEN salary >= 10000 AND salary <= 15000 THEN 'mid'
        ELSE 'senior'
    END AS level
FROM hr.employees;

-- 8. Посмотреть содержимое таблицы jobs. Написать запрос c использованием оператора case/when/end, 
-- который возвращает 2 столбца: job_id, payer_rank, где столбец payer_rank формируется по правилу: 
-- если максимальная зарплата больше 10000, то “high_payer”, если меньше, то “low payer”. 
SELECT 
    j.job_id,
    IF(MAX(e.salary) > 10000, 'high_payer', 'low_payer') AS payer_rank
FROM 
    hr.employees e
    JOIN hr.jobs j ON e.job_id = j.job_id
GROUP BY 
    j.job_id;

-- 9.Переписать этот запрос с использованием оператора IF.    
SELECT 
job_id,
IF(MAX(salary) > 10000, 'high_payer', 'low_payer') AS payer_rank,
MAX(salary) AS max_salary
FROM hr.jobs
JOIN hr.employees USING (job_id)
GROUP BY job_id
ORDER BY max_salary DESC;

-- 10.Поменять предыдущий запрос так, чтобы выводилось 3 столбца, к двум существующим добавьте max_salary и 
-- отсортировать результат по убыванию.    
SELECT 
job_id,
IF(MAX(salary) > 10000, 'high_payer', 'low_payer') AS payer_rank,
MAX(salary) AS max_salary
FROM hr.jobs
JOIN hr.employees USING (job_id)
GROUP BY job_id
ORDER BY max_salary DESC;