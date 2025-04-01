select course_name , course_Id , Credits,
CASE WHEN Credits > (select avg(Credits) from Course)
THEN 'Above Average'
ELSE 'Below Average' 
END AS Credits_Comparison 
from Course;

SELECT * FROM Course;