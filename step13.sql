/* Lists all players not assigned to a team */

SELECT  playerId, firstname, lastname FROM players WHERE team IS null;
