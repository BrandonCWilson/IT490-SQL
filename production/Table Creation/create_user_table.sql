CREATE TABLE Users 
	(email varchar(64) primary key not null,
	password varchar(255) not null,
	summonerID varchar(64),
	twitchID varchar(25) not null,
	tokenID varchar(255),
	isActive bool not null default false,
	lastActivity timestamp default CURRENT_TIMESTAMP);
