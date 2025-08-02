-- GROUP BY and HAVING
SELECT subject, COUNT(*) FROM student_results GROUP BY subject;
SELECT grade, COUNT(*) FROM student_results GROUP BY grade HAVING COUNT(*) > 3;