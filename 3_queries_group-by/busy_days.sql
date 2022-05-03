SELECT day, COUNT(day) as total_assignments
FROM assignments  
GROUP BY assignments.day 
HAVING COUNT(day) >= 10
ORDER BY day;