create table Departments(
	Dept_no varchar(255),
	Dept_name varchar(255),
	primary key (Dept_no)
);

CREATE TABLE Employees (
    Emp_no INT   NOT NULL,
    Birth_date VARCHAR(255)   NOT NULL,
    First_name VARCHAR(255)   NOT NULL,
    Last_name VARCHAR(255)   NOT NULL,
    Gender VARCHAR(1)   NOT NULL,
    Hire_date VARCHAR(255)   NOT NULL,
    primary key (Emp_no)
);

CREATE TABLE Dept_emp (
    Emp_no INT   NOT NULL,
    Dept_no VARCHAR(255)   NOT NULL,
    From_date VARCHAR(255)   NOT NULL,
    To_date VARCHAR(255)   NOT NULL,
	foreign key (Emp_no) references Employees (Emp_no),
	foreign key (Dept_no) references Departments (Dept_no)
);

CREATE TABLE Dept_manager (
    Dept_no VARCHAR(255)   NOT NULL,
    Emp_no INT   NOT NULL,
    From_date VARCHAR(255)   NOT NULL,
    To_date VARCHAR(255)   NOT NULL,
	foreign key (Emp_no) references Employees (Emp_no),
	foreign key (Dept_no) references Departments (Dept_no)
);

CREATE TABLE Salaries (
    Emp_no INT   NOT NULL,
    Salary INT   NOT NULL,
    From_date VARCHAR(255)   NOT NULL,
    To_date VARCHAR(255)   NOT NULL,
	foreign key (Emp_no) references Employees (Emp_no)
);

CREATE TABLE Titles (
    Emp_no INT   NOT NULL,
    Title VARCHAR(255)   NOT NULL,
    From_date VARCHAR(255)   NOT NULL,
    To_date VARCHAR(255)   NOT NULL,
	foreign key (Emp_no) references Employees (Emp_no)
);

-- verify successful import of data
select *
from departments

select *
from dept_emp

select *
from dept_manager

select *
from employees

select *
from salaries

select * 
from titles