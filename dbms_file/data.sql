-- Insert data into Department table
INSERT INTO Department (Department_Id, Department_name, HOD) VALUES
(1, 'Computer Science', 'Dr. John Doe'),
(2, 'Mathematics', 'Dr. Jane Smith'),
(3, 'Physics', 'Dr. Albert Newton'),
(4, 'Chemistry', 'Dr. Marie Curie'),
(5, 'Biology', 'Dr. Charles Darwin'),
(6, 'History', 'Dr. Herodotus'),
(7, 'Geography', 'Dr. David Livingstone'),
(8, 'English', 'Dr. William Shakespeare'),
(9, 'Economics', 'Dr. Adam Smith'),
(10, 'Philosophy', 'Dr. Socrates');

-- Insert data into Teacher table
INSERT INTO Teacher (Teacher_Id, Teacher_name, Email, Phone_no, Department_Id) VALUES
(1, 'Alice Brown', 'alice@example.com', '1234567890', 1),
(2, 'Bob Johnson', 'bob@example.com', '2345678901', 2),
(3, 'Charlie Davis', 'charlie@example.com', '3456789012', 3),
(4, 'Diana Evans', 'diana@example.com', '4567890123', 4),
(5, 'Ethan Harris', 'ethan@example.com', '5678901234', 5),
(6, 'Fiona Clark', 'fiona@example.com', '6789012345', 6),
(7, 'George White', 'george@example.com', '7890123456', 7),
(8, 'Hannah Lee', 'hannah@example.com', '8901234567', 8),
(9, 'Ian King', 'ian@example.com', '9012345678', 9),
(10, 'Jackie Martin', 'jackie@example.com', '0123456789', 10);

-- Insert data into Course table
INSERT INTO Course (Course_Id, Course_name, Credits, Department_Id, Teacher_Id) VALUES
(1, 'Introduction to Programming', 4, 1, 1),
(2, 'Calculus I', 3, 2, 2),
(3, 'Physics I', 4, 3, 3),
(4, 'Organic Chemistry', 4, 4, 4),
(5, 'General Biology', 3, 5, 5),
(6, 'World History', 3, 6, 6),
(7, 'Physical Geography', 3, 7, 7),
(8, 'English Literature', 3, 8, 8),
(9, 'Microeconomics', 3, 9, 9),
(10, 'Introduction to Philosophy', 3, 10, 10);

-- Inserting random data into the Student table
INSERT INTO Student (Student_Id, Student_name, DOB, Student_email, Course_Id) VALUES
(1, 'Aarav Sharma', '2000-01-15', 'aarav.sharma@example.com', 1),
(2, 'Meera Singh', '1999-05-10', 'meera.singh@example.com', 2),
(3, 'Rohan Gupta', '2001-03-22', 'rohan.gupta@example.com', 3),
(4, 'Isha Patel', '2000-07-19', 'isha.patel@example.com', 4),
(5, 'Aryan Verma', '2000-11-30', 'aryan.verma@example.com', 5),
(6, 'Nina Chawla', '2001-06-12', 'nina.chawla@example.com', 1),
(7, 'Kunal Mehta', '1999-09-25', 'kunal.mehta@example.com', 2),
(8, 'Sanya Kohli', '2000-04-17', 'sanya.kohli@example.com', 3),
(9, 'Aditya Jain', '2001-08-08', 'aditya.jain@example.com', 4),
(10, 'Tara Sen', '2000-12-01', 'tara.sen@example.com', 5);

-- Inserting random data into the Enrollment table
INSERT INTO Enrollment (Enrollment_Id, Student_Id, Course_Id, Semester, Grade) VALUES
(1, 1, 1, 1, 'A'),
(2, 2, 2, 2, 'B'),
(3, 3, 3, 1, 'C'),
(4, 4, 4, 2, 'A'),
(5, 5, 5, 1, 'B'),
(6, 6, 1, 2, 'C'),
(7, 7, 2, 1, 'A'),
(8, 8, 3, 2, 'B'),
(9, 9, 4, 1, 'C'),
(10, 10, 5, 2, 'A');