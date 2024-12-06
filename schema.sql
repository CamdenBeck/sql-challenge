create table departments (
	dept_no VARCHAR not null,
	dept_name TEXT not null,
	primary key (dept_no)
);

create table titles (
	title_id VARCHAR not null,
	title TEXT not null,
	primary key (title_id)
);

create table employees (
	emp_no INT not null,
	emp_title_id VARCHAR not null,
	birth_date VARCHAR not null,
	first_name TEXT not null,
	last_name TEXT not null,
	sex TEXT not null,
	hire_date VARCHAR not null,
	foreign key (emp_title_id) references titles(title_id),
	primary key (emp_no)
);

create table dept_emp (
	emp_no INT not null,
	dept_no VARCHAR not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no, dept_no)
);

create table dept_manager (
	dept_no VARCHAR not null,
	emp_no INT not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no)
);

create table salaries (
	emp_no INT not null,
	salary INT not null,
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no)
);


COPY departments FROM 'data/departments.csv' DELIMITER ',' CSV HEADER;
COPY titles FROM 'data/titles.csv' DELIMITER ',' CSV HEADER;
COPY employees FROM 'data/employees.csv' DELIMITER ',' CSV HEADER;
COPY dept_emp FROM 'data/dept_emp.csv' DELIMITER ',' CSV HEADER;
COPY dept_manager FROM 'data/dept_manager.csv' DELIMITER ',' CSV HEADER;
COPY salaries FROM 'data/salaries.csv' DELIMITER ',' CSV HEADER;
