use college_management_system;
select * from student;
select * from Enrollment;
alter table enrollment add grade int;
update Enrollment set grade = 6 where grade IS NULL;
drop view show;
GO
create VIEW show as select s.student_id as roll_no , e.Semester , count(*) as no_of_courses, sum(grade)/sum(credits) as SGPA 
from enrollment e,course c , student s where e.Course_Id=c.Course_Id and e.Student_Id=s.Student_Id and s.Course_Id=c.Course_Id and s.Course_Id=c.Course_Id
group by s.Student_Id,e.Semester;
GO

select * from show;
select * from Enrollment;
select * from course;
select * from student;
select * from log_record;