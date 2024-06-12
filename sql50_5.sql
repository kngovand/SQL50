select  b.unique_id,
        a.name,
from Employees as A
inner join EmployeeUNI as B
on A.id = B.id