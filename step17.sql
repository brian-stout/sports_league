select lastname, firstname, height from players, playerattributes
where players.playerId = playerattributes.playerId
order by playerattributes.height DESC
LIMIT 1;

