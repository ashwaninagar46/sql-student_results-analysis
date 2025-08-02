-- CASE Logic
SELECT name, marks,
    CASE
        WHEN marks >= 90 THEN 'Excellent'
        WHEN marks >= 75 THEN 'Good'
        ELSE 'Average'
    END AS performance
FROM student_results;