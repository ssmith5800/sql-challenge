select
employees.emp_no, last_name, first_name, sex, salary
from 
employees
inner join salaries
on employees.emp_no = salaries.emp_no;

select first_name, last_name, hire_date
from
employees
where hire_date between '1986-01-01' and '1986-12-31';

select 
first_name, 
last_name, 
dept_emp.dept_no,
dept_name, 
employees.emp_no
from
employees
inner join dept_emp
on employees.emp_no = dept_emp.emp_no
inner join department 
on dept_emp.dept_no = department.dept_no;

select 
first_name, 
last_name, 
dept_name, 
employees.emp_no
from
employees
inner join dept_emp
on employees.emp_no = dept_emp.emp_no
inner join department 
on dept_emp.dept_no = department.dept_no;


select
first_name,
last_name,
sex
from 
employees
where first_name = 'Hercules' and last_name like 'B%';

select
last_name,
first_name,
dept_name,
employees.emp_no
from employees
inner join dept_emp
on employees.emp_no = dept_emp.emp_no
inner join department 
on dept_emp.dept_no = department.dept_no
where dept_name = 'Sales';

select
last_name,
first_name,
dept_name,
employees.emp_no
from employees
inner join dept_emp
on employees.emp_no = dept_emp.emp_no
inner join department 
on dept_emp.dept_no = department.dept_no
where dept_name in ('Sales','Development');

select 
last_name,
count(last_name)
from employees
group by last_name
order by last_name DESC;



