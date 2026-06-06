# BellaBeat Case Study

📄[Case Study](projects/bellabeat_case_study/cade_study/case_study.md)


## Business Task
Bellabeat is a wellness technology company that develops smart devices designed to help women track and improve their health. This analysis examines smart device fitness data to identify trends in physical activity, sleep patterns, and overall device usage. The insights generated aim to support Bellabeat's marketing strategy and help promote healthier habits among users. Key stakeholders include Bellabeat's leadership team and marketing analytics department.

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


## SQL Analysis

Data was imported into a relational database and analyzed using SQL queries.

💻[SQL Cleaning](/projects/bellabeat_case_study/SQL/cleaning.md)

💻[SQL Analysis](/projects/bellabeat_case_study/SQL/analysis.md)


## Key Insights

- The average user does not consistently meet the recommended daily step goal of 10,000 steps.
- Most activity recorded by the device consists of light movement. 
- Activity levels vary across the week.
- Sleep data indicates that users average slightly under seven hours of sleep per night.


## Recommendation

BellaBeat should focus marketing on:

-Promote Daily Activity Goals
-Provide Personalized Health Insights
- Encourage Weekend Activity Challenges


## Visualizations

![Activity Level Distribution](/projects/bellabeat_case_study/images/Activity-Level-Distribution.png)

![Average Daily Sleep](/projects/bellabeat_case_study/images/Average-Daily-Sleep.png)

![Average Steps Per Day](/projects/bellabeat_case_study/images/Average-Steps-Per-Day.png)

![Steps vs Calories](/projects/bellabeat_case_study/images/Steps-vs-Calories.png)

![Average Daily Activity](/projects/bellabeat_case_study/images/Average-Daily-Activity.png)
