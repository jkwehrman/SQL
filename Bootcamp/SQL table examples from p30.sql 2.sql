select * from customer;
-- insert statement

insert into customer  
values (15, 'Gibson', 'Memphis', 'TN', 9876324, 1);

insert into customer  
values (19, 'Gibson', 'Memphis', 'TN', 654345, 1);

insert into customer (name, city, state, sales, active)
values ('Ibanez', 'Bensalem', 'PA', 9876678, 1);

-- update statement

update customer 
	set name = 'Pearl', 
    city = 'Test',
    state = 'TE'
    where id = 18;

  -- select using 'in' clause    
       select * from customer
    where id in (18, 19);
    
    delete from customer
    where id in (18, 19);