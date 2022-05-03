# Project-ETL
Project 2 of Monash Data Analysis Bootcamp on ETL

## Introduction
We have selected data from https://www.kaggle.com/datasets/clementmsika/mubi-sqlite-database-for-movie-lovers?resource=download for the basis of our project.

From the the abovementioned link, we will be using 2 tables being:
  1. mubi_movie_data.csv: Contains data from all movies registered on MUBI.
  2. mubi_ratings_data.csv: Contains data from ratings on MUBI for users who did not set their profile in private mode.
     This table goes back to 2008 and has about 15 million rows.
     
## Objective
The objective of this analysis are, for the 2019 calendar year:
  1. Calculate the average rating per movie based on the mubi_ratings_data.csv dataset.
  2. Calculate the number of ratings received per movie (this gives an indication of how many times a movie is watched).
  3. Determine the top 100 rated movies in the analysis period.
  4. Convert the top 100 views list into a database and load into PostgressSQL
