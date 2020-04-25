-- !! This file MUST be run in pgAdmin4 before the notebook code will execute properly. This should be executed via the query
-- tool in a database named playercount_db.

-- Drop existing tables if applicable
DROP TABLE IF EXISTS current_players;
DROP TABLE IF EXISTS vg_data;
DROP TABLE IF EXISTS steam_data1;

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

CREATE TABLE steam_data1 (
	appid INT PRIMARY KEY,
	name Varchar,
	release_date date,
	publisher Varchar,
	genres  Varchar,
	positive_ratings Int,
	negative_ratings Int,
	average_playtime Int,
	median_playtime Int,
	owners Varchar,
	price Int);
