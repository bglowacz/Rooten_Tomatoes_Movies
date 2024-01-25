select 
	movie_title
	,case 
	when tomatometer_rating is null then 0 
	when audience_rating is null then 0 
	else ABS(tomatometer_rating - audience_rating) end as difference
from rooten_tomatoes_movies rtm 
order by 2 DESC
