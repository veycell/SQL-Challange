--1. List the following details of each employee: employee number, last name, first name, gender, and salary.

select e.emp_no,e.first_name,e.last_name,e.gender,s.salary from employees e inner join salaries s on e.emp_no=s.emp_no;

--2. List employees who were hired in 1986.

select * from employees where to_char(hire_date,'YYYY')='1986';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

select d.dept_no,d.dept_name,e.emp_no,e.last_name,e.first_name,de.from_date,de.to_date from titles as t 
inner join employees as e on e.emp_no = t.emp_no 
inner join dept_manager de ON de.emp_no = e.emp_no
inner join departments as d on d.dept_no = de.dept_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select e.emp_no,e.last_name,e.first_name,d.dept_name from dept_empt as de
inner join employees as e on de.emp_no = e.emp_no
inner join departments as d on d.dept_no = de.dept_no;

--5. List all employees whose first name is "Hercules" and last names begin with "B."

select * from employees as e where e.first_name='Hercules' and e.last_name like 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select e.emp_no,e.last_name,e.first_name,d.dept_name from dept_empt as de
inner join employees as e on de.emp_no = e.emp_no
inner join departments as d on d.dept_no = de.dept_no where d.dept_name='Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select e.emp_no,e.last_name,e.first_name,d.dept_name from dept_empt as de
inner join employees as e on de.emp_no = e.emp_no
inner join departments as d on d.dept_no = de.dept_no where d.dept_name In('Sales','Development');

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name,count(8) from employees group by last_name order by 2 desc;