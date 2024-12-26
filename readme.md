# 100 SQL Queries
### Solved By Sarfaraz Unar 

These SQL queries have been assigned by Professor Dr. Qasim and cover all the topics studied till the mid-term in the DBMS course.

---

**IF YOU ARE STUDENT AND WANTS TO PRACTICE THEN I DON'T RECOMMEND YOU TO COPY AND PASTE YOU CAN SEE AND FIRST START WRITING BY YOURSELF THEN YOU CAN CHECK.**

*Found any mistake? Start a issue on this repo*

---

✅ 92 Queries Completed
🌀 8 Queries will be added
😠 Some Queries are left blank for you to practice 😉.

---

1. Display the full name of employees by concatenating first and last names.
```sql
SELECT first_name || ' ' || last_name AS "First Name" from employees;
```

2. Display the full name of employees along with thier job titles.
```sql
SELECT first_name || ' ' || last_name || ' ' || job_id AS "Details" from employees;
```

3. Concatenate employee names with their hire dates
```sql
SELECT first_name || ' ' || last_name || ' ' || hire_date AS "Details" from employees;
```

4. Add a prefix "Employee:" before the full name
```sql
SELECT 'Employee:' || first_name || ' ' || last_name from employees;
```

5. Combine employee name and department name into a single string
*Department name does not exist in employees table*
```sql
SELECT 'Employee:' || first_name || ' ' || department_id from employees;
```

6. Add a literal string to the full name of employees to show their designation
```sql
-- AVAILABLE FOR YOU - TRY IT
```

7. Display the salary of employees with a literal currency symbol
```sql
SELECT first_name, '$' || salary from employees;
```

8. Add a literal "Manager" for employees who are managers.
```sql
SELECT first_name || ' Manager Sahab' from employees where job_id LIKE '%MAN';
```

10. Include a custom message with employee names
```sql
SELECT 'Hi ' || first_name || ', Have a great day!' from employees;
```



11. Display employees with salaries above a certain threshold
```sql
SELECT * from employees where salary > 10000;
```

12. Retrieve employees belonging to a specific department.
```sql
SELECT * from employees where department_id = 60;
```

13. Show employees hired after a specific date.
```sql
SELECT * from employees where hire_date > '01-JAN-2007';
```

14. List employees with a commission percentage greater than 0.
```sql
SELECT * from employees where commission_pct > 0;
```

15. Retrieve employees whose job ID matches a specific value.
```sql
SELECT * from employees where job_id = 'SA_MAN';
```

16. Display employees who belong to departments 10, 20, or 30.
```sql
SELECT * from employees where department_id in (10, 20, 30);
```

17. Show employees with salaries between 5000 and 10000.
```sql
SELECT * from employees where salary between 5000 AND 10000;
```

18. Display employees whose names start with "A"
```sql
SELECT * from employees where first_name like 'A%';
```

19. Retrieve employees hired in the year 2020
```sql
SELECT * from employees where hire_date > '01-JAN-2020';
```

20. Show employees whose manager ID is not NULL
```sql
SELECT * from employees where manager_id IS NOT null;
```

21. Find employees whose last name contains the letter "a"
```sql
SELECT * from employees where last_name like 'a%';
```

22. Display employees hired in the last 5 years.
```sql
SELECT * from employees where hire_date like 'a%';
```

23. Retrieve employees whose job titles end with "PROG.".
```sql
SELECT * from employees where job_id like '%PROG';
```

24. Show employees hired in a specific month.
```sql
SELECT * from employees where hire_date like '%JAN%';
```

25. Display employees with a specific character in their phone number.
```sql
SELECT * from employees where phone_number like '%507%';
```

26. Display employees earning the maximum salary
*We will get only one employee with highest salary.*
```sql
SELECT * from employees where salary = (SELECT MAX(salary) from employees);
```

27. Retrieve employees earning less than the average salary
```sql
SELECT * from employees where salary < (SELECT AVG(salary) from employees);
```

28. Show employees whose salaries are not equal to a specific value
```sql
SELECT * from employees where salary != 6000;
```

29. Find employees whose department ID is greater than 50.
```sql
SELECT * from employees where department_id > 50;
```

30. List employees hired before a specific date
```sql
SELECT * FROM employees where hire_date < '15-AUG-2003';
```

31. Display employees working in departments 60 and 80.
```sql
SELECT * FROM employees where department_id in(60, 80);
```

32. Retrieve employees with salaries less than 5000 or greater than 20000
```sql
SELECT * FROM employees where salary < 5000 OR salary > 20000;
```

33. Show employees who are either managers or belong to department 90.
```sql
SELECT * FROM employees where job_id like '%MAN' OR department_id = 90;
```

34. List employees hired after a specific date and earning a salary above 7000
```sql
SELECT * FROM employees where hire_date > '01-JAN-2002' AND salary > 7000;
```

35. Find employees who are not working under any manager.
```sql
SELECT * FROM employees where manager_id is null;
```

36. Calculate the annual salary of employees.
```sql
SELECT first_name, salary, (salary * 12) "Annual Salary" FROM employees;
```

37. Display employee salaries with a 10% bonus included.
```sql
SELECT first_name, salary, (salary + ((salary / 100) * 10)) "Salary with Bonus" FROM employees;
```

38. Find the total earnings of employees after adding commission.
```sql
SELECT first_name, salary, (salary + (salary * commission_pct)) "Salary with commission" FROM employees;
```

39. Subtract 1000 from each employee’s salary for a hypothetical scenario
```sql
SELECT first_name, salary, (salary - 1000) "Salary without Kharchi" FROM employees;
```

40. Multiply each employee's salary by 1.5 for hypothetical overtime pay.
```sql
SELECT first_name, salary, (salary * 1.5) "Salary with overtime" FROM employees;
```

41. Display employees ordered by their hire dates.
```sql
SELECT * FROM employees order by hire_date;
```

42. Retrieve employees sorted by their last names in ascending order
```sql
SELECT * FROM employees order by last_name; -- Ascending is by default order
```

43. Show employees sorted by salaries in descending order
```sql
SELECT * FROM employees order by salary DESC;
```

44. List employees grouped by their department IDs.
```sql
SELECT * FROM employees order by department_id;
```

45. Retrieve employees sorted by job ID and hire date
```sql
SELECT * FROM employees order by job_id, hire_date;
```

46. Convert all employee names to uppercase
```sql
SELECT UPPER(first_name), UPPER(last_name) FROM employees;
```

47. Convert all employee names to lowercase.
```sql
SELECT LOWER(first_name), LOWER(last_name) FROM employees;
```

48. Display the length of each employee's first name.
```sql
SELECT first_name, LENGTH(first_name) FROM employees;
```

49. Extract the first three characters of each employee’s last name
```sql
SELECT first_name, SUBSTR(first_name, 1,3) FROM employees;
```

50. Replace a specific character in employee names with another.
```sql
SELECT first_name, REPLACE(first_name, 'A', 'J') FROM employees;
```

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
SELECT job_id, SUM(salary) FROM employees group by job_id;
```

