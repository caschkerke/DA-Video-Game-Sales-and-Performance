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
       steam_data.price,
       vg_data.name,
       vg_data.global_sales

from steam_data
    inner join current_players
        on current_players.appid = steam_data.appid

    inner join vg_data
        on vg_data.name = steam_data.name
            order by steam_data.appid;