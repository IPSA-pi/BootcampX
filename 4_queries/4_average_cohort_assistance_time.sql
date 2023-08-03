SELECT cohorts.name AS name, avg(completed_at - started_at) AS average_assistance_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;

-- Nota: el la primera línea no necesitas el AS. en el join se usa el nombre de la columna como default, Solo usar AS si le vas a cambiar el nombre a la columna

-- Compass' solution:

-- SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
-- FROM assistance_requests 
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY average_assistance_time;