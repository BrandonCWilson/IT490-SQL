DROP TABLE IF EXISTS Watching;

CREATE TABLE Watching
	(watchID int not null AUTO_INCREMENT,
	watchedTwitchID varchar(255) not null,
	viewerID varchar(255) not null,

	PRIMARY KEY (watchID),
	FOREIGN KEY (watchedTwitchID) REFERENCES Twitch_Data(userID),
	FOREIGN KEY (viewerID) REFERENCES Users(personalID));


INSERT INTO Watching (watchedTwitchID, viewerID)
	VALUES ('dummytwitch', 'test@test.com');
