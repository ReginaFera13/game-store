DROP TABLE IF EXISTS game;

CREATE TABLE game (
    game_id INT PRIMARY KEY,
    game_title VARCHAR(100) UNIQUE NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(5, 2) NOT NULL
);

DROP TABLE IF EXISTS action_figure;

CREATE TABLE action_figure (
    id INT PRIMARY KEY,
    action_figure_title VARCHAR(100) UNIQUE NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(5, 2) NOT NULL
);

DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
    id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    position VARCHAR(100) NOT NULL,
    salary DECIMAL(7, 2) NOT NULL
);

DROP TABLE IF EXISTS poster;

CREATE TABLE poster (
    id INT PRIMARY KEY,
    poster_title VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(4, 2) NOT NULL
);

-- \COPY game
-- FROM '/home/reginafera13/codeplatoon/game-store-III/store/data/game.csv' WITH CSV HEADER;

-- \COPY action_figure
-- FROM '/home/reginafera13/codeplatoon/game-store-III/store/data/action_figure.csv' WITH CSV HEADER;

-- \COPY poster
-- FROM '/home/reginafera13/codeplatoon/game-store-III/store/data/poster.csv' WITH CSV HEADER;

-- \COPY employee
-- FROM '/home/reginafera13/codeplatoon/game-store-III/store/data/employee.csv' WITH CSV HEADER;