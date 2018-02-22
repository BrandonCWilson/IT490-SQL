CREATE TABLE Users 
	(email varchar(64) not null,
	password varchar(255) not null,
	tokenID varchar(255),
	isActive bool not null default false,
	lastActivity int not null,

	twitchID varchar(255) not null unique,
	summonerID int not null,
	
	PRIMARY KEY (email),
	FOREIGN KEY (twitchID) REFERENCES Twitch_Data(userID),
	FOREIGN KEY (summonerID) REFERENCES LoL_Data(accountID));

INSERT INTO Users 
	(email,	password, summonerID, twitchID,	tokenID, lastActivity)
VALUES 	('dummy@data.com', 'securepassword', 5, 'userID', 'dummytoken', unix_timestamp(CURRENT_TIMESTAMP));
