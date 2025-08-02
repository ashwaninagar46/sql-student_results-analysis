# SQL Practice Set – 50 Questions in English, based on your student_results table (with columns like student_id, name, subject, marks, grade).
# A. SELECT, WHERE, ORDER BY (Basics)
#1. Show all records from the student_results table.
SELECT * FROM Student_results;

#2. Display the names of students who studied 'Math'.
Select name,subject from student_results
where subject ="math";

#3. Show names and marks of students who scored more than 80.
SELECT NAME,MARKS FROM STUDENT_RESULTS
WHERE MARKS >80;

#4.List all students in descending order of marks.
SELECT * FROM STUDENT_RESULTS 
ORDER BY MARKS DESC;

#5.Find students with grade 'A' and subject 'Science'.
SELECT NAME,SUBJECT,GRADE FROM STUDENT_RESULTS
WHERE SUBJECT ="SCIENCE" AND GRADE ="A";

#6. Find students who scored between 70 and 90.
SELECT * FROM STUDENT_RESULTS
WHERE MARKS BETWEEN 70 AND 90;

#7. Find students whose names start with the letter 'A'.
SELECT * FROM STUDENT_RESULTS
WHERE NAME LIKE "%A%";

#8. Find names where the second letter is 'a'.
SELECT * from student_results
where name like "_a%";

#9. Find students where the grade is NULL.
select name,grade from student_results
where grade = null;

#10. Display students who are not from 'History' subject.
select * from student_results
where not subject = "history";

 # B. AGGREGATE FUNCTIONS
# 1. Count the total number of students.
select count(*) from student_results;

#2. Find the total sum of marks.
select sum(marks) from student_results;

#3.Find the average marks for each subject.
select avg(marks) from student_results;

#4.Show the minimum and maximum marks.
select max(marks),min(marks) from student_results;

#5. Count how many students got grade 'B'.
select count(grade) from student_results
where grade="b";

# C. GROUP BY, HAVING
#1.Count how many students are in each subject.
select subject, count(*) from student_results
group by subject;

#2.Calculate the average marks per subject.
select subject, avg(marks) from student_results
group by subject;

#3. Show only grades that have more than 3 students.
select grade,count(*) from student_results
group by grade
having count(*) >3;

#4. Which subject has the highest average marks?
select subject, avg(marks) from student_results
group by subject
order by avg(marks) desc
limit 1;
 
#5. Which grade has the lowest number of students?
SELECT grade, COUNT(*) AS student_count FROM student_results
GROUP BY grade
ORDER BY student_count ASC
LIMIT 1;

 #D. SUBQUERIES
#1.Find the name of the student with the highest marks.
SELECT * FROM student_results
ORDER BY marks DESC
LIMIT 1;

#2.who scored above the average marks.
SELECT name, marks
FROM student_results
WHERE marks > (SELECT AVG(marks) FROM student_results);


#3.List subjects where someone scored above 90.
select DISTINCT name,subject from student_results
where marks>90;

#4.Find the name of the student with the lowest marks.
SELECT name, marks
FROM student_results
WHERE marks = (SELECT MIN(marks) FROM student_results);

#5.Show students whose marks are higher than all grade 'C' students
select name,marks from student_results
where marks > ALL (select marks from student_results where grade = "c");

select name,marks from student_results
where grade="c"
order by marks desc;

 #G. CASE, IF, LOGIC
#1.Use CASE to label marks: 'Excellent' (90+), 'Good' (75+), 'Average' (else).
SELECT name, marks,
    CASE
        WHEN marks >= 90 THEN 'Excellent'
        WHEN marks >= 75 THEN 'Good'
        ELSE 'Average'
    END AS performance
FROM student_results;

#2.Use CASE to mark each student as 'Pass' (>=40) or 'Fail'.
SELECT name, marks,
    CASE
        WHEN marks >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS result
FROM student_results;


#3.Show Pass/Fail result per subject (e.g. Math >=70 is pass).
SELECT name, subject, marks,
    CASE
        WHEN subject = 'Math' AND marks >= 70 THEN 'Pass'
        WHEN subject = 'Science' AND marks >= 60 THEN 'Pass'
        WHEN subject NOT IN ('Math', 'Science') AND marks >= 50 THEN 'Pass'
        ELSE 'Fail'
    END AS subject_result
FROM student_results;

#H. DML OPERATIONS
#1.Insert a new student record into the table.
INSERT INTO student_results (student_id, name, subject, marks, grade)
VALUES (51, 'Nikita Rawat', 'Math', 88, 'A');

#2.Update the marks of a specific student.
UPDATE student_results
SET marks = 92
WHERE student_id = 2;

#3.Delete a student by student_id.
SET SQL_SAFE_UPDATES = 0;
DELETE FROM student_results
WHERE student_id = 51;

#4.Set grade = NULL for all students.
UPDATE student_results
SET grade = NULL;

 #I. ADVANCED / BONUS
#1.Show the top 5 scoring students
select * from student_results
order by marks desc
limit 5;

#2.Are there any duplicate student names?
SELECT name, COUNT(*) AS count FROM student_results
GROUP BY name
HAVING COUNT(*) > 1;

#3.How many subjects had scores above 90?
SELECT COUNT(DISTINCT subject) AS subjects_above_90 FROM student_results
WHERE marks > 90;

#4.Which students scored the same marks in the same subject?
SELECT subject, marks, GROUP_CONCAT(name) AS students
FROM student_results
GROUP BY subject, marks
HAVING COUNT(*) > 1;


#5.Who is the top scorer in each subject?
SELECT r.*
FROM student_results r
JOIN (
    SELECT subject, MAX(marks) AS max_marks
    FROM student_results
    GROUP BY subject
) AS max_results
ON r.subject = max_results.subject AND r.marks = max_results.max_marks;

#6.Who scored the 2nd highest overall?
SELECT name, marks FROM student_results
ORDER BY marks DESC
LIMIT 1 OFFSET 1;

#7.Which subjects have only passing students?
SELECT subject FROM student_results
GROUP BY subject
HAVING MIN(marks) >= 40;

#8.Show the grade-wise percentage of students.
SELECT grade,COUNT(*) * 100.0 / (SELECT COUNT(*) FROM student_results) AS percentage
FROM student_results
GROUP BY grade;

#8.Backup the student_results table using INSERT INTO SELECT.
CREATE TABLE IF NOT EXISTS student_results_backup AS
SELECT * FROM student_results
WHERE 1=0;  -- creates structure only

INSERT INTO student_results_backup
SELECT * FROM student_results;

												---             				THANK YOU 							 ----

