SELECT
COUNTIF(TotalSteps IS NULL) AS missing_steps,
COUNTIF(Calories IS NULL) AS missing_calories,
COUNTIF(ActivityDate IS NULL) AS missing_dates
FROM `avid-lacing-483619-b2.bellabeat.dailyactivityclean`;