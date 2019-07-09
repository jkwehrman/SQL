DROP DATABASE IF EXISTS stuffy;
CREATE DATABASE stuffy;
USE stuffy;

-- create the Product table
CREATE TABLE Product (
  ID			INT            PRIMARY KEY  AUTO_INCREMENT,
  Animal        VARCHAR(15)    NOT NULL,    
  Color			VARCHAR(15)   	NOT NULL,
  Size			VARCHAR(20)   	NOT NULL,
  Apendage		INT    			NOT NULL
);

-- create Invoice table


-- create LineItem table


-- insert some rows into the Product table
INSERT INTO Product VALUES
(1,"Dog","Blue","Large",4),
(2,"Cat","Green","Small",4),
(3,"Dragon","Purple","Medium",6),
(4,"Snail","Yellow","X-Large",1),
(5,"Platypus","Blue","Medium",4),
(6,"Octopus","Purple","Large",8),
(7,"Squirrel","Brown","Small",4),
(8,"Starfish","Pink","X-Large",5),
(9,"Lobster","Red","Large",1),
(10,"Spider","Clear","Small",8);

-- insert some test data for invoice and line item, based on products above
INSERT INTO Invoice VALUES
(11, "Slug", "Orange", "Medium", 0);


    


-- create a user and grant privileges to that user
CREATE USER stuffy_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON stuffy.* TO stuffy_user@localhost;





