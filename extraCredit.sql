-- 1 --

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

-- 2 --

SELECT * FROM artist
WHERE name LIKE 'Black%';

-- 3 --

SELECT * FROM artist
WHERE name LIKE '%Black%';

-- 4 --

SELECT * FROM employee 
ORDER BY birth_date ASC
LIMIT 1;

-- 5 --

SELECT * FROM employee 
ORDER BY birth_date DESC
LIMIT 1;

-- 6 --

SELECT COUNT(total) FROM invoice 
WHERE billing_state IN('CA', 'TX', 'AZ');

-- 7 --

SELECT AVG(total) FROM invoice;

-- 8 --

SELECT plt.track_id
FROM playlist_track plt
JOIN playlist p ON p.playlist_id = plt.playlist_id
WHERE p.name = 'Music';

-- 9 --

SELECT t.name
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
WHERE playlist_id = 5;

-- 10 --

SELECT t.name, p.name
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id;

-- 11 --

SELECT t.name, a.title "album title"
FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name LIKE 'Alternative & Punk';
