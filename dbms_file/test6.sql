INSERT INTO Student (Student_Id, Student_name, DOB, Student_email, Course_Id) VALUES
(14, 'Priya Malhotra', '2001-02-14', 'pria.malhotra@example.com', 6),
(15, 'Rahul Desai', '2000-10-05', 'rahu.desai@example.com', 7),
(16, 'Ananya Roy', '1999-12-25', 'anana.roy@example.com', 8);

UPDATE Student
SET Student_name = 'Aarav Kuar', Student_email = 'aarav.kumar@example.com'
WHERE Student_Id = 1;

UPDATE Student
SET DOB = '2000-06-15', Course_Id = 9
WHERE Student_Id = 2;

UPDATE Student
SET Student_name = 'Rohan Malhotra', Student_email = 'ohan.malhotra@example.com'
WHERE Student_Id = 3;

UPDATE Student
SET Course_Id = 10, DOB = '2002-01-01'
WHERE Student_Id = 4;