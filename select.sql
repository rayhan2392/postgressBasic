CREATE TABLE students (
student_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INT,
grade CHAR(2),
course VARCHAR(50),
email VARCHAR(100),
dob DATE,
blood_group VARCHAR(5),
country VARCHAR(50)

)

SELECT * FROM students

-- insert 20 data in this student table
-- INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
-- ('John', 'Doe', 20, 'A+', 'Computer Science', 'john.doe@example.com', '2004-05-15', 'O+', 'USA'),
-- ('Emma', 'Smith', 19, 'B', 'Mathematics', 'emma.smith@example.com', '2005-08-23', 'A-', 'Canada'),
-- ('Liam', 'Johnson', 22, 'A', 'Physics', 'liam.johnson@example.com', '2002-01-30', 'B+', 'UK'),
-- ('Olivia', 'Brown', 21, 'C+', 'Biology', 'olivia.brown@example.com', '2003-07-19', 'AB+', 'Australia'),
-- ('Noah', 'Williams', 20, 'A-', 'Chemistry', 'noah.williams@example.com', '2004-03-12', 'O-', 'USA'),
-- ('Ava', 'Jones', 18, 'B+', 'History', 'ava.jones@example.com', '2006-09-08', 'B-', 'Canada'),
-- ('Elijah', 'Garcia', 23, 'A+', 'Philosophy', 'elijah.garcia@example.com', '2001-11-04', 'A+', 'Spain'),
-- ('Sophia', 'Martinez', 20, 'B', 'Economics', 'sophia.martinez@example.com', '2004-02-27', 'O+', 'Mexico'),
-- ('William', 'Rodriguez', 19, 'A', 'Statistics', 'william.rodriguez@example.com', '2005-06-13', 'AB-', 'Brazil'),
-- ('Isabella', 'Lee', 22, 'C', 'English Literature', 'isabella.lee@example.com', '2002-10-22', 'B+', 'South Korea'),
-- ('James', 'Hernandez', 21, 'A-', 'Engineering', 'james.hernandez@example.com', '2003-12-09', 'O+', 'USA'),
-- ('Mia', 'Lopez', 20, 'B+', 'Political Science', 'mia.lopez@example.com', '2004-04-30', 'A-', 'Argentina'),
-- ('Benjamin', 'Gonzalez', 18, 'A+', 'Music', 'benjamin.gonzalez@example.com', '2006-07-14', 'O-', 'Chile'),
-- ('Charlotte', 'Perez', 19, 'B-', 'Art', 'charlotte.perez@example.com', '2005-03-20', 'B+', 'Peru'),
-- ('Lucas', 'Wilson', 21, 'A', 'Law', 'lucas.wilson@example.com', '2003-09-16', 'A+', 'USA'),
-- ('Amelia', 'Anderson', 23, 'C+', 'Medicine', 'amelia.anderson@example.com', '2001-05-25', 'AB+', 'Canada'),
-- ('Henry', 'Thomas', 20, 'A-', 'Computer Science', 'henry.thomas@example.com', '2004-06-11', 'B-', 'UK'),
-- ('Evelyn', 'Taylor', 19, 'B+', 'Mathematics', 'evelyn.taylor@example.com', '2005-01-29', 'O+', 'Australia'),
-- ('Alexander', 'Moore', 22, 'A+', 'Physics', 'alexander.moore@example.com', '2002-08-05', 'A-', 'USA'),
-- ('Harper', 'Jackson', 21, 'B', 'Chemistry', 'harper.jackson@example.com', '2003-11-17', 'O+', 'Canada');
SELECT email,age,blood_group FROM students

--we can rename the column name while  quering

SELECT email as studentEmail FROM students

-- order column by ascending or discending

SELECT * FROM students ORDER BY dob DESC

-- get distinct of unique value of a column

SELECT DISTINCT age FROM students

--Data filtering
SELECT * FROM students
WHERE country='USA'

SELECT * FROM students
WHERE age=20 AND country='USA'

SELECT * FROM students
WHERE blood_group='A+' AND grade='A+'

--select a student with grade A or B in math or physics
SELECT * FROM students
WHERE (grade='A' OR grade='B') AND (course='Mathematics' OR course='Physics')

SELECT COUNT(student_id) AS total_students FROM students;

SELECT country, COUNT(student_id) AS total_students
FROM students
GROUP BY country;

--count the average age of students

SELECT avg(age) as average_age FROM students


SELECT max(age) as max_age FROM students

SELECT * FROM students
WHERE email IS NOT NULL


--query based on multiple country 

-- manual way
SELECT * FROM students
WHERE country='UK' OR country='USA' OR country='Canada'

--more effiecient way to do this with IN operator

SELECT * FROM students
WHERE country IN('USA','UK','Canada')

--In Between operator

SELECT * FROM students WHERE age  BETWEEN 19 AND 20 ORDER BY age ASC

--like operator (case sensitive)

SELECT * FROM students
WHERE first_name LIKE 'E%';

-- ilike operator (case in-sensitive)
SELECT * FROM students
WHERE first_name ILIKE 'e%';

--pagination with Limit and offset

SELECT * FROM students LIMIT 5 OFFSET 5

--lets see how can we do pagination with it

SELECT * FROM students LIMIT 5 OFFSET 5*0

SELECT * FROM students LIMIT 5 OFFSET 5*1

SELECT * FROM students LIMIT 5 OFFSET 5*2

SELECT * FROM students LIMIT 5 OFFSET 5*3
