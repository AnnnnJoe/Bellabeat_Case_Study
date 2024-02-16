-- Cleaning & merging data
SELECT
	c.Id as Id,
	-- splitting ActivityHour into Date and Hour
	CONVERT(Date, c.ActivityHour) as Date, 
	CONVERT(varchar(8), CONVERT(time, c.ActivityHour)) as Activity_Hour,
	c.Calories as Calories,
	i.TotalIntensity as Total_Intensity,
	i.AverageIntensity as Average_Intensity,
	s.StepTotal as Total_Steps
FROM 
	[Capstone].[dbo].[hourlyCalories_merged] as c
LEFT JOIN
	[Capstone].[dbo].[hourlyIntensities_merged] as i -- joining hourlyIntensities table using 'Id' and 'ActivityHour'
	ON c.Id = i.Id AND
	c.ActivityHour = i.ActivityHour
LEFT JOIN
	[Capstone].[dbo].[hourlySteps_merged] as s -- joining hourlySteps table using 'Id' and 'ActivityHour'
	ON c.Id = s.Id AND
	c.ActivityHour = s.ActivityHour
