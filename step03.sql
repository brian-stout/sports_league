drop table if exists playerattributes;

/* Creations of the player attributes table
	contains meta information on players such as age, height, and weight */

CREATE TABLE playerattributes (
				playerId INTEGER(4) not null,
				age INTEGER(2),
				height INTEGER(2), 	#in inches
				weight INTEGER(3),	#in pounds

				INDEX (playerId),
				
				/* Set tables to delete child record if parent is gone since the attributes
					do not matter if player is not in the records */

				FOREIGN KEY (playerId)
					REFERENCES players(playerId)
					ON UPDATE CASCADE ON DELETE CASCADE
			);
