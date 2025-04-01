use college_management_system;
GO

create view student_academic AS
select s.student_id as rollno, sum(grade)/sum(credits) as sgpa
from Enrollment e, course c, student s
where e.course_id = c.course_id and e.student_id = s.student_id
group by s.student_id, e.semester;
GO

select * from student_academic;
