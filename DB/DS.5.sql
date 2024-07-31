-- 1. Подключиться к базе данных world (которая находится на удаленном сервере). 
use world;

-- 2.Посмотреть на таблицы city, country из базы world. В каждой таблице есть поле название (Name) и население (Population). Поле Name в одной таблице означает название города, а в другой - название страны. 
-- Написать запрос с помощью UNION, который выводит список названий всех городов и стран с их населением. Итоговая выборка должна содержать два столбца: Name, Population. 
(select name, population from city)
union
(select name, population from country);

-- 3. Посмотреть на таблицы в базе world и объяснить ограничения нескольких столбцов - ответить 1 предложением.
-- Ограничения используются, чтобы ограничить типы данных, которые могут храниться в таблице. Это обеспечивает точность и надежность данных в базе
-- данных. Они могут применяться либо на уровне столбцов, либо на уровне таблицы.

-- 4. Далее работаем на локальном сервере. Создать новую таблицу citizen, которая содержит следующие поля: уникальное автоинкрементное, номер соц страхования, имя, фамилию и емейл. 
use 310524ptm_Margarita;
create table citizen (
    id int auto_increment primary key,
    social_security_number varchar(20),
    firstname varchar(50) not null,
    lastname varchar(50),
    email varchar(100)
);

-- 5.На вашем локальном сервере в любой базе создать таблицу без ограничений (любую, можно взять с урока). 
create table coworkers (
    id int auto_increment primary key,
    name varchar(100),
    department varchar(100)
);

-- 6.Добавить в таблицу 5 значений. Добавить 3 человека с одинаковыми именами и 2 человека без lastname
insert into citizen (social_security_number, firstname, lastname, email) 
values ('123456789', 'johann', 'schmidt', 'johann.schmidt@example.com'),
('987654321', 'anna', 'müller', 'anna.müller@example.com'),
('555555555', 'maxim', 'ivanov', 'maxim.ivanov@example.com'),
('111111111', 'johann', '', 'johann.newman@example.com'),
('222222222', 'maria', '', 'maria.green@example.com');

-- 7.Использовать оператор alter table … modify , чтобы добавить ограничение not null на поле firstname и lastname. 
alter table citizen
modify firstname varchar(50) not null,
modify lastname varchar(50) not null;

-- 8.Добавить ограничение unique для пары firstname\lastname. 
alter table citizen
add constraint uc_firstname_lastname unique (firstname, lastname);

-- 9.Удалить таблицу из базы и пересоздать ее, модифицировав запрос add table так, чтобы он учитывал ограничения (см примеры из класса).
drop table if exists citizen;

create table citizen (
    id int auto_increment primary key,
    social_security_number varchar(20),
    firstname varchar(50) not null,
    lastname varchar(50) not null,
    email varchar(100),
    constraint uc_firstname_lastname unique (firstname, lastname)
);

-- 10.Добавить правильные и неправильные данные (нарушающие и не нарушающие ограничения). 
insert into citizen (social_security_number, firstname, lastname, email) 
values ('123456789', 'johann', 'schmidt', 'johann.schmidt@example.com'),
       ('987654321', 'anna', 'müller', 'anna.müller@example.com');

insert into citizen (social_security_number, firstname, lastname, email) 
values ('555555555', 'maxim', 'ivanov', 'maxim.ivanov@example.com'),  
       ('111111111', 'johann', '', 'johann.newman@example.com');  

select * from coworkers;

