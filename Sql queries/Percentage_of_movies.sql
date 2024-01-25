	with 
		fresh as
		(
		select 
				count(rtm.movie_title) 	as 		amount_of_fresh
		from rooten_tomatoes_movies rtm 
		where tomatometer_status = "FRESH"
		),
		rooten as 
		(
		select 
				count(rtm.movie_title) as amount_of_rooten
		from rooten_tomatoes_movies rtm 
		where tomatometer_status = "Rotten"
		),
		certified_fresh as(
		select 
				count(rtm.movie_title) as amount_of_certified_fresh
		from rooten_tomatoes_movies rtm 
		where tomatometer_status = "Certified Fresh"
		)
		select round(f.amount_of_fresh/(select count(rtm.movie_title) from rooten_tomatoes_movies rtm),2)*100 as percentage_of_fresh 
		,round(r.amount_of_rooten/(select count(rtm.movie_title) from rooten_tomatoes_movies rtm),2)*100 as percentage_of_rotten
		,round(cf.amount_of_certified_fresh/(select count(rtm.movie_title) from rooten_tomatoes_movies rtm),2)*100 as percentage_of_certified_fresh
		from fresh f, rooten r, certified_fresh cf` (percentage_of_fresh,percentage_of_rotten,percentage_of_certified_fresh) 
	 
