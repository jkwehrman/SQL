-- create and select the database
-- DROP DATABASE IF EXISTS mma;
CREATE DATABASE mma;
USE mma;

-- create the Product table
CREATE TABLE Product (
  ID			INT            PRIMARY KEY  AUTO_INCREMENT,
  Code          VARCHAR(10)    NOT NULL     UNIQUE,
  Description	VARCHAR(255)   NOT NULL,
  Price			DECIMAL(10,2)  NOT NULL
);

-- create Invoice table
CREATE TABLE Invoice (
  ID			INT				PRIMARY KEY  AUTO_INCREMENT,
  OrderNumber	VARCHAR(25)		NOT NULL     UNIQUE,
  CustomerName	VARCHAR(50)		NOT NULL,
  OrderDate		DATE			NOT NULL,
  Total			DECIMAL(10,2)	NOT NULL
);

-- create LineItem table
CREATE TABLE LineItem (
  ID			INT				PRIMARY KEY  AUTO_INCREMENT,
  InvoiceID		INT				NOT NULL,
  ProductID		INT				NOT NULL,
  Quantity		INT				NOT NULL,
  FOREIGN KEY (InvoiceID) REFERENCES Invoice (ID),
  FOREIGN KEY (ProductID) REFERENCES Product (ID)
);

-- insert some rows into the Product table
INSERT INTO Product VALUES
(1, 'java', 'Murach''s Java Programming', '57.50'),
(2, 'jsp', 'Murach''s Java Servlets and JSP', '57.50'),
(3, 'mysql', 'Murach''s MySQL', '54.50'),
(4, 'android', 'Murach''s Android Programming', '57.50'),
(5, 'html5', 'Murach''s HTML5 and CSS3', '54.50'),
(6, 'oracle', 'Murach''s Oracle and PL/SQL', '54.50'),
(7, 'javascript', 'Murach''s JavaScript and jQuery', '57.50'),
(8,'test','test description',10.00);

-- insert some test data for invoice and line item, based on products above
INSERT INTO Invoice VALUES
(1, 'SB0001', 'Sean Blessing', '2018-03-08', 832.50);

INSERT INTO LineItem VALUES
(1, 1, 7, 5),
(2, 1, 5, 10);

SELECT *
FROM Invoice
JOIN lineitem
    on invoice.id = lineitem.invoiceid
JOIN product
    on lineitem.productid = product.id;
    
    
    -- selected items from join
    select quantity, code, total
    from lineitem
 JOIN invoice
    on invoice.id = lineitem.invoiceid
JOIN product
    on lineitem.productid = product.id;

-- create a user and grant privileges to that user
CREATE USER mma_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON mma.* TO mma_user@localhost;

select * from lineitem;

select * from invoice;

select * from product;

-- Sean's code
Select  i.OrderNumber, i.CustomerName, I.OrderDate, p.code, p.description, p.price, li.quantity
From product p, lineItem li, Invoice i;
-- (gets all data, but more than we want)

-- (order matters, needs not FK first)
-- Lineitem li
-- On p.ID = li.productID
-- Join 
-- Invoice i
-- On ID = li.InvoiceID;


