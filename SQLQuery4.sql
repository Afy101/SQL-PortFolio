--HOW TO CREATE A TABLE, INSERT VALUES,ALTER,UPDATE, DROP

CREATE TABLE Student_info(Student_id int,
First_Name VARCHAR (20),
Last_Name VARCHAR (20),
Department VARCHAR(20) NOT NULL,
PRIMARY KEY(Student_id)
)

SELECT *
FROM Student_info

ALTER TABLE Student_info ADD Age int
ALTER TABLE Student_info ADD Sex VARCHAR (6)
ALTER TABLE Student_info ADD Tuition int;

-- iNSERTING VALUES

INSERT INTO Student_info VALUES
(2, 'Maria', 'Garcia', 'Statistics', 18, 'Female', 70000),
(3, 'David', 'Smith', 'Biology',19, 'Male', 105000),
(4, 'James', 'Johnson', 'English', 21, 'Male', 75000),
(5, 'Pop', 'Miller', 'Brewing', 18, 'Male', 90000),
(6, 'Davis', 'Jones', 'Surveying', 19, 'Male', 95000),
(7, 'Clark', 'Kent', 'Anatomy', 18, 'Male', 100000),
(8, 'Taylor', 'Rose', 'Theatre Arts', 20, 'Female', 55000),
(9, 'Williams', 'Thread', 'Architecture', 19, 'Male', 80000),
(10, 'Henry', 'Bread', 'PHE', 20, 'Male', 60000),
(11, 'Chike', 'Sun', 'Pschology', 21, 'Male', 95000),
(12, 'Tamuno', 'Bright', 'Statistics', 20, 'Male', 70000),
(13, 'Eliza', 'Sarah', 'Biology', 18, 'Female',105000),
(14, 'Jane', 'Young', 'English', 17, 'Female', 75000),
(15, 'Nancy', 'Ramirez', 'Brewing', 16, 'Female', 90000),
(16, 'Catherine', 'Clark', 'Surveying', 20, 'Female', 95000),
(17, 'Margret', 'Harris', 'Anatomy', 21, 'Female', 100000),
(18, 'Ann', 'Elza', 'Theatre Arts', 23, 'Female', 55000),
(19, 'Light', 'Jude', 'Architecture', 24, 'Male', 80000),
(20, 'Ben', 'Joe', 'PHE', 20, 'Male', 60000),
(21, 'Aron', 'White', 'Psychology', 18, 'Male', 95000),
(22, 'Gates', 'Den', 'Statistics', 19, 'Female', 70000),
(23, 'Martha', 'Regina', 'Biology', 20, 'Female', 105000),
(24, ' Brown', 'Tin', 'English', 18, 'Male', 75000),
(25, 'Wilson', 'Jonathan', ' Brewing', 19, 'Male', 90000),
(26, 'Thomas', 'George', 'Surveying', 21, 'Male', 95000),
(27, 'Sam', 'Wilson', 'Anatomy', 22, 'Male', 100000),
(28, 'Dan', 'Psalm', 'Theatre Arts', 18, 'Male', 55000),
(29, 'Tim', 'Genesis', 'Architecture', 19, 'Male', 80000),
(30, 'Micheal', 'Moon', 'PHE', 20, 'Male', 60000),
(31, 'King', 'George', 'Psychology', 22, 'Male',95000),
(32, 'Han', 'Debra', 'Statistics', 18, 'Female', 70000),
(33, 'Aquila', 'Paul', 'Biology', 19, 'Male', 105000),
(34, 'Jones', 'Smith', 'English', 20, 'Male', 75000),
(35, 'Lopez', 'Jenny', 'Brewing', 21, 'Female', 90000),
(36, 'Andy', 'Bob', 'Surveying', 22, 'Male', 95000),
(38, 'Lewis', 'Walker', 'Anatomy', 18, 'Male', 100000),
(39, 'Lee', 'Chee','PHE', 16, 'Male',60000),
(40, 'Evans', 'Diaz', 'English', 18, 'Male', 75000);



SELECT *
FROM Student_info


CREATE TABLE TUTOR(Tutor_id int,
First_Name VARCHAR(20),
Last_Name VARCHAR(20),
Department VARCHAR(20),
Salary int)

SELECT *
fROM TUTOR

INSERT INTO TUTOR VALUES 
(1,'Igwe', 'Brown', 'Pschology', 100000),
(2, 'Nora', 'Ethan', 'Statistics', 450000),
(3, 'Roses', 'Charity', 'Biology', 500000),
(4, 'James', 'Cooker', 'English', 200000),
(5, 'Coaster', 'Red', 'Brewing', 140000),
(6, 'Bright', 'Saturn', 'Surveying', 350000),
(7, 'Light', 'Jackson', 'Anatomy', 300000),
(8, 'James', 'Moon', 'Theatre Arts', 250000),
(9, 'Eve', 'Herbert', 'Architecture', 200000),
(10, 'Onyi', 'Adams', 'PHE',80000);


--Aggregating Data

SELECT COUNT(*)
FROM TUTOR

SELECT Sex, Count (Sex) AS Count_Sex
FROM Student_info
WHERE AGE >16
GROUP BY SEX
ORDER BY Sex

Select MAX(Tuition)
FROM Student_info

Select MIN(Tuition)
FROM Student_info

Select AVG(Tuition)
FROM Student_info


-- Wildcard
--Any student whose last name end with 's'

Select*
FROM Student_info
WHERE Last_Name like '%S'

--Any student whose last name begins with an 's'

Select*
FROM Student_info
WHERE Last_Name like 's%'

--Fitering and sorting

--(Where Statement : =, <>, And, Like, Not null, In)

SELECT Student_id, First_Name, Department
FROM Student_info
WHERE Department <> 'Psychology'

Select *
from Student_info
Where Age <=20 or Sex = 'Male'

Select *
from Student_info
Where Department = 'English' and Sex = 'Female'

Select *
From Student_info
Where Tuition >75000 
ORDER BY Tuition DESC


Select Student_id, First_Name, Department, Age
From Student_info
where Age between 18 and 20
ORDER BY AGE ASC


SELECT Distinct Department, AVG(Tuition) AS Avg_Tuition
From Student_info
Group by Department


SELECT*
FROM Student_info
WHERE First_Name IN ('Maria', 'David')

--Join
Select *
from Student_info s
inner join TUTOR t
on s.Student_id = t.Tutor_id


Select S.Student_id, s.First_Name, s.Department
from Student_info s
inner join TUTOR t
on s.Department = t.Department
where t.Last_Name = 'Charity' AND t.Department = 'Biology'


Select S.Student_id, s.First_Name, s.Department,s.Age,s.Sex 
from Student_info s
inner join TUTOR t
on s.Department = t.Department
where t.First_Name = 'Bright' AND t.Department = 'Surveying'


Select S.Student_id, s.First_Name, s.Department,s.Age,s.Sex 
from Student_info s
inner join TUTOR t
on s.Department = t.Department
where t.First_Name = 'Coaster' and t.Salary > 100000


--GROUPING: ORDER BY

SELECT *
FROM Student_info 
ORDER BY AGE DESC, Department ASC

SELECT *
FROM Student_info 
ORDER BY RAND() 

SELECT *
FROM TUTOR
WHERE TUTOR_ID >2 ORDER BY SALARY DESC


--left join
Select *
from Student_info s
Left join TUTOR t
on s.Student_id = t.Tutor_id


--CASE STATEMENT

--Student level based on Age
Select First_Name, Last_Name, Age,
CASE
	WHEN Age >=21 then 'Old'
	WHEN Age Between 18 and 20 then 'Young'
	Else 'Baby'
End
from Student_info 
where Age is not null
order by Age

-- Tutor Level Based on Salary

SELECT Tutor_id, First_Name, Department, Salary,
CASE
	WHEN Salary >= 400000 then 'Experienced'
	WHEN Salary between 200000 and 390000 then 'Mid-Level'
	Else 'Graduate Trainee'
End
FROM TUTOR
order by Salary


--SALARY INCREMENT
SELECT First_Name, Department, Salary,
CASE
	WHEN Department = 'Pschology' THEN Salary  + (Salary *.10)
	WHEN Department = 'Statistics' THEN Salary + (Salary *.05)
	WHEN Department = 'Biology' THEN Salary + (Salary *.05)
	WHEN Department = 'Eng;ish'THEN Salary + (Salary *.05)
	Else Salary + (Salary*.03) 
End AS SalaryAfterRaise
from TUTOR 	
ORDER BY Salary ASC


SELECT department,COUNT (student_id)
FROM Student_info
group by Department



UPDATE Student_info 
SET Department = 'Psychology'
WHERE Student_id = 11 AND First_Name = 'Chike'


--STRING FUNCTION: LTRIM

SELECT Department, TRIM(Department) As Department_Trim
FROM Student_info

SELECT*
FROM Student_info


--NESTED QUERIES

--Subquery in select

SELECT Tutor_id, Salary, (SELECT AVG(SALARY) FROM TUTOR) AS ALL_AVG_SALARY
FROM TUTOR

-- How to do it with Partition by

SELECT Tutor_id, Salary,  AVG(SALARY) over() AS ALL_AVG_SALARY
FROM TUTOR



