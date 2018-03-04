DROP TABLE IF EXISTS Watching;

CREATE TABLE Watching
	(watchID int not null AUTO_INCREMENT,
	watchedTwitchID varchar(255) not null,
	viewerPersonalID int,

	PRIMARY KEY (watchID),
	FOREIGN KEY (watchedTwitchID) REFERENCES Twitch_Data(userID),
	FOREIGN KEY (viewerPersonalID) REFERENCES Users(personalID));


INSERT INTO Watching (watchedTwitchID, viewerPersonalID)
	VALUES ('dummytwitch', 1);
