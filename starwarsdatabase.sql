DROP DATABASE IF EXISTS StarWarsCharacters;
CREATE DATABASE IF NOT EXISTS StarWarsCharacters;
USE StarWarsCharacters;

-- CharacterInformation(Name, Species, WeaponQuantity, Weapon, Occupation, OriginPlanet, ForceSensitive, MediaTitle, AdminApproval)
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

-- Appearance(Title, Director, Studio, ReleaseYear)
CREATE TABLE IF NOT EXISTS Appearance (
	Title VARCHAR(50),
	Director VARCHAR(30),
	Studio VARCHAR(30),
	ReleaseYear YEAR,
	PRIMARY KEY(Title)
);

-- INSERT data character info
INSERT INTO CharacterInformation VALUES
	("Ahsoka Tano", "Togruta", 2, "White Lightsaber", "Rebel", "Kiros", TRUE, "Star Wars: Rebels", TRUE),
	("Ahsoka Tano", "Togruta", 2, "White Lightsaber", "Grey Jedi", "Kiros", TRUE, "The Mandalorian", TRUE),
	("Ahsoka Tano", "Togruta", 1, "Green Lightsaber", "Jedi", "Kiros", TRUE, "Star Wars: The Clone Wars S1", TRUE),
	("Ahsoka Tano", "Togruta", 2, "Green Lightsaber", "Jedi", "Kiros", TRUE, "Star Wars: The Clone Wars S3", TRUE),
	("Ahsoka Tano", "Togruta", 2, "Green Lightsaber", "Jedi Outcast", "Kiros", TRUE,  "Star Wars: The Clone Wars S5", TRUE),
	("Ahsoka Tano", "Togruta", 2, "Blue Lightsaber", "Grey Jedi", "Kiros", TRUE,  "Star Wars: The Clone Wars S7", TRUE),
	("Anakin Skywalker", "Human", 0, "NA", "Slave", "Tatooine", TRUE,  "Star Wars: Episode I – The Phantom Menace", TRUE),
	("Anakin Skywalker", "Human", 1, "Blue Lightsaber", "Jedi", "Tatooine", TRUE, "Star Wars: The Clone Wars S1", TRUE),
	("Luke Skywalker", "Human", 1, "Blue Lightsaber", "Rebel", "Tatooine", TRUE,  "Star Wars: Episode IV – A New Hope", TRUE),
	("Yoda", "Unknown", 1, "Green Lightsaber", "Jedi", "Unknown", TRUE, "Star Wars: Episode I - The Phantom Menace", TRUE),
	("Yoda", "Unknown", 1, "Green Lightsaber", "Jedi", "Unknown", TRUE, "Star Wars: Episode II - Attack of the Clones", TRUE),
	("Yoda", "Unknown", 1, "Green Lightsaber", "Jedi", "Unknown", TRUE, "Star Wars: Episode III - Revenge of the Sith", TRUE),
	("Yoda", "Unknown", 1, "Cane", "Jedi", "Unknown", TRUE, "Star Wars: Episode V - The Empire Strikes Back", TRUE),
	("Yoda", "Unknown", 0, "None", "Jedi", "Unknown", TRUE, "Star Wars: Episode VI - Return of the Jedi", TRUE),
	("Yoda", "Unknown", 0, "None", "Jedi", "Unknown", TRUE, "Star Wars: Episode VIII - The Last Jedi", TRUE),
	("Yoda", "Unknown", 1, "Green Lightsaber", "Jedi", "Unknown", TRUE, "Star Wars: The Clone Wars S1", TRUE),
	("Yoda", "Unknown", 1, "Green Lightsaber", "Jedi", "Unknown", TRUE, "Star Wars: The Clone Wars S2", TRUE),
	("Yoda", "Unknown", 1, "Green Lightsaber", "Jedi", "Unknown", TRUE, "Star Wars: The Clone Wars S3", TRUE),
	("Yoda", "Unknown", 1, "Green Lightsaber", "Jedi", "Unknown", TRUE, "Star Wars: The Clone Wars S4", TRUE),
	("Yoda", "Unknown", 1, "Green Lightsaber", "Jedi", "Unknown", TRUE, "Star Wars: The Clone Wars S5", TRUE),
	("Yoda", "Unknown", 1, "Green Lightsaber", "Jedi", "Unknown", TRUE, "Star Wars: The Clone Wars S6", TRUE),
	("Yoda", "Unknown", 1, "Green Lightsaber", "Jedi", "Unknown", TRUE, "Star Wars: The Clone Wars S7", TRUE),
	("Yoda", "Unknown", 0, "None", "Jedi", "Unknown", TRUE, "Star Wars: Rebels S2", TRUE),
	("Din Djarin", "Human", 6, "Amban Sniper Rifle", "Bounty Hunter", "Aq Vetina", FALSE, "The Mandalorian S1", TRUE),
	("Din Djarin", "Human", 6, "Beskar Spear", "Bounty Hunter", "Aq Vetina", FALSE, "The Mandalorian S2", TRUE),
	("Din Djarin", "Human", 6, "Blastech IB-94 Blaster Pistol", "Bounty Hunter", "Aq Vetina", FALSE, "The Mandalorian S3", TRUE),
	("Din Djarin", "Human", 6, "Darksaber", "Bounty Hunter", "Aq Vetina", FALSE, "The Book of Boba Fett S1", TRUE)
;

-- INSERT data apperence
INSERT INTO Appearance VALUES
	("Star Wars: Episode I - The Phantom Menace", "George Lucas", "Lucasfilm Ltd.", 1999),
	("Star Wars: Episode II - Attack of the Clones", "George Lucas", "Lucasfilm Ltd.", 2002),
	("Star Wars: Episode III - Revenge of the Sith", "George Lucas", "Lucasfilm Ltd.", 2005),
	("Star Wars: Episode IV - A New Hope", "George Lucas", "Lucasfilm Ltd.", 1977),
	("Star Wars: Episode V - The Empire Strikes Back", "George Lucas", "Lucasfilm Ltd.", 1980),
	("Star Wars: Episode VI - Return of the Jedi", "George Lucas", "Lucasfilm Ltd.", 1983),
	("Star Wars: Episode VII - The Force Awakens", "J.J. Abrams", "Lucasfilm Ltd.", 2015),
	("Star Wars: Episode VIII - The Last Jedi", "Rian Johnson", "Lucasfilm Ltd.", 2017),
	("Star Wars: Episode IX - The Rise of Skywalker", "Rian Johnson", "Lucasfilm Ltd.", 2019),
	("Rogue One: A Star Wars Story", "Gareth Edwards", "Lucasfilm Ltd.", 2016),
	("Solo: A Star Wars Story", "Ron Howard", "Lucasfilm Ltd.", 2018),
	("Star Wars: Rebels S1", "Multiple Directors", "Lucasfilm Animation", 2014),
	("Star Wars: Rebels S2", "Multiple Directors", "Lucasfilm Animation", 2015),
	("Star Wars: Rebels S3", "Multiple Directors", "Lucasfilm Animation", 2016),
	("Star Wars: Rebels S4", "Multiple Directors", "Lucasfilm Animation", 2017),
	("The Mandalorian S1", "Multiple Directors", "Lucasfilm Ltd.", 2019),
	("The Mandalorian S2", "Multiple Directors", "Lucasfilm Ltd.", 2020),
	("The Mandalorian S3", "Multiple Directors", "Lucasfilm Ltd.", 2023),
	("Obi-Wan Kenobi S1", "Deborah Chow", "Lucasfilm Ltd.", 2022),
	("Star Wars: The Bad Batch S1", "Brad Rau", "Lucasfilm Animation", 2021),
	("Star Wars: The Bad Batch S2", "Brad Rau", "Lucasfilm Animation", 2023),
	("The Book of Boba Fett S1", "Multiple Directors", "Lucasfilm Ltd.", 2021),
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
WHERE AdminApproval = DEFAULT (AdminApproval);

CREATE VIEW appears_in AS	
SELECT characterinformation.Name, Appearance.Title,  characterInformation.MediaTitle 
FROM characterinformation
JOIN appearance ON characterinformation.MediaTitle = appearance.Title
