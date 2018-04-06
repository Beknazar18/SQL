USE AirAgency;

--������� ���������
CREATE TABLE dbo.aircraft
(
	id int NOT NULL IDENTITY(1,1),
	name nvarchar(50) NOT NULL,
	numberSeats int NOT NULL,
	CONSTRAINT PK_Aircraft PRIMARY KEY(id)	
);

INSERT INTO aircraft(name, numberSeats) VALUES('��-154', '80');
INSERT INTO aircraft(name, numberSeats) VALUES('Boing-745', '100');
INSERT INTO aircraft(name, numberSeats) VALUES('Boing-800', '120');

SELECT * FROM aircraft;