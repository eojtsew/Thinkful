SELECT trip_id, duration
FROM trips
WHERE duration > 500
ORDER BY duration;

SELECT * 
FROM stations
WHERE station_id = 84;

SELECT mintemperaturef
FROM weather
WHERE zip = 94301
AND precipitationin > 0;