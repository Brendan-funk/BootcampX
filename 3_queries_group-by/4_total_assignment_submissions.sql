SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS  total_submissions
FROM cohorts
JOIN students on cohorts.id = cohort_id
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohort
ORDER BY total_submissions DESC;