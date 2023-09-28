create database MISDB;
use MISDB;


CREATE TABLE hired_candidates (
  Id int NOT NULL Primary Key,
  First_Name varchar(100) NOT NULL,
  Middle_Name varchar(100) DEFAULT NULL,
  Last_Name varchar(100) NOT NULL,
  Email varchar(50) NOT NULL,
  Mobile_Num bigint NOT NULL,
  Hired_City varchar(50) NOT NULL,
  Hired_Date datetime NOT NULL,
  Degree varchar(100) NOT NULL,
  Aggregate_Per float DEFAULT NULL,
  Current_Pincode int DEFAULT NULL,
  Permanent_Pincode int DEFAULT NULL,
  Hired_Lab varchar(20) DEFAULT NULL,
  Attitude_Remark varchar(15) DEFAULT NULL,
  Communication_Remark varchar(15) DEFAULT NULL,
  Knowledge_Remark varchar(15) DEFAULT NULL,
  Status varchar(20) NOT NULL,
  Creator_Stamp datetime DEFAULT NULL,
  Creator_User int DEFAULT NULL,
);

Insert Into fellowship_candidates Values(1, 'deepak', 'Kiran', 'Patil', 'deepak.63584@gmail.com ',8956748596, 'Pune','2019-12-13','B.E' , 75.25,5245,5478,'Mumbai', 'Good', 'Good' , 'Good', '1999-12-13', 1, 'Kiran', 'Farmer' , 7584962547, 300000, 'Pune', 'Pune' , 'photo_path', '2019-12-13', 'Good',1, 1, 1, 'Correct', 'Good', null,1);
Insert Into fellowship_candidates Values(2, 'John', 'A', 'Doe', 'john.doe@example.com', 9876543210, 'New York', '2023-01-01', 'B.Sc', 78.5, 10001, 10001, 'Lab A', 'Good', 'Excellent', 'Excellent', '1999-12-13', 1, 'Emily', 'Driver' , 9898767656, 450000, 'Punjab', 'Punjab' , 'photo_path2', '2019-12-13', 'Good',1, 1, 1, 'Correct', 'Good', null,1);
Insert Into fellowship_candidates Values(3, 'Michael', 'Bond', 'Smith', 'michael.smith@example.com', 9876543212, 'Los Angeles', '2023-02-10', 'PhD', 92.0, 90003, 90003, 'Lab C', 'Excellent', 'Good', 'Excellent', '1999-10-13', 1, 'Ava', 'Farmer' , 9234323456, 350000, 'Chennai', 'Chennai' , 'photo_path3', '2019-10-13', 'Good',1, 1, 1, 'Correct', 'Good', null,1);
Insert Into fellowship_candidates Values(4, 'William', 'D', 'Brown', 'william.brown@example.com', 9876543214, 'Houston', '2023-04-20', 'B.Tech', 80.0, 77005, 77005, 'Lab B', 'Good', 'Good', 'Good', '2001-01-13', 1, 'William', 'Engineeer' , 9867654456, 500000, 'Bangalore', 'Bangalore' , 'photo_path4', '2019-01-13', 'Good',1, 1, 1, 'Correct', 'Good', null,1);
Insert Into fellowship_candidates Values(5, 'James', 'F', 'Anderson', 'james.anderson@example.com', 9876543216, 'Miami', '2023-06-10', 'B.Com', 75.5, 33007, 33007, 'Lab A', 'Good', 'Good', 'Good', '1998-07-13', 1, 'Lucas', 'Doctor' , 6787898973, 900000, 'Mumbai', 'Mumbai' , 'photo_path5', '2019-12-10', 'Good',1, 1, 1, 'Correct', 'Good', null,1);


select * from fellowship_candidates;
 
 -------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE fellowship_candidates (
id int NOT NULL,
first_name varchar(100) NOT NULL,
middle_name varchar(100) DEFAULT NULL,
last_name varchar(100) NOT NULL,
email varchar(50) NOT NULL,
mobile_num bigint NOT NULL,
hired_city varchar(50) NOT NULL,
hired_date datetime NOT NULL,
degree varchar(50) NOT NULL,
aggr_per float DEFAULT NULL,
current_pincode int DEFAULT NULL,
permanent_pincode int DEFAULT NULL,
hired_lab varchar(20) DEFAULT NULL,
attitude_remark varchar(15) DEFAULT NULL,
communication_remark varchar(15) DEFAULT NULL,
knowledge_remark varchar(15) DEFAULT NULL,
birth_date date NOT NULL,
is_birth_date_verified int DEFAULT 0,
parent_name varchar(50) DEFAULT NULL,
parent_occupation varchar(100) NOT NULL,
parent_mobile_num bigint NOT NULL,
parent_annual_sal float DEFAULT NULL,
local_addr varchar(255) NOT NULL,
permanent_addr varchar(150) DEFAULT NULL,
photo_path varchar(500) DEFAULT NULL,
joining_date date DEFAULT NULL,
candidate_status varchar(20) NOT NULL,
personal_info_filled int DEFAULT 0,
bank_info_filled int DEFAULT 0,
educational_info_filled int DEFAULT 0,
doc_status varchar(20) DEFAULT NULL,
remark varchar(150) DEFAULT NULL,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL,
PRIMARY KEY (id)
)

 
Insert Into hired_candidates Values(1, 'deepak', 'Kiran', 'Patil', 'deepak.63584@gmail.com ',8956748596, 'Pune','2019-12-13','B.E' , 75.25,5245,5478,'Mumbai', 'Good', 'Good','Good','Good', null,1);
Insert into hired_candidates values(2, 'John', 'A', 'Doe', 'john.doe@example.com', 9876543210, 'New York', '2023-01-01', 'B.Sc', 78.5, 10001, 10001, 'Lab A', 'Good', 'Excellent', 'Excellent', 'Hired', '2023-09-26 09:00:00', 2)
Insert into hired_Candidates values(3, 'Michael', 'Bond', 'Smith', 'michael.smith@example.com', 9876543212, 'Los Angeles', '2023-02-10', 'PhD', 92.0, 90003, 90003, 'Lab C', 'Excellent', 'Good', 'Excellent', 'Hired', '2023-09-26 11:45:00', 3)
Insert Into hired_candidates values(4, 'William', 'D', 'Brown', 'william.brown@example.com', 9876543214, 'Houston', '2023-04-20', 'B.Tech', 80.0, 77005, 77005, 'Lab B', 'Good', 'Good', 'Good', 'Hired', '2023-09-26 14:15:00', 1)
Insert into hired_candidates values(5, 'James', 'F', 'Anderson', 'james.anderson@example.com', 9876543216, 'Miami', '2023-06-10', 'B.Com', 75.5, 33007, 33007, 'Lab A', 'Good', 'Good', 'Good', 'Hired', '2023-09-26 16:45:00', 3)


select * from fellowship_candidates;

 -------------------------------------------------------------------------------------------------------------------------------------------------------


Create TABLE candidates_personal_det_check(
Id int NOT NULL,
candidate_id int NOT NULL,
field_name int NOT NULL,
is_verified int DEFAULT NULL,
lastupd_stamp datetime DEFAULT NULL,
lastupd_user int DEFAULT NULL,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL
)

 
Insert Into candidates_personal_det_check values(1, 1, 1, 1, '2020-01-01 10:00:00', 0, '2020-01-01 11:00:00', 1)
Insert Into candidates_personal_det_check values(2, 2, 2, 0, NULL, NULL, '2023-09-26 09:30:00', 2)
Insert Into candidates_personal_det_check values(3, 3, 2, 1, '2023-09-26 13:00:00', 3, '2023-09-26 12:00:00', 4)
Insert Into candidates_personal_det_check values(4, 4, 1, 1, '2023-09-26 15:00:00', 4, '2023-09-26 14:00:00', 3)
Insert Into candidates_personal_det_check values(5, 5, 3, 0, NULL, NULL, '2023-09-26 13:30:00', 1)


select * from candidates_personal_det_check;

 -------------------------------------------------------------------------------------------------------------------------------------------------------

 
CREATE TABLE candidate_bank_det(
id int NOT NULL Primary Key,
candidate_id int NOT NULL,
CONSTRAINT FK_candidate_bank_det_candidate_id FOREIGN KEY (candidate_id)REFERENCES fellowship_candidates (id),
name varchar(100) NOT NULL,
account_num bigint NOT NULL,
is_account_num_verified int DEFAULT 0,
ifsc_code varchar(20) NOT NULL,
is_ifsc_code_verified int DEFAULT 0,
pan_number varchar(10) DEFAULT NULL,
is_pan_number_verified int DEFAULT 0,
addhaar_num bigint NOT NULL,
is_addhaar_num_verified int DEFAULT 0,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL,
)


Insert Into candidate_bank_det Values(1, 1, 'deepak Patil', 1234567890, 1, 'ABCD123456', 1, 'ABCPD1234X', 1, 9876543210, 1, '2023-09-26 10:00:00', 2)
Insert Into candidate_bank_det Values(2, 2, 'John Doe', 2345678901, 0, 'EFGH234567', 1, NULL, 0, 8765432109, 1, '2023-09-26 10:30:00', 2)
Insert Into candidate_bank_det Values (3, 3, 'Michael Smith', 3456789012, 1, 'IJKL345678', 1, 'IJKPE4567Y', 1, 7654321098, 1, '2023-09-26 11:00:00', 3)
Insert Into candidate_bank_det Values (4, 4, 'William Brown', 4567890123, 0, 'MNOP456789', 1, NULL, 0, 6543210987, 1, '2023-09-26 11:30:00', 2)
Insert Into candidate_bank_det Values  (5, 5, 'James Anderson', 5678901234, 1, 'QRST567890', 1, 'QRSTP5678Z', 1, 5432109876, 1, '2023-09-26 12:00:00', 3)

 

select * from candidate_bank_det;

 -------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE candidates_bank_det_check (
id int NOT NULL,
candidate_id int NOT NULL,
field_name int NOT NULL,
is_verified int DEFAULT NULL,
lastupd_stamp datetime DEFAULT NULL,
lastupd_user int DEFAULT NULL,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL
);

Insert Into candidates_bank_det_check values(1, 1, 1, 1, '2020-01-01 10:00:00', 0, '2020-01-01 11:00:00', 1)
Insert Into candidates_bank_det_check values(2, 2, 2, 0, NULL, NULL, '2023-09-26 09:30:00', 2)
Insert Into candidates_bank_det_check values(3, 3, 2, 1, '2023-09-26 13:00:00', 3, '2023-09-26 12:00:00', 4)
Insert Into candidates_bank_det_check values(4, 4, 1, 1, '2023-09-26 15:00:00', 4, '2023-09-26 14:00:00', 3)
Insert Into candidates_bank_det_check values(5, 5, 3, 0, NULL, NULL, '2023-09-26 13:30:00', 1)

select * from candidates_bank_det_check;

 -------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE candidate_qualification(
id int NOT NULL primary key,
candidate_id int NOT NULL,
CONSTRAINT FK_candidate_qual_candidate_id FOREIGN KEY (candidate_id) REFERENCES
fellowship_candidates (id),
diploma int DEFAULT 0,
degree_name varchar(10) NOT NULL,
is_degree_name_verified int DEFAULT 0,
employee_decipline varchar(100) NOT NULL,
is_employee_decipline_verified int DEFAULT 0,
passing_year int NOT NULL,
is_passing_year_verified int  DEFAULT 0,
aggr_per float DEFAULT NULL,
final_year_per float DEFAULT NULL,
is_final_year_per_verified int DEFAULT 0,
training_institute varchar(20) NOT NULL,
is_training_institute_verified int DEFAULT 0,
training_duration_month int DEFAULT NULL,
is_training_duration_month_verified int DEFAULT 0,
other_training varchar(255) DEFAULT NULL,
is_other_training_verified int DEFAULT 0,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL,
)

INSERT INTO candidate_qualification VALUES (1, 1, 0, 'B.E', 1, 'Computer Science', 1, 2020, 1, 78.5, 75.0, 1, 'ABC Institute', 1, 12, 1, 'Java Programming', 1, '2023-09-26 10:00:00', 1)
INSERT INTO candidate_qualification VALUES (2, 2, 1, 'B.Sc', 0, 'Physics', 1, 2019, 1, 68.0, 67.5, 0, 'XYZ College', 1, 24, 1, 'Chemistry Lab Skills', 1, '2023-09-26 10:30:00', 2)
INSERT INTO candidate_qualification VALUES (3, 3, 0, 'MBA', 1, 'Business Administration', 1, 2021, 1, 85.0, 83.5, 1, 'MNO University', 1, 18, 1, 'Leadership Training', 1, '2023-09-26 11:00:00', 3)
INSERT INTO candidate_qualification VALUES (4, 4, 1, 'M.Sc', 0, 'Chemistry', 1, 2022, 1, 72.5, 70.0, 0, 'PQR Institute', 1, 36, 1, 'Lab Management', 1, '2023-09-26 11:30:00', 4)
INSERT INTO candidate_qualification VALUES (5, 5, 0, 'B.Tech', 1, 'Electrical Engineering', 1, 2019, 1, 76.0, 74.5, 1, 'LMN College', 1, 24, 1, 'Embedded Systems', 1, '2023-09-26 12:00:00', 5)

select * from candidate_qualification;
 
  -------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE candidates_education_det_check (
id int NOT NULL,
candidate_id int  NOT NULL,
field_name int NOT NULL,
is_verified int DEFAULT NULL,
lastupd_stamp datetime DEFAULT NULL,
lastupd_user int DEFAULT NULL,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL
);

Insert Into candidates_education_det_check values(1, 1, 1, 1, '2020-01-01 10:00:00', 0, '2020-01-01 11:00:00', 1)
Insert Into candidates_education_det_check values(2, 2, 2, 0, NULL, NULL, '2023-09-26 09:30:00', 2)
Insert Into candidates_education_det_check values(3, 3, 2, 1, '2023-09-26 13:00:00', 3, '2023-09-26 12:00:00', 4)
Insert Into candidates_education_det_check values(4, 4, 1, 1, '2023-09-26 15:00:00', 4, '2023-09-26 14:00:00', 3)
Insert Into candidates_education_det_check values(5, 5, 3, 0, NULL, NULL, '2023-09-26 13:30:00', 1)

select * from candidates_education_det_check;

 -------------------------------------------------------------------------------------------------------------------------------------------------------

 
CREATE TABLE user_details (
id int NOT NULL primary key,
email varchar(50) NOT NULL,
first_name varchar(100) NOT NULL,
last_name varchar(100) NOT NULL,
password varchar(15) NOT NULL,
contact_number bigint NOT NULL,
verified bit DEFAULT NULL,
Constraint AK_TransactionID UNIQUE(Email)
);
 
INSERT INTO user_details VALUES (1, 'deepak.63584@gmail.com', 'deepak', 'patil', 'deepak', 8956748596, 1)
INSERT INTO user_details VALUES (2, 'john.doe@example.com', 'John', 'doe', 'John', 987654321, 1)
INSERT INTO user_details VALUES (3, 'michael.smith@example.com', 'Michael', 'Smith', 'Micheal', 9876543212, 0)
INSERT INTO user_details VALUES (4, 'william.brown@example.com', 'William', 'Brown', 'William', 9876543214, 1)
INSERT INTO user_details VALUES (5, 'james.anderson@example.com', 'James', 'Anderson', 'James', 9876543216, 0)

select * from user_details;

 -------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE user_roles (
user_id int  NOT NULL ,
role_name varchar(100)
)

INSERT INTO user_roles VALUES (1, 'Manager')
INSERT INTO user_roles VALUES (2, 'Developer')
INSERT INTO user_roles VALUES(3, 'Supervisor')
INSERT INTO user_roles VALUES (4, 'Analyst')
INSERT INTO user_roles VALUES (5, 'Designer')

select * from user_roles

 --27/09/2023-----------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Company(
Id int NOT NULL PRIMARY KEY,
Name varchar(50) NOT NULL,
Address varchar(150) DEFAULT NULL,
Location varchar(50) DEFAULT NULL,
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

INSERT INTO Company
(Id, Name, Address, Location, Status, Creator_Stamp, Creator_User)
VALUES

(1, 'Data Systems Inc.', '333 Birch St', 'Boston', 1, '2023-09-26 10:15:00', 3),
(2, 'Infinite Technologies', '444 Cedar St', 'Denver', 1, '2023-09-26 10:30:00', 1),
(3, 'Futuristic Solutions', '555 Redwood St', 'Houston', 1, '2023-09-26 10:45:00', 2),
(4, 'AI Innovations Ltd.', '666 Walnut St', 'Miami', 1, '2023-09-26 11:00:00', 3),
(5, 'Quantum Computing Inc.', '777 Spruce St', 'San Diego', 1, '2023-09-26 11:15:00', 1);

select * from Company

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Tech_Type(
Id int NOT NULL primary key,
Type_Name varchar(50) NOT NULL,
Cur_Status char(1) DEFAULT NULL,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

INSERT INTO Tech_Type
(Id, Type_Name, Cur_Status, Creator_Stamp, Creator_User)
VALUES

(1, 'Cloud Computing', 'A', '2023-09-26 10:15:00', 3),
(2, 'Mobile App Development', 'A', '2023-09-26 10:30:00', 1),
(3, 'Data Analytics', 'A', '2023-09-26 10:45:00', 2),
(4, 'Networking', 'A', '2023-09-26 11:00:00', 3),
(5, 'Artificial Intelligence', 'A', '2023-09-26 11:15:00', 1);

select * from Tech_Type;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Tech_Stack(
Id int NOT NULL primary key,
Tech_Name varchar(50) NOT NULL,
Image_Path varchar(500) DEFAULT NULL,
Framework text DEFAULT NULL,
Cur_Status char(1) DEFAULT NULL,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

INSERT INTO Tech_Stack
(Id, Tech_Name, Image_Path, Framework, Cur_Status, Creator_Stamp, Creator_User)
VALUES
(1, 'Angular', '/images/angular.png', 'Angular', 'A', '2023-09-26 10:15:00', 3),
(2, 'PHP', '/images/php.png', 'Laravel', 'A', '2023-09-26 10:30:00', 1),
(3, '.NET', '/images/dotnet.png', '.NET Core', 'A', '2023-09-26 10:45:00', 2),
(4, 'Ruby', '/images/ruby.png', 'Ruby on Rails', 'A', '2023-09-26 11:00:00', 3),
(5, 'Vue.js', '/images/vue.png', 'Vue', 'A', '2023-09-26 11:15:00', 1);

select * from Tech_Stack;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Maker_Program(
Id int NOT NULL PRIMARY KEY,
Program_Name varchar(100) NOT NULL,
Program_Type varchar(100) DEFAULT NULL,
Program_Link text DEFAULT NULL,
Tech_Stack_Id int DEFAULT NULL
CONSTRAINT FK_Maker_Program_Tech_Stack_Id FOREIGN KEY(Tech_Stack_Id)
REFERENCES Tech_Stack(Id),
Tech_Type_Id int NOT NULL
CONSTRAINT FK_Maker_Program_Tech_Type_Id FOREIGN KEY(Tech_Type_Id)
REFERENCES Tech_Type(Id),
Is_Program_Approved int,
Description varchar(500) DEFAULT NULL,
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL, 
);

INSERT INTO Maker_Program
(Id, Program_Name, Program_Type, Program_Link, Tech_Stack_Id, Tech_Type_Id, Is_Program_Approved, Description, Status, Creator_Stamp, Creator_User)
VALUES
(1, 'Cloud Computing Seminar', 'Seminar', 'https://example.com/cloudseminar', 5, 5, 1, 'Explore the world of cloud computing.', 1, '2023-09-26 10:15:00', 3),
(2, 'Cybersecurity Training', 'Training', 'https://example.com/cybertraining', 4, 4, 0, 'Enhance your cybersecurity skills.', 1, '2023-09-26 10:30:00', 1),
(3, 'AI for Beginners', 'Course', 'https://example.com/aibeginners', 3, 3, 1, 'Introduction to artificial intelligence.', 1, '2023-09-26 10:45:00', 2),
(4, 'Database Management Workshop', 'Workshop', 'https://example.com/dbworkshop', 2, 2, 1, 'Hands-on workshop for database management.', 1, '2023-09-26 11:00:00', 3),
(5, 'Software Development Bootcamp', 'Bootcamp', 'https://example.com/devbootcamp', 3, 3, 1, 'Intensive bootcamp for software development.', 1, '2023-09-26 11:15:00', 1);

select  * from Maker_Program;

 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Lab(
Id int NOT NULL PRIMARY KEY,
Name varchar(50) DEFAULT NULL,
Location varchar(50) DEFAULT NULL,
Address varchar(255) DEFAULT NULL,
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

INSERT INTO Lab
(Id, Name, Location, Address, Status, Creator_Stamp, Creator_User)
VALUES
(1, 'Lab F', 'Miami', '303 Cedar St, Miami, FL 33101', 1, '2023-09-26 10:15:00', 3),
(2, 'Lab G', 'Seattle', '404 Birch St, Seattle, WA 98101', 1, '2023-09-26 10:30:00', 1),
(3, 'Lab H', 'Denver', '505 Spruce St, Denver, CO 80201', 1, '2023-09-26 10:45:00', 2),
(4, 'Lab I', 'Dallas', '606 Willow St, Dallas, TX 75201', 1, '2023-09-26 11:00:00', 3),
(5, 'Lab J', 'Phoenix', '707 Redwood St, Phoenix, AZ 85001', 1, '2023-09-26 11:15:00', 1);

select * from Lab

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE App_Parameters(
Id int NOT NULL,
Key_Type varchar(20) NOT NULL,
Key_Value varchar(20) NOT NULL,
Key_Text varchar(80) DEFAULT NULL,
Cur_Status char(1) DEFAULT NULL,
Lastupd_User int DEFAULT NULL,
Lastupd_Stamp datetime DEFAULT NULL,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL,
Seq_Num int DEFAULT NULL
);

INSERT INTO App_Parameters
(Id, Key_Type, Key_Value, Key_Text, Cur_Status, Lastupd_User, Lastupd_Stamp, Creator_Stamp, Creator_User, Seq_Num)
VALUES
(1, 'Type C', 'Value 6', 'Text C6', 'A', 3, '2023-09-26 10:15:00', '2023-09-26 10:15:00', 3, 60),
(2, 'Type A', 'Value 7', 'Text A7', 'A', 1, '2023-09-26 10:30:00', '2023-09-26 10:30:00', 1, 70),
(3, 'Type B', 'Value 8', 'Text B8', 'A', 2, '2023-09-26 10:45:00', '2023-09-26 10:45:00', 2, 80),
(4, 'Type C', 'Value 9', 'Text C9', 'A', 3, '2023-09-26 11:00:00', '2023-09-26 11:00:00', 3, 90),
(5, 'Type A', 'Value 10', 'Text A10', 'A', 1, '2023-09-26 11:15:00', '2023-09-26 11:15:00', 1, 100);

select * from App_Parameters

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Mentor(
Id int NOT NULL PRIMARY KEY,
Name varchar(50) DEFAULT NULL,
Mentor_Type varchar(20) DEFAULT NULL,
Lab_Id int NOT NULL
CONSTRAINT FK_Mentor_Lab_Id FOREIGN KEY(Lab_Id)
REFERENCES Lab(Id),
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

INSERT INTO Mentor (Id, Name, Mentor_Type, Lab_Id, Status, Creator_Stamp, Creator_User)
VALUES
(1, 'Olivia Garcia', 'Technical Mentor', 2, 1, '2023-09-26 15:30:00', 3),
(2, 'James Martinez', 'Academic Mentor', 1, 1, '2023-09-26 15:45:00', 1),
(3, 'Sophia Lopez', 'Technical Mentor', 4, 1, '2023-09-26 16:00:00', 2),
(4, 'William Hernandez', 'Academic Mentor', 3, 1, '2023-09-26 16:15:00', 3),
(5, 'Isabella Smith', 'Technical Mentor', 2, 1, '2023-09-26 16:30:00', 1);

select * from Mentor

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Mentor_Ideation_Map(
Id int NOT NULL PRIMARY KEY,
Mentor_Id int NOT NULL
CONSTRAINT FK_Mentor_Ideation_Map_Mentor_Id FOREIGN KEY (Mentor_Id)
REFERENCES Mentor(Id),
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

INSERT INTO Mentor_Ideation_Map (Id, Mentor_Id, Status, Creator_Stamp, Creator_User)
VALUES

(1, 1, 1, '2023-09-26 18:15:00', 3),
(2, 2, 1, '2023-09-26 18:30:00', 1),
(3, 3, 1, '2023-09-26 18:45:00', 2),
(4, 4, 1, '2023-09-26 19:00:00', 3),
(5, 5, 1, '2023-09-26 19:15:00', 1);

select * from Mentor_Ideation_Map;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Drop Table Mentor_Techstack
CREATE TABLE Mentor_Techstack(
Id int NOT NULL PRIMARY KEY,
Mentor_Id int NOT NULL FOREIGN KEY(Mentor_Id) REFERENCES Mentor(Id),
Tech_Stack_Id int NOT NULL FOREIGN KEY(Tech_Stack_Id) REFERENCES Tech_Stack(Id),
Status int DEFAULT 1,
Creator_Stamp datetime DEFAULT NULL,
Creator_User int DEFAULT NULL
);

INSERT INTO Mentor_Techstack (Id, Mentor_Id, Tech_Stack_Id, Status, Creator_Stamp, Creator_User)
VALUES
(1, 1, 2, 1, '2023-09-26 19:30:00', 1),
(2, 2, 4, 1, '2023-09-26 19:45:00', 2),
(3, 1, 3, 1, '2023-09-26 20:00:00', 3),
(4, 2, 4, 1, '2023-09-26 20:15:00', 1),
(5, 1, 5, 1, '2023-09-26 20:30:00', 2)

Select * from Mentor_Techstack