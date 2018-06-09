#1 Write a query to find the name (FIRST_NAME, LAST_NAME) and salary of the employees who earn a salary that is higher than the salary of all the Shipping Clerk (JOB_ID = 'SH_CLERK'). Sort the results of the salary of the lowest to highest. Employees
SELECT FIRST_NAME, LAST_NAME, SALARY FROM Employees
	WHERE SALARY > (SELECT MAX(SALARY) FROM Employees
						WHERE JOB_ID = 'SH_CLERK') ORDER BY SALARY ASC;

#2 Write a query to find the name (FIRST_NAME, LAST_NAME) of the employees who are not supervisors. Employees
SELECT FIRST_NAME, LAST_NAME FROM Employees
	WHERE EMPLOYEE_ID NOT IN (SELECT MANAGER_ID FROM Departments);

#3 Write a query to display the employee ID, first name, last name, and department names of all employees. Employees, Departments



#4 Write a query to fetch even numbered records from employees table. Employees
SELECT * FROM Employees
	WHERE (EMPLOYEE_ID%2) = 0;

#5 Write a query to find the 5th maximum salary in the employees table. Employees
SELECT SALARY FROM Employees ORDER BY SALARY DESC LIMIT 1 OFFSET 4;

#6 Write a query to find the 4th minimum salary in the employees table. Employees
SELECT SALARY FROM Employees ORDER BY SALARY ASC LIMIT 1 OFFSET 3;

#7 Write a query to select last 10 records from a table. Employees
SELECT * FROM Employees ORDER BY EMPLOYEE_ID DESC LIMIT 10;

#8 Write a query to list the department ID and name of all the departments where no employee is working. Employees, Departments
SELECT DEPARTMENT_ID, DEPARTMENT_NAME FROM Departments
	WHERE DEPARTMENT_ID NOT IN (SELECT DISTINCT DEPARTMENT_ID FROM Employees);

#9 Write a query to get 3 maximum salaries. Employees
SELECT SALARY FROM Employees ORDER BY SALARY DESC LIMIT 3;

#10 Write a query to get 3 minimum salaries. Employees
SELECT SALARY FROM Employees ORDER BY SALARY ASC LIMIT 3;


#1 Write a query to get the department name and number of employees in the department.
SELECT DEPARTMENT_NAME, count(DEPARTMENT_NAME) AS NUMBER_OF_EMPLOYEES FROM Employees
	INNER JOIN Departments ON Employees.DEPARTMENT_ID = Departments.DEPARTMENT_ID GROUP BY DEPARTMENT_NAME;

#2 Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90 from job history.
SELECT Employees.EMPLOYEE_ID, JOB_TITLE, DATEDIFF(END_DATE, START_DATE) AS DAYS_BETWEEN, JobHistory.DEPARTMENT_ID FROM Employees
	INNER JOIN Jobs ON Employees.JOB_ID = Jobs.JOB_ID
	INNER JOIN JobHistory ON Jobs.JOB_ID = JobHistory.JOB_ID
	WHERE JobHistory.DEPARTMENT_ID = 90

#3 Write a query to display the department ID and name and first name of manager.
SELECT Employees.DEPARTMENT_ID, FIRST_NAME, LAST_NAME FROM Departments
	INNER JOIN Employees ON Departments.MANAGER_ID = Employees.EMPLOYEE_ID;


#4 Write a query to display the department name, manager name, and city.
SELECT DEPARTMENT_NAME, FIRST_NAME, LAST_NAME, CITY FROM Employees
	INNER JOIN Departments ON Employees.EMPLOYEE_ID = Departments.MANAGER_ID
	INNER JOIN Locations ON Departments.LOCATION_ID = Locations.LOCATION_ID

#5 Write a query to display the job title and average salary of employees.
SELECT JOB_TITLE, AVERAGE_SALARAY

#6 Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job.

#7 Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary.

#8 Write a query to display department name, name (first_name, last_name), hire date, salary of the manager for all managers whose experience is more than 15 years.