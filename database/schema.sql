-- Creating the database
CREATE DATABASE VideoGameSales;
USE VideoGameSales;

-- Creating the publishers table
CREATE TABLE publishers (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL
);

-- Creating the games table
CREATE TABLE games (
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255) NOT NULL,
publisher_id INT,
release_year INT,
genre VARCHAR(100),
FOREIGN KEY (publisher_id) REFERENCES publishers(id)
);

-- Creating the sales table
CREATE TABLE sales (
id INT PRIMARY KEY AUTO_INCREMENT,
game_id INT,
region VARCHAR(50),
copies_sold DECIMAL(10,2),
FOREIGN KEY (game_id) REFERENCES games(id)
);