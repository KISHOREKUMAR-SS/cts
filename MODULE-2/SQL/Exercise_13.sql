SELECT
    m.genre,
    ROUND(AVG(r.score), 2) AS average_score
FROM Movies m
JOIN Ratings r
    ON m.movie_id = r.movie_id
GROUP BY m.genre
ORDER BY average_score DESC;