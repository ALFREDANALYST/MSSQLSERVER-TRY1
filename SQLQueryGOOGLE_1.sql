------------COMBINING DATASETS----------
SELECT * 
INTO CYCLISTIC_Q3Q4
FROM (
SELECT * FROM DIVVY_TRIPS_2016_Q3
UNION 
SELECT * FROM Divvy_Trips_2016_Q4
) CYCLISTIC_Q3Q4

DELETE FROM CYCLISTIC_Q3Q4
WHERE TRIP_ID IS NULL

SELECT * FROM CYCLISTIC_Q3Q4


-------TOTALS, MAX, MIN & AVERAGES--------------
SELECT COUNT(DISTINCT TRIP_ID)  AS TOTAL_TRIPS FROM CYCLISTIC_Q3Q4

SELECT COUNT(DISTINCT BIKEID) AS TOTAL_BIKES FROM CYCLISTIC_Q3Q4

SELECT SUM(CAST(TRIPDURATION AS BIGINT)) AS TOTAL_DURATION FROM CYCLISTIC_Q3Q4

SELECT MAX(CAST(TRIPDURATION AS BIGINT)) AS LONGEST_RIDE FROM CYCLISTIC_Q3Q4

SELECT MIN(CAST(TRIPDURATION AS BIGINT)) AS SHORTEST_RIDE FROM CYCLISTIC_Q3Q4

SELECT AVG(CAST(TRIPDURATION AS BIGINT)) AS AVG_DURATION FROM CYCLISTIC_Q3Q4

SELECT COUNT( DISTINCT FROM_STATION_ID) AS TOTAL_FROM_STATIONS, COUNT(DISTINCT TO_STATION_ID) AS TOTAL_TO_STATIONS FROM CYCLISTIC_Q3Q4

SELECT USERTYPE, COUNT(USERTYPE) AS TOTAL FROM CYCLISTIC_Q3Q4
GROUP BY USERTYPE
ORDER BY TOTAL DESC

-------HOW DO CUSTOMER(CASUAL) DIFFER FROM SUBSCRIBER(ANNUAL MEMBERSHIP)----------

------1.NUMBER DIFFERENCE------(MORE ANNUAL MEMMERS THAN CASUALS)
SELECT USERTYPE, COUNT(USERTYPE) AS TOTAL FROM CYCLISTIC_Q3Q4
GROUP BY USERTYPE
ORDER BY TOTAL DESC

------2. FROM STATIONS(THE FROM STATIONS WHERE MOST TRIPS ARE TAKEN FROM DIFFER AMONG THE TWO CATEGORIES)
SELECT USERTYPE, COUNT(DISTINCT TRIP_ID) AS TOTAL FROM CYCLISTIC_Q3Q4
GROUP BY USERTYPE
ORDER BY TOTAL DESC

SELECT FROM_STATION_NAME, COUNT(DISTINCT TRIP_ID) AS TOTAL FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'CUSTOMER'
GROUP BY FROM_STATION_NAME
ORDER BY TOTAL DESC

SELECT FROM_STATION_NAME, COUNT(DISTINCT TRIP_ID) AS TOTAL FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'SUBSCRIBER'
GROUP BY FROM_STATION_NAME
ORDER BY TOTAL DESC

------3. TO STATION NAME
SELECT USERTYPE, COUNT(DISTINCT TO_STATION_ID) AS TOTAL FROM CYCLISTIC_Q3Q4
GROUP BY USERTYPE
ORDER BY TOTAL DESC

SELECT TO_STATION_NAME, COUNT(DISTINCT TRIP_ID) AS TOTAL FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'CUSTOMER'
GROUP BY TO_STATION_NAME
ORDER BY TOTAL DESC

SELECT TO_STATION_NAME, COUNT(DISTINCT TRIP_ID) AS TOTAL FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'SUBSCRIBER'
GROUP BY TO_STATION_NAME
ORDER BY TOTAL DESC

--------4.TRIP DURATION------
SELECT DISTINCT TRIPDURATION, COUNT(CAST(TRIPDURATION AS BIGINT)) AS TOTAL FROM CYCLISTIC_Q3Q4--------MOST DURATIONS OF TRIPS
GROUP BY TRIPDURATION
ORDER BY TOTAL DESC

SELECT DISTINCT TRIPDURATION, COUNT(CAST(TRIPDURATION AS BIGINT)) AS TOTAL FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'CUSTOMER'
GROUP BY TRIPDURATION
ORDER BY TOTAL DESC

SELECT DISTINCT TRIPDURATION, COUNT(CAST(TRIPDURATION AS BIGINT)) AS TOTAL FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'SUBSCRIBER'
GROUP BY TRIPDURATION
ORDER BY TOTAL DESC


SELECT USERTYPE, SUM(CAST(TRIPDURATION AS BIGINT)) AS TOTAL FROM CYCLISTIC_Q3Q4---------TOTAL TIME
GROUP BY USERTYPE
ORDER BY TOTAL DESC

SELECT USERTYPE, AVG(CAST(TRIPDURATION AS BIGINT)) AS AVERAGE_TIME FROM CYCLISTIC_Q3Q4---------AVG TIME(CUSTOMERS ON AVERAGE SPEND MORE TIME ON TRIPS)
GROUP BY USERTYPE
ORDER BY AVERAGE_TIME DESC


SELECT USERTYPE, AVG(CAST(TRIPDURATION AS BIGINT)) AS AVG_TIME FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'CUSTOMER'
GROUP BY USERTYPE
ORDER BY AVG_TIME 

SELECT USERTYPE, MAX(CAST(TRIPDURATION AS BIGINT)) AS HIGHEST_TIME FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'CUSTOMER'
GROUP BY USERTYPE
ORDER BY HIGHEST_TIME 

SELECT USERTYPE, MIN(CAST(TRIPDURATION AS BIGINT)) AS LOWEST_TIME FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'CUSTOMER'
GROUP BY USERTYPE
ORDER BY LOWEST_TIME 

SELECT USERTYPE, AVG(CAST(TRIPDURATION AS BIGINT)) AS AVG_TIME FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'SUBSCRIBER'
GROUP BY USERTYPE
ORDER BY AVG_TIME 

SELECT USERTYPE, MAX(CAST(TRIPDURATION AS BIGINT)) AS HIGHEST_TIME FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'SUBSCRIBER'
GROUP BY USERTYPE
ORDER BY HIGHEST_TIME 

SELECT USERTYPE, MIN(CAST(TRIPDURATION AS BIGINT)) AS LOWEST_TIME FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'SUBSCRIBER'
GROUP BY USERTYPE
ORDER BY LOWEST_TIME 

-------5.BIKES-------------------
SELECT USERTYPE, COUNT( DISTINCT BIKEID) AS TOTAL FROM CYCLISTIC_Q3Q4---------TOTAL BIKES
GROUP BY USERTYPE
ORDER BY TOTAL DESC

SELECT BIKEID, COUNT(TRIP_ID) AS TOTAL FROM CYCLISTIC_Q3Q4
GROUP BY BIKEID
ORDER BY TOTAL DESC


SELECT BIKEID, COUNT(TRIP_ID) AS TOTAL FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'CUSTOMER'
GROUP BY BIKEID
ORDER BY TOTAL DESC

SELECT BIKEID, COUNT(TRIP_ID) AS TOTAL FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'SUBSCRIBER'
GROUP BY BIKEID
ORDER BY TOTAL DESC

SELECT BIKEID, COUNT(TRIP_ID) AS TOTAL, SUM(CAST(TRIPDURATION AS BIGINT)) AS TOTAL_T FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'CUSTOMER'
GROUP BY BIKEID
ORDER BY TOTAL DESC, TOTAL_T

SELECT BIKEID, COUNT(TRIP_ID) AS TOTAL, SUM(CAST(TRIPDURATION AS BIGINT)) AS TOTAL_T FROM cyclisticQ1Q2
WHERE USERTYPE = 'SUBSCRIBER'
GROUP BY BIKEID
ORDER BY TOTAL DESC, TOTAL_T

--------6. MOST USED BIKES-----
-------BIKE 5198 MOST USED BY CUSTOMER----
SELECT FROM_STATION_NAME, COUNT(FROM_STATION_NAME) AS TOTAL, SUM(CAST(TRIPDURATION AS BIGINT)) AS TOTAL_T FROM CYCLISTIC_Q3Q4
WHERE BIKEID = 5198
GROUP BY FROM_STATION_NAME
ORDER BY TOTAL DESC, TOTAL_T

------BIKE 1016 MOST USED BY SUBSCRIBERS-------
SELECT FROM_STATION_NAME, COUNT(FROM_STATION_NAME) AS TOTAL, SUM(CAST(TRIPDURATION AS BIGINT)) AS TOTAL_T FROM CYCLISTIC_Q3Q4
WHERE BIKEID = 1016
GROUP BY FROM_STATION_NAME
ORDER BY TOTAL DESC, TOTAL_T

---------7.START TIME-----
SELECT START_TIME, COUNT(START_TIME) AS TOTAL FROM CYCLISTIC_Q3Q4
GROUP BY START_TIME
ORDER BY TOTAL DESC

SELECT START_TIME, COUNT(START_TIME) AS TOTAL FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'CUSTOMER'
GROUP BY START_TIME
ORDER BY TOTAL DESC

SELECT START_TIME, COUNT(START_TIME) AS TOTAL FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'SUBSCRIBER'
GROUP BY START_TIME
ORDER BY TOTAL DESC

---------8.STOP TIME--------
SELECT STOP_TIME, COUNT(STOP_TIME) AS TOTAL FROM CYCLISTIC_Q3Q4
GROUP BY STOP_TIME
ORDER BY TOTAL DESC

SELECT STOP_TIME, COUNT(STOP_TIME) AS TOTAL FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'CUSTOMER'
GROUP BY STOP_TIME
ORDER BY TOTAL DESC

SELECT STOP_TIME, COUNT(STOP_TIME) AS TOTAL FROM CYCLISTIC_Q3Q4
WHERE USERTYPE = 'SUBSCRIBER'
GROUP BY STOP_TIME
ORDER BY TOTAL DESC


