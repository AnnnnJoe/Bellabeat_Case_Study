-- Exploring 'dailyActivity_merged' table
SELECT
	*
FROM 
	[Capstone].[dbo].[dailyActivity_merged];

-- Checking for number of users in 'dailyActivity_merged' table - 33
SELECT
	COUNT(DISTINCT Id)
FROM
	[Capstone].[dbo].[dailyActivity_merged];

-- Checking Min and Max dates in 'dailyActivity_merged' table
SELECT
	MIN(ActivityDate) as Day_From,
	MAX(ActivityDate) as Day_To
FROM
	[Capstone].[dbo].[dailyActivity_merged];

----------------------------------------------------------------------------

-- Exploring 'sleepDay_merged' table
SELECT
	*
FROM 
	[Capstone].[dbo].[sleepDay_merged];

-- Checking for number of users in 'sleepDay_merged' table - 24
SELECT
	COUNT(DISTINCT Id)
FROM
	[Capstone].[dbo].[sleepDay_merged];

-- Checking Min and Max dates in 'sleepDay_merged' table
SELECT
	MIN(SleepDay) as Day_From,
	MAX(SleepDay) as Day_To
FROM
	[Capstone].[dbo].[sleepDay_merged];

----------------------------------------------------------------------------

-- Exploring 'weightLogInfo_merged' table
SELECT
	*
FROM 
	[Capstone].[dbo].[weightLogInfo_merged];

-- Checking for number of users in 'weightLogInfo_merged' table - 8
SELECT
	COUNT(DISTINCT Id)
FROM
	[Capstone].[dbo].[weightLogInfo_merged];

-- Checking Min and Max dates in 'sleepDay_merged' table
SELECT
	MIN(Date) as Day_From,
	MAX(Date) as Day_To
FROM
	[Capstone].[dbo].[weightLogInfo_merged];
