CREATE TABLE marksheet (
    student_id INT,
    name VARCHAR(50),
    subject VARCHAR(30),
    marks INT,
    grade CHAR(1)
);

-- Insert  rows of sample data
INSERT INTO marksheet (student_id, name, subject, marks, grade) VALUES
(1, 'Amit Sharma', 'Math', 85, 'A'),
(2, 'Riya Gupta', 'Science', 72, 'B'),
(3, 'Vikram Singh', 'English', 90, 'A'),
(4, 'Sneha Verma', 'History', 66, 'C'),
(5, 'Arjun Mehta', 'Math', 58, 'D'),
(6, 'Pooja Rani', 'Science', 80, 'A'),
(7, 'Rohan Das', 'English', 77, 'B'),
(8, 'Kavita Nair', 'History', 69, 'C'),
(9, 'Manish Tiwari', 'Math', 91, 'A'),
(10, 'Priya Sen', 'Science', 73, 'B'),
(11, 'Deepak Yadav', 'English', 61, 'C'),
(12, 'Sonal Kaur', 'History', 82, 'B'),
(13, 'Rakesh Jain', 'Math', 55, 'D'),
(14, 'Anjali Patil', 'Science', 88, 'A'),
(15, 'Suresh Rathi', 'English', 70, 'B'),
(16, 'Neha Joshi', 'History', 92, 'A'),
(17, 'Aman Khan', 'Math', 79, 'B'),
(18, 'Divya Malhotra', 'Science', 67, 'C'),
(19, 'Rahul Mishra', 'English', 64, 'C'),
(20, 'Meena Kumari', 'History', 75, 'B'),
(21, 'Tushar Goel', 'Math', 83, 'A'),
(22, 'Priti Sahu', 'Science', 71, 'B'),
(23, 'Karan Arora', 'English', 59, 'D'),
(24, 'Nisha Dubey', 'History', 87, 'A'),
(25, 'Alok Tripathi', 'Math', 62, 'C'),
(26, 'Geeta Rathi', 'Science', 77, 'B'),
(27, 'Mohit Sinha', 'English', 68, 'C'),
(28, 'Shruti Lamba', 'History', 89, 'A'),
(29, 'Nitin Rawat', 'Math', 74, 'B'),
(30, 'Tina Desai', 'Science', 69, 'C'),
(31, 'Harsh Kapoor', 'English', 80, 'A'),
(32, 'Reena Sharma', 'History', 60, 'D'),
(33, 'Varun Bhatt', 'Math', 76, 'B'),
(34, 'Pallavi Nair', 'Science', 85, 'A'),
(35, 'Sanjay Kumar', 'English', 66, 'C'),
(36, 'Isha Saxena', 'History', 78, 'B'),
(37, 'Yuvraj Singh', 'Math', 81, 'A'),
(38, 'Ritika Rao', 'Science', 72, 'B'),
(39, 'Dinesh Babu', 'English', 63, 'C'),
(40, 'Ankita Ghosh', 'History', 91, 'A'),
(41, 'Ravi Prasad', 'Math', 70, 'B'),
(42, 'Mitali Jain', 'Science', 74, 'B'),
(43, 'Arti Vyas', 'English', 87, 'A'),
(44, 'Siddharth Yadav', 'History', 68, 'C'),
(45, 'Lakshmi Pillai', 'Math', 90, 'A'),
(46, 'Sameer Khan', 'Science', 65, 'C'),
(47, 'Bhavna Joshi', 'English', 58, 'D'),
(48, 'Naveen Rao', 'History', 79, 'B'),
(49, 'Swati Das', 'Math', 82, 'A'),
(50, 'Vivek Anand', 'Science', 60, 'D');

#1.Display all student records.
SELECT * FROM MARKSHEET;

#2.Display only names and subjects of all students.
SELECT NAME,SUBJECT FROM MARKSHEET;

#3.Display all students ordered by name alphabetically.
SELECT NAME FROM MARKSHEET
ORDER BY NAME ASC;

#4.Display students who studied 'Math'.
SELECT NAME,SUBJECT FROM MARKSHEET
WHERE SUBJECT ="MATH";

#5.Display students who scored more than 80 marks.
SELECT * FROM MARKSHEET
WHERE MARKS > 80;

#6.Display students who got grade 'A'.
SELECT * FROM MARKSHEET
WHERE GRADE = "A";

#7. Display students who got grade 'C' or 'D'.
SELECT * FROM MARKSHEET
WHERE GRADE BETWEEN "C" AND "D";

#8.Display students whose names contain letter 'a'.
SELECT * FROM MARKSHEET
WHERE NAME LIKE "%a%";

#9.Display student with the highest marks.
Select * from marksheet 
WHERE MARKS = (SELECT MAX(marks) FROM marksheet);

SELECT * FROM marksheet
ORDER BY marks DESC
LIMIT 5;

#10.Display student with the lowest marks.
SELECT * FROM MARKSHEET
WHERE MARKS = (SELECT MIN(MARKS) FROM MARKSHEET);

#11.List top 5 students with highest marks.
SELECT * FROM MARKSHEET
ORDER BY MARKS DESC
LIMIT 5; 

#12.List students who scored between 70 and 90.
SELECT * FROM MARKSHEET
WHERE MARKS BETWEEN 70 and 90;

#13.List students who scored less than 60.alter
SELECT * FROM MARKSHEET 
WHERE MARKS <60;

#14.List names of students who studied 'Science' ordered by marks.
SELECT * FROM MARKSHEET
WHERE SUBJECT = "SCIENCE"
ORDER BY MARKS ASC;

#15.List students who scored marks in ascending order.
SELECT * FROM MARKSHEET
ORDER BY MARKS ASC;

#16. List students who scored more than 60 and got 'A' grade.
SELECT * FROM MARKSHEET
WHERE MARKS > 60 AND GRADE ="A";

#17.List names, marks, and grades of students with >60 marks and grade A.
SELECT NAME,MARKS,GRADE FROM MARKSHEET
WHERE MARKS > 60 AND GRADE ="A";

#18. List students who studied 'Math' and scored <60.
SELECT * FROM MARKSHEET
WHERE SUBJECT="MATH" AND MARKS <60;

#19. List students who studied Math or Science and scored <60.
SELECT * FROM MARKSHEET
WHERE SUBJECT IN ("SCIENCE", "MATH") AND MARKS <60;

#20. List students who scored more than 90.
SELECT * FROM MARKSHEET
WHERE MARKS > 90;

#21–30: GROUP BY, COUNT, SUM, AVG
#21. Count total number of students.
SELECT COUNT(*) FROM MARKSHEET;

#22. Count how many students got grade A.
SELECT COUNT(GRADE) FROM MARKSHEET
WHERE GRADE="A";

#23. Group students by grade and count.
SELECT GRADE,COUNT(*) AS MARKSS FROM MARKSHEET
GROUP BY GRADE;

#24. Group by subject and show average marks.
SELECT SUBJECT, AVG(MARKS) FROM MARKSHEET
GROUP BY SUBJECT;

#25. Group by subject and show total marks.
SELECT SUBJECT,SUM(MARKS)  FROM MARKSHEET
GROUP BY SUBJECT;

#26. Show subjects where average marks > 70.
SELECT SUBJECT, AVG(MARKS) FROM MARKSHEET 
GROUP BY SUBJECT
HAVING AVG(MARKS)  >70;

#27. Show grades with more than 10 students.
SELECT grade, COUNT(*) FROM MARKSHEET
GROUP BY grade
HAVING COUNT(*) >10;

#28. Find total marks scored by all students.
select sum(marks) from marksheet;

#29. Show subject-wise highest mark.
Select subject, max(marks) from marksheet
group by subject
having max(marks);

#30. Show subject-wise student count.
Select subject, count(*) from marksheet
group by subject;

 #31–40: Logical Conditions & IN, NOT IN
#31. List students who did NOT study Math.
SELECT * FROM MARKSHEET 
WHERE  NOT SUBJECT="MATH";

#32. List students who studied either History or Math.
SELECT * FROM MARKSHEET
WHERE SUBJECT IN ("HISTORY", "MATH");

#33. List students with grade A or B.
SELECT * FROM MARKSHEET
WHERE GRADE IN  ("A", "B");

#34. List students who scored between 50 and 60.
SELECT * FROM MARKSHEET
WHERE MARKS BETWEEN 50 AND 60;

#35. List students whose subject is NOT Science.
SELECT * FROM MARKSHEET
WHERE NOT SUBJECT= "SCIENCE";

#36. List students whose marks are NULL.
SELECT * FROM MARKSHEET
WHERE MARKS IS NULL;

#37. List all students with non-null marks.
SELECT * FROM MARKSHEET
WHERE NOT MARKS IS  NULL;

#38. List names of students in 'English' subject.
SELECT * FROM MARKSHEET
WHERE SUBJECT ="ENGLISH";

#39. List students with name length > 10.
SELECT * FROM MARKSHEET
WHERE LENGTH(NAME) > 10;

#40. List students whose name starts with 'S'.
 SELECT * FROM MARKSHEET
 WHERE NAME LIKE "%S%";
 
 #41–50: Subqueries & Advanced
#41. Find average marks of students with grade B.
SELECT GRADE, AVG(MARKS) FROM MARKSHEET
WHERE GRADE = "B";

#42. List students whose marks > average marks.
SELECT AVG(MARKS) FROM MARKSHEET;
SELECT * FROM marksheet WHERE marks > (SELECT AVG(marks) FROM marksheet);

#43. List second highest mark from table.
SELECT DISTINCT marks FROM marksheet ORDER BY marks DESC LIMIT 1 OFFSET 1;

#44. List students who got the second highest mark.
SELECT * FROM marksheet 
WHERE marks = (SELECT DISTINCT marks FROM marksheet ORDER BY marks DESC LIMIT 1 OFFSET 1);

#45. List students who scored same as top scorer.
SELECT * FROM MARKSHEET
WHERE MARKS =(SELECT MAX(MARKS) FROM MARKSHEET);

#46. List grades with average marks > 75.
SELECT GRADE, AVG(MARKS) FROM MARKSHEET
GROUP BY GRADE 
HAVING AVG(MARKS) >75;

#47. List subjects with less than 15 students.
SELECT subject, COUNT(*) 
FROM marksheet 
GROUP BY subject 
HAVING COUNT(*) < 15;

#48. List name, subject, and grade of students ordered by marks DESC.
SELECT NAME,SUBJECT,GRADE,MARKS FROM MARKSHEET
ORDER BY MARKS DESC;


#49. Count of students for each subject having at least 3 students.
SELECT SUBJECT,COUNT(*) FROM MARKSHEET
GROUP BY SUBJECT
HAVING COUNT(*) >= 3;

#50. List all students whose grade is same as any student who scored more than 85.
SELECT * FROM MARKSHEET
WHERE GRADE IN (SELECT DISTINCT grade FROM marksheet WHERE marks > 85);

#51. Show student names in uppercase.
SELECT UPPER(NAME) FROM MARKSHEET;

#52. Show student names in lowercase.
SELECT LOWER(NAME) FROM MARKSHEET;

#53. Show length of each student’s name.
SELECT NAME, LENGTH(NAME) FROM MARKSHEET;

#54. How do you get average marks subject-wise?
SELECT SUBJECT,AVG(MARKS) FROM MARKSHEET
GROUP BY SUBJECT;

#55.How many students got each grade?
SELECT GRADE, COUNT(*) FROM MARKSHEET
GROUP BY GRADE;

#56. List students who scored more than the average marks.
SELECT * FROM marksheet WHERE marks > (SELECT AVG(marks) FROM marksheet);

#57.Find the second highest marks.
SELECT DISTINCT marks FROM marksheet ORDER BY marks DESC LIMIT 1 OFFSET 1;

#58.Show students with duplicate marks.
SELECT MARKS, COUNT(MARKS) FROM MARKSHEET
GROUP BY MARKS
HAVING COUNT(MARKS) >1;

#59.Which subject has the most students?
SELECT SUBJECT, COUNT(*) FROM MARKSHEET
GROUP BY SUBJECT
ORDER BY SUBJECT DESC
LIMIT 1;

#60.Which grade has the highest average marks?
SELECT GRADE, AVG(MARKS) FROM MARKSHEET
GROUP BY GRADE
ORDER BY GRADE  DESC
LIMIT 1 ;

#61.Get total marks obtained by all students.
SELECT SUM(MARKS) FROM MARKSHEET;

#62.Find students who scored exactly same as top scorer.
SELECT * FROM marksheet
WHERE marks = (SELECT MAX(marks) FROM marksheet);

#63.FIND SUBJECT SCIENCE RECORDS.
SELECT * FROM marksheet
WHERE subject = 'Science';

#64.SCINCE NAME STUDENT ASCENDING ORDER.
SELECT name FROM marksheet
WHERE subject = 'Science'
ORDER BY MARKS ASC;

#65.STUDENT MARKS ASC ORDER.
SELECT * FROM MARKSHEET
ORDER BY MARKS ASC;

#66.STUDNET MARKS >60 AND ASC ORDER.
SELECT * FROM marksheet
WHERE MARKS > 60
ORDER BY MARKS ASC;

#67.STUDENT MARKS > 60 AND GRADE A COUNT RECORDS.
SELECT COUNT(*) AS a_grade_above_60
FROM marksheet
WHERE marks > 60 AND grade = 'A';

#68.List names, marks, and grades of students who scored more than 60 and have grade 'A'.
SELECT name, marks, grade
FROM marksheet
WHERE marks > 60 AND grade = 'A'
ORDER BY marks ASC;

#68.List names and marks of students scoring between 60 and 90.
select NAME,MARKS FROM MARKSHEET
WHERE MARKS BETWEEN 60 AND 90
ORDER BY MARKS ASC;

#69.Display students who scored less than 60 marks.
SELECT * FROM marksheet WHERE marks < 60;

#70.Count how many students got each grade.
SELECT grade, COUNT(*) AS total_students
FROM marksheet
GROUP BY grade;

#71.Display students who studied Science and scored more than 80.
SELECT * FROM marksheet
WHERE subject = 'Science' AND marks > 80;

#72.Show average marks per subject.
SELECT subject, AVG(marks) AS average_marks
FROM marksheet
GROUP BY subject;

#73.Show names, subjects, and marks for students who studied Math and scored less than 60.
SELECT NAME,SUBJECT, MARKS FROM MARKSHEET
WHERE SUBJECT = "MATH" AND MARKS <60;

#74.Calculate total marks of all students.
SELECT SUM(MARKS) FROM MARKSHEET;

#75.Show total marks of each subject (Math & Science).
SELECT subject, SUM(marks) AS total_marks
FROM marksheet
WHERE subject IN ('Math', 'Science')
GROUP BY subject;

#76.Show students who scored more than 90.
SELECT * FROM MARKSHEET
WHERE MARKS > 90;

#77.Show students who studied either History or Math.
SELECT * FROM MARKSHEET
WHERE SUBJECT="HISTORY" OR SUBJECT="MATH";

#78.Show students who did not study Math.
SELECT * FROM MARKSHEET
WHERE NOT SUBJECT ="MATH";

#79.Count number of students for each grade.
SELECT grade, COUNT(*) AS total_students
FROM marksheet
GROUP BY grade;

#80.Show average marks per subject.
SELECT subject, AVG(marks) AS avg_marks
FROM marksheet
GROUP BY subject;

#81.Show grades where more than 10 students are present.
SELECT grade, COUNT(*) AS total_students
FROM marksheet
GROUP BY grade
HAVING COUNT(*) > 10;

#82.Show total marks per subject.
SELECT subject, SUM(marks) AS total_subject_marks
FROM marksheet
GROUP BY subject;

#83.Show all students who studied Math.
SELECT * FROM marksheet
WHERE SUBJECT="MATH";

#84.Show students whose marks are NULL.
select name,subject, grade from marksheet
where marks is null;

#85.Show students scoring between 70 and 90.
SELECT * FROM MARKSHEET	
where marks BETWEEN 70 AND 90;

#86.TOTAL STUDENNT FINDS COUNT GRADES RECORDS.
SELECT grade, COUNT(*) AS total_students
FROM marksheet
GROUP BY grade;


#87.Show students who got grade A.
SELECT * FROM MARKSHEET 
WHERE GRADE ="A";

#88.Count students in each subject.
SELECT SUBJECT,COUNT(*) FROM MARKSHEET
GROUP BY SUBJECT; 

#89.Show students from Math or Science subjects who scored less than 60.
SELECT NAME,SUBJECT,MARKS FROM MARKSHEET
WHERE  SUBJECT IN ("MATH","SCIENCE") AND MARKS < 60;

#90.DESINCT USAGES
SELECT DISTINCT subject FROM marksheet;
SELECT DISTINCT grade FROM marksheet;
SELECT DISTINCT subject, grade FROM marksheet;
SELECT COUNT(DISTINCT subject) FROM marksheet;
SELECT DISTINCT subject FROM marksheet ORDER BY subject ASC;


													#THANK YOU 
