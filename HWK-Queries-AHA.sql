--Queries to answer homework questions
--1. List the following details of each employee: 
--employee number, last name, first name, gender, and salary.

select emp.emp_no, emp.first_name, emp.last_name, emp.gender,sal.salary
from employees as emp
inner join salaries as sal on sal.emp_no = emp.emp_no

--2.List employees who were hired in 1986.

select employees.hire_date
from employees
where employees.hire_date like '1986%'

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number,
--last name, first name, and start and end employment dates.

select dept.dept_no, dept.dept_name,dm.emp_no, emp.first_name,emp.last_name,dm.from_date,dm.to_date
from dept_manager as dm
inner join employees as emp on dm.emp_no = emp.emp_no
inner join departments as dept on dm.dept_no = dm.dept_no

--4.List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select emp.emp_no, emp.first_name, emp.last_name, dept.dept_name
from employees as emp
inner join dept_emp on emp.emp_no = dept_emp.emp_no
inner join departments as dept on dept_emp.dept_no = dept.dept_no

--5. List all employees whose first name is "Hercules" and last names begin with "B."

select *
from employees as emp
where emp.first_name = 'Hercules' and emp.last_name like 'B%'

--6.  List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.

select emp.emp_no, emp.first_name, emp.last_name, dept.dept_name
from employees as emp
inner join dept_emp on emp.emp_no = dept_emp.emp_no
inner join departments as dept on dept_emp.dept_no = dept.dept_no
where dept.dept_name like '%Sales%'

--7.  List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select emp.emp_no, emp.first_name, emp.last_name, dept.dept_name
from employees as emp
inner join dept_emp on emp.emp_no = dept_emp.emp_no
inner join departments as dept on dept_emp.dept_no = dept.dept_no
where dept.dept_name like '%Sales%' or dept.dept_name like '%Development%'

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

select emp.last_name, count(emp.last_name) as Last_name_count
from employees as emp
group by emp.last_name 
order by Last_name_count desc




