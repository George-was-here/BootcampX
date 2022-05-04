SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, COUNT(assistance_requests) as total_assistances
FROM assistance_requests
JOIN students on students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
JOIN teachers on teachers.id = assistance_requests.teacher_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher; 