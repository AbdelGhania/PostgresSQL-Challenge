# Creating employees table:
Create Table employees (
    emp_no INT NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(14) NOT NULL,
    last_name VARCHAR (16) NOT NULL,
    gender VARCHAR (1) NOT NULL,
    hire_date DATE NOT NULL,
    primary key (emp_no));


# Creating departments table:
Create Table departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(40) NOT NULL,
	Primary KEY (dept_no),
	UNIQUE (dept_name));


# Creating dept_manager table:

Create Table dept_manager (
dept_No VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	Foreign KEY (emp_no) references employees(emp_no),
	FOREIGN KEY (dept_no) references departments (dept_no),
	PRIMARY KEY (emp_no, dept_no));


# Creating dept_ emp table:
Create Table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	Foreign KEY (emp_no) REFERENCES employees (emp_no), 
	Foreign KEY (dept_no) REFERENCES departments (dept_no),
	Primary KEY (emp_no, dept_no)
);


# Creating titles table:

Create table titles (
	emp_no INT NOT NULL,
	title VARCHAR (50) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN Key (emp_no) REFERENCES employees (emp_no), 
	PRIMARY KEY (emp_no, title, from_date)
);


# Creating Salaries table:

Create table titles (
	emp_no INT NOT NULL,
	title VARCHAR (50) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	Foreign Key (emp_no) REFERENCES employees (emp_no), 
	PRIMARY KEY (emp_no, title, from_date)
);






