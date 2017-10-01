DROP TABLE IF EXISTS AirlineArrival;

CREATE TABLE AirlineArrival (
  Airline nvarchar(255),
  ArrivalStatus nvarchar(100),
  LosAngeles int,
  Phoenix int,
  San_Diego int,
  San_Francisco int,
  Seattle int
  );

INSERT INTO AirlineArrival VALUES('Alaska','On Time',497,221,212,503,1841);
INSERT INTO AirlineArrival VALUES('Alaska','Delayed',62,12,20,102,305);
INSERT INTO AirlineArrival VALUES('AM West','On Time',694,4840,383,320,201);
INSERT INTO AirlineArrival VALUES('AM West','Delayed',117,415,65,129,61);
SELECT * FROM  AirlineArrival