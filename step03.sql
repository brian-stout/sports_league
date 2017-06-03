drop table if exists playerattributes;

# age, height, weight
CREATE TABLE playerattributes (
				playerId INTEGER(4) not null primary key,
				age INTEGER(2),
				height INTEGER(2), 	#in inches
				weight INTEGER(3)	#in pounds
			);
