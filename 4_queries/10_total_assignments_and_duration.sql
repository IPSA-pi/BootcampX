SELECT 
  day, 
  count(assignments.id) as number_of_assignments,
  sum(assignments.duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;

-- -- Compass' solution:

-- SELECT day, count(*) as number_of_assignments, sum(duration) as duration
-- FROM assignments
-- GROUP BY day
-- ORDER BY day;