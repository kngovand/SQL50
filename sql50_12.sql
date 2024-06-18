/* Write your T-SQL query statement below */
select E1.name
from Employee AS E1
inner join Employee as E2
    on E1.id = E2.managerId 
group by E2.managerId 
having count(E2.managerId) >= 5
