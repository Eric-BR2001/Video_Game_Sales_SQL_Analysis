# Video Game Sales SQL Documentation

## Database Structure
The project consists of three tables:

- **publishers**: Stores information about video game publishers.
- **games**: Contains game details, including title, publisher, release year, and genre.
- **sales**: Tracks the number of copies sold per game in different regions.

## SQL Features Used
The SQL script makes use of:
- **JOIN**: To combine data from multiple tables.
- **UNION**: To merge results from two different queries.
- **MAX** and **MIN**: To find highest and lowest values.
- **SUM**: To calculate total sales.

## Key SQL Queries
Here are the queries included in the project:

1. **Best-selling game in each continent**
   ```sql
   SELECT s.region, g.title, MAX(s.copies_sold) AS max_sales
   FROM sales s
   JOIN games g ON s.game_id = g.id
   JOIN publishers p ON g.publisher_id = p.id
   WHERE p.name IN ('Rockstar Games', 'Capcom')
   GROUP BY s.region;
   ```

2. **Total copies sold per publisher**
   ```sql
   SELECT p.name AS publisher, SUM(s.copies_sold) AS total_sales
   FROM sales s
   JOIN games g ON s.game_id = g.id
   JOIN publishers p ON g.publisher_id = p.id
   GROUP BY p.name;
   ```

3. **List of all Rockstar and Capcom games**
   ```sql
   SELECT g.title, p.name AS publisher
   FROM games g
   JOIN publishers p ON g.publisher_id = p.id
   WHERE p.name = 'Rockstar Games'
   UNION
   SELECT g.title, p.name AS publisher
   FROM games g
   JOIN publishers p ON g.publisher_id = p.id
   WHERE p.name = 'Capcom';
   ```

4. **Total copies sold per game**
   ```sql
   SELECT g.title, SUM(s.copies_sold) AS total_sales
   FROM sales s
   JOIN games g ON s.game_id = g.id
   GROUP BY g.title;
   ```

5. **Average sales per game**
   ```sql
   SELECT g.title, AVG(s.copies_sold) AS avg_sales
   FROM sales s
   JOIN games g ON s.game_id = g.id
   GROUP BY g.title;
   ```

6. **Oldest game in the database**
   ```sql
   SELECT title, release_year FROM games ORDER BY release_year ASC LIMIT 1;
   ```

7. **Newest game in the database**
   ```sql
   SELECT title, release_year FROM games ORDER BY release_year DESC LIMIT 1;
   ```

8. **Total sales in North America**
   ```sql
   SELECT SUM(s.copies_sold) AS total_sales_NA FROM sales s WHERE s.region = 'North America';
   ```