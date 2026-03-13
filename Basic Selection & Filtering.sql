--Category 1: Basic Selection & Filtering (1-20)

--1.	Select all columns for every trip. 
SELECT * FROM Travelers;

--2.	Select only the traveler names and their nationalities.
 SELECT "Traveler name", "Traveler nationality" 
 FROM Travelers;
 
--3.	List all unique destinations in the table.
 SELECT DISTINCT Destination 
 FROM Travelers;
 
--4.	Find all trips where the destination is 'Tokyo, Japan'. 
SELECT * FROM Travelers 
WHERE Destination = 'Tokyo, Japan';

--5.	List all male Travelers. 
SELECT * FROM Travelers 
WHERE "Traveler gender" = 'Male';

--6.	Find trips with a duration of exactly 7 days.
 SELECT * FROM Travelers
 WHERE "Duration (days)" = 7;
 
--7.	Select Travelers older than 30.
 SELECT "Traveler name", "Traveler age" 
 FROM Travelers 
 WHERE "Traveler age" > 30;
 
--8.	Find trips where the accommodation type is 'Hotel'.
 SELECT * FROM Travelers
 WHERE "Accommodation type" = 'Hotel';
 
--9.	List Travelers who are 'American'. 
SELECT * FROM Travelers
 WHERE "Traveler nationality" = 'American';
 
--10.	Find all trips where the Transportation type is 'Flight'. 
SELECT * FROM Travelers 
WHERE "Transportation type" = 'Flight';

--11.	Select trips where accommodation cost is greater than 1000.
 SELECT * FROM Travelers 
 WHERE CAST("Accommodation cost" AS INT) > 1000;
 
--12.	Find trips with ID 5, 10, and 15.
 SELECT * FROM Travelers 
 WHERE "Trip ID" IN (5, 10, 15);
 
--13.	Select trips where the destination is NOT 'London, UK'.
 SELECT * FROM Travelers 
 WHERE Destination <> 'London, UK';
 
--14.	Find trips that lasted between 5 and 10 days. 
SELECT * FROM Travelers
 WHERE "Duration (days)" BETWEEN 5 AND 10;
 
--15.	List Travelers aged between 20 and 25. 
SELECT * FROM Travelers 
WHERE "Traveler age" BETWEEN 20 AND 25;

--16.	Find trips where the transportation cost is less than 500. 
SELECT * FROM Travelers 
WHERE CAST("Transportation cost" AS INT) < 500;

--17.	Select Travelers whose names start with 'J'. 
SELECT * FROM Travelers 
WHERE "Traveler name" LIKE 'J%';

--18.	Find trips where the destination contains 'USA'. 
SELECT * FROM Travelers 
WHERE Destination LIKE '%USA%';

--19.	Select all columns where the traveler's nationality is missing.
 SELECT * FROM Travelers 
 WHERE "Traveler nationality" IS NULL;
 
--20.	Find trips where the accommodation cost is not null.
 SELECT * FROM Travelers WHERE "Accommodation cost" IS NOT NULL;
 
--Category 2: Logical Operators & Ordering (21-40)

--21.	Find male Travelers who visited 'Paris, France'.
SELECT * FROM Travelers 
WHERE "Traveler gender" = 'Male' 
AND Destination = 'Paris, France';

--22.	Find Travelers who stayed in a 'Resort' or 'Villa'. 
SELECT * FROM Travelers
 WHERE "Accommodation type" IN ('Resort', 'Villa');
 
--23.	List trips to 'Sydney, Australia' with a duration > 8 days.
 SELECT * FROM Travelers 
 WHERE Destination = 'Sydney, Australia' 
 AND "Duration (days)" > 8;
 
--24.	Find Travelers who are either 'British' or 'Canadian'.
 SELECT * FROM Travelers 
 WHERE "Traveler nationality" IN ('British', 'Canadian');
 
--25.	Select trips where the cost of accommodation is > 1500 and transportation is < 1000.
 SELECT * FROM Travelers 
 WHERE CAST("Accommodation cost" AS INT) > 1500 
 AND CAST("Transportation cost" AS INT) < 1000;
 
--26.	Order all trips by Duration (days) in ascending order.
 SELECT * FROM Travelers 
 ORDER BY "Duration (days)" ASC;
 
--27.	Sort Travelers by age from oldest to youngest.
 SELECT * FROM Travelers 
 ORDER BY "Traveler age" DESC;
 
--28.	Sort destinations alphabetically.
 SELECT DISTINCT Destination
 FROM Travelers 
 ORDER BY Destination;
 
--29.	Order by nationality, then by age.
 SELECT * FROM Travelers 
 ORDER BY "Traveler nationality", "Traveler age";
 
--30.	Find the top 5 most expensive accommodations.
 SELECT * FROM Travelers 
 ORDER BY CAST("Accommodation cost" AS INT) DESC LIMIT 5;
 
--31.	Find the 5 shortest trips.
 SELECT * FROM Travelers 
 ORDER BY "Duration (days)" ASC LIMIT 5;
 
--32.	Select Travelers whose nationality ends with 'an'.
 SELECT * FROM Travelers 
 WHERE "Traveler nationality" LIKE '%an';
 
--33.	Find trips where the destination has 'Bali' in it.
 SELECT * FROM Travelers
 WHERE Destination LIKE '%Bali%';
 
--34.	Find Travelers whose names have 'Smith' anywhere.
 SELECT * FROM Travelers 
 WHERE "Traveler name" LIKE '%Smith%';
 
--35.	Find trips where the transportation is 'Train' or 'Bus'.
 SELECT * FROM Travelers 
 WHERE "Transportation type" IN ('Train', 'Bus');
 
--36.	List all Travelers who are NOT from 'USA' and NOT from 'UK'.
 SELECT * FROM Travelers
 WHERE "Traveler nationality" NOT IN ('American', 'British');
 
--37.	Find trips where duration is not 7 or 14 days.
 SELECT * FROM Travelers
 WHERE "Duration (days)" NOT IN (7, 14);
 
--38.	Select trips where the accommodation type starts with 'H'.
 SELECT * FROM Travelers
 WHERE "Accommodation type" LIKE 'H%';
 
--39.	Sort by start date (earliest first).
 SELECT * FROM Travelers 
 ORDER BY "Start date";
 
--40.	Find trips where the destination name is exactly 10 characters long.
 SELECT * FROM Travelers 
 WHERE LENGTH(Destination) = 10;
 
