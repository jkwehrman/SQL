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





CREATE TABLE Enrollment (
  ID			INT				PRIMARY KEY  AUTO_INCREMENT,
  StudentID		INT				NOT NULL,
  CourseID		INT				NOT NULL,
  Grade			decimal(5,2),
  FOREIGN KEY (studentID) REFERENCES Student (ID),
  FOREIGN KEY (CourseID) REFERENCES Course (ID)
);

-- Please add data in enrollment.

INSERT INTO Course VALUES
(1, 101, 'Water Bending', 'Bending the water in plants'),
(2, 201, 'Earth Bending', 'Using Rocks for Basic Shelter'),
(3, 301, 'Air Bending', 'Fun with Air Scooters'),
(4, 401, 'Fire Bending', 'Redirecting Electricity')
;

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
