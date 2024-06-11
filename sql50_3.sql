/* Write your T-SQL query statement below */

--country is big if:
--area < 3000000 OR population < 25000000
--print: name, population, and area

select [name], [population], area from World nolock
where area >= 3000000 
    or population >= 25000000