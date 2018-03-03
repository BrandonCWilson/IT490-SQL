/* Execute these before inserting into Users, otherwise you'll get errors surrounding the foreign keys */
INSERT INTO Twitch_Data (userID)
	VALUES ('twitchUserID');

INSERT INTO LoL_Data (accountID)
	VALUES (12345);

INSERT INTO Users (email, password, tokenID, twitchID, summonerID)
	VALUES ('email', 'password', 'token', 'twitchUserID', 12345);
