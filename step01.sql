/* making sure nothing exists here */
DROP TABLE if EXISTS teams;

CREATE TABLE teams (
				teamId INTEGER(4) NOT null primary key, 
				teamname VARCHAR(30)
			);

