-- example:
-- BULK INSERT dbo.Car FROM 'C:\Users\user\Desktop\4_SEM\Data_Warehouse\Task_4\car.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
USE insurance_DB

BULK INSERT dbo.Customer FROM 'C:\Users\entro\Projects\generator_db\customer.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
BULK INSERT dbo.Car FROM 'C:\Users\entro\Projects\generator_db\car.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
BULK INSERT dbo.Branch FROM 'C:\Users\entro\Projects\generator_db\branch.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
BULK INSERT dbo.Insurance FROM 'C:\Users\entro\Projects\generator_db\insurance.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
BULK INSERT dbo.Insurance_Agent FROM 'C:\Users\entro\Projects\generator_db\insurance_agent.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
BULK INSERT dbo.Claim FROM 'C:\Users\entro\Projects\generator_db\claim.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')
BULK INSERT dbo.Event_ FROM 'C:\Users\entro\Projects\generator_db\event.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR=',')