SELECT
  CoC_Name, 
  Overall_Homeless, 
  Unsheltered_Homeless
FROM `tranquil-well-447022-n8.exploration_project.homelessness`
WHERE Overall_Homeless > 1000
AND Unsheltered_Homeless < 100
AND Count_Year = 2018 
AND Unsheltered_Homeless < (Overall_Homeless*0.02)
