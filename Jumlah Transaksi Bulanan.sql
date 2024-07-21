SELECT 
    TO_CHAR(Timestamp, 'YYYY-MM') AS Month, 
    COUNT(*) AS TransactionCount
FROM transactions
GROUP BY Month
ORDER BY Month;
