alter table if exists rating_top100 drop constraint if exists rating_top100_movie_id_fkey;

drop table if exists movie_list;
drop table if exists rating_top100;

create table movie_list (
	movie_id INT not null,
	movie_title TEXT not null,
	release_year INT not null,
	primary key (movie_id)
);

create table rating_top100 (
	movie_id INT not null,
	avg_rating float (50) not null,
	count INT not null,
	weight_average float (50) not null,
	foreign key (movie_id) references movie_list (movie_id),
	primary key (movie_id)
);
