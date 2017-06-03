drop table if exists playerattributes;

/* Creations of the player attributes table
	contains meta information on players such as age, height, and weight */

CREATE TABLE playerattributes (
				playerId INTEGER(4) not null primary key,
				age INTEGER(2),
				height INTEGER(2), 	#in inches
				weight INTEGER(3)	#in pounds
			);
