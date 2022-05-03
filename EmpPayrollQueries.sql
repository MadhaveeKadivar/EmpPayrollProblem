---UC_1 create a payroll_service database----
create database payroll_service;
use payroll_service;

---UC_2 create a employee_payroll table
create table employee_payroll(
Emp_id int identity(1,1) primary key,
Emp_name varchar(255),
Emp_salary float,
StartDate datetime);

---UC_3 Insert Data In Table
insert into employee_payroll
values ('John',300000,'2008-03-03'),('Alice',500000,'2010-08-10');
insert into employee_payroll(Emp_name,Emp_salary)
values ('Harry',450000);
insert into employee_payroll
values ('Bill',200000,'2005-07-25'),('Tvisha',800000,'2018-06-18');

---UC_4 Retrieve all data from table
select * from employee_payroll;

---UC_5 Retrieve particular data using where condition
select * from employee_payroll where Emp_name = 'Alice';
select * from employee_payroll where StartDate between cast('2001-01-01' as date) and GETDATE();