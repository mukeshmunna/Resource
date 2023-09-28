create database Example
use Example
Create table Sample(
Id int not null,
Name varchar(30) not null,
Email varchar(30) null,
PhoneNumber varchar(10) null
);

Insert into Sample(Id, Name, Email, PhoneNumber) values(2, 'suresh', 'suresh12@gmail.com', '9876543121'); 
Insert into Sample(Id, Name, Email, PhoneNumber) values(3, 'Mahesh', 'mahesh12@gmail.com', '7760467611'); 
Insert into Sample(Id, Name, Email, PhoneNumber) values(4, 'Mahi', 'mahi12@gmail.com', '7797877625'); 
Insert into Sample(Id, Name, Email, PhoneNumber) values(1, 'ramesh', 'ramesh12@gmail.com', '9876543211'); 

Select * from Sample;
Select * from Sample where Id=1;
Select * from Sample where Id in (1,2);
Select Name, PhoneNumber from Sample where Id=1;

Update Sample set Name = 'pavan' where Id=2;
Delete from Sample where Id=2;
