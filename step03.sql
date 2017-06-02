drop table if exists playerattributes;

# age, height, weight
CREATE TABLE playerattributes (
				id INTEGER(4) not null primary key,
				age INTEGER(2),
				height INTEGER(2),
				weight INTEGER(3)	
			);
