Average steps per user:
SELECT
    Id,
    AVG(TotalSteps) AS avg_steps
FROM daily_activity
GROUP BY Id
ORDER BY avg_steps DESC;

Activity level distribution:
SELECT
    CASE
        WHEN TotalSteps < 5000 THEN 'Sedentary'
        WHEN TotalSteps BETWEEN 5000 AND 10000 THEN 'Moderately Active'
        ELSE 'Active'
    END AS activity_level,
    COUNT(*) AS users
FROM daily_activity
GROUP BY activity_level;

Sleep vs activity relationship:
SELECT
    d.Id,
    AVG(d.TotalSteps) AS avg_steps,
    AVG(s.TotalMinutesAsleep) AS avg_sleep
FROM daily_activity d
JOIN sleep_day s
ON d.Id = s.Id
GROUP BY d.Id;
