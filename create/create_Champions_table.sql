CREATE TABLE Champions_Data
	(
	championName varchar(255),
	winrate float unsigned,
	gamesPlayedWithChampion int unsigned,
	releaseDate int,
	role varchar(255),
	accountID int,
	
	FOREIGN KEY (accountID) REFERENCES LoL_Data(accountID)
	);

INSERT INTO Champions_Data (championName, winrate, gamesPlayedWithChampion, releaseDate, role, accountID)

VALUES ("test", 0.5, 5, 5, "test", 5);
