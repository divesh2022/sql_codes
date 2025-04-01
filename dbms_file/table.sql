-- create database
create database college_management_system;

-- use the database
use college_management_system;

-- create table with integrity constraints

create table Department (
    Department_Id INT PRIMARY KEY,
    Department_name VARCHAR(100),
    HOD VARCHAR(100)
);

create table Teacher (
    Teacher_Id INT PRIMARY KEY,
    Teacher_name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone_no VARCHAR(15),
    Department_Id INT,
    FOREIGN KEY(Department_Id) REFERENCES Department(Department_Id)
);

create table Course (
    Course_Id INT PRIMARY KEY,
    Course_name VARCHAR(100),
    Credits INT,
    Department_Id INT,
    Teacher_Id INT,
    FOREIGN KEY(Department_Id) REFERENCES Department(Department_Id),
    FOREIGN KEY(Teacher_Id) REFERENCES Teacher(Teacher_Id)
);

create table Student (
    Student_Id INT PRIMARY KEY,
    Student_name VARCHAR(100),
    DOB DATE,
    Student_email VARCHAR(100) UNIQUE,
    Course_Id INT,
    FOREIGN KEY(Course_Id) REFERENCES Course(Course_Id)
);

create table Enrollment (
    Enrollment_Id INT,
    Student_Id INT,
    Course_Id INT,
    Semester INT,
    Grade CHAR(2),
    FOREIGN KEY(Student_Id) REFERENCES Student(Student_Id),
    FOREIGN KEY(Course_Id) REFERENCES Course(Course_Id)
);