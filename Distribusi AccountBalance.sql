SELECT
    CASE
        WHEN AccountBalance < 1000 THEN '< 1000'
        WHEN AccountBalance BETWEEN 1000 AND 5000 THEN '1000 - 5000'
        WHEN AccountBalance BETWEEN 5001 AND 10000 THEN '5001 - 10000'
        WHEN AccountBalance BETWEEN 10001 AND 50000 THEN '10001 - 50000'
        WHEN AccountBalance > 50000 THEN '> 50000'
    END AS BalanceRange,
    COUNT(*) AS AccountCount
FROM transactions
GROUP BY BalanceRange
ORDER BY AccountCount DESC;