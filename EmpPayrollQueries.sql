---UC_1 create a payroll_service database----
create database payroll_service;
use payroll_service;

---UC_2 create a employee_payroll table
create table employee_payroll(
Emp_id int identity(1,1) primary key,
Emp_name varchar(255),
Emp_salary float,
StartDate datetime);