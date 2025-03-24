-- 1. What is the best-selling game in each continent?
SELECT s.region, g.title, MAX(s.copies_sold) AS max_sales
FROM sales s
JOIN games g ON s.game_id = g.id
JOIN publishers p ON g.publisher_id = p.id
WHERE p.name IN ('Rockstar Games', 'Capcom')
GROUP BY s.region;

-- 2. Total copies sold per publisher
SELECT p.name AS publisher, SUM(s.copies_sold) AS total_sales
FROM sales s
JOIN games g ON s.game_id = g.id
JOIN publishers p ON g.publisher_id = p.id
GROUP BY p.name;

-- 3. Union of games from Rockstar and Capcom
SELECT g.title, p.name AS publisher
FROM games g
JOIN publishers p ON g.publisher_id = p.id
WHERE p.name = 'Rockstar Games'
UNION
SELECT g.title, p.name AS publisher
FROM games g
JOIN publishers p ON g.publisher_id = p.id
WHERE p.name = 'Capcom';

-- 4. Total copies sold per game
SELECT g.title, SUM(s.copies_sold) AS total_sales
FROM sales s
JOIN games g ON s.game_id = g.id
GROUP BY g.title;

-- 5. Average sales per game
SELECT g.title, AVG(s.copies_sold) AS avg_sales
FROM sales s
JOIN games g ON s.game_id = g.id
GROUP BY g.title;

-- 6. The oldest game in the database
SELECT title, release_year FROM games ORDER BY release_year ASC LIMIT 1;

-- 7. The newest game in the database
SELECT title, release_year FROM games ORDER BY release_year DESC LIMIT 1;

-- 8. Total sales in North America
SELECT SUM(s.copies_sold) AS total_sales_NA FROM sales s WHERE s.region = 'North America';