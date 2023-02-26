

-- Step 1: Create Database

CREATE DATABASE Oscar;
USE Oscar;

-- Step 2: Create Tables



-- ## Table Actor
CREATE TABLE Actor(
	Actor_ID INT IDENTITY (1,1),
	Actor_Name VARCHAR(50) NOT NULL,
	Actor_City VARCHAR(50) NOT NULL,
	Actor_Country VARCHAR(10) NOT NULL,
	Actor_Gender VARCHAR(1) NOT NULL,
	CONSTRAINT PK_Actor_ID PRIMARY KEY (Actor_ID)
);


-- ## Table Director
CREATE TABLE Director(
	Director_ID INT IDENTITY (1,1),
	Director_Name VARCHAR(50) NOT NULL,
	Diretor_City VARCHAR(50) NOT NULL,
	Director_Country VARCHAR(10) NOT NULL,
	CONSTRAINT PK_Director_ID PRIMARY KEY(Director_ID)
);


-- ## Table Movie
CREATE TABLE Movie(
	Movie_ID INT IDENTITY (1,1),
	Movie_Title VARCHAR(50) NOT NULL,
	Director_ID INT NOT NULL,
	CONSTRAINT PK_Movie_ID PRIMARY KEY(Movie_ID),
	CONSTRAINT FK_Director_ID FOREIGN KEY(Director_ID) REFERENCES Director(Director_ID)
);

-- ## Table Award
CREATE TABLE Award(
	Award_ID INT IDENTITY (1,1),
	Award_Name VARCHAR(50) NOT NULL,
	CONSTRAINT PK_Award_ID PRIMARY KEY(Award_ID)
);


-- ## Table Participation
CREATE TABLE Participation(
	A_Actor_ID INT,
	M_Movie_ID INT,
	CONSTRAINT PK_Participation PRIMARY KEY(A_Actor_ID, M_Movie_ID),
	CONSTRAINT FK_A_Actor_ID FOREIGN KEY(A_Actor_ID) REFERENCES Actor(Actor_ID),
	CONSTRAINT FK_M_Movie_ID FOREIGN KEY(M_Movie_ID) REFERENCES Movie(Movie_ID)
);


-- ## Table Movie Premiation
CREATE TABLE Premiation(
	M_Movie_ID INT,
	A_Award_ID INT,
	Year INT NOT NULL,
	CONSTRAINT PK_Premiation PRIMARY KEY(M_Movie_ID, A_Award_ID),
	CONSTRAINT FK_P_M_Movie_ID FOREIGN KEY(M_Movie_ID) REFERENCES Movie(Movie_ID),
	CONSTRAINT FK_Award_ID FOREIGN KEY(A_Award_ID) REFERENCES Award(Award_ID)
);

/*

--Identified two new relations with missing data so tables were not created
-- ## Table Actor_Premiation

CREATE TABLE Actor_Premiation(
	P_Actor_ID INT,
	P_Award_ID INT,
	Year INT NOT NULL,
	CONSTRAINT PK_P_Actor_ID PRIMARY KEY (P_Actor_ID, A_Award_ID),
	CONSTRAINT FOREIGN KEY (P_Actor_ID) REFERENCES Actor(Actor_ID),
	CONSTRAINT FK_P_Award_IDFOREIGN KEY (A_Award_ID) REFERENCES Award (Award_ID) 
)


-- ## Table Director_Premiation

CREATE TABLE Director_Premiation(
	PR_Director_ID INT,
	PR_Award_ID INT,
	Year INT NOT NULL,
	CONSTRAINT PK_PR_Director_ID PRIMARY KEY (PR_Director_ID, PR_Award_ID),
	CONSTRAINT FK_PR_Director_ID FOREIGN KEY (PR_Director_ID) REFERENCES Director(Director_ID),
	CONSTRAINT FK_PR_Award_ID FOREIGN KEY (PR_Award_ID) REFERENCES Award (Award_ID) 
)
*/

-- Step 3: Insert Values into tables 

-- ## Table Actor
INSERT INTO Actor(Actor_Name, Actor_City, Actor_Country, Actor_Gender) VALUES
('Alan Arkin', 'New York', ' USA', 'M'),
('Alec Baldwin', 'New York', ' USA', 'M'),
('Ben Affleck', 'California', ' USA', 'M'),
('Bérénice Bejo', 'Buenos Aires', ' ARG', 'F'),
('Bradley Cooper', 'Pensilvania', ' USA', 'M'),
('Brian May', 'Hampton', ' GBR', 'M'),
('Brie Larson', 'California', ' USA', 'F'),
('Casey Affleck', 'Massachusetts', ' USA', 'M'),
('Cate Blanchett', 'Ivanhoe', ' AUS', 'F'),
('Chiwetel Ejiofor', 'London', ' GBR', 'M'),
('Colin Firth', 'Grayshott', ' GBR', 'M'),
('Daniel Day-Lewis', 'London', ' GBR', 'M'),
('Doug Jones', 'Indiana', ' USA', 'M'),
('Eddie Redmayne', 'London', ' GBR', 'M'),
('Edward Norton', 'Massachusetts', ' USA', 'M'),
('Emma Stone', 'Arizona', ' USA', 'F'),
('Felicity Jones', 'Birmingham', ' GBR', 'F'),
('Finn Wittrock', 'Massachusetts', ' USA', 'M'),
('Frances McDormand ', 'Illinois', ' USA', 'F'),
('Gary Oldman', 'London', ' GBR', 'M'),
('Geoffrey Rush', 'Toowoomba', ' AUS', 'M'),
('George Clooney', 'Kentucky', ' USA', 'M'),
('Irrfan Khan', 'Tonk', ' IND', 'M'),
('Jacob Tremblay', 'Vancouver', ' CAN', 'M'),
('Jean Dujardin', 'Rueil-Malmaison', ' FRA', 'M'),
('Jennifer Garner', 'Texas', ' USA', 'F'),
('Jennifer Lawrence', 'Kentucky', ' USA', 'F'),
('Jim Broadbent', 'Holton cum Beckering', ' GBR', 'M'),
('Joaquin Phoenix', 'Rio Piedras', ' PUR', 'M'),
('Julianne Moore', 'North Carolina', ' USA', 'F'),
('Kristen Stewart', 'California', ' USA', 'F'),
('Leonardo DiCaprio', 'California', ' USA', 'M'),
('Lily James', 'Esher', ' GBR', 'F'),
('Lucas Hedges', 'New York', ' USA', 'M'),
('Mahershala Ali', 'California', ' USA', 'M'),
('Marcus Ornellas', 'Rio Grande do Sul', ' BRA', 'M'),
('Marina de Tavira', 'Mexico City', ' MEX', 'F'),
('Mark Ruffalo', 'Wisconsin', ' USA', 'M'),
('Matthew McConaughey', 'Texas', ' USA', 'M'),
('Meryl Streep', 'New Jersey', ' USA', 'F'),
('Michael Fassbender', 'Heidelberg', ' GER', 'M'),
('Michael Keaton', 'Pensilvania', ' USA', 'M'),
('Mila Kunis', 'Chernivtsi', ' UKR', 'F'),
('Natalie Portman', 'Jerusalem', ' ISR', 'F'),
('Olivia Colman', 'Norwich', ' GBR', 'F'),
('Park Seo-joon', 'Seul', ' KOR', 'M'),
('Rachel Weisz', 'London', ' GBR', 'F'),
('Rami Malek', 'California', ' USA', 'M'),
('Renée Zellweger', 'Texas', ' USA', 'F'),
('Robert De Niro', 'New York', ' USA', 'M'),
('Ryan Gosling', 'London', ' CAN', 'M'),
('Sally Field', 'California', ' USA', 'F'),
('Sally Hawkins', 'London', ' GBR', 'F'),
('Sandra Bullock', 'Virginia', ' USA', 'F'),
('Song Kang-ho', 'Gimhae', ' KOR', 'M'),
('Suraj Sharma', 'New Delhi', ' IND', 'M'),
('Tom Hardy', 'London', ' GBR', 'M'),
('Trevante Rhodes', 'Luisiana', ' USA', 'M'),
('Viggo Mortensen', 'Nova York', ' USA', 'M'),
('Woody Harrelson', 'Texas', ' USA', 'M'),
('Yalitza Aparicio', 'Tlaxiaco', ' MEX', 'F');


-- ## Table Director
INSERT INTO Director(Director_Name, Diretor_City, Director_Country) VALUES
('Alejandro González', 'Mexico City', 'MEX'),
('Alfonso Cuarón', 'Mexico City', 'MEX'),
('Ang Lee', 'Pingtung', 'CHN'),
('Barry Jenkins', 'Florida', 'USA'),
('Ben Affleck', 'California', 'USA'),
('Bong Joon-ho', 'Daegu', 'KOR'),
('Bryan Singer', 'New York', 'USA'),
('Damien Chazelle', 'Rhode Island', 'USA'),
('Darren Aronofsky', 'New York', 'USA'),
('David O. Russell', 'New York', 'USA'),
('Guillermo del Toro', 'Guadalajara', 'MEX'),
('James Marsh', 'Truro', 'GBR'),
('Jean-Marc Vallée', 'Montreal', 'CAN'),
('Joe Wright', 'London', 'GBR'),
('Kenneth Lonergan', 'New York', 'USA'),
('Lenny Abrahamson', 'Dublin', 'IRL'),
('Martin McDonagh', 'London', 'GBR'),
('Michel Hazanavicius', 'Paris', 'FRA'),
('Peter Farrelly', 'Pensilvania', 'USA'),
('Phyllida Lloyd', 'Bristol', 'GBR'),
('Rupert Goold', 'London', 'GBR'),
('Steve McQueen', 'London', 'USA'),
('Steven Spielberg', 'Ohio', 'USA'),
('Todd Phillips', 'New York', 'USA'),
('Tom Hopper', 'Coalville', 'GBR'),
('Tom McCarthy', 'New Jersey', 'USA'),
('Wash Westmoreland', 'Leeds', 'GBR'),
('Woody Allen', 'Bronx', 'USA'),
('Yorgos Lanthimos', 'Athens', 'GRE');

-- ## Table Movies
INSERT INTO Movie(Movie_Title, Director_ID) VALUES
('O Discurso do Rei', 25),
('Cisne Negro', 9),
('O Artista', 18),
('A Dama de Ferro', 20),
('Argo', 5),
('As Aventuras de Pi', 3),
('Lincoln', 23),
('O Lado Bom da Vida', 10),
('12 Anos de Escravidão', 22),
('Gravidade', 2),
('Clube de Compras Dallas', 13),
('Blue Jasmine', 28),
('Birdman', 1),
('A Teoria de Tudo', 12),
('Para Sempre Alice', 27),
('Spotlight: Segredos Revelados', 26),
('O Regresso', 1),
('O Quarto de Jack', 16),
('Moonlight: Sob a Luz do Luar', 4),
('La La Land', 8),
('Manchester à Beira-Mar', 15),
('A Forma da Água', 11),
('O Destino de Uma Nação', 14),
('Três Anúncios Para Um Crime', 17),
('Green Book: O Guia', 19),
('Roma', 2),
('Bohemian Rhapsody', 7),
('A Favorita', 29),
('Parasita', 6),
('Coringa', 24),
('Judy: Muito Além do Arco-Íris', 21);

-- ## Table Award
INSERT INTO Award(Award_Name) VALUES
('Best Movie'),
('Best Director'),
('Best Actor'),
('Best Actress');

-- ## Tabela Participation
INSERT INTO Participation(A_Actor_ID, M_Movie_ID) VALUES
(7, 18),
(11, 1),
(40, 4),
(9, 12),
(45, 28),
(44, 2),
(39, 11),
(48, 27),
(12, 7),
(16, 20),
(27, 8),
(49, 31),
(14, 14),
(29, 30),
(19, 24),
(30, 15),
(20, 23),
(25, 3),
(8, 21),
(32, 17),
(21, 1),
(43, 2),
(4, 3),
(28, 4),
(3, 5),
(1, 5),
(56, 6),
(23, 6),
(52, 7),
(5, 8),
(10, 9),
(41, 9),
(54, 10),
(22, 10),
(26, 11),
(2, 12),
(42, 13),
(15, 13),
(17, 14),
(31, 15),
(38, 16),
(57, 17),
(24, 18),
(35, 19),
(58, 19),
(51, 20),
(34, 21),
(53, 22),
(13, 22),
(33, 23),
(60, 24),
(59, 25),
(35, 25),
(61, 26),
(37, 26),
(6, 27),
(47, 28),
(55, 29),
(46, 29),
(50, 30),
(18, 31),
(42, 16);

-- ## Tabela Premiation
INSERT INTO Premiation(M_Movie_ID, A_Award_ID, Year) VALUES
(1, 1, 2011),
(1, 2, 2011),
(1, 3, 2011),
(2, 4, 2011),
(3, 1, 2012),
(3, 2, 2012),
(3, 3, 2012),
(4, 4, 2012),
(5, 1, 2013),
(6, 2, 2013),
(7, 3, 2013),
(8, 4, 2013),
(9, 1, 2014),
(10, 2, 2014),
(11, 3, 2014),
(12, 4, 2014),
(13, 1, 2015),
(13, 2, 2015),
(14, 3, 2015),
(15, 4, 2015),
(16, 1, 2016),
(17, 2, 2016),
(17, 3, 2016),
(18, 4, 2016),
(19, 1, 2017),
(20, 2, 2017),
(21, 3, 2017),
(20, 4, 2017),
(22, 1, 2018),
(22, 2, 2018),
(23, 3, 2018),
(24, 4, 2018),
(25, 1, 2019),
(26, 2, 2019),
(27, 3, 2019),
(28, 4, 2019),
(29, 1, 2020),
(29, 2, 2020),
(30, 3, 2020),
(31, 4, 2020);




