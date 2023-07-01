select * from salesman


with result as
(select salesman_id,name,[new york],london,paris from salesman
pivot
(         
               min(commission)
			   for city
			   in ([new york],london,paris)
)
as pivotconvert)



update salesman set city='London' where city in ('san jose','Rome')