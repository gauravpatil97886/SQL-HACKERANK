# Author: Gaurav Patil
SELECT FLOOR(AVG(POPULATION))
FROM CITY
# Author: Gaurav Patil
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE ='JPN'
 select Round(LONG_W,4)
 from  STATION
 where LAT_N = (Select Max(LAT_N)from STATION where LAT_N < 137.2345);
select Round(min(LAT_N),4) 
from STATION
where LAT_N > 38.7780;
# Author: Gaurav Patil
SELECT CEIL(AVG(Salary)-AVG(REPLACE(Salary,'0','')))
FROM  EMPLOYEES
# Author: Gaurav Patil
SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California'

select Round(LONG_W,4)
from STATION
where LAT_N = (
select MIN(LAT_N) 
from STATION
where LAT_N > 38.7780);
# Author: Gaurav Patil
SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY
select Round(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)),4)
FROM STATION;


SELECT ROUND(SUM(LAT_N),2),ROUND(SUM(LONG_W),2)
FROM STATION;
select Round(sum(LAT_N),4)
from STATION 
where LAT_N > 38.7880 and LAT_N < 137.2345;
SELECT ROUND(SQRT(POWER(MAX(LAT_N)-MIN(LAT_N),2)+POWER(MAX(LONG_W)-MIN(LONG_W),2)),4)
FROM STATION;
SELECT MONTHS*SALARY AS earnings, COUNT(*)
FROM employee
GROUP BY earnings 
ORDER BY earnings DESC
LIMIT 1;
select Round(max(LAT_N),4)
from STATION
where LAT_N < 137.2345;
# Author: Gaurav Patil
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT ='California'

SELECT Round(st.lat_n, 4)
FROM station AS st
WHERE (SELECT Count(lat_n) FROM station WHERE lat_n < st.lat_n) = (SELECT Count(lat_n) FROM station WHERE lat_n > st.lat_n);

# Author: Gaurav Patil
SELECT COUNT(*) FROM CITY WHERE POPULATION > 100000
