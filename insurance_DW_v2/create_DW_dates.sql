use insurance_DW

CREATE TABLE Dates_ (
  date_ DATE,
  PRIMARY KEY (date_)
)
DECLARE @dIncr DATE = '1984-01-01'
DECLARE @dEnd DATE = '2030-01-01'

WHILE ( @dIncr < @dEnd )
BEGIN
  INSERT INTO Dates_ (date_) VALUES( @dIncr )
  SELECT @dIncr = DATEADD(DAY, 1, @dIncr )
END

--SELECT * FROM Dates_
--WHERE MONTH(d)=02

--SELECT * FROM Dates_
--SELECT * FROM Date_