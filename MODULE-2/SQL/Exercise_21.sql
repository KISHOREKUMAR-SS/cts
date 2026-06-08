SELECT
    a.author_id,
    a.author_name,
    COUNT(ar.article_id) AS total_articles
FROM Authors a
JOIN Articles ar
    ON a.author_id = ar.author_id
GROUP BY a.author_id, a.author_name
ORDER BY total_articles DESC
LIMIT 5;