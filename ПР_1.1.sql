-- Запрос, который извлекает все электронные письма в штате флорида в алфавитном порядке

select * from emails e where customer_id in (
	select customer_id from customers c where state = 'FL'
	order by last_name
	);
	
-- Запрос, который извлекает все имена, фамилии и данные электронной почты для клиентов в Нью-Йоркe. Они должны располагаться в алфавитном порядке и фамилия следует за именем
select first_name, last_name, email from customers c where city = 'New York City'
order by first_name;

-- Запрос, который возвращает всех клиентов с заказанным номером телефона на дату добавления клиента в базу данных 
select * from customers c where phone is not null and date_added is not null
order by date_added;

