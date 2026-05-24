 -- 1. Airport with highest number of delayed departures
SELECT ORIGIN_AIRPORT, COUNT(*) AS delayed_departures
FROM flights
WHERE DEPARTURE_DELAY > 0
GROUP BY ORIGIN_AIRPORT
ORDER BY delayed_departures DESC
LIMIT 1;

-- 2. Airlines operating from more than 50 distinct origin airports
SELECT AIRLINE, COUNT(DISTINCT ORIGIN_AIRPORT) AS total_airports
FROM flights
GROUP BY AIRLINE
HAVING total_airports > 50;

-- 3. Monthly average arrival delays for each airline
SELECT AIRLINE, MONTH, AVG(ARRIVAL_DELAY) AS avg_arrival_delay
FROM flights
GROUP BY AIRLINE, MONTH
ORDER BY AIRLINE, MONTH;

-- 4. Flights where departure delay was greater than arrival delay
SELECT * FROM flights
WHERE DEPARTURE_DELAY > ARRIVAL_DELAY;

-- 5. Busiest origin airports based on total departures
SELECT ORIGIN_AIRPORT, COUNT(*) AS total_departures
FROM flights
GROUP BY ORIGIN_AIRPORT
ORDER BY total_departures DESC;

-- 6. Airlines with more than 500 cancelled flights
SELECT AIRLINE, COUNT(*) AS cancelled_flights
FROM flights
WHERE CANCELLED = 1
GROUP BY AIRLINE
HAVING cancelled_flights > 500;

-- 7. All flights with origin and destination city
SELECT f.*, 
       a1.CITY AS origin_city, 
       a2.CITY AS destination_city
FROM flights f
JOIN airports a1 ON f.ORIGIN_AIRPORT = a1.IATA_CODE
JOIN airports a2 ON f.DESTINATION_AIRPORT = a2.IATA_CODE;

 -- 8. Top 10 airlines with highest average arrival delay
SELECT AIRLINE, AVG(ARRIVAL_DELAY) AS avg_arrival_delay
FROM flights
GROUP BY AIRLINE
ORDER BY avg_arrival_delay DESC
LIMIT 10;

-- 9. Airline names and total flights operated
SELECT a.AIRLINE, COUNT(*) AS total_flights
FROM flights f
JOIN airlines a ON f.AIRLINE = a.IATA_CODE
GROUP BY a.AIRLINE
ORDER BY total_flights DESC;