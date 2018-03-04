DROP TABLE IF EXISTS Twitch_Data;
DROP TABLE IF EXISTS Twitch_StreamTypes;

CREATE TABLE Twitch_StreamTypes
	(streamType varchar(255),
	PRIMARY KEY (streamType));

CREATE TABLE Twitch_Data
	(startedAt varchar(255),
	title varchar(255),
	viewerCount int unsigned,
	streamType varchar(255),
	language varchar(255),
	thumbnailURL varchar(255),
	userID varchar(255) unique,
	gameID varchar(255),

	FOREIGN KEY (streamType) REFERENCES Twitch_StreamTypes(streamType));

INSERT INTO Twitch_StreamTypes (streamType)
VALUES 	("live"),
	("vodcast"),
	("");


INSERT INTO Twitch_Data (startedAt, title, viewerCount, streamType, language, thumbnailURL, userID, gameID)

VALUES ("time", "title", 5, "", "language", "thumbnailURL.com/image", "dummytwitch", "LeagueOfLegends");

INSERT INTO Twitch_Data (startedAt, title, viewerCount, streamType, language, thumbnailURL, userID, gameID)

VALUES ("time", "my stream title", 22, "live", "english", "url.com", "secretTwitchID", "LeagueOfLegends");

INSERT INTO Twitch_Data (startedAt, title, viewerCount, streamType, language, thumbnailURL, userID, gameID)

VALUES ("time", "incredible streamer does things", 3200, "vodcast", "french", "www.website.com/image.png", "testtwitch", "LeagueOfLegends");
