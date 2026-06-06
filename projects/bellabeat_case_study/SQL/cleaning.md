1st query
CREATE OR REPLACE TABLE `avid-lacing-483619-b2.bellabeat.dailyactivityclean` AS
SELECT DISTINCT *
FROM `avid-lacing-483619-b2.bellabeat.dailyactivity`;

2nd query
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

3rd query
SELECT
COUNTIF(TotalSteps IS NULL) AS missing_steps,
COUNTIF(Calories IS NULL) AS missing_calories,
COUNTIF(ActivityDate IS NULL) AS missing_dates
FROM `avid-lacing-483619-b2.bellabeat.dailyactivityclean`;

4th query
CREATE OR REPLACE TABLE `avid-lacing-483619-b2.bellabeat.sleepydayclean` AS
SELECT
Id,
DATE(SleepDay) AS SleepDate,
TotalSleepRecords,
TotalMinutesAsleep,
TotalTimeInBed
FROM `avid-lacing-483619-b2.bellabeat.sleepyday`;

5th query
CREATE OR REPLACE TABLE `avid-lacing-483619-b2.bellabeat.sleepydayclean` AS
SELECT DISTINCT *
FROM `avid-lacing-483619-b2.bellabeat.sleepydayclean`;
