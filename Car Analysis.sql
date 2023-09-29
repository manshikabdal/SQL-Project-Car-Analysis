-- Create schema --
/* create schema cars; */
USE cars;

-- Q1. Read Cars Data --

SELECT * FROM car_dekho;


-- Q2. Total cars: To get a count of total records --

SELECT count(*)
FROM car_dekho;


-- Q3. The manager asked the employee, How many cars will be available in 2023? --

SELECT COUNT(Name)
FROM car_dekho
WHERE year = 2023;


-- Q4. The manager asked the employee, How many cars are available in 2020, 2021, 2022? -- 

SELECT count(*)
FROM car_dekho
WHERE year IN (2020, 2021, 2022)
GROUP BY year;


-- Q5. Client asked me to print the total of all cars by year -- 

SELECT year, COUNT(*)
FROM car_dekho
GROUP BY year;


-- Q6. Client asked to car dealer agent, How many diesel cars were there in 2020? -- 

SELECT COUNT(*)
FROM car_dekho
WHERE fuel = 'Diesel' AND year = 2020;


-- Q7. Client asked to car dealer agent, How many petrol cars were there in 2020? -- 

SELECT COUNT(*)
FROM car_dekho
WHERE fuel = 'Petrol' AND year = 2020;


-- Q8. The manager told the employee to give a print of all the fuel cars( petrol,diesel, CNG) come by all year. --


SELECT year, COUNT(*)
FROM car_dekho
WHERE fuel = 'Petrol'
GROUP BY year; 
-- --
SELECT year, COUNT(*)
FROM car_dekho
WHERE fuel = 'Diesel'
GROUP BY year; 
-- --
SELECT year, COUNT(*)
FROM car_dekho
WHERE fuel = 'CNG'
GROUP BY year; 


-- Q9. Manager said that there were more than 100 cars in a given year, which year had more than 100 cars?  -- 

SELECT year, COUNT(*) 
FROM car_dekho
GROUP BY year
HAVING COUNT(*) > 100;


-- Q10. The manager said to the employee to make a list of all cars count detail between 2015 and 2023. --

SELECT year, COUNT(*)
FROM car_dekho
GROUP BY year
HAVING year BETWEEN 2015 AND 2023;


-- Q11. The manager said to the employee to make a list of all cars details between 2015 and 2023.  --

SELECT *
FROM car_dekho
WHERE year BETWEEN 2015 AND 2023; 


-- END --