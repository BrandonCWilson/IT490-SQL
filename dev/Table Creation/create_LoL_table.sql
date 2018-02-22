CREATE TABLE LoL_Data
	(rank varchar(255),
	wins int unsigned,
	losses int unsigned,
	veteran bool,
	inactive bool,
	playerOrTeamName varchar(255),
	playerOrTeamID varchar(255),
	leaguePoints int unsigned,

	summonerLvl int,
	lastModificationDate int unsigned,
	accountID int,
	
	PRIMARY KEY (accountID));


INSERT INTO LoL_Data (rank, wins, losses, veteran, inactive, playerOrTeamName, playerOrTeamID, leaguePoints, summonerLvl, lastModificationDate, accountID)

VALUES ("test", 5, 5, 1, 1, "test", "test", 5, 5, 5, 5);
