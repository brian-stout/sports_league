/* Displays who's the tallest player in the database */

SELECT lastname, firstname, height FROM players, playerattributes
WHERE players.playerId = playerattributes.playerId
ORDER BY playerattributes.height DESC
LIMIT 1;

