/* Write your T-SQL query statement below */
select A.student_id, A.student_name, B.subject_name, count(C.student_id) as attended_exams
from Students as A
cross join Subjects as B
left join Examinations as C
on A.student_id = C.student_id 
    and B.subject_name = C.subject_name
group by A.student_id, A.student_name, B.subject_name
order by A.student_id, B.subject_name;