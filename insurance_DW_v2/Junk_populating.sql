use insurance_DW

INSERT INTO Junk SELECT s, p, c FROM 
(VALUES ('cancelled'), ('accepted'), ('rejected'), ('completed')) AS Status_(s),
(VALUES ('<=1000'), ('>1000 and <=5000'), ('>5000 and <=10000'),
	('>10000 and <=20000'), ('>20000 and <=50000'), ('>50000 and <=100000'),
	('>100000')) AS Compensation_Category(p),
(VALUES ('Poor'), ('Bad'), ('Medium'), ('Good'), ('Perfect')) AS Survey_Rating_Category(c);