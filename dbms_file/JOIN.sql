using college_management_system;

-- This script demonstrates how to join two tables in SQL.
-- It retrieves student names and their corresponding course names from the students and courses tables.
select s.Student_name, e.Semester, e.Grade
from Student AS s
FULL OUTER JOIN Enrollment AS e ON
s.Student_id = e.Student_id;