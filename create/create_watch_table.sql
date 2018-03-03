DROP TABLE IF EXISTS Watching;

CREATE TABLE Watching
	(watchID int not null AUTO_INCREMENT,
	watchedTwitchID varchar(255) not null,
	viewerEmail varchar(255) not null,

	PRIMARY KEY (watchID),
	FOREIGN KEY (watchedTwitchID) REFERENCES Twitch_Data(userID),
	FOREIGN KEY (viewerEmail) REFERENCES Users(email));


INSERT INTO Watching (watchedTwitchID, viewerEmail)
	VALUES ('dummytwitch', 'test@test.com');
