-- This is an example query for a steam game that includes an active player count. Make sure to run the request code in 
-- api_data_pull.ipynb before this query for the most accurate and updated active player count return.

select current_players.appid, 
       current_players.current_players, 
       steam_data1.appid, 
       steam_data1.release_date, 
       steam_data1.name, 
       steam_data1.positive_ratings, 
       steam_data1.negative_ratings, 
       steam_data1.average_playtime, 
       steam_data1.median_playtime, 
       steam_data1.owners, 
       steam_data1.price,
       vg_data.name,
       vg_data.global_sales

from steam_data1
    inner join current_players
        on current_players.appid = steam_data1.appid

    inner join vg_data
        on vg_data.name = steam_data1.name
            order by steam_data1.appid;

-- Joins tables
-- SELECT current_players.appid, current_players.current_players, desired_database_here.desired_column_here, desired_database_here.desired_column_here
-- FROM current_players
-- JOIN "desired_database_here"
-- ON current_players.appid = desired_database_here.desired_column_here;
