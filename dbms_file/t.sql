USE college_management_system;

select Semester, Grade , Enrollment_id
from Enrollment
where Semester in
(select Max(semester) as MaxSemester 
from Enrollment);