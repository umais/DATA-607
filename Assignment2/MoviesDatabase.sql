DROP TABLE IF EXISTS RecentMovie;
DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS PersonMovieRating;

CREATE TABLE RecentMovie (
  MovieId int auto_increment primary key,
  MovieName varchar(100),
  ReleaseDate date
  );
  
  CREATE TABLE Person (
  PersonId int auto_increment  PRIMARY KEY,
  FirstName varchar(100),
  LastName varchar(100)

  );
  
  CREATE TABLE PersonMovieRating (
  MovieId int ,
  PersonId int ,
  Rating Decimal(2,1),
  primary key(MovieId,PersonId)
  
  );
  
INSERT INTO RecentMovie(MovieName,ReleaseDate)VALUES('Get Out','2017-02-24');
INSERT INTO RecentMovie(MovieName,ReleaseDate) VALUES('Logan','2017-03-03'); -- 5
INSERT INTO RecentMovie(MovieName,ReleaseDate) VALUES('Spider Man Homecoming','2017-07-07'); -- 5
INSERT INTO RecentMovie(MovieName,ReleaseDate) VALUES('Wonder Women','2017-06-02');--  4
INSERT INTO RecentMovie(MovieName,ReleaseDate) VALUES('John Wick 2','2017-02-10'); -- 5
INSERT INTO RecentMovie(MovieName,ReleaseDate) VALUES('Gaurdian Of The Galaxy 2','2017-05-05');-- 3



INSERT INTO Person(FirstName,LastName)VALUES('Mussab','Aftab');
INSERT INTO Person(FirstName,LastName)VALUES('Ufariah','Midhat');
INSERT INTO Person(FirstName,LastName)VALUES('Sam','Anaum');
INSERT INTO Person(FirstName,LastName)VALUES('Steve','Attwell');
INSERT INTO Person(FirstName,LastName)VALUES('Bill','McCann');
INSERT INTO Person(FirstName,LastName)VALUES('Stephen','Jackson');
INSERT INTO Person(FirstName,LastName)VALUES('Saim','Siddiqui');


-- Ratings for Get Out
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(1,1,3);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(1,2,2.5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(1,3,2);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(1,4,2);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(1,5,2);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(1,6,2);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(1,7,2);

-- Ratings for Logan
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(2,1,5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(2,2,5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(2,3,3.5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(2,4,4);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(2,5,5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(2,6,5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(2,7,5);

-- Ratings for Spider Man Home Coming

INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(3,1,3.5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(3,2,4);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(3,3,5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(3,4,4.5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(3,5,3);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(3,6,5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(3,7,5);


-- Ratings for Wonder Women

INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(4,1,2.5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(4,2,3);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(4,3,4);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(4,4,5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(4,5,4);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(4,6,4);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(4,7,3);

-- Ratings for John Wick 2
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(5,1,5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(5,2,4);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(5,3,3);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(5,4,4);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(5,5,4);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(5,6,4);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(5,7,5);

-- Ratings for Gaurdian of the Galaxy 2
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(6,1,5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(6,2,4);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(6,3,3);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(6,4,4);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(6,5,4);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(6,6,4);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(6,7,5);


SELECT
	m.MovieName,
    p.FirstName,
    p.LastName,
    r.Rating 
FROM PersonMovieRating r INNER JOIN RecentMovie m 
on r.MovieId=m.MovieId
INNER JOIN Person p
ON r.personID=p.personid;
