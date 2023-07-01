create database [Mock Preparation]
create table EmployeeDetail (EmployeeId int identity(1,1) primary key,FirstName Varchar(20),LastName Varchar(20),Salary int,JoiningDate
datetime,department varchar(20),gender Varchar(20))

insert into EmployeeDetail values ('Nikita','Jain',530000,'2014-01-09 17:31:07.793','HR','Female'),
('Aashish','Kumar',1000000,'2014-01-09 10:05:07.793','IT','Male'),
('Nikhil','Sharma',480000,'2014-01-09 09:00:07.793','HR','Male'),
('Anish','Kadian',500000,'2014-01-09 09:31:07.793','Payroll','Female')


--1. Write a query to get all employee detail from "EmployeeDetail" table
select * from EmployeeDetail

--Write a query to get only "FirstName" column from "EmployeeDetail" table 
select firstname from EmployeeDetail

--3. Write a query to get FirstName in upper case as "First Name". 
select UPPER(FirstName)[First Name] from EmployeeDetail

--4. Write a query to get FirstName in lower case as "First Name". 
select Lower(FirstName)[First Name] from EmployeeDetail

--5. Write a query for combine FirstName and LastName and display it as "Name" (also include white space between first name & last name) 
select CONCAT(FirstName,' ' ,LastName) as Name from EmployeeDetail

--6. Select employee detail whose name is "Vikas" 
select * from EmployeeDetail where FirstName = 'Vikas'

--7. Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'. 
select * from EmployeeDetail where FirstName like 'a%'

--8. Get all employee details from EmployeeDetail table whose "FirstName" contains 'k' 
select * from EmployeeDetail where FirstName like '%k%'

--9. Get all employee details from EmployeeDetail table whose "FirstName" end with 'h'
select * from EmployeeDetail where FirstName like '%h'

--10. Get all employee detail from EmployeeDetail table whose "FirstName" start with any single character between 'a-p' 
select * from EmployeeDetail where FirstName like '[a-p]%'


--11.Get all employee detail from EmployeeDetail table whose "FirstName" not start with any single character between 'a-p'
select * from EmployeeDetail where FirstName not like '[a-p]%'

--12). Get all employee detail from EmployeeDetail table whose "Gender" end with 'le' and contain 4 letters. The Underscore(_) 
--Wildcard Character represents any single character.
select * from EmployeeDetail where gender like '%le' and len(gender)=4

--13). Get all employee detail from EmployeeDetail table whose "FirstName" start with 'A' and contain 5 letters.
select * from EmployeeDetail where FirstName like 'a%' and len(FirstName)=5
SELECT * FROM EmployeeDetail WHERE FirstName like 'A____' 

--14). Get all employee detail from EmployeeDetail table whose "FirstName" containing '%'. ex:-"Vik%as"
select * from EmployeeDetail where FirstName like '%[%]%'

--15). Get all unique "Department" from EmployeeDetail table.
select distinct(department) from EmployeeDetail

--16). Get the highest "Salary" from EmployeeDetail table.
select max(salary) from EmployeeDetail

--17). Get the lowest "Salary" from EmployeeDetail table.
select min(salary) from EmployeeDetail

--18). Show "JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013"
select convert(varchar(20),JoiningDate,106) from EmployeeDetail

--19). Show "JoiningDate" in "yyyy/mm/dd" format, ex- "2013/02/15"
select convert(varchar(20),JoiningDate,111) from EmployeeDetail

--20). Show only time part of the "JoiningDate".
select convert(varchar(20),JoiningDate,108) as JoiningDate from EmployeeDetail

--21). Get only Year part of "JoiningDate".
select DATEPART(YY,JOININGDATE) from EmployeeDetail

--22). Get only Month part of "JoiningDate".
select DATEPART(MM,JOININGDATE) from EmployeeDetail

--23). Get system date.
select GETDATE()

--24). Get UTC date.
select GETUTCDATE()

--25). Get the first name, current date, joiningdate and diff between current date and joining date in months.
select FirstName,getdate(),JoiningDate,datediff(yy,getdate(),JoiningDate) as JoinDate  from EmployeeDetail

--26). Get the first name, current date, joiningdate and diff between current date and joining date in days.
select FirstName,getdate()[current date],JoiningDate,datediff(DD,getdate(),JoiningDate) as JoinDate  from EmployeeDetail

--27). Get all employee details from EmployeeDetail table whose joining year is 2013.
select * from EmployeeDetail where DATEPART(YY,JoiningDate)=2013

--28). Get all employee details from EmployeeDetail table whose joining month is Jan(1)
select * from EmployeeDetail where DATEPART(mm,JoiningDate)= 1

--29). Get all employee details from EmployeeDetail table whose joining date between "2013-01-01" and "2013-12-01".
select * from EmployeeDetail where JoiningDate between '2013-01-01' and '2013-12-01'

--30). Get how many employee exist in "EmployeeDetail" table.
select count(*) from EmployeeDetail

--31. Select only one/top 1 record from "EmployeeDetail" table.
select top 1 * from EmployeeDetail

--32. Select all employee detail with First name "Vikas","Aashish", and "Nikhil".
select * from EmployeeDetail where FirstName in ('Vikas','Aashish','Nikhil')

33. Select all employee detail with First name not in "Vikas","Ashish", and "Nikhil".
select * from EmployeeDetail where FirstName not in ('Vikas','Aashish','Nikhil')

34. Select first name from "EmployeeDetail" table after removing white spaces from right side
select RTRIM(firstname) from EmployeeDetail

35. Select first name from "EmployeeDetail" table after removing white spaces from left side
select LTRIM(firstname) from EmployeeDetail

--36. Display first name and Gender as M/F.(if male then M, if Female then F)
select firstname,SUBSTRING(gender,1,1) as gender from EmployeeDetail
select firstname,case
                      when gender='Male' then 'M'
					  when gender='Female' then 'F'
					  END
					  as Gender
					  from EmployeeDetail

--37. Select first name from "EmployeeDetail" table prifixed with "Hello "
select concat('Hello',' ',firstname) as Greetings from EmployeeDetail
select 'Hello '+ firstname from EmployeeDetail 

--38. Get employee details from "EmployeeDetail" table whose Salary greater than 600000
select * from EmployeeDetail where Salary > 600000

--39. Get employee details from "EmployeeDetail" table whose Salary less than 700000
select * from EmployeeDetail where Salary < 600000

--40. Get employee details from "EmployeeDetail" table whose Salary between 500000 than 600000
select * from EmployeeDetail where Salary between 500000 and 600000

--41. Select second highest salary from "EmployeeDetail" table.
SELECT TOP 1 Salary FROM
(SELECT TOP 2 Salary FROM EmployeeDetail ORDER BY Salary DESC) T  ORDER BY Salary ASC

select max(salary) from EmployeeDetail where Salary < (select max(salary) from EmployeeDetail)

















































































































 







