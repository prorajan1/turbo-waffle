create table ProjectDetail (ProjectDetailId int identity(1,1),EmployeeDeatilId int,ProjectName varchar(20))
insert into ProjectDetail values
(1,'Task Track'),
(1,'CLP'),
(1,'Survey Management'),
(2,'HR Management'),
(3,'Task Track'),
(3,'GRS'),
(3,'DDS'),
(4,'HR Management'),
(6,'GL Management')

--42. Write the query to get the department and department wise total(sum) salary from "EmployeeDetail" table.
select department,sum(salary) from EmployeeDetail group by department order by Department

--43. Write the query to get the department and department wise total(sum) salary, display it in ascending order according to salary.
select department,sum(salary) from EmployeeDetail group by department order by Department desc

--44. Write the query to get the department and department wise total(sum) salary, display it in descending order according to salary.
select department,sum(salary) from EmployeeDetail group by department order by Department asc

--45. Write the query to get the department, total no. of departments, total(sum) salary with respect to department from "EmployeeDetail" table.
select Department,count(Department) [TotalDept],sum(salary)[TotalSalary] from EmployeeDetail group by Department

--46. Get department wise average salary from "EmployeeDetail" table order by salary ascending
select department,avg(salary) as AverageSal from EmployeeDetail group by Department order by avg(salary) asc

--48. Get department wise minimum salary from "EmployeeDetail" table order by salary ascending
select department,min(salary) as MinSal from EmployeeDetail group by Department order by min(salary) asc

--49. Write down the query to fetch Project name assign to more than one Employee
select ProjectName, count(*)[ProjectCount] from ProjectDetail group by ProjectName having count(*) > 1

--51. Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for 
--those employee which have assigned project already.
select E.FirstName+' '+E.LastName[FullName],P.ProjectName from EmployeeDetail E join ProjectDetail P on 
E.EmployeeId=P.EmployeeDeatilId order by Firstname

--52. Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for 
--all employee even they have not assigned project.
select E.firstname,P.ProjectName from employeedetail E left outer join ProjectDetail P on E.EmployeeId =P.EmployeeDeatilId order by firstname

--53(35.1) Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee if project is 
--not assigned then display "-No Project Assigned".
select E.Firstname,ISNULL(P.projectname,'No Project Assigned') as ProjectName from EmployeeDetail E left outer join ProjectDetail P  
on E.EmployeeId=P.EmployeeDeatilId

--54. Get all project name even they have not matching any employeeid, in left table, order by firstname 
--from "EmployeeDetail" and "ProjectDetail".
select FirstName,ProjectName from EmployeeDetail E RIGHT join ProjectDetail P on P.EmployeeDetail = E.EmployeeId order by FirstName
 
--55. Get complete record(employeename, project name) from both tables([EmployeeDetail],[ProjectDetail]), 
--if no match found in any table then show NULL.
select FirstName+' '+LastName,ProjectName from EmployeeDetail E full join ProjectDetail P on P.EmployeeDetail = E.EmployeeId order by FirstName

--56. Write a query to find out the employeename who has not assigned any project, and display "-No Project Assigned"
--( tables :- [EmployeeDetail],[ProjectDetail]).
select E.FirstName,isnull(Projectname,'No Project Assigned')[Project] from EmployeeDetail E left outer join ProjectDetail P 
on E.EmployeeId=P.EmployeeDetailId   where ProjectName is null

--57. Write a query to find out the project name which is not assigned to any employee( tables :- [EmployeeDetail],[ProjectDetail]).
select P.ProjectName from EmployeeDetail E right outer join ProjectDetail P ON E.EmployeeId=P.EmployeeDetailId where FirstName is null

--58. Write down the query to fetch EmployeeName & Project who has assign more than one project.
Select EmployeeID, FirstName, ProjectName from [EmployeeDetail] E INNER JOIN [ProjectDetail] P
ON E.EmployeeID = P.EmployeeDetailID
WHERE EmployeeID IN (SELECT EmployeeDetailID FROM [ProjectDetail] GROUP BY EmployeeDetailID HAVING COUNT(*) >1 )

--59. Write down the query to fetch ProjectName on which more than one employee are working along with EmployeeName.
select E.FirstName,P.ProjectName from EmployeeDetail E inner join ProjectDetail P on E.EmployeeId = P.EmployeeDetailId WHERE 
p.ProjectName in  (select ProjectName from ProjectDetail group by ProjectName havING COUNT(1) > 1)






















