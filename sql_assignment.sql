-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.
SELECT id, name FROM artists WHERE name = 'Queen';
SELECT * FROM albums WHERE artist_id = '51'



-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".
SELECT * FROM media_types --Protected MPEG-4 video file id == 3
SELECT COUNT (*) FROM tracks WHERE media_type_id = '3';

-- 3) Find the least expensive track that has the genre "Electronica/Dance".
SELECT * FROM genres --returns Electronica/Dance id == 15
SELECT name, unit_price FROM tracks WHERE genre_id = '15' ORDER BY unit_price;


-- 4) Find the all the artists whose names start with A.
SELECT name FROM artits WHERE name LIKE 'A%';



-- 5) Find all the tracks that belong to playlist 1.
SELECT id, name FROM playlists --Playlist 1 is called Music
SELECT id, name FROM tracks WHERE id IN (SELECT id FROM playlists_tracks WHERE playlist_id = '1');

--SELECT p.name, p.id AS playlist_id, t.id AS track_id, t.name AS track_name FROM playlists p INNER JOIN playlists_tracks pt ON p.id = pt.playlist_id INNER JOIN tracks t ON pt.track_id = t.id;
