# Video-Game-Sales-and-Performance
ETL Project – Video Game Sales and Performance

Project was completed by Nathanuel Martin, Benjamin Pitman, and Cade Schkerke.

Our goal with this project was to create a relational database for general Video Game stats and Steam specific game stats. We used existing sales data for global video game releases, steam releases, and compared them along with current (Steam) player count when applicable. 

EXTRACT: First the following 2 data sources are loaded and 1 API data
<ul>
  <li>vgsales.csv - Source: <a href="https://www.kaggle.com/gregorut/videogamesales">Kaggle</a></li>
  <li>steam.csv - Source: <a href="https://www.kaggle.com/nikdavis/steam-store-games">Kaggle</a></li>
  <li>Steam Web API - Source: <a href="https://partner.steamgames.com/doc/webapi_overview">Dev API Overview</a></li>
</ul>


TRANSFORM:

1)Steam:
* We used the loc function to get pick out the specific headers that 
* Small data cleanup within the region_name column
* Drop any rows that have data missing (NaN values) >> Clean_df

2)Video Game Sales:
* 
* Imported new vgsales_clean.csv into notebook
* Replaced any empty "Year" values in the data set with fillna and set proper data types
* Renamed columns to be SQL-friendly >> vg_rename

3)Steam API Data:
* Performed request to Steam Web API for active players on a specific game
* Flattened response, placed within a dataframe, exported to Outputs/active_count.csv
* Imported the new csv
* Redefined columns to be SQL-friendly, dropped duplicates, and set index >> count_transformed

LOAD: 

* Then we connected to the engine
* Then we used the clean data to an sql datebase
* Last we execute the query through the engine

Our example query is designed to return information for a specific steam game (defined by its AppID) and to retrieve the related data from our databases as well as the active player count generated by the API call.

