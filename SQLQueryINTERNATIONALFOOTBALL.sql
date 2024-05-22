SELECT * FROM GOALSCORERS

SELECT  * FROM RESULTS

SELECT * FROM SHOOTOUTS

--------------ANALYSIS OF SEPARATE DATASETS----------------------
1.-----------GOALSCORERS DATASET-------------
--------------TEAMS THAT HAVE SCORED MOST-----------------
SELECT DISTINCT TEAM, COUNT(TEAM) AS TOTAL FROM GOALSCORERS
GROUP BY TEAM
ORDER BY TOTAL DESC

------------PLAYERS THAT HAVE SCORED THE MOST----------------
SELECT DISTINCT SCORER, TEAM,  COUNT(SCORER) AS TOTAL FROM GOALSCORERS
GROUP BY SCORER, TEAM
ORDER BY TOTAL DESC

SELECT * FROM GOALSCORERS
WHERE SCORER LIKE '%CRISTIANO%'

-------------COUNTRIES THAT HAVE SCORED MORE OWN GOALS AND NOT------------
SELECT DISTINCT TEAM, COUNT(OWN_GOAL) AS TOTAL FROM GOALSCORERS
WHERE OWN_GOAL LIKE '%FALSE%'
GROUP BY TEAM
ORDER BY TOTAL DESC

SELECT DISTINCT TEAM, COUNT(OWN_GOAL) AS TOTAL FROM GOALSCORERS
WHERE OWN_GOAL LIKE '%TRUE%'
GROUP BY TEAM
ORDER BY TOTAL DESC

------------COUNTRIES WITH LESS AND MORE PENALTY GOALS-------------
SELECT DISTINCT TEAM, COUNT(PENALTY) AS TOTAL FROM GOALSCORERS
WHERE PENALTY LIKE '%FALSE%'
GROUP BY TEAM
ORDER BY TOTAL DESC

SELECT DISTINCT TEAM, COUNT(PENALTY) AS TOTAL FROM GOALSCORERS
WHERE PENALTY LIKE '%TRUE%'
GROUP BY TEAM
ORDER BY TOTAL DESC

-------------SCORERS BY NUMBER OF GOALS AND OWN_GOALS----------------
SELECT DISTINCT SCORER, COUNT(OWN_GOAL) AS TOTAL FROM GOALSCORERS
WHERE OWN_GOAL LIKE'%FALSE%'
GROUP BY SCORER
ORDER BY TOTAL DESC

SELECT DISTINCT SCORER, COUNT(OWN_GOAL) AS TOTAL FROM GOALSCORERS
WHERE OWN_GOAL LIKE'%TRUE%'
GROUP BY SCORER
ORDER BY TOTAL DESC

SELECT DISTINCT SCORER,TEAM, COUNT(OWN_GOAL) AS TOTAL FROM GOALSCORERS
WHERE OWN_GOAL LIKE'%TRUE%'
GROUP BY SCORER, TEAM
ORDER BY TOTAL DESC

SELECT * FROM GOALSCORERS
WHERE SCORER LIKE '%GUSTAVO%'

-------------SCORERS WITH LESS AND MORE PENALTY GOALS-------------
SELECT DISTINCT SCORER, COUNT(PENALTY) AS TOTAL FROM GOALSCORERS
WHERE PENALTY LIKE '%FALSE%'
GROUP BY SCORER
ORDER BY TOTAL DESC

SELECT DISTINCT SCORER, COUNT(PENALTY) AS TOTAL FROM GOALSCORERS
WHERE PENALTY LIKE '%TRUE%'
GROUP BY SCORER
ORDER BY TOTAL DESC

----------------GOALS SCORED IN EACH MINUTE--------
SELECT DISTINCT MINUTE, COUNT(MINUTE) AS TOTAL FROM GOALSCORERS
GROUP BY MINUTE
ORDER BY TOTAL DESC

-------------COUNTRY WITH GOALS SCORED IN EACH MINUTE------------
SELECT DISTINCT MINUTE, COUNT(MINUTE) AS TOTAL FROM GOALSCORERS
WHERE TEAM LIKE '%BRAZIL%'
GROUP BY MINUTE
ORDER BY TOTAL DESC

SELECT DISTINCT MINUTE, COUNT(MINUTE) AS TOTAL FROM GOALSCORERS
WHERE TEAM LIKE '%ARGENTINA%'
GROUP BY MINUTE
ORDER BY TOTAL DESC

SELECT DISTINCT MINUTE, COUNT(MINUTE) AS TOTAL FROM GOALSCORERS
WHERE TEAM LIKE '%ENGLAND%'
GROUP BY MINUTE
ORDER BY TOTAL DESC

SELECT DISTINCT MINUTE, COUNT(MINUTE) AS TOTAL FROM GOALSCORERS
WHERE TEAM LIKE '%FRANCE%'
GROUP BY MINUTE
ORDER BY TOTAL DESC

SELECT DISTINCT MINUTE, COUNT(MINUTE) AS TOTAL FROM GOALSCORERS
WHERE TEAM LIKE '%GERMANY%'
GROUP BY MINUTE
ORDER BY TOTAL DESC

SELECT DISTINCT MINUTE, COUNT(MINUTE) AS TOTAL FROM GOALSCORERS
WHERE TEAM LIKE '%ITALY%'
GROUP BY MINUTE
ORDER BY TOTAL DESC

-------------PROMINENT SCORERS AND TIME OF THEIR GOALS---------------
SELECT DISTINCT MINUTE, COUNT(MINUTE) AS TOTAL FROM GOALSCORERS
WHERE SCORER LIKE '%CRISTIANO RONALDO%'
GROUP BY MINUTE
ORDER BY TOTAL DESC

SELECT DISTINCT MINUTE, COUNT(MINUTE) AS TOTAL FROM GOALSCORERS
WHERE SCORER LIKE '%ROBERT LEWANDOWSKI%'
GROUP BY MINUTE
ORDER BY TOTAL DESC

SELECT DISTINCT MINUTE, COUNT(MINUTE) AS TOTAL FROM GOALSCORERS
WHERE SCORER LIKE '%ROMELU LUKAKU%'
GROUP BY MINUTE
ORDER BY TOTAL DESC

SELECT DISTINCT MINUTE, COUNT(MINUTE) AS TOTAL FROM GOALSCORERS
WHERE SCORER LIKE '%HARRY KANE%'
GROUP BY MINUTE
ORDER BY TOTAL DESC

SELECT DISTINCT MINUTE, COUNT(MINUTE) AS TOTAL FROM GOALSCORERS
WHERE SCORER LIKE '%LIONEL MESSI%'
GROUP BY MINUTE
ORDER BY TOTAL DESC

-----------DATE AND GOALS SCORED--------------
SELECT DISTINCT DATE, COUNT(SCORER) AS TOTAL FROM GOALSCORERS
GROUP BY DATE
ORDER BY TOTAL DESC

-----------DATE AND DIFFERENT SCORERS---------------
SELECT DISTINCT DATE, COUNT(DISTINCT SCORER) AS TOTAL FROM GOALSCORERS
GROUP BY DATE
ORDER BY TOTAL DESC

-------DETERMINING RANGE OF DATES AND MINUTES IN WHICH GOALS WERE SCORED----------DATE
SELECT MAX(DATE) AS MAX_DATE, MIN(DATE) AS MIN_DATE FROM GOALSCORERS

SELECT MAX(MINUTE) AS MAX_MINUTE, MIN(MINUTE) AS MIN_MINUTE FROM GOALSCORERS

------TEAMS SCORED MOST GOALS------------------
SELECT DISTINCT TEAM, COUNT(TEAM) AS TOTAL FROM GOALSCORERS
WHERE DATE BETWEEN '1916-07-02' AND '2024-02-11'
GROUP BY TEAM
ORDER BY TOTAL DESC

--------TEAMS PLAYED MOST HOME GAMES AND AWAY GAMES---------------
SELECT DISTINCT HOME_TEAM, COUNT(HOME_TEAM) AS TOTAL FROM GOALSCORERS
WHERE DATE BETWEEN '1916-07-02' AND '2024-02-11'
GROUP BY HOME_TEAM
ORDER BY TOTAL DESC

SELECT DISTINCT AWAY_TEAM, COUNT(AWAY_TEAM) AS TOTAL FROM GOALSCORERS
WHERE DATE BETWEEN '1916-07-02' AND '2024-02-11'
GROUP BY AWAY_TEAM
ORDER BY TOTAL DESC

----------MINUTES IN WHICH MOST GOALS ARE SCORED FOR TEAMS AND PLAYERS-------------
SELECT DISTINCT SCORER, COUNT(SCORER) AS TOTAL FROM GOALSCORERS
WHERE MINUTE BETWEEN '1' AND '90'
GROUP BY SCORER
ORDER BY TOTAL DESC

SELECT DISTINCT SCORER, COUNT(SCORER) AS TOTAL FROM GOALSCORERS
WHERE MINUTE BETWEEN '1' AND '45'
GROUP BY SCORER
ORDER BY TOTAL DESC

SELECT DISTINCT SCORER, COUNT(SCORER) AS TOTAL FROM GOALSCORERS
WHERE MINUTE BETWEEN '45' AND '90'
GROUP BY SCORER
ORDER BY TOTAL DESC

SELECT DISTINCT TEAM, COUNT(TEAM) AS TOTAL FROM GOALSCORERS
WHERE MINUTE BETWEEN '1' AND '45'
GROUP BY TEAM
ORDER BY TOTAL DESC

SELECT DISTINCT TEAM, COUNT(TEAM) AS TOTAL FROM GOALSCORERS
WHERE MINUTE BETWEEN '45' AND '90'
GROUP BY TEAM
ORDER BY TOTAL DESC

2.---------------SHOOTOUTS DATASET---------------------
SELECT * FROM SHOOTOUTS

SELECT MAX(DATE) AS MAX_DATE, MIN(DATE) AS MIN_DATE FROM SHOOTOUTS
--------------TEAMS AND NUMBER OF SHOOTOUTS-----------
SELECT DISTINCT HOME_TEAM, COUNT(HOME_TEAM) AS TOTAL FROM SHOOTOUTS
GROUP BY HOME_TEAM
ORDER BY TOTAL DESC

SELECT DISTINCT AWAY_TEAM, COUNT(AWAY_TEAM) AS TOTAL FROM SHOOTOUTS
GROUP BY AWAY_TEAM
ORDER BY TOTAL DESC

SELECT DISTINCT WINNER, COUNT(WINNER) AS TOTAL FROM SHOOTOUTS
GROUP BY WINNER
ORDER BY TOTAL DESC

---------WINNERS OF SHOOTOUTS WHEN FIRST SHOOTER------------
SELECT WINNER, COUNT(FIRST_SHOOTER) AS FIRST_S FROM SHOOTOUTS
GROUP BY WINNER
ORDER BY FIRST_S DESC



