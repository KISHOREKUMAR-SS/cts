SELECT
    m.region,
    COUNT(DISTINCT m.member_id) AS total_attendances
FROM Members m
JOIN Attendances a
    ON m.member_id = a.member_id
GROUP BY m.region
ORDER BY total_attendances DESC
LIMIT 3;