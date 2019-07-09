
DROP DATABASE IF EXISTS games;
CREATE DATABASE games;
USE games;
-- create the Product table
CREATE TABLE games (
  Name						VARCHAR(25)             NOT NULL,
  Type        				VARCHAR(15)    			NOT NULL,    
  MinimumPlayers			INT   					NOT NULL,
  MaximumPlayers			INT   					NOT NULL,
  Description				VARCHAR(125)    		NOT NULL
);
-- create Invoice table
-- create LineItem table
-- insert some rows into the Product table
INSERT INTO Product VALUES
(1, "King of Tokyo", "board game", 2, 6, "Best game ever");

-- insert some test data for invoice and line item, based on products above
INSERT INTO Invoice VALUES
(2, "Euchre", "card game", 4, 4, "Family Card game");