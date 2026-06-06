Activity Level Avg
'''sql

SELECT

  AVG(VeryActiveMinutes) AS avg_very_active,
  
  AVG(FairlyActiveMinutes) AS avg_fairly_active,
  
  AVG(LightlyActiveMinutes) AS avg_lightly_active,
  
  AVG(SedentaryMinutes) AS avg_sedentary
  
FROM `avid-lacing-483619-b2.bellabeat.dailyactivityclean`;

Avg Steps
SELECT

  AVG(TotalSteps) AS avg_steps
  
FROM `avid-lacing-483619-b2.bellabeat.dailyactivityclean`;

Avg Steps By Day Of Week
SELECT

  DayOfWeek,
  
  AVG(TotalSteps) AS avg_steps
  
FROM `avid-lacing-483619-b2.bellabeat.dailyactivityclean`
  GROUP BY DayOfWeek
  
  ORDER BY avg_steps DESC;

Sleep Avg
SELECT

  AVG(TotalMinutesAsleep)/60 AS avg_sleep_hours
  
FROM `avid-lacing-483619-b2.bellabeat.activity_sleep_joined`;

Steps vs Calories
SELECT

  TotalSteps,
  
  Calories
  
FROM `avid-lacing-483619-b2.bellabeat.activity_sleep_joined`;


SELECT
    CustomerID,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY CustomerID;
