CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(25) NOT NULL
)

SELECT * FROM "user"

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title TEXT,
    user_id INTEGER REFERENCES "user"(id)
)

--preventing posting from null id

ALTER Table post
 ALTER COLUMN user_id SET NOT NULL

SELECT * FROM post

INSERT INTO "user" (user_name) VALUES
    ('John'),
    ('Don'),
    ('Harry'),
    ('Brook')


INSERT INTO post (title, user_id) VALUES
('Learning PostgreSQL Basics', 1),
('Building a REST API with Node.js', 2),
('Frontend Tips for React Developers', 3),
('Deploying MERN Stack Projects', 4);


--try to insert a post with null id

-- INSERT INTO post (title,user_id) VALUES('test',NULL)

--Retrive all post title with thier user name

SELECT title, user_name FROM post JOIN "user"
ON post.user_id = "user".id

--left join

SELECT title, user_name FROM post LEFT JOIN "user"
ON post.user_id = "user".id

--full join

SELECT title, user_name FROM post FULL JOIN "user"
ON post.user_id = "user".id