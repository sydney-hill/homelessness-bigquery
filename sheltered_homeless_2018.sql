SELECT CoC_Name as Sheltered_in_SH_Locations, Sheltered_SH_Homeless as number_of_homeless
FROM `tranquil-well-447022-n8.exploration_project.homelessness`
WHERE Sheltered_SH_Homeless > 0 AND Count_Year = 2018
ORDER BY Sheltered_SH_Homeless DESC
LIMIT 3