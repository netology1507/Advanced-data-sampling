SELECT title, duration
FROM track
WHERE duration = (SELECT MAX(duration) FROM track);

SELECT title
FROM track
WHERE duration >= '00:03:30';

SELECT distinct title
FROM compilation 
WHERE yaer BETWEEN 2018 AND 2020;

SELECT name
FROM performer p 
WHERE name NOT LIKE '% %';

SELECT title
FROM track
WHERE title ILIKE '%мой%' OR title ILIKE '%my%';

SELECT genre, COUNT(*) AS performer_count
FROM performer
GROUP BY genre;

SELECT COUNT(*) AS track_count
FROM track t
JOIN album a ON t.album_id = a.album_id
WHERE a.yaer BETWEEN 2019 AND 2020;

SELECT album_id, AVG(duration) AS average_duration
FROM track
GROUP BY album_id;

SELECT p.*
FROM performer p
LEFT JOIN album_performer pa ON p.performer_id = pa.performer_id
LEFT JOIN album a ON pa.album_id = a.album_id AND a.yaer = 2020
WHERE a.album_id IS NULL;

SELECT p.*
FROM performer p
WHERE p.performer_id NOT IN (
    SELECT pa.performer_id
    FROM album_performer pa
    LEFT JOIN album a ON pa.album_id = a.album_id
    WHERE a.yaer = 2020
);

SELECT DISTINCT c.title
FROM compilation c
JOIN compilation_track ct ON c.compilation_id = ct.compilation_id
JOIN track t ON ct.track_id = t.track_id
JOIN performer p ON t.track_id = p.performer_id 
WHERE p.name = 'Basta';

SELECT DISTINCT a.title
FROM album a
JOIN album_performer ap ON a.album_id = ap.album_id
JOIN performer p ON ap.performer_id = p.performer_id
JOIN performer_genre pg ON p.performer_id = pg.performer_id
GROUP BY a.album_id, a.title
HAVING COUNT(DISTINCT pg.genre_id) > 1;


SELECT t.title
FROM track t
LEFT JOIN compilation_track ct ON t.track_id = ct.track_id
WHERE ct.compilation_id IS NULL;

SELECT p.name
FROM performer p
JOIN album a ON p.performer_id = a.album_id
JOIN track t ON a.album_id = t.album_id
WHERE t.duration = (
    SELECT MIN(duration)
    FROM track
);

SELECT album.title, COUNT(track.title) track_count 
FROM album 
JOIN track ON album.album_id = track.album_id
GROUP BY album.album_id
HAVING COUNT(track.title) = (  
	SELECT COUNT(track.title) 
	FROM album
	JOIN track ON album.album_id = track.album_id
	GROUP BY album.album_id
	ORDER BY COUNT(track.title)
	LIMIT 1);