CREATE TABLE Users 
	(email varchar(64) not null,
	password varchar(255) not null,
	tokenID varchar(255),
	isActive bool not null default false,
	lastActivity int not null,

	twitchID varchar(255) unique,
	summonerID int unique,
	
	PRIMARY KEY (email),
	FOREIGN KEY (twitchID) REFERENCES Twitch_Data(userID),
	FOREIGN KEY (summonerID) REFERENCES LoL_Data(accountID));

INSERT INTO Users 
	(email,	password, summonerID, twitchID,	tokenID, lastActivity)
VALUES 	('dummy@data.com', 'securepassword', 5, 'dummytwitch', 'dummytoken', unix_timestamp(CURRENT_TIMESTAMP));

INSERT INTO Users 
	(email,	password, summonerID, twitchID,	tokenID, lastActivity)
VALUES	('secret@agent.com','topsecretpasswd', 6, 'secretTwitchID', 'secretToken', unix_timestamp(CURRENT_TIMESTAMP));

INSERT INTO Users
	(email,	password, summonerID, twitchID,	tokenID, lastActivity)
VALUES ('test@test.com', 'testpasswd', 7, 'testtwitch', 'testtoken', unix_timestamp(CURRENT_TIMESTAMP));

INSERT INTO Users
	(email,	password, tokenID, lastActivity)
VALUES ('not@twitch.com', 'pass', 'token', unix_timestamp(CURRENT_TIMESTAMP));
