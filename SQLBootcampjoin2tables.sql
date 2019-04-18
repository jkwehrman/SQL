-- DROP DATABASE IF EXISTS SqlBootcampExample;
-- CREATE DATABASE SqlBootcampExample;use SqlBootcampExample;

-- drop table state;

create table state (
code varchar(2) not null primary key,
Name nvarchar(50) not null);



insert state values('AL', 'Alabama');
insert state values('CA', 'California');
insert state values('HI', 'Hawaii');
insert state values('NJ', 'New Jersey');
insert state values('NV', 'Nevada');
insert state values('OH', 'Ohio');
insert state values('TX', 'Texas');
insert state values('WA', 'Washington');

select * from state;

CREATE TABLE Customer (
	ID int not null primary key auto_increment,
	Name varchar(50) not null,
	City varchar(50) not null,
	State varchar(2) not null,
	Sales decimal(18,0) not null,
	Active bit not null 
);

-- Foreign key(state) references state(code)

Insert Customer (Name, City, State, Sales, Active) Values ('Acme, inc.','Jersey City','NJ',14381891,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Widget Corp','Seattle','WA',97865829,1);
Insert Customer (Name, City, State, Sales, Active) Values ('123 Warehousing','Los Angeles','CA',77503710,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Demo Company','Columbus','OH',74647541,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Smith and Co.','Honolulu','HI',36046590,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Foo Bars','Fresno','CA',39912857,1);
Insert Customer (Name, City, State, Sales, Active) Values ('ABC Telecom','Birmingham','AL',31149083,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Fake Brothers','Stockton','CA',31226191,1);
Insert Customer (Name, City, State, Sales, Active) Values ('QWERTY Logistics','Lubbock','TX',17226905,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Demo, Inc.','Las Vegas','NV',69551557,1);
Insert into Customer (Name, City, State, Sales, Active)
Values
('Super Cool Computers', 'Cinci', 'OH', 4328978532974892, 1),
('Target', 'Cinci', 'OH', 63470, 1);

select * from customer;

-- Foreign key(state) references state(code)

ALTER TABLE Customer
ADD CONSTRAINT FK_StateCode
FOREIGN KEY (state) REFERENCES State(code);

Select * from customer
join state
on customer.state = state.code;
