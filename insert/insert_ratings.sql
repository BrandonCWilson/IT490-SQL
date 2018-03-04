INSERT INTO StreamerRatings
(ratingID, personalID, twitchID, timeCreated, rating)
VALUES
(x, y, z, w, p)
ON DUPLICATE KEY UPDATE
rating = p;
