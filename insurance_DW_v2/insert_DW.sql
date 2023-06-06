use insurance_DW

BULK INSERT dbo.Junk FROM 'C:\Users\entro\Projects\generator_db\junk.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
BULK INSERT dbo.Claim_Processing FROM 'C:\Users\entro\Projects\generator_db\claim_processing.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
BULK INSERT dbo.Branch FROM 'C:\Users\entro\Projects\generator_db\branch.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
BULK INSERT dbo.Date_ FROM 'C:\Users\entro\Projects\generator_db\date.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
BULK INSERT dbo.Insurance FROM 'C:\Users\entro\Projects\generator_db\insurance.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
BULK INSERT dbo.Insurance_Agent FROM 'C:\Users\entro\Projects\generator_db\insurace_agent.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
BULK INSERT dbo.Customer FROM 'C:\Users\entro\Projects\generator_db\customer.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
BULK INSERT dbo.Event_ FROM 'C:\Users\entro\Projects\generator_db\event.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
BULK INSERT dbo.Car FROM 'C:\Users\entro\Projects\generator_db\car.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')

