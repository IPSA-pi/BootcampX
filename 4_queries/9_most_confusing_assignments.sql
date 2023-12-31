-- SELECT 
--   assignments.id, 
--   assignments.name, 
--   assignments.day, 
--   assignments.chapter, 
--   COUNT(assistance_requests.assignment_id) as total_requests
-- FROM assistance_requests
-- JOIN assignments ON assignments.id = assignment_id
-- GROUP BY assignments.id
-- ORDER BY total_requests DESC;

-- Compass' solution:

SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;