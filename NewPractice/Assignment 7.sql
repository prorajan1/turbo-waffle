create table Table_1(ID INT,NAME VARCHAR(20))
create table Table_2(ID INT,NAME VARCHAR(20))

create table TBL_1(ID INT)
create table TBL_2(ID INT)
insert into TBL_1 values(1),(1)
insert into TBL_2 values(1),(1),(1)


insert into table_1 values(1,'Vikas Ahlawat'),(2,'Sachin Aggarwal'),(3,'Manoj Kumar')
insert into table_2 values(1,'Vikas Ahlawat'),(4,'Sanjay Kumar'),(5,'Sachin Aggarwal'),(3,'Sandeep Kumar')

--60. What would be the output of the following query(INNER JOIN)
SELECT T1.ID, T2.ID FROM TBL_1 T1 CROSS JOIN TBL_2 T2 

--67. What will be the output of the following query.(Related Tables : Table_1,Table_2)
SELECT A.[ID] ,A.[Name],B.[ID] ,B.[Name] FROM [Table_1] A INNER JOIN [Table_2] B
ON A.ID = B.ID AND A.[Name] = B.[Name]

--69. What will be the output of the following query.(Related Tables : Table_1,Table_2)
--(INNER JOIN WITH OR)
SELECT A.[ID], A.[Name],B.[ID], B.[Name] FROM [Table_1] A INNER JOIN [Table_2] B
ON A.ID = B.ID OR A.[Name] = B.[Name]

--70. What will be the output of the following query.(Related Tables : Table_1,Table_2)
--(INNER JOIN WITH NOT EQUAL !=)
SELECT A.[ID], A.[Name],B.[ID], B.[Name] FROM [Table_1] A INNER JOIN [Table_2] B
ON A.ID != B.ID

--71. What will be the output of the following query.(Related Tables : Table_1,Table_2)
--(INNER JOIN WITH NOT)
SELECT A.[ID] ,A.[Name],B.[ID] ,B.[Name] FROM [Table_1] A INNER JOIN [Table_2] B
ON NOT(A.ID = B.ID)

--72. What will be the output of the following query.(Related Tables : Table_1,Table_2)
--(INNER JOIN WITH IN)
SELECT A.[ID], A.[Name],B.[ID], B.[Name] FROM [Table_1] A INNER JOIN [Table_2] B
ON A.ID IN(1)

--74. What will be the output of the following query.(Related Tables : Table_1,Table_2)
--(LEFT OUTER JOIN)
SELECT A.[ID] ,A.[Name],B.[ID] ,B.[Name] FROM [Table_1] A LEFT OUTER JOIN [Table_2] B
ON A.ID = B.ID

--75. Write down the query to fatch record from Table_1 which not exist in Table_2(based on ID column)
--ANS:
SELECT A.[ID] ,A.[Name],B.[ID] ,B.[Name] FROM [Table_1] A LEFT OUTER JOIN [Table_2] B
ON A.ID = B.ID WHERE B.[ID] IS NULL

--75. Write down the query to fatch record from Table_1 which not exist in Table_2(based on ID column)
--ANS:
SELECT A.[ID] ,A.[Name],B.[ID] ,B.[Name] FROM [Table_1] A LEFT OUTER JOIN [Table_2] B
ON A.ID = B.ID WHERE B.[ID] IS NULL

--76. What will be the output of the following query.(Related Tables : Table_1,Table_2)
--(LEFT OUTER JOIN WITH !=)
SELECT A.[ID] ,A.[Name],B.[ID] ,B.[Name] FROM [Table_1] A LEFT OUTER JOIN [Table_2] B
ON A.ID != B.ID

--77. Write down the query to fatch record from Table_2 which not exist in Table_1(based on ID column)
--ANS:
SELECT A.[ID] ,A.[Name],B.[ID] ,B.[Name] FROM [Table_1] A RIGHT OUTER JOIN [Table_2] B
ON A.ID = B.ID WHERE A.[ID] IS NULL









