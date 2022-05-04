SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM assistance_requests 
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN assignments ON assignments.id = assistance_requests.assignment_id
GROUP BY teachers.name, students.name, assignments.name, assistance_requests.completed_at, assistance_requests.started_at
ORDER BY duration asc;