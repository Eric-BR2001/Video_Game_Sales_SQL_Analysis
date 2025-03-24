-- Inserting publishers
INSERT INTO publishers (name) VALUES ('Rockstar Games'), ('Capcom'), ('Nintendo'), ('Ubisoft'), ('Electronic Arts');

-- Inserting games
INSERT INTO games (title, publisher_id, release_year, genre) VALUES
('Grand Theft Auto V', 1, 2013, 'Action'),
('Red Dead Redemption 2', 1, 2018, 'Action'),
('Resident Evil 4', 2, 2005, 'Horror'),
('Monster Hunter World', 2, 2018, 'RPG'),
('Super Mario Odyssey', 3, 2017, 'Platform'),
('The Legend of Zelda: Breath of the Wild', 3, 2017, 'Adventure'),
('Assassin''s Creed Valhalla', 4, 2020, 'Action'),
('Far Cry 6', 4, 2021, 'Shooter'),
('FIFA 22', 5, 2021, 'Sports'),
('Battlefield 2042', 5, 2021, 'Shooter');

-- Inserting sales data
INSERT INTO sales (game_id, region, copies_sold) VALUES
(1, 'North America', 20.5), (1, 'Europe', 15.0), (1, 'Asia', 10.2),
(2, 'North America', 8.3), (2, 'Europe', 6.7), (2, 'Asia', 5.1),
(3, 'North America', 5.5), (3, 'Europe', 4.2), (3, 'Asia', 3.8),
(4, 'North America', 6.0), (4, 'Europe', 5.3), (4, 'Asia', 7.1),
(5, 'North America', 12.1), (5, 'Europe', 10.4), (5, 'Asia', 8.7),
(6, 'North America', 14.3), (6, 'Europe', 12.9), (6, 'Asia', 9.5),
(7, 'North America', 7.8), (7, 'Europe', 6.3), (7, 'Asia', 4.9),
(8, 'North America', 5.6), (8, 'Europe', 4.8), (8, 'Asia', 3.6),
(9, 'North America', 18.2), (9, 'Europe', 14.7), (9, 'Asia', 12.3),
(10, 'North America', 9.1), (10, 'Europe', 7.5), (10, 'Asia', 6.4);