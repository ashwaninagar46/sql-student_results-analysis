-- Advanced Queries
SELECT * FROM student_results ORDER BY marks DESC LIMIT 5;
SELECT name, COUNT(*) FROM student_results GROUP BY name HAVING COUNT(*) > 1;
SELECT COUNT(DISTINCT subject) FROM student_results WHERE marks > 90;
SELECT subject, marks, GROUP_CONCAT(name) FROM student_results GROUP BY subject, marks HAVING COUNT(*) > 1;