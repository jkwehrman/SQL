DROP DATABASE IF EXISTS prs;
CREATE DATABASE prs;
USE prs;

CREATE TABLE User (
ID 				INT            	PRIMARY KEY  	NOT NULL  AUTO_INCREMENT,
UserName		varchar(20) 	NOT NULL 		unique,
Password		varchar(20) 	NOT NULL,
FirstName		varchar(20) 	NOT NULL,
LastName		varchar(20) 	NOT NULL,
PhoneNumber		varchar(12) 	NOT NULL,
Email			varchar(75) 	NOT NULL,
IsReviewer		TinyInt(1) 		NOT NULL,
IsAdmin			TinyInt(1) 		NOT NULL,
IsActive 				tinyint(1) 		default 1 not null,
DateCreated 			datetime 		default current_timestamp not null,
DateUpdated 			datetime 		default current_timestamp on update current_timestamp not null,
UpdatedByUser 			integer 		default 1 not null,
CONSTRAINT 		uname 			UNIQUE (UserName)
);

INSERT INTO User 
(ID,UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) VALUES 
(1,'adumbledore','apassword','Albus','Dumbledore','123-234-3456','Albus@hogwarts.edu',1,1, 1, current_timestamp(), current_timestamp(),1),
(2,'mmcgonagall','bpassword','Minerva','McGonagall','513-600-3456','Albus@hogwarts.edu',1,1, 1, current_timestamp(), current_timestamp(),1),
(3,'ssnape','cpassword','Severus','Snape','345-345-4567','Albus@hogwarts.edu',0,0, 1, current_timestamp(), current_timestamp(),1),
(4,'strelawney','dpassword','Sybill','Trelawney','567-600-7096','Albus@hogwarts.edu',0,0, 1, current_timestamp(), current_timestamp(),1),
(5,'psprout','epassword','Pomona','Sprout','890-890-8907','Albus@hogwarts.edu',0,0, 1, current_timestamp(), current_timestamp(),1),
(6,'fflitwick','fpassword','Filius','Flitwick','513-456-7096','Albus@hogwarts.edu',0,0, 1, current_timestamp(), current_timestamp(),1),
(7,'rhagrid','gpassword','Rubeus','Hagrid','65-654-6543','Albus@hogwarts.edu',0,0, 1, current_timestamp(), current_timestamp(),1),
(8,'sblessing','login','Sean','Blessing','513-600-7096','sean@blessingtechnology.com',1,0, 1, current_timestamp(), current_timestamp(),1);


CREATE TABLE Vendor (
ID 				INT            	PRIMARY KEY  NOT NULL  AUTO_INCREMENT,
Code			varchar(20) 	NOT NULL,
Name			varchar(255) 	NOT NULL,
Address			varchar(255) 	NOT NULL,
City			varchar(255) 	NOT NULL,
State			varchar(2) 		NOT NULL,
Zip				varchar(5) 		NOT NULL,
PhoneNumber		varchar(12) 	NOT NULL,
Email			varchar(100) 	NOT NULL,
IsPreApproved	TinyInt(1) 		NOT NULL,
IsActive 				tinyint(1) 		default 1 not null,
DateCreated 			datetime 		default current_timestamp not null,
DateUpdated 			datetime 		default current_timestamp on update current_timestamp not null,
UpdatedByUser 			integer 		default 1 not null,
CONSTRAINT 		vcode 			UNIQUE (Code)
);

-- insert vendors
INSERT INTO Vendor 
(ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, isPreApproved,  IsActive, DateCreated, DateUpdated, UpdatedByUser) VALUES
(1,'BB-1001','Best Buy','100 Best Buy Street','Louisville','KY','40207','502-111-9099','geeksquad@bestbuy.com',1, 1, current_timestamp(), current_timestamp(),1),
(2,'AP-1001','Apple Inc','1 Infinite Loop','Cupertino','CA','95014','800-123-4567','genius@apple.com',1, 1, current_timestamp(), current_timestamp(),1),
(3,'AM-1001','Amazon','410 Terry Ave. North','Seattle','WA','98109','206-266-1000','amazon@amazon.com',0, 1, current_timestamp(), current_timestamp(),1),
(4,'ST-1001','Staples','9550 Mason Montgomery Rd','Mason','OH','45040','513-754-0235','support@orders.staples.com',0, 1, current_timestamp(), current_timestamp(),1),
(5,'MC-1001','Micro Center','11755 Mosteller Rd','Sharonville','OH','45241','513-782-8500','support@microcenter.com',0, 1, current_timestamp(), current_timestamp(),1);


CREATE TABLE Product (
ID 				INT            	PRIMARY KEY  NOT NULL  AUTO_INCREMENT,
VendorID		INT 			NOT NULL,
PartNumber		varchar(50) 	NOT NULL,
Name			varchar(150) 	NOT NULL,
Price			decimal(10,2) 	NOT NULL,
Unit			varchar(255), 
PhotoPath		varchar(255), 
IsActive 				tinyint(1) 		default 1 not null,
DateCreated 			datetime 		default current_timestamp not null,
DateUpdated 			datetime 		default current_timestamp on update current_timestamp not null,
UpdatedByUser 			integer 		default 1 not null,
FOREIGN KEY (VendorID) REFERENCES Vendor(ID),
CONSTRAINT 		vendor_part 	UNIQUE (VendorID,PartNumber)
);
INSERT INTO Product VALUES
(1,1,'ME280LL','iPad Mini 2',296.99,NULL,NULL, 1, current_timestamp(), current_timestamp(),1),
(2,2,'ME280LL','iPad Mini 2',299.99,NULL,NULL, 1, current_timestamp(), current_timestamp(),1),
(3,3,'105810','Hammermill Paper, Premium Multi-Purpose Paper Poly Wrap',8.99,'1 Ream / 500 Sheets',NULL, 1, current_timestamp(), current_timestamp(),1),
(4,4,'122374','HammerMill® Copy Plus Copy Paper, 8 1/2\" x 11\", Case',29.99,'1 Case, 10 Reams, 500 Sheets per ream',NULL, 1, current_timestamp(), current_timestamp(),1),
(5,4,'784551','Logitech M325 Wireless Optical Mouse, Ambidextrous, Black ',14.99,NULL,NULL, 1, current_timestamp(), current_timestamp(),1),
(6,4,'382955','Staples Mouse Pad, Black',2.99,NULL,NULL, 1, current_timestamp(), current_timestamp(),1),
(7,4,'2122178','AOC 24-Inch Class LED Monitor',99.99,NULL,NULL, 1, current_timestamp(), current_timestamp(),1),
(8,4,'2460649','Laptop HP Notebook 15-AY163NR',529.99,NULL,NULL, 1, current_timestamp(), current_timestamp(),1),
(9,4,'2256788','Laptop Dell i3552-3240BLK 15.6\"',239.99,NULL,NULL, 1, current_timestamp(), current_timestamp(),1),
(10,4,'IM12M9520','Laptop Acer Acer™ Aspire One Cloudbook 14\"',224.99,NULL,NULL, 1, current_timestamp(), current_timestamp(),1),
(11,4,'940600','Canon imageCLASS Copier (D530)',99.99,NULL,NULL, 1, current_timestamp(), current_timestamp(),1),
(12,5,'228148','Acer Aspire ATC-780A-UR12 Desktop Computer',399.99,'','/images/AcerAspireDesktop.jpg', 1, current_timestamp(), current_timestamp(),1),
(13,5,'279364','Lenovo IdeaCentre All-In-One Desktop',349.99,'','/images/LenovoIdeaCenter.jpg', 1, current_timestamp(), current_timestamp(),1);

CREATE TABLE Purchaserequest (
ID 				INT        		PRIMARY KEY  NOT NULL  AUTO_INCREMENT,
UserID			INT 			NOT NULL,
Description		varchar(100) 	NOT NULL,
Justification	varchar(255) 	NOT NULL,
DateNeeded		DATE 			NOT NULL,
DeliveryMode	varchar(25) 	NOT NULL,
Status			varchar(50) 	NOT NULL,
Total			decimal(10,2) 	NOT NULL,
SubmittedDAte	DATE 			NOT NULL,
ReasonForRejection varchar(100),
IsActive 				tinyint(1) 		default 1 not null,
DateCreated 			datetime 		default current_timestamp not null,
DateUpdated 			datetime 		default current_timestamp on update current_timestamp not null,
UpdatedByUser 			integer 		default 1 not null,

FOREIGN KEY (UserID) REFERENCES User(ID)
);

INSERT INTO Purchaserequest VALUES
(1, 1, 'Bunson Burner', 'For Potions Labs', '12-12-19','USPS', 'accepted', 2969.90, '5-12-19', null, 1, current_timestamp(), current_timestamp(), 1),
(2, 8, 'Computer Monitor', 'For OWLS test-taking', '6-6-19','USPS', 'rejected', 99.00, '7-7-19', 'Just find one in the Room of Requirement', 1, current_timestamp(), current_timestamp(), 1),
(3, 4, 'Computer Paper', 'Quiditch Diagrams', '4-4-19','USPS', 'no acceptance needed, under 50.00', 39.99, '3-3-19',null , 1, current_timestamp(), current_timestamp(), 1);


CREATE TABLE Purchaserequestlineitem (
ID 						INT        		PRIMARY KEY  NOT NULL  AUTO_INCREMENT,
PurchaseRequestID		INT 			NOT NULL,
ProductID				INT 			NOT NULL,
Quantity				INT 			NOT NULL,
IsActive 				tinyint(1) 		default 1 not null,
DateCreated 			datetime 		default current_timestamp not null,
DateUpdated 			datetime 		default current_timestamp on update current_timestamp not null,
UpdatedByUser 			integer 		default 1 not null,
FOREIGN KEY (ProductID) REFERENCES Product(ID),
FOREIGN KEY (PurchaseRequestID) REFERENCES PurchaseRequest(ID),
CONSTRAINT 				req_pdt 			UNIQUE (PurchaseRequestID, ProductID)
);

INSERT INTO Purchaserequestlineitem VALUES
(1, 1, 1, 10, 1, current_timestamp(), current_timestamp(), 1),
(2, 3, 4, 1, 1, current_timestamp(), current_timestamp(), 1),
(3, 2, 7, 2, 1, current_timestamp(), current_timestamp(), 1);

--  create user
CREATE USER prs_user@localhost IDENTIFIED BY 'sesame';

GRANT SELECT, INSERT, DELETE, UPDATE ON prs.*TO prs_user@localhost;
      



    
