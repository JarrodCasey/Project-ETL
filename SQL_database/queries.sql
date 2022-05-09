-- Join both tables
select *
  from movie_list as m
  join rating_top100 as r
    on m.movie_id= r.movie_id

-- 1. The top 10 highest rated movies (on average):
select m.movie_title, r.avg_rating
  from movie_list as m
  join rating_top100 as r
    on m.movie_id= r.movie_id
	order by r.avg_rating desc
	limit 10;
	
-- 2. Years with the most movies appeared in the top 100 listing. 
select m.release_year, count(avg_rating)
  from movie_list as m
  join rating_top100 as r
    on m.movie_id= r.movie_id
	group by m.release_year
	order by count desc
	limit 1;
	
-- 3. The top 10 most rated movies (indication of most watched movies).
select m.movie_title, r.count
  from movie_list as m
  join rating_top100 as r
    on m.movie_id= r.movie_id
	order by r.count desc
	limit 10;

	
