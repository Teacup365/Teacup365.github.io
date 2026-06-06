# BellaBeat Case Study

## Business Task
Bellabeat is a wellness technology company that develops smart devices designed to help women monitor and improve their health. The goal of this analysis is to examine smart device fitness data to identify trends in how users interact with wearable health trackers.
The purpose of the analysis is to discover patterns in physical activity, sleep behavior, and overall smart device usage. These insights will help inform Bellabeat’s marketing strategy and identify opportunities to encourage healthier habits among users.
The stakeholders involved in this project include Urška Sršen, Bellabeat’s Chief Creative Officer, Sando Mur, the co-founder of the company, and the Bellabeat marketing analytics team.

## Data Sources

The dataset contains Fitbit data from 30 consenting users and includes information on activity, sleep, and calorie expenditure. While the dataset is useful for identifying patterns in smart device usage, the small sample size may limit how representative it is of the broader population.

[Kaggle Dataset](https://www.kaggle.com/datasets/arashnic/fitbit)

The dataset includes multiple metrics such as:
•	Daily steps 
•	Calories burned 
•	Activity minutes 
•	Sleep duration 
•	Time spent sedentary 
Although the dataset provides valuable insights into smart device usage patterns, it has limitations. The sample size is relatively small and the data was collected in 2016, which may limit how representative it is of current fitness tracking behavior.

## Tools Used
- Google Sheets
- SQL
- Pivot Tables

## Process

1. Data cleaning
2. Data transformation
3. Trend analysis
4. Visualization

Google Sheets was used to clean and organize the data prior to analysis. Several steps were taken to ensure the data was accurate and ready for analysis.
Duplicate records were removed to eliminate redundant data entries. Date columns were standardized to ensure consistent formatting across the dataset. A new column labeled DayOfWeek was created to categorize activity data by weekday. This allowed for analysis of trends based on daily patterns.
Additionally, filters were applied to identify missing values and inconsistencies. Rows with incomplete information were removed where necessary. These steps ensured the dataset was clean and suitable for analysis.

## SQL Analysis

Data was imported into a relational database and analyzed using SQL queries.

[SQL Cleaning](/projects/bellabeat_case_study/SQL/cleaning.md)

[SQL Analysis](/projects/bellabeat_case_study/SQL/analysis.md)

The analysis focused on identifying trends in daily activity levels and sleep behavior.
The results show that the average user in the dataset takes approximately 7,638 steps per day, which is below the commonly recommended goal of 10,000 steps. This suggests that many users are moderately active but may not consistently meet recommended daily activity levels.
The data also shows that users spend a large portion of their day in sedentary behavior. On average, users spend approximately 991 minutes per day sedentary, compared to only about 21 minutes of very active exercise. This indicates that most activity recorded by the device consists of light movement rather than intense exercise.
When analyzing activity by day of the week, the highest step counts occurred on Saturday and Tuesday, while the lowest activity occurred on Sunday. This suggests that users may be more active during structured weekday routines and during certain weekend activities.
Sleep analysis revealed that users average approximately 6.99 hours of sleep per night, which is slightly below the recommended range of seven to nine hours. This indicates that many users may not be getting sufficient sleep.


## Key Insights

- The average user does not consistently meet the recommended daily step goal of 10,000 steps. This presents an opportunity for fitness tracking companies to encourage greater daily activity.
- Most activity recorded by the device consists of light movement rather than moderate or vigorous exercise. This suggests that users rely on wearable devices primarily for general health monitoring rather than intense fitness training.
- Activity levels vary across the week, with the highest levels occurring on Saturdays and the lowest on Sundays.
- Sleep data indicates that users average slightly under seven hours of sleep per night, which suggests that many individuals may benefit from improved sleep habits.

## Recommendation

BellaBeat should focus marketing on:

-Promote Daily Activity Goals
Emphasize step tracking and daily movement goals in its marketing campaigns. Since the average user does not reach the recommended step goal, the Bellabeat Leaf tracker could be promoted as a tool to help users stay motivated and reach daily activity targets.
-Provide Personalized Health Insights
Leverage its mobile app to deliver personalized insights regarding activity and sleep patterns. Weekly health summaries, progress reports, and reminders could encourage users to improve their habits over time.
- Encourage Weekend Activity Challenges
Since activity tends to decrease on Sundays, Bellabeat could introduce weekend wellness challenges that motivate users to remain active. Social challenges, app notifications, and rewards could increase engagement and encourage consistent activity throughout the week.


## Visualizations

![Activity Level Distribution](/projects/bellabeat_case_study/images/Activity-Level-Distribution.png)

![Average Daily Sleep](/projects/bellabeat_case_study/images/Average-Daily-Sleep.png)

![Average Steps Per Day](/projects/bellabeat_case_study/images/Average-Steps-Per-Day.png)

![Steps vs Calories](/projects/bellabeat_case_study/images/Steps-vs-Calories.png)

![Average Daily Activity](/projects/bellabeat_case_study/images/Average-Daily-Activity.png)
