
DROP TABLE Patient;
CREATE TABLE Patient
(
	BeneficiaryNumber nvarchar(50),
    FirstName nvarchar(255),
    LastName nvarchar(255),
    DOB date
);

DROP TABLE PrescriptionFillHistory;
CREATE TABLE PrescriptionFillHistory
(
   BeneficiaryNumber nvarchar(50),
   NDC nvarchar(50),
   NPI nvarchar(50),
   FillDate Date,
   Supply int
);


SELECT * FROM Patient;

SELECT * FROM PrescriptionFillHistory