SELECT * FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'

SELECT MAX(DATE) AS MAX_DATE, MIN(DATE) AS MIN_DATE FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%';

SELECT COUNT(HOME_TEAM) AS TOTAL_HOMETEAM, COUNT(AWAY_TEAM) AS TOTAL_AWAYTEAM FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%';

SELECT COUNT(DISTINCT TOURNAMENT) AS TOTAL_TOURNAMENTS FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%';

SELECT COUNT(DISTINCT CITY) AS TOTAL_CITIES FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%';

SELECT COUNT(DISTINCT COUNTRY) AS TOTAL_COUNTRIES FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%';

SELECT MAX(TOTAL_SCORE) AS MAX_TOTALSCORE, MIN(TOTAL_SCORE) AS MIN_TOTALSCORE, SUM(TOTAL_SCORE) AS TOTAL_GOALS FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%';

SELECT COUNT(FIXTURE) AS TOTAL_FIXTURES FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%';

SELECT COUNT(DISTINCT FIXTURE) AS TOTAL_FIXTURES FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%';

-----------NUMBER OF TOURNAMENTS-----------
SELECT TOURNAMENT, COUNT(TOURNAMENT) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%'
GROUP BY TOURNAMENT
ORDER BY TOTAL DESC

----------NUMBER OF GAMES BY DATE--------------
SELECT DATE, COUNT(DATE) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY DATE
ORDER BY TOTAL DESC

--------------NUMBER OF GAMES AS HOME_TEAM------------
SELECT HOME_TEAM, COUNT(HOME_TEAM) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY HOME_TEAM
ORDER BY TOTAL DESC

--------------NUMBER OF GAMES AS AWAY_TEAM---------------
SELECT AWAY_TEAM, COUNT(AWAY_TEAM) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY AWAY_TEAM
ORDER BY TOTAL DESC

-------------HOME SCORE BY NUMBER OF GAMES------------
SELECT HOME_SCORE, COUNT(HOME_SCORE) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY HOME_SCORE
ORDER BY TOTAL DESC

--------------AWAY SCORE BY NUMBER OF GAMES------------
SELECT AWAY_SCORE, COUNT(AWAY_SCORE) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY AWAY_SCORE
ORDER BY TOTAL DESC

----------------CITY BY NUMBER OF GAMES---------------
SELECT CITY, COUNT(CITY) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY CITY
ORDER BY TOTAL DESC

----------------COUNTRY BY NUMBER OF GAMES-----------------
SELECT COUNTRY, COUNT(COUNTRY) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY COUNTRY
ORDER BY TOTAL DESC

----------------NEUTRAL BY GAMES----------------------
SELECT NEUTRAL, COUNT(NEUTRAL) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY NEUTRAL
ORDER BY TOTAL DESC

----------------HIGH SCORING DATES( 5 OR MORE GOALS)------------
SELECT * FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOTAL_SCORE >= '5' AND TOURNAMENT LIKE '%FIFA%'

-------------DATE WHEN MORE GOALS ARE SCORED---------------
SELECT DATE, FIXTURE, TOURNAMENT, HOME_SCORE, AWAY_SCORE, COUNTRY, SUM(TOTAL_SCORE) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY DATE, FIXTURE, TOURNAMENT, HOME_SCORE, AWAY_SCORE,COUNTRY
ORDER BY TOTAL DESC

---------FIXTURE PLAYED MOST----------------
SELECT FIXTURE, COUNT(FIXTURE) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY FIXTURE
ORDER BY TOTAL DESC

-------FIXTURE WITH MOST GOALS-----------
SELECT FIXTURE, SUM(TOTAL_SCORE) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY FIXTURE
ORDER BY TOTAL DESC

--------CITY IN WHICH MORE GAMES AND GOALS ARE SCORED----------
SELECT CITY, COUNT(CITY) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY CITY
ORDER BY TOTAL DESC

SELECT CITY,SUM(TOTAL_SCORE) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY CITY
ORDER BY TOTAL DESC

----------COUNTRY IN WHICH MORE GAMES AND GOALS ARE-----------
SELECT COUNTRY, COUNT(COUNTRY) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY COUNTRY
ORDER BY TOTAL DESC

SELECT COUNTRY, SUM(TOTAL_SCORE) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY COUNTRY
ORDER BY TOTAL DESC

---------TOURNAMENTS WITH MORE GAMES AND GOALS--------
SELECT TOURNAMENT, COUNT(TOURNAMENT) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY TOURNAMENT
ORDER BY TOTAL DESC

SELECT TOURNAMENT, SUM(TOTAL_SCORE) AS TOTAL FROM RESULTS
WHERE FIXTURE LIKE '%UGANDA%' AND TOURNAMENT LIKE '%FIFA%'
GROUP BY TOURNAMENT
ORDER BY TOTAL DESC
