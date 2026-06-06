CREATE OR REPLACE TABLE `avid-lacing-483619-b2.bellabeat.sleepydayclean` AS
SELECT
Id,
DATE(SleepDay) AS SleepDate,
TotalSleepRecords,
TotalMinutesAsleep,
TotalTimeInBed
FROM `avid-lacing-483619-b2.bellabeat.sleepyday`;