create table FuelTable (Id int identity(1,1),Fuel int,Date datetime)
INSERT INTO FuelTable VALUES(9,'2014-04-25 11:00:00:000'),(8,'2014-04-25 12:00:00:000'),(6,'2014-04-25 13:00:00:000'),(12,'2014-04-25 14:00:00:000'),
(11,'2014-04-25 15:00:00:000'),(10,'2014-04-25 16:00:00:000'),(9,'2014-04-25 17:00:00:000'),(8,'2014-04-25 18:00:00:000'),
(10,'2014-04-25 19:00:00:000'),(9,'2014-04-25 20:00:00:000'),(8,'2014-04-25 21:00:00:000'),(7,'2014-04-25 22:00:00:000'),
(15,'2014-04-25 23:00:00:000')

--100. Write down the query to print first letter of a Name in Upper Case and all other letter in Lower Case.(EmployDetail table)
SELECT * FROM EmployeeDetail
SELECT UPPER(SUBSTRING(firstname,1,1))+LOWER(substring(firstname,2,len(firstname)-1))[name]  from EmployeeDetail

--101. Write down the query to display all employee name in one cell seprated by ',' 
--ex:-"Vikas, nikita, Ashish, Nikhil , anish"(EmployDetail table)

SELECT STUFF(( SELECT  ',' + E.FirstName FROM [EmployeeDetail] AS E FOR XML PATH('')), 1, 2, '') AS [All Emp Name]

--102. Write down the query to get ProjectName and respective EmployeeName(firstname) which are working on the project,
select FirstName,PROJECTNAME FROM EmployeeDetail E inner join ProjectDetail P ON E.EMPLOYEEID= P.EMPLOYEEDETAILID

SELECT ProjectName, STUFF((SELECT   ', ' +  FirstName FROM EmployeeDetail E1 INNER JOIN [ProjectDetail] P1 ON E1.EmployeeID = P1.EmployeeDetailID
WHERE P1.ProjectName = P2.ProjectName FOR XML PATH('')),1,2,'' ) AS [Employee Name] FROM EmployeeDetail E2
INNER JOIN [ProjectDetail] P2 ON E2.EmployeeID = P2.EmployeeDetailID
GROUP BY ProjectName


