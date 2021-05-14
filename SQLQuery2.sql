--------------UC1---------------
create database Address_Book;
use Address_Book;

----------UC2------------
-----Creating a Table------ 
CREATE TABLE Address_Book(
FirstName char(20),
LastName char(20),
City char(10),
StateName char(10),
Zip int,
Phone varchar(10),
Email varchar(30)
);

--------UC3----------
-------Inserting values into a table--------
INSERT INTO Address_Book VALUES('Arjun','Singh','Bengaluru','Karnataka','560085','845784','arjun@gmail.com');
INSERT INTO Address_Book VALUES('Raj','Rajkumar','Mysore','Karnataka','560085','454645','raj@gmail.com');
INSERT INTO Address_Book VALUES('Ramesh','Star','Goa','Goa','8375','763784','rrr@gmail.com');
INSERT INTO Address_Book VALUES('Suresh','Sharma','Kolkatta','Bengal','574895','09384903','suresh@gmail.com');
INSERT INTO Address_Book VALUES('PRaveen','Sharma','Bengaluru','Karnataka','455454','09384903','praveen@gmail.com');
SELECT * FROM Address_Book;

-------------UC4---------
-----Editing Details Using Name----------
UPDATE Address_Book SET Phone='37733' WHERE FirstName='Arjun';

--------UC5--------------
---Deling a person using name-----
DELETE FROM Address_Book WHERE FirstName= 'Suresh';

-----------------UC6---------
----Retrieving Data by City or State-----
Select * from Address_Book WHERE City='Bengaluru';
Select * from Address_Book WHERE StateName='Karnataka';

------------UC7-----------
-----Size of Address book by City or State--------
Select COUNT(City) as City_Count FROM Address_Book;
Select COUNT(StateName) as State_Count FROM Address_Book;

------------UC8--------
-----Sorting data------
SELECT * FROM Address_Book ORDER BY(FirstName);

--------UC9------------
