SELECT 
    AVG(TimeDeltaSeconds) AS AvgTimeDeltaSeconds,
    STDDEV(TimeDeltaSeconds) AS StdDevTimeDeltaSeconds
FROM (
    SELECT 
        EXTRACT(EPOCH FROM (Timestamp - LAG(Timestamp) OVER (ORDER BY Timestamp))) AS TimeDeltaSeconds
    FROM transactions
) subquery;
