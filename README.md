# Video-Game-Sales-and-Performance
ETL Project – Video Game Sales and Performance

Project was completed by Nathanuel Martin, Benjamin Pitman, and Cade Schkerke.

Our goal with this project was to take existing sales data for global video game releases, steam releases, and to compare them along with current player count when applicable.

EXTRACT: First the following 2 data sources are loaded and 1 Api data
<ul>
  <li>vgsales.csv - Source: <a href="https://www.kaggle.com/gregorut/videogamesales">Kaggle</a></li>
  <li>steam.csv - Source: <a href="https://www.kaggle.com/nikdavis/steam-store-games">Kaggle</a></li>
  <li>Steam Web API - Source: <a href="https://partner.steamgames.com/doc/webapi_overview">Dev API Overview</a></li>
</ul>


TRANSFORM:

1)Stream:
* I used the loc function to get pick out the specific headers that 
* Small data cleanup within the region_name column
* Drop any rows that have data missing (NaN values) >> Clean_df

2)Video Game Sales:
*
*

3)Steams Games
*
*

LOAD: 
1)Stream:
* Then I connected to the engine
* Then I used the clean date to an sql datebase
* Last I excute the engine
2)Video Game Sales:
*
*

3)Steams Games
*
*



