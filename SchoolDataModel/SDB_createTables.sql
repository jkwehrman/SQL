DROP DATABASE IF EXISTS sdb;
CREATE DATABASE sdb;
USE sdb;

CREATE TABLE Student (
	ID				INT            PRIMARY KEY  NOT NULL  AUTO_INCREMENT,
	FirstName		nVARCHAR(25)    NOT NULL,    
	LastName		nVARCHAR(25)   NOT NULL,
	StreetAddress	nVARCHAR(25)    NOT NULL,    
	City			VARCHAR(25)   NOT NULL,
    State			VARCHAR(25),    
 	Zip				nVARCHAR(5),   
	Birthdate		date    	NOT NULL,    
	PhoneNumber		nVARCHAR(15)   NOT NULL,   
	email			VARCHAR(25)   NOT NULL,
	SSN				nVARCHAR(13)
);


INSERT INTO Student VALUES
(1, 'Katara', 'of the Water Tribe', '123 Water Way', 'North Pole', 'ND','45283', '2012-12-12', '098-765-5432', 'Katara@starberry.us', '123-12-1234' ),
(2, 'Avatar Aang', 'an Air Temple Nomad', '123 Air Way', 'Southern Air Temple', 'TX','87234', '2004-1-04', '098-765-5432', 'Aang@starberry.us', '123-12-1234' ),
(3, 'Toph', 'Beifong', '123 Rock Way', 'North Pole', 'ND','45283', '2012-12-12', '098-765-5432', 'Katara@starberry.us', '123-12-1234' ),
(4, 'Prince Zuko', 'of the Fire Nation', '123 Fire Way', 'Fireville', 'VT','45283', '2012-12-12', '098-765-5432', 'Katara@starberry.us', '123-12-1234' );

CREATE TABLE Course (
	ID				INT            PRIMARY KEY  AUTO_INCREMENT,
	Number			int    unique,    
	Subject			VARCHAR(40)    NOT NULL,    
	Name			VARCHAR(40)   NOT NULL
);


INSERT INTO Course VALUES
(1, 101, 'Water Bending', 'Bending the water in plants'),
(2, 201, 'Earth Bending', 'Using Rocks for Basic Shelter'),
(3, 301, 'Air Bending', 'Fun with Air Scooters'),
(4, 401, 'Fire Bending', 'Redirecting Electricity')
;



CREATE TABLE Enrollment (
  ID			INT				PRIMARY KEY  AUTO_INCREMENT,
  StudentID		INT				NOT NULL,
  CourseID		INT				NOT NULL,
  Grade			varchar(10),
  FOREIGN KEY (studentID) REFERENCES Student (ID),
  FOREIGN KEY (CourseID) REFERENCES Course (ID)
);

-- Please add data in enrollment.  THERE IS AN ERROR HERE.
INSERT INTO Enrollment VALUES
(1, 1, 2, 'A+'),
(2, 1, 3,'C'),
(3, 2, 4,'B+'),
(4, 3, 1,'B-'),
(6, 4, 1,'A-'),
(7, 4, 2,'A'),
(8, 4, 3 ,'withdrew');



CREATE TABLE Instructor (
	ID				INT            PRIMARY KEY  AUTO_INCREMENT,
	CourseID		int    unique,    
	first			nvarchar(50),
    last			nvarchar(50)
);

INSERT INTO Instructor VALUES
(70, 7878, 'Iroh', 'The Dragon of the West'),
(71, 9090, 'Mr.', 'Lion-Turtle' ),
(72, 7474, 'Foggy', 'Swamp Tribe' );



select * from enrollment;
-- Stolen from other 

-- select actor.firstname, actor.lastname, movie.title, 
-- credit.roll
-- from movie
-- join moviegenre on movie.id = moviegenre.movieID
-- join genre on moviegenre.genreID = genre.ID
-- join credit on movie.id = credit.movieID
-- join actor on credit.actorID = actor.ID
-- where genre.name = 'musical'
-- and movie.year >= 1960;