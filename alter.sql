-- Active: 1747419213330@@localhost@5432@ph@public
SELECT * FROM user2


--add a column with alter
ALTER TABLE user2 
  ADD COLUMN email VARCHAR(25) DEFAULT'default@gmail.com' NOT NULL

  -- insert a value
  INSERT INTO user2 
  VALUES(4,22,'robin','robin@gmail.com')

  -- delete a value

  ALTER TABLE user2
  DROP email

  -- rename a column name

  ALTER Table user2
    RENAME COLUMN age TO person_age

-- change type of a column

ALTER TABLE user2
  ALTER COLUMN user_name type VARCHAR(50)

  --how to add a constraints to a column

  ALTER TABLE user2
  ALTER COLUMN user_name set NOT NULL

  --how to delete a constraints
  ALTER TABLE user2
  ALTER COLUMN user_name DROP NOT NULL


-- Alter table for primary key, unique etc

ALTER Table user2
 ADD constraint unique_user2_user_age UNIQUE(person_age)