select movie_list.movie_id, movie_list.movie_title, movie_list.release_year,
       rating_top100.movie_id, rating_top100.avg_rating, rating_top100.count, rating_top100.weight_average
       from movie_list
       join rating_top100
       on movie_list.movie_id = rating_top100.movie_id;