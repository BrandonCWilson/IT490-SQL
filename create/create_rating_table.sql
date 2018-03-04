DROP TABLE IF EXISTS StreamerRatings;

CREATE TABLE StreamerRatings
	(ratingID int AUTO_INCREMENT not null,
	twitchID varchar(255),
	userID varchar(255),
	rating float unsigned,
	userComment varchar(2048),
	timeCreated timestamp not null default CURRENT_TIMESTAMP,

	PRIMARY KEY (ratingID),
	FOREIGN KEY (twitchID) REFERENCES Twitch_Data(userID),
	FOREIGN KEY (userID) REFERENCES Users(personalID));

INSERT INTO StreamerRatings (twitchID, personalID, rating, userComment)
VALUES ('dummytwitch', 0, 5.0, 'Wow your stream is really great');
