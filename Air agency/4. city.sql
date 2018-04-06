USE AirAgency;


--������� �������
CREATE TABLE dbo.city
(
	id int NOT NULL IDENTITY(1,1),
	name nvarchar(100) NOT NULL,
	countryID int NOT NULL,
	CONSTRAINT PK_City PRIMARY KEY(id, countryID),
	CONSTRAINT FK_CountryCity FOREIGN KEY(countryID) REFERENCES country(id)
		ON UPDATE CASCADE 
		ON DELETE CASCADE
);

INSERT INTO city(name, countryID) VALUES('������', 1);
INSERT INTO city(name, countryID) VALUES('��', 1);
INSERT INTO city(name, countryID) VALUES('�������', 1);

INSERT INTO city(name, countryID) VALUES('������', 2);
INSERT INTO city(name, countryID) VALUES('������', 2);
INSERT INTO city(name, countryID) VALUES('���������', 2);

INSERT INTO city(name, countryID) VALUES('������', 3);
INSERT INTO city(name, countryID) VALUES('�����-���������', 3);
INSERT INTO city(name, countryID) VALUES('�����������', 3);

SELECT name, (SELECT name FROM dbo.country WHERE id=countryID) FROM city;

DELETE FROM city WHERE name = '���������';
DELETE FROM city WHERE name = '�����-���������';
DELETE FROM city WHERE name = '�����������';

SELECT name, (SELECT name FROM dbo.country WHERE id=countryID) AS Country FROM city;

