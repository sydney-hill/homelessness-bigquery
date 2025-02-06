SELECT 
  State,
  SUM(Overall_Homeless) AS Total_Homeless
FROM `tranquil-well-447022-n8.exploration_project.homelessness`
WHERE Count_Year = 2018
GROUP BY State
ORDER BY Total_Homeless DESC
LIMIT 7
