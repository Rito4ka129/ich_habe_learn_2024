-- домашнeе задание 2


-- 1.вывести список всех сотрудников
SELECT last_name FROM employees;

 -- 2.Найти поле с зарплатой сотрудника. 
SELECT salary FROM employees;

-- 3.Используя операторы case/when/end, изменить запрос так, чтобы результатом был только один столбец, назовите его SALARY_GROUP и оно 
-- будет принимать значение 1 если зп сотрудника больше 10000 и значение 0, если меньше.
select salary, 
case
	when salary > 10000 then 'SALARY_GROUP1' 
    when salary <= 10000 then 'SALARY_GROUP0'
    end as SALARY_GROUP
    from  hr.employees 
    order by SALARY_GROUP;

-- 4.Ответить одним предложением: почему выводится только один столбец? 
-- По условиям задачи была выбрана только одна строка из таблицы и выведен результат благодаря условному оператору "case"(фильтрация данных).

-- 5.Изменить запрос, так, чтобы вывелось два столбца: имя сотрудника и новое поле SALARY_GROUP.
SELECT first_name,
case
	when salary > 10000 then 'SALARY_GROUP1' 
    when salary <= 10000 then 'SALARY_GROUP0'
    end as SALARY_GROUP
    from  hr.employees 
    order by SALARY_GROUP;
