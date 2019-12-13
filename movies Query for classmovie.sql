/*Query 1 in SQL to find the name and year of the movies.*/

select MovieTitle, MovieYear	
from movie
where MovieYear = '2006';


/* Query 2 in SQL to find the year when the movie American Beauty released.*/
select MovieYear
from movie
where MovieTitle = 'American Beauty'; 

/* Query 3 in SQL to find the movie which was released in the year 1999*/
select MovieTitle
from movie
where MovieYear = '1999';

/* Query 4 in SQL to find the movies which was released before 1998*/
select MovieTitle
from movie
where MovieYear = '1998';

/* Query 5 in SQL to find the movie which was released in the year 1999*/
select MovieTitle
from movie
where MovieYear = '1999';

/* Query 6 in SQL to return the name of all reviewers and name of movies together in a single list*/
select  reviewName,movieTitle 
from reviewer;

/* Query 7 in SQL to find the name of all reviewers who have rated 7 or more stars to their rating */
select reviewName, num_o_ratings
from reviewer join rating
on reviewer.reviewId = rating.reviewId
where num_o_ratings >= 7; 

/* Query 8 in SQL to find the titles of all movies that have no ratings. */
select reviewName, num_o_ratings
from reviewer join rating
on reviewer.reviewId = rating.reviewId
where num_o_ratings = 0;

/* Query 9 in SQL to find the name of all reviewers who have rated their ratings with a NULL value */ 
select reviewName, num_o_ratings
from reviewer join rating
on reviewer.reviewId = rating.reviewId
where num_o_ratings = null;

/* Query 10 in SQL to find the name of movie and director (first and last names) who directed a movie that casted a role for 'Eyes Wide Shut'.*/
select director_firstName as firstName, director_lastName as lastName,movieTitle
from Director
join movie_Direction using (directorID)
join movie using (movieID)
where movieTitle = "Eye wide Shut"; 

select * from director;
/*alter table reviewer
add movieTitle		char(50)	not null;

update reviewer
SET movieTitle = 'Anna'
where reviewId = 305; */