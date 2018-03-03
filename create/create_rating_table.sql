DROP TABLE IF EXISTS StreamerRatings;

CREATE TABLE StreamerRatings
	(ratingID int AUTO_INCREMENT not null,
	twitchID varchar(255),
	userEmail varchar(255),
	rating float unsigned,
	userComment varchar(255),
	timeCreated timestamp not null default CURRENT_TIMESTAMP,

	PRIMARY KEY (ratingID),
	FOREIGN KEY (twitchID) REFERENCES Twitch_Data(userID),
	FOREIGN KEY (userEmail) REFERENCES Users(email));

INSERT INTO StreamerRatings (twitchID, userEmail, rating, userComment)
VALUES ('dummytwitch', 'dummy@data.com', 5.0, 'Wow your stream is really great');
