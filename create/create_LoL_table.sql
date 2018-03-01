DROP TABLE IF EXISTS LoL_Data;

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

INSERT INTO LoL_Data (rank, wins, losses, veteran, inactive, playerOrTeamName, playerOrTeamID, leaguePoints, summonerLvl, lastModificationDate, accountID)

VALUES ("myrank", 20, 1, 0, 0, "myteamName", "myteamID", 2000, 3, unix_timestamp(CURRENT_TIMESTAMP), 6);

INSERT INTO LoL_Data (rank, wins, losses, veteran, inactive, playerOrTeamName, playerOrTeamID, leaguePoints, summonerLvl, lastModificationDate, accountID)

VALUES ("bronze", 32, 7, 0, 0, "team noobs", "team noobs id", 3000, 8, unix_timestamp(CURRENT_TIMESTAMP), 7);
