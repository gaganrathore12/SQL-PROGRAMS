create database flipkart;
use flipkart;

create table staff1(
emp_id int,
first_name varchar(100),
last_name varchar(100),
department varchar(100),
salary int,
hire_date date);

select * from staff1;

insert into staff1(emp_id,first_name,last_name,department,salary,hire_date)
values
(1,"john","doe","IT",60000.00,'2019-01-10'),
(2,"jane","smith","HR",55000.00,'2018-03-05'),
(3,"emily","jones","IT",62000.00,'2020-07-23'),
(4,"michael","brown","FINANCE",70000.00,'2016-05-14'),
(5,"sarah","davis","FINANCE",69000.00,'2017-11-18'),
(6,"david","johnson","HR",48000.00,'2021-09-10');

/*Ques 1Find the average salary of employees in each department.*/
select department , avg(salary) as "average salary" from staff1 group by  department;

/*Find the total number of employees hired after 2019.*/
select distinct count(hire_date) as "employees hired after 2019" from staff1 where hire_date > "2019-01-10";

/*List the departments and the total salary of all employees in each department, ordered by the total salary.*/
select department , sum(salary) as " total salary in each department" from staff1 group by department order by sum(salary) asc;

/*Find the highest salary in the Finance department.*/
SELECT   department , max(salary) as "highest salary" from staff1 where department="finance" ;



/*Get the top 3 highest-paid employees. */
select first_name , max(salary) as "highest paid employee " from staff1 group by first_name order by max(salary) desc limit 3;

/*Find the department with the minimum average salary.*/  
select department , avg(salary) as "minimum average salary" from staff1 group by department order by avg(salary) asc limit 1;

/*Display the total number of employees in each department, ordered by the number of employees. */
select department,count(emp_id) as "total number of employees in each department" from staff1 group by department order by count(emp_id) asc;

/*Find the average salary of employees who were hired before 2020.*/  
select hire_date, avg(salary) as "employees hired after 2020" from staff1 group by  hire_date having hire_date < "2020-01-01" ;

/*List the names of employees in the IT department ordered by hire date, with the most recently hired employees first.*/
select first_name , hire_date  as "most recently hired employee in it department " from staff1 where hire_date IN (select max(hire_date ) from staff1 where department ="IT");

/*Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary.*/
select sum(salary) as " sum of salary hired after 1 januaury" from staff1 where hire_date >"2019-01-01" order by sum(salary) asc;

/*Get the employee with the lowest salary in the HR department.*/ 
  SELECT first_name, last_name, salary FROM staff1 where salary IN  ( SELECT MIN(salary)  FROM staff1 where department="HR");
 
/*Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.*/ 
select department , sum(salary) as " total salary paid " from staff1 group by department order by sum(salary) desc limit 2;

/*List all employees hired after 2018, ordered by salary, and show only the first 4 employees.*/ 
select first_name ,last_name ,hire_date as "employees hired after 2018" from staff1 where hire_date > "2018-01-01" order by salary asc limit 4;
 
/*find the highest salary in the IT department, but limit the results to the top 1 result.*/  
select max(salary) as "highest salary" from staff1 where department="IT" order by max(salary) desc limit 1;
 
/*Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.*/ 
  select department , avg(salary) as "avg salary in each department"  from staff1 group by department having avg(salary) >60000;
  

