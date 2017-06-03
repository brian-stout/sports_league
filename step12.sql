/* Displays the most points scored during a single game by either team */

select MAX(pointsFor + pointsLost) as 'Highest points scored' from results;
