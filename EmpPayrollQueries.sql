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

---UC_6 Add one more column in table which is gender column
alter table employee_payroll add Gender char(1);
update employee_payroll set Gender = 'M';
update employee_payroll set StartDate = '2002-12-17' where Emp_id = 3;
update employee_payroll set Gender = 'F' where Emp_id = 2 or Emp_id = 5;
select * from employee_payroll;

---UC_7 Calculate SUM, AVG, MIN, MAX, COUNT to do analysis by Male or Female.
select Gender,count(Emp_id) as Numbers_of_emp_by_gender from employee_payroll group by Gender;
select sum(Emp_salary) as Total_salary from employee_payroll;
select Emp_id , Emp_name ,max(Emp_salary) as Maximum_salary from employee_payroll;
select Gender,count(Emp_id) as Numbers_of_emp_by_gender from employee_payroll group by Gender;

---UC_8 Add phone number ,address and department columm with contraints in table
alter table employee_payroll add phone_number bigint;
alter table employee_payroll add department varchar(255) not null default 'Engineering';
alter table employee_payroll add address varchar(255) default 'India';

---UC9_ extend employee_payroll table to have Basic Pay,Deductions, Taxable Pay,Income Tax, Net Pay
EXEC sp_rename 'employee_payroll.Emp_salary', 'Basic_Pay', 'COLUMN';
alter table employee_payroll add deductions float not null;
alter table employee_payroll add Taxable_pay float not null;
alter table employee_payroll add Income_tax float not null;
alter table employee_payroll add Net_pay float not null;
select * from employee_payroll;
