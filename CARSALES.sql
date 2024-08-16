create schema cars;
use cars;
-- READIND_FULL_DATA--
select * from car_dekho;
-- COUNT_OF_TOTALDATA--
select count(*) from car_dekho;
-- COUNT OF CARS IN 2020,2021,2022 --
select year,count(*) from car_dekho where year IN (2021,2022,2020) group by year;
-- COUNT OF CARS YEARWISE --
select year,count(*) from car_dekho group by year;
-- NUMBER OF DIESEL CARS IN YEAR 2020 --
select count(*) from car_dekho where fuel="diesel" and year=2020;
-- NUMBER OF PETROL CARS IN YEAR 2020 --
select count(*) from car_dekho where fuel="petrol" and year=2020;
-- DIESEL PETROL CNG DATA YEAR WISE --
select year,count(*) from car_dekho where fuel="petrol" group by year;
select year,count(*) from car_dekho where fuel="diesel" group by year;
select year,count(*) from car_dekho where fuel="cng" group by year;
-- YEARS HAVING NUMBER OF CARS MORE THAN 100 --
select year, count(*) from car_dekho group by year having count(*)>100;
-- CARS COUNT BETWEEN 2015 AND 2023 --
select year,count(*) from car_dekho group by year having year between 2015 and 2023;
-- DETAILS OF CARS BETWEEN 2015 AND 2023 --
select * from car_dekho having year between 2015 and 2023; 
-- END --
 