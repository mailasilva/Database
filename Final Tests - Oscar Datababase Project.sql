-- Final tests:

-- 1) Validating the Integrity of Base table in a referential constraint relashionship
-- Verificar a Restrição de Integridade Referencial para as tabelas: garantir que dados de uma tabela encontram referencia em outra tabela caso elas estejam relacionadas

-- a) Participation: this table makes references to column Actor_ID in Actor table.
--In order to have a new insert in this table, this informação needs to first exists in tables Actor and Movie

--SELECT * FROM Participation 
--SELECT * FROM Actor

--Testing Integrity: trying to insert an Actor_ID (Participation foreign key) that is not in the Actor table
--It will return an Error, passing the Integrity test:
INSERT INTO Participation VALUES
(100, 1);

-- b) Premiation: trying to insert Award_ID = 8 (Award_ID is a foreign key in table Premiation) that is not in the Award table
--It will return an Error, passing the Integrity test:

--select * from premiation

INSERT INTO Premiation VALUES
(6, 8, 2022);


-- 2) Validating a domain restriction: Award_ID  / Verificar uma Restrição de Domínio qualquer
--Trying to insert an ID to column Award_ID INT IDENTITY: It will return an Error, passing the test:
--SELECT * FROM Award 

INSERT INTO Award VALUES
('COD123', 'Best Picture');


-- 3) Validating Null restriction: trying to insert Null where restrition is Not Null / Verificar uma Restrição de Vazio qualquer
-- It will return an Error, passing the test:
INSERT INTO Actor VALUES
('Lazaro Ramos', 'Salvador', NULL, 'M');

-- 4) Verifying Primary Key restriction / Verificar a Restrição de Chave nas tabelas:

-- a) Premiation: PK (1,1) already exists. We can't add the same PK for different YEAR. If YEAR was part of the PK, insert would be sucessful
--It will return an Error, passing the test:
select * from premiation

INSERT INTO Premiation VALUES
(1, 1, 2022);

-- 5) Veryfying Integrity table Actor / Verificar a Restrição de Integridade na tabela Ator
--It will return an Error (Actor_ID), passing the Integrity test:
INSERT INTO Actor VALUES
(NULL, 'Fabio Porchat', 'Rio de Janeiro', 'BRA', 'M');