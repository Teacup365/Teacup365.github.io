# BellaBeat Case Study

## Business Task
Analyze smart device usage data to help BellaBeat improve marketing strategy.

## Data Sources

The dataset contains Fitbit data from 30 consenting users and includes information on activity, sleep, and calorie expenditure. While the dataset is useful for identifying patterns in smart device usage, the small sample size may limit how representative it is of the broader population.

## Tools Used
- Google Sheets
- SQL
- Pivot Tables

## SQL Analysis

Data was imported into a relational database and analyzed using SQL queries.

[SQL Queries](https://github.com/Teacup365/Teacup365.github.io/tree/main/projects/bellabeat_case_study/SQL).

Example query used to classify sleep levels:

CREATE OR REPLACE TABLE `avid-lacing-483619-b2.bellabeat.sleepydayclean` AS

SELECT

Id,

DATE(SleepDay) AS SleepDate,

TotalSleepRecords,

TotalMinutesAsleep,

TotalTimeInBed

FROM `avid-lacing-483619-b2.bellabeat.sleepyday`;

## Process

1. Data cleaning
2. Data transformation
3. Trend analysis
4. Visualization

## Key Insights

- Users with higher activity levels logged more steps
- Weekend usage increased
- Sleep tracking correlated with activity levels

## Recommendation

BellaBeat should focus marketing on:

- Fitness enthusiasts
- Weekend activity promotions
- Sleep tracking features

## Visualizations

![Activity Level Distribution](/projects/bellabeat_case_study/images/Activity-Level-Distribution.png)

![Average Daily Sleep](/projects/bellabeat_case_study/images/Average-Daily-Sleep.png)

![Average Steps Per Day](/projects/bellabeat_case_study/images/Average-Steps-Per-Day.png)

![Steps vs Calories](/projects/bellabeat_case_study/images/Steps-vs-Calories.png)

![Average Daily Activity](/projects/bellabeat_case_study/images/Average-Daily-Activity.png)
