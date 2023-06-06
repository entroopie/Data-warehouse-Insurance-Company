USE insurance_DB

CREATE TABLE Customer (
	pesel varchar(11) PRIMARY KEY,
	name_ varchar(20),
	surname varchar(20),
	sex varchar(6),
	date_of_birth date,
	date_of_driving_license date
);

CREATE TABLE Branch (
	branch_id varchar(5) PRIMARY KEY,
	city varchar(20),
	city_size int
);

CREATE TABLE Event_ (
	event_id varchar(9) PRIMARY KEY,
	date_ date,
	time_ time,
	report text,
	country varchar(25),
	voivodship varchar(25),
	city varchar(25),
	street varchar(80),
	postal_code varchar(25)
);

CREATE TABLE Car (
	reg_number varchar(10) PRIMARY KEY,
	production_date date,
	engine_size int,
	horsepower int,
	manufacturer varchar(50),
	model varchar(50)
);

CREATE TABLE Insurance (
	insurance_id varchar(11) PRIMARY KEY,
	sign_date date,
	expire_date date,
	annual_charge decimal(8, 2),
	ref_customer_pesel varchar(11) FOREIGN KEY REFERENCES Customer(pesel),
	reg_car_registration varchar(10) FOREIGN KEY REFERENCES Car(reg_number)
);

CREATE TABLE Insurance_Agent (
	worker_ID varchar(5) PRIMARY KEY,
	name_ varchar(20),
	surname varchar(20),
	ref_branch_ID varchar(5) FOREIGN KEY REFERENCES Branch(branch_id)
);

CREATE TABLE Claim (
	claim_ID int PRIMARY KEY,
	status_ varchar(12),
	sub_date date,
	min_rep_cov decimal(8, 2),
	ref_event_ID varchar(9) FOREIGN KEY REFERENCES Event_(event_id),
	ref_insurance_ID varchar(11) FOREIGN KEY REFERENCES Insurance(insurance_id),
	finish_date date,
	compensation decimal(8, 2),
	final_decision varchar(25),
	ref_insurance_agent varchar(5) FOREIGN KEY REFERENCES Insurance_Agent(worker_id),
);

--SELECT COUNT(*) FROM Claim