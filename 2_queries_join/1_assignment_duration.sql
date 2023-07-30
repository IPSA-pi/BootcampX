-- First attempt

-- SELECT SUM(duration) as total_duration 
-- FROM assignment_submissions 
-- JOIN students ON student_id = students.id 
-- WHERE name LIKE 'Ibrahim S%';

-- Compass' solution:

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';