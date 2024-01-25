INSERT INTO `select 	
		Release_Date 		as day
		,max(amount_of_movies) as amount_of_movies_per_one_day
from 	(select
		Release_Date
		, date_format(Release_Date, "%Y")
		, count(*)		as amount_of_movies
		from rooten_tomatoes_movies rtm
		group by 1,2) rtm
group by 1
order by 2 desc 
limit 10` (Release_Date,amount_of_movies_per_one_day) VALUES
	 ('2002-01-01',28),
	 ('2000-01-01',25),
	 ('2003-01-01',25),
	 ('2001-01-01',24),
	 ('2018-09-14',23),
	 ('1988-01-01',23),
	 ('1993-01-01',22),
	 ('2016-10-21',21),
	 ('1992-01-01',21),
	 ('2018-10-26',20);
