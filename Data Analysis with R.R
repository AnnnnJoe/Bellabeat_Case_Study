# load libraries
library(tidyverse)
library(skimr)
library(lubridate)

# import daily data
daily_data <- read_csv('F:/Courses/Google Data Analytics/Capstone/New Data/Daily_Data.csv')
View(daily_data)

# import hourly data
hourly_data <- read_csv('F:/Courses/Google Data Analytics/Capstone/New Data/Hourly_Data.csv')
View(hourly_data)

# checking number of unique users in each dataset
n_distinct(daily_data$Id)
n_distinct(hourly_data$Id)

# checking number of observations in each dataset
nrow(daily_data)
nrow(hourly_data)

# summary of daily_data
glimpse(daily_data)
colnames(daily_data)

# summary of hourly_data
glimpse(hourly_data)
colnames(hourly_data)

#statistical summary
daily_data %>%  
  select(Total_Steps,
         Total_Distance,
         Calories,
         Total_Minutes_Asleep,
         Sedentary_Minutes,
         Very_Active_Minutes,
         Fairly_Active_Minutes,
         Lightly_Active_Minutes) %>%
  summary()

hourly_data %>%  
  select(Total_Steps, Calories) %>%
  summary()

                                       
# Total_Distance vs Calories
ggplot(data = daily_data) + 
  geom_point(mapping = aes(x = Total_Distance, y = Calories), color = "lightcoral") +
  geom_smooth(mapping = aes(x = Total_Distance, y = Calories), color = "hotpink4") +
  labs(title = "Total Distance vs Calories",
       caption = "FitBit Fitness Tracker Data from Kaggle")
  
  
# Total_Steps vs Calories (Daily)
ggplot(data = daily_data) + 
  geom_point(mapping = aes(x = Total_Steps, y = Calories), color = "lightcoral") +
  geom_smooth(mapping = aes(x = Total_Steps, y = Calories), color = "hotpink4") +
  labs(title = "Total Steps vs Calories (Daily)",
       caption = "FitBit Fitness Tracker Data from Kaggle")


# Total Steps vs Calories (Hourly)
ggplot(data = hourly_data) +
  geom_point(mapping = aes(x = Total_Steps, y = Calories), color = "lightcoral") +
  geom_smooth(mapping = aes(x = Total_Steps, y = Calories), color = "hotpink4") +
  labs(title = "Total Steps vs Calories (Hourly)",
       caption = "FitBit Fitness Tracker Data from Kaggle")


#Creating a new column for Weekdays in daily_data
daily_data_with_weekday <- mutate(daily_data, Weekday = wday(daily_data$Date, week_start = 1, label=TRUE, abbr=FALSE))
View(daily_data_with_weekday)


# Weekdays vs Sedentary minutes
mycolors <- c("mistyrose", "pink1", "pink2", "pink3","palevioletred",  "maroon", "palevioletred4")

ggplot(data = daily_data_with_weekday ) +
  geom_col(mapping = aes(x = Weekday, y= Sedentary_Minutes, fill = Weekday)) +
  scale_fill_manual(values=mycolors) +
  labs(title = "Day of the week vs Sedentary Minutes",
       caption = "FitBit Fitness Tracker Data from Kaggle")


# Total Minutes Asleep vs Weekdays
mycolors <- c("mistyrose", "pink1", "pink2", "pink3","palevioletred",  "maroon", "palevioletred4")

ggplot(data = daily_data_with_weekday ) +
  geom_col(mapping = aes(x = Weekday, y= Total_Minutes_Asleep, fill = Weekday)) +
  scale_fill_manual(values=mycolors) +
  labs(title = "Day of the week vs Total Minutes Asleep",
       caption = "FitBit Fitness Tracker Data from Kaggle")

# check for distinct time values
unique(hourly_data$Activity_Hour)


# Activity Hour vs Average Intensity
ggplot(data = hourly_data) +
  geom_col(mapping = aes(x = Activity_Hour, y= Average_Intensity), fill = "lightcoral") +
  labs(title = "Hour of the day vs Average Intensity",
       caption = "FitBit Fitness Tracker Data from Kaggle")


# Weekdays vs very active minutes
ggplot(data = daily_data_with_weekday ) +
  geom_col(mapping = aes(x = Weekday, y= Very_Active_Minutes, fill = Weekday)) +
  scale_fill_manual(values=mycolors) +
  labs(title = "Day of the week vs Very Active Minutes",
       caption = "FitBit Fitness Tracker Data from Kaggle")

# Activity hour vs Total Steps
ggplot(data = hourly_data) +
  geom_col(mapping = aes(x = Activity_Hour, y= Total_Steps), fill = "hotpink4") +
  labs(title = "Hour of the day vs Total Steps",
      caption = "FitBit Fitness Tracker Data from Kaggle")














                                  
                                       