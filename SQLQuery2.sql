Create database payroll_service;
Use payroll_service;

Create table Employee_Payroll(
id int primary key identity(1,1),
name varchar(30),
salary varchar(30),
start_date date
);

Insert into employee_payroll(name,salary,start_date)values('a','1000','2018-01-01');
Insert into employee_payroll(name,salary,start_date)values('b','2000','2018-02-01');
Insert into employee_payroll(name,salary,start_date)values('c','3000','2018-03-01');
Insert into employee_payroll(name,salary,start_date)values('d','4000','2018-04-01');
Insert into employee_payroll(name,salary,start_date)values('e','5000','2019-05-01');

select * from employee_payroll;

select * from employee_payroll where Name='a';
select * from employee_payroll where start_date between CAST ('2018-02-1' as date) and GETDATE();


Alter table employee_payroll
Add Gender Char(1);

update Employee_Payroll set Gender='M' where id in (1,2,4,3,5);
update Employee_Payroll set Gender='F' where id in (2,4);

select sum(cast(salary as bigint)),avg(cast(salary as bigint)),min(cast(salary as bigint)),max(cast(salary as bigint)) from Employee_Payroll;


select Gender , count(*) from Employee_Payroll group by Gender;



Create TABLE Salary(    
SalID int primary key identity(1,1),
Salary bigint,
Basic_pay bigint, 
Deductions bigint, 
Taxable_pay bigint,
Income_Tax bigint, 
Net_pay bigint);


Create table Department (
DeptID int primary key identity(1,1),
Dept_Name varchar (20)
);

 
Create table Employee(
id int primary key identity(1,1),
name varchar(30),
start_date date,
Phone VARCHAR(10),
Address VARCHAR(30), 
SalID int Foreign key References salary(SalID) );


Create table emp_department_mapping(
id int primary key identity(1,1),
EmpID int Foreign Key References Employee(id),
DeptID int  Foreign Key References Department(DeptID)
);

 
Select * from Salary;
Select * from Department;
Select * from Employee;
Select * from emp_department_mapping;

Alter table employee_payroll
Add phone varchar(10), address varchar(30),department varchar(20);

alter table employee_payroll
Add basic_pay bigint,deductions bigint, taxable_pay bigint,income_tax bigint,net_pay bigint;

Insert into employee_payroll values('Terisa','2000','2019-01-01','F','6467356845','chennai','Sales',353,121,123,324,142);
Insert into employee_payroll values('Terisa','2000','2019-01-01','F','6467356845','chennai','Marketing',353,121,123,324,142);

create Procedure AddEmployeeDetails(
@name varchar(20),
@salary varchar(20),
@start_date date,
@gender char(1),
@phone varchar(10), 
@address varchar(30),
@department varchar(20),
@basic_pay bigint,
@deductions bigint,
@taxable_pay bigint,
@income_tax bigint,
@net_pay bigint 
)
As
begin insert Into employee_payroll values(@name,@salary,@start_Date,@gender,@phone,@address,@department,@basic_pay,@deductions,@taxable_pay,@income_tax,@net_pay)
End

 

 

 

 

 

Create Procedure UpdateEmployeeDetails  
(
@id int,
@name varchar(20),
@salary varchar(20),
@start_date date,
@gender char(1),
@phone varchar(10), 
@address varchar(30),
@department varchar(20),
@basic_pay bigint,
@deductions bigint,
@taxable_pay bigint,
@income_tax bigint,
@net_pay bigint
)
as
begin 
update employee_payroll set Name=@name,salary=@salary,start_date=@start_Date,gender=@gender,phone=@phone,address=@address,department=@department,basic_pay=@basic_pay,deductions=@deductions,taxable_pay=@taxable_pay,income_tax=@income_tax,net_pay=@net_pay where id=@id
End