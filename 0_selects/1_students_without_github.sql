--Students without Github--

SELECT id, name, email, cohort_id
FROM students
WHERE github IS NULL
ORDER BY cohort_id;

--Students in a Given Cohort--

SELECT id, name 
FROM students 
WHERE cohort_id = 1
ORDER BY name;

--Total Students in Cohort--

SELECT count(*)
FROM students
WHERE cohort_id = 1 OR cohort_id = 2 OR cohort_id = 3;

--No Contact Details--

SELECT name, id, cohort_id
FROM students
WHERE email IS NULL
OR phone IS NULL;

--Non Gmail Students--

SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
AND phone IS NULL;

--Currently Enrolled--

SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;

--Graduates without Github--

SELECT name, email, phone
FROM students
WHERE end_date IS NOT NULL AND github IS NULL
ORDER BY cohort_id;