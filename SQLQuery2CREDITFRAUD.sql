SELECT * FROM FRAUD_TEST

SELECT * FROM BITCOIN
WHERE VOLUME_BTC  LIKE  'NAN'

-----DELETE NAN FROM BITCOIN-----------------
DELETE FROM BITCOIN
WHERE VOLUME_BTC LIKE 'NAN'

SELECT * FROM BITCOIN

-----TOTALS, MAX, MIN AND AVERAGES--------
SELECT COUNT(DISTINCT TIMESTAMP) AS TOTAL FROM BITCOIN

SELECT AVG(CAST (OPEN_COST AS FLOAT)) AS AVG_OPEN FROM BITCOIN

SELECT  MIN(CAST(OPEN_COST AS FLOAT)) AS LOWEST_OPEN FROM BITCOIN

SELECT MAX(CAST(OPEN_COST AS FLOAT)) AS HIGHEST_OPEN FROM BITCOIN

SELECT AVG(CAST(HIGH_COST AS FLOAT)) AS AVG_HIGH FROM BITCOIN

SELECT MIN(CAST(HIGH_COST AS FLOAT)) AS LOWEST_HIGH FROM BITCOIN

SELECT MAX(CAST(HIGH_COST AS FLOAT)) AS HIGHEST_HIGH FROM BITCOIN

SELECT AVG(CAST(LOW_COST AS FLOAT)) AS AVG_LOW FROM BITCOIN

SELECT MIN(CAST(LOW_COST AS FLOAT)) AS LOWEST_LOW FROM BITCOIN

SELECT MAX(CAST(LOW_COST AS FLOAT)) AS HIGHEST_LOW FROM BITCOIN

SELECT AVG(CAST(CLOSE_COST AS FLOAT)) AS AVG_CLOSE FROM BITCOIN

SELECT MIN(CAST(CLOSE_COST AS FLOAT)) AS LOWEST_CLOSE FROM BITCOIN

SELECT MAX(CAST(CLOSE_COST AS FLOAT)) AS HIGHEST_CLOSE FROM BITCOIN

SELECT SUM(CAST(VOLUME_BTC AS FLOAT)) AS TOTAL_VOLUME_BTC FROM BITCOIN

SELECT AVG(CAST(VOLUME_BTC AS FLOAT)) AS AVG_VOLUME_BTC FROM BITCOIN

SELECT MIN(CAST(VOLUME_BTC AS FLOAT)) AS LOWEST_VOLUME_BTC FROM BITCOIN

SELECT MAX(CAST(VOLUME_BTC AS FLOAT)) AS HIGHEST_VOLUME_BTC FROM BITCOIN

SELECT SUM(CAST(VOLUME_CURRENCY AS FLOAT)) AS TOTAL_VOLUME_CURRENCY FROM BITCOIN

SELECT AVG(CAST(VOLUME_CURRENCY AS FLOAT)) AS AVG_VOLUME_CURRENCY FROM BITCOIN

SELECT MIN(CAST(VOLUME_CURRENCY AS FLOAT)) AS LOWEST_VOLUME_CURRENCY FROM BITCOIN

SELECT MAX(CAST(VOLUME_CURRENCY AS FLOAT)) AS HIGHEST_VOLUME_CURRENCY FROM BITCOIN

SELECT SUM(CAST(WEIGHTED_PRICE AS FLOAT)) AS TOTAL_WEIGHTED_PRICE FROM BITCOIN

SELECT AVG(CAST(WEIGHTED_PRICE AS FLOAT)) AS AVG_WEIGHTED_PRICE FROM BITCOIN

SELECT MIN(CAST(WEIGHTED_PRICE AS FLOAT)) AS LOWEST_WEIGHTED_PRICE FROM BITCOIN

SELECT MAX(CAST(WEIGHTED_PRICE AS FLOAT)) AS HIGHEST_WEIGHTED_PRICE FROM BITCOIN

----------TIMESTAMP VARIATION------------------
SELECT TIMESTAMP, SUM(OPEN_COST
