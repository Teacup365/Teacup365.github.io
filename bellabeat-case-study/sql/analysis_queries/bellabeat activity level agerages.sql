SELECT
AVG(VeryActiveMinutes) AS avg_very_active,
AVG(FairlyActiveMinutes) AS avg_fairly_active,
AVG(LightlyActiveMinutes) AS avg_lightly_active,
AVG(SedentaryMinutes) AS avg_sedentary
FROM `avid-lacing-483619-b2.bellabeat.dailyactivityclean`;