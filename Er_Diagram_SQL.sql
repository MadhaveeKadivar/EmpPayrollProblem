---UC_11 Implement the ER Diagram into Payroll Service DB

create database employee_payroll_service;
use employee_payroll_service;

create table Employee( id int primary key identity(1,1) ,
name varchar(255),
gender char(1),
address varchar(255),
start_date datetime);

create table Department( dept_id int primary key identity(1,1),
dept_name varchar(255),
emp_id int FOREIGN KEY REFERENCES Employee(id));

create table pay_roll(basic_pay float,
deduction float,
income_tax float,
net_pay float,
taxable_pay float,
emp_id int FOREIGN KEY REFERENCES Employee(id));

create table company( company_id int primary key identity(1,1),
company_name varchar(255),
emp_id int FOREIGN KEY REFERENCES Employee(id));