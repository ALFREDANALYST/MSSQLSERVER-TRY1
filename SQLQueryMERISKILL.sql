SELECT * FROM SALES

-----TOTALS, AVERAGE, MAX, MIN---------
SELECT COUNT(ORDER_ID) AS TOTAL_ORDERS FROM SALES

SELECT COUNT(DISTINCT PRODUCT) AS TOTAL_PRODUCTS FROM SALES

SELECT SUM(QUANTITY_ORDERED) AS TOTAL_ORDERS FROM SALES

SELECT AVG(QUANTITY_ORDERED) AS AVERAGE_QUANTITY FROM SALES

SELECT MAX(QUANTITY_ORDERED) AS MAX_QUANTITY FROM SALES

SELECT MIN(QUANTITY_ORDERED) AS MIN_QUANTITY FROM SALES

SELECT COUNT(DISTINCT ORDER_DATE) AS TOTAL_DAYS FROM SALES

SELECT COUNT(DISTINCT CITY) AS TOTAL_CITIES FROM SALES

SELECT COUNT(DISTINCT STREET) AS TOTAL_STREETS FROM SALES

SELECT SUM(SALES) AS TOTAL_SALES FROM SALES

SELECT AVG(SALES) AS AVERAGE_SALES FROM SALES

SELECT MAX(SALES) AS MAX_SALES FROM SALES

SELECT MIN(SALES) AS MIN_SALES FROM SALES

-----------PRODUCT DETAILS-------------
SELECT PRODUCT, SUM(DISTINCT PRICE_EACH) AS PRICE FROM SALES
GROUP BY PRODUCT
ORDER BY PRICE DESC

SELECT PRODUCT, COUNT(ORDER_ID) AS TOTAL_ORDERS FROM SALES
GROUP BY PRODUCT
ORDER BY TOTAL_ORDERS DESC 

SELECT PRODUCT, SUM(QUANTITY_ORDERED) AS TOTAL_QUANTITY FROM SALES
GROUP BY PRODUCT
ORDER BY TOTAL_QUANTITY DESC

SELECT PRODUCT, SUM(SALES) AS TOTAL_SALES FROM SALES
GROUP BY PRODUCT
ORDER BY TOTAL_SALES DESC

--------ORDER DATE------------------
SELECT ORDER_DATE, COUNT(ORDER_DATE) AS TOTAL_TIMES FROM SALES
GROUP BY ORDER_DATE
ORDER BY TOTAL_TIMES DESC

SELECT ORDER_DATE, COUNT(ORDER_ID) AS TOTAL_ORDERS FROM SALES
GROUP BY ORDER_DATE
ORDER BY TOTAL_ORDERS DESC

SELECT ORDER_DATE, SUM(QUANTITY_ORDERED) AS TOTAL_QUANTITY FROM SALES
GROUP BY ORDER_DATE
ORDER BY TOTAL_QUANTITY DESC

SELECT ORDER_DATE, SUM(SALES) AS TOTAL_SALES FROM SALES
GROUP BY ORDER_DATE
ORDER BY TOTAL_SALES DESC

------------------------TIME-----------------------
SELECT TIME, COUNT(ORDER_ID) AS TOTAL_ORDERS FROM SALES
GROUP BY TIME
ORDER BY TOTAL_ORDERS DESC

SELECT TIME, SUM(QUANTITY_ORDERED) AS TOTAL_QUANTITY FROM SALES
GROUP BY TIME
ORDER BY TOTAL_QUANTITY DESC

SELECT TIME, SUM(SALES) AS TOTAL_SALES FROM SALES
GROUP BY TIME
ORDER BY TOTAL_SALES DESC

----------------------STREET---------------------
SELECT STREET, COUNT(ORDER_ID) AS TOTAL_ORDERS FROM SALES
GROUP BY STREET
ORDER BY TOTAL_ORDERS DESC

SELECT STREET, SUM(QUANTITY_ORDERED) AS TOTAL_QUANTITY FROM SALES
GROUP BY STREET
ORDER BY TOTAL_QUANTITY DESC

SELECT STREET, SUM(SALES) AS TOTAL_SALES FROM SALES
GROUP BY STREET
ORDER BY TOTAL_SALES DESC

-------------CITY------------------
SELECT CITY, COUNT(ORDER_ID) AS TOTAL_ORDERS FROM SALES
GROUP BY CITY
ORDER BY TOTAL_ORDERS DESC

SELECT CITY, SUM(QUANTITY_ORDERED) AS TOTAL_QUANTITY FROM SALES
GROUP BY CITY
ORDER BY TOTAL_QUANTITY DESC

SELECT CITY, SUM(SALES) AS TOTAL_SALES FROM SALES
GROUP BY CITY
ORDER BY TOTAL_SALES DESC

---------MONTH------------------
SELECT MONTH, COUNT(ORDER_ID) AS TOTAL_ORDERS FROM SALES
GROUP BY MONTH
ORDER BY TOTAL_ORDERS DESC

SELECT MONTH, SUM(QUANTITY_ORDERED) AS TOTAL_QUANTITY FROM SALES
GROUP BY MONTH
ORDER BY TOTAL_QUANTITY DESC

SELECT MONTH, SUM(SALES) AS TOTAL_SALES FROM SALES
GROUP BY MONTH
ORDER BY TOTAL_SALES DESC

-------------HOUR-----------------
SELECT HOUR, COUNT(ORDER_ID) AS TOTAL_ORDERS FROM SALES
GROUP BY HOUR
ORDER BY TOTAL_ORDERS DESC

SELECT HOUR, SUM(QUANTITY_ORDERED) AS TOTAL_QUANTITY FROM SALES
GROUP BY HOUR
ORDER BY TOTAL_QUANTITY DESC

SELECT HOUR, SUM(SALES) AS TOTAL_SALES FROM SALES
GROUP BY HOUR
ORDER BY TOTAL_SALES DESC

----------INVESTIGATING TOP PERFORMING DEMOGRAHICS-----------
--------PRODUCT--MACBOOK PRO LAPTOP-------------
SELECT * FROM SALES
WHERE PRODUCT = 'MACBOOK PRO LAPTOP'

---------ORDER DATE----2019-12-04--MOST SALES DAY
SELECT * FROM SALES
WHERE ORDER_DATE = '2019-12-04'

---------TIME----19:01:00----MOST SALES MADE
SELECT * FROM SALES
WHERE TIME = '19:01:00'

---------STREET---844 12TH ST---MOST SALES
SELECT * FROM SALES
WHERE STREET = '844 12TH ST'

---------CITY-----SAN FRANCISCO
SELECT * FROM SALES
WHERE CITY = 'SAN FRANCISCO'

---------MONTH------12-------
SELECT * FROM SALES
WHERE MONTH LIKE 12

--------HOUR-----19----
SELECT * FROM SALES
WHERE HOUR LIKE 19

-----------------PROJECT 3------------HR ANALYTICS------------
SELECT * FROM HR_ANALYTICS

------------TOTALS, AVERAGES, MAX & MIN----------------------
SELECT SUM(AGE) AS TOTAL_AGE FROM HR_ANALYTICS

SELECT COUNT(AGE) AS TOTAL_EMPLOYEES FROM HR_ANALYTICS

SELECT AVG(AGE) AS AVG_AGE FROM HR_ANALYTICS

SELECT MAX(AGE) AS MAX_AGE FROM HR_ANALYTICS

SELECT MIN(AGE) AS MIN_AGE FROM HR_ANALYTICS

SELECT SUM(DAILYRATE) AS TOTAL_DAILYRATE FROM HR_ANALYTICS

SELECT AVG(DAILYRATE) AS AVG_DAILYRATE FROM HR_ANALYTICS

SELECT MAX(DAILYRATE) AS MAX_DAILYRATE FROM HR_ANALYTICS

SELECT MIN(DAILYRATE) AS MIN_DAILYRATE FROM HR_ANALYTICS

SELECT SUM(DISTANCEFROMHOME) AS TOTAL_DISTANCEFROMHOME FROM HR_ANALYTICS

SELECT AVG(DISTANCEFROMHOME) AS AVG_DISTANCEFROMHOME FROM HR_ANALYTICS

SELECT MAX(DISTANCEFROMHOME) AS MAX_DISTANCEFROMHOME FROM HR_ANALYTICS

SELECT MIN(DISTANCEFROMHOME) AS MIN_DISTANCEFROMHOME FROM HR_ANALYTICS

SELECT COUNT(DISTINCT BUSINESSTRAVEL) AS NO_BUSINESSTRAVEL FROM HR_ANALYTICS

SELECT COUNT(DISTINCT DEPARTMENT) AS DEPARTMENTS FROM HR_ANALYTICS

SELECT COUNT(DISTINCT EDUCATIONFIELD) AS EDUCATIONFIELDS FROM HR_ANALYTICS

SELECT COUNT(DISTINCT GENDER) AS GENDERS FROM HR_ANALYTICS

SELECT SUM(HOURLYRATE) AS TOTAL_HOURLYRATE FROM HR_ANALYTICS

SELECT AVG(HOURLYRATE) AS AVG_HOURLYRATE FROM HR_ANALYTICS

SELECT MAX(HOURLYRATE) AS MAX_HOURLYRATE FROM HR_ANALYTICS

SELECT MIN(HOURLYRATE) AS MIN_HOURLYRATE FROM HR_ANALYTICS

SELECT COUNT(DISTINCT JOBROLE) AS JOBROLES FROM HR_ANALYTICS

SELECT COUNT(DISTINCT MARITALSTATUS) AS MARITALSTATUSES FROM HR_ANALYTICS

SELECT SUM(MONTHLYINCOME) AS TOTAL_MONTHLYINCOME FROM HR_ANALYTICS

SELECT AVG(MONTHLYINCOME) AS AVG_MONTHLYINCOME FROM HR_ANALYTICS

SELECT MAX(MONTHLYINCOME) AS MAX_MONTHLYINCOME FROM HR_ANALYTICS

SELECT MIN(MONTHLYINCOME) AS MIN_MONTHLYINCOME FROM HR_ANALYTICS

SELECT SUM(MONTHLYRATE) AS TOTAL_MONTHLYRATE FROM HR_ANALYTICS

SELECT AVG(MONTHLYRATE) AS AVG_MONTHLYRATE FROM HR_ANALYTICS

SELECT MAX(MONTHLYRATE) AS MAX_MONTHLYRATE FROM HR_ANALYTICS

SELECT MIN(MONTHLYRATE) AS MIN_MONTHLYRATE FROM HR_ANALYTICS

SELECT SUM(NUMCOMPANIESWORKED) AS TOTAL_COMPANIESWORKED FROM HR_ANALYTICS

SELECT AVG(NUMCOMPANIESWORKED) AS AVG_COMPANIESWORKED FROM HR_ANALYTICS

SELECT MAX(NUMCOMPANIESWORKED) AS MAX_COMPANIESWORKED FROM HR_ANALYTICS

SELECT MIN(NUMCOMPANIESWORKED) AS MIN_COMPANIESWORKED FROM HR_ANALYTICS

SELECT SUM(PERCENTSALARYHIKE) AS TOTAL_PERCENTSALARYHIKE FROM HR_ANALYTICS

SELECT AVG(PERCENTSALARYHIKE) AS AVG_PERCENTSALARYHIKE FROM HR_ANALYTICS

SELECT MAX(PERCENTSALARYHIKE) AS MAX_PERCENTSALARYHIKE FROM HR_ANALYTICS

SELECT MIN(PERCENTSALARYHIKE) AS MIN_PERCENTSALARYHIKE FROM HR_ANALYTICS

SELECT SUM(TOTALWORKINGYEARS) AS TOTAL_WORKINGYEARS FROM HR_ANALYTICS

SELECT AVG(TOTALWORKINGYEARS) AS AVG_WORKINGYEARS FROM HR_ANALYTICS

SELECT MAX(TOTALWORKINGYEARS) AS MAX_WORKINGYEARS FROM HR_ANALYTICS

SELECT MIN(TOTALWORKINGYEARS) AS TOTAL_WORKINGYEARS FROM HR_ANALYTICS

SELECT SUM(TRAININGTIMESLASTYEAR) AS TOTAL_TRAININGTIMESLASTYEAR FROM HR_ANALYTICS

SELECT AVG(TRAININGTIMESLASTYEAR) AS AVG_TRAININGTIMESLASTYEAR FROM HR_ANALYTICS

SELECT MAX(TRAININGTIMESLASTYEAR) AS MAX_TRAININGTIMESLASTYEAR FROM HR_ANALYTICS

SELECT MIN(TRAININGTIMESLASTYEAR) AS MIN_TRAININGTIMESLASTYEAR FROM HR_ANALYTICS

SELECT SUM(YEARSATCOMPANY) AS TOTAL_YEARSATCOMPANY FROM HR_ANALYTICS

SELECT AVG(YEARSATCOMPANY) AS AVG_YEARSATCOMPANY FROM HR_ANALYTICS

SELECT MAX(YEARSATCOMPANY) AS MAX_YEARSATCOMPANY FROM HR_ANALYTICS

SELECT MIN(YEARSATCOMPANY) AS MIN_YEARSATCOMPANY FROM HR_ANALYTICS

SELECT SUM(YEARSINCURRENTROLE) AS TOTAL_YEARSINCURRENTROLE FROM HR_ANALYTICS

SELECT AVG(YEARSINCURRENTROLE) AS AVG_YEARSINCURRENTROLE FROM HR_ANALYTICS

SELECT MAX(YEARSINCURRENTROLE) AS MAX_YEARSINCURRENTROLE FROM HR_ANALYTICS

SELECT MIN(YEARSINCURRENTROLE) AS MIN_YEARSINCURRENTROLE FROM HR_ANALYTICS

SELECT SUM(YEARSSINCELASTPROMOTION) AS TOTAL_YEARSSINCELASTPROMOTION FROM HR_ANALYTICS

SELECT AVG(YEARSSINCELASTPROMOTION) AS AVG_YEARSSINCELASTPROMOTION FROM HR_ANALYTICS

SELECT MAX(YEARSSINCELASTPROMOTION) AS MAX_YEARSSINCELASTPROMOTION FROM HR_ANALYTICS

SELECT MIN(YEARSSINCELASTPROMOTION) AS MIN_YEARSSINCELASTPROMOTION FROM HR_ANALYTICS

SELECT SUM(YEARSWITHCURRMANAGER) AS SUM_YEARSWITHCURRMANAGER FROM HR_ANALYTICS

SELECT AVG(YEARSWITHCURRMANAGER) AS AVG_YEARSWITHCURRMANAGER FROM HR_ANALYTICS

SELECT MAX(YEARSWITHCURRMANAGER) AS MAX_YEARSWITHCURRMANAGER FROM HR_ANALYTICS

SELECT MIN(YEARSWITHCURRMANAGER) AS MAX_YEARSWITHCURRMANAGER FROM HR_ANALYTICS

---------------BREAKDOWN------------------------
SELECT * FROM HR_ANALYTICS

--------NUMBER IN EACH AGE-----------
SELECT AGE, COUNT(AGE) AS TOTAL FROM HR_ANALYTICS
GROUP BY AGE
ORDER BY TOTAL DESC

--------NUMBER BY ATTRITION------------
SELECT ATTRITION, COUNT(ATTRITION) AS TOTAL FROM HR_ANALYTICS
GROUP BY ATTRITION
ORDER BY TOTAL DESC

------------BUSINESS TRAVEL--------------
SELECT BUSINESSTRAVEL, COUNT(BUSINESSTRAVEL) AS TOTAL FROM HR_ANALYTICS
GROUP BY BUSINESSTRAVEL
ORDER BY TOTAL DESC

----------DEPARTMENT------------
SELECT DEPARTMENT, COUNT(DEPARTMENT) AS TOTAL FROM HR_ANALYTICS
GROUP BY DEPARTMENT
ORDER BY TOTAL DESC

----------DISTANCEFROMHOME-----------
SELECT DISTANCEFROMHOME, COUNT(DISTANCEFROMHOME) AS TOTAL FROM HR_ANALYTICS
GROUP BY DISTANCEFROMHOME
ORDER BY TOTAL DESC

----------EDUCATION------------------
SELECT EDUCATION, COUNT(EDUCATION) AS TOTAL FROM HR_ANALYTICS
GROUP BY EDUCATION
ORDER BY TOTAL DESC

----------EDUCATIONFIELD-------------------
SELECT EDUCATIONFIELD, COUNT(EDUCATIONFIELD) AS TOTAL FROM HR_ANALYTICS
GROUP BY EDUCATIONFIELD
ORDER BY TOTAL DESC

-------------ENVIRONMENTSATISFACTION------------
SELECT ENVIRONMENTSATISFACTION, COUNT(ENVIRONMENTSATISFACTION) AS TOTAL FROM HR_ANALYTICS
GROUP BY ENVIRONMENTSATISFACTION
ORDER BY TOTAL DESC

----------------GENDER----------------
SELECT GENDER, COUNT(GENDER) AS TOTAL FROM HR_ANALYTICS
GROUP BY GENDER
ORDER BY TOTAL DESC

----------------HOURLYRATE----------------
SELECT HOURLYRATE, COUNT(HOURLYRATE) AS TOTAL FROM HR_ANALYTICS
GROUP BY HOURLYRATE
ORDER BY TOTAL DESC

-----------------JOBINVOLVEMENT-------------------
SELECT JOBINVOLVEMENT, COUNT(JOBINVOLVEMENT) AS TOTAL FROM HR_ANALYTICS
GROUP BY JOBINVOLVEMENT
ORDER BY TOTAL DESC

-------------------JOBLEVEL-------------------------
SELECT JOBLEVEL, COUNT(JOBLEVEL) AS TOTAL FROM HR_ANALYTICS
GROUP BY JOBLEVEL
ORDER BY TOTAL DESC

-------------------JOBROLE---------------------
SELECT JOBROLE, COUNT(JOBROLE) AS TOTAL FROM HR_ANALYTICS
GROUP BY JOBROLE
ORDER BY TOTAL DESC

-------------------JOBSATISFACTION-------------------
SELECT JOBSATISFACTION, COUNT(JOBSATISFACTION) AS TOTAL FROM HR_ANALYTICS
GROUP BY JOBSATISFACTION
ORDER BY TOTAL DESC

------------------NUMCOMPANIES WORKED--------------
SELECT NUMCOMPANIESWORKED, COUNT(NUMCOMPANIESWORKED) AS TOTAL FROM HR_ANALYTICS
GROUP BY NUMCOMPANIESWORKED
ORDER BY TOTAL DESC

-------------------OVERTIME-------------------------
SELECT OVERTIME, COUNT(OVERTIME) AS TOTAL FROM HR_ANALYTICS
GROUP BY OVERTIME
ORDER BY TOTAL DESC

------------------PERCENTSALARYHIKE-------------------
SELECT PERCENTSALARYHIKE, COUNT(PERCENTSALARYHIKE) AS TOTAL FROM HR_ANALYTICS
GROUP BY PERCENTSALARYHIKE
ORDER BY TOTAL DESC

------------------PERFORMANCERATING-------------------
SELECT PERFORMANCERATING, COUNT(PERFORMANCERATING) AS TOTAL FROM HR_ANALYTICS
GROUP BY PERFORMANCERATING
ORDER BY TOTAL DESC

-------------------RELATIONSHIPSATISFACTION---------------------
SELECT RELATIONSHIPSATISFACTION, COUNT(RELATIONSHIPSATISFACTION) AS TOTAL FROM HR_ANALYTICS
GROUP BY RELATIONSHIPSATISFACTION
ORDER BY TOTAL DESC

--------------------TOTALWORKINGYEARS------------------------
SELECT TOTALWORKINGYEARS, COUNT(TOTALWORKINGYEARS) AS TOTAL FROM HR_ANALYTICS
GROUP BY TOTALWORKINGYEARS
ORDER BY TOTAL DESC

---------------------TRAININGTIMESLASTYEAR-------------------
SELECT TRAININGTIMESLASTYEAR, COUNT(TRAININGTIMESLASTYEAR) AS TOTAL FROM HR_ANALYTICS
GROUP BY TRAININGTIMESLASTYEAR
ORDER BY TOTAL DESC

-----------------------WORKLIFEBALANCE--------------------------
SELECT WORKLIFEBALANCE, COUNT(WORKLIFEBALANCE) AS TOTAL FROM HR_ANALYTICS
GROUP BY WORKLIFEBALANCE
ORDER BY TOTAL DESC

-----------------------YEARSATCOMPANY--------------------------
SELECT YEARSATCOMPANY, COUNT(YEARSATCOMPANY) AS TOTAL FROM HR_ANALYTICS
GROUP BY YEARSATCOMPANY
ORDER BY TOTAL DESC

------------------------YEARSINCURRENTROLE----------------------
SELECT YEARSINCURRENTROLE, COUNT(YEARSINCURRENTROLE) AS TOTAL FROM HR_ANALYTICS
GROUP BY YEARSINCURRENTROLE
ORDER BY TOTAL DESC

------------------------YEARSSINCELASTPROMOTION--------------------
SELECT YEARSSINCELASTPROMOTION, COUNT(YEARSSINCELASTPROMOTION) AS TOTAL FROM HR_ANALYTICS
GROUP BY YEARSSINCELASTPROMOTION
ORDER BY TOTAL DESC

------------------------YEARSWITHCURRMANAGER-------------------------
SELECT YEARSWITHCURRMANAGER, COUNT(YEARSWITHCURRMANAGER) AS TOTAL FROM HR_ANALYTICS
GROUP BY YEARSWITHCURRMANAGER
ORDER BY TOTAL DESC

------------------ATTRITION COMPARISON 1 = YES, 0 = NO------------------------------------
SELECT * FROM HR_ANALYTICS
WHERE ATTRITION = 0

SELECT * FROM HR_ANALYTICS
WHERE ATTRITION = 1

--------------ATTRITION BY AGE--------------------
SELECT AGE, COUNT(AGE) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY AGE
ORDER BY TOTAL DESC

--------------ATTRITION BY BUSINESS TRAVEL------------
SELECT BUSINESSTRAVEL, COUNT(BUSINESSTRAVEL) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY BUSINESSTRAVEL
ORDER BY TOTAL DESC

-------------ATTRITION BY DEPARTMENT---------------
SELECT DEPARTMENT, COUNT(DEPARTMENT) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY DEPARTMENT
ORDER BY TOTAL DESC

--------------ATTRITION BY DISTANCEFROMHOME------------
SELECT DISTANCEFROMHOME, COUNT(DISTANCEFROMHOME) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY DISTANCEFROMHOME
ORDER BY TOTAL DESC

---------------ATTRITION BY EDUCATION------------------
SELECT EDUCATION, COUNT(EDUCATION) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY EDUCATION
ORDER BY TOTAL DESC

----------------ATTRITION BY EDUCATIONFIELD--------------
SELECT EDUCATIONFIELD, COUNT(EDUCATIONFIELD) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY EDUCATIONFIELD
ORDER BY TOTAL DESC

------------ATTRITION BY ENVIRONMENTSATISFACTION-------------
SELECT ENVIRONMENTSATISFACTION, COUNT(ENVIRONMENTSATISFACTION) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY ENVIRONMENTSATISFACTION
ORDER BY TOTAL DESC

-------------ATTRITION BY GENDER----------------
SELECT GENDER, COUNT(GENDER) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY GENDER
ORDER BY TOTAL DESC

------------ATTRITION BY HOURLY RATE--------------
SELECT HOURLYRATE, COUNT(HOURLYRATE) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY HOURLYRATE
ORDER BY TOTAL DESC

-----------ATTRITION BY JOBINVOLVEMENT---------------------
SELECT JOBINVOLVEMENT, COUNT(JOBINVOLVEMENT) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY JOBINVOLVEMENT
ORDER BY TOTAL DESC

---------------ATTRITION BY JOBLEVEL------------------------
SELECT JOBLEVEL, COUNT(JOBLEVEL) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY JOBLEVEL
ORDER BY TOTAL DESC

--------------ATTRITION BY JOBROLE---------------------
SELECT JOBROLE, COUNT(JOBROLE) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY JOBROLE
ORDER BY TOTAL DESC

----------------ATTRITION BY JOBSATISFACTION-----------------
SELECT JOBSATISFACTION, COUNT(JOBSATISFACTION) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY JOBSATISFACTION
ORDER BY TOTAL DESC

----------------ATTRITION BY MARITALSTATUS------------------
SELECT MARITALSTATUS, COUNT(MARITALSTATUS) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY MARITALSTATUS
ORDER BY TOTAL DESC

-------------------ATTRITION BY MONTHLYINCOME------------------
SELECT MONTHLYINCOME, COUNT(MONTHLYINCOME) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY MONTHLYINCOME
ORDER BY TOTAL DESC

-----------------ATTRITION BY NUMCOMPANIESWORKED-----------------
SELECT NUMCOMPANIESWORKED, COUNT(NUMCOMPANIESWORKED) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY NUMCOMPANIESWORKED
ORDER BY TOTAL DESC

-------------------ATTRITION BY OVERTIME-------------------
SELECT OVERTIME, COUNT(OVERTIME) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY OVERTIME
ORDER BY TOTAL DESC

----------------------ATTRITION BY PERCENTSALARYHIKE--------------
SELECT PERCENTSALARYHIKE, COUNT(PERCENTSALARYHIKE) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY PERCENTSALARYHIKE
ORDER BY TOTAL DESC

----------------------ATTRITION BY PERFORMANCERATING----------------
SELECT PERFORMANCERATING, COUNT(PERFORMANCERATING) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY PERFORMANCERATING
ORDER BY TOTAL DESC

-------------------ATTRITION BY TOTALWORKINGYEARS----------------------------
SELECT TOTALWORKINGYEARS, COUNT(TOTALWORKINGYEARS) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY TOTALWORKINGYEARS
ORDER BY TOTAL DESC

-------------------ATTRITION BY TRAININGTIMESLASTYEAR------------------
SELECT TRAININGTIMESLASTYEAR, COUNT(TRAININGTIMESLASTYEAR) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY TRAININGTIMESLASTYEAR
ORDER BY TOTAL DESC

--------------------ATTRITION BY WORKLIFEBALANCE---------------------
SELECT WORKLIFEBALANCE, COUNT(WORKLIFEBALANCE) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY WORKLIFEBALANCE
ORDER BY TOTAL DESC

------------------ATTRITION BY YEARSATCOMPANY-----------------------
SELECT YEARSATCOMPANY, COUNT(YEARSATCOMPANY) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY YEARSATCOMPANY
ORDER BY TOTAL DESC

---------------------ATTRITION BY YEARSINCURRENTROLE----------------
SELECT YEARSINCURRENTROLE, COUNT(YEARSINCURRENTROLE) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY YEARSINCURRENTROLE
ORDER BY TOTAL DESC

----------------------ATTRITION BY YEARSSINCELASTPROMOTION-------------------
SELECT YEARSSINCELASTPROMOTION, COUNT(YEARSSINCELASTPROMOTION) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY YEARSSINCELASTPROMOTION
ORDER BY TOTAL DESC

-----------------------ATTRITION BY YEARS WITHCURRMANAGER--------------------
SELECT YEARSWITHCURRMANAGER, COUNT(YEARSWITHCURRMANAGER) AS TOTAL FROM HR_ANALYTICS
WHERE ATTRITION = 1
GROUP BY YEARSWITHCURRMANAGER
ORDER BY TOTAL DESC










































































































