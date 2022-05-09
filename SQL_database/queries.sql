select movie_list.movie_id, movie_list.movie_title, movie_list.release_year,
       rating_top100.movie_id, rating_top100.avg_rating, rating_top100.count, rating_top100.weight_average
       from movie_list
       join rating_top100
       on movie_list.movie_id = rating_top100.movie_id;

-- 1. Calculate the average rating per movie based on the mubi_ratings_data.csv dataset.
select m.movie_title, r.avg_rating
  from movie_list as m
  join rating_top100 as r
    on m.movie_id= r.movie_id
	order by r.avg_rating desc
	limit 5;

-- 2. Calculate the number of ratings received per movie (this gives an indication of how many times a movie is watched).
select m.movie_title, r.count
  from movie_list as m
  join rating_top100 as r
    on m.movie_id= r.movie_id
	order by r.count desc
	limit 5;

-- 3. Years with the highest average rating for the release movie 
select m.release_year,round (cast(avg(avg_rating) as numeric),2) as avg_rating
  from movie_list as m
  join rating_top100 as r
    on m.movie_id= r.movie_id
	group by m.release_year
	order by avg_rating desc
	limit 5;