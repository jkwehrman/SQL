invoiceDROP DATABASE IF EXISTS bmdb;
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
(22, 'Western'),
(23, 'Musical');

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

INSERT INTO Movie VALUES
(1, 'Singin'' In the Rain', 'G', '1952', 'Kelly'),
(2, 'Fiddler on the Roof', 'G', '1971', 'Jewison'),
(3, 'Hello Dolly', 'G', '1969', 'Kelly'),
(4, 'My Fair Lady', 'G', '1964', 'Cukor'),
(5, 'The Sound of Music', 'G', '1965', 'Wise');

CREATE TABLE Credit (
	ID				INT            PRIMARY KEY  NOT NULL  AUTO_INCREMENT,
	MovieID			INT,
    ActorID			INT,
    roll			varchar(100)				not null,
FOREIGN KEY (movieID) REFERENCES Movie(ID),
FOREIGN KEY (ActorID) REFERENCES Actor(ID)
);

INSERT INTO Credit VALUES 
(1,1,3,'Don Lockwood'),
(2,1,5,'Cosmo Brown'),
(3,1,8,'Kathy Selden'),
(4,2,7,'Tevye'),
(5,3,6,'Dolly Levy'),
(6,4,1, 'Eliza Doolittle'),
(7,4,4,'Audrey Hepburn''s Voice'),
(8,5,2,'Maria')
;

CREATE TABLE MovieGenre (
	ID				INT            PRIMARY KEY  NOT NULL  AUTO_INCREMENT,
	MovieID			INT,
    GenreID			INT,
FOREIGN KEY (movieID) REFERENCES Movie(ID),
FOREIGN KEY (GenreID) REFERENCES Genre(ID)
);

INSERT INTO MovieGenre VALUES 
(1,1,2),
(2,1,7),
(3,1,13),
(4,1,23),
(5,2,4),
(6,2,6),
(7,2,13),
(8,2,23),
(9,3,2),
(10,3,7),
(11,3,14),
(12,4,4),
(13,4,18),
(14,4,23),
(15,5,1),
(16,5,6),
(17,5,23);

select actor.firstname, actor.lastname, movie.title, 
credit.roll
 from movie
join moviegenre on movie.id = moviegenre.movieID
join genre on moviegenre.genreID = genre.ID
join credit on movie.id = credit.movieID
join actor on credit.actorID = actor.ID
where genre.name = 'musical'
and movie.year >= 1960;

