-- Top 10 Most Watched Titles
SELECT title, watchtime
FROM shows
ORDER BY watchtime DESC
LIMIT 10;

-- Average Watch Time by Genre
SELECT genre, AVG(watchtime) AS avg_watch_time
FROM shows
GROUP BY genre
ORDER BY avg_watch_time DESC;

-- Total Watch Time by Year
SELECT release_year, SUM(watchtime) AS total_watch_time
FROM shows
GROUP BY release_year
ORDER BY release_year DESC;

-- Movies vs TV Shows
SELECT media_type, SUM(watchtime) AS total_watch_time
FROM shows
GROUP BY media_type;