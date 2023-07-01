-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.

select FIRST_NAME as Worker_Name from Worker

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
select upper(FIRST_NAME) from Worker

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
select distinct(department) from worker

-- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
select substring(first_name,1,3)[First_Name] from Worker

-- Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
Select charindex('a',FIRST_NAME) from Worker where FIRST_NAME = 'Amitabh';

-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.

select RTRIM(first_name) from Worker

--Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
select LTRIM(first_name) from Worker

--  Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
select distinct(DEPARTMENT),LEN(DEPARTMENT) from Worker

-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
select REPLACE(first_name,'a','A')[Name] FROM Worker

-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should 
--separate them.
select CONCAT(first_name,' ',last_name) as COMPLETE_NAME from Worker

--Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from worker order by FIRST_NAME

-- Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
select * from worker order by FIRST_NAME asc,DEPARTMENT desc

-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
select * from Worker where FIRST_NAME in ('vipul','satish')

-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
select * from Worker where FIRST_NAME not in ('vipul','satish')

--Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
select * from worker where DEPARTMENT='Admin'

--Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
select * from Worker where FIRST_NAME like 'a%'

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
select * from Worker where FIRST_NAME like '%a'

--Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select * from worker where LEN(FIRST_NAME) = 6 and FIRST_NAME like '%h'


--Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select * from Worker where salary between 100000 and 500000

-- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
select * from Worker where year(JOINING_DATE)=2014 and MONTH(JOINING_DATE) = 2

--Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
select COUNT(*) from Worker where DEPARTMENT = 'Admin'

--Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.
select concat(first_name,' ',LAST_NAME),SALARY from Worker where SALARY >= 50000 and SALARY <=  100000

--Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
select DEPARTMENT,count(*) no_of_workers from Worker  group by DEPARTMENT order by count(*) desc

-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
select concat(first_name,' ',LAST_NAME)[full_name],t.WORKER_TITLE from Worker w inner join Title t on w.WORKER_ID=t.WORKER_REF_ID where t.WORKER_TITLE = 'manager'

-- Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
select w.DEPARTMENT,w.FIRST_NAME,w.JOINING_DATE,w.LAST_NAME,w.SALARY,w.WORKER_ID ,count(*)[Count] from Worker w group by
w.DEPARTMENT,w.FIRST_NAME,w.JOINING_DATE,w.LAST_NAME,w.SALARY,w.WORKER_ID having count(*) > 1

-- Q-26. Write an SQL query to show only odd rows from a table.
select * from Worker where WORKER_ID%2 <> 0

--Q-27. Write an SQL query to show only even rows from a table.
select * from Worker where WORKER_ID%2 <> 1

-- Q-28. Write an SQL query to clone a new table from another table.
select * into New_Worker from Worker

-- Q-29. Write an SQL query to fetch intersecting records of two tables.
select * from Worker intersect select * from New_Worker

-- Q-30. Write an SQL query to show records from one table that another table does not have.


-- Write an SQL query to show the current date and time.
select getdate()

--Q-32. Write an SQL query to show the top n (say 10) records of a table.
select top 10 * from Worker order by salary desc

--Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
select min(salary) from Worker where salary in (select top 5 salary from worker order by salary desc)

--with top command
SELECT Salary
FROM Worker W1
WHERE 4 = (
 SELECT COUNT( DISTINCT ( W2.Salary ) )
 FROM Worker W2
 WHERE W2.Salary >= W1.Salary
 );

--Q-35. Write an SQL query to fetch the list of employees with the same salary.
Select distinct W.WORKER_ID, W.FIRST_NAME, W.Salary 
from Worker W, Worker W1 
where W.Salary = W1.Salary and w1.WORKER_ID <> w.WORKER_ID 


-- Q-36. Write an SQL query to show the second highest salary from a table.
select min(salary) from Worker where salary in (select top 2 salary from Worker order by SALARY desc)

--Q-37. Write an SQL query to show one row twice in results from a table.
select w.FIRST_NAME,w.DEPARTMENT from worker w union all  select w1.FIRST_NAME,w1.DEPARTMENT from Worker w1

-- Q-39. Write an SQL query to fetch the first 50% records from a table.
select * from Worker where worker_id <= (select count(worker_id)/2 from Worker)

--Q-40. Write an SQL query to fetch the departments that have less than five people in it.
select department,count(*) from Worker group by DEPARTMENT having count(*) < 5

-- Q-41. Write an SQL query to show all departments along with the number of people in there.
select department,count(*)[Total_Count] from Worker group by DEPARTMENT 

--Q-42. Write an SQL query to show the last record from a table.
select * from Worker where WORKER_ID = (select max(WORKER_ID) from Worker)

Q-43. Write an SQL query to fetch the first row of a table.
select * from Worker where WORKER_ID = (select min(WORKER_ID) from Worker)

--Q-44. Write an SQL query to fetch the last five records from a table.
select top 5 * from Worker order by WORKER_ID desc

-- Q-45. Write an SQL query to print the name of employees having the highest salary in each department.
select first_name,department from Worker group by DEPARTMENT,FIRST_NAME having max(SALARY)

SELECT w.DEPARTMENT,w.FIRST_NAME,w.Salary from(SELECT max(Salary) as TotalSalary,DEPARTMENT from Worker group by DEPARTMENT) as TempNew 
Inner Join Worker w on TempNew.DEPARTMENT=w.DEPARTMENT 
 and TempNew.TotalSalary=w.Salary;

 --Q-46. Write an SQL query to fetch three max salaries from a table.
 select  distinct top 3 SALARY  from Worker order by salary desc 

 SELECT distinct Salary from worker a WHERE 3 >= (SELECT count(distinct Salary) from worker b WHERE a.Salary <= b.Salary) order by a.Salary desc;

-- Q-47. Write an SQL query to fetch three min salaries from a table.
 select  distinct top 3 SALARY  from Worker order by salary asc 

 --Q-48. Write an SQL query to fetch nth max salaries from a table


 --Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.
 select DEPARTMENT,sum(salary) from worker group by DEPARTMENT

--Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.
select concat(first_name,' ',last_name)[Name],salary from Worker where salary =  (select max(salary) from Worker) 











select * from worker where salary = (select max(salary) from worker)







































