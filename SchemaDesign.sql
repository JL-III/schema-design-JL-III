-- DROP TABLE location_table;
-- DROP TABLE person_interest;
-- DROP TABLE person_table;
-- DROP TABLE interest_table;

-- SELECT * FROM location_table;
-- SELECT * FROM person_interest;
-- SELECT * FROM person_table;
-- SELECT * FROM interest_table;

-- CREATE TABLE person_table (
--     id SERIAL PRIMARY KEY,
--     firstName VARCHAR NOT NULL,
--     lastName VARCHAR NOT NULL,
--     age INTEGER NOT NULL,
--     location_ID INTEGER,
--     FOREIGN KEY (location_id) REFERENCES location_table(id)
-- );

-- CREATE TABLE interest_table (
--     id serial primary key,
--     title varchar NOT NULL
-- );

-- CREATE TABLE person_interest (
--     person_id integer,
--     interest_id integer,
--     FOREIGN KEY (person_id) REFERENCES person_table(id),
--     FOREIGN KEY (interest_id) REFERENCES interest_table(id)
-- );

-- CREATE TABLE location_table (
--     id serial primary key,
--     city varchar NOT NULL,
--     state_ varchar NOT NULL,
--     country varchar NOT NULL
-- );

-- INSERT INTO location_table (city, state_, country)
-- VALUES ('Nashville', 'Tennessee', 'United States'),
--        ('Memphis', 'Tennessee', 'United States'),
--        ('Phoenix', 'Arizona', 'United States'),
--        ('Denver', 'Colorado', 'United States');

-- INSERT INTO person_table (firstName, lastName, age, location_id)
-- VALUES ('Chickie', 'Ourtic', 21, 1),
--        ('Hilton', 'O''Hanley', 37, 1),
--        ('Barbe', 'Purver', 50, 3),
--        ('Reeta', 'Sammons', 34, 2),
--        ('Abbott', 'Fisbburne', 49, 1),
--        ('Winne', 'Whines', 19, 4),       
--        ('Samantha', 'Leese', 35, 2),       
--        ('Edouard', 'Lorimer', 29, 1),       
--        ('Mattheus', 'Shaplin', 27, 3),       
--        ('Donnell', 'Corney', 25, 3),       
--        ('Wallis', 'Kauschke', 28, 3),       
--        ('Melva', 'Lanham', 20, 2),       
--        ('Amelina', 'McNirlan', 22, 4),       
--        ('Courtney', 'Holley', 22, 1),       
--        ('Sigismond', 'Vala', 21, 4),       
--        ('Jacquelynn', 'Halfacre', 24, 2),       
--        ('Alanna', 'Spino', 25, 3),       
--        ('Isa', 'Slight', 32, 1),       
--        ('Kakalina', 'Renne', 26, 3);   

-- INSERT INTO interest_table (title)
-- VALUES ('Programming'),
--        ('Gaming'),
--        ('Computers'),
--        ('Music'),
--        ('Movies'),
--        ('Cooking'),
--        ('Sports');

-- INSERT INTO person_interest (person_id, interest_id)
-- VALUES  (1,1),
--         (1,	1),
--         (1,	2),
--         (1,	6),
--         (2,	1),
--         (2,	7),
--         (2,	4),
--         (3,	1),
--         (3,	3),
--         (3,	4),
--         (4,	1),
--         (4,	2),
--         (4,	7),
--         (5,	6),
--         (5,	3),
--         (5,	4),
--         (6,	2),
--         (6,	7),
--         (7,	1),
--         (7,	3),
--         (8,	2),
--         (8,	4),
--         (9,	5),
--         (9,	6),
--         (10, 7),
--         (10, 5),
--         (11, 1),
--         (11, 2),
--         (11, 5),
--         (12, 1),
--         (12, 4),
--         (12, 5),
--         (13, 2),
--         (13, 3),
--         (13, 7),
--         (14, 2),
--         (14, 4),
--         (14, 6),
--         (15, 1),
--         (15, 5),
--         (15, 7),
--         (16, 2),
--         (16, 3),
--         (16, 4),
--         (17, 1),
--         (17, 3),
--         (17, 5),
--         (17, 7),
--         (18, 2),
--         (18, 4),
--         (18, 6),
--         (19, 1),
--         (19, 2),
--         (19, 3),
--         (19, 4),
--         (19, 5),
--         (19, 6),
--         (19, 7);

-- UPDATE person_table SET age = age + 1 WHERE firstName = 'Chickie' AND lastName = 'Ourtic';
-- UPDATE person_table SET age = age + 1 WHERE firstName = 'Winnie' AND lastName = 'Whines';
-- UPDATE person_table SET age = age + 1 WHERE firstName = 'Edouard' AND lastName = 'Lorimer';
-- UPDATE person_table SET age = age + 1 WHERE firstName = 'Courtney' AND lastName = 'Holley';
-- UPDATE person_table SET age = age + 1 WHERE firstName = 'Melva' AND lastName = 'Lanham';
-- UPDATE person_table SET age = age + 1 WHERE firstName = 'Isa' AND lastName = 'Slight';
-- UPDATE person_table SET age = age + 1 WHERE firstName = 'Abbott' AND lastName = 'Fisbburne';
-- UPDATE person_table SET age = age + 1 WHERE firstName = 'Reeta' AND lastName = 'Sammons';

-- Collecting data to prepare to remove the employees from their account
-- SELECT * FROM person_table WHERE firstName = 'Hilton' AND lastName = 'O''Hanley' OR firstName = 'Alanna' AND lastName = 'Spino';
-- Hilton O'Hanley id == 2
-- Alanna Spino id == 17

--Double checked the table
--SELECT * FROM person_interest

-- DELETE FROM person_interest WHERE person_id = 2;
-- DELETE FROM person_interest WHERE person_id = 17;

-- DELETE FROM person_table WHERE firstName = 'Hilton' AND lastName = 'O''Hanley' OR firstName = 'Alanna' AND lastName = 'Spino';

--Gathering info
-- SELECT firstName, lastName FROM person_table;

--Find all people who live in Nashville, TN
-- SELECT person_table.firstName, person_table.lastName, location_table.city, location_table.state_
-- FROM person_table INNER JOIN location_table
-- ON location_table.id  = person_table.location_id
-- WHERE location_table.id = 1;


-- SELECT location_table.city, COUNT(location_table.city)
-- FROM person_table INNER JOIN location_table
-- ON location_table.id = person_table.location_id
-- GROUP BY location_table.city

-- Count number of people that have specific interests
-- SELECT interest_table.title, COUNT(interest_table.title)
-- FROM interest_table INNER JOIN person_interest
-- ON person_interest.interest_id = interest_table.id
-- GROUP BY interest_table.title

-- all the people who live in Nashville, TN and are interested in programming
-- SELECT DISTINCT person_table.firstName, person_table.lastName, location_table.city, location_table.state_, interest_table.title
-- FROM interest_table 
-- INNER JOIN person_interest ON person_interest.interest_id = interest_table.id
-- INNER JOIN person_table ON person_table.id = person_interest.person_id
-- INNER JOIN location_table ON person_table.location_id = location_table.id
-- WHERE interest_table.title = 'Programming' AND location_table.id = '1';

-- ADDED 'Other' category to account for ages outside of the ranges
SELECT
    CASE
      WHEN age >= 20 AND age <= 30 then '20-30'
      WHEN age >= 30 AND age <= 40 then '30-40'
      WHEN age >= 40 AND age <= 50 then '40-50'
      WHEN age < 20 OR age > 50 then 'Other'
    END AS "Range",
    COUNT(1) AS "Count"
  FROM person_table
  GROUP BY "Range"
  ORDER BY "Range" ASC;
