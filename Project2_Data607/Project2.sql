DROP TABLE IF EXISTS StudentGrades;
DROP TABLE IF exists ProviderNetwork;

CREATE TABLE StudentGrades (
  School_Id int auto_increment primary key,
  SchoolName nvarchar(255),
  NinthGradePass int,
  NinthGradeFail int,
  TenthGradePass int,
  TenthGradeFail int
 
  );
  
  
CREATE TABLE ProviderNetwork (
  Payer_Id int auto_increment primary key,
  PayerName nvarchar(255),
  TotalInNetworkChicago int,
  TotalOutOfNetworkChicago int,
  TotalInNetwork_NewYork int,
  TotalOutOfNetwork_NewYork int
  );
  
  
  INSERT INTO StudentGrades 
  VALUES('School1',189,96,145,23);
  
   INSERT INTO StudentGrades 
  VALUES('School2',167,34,145,12);
  
    INSERT INTO StudentGrades 
  VALUES('School3',178,34,187,3);
 
  INSERT INTO ProviderNetwork VALUES('Health Insurance A',445,45,665,234);
  
  INSERT INTO ProviderNetwork VALUES('Health Insurance B',335,23,667,230);