SELECT cohorts.name as cohorts, COUNT(assignment_submissions.id) as total_submissions
FROM assignment_submissions 
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY students.cohort_id, cohorts.name
ORDER BY total_submissions desc;