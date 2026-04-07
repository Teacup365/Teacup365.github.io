SELECT
DayOfWeek,
AVG(TotalSteps) AS avg_steps
FROM `avid-lacing-483619-b2.bellabeat.dailyactivityclean`
GROUP BY DayOfWeek
ORDER BY avg_steps DESC;