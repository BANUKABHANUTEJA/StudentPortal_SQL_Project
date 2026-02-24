USE StudentPortalDB;
GO

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Batch INT,
    Marks INT,
    Attendance INT,
    FeesPaid INT
);

BEGIN TRANSACTION;


INSERT INTO Students VALUES
(101,'Rahul','CSE',2023,85,90,50000),
(102,'Anjali','ECE',2023,78,88,50000),
(103,'Kiran','CSE',2022,65,70,45000),
(104,'Meena','IT',2022,92,95,55000),
(105,'Arjun','EEE',2023,55,60,40000);

COMMIT;
GO


BEGIN TRANSACTION;

UPDATE Students
SET Marks = 80, Attendance = 85
WHERE StudentID = 103;

UPDATE Students
SET Marks = 60
WHERE StudentID = 105;

UPDATE Students
SET Attendance = 92
WHERE StudentID = 102;

COMMIT;
GO


BEGIN TRANSACTION;

INSERT INTO Students VALUES (106,'Rahul','CSE',2023,85,90,50000);

DELETE FROM Students
WHERE StudentID = 106 AND Name='Rahul';

COMMIT;
GO



BEGIN TRANSACTION;

UPDATE Students
SET Marks = 0;   

ROLLBACK;
GO