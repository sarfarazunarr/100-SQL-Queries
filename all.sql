-- 1. Display the full name of employees by concatenating first and last names.
SELECT first_name || ' ' || last_name AS "First Name" from employees;

-- 2. Display the full name of employees along with their job titles.
SELECT first_name || ' ' || last_name || ' ' || job_id AS "Details" from employees;

-- 3. Concatenate employee names with their hire dates
SELECT first_name || ' ' || last_name || ' ' || hire_date AS "Details" from employees;

-- 4. Add a prefix "Employee:" before the full name
SELECT 'Employee:' || first_name || ' ' || last_name from employees;

-- 5. Combine employee name and department name into a single string
SELECT 'Employee:' || first_name || ' ' || last_name from employees;

-- 6. Add a literal string to the full name of employees to show their designation
-- Will be added later

-- 7. Display the salary of employees with a literal currency symbol
SELECT first_name, '$' || salary from employees;

-- 8. Add a literal "Manager" for employees who are managers.
SELECT first_name || ' Manager Sahab' from employees where job_id LIKE '%MAN';

-- 10. Include a custom message with employee names
SELECT 'Hi ' || first_name || ', Have a great day!' from employees;

-- 11. Display employees with salaries above a certain threshold
SELECT * from employees where salary > 10000;

-- 12. Retrieve employees belonging to a specific department.
SELECT * from employees where department_id = 60;

-- 13. Show employees hired after a specific date.
SELECT * from employees where hire_date > '01-JAN-2007';

-- 14. List employees with a commission percentage greater than 0.
SELECT * from employees where commission_pct > 0;

-- 15. Retrieve employees whose job ID matches a specific value.
SELECT * from employees where job_id = 'SA_MAN';

-- 16. Display employees who belong to departments 10, 20, or 30.
SELECT * from employees where department_id in (10, 20, 30);

-- 17. Show employees with salaries between 5000 and 10000.
SELECT * from employees where salary between 5000 AND 10000;

-- 18. Display employees whose names start with "A"
SELECT * from employees where first_name like 'A%';

-- 19. Retrieve employees hired in the year 2020
SELECT * from employees where hire_date > '01-JAN-2020';

-- 20. Show employees whose manager ID is not NULL
SELECT * from employees where manager_id IS NOT null;

-- 21. Find employees whose last name contains the letter "a"
SELECT * from employees where last_name like 'a%';

-- 22. Display employees hired in the last 5 years.
SELECT * from employees where hire_date like 'a%';

-- 23. Retrieve employees whose job titles end with "PROG.".
SELECT * from employees where job_id like '%PROG';

-- 24. Show employees hired in a specific month.
SELECT * from employees where hire_date like '%JAN%';

-- 25. Display employees with a specific character in their phone number.
SELECT * from employees where phone_number like '%507%';

-- 26. Display employees earning the maximum salary
-- We will get only one employee with highest salary.
SELECT * from employees where salary = (SELECT MAX(salary) from employees);

-- 27. Retrieve employees earning less than the average salary
SELECT * from employees where salary < (SELECT AVG(salary) from employees);

-- 28. Show employees whose salaries are not equal to a specific value
SELECT * from employees where salary != 6000;

-- 29. Find employees whose department ID is greater than 50.
SELECT * from employees where department_id > 50;

-- 30. List employees hired before a specific date
SELECT * FROM employees where hire_date < '15-AUG-2003';

-- 31. Display employees working in departments 60 and 80.
SELECT * FROM employees where department_id in(60, 80);

-- 32. Retrieve employees with salaries less than 5000 or greater than 20000
SELECT * FROM employees where salary < 5000 OR salary > 20000;

-- 33. Show employees who are either managers or belong to department 90.
SELECT * FROM employees where job_id like '%MAN' OR department_id = 90;

-- 34. List employees hired after a specific date and earning a salary above 7000
SELECT * FROM employees where hire_date > '01-JAN-2002' AND salary > 7000;

-- 35. Find employees who are not working under any manager.
SELECT * FROM employees where manager_id is null;

-- 36. Calculate the annual salary of employees.
SELECT first_name, salary, (salary * 12) "Annual Salary" FROM employees;

-- 37. Display employee salaries with a 10% bonus included.
SELECT first_name, salary, (salary + ((salary / 100) * 10)) "Salary with Bonus" FROM employees;

-- 38. Find the total earnings of employees after adding commission.
SELECT first_name, salary, (salary + (salary * commission_pct)) "Salary with commission" FROM employees;

-- 39. Subtract 1000 from each employee’s salary for a hypothetical scenario
SELECT first_name, salary, (salary - 1000) "Salary without Kharchi" FROM employees;

-- 40. Multiply each employee's salary by 1.5 for hypothetical overtime pay.
SELECT first_name, salary, (salary * 1.5) "Salary with overtime" FROM employees;

-- 41. Display employees ordered by their hire dates.
SELECT * FROM employees order by hire_date;

-- 42. Retrieve employees sorted by their last names in ascending order
SELECT * FROM employees order by last_name; -- Ascending is by default order

-- 43. Show employees sorted by salaries in descending order
SELECT * FROM employees order by salary DESC;

-- 44. List employees grouped by their department IDs.
SELECT * FROM employees order by department_id;

-- 45. Retrieve employees sorted by job ID and hire date
SELECT * FROM employees order by job_id, hire_date;

-- 46. Convert all employee names to uppercase
SELECT UPPER(first_name), UPPER(last_name) FROM employees;

-- 47. Convert all employee names to lowercase.
SELECT LOWER(first_name), LOWER(last_name) FROM employees;

-- 48. Display the length of each employee's first name.
SELECT first_name, LENGTH(first_name) FROM employees;

-- 49. Extract the first three characters of each employee’s last name
SELECT first_name, SUBSTR(first_name, 1,3) FROM employees;

-- 50. Replace a specific character in employee names with another.
SELECT first_name, REPLACE(first_name, 'A', 'J') FROM employees;
