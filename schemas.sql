-- Drop existing tables if applicable
-- DROP TABLE current_players;

-- Create tables for raw data to be loaded into
CREATE TABLE current_players (
			appid INT PRIMARY KEY,
			current_players INT
);

-- Joins tables
-- SELECT current_players.appid, current_players.current_players, desired_database_here.desired_column_here, desired_database_here.desired_column_here
-- FROM current_players
-- JOIN "desired_database_here"
-- ON current_players.appid = desired_database_here.desired_column_here;
