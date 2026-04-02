SELECT
    Id,
    AVG(TotalSteps) AS avg_steps
FROM daily_activity
GROUP BY Id
ORDER BY avg_steps DESC;
