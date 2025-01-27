use imdbanalysis;
SELECT * FROM actors;
select * from directors;
select * from directors_genres;
select * from movies;
select * from movies_directors;
select * from movies_genres;
select * from roles;


-- QUESTIONS

-- 1. List all actors (first name, last name, gender) from the actors table: 
select first_name,last_name,gender from actors;

-- 2. Find the number of movies directed by each director: 
select d.id,d.first_name,count(md.movie_id) as total_movies 
from directors d left join movies_directors md on d.id=md.director_id group by d.id,d.first_name;

-- 3. List all movies from the movies table released after the year 2000: 
select name,year from movies where year>2000;

-- 4. Find the top 5 movies with the highest rank score: 
select * from movies ORDER BY rankscore desc limit 5;

-- 5. Count the number of male and female actors: 
select gender,count(*) as actors_gender_count from actors GROUP BY gender;
select * from actors where gender="F";

-- 6. Find the actors who played 'Demon' role in any movie: 
select a.id,a.first_name,a.last_name,r.role from actors a right join roles r on a.id=r.actor_id where role="Demon"; 

-- 7. List all genres of movie with movie id = 1 belongs to: 
select movie_id,genre from movies_genres where movie_id=1;

-- 8. Find all movies directed by 'Anthony Abrams': 
select m.name,concat(d.first_name," ",d.last_name) as full_name from movies m left join movies_directors md on m.id=md.movie_id
left join directors d on d.id=md.director_id where concat(d.first_name," ",d.last_name) ="Anthony Abrams";

-- 9. Count the number of movies in each genre: 
select mg.genre,count(m.id) genre_movie_count from movies m right join movies_genres mg on m.id=mg.movie_id GROUP BY mg.genre;
select genre,count(*) from movies_genres GROUP BY genre;

-- 10. Find the top 5 directors with the highest average rank score: 
select d.first_name,d.last_name,m.name,avg(m.rankscore) as average_rankscore from movies m 
left join movies_directors md on m.id=md.movie_id right join directors d on d.id=md.director_id 
group by d.first_name,d.last_name,m.name ORDER BY avg(m.rankscore) desc LIMIT 5;

-- 11. List all the directors who have directed movies in more than one genre: 
select d.first_name,d.last_name,dg.genre from directors d left join directors_genres dg on d.id=dg.director_id where dg.director_id in
(select dg.genre from directors_genres GROUP BY dg.genre having count(dg.director_id)>1)
GROUP BY d.first_name,d.last_name,dg.genre;

-- 12. Find all actors who have worked in movies from the 'Action' genre:
select concat(a.first_name," ",a.last_name) as actor_fullname from actors a left join roles on a.id=roles.actor_id 
right join movies_genres mg on roles.movie_id=mg.movie_id where mg.genre="Action";

-- 13. Find all actors who have acted in more than 5 movies: 
select concat(a.first_name," ",a.last_name)as fullname,a.id from actors a left join roles on a.id=roles.actor_id where roles.actor_id in
(select roles.actor_id from actors GROUP BY roles.actor_id having count(roles.movie_id)>5);

-- 14. List all movies along with their directors and genres:
select m.name,concat(d.first_name," ",d.last_name) as director_fullname,mg.genre from movies m right join movies_genres mg
on m.id=mg.movie_id left join movies_directors md on mg.movie_id=md.movie_id inner join directors d on d.id=md.director_id;

-- 15. Find the genre in which the highest number of directors have worked:
select genre,count(director_id) as counts from directors_genres GROUP BY genre ORDER BY counts desc limit 1;