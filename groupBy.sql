--group by

SELECT * FROM students

--now group by the students country
SELECT country, count(*) as totalStudent, avg(age) as average_age FROM students
GROUP BY country

--now we want to see the country group whose has avg age group of getter than 20

SELECT country, count(*) as totalStudent, avg(age) as average_age FROM students
GROUP BY country
HAVING avg(age)>20

--having is used only in group 

--Count student born in each year
SELECT extract(YEAR FROM dob) as birth_year, count(*) as total_student
 from students
GROUP BY birth_year