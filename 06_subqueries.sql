-- Subqueries
SELECT * FROM student_results ORDER BY marks DESC LIMIT 1;
SELECT name, marks FROM student_results WHERE marks > (SELECT AVG(marks) FROM student_results);