-- Backup
CREATE TABLE IF NOT EXISTS student_results_backup AS SELECT * FROM student_results WHERE 1=0;
INSERT INTO student_results_backup SELECT * FROM student_results;