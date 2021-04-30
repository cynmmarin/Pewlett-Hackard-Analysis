--DELIVERABLE 1

--Create tables for Employee_Database_challenge
CREATE TABLE employees (
     emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
	);

	CREATE TABLE titles (
 	emp_no INT NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM employees;
SELECT * FROM titles;

--Retrieve the emp_no, first_name, and last_name columns from the Employees table.
--Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT 	em.emp_no, 
		em.first_name, 
		em.last_name,
		tl.title, 
		tl.from_date,
		tl.to_date
INTO retirement_titles 
FROM employees as em
INNER JOIN titles as tl
--Join both tables on the primary key.
ON em.emp_no = tl.emp_no
--Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955.
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--Order by the employee number.
ORDER BY em.emp_no;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
--Create a Unique Titles table using the INTO clause.
INTO unique_titles
FROM retirement_titles as rt
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

--Retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY COUNT DESC;

SELECT * FROM retiring_titles;


--DELIVERABLE 2

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)	
);

--Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
--Retrieve the from_date and to_date columns from the Department Employee table.
--Retrieve the title column from the Titles table.
--Retrieve the first occurrence of the employee number.
SELECT DISTINCT ON (emp_no) em.emp_no,
		em.first_name,
		em.last_name,
		em.birth_date,
		de.from_date,
		de.to_date, 
		tl.title
--Create a new table 
INTO mentorship_eligibilty
FROM employees as em
--Join the Employees and the Department Employee tables on the primary key.
--Join the Employees and the Titles tables on the primary key.
INNER JOIN dept_emp as de
ON (em.emp_no = de.emp_no)
INNER JOIN titles as tl
ON (em.emp_no = tl.emp_no)
--Filter the data on the to_date column to all the current employees.
WHERE (de.to_date = '9999-01-01')
--Filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER by em.emp_no;

SELECT * FROM mentorship_eligibilty;