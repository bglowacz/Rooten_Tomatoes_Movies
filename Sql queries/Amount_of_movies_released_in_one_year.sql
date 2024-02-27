select 	
	date_format(Release_Date, "%Y") as year_of_release
	, count(Release_Date) as amount_of_movies
from rooten_tomatoes_movies rtm 
group by 1
order by 2 desc 

	
	

