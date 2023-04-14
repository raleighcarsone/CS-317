DROP DATABASE IF EXISTS StarWarsCharacters;
CREATE DATABASE IF NOT EXISTS StarWarsCharacters;
USE StarWarsCharacters;

-- CharacterInformation(Species, WeaponQuantity, Weapon, Occupation, OriginPlanet, ForceSensitive, Name, AdminApproval, MediaTitle)
CREATE TABLE IF NOT EXISTS CharacterInformation (
	Name VARCHAR(30),
	Species VARCHAR(30),
	WeaponQuantity INT,
	Weapon VARCHAR(30),
	Occupation VARCHAR(20),
	OriginPlanet VARCHAR(20),
	ForceSensitive BOOLEAN,
	MediaTitle VARCHAR(50),
	AdminApproval BOOLEAN Default 0,
	PRIMARY KEY (Name, MediaTitle)
);

-- Apperance(Title, Director, Studio, ReleaseYear)
CREATE TABLE IF NOT EXISTS Appearance (
	Title VARCHAR(50),
	Director VARCHAR(30),
	Studio VARCHAR(30),
	ReleaseYear YEAR,
	PRIMARY KEY(Title)
);

-- INSERT data character info
INSERT INTO characterinformation VALUES
	("Ahsoka Tano", "Togruta", 2, "White Lightsaber", "Rebel", "Kiros", TRUE, "Star Wars: Rebels", TRUE),
	("Ahsoka Tano", "Togruta", 2, "White Lightsaber", "Grey Jedi", "Kiros", TRUE, "The Mandalorian", TRUE),
	("Ahsoka Tano", "Togruta", 1, "Green Lightsaber", "Jedi", "Kiros", TRUE, "Star Wars: The Clone Wars S1", TRUE),
	("Ahsoka Tano", "Togruta", 2, "Green Lightsaber", "Jedi", "Kiros", TRUE, "Star Wars: The Clone Wars S3", TRUE),
	("Ahsoka Tano", "Togruta", 2, "Green Lightsaber", "Jedi Outcast", "Kiros", TRUE,  "Star Wars: The Clone Wars S5", TRUE),
	("Ahsoka Tano", "Togruta", 2, "Blue Lightsaber", "Grey Jedi", "Kiros", TRUE,  "Star Wars: The Clone Wars S7", TRUE),
	("Anakin Skywalker", "Human", 0, "NA", "Slave", "Tatooine", TRUE,  "Star Wars: Episode I – The Phantom Menace", TRUE),
	("Anakin Skywalker", "Human", 1, "Blue Lightsaber", "Jedi", "Tatooine", TRUE, "Star Wars: The Clone Wars S1", TRUE),
	("Luke Skywalker", "Human", 1, "Blue Lightsaber", "Rebel", "Tatooine", TRUE,  "Star Wars: Episode IV – A New Hope", TRUE)
;

-- INSERT data apperence
INSERT INTO appearance VALUES
	("Star Wars: Rebels", "Dave Filoni", "Lucasfilm Animation", 2014),
	("The Mandalorian", "Jon Faveau", "Walt Disney Studios", 2019),
	("Star Wars: The Clone Wars S1", "Dave Filoni", "Lucasfilm Animation", 2008),
	("Star Wars: The Clone Wars S2", "Dave Filoni", "Lucasfilm Animation", 2009),
	("Star Wars: The Clone Wars S3", "Dave Filoni", "Lucasfilm Animation", 2010),
	("Star Wars: The Clone Wars S4", "Dave Filoni", "Lucasfilm Animation", 2011),
	("Star Wars: The Clone Wars S5", "Dave Filoni", "Lucasfilm Animation", 2012),
	("Star Wars: The Clone Wars S6", "Dave Filoni", "Lucasfilm Animation", 2013),
	("Star Wars: The Clone Wars S7", "Dave Filoni", "Lucasfilm Animation", 2019)
;

CREATE VIEW fan_view AS
SELECT *
FROM characterinformation  
WHERE AdminApproval = TRUE;

CREATE VIEW approval_needed_view AS
SELECT *
FROM characterinformation   
WHERE AdminApproval = default (AdminApproval);

CREATE VIEW 

