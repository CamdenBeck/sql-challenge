select emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
from employees emp
inner join salaries sal on emp.emp_no = sal.emp_no;


select first_name, last_name, hire_date
from employees
where extract(year from to_date(hire_date, 'MM/DD/YYYY')) = 1986;


select dept.dept_no, dept_name, dm.emp_no, emp.last_name, emp.first_name
from departments dept
join dept_manager dm on dept.dept_no = dm.dept_no
join employees emp on dm.emp_no = emp.emp_no;


select de.dept_no, dept.dept_name, emp.emp_no, emp.last_name, emp.first_name
from dept_emp de
join departments dept on de.dept_no = dept.dept_no
join employees emp on de.emp_no = emp.emp_no;


select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';


select emp.emp_no, emp.last_name, emp.first_name
from employees emp
join dept_emp de on emp.emp_no = de.emp_no
join departments dept on de.dept_no = dept.dept_no
where dept.dept_name = 'Sales';


select dept.dept_name, emp.emp_no, emp.last_name, emp.first_name
from employees emp
join dept_emp de on emp.emp_no = de.emp_no
join departments dept on de.dept_no = dept.dept_no
where dept.dept_name = 'Sales' or dept.dept_name = 'Developement';


select last_name, count(last_name)
from employees
group by last_name;

