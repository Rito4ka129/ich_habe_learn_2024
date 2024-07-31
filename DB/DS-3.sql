use 310524ptm_Margarita;
-- Cоздать таблицу weather с тремя полями:
-- название города-(city), дата-(forecast_date), температура в эту даты-(temperature)
Create table weather (
id int not null auto_increment primary key,
city varchar(20),
forecast_date date,
temperature varchar(10));

--  Вывести содержимое таблицы
describe weather;

--  Добавить данные в таблицу, используя запрос INSERT
-- “29 августа 2023 года в Берлине было 30 градусов”

INSERT INTO weather(
city, 
forecast_date, 
temperature)
value ('Berlin', '2024-08-29', '30');

select * from weather;

-- Добавить еще 3 записи в таблицу (произвольную погоду в разных городах в разные дни). 
INSERT INTO weather(
city, 
forecast_date, 
temperature)
value ('Stuttgard', '2024-08-29', '27'), 
      ('Dortmund', '2024-08-29', '22'), 
      ('Bremen', '2024-08-29', '31');

-- Написать запрос, который возвращает содержимое таблицы. 
select * from weather;

-- Изменить данные в таблице о температуре в Берлине с 30 на 26 градусов.
set SQL_SAFE_UPDATES=0;
update weather 
set temperature = 26 
where city = 'Berlin';

-- Поменяйте во всей таблице название города на Paris для записей, где температура выше 25 градусов. 
update weather
set city = 'Paris'
where temperature > 25;
-- Добавить к таблице weather дополнительный столбец min_temp типа integer.
alter table weather add column min_temp integer;

-- Используя команду update, установить значение поля min_temp в 0 для всех записей в таблице.
update weather 
set min_temp = 0;
