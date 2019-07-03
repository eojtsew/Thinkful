SELECT tr.duration
FROM trips tr
JOIN weather w
ON w.date = substring(tr.start_date from 1 for 10)
WHERE w.precipitationin > 0
ORDER BY tr.duration DESC
LIMIT 3;

SELECT i.name, COUNT(u.station_id)
FROM status u
JOIN stations i
ON u.station_id = i.station_id
WHERE u.docks_available = 0
GROUP BY i.name
ORDER BY 2 DESC
LIMIT 1;

SELECT s.name, COUNT(tr.start_station) as trips_count, s.dockcount
FROM trips tr
JOIN stations s
ON tr.start_station = s.name
GROUP BY s.name, s.dockcount
ORDER BY s.dockcount;

SELECT  w.date, MAX(tr.duration)
FROM weather w
JOIN trips tr
ON w.date = substring(tr.start_date from 1 for 10)
WHERE w.precipitationin > 0
GROUP BY w.date;