Drop table if exists steam_data1;

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
	
Select *
from steam_data1;


	
	