# 100 SQL Queries
### Solved By Sarfaraz Unar 

These SQL queries have been assigned by Professor Dr. Qasim and cover all the topics studied till the mid-term in the DBMS course.

---

**IF YOU ARE STUDENT AND WANTS TO PRACTICE THEN I DON'T RECOMMEND YOU TO COPY AND PASTE YOU CAN SEE AND FIRST START QUERYING BY YOURSELF THEN YOU CAN CHECK HERE**

*Found any mistake? Start a issue on this repo*

---

😠 Some Queries are left blank for you to practice 😉.

---

1. Display the full name of employees by concatenating first and last names.
```sql
SELECT first_name || ' ' || last_name AS "First Name" from employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    In this query, we will concatenate two columns, `first_name` and `last_name`. We will use the double-pipe (`||`) operator for concatenation. A custom column name will be assigned using `AS` followed by the desired name in double quotes. Data will be fetched from the `employees` table.
</details>
<br />


2. Display the full name of employees along with thier job titles.
```sql
SELECT first_name || ' ' || last_name || ' ' || job_id AS "Details" from employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    This query concatenates `first_name`, `last_name`, and `job_id` columns to display employee details. The double-pipe (`||`) operator is used for concatenation, and a custom column name is given using `AS`. Data is fetched from the `employees` table.
</details>
<br />


3. Concatenate employee names with their hire dates
```sql
SELECT first_name || ' ' || last_name || ' ' || hire_date AS "Details" from employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    The query concatenates `first_name`, `last_name`, and `hire_date` columns to create a single string. The `||` operator is used for concatenation, and the result is given a custom name with `AS`. Data is retrieved from the `employees` table.
</details>
<br />


4. Add a prefix "Employee:" before the full name
```sql
SELECT 'Employee:' || first_name || ' ' || last_name from employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    This query adds a prefix "Employee:" before concatenating the `first_name` and `last_name` columns. The concatenation is done using the `||` operator, and data is fetched from the `employees` table.
</details>
<br />


5. Combine employee name and department name into a single string
*Department name does not exist in employees table*
```sql
SELECT 'Employee:' || first_name || ' ' || department_id from employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    This query combines `first_name` and `department_id` to create a single string. The prefix "Employee:" is added to the name using the `||` operator. Note that the department name is not available in the `employees` table.
</details>
<br />

6. Add a literal string to the full name of employees to show their designation
```sql
-- AVAILABLE FOR YOU - TRY IT
```
<details>
    <summary>Tip By AI</summary>
    You can craft a query to add a literal string to the full name of employees to denote their designations. Use the `||` operator for concatenation and assign a custom column name using `AS`.
</details>
<br />


7. Display the salary of employees with a literal currency symbol
```sql
SELECT first_name, '$' || salary from employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    This query displays the `salary` of employees with a literal currency symbol (`$`) prefixed to the value using the `||` operator. The data is fetched from the `employees` table.
</details>
<br />


8. Add a literal "Manager" for employees who are managers.
```sql
SELECT first_name || ' Manager Sahab' from employees where job_id LIKE '%MAN';
```
<details>
    <summary>Short Explanation By AI</summary>
    This query appends "Manager Sahab" to the `first_name` of employees whose `job_id` contains "MAN". The concatenation is performed using the `||` operator, and data is filtered with the `LIKE` clause.
</details>
<br />


9. Include a custom message with employee names
```sql
SELECT 'Hi ' || first_name || ', Have a great day!' from employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    The query adds a custom greeting message to the `first_name` of employees. The concatenation is done using the `||` operator, and the data is retrieved from the `employees` table.
</details>
<br />

10. Show job titles prefixed by "Job:" for each employee.
```sql
SELECT 'Job: ' || job_id from employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    The query adds a prefix `Job: ` to job title `(job_id)` available in table.
</details>
<br />



11. Display employees with salaries above a certain threshold
```sql
SELECT * from employees where salary > 10000;
```
<details>
    <summary>Short Explanation By AI</summary>
    This query retrieves all employees whose `salary` is greater than 10000. The condition is specified using the `WHERE` clause.
</details>
<br />

12. Retrieve employees belonging to a specific department.
```sql
SELECT * from employees where department_id = 60;
```
<details>
    <summary>Short Explanation By AI</summary>
    The query fetches employees belonging to a specific department by checking the `department_id` column using the `WHERE` clause.
</details>
<br />


13. Show employees hired after a specific date.
```sql
SELECT * from employees where hire_date > '01-JAN-2007';
```
<details>
    <summary>Short Explanation By AI</summary>
    This query lists employees who were hired after a specific date. The `hire_date` column is compared using the `>` operator in the `WHERE` clause.
</details>
<br />


14. List employees with a commission percentage greater than 0.
```sql
SELECT * from employees where commission_pct > 0;
```
<details>
    <summary>Short Explanation By AI</summary>
    The query retrieves employees whose `commission_pct` is greater than 0. The condition is defined in the `WHERE` clause.
</details>
<br />

15. Retrieve employees whose job ID matches a specific value.
```sql
SELECT * from employees where job_id = 'SA_MAN';
```
<details>
    <summary>Short Explanation By AI</summary>
    This query fetches employees whose `job_id` matches a specific value. The condition is applied using the `WHERE` clause.
</details>
<br />

16. Display employees who belong to departments 10, 20, or 30.
```sql
SELECT * from employees where department_id in (10, 20, 30);
```
<details>
    <summary>Short Explanation By AI</summary>
    The query retrieves employees belonging to departments 10, 20, or 30 using the `IN` operator in the `WHERE` clause.
</details>
<br />


17. Show employees with salaries between 5000 and 10000.
```sql
SELECT * from employees where salary between 5000 AND 10000;
```
<details>
    <summary>Short Explanation By AI</summary>
    This query displays employees with salaries between 5000 and 10000 using the `BETWEEN` operator in the `WHERE` clause.
</details>
<br />


18. Display employees whose names start with "A"
```sql
SELECT * from employees where first_name like 'A%';
```
<details>
    <summary>Short Explanation By AI</summary>
    The query retrieves employees whose `first_name` starts with "A". The condition is specified using the `LIKE` operator with a wildcard.
</details>
<br />


19. Retrieve employees hired in the year 2020
```sql
SELECT * from employees where hire_date > '01-JAN-2020';
```
<details>
    <summary>Short Explanation By AI</summary>
    This query lists employees who were hired in the year 2020 by comparing the `hire_date` column with a specific date using the `>` operator.
</details>
<br />


20. Show employees whose manager ID is not NULL
```sql
SELECT * from employees where manager_id IS NOT null;
```
<details>
    <summary>Short Explanation By AI</summary>
    The query retrieves employees whose `manager_id` is not null. The condition is defined using the `IS NOT NULL` clause.
</details>
<br />

21. Find employees whose last name contains the letter "a"
```sql
SELECT * from employees where last_name like 'a%';
```
<details>
    <summary>Short Explanation By AI</summary>
    This query retrieves employees whose `last_name` contains the letter "a". The `LIKE` operator is used with a pattern to match names starting with "a".
</details>
<br />


22. Display employees hired in the last 5 years.
```sql
SELECT * from employees where hire_date like 'a%';
```
<details>
    <summary>Short Explanation By AI</summary>
    Retrieves employees hired in the last 5 years by filtering the `hire_date` column with an appropriate date condition.
</details>
<br />


23. Retrieve employees whose job titles end with "PROG.".
```sql
SELECT * from employees where job_id like '%PROG';
```
<details>
    <summary>Short Explanation By AI</summary>
    Fetches employees whose `job_id` ends with "PROG" by using the `LIKE` operator with a pattern ending in "PROG".
</details>
<br />

24. Show employees hired in a specific month.
```sql
SELECT * from employees where hire_date like '%JAN%';
```
<details>
    <summary>Short Explanation By AI</summary>
    Displays employees hired in a specific month (e.g., "JAN") by filtering the `hire_date` column with a pattern containing the month name.
</details>
<br />

25. Display employees with a specific character in their phone number.
```sql
SELECT * from employees where phone_number like '%507%';
```
<details>
    <summary>Short Explanation By AI</summary>
    Retrieves employees with a specific character sequence (e.g., "507") in their `phone_number` by using the `LIKE` operator.
</details>
<br />

26. Display employees earning the maximum salary
*We will get only one employee with highest salary.*
```sql
SELECT * from employees where salary = (SELECT MAX(salary) from employees);
```
<details>
    <summary>Short Explanation By AI</summary>
    Finds the employee earning the maximum salary by comparing their salary with the result of a subquery that retrieves the maximum value in the `salary` column.
</details>
<br />

27. Retrieve employees earning less than the average salary
```sql
SELECT * from employees where salary < (SELECT AVG(salary) from employees);
```
<details>
    <summary>Short Explanation By AI</summary>
    Retrieves employees earning less than the average salary by comparing the `salary` column with a subquery calculating the average salary.
</details>
<br />

28. Show employees whose salaries are not equal to a specific value
```sql
SELECT * from employees where salary != 6000;
```
<details>
    <summary>Short Explanation By AI</summary>
    Lists employees whose `salary` is not equal to a specified value (e.g., 6000) by using the `!=` operator in the `WHERE` clause.
</details>
<br />

29. Find employees whose department ID is greater than 50.
```sql
SELECT * from employees where department_id > 50;
```
<details>
    <summary>Short Explanation By AI</summary>
    Finds employees whose `department_id` is greater than 50 by applying a filter condition using the `>` operator.
</details>
<br />

30. List employees hired before a specific date
```sql
SELECT * FROM employees where hire_date < '15-AUG-2003';
```
<details>
    <summary>Short Explanation By AI</summary>
    Displays employees hired before a specific date by comparing the `hire_date` column with the specified date using the `<` operator.
</details>
<br />

31. Display employees working in departments 60 and 80.
```sql
SELECT * FROM employees where department_id in(60, 80);
```
<details>
    <summary>Short Explanation By AI</summary>
    Retrieves employees working in departments with IDs 60 and 80 using the `IN` operator for filtering.
</details>
<br />

32. Retrieve employees with salaries less than 5000 or greater than 20000
```sql
SELECT * FROM employees where salary < 5000 OR salary > 20000;
```
<details>
    <summary>Short Explanation By AI</summary>
    Shows employees whose `salary` is either less than 5000 or greater than 20000 by using the `OR` operator in the `WHERE` clause.
</details>
<br />

33. Show employees who are either managers or belong to department 90.
```sql
SELECT * FROM employees where job_id like '%MAN' OR department_id = 90;
```
<details>
    <summary>Short Explanation By AI</summary>
    Retrieves employees whose `job_id` matches a specific pattern or whose `department_id` equals 90 using the `OR` operator.
</details>
<br />

34. List employees hired after a specific date and earning a salary above 7000
```sql
SELECT * FROM employees where hire_date > '01-JAN-2002' AND salary > 7000;
```
<details>
    <summary>Short Explanation By AI</summary>
    Lists employees hired after a specific date and earning a salary above 7000 by using the `AND` operator to combine two conditions.
</details>
<br />

35. Find employees who are not working under any manager.
```sql
SELECT * FROM employees where manager_id is null;
```
<details>
    <summary>Short Explanation By AI</summary>
    Finds employees who do not work under any manager by filtering rows where `manager_id` is `NULL`.
</details>
<br />


36. Calculate the annual salary of employees.
```sql
SELECT first_name, salary, (salary * 12) "Annual Salary" FROM employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    Calculates the annual salary of employees by multiplying the `salary` column by 12 and displaying it with a custom column name.
</details>
<br />

37. Display employee salaries with a 10% bonus included.
```sql
SELECT first_name, salary, (salary + ((salary / 100) * 10)) "Salary with Bonus" FROM employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    Displays employee salaries with a 10% bonus by calculating 10% of the salary and adding it to the original salary.
</details>
<br />

38. Find the total earnings of employees after adding commission.
```sql
SELECT first_name, salary, (salary + (salary * commission_pct)) "Salary with commission" FROM employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    Computes the total earnings of employees by adding their salary to the commission amount (if applicable).
</details>
<br />

39. Subtract 1000 from each employee’s salary for a hypothetical scenario
```sql
SELECT first_name, salary, (salary - 1000) "Salary without Kharchi" FROM employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    Reduces each employee’s salary by 1000 for a hypothetical scenario and displays the adjusted salary with a custom column name.
</details>
<br />

40. Multiply each employee's salary by 1.5 for hypothetical overtime pay.
```sql
SELECT first_name, salary, (salary * 1.5) "Salary with overtime" FROM employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    Calculates hypothetical overtime pay by multiplying each employee's salary by 1.5 and displays the result with a custom column name.
</details>
<br />


41. Display employees ordered by their hire dates.
```sql
SELECT * FROM employees order by hire_date;
```
<details>
    <summary>Short Explanation By AI</summary>
    Displays employees ordered by their `hire_date` in ascending order.
</details>
<br />


42. Retrieve employees sorted by their last names in ascending order
```sql
SELECT * FROM employees order by last_name; -- Ascending is by default order
```
<details>
    <summary>Short Explanation By AI</summary>
    Sorts employees by their `last_name` in ascending order. Ascending order is the default sort direction.
</details>
<br />


43. Show employees sorted by salaries in descending order
```sql
SELECT * FROM employees order by salary DESC;
```
<details>
    <summary>Short Explanation By AI</summary>
    Displays employees sorted by their `salary` in descending order using the `DESC` keyword.
</details>
<br />


44. List employees grouped by their department IDs.
```sql
SELECT * FROM employees order by department_id;
```
<details>
    <summary>Short Explanation By AI</summary>
    Lists employees grouped by their `department_id` by sorting the rows based on the `department_id` column.
</details>
<br />


45. Retrieve employees sorted by job ID and hire date
```sql
SELECT * FROM employees order by job_id, hire_date;
```
<details>
    <summary>Short Explanation By AI</summary>
    Sorts employees by their `job_id` and then by `hire_date` within each `job_id` group.
</details>
<br />


46. Convert all employee names to uppercase
```sql
SELECT UPPER(first_name), UPPER(last_name) FROM employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    Converts all employee names (`first_name` and `last_name`) to uppercase using the `UPPER` function.
</details>
<br />


47. Convert all employee names to lowercase.
```sql
SELECT LOWER(first_name), LOWER(last_name) FROM employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    Converts all employee names (`first_name` and `last_name`) to lowercase using the `LOWER` function.
</details>
<br />

48. Display the length of each employee's first name.
```sql
SELECT first_name, LENGTH(first_name) FROM employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    Displays the length of each employee’s `first_name` using the `LENGTH` function.
</details>
<br />


49. Extract the first three characters of each employee’s last name
```sql
SELECT first_name, SUBSTR(first_name, 1,3) FROM employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    Extracts the first three characters of each employee’s `first_name` using the `SUBSTR` function.
</details>
<br />

50. Replace a specific character in employee names with another.
```sql
SELECT first_name, REPLACE(first_name, 'A', 'J') FROM employees;
```
<details>
    <summary>Short Explanation By AI</summary>
    Replaces a specific character (e.g., "A") in employee names with another character (e.g., "J") using the `REPLACE` function.
</details>
<br />


*Remaining 50 Queries Explanation will be added soon*

51. Round salaries to the nearest hundred
```sql
SELECT first_name, salary, ROUND(salary, -2) from employees;
```

52. Display the floor of each employee’s salary.
```sql
SELECT first_name, salary, FLOOR(salary) from employees;
```

53. Calculate the modulus of salaries divided by 1000.
```sql
SELECT first_name, salary, MOD(salary, 1000) from employees;
```

54. Find the ceiling of employee salaries.
```sql
SELECT first_name, salary, CEIL(salary) from employees;
```

55. Calculate the absolute value of salaries.
```sql
SELECT first_name, salary, ABS(salary) from employees;
```

56. Display the current system date.
```sql
SELECT SYSDATE from dual;
```

57. Calculate the number of days since each employee was hired
```sql
SELECT first_name, hire_date, ROUND(sysdate - hire_date, 2) AS days_since_hired FROM employees;
```

58. Retrieve the month name of the hire date for each employee
```sql
SELECT first_name, hire_date, TO_CHAR(hire_date, 'Month') AS hire_month FROM employees;
```

59. Add 30 days to each employee’s hire date.
```sql
SELECT first_name, hire_date, (hire_date + 30) FROM employees;
```
*or*
```sql
SELECT first_name, hire_date, ADD_MONTHS(hire_date, 1) FROM employees;
```

60. Find the last day of the month for each employee’s hire date.
```sql
SELECT first_name, hire_date, LAST_DAY(hire_date) FROM employees;
```

61. Convert salaries to character strings.
```sql
SELECT first_name, salary, TO_CHAR(salary) FROM employees;
```

62. Convert a date string to a date format
```sql
-- -- AVAILABLE FOR YOU - TRY IT
```

63. Convert employee IDs to character strings.
```sql
SELECT first_name, employee_id, TO_CHAR(employee_id, '999') FROM employees;
```

64. Convert numeric data to a specific format using TO_NUMBER.
```sql
-- AVAILABLE FOR YOU - TRY IT
```

64. Convert numeric data to a specific format using TO_NUMBER.
```sql
-- AVAILABLE FOR YOU - TRY IT
```

65. Convert character data back to dates using TO_DATE.
```sql
SELECT first_name, to_char(hire_date, 'DD Ddspth Month YYYY'), to_date(to_char(hire_date, 'DD Month YYYY')) from employees; 
```

66. Replace NULL commission values with 0
```sql
SELECT first_name, commission_pct, NVL(commission_pct, 0) from employees;
```

67. Display a default job title for employees without one
```sql
SELECT first_name, job_id, NVL(job_id, 'GURU') from employees;
```

68. Find the length of each employee’s phone number.
```sql
SELECT first_name, phone_number, length(phone_number) from employees;
```

69. Concatenate strings only for employees with valid job IDs.
```sql
SELECT nvl(first_name || ' ' || last_name || ' ' || job_id, 'Ghareeb Hai job dedo bichary ko!') from employees;
```

70. Return "Valid" or "Invalid" based on whether the salary exceeds a threshold.
```sql
SELECT first_name, salary, CASE WHEN salary > 5000 THEN 'Valid' ELSE 'Invalid' END from employees;
```

71. Display the highest salary among employees.
```sql
SELECT MAX(salary) from employees;
```

72. Retrieve the maximum commission percentage.
```sql
SELECT MAX(commission_pct) from employees;
```

73. Find the maximum length of employee names.
```sql
SELECT MAX(length(first_name)) from employees;
```

74. Display the highest salary in each department.
```sql
SELECT department_id, MAX(salary) from employees group by department_id;
```

75. Retrieve the latest hire date.
```sql
SELECT MAX(hire_date) from employees;
```

76. Find the lowest salary among employees
```sql
SELECT MIN(salary) from employees;
```

77. Retrieve the minimum commission percentage.
```sql
SELECT MIN(commission_pct) from employees;
```


78. Find the shortest length of employee names.
```sql
SELECT MIN(length(first_name)) from employees;
```

79. Display the minimum salary in each department.
```sql
SELECT department_id, MIN(salary) from employees group by department_id;
```

80. Retrieve the latest hire date.
```sql
SELECT MIN(hire_date) from employees;
```

81. Calculate average salary among employees
```sql
SELECT AVG(salary) from employees;
```

82. Calculate the average commission percentage.
```sql
SELECT AVG(commission_pct) from employees;
```

83. Determine the average length of employee names.
```sql
SELECT AVG(length(first_name)) from employees;
```

84. Calculate the average salary by department
```sql
SELECT department_id, AVG(salary) from employees group by department_id;
```

85. Calculate the average time employees have been employed
*Here i have mentioned all days, months and years individually!*
```sql
SELECT TRUNC(AVG(SYSDATE - hire_date)) from employees; -- Days
SELECT TRUNC(MOD(AVG(SYSDATE - hire_date), 12)) from employees; -- Monhts
SELECT TRUNC((AVG(MONTHS_BETWEEN(SYSDATE, hire_date)))/12) "Years of Service" from employees; -- Years
```

86. Count the total number of employees.
```sql
SELECT COUNT(*) FROM employees;
```

87. Count the number of employees with a commission.
```sql
SELECT COUNT(commission_pct) FROM employees;
```

88. Count the employees in each department.
```sql
SELECT COUNT(*) FROM employees GROUP BY department_id;
```

89. Retrieve the count of employees hired in a specific year.
```sql
SELECT COUNT(*) FROM employees WHERE TO_CHAR(hire_date, 'YYYY') = 2002;
```

90. Count the number of employees with salaries above 10,000.
```sql
SELECT COUNT(*) FROM employees WHERE salary > 10000;
```

91. Calculate the total salary in each department.
```sql
SELECT department_id, SUM(salary) FROM employees group by department_id;
```

92. Find the average salary by job ID.
```sql
SELECT job_id, AVG(salary) FROM employees group by job_id;
```

93. Count the employees in departments with more than 5 employees.
```sql
SELECT department_id, count(*) as "No. of Employees" from employees group by department_id having count(*) > 5;
```

94. Calculate the total commission earned by all employees.
```sql
SELECT SUM(commission_pct) "Total Commission Percentage", SUM(salary * commission_pct) "Total Commission Earned" from employees;
```

95. Find the maximum salary in departments with more than 10 employees
```sql
SELECT department_id, MAX(salary) as "Max Salary" FROM employees GROUP BY department_id having count(*) > 10;
```

96. Display employee names in reverse order.
```sql
SELECT LOWER(REVERSE(first_name)) FROM employees;
```

97. Show employees who have been hired for more than 10 years.
```sql
SELECT first_name, hire_date FROM employees WHERE MONTHS_BETWEEN(SYSDATE, hire_date) > 120;
```

98. Display salaries increased by 20% for hypothetical raises.
```sql
SELECT first_name, salary, (salary + (salary * 0.2)) as "Salary with Eidi" from employees;
```

99. Retrieve employees grouped by their first letter of last names.
```sql
SELECT SUBSTR(last_name, 1, 1) as first_letter, COUNT(*) from employees group by SUBSTR(last_name, 1, 1) order by first_letter;
```

100. Combine multiple single-row and group functions in a single query
```sql
-- Retrieve the department ID, the number of employees in each department, the maximum salary, and the average length of employee names.

SELECT department_id, COUNT(*) as TotalEmployee, SUM(salary) as MaxSalary, ROUND(AVG(LENGTH(first_name)), 2) as FirstNameLength from employees group by department_id order by department_id;
```

