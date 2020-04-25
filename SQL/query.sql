select current_players.appid, 
       current_players.current_players, 
       steam_data.appid, 
       steam_data.release_date, 
       steam_data.name, 
       steam_data.postive_ratings, 
       steam_data.negative_ratings, 
       steam_data.average_playtime, 
       steam_data.median_playtime, 
       steam_data.owners, 
       steam_data.price

from current_players
    
    inner join steam_data 
    
        on current_players.appid = steam_data.appid;

SELECT premise.id, premise.premise_name, county.county_name
FROM premise
INNER JOIN county
ON premise.county_id = county.county_id;

-- Joins tables
-- SELECT current_players.appid, current_players.current_players, desired_database_here.desired_column_here, desired_database_here.desired_column_here
-- FROM current_players
-- JOIN "desired_database_here"
-- ON current_players.appid = desired_database_here.desired_column_here;