-- DML Operations
INSERT INTO student_results (student_id, name, subject, marks, grade) VALUES (51, 'Nikita Rawat', 'Math', 88, 'A');
UPDATE student_results SET marks = 92 WHERE student_id = 2;
DELETE FROM student_results WHERE student_id = 51;
UPDATE student_results SET grade = NULL;