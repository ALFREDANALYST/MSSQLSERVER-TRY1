SELECT * FROM SALES

SELECT COUNT(FULL_NAME) FROM SALES

SELECT AVG(SALES) FROM SALES

SELECT MAX(SALES) FROM SALES
------DAY 2
SELECT * FROM SALES
WHERE FULL_NAME LIKE '%S%A'
SELECT FULL_NAME,
  CASE
      WHEN SALES > 10000 THEN 'EXCELLENT'
	  WHEN SALES < 5000 THEN 'POOR'
	  ELSE 'MEDIUM'
 END AS COMMENT
 
 FROM SALES

  SELECT FULL_NAME FROM SALES
  GROUP BY FULL_NAME
  HAVING SUM(SALES) > 10000

UPDATE SALES
SET FULL_NAME = 'MBOGO ALFRED'

SELECT DISTINCT FULL_NAME FROM SALES


DELETE FROM SALES
WHERE FULL_NAME = 'MBOGO ALFRED'

SELECT * FROM SALES



-----DAY 3

SELECT * FROM ORDERS
---TEMP TABLES
---STRING FUNCTIONS AND CASES
---USING TRIM,LTRIM,RTRIM---REMOVING SPACES BEFORE OR INBETWEEN CHARACTERS

SELECT ORDERNUMBER, RTRIM(ORDERNUMBER) AS ORDERIDTRIM
FROM ORDERS

---USING REPLACE
SELECT FULL_NAME, REPLACE(FULL_NAME, 'KWAI',' ') AS FULLNAMEFIXED
FROM ORDERS

----USING SUBSTRING
----USING UPPER AND LOWER---CHANGING CASES FOR CHARACTERS

SELECT FULL_NAME, LOWER(FULL_NAME)
FROM ORDERS

-----STORED PROCEDURES
CREATE PROCEDURE 
TEST
AS
SELECT * FROM ORDERS

-----SUBQUERIES
SELECT ORDERNUMBER,QUANTITYORDERED, (SELECT AVG(SALES) FROM ORDERS) AS ALLAVGSALES
FROM ORDERS

----SUBQUERY IN WHERE
SELECT ORDERNUMBER,FULL_NAME,SALES
FROM ORDERS
WHERE ORDERNUMBER IN(
             SELECT ORDERNUMBER
			 FROM ORDERS
			 WHERE DEALSIZE = 'MEDIUM')
SELECT DISTINCT FULL_NAME FROM ORDERS
-----COVID DATA-------------------
SELECT * FROM COVIDDATA

---UGANDA--------
SELECT LOCATION, DATE, TOTAL_CASES, NEW_CASES, TOTAL_DEATHS,POPULATION
FROM COVIDDATA
WHERE LOCATION = 'UGANDA'

--------1)HIGH DEATHS FROM COVID19------------
SELECT LOCATION,POPULATION, MAX(CAST (TOTAL_DEATHS AS INT))AS TOTALDEATHSCOUNT 
FROM COVIDDATA

GROUP BY LOCATION, POPULATION
ORDER BY TOTALDEATHSCOUNT DESC
----CAST HELPS CHANGE DATA TYPE

--------2)GLOBALNEWCASES AND NEW DEATHS-----------
SELECT LOCATION ,SUM(CAST(NEW_CASES AS INT)) AS TOTALNEWCASES, SUM(CAST(NEW_DEATHS AS INT)) AS TOTALNEWDEATHS
FROM COVIDDATA
GROUP BY LOCATION
ORDER BY TOTALNEWCASES, TOTALNEWDEATHS DESC

--------3)TOTAL POPULATION VS VACCINATIONS
SELECT LOCATION, POPULATION, AVG(CAST(PEOPLE_FULLY_VACCINATED AS FLOAT)) AS TOTALPERSONSFULLYJABBED
FROM COVIDDATA
GROUP BY LOCATION,POPULATION
ORDER BY TOTALPERSONSFULLYJABBED DESC

SELECT DATE, LOCATION, POPULATION, LIFE_EXPECTANCY, SUM(CAST(PEOPLE_FULLY_VACCINATED AS BIGINT )) AS TOTALVAX
FROM COVIDDATA
GROUP BY DATE, LOCATION, POPULATION, LIFE_EXPECTANCY
ORDER BY TOTALVAX DESC

---------4)ICU PATIENTS--------
SELECT * FROM COVIDDATA
SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, SUM(CAST(ICU_PATIENTS AS INT)) AS TOTALICU
FROM COVIDDATA
GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
ORDER BY TOTALICU DESC

---------5)HANDWASHING_FACILITIES------
SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, SUM(CAST(HANDWASHING_FACILITIES AS FLOAT)) AS TOTALHANDWASH
FROM COVIDDATA
GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
ORDER BY TOTALHANDWASH DESC

---------6)HOSPITALISED PATIENTS----------
SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, SUM(CAST(HOSP_PATIENTS AS INT)) AS TOTALHOSPPATIENTS
FROM COVIDDATA
GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
ORDER BY TOTALHOSPPATIENTS DESC
 
 --------7)TOTAL TESTS----------------
 SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, SUM(CAST(TOTAL_TESTS AS BIGINT)) AS TOTALTESTSFINAL
 FROM COVIDDATA
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY TOTALTESTSFINAL DESC

 ---------8)AGED_70_OLDER
 SELECT * FROM COVIDDATA
 SELECT AGED_70_OLDER FROM COVIDDATA
 SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(AGED_70_OLDER AS FLOAT)) AS ABOVE70, AVG(CAST(AGED_65_OLDER AS FLOAT)) AS ABOVE65
 FROM COVIDDATA
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY ABOVE65, ABOVE70 DESC

 ---------9)IN EXTREME POVERTY
 SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(EXTREME_POVERTY AS FLOAT)) AS EXTREMEPOVERTY
 FROM COVIDDATA
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY EXTREMEPOVERTY DESC

 ---------10)HEART DIESEASE AND DIABETES PREVALENCE
 SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(CARDIOVASC_DEATH_RATE AS FLOAT)) AS HEARTDISEASE, AVG(CAST(DIABETES_PREVALENCE AS FLOAT)) AS DIABETIC
 FROM COVIDDATA
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY HEARTDISEASE, DIABETIC DESC

 ----------11)FEMALE AND MALE SMOKERS------
 SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(FEMALE_SMOKERS AS FLOAT)) AS FEMALESMOKERS, AVG(CAST(MALE_SMOKERS AS FLOAT)) AS MALESMOKERS
 FROM COVIDDATA
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY FEMALESMOKERS, MALESMOKERS DESC

 ------------12)HOSPITAL BEDS PER THOUSAND
 SELECT  LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(HOSPITAL_BEDS_PER_THOUSAND AS FLOAT)) AS HOSPITALBEDSPERTHOUSAND
 FROM COVIDDATA
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY HOSPITALBEDSPERTHOUSAND DESC

 -----------UGANDA---------
 SELECT * FROM COVIDDATA
 ---SELECT DATE, LOCATION, POPULATION, LIFE_EXPECTANCY, TOTAL_CASES, NEW_CASES, TOTAL_DEATHS, NEW_DEATHS, REPRODUCTION_RATE, ICU_PATIENTS, HOSP_PATIENTS,TOTAL_TESTS, TOTAL_VACCINATIONS, PEOPLE_FULLY_VACCINATED, AGED_65_OLDER, AGED_70_OLDER, EXTREME_POVERTY, CARDIOVASC_DEATH_RATE, DIABETES_PREVALENCE, FEMALE_SMOKERS, MALE_SMOKERS, HANDWASHING_FACILITIES, HOSPITAL_BEDS_PER_THOUSAND FROM COVIDDATA
 WHERE LOCATION = 'UGANDA'

 -----------1)TOTAL DEATHS AND TOTAL CASES
 SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(TOTAL_CASES AS INT)) AS TOTALCASES, AVG(CAST(TOTAL_DEATHS AS INT)) AS TOTALDEATHS
 FROM COVIDDATA
 WHERE LOCATION = 'UGANDA'
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY TOTALCASES, TOTALDEATHS

 ----PATH2
  SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, SUM(CAST(NEW_CASES AS INT)) AS TOTALCASES, SUM(CAST(NEW_DEATHS AS INT)) AS TOTALDEATHS
 FROM COVIDDATA
 WHERE LOCATION = 'UGANDA'
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY TOTALCASES, TOTALDEATHS

 -----------2)ICUPATIENTS AND HOSPPATIENTS
  SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, SUM(CAST(ICU_PATIENTS AS INT)) AS TOTALICUCASES, SUM(CAST(HOSP_PATIENTS AS INT)) AS TOTALHOSPS
 FROM COVIDDATA
 WHERE LOCATION = 'UGANDA'
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY TOTALICUCASES,TOTALHOSPS

 ---------3)TOTALTESTS AND PEOPLEVACCINATED
  SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(TOTAL_TESTS AS INT)) AS TOTALTESTED, AVG(CAST(PEOPLE_FULLY_VACCINATED AS INT)) AS TOTALVAX
 FROM COVIDDATA
 WHERE LOCATION = 'UGANDA'
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY

 ---------4)AGED65 AND AGED 70
 SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(AGED_65_OLDER AS FLOAT)) AS ABOVEAND65, AVG(CAST(AGED_70_OLDER AS FLOAT)) AS ABOVEAND70
 FROM COVIDDATA
 WHERE LOCATION = 'UGANDA'
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY ABOVEAND65, ABOVEAND70

 ---------5)POVERTY AND HANDWASHING FACILITIES
  SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(EXTREME_POVERTY AS FLOAT)) AS POVERTYLEVEL, AVG(CAST(HANDWASHING_FACILITIES AS FLOAT)) AS TOTALHANDWASH
 FROM COVIDDATA
 WHERE LOCATION = 'UGANDA'
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY POVERTYLEVEL, TOTALHANDWASH

 ---------6)HEARTDISEASE AND DIABETES
  SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(CARDIOVASC_DEATH_RATE AS FLOAT)) AS HEARTDISEASEDEATHRATE, AVG(CAST(DIABETES_PREVALENCE AS FLOAT)) AS DIABETIC
 FROM COVIDDATA
 WHERE LOCATION = 'UGANDA'
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY HEARTDISEASEDEATHRATE,DIABETIC

 --------7)PERCENTAGE GENDER THAT SMOKE
 SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(FEMALE_SMOKERS AS FLOAT)) AS FEMALESMOKERS , AVG(CAST(MALE_SMOKERS AS FLOAT)) AS MALESMOKERS
 FROM COVIDDATA
 WHERE LOCATION = 'UGANDA'
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY FEMALESMOKERS, MALESMOKERS

 ---------8)HOSPITALBEDSPERTHOUSAND
  SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(HOSPITAL_BEDS_PER_THOUSAND AS FLOAT)) AS HOSPITALBEDSPERTHOUSAND
 FROM COVIDDATA
 WHERE LOCATION = 'UGANDA' 
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY HOSPITALBEDSPERTHOUSAND

 ----------AFRICA-------------
 SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, TOTAL_CASES, NEW_CASES, TOTAL_DEATHS, NEW_DEATHS, REPRODUCTION_RATE, ICU_PATIENTS, HOSP_PATIENTS,TOTAL_TESTS, TOTAL_VACCINATIONS, PEOPLE_FULLY_VACCINATED, AGED_65_OLDER, AGED_70_OLDER, EXTREME_POVERTY, CARDIOVASC_DEATH_RATE, DIABETES_PREVALENCE, FEMALE_SMOKERS, MALE_SMOKERS, HANDWASHING_FACILITIES, HOSPITAL_BEDS_PER_THOUSAND FROM COVIDDATA
 WHERE LOCATION = 'AFRICA'

 -----TOTALCASES AND DEATHS
  SELECT LOCATION, POPULATION, SUM(CAST(NEW_DEATHS AS INT)) AS TOTALDEATHS, SUM(CAST(NEW_CASES AS INT)) AS TOTALCASES
  FROM COVIDDATA
  WHERE LOCATION = 'AFRICA'
  GROUP BY LOCATION, POPULATION
  ORDER BY TOTALDEATHS, TOTALCASES DESC

  ------AGE---------
 SELECT LOCATION, POPULATION, AVG(CAST(AGED_65_OLDER AS FLOAT)) AS ABOVEAND65, AVG(CAST(AGED_70_OLDER AS FLOAT)) AS ABOVEAND70
 FROM COVIDDATA
 WHERE LOCATION = 'AFRICA'
 GROUP BY LOCATION, POPULATION
 ORDER BY ABOVEAND65, ABOVEAND70 DESC

 -------ICU AND HOSPITALISED
  SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, SUM(CAST(ICU_PATIENTS AS INT)) AS TOTALICUCASES, SUM(CAST(HOSP_PATIENTS AS INT)) AS TOTALHOSPS
 FROM COVIDDATA
 WHERE LOCATION = 'AFRICA'
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY TOTALICUCASES,TOTALHOSPS

 ------TOTAL TESTS AND PEOPLE VAXED
  SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(TOTAL_TESTS AS BIGINT)) AS TOTALTESTED, AVG(CAST(PEOPLE_FULLY_VACCINATED AS BIGINT)) AS TOTALVAX
 FROM COVIDDATA
 WHERE LOCATION = 'AFRICA'
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY

 -----POVERTY AND HANDWASHING FACILITIES
  SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(EXTREME_POVERTY AS FLOAT)) AS POVERTYLEVEL, AVG(CAST(HANDWASHING_FACILITIES AS FLOAT)) AS TOTALHANDWASH
 FROM COVIDDATA
 WHERE LOCATION = 'AFRICA'
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY POVERTYLEVEL, TOTALHANDWASH

 -----HEARTDISEASE AND DIABETES
  SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(CARDIOVASC_DEATH_RATE AS FLOAT)) AS HEARTDISEASEDEATHRATE, AVG(CAST(DIABETES_PREVALENCE AS FLOAT)) AS DIABETIC
 FROM COVIDDATA
 WHERE LOCATION = 'AFRICA'
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY HEARTDISEASEDEATHRATE,DIABETIC

 ------PERCENTAGE GENDER THAT SMOKE
  SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(FEMALE_SMOKERS AS FLOAT)) AS FEMALESMOKERS , AVG(CAST(MALE_SMOKERS AS FLOAT)) AS MALESMOKERS
 FROM COVIDDATA
 WHERE LOCATION = 'AFRICA'
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY FEMALESMOKERS, MALESMOKERS

 ------HOSPITALBEDSPERTHOUSAND--------CHANGE FROM LOCATION TO CONTINENT
  SELECT LOCATION, POPULATION, LIFE_EXPECTANCY, AVG(CAST(HOSPITAL_BEDS_PER_THOUSAND AS BIGINT)) AS HOSPITALBEDSPERTHOUSAND
 FROM COVIDDATA
 WHERE LOCATION = 'AFRICA' 
 GROUP BY LOCATION, POPULATION, LIFE_EXPECTANCY
 ORDER BY HOSPITALBEDSPERTHOUSAND


   







 










  
 

 
 