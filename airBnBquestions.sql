SELECT *
FROM sfo_listings
ORDER BY price DESC
LIMIT 1;

SELECT neighbourhood, COUNT(*)
FROM sfo_listings
GROUP BY neighbourhood
ORDER BY 2 DESC;

SELECT AVG(CAST(SUBSTRING(REPLACE(price, ',','')FROM 2) AS FLOAT)), calender_date
FROM sfo_calendar
GROUP BY calender_date
ORDER BY 1;

SELECT calender_date, COUNT(listing_id)
FROM sfo_calendar
WHERE available = 'f'
GROUP BY calender_date
ORDER BY 2 DESC;