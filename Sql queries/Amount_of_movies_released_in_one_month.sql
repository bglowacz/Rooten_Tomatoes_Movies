INSERT INTO `select 
		date_format(Release_Date, "%M") as month_of_released
		, count(Release_Date) as amount_of_movies
from rooten_tomatoes_movies rtm 
group by 1
order by 2 desc` (month_of_released,amount_of_movies) VALUES
	 ('January',1825),
	 ('October',1646),
	 ('June',1499),
	 ('September',1474),
	 ('August',1396),
	 ('December',1369),
	 ('April',1368),
	 ('March',1351),
	 ('November',1273),
	 ('May',1229);
INSERT INTO `select 
		date_format(Release_Date, "%M") as month_of_released
		, count(Release_Date) as amount_of_movies
from rooten_tomatoes_movies rtm 
group by 1
order by 2 desc` (month_of_released,amount_of_movies) VALUES
	 ('July',1123),
	 ('February',1083);
