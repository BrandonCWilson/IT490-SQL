DROP TABLE IF EXISTS StreamerRatings;

CREATE TABLE StreamerRatings
	(twitchID varchar(255),
	userEmail varchar(255),
	rating float unsigned,
	userComment varchar(255),

	PRIMARY KEY (twitchID, userEmail),
	FOREIGN KEY (twitchID) REFERENCES Twitch_Data(userID),
	FOREIGN KEY (userEmail) REFERENCES Users(email));

INSERT INTO StreamerRatings (twitchID, userEmail, rating, userComment)
VALUES ('dummytwitch', 'dummy@data.com', 5.0, 'Wow your stream is really great');
