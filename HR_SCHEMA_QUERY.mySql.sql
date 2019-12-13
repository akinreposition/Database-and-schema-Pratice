/*Query 1: display the full name (first and last name), and salary for those employees who earn below 6000*/
select	First_Name, Last_Name, salary
from employees
where salary < 6000;


/*Query 2: display the first name, last name, department ID, and department name for each employee.*/

select	distinct First_Name, Last_Name, departments.Department_ID, Department_Name
from employees join departments;

/* Query 3: display the first and last_name, department number and salary for those employees who earn more than 8000. */
select	First_Name, Last_Name, Department_ID, salary
from employees
where salary > 8000;

/* Query 4: display the first and last name, and department number for all employees whose last name is “McEwen".*/
select First_Name, Last_Name, department_id
from employees
where Last_Name = 'McEwen';

/* Query 5: display the full name (first and last), hire date, salary, and department number for those employees
 whose first name does not containing the letter M 
and make the result set in ascending order by department number.*/

select concat(First_Name, '  ' , Last_Name) as Full_Name, Hire_Date, salary, employees.Department_ID
from employees
where First_Name not like '%M%'
order by Department_ID Asc;

/* Query 6: display the full name (first and last), the phone number and email separated by hyphen, and salary, 
for those employees whose salary is within the range of 9000 and 17000. 
The column headings assign with Full_Name, Contact_Detailsand Remuneration respectively */

select concat(First_Name, '  ', Last_Name) as Full_Name, concat(Phone_Number, ' - ', Email) as Contact_Details,
salary as Remuneration
from employees
where salary > 9000 and Salary< 17000;


/* Query 7: display the full name (first and last), 
job id and date of hire for those employees who was hired during May 24th, 2007 
and April 21st, 2008. */

select  concat(First_Name, '  ', Last_Name) as Full_Name, job_id, Hire_date
from employees
where Hire_Date  between '2007-05-24' and ' 2008-04-21'
order by Hire_Date Asc;

/* Query 8: display the full name (first and last name), 
and department number for those employees who works either in department 60 or 80. */

select concat(First_Name, '  ', Last_Name) as Full_Name, department_id
from employees
where department_id between 60 and 80;

/* Query 9: display the first and last name, departmentID, city, and state province for each employee. */

select  E.First_Name, E.Last_Name, D.department_id, L.city, L.STATE_PROVINCE
from employees E join departments D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
Join location L on D.location_id = L.LOCATION_ID;

/* Query 10: display the first name, last name, salary, and job grade for all employees*/
select E.first_name, E.last_name, E.salary, J.grade_level
from job_grades J JOIN employees E  
ON E.salary Between J.lowest_salary AND J.highest_salary;