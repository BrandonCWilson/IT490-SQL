DROP TABLE IF EXISTS Matches_Observers;
DROP TABLE IF EXISTS Matches_Participants;
DROP TABLE IF EXISTS Matches_BannedChamps;
DROP TABLE IF EXISTS Matches_Data;

CREATE TABLE Matches_Data
	(gameID int unsigned,
	gameStartTime int unsigned,
	platformID varchar(255),
	gameMode varchar(255),
	mapID int,
	gameType varchar(255),
	gameLength int,

	PRIMARY KEY (gameID));

CREATE TABLE Matches_BannedChamps
	(gameID int unsigned,
	bannedChamp int,

	FOREIGN KEY (gameID) REFERENCES Matches_Data(gameID));

CREATE TABLE Matches_Participants
	(gameID int unsigned,
	participant int unsigned,

	FOREIGN KEY (gameID) REFERENCES Matches_Data(gameID));

CREATE TABLE Matches_Observers
	(gameID int unsigned,
	encryptionKey varchar(255),

	FOREIGN KEY (gameID) REFERENCES Matches_Data(gameID));


INSERT INTO Matches_Data (gameID, gameStartTime, platformID, gameMode, mapID, gameType, gameLength)

VALUES (1, 1, "test", "test", 1, "test", 1);
