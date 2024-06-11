~~~sql
~~~
# ex-1

1.Find the title of each film  
~~~sql 
SELECT title FROM movies;    
~~~  
2.Find the director of each film
~~~sql
    SELECT director FROM movies;
~~~  
3.Find the title and director of each film   
~~~sql
    SELECT title,director FROM movies;
~~~
4.Find the title and year of each film   
~~~sql
    SELECT title,year FROM movies;
~~~
5.Find all the information about each film   
~~~sql
    SELECT * FROM movies;
~~~
![ex-1](image-7.png)

# ex-2

1.Find the movie with a row id of 6   
~~~sql
    SELECT * FROM movies
    where id = 6;
~~~
2.Find the movies released in the years between 2000 and 2010  
~~~sql
    SELECT * FROM movies
    where year between 2000 and 2010;   
~~~
3.Find the movies not released in the years between 2000 and 2010  
~~~sql
    SELECT * FROM movies
    where year not between 2000 and 2010;
~~~
4.Find the first 5 Pixar movies and their release year  
~~~sql
    SELECT title,year FROM movies
     limit 5; // where year in (2001,2007,2010)
~~~
![ex-2](image-8.png) 

# ex-3
1.Find all the Toy Story movies  
~~~sql
    SELECT * FROM movies
    where title like "toy story%" ;
~~~
2.Find all the movies directed by John Lasseter  
~~~sql
    SELECT * FROM movies
    where director = "John Lasseter";
~~~
3.Find all the movies (and director) not directed by John Lasseter  
~~~sql
    SELECT * FROM movies
    where director != "John Lasseter";
~~~
4.Find all the WALL-* movies  
~~~sql
    SELECT * FROM movies
    where title like  "%WALL-%";
~~~
![EX-3](image-9.png) 
# EX-4 
1.List all directors of Pixar movies (alphabetically), without duplicates
~~~sql
    SELECT Distinct director FROM movies
    order by director;
~~~
2.List the last four Pixar movies released (ordered from most recent to least)
~~~sql
    SELECT * FROM movies
    where year order by year desc limit 4;
~~~
3.List the first five Pixar movies sorted alphabetically
~~~sql
    SELECT * FROM movies
    order by title asc limit 5;
~~~
4.List the next five Pixar movies sorted alphabetically
~~~sql
    SELECT * FROM movies
    order by title asc limit 5 offset 5;
~~~
![ex-4](image-10.png)
# ex-5
1.List all the Canadian cities and their populations
~~~sql
    SELECT city, population  FROM north_american_cities
    where country like "canada";//=
~~~
2.Order all the cities in the United States by their latitude from north to south
~~~sql
    SELECT city FROM north_american_cities
    where country like "united states" order by latitude desc;
~~~
3.List all the cities west of Chicago, ordered from west to east
~~~sql
SELECT * FROM north_american_cities
where longitude < (select longitude FROM north_american_cities 
where city = "Chicago") order by longitude;
~~~
~~~sql
SELECT * FROM north_american_cities
where longitude < -87.629798
order by longitude;
~~~
4.List the two largest cities in Mexico (by population)
~~~sql
    SELECT * FROM north_american_cities
    where country = "Mexico" order by population desc limit 2;
~~~
5.List the third and fourth largest cities (by population) in the United States and their population
~~~sql
    SELECT * FROM north_american_cities
    where country = "United States" order by population desc limit 2 offset 2;
~~~
![ex-5](image-11.png)

# EX-6 
1.Find the domestic and international sales for each movie
~~~sql
    SELECT title,Domestic_sales,International_sales FROM Movies 
    INNER JOIN Boxoffice on Movies.Id = Boxoffice.Movie_id ;
~~~
2.Show the sales numbers for each movie that did better internationally rather than domestically
~~~sql
    SELECT title,	Domestic_sales, International_sales FROM movies as mv
    INNER JOIN Boxoffice as bo on mv.Id = bo.Movie_id
    where  International_sales > Domestic_sales
;
~~~
3.List all the movies by their ratings in descending order
~~~sql
    SELECT title,rating FROM movies as mv
    INNER JOIN Boxoffice as bo on mv.Id = bo.Movie_id
    order by rating desc;
~~~
![ex-6](image-12.png)
# EX-7
1.Find the list of all buildings that have employees
~~~sql
    SELECT distinct building FROM employees
    join buildings on employees.building = buildings.building_name;
~~~
~~~sql
    SELECT distinct building FROM employees
~~~~
2.Find the list of all buildings and their capacity
~~~sql
    SELECT building_name,capacity FROM buildings;
~~~
3.List all buildings and the distinct employee roles in each building (including empty buildings)
~~~sql
    SELECT distinct role , building_name FROM buildings
    left join employees on buildings.building_name = employees.building;
~~~

![ex-7](image-13.png)
# ex-8
1.Find the name and role of all employees who have not been assigned to a building
~~~sql
    SELECT role , name FROM employees
    where building is null;
~~~

2.Find the names of the buildings that hold no employees
~~~sql
    SELECT building_name  FROM buildings
    left join employees on buildings.building_name = employees.building
    where building is null;
~~~
![ex-8](image-14.png)
#  ex-9
1.List all movies and their combined sales in millions of dollars
~~~sql
    SELECT title ,(Domestic_sales+International_sales)/1000000 
    as combined_sale FROM movies
    join Boxoffice on Id = Movie_id;
~~~
2.List all movies and their ratings in percent
~~~sql
    SELECT title, (rating)*10 FROM movies
    join Boxoffice on Id = Movie_id;
~~~
3.List all movies that were released on even number years
~~~sql
    SELECT title, (year) FROM movies
    where year%2==0 ;
~~~
![ex-9](image-15.png)
# ex-10
1.Find the longest time that an employee has been at the studio
~~~sql
SELECT max(	Years_employed)	 FROM employees;
~~~
2.For each role, find the average number of years employed by employees in that role
~~~sql
    SELECT role ,avg(Years_employed) FROM employees
    group by role;
~~~
3.Find the total number of employee years worked in each building
~~~sql
    SELECT building ,sum(Years_employed) FROM employees
    group by building;
~~~
![ex-10](image-16.png)
# EX-11
1.Find the number of Artists in the studio (without a HAVING clause)
~~~sql
    SELECT count(role) FROM employees 
    where role like ("%Artist%")
    group by role ;
~~~
2.Find the number of Employees of each role in the studio
~~~sql
    SELECT count(name) ,role FROM employees 
    group by role ;
~~~
3.Find the total number of years employed by all Engineers
~~~sql
    SELECT sum(	Years_employed), role FROM employees
    where role like ("%Engineer")
    group by role;
~~~
![ex-11](image-17.png)

# EX-12
1.Find the number of movies each director has directed
~~~sql
    SELECT count(Title) ,Director FROM movies
    group by director;
~~~
2.Find the total domestic and international sales that can be attributed to each director
~~~sql
    SELECT sum(Domestic_sales+International_sales) as total ,Director 
    FROM movies
    join Boxoffice on id = Movie_id
    group by director;
~~~
![ex-12](image-18.png)

# EX-13
1.Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
~~~sql

~~~
2.Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the BoxOffice table.
~~~sql

~~~