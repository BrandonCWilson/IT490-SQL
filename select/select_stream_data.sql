SELECT
Twitch_Data.*
FROM Twitch_Data
INNER JOIN Users ON Users.twitchID = Twitch_Data.userID
WHERE Users.twitchID = 'dummytwitch' OR Users.summonerID = 5;
