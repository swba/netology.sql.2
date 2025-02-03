--- Задание 2 ---

-- 1. Название и продолжительность самого длительного трека.
SELECT name, duration FROM track ORDER BY duration DESC LIMIT 1;

-- 2. Название треков, продолжительность которых не менее 3,5 минут.
SELECT name FROM track WHERE duration >= 3 * 60 + 30;

-- 3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name FROM collection WHERE year BETWEEN 2018 AND 2020;

-- 4. Исполнители, чьё имя состоит из одного слова.
SELECT name FROM artist WHERE name NOT LIKE '% %';

-- 5. Название треков, которые содержат слово «любовь» или «love».
SELECT name FROM track 
WHERE LOWER(name) LIKE '%любовь%' OR LOWER(name) LIKE '%love%';


--- Задание 3 ---

-- 1. Количество исполнителей в каждом жанре.
SELECT g.genre_id, g.name AS genre_name, COUNT(ag.artist_id) AS artist_count 
FROM artist_genre ag
JOIN genre g ON ag.genre_id = g.genre_id 
GROUP BY g.genre_id
ORDER BY g.genre_id;

-- 2. Количество треков, вошедших в альбомы 1992–1993 годов.
SELECT a.album_id, a.name AS album_name, COUNT(t.track_id) AS track_count
FROM track t 
JOIN album a ON t.album_id = a.album_id 
WHERE a.year BETWEEN 1992 AND 1993
GROUP BY a.album_id;

-- 3. Средняя продолжительность треков по каждому альбому.
SELECT a.album_id, a.name AS album_name, AVG(t.duration) AS avg_track_duration
FROM track t
JOIN album a ON t.album_id = a.album_id 
GROUP BY a.album_id
ORDER BY a.album_id;

-- 4. Все исполнители, которые НЕ выпустили альбомы в 2018 году.
SELECT *
FROM artist 
WHERE artist_id NOT IN (
	SELECT aa.artist_id 
	FROM album_artist aa 
	JOIN album a ON aa.album_id = a.album_id 
	WHERE a.year = 2018
);

-- 5. Названия сборников, в которых присутствует исполнитель "ДДТ".
SELECT DISTINCT(c.name)
FROM collection_track ct 
JOIN collection c ON ct.collection_id = c.collection_id 
JOIN track t ON ct.track_id = t.track_id 
JOIN album a ON t.album_id = a.album_id 
JOIN album_artist aa ON a.album_id = aa.album_id 
JOIN artist a2 ON aa.artist_id = a2.artist_id 
WHERE a2.name = 'ДДТ'
ORDER BY c.name;


--- Задание 4 ---

-- 1. Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT a.name
FROM album_artist aa 
JOIN album a ON aa.album_id = a.album_id 
JOIN artist_genre ag ON aa.artist_id = ag.artist_id
GROUP BY a.album_id
HAVING COUNT(ag.genre_id) > 1
ORDER BY a.name;

-- 2. Наименования треков, которые не входят в сборники.
SELECT DISTINCT(t.name)
FROM track t 
LEFT JOIN collection_track ct ON t.track_id = ct.track_id 
WHERE ct.track_id IS NULL
ORDER BY t.name;

-- 3. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек.
SELECT a2.name
FROM track t 
JOIN album a ON t.album_id = a.album_id 
JOIN album_artist aa ON a.album_id = aa.album_id 
JOIN artist a2 ON aa.artist_id = a2.artist_id 
WHERE t.duration IN (SELECT MIN(duration) FROM track)
GROUP BY a2.artist_id
ORDER BY a2.name;

-- 4. Названия альбомов, содержащих наименьшее количество треков.
SELECT a.name
FROM track t 
JOIN album a ON t.album_id = a.album_id 
GROUP BY a.album_id
HAVING COUNT(t.track_id) IN (
	SELECT album_id 
	FROM track 
	GROUP BY album_id 
	ORDER BY COUNT(track_id) 
	LIMIT 1
)
ORDER BY a.name;
