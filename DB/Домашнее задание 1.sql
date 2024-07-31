select * from employees where  job_id = 'IT_PROG';
select * from employees where  job_id = 'AD_VP';
select * from employees where  job_id = 'IT_PROG' and 'AD_VP';
#  Задание 4.1 
select * from employees where salary between 10000 and 20000;
#  Задание 4.2
select * from employees where department_id not in (60, 30,100); 
#  Задание 4.3
select * from employees where first_name like '%ll%';
#  Задание 4.4
select * from employees where last_name like '%a';
#  Задание 5
select * from employees where salary > 10000;
#  Задание 6
select * from employees where salary > 10000 and last_name like 'L%';