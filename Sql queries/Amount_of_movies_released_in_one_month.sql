select 
		date_format(Release_Date, "%M") as month_of_released
		, count(Release_Date) as amount_of_movies
from rooten_tomatoes_movies rtm 
group by 1
order by 2 desc
