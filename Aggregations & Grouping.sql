--Category 3: Aggregations & Grouping (41-65)

--41.	Count the total number of trips in the dataset.
 SELECT COUNT(*) 
  FROM Travellers;

--42.	Calculate the average age of all Travellers.
 SELECT AVG("Traveler age")
  FROM Travellers;

--43.	Find the maximum duration of a trip.
 SELECT MAX("Duration (days)")
  FROM Travellers;

--44.	Find the minimum accommodation cost.
 SELECT MIN(CAST("Accommodation cost" AS INT)) 
  FROM Travellers;	

--45.	What is the total cost spent on transportation? 
SELECT SUM(CAST("Transportation cost" AS INT)) 
 FROM Travellers;

--46.	Count how many Travellers are from each nationality.
 SELECT "Traveler nationality", COUNT(*)
  FROM Travellers 
  GROUP BY "Traveler nationality";

--47.	Find the average trip duration for each destination.
 SELECT Destination, AVG("Duration (days)")
  FROM Travellers 
  GROUP BY Destination;

--48.	Calculate total accommodation cost per destination.
 SELECT Destination, SUM(CAST("Accommodation cost" AS INT)) 
  FROM Travellers 
  GROUP BY Destination;

--49.	Count Travellers by gender.
 SELECT "Traveler gender", COUNT(*) 
  FROM Travellers 
  GROUP BY "Traveler gender";

--50.	Find the average age of Travellers per accommodation type.
 SELECT "Accommodation type", AVG("Traveler age") 
  FROM Travellers
  GROUP BY "Accommodation type";

--51.	Find destinations that have more than 5 trips recorded.
 SELECT Destination, COUNT(*) 
  FROM Travellers 
  GROUP BY Destination HAVING COUNT(*) > 5;

--52.	Find nationalities with an average traveler age over 40.
 SELECT "Traveler nationality", AVG("Traveler age") 
  FROM Travellers 
  GROUP BY "Traveler nationality" 
  HAVING AVG("Traveler age") > 40;

--53.	Find the total number of trips for each transportation type.
 SELECT "Transportation type", COUNT(*) 
  FROM Travellers
  GROUP BY "Transportation type";

--54.	Find the maximum age of Travellers for each nationality.
 SELECT "Traveler nationality", MAX("Traveler age") 
  FROM Travellers 
  GROUP BY "Traveler nationality";

--55.	Find the minimum duration for trips to 'Paris, France'. 
SELECT MIN("Duration (days)") 
 FROM Travellers 
 WHERE Destination = 'Paris, France';

--56.	Group by gender and find the average accommodation cost.
 SELECT "Traveler gender", AVG(CAST("Accommodation cost" AS INT)) 
  FROM Travellers
  GROUP BY "Traveler gender";

--57.	Count trips per month (assuming Start date format is M/D/YYYY).
 SELECT STRFTIME('%m', "Start date") as Month, COUNT(*) 
  FROM Travellers 
  GROUP BY Month;

--58.	Find the most frequent destination.
 SELECT Destination, COUNT(*)
  FROM Travellers 
  GROUP BY Destination 
  ORDER BY COUNT(*) DESC LIMIT 1;

--59.	Find the total cost (Accomm + Transp) for each traveler. 
SELECT "Traveler name", (CAST("Accommodation cost" AS INT) + CAST("Transportation cost" AS INT)) 
 AS Total_Cost FROM Travellers;

--60.	Find the average total cost for all trips. 
SELECT AVG(CAST("Accommodation cost" AS INT) + CAST("Transportation cost" AS INT))
 FROM Travellers;

--61.	Find the total duration of trips taken by 'American' Travellers.
 SELECT SUM("Duration (days)")
  FROM Travellers 
  WHERE "Traveler nationality" = 'American';

--62.	Find accommodation types used by more than 10 Travellers. 
SELECT "Accommodation type", COUNT(*)
 FROM Travellers
 GROUP BY "Accommodation type" 
 HAVING COUNT(*) > 10;

--63.	Calculate the average age of male vs female Travellers.
 SELECT "Traveler gender", AVG("Traveler age") 
  FROM Travellers 
  GROUP BY "Traveler gender";

--64.	Find the destination with the highest average transportation cost.
 SELECT Destination, AVG(CAST("Transportation cost" AS INT)) 
  FROM Travellers 
  GROUP BY Destination
  ORDER BY 2 DESC LIMIT 1;

--65.	Sum the total duration for each traveler.
 SELECT "Traveler name", SUM("Duration (days)") 
  FROM Travellers 
  GROUP BY "Traveler name";

