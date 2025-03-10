SELECT
  CoC_Name, 
  Overall_Homeless, 
  Unsheltered_Homeless
FROM `tranquil-well-447022-n8.exploration_project.homelessness`
WHERE Overall_Homeless > 1000
AND Unsheltered_Homeless < 100
AND Count_Year = 2018 
AND Unsheltered_Homeless < (Overall_Homeless*0.02)


SELECT 
  State,
  SUM(Overall_Homeless) AS Total_Homeless
FROM `tranquil-well-447022-n8.exploration_project.homelessness`
WHERE Count_Year = 2018
GROUP BY State
ORDER BY Total_Homeless DESC
LIMIT 7


SELECT CoC_Name as Sheltered_in_SH_Locations, Sheltered_SH_Homeless as number_of_homeless
FROM `tranquil-well-447022-n8.exploration_project.homelessness`
WHERE Sheltered_SH_Homeless > 0 AND Count_Year = 2018
ORDER BY Sheltered_SH_Homeless DESC
LIMIT 3


SELECT COUNT(CoC_Name) as Sheltered_in_SH_Locations
FROM `tranquil-well-447022-n8.exploration_project.homelessness`
WHERE Sheltered_SH_Homeless > 0
AND Count_Year = 2018


SELECT Unsheltered_Homeless, Count_Year
FROM `tranquil-well-447022-n8.exploration_project.homelessness`
WHERE State = 'DE'
ORDER BY Count_Year


SELECT CoC_Name
FROM `tranquil-well-447022-n8.exploration_project.homelessness`
WHERE Count_Year = 2018
ORDER BY Homeless_Unaccompanied_Youth_Under_18 DESC
LIMIT 3
