USE AirAgency;


-- ������� ��������
CREATE TABLE dbo.document
(
	id int NOT NULL IDENTITY(1,1),
	name nvarchar(50) NOT NULL,
	CONSTRAINT PK_Document PRIMARY KEY(id)
);

INSERT INTO document(name) VALUES('������');
INSERT INTO document(name) VALUES('����������� �������');
INSERT INTO document(name) VALUES('�������');

SELECT * FROM document;

