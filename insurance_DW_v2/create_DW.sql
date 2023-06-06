use insurance_DW

CREATE TABLE Date_ (
	Date_ID int PRIMARY KEY Identity(0,1), 
	Day_ int,
	Month_Numeric int,
	Year_ int,
	Month_ varchar(20),
	Date_ date
);

CREATE TABLE Car (
	Car_ID int PRIMARY KEY Identity(0,1),
	Registration_Number varchar(10), --BUSINESS KEY NOT UNIQUE
	ref_Prod_Date_ID int FOREIGN KEY REFERENCES Date_(Date_ID),
	Engine_Size varchar(20),
	Horsepower varchar(20),
	Manufacturer varchar(15),
	Model varchar(25),
);

CREATE TABLE Junk (
	Junk_ID int PRIMARY KEY Identity(0,1),
	Status_ varchar(10),
	Compensation_Category varchar(20),
	Survey_Rating_Category varchar(20)
);

CREATE TABLE Branch (
	Branch_ID int PRIMARY KEY Identity(1,1),
	City varchar(30),
	City_Size varchar(50)
);

CREATE TABLE Insurance_Agent (
	Insurance_Agent_ID int PRIMARY KEY Identity(1,1),
	worker_ID varchar(5),
	Name_And_Surname varchar(60),
	ref_Branch_ID int FOREIGN KEY REFERENCES Branch(Branch_ID)
);

CREATE TABLE Event_ (
	Event_ID int PRIMARY KEY Identity(1,1),
	ref_Event_Date_ID int FOREIGN KEY REFERENCES Date_(Date_ID),
	Country varchar(50),
	Voivodeship varchar(50),
	City varchar(50),
	Street varchar(100)
);

CREATE TABLE Customer (
	Customer_ID int PRIMARY KEY Identity(0,1),
	PESEL varchar(11), -- BUSINESS KEY not unique
	Sex varchar(6),
	Name_and_Surname varchar(60),
	Age varchar(20),
	Driving_License_Time varchar(20),
	isCurrent bit
);

CREATE TABLE Insurance (
	--Insurance_ID int PRIMARY KEY Identity(1,1),
	ref_Signing_Date_ID int FOREIGN KEY REFERENCES Date_(Date_ID),
	ref_Expiration_Date_ID int FOREIGN KEY REFERENCES Date_(Date_ID),
	ref_Customer_ID int FOREIGN KEY REFERENCES Customer(Customer_ID),
	ref_Car_ID int FOREIGN KEY REFERENCES Car(Car_ID),
	Amount int
);

CREATE TABLE Claim_Processing (
	ref_Junk_ID int FOREIGN KEY REFERENCES Junk(Junk_ID),
	ref_Car_ID int FOREIGN KEY REFERENCES Car(Car_ID),
	ref_Perpretator_ID int FOREIGN KEY REFERENCES Customer(Customer_ID),
	ref_Insurance_Agent_ID int FOREIGN KEY REFERENCES Insurance_Agent(Insurance_Agent_ID),
	Amount_Asked int,
	Compensation int,
	ref_Submission_Date_ID int FOREIGN KEY REFERENCES Date_(Date_ID),
	ref_Finish_Date_ID int FOREIGN KEY REFERENCES Date_(Date_ID),
	Claim_No int, --PRIMARY KEY Identity(1,1),
	Survey_AVG_L float,
	Survey_Ease_H float,
	Claim_Lifetime int,
	ref_Event_ID int FOREIGN KEY REFERENCES Event_(Event_ID)
);

--SELECT * FROM Claim_Processing