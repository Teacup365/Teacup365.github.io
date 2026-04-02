# BellaBeat Case Study

## Business Task
Analyze smart device usage data to help BellaBeat improve marketing strategy.

## Data Sources

Factor        Explanation

Reliable        Only 30 users (small sample)

Original        Public Fitbit dataset

Comprehensive        Includes activity, sleep, calories

Current        Data from 2016

Cited        Provided via Kaggle

## Tools Used
- Google Sheets
- SQL
- Pivot Tables

## SQL Analysis

Data was imported into a relational database and analyzed using SQL queries.

Example query used to classify activity levels:

SELECT

    CASE
    
        WHEN TotalSteps < 5000 THEN 'Sedentary'
        
        WHEN TotalSteps BETWEEN 5000 AND 10000 THEN 'Moderately Active'
        
        ELSE 'Active'
        
    END AS activity_level,
    
    COUNT(*) AS users
    FROM daily_activity
    GROUP BY activity_level;

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

![Activity Level Distribution](/bellabeat-case-study/images/Activity-Level-Distribution.png)

![Average Daily Sleep](/bellabeat-case-study/images/Average-Daily-Sleep.png)

![Average Steps Per Day](/bellabeat-case-study/images/Average-Steps-Per-Day.png)

![Steps vs Calories](/bellabeat-case-study/images/Steps-vs-Calories.png)

![Average Daily Activity](/bellabeat-case-study/images/Average-Daily-Activity.png)
