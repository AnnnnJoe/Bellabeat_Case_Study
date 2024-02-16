-- Cleaning and merging data
SELECT
	a.Id,
	a.ActivityDate as Date,
	a.TotalSteps as Total_Steps,
	a.TotalDistance as Total_Distance,
	a.TrackerDistance as Tracker_Distance,
	a.LoggedActivitiesDistance as Logged_Distance,
	a.VeryActiveDistance as Very_Active_Distance,
	a.ModeratelyActiveDistance as Moderately_Active_Distance,
	a.SedentaryActiveDistance as Sedentary_Active_Distance,
	a.VeryActiveMinutes as Very_Active_Minutes,
	a.FairlyActiveMinutes as Fairly_Active_Minutes,
	a.LightlyActiveMinutes as Lightly_Active_Minutes,
	a.SedentaryMinutes as Sedentary_Minutes,
	a.Calories as Calories,
	s.TotalSleepRecords as Total_Sleep_Records,
	s.TotalMinutesAsleep as Total_Minutes_Asleep,
	s.TotalTimeInBed as Total_Bed_Time
FROM
	[Capstone].[dbo].[dailyActivity_merged] as a
LEFT JOIN
	[Capstone].[dbo].[sleepDay_merged] as s
	ON a.Id = s.Id AND
	a.ActivityDate = s.SleepDay
