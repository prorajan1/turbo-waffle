83). SELECT 15
--output of this query would be.
A). Throw error
B). 15*
C). 0
D). 1

84).SELECT $
--output of this query would be.
A). Throw error
B). $
C). 1
D). 0.00*

85). SELECT COUNT(*)
--output of this query would be.
A). Throw error
B). 0
C). 1*
D). *

86). SELECT COUNT('7')
--output of this query would be.
A). Throw error
B). 7
C). 0
D). 1*

87). SELECT 'VIKAS' + 1
--output of this query would be.
A). Throw error*
B). 'VIKAS'
C). VIKAS
D). VIKAS1

88).SELECT 'VIKAS' + '1'
--output of this query would be.
A). Throw error
B). 'VIKAS'
C). VIKAS
D). VIKAS1*

89).SELECT (SELECT 'VIKAS')
--output of this query would be.
A). Throw error
B). 'VIKAS'
C). VIKAS*
D). VIKAS1


90).SELECT SELECT 'VIKAS'
--output of this query would be.
A). Throw error*
B). 'VIKAS'
C). VIKAS
D). VIKAS1


91). SELECT * FROM 'Country'
--output of this query would be.
A). Throw error*
B). Select all data from country table
C). Country
D). Throw error

92). SELECT * FROM Country , EmployeeDetail
--output of this query would be.
A). Throw error
B). Output will be cross join of both tables*
C). Output will be inner join
D). Output will be only Country table data


93). SELECT COUNT(*) + COUNT(*)
--output of this query would be.
A). Throw error
B). 0
C). 1
D). 2*

94). SELECT 'VIKAS' FROM Country
--output of this query would be.
A). Throw error
B). Display one time "VIKAS"
C). Display "VIKAS" as many rows in Country table*
D). Will select country table data

95).SELECT SUM(1+2*3)
--output of this query would be.
A). Throw error
B). 9
C). 7*
D). 6

96). SELECT MAX(1+2*3)
--output of this query would be.
A). Throw error
B). 3
C). 7*
D). 6

97).SELECT MAX(1,3,4)
--output of this query would be.
A).Throw error*
B). 1
C). 3
D). 4

98).SELECT MAX('VIKAS')
--output of this query would be.
A).Throw error
B). 1
C). 2
D). VIKAS*

99).Select Count(SELECT CountryID FROM Country)
--output of this query would be.
A).Throw error*
B). Will display count of country table
C). 0
D). 1

100). SELECT 1 + '1'
--output of this query would be.
A). Throw error
B). 1
C). 2*
D). 11
101). SELECT '1' + 1 
--output of this query would be.
A). Throw error
B). 1
C). 2*
D). 11


102). SELECT NULL + 5
--output of this query would be.
A). Throw error
B). NULL*
C). 5
D). 0


103). SELECT NULL + '1'
--output of this query would be.
A). Throw error
B). NULL*
C). 1
D). 0


104). SELECT 1 WHERE NULL = NULL
--output of this query would be.
A). Throw error
B). NULL
C). 1
D). NOTHING WILL RETURN BY This (0 rows will be returned by this) because the condition is false*


105). SELECT SUM(1)
--output of this query would be.
A). Throw error
B). NULL
C). 1*
D). 0

106). SELECT SUM('1')
--output of this query would be.
A). Throw error*
B). NULL
C). 1
D). 0


107). SELECT SUM(NULL)
--output of this query would be.
A). Throw error*
B). NULL
C). 1
D). 0

108). SELECT 6/0
--output of this query would be.
A). Throw error(Divide by zero error encountered.)*
B). NULL
C). 1
D). 0

109). SELECT 0/0
--output of this query would be.
A). Throw error(Divide by zero error encountered.)*
B). NULL
C). 1
D). 0

110). SELECT 0/9
--output of this query would be.
A). Throw error(Divide by zero error encountered.)
B). NULL
C). 1
D). 0*