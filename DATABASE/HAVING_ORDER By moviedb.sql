-- ===========================================================
-- MOVIE DATABASE GROUP BY / HAVING / ORDER BY PRACTICE
-- ===========================================================
-- This script assumes you already created and loaded data
-- in the MovieDB database.
-- ===========================================================

USE MovieDB;

-- ===========================================================
-- SECTION 1: SIMPLE GROUP BY QUERIES
-- ===========================================================

-- 1. Count how many movies are in the table
SELECT COUNT(*) AS TotalMovies FROM Movie;

-- 2. Count how many people are in the Person table
SELECT COUNT(*) AS TotalPeople FROM Person;

-- 3. Count movies by year
SELECT 
    Year, 
    COUNT(MovieID) AS TotalMovies
FROM Movie
GROUP BY Year;

-- 4. Count movies by production company
SELECT 
    CompanyID, 
    COUNT(MovieID) AS TotalMovies
FROM Movie
GROUP BY CompanyID;

-- 5. Get the total number of genres assigned per movie
SELECT 
    MovieID, 
    COUNT(GenreID) AS NumberOfGenres
FROM Movie_Genre
GROUP BY MovieID;

-- ===========================================================
-- SECTION 2: USING ORDER BY WITH GROUP BY
-- ===========================================================

-- 6. Count movies per production company, sorted by total movies
SELECT 
    pc.Name AS ProductionCompany,
    COUNT(m.MovieID) AS TotalMovies
FROM ProductionCompany pc
LEFT JOIN Movie m ON pc.CompanyID = m.CompanyID
GROUP BY pc.Name
ORDER BY TotalMovies DESC;

-- 7. Show average movie length by year, longest first
SELECT 
    Year, 
    ROUND(AVG(Length), 2) AS AvgLength
FROM Movie
GROUP BY Year
ORDER BY AvgLength DESC;

-- ===========================================================
-- SECTION 3: ADDING HAVING CLAUSE
-- ===========================================================

-- 8. Show only years that have more than 1 movie
SELECT 
    Year, 
    COUNT(MovieID) AS TotalMovies
FROM Movie
GROUP BY Year
HAVING COUNT(MovieID) > 1
ORDER BY Year;

-- 9. Show production companies with more than 1 movie
SELECT 
    pc.Name AS ProductionCompany,
    COUNT(m.MovieID) AS TotalMovies
FROM ProductionCompany pc
INNER JOIN Movie m ON pc.CompanyID = m.CompanyID
GROUP BY pc.Name
HAVING COUNT(m.MovieID) > 1;

-- 10. Show movies that belong to 2 or more genres
SELECT 
    m.Title AS MovieTitle,
    COUNT(g.GenreID) AS NumberOfGenres
FROM Movie m
INNER JOIN Movie_Genre mg ON m.MovieID = mg.MovieID
INNER JOIN Genre g ON mg.GenreID = g.GenreID
GROUP BY m.Title
HAVING COUNT(g.GenreID) >= 0
ORDER BY NumberOfGenres DESC;

-- ===========================================================
-- SECTION 4: COMBINED ANALYSIS (HARDER)
-- ===========================================================

-- 11. Count how many actors per movie
SELECT 
    m.Title AS MovieTitle, 
    COUNT(mp.PersonID) AS TotalActors
FROM Movie m
INNER JOIN Movie_Person mp ON m.MovieID = mp.MovieID
WHERE mp.RoleType = 'Actor'
GROUP BY m.Title
ORDER BY TotalActors DESC;

-- 12. Count how many movies each director has directed
SELECT 
    p.Name AS Director,
    COUNT(mp.MovieID) AS MoviesDirected
FROM Person p
INNER JOIN Movie_Person mp ON p.PersonID = mp.PersonID
WHERE mp.RoleType IN ('Director', 'Both')
GROUP BY p.Name
HAVING COUNT(mp.MovieID) >= 1
ORDER BY MoviesDirected DESC;

-- 13. Average movie length per production company
SELECT 
    pc.Name AS ProductionCompany,
    ROUND(AVG(m.Length), 2) AS AverageLength
FROM ProductionCompany pc
INNER JOIN Movie m ON pc.CompanyID = m.CompanyID
GROUP BY pc.Name
ORDER BY AverageLength DESC;

-- 14. Count how many quotes each person has
SELECT 
    p.Name AS PersonName,
    COUNT(q.QuoteID) AS TotalQuotes
FROM Person p
LEFT JOIN Quote q ON p.PersonID = q.PersonID
GROUP BY p.Name
HAVING COUNT(q.QuoteID) > 0
ORDER BY TotalQuotes DESC;

-- 15. Count the total number of roles each person played across all movies
SELECT 
    p.Name AS PersonName,
    COUNT(mp.MovieID) AS TotalRoles
FROM Person p
INNER JOIN Movie_Person mp ON p.PersonID = mp.PersonID
GROUP BY p.Name
ORDER BY TotalRoles DESC;

-- ===========================================================
-- SECTION 5: ADVANCED INSIGHTFUL ANALYSIS
-- ===========================================================

-- 16. Show the average birth year of all actors per movie
SELECT 
    m.Title AS MovieTitle,
    ROUND(AVG(YEAR(p.DateOfBirth)), 0) AS AvgActorBirthYear
FROM Movie m
INNER JOIN Movie_Person mp ON m.MovieID = mp.MovieID
INNER JOIN Person p ON mp.PersonID = p.PersonID
WHERE mp.RoleType = 'Actor'
GROUP BY m.Title
ORDER BY AvgActorBirthYear ASC;

-- 17. Show movies with the highest number of total people involved (actors + directors)
SELECT 
    m.Title AS MovieTitle,
    COUNT(mp.PersonID) AS TotalPeople
FROM Movie m
INNER JOIN Movie_Person mp ON m.MovieID = mp.MovieID
GROUP BY m.Title
ORDER BY TotalPeople DESC;

-- 18. Show number of movies each person worked on (in any role)
SELECT 
    p.Name AS PersonName,
    COUNT(DISTINCT mp.MovieID) AS MoviesInvolved
FROM Person p
INNER JOIN Movie_Person mp ON p.PersonID = mp.PersonID
GROUP BY p.Name
HAVING COUNT(DISTINCT mp.MovieID) > 0
ORDER BY MoviesInvolved DESC;

-- ===========================================================
-- END OF FILE
-- ===========================================================
