-- MOVIE DATABASE SCHEMA --
CREATE DATABASE MovieDB1;
USE MovieDB1;

-- 1. PRODUCTION_COMPANY --
CREATE TABLE ProductionCompany (
    CompanyID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255)
);

-- 2. PERSON (includes both actors and directors)--
CREATE TABLE Person (
    PersonID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    DateOfBirth DATE
);

-- 3. MOVIE --
CREATE TABLE MOVIE (
MOVIE_ID INT AUTO_INCREMENT PRIMARY KEY,
MOVIE_NAME VARCHAR(25) NOT NULL,
YEAR_D YEAR NOT NULL,
LENGTH INT,
PLOTOUTLINE TEXT,
CompanyID INT,
CONSTRAINT FK_MOVIE_COMPANY
	FOREIGN KEY (CompanyID)
    REFERENCES ProductionCompany(CompanyID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- 4. GENER --
CREATE TABLE GENER (
GENER_ID INT AUTO_INCREMENT PRIMARY KEY,
GENER_NAME VARCHAR(25) UNIQUE
);

-- 5. MOVEI GENER --
CREATE TABLE MOVIE_GENER (
MOVIE_ID INT,
CONSTRAINT FK_MOVIE_GENER
	FOREIGN KEY (MOVIE_ID)
    REFERENCES MOVIE(MOVIE_ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
GENER_ID INT,
CONSTRAINT FK_GENER_ID
	FOREIGN KEY (GENER_ID)
    REFERENCES GENER(GENER_ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
-- 6. MOVEI PERSON --
CREATE TABLE MOVIE_PERSON (
MOVIE_ID INT,
CONSTRAINT FK_MOVIE_ID
	FOREIGN KEY (MOVIE_ID)
    REFERENCES MOVIE(MOVIE_ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
PERSON_ID INT,
CONSTRAINT FK_PERSON_ID
	FOREIGN KEY (PERSON_ID)
    REFERENCES person(PersonID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
ROLE_TYPE VARCHAR(25),
CHARA_NAME VARCHAR(25)
);

-- 7. QUATE --
CREATE TABLE QUOTE (
QUOTE_ID INT AUTO_INCREMENT PRIMARY KEY,
QUOTE_TEXT TEXT,
MOVIE_ID INT,
CONSTRAINT FK_QUOTE_MOVIE
	FOREIGN KEY (MOVIE_ID)
    REFERENCES MOVIE(MOVIE_ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
PERSON_ID INT,
CONSTRAINT FK_QUOTE_PERSON
	FOREIGN KEY (PERSON_ID)
    REFERENCES person(PersonID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- PRODUCTIONCOMPANY
INSERT INTO PRODUCTIONCOMPANY(NAME,ADDRESS)
VALUES("DREAM WORK","USA"),
("WANER BROS","CALIFORNIA");

-- PERSON
INSERT INTO PERSON (NAME,DATEOFBIRTH)
VALUES('Christopher Nolan', '1970-07-30'),
       ('Leonardo DiCaprio', '1974-11-11'),
       ('Joseph Gordon-Levitt', '1981-02-17'),
       ('Elliot Page', '1987-02-21'),
       ('Quentin Tarantino', '1963-03-27');
       
-- MOVIE
INSERT INTO MOVIE (MOVIE_NAME,YEAR_D,LENGTH,PLOTOUTLINE,CompanyID)
VALUES('Inception', 2010, 148,'A thief enters dreams to steal secrets.',1),
       ('Pulp Fiction', 1994, 154,'The lives of criminals intertwine in Los Angeles.',2);
       
-- Genres
INSERT INTO GENER (Gener_Name)
VALUES ('Science Fiction'),
('Crime');

-- Link Movies with Genres
INSERT INTO Movie_Gener (Movie_ID, Gener_ID)
VALUES (1, 1), -- Inception -> Science Fiction
       (2, 2); -- Pulp Fiction -> Crime
       
-- Movie_Person (Roles)
-- Inception: Nolan (Director), Leonardo, Joseph, Elliot (Actors)
INSERT INTO Movie_Person (Movie_ID, Person_ID, Role_Type, Chara_Name)
VALUES (1, 1, 'Director', NULL),
       (1, 2, 'Actor', 'Cobb'),
       (1, 3, 'Actor', 'Arthur'),
       (1, 4, 'Actor', 'Ariadne');

-- Pulp Fiction: Tarantino (Director + Actor)
INSERT INTO Movie_Person (Movie_ID, Person_ID, Role_Type, Chara_Name)
VALUES (2, 5, 'Director', NULL),
       (2, 5, 'Actor', 'Jimmie Dimmick');

-- Quotes
INSERT INTO Quote (Quote_Text, Movie_ID, Person_ID)
VALUES ('You mustn’t be afraid to dream a little bigger, darling.', 1, 2),
       ('Just because you are a character doesn’t mean you have character.', 2, 5);