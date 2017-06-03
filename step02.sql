DROP TABLE if EXISTS players;
/* Triggers being used to detect if a user is trying to input a team without
	a jersey number */
DROP TRIGGER if EXISTS InsertJerseyCheck;
DROP TRIGGER if EXISTS UpdateJerseyCheck;

/* Creations of the players table
	contains players on the teams specifically their id, firstname, last name,
	and team + jersey number (playernum) if applicable */
CREATE TABLE players (
				playerId INTEGER(4) NOT null primary key, 
				firstname VARCHAR(10) NOT null,
				lastname VARCHAR(10) NOT null,
				team VARCHAR(30),
				playernum INTEGER(4)
			);

/* https://dba.stackexchange.com/a/94053
	This trigger is essentially checking on an insertion or update if every row in a table
	satisfies a certain condition.  In this table the condition is that both team and player num
	have to have a value or be null */

DELIMITER //
CREATE TRIGGER InsertJerseyCheck BEFORE INSERT ON players
FOR EACH ROW BEGIN
  IF (NEW.team IS NULL AND NEW.playernum IS NOT NULL) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'If player has a number he must have a team';
  END IF;
  IF (NEW.team IS NOT NULL and NEW.playernum IS NULL) THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'If player has a team he must have a team number';
  END IF;
END//
CREATE TRIGGER UpdateJerseyCheck BEFORE UPDATE ON players
FOR EACH ROW BEGIN
  IF (NEW.team IS NULL AND NEW.playernum IS NOT NULL) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'If player has a number he must have a team';
  END IF;
  IF (NEW.team IS NOT NULL and NEW.playernum IS NULL) THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'If player has a team he must have a team number';
  END IF;
END//
DELIMITER ;



