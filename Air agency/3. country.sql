USE AirAgency;

-- ������� �����
CREATE TABLE dbo.country
(
	id int NOT NULL IDENTITY(1,1),
	name nvarchar(100) NOT NULL
	CONSTRAINT PK_Country PRIMARY KEY(id)
);

INSERT INTO country(name) VALUES('���������� ����������');
INSERT INTO country(name) VALUES('���������� ���������');
INSERT INTO country(name) VALUES('������');

SELECT * FROM country;

UPDATE country SET name = '���������� ���������' WHERE name='������';

SELECT * FROM country;
