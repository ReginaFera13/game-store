--- Retrieve the names of all gaming engines ---
SELECT engine_name 
FROM gaming_engine;

--- Find the total quantity of all games in stock ---
SELECT SUM(quantity) 
FROM game;

--- Get the unique titles of all games with a price higher than $30.00 ---
SELECT game_title 
FROM game
WHERE price > 30.00;

--- List the titles and quantities of games with less than 20 in stock ---
SELECT game_title 
FROM game
WHERE quantity < 20;

--- Find the total number of genre-game associations ---
SELECT COUNT(*) 
FROM genre_game;

--- Retrieve the titles of action figures with a price between $20.00 and $50.00 ---
SELECT action_figure_title 
FROM action_figure
WHERE price > 20.00 AND price < 50.00;

--- List the poster titles and prices for posters with quantities between 15 and 30 ---
SELECT poster_title 
FROM poster
WHERE quantity < 30 AND quantity > 15;

--- Get the names and positions of employees earning more than $40,000 per year ---
SELECT employee_name, position 
FROM employee
WHERE salary > 40000;

--- Find the total number of social security entries ---
SELECT COUNT(*) 
FROM social_security;

--- Retrieve the start and end times of all shifts ---
SELECT start_time, end_time 
FROM shifts;

--- Get the names and salaries of employees working on shifts ---
SELECT shifts.*, employee.employee_name, employee.salary
FROM employee
JOIN shifts 
ON employee.employee_id = shifts.employee_id;

--- List the action figures with a quantity less than 15 ---
SELECT action_figure_title 
FROM action_figure
WHERE quantity < 15;

--- Retrieve the titles of games with the word 'Warzone' in their title ---
SELECT game_title 
FROM game
WHERE game_title LIKE '%Warzone%';

--- Find the total number of genres ---
SELECT COUNT(*) 
FROM genre;

--- Get the names and quantities of action figures with prices over $27.00 ---
SELECT action_figure_title, quantity 
FROM action_figure
WHERE price > 27.00;

--- Retrieve the names of employees in the 'IT Specialist' position ---
SELECT employee_name
FROM employee
WHERE position = 'IT Specialist';

--- List the game titles with quantities greater than 25 ---
SELECT game_title
FROM game
WHERE quantity > 25;

--- Find the total quantity of all items (games, action figures, and posters) ---
SELECT SUM(quantity) AS total_quantity
FROM (
    SELECT quantity FROM game
    UNION ALL
    SELECT quantity FROM action_figure
    UNION ALL
    SELECT quantity FROM poster
) AS total_quantities;

--- Retrieve the social security numbers and names of employees with salaries over $50,000 ---
SELECT social_security.ssn, employee.employee_name
FROM employee 
JOIN social_security ON employee.employee_id = social_security.employee_id
WHERE employee.salary > 50000;

--- Get the names and quantities of posters with prices between $10.00 and $15.00 ---
SELECT poster_title, quantity
FROM poster
WHERE price > 10.00 AND price < 15.00;

--- List the names and quantities of posters with a price less than $8.00 ---
SELECT poster_title, quantity
FROM poster
WHERE price < 8.00;

--- Retrieve the employee names and salaries for 'Marketing Coordinator' and 'Finance Analyst' positions ---
SELECT employee_name, salary
FROM employee
WHERE position IN ('Marketing Coordinator', 'Finance Analyst');

--- Find the total quantity of action figures in stock ---
SELECT SUM(quantity) 
FROM action_figure;

--- Get the titles and quantities of games with a quantity between 15 and 30 ---
SELECT game_title, quantity
FROM game
WHERE quantity > 15 AND quantity < 30;

--- List the names and salaries of employees working on shifts with a start time after '2024-01-01 ---
SELECT employee.employee_name, employee.salary
FROM employee
JOIN shifts ON employee.employee_id = shifts.employee_id
WHERE shifts.start_time > '2024-01-01';

--- Retrieve the titles and prices of games with prices less than $20.00 ---
SELECT game_title, price
FROM game
WHERE price < 20.00;

--- Find the total quantity of action figures with prices between $25.00 and $30.00 ---
SELECT SUM(quantity)
FROM action_figure
WHERE price > 25.00 AND price < 30.00;

--- Get the names and positions of employees working on shifts with a start time before '2024-03-07 13:00:00' ---
SELECT employee.employee_name, employee.position
FROM employee
JOIN shifts ON employee.employee_id = shifts.employee_id
WHERE shifts.start_time < '2024-03-07 13:00:00';

--- List the names and quantities of action figures with a quantity greater than 10 ---
SELECT action_figure_title, quantity
FROM action_figure
WHERE quantity > 10;

--- Retrieve the titles and quantities of posters with quantities greater than 25 ---
SELECT poster_title, quantity
FROM poster
WHERE quantity > 25;

--- Find the total number of shifts ---
SELECT COUNT(*)
FROM shifts;

--- Get the names and positions of employees working on shifts with a start time between '2024-02-01' and '2024-03-07 13:00:00' ---
SELECT employee.employee_name, employee.position
FROM employee
JOIN shifts ON employee.employee_id = shifts.employee_id
WHERE shifts.start_time > '2024-02-01' AND shifts.start_time < '2024-03-07 13:00:00';

--- List the game titles with quantities less than 20 ---
SELECT game_title
FROM game
WHERE quantity < 20;

--- Retrieve the names and quantities of action figures with prices over $23.00 ---
SELECT action_figure_title, quantity
FROM action_figure
WHERE price > 23.00;

--- Find the total quantity of posters in stock ---
SELECT SUM(quantity) 
FROM poster;