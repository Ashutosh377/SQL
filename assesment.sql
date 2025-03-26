SELECT * FROM exam.movies;

use exam;

/#*Q1*#/

Select count(*) from movies;
Select count(*) from role;
Select count(*) from ratings;
Select count(*) from director;
Select count(*) from names;
Select count(*) from genre;


/#*Q2*#/

SELECT Year, COUNT(*) AS number_of_movies
FROM exam.movies
GROUP BY YEAR
ORDER BY Year;




/#*Q3*#/
SELECT count(*) as count FROM exam.movies
WHERE (country = 'USA' OR country = 'India') 
AND YEAR  = 2019;

/#*Q4*#/
select distinct genre from genre;

/#*Q5*#/
select genre, count(genre) as highest_number
from genre
group by genre 
order by highest_number desc limit 1 ;

/#*Q6*#/
Select genre,COUNT(*) as count 
from genre
group by genre
limit 1;

/#*Q7#/
SELECT g.genre, AVG(m.duration) AS avg_duration
FROM genre g
JOIN movies m ON g.ï»¿movie_id = ï»¿id
GROUP BY g.genre;

/#*Q8*#/

select genre, COUNT(*) as count,
RANK() Over (Order by COUNT(*) DESC) as genre_rank
from genre
group By genre
having genre = 'thriller';








