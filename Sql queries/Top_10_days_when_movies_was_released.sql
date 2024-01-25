select 	
	Release_Date 	as day
	,max(amount_of_movies) as amount_of_movies_per_one_day
from 	(select
		Release_Date
		, date_format(Release_Date, "%Y")
		, count(*)		as amount_of_movies
		from rooten_tomatoes_movies rtm
		group by 1,2) rtm
group by 1
order by 2 desc 
limit 10
