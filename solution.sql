-- Lab Program 13
-- Normalize the Student table up to Third Normal Form (3NF).
--
-- Write your solution below.
--
-- Functional Dependencies:
-- StudentID -> StudentName, CourseName
-- CourseName -> FacultyName
-- FacultyName -> DepartmentName
--
-- Requirements:
-- 1. Create normalized tables.
-- 2. Define primary keys.
-- 3. Define foreign keys.
-- 4. Insert sample data.
--
-- Do not modify test.sh or .github/workflows/autograding.yml.

USE CollegeDB;

-- Write your 3NF solution here.
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR2(50),
    DepartmentID INT
);
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR2(50)
);
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR2(50),
    FacultyID INT
);
CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR2(50)
);
CREATE TABLE Enrollment (
    StudentID INT,
    CourseID INT,
    PRIMARY KEY (StudentID, CourseID)
);
