CREATE OR REPLACE TABLE `avid-lacing-483619-b2.bellabeat.dailyactivityclean` AS
SELECT DISTINCT
Id,
ActivityDate,
FORMAT_DATE('%A', ActivityDate) AS DayOfWeek,
TotalSteps,
TotalDistance,
Calories,
VeryActiveMinutes,
FairlyActiveMinutes,
LightlyActiveMinutes,
SedentaryMinutes
FROM `avid-lacing-483619-b2.bellabeat.dailyactivity`;