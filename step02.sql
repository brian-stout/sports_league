drop table if exists players;
drop trigger if exists InsertJerseyCheck;
drop trigger if exists UpdateJerseyCheck;

CREATE TABLE players (
				id INTEGER(4) not null primary key, 
				firstname VARCHAR(10) not null,
				lastname VARCHAR(10) not null,
				team VARCHAR(30),
				playernum INTEGER(4)
			);


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



