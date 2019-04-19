DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

CREATE TABLE Genre (
	ID				INT            PRIMARY KEY  NOT NULL  AUTO_INCREMENT,
	Name			varchar(30)		not null
);

INSERT INTO Genre VALUES
(1, 'Adventure'),
(2, 'Comedy'),
(3, 'Crime'),
(4, 'Drama'),
(5, 'Fantasy'),
(6, 'Historical'),
(7, 'Historical fiction'),
(8, 'Horror'),
(9, 'Magical realism'),
(10, 'Mystery'),
(11, 'Paranoid Fiction'),
(12, 'Philosophical'),
(13, 'Political'),
(14, 'Romance'),
(15, 'Saga'),
(16, 'Satire'),
(17, 'Science fiction'),
(18, 'Social'),
(19, 'Speculative'),
(20, 'Thriller'),
(21, 'Urban'),
(22, 'Western');

CREATE TABLE actor (
	ID				INT            PRIMARY KEY  NOT NULL  AUTO_INCREMENT,
	FirstName			varchar(25)		not null,
    LastName			varchar(25),		
    gender				varchar(10),
    date				date
  
);


INSERT INTO actor VALUES
(1, 'Audrey', 'Hepburn', 'Female', '1929-05-04'),
(2, 'Julie', 'Andrews', 'Female', '1935-10-01'),
(3, 'Gene', 'Kelly', 'Male', '1912-08-23'),
(4, 'Marnie', 'Nixon', 'Female', '1930-02-22'),
(5, 'Donald', 'O''Connor', 'Male', '1925-09-28'),
(6, 'Barbara', 'Streisand', 'Female', '1942-04-24'),
(7, 'Topol', null , 'Male', '1935-09-09'), 
(8, 'Debbie', 'Reynolds', 'Female', '1932-04-01')
;

CREATE TABLE Movie (
	ID				INT            PRIMARY KEY  NOT NULL  AUTO_INCREMENT,
	Title			varchar(100)		not null,
    Rating			varchar(5)			not null,
    year			int					not null,
    director		varchar(50)
);

Select * from actor