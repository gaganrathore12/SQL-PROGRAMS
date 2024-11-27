/*Ques 1  Create a database named company and a table named employees with the following fields:
id (INT, Primary Key, Auto Increment)
name (VARCHAR(100))
position (VARCHAR(100))
salary (DECIMAL(10,2))
date_of_joining (DATE)*/

Create Database Company3;

Use Company3;

CREATE TABLE Employees(
    Id INT NOT NULL UNIQUE,
    Name VARCHAR(100),
    Position VARCHAR(100),
    salary DECIMAL(10 , 2 ),
    Date_of_joining DATE);
    
/*Ques 2 Insert the following data into the employees table:
 John Doe, Manager, 55000.00, 2020-01-15
 Jane Smith, Developer, 48000.00, 2019-07-10
 Alice Johnson, Designer, 45000.00, 2021-03-22
 Bob Brown, Developer, 50000.00, 2018-11-01*/
 
 Insert into Employees(Id,Name,Position,Salary,Date_of_joining)
values
(1,"John Doe", "Manager", 55000.00, "2020-01-15"),
(2,"Jane Smith", "Developer", 48000.00, "2019-07-10"),
(3,"Alice Johnson", "Designer", 45000.00, "2021-03-22"),
(4,"Bob Brown", "Developer", 50000.00, "2018-11-01");

select * from employees;
/*Ques 3 Write a query to retrieve all employees who are Developers.*/
select * from employees where position="devloper";

/*Ques4  Write a query to update the salary of Alice Johnson to 46000.00.*/
update employees set salary=46000.00 where id = 3;

/*Ques 5 Write a query to delete the employee record for Bob Brown.*/
delete from employees where id=4

/*Oues 6 Write a query to find the employees who have a salary greater than 48000.*/
select * from employees where salary > 48000;

/*Ques 7  Write a query to add a new column email to the employees table.*/
alter table employees add email varchar(100);

/*Ques 8 Write a query to update the email for John Doe to john.doe@company.com.*/
update employees set email = "john.doe@company.com" where id = 1;

/*Ques9 Write a query to retrieve only the name and salary of all employees.*/
select name,salary from employees;

/*Ques 10 Write a query to count the number of employees who joined after January 1, 2020.*/
select count(*) from employees where date_of_joining>"2020-1-1";

/*Ques 11  Write a query to order the employees by salary in descending order.*/
select * from employees order by salary DESC;

/*Ques12 Write a query to drop the email column from the employees table.*/
alter table employees drop column email;

/*Ques13 Write a query to find the employee with the highest salary*/
select * from employees order by salary DESC limit 1;









 