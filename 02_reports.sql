USE StudentPortalDB;
GO


SELECT Department, COUNT(*) AS TotalStudents
FROM Students
GROUP BY Department;


SELECT Batch, AVG(Marks) AS AvgMarks
FROM Students
GROUP BY Batch;

SELECT Department, SUM(FeesPaid) AS TotalFees
FROM Students
GROUP BY Department;

SELECT Department, AVG(Marks) AS AvgMarks
FROM Students
GROUP BY Department
HAVING AVG(Marks) > 70;