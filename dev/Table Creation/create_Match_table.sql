CREATE TABLE Matches_Data
	(gameID int unsigned,
	gameStartTime int unsigned,
	platformID varchar(255),
	gameMode varchar(255),
	mapID int,
	gameType varchar(255),
	bannedChamps int /* Make a new table to accomodate ban lists. Int will be the matchID*/,
	observers int /* Make a new table to accomodate observer lists. */,
	participants int /* Make a new table to accomodate participant lists. */,
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
	observer int unsigned,

	FOREIGN KEY (gameID) REFERENCES Matches_Data(gameID));


INSERT INTO Matches_Data (gameID, gameStartTime, platformID, gameMode, mapID, gameType, bannedChamps, observers, participants, gameLength)

VALUES (1, 1, "test", "test", 1, "test", 1, 1, 1, 1);
