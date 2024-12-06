-- Test Queries

-- Retrieve all reviews 
SELECT "Id", "ThemeParkLocationId", "Rating", "Comment", "UserId"
	FROM public."ThemeParks_Review";


-- Retrieve all theme parks 
SELECT "Id", "Name"
	FROM public."ThemeParks";


-- Retrieve All Users
SELECT "Id", "UserName", "Password"
	FROM public."Users";

-- This query retrieves all rows from the ThemeParks_Locations table that are associated with the ThemeParks entry having the name 'DisneyLand'..
SELECT DISTINCT tl.*
FROM public."ThemeParks" t
JOIN public."ThemeParks_Locations" tl
  ON t."Id" = tl."ThemeParkId"
WHERE t."Name" = 'DisneyLand';

-- Find the average review of every theme park that has reviews for it grouped by ThemeParkLocationId
SELECT tr."ThemeParkLocationId", 
       AVG(tr."Rating") AS "AverageRating"
FROM public."ThemeParks_Review" tr
GROUP BY tr."ThemeParkLocationId"
HAVING COUNT(tr."Id") > 0;
