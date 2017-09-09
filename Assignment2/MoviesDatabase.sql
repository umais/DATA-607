DROP TABLE IF EXISTS RecentMovie;
DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS PersonMovieRating;

CREATE TABLE RecentMovie (
  MovieId int auto_increment primary key,
  MovieName varchar(100),
  ReleaseDate date
  );
  
  CREATE TABLE Person (
  Id int auto_increment  PRIMARY KEY,
  FirstName varchar(100),
  LastName varchar(100)

  );
  
  CREATE TABLE PersonMovieRating (
  MovieId int primary key,
  PersonId int primary key,
  Rating Decimal(2,1)
  
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



INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(1,1,3);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(1,2,2.5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(1,3,2);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(1,4,2);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(1,5,2);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(1,6,2);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(1,7,2);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(2,1,5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(2,2,5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(2,3,3.5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(2,4,4);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(2,5,5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(2,6,5);
INSERT INTO PersonMovieRating(MovieId,PersonId,Rating) VALUES(2,7,5);

SELECT m.MovieName,p.FirstName,p.LastName,r.Rating 
FROM PersonMovieRating r INNER JOIN RecentMovie m 
on r.MovieId=m.MovieId
INNER JOIN Person p
ON r.personID=p.personid;
