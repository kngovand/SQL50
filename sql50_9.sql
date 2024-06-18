/* Write your T-SQL query statement below */
select A.machine_id, round(avg(B.timestamp - A.timestamp), 3) as processing_time
from Activity as A
join Activity as B
on A.machine_id = B.machine_id
and A.process_id = B.process_id
and A.timestamp < B.timestamp
group by A.machine_id
