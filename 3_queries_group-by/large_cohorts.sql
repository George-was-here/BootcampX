SELECT cohorts.name as cohort_name, COUNT(students.id) as student_count
FROM students JOIN cohorts ON cohorts.id = cohort_id  
GROUP BY cohorts.name
HAVING COUNT(students.id) >= 18
ORDER BY student_count;