SELECT maxtemperaturef, weather.date, zip
FROM weather
ORDER BY maxtemperaturef DESC
LIMIT 1;

SELECT start_station, COUNT(*)
FROM trips
GROUP BY start_station;

SELECT MIN(duration)
FROM trips;

SELECT end_station, AVG(duration)
FROM trips
GROUP BY end_station;