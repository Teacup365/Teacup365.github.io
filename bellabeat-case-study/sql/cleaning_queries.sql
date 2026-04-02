-- Remove duplicate rows
SELECT Id, ActivityDate, COUNT(*)
FROM daily_activity
GROUP BY Id, ActivityDate
HAVING COUNT(*) > 1;

-- Check for missing values
SELECT *
FROM daily_activity
WHERE TotalSteps IS NULL;
