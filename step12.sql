/* Displays the most points scored during a single game by either team */

SELECT MAX(pointsFor + pointsLost) AS 'Highest points scored' FROM results;
