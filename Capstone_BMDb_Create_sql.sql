-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table bmdb.Movie (
ID integer primary key auto_increment,
Title varchar(255) not null unique,
Year integer not null
-- CONSTRAINT utitle unique (Title)
);

-- create Actor table
-- DROP TABLE IF EXISTS Actor;
Create table bmdb.Actor (
ID integer primary key auto_increment,
FirstName varchar(255) not null,
LastName varchar(255) not null,
Gender varchar(1) not null,
BirthDate date not null,
CONSTRAINT fname_lname unique (FirstName, LastName)
);

-- create Credits table
Create table bmdb.Credits (
ID integer primary key auto_increment,
ActorID integer not null,
MovieID integer not null,
CharacterName varchar(255),

Foreign Key (ActorID) references Actor(ID),
Foreign Key (MovieID) references Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID)
);

-- Add some movies
 insert into Movie VALUES
 	(1, 'Revenge of the Nerds', 1984),
 	(2, 'Avengers Infinity War', 2018),
    (3, 'Tequila Sunrise', 1988),
    (4, 'Office Space', 1999),
    (5, 'Rollerball', 1975),
    (6, 'Highlander', 1986),
    (7, 'Animal House', 1978),
    (8, 'A Clockwork Orange', 1971),
    (9, 'Planet of the Apes', 1968),
    (10, 'The Paper Chase', 1973);
        
-- Add some movies
 insert into Actor VALUES
 	(1, 'Robert', 'Downey Jr.', 'M', '1965-4-4'),
 	(2, 'Chris', 'Hemsworth', 'M', '1983-09-11'),
    (3, 'Scarlett', 'Johansson', 'F', '1984-11-22'),
 	(4, 'Robert', 'Carradine', 'M', '1954-3-24'),
 	(5, 'Anthony', 'Edwards', 'M', '1962-7-19'),
    (6, 'Mel', 'Gibson', 'M', '1956-1-3'),
    (7, 'Kurt', 'Russell', 'M', '1951-3-17'),
    (8, 'Ron', 'Livingston', 'M', '1967-6-5'),
    (9, 'Jennifer', 'Aniston', 'F', '1969-2-11'),
    (10, 'James', 'Caan', 'M', '1940-3-26'),
    (11, 'John', 'Houseman', 'M', '1902-9-22'),
    (12, 'Christopher', 'Lambert', 'M', '1957-3-29'),
    (13, 'Sean', 'Connery', 'M', '1930-8-25'),
    (14, 'John', 'Belushi', 'M', '1949-1-24'),
    (15, 'Tim', 'Matheson', 'M', '1947-12-31'),
    (16, 'Malcolm', 'McDowell', 'M', '1943-6-13'),
    (17, 'Michael', 'Tarn', 'M', '1953-12-18'),
    (18, 'Charlton', 'Heston', 'M', '1923-10-4'),
    (19, 'Roddy', 'McDowall', 'M', '1928-9-17'),
    (20, 'Lindsay', 'Wagner', 'F', '1949-6-22');
    
-- Add movie credits for actors
 insert into Credits (ActorID, MovieID, CharacterName) VALUES
 	(1, 2, 'Tony Stark - Iron Man'),
    (2, 2, 'Thor'),
    (3, 2, 'Natasha Romanoff - Black Widow'),
    (4, 1, 'Lewis'),
    (5, 1, 'Gilbert'),
    (6, 3, 'Dale "Mac" McKussic'),
    (7, 3, 'Nick Frescia'),
    (8, 4, 'Peter Gibbons'),
    (9, 4, 'Joanna'),
    (10, 5, 'Jonathan E'),
    (11, 5, 'Mr. Bartholomew'),
    (12, 6, 'Connor MacLeod'),
    (13, 6, 'Juan Sánchez Villa-Lobos Ramírez'),
    (14, 7, 'John "Bluto" Blutarsky'),
    (15, 7, 'Eric "Otter" Stratton'),
    (16, 8, 'Alex DeLarge'),
    (17, 8, 'Pete'),
    (18, 9, 'Taylor'),
    (19, 9, 'Cornelius'),
    (20, 10, 'Susan Fields'),
    (11, 10, 'Charles W. Kingsfield Jr.');


-- create a user and grant privileges to that user
CREATE USER bmdb_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON bmdb.* TO bmdb_user@localhost;