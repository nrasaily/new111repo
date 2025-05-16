-- this is a comment

-- in sql there are 2statement (and everything is a statement)
--1. command: These are statement that when exucuted effect some change on the database.
--2. Queries: These are the statement that when exucated return data for read-only purpose.

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    hobbies TEXT,
    is_online BOOLEAN DEFAULT 1
);

--CRUDS

--Create
INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES (
    "Rafael",
    "RPL",
    "DIY stuff and watching TV"
);

--read
SELECT *FROM user WHERE id = 1;

--Optinal examples to try;
SELECT last_name, first_name, hobbies FROM user WHERE id=1;
SELECT last_name, first_name FROM user WHERE id > 5 and first_name="Rafael";

--Scan (is tecnically a type of read operation)
SELECT * FROM user;

--update
update user SET 
    first_name="John",
    last_name="Doe",
    hobbies="Playing golf and watching tennis"
WHERE id =1;

--Delete
DELETE FROM user WHERE id = 1;

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    hobbies TEXT,
    is_online BOOLEAN DEFAULT 1
);
INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES (
    "Jane",
    "Doe",
    "Playing tenis and video games"
);



INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES (
    "Jenny",
    "Rogers",
    "Code and like to watch YouTube Videos"
);

INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES (
    "Tom",
    "Jones",
    "Ski and go bird watching"
);

update user SET 
    first_name="Thomas",
    last_name="Doe",
    hobbies="Playing golf and watching tennis"
WHERE first_name = "Tom";

DELETE FROM user WHERE first_name="Jane" and last_name="Doe";


SELECT last_name, first_name, hobbies and id FROM users;


--database table for vehicles
CREATE TABLE vehicles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    make VARCHAR(50),
    model VARCHAR(50),
    year INTEGER,
    owner_id INTEGER,
    FOREIGN KEY (owner_id) REFERENCES user(id) 
);