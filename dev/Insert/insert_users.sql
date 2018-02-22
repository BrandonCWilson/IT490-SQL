INSERT INTO Users 
	(email,	password, summonerID, twitchID,	tokenID, lastActivity)
VALUES 	('dummy@data.com', 'securepassword', 'mymain', 'dummytwitch', 'dummytoken', unix_timestamp(CURRENT_TIMESTAMP)),
	('secret@agent.com','topsecretpasswd','my secret main', 'secretTwitchID', 'secretToken', unix_timestamp(CURRENT_TIMESTAMP)),
	('test@test.com', 'testpasswd', 'testsummoner', 'testtwitch', 'testtoken', unix_timestamp(CURRENT_TIMESTAMP));
