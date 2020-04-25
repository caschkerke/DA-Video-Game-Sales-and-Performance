-- Drop existing tables if applicable
DROP TABLE IF EXISTS current_players;
DROP TABLE IF EXISTS vg_data;

-- Create tables for raw data to be loaded into
CREATE TABLE current_players (
			appid INT PRIMARY KEY,
			current_players INT
);

CREATE TABLE vg_data (
			rank INT PRIMARY KEY,
			name VARCHAR,
			platform VARCHAR,
			year INT,
			genre VARCHAR,
			publisher VARCHAR,
			global_sales DEC
);