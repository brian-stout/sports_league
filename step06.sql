#tables are games, playerattributes, players, results, teams
#teams = id, teamname
/*
	(auto-increment id?) Carolina Hurricanes
	Washington Capitals
	Nashville Predators
	Pittsburgh Penguins
*/

	insert into teams values (0, 'Carolina Hurricanes');
	insert into teams values (1, 'Washington Capitals');
	insert into teams values (2, 'Nashville Predators');
	insert into teams values (3, 'Pittsburgh Penguins');

#players = id, firstname, lastname, team, playernum
/*
	Cam, Ward, Carolina Hurricanes, 30
	Justin, Faulk, Carolina Hurricanes, 27
	Jeff, Skinner, Carolina Hurricanes, 53
	Jordan, Staal, Carolina Hurricanes, 11
	Braden Holtby, Washington Capitals, 70
	Alexander, Ovechkin, Washington Capitals, 8
	Tom, Wilson, Washington Capitals, 43
	Timothy, Oshie, Washington Capitals, 77
	Pekka, Rinne, Nashville Predators, 35
	Pernell, Subban, Nashville Predators, 76
	Filip, Forsberg, Nashville Predators, 9
	Ryan, Johansen, Nashville Predators, 92
	Matt, Murray, Pittsburgh Penguins, 30
	Sidney, Crosby, Pittsburgh Penguins, 87
	Phil, Kessel, Pittsburgh Penguins, 81
	Evgeni Malkin, Pittsburgh Penguins, 71
	#playerattributes = id, age, height, weight

	(ward) 33, 73, 185
	(faulk) 25, 72, 215
	(skinner) 25, 71, 200
	(staal) 28, 76, 220
	(holtby) 27, 74, 217
	(Ovi) 31, 75, 239
	(Wilson) 23, 76, 217
	(Oshie) 30, 72, 189
	(Rinne) 34, 77, 217
	(Subban) 28, 72, 210
	(Forsberg) 22, 73, 205
	(RyJo) 24, 75, 218
	(Murray) 23, 76, 178
	(Sid) 29, 71, 200
	(Kessel) 29, 72, 202
	(Malkin) 30, 75, 195

*/
	insert into players values(0, 'Cam', 'Ward', 'Carolina Hurricanes', 30);
	insert into playerattributes values(0, 33, 73, 185);

	insert into players values(1, 'Justin', 'Faulk', 'Carolina Hurricanes', 27);
	insert into playerattributes values(1, 25, 72, 215);

	insert into players values(2, 'Jeff', 'Skinner', 'Carolina Hurricanes', 53);
	insert into playerattributes values(2, 25, 71, 200);

	insert into players values(3, 'Jordan', 'Staal', 'Carolina Hurricanes', 11);
	insert into playerattributes values(3, 25, 72, 215);

	insert into players values(4, 'Braden', 'Holtby', 'Washington Capitals', 70);
	insert into playerattributes values(4, 27, 74, 217);

	insert into players values(5, 'Alexander', 'Ovechkin', 'Washington Capitals', 8);
	insert into playerattributes values(5, 31, 75, 239);

	insert into players values(6, 'Tom', 'Wilson', 'Washington Capitals', 43);
	insert into playerattributes values(6, 23, 76, 217);

	insert into players values(7, 'Timothy', 'Oshie', 'Washington Capitals', 77);
	insert into playerattributes values(7, 30, 72, 189);

	insert into players values(8, 'Pekka', 'Rinne', 'Nashville Predators', 35);
	insert into playerattributes values(8, 34, 77, 217);

	insert into players values(9, 'Pernell', 'Subban', 'Nashville Predators', 76);
	insert into playerattributes values(9, 28, 72, 210);

	insert into players values(10, 'Filip', 'Forsberg', 'Nashville Predators', 9);
	insert into playerattributes values(10, 22, 73, 205);

	insert into players values(11, 'Ryan', 'Johansen', 'Nashville Predators', 92);
	insert into playerattributes values(11, 24, 75, 218);

	insert into players values(12, 'Matt', 'Murray', 'Pittsburgh Penguins', 30);
	insert into playerattributes values(12, 23, 76, 178);

	insert into players values(13, 'Sidney', 'Crosby', 'Pittsburgh Penguins', 87);
	insert into playerattributes values(13, 29, 71, 200);

	insert into players values(14, 'Phil', 'Kessel', 'Pittsburgh Penguins', 81);
	insert into playerattributes values(14, 29, 72, 202);

	insert into players values(15, 'Evegeni', 'Malkin', 'Pittsburgh Penguins', 71);
	insert into playerattributes values(15, 30, 75, 195);

	insert into players values(16, 'Bob', 'Schmo', null, null);
	insert into playerattributes values(16, 30, 75, 195);



#Hurr0 Caps1 Preds2 Pens3
#games = id, gameday, homeId, visitId
#results = gameid, teamid, points, result
	#2016-11-05 8:00, (preds), (canes) (2-3 SO)
	insert into games values(0, '2016-11-05 08:00:00', 2, 0);
	insert into results values(0, 2, 2, 3, 'LST');
	insert into results values(0, 0, 3, 2, 'WIN');

	#2016-11-12 7:00, (canes), (caps) (5-1)
	insert into games values(1, '2016-11-12 07:00:00', 0, 1);
	insert into results values(1, 0, 5, 1, 'WIN');
	insert into results values(1, 1, 1, 5, 'LST');

	#2016-12-16 7:30, (canes), (caps) (3-4)
	insert into games values(2, '2016-12-16 07:30:00', 0, 1);
	insert into results values(2, 0, 3, 4, 'LST');
	insert into results values(2, 1, 4, 3, 'WIN');

	#2016-12-28 7:30, (pens), (caps) (3-2)
	insert into games values(3, '2016-12-28 07:30:00', 3, 1);
	insert into results values(3, 3, 3, 2, 'WIN');
	insert into results values(3, 1, 2, 3, 'LST');

	#2016-10-13 08:00:00, (pens), (caps) (3-2 SO)
	insert into games values(4, '2016-10-13 08:00:00', 3, 1);
	insert into results values(4, 3, 3, 2, 'WIN');
	insert into results values(4, 1, 2, 3, 'LST');

	#2016-11-16 07:30:00, (caps), (pens) (7-1)
	insert into games values(5, '2016-11-16 07:30:00', 1, 3);
	insert into results values(5, 1, 7, 1, 'WIN');
	insert into results values(5, 3, 1, 7, 'LST');

	#2017-01-31 07:00:00, (pens), (preds) (4-2)
	insert into games values(6, '2017-01-31 07:00:00', 3, 2);
	insert into results values(6, 3, 4, 2, 'WIN');
	insert into results values(6, 1, 2, 4, 'LST');

	#2017-02-25 05:00:00, (preds), (caps) (5-2)
	insert into games values(7, '2017-02-25 05:00:00', 2, 1);
	insert into results values(7, 2, 5, 2, 'WIN');
	insert into results values(7, 1, 2, 5, 'LST');
