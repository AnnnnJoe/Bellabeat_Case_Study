-- Exploring 'hourlyCalories_merged' table
SELECT
	*
FROM 
	[Capstone].[dbo].[hourlyCalories_merged];

-- Checking for number of users in 'hourlyCalories_merged' table - 33
SELECT
	COUNT(DISTINCT Id)
FROM
	[Capstone].[dbo].[hourlyCalories_merged];

-- Checking Min and Max dates in 'hourlyCalories_merged' table
SELECT
	MIN(ActivityHour) as Day_From,
	MAX(ActivityHour) as Day_To
FROM
	[Capstone].[dbo].[hourlyCalories_merged];

----------------------------------------------------------------------------

-- Exploring 'hourlyIntensities_merged' table
SELECT
	*
FROM 
	[Capstone].[dbo].[hourlyIntensities_merged];

-- Checking for number of users in 'hourlyIntensities_merged' table - 33
SELECT
	COUNT(DISTINCT Id)
FROM
	[Capstone].[dbo].[hourlyIntensities_merged];

-- Checking Min and Max dates in 'hourlyIntensities_merged' table
SELECT
	MIN(ActivityHour) as Day_From,
	MAX(ActivityHour) as Day_To
FROM
	[Capstone].[dbo].[hourlyIntensities_merged];

----------------------------------------------------------------------------

-- Exploring 'hourlySteps_merged' table
SELECT
	*
FROM 
	[Capstone].[dbo].[hourlySteps_merged];

-- Checking for number of users in 'hourlySteps_merged' table - 33
SELECT
	COUNT(DISTINCT Id)
FROM
	[Capstone].[dbo].[hourlySteps_merged];

-- Checking Min and Max dates in 'hourlySteps_merged' table
SELECT
	MIN(ActivityHour) as Day_From,
	MAX(ActivityHour) as Day_To
FROM
	[Capstone].[dbo].[hourlySteps_merged];