CREATE Table person (
    student_id  SERIAL PRIMARY KEY,
    roll VARCHAR(20) UNIQUE NOT NULL,
    name VARCHAR(100) NOT NULL,
    age int,
    departmetn VARCHAR(50),
    score DECIMAL(5,2),
    status VARCHAR(50),
    last_login DATE 

)

SELECT * FROM person

ALTER Table person
  RENAME departmetn to department

  ALTER Table person
  alter COLUMN last_login Type TIMESTAMP


  --insert data to the table 

--   INSERT INTO person (roll, name, age, department, score, status, last_login)
VALUES
('CSE2023001', 'Shawon Ahmed', 22, 'CSE', 85.50, 'Passed', '2025-05-17 10:00:00'),
('CSE2023002', 'Nafis Rahman', 23, 'EEE', 72.00, 'Passed', '2025-05-16 18:30:00'),
('CSE2023003', 'Tania Akter', 21, 'CSE', 64.75, 'Passed', '2025-05-15 14:45:00'),
('CSE2023004', 'Jahin Hossain', 24, 'BBA', 58.00, 'Failed', '2025-05-14 20:10:00'),
('CSE2023005', 'Mim Sultana', 22, 'CSE', 90.00, 'Passed', '2025-05-13 09:05:00'),
('CSE2023006', 'Raihan Karim', 23, 'EEE', 77.25, 'Passed', '2025-05-12 22:30:00'),
('CSE2023007', 'Arif Hasan', 25, 'CSE', 69.50, 'Passed', '2025-05-11 12:15:00'),
('CSE2023008', 'Sadia Rahman', 22, 'English', 82.00, 'Passed', '2025-05-10 19:50:00'),
('CSE2023009', 'Fahim Uddin', 23, 'CSE', 55.00, 'Failed', '2025-05-09 17:25:00'),
('CSE2023010', 'Tahsin Islam', 24, 'EEE', 73.75, 'Passed', '2025-05-08 13:40:00'),
('CSE2023011', 'Israt Jahan', 21, 'CSE', 88.00, 'Passed', '2025-05-07 16:20:00'),
('CSE2023012', 'Zahid Hossain', 23, 'BBA', 61.50, 'Passed', '2025-05-06 21:10:00'),
('CSE2023013', 'Afia Noor', 22, 'CSE', 79.25, 'Passed', '2025-05-05 11:30:00'),
('CSE2023014', 'Rakib Hasan', 24, 'CSE', 68.00, 'Passed', '2025-05-04 14:15:00'),
('CSE2023015', 'Maruf Hossain', 23, 'EEE', 63.50, 'Passed', '2025-05-03 09:55:00'),
('CSE2023016', 'Afsana Jahan', 22, 'CSE', 87.00, 'Passed', '2025-05-02 18:00:00'),
('CSE2023017', 'Tanjil Mahmud', 21, 'English', 50.00, 'Failed', '2025-05-01 20:45:00'),
('CSE2023018', 'Nishat Tasnim', 22, 'CSE', 91.25, 'Passed', '2025-04-30 13:25:00'),
('CSE2023019', 'Fardin Islam', 23, 'EEE', 76.00, 'Passed', '2025-04-29 19:35:00'),
('CSE2023020', 'Tanvir Hasan', 24, 'CSE', 66.50, 'Passed', '2025-04-28 17:00:00');


--Add a column email (VARCHAR) to the existing students table.

ALTER Table person 
ADD COLUMN email VARCHAR(50)

--Rename the column email to student_email.
ALTER Table person
 RENAME email to student_email

 --Add a UNIQUE constraint to student_email.
ALTER Table person
ADD constraint student_email UNIQUE(student_email)

--Write a query to find all students who have a score greater than 80 and not null.
SELECT * FROM person
WHERE score>80 AND score is NOT NULL

--Use the NOT operator to exclude students from a specific department.
SELECT * FROM person
 WHERE NOT department = 'BBA'

 --Fetch students whose names start with ‘A’ using LIKE and ILIKE.
SELECT * FROM person
 WHERE name LIKE 'A%'

 SELECT * FROM person
 WHERE name ILIKE 'a%'

 --Select all students whose age is between 18 and 25.
SELECT * FROM person
WHERE age BETWEEN 21 AND 22

--Retrieve rows using IN for a specific set of roll numbers.
SELECT * FROM person
WHERE roll IN('CSE2023008','CSE2023001','CSE2023016')

--Count how many students exist in the students table.
SELECT count(student_id) as TotalStudent FROM person

--Find the average score of students in a specific department.
SELECT avg(score) as cse_avg_score FROM person WHERE department='CSE'

--Get the maximum and minimum age of all students.
SELECT max(age) as max_age FROM person

SELECT min(age) as min_age FROM person

--Update the status of students who scored less than 50 to 'failed'.
UPDATE person 
SET status='Got A+'
WHERE score>=80

SELECT * FROM person WHERE status='Got A+'


--Delete students who have not logged in since last year.
DELETE FROM person
WHERE last_login < '2025-05-10';


--Use LIMIT and OFFSET to fetch the second page of results (5 per page).
SELECT * FROM person LIMIT 2 OFFSET 2

