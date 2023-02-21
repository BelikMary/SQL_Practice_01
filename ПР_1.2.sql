-- Создание таблицы, в которой есть данные о всех клиентах, проживающих в 

create table customers_nyc as
	select * from customers c 
	where city = 'New York City';
	
select * from customers_nyc;


-- Запрос, удаляющий клиентов с почтовым индексом 10014
delete from customers_nyc where postal_code = '10014';

select distinct postal_code from customers_nyc
order by postal_code;  

-- Добавление нового текстого столбца с именем Событие
alter table customers_nyc 
add event VARCHAR(20) null;

select * from customers_nyc;

-- Установка значения события на благодырственную вечеринку
update customers_nyc
set "event" = 'thank-you party';

select * from customers_nyc;
